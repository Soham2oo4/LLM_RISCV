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


// you can edit this file

#ifndef CODASIPISELLOWERING_H
#define CODASIPISELLOWERING_H

#include "CodasipGenISelLowering.h"

namespace llvm {

/// use this class to reimplement the generated lowerer
class CodasipTargetLowering : public CodasipGenTargetLowering {
public:
  explicit CodasipTargetLowering(CodasipTargetMachine &TM);
  /// Handles instructions with "usesCustomInserter" flag.
  MachineBasicBlock *
  EmitInstrWithCustomInserter(MachineInstr &MI,
                              MachineBasicBlock *BB) const override;
  /// Custom lowering
  SDValue LowerOperation(SDValue Op, SelectionDAG &DAG) const override;
  // various meta-info
  EVT getSetCCResultType(const DataLayout &DL, LLVMContext &Context,
                         EVT VT) const override;
  MVT::SimpleValueType getCmpLibcallReturnType() const override;
  bool isShuffleMaskLegal(ArrayRef<int> m, EVT t) const override;
  bool isOffsetFoldingLegal(const GlobalAddressSDNode *GA) const override;
  MVT getScalarShiftAmountTy(const DataLayout &DL, EVT t) const override;
};

} // namespace llvm

#endif
