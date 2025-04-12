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
 *                Date: 2025-04-12 19:55:17
 *                Copyright (C) 2025 Codasip s.r.o.
 */


//===----------------------------------------------------------------------===//
/// \file
/// This file a TargetTransformInfo::Concept conforming object specific to the
/// Codasip target machine. It uses the target's detailed information to
/// provide more precise answers to certain TTI queries, while letting the
/// target independent and default TTI implementations handle the rest.
///
//===----------------------------------------------------------------------===//

#ifndef CODASIPTARGETTRANSFORMINFO_H
#define CODASIPTARGETTRANSFORMINFO_H

#include "codasip/Target/CodasipBaseLowering.h"
#include "llvm/Analysis/TargetTransformInfo.h"
#include "llvm/CodeGen/BasicTTIImpl.h"
#include "llvm/CodeGen/TargetLowering.h"
#include "llvm/CodeGen/TargetSubtargetInfo.h"
#include "llvm/Target/TargetMachine.h"

namespace llvm {

class CodasipTTIImpl : public BasicTTIImplBase<CodasipTTIImpl> {
  typedef BasicTTIImplBase<CodasipTTIImpl> BaseT;
  friend BaseT;

  const TargetSubtargetInfo *ST;
  const TargetLowering *TLI;

  const TargetSubtargetInfo *getST() const { return ST; }
  const TargetLowering *getTLI() const { return TLI; }

public:
  explicit CodasipTTIImpl(const LLVMTargetMachine *TM, const Function &F)
      : BaseT(TM, F.getParent()->getDataLayout()), ST(TM->getSubtargetImpl(F)),
        TLI(ST->getTargetLowering()) {}

  // Provide value semantics. MSVC requires that we spell all of these out.
  CodasipTTIImpl(const CodasipTTIImpl &Arg)
      : BaseT(static_cast<const BaseT &>(Arg)), ST(Arg.ST), TLI(Arg.TLI) {}
  CodasipTTIImpl(CodasipTTIImpl &&Arg)
      : BaseT(std::move(static_cast<BaseT &>(Arg))), ST(std::move(Arg.ST)),
        TLI(std::move(Arg.TLI)) {}

  bool isHardwareLoopProfitable(Loop *L, ScalarEvolution &SE,
                                AssumptionCache &AC, TargetLibraryInfo *LibInfo,
                                HardwareLoopInfo &HWLoopInfo);
  unsigned getNumberOfRegisters(bool Vector) const;
  unsigned getRegisterBitWidth(bool Vector) const;
  unsigned getArithmeticInstrCost(
      unsigned Opcode, Type *Ty,
      TargetTransformInfo::OperandValueKind Opd1Info =
          TargetTransformInfo::OK_AnyValue,
      TargetTransformInfo::OperandValueKind Opd2Info =
          TargetTransformInfo::OK_AnyValue,
      TargetTransformInfo::OperandValueProperties Opd1PropInfo =
          TargetTransformInfo::OP_None,
      TargetTransformInfo::OperandValueProperties Opd2PropInfo =
          TargetTransformInfo::OP_None,
      ArrayRef<const Value *> Args = ArrayRef<const Value *>());
  unsigned getMemoryOpCost(unsigned Opcode, Type *Src, unsigned Alignment,
                           unsigned AddressSpace,
                           const Instruction *I = nullptr);
  unsigned getCmpSelInstrCost(unsigned Opcode, Type *ValTy, Type *CondTy,
                              const Instruction *I);
  unsigned getOperationCost(unsigned Opcode, Type *Ty, Type *OpTy);
  unsigned getCastInstrCost(unsigned Opcode, Type *Dst, Type *Src,
                            const Instruction *I = nullptr);
  bool areInlineCompatible(const Function *Caller,
                           const Function *Callee) const;
  unsigned getInliningThresholdMultiplier();
  unsigned getVectorInstrCost(unsigned Opcode, Type *Val, unsigned Index);
  unsigned getShuffleCost(TargetTransformInfo::ShuffleKind Kind, Type *Tp,
                          int Index, Type *SubTp);
  bool enableInterleavedAccessVectorization();
  unsigned getMaxInterleaveFactor(unsigned VF);
  bool hasDivRemOp(Type *DataType, bool IsSigned);
};

} // end namespace llvm

#endif
