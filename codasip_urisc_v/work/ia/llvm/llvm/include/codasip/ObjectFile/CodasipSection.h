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
#ifndef LLVM_INCLUDE_CODASIP_OBJECTFILE_CODASIPSECTION_H_
#define LLVM_INCLUDE_CODASIP_OBJECTFILE_CODASIPSECTION_H_

#include "llvm/ADT/StringRef.h"
#include <cstdint> // TODO needed?

namespace llvm {
namespace object {

class SectionRef;

} // namespace object

class APInt;
class CodasipAddressSpace;
class CodasipObjectFile;

class CodasipSection {
public:
  CodasipSection(const CodasipObjectFile &objectFile);

  virtual ~CodasipSection() = default;

  /// Initialize virtual and load address space.
  virtual void initAddressSpaces();
  /// Function to pre-compute octets per byte shift.
  void initOctetsPerByteShift();

  /// Get address space to given section.
  /// Same as GetVirtualAddressSpace.
  const CodasipAddressSpace &getAddressSpace() const;
  /// Get virtual address space to given section.
  /// Fails when address space is missing.
  const CodasipAddressSpace &getVirtualAddressSpace() const;
  /// Get load address space to given section.
  /// Fails when address space is missing.
  const CodasipAddressSpace &getLoadAddressSpace() const;
  /// Determines whether given section has address space.
  /// Same as HasVirtualAddressSpace.
  bool hasAddressSpace() const;
  /// Determines whether given section has virtual address space.
  bool hasVirtualAddressSpace() const;
  /// Determines whether given section has load address space.
  bool hasLoadAddressSpace() const;
  void setVirtualAddressSpace(const CodasipAddressSpace &addressSpace);
  void setLoadAddressSpace(const CodasipAddressSpace &addressSpace);

  uint64_t getAlignment() const;
  StringRef getName() const;
  /// Get word bit-width of section.
  uint32_t getWordBitWidth() const;
  /// Get byte bit-width of section.
  uint32_t getByteBitWidth() const;
  /// Get bytes per word of section.
  uint16_t getBytesPerWord() const;
  /// Get ELF load memory address (LMA) from virtual memory address (VMA).
  virtual uint64_t getLoadAddress() const = 0;
  /// Get size of section in bytes.
  uint64_t getSizeInBytes() const;
  /// Get size of section in words.
  size_t getSizeInWords() const;
  /**
   *  Get byte from section on given offset.
   *  \param[out] byte
   *  \param[in, out] offset
   */
  void getByte(APInt &byte, const uint32_t offset) const;
  /**
   *  Get word from section on given offset.
   *  \param[out] word
   *  \param[in, out] offset
   */
  void getWord(APInt &word, const uint32_t offset) const;

  // Host byte API
  /// Get size of section in host bytes.
  size_t getSizeInHostBytes() const;
  /// Convert architecture byte offset into host byte offset.
  uint32_t getHostByteOffset(const uint32_t byteOffset) const;
  /**
   *  Reads a host byte of given section.
   *  Updates offset after successful read. Fails on unsuccessful read.
   *  \param[in, out] offset
   */
  uint8_t getU8(uint32_t &offset) const;
  /**
   *  Reads two host bytes of given section.
   *  Updates offset after successful read. Fails on unsuccessful read.
   *  \param[in, out] offset
   */
  uint16_t getU16(uint32_t &offset) const;
  /**
   *  Reads four host bytes of given section.
   *  Updates offset after successful read. Fails on unsuccessful read.
   *  \param[in, out] offset
   */
  uint32_t getU32(uint32_t &offset) const;
  /**
   *  Reads eight host bytes of given section.
   *  Updates offset after successful read. Fails on unsuccessful read.
   *  \param[in, out] offset
   */
  uint64_t getU64(uint32_t &offset) const;
  /**
   *  Reads zero terminated string of host bytes.
   *  \param[in, out] offset
   *  \return Reference on zero terminated string.
   */
  StringRef getZeroStringRef(uint32_t &offset) const;

  /// Determines if section is allocatable.
  virtual bool isAllocatable() const = 0;
  bool isBSS() const;
  /// Determines if section is little endian.
  bool isLittleEndian() const;
  bool isText() const;

  // Functions to be used only inside LLVM code
  /// Determines if CodasipSection is wrapping given section.
  bool hasReference(const object::SectionRef &section) const;

protected:
  const CodasipObjectFile &getObjectFile() const;
  virtual const object::SectionRef &getReference() const = 0;

private:
  unsigned int getOctetsPerByteShift() const;
  void readByte(APInt &byte, const uint32_t offset) const;

  const CodasipAddressSpace *VirtualAddressSpace = nullptr;
  const CodasipAddressSpace *LoadAddressSpace = nullptr;
  unsigned int OctetsPerByteShift = 0;
  const CodasipObjectFile &ObjectFile;
};

inline void CodasipSection::initOctetsPerByteShift() {
  // determine shift from byte bit-width
  unsigned int cmp = 8;
  unsigned int octets = 0;
  while (getByteBitWidth() > cmp) {
    cmp *= 2;
    octets += 1;
  }

  OctetsPerByteShift = octets;
}

inline void CodasipSection::setVirtualAddressSpace(
    const CodasipAddressSpace &addressSpace) {
  VirtualAddressSpace = &addressSpace;
}

inline void
CodasipSection::setLoadAddressSpace(const CodasipAddressSpace &addressSpace) {
  LoadAddressSpace = &addressSpace;
}

inline const CodasipObjectFile &CodasipSection::getObjectFile() const {
  return ObjectFile;
}

inline unsigned int CodasipSection::getOctetsPerByteShift() const {
  return OctetsPerByteShift;
}

inline uint32_t
CodasipSection::getHostByteOffset(const uint32_t byteOffset) const {
  return byteOffset << getOctetsPerByteShift();
}

} // namespace llvm

#endif /* LLVM_INCLUDE_CODASIP_OBJECTFILE_CODASIPSECTION_H_ */
