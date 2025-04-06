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
 * \author  Codasip (c) Assembler generator
 * \version 9.4.2
 * \brief   Source for assembler
 * \project MI15codasip_urisc_v
 */
#ifndef CODASIPBUNDLEFUNCTIONGEN_0_H_
#define CODASIPBUNDLEFUNCTIONGEN_0_H_

#include "os/compiler.h"

#include "CodasipBundleFunction.h"

namespace llvm {

/**
 *  \class  CodasipBundleFunctionGen
 */
class CodasipBundleFunctionGen : public CodasipBundleFunction
 {
public:
    /**
     *  \brief  Call
     */
    void Call(Parts& parts, const Instructions& inputInstructions) const ;
};
} // namespace llvm

#endif
