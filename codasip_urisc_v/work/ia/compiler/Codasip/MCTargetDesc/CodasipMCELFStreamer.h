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


#ifndef LLVM_LIB_TARGET_CODASIP_MCTARGETDESC_CODASIPMCELFSTREAMER_H
#define LLVM_LIB_TARGET_CODASIP_MCTARGETDESC_CODASIPMCELFSTREAMER_H

#include "llvm/MC/MCELFStreamer.h"
#include "llvm/MC/MCInstrInfo.h"

namespace llvm {

class CodasipMCELFStreamer : public MCELFStreamer {
  std::unique_ptr<MCInstrInfo> MCII;

public:
  CodasipMCELFStreamer(MCContext &Context, std::unique_ptr<MCAsmBackend> TAB,
                       std::unique_ptr<MCObjectWriter> OW,
                       std::unique_ptr<MCCodeEmitter> Emitter);

  CodasipMCELFStreamer(MCContext &Context, std::unique_ptr<MCAsmBackend> TAB,
                       std::unique_ptr<MCObjectWriter> OW,
                       std::unique_ptr<MCCodeEmitter> Emitter,
                       MCAssembler *Assembler);
// VLIW need complex behavior

};

MCStreamer *createCodasipELFStreamer(Triple const &TT, MCContext &Context,
                                     std::unique_ptr<MCAsmBackend> MAB,
                                     std::unique_ptr<MCObjectWriter> OW,
                                     std::unique_ptr<MCCodeEmitter> CE,
                                     bool RelaxAll);

} // end namespace llvm

#endif // LLVM_LIB_TARGET_CODASIP_MCTARGETDESC_CODASIPMCELFSTREAMER_H
