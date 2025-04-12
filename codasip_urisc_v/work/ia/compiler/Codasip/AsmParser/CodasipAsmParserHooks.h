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
 * \author  Codasip (c) Assembler generator
 * \version 9.4.2
 * \brief   Source for assembler
 * \project MI15codasip_urisc_v
 */
#ifndef CODASIPASMPARSERHOOKS_4_H_
#define CODASIPASMPARSERHOOKS_4_H_

#include "CodasipAsmParserHooksGen.h"

namespace llvm {

/**
 *  \class  CodasipAsmParserHooks
 *  \brief  This class provides a way how to override generated codasip assembler parser hooks with custom ones, mainly RISC-V hooks.
 */
class CodasipAsmParserHooks : public CodasipAsmParserHooksGen
 {
public:
    /**
     *  \brief  ~CodasipAsmParserHooks
     */
    ~CodasipAsmParserHooks();
};
} // namespace llvm

#endif
