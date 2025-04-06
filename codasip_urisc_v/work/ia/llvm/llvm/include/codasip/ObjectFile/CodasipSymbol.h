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
#ifndef LLVM_INCLUDE_CODASIP_OBJECTFILE_CODASIPSYMBOL_H_
#define LLVM_INCLUDE_CODASIP_OBJECTFILE_CODASIPSYMBOL_H_

#include "llvm/Object/ObjectFile.h"

namespace llvm {

class CodasipObjectFile;
class CodasipSection;

class CodasipSymbol {
public:
  CodasipSymbol(const CodasipObjectFile &objectFile);

  virtual ~CodasipSymbol() = default;

  uint64_t getAddress() const;
  StringRef getName() const;
  bool hasSection() const;
  const CodasipSection &getSection() const;
  virtual uint64_t getSizeInBytes() const = 0;
  object::SymbolRef::Type getType() const;

protected:
  virtual const object::SymbolRef &getReference() const = 0;

  const CodasipObjectFile &ObjectFile;
};

} // namespace llvm

#endif /* LLVM_INCLUDE_CODASIP_OBJECTFILE_CODASIPSYMBOL_H_ */
