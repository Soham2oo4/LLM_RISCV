/**
 * Codasip s.r.o.
 *
 * CONFIDENTIAL
 *
 * Copyright 2025 Codasip s.r.o.
 *
 * All Rights Reserved.
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 *
 * \file
 * \date    2025-04-12
 * \author  Codasip (c) C compiler backend generator
 * \version 9.4.2
 * \brief   Source for compiler backend
 * \project codasip_urisc_v.ia
 * \note          Codasip Studio version: 9.4.2
 *                Project: codasip_urisc_v.ia
 *                Date: 2025-04-12 09:03:18
 *                Copyright (C) 2025 Codasip s.r.o.
 */


//===----------------------------------------------------------------------===//
/// \file
/// This file implements a TargetTransformInfo analysis pass specific to the
/// Codasip target machine. It uses the target's detailed information to provide
/// more precise answers to certain TTI queries, while letting the target
/// independent and default TTI implementations handle the rest.
///
//===----------------------------------------------------------------------===//

#include "CodasipGenTargetTransformInfo.h"
#include "codasip/Target/CodasipBaseTargetInstrInfo.h"
#include "llvm/Analysis/TargetTransformInfo.h"
#include "llvm/CodeGen/BasicTTIImpl.h"
#include "llvm/CodeGen/CostTable.h"
#include "llvm/CodeGen/TargetLowering.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Support/Debug.h"
#include "llvm/Transforms/Utils/LoopUtils.h"

using namespace llvm;

#define DEBUG_TYPE "codasiptti"

//===----------------------------------------------------------------------===//
//
// Codasip cost model.
//
//===----------------------------------------------------------------------===//

cl::opt<unsigned>
    EnableNest("hwloops-nesting-level",
               cl::desc("Set the nesting level for the hardware loops"),
               cl::init(0), cl::ZeroOrMore);

cl::opt<bool>
    EnableHWLoops("enable-hwloops", cl::Hidden, cl::init(false),
                  cl::desc("Disable the generation of hardware loops"),
                  cl::ZeroOrMore);

bool CodasipTTIImpl::isHardwareLoopProfitable(Loop *L, ScalarEvolution &SE,
                                              AssumptionCache &AC,
                                              TargetLibraryInfo *LibInfo,
                                              HardwareLoopInfo &HWLoopInfo) {
  if (!EnableHWLoops) {
    LLVM_DEBUG(dbgs() << "HWLoops disabled.\n";);
    return false;
  }

  // check whether the target has hwloop instructions at all
  // note: the dummy target in llvm also uses this class; still, is it safe? 
  const CodasipBaseInstrInfo *TII =
      static_cast<const CodasipBaseInstrInfo *>(getST()->getInstrInfo());
  std::vector<int> Opcodes;
  TII->getHWLoopOpc(Opcodes);
  if (Opcodes.empty()) {
    LLVM_DEBUG(dbgs() << "HWLoops are not supported on this architecture.\n";);
    return false;
  }

  if (findStringMetadataForLoop(L, "codasip.hwloop.disable")) {
    LLVM_DEBUG(
        dbgs() << "HWLoops disabled by pragma codasip.hwloop.disable\n";);
    return false;
  }

  if (!SE.hasLoopInvariantBackedgeTakenCount(L)) {
    return false;
  }

  const SCEV *BackedgeTakenCount = SE.getBackedgeTakenCount(L);
  if (isa<SCEVCouldNotCompute>(BackedgeTakenCount)) {
    return false;
  }

  auto IsHardwareLoopDec = [](Instruction &I) {
    if (auto *Call = dyn_cast<IntrinsicInst>(&I))
      return Call->getIntrinsicID() == Intrinsic::loop_decrement ||
             Call->getIntrinsicID() == Intrinsic::loop_decrement_reg;
    return false;
  };

  auto MaybeCall = [this](Instruction &I) {
    const TargetLowering *TLI = getTLI();
    unsigned ISD = TLI->InstructionOpcodeToISD(I.getOpcode());
    EVT VT = TLI->getValueType(DL, I.getType(), true);
    if (TLI->getOperationAction(ISD, VT) == TargetLowering::LibCall)
      return true;

    // Check if an intrinsic will be lowered to a call.
    if (auto *Call = dyn_cast<CallInst>(&I)) {
      if (isa<IntrinsicInst>(Call)) {
        if (const Function *F = Call->getCalledFunction())
          return isLoweredToCall(F);
      }
      return true;
    }
    return false;
  };

  // map the hwloop instrs already found. We don't want to disable parallel
  // inner loops or accidentally count the instrs from inner loops.
  std::vector<Instruction *> FoundDecrements;

  std::function<unsigned(Loop *)> GetDeepestLevelOfHWLoop =
      [&](Loop *L) -> unsigned {
    unsigned LocalDepth = 0;
    bool isHWLoop = 0;
    for (const auto &Inner : L->getSubLoops()) {
      unsigned InnerDepth = GetDeepestLevelOfHWLoop(Inner);
      if (InnerDepth > LocalDepth)
        LocalDepth = InnerDepth;
    }

    for (auto *BB : L->getBlocks()) {
      for (auto &I : *BB) {
        if (IsHardwareLoopDec(I) && !is_contained(FoundDecrements, &I)) {
          FoundDecrements.push_back(&I);
          isHWLoop = true;
        }
      }
    }
    return LocalDepth + isHWLoop;
  };

  // Scan the instructions to see if there's any that we know will turn into a
  // call or if this loop is already a low-overhead loop.
  auto ScanLoop = [&](Loop *L) {
    for (auto *BB : L->getBlocks()) {
      for (auto &I : *BB) {
        if (MaybeCall(I)) {
          LLVM_DEBUG(dbgs() << "HWLoops: Bad instruction: " << I << "\n");
          return false;
        }
      }
    }
    return true;
  };

  // Visit inner loops.
  for (auto Inner : *L) {
    if (!ScanLoop(Inner)) {
      LLVM_DEBUG(dbgs() << "HWLoops: Inner loop contains an instruction "
                           "unsupported by HWLoop.\n";);
      return false;
    }
  }

  if (!ScanLoop(L)) {
    LLVM_DEBUG(dbgs() << "HWLoops: Loop contains an instruction unsupported by "
                         "HWLoop.\n";);
    return false;
  }

  FoundDecrements.clear();
  unsigned MaxDepth = GetDeepestLevelOfHWLoop(L);
  if (MaxDepth > EnableNest) {
    LLVM_DEBUG(dbgs() << "HWLoops: Nesting level exceeded.\n";);
    return false;
  }

  LLVM_DEBUG(dbgs() << "HWLoops: Loop deemed profitable for transformation by "
                       "the target.\n";);
  LLVMContext &C = L->getHeader()->getContext();
  // Updated through phi, so that it can be easily reverted to SUB 1;
  HWLoopInfo.CounterInReg = true;
  // This is now always true, as we're checking for nesting levels above and
  // if found to be deeper than enabled nesting, the check won't get here.
  HWLoopInfo.IsNestingLegal = true;
  // Our hwloop instr. does not check whether loop count is zero:
  HWLoopInfo.PerformEntryTest = false;
  // clang-format off
  HWLoopInfo.CountType = Type::getInt32Ty(C);
  // clang-format on
  HWLoopInfo.LoopDecrement = ConstantInt::get(HWLoopInfo.CountType, 1);
  return true;
}

unsigned CodasipTTIImpl::getNumberOfRegisters(bool Vector) const {
  return Vector ? 0 : 32;
}
unsigned CodasipTTIImpl::getRegisterBitWidth(bool Vector) const {
  return Vector ? 0 : 32;
}

unsigned CodasipTTIImpl::getArithmeticInstrCost(
    unsigned Opcode, Type *Ty, TargetTransformInfo::OperandValueKind Opd1Info,
    TargetTransformInfo::OperandValueKind Opd2Info,
    TargetTransformInfo::OperandValueProperties Opd1PropInfo,
    TargetTransformInfo::OperandValueProperties Opd2PropInfo,
    ArrayRef<const Value *> Args) {
  std::pair<int, MVT> LT = TLI->getTypeLegalizationCost(DL, Ty);
  int ISD = TLI->InstructionOpcodeToISD(Opcode);

  static const CostTblEntry CostTable[] = {
      {ISD::ADD, MVT::i32, 1},
      {ISD::ADD, MVT::i16, 1},
      {ISD::ADD, MVT::i8, 1},
      {ISD::ADD, MVT::i1, 1},
      {ISD::SUB, MVT::i32, 1},
      {ISD::SUB, MVT::i16, 1},
      {ISD::SUB, MVT::i8, 1},
      {ISD::SUB, MVT::i1, 1},
      {ISD::AND, MVT::i32, 1},
      {ISD::AND, MVT::i16, 1},
      {ISD::AND, MVT::i8, 1},
      {ISD::AND, MVT::i1, 1},
      {ISD::OR, MVT::i32, 1},
      {ISD::OR, MVT::i16, 1},
      {ISD::OR, MVT::i8, 1},
      {ISD::OR, MVT::i1, 1},
      {ISD::XOR, MVT::i32, 1},
      {ISD::XOR, MVT::i16, 1},
      {ISD::XOR, MVT::i8, 1},
      {ISD::XOR, MVT::i1, 1},
      {ISD::SHL, MVT::i32, 1},
      {ISD::SHL, MVT::i16, 1},
      {ISD::SHL, MVT::i8, 1},
      {ISD::SHL, MVT::i1, 1},
      {ISD::SRA, MVT::i32, 1},
      {ISD::SRA, MVT::i16, 1},
      {ISD::SRA, MVT::i8, 1},
      {ISD::SRA, MVT::i1, 1},
      {ISD::SRL, MVT::i32, 1},
      {ISD::SRL, MVT::i16, 1},
      {ISD::SRL, MVT::i8, 1},
      {ISD::SRL, MVT::i1, 1},
  };

  if (const auto *Entry = CostTableLookup(CostTable, ISD, LT.second))
    return LT.first * Entry->Cost;

  return BaseT::getArithmeticInstrCost(Opcode, Ty, Opd1Info, Opd2Info, Opd1PropInfo, Opd2PropInfo, Args);
}
unsigned CodasipTTIImpl::getMemoryOpCost(unsigned Opcode, Type *Src,
                                         unsigned Alignment,
                                         unsigned AddressSpace,
                                         const Instruction *I) {
  std::pair<int, MVT> LT = TLI->getTypeLegalizationCost(DL, Src);
  // Make vector reads/writes with unsupported alignment extremely expensive.
  constexpr const unsigned BigPriceCoefficient = 1000;
  if (Src->isVectorTy() && Alignment % DL.getABITypeAlignment(Src) != 0)
    return LT.first * BigPriceCoefficient * Src->getVectorNumElements();
  return BaseT::getMemoryOpCost(Opcode, Src, Alignment, AddressSpace, I);
}

unsigned CodasipTTIImpl::getCmpSelInstrCost(unsigned Opcode, Type *ValTy,
                                            Type *CondTy,
                                            const Instruction *I) {
  std::pair<int, MVT> LT = TLI->getTypeLegalizationCost(DL, ValTy);
  int ISD = TLI->InstructionOpcodeToISD(Opcode);

  static const CostTblEntry CostTable[] = {
      {ISD::SETCC, MVT::i32, 1},
      {ISD::SETCC, MVT::i16, 1},
      {ISD::SETCC, MVT::i8, 1},
      {ISD::SETCC, MVT::i1, 1},
      {ISD::SELECT, MVT::i32, 1},
      {ISD::SELECT, MVT::i16, 1},
      {ISD::SELECT, MVT::i8, 1},
      {ISD::SELECT, MVT::i1, 1},
  };

  if (const auto *Entry = CostTableLookup(CostTable, ISD, LT.second))
    return LT.first * Entry->Cost;

  return BaseT::getCmpSelInstrCost(Opcode, ValTy, CondTy, I);
}

unsigned CodasipTTIImpl::getOperationCost(unsigned Opcode, Type *Ty,
                                          Type *OpTy) {
  // llvm::EVT::getEVT() cannot be used on vector of pointers
  if (Ty->isPtrOrPtrVectorTy() && Ty->isVectorTy())
    return BaseT::getOperationCost(Opcode, Ty, OpTy);

  if (llvm::EVT::getEVT(Ty, /*HandleUnknown=*/true) == llvm::MVT::Other)
    return BaseT::getOperationCost(Opcode, Ty, OpTy);

  if (Opcode == Instruction::Br)
    return 1;

  std::pair<int, MVT> LT = TLI->getTypeLegalizationCost(DL, Ty);
  int ISD = TLI->InstructionOpcodeToISD(Opcode);

  static const CostTblEntry CostTable[] = {
      {ISD::ADD, MVT::i32, 1},
      {ISD::ADD, MVT::i16, 1},
      {ISD::ADD, MVT::i8, 1},
      {ISD::ADD, MVT::i1, 1},
      {ISD::SUB, MVT::i32, 1},
      {ISD::SUB, MVT::i16, 1},
      {ISD::SUB, MVT::i8, 1},
      {ISD::SUB, MVT::i1, 1},
      {ISD::AND, MVT::i32, 1},
      {ISD::AND, MVT::i16, 1},
      {ISD::AND, MVT::i8, 1},
      {ISD::AND, MVT::i1, 1},
      {ISD::OR, MVT::i32, 1},
      {ISD::OR, MVT::i16, 1},
      {ISD::OR, MVT::i8, 1},
      {ISD::OR, MVT::i1, 1},
      {ISD::XOR, MVT::i32, 1},
      {ISD::XOR, MVT::i16, 1},
      {ISD::XOR, MVT::i8, 1},
      {ISD::XOR, MVT::i1, 1},
      {ISD::SHL, MVT::i32, 1},
      {ISD::SHL, MVT::i16, 1},
      {ISD::SHL, MVT::i8, 1},
      {ISD::SHL, MVT::i1, 1},
      {ISD::SRA, MVT::i32, 1},
      {ISD::SRA, MVT::i16, 1},
      {ISD::SRA, MVT::i8, 1},
      {ISD::SRA, MVT::i1, 1},
      {ISD::SRL, MVT::i32, 1},
      {ISD::SRL, MVT::i16, 1},
      {ISD::SRL, MVT::i8, 1},
      {ISD::SRL, MVT::i1, 1},
      {ISD::SETCC, MVT::i32, 1},
      {ISD::SETCC, MVT::i16, 1},
      {ISD::SETCC, MVT::i8, 1},
      {ISD::SETCC, MVT::i1, 1},
      {ISD::SELECT, MVT::i32, 1},
      {ISD::SELECT, MVT::i16, 1},
      {ISD::SELECT, MVT::i8, 1},
      {ISD::SELECT, MVT::i1, 1},
      {ISD::TRUNCATE, MVT::i32, 0},
      {ISD::TRUNCATE, MVT::i16, 0},
      {ISD::TRUNCATE, MVT::i8, 0},
      {ISD::TRUNCATE, MVT::i1, 0},
  };

  if (const auto *Entry = CostTableLookup(CostTable, ISD, LT.second))
    return LT.first * Entry->Cost;

  return BaseT::getOperationCost(Opcode, Ty, OpTy);
}

unsigned CodasipTTIImpl::getCastInstrCost(unsigned Opcode, Type *Dst, Type *Src,
                                          const Instruction *I) {
  return BaseT::getCastInstrCost(Opcode, Dst, Src, I);
}

bool CodasipTTIImpl::areInlineCompatible(const Function *Caller,
                                         const Function *Callee) const {
  const TargetMachine &TM = getTLI()->getTargetMachine();
  const FeatureBitset &CallerBits =
      TM.getSubtargetImpl(*Caller)->getFeatureBits();
  const FeatureBitset &CalleeBits =
      TM.getSubtargetImpl(*Callee)->getFeatureBits();
  return (CallerBits & CalleeBits) == CalleeBits;
}

unsigned CodasipTTIImpl::getInliningThresholdMultiplier() {
  return BaseT::getInliningThresholdMultiplier();
}

unsigned CodasipTTIImpl::getVectorInstrCost(unsigned Opcode, Type *Val,
                                            unsigned Index) {
  return BaseT::getVectorInstrCost(Opcode, Val, Index);
}

unsigned CodasipTTIImpl::getShuffleCost(TargetTransformInfo::ShuffleKind Kind,
                                        Type *Tp, int Index, Type *SubTp) {
  return BaseT::getShuffleCost(Kind, Tp, Index, SubTp);
}

bool CodasipTTIImpl::enableInterleavedAccessVectorization() {
  return BaseT::enableInterleavedAccessVectorization();
}

unsigned CodasipTTIImpl::getMaxInterleaveFactor(unsigned VF) {
  return BaseT::getMaxInterleaveFactor(VF);
}

bool CodasipTTIImpl::hasDivRemOp(Type *DataType, bool IsSigned) {
  return false;
}
