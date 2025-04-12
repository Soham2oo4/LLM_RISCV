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


#include "CodasipTargetObjectFile.h"
#include "llvm/IR/GlobalValue.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCSection.h"
#include "llvm/Support/raw_ostream.h"

namespace llvm {

bool CodasipTargetObjectFile::shouldPutJumpTableInFunctionSection(
    bool UsesLabelDifference, const Function &F) const {
  return TargetLoweringObjectFile::shouldPutJumpTableInFunctionSection(
      UsesLabelDifference, F);
}

} // namespace llvm
