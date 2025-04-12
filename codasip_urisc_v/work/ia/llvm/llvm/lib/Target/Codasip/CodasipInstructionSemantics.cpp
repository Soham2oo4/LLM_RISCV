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


#include "CodasipGenISelLowering.h"
#include "CodasipGenInstrInfo.h"
#include "CodasipInstructionSemantics.h"

#include "llvm/Analysis/OptimizationRemarkEmitter.h"

// turn of optimization on windows, too long function
#ifdef _WIN32
// disable global optimization, this will increase compilation times 8x-10x
#pragma optimize("", off)
#endif

llvm::SelectionDAG *llvm::GetCodasipPattern(const TargetMachine &TM,
                                            MachineFunction &mf, unsigned icode,
                                            std::vector<SDValue> &roots,
                                            bool lowlevel) {
  // hlp for memop
  MachinePointerInfo mpi;
  // resulting dag
  SelectionDAG *dag = new SelectionDAG(TM, CodeGenOpt::None);
  OptimizationRemarkEmitter ore(&mf.getFunction());
  dag->init(mf, ore, nullptr, nullptr, nullptr);
  // entry node
  SDValue entry = dag->getEntryNode();
  // dummy loc
  SDLoc dl;
  // building of nodes for each instruction
  switch (icode) {
  case Codasip::i_call_reg_alias__regs__:
    if (lowlevel) {
SDValue node0x383d99f0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x383fcdc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x383d9800 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x383fcdc0);
SDValue node0x383d8da0 = dag->getCopyToReg(node0x383d9800, dl, dag->getRegister(Codasip::rf_gpr_1, MVT::i32), node0x383d99f0, SDValue());
roots.reserve(2);
roots.push_back(node0x383d8da0);
roots.push_back(node0x383d9800);
dag->setRoot(node0x383d8da0);
    } else     {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_jump_reg_alias__regs__:
    {
SDValue node0x38147d80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38147b50 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x38147d80);
roots.reserve(1);
roots.push_back(node0x38147b50);
dag->setRoot(node0x38147b50);
    }
    break;
  case Codasip::i_jmp_rel_alias__rel_addr20__:
    {
SDValue node0x38146520 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x381467a0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x38146520);
roots.reserve(1);
roots.push_back(node0x381467a0);
dag->setRoot(node0x381467a0);
    }
    break;
  case Codasip::i_get_pc_alias__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_get_pc_alias__regs__:
    {
SDValue node0x380d25c0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x3812c410 = dag->getConstant(-4LL, dl, MVT::i32);
SDValue node0x3812c630 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x380d25c0, node0x3812c410);
SDValue node0x3812c3c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3812c630, SDValue());
roots.reserve(1);
roots.push_back(node0x3812c3c0);
dag->setRoot(node0x3812c3c0);
    }
    break;
  case Codasip::i_mv_alias__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_mv_alias__regs__reg0__:
    {
SDValue node0x381d0060 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x381d0010 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381d0060, SDValue());
roots.reserve(1);
roots.push_back(node0x381d0010);
dag->setRoot(node0x381d0010);
    }
    break;
  case Codasip::i_mv_alias__regs__regs__:
    {
SDValue node0x381d10f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381d0ea0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381d10f0, SDValue());
roots.reserve(1);
roots.push_back(node0x381d0ea0);
dag->setRoot(node0x381d0ea0);
    }
    break;
  case Codasip::i_seqz_alias__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_seqz_alias__regs__reg0__:
    {
SDValue node0x381eefc0 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x381eef70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381eefc0, SDValue());
roots.reserve(1);
roots.push_back(node0x381eef70);
dag->setRoot(node0x381eef70);
    }
    break;
  case Codasip::i_seqz_alias__regs__regs__:
    {
SDValue node0x381eff70 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x381f00f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381f01a0 = dag->getSetCC(dl, MVT::i32, node0x381f00f0, node0x381eff70, ISD::SETEQ);
SDValue node0x381efea0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381f01a0, SDValue());
roots.reserve(1);
roots.push_back(node0x381efea0);
dag->setRoot(node0x381efea0);
    }
    break;
  case Codasip::i_snez_alias__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_snez_alias__regs__reg0__:
    {
SDValue node0x381f9b70 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x381f9b20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381f9b70, SDValue());
roots.reserve(1);
roots.push_back(node0x381f9b20);
dag->setRoot(node0x381f9b20);
    }
    break;
  case Codasip::i_snez_alias__regs__regs__:
    {
SDValue node0x381faa80 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x381fac00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381facb0 = dag->getSetCC(dl, MVT::i32, node0x381fac00, node0x381faa80, ISD::SETNE);
SDValue node0x381fa9b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381facb0, SDValue());
roots.reserve(1);
roots.push_back(node0x381fa9b0);
dag->setRoot(node0x381fa9b0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__regs__simm12_simple__immspec_1_:
    {
SDValue node0x38273320 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x38271a60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38273320, SDValue());
SDValue node0x38273690 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382737d0 = dag->getNode(ISD::BRIND, dl, MVT::Other, node0x38271a60, node0x38273690);
roots.reserve(2);
roots.push_back(node0x38271a60);
roots.push_back(node0x382737d0);
dag->setRoot(node0x382737d0);
    }
    break;
  case Codasip::i_call_rel_alias__rel_addr20__:
case Codasip::i_call_rel_alias__rel_addr20__ES:
case Codasip::i_call_rel_alias__rel_addr20__MC:
case Codasip::i_call_rel_alias__rel_addr20__BA:
    if (lowlevel) {
SDValue node0x383da730 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x383da940 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x383dabc0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x383da940);
SDValue node0x383d9e80 = dag->getCopyToReg(node0x383dabc0, dl, dag->getRegister(Codasip::rf_gpr_1, MVT::i32), node0x383da730, SDValue());
roots.reserve(2);
roots.push_back(node0x383d9e80);
roots.push_back(node0x383dabc0);
dag->setRoot(node0x383d9e80);
    } else     {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__:
    {
SDValue node0x3812f330 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x3812f030 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x3812f330);
roots.reserve(1);
roots.push_back(node0x3812f030);
dag->setRoot(node0x3812f030);
    }
    break;
  case Codasip::i_jal_abs__opc_jal__regs__rel_addr20__:
    {
SDValue node0x3812f910 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x3812e8e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3812f910, SDValue());
SDValue node0x3812fc80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x3812f8b0 = dag->getNode(ISD::BR, dl, MVT::Other, node0x3812e8e0, node0x3812fc80);
roots.reserve(2);
roots.push_back(node0x3812e8e0);
roots.push_back(node0x3812f8b0);
dag->setRoot(node0x3812f8b0);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__:
    {
SDValue node0x382fd6c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x382fd970 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x382fd6c0);
roots.reserve(1);
roots.push_back(node0x382fd970);
dag->setRoot(node0x382fd970);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x382fec40 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x382fedc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x382fee70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x382fef10 = dag->getSetCC(dl, MVT::iAny, node0x382fedc0, node0x382fec40, ISD::SETEQ);
SDValue node0x382ff130 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x382fef10, node0x382fee70);
roots.reserve(1);
roots.push_back(node0x382ff130);
dag->setRoot(node0x382ff130);
    } else     {
SDValue node0x382fec40 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x382fedc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x382fee70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x382fef10 = dag->getSetCC(dl, MVT::i32, node0x382fedc0, node0x382fec40, ISD::SETEQ);
SDValue node0x382ff130 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x382fef10, node0x382fee70);
roots.reserve(1);
roots.push_back(node0x382ff130);
dag->setRoot(node0x382ff130);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x383015e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x38301760 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38301810 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x383018b0 = dag->getSetCC(dl, MVT::iAny, node0x38301760, node0x383015e0, ISD::SETEQ);
SDValue node0x38301ad0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x383018b0, node0x38301810);
roots.reserve(1);
roots.push_back(node0x38301ad0);
dag->setRoot(node0x38301ad0);
    } else     {
SDValue node0x383015e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x38301760 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38301810 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x383018b0 = dag->getSetCC(dl, MVT::i32, node0x38301760, node0x383015e0, ISD::SETEQ);
SDValue node0x38301ad0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x383018b0, node0x38301810);
roots.reserve(1);
roots.push_back(node0x38301ad0);
dag->setRoot(node0x38301ad0);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x38303250 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38303300 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x383033b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x38303450 = dag->getSetCC(dl, MVT::iAny, node0x38303300, node0x38303250, ISD::SETEQ);
SDValue node0x38303670 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38303450, node0x383033b0);
roots.reserve(1);
roots.push_back(node0x38303670);
dag->setRoot(node0x38303670);
    } else     {
SDValue node0x38303250 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38303300 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x383033b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x38303450 = dag->getSetCC(dl, MVT::i32, node0x38303300, node0x38303250, ISD::SETEQ);
SDValue node0x38303670 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38303450, node0x383033b0);
roots.reserve(1);
roots.push_back(node0x38303670);
dag->setRoot(node0x38303670);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__:
    {
SDValue node0x383045d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x38304880 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x383045d0);
roots.reserve(1);
roots.push_back(node0x38304880);
dag->setRoot(node0x38304880);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x383057e0 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x38305b40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38305bf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x38305c90 = dag->getSetCC(dl, MVT::iAny, node0x38305b40, node0x383057e0, ISD::SETLT);
SDValue node0x38305eb0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38305c90, node0x38305bf0);
roots.reserve(1);
roots.push_back(node0x38305eb0);
dag->setRoot(node0x38305eb0);
    } else     {
SDValue node0x383057e0 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x38305b40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38305bf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x38305c90 = dag->getSetCC(dl, MVT::i32, node0x38305b40, node0x383057e0, ISD::SETLT);
SDValue node0x38305eb0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38305c90, node0x38305bf0);
roots.reserve(1);
roots.push_back(node0x38305eb0);
dag->setRoot(node0x38305eb0);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x383084a0 = dag->getConstant(-1LL, dl, MVT::i32);
SDValue node0x38308580 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38308630 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x383086d0 = dag->getSetCC(dl, MVT::iAny, node0x38308580, node0x383084a0, ISD::SETGT);
SDValue node0x383088f0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x383086d0, node0x38308630);
roots.reserve(1);
roots.push_back(node0x383088f0);
dag->setRoot(node0x383088f0);
    } else     {
SDValue node0x383084a0 = dag->getConstant(-1LL, dl, MVT::i32);
SDValue node0x38308580 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38308630 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x383086d0 = dag->getSetCC(dl, MVT::i32, node0x38308580, node0x383084a0, ISD::SETGT);
SDValue node0x383088f0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x383086d0, node0x38308630);
roots.reserve(1);
roots.push_back(node0x383088f0);
dag->setRoot(node0x383088f0);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x3830a070 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3830a120 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3830a1d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x3830a270 = dag->getSetCC(dl, MVT::iAny, node0x3830a120, node0x3830a070, ISD::SETGE);
SDValue node0x3830a490 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3830a270, node0x3830a1d0);
roots.reserve(1);
roots.push_back(node0x3830a490);
dag->setRoot(node0x3830a490);
    } else     {
SDValue node0x3830a070 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3830a120 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3830a1d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x3830a270 = dag->getSetCC(dl, MVT::i32, node0x3830a120, node0x3830a070, ISD::SETGE);
SDValue node0x3830a490 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3830a270, node0x3830a1d0);
roots.reserve(1);
roots.push_back(node0x3830a490);
dag->setRoot(node0x3830a490);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__:
    {
SDValue node0x3830b3f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x3830b6a0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x3830b3f0);
roots.reserve(1);
roots.push_back(node0x3830b6a0);
dag->setRoot(node0x3830b6a0);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x3830c7e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3830c960 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3830ca10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x3830cab0 = dag->getSetCC(dl, MVT::iAny, node0x3830c960, node0x3830c7e0, ISD::SETEQ);
SDValue node0x3830ccd0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3830cab0, node0x3830ca10);
roots.reserve(1);
roots.push_back(node0x3830ccd0);
dag->setRoot(node0x3830ccd0);
    } else     {
SDValue node0x3830c7e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3830c960 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3830ca10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x3830cab0 = dag->getSetCC(dl, MVT::i32, node0x3830c960, node0x3830c7e0, ISD::SETEQ);
SDValue node0x3830ccd0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3830cab0, node0x3830ca10);
roots.reserve(1);
roots.push_back(node0x3830ccd0);
dag->setRoot(node0x3830ccd0);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x38310d80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38310e30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38310ee0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x38310f80 = dag->getSetCC(dl, MVT::iAny, node0x38310e30, node0x38310d80, ISD::SETUGE);
SDValue node0x383111a0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38310f80, node0x38310ee0);
roots.reserve(1);
roots.push_back(node0x383111a0);
dag->setRoot(node0x383111a0);
    } else     {
SDValue node0x38310d80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38310e30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38310ee0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x38310f80 = dag->getSetCC(dl, MVT::i32, node0x38310e30, node0x38310d80, ISD::SETUGE);
SDValue node0x383111a0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38310f80, node0x38310ee0);
roots.reserve(1);
roots.push_back(node0x383111a0);
dag->setRoot(node0x383111a0);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x38312de0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x38312f60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38313010 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x383130b0 = dag->getSetCC(dl, MVT::iAny, node0x38312f60, node0x38312de0, ISD::SETGT);
SDValue node0x383132d0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x383130b0, node0x38313010);
roots.reserve(1);
roots.push_back(node0x383132d0);
dag->setRoot(node0x383132d0);
    } else     {
SDValue node0x38312de0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x38312f60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38313010 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x383130b0 = dag->getSetCC(dl, MVT::i32, node0x38312f60, node0x38312de0, ISD::SETGT);
SDValue node0x383132d0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x383130b0, node0x38313010);
roots.reserve(1);
roots.push_back(node0x383132d0);
dag->setRoot(node0x383132d0);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x383157d0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x38315950 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38315a00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x38315aa0 = dag->getSetCC(dl, MVT::iAny, node0x38315950, node0x383157d0, ISD::SETLT);
SDValue node0x38315cc0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38315aa0, node0x38315a00);
roots.reserve(1);
roots.push_back(node0x38315cc0);
dag->setRoot(node0x38315cc0);
    } else     {
SDValue node0x383157d0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x38315950 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38315a00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x38315aa0 = dag->getSetCC(dl, MVT::i32, node0x38315950, node0x383157d0, ISD::SETLT);
SDValue node0x38315cc0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38315aa0, node0x38315a00);
roots.reserve(1);
roots.push_back(node0x38315cc0);
dag->setRoot(node0x38315cc0);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x38317440 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x383174f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x383175a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x38317640 = dag->getSetCC(dl, MVT::iAny, node0x383174f0, node0x38317440, ISD::SETLT);
SDValue node0x38317860 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38317640, node0x383175a0);
roots.reserve(1);
roots.push_back(node0x38317860);
dag->setRoot(node0x38317860);
    } else     {
SDValue node0x38317440 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x383174f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x383175a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x38317640 = dag->getSetCC(dl, MVT::i32, node0x383174f0, node0x38317440, ISD::SETLT);
SDValue node0x38317860 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38317640, node0x383175a0);
roots.reserve(1);
roots.push_back(node0x38317860);
dag->setRoot(node0x38317860);
    }
    break;
  case Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x38319450 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x383195d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38319680 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x38319720 = dag->getSetCC(dl, MVT::iAny, node0x383195d0, node0x38319450, ISD::SETNE);
SDValue node0x38319940 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38319720, node0x38319680);
roots.reserve(1);
roots.push_back(node0x38319940);
dag->setRoot(node0x38319940);
    } else     {
SDValue node0x38319450 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x383195d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38319680 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x38319720 = dag->getSetCC(dl, MVT::i32, node0x383195d0, node0x38319450, ISD::SETNE);
SDValue node0x38319940 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38319720, node0x38319680);
roots.reserve(1);
roots.push_back(node0x38319940);
dag->setRoot(node0x38319940);
    }
    break;
  case Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x3831d240 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3831d2f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3831d3a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x3831d440 = dag->getSetCC(dl, MVT::iAny, node0x3831d2f0, node0x3831d240, ISD::SETULT);
SDValue node0x3831d660 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3831d440, node0x3831d3a0);
roots.reserve(1);
roots.push_back(node0x3831d660);
dag->setRoot(node0x3831d660);
    } else     {
SDValue node0x3831d240 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3831d2f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3831d3a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x3831d440 = dag->getSetCC(dl, MVT::i32, node0x3831d2f0, node0x3831d240, ISD::SETULT);
SDValue node0x3831d660 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3831d440, node0x3831d3a0);
roots.reserve(1);
roots.push_back(node0x3831d660);
dag->setRoot(node0x3831d660);
    }
    break;
  case Codasip::i_control_conditional__opc_bne__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x3831f2f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3831f470 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3831f520 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x3831f5c0 = dag->getSetCC(dl, MVT::iAny, node0x3831f470, node0x3831f2f0, ISD::SETNE);
SDValue node0x3831f7e0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3831f5c0, node0x3831f520);
roots.reserve(1);
roots.push_back(node0x3831f7e0);
dag->setRoot(node0x3831f7e0);
    } else     {
SDValue node0x3831f2f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3831f470 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3831f520 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x3831f5c0 = dag->getSetCC(dl, MVT::i32, node0x3831f470, node0x3831f2f0, ISD::SETNE);
SDValue node0x3831f7e0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3831f5c0, node0x3831f520);
roots.reserve(1);
roots.push_back(node0x3831f7e0);
dag->setRoot(node0x3831f7e0);
    }
    break;
  case Codasip::i_control_conditional__opc_bne__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x38321ce0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x38321e60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38321f10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x38321fb0 = dag->getSetCC(dl, MVT::iAny, node0x38321e60, node0x38321ce0, ISD::SETNE);
SDValue node0x383221d0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38321fb0, node0x38321f10);
roots.reserve(1);
roots.push_back(node0x383221d0);
dag->setRoot(node0x383221d0);
    } else     {
SDValue node0x38321ce0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x38321e60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38321f10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x38321fb0 = dag->getSetCC(dl, MVT::i32, node0x38321e60, node0x38321ce0, ISD::SETNE);
SDValue node0x383221d0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38321fb0, node0x38321f10);
roots.reserve(1);
roots.push_back(node0x383221d0);
dag->setRoot(node0x383221d0);
    }
    break;
  case Codasip::i_control_conditional__opc_bne__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x38323950 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38323a00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38323ab0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x38323b50 = dag->getSetCC(dl, MVT::iAny, node0x38323a00, node0x38323950, ISD::SETNE);
SDValue node0x38323d70 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38323b50, node0x38323ab0);
roots.reserve(1);
roots.push_back(node0x38323d70);
dag->setRoot(node0x38323d70);
    } else     {
SDValue node0x38323950 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38323a00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38323ab0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x38323b50 = dag->getSetCC(dl, MVT::i32, node0x38323a00, node0x38323950, ISD::SETNE);
SDValue node0x38323d70 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38323b50, node0x38323ab0);
roots.reserve(1);
roots.push_back(node0x38323d70);
dag->setRoot(node0x38323d70);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x38265dc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x38266020 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x382660d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38266180 = dag->getSetCC(dl, MVT::iAny, node0x38266020, node0x382660d0, ISD::SETLE);
SDValue node0x38266220 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38266180, node0x38265dc0);
roots.reserve(1);
roots.push_back(node0x38266220);
dag->setRoot(node0x38266220);
    } else     {
SDValue node0x38265dc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x38266020 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x382660d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38266180 = dag->getSetCC(dl, MVT::i32, node0x38266020, node0x382660d0, ISD::SETLE);
SDValue node0x38266220 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38266180, node0x38265dc0);
roots.reserve(1);
roots.push_back(node0x38266220);
dag->setRoot(node0x38266220);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x38266ce0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x38266f70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38267020 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382670d0 = dag->getSetCC(dl, MVT::iAny, node0x38266f70, node0x38267020, ISD::SETULE);
SDValue node0x382671a0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x382670d0, node0x38266ce0);
roots.reserve(1);
roots.push_back(node0x382671a0);
dag->setRoot(node0x382671a0);
    } else     {
SDValue node0x38266ce0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x38266f70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38267020 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382670d0 = dag->getSetCC(dl, MVT::i32, node0x38266f70, node0x38267020, ISD::SETULE);
SDValue node0x382671a0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x382670d0, node0x38266ce0);
roots.reserve(1);
roots.push_back(node0x382671a0);
dag->setRoot(node0x382671a0);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x38267bb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x38267e40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38267ef0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38267fa0 = dag->getSetCC(dl, MVT::iAny, node0x38267e40, node0x38267ef0, ISD::SETGT);
SDValue node0x38268070 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38267fa0, node0x38267bb0);
roots.reserve(1);
roots.push_back(node0x38268070);
dag->setRoot(node0x38268070);
    } else     {
SDValue node0x38267bb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x38267e40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38267ef0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38267fa0 = dag->getSetCC(dl, MVT::i32, node0x38267e40, node0x38267ef0, ISD::SETGT);
SDValue node0x38268070 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38267fa0, node0x38267bb0);
roots.reserve(1);
roots.push_back(node0x38268070);
dag->setRoot(node0x38268070);
    }
    break;
  case Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x38268a80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x38268d10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38268dc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38268e70 = dag->getSetCC(dl, MVT::iAny, node0x38268d10, node0x38268dc0, ISD::SETUGT);
SDValue node0x38268f40 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38268e70, node0x38268a80);
roots.reserve(1);
roots.push_back(node0x38268f40);
dag->setRoot(node0x38268f40);
    } else     {
SDValue node0x38268a80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x38268d10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38268dc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38268e70 = dag->getSetCC(dl, MVT::i32, node0x38268d10, node0x38268dc0, ISD::SETUGT);
SDValue node0x38268f40 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x38268e70, node0x38268a80);
roots.reserve(1);
roots.push_back(node0x38268f40);
dag->setRoot(node0x38268f40);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__:
    {
SDValue node0x38131c60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x38131990 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x38131c60);
roots.reserve(1);
roots.push_back(node0x38131990);
dag->setRoot(node0x38131990);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_simple__:
    {
SDValue node0x3813c220 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x3813b940 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3813c220, SDValue());
SDValue node0x3813c590 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x3813c1f0 = dag->getNode(ISD::BR, dl, MVT::Other, node0x3813b940, node0x3813c590);
roots.reserve(2);
roots.push_back(node0x3813b940);
roots.push_back(node0x3813c1f0);
dag->setRoot(node0x3813c1f0);
    }
    break;
  case Codasip::i_auipc__opc_auipc__regs__imm20_s12__:
    {
SDValue node0x383bd020 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x37df6230 = dag->getConstant(-4LL, dl, MVT::i32);
SDValue node0x383bc620 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x383bc6c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x383bd020, node0x383bc620);
SDValue node0x37e03110 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x383bc6c0, node0x37df6230);
SDValue node0x383bcfd0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x37e03110, SDValue());
roots.reserve(1);
roots.push_back(node0x383bcfd0);
dag->setRoot(node0x383bcfd0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__:
    {
SDValue node0x37de2330 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x37de1120 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x37de2330, SDValue());
roots.reserve(1);
roots.push_back(node0x37de1120);
dag->setRoot(node0x37de1120);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__:
    {
SDValue node0x380205f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3801d460 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3801d500 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x380205f0, node0x3801d460);
SDValue node0x3801bf80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3801d500, SDValue());
roots.reserve(1);
roots.push_back(node0x3801bf80);
dag->setRoot(node0x3801bf80);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__:
    {
SDValue node0x383dc330 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x383dc3e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x383dc480 = dag->getNode(ISD::AND, dl, MVT::i32, node0x383dc330, node0x383dc3e0);
SDValue node0x3837af80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x383dc480, SDValue());
roots.reserve(1);
roots.push_back(node0x3837af80);
dag->setRoot(node0x3837af80);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__:
    {
SDValue node0x383e7210 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x383e60a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x383e7210, SDValue());
roots.reserve(1);
roots.push_back(node0x383e60a0);
dag->setRoot(node0x383e60a0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__:
    {
SDValue node0x383eb3b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x383eb460 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x383eb500 = dag->getNode(ISD::OR, dl, MVT::i32, node0x383eb3b0, node0x383eb460);
SDValue node0x383e9f00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x383eb500, SDValue());
roots.reserve(1);
roots.push_back(node0x383e9f00);
dag->setRoot(node0x383e9f00);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__:
    {
SDValue node0x383f6960 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x383f6a40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x383f6ae0 = dag->getSetCC(dl, MVT::i32, node0x383f6a40, node0x383f6960, ISD::SETGT);
SDValue node0x383f5680 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x383f6ae0, SDValue());
roots.reserve(1);
roots.push_back(node0x383f5680);
dag->setRoot(node0x383f5680);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:
    {
SDValue node0x383faf80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x383fb030 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x383fb0d0 = dag->getSetCC(dl, MVT::i32, node0x383faf80, node0x383fb030, ISD::SETLT);
SDValue node0x383f9970 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x383fb0d0, SDValue());
roots.reserve(1);
roots.push_back(node0x383f9970);
dag->setRoot(node0x383f9970);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__:
    {
SDValue node0x3802c1d0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3802c2b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3802c350 = dag->getSetCC(dl, MVT::i32, node0x3802c2b0, node0x3802c1d0, ISD::SETNE);
SDValue node0x3802aef0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3802c350, SDValue());
roots.reserve(1);
roots.push_back(node0x3802aef0);
dag->setRoot(node0x3802aef0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:
    {
SDValue node0x380307f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x380308a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x38030940 = dag->getSetCC(dl, MVT::i32, node0x380307f0, node0x380308a0, ISD::SETULT);
SDValue node0x3802f1e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38030940, SDValue());
roots.reserve(1);
roots.push_back(node0x3802f1e0);
dag->setRoot(node0x3802f1e0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__:
    {
SDValue node0x3803bb00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3803a8f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3803bb00, SDValue());
roots.reserve(1);
roots.push_back(node0x3803a8f0);
dag->setRoot(node0x3803a8f0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:
    {
SDValue node0x3803fde0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3803fe90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3803ff30 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x3803fde0, node0x3803fe90);
SDValue node0x3803e890 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3803ff30, SDValue());
roots.reserve(1);
roots.push_back(node0x3803e890);
dag->setRoot(node0x3803e890);
    }
    break;
  case Codasip::i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__:
    {
SDValue node0x38044ca0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38044d50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x38044df0 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x38044ca0, node0x38044d50);
SDValue node0x380447f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38044df0, SDValue());
roots.reserve(1);
roots.push_back(node0x380447f0);
dag->setRoot(node0x380447f0);
    }
    break;
  case Codasip::i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__:
    {
SDValue node0x38049dc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38049e70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x38049f10 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x38049dc0, node0x38049e70);
SDValue node0x38049910 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38049f10, SDValue());
roots.reserve(1);
roots.push_back(node0x38049910);
dag->setRoot(node0x38049910);
    }
    break;
  case Codasip::i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__:
    {
SDValue node0x3804eee0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3804ef90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3804f030 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x3804eee0, node0x3804ef90);
SDValue node0x3804ea30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3804f030, SDValue());
roots.reserve(1);
roots.push_back(node0x3804ea30);
dag->setRoot(node0x3804ea30);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__regs__reg0__reg0__:
    {
SDValue node0x38064980 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x38062b30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38064980, SDValue());
roots.reserve(1);
roots.push_back(node0x38062b30);
dag->setRoot(node0x38062b30);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__regs__reg0__regs__:
    {
SDValue node0x38065b70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38064b70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38065b70, SDValue());
roots.reserve(1);
roots.push_back(node0x38064b70);
dag->setRoot(node0x38064b70);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__regs__regs__reg0__:
    {
SDValue node0x38067bd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38065d00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38067bd0, SDValue());
roots.reserve(1);
roots.push_back(node0x38065d00);
dag->setRoot(node0x38065d00);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__regs__regs__regs__:
    {
SDValue node0x38068f00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38068fb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x38069060 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x38068f00, node0x38068fb0);
SDValue node0x38068c10 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38069060, SDValue());
roots.reserve(1);
roots.push_back(node0x38068c10);
dag->setRoot(node0x38068c10);
    }
    break;
  case Codasip::i_comp_3reg__opc_and__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_comp_3reg__opc_and__regs__reg0__reg0__:
    {
SDValue node0x38071370 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3806f520 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38071370, SDValue());
roots.reserve(1);
roots.push_back(node0x3806f520);
dag->setRoot(node0x3806f520);
    }
    break;
  case Codasip::i_comp_3reg__opc_and__regs__regs__regs__:
    {
SDValue node0x38075600 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x380756b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x38075760 = dag->getNode(ISD::AND, dl, MVT::i32, node0x38075600, node0x380756b0);
SDValue node0x38074460 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38075760, SDValue());
roots.reserve(1);
roots.push_back(node0x38074460);
dag->setRoot(node0x38074460);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__regs__reg0__reg0__:
    {
SDValue node0x3807dbf0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3807bda0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3807dbf0, SDValue());
roots.reserve(1);
roots.push_back(node0x3807bda0);
dag->setRoot(node0x3807bda0);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__regs__reg0__regs__:
    {
SDValue node0x3807ee40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3807dde0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3807ee40, SDValue());
roots.reserve(1);
roots.push_back(node0x3807dde0);
dag->setRoot(node0x3807dde0);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__regs__regs__reg0__:
    {
SDValue node0x38080f00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3807efd0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38080f00, SDValue());
roots.reserve(1);
roots.push_back(node0x3807efd0);
dag->setRoot(node0x3807efd0);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__regs__regs__regs__:
    {
SDValue node0x38082240 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x380822f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x380823a0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x38082240, node0x380822f0);
SDValue node0x38081090 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x380823a0, SDValue());
roots.reserve(1);
roots.push_back(node0x38081090);
dag->setRoot(node0x38081090);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__regs__reg0__reg0__:
    {
SDValue node0x3808a710 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x380888c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3808a710, SDValue());
roots.reserve(1);
roots.push_back(node0x380888c0);
dag->setRoot(node0x380888c0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__regs__regs__reg0__:
    {
SDValue node0x3808d810 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3808b8f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3808d810, SDValue());
roots.reserve(1);
roots.push_back(node0x3808b8f0);
dag->setRoot(node0x3808b8f0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__regs__regs__regs__:
    {
SDValue node0x3808eb90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3808ec40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3808ed80 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x3808eb90, node0x3808ec40);
SDValue node0x3808d9a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3808ed80, SDValue());
roots.reserve(1);
roots.push_back(node0x3808d9a0);
dag->setRoot(node0x3808d9a0);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__reg0__reg0__:
    {
SDValue node0x380970c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x38095270 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x380970c0, SDValue());
roots.reserve(1);
roots.push_back(node0x38095270);
dag->setRoot(node0x38095270);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__reg0__regs__:
    {
SDValue node0x38098130 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x380982b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38098360 = dag->getSetCC(dl, MVT::i32, node0x380982b0, node0x38098130, ISD::SETGT);
SDValue node0x380972b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38098360, SDValue());
roots.reserve(1);
roots.push_back(node0x380972b0);
dag->setRoot(node0x380972b0);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__regs__reg0__:
    {
SDValue node0x3809a310 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x3809a530 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3809a5e0 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x3809a530, node0x3809a310);
SDValue node0x38098680 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3809a5e0, SDValue());
roots.reserve(1);
roots.push_back(node0x38098680);
dag->setRoot(node0x38098680);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__regs__regs__:
    {
SDValue node0x3809b8d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3809b980 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3809ba30 = dag->getSetCC(dl, MVT::i32, node0x3809b8d0, node0x3809b980, ISD::SETLT);
SDValue node0x3809a7f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3809ba30, SDValue());
roots.reserve(1);
roots.push_back(node0x3809a7f0);
dag->setRoot(node0x3809a7f0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__regs__reg0__reg0__:
    {
SDValue node0x382c5990 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x380a2110 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382c5990, SDValue());
roots.reserve(1);
roots.push_back(node0x380a2110);
dag->setRoot(node0x380a2110);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__regs__reg0__regs__:
    {
SDValue node0x382c6a00 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x382c6b80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382c6c30 = dag->getSetCC(dl, MVT::i32, node0x382c6b80, node0x382c6a00, ISD::SETNE);
SDValue node0x382c5b80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382c6c30, SDValue());
roots.reserve(1);
roots.push_back(node0x382c5b80);
dag->setRoot(node0x382c5b80);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__:
    {
SDValue node0x382c9ef0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382c9fa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x382ca050 = dag->getSetCC(dl, MVT::i32, node0x382c9ef0, node0x382c9fa0, ISD::SETULT);
SDValue node0x382c8d50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382ca050, SDValue());
roots.reserve(1);
roots.push_back(node0x382c8d50);
dag->setRoot(node0x382c8d50);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__regs__reg0__reg0__:
    {
SDValue node0x382d2420 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x382d05d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382d2420, SDValue());
roots.reserve(1);
roots.push_back(node0x382d05d0);
dag->setRoot(node0x382d05d0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__regs__regs__reg0__:
    {
SDValue node0x382d5520 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382d3600 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382d5520, SDValue());
roots.reserve(1);
roots.push_back(node0x382d3600);
dag->setRoot(node0x382d3600);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__regs__regs__regs__:
    {
SDValue node0x382d68a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382d6950 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x382d6a90 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x382d68a0, node0x382d6950);
SDValue node0x382d56b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382d6a90, SDValue());
roots.reserve(1);
roots.push_back(node0x382d56b0);
dag->setRoot(node0x382d56b0);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__regs__reg0__reg0__:
    {
SDValue node0x382dedd0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x382dcf80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382dedd0, SDValue());
roots.reserve(1);
roots.push_back(node0x382dcf80);
dag->setRoot(node0x382dcf80);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__regs__regs__reg0__:
    {
SDValue node0x382e1ed0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382dffb0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382e1ed0, SDValue());
roots.reserve(1);
roots.push_back(node0x382dffb0);
dag->setRoot(node0x382dffb0);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__regs__regs__regs__:
    {
SDValue node0x382e3250 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382e3300 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x382e3440 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x382e3250, node0x382e3300);
SDValue node0x382e2060 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382e3440, SDValue());
roots.reserve(1);
roots.push_back(node0x382e2060);
dag->setRoot(node0x382e2060);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__regs__reg0__reg0__:
    {
SDValue node0x382eb780 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x382e9930 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382eb780, SDValue());
roots.reserve(1);
roots.push_back(node0x382e9930);
dag->setRoot(node0x382e9930);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__regs__reg0__regs__:
    {
SDValue node0x382ec770 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x382ec970 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382eca20 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x382ec770, node0x382ec970);
SDValue node0x382eb970 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382eca20, SDValue());
roots.reserve(1);
roots.push_back(node0x382eb970);
dag->setRoot(node0x382eb970);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__regs__regs__reg0__:
    {
SDValue node0x382eea90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382ecc30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382eea90, SDValue());
roots.reserve(1);
roots.push_back(node0x382ecc30);
dag->setRoot(node0x382ecc30);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__regs__regs__regs__:
    {
SDValue node0x382efd70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382efe20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x382efed0 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x382efd70, node0x382efe20);
SDValue node0x382eec20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382efed0, SDValue());
roots.reserve(1);
roots.push_back(node0x382eec20);
dag->setRoot(node0x382eec20);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__regs__reg0__reg0__:
    {
SDValue node0x382f81e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x382f6390 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382f81e0, SDValue());
roots.reserve(1);
roots.push_back(node0x382f6390);
dag->setRoot(node0x382f6390);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__regs__reg0__regs__:
    {
SDValue node0x382f93d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382f83d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382f93d0, SDValue());
roots.reserve(1);
roots.push_back(node0x382f83d0);
dag->setRoot(node0x382f83d0);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__regs__regs__reg0__:
    {
SDValue node0x382fb430 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382f9560 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382fb430, SDValue());
roots.reserve(1);
roots.push_back(node0x382f9560);
dag->setRoot(node0x382f9560);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__regs__regs__regs__:
    {
SDValue node0x382fc710 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382fc7c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x382fc870 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x382fc710, node0x382fc7c0);
SDValue node0x382fb5c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382fc870, SDValue());
roots.reserve(1);
roots.push_back(node0x382fb5c0);
dag->setRoot(node0x382fb5c0);
    }
    break;
  case Codasip::i_load__opc_loadb__reg0__simm12_simple__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadb__reg0__simm12_simple__regs__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__reg0__:
    {
SDValue node0x3815a830 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381508b0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x3815a830, mpi, MVT::i8, 1);
SDValue node0x38159bb0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381508b0, SDValue());
roots.reserve(1);
roots.push_back(node0x38159bb0);
dag->setRoot(node0x38159bb0);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__:
    {
SDValue node0x3815bb50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3815bc00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3815bca0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3815bb50, node0x3815bc00);
SDValue node0x3814f640 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x3815bca0, mpi, MVT::i8, 1);
SDValue node0x38159a70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3814f640, SDValue());
roots.reserve(1);
roots.push_back(node0x38159a70);
dag->setRoot(node0x38159a70);
    }
    break;
  case Codasip::i_load__opc_loadbu__reg0__simm12_simple__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadbu__reg0__simm12_simple__regs__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__:
    {
SDValue node0x3816c3a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38162070 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x3816c3a0, mpi, MVT::i8, 1);
SDValue node0x3816b720 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38162070, SDValue());
roots.reserve(1);
roots.push_back(node0x3816b720);
dag->setRoot(node0x3816b720);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__:
    {
SDValue node0x3816d6c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3816d770 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3816d810 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3816d6c0, node0x3816d770);
SDValue node0x38160e00 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x3816d810, mpi, MVT::i8, 1);
SDValue node0x3816b5e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38160e00, SDValue());
roots.reserve(1);
roots.push_back(node0x3816b5e0);
dag->setRoot(node0x3816b5e0);
    }
    break;
  case Codasip::i_load__opc_loadh__reg0__simm12_simple__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadh__reg0__simm12_simple__regs__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__reg0__:
    {
SDValue node0x3817df30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38173c00 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x3817df30, mpi, MVT::i16, 1);
SDValue node0x3817d2b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38173c00, SDValue());
roots.reserve(1);
roots.push_back(node0x3817d2b0);
dag->setRoot(node0x3817d2b0);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__:
    {
SDValue node0x3817f250 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3817f300 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3817f3a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3817f250, node0x3817f300);
SDValue node0x38172990 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x3817f3a0, mpi, MVT::i16, 1);
SDValue node0x3817d170 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38172990, SDValue());
roots.reserve(1);
roots.push_back(node0x3817d170);
dag->setRoot(node0x3817d170);
    }
    break;
  case Codasip::i_load__opc_loadhu__reg0__simm12_simple__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadhu__reg0__simm12_simple__regs__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__:
    {
SDValue node0x3818faa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38185770 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x3818faa0, mpi, MVT::i16, 1);
SDValue node0x3818ee20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38185770, SDValue());
roots.reserve(1);
roots.push_back(node0x3818ee20);
dag->setRoot(node0x3818ee20);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__:
    {
SDValue node0x38190dc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38190e70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x38190f10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x38190dc0, node0x38190e70);
SDValue node0x38184500 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x38190f10, mpi, MVT::i16, 1);
SDValue node0x3818ece0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38184500, SDValue());
roots.reserve(1);
roots.push_back(node0x3818ece0);
dag->setRoot(node0x3818ece0);
    }
    break;
  case Codasip::i_load__opc_loadw__reg0__simm12_simple__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadw__reg0__simm12_simple__regs__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__reg0__:
    {
SDValue node0x381ab670 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381ab710 = dag->getLoad(MVT::i32, dl, entry, node0x381ab670, mpi, 1);
SDValue node0x381a06d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381ab710, SDValue());
roots.reserve(1);
roots.push_back(node0x381a06d0);
dag->setRoot(node0x381a06d0);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__:
    {
SDValue node0x381ac930 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381ac9e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x381aca80 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x381ac930, node0x381ac9e0);
SDValue node0x381acb10 = dag->getLoad(MVT::i32, dl, entry, node0x381aca80, mpi, 1);
SDValue node0x381a05e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381acb10, SDValue());
roots.reserve(1);
roots.push_back(node0x381a05e0);
dag->setRoot(node0x381a05e0);
    }
    break;
  case Codasip::i_lui__opc_lui__regs__imm20_s12__:
    {
SDValue node0x381c81d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381c7da0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381c81d0, SDValue());
roots.reserve(1);
roots.push_back(node0x381c7da0);
dag->setRoot(node0x381c7da0);
    }
    break;
  case Codasip::i_neg_alias__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_neg_alias__regs__reg0__:
    {
SDValue node0x381d3c30 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x381d3be0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381d3c30, SDValue());
roots.reserve(1);
roots.push_back(node0x381d3be0);
dag->setRoot(node0x381d3be0);
    }
    break;
  case Codasip::i_neg_alias__regs__regs__:
    {
SDValue node0x381d4ac0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x381d4cc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381d4d70 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x381d4ac0, node0x381d4cc0);
SDValue node0x381d4a70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381d4d70, SDValue());
roots.reserve(1);
roots.push_back(node0x381d4a70);
dag->setRoot(node0x381d4a70);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__reg0__:
    {
SDValue node0x381ffd20 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x381fffc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x381a0d60 = dag->getStore(entry, dl, node0x381ffd20, node0x381fffc0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x381a0d60);
dag->setRoot(node0x381a0d60);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__:
    {
SDValue node0x38200c90 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x38200fd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38201080 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38201120 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x38200fd0, node0x38201080);
SDValue node0x382011b0 = dag->getStore(entry, dl, node0x38200c90, node0x38201120, mpi, 1);
roots.reserve(1);
roots.push_back(node0x382011b0);
dag->setRoot(node0x382011b0);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_simple__reg0__:
    {
SDValue node0x3820bfc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3820c070 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38297c60 = dag->getTruncStore(entry, dl, node0x3820bfc0, node0x3820c070, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x38297c60);
dag->setRoot(node0x38297c60);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_simple__regs__:
    {
SDValue node0x3820d340 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3820d3f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3820d4a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3820d5f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3820d3f0, node0x3820d4a0);
SDValue node0x3820c1c0 = dag->getTruncStore(entry, dl, node0x3820d340, node0x3820d5f0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x3820c1c0);
dag->setRoot(node0x3820c1c0);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__:
    {
SDValue node0x38212aa0 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x38212d40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38212de0 = dag->getStore(entry, dl, node0x38212aa0, node0x38212d40, mpi, 1);
roots.reserve(1);
roots.push_back(node0x38212de0);
dag->setRoot(node0x38212de0);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__:
    {
SDValue node0x38213c60 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x38213fa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38214050 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382140f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x38213fa0, node0x38214050);
SDValue node0x38214180 = dag->getStore(entry, dl, node0x38213c60, node0x382140f0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x38214180);
dag->setRoot(node0x38214180);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_simple__reg0__:
    {
SDValue node0x3821ef90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3821f040 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382981c0 = dag->getTruncStore(entry, dl, node0x3821ef90, node0x3821f040, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x382981c0);
dag->setRoot(node0x382981c0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_simple__regs__:
    {
SDValue node0x38220310 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x382203c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38220470 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x382205c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x382203c0, node0x38220470);
SDValue node0x3821f190 = dag->getTruncStore(entry, dl, node0x38220310, node0x382205c0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x3821f190);
dag->setRoot(node0x3821f190);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_simple__reg0__:
    {
SDValue node0x382257f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x382259f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38225a90 = dag->getStore(entry, dl, node0x382257f0, node0x382259f0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x38225a90);
dag->setRoot(node0x38225a90);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_simple__regs__:
    {
SDValue node0x38226910 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x38226bb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38226c60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38226d00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x38226bb0, node0x38226c60);
SDValue node0x38226d90 = dag->getStore(entry, dl, node0x38226910, node0x38226d00, mpi, 1);
roots.reserve(1);
roots.push_back(node0x38226d90);
dag->setRoot(node0x38226d90);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__reg0__:
    {
SDValue node0x38231890 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38231940 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382319e0 = dag->getStore(entry, dl, node0x38231890, node0x38231940, mpi, 1);
roots.reserve(1);
roots.push_back(node0x382319e0);
dag->setRoot(node0x382319e0);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__:
    {
SDValue node0x38232bb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38232c60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38232d10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x38232db0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x38232c60, node0x38232d10);
SDValue node0x38232e40 = dag->getStore(entry, dl, node0x38232bb0, node0x38232db0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x38232e40);
dag->setRoot(node0x38232e40);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:
    {
SDValue node0x38263000 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x38262de0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38263000, SDValue());
roots.reserve(1);
roots.push_back(node0x38262de0);
dag->setRoot(node0x38262de0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:
    {
SDValue node0x38262b60 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x382622c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38262b60, SDValue());
roots.reserve(1);
roots.push_back(node0x382622c0);
dag->setRoot(node0x382622c0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:
    {
SDValue node0x38263f00 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x38263590 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38263f00, SDValue());
roots.reserve(1);
roots.push_back(node0x38263590);
dag->setRoot(node0x38263590);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:
    {
SDValue node0x38263760 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x38262e90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38263760, SDValue());
roots.reserve(1);
roots.push_back(node0x38262e90);
dag->setRoot(node0x38262e90);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__regs__regs__regs__SHIFT_MASK_CLONE_:
    {
SDValue node0x3813fc50 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x3818ead0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3813e7a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3821f0e0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x3813e7a0, node0x3813fc50);
SDValue node0x3820d540 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x3818ead0, node0x3821f0e0);
SDValue node0x382964d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3820d540, SDValue());
roots.reserve(1);
roots.push_back(node0x382964d0);
dag->setRoot(node0x382964d0);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__regs__regs__swappedCmpClone0__:
    {
SDValue node0x38262310 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38262440 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x382647a0 = dag->getSetCC(dl, MVT::i32, node0x38262310, node0x38262440, ISD::SETGT);
SDValue node0x38264430 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382647a0, SDValue());
roots.reserve(1);
roots.push_back(node0x38264430);
dag->setRoot(node0x38264430);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__swappedCmpClone0__:
    {
SDValue node0x38265020 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38265170 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x38265220 = dag->getSetCC(dl, MVT::i32, node0x38265020, node0x38265170, ISD::SETUGT);
SDValue node0x38263d30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38265220, SDValue());
roots.reserve(1);
roots.push_back(node0x38263d30);
dag->setRoot(node0x38263d30);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__regs__regs__regs__SHIFT_MASK_CLONE_:
    {
SDValue node0x3808e970 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x38134a90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38133a60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3808ecf0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x38133a60, node0x3808e970);
SDValue node0x3820c110 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x38134a90, node0x3808ecf0);
SDValue node0x382bef20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3820c110, SDValue());
roots.reserve(1);
roots.push_back(node0x382bef20);
dag->setRoot(node0x382bef20);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__regs__regs__regs__SHIFT_MASK_CLONE_:
    {
SDValue node0x382d6680 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x37dd3140 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381972e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x382d6a00 = dag->getNode(ISD::AND, dl, MVT::i32, node0x381972e0, node0x382d6680);
SDValue node0x381fad50 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x37dd3140, node0x382d6a00);
SDValue node0x382bf900 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381fad50, SDValue());
roots.reserve(1);
roots.push_back(node0x382bf900);
dag->setRoot(node0x382bf900);
    }
    break;
  case Codasip::i_load__opc_loadb__reg0__simm12_simple__regs__immspec_1_:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__reg0__AEXT_CLONE_:
    {
SDValue node0x38146150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3815a8d0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x38146150, mpi, MVT::i8, 1);
SDValue node0x38377430 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3815a8d0, SDValue());
roots.reserve(1);
roots.push_back(node0x38377430);
dag->setRoot(node0x38377430);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x3815bd30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3815b810 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3815be00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3815bd30, node0x3815b810);
SDValue node0x3827e320 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x3815be00, mpi, MVT::i8, 1);
SDValue node0x380c36d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3827e320, SDValue());
roots.reserve(1);
roots.push_back(node0x380c36d0);
dag->setRoot(node0x380c36d0);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x382747a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3826d500 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x382747a0, mpi, MVT::i8, 1);
SDValue node0x382704a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3826d500, SDValue());
roots.reserve(1);
roots.push_back(node0x382704a0);
dag->setRoot(node0x382704a0);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x38274850 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3826ca40 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x38274850, mpi, MVT::i8, 1);
SDValue node0x38264dd0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3826ca40, SDValue());
roots.reserve(1);
roots.push_back(node0x38264dd0);
dag->setRoot(node0x38264dd0);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__AEXT_CLONE_:
    {
SDValue node0x38160b60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3816c440 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x38160b60, mpi, MVT::i8, 1);
SDValue node0x380a7af0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3816c440, SDValue());
roots.reserve(1);
roots.push_back(node0x380a7af0);
dag->setRoot(node0x380a7af0);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x3816d8a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3816d380 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3816d970 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3816d8a0, node0x3816d380);
SDValue node0x3828f0c0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x3816d970, mpi, MVT::i8, 1);
SDValue node0x382d2610 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3828f0c0, SDValue());
roots.reserve(1);
roots.push_back(node0x382d2610);
dag->setRoot(node0x382d2610);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x38275110 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3826bf10 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x38275110, mpi, MVT::i8, 1);
SDValue node0x38270fa0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3826bf10, SDValue());
roots.reserve(1);
roots.push_back(node0x38270fa0);
dag->setRoot(node0x38270fa0);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x382751c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3826b490 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x382751c0, mpi, MVT::i8, 1);
SDValue node0x38265800 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3826b490, SDValue());
roots.reserve(1);
roots.push_back(node0x38265800);
dag->setRoot(node0x38265800);
    }
    break;
  case Codasip::i_load__opc_loadh__reg0__simm12_simple__regs__immspec_1_:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__reg0__AEXT_CLONE_:
    {
SDValue node0x381726f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3817dfd0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x381726f0, mpi, MVT::i16, 1);
SDValue node0x38293e10 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3817dfd0, SDValue());
roots.reserve(1);
roots.push_back(node0x38293e10);
dag->setRoot(node0x38293e10);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x3817f430 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3817ef10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3817f500 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3817f430, node0x3817ef10);
SDValue node0x38294920 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x3817f500, mpi, MVT::i16, 1);
SDValue node0x382949b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38294920, SDValue());
roots.reserve(1);
roots.push_back(node0x382949b0);
dag->setRoot(node0x382949b0);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x382763e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38275b70 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x382763e0, mpi, MVT::i16, 1);
SDValue node0x38274d50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38275b70, SDValue());
roots.reserve(1);
roots.push_back(node0x38274d50);
dag->setRoot(node0x38274d50);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x38276490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3826b3e0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x38276490, mpi, MVT::i16, 1);
SDValue node0x382bfcd0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3826b3e0, SDValue());
roots.reserve(1);
roots.push_back(node0x382bfcd0);
dag->setRoot(node0x382bfcd0);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__AEXT_CLONE_:
    {
SDValue node0x38184260 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3818fb40 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x38184260, mpi, MVT::i16, 1);
SDValue node0x382955c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3818fb40, SDValue());
roots.reserve(1);
roots.push_back(node0x382955c0);
dag->setRoot(node0x382955c0);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x38190fa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38190a80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x38191070 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x38190fa0, node0x38190a80);
SDValue node0x382960d0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x38191070, mpi, MVT::i16, 1);
SDValue node0x38296160 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382960d0, SDValue());
roots.reserve(1);
roots.push_back(node0x38296160);
dag->setRoot(node0x38296160);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x38276d50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3826a7f0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x38276d50, mpi, MVT::i16, 1);
SDValue node0x38273100 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3826a7f0, SDValue());
roots.reserve(1);
roots.push_back(node0x38273100);
dag->setRoot(node0x38273100);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x38276e00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38196070 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x38276e00, mpi, MVT::i16, 1);
SDValue node0x3826e4c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38196070, SDValue());
roots.reserve(1);
roots.push_back(node0x3826e4c0);
dag->setRoot(node0x3826e4c0);
    }
    break;
  case Codasip::i_load__opc_loadw__reg0__simm12_simple__regs__immspec_1_:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x38278020 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382780d0 = dag->getLoad(MVT::i32, dl, entry, node0x38278020, mpi, 1);
SDValue node0x38276990 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382780d0, SDValue());
roots.reserve(1);
roots.push_back(node0x38276990);
dag->setRoot(node0x38276990);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_:
    {
SDValue node0x38278730 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x38278950 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x382786d0 = dag->getStore(entry, dl, node0x38278730, node0x38278950, mpi, 1);
roots.reserve(1);
roots.push_back(node0x382786d0);
dag->setRoot(node0x382786d0);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x38279140 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x382791f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3826e6c0 = dag->getTruncStore(entry, dl, node0x38279140, node0x382791f0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x3826e6c0);
dag->setRoot(node0x3826e6c0);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_:
    {
SDValue node0x38279890 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x38279ab0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38279830 = dag->getStore(entry, dl, node0x38279890, node0x38279ab0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x38279830);
dag->setRoot(node0x38279830);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x3827a310 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3827a3c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38271160 = dag->getTruncStore(entry, dl, node0x3827a310, node0x3827a3c0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x38271160);
dag->setRoot(node0x38271160);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_simple__regs__immspec_1_:
    {
SDValue node0x3827aa60 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3827abe0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3827aa00 = dag->getStore(entry, dl, node0x3827aa60, node0x3827abe0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x3827aa00);
dag->setRoot(node0x3827aa00);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x3827b440 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3827b4f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3827b280 = dag->getStore(entry, dl, node0x3827b440, node0x3827b4f0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x3827b280);
dag->setRoot(node0x3827b280);
    }
    break;
  case Codasip::i_jal__opc_jal__reg0__rel_addr20__:
    {
SDValue node0x3812d170 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x3812d360 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x3812d170);
roots.reserve(1);
roots.push_back(node0x3812d360);
dag->setRoot(node0x3812d360);
    }
    break;
  case Codasip::i_jal__opc_jal__regs__rel_addr20__:
    {
SDValue node0x3812e120 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x3812c7a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3812e120, SDValue());
SDValue node0x3812e530 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x3812e720 = dag->getNode(ISD::BR, dl, MVT::Other, node0x3812c7a0, node0x3812e530);
roots.reserve(2);
roots.push_back(node0x3812c7a0);
roots.push_back(node0x3812e720);
dag->setRoot(node0x3812e720);
    }
    break;
  case Codasip::i_ebreak__opc_ebreak__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_ecall__opc_ecall__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__:
    {
SDValue node0x3835e270 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3835e1d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3835e270, SDValue());
roots.reserve(1);
roots.push_back(node0x3835e1d0);
dag->setRoot(node0x3835e1d0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__:
    {
SDValue node0x38362b00 = dag->getConstant(8LL, dl, MVT::i32);
SDValue node0x38362d20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38362dd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3835c010 = dag->getNode(ISD::MUL, dl, MVT::i32, node0x38362d20, node0x38362dd0);
SDValue node0x38362ea0 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x3835c010, node0x38362b00);
SDValue node0x38362940 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38362ea0, SDValue());
roots.reserve(1);
roots.push_back(node0x38362940);
dag->setRoot(node0x38362940);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_hint_fence__opc_hint_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_hint_fence__opc_i_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_hint_fence__opc_io_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_hint_fence__opc_ior_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_hint_fence__opc_iorw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_hint_fence__opc_iow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_hint_fence__opc_ir_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_hint_fence__opc_irw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_hint_fence__opc_iw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_hint_fence__opc_o_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_hint_fence__opc_or_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_hint_fence__opc_orw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_hint_fence__opc_ow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_hint_fence__opc_r_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_hint_fence__opc_rw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_hint_fence__opc_w_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_i_fence__opc_hint_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_i_fence__opc_i_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_i_fence__opc_io_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_i_fence__opc_ior_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_i_fence__opc_iorw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_i_fence__opc_iow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_i_fence__opc_ir_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_i_fence__opc_irw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_i_fence__opc_iw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_i_fence__opc_o_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_i_fence__opc_or_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_i_fence__opc_orw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_i_fence__opc_ow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_i_fence__opc_r_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_i_fence__opc_rw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_i_fence__opc_w_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_io_fence__opc_hint_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_io_fence__opc_i_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_io_fence__opc_io_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_io_fence__opc_ior_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_io_fence__opc_iorw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_io_fence__opc_iow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_io_fence__opc_ir_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_io_fence__opc_irw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_io_fence__opc_iw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_io_fence__opc_o_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_io_fence__opc_or_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_io_fence__opc_orw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_io_fence__opc_ow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_io_fence__opc_r_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_io_fence__opc_rw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_io_fence__opc_w_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ior_fence__opc_hint_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ior_fence__opc_i_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ior_fence__opc_io_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ior_fence__opc_ior_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ior_fence__opc_iorw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ior_fence__opc_iow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ior_fence__opc_ir_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ior_fence__opc_irw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ior_fence__opc_iw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ior_fence__opc_o_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ior_fence__opc_or_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ior_fence__opc_orw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ior_fence__opc_ow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ior_fence__opc_r_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ior_fence__opc_rw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ior_fence__opc_w_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_hint_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_i_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_io_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_ior_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_iorw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_iow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_ir_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_irw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_iw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_o_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_or_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_orw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_ow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_r_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_rw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_w_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iow_fence__opc_hint_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iow_fence__opc_i_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iow_fence__opc_io_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iow_fence__opc_ior_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iow_fence__opc_iorw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iow_fence__opc_iow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iow_fence__opc_ir_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iow_fence__opc_irw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iow_fence__opc_iw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iow_fence__opc_o_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iow_fence__opc_or_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iow_fence__opc_orw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iow_fence__opc_ow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iow_fence__opc_r_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iow_fence__opc_rw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iow_fence__opc_w_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ir_fence__opc_hint_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ir_fence__opc_i_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ir_fence__opc_io_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ir_fence__opc_ior_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ir_fence__opc_iorw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ir_fence__opc_iow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ir_fence__opc_ir_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ir_fence__opc_irw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ir_fence__opc_iw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ir_fence__opc_o_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ir_fence__opc_or_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ir_fence__opc_orw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ir_fence__opc_ow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ir_fence__opc_r_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ir_fence__opc_rw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ir_fence__opc_w_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_irw_fence__opc_hint_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_irw_fence__opc_i_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_irw_fence__opc_io_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_irw_fence__opc_ior_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_irw_fence__opc_iorw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_irw_fence__opc_iow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_irw_fence__opc_ir_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_irw_fence__opc_irw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_irw_fence__opc_iw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_irw_fence__opc_o_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_irw_fence__opc_or_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_irw_fence__opc_orw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_irw_fence__opc_ow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_irw_fence__opc_r_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_irw_fence__opc_rw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_irw_fence__opc_w_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iw_fence__opc_hint_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iw_fence__opc_i_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iw_fence__opc_io_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iw_fence__opc_ior_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iw_fence__opc_iorw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iw_fence__opc_iow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iw_fence__opc_ir_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iw_fence__opc_irw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iw_fence__opc_iw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iw_fence__opc_o_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iw_fence__opc_or_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iw_fence__opc_orw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iw_fence__opc_ow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iw_fence__opc_r_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iw_fence__opc_rw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_iw_fence__opc_w_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_o_fence__opc_hint_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_o_fence__opc_i_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_o_fence__opc_io_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_o_fence__opc_ior_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_o_fence__opc_iorw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_o_fence__opc_iow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_o_fence__opc_ir_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_o_fence__opc_irw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_o_fence__opc_iw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_o_fence__opc_o_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_o_fence__opc_or_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_o_fence__opc_orw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_o_fence__opc_ow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_o_fence__opc_r_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_o_fence__opc_rw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_o_fence__opc_w_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_or_fence__opc_hint_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_or_fence__opc_i_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_or_fence__opc_io_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_or_fence__opc_ior_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_or_fence__opc_iorw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_or_fence__opc_iow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_or_fence__opc_ir_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_or_fence__opc_irw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_or_fence__opc_iw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_or_fence__opc_o_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_or_fence__opc_or_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_or_fence__opc_orw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_or_fence__opc_ow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_or_fence__opc_r_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_or_fence__opc_rw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_or_fence__opc_w_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_orw_fence__opc_hint_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_orw_fence__opc_i_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_orw_fence__opc_io_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_orw_fence__opc_ior_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_orw_fence__opc_iorw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_orw_fence__opc_iow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_orw_fence__opc_ir_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_orw_fence__opc_irw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_orw_fence__opc_iw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_orw_fence__opc_o_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_orw_fence__opc_or_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_orw_fence__opc_orw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_orw_fence__opc_ow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_orw_fence__opc_r_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_orw_fence__opc_rw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_orw_fence__opc_w_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ow_fence__opc_hint_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ow_fence__opc_i_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ow_fence__opc_io_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ow_fence__opc_ior_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ow_fence__opc_iorw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ow_fence__opc_iow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ow_fence__opc_ir_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ow_fence__opc_irw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ow_fence__opc_iw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ow_fence__opc_o_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ow_fence__opc_or_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ow_fence__opc_orw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ow_fence__opc_ow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ow_fence__opc_r_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ow_fence__opc_rw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_ow_fence__opc_w_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_r_fence__opc_hint_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_r_fence__opc_i_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_r_fence__opc_io_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_r_fence__opc_ior_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_r_fence__opc_iorw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_r_fence__opc_iow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_r_fence__opc_ir_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_r_fence__opc_irw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_r_fence__opc_iw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_r_fence__opc_o_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_r_fence__opc_or_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_r_fence__opc_orw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_r_fence__opc_ow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_r_fence__opc_r_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_r_fence__opc_rw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_r_fence__opc_w_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_rw_fence__opc_hint_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_rw_fence__opc_i_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_rw_fence__opc_io_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_rw_fence__opc_ior_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_rw_fence__opc_iorw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_rw_fence__opc_iow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_rw_fence__opc_ir_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_rw_fence__opc_irw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_rw_fence__opc_iw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_rw_fence__opc_o_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_rw_fence__opc_or_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_rw_fence__opc_orw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_rw_fence__opc_ow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_rw_fence__opc_r_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_rw_fence__opc_rw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_rw_fence__opc_w_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_w_fence__opc_hint_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_w_fence__opc_i_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_w_fence__opc_io_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_w_fence__opc_ior_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_w_fence__opc_iorw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_w_fence__opc_iow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_w_fence__opc_ir_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_w_fence__opc_irw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_w_fence__opc_iw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_w_fence__opc_o_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_w_fence__opc_or_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_w_fence__opc_orw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_w_fence__opc_ow_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_w_fence__opc_r_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_w_fence__opc_rw_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fence__opc_fence__opc_w_fence__opc_w_fence__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_fencei__opc_fencei__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_nop_alias__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__reg0__simm12_simple__:
    {
SDValue node0x381e9aa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381e8b40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381e9aa0, SDValue());
roots.reserve(1);
roots.push_back(node0x381e8b40);
dag->setRoot(node0x381e8b40);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_simple__:
    {
SDValue node0x381ec060 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381ec110 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x381ec1b0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x381ec060, node0x381ec110);
SDValue node0x381eae20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381ec1b0, SDValue());
roots.reserve(1);
roots.push_back(node0x381eae20);
dag->setRoot(node0x381eae20);
    }
    break;
  case Codasip::i_xret__opc_mret__:
    {
dag->setRoot(entry);
    }
    break;
  case Codasip::e_movi32__:
case Codasip::e_movi32__GA:
case Codasip::e_movi32__ES:
case Codasip::e_movi32__MC:
case Codasip::e_movi32__BA:
case Codasip::e_movi32__JT:
case Codasip::e_movi32__CP:
    {
SDValue node0x382618d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382615e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x382618d0, SDValue());
roots.reserve(1);
roots.push_back(node0x382615e0);
dag->setRoot(node0x382615e0);
    }
    break;
  case Codasip::i_jump_reg_alias__regs__TAILCALL_CLONE_:
    {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_:
case Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ES:
case Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_MC:
case Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_BA:
    {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_:
case Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES:
case Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC:
case Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA:
    {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_:
case Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES:
case Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC:
case Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA:
    {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_:
case Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES:
case Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC:
case Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA:
    {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_:
case Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES:
case Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC:
case Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA:
    {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_:
case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ES:
case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_MC:
case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_BA:
    {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_:
case Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES:
case Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC:
case Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA:
    {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_:
    {
SDValue node0x37e29a20 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x37e29aa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x37e2a5a0 = dag->getTruncStore(entry, dl, node0x37e29a20, node0x37e29aa0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x37e2a5a0);
dag->setRoot(node0x37e2a5a0);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__i32_TRUNC_CLONE_:
    {
SDValue node0x37e29920 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x37e29800 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x37e299a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x37e25d80 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x37e29800, node0x37e299a0);
SDValue node0x37e2af20 = dag->getTruncStore(entry, dl, node0x37e29920, node0x37e25d80, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x37e2af20);
dag->setRoot(node0x37e2af20);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_:
    {
SDValue node0x37e29b20 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x37e2b540 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x37e2b830 = dag->getTruncStore(entry, dl, node0x37e29b20, node0x37e2b540, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x37e2b830);
dag->setRoot(node0x37e2b830);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__i32_TRUNC_CLONE_:
    {
SDValue node0x37e2be50 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x37e25980 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x37e2bed0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x37e250c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x37e25980, node0x37e2bed0);
SDValue node0x37e2c2b0 = dag->getTruncStore(entry, dl, node0x37e2be50, node0x37e250c0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x37e2c2b0);
dag->setRoot(node0x37e2c2b0);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_:
    {
SDValue node0x37e2c640 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x37e29770 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x37e2c830 = dag->getTruncStore(entry, dl, node0x37e2c640, node0x37e29770, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x37e2c830);
dag->setRoot(node0x37e2c830);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_:
    {
SDValue node0x37e2cc20 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x37e29890 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x37e2ce00 = dag->getTruncStore(entry, dl, node0x37e2cc20, node0x37e29890, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x37e2ce00);
dag->setRoot(node0x37e2ce00);
    }
    break;
  case Codasip::i_jump_reg_alias__regs___RET_EMUL_:
    {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__0_REG_EMUL_:
    {
SDValue node0x37e2d210 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x37e2e710 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x37e2e930 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x37e337e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x37e2e710, node0x37e2e930);
SDValue node0x37e29600 = dag->getStore(entry, dl, node0x37e2d210, node0x37e337e0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x37e29600);
dag->setRoot(node0x37e29600);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__1_BIGIMM_EMUL_:
    {
SDValue node0x37e2d7f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x37e2e4c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x37e32670 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x37e32d00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x37e2e4c0, node0x37e32670);
SDValue node0x37e2f260 = dag->getStore(entry, dl, node0x37e2d7f0, node0x37e32d00, mpi, 1);
roots.reserve(1);
roots.push_back(node0x37e2f260);
dag->setRoot(node0x37e2f260);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__2_REG_EMUL_:
    {
SDValue node0x37e2d020 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x37e33560 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x37e33e10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x37e2d020, node0x37e33560);
SDValue node0x37e317c0 = dag->getLoad(MVT::i32, dl, entry, node0x37e33e10, mpi, 1);
SDValue node0x37e34650 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x37e317c0, SDValue());
roots.reserve(1);
roots.push_back(node0x37e34650);
dag->setRoot(node0x37e34650);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__3_BIGIMM_EMUL_:
    {
SDValue node0x37e32770 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x37e35a50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x37e32600 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x37e32770, node0x37e35a50);
SDValue node0x37e33d80 = dag->getLoad(MVT::i32, dl, entry, node0x37e32600, mpi, 1);
SDValue node0x37e35b00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x37e33d80, SDValue());
roots.reserve(1);
roots.push_back(node0x37e35b00);
dag->setRoot(node0x37e35b00);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__4_BIGIMM_EMUL_:
    {
SDValue node0x37e32400 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x37e313b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x37e36290 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x37e32c90 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x37e313b0, node0x37e36290);
SDValue node0x37e2d360 = dag->getStore(entry, dl, node0x37e32400, node0x37e32c90, mpi, 1);
roots.reserve(1);
roots.push_back(node0x37e2d360);
dag->setRoot(node0x37e2d360);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__5_BIGIMM_EMUL_:
    {
SDValue node0x37e33a10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x37e36e10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x37e33d10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x37e33a10, node0x37e36e10);
SDValue node0x37e2dbf0 = dag->getLoad(MVT::i32, dl, entry, node0x37e33d10, mpi, 1);
SDValue node0x37e36e90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x37e2dbf0, SDValue());
roots.reserve(1);
roots.push_back(node0x37e36e90);
dag->setRoot(node0x37e36e90);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__6_BIGIMM_EMUL_:
    {
SDValue node0x37e335f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x37e37930 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x37e32c20 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x37e335f0, node0x37e37930);
SDValue node0x37e379b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x37e32c20, SDValue());
roots.reserve(1);
roots.push_back(node0x37e379b0);
dag->setRoot(node0x37e379b0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__7_BIGIMM_EMUL_:
    {
SDValue node0x37e31f50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x37e384f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x37e32490 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x37e31f50, node0x37e384f0);
SDValue node0x37e38570 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x37e32490, SDValue());
roots.reserve(1);
roots.push_back(node0x37e38570);
dag->setRoot(node0x37e38570);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__8_BIGIMM_EMUL_:
    {
SDValue node0x37e37f20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x37e390a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x37e31500 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x37e37f20, node0x37e390a0);
SDValue node0x37e39120 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x37e31500, SDValue());
roots.reserve(1);
roots.push_back(node0x37e39120);
dag->setRoot(node0x37e39120);
    }
    break;
  case Codasip::c_addi_lo__opc_addi__regs__regs__:
    {
SDValue node0x37e08050 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x383d6cc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x37dd2a10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x37e08050, node0x383d6cc0);
SDValue node0x37dd29c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x37dd2a10, SDValue());
roots.reserve(1);
roots.push_back(node0x37dd29c0);
dag->setRoot(node0x37dd29c0);
    }
    break;
  case Codasip::c_lui_hi__opc_lui__regs__:
    {
SDValue node0x37dd30c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x37dd2c20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x37dd30c0, SDValue());
roots.reserve(1);
roots.push_back(node0x37dd2c20);
dag->setRoot(node0x37dd2c20);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_lo__:
    {
SDValue node0x37de0a30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x37de0710 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x37de0a30, SDValue());
roots.reserve(1);
roots.push_back(node0x37de0710);
dag->setRoot(node0x37de0710);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x37de16b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x37de0b60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x37de16b0, SDValue());
roots.reserve(1);
roots.push_back(node0x37de0b60);
dag->setRoot(node0x37de0b60);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_lo__:
    {
SDValue node0x37ddae40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3801b710 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3801b7b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x37ddae40, node0x3801b710);
SDValue node0x3801b330 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3801b7b0, SDValue());
roots.reserve(1);
roots.push_back(node0x3801b330);
dag->setRoot(node0x3801b330);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x380a46c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3801c630 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3801c6d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x380a46c0, node0x3801c630);
SDValue node0x3801b9c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3801c6d0, SDValue());
roots.reserve(1);
roots.push_back(node0x3801b9c0);
dag->setRoot(node0x3801b9c0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_lo__:
    {
SDValue node0x37fee2c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3837a710 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3837a7b0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x37fee2c0, node0x3837a710);
SDValue node0x3837a330 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3837a7b0, SDValue());
roots.reserve(1);
roots.push_back(node0x3837a330);
dag->setRoot(node0x3837a330);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x383d6590 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x37e0afc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3837b4b0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x383d6590, node0x37e0afc0);
SDValue node0x3837a9c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3837b4b0, SDValue());
roots.reserve(1);
roots.push_back(node0x3837a9c0);
dag->setRoot(node0x3837a9c0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_lo__:
    {
SDValue node0x383e59b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x383e5690 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x383e59b0, SDValue());
roots.reserve(1);
roots.push_back(node0x383e5690);
dag->setRoot(node0x383e5690);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x383e6630 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x383e5ae0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x383e6630, SDValue());
roots.reserve(1);
roots.push_back(node0x383e5ae0);
dag->setRoot(node0x383e5ae0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_lo__:
    {
SDValue node0x383e9360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x383e9690 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x383e9730 = dag->getNode(ISD::OR, dl, MVT::i32, node0x383e9360, node0x383e9690);
SDValue node0x383e9220 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x383e9730, SDValue());
roots.reserve(1);
roots.push_back(node0x383e9220);
dag->setRoot(node0x383e9220);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x383ea310 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x383ea640 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x383ea6e0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x383ea310, node0x383ea640);
SDValue node0x383e9940 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x383ea6e0, SDValue());
roots.reserve(1);
roots.push_back(node0x383e9940);
dag->setRoot(node0x383e9940);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_lo__:
    {
SDValue node0x383f4c70 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x383f4d50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x383f4df0 = dag->getSetCC(dl, MVT::i32, node0x383f4d50, node0x383f4c70, ISD::SETGT);
SDValue node0x383f4a30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x383f4df0, SDValue());
roots.reserve(1);
roots.push_back(node0x383f4a30);
dag->setRoot(node0x383f4a30);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x383f5b60 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x383f5c40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x383f5ce0 = dag->getSetCC(dl, MVT::i32, node0x383f5c40, node0x383f5b60, ISD::SETGT);
SDValue node0x383f50c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x383f5ce0, SDValue());
roots.reserve(1);
roots.push_back(node0x383f50c0);
dag->setRoot(node0x383f50c0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_lo__:
    {
SDValue node0x383f8cc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x383f8ff0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x383f9090 = dag->getSetCC(dl, MVT::i32, node0x383f8cc0, node0x383f8ff0, ISD::SETLT);
SDValue node0x383f8b80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x383f9090, SDValue());
roots.reserve(1);
roots.push_back(node0x383f8b80);
dag->setRoot(node0x383f8b80);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x383f9d80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x383fa0b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x383fa150 = dag->getSetCC(dl, MVT::i32, node0x383f9d80, node0x383fa0b0, ISD::SETLT);
SDValue node0x383f93b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x383fa150, SDValue());
roots.reserve(1);
roots.push_back(node0x383f93b0);
dag->setRoot(node0x383f93b0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_lo__:
    {
SDValue node0x3802a4e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3802a5c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3802a660 = dag->getSetCC(dl, MVT::i32, node0x3802a5c0, node0x3802a4e0, ISD::SETNE);
SDValue node0x3802a2a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3802a660, SDValue());
roots.reserve(1);
roots.push_back(node0x3802a2a0);
dag->setRoot(node0x3802a2a0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x3802b3d0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3802b4b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3802b550 = dag->getSetCC(dl, MVT::i32, node0x3802b4b0, node0x3802b3d0, ISD::SETNE);
SDValue node0x3802a930 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3802b550, SDValue());
roots.reserve(1);
roots.push_back(node0x3802a930);
dag->setRoot(node0x3802a930);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_lo__:
    {
SDValue node0x3802e530 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3802e860 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3802e900 = dag->getSetCC(dl, MVT::i32, node0x3802e530, node0x3802e860, ISD::SETULT);
SDValue node0x3802e3f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3802e900, SDValue());
roots.reserve(1);
roots.push_back(node0x3802e3f0);
dag->setRoot(node0x3802e3f0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x3802f5f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3802f920 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3802f9c0 = dag->getSetCC(dl, MVT::i32, node0x3802f5f0, node0x3802f920, ISD::SETULT);
SDValue node0x3802ec20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3802f9c0, SDValue());
roots.reserve(1);
roots.push_back(node0x3802ec20);
dag->setRoot(node0x3802ec20);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_lo__:
    {
SDValue node0x3803a200 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38039ee0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3803a200, SDValue());
roots.reserve(1);
roots.push_back(node0x38039ee0);
dag->setRoot(node0x38039ee0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x3803ae80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3803a330 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3803ae80, SDValue());
roots.reserve(1);
roots.push_back(node0x3803a330);
dag->setRoot(node0x3803a330);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_lo__:
    {
SDValue node0x3803dcf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3803e020 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3803e0c0 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x3803dcf0, node0x3803e020);
SDValue node0x3803dbb0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3803e0c0, SDValue());
roots.reserve(1);
roots.push_back(node0x3803dbb0);
dag->setRoot(node0x3803dbb0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x3803eca0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3803efd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3803f070 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x3803eca0, node0x3803efd0);
SDValue node0x3803e2d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3803f070, SDValue());
roots.reserve(1);
roots.push_back(node0x3803e2d0);
dag->setRoot(node0x3803e2d0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_lo__:
    {
SDValue node0x38130640 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x38130340 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x38130640);
roots.reserve(1);
roots.push_back(node0x38130340);
dag->setRoot(node0x38130340);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_pcrel_lo__:
    {
SDValue node0x381310c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x38130df0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x381310c0);
roots.reserve(1);
roots.push_back(node0x38130df0);
dag->setRoot(node0x38130df0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_lo__:
    {
SDValue node0x3813a7d0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x38138f20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3813a7d0, SDValue());
SDValue node0x3813ab40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x3813a7a0 = dag->getNode(ISD::BR, dl, MVT::Other, node0x38138f20, node0x3813ab40);
roots.reserve(2);
roots.push_back(node0x38138f20);
roots.push_back(node0x3813a7a0);
dag->setRoot(node0x3813a7a0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x3813b4e0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x3813ad20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3813b4e0, SDValue());
SDValue node0x3813b850 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x3813b4b0 = dag->getNode(ISD::BR, dl, MVT::Other, node0x3813ad20, node0x3813b850);
roots.reserve(2);
roots.push_back(node0x3813ad20);
roots.push_back(node0x3813b4b0);
dag->setRoot(node0x3813b4b0);
    }
    break;
  case Codasip::i_load__opc_loadb__reg0__simm12_lo__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadb__reg0__simm12_lo__regs__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadb__reg0__simm12_pcrel_lo__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadb__reg0__simm12_pcrel_lo__regs__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_lo__reg0__:
    {
SDValue node0x38155970 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3813fa60 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x38155970, mpi, MVT::i8, 1);
SDValue node0x38154d60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3813fa60, SDValue());
roots.reserve(1);
roots.push_back(node0x38154d60);
dag->setRoot(node0x38154d60);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_lo__regs__:
    {
SDValue node0x38156d50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38157080 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x38157120 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x38156d50, node0x38157080);
SDValue node0x38155a10 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x38157120, mpi, MVT::i8, 1);
SDValue node0x38155cc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38155a10, SDValue());
roots.reserve(1);
roots.push_back(node0x38155cc0);
dag->setRoot(node0x38155cc0);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x38158130 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381571b0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x38158130, mpi, MVT::i8, 1);
SDValue node0x38157550 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381571b0, SDValue());
roots.reserve(1);
roots.push_back(node0x38157550);
dag->setRoot(node0x38157550);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x38159400 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38159730 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x381597d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x38159400, node0x38159730);
SDValue node0x381581d0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x381597d0, mpi, MVT::i8, 1);
SDValue node0x38157370 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381581d0, SDValue());
roots.reserve(1);
roots.push_back(node0x38157370);
dag->setRoot(node0x38157370);
    }
    break;
  case Codasip::i_load__opc_loadbu__reg0__simm12_lo__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadbu__reg0__simm12_lo__regs__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadbu__reg0__simm12_pcrel_lo__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadbu__reg0__simm12_pcrel_lo__regs__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_lo__reg0__:
    {
SDValue node0x38167410 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38159860 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x38167410, mpi, MVT::i8, 1);
SDValue node0x38166980 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38159860, SDValue());
roots.reserve(1);
roots.push_back(node0x38166980);
dag->setRoot(node0x38166980);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_lo__regs__:
    {
SDValue node0x381688c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38168bf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x38168c90 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x381688c0, node0x38168bf0);
SDValue node0x381674b0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x38168c90, mpi, MVT::i8, 1);
SDValue node0x38167760 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381674b0, SDValue());
roots.reserve(1);
roots.push_back(node0x38167760);
dag->setRoot(node0x38167760);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x38169cf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38168d20 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x38169cf0, mpi, MVT::i8, 1);
SDValue node0x38169070 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38168d20, SDValue());
roots.reserve(1);
roots.push_back(node0x38169070);
dag->setRoot(node0x38169070);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x3816af70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3816b2a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3816b340 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3816af70, node0x3816b2a0);
SDValue node0x38169d90 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x3816b340, mpi, MVT::i8, 1);
SDValue node0x38168f30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38169d90, SDValue());
roots.reserve(1);
roots.push_back(node0x38168f30);
dag->setRoot(node0x38168f30);
    }
    break;
  case Codasip::i_load__opc_loadh__reg0__simm12_lo__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadh__reg0__simm12_lo__regs__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadh__reg0__simm12_pcrel_lo__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadh__reg0__simm12_pcrel_lo__regs__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_lo__reg0__:
    {
SDValue node0x38178fa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3816b3d0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x38178fa0, mpi, MVT::i16, 1);
SDValue node0x38178390 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3816b3d0, SDValue());
roots.reserve(1);
roots.push_back(node0x38178390);
dag->setRoot(node0x38178390);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_lo__regs__:
    {
SDValue node0x3817a450 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3817a780 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3817a820 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3817a450, node0x3817a780);
SDValue node0x38179040 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x3817a820, mpi, MVT::i16, 1);
SDValue node0x381792f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38179040, SDValue());
roots.reserve(1);
roots.push_back(node0x381792f0);
dag->setRoot(node0x381792f0);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x3817b830 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3817a8b0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x3817b830, mpi, MVT::i16, 1);
SDValue node0x3817ac50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3817a8b0, SDValue());
roots.reserve(1);
roots.push_back(node0x3817ac50);
dag->setRoot(node0x3817ac50);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x3817cb00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3817ce30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3817ced0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3817cb00, node0x3817ce30);
SDValue node0x3817b8d0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x3817ced0, mpi, MVT::i16, 1);
SDValue node0x3817aa70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3817b8d0, SDValue());
roots.reserve(1);
roots.push_back(node0x3817aa70);
dag->setRoot(node0x3817aa70);
    }
    break;
  case Codasip::i_load__opc_loadhu__reg0__simm12_lo__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadhu__reg0__simm12_lo__regs__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadhu__reg0__simm12_pcrel_lo__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadhu__reg0__simm12_pcrel_lo__regs__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_lo__reg0__:
    {
SDValue node0x3818ab10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3817cf60 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x3818ab10, mpi, MVT::i16, 1);
SDValue node0x3818a080 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3817cf60, SDValue());
roots.reserve(1);
roots.push_back(node0x3818a080);
dag->setRoot(node0x3818a080);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_lo__regs__:
    {
SDValue node0x3818bfc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3818c2f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3818c390 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3818bfc0, node0x3818c2f0);
SDValue node0x3818abb0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x3818c390, mpi, MVT::i16, 1);
SDValue node0x3818ae60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3818abb0, SDValue());
roots.reserve(1);
roots.push_back(node0x3818ae60);
dag->setRoot(node0x3818ae60);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x3818d3f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3818c420 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x3818d3f0, mpi, MVT::i16, 1);
SDValue node0x3818c770 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3818c420, SDValue());
roots.reserve(1);
roots.push_back(node0x3818c770);
dag->setRoot(node0x3818c770);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x3818e670 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3818e9a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3818ea40 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3818e670, node0x3818e9a0);
SDValue node0x3818d490 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x3818ea40, mpi, MVT::i16, 1);
SDValue node0x3818c630 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3818d490, SDValue());
roots.reserve(1);
roots.push_back(node0x3818c630);
dag->setRoot(node0x3818c630);
    }
    break;
  case Codasip::i_load__opc_loadw__reg0__simm12_lo__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadw__reg0__simm12_lo__regs__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadw__reg0__simm12_pcrel_lo__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadw__reg0__simm12_pcrel_lo__regs__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_lo__reg0__:
    {
SDValue node0x3819c680 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3819c720 = dag->getLoad(MVT::i32, dl, entry, node0x3819c680, mpi, 1);
SDValue node0x3819ba70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3819c720, SDValue());
roots.reserve(1);
roots.push_back(node0x3819ba70);
dag->setRoot(node0x3819ba70);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_lo__regs__:
    {
SDValue node0x3819da80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3819ddb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3819de50 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3819da80, node0x3819ddb0);
SDValue node0x3819dee0 = dag->getLoad(MVT::i32, dl, entry, node0x3819de50, mpi, 1);
SDValue node0x3819c8d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3819dee0, SDValue());
roots.reserve(1);
roots.push_back(node0x3819c8d0);
dag->setRoot(node0x3819c8d0);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x3819ed60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3819ee00 = dag->getLoad(MVT::i32, dl, entry, node0x3819ed60, mpi, 1);
SDValue node0x3819e180 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x3819ee00, SDValue());
roots.reserve(1);
roots.push_back(node0x3819e180);
dag->setRoot(node0x3819e180);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x3819ffd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381a0300 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x381a03a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3819ffd0, node0x381a0300);
SDValue node0x381a0430 = dag->getLoad(MVT::i32, dl, entry, node0x381a03a0, mpi, 1);
SDValue node0x3819e090 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381a0430, SDValue());
roots.reserve(1);
roots.push_back(node0x3819e090);
dag->setRoot(node0x3819e090);
    }
    break;
  case Codasip::i_lui_hi__opc_lui__regs__imm20_hi__:
    {
SDValue node0x381c9a20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381c9aa0 = dag->getConstant(2048LL, dl, MVT::i32);
SDValue node0x381c9b60 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x381c9a20, node0x381c9aa0);
SDValue node0x381c9bd0 = dag->getConstant(-4096LL, dl, MVT::i32);
SDValue node0x381c9c90 = dag->getNode(ISD::AND, dl, MVT::i32, node0x381c9b60, node0x381c9bd0);
SDValue node0x381c9730 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381c9c90, SDValue());
roots.reserve(1);
roots.push_back(node0x381c9730);
dag->setRoot(node0x381c9730);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__reg0__simm12_lo__:
    {
SDValue node0x381e8400 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381e5540 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381e8400, SDValue());
roots.reserve(1);
roots.push_back(node0x381e5540);
dag->setRoot(node0x381e5540);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x381e8fa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381e8530 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381e8fa0, SDValue());
roots.reserve(1);
roots.push_back(node0x381e8530);
dag->setRoot(node0x381e8530);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_lo__:
    {
SDValue node0x381ea2d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381ea600 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x381ea6a0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x381ea2d0, node0x381ea600);
SDValue node0x381e9640 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381ea6a0, SDValue());
roots.reserve(1);
roots.push_back(node0x381e9640);
dag->setRoot(node0x381e9640);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x381eb0d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381eb400 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x381eb4a0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x381eb0d0, node0x381eb400);
SDValue node0x381ea810 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x381eb4a0, SDValue());
roots.reserve(1);
roots.push_back(node0x381ea810);
dag->setRoot(node0x381ea810);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_lo__reg0__:
    {
SDValue node0x381fb710 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x381fb9b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3838bde0 = dag->getStore(entry, dl, node0x381fb710, node0x381fb9b0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x3838bde0);
dag->setRoot(node0x3838bde0);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_lo__regs__:
    {
SDValue node0x381fc830 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x381fc990 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x381fcc20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381fccc0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x381fc990, node0x381fcc20);
SDValue node0x3838e660 = dag->getStore(entry, dl, node0x381fc830, node0x381fccc0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x3838e660);
dag->setRoot(node0x3838e660);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x381fd870 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x381fdb10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x380192d0 = dag->getStore(entry, dl, node0x381fd870, node0x381fdb10, mpi, 1);
roots.reserve(1);
roots.push_back(node0x380192d0);
dag->setRoot(node0x380192d0);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x381fed00 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x381fee60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x381ff0f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x381ff190 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x381fee60, node0x381ff0f0);
SDValue node0x37df62d0 = dag->getStore(entry, dl, node0x381fed00, node0x381ff190, mpi, 1);
roots.reserve(1);
roots.push_back(node0x37df62d0);
dag->setRoot(node0x37df62d0);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_lo__reg0__:
    {
SDValue node0x38206c60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38206fa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382b88f0 = dag->getTruncStore(entry, dl, node0x38206c60, node0x38206fa0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x382b88f0);
dag->setRoot(node0x382b88f0);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_lo__regs__:
    {
SDValue node0x382082f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x382084f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38208780 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x38208820 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x382084f0, node0x38208780);
SDValue node0x382b8ad0 = dag->getTruncStore(entry, dl, node0x382082f0, node0x38208820, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x382b8ad0);
dag->setRoot(node0x382b8ad0);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x38209570 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x382098b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382b8cd0 = dag->getTruncStore(entry, dl, node0x38209570, node0x382098b0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x382b8cd0);
dag->setRoot(node0x382b8cd0);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x3820ab80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3820ad80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3820b010 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3820b0b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3820ad80, node0x3820b010);
SDValue node0x382b8eb0 = dag->getTruncStore(entry, dl, node0x3820ab80, node0x3820b0b0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x382b8eb0);
dag->setRoot(node0x382b8eb0);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_lo__reg0__:
    {
SDValue node0x3820e190 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x3820e430 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3820e4d0 = dag->getStore(entry, dl, node0x3820e190, node0x3820e430, mpi, 1);
roots.reserve(1);
roots.push_back(node0x3820e4d0);
dag->setRoot(node0x3820e4d0);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_lo__regs__:
    {
SDValue node0x3820f490 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x3820f5f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3820f880 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3820f920 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3820f5f0, node0x3820f880);
SDValue node0x3820f9b0 = dag->getStore(entry, dl, node0x3820f490, node0x3820f920, mpi, 1);
roots.reserve(1);
roots.push_back(node0x3820f9b0);
dag->setRoot(node0x3820f9b0);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x38210530 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x382107d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38210870 = dag->getStore(entry, dl, node0x38210530, node0x382107d0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x38210870);
dag->setRoot(node0x38210870);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x38211a20 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x38211b80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38211e10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38211eb0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x38211b80, node0x38211e10);
SDValue node0x38211f40 = dag->getStore(entry, dl, node0x38211a20, node0x38211eb0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x38211f40);
dag->setRoot(node0x38211f40);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_lo__reg0__:
    {
SDValue node0x38219c30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38219f70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382b9b90 = dag->getTruncStore(entry, dl, node0x38219c30, node0x38219f70, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x382b9b90);
dag->setRoot(node0x382b9b90);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_lo__regs__:
    {
SDValue node0x3821b2c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3821b4c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3821b750 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3821b7f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3821b4c0, node0x3821b750);
SDValue node0x382b9d70 = dag->getTruncStore(entry, dl, node0x3821b2c0, node0x3821b7f0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x382b9d70);
dag->setRoot(node0x382b9d70);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x3821c540 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3821c880 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382b9f70 = dag->getTruncStore(entry, dl, node0x3821c540, node0x3821c880, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x382b9f70);
dag->setRoot(node0x382b9f70);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x3821db50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3821dd50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3821dfe0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3821e080 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3821dd50, node0x3821dfe0);
SDValue node0x382ba150 = dag->getTruncStore(entry, dl, node0x3821db50, node0x3821e080, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x382ba150);
dag->setRoot(node0x382ba150);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_lo__reg0__:
    {
SDValue node0x38221160 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x38221360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38221400 = dag->getStore(entry, dl, node0x38221160, node0x38221360, mpi, 1);
roots.reserve(1);
roots.push_back(node0x38221400);
dag->setRoot(node0x38221400);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_lo__regs__:
    {
SDValue node0x382223c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x38222520 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38222710 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x382227b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x38222520, node0x38222710);
SDValue node0x38222840 = dag->getStore(entry, dl, node0x382223c0, node0x382227b0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x38222840);
dag->setRoot(node0x38222840);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x382233c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x382235c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38223660 = dag->getStore(entry, dl, node0x382233c0, node0x382235c0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x38223660);
dag->setRoot(node0x38223660);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x38224810 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x38224970 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38224b60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38224c00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x38224970, node0x38224b60);
SDValue node0x38224c90 = dag->getStore(entry, dl, node0x38224810, node0x38224c00, mpi, 1);
roots.reserve(1);
roots.push_back(node0x38224c90);
dag->setRoot(node0x38224c90);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_lo__reg0__:
    {
SDValue node0x3822c840 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3822cad0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3822a300 = dag->getStore(entry, dl, node0x3822c840, node0x3822cad0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x3822a300);
dag->setRoot(node0x3822a300);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_lo__regs__:
    {
SDValue node0x3822de20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3822df70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3822e200 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x3822e2a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3822df70, node0x3822e200);
SDValue node0x3822e330 = dag->getStore(entry, dl, node0x3822de20, node0x3822e2a0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x3822e330);
dag->setRoot(node0x3822e330);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x3822efa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x3822f230 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x3822f2d0 = dag->getStore(entry, dl, node0x3822efa0, node0x3822f230, mpi, 1);
roots.reserve(1);
roots.push_back(node0x3822f2d0);
dag->setRoot(node0x3822f2d0);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x38230550 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x382306a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38230930 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x382309d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x382306a0, node0x38230930);
SDValue node0x38230a60 = dag->getStore(entry, dl, node0x38230550, node0x382309d0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x38230a60);
dag->setRoot(node0x38230a60);
    }
    break;
  case Codasip::i_unimp__opc_unimp__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_wfi__opc_wfi__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::load_imm32__regs__regs__regs__:
    {
SDValue node0x38261410 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38261140 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38261410, SDValue());
roots.reserve(1);
roots.push_back(node0x38261140);
dag->setRoot(node0x38261140);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__regs__simm12_simple__:
    {
SDValue node0x38135bb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x38135e50 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x38135bb0);
roots.reserve(1);
roots.push_back(node0x38135e50);
dag->setRoot(node0x38135e50);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__regs__simm12_simple__:
    {
SDValue node0x38140870 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x3813ee80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x38140870, SDValue());
SDValue node0x38140d20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x38140fc0 = dag->getNode(ISD::BRIND, dl, MVT::Other, node0x3813ee80, node0x38140d20);
roots.reserve(2);
roots.push_back(node0x3813ee80);
roots.push_back(node0x38140fc0);
dag->setRoot(node0x38140fc0);
    }
    break;
  
  default:
    roots.reserve(1);
    roots.push_back(entry);
    dag->setRoot(entry);
  }
  dag->RemoveDeadNodes();
  return dag;
}

// turn optimizations back on
#ifdef _WIN32
#pragma optimize("", on)
#endif
