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


#ifndef CODASIPTARGETOBJECTFILE_H
#define CODASIPTARGETOBJECTFILE_H

#include "llvm/CodeGen/TargetLoweringObjectFileImpl.h"
#include "llvm/Target/TargetLoweringObjectFile.h"

namespace llvm {

/// Codasip uses this mainly for its data section definition.
class CodasipTargetObjectFile : public TargetLoweringObjectFileELF {
  // TargetLoweringObjectFileELF ignores -fPIC and the UsesLabelDifference
  // setting. Grandparent class uses it correctly, so: this to be true when
  // -fPIC is in place.
  //
  // However, TargetLoweringObjectFileELF says:
  //   We can always create relative relocations, so use another section
  //   that can be marked non-executable.
  //     return false;
  //
  // so we should really just create relative relocations?
  // Consider this a temporary hack. If you're seeing this comment later than
  // 2017, consider it just a hack.
  bool shouldPutJumpTableInFunctionSection(bool UsesLabelDifference,
                                           const Function &F) const;
};

} // namespace llvm

#endif
