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


#ifndef CODASIPMCTARGETDESC_H
#define CODASIPMCTARGETDESC_H

#include "llvm/Config/config.h"
#include "llvm/MC/MCTargetOptions.h"
#include "llvm/Support/DataTypes.h"
#include <memory>

namespace llvm {
class MCAsmBackend;
class MCCodeEmitter;
class MCContext;
class MCInstrInfo;
class MCInstPrinter;
class MCObjectTargetWriter;
class MCObjectWriter;
class MCRegisterInfo;
class MCStreamer;
class MCSubtargetInfo;
class MCTargetStreamer;
class StringRef;
class Target;
class Triple;
class raw_ostream;
class raw_pwrite_stream;
class formatted_raw_ostream;

extern Target TheCodasipTarget;

MCCodeEmitter *createCodasipMCCodeEmitter(const MCInstrInfo &MCII,
                                          const MCRegisterInfo &MRI,
                                          MCContext &Ctx);

MCAsmBackend *createCodasipAsmBackend(const Target &T,
                                      const MCSubtargetInfo &STI,
                                      const MCRegisterInfo &MRI,
                                      const MCTargetOptions &Options);

std::unique_ptr<MCObjectTargetWriter>
createCodasipELFObjectWriter(uint8_t OSABI);

MCTargetStreamer *createCodasipObjectTargetStreamer(MCStreamer &S,
                                                    const MCSubtargetInfo &STI);

MCTargetStreamer *createCodasipAsmTargetStreamer(MCStreamer &S,
                                                 formatted_raw_ostream &OS,
                                                 MCInstPrinter *InstPrint,
                                                 bool isVerboseAsm);

} // namespace llvm

// Defines symbolic names for Codasip registers.
// This defines a mapping from register name to register number.
#define GET_REGINFO_ENUM
#include "CodasipGenRegisterInfo.inc"

// Defines symbolic names for the Codasip instructions.
#define GET_INSTRINFO_ENUM
#include "CodasipGenInstrInfo.inc"

#define GET_SUBTARGETINFO_ENUM
#include "CodasipGenSubtargetInfo.inc"

#endif
