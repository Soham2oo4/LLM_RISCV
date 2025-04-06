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
 * \date    2025-04-06
 * \author  Codasip (c) C compiler backend generator
 * \version 9.4.2
 * \brief   Source for compiler backend
 * \project codasip_urisc_v.ia
 * \note          Codasip Studio version: 9.4.2
 *                Project: codasip_urisc_v.ia
 *                Date: 2025-04-06 06:40:46
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
SDValue node0x1680e980 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x16202ce0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1680e790 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x16202ce0);
SDValue node0x1642b6a0 = dag->getCopyToReg(node0x1680e790, dl, dag->getRegister(Codasip::rf_gpr_1, MVT::i32), node0x1680e980, SDValue());
roots.reserve(2);
roots.push_back(node0x1642b6a0);
roots.push_back(node0x1680e790);
dag->setRoot(node0x1642b6a0);
    } else     {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_jump_reg_alias__regs__:
    {
SDValue node0x1657cd80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1657cb50 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x1657cd80);
roots.reserve(1);
roots.push_back(node0x1657cb50);
dag->setRoot(node0x1657cb50);
    }
    break;
  case Codasip::i_jmp_rel_alias__rel_addr20__:
    {
SDValue node0x1657b520 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x1657b7a0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x1657b520);
roots.reserve(1);
roots.push_back(node0x1657b7a0);
dag->setRoot(node0x1657b7a0);
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
SDValue node0x16794250 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x16561410 = dag->getConstant(-4LL, dl, MVT::i32);
SDValue node0x16561630 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x16794250, node0x16561410);
SDValue node0x165613c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16561630, SDValue());
roots.reserve(1);
roots.push_back(node0x165613c0);
dag->setRoot(node0x165613c0);
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
SDValue node0x165fabc0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x165fab70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165fabc0, SDValue());
roots.reserve(1);
roots.push_back(node0x165fab70);
dag->setRoot(node0x165fab70);
    }
    break;
  case Codasip::i_mv_alias__regs__regs__:
    {
SDValue node0x165fbc50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165fba00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165fbc50, SDValue());
roots.reserve(1);
roots.push_back(node0x165fba00);
dag->setRoot(node0x165fba00);
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
SDValue node0x16619b20 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x16619ad0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16619b20, SDValue());
roots.reserve(1);
roots.push_back(node0x16619ad0);
dag->setRoot(node0x16619ad0);
    }
    break;
  case Codasip::i_seqz_alias__regs__regs__:
    {
SDValue node0x1661aad0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1661ac50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1661ad00 = dag->getSetCC(dl, MVT::i32, node0x1661ac50, node0x1661aad0, ISD::SETEQ);
SDValue node0x1661aa00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1661ad00, SDValue());
roots.reserve(1);
roots.push_back(node0x1661aa00);
dag->setRoot(node0x1661aa00);
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
SDValue node0x166246d0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16624680 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x166246d0, SDValue());
roots.reserve(1);
roots.push_back(node0x16624680);
dag->setRoot(node0x16624680);
    }
    break;
  case Codasip::i_snez_alias__regs__regs__:
    {
SDValue node0x166255e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16625760 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16625810 = dag->getSetCC(dl, MVT::i32, node0x16625760, node0x166255e0, ISD::SETNE);
SDValue node0x16625510 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16625810, SDValue());
roots.reserve(1);
roots.push_back(node0x16625510);
dag->setRoot(node0x16625510);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__regs__simm12_simple__immspec_1_:
    {
SDValue node0x1669da20 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1669c160 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1669da20, SDValue());
SDValue node0x1669dd90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1669ded0 = dag->getNode(ISD::BRIND, dl, MVT::Other, node0x1669c160, node0x1669dd90);
roots.reserve(2);
roots.push_back(node0x1669c160);
roots.push_back(node0x1669ded0);
dag->setRoot(node0x1669ded0);
    }
    break;
  case Codasip::i_call_rel_alias__rel_addr20__:
case Codasip::i_call_rel_alias__rel_addr20__ES:
case Codasip::i_call_rel_alias__rel_addr20__MC:
case Codasip::i_call_rel_alias__rel_addr20__BA:
    if (lowlevel) {
SDValue node0x1680f760 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1680f970 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x1680fbf0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x1680f970);
SDValue node0x1680ee10 = dag->getCopyToReg(node0x1680fbf0, dl, dag->getRegister(Codasip::rf_gpr_1, MVT::i32), node0x1680f760, SDValue());
roots.reserve(2);
roots.push_back(node0x1680ee10);
roots.push_back(node0x1680fbf0);
dag->setRoot(node0x1680ee10);
    } else     {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__:
    {
SDValue node0x16564330 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x16564030 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x16564330);
roots.reserve(1);
roots.push_back(node0x16564030);
dag->setRoot(node0x16564030);
    }
    break;
  case Codasip::i_jal_abs__opc_jal__regs__rel_addr20__:
    {
SDValue node0x16564910 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x165638e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16564910, SDValue());
SDValue node0x16564c80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x165648b0 = dag->getNode(ISD::BR, dl, MVT::Other, node0x165638e0, node0x16564c80);
roots.reserve(2);
roots.push_back(node0x165638e0);
roots.push_back(node0x165648b0);
dag->setRoot(node0x165648b0);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__:
    {
SDValue node0x16735900 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x16735bb0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x16735900);
roots.reserve(1);
roots.push_back(node0x16735bb0);
dag->setRoot(node0x16735bb0);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x16736e80 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16737000 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x167370b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x16737150 = dag->getSetCC(dl, MVT::iAny, node0x16737000, node0x16736e80, ISD::SETEQ);
SDValue node0x16737370 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x16737150, node0x167370b0);
roots.reserve(1);
roots.push_back(node0x16737370);
dag->setRoot(node0x16737370);
    } else     {
SDValue node0x16736e80 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16737000 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x167370b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x16737150 = dag->getSetCC(dl, MVT::i32, node0x16737000, node0x16736e80, ISD::SETEQ);
SDValue node0x16737370 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x16737150, node0x167370b0);
roots.reserve(1);
roots.push_back(node0x16737370);
dag->setRoot(node0x16737370);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x16739820 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x167399a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16739a50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x16739af0 = dag->getSetCC(dl, MVT::iAny, node0x167399a0, node0x16739820, ISD::SETEQ);
SDValue node0x16739d10 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x16739af0, node0x16739a50);
roots.reserve(1);
roots.push_back(node0x16739d10);
dag->setRoot(node0x16739d10);
    } else     {
SDValue node0x16739820 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x167399a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16739a50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x16739af0 = dag->getSetCC(dl, MVT::i32, node0x167399a0, node0x16739820, ISD::SETEQ);
SDValue node0x16739d10 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x16739af0, node0x16739a50);
roots.reserve(1);
roots.push_back(node0x16739d10);
dag->setRoot(node0x16739d10);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1673b490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1673b540 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1673b5f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1673b690 = dag->getSetCC(dl, MVT::iAny, node0x1673b540, node0x1673b490, ISD::SETEQ);
SDValue node0x1673b8b0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1673b690, node0x1673b5f0);
roots.reserve(1);
roots.push_back(node0x1673b8b0);
dag->setRoot(node0x1673b8b0);
    } else     {
SDValue node0x1673b490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1673b540 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1673b5f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1673b690 = dag->getSetCC(dl, MVT::i32, node0x1673b540, node0x1673b490, ISD::SETEQ);
SDValue node0x1673b8b0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1673b690, node0x1673b5f0);
roots.reserve(1);
roots.push_back(node0x1673b8b0);
dag->setRoot(node0x1673b8b0);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__:
    {
SDValue node0x1673c810 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x1673cac0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x1673c810);
roots.reserve(1);
roots.push_back(node0x1673cac0);
dag->setRoot(node0x1673cac0);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1673da20 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x1673dd80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1673de30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1673ded0 = dag->getSetCC(dl, MVT::iAny, node0x1673dd80, node0x1673da20, ISD::SETLT);
SDValue node0x1673e0f0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1673ded0, node0x1673de30);
roots.reserve(1);
roots.push_back(node0x1673e0f0);
dag->setRoot(node0x1673e0f0);
    } else     {
SDValue node0x1673da20 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x1673dd80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1673de30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1673ded0 = dag->getSetCC(dl, MVT::i32, node0x1673dd80, node0x1673da20, ISD::SETLT);
SDValue node0x1673e0f0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1673ded0, node0x1673de30);
roots.reserve(1);
roots.push_back(node0x1673e0f0);
dag->setRoot(node0x1673e0f0);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x167406e0 = dag->getConstant(-1LL, dl, MVT::i32);
SDValue node0x167407c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16740870 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x16740910 = dag->getSetCC(dl, MVT::iAny, node0x167407c0, node0x167406e0, ISD::SETGT);
SDValue node0x16740b30 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x16740910, node0x16740870);
roots.reserve(1);
roots.push_back(node0x16740b30);
dag->setRoot(node0x16740b30);
    } else     {
SDValue node0x167406e0 = dag->getConstant(-1LL, dl, MVT::i32);
SDValue node0x167407c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16740870 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x16740910 = dag->getSetCC(dl, MVT::i32, node0x167407c0, node0x167406e0, ISD::SETGT);
SDValue node0x16740b30 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x16740910, node0x16740870);
roots.reserve(1);
roots.push_back(node0x16740b30);
dag->setRoot(node0x16740b30);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x167422b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16742360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16742410 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x167424b0 = dag->getSetCC(dl, MVT::iAny, node0x16742360, node0x167422b0, ISD::SETGE);
SDValue node0x167426d0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x167424b0, node0x16742410);
roots.reserve(1);
roots.push_back(node0x167426d0);
dag->setRoot(node0x167426d0);
    } else     {
SDValue node0x167422b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16742360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16742410 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x167424b0 = dag->getSetCC(dl, MVT::i32, node0x16742360, node0x167422b0, ISD::SETGE);
SDValue node0x167426d0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x167424b0, node0x16742410);
roots.reserve(1);
roots.push_back(node0x167426d0);
dag->setRoot(node0x167426d0);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__:
    {
SDValue node0x16743630 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x167438e0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x16743630);
roots.reserve(1);
roots.push_back(node0x167438e0);
dag->setRoot(node0x167438e0);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x16744a20 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16744ba0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16744c50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x16744cf0 = dag->getSetCC(dl, MVT::iAny, node0x16744ba0, node0x16744a20, ISD::SETEQ);
SDValue node0x16744f10 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x16744cf0, node0x16744c50);
roots.reserve(1);
roots.push_back(node0x16744f10);
dag->setRoot(node0x16744f10);
    } else     {
SDValue node0x16744a20 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16744ba0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16744c50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x16744cf0 = dag->getSetCC(dl, MVT::i32, node0x16744ba0, node0x16744a20, ISD::SETEQ);
SDValue node0x16744f10 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x16744cf0, node0x16744c50);
roots.reserve(1);
roots.push_back(node0x16744f10);
dag->setRoot(node0x16744f10);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x16748fc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16749070 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16749120 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x167491c0 = dag->getSetCC(dl, MVT::iAny, node0x16749070, node0x16748fc0, ISD::SETUGE);
SDValue node0x167493e0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x167491c0, node0x16749120);
roots.reserve(1);
roots.push_back(node0x167493e0);
dag->setRoot(node0x167493e0);
    } else     {
SDValue node0x16748fc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16749070 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16749120 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x167491c0 = dag->getSetCC(dl, MVT::i32, node0x16749070, node0x16748fc0, ISD::SETUGE);
SDValue node0x167493e0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x167491c0, node0x16749120);
roots.reserve(1);
roots.push_back(node0x167493e0);
dag->setRoot(node0x167493e0);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1674b020 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1674b1a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1674b250 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1674b2f0 = dag->getSetCC(dl, MVT::iAny, node0x1674b1a0, node0x1674b020, ISD::SETGT);
SDValue node0x1674b510 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1674b2f0, node0x1674b250);
roots.reserve(1);
roots.push_back(node0x1674b510);
dag->setRoot(node0x1674b510);
    } else     {
SDValue node0x1674b020 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1674b1a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1674b250 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1674b2f0 = dag->getSetCC(dl, MVT::i32, node0x1674b1a0, node0x1674b020, ISD::SETGT);
SDValue node0x1674b510 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1674b2f0, node0x1674b250);
roots.reserve(1);
roots.push_back(node0x1674b510);
dag->setRoot(node0x1674b510);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x1674da10 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1674db90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1674dc40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1674dce0 = dag->getSetCC(dl, MVT::iAny, node0x1674db90, node0x1674da10, ISD::SETLT);
SDValue node0x1674df00 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1674dce0, node0x1674dc40);
roots.reserve(1);
roots.push_back(node0x1674df00);
dag->setRoot(node0x1674df00);
    } else     {
SDValue node0x1674da10 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1674db90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1674dc40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1674dce0 = dag->getSetCC(dl, MVT::i32, node0x1674db90, node0x1674da10, ISD::SETLT);
SDValue node0x1674df00 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1674dce0, node0x1674dc40);
roots.reserve(1);
roots.push_back(node0x1674df00);
dag->setRoot(node0x1674df00);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1674f680 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1674f730 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1674f7e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1674f880 = dag->getSetCC(dl, MVT::iAny, node0x1674f730, node0x1674f680, ISD::SETLT);
SDValue node0x1674faa0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1674f880, node0x1674f7e0);
roots.reserve(1);
roots.push_back(node0x1674faa0);
dag->setRoot(node0x1674faa0);
    } else     {
SDValue node0x1674f680 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1674f730 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1674f7e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1674f880 = dag->getSetCC(dl, MVT::i32, node0x1674f730, node0x1674f680, ISD::SETLT);
SDValue node0x1674faa0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1674f880, node0x1674f7e0);
roots.reserve(1);
roots.push_back(node0x1674faa0);
dag->setRoot(node0x1674faa0);
    }
    break;
  case Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x16751690 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16751810 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x167518c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x16751960 = dag->getSetCC(dl, MVT::iAny, node0x16751810, node0x16751690, ISD::SETNE);
SDValue node0x16751b80 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x16751960, node0x167518c0);
roots.reserve(1);
roots.push_back(node0x16751b80);
dag->setRoot(node0x16751b80);
    } else     {
SDValue node0x16751690 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16751810 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x167518c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x16751960 = dag->getSetCC(dl, MVT::i32, node0x16751810, node0x16751690, ISD::SETNE);
SDValue node0x16751b80 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x16751960, node0x167518c0);
roots.reserve(1);
roots.push_back(node0x16751b80);
dag->setRoot(node0x16751b80);
    }
    break;
  case Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x16755480 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16755530 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x167555e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x16755680 = dag->getSetCC(dl, MVT::iAny, node0x16755530, node0x16755480, ISD::SETULT);
SDValue node0x167558a0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x16755680, node0x167555e0);
roots.reserve(1);
roots.push_back(node0x167558a0);
dag->setRoot(node0x167558a0);
    } else     {
SDValue node0x16755480 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16755530 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x167555e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x16755680 = dag->getSetCC(dl, MVT::i32, node0x16755530, node0x16755480, ISD::SETULT);
SDValue node0x167558a0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x16755680, node0x167555e0);
roots.reserve(1);
roots.push_back(node0x167558a0);
dag->setRoot(node0x167558a0);
    }
    break;
  case Codasip::i_control_conditional__opc_bne__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x16757530 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x167576b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16757760 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x16757800 = dag->getSetCC(dl, MVT::iAny, node0x167576b0, node0x16757530, ISD::SETNE);
SDValue node0x16757a20 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x16757800, node0x16757760);
roots.reserve(1);
roots.push_back(node0x16757a20);
dag->setRoot(node0x16757a20);
    } else     {
SDValue node0x16757530 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x167576b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16757760 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x16757800 = dag->getSetCC(dl, MVT::i32, node0x167576b0, node0x16757530, ISD::SETNE);
SDValue node0x16757a20 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x16757800, node0x16757760);
roots.reserve(1);
roots.push_back(node0x16757a20);
dag->setRoot(node0x16757a20);
    }
    break;
  case Codasip::i_control_conditional__opc_bne__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x16759f20 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1675a0a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1675a150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1675a1f0 = dag->getSetCC(dl, MVT::iAny, node0x1675a0a0, node0x16759f20, ISD::SETNE);
SDValue node0x1675a410 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1675a1f0, node0x1675a150);
roots.reserve(1);
roots.push_back(node0x1675a410);
dag->setRoot(node0x1675a410);
    } else     {
SDValue node0x16759f20 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1675a0a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1675a150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1675a1f0 = dag->getSetCC(dl, MVT::i32, node0x1675a0a0, node0x16759f20, ISD::SETNE);
SDValue node0x1675a410 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1675a1f0, node0x1675a150);
roots.reserve(1);
roots.push_back(node0x1675a410);
dag->setRoot(node0x1675a410);
    }
    break;
  case Codasip::i_control_conditional__opc_bne__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1675bb90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1675bc40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1675bcf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1675bd90 = dag->getSetCC(dl, MVT::iAny, node0x1675bc40, node0x1675bb90, ISD::SETNE);
SDValue node0x1675bfb0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1675bd90, node0x1675bcf0);
roots.reserve(1);
roots.push_back(node0x1675bfb0);
dag->setRoot(node0x1675bfb0);
    } else     {
SDValue node0x1675bb90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1675bc40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1675bcf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1675bd90 = dag->getSetCC(dl, MVT::i32, node0x1675bc40, node0x1675bb90, ISD::SETNE);
SDValue node0x1675bfb0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1675bd90, node0x1675bcf0);
roots.reserve(1);
roots.push_back(node0x1675bfb0);
dag->setRoot(node0x1675bfb0);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x166904c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x16690720 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x166907d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16690880 = dag->getSetCC(dl, MVT::iAny, node0x16690720, node0x166907d0, ISD::SETLE);
SDValue node0x16690920 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x16690880, node0x166904c0);
roots.reserve(1);
roots.push_back(node0x16690920);
dag->setRoot(node0x16690920);
    } else     {
SDValue node0x166904c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x16690720 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x166907d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16690880 = dag->getSetCC(dl, MVT::i32, node0x16690720, node0x166907d0, ISD::SETLE);
SDValue node0x16690920 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x16690880, node0x166904c0);
roots.reserve(1);
roots.push_back(node0x16690920);
dag->setRoot(node0x16690920);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x166913e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x16691670 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16691720 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166917d0 = dag->getSetCC(dl, MVT::iAny, node0x16691670, node0x16691720, ISD::SETULE);
SDValue node0x166918a0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x166917d0, node0x166913e0);
roots.reserve(1);
roots.push_back(node0x166918a0);
dag->setRoot(node0x166918a0);
    } else     {
SDValue node0x166913e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x16691670 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16691720 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166917d0 = dag->getSetCC(dl, MVT::i32, node0x16691670, node0x16691720, ISD::SETULE);
SDValue node0x166918a0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x166917d0, node0x166913e0);
roots.reserve(1);
roots.push_back(node0x166918a0);
dag->setRoot(node0x166918a0);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x166922b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x16692540 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x166925f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166926a0 = dag->getSetCC(dl, MVT::iAny, node0x16692540, node0x166925f0, ISD::SETGT);
SDValue node0x16692770 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x166926a0, node0x166922b0);
roots.reserve(1);
roots.push_back(node0x16692770);
dag->setRoot(node0x16692770);
    } else     {
SDValue node0x166922b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x16692540 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x166925f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166926a0 = dag->getSetCC(dl, MVT::i32, node0x16692540, node0x166925f0, ISD::SETGT);
SDValue node0x16692770 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x166926a0, node0x166922b0);
roots.reserve(1);
roots.push_back(node0x16692770);
dag->setRoot(node0x16692770);
    }
    break;
  case Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x16693180 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x16693410 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x166934c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16693570 = dag->getSetCC(dl, MVT::iAny, node0x16693410, node0x166934c0, ISD::SETUGT);
SDValue node0x16693640 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x16693570, node0x16693180);
roots.reserve(1);
roots.push_back(node0x16693640);
dag->setRoot(node0x16693640);
    } else     {
SDValue node0x16693180 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x16693410 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x166934c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16693570 = dag->getSetCC(dl, MVT::i32, node0x16693410, node0x166934c0, ISD::SETUGT);
SDValue node0x16693640 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x16693570, node0x16693180);
roots.reserve(1);
roots.push_back(node0x16693640);
dag->setRoot(node0x16693640);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__:
    {
SDValue node0x16566c60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x16566990 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x16566c60);
roots.reserve(1);
roots.push_back(node0x16566990);
dag->setRoot(node0x16566990);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_simple__:
    {
SDValue node0x16571220 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x16570940 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16571220, SDValue());
SDValue node0x16571590 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x165711f0 = dag->getNode(ISD::BR, dl, MVT::Other, node0x16570940, node0x16571590);
roots.reserve(2);
roots.push_back(node0x16570940);
roots.push_back(node0x165711f0);
dag->setRoot(node0x165711f0);
    }
    break;
  case Codasip::i_auipc__opc_auipc__regs__imm20_s12__:
    {
SDValue node0x16204770 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x16204a60 = dag->getConstant(-4LL, dl, MVT::i32);
SDValue node0x16204c80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16204d20 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x16204770, node0x16204c80);
SDValue node0x16204db0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x16204d20, node0x16204a60);
SDValue node0x16204720 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16204db0, SDValue());
roots.reserve(1);
roots.push_back(node0x16204720);
dag->setRoot(node0x16204720);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__:
    {
SDValue node0x16446c00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x164459f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16446c00, SDValue());
roots.reserve(1);
roots.push_back(node0x164459f0);
dag->setRoot(node0x164459f0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__:
    {
SDValue node0x164161b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x161ff650 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x161ff6f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x164161b0, node0x161ff650);
SDValue node0x161fe170 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x161ff6f0, SDValue());
roots.reserve(1);
roots.push_back(node0x161fe170);
dag->setRoot(node0x161fe170);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__:
    {
SDValue node0x16220f30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16220fe0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16221080 = dag->getNode(ISD::AND, dl, MVT::i32, node0x16220f30, node0x16220fe0);
SDValue node0x1621fa70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16221080, SDValue());
roots.reserve(1);
roots.push_back(node0x1621fa70);
dag->setRoot(node0x1621fa70);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__:
    {
SDValue node0x1622be10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1622aca0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1622be10, SDValue());
roots.reserve(1);
roots.push_back(node0x1622aca0);
dag->setRoot(node0x1622aca0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__:
    {
SDValue node0x167f00f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x167f01a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x167f0240 = dag->getNode(ISD::OR, dl, MVT::i32, node0x167f00f0, node0x167f01a0);
SDValue node0x1622eb00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x167f0240, SDValue());
roots.reserve(1);
roots.push_back(node0x1622eb00);
dag->setRoot(node0x1622eb00);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__:
    {
SDValue node0x164544a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16454580 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16454620 = dag->getSetCC(dl, MVT::i32, node0x16454580, node0x164544a0, ISD::SETGT);
SDValue node0x164531c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16454620, SDValue());
roots.reserve(1);
roots.push_back(node0x164531c0);
dag->setRoot(node0x164531c0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:
    {
SDValue node0x16458ac0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16458b70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16458c10 = dag->getSetCC(dl, MVT::i32, node0x16458ac0, node0x16458b70, ISD::SETLT);
SDValue node0x164574b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16458c10, SDValue());
roots.reserve(1);
roots.push_back(node0x164574b0);
dag->setRoot(node0x164574b0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__:
    {
SDValue node0x164640e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x164641c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16464260 = dag->getSetCC(dl, MVT::i32, node0x164641c0, node0x164640e0, ISD::SETNE);
SDValue node0x16462e00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16464260, SDValue());
roots.reserve(1);
roots.push_back(node0x16462e00);
dag->setRoot(node0x16462e00);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:
    {
SDValue node0x16468700 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x164687b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16468850 = dag->getSetCC(dl, MVT::i32, node0x16468700, node0x164687b0, ISD::SETULT);
SDValue node0x164670f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16468850, SDValue());
roots.reserve(1);
roots.push_back(node0x164670f0);
dag->setRoot(node0x164670f0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__:
    {
SDValue node0x16473a10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16472800 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16473a10, SDValue());
roots.reserve(1);
roots.push_back(node0x16472800);
dag->setRoot(node0x16472800);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:
    {
SDValue node0x16477cf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16477da0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16477e40 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x16477cf0, node0x16477da0);
SDValue node0x164767a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16477e40, SDValue());
roots.reserve(1);
roots.push_back(node0x164767a0);
dag->setRoot(node0x164767a0);
    }
    break;
  case Codasip::i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__:
    {
SDValue node0x1647cbb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1647cc60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1647cd00 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x1647cbb0, node0x1647cc60);
SDValue node0x1647c700 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1647cd00, SDValue());
roots.reserve(1);
roots.push_back(node0x1647c700);
dag->setRoot(node0x1647c700);
    }
    break;
  case Codasip::i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__:
    {
SDValue node0x16481cd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16481d80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16481e20 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x16481cd0, node0x16481d80);
SDValue node0x16481820 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16481e20, SDValue());
roots.reserve(1);
roots.push_back(node0x16481820);
dag->setRoot(node0x16481820);
    }
    break;
  case Codasip::i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__:
    {
SDValue node0x16486df0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16486ea0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16486f40 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x16486df0, node0x16486ea0);
SDValue node0x16486940 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16486f40, SDValue());
roots.reserve(1);
roots.push_back(node0x16486940);
dag->setRoot(node0x16486940);
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
SDValue node0x1649c890 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1649aa40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1649c890, SDValue());
roots.reserve(1);
roots.push_back(node0x1649aa40);
dag->setRoot(node0x1649aa40);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__regs__reg0__regs__:
    {
SDValue node0x1649da80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1649ca80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1649da80, SDValue());
roots.reserve(1);
roots.push_back(node0x1649ca80);
dag->setRoot(node0x1649ca80);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__regs__regs__reg0__:
    {
SDValue node0x1649fae0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1649dc10 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1649fae0, SDValue());
roots.reserve(1);
roots.push_back(node0x1649dc10);
dag->setRoot(node0x1649dc10);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__regs__regs__regs__:
    {
SDValue node0x164a0e10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x164a0ec0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x164a0f70 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x164a0e10, node0x164a0ec0);
SDValue node0x164a0b20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x164a0f70, SDValue());
roots.reserve(1);
roots.push_back(node0x164a0b20);
dag->setRoot(node0x164a0b20);
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
SDValue node0x164a9280 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x164a7430 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x164a9280, SDValue());
roots.reserve(1);
roots.push_back(node0x164a7430);
dag->setRoot(node0x164a7430);
    }
    break;
  case Codasip::i_comp_3reg__opc_and__regs__regs__regs__:
    {
SDValue node0x164ad510 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x164ad5c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x164ad670 = dag->getNode(ISD::AND, dl, MVT::i32, node0x164ad510, node0x164ad5c0);
SDValue node0x164ac370 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x164ad670, SDValue());
roots.reserve(1);
roots.push_back(node0x164ac370);
dag->setRoot(node0x164ac370);
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
SDValue node0x164b5b00 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x164b3cb0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x164b5b00, SDValue());
roots.reserve(1);
roots.push_back(node0x164b3cb0);
dag->setRoot(node0x164b3cb0);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__regs__reg0__regs__:
    {
SDValue node0x164b6d50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x164b5cf0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x164b6d50, SDValue());
roots.reserve(1);
roots.push_back(node0x164b5cf0);
dag->setRoot(node0x164b5cf0);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__regs__regs__reg0__:
    {
SDValue node0x164b8e10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x164b6ee0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x164b8e10, SDValue());
roots.reserve(1);
roots.push_back(node0x164b6ee0);
dag->setRoot(node0x164b6ee0);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__regs__regs__regs__:
    {
SDValue node0x164ba150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x164ba200 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x164ba2b0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x164ba150, node0x164ba200);
SDValue node0x164b8fa0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x164ba2b0, SDValue());
roots.reserve(1);
roots.push_back(node0x164b8fa0);
dag->setRoot(node0x164b8fa0);
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
SDValue node0x164c2620 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x164c07d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x164c2620, SDValue());
roots.reserve(1);
roots.push_back(node0x164c07d0);
dag->setRoot(node0x164c07d0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__regs__regs__reg0__:
    {
SDValue node0x164c5720 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x164c3800 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x164c5720, SDValue());
roots.reserve(1);
roots.push_back(node0x164c3800);
dag->setRoot(node0x164c3800);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__regs__regs__regs__:
    {
SDValue node0x164c6aa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x164c6b50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x164c6c90 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x164c6aa0, node0x164c6b50);
SDValue node0x164c58b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x164c6c90, SDValue());
roots.reserve(1);
roots.push_back(node0x164c58b0);
dag->setRoot(node0x164c58b0);
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
SDValue node0x166f0e90 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x166ef040 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x166f0e90, SDValue());
roots.reserve(1);
roots.push_back(node0x166ef040);
dag->setRoot(node0x166ef040);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__reg0__regs__:
    {
SDValue node0x166f1f00 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x166f2080 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166f2130 = dag->getSetCC(dl, MVT::i32, node0x166f2080, node0x166f1f00, ISD::SETGT);
SDValue node0x166f1080 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x166f2130, SDValue());
roots.reserve(1);
roots.push_back(node0x166f1080);
dag->setRoot(node0x166f1080);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__regs__reg0__:
    {
SDValue node0x166f40e0 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x166f4300 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166f43b0 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x166f4300, node0x166f40e0);
SDValue node0x166f2450 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x166f43b0, SDValue());
roots.reserve(1);
roots.push_back(node0x166f2450);
dag->setRoot(node0x166f2450);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__regs__regs__:
    {
SDValue node0x166f56a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166f5750 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x166f5800 = dag->getSetCC(dl, MVT::i32, node0x166f56a0, node0x166f5750, ISD::SETLT);
SDValue node0x166f45c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x166f5800, SDValue());
roots.reserve(1);
roots.push_back(node0x166f45c0);
dag->setRoot(node0x166f45c0);
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
SDValue node0x166fdbd0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x166fbee0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x166fdbd0, SDValue());
roots.reserve(1);
roots.push_back(node0x166fbee0);
dag->setRoot(node0x166fbee0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__regs__reg0__regs__:
    {
SDValue node0x166fec40 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x166fedc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166fee70 = dag->getSetCC(dl, MVT::i32, node0x166fedc0, node0x166fec40, ISD::SETNE);
SDValue node0x166fddc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x166fee70, SDValue());
roots.reserve(1);
roots.push_back(node0x166fddc0);
dag->setRoot(node0x166fddc0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__:
    {
SDValue node0x16702130 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x167021e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16702290 = dag->getSetCC(dl, MVT::i32, node0x16702130, node0x167021e0, ISD::SETULT);
SDValue node0x16700f90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16702290, SDValue());
roots.reserve(1);
roots.push_back(node0x16700f90);
dag->setRoot(node0x16700f90);
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
SDValue node0x1670a660 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16708810 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1670a660, SDValue());
roots.reserve(1);
roots.push_back(node0x16708810);
dag->setRoot(node0x16708810);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__regs__regs__reg0__:
    {
SDValue node0x1670d760 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1670b840 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1670d760, SDValue());
roots.reserve(1);
roots.push_back(node0x1670b840);
dag->setRoot(node0x1670b840);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__regs__regs__regs__:
    {
SDValue node0x1670eae0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1670eb90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1670ecd0 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x1670eae0, node0x1670eb90);
SDValue node0x1670d8f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1670ecd0, SDValue());
roots.reserve(1);
roots.push_back(node0x1670d8f0);
dag->setRoot(node0x1670d8f0);
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
SDValue node0x16717010 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x167151c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16717010, SDValue());
roots.reserve(1);
roots.push_back(node0x167151c0);
dag->setRoot(node0x167151c0);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__regs__regs__reg0__:
    {
SDValue node0x1671a110 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x167181f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1671a110, SDValue());
roots.reserve(1);
roots.push_back(node0x167181f0);
dag->setRoot(node0x167181f0);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__regs__regs__regs__:
    {
SDValue node0x1671b490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1671b540 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1671b680 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x1671b490, node0x1671b540);
SDValue node0x1671a2a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1671b680, SDValue());
roots.reserve(1);
roots.push_back(node0x1671a2a0);
dag->setRoot(node0x1671a2a0);
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
SDValue node0x167239c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16721b70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x167239c0, SDValue());
roots.reserve(1);
roots.push_back(node0x16721b70);
dag->setRoot(node0x16721b70);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__regs__reg0__regs__:
    {
SDValue node0x167249b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16724bb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16724c60 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x167249b0, node0x16724bb0);
SDValue node0x16723bb0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16724c60, SDValue());
roots.reserve(1);
roots.push_back(node0x16723bb0);
dag->setRoot(node0x16723bb0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__regs__regs__reg0__:
    {
SDValue node0x16726cd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16724e70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16726cd0, SDValue());
roots.reserve(1);
roots.push_back(node0x16724e70);
dag->setRoot(node0x16724e70);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__regs__regs__regs__:
    {
SDValue node0x16727fb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16728060 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16728110 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x16727fb0, node0x16728060);
SDValue node0x16726e60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16728110, SDValue());
roots.reserve(1);
roots.push_back(node0x16726e60);
dag->setRoot(node0x16726e60);
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
SDValue node0x16730420 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1672e5d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16730420, SDValue());
roots.reserve(1);
roots.push_back(node0x1672e5d0);
dag->setRoot(node0x1672e5d0);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__regs__reg0__regs__:
    {
SDValue node0x16731610 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16730610 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16731610, SDValue());
roots.reserve(1);
roots.push_back(node0x16730610);
dag->setRoot(node0x16730610);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__regs__regs__reg0__:
    {
SDValue node0x16733670 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x167317a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16733670, SDValue());
roots.reserve(1);
roots.push_back(node0x167317a0);
dag->setRoot(node0x167317a0);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__regs__regs__regs__:
    {
SDValue node0x16734950 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16734a00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16734ab0 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x16734950, node0x16734a00);
SDValue node0x16733800 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16734ab0, SDValue());
roots.reserve(1);
roots.push_back(node0x16733800);
dag->setRoot(node0x16733800);
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
SDValue node0x1658f830 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165858b0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1658f830, mpi, MVT::i8, 1);
SDValue node0x1658ebb0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165858b0, SDValue());
roots.reserve(1);
roots.push_back(node0x1658ebb0);
dag->setRoot(node0x1658ebb0);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__:
    {
SDValue node0x16590b50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16590c00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16590ca0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x16590b50, node0x16590c00);
SDValue node0x16584640 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x16590ca0, mpi, MVT::i8, 1);
SDValue node0x1658ea70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16584640, SDValue());
roots.reserve(1);
roots.push_back(node0x1658ea70);
dag->setRoot(node0x1658ea70);
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
SDValue node0x165a13a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16597070 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x165a13a0, mpi, MVT::i8, 1);
SDValue node0x165a0720 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16597070, SDValue());
roots.reserve(1);
roots.push_back(node0x165a0720);
dag->setRoot(node0x165a0720);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__:
    {
SDValue node0x165a26c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165a2770 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x165a2810 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x165a26c0, node0x165a2770);
SDValue node0x16595e00 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x165a2810, mpi, MVT::i8, 1);
SDValue node0x165a05e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16595e00, SDValue());
roots.reserve(1);
roots.push_back(node0x165a05e0);
dag->setRoot(node0x165a05e0);
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
SDValue node0x165b2f30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165a8c00 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x165b2f30, mpi, MVT::i16, 1);
SDValue node0x165b22b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165a8c00, SDValue());
roots.reserve(1);
roots.push_back(node0x165b22b0);
dag->setRoot(node0x165b22b0);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__:
    {
SDValue node0x165b4250 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165b4300 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x165b43a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x165b4250, node0x165b4300);
SDValue node0x165a7990 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x165b43a0, mpi, MVT::i16, 1);
SDValue node0x165b2170 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165a7990, SDValue());
roots.reserve(1);
roots.push_back(node0x165b2170);
dag->setRoot(node0x165b2170);
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
SDValue node0x165c4aa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165ba770 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x165c4aa0, mpi, MVT::i16, 1);
SDValue node0x165c3e20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165ba770, SDValue());
roots.reserve(1);
roots.push_back(node0x165c3e20);
dag->setRoot(node0x165c3e20);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__:
    {
SDValue node0x165c5dc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165c5e70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x165c5f10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x165c5dc0, node0x165c5e70);
SDValue node0x165b9500 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x165c5f10, mpi, MVT::i16, 1);
SDValue node0x165c3ce0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165b9500, SDValue());
roots.reserve(1);
roots.push_back(node0x165c3ce0);
dag->setRoot(node0x165c3ce0);
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
SDValue node0x165d6030 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165d60d0 = dag->getLoad(MVT::i32, dl, entry, node0x165d6030, mpi, 1);
SDValue node0x165d5400 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165d60d0, SDValue());
roots.reserve(1);
roots.push_back(node0x165d5400);
dag->setRoot(node0x165d5400);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__:
    {
SDValue node0x165d72f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165d73a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x165d7440 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x165d72f0, node0x165d73a0);
SDValue node0x165d74d0 = dag->getLoad(MVT::i32, dl, entry, node0x165d7440, mpi, 1);
SDValue node0x165d5310 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165d74d0, SDValue());
roots.reserve(1);
roots.push_back(node0x165d5310);
dag->setRoot(node0x165d5310);
    }
    break;
  case Codasip::i_lui__opc_lui__regs__imm20_s12__:
    {
SDValue node0x165f2d30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165f2900 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165f2d30, SDValue());
roots.reserve(1);
roots.push_back(node0x165f2900);
dag->setRoot(node0x165f2900);
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
SDValue node0x165fe790 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x165fe740 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165fe790, SDValue());
roots.reserve(1);
roots.push_back(node0x165fe740);
dag->setRoot(node0x165fe740);
    }
    break;
  case Codasip::i_neg_alias__regs__regs__:
    {
SDValue node0x165ff620 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x165ff820 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165ff8d0 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x165ff620, node0x165ff820);
SDValue node0x165ff5d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165ff8d0, SDValue());
roots.reserve(1);
roots.push_back(node0x165ff5d0);
dag->setRoot(node0x165ff5d0);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__reg0__:
    {
SDValue node0x1662a9a0 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x1662ac40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1662ace0 = dag->getStore(entry, dl, node0x1662a9a0, node0x1662ac40, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1662ace0);
dag->setRoot(node0x1662ace0);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__:
    {
SDValue node0x1662b970 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x1662bcb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1662bd60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1662be00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1662bcb0, node0x1662bd60);
SDValue node0x1662be90 = dag->getStore(entry, dl, node0x1662b970, node0x1662be00, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1662be90);
dag->setRoot(node0x1662be90);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_simple__reg0__:
    {
SDValue node0x16636ca0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16636d50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166c2310 = dag->getTruncStore(entry, dl, node0x16636ca0, node0x16636d50, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x166c2310);
dag->setRoot(node0x166c2310);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_simple__regs__:
    {
SDValue node0x16638020 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x166380d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16638180 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x166382d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x166380d0, node0x16638180);
SDValue node0x16636ea0 = dag->getTruncStore(entry, dl, node0x16638020, node0x166382d0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x16636ea0);
dag->setRoot(node0x16636ea0);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__:
    {
SDValue node0x1663d780 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x1663da20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1663dac0 = dag->getStore(entry, dl, node0x1663d780, node0x1663da20, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1663dac0);
dag->setRoot(node0x1663dac0);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__:
    {
SDValue node0x1663e940 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x1663ec80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1663ed30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1663edd0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1663ec80, node0x1663ed30);
SDValue node0x1663ee60 = dag->getStore(entry, dl, node0x1663e940, node0x1663edd0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1663ee60);
dag->setRoot(node0x1663ee60);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_simple__reg0__:
    {
SDValue node0x16649c70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16649d20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166c2870 = dag->getTruncStore(entry, dl, node0x16649c70, node0x16649d20, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x166c2870);
dag->setRoot(node0x166c2870);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_simple__regs__:
    {
SDValue node0x1664aff0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1664b0a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1664b150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1664b2a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1664b0a0, node0x1664b150);
SDValue node0x16649e70 = dag->getTruncStore(entry, dl, node0x1664aff0, node0x1664b2a0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x16649e70);
dag->setRoot(node0x16649e70);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_simple__reg0__:
    {
SDValue node0x166504d0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x166506d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16650770 = dag->getStore(entry, dl, node0x166504d0, node0x166506d0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x16650770);
dag->setRoot(node0x16650770);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_simple__regs__:
    {
SDValue node0x166515f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16651890 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16651940 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166519e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x16651890, node0x16651940);
SDValue node0x16651a70 = dag->getStore(entry, dl, node0x166515f0, node0x166519e0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x16651a70);
dag->setRoot(node0x16651a70);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__reg0__:
    {
SDValue node0x1665c570 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1665c620 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1665c6c0 = dag->getStore(entry, dl, node0x1665c570, node0x1665c620, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1665c6c0);
dag->setRoot(node0x1665c6c0);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__:
    {
SDValue node0x1665d890 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1665d940 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1665d9f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1665da90 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1665d940, node0x1665d9f0);
SDValue node0x1665db20 = dag->getStore(entry, dl, node0x1665d890, node0x1665da90, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1665db20);
dag->setRoot(node0x1665db20);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:
    {
SDValue node0x1668d700 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1668d4e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1668d700, SDValue());
roots.reserve(1);
roots.push_back(node0x1668d4e0);
dag->setRoot(node0x1668d4e0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:
    {
SDValue node0x1668d260 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x167b7d40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1668d260, SDValue());
roots.reserve(1);
roots.push_back(node0x167b7d40);
dag->setRoot(node0x167b7d40);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:
    {
SDValue node0x1668e600 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1668dc90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1668e600, SDValue());
roots.reserve(1);
roots.push_back(node0x1668dc90);
dag->setRoot(node0x1668dc90);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:
    {
SDValue node0x1668de60 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x1668d590 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1668de60, SDValue());
roots.reserve(1);
roots.push_back(node0x1668d590);
dag->setRoot(node0x1668d590);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__regs__regs__regs__SHIFT_MASK_CLONE_:
    {
SDValue node0x16574c50 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x165c3ad0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16574a60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16649dc0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x16574a60, node0x16574c50);
SDValue node0x16638220 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x165c3ad0, node0x16649dc0);
SDValue node0x166c0b80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16638220, SDValue());
roots.reserve(1);
roots.push_back(node0x166c0b80);
dag->setRoot(node0x166c0b80);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__regs__regs__swappedCmpClone0__:
    {
SDValue node0x164ca5e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1668c3b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1668eea0 = dag->getSetCC(dl, MVT::i32, node0x164ca5e0, node0x1668c3b0, ISD::SETGT);
SDValue node0x1668eb30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1668eea0, SDValue());
roots.reserve(1);
roots.push_back(node0x1668eb30);
dag->setRoot(node0x1668eb30);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__swappedCmpClone0__:
    {
SDValue node0x1668f720 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1668f870 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1668f920 = dag->getSetCC(dl, MVT::i32, node0x1668f720, node0x1668f870, ISD::SETUGT);
SDValue node0x1668e430 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1668f920, SDValue());
roots.reserve(1);
roots.push_back(node0x1668e430);
dag->setRoot(node0x1668e430);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__regs__regs__regs__SHIFT_MASK_CLONE_:
    {
SDValue node0x164c6880 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x165737a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16569a90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x164c6c00 = dag->getNode(ISD::AND, dl, MVT::i32, node0x16569a90, node0x164c6880);
SDValue node0x16636df0 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x165737a0, node0x164c6c00);
SDValue node0x166e9870 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16636df0, SDValue());
roots.reserve(1);
roots.push_back(node0x166e9870);
dag->setRoot(node0x166e9870);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__regs__regs__regs__SHIFT_MASK_CLONE_:
    {
SDValue node0x1670e8c0 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x16568a60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165cc010 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1670ec40 = dag->getNode(ISD::AND, dl, MVT::i32, node0x165cc010, node0x1670e8c0);
SDValue node0x166258b0 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x16568a60, node0x1670ec40);
SDValue node0x166ea250 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x166258b0, SDValue());
roots.reserve(1);
roots.push_back(node0x166ea250);
dag->setRoot(node0x166ea250);
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
SDValue node0x1657b150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1658f8d0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x1657b150, mpi, MVT::i8, 1);
SDValue node0x1621bf20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1658f8d0, SDValue());
roots.reserve(1);
roots.push_back(node0x1621bf20);
dag->setRoot(node0x1621bf20);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x16590d30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16590810 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16590e00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x16590d30, node0x16590810);
SDValue node0x166a8a20 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x16590e00, mpi, MVT::i8, 1);
SDValue node0x164f89b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x166a8a20, SDValue());
roots.reserve(1);
roots.push_back(node0x164f89b0);
dag->setRoot(node0x164f89b0);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x1669eea0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16697c00 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1669eea0, mpi, MVT::i8, 1);
SDValue node0x1669aba0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16697c00, SDValue());
roots.reserve(1);
roots.push_back(node0x1669aba0);
dag->setRoot(node0x1669aba0);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x1669ef50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16697140 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x1669ef50, mpi, MVT::i8, 1);
SDValue node0x1668f4d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16697140, SDValue());
roots.reserve(1);
roots.push_back(node0x1668f4d0);
dag->setRoot(node0x1668f4d0);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__AEXT_CLONE_:
    {
SDValue node0x16595b60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165a1440 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x16595b60, mpi, MVT::i8, 1);
SDValue node0x164dd250 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165a1440, SDValue());
roots.reserve(1);
roots.push_back(node0x164dd250);
dag->setRoot(node0x164dd250);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x165a28a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165a2380 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x165a2970 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x165a28a0, node0x165a2380);
SDValue node0x166bd980 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x165a2970, mpi, MVT::i8, 1);
SDValue node0x16717200 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x166bd980, SDValue());
roots.reserve(1);
roots.push_back(node0x16717200);
dag->setRoot(node0x16717200);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x1669f810 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16696610 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1669f810, mpi, MVT::i8, 1);
SDValue node0x1669b6a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16696610, SDValue());
roots.reserve(1);
roots.push_back(node0x1669b6a0);
dag->setRoot(node0x1669b6a0);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x1669f8c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16695b90 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x1669f8c0, mpi, MVT::i8, 1);
SDValue node0x1668ff00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16695b90, SDValue());
roots.reserve(1);
roots.push_back(node0x1668ff00);
dag->setRoot(node0x1668ff00);
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
SDValue node0x165a76f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165b2fd0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x165a76f0, mpi, MVT::i16, 1);
SDValue node0x166be4c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165b2fd0, SDValue());
roots.reserve(1);
roots.push_back(node0x166be4c0);
dag->setRoot(node0x166be4c0);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x165b4430 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165b3f10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x165b4500 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x165b4430, node0x165b3f10);
SDValue node0x166befd0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x165b4500, mpi, MVT::i16, 1);
SDValue node0x166bf060 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x166befd0, SDValue());
roots.reserve(1);
roots.push_back(node0x166bf060);
dag->setRoot(node0x166bf060);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x166a0ae0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166a0270 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x166a0ae0, mpi, MVT::i16, 1);
SDValue node0x1669f450 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x166a0270, SDValue());
roots.reserve(1);
roots.push_back(node0x1669f450);
dag->setRoot(node0x1669f450);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x166a0b90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16695ae0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x166a0b90, mpi, MVT::i16, 1);
SDValue node0x166ea620 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16695ae0, SDValue());
roots.reserve(1);
roots.push_back(node0x166ea620);
dag->setRoot(node0x166ea620);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__AEXT_CLONE_:
    {
SDValue node0x165b9260 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165c4b40 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x165b9260, mpi, MVT::i16, 1);
SDValue node0x166bfc70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165c4b40, SDValue());
roots.reserve(1);
roots.push_back(node0x166bfc70);
dag->setRoot(node0x166bfc70);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x165c5fa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165c5a80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x165c6070 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x165c5fa0, node0x165c5a80);
SDValue node0x166c0780 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x165c6070, mpi, MVT::i16, 1);
SDValue node0x166c0810 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x166c0780, SDValue());
roots.reserve(1);
roots.push_back(node0x166c0810);
dag->setRoot(node0x166c0810);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x166a1450 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16694ef0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x166a1450, mpi, MVT::i16, 1);
SDValue node0x1669d800 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16694ef0, SDValue());
roots.reserve(1);
roots.push_back(node0x1669d800);
dag->setRoot(node0x1669d800);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x166a1500 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165cada0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x166a1500, mpi, MVT::i16, 1);
SDValue node0x16698bc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165cada0, SDValue());
roots.reserve(1);
roots.push_back(node0x16698bc0);
dag->setRoot(node0x16698bc0);
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
SDValue node0x166a2720 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166a27d0 = dag->getLoad(MVT::i32, dl, entry, node0x166a2720, mpi, 1);
SDValue node0x166a1090 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x166a27d0, SDValue());
roots.reserve(1);
roots.push_back(node0x166a1090);
dag->setRoot(node0x166a1090);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_:
    {
SDValue node0x166a2e30 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x166a3050 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x166a2dd0 = dag->getStore(entry, dl, node0x166a2e30, node0x166a3050, mpi, 1);
roots.reserve(1);
roots.push_back(node0x166a2dd0);
dag->setRoot(node0x166a2dd0);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x166a3840 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x166a38f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16698dc0 = dag->getTruncStore(entry, dl, node0x166a3840, node0x166a38f0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x16698dc0);
dag->setRoot(node0x16698dc0);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_:
    {
SDValue node0x166a3f90 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x166a41b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x166a3f30 = dag->getStore(entry, dl, node0x166a3f90, node0x166a41b0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x166a3f30);
dag->setRoot(node0x166a3f30);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x166a4a10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x166a4ac0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1669b860 = dag->getTruncStore(entry, dl, node0x166a4a10, node0x166a4ac0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x1669b860);
dag->setRoot(node0x1669b860);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_simple__regs__immspec_1_:
    {
SDValue node0x166a5160 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x166a52e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x166a5100 = dag->getStore(entry, dl, node0x166a5160, node0x166a52e0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x166a5100);
dag->setRoot(node0x166a5100);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x166a5b40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x166a5bf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166a5980 = dag->getStore(entry, dl, node0x166a5b40, node0x166a5bf0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x166a5980);
dag->setRoot(node0x166a5980);
    }
    break;
  case Codasip::i_jal__opc_jal__reg0__rel_addr20__:
    {
SDValue node0x16562170 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x16562360 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x16562170);
roots.reserve(1);
roots.push_back(node0x16562360);
dag->setRoot(node0x16562360);
    }
    break;
  case Codasip::i_jal__opc_jal__regs__rel_addr20__:
    {
SDValue node0x16563120 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x165617a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16563120, SDValue());
SDValue node0x16563530 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x16563720 = dag->getNode(ISD::BR, dl, MVT::Other, node0x165617a0, node0x16563530);
roots.reserve(2);
roots.push_back(node0x165617a0);
roots.push_back(node0x16563720);
dag->setRoot(node0x16563720);
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
SDValue node0x164cafd0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x164caf30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x164cafd0, SDValue());
roots.reserve(1);
roots.push_back(node0x164caf30);
dag->setRoot(node0x164caf30);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__reg0__:
    {
SDValue node0x164d8b80 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x164d8ae0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x164d8b80, SDValue());
roots.reserve(1);
roots.push_back(node0x164d8ae0);
dag->setRoot(node0x164d8ae0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__:
    {
SDValue node0x164e6730 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x164e6690 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x164e6730, SDValue());
roots.reserve(1);
roots.push_back(node0x164e6690);
dag->setRoot(node0x164e6690);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__:
    {
SDValue node0x164f42e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x164f4240 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x164f42e0, SDValue());
roots.reserve(1);
roots.push_back(node0x164f4240);
dag->setRoot(node0x164f4240);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0__:
    {
SDValue node0x16501ef0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16501e50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16501ef0, SDValue());
roots.reserve(1);
roots.push_back(node0x16501e50);
dag->setRoot(node0x16501e50);
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
SDValue node0x16614600 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166136a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16614600, SDValue());
roots.reserve(1);
roots.push_back(node0x166136a0);
dag->setRoot(node0x166136a0);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_simple__:
    {
SDValue node0x16616bc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16616c70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16616d10 = dag->getNode(ISD::OR, dl, MVT::i32, node0x16616bc0, node0x16616c70);
SDValue node0x16615980 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16616d10, SDValue());
roots.reserve(1);
roots.push_back(node0x16615980);
dag->setRoot(node0x16615980);
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
SDValue node0x167b7cc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1668c2c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x167b7cc0, SDValue());
roots.reserve(1);
roots.push_back(node0x1668c2c0);
dag->setRoot(node0x1668c2c0);
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
SDValue node0x16252500 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16252580 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16253080 = dag->getTruncStore(entry, dl, node0x16252500, node0x16252580, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x16253080);
dag->setRoot(node0x16253080);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__i32_TRUNC_CLONE_:
    {
SDValue node0x16252400 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x162522e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16252480 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1624e860 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x162522e0, node0x16252480);
SDValue node0x16253a00 = dag->getTruncStore(entry, dl, node0x16252400, node0x1624e860, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x16253a00);
dag->setRoot(node0x16253a00);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_:
    {
SDValue node0x16252600 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16254020 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16254310 = dag->getTruncStore(entry, dl, node0x16252600, node0x16254020, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x16254310);
dag->setRoot(node0x16254310);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__i32_TRUNC_CLONE_:
    {
SDValue node0x16254930 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1624e460 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x162549b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1624d520 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1624e460, node0x162549b0);
SDValue node0x16254d90 = dag->getTruncStore(entry, dl, node0x16254930, node0x1624d520, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x16254d90);
dag->setRoot(node0x16254d90);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_:
    {
SDValue node0x16255120 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16252250 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16255310 = dag->getTruncStore(entry, dl, node0x16255120, node0x16252250, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x16255310);
dag->setRoot(node0x16255310);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_:
    {
SDValue node0x16255700 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16252370 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x162558e0 = dag->getTruncStore(entry, dl, node0x16255700, node0x16252370, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x162558e0);
dag->setRoot(node0x162558e0);
    }
    break;
  case Codasip::i_jump_reg_alias__regs___RET_EMUL_:
    {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__0_REG_EMUL_:
    {
SDValue node0x16255cf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x162571f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16257410 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1625c2c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x162571f0, node0x16257410);
SDValue node0x162520e0 = dag->getStore(entry, dl, node0x16255cf0, node0x1625c2c0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x162520e0);
dag->setRoot(node0x162520e0);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__1_BIGIMM_EMUL_:
    {
SDValue node0x162562d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16256fa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1625b150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1625b7e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x16256fa0, node0x1625b150);
SDValue node0x16257d40 = dag->getStore(entry, dl, node0x162562d0, node0x1625b7e0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x16257d40);
dag->setRoot(node0x16257d40);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__2_REG_EMUL_:
    {
SDValue node0x16255b00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1625c040 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1625c8f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x16255b00, node0x1625c040);
SDValue node0x1625a2a0 = dag->getLoad(MVT::i32, dl, entry, node0x1625c8f0, mpi, 1);
SDValue node0x1625d130 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1625a2a0, SDValue());
roots.reserve(1);
roots.push_back(node0x1625d130);
dag->setRoot(node0x1625d130);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__3_BIGIMM_EMUL_:
    {
SDValue node0x1625b250 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1625e530 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1625b0e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1625b250, node0x1625e530);
SDValue node0x1625c860 = dag->getLoad(MVT::i32, dl, entry, node0x1625b0e0, mpi, 1);
SDValue node0x1625e5e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1625c860, SDValue());
roots.reserve(1);
roots.push_back(node0x1625e5e0);
dag->setRoot(node0x1625e5e0);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__4_BIGIMM_EMUL_:
    {
SDValue node0x1625aee0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16259e90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1625ed70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1625b770 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x16259e90, node0x1625ed70);
SDValue node0x16255e40 = dag->getStore(entry, dl, node0x1625aee0, node0x1625b770, mpi, 1);
roots.reserve(1);
roots.push_back(node0x16255e40);
dag->setRoot(node0x16255e40);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__5_BIGIMM_EMUL_:
    {
SDValue node0x1625c4f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1625f8f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1625c7f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1625c4f0, node0x1625f8f0);
SDValue node0x162566d0 = dag->getLoad(MVT::i32, dl, entry, node0x1625c7f0, mpi, 1);
SDValue node0x1625f970 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x162566d0, SDValue());
roots.reserve(1);
roots.push_back(node0x1625f970);
dag->setRoot(node0x1625f970);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__6_BIGIMM_EMUL_:
    {
SDValue node0x1625c0d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16260410 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1625b700 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1625c0d0, node0x16260410);
SDValue node0x16260490 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1625b700, SDValue());
roots.reserve(1);
roots.push_back(node0x16260490);
dag->setRoot(node0x16260490);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__7_BIGIMM_EMUL_:
    {
SDValue node0x1625aa30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16260fd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1625af70 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1625aa30, node0x16260fd0);
SDValue node0x16261050 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1625af70, SDValue());
roots.reserve(1);
roots.push_back(node0x16261050);
dag->setRoot(node0x16261050);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__8_BIGIMM_EMUL_:
    {
SDValue node0x16260a00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16261b80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16259fe0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x16260a00, node0x16261b80);
SDValue node0x16261c00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16259fe0, SDValue());
roots.reserve(1);
roots.push_back(node0x16261c00);
dag->setRoot(node0x16261c00);
    }
    break;
  case Codasip::c_addi_lo__opc_addi__regs__regs__:
    {
SDValue node0x16209500 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x162176a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16810f50 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x16209500, node0x162176a0);
SDValue node0x16810f00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16810f50, SDValue());
roots.reserve(1);
roots.push_back(node0x16810f00);
dag->setRoot(node0x16810f00);
    }
    break;
  case Codasip::c_lui_hi__opc_lui__regs__:
    {
SDValue node0x16436f70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16811130 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16436f70, SDValue());
roots.reserve(1);
roots.push_back(node0x16811130);
dag->setRoot(node0x16811130);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_lo__:
    {
SDValue node0x16445300 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16444fe0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16445300, SDValue());
roots.reserve(1);
roots.push_back(node0x16444fe0);
dag->setRoot(node0x16444fe0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x16445f80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16445430 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16445f80, SDValue());
roots.reserve(1);
roots.push_back(node0x16445430);
dag->setRoot(node0x16445430);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_lo__:
    {
SDValue node0x16448560 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x161fd900 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x161fd9a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x16448560, node0x161fd900);
SDValue node0x161fd5a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x161fd9a0, SDValue());
roots.reserve(1);
roots.push_back(node0x161fd5a0);
dag->setRoot(node0x161fd5a0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x1622fbf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x161fe820 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x161fe8c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1622fbf0, node0x161fe820);
SDValue node0x161fdbb0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x161fe8c0, SDValue());
roots.reserve(1);
roots.push_back(node0x161fdbb0);
dag->setRoot(node0x161fdbb0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_lo__:
    {
SDValue node0x1620db30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1621f200 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1621f2a0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x1620db30, node0x1621f200);
SDValue node0x1621ee20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1621f2a0, SDValue());
roots.reserve(1);
roots.push_back(node0x1621ee20);
dag->setRoot(node0x1621ee20);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x16216f70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16220120 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x162201c0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x16216f70, node0x16220120);
SDValue node0x1621f4b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x162201c0, SDValue());
roots.reserve(1);
roots.push_back(node0x1621f4b0);
dag->setRoot(node0x1621f4b0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_lo__:
    {
SDValue node0x1622a5b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1622a290 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1622a5b0, SDValue());
roots.reserve(1);
roots.push_back(node0x1622a290);
dag->setRoot(node0x1622a290);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x1622b230 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1622a6e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1622b230, SDValue());
roots.reserve(1);
roots.push_back(node0x1622a6e0);
dag->setRoot(node0x1622a6e0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_lo__:
    {
SDValue node0x1622df60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1622e290 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1622e330 = dag->getNode(ISD::OR, dl, MVT::i32, node0x1622df60, node0x1622e290);
SDValue node0x1622de20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1622e330, SDValue());
roots.reserve(1);
roots.push_back(node0x1622de20);
dag->setRoot(node0x1622de20);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x1622ef10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1622f240 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1622f2e0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x1622ef10, node0x1622f240);
SDValue node0x1622e540 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1622f2e0, SDValue());
roots.reserve(1);
roots.push_back(node0x1622e540);
dag->setRoot(node0x1622e540);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_lo__:
    {
SDValue node0x164527b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16452890 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16452930 = dag->getSetCC(dl, MVT::i32, node0x16452890, node0x164527b0, ISD::SETGT);
SDValue node0x16452570 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16452930, SDValue());
roots.reserve(1);
roots.push_back(node0x16452570);
dag->setRoot(node0x16452570);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x164536a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x16453780 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16453820 = dag->getSetCC(dl, MVT::i32, node0x16453780, node0x164536a0, ISD::SETGT);
SDValue node0x16452c00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16453820, SDValue());
roots.reserve(1);
roots.push_back(node0x16452c00);
dag->setRoot(node0x16452c00);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_lo__:
    {
SDValue node0x16456800 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16456b30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16456bd0 = dag->getSetCC(dl, MVT::i32, node0x16456800, node0x16456b30, ISD::SETLT);
SDValue node0x164566c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16456bd0, SDValue());
roots.reserve(1);
roots.push_back(node0x164566c0);
dag->setRoot(node0x164566c0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x164578c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16457bf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16457c90 = dag->getSetCC(dl, MVT::i32, node0x164578c0, node0x16457bf0, ISD::SETLT);
SDValue node0x16456ef0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16457c90, SDValue());
roots.reserve(1);
roots.push_back(node0x16456ef0);
dag->setRoot(node0x16456ef0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_lo__:
    {
SDValue node0x164623f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x164624d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16462570 = dag->getSetCC(dl, MVT::i32, node0x164624d0, node0x164623f0, ISD::SETNE);
SDValue node0x164621b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16462570, SDValue());
roots.reserve(1);
roots.push_back(node0x164621b0);
dag->setRoot(node0x164621b0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x164632e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x164633c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16463460 = dag->getSetCC(dl, MVT::i32, node0x164633c0, node0x164632e0, ISD::SETNE);
SDValue node0x16462840 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16463460, SDValue());
roots.reserve(1);
roots.push_back(node0x16462840);
dag->setRoot(node0x16462840);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_lo__:
    {
SDValue node0x16466440 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16466770 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16466810 = dag->getSetCC(dl, MVT::i32, node0x16466440, node0x16466770, ISD::SETULT);
SDValue node0x16466300 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16466810, SDValue());
roots.reserve(1);
roots.push_back(node0x16466300);
dag->setRoot(node0x16466300);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x16467500 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16467830 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x164678d0 = dag->getSetCC(dl, MVT::i32, node0x16467500, node0x16467830, ISD::SETULT);
SDValue node0x16466b30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x164678d0, SDValue());
roots.reserve(1);
roots.push_back(node0x16466b30);
dag->setRoot(node0x16466b30);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_lo__:
    {
SDValue node0x16472110 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16471df0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16472110, SDValue());
roots.reserve(1);
roots.push_back(node0x16471df0);
dag->setRoot(node0x16471df0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x16472d90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16472240 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16472d90, SDValue());
roots.reserve(1);
roots.push_back(node0x16472240);
dag->setRoot(node0x16472240);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_lo__:
    {
SDValue node0x16475c00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16475f30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16475fd0 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x16475c00, node0x16475f30);
SDValue node0x16475ac0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16475fd0, SDValue());
roots.reserve(1);
roots.push_back(node0x16475ac0);
dag->setRoot(node0x16475ac0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x16476bb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16476ee0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16476f80 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x16476bb0, node0x16476ee0);
SDValue node0x164761e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16476f80, SDValue());
roots.reserve(1);
roots.push_back(node0x164761e0);
dag->setRoot(node0x164761e0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_lo__:
    {
SDValue node0x16565640 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x16565340 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x16565640);
roots.reserve(1);
roots.push_back(node0x16565340);
dag->setRoot(node0x16565340);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_pcrel_lo__:
    {
SDValue node0x165660c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x16565df0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x165660c0);
roots.reserve(1);
roots.push_back(node0x16565df0);
dag->setRoot(node0x16565df0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_lo__:
    {
SDValue node0x1656f7d0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1656df20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1656f7d0, SDValue());
SDValue node0x1656fb40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1656f7a0 = dag->getNode(ISD::BR, dl, MVT::Other, node0x1656df20, node0x1656fb40);
roots.reserve(2);
roots.push_back(node0x1656df20);
roots.push_back(node0x1656f7a0);
dag->setRoot(node0x1656f7a0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x165704e0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1656fd20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165704e0, SDValue());
SDValue node0x16570850 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x165704b0 = dag->getNode(ISD::BR, dl, MVT::Other, node0x1656fd20, node0x16570850);
roots.reserve(2);
roots.push_back(node0x1656fd20);
roots.push_back(node0x165704b0);
dag->setRoot(node0x165704b0);
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
SDValue node0x1658a970 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16581390 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1658a970, mpi, MVT::i8, 1);
SDValue node0x16589d60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16581390, SDValue());
roots.reserve(1);
roots.push_back(node0x16589d60);
dag->setRoot(node0x16589d60);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_lo__regs__:
    {
SDValue node0x1658bd50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1658c080 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1658c120 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1658bd50, node0x1658c080);
SDValue node0x1658aa10 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1658c120, mpi, MVT::i8, 1);
SDValue node0x1658acc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1658aa10, SDValue());
roots.reserve(1);
roots.push_back(node0x1658acc0);
dag->setRoot(node0x1658acc0);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x1658d130 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1658c1b0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1658d130, mpi, MVT::i8, 1);
SDValue node0x1658c550 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1658c1b0, SDValue());
roots.reserve(1);
roots.push_back(node0x1658c550);
dag->setRoot(node0x1658c550);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x1658e400 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1658e730 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1658e7d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1658e400, node0x1658e730);
SDValue node0x1658d1d0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1658e7d0, mpi, MVT::i8, 1);
SDValue node0x1658c370 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1658d1d0, SDValue());
roots.reserve(1);
roots.push_back(node0x1658c370);
dag->setRoot(node0x1658c370);
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
SDValue node0x1659c410 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1658e860 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1659c410, mpi, MVT::i8, 1);
SDValue node0x1659b980 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1658e860, SDValue());
roots.reserve(1);
roots.push_back(node0x1659b980);
dag->setRoot(node0x1659b980);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_lo__regs__:
    {
SDValue node0x1659d8c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1659dbf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1659dc90 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1659d8c0, node0x1659dbf0);
SDValue node0x1659c4b0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1659dc90, mpi, MVT::i8, 1);
SDValue node0x1659c760 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1659c4b0, SDValue());
roots.reserve(1);
roots.push_back(node0x1659c760);
dag->setRoot(node0x1659c760);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x1659ecf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1659dd20 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1659ecf0, mpi, MVT::i8, 1);
SDValue node0x1659e070 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1659dd20, SDValue());
roots.reserve(1);
roots.push_back(node0x1659e070);
dag->setRoot(node0x1659e070);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x1659ff70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165a02a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x165a0340 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1659ff70, node0x165a02a0);
SDValue node0x1659ed90 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x165a0340, mpi, MVT::i8, 1);
SDValue node0x1659df30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1659ed90, SDValue());
roots.reserve(1);
roots.push_back(node0x1659df30);
dag->setRoot(node0x1659df30);
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
SDValue node0x165adfa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165a03d0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x165adfa0, mpi, MVT::i16, 1);
SDValue node0x165ad390 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165a03d0, SDValue());
roots.reserve(1);
roots.push_back(node0x165ad390);
dag->setRoot(node0x165ad390);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_lo__regs__:
    {
SDValue node0x165af450 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165af780 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x165af820 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x165af450, node0x165af780);
SDValue node0x165ae040 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x165af820, mpi, MVT::i16, 1);
SDValue node0x165ae2f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165ae040, SDValue());
roots.reserve(1);
roots.push_back(node0x165ae2f0);
dag->setRoot(node0x165ae2f0);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x165b0830 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165af8b0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x165b0830, mpi, MVT::i16, 1);
SDValue node0x165afc50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165af8b0, SDValue());
roots.reserve(1);
roots.push_back(node0x165afc50);
dag->setRoot(node0x165afc50);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x165b1b00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165b1e30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x165b1ed0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x165b1b00, node0x165b1e30);
SDValue node0x165b08d0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x165b1ed0, mpi, MVT::i16, 1);
SDValue node0x165afa70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165b08d0, SDValue());
roots.reserve(1);
roots.push_back(node0x165afa70);
dag->setRoot(node0x165afa70);
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
SDValue node0x165bfb10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165b1f60 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x165bfb10, mpi, MVT::i16, 1);
SDValue node0x165bf080 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165b1f60, SDValue());
roots.reserve(1);
roots.push_back(node0x165bf080);
dag->setRoot(node0x165bf080);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_lo__regs__:
    {
SDValue node0x165c0fc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165c12f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x165c1390 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x165c0fc0, node0x165c12f0);
SDValue node0x165bfbb0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x165c1390, mpi, MVT::i16, 1);
SDValue node0x165bfe60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165bfbb0, SDValue());
roots.reserve(1);
roots.push_back(node0x165bfe60);
dag->setRoot(node0x165bfe60);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x165c23f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165c1420 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x165c23f0, mpi, MVT::i16, 1);
SDValue node0x165c1770 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165c1420, SDValue());
roots.reserve(1);
roots.push_back(node0x165c1770);
dag->setRoot(node0x165c1770);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x165c3670 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165c39a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x165c3a40 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x165c3670, node0x165c39a0);
SDValue node0x165c2490 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x165c3a40, mpi, MVT::i16, 1);
SDValue node0x165c1630 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165c2490, SDValue());
roots.reserve(1);
roots.push_back(node0x165c1630);
dag->setRoot(node0x165c1630);
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
SDValue node0x165d13b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165d1450 = dag->getLoad(MVT::i32, dl, entry, node0x165d13b0, mpi, 1);
SDValue node0x165d07a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165d1450, SDValue());
roots.reserve(1);
roots.push_back(node0x165d07a0);
dag->setRoot(node0x165d07a0);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_lo__regs__:
    {
SDValue node0x165d27b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165d2ae0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x165d2b80 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x165d27b0, node0x165d2ae0);
SDValue node0x165d2c10 = dag->getLoad(MVT::i32, dl, entry, node0x165d2b80, mpi, 1);
SDValue node0x165d1600 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165d2c10, SDValue());
roots.reserve(1);
roots.push_back(node0x165d1600);
dag->setRoot(node0x165d1600);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x165d3a90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165d3b30 = dag->getLoad(MVT::i32, dl, entry, node0x165d3a90, mpi, 1);
SDValue node0x165d2eb0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165d3b30, SDValue());
roots.reserve(1);
roots.push_back(node0x165d2eb0);
dag->setRoot(node0x165d2eb0);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x165d4d00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165d5030 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x165d50d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x165d4d00, node0x165d5030);
SDValue node0x165d5160 = dag->getLoad(MVT::i32, dl, entry, node0x165d50d0, mpi, 1);
SDValue node0x165d2dc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165d5160, SDValue());
roots.reserve(1);
roots.push_back(node0x165d2dc0);
dag->setRoot(node0x165d2dc0);
    }
    break;
  case Codasip::i_lui_hi__opc_lui__regs__imm20_hi__:
    {
SDValue node0x165f4580 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x165f4600 = dag->getConstant(2048LL, dl, MVT::i32);
SDValue node0x165f46c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x165f4580, node0x165f4600);
SDValue node0x165f4730 = dag->getConstant(-4096LL, dl, MVT::i32);
SDValue node0x165f47f0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x165f46c0, node0x165f4730);
SDValue node0x165f4290 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x165f47f0, SDValue());
roots.reserve(1);
roots.push_back(node0x165f4290);
dag->setRoot(node0x165f4290);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__reg0__simm12_lo__:
    {
SDValue node0x16612f60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166100a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16612f60, SDValue());
roots.reserve(1);
roots.push_back(node0x166100a0);
dag->setRoot(node0x166100a0);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x16613b00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16613090 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16613b00, SDValue());
roots.reserve(1);
roots.push_back(node0x16613090);
dag->setRoot(node0x16613090);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_lo__:
    {
SDValue node0x16614e30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16615160 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16615200 = dag->getNode(ISD::OR, dl, MVT::i32, node0x16614e30, node0x16615160);
SDValue node0x166141a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16615200, SDValue());
roots.reserve(1);
roots.push_back(node0x166141a0);
dag->setRoot(node0x166141a0);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x16615c30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16615f60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16616000 = dag->getNode(ISD::OR, dl, MVT::i32, node0x16615c30, node0x16615f60);
SDValue node0x16615370 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16616000, SDValue());
roots.reserve(1);
roots.push_back(node0x16615370);
dag->setRoot(node0x16615370);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_lo__reg0__:
    {
SDValue node0x16626270 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x16626510 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x164ffdc0 = dag->getStore(entry, dl, node0x16626270, node0x16626510, mpi, 1);
roots.reserve(1);
roots.push_back(node0x164ffdc0);
dag->setRoot(node0x164ffdc0);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_lo__regs__:
    {
SDValue node0x16627390 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x166274f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16627780 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16627820 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x166274f0, node0x16627780);
SDValue node0x166278b0 = dag->getStore(entry, dl, node0x16627390, node0x16627820, mpi, 1);
roots.reserve(1);
roots.push_back(node0x166278b0);
dag->setRoot(node0x166278b0);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x16628430 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x166286d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16628770 = dag->getStore(entry, dl, node0x16628430, node0x166286d0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x16628770);
dag->setRoot(node0x16628770);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x16629920 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x16629a80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16629d10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16629db0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x16629a80, node0x16629d10);
SDValue node0x16629e40 = dag->getStore(entry, dl, node0x16629920, node0x16629db0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x16629e40);
dag->setRoot(node0x16629e40);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_lo__reg0__:
    {
SDValue node0x16631940 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16631c80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166e3240 = dag->getTruncStore(entry, dl, node0x16631940, node0x16631c80, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x166e3240);
dag->setRoot(node0x166e3240);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_lo__regs__:
    {
SDValue node0x16632fd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x166331d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16633460 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16633500 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x166331d0, node0x16633460);
SDValue node0x166e3420 = dag->getTruncStore(entry, dl, node0x16632fd0, node0x16633500, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x166e3420);
dag->setRoot(node0x166e3420);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x16634250 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16634590 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166e3620 = dag->getTruncStore(entry, dl, node0x16634250, node0x16634590, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x166e3620);
dag->setRoot(node0x166e3620);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x16635860 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16635a60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16635cf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16635d90 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x16635a60, node0x16635cf0);
SDValue node0x166e3800 = dag->getTruncStore(entry, dl, node0x16635860, node0x16635d90, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x166e3800);
dag->setRoot(node0x166e3800);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_lo__reg0__:
    {
SDValue node0x16638e70 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x16639110 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x166391b0 = dag->getStore(entry, dl, node0x16638e70, node0x16639110, mpi, 1);
roots.reserve(1);
roots.push_back(node0x166391b0);
dag->setRoot(node0x166391b0);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_lo__regs__:
    {
SDValue node0x1663a170 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x1663a2d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1663a560 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1663a600 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1663a2d0, node0x1663a560);
SDValue node0x1663a690 = dag->getStore(entry, dl, node0x1663a170, node0x1663a600, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1663a690);
dag->setRoot(node0x1663a690);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x1663b210 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x1663b4b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1663b550 = dag->getStore(entry, dl, node0x1663b210, node0x1663b4b0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1663b550);
dag->setRoot(node0x1663b550);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x1663c700 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x1663c860 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1663caf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1663cb90 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1663c860, node0x1663caf0);
SDValue node0x1663cc20 = dag->getStore(entry, dl, node0x1663c700, node0x1663cb90, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1663cc20);
dag->setRoot(node0x1663cc20);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_lo__reg0__:
    {
SDValue node0x16644910 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16644c50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166e44e0 = dag->getTruncStore(entry, dl, node0x16644910, node0x16644c50, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x166e44e0);
dag->setRoot(node0x166e44e0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_lo__regs__:
    {
SDValue node0x16645fa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x166461a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16646430 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x166464d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x166461a0, node0x16646430);
SDValue node0x166e46c0 = dag->getTruncStore(entry, dl, node0x16645fa0, node0x166464d0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x166e46c0);
dag->setRoot(node0x166e46c0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x16647220 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16647560 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x166e48c0 = dag->getTruncStore(entry, dl, node0x16647220, node0x16647560, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x166e48c0);
dag->setRoot(node0x166e48c0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x16648830 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16648a30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16648cc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16648d60 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x16648a30, node0x16648cc0);
SDValue node0x166e4aa0 = dag->getTruncStore(entry, dl, node0x16648830, node0x16648d60, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x166e4aa0);
dag->setRoot(node0x166e4aa0);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_lo__reg0__:
    {
SDValue node0x1664be40 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1664c040 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1664c0e0 = dag->getStore(entry, dl, node0x1664be40, node0x1664c040, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1664c0e0);
dag->setRoot(node0x1664c0e0);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_lo__regs__:
    {
SDValue node0x1664d0a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1664d200 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1664d3f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1664d490 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1664d200, node0x1664d3f0);
SDValue node0x1664d520 = dag->getStore(entry, dl, node0x1664d0a0, node0x1664d490, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1664d520);
dag->setRoot(node0x1664d520);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x1664e0a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1664e2a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1664e340 = dag->getStore(entry, dl, node0x1664e0a0, node0x1664e2a0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1664e340);
dag->setRoot(node0x1664e340);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x1664f4f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1664f650 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1664f840 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1664f8e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1664f650, node0x1664f840);
SDValue node0x1664f970 = dag->getStore(entry, dl, node0x1664f4f0, node0x1664f8e0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1664f970);
dag->setRoot(node0x1664f970);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_lo__reg0__:
    {
SDValue node0x16657520 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x166577b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16654fe0 = dag->getStore(entry, dl, node0x16657520, node0x166577b0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x16654fe0);
dag->setRoot(node0x16654fe0);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_lo__regs__:
    {
SDValue node0x16658b00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16658c50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16658ee0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x16658f80 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x16658c50, node0x16658ee0);
SDValue node0x16659010 = dag->getStore(entry, dl, node0x16658b00, node0x16658f80, mpi, 1);
roots.reserve(1);
roots.push_back(node0x16659010);
dag->setRoot(node0x16659010);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x16659c80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x16659f10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16659fb0 = dag->getStore(entry, dl, node0x16659c80, node0x16659f10, mpi, 1);
roots.reserve(1);
roots.push_back(node0x16659fb0);
dag->setRoot(node0x16659fb0);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x1665b230 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1665b380 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1665b610 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1665b6b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1665b380, node0x1665b610);
SDValue node0x1665b740 = dag->getStore(entry, dl, node0x1665b230, node0x1665b6b0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1665b740);
dag->setRoot(node0x1665b740);
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
SDValue node0x1668c0f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1668be20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1668c0f0, SDValue());
roots.reserve(1);
roots.push_back(node0x1668be20);
dag->setRoot(node0x1668be20);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__regs__simm12_simple__:
    {
SDValue node0x1656abb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1656ae50 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x1656abb0);
roots.reserve(1);
roots.push_back(node0x1656ae50);
dag->setRoot(node0x1656ae50);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__regs__simm12_simple__:
    {
SDValue node0x16575870 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x16573e80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x16575870, SDValue());
SDValue node0x16575d20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x16575fc0 = dag->getNode(ISD::BRIND, dl, MVT::Other, node0x16573e80, node0x16575d20);
roots.reserve(2);
roots.push_back(node0x16573e80);
roots.push_back(node0x16575fc0);
dag->setRoot(node0x16575fc0);
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
