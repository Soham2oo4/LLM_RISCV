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


#include "CodasipMachineFunction.h"

namespace llvm {

// doing work in constructor - no better place for it without hacking LLVM core
CodasipFunctionInfo::CodasipFunctionInfo(MachineFunction &MF)
    : CodasipGenFunctionInfo(MF) {}

} // namespace llvm
