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


// This pass is run before register allocation and performs a local optimisation
// which replaces certain sequences of instructions into MOIs.

// Note: this is still in a prototype phase

#define DEBUG_TYPE "moi-optim"

#include "Codasip.h"
#include "CodasipTargetMachine.h"

#include "codasip/Target/CodasipBaseMoiOptim.h"

using namespace llvm;

namespace {
// MOI peephole optimizer
struct MoiOptim : public BaseMoiOptim {
  MoiOptim(CodasipTargetMachine &tm);
  static char ID;
};
} // namespace

char MoiOptim::ID;

MoiOptim::MoiOptim(CodasipTargetMachine &tm)
    : BaseMoiOptim(tm, tm.getInstrInfo(), ID) {
  // init data
  Mois.reserve(0);
  
  // for convenience and optimisation
  
}

// create the pass
FunctionPass *llvm::createCodasipMoiOptimPass(CodasipTargetMachine &tm) {
  return new MoiOptim(tm);
}
