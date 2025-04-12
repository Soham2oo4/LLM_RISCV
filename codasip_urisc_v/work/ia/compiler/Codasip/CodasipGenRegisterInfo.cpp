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


#define DEBUG_TYPE "codasip-reg-info"

#include "llvm/ADT/BitVector.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/RegisterScavenging.h"
#include "llvm/CodeGen/TargetFrameLowering.h"
#include "llvm/CodeGen/TargetInstrInfo.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Target/TargetMachine.h"

#include "codasip/misc/utils.h"

#include "Codasip.h"
#include "CodasipGenRegisterInfo.h"
#include "CodasipInstrInfo.h"
#include "CodasipMachineFunction.h"
#include "CodasipTargetMachine.h"

#define GET_REGINFO_TARGET_DESC
#include "CodasipGenRegisterInfo.inc"

#include <cstdio>
#include <iostream>
#include <utility>

using namespace llvm;

static cl::opt<std::string> ReservedRegsOpt(
    "reserved-regs", cl::init(""),
    cl::desc("Additional reserved registers, separated by comma."));

static cl::opt<std::string> UnreservedRegsOpt(
    "no-reserved-regs", cl::init(""),
    cl::desc("Manually un-reserved registers, separated by comma."));

// aux for the constructor
static void ProcessReservedRegs(RegNamesVec &out, const std::string &in) {
  const char sep = ',';
  std::string work(in);
  out.reserve(std::count(work.begin(), work.end(), sep));
  while (!work.empty()) {
    const auto pos = work.find_first_of(sep);
    std::string cur = work.substr(0, pos);
    // last one?
    if (pos == std::string::npos) {
      work.clear();
    } else {
      work = work.substr(pos + 1);
    }
    // two commas with nothing in between
    // (but comma at the end is ok)
    assert(!cur.empty() && "bad reserved-regs syntax");
    out.push_back(cur);
  }
}

CodasipGen2RegisterInfo::CodasipGen2RegisterInfo(const TargetInstrInfo &tii)
    : CodasipGenRegisterInfo(Codasip::rf_gpr_1), TII(tii) {
  // note: TLI isn't constructed yet
  ProcessReservedRegs(ExtraReservedRegs, ReservedRegsOpt);
  ProcessReservedRegs(UnreservedRegs, UnreservedRegsOpt);
}

const MCPhysReg *
CodasipGen2RegisterInfo::getCalleeSavedRegs(const MachineFunction *MF) const {
  // is this an interrupt?
  if (MF->getFunction().hasFnAttribute("interrupt")) {
    // all registers must be preserved
    return CSR_All_Codasip_SaveList;
  }
  return CSR_Codasip_SaveList;
}

const uint32_t *
CodasipGen2RegisterInfo::getCallPreservedMask(const Function *F) const {
  if (F && F->hasFnAttribute("interrupt")) {
    // RAR isn't needed in interrupt
    return CSR_All_Codasip_RegMask;
  }
  // RAR is needed by return
  return CSR_NoRar_Codasip_RegMask;
}

const uint32_t *
CodasipGen2RegisterInfo::getCallPreservedMask(const MachineFunction &MF,
                                              CallingConv::ID) const {
  return getCallPreservedMask(&MF.getFunction());
}

static void auxSetSubSupRegsInMask(const CodasipGen2RegisterInfo *ri,
                                   unsigned reg, BitVector &reserved,
                                   bool set = true) {
  auto apply = [&reserved, set](unsigned idx) -> void {
    if (set) {
      reserved.set(idx);
    } else {
      reserved.reset(idx);
    }
  };
  for (MCSubRegIterator I(reg, ri, true); I.isValid(); ++I) {
    apply(*I);
  }
  for (MCSuperRegIterator I(reg, ri, true); I.isValid(); ++I) {
    apply(*I);
  }
}

// aux for getReservedRegs
static void processReservedRegsAux(const CodasipTargetLowering *CTL,
                                   const CodasipGen2RegisterInfo *ri,
                                   BitVector &reserved, const RegNamesVec &regs,
                                   bool set) {
  for (const std::string &name : regs) {
    const unsigned reg = CTL->getRegisterByName(name.c_str());
    // add
    if (reg) {
      auxSetSubSupRegsInMask(ri, reg, reserved, set);
    }
    // skip
    else {
      errs() << "Register " << name << " doesn't exist.\n";
    }
  }
}

BitVector
CodasipGen2RegisterInfo::getReservedRegs(const MachineFunction &MF) const {
  const CodasipTargetMachine &CTM =
      static_cast<const CodasipTargetMachine &>(MF.getTarget());
  const TargetFrameLowering *TFL = CTM.getFrameLowering();
  const CodasipTargetLowering *CTL = CTM.getTargetLowering();
  BitVector reserved(getNumRegs());
  // explicitly unused regs
  
  // all SPs (and BPs if needed)
  for (unsigned i = 0; i < STACK_COUNT; ++i) {
    auxSetSubSupRegsInMask(this, GetSP(i), reserved);
    if (TFL->hasFP(MF)) {
      auxSetSubSupRegsInMask(this, GetBP(i), reserved);
    }
  }
  
  // RAR - see getCalleeSavedRegs
  if (!HasCall(MF)) {
    auxSetSubSupRegsInMask(this, getRARegister(), reserved);
  }
  
  // explicitly unused regs from command line argument
  processReservedRegsAux(CTL, this, reserved, ExtraReservedRegs, true);
  processReservedRegsAux(CTL, this, reserved, UnreservedRegs, false);
  return reserved;
}

// the first item is FI, the second is imm
CodasipGen2RegisterInfo::FiInfo
CodasipGen2RegisterInfo::GetFiOpIndexes(MachineInstr &MI,
                                        unsigned FIOperandNum) const {
  assert(MI.getOperand(FIOperandNum).isFI());
  IndList ret;
  switch (MI.getOpcode()) {
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_comp_3reg__opc_add__regs__regs__regs__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 0;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__:
  {
   FiInfo hlp;
   hlp.bi = 0;
   hlp.oi = 1;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_storeb__regs__simm12_simple__regs__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__:
  {
   FiInfo hlp;
   hlp.bi = 0;
   hlp.oi = 1;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_storeh__regs__simm12_simple__regs__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_storew__reg0__simm12_simple__regs__:
  {
   FiInfo hlp;
   hlp.bi = 0;
   hlp.oi = 1;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__AEXT_CLONE_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__AEXT_CLONE_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__AEXT_CLONE_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__AEXT_CLONE_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__i32_TRUNC_CLONE_:
  {
   FiInfo hlp;
   hlp.bi = 0;
   hlp.oi = 1;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__i32_TRUNC_CLONE_:
  {
   FiInfo hlp;
   hlp.bi = 0;
   hlp.oi = 1;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__0_REG_EMUL_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 0;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__1_BIGIMM_EMUL_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 32;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__2_REG_EMUL_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 0;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__3_BIGIMM_EMUL_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 32;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__4_BIGIMM_EMUL_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 32;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__5_BIGIMM_EMUL_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 32;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__6_BIGIMM_EMUL_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 32;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__7_BIGIMM_EMUL_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 32;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__8_BIGIMM_EMUL_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 32;
   ret.push_back(hlp);
  }
  break;
  
  default:
    for (unsigned i = 0; i < MI.getNumOperands(); ++i) {
      if (MI.getOperand(i).isFI()) {
        FiInfo hlp;
        hlp.bi = hlp.oi = i;
        hlp.w = -1;
        ret.push_back(hlp);
      }
    }
  }
  // return the one which is actually requested
  for (IndList::iterator it = ret.begin(); it != ret.end(); ++it) {
    if (it->bi == (int)FIOperandNum) {
      return *it;
    }
  }
  errs() << "eliminateFrameIndex: the FI operand is not where it is supposed "
            "to be - this can occur only due to faulty custom MI emitting!";
  abort();
}

// various registers for various spaces
unsigned CodasipGen2RegisterInfo::GetSP(unsigned space) const {
  switch (space) {
  case 0:
return Codasip::rf_gpr_2;

  default:
    errs() << "Non-existant or unsupported address space.";
    abort();
  }
}
unsigned CodasipGen2RegisterInfo::GetBP(unsigned space) const {
  switch (space) {
  case 0:
return Codasip::rf_gpr_8;

  default:
    errs() << "Non-existant or unsupported address space or BP is unsuported.";
    abort();
  }
}

// Gets an AR alternative for an instruction using SP/BP
// Returns -1 if there's nothing
int GetARAlternative(int instrId) {
  switch (instrId) {
  
  default:
    return -1;
  }
}

// help function for complicated conditions in EmitEssentialInstr
bool CodasipGen2RegisterInfo::CheckRegClass(const MachineRegisterInfo &MRI,
                                            const TargetRegisterClass *RC,
                                            unsigned Reg) const {
  if (isVirtualRegister(Reg))
    return RC->hasSubClassEq(MRI.getRegClass(Reg));
  else
    return RC->contains(Reg);
}

// Check usage of AR in the given operand - returns true if all is OK
bool CodasipGen2RegisterInfo::CheckAR(const MachineInstr &MI, unsigned ind,
                                      unsigned AR) const {
  const MCInstrDesc &desc = MI.getDesc();
  assert(desc.OpInfo);
  MCOperandInfo opinfo = desc.OpInfo[ind];
  const int rci = opinfo.RegClass;
  const TargetRegisterClass *RC = getRegClass(rci);
  assert(RC);
  const MachineRegisterInfo &MRI = MI.getParent()->getParent()->getRegInfo();
  return CheckRegClass(MRI, RC, AR);
}

// checks AR and replaces if needed - error if not possible
bool CodasipGen2RegisterInfo::HandleAR(MachineInstr &MI, unsigned ind,
                                       unsigned AR) const {
  // not inline asm
  if (MI.getOpcode() == Codasip::INLINEASM) {
    return true;
  }
  // can be AR used in the operand?
  if (CheckAR(MI, ind, AR)) {
    return true;
  }
  // change the instruction
  int alt = GetARAlternative(MI.getOpcode());
  if (alt < 0) {
    errs() << "There is no alternative for instruction "
           << TII.getName(MI.getOpcode())
           << " which would use an auxiliary register instead of SP/BP. "
           << "This will cause failure.\n";
    return false;
  }
  const MCInstrDesc &altd = TII.get(alt);
  MI.setDesc(altd);
  return true;
}

void CodasipGen2RegisterInfo::eliminateFrameIndex(
    MachineBasicBlock::iterator II, int SPAdj, unsigned FIOperandNum,
    RegScavenger *RS) const {
  MachineInstr &MI = *II;
  MachineBasicBlock &MB = *MI.getParent();
  MachineFunction &MF = *MB.getParent();
  MachineFrameInfo &MFI = MF.getFrameInfo();
  std::string fnn = MF.getFunction().getName();
  const CodasipTargetMachine &CTM =
      static_cast<const CodasipTargetMachine &>(MF.getTarget());
  const TargetFrameLowering *TL = CTM.getFrameLowering();
  const CodasipInstrInfo &CII = static_cast<const CodasipInstrInfo &>(TII);
  CodasipFunctionInfo *finfo = MF.getInfo<CodasipFunctionInfo>();
  DebugLoc dl = MI.getDebugLoc();
  unsigned m;
  const MCInstrDesc &desc = MI.getDesc();
  // propagate frame setup/destroy
  unsigned MIFlags = 0;
  if (MI.getFlag(MachineInstr::FrameSetup)) {
    MIFlags |= MachineInstr::FrameSetup;
  }
  if (MI.getFlag(MachineInstr::FrameDestroy)) {
    MIFlags |= MachineInstr::FrameDestroy;
  }
  // get indexes
  FiInfo inds = GetFiOpIndexes(MI, FIOperandNum);
  // get information
  assert(SPAdj == 0);
  int FrameIndex = MI.getOperand(inds.bi).getIndex();
  bool overflow = false;
  // address space and registers
  // not all FIs are there - if they aren't, they are from space 0
  const unsigned space = MFI.getStackID(FrameIndex);
  const unsigned SP = GetSP(space);
  unsigned AR = 0;
  // - FP can be either BP (if exists) or SP
  unsigned FP = 0; // getFrameRegister(MF,space);
  int Offset = TL->getFrameIndexReference(MF, FrameIndex, FP);
  // is this an outgoing stack parameter?
  const bool callParam = finfo->IsOutFI(FrameIndex);
  // is there a two-address constraint?
  // note: this doesn't work with overflow/indirect
  const int tied = desc.getOperandConstraint(inds.bi, MCOI::TIED_TO);
  if (tied >= 0) {
    assert(!callParam &&
           "tied instructions not supported for call parameters!");
    // get the result register
    const MachineOperand &dst = MI.getOperand(tied);
    assert(dst.isReg() && dst.isDef());
    // copy the frame reg first, unless indirect or overflow
    // note: add detection of overflow as well
    if (!MI.getOperand(inds.oi).isReg()) {
      TII.copyPhysReg(MB, II, dl, dst.getReg(), FP, false);
      std::prev(II)->setFlags(MIFlags);
    }
    // then mutate the instruction
    MI.getOperand(inds.bi).ChangeToRegister(dst.getReg(), false, false, true);
  } else {
    // register
    unsigned reg = FP;
    // this may be an outgoing parameter
    if (callParam) {
      reg = SP;
    }
    // just mutate the instruction
    MI.getOperand(inds.bi).ChangeToRegister(reg, false);
  }
  // indirect addressing of local space
  // note: this can happen for outgoing (call) parameters
  if (MI.getOperand(inds.oi).isReg()) {
    assert(tied < 0 && "not allowed here - should have been prevented in isel");
    const unsigned baseReg = (callParam ? SP : FP);
    // optimisation for zero offset
    if (Offset == 0) {
      assert(MI.getOperand(inds.bi).getReg() == baseReg);
      return;
    }
    // non-zero offset
    
    if (RS == nullptr && !requiresFrameIndexScavenging(MF)) {
      errs()
          << "Failed to perform indirect addressing of an object in function '"
          << fnn << "'.\n";
      exit(1);
    }
    const TargetRegisterClass *ScavRegClass = this->getRegClass(TII.get(Codasip::e_movi32__).OpInfo[0].RegClass);
    AR = MF.getRegInfo().createVirtualRegister(ScavRegClass);
    assert(AR && "Register scavenger failed");
    // various ARs must be interchangeable
    BuildMI(MB,II,dl, TII.get(Codasip::e_movi32__), AR).addImm(Offset).setMIFlags(MIFlags);

    SmallVector<MachineOperand, 3> ops;
    ops.push_back(MachineOperand::CreateReg(AR, true));
    ops.push_back(MachineOperand::CreateReg(AR, false));
    ops.push_back(MachineOperand::CreateReg(baseReg, false, false, true));
    CII.EmitEssentialInstr(MB, II, dl, ISD::ADD, ops);
    std::prev(II)->setFlags(MIFlags);
    MI.getOperand(inds.bi).setReg(AR);
    MI.getOperand(inds.bi).setIsKill(true);
    bool check = HandleAR(MI, inds.bi, AR);
    if (!check) {
      errs()
          << "Failed to perform indirect addressing of an object in function '"
          << fnn << "'.\n";
      exit(1);
    }
    return;
    
    goto error;
  }
  // it should be imm otherwise
  else {
    assert(MI.getOperand(inds.oi).isImm() && "Bad usage of a frame index!");
  }
  // add the value that is already there (usually 0)
  Offset += MI.getOperand(inds.oi).getImm();
  // Special handling of DBG_VALUE instructions.
  if (MI.isDebugInstr()) {
    return;
    // something more?
  }
  // check limit (sum of the frame index and the offset)
  m = -1;
  m <<= inds.w - 1;
  overflow = (Offset & m) != m && (Offset & m) != 0;
  // overflow?
  if (overflow) {
    
    const unsigned baseReg = (callParam ? SP : FP);
    // just like above
    if (RS == nullptr && !requiresFrameIndexScavenging(MF)) {
      errs()
          << "Failed to perform indirect addressing of an object in function '"
          << fnn << "'.\n";
      exit(1);
    }
    const TargetRegisterClass *ScavRegClass = this->getRegClass(TII.get(Codasip::e_movi32__).OpInfo[0].RegClass);
    AR = MF.getRegInfo().createVirtualRegister(ScavRegClass);
    assert(AR && "Register scavenger failed");
    MachineBasicBlock::iterator InsertedRangeStart = std::prev(II);
    BuildMI(MB,II,dl, TII.get(Codasip::e_movi32__), AR).addImm(Offset).setMIFlags(MIFlags);

    SmallVector<MachineOperand, 3> ops;
    ops.push_back(MachineOperand::CreateReg(AR, true));
    ops.push_back(MachineOperand::CreateReg(AR, false));
    ops.push_back(MachineOperand::CreateReg(baseReg, false, false, true));
    CII.EmitEssentialInstr(MB, II, dl, ISD::ADD, ops);
    std::prev(II)->setFlags(MIFlags);
    // safety check
    moveInsertedToSafety(make_range(std::next(InsertedRangeStart), II));
    MI.getOperand(inds.bi).setReg(AR);
    if (tied < 0) {
      MI.getOperand(inds.bi).setIsKill(true);
    }
    if (tied >= 0) {
      const MachineOperand &dst = MI.getOperand(tied);
      TII.copyPhysReg(MB, II, dl, dst.getReg(), AR, true);
      std::prev(II)->setFlags(MIFlags);
    }
    Offset = 0;
    bool check = HandleAR(MI, inds.bi, AR);
    if (!check) {
      errs() << "Failed to address an object in function '" << fnn << "'.\n";
      exit(1);
    }
  }
  // set the offset operand
  MI.getOperand(inds.oi).setImm(Offset);
  return;
// handle error
error:
  errs() << "Failed to address the local space of '" << fnn << "'.\n";
  exit(1);
}

// (base pointer)
Register
CodasipGen2RegisterInfo::getFrameRegister(const MachineFunction &MF) const {
  return getFrameRegister(MF, 0);
}

unsigned CodasipGen2RegisterInfo::getFrameRegister(const MachineFunction &MF,
                                                   int space) const {
  const CodasipTargetMachine &CTM =
      static_cast<const CodasipTargetMachine &>(MF.getTarget());
  const TargetFrameLowering *TFI = CTM.getFrameLowering();
  if (TFI->hasFP(MF)) {
    return GetBP(space);
  } else {
    return GetSP(space);
  }
}

const TargetRegisterClass *CodasipGen2RegisterInfo::getLargestLegalSuperClass(
    const TargetRegisterClass *RC, const MachineFunction &) const {
  for (unsigned i = 0; i < this->getNumRegClasses(); i++) {
    const TargetRegisterClass *CandSuperRC = this->getRegClass(i);
    if (CandSuperRC->isAllocatable() &&
        getRegSizeInBits(*CandSuperRC) == getRegSizeInBits(*RC) &&
        RC->hasSuperClass(CandSuperRC) && !RC->hasSubClassEq(CandSuperRC)) {
      return CandSuperRC;
    }
  }
  return RC;
}

// we detect one or two pointer classes
const TargetRegisterClass* CodasipGen2RegisterInfo::getPointerRegClass(const MachineFunction &MF, unsigned Kind) const
{
  // general (if not same as default)?
  
  // stack or default
  return &Codasip::regsRegClass;
}

const uint32_t *CodasipGen2RegisterInfo::getNoPreservedMask() const {
  return CSR_NoRegs_RegMask;
}

// this is important for lib csi save/restore
bool CodasipGen2RegisterInfo::hasReservedSpillSlot(const MachineFunction &MF,
                                                   unsigned Reg,
                                                   int &FrameIdx) const {
  return TargetRegisterInfo::hasReservedSpillSlot(MF, Reg, FrameIdx);
  // unused for now
  const CodasipFunctionInfo *finfo = MF.getInfo<CodasipFunctionInfo>();
  if (!finfo->HasLibSaveRestoreCS())
    return false;
  
  if (Reg == Codasip:: rf_gpr_1 ) return true;
  
  const uint16_t *csir = getCalleeSavedRegs(&MF);
  while (*csir) {
    if (*csir == Reg) {
      // note: this is handled by custom file for now
      FrameIdx = 0;
      return true;
    }
    ++csir;
  }
  return false;
}

ArrayRef<MCPhysReg>
CodasipGen2RegisterInfo::getPairOrder(const TargetRegisterClass *RC,
                                      MachineFunction &MF) const {
  // to.do
  return RC->getRawAllocationOrder(MF);
}
