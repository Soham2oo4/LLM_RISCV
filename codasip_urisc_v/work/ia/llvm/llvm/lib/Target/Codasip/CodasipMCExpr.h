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


// Modeled after ARMMCExpr

#ifndef LLVM_LIB_TARGET_CODASIP_CODASIPMCEXPR_H
#define LLVM_LIB_TARGET_CODASIP_CODASIPMCEXPR_H

#include "llvm/MC/MCExpr.h"

namespace llvm {

class CodasipTernaryMCExpr : public MCTargetExpr {
private:
  explicit CodasipTernaryMCExpr(const MCExpr *Condition, const MCExpr *True,
                                const MCExpr *False)
      : Condition(Condition), True(True), False(False) {}

  /// Condition expression
  const MCExpr *Condition;
  /// True branch
  const MCExpr *True;
  /// False branch
  const MCExpr *False;

public:
  /// @name Construction
  /// @{

  static const CodasipTernaryMCExpr *create(const MCExpr *Condition,
                                            const MCExpr *True,
                                            const MCExpr *False,
                                            MCContext &Ctx);

  /// @}
  /// @name Accessors
  /// @{

  /// Get the condition of ternary expression.
  const MCExpr &getCondition() const { return *Condition; }
  /// Get the true branch of ternary expression.
  const MCExpr &getTrue() const { return *True; }
  /// Get the false branch of ternary expression.
  const MCExpr &getFalse() const { return *False; }

  /// @}

  void printImpl(raw_ostream &OS, const MCAsmInfo *MAI) const override;
  bool evaluateAsRelocatableImpl(MCValue &Res, const MCAsmLayout *Layout,
                                 const MCFixup *Fixup) const override;
  bool hasMask() const override;
  void visitUsedExpr(MCStreamer &Streamer) const override{};
  MCFragment *findAssociatedFragment() const override { return nullptr; }

  // There are no TLS CodasipExprs at the moment.
  void fixELFSymbolsInTLSFixups(MCAssembler &) const override {}

  static bool classof(const MCExpr *E) {
    return E->getKind() == MCExpr::Target;
  }
};

} // end namespace llvm

#endif
