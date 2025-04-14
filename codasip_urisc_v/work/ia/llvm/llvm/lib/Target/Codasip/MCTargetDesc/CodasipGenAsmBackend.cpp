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
 * \date    2025-04-14
 * \author  Codasip (c) C compiler backend generator
 * \version 9.4.2
 * \brief   Source for compiler backend
 * \project codasip_urisc_v.ia
 * \note          Codasip Studio version: 9.4.2
 *                Project: codasip_urisc_v.ia
 *                Date: 2025-04-14 12:52:03
 *                Copyright (C) 2025 Codasip s.r.o.
 */


#include "CodasipGenAsmBackend.h"

//#define DEBUG_CLASS

using namespace llvm;

namespace {

// for writeNopData
// this supports only typical nop sizes
class NopFillRecord {
  unsigned Size;
  uint64_t Value;

public:
  // constructor for each supported type
  template <typename T>
  constexpr explicit NopFillRecord(T v) : Size(sizeof(v)), Value(v) {}
  // size in bytes
  unsigned getSize() const { return Size; }
  // print
  void write(raw_ostream &OS, const support::endianness Endian) const {
    switch (Size) {
    case sizeof(uint8_t):
      support::endian::write(OS, (uint8_t)Value, Endian);
      break;
    case sizeof(uint16_t):
      support::endian::write(OS, (uint16_t)Value, Endian);
      break;
    case sizeof(uint32_t):
      support::endian::write(OS, (uint32_t)Value, Endian);
      break;
    case sizeof(uint64_t):
      support::endian::write(OS, (uint64_t)Value, Endian);
      break;
    default:
      assert(false && "corrupted nop data");
    }
  }
};

} // namespace

CodasipGenAsmBackend::CodasipGenAsmBackend(const MCSubtargetInfo &STI,
                                           uint8_t OSABI)
    : MCAsmBackend(0 ? support::big : support::little),
      STI(STI), OSABI(OSABI) {}

// codasip fixups
const MCFixupKindInfo &
CodasipGenAsmBackend::getFixupKindInfo(MCFixupKind Kind) const {
  const static MCFixupKindInfo Infos[Codasip::NumTargetFixupKinds] = {
    // clang-format off
    // Taken from RISC-V target
    // name                      offset bits  flags
    { "fixup_riscv_hi20",         12,     20,  0 },
    { "fixup_riscv_lo12_i",       20,     12,  0 },
    { "fixup_riscv_lo12_s",        0,     32,  0 },
    { "fixup_riscv_pcrel_hi20",   12,     20,  MCFixupKindInfo::FKF_IsPCRel },
    { "fixup_riscv_pcrel_lo12_i", 20,     12,  MCFixupKindInfo::FKF_IsPCRel },
    { "fixup_riscv_pcrel_lo12_s",  0,     32,  MCFixupKindInfo::FKF_IsPCRel },
    { "fixup_riscv_got_hi20",     12,     20,  MCFixupKindInfo::FKF_IsPCRel },
    { "fixup_riscv_tprel_hi20",   12,     20,  0 },
    { "fixup_riscv_tprel_lo12_i", 20,     12,  0 },
    { "fixup_riscv_tprel_lo12_s",  0,     32,  0 },
    { "fixup_riscv_tprel_add",     0,      0,  0 },
    { "fixup_riscv_tls_got_hi20", 12,     20,  MCFixupKindInfo::FKF_IsPCRel },
    { "fixup_riscv_tls_gd_hi20",  12,     20,  MCFixupKindInfo::FKF_IsPCRel },
    { "fixup_riscv_jal",          12,     20,  MCFixupKindInfo::FKF_IsPCRel },
    { "fixup_riscv_branch",        0,     32,  MCFixupKindInfo::FKF_IsPCRel },
    { "fixup_riscv_rvc_jump",      2,     11,  MCFixupKindInfo::FKF_IsPCRel },
    { "fixup_riscv_rvc_branch",    0,     16,  MCFixupKindInfo::FKF_IsPCRel },
    { "fixup_riscv_call",          0,     64,  MCFixupKindInfo::FKF_IsPCRel },
    { "fixup_riscv_call_plt",      0,     64,  MCFixupKindInfo::FKF_IsPCRel },
    { "fixup_riscv_relax",         0,      0,  0 },
    { "fixup_riscv_align",         0,      0,  0 },
    {"FK_Codasip_MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12", 0, 20, 0},
    {"FK_Codasip_MI3immIH1_10start_base1_10load_imm32", 0, 32, 0},
    {"FK_Codasip_MI3immIH1_10start_base1_8c_lui_hi", 0, 32, 0},
    {"FK_Codasip_MI3immIH1_10start_base1_9c_addi_lo", 0, 32, 0},
    {"FK_Codasip_MI3immIH1_10start_base6_4imm53imm1_4imm5", 0, 5, 0},
    {"FK_Codasip_MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm", 0, 12, 0},
    {"FK_Codasip_MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi", 0, 20, 0},
    {"FK_Codasip_MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo", 0, 12, 0},
    {"FK_Codasip_MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo", 0, 12, 0},
    {"FK_Codasip_MI3valIH1_10start_base14_11imm20_reloc3imm1_14imm20_pcrel_hi", 0, 20, MCFixupKindInfo::FKF_IsPCRel},
    {"FK_Codasip_MI3valIH1_10start_base14_11imm20_reloc3imm1_8imm20_hi", 0, 20, 0},
    {"FK_Codasip_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo", 0, 12, MCFixupKindInfo::FKF_IsPCRel},
    {"FK_Codasip_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo", 0, 12, 0},
    {"FK_Codasip_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12", 0, 12, MCFixupKindInfo::FKF_IsPCRel},
    {"FK_Codasip_MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20", 0, 20, MCFixupKindInfo::FKF_IsPCRel},
    {"FK_Codasip_MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32", 0, 32, MCFixupKindInfo::FKF_IsPCRel},
    {"FK_Codasip_MI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi", 0, 32, 0},
    {"FK_Codasip_MI4addrIH1_10start_base23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple", 0, 32, MCFixupKindInfo::FKF_IsPCRel},
    {"FK_Codasip_MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple", 0, 12, 0},
    {"FK_Codasip_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple", 0, 12, 0},
    {"FK_Codasip_MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm", 0, 5, 0}
    // clang-format on
  };
  if (Kind < FirstTargetFixupKind)
    return MCAsmBackend::getFixupKindInfo(Kind);
  assert(unsigned(Kind - FirstTargetFixupKind) < getNumFixupKinds() &&
         "Invalid kind!");
  return Infos[Kind - FirstTargetFixupKind];
}

bool CodasipGenAsmBackend::writeNopData(raw_ostream &OS, uint64_t Count) const {
  // skip if nothing to emit
  if (Count == 0) {
    return true;
  }
  // clang-format off

  // table of nops from biggest to smallest
  constexpr std::array Nops {
    NopFillRecord(uint32_t(0x13ULL)),
  };
  // make the fill
  for (auto CurrentNop = Nops.cbegin(); CurrentNop != Nops.cend();) {
    // size of current nop
    const unsigned Size = CurrentNop->getSize();
    // move on to smaller nop of the remaining space is too small
    if (Count < Size) {
      ++CurrentNop;
      continue;
    }
    // write the nop
    CurrentNop->write(OS, Endian);
    // detract from counter
    assert(Count >= Size);
    Count -= Size;
    // success
    if (Count == 0) {
      return true;
    }
  }

  // clang-format on
  // failed
  // callers will take care of printing an error
  return false;
}

uint64_t adjustFixupValue(const MCFixup &Fixup, uint64_t Value,
                          MCContext &Ctx) {
  const unsigned Kind = Fixup.getKind();
  switch (Kind) {
  // Taken from RISC-V target
  case Codasip::fixup_riscv_got_hi20:
  case Codasip::fixup_riscv_tls_got_hi20:
  case Codasip::fixup_riscv_tls_gd_hi20:
    llvm_unreachable("Relocation should be unconditionally forced\n");
  case FK_Data_1:
  case FK_Data_2:
  case FK_Data_4:
  case FK_Data_8:
    return Value;
  case Codasip::fixup_riscv_lo12_i:
  case Codasip::fixup_riscv_pcrel_lo12_i:
  case Codasip::fixup_riscv_tprel_lo12_i:
    return Value & 0xfff;
  case Codasip::fixup_riscv_lo12_s:
  case Codasip::fixup_riscv_pcrel_lo12_s:
  case Codasip::fixup_riscv_tprel_lo12_s:
    return (((Value >> 5) & 0x7f) << 25) | ((Value & 0x1f) << 7);
  case Codasip::fixup_riscv_hi20:
  case Codasip::fixup_riscv_pcrel_hi20:
  case Codasip::fixup_riscv_tprel_hi20:
    // Add 1 if bit 11 is 1, to compensate for low 12 bits being negative.
    return ((Value + 0x800) >> 12) & 0xfffff;
  case Codasip::fixup_riscv_jal: {
    if (!isInt<21>(Value))
      Ctx.reportError(Fixup.getLoc(), "fixup value out of range");
    if (Value & 0x1)
      Ctx.reportError(Fixup.getLoc(), "fixup value must be 2-byte aligned");
    // Need to produce imm[19|10:1|11|19:12] from the 21-bit Value.
    unsigned Sbit = (Value >> 20) & 0x1;
    unsigned Hi8 = (Value >> 12) & 0xff;
    unsigned Mid1 = (Value >> 11) & 0x1;
    unsigned Lo10 = (Value >> 1) & 0x3ff;
    // Inst{31} = Sbit;
    // Inst{30-21} = Lo10;
    // Inst{20} = Mid1;
    // Inst{19-12} = Hi8;
    Value = (Sbit << 19) | (Lo10 << 9) | (Mid1 << 8) | Hi8;
    return Value;
  }
  case Codasip::fixup_riscv_branch: {
    if (!isInt<13>(Value))
      Ctx.reportError(Fixup.getLoc(), "fixup value out of range");
    if (Value & 0x1)
      Ctx.reportError(Fixup.getLoc(), "fixup value must be 2-byte aligned");
    // Need to extract imm[12], imm[10:5], imm[4:1], imm[11] from the 13-bit
    // Value.
    unsigned Sbit = (Value >> 12) & 0x1;
    unsigned Hi1 = (Value >> 11) & 0x1;
    unsigned Mid6 = (Value >> 5) & 0x3f;
    unsigned Lo4 = (Value >> 1) & 0xf;
    // Inst{31} = Sbit;
    // Inst{30-25} = Mid6;
    // Inst{11-8} = Lo4;
    // Inst{7} = Hi1;
    Value = (Sbit << 31) | (Mid6 << 25) | (Lo4 << 8) | (Hi1 << 7);
    return Value;
  }
  case Codasip::fixup_riscv_call:
  case Codasip::fixup_riscv_call_plt: {
    // Jalr will add UpperImm with the sign-extended 12-bit LowerImm,
    // we need to add 0x800ULL before extract upper bits to reflect the
    // effect of the sign extension.
    uint64_t UpperImm = (Value + 0x800ULL) & 0xfffff000ULL;
    uint64_t LowerImm = Value & 0xfffULL;
    return UpperImm | ((LowerImm << 20) << 32);
  }
  case Codasip::fixup_riscv_rvc_jump: {
    // Need to produce offset[11|4|9:8|10|6|7|3:1|5] from the 11-bit Value.
    unsigned Bit11 = (Value >> 11) & 0x1;
    unsigned Bit4 = (Value >> 4) & 0x1;
    unsigned Bit9_8 = (Value >> 8) & 0x3;
    unsigned Bit10 = (Value >> 10) & 0x1;
    unsigned Bit6 = (Value >> 6) & 0x1;
    unsigned Bit7 = (Value >> 7) & 0x1;
    unsigned Bit3_1 = (Value >> 1) & 0x7;
    unsigned Bit5 = (Value >> 5) & 0x1;
    Value = (Bit11 << 10) | (Bit4 << 9) | (Bit9_8 << 7) | (Bit10 << 6) |
            (Bit6 << 5) | (Bit7 << 4) | (Bit3_1 << 1) | Bit5;
    return Value;
  }
  case Codasip::fixup_riscv_rvc_branch: {
    // Need to produce offset[8|4:3], [reg 3 bit], offset[7:6|2:1|5]
    unsigned Bit8 = (Value >> 8) & 0x1;
    unsigned Bit7_6 = (Value >> 6) & 0x3;
    unsigned Bit5 = (Value >> 5) & 0x1;
    unsigned Bit4_3 = (Value >> 3) & 0x3;
    unsigned Bit2_1 = (Value >> 1) & 0x3;
    Value = (Bit8 << 12) | (Bit4_3 << 10) | (Bit7_6 << 5) | (Bit2_1 << 3) |
            (Bit5 << 2);
    return Value;
  }
  default:
    assert(Kind >= FirstTargetFixupKind && "unexpected general fixup kind!");
    assert(Kind < Codasip::FK_Codasip_Invalid && "invalid fixup kind!");
    // TODO remove ByteCount from the MCFixup
    // Number of bits of the fixup part
    unsigned NumBitsPart = Fixup.getMsbValue() - Fixup.getLsbValue() + 1;

    // Adjust fixup value
    uint64_t CurVal = Value;
#ifdef DEBUG_CLASS
    outs() << "SHR=" << Fixup.getLsbValue() << "\n";
#endif
    CurVal >>= Fixup.getLsbValue();
    uint64_t Mask = maskTrailingOnes<uint64_t>(NumBitsPart);
#ifdef DEBUG_CLASS
    outs() << "MASK=" << Mask << "\n";
#endif
    CurVal &= Mask;
#ifdef DEBUG_CLASS
    outs() << "Masked CurVal=" << CurVal << "\n";
    outs() << "SLR=" << Fixup.getLsbOut() << "\n";
#endif
    CurVal <<= Fixup.getLsbOut();
#ifdef DEBUG_CLASS
    outs() << "Apply CurVal=" << CurVal << "\n";
#endif
    return CurVal;
  }
}

void CodasipGenAsmBackend::applyFixup(
    const MCAssembler &Asm, const MCFixup &Fixup, const MCValue &Target,
    MutableArrayRef<char> Data, uint64_t Value, bool IsResolved,
    const MCSubtargetInfo *STI, const MCSectionELF &Section) const {
#ifdef DEBUG_CLASS
  outs() << "CodasipGenAsmBackend::applyFixup Fixup.getKind()="
         << Fixup.getKind() << " Fixup.getOffset()=" << Fixup.getOffset()
         << " Value=" << Value << " IsResolved=" << IsResolved
         << " Fixup.getMsbValue()=" << Fixup.getMsbValue()
         << " Fixup.getLsbValue()=" << Fixup.getLsbValue()
         << " Fixup.getMsbOut()=" << Fixup.getMsbOut()
         << " Fixup.getLsbOut()=" << Fixup.getLsbOut()
         << " Fixup.isSignPart()=" << Fixup.isSignPart()
         << " Fixup.isSigned()=" << Fixup.isSigned() << "\n";
#endif

  const unsigned Kind = Fixup.getKind();
  uint64_t CurVal = Value;

  // Encoding section for fixups solvable by assembler backend
    bool encodingSectionHasMask = false;
  switch (Kind) {
  case Codasip::FK_Codasip_MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi: {
    CurVal =  (  (  (  ( (codasip::MaxInt)CurVal + (codasip::Integer<32, true>)(0x800) )  )  >> (codasip::Integer<32, true>)(0xc) )  & (codasip::Integer<32, true>)(0xfffff) ) ;
    encodingSectionHasMask = true;
    break;
  }
  case Codasip::FK_Codasip_MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo: {
    CurVal =  ( (codasip::MaxInt)CurVal & (codasip::Integer<32, true>)(0xfff) ) ;
    encodingSectionHasMask = true;
    break;
  }
  case Codasip::FK_Codasip_MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo: {
    CurVal =  ( (codasip::MaxInt)CurVal & (codasip::Integer<32, true>)(0xfff) ) ;
    encodingSectionHasMask = true;
    break;
  }
  case Codasip::FK_Codasip_MI3valIH1_10start_base14_11imm20_reloc3imm1_14imm20_pcrel_hi: {
    CurVal =  (  (  (  (  ( (codasip::MaxInt)CurVal - (codasip::Integer<64, false>)((codasip::Integer<64, false>)(0)) )  + (codasip::Integer<32, true>)(0x800) )  )  >> (codasip::Integer<32, true>)(0xc) )  & (codasip::Integer<32, true>)(0xfffff) ) ;
    encodingSectionHasMask = true;
    break;
  }
  case Codasip::FK_Codasip_MI3valIH1_10start_base14_11imm20_reloc3imm1_8imm20_hi: {
    CurVal =  (  (  (  ( (codasip::MaxInt)CurVal + (codasip::Integer<32, true>)(0x800) )  )  >> (codasip::Integer<32, true>)(0xc) )  & (codasip::Integer<32, true>)(0xfffff) ) ;
    encodingSectionHasMask = true;
    break;
  }
  case Codasip::FK_Codasip_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo: {
    CurVal =  (  (  ( (codasip::MaxInt)CurVal - (codasip::Integer<64, false>)((codasip::Integer<64, false>)(0)) )  )  & (codasip::Integer<32, true>)(0xfff) ) ;
    encodingSectionHasMask = true;
    break;
  }
  case Codasip::FK_Codasip_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo: {
    CurVal =  ( (codasip::MaxInt)CurVal & (codasip::Integer<32, true>)(0xfff) ) ;
    encodingSectionHasMask = true;
    break;
  }
  case Codasip::FK_Codasip_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12: {
    CurVal =  (  (  ( (codasip::MaxInt)(int64_t)CurVal - (codasip::Integer<64, true>)((codasip::Integer<64, true>)(0)) )  )  >> (codasip::Integer<32, true>)(0x1) ) ;
    break;
  }
  case Codasip::FK_Codasip_MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20: {
    CurVal =  (  (  ( (codasip::MaxInt)(int64_t)CurVal - (codasip::Integer<64, true>)((codasip::Integer<64, true>)(0)) )  )  >> (codasip::Integer<32, true>)(0x1) ) ;
    break;
  }
  case Codasip::FK_Codasip_MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32: {
    CurVal =  ( (  (  (  (  ( (codasip::MaxInt)(int64_t)CurVal - (codasip::Integer<64, true>)((codasip::Integer<64, true>)(0)) )  )  & (codasip::Integer<32, true>)(0x800) )  )  ) ? ( ( codasip::Integer<64, false> )  (  (  (  (  ( (codasip::MaxInt)(int64_t)CurVal - (codasip::Integer<64, true>)((codasip::Integer<64, true>)(0)) )  )  + (codasip::Integer<32, true>)(0x1000) )  )  & (codasip::Integer<32, false>)(0xffffffff) )  ) : ( ( codasip::Integer<64, false> )  (  (  ( (codasip::MaxInt)(int64_t)CurVal - (codasip::Integer<64, true>)((codasip::Integer<64, true>)(0)) )  )  & (codasip::Integer<32, false>)(0xffffffff) )  ) ) ;
    encodingSectionHasMask = true;
    break;
  }
  case Codasip::FK_Codasip_MI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi: {
    CurVal =  ( (  (  ( (codasip::MaxInt)(int64_t)CurVal & (codasip::Integer<32, true>)(0x800) )  )  ) ? ( ( codasip::Integer<32, false> )  (  (  ( (codasip::MaxInt)(int64_t)CurVal + (codasip::Integer<32, true>)(0x1000) )  )  & (codasip::Integer<32, false>)(0xffffffff) )  ) : ( ( codasip::Integer<32, false> )  ( (codasip::MaxInt)(int64_t)CurVal & (codasip::Integer<32, false>)(0xffffffff) )  ) ) ;
    encodingSectionHasMask = true;
    break;
  }
  case Codasip::FK_Codasip_MI4addrIH1_10start_base23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple: {
    CurVal =  ( (  (  (  (  ( (codasip::MaxInt)(int64_t)CurVal - (codasip::Integer<64, true>)((codasip::Integer<64, true>)(0)) )  )  & (codasip::Integer<32, true>)(0x800) )  )  ) ? ( ( codasip::Integer<64, false> )  (  (  (  (  ( (codasip::MaxInt)(int64_t)CurVal - (codasip::Integer<64, true>)((codasip::Integer<64, true>)(0)) )  )  + (codasip::Integer<32, true>)(0x1000) )  )  & (codasip::Integer<32, false>)(0xffffffff) )  ) : ( ( codasip::Integer<64, false> )  (  (  ( (codasip::MaxInt)(int64_t)CurVal - (codasip::Integer<64, true>)((codasip::Integer<64, true>)(0)) )  )  & (codasip::Integer<32, false>)(0xffffffff) )  ) ) ;
    encodingSectionHasMask = true;
    break;
  }
  default:
    break;
  }


#ifdef DEBUG_CLASS
  outs() << "Start CurVal=" << CurVal << "\n";
#endif
  // Does not change anything
  if (!CurVal)
    return;

  // Number of bits of the fixup value
  MCFixupKindInfo Info = getFixupKindInfo(Fixup.getKind());
  const unsigned NumBits = Info.TargetSize;
  // Check that value will fit into given bits
  if (Fixup.isSignPart())
    checkTruncationOverflow(
        CurVal, NumBits, Fixup.isSigned(),
        Fixup.getValue()->hasMask() || encodingSectionHasMask, Fixup.getLoc(),
        Asm.getContext().getSourceManager());

  // Adjust fixup value
  CurVal = adjustFixupValue(Fixup, CurVal, Asm.getContext());

  // Shift the value into position.
  // Only for RISC-V fixups, Codasip is always 0. Codasip way is
  // Fixup.getLsbOut() above ...
  CurVal <<= Info.TargetOffset;

  // Number of bytes we need to fixup
  unsigned NumBytes = 0;
  switch (Kind) {
  case FK_Data_1:
  case FK_Data_2:
  case FK_Data_4:
  case FK_Data_8:
    NumBytes = (NumBits + 7) / 8;
    break;
  default:
    assert(Kind >= FirstTargetFixupKind && "unexpected general fixup kind!");
    assert(Kind < Codasip::FK_Codasip_Invalid && "invalid fixup kind!");
    NumBytes = Fixup.getByteCount();
    break;
  }
  unsigned Offset = Fixup.getOffset();
  // Fix for RISC-V
  if (NumBytes == 0)
    NumBytes = alignTo(Info.TargetSize + Info.TargetOffset, 8) / 8;

  if (Endian == support::big) {
    // Fix offset for LAU != 8 with big endian
    const MCAsmInfo &MAI = *Asm.getContext().getAsmInfo();
    const unsigned int ByteBytes = Section.GetByteBytes(MAI);
    if (ByteBytes != 1) {
      const unsigned int ByteOctets = Section.GetByteOctets(MAI);
      Offset += (ByteOctets - ByteBytes);
    }
  }
  // For each byte of the fragment that the fixup touches, mask in the bits from
  // the fixup value.
  for (unsigned i = 0; i < NumBytes; i++) {
    unsigned Index = 0;
    if (Endian == support::big) {
      Index = NumBytes - i - 1;
    } else {
      Index = i;
    }
#ifdef DEBUG_CLASS
    outs() << "Part 1=" << (unsigned)((uint8_t)(CurVal >> (i * 8))) << "\n";
    outs() << "Data 1=" << (unsigned)Data[Offset + Index] << "\n";
#endif
    Data[Offset + i] |= ((uint8_t)(CurVal >> (Index * 8)));
#ifdef DEBUG_CLASS
    outs() << "Data 2=" << (unsigned)Data[Offset + Index] << "\n";
#endif
  }
}

std::unique_ptr<MCObjectTargetWriter>
CodasipGenAsmBackend::createObjectTargetWriter() const {
  return createCodasipELFObjectWriter(OSABI);
}
