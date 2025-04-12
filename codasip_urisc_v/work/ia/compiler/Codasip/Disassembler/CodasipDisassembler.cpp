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


#include "Codasip.h"
#include "Disassembler/CodasipDebundleFunctionGen.h"
#include "InstPrinter/CodasipInstPrinter.h"
#include "MCTargetDesc/CodasipMCTargetDesc.h"
#include "common/codasip_integer.h"
#include "utility/codasip_log.h"
#include "llvm/BinaryFormat/ELF.h"
#include "llvm/CodeGen/TargetOpcodes.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCDisassembler/MCDisassembler.h"
#include "llvm/MC/MCFixedLenDisassembler.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/Support/Endian.h"
#include "llvm/Support/TargetRegistry.h"

using namespace llvm;

#define DEBUG_TYPE "Codasip-disassembler"

typedef MCDisassembler::DecodeStatus DecodeStatus;

namespace {
class CodasipDisassembler : public MCDisassembler {

public:
  CodasipDisassembler(const MCSubtargetInfo &STI, MCContext &Ctx)
      : MCDisassembler(STI, Ctx) {}

  DecodeStatus getInstruction(MCInst &Instr, uint64_t &Size,
                              ArrayRef<uint8_t> Bytes, uint64_t Address,
                              raw_ostream &VStream,
                              raw_ostream &CStream) const override;
  DecodeStatus getInstructionBuiltin(MCInst &Instr, uint64_t &Size,
                                     ArrayRef<uint8_t> Bytes,
                                     uint64_t Address) const override;
};
} // end anonymous namespace

static MCDisassembler *createCodasipDisassembler(const Target &T,
                                                 const MCSubtargetInfo &STI,
                                                 MCContext &Ctx) {
  return new CodasipDisassembler(STI, Ctx);
}

extern "C" void LLVMInitializeCodasipDisassembler() {
  // Register the disassembler for each target.
  TargetRegistry::RegisterMCDisassembler(TheCodasipTarget,
                                         createCodasipDisassembler);
}

void deparcel(SmallVector<uint8_t, 8> &Dst, ArrayRef<uint8_t> Src,
              const unsigned int ParcelBytes) {
  if (Src.size() % ParcelBytes) {
    codasip::LOG_WARNING() << "Cannot deparcel " << Src.size()
                           << " bytes by parcel size of " << ParcelBytes
                           << " bytes.";
    Dst.append(Src.begin(), Src.end());
    return;
  }
  const unsigned int ParcelCount = Src.size() / ParcelBytes;
  for (unsigned int i = 0; i < ParcelCount; i++) {
    const unsigned int SrcParcelIndex = ParcelCount - i - 1;
    const unsigned int SrcByteIndex = SrcParcelIndex * ParcelBytes;
    for (unsigned int j = 0; j < ParcelBytes; j++)
      Dst.emplace_back(Src[SrcByteIndex + j]);
  }
}

void bytesToInt(codasip::MaxUint &Dst, ArrayRef<uint8_t> Src) {
  for (size_t i = 0; i < Src.size(); i++) {
    Dst <<= 8;
    Dst |= Src[i];
  }
}

#ifndef _MSVC
_Pragma("GCC diagnostic push")
_Pragma("GCC diagnostic ignored \"-Wunused-function\"")
#endif
static DecodeStatus DecoderegsRegisterClass(MCInst &Inst,
                                           uint64_t RegNo,
                                           uint64_t,
                                           const void *) {
  unsigned int Reg = 0;
  if (RegNo == 1)
    Reg = Codasip::rf_gpr_1;
  else if (RegNo == 2)
    Reg = Codasip::rf_gpr_2;
  else if (RegNo == 3)
    Reg = Codasip::rf_gpr_3;
  else if (RegNo == 4)
    Reg = Codasip::rf_gpr_4;
  else if (RegNo == 5)
    Reg = Codasip::rf_gpr_5;
  else if (RegNo == 6)
    Reg = Codasip::rf_gpr_6;
  else if (RegNo == 7)
    Reg = Codasip::rf_gpr_7;
  else if (RegNo == 8)
    Reg = Codasip::rf_gpr_8;
  else if (RegNo == 9)
    Reg = Codasip::rf_gpr_9;
  else if (RegNo == 10)
    Reg = Codasip::rf_gpr_10;
  else if (RegNo == 11)
    Reg = Codasip::rf_gpr_11;
  else if (RegNo == 12)
    Reg = Codasip::rf_gpr_12;
  else if (RegNo == 13)
    Reg = Codasip::rf_gpr_13;
  else if (RegNo == 14)
    Reg = Codasip::rf_gpr_14;
  else if (RegNo == 15)
    Reg = Codasip::rf_gpr_15;
  else if (RegNo == 16)
    Reg = Codasip::rf_gpr_16;
  else if (RegNo == 17)
    Reg = Codasip::rf_gpr_17;
  else if (RegNo == 18)
    Reg = Codasip::rf_gpr_18;
  else if (RegNo == 19)
    Reg = Codasip::rf_gpr_19;
  else if (RegNo == 20)
    Reg = Codasip::rf_gpr_20;
  else if (RegNo == 21)
    Reg = Codasip::rf_gpr_21;
  else if (RegNo == 22)
    Reg = Codasip::rf_gpr_22;
  else if (RegNo == 23)
    Reg = Codasip::rf_gpr_23;
  else if (RegNo == 24)
    Reg = Codasip::rf_gpr_24;
  else if (RegNo == 25)
    Reg = Codasip::rf_gpr_25;
  else if (RegNo == 26)
    Reg = Codasip::rf_gpr_26;
  else if (RegNo == 27)
    Reg = Codasip::rf_gpr_27;
  else if (RegNo == 28)
    Reg = Codasip::rf_gpr_28;
  else if (RegNo == 29)
    Reg = Codasip::rf_gpr_29;
  else if (RegNo == 30)
    Reg = Codasip::rf_gpr_30;
  else if (RegNo == 31)
    Reg = Codasip::rf_gpr_31;
  else
    return MCDisassembler::Fail;
  Inst.addOperand(MCOperand::createReg(Reg));
  return MCDisassembler::Success;
}

static DecodeStatus Decoderegs_csrRegisterClass(MCInst &Inst,
                                           uint64_t RegNo,
                                           uint64_t,
                                           const void *) {
  unsigned int Reg = 0;
  if (RegNo == 768)
    Reg = Codasip::codasip_physical_regs_csr_768;
  else if (RegNo == 769)
    Reg = Codasip::codasip_physical_regs_csr_769;
  else if (RegNo == 772)
    Reg = Codasip::codasip_physical_regs_csr_772;
  else if (RegNo == 773)
    Reg = Codasip::codasip_physical_regs_csr_773;
  else if (RegNo == 800)
    Reg = Codasip::codasip_physical_regs_csr_800;
  else if (RegNo == 803)
    Reg = Codasip::codasip_physical_regs_csr_803;
  else if (RegNo == 804)
    Reg = Codasip::codasip_physical_regs_csr_804;
  else if (RegNo == 805)
    Reg = Codasip::codasip_physical_regs_csr_805;
  else if (RegNo == 806)
    Reg = Codasip::codasip_physical_regs_csr_806;
  else if (RegNo == 807)
    Reg = Codasip::codasip_physical_regs_csr_807;
  else if (RegNo == 808)
    Reg = Codasip::codasip_physical_regs_csr_808;
  else if (RegNo == 809)
    Reg = Codasip::codasip_physical_regs_csr_809;
  else if (RegNo == 810)
    Reg = Codasip::codasip_physical_regs_csr_810;
  else if (RegNo == 811)
    Reg = Codasip::codasip_physical_regs_csr_811;
  else if (RegNo == 812)
    Reg = Codasip::codasip_physical_regs_csr_812;
  else if (RegNo == 813)
    Reg = Codasip::codasip_physical_regs_csr_813;
  else if (RegNo == 814)
    Reg = Codasip::codasip_physical_regs_csr_814;
  else if (RegNo == 815)
    Reg = Codasip::codasip_physical_regs_csr_815;
  else if (RegNo == 816)
    Reg = Codasip::codasip_physical_regs_csr_816;
  else if (RegNo == 817)
    Reg = Codasip::codasip_physical_regs_csr_817;
  else if (RegNo == 818)
    Reg = Codasip::codasip_physical_regs_csr_818;
  else if (RegNo == 819)
    Reg = Codasip::codasip_physical_regs_csr_819;
  else if (RegNo == 820)
    Reg = Codasip::codasip_physical_regs_csr_820;
  else if (RegNo == 821)
    Reg = Codasip::codasip_physical_regs_csr_821;
  else if (RegNo == 822)
    Reg = Codasip::codasip_physical_regs_csr_822;
  else if (RegNo == 823)
    Reg = Codasip::codasip_physical_regs_csr_823;
  else if (RegNo == 824)
    Reg = Codasip::codasip_physical_regs_csr_824;
  else if (RegNo == 825)
    Reg = Codasip::codasip_physical_regs_csr_825;
  else if (RegNo == 826)
    Reg = Codasip::codasip_physical_regs_csr_826;
  else if (RegNo == 827)
    Reg = Codasip::codasip_physical_regs_csr_827;
  else if (RegNo == 828)
    Reg = Codasip::codasip_physical_regs_csr_828;
  else if (RegNo == 829)
    Reg = Codasip::codasip_physical_regs_csr_829;
  else if (RegNo == 830)
    Reg = Codasip::codasip_physical_regs_csr_830;
  else if (RegNo == 831)
    Reg = Codasip::codasip_physical_regs_csr_831;
  else if (RegNo == 832)
    Reg = Codasip::codasip_physical_regs_csr_832;
  else if (RegNo == 833)
    Reg = Codasip::codasip_physical_regs_csr_833;
  else if (RegNo == 834)
    Reg = Codasip::codasip_physical_regs_csr_834;
  else if (RegNo == 835)
    Reg = Codasip::codasip_physical_regs_csr_835;
  else if (RegNo == 836)
    Reg = Codasip::codasip_physical_regs_csr_836;
  else if (RegNo == 2816)
    Reg = Codasip::codasip_physical_regs_csr_2816;
  else if (RegNo == 2818)
    Reg = Codasip::codasip_physical_regs_csr_2818;
  else if (RegNo == 2819)
    Reg = Codasip::codasip_physical_regs_csr_2819;
  else if (RegNo == 2820)
    Reg = Codasip::codasip_physical_regs_csr_2820;
  else if (RegNo == 2821)
    Reg = Codasip::codasip_physical_regs_csr_2821;
  else if (RegNo == 2822)
    Reg = Codasip::codasip_physical_regs_csr_2822;
  else if (RegNo == 2823)
    Reg = Codasip::codasip_physical_regs_csr_2823;
  else if (RegNo == 2824)
    Reg = Codasip::codasip_physical_regs_csr_2824;
  else if (RegNo == 2825)
    Reg = Codasip::codasip_physical_regs_csr_2825;
  else if (RegNo == 2826)
    Reg = Codasip::codasip_physical_regs_csr_2826;
  else if (RegNo == 2827)
    Reg = Codasip::codasip_physical_regs_csr_2827;
  else if (RegNo == 2828)
    Reg = Codasip::codasip_physical_regs_csr_2828;
  else if (RegNo == 2829)
    Reg = Codasip::codasip_physical_regs_csr_2829;
  else if (RegNo == 2830)
    Reg = Codasip::codasip_physical_regs_csr_2830;
  else if (RegNo == 2831)
    Reg = Codasip::codasip_physical_regs_csr_2831;
  else if (RegNo == 2832)
    Reg = Codasip::codasip_physical_regs_csr_2832;
  else if (RegNo == 2833)
    Reg = Codasip::codasip_physical_regs_csr_2833;
  else if (RegNo == 2834)
    Reg = Codasip::codasip_physical_regs_csr_2834;
  else if (RegNo == 2835)
    Reg = Codasip::codasip_physical_regs_csr_2835;
  else if (RegNo == 2836)
    Reg = Codasip::codasip_physical_regs_csr_2836;
  else if (RegNo == 2837)
    Reg = Codasip::codasip_physical_regs_csr_2837;
  else if (RegNo == 2838)
    Reg = Codasip::codasip_physical_regs_csr_2838;
  else if (RegNo == 2839)
    Reg = Codasip::codasip_physical_regs_csr_2839;
  else if (RegNo == 2840)
    Reg = Codasip::codasip_physical_regs_csr_2840;
  else if (RegNo == 2841)
    Reg = Codasip::codasip_physical_regs_csr_2841;
  else if (RegNo == 2842)
    Reg = Codasip::codasip_physical_regs_csr_2842;
  else if (RegNo == 2843)
    Reg = Codasip::codasip_physical_regs_csr_2843;
  else if (RegNo == 2844)
    Reg = Codasip::codasip_physical_regs_csr_2844;
  else if (RegNo == 2845)
    Reg = Codasip::codasip_physical_regs_csr_2845;
  else if (RegNo == 2846)
    Reg = Codasip::codasip_physical_regs_csr_2846;
  else if (RegNo == 2847)
    Reg = Codasip::codasip_physical_regs_csr_2847;
  else if (RegNo == 2944)
    Reg = Codasip::codasip_physical_regs_csr_2944;
  else if (RegNo == 2946)
    Reg = Codasip::codasip_physical_regs_csr_2946;
  else if (RegNo == 2947)
    Reg = Codasip::codasip_physical_regs_csr_2947;
  else if (RegNo == 2948)
    Reg = Codasip::codasip_physical_regs_csr_2948;
  else if (RegNo == 2949)
    Reg = Codasip::codasip_physical_regs_csr_2949;
  else if (RegNo == 2950)
    Reg = Codasip::codasip_physical_regs_csr_2950;
  else if (RegNo == 2951)
    Reg = Codasip::codasip_physical_regs_csr_2951;
  else if (RegNo == 2952)
    Reg = Codasip::codasip_physical_regs_csr_2952;
  else if (RegNo == 2953)
    Reg = Codasip::codasip_physical_regs_csr_2953;
  else if (RegNo == 2954)
    Reg = Codasip::codasip_physical_regs_csr_2954;
  else if (RegNo == 2955)
    Reg = Codasip::codasip_physical_regs_csr_2955;
  else if (RegNo == 2956)
    Reg = Codasip::codasip_physical_regs_csr_2956;
  else if (RegNo == 2957)
    Reg = Codasip::codasip_physical_regs_csr_2957;
  else if (RegNo == 2958)
    Reg = Codasip::codasip_physical_regs_csr_2958;
  else if (RegNo == 2959)
    Reg = Codasip::codasip_physical_regs_csr_2959;
  else if (RegNo == 2960)
    Reg = Codasip::codasip_physical_regs_csr_2960;
  else if (RegNo == 2961)
    Reg = Codasip::codasip_physical_regs_csr_2961;
  else if (RegNo == 2962)
    Reg = Codasip::codasip_physical_regs_csr_2962;
  else if (RegNo == 2963)
    Reg = Codasip::codasip_physical_regs_csr_2963;
  else if (RegNo == 2964)
    Reg = Codasip::codasip_physical_regs_csr_2964;
  else if (RegNo == 2965)
    Reg = Codasip::codasip_physical_regs_csr_2965;
  else if (RegNo == 2966)
    Reg = Codasip::codasip_physical_regs_csr_2966;
  else if (RegNo == 2967)
    Reg = Codasip::codasip_physical_regs_csr_2967;
  else if (RegNo == 2968)
    Reg = Codasip::codasip_physical_regs_csr_2968;
  else if (RegNo == 2969)
    Reg = Codasip::codasip_physical_regs_csr_2969;
  else if (RegNo == 2970)
    Reg = Codasip::codasip_physical_regs_csr_2970;
  else if (RegNo == 2971)
    Reg = Codasip::codasip_physical_regs_csr_2971;
  else if (RegNo == 2972)
    Reg = Codasip::codasip_physical_regs_csr_2972;
  else if (RegNo == 2973)
    Reg = Codasip::codasip_physical_regs_csr_2973;
  else if (RegNo == 2974)
    Reg = Codasip::codasip_physical_regs_csr_2974;
  else if (RegNo == 2975)
    Reg = Codasip::codasip_physical_regs_csr_2975;
  else if (RegNo == 3857)
    Reg = Codasip::codasip_physical_regs_csr_3857;
  else if (RegNo == 3858)
    Reg = Codasip::codasip_physical_regs_csr_3858;
  else if (RegNo == 3859)
    Reg = Codasip::codasip_physical_regs_csr_3859;
  else if (RegNo == 3860)
    Reg = Codasip::codasip_physical_regs_csr_3860;
  else if (RegNo == 4033)
    Reg = Codasip::codasip_physical_regs_csr_4033;
  else if (RegNo == 4038)
    Reg = Codasip::codasip_physical_regs_csr_4038;
  else
    return MCDisassembler::Fail;
  Inst.addOperand(MCOperand::createReg(Reg));
  return MCDisassembler::Success;
}

static DecodeStatus decodeMI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12(
  MCInst &Inst, uint64_t Imm, int64_t Address, const void *Decoder) {
  const CodasipDisassembler *Dis = static_cast<const CodasipDisassembler *>(Decoder);
  (void)Dis; // suppress warning

  int64_t MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12 = Imm;
  MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12 =  (  (  ( (codasip::Integer<13, true>)((const codasip::Integer<12, true>)MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12) << (codasip::Integer<32, true>)(0x1) )  )  + (codasip::Integer<64, true>)((codasip::Integer<64, true>)(Address)) ) ;

  if (!Dis->tryAddingSymbolicOperand(Inst, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12, Address, true, 0, 4))
    Inst.addOperand(MCOperand::createImm(MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12));
  return MCDisassembler::Success;
}
static DecodeStatus decodeMI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20(
  MCInst &Inst, uint64_t Imm, int64_t Address, const void *Decoder) {
  const CodasipDisassembler *Dis = static_cast<const CodasipDisassembler *>(Decoder);
  (void)Dis; // suppress warning

  int64_t MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20 = Imm;
  MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20 =  (  (  ( (codasip::Integer<21, true>)((const codasip::Integer<20, true>)MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20) << (codasip::Integer<32, true>)(0x1) )  )  + (codasip::Integer<64, true>)((codasip::Integer<64, true>)(Address)) ) ;

  if (!Dis->tryAddingSymbolicOperand(Inst, MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20, Address, true, 0, 4))
    Inst.addOperand(MCOperand::createImm(MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20));
  return MCDisassembler::Success;
}

#ifndef _MSVC
_Pragma("GCC diagnostic pop")
#endif
#include "CodasipGenDisassemblerTables.inc"

DecodeStatus CodasipDisassembler::getInstruction(MCInst &MI, uint64_t &Size,
                                                 ArrayRef<uint8_t> Bytes,
                                                 uint64_t Address,
                                                 raw_ostream &OS,
                                                 raw_ostream &CS) const {
  CommentStream = &CS;
  DecodeStatus Result = Fail;
  // Start with zero size
  Size = 0;
  ArrayRef<uint8_t> ReadBytes = Bytes.take_front(4);
  Size += ReadBytes.size();
  SmallVector<uint8_t, 8> RawBytesBuffer;
  ArrayRef<uint8_t> RawBytes = ReadBytes;
  if (RawBytes.size() < 4) {
    RawBytesBuffer.insert(RawBytesBuffer.begin(), ReadBytes.begin(), ReadBytes.end());
    RawBytesBuffer.resize(4);
    RawBytes = ArrayRef<uint8_t>(RawBytesBuffer.data(), 4);
  }
  ArrayRef<uint8_t> SelectedBytes = RawBytes.take_front(4);
  SmallVector<uint8_t, 8> EndianFreeBytesBuffer(SelectedBytes.rbegin(), SelectedBytes.rend());
  ArrayRef<uint8_t> EndianFreeBytes(EndianFreeBytesBuffer.data(), EndianFreeBytesBuffer.size());
  ArrayRef<uint8_t> DeparceledBytes = EndianFreeBytes;
  codasip::MaxUint Insn;
  bytesToInt(Insn, DeparceledBytes);
  CodasipDebundleFunctionGen DebundleFunction;
  Result = DebundleFunction.Run(Insn, Size) ? Success : Fail;
  // Decoding failed
  if (Result == Fail) {
    Size = 0;
    return Result;
  }
  Result = decodeInstruction(DecoderTable32, MI, (uint64_t)Insn, Address, this, STI);
  // Decoding failed
  if (Result == Fail) {
    Size = 0;
    return Result;
  }

  return Result;
}

DecodeStatus
CodasipDisassembler::getInstructionBuiltin(MCInst &MI, uint64_t &Size,
                                           ArrayRef<uint8_t> Bytes,
                                           uint64_t Address) const {
  DecodeStatus Result = Fail;
  // Start with zero size
  Size = 0;
  ArrayRef<uint8_t> ReadBytes = Bytes.take_back(4);
  Size += ReadBytes.size();
  SmallVector<uint8_t, 8> RawBytesBuffer;
  ArrayRef<uint8_t> RawBytes = ReadBytes;
  if (RawBytes.size() < 4) {
    RawBytesBuffer.insert(RawBytesBuffer.begin(), ReadBytes.begin(), ReadBytes.end());
    RawBytesBuffer.resize(4);
    RawBytes = ArrayRef<uint8_t>(RawBytesBuffer.data(), 4);
  }
  ArrayRef<uint8_t> SelectedBytes = RawBytes.take_front(4);
  codasip::MaxUint Insn;
  bytesToInt(Insn, SelectedBytes);
  Result = decodeInstruction(DecoderTable32, MI, (uint64_t)Insn, Address, this, STI);
  // Decoding failed
  if (Result == Fail) {
    Size = 0;
    return Result;
  }

  return Result;
}
