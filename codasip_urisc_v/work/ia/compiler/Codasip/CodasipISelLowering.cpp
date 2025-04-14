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


// you can edit this file

#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/TargetInstrInfo.h"

#include "Codasip.h"
#include "CodasipISelLowering.h"
#include "CodasipInstrInfo.h"
#include "CodasipTargetMachine.h"

using namespace llvm;

CodasipTargetLowering::CodasipTargetLowering(CodasipTargetMachine &TM)
    : CodasipGenTargetLowering(TM) {
  // Add your definitions here:
  // - use addRegisterClass(VT,class) to make a type legal
  // - use setOperationAction(ISD,VT,legality) to overwrite operation legality
  // - use AddPromotedToType(operation,origVT,dstVT) to resolve abiguity
  
  // this should be always legal - llvm can expand only vector shifts
  // - erase this loop if you think otherwise or change to Custom
  for (int i = MVT::FIRST_INTEGER_VALUETYPE; i < MVT::LAST_INTEGER_VALUETYPE;
       ++i) {
    setOperationAction(ISD::SHL, MVT::SimpleValueType(i), Legal);
    setOperationAction(ISD::SRL, MVT::SimpleValueType(i), Legal);
    setOperationAction(ISD::SRA, MVT::SimpleValueType(i), Legal);
  }
  // do not remove this!!
  computeRegisterProperties(TM.getRegisterInfo());
  // true for most asips...
  // setJumpIsExpensive(true);
  // uncomment this to disable tail calls
  // DisableTailCalls = true;
  // use if customCallConv was edited
  // setMinStackArgumentAlignment(X);
}

SDValue CodasipTargetLowering::LowerOperation(SDValue Op,
                                              SelectionDAG &DAG) const {
  return CodasipGenTargetLowering::LowerOperation(Op, DAG);
}

EVT CodasipTargetLowering::getSetCCResultType(const DataLayout &DL,
                                              LLVMContext &Context,
                                              EVT VT) const {
  return CodasipGenTargetLowering::getSetCCResultType(DL, Context, VT);
}

MVT::SimpleValueType CodasipTargetLowering::getCmpLibcallReturnType() const {
  return CodasipGenTargetLowering::getCmpLibcallReturnType();
}

bool CodasipTargetLowering::isShuffleMaskLegal(ArrayRef<int> m, EVT t) const {
  return CodasipGenTargetLowering::isShuffleMaskLegal(m, t);
}

MachineBasicBlock *CodasipTargetLowering::EmitInstrWithCustomInserter(
    MachineInstr &MI, MachineBasicBlock *BB) const {
  return CodasipGenTargetLowering::EmitInstrWithCustomInserter(MI, BB);
}

bool CodasipTargetLowering::isOffsetFoldingLegal(
    const GlobalAddressSDNode *GA) const {
#if 1
  return CodasipGenTargetLowering::isOffsetFoldingLegal(GA);
#else
  return TargetLowering::isOffsetFoldingLegal(GA);
#endif
}

MVT CodasipTargetLowering::getScalarShiftAmountTy(const DataLayout &DL,
                                                  EVT t) const {
  // will return t, if t is simple, PTR otherwise
  return CodasipGenTargetLowering::getScalarShiftAmountTy(DL, t);
}
