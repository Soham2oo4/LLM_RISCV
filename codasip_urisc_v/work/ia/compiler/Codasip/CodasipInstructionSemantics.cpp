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
 * \date    2025-04-14
 * \author  Codasip (c) C compiler backend generator
 * \version 9.4.2
 * \brief   Source for compiler backend
 * \project codasip_urisc_v.ia
 * \note          Codasip Studio version: 9.4.2
 *                Project: codasip_urisc_v.ia
 *                Date: 2025-04-14 12:52:03
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
SDValue node0x12415d80 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x12936f20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12415b90 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x12936f20);
SDValue node0x129b9280 = dag->getCopyToReg(node0x12415b90, dl, dag->getRegister(Codasip::rf_gpr_1, MVT::i32), node0x12415d80, SDValue());
roots.reserve(2);
roots.push_back(node0x129b9280);
roots.push_back(node0x12415b90);
dag->setRoot(node0x129b9280);
    } else     {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_jump_reg_alias__regs__:
    {
SDValue node0x12689cf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12689ac0 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x12689cf0);
roots.reserve(1);
roots.push_back(node0x12689ac0);
dag->setRoot(node0x12689ac0);
    }
    break;
  case Codasip::i_jmp_rel_alias__rel_addr20__:
    {
SDValue node0x12688490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x12688710 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x12688490);
roots.reserve(1);
roots.push_back(node0x12688710);
dag->setRoot(node0x12688710);
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
SDValue node0x128fd4f0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1266e380 = dag->getConstant(-4LL, dl, MVT::i32);
SDValue node0x1266e5a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128fd4f0, node0x1266e380);
SDValue node0x1266e330 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1266e5a0, SDValue());
roots.reserve(1);
roots.push_back(node0x1266e330);
dag->setRoot(node0x1266e330);
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
SDValue node0x12707f80 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12707f30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12707f80, SDValue());
roots.reserve(1);
roots.push_back(node0x12707f30);
dag->setRoot(node0x12707f30);
    }
    break;
  case Codasip::i_mv_alias__regs__regs__:
    {
SDValue node0x12709010 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12708dc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12709010, SDValue());
roots.reserve(1);
roots.push_back(node0x12708dc0);
dag->setRoot(node0x12708dc0);
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
SDValue node0x12726ee0 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x12726e90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12726ee0, SDValue());
roots.reserve(1);
roots.push_back(node0x12726e90);
dag->setRoot(node0x12726e90);
    }
    break;
  case Codasip::i_seqz_alias__regs__regs__:
    {
SDValue node0x12727e90 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12728010 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127280c0 = dag->getSetCC(dl, MVT::i32, node0x12728010, node0x12727e90, ISD::SETEQ);
SDValue node0x12727dc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127280c0, SDValue());
roots.reserve(1);
roots.push_back(node0x12727dc0);
dag->setRoot(node0x12727dc0);
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
SDValue node0x12731a90 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12731a40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12731a90, SDValue());
roots.reserve(1);
roots.push_back(node0x12731a40);
dag->setRoot(node0x12731a40);
    }
    break;
  case Codasip::i_snez_alias__regs__regs__:
    {
SDValue node0x127329a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12732b20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12732bd0 = dag->getSetCC(dl, MVT::i32, node0x12732b20, node0x127329a0, ISD::SETNE);
SDValue node0x127328d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12732bd0, SDValue());
roots.reserve(1);
roots.push_back(node0x127328d0);
dag->setRoot(node0x127328d0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__regs__simm12_simple__immspec_1_:
    {
SDValue node0x127ab280 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x127a99c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127ab280, SDValue());
SDValue node0x127ab5f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127ab730 = dag->getNode(ISD::BRIND, dl, MVT::Other, node0x127a99c0, node0x127ab5f0);
roots.reserve(2);
roots.push_back(node0x127a99c0);
roots.push_back(node0x127ab730);
dag->setRoot(node0x127ab730);
    }
    break;
  case Codasip::i_call_rel_alias__rel_addr20__:
case Codasip::i_call_rel_alias__rel_addr20__ES:
case Codasip::i_call_rel_alias__rel_addr20__MC:
case Codasip::i_call_rel_alias__rel_addr20__BA:
    if (lowlevel) {
SDValue node0x12416b60 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x12416d70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x12416ff0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x12416d70);
SDValue node0x12416210 = dag->getCopyToReg(node0x12416ff0, dl, dag->getRegister(Codasip::rf_gpr_1, MVT::i32), node0x12416b60, SDValue());
roots.reserve(2);
roots.push_back(node0x12416210);
roots.push_back(node0x12416ff0);
dag->setRoot(node0x12416210);
    } else     {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__:
    {
SDValue node0x126712a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x12670fa0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x126712a0);
roots.reserve(1);
roots.push_back(node0x12670fa0);
dag->setRoot(node0x12670fa0);
    }
    break;
  case Codasip::i_jal_abs__opc_jal__regs__rel_addr20__:
    {
SDValue node0x12671880 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x12670850 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12671880, SDValue());
SDValue node0x12671bf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x12671820 = dag->getNode(ISD::BR, dl, MVT::Other, node0x12670850, node0x12671bf0);
roots.reserve(2);
roots.push_back(node0x12670850);
roots.push_back(node0x12671820);
dag->setRoot(node0x12671820);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__:
    {
SDValue node0x12825b10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x12825dc0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x12825b10);
roots.reserve(1);
roots.push_back(node0x12825dc0);
dag->setRoot(node0x12825dc0);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x12827090 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12827210 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x128272c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x12827360 = dag->getSetCC(dl, MVT::iAny, node0x12827210, node0x12827090, ISD::SETEQ);
SDValue node0x12827580 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x12827360, node0x128272c0);
roots.reserve(1);
roots.push_back(node0x12827580);
dag->setRoot(node0x12827580);
    } else     {
SDValue node0x12827090 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12827210 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x128272c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x12827360 = dag->getSetCC(dl, MVT::i32, node0x12827210, node0x12827090, ISD::SETEQ);
SDValue node0x12827580 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x12827360, node0x128272c0);
roots.reserve(1);
roots.push_back(node0x12827580);
dag->setRoot(node0x12827580);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x12829a30 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12829bb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12829c60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x12829d00 = dag->getSetCC(dl, MVT::iAny, node0x12829bb0, node0x12829a30, ISD::SETEQ);
SDValue node0x12829f20 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x12829d00, node0x12829c60);
roots.reserve(1);
roots.push_back(node0x12829f20);
dag->setRoot(node0x12829f20);
    } else     {
SDValue node0x12829a30 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12829bb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12829c60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x12829d00 = dag->getSetCC(dl, MVT::i32, node0x12829bb0, node0x12829a30, ISD::SETEQ);
SDValue node0x12829f20 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x12829d00, node0x12829c60);
roots.reserve(1);
roots.push_back(node0x12829f20);
dag->setRoot(node0x12829f20);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1282b6a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1282b750 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1282b800 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1282b8a0 = dag->getSetCC(dl, MVT::iAny, node0x1282b750, node0x1282b6a0, ISD::SETEQ);
SDValue node0x1282bac0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1282b8a0, node0x1282b800);
roots.reserve(1);
roots.push_back(node0x1282bac0);
dag->setRoot(node0x1282bac0);
    } else     {
SDValue node0x1282b6a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1282b750 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1282b800 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1282b8a0 = dag->getSetCC(dl, MVT::i32, node0x1282b750, node0x1282b6a0, ISD::SETEQ);
SDValue node0x1282bac0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1282b8a0, node0x1282b800);
roots.reserve(1);
roots.push_back(node0x1282bac0);
dag->setRoot(node0x1282bac0);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__:
    {
SDValue node0x1282ca20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x1282ccd0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x1282ca20);
roots.reserve(1);
roots.push_back(node0x1282ccd0);
dag->setRoot(node0x1282ccd0);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1282dc30 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x1282df90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1282e040 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1282e0e0 = dag->getSetCC(dl, MVT::iAny, node0x1282df90, node0x1282dc30, ISD::SETLT);
SDValue node0x1282e300 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1282e0e0, node0x1282e040);
roots.reserve(1);
roots.push_back(node0x1282e300);
dag->setRoot(node0x1282e300);
    } else     {
SDValue node0x1282dc30 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x1282df90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1282e040 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1282e0e0 = dag->getSetCC(dl, MVT::i32, node0x1282df90, node0x1282dc30, ISD::SETLT);
SDValue node0x1282e300 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1282e0e0, node0x1282e040);
roots.reserve(1);
roots.push_back(node0x1282e300);
dag->setRoot(node0x1282e300);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x128308f0 = dag->getConstant(-1LL, dl, MVT::i32);
SDValue node0x128309d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12830a80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x12830b20 = dag->getSetCC(dl, MVT::iAny, node0x128309d0, node0x128308f0, ISD::SETGT);
SDValue node0x12830d40 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x12830b20, node0x12830a80);
roots.reserve(1);
roots.push_back(node0x12830d40);
dag->setRoot(node0x12830d40);
    } else     {
SDValue node0x128308f0 = dag->getConstant(-1LL, dl, MVT::i32);
SDValue node0x128309d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12830a80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x12830b20 = dag->getSetCC(dl, MVT::i32, node0x128309d0, node0x128308f0, ISD::SETGT);
SDValue node0x12830d40 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x12830b20, node0x12830a80);
roots.reserve(1);
roots.push_back(node0x12830d40);
dag->setRoot(node0x12830d40);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x128324c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12832570 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12832620 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x128326c0 = dag->getSetCC(dl, MVT::iAny, node0x12832570, node0x128324c0, ISD::SETGE);
SDValue node0x128328e0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x128326c0, node0x12832620);
roots.reserve(1);
roots.push_back(node0x128328e0);
dag->setRoot(node0x128328e0);
    } else     {
SDValue node0x128324c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12832570 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12832620 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x128326c0 = dag->getSetCC(dl, MVT::i32, node0x12832570, node0x128324c0, ISD::SETGE);
SDValue node0x128328e0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x128326c0, node0x12832620);
roots.reserve(1);
roots.push_back(node0x128328e0);
dag->setRoot(node0x128328e0);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__:
    {
SDValue node0x12833840 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x12833af0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x12833840);
roots.reserve(1);
roots.push_back(node0x12833af0);
dag->setRoot(node0x12833af0);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x12834c30 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12834db0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12834e60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x12834f00 = dag->getSetCC(dl, MVT::iAny, node0x12834db0, node0x12834c30, ISD::SETEQ);
SDValue node0x12835120 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x12834f00, node0x12834e60);
roots.reserve(1);
roots.push_back(node0x12835120);
dag->setRoot(node0x12835120);
    } else     {
SDValue node0x12834c30 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12834db0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12834e60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x12834f00 = dag->getSetCC(dl, MVT::i32, node0x12834db0, node0x12834c30, ISD::SETEQ);
SDValue node0x12835120 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x12834f00, node0x12834e60);
roots.reserve(1);
roots.push_back(node0x12835120);
dag->setRoot(node0x12835120);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x128391d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12839280 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12839330 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x128393d0 = dag->getSetCC(dl, MVT::iAny, node0x12839280, node0x128391d0, ISD::SETUGE);
SDValue node0x128395f0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x128393d0, node0x12839330);
roots.reserve(1);
roots.push_back(node0x128395f0);
dag->setRoot(node0x128395f0);
    } else     {
SDValue node0x128391d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12839280 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12839330 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x128393d0 = dag->getSetCC(dl, MVT::i32, node0x12839280, node0x128391d0, ISD::SETUGE);
SDValue node0x128395f0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x128393d0, node0x12839330);
roots.reserve(1);
roots.push_back(node0x128395f0);
dag->setRoot(node0x128395f0);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1283b230 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1283b3b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1283b460 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1283b500 = dag->getSetCC(dl, MVT::iAny, node0x1283b3b0, node0x1283b230, ISD::SETGT);
SDValue node0x1283b720 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1283b500, node0x1283b460);
roots.reserve(1);
roots.push_back(node0x1283b720);
dag->setRoot(node0x1283b720);
    } else     {
SDValue node0x1283b230 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1283b3b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1283b460 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1283b500 = dag->getSetCC(dl, MVT::i32, node0x1283b3b0, node0x1283b230, ISD::SETGT);
SDValue node0x1283b720 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1283b500, node0x1283b460);
roots.reserve(1);
roots.push_back(node0x1283b720);
dag->setRoot(node0x1283b720);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x1283dc20 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1283dda0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1283de50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1283def0 = dag->getSetCC(dl, MVT::iAny, node0x1283dda0, node0x1283dc20, ISD::SETLT);
SDValue node0x1283e110 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1283def0, node0x1283de50);
roots.reserve(1);
roots.push_back(node0x1283e110);
dag->setRoot(node0x1283e110);
    } else     {
SDValue node0x1283dc20 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1283dda0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1283de50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1283def0 = dag->getSetCC(dl, MVT::i32, node0x1283dda0, node0x1283dc20, ISD::SETLT);
SDValue node0x1283e110 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1283def0, node0x1283de50);
roots.reserve(1);
roots.push_back(node0x1283e110);
dag->setRoot(node0x1283e110);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1283f890 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1283f940 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1283f9f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1283fa90 = dag->getSetCC(dl, MVT::iAny, node0x1283f940, node0x1283f890, ISD::SETLT);
SDValue node0x1283fcb0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1283fa90, node0x1283f9f0);
roots.reserve(1);
roots.push_back(node0x1283fcb0);
dag->setRoot(node0x1283fcb0);
    } else     {
SDValue node0x1283f890 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1283f940 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1283f9f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1283fa90 = dag->getSetCC(dl, MVT::i32, node0x1283f940, node0x1283f890, ISD::SETLT);
SDValue node0x1283fcb0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1283fa90, node0x1283f9f0);
roots.reserve(1);
roots.push_back(node0x1283fcb0);
dag->setRoot(node0x1283fcb0);
    }
    break;
  case Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x128418a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12841a20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12841ad0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x12841b70 = dag->getSetCC(dl, MVT::iAny, node0x12841a20, node0x128418a0, ISD::SETNE);
SDValue node0x12841d90 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x12841b70, node0x12841ad0);
roots.reserve(1);
roots.push_back(node0x12841d90);
dag->setRoot(node0x12841d90);
    } else     {
SDValue node0x128418a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12841a20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12841ad0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x12841b70 = dag->getSetCC(dl, MVT::i32, node0x12841a20, node0x128418a0, ISD::SETNE);
SDValue node0x12841d90 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x12841b70, node0x12841ad0);
roots.reserve(1);
roots.push_back(node0x12841d90);
dag->setRoot(node0x12841d90);
    }
    break;
  case Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x12845690 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12845740 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x128457f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x12845890 = dag->getSetCC(dl, MVT::iAny, node0x12845740, node0x12845690, ISD::SETULT);
SDValue node0x12845ab0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x12845890, node0x128457f0);
roots.reserve(1);
roots.push_back(node0x12845ab0);
dag->setRoot(node0x12845ab0);
    } else     {
SDValue node0x12845690 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12845740 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x128457f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x12845890 = dag->getSetCC(dl, MVT::i32, node0x12845740, node0x12845690, ISD::SETULT);
SDValue node0x12845ab0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x12845890, node0x128457f0);
roots.reserve(1);
roots.push_back(node0x12845ab0);
dag->setRoot(node0x12845ab0);
    }
    break;
  case Codasip::i_control_conditional__opc_bne__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x12847740 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128478c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12847970 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x12847a10 = dag->getSetCC(dl, MVT::iAny, node0x128478c0, node0x12847740, ISD::SETNE);
SDValue node0x12847c30 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x12847a10, node0x12847970);
roots.reserve(1);
roots.push_back(node0x12847c30);
dag->setRoot(node0x12847c30);
    } else     {
SDValue node0x12847740 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128478c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12847970 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x12847a10 = dag->getSetCC(dl, MVT::i32, node0x128478c0, node0x12847740, ISD::SETNE);
SDValue node0x12847c30 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x12847a10, node0x12847970);
roots.reserve(1);
roots.push_back(node0x12847c30);
dag->setRoot(node0x12847c30);
    }
    break;
  case Codasip::i_control_conditional__opc_bne__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x1284a130 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1284a2b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1284a360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1284a400 = dag->getSetCC(dl, MVT::iAny, node0x1284a2b0, node0x1284a130, ISD::SETNE);
SDValue node0x1284a620 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1284a400, node0x1284a360);
roots.reserve(1);
roots.push_back(node0x1284a620);
dag->setRoot(node0x1284a620);
    } else     {
SDValue node0x1284a130 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1284a2b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1284a360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1284a400 = dag->getSetCC(dl, MVT::i32, node0x1284a2b0, node0x1284a130, ISD::SETNE);
SDValue node0x1284a620 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1284a400, node0x1284a360);
roots.reserve(1);
roots.push_back(node0x1284a620);
dag->setRoot(node0x1284a620);
    }
    break;
  case Codasip::i_control_conditional__opc_bne__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1284bda0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1284be50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1284bf00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1284bfa0 = dag->getSetCC(dl, MVT::iAny, node0x1284be50, node0x1284bda0, ISD::SETNE);
SDValue node0x1284c1c0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1284bfa0, node0x1284bf00);
roots.reserve(1);
roots.push_back(node0x1284c1c0);
dag->setRoot(node0x1284c1c0);
    } else     {
SDValue node0x1284bda0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1284be50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1284bf00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1284bfa0 = dag->getSetCC(dl, MVT::i32, node0x1284be50, node0x1284bda0, ISD::SETNE);
SDValue node0x1284c1c0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1284bfa0, node0x1284bf00);
roots.reserve(1);
roots.push_back(node0x1284c1c0);
dag->setRoot(node0x1284c1c0);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x1279dd20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1279df80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1279e030 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1279e0e0 = dag->getSetCC(dl, MVT::iAny, node0x1279df80, node0x1279e030, ISD::SETLE);
SDValue node0x1279e180 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1279e0e0, node0x1279dd20);
roots.reserve(1);
roots.push_back(node0x1279e180);
dag->setRoot(node0x1279e180);
    } else     {
SDValue node0x1279dd20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1279df80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1279e030 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1279e0e0 = dag->getSetCC(dl, MVT::i32, node0x1279df80, node0x1279e030, ISD::SETLE);
SDValue node0x1279e180 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1279e0e0, node0x1279dd20);
roots.reserve(1);
roots.push_back(node0x1279e180);
dag->setRoot(node0x1279e180);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x1279ec40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1279eed0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1279ef80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1279f030 = dag->getSetCC(dl, MVT::iAny, node0x1279eed0, node0x1279ef80, ISD::SETULE);
SDValue node0x1279f100 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1279f030, node0x1279ec40);
roots.reserve(1);
roots.push_back(node0x1279f100);
dag->setRoot(node0x1279f100);
    } else     {
SDValue node0x1279ec40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1279eed0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1279ef80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1279f030 = dag->getSetCC(dl, MVT::i32, node0x1279eed0, node0x1279ef80, ISD::SETULE);
SDValue node0x1279f100 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1279f030, node0x1279ec40);
roots.reserve(1);
roots.push_back(node0x1279f100);
dag->setRoot(node0x1279f100);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x1279fb10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1279fda0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1279fe50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1279ff00 = dag->getSetCC(dl, MVT::iAny, node0x1279fda0, node0x1279fe50, ISD::SETGT);
SDValue node0x1279ffd0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1279ff00, node0x1279fb10);
roots.reserve(1);
roots.push_back(node0x1279ffd0);
dag->setRoot(node0x1279ffd0);
    } else     {
SDValue node0x1279fb10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1279fda0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1279fe50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1279ff00 = dag->getSetCC(dl, MVT::i32, node0x1279fda0, node0x1279fe50, ISD::SETGT);
SDValue node0x1279ffd0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1279ff00, node0x1279fb10);
roots.reserve(1);
roots.push_back(node0x1279ffd0);
dag->setRoot(node0x1279ffd0);
    }
    break;
  case Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x127a09e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x127a0c70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x127a0d20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127a0dd0 = dag->getSetCC(dl, MVT::iAny, node0x127a0c70, node0x127a0d20, ISD::SETUGT);
SDValue node0x127a0ea0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x127a0dd0, node0x127a09e0);
roots.reserve(1);
roots.push_back(node0x127a0ea0);
dag->setRoot(node0x127a0ea0);
    } else     {
SDValue node0x127a09e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x127a0c70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x127a0d20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127a0dd0 = dag->getSetCC(dl, MVT::i32, node0x127a0c70, node0x127a0d20, ISD::SETUGT);
SDValue node0x127a0ea0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x127a0dd0, node0x127a09e0);
roots.reserve(1);
roots.push_back(node0x127a0ea0);
dag->setRoot(node0x127a0ea0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__:
    {
SDValue node0x12673bd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x12673900 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x12673bd0);
roots.reserve(1);
roots.push_back(node0x12673900);
dag->setRoot(node0x12673900);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_simple__:
    {
SDValue node0x1267e190 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1267d8b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1267e190, SDValue());
SDValue node0x1267e500 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1267e160 = dag->getNode(ISD::BR, dl, MVT::Other, node0x1267d8b0, node0x1267e500);
roots.reserve(2);
roots.push_back(node0x1267d8b0);
roots.push_back(node0x1267e160);
dag->setRoot(node0x1267e160);
    }
    break;
  case Codasip::i_auipc__opc_auipc__regs__imm20_s12__:
    {
SDValue node0x1242dac0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1242ddb0 = dag->getConstant(-4LL, dl, MVT::i32);
SDValue node0x1242dfd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1242e070 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1242dac0, node0x1242dfd0);
SDValue node0x1242e100 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1242e070, node0x1242ddb0);
SDValue node0x1242da70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1242e100, SDValue());
roots.reserve(1);
roots.push_back(node0x1242da70);
dag->setRoot(node0x1242da70);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__:
    {
SDValue node0x124034b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1240fc20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x124034b0, SDValue());
roots.reserve(1);
roots.push_back(node0x1240fc20);
dag->setRoot(node0x1240fc20);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__:
    {
SDValue node0x129cdb20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12641720 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x126417c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x129cdb20, node0x12641720);
SDValue node0x12640240 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126417c0, SDValue());
roots.reserve(1);
roots.push_back(node0x12640240);
dag->setRoot(node0x12640240);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__:
    {
SDValue node0x12a0d3f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12a0d4a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12a0d540 = dag->getNode(ISD::AND, dl, MVT::i32, node0x12a0d3f0, node0x12a0d4a0);
SDValue node0x12a0bf30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12a0d540, SDValue());
roots.reserve(1);
roots.push_back(node0x12a0bf30);
dag->setRoot(node0x12a0bf30);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__:
    {
SDValue node0x12a182d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12a17160 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12a182d0, SDValue());
roots.reserve(1);
roots.push_back(node0x12a17160);
dag->setRoot(node0x12a17160);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__:
    {
SDValue node0x12a1c470 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12a1c520 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12a1c5c0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x12a1c470, node0x12a1c520);
SDValue node0x12a1afc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12a1c5c0, SDValue());
roots.reserve(1);
roots.push_back(node0x12a1afc0);
dag->setRoot(node0x12a1afc0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__:
    {
SDValue node0x1293b370 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1293b450 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1293b4f0 = dag->getSetCC(dl, MVT::i32, node0x1293b450, node0x1293b370, ISD::SETGT);
SDValue node0x1293a090 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1293b4f0, SDValue());
roots.reserve(1);
roots.push_back(node0x1293a090);
dag->setRoot(node0x1293a090);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:
    {
SDValue node0x1293f990 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1293fa40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1293fae0 = dag->getSetCC(dl, MVT::i32, node0x1293f990, node0x1293fa40, ISD::SETLT);
SDValue node0x1293e380 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1293fae0, SDValue());
roots.reserve(1);
roots.push_back(node0x1293e380);
dag->setRoot(node0x1293e380);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__:
    {
SDValue node0x1294afb0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1294b090 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1294b130 = dag->getSetCC(dl, MVT::i32, node0x1294b090, node0x1294afb0, ISD::SETNE);
SDValue node0x12949cd0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1294b130, SDValue());
roots.reserve(1);
roots.push_back(node0x12949cd0);
dag->setRoot(node0x12949cd0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:
    {
SDValue node0x1294f5d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1294f680 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1294f720 = dag->getSetCC(dl, MVT::i32, node0x1294f5d0, node0x1294f680, ISD::SETULT);
SDValue node0x1294dfc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1294f720, SDValue());
roots.reserve(1);
roots.push_back(node0x1294dfc0);
dag->setRoot(node0x1294dfc0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__:
    {
SDValue node0x1295a8e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x129596d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1295a8e0, SDValue());
roots.reserve(1);
roots.push_back(node0x129596d0);
dag->setRoot(node0x129596d0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:
    {
SDValue node0x1295ebc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1295ec70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1295ed10 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x1295ebc0, node0x1295ec70);
SDValue node0x1295d670 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1295ed10, SDValue());
roots.reserve(1);
roots.push_back(node0x1295d670);
dag->setRoot(node0x1295d670);
    }
    break;
  case Codasip::i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__:
    {
SDValue node0x12963a80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12963b30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12963bd0 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x12963a80, node0x12963b30);
SDValue node0x129635d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12963bd0, SDValue());
roots.reserve(1);
roots.push_back(node0x129635d0);
dag->setRoot(node0x129635d0);
    }
    break;
  case Codasip::i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__:
    {
SDValue node0x12968ba0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12968c50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12968cf0 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x12968ba0, node0x12968c50);
SDValue node0x129686f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12968cf0, SDValue());
roots.reserve(1);
roots.push_back(node0x129686f0);
dag->setRoot(node0x129686f0);
    }
    break;
  case Codasip::i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__:
    {
SDValue node0x1296dcc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1296dd70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1296de10 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x1296dcc0, node0x1296dd70);
SDValue node0x1296d810 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1296de10, SDValue());
roots.reserve(1);
roots.push_back(node0x1296d810);
dag->setRoot(node0x1296d810);
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
SDValue node0x12983760 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12981910 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12983760, SDValue());
roots.reserve(1);
roots.push_back(node0x12981910);
dag->setRoot(node0x12981910);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__regs__reg0__regs__:
    {
SDValue node0x12984950 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12983950 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12984950, SDValue());
roots.reserve(1);
roots.push_back(node0x12983950);
dag->setRoot(node0x12983950);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__regs__regs__reg0__:
    {
SDValue node0x129869b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12984ae0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x129869b0, SDValue());
roots.reserve(1);
roots.push_back(node0x12984ae0);
dag->setRoot(node0x12984ae0);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__regs__regs__regs__:
    {
SDValue node0x12987ce0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12987d90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12987e40 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12987ce0, node0x12987d90);
SDValue node0x129879f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12987e40, SDValue());
roots.reserve(1);
roots.push_back(node0x129879f0);
dag->setRoot(node0x129879f0);
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
SDValue node0x12990150 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1298e300 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12990150, SDValue());
roots.reserve(1);
roots.push_back(node0x1298e300);
dag->setRoot(node0x1298e300);
    }
    break;
  case Codasip::i_comp_3reg__opc_and__regs__regs__regs__:
    {
SDValue node0x129943e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12994490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12994540 = dag->getNode(ISD::AND, dl, MVT::i32, node0x129943e0, node0x12994490);
SDValue node0x12993240 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12994540, SDValue());
roots.reserve(1);
roots.push_back(node0x12993240);
dag->setRoot(node0x12993240);
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
SDValue node0x127c7bd0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x127c5d80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127c7bd0, SDValue());
roots.reserve(1);
roots.push_back(node0x127c5d80);
dag->setRoot(node0x127c5d80);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__regs__reg0__regs__:
    {
SDValue node0x127c8e20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127c7dc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127c8e20, SDValue());
roots.reserve(1);
roots.push_back(node0x127c7dc0);
dag->setRoot(node0x127c7dc0);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__regs__regs__reg0__:
    {
SDValue node0x127caee0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127c8fb0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127caee0, SDValue());
roots.reserve(1);
roots.push_back(node0x127c8fb0);
dag->setRoot(node0x127c8fb0);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__regs__regs__regs__:
    {
SDValue node0x127cc220 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127cc2d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x127cc380 = dag->getNode(ISD::OR, dl, MVT::i32, node0x127cc220, node0x127cc2d0);
SDValue node0x127cb070 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127cc380, SDValue());
roots.reserve(1);
roots.push_back(node0x127cb070);
dag->setRoot(node0x127cb070);
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
SDValue node0x127d46f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x127d28a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127d46f0, SDValue());
roots.reserve(1);
roots.push_back(node0x127d28a0);
dag->setRoot(node0x127d28a0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__regs__regs__reg0__:
    {
SDValue node0x127d77f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127d58d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127d77f0, SDValue());
roots.reserve(1);
roots.push_back(node0x127d58d0);
dag->setRoot(node0x127d58d0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__regs__regs__regs__:
    {
SDValue node0x127d8b70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127d8c20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x127d8d60 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x127d8b70, node0x127d8c20);
SDValue node0x127d7980 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127d8d60, SDValue());
roots.reserve(1);
roots.push_back(node0x127d7980);
dag->setRoot(node0x127d7980);
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
SDValue node0x127e10a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x127df250 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127e10a0, SDValue());
roots.reserve(1);
roots.push_back(node0x127df250);
dag->setRoot(node0x127df250);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__reg0__regs__:
    {
SDValue node0x127e2110 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x127e2290 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127e2340 = dag->getSetCC(dl, MVT::i32, node0x127e2290, node0x127e2110, ISD::SETGT);
SDValue node0x127e1290 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127e2340, SDValue());
roots.reserve(1);
roots.push_back(node0x127e1290);
dag->setRoot(node0x127e1290);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__regs__reg0__:
    {
SDValue node0x127e42f0 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x127e4510 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127e45c0 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x127e4510, node0x127e42f0);
SDValue node0x127e2660 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127e45c0, SDValue());
roots.reserve(1);
roots.push_back(node0x127e2660);
dag->setRoot(node0x127e2660);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__regs__regs__:
    {
SDValue node0x127e58b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127e5960 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x127e5a10 = dag->getSetCC(dl, MVT::i32, node0x127e58b0, node0x127e5960, ISD::SETLT);
SDValue node0x127e47d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127e5a10, SDValue());
roots.reserve(1);
roots.push_back(node0x127e47d0);
dag->setRoot(node0x127e47d0);
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
SDValue node0x127edde0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x127ec0f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127edde0, SDValue());
roots.reserve(1);
roots.push_back(node0x127ec0f0);
dag->setRoot(node0x127ec0f0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__regs__reg0__regs__:
    {
SDValue node0x127eee50 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x127eefd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127ef080 = dag->getSetCC(dl, MVT::i32, node0x127eefd0, node0x127eee50, ISD::SETNE);
SDValue node0x127edfd0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127ef080, SDValue());
roots.reserve(1);
roots.push_back(node0x127edfd0);
dag->setRoot(node0x127edfd0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__:
    {
SDValue node0x127f2340 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127f23f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x127f24a0 = dag->getSetCC(dl, MVT::i32, node0x127f2340, node0x127f23f0, ISD::SETULT);
SDValue node0x127f11a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127f24a0, SDValue());
roots.reserve(1);
roots.push_back(node0x127f11a0);
dag->setRoot(node0x127f11a0);
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
SDValue node0x127fa870 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x127f8a20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127fa870, SDValue());
roots.reserve(1);
roots.push_back(node0x127f8a20);
dag->setRoot(node0x127f8a20);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__regs__regs__reg0__:
    {
SDValue node0x127fd970 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127fba50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127fd970, SDValue());
roots.reserve(1);
roots.push_back(node0x127fba50);
dag->setRoot(node0x127fba50);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__regs__regs__regs__:
    {
SDValue node0x127fecf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127feda0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x127feee0 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x127fecf0, node0x127feda0);
SDValue node0x127fdb00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127feee0, SDValue());
roots.reserve(1);
roots.push_back(node0x127fdb00);
dag->setRoot(node0x127fdb00);
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
SDValue node0x12807220 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128053d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12807220, SDValue());
roots.reserve(1);
roots.push_back(node0x128053d0);
dag->setRoot(node0x128053d0);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__regs__regs__reg0__:
    {
SDValue node0x1280a320 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12808400 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1280a320, SDValue());
roots.reserve(1);
roots.push_back(node0x12808400);
dag->setRoot(node0x12808400);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__regs__regs__regs__:
    {
SDValue node0x1280b6a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1280b750 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1280b890 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x1280b6a0, node0x1280b750);
SDValue node0x1280a4b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1280b890, SDValue());
roots.reserve(1);
roots.push_back(node0x1280a4b0);
dag->setRoot(node0x1280a4b0);
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
SDValue node0x12813bd0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12811d80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12813bd0, SDValue());
roots.reserve(1);
roots.push_back(node0x12811d80);
dag->setRoot(node0x12811d80);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__regs__reg0__regs__:
    {
SDValue node0x12814bc0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12814dc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12814e70 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x12814bc0, node0x12814dc0);
SDValue node0x12813dc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12814e70, SDValue());
roots.reserve(1);
roots.push_back(node0x12813dc0);
dag->setRoot(node0x12813dc0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__regs__regs__reg0__:
    {
SDValue node0x12816ee0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12815080 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12816ee0, SDValue());
roots.reserve(1);
roots.push_back(node0x12815080);
dag->setRoot(node0x12815080);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__regs__regs__regs__:
    {
SDValue node0x128181c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12818270 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12818320 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x128181c0, node0x12818270);
SDValue node0x12817070 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12818320, SDValue());
roots.reserve(1);
roots.push_back(node0x12817070);
dag->setRoot(node0x12817070);
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
SDValue node0x12820630 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1281e7e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12820630, SDValue());
roots.reserve(1);
roots.push_back(node0x1281e7e0);
dag->setRoot(node0x1281e7e0);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__regs__reg0__regs__:
    {
SDValue node0x12821820 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12820820 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12821820, SDValue());
roots.reserve(1);
roots.push_back(node0x12820820);
dag->setRoot(node0x12820820);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__regs__regs__reg0__:
    {
SDValue node0x12823880 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128219b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12823880, SDValue());
roots.reserve(1);
roots.push_back(node0x128219b0);
dag->setRoot(node0x128219b0);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__regs__regs__regs__:
    {
SDValue node0x12824b60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12824c10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12824cc0 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x12824b60, node0x12824c10);
SDValue node0x12823a10 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12824cc0, SDValue());
roots.reserve(1);
roots.push_back(node0x12823a10);
dag->setRoot(node0x12823a10);
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
SDValue node0x1269c7a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128d9080 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1269c7a0, mpi, MVT::i8, 1);
SDValue node0x1269bb20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128d9080, SDValue());
roots.reserve(1);
roots.push_back(node0x1269bb20);
dag->setRoot(node0x1269bb20);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__:
    {
SDValue node0x1269dac0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1269db70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1269dc10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1269dac0, node0x1269db70);
SDValue node0x128d8ca0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1269dc10, mpi, MVT::i8, 1);
SDValue node0x1269b9e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128d8ca0, SDValue());
roots.reserve(1);
roots.push_back(node0x1269b9e0);
dag->setRoot(node0x1269b9e0);
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
SDValue node0x126ae310 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126a3fe0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x126ae310, mpi, MVT::i8, 1);
SDValue node0x126ad690 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126a3fe0, SDValue());
roots.reserve(1);
roots.push_back(node0x126ad690);
dag->setRoot(node0x126ad690);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__:
    {
SDValue node0x126af630 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126af6e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x126af780 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x126af630, node0x126af6e0);
SDValue node0x126a2d70 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x126af780, mpi, MVT::i8, 1);
SDValue node0x126ad550 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126a2d70, SDValue());
roots.reserve(1);
roots.push_back(node0x126ad550);
dag->setRoot(node0x126ad550);
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
SDValue node0x126bfe80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126b5b50 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x126bfe80, mpi, MVT::i16, 1);
SDValue node0x126bf200 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126b5b50, SDValue());
roots.reserve(1);
roots.push_back(node0x126bf200);
dag->setRoot(node0x126bf200);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__:
    {
SDValue node0x126c11a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126c1250 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x126c12f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x126c11a0, node0x126c1250);
SDValue node0x126b48e0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x126c12f0, mpi, MVT::i16, 1);
SDValue node0x126bf0c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126b48e0, SDValue());
roots.reserve(1);
roots.push_back(node0x126bf0c0);
dag->setRoot(node0x126bf0c0);
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
SDValue node0x126d19f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126c76c0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x126d19f0, mpi, MVT::i16, 1);
SDValue node0x126d0d70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126c76c0, SDValue());
roots.reserve(1);
roots.push_back(node0x126d0d70);
dag->setRoot(node0x126d0d70);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__:
    {
SDValue node0x126d2d10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126d2dc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x126d2e60 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x126d2d10, node0x126d2dc0);
SDValue node0x126c6450 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x126d2e60, mpi, MVT::i16, 1);
SDValue node0x126d0c30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126c6450, SDValue());
roots.reserve(1);
roots.push_back(node0x126d0c30);
dag->setRoot(node0x126d0c30);
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
SDValue node0x126e3250 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126e32f0 = dag->getLoad(MVT::i32, dl, entry, node0x126e3250, mpi, 1);
SDValue node0x126e2620 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126e32f0, SDValue());
roots.reserve(1);
roots.push_back(node0x126e2620);
dag->setRoot(node0x126e2620);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__:
    {
SDValue node0x126e4510 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126e45c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x126e4660 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x126e4510, node0x126e45c0);
SDValue node0x126e46f0 = dag->getLoad(MVT::i32, dl, entry, node0x126e4660, mpi, 1);
SDValue node0x126e2530 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126e46f0, SDValue());
roots.reserve(1);
roots.push_back(node0x126e2530);
dag->setRoot(node0x126e2530);
    }
    break;
  case Codasip::i_lui__opc_lui__regs__imm20_s12__:
    {
SDValue node0x127000f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126ffcc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127000f0, SDValue());
roots.reserve(1);
roots.push_back(node0x126ffcc0);
dag->setRoot(node0x126ffcc0);
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
SDValue node0x1270bb50 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1270bb00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1270bb50, SDValue());
roots.reserve(1);
roots.push_back(node0x1270bb00);
dag->setRoot(node0x1270bb00);
    }
    break;
  case Codasip::i_neg_alias__regs__regs__:
    {
SDValue node0x1270c9e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1270cbe0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1270cc90 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x1270c9e0, node0x1270cbe0);
SDValue node0x1270c990 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1270cc90, SDValue());
roots.reserve(1);
roots.push_back(node0x1270c990);
dag->setRoot(node0x1270c990);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__reg0__:
    {
SDValue node0x12737d60 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x12738000 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x127380a0 = dag->getStore(entry, dl, node0x12737d60, node0x12738000, mpi, 1);
roots.reserve(1);
roots.push_back(node0x127380a0);
dag->setRoot(node0x127380a0);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__:
    {
SDValue node0x12738d30 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x12739070 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12739120 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127391c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12739070, node0x12739120);
SDValue node0x12739250 = dag->getStore(entry, dl, node0x12738d30, node0x127391c0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x12739250);
dag->setRoot(node0x12739250);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_simple__reg0__:
    {
SDValue node0x12744060 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12744110 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12453bc0 = dag->getTruncStore(entry, dl, node0x12744060, node0x12744110, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x12453bc0);
dag->setRoot(node0x12453bc0);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_simple__regs__:
    {
SDValue node0x127453e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12745490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12745540 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12745690 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12745490, node0x12745540);
SDValue node0x12744260 = dag->getTruncStore(entry, dl, node0x127453e0, node0x12745690, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x12744260);
dag->setRoot(node0x12744260);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__:
    {
SDValue node0x1274ab40 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x1274ade0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1274ae80 = dag->getStore(entry, dl, node0x1274ab40, node0x1274ade0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1274ae80);
dag->setRoot(node0x1274ae80);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__:
    {
SDValue node0x1274bd00 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x1274c040 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1274c0f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1274c190 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1274c040, node0x1274c0f0);
SDValue node0x1274c220 = dag->getStore(entry, dl, node0x1274bd00, node0x1274c190, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1274c220);
dag->setRoot(node0x1274c220);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_simple__reg0__:
    {
SDValue node0x12757030 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x127570e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12454120 = dag->getTruncStore(entry, dl, node0x12757030, node0x127570e0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x12454120);
dag->setRoot(node0x12454120);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_simple__regs__:
    {
SDValue node0x127583b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12758460 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12758510 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12758660 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12758460, node0x12758510);
SDValue node0x12757230 = dag->getTruncStore(entry, dl, node0x127583b0, node0x12758660, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x12757230);
dag->setRoot(node0x12757230);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_simple__reg0__:
    {
SDValue node0x1275d890 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1275da90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1275db30 = dag->getStore(entry, dl, node0x1275d890, node0x1275da90, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1275db30);
dag->setRoot(node0x1275db30);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_simple__regs__:
    {
SDValue node0x1275e9b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1275ec50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1275ed00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1275eda0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1275ec50, node0x1275ed00);
SDValue node0x1275ee30 = dag->getStore(entry, dl, node0x1275e9b0, node0x1275eda0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1275ee30);
dag->setRoot(node0x1275ee30);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__reg0__:
    {
SDValue node0x12769930 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x127699e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12769a80 = dag->getStore(entry, dl, node0x12769930, node0x127699e0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x12769a80);
dag->setRoot(node0x12769a80);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__:
    {
SDValue node0x1276ac50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1276ad00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1276adb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1276ae50 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1276ad00, node0x1276adb0);
SDValue node0x1276aee0 = dag->getStore(entry, dl, node0x1276ac50, node0x1276ae50, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1276aee0);
dag->setRoot(node0x1276aee0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:
    {
SDValue node0x1279af60 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1279ad40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1279af60, SDValue());
roots.reserve(1);
roots.push_back(node0x1279ad40);
dag->setRoot(node0x1279ad40);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:
    {
SDValue node0x12799b60 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x12799a80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12799b60, SDValue());
roots.reserve(1);
roots.push_back(node0x12799a80);
dag->setRoot(node0x12799a80);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:
    {
SDValue node0x1279be60 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1279b4f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1279be60, SDValue());
roots.reserve(1);
roots.push_back(node0x1279b4f0);
dag->setRoot(node0x1279b4f0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:
    {
SDValue node0x1279b6c0 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x1279adf0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1279b6c0, SDValue());
roots.reserve(1);
roots.push_back(node0x1279adf0);
dag->setRoot(node0x1279adf0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__regs__regs__regs__SHIFT_MASK_CLONE_:
    {
SDValue node0x12681bc0 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x126d0a20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12680710 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12757180 = dag->getNode(ISD::AND, dl, MVT::i32, node0x12680710, node0x12681bc0);
SDValue node0x127455e0 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x126d0a20, node0x12757180);
SDValue node0x12452430 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127455e0, SDValue());
roots.reserve(1);
roots.push_back(node0x12452430);
dag->setRoot(node0x12452430);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__regs__regs__swappedCmpClone0__:
    {
SDValue node0x12799ad0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1279a400 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1279c700 = dag->getSetCC(dl, MVT::i32, node0x12799ad0, node0x1279a400, ISD::SETGT);
SDValue node0x1279c390 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1279c700, SDValue());
roots.reserve(1);
roots.push_back(node0x1279c390);
dag->setRoot(node0x1279c390);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__swappedCmpClone0__:
    {
SDValue node0x1279cf80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1279d0d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1279d180 = dag->getSetCC(dl, MVT::i32, node0x1279cf80, node0x1279d0d0, ISD::SETUGT);
SDValue node0x1279bc90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1279d180, SDValue());
roots.reserve(1);
roots.push_back(node0x1279bc90);
dag->setRoot(node0x1279bc90);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__regs__regs__regs__SHIFT_MASK_CLONE_:
    {
SDValue node0x127d8950 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x12676a00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126759d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x127d8cd0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x126759d0, node0x127d8950);
SDValue node0x127441b0 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x12676a00, node0x127d8cd0);
SDValue node0x1247c890 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127441b0, SDValue());
roots.reserve(1);
roots.push_back(node0x1247c890);
dag->setRoot(node0x1247c890);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__regs__regs__regs__SHIFT_MASK_CLONE_:
    {
SDValue node0x127fead0 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x126d9230 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126d7fc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x127fee50 = dag->getNode(ISD::AND, dl, MVT::i32, node0x126d7fc0, node0x127fead0);
SDValue node0x12732c70 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x126d9230, node0x127fee50);
SDValue node0x1247d210 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12732c70, SDValue());
roots.reserve(1);
roots.push_back(node0x1247d210);
dag->setRoot(node0x1247d210);
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
SDValue node0x126880c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1269c840 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x126880c0, mpi, MVT::i8, 1);
SDValue node0x128d1650 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1269c840, SDValue());
roots.reserve(1);
roots.push_back(node0x128d1650);
dag->setRoot(node0x128d1650);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x1269dca0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1269d780 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1269dd70 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1269dca0, node0x1269d780);
SDValue node0x128d7480 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x1269dd70, mpi, MVT::i8, 1);
SDValue node0x1244db30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128d7480, SDValue());
roots.reserve(1);
roots.push_back(node0x1244db30);
dag->setRoot(node0x1244db30);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x127ac700 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127a49a0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x127ac700, mpi, MVT::i8, 1);
SDValue node0x127a8400 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127a49a0, SDValue());
roots.reserve(1);
roots.push_back(node0x127a8400);
dag->setRoot(node0x127a8400);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x127ac7b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127a3e70 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x127ac7b0, mpi, MVT::i8, 1);
SDValue node0x1279cd30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127a3e70, SDValue());
roots.reserve(1);
roots.push_back(node0x1279cd30);
dag->setRoot(node0x1279cd30);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__AEXT_CLONE_:
    {
SDValue node0x126a2ad0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126ae3b0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x126a2ad0, mpi, MVT::i8, 1);
SDValue node0x1244e740 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126ae3b0, SDValue());
roots.reserve(1);
roots.push_back(node0x1244e740);
dag->setRoot(node0x1244e740);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x126af810 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126af2f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x126af8e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x126af810, node0x126af2f0);
SDValue node0x128d70a0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x126af8e0, mpi, MVT::i8, 1);
SDValue node0x1244f250 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128d70a0, SDValue());
roots.reserve(1);
roots.push_back(node0x1244f250);
dag->setRoot(node0x1244f250);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x127ad070 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127a33f0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x127ad070, mpi, MVT::i8, 1);
SDValue node0x127a8f00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127a33f0, SDValue());
roots.reserve(1);
roots.push_back(node0x127a8f00);
dag->setRoot(node0x127a8f00);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x127ad120 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127a3340 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x127ad120, mpi, MVT::i8, 1);
SDValue node0x1279d760 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127a3340, SDValue());
roots.reserve(1);
roots.push_back(node0x1279d760);
dag->setRoot(node0x1279d760);
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
SDValue node0x126b4640 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126bff20 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x126b4640, mpi, MVT::i16, 1);
SDValue node0x1244fe90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126bff20, SDValue());
roots.reserve(1);
roots.push_back(node0x1244fe90);
dag->setRoot(node0x1244fe90);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x126c1380 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126c0e60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x126c1450 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x126c1380, node0x126c0e60);
SDValue node0x128d6cc0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x126c1450, mpi, MVT::i16, 1);
SDValue node0x124509a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128d6cc0, SDValue());
roots.reserve(1);
roots.push_back(node0x124509a0);
dag->setRoot(node0x124509a0);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x127ae340 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127adad0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x127ae340, mpi, MVT::i16, 1);
SDValue node0x127accb0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127adad0, SDValue());
roots.reserve(1);
roots.push_back(node0x127accb0);
dag->setRoot(node0x127accb0);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x127ae3f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127a2750 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x127ae3f0, mpi, MVT::i16, 1);
SDValue node0x1247d5e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127a2750, SDValue());
roots.reserve(1);
roots.push_back(node0x1247d5e0);
dag->setRoot(node0x1247d5e0);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__AEXT_CLONE_:
    {
SDValue node0x126c61b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126d1a90 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x126c61b0, mpi, MVT::i16, 1);
SDValue node0x124515b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126d1a90, SDValue());
roots.reserve(1);
roots.push_back(node0x124515b0);
dag->setRoot(node0x124515b0);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x126d2ef0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126d29d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x126d2fc0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x126d2ef0, node0x126d29d0);
SDValue node0x128d68e0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x126d2fc0, mpi, MVT::i16, 1);
SDValue node0x124520c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128d68e0, SDValue());
roots.reserve(1);
roots.push_back(node0x124520c0);
dag->setRoot(node0x124520c0);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x127aecb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12995060 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x127aecb0, mpi, MVT::i16, 1);
SDValue node0x127ab060 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12995060, SDValue());
roots.reserve(1);
roots.push_back(node0x127ab060);
dag->setRoot(node0x127ab060);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x127aed60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128d5550 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x127aed60, mpi, MVT::i16, 1);
SDValue node0x127a6420 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128d5550, SDValue());
roots.reserve(1);
roots.push_back(node0x127a6420);
dag->setRoot(node0x127a6420);
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
SDValue node0x127aff80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127b0030 = dag->getLoad(MVT::i32, dl, entry, node0x127aff80, mpi, 1);
SDValue node0x127ae8f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127b0030, SDValue());
roots.reserve(1);
roots.push_back(node0x127ae8f0);
dag->setRoot(node0x127ae8f0);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_:
    {
SDValue node0x127b0690 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x127b08b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x127b0630 = dag->getStore(entry, dl, node0x127b0690, node0x127b08b0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x127b0630);
dag->setRoot(node0x127b0630);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x127b10a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x127b1150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127a6620 = dag->getTruncStore(entry, dl, node0x127b10a0, node0x127b1150, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x127a6620);
dag->setRoot(node0x127a6620);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_:
    {
SDValue node0x127b17f0 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x127b1a10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x127b1790 = dag->getStore(entry, dl, node0x127b17f0, node0x127b1a10, mpi, 1);
roots.reserve(1);
roots.push_back(node0x127b1790);
dag->setRoot(node0x127b1790);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x127b2270 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x127b2320 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127a90c0 = dag->getTruncStore(entry, dl, node0x127b2270, node0x127b2320, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x127a90c0);
dag->setRoot(node0x127a90c0);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_simple__regs__immspec_1_:
    {
SDValue node0x127b29c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x127b2b40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x127b2960 = dag->getStore(entry, dl, node0x127b29c0, node0x127b2b40, mpi, 1);
roots.reserve(1);
roots.push_back(node0x127b2960);
dag->setRoot(node0x127b2960);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x127b33a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x127b3450 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127b31e0 = dag->getStore(entry, dl, node0x127b33a0, node0x127b3450, mpi, 1);
roots.reserve(1);
roots.push_back(node0x127b31e0);
dag->setRoot(node0x127b31e0);
    }
    break;
  case Codasip::i_jal__opc_jal__reg0__rel_addr20__:
    {
SDValue node0x1266f0e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x1266f2d0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x1266f0e0);
roots.reserve(1);
roots.push_back(node0x1266f2d0);
dag->setRoot(node0x1266f2d0);
    }
    break;
  case Codasip::i_jal__opc_jal__regs__rel_addr20__:
    {
SDValue node0x12670090 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1266e710 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12670090, SDValue());
SDValue node0x126704a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x12670690 = dag->getNode(ISD::BR, dl, MVT::Other, node0x1266e710, node0x126704a0);
roots.reserve(2);
roots.push_back(node0x1266e710);
roots.push_back(node0x12670690);
dag->setRoot(node0x12670690);
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
SDValue node0x128866c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12886620 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128866c0, SDValue());
roots.reserve(1);
roots.push_back(node0x12886620);
dag->setRoot(node0x12886620);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__:
    if (lowlevel) {
SDValue node0x1288aeb0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1288b0d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1288b180 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1288b230 = dag->getSetCC(dl, MVT::iAny, node0x1288b0d0, node0x1288aeb0, ISD::SETEQ);
SDValue node0x12884460 = dag->getNode(ISD::SDIV, dl, MVT::i32, node0x1288b180, node0x1288b0d0);
SDValue node0x1288b320 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x1288b230, node0x1288aeb0, node0x12884460);
SDValue node0x1288ad90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1288b320, SDValue());
roots.reserve(1);
roots.push_back(node0x1288ad90);
dag->setRoot(node0x1288ad90);
    } else     {
SDValue node0x1288aeb0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1288b0d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1288b180 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1288b230 = dag->getSetCC(dl, MVT::i32, node0x1288b0d0, node0x1288aeb0, ISD::SETEQ);
SDValue node0x12884460 = dag->getNode(ISD::SDIV, dl, MVT::i32, node0x1288b180, node0x1288b0d0);
SDValue node0x1288b320 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x1288b230, node0x1288aeb0, node0x12884460);
SDValue node0x1288ad90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1288b320, SDValue());
roots.reserve(1);
roots.push_back(node0x1288ad90);
dag->setRoot(node0x1288ad90);
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
SDValue node0x1289a3c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1289a440 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1289a4e0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1289a580 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x1289a620 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1289a720 = dag->getLoad(MVT::i16, dl, entry, node0x1289a3c0, mpi, 1);
SDValue node0x1289a7f0 = dag->getLoad(MVT::i16, dl, entry, node0x1289a3c0, mpi, 1);
SDValue node0x1289a8c0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1289a7f0, node0x1289a720);
SDValue node0x1289a950 = dag->getLoad(MVT::i16, dl, entry, node0x1289a440, mpi, 1);
SDValue node0x1289aa20 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1289a8c0, node0x1289a580);
SDValue node0x1289aae0 = dag->getLoad(MVT::i16, dl, entry, node0x1289a440, mpi, 1);
SDValue node0x1289abb0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1289aae0, node0x1289a950);
SDValue node0x1289ac70 = dag->getLoad(MVT::i16, dl, entry, node0x1289a4e0, mpi, 1);
SDValue node0x1289ad40 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1289abb0, node0x1289a580);
SDValue node0x1289ae00 = dag->getLoad(MVT::i16, dl, entry, node0x1289a4e0, mpi, 1);
SDValue node0x1289aed0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1289ad40, node0x1289aa20);
SDValue node0x1289af90 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1289ae00, node0x1289ac70);
SDValue node0x1289b050 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1289af90, node0x1289a580);
SDValue node0x1289b110 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1289aed0, node0x1289b050);
SDValue node0x11ebe7f0 = dag->getStore(entry, dl, node0x1289b110, node0x1289a620, mpi, 1);
roots.reserve(1);
roots.push_back(node0x11ebe7f0);
dag->setRoot(node0x11ebe7f0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__regs__:
    {
SDValue node0x1289c1a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1289c220 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1289c2c0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1289c360 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x1289c400 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1289c4e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1289c590 = dag->getLoad(MVT::i16, dl, entry, node0x1289c1a0, mpi, 1);
SDValue node0x1289c660 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1289c4e0, node0x1289c2c0);
SDValue node0x1289c6f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1289c4e0, node0x1289c220);
SDValue node0x1289c7b0 = dag->getLoad(MVT::i16, dl, entry, node0x1289c4e0, mpi, 1);
SDValue node0x1289c880 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1289c7b0, node0x1289c590);
SDValue node0x1289c940 = dag->getLoad(MVT::i16, dl, entry, node0x1289c220, mpi, 1);
SDValue node0x1289ca10 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1289c880, node0x1289c360);
SDValue node0x1289cad0 = dag->getLoad(MVT::i16, dl, entry, node0x1289c6f0, mpi, 1);
SDValue node0x1289cba0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1289cad0, node0x1289c940);
SDValue node0x1289cc60 = dag->getLoad(MVT::i16, dl, entry, node0x1289c2c0, mpi, 1);
SDValue node0x1289cd30 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1289cba0, node0x1289c360);
SDValue node0x1289cdf0 = dag->getLoad(MVT::i16, dl, entry, node0x1289c660, mpi, 1);
SDValue node0x1289cec0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1289cd30, node0x1289ca10);
SDValue node0x1289cf80 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1289cdf0, node0x1289cc60);
SDValue node0x1289d040 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1289cf80, node0x1289c360);
SDValue node0x1289d100 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1289cec0, node0x1289d040);
SDValue node0x12635160 = dag->getStore(entry, dl, node0x1289d100, node0x1289c400, mpi, 1);
roots.reserve(1);
roots.push_back(node0x12635160);
dag->setRoot(node0x12635160);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__reg0__:
    {
SDValue node0x1289ee20 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1289eea0 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1289ef40 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1289efe0 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x1289f080 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1289f160 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1289f210 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1289f160, node0x1289ef40);
SDValue node0x1289f2a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1289f160, node0x1289eea0);
SDValue node0x1289f360 = dag->getLoad(MVT::i16, dl, entry, node0x1289f160, mpi, 1);
SDValue node0x1289f430 = dag->getLoad(MVT::i16, dl, entry, node0x1289ee20, mpi, 1);
SDValue node0x1289f500 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1289f430, node0x1289f360);
SDValue node0x1289f5c0 = dag->getLoad(MVT::i16, dl, entry, node0x1289f2a0, mpi, 1);
SDValue node0x1289f690 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1289f500, node0x1289efe0);
SDValue node0x1289f750 = dag->getLoad(MVT::i16, dl, entry, node0x1289eea0, mpi, 1);
SDValue node0x1289f820 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1289f750, node0x1289f5c0);
SDValue node0x1289f8e0 = dag->getLoad(MVT::i16, dl, entry, node0x1289f210, mpi, 1);
SDValue node0x1289f9b0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1289f820, node0x1289efe0);
SDValue node0x1289fa70 = dag->getLoad(MVT::i16, dl, entry, node0x1289ef40, mpi, 1);
SDValue node0x1289fb40 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1289f9b0, node0x1289f690);
SDValue node0x1289fc00 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1289fa70, node0x1289f8e0);
SDValue node0x1289fcc0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1289fc00, node0x1289efe0);
SDValue node0x1289fd80 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1289fb40, node0x1289fcc0);
SDValue node0x129ef140 = dag->getStore(entry, dl, node0x1289fd80, node0x1289f080, mpi, 1);
roots.reserve(1);
roots.push_back(node0x129ef140);
dag->setRoot(node0x129ef140);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__regs__:
    {
SDValue node0x128a1380 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128a1420 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128a14c0 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x128a1560 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128a1640 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128a16f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x128a17a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128a1640, node0x128a1420);
SDValue node0x128a1830 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128a1640, node0x128a1380);
SDValue node0x128a18f0 = dag->getLoad(MVT::i16, dl, entry, node0x128a1640, mpi, 1);
SDValue node0x128a19c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128a16f0, node0x128a1420);
SDValue node0x128a1a80 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128a16f0, node0x128a1380);
SDValue node0x128a1b40 = dag->getLoad(MVT::i16, dl, entry, node0x128a16f0, mpi, 1);
SDValue node0x128a1c10 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128a1b40, node0x128a18f0);
SDValue node0x128a1cd0 = dag->getLoad(MVT::i16, dl, entry, node0x128a1830, mpi, 1);
SDValue node0x128a1da0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128a1c10, node0x128a14c0);
SDValue node0x128a1e60 = dag->getLoad(MVT::i16, dl, entry, node0x128a1a80, mpi, 1);
SDValue node0x128a1f30 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128a1e60, node0x128a1cd0);
SDValue node0x128a1ff0 = dag->getLoad(MVT::i16, dl, entry, node0x128a17a0, mpi, 1);
SDValue node0x128a20c0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128a1f30, node0x128a14c0);
SDValue node0x128a2180 = dag->getLoad(MVT::i16, dl, entry, node0x128a19c0, mpi, 1);
SDValue node0x128a2250 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128a20c0, node0x128a1da0);
SDValue node0x128a2310 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128a2180, node0x128a1ff0);
SDValue node0x128a23d0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128a2310, node0x128a14c0);
SDValue node0x128a2490 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128a2250, node0x128a23d0);
SDValue node0x1262d900 = dag->getStore(entry, dl, node0x128a2490, node0x128a1560, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1262d900);
dag->setRoot(node0x1262d900);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__regs__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__reg0__:
    {
roots.reserve(0);
dag->setRoot(entry);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__regs__:
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
  case Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0__:
    {
SDValue node0x128d0520 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128d0480 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128d0520, SDValue());
roots.reserve(1);
roots.push_back(node0x128d0480);
dag->setRoot(node0x128d0480);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0__:
    if (lowlevel) {
SDValue node0x128d3a40 = dag->getConstant(-32768LL, dl, MVT::i32);
SDValue node0x128d3ae0 = dag->getConstant(32767LL, dl, MVT::i32);
SDValue node0x128d3d00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128d3db0 = dag->getSetCC(dl, MVT::iAny, node0x128d3d00, node0x128d3a40, ISD::SETGT);
SDValue node0x128ce260 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x128d3db0, node0x128d3d00, node0x128d3a40);
SDValue node0x128d3e70 = dag->getSetCC(dl, MVT::iAny, node0x128ce260, node0x128d3ae0, ISD::SETLT);
SDValue node0x128d3f40 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x128d3e70, node0x128ce260, node0x128d3ae0);
SDValue node0x128d3920 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128d3f40, SDValue());
roots.reserve(1);
roots.push_back(node0x128d3920);
dag->setRoot(node0x128d3920);
    } else     {
SDValue node0x128d3a40 = dag->getConstant(-32768LL, dl, MVT::i32);
SDValue node0x128d3ae0 = dag->getConstant(32767LL, dl, MVT::i32);
SDValue node0x128d3d00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128d3db0 = dag->getSetCC(dl, MVT::i32, node0x128d3d00, node0x128d3a40, ISD::SETGT);
SDValue node0x128ce260 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x128d3db0, node0x128d3d00, node0x128d3a40);
SDValue node0x128d3e70 = dag->getSetCC(dl, MVT::i32, node0x128ce260, node0x128d3ae0, ISD::SETLT);
SDValue node0x128d3f40 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x128d3e70, node0x128ce260, node0x128d3ae0);
SDValue node0x128d3920 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128d3f40, SDValue());
roots.reserve(1);
roots.push_back(node0x128d3920);
dag->setRoot(node0x128d3920);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0__:
    {
SDValue node0x128d63c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128d6440 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128d64e0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128d6580 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128d6660 = dag->getLoad(MVT::i16, dl, entry, node0x128d63c0, mpi, 1);
SDValue node0x128d6730 = dag->getLoad(MVT::i16, dl, entry, node0x128d63c0, mpi, 1);
SDValue node0x128d6800 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128d6730, node0x128d6660);
SDValue node0x128ce3f0 = dag->getStore(entry, dl, node0x128d6800, node0x128d63c0, mpi, 1);
SDValue node0x128d69b0 = dag->getLoad(MVT::i16, dl, node0x128ce3f0, node0x128d6440, mpi, 1);
SDValue node0x128d6a80 = dag->getLoad(MVT::i16, dl, node0x128ce3f0, node0x128d6440, mpi, 1);
SDValue node0x128d6b50 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128d6a80, node0x128d69b0);
SDValue node0x128d6c10 = dag->getStore(node0x128ce3f0, dl, node0x128d6b50, node0x128d6440, mpi, 1);
SDValue node0x128d6d90 = dag->getLoad(MVT::i16, dl, node0x128d6c10, node0x128d64e0, mpi, 1);
SDValue node0x128d6e60 = dag->getLoad(MVT::i16, dl, node0x128d6c10, node0x128d64e0, mpi, 1);
SDValue node0x128d6f30 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128d6e60, node0x128d6d90);
SDValue node0x128d6ff0 = dag->getStore(node0x128d6c10, dl, node0x128d6f30, node0x128d64e0, mpi, 1);
SDValue node0x128d7170 = dag->getLoad(MVT::i16, dl, node0x128d6ff0, node0x128d6580, mpi, 1);
SDValue node0x128d7240 = dag->getLoad(MVT::i16, dl, node0x128d6ff0, node0x128d6580, mpi, 1);
SDValue node0x128d7310 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128d7240, node0x128d7170);
SDValue node0x128d73d0 = dag->getStore(node0x128d6ff0, dl, node0x128d7310, node0x128d6580, mpi, 1);
roots.reserve(4);
roots.push_back(node0x128ce3f0);
roots.push_back(node0x128d6c10);
roots.push_back(node0x128d6ff0);
roots.push_back(node0x128d73d0);
dag->setRoot(node0x128d73d0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__regs__:
    {
SDValue node0x128d8490 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128d8510 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128d85b0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128d8650 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128d8730 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x128d87e0 = dag->getLoad(MVT::i16, dl, entry, node0x128d8490, mpi, 1);
SDValue node0x128d88b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128d8730, node0x128d8650);
SDValue node0x128d8940 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128d8730, node0x128d85b0);
SDValue node0x128d8a00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128d8730, node0x128d8510);
SDValue node0x128d8ac0 = dag->getLoad(MVT::i16, dl, entry, node0x128d8730, mpi, 1);
SDValue node0x128d8b90 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128d8ac0, node0x128d87e0);
SDValue node0x128d83b0 = dag->getStore(entry, dl, node0x128d8b90, node0x128d8490, mpi, 1);
SDValue node0x128d8d70 = dag->getLoad(MVT::i16, dl, node0x128d83b0, node0x128d8510, mpi, 1);
SDValue node0x128d8e40 = dag->getLoad(MVT::i16, dl, node0x128d83b0, node0x128d8a00, mpi, 1);
SDValue node0x128d8f10 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128d8e40, node0x128d8d70);
SDValue node0x128d8fd0 = dag->getStore(node0x128d83b0, dl, node0x128d8f10, node0x128d8510, mpi, 1);
SDValue node0x128d9150 = dag->getLoad(MVT::i16, dl, node0x128d8fd0, node0x128d85b0, mpi, 1);
SDValue node0x128d9220 = dag->getLoad(MVT::i16, dl, node0x128d8fd0, node0x128d8940, mpi, 1);
SDValue node0x128d92f0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128d9220, node0x128d9150);
SDValue node0x128d93b0 = dag->getStore(node0x128d8fd0, dl, node0x128d92f0, node0x128d85b0, mpi, 1);
SDValue node0x128d9530 = dag->getLoad(MVT::i16, dl, node0x128d93b0, node0x128d8650, mpi, 1);
SDValue node0x128d9600 = dag->getLoad(MVT::i16, dl, node0x128d93b0, node0x128d88b0, mpi, 1);
SDValue node0x128d96d0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128d9600, node0x128d9530);
SDValue node0x128d9790 = dag->getStore(node0x128d93b0, dl, node0x128d96d0, node0x128d8650, mpi, 1);
roots.reserve(4);
roots.push_back(node0x128d83b0);
roots.push_back(node0x128d8fd0);
roots.push_back(node0x128d93b0);
roots.push_back(node0x128d9790);
dag->setRoot(node0x128d9790);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0__:
    {
SDValue node0x128db5d0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128db650 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128db6f0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128db790 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128db870 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x128db920 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128db870, node0x128db790);
SDValue node0x128db9b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128db870, node0x128db6f0);
SDValue node0x128dba70 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128db870, node0x128db650);
SDValue node0x128dbb30 = dag->getLoad(MVT::i16, dl, entry, node0x128db870, mpi, 1);
SDValue node0x128dbc00 = dag->getLoad(MVT::i16, dl, entry, node0x128db5d0, mpi, 1);
SDValue node0x128dbcd0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128dbc00, node0x128dbb30);
SDValue node0x128da970 = dag->getStore(entry, dl, node0x128dbcd0, node0x128db5d0, mpi, 1);
SDValue node0x128dbeb0 = dag->getLoad(MVT::i16, dl, node0x128da970, node0x128dba70, mpi, 1);
SDValue node0x128dbf80 = dag->getLoad(MVT::i16, dl, node0x128da970, node0x128db650, mpi, 1);
SDValue node0x128dc050 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128dbf80, node0x128dbeb0);
SDValue node0x128dc110 = dag->getStore(node0x128da970, dl, node0x128dc050, node0x128db650, mpi, 1);
SDValue node0x128dc290 = dag->getLoad(MVT::i16, dl, node0x128dc110, node0x128db9b0, mpi, 1);
SDValue node0x128dc360 = dag->getLoad(MVT::i16, dl, node0x128dc110, node0x128db6f0, mpi, 1);
SDValue node0x128dc430 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128dc360, node0x128dc290);
SDValue node0x128dc4f0 = dag->getStore(node0x128dc110, dl, node0x128dc430, node0x128db6f0, mpi, 1);
SDValue node0x128dc670 = dag->getLoad(MVT::i16, dl, node0x128dc4f0, node0x128db920, mpi, 1);
SDValue node0x128dc740 = dag->getLoad(MVT::i16, dl, node0x128dc4f0, node0x128db790, mpi, 1);
SDValue node0x128dc810 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128dc740, node0x128dc670);
SDValue node0x128dc8d0 = dag->getStore(node0x128dc4f0, dl, node0x128dc810, node0x128db790, mpi, 1);
roots.reserve(4);
roots.push_back(node0x128da970);
roots.push_back(node0x128dc110);
roots.push_back(node0x128dc4f0);
roots.push_back(node0x128dc8d0);
dag->setRoot(node0x128dc8d0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__regs__:
    {
SDValue node0x128dde80 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128ddfa0 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128de040 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128de0e0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128de1c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128de270 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x128de320 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128de1c0, node0x128de0e0);
SDValue node0x128de3b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128de1c0, node0x128de040);
SDValue node0x128de470 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128de1c0, node0x128ddfa0);
SDValue node0x128de530 = dag->getLoad(MVT::i16, dl, entry, node0x128de1c0, mpi, 1);
SDValue node0x128de600 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128de270, node0x128de0e0);
SDValue node0x128de6c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128de270, node0x128de040);
SDValue node0x128de780 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128de270, node0x128ddfa0);
SDValue node0x128de840 = dag->getLoad(MVT::i16, dl, entry, node0x128de270, mpi, 1);
SDValue node0x128de910 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128de840, node0x128de530);
SDValue node0x128ddda0 = dag->getStore(entry, dl, node0x128de910, node0x128dde80, mpi, 1);
SDValue node0x128deaf0 = dag->getLoad(MVT::i16, dl, node0x128ddda0, node0x128de470, mpi, 1);
SDValue node0x128debc0 = dag->getLoad(MVT::i16, dl, node0x128ddda0, node0x128de780, mpi, 1);
SDValue node0x128dec90 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128debc0, node0x128deaf0);
SDValue node0x128ded50 = dag->getStore(node0x128ddda0, dl, node0x128dec90, node0x128ddfa0, mpi, 1);
SDValue node0x128deed0 = dag->getLoad(MVT::i16, dl, node0x128ded50, node0x128de3b0, mpi, 1);
SDValue node0x128defa0 = dag->getLoad(MVT::i16, dl, node0x128ded50, node0x128de6c0, mpi, 1);
SDValue node0x128df070 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128defa0, node0x128deed0);
SDValue node0x128df130 = dag->getStore(node0x128ded50, dl, node0x128df070, node0x128de040, mpi, 1);
SDValue node0x128df2b0 = dag->getLoad(MVT::i16, dl, node0x128df130, node0x128de320, mpi, 1);
SDValue node0x128df380 = dag->getLoad(MVT::i16, dl, node0x128df130, node0x128de600, mpi, 1);
SDValue node0x128df450 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128df380, node0x128df2b0);
SDValue node0x128df510 = dag->getStore(node0x128df130, dl, node0x128df450, node0x128de0e0, mpi, 1);
roots.reserve(4);
roots.push_back(node0x128ddda0);
roots.push_back(node0x128ded50);
roots.push_back(node0x128df130);
roots.push_back(node0x128df510);
dag->setRoot(node0x128df510);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0__reg0__:
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
SDValue node0x127219c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12720a60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127219c0, SDValue());
roots.reserve(1);
roots.push_back(node0x12720a60);
dag->setRoot(node0x12720a60);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_simple__:
    {
SDValue node0x12723f80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12724030 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x127240d0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x12723f80, node0x12724030);
SDValue node0x12722d40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127240d0, SDValue());
roots.reserve(1);
roots.push_back(node0x12722d40);
dag->setRoot(node0x12722d40);
    }
    break;
  case Codasip::i_xret__opc_mret__:
    {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__AEXT_CLONE_:
    {
SDValue node0x1242def0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1242de50 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1242dd10 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1242dc70 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x1242dbd0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x12897e90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12895b10 = dag->getLoad(MVT::i16, dl, entry, node0x1242def0, mpi, 1);
SDValue node0x1293b590 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12897e90, node0x1242dbd0);
SDValue node0x127b6280 = dag->getLoad(MVT::i16, dl, entry, node0x1242def0, mpi, 1);
SDValue node0x12416e10 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x127b6280, node0x12895b10);
SDValue node0x12439a20 = dag->getLoad(MVT::i16, dl, entry, node0x1242de50, mpi, 1);
SDValue node0x12416ea0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12416e10, node0x1242dc70);
SDValue node0x12439ae0 = dag->getLoad(MVT::i16, dl, entry, node0x1242de50, mpi, 1);
SDValue node0x12416f30 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12439ae0, node0x12439a20);
SDValue node0x12439ba0 = dag->getLoad(MVT::i16, dl, entry, node0x1242dd10, mpi, 1);
SDValue node0x12415fb0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12416f30, node0x1242dc70);
SDValue node0x12439c60 = dag->getLoad(MVT::i16, dl, entry, node0x1242dd10, mpi, 1);
SDValue node0x129b8f40 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12415fb0, node0x12416ea0);
SDValue node0x127b5ea0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12439c60, node0x12439ba0);
SDValue node0x1284b930 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x127b5ea0, node0x1242dc70);
SDValue node0x12847ab0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x129b8f40, node0x1284b930);
SDValue node0x128474f0 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x12847ab0);
SDValue node0x12439db0 = dag->getStore(entry, dl, node0x12847ab0, node0x1293b590, mpi, 1);
SDValue node0x127be6a0 = dag->getCopyToReg(node0x12439db0, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128474f0, SDValue());
roots.reserve(2);
roots.push_back(node0x127be6a0);
roots.push_back(node0x12439db0);
dag->setRoot(node0x127be6a0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__AEXT_CLONE_:
    {
SDValue node0x128a97b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128a9490 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x127b7150 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128a70e0 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x12897db0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1243b110 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1243b1a0 = dag->getLoad(MVT::i16, dl, entry, node0x128a97b0, mpi, 1);
SDValue node0x1243b230 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1284a4a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1243b110, node0x12897db0);
SDValue node0x12849ee0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1243b230, node0x127b7150);
SDValue node0x1284c100 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1243b230, node0x128a9490);
SDValue node0x1243b350 = dag->getLoad(MVT::i16, dl, entry, node0x1243b230, mpi, 1);
SDValue node0x1284c040 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1243b350, node0x1243b1a0);
SDValue node0x1243b410 = dag->getLoad(MVT::i16, dl, entry, node0x128a9490, mpi, 1);
SDValue node0x12847b70 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1284c040, node0x128a70e0);
SDValue node0x1243b4d0 = dag->getLoad(MVT::i16, dl, entry, node0x1284c100, mpi, 1);
SDValue node0x1283f420 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1243b4d0, node0x1243b410);
SDValue node0x1243b590 = dag->getLoad(MVT::i16, dl, entry, node0x127b7150, mpi, 1);
SDValue node0x12841cd0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1283f420, node0x128a70e0);
SDValue node0x1243b650 = dag->getLoad(MVT::i16, dl, entry, node0x12849ee0, mpi, 1);
SDValue node0x12841c10 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12841cd0, node0x12847b70);
SDValue node0x12841650 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1243b650, node0x1243b590);
SDValue node0x128459f0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12841650, node0x128a70e0);
SDValue node0x12845930 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12841c10, node0x128459f0);
SDValue node0x12845220 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x12845930);
SDValue node0x1243a4d0 = dag->getStore(entry, dl, node0x12845930, node0x1284a4a0, mpi, 1);
SDValue node0x12991330 = dag->getCopyToReg(node0x1243a4d0, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12845220, SDValue());
roots.reserve(2);
roots.push_back(node0x12991330);
roots.push_back(node0x1243a4d0);
dag->setRoot(node0x12991330);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__AEXT_CLONE_:
    {
SDValue node0x128acaa0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128ac700 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x12899130 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x12899270 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x12899310 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1243ce10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1243cea0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1283fb30 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1243ce10, node0x12899130);
SDValue node0x1283b660 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1243ce10, node0x128ac700);
SDValue node0x1243cf90 = dag->getLoad(MVT::i16, dl, entry, node0x1243ce10, mpi, 1);
SDValue node0x1283b5a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1243cea0, node0x12899310);
SDValue node0x1243d050 = dag->getLoad(MVT::i16, dl, entry, node0x128acaa0, mpi, 1);
SDValue node0x1283afe0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1243d050, node0x1243cf90);
SDValue node0x1243d110 = dag->getLoad(MVT::i16, dl, entry, node0x1283b660, mpi, 1);
SDValue node0x1283e050 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1283afe0, node0x12899270);
SDValue node0x1243d1d0 = dag->getLoad(MVT::i16, dl, entry, node0x128ac700, mpi, 1);
SDValue node0x1283df90 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1243d1d0, node0x1243d110);
SDValue node0x1243d290 = dag->getLoad(MVT::i16, dl, entry, node0x1283fb30, mpi, 1);
SDValue node0x1283d9d0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1283df90, node0x12899270);
SDValue node0x1243d350 = dag->getLoad(MVT::i16, dl, entry, node0x12899130, mpi, 1);
SDValue node0x1283fbf0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1283d9d0, node0x1283e050);
SDValue node0x12838d60 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1243d350, node0x1243d290);
SDValue node0x128349e0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12838d60, node0x12899270);
SDValue node0x12837720 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1283fbf0, node0x128349e0);
SDValue node0x12837890 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x12837720);
SDValue node0x1243c090 = dag->getStore(entry, dl, node0x12837720, node0x1283b5a0, mpi, 1);
SDValue node0x1243d4d0 = dag->getCopyToReg(node0x1243c090, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12837890, SDValue());
roots.reserve(2);
roots.push_back(node0x1243d4d0);
roots.push_back(node0x1243c090);
dag->setRoot(node0x1243d4d0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__AEXT_CLONE_:
    {
SDValue node0x128af430 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128af110 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128af090 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x128a12e0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1243ecf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1243ed80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(3), MVT::i32);
SDValue node0x1243ee10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12837920 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1243ecf0, node0x128af110);
SDValue node0x128379e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1243ecf0, node0x128af430);
SDValue node0x1243ef00 = dag->getLoad(MVT::i16, dl, entry, node0x1243ecf0, mpi, 1);
SDValue node0x12839530 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1243ed80, node0x128a12e0);
SDValue node0x12839470 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1243ee10, node0x128af110);
SDValue node0x12834fa0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1243ee10, node0x128af430);
SDValue node0x1243f020 = dag->getLoad(MVT::i16, dl, entry, node0x1243ee10, mpi, 1);
SDValue node0x12832760 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1243f020, node0x1243ef00);
SDValue node0x1243f0e0 = dag->getLoad(MVT::i16, dl, entry, node0x128379e0, mpi, 1);
SDValue node0x12832050 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12832760, node0x128af090);
SDValue node0x1243f1a0 = dag->getLoad(MVT::i16, dl, entry, node0x12834fa0, mpi, 1);
SDValue node0x12833a30 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1243f1a0, node0x1243f0e0);
SDValue node0x1243f260 = dag->getLoad(MVT::i16, dl, entry, node0x12837920, mpi, 1);
SDValue node0x12833770 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12833a30, node0x128af090);
SDValue node0x1243f320 = dag->getLoad(MVT::i16, dl, entry, node0x12839470, mpi, 1);
SDValue node0x12833970 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12833770, node0x12832050);
SDValue node0x128338e0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1243f320, node0x1243f260);
SDValue node0x12835060 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128338e0, node0x128af090);
SDValue node0x12832820 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12833970, node0x12835060);
SDValue node0x1282cac0 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x12832820);
SDValue node0x1243de80 = dag->getStore(entry, dl, node0x12832820, node0x12839530, mpi, 1);
SDValue node0x1243f4a0 = dag->getCopyToReg(node0x1243de80, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1282cac0, SDValue());
roots.reserve(2);
roots.push_back(node0x1243f4a0);
roots.push_back(node0x1243de80);
dag->setRoot(node0x1243f4a0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__AEXT_CLONE_:
    {
SDValue node0x1288ae30 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1288af50 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1288aff0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x12894730 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128947b0 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x128b1a30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128b1960 = dag->getLoad(MVT::i16, dl, entry, node0x1288ae30, mpi, 1);
SDValue node0x128b1890 = dag->getLoad(MVT::i16, dl, entry, node0x1288ae30, mpi, 1);
SDValue node0x128b2af0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128b1890, node0x128b1960);
SDValue node0x128b17c0 = dag->getLoad(MVT::i16, dl, entry, node0x1288af50, mpi, 1);
SDValue node0x1282e240 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128b2af0, node0x128947b0);
SDValue node0x128b16f0 = dag->getLoad(MVT::i16, dl, entry, node0x1288af50, mpi, 1);
SDValue node0x1282e180 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x1282e240);
SDValue node0x1282dbc0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128b16f0, node0x128b17c0);
SDValue node0x128b1620 = dag->getLoad(MVT::i16, dl, entry, node0x1288aff0, mpi, 1);
SDValue node0x12830c80 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128b1a30, node0x1282e180);
SDValue node0x12830bc0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1282dbc0, node0x128947b0);
SDValue node0x128b1550 = dag->getLoad(MVT::i16, dl, entry, node0x1288aff0, mpi, 1);
SDValue node0x12830560 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x12830bc0);
SDValue node0x128b7180 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128b1550, node0x128b1620);
SDValue node0x128b2a20 = dag->getLoad(MVT::i16, dl, entry, node0x12894730, mpi, 1);
SDValue node0x128b4fd0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12830c80, node0x12830560);
SDValue node0x128b5090 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128b7180, node0x128947b0);
SDValue node0x128b31e0 = dag->getLoad(MVT::i16, dl, entry, node0x12894730, mpi, 1);
SDValue node0x128b6d20 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x128b5090);
SDValue node0x128b6db0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128b31e0, node0x128b2a20);
SDValue node0x128b6e70 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128b4fd0, node0x128b6d20);
SDValue node0x128b7000 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128b6db0, node0x128947b0);
SDValue node0x128b70c0 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x128b7000);
SDValue node0x128b4f40 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128b6e70, node0x128b70c0);
SDValue node0x124408a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128b4f40, SDValue());
roots.reserve(1);
roots.push_back(node0x124408a0);
dag->setRoot(node0x124408a0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__regs__AEXT_CLONE_:
    {
SDValue node0x128bf740 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128bf420 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x12895a30 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128bc850 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128b4d10 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x128b3110 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128b3040 = dag->getLoad(MVT::i16, dl, entry, node0x128bf740, mpi, 1);
SDValue node0x128b2f70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1282b230 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128b2f70, node0x128bc850);
SDValue node0x1282cc10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128b2f70, node0x12895a30);
SDValue node0x1282c950 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128b2f70, node0x128bf420);
SDValue node0x128b2ea0 = dag->getLoad(MVT::i16, dl, entry, node0x128b2f70, mpi, 1);
SDValue node0x1282cb50 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128b2ea0, node0x128b3040);
SDValue node0x128b2dd0 = dag->getLoad(MVT::i16, dl, entry, node0x128bf420, mpi, 1);
SDValue node0x128b2b80 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1282cb50, node0x128b4d10);
SDValue node0x128b2d00 = dag->getLoad(MVT::i16, dl, entry, node0x1282c950, mpi, 1);
SDValue node0x128b2c40 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x128b2b80);
SDValue node0x1282ba00 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128b2d00, node0x128b2dd0);
SDValue node0x128b5150 = dag->getLoad(MVT::i16, dl, entry, node0x12895a30, mpi, 1);
SDValue node0x12825bb0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128b3110, node0x128b2c40);
SDValue node0x128274c0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1282ba00, node0x128b4d10);
SDValue node0x128b5700 = dag->getLoad(MVT::i16, dl, entry, node0x1282cc10, mpi, 1);
SDValue node0x12827400 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x128274c0);
SDValue node0x12826e40 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128b5700, node0x128b5150);
SDValue node0x128b5630 = dag->getLoad(MVT::i16, dl, entry, node0x128bc850, mpi, 1);
SDValue node0x12829e60 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12825bb0, node0x12827400);
SDValue node0x12829da0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12826e40, node0x128b4d10);
SDValue node0x128b5560 = dag->getLoad(MVT::i16, dl, entry, node0x1282b230, mpi, 1);
SDValue node0x128297e0 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x12829da0);
SDValue node0x12825c40 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128b5560, node0x128b5630);
SDValue node0x1294f7c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12829e60, node0x128297e0);
SDValue node0x127e23e0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12825c40, node0x128b4d10);
SDValue node0x127e5ab0 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x127e23e0);
SDValue node0x127ef120 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1294f7c0, node0x127e5ab0);
SDValue node0x12442480 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127ef120, SDValue());
roots.reserve(1);
roots.push_back(node0x12442480);
dag->setRoot(node0x12442480);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0__AEXT_CLONE_:
    {
SDValue node0x128c30e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128c2d40 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128b6880 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128b6900 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128b69a0 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x128b5490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x128b53c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127f2540 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128b5490, node0x128b6900);
SDValue node0x12825d00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128b5490, node0x128b6880);
SDValue node0x12825a40 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128b5490, node0x128c2d40);
SDValue node0x128b52f0 = dag->getLoad(MVT::i16, dl, entry, node0x128b5490, mpi, 1);
SDValue node0x128b5220 = dag->getLoad(MVT::i16, dl, entry, node0x128c30e0, mpi, 1);
SDValue node0x1294b1d0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128b5220, node0x128b52f0);
SDValue node0x128b6f30 = dag->getLoad(MVT::i16, dl, entry, node0x12825a40, mpi, 1);
SDValue node0x1293fb80 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1294b1d0, node0x128b69a0);
SDValue node0x128b7720 = dag->getLoad(MVT::i16, dl, entry, node0x128c2d40, mpi, 1);
SDValue node0x12444060 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x1293fb80);
SDValue node0x124440d0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128b7720, node0x128b6f30);
SDValue node0x128b7650 = dag->getLoad(MVT::i16, dl, entry, node0x12825d00, mpi, 1);
SDValue node0x12444170 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128b53c0, node0x12444060);
SDValue node0x12444210 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x124440d0, node0x128b69a0);
SDValue node0x128b7580 = dag->getLoad(MVT::i16, dl, entry, node0x128b6880, mpi, 1);
SDValue node0x124442b0 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x12444210);
SDValue node0x12444320 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128b7580, node0x128b7650);
SDValue node0x128b74b0 = dag->getLoad(MVT::i16, dl, entry, node0x127f2540, mpi, 1);
SDValue node0x124443c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12444170, node0x124442b0);
SDValue node0x12444460 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12444320, node0x128b69a0);
SDValue node0x128b73e0 = dag->getLoad(MVT::i16, dl, entry, node0x128b6900, mpi, 1);
SDValue node0x12444500 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x12444460);
SDValue node0x12444570 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128b73e0, node0x128b74b0);
SDValue node0x12444610 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x124443c0, node0x12444500);
SDValue node0x124446b0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12444570, node0x128b69a0);
SDValue node0x12444750 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x124446b0);
SDValue node0x124447c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12444610, node0x12444750);
SDValue node0x12444860 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x124447c0, SDValue());
roots.reserve(1);
roots.push_back(node0x12444860);
dag->setRoot(node0x12444860);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__regs__regs__AEXT_CLONE_:
    {
SDValue node0x128c6070 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128c5d50 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128c5cd0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128b6ae0 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x128b7310 = dag->getRegister(TargetRegisterInfo::index2VirtReg(3), MVT::i32);
SDValue node0x128b7240 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x124464a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12446530 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128b7310, node0x128c5cd0);
SDValue node0x124465d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128b7310, node0x128c5d50);
SDValue node0x12446670 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128b7310, node0x128c6070);
SDValue node0x12446710 = dag->getLoad(MVT::i16, dl, entry, node0x128b7310, mpi, 1);
SDValue node0x124467a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x124464a0, node0x128c5cd0);
SDValue node0x12446840 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x124464a0, node0x128c5d50);
SDValue node0x124468e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x124464a0, node0x128c6070);
SDValue node0x12446980 = dag->getLoad(MVT::i16, dl, entry, node0x124464a0, mpi, 1);
SDValue node0x12446a10 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12446980, node0x12446710);
SDValue node0x12446ab0 = dag->getLoad(MVT::i16, dl, entry, node0x12446670, mpi, 1);
SDValue node0x12446b40 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12446a10, node0x128b6ae0);
SDValue node0x12446be0 = dag->getLoad(MVT::i16, dl, entry, node0x124468e0, mpi, 1);
SDValue node0x12446c70 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x12446b40);
SDValue node0x12446ce0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12446be0, node0x12446ab0);
SDValue node0x12446d80 = dag->getLoad(MVT::i16, dl, entry, node0x124465d0, mpi, 1);
SDValue node0x12446e10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128b7240, node0x12446c70);
SDValue node0x12446eb0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12446ce0, node0x128b6ae0);
SDValue node0x12446f50 = dag->getLoad(MVT::i16, dl, entry, node0x12446840, mpi, 1);
SDValue node0x12446fe0 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x12446eb0);
SDValue node0x12447050 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12446f50, node0x12446d80);
SDValue node0x124470f0 = dag->getLoad(MVT::i16, dl, entry, node0x12446530, mpi, 1);
SDValue node0x12447180 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12446e10, node0x12446fe0);
SDValue node0x12447220 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12447050, node0x128b6ae0);
SDValue node0x124472c0 = dag->getLoad(MVT::i16, dl, entry, node0x124467a0, mpi, 1);
SDValue node0x12447350 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x12447220);
SDValue node0x124473c0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x124472c0, node0x124470f0);
SDValue node0x12447460 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12447180, node0x12447350);
SDValue node0x12447500 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x124473c0, node0x128b6ae0);
SDValue node0x124475a0 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x12447500);
SDValue node0x12447610 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12447460, node0x124475a0);
SDValue node0x124476b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12447610, SDValue());
roots.reserve(1);
roots.push_back(node0x124476b0);
dag->setRoot(node0x124476b0);
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
SDValue node0x12799830 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12799680 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12799830, SDValue());
roots.reserve(1);
roots.push_back(node0x12799680);
dag->setRoot(node0x12799680);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__:
    {
SDValue node0x128991d0 = dag->getConstant(8LL, dl, MVT::i32);
SDValue node0x128993f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128994a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12899550 = dag->getRegister(TargetRegisterInfo::index2VirtReg(3), MVT::i32);
SDValue node0x128924d0 = dag->getNode(ISD::MUL, dl, MVT::i32, node0x128993f0, node0x128994a0);
SDValue node0x12899620 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x128924d0, node0x128991d0);
SDValue node0x128996e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12899620, node0x12899550);
SDValue node0x12899010 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128996e0, SDValue());
roots.reserve(1);
roots.push_back(node0x12899010);
dag->setRoot(node0x12899010);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__:
    {
SDValue node0x128a6de0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128a6e60 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128a6f00 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128a6fa0 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x128a7040 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128a71c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128a7270 = dag->getLoad(MVT::i16, dl, entry, node0x128a6de0, mpi, 1);
SDValue node0x128a4bd0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128a71c0, node0x128a7040);
SDValue node0x128a7360 = dag->getLoad(MVT::i16, dl, entry, node0x128a6de0, mpi, 1);
SDValue node0x128a7430 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128a7360, node0x128a7270);
SDValue node0x128a74f0 = dag->getLoad(MVT::i16, dl, entry, node0x128a6e60, mpi, 1);
SDValue node0x128a75c0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128a7430, node0x128a6fa0);
SDValue node0x128a7680 = dag->getLoad(MVT::i16, dl, entry, node0x128a6e60, mpi, 1);
SDValue node0x128a7750 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128a7680, node0x128a74f0);
SDValue node0x128a7810 = dag->getLoad(MVT::i16, dl, entry, node0x128a6f00, mpi, 1);
SDValue node0x128a78e0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128a7750, node0x128a6fa0);
SDValue node0x128a79a0 = dag->getLoad(MVT::i16, dl, entry, node0x128a6f00, mpi, 1);
SDValue node0x128a7a70 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128a78e0, node0x128a75c0);
SDValue node0x128a7b30 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128a79a0, node0x128a7810);
SDValue node0x128a7bf0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128a7b30, node0x128a6fa0);
SDValue node0x128a7cb0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128a7a70, node0x128a7bf0);
SDValue node0x128a7d70 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128a7cb0);
SDValue node0x129a36b0 = dag->getStore(entry, dl, node0x128a7cb0, node0x128a4bd0, mpi, 1);
SDValue node0x128a6d40 = dag->getCopyToReg(node0x129a36b0, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128a7d70, SDValue());
roots.reserve(2);
roots.push_back(node0x128a6d40);
roots.push_back(node0x129a36b0);
dag->setRoot(node0x128a6d40);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__:
    {
SDValue node0x128a9410 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128a9530 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128a95d0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128a9670 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x128a9710 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128a9890 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x128a9940 = dag->getLoad(MVT::i16, dl, entry, node0x128a9410, mpi, 1);
SDValue node0x128a9a10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128a9ac0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128a9890, node0x128a9710);
SDValue node0x128a9b50 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128a9a10, node0x128a95d0);
SDValue node0x128a9c10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128a9a10, node0x128a9530);
SDValue node0x128a9cd0 = dag->getLoad(MVT::i16, dl, entry, node0x128a9a10, mpi, 1);
SDValue node0x128a9da0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128a9cd0, node0x128a9940);
SDValue node0x128a9e60 = dag->getLoad(MVT::i16, dl, entry, node0x128a9530, mpi, 1);
SDValue node0x128a9f30 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128a9da0, node0x128a9670);
SDValue node0x128a9ff0 = dag->getLoad(MVT::i16, dl, entry, node0x128a9c10, mpi, 1);
SDValue node0x128aa0c0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128a9ff0, node0x128a9e60);
SDValue node0x128aa180 = dag->getLoad(MVT::i16, dl, entry, node0x128a95d0, mpi, 1);
SDValue node0x128aa250 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128aa0c0, node0x128a9670);
SDValue node0x128aa310 = dag->getLoad(MVT::i16, dl, entry, node0x128a9b50, mpi, 1);
SDValue node0x128aa3e0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128aa250, node0x128a9f30);
SDValue node0x128aa4a0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128aa310, node0x128aa180);
SDValue node0x128aa560 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128aa4a0, node0x128a9670);
SDValue node0x128aa620 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128aa3e0, node0x128aa560);
SDValue node0x128aa6e0 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128aa620);
SDValue node0x129b2510 = dag->getStore(entry, dl, node0x128aa620, node0x128a9ac0, mpi, 1);
SDValue node0x128a7ff0 = dag->getCopyToReg(node0x129b2510, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128aa6e0, SDValue());
roots.reserve(2);
roots.push_back(node0x128a7ff0);
roots.push_back(node0x129b2510);
dag->setRoot(node0x128a7ff0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__:
    {
SDValue node0x128ac780 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128ac820 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128ac8c0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128ac960 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x128aca00 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128acb80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128acc30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x128acce0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128acb80, node0x128ac8c0);
SDValue node0x128acd70 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128acb80, node0x128ac820);
SDValue node0x128ace30 = dag->getLoad(MVT::i16, dl, entry, node0x128acb80, mpi, 1);
SDValue node0x128acf00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128acc30, node0x128aca00);
SDValue node0x128acfc0 = dag->getLoad(MVT::i16, dl, entry, node0x128ac780, mpi, 1);
SDValue node0x128ad090 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128acfc0, node0x128ace30);
SDValue node0x128ad150 = dag->getLoad(MVT::i16, dl, entry, node0x128acd70, mpi, 1);
SDValue node0x128ad220 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128ad090, node0x128ac960);
SDValue node0x128ad2e0 = dag->getLoad(MVT::i16, dl, entry, node0x128ac820, mpi, 1);
SDValue node0x128ad3b0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128ad2e0, node0x128ad150);
SDValue node0x128ad470 = dag->getLoad(MVT::i16, dl, entry, node0x128acce0, mpi, 1);
SDValue node0x128ad540 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128ad3b0, node0x128ac960);
SDValue node0x128ad600 = dag->getLoad(MVT::i16, dl, entry, node0x128ac8c0, mpi, 1);
SDValue node0x128ad6d0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128ad540, node0x128ad220);
SDValue node0x128ad790 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128ad600, node0x128ad470);
SDValue node0x128ad850 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128ad790, node0x128ac960);
SDValue node0x128ad910 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128ad6d0, node0x128ad850);
SDValue node0x128ad9d0 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128ad910);
SDValue node0x129cbfa0 = dag->getStore(entry, dl, node0x128ad910, node0x128acf00, mpi, 1);
SDValue node0x128aa960 = dag->getCopyToReg(node0x129cbfa0, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128ad9d0, SDValue());
roots.reserve(2);
roots.push_back(node0x128aa960);
roots.push_back(node0x129cbfa0);
dag->setRoot(node0x128aa960);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:
    {
SDValue node0x128af1b0 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128af250 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128af2f0 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x128af390 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128af510 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x128af5c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(3), MVT::i32);
SDValue node0x128af670 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128af720 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128af510, node0x128af250);
SDValue node0x128af7b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128af510, node0x128af1b0);
SDValue node0x128af870 = dag->getLoad(MVT::i16, dl, entry, node0x128af510, mpi, 1);
SDValue node0x128af940 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128af5c0, node0x128af390);
SDValue node0x128afa00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128af670, node0x128af250);
SDValue node0x128afac0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128af670, node0x128af1b0);
SDValue node0x128afb80 = dag->getLoad(MVT::i16, dl, entry, node0x128af670, mpi, 1);
SDValue node0x128afc50 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128afb80, node0x128af870);
SDValue node0x128afd10 = dag->getLoad(MVT::i16, dl, entry, node0x128af7b0, mpi, 1);
SDValue node0x128afde0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128afc50, node0x128af2f0);
SDValue node0x128afea0 = dag->getLoad(MVT::i16, dl, entry, node0x128afac0, mpi, 1);
SDValue node0x128aff70 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128afea0, node0x128afd10);
SDValue node0x128b0030 = dag->getLoad(MVT::i16, dl, entry, node0x128af720, mpi, 1);
SDValue node0x128b0100 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128aff70, node0x128af2f0);
SDValue node0x128b01c0 = dag->getLoad(MVT::i16, dl, entry, node0x128afa00, mpi, 1);
SDValue node0x128b0290 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128b0100, node0x128afde0);
SDValue node0x128b0350 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128b01c0, node0x128b0030);
SDValue node0x128b0410 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128b0350, node0x128af2f0);
SDValue node0x128b04d0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128b0290, node0x128b0410);
SDValue node0x128b0590 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128b04d0);
SDValue node0x128aefb0 = dag->getStore(entry, dl, node0x128b04d0, node0x128af940, mpi, 1);
SDValue node0x128a8040 = dag->getCopyToReg(node0x128aefb0, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128b0590, SDValue());
roots.reserve(2);
roots.push_back(node0x128a8040);
roots.push_back(node0x128aefb0);
dag->setRoot(node0x128a8040);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__:
    {
SDValue node0x128bc550 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128bc5d0 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128bc670 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128bc710 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128bc7b0 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x128bc930 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128bc9e0 = dag->getLoad(MVT::i16, dl, entry, node0x128bc550, mpi, 1);
SDValue node0x128bcab0 = dag->getLoad(MVT::i16, dl, entry, node0x128bc550, mpi, 1);
SDValue node0x128ba290 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128bcab0, node0x128bc9e0);
SDValue node0x128bcba0 = dag->getLoad(MVT::i16, dl, entry, node0x128bc5d0, mpi, 1);
SDValue node0x128bcc70 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128ba290, node0x128bc7b0);
SDValue node0x128bcd30 = dag->getLoad(MVT::i16, dl, entry, node0x128bc5d0, mpi, 1);
SDValue node0x128bce00 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128bcc70);
SDValue node0x128bceb0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128bcd30, node0x128bcba0);
SDValue node0x128bcf70 = dag->getLoad(MVT::i16, dl, entry, node0x128bc670, mpi, 1);
SDValue node0x128bd040 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128bc930, node0x128bce00);
SDValue node0x128bd100 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128bceb0, node0x128bc7b0);
SDValue node0x128bd1c0 = dag->getLoad(MVT::i16, dl, entry, node0x128bc670, mpi, 1);
SDValue node0x128bd290 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128bd100);
SDValue node0x128bd340 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128bd1c0, node0x128bcf70);
SDValue node0x128bd400 = dag->getLoad(MVT::i16, dl, entry, node0x128bc710, mpi, 1);
SDValue node0x128bd4d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128bd040, node0x128bd290);
SDValue node0x128bd590 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128bd340, node0x128bc7b0);
SDValue node0x128bd650 = dag->getLoad(MVT::i16, dl, entry, node0x128bc710, mpi, 1);
SDValue node0x128bd720 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128bd590);
SDValue node0x128bd7d0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128bd650, node0x128bd400);
SDValue node0x128bd890 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128bd4d0, node0x128bd720);
SDValue node0x128bd950 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128bd7d0, node0x128bc7b0);
SDValue node0x128bda10 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128bd950);
SDValue node0x128bdac0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128bd890, node0x128bda10);
SDValue node0x128bc4b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128bdac0, SDValue());
roots.reserve(1);
roots.push_back(node0x128bc4b0);
dag->setRoot(node0x128bc4b0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__regs__:
    {
SDValue node0x128bf3a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128bf4c0 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128bf560 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128bf600 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128bf6a0 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x128bf820 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128bf8d0 = dag->getLoad(MVT::i16, dl, entry, node0x128bf3a0, mpi, 1);
SDValue node0x128bf9a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x128bfa50 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128bf9a0, node0x128bf600);
SDValue node0x128bfae0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128bf9a0, node0x128bf560);
SDValue node0x128bfba0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128bf9a0, node0x128bf4c0);
SDValue node0x128bfc60 = dag->getLoad(MVT::i16, dl, entry, node0x128bf9a0, mpi, 1);
SDValue node0x128bfd30 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128bfc60, node0x128bf8d0);
SDValue node0x128bfdf0 = dag->getLoad(MVT::i16, dl, entry, node0x128bf4c0, mpi, 1);
SDValue node0x128bfec0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128bfd30, node0x128bf6a0);
SDValue node0x128bff80 = dag->getLoad(MVT::i16, dl, entry, node0x128bfba0, mpi, 1);
SDValue node0x128c0050 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128bfec0);
SDValue node0x128c0100 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128bff80, node0x128bfdf0);
SDValue node0x128c01c0 = dag->getLoad(MVT::i16, dl, entry, node0x128bf560, mpi, 1);
SDValue node0x128c0290 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128bf820, node0x128c0050);
SDValue node0x128c0350 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128c0100, node0x128bf6a0);
SDValue node0x128c0410 = dag->getLoad(MVT::i16, dl, entry, node0x128bfae0, mpi, 1);
SDValue node0x128c04e0 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128c0350);
SDValue node0x128c0590 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128c0410, node0x128c01c0);
SDValue node0x128c0650 = dag->getLoad(MVT::i16, dl, entry, node0x128bf600, mpi, 1);
SDValue node0x128c0720 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c0290, node0x128c04e0);
SDValue node0x128c07e0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128c0590, node0x128bf6a0);
SDValue node0x128c08a0 = dag->getLoad(MVT::i16, dl, entry, node0x128bfa50, mpi, 1);
SDValue node0x128c0970 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128c07e0);
SDValue node0x128c0a20 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128c08a0, node0x128c0650);
SDValue node0x128c0ae0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c0720, node0x128c0970);
SDValue node0x128c0ba0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128c0a20, node0x128bf6a0);
SDValue node0x128c0c60 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128c0ba0);
SDValue node0x128c0d10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c0ae0, node0x128c0c60);
SDValue node0x128be3e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128c0d10, SDValue());
roots.reserve(1);
roots.push_back(node0x128be3e0);
dag->setRoot(node0x128be3e0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0__:
    {
SDValue node0x128c2dc0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128c2e60 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128c2f00 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128c2fa0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128c3040 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x128c31c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x128c3270 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128c3320 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c31c0, node0x128c2fa0);
SDValue node0x128c33b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c31c0, node0x128c2f00);
SDValue node0x128c3470 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c31c0, node0x128c2e60);
SDValue node0x128c3530 = dag->getLoad(MVT::i16, dl, entry, node0x128c31c0, mpi, 1);
SDValue node0x128c3600 = dag->getLoad(MVT::i16, dl, entry, node0x128c2dc0, mpi, 1);
SDValue node0x128c36d0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128c3600, node0x128c3530);
SDValue node0x128c3790 = dag->getLoad(MVT::i16, dl, entry, node0x128c3470, mpi, 1);
SDValue node0x128c3860 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128c36d0, node0x128c3040);
SDValue node0x128c3920 = dag->getLoad(MVT::i16, dl, entry, node0x128c2e60, mpi, 1);
SDValue node0x128c39f0 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128c3860);
SDValue node0x128c3aa0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128c3920, node0x128c3790);
SDValue node0x128c3b60 = dag->getLoad(MVT::i16, dl, entry, node0x128c33b0, mpi, 1);
SDValue node0x128c3c30 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c3270, node0x128c39f0);
SDValue node0x128c3cf0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128c3aa0, node0x128c3040);
SDValue node0x128c3db0 = dag->getLoad(MVT::i16, dl, entry, node0x128c2f00, mpi, 1);
SDValue node0x128c3e80 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128c3cf0);
SDValue node0x128c3f30 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128c3db0, node0x128c3b60);
SDValue node0x128c3ff0 = dag->getLoad(MVT::i16, dl, entry, node0x128c3320, mpi, 1);
SDValue node0x128c40c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c3c30, node0x128c3e80);
SDValue node0x128c4180 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128c3f30, node0x128c3040);
SDValue node0x128c4240 = dag->getLoad(MVT::i16, dl, entry, node0x128c2fa0, mpi, 1);
SDValue node0x128c4310 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128c4180);
SDValue node0x128c43c0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128c4240, node0x128c3ff0);
SDValue node0x128c4480 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c40c0, node0x128c4310);
SDValue node0x128c4540 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128c43c0, node0x128c3040);
SDValue node0x128c4600 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128c4540);
SDValue node0x128c46b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c4480, node0x128c4600);
SDValue node0x128be020 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128c46b0, SDValue());
roots.reserve(1);
roots.push_back(node0x128be020);
dag->setRoot(node0x128be020);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__regs__regs__:
    {
SDValue node0x128c5df0 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128c5e90 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128c5f30 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128c5fd0 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x128c6150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(3), MVT::i32);
SDValue node0x128c6200 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128c62b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x128c6360 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c6150, node0x128c5f30);
SDValue node0x128c63f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c6150, node0x128c5e90);
SDValue node0x128c64b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c6150, node0x128c5df0);
SDValue node0x128c6570 = dag->getLoad(MVT::i16, dl, entry, node0x128c6150, mpi, 1);
SDValue node0x128c6640 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c62b0, node0x128c5f30);
SDValue node0x128c6700 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c62b0, node0x128c5e90);
SDValue node0x128c67c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c62b0, node0x128c5df0);
SDValue node0x128c6880 = dag->getLoad(MVT::i16, dl, entry, node0x128c62b0, mpi, 1);
SDValue node0x128c6950 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128c6880, node0x128c6570);
SDValue node0x128c6a10 = dag->getLoad(MVT::i16, dl, entry, node0x128c64b0, mpi, 1);
SDValue node0x128c6ae0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128c6950, node0x128c5fd0);
SDValue node0x128c6ba0 = dag->getLoad(MVT::i16, dl, entry, node0x128c67c0, mpi, 1);
SDValue node0x128c6c70 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128c6ae0);
SDValue node0x128c6d20 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128c6ba0, node0x128c6a10);
SDValue node0x128c6de0 = dag->getLoad(MVT::i16, dl, entry, node0x128c63f0, mpi, 1);
SDValue node0x128c6eb0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c6200, node0x128c6c70);
SDValue node0x128c6f70 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128c6d20, node0x128c5fd0);
SDValue node0x128c7030 = dag->getLoad(MVT::i16, dl, entry, node0x128c6700, mpi, 1);
SDValue node0x128c7100 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128c6f70);
SDValue node0x128c71b0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128c7030, node0x128c6de0);
SDValue node0x128c7270 = dag->getLoad(MVT::i16, dl, entry, node0x128c6360, mpi, 1);
SDValue node0x128c7340 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c6eb0, node0x128c7100);
SDValue node0x128c7400 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128c71b0, node0x128c5fd0);
SDValue node0x128c74c0 = dag->getLoad(MVT::i16, dl, entry, node0x128c6640, mpi, 1);
SDValue node0x128c7590 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128c7400);
SDValue node0x128c7640 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x128c74c0, node0x128c7270);
SDValue node0x128c7700 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c7340, node0x128c7590);
SDValue node0x128c77c0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x128c7640, node0x128c5fd0);
SDValue node0x128c7880 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x128c77c0);
SDValue node0x128c7930 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128c7700, node0x128c7880);
SDValue node0x128c1810 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128c7930, SDValue());
roots.reserve(1);
roots.push_back(node0x128c1810);
dag->setRoot(node0x128c1810);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__regs__reg0__reg0__:
    {
SDValue node0x128e4090 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128e4110 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128e41b0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128e4250 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128e43d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128e4480 = dag->getLoad(MVT::i16, dl, entry, node0x128e4090, mpi, 1);
SDValue node0x128e1e20 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128e43d0, node0x128e4250);
SDValue node0x128e4570 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128e43d0, node0x128e41b0);
SDValue node0x128e4630 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128e43d0, node0x128e4110);
SDValue node0x128e46f0 = dag->getLoad(MVT::i16, dl, entry, node0x128e4090, mpi, 1);
SDValue node0x128e47c0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128e46f0, node0x128e4480);
SDValue node0x128e1f60 = dag->getStore(entry, dl, node0x128e47c0, node0x128e43d0, mpi, 1);
SDValue node0x128e49a0 = dag->getLoad(MVT::i16, dl, node0x128e1f60, node0x128e4110, mpi, 1);
SDValue node0x128e4a70 = dag->getLoad(MVT::i16, dl, node0x128e1f60, node0x128e4110, mpi, 1);
SDValue node0x128e4b40 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128e4a70, node0x128e49a0);
SDValue node0x128e4c00 = dag->getStore(node0x128e1f60, dl, node0x128e4b40, node0x128e4630, mpi, 1);
SDValue node0x128e4d80 = dag->getLoad(MVT::i16, dl, node0x128e4c00, node0x128e41b0, mpi, 1);
SDValue node0x128e4e50 = dag->getLoad(MVT::i16, dl, node0x128e4c00, node0x128e41b0, mpi, 1);
SDValue node0x128e4f20 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128e4e50, node0x128e4d80);
SDValue node0x128e4fe0 = dag->getStore(node0x128e4c00, dl, node0x128e4f20, node0x128e4570, mpi, 1);
SDValue node0x128e5160 = dag->getLoad(MVT::i16, dl, node0x128e4fe0, node0x128e4250, mpi, 1);
SDValue node0x128e5230 = dag->getLoad(MVT::i16, dl, node0x128e4fe0, node0x128e4250, mpi, 1);
SDValue node0x128e5300 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128e5230, node0x128e5160);
SDValue node0x128e53c0 = dag->getStore(node0x128e4fe0, dl, node0x128e5300, node0x128e1e20, mpi, 1);
SDValue node0x128e3ff0 = dag->getCopyToReg(node0x128e53c0, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128e43d0, SDValue());
roots.reserve(5);
roots.push_back(node0x128e3ff0);
roots.push_back(node0x128e1f60);
roots.push_back(node0x128e4c00);
roots.push_back(node0x128e4fe0);
roots.push_back(node0x128e53c0);
dag->setRoot(node0x128e3ff0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__regs__reg0__regs__:
    {
SDValue node0x128e6aa0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128e6bc0 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128e6c60 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128e6d00 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128e6e80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128e6f30 = dag->getLoad(MVT::i16, dl, entry, node0x128e6aa0, mpi, 1);
SDValue node0x128e7000 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x128e70b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128e6e80, node0x128e6d00);
SDValue node0x128e7140 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128e6e80, node0x128e6c60);
SDValue node0x128e7200 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128e6e80, node0x128e6bc0);
SDValue node0x128e72c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128e7000, node0x128e6d00);
SDValue node0x128e7380 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128e7000, node0x128e6c60);
SDValue node0x128e7440 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128e7000, node0x128e6bc0);
SDValue node0x128e7500 = dag->getLoad(MVT::i16, dl, entry, node0x128e7000, mpi, 1);
SDValue node0x128e75d0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128e7500, node0x128e6f30);
SDValue node0x128e69c0 = dag->getStore(entry, dl, node0x128e75d0, node0x128e6e80, mpi, 1);
SDValue node0x128e77b0 = dag->getLoad(MVT::i16, dl, node0x128e69c0, node0x128e6bc0, mpi, 1);
SDValue node0x128e7880 = dag->getLoad(MVT::i16, dl, node0x128e69c0, node0x128e7440, mpi, 1);
SDValue node0x128e7950 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128e7880, node0x128e77b0);
SDValue node0x128e7a10 = dag->getStore(node0x128e69c0, dl, node0x128e7950, node0x128e7200, mpi, 1);
SDValue node0x128e7b90 = dag->getLoad(MVT::i16, dl, node0x128e7a10, node0x128e6c60, mpi, 1);
SDValue node0x128e7c60 = dag->getLoad(MVT::i16, dl, node0x128e7a10, node0x128e7380, mpi, 1);
SDValue node0x128e7d30 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128e7c60, node0x128e7b90);
SDValue node0x128e7df0 = dag->getStore(node0x128e7a10, dl, node0x128e7d30, node0x128e7140, mpi, 1);
SDValue node0x128e7f70 = dag->getLoad(MVT::i16, dl, node0x128e7df0, node0x128e6d00, mpi, 1);
SDValue node0x128e8040 = dag->getLoad(MVT::i16, dl, node0x128e7df0, node0x128e72c0, mpi, 1);
SDValue node0x128e8110 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128e8040, node0x128e7f70);
SDValue node0x128e81d0 = dag->getStore(node0x128e7df0, dl, node0x128e8110, node0x128e70b0, mpi, 1);
SDValue node0x128e5620 = dag->getCopyToReg(node0x128e81d0, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128e6e80, SDValue());
roots.reserve(5);
roots.push_back(node0x128e5620);
roots.push_back(node0x128e69c0);
roots.push_back(node0x128e7a10);
roots.push_back(node0x128e7df0);
roots.push_back(node0x128e81d0);
dag->setRoot(node0x128e5620);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__regs__regs__reg0__:
    {
SDValue node0x128ea3a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x128ea440 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128ea4e0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128ea580 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128ea700 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x128ea7b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128ea860 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128ea700, node0x128ea580);
SDValue node0x128ea8f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128ea700, node0x128ea4e0);
SDValue node0x128ea9b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128ea700, node0x128ea440);
SDValue node0x128eaa70 = dag->getLoad(MVT::i16, dl, entry, node0x128ea700, mpi, 1);
SDValue node0x128eab40 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128ea7b0, node0x128ea580);
SDValue node0x128eac00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128ea7b0, node0x128ea4e0);
SDValue node0x128eacc0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128ea7b0, node0x128ea440);
SDValue node0x128ead80 = dag->getLoad(MVT::i16, dl, entry, node0x128ea3a0, mpi, 1);
SDValue node0x128eae50 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128ead80, node0x128eaa70);
SDValue node0x128e9580 = dag->getStore(entry, dl, node0x128eae50, node0x128ea7b0, mpi, 1);
SDValue node0x128eb030 = dag->getLoad(MVT::i16, dl, node0x128e9580, node0x128ea9b0, mpi, 1);
SDValue node0x128eb100 = dag->getLoad(MVT::i16, dl, node0x128e9580, node0x128ea440, mpi, 1);
SDValue node0x128eb1d0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128eb100, node0x128eb030);
SDValue node0x128eb290 = dag->getStore(node0x128e9580, dl, node0x128eb1d0, node0x128eacc0, mpi, 1);
SDValue node0x128eb410 = dag->getLoad(MVT::i16, dl, node0x128eb290, node0x128ea8f0, mpi, 1);
SDValue node0x128eb4e0 = dag->getLoad(MVT::i16, dl, node0x128eb290, node0x128ea4e0, mpi, 1);
SDValue node0x128eb5b0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128eb4e0, node0x128eb410);
SDValue node0x128eb670 = dag->getStore(node0x128eb290, dl, node0x128eb5b0, node0x128eac00, mpi, 1);
SDValue node0x128eb7f0 = dag->getLoad(MVT::i16, dl, node0x128eb670, node0x128ea860, mpi, 1);
SDValue node0x128eb8c0 = dag->getLoad(MVT::i16, dl, node0x128eb670, node0x128ea580, mpi, 1);
SDValue node0x128eb990 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128eb8c0, node0x128eb7f0);
SDValue node0x128eba50 = dag->getStore(node0x128eb670, dl, node0x128eb990, node0x128eab40, mpi, 1);
SDValue node0x128e8480 = dag->getCopyToReg(node0x128eba50, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128ea7b0, SDValue());
roots.reserve(5);
roots.push_back(node0x128e8480);
roots.push_back(node0x128e9580);
roots.push_back(node0x128eb290);
roots.push_back(node0x128eb670);
roots.push_back(node0x128eba50);
dag->setRoot(node0x128e8480);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__regs__regs__regs__:
    {
SDValue node0x128ed2b0 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x128ed350 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x128ed3f0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x128ed570 = dag->getRegister(TargetRegisterInfo::index2VirtReg(3), MVT::i32);
SDValue node0x128ed620 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x128ed6d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x128ed780 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128ed570, node0x128ed3f0);
SDValue node0x128ed810 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128ed570, node0x128ed350);
SDValue node0x128ed8d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128ed570, node0x128ed2b0);
SDValue node0x128ed990 = dag->getLoad(MVT::i16, dl, entry, node0x128ed570, mpi, 1);
SDValue node0x128eda60 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128ed620, node0x128ed3f0);
SDValue node0x128edb20 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128ed620, node0x128ed350);
SDValue node0x128edbe0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128ed620, node0x128ed2b0);
SDValue node0x128edca0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128ed6d0, node0x128ed3f0);
SDValue node0x128edd60 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128ed6d0, node0x128ed350);
SDValue node0x128ede20 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x128ed6d0, node0x128ed2b0);
SDValue node0x128edee0 = dag->getLoad(MVT::i16, dl, entry, node0x128ed6d0, mpi, 1);
SDValue node0x128edfb0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128edee0, node0x128ed990);
SDValue node0x128ed0b0 = dag->getStore(entry, dl, node0x128edfb0, node0x128ed620, mpi, 1);
SDValue node0x128ee190 = dag->getLoad(MVT::i16, dl, node0x128ed0b0, node0x128ed8d0, mpi, 1);
SDValue node0x128ee260 = dag->getLoad(MVT::i16, dl, node0x128ed0b0, node0x128ede20, mpi, 1);
SDValue node0x128ee330 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128ee260, node0x128ee190);
SDValue node0x128ee3f0 = dag->getStore(node0x128ed0b0, dl, node0x128ee330, node0x128edbe0, mpi, 1);
SDValue node0x128ee570 = dag->getLoad(MVT::i16, dl, node0x128ee3f0, node0x128ed810, mpi, 1);
SDValue node0x128ee640 = dag->getLoad(MVT::i16, dl, node0x128ee3f0, node0x128edd60, mpi, 1);
SDValue node0x128ee710 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128ee640, node0x128ee570);
SDValue node0x128ee7d0 = dag->getStore(node0x128ee3f0, dl, node0x128ee710, node0x128edb20, mpi, 1);
SDValue node0x128ee950 = dag->getLoad(MVT::i16, dl, node0x128ee7d0, node0x128ed780, mpi, 1);
SDValue node0x128eea20 = dag->getLoad(MVT::i16, dl, node0x128ee7d0, node0x128edca0, mpi, 1);
SDValue node0x128eeaf0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x128eea20, node0x128ee950);
SDValue node0x128eebb0 = dag->getStore(node0x128ee7d0, dl, node0x128eeaf0, node0x128eda60, mpi, 1);
SDValue node0x128e8430 = dag->getCopyToReg(node0x128eebb0, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x128ed620, SDValue());
roots.reserve(5);
roots.push_back(node0x128e8430);
roots.push_back(node0x128ed0b0);
roots.push_back(node0x128ee3f0);
roots.push_back(node0x128ee7d0);
roots.push_back(node0x128eebb0);
dag->setRoot(node0x128e8430);
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
SDValue node0x124b9de0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x124b9e60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x124ba850 = dag->getTruncStore(entry, dl, node0x124b9de0, node0x124b9e60, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x124ba850);
dag->setRoot(node0x124ba850);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__i32_TRUNC_CLONE_:
    {
SDValue node0x124b8c70 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x124b4d00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x124b9d60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x124b3b00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x124b4d00, node0x124b9d60);
SDValue node0x124bb1d0 = dag->getTruncStore(entry, dl, node0x124b8c70, node0x124b3b00, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x124bb1d0);
dag->setRoot(node0x124bb1d0);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_:
    {
SDValue node0x124b9ee0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x124bb7f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x124bbae0 = dag->getTruncStore(entry, dl, node0x124b9ee0, node0x124bb7f0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x124bbae0);
dag->setRoot(node0x124bbae0);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__i32_TRUNC_CLONE_:
    {
SDValue node0x124bc100 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x124b94f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x124bc180 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x124b4470 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x124b94f0, node0x124bc180);
SDValue node0x124bc560 = dag->getTruncStore(entry, dl, node0x124bc100, node0x124b4470, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x124bc560);
dag->setRoot(node0x124bc560);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_:
    {
SDValue node0x124bc8f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x124b9610 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x124bcae0 = dag->getTruncStore(entry, dl, node0x124bc8f0, node0x124b9610, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x124bcae0);
dag->setRoot(node0x124bcae0);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_:
    {
SDValue node0x124bced0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12894890 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x124bd0b0 = dag->getTruncStore(entry, dl, node0x124bced0, node0x12894890, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x124bd0b0);
dag->setRoot(node0x124bd0b0);
    }
    break;
  case Codasip::i_jump_reg_alias__regs___RET_EMUL_:
    {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__0_REG_EMUL_:
    {
SDValue node0x124bd430 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x124be930 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x124b9580 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x124c3a00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x124be930, node0x124b9580);
SDValue node0x124b8a80 = dag->getStore(entry, dl, node0x124bd430, node0x124c3a00, mpi, 1);
roots.reserve(1);
roots.push_back(node0x124b8a80);
dag->setRoot(node0x124b8a80);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__1_BIGIMM_EMUL_:
    {
SDValue node0x124bda10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x124be6e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x124c0cb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x124c2f20 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x124be6e0, node0x124c0cb0);
SDValue node0x124bf480 = dag->getStore(entry, dl, node0x124bda10, node0x124c2f20, mpi, 1);
roots.reserve(1);
roots.push_back(node0x124bf480);
dag->setRoot(node0x124bf480);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__2_REG_EMUL_:
    {
SDValue node0x124c3fa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x124c3780 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x124c4030 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x124c3fa0, node0x124c3780);
SDValue node0x124c19e0 = dag->getLoad(MVT::i32, dl, entry, node0x124c4030, mpi, 1);
SDValue node0x124c4870 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x124c19e0, SDValue());
roots.reserve(1);
roots.push_back(node0x124c4870);
dag->setRoot(node0x124c4870);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__3_BIGIMM_EMUL_:
    {
SDValue node0x124c2a90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x124c5c70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x124c2820 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x124c2a90, node0x124c5c70);
SDValue node0x124c40a0 = dag->getLoad(MVT::i32, dl, entry, node0x124c2820, mpi, 1);
SDValue node0x124bfbc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x124c40a0, SDValue());
roots.reserve(1);
roots.push_back(node0x124bfbc0);
dag->setRoot(node0x124bfbc0);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__4_BIGIMM_EMUL_:
    {
SDValue node0x124c3170 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x124c1530 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x124c6600 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x124c2eb0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x124c1530, node0x124c6600);
SDValue node0x124bd580 = dag->getStore(entry, dl, node0x124c3170, node0x124c2eb0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x124bd580);
dag->setRoot(node0x124bd580);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__5_BIGIMM_EMUL_:
    {
SDValue node0x124c3c30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x124c71d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x124c3f30 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x124c3c30, node0x124c71d0);
SDValue node0x124c2200 = dag->getLoad(MVT::i32, dl, entry, node0x124c3f30, mpi, 1);
SDValue node0x124c7250 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x124c2200, SDValue());
roots.reserve(1);
roots.push_back(node0x124c7250);
dag->setRoot(node0x124c7250);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__6_BIGIMM_EMUL_:
    {
SDValue node0x124c3810 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x124c7cf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x124c2e40 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x124c3810, node0x124c7cf0);
SDValue node0x124c7d70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x124c2e40, SDValue());
roots.reserve(1);
roots.push_back(node0x124c7d70);
dag->setRoot(node0x124c7d70);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__7_BIGIMM_EMUL_:
    {
SDValue node0x124c15c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x124c88b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x124c26b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x124c15c0, node0x124c88b0);
SDValue node0x124c8930 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x124c26b0, SDValue());
roots.reserve(1);
roots.push_back(node0x124c8930);
dag->setRoot(node0x124c8930);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__8_BIGIMM_EMUL_:
    {
SDValue node0x124c82e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x124c94c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x124c1720 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x124c82e0, node0x124c94c0);
SDValue node0x124c9540 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x124c1720, SDValue());
roots.reserve(1);
roots.push_back(node0x124c9540);
dag->setRoot(node0x124c9540);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0__MOI_CLONE_:
    {
SDValue node0x12a37cd0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12a67d30 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x12a389d0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x12a371f0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x12a38770 = dag->getLoad(MVT::i16, dl, entry, node0x12a37cd0, mpi, 1);
SDValue node0x12a68600 = dag->getLoad(MVT::i16, dl, entry, node0x12a37cd0, mpi, 1);
SDValue node0x12a688b0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a68600, node0x12a38770);
SDValue node0x12a69640 = dag->getStore(entry, dl, node0x12a688b0, node0x12a37cd0, mpi, 1);
SDValue node0x12a68570 = dag->getLoad(MVT::i16, dl, node0x12a69640, node0x12a67d30, mpi, 1);
SDValue node0x12a69700 = dag->getLoad(MVT::i16, dl, node0x12a69640, node0x12a67d30, mpi, 1);
SDValue node0x12a664e0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a69700, node0x12a68570);
SDValue node0x12a697f0 = dag->getStore(node0x12a69640, dl, node0x12a664e0, node0x12a67d30, mpi, 1);
SDValue node0x12a69870 = dag->getLoad(MVT::i16, dl, node0x12a697f0, node0x12a389d0, mpi, 1);
SDValue node0x12a69940 = dag->getLoad(MVT::i16, dl, node0x12a697f0, node0x12a389d0, mpi, 1);
SDValue node0x12a68760 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a69940, node0x12a69870);
SDValue node0x12a69a30 = dag->getStore(node0x12a697f0, dl, node0x12a68760, node0x12a389d0, mpi, 1);
SDValue node0x12a69ab0 = dag->getLoad(MVT::i16, dl, node0x12a69a30, node0x12a371f0, mpi, 1);
SDValue node0x12a69b80 = dag->getLoad(MVT::i16, dl, node0x12a69a30, node0x12a371f0, mpi, 1);
SDValue node0x12a68bd0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a69b80, node0x12a69ab0);
SDValue node0x12a69c70 = dag->getStore(node0x12a69a30, dl, node0x12a68bd0, node0x12a371f0, mpi, 1);
roots.reserve(4);
roots.push_back(node0x12a69640);
roots.push_back(node0x12a697f0);
roots.push_back(node0x12a69a30);
roots.push_back(node0x12a69c70);
dag->setRoot(node0x12a69c70);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__regs__MOI_CLONE_:
    {
SDValue node0x12a68c40 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12a68050 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x12a6a390 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x12a6a430 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x12a6a4d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12a6a580 = dag->getLoad(MVT::i16, dl, entry, node0x12a68c40, mpi, 1);
SDValue node0x12a67b70 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a6a4d0, node0x12a6a430);
SDValue node0x12a689a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a6a4d0, node0x12a6a390);
SDValue node0x12a687d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a6a4d0, node0x12a68050);
SDValue node0x12a6a6b0 = dag->getLoad(MVT::i16, dl, entry, node0x12a6a4d0, mpi, 1);
SDValue node0x12a66800 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a6a6b0, node0x12a6a580);
SDValue node0x12a6a7a0 = dag->getStore(entry, dl, node0x12a66800, node0x12a68c40, mpi, 1);
SDValue node0x12a6a850 = dag->getLoad(MVT::i16, dl, node0x12a6a7a0, node0x12a68050, mpi, 1);
SDValue node0x12a6a920 = dag->getLoad(MVT::i16, dl, node0x12a6a7a0, node0x12a687d0, mpi, 1);
SDValue node0x12a673f0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a6a920, node0x12a6a850);
SDValue node0x12a6aa40 = dag->getStore(node0x12a6a7a0, dl, node0x12a673f0, node0x12a68050, mpi, 1);
SDValue node0x12a6aaf0 = dag->getLoad(MVT::i16, dl, node0x12a6aa40, node0x12a6a390, mpi, 1);
SDValue node0x12a6abc0 = dag->getLoad(MVT::i16, dl, node0x12a6aa40, node0x12a689a0, mpi, 1);
SDValue node0x12a395c0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a6abc0, node0x12a6aaf0);
SDValue node0x12a6ace0 = dag->getStore(node0x12a6aa40, dl, node0x12a395c0, node0x12a6a390, mpi, 1);
SDValue node0x12a6ad90 = dag->getLoad(MVT::i16, dl, node0x12a6ace0, node0x12a6a430, mpi, 1);
SDValue node0x12a6ae60 = dag->getLoad(MVT::i16, dl, node0x12a6ace0, node0x12a67b70, mpi, 1);
SDValue node0x12a65c10 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a6ae60, node0x12a6ad90);
SDValue node0x12a6af80 = dag->getStore(node0x12a6ace0, dl, node0x12a65c10, node0x12a6a430, mpi, 1);
roots.reserve(4);
roots.push_back(node0x12a6a7a0);
roots.push_back(node0x12a6aa40);
roots.push_back(node0x12a6ace0);
roots.push_back(node0x12a6af80);
dag->setRoot(node0x12a6af80);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0__MOI_CLONE_:
    {
SDValue node0x12a6bd70 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12a6be10 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x12a6beb0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x12a6bf50 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x12a6bff0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12a396a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a6bff0, node0x12a6bf50);
SDValue node0x12a67fe0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a6bff0, node0x12a6beb0);
SDValue node0x12a67cc0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a6bff0, node0x12a6be10);
SDValue node0x12a6c190 = dag->getLoad(MVT::i16, dl, entry, node0x12a6bff0, mpi, 1);
SDValue node0x12a6c260 = dag->getLoad(MVT::i16, dl, entry, node0x12a6bd70, mpi, 1);
SDValue node0x12a65020 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a6c260, node0x12a6c190);
SDValue node0x12a6c380 = dag->getStore(entry, dl, node0x12a65020, node0x12a6bd70, mpi, 1);
SDValue node0x12a6c430 = dag->getLoad(MVT::i16, dl, node0x12a6c380, node0x12a67cc0, mpi, 1);
SDValue node0x12a6c500 = dag->getLoad(MVT::i16, dl, node0x12a6c380, node0x12a6be10, mpi, 1);
SDValue node0x12a670d0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a6c500, node0x12a6c430);
SDValue node0x12a6c620 = dag->getStore(node0x12a6c380, dl, node0x12a670d0, node0x12a6be10, mpi, 1);
SDValue node0x12a6c6d0 = dag->getLoad(MVT::i16, dl, node0x12a6c620, node0x12a67fe0, mpi, 1);
SDValue node0x12a6c7a0 = dag->getLoad(MVT::i16, dl, node0x12a6c620, node0x12a6beb0, mpi, 1);
SDValue node0x12a6c870 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a6c7a0, node0x12a6c6d0);
SDValue node0x12a6c930 = dag->getStore(node0x12a6c620, dl, node0x12a6c870, node0x12a6beb0, mpi, 1);
SDValue node0x12a6c9e0 = dag->getLoad(MVT::i16, dl, node0x12a6c930, node0x12a396a0, mpi, 1);
SDValue node0x12a6cab0 = dag->getLoad(MVT::i16, dl, node0x12a6c930, node0x12a6bf50, mpi, 1);
SDValue node0x12a6cb80 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a6cab0, node0x12a6c9e0);
SDValue node0x12a6cc40 = dag->getStore(node0x12a6c930, dl, node0x12a6cb80, node0x12a6bf50, mpi, 1);
roots.reserve(4);
roots.push_back(node0x12a6c380);
roots.push_back(node0x12a6c620);
roots.push_back(node0x12a6c930);
roots.push_back(node0x12a6cc40);
dag->setRoot(node0x12a6cc40);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__regs__MOI_CLONE_:
    {
SDValue node0x12a6da30 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12a6dad0 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x12a6db70 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x12a6dc10 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x12a6dcb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12a6dd60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12a6de10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a6dcb0, node0x12a6dc10);
SDValue node0x12a6ded0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a6dcb0, node0x12a6db70);
SDValue node0x12a6df90 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a6dcb0, node0x12a6dad0);
SDValue node0x12a6e050 = dag->getLoad(MVT::i16, dl, entry, node0x12a6dcb0, mpi, 1);
SDValue node0x12a6e120 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a6dd60, node0x12a6dc10);
SDValue node0x12a6e1e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a6dd60, node0x12a6db70);
SDValue node0x12a6e2a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a6dd60, node0x12a6dad0);
SDValue node0x12a6e360 = dag->getLoad(MVT::i16, dl, entry, node0x12a6dd60, mpi, 1);
SDValue node0x12a6e430 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a6e360, node0x12a6e050);
SDValue node0x12a6e4f0 = dag->getStore(entry, dl, node0x12a6e430, node0x12a6da30, mpi, 1);
SDValue node0x12a6e5a0 = dag->getLoad(MVT::i16, dl, node0x12a6e4f0, node0x12a6df90, mpi, 1);
SDValue node0x12a6e670 = dag->getLoad(MVT::i16, dl, node0x12a6e4f0, node0x12a6e2a0, mpi, 1);
SDValue node0x12a6e740 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a6e670, node0x12a6e5a0);
SDValue node0x12a6e800 = dag->getStore(node0x12a6e4f0, dl, node0x12a6e740, node0x12a6dad0, mpi, 1);
SDValue node0x12a6e8b0 = dag->getLoad(MVT::i16, dl, node0x12a6e800, node0x12a6ded0, mpi, 1);
SDValue node0x12a6e980 = dag->getLoad(MVT::i16, dl, node0x12a6e800, node0x12a6e1e0, mpi, 1);
SDValue node0x12a6ea50 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a6e980, node0x12a6e8b0);
SDValue node0x12a6eb10 = dag->getStore(node0x12a6e800, dl, node0x12a6ea50, node0x12a6db70, mpi, 1);
SDValue node0x12a6ebc0 = dag->getLoad(MVT::i16, dl, node0x12a6eb10, node0x12a6de10, mpi, 1);
SDValue node0x12a6ec90 = dag->getLoad(MVT::i16, dl, node0x12a6eb10, node0x12a6e120, mpi, 1);
SDValue node0x12a6ed60 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a6ec90, node0x12a6ebc0);
SDValue node0x12a6ee20 = dag->getStore(node0x12a6eb10, dl, node0x12a6ed60, node0x12a6dc10, mpi, 1);
roots.reserve(4);
roots.push_back(node0x12a6e4f0);
roots.push_back(node0x12a6e800);
roots.push_back(node0x12a6eb10);
roots.push_back(node0x12a6ee20);
dag->setRoot(node0x12a6ee20);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__AEXT_CLONE_MOI_CLONE_:
    {
SDValue node0x12a6fea0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12a6ff40 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x12a6ffe0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x12a70080 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x12a70120 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x12a701c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12a70270 = dag->getLoad(MVT::i16, dl, entry, node0x12a6fea0, mpi, 1);
SDValue node0x12a70340 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a701c0, node0x12a70120);
SDValue node0x12a70400 = dag->getLoad(MVT::i16, dl, entry, node0x12a6fea0, mpi, 1);
SDValue node0x12a704d0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a70400, node0x12a70270);
SDValue node0x12a70590 = dag->getLoad(MVT::i16, dl, entry, node0x12a6ff40, mpi, 1);
SDValue node0x12a70660 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a704d0, node0x12a70080);
SDValue node0x12a70720 = dag->getLoad(MVT::i16, dl, entry, node0x12a6ff40, mpi, 1);
SDValue node0x12a707f0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a70720, node0x12a70590);
SDValue node0x12a708b0 = dag->getLoad(MVT::i16, dl, entry, node0x12a6ffe0, mpi, 1);
SDValue node0x12a70980 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a707f0, node0x12a70080);
SDValue node0x12a70a40 = dag->getLoad(MVT::i16, dl, entry, node0x12a6ffe0, mpi, 1);
SDValue node0x12a70b10 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a70980, node0x12a70660);
SDValue node0x12a70bd0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a70a40, node0x12a708b0);
SDValue node0x12a70c90 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a70bd0, node0x12a70080);
SDValue node0x12a70d50 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a70b10, node0x12a70c90);
SDValue node0x12a70e10 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x12a70d50);
SDValue node0x12a70ec0 = dag->getStore(entry, dl, node0x12a70d50, node0x12a70340, mpi, 1);
SDValue node0x12a70f70 = dag->getCopyToReg(node0x12a70ec0, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12a70e10, SDValue());
roots.reserve(2);
roots.push_back(node0x12a70f70);
roots.push_back(node0x12a70ec0);
dag->setRoot(node0x12a70f70);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__AEXT_CLONE_MOI_CLONE_:
    {
SDValue node0x12a71680 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12a71720 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x12a717c0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x12a71860 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x12a71900 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x12a719a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12a71a50 = dag->getLoad(MVT::i16, dl, entry, node0x12a71680, mpi, 1);
SDValue node0x12a71b20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12a71bd0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a719a0, node0x12a71900);
SDValue node0x12a71c90 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a71b20, node0x12a717c0);
SDValue node0x12a71d50 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a71b20, node0x12a71720);
SDValue node0x12a71e10 = dag->getLoad(MVT::i16, dl, entry, node0x12a71b20, mpi, 1);
SDValue node0x12a71ee0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a71e10, node0x12a71a50);
SDValue node0x12a71fa0 = dag->getLoad(MVT::i16, dl, entry, node0x12a71720, mpi, 1);
SDValue node0x12a72070 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a71ee0, node0x12a71860);
SDValue node0x12a72130 = dag->getLoad(MVT::i16, dl, entry, node0x12a71d50, mpi, 1);
SDValue node0x12a72200 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a72130, node0x12a71fa0);
SDValue node0x12a722c0 = dag->getLoad(MVT::i16, dl, entry, node0x12a717c0, mpi, 1);
SDValue node0x12a72390 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a72200, node0x12a71860);
SDValue node0x12a72450 = dag->getLoad(MVT::i16, dl, entry, node0x12a71c90, mpi, 1);
SDValue node0x12a72520 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a72390, node0x12a72070);
SDValue node0x12a725e0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a72450, node0x12a722c0);
SDValue node0x12a726a0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a725e0, node0x12a71860);
SDValue node0x12a72760 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a72520, node0x12a726a0);
SDValue node0x12a72820 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x12a72760);
SDValue node0x12a728d0 = dag->getStore(entry, dl, node0x12a72760, node0x12a71bd0, mpi, 1);
SDValue node0x12a72980 = dag->getCopyToReg(node0x12a728d0, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12a72820, SDValue());
roots.reserve(2);
roots.push_back(node0x12a72980);
roots.push_back(node0x12a728d0);
dag->setRoot(node0x12a72980);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__AEXT_CLONE_MOI_CLONE_:
    {
SDValue node0x12a731a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12a73240 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x12a732e0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x12a73380 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x12a73420 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x12a734c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12a73570 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12a73620 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a734c0, node0x12a732e0);
SDValue node0x12a736e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a734c0, node0x12a73240);
SDValue node0x12a737a0 = dag->getLoad(MVT::i16, dl, entry, node0x12a734c0, mpi, 1);
SDValue node0x12a73870 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a73570, node0x12a73420);
SDValue node0x12a73930 = dag->getLoad(MVT::i16, dl, entry, node0x12a731a0, mpi, 1);
SDValue node0x12a73a00 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a73930, node0x12a737a0);
SDValue node0x12a73ac0 = dag->getLoad(MVT::i16, dl, entry, node0x12a736e0, mpi, 1);
SDValue node0x12a73b90 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a73a00, node0x12a73380);
SDValue node0x12a73c50 = dag->getLoad(MVT::i16, dl, entry, node0x12a73240, mpi, 1);
SDValue node0x12a73d20 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a73c50, node0x12a73ac0);
SDValue node0x12a73de0 = dag->getLoad(MVT::i16, dl, entry, node0x12a73620, mpi, 1);
SDValue node0x12a73eb0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a73d20, node0x12a73380);
SDValue node0x12a73f70 = dag->getLoad(MVT::i16, dl, entry, node0x12a732e0, mpi, 1);
SDValue node0x12a74040 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a73eb0, node0x12a73b90);
SDValue node0x12a74100 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a73f70, node0x12a73de0);
SDValue node0x12a741c0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a74100, node0x12a73380);
SDValue node0x12a74280 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a74040, node0x12a741c0);
SDValue node0x12a74340 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x12a74280);
SDValue node0x12a743f0 = dag->getStore(entry, dl, node0x12a74280, node0x12a73870, mpi, 1);
SDValue node0x12a744a0 = dag->getCopyToReg(node0x12a743f0, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12a74340, SDValue());
roots.reserve(2);
roots.push_back(node0x12a744a0);
roots.push_back(node0x12a743f0);
dag->setRoot(node0x12a744a0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__AEXT_CLONE_MOI_CLONE_:
    {
SDValue node0x12a74cc0 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x12a74d60 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x12a74e00 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x12a74ea0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x12a74f40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12a74ff0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(3), MVT::i32);
SDValue node0x12a750a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12a75150 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a74f40, node0x12a74d60);
SDValue node0x12a75210 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a74f40, node0x12a74cc0);
SDValue node0x12a752d0 = dag->getLoad(MVT::i16, dl, entry, node0x12a74f40, mpi, 1);
SDValue node0x12a753a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a74ff0, node0x12a74ea0);
SDValue node0x12a75460 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a750a0, node0x12a74d60);
SDValue node0x12a75520 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a750a0, node0x12a74cc0);
SDValue node0x12a755e0 = dag->getLoad(MVT::i16, dl, entry, node0x12a750a0, mpi, 1);
SDValue node0x12a756b0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a755e0, node0x12a752d0);
SDValue node0x12a75770 = dag->getLoad(MVT::i16, dl, entry, node0x12a75210, mpi, 1);
SDValue node0x12a75840 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a756b0, node0x12a74e00);
SDValue node0x12a75900 = dag->getLoad(MVT::i16, dl, entry, node0x12a75520, mpi, 1);
SDValue node0x12a759d0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a75900, node0x12a75770);
SDValue node0x12a75a90 = dag->getLoad(MVT::i16, dl, entry, node0x12a75150, mpi, 1);
SDValue node0x12a75b60 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a759d0, node0x12a74e00);
SDValue node0x12a75c20 = dag->getLoad(MVT::i16, dl, entry, node0x12a75460, mpi, 1);
SDValue node0x12a75cf0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a75b60, node0x12a75840);
SDValue node0x12a75db0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a75c20, node0x12a75a90);
SDValue node0x12a75e70 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a75db0, node0x12a74e00);
SDValue node0x12a75f30 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a75cf0, node0x12a75e70);
SDValue node0x12a75ff0 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x12a75f30);
SDValue node0x12a760a0 = dag->getStore(entry, dl, node0x12a75f30, node0x12a753a0, mpi, 1);
SDValue node0x12a76150 = dag->getCopyToReg(node0x12a760a0, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12a75ff0, SDValue());
roots.reserve(2);
roots.push_back(node0x12a76150);
roots.push_back(node0x12a760a0);
dag->setRoot(node0x12a76150);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__MOI_CLONE_:
    {
SDValue node0x12a76b30 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12a76bd0 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x12a76c70 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x12a76d10 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x12a76db0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x12a76e50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12a76f00 = dag->getLoad(MVT::i16, dl, entry, node0x12a76b30, mpi, 1);
SDValue node0x12a76fd0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a76e50, node0x12a76db0);
SDValue node0x12a77090 = dag->getLoad(MVT::i16, dl, entry, node0x12a76b30, mpi, 1);
SDValue node0x12a77160 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a77090, node0x12a76f00);
SDValue node0x12a77220 = dag->getLoad(MVT::i16, dl, entry, node0x12a76bd0, mpi, 1);
SDValue node0x12a772f0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a77160, node0x12a76d10);
SDValue node0x12a773b0 = dag->getLoad(MVT::i16, dl, entry, node0x12a76bd0, mpi, 1);
SDValue node0x12a77480 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a773b0, node0x12a77220);
SDValue node0x12a77540 = dag->getLoad(MVT::i16, dl, entry, node0x12a76c70, mpi, 1);
SDValue node0x12a77610 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a77480, node0x12a76d10);
SDValue node0x12a776d0 = dag->getLoad(MVT::i16, dl, entry, node0x12a76c70, mpi, 1);
SDValue node0x12a777a0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a77610, node0x12a772f0);
SDValue node0x12a77860 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a776d0, node0x12a77540);
SDValue node0x12a77920 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a77860, node0x12a76d10);
SDValue node0x12a779e0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a777a0, node0x12a77920);
SDValue node0x12a77aa0 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x12a779e0);
SDValue node0x12a77b50 = dag->getStore(entry, dl, node0x12a779e0, node0x12a76fd0, mpi, 1);
SDValue node0x12a77c00 = dag->getCopyToReg(node0x12a77b50, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12a77aa0, SDValue());
roots.reserve(2);
roots.push_back(node0x12a77c00);
roots.push_back(node0x12a77b50);
dag->setRoot(node0x12a77c00);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__MOI_CLONE_:
    {
SDValue node0x12a78bd0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12a78c70 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x12a78d10 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x12a78db0 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x12a78e50 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x12a78ef0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12a78fa0 = dag->getLoad(MVT::i16, dl, entry, node0x12a78bd0, mpi, 1);
SDValue node0x12a79070 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12a79120 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a78ef0, node0x12a78e50);
SDValue node0x12a791e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a79070, node0x12a78d10);
SDValue node0x12a792a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a79070, node0x12a78c70);
SDValue node0x12a79360 = dag->getLoad(MVT::i16, dl, entry, node0x12a79070, mpi, 1);
SDValue node0x12a79430 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a79360, node0x12a78fa0);
SDValue node0x12a794f0 = dag->getLoad(MVT::i16, dl, entry, node0x12a78c70, mpi, 1);
SDValue node0x12a795c0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a79430, node0x12a78db0);
SDValue node0x12a79680 = dag->getLoad(MVT::i16, dl, entry, node0x12a792a0, mpi, 1);
SDValue node0x12a79750 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a79680, node0x12a794f0);
SDValue node0x12a79810 = dag->getLoad(MVT::i16, dl, entry, node0x12a78d10, mpi, 1);
SDValue node0x12a798e0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a79750, node0x12a78db0);
SDValue node0x12a799a0 = dag->getLoad(MVT::i16, dl, entry, node0x12a791e0, mpi, 1);
SDValue node0x12a79a70 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a798e0, node0x12a795c0);
SDValue node0x12a79b30 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a799a0, node0x12a79810);
SDValue node0x12a79bf0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a79b30, node0x12a78db0);
SDValue node0x12a79cb0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a79a70, node0x12a79bf0);
SDValue node0x12a79d70 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x12a79cb0);
SDValue node0x12a79e20 = dag->getStore(entry, dl, node0x12a79cb0, node0x12a79120, mpi, 1);
SDValue node0x12a79ed0 = dag->getCopyToReg(node0x12a79e20, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12a79d70, SDValue());
roots.reserve(2);
roots.push_back(node0x12a79ed0);
roots.push_back(node0x12a79e20);
dag->setRoot(node0x12a79ed0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__MOI_CLONE_:
    {
SDValue node0x12a7af60 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12a7b000 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x12a7b0a0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x12a7b140 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x12a7b1e0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x12a7b280 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12a7b330 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12a7b3e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a7b280, node0x12a7b0a0);
SDValue node0x12a7b4a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a7b280, node0x12a7b000);
SDValue node0x12a7b560 = dag->getLoad(MVT::i16, dl, entry, node0x12a7b280, mpi, 1);
SDValue node0x12a7b630 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a7b330, node0x12a7b1e0);
SDValue node0x12a7b6f0 = dag->getLoad(MVT::i16, dl, entry, node0x12a7af60, mpi, 1);
SDValue node0x12a7b7c0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a7b6f0, node0x12a7b560);
SDValue node0x12a7b880 = dag->getLoad(MVT::i16, dl, entry, node0x12a7b4a0, mpi, 1);
SDValue node0x12a7b950 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a7b7c0, node0x12a7b140);
SDValue node0x12a7ba10 = dag->getLoad(MVT::i16, dl, entry, node0x12a7b000, mpi, 1);
SDValue node0x12a7bae0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a7ba10, node0x12a7b880);
SDValue node0x12a7bba0 = dag->getLoad(MVT::i16, dl, entry, node0x12a7b3e0, mpi, 1);
SDValue node0x12a7bc70 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a7bae0, node0x12a7b140);
SDValue node0x12a7bd30 = dag->getLoad(MVT::i16, dl, entry, node0x12a7b0a0, mpi, 1);
SDValue node0x12a7be00 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a7bc70, node0x12a7b950);
SDValue node0x12a7bec0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a7bd30, node0x12a7bba0);
SDValue node0x12a7bf80 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a7bec0, node0x12a7b140);
SDValue node0x12a7c040 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a7be00, node0x12a7bf80);
SDValue node0x12a7c100 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x12a7c040);
SDValue node0x12a7c1b0 = dag->getStore(entry, dl, node0x12a7c040, node0x12a7b630, mpi, 1);
SDValue node0x12a7c260 = dag->getCopyToReg(node0x12a7c1b0, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12a7c100, SDValue());
roots.reserve(2);
roots.push_back(node0x12a7c260);
roots.push_back(node0x12a7c1b0);
dag->setRoot(node0x12a7c260);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__MOI_CLONE_:
    {
SDValue node0x12a7d3a0 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x12a7d440 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x12a7d4e0 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x12a7d580 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x12a7d620 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12a7d6d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(3), MVT::i32);
SDValue node0x12a7d780 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12a7d830 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a7d620, node0x12a7d440);
SDValue node0x12a7d8f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a7d620, node0x12a7d3a0);
SDValue node0x12a7d9b0 = dag->getLoad(MVT::i16, dl, entry, node0x12a7d620, mpi, 1);
SDValue node0x12a7da80 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a7d6d0, node0x12a7d580);
SDValue node0x12a7db40 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a7d780, node0x12a7d440);
SDValue node0x12a7dc00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a7d780, node0x12a7d3a0);
SDValue node0x12a7dcc0 = dag->getLoad(MVT::i16, dl, entry, node0x12a7d780, mpi, 1);
SDValue node0x12a7dd90 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a7dcc0, node0x12a7d9b0);
SDValue node0x12a7de50 = dag->getLoad(MVT::i16, dl, entry, node0x12a7d8f0, mpi, 1);
SDValue node0x12a7df20 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a7dd90, node0x12a7d4e0);
SDValue node0x12a7dfe0 = dag->getLoad(MVT::i16, dl, entry, node0x12a7dc00, mpi, 1);
SDValue node0x12a7e0b0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a7dfe0, node0x12a7de50);
SDValue node0x12a7e170 = dag->getLoad(MVT::i16, dl, entry, node0x12a7d830, mpi, 1);
SDValue node0x12a7e240 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a7e0b0, node0x12a7d4e0);
SDValue node0x12a7e300 = dag->getLoad(MVT::i16, dl, entry, node0x12a7db40, mpi, 1);
SDValue node0x12a7e3d0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a7e240, node0x12a7df20);
SDValue node0x12a7e490 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x12a7e300, node0x12a7e170);
SDValue node0x12a7e550 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x12a7e490, node0x12a7d4e0);
SDValue node0x12a7e610 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x12a7e3d0, node0x12a7e550);
SDValue node0x12a7e6d0 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x12a7e610);
SDValue node0x12a7e780 = dag->getStore(entry, dl, node0x12a7e610, node0x12a7da80, mpi, 1);
SDValue node0x12a7e830 = dag->getCopyToReg(node0x12a7e780, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12a7e6d0, SDValue());
roots.reserve(2);
roots.push_back(node0x12a7e830);
roots.push_back(node0x12a7e780);
dag->setRoot(node0x12a7e830);
    }
    break;
  case Codasip::c_addi_lo__opc_addi__regs__regs__:
    {
SDValue node0x129ae770 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12a07d50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x129efa00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x129ae770, node0x12a07d50);
SDValue node0x129ef9b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x129efa00, SDValue());
roots.reserve(1);
roots.push_back(node0x129ef9b0);
dag->setRoot(node0x129ef9b0);
    }
    break;
  case Codasip::c_lui_hi__opc_lui__regs__:
    {
SDValue node0x129b6350 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x129b5eb0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x129b6350, SDValue());
roots.reserve(1);
roots.push_back(node0x129b5eb0);
dag->setRoot(node0x129b5eb0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_lo__:
    {
SDValue node0x12618ab0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12618790 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12618ab0, SDValue());
roots.reserve(1);
roots.push_back(node0x12618790);
dag->setRoot(node0x12618790);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x12619020 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12618be0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12619020, SDValue());
roots.reserve(1);
roots.push_back(node0x12618be0);
dag->setRoot(node0x12618be0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_lo__:
    {
SDValue node0x12a24bd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12405940 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x124059e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12a24bd0, node0x12405940);
SDValue node0x12405560 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x124059e0, SDValue());
roots.reserve(1);
roots.push_back(node0x12405560);
dag->setRoot(node0x12405560);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x1242d380 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126408f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12640990 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1242d380, node0x126408f0);
SDValue node0x12405bf0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12640990, SDValue());
roots.reserve(1);
roots.push_back(node0x12405bf0);
dag->setRoot(node0x12405bf0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_lo__:
    {
SDValue node0x12936d90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12a0b6c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12a0b760 = dag->getNode(ISD::AND, dl, MVT::i32, node0x12936d90, node0x12a0b6c0);
SDValue node0x12a0b2e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12a0b760, SDValue());
roots.reserve(1);
roots.push_back(node0x12a0b2e0);
dag->setRoot(node0x12a0b2e0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x12a07620 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12a0c5e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12a0c680 = dag->getNode(ISD::AND, dl, MVT::i32, node0x12a07620, node0x12a0c5e0);
SDValue node0x12a0b970 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12a0c680, SDValue());
roots.reserve(1);
roots.push_back(node0x12a0b970);
dag->setRoot(node0x12a0b970);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_lo__:
    {
SDValue node0x12a16a70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12a16750 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12a16a70, SDValue());
roots.reserve(1);
roots.push_back(node0x12a16750);
dag->setRoot(node0x12a16750);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x12a176f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12a16ba0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12a176f0, SDValue());
roots.reserve(1);
roots.push_back(node0x12a16ba0);
dag->setRoot(node0x12a16ba0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_lo__:
    {
SDValue node0x12a1a420 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12a1a750 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12a1a7f0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x12a1a420, node0x12a1a750);
SDValue node0x12a1a2e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12a1a7f0, SDValue());
roots.reserve(1);
roots.push_back(node0x12a1a2e0);
dag->setRoot(node0x12a1a2e0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x12a1b3d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12a1b700 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12a1b7a0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x12a1b3d0, node0x12a1b700);
SDValue node0x12a1aa00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12a1b7a0, SDValue());
roots.reserve(1);
roots.push_back(node0x12a1aa00);
dag->setRoot(node0x12a1aa00);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_lo__:
    {
SDValue node0x12939680 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12939760 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12939800 = dag->getSetCC(dl, MVT::i32, node0x12939760, node0x12939680, ISD::SETGT);
SDValue node0x12939440 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12939800, SDValue());
roots.reserve(1);
roots.push_back(node0x12939440);
dag->setRoot(node0x12939440);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x1293a570 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1293a650 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1293a6f0 = dag->getSetCC(dl, MVT::i32, node0x1293a650, node0x1293a570, ISD::SETGT);
SDValue node0x12939ad0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1293a6f0, SDValue());
roots.reserve(1);
roots.push_back(node0x12939ad0);
dag->setRoot(node0x12939ad0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_lo__:
    {
SDValue node0x1293d6d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1293da00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1293daa0 = dag->getSetCC(dl, MVT::i32, node0x1293d6d0, node0x1293da00, ISD::SETLT);
SDValue node0x1293d590 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1293daa0, SDValue());
roots.reserve(1);
roots.push_back(node0x1293d590);
dag->setRoot(node0x1293d590);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x1293e790 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1293eac0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1293eb60 = dag->getSetCC(dl, MVT::i32, node0x1293e790, node0x1293eac0, ISD::SETLT);
SDValue node0x1293ddc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1293eb60, SDValue());
roots.reserve(1);
roots.push_back(node0x1293ddc0);
dag->setRoot(node0x1293ddc0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_lo__:
    {
SDValue node0x129492c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x129493a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12949440 = dag->getSetCC(dl, MVT::i32, node0x129493a0, node0x129492c0, ISD::SETNE);
SDValue node0x12949080 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12949440, SDValue());
roots.reserve(1);
roots.push_back(node0x12949080);
dag->setRoot(node0x12949080);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x1294a1b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1294a290 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1294a330 = dag->getSetCC(dl, MVT::i32, node0x1294a290, node0x1294a1b0, ISD::SETNE);
SDValue node0x12949710 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1294a330, SDValue());
roots.reserve(1);
roots.push_back(node0x12949710);
dag->setRoot(node0x12949710);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_lo__:
    {
SDValue node0x1294d310 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1294d640 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1294d6e0 = dag->getSetCC(dl, MVT::i32, node0x1294d310, node0x1294d640, ISD::SETULT);
SDValue node0x1294d1d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1294d6e0, SDValue());
roots.reserve(1);
roots.push_back(node0x1294d1d0);
dag->setRoot(node0x1294d1d0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x1294e3d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1294e700 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1294e7a0 = dag->getSetCC(dl, MVT::i32, node0x1294e3d0, node0x1294e700, ISD::SETULT);
SDValue node0x1294da00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1294e7a0, SDValue());
roots.reserve(1);
roots.push_back(node0x1294da00);
dag->setRoot(node0x1294da00);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_lo__:
    {
SDValue node0x12958fe0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12958cc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12958fe0, SDValue());
roots.reserve(1);
roots.push_back(node0x12958cc0);
dag->setRoot(node0x12958cc0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x12959c60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12959110 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12959c60, SDValue());
roots.reserve(1);
roots.push_back(node0x12959110);
dag->setRoot(node0x12959110);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_lo__:
    {
SDValue node0x1295cad0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1295ce00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1295cea0 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x1295cad0, node0x1295ce00);
SDValue node0x1295c990 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1295cea0, SDValue());
roots.reserve(1);
roots.push_back(node0x1295c990);
dag->setRoot(node0x1295c990);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x1295da80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1295ddb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1295de50 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x1295da80, node0x1295ddb0);
SDValue node0x1295d0b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1295de50, SDValue());
roots.reserve(1);
roots.push_back(node0x1295d0b0);
dag->setRoot(node0x1295d0b0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_lo__:
    {
SDValue node0x126725b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x126722b0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x126725b0);
roots.reserve(1);
roots.push_back(node0x126722b0);
dag->setRoot(node0x126722b0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_pcrel_lo__:
    {
SDValue node0x12673030 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x12672d60 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x12673030);
roots.reserve(1);
roots.push_back(node0x12672d60);
dag->setRoot(node0x12672d60);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_lo__:
    {
SDValue node0x1267c740 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1267ae90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1267c740, SDValue());
SDValue node0x1267cab0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1267c710 = dag->getNode(ISD::BR, dl, MVT::Other, node0x1267ae90, node0x1267cab0);
roots.reserve(2);
roots.push_back(node0x1267ae90);
roots.push_back(node0x1267c710);
dag->setRoot(node0x1267c710);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x1267d450 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1267cc90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1267d450, SDValue());
SDValue node0x1267d7c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1267d420 = dag->getNode(ISD::BR, dl, MVT::Other, node0x1267cc90, node0x1267d7c0);
roots.reserve(2);
roots.push_back(node0x1267cc90);
roots.push_back(node0x1267d420);
dag->setRoot(node0x1267d420);
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
SDValue node0x126978e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126819d0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x126978e0, mpi, MVT::i8, 1);
SDValue node0x12696cd0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126819d0, SDValue());
roots.reserve(1);
roots.push_back(node0x12696cd0);
dag->setRoot(node0x12696cd0);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_lo__regs__:
    {
SDValue node0x12698cc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12698ff0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12699090 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12698cc0, node0x12698ff0);
SDValue node0x12697980 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x12699090, mpi, MVT::i8, 1);
SDValue node0x12697c30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12697980, SDValue());
roots.reserve(1);
roots.push_back(node0x12697c30);
dag->setRoot(node0x12697c30);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x1269a0a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12699120 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1269a0a0, mpi, MVT::i8, 1);
SDValue node0x126994c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12699120, SDValue());
roots.reserve(1);
roots.push_back(node0x126994c0);
dag->setRoot(node0x126994c0);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x1269b370 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1269b6a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1269b740 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1269b370, node0x1269b6a0);
SDValue node0x1269a140 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1269b740, mpi, MVT::i8, 1);
SDValue node0x126992e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1269a140, SDValue());
roots.reserve(1);
roots.push_back(node0x126992e0);
dag->setRoot(node0x126992e0);
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
SDValue node0x126a9380 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1269b7d0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x126a9380, mpi, MVT::i8, 1);
SDValue node0x126a88f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1269b7d0, SDValue());
roots.reserve(1);
roots.push_back(node0x126a88f0);
dag->setRoot(node0x126a88f0);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_lo__regs__:
    {
SDValue node0x126aa830 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126aab60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x126aac00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x126aa830, node0x126aab60);
SDValue node0x126a9420 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x126aac00, mpi, MVT::i8, 1);
SDValue node0x126a96d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126a9420, SDValue());
roots.reserve(1);
roots.push_back(node0x126a96d0);
dag->setRoot(node0x126a96d0);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x126abc60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126aac90 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x126abc60, mpi, MVT::i8, 1);
SDValue node0x126aafe0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126aac90, SDValue());
roots.reserve(1);
roots.push_back(node0x126aafe0);
dag->setRoot(node0x126aafe0);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x126acee0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126ad210 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x126ad2b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x126acee0, node0x126ad210);
SDValue node0x126abd00 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x126ad2b0, mpi, MVT::i8, 1);
SDValue node0x126aaea0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126abd00, SDValue());
roots.reserve(1);
roots.push_back(node0x126aaea0);
dag->setRoot(node0x126aaea0);
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
SDValue node0x126baef0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126ad340 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x126baef0, mpi, MVT::i16, 1);
SDValue node0x126ba2e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126ad340, SDValue());
roots.reserve(1);
roots.push_back(node0x126ba2e0);
dag->setRoot(node0x126ba2e0);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_lo__regs__:
    {
SDValue node0x126bc3a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126bc6d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x126bc770 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x126bc3a0, node0x126bc6d0);
SDValue node0x126baf90 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x126bc770, mpi, MVT::i16, 1);
SDValue node0x126bb240 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126baf90, SDValue());
roots.reserve(1);
roots.push_back(node0x126bb240);
dag->setRoot(node0x126bb240);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x126bd780 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126bc800 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x126bd780, mpi, MVT::i16, 1);
SDValue node0x126bcba0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126bc800, SDValue());
roots.reserve(1);
roots.push_back(node0x126bcba0);
dag->setRoot(node0x126bcba0);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x126bea50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126bed80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x126bee20 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x126bea50, node0x126bed80);
SDValue node0x126bd820 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x126bee20, mpi, MVT::i16, 1);
SDValue node0x126bc9c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126bd820, SDValue());
roots.reserve(1);
roots.push_back(node0x126bc9c0);
dag->setRoot(node0x126bc9c0);
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
SDValue node0x126cca60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126beeb0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x126cca60, mpi, MVT::i16, 1);
SDValue node0x126cbfd0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126beeb0, SDValue());
roots.reserve(1);
roots.push_back(node0x126cbfd0);
dag->setRoot(node0x126cbfd0);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_lo__regs__:
    {
SDValue node0x126cdf10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126ce240 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x126ce2e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x126cdf10, node0x126ce240);
SDValue node0x126ccb00 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x126ce2e0, mpi, MVT::i16, 1);
SDValue node0x126ccdb0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126ccb00, SDValue());
roots.reserve(1);
roots.push_back(node0x126ccdb0);
dag->setRoot(node0x126ccdb0);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x126cf340 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126ce370 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x126cf340, mpi, MVT::i16, 1);
SDValue node0x126ce6c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126ce370, SDValue());
roots.reserve(1);
roots.push_back(node0x126ce6c0);
dag->setRoot(node0x126ce6c0);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x126d05c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126d08f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x126d0990 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x126d05c0, node0x126d08f0);
SDValue node0x126cf3e0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x126d0990, mpi, MVT::i16, 1);
SDValue node0x126ce580 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126cf3e0, SDValue());
roots.reserve(1);
roots.push_back(node0x126ce580);
dag->setRoot(node0x126ce580);
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
SDValue node0x126de5d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126de670 = dag->getLoad(MVT::i32, dl, entry, node0x126de5d0, mpi, 1);
SDValue node0x126dd9c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126de670, SDValue());
roots.reserve(1);
roots.push_back(node0x126dd9c0);
dag->setRoot(node0x126dd9c0);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_lo__regs__:
    {
SDValue node0x126df9d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126dfd00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x126dfda0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x126df9d0, node0x126dfd00);
SDValue node0x126dfe30 = dag->getLoad(MVT::i32, dl, entry, node0x126dfda0, mpi, 1);
SDValue node0x126de820 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126dfe30, SDValue());
roots.reserve(1);
roots.push_back(node0x126de820);
dag->setRoot(node0x126de820);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x126e0cb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126e0d50 = dag->getLoad(MVT::i32, dl, entry, node0x126e0cb0, mpi, 1);
SDValue node0x126e00d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126e0d50, SDValue());
roots.reserve(1);
roots.push_back(node0x126e00d0);
dag->setRoot(node0x126e00d0);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x126e1f20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x126e2250 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x126e22f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x126e1f20, node0x126e2250);
SDValue node0x126e2380 = dag->getLoad(MVT::i32, dl, entry, node0x126e22f0, mpi, 1);
SDValue node0x126dffe0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126e2380, SDValue());
roots.reserve(1);
roots.push_back(node0x126dffe0);
dag->setRoot(node0x126dffe0);
    }
    break;
  case Codasip::i_lui_hi__opc_lui__regs__imm20_hi__:
    {
SDValue node0x12701940 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127019c0 = dag->getConstant(2048LL, dl, MVT::i32);
SDValue node0x12701a80 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12701940, node0x127019c0);
SDValue node0x12701af0 = dag->getConstant(-4096LL, dl, MVT::i32);
SDValue node0x12701bb0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x12701a80, node0x12701af0);
SDValue node0x12701650 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12701bb0, SDValue());
roots.reserve(1);
roots.push_back(node0x12701650);
dag->setRoot(node0x12701650);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__reg0__simm12_lo__:
    {
SDValue node0x12720320 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1271d460 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12720320, SDValue());
roots.reserve(1);
roots.push_back(node0x1271d460);
dag->setRoot(node0x1271d460);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x12720ec0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12720450 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x12720ec0, SDValue());
roots.reserve(1);
roots.push_back(node0x12720450);
dag->setRoot(node0x12720450);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_lo__:
    {
SDValue node0x127221f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12722520 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x127225c0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x127221f0, node0x12722520);
SDValue node0x12721560 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127225c0, SDValue());
roots.reserve(1);
roots.push_back(node0x12721560);
dag->setRoot(node0x12721560);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x12722ff0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12723320 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x127233c0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x12722ff0, node0x12723320);
SDValue node0x12722730 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127233c0, SDValue());
roots.reserve(1);
roots.push_back(node0x12722730);
dag->setRoot(node0x12722730);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_lo__reg0__:
    {
SDValue node0x12733630 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x127338d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x128f5ab0 = dag->getStore(entry, dl, node0x12733630, node0x127338d0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x128f5ab0);
dag->setRoot(node0x128f5ab0);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_lo__regs__:
    {
SDValue node0x12734750 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x127348b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12734b40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12734be0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x127348b0, node0x12734b40);
SDValue node0x12734c70 = dag->getStore(entry, dl, node0x12734750, node0x12734be0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x12734c70);
dag->setRoot(node0x12734c70);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x127357f0 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x12735a90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12735b30 = dag->getStore(entry, dl, node0x127357f0, node0x12735a90, mpi, 1);
roots.reserve(1);
roots.push_back(node0x12735b30);
dag->setRoot(node0x12735b30);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x12736ce0 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x12736e40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x127370d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12737170 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12736e40, node0x127370d0);
SDValue node0x12737200 = dag->getStore(entry, dl, node0x12736ce0, node0x12737170, mpi, 1);
roots.reserve(1);
roots.push_back(node0x12737200);
dag->setRoot(node0x12737200);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_lo__reg0__:
    {
SDValue node0x1273ed00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1273f040 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12476260 = dag->getTruncStore(entry, dl, node0x1273ed00, node0x1273f040, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x12476260);
dag->setRoot(node0x12476260);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_lo__regs__:
    {
SDValue node0x12740390 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12740590 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12740820 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x127408c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12740590, node0x12740820);
SDValue node0x12476440 = dag->getTruncStore(entry, dl, node0x12740390, node0x127408c0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x12476440);
dag->setRoot(node0x12476440);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x12741610 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12741950 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12476640 = dag->getTruncStore(entry, dl, node0x12741610, node0x12741950, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x12476640);
dag->setRoot(node0x12476640);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x12742c20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12742e20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127430b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12743150 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12742e20, node0x127430b0);
SDValue node0x12476820 = dag->getTruncStore(entry, dl, node0x12742c20, node0x12743150, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x12476820);
dag->setRoot(node0x12476820);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_lo__reg0__:
    {
SDValue node0x12746230 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x127464d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12746570 = dag->getStore(entry, dl, node0x12746230, node0x127464d0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x12746570);
dag->setRoot(node0x12746570);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_lo__regs__:
    {
SDValue node0x12747530 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x12747690 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12747920 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127479c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12747690, node0x12747920);
SDValue node0x12747a50 = dag->getStore(entry, dl, node0x12747530, node0x127479c0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x12747a50);
dag->setRoot(node0x12747a50);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x127485d0 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x12748870 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12748910 = dag->getStore(entry, dl, node0x127485d0, node0x12748870, mpi, 1);
roots.reserve(1);
roots.push_back(node0x12748910);
dag->setRoot(node0x12748910);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x12749ac0 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x12749c20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12749eb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12749f50 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12749c20, node0x12749eb0);
SDValue node0x12749fe0 = dag->getStore(entry, dl, node0x12749ac0, node0x12749f50, mpi, 1);
roots.reserve(1);
roots.push_back(node0x12749fe0);
dag->setRoot(node0x12749fe0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_lo__reg0__:
    {
SDValue node0x12751cd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12752010 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12477500 = dag->getTruncStore(entry, dl, node0x12751cd0, node0x12752010, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x12477500);
dag->setRoot(node0x12477500);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_lo__regs__:
    {
SDValue node0x12753360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12753560 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127537f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12753890 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12753560, node0x127537f0);
SDValue node0x124776e0 = dag->getTruncStore(entry, dl, node0x12753360, node0x12753890, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x124776e0);
dag->setRoot(node0x124776e0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x127545e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12754920 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x124778e0 = dag->getTruncStore(entry, dl, node0x127545e0, node0x12754920, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x124778e0);
dag->setRoot(node0x124778e0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x12755bf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12755df0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12756080 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12756120 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12755df0, node0x12756080);
SDValue node0x12477ac0 = dag->getTruncStore(entry, dl, node0x12755bf0, node0x12756120, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x12477ac0);
dag->setRoot(node0x12477ac0);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_lo__reg0__:
    {
SDValue node0x12759200 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x12759400 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x127594a0 = dag->getStore(entry, dl, node0x12759200, node0x12759400, mpi, 1);
roots.reserve(1);
roots.push_back(node0x127594a0);
dag->setRoot(node0x127594a0);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_lo__regs__:
    {
SDValue node0x1275a460 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1275a5c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1275a7b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1275a850 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1275a5c0, node0x1275a7b0);
SDValue node0x1275a8e0 = dag->getStore(entry, dl, node0x1275a460, node0x1275a850, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1275a8e0);
dag->setRoot(node0x1275a8e0);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x1275b460 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1275b660 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1275b700 = dag->getStore(entry, dl, node0x1275b460, node0x1275b660, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1275b700);
dag->setRoot(node0x1275b700);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x1275c8b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1275ca10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1275cc00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1275cca0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1275ca10, node0x1275cc00);
SDValue node0x1275cd30 = dag->getStore(entry, dl, node0x1275c8b0, node0x1275cca0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1275cd30);
dag->setRoot(node0x1275cd30);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_lo__reg0__:
    {
SDValue node0x127648e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12764b70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127623a0 = dag->getStore(entry, dl, node0x127648e0, node0x12764b70, mpi, 1);
roots.reserve(1);
roots.push_back(node0x127623a0);
dag->setRoot(node0x127623a0);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_lo__regs__:
    {
SDValue node0x12765ec0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12766010 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127662a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12766340 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12766010, node0x127662a0);
SDValue node0x127663d0 = dag->getStore(entry, dl, node0x12765ec0, node0x12766340, mpi, 1);
roots.reserve(1);
roots.push_back(node0x127663d0);
dag->setRoot(node0x127663d0);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x12767040 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x127672d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12767370 = dag->getStore(entry, dl, node0x12767040, node0x127672d0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x12767370);
dag->setRoot(node0x12767370);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x127685f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12768740 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127689d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x12768a70 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x12768740, node0x127689d0);
SDValue node0x12768b00 = dag->getStore(entry, dl, node0x127685f0, node0x12768a70, mpi, 1);
roots.reserve(1);
roots.push_back(node0x12768b00);
dag->setRoot(node0x12768b00);
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
SDValue node0x127994b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x127991e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x127994b0, SDValue());
roots.reserve(1);
roots.push_back(node0x127991e0);
dag->setRoot(node0x127991e0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__regs__simm12_simple__:
    {
SDValue node0x12677b20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x12677dc0 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x12677b20);
roots.reserve(1);
roots.push_back(node0x12677dc0);
dag->setRoot(node0x12677dc0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__regs__simm12_simple__:
    {
SDValue node0x126827e0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x12680df0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x126827e0, SDValue());
SDValue node0x12682c90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x12682f30 = dag->getNode(ISD::BRIND, dl, MVT::Other, node0x12680df0, node0x12682c90);
roots.reserve(2);
roots.push_back(node0x12680df0);
roots.push_back(node0x12682f30);
dag->setRoot(node0x12682f30);
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
