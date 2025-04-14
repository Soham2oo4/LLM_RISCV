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



#include "CodasipGenTargetTransformInfo.h"

#include "llvm/Analysis/TargetTransformInfo.h"
#include "llvm/Target/TargetMachine.h"

namespace llvm {
class Function;
} // namespace llvm

using namespace llvm;

#ifdef _WIN32
#define EXPORT_API __declspec(dllexport)
#else
#define EXPORT_API
#endif

// the TM points to the TargetMachine in the dummy target!
extern "C" EXPORT_API TargetTransformInfo
TTIConstructor(const LLVMTargetMachine *TM, const Function &F) {
  
  return TargetTransformInfo(CodasipTTIImpl(TM, F));
  
}
