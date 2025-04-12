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
SDValue node0x1574da60 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x15539650 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1574d870 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x15539650);
SDValue node0x1574ce10 = dag->getCopyToReg(node0x1574d870, dl, dag->getRegister(Codasip::rf_gpr_1, MVT::i32), node0x1574da60, SDValue());
roots.reserve(2);
roots.push_back(node0x1574ce10);
roots.push_back(node0x1574d870);
dag->setRoot(node0x1574ce10);
    } else     {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_jump_reg_alias__regs__:
    {
SDValue node0x1587d660 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1587d430 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x1587d660);
roots.reserve(1);
roots.push_back(node0x1587d430);
dag->setRoot(node0x1587d430);
    }
    break;
  case Codasip::i_jmp_rel_alias__rel_addr20__:
    {
SDValue node0x1587be00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x1587c080 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x1587be00);
roots.reserve(1);
roots.push_back(node0x1587c080);
dag->setRoot(node0x1587c080);
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
SDValue node0x15807ea0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x15861cf0 = dag->getConstant(-4LL, dl, MVT::i32);
SDValue node0x15861f10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15807ea0, node0x15861cf0);
SDValue node0x15861ca0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15861f10, SDValue());
roots.reserve(1);
roots.push_back(node0x15861ca0);
dag->setRoot(node0x15861ca0);
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
SDValue node0x159044c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15904470 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x159044c0, SDValue());
roots.reserve(1);
roots.push_back(node0x15904470);
dag->setRoot(node0x15904470);
    }
    break;
  case Codasip::i_mv_alias__regs__regs__:
    {
SDValue node0x15905550 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15905300 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15905550, SDValue());
roots.reserve(1);
roots.push_back(node0x15905300);
dag->setRoot(node0x15905300);
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
SDValue node0x15923420 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x159233d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15923420, SDValue());
roots.reserve(1);
roots.push_back(node0x159233d0);
dag->setRoot(node0x159233d0);
    }
    break;
  case Codasip::i_seqz_alias__regs__regs__:
    {
SDValue node0x159243d0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15924550 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15924600 = dag->getSetCC(dl, MVT::i32, node0x15924550, node0x159243d0, ISD::SETEQ);
SDValue node0x15924300 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15924600, SDValue());
roots.reserve(1);
roots.push_back(node0x15924300);
dag->setRoot(node0x15924300);
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
SDValue node0x1592dfd0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1592df80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1592dfd0, SDValue());
roots.reserve(1);
roots.push_back(node0x1592df80);
dag->setRoot(node0x1592df80);
    }
    break;
  case Codasip::i_snez_alias__regs__regs__:
    {
SDValue node0x1592eee0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1592f060 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1592f110 = dag->getSetCC(dl, MVT::i32, node0x1592f060, node0x1592eee0, ISD::SETNE);
SDValue node0x1592ee10 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1592f110, SDValue());
roots.reserve(1);
roots.push_back(node0x1592ee10);
dag->setRoot(node0x1592ee10);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__regs__simm12_simple__immspec_1_:
    {
SDValue node0x159a77e0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x159a5f20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x159a77e0, SDValue());
SDValue node0x159a7b50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159a7c90 = dag->getNode(ISD::BRIND, dl, MVT::Other, node0x159a5f20, node0x159a7b50);
roots.reserve(2);
roots.push_back(node0x159a5f20);
roots.push_back(node0x159a7c90);
dag->setRoot(node0x159a7c90);
    }
    break;
  case Codasip::i_call_rel_alias__rel_addr20__:
case Codasip::i_call_rel_alias__rel_addr20__ES:
case Codasip::i_call_rel_alias__rel_addr20__MC:
case Codasip::i_call_rel_alias__rel_addr20__BA:
    if (lowlevel) {
SDValue node0x1574e840 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1574ea50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x1574ecd0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x1574ea50);
SDValue node0x1574def0 = dag->getCopyToReg(node0x1574ecd0, dl, dag->getRegister(Codasip::rf_gpr_1, MVT::i32), node0x1574e840, SDValue());
roots.reserve(2);
roots.push_back(node0x1574def0);
roots.push_back(node0x1574ecd0);
dag->setRoot(node0x1574def0);
    } else     {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__:
    {
SDValue node0x15864c10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x15864910 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x15864c10);
roots.reserve(1);
roots.push_back(node0x15864910);
dag->setRoot(node0x15864910);
    }
    break;
  case Codasip::i_jal_abs__opc_jal__regs__rel_addr20__:
    {
SDValue node0x158651f0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x158641c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158651f0, SDValue());
SDValue node0x15865560 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15865190 = dag->getNode(ISD::BR, dl, MVT::Other, node0x158641c0, node0x15865560);
roots.reserve(2);
roots.push_back(node0x158641c0);
roots.push_back(node0x15865190);
dag->setRoot(node0x15865190);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__:
    {
SDValue node0x15a34290 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x15a34540 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x15a34290);
roots.reserve(1);
roots.push_back(node0x15a34540);
dag->setRoot(node0x15a34540);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x15a35810 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a35990 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a35a40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a35ae0 = dag->getSetCC(dl, MVT::iAny, node0x15a35990, node0x15a35810, ISD::SETEQ);
SDValue node0x15a35d00 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a35ae0, node0x15a35a40);
roots.reserve(1);
roots.push_back(node0x15a35d00);
dag->setRoot(node0x15a35d00);
    } else     {
SDValue node0x15a35810 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a35990 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a35a40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a35ae0 = dag->getSetCC(dl, MVT::i32, node0x15a35990, node0x15a35810, ISD::SETEQ);
SDValue node0x15a35d00 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a35ae0, node0x15a35a40);
roots.reserve(1);
roots.push_back(node0x15a35d00);
dag->setRoot(node0x15a35d00);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x15a381b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a38330 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a383e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a38480 = dag->getSetCC(dl, MVT::iAny, node0x15a38330, node0x15a381b0, ISD::SETEQ);
SDValue node0x15a386a0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a38480, node0x15a383e0);
roots.reserve(1);
roots.push_back(node0x15a386a0);
dag->setRoot(node0x15a386a0);
    } else     {
SDValue node0x15a381b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a38330 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a383e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a38480 = dag->getSetCC(dl, MVT::i32, node0x15a38330, node0x15a381b0, ISD::SETEQ);
SDValue node0x15a386a0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a38480, node0x15a383e0);
roots.reserve(1);
roots.push_back(node0x15a386a0);
dag->setRoot(node0x15a386a0);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x15a39e20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a39ed0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a39f80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x15a3a020 = dag->getSetCC(dl, MVT::iAny, node0x15a39ed0, node0x15a39e20, ISD::SETEQ);
SDValue node0x15a3a240 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a3a020, node0x15a39f80);
roots.reserve(1);
roots.push_back(node0x15a3a240);
dag->setRoot(node0x15a3a240);
    } else     {
SDValue node0x15a39e20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a39ed0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a39f80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x15a3a020 = dag->getSetCC(dl, MVT::i32, node0x15a39ed0, node0x15a39e20, ISD::SETEQ);
SDValue node0x15a3a240 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a3a020, node0x15a39f80);
roots.reserve(1);
roots.push_back(node0x15a3a240);
dag->setRoot(node0x15a3a240);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__:
    {
SDValue node0x15a3b1a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x15a3b450 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x15a3b1a0);
roots.reserve(1);
roots.push_back(node0x15a3b450);
dag->setRoot(node0x15a3b450);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x15a3c3b0 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x15a3c710 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a3c7c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a3c860 = dag->getSetCC(dl, MVT::iAny, node0x15a3c710, node0x15a3c3b0, ISD::SETLT);
SDValue node0x15a3ca80 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a3c860, node0x15a3c7c0);
roots.reserve(1);
roots.push_back(node0x15a3ca80);
dag->setRoot(node0x15a3ca80);
    } else     {
SDValue node0x15a3c3b0 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x15a3c710 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a3c7c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a3c860 = dag->getSetCC(dl, MVT::i32, node0x15a3c710, node0x15a3c3b0, ISD::SETLT);
SDValue node0x15a3ca80 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a3c860, node0x15a3c7c0);
roots.reserve(1);
roots.push_back(node0x15a3ca80);
dag->setRoot(node0x15a3ca80);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x15a3f070 = dag->getConstant(-1LL, dl, MVT::i32);
SDValue node0x15a3f150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a3f200 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a3f2a0 = dag->getSetCC(dl, MVT::iAny, node0x15a3f150, node0x15a3f070, ISD::SETGT);
SDValue node0x15a3f4c0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a3f2a0, node0x15a3f200);
roots.reserve(1);
roots.push_back(node0x15a3f4c0);
dag->setRoot(node0x15a3f4c0);
    } else     {
SDValue node0x15a3f070 = dag->getConstant(-1LL, dl, MVT::i32);
SDValue node0x15a3f150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a3f200 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a3f2a0 = dag->getSetCC(dl, MVT::i32, node0x15a3f150, node0x15a3f070, ISD::SETGT);
SDValue node0x15a3f4c0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a3f2a0, node0x15a3f200);
roots.reserve(1);
roots.push_back(node0x15a3f4c0);
dag->setRoot(node0x15a3f4c0);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x15a40c40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a40cf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a40da0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x15a40e40 = dag->getSetCC(dl, MVT::iAny, node0x15a40cf0, node0x15a40c40, ISD::SETGE);
SDValue node0x15a41060 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a40e40, node0x15a40da0);
roots.reserve(1);
roots.push_back(node0x15a41060);
dag->setRoot(node0x15a41060);
    } else     {
SDValue node0x15a40c40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a40cf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a40da0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x15a40e40 = dag->getSetCC(dl, MVT::i32, node0x15a40cf0, node0x15a40c40, ISD::SETGE);
SDValue node0x15a41060 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a40e40, node0x15a40da0);
roots.reserve(1);
roots.push_back(node0x15a41060);
dag->setRoot(node0x15a41060);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__:
    {
SDValue node0x15a41fc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x15a42270 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x15a41fc0);
roots.reserve(1);
roots.push_back(node0x15a42270);
dag->setRoot(node0x15a42270);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x15a433b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a43530 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a435e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a43680 = dag->getSetCC(dl, MVT::iAny, node0x15a43530, node0x15a433b0, ISD::SETEQ);
SDValue node0x15a438a0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a43680, node0x15a435e0);
roots.reserve(1);
roots.push_back(node0x15a438a0);
dag->setRoot(node0x15a438a0);
    } else     {
SDValue node0x15a433b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a43530 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a435e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a43680 = dag->getSetCC(dl, MVT::i32, node0x15a43530, node0x15a433b0, ISD::SETEQ);
SDValue node0x15a438a0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a43680, node0x15a435e0);
roots.reserve(1);
roots.push_back(node0x15a438a0);
dag->setRoot(node0x15a438a0);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x15a47950 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a47a00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a47ab0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x15a47b50 = dag->getSetCC(dl, MVT::iAny, node0x15a47a00, node0x15a47950, ISD::SETUGE);
SDValue node0x15a47d70 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a47b50, node0x15a47ab0);
roots.reserve(1);
roots.push_back(node0x15a47d70);
dag->setRoot(node0x15a47d70);
    } else     {
SDValue node0x15a47950 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a47a00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a47ab0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x15a47b50 = dag->getSetCC(dl, MVT::i32, node0x15a47a00, node0x15a47950, ISD::SETUGE);
SDValue node0x15a47d70 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a47b50, node0x15a47ab0);
roots.reserve(1);
roots.push_back(node0x15a47d70);
dag->setRoot(node0x15a47d70);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x15a499b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a49b30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a49be0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a49c80 = dag->getSetCC(dl, MVT::iAny, node0x15a49b30, node0x15a499b0, ISD::SETGT);
SDValue node0x15a49ea0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a49c80, node0x15a49be0);
roots.reserve(1);
roots.push_back(node0x15a49ea0);
dag->setRoot(node0x15a49ea0);
    } else     {
SDValue node0x15a499b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a49b30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a49be0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a49c80 = dag->getSetCC(dl, MVT::i32, node0x15a49b30, node0x15a499b0, ISD::SETGT);
SDValue node0x15a49ea0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a49c80, node0x15a49be0);
roots.reserve(1);
roots.push_back(node0x15a49ea0);
dag->setRoot(node0x15a49ea0);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x15a4c3a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a4c520 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a4c5d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a4c670 = dag->getSetCC(dl, MVT::iAny, node0x15a4c520, node0x15a4c3a0, ISD::SETLT);
SDValue node0x15a4c890 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a4c670, node0x15a4c5d0);
roots.reserve(1);
roots.push_back(node0x15a4c890);
dag->setRoot(node0x15a4c890);
    } else     {
SDValue node0x15a4c3a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a4c520 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a4c5d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a4c670 = dag->getSetCC(dl, MVT::i32, node0x15a4c520, node0x15a4c3a0, ISD::SETLT);
SDValue node0x15a4c890 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a4c670, node0x15a4c5d0);
roots.reserve(1);
roots.push_back(node0x15a4c890);
dag->setRoot(node0x15a4c890);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x15a4e010 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a4e0c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a4e170 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x15a4e210 = dag->getSetCC(dl, MVT::iAny, node0x15a4e0c0, node0x15a4e010, ISD::SETLT);
SDValue node0x15a4e430 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a4e210, node0x15a4e170);
roots.reserve(1);
roots.push_back(node0x15a4e430);
dag->setRoot(node0x15a4e430);
    } else     {
SDValue node0x15a4e010 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a4e0c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a4e170 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x15a4e210 = dag->getSetCC(dl, MVT::i32, node0x15a4e0c0, node0x15a4e010, ISD::SETLT);
SDValue node0x15a4e430 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a4e210, node0x15a4e170);
roots.reserve(1);
roots.push_back(node0x15a4e430);
dag->setRoot(node0x15a4e430);
    }
    break;
  case Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x15a50020 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a501a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a50250 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a502f0 = dag->getSetCC(dl, MVT::iAny, node0x15a501a0, node0x15a50020, ISD::SETNE);
SDValue node0x15a50510 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a502f0, node0x15a50250);
roots.reserve(1);
roots.push_back(node0x15a50510);
dag->setRoot(node0x15a50510);
    } else     {
SDValue node0x15a50020 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a501a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a50250 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a502f0 = dag->getSetCC(dl, MVT::i32, node0x15a501a0, node0x15a50020, ISD::SETNE);
SDValue node0x15a50510 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a502f0, node0x15a50250);
roots.reserve(1);
roots.push_back(node0x15a50510);
dag->setRoot(node0x15a50510);
    }
    break;
  case Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x15a53e10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a53ec0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a53f70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x15a54010 = dag->getSetCC(dl, MVT::iAny, node0x15a53ec0, node0x15a53e10, ISD::SETULT);
SDValue node0x15a54230 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a54010, node0x15a53f70);
roots.reserve(1);
roots.push_back(node0x15a54230);
dag->setRoot(node0x15a54230);
    } else     {
SDValue node0x15a53e10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a53ec0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a53f70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x15a54010 = dag->getSetCC(dl, MVT::i32, node0x15a53ec0, node0x15a53e10, ISD::SETULT);
SDValue node0x15a54230 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a54010, node0x15a53f70);
roots.reserve(1);
roots.push_back(node0x15a54230);
dag->setRoot(node0x15a54230);
    }
    break;
  case Codasip::i_control_conditional__opc_bne__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x15a55ec0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a56040 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a560f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a56190 = dag->getSetCC(dl, MVT::iAny, node0x15a56040, node0x15a55ec0, ISD::SETNE);
SDValue node0x15a563b0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a56190, node0x15a560f0);
roots.reserve(1);
roots.push_back(node0x15a563b0);
dag->setRoot(node0x15a563b0);
    } else     {
SDValue node0x15a55ec0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a56040 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a560f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a56190 = dag->getSetCC(dl, MVT::i32, node0x15a56040, node0x15a55ec0, ISD::SETNE);
SDValue node0x15a563b0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a56190, node0x15a560f0);
roots.reserve(1);
roots.push_back(node0x15a563b0);
dag->setRoot(node0x15a563b0);
    }
    break;
  case Codasip::i_control_conditional__opc_bne__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x15a588b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a58a30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a58ae0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a58b80 = dag->getSetCC(dl, MVT::iAny, node0x15a58a30, node0x15a588b0, ISD::SETNE);
SDValue node0x15a58da0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a58b80, node0x15a58ae0);
roots.reserve(1);
roots.push_back(node0x15a58da0);
dag->setRoot(node0x15a58da0);
    } else     {
SDValue node0x15a588b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a58a30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a58ae0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15a58b80 = dag->getSetCC(dl, MVT::i32, node0x15a58a30, node0x15a588b0, ISD::SETNE);
SDValue node0x15a58da0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a58b80, node0x15a58ae0);
roots.reserve(1);
roots.push_back(node0x15a58da0);
dag->setRoot(node0x15a58da0);
    }
    break;
  case Codasip::i_control_conditional__opc_bne__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x15a5a520 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a5a5d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a5a680 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x15a5a720 = dag->getSetCC(dl, MVT::iAny, node0x15a5a5d0, node0x15a5a520, ISD::SETNE);
SDValue node0x15a5a940 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a5a720, node0x15a5a680);
roots.reserve(1);
roots.push_back(node0x15a5a940);
dag->setRoot(node0x15a5a940);
    } else     {
SDValue node0x15a5a520 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a5a5d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15a5a680 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x15a5a720 = dag->getSetCC(dl, MVT::i32, node0x15a5a5d0, node0x15a5a520, ISD::SETNE);
SDValue node0x15a5a940 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x15a5a720, node0x15a5a680);
roots.reserve(1);
roots.push_back(node0x15a5a940);
dag->setRoot(node0x15a5a940);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x1599a280 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1599a4e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1599a590 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1599a640 = dag->getSetCC(dl, MVT::iAny, node0x1599a4e0, node0x1599a590, ISD::SETLE);
SDValue node0x1599a6e0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1599a640, node0x1599a280);
roots.reserve(1);
roots.push_back(node0x1599a6e0);
dag->setRoot(node0x1599a6e0);
    } else     {
SDValue node0x1599a280 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1599a4e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1599a590 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1599a640 = dag->getSetCC(dl, MVT::i32, node0x1599a4e0, node0x1599a590, ISD::SETLE);
SDValue node0x1599a6e0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1599a640, node0x1599a280);
roots.reserve(1);
roots.push_back(node0x1599a6e0);
dag->setRoot(node0x1599a6e0);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x1599b1a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1599b430 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1599b4e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1599b590 = dag->getSetCC(dl, MVT::iAny, node0x1599b430, node0x1599b4e0, ISD::SETULE);
SDValue node0x1599b660 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1599b590, node0x1599b1a0);
roots.reserve(1);
roots.push_back(node0x1599b660);
dag->setRoot(node0x1599b660);
    } else     {
SDValue node0x1599b1a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1599b430 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1599b4e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1599b590 = dag->getSetCC(dl, MVT::i32, node0x1599b430, node0x1599b4e0, ISD::SETULE);
SDValue node0x1599b660 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1599b590, node0x1599b1a0);
roots.reserve(1);
roots.push_back(node0x1599b660);
dag->setRoot(node0x1599b660);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x1599c070 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1599c300 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1599c3b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1599c460 = dag->getSetCC(dl, MVT::iAny, node0x1599c300, node0x1599c3b0, ISD::SETGT);
SDValue node0x1599c530 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1599c460, node0x1599c070);
roots.reserve(1);
roots.push_back(node0x1599c530);
dag->setRoot(node0x1599c530);
    } else     {
SDValue node0x1599c070 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1599c300 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1599c3b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1599c460 = dag->getSetCC(dl, MVT::i32, node0x1599c300, node0x1599c3b0, ISD::SETGT);
SDValue node0x1599c530 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1599c460, node0x1599c070);
roots.reserve(1);
roots.push_back(node0x1599c530);
dag->setRoot(node0x1599c530);
    }
    break;
  case Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x1599cf40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1599d1d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1599d280 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1599d330 = dag->getSetCC(dl, MVT::iAny, node0x1599d1d0, node0x1599d280, ISD::SETUGT);
SDValue node0x1599d400 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1599d330, node0x1599cf40);
roots.reserve(1);
roots.push_back(node0x1599d400);
dag->setRoot(node0x1599d400);
    } else     {
SDValue node0x1599cf40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1599d1d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1599d280 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1599d330 = dag->getSetCC(dl, MVT::i32, node0x1599d1d0, node0x1599d280, ISD::SETUGT);
SDValue node0x1599d400 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1599d330, node0x1599cf40);
roots.reserve(1);
roots.push_back(node0x1599d400);
dag->setRoot(node0x1599d400);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__:
    {
SDValue node0x15867540 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x15867270 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x15867540);
roots.reserve(1);
roots.push_back(node0x15867270);
dag->setRoot(node0x15867270);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_simple__:
    {
SDValue node0x15871b00 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x15871220 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15871b00, SDValue());
SDValue node0x15871e70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15871ad0 = dag->getNode(ISD::BR, dl, MVT::Other, node0x15871220, node0x15871e70);
roots.reserve(2);
roots.push_back(node0x15871220);
roots.push_back(node0x15871ad0);
dag->setRoot(node0x15871ad0);
    }
    break;
  case Codasip::i_auipc__opc_auipc__regs__imm20_s12__:
    {
SDValue node0x1552bc20 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1552bf10 = dag->getConstant(-4LL, dl, MVT::i32);
SDValue node0x1552c130 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1552c1d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1552bc20, node0x1552c130);
SDValue node0x1552c260 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1552c1d0, node0x1552bf10);
SDValue node0x1552bbd0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1552c260, SDValue());
roots.reserve(1);
roots.push_back(node0x1552bbd0);
dag->setRoot(node0x1552bbd0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__:
    {
SDValue node0x15ac7830 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15ac6620 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15ac7830, SDValue());
roots.reserve(1);
roots.push_back(node0x15ac6620);
dag->setRoot(node0x15ac6620);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__:
    {
SDValue node0x157514a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15acc140 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15acc1e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x157514a0, node0x15acc140);
SDValue node0x15acac60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15acc1e0, SDValue());
roots.reserve(1);
roots.push_back(node0x15acac60);
dag->setRoot(node0x15acac60);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__:
    {
SDValue node0x15abfca0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15af3410 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15af34b0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x15abfca0, node0x15af3410);
SDValue node0x15af1f30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15af34b0, SDValue());
roots.reserve(1);
roots.push_back(node0x15af1f30);
dag->setRoot(node0x15af1f30);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__:
    {
SDValue node0x15afe240 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15afd0d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15afe240, SDValue());
roots.reserve(1);
roots.push_back(node0x15afd0d0);
dag->setRoot(node0x15afd0d0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__:
    {
SDValue node0x15b023e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15b02490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15b02530 = dag->getNode(ISD::OR, dl, MVT::i32, node0x15b023e0, node0x15b02490);
SDValue node0x15b00f30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15b02530, SDValue());
roots.reserve(1);
roots.push_back(node0x15b00f30);
dag->setRoot(node0x15b00f30);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__:
    {
SDValue node0x15753080 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15753160 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15753200 = dag->getSetCC(dl, MVT::i32, node0x15753160, node0x15753080, ISD::SETGT);
SDValue node0x157221b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15753200, SDValue());
roots.reserve(1);
roots.push_back(node0x157221b0);
dag->setRoot(node0x157221b0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:
    {
SDValue node0x157576a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15757750 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x157577f0 = dag->getSetCC(dl, MVT::i32, node0x157576a0, node0x15757750, ISD::SETLT);
SDValue node0x15756090 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157577f0, SDValue());
roots.reserve(1);
roots.push_back(node0x15756090);
dag->setRoot(node0x15756090);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__:
    {
SDValue node0x15762cc0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15762da0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15762e40 = dag->getSetCC(dl, MVT::i32, node0x15762da0, node0x15762cc0, ISD::SETNE);
SDValue node0x157619e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15762e40, SDValue());
roots.reserve(1);
roots.push_back(node0x157619e0);
dag->setRoot(node0x157619e0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:
    {
SDValue node0x157672e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15767390 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15767430 = dag->getSetCC(dl, MVT::i32, node0x157672e0, node0x15767390, ISD::SETULT);
SDValue node0x15765cd0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15767430, SDValue());
roots.reserve(1);
roots.push_back(node0x15765cd0);
dag->setRoot(node0x15765cd0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__:
    {
SDValue node0x157725f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x157713e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157725f0, SDValue());
roots.reserve(1);
roots.push_back(node0x157713e0);
dag->setRoot(node0x157713e0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:
    {
SDValue node0x157768d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15776980 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15776a20 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x157768d0, node0x15776980);
SDValue node0x15775380 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15776a20, SDValue());
roots.reserve(1);
roots.push_back(node0x15775380);
dag->setRoot(node0x15775380);
    }
    break;
  case Codasip::i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__:
    {
SDValue node0x1577b790 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1577b840 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1577b8e0 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x1577b790, node0x1577b840);
SDValue node0x1577b2e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1577b8e0, SDValue());
roots.reserve(1);
roots.push_back(node0x1577b2e0);
dag->setRoot(node0x1577b2e0);
    }
    break;
  case Codasip::i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__:
    {
SDValue node0x157808b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15780960 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15780a00 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x157808b0, node0x15780960);
SDValue node0x15780400 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15780a00, SDValue());
roots.reserve(1);
roots.push_back(node0x15780400);
dag->setRoot(node0x15780400);
    }
    break;
  case Codasip::i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__:
    {
SDValue node0x157859d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15785a80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15785b20 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x157859d0, node0x15785a80);
SDValue node0x15785520 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15785b20, SDValue());
roots.reserve(1);
roots.push_back(node0x15785520);
dag->setRoot(node0x15785520);
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
SDValue node0x1579b470 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15799620 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1579b470, SDValue());
roots.reserve(1);
roots.push_back(node0x15799620);
dag->setRoot(node0x15799620);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__regs__reg0__regs__:
    {
SDValue node0x1579c660 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1579b660 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1579c660, SDValue());
roots.reserve(1);
roots.push_back(node0x1579b660);
dag->setRoot(node0x1579b660);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__regs__regs__reg0__:
    {
SDValue node0x1579e6c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1579c7f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1579e6c0, SDValue());
roots.reserve(1);
roots.push_back(node0x1579c7f0);
dag->setRoot(node0x1579c7f0);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__regs__regs__regs__:
    {
SDValue node0x1579f9f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1579faa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1579fb50 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1579f9f0, node0x1579faa0);
SDValue node0x1579f700 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1579fb50, SDValue());
roots.reserve(1);
roots.push_back(node0x1579f700);
dag->setRoot(node0x1579f700);
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
SDValue node0x157a7e60 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x157a6010 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157a7e60, SDValue());
roots.reserve(1);
roots.push_back(node0x157a6010);
dag->setRoot(node0x157a6010);
    }
    break;
  case Codasip::i_comp_3reg__opc_and__regs__regs__regs__:
    {
SDValue node0x157ac0f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x157ac1a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x157ac250 = dag->getNode(ISD::AND, dl, MVT::i32, node0x157ac0f0, node0x157ac1a0);
SDValue node0x157aaf50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157ac250, SDValue());
roots.reserve(1);
roots.push_back(node0x157aaf50);
dag->setRoot(node0x157aaf50);
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
SDValue node0x157b46e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x157b2890 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157b46e0, SDValue());
roots.reserve(1);
roots.push_back(node0x157b2890);
dag->setRoot(node0x157b2890);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__regs__reg0__regs__:
    {
SDValue node0x157b5930 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x157b48d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157b5930, SDValue());
roots.reserve(1);
roots.push_back(node0x157b48d0);
dag->setRoot(node0x157b48d0);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__regs__regs__reg0__:
    {
SDValue node0x157b79f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x157b5ac0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157b79f0, SDValue());
roots.reserve(1);
roots.push_back(node0x157b5ac0);
dag->setRoot(node0x157b5ac0);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__regs__regs__regs__:
    {
SDValue node0x157b8d30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x157b8de0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x157b8e90 = dag->getNode(ISD::OR, dl, MVT::i32, node0x157b8d30, node0x157b8de0);
SDValue node0x157b7b80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157b8e90, SDValue());
roots.reserve(1);
roots.push_back(node0x157b7b80);
dag->setRoot(node0x157b7b80);
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
SDValue node0x157c1200 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x157bf3b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157c1200, SDValue());
roots.reserve(1);
roots.push_back(node0x157bf3b0);
dag->setRoot(node0x157bf3b0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__regs__regs__reg0__:
    {
SDValue node0x157c4300 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x157c23e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157c4300, SDValue());
roots.reserve(1);
roots.push_back(node0x157c23e0);
dag->setRoot(node0x157c23e0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__regs__regs__regs__:
    {
SDValue node0x157c5680 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x157c5730 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x157c5870 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x157c5680, node0x157c5730);
SDValue node0x157c4490 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157c5870, SDValue());
roots.reserve(1);
roots.push_back(node0x157c4490);
dag->setRoot(node0x157c4490);
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
SDValue node0x157cdbb0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x157cbd60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157cdbb0, SDValue());
roots.reserve(1);
roots.push_back(node0x157cbd60);
dag->setRoot(node0x157cbd60);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__reg0__regs__:
    {
SDValue node0x157cec20 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x157ceda0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x157cee50 = dag->getSetCC(dl, MVT::i32, node0x157ceda0, node0x157cec20, ISD::SETGT);
SDValue node0x157cdda0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157cee50, SDValue());
roots.reserve(1);
roots.push_back(node0x157cdda0);
dag->setRoot(node0x157cdda0);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__regs__reg0__:
    {
SDValue node0x157d0e00 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x157d1020 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x157d10d0 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x157d1020, node0x157d0e00);
SDValue node0x157cf170 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157d10d0, SDValue());
roots.reserve(1);
roots.push_back(node0x157cf170);
dag->setRoot(node0x157cf170);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__regs__regs__:
    {
SDValue node0x157d23c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x157d2470 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x157d2520 = dag->getSetCC(dl, MVT::i32, node0x157d23c0, node0x157d2470, ISD::SETLT);
SDValue node0x157d12e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157d2520, SDValue());
roots.reserve(1);
roots.push_back(node0x157d12e0);
dag->setRoot(node0x157d12e0);
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
SDValue node0x159fc560 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x159fa870 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x159fc560, SDValue());
roots.reserve(1);
roots.push_back(node0x159fa870);
dag->setRoot(node0x159fa870);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__regs__reg0__regs__:
    {
SDValue node0x159fd5d0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x159fd750 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159fd800 = dag->getSetCC(dl, MVT::i32, node0x159fd750, node0x159fd5d0, ISD::SETNE);
SDValue node0x159fc750 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x159fd800, SDValue());
roots.reserve(1);
roots.push_back(node0x159fc750);
dag->setRoot(node0x159fc750);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__:
    {
SDValue node0x15a00ac0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a00b70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15a00c20 = dag->getSetCC(dl, MVT::i32, node0x15a00ac0, node0x15a00b70, ISD::SETULT);
SDValue node0x159ff920 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15a00c20, SDValue());
roots.reserve(1);
roots.push_back(node0x159ff920);
dag->setRoot(node0x159ff920);
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
SDValue node0x15a08ff0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a071a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15a08ff0, SDValue());
roots.reserve(1);
roots.push_back(node0x15a071a0);
dag->setRoot(node0x15a071a0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__regs__regs__reg0__:
    {
SDValue node0x15a0c0f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a0a1d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15a0c0f0, SDValue());
roots.reserve(1);
roots.push_back(node0x15a0a1d0);
dag->setRoot(node0x15a0a1d0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__regs__regs__regs__:
    {
SDValue node0x15a0d470 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a0d520 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15a0d660 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x15a0d470, node0x15a0d520);
SDValue node0x15a0c280 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15a0d660, SDValue());
roots.reserve(1);
roots.push_back(node0x15a0c280);
dag->setRoot(node0x15a0c280);
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
SDValue node0x15a159a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a13b50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15a159a0, SDValue());
roots.reserve(1);
roots.push_back(node0x15a13b50);
dag->setRoot(node0x15a13b50);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__regs__regs__reg0__:
    {
SDValue node0x15a18aa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a16b80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15a18aa0, SDValue());
roots.reserve(1);
roots.push_back(node0x15a16b80);
dag->setRoot(node0x15a16b80);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__regs__regs__regs__:
    {
SDValue node0x15a19e20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a19ed0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15a1a010 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x15a19e20, node0x15a19ed0);
SDValue node0x15a18c30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15a1a010, SDValue());
roots.reserve(1);
roots.push_back(node0x15a18c30);
dag->setRoot(node0x15a18c30);
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
SDValue node0x15a22350 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a20500 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15a22350, SDValue());
roots.reserve(1);
roots.push_back(node0x15a20500);
dag->setRoot(node0x15a20500);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__regs__reg0__regs__:
    {
SDValue node0x15a23340 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a23540 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a235f0 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x15a23340, node0x15a23540);
SDValue node0x15a22540 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15a235f0, SDValue());
roots.reserve(1);
roots.push_back(node0x15a22540);
dag->setRoot(node0x15a22540);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__regs__regs__reg0__:
    {
SDValue node0x15a25660 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a23800 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15a25660, SDValue());
roots.reserve(1);
roots.push_back(node0x15a23800);
dag->setRoot(node0x15a23800);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__regs__regs__regs__:
    {
SDValue node0x15a26940 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a269f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15a26aa0 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x15a26940, node0x15a269f0);
SDValue node0x15a257f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15a26aa0, SDValue());
roots.reserve(1);
roots.push_back(node0x15a257f0);
dag->setRoot(node0x15a257f0);
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
SDValue node0x15a2edb0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15a2cf60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15a2edb0, SDValue());
roots.reserve(1);
roots.push_back(node0x15a2cf60);
dag->setRoot(node0x15a2cf60);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__regs__reg0__regs__:
    {
SDValue node0x15a2ffa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a2efa0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15a2ffa0, SDValue());
roots.reserve(1);
roots.push_back(node0x15a2efa0);
dag->setRoot(node0x15a2efa0);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__regs__regs__reg0__:
    {
SDValue node0x15a32000 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a30130 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15a32000, SDValue());
roots.reserve(1);
roots.push_back(node0x15a30130);
dag->setRoot(node0x15a30130);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__regs__regs__regs__:
    {
SDValue node0x15a332e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a33390 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15a33440 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x15a332e0, node0x15a33390);
SDValue node0x15a32190 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15a33440, SDValue());
roots.reserve(1);
roots.push_back(node0x15a32190);
dag->setRoot(node0x15a32190);
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
SDValue node0x15890110 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15886190 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x15890110, mpi, MVT::i8, 1);
SDValue node0x1588f490 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15886190, SDValue());
roots.reserve(1);
roots.push_back(node0x1588f490);
dag->setRoot(node0x1588f490);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__:
    {
SDValue node0x15891430 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158914e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15891580 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15891430, node0x158914e0);
SDValue node0x15884f20 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x15891580, mpi, MVT::i8, 1);
SDValue node0x1588f350 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15884f20, SDValue());
roots.reserve(1);
roots.push_back(node0x1588f350);
dag->setRoot(node0x1588f350);
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
SDValue node0x158a1c80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15897950 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x158a1c80, mpi, MVT::i8, 1);
SDValue node0x158a1000 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15897950, SDValue());
roots.reserve(1);
roots.push_back(node0x158a1000);
dag->setRoot(node0x158a1000);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__:
    {
SDValue node0x158a2fa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158a3050 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x158a30f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x158a2fa0, node0x158a3050);
SDValue node0x158966e0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x158a30f0, mpi, MVT::i8, 1);
SDValue node0x158a0ec0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158966e0, SDValue());
roots.reserve(1);
roots.push_back(node0x158a0ec0);
dag->setRoot(node0x158a0ec0);
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
SDValue node0x158b3810 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158a94e0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x158b3810, mpi, MVT::i16, 1);
SDValue node0x158b2b90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158a94e0, SDValue());
roots.reserve(1);
roots.push_back(node0x158b2b90);
dag->setRoot(node0x158b2b90);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__:
    {
SDValue node0x158b4b30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158b4be0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x158b4c80 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x158b4b30, node0x158b4be0);
SDValue node0x158a8270 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x158b4c80, mpi, MVT::i16, 1);
SDValue node0x158b2a50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158a8270, SDValue());
roots.reserve(1);
roots.push_back(node0x158b2a50);
dag->setRoot(node0x158b2a50);
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
SDValue node0x158c5380 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158bb050 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x158c5380, mpi, MVT::i16, 1);
SDValue node0x158c4700 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158bb050, SDValue());
roots.reserve(1);
roots.push_back(node0x158c4700);
dag->setRoot(node0x158c4700);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__:
    {
SDValue node0x158c66a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158c6750 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x158c67f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x158c66a0, node0x158c6750);
SDValue node0x158b9de0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x158c67f0, mpi, MVT::i16, 1);
SDValue node0x158c45c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158b9de0, SDValue());
roots.reserve(1);
roots.push_back(node0x158c45c0);
dag->setRoot(node0x158c45c0);
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
SDValue node0x158dfad0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158dfb70 = dag->getLoad(MVT::i32, dl, entry, node0x158dfad0, mpi, 1);
SDValue node0x158deea0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158dfb70, SDValue());
roots.reserve(1);
roots.push_back(node0x158deea0);
dag->setRoot(node0x158deea0);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__:
    {
SDValue node0x158e0d90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158e0e40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x158e0ee0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x158e0d90, node0x158e0e40);
SDValue node0x158e0f70 = dag->getLoad(MVT::i32, dl, entry, node0x158e0ee0, mpi, 1);
SDValue node0x158dedb0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158e0f70, SDValue());
roots.reserve(1);
roots.push_back(node0x158dedb0);
dag->setRoot(node0x158dedb0);
    }
    break;
  case Codasip::i_lui__opc_lui__regs__imm20_s12__:
    {
SDValue node0x158fc630 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158fc200 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158fc630, SDValue());
roots.reserve(1);
roots.push_back(node0x158fc200);
dag->setRoot(node0x158fc200);
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
SDValue node0x15908090 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15908040 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15908090, SDValue());
roots.reserve(1);
roots.push_back(node0x15908040);
dag->setRoot(node0x15908040);
    }
    break;
  case Codasip::i_neg_alias__regs__regs__:
    {
SDValue node0x15908f20 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15909120 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159091d0 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x15908f20, node0x15909120);
SDValue node0x15908ed0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x159091d0, SDValue());
roots.reserve(1);
roots.push_back(node0x15908ed0);
dag->setRoot(node0x15908ed0);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__reg0__:
    {
SDValue node0x15934180 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x15934420 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x159344c0 = dag->getStore(entry, dl, node0x15934180, node0x15934420, mpi, 1);
roots.reserve(1);
roots.push_back(node0x159344c0);
dag->setRoot(node0x159344c0);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__:
    {
SDValue node0x15935150 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x15935490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15935540 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159355e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15935490, node0x15935540);
SDValue node0x15935670 = dag->getStore(entry, dl, node0x15935150, node0x159355e0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x15935670);
dag->setRoot(node0x15935670);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_simple__reg0__:
    {
SDValue node0x15940480 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15940530 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159cc490 = dag->getTruncStore(entry, dl, node0x15940480, node0x15940530, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x159cc490);
dag->setRoot(node0x159cc490);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_simple__regs__:
    {
SDValue node0x15941800 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x159418b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15941960 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15941ab0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x159418b0, node0x15941960);
SDValue node0x15940680 = dag->getTruncStore(entry, dl, node0x15941800, node0x15941ab0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x15940680);
dag->setRoot(node0x15940680);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__:
    {
SDValue node0x15946f60 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x15947200 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x159472a0 = dag->getStore(entry, dl, node0x15946f60, node0x15947200, mpi, 1);
roots.reserve(1);
roots.push_back(node0x159472a0);
dag->setRoot(node0x159472a0);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__:
    {
SDValue node0x15948120 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x15948460 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15948510 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159485b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15948460, node0x15948510);
SDValue node0x15948640 = dag->getStore(entry, dl, node0x15948120, node0x159485b0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x15948640);
dag->setRoot(node0x15948640);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_simple__reg0__:
    {
SDValue node0x15953450 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15953500 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159cc9f0 = dag->getTruncStore(entry, dl, node0x15953450, node0x15953500, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x159cc9f0);
dag->setRoot(node0x159cc9f0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_simple__regs__:
    {
SDValue node0x159547d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15954880 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15954930 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15954a80 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15954880, node0x15954930);
SDValue node0x15953650 = dag->getTruncStore(entry, dl, node0x159547d0, node0x15954a80, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x15953650);
dag->setRoot(node0x15953650);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_simple__reg0__:
    {
SDValue node0x15959cb0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15959eb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15959f50 = dag->getStore(entry, dl, node0x15959cb0, node0x15959eb0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x15959f50);
dag->setRoot(node0x15959f50);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_simple__regs__:
    {
SDValue node0x1595add0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1595b070 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1595b120 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1595b1c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1595b070, node0x1595b120);
SDValue node0x1595b250 = dag->getStore(entry, dl, node0x1595add0, node0x1595b1c0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1595b250);
dag->setRoot(node0x1595b250);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__reg0__:
    {
SDValue node0x15965d50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15965e00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15965ea0 = dag->getStore(entry, dl, node0x15965d50, node0x15965e00, mpi, 1);
roots.reserve(1);
roots.push_back(node0x15965ea0);
dag->setRoot(node0x15965ea0);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__:
    {
SDValue node0x15967070 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15967120 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159671d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15967270 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15967120, node0x159671d0);
SDValue node0x15967300 = dag->getStore(entry, dl, node0x15967070, node0x15967270, mpi, 1);
roots.reserve(1);
roots.push_back(node0x15967300);
dag->setRoot(node0x15967300);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:
    {
SDValue node0x159974c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x159972a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x159974c0, SDValue());
roots.reserve(1);
roots.push_back(node0x159972a0);
dag->setRoot(node0x159972a0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:
    {
SDValue node0x15997020 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x15996780 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15997020, SDValue());
roots.reserve(1);
roots.push_back(node0x15996780);
dag->setRoot(node0x15996780);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:
    {
SDValue node0x159983c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15997a50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x159983c0, SDValue());
roots.reserve(1);
roots.push_back(node0x15997a50);
dag->setRoot(node0x15997a50);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:
    {
SDValue node0x15997c20 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x15997350 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15997c20, SDValue());
roots.reserve(1);
roots.push_back(node0x15997350);
dag->setRoot(node0x15997350);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__regs__regs__regs__SHIFT_MASK_CLONE_:
    {
SDValue node0x15875530 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x158c43b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15874080 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x159535a0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x15874080, node0x15875530);
SDValue node0x15941a00 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x158c43b0, node0x159535a0);
SDValue node0x159cad00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15941a00, SDValue());
roots.reserve(1);
roots.push_back(node0x159cad00);
dag->setRoot(node0x159cad00);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__regs__regs__swappedCmpClone0__:
    {
SDValue node0x159967d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15996900 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15998c60 = dag->getSetCC(dl, MVT::i32, node0x159967d0, node0x15996900, ISD::SETGT);
SDValue node0x159988f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15998c60, SDValue());
roots.reserve(1);
roots.push_back(node0x159988f0);
dag->setRoot(node0x159988f0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__swappedCmpClone0__:
    {
SDValue node0x159994e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15999630 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x159996e0 = dag->getSetCC(dl, MVT::i32, node0x159994e0, node0x15999630, ISD::SETUGT);
SDValue node0x159981f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x159996e0, SDValue());
roots.reserve(1);
roots.push_back(node0x159981f0);
dag->setRoot(node0x159981f0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__regs__regs__regs__SHIFT_MASK_CLONE_:
    {
SDValue node0x157c5460 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x1586a370 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15869340 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x157c57e0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x15869340, node0x157c5460);
SDValue node0x159405d0 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x1586a370, node0x157c57e0);
SDValue node0x159f3750 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x159405d0, SDValue());
roots.reserve(1);
roots.push_back(node0x159f3750);
dag->setRoot(node0x159f3750);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__regs__regs__regs__SHIFT_MASK_CLONE_:
    {
SDValue node0x15a0d250 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x158ccbc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158cb950 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15a0d5d0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x158cb950, node0x15a0d250);
SDValue node0x1592f1b0 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x158ccbc0, node0x15a0d5d0);
SDValue node0x159f4070 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1592f1b0, SDValue());
roots.reserve(1);
roots.push_back(node0x159f4070);
dag->setRoot(node0x159f4070);
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
SDValue node0x1587ba30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158901b0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x1587ba30, mpi, MVT::i8, 1);
SDValue node0x15b13b10 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158901b0, SDValue());
roots.reserve(1);
roots.push_back(node0x15b13b10);
dag->setRoot(node0x15b13b10);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x15891610 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158910f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x158916e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15891610, node0x158910f0);
SDValue node0x157dbd20 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x158916e0, mpi, MVT::i8, 1);
SDValue node0x157f8fb0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157dbd20, SDValue());
roots.reserve(1);
roots.push_back(node0x157f8fb0);
dag->setRoot(node0x157f8fb0);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x159a8c60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159a19c0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x159a8c60, mpi, MVT::i8, 1);
SDValue node0x159a4960 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x159a19c0, SDValue());
roots.reserve(1);
roots.push_back(node0x159a4960);
dag->setRoot(node0x159a4960);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x159a8d10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159a0f00 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x159a8d10, mpi, MVT::i8, 1);
SDValue node0x15999290 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x159a0f00, SDValue());
roots.reserve(1);
roots.push_back(node0x15999290);
dag->setRoot(node0x15999290);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__AEXT_CLONE_:
    {
SDValue node0x15896440 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158a1d20 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x15896440, mpi, MVT::i8, 1);
SDValue node0x157dbb20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158a1d20, SDValue());
roots.reserve(1);
roots.push_back(node0x157dbb20);
dag->setRoot(node0x157dbb20);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x158a3180 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158a2c60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x158a3250 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x158a3180, node0x158a2c60);
SDValue node0x157d99a0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x158a3250, mpi, MVT::i8, 1);
SDValue node0x159fdb20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157d99a0, SDValue());
roots.reserve(1);
roots.push_back(node0x159fdb20);
dag->setRoot(node0x159fdb20);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x159a95d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159a03d0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x159a95d0, mpi, MVT::i8, 1);
SDValue node0x159a5460 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x159a03d0, SDValue());
roots.reserve(1);
roots.push_back(node0x159a5460);
dag->setRoot(node0x159a5460);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x159a9680 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1599f950 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x159a9680, mpi, MVT::i8, 1);
SDValue node0x15999cc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1599f950, SDValue());
roots.reserve(1);
roots.push_back(node0x15999cc0);
dag->setRoot(node0x15999cc0);
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
SDValue node0x158a7fd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158b38b0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x158a7fd0, mpi, MVT::i16, 1);
SDValue node0x159c8760 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158b38b0, SDValue());
roots.reserve(1);
roots.push_back(node0x159c8760);
dag->setRoot(node0x159c8760);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x158b4d10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158b47f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x158b4de0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x158b4d10, node0x158b47f0);
SDValue node0x15a98890 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x158b4de0, mpi, MVT::i16, 1);
SDValue node0x159c9270 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15a98890, SDValue());
roots.reserve(1);
roots.push_back(node0x159c9270);
dag->setRoot(node0x159c9270);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x159aa8a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159aa030 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x159aa8a0, mpi, MVT::i16, 1);
SDValue node0x159a9210 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x159aa030, SDValue());
roots.reserve(1);
roots.push_back(node0x159a9210);
dag->setRoot(node0x159a9210);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x159aa950 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1599f8a0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x159aa950, mpi, MVT::i16, 1);
SDValue node0x159f4440 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1599f8a0, SDValue());
roots.reserve(1);
roots.push_back(node0x159f4440);
dag->setRoot(node0x159f4440);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__AEXT_CLONE_:
    {
SDValue node0x158b9b40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158c5420 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x158b9b40, mpi, MVT::i16, 1);
SDValue node0x159c9e80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158c5420, SDValue());
roots.reserve(1);
roots.push_back(node0x159c9e80);
dag->setRoot(node0x159c9e80);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x158c6880 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158c6360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x158c6950 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x158c6880, node0x158c6360);
SDValue node0x15a963b0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x158c6950, mpi, MVT::i16, 1);
SDValue node0x159ca990 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15a963b0, SDValue());
roots.reserve(1);
roots.push_back(node0x159ca990);
dag->setRoot(node0x159ca990);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x159ab210 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1599ecb0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x159ab210, mpi, MVT::i16, 1);
SDValue node0x159a75c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1599ecb0, SDValue());
roots.reserve(1);
roots.push_back(node0x159a75c0);
dag->setRoot(node0x159a75c0);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x159ab2c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159b27e0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x159ab2c0, mpi, MVT::i16, 1);
SDValue node0x159a2980 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x159b27e0, SDValue());
roots.reserve(1);
roots.push_back(node0x159a2980);
dag->setRoot(node0x159a2980);
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
SDValue node0x159ac4e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159ac590 = dag->getLoad(MVT::i32, dl, entry, node0x159ac4e0, mpi, 1);
SDValue node0x159aae50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x159ac590, SDValue());
roots.reserve(1);
roots.push_back(node0x159aae50);
dag->setRoot(node0x159aae50);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_:
    {
SDValue node0x159acbf0 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x159ace10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x159acb90 = dag->getStore(entry, dl, node0x159acbf0, node0x159ace10, mpi, 1);
roots.reserve(1);
roots.push_back(node0x159acb90);
dag->setRoot(node0x159acb90);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x159ad600 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x159ad6b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159a2b80 = dag->getTruncStore(entry, dl, node0x159ad600, node0x159ad6b0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x159a2b80);
dag->setRoot(node0x159a2b80);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_:
    {
SDValue node0x159add50 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x159adf70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x159adcf0 = dag->getStore(entry, dl, node0x159add50, node0x159adf70, mpi, 1);
roots.reserve(1);
roots.push_back(node0x159adcf0);
dag->setRoot(node0x159adcf0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x159ae7d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x159ae880 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159a5620 = dag->getTruncStore(entry, dl, node0x159ae7d0, node0x159ae880, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x159a5620);
dag->setRoot(node0x159a5620);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_simple__regs__immspec_1_:
    {
SDValue node0x159aef20 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x159af0a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x159aeec0 = dag->getStore(entry, dl, node0x159aef20, node0x159af0a0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x159aeec0);
dag->setRoot(node0x159aeec0);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x159af900 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x159af9b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159af740 = dag->getStore(entry, dl, node0x159af900, node0x159af9b0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x159af740);
dag->setRoot(node0x159af740);
    }
    break;
  case Codasip::i_jal__opc_jal__reg0__rel_addr20__:
    {
SDValue node0x15862a50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x15862c40 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x15862a50);
roots.reserve(1);
roots.push_back(node0x15862c40);
dag->setRoot(node0x15862c40);
    }
    break;
  case Codasip::i_jal__opc_jal__regs__rel_addr20__:
    {
SDValue node0x15863a00 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x15862080 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15863a00, SDValue());
SDValue node0x15863e10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15864000 = dag->getNode(ISD::BR, dl, MVT::Other, node0x15862080, node0x15863e10);
roots.reserve(2);
roots.push_back(node0x15862080);
roots.push_back(node0x15864000);
dag->setRoot(node0x15864000);
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
SDValue node0x1591df00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1591cfa0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1591df00, SDValue());
roots.reserve(1);
roots.push_back(node0x1591cfa0);
dag->setRoot(node0x1591cfa0);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_simple__:
    {
SDValue node0x159204c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15920570 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15920610 = dag->getNode(ISD::OR, dl, MVT::i32, node0x159204c0, node0x15920570);
SDValue node0x1591f280 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15920610, SDValue());
roots.reserve(1);
roots.push_back(node0x1591f280);
dag->setRoot(node0x1591f280);
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
SDValue node0x15995d90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15995aa0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15995d90, SDValue());
roots.reserve(1);
roots.push_back(node0x15995aa0);
dag->setRoot(node0x15995aa0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__:
    {
SDValue node0x15a94ec0 = dag->getConstant(8LL, dl, MVT::i32);
SDValue node0x15a95040 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a92be0 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x15a95040, node0x15a94ec0);
SDValue node0x15a94da0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15a92be0, SDValue());
roots.reserve(1);
roots.push_back(node0x15a94da0);
dag->setRoot(node0x15a94da0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__:
    {
SDValue node0x15a99d30 = dag->getConstant(8LL, dl, MVT::i32);
SDValue node0x15a99eb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15a99f60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15a9a010 = dag->getRegister(TargetRegisterInfo::index2VirtReg(3), MVT::i32);
SDValue node0x15a9a0c0 = dag->getNode(ISD::MUL, dl, MVT::i32, node0x15a99f60, node0x15a9a010);
SDValue node0x15a9a150 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15a99eb0, node0x15a9a0c0);
SDValue node0x15a9a210 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x15a9a150, node0x15a99d30);
SDValue node0x15a99ad0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15a9a210, SDValue());
roots.reserve(1);
roots.push_back(node0x15a99ad0);
dag->setRoot(node0x15a99ad0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__:
    {
SDValue node0x157dd060 = dag->getConstant(8LL, dl, MVT::i32);
SDValue node0x157dd280 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x157dd330 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x157dd3e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(3), MVT::i32);
SDValue node0x157d6360 = dag->getNode(ISD::MUL, dl, MVT::i32, node0x157dd280, node0x157dd330);
SDValue node0x157dd4b0 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x157d6360, node0x157dd060);
SDValue node0x157dd570 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x157dd4b0, node0x157dd3e0);
SDValue node0x157dcea0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157dd570, SDValue());
roots.reserve(1);
roots.push_back(node0x157dcea0);
dag->setRoot(node0x157dcea0);
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
SDValue node0x1555bbf0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1555bc70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1555c6c0 = dag->getTruncStore(entry, dl, node0x1555bbf0, node0x1555bc70, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x1555c6c0);
dag->setRoot(node0x1555c6c0);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__i32_TRUNC_CLONE_:
    {
SDValue node0x1555baf0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15557a90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1555bb70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15556c40 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15557a90, node0x1555bb70);
SDValue node0x1555d040 = dag->getTruncStore(entry, dl, node0x1555baf0, node0x15556c40, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x1555d040);
dag->setRoot(node0x1555d040);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_:
    {
SDValue node0x1555bcf0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1555d660 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1555d950 = dag->getTruncStore(entry, dl, node0x1555bcf0, node0x1555d660, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x1555d950);
dag->setRoot(node0x1555d950);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__i32_TRUNC_CLONE_:
    {
SDValue node0x1555df70 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1555b880 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1555dff0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15557e20 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1555b880, node0x1555dff0);
SDValue node0x1555e3d0 = dag->getTruncStore(entry, dl, node0x1555df70, node0x15557e20, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x1555e3d0);
dag->setRoot(node0x1555e3d0);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_:
    {
SDValue node0x1555e760 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1555b9a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1555e950 = dag->getTruncStore(entry, dl, node0x1555e760, node0x1555b9a0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x1555e950);
dag->setRoot(node0x1555e950);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_:
    {
SDValue node0x1555ed40 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x157d8720 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1555ef20 = dag->getTruncStore(entry, dl, node0x1555ed40, node0x157d8720, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x1555ef20);
dag->setRoot(node0x1555ef20);
    }
    break;
  case Codasip::i_jump_reg_alias__regs___RET_EMUL_:
    {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__0_REG_EMUL_:
    {
SDValue node0x1555f2a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x155607a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1555b910 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15565870 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x155607a0, node0x1555b910);
SDValue node0x1555ba30 = dag->getStore(entry, dl, node0x1555f2a0, node0x15565870, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1555ba30);
dag->setRoot(node0x1555ba30);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__1_BIGIMM_EMUL_:
    {
SDValue node0x1555f880 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15560550 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15562b20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15564d90 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15560550, node0x15562b20);
SDValue node0x155612f0 = dag->getStore(entry, dl, node0x1555f880, node0x15564d90, mpi, 1);
roots.reserve(1);
roots.push_back(node0x155612f0);
dag->setRoot(node0x155612f0);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__2_REG_EMUL_:
    {
SDValue node0x15565e10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x155655f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15565ea0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15565e10, node0x155655f0);
SDValue node0x15563850 = dag->getLoad(MVT::i32, dl, entry, node0x15565ea0, mpi, 1);
SDValue node0x155666e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15563850, SDValue());
roots.reserve(1);
roots.push_back(node0x155666e0);
dag->setRoot(node0x155666e0);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__3_BIGIMM_EMUL_:
    {
SDValue node0x15564900 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15567ae0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15564690 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15564900, node0x15567ae0);
SDValue node0x15565f10 = dag->getLoad(MVT::i32, dl, entry, node0x15564690, mpi, 1);
SDValue node0x15561a30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15565f10, SDValue());
roots.reserve(1);
roots.push_back(node0x15561a30);
dag->setRoot(node0x15561a30);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__4_BIGIMM_EMUL_:
    {
SDValue node0x15564fe0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x155633a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15568470 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15564d20 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x155633a0, node0x15568470);
SDValue node0x1555f3f0 = dag->getStore(entry, dl, node0x15564fe0, node0x15564d20, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1555f3f0);
dag->setRoot(node0x1555f3f0);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__5_BIGIMM_EMUL_:
    {
SDValue node0x15565aa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15569040 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15565da0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15565aa0, node0x15569040);
SDValue node0x15564070 = dag->getLoad(MVT::i32, dl, entry, node0x15565da0, mpi, 1);
SDValue node0x155690c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15564070, SDValue());
roots.reserve(1);
roots.push_back(node0x155690c0);
dag->setRoot(node0x155690c0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__6_BIGIMM_EMUL_:
    {
SDValue node0x15565680 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15569b60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15564cb0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15565680, node0x15569b60);
SDValue node0x15569be0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15564cb0, SDValue());
roots.reserve(1);
roots.push_back(node0x15569be0);
dag->setRoot(node0x15569be0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__7_BIGIMM_EMUL_:
    {
SDValue node0x15563430 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1556a720 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15564520 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15563430, node0x1556a720);
SDValue node0x1556a7a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15564520, SDValue());
roots.reserve(1);
roots.push_back(node0x1556a7a0);
dag->setRoot(node0x1556a7a0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__8_BIGIMM_EMUL_:
    {
SDValue node0x1556a150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1556b2d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15563590 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1556a150, node0x1556b2d0);
SDValue node0x1556b350 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15563590, SDValue());
roots.reserve(1);
roots.push_back(node0x1556b350);
dag->setRoot(node0x1556b350);
    }
    break;
  case Codasip::c_addi_lo__opc_addi__regs__regs__:
    {
SDValue node0x15abe4e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15b2b920 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15ac0740 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15abe4e0, node0x15b2b920);
SDValue node0x15ac06f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15ac0740, SDValue());
roots.reserve(1);
roots.push_back(node0x15ac06f0);
dag->setRoot(node0x15ac06f0);
    }
    break;
  case Codasip::c_lui_hi__opc_lui__regs__:
    {
SDValue node0x15b13e60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15504170 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15b13e60, SDValue());
roots.reserve(1);
roots.push_back(node0x15504170);
dag->setRoot(node0x15504170);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_lo__:
    {
SDValue node0x15ac5f30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15ac5c10 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15ac5f30, SDValue());
roots.reserve(1);
roots.push_back(node0x15ac5c10);
dag->setRoot(node0x15ac5c10);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x15ac6bb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15ac6060 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15ac6bb0, SDValue());
roots.reserve(1);
roots.push_back(node0x15ac6060);
dag->setRoot(node0x15ac6060);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_lo__:
    {
SDValue node0x155395c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15aca3f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15aca490 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x155395c0, node0x15aca3f0);
SDValue node0x15aca010 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15aca490, SDValue());
roots.reserve(1);
roots.push_back(node0x15aca010);
dag->setRoot(node0x15aca010);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x15b2dc70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15acb310 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15acb3b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15b2dc70, node0x15acb310);
SDValue node0x15aca6a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15acb3b0, SDValue());
roots.reserve(1);
roots.push_back(node0x15aca6a0);
dag->setRoot(node0x15aca6a0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_lo__:
    {
SDValue node0x15abc3d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15af16c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15af1760 = dag->getNode(ISD::AND, dl, MVT::i32, node0x15abc3d0, node0x15af16c0);
SDValue node0x15af12e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15af1760, SDValue());
roots.reserve(1);
roots.push_back(node0x15af12e0);
dag->setRoot(node0x15af12e0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x15b2bcd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15af25e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15af2680 = dag->getNode(ISD::AND, dl, MVT::i32, node0x15b2bcd0, node0x15af25e0);
SDValue node0x15af1970 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15af2680, SDValue());
roots.reserve(1);
roots.push_back(node0x15af1970);
dag->setRoot(node0x15af1970);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_lo__:
    {
SDValue node0x15afc9e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15afc6c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15afc9e0, SDValue());
roots.reserve(1);
roots.push_back(node0x15afc6c0);
dag->setRoot(node0x15afc6c0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x15afd660 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15afcb10 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15afd660, SDValue());
roots.reserve(1);
roots.push_back(node0x15afcb10);
dag->setRoot(node0x15afcb10);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_lo__:
    {
SDValue node0x15b00390 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15b006c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15b00760 = dag->getNode(ISD::OR, dl, MVT::i32, node0x15b00390, node0x15b006c0);
SDValue node0x15b00250 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15b00760, SDValue());
roots.reserve(1);
roots.push_back(node0x15b00250);
dag->setRoot(node0x15b00250);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x15b01340 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15b01670 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15b01710 = dag->getNode(ISD::OR, dl, MVT::i32, node0x15b01340, node0x15b01670);
SDValue node0x15b00970 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15b01710, SDValue());
roots.reserve(1);
roots.push_back(node0x15b00970);
dag->setRoot(node0x15b00970);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_lo__:
    {
SDValue node0x15b0bca0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15b0bd80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15b0be20 = dag->getSetCC(dl, MVT::i32, node0x15b0bd80, node0x15b0bca0, ISD::SETGT);
SDValue node0x15b0ba60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15b0be20, SDValue());
roots.reserve(1);
roots.push_back(node0x15b0ba60);
dag->setRoot(node0x15b0ba60);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x15752280 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15752360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15752400 = dag->getSetCC(dl, MVT::i32, node0x15752360, node0x15752280, ISD::SETGT);
SDValue node0x15b0c0f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15752400, SDValue());
roots.reserve(1);
roots.push_back(node0x15b0c0f0);
dag->setRoot(node0x15b0c0f0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_lo__:
    {
SDValue node0x157553e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15755710 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x157557b0 = dag->getSetCC(dl, MVT::i32, node0x157553e0, node0x15755710, ISD::SETLT);
SDValue node0x157552a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157557b0, SDValue());
roots.reserve(1);
roots.push_back(node0x157552a0);
dag->setRoot(node0x157552a0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x157564a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x157567d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15756870 = dag->getSetCC(dl, MVT::i32, node0x157564a0, node0x157567d0, ISD::SETLT);
SDValue node0x15755ad0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15756870, SDValue());
roots.reserve(1);
roots.push_back(node0x15755ad0);
dag->setRoot(node0x15755ad0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_lo__:
    {
SDValue node0x15760fd0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x157610b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15761150 = dag->getSetCC(dl, MVT::i32, node0x157610b0, node0x15760fd0, ISD::SETNE);
SDValue node0x15760d90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15761150, SDValue());
roots.reserve(1);
roots.push_back(node0x15760d90);
dag->setRoot(node0x15760d90);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x15761ec0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15761fa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15762040 = dag->getSetCC(dl, MVT::i32, node0x15761fa0, node0x15761ec0, ISD::SETNE);
SDValue node0x15761420 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15762040, SDValue());
roots.reserve(1);
roots.push_back(node0x15761420);
dag->setRoot(node0x15761420);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_lo__:
    {
SDValue node0x15765020 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15765350 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x157653f0 = dag->getSetCC(dl, MVT::i32, node0x15765020, node0x15765350, ISD::SETULT);
SDValue node0x15764ee0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157653f0, SDValue());
roots.reserve(1);
roots.push_back(node0x15764ee0);
dag->setRoot(node0x15764ee0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x157660e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15766410 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x157664b0 = dag->getSetCC(dl, MVT::i32, node0x157660e0, node0x15766410, ISD::SETULT);
SDValue node0x15765710 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x157664b0, SDValue());
roots.reserve(1);
roots.push_back(node0x15765710);
dag->setRoot(node0x15765710);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_lo__:
    {
SDValue node0x15770cf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x157709d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15770cf0, SDValue());
roots.reserve(1);
roots.push_back(node0x157709d0);
dag->setRoot(node0x157709d0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x15771970 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15770e20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15771970, SDValue());
roots.reserve(1);
roots.push_back(node0x15770e20);
dag->setRoot(node0x15770e20);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_lo__:
    {
SDValue node0x157747e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15774b10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15774bb0 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x157747e0, node0x15774b10);
SDValue node0x157746a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15774bb0, SDValue());
roots.reserve(1);
roots.push_back(node0x157746a0);
dag->setRoot(node0x157746a0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x15775790 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15775ac0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15775b60 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x15775790, node0x15775ac0);
SDValue node0x15774dc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15775b60, SDValue());
roots.reserve(1);
roots.push_back(node0x15774dc0);
dag->setRoot(node0x15774dc0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_lo__:
    {
SDValue node0x15865f20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x15865c20 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x15865f20);
roots.reserve(1);
roots.push_back(node0x15865c20);
dag->setRoot(node0x15865c20);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_pcrel_lo__:
    {
SDValue node0x158669a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x158666d0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x158669a0);
roots.reserve(1);
roots.push_back(node0x158666d0);
dag->setRoot(node0x158666d0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_lo__:
    {
SDValue node0x158700b0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1586e800 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158700b0, SDValue());
SDValue node0x15870420 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15870080 = dag->getNode(ISD::BR, dl, MVT::Other, node0x1586e800, node0x15870420);
roots.reserve(2);
roots.push_back(node0x1586e800);
roots.push_back(node0x15870080);
dag->setRoot(node0x15870080);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x15870dc0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x15870600 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15870dc0, SDValue());
SDValue node0x15871130 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x15870d90 = dag->getNode(ISD::BR, dl, MVT::Other, node0x15870600, node0x15871130);
roots.reserve(2);
roots.push_back(node0x15870600);
roots.push_back(node0x15870d90);
dag->setRoot(node0x15870d90);
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
SDValue node0x1588b250 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15875340 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1588b250, mpi, MVT::i8, 1);
SDValue node0x1588a640 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15875340, SDValue());
roots.reserve(1);
roots.push_back(node0x1588a640);
dag->setRoot(node0x1588a640);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_lo__regs__:
    {
SDValue node0x1588c630 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1588c960 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1588ca00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1588c630, node0x1588c960);
SDValue node0x1588b2f0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1588ca00, mpi, MVT::i8, 1);
SDValue node0x1588b5a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1588b2f0, SDValue());
roots.reserve(1);
roots.push_back(node0x1588b5a0);
dag->setRoot(node0x1588b5a0);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x1588da10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1588ca90 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1588da10, mpi, MVT::i8, 1);
SDValue node0x1588ce30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1588ca90, SDValue());
roots.reserve(1);
roots.push_back(node0x1588ce30);
dag->setRoot(node0x1588ce30);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x1588ece0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1588f010 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1588f0b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1588ece0, node0x1588f010);
SDValue node0x1588dab0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1588f0b0, mpi, MVT::i8, 1);
SDValue node0x1588cc50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1588dab0, SDValue());
roots.reserve(1);
roots.push_back(node0x1588cc50);
dag->setRoot(node0x1588cc50);
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
SDValue node0x1589ccf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1588f140 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1589ccf0, mpi, MVT::i8, 1);
SDValue node0x1589c260 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1588f140, SDValue());
roots.reserve(1);
roots.push_back(node0x1589c260);
dag->setRoot(node0x1589c260);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_lo__regs__:
    {
SDValue node0x1589e1a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1589e4d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1589e570 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1589e1a0, node0x1589e4d0);
SDValue node0x1589cd90 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1589e570, mpi, MVT::i8, 1);
SDValue node0x1589d040 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1589cd90, SDValue());
roots.reserve(1);
roots.push_back(node0x1589d040);
dag->setRoot(node0x1589d040);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x1589f5d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1589e600 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1589f5d0, mpi, MVT::i8, 1);
SDValue node0x1589e950 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1589e600, SDValue());
roots.reserve(1);
roots.push_back(node0x1589e950);
dag->setRoot(node0x1589e950);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x158a0850 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158a0b80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x158a0c20 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x158a0850, node0x158a0b80);
SDValue node0x1589f670 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x158a0c20, mpi, MVT::i8, 1);
SDValue node0x1589e810 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1589f670, SDValue());
roots.reserve(1);
roots.push_back(node0x1589e810);
dag->setRoot(node0x1589e810);
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
SDValue node0x158ae880 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158a0cb0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x158ae880, mpi, MVT::i16, 1);
SDValue node0x158adc70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158a0cb0, SDValue());
roots.reserve(1);
roots.push_back(node0x158adc70);
dag->setRoot(node0x158adc70);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_lo__regs__:
    {
SDValue node0x158afd30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158b0060 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x158b0100 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x158afd30, node0x158b0060);
SDValue node0x158ae920 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x158b0100, mpi, MVT::i16, 1);
SDValue node0x158aebd0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158ae920, SDValue());
roots.reserve(1);
roots.push_back(node0x158aebd0);
dag->setRoot(node0x158aebd0);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x158b1110 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158b0190 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x158b1110, mpi, MVT::i16, 1);
SDValue node0x158b0530 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158b0190, SDValue());
roots.reserve(1);
roots.push_back(node0x158b0530);
dag->setRoot(node0x158b0530);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x158b23e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158b2710 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x158b27b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x158b23e0, node0x158b2710);
SDValue node0x158b11b0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x158b27b0, mpi, MVT::i16, 1);
SDValue node0x158b0350 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158b11b0, SDValue());
roots.reserve(1);
roots.push_back(node0x158b0350);
dag->setRoot(node0x158b0350);
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
SDValue node0x158c03f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158b2840 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x158c03f0, mpi, MVT::i16, 1);
SDValue node0x158bf960 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158b2840, SDValue());
roots.reserve(1);
roots.push_back(node0x158bf960);
dag->setRoot(node0x158bf960);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_lo__regs__:
    {
SDValue node0x158c18a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158c1bd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x158c1c70 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x158c18a0, node0x158c1bd0);
SDValue node0x158c0490 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x158c1c70, mpi, MVT::i16, 1);
SDValue node0x158c0740 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158c0490, SDValue());
roots.reserve(1);
roots.push_back(node0x158c0740);
dag->setRoot(node0x158c0740);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x158c2cd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158c1d00 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x158c2cd0, mpi, MVT::i16, 1);
SDValue node0x158c2050 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158c1d00, SDValue());
roots.reserve(1);
roots.push_back(node0x158c2050);
dag->setRoot(node0x158c2050);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x158c3f50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158c4280 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x158c4320 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x158c3f50, node0x158c4280);
SDValue node0x158c2d70 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x158c4320, mpi, MVT::i16, 1);
SDValue node0x158c1f10 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158c2d70, SDValue());
roots.reserve(1);
roots.push_back(node0x158c1f10);
dag->setRoot(node0x158c1f10);
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
SDValue node0x158d1f60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158d2000 = dag->getLoad(MVT::i32, dl, entry, node0x158d1f60, mpi, 1);
SDValue node0x158d1350 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158d2000, SDValue());
roots.reserve(1);
roots.push_back(node0x158d1350);
dag->setRoot(node0x158d1350);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_lo__regs__:
    {
SDValue node0x158dc250 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158dc580 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x158dc620 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x158dc250, node0x158dc580);
SDValue node0x158dc6b0 = dag->getLoad(MVT::i32, dl, entry, node0x158dc620, mpi, 1);
SDValue node0x158db0f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158dc6b0, SDValue());
roots.reserve(1);
roots.push_back(node0x158db0f0);
dag->setRoot(node0x158db0f0);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x158dd530 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158dd5d0 = dag->getLoad(MVT::i32, dl, entry, node0x158dd530, mpi, 1);
SDValue node0x158dc950 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158dd5d0, SDValue());
roots.reserve(1);
roots.push_back(node0x158dc950);
dag->setRoot(node0x158dc950);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x158de7a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158dead0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x158deb70 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x158de7a0, node0x158dead0);
SDValue node0x158dec00 = dag->getLoad(MVT::i32, dl, entry, node0x158deb70, mpi, 1);
SDValue node0x158dc860 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158dec00, SDValue());
roots.reserve(1);
roots.push_back(node0x158dc860);
dag->setRoot(node0x158dc860);
    }
    break;
  case Codasip::i_lui_hi__opc_lui__regs__imm20_hi__:
    {
SDValue node0x158fde80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158fdf00 = dag->getConstant(2048LL, dl, MVT::i32);
SDValue node0x158fdfc0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x158fde80, node0x158fdf00);
SDValue node0x158fe030 = dag->getConstant(-4096LL, dl, MVT::i32);
SDValue node0x158fe0f0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x158fdfc0, node0x158fe030);
SDValue node0x158fdb90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x158fe0f0, SDValue());
roots.reserve(1);
roots.push_back(node0x158fdb90);
dag->setRoot(node0x158fdb90);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__reg0__simm12_lo__:
    {
SDValue node0x1591c860 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159199a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1591c860, SDValue());
roots.reserve(1);
roots.push_back(node0x159199a0);
dag->setRoot(node0x159199a0);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x1591d400 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1591c990 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1591d400, SDValue());
roots.reserve(1);
roots.push_back(node0x1591c990);
dag->setRoot(node0x1591c990);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_lo__:
    {
SDValue node0x1591e730 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1591ea60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1591eb00 = dag->getNode(ISD::OR, dl, MVT::i32, node0x1591e730, node0x1591ea60);
SDValue node0x1591daa0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1591eb00, SDValue());
roots.reserve(1);
roots.push_back(node0x1591daa0);
dag->setRoot(node0x1591daa0);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x1591f530 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1591f860 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1591f900 = dag->getNode(ISD::OR, dl, MVT::i32, node0x1591f530, node0x1591f860);
SDValue node0x1591ec70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1591f900, SDValue());
roots.reserve(1);
roots.push_back(node0x1591ec70);
dag->setRoot(node0x1591ec70);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_lo__reg0__:
    {
SDValue node0x1592fb70 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x1592fe10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x158da8b0 = dag->getStore(entry, dl, node0x1592fb70, node0x1592fe10, mpi, 1);
roots.reserve(1);
roots.push_back(node0x158da8b0);
dag->setRoot(node0x158da8b0);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_lo__regs__:
    {
SDValue node0x15930c90 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x15930df0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15931080 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15931120 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15930df0, node0x15931080);
SDValue node0x158da780 = dag->getStore(entry, dl, node0x15930c90, node0x15931120, mpi, 1);
roots.reserve(1);
roots.push_back(node0x158da780);
dag->setRoot(node0x158da780);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x15931cd0 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x15931f70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15aae5f0 = dag->getStore(entry, dl, node0x15931cd0, node0x15931f70, mpi, 1);
roots.reserve(1);
roots.push_back(node0x15aae5f0);
dag->setRoot(node0x15aae5f0);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x15933160 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x159332c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15933550 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159335f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x159332c0, node0x15933550);
SDValue node0x15b2cf60 = dag->getStore(entry, dl, node0x15933160, node0x159335f0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x15b2cf60);
dag->setRoot(node0x15b2cf60);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_lo__reg0__:
    {
SDValue node0x1593b120 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1593b460 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159ed120 = dag->getTruncStore(entry, dl, node0x1593b120, node0x1593b460, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x159ed120);
dag->setRoot(node0x159ed120);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_lo__regs__:
    {
SDValue node0x1593c7b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1593c9b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1593cc40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1593cce0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1593c9b0, node0x1593cc40);
SDValue node0x159ed300 = dag->getTruncStore(entry, dl, node0x1593c7b0, node0x1593cce0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x159ed300);
dag->setRoot(node0x159ed300);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x1593da30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1593dd70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159ed500 = dag->getTruncStore(entry, dl, node0x1593da30, node0x1593dd70, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x159ed500);
dag->setRoot(node0x159ed500);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x1593f040 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1593f240 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1593f4d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1593f570 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1593f240, node0x1593f4d0);
SDValue node0x159ed6e0 = dag->getTruncStore(entry, dl, node0x1593f040, node0x1593f570, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x159ed6e0);
dag->setRoot(node0x159ed6e0);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_lo__reg0__:
    {
SDValue node0x15942650 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x159428f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15942990 = dag->getStore(entry, dl, node0x15942650, node0x159428f0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x15942990);
dag->setRoot(node0x15942990);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_lo__regs__:
    {
SDValue node0x15943950 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x15943ab0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15943d40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15943de0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15943ab0, node0x15943d40);
SDValue node0x15943e70 = dag->getStore(entry, dl, node0x15943950, node0x15943de0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x15943e70);
dag->setRoot(node0x15943e70);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x159449f0 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x15944c90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15944d30 = dag->getStore(entry, dl, node0x159449f0, node0x15944c90, mpi, 1);
roots.reserve(1);
roots.push_back(node0x15944d30);
dag->setRoot(node0x15944d30);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x15945ee0 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x15946040 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x159462d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15946370 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15946040, node0x159462d0);
SDValue node0x15946400 = dag->getStore(entry, dl, node0x15945ee0, node0x15946370, mpi, 1);
roots.reserve(1);
roots.push_back(node0x15946400);
dag->setRoot(node0x15946400);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_lo__reg0__:
    {
SDValue node0x1594e0f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1594e430 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159ee3c0 = dag->getTruncStore(entry, dl, node0x1594e0f0, node0x1594e430, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x159ee3c0);
dag->setRoot(node0x159ee3c0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_lo__regs__:
    {
SDValue node0x1594f780 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1594f980 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1594fc10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1594fcb0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1594f980, node0x1594fc10);
SDValue node0x159ee5a0 = dag->getTruncStore(entry, dl, node0x1594f780, node0x1594fcb0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x159ee5a0);
dag->setRoot(node0x159ee5a0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x15950a00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15950d40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159ee7a0 = dag->getTruncStore(entry, dl, node0x15950a00, node0x15950d40, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x159ee7a0);
dag->setRoot(node0x159ee7a0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x15952010 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15952210 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159524a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15952540 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15952210, node0x159524a0);
SDValue node0x159ee980 = dag->getTruncStore(entry, dl, node0x15952010, node0x15952540, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x159ee980);
dag->setRoot(node0x159ee980);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_lo__reg0__:
    {
SDValue node0x15955620 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15955820 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x159558c0 = dag->getStore(entry, dl, node0x15955620, node0x15955820, mpi, 1);
roots.reserve(1);
roots.push_back(node0x159558c0);
dag->setRoot(node0x159558c0);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_lo__regs__:
    {
SDValue node0x15956880 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x159569e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15956bd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15956c70 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x159569e0, node0x15956bd0);
SDValue node0x15956d00 = dag->getStore(entry, dl, node0x15956880, node0x15956c70, mpi, 1);
roots.reserve(1);
roots.push_back(node0x15956d00);
dag->setRoot(node0x15956d00);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x15957880 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15957a80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15957b20 = dag->getStore(entry, dl, node0x15957880, node0x15957a80, mpi, 1);
roots.reserve(1);
roots.push_back(node0x15957b20);
dag->setRoot(node0x15957b20);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x15958cd0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x15958e30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15959020 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159590c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15958e30, node0x15959020);
SDValue node0x15959150 = dag->getStore(entry, dl, node0x15958cd0, node0x159590c0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x15959150);
dag->setRoot(node0x15959150);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_lo__reg0__:
    {
SDValue node0x15960d00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15960f90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1595e7c0 = dag->getStore(entry, dl, node0x15960d00, node0x15960f90, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1595e7c0);
dag->setRoot(node0x1595e7c0);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_lo__regs__:
    {
SDValue node0x159622e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15962430 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x159626c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15962760 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15962430, node0x159626c0);
SDValue node0x159627f0 = dag->getStore(entry, dl, node0x159622e0, node0x15962760, mpi, 1);
roots.reserve(1);
roots.push_back(node0x159627f0);
dag->setRoot(node0x159627f0);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x15963460 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x159636f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15963790 = dag->getStore(entry, dl, node0x15963460, node0x159636f0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x15963790);
dag->setRoot(node0x15963790);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x15964a10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x15964b60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15964df0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x15964e90 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x15964b60, node0x15964df0);
SDValue node0x15964f20 = dag->getStore(entry, dl, node0x15964a10, node0x15964e90, mpi, 1);
roots.reserve(1);
roots.push_back(node0x15964f20);
dag->setRoot(node0x15964f20);
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
SDValue node0x159958d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x15995600 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x159958d0, SDValue());
roots.reserve(1);
roots.push_back(node0x15995600);
dag->setRoot(node0x15995600);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__regs__simm12_simple__:
    {
SDValue node0x1586b490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1586b730 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x1586b490);
roots.reserve(1);
roots.push_back(node0x1586b730);
dag->setRoot(node0x1586b730);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__regs__simm12_simple__:
    {
SDValue node0x15876150 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x15874760 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x15876150, SDValue());
SDValue node0x15876600 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x158768a0 = dag->getNode(ISD::BRIND, dl, MVT::Other, node0x15874760, node0x15876600);
roots.reserve(2);
roots.push_back(node0x15874760);
roots.push_back(node0x158768a0);
dag->setRoot(node0x158768a0);
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
