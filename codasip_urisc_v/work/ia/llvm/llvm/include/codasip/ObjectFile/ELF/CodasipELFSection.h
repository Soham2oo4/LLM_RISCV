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
#ifndef LLVM_INCLUDE_CODASIP_OBJECTFILE_ELF_CODASIPELFSECTION_H_
#define LLVM_INCLUDE_CODASIP_OBJECTFILE_ELF_CODASIPELFSECTION_H_

#include "codasip/ObjectFile/CodasipSection.h"

#include "llvm/Object/ELFObjectFile.h"

namespace llvm {

class CodasipELFSection : public CodasipSection {
public:
  CodasipELFSection(const object::ELFSectionRef &section,
                    const CodasipObjectFile &objectFile);

  void initAddressSpaces() override;

  uint64_t getLoadAddress() const override;
  bool isAllocatable() const override;

protected:
  const object::SectionRef &getReference() const override;

private:
  const object::ELFSectionRef Section;
};

inline const object::SectionRef &CodasipELFSection::getReference() const {
  return Section;
}

} // namespace llvm

#endif /* LLVM_INCLUDE_CODASIP_OBJECTFILE_ELF_CODASIPELFSECTION_H_ */
