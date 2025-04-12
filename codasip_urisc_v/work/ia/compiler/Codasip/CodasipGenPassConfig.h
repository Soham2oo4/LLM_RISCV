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


#ifndef CODASIPGENPASSCONFIG_H
#define CODASIPGENPASSCONFIG_H

#include "CodasipTargetMachine.h"
#include "llvm/CodeGen/Passes.h"
#include "llvm/CodeGen/TargetPassConfig.h"
#include "llvm/IR/PassManager.h"

namespace llvm {

class CodasipGenPassConfig : public TargetPassConfig {
public:
  CodasipGenPassConfig(CodasipTargetMachine &TM, PassManagerBase &PM)
      : TargetPassConfig(TM, PM) {}
  CodasipTargetMachine &getCodasipTargetMachine() const {
    return getTM<CodasipTargetMachine>();
  }
  bool addPreISel() override;
  bool addInstSelector() override;
  void addMachinePasses() override;
  void addPreRegAlloc() override;
  void addMachineLateOptimization() override;
  void addPreSched2() override;
  void addPreEmitPass() override;
  void addPreEmitPass2() override;
  bool addSuperBlockPreRegAlloc() override;
};

} // namespace llvm

#endif // CODASIPGENPASSCONFIG_H
