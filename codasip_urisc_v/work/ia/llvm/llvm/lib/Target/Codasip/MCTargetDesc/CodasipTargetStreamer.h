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
 * \date    2025-04-13
 * \author  Codasip (c) C compiler backend generator
 * \version 9.4.2
 * \brief   Source for compiler backend
 * \project codasip_urisc_v.ia
 * \note          Codasip Studio version: 9.4.2
 *                Project: codasip_urisc_v.ia
 *                Date: 2025-04-13 13:38:41
 *                Copyright (C) 2025 Codasip s.r.o.
 */


#ifndef LLVM_LIB_TARGET_CODASIP_CODASIPTARGETSTREAMER_H
#define LLVM_LIB_TARGET_CODASIP_CODASIPTARGETSTREAMER_H

#include "llvm/MC/MCStreamer.h"

namespace llvm {

class CodasipTargetStreamer : public MCTargetStreamer {
public:
  CodasipTargetStreamer(MCStreamer &S);

  virtual void emitDirectiveAbsOrg(const uint64_t Address, SMLoc Loc) = 0;
  virtual void emitDirectiveAddressSpace(unsigned Index, SMLoc Loc) = 0;
  virtual void emitDirectiveProfiler(const uint64_t Flag, StringRef Block,
                                     SMLoc Loc) = 0;

  virtual void emitDirectiveOptionPush() = 0;
  virtual void emitDirectiveOptionPop() = 0;
  virtual void emitDirectiveOptionRVC() = 0;
  virtual void emitDirectiveOptionNoRVC() = 0;
  virtual void emitDirectiveOptionRelax() = 0;
  virtual void emitDirectiveOptionNoRelax() = 0;
};

// This part is for ascii assembly output
class CodasipTargetAsmStreamer : public CodasipTargetStreamer {
  formatted_raw_ostream &OS;

public:
  CodasipTargetAsmStreamer(MCStreamer &S, formatted_raw_ostream &OS);

  void emitDirectiveAbsOrg(const uint64_t Address, SMLoc Loc) override;
  void emitDirectiveAddressSpace(unsigned Index, SMLoc Loc) override;
  void emitDirectiveProfiler(const uint64_t Flag, StringRef Block,
                             SMLoc Loc) override;

  void emitDirectiveOptionPush() override;
  void emitDirectiveOptionPop() override;
  void emitDirectiveOptionRVC() override;
  void emitDirectiveOptionNoRVC() override;
  void emitDirectiveOptionRelax() override;
  void emitDirectiveOptionNoRelax() override;
};

} // namespace llvm
#endif
