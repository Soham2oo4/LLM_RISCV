/**
 * Codasip s.r.o.
 *
 * CONFIDENTIAL
 *
 * Copyright 2019 Codasip s.r.o.
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
 *  \date   18. 3. 2019
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef INCLUDE_CODASIP_OBJECTFILE_CODASIPOBJECTFILE_H_
#define INCLUDE_CODASIP_OBJECTFILE_CODASIPOBJECTFILE_H_

#include <map>

#include "codasip/ObjectFile/CodasipAddressSpace.h"
#include "codasip/ObjectFile/CodasipSection.h"
#include "codasip/ObjectFile/CodasipSymbol.h"
#include "llvm/ADT/APInt.h"
#include "llvm/DebugInfo/DWARF/DWARFContext.h"
#include "llvm/Object/ELFObjectFile.h"

namespace llvm {

/**
 *  \brief  Converts LLVM APInt into Codasip integer.
 *          Converts only bits matching specified bit-width at maximum.
 *  \param[out] dst Destination Codasip integer
 *  \param[in]  src Source LLVM APInt
 *  \param[in]  bitWidth bit-width
 */
template <class T>
void APIntToCodasipInt(T &dst, const APInt &src, const unsigned int bitWidth) {
  dst = 0;

  const unsigned int llvmWordCount =
      (bitWidth + (APInt::APINT_BITS_PER_WORD - 1)) /
      APInt::APINT_BITS_PER_WORD;

  // copy to result per APInt words, underlying words in APInt are backwards
  for (size_t i = 0; i < llvmWordCount; i++) {
    dst <<= APInt::APINT_BITS_PER_WORD;
    dst |= src.getRawData()[llvmWordCount - i - 1];
  }
}

/**
 *  \brief  Codasip encapsulation over LLVM ObjectFile object.
 */
class CodasipObjectFile {
public:
  /// Container for sections
  using SectionsType = std::vector<std::unique_ptr<CodasipSection>>;
  /// Container for symbols
  using SymbolsType = std::vector<std::unique_ptr<CodasipSymbol>>;
  /// Container for address spaces
  using AddressSpacesType = std::vector<CodasipAddressSpace>;

  virtual ~CodasipObjectFile() = default;
  /**
   *  \brief  Create Codasip object file of given executable or object file.
   *          Returns null on failure.
   *  \param[in]  path Executable/object file path
   */
  static std::unique_ptr<CodasipObjectFile> create(const std::string &path);
  /**
   *  \brief  Create Codasip object file that is facade over passed LLVM object
   * file. Returns null on failure. \param[in]  executable Executable/object
   * file \param[in]  binary CodasipObjectFile will own the passed binary if
   * passed
   */
  static std::unique_ptr<CodasipObjectFile>
  create(const object::ObjectFile &executable,
         object::OwningBinary<object::Binary> binary =
             object::OwningBinary<object::Binary>());
  /// Try to match address spaces to sections on non-Codasip ELFs.
  void initSectionToAddressSpaceNonCodasip();

  const CodasipAddressSpace &getAddressSpace(const size_t index) const;
  const CodasipAddressSpace &getDefaultDataAddressSpace() const;
  uint32_t getDefaultWordBitWidth() const;
  uint32_t getDefaultByteBitWidth() const;
  StringRef getFileName() const;
  bool isLittleEndian() const;
  bool isRelocatableObject() const;
  const AddressSpacesType &getAddressSpaces() const;

  void addAddressSpace(const CodasipAddressSpace &);

  const SectionsType &getSections() const;
  const SymbolsType &getSymbols() const;

  /**
   *  Return section of given index, use only when really needed, slow.
   *  Prefer foreach with getSections.
   *  \param[in]  index
   */
  const CodasipSection &getSection(const size_t index) const;
  /// Get section count.
  size_t getSectionCount() const;
  /// Get start address (entry point) for simulation.
  virtual uint64_t getStartAddress() const = 0;
  /// Determines whether this is an harvard architecture.
  bool isHarvard() const;
  bool hasDwarfContext() const;
  llvm::DWARFContext &getDwarfContext() const;

  /// Get underlying LLVM object file.
  /// Usage is strictly forbidden outside LLVM code.
  /// Breakage lowers your karma.
  const object::ObjectFile &getReference() const;
  /// Get Codasip section from LLVM section.
  const CodasipSection &getSection(const object::SectionRef &reference) const;

protected:
  CodasipObjectFile(object::OwningBinary<object::Binary> owner,
                    const object::ObjectFile &reference);

  SectionsType &getSections();
  SymbolsType &getSymbols();

  std::unique_ptr<llvm::DWARFContext> m_DwarfContext;

private:
  void init();
  virtual void initDwarfContext() = 0;
  virtual void initSections() = 0;
  virtual void initSymbols() = 0;
  void parseAddressSpaces();
  void parseAddressSpaces(const CodasipSection &section);
  void parseAddressSpace(uint32_t &offset, const CodasipSection &section);
  void initAddressSpacesIntoSections();
  void initOctetsPerByteShift();

  /// Owner of executable
  object::OwningBinary<object::Binary> Owner;
  /// Referenced LLVM object file
  const object::ObjectFile &Reference;
  SectionsType Sections;
  SymbolsType Symbols;
  AddressSpacesType AddressSpaces;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline uint32_t CodasipObjectFile::getDefaultWordBitWidth() const {
  assert(Reference.isELF() || Reference.isMachO());
  return Reference.is64Bit() ? 64 : 32;
}

inline uint32_t CodasipObjectFile::getDefaultByteBitWidth() const { return 8; }

inline StringRef CodasipObjectFile::getFileName() const {
  return Reference.getFileName();
}

inline bool CodasipObjectFile::isLittleEndian() const {
  return Reference.isLittleEndian();
}

inline bool CodasipObjectFile::isRelocatableObject() const {
  return Reference.isRelocatableObject();
}

inline const CodasipObjectFile::AddressSpacesType &
CodasipObjectFile::getAddressSpaces() const {
  return AddressSpaces;
}

inline void CodasipObjectFile::addAddressSpace(const CodasipAddressSpace &as) {
  AddressSpaces.emplace_back(as);
}

inline const CodasipObjectFile::SectionsType &
CodasipObjectFile::getSections() const {
  return Sections;
}

inline const CodasipObjectFile::SymbolsType &
CodasipObjectFile::getSymbols() const {
  return Symbols;
}

inline bool CodasipObjectFile::isHarvard() const {
  return AddressSpaces.size() > 1;
}

inline bool CodasipObjectFile::hasDwarfContext() const {
  return !!m_DwarfContext;
}

inline llvm::DWARFContext &CodasipObjectFile::getDwarfContext() const {
  assert(hasDwarfContext() && "Missing DWARF information.");
  return *m_DwarfContext;
}

inline const object::ObjectFile &CodasipObjectFile::getReference() const {
  return Reference;
}

inline CodasipObjectFile::SectionsType &CodasipObjectFile::getSections() {
  return Sections;
}

inline CodasipObjectFile::SymbolsType &CodasipObjectFile::getSymbols() {
  return Symbols;
}

} // namespace llvm

#endif // INCLUDE_CODASIP_OBJECTFILE_CODASIPOBJECTFILE_H_
