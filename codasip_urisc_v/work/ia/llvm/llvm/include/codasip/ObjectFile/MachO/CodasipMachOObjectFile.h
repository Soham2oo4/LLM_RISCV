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
 *  \date   Feb 24, 2022
 *  \brief  Declaration/Implementation of the class.
 */
#ifndef LLVM_INCLUDE_CODASIP_OBJECTFILE_MACHO_CODASIPMACHOOBJECTFILE_H_
#define LLVM_INCLUDE_CODASIP_OBJECTFILE_MACHO_CODASIPMACHOOBJECTFILE_H_

#include "codasip/ObjectFile/CodasipObjectFile.h"

namespace llvm {

class CodasipMachOObjectFile : public CodasipObjectFile {
public:
  CodasipMachOObjectFile(object::OwningBinary<object::Binary> owner,
                         const object::ObjectFile &reference);

  uint64_t getStartAddress() const override;

private:
  void initDwarfContext() override;
  void initSections() override;
  void initSymbols() override;

  uint64_t getMachoStartAddressBase() const;
  uint64_t getMachoStartAddressOffset() const;

  /// Owner of DWARF executable
  object::OwningBinary<object::Binary> m_DwarfOwner;
};

} // namespace llvm

#endif /* LLVM_INCLUDE_CODASIP_OBJECTFILE_MACHO_CODASIPMACHOOBJECTFILE_H_ */
