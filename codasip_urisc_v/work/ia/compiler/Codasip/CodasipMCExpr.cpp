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


#include "CodasipMCExpr.h"
#include "llvm/MC/MCContext.h"

using namespace llvm;

#define DEBUG_TYPE "codasip-mcexpr"

const CodasipTernaryMCExpr *
CodasipTernaryMCExpr::create(const MCExpr *Condition, const MCExpr *True,
                             const MCExpr *False, MCContext &Ctx) {
  return new (Ctx) CodasipTernaryMCExpr(Condition, True, False);
}

void CodasipTernaryMCExpr::printImpl(raw_ostream &OS,
                                     const MCAsmInfo *MAI) const {
  getCondition().print(OS, MAI);
  OS << " ? ";
  getTrue().print(OS, MAI);
  OS << " : ";
  getFalse().print(OS, MAI);
}

bool CodasipTernaryMCExpr::evaluateAsRelocatableImpl(
    MCValue &Res, const MCAsmLayout *Layout, const MCFixup *Fixup) const {
  // Evaluate condition
  int64_t ConditionValue = 0;
  bool Absolute = getCondition().evaluateAsAbsolute(ConditionValue, *Layout);

  // Condition is not absolute
  if (!Absolute)
    return getCondition().evaluateAsRelocatable(Res, Layout, Fixup);

  // Evaluate branch based on condition value
  return ConditionValue ? getTrue().evaluateAsRelocatable(Res, Layout, Fixup)
                        : getFalse().evaluateAsRelocatable(Res, Layout, Fixup);
}

bool CodasipTernaryMCExpr::hasMask() const {
  return getCondition().hasMask() || getTrue().hasMask() ||
         getFalse().hasMask();
}
