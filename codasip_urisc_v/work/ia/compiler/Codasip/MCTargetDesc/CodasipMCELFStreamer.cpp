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
 *                Date: 2025-04-14 12:52:03
 *                Copyright (C) 2025 Codasip s.r.o.
 */


#include "MCTargetDesc/CodasipMCELFStreamer.h"
#include "llvm/MC/MCAsmBackend.h"
#include "llvm/MC/MCCodeEmitter.h"
#include "llvm/MC/MCObjectWriter.h"

using namespace llvm;

CodasipMCELFStreamer::CodasipMCELFStreamer(
    MCContext &Context, std::unique_ptr<MCAsmBackend> TAB,
    std::unique_ptr<MCObjectWriter> OW, std::unique_ptr<MCCodeEmitter> Emitter)
    : MCELFStreamer(Context, std::move(TAB), std::move(OW),
                    std::move(Emitter)) {}

CodasipMCELFStreamer::CodasipMCELFStreamer(
    MCContext &Context, std::unique_ptr<MCAsmBackend> TAB,
    std::unique_ptr<MCObjectWriter> OW, std::unique_ptr<MCCodeEmitter> Emitter,
    MCAssembler *Assembler)
    : MCELFStreamer(Context, std::move(TAB), std::move(OW),
                    std::move(Emitter)) {}

// VLIW need complex behavior


namespace llvm {
MCStreamer *createCodasipELFStreamer(Triple const &TT, MCContext &Context,
                                     std::unique_ptr<MCAsmBackend> MAB,
                                     std::unique_ptr<MCObjectWriter> OW,
                                     std::unique_ptr<MCCodeEmitter> CE,
                                     bool RelaxAll) {
  CodasipMCELFStreamer *S = new CodasipMCELFStreamer(
      Context, std::move(MAB), std::move(OW), std::move(CE));
  if (RelaxAll)
    S->getAssembler().setRelaxAll(true);
  return S;
}

} // end namespace llvm
