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
#include "CodasipAsmParserHooksGen.h"

#include "llvm/MC/MCStreamer.h"

namespace llvm {

CodasipAsmParserHooksGen::~CodasipAsmParserHooksGen()
{

}
void CodasipAsmParserHooksGen::ProcessInstruction(MCInst &Inst, SMLoc IDLoc, MCStreamer &Out, const MCSubtargetInfo &STI)
{
    m_STI = &STI;
    Out.EmitInstruction(Inst, getSTI());
}
CodasipAsmParserHooksGen::CodasipAsmParserHooksGen()
 :  m_STI(nullptr)
{

}
} // namespace llvm
