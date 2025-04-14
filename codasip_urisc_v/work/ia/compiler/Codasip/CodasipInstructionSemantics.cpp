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
 *                Date: 2025-04-14 08:33:34
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
SDValue node0x1bb868c0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1c0a7ea0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bb866d0 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x1c0a7ea0);
SDValue node0x1c129d50 = dag->getCopyToReg(node0x1bb866d0, dl, dag->getRegister(Codasip::rf_gpr_1, MVT::i32), node0x1bb868c0, SDValue());
roots.reserve(2);
roots.push_back(node0x1c129d50);
roots.push_back(node0x1bb866d0);
dag->setRoot(node0x1c129d50);
    } else     {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_jump_reg_alias__regs__:
    {
SDValue node0x1bdf0680 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bdf0450 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x1bdf0680);
roots.reserve(1);
roots.push_back(node0x1bdf0450);
dag->setRoot(node0x1bdf0450);
    }
    break;
  case Codasip::i_jmp_rel_alias__rel_addr20__:
    {
SDValue node0x1bdeee20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x1bdef0a0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x1bdeee20);
roots.reserve(1);
roots.push_back(node0x1bdef0a0);
dag->setRoot(node0x1bdef0a0);
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
SDValue node0x1c063fa0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1bdd4d10 = dag->getConstant(-4LL, dl, MVT::i32);
SDValue node0x1bdd4f30 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c063fa0, node0x1bdd4d10);
SDValue node0x1bdd4cc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bdd4f30, SDValue());
roots.reserve(1);
roots.push_back(node0x1bdd4cc0);
dag->setRoot(node0x1bdd4cc0);
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
SDValue node0x1be6e770 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1be6e720 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be6e770, SDValue());
roots.reserve(1);
roots.push_back(node0x1be6e720);
dag->setRoot(node0x1be6e720);
    }
    break;
  case Codasip::i_mv_alias__regs__regs__:
    {
SDValue node0x1be6f800 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be6f5b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be6f800, SDValue());
roots.reserve(1);
roots.push_back(node0x1be6f5b0);
dag->setRoot(node0x1be6f5b0);
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
SDValue node0x1be8d6d0 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x1be8d680 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be8d6d0, SDValue());
roots.reserve(1);
roots.push_back(node0x1be8d680);
dag->setRoot(node0x1be8d680);
    }
    break;
  case Codasip::i_seqz_alias__regs__regs__:
    {
SDValue node0x1be8e680 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1be8e800 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be8e8b0 = dag->getSetCC(dl, MVT::i32, node0x1be8e800, node0x1be8e680, ISD::SETEQ);
SDValue node0x1be8e5b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be8e8b0, SDValue());
roots.reserve(1);
roots.push_back(node0x1be8e5b0);
dag->setRoot(node0x1be8e5b0);
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
SDValue node0x1be98280 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1be98230 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be98280, SDValue());
roots.reserve(1);
roots.push_back(node0x1be98230);
dag->setRoot(node0x1be98230);
    }
    break;
  case Codasip::i_snez_alias__regs__regs__:
    {
SDValue node0x1be99190 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1be99310 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be993c0 = dag->getSetCC(dl, MVT::i32, node0x1be99310, node0x1be99190, ISD::SETNE);
SDValue node0x1be990c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be993c0, SDValue());
roots.reserve(1);
roots.push_back(node0x1be990c0);
dag->setRoot(node0x1be990c0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__regs__simm12_simple__immspec_1_:
    {
SDValue node0x1bf11bb0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1bf102f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf11bb0, SDValue());
SDValue node0x1bf11f20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf12060 = dag->getNode(ISD::BRIND, dl, MVT::Other, node0x1bf102f0, node0x1bf11f20);
roots.reserve(2);
roots.push_back(node0x1bf102f0);
roots.push_back(node0x1bf12060);
dag->setRoot(node0x1bf12060);
    }
    break;
  case Codasip::i_call_rel_alias__rel_addr20__:
case Codasip::i_call_rel_alias__rel_addr20__ES:
case Codasip::i_call_rel_alias__rel_addr20__MC:
case Codasip::i_call_rel_alias__rel_addr20__BA:
    if (lowlevel) {
SDValue node0x1bb87650 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1bb87860 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x1bb87ae0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x1bb87860);
SDValue node0x1bb86d00 = dag->getCopyToReg(node0x1bb87ae0, dl, dag->getRegister(Codasip::rf_gpr_1, MVT::i32), node0x1bb87650, SDValue());
roots.reserve(2);
roots.push_back(node0x1bb86d00);
roots.push_back(node0x1bb87ae0);
dag->setRoot(node0x1bb86d00);
    } else     {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__:
    {
SDValue node0x1bdd7c30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x1bdd7930 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x1bdd7c30);
roots.reserve(1);
roots.push_back(node0x1bdd7930);
dag->setRoot(node0x1bdd7930);
    }
    break;
  case Codasip::i_jal_abs__opc_jal__regs__rel_addr20__:
    {
SDValue node0x1bdd8210 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1bdd71e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bdd8210, SDValue());
SDValue node0x1bdd8580 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bdd81b0 = dag->getNode(ISD::BR, dl, MVT::Other, node0x1bdd71e0, node0x1bdd8580);
roots.reserve(2);
roots.push_back(node0x1bdd71e0);
roots.push_back(node0x1bdd81b0);
dag->setRoot(node0x1bdd81b0);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__:
    {
SDValue node0x1bf96ac0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x1bf96d70 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x1bf96ac0);
roots.reserve(1);
roots.push_back(node0x1bf96d70);
dag->setRoot(node0x1bf96d70);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1bf98040 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bf981c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf98270 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bf98310 = dag->getSetCC(dl, MVT::iAny, node0x1bf981c0, node0x1bf98040, ISD::SETEQ);
SDValue node0x1bf98530 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bf98310, node0x1bf98270);
roots.reserve(1);
roots.push_back(node0x1bf98530);
dag->setRoot(node0x1bf98530);
    } else     {
SDValue node0x1bf98040 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bf981c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf98270 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bf98310 = dag->getSetCC(dl, MVT::i32, node0x1bf981c0, node0x1bf98040, ISD::SETEQ);
SDValue node0x1bf98530 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bf98310, node0x1bf98270);
roots.reserve(1);
roots.push_back(node0x1bf98530);
dag->setRoot(node0x1bf98530);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x1bf9a9e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bf9ab60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf9ac10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bf9acb0 = dag->getSetCC(dl, MVT::iAny, node0x1bf9ab60, node0x1bf9a9e0, ISD::SETEQ);
SDValue node0x1bf9aed0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bf9acb0, node0x1bf9ac10);
roots.reserve(1);
roots.push_back(node0x1bf9aed0);
dag->setRoot(node0x1bf9aed0);
    } else     {
SDValue node0x1bf9a9e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bf9ab60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf9ac10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bf9acb0 = dag->getSetCC(dl, MVT::i32, node0x1bf9ab60, node0x1bf9a9e0, ISD::SETEQ);
SDValue node0x1bf9aed0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bf9acb0, node0x1bf9ac10);
roots.reserve(1);
roots.push_back(node0x1bf9aed0);
dag->setRoot(node0x1bf9aed0);
    }
    break;
  case Codasip::i_control_conditional__opc_beq__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1bf9c650 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf9c700 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf9c7b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bf9c850 = dag->getSetCC(dl, MVT::iAny, node0x1bf9c700, node0x1bf9c650, ISD::SETEQ);
SDValue node0x1bf9ca70 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bf9c850, node0x1bf9c7b0);
roots.reserve(1);
roots.push_back(node0x1bf9ca70);
dag->setRoot(node0x1bf9ca70);
    } else     {
SDValue node0x1bf9c650 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf9c700 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf9c7b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bf9c850 = dag->getSetCC(dl, MVT::i32, node0x1bf9c700, node0x1bf9c650, ISD::SETEQ);
SDValue node0x1bf9ca70 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bf9c850, node0x1bf9c7b0);
roots.reserve(1);
roots.push_back(node0x1bf9ca70);
dag->setRoot(node0x1bf9ca70);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__:
    {
SDValue node0x1bf9d9d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x1bf9dc80 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x1bf9d9d0);
roots.reserve(1);
roots.push_back(node0x1bf9dc80);
dag->setRoot(node0x1bf9dc80);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1bf9ebe0 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x1bf9ef40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf9eff0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bf9f090 = dag->getSetCC(dl, MVT::iAny, node0x1bf9ef40, node0x1bf9ebe0, ISD::SETLT);
SDValue node0x1bf9f2b0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bf9f090, node0x1bf9eff0);
roots.reserve(1);
roots.push_back(node0x1bf9f2b0);
dag->setRoot(node0x1bf9f2b0);
    } else     {
SDValue node0x1bf9ebe0 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x1bf9ef40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf9eff0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bf9f090 = dag->getSetCC(dl, MVT::i32, node0x1bf9ef40, node0x1bf9ebe0, ISD::SETLT);
SDValue node0x1bf9f2b0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bf9f090, node0x1bf9eff0);
roots.reserve(1);
roots.push_back(node0x1bf9f2b0);
dag->setRoot(node0x1bf9f2b0);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x1bfa18a0 = dag->getConstant(-1LL, dl, MVT::i32);
SDValue node0x1bfa1980 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfa1a30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bfa1ad0 = dag->getSetCC(dl, MVT::iAny, node0x1bfa1980, node0x1bfa18a0, ISD::SETGT);
SDValue node0x1bfa1cf0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfa1ad0, node0x1bfa1a30);
roots.reserve(1);
roots.push_back(node0x1bfa1cf0);
dag->setRoot(node0x1bfa1cf0);
    } else     {
SDValue node0x1bfa18a0 = dag->getConstant(-1LL, dl, MVT::i32);
SDValue node0x1bfa1980 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfa1a30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bfa1ad0 = dag->getSetCC(dl, MVT::i32, node0x1bfa1980, node0x1bfa18a0, ISD::SETGT);
SDValue node0x1bfa1cf0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfa1ad0, node0x1bfa1a30);
roots.reserve(1);
roots.push_back(node0x1bfa1cf0);
dag->setRoot(node0x1bfa1cf0);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1bfa3470 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bfa3520 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfa35d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bfa3670 = dag->getSetCC(dl, MVT::iAny, node0x1bfa3520, node0x1bfa3470, ISD::SETGE);
SDValue node0x1bfa3890 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfa3670, node0x1bfa35d0);
roots.reserve(1);
roots.push_back(node0x1bfa3890);
dag->setRoot(node0x1bfa3890);
    } else     {
SDValue node0x1bfa3470 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bfa3520 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfa35d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bfa3670 = dag->getSetCC(dl, MVT::i32, node0x1bfa3520, node0x1bfa3470, ISD::SETGE);
SDValue node0x1bfa3890 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfa3670, node0x1bfa35d0);
roots.reserve(1);
roots.push_back(node0x1bfa3890);
dag->setRoot(node0x1bfa3890);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__:
    {
SDValue node0x1bfa47f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x1bfa4aa0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x1bfa47f0);
roots.reserve(1);
roots.push_back(node0x1bfa4aa0);
dag->setRoot(node0x1bfa4aa0);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1bfa5be0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bfa5d60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfa5e10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bfa5eb0 = dag->getSetCC(dl, MVT::iAny, node0x1bfa5d60, node0x1bfa5be0, ISD::SETEQ);
SDValue node0x1bfa60d0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfa5eb0, node0x1bfa5e10);
roots.reserve(1);
roots.push_back(node0x1bfa60d0);
dag->setRoot(node0x1bfa60d0);
    } else     {
SDValue node0x1bfa5be0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bfa5d60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfa5e10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bfa5eb0 = dag->getSetCC(dl, MVT::i32, node0x1bfa5d60, node0x1bfa5be0, ISD::SETEQ);
SDValue node0x1bfa60d0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfa5eb0, node0x1bfa5e10);
roots.reserve(1);
roots.push_back(node0x1bfa60d0);
dag->setRoot(node0x1bfa60d0);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1bfaa180 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bfaa230 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfaa2e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bfaa380 = dag->getSetCC(dl, MVT::iAny, node0x1bfaa230, node0x1bfaa180, ISD::SETUGE);
SDValue node0x1bfaa5a0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfaa380, node0x1bfaa2e0);
roots.reserve(1);
roots.push_back(node0x1bfaa5a0);
dag->setRoot(node0x1bfaa5a0);
    } else     {
SDValue node0x1bfaa180 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bfaa230 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfaa2e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bfaa380 = dag->getSetCC(dl, MVT::i32, node0x1bfaa230, node0x1bfaa180, ISD::SETUGE);
SDValue node0x1bfaa5a0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfaa380, node0x1bfaa2e0);
roots.reserve(1);
roots.push_back(node0x1bfaa5a0);
dag->setRoot(node0x1bfaa5a0);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1bfac1e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bfac360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfac410 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bfac4b0 = dag->getSetCC(dl, MVT::iAny, node0x1bfac360, node0x1bfac1e0, ISD::SETGT);
SDValue node0x1bfac6d0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfac4b0, node0x1bfac410);
roots.reserve(1);
roots.push_back(node0x1bfac6d0);
dag->setRoot(node0x1bfac6d0);
    } else     {
SDValue node0x1bfac1e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bfac360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfac410 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bfac4b0 = dag->getSetCC(dl, MVT::i32, node0x1bfac360, node0x1bfac1e0, ISD::SETGT);
SDValue node0x1bfac6d0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfac4b0, node0x1bfac410);
roots.reserve(1);
roots.push_back(node0x1bfac6d0);
dag->setRoot(node0x1bfac6d0);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x1bfaebd0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bfaed50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfaee00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bfaeea0 = dag->getSetCC(dl, MVT::iAny, node0x1bfaed50, node0x1bfaebd0, ISD::SETLT);
SDValue node0x1bfaf0c0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfaeea0, node0x1bfaee00);
roots.reserve(1);
roots.push_back(node0x1bfaf0c0);
dag->setRoot(node0x1bfaf0c0);
    } else     {
SDValue node0x1bfaebd0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bfaed50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfaee00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bfaeea0 = dag->getSetCC(dl, MVT::i32, node0x1bfaed50, node0x1bfaebd0, ISD::SETLT);
SDValue node0x1bfaf0c0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfaeea0, node0x1bfaee00);
roots.reserve(1);
roots.push_back(node0x1bfaf0c0);
dag->setRoot(node0x1bfaf0c0);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1bfb0840 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bfb08f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfb09a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bfb0a40 = dag->getSetCC(dl, MVT::iAny, node0x1bfb08f0, node0x1bfb0840, ISD::SETLT);
SDValue node0x1bfb0c60 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfb0a40, node0x1bfb09a0);
roots.reserve(1);
roots.push_back(node0x1bfb0c60);
dag->setRoot(node0x1bfb0c60);
    } else     {
SDValue node0x1bfb0840 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bfb08f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfb09a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bfb0a40 = dag->getSetCC(dl, MVT::i32, node0x1bfb08f0, node0x1bfb0840, ISD::SETLT);
SDValue node0x1bfb0c60 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfb0a40, node0x1bfb09a0);
roots.reserve(1);
roots.push_back(node0x1bfb0c60);
dag->setRoot(node0x1bfb0c60);
    }
    break;
  case Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1bfb2850 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bfb29d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfb2a80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bfb2b20 = dag->getSetCC(dl, MVT::iAny, node0x1bfb29d0, node0x1bfb2850, ISD::SETNE);
SDValue node0x1bfb2d40 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfb2b20, node0x1bfb2a80);
roots.reserve(1);
roots.push_back(node0x1bfb2d40);
dag->setRoot(node0x1bfb2d40);
    } else     {
SDValue node0x1bfb2850 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bfb29d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfb2a80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bfb2b20 = dag->getSetCC(dl, MVT::i32, node0x1bfb29d0, node0x1bfb2850, ISD::SETNE);
SDValue node0x1bfb2d40 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfb2b20, node0x1bfb2a80);
roots.reserve(1);
roots.push_back(node0x1bfb2d40);
dag->setRoot(node0x1bfb2d40);
    }
    break;
  case Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1bfb6640 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bfb66f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfb67a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bfb6840 = dag->getSetCC(dl, MVT::iAny, node0x1bfb66f0, node0x1bfb6640, ISD::SETULT);
SDValue node0x1bfb6a60 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfb6840, node0x1bfb67a0);
roots.reserve(1);
roots.push_back(node0x1bfb6a60);
dag->setRoot(node0x1bfb6a60);
    } else     {
SDValue node0x1bfb6640 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bfb66f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfb67a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bfb6840 = dag->getSetCC(dl, MVT::i32, node0x1bfb66f0, node0x1bfb6640, ISD::SETULT);
SDValue node0x1bfb6a60 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfb6840, node0x1bfb67a0);
roots.reserve(1);
roots.push_back(node0x1bfb6a60);
dag->setRoot(node0x1bfb6a60);
    }
    break;
  case Codasip::i_control_conditional__opc_bne__reg0__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1bfb86f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bfb8870 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfb8920 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bfb89c0 = dag->getSetCC(dl, MVT::iAny, node0x1bfb8870, node0x1bfb86f0, ISD::SETNE);
SDValue node0x1bfb8be0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfb89c0, node0x1bfb8920);
roots.reserve(1);
roots.push_back(node0x1bfb8be0);
dag->setRoot(node0x1bfb8be0);
    } else     {
SDValue node0x1bfb86f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bfb8870 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfb8920 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bfb89c0 = dag->getSetCC(dl, MVT::i32, node0x1bfb8870, node0x1bfb86f0, ISD::SETNE);
SDValue node0x1bfb8be0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfb89c0, node0x1bfb8920);
roots.reserve(1);
roots.push_back(node0x1bfb8be0);
dag->setRoot(node0x1bfb8be0);
    }
    break;
  case Codasip::i_control_conditional__opc_bne__regs__reg0__rel_addr12__:
    if (lowlevel) {
SDValue node0x1bfbb0e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bfbb260 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfbb310 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bfbb3b0 = dag->getSetCC(dl, MVT::iAny, node0x1bfbb260, node0x1bfbb0e0, ISD::SETNE);
SDValue node0x1bfbb5d0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfbb3b0, node0x1bfbb310);
roots.reserve(1);
roots.push_back(node0x1bfbb5d0);
dag->setRoot(node0x1bfbb5d0);
    } else     {
SDValue node0x1bfbb0e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bfbb260 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfbb310 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bfbb3b0 = dag->getSetCC(dl, MVT::i32, node0x1bfbb260, node0x1bfbb0e0, ISD::SETNE);
SDValue node0x1bfbb5d0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfbb3b0, node0x1bfbb310);
roots.reserve(1);
roots.push_back(node0x1bfbb5d0);
dag->setRoot(node0x1bfbb5d0);
    }
    break;
  case Codasip::i_control_conditional__opc_bne__regs__regs__rel_addr12__:
    if (lowlevel) {
SDValue node0x1bfbcd50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bfbce00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfbceb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bfbcf50 = dag->getSetCC(dl, MVT::iAny, node0x1bfbce00, node0x1bfbcd50, ISD::SETNE);
SDValue node0x1bfbd170 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfbcf50, node0x1bfbceb0);
roots.reserve(1);
roots.push_back(node0x1bfbd170);
dag->setRoot(node0x1bfbd170);
    } else     {
SDValue node0x1bfbcd50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bfbce00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bfbceb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bfbcf50 = dag->getSetCC(dl, MVT::i32, node0x1bfbce00, node0x1bfbcd50, ISD::SETNE);
SDValue node0x1bfbd170 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bfbcf50, node0x1bfbceb0);
roots.reserve(1);
roots.push_back(node0x1bfbd170);
dag->setRoot(node0x1bfbd170);
    }
    break;
  case Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x1bf04650 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bf048b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf04960 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf04a10 = dag->getSetCC(dl, MVT::iAny, node0x1bf048b0, node0x1bf04960, ISD::SETLE);
SDValue node0x1bf04ab0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bf04a10, node0x1bf04650);
roots.reserve(1);
roots.push_back(node0x1bf04ab0);
dag->setRoot(node0x1bf04ab0);
    } else     {
SDValue node0x1bf04650 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bf048b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf04960 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf04a10 = dag->getSetCC(dl, MVT::i32, node0x1bf048b0, node0x1bf04960, ISD::SETLE);
SDValue node0x1bf04ab0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bf04a10, node0x1bf04650);
roots.reserve(1);
roots.push_back(node0x1bf04ab0);
dag->setRoot(node0x1bf04ab0);
    }
    break;
  case Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x1bf05570 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bf05800 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf058b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf05960 = dag->getSetCC(dl, MVT::iAny, node0x1bf05800, node0x1bf058b0, ISD::SETULE);
SDValue node0x1bf05a30 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bf05960, node0x1bf05570);
roots.reserve(1);
roots.push_back(node0x1bf05a30);
dag->setRoot(node0x1bf05a30);
    } else     {
SDValue node0x1bf05570 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bf05800 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf058b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf05960 = dag->getSetCC(dl, MVT::i32, node0x1bf05800, node0x1bf058b0, ISD::SETULE);
SDValue node0x1bf05a30 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bf05960, node0x1bf05570);
roots.reserve(1);
roots.push_back(node0x1bf05a30);
dag->setRoot(node0x1bf05a30);
    }
    break;
  case Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x1bf06440 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bf066d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf06780 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf06830 = dag->getSetCC(dl, MVT::iAny, node0x1bf066d0, node0x1bf06780, ISD::SETGT);
SDValue node0x1bf06900 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bf06830, node0x1bf06440);
roots.reserve(1);
roots.push_back(node0x1bf06900);
dag->setRoot(node0x1bf06900);
    } else     {
SDValue node0x1bf06440 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bf066d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf06780 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf06830 = dag->getSetCC(dl, MVT::i32, node0x1bf066d0, node0x1bf06780, ISD::SETGT);
SDValue node0x1bf06900 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bf06830, node0x1bf06440);
roots.reserve(1);
roots.push_back(node0x1bf06900);
dag->setRoot(node0x1bf06900);
    }
    break;
  case Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__swappedCmpClone0__:
    if (lowlevel) {
SDValue node0x1bf07310 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bf075a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf07650 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf07700 = dag->getSetCC(dl, MVT::iAny, node0x1bf075a0, node0x1bf07650, ISD::SETUGT);
SDValue node0x1bf077d0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bf07700, node0x1bf07310);
roots.reserve(1);
roots.push_back(node0x1bf077d0);
dag->setRoot(node0x1bf077d0);
    } else     {
SDValue node0x1bf07310 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x1bf075a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf07650 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf07700 = dag->getSetCC(dl, MVT::i32, node0x1bf075a0, node0x1bf07650, ISD::SETUGT);
SDValue node0x1bf077d0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x1bf07700, node0x1bf07310);
roots.reserve(1);
roots.push_back(node0x1bf077d0);
dag->setRoot(node0x1bf077d0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__:
    {
SDValue node0x1bdda560 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x1bdda290 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x1bdda560);
roots.reserve(1);
roots.push_back(node0x1bdda290);
dag->setRoot(node0x1bdda290);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_simple__:
    {
SDValue node0x1bde4b20 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1bde4240 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bde4b20, SDValue());
SDValue node0x1bde4e90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bde4af0 = dag->getNode(ISD::BR, dl, MVT::Other, node0x1bde4240, node0x1bde4e90);
roots.reserve(2);
roots.push_back(node0x1bde4240);
roots.push_back(node0x1bde4af0);
dag->setRoot(node0x1bde4af0);
    }
    break;
  case Codasip::i_auipc__opc_auipc__regs__imm20_s12__:
    {
SDValue node0x1c130b90 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1c130e80 = dag->getConstant(-4LL, dl, MVT::i32);
SDValue node0x1bb73280 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bb82210 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c130b90, node0x1bb73280);
SDValue node0x1bb822a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bb82210, node0x1c130e80);
SDValue node0x1c130b40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bb822a0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c130b40);
dag->setRoot(node0x1c130b40);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__:
    {
SDValue node0x1bb74460 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bd89850 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bb74460, SDValue());
roots.reserve(1);
roots.push_back(node0x1bd89850);
dag->setRoot(node0x1bd89850);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__:
    {
SDValue node0x1c13eaa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bdb26a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bdb2740 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c13eaa0, node0x1bdb26a0);
SDValue node0x1bdb11c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bdb2740, SDValue());
roots.reserve(1);
roots.push_back(node0x1bdb11c0);
dag->setRoot(node0x1bdb11c0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__:
    {
SDValue node0x1c17e3e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c17e490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c17e530 = dag->getNode(ISD::AND, dl, MVT::i32, node0x1c17e3e0, node0x1c17e490);
SDValue node0x1c17cf20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c17e530, SDValue());
roots.reserve(1);
roots.push_back(node0x1c17cf20);
dag->setRoot(node0x1c17cf20);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__:
    {
SDValue node0x1c1892c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c188150 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c1892c0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c188150);
dag->setRoot(node0x1c188150);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__:
    {
SDValue node0x1c18d460 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c18d510 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c18d5b0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x1c18d460, node0x1c18d510);
SDValue node0x1c18bfb0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c18d5b0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c18bfb0);
dag->setRoot(node0x1c18bfb0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__:
    {
SDValue node0x1c0ac600 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c0ac6e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0ac780 = dag->getSetCC(dl, MVT::i32, node0x1c0ac6e0, node0x1c0ac600, ISD::SETGT);
SDValue node0x1c0ab320 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0ac780, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0ab320);
dag->setRoot(node0x1c0ab320);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:
    {
SDValue node0x1c0b0c20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0b0cd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c0b0d70 = dag->getSetCC(dl, MVT::i32, node0x1c0b0c20, node0x1c0b0cd0, ISD::SETLT);
SDValue node0x1c0af610 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0b0d70, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0af610);
dag->setRoot(node0x1c0af610);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__:
    {
SDValue node0x1c0bc240 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c0bc320 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0bc3c0 = dag->getSetCC(dl, MVT::i32, node0x1c0bc320, node0x1c0bc240, ISD::SETNE);
SDValue node0x1c0baf60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0bc3c0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0baf60);
dag->setRoot(node0x1c0baf60);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:
    {
SDValue node0x1c0c0860 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0c0910 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c0c09b0 = dag->getSetCC(dl, MVT::i32, node0x1c0c0860, node0x1c0c0910, ISD::SETULT);
SDValue node0x1c0bf250 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0c09b0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0bf250);
dag->setRoot(node0x1c0bf250);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__:
    {
SDValue node0x1c0cbb70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0ca960 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0cbb70, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0ca960);
dag->setRoot(node0x1c0ca960);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:
    {
SDValue node0x1c0cfe50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0cff00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c0cffa0 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x1c0cfe50, node0x1c0cff00);
SDValue node0x1c0ce900 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0cffa0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0ce900);
dag->setRoot(node0x1c0ce900);
    }
    break;
  case Codasip::i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__:
    {
SDValue node0x1c0d4d10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0d4dc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c0d4e60 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x1c0d4d10, node0x1c0d4dc0);
SDValue node0x1c0d4860 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0d4e60, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0d4860);
dag->setRoot(node0x1c0d4860);
    }
    break;
  case Codasip::i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__:
    {
SDValue node0x1c0d9e30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0d9ee0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c0d9f80 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x1c0d9e30, node0x1c0d9ee0);
SDValue node0x1c0d9980 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0d9f80, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0d9980);
dag->setRoot(node0x1c0d9980);
    }
    break;
  case Codasip::i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__:
    {
SDValue node0x1c0def50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0df000 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c0df0a0 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x1c0def50, node0x1c0df000);
SDValue node0x1c0deaa0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0df0a0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0deaa0);
dag->setRoot(node0x1c0deaa0);
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
SDValue node0x1c0f49f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c0f2ba0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0f49f0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0f2ba0);
dag->setRoot(node0x1c0f2ba0);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__regs__reg0__regs__:
    {
SDValue node0x1c0f5be0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0f4be0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0f5be0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0f4be0);
dag->setRoot(node0x1c0f4be0);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__regs__regs__reg0__:
    {
SDValue node0x1c0f7c40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0f5d70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0f7c40, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0f5d70);
dag->setRoot(node0x1c0f5d70);
    }
    break;
  case Codasip::i_comp_3reg__opc_add__regs__regs__regs__:
    {
SDValue node0x1c0f8f70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0f9020 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c0f90d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c0f8f70, node0x1c0f9020);
SDValue node0x1c0f8c80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0f90d0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0f8c80);
dag->setRoot(node0x1c0f8c80);
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
SDValue node0x1c1013e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c0ff590 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c1013e0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0ff590);
dag->setRoot(node0x1c0ff590);
    }
    break;
  case Codasip::i_comp_3reg__opc_and__regs__regs__regs__:
    {
SDValue node0x1c105670 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c105720 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c1057d0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x1c105670, node0x1c105720);
SDValue node0x1c1044d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c1057d0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c1044d0);
dag->setRoot(node0x1c1044d0);
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
SDValue node0x1bf38b80 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bf36d30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf38b80, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf36d30);
dag->setRoot(node0x1bf36d30);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__regs__reg0__regs__:
    {
SDValue node0x1bf39dd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf38d70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf39dd0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf38d70);
dag->setRoot(node0x1bf38d70);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__regs__regs__reg0__:
    {
SDValue node0x1bf3be90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf39f60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf3be90, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf39f60);
dag->setRoot(node0x1bf39f60);
    }
    break;
  case Codasip::i_comp_3reg__opc_or__regs__regs__regs__:
    {
SDValue node0x1bf3d1d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf3d280 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bf3d330 = dag->getNode(ISD::OR, dl, MVT::i32, node0x1bf3d1d0, node0x1bf3d280);
SDValue node0x1bf3c020 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf3d330, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf3c020);
dag->setRoot(node0x1bf3c020);
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
SDValue node0x1bf456a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bf43850 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf456a0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf43850);
dag->setRoot(node0x1bf43850);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__regs__regs__reg0__:
    {
SDValue node0x1bf487a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf46880 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf487a0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf46880);
dag->setRoot(node0x1bf46880);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__regs__regs__regs__:
    {
SDValue node0x1bf49b20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf49bd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bf49d10 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x1bf49b20, node0x1bf49bd0);
SDValue node0x1bf48930 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf49d10, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf48930);
dag->setRoot(node0x1bf48930);
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
SDValue node0x1bf52050 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bf50200 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf52050, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf50200);
dag->setRoot(node0x1bf50200);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__reg0__regs__:
    {
SDValue node0x1bf530c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bf53240 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf532f0 = dag->getSetCC(dl, MVT::i32, node0x1bf53240, node0x1bf530c0, ISD::SETGT);
SDValue node0x1bf52240 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf532f0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf52240);
dag->setRoot(node0x1bf52240);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__regs__reg0__:
    {
SDValue node0x1bf552a0 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x1bf554c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf55570 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x1bf554c0, node0x1bf552a0);
SDValue node0x1bf53610 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf55570, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf53610);
dag->setRoot(node0x1bf53610);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__regs__regs__:
    {
SDValue node0x1bf56860 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf56910 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bf569c0 = dag->getSetCC(dl, MVT::i32, node0x1bf56860, node0x1bf56910, ISD::SETLT);
SDValue node0x1bf55780 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf569c0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf55780);
dag->setRoot(node0x1bf55780);
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
SDValue node0x1bf5ed90 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bf5d0a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf5ed90, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf5d0a0);
dag->setRoot(node0x1bf5d0a0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__regs__reg0__regs__:
    {
SDValue node0x1bf5fe00 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bf5ff80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf60030 = dag->getSetCC(dl, MVT::i32, node0x1bf5ff80, node0x1bf5fe00, ISD::SETNE);
SDValue node0x1bf5ef80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf60030, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf5ef80);
dag->setRoot(node0x1bf5ef80);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__:
    {
SDValue node0x1bf632f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf633a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bf63450 = dag->getSetCC(dl, MVT::i32, node0x1bf632f0, node0x1bf633a0, ISD::SETULT);
SDValue node0x1bf62150 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf63450, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf62150);
dag->setRoot(node0x1bf62150);
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
SDValue node0x1bf6b820 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bf699d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf6b820, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf699d0);
dag->setRoot(node0x1bf699d0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__regs__regs__reg0__:
    {
SDValue node0x1bf6e920 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf6ca00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf6e920, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf6ca00);
dag->setRoot(node0x1bf6ca00);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__regs__regs__regs__:
    {
SDValue node0x1bf6fca0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf6fd50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bf6fe90 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x1bf6fca0, node0x1bf6fd50);
SDValue node0x1bf6eab0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf6fe90, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf6eab0);
dag->setRoot(node0x1bf6eab0);
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
SDValue node0x1bf781d0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bf76380 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf781d0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf76380);
dag->setRoot(node0x1bf76380);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__regs__regs__reg0__:
    {
SDValue node0x1bf7b2d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf793b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf7b2d0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf793b0);
dag->setRoot(node0x1bf793b0);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__regs__regs__regs__:
    {
SDValue node0x1bf7c650 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf7c700 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bf7c840 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x1bf7c650, node0x1bf7c700);
SDValue node0x1bf7b460 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf7c840, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf7b460);
dag->setRoot(node0x1bf7b460);
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
SDValue node0x1bf84b80 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bf82d30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf84b80, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf82d30);
dag->setRoot(node0x1bf82d30);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__regs__reg0__regs__:
    {
SDValue node0x1bf85b70 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bf85d70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf85e20 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x1bf85b70, node0x1bf85d70);
SDValue node0x1bf84d70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf85e20, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf84d70);
dag->setRoot(node0x1bf84d70);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__regs__regs__reg0__:
    {
SDValue node0x1bf87e90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf86030 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf87e90, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf86030);
dag->setRoot(node0x1bf86030);
    }
    break;
  case Codasip::i_comp_3reg__opc_sub__regs__regs__regs__:
    {
SDValue node0x1bf89170 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf89220 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bf892d0 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x1bf89170, node0x1bf89220);
SDValue node0x1bf88020 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf892d0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf88020);
dag->setRoot(node0x1bf88020);
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
SDValue node0x1bf915e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bf8f790 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf915e0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf8f790);
dag->setRoot(node0x1bf8f790);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__regs__reg0__regs__:
    {
SDValue node0x1bf927d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf917d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf927d0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf917d0);
dag->setRoot(node0x1bf917d0);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__regs__regs__reg0__:
    {
SDValue node0x1bf94830 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf92960 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf94830, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf92960);
dag->setRoot(node0x1bf92960);
    }
    break;
  case Codasip::i_comp_3reg__opc_xor__regs__regs__regs__:
    {
SDValue node0x1bf95b10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf95bc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bf95c70 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x1bf95b10, node0x1bf95bc0);
SDValue node0x1bf949c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf95c70, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf949c0);
dag->setRoot(node0x1bf949c0);
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
SDValue node0x1be03130 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bdf91b0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1be03130, mpi, MVT::i8, 1);
SDValue node0x1be024b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bdf91b0, SDValue());
roots.reserve(1);
roots.push_back(node0x1be024b0);
dag->setRoot(node0x1be024b0);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__:
    {
SDValue node0x1be04450 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be04500 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be045a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be04450, node0x1be04500);
SDValue node0x1bdf7f40 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1be045a0, mpi, MVT::i8, 1);
SDValue node0x1be02370 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bdf7f40, SDValue());
roots.reserve(1);
roots.push_back(node0x1be02370);
dag->setRoot(node0x1be02370);
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
SDValue node0x1be14ca0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be0a970 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1be14ca0, mpi, MVT::i8, 1);
SDValue node0x1be14020 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be0a970, SDValue());
roots.reserve(1);
roots.push_back(node0x1be14020);
dag->setRoot(node0x1be14020);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__:
    {
SDValue node0x1be15fc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be16070 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be16110 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be15fc0, node0x1be16070);
SDValue node0x1be09700 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1be16110, mpi, MVT::i8, 1);
SDValue node0x1be13ee0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be09700, SDValue());
roots.reserve(1);
roots.push_back(node0x1be13ee0);
dag->setRoot(node0x1be13ee0);
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
SDValue node0x1be26810 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be1c4e0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1be26810, mpi, MVT::i16, 1);
SDValue node0x1be25b90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be1c4e0, SDValue());
roots.reserve(1);
roots.push_back(node0x1be25b90);
dag->setRoot(node0x1be25b90);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__:
    {
SDValue node0x1be27b30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be27be0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be27c80 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be27b30, node0x1be27be0);
SDValue node0x1be1b270 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1be27c80, mpi, MVT::i16, 1);
SDValue node0x1be25a50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be1b270, SDValue());
roots.reserve(1);
roots.push_back(node0x1be25a50);
dag->setRoot(node0x1be25a50);
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
SDValue node0x1be38380 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be2e050 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1be38380, mpi, MVT::i16, 1);
SDValue node0x1be37700 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be2e050, SDValue());
roots.reserve(1);
roots.push_back(node0x1be37700);
dag->setRoot(node0x1be37700);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__:
    {
SDValue node0x1be396a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be39750 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be397f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be396a0, node0x1be39750);
SDValue node0x1be2cde0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1be397f0, mpi, MVT::i16, 1);
SDValue node0x1be375c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be2cde0, SDValue());
roots.reserve(1);
roots.push_back(node0x1be375c0);
dag->setRoot(node0x1be375c0);
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
SDValue node0x1be49be0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be49c80 = dag->getLoad(MVT::i32, dl, entry, node0x1be49be0, mpi, 1);
SDValue node0x1be48fb0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be49c80, SDValue());
roots.reserve(1);
roots.push_back(node0x1be48fb0);
dag->setRoot(node0x1be48fb0);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__:
    {
SDValue node0x1be4aea0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be4af50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be4aff0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be4aea0, node0x1be4af50);
SDValue node0x1be4b080 = dag->getLoad(MVT::i32, dl, entry, node0x1be4aff0, mpi, 1);
SDValue node0x1be48ec0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be4b080, SDValue());
roots.reserve(1);
roots.push_back(node0x1be48ec0);
dag->setRoot(node0x1be48ec0);
    }
    break;
  case Codasip::i_lui__opc_lui__regs__imm20_s12__:
    {
SDValue node0x1be668e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be664b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be668e0, SDValue());
roots.reserve(1);
roots.push_back(node0x1be664b0);
dag->setRoot(node0x1be664b0);
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
SDValue node0x1be72340 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1be722f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be72340, SDValue());
roots.reserve(1);
roots.push_back(node0x1be722f0);
dag->setRoot(node0x1be722f0);
    }
    break;
  case Codasip::i_neg_alias__regs__regs__:
    {
SDValue node0x1be731d0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1be733d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be73480 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x1be731d0, node0x1be733d0);
SDValue node0x1be73180 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be73480, SDValue());
roots.reserve(1);
roots.push_back(node0x1be73180);
dag->setRoot(node0x1be73180);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__reg0__:
    {
SDValue node0x1be9e550 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x1be9e7f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1be9e890 = dag->getStore(entry, dl, node0x1be9e550, node0x1be9e7f0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1be9e890);
dag->setRoot(node0x1be9e890);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__:
    {
SDValue node0x1be9f520 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x1be9f860 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1be9f910 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be9f9b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be9f860, node0x1be9f910);
SDValue node0x1be9fa40 = dag->getStore(entry, dl, node0x1be9f520, node0x1be9f9b0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1be9fa40);
dag->setRoot(node0x1be9fa40);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_simple__reg0__:
    {
SDValue node0x1beaa850 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1beaa900 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bbb1900 = dag->getTruncStore(entry, dl, node0x1beaa850, node0x1beaa900, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x1bbb1900);
dag->setRoot(node0x1bbb1900);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_simple__regs__:
    {
SDValue node0x1beabbd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1beabc80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1beabd30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1beabe80 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1beabc80, node0x1beabd30);
SDValue node0x1beaaa50 = dag->getTruncStore(entry, dl, node0x1beabbd0, node0x1beabe80, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x1beaaa50);
dag->setRoot(node0x1beaaa50);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__:
    {
SDValue node0x1beb1330 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x1beb15d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1beb1670 = dag->getStore(entry, dl, node0x1beb1330, node0x1beb15d0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1beb1670);
dag->setRoot(node0x1beb1670);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__:
    {
SDValue node0x1beb24f0 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x1beb2830 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1beb28e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1beb2980 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1beb2830, node0x1beb28e0);
SDValue node0x1beb2a10 = dag->getStore(entry, dl, node0x1beb24f0, node0x1beb2980, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1beb2a10);
dag->setRoot(node0x1beb2a10);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_simple__reg0__:
    {
SDValue node0x1bebd820 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bebd8d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bbb1e60 = dag->getTruncStore(entry, dl, node0x1bebd820, node0x1bebd8d0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x1bbb1e60);
dag->setRoot(node0x1bbb1e60);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_simple__regs__:
    {
SDValue node0x1bebeba0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bebec50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bebed00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bebee50 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bebec50, node0x1bebed00);
SDValue node0x1bebda20 = dag->getTruncStore(entry, dl, node0x1bebeba0, node0x1bebee50, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x1bebda20);
dag->setRoot(node0x1bebda20);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_simple__reg0__:
    {
SDValue node0x1bec4080 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bec4280 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bec4320 = dag->getStore(entry, dl, node0x1bec4080, node0x1bec4280, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1bec4320);
dag->setRoot(node0x1bec4320);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_simple__regs__:
    {
SDValue node0x1bec51a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bec5440 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bec54f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bec5590 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bec5440, node0x1bec54f0);
SDValue node0x1bec5620 = dag->getStore(entry, dl, node0x1bec51a0, node0x1bec5590, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1bec5620);
dag->setRoot(node0x1bec5620);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__reg0__:
    {
SDValue node0x1bed0120 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bed01d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bed0270 = dag->getStore(entry, dl, node0x1bed0120, node0x1bed01d0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1bed0270);
dag->setRoot(node0x1bed0270);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__:
    {
SDValue node0x1bed1440 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bed14f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bed15a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bed1640 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bed14f0, node0x1bed15a0);
SDValue node0x1bed16d0 = dag->getStore(entry, dl, node0x1bed1440, node0x1bed1640, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1bed16d0);
dag->setRoot(node0x1bed16d0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:
    {
SDValue node0x1bf01890 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bf01670 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf01890, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf01670);
dag->setRoot(node0x1bf01670);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:
    {
SDValue node0x1bf013f0 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x1bf00b50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf013f0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf00b50);
dag->setRoot(node0x1bf00b50);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:
    {
SDValue node0x1bf02790 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bf01e20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf02790, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf01e20);
dag->setRoot(node0x1bf01e20);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:
    {
SDValue node0x1bf01ff0 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x1bf01720 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf01ff0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf01720);
dag->setRoot(node0x1bf01720);
    }
    break;
  case Codasip::i_comp_3reg__opc_sll__regs__regs__regs__SHIFT_MASK_CLONE_:
    {
SDValue node0x1bde8550 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x1be373b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bde8360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bebd970 = dag->getNode(ISD::AND, dl, MVT::i32, node0x1bde8360, node0x1bde8550);
SDValue node0x1beabdd0 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x1be373b0, node0x1bebd970);
SDValue node0x1bbb0170 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1beabdd0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bbb0170);
dag->setRoot(node0x1bbb0170);
    }
    break;
  case Codasip::i_comp_3reg__opc_slt__regs__regs__regs__swappedCmpClone0__:
    {
SDValue node0x1bf00ba0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf00cd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bf03030 = dag->getSetCC(dl, MVT::i32, node0x1bf00ba0, node0x1bf00cd0, ISD::SETGT);
SDValue node0x1bf02cc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf03030, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf02cc0);
dag->setRoot(node0x1bf02cc0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__swappedCmpClone0__:
    {
SDValue node0x1bf038b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf03a00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bf03ab0 = dag->getSetCC(dl, MVT::i32, node0x1bf038b0, node0x1bf03a00, ISD::SETUGT);
SDValue node0x1bf025c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf03ab0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf025c0);
dag->setRoot(node0x1bf025c0);
    }
    break;
  case Codasip::i_comp_3reg__opc_sra__regs__regs__regs__SHIFT_MASK_CLONE_:
    {
SDValue node0x1bf49900 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x1bde70a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bddd390 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bf49c80 = dag->getNode(ISD::AND, dl, MVT::i32, node0x1bddd390, node0x1bf49900);
SDValue node0x1beaa9a0 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x1bde70a0, node0x1bf49c80);
SDValue node0x1bbd99a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1beaa9a0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bbd99a0);
dag->setRoot(node0x1bbd99a0);
    }
    break;
  case Codasip::i_comp_3reg__opc_srl__regs__regs__regs__SHIFT_MASK_CLONE_:
    {
SDValue node0x1bf6fa80 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x1bddc360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be3fbc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bf6fe00 = dag->getNode(ISD::AND, dl, MVT::i32, node0x1be3fbc0, node0x1bf6fa80);
SDValue node0x1be99460 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x1bddc360, node0x1bf6fe00);
SDValue node0x1bbda320 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be99460, SDValue());
roots.reserve(1);
roots.push_back(node0x1bbda320);
dag->setRoot(node0x1bbda320);
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
SDValue node0x1bdeea50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be031d0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x1bdeea50, mpi, MVT::i8, 1);
SDValue node0x1c039aa0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be031d0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c039aa0);
dag->setRoot(node0x1c039aa0);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x1be04630 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be04110 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be04700 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be04630, node0x1be04110);
SDValue node0x1c03d9a0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x1be04700, mpi, MVT::i8, 1);
SDValue node0x1bbab750 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c03d9a0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bbab750);
dag->setRoot(node0x1bbab750);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x1bf13030 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf0bd90 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1bf13030, mpi, MVT::i8, 1);
SDValue node0x1bf0ed30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf0bd90, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf0ed30);
dag->setRoot(node0x1bf0ed30);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x1bf130e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf0b2d0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x1bf130e0, mpi, MVT::i8, 1);
SDValue node0x1bf03660 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf0b2d0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf03660);
dag->setRoot(node0x1bf03660);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__AEXT_CLONE_:
    {
SDValue node0x1be09460 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be14d40 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x1be09460, mpi, MVT::i8, 1);
SDValue node0x1bbac360 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be14d40, SDValue());
roots.reserve(1);
roots.push_back(node0x1bbac360);
dag->setRoot(node0x1bbac360);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x1be161a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be15c80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be16270 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be161a0, node0x1be15c80);
SDValue node0x1bba9810 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x1be16270, mpi, MVT::i8, 1);
SDValue node0x1bbace70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bba9810, SDValue());
roots.reserve(1);
roots.push_back(node0x1bbace70);
dag->setRoot(node0x1bbace70);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x1bf139a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf0a7a0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1bf139a0, mpi, MVT::i8, 1);
SDValue node0x1bf0f830 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf0a7a0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf0f830);
dag->setRoot(node0x1bf0f830);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x1bf13a50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf09d20 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x1bf13a50, mpi, MVT::i8, 1);
SDValue node0x1bf04090 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf09d20, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf04090);
dag->setRoot(node0x1bf04090);
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
SDValue node0x1be1afd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be268b0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x1be1afd0, mpi, MVT::i16, 1);
SDValue node0x1bbadab0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be268b0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bbadab0);
dag->setRoot(node0x1bbadab0);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x1be27d10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be277f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be27de0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be27d10, node0x1be277f0);
SDValue node0x1bbae5c0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x1be27de0, mpi, MVT::i16, 1);
SDValue node0x1bbae650 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bbae5c0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bbae650);
dag->setRoot(node0x1bbae650);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x1bf14c70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf14400 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1bf14c70, mpi, MVT::i16, 1);
SDValue node0x1bf135e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf14400, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf135e0);
dag->setRoot(node0x1bf135e0);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x1bf14d20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf09c70 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x1bf14d20, mpi, MVT::i16, 1);
SDValue node0x1bbda6f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf09c70, SDValue());
roots.reserve(1);
roots.push_back(node0x1bbda6f0);
dag->setRoot(node0x1bbda6f0);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__AEXT_CLONE_:
    {
SDValue node0x1be2cb40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be38420 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x1be2cb40, mpi, MVT::i16, 1);
SDValue node0x1bbaf260 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be38420, SDValue());
roots.reserve(1);
roots.push_back(node0x1bbaf260);
dag->setRoot(node0x1bbaf260);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__AEXT_CLONE_:
    {
SDValue node0x1be39880 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be39360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be39950 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be39880, node0x1be39360);
SDValue node0x1bbafd70 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x1be39950, mpi, MVT::i16, 1);
SDValue node0x1bbafe00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bbafd70, SDValue());
roots.reserve(1);
roots.push_back(node0x1bbafe00);
dag->setRoot(node0x1bbafe00);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x1bf155e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf09080 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1bf155e0, mpi, MVT::i16, 1);
SDValue node0x1bf11990 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf09080, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf11990);
dag->setRoot(node0x1bf11990);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:
    {
SDValue node0x1bf15690 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be3e950 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x1bf15690, mpi, MVT::i16, 1);
SDValue node0x1bf0cd50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be3e950, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf0cd50);
dag->setRoot(node0x1bf0cd50);
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
SDValue node0x1bf168b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf16960 = dag->getLoad(MVT::i32, dl, entry, node0x1bf168b0, mpi, 1);
SDValue node0x1bf15220 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf16960, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf15220);
dag->setRoot(node0x1bf15220);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_:
    {
SDValue node0x1bf16fc0 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x1bf171e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf16f60 = dag->getStore(entry, dl, node0x1bf16fc0, node0x1bf171e0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1bf16f60);
dag->setRoot(node0x1bf16f60);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x1bf179d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf17a80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf0cf50 = dag->getTruncStore(entry, dl, node0x1bf179d0, node0x1bf17a80, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x1bf0cf50);
dag->setRoot(node0x1bf0cf50);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_:
    {
SDValue node0x1bf18120 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x1bf18340 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf180c0 = dag->getStore(entry, dl, node0x1bf18120, node0x1bf18340, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1bf180c0);
dag->setRoot(node0x1bf180c0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x1bf18ba0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf18c50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf0f9f0 = dag->getTruncStore(entry, dl, node0x1bf18ba0, node0x1bf18c50, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x1bf0f9f0);
dag->setRoot(node0x1bf0f9f0);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_simple__regs__immspec_1_:
    {
SDValue node0x1bf192f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bf19470 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf19290 = dag->getStore(entry, dl, node0x1bf192f0, node0x1bf19470, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1bf19290);
dag->setRoot(node0x1bf19290);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__immspec_1_:
    {
SDValue node0x1bf19cd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bf19d80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bf19b10 = dag->getStore(entry, dl, node0x1bf19cd0, node0x1bf19d80, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1bf19b10);
dag->setRoot(node0x1bf19b10);
    }
    break;
  case Codasip::i_jal__opc_jal__reg0__rel_addr20__:
    {
SDValue node0x1bdd5a70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x1bdd5c60 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x1bdd5a70);
roots.reserve(1);
roots.push_back(node0x1bdd5c60);
dag->setRoot(node0x1bdd5c60);
    }
    break;
  case Codasip::i_jal__opc_jal__regs__rel_addr20__:
    {
SDValue node0x1bdd6a20 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1bdd50a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bdd6a20, SDValue());
SDValue node0x1bdd6e30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bdd7020 = dag->getNode(ISD::BR, dl, MVT::Other, node0x1bdd50a0, node0x1bdd6e30);
roots.reserve(2);
roots.push_back(node0x1bdd50a0);
roots.push_back(node0x1bdd7020);
dag->setRoot(node0x1bdd7020);
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
SDValue node0x1bff7670 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bff75d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bff7670, SDValue());
roots.reserve(1);
roots.push_back(node0x1bff75d0);
dag->setRoot(node0x1bff75d0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__:
    if (lowlevel) {
SDValue node0x1bffbe60 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bffc080 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bffc130 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bffc1e0 = dag->getSetCC(dl, MVT::iAny, node0x1bffc080, node0x1bffbe60, ISD::SETEQ);
SDValue node0x1bff5410 = dag->getNode(ISD::SDIV, dl, MVT::i32, node0x1bffc130, node0x1bffc080);
SDValue node0x1bffc2d0 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x1bffc1e0, node0x1bffbe60, node0x1bff5410);
SDValue node0x1bffbd40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bffc2d0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bffbd40);
dag->setRoot(node0x1bffbd40);
    } else     {
SDValue node0x1bffbe60 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bffc080 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bffc130 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bffc1e0 = dag->getSetCC(dl, MVT::i32, node0x1bffc080, node0x1bffbe60, ISD::SETEQ);
SDValue node0x1bff5410 = dag->getNode(ISD::SDIV, dl, MVT::i32, node0x1bffc130, node0x1bffc080);
SDValue node0x1bffc2d0 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x1bffc1e0, node0x1bffbe60, node0x1bff5410);
SDValue node0x1bffbd40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bffc2d0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bffbd40);
dag->setRoot(node0x1bffbd40);
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
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__:
    {
SDValue node0x1c013ad0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c013a30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c013ad0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c013a30);
dag->setRoot(node0x1c013a30);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:
    {
SDValue node0x1c0184e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c018590 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c011870 = dag->getNode(ISD::MUL, dl, MVT::i32, node0x1c0184e0, node0x1c018590);
SDValue node0x1c0181a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c011870, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0181a0);
dag->setRoot(node0x1c0181a0);
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
SDValue node0x1c038970 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c0388d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c038970, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0388d0);
dag->setRoot(node0x1c0388d0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0__:
    if (lowlevel) {
SDValue node0x1c03be90 = dag->getConstant(-32768LL, dl, MVT::i32);
SDValue node0x1c03bf30 = dag->getConstant(32767LL, dl, MVT::i32);
SDValue node0x1c03c150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c03c200 = dag->getSetCC(dl, MVT::iAny, node0x1c03c150, node0x1c03be90, ISD::SETGT);
SDValue node0x1c036710 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x1c03c200, node0x1c03c150, node0x1c03be90);
SDValue node0x1c03c2c0 = dag->getSetCC(dl, MVT::iAny, node0x1c036710, node0x1c03bf30, ISD::SETLT);
SDValue node0x1c03c390 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x1c03c2c0, node0x1c036710, node0x1c03bf30);
SDValue node0x1c03bd70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c03c390, SDValue());
roots.reserve(1);
roots.push_back(node0x1c03bd70);
dag->setRoot(node0x1c03bd70);
    } else     {
SDValue node0x1c03be90 = dag->getConstant(-32768LL, dl, MVT::i32);
SDValue node0x1c03bf30 = dag->getConstant(32767LL, dl, MVT::i32);
SDValue node0x1c03c150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c03c200 = dag->getSetCC(dl, MVT::i32, node0x1c03c150, node0x1c03be90, ISD::SETGT);
SDValue node0x1c036710 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x1c03c200, node0x1c03c150, node0x1c03be90);
SDValue node0x1c03c2c0 = dag->getSetCC(dl, MVT::i32, node0x1c036710, node0x1c03bf30, ISD::SETLT);
SDValue node0x1c03c390 = dag->getNode(ISD::SELECT, dl, MVT::i32, node0x1c03c2c0, node0x1c036710, node0x1c03bf30);
SDValue node0x1c03bd70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c03c390, SDValue());
roots.reserve(1);
roots.push_back(node0x1c03bd70);
dag->setRoot(node0x1c03bd70);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0__:
    {
SDValue node0x1c03e810 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c03e890 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1c03e930 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1c03e9d0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1c03eab0 = dag->getLoad(MVT::i16, dl, entry, node0x1c03e810, mpi, 1);
SDValue node0x1c03eb80 = dag->getLoad(MVT::i16, dl, entry, node0x1c03e810, mpi, 1);
SDValue node0x1c03ec50 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c03eb80, node0x1c03eab0);
SDValue node0x1bb85a90 = dag->getStore(entry, dl, node0x1c03ec50, node0x1c03e810, mpi, 1);
SDValue node0x1c03ed30 = dag->getLoad(MVT::i16, dl, node0x1bb85a90, node0x1c03e890, mpi, 1);
SDValue node0x1c03ee00 = dag->getLoad(MVT::i16, dl, node0x1bb85a90, node0x1c03e890, mpi, 1);
SDValue node0x1c03eed0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c03ee00, node0x1c03ed30);
SDValue node0x1c1234b0 = dag->getStore(node0x1bb85a90, dl, node0x1c03eed0, node0x1c03e890, mpi, 1);
SDValue node0x1c03efe0 = dag->getLoad(MVT::i16, dl, node0x1c1234b0, node0x1c03e930, mpi, 1);
SDValue node0x1c03f0b0 = dag->getLoad(MVT::i16, dl, node0x1c1234b0, node0x1c03e930, mpi, 1);
SDValue node0x1c03f180 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c03f0b0, node0x1c03efe0);
SDValue node0x1c15b2d0 = dag->getStore(node0x1c1234b0, dl, node0x1c03f180, node0x1c03e930, mpi, 1);
SDValue node0x1c03f290 = dag->getLoad(MVT::i16, dl, node0x1c15b2d0, node0x1c03e9d0, mpi, 1);
SDValue node0x1c03f360 = dag->getLoad(MVT::i16, dl, node0x1c15b2d0, node0x1c03e9d0, mpi, 1);
SDValue node0x1c03f430 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c03f360, node0x1c03f290);
SDValue node0x1c1310a0 = dag->getStore(node0x1c15b2d0, dl, node0x1c03f430, node0x1c03e9d0, mpi, 1);
roots.reserve(4);
roots.push_back(node0x1bb85a90);
roots.push_back(node0x1c1234b0);
roots.push_back(node0x1c15b2d0);
roots.push_back(node0x1c1310a0);
dag->setRoot(node0x1c1310a0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__regs__:
    {
SDValue node0x1c040420 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c0404a0 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1c040540 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1c0405e0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1c0406c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1c040770 = dag->getLoad(MVT::i16, dl, entry, node0x1c040420, mpi, 1);
SDValue node0x1c040840 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c0406c0, node0x1c0405e0);
SDValue node0x1c0408d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c0406c0, node0x1c040540);
SDValue node0x1c040990 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c0406c0, node0x1c0404a0);
SDValue node0x1c040a50 = dag->getLoad(MVT::i16, dl, entry, node0x1c0406c0, mpi, 1);
SDValue node0x1c040b20 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c040a50, node0x1c040770);
SDValue node0x1c13cf20 = dag->getStore(entry, dl, node0x1c040b20, node0x1c040420, mpi, 1);
SDValue node0x1c040c30 = dag->getLoad(MVT::i16, dl, node0x1c13cf20, node0x1c0404a0, mpi, 1);
SDValue node0x1c040d00 = dag->getLoad(MVT::i16, dl, node0x1c13cf20, node0x1c040990, mpi, 1);
SDValue node0x1c040dd0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c040d00, node0x1c040c30);
SDValue node0x1c134740 = dag->getStore(node0x1c13cf20, dl, node0x1c040dd0, node0x1c0404a0, mpi, 1);
SDValue node0x1c040ee0 = dag->getLoad(MVT::i16, dl, node0x1c134740, node0x1c040540, mpi, 1);
SDValue node0x1c040fb0 = dag->getLoad(MVT::i16, dl, node0x1c134740, node0x1c0408d0, mpi, 1);
SDValue node0x1c041080 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c040fb0, node0x1c040ee0);
SDValue node0x1c041140 = dag->getStore(node0x1c134740, dl, node0x1c041080, node0x1c040540, mpi, 1);
SDValue node0x1c0411f0 = dag->getLoad(MVT::i16, dl, node0x1c041140, node0x1c0405e0, mpi, 1);
SDValue node0x1c0412c0 = dag->getLoad(MVT::i16, dl, node0x1c041140, node0x1c040840, mpi, 1);
SDValue node0x1c041390 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c0412c0, node0x1c0411f0);
SDValue node0x1c041450 = dag->getStore(node0x1c041140, dl, node0x1c041390, node0x1c0405e0, mpi, 1);
roots.reserve(4);
roots.push_back(node0x1c13cf20);
roots.push_back(node0x1c134740);
roots.push_back(node0x1c041140);
roots.push_back(node0x1c041450);
dag->setRoot(node0x1c041450);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0__:
    {
SDValue node0x1c0431c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c043240 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1c0432e0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1c043380 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1c043460 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1c043510 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c043460, node0x1c043380);
SDValue node0x1c0435a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c043460, node0x1c0432e0);
SDValue node0x1c043660 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c043460, node0x1c043240);
SDValue node0x1c043720 = dag->getLoad(MVT::i16, dl, entry, node0x1c043460, mpi, 1);
SDValue node0x1c0437f0 = dag->getLoad(MVT::i16, dl, entry, node0x1c0431c0, mpi, 1);
SDValue node0x1c0438c0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c0437f0, node0x1c043720);
SDValue node0x1c042560 = dag->getStore(entry, dl, node0x1c0438c0, node0x1c0431c0, mpi, 1);
SDValue node0x1c0439d0 = dag->getLoad(MVT::i16, dl, node0x1c042560, node0x1c043660, mpi, 1);
SDValue node0x1c043aa0 = dag->getLoad(MVT::i16, dl, node0x1c042560, node0x1c043240, mpi, 1);
SDValue node0x1c043b70 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c043aa0, node0x1c0439d0);
SDValue node0x1c043c30 = dag->getStore(node0x1c042560, dl, node0x1c043b70, node0x1c043240, mpi, 1);
SDValue node0x1c043ce0 = dag->getLoad(MVT::i16, dl, node0x1c043c30, node0x1c0435a0, mpi, 1);
SDValue node0x1c043db0 = dag->getLoad(MVT::i16, dl, node0x1c043c30, node0x1c0432e0, mpi, 1);
SDValue node0x1c043e80 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c043db0, node0x1c043ce0);
SDValue node0x1c043f40 = dag->getStore(node0x1c043c30, dl, node0x1c043e80, node0x1c0432e0, mpi, 1);
SDValue node0x1c043ff0 = dag->getLoad(MVT::i16, dl, node0x1c043f40, node0x1c043510, mpi, 1);
SDValue node0x1c0440c0 = dag->getLoad(MVT::i16, dl, node0x1c043f40, node0x1c043380, mpi, 1);
SDValue node0x1c044190 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c0440c0, node0x1c043ff0);
SDValue node0x1c044250 = dag->getStore(node0x1c043f40, dl, node0x1c044190, node0x1c043380, mpi, 1);
roots.reserve(4);
roots.push_back(node0x1c042560);
roots.push_back(node0x1c043c30);
roots.push_back(node0x1c043f40);
roots.push_back(node0x1c044250);
dag->setRoot(node0x1c044250);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__regs__:
    {
SDValue node0x1c045730 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c045850 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1c0458f0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1c045990 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1c045a70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c045b20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1c045bd0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c045a70, node0x1c045990);
SDValue node0x1c045c60 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c045a70, node0x1c0458f0);
SDValue node0x1c045d20 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c045a70, node0x1c045850);
SDValue node0x1c045de0 = dag->getLoad(MVT::i16, dl, entry, node0x1c045a70, mpi, 1);
SDValue node0x1c045eb0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c045b20, node0x1c045990);
SDValue node0x1c045f70 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c045b20, node0x1c0458f0);
SDValue node0x1c046030 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c045b20, node0x1c045850);
SDValue node0x1c0460f0 = dag->getLoad(MVT::i16, dl, entry, node0x1c045b20, mpi, 1);
SDValue node0x1c0461c0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c0460f0, node0x1c045de0);
SDValue node0x1c045650 = dag->getStore(entry, dl, node0x1c0461c0, node0x1c045730, mpi, 1);
SDValue node0x1c0462d0 = dag->getLoad(MVT::i16, dl, node0x1c045650, node0x1c045d20, mpi, 1);
SDValue node0x1c0463a0 = dag->getLoad(MVT::i16, dl, node0x1c045650, node0x1c046030, mpi, 1);
SDValue node0x1c046470 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c0463a0, node0x1c0462d0);
SDValue node0x1c046530 = dag->getStore(node0x1c045650, dl, node0x1c046470, node0x1c045850, mpi, 1);
SDValue node0x1c0465e0 = dag->getLoad(MVT::i16, dl, node0x1c046530, node0x1c045c60, mpi, 1);
SDValue node0x1c0466b0 = dag->getLoad(MVT::i16, dl, node0x1c046530, node0x1c045f70, mpi, 1);
SDValue node0x1c046780 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c0466b0, node0x1c0465e0);
SDValue node0x1c046840 = dag->getStore(node0x1c046530, dl, node0x1c046780, node0x1c0458f0, mpi, 1);
SDValue node0x1c0468f0 = dag->getLoad(MVT::i16, dl, node0x1c046840, node0x1c045bd0, mpi, 1);
SDValue node0x1c0469c0 = dag->getLoad(MVT::i16, dl, node0x1c046840, node0x1c045eb0, mpi, 1);
SDValue node0x1c046a90 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c0469c0, node0x1c0468f0);
SDValue node0x1c046b50 = dag->getStore(node0x1c046840, dl, node0x1c046a90, node0x1c045990, mpi, 1);
roots.reserve(4);
roots.push_back(node0x1c045650);
roots.push_back(node0x1c046530);
roots.push_back(node0x1c046840);
roots.push_back(node0x1c046b50);
dag->setRoot(node0x1c046b50);
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
SDValue node0x1be881b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be87250 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be881b0, SDValue());
roots.reserve(1);
roots.push_back(node0x1be87250);
dag->setRoot(node0x1be87250);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_simple__:
    {
SDValue node0x1be8a770 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be8a820 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be8a8c0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x1be8a770, node0x1be8a820);
SDValue node0x1be89530 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be8a8c0, SDValue());
roots.reserve(1);
roots.push_back(node0x1be89530);
dag->setRoot(node0x1be89530);
    }
    break;
  case Codasip::i_xret__opc_mret__:
    {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__AEXT_CLONE_:
    {
SDValue node0x1c130fc0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c130f20 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1c130de0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1c130d40 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1c130ca0 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x1c019670 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0195a0 = dag->getLoad(MVT::i16, dl, entry, node0x1c130fc0, mpi, 1);
SDValue node0x1c0194d0 = dag->getLoad(MVT::i16, dl, entry, node0x1c130fc0, mpi, 1);
SDValue node0x1c0ac820 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c0194d0, node0x1c0195a0);
SDValue node0x1c019400 = dag->getLoad(MVT::i16, dl, entry, node0x1c130f20, mpi, 1);
SDValue node0x1bb87900 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c0ac820, node0x1c130ca0);
SDValue node0x1c008e40 = dag->getLoad(MVT::i16, dl, entry, node0x1c130f20, mpi, 1);
SDValue node0x1bb87990 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x1bb87900);
SDValue node0x1bb87a20 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c008e40, node0x1c019400);
SDValue node0x1c006ac0 = dag->getLoad(MVT::i16, dl, entry, node0x1c130de0, mpi, 1);
SDValue node0x1bb86af0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c019670, node0x1bb87990);
SDValue node0x1bb7afe0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1bb87a20, node0x1c130ca0);
SDValue node0x1bf1cbb0 = dag->getLoad(MVT::i16, dl, entry, node0x1c130de0, mpi, 1);
SDValue node0x1bf1c7d0 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x1bb7afe0);
SDValue node0x1c01f750 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1bf1cbb0, node0x1c006ac0);
SDValue node0x1c019810 = dag->getLoad(MVT::i16, dl, entry, node0x1c130d40, mpi, 1);
SDValue node0x1c01d5a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bb86af0, node0x1bf1c7d0);
SDValue node0x1c01d660 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c01f750, node0x1c130ca0);
SDValue node0x1c01aff0 = dag->getLoad(MVT::i16, dl, entry, node0x1c130d40, mpi, 1);
SDValue node0x1c01f2f0 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x1c01d660);
SDValue node0x1c01f380 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c01aff0, node0x1c019810);
SDValue node0x1c01f440 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c01d5a0, node0x1c01f2f0);
SDValue node0x1c01f5d0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c01f380, node0x1c130ca0);
SDValue node0x1c01f690 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x1c01f5d0);
SDValue node0x1c01d510 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c01f440, node0x1c01f690);
SDValue node0x1bf24fd0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c01d510, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf24fd0);
dag->setRoot(node0x1bf24fd0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__regs__AEXT_CLONE_:
    {
SDValue node0x1c027c50 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c027930 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1bf1da80 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1c024d60 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1c01d2e0 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x1c01af20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c01ae50 = dag->getLoad(MVT::i16, dl, entry, node0x1c027c50, mpi, 1);
SDValue node0x1c01ad80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bfbd0b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c01ad80, node0x1c024d60);
SDValue node0x1bfbcff0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c01ad80, node0x1bf1da80);
SDValue node0x1bfbc8e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c01ad80, node0x1c027930);
SDValue node0x1c01aaa0 = dag->getLoad(MVT::i16, dl, entry, node0x1c01ad80, mpi, 1);
SDValue node0x1c01ab70 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c01aaa0, node0x1c01ae50);
SDValue node0x1c0199b0 = dag->getLoad(MVT::i16, dl, entry, node0x1c027930, mpi, 1);
SDValue node0x1c01ac00 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c01ab70, node0x1c01d2e0);
SDValue node0x1c0198e0 = dag->getLoad(MVT::i16, dl, entry, node0x1bfbc8e0, mpi, 1);
SDValue node0x1c01acc0 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x1c01ac00);
SDValue node0x1bfbb450 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c0198e0, node0x1c0199b0);
SDValue node0x1c01b0c0 = dag->getLoad(MVT::i16, dl, entry, node0x1bf1da80, mpi, 1);
SDValue node0x1bfb69a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c01af20, node0x1c01acc0);
SDValue node0x1bfb68e0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1bfbb450, node0x1c01d2e0);
SDValue node0x1c01da60 = dag->getLoad(MVT::i16, dl, entry, node0x1bfbcff0, mpi, 1);
SDValue node0x1bfb61d0 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x1bfb68e0);
SDValue node0x1bfb8b20 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c01da60, node0x1c01b0c0);
SDValue node0x1c01d990 = dag->getLoad(MVT::i16, dl, entry, node0x1c024d60, mpi, 1);
SDValue node0x1bfb8a60 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bfb69a0, node0x1bfb61d0);
SDValue node0x1bfb84a0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1bfb8b20, node0x1c01d2e0);
SDValue node0x1c01d8c0 = dag->getLoad(MVT::i16, dl, entry, node0x1bfbd0b0, mpi, 1);
SDValue node0x1bfbb510 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x1bfb84a0);
SDValue node0x1bfb2600 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c01d8c0, node0x1c01d990);
SDValue node0x1bfaef40 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bfb8a60, node0x1bfbb510);
SDValue node0x1bfae980 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1bfb2600, node0x1c01d2e0);
SDValue node0x1bfb0ba0 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x1bfae980);
SDValue node0x1bfb0ae0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bfaef40, node0x1bfb0ba0);
SDValue node0x1bf60350 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bfb0ae0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bf60350);
dag->setRoot(node0x1bf60350);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0__AEXT_CLONE_:
    {
SDValue node0x1c02b5f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c02b250 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1c01ee50 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1c01eed0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1c01ef70 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x1c01d7f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c01d720 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bfb03d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c01d7f0, node0x1c01eed0);
SDValue node0x1bfb2c80 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c01d7f0, node0x1c01ee50);
SDValue node0x1bfb2bc0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c01d7f0, node0x1c02b250);
SDValue node0x1c01b260 = dag->getLoad(MVT::i16, dl, entry, node0x1c01d7f0, mpi, 1);
SDValue node0x1c01b190 = dag->getLoad(MVT::i16, dl, entry, node0x1c02b5f0, mpi, 1);
SDValue node0x1bfaf000 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c01b190, node0x1c01b260);
SDValue node0x1c01db30 = dag->getLoad(MVT::i16, dl, entry, node0x1bfb2bc0, mpi, 1);
SDValue node0x1bfa8990 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1bfaf000, node0x1c01ef70);
SDValue node0x1c01fa80 = dag->getLoad(MVT::i16, dl, entry, node0x1c02b250, mpi, 1);
SDValue node0x1bfaa4e0 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x1bfa8990);
SDValue node0x1bfaa420 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c01fa80, node0x1c01db30);
SDValue node0x1c01f9b0 = dag->getLoad(MVT::i16, dl, entry, node0x1bfb2c80, mpi, 1);
SDValue node0x1bfa9d10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c01d720, node0x1bfaa4e0);
SDValue node0x1bfac610 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1bfaa420, node0x1c01ef70);
SDValue node0x1c01f8e0 = dag->getLoad(MVT::i16, dl, entry, node0x1c01ee50, mpi, 1);
SDValue node0x1bfac550 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x1bfac610);
SDValue node0x1bfabf90 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c01f8e0, node0x1c01f9b0);
SDValue node0x1c01f810 = dag->getLoad(MVT::i16, dl, entry, node0x1bfb03d0, mpi, 1);
SDValue node0x1bfa88d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bfa9d10, node0x1bfac550);
SDValue node0x1bfa4920 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1bfabf90, node0x1c01ef70);
SDValue node0x1c01f500 = dag->getLoad(MVT::i16, dl, entry, node0x1c01eed0, mpi, 1);
SDValue node0x1bfa4890 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x1bfa4920);
SDValue node0x1bfa6010 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c01f500, node0x1c01f810);
SDValue node0x1bfa5f50 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bfa88d0, node0x1bfa4890);
SDValue node0x1bfa5990 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1bfa6010, node0x1c01ef70);
SDValue node0x1bfa86d0 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x1bfa5990);
SDValue node0x1bfa8840 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bfa5f50, node0x1bfa86d0);
SDValue node0x1bba26b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bfa8840, SDValue());
roots.reserve(1);
roots.push_back(node0x1bba26b0);
dag->setRoot(node0x1bba26b0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__regs__regs__AEXT_CLONE_:
    {
SDValue node0x1c02e580 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1c02e260 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1c02e1e0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1c01f0b0 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x1c01dcd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(3), MVT::i32);
SDValue node0x1c01dc00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c01fb50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bfa4720 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c01dcd0, node0x1c02e1e0);
SDValue node0x1bfa1c30 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c01dcd0, node0x1c02e260);
SDValue node0x1bfa1b70 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c01dcd0, node0x1c02e580);
SDValue node0x1c01fcf0 = dag->getLoad(MVT::i16, dl, entry, node0x1c01dcd0, mpi, 1);
SDValue node0x1bfa1510 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c01fb50, node0x1c02e1e0);
SDValue node0x1bfa37d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c01fb50, node0x1c02e260);
SDValue node0x1bfa3710 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c01fb50, node0x1c02e580);
SDValue node0x1c01fc20 = dag->getLoad(MVT::i16, dl, entry, node0x1c01fb50, mpi, 1);
SDValue node0x1bfa3000 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c01fc20, node0x1c01fcf0);
SDValue node0x1bba4440 = dag->getLoad(MVT::i16, dl, entry, node0x1bfa1b70, mpi, 1);
SDValue node0x1bfa49e0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1bfa3000, node0x1c01f0b0);
SDValue node0x1bba4500 = dag->getLoad(MVT::i16, dl, entry, node0x1bfa3710, mpi, 1);
SDValue node0x1bf9eb70 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x1bfa49e0);
SDValue node0x1bf9c1e0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1bba4500, node0x1bba4440);
SDValue node0x1bba45c0 = dag->getLoad(MVT::i16, dl, entry, node0x1bfa1c30, mpi, 1);
SDValue node0x1bf9dbc0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c01dc00, node0x1bf9eb70);
SDValue node0x1bf9d900 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1bf9c1e0, node0x1c01f0b0);
SDValue node0x1bba46b0 = dag->getLoad(MVT::i16, dl, entry, node0x1bfa37d0, mpi, 1);
SDValue node0x1bf9db00 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x1bf9d900);
SDValue node0x1bf9da70 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1bba46b0, node0x1bba45c0);
SDValue node0x1bba4770 = dag->getLoad(MVT::i16, dl, entry, node0x1bfa4720, mpi, 1);
SDValue node0x1bf9f1f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bf9dbc0, node0x1bf9db00);
SDValue node0x1bf9f130 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1bf9da70, node0x1c01f0b0);
SDValue node0x1bba4860 = dag->getLoad(MVT::i16, dl, entry, node0x1bfa1510, mpi, 1);
SDValue node0x1bf9c8f0 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x1bf9f130);
SDValue node0x1bf98470 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1bba4860, node0x1bba4770);
SDValue node0x1bf983b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bf9f1f0, node0x1bf9c8f0);
SDValue node0x1bf97df0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1bf98470, node0x1c01f0b0);
SDValue node0x1bf9ae10 = dag->getNode(ISD::ANY_EXTEND, dl, MVT::i32, node0x1bf97df0);
SDValue node0x1bf9ad50 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bf983b0, node0x1bf9ae10);
SDValue node0x1bba49b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf9ad50, SDValue());
roots.reserve(1);
roots.push_back(node0x1bba49b0);
dag->setRoot(node0x1bba49b0);
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
SDValue node0x1bf00160 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1beffe70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bf00160, SDValue());
roots.reserve(1);
roots.push_back(node0x1beffe70);
dag->setRoot(node0x1beffe70);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__:
    {
SDValue node0x1c00a180 = dag->getConstant(8LL, dl, MVT::i32);
SDValue node0x1c00a3a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c00a450 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c00a500 = dag->getRegister(TargetRegisterInfo::index2VirtReg(3), MVT::i32);
SDValue node0x1c003480 = dag->getNode(ISD::MUL, dl, MVT::i32, node0x1c00a3a0, node0x1c00a450);
SDValue node0x1c00a5d0 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x1c003480, node0x1c00a180);
SDValue node0x1c00a690 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c00a5d0, node0x1c00a500);
SDValue node0x1c009fc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c00a690, SDValue());
roots.reserve(1);
roots.push_back(node0x1c009fc0);
dag->setRoot(node0x1c009fc0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__:
    {
SDValue node0x1c024a60 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c024ae0 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1c024b80 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1c024c20 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1c024cc0 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x1c024e40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c024ef0 = dag->getLoad(MVT::i16, dl, entry, node0x1c024a60, mpi, 1);
SDValue node0x1c024fc0 = dag->getLoad(MVT::i16, dl, entry, node0x1c024a60, mpi, 1);
SDValue node0x1c022800 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c024fc0, node0x1c024ef0);
SDValue node0x1c0250b0 = dag->getLoad(MVT::i16, dl, entry, node0x1c024ae0, mpi, 1);
SDValue node0x1c025180 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c022800, node0x1c024cc0);
SDValue node0x1c025240 = dag->getLoad(MVT::i16, dl, entry, node0x1c024ae0, mpi, 1);
SDValue node0x1c025310 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x1c025180);
SDValue node0x1c0253c0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c025240, node0x1c0250b0);
SDValue node0x1c025480 = dag->getLoad(MVT::i16, dl, entry, node0x1c024b80, mpi, 1);
SDValue node0x1c025550 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c024e40, node0x1c025310);
SDValue node0x1c025610 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c0253c0, node0x1c024cc0);
SDValue node0x1c0256d0 = dag->getLoad(MVT::i16, dl, entry, node0x1c024b80, mpi, 1);
SDValue node0x1c0257a0 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x1c025610);
SDValue node0x1c025850 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c0256d0, node0x1c025480);
SDValue node0x1c025910 = dag->getLoad(MVT::i16, dl, entry, node0x1c024c20, mpi, 1);
SDValue node0x1c0259e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c025550, node0x1c0257a0);
SDValue node0x1c025aa0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c025850, node0x1c024cc0);
SDValue node0x1c025b60 = dag->getLoad(MVT::i16, dl, entry, node0x1c024c20, mpi, 1);
SDValue node0x1c025c30 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x1c025aa0);
SDValue node0x1c025ce0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c025b60, node0x1c025910);
SDValue node0x1c025da0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c0259e0, node0x1c025c30);
SDValue node0x1c025e60 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c025ce0, node0x1c024cc0);
SDValue node0x1c025f20 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x1c025e60);
SDValue node0x1c025fd0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c025da0, node0x1c025f20);
SDValue node0x1c0249c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c025fd0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0249c0);
dag->setRoot(node0x1c0249c0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__regs__:
    {
SDValue node0x1c0278b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c0279d0 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1c027a70 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1c027b10 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1c027bb0 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x1c027d30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c027de0 = dag->getLoad(MVT::i16, dl, entry, node0x1c0278b0, mpi, 1);
SDValue node0x1c027eb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c027f60 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c027eb0, node0x1c027b10);
SDValue node0x1c027ff0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c027eb0, node0x1c027a70);
SDValue node0x1c0280b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c027eb0, node0x1c0279d0);
SDValue node0x1c028170 = dag->getLoad(MVT::i16, dl, entry, node0x1c027eb0, mpi, 1);
SDValue node0x1c028240 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c028170, node0x1c027de0);
SDValue node0x1c028300 = dag->getLoad(MVT::i16, dl, entry, node0x1c0279d0, mpi, 1);
SDValue node0x1c0283d0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c028240, node0x1c027bb0);
SDValue node0x1c028490 = dag->getLoad(MVT::i16, dl, entry, node0x1c0280b0, mpi, 1);
SDValue node0x1c028560 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x1c0283d0);
SDValue node0x1c028610 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c028490, node0x1c028300);
SDValue node0x1c0286d0 = dag->getLoad(MVT::i16, dl, entry, node0x1c027a70, mpi, 1);
SDValue node0x1c0287a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c027d30, node0x1c028560);
SDValue node0x1c028860 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c028610, node0x1c027bb0);
SDValue node0x1c028920 = dag->getLoad(MVT::i16, dl, entry, node0x1c027ff0, mpi, 1);
SDValue node0x1c0289f0 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x1c028860);
SDValue node0x1c028aa0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c028920, node0x1c0286d0);
SDValue node0x1c028b60 = dag->getLoad(MVT::i16, dl, entry, node0x1c027b10, mpi, 1);
SDValue node0x1c028c30 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c0287a0, node0x1c0289f0);
SDValue node0x1c028cf0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c028aa0, node0x1c027bb0);
SDValue node0x1c028db0 = dag->getLoad(MVT::i16, dl, entry, node0x1c027f60, mpi, 1);
SDValue node0x1c028e80 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x1c028cf0);
SDValue node0x1c028f30 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c028db0, node0x1c028b60);
SDValue node0x1c028ff0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c028c30, node0x1c028e80);
SDValue node0x1c0290b0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c028f30, node0x1c027bb0);
SDValue node0x1c029170 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x1c0290b0);
SDValue node0x1c029220 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c028ff0, node0x1c029170);
SDValue node0x1c0268f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c029220, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0268f0);
dag->setRoot(node0x1c0268f0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0__:
    {
SDValue node0x1c02b2d0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c02b370 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1c02b410 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1c02b4b0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1c02b550 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x1c02b6d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c02b780 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c02b830 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c02b6d0, node0x1c02b4b0);
SDValue node0x1c02b8c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c02b6d0, node0x1c02b410);
SDValue node0x1c02b980 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c02b6d0, node0x1c02b370);
SDValue node0x1c02ba40 = dag->getLoad(MVT::i16, dl, entry, node0x1c02b6d0, mpi, 1);
SDValue node0x1c02bb10 = dag->getLoad(MVT::i16, dl, entry, node0x1c02b2d0, mpi, 1);
SDValue node0x1c02bbe0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c02bb10, node0x1c02ba40);
SDValue node0x1c02bca0 = dag->getLoad(MVT::i16, dl, entry, node0x1c02b980, mpi, 1);
SDValue node0x1c02bd70 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c02bbe0, node0x1c02b550);
SDValue node0x1c02be30 = dag->getLoad(MVT::i16, dl, entry, node0x1c02b370, mpi, 1);
SDValue node0x1c02bf00 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x1c02bd70);
SDValue node0x1c02bfb0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c02be30, node0x1c02bca0);
SDValue node0x1c02c070 = dag->getLoad(MVT::i16, dl, entry, node0x1c02b8c0, mpi, 1);
SDValue node0x1c02c140 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c02b780, node0x1c02bf00);
SDValue node0x1c02c200 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c02bfb0, node0x1c02b550);
SDValue node0x1c02c2c0 = dag->getLoad(MVT::i16, dl, entry, node0x1c02b410, mpi, 1);
SDValue node0x1c02c390 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x1c02c200);
SDValue node0x1c02c440 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c02c2c0, node0x1c02c070);
SDValue node0x1c02c500 = dag->getLoad(MVT::i16, dl, entry, node0x1c02b830, mpi, 1);
SDValue node0x1c02c5d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c02c140, node0x1c02c390);
SDValue node0x1c02c690 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c02c440, node0x1c02b550);
SDValue node0x1c02c750 = dag->getLoad(MVT::i16, dl, entry, node0x1c02b4b0, mpi, 1);
SDValue node0x1c02c820 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x1c02c690);
SDValue node0x1c02c8d0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c02c750, node0x1c02c500);
SDValue node0x1c02c990 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c02c5d0, node0x1c02c820);
SDValue node0x1c02ca50 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c02c8d0, node0x1c02b550);
SDValue node0x1c02cb10 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x1c02ca50);
SDValue node0x1c02cbc0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c02c990, node0x1c02cb10);
SDValue node0x1c026530 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c02cbc0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c026530);
dag->setRoot(node0x1c026530);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__regs__regs__:
    {
SDValue node0x1c02e300 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1c02e3a0 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1c02e440 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1c02e4e0 = dag->getConstant(8LL, dl, MVT::i16);
SDValue node0x1c02e660 = dag->getRegister(TargetRegisterInfo::index2VirtReg(3), MVT::i32);
SDValue node0x1c02e710 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c02e7c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c02e870 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c02e660, node0x1c02e440);
SDValue node0x1c02e900 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c02e660, node0x1c02e3a0);
SDValue node0x1c02e9c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c02e660, node0x1c02e300);
SDValue node0x1c02ea80 = dag->getLoad(MVT::i16, dl, entry, node0x1c02e660, mpi, 1);
SDValue node0x1c02eb50 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c02e7c0, node0x1c02e440);
SDValue node0x1c02ec10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c02e7c0, node0x1c02e3a0);
SDValue node0x1c02ecd0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c02e7c0, node0x1c02e300);
SDValue node0x1c02ed90 = dag->getLoad(MVT::i16, dl, entry, node0x1c02e7c0, mpi, 1);
SDValue node0x1c02ee60 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c02ed90, node0x1c02ea80);
SDValue node0x1c02ef20 = dag->getLoad(MVT::i16, dl, entry, node0x1c02e9c0, mpi, 1);
SDValue node0x1c02eff0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c02ee60, node0x1c02e4e0);
SDValue node0x1c02f0b0 = dag->getLoad(MVT::i16, dl, entry, node0x1c02ecd0, mpi, 1);
SDValue node0x1c02f180 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x1c02eff0);
SDValue node0x1c02f230 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c02f0b0, node0x1c02ef20);
SDValue node0x1c02f2f0 = dag->getLoad(MVT::i16, dl, entry, node0x1c02e900, mpi, 1);
SDValue node0x1c02f3c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c02e710, node0x1c02f180);
SDValue node0x1c02f480 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c02f230, node0x1c02e4e0);
SDValue node0x1c02f540 = dag->getLoad(MVT::i16, dl, entry, node0x1c02ec10, mpi, 1);
SDValue node0x1c02f610 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x1c02f480);
SDValue node0x1c02f6c0 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c02f540, node0x1c02f2f0);
SDValue node0x1c02f780 = dag->getLoad(MVT::i16, dl, entry, node0x1c02e870, mpi, 1);
SDValue node0x1c02f850 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c02f3c0, node0x1c02f610);
SDValue node0x1c02f910 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c02f6c0, node0x1c02e4e0);
SDValue node0x1c02f9d0 = dag->getLoad(MVT::i16, dl, entry, node0x1c02eb50, mpi, 1);
SDValue node0x1c02faa0 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x1c02f910);
SDValue node0x1c02fb50 = dag->getNode(ISD::MUL, dl, MVT::i16, node0x1c02f9d0, node0x1c02f780);
SDValue node0x1c02fc10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c02f850, node0x1c02faa0);
SDValue node0x1c02fcd0 = dag->getNode(ISD::SRA, dl, MVT::i16, node0x1c02fb50, node0x1c02e4e0);
SDValue node0x1c02fd90 = dag->getNode(ISD::SIGN_EXTEND, dl, MVT::i32, node0x1c02fcd0);
SDValue node0x1c02fe40 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c02fc10, node0x1c02fd90);
SDValue node0x1c029d20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c02fe40, SDValue());
roots.reserve(1);
roots.push_back(node0x1c029d20);
dag->setRoot(node0x1c029d20);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__regs__reg0__reg0__:
    {
SDValue node0x1c04b600 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c04b680 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1c04b720 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1c04b7c0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1c049390 = dag->getNode(ISD::UNDEF, dl, MVT::i32);
SDValue node0x1c04b960 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c04ba10 = dag->getLoad(MVT::i16, dl, entry, node0x1c04b600, mpi, 1);
SDValue node0x1c04bae0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c04b960, node0x1c04b7c0);
SDValue node0x1c04bb70 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c04b960, node0x1c04b720);
SDValue node0x1c04bc30 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c04b960, node0x1c04b680);
SDValue node0x1c04bcf0 = dag->getLoad(MVT::i16, dl, entry, node0x1c04b600, mpi, 1);
SDValue node0x1c04bdc0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c04bcf0, node0x1c04ba10);
SDValue node0x1c0494d0 = dag->getStore(entry, dl, node0x1c04bdc0, node0x1c04b960, mpi, 1);
SDValue node0x1c04bed0 = dag->getLoad(MVT::i16, dl, node0x1c0494d0, node0x1c04b680, mpi, 1);
SDValue node0x1c04bfa0 = dag->getLoad(MVT::i16, dl, node0x1c0494d0, node0x1c04b680, mpi, 1);
SDValue node0x1c04c070 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c04bfa0, node0x1c04bed0);
SDValue node0x1c04c130 = dag->getStore(node0x1c0494d0, dl, node0x1c04c070, node0x1c04bc30, mpi, 1);
SDValue node0x1c04c1e0 = dag->getLoad(MVT::i16, dl, node0x1c04c130, node0x1c04b720, mpi, 1);
SDValue node0x1c04c2b0 = dag->getLoad(MVT::i16, dl, node0x1c04c130, node0x1c04b720, mpi, 1);
SDValue node0x1c04c380 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c04c2b0, node0x1c04c1e0);
SDValue node0x1c04c440 = dag->getStore(node0x1c04c130, dl, node0x1c04c380, node0x1c04bb70, mpi, 1);
SDValue node0x1c04c4f0 = dag->getLoad(MVT::i16, dl, node0x1c04c440, node0x1c04b7c0, mpi, 1);
SDValue node0x1c04c5c0 = dag->getLoad(MVT::i16, dl, node0x1c04c440, node0x1c04b7c0, mpi, 1);
SDValue node0x1c04c690 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c04c5c0, node0x1c04c4f0);
SDValue node0x1c04c750 = dag->getStore(node0x1c04c440, dl, node0x1c04c690, node0x1c04bae0, mpi, 1);
SDValue node0x1c04b560 = dag->getCopyToReg(node0x1c04c750, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c049390, SDValue());
roots.reserve(5);
roots.push_back(node0x1c04b560);
roots.push_back(node0x1c0494d0);
roots.push_back(node0x1c04c130);
roots.push_back(node0x1c04c440);
roots.push_back(node0x1c04c750);
dag->setRoot(node0x1c04b560);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__regs__reg0__regs__:
    {
SDValue node0x1c04ddb0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c04ded0 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1c04df70 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1c04e010 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1c04e0b0 = dag->getNode(ISD::UNDEF, dl, MVT::i32);
SDValue node0x1c04e220 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c04e2d0 = dag->getLoad(MVT::i16, dl, entry, node0x1c04ddb0, mpi, 1);
SDValue node0x1c04e3a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c04e450 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c04e220, node0x1c04e010);
SDValue node0x1c04e4e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c04e220, node0x1c04df70);
SDValue node0x1c04e5a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c04e220, node0x1c04ded0);
SDValue node0x1c04e660 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c04e3a0, node0x1c04e010);
SDValue node0x1c04e720 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c04e3a0, node0x1c04df70);
SDValue node0x1c04e7e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c04e3a0, node0x1c04ded0);
SDValue node0x1c04e8a0 = dag->getLoad(MVT::i16, dl, entry, node0x1c04e3a0, mpi, 1);
SDValue node0x1c04e970 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c04e8a0, node0x1c04e2d0);
SDValue node0x1c04dcd0 = dag->getStore(entry, dl, node0x1c04e970, node0x1c04e220, mpi, 1);
SDValue node0x1c04ea80 = dag->getLoad(MVT::i16, dl, node0x1c04dcd0, node0x1c04ded0, mpi, 1);
SDValue node0x1c04eb50 = dag->getLoad(MVT::i16, dl, node0x1c04dcd0, node0x1c04e7e0, mpi, 1);
SDValue node0x1c04ec20 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c04eb50, node0x1c04ea80);
SDValue node0x1c04ece0 = dag->getStore(node0x1c04dcd0, dl, node0x1c04ec20, node0x1c04e5a0, mpi, 1);
SDValue node0x1c04ed90 = dag->getLoad(MVT::i16, dl, node0x1c04ece0, node0x1c04df70, mpi, 1);
SDValue node0x1c04ee60 = dag->getLoad(MVT::i16, dl, node0x1c04ece0, node0x1c04e720, mpi, 1);
SDValue node0x1c04ef30 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c04ee60, node0x1c04ed90);
SDValue node0x1c04eff0 = dag->getStore(node0x1c04ece0, dl, node0x1c04ef30, node0x1c04e4e0, mpi, 1);
SDValue node0x1c04f0a0 = dag->getLoad(MVT::i16, dl, node0x1c04eff0, node0x1c04e010, mpi, 1);
SDValue node0x1c04f170 = dag->getLoad(MVT::i16, dl, node0x1c04eff0, node0x1c04e660, mpi, 1);
SDValue node0x1c04f240 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c04f170, node0x1c04f0a0);
SDValue node0x1c04f300 = dag->getStore(node0x1c04eff0, dl, node0x1c04f240, node0x1c04e450, mpi, 1);
SDValue node0x1c04c930 = dag->getCopyToReg(node0x1c04f300, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c04e0b0, SDValue());
roots.reserve(5);
roots.push_back(node0x1c04c930);
roots.push_back(node0x1c04dcd0);
roots.push_back(node0x1c04ece0);
roots.push_back(node0x1c04eff0);
roots.push_back(node0x1c04f300);
dag->setRoot(node0x1c04c930);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__regs__regs__reg0__:
    {
SDValue node0x1c051400 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c0514a0 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1c051540 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1c0515e0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1c051680 = dag->getNode(ISD::UNDEF, dl, MVT::i32);
SDValue node0x1c0517f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0518a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c051950 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c0517f0, node0x1c0515e0);
SDValue node0x1c0519e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c0517f0, node0x1c051540);
SDValue node0x1c051aa0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c0517f0, node0x1c0514a0);
SDValue node0x1c051b60 = dag->getLoad(MVT::i16, dl, entry, node0x1c0517f0, mpi, 1);
SDValue node0x1c051c30 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c0518a0, node0x1c0515e0);
SDValue node0x1c051cf0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c0518a0, node0x1c051540);
SDValue node0x1c051db0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c0518a0, node0x1c0514a0);
SDValue node0x1c051e70 = dag->getLoad(MVT::i16, dl, entry, node0x1c051400, mpi, 1);
SDValue node0x1c051f40 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c051e70, node0x1c051b60);
SDValue node0x1c0505e0 = dag->getStore(entry, dl, node0x1c051f40, node0x1c0518a0, mpi, 1);
SDValue node0x1c052050 = dag->getLoad(MVT::i16, dl, node0x1c0505e0, node0x1c051aa0, mpi, 1);
SDValue node0x1c052120 = dag->getLoad(MVT::i16, dl, node0x1c0505e0, node0x1c0514a0, mpi, 1);
SDValue node0x1c0521f0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c052120, node0x1c052050);
SDValue node0x1c0522b0 = dag->getStore(node0x1c0505e0, dl, node0x1c0521f0, node0x1c051db0, mpi, 1);
SDValue node0x1c052360 = dag->getLoad(MVT::i16, dl, node0x1c0522b0, node0x1c0519e0, mpi, 1);
SDValue node0x1c052430 = dag->getLoad(MVT::i16, dl, node0x1c0522b0, node0x1c051540, mpi, 1);
SDValue node0x1c052500 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c052430, node0x1c052360);
SDValue node0x1c0525c0 = dag->getStore(node0x1c0522b0, dl, node0x1c052500, node0x1c051cf0, mpi, 1);
SDValue node0x1c052670 = dag->getLoad(MVT::i16, dl, node0x1c0525c0, node0x1c051950, mpi, 1);
SDValue node0x1c052740 = dag->getLoad(MVT::i16, dl, node0x1c0525c0, node0x1c0515e0, mpi, 1);
SDValue node0x1c052810 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c052740, node0x1c052670);
SDValue node0x1c0528d0 = dag->getStore(node0x1c0525c0, dl, node0x1c052810, node0x1c051c30, mpi, 1);
SDValue node0x1c04f4e0 = dag->getCopyToReg(node0x1c0528d0, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c051680, SDValue());
roots.reserve(5);
roots.push_back(node0x1c04f4e0);
roots.push_back(node0x1c0505e0);
roots.push_back(node0x1c0522b0);
roots.push_back(node0x1c0525c0);
roots.push_back(node0x1c0528d0);
dag->setRoot(node0x1c04f4e0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__regs__regs__regs__:
    {
SDValue node0x1c054060 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1c054100 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1c0541a0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1c054240 = dag->getNode(ISD::UNDEF, dl, MVT::i32);
SDValue node0x1c0543b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c054460 = dag->getRegister(TargetRegisterInfo::index2VirtReg(3), MVT::i32);
SDValue node0x1c054510 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0545c0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c0543b0, node0x1c0541a0);
SDValue node0x1c054650 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c0543b0, node0x1c054100);
SDValue node0x1c054710 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c0543b0, node0x1c054060);
SDValue node0x1c0547d0 = dag->getLoad(MVT::i16, dl, entry, node0x1c0543b0, mpi, 1);
SDValue node0x1c0548a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c054460, node0x1c0541a0);
SDValue node0x1c054960 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c054460, node0x1c054100);
SDValue node0x1c054a20 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c054460, node0x1c054060);
SDValue node0x1c054ae0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c054510, node0x1c0541a0);
SDValue node0x1c054ba0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c054510, node0x1c054100);
SDValue node0x1c054c60 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c054510, node0x1c054060);
SDValue node0x1c054d20 = dag->getLoad(MVT::i16, dl, entry, node0x1c054510, mpi, 1);
SDValue node0x1c054df0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c054d20, node0x1c0547d0);
SDValue node0x1c053e60 = dag->getStore(entry, dl, node0x1c054df0, node0x1c054460, mpi, 1);
SDValue node0x1c054f00 = dag->getLoad(MVT::i16, dl, node0x1c053e60, node0x1c054710, mpi, 1);
SDValue node0x1c054fd0 = dag->getLoad(MVT::i16, dl, node0x1c053e60, node0x1c054c60, mpi, 1);
SDValue node0x1c0550a0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c054fd0, node0x1c054f00);
SDValue node0x1c055160 = dag->getStore(node0x1c053e60, dl, node0x1c0550a0, node0x1c054a20, mpi, 1);
SDValue node0x1c055210 = dag->getLoad(MVT::i16, dl, node0x1c055160, node0x1c054650, mpi, 1);
SDValue node0x1c0552e0 = dag->getLoad(MVT::i16, dl, node0x1c055160, node0x1c054ba0, mpi, 1);
SDValue node0x1c0553b0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c0552e0, node0x1c055210);
SDValue node0x1c055470 = dag->getStore(node0x1c055160, dl, node0x1c0553b0, node0x1c054960, mpi, 1);
SDValue node0x1c055520 = dag->getLoad(MVT::i16, dl, node0x1c055470, node0x1c0545c0, mpi, 1);
SDValue node0x1c0555f0 = dag->getLoad(MVT::i16, dl, node0x1c055470, node0x1c054ae0, mpi, 1);
SDValue node0x1c0556c0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c0555f0, node0x1c055520);
SDValue node0x1c055780 = dag->getStore(node0x1c055470, dl, node0x1c0556c0, node0x1c0548a0, mpi, 1);
SDValue node0x1c04f440 = dag->getCopyToReg(node0x1c055780, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c054240, SDValue());
roots.reserve(5);
roots.push_back(node0x1c04f440);
roots.push_back(node0x1c053e60);
roots.push_back(node0x1c055160);
roots.push_back(node0x1c055470);
roots.push_back(node0x1c055780);
dag->setRoot(node0x1c04f440);
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
SDValue node0x1bc0dae0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bc0db60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bc0e550 = dag->getTruncStore(entry, dl, node0x1bc0dae0, node0x1bc0db60, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x1bc0e550);
dag->setRoot(node0x1bc0e550);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__i32_TRUNC_CLONE_:
    {
SDValue node0x1bc0cec0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bc08f50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bc0da60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bc07fb0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bc08f50, node0x1bc0da60);
SDValue node0x1bc0eed0 = dag->getTruncStore(entry, dl, node0x1bc0cec0, node0x1bc07fb0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x1bc0eed0);
dag->setRoot(node0x1bc0eed0);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_:
    {
SDValue node0x1bc0dbe0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bc0f4f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bc0f7e0 = dag->getTruncStore(entry, dl, node0x1bc0dbe0, node0x1bc0f4f0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x1bc0f7e0);
dag->setRoot(node0x1bc0f7e0);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__i32_TRUNC_CLONE_:
    {
SDValue node0x1bc0fe00 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bc0d390 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bc0fe80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bc091a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bc0d390, node0x1bc0fe80);
SDValue node0x1bc10260 = dag->getTruncStore(entry, dl, node0x1bc0fe00, node0x1bc091a0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x1bc10260);
dag->setRoot(node0x1bc10260);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_:
    {
SDValue node0x1bc105f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bc0d4b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bc107e0 = dag->getTruncStore(entry, dl, node0x1bc105f0, node0x1bc0d4b0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x1bc107e0);
dag->setRoot(node0x1bc107e0);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_:
    {
SDValue node0x1bc10bd0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c005840 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bc10db0 = dag->getTruncStore(entry, dl, node0x1bc10bd0, node0x1c005840, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x1bc10db0);
dag->setRoot(node0x1bc10db0);
    }
    break;
  case Codasip::i_jump_reg_alias__regs___RET_EMUL_:
    {
dag->setRoot(entry);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__0_REG_EMUL_:
    {
SDValue node0x1bc11130 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bc12630 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bc0d420 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bc17700 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bc12630, node0x1bc0d420);
SDValue node0x1bc0d540 = dag->getStore(entry, dl, node0x1bc11130, node0x1bc17700, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1bc0d540);
dag->setRoot(node0x1bc0d540);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__1_BIGIMM_EMUL_:
    {
SDValue node0x1bc11710 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bc123e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bc149b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bc16c20 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bc123e0, node0x1bc149b0);
SDValue node0x1bc13180 = dag->getStore(entry, dl, node0x1bc11710, node0x1bc16c20, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1bc13180);
dag->setRoot(node0x1bc13180);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__2_REG_EMUL_:
    {
SDValue node0x1bc17ca0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bc17480 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bc17d30 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bc17ca0, node0x1bc17480);
SDValue node0x1bc156e0 = dag->getLoad(MVT::i32, dl, entry, node0x1bc17d30, mpi, 1);
SDValue node0x1bc18570 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bc156e0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bc18570);
dag->setRoot(node0x1bc18570);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__3_BIGIMM_EMUL_:
    {
SDValue node0x1bc16790 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bc19970 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bc16520 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bc16790, node0x1bc19970);
SDValue node0x1bc17da0 = dag->getLoad(MVT::i32, dl, entry, node0x1bc16520, mpi, 1);
SDValue node0x1bc138c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bc17da0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bc138c0);
dag->setRoot(node0x1bc138c0);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_simple__regs__4_BIGIMM_EMUL_:
    {
SDValue node0x1bc16e70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bc15230 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bc1a300 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bc16bb0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bc15230, node0x1bc1a300);
SDValue node0x1bc11280 = dag->getStore(entry, dl, node0x1bc16e70, node0x1bc16bb0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1bc11280);
dag->setRoot(node0x1bc11280);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__5_BIGIMM_EMUL_:
    {
SDValue node0x1bc17930 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bc1aed0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bc17c30 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bc17930, node0x1bc1aed0);
SDValue node0x1bc15f00 = dag->getLoad(MVT::i32, dl, entry, node0x1bc17c30, mpi, 1);
SDValue node0x1bc1af50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bc15f00, SDValue());
roots.reserve(1);
roots.push_back(node0x1bc1af50);
dag->setRoot(node0x1bc1af50);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__6_BIGIMM_EMUL_:
    {
SDValue node0x1bc17510 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bc1b9f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bc16b40 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bc17510, node0x1bc1b9f0);
SDValue node0x1bc1ba70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bc16b40, SDValue());
roots.reserve(1);
roots.push_back(node0x1bc1ba70);
dag->setRoot(node0x1bc1ba70);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__7_BIGIMM_EMUL_:
    {
SDValue node0x1bc152c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bc1c5b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bc163b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bc152c0, node0x1bc1c5b0);
SDValue node0x1bc1c630 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bc163b0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bc1c630);
dag->setRoot(node0x1bc1c630);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__8_BIGIMM_EMUL_:
    {
SDValue node0x1bc1bfe0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bc1d160 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bc15420 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bc1bfe0, node0x1bc1d160);
SDValue node0x1bc1d1e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bc15420, SDValue());
roots.reserve(1);
roots.push_back(node0x1bc1d1e0);
dag->setRoot(node0x1bc1d1e0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0__MOI_CLONE_:
    {
SDValue node0x1bd7cc20 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c1bba00 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1bd7d920 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1bd7c140 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1bd7d6c0 = dag->getLoad(MVT::i16, dl, entry, node0x1bd7cc20, mpi, 1);
SDValue node0x1c1bc2d0 = dag->getLoad(MVT::i16, dl, entry, node0x1bd7cc20, mpi, 1);
SDValue node0x1c1bc580 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c1bc2d0, node0x1bd7d6c0);
SDValue node0x1c1bd530 = dag->getStore(entry, dl, node0x1c1bc580, node0x1bd7cc20, mpi, 1);
SDValue node0x1c1bc240 = dag->getLoad(MVT::i16, dl, node0x1c1bd530, node0x1c1bba00, mpi, 1);
SDValue node0x1c1bd5f0 = dag->getLoad(MVT::i16, dl, node0x1c1bd530, node0x1c1bba00, mpi, 1);
SDValue node0x1c1ba1b0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c1bd5f0, node0x1c1bc240);
SDValue node0x1c1bd6e0 = dag->getStore(node0x1c1bd530, dl, node0x1c1ba1b0, node0x1c1bba00, mpi, 1);
SDValue node0x1c1bd760 = dag->getLoad(MVT::i16, dl, node0x1c1bd6e0, node0x1bd7d920, mpi, 1);
SDValue node0x1c1bd830 = dag->getLoad(MVT::i16, dl, node0x1c1bd6e0, node0x1bd7d920, mpi, 1);
SDValue node0x1c1bc430 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c1bd830, node0x1c1bd760);
SDValue node0x1c1bd920 = dag->getStore(node0x1c1bd6e0, dl, node0x1c1bc430, node0x1bd7d920, mpi, 1);
SDValue node0x1c1bd9a0 = dag->getLoad(MVT::i16, dl, node0x1c1bd920, node0x1bd7c140, mpi, 1);
SDValue node0x1c1bda70 = dag->getLoad(MVT::i16, dl, node0x1c1bd920, node0x1bd7c140, mpi, 1);
SDValue node0x1c1bc8a0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c1bda70, node0x1c1bd9a0);
SDValue node0x1c1bdb60 = dag->getStore(node0x1c1bd920, dl, node0x1c1bc8a0, node0x1bd7c140, mpi, 1);
roots.reserve(4);
roots.push_back(node0x1c1bd530);
roots.push_back(node0x1c1bd6e0);
roots.push_back(node0x1c1bd920);
roots.push_back(node0x1c1bdb60);
dag->setRoot(node0x1c1bdb60);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__regs__MOI_CLONE_:
    {
SDValue node0x1c1bc910 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c1bbd20 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1c1be280 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1c1be320 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1c1be3c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1c1be470 = dag->getLoad(MVT::i16, dl, entry, node0x1c1bc910, mpi, 1);
SDValue node0x1c1bb840 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c1be3c0, node0x1c1be320);
SDValue node0x1c1bc670 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c1be3c0, node0x1c1be280);
SDValue node0x1c1bc4a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c1be3c0, node0x1c1bbd20);
SDValue node0x1c1be630 = dag->getLoad(MVT::i16, dl, entry, node0x1c1be3c0, mpi, 1);
SDValue node0x1c1ba4d0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c1be630, node0x1c1be470);
SDValue node0x1c1be750 = dag->getStore(entry, dl, node0x1c1ba4d0, node0x1c1bc910, mpi, 1);
SDValue node0x1c1be800 = dag->getLoad(MVT::i16, dl, node0x1c1be750, node0x1c1bbd20, mpi, 1);
SDValue node0x1c1be8d0 = dag->getLoad(MVT::i16, dl, node0x1c1be750, node0x1c1bc4a0, mpi, 1);
SDValue node0x1c1bb0c0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c1be8d0, node0x1c1be800);
SDValue node0x1c1be9f0 = dag->getStore(node0x1c1be750, dl, node0x1c1bb0c0, node0x1c1bbd20, mpi, 1);
SDValue node0x1c1beaa0 = dag->getLoad(MVT::i16, dl, node0x1c1be9f0, node0x1c1be280, mpi, 1);
SDValue node0x1c1beb70 = dag->getLoad(MVT::i16, dl, node0x1c1be9f0, node0x1c1bc670, mpi, 1);
SDValue node0x1bd7e510 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c1beb70, node0x1c1beaa0);
SDValue node0x1c1bec90 = dag->getStore(node0x1c1be9f0, dl, node0x1bd7e510, node0x1c1be280, mpi, 1);
SDValue node0x1c1bed40 = dag->getLoad(MVT::i16, dl, node0x1c1bec90, node0x1c1be320, mpi, 1);
SDValue node0x1c1bee10 = dag->getLoad(MVT::i16, dl, node0x1c1bec90, node0x1c1bb840, mpi, 1);
SDValue node0x1c1b98e0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c1bee10, node0x1c1bed40);
SDValue node0x1c1bef30 = dag->getStore(node0x1c1bec90, dl, node0x1c1b98e0, node0x1c1be320, mpi, 1);
roots.reserve(4);
roots.push_back(node0x1c1be750);
roots.push_back(node0x1c1be9f0);
roots.push_back(node0x1c1bec90);
roots.push_back(node0x1c1bef30);
dag->setRoot(node0x1c1bef30);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0__MOI_CLONE_:
    {
SDValue node0x1c1bfd20 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c1bfdc0 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1c1bfe60 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1c1bff00 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1c1bffa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bd7e5f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c1bffa0, node0x1c1bff00);
SDValue node0x1c1bbcb0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c1bffa0, node0x1c1bfe60);
SDValue node0x1c1bb990 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c1bffa0, node0x1c1bfdc0);
SDValue node0x1c1c0140 = dag->getLoad(MVT::i16, dl, entry, node0x1c1bffa0, mpi, 1);
SDValue node0x1c1c0210 = dag->getLoad(MVT::i16, dl, entry, node0x1c1bfd20, mpi, 1);
SDValue node0x1c1b8cf0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c1c0210, node0x1c1c0140);
SDValue node0x1c1c0330 = dag->getStore(entry, dl, node0x1c1b8cf0, node0x1c1bfd20, mpi, 1);
SDValue node0x1c1c03e0 = dag->getLoad(MVT::i16, dl, node0x1c1c0330, node0x1c1bb990, mpi, 1);
SDValue node0x1c1c04b0 = dag->getLoad(MVT::i16, dl, node0x1c1c0330, node0x1c1bfdc0, mpi, 1);
SDValue node0x1c1bada0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c1c04b0, node0x1c1c03e0);
SDValue node0x1c1c05d0 = dag->getStore(node0x1c1c0330, dl, node0x1c1bada0, node0x1c1bfdc0, mpi, 1);
SDValue node0x1c1c0680 = dag->getLoad(MVT::i16, dl, node0x1c1c05d0, node0x1c1bbcb0, mpi, 1);
SDValue node0x1c1c0750 = dag->getLoad(MVT::i16, dl, node0x1c1c05d0, node0x1c1bfe60, mpi, 1);
SDValue node0x1c1c0820 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c1c0750, node0x1c1c0680);
SDValue node0x1c1c08e0 = dag->getStore(node0x1c1c05d0, dl, node0x1c1c0820, node0x1c1bfe60, mpi, 1);
SDValue node0x1c1c0990 = dag->getLoad(MVT::i16, dl, node0x1c1c08e0, node0x1bd7e5f0, mpi, 1);
SDValue node0x1c1c0a60 = dag->getLoad(MVT::i16, dl, node0x1c1c08e0, node0x1c1bff00, mpi, 1);
SDValue node0x1c1c0b30 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c1c0a60, node0x1c1c0990);
SDValue node0x1c1c0bf0 = dag->getStore(node0x1c1c08e0, dl, node0x1c1c0b30, node0x1c1bff00, mpi, 1);
roots.reserve(4);
roots.push_back(node0x1c1c0330);
roots.push_back(node0x1c1c05d0);
roots.push_back(node0x1c1c08e0);
roots.push_back(node0x1c1c0bf0);
dag->setRoot(node0x1c1c0bf0);
    }
    break;
  case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__regs__MOI_CLONE_:
    {
SDValue node0x1c1c19e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c1c1a80 = dag->getConstant(2LL, dl, MVT::i32);
SDValue node0x1c1c1b20 = dag->getConstant(4LL, dl, MVT::i32);
SDValue node0x1c1c1bc0 = dag->getConstant(6LL, dl, MVT::i32);
SDValue node0x1c1c1c60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c1c1d10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1c1c1dc0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c1c1c60, node0x1c1c1bc0);
SDValue node0x1c1c1e80 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c1c1c60, node0x1c1c1b20);
SDValue node0x1c1c1f40 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c1c1c60, node0x1c1c1a80);
SDValue node0x1c1c2000 = dag->getLoad(MVT::i16, dl, entry, node0x1c1c1c60, mpi, 1);
SDValue node0x1c1c20d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c1c1d10, node0x1c1c1bc0);
SDValue node0x1c1c2190 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c1c1d10, node0x1c1c1b20);
SDValue node0x1c1c2250 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c1c1d10, node0x1c1c1a80);
SDValue node0x1c1c2310 = dag->getLoad(MVT::i16, dl, entry, node0x1c1c1d10, mpi, 1);
SDValue node0x1c1c23e0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c1c2310, node0x1c1c2000);
SDValue node0x1c1c24a0 = dag->getStore(entry, dl, node0x1c1c23e0, node0x1c1c19e0, mpi, 1);
SDValue node0x1c1c2550 = dag->getLoad(MVT::i16, dl, node0x1c1c24a0, node0x1c1c1f40, mpi, 1);
SDValue node0x1c1c2620 = dag->getLoad(MVT::i16, dl, node0x1c1c24a0, node0x1c1c2250, mpi, 1);
SDValue node0x1c1c26f0 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c1c2620, node0x1c1c2550);
SDValue node0x1c1c27b0 = dag->getStore(node0x1c1c24a0, dl, node0x1c1c26f0, node0x1c1c1a80, mpi, 1);
SDValue node0x1c1c2860 = dag->getLoad(MVT::i16, dl, node0x1c1c27b0, node0x1c1c1e80, mpi, 1);
SDValue node0x1c1c2930 = dag->getLoad(MVT::i16, dl, node0x1c1c27b0, node0x1c1c2190, mpi, 1);
SDValue node0x1c1c2a00 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c1c2930, node0x1c1c2860);
SDValue node0x1c1c2ac0 = dag->getStore(node0x1c1c27b0, dl, node0x1c1c2a00, node0x1c1c1b20, mpi, 1);
SDValue node0x1c1c2b70 = dag->getLoad(MVT::i16, dl, node0x1c1c2ac0, node0x1c1c1dc0, mpi, 1);
SDValue node0x1c1c2c40 = dag->getLoad(MVT::i16, dl, node0x1c1c2ac0, node0x1c1c20d0, mpi, 1);
SDValue node0x1c1c2d10 = dag->getNode(ISD::ADD, dl, MVT::i16, node0x1c1c2c40, node0x1c1c2b70);
SDValue node0x1c1c2dd0 = dag->getStore(node0x1c1c2ac0, dl, node0x1c1c2d10, node0x1c1c1bc0, mpi, 1);
roots.reserve(4);
roots.push_back(node0x1c1c24a0);
roots.push_back(node0x1c1c27b0);
roots.push_back(node0x1c1c2ac0);
roots.push_back(node0x1c1c2dd0);
dag->setRoot(node0x1c1c2dd0);
    }
    break;
  case Codasip::c_addi_lo__opc_addi__regs__regs__:
    {
SDValue node0x1c11f6f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c178da0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c126d10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c11f6f0, node0x1c178da0);
SDValue node0x1c126cc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c126d10, SDValue());
roots.reserve(1);
roots.push_back(node0x1c126cc0);
dag->setRoot(node0x1c126cc0);
    }
    break;
  case Codasip::c_lui_hi__opc_lui__regs__:
    {
SDValue node0x1c1273c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c126f20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c1273c0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c126f20);
dag->setRoot(node0x1c126f20);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_lo__:
    {
SDValue node0x1bd89160 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bd88e40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bd89160, SDValue());
roots.reserve(1);
roots.push_back(node0x1bd88e40);
dag->setRoot(node0x1bd88e40);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x1bd89de0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bd89290 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bd89de0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bd89290);
dag->setRoot(node0x1bd89290);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_lo__:
    {
SDValue node0x1c195b50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bb768f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bb76990 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1c195b50, node0x1bb768f0);
SDValue node0x1bb76510 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bb76990, SDValue());
roots.reserve(1);
roots.push_back(node0x1bb76510);
dag->setRoot(node0x1bb76510);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x1bb9e340 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bdb1870 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bdb1910 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bb9e340, node0x1bdb1870);
SDValue node0x1bb76ba0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bdb1910, SDValue());
roots.reserve(1);
roots.push_back(node0x1bb76ba0);
dag->setRoot(node0x1bb76ba0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_lo__:
    {
SDValue node0x1c0a7d10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c17c720 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bd8a030 = dag->getNode(ISD::AND, dl, MVT::i32, node0x1c0a7d10, node0x1c17c720);
SDValue node0x1c17c340 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bd8a030, SDValue());
roots.reserve(1);
roots.push_back(node0x1c17c340);
dag->setRoot(node0x1c17c340);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x1c178670 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c17d5d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c17d670 = dag->getNode(ISD::AND, dl, MVT::i32, node0x1c178670, node0x1c17d5d0);
SDValue node0x1c17c960 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c17d670, SDValue());
roots.reserve(1);
roots.push_back(node0x1c17c960);
dag->setRoot(node0x1c17c960);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_lo__:
    {
SDValue node0x1c187a60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c187740 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c187a60, SDValue());
roots.reserve(1);
roots.push_back(node0x1c187740);
dag->setRoot(node0x1c187740);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x1c1886e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c187b90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c1886e0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c187b90);
dag->setRoot(node0x1c187b90);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_lo__:
    {
SDValue node0x1c18b410 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c18b740 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c18b7e0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x1c18b410, node0x1c18b740);
SDValue node0x1c18b2d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c18b7e0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c18b2d0);
dag->setRoot(node0x1c18b2d0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x1c18c3c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c18c6f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c18c790 = dag->getNode(ISD::OR, dl, MVT::i32, node0x1c18c3c0, node0x1c18c6f0);
SDValue node0x1c18b9f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c18c790, SDValue());
roots.reserve(1);
roots.push_back(node0x1c18b9f0);
dag->setRoot(node0x1c18b9f0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_lo__:
    {
SDValue node0x1c0aa910 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c0aa9f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0aaa90 = dag->getSetCC(dl, MVT::i32, node0x1c0aa9f0, node0x1c0aa910, ISD::SETGT);
SDValue node0x1c0aa6d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0aaa90, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0aa6d0);
dag->setRoot(node0x1c0aa6d0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x1c0ab800 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c0ab8e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0ab980 = dag->getSetCC(dl, MVT::i32, node0x1c0ab8e0, node0x1c0ab800, ISD::SETGT);
SDValue node0x1c0aad60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0ab980, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0aad60);
dag->setRoot(node0x1c0aad60);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_lo__:
    {
SDValue node0x1c0ae960 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0aec90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c0aed30 = dag->getSetCC(dl, MVT::i32, node0x1c0ae960, node0x1c0aec90, ISD::SETLT);
SDValue node0x1c0ae820 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0aed30, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0ae820);
dag->setRoot(node0x1c0ae820);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x1c0afa20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0afd50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c0afdf0 = dag->getSetCC(dl, MVT::i32, node0x1c0afa20, node0x1c0afd50, ISD::SETLT);
SDValue node0x1c0af050 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0afdf0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0af050);
dag->setRoot(node0x1c0af050);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_lo__:
    {
SDValue node0x1c0ba550 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c0ba630 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0ba6d0 = dag->getSetCC(dl, MVT::i32, node0x1c0ba630, node0x1c0ba550, ISD::SETNE);
SDValue node0x1c0ba310 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0ba6d0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0ba310);
dag->setRoot(node0x1c0ba310);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x1c0bb440 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1c0bb520 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0bb5c0 = dag->getSetCC(dl, MVT::i32, node0x1c0bb520, node0x1c0bb440, ISD::SETNE);
SDValue node0x1c0ba9a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0bb5c0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0ba9a0);
dag->setRoot(node0x1c0ba9a0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_lo__:
    {
SDValue node0x1c0be5a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0be8d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c0be970 = dag->getSetCC(dl, MVT::i32, node0x1c0be5a0, node0x1c0be8d0, ISD::SETULT);
SDValue node0x1c0be460 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0be970, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0be460);
dag->setRoot(node0x1c0be460);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x1c0bf660 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0bf990 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c0bfa30 = dag->getSetCC(dl, MVT::i32, node0x1c0bf660, node0x1c0bf990, ISD::SETULT);
SDValue node0x1c0bec90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0bfa30, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0bec90);
dag->setRoot(node0x1c0bec90);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_lo__:
    {
SDValue node0x1c0ca270 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0c9f50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0ca270, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0c9f50);
dag->setRoot(node0x1c0c9f50);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x1c0caef0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0ca3a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0caef0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0ca3a0);
dag->setRoot(node0x1c0ca3a0);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_lo__:
    {
SDValue node0x1c0cdd60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0ce090 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c0ce130 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x1c0cdd60, node0x1c0ce090);
SDValue node0x1c0cdc20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0ce130, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0cdc20);
dag->setRoot(node0x1c0cdc20);
    }
    break;
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x1c0ced10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1c0cf040 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1c0cf0e0 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x1c0ced10, node0x1c0cf040);
SDValue node0x1c0ce340 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1c0cf0e0, SDValue());
roots.reserve(1);
roots.push_back(node0x1c0ce340);
dag->setRoot(node0x1c0ce340);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_lo__:
    {
SDValue node0x1bdd8f40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x1bdd8c40 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x1bdd8f40);
roots.reserve(1);
roots.push_back(node0x1bdd8c40);
dag->setRoot(node0x1bdd8c40);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_pcrel_lo__:
    {
SDValue node0x1bdd99c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x1bdd96f0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x1bdd99c0);
roots.reserve(1);
roots.push_back(node0x1bdd96f0);
dag->setRoot(node0x1bdd96f0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_lo__:
    {
SDValue node0x1bde30d0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1bde1820 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bde30d0, SDValue());
SDValue node0x1bde3440 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bde30a0 = dag->getNode(ISD::BR, dl, MVT::Other, node0x1bde1820, node0x1bde3440);
roots.reserve(2);
roots.push_back(node0x1bde1820);
roots.push_back(node0x1bde30a0);
dag->setRoot(node0x1bde30a0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x1bde3de0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1bde3620 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bde3de0, SDValue());
SDValue node0x1bde4150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x1bde3db0 = dag->getNode(ISD::BR, dl, MVT::Other, node0x1bde3620, node0x1bde4150);
roots.reserve(2);
roots.push_back(node0x1bde3620);
roots.push_back(node0x1bde3db0);
dag->setRoot(node0x1bde3db0);
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
SDValue node0x1bdfe270 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bdf4c90 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1bdfe270, mpi, MVT::i8, 1);
SDValue node0x1bdfd660 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bdf4c90, SDValue());
roots.reserve(1);
roots.push_back(node0x1bdfd660);
dag->setRoot(node0x1bdfd660);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_lo__regs__:
    {
SDValue node0x1bdff650 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bdff980 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bdffa20 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bdff650, node0x1bdff980);
SDValue node0x1bdfe310 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1bdffa20, mpi, MVT::i8, 1);
SDValue node0x1bdfe5c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bdfe310, SDValue());
roots.reserve(1);
roots.push_back(node0x1bdfe5c0);
dag->setRoot(node0x1bdfe5c0);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x1be00a30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bdffab0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1be00a30, mpi, MVT::i8, 1);
SDValue node0x1bdffe50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bdffab0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bdffe50);
dag->setRoot(node0x1bdffe50);
    }
    break;
  case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x1be01d00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be02030 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be020d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be01d00, node0x1be02030);
SDValue node0x1be00ad0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1be020d0, mpi, MVT::i8, 1);
SDValue node0x1bdffc70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be00ad0, SDValue());
roots.reserve(1);
roots.push_back(node0x1bdffc70);
dag->setRoot(node0x1bdffc70);
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
SDValue node0x1be0fd10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be02160 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1be0fd10, mpi, MVT::i8, 1);
SDValue node0x1be0f280 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be02160, SDValue());
roots.reserve(1);
roots.push_back(node0x1be0f280);
dag->setRoot(node0x1be0f280);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_lo__regs__:
    {
SDValue node0x1be111c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be114f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be11590 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be111c0, node0x1be114f0);
SDValue node0x1be0fdb0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1be11590, mpi, MVT::i8, 1);
SDValue node0x1be10060 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be0fdb0, SDValue());
roots.reserve(1);
roots.push_back(node0x1be10060);
dag->setRoot(node0x1be10060);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x1be125f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be11620 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1be125f0, mpi, MVT::i8, 1);
SDValue node0x1be11970 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be11620, SDValue());
roots.reserve(1);
roots.push_back(node0x1be11970);
dag->setRoot(node0x1be11970);
    }
    break;
  case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x1be13870 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be13ba0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be13c40 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be13870, node0x1be13ba0);
SDValue node0x1be12690 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1be13c40, mpi, MVT::i8, 1);
SDValue node0x1be11830 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be12690, SDValue());
roots.reserve(1);
roots.push_back(node0x1be11830);
dag->setRoot(node0x1be11830);
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
SDValue node0x1be21880 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be13cd0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1be21880, mpi, MVT::i16, 1);
SDValue node0x1be20c70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be13cd0, SDValue());
roots.reserve(1);
roots.push_back(node0x1be20c70);
dag->setRoot(node0x1be20c70);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_lo__regs__:
    {
SDValue node0x1be22d30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be23060 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be23100 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be22d30, node0x1be23060);
SDValue node0x1be21920 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1be23100, mpi, MVT::i16, 1);
SDValue node0x1be21bd0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be21920, SDValue());
roots.reserve(1);
roots.push_back(node0x1be21bd0);
dag->setRoot(node0x1be21bd0);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x1be24110 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be23190 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1be24110, mpi, MVT::i16, 1);
SDValue node0x1be23530 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be23190, SDValue());
roots.reserve(1);
roots.push_back(node0x1be23530);
dag->setRoot(node0x1be23530);
    }
    break;
  case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x1be253e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be25710 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be257b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be253e0, node0x1be25710);
SDValue node0x1be241b0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x1be257b0, mpi, MVT::i16, 1);
SDValue node0x1be23350 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be241b0, SDValue());
roots.reserve(1);
roots.push_back(node0x1be23350);
dag->setRoot(node0x1be23350);
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
SDValue node0x1be333f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be25840 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1be333f0, mpi, MVT::i16, 1);
SDValue node0x1be32960 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be25840, SDValue());
roots.reserve(1);
roots.push_back(node0x1be32960);
dag->setRoot(node0x1be32960);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_lo__regs__:
    {
SDValue node0x1be348a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be34bd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be34c70 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be348a0, node0x1be34bd0);
SDValue node0x1be33490 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1be34c70, mpi, MVT::i16, 1);
SDValue node0x1be33740 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be33490, SDValue());
roots.reserve(1);
roots.push_back(node0x1be33740);
dag->setRoot(node0x1be33740);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x1be35cd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be34d00 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1be35cd0, mpi, MVT::i16, 1);
SDValue node0x1be35050 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be34d00, SDValue());
roots.reserve(1);
roots.push_back(node0x1be35050);
dag->setRoot(node0x1be35050);
    }
    break;
  case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x1be36f50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be37280 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be37320 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be36f50, node0x1be37280);
SDValue node0x1be35d70 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x1be37320, mpi, MVT::i16, 1);
SDValue node0x1be34f10 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be35d70, SDValue());
roots.reserve(1);
roots.push_back(node0x1be34f10);
dag->setRoot(node0x1be34f10);
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
SDValue node0x1be44f60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be45000 = dag->getLoad(MVT::i32, dl, entry, node0x1be44f60, mpi, 1);
SDValue node0x1be44350 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be45000, SDValue());
roots.reserve(1);
roots.push_back(node0x1be44350);
dag->setRoot(node0x1be44350);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_lo__regs__:
    {
SDValue node0x1be46360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be46690 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be46730 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be46360, node0x1be46690);
SDValue node0x1be467c0 = dag->getLoad(MVT::i32, dl, entry, node0x1be46730, mpi, 1);
SDValue node0x1be451b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be467c0, SDValue());
roots.reserve(1);
roots.push_back(node0x1be451b0);
dag->setRoot(node0x1be451b0);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__reg0__:
    {
SDValue node0x1be47640 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be476e0 = dag->getLoad(MVT::i32, dl, entry, node0x1be47640, mpi, 1);
SDValue node0x1be46a60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be476e0, SDValue());
roots.reserve(1);
roots.push_back(node0x1be46a60);
dag->setRoot(node0x1be46a60);
    }
    break;
  case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__regs__:
    {
SDValue node0x1be488b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be48be0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be48c80 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be488b0, node0x1be48be0);
SDValue node0x1be48d10 = dag->getLoad(MVT::i32, dl, entry, node0x1be48c80, mpi, 1);
SDValue node0x1be46970 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be48d10, SDValue());
roots.reserve(1);
roots.push_back(node0x1be46970);
dag->setRoot(node0x1be46970);
    }
    break;
  case Codasip::i_lui_hi__opc_lui__regs__imm20_hi__:
    {
SDValue node0x1be68130 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be681b0 = dag->getConstant(2048LL, dl, MVT::i32);
SDValue node0x1be68270 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be68130, node0x1be681b0);
SDValue node0x1be682e0 = dag->getConstant(-4096LL, dl, MVT::i32);
SDValue node0x1be683a0 = dag->getNode(ISD::AND, dl, MVT::i32, node0x1be68270, node0x1be682e0);
SDValue node0x1be67e40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be683a0, SDValue());
roots.reserve(1);
roots.push_back(node0x1be67e40);
dag->setRoot(node0x1be67e40);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__reg0__simm12_lo__:
    {
SDValue node0x1be86b10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be83c50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be86b10, SDValue());
roots.reserve(1);
roots.push_back(node0x1be83c50);
dag->setRoot(node0x1be83c50);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__reg0__simm12_pcrel_lo__:
    {
SDValue node0x1be876b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be86c40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be876b0, SDValue());
roots.reserve(1);
roots.push_back(node0x1be86c40);
dag->setRoot(node0x1be86c40);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_lo__:
    {
SDValue node0x1be889e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be88d10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be88db0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x1be889e0, node0x1be88d10);
SDValue node0x1be87d50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be88db0, SDValue());
roots.reserve(1);
roots.push_back(node0x1be87d50);
dag->setRoot(node0x1be87d50);
    }
    break;
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_pcrel_lo__:
    {
SDValue node0x1be897e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be89b10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1be89bb0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x1be897e0, node0x1be89b10);
SDValue node0x1be88f20 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1be89bb0, SDValue());
roots.reserve(1);
roots.push_back(node0x1be88f20);
dag->setRoot(node0x1be88f20);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_lo__reg0__:
    {
SDValue node0x1be99e20 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x1be9a0c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1c05c560 = dag->getStore(entry, dl, node0x1be99e20, node0x1be9a0c0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1c05c560);
dag->setRoot(node0x1c05c560);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_lo__regs__:
    {
SDValue node0x1be9af40 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x1be9b0a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1be9b330 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be9b3d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be9b0a0, node0x1be9b330);
SDValue node0x1be9b460 = dag->getStore(entry, dl, node0x1be9af40, node0x1be9b3d0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1be9b460);
dag->setRoot(node0x1be9b460);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x1be9bfe0 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x1be9c280 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1be9c320 = dag->getStore(entry, dl, node0x1be9bfe0, node0x1be9c280, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1be9c320);
dag->setRoot(node0x1be9c320);
    }
    break;
  case Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x1be9d4d0 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x1be9d630 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1be9d8c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1be9d960 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1be9d630, node0x1be9d8c0);
SDValue node0x1be9d9f0 = dag->getStore(entry, dl, node0x1be9d4d0, node0x1be9d960, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1be9d9f0);
dag->setRoot(node0x1be9d9f0);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_lo__reg0__:
    {
SDValue node0x1bea54f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bea5830 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bbd3370 = dag->getTruncStore(entry, dl, node0x1bea54f0, node0x1bea5830, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x1bbd3370);
dag->setRoot(node0x1bbd3370);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_lo__regs__:
    {
SDValue node0x1bea6b80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bea6d80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bea7010 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bea70b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bea6d80, node0x1bea7010);
SDValue node0x1bbd3550 = dag->getTruncStore(entry, dl, node0x1bea6b80, node0x1bea70b0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x1bbd3550);
dag->setRoot(node0x1bbd3550);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x1bea7e00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bea8140 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bbd3750 = dag->getTruncStore(entry, dl, node0x1bea7e00, node0x1bea8140, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x1bbd3750);
dag->setRoot(node0x1bbd3750);
    }
    break;
  case Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x1bea9410 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bea9610 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bea98a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bea9940 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bea9610, node0x1bea98a0);
SDValue node0x1bbd3930 = dag->getTruncStore(entry, dl, node0x1bea9410, node0x1bea9940, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x1bbd3930);
dag->setRoot(node0x1bbd3930);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_lo__reg0__:
    {
SDValue node0x1beaca20 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x1beaccc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1beacd60 = dag->getStore(entry, dl, node0x1beaca20, node0x1beaccc0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1beacd60);
dag->setRoot(node0x1beacd60);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_lo__regs__:
    {
SDValue node0x1beadd20 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x1beade80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1beae110 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1beae1b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1beade80, node0x1beae110);
SDValue node0x1beae240 = dag->getStore(entry, dl, node0x1beadd20, node0x1beae1b0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1beae240);
dag->setRoot(node0x1beae240);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x1beaedc0 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x1beaf060 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1beaf100 = dag->getStore(entry, dl, node0x1beaedc0, node0x1beaf060, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1beaf100);
dag->setRoot(node0x1beaf100);
    }
    break;
  case Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x1beb02b0 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x1beb0410 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1beb06a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1beb0740 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1beb0410, node0x1beb06a0);
SDValue node0x1beb07d0 = dag->getStore(entry, dl, node0x1beb02b0, node0x1beb0740, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1beb07d0);
dag->setRoot(node0x1beb07d0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_lo__reg0__:
    {
SDValue node0x1beb84c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1beb8800 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bbd4610 = dag->getTruncStore(entry, dl, node0x1beb84c0, node0x1beb8800, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x1bbd4610);
dag->setRoot(node0x1bbd4610);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_lo__regs__:
    {
SDValue node0x1beb9b50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1beb9d50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1beb9fe0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1beba080 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1beb9d50, node0x1beb9fe0);
SDValue node0x1bbd47f0 = dag->getTruncStore(entry, dl, node0x1beb9b50, node0x1beba080, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x1bbd47f0);
dag->setRoot(node0x1bbd47f0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x1bebadd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bebb110 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bbd49f0 = dag->getTruncStore(entry, dl, node0x1bebadd0, node0x1bebb110, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x1bbd49f0);
dag->setRoot(node0x1bbd49f0);
    }
    break;
  case Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x1bebc3e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bebc5e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bebc870 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1bebc910 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bebc5e0, node0x1bebc870);
SDValue node0x1bbd4bd0 = dag->getTruncStore(entry, dl, node0x1bebc3e0, node0x1bebc910, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x1bbd4bd0);
dag->setRoot(node0x1bbd4bd0);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_lo__reg0__:
    {
SDValue node0x1bebf9f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bebfbf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bebfc90 = dag->getStore(entry, dl, node0x1bebf9f0, node0x1bebfbf0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1bebfc90);
dag->setRoot(node0x1bebfc90);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_lo__regs__:
    {
SDValue node0x1bec0c50 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bec0db0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bec0fa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bec1040 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bec0db0, node0x1bec0fa0);
SDValue node0x1bec10d0 = dag->getStore(entry, dl, node0x1bec0c50, node0x1bec1040, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1bec10d0);
dag->setRoot(node0x1bec10d0);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x1bec1c50 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bec1e50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bec1ef0 = dag->getStore(entry, dl, node0x1bec1c50, node0x1bec1e50, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1bec1ef0);
dag->setRoot(node0x1bec1ef0);
    }
    break;
  case Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x1bec30a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x1bec3200 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bec33f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bec3490 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1bec3200, node0x1bec33f0);
SDValue node0x1bec3520 = dag->getStore(entry, dl, node0x1bec30a0, node0x1bec3490, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1bec3520);
dag->setRoot(node0x1bec3520);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_lo__reg0__:
    {
SDValue node0x1becb0d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1becb360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bec8b90 = dag->getStore(entry, dl, node0x1becb0d0, node0x1becb360, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1bec8b90);
dag->setRoot(node0x1bec8b90);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_lo__regs__:
    {
SDValue node0x1becc6b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1becc800 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1becca90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1beccb30 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1becc800, node0x1becca90);
SDValue node0x1beccbc0 = dag->getStore(entry, dl, node0x1becc6b0, node0x1beccb30, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1beccbc0);
dag->setRoot(node0x1beccbc0);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0__:
    {
SDValue node0x1becd830 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1becdac0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1becdb60 = dag->getStore(entry, dl, node0x1becd830, node0x1becdac0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1becdb60);
dag->setRoot(node0x1becdb60);
    }
    break;
  case Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__regs__:
    {
SDValue node0x1becede0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1becef30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1becf1c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x1becf260 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x1becef30, node0x1becf1c0);
SDValue node0x1becf2f0 = dag->getStore(entry, dl, node0x1becede0, node0x1becf260, mpi, 1);
roots.reserve(1);
roots.push_back(node0x1becf2f0);
dag->setRoot(node0x1becf2f0);
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
SDValue node0x1beffca0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1beff9d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1beffca0, SDValue());
roots.reserve(1);
roots.push_back(node0x1beff9d0);
dag->setRoot(node0x1beff9d0);
    }
    break;
  case Codasip::i_jalr__opc_jalr__reg0__regs__simm12_simple__:
    {
SDValue node0x1bdde4b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x1bdde750 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x1bdde4b0);
roots.reserve(1);
roots.push_back(node0x1bdde750);
dag->setRoot(node0x1bdde750);
    }
    break;
  case Codasip::i_jalr__opc_jalr__regs__regs__simm12_simple__:
    {
SDValue node0x1bde9170 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x1bde7780 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x1bde9170, SDValue());
SDValue node0x1bde9620 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x1bde98c0 = dag->getNode(ISD::BRIND, dl, MVT::Other, node0x1bde7780, node0x1bde9620);
roots.reserve(2);
roots.push_back(node0x1bde7780);
roots.push_back(node0x1bde98c0);
dag->setRoot(node0x1bde98c0);
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
