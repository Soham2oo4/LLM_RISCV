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
 * \date    2025-04-13
 * \author  Codasip (c) C compiler backend generator
 * \version 9.4.2
 * \brief   Source for compiler backend
 * \project codasip_urisc_v.ia
 * \note          Codasip Studio version: 9.4.2
 *                Project: codasip_urisc_v.ia
 *                Date: 2025-04-13 13:38:41
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
SDValue node0x424a26a0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x428abd30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x424a24b0 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x428abd30);
SDValue node0x422ba0a0 = dag->getCopyToReg(node0x424a24b0, dl, dag->getRegister(Codasip::rf_gpr_1, MVT::i32), node0x424a26a0, SDValue());
roots.reserve(2);
roots.push_back(node0x422ba0a0);
roots.push_back(node0x424a24b0);
dag->setRoot(node0x422ba0a0);
    } else     {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_jump_reg_alias__regs__:
    {
SDValue node0x42607300 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426070d0 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x42607300);
roots.reserve(1);
roots.push_back(node0x426070d0);
dag->setRoot(node0x426070d0);
    }
    break;
  case Codasip::i_jmp_rel_alias__rel_addr20__:
    {
SDValue node0x42605aa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x42605d20 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x42605aa0);
roots.reserve(1);
roots.push_back(node0x42605d20);
dag->setRoot(node0x42605d20);
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
SDValue node0x42591d70 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x425eb990 = dag->getConstant(-4LL, dl, MVT::i32);
SDValue node0x425ebbb0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x42591d70, node0x425eb990);
SDValue node0x425eb940 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x425ebbb0, SDValue());
roots.reserve(1);
roots.push_back(node0x425eb940);
dag->setRoot(node0x425eb940);
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
SDValue node0x42685830 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x426857e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42685830, SDValue());
roots.reserve(1);
roots.push_back(node0x426857e0);
dag->setRoot(node0x426857e0);
    }
    break;
  case Codasip::i_mv_alias__regs__regs__:
    {
SDValue node0x426868c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42686670 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x426868c0, SDValue());
roots.reserve(1);
roots.push_back(node0x42686670);
dag->setRoot(node0x42686670);
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
SDValue node0x426a4790 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x426a4740 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x426a4790, SDValue());
roots.reserve(1);
roots.push_back(node0x426a4740);
dag->setRoot(node0x426a4740);
    }
    break;
  case Codasip::i_seqz_alias__regs__regs__:
    {
SDValue node0x426a5740 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x426a58c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426a5970 = dag->getSetCC(dl, MVT::i32, node0x426a58c0, node0x426a5740, ISD::SETEQ);
SDValue node0x426a5670 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x426a5970, SDValue());
roots.reserve(1);
roots.push_back(node0x426a5670);
dag->setRoot(node0x426a5670);
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
SDValue node0x426af340 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x426af2f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x426af340, SDValue());
roots.reserve(1);
roots.push_back(node0x426af2f0);
dag->setRoot(node0x426af2f0);
    }
    break;
  case Codasip::i_snez_alias__regs__regs__:
    {
SDValue node0x426b0250 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x426b03d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426b0480 = dag->getSetCC(dl, MVT::i32, node0x426b03d0, node0x426b0250, ISD::SETNE);
SDValue node0x426b0180 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x426b0480, SDValue());
roots.reserve(1);
roots.push_back(node0x426b0180);
dag->setRoot(node0x426b0180);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__regs__simm12_simple__immspec_1_:
    {
SDValue node0x42728bb0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x427272f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42728bb0, SDValue());
SDValue node0x42728f20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42729060 = dag->getNode(ISD::BRIND, dl, MVT::Other, node0x427272f0, node0x42728f20);
roots.reserve(2);
roots.push_back(node0x427272f0);
roots.push_back(node0x42729060);
dag->setRoot(node0x42729060);
    }
    break;
  case Codasip::i_call_rel_alias__rel_addr20__:
case Codasip::i_call_rel_alias__rel_addr20__ES:
case Codasip::i_call_rel_alias__rel_addr20__MC:
case Codasip::i_call_rel_alias__rel_addr20__BA:
    if (lowlevel) {
SDValue node0x424a3480 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x424a3690 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x424a3910 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x424a3690);
SDValue node0x424a2b30 = dag->getCopyToReg(node0x424a3910, dl, dag->getRegister(Codasip::rf_gpr_1, MVT::i32), node0x424a3480, SDValue());
roots.reserve(2);
roots.push_back(node0x424a2b30);
roots.push_back(node0x424a3910);
dag->setRoot(node0x424a2b30);
    } else     {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__:
    {
SDValue node0x425ee8b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x425ee5b0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x425ee8b0);
roots.reserve(1);
roots.push_back(node0x425ee5b0);
dag->setRoot(node0x425ee5b0);
    }
    break;
  case Codasip::i_jal_abs__opc_jal__regs__rel_addr20__:
    {
SDValue node0x425eee90 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x425ede60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x425eee90, SDValue());
SDValue node0x425ef200 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x425eee30 = dag->getNode(ISD::BR, dl, MVT::Other, node0x425ede60, node0x425ef200);
roots.reserve(2);
roots.push_back(node0x425ede60);
roots.push_back(node0x425eee30);
dag->setRoot(node0x425eee30);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__:
    {
SDValue node0x424f0670 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x424f0920 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x424f0670);
roots.reserve(1);
roots.push_back(node0x424f0920);
dag->setRoot(node0x424f0920);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x424f1bf0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x424f1d70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x424f1e20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x424f1ec0 = dag->getSetCC(dl, MVT::iAny, node0x424f1d70, node0x424f1bf0, ISD::SETEQ);
SDValue node0x424f20e0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x424f1ec0, node0x424f1e20);
roots.reserve(1);
roots.push_back(node0x424f20e0);
dag->setRoot(node0x424f20e0);
    } else     {
SDValue node0x424f1bf0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x424f1d70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x424f1e20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x424f1ec0 = dag->getSetCC(dl, MVT::i32, node0x424f1d70, node0x424f1bf0, ISD::SETEQ);
SDValue node0x424f20e0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x424f1ec0, node0x424f1e20);
roots.reserve(1);
roots.push_back(node0x424f20e0);
dag->setRoot(node0x424f20e0);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x424f4590 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x424f4710 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x424f47c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x424f4860 = dag->getSetCC(dl, MVT::iAny, node0x424f4710, node0x424f4590, ISD::SETEQ);
SDValue node0x424f4a80 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x424f4860, node0x424f47c0);
roots.reserve(1);
roots.push_back(node0x424f4a80);
dag->setRoot(node0x424f4a80);
    } else     {
SDValue node0x424f4590 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x424f4710 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x424f47c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x424f4860 = dag->getSetCC(dl, MVT::i32, node0x424f4710, node0x424f4590, ISD::SETEQ);
SDValue node0x424f4a80 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x424f4860, node0x424f47c0);
roots.reserve(1);
roots.push_back(node0x424f4a80);
dag->setRoot(node0x424f4a80);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x424f6200 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x424f62b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x424f6360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x424f6400 = dag->getSetCC(dl, MVT::iAny, node0x424f62b0, node0x424f6200, ISD::SETEQ);
SDValue node0x424f6620 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x424f6400, node0x424f6360);
roots.reserve(1);
roots.push_back(node0x424f6620);
dag->setRoot(node0x424f6620);
    } else     {
SDValue node0x424f6200 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x424f62b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x424f6360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x424f6400 = dag->getSetCC(dl, MVT::i32, node0x424f62b0, node0x424f6200, ISD::SETEQ);
SDValue node0x424f6620 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x424f6400, node0x424f6360);
roots.reserve(1);
roots.push_back(node0x424f6620);
dag->setRoot(node0x424f6620);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__:
    {
SDValue node0x424f7580 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x424f7830 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x424f7580);
roots.reserve(1);
roots.push_back(node0x424f7830);
dag->setRoot(node0x424f7830);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x424f8790 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x424f8af0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x424f8ba0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x424f8c40 = dag->getSetCC(dl, MVT::iAny, node0x424f8af0, node0x424f8790, ISD::SETLT);
SDValue node0x424f8e60 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x424f8c40, node0x424f8ba0);
roots.reserve(1);
roots.push_back(node0x424f8e60);
dag->setRoot(node0x424f8e60);
    } else     {
SDValue node0x424f8790 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x424f8af0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x424f8ba0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x424f8c40 = dag->getSetCC(dl, MVT::i32, node0x424f8af0, node0x424f8790, ISD::SETLT);
SDValue node0x424f8e60 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x424f8c40, node0x424f8ba0);
roots.reserve(1);
roots.push_back(node0x424f8e60);
dag->setRoot(node0x424f8e60);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x424fb450 = dag->getConstant(-1LL, dl, MVT::i32);
SDValue node0x424fb530 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x424fb5e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x424fb680 = dag->getSetCC(dl, MVT::iAny, node0x424fb530, node0x424fb450, ISD::SETGT);
SDValue node0x424fb8a0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x424fb680, node0x424fb5e0);
roots.reserve(1);
roots.push_back(node0x424fb8a0);
dag->setRoot(node0x424fb8a0);
    } else     {
SDValue node0x424fb450 = dag->getConstant(-1LL, dl, MVT::i32);
SDValue node0x424fb530 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x424fb5e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x424fb680 = dag->getSetCC(dl, MVT::i32, node0x424fb530, node0x424fb450, ISD::SETGT);
SDValue node0x424fb8a0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x424fb680, node0x424fb5e0);
roots.reserve(1);
roots.push_back(node0x424fb8a0);
dag->setRoot(node0x424fb8a0);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x424fd020 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x424fd0d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x424fd180 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x424fd220 = dag->getSetCC(dl, MVT::iAny, node0x424fd0d0, node0x424fd020, ISD::SETGE);
SDValue node0x424fd440 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x424fd220, node0x424fd180);
roots.reserve(1);
roots.push_back(node0x424fd440);
dag->setRoot(node0x424fd440);
    } else     {
SDValue node0x424fd020 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x424fd0d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x424fd180 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x424fd220 = dag->getSetCC(dl, MVT::i32, node0x424fd0d0, node0x424fd020, ISD::SETGE);
SDValue node0x424fd440 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x424fd220, node0x424fd180);
roots.reserve(1);
roots.push_back(node0x424fd440);
dag->setRoot(node0x424fd440);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__:
    {
SDValue node0x424fe3a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x424fe650 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x424fe3a0);
roots.reserve(1);
roots.push_back(node0x424fe650);
dag->setRoot(node0x424fe650);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x424ff790 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x424ff910 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x424ff9c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x424ffa60 = dag->getSetCC(dl, MVT::iAny, node0x424ff910, node0x424ff790, ISD::SETEQ);
SDValue node0x424ffc80 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x424ffa60, node0x424ff9c0);
roots.reserve(1);
roots.push_back(node0x424ffc80);
dag->setRoot(node0x424ffc80);
    } else     {
SDValue node0x424ff790 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x424ff910 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x424ff9c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x424ffa60 = dag->getSetCC(dl, MVT::i32, node0x424ff910, node0x424ff790, ISD::SETEQ);
SDValue node0x424ffc80 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x424ffa60, node0x424ff9c0);
roots.reserve(1);
roots.push_back(node0x424ffc80);
dag->setRoot(node0x424ffc80);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x42503d30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42503de0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x42503e90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x42503f30 = dag->getSetCC(dl, MVT::iAny, node0x42503de0, node0x42503d30, ISD::SETUGE);
SDValue node0x42504150 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x42503f30, node0x42503e90);
roots.reserve(1);
roots.push_back(node0x42504150);
dag->setRoot(node0x42504150);
    } else     {
SDValue node0x42503d30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42503de0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x42503e90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x42503f30 = dag->getSetCC(dl, MVT::i32, node0x42503de0, node0x42503d30, ISD::SETUGE);
SDValue node0x42504150 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x42503f30, node0x42503e90);
roots.reserve(1);
roots.push_back(node0x42504150);
dag->setRoot(node0x42504150);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x42505d90 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x42505f10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x42505fc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x42506060 = dag->getSetCC(dl, MVT::iAny, node0x42505f10, node0x42505d90, ISD::SETGT);
SDValue node0x42506280 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x42506060, node0x42505fc0);
roots.reserve(1);
roots.push_back(node0x42506280);
dag->setRoot(node0x42506280);
    } else     {
SDValue node0x42505d90 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x42505f10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x42505fc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x42506060 = dag->getSetCC(dl, MVT::i32, node0x42505f10, node0x42505d90, ISD::SETGT);
SDValue node0x42506280 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x42506060, node0x42505fc0);
roots.reserve(1);
roots.push_back(node0x42506280);
dag->setRoot(node0x42506280);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x42508780 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x42508900 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x425089b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x42508a50 = dag->getSetCC(dl, MVT::iAny, node0x42508900, node0x42508780, ISD::SETLT);
SDValue node0x42508c70 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x42508a50, node0x425089b0);
roots.reserve(1);
roots.push_back(node0x42508c70);
dag->setRoot(node0x42508c70);
    } else     {
SDValue node0x42508780 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x42508900 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x425089b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x42508a50 = dag->getSetCC(dl, MVT::i32, node0x42508900, node0x42508780, ISD::SETLT);
SDValue node0x42508c70 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x42508a50, node0x425089b0);
roots.reserve(1);
roots.push_back(node0x42508c70);
dag->setRoot(node0x42508c70);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x4250a3f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4250a4a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4250a550 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x4250a5f0 = dag->getSetCC(dl, MVT::iAny, node0x4250a4a0, node0x4250a3f0, ISD::SETLT);
SDValue node0x4250a810 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x4250a5f0, node0x4250a550);
roots.reserve(1);
roots.push_back(node0x4250a810);
dag->setRoot(node0x4250a810);
    } else     {
SDValue node0x4250a3f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4250a4a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4250a550 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x4250a5f0 = dag->getSetCC(dl, MVT::i32, node0x4250a4a0, node0x4250a3f0, ISD::SETLT);
SDValue node0x4250a810 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x4250a5f0, node0x4250a550);
roots.reserve(1);
roots.push_back(node0x4250a810);
dag->setRoot(node0x4250a810);
    }
    break;
  case Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x4250c400 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x4250c580 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4250c630 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x4250c6d0 = dag->getSetCC(dl, MVT::iAny, node0x4250c580, node0x4250c400, ISD::SETNE);
SDValue node0x4250c8f0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x4250c6d0, node0x4250c630);
roots.reserve(1);
roots.push_back(node0x4250c8f0);
dag->setRoot(node0x4250c8f0);
    } else     {
SDValue node0x4250c400 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x4250c580 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4250c630 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x4250c6d0 = dag->getSetCC(dl, MVT::i32, node0x4250c580, node0x4250c400, ISD::SETNE);
SDValue node0x4250c8f0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x4250c6d0, node0x4250c630);
roots.reserve(1);
roots.push_back(node0x4250c8f0);
dag->setRoot(node0x4250c8f0);
    }
    break;
  case Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x425101f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x425102a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x42510350 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x425103f0 = dag->getSetCC(dl, MVT::iAny, node0x425102a0, node0x425101f0, ISD::SETULT);
SDValue node0x42510610 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x425103f0, node0x42510350);
roots.reserve(1);
roots.push_back(node0x42510610);
dag->setRoot(node0x42510610);
    } else     {
SDValue node0x425101f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x425102a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x42510350 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x425103f0 = dag->getSetCC(dl, MVT::i32, node0x425102a0, node0x425101f0, ISD::SETULT);
SDValue node0x42510610 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x425103f0, node0x42510350);
roots.reserve(1);
roots.push_back(node0x42510610);
dag->setRoot(node0x42510610);
    }
    break;
  case Codasip::i_control_conditional__opc_bne__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x425122a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x42512420 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x425124d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x42512570 = dag->getSetCC(dl, MVT::iAny, node0x42512420, node0x425122a0, ISD::SETNE);
SDValue node0x42512790 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x42512570, node0x425124d0);
roots.reserve(1);
roots.push_back(node0x42512790);
dag->setRoot(node0x42512790);
    } else     {
SDValue node0x425122a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x42512420 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x425124d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x42512570 = dag->getSetCC(dl, MVT::i32, node0x42512420, node0x425122a0, ISD::SETNE);
SDValue node0x42512790 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x42512570, node0x425124d0);
roots.reserve(1);
roots.push_back(node0x42512790);
dag->setRoot(node0x42512790);
    }
    break;
  case Codasip::i_control_conditional__opc_bne__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x42514c90 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x42514e10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x42514ec0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x42514f60 = dag->getSetCC(dl, MVT::iAny, node0x42514e10, node0x42514c90, ISD::SETNE);
SDValue node0x42515180 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x42514f60, node0x42514ec0);
roots.reserve(1);
roots.push_back(node0x42515180);
dag->setRoot(node0x42515180);
    } else     {
SDValue node0x42514c90 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x42514e10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x42514ec0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x42514f60 = dag->getSetCC(dl, MVT::i32, node0x42514e10, node0x42514c90, ISD::SETNE);
SDValue node0x42515180 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x42514f60, node0x42514ec0);
roots.reserve(1);
roots.push_back(node0x42515180);
dag->setRoot(node0x42515180);
    }
    break;
  case Codasip::i_control_conditional__opc_bne__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x42516900 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x425169b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x42516a60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x42516b00 = dag->getSetCC(dl, MVT::iAny, node0x425169b0, node0x42516900, ISD::SETNE);
SDValue node0x42516d20 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x42516b00, node0x42516a60);
roots.reserve(1);
roots.push_back(node0x42516d20);
dag->setRoot(node0x42516d20);
    } else     {
SDValue node0x42516900 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x425169b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x42516a60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x42516b00 = dag->getSetCC(dl, MVT::i32, node0x425169b0, node0x42516900, ISD::SETNE);
SDValue node0x42516d20 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x42516b00, node0x42516a60);
roots.reserve(1);
roots.push_back(node0x42516d20);
dag->setRoot(node0x42516d20);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x4271b650 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x4271b8b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4271b960 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4271ba10 = dag->getSetCC(dl, MVT::iAny, node0x4271b8b0, node0x4271b960, ISD::SETLE);
SDValue node0x4271bab0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x4271ba10, node0x4271b650);
roots.reserve(1);
roots.push_back(node0x4271bab0);
dag->setRoot(node0x4271bab0);
    } else     {
SDValue node0x4271b650 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x4271b8b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4271b960 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4271ba10 = dag->getSetCC(dl, MVT::i32, node0x4271b8b0, node0x4271b960, ISD::SETLE);
SDValue node0x4271bab0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x4271ba10, node0x4271b650);
roots.reserve(1);
roots.push_back(node0x4271bab0);
dag->setRoot(node0x4271bab0);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x4271c570 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x4271c800 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4271c8b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4271c960 = dag->getSetCC(dl, MVT::iAny, node0x4271c800, node0x4271c8b0, ISD::SETULE);
SDValue node0x4271ca30 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x4271c960, node0x4271c570);
roots.reserve(1);
roots.push_back(node0x4271ca30);
dag->setRoot(node0x4271ca30);
    } else     {
SDValue node0x4271c570 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x4271c800 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4271c8b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4271c960 = dag->getSetCC(dl, MVT::i32, node0x4271c800, node0x4271c8b0, ISD::SETULE);
SDValue node0x4271ca30 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x4271c960, node0x4271c570);
roots.reserve(1);
roots.push_back(node0x4271ca30);
dag->setRoot(node0x4271ca30);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x4271d440 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x4271d6d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4271d780 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4271d830 = dag->getSetCC(dl, MVT::iAny, node0x4271d6d0, node0x4271d780, ISD::SETGT);
SDValue node0x4271d900 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x4271d830, node0x4271d440);
roots.reserve(1);
roots.push_back(node0x4271d900);
dag->setRoot(node0x4271d900);
    } else     {
SDValue node0x4271d440 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x4271d6d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4271d780 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4271d830 = dag->getSetCC(dl, MVT::i32, node0x4271d6d0, node0x4271d780, ISD::SETGT);
SDValue node0x4271d900 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x4271d830, node0x4271d440);
roots.reserve(1);
roots.push_back(node0x4271d900);
dag->setRoot(node0x4271d900);
    }
    break;
  case Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x4271e310 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x4271e5a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4271e650 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4271e700 = dag->getSetCC(dl, MVT::iAny, node0x4271e5a0, node0x4271e650, ISD::SETUGT);
SDValue node0x4271e7d0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x4271e700, node0x4271e310);
roots.reserve(1);
roots.push_back(node0x4271e7d0);
dag->setRoot(node0x4271e7d0);
    } else     {
SDValue node0x4271e310 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x4271e5a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4271e650 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4271e700 = dag->getSetCC(dl, MVT::i32, node0x4271e5a0, node0x4271e650, ISD::SETUGT);
SDValue node0x4271e7d0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x4271e700, node0x4271e310);
roots.reserve(1);
roots.push_back(node0x4271e7d0);
dag->setRoot(node0x4271e7d0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__:
    {
SDValue node0x425f11e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x425f0f10 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x425f11e0);
roots.reserve(1);
roots.push_back(node0x425f0f10);
dag->setRoot(node0x425f0f10);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_simple__:
    {
SDValue node0x425fb7a0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x425faec0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x425fb7a0, SDValue());
SDValue node0x425fbb10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x425fb770 = dag->getNode(ISD::BR, dl, MVT::Other, node0x425faec0, node0x425fbb10);
roots.reserve(2);
roots.push_back(node0x425faec0);
roots.push_back(node0x425fb770);
dag->setRoot(node0x425fb770);
    }
    break;
  case Codasip::i_auipc__opc_auipc__regs__imm20_s12__:
    {
SDValue node0x42888f10 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x42889200 = dag->getConstant(-4LL, dl, MVT::i32);
SDValue node0x42889420 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x428894c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x42888f10, node0x42889420);
SDValue node0x42889550 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x428894c0, node0x42889200);
SDValue node0x42888ec0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42889550, SDValue());
roots.reserve(1);
roots.push_back(node0x42888ec0);
dag->setRoot(node0x42888ec0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__:
    {
SDValue node0x42825fa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x428ab280 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42825fa0, SDValue());
roots.reserve(1);
roots.push_back(node0x428ab280);
dag->setRoot(node0x428ab280);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__:
    {
SDValue node0x4281dad0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4281efa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4281f040 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x4281dad0, node0x4281efa0);
SDValue node0x42828a40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4281f040, SDValue());
roots.reserve(1);
roots.push_back(node0x42828a40);
dag->setRoot(node0x42828a40);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__:
    {
SDValue node0x42796cd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42796d80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42796e20 = dag->getNode(ISD::AND, dl, MVT::i32, node0x42796cd0, node0x42796d80);
SDValue node0x42795810 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42796e20, SDValue());
roots.reserve(1);
roots.push_back(node0x42795810);
dag->setRoot(node0x42795810);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__:
    {
SDValue node0x427a1bb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427a0a40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427a1bb0, SDValue());
roots.reserve(1);
roots.push_back(node0x427a0a40);
dag->setRoot(node0x427a0a40);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__:
    {
SDValue node0x427a5d50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427a5e00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x427a5ea0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x427a5d50, node0x427a5e00);
SDValue node0x427a48a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427a5ea0, SDValue());
roots.reserve(1);
roots.push_back(node0x427a48a0);
dag->setRoot(node0x427a48a0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__:
    {
SDValue node0x428526c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x428527a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42852840 = dag->getSetCC(dl, MVT::i32, node0x428527a0, node0x428526c0, ISD::SETGT);
SDValue node0x428513e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42852840, SDValue());
roots.reserve(1);
roots.push_back(node0x428513e0);
dag->setRoot(node0x428513e0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:
    {
SDValue node0x42856ce0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42856d90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42856e30 = dag->getSetCC(dl, MVT::i32, node0x42856ce0, node0x42856d90, ISD::SETLT);
SDValue node0x428556d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42856e30, SDValue());
roots.reserve(1);
roots.push_back(node0x428556d0);
dag->setRoot(node0x428556d0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__:
    {
SDValue node0x42862300 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x428623e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42862480 = dag->getSetCC(dl, MVT::i32, node0x428623e0, node0x42862300, ISD::SETNE);
SDValue node0x42861020 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42862480, SDValue());
roots.reserve(1);
roots.push_back(node0x42861020);
dag->setRoot(node0x42861020);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:
    {
SDValue node0x42866920 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x428669d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42866a70 = dag->getSetCC(dl, MVT::i32, node0x42866920, node0x428669d0, ISD::SETULT);
SDValue node0x42865310 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42866a70, SDValue());
roots.reserve(1);
roots.push_back(node0x42865310);
dag->setRoot(node0x42865310);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__:
    {
SDValue node0x42871c30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42870a20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42871c30, SDValue());
roots.reserve(1);
roots.push_back(node0x42870a20);
dag->setRoot(node0x42870a20);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:
    {
SDValue node0x42875f10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42875fc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42876060 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x42875f10, node0x42875fc0);
SDValue node0x428749c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42876060, SDValue());
roots.reserve(1);
roots.push_back(node0x428749c0);
dag->setRoot(node0x428749c0);
    }
    break;
  case Codasip::i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__:
    {
SDValue node0x4287add0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4287ae80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4287af20 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x4287add0, node0x4287ae80);
SDValue node0x4287a920 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4287af20, SDValue());
roots.reserve(1);
roots.push_back(node0x4287a920);
dag->setRoot(node0x4287a920);
    }
    break;
  case Codasip::i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__:
    {
SDValue node0x4287fef0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4287ffa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42880040 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x4287fef0, node0x4287ffa0);
SDValue node0x4287fa40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42880040, SDValue());
roots.reserve(1);
roots.push_back(node0x4287fa40);
dag->setRoot(node0x4287fa40);
    }
    break;
  case Codasip::i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__:
    {
SDValue node0x42885010 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x428850c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42885160 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x42885010, node0x428850c0);
SDValue node0x42884b60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42885160, SDValue());
roots.reserve(1);
roots.push_back(node0x42884b60);
dag->setRoot(node0x42884b60);
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
SDValue node0x427c1030 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x427bf1e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427c1030, SDValue());
roots.reserve(1);
roots.push_back(node0x427bf1e0);
dag->setRoot(node0x427bf1e0);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__regs__reg0__regs__:
    {
SDValue node0x427c2220 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427c1220 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427c2220, SDValue());
roots.reserve(1);
roots.push_back(node0x427c1220);
dag->setRoot(node0x427c1220);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__regs__regs__reg0__:
    {
SDValue node0x427c4280 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427c23b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427c4280, SDValue());
roots.reserve(1);
roots.push_back(node0x427c23b0);
dag->setRoot(node0x427c23b0);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__regs__regs__regs__:
    {
SDValue node0x427c55b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427c5660 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42887a30 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x427c55b0, node0x427c5660);
SDValue node0x427c52c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42887a30, SDValue());
roots.reserve(1);
roots.push_back(node0x427c52c0);
dag->setRoot(node0x427c52c0);
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
SDValue node0x427cd9b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x427cbb60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427cd9b0, SDValue());
roots.reserve(1);
roots.push_back(node0x427cbb60);
dag->setRoot(node0x427cbb60);
    }
    break;
  case Codasip::i_comp_3reg__opc_and__regs__regs__regs__:
    {
SDValue node0x427d1c40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427d1cf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x427d1da0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x427d1c40, node0x427d1cf0);
SDValue node0x427d0aa0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427d1da0, SDValue());
roots.reserve(1);
roots.push_back(node0x427d0aa0);
dag->setRoot(node0x427d0aa0);
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
SDValue node0x427da230 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x427d83e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427da230, SDValue());
roots.reserve(1);
roots.push_back(node0x427d83e0);
dag->setRoot(node0x427d83e0);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__regs__reg0__regs__:
    {
SDValue node0x427db480 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427da420 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427db480, SDValue());
roots.reserve(1);
roots.push_back(node0x427da420);
dag->setRoot(node0x427da420);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__regs__regs__reg0__:
    {
SDValue node0x427dd540 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427db610 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427dd540, SDValue());
roots.reserve(1);
roots.push_back(node0x427db610);
dag->setRoot(node0x427db610);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__regs__regs__regs__:
    {
SDValue node0x427de880 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427de930 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x427de9e0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x427de880, node0x427de930);
SDValue node0x427dd6d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427de9e0, SDValue());
roots.reserve(1);
roots.push_back(node0x427dd6d0);
dag->setRoot(node0x427dd6d0);
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
SDValue node0x427e6d50 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x427e4f00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427e6d50, SDValue());
roots.reserve(1);
roots.push_back(node0x427e4f00);
dag->setRoot(node0x427e4f00);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__regs__regs__reg0__:
    {
SDValue node0x427e9e50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427e7f30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427e9e50, SDValue());
roots.reserve(1);
roots.push_back(node0x427e7f30);
dag->setRoot(node0x427e7f30);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__regs__regs__regs__:
    {
SDValue node0x427eb1d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427eb280 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x427eb3c0 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x427eb1d0, node0x427eb280);
SDValue node0x427e9fe0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427eb3c0, SDValue());
roots.reserve(1);
roots.push_back(node0x427e9fe0);
dag->setRoot(node0x427e9fe0);
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
SDValue node0x427f3700 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x427f18b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427f3700, SDValue());
roots.reserve(1);
roots.push_back(node0x427f18b0);
dag->setRoot(node0x427f18b0);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__reg0__regs__:
    {
SDValue node0x427f4770 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x427f48f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427f49a0 = dag->getSetCC(dl, MVT::i32, node0x427f48f0, node0x427f4770, ISD::SETGT);
SDValue node0x427f38f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427f49a0, SDValue());
roots.reserve(1);
roots.push_back(node0x427f38f0);
dag->setRoot(node0x427f38f0);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__regs__reg0__:
    {
SDValue node0x427f6950 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x427f6b70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427f6c20 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x427f6b70, node0x427f6950);
SDValue node0x427f4cc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427f6c20, SDValue());
roots.reserve(1);
roots.push_back(node0x427f4cc0);
dag->setRoot(node0x427f4cc0);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__regs__regs__:
    {
SDValue node0x427f7f10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427f7fc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x427f8070 = dag->getSetCC(dl, MVT::i32, node0x427f7f10, node0x427f7fc0, ISD::SETLT);
SDValue node0x427f6e30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427f8070, SDValue());
roots.reserve(1);
roots.push_back(node0x427f6e30);
dag->setRoot(node0x427f6e30);
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
SDValue node0x42800440 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x427fe750 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42800440, SDValue());
roots.reserve(1);
roots.push_back(node0x427fe750);
dag->setRoot(node0x427fe750);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__regs__reg0__regs__:
    {
SDValue node0x428014b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x42801630 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x428016e0 = dag->getSetCC(dl, MVT::i32, node0x42801630, node0x428014b0, ISD::SETNE);
SDValue node0x42800630 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x428016e0, SDValue());
roots.reserve(1);
roots.push_back(node0x42800630);
dag->setRoot(node0x42800630);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__:
    {
SDValue node0x428049a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42804a50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42804b00 = dag->getSetCC(dl, MVT::i32, node0x428049a0, node0x42804a50, ISD::SETULT);
SDValue node0x42803800 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42804b00, SDValue());
roots.reserve(1);
roots.push_back(node0x42803800);
dag->setRoot(node0x42803800);
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
SDValue node0x4280ced0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x4280b080 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4280ced0, SDValue());
roots.reserve(1);
roots.push_back(node0x4280b080);
dag->setRoot(node0x4280b080);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__regs__regs__reg0__:
    {
SDValue node0x4280ffd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4280e0b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4280ffd0, SDValue());
roots.reserve(1);
roots.push_back(node0x4280e0b0);
dag->setRoot(node0x4280e0b0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__regs__regs__regs__:
    {
SDValue node0x42811350 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42811400 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42811540 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x42811350, node0x42811400);
SDValue node0x42810160 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42811540, SDValue());
roots.reserve(1);
roots.push_back(node0x42810160);
dag->setRoot(node0x42810160);
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
SDValue node0x424d1d80 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x424cff30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x424d1d80, SDValue());
roots.reserve(1);
roots.push_back(node0x424cff30);
dag->setRoot(node0x424cff30);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__regs__regs__reg0__:
    {
SDValue node0x424d4e80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x424d2f60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x424d4e80, SDValue());
roots.reserve(1);
roots.push_back(node0x424d2f60);
dag->setRoot(node0x424d2f60);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__regs__regs__regs__:
    {
SDValue node0x424d6200 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x424d62b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x424d63f0 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x424d6200, node0x424d62b0);
SDValue node0x424d5010 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x424d63f0, SDValue());
roots.reserve(1);
roots.push_back(node0x424d5010);
dag->setRoot(node0x424d5010);
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
SDValue node0x424de730 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x424dc8e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x424de730, SDValue());
roots.reserve(1);
roots.push_back(node0x424dc8e0);
dag->setRoot(node0x424dc8e0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__regs__reg0__regs__:
    {
SDValue node0x424df720 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x424df920 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x424df9d0 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x424df720, node0x424df920);
SDValue node0x424de920 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x424df9d0, SDValue());
roots.reserve(1);
roots.push_back(node0x424de920);
dag->setRoot(node0x424de920);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__regs__regs__reg0__:
    {
SDValue node0x424e1a40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x424dfbe0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x424e1a40, SDValue());
roots.reserve(1);
roots.push_back(node0x424dfbe0);
dag->setRoot(node0x424dfbe0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__regs__regs__regs__:
    {
SDValue node0x424e2d20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x424e2dd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x424e2e80 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x424e2d20, node0x424e2dd0);
SDValue node0x424e1bd0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x424e2e80, SDValue());
roots.reserve(1);
roots.push_back(node0x424e1bd0);
dag->setRoot(node0x424e1bd0);
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
SDValue node0x424eb190 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x424e9340 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x424eb190, SDValue());
roots.reserve(1);
roots.push_back(node0x424e9340);
dag->setRoot(node0x424e9340);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__regs__reg0__regs__:
    {
SDValue node0x424ec380 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x424eb380 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x424ec380, SDValue());
roots.reserve(1);
roots.push_back(node0x424eb380);
dag->setRoot(node0x424eb380);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__regs__regs__reg0__:
    {
SDValue node0x424ee3e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x424ec510 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x424ee3e0, SDValue());
roots.reserve(1);
roots.push_back(node0x424ec510);
dag->setRoot(node0x424ec510);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__regs__regs__regs__:
    {
SDValue node0x424ef6c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x424ef770 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x424ef820 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x424ef6c0, node0x424ef770);
SDValue node0x424ee570 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x424ef820, SDValue());
roots.reserve(1);
roots.push_back(node0x424ee570);
dag->setRoot(node0x424ee570);
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
SDValue node0x42619db0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4260ebc0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x42619db0, mpi, MVT::i8, 1);
SDValue node0x42619130 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4260ebc0, SDValue());
roots.reserve(1);
roots.push_back(node0x42619130);
dag->setRoot(node0x42619130);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__:
    {
SDValue node0x4261b0d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4261b180 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4261b220 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x4261b0d0, node0x4261b180);
SDValue node0x42590a00 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x4261b220, mpi, MVT::i8, 1);
SDValue node0x42618ff0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42590a00, SDValue());
roots.reserve(1);
roots.push_back(node0x42618ff0);
dag->setRoot(node0x42618ff0);
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
SDValue node0x4262b920 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426215f0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x4262b920, mpi, MVT::i8, 1);
SDValue node0x4262aca0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x426215f0, SDValue());
roots.reserve(1);
roots.push_back(node0x4262aca0);
dag->setRoot(node0x4262aca0);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__:
    {
SDValue node0x4262cc40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4262ccf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4262cd90 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x4262cc40, node0x4262ccf0);
SDValue node0x42620380 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x4262cd90, mpi, MVT::i8, 1);
SDValue node0x4262ab60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42620380, SDValue());
roots.reserve(1);
roots.push_back(node0x4262ab60);
dag->setRoot(node0x4262ab60);
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
SDValue node0x4263d490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42633160 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x4263d490, mpi, MVT::i16, 1);
SDValue node0x4263c810 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42633160, SDValue());
roots.reserve(1);
roots.push_back(node0x4263c810);
dag->setRoot(node0x4263c810);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__:
    {
SDValue node0x4263e7b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4263e860 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4263e900 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x4263e7b0, node0x4263e860);
SDValue node0x42631ef0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x4263e900, mpi, MVT::i16, 1);
SDValue node0x4263c6d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42631ef0, SDValue());
roots.reserve(1);
roots.push_back(node0x4263c6d0);
dag->setRoot(node0x4263c6d0);
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
SDValue node0x4264f440 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42644cd0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x4264f440, mpi, MVT::i16, 1);
SDValue node0x4264e7c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42644cd0, SDValue());
roots.reserve(1);
roots.push_back(node0x4264e7c0);
dag->setRoot(node0x4264e7c0);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__:
    {
SDValue node0x42650760 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42650810 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x426508b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x42650760, node0x42650810);
SDValue node0x42643a60 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x426508b0, mpi, MVT::i16, 1);
SDValue node0x4264e680 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42643a60, SDValue());
roots.reserve(1);
roots.push_back(node0x4264e680);
dag->setRoot(node0x4264e680);
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
SDValue node0x42660ca0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42660d40 = dag->getLoad(MVT::i32, dl, entry, node0x42660ca0, mpi, 1);
SDValue node0x42660070 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42660d40, SDValue());
roots.reserve(1);
roots.push_back(node0x42660070);
dag->setRoot(node0x42660070);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__:
    {
SDValue node0x42661f60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42662010 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x426620b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x42661f60, node0x42662010);
SDValue node0x42662140 = dag->getLoad(MVT::i32, dl, entry, node0x426620b0, mpi, 1);
SDValue node0x4265ff80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42662140, SDValue());
roots.reserve(1);
roots.push_back(node0x4265ff80);
dag->setRoot(node0x4265ff80);
    }
    break;
  case Codasip::i_lui__opc_lui__regs__imm20_s12__:
    {
SDValue node0x4267d9a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4267d570 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4267d9a0, SDValue());
roots.reserve(1);
roots.push_back(node0x4267d570);
dag->setRoot(node0x4267d570);
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
SDValue node0x42689400 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x426893b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42689400, SDValue());
roots.reserve(1);
roots.push_back(node0x426893b0);
dag->setRoot(node0x426893b0);
    }
    break;
  case Codasip::i_neg_alias__regs__regs__:
    {
SDValue node0x4268a290 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x4268a490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4268a540 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x4268a290, node0x4268a490);
SDValue node0x4268a240 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4268a540, SDValue());
roots.reserve(1);
roots.push_back(node0x4268a240);
dag->setRoot(node0x4268a240);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__reg0__:
    {
SDValue node0x426b5550 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x426b57f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426b5890 = dag->getStore(entry, dl, node0x426b5550, node0x426b57f0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426b5890);
dag->setRoot(node0x426b5890);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__:
    {
SDValue node0x426b6520 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x426b6860 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426b6910 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426b69b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426b6860, node0x426b6910);
SDValue node0x426b6a40 = dag->getStore(entry, dl, node0x426b6520, node0x426b69b0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426b6a40);
dag->setRoot(node0x426b6a40);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_simple__reg0__:
    {
SDValue node0x426c1850 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426c1900 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4274e510 = dag->getTruncStore(entry, dl, node0x426c1850, node0x426c1900, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x4274e510);
dag->setRoot(node0x4274e510);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_simple__regs__:
    {
SDValue node0x426c2bd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426c2c80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426c2d30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x426c2e80 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426c2c80, node0x426c2d30);
SDValue node0x426c1a50 = dag->getTruncStore(entry, dl, node0x426c2bd0, node0x426c2e80, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x426c1a50);
dag->setRoot(node0x426c1a50);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__:
    {
SDValue node0x426c8330 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x426c85d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426c8670 = dag->getStore(entry, dl, node0x426c8330, node0x426c85d0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426c8670);
dag->setRoot(node0x426c8670);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__:
    {
SDValue node0x426c94f0 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x426c9830 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426c98e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426c9980 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426c9830, node0x426c98e0);
SDValue node0x426c9a10 = dag->getStore(entry, dl, node0x426c94f0, node0x426c9980, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426c9a10);
dag->setRoot(node0x426c9a10);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_simple__reg0__:
    {
SDValue node0x426d4820 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426d48d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4274ea70 = dag->getTruncStore(entry, dl, node0x426d4820, node0x426d48d0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x4274ea70);
dag->setRoot(node0x4274ea70);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_simple__regs__:
    {
SDValue node0x426d5ba0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426d5c50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426d5d00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x426d5e50 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426d5c50, node0x426d5d00);
SDValue node0x426d4a20 = dag->getTruncStore(entry, dl, node0x426d5ba0, node0x426d5e50, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x426d4a20);
dag->setRoot(node0x426d4a20);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_simple__reg0__:
    {
SDValue node0x426db080 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x426db280 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426db320 = dag->getStore(entry, dl, node0x426db080, node0x426db280, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426db320);
dag->setRoot(node0x426db320);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_simple__regs__:
    {
SDValue node0x426dc1a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x426dc440 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426dc4f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426dc590 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426dc440, node0x426dc4f0);
SDValue node0x426dc620 = dag->getStore(entry, dl, node0x426dc1a0, node0x426dc590, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426dc620);
dag->setRoot(node0x426dc620);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__reg0__:
    {
SDValue node0x426e7120 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426e71d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426e7270 = dag->getStore(entry, dl, node0x426e7120, node0x426e71d0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426e7270);
dag->setRoot(node0x426e7270);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__:
    {
SDValue node0x426e8440 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426e84f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426e85a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x426e8640 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426e84f0, node0x426e85a0);
SDValue node0x426e86d0 = dag->getStore(entry, dl, node0x426e8440, node0x426e8640, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426e86d0);
dag->setRoot(node0x426e86d0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:
    {
SDValue node0x42718890 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x42718670 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42718890, SDValue());
roots.reserve(1);
roots.push_back(node0x42718670);
dag->setRoot(node0x42718670);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:
    {
SDValue node0x427183f0 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x42717b50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427183f0, SDValue());
roots.reserve(1);
roots.push_back(node0x42717b50);
dag->setRoot(node0x42717b50);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:
    {
SDValue node0x42719790 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x42718e20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42719790, SDValue());
roots.reserve(1);
roots.push_back(node0x42718e20);
dag->setRoot(node0x42718e20);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:
    {
SDValue node0x42718ff0 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x42718720 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42718ff0, SDValue());
roots.reserve(1);
roots.push_back(node0x42718720);
dag->setRoot(node0x42718720);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__regs__regs__regs__SHIFT_MASK_CLONE_:
    {
SDValue node0x425ff1d0 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x4264e470 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x425fdd20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x426d4970 = dag->getNode(ISD::AND, dl, MVT::i32, node0x425fdd20, node0x425ff1d0);
SDValue node0x426c2dd0 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x4264e470, node0x426d4970);
SDValue node0x4274cd80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x426c2dd0, SDValue());
roots.reserve(1);
roots.push_back(node0x4274cd80);
dag->setRoot(node0x4274cd80);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__regs__regs__swappedCmpClone0__:
    {
SDValue node0x42717ba0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42717cd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4271a030 = dag->getSetCC(dl, MVT::i32, node0x42717ba0, node0x42717cd0, ISD::SETGT);
SDValue node0x42719cc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4271a030, SDValue());
roots.reserve(1);
roots.push_back(node0x42719cc0);
dag->setRoot(node0x42719cc0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__swappedCmpClone0__:
    {
SDValue node0x4271a8b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4271aa00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4271aab0 = dag->getSetCC(dl, MVT::i32, node0x4271a8b0, node0x4271aa00, ISD::SETUGT);
SDValue node0x427195c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4271aab0, SDValue());
roots.reserve(1);
roots.push_back(node0x427195c0);
dag->setRoot(node0x427195c0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__regs__regs__regs__SHIFT_MASK_CLONE_:
    {
SDValue node0x427eafb0 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x425f4010 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x425f2fe0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x427eb330 = dag->getNode(ISD::AND, dl, MVT::i32, node0x425f2fe0, node0x427eafb0);
SDValue node0x426c19a0 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x425f4010, node0x427eb330);
SDValue node0x427757a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x426c19a0, SDValue());
roots.reserve(1);
roots.push_back(node0x427757a0);
dag->setRoot(node0x427757a0);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__regs__regs__regs__SHIFT_MASK_CLONE_:
    {
SDValue node0x42811130 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x42656c80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42655a10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x428114b0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x42655a10, node0x42811130);
SDValue node0x426b0520 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x42656c80, node0x428114b0);
SDValue node0x427760c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x426b0520, SDValue());
roots.reserve(1);
roots.push_back(node0x427760c0);
dag->setRoot(node0x427760c0);
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
SDValue node0x426056d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42619e50 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x426056d0, mpi, MVT::i8, 1);
SDValue node0x42844f00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42619e50, SDValue());
roots.reserve(1);
roots.push_back(node0x42844f00);
dag->setRoot(node0x42844f00);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x4261b2b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4261ad90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4261b380 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x4261b2b0, node0x4261ad90);
SDValue node0x42571790 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x4261b380, mpi, MVT::i8, 1);
SDValue node0x4256f210 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42571790, SDValue());
roots.reserve(1);
roots.push_back(node0x4256f210);
dag->setRoot(node0x4256f210);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x4272a030 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42722d90 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x4272a030, mpi, MVT::i8, 1);
SDValue node0x42725d30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42722d90, SDValue());
roots.reserve(1);
roots.push_back(node0x42725d30);
dag->setRoot(node0x42725d30);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x4272a0e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427222d0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x4272a0e0, mpi, MVT::i8, 1);
SDValue node0x4271a660 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427222d0, SDValue());
roots.reserve(1);
roots.push_back(node0x4271a660);
dag->setRoot(node0x4271a660);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__AEXT_CLONE_:
    {
SDValue node0x426200e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4262b9c0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x426200e0, mpi, MVT::i8, 1);
SDValue node0x4280d0c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4262b9c0, SDValue());
roots.reserve(1);
roots.push_back(node0x4280d0c0);
dag->setRoot(node0x4280d0c0);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x4262ce20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4262c900 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4262cef0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x4262ce20, node0x4262c900);
SDValue node0x4256f410 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x4262cef0, mpi, MVT::i8, 1);
SDValue node0x42749ba0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4256f410, SDValue());
roots.reserve(1);
roots.push_back(node0x42749ba0);
dag->setRoot(node0x42749ba0);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x4272a9a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427217a0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x4272a9a0, mpi, MVT::i8, 1);
SDValue node0x42726830 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427217a0, SDValue());
roots.reserve(1);
roots.push_back(node0x42726830);
dag->setRoot(node0x42726830);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x4272aa50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42720d20 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x4272aa50, mpi, MVT::i8, 1);
SDValue node0x4271b090 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42720d20, SDValue());
roots.reserve(1);
roots.push_back(node0x4271b090);
dag->setRoot(node0x4271b090);
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
SDValue node0x42631c50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4263d530 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x42631c50, mpi, MVT::i16, 1);
SDValue node0x4274a7e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4263d530, SDValue());
roots.reserve(1);
roots.push_back(node0x4274a7e0);
dag->setRoot(node0x4274a7e0);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x4263e990 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4263e470 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4263ea60 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x4263e990, node0x4263e470);
SDValue node0x425633a0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x4263ea60, mpi, MVT::i16, 1);
SDValue node0x4274b2f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x425633a0, SDValue());
roots.reserve(1);
roots.push_back(node0x4274b2f0);
dag->setRoot(node0x4274b2f0);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x4272bc70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4272b400 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x4272bc70, mpi, MVT::i16, 1);
SDValue node0x4272a5e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4272b400, SDValue());
roots.reserve(1);
roots.push_back(node0x4272a5e0);
dag->setRoot(node0x4272a5e0);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x4272bd20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42720c70 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x4272bd20, mpi, MVT::i16, 1);
SDValue node0x42776490 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42720c70, SDValue());
roots.reserve(1);
roots.push_back(node0x42776490);
dag->setRoot(node0x42776490);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__AEXT_CLONE_:
    {
SDValue node0x426437c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4264f4e0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x426437c0, mpi, MVT::i16, 1);
SDValue node0x4274bf00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4264f4e0, SDValue());
roots.reserve(1);
roots.push_back(node0x4274bf00);
dag->setRoot(node0x4274bf00);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x42650940 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42650420 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42650a10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x42650940, node0x42650420);
SDValue node0x42561020 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x42650a10, mpi, MVT::i16, 1);
SDValue node0x4274ca10 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42561020, SDValue());
roots.reserve(1);
roots.push_back(node0x4274ca10);
dag->setRoot(node0x4274ca10);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x4272c5e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42720080 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x4272c5e0, mpi, MVT::i16, 1);
SDValue node0x42728990 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42720080, SDValue());
roots.reserve(1);
roots.push_back(node0x42728990);
dag->setRoot(node0x42728990);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x4272c690 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42733bb0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x4272c690, mpi, MVT::i16, 1);
SDValue node0x42723d50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42733bb0, SDValue());
roots.reserve(1);
roots.push_back(node0x42723d50);
dag->setRoot(node0x42723d50);
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
SDValue node0x4272d8b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4272d960 = dag->getLoad(MVT::i32, dl, entry, node0x4272d8b0, mpi, 1);
SDValue node0x4272c220 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4272d960, SDValue());
roots.reserve(1);
roots.push_back(node0x4272c220);
dag->setRoot(node0x4272c220);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_:
    {
SDValue node0x4272dfc0 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x4272e1e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4272df60 = dag->getStore(entry, dl, node0x4272dfc0, node0x4272e1e0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x4272df60);
dag->setRoot(node0x4272df60);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x4272e9d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4272ea80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42723f50 = dag->getTruncStore(entry, dl, node0x4272e9d0, node0x4272ea80, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x42723f50);
dag->setRoot(node0x42723f50);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_:
    {
SDValue node0x4272f120 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x4272f340 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4272f0c0 = dag->getStore(entry, dl, node0x4272f120, node0x4272f340, mpi, 1);
roots.reserve(1);
roots.push_back(node0x4272f0c0);
dag->setRoot(node0x4272f0c0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x4272fba0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4272fc50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427269f0 = dag->getTruncStore(entry, dl, node0x4272fba0, node0x4272fc50, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x427269f0);
dag->setRoot(node0x427269f0);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_simple__regs__immspec_1_:
    {
SDValue node0x427302f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x42730470 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x42730290 = dag->getStore(entry, dl, node0x427302f0, node0x42730470, mpi, 1);
roots.reserve(1);
roots.push_back(node0x42730290);
dag->setRoot(node0x42730290);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x42730cd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x42730d80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42730b10 = dag->getStore(entry, dl, node0x42730cd0, node0x42730d80, mpi, 1);
roots.reserve(1);
roots.push_back(node0x42730b10);
dag->setRoot(node0x42730b10);
    }
    break;
  case Codasip::i_jal__opc_jal__reg0__rel_addr20__:
    {
SDValue node0x425ec6f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x425ec8e0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x425ec6f0);
roots.reserve(1);
roots.push_back(node0x425ec8e0);
dag->setRoot(node0x425ec8e0);
    }
    break;
  case Codasip::i_jal__opc_jal__regs__rel_addr20__:
    {
SDValue node0x425ed6a0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x425ebd20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x425ed6a0, SDValue());
SDValue node0x425edab0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x425edca0 = dag->getNode(ISD::BR, dl, MVT::Other, node0x425ebd20, node0x425edab0);
roots.reserve(2);
roots.push_back(node0x425ebd20);
roots.push_back(node0x425edca0);
dag->setRoot(node0x425edca0);
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
SDValue node0x42822630 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x42551180 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42822630, SDValue());
roots.reserve(1);
roots.push_back(node0x42551180);
dag->setRoot(node0x42551180);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__:
    if (lowlevel) {
SDValue node0x425563c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x425565e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42556690 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42556740 = dag->getSetCC(dl, MVT::iAny, node0x425565e0, node0x425563c0, ISD::SETEQ);
SDValue node0x4254efc0 = dag->getNode(ISD::SDIV, dl, MVT::i32, node0x42556690, node0x425565e0);
SDValue node0x42556830 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x42556740, node0x425563c0, node0x4254efc0);
SDValue node0x425562a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42556830, SDValue());
roots.reserve(1);
roots.push_back(node0x425562a0);
dag->setRoot(node0x425562a0);
    } else     {
SDValue node0x425563c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x425565e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42556690 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42556740 = dag->getSetCC(dl, MVT::i32, node0x425565e0, node0x425563c0, ISD::SETEQ);
SDValue node0x4254efc0 = dag->getNode(ISD::SDIV, dl, MVT::i32, node0x42556690, node0x425565e0);
SDValue node0x42556830 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x42556740, node0x425563c0, node0x4254efc0);
SDValue node0x425562a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42556830, SDValue());
roots.reserve(1);
roots.push_back(node0x425562a0);
dag->setRoot(node0x425562a0);
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
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__:
    {
SDValue node0x4257ca20 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x4257c980 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4257ca20, SDValue());
roots.reserve(1);
roots.push_back(node0x4257c980);
dag->setRoot(node0x4257c980);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__regs__:
    {
SDValue node0x4257ddf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4257db50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4257ddf0, SDValue());
roots.reserve(1);
roots.push_back(node0x4257db50);
dag->setRoot(node0x4257db50);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0__:
    {
SDValue node0x42580210 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4257ff70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42580210, SDValue());
roots.reserve(1);
roots.push_back(node0x4257ff70);
dag->setRoot(node0x4257ff70);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__regs__regs__:
    if (lowlevel) {
SDValue node0x42581550 = dag->getConstant(-32768LL, dl, MVT::i32);
SDValue node0x425815f0 = dag->getConstant(32767LL, dl, MVT::i32);
SDValue node0x42581690 = dag->getConstant(65535LL, dl, MVT::i32);
SDValue node0x42581730 = dag->getConstant(16LL, dl, MVT::i32);
SDValue node0x42581950 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42581a00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4257a7c0 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x42581950, node0x42581730);
SDValue node0x42581ad0 = dag->getNode(ISD::SIGN_EXTEND_INREG, dl, MVT::i32, node0x42581950);
SDValue node0x42581b90 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x42581a00, node0x42581730);
SDValue node0x42581c50 = dag->getNode(ISD::SIGN_EXTEND_INREG, dl, MVT::i32, node0x42581a00);
SDValue node0x42581d10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x4257a7c0, node0x42581b90);
SDValue node0x42581dd0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x42581ad0, node0x42581c50);
SDValue node0x42581e90 = dag->getSetCC(dl, MVT::iAny, node0x42581d10, node0x42581550, ISD::SETGT);
SDValue node0x42581f60 = dag->getSetCC(dl, MVT::iAny, node0x42581dd0, node0x42581550, ISD::SETGT);
SDValue node0x42582030 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x42581e90, node0x42581d10, node0x42581550);
SDValue node0x425820c0 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x42581f60, node0x42581dd0, node0x42581550);
SDValue node0x42582150 = dag->getSetCC(dl, MVT::iAny, node0x42582030, node0x425815f0, ISD::SETLT);
SDValue node0x42582220 = dag->getSetCC(dl, MVT::iAny, node0x425820c0, node0x425815f0, ISD::SETLT);
SDValue node0x425822f0 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x42582150, node0x42582030, node0x425815f0);
SDValue node0x42582380 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x42582220, node0x425820c0, node0x425815f0);
SDValue node0x42582410 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x425822f0, node0x42581730);
SDValue node0x425824d0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x42582380, node0x42581690);
SDValue node0x42582590 = dag->getNode(ISD::OR, dl, MVT::i32, node0x425824d0, node0x42582410);
SDValue node0x42581390 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42582590, SDValue());
roots.reserve(1);
roots.push_back(node0x42581390);
dag->setRoot(node0x42581390);
    } else     {
SDValue node0x42581550 = dag->getConstant(-32768LL, dl, MVT::i32);
SDValue node0x425815f0 = dag->getConstant(32767LL, dl, MVT::i32);
SDValue node0x42581690 = dag->getConstant(65535LL, dl, MVT::i32);
SDValue node0x42581730 = dag->getConstant(16LL, dl, MVT::i32);
SDValue node0x42581950 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42581a00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4257a7c0 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x42581950, node0x42581730);
SDValue node0x42581ad0 = dag->getNode(ISD::SIGN_EXTEND_INREG, dl, MVT::i32, node0x42581950);
SDValue node0x42581b90 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x42581a00, node0x42581730);
SDValue node0x42581c50 = dag->getNode(ISD::SIGN_EXTEND_INREG, dl, MVT::i32, node0x42581a00);
SDValue node0x42581d10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x4257a7c0, node0x42581b90);
SDValue node0x42581dd0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x42581ad0, node0x42581c50);
SDValue node0x42581e90 = dag->getSetCC(dl, MVT::i32, node0x42581d10, node0x42581550, ISD::SETGT);
SDValue node0x42581f60 = dag->getSetCC(dl, MVT::i32, node0x42581dd0, node0x42581550, ISD::SETGT);
SDValue node0x42582030 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x42581e90, node0x42581d10, node0x42581550);
SDValue node0x425820c0 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x42581f60, node0x42581dd0, node0x42581550);
SDValue node0x42582150 = dag->getSetCC(dl, MVT::i32, node0x42582030, node0x425815f0, ISD::SETLT);
SDValue node0x42582220 = dag->getSetCC(dl, MVT::i32, node0x425820c0, node0x425815f0, ISD::SETLT);
SDValue node0x425822f0 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x42582150, node0x42582030, node0x425815f0);
SDValue node0x42582380 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x42582220, node0x425820c0, node0x425815f0);
SDValue node0x42582410 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x425822f0, node0x42581730);
SDValue node0x425824d0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x42582380, node0x42581690);
SDValue node0x42582590 = dag->getNode(ISD::OR, dl, MVT::i32, node0x425824d0, node0x42582410);
SDValue node0x42581390 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42582590, SDValue());
roots.reserve(1);
roots.push_back(node0x42581390);
dag->setRoot(node0x42581390);
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
SDValue node0x4258b9d0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x4258b930 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4258b9d0, SDValue());
roots.reserve(1);
roots.push_back(node0x4258b930);
dag->setRoot(node0x4258b930);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0__:
    if (lowlevel) {
SDValue node0x4258eef0 = dag->getConstant(-32768LL, dl, MVT::i32);
SDValue node0x4258ef90 = dag->getConstant(32767LL, dl, MVT::i32);
SDValue node0x4258f1b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4258f260 = dag->getSetCC(dl, MVT::iAny, node0x4258f1b0, node0x4258eef0, ISD::SETGT);
SDValue node0x42589770 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x4258f260, node0x4258f1b0, node0x4258eef0);
SDValue node0x4258f320 = dag->getSetCC(dl, MVT::iAny, node0x42589770, node0x4258ef90, ISD::SETLT);
SDValue node0x4258f3f0 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x4258f320, node0x42589770, node0x4258ef90);
SDValue node0x4258edd0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4258f3f0, SDValue());
roots.reserve(1);
roots.push_back(node0x4258edd0);
dag->setRoot(node0x4258edd0);
    } else     {
SDValue node0x4258eef0 = dag->getConstant(-32768LL, dl, MVT::i32);
SDValue node0x4258ef90 = dag->getConstant(32767LL, dl, MVT::i32);
SDValue node0x4258f1b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4258f260 = dag->getSetCC(dl, MVT::i32, node0x4258f1b0, node0x4258eef0, ISD::SETGT);
SDValue node0x42589770 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x4258f260, node0x4258f1b0, node0x4258eef0);
SDValue node0x4258f320 = dag->getSetCC(dl, MVT::i32, node0x42589770, node0x4258ef90, ISD::SETLT);
SDValue node0x4258f3f0 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x4258f320, node0x42589770, node0x4258ef90);
SDValue node0x4258edd0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4258f3f0, SDValue());
roots.reserve(1);
roots.push_back(node0x4258edd0);
dag->setRoot(node0x4258edd0);
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
SDValue node0x4269f270 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4269e310 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4269f270, SDValue());
roots.reserve(1);
roots.push_back(node0x4269e310);
dag->setRoot(node0x4269e310);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_simple__:
    {
SDValue node0x426a1830 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426a18e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x426a1980 = dag->getNode(ISD::OR, dl, MVT::i32, node0x426a1830, node0x426a18e0);
SDValue node0x426a05f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x426a1980, SDValue());
roots.reserve(1);
roots.push_back(node0x426a05f0);
dag->setRoot(node0x426a05f0);
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
SDValue node0x42717160 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42716e70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42717160, SDValue());
roots.reserve(1);
roots.push_back(node0x42716e70);
dag->setRoot(node0x42716e70);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__:
    {
SDValue node0x425646e0 = dag->getConstant(8LL, dl, MVT::i32);
SDValue node0x42564900 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x425649b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42564a60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(3), MVT::i32);
SDValue node0x4255d9e0 = dag->getNode(ISD::MUL, dl, MVT::i32, node0x42564900, node0x425649b0);
SDValue node0x42564b30 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x4255d9e0, node0x425646e0);
SDValue node0x42564bf0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x42564b30, node0x42564a60);
SDValue node0x42564520 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42564bf0, SDValue());
roots.reserve(1);
roots.push_back(node0x42564520);
dag->setRoot(node0x42564520);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:
    {
SDValue node0x42572a30 = dag->getConstant(16LL, dl, MVT::i32);
SDValue node0x42572b70 = dag->getConstant(8LL, dl, MVT::i32);
SDValue node0x42572d90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42572e40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42572ef0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(3), MVT::i32);
SDValue node0x42572fc0 = dag->getNode(ISD::SIGN_EXTEND_INREG, dl, MVT::i32, node0x42572d90);
SDValue node0x4256bdd0 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x42572d90, node0x42572a30);
SDValue node0x425730a0 = dag->getNode(ISD::SIGN_EXTEND_INREG, dl, MVT::i32, node0x42572e40);
SDValue node0x42573160 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x42572e40, node0x42572a30);
SDValue node0x42573220 = dag->getNode(ISD::MUL, dl, MVT::i32, node0x42572fc0, node0x425730a0);
SDValue node0x425732e0 = dag->getNode(ISD::MUL, dl, MVT::i32, node0x4256bdd0, node0x42573160);
SDValue node0x425733a0 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x42573220, node0x42572b70);
SDValue node0x42573460 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x425732e0, node0x42572b70);
SDValue node0x42573520 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x42573460, node0x42572ef0);
SDValue node0x425735e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x42573520, node0x425733a0);
SDValue node0x42572910 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x425735e0, SDValue());
roots.reserve(1);
roots.push_back(node0x42572910);
dag->setRoot(node0x42572910);
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
SDValue node0x422debe0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x422dec60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x422df600 = dag->getTruncStore(entry, dl, node0x422debe0, node0x422dec60, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x422df600);
dag->setRoot(node0x422df600);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__i32_TRUNC_CLONE_:
    {
SDValue node0x422deae0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x422de810 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x422deb60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x422d9980 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x422de810, node0x422deb60);
SDValue node0x422dff80 = dag->getTruncStore(entry, dl, node0x422deae0, node0x422d9980, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x422dff80);
dag->setRoot(node0x422dff80);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_:
    {
SDValue node0x422dece0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x422e05a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x422e0890 = dag->getTruncStore(entry, dl, node0x422dece0, node0x422e05a0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x422e0890);
dag->setRoot(node0x422e0890);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__i32_TRUNC_CLONE_:
    {
SDValue node0x422e0eb0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x422de930 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x422e0f30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x422dab00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x422de930, node0x422e0f30);
SDValue node0x422e1310 = dag->getTruncStore(entry, dl, node0x422e0eb0, node0x422dab00, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x422e1310);
dag->setRoot(node0x422e1310);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_:
    {
SDValue node0x422e16a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x4255fda0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x422e1890 = dag->getTruncStore(entry, dl, node0x422e16a0, node0x4255fda0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x422e1890);
dag->setRoot(node0x422e1890);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_:
    {
SDValue node0x422e1c80 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x4256e190 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x422e1e60 = dag->getTruncStore(entry, dl, node0x422e1c80, node0x4256e190, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x422e1e60);
dag->setRoot(node0x422e1e60);
    }
    break;
  case Codasip::i_jump_reg_alias__regs___RET_EMUL_:
    {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__0_REG_EMUL_:
    {
SDValue node0x422e2150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x422de8a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x422e3650 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x422e8720 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x422de8a0, node0x422e3650);
SDValue node0x422de6a0 = dag->getStore(entry, dl, node0x422e2150, node0x422e8720, mpi, 1);
roots.reserve(1);
roots.push_back(node0x422de6a0);
dag->setRoot(node0x422de6a0);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__1_BIGIMM_EMUL_:
    {
SDValue node0x422e2730 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x422e3400 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x422e77b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x422e7c40 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x422e3400, node0x422e77b0);
SDValue node0x422e41a0 = dag->getStore(entry, dl, node0x422e2730, node0x422e7c40, mpi, 1);
roots.reserve(1);
roots.push_back(node0x422e41a0);
dag->setRoot(node0x422e41a0);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__2_REG_EMUL_:
    {
SDValue node0x422e8cc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x422e84a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x422e8d50 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x422e8cc0, node0x422e84a0);
SDValue node0x422e6700 = dag->getLoad(MVT::i32, dl, entry, node0x422e8d50, mpi, 1);
SDValue node0x422e9590 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x422e6700, SDValue());
roots.reserve(1);
roots.push_back(node0x422e9590);
dag->setRoot(node0x422e9590);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__3_BIGIMM_EMUL_:
    {
SDValue node0x422e6870 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x422ea990 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x422e7540 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x422e6870, node0x422ea990);
SDValue node0x422e7e90 = dag->getLoad(MVT::i32, dl, entry, node0x422e7540, mpi, 1);
SDValue node0x422eaa40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x422e7e90, SDValue());
roots.reserve(1);
roots.push_back(node0x422eaa40);
dag->setRoot(node0x422eaa40);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__4_BIGIMM_EMUL_:
    {
SDValue node0x422e7f90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x422e61d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x422eb3c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x422e7bd0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x422e61d0, node0x422eb3c0);
SDValue node0x422e22a0 = dag->getStore(entry, dl, node0x422e7f90, node0x422e7bd0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x422e22a0);
dag->setRoot(node0x422e22a0);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__5_BIGIMM_EMUL_:
    {
SDValue node0x422e8950 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x422ebf40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x422e8c50 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x422e8950, node0x422ebf40);
SDValue node0x422e6e90 = dag->getLoad(MVT::i32, dl, entry, node0x422e8c50, mpi, 1);
SDValue node0x422ebfc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x422e6e90, SDValue());
roots.reserve(1);
roots.push_back(node0x422ebfc0);
dag->setRoot(node0x422ebfc0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__6_BIGIMM_EMUL_:
    {
SDValue node0x422e8530 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x422eca60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x422e7b60 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x422e8530, node0x422eca60);
SDValue node0x422ecae0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x422e7b60, SDValue());
roots.reserve(1);
roots.push_back(node0x422ecae0);
dag->setRoot(node0x422ecae0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__7_BIGIMM_EMUL_:
    {
SDValue node0x422e6260 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x422ed620 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x422e73d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x422e6260, node0x422ed620);
SDValue node0x422ed6a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x422e73d0, SDValue());
roots.reserve(1);
roots.push_back(node0x422ed6a0);
dag->setRoot(node0x422ed6a0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__8_BIGIMM_EMUL_:
    {
SDValue node0x422ed050 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x422ee1d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x422e6440 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x422ed050, node0x422ee1d0);
SDValue node0x422ee250 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x422e6440, SDValue());
roots.reserve(1);
roots.push_back(node0x422ee250);
dag->setRoot(node0x422ee250);
    }
    break;
  case Codasip::c_addi_lo__opc_addi__regs__regs__:
    {
SDValue node0x4228eab0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427912d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4283df90 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x4228eab0, node0x427912d0);
SDValue node0x4283df40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4283df90, SDValue());
roots.reserve(1);
roots.push_back(node0x4283df40);
dag->setRoot(node0x4283df40);
    }
    break;
  case Codasip::c_lui_hi__opc_lui__regs__:
    {
SDValue node0x4227ff20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4288b3f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4227ff20, SDValue());
roots.reserve(1);
roots.push_back(node0x4288b3f0);
dag->setRoot(node0x4288b3f0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_lo__:
    {
SDValue node0x4281c6c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4281c3a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4281c6c0, SDValue());
roots.reserve(1);
roots.push_back(node0x4281c3a0);
dag->setRoot(node0x4281c3a0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x42825320 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x428ab230 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42825320, SDValue());
roots.reserve(1);
roots.push_back(node0x428ab230);
dag->setRoot(node0x428ab230);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_lo__:
    {
SDValue node0x42551a30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42828430 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x428284d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x42551a30, node0x42828430);
SDValue node0x42828050 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x428284d0, SDValue());
roots.reserve(1);
roots.push_back(node0x42828050);
dag->setRoot(node0x42828050);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x424cec80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42832340 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x428323c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x424cec80, node0x42832340);
SDValue node0x428286e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x428323c0, SDValue());
roots.reserve(1);
roots.push_back(node0x428286e0);
dag->setRoot(node0x428286e0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_lo__:
    {
SDValue node0x4249d750 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42794fa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42795040 = dag->getNode(ISD::AND, dl, MVT::i32, node0x4249d750, node0x42794fa0);
SDValue node0x42794bc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42795040, SDValue());
roots.reserve(1);
roots.push_back(node0x42794bc0);
dag->setRoot(node0x42794bc0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x42790ba0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42795ec0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42795f60 = dag->getNode(ISD::AND, dl, MVT::i32, node0x42790ba0, node0x42795ec0);
SDValue node0x42795250 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42795f60, SDValue());
roots.reserve(1);
roots.push_back(node0x42795250);
dag->setRoot(node0x42795250);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_lo__:
    {
SDValue node0x427a0350 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427a0030 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427a0350, SDValue());
roots.reserve(1);
roots.push_back(node0x427a0030);
dag->setRoot(node0x427a0030);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x427a0fd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427a0480 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427a0fd0, SDValue());
roots.reserve(1);
roots.push_back(node0x427a0480);
dag->setRoot(node0x427a0480);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_lo__:
    {
SDValue node0x427a3d00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427a4030 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x427a40d0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x427a3d00, node0x427a4030);
SDValue node0x427a3bc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427a40d0, SDValue());
roots.reserve(1);
roots.push_back(node0x427a3bc0);
dag->setRoot(node0x427a3bc0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x427a4cb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427a4fe0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x427a5080 = dag->getNode(ISD::OR, dl, MVT::i32, node0x427a4cb0, node0x427a4fe0);
SDValue node0x427a42e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427a5080, SDValue());
roots.reserve(1);
roots.push_back(node0x427a42e0);
dag->setRoot(node0x427a42e0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_lo__:
    {
SDValue node0x428509d0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x42850ab0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42850b50 = dag->getSetCC(dl, MVT::i32, node0x42850ab0, node0x428509d0, ISD::SETGT);
SDValue node0x42850790 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42850b50, SDValue());
roots.reserve(1);
roots.push_back(node0x42850790);
dag->setRoot(node0x42850790);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x428518c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x428519a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42851a40 = dag->getSetCC(dl, MVT::i32, node0x428519a0, node0x428518c0, ISD::SETGT);
SDValue node0x42850e20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42851a40, SDValue());
roots.reserve(1);
roots.push_back(node0x42850e20);
dag->setRoot(node0x42850e20);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_lo__:
    {
SDValue node0x42854a20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42854d50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42854df0 = dag->getSetCC(dl, MVT::i32, node0x42854a20, node0x42854d50, ISD::SETLT);
SDValue node0x428548e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42854df0, SDValue());
roots.reserve(1);
roots.push_back(node0x428548e0);
dag->setRoot(node0x428548e0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x42855ae0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42855e10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42855eb0 = dag->getSetCC(dl, MVT::i32, node0x42855ae0, node0x42855e10, ISD::SETLT);
SDValue node0x42855110 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42855eb0, SDValue());
roots.reserve(1);
roots.push_back(node0x42855110);
dag->setRoot(node0x42855110);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_lo__:
    {
SDValue node0x42860610 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x428606f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42860790 = dag->getSetCC(dl, MVT::i32, node0x428606f0, node0x42860610, ISD::SETNE);
SDValue node0x428603d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42860790, SDValue());
roots.reserve(1);
roots.push_back(node0x428603d0);
dag->setRoot(node0x428603d0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x42861500 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x428615e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42861680 = dag->getSetCC(dl, MVT::i32, node0x428615e0, node0x42861500, ISD::SETNE);
SDValue node0x42860a60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42861680, SDValue());
roots.reserve(1);
roots.push_back(node0x42860a60);
dag->setRoot(node0x42860a60);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_lo__:
    {
SDValue node0x42864660 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42864990 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42864a30 = dag->getSetCC(dl, MVT::i32, node0x42864660, node0x42864990, ISD::SETULT);
SDValue node0x42864520 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42864a30, SDValue());
roots.reserve(1);
roots.push_back(node0x42864520);
dag->setRoot(node0x42864520);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x42865720 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42865a50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42865af0 = dag->getSetCC(dl, MVT::i32, node0x42865720, node0x42865a50, ISD::SETULT);
SDValue node0x42864d50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42865af0, SDValue());
roots.reserve(1);
roots.push_back(node0x42864d50);
dag->setRoot(node0x42864d50);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_lo__:
    {
SDValue node0x42870330 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42870010 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42870330, SDValue());
roots.reserve(1);
roots.push_back(node0x42870010);
dag->setRoot(node0x42870010);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x42870fb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42870460 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42870fb0, SDValue());
roots.reserve(1);
roots.push_back(node0x42870460);
dag->setRoot(node0x42870460);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_lo__:
    {
SDValue node0x42873e20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42874150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x428741f0 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x42873e20, node0x42874150);
SDValue node0x42873ce0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x428741f0, SDValue());
roots.reserve(1);
roots.push_back(node0x42873ce0);
dag->setRoot(node0x42873ce0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x42874dd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42875100 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x428751a0 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x42874dd0, node0x42875100);
SDValue node0x42874400 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x428751a0, SDValue());
roots.reserve(1);
roots.push_back(node0x42874400);
dag->setRoot(node0x42874400);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_lo__:
    {
SDValue node0x425efbc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x425ef8c0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x425efbc0);
roots.reserve(1);
roots.push_back(node0x425ef8c0);
dag->setRoot(node0x425ef8c0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_pcrel_lo__:
    {
SDValue node0x425f0640 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x425f0370 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x425f0640);
roots.reserve(1);
roots.push_back(node0x425f0370);
dag->setRoot(node0x425f0370);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_lo__:
    {
SDValue node0x425f9d50 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x425f84a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x425f9d50, SDValue());
SDValue node0x425fa0c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x425f9d20 = dag->getNode(ISD::BR, dl, MVT::Other, node0x425f84a0, node0x425fa0c0);
roots.reserve(2);
roots.push_back(node0x425f84a0);
roots.push_back(node0x425f9d20);
dag->setRoot(node0x425f9d20);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x425faa60 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x425fa2a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x425faa60, SDValue());
SDValue node0x425fadd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x425faa30 = dag->getNode(ISD::BR, dl, MVT::Other, node0x425fa2a0, node0x425fadd0);
roots.reserve(2);
roots.push_back(node0x425fa2a0);
roots.push_back(node0x425faa30);
dag->setRoot(node0x425faa30);
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
SDValue node0x42614ef0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x425fefe0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x42614ef0, mpi, MVT::i8, 1);
SDValue node0x426142e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x425fefe0, SDValue());
roots.reserve(1);
roots.push_back(node0x426142e0);
dag->setRoot(node0x426142e0);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_lo__regs__:
    {
SDValue node0x426162d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42616600 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x426166a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426162d0, node0x42616600);
SDValue node0x42614f90 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x426166a0, mpi, MVT::i8, 1);
SDValue node0x42615240 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42614f90, SDValue());
roots.reserve(1);
roots.push_back(node0x42615240);
dag->setRoot(node0x42615240);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x426176b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42616730 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x426176b0, mpi, MVT::i8, 1);
SDValue node0x42616ad0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42616730, SDValue());
roots.reserve(1);
roots.push_back(node0x42616ad0);
dag->setRoot(node0x42616ad0);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x42618980 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42618cb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42618d50 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x42618980, node0x42618cb0);
SDValue node0x42617750 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x42618d50, mpi, MVT::i8, 1);
SDValue node0x426168f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42617750, SDValue());
roots.reserve(1);
roots.push_back(node0x426168f0);
dag->setRoot(node0x426168f0);
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
SDValue node0x42626990 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42618de0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x42626990, mpi, MVT::i8, 1);
SDValue node0x42625f00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42618de0, SDValue());
roots.reserve(1);
roots.push_back(node0x42625f00);
dag->setRoot(node0x42625f00);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_lo__regs__:
    {
SDValue node0x42627e40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42628170 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42628210 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x42627e40, node0x42628170);
SDValue node0x42626a30 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x42628210, mpi, MVT::i8, 1);
SDValue node0x42626ce0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42626a30, SDValue());
roots.reserve(1);
roots.push_back(node0x42626ce0);
dag->setRoot(node0x42626ce0);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x42629270 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426282a0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x42629270, mpi, MVT::i8, 1);
SDValue node0x426285f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x426282a0, SDValue());
roots.reserve(1);
roots.push_back(node0x426285f0);
dag->setRoot(node0x426285f0);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x4262a4f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4262a820 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4262a8c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x4262a4f0, node0x4262a820);
SDValue node0x42629310 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x4262a8c0, mpi, MVT::i8, 1);
SDValue node0x426284b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42629310, SDValue());
roots.reserve(1);
roots.push_back(node0x426284b0);
dag->setRoot(node0x426284b0);
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
SDValue node0x42638500 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4262a950 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x42638500, mpi, MVT::i16, 1);
SDValue node0x426378f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4262a950, SDValue());
roots.reserve(1);
roots.push_back(node0x426378f0);
dag->setRoot(node0x426378f0);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_lo__regs__:
    {
SDValue node0x426399b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42639ce0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x42639d80 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426399b0, node0x42639ce0);
SDValue node0x426385a0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x42639d80, mpi, MVT::i16, 1);
SDValue node0x42638850 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x426385a0, SDValue());
roots.reserve(1);
roots.push_back(node0x42638850);
dag->setRoot(node0x42638850);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x4263ad90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42639e10 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x4263ad90, mpi, MVT::i16, 1);
SDValue node0x4263a1b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42639e10, SDValue());
roots.reserve(1);
roots.push_back(node0x4263a1b0);
dag->setRoot(node0x4263a1b0);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x4263c060 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4263c390 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4263c430 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x4263c060, node0x4263c390);
SDValue node0x4263ae30 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x4263c430, mpi, MVT::i16, 1);
SDValue node0x42639fd0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4263ae30, SDValue());
roots.reserve(1);
roots.push_back(node0x42639fd0);
dag->setRoot(node0x42639fd0);
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
SDValue node0x4264a070 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4263c4c0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x4264a070, mpi, MVT::i16, 1);
SDValue node0x426495e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4263c4c0, SDValue());
roots.reserve(1);
roots.push_back(node0x426495e0);
dag->setRoot(node0x426495e0);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_lo__regs__:
    {
SDValue node0x42832490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427adbe0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x428325c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x42832490, node0x427adbe0);
SDValue node0x4264a110 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x428325c0, mpi, MVT::i16, 1);
SDValue node0x4264a3c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4264a110, SDValue());
roots.reserve(1);
roots.push_back(node0x4264a3c0);
dag->setRoot(node0x4264a3c0);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x4264cd90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427adc80 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x4264cd90, mpi, MVT::i16, 1);
SDValue node0x4264c160 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x427adc80, SDValue());
roots.reserve(1);
roots.push_back(node0x4264c160);
dag->setRoot(node0x4264c160);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x4264e010 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4264e340 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4264e3e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x4264e010, node0x4264e340);
SDValue node0x4264ce30 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x4264e3e0, mpi, MVT::i16, 1);
SDValue node0x4264c020 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4264ce30, SDValue());
roots.reserve(1);
roots.push_back(node0x4264c020);
dag->setRoot(node0x4264c020);
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
SDValue node0x4265c020 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4265c0c0 = dag->getLoad(MVT::i32, dl, entry, node0x4265c020, mpi, 1);
SDValue node0x4265b410 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4265c0c0, SDValue());
roots.reserve(1);
roots.push_back(node0x4265b410);
dag->setRoot(node0x4265b410);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_lo__regs__:
    {
SDValue node0x4265d420 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4265d750 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4265d7f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x4265d420, node0x4265d750);
SDValue node0x4265d880 = dag->getLoad(MVT::i32, dl, entry, node0x4265d7f0, mpi, 1);
SDValue node0x4265c270 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4265d880, SDValue());
roots.reserve(1);
roots.push_back(node0x4265c270);
dag->setRoot(node0x4265c270);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x4265e700 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4265e7a0 = dag->getLoad(MVT::i32, dl, entry, node0x4265e700, mpi, 1);
SDValue node0x4265db20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4265e7a0, SDValue());
roots.reserve(1);
roots.push_back(node0x4265db20);
dag->setRoot(node0x4265db20);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x4265f970 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4265fca0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4265fd40 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x4265f970, node0x4265fca0);
SDValue node0x4265fdd0 = dag->getLoad(MVT::i32, dl, entry, node0x4265fd40, mpi, 1);
SDValue node0x4265da30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4265fdd0, SDValue());
roots.reserve(1);
roots.push_back(node0x4265da30);
dag->setRoot(node0x4265da30);
    }
    break;
  case Codasip::i_lui_hi__opc_lui__regs__imm20_hi__:
    {
SDValue node0x4267f1f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4267f270 = dag->getConstant(2048LL, dl, MVT::i32);
SDValue node0x4267f330 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x4267f1f0, node0x4267f270);
SDValue node0x4267f3a0 = dag->getConstant(-4096LL, dl, MVT::i32);
SDValue node0x4267f460 = dag->getNode(ISD::AND, dl, MVT::i32, node0x4267f330, node0x4267f3a0);
SDValue node0x4267ef00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4267f460, SDValue());
roots.reserve(1);
roots.push_back(node0x4267ef00);
dag->setRoot(node0x4267ef00);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__reg0__simm12_lo__:
    {
SDValue node0x4269dbd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4269ad10 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4269dbd0, SDValue());
roots.reserve(1);
roots.push_back(node0x4269ad10);
dag->setRoot(node0x4269ad10);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x4269e770 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4269dd00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4269e770, SDValue());
roots.reserve(1);
roots.push_back(node0x4269dd00);
dag->setRoot(node0x4269dd00);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_lo__:
    {
SDValue node0x4269faa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4269fdd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4269fe70 = dag->getNode(ISD::OR, dl, MVT::i32, node0x4269faa0, node0x4269fdd0);
SDValue node0x4269ee10 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4269fe70, SDValue());
roots.reserve(1);
roots.push_back(node0x4269ee10);
dag->setRoot(node0x4269ee10);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x426a08a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426a0bd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x426a0c70 = dag->getNode(ISD::OR, dl, MVT::i32, node0x426a08a0, node0x426a0bd0);
SDValue node0x4269ffe0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x426a0c70, SDValue());
roots.reserve(1);
roots.push_back(node0x4269ffe0);
dag->setRoot(node0x4269ffe0);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_lo__reg0__:
    {
SDValue node0x426b0ee0 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x426b1180 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x42818320 = dag->getStore(entry, dl, node0x426b0ee0, node0x426b1180, mpi, 1);
roots.reserve(1);
roots.push_back(node0x42818320);
dag->setRoot(node0x42818320);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_lo__regs__:
    {
SDValue node0x426b2000 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x426b2160 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426b23f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426b2490 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426b2160, node0x426b23f0);
SDValue node0x424afcb0 = dag->getStore(entry, dl, node0x426b2000, node0x426b2490, mpi, 1);
roots.reserve(1);
roots.push_back(node0x424afcb0);
dag->setRoot(node0x424afcb0);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x426b3040 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x426b32e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x428ab440 = dag->getStore(entry, dl, node0x426b3040, node0x426b32e0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x428ab440);
dag->setRoot(node0x428ab440);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x426b44d0 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x426b4630 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426b48c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426b4960 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426b4630, node0x426b48c0);
SDValue node0x426b49f0 = dag->getStore(entry, dl, node0x426b44d0, node0x426b4960, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426b49f0);
dag->setRoot(node0x426b49f0);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_lo__reg0__:
    {
SDValue node0x426bc4f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426bc830 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4276f170 = dag->getTruncStore(entry, dl, node0x426bc4f0, node0x426bc830, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x4276f170);
dag->setRoot(node0x4276f170);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_lo__regs__:
    {
SDValue node0x426bdb80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426bdd80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426be010 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x426be0b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426bdd80, node0x426be010);
SDValue node0x4276f350 = dag->getTruncStore(entry, dl, node0x426bdb80, node0x426be0b0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x4276f350);
dag->setRoot(node0x4276f350);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x426bee00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426bf140 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4276f550 = dag->getTruncStore(entry, dl, node0x426bee00, node0x426bf140, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x4276f550);
dag->setRoot(node0x4276f550);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x426c0410 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426c0610 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426c08a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x426c0940 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426c0610, node0x426c08a0);
SDValue node0x4276f730 = dag->getTruncStore(entry, dl, node0x426c0410, node0x426c0940, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x4276f730);
dag->setRoot(node0x4276f730);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_lo__reg0__:
    {
SDValue node0x426c3a20 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x426c3cc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426c3d60 = dag->getStore(entry, dl, node0x426c3a20, node0x426c3cc0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426c3d60);
dag->setRoot(node0x426c3d60);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_lo__regs__:
    {
SDValue node0x426c4d20 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x426c4e80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426c5110 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426c51b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426c4e80, node0x426c5110);
SDValue node0x426c5240 = dag->getStore(entry, dl, node0x426c4d20, node0x426c51b0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426c5240);
dag->setRoot(node0x426c5240);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x426c5dc0 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x426c6060 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426c6100 = dag->getStore(entry, dl, node0x426c5dc0, node0x426c6060, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426c6100);
dag->setRoot(node0x426c6100);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x426c72b0 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x426c7410 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426c76a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426c7740 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426c7410, node0x426c76a0);
SDValue node0x426c77d0 = dag->getStore(entry, dl, node0x426c72b0, node0x426c7740, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426c77d0);
dag->setRoot(node0x426c77d0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_lo__reg0__:
    {
SDValue node0x426cf4c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426cf800 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42770410 = dag->getTruncStore(entry, dl, node0x426cf4c0, node0x426cf800, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x42770410);
dag->setRoot(node0x42770410);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_lo__regs__:
    {
SDValue node0x426d0b50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426d0d50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426d0fe0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x426d1080 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426d0d50, node0x426d0fe0);
SDValue node0x427705f0 = dag->getTruncStore(entry, dl, node0x426d0b50, node0x426d1080, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x427705f0);
dag->setRoot(node0x427705f0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x426d1dd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426d2110 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427707f0 = dag->getTruncStore(entry, dl, node0x426d1dd0, node0x426d2110, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x427707f0);
dag->setRoot(node0x427707f0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x426d33e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426d35e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426d3870 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x426d3910 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426d35e0, node0x426d3870);
SDValue node0x427709d0 = dag->getTruncStore(entry, dl, node0x426d33e0, node0x426d3910, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x427709d0);
dag->setRoot(node0x427709d0);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_lo__reg0__:
    {
SDValue node0x426d69f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x426d6bf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426d6c90 = dag->getStore(entry, dl, node0x426d69f0, node0x426d6bf0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426d6c90);
dag->setRoot(node0x426d6c90);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_lo__regs__:
    {
SDValue node0x426d7c50 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x426d7db0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426d7fa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426d8040 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426d7db0, node0x426d7fa0);
SDValue node0x426d80d0 = dag->getStore(entry, dl, node0x426d7c50, node0x426d8040, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426d80d0);
dag->setRoot(node0x426d80d0);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x426d8c50 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x426d8e50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426d8ef0 = dag->getStore(entry, dl, node0x426d8c50, node0x426d8e50, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426d8ef0);
dag->setRoot(node0x426d8ef0);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x426da0a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x426da200 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426da3f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426da490 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426da200, node0x426da3f0);
SDValue node0x426da520 = dag->getStore(entry, dl, node0x426da0a0, node0x426da490, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426da520);
dag->setRoot(node0x426da520);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_lo__reg0__:
    {
SDValue node0x426e20d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426e2360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426dfb90 = dag->getStore(entry, dl, node0x426e20d0, node0x426e2360, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426dfb90);
dag->setRoot(node0x426dfb90);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_lo__regs__:
    {
SDValue node0x426e36b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426e3800 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426e3a90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x426e3b30 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426e3800, node0x426e3a90);
SDValue node0x426e3bc0 = dag->getStore(entry, dl, node0x426e36b0, node0x426e3b30, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426e3bc0);
dag->setRoot(node0x426e3bc0);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x426e4830 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426e4ac0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426e4b60 = dag->getStore(entry, dl, node0x426e4830, node0x426e4ac0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426e4b60);
dag->setRoot(node0x426e4b60);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x426e5de0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x426e5f30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x426e61c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x426e6260 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x426e5f30, node0x426e61c0);
SDValue node0x426e62f0 = dag->getStore(entry, dl, node0x426e5de0, node0x426e6260, mpi, 1);
roots.reserve(1);
roots.push_back(node0x426e62f0);
dag->setRoot(node0x426e62f0);
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
SDValue node0x42716ca0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x427169d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x42716ca0, SDValue());
roots.reserve(1);
roots.push_back(node0x427169d0);
dag->setRoot(node0x427169d0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__regs__simm12_simple__:
    {
SDValue node0x425f5130 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x425f53d0 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x425f5130);
roots.reserve(1);
roots.push_back(node0x425f53d0);
dag->setRoot(node0x425f53d0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__regs__simm12_simple__:
    {
SDValue node0x425ffdf0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x425fe400 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x425ffdf0, SDValue());
SDValue node0x426002a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x42600540 = dag->getNode(ISD::BRIND, dl, MVT::Other, node0x425fe400, node0x426002a0);
roots.reserve(2);
roots.push_back(node0x425fe400);
roots.push_back(node0x42600540);
dag->setRoot(node0x42600540);
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
