/**
 * Codasip s.r.o.
 *
 * CONFIDENTIAL
 *
 * Copyright 2022 Codasip s.r.o.
 *
 * All Rights Reserved.
 *
 * NOTICE: All information contained in this file, is and shall remain the
 * property of Codasip s.r.o. and its suppliers, if any.
 *
 * The intellectual and technical concepts contained herein are confidential and
 * proprietary to Codasip s.r.o. and are protected by trade secret and copyright
 * law.  In addition, elements of the technical concepts may be patent pending.
 *
 * This file is part of the Codasip Studio product. No part of the Studio
 * product, including this file, may be use, copied, modified, or distributed
 * except in accordance with the terms contained in Codasip license agreement
 * under which you obtained this file.
 *
 *  \file
 *  \author Martin Ministr
 *  \date   Mar 1, 2022
 *  \brief  Declaration/Implementation of the class.
 */
#ifndef LLVM_INCLUDE_CODASIP_OBJECTFILE_MACHO_CODASIPMACHOSYMBOL_H_
#define LLVM_INCLUDE_CODASIP_OBJECTFILE_MACHO_CODASIPMACHOSYMBOL_H_

#include "codasip/ObjectFile/CodasipSymbol.h"

#include "llvm/Object/MachO.h"

namespace llvm {

/// Represents only MachO 32 bit section.
class CodasipMachOSymbol : public CodasipSymbol {
public:
  CodasipMachOSymbol(const object::SymbolRef &symbol,
                     const CodasipObjectFile &objectFile);

  uint64_t getSizeInBytes() const override;

protected:
  const object::SymbolRef &getReference() const override;

private:
  const CodasipSymbol *getNextSymbol() const;

  const object::SymbolRef Symbol;
};

inline const object::SymbolRef &CodasipMachOSymbol::getReference() const {
  return Symbol;
}

} // namespace llvm

#endif /* LLVM_INCLUDE_CODASIP_OBJECTFILE_MACHO_CODASIPMACHOSYMBOL_H_ */
