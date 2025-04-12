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
 *                Date: 2025-04-12 09:03:18
 *                Copyright (C) 2025 Codasip s.r.o.
 */


#include "Codasip.h"
#include "CodasipMCExpr.h"
#include "MCTargetDesc/CodasipBundleFunctionGen.h"
#include "MCTargetDesc/CodasipCustomFixupEncoder.h"
#include "MCTargetDesc/CodasipFixupKinds.h"
#include "MCTargetDesc/CodasipMCTargetDesc.h"
#include "codasip/ObjectFile/CodasipObjectFile.h" // APIntToCodasipInt
#include "common/codasip_integer.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/MC/MCAsmInfo.h"
#include "llvm/MC/MCCodeEmitter.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCFixup.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCSymbol.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/EndianStream.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"
#include <cstdarg>

//#define DEBUG_CLASS

extern llvm::cl::opt<bool> RiscvTarget;

namespace llvm {

/**
 *  \brief  Print location on stderr.
 */
void printLocation(const SMLoc Loc, const SourceMgr *SM) {
  if (Loc.isValid() && SM) {
    unsigned CurBuf = SM->FindBufferContainingLoc(Loc);
    assert(CurBuf && "Invalid or unspecified location!");
    const MemoryBuffer *CurMB = SM->getMemoryBuffer(CurBuf);
    auto LineCol = SM->getLineAndColumn(Loc, CurBuf);
    errs() << CurMB->getBufferIdentifier() << ":" << LineCol.first << ":"
           << LineCol.second;
  } else
    errs() << "?:?:?";
}

/**
 *  \brief  Print warning about relocation truncation.
 *  \param[in]  Value Relocation value.
 *  \param[in]  BitWidth Bit-width of the result.
 *  \param[in]  Signed Sign of the result.
 *  \param[in]  Loc Location in the source buffer.
 *  \param[in]  SM Source manager, it is missing for *integrated_as mod.
 */
void printTruncationWarning(const uint64_t Value, const unsigned BitWidth,
                            const bool Signed, const SMLoc Loc,
                            const SourceMgr *SM) {
  const char *Sign = Signed ? "Signed" : "Unsigned";
  const uint64_t Truncated = Value & maskTrailingOnes<uint64_t>(BitWidth);

  printLocation(Loc, SM);

  errs() << ": warning: " << Sign << " relocation truncation overflow, value "
         << Value << "(0x";
  errs().write_hex(Value);
  errs() << ") was truncated to ";
  if (Signed)
    errs() << SignExtend64(Truncated, BitWidth);
  else
    errs() << Truncated;
  errs() << "(0x";
  errs().write_hex(Truncated);
  errs() << ").\n";
}

/**
 *  \brief  Checks that given Value fits into specified BitWidth.
 *  \param[in]  Value Checked value.
 *  \param[in]  BitWidth Bit-width of the result.
 *  \param[in]  Signed Sign of the result.
 *  \param[in]  Masked Initial expression was masked (Value could fit anywhere
 * then). \param[in]  Loc Location in the source buffer. \param[in]  SM Source
 * manager, it is missing for *integrated_as mod.
 */
void checkTruncationOverflow(const uint64_t Value, const unsigned BitWidth,
                             const bool Signed, const bool Masked,
                             const SMLoc Loc, const SourceMgr *SM) {
  if (RiscvTarget)
    return;

  const unsigned TruncatedBits = sizeof(uint64_t) * 8 - BitWidth;
  if (Signed) {
    if ((Value & (0x1ull << (BitWidth - 1))) == 0) {
      if (countLeadingZeros(Value) < TruncatedBits)
        printTruncationWarning(Value, BitWidth, true, Loc, SM);
    } else {
      if (!Masked && countLeadingOnes(Value) < TruncatedBits)
        printTruncationWarning(Value, BitWidth, true, Loc, SM);
    }
  } else {
    if (!Masked && countLeadingZeros(Value) < TruncatedBits)
      printTruncationWarning(Value, BitWidth, false, Loc, SM);
  }
}

/**
 *  \brief  Execute codasip_fatal.
 *  \param[in]  ExitCode Exit code
 *  \param[in]  Format Formatted text
 */
int codasip_fatal(uint32_t ExitCode, const char *Format, ...) {
  va_list VL;
  va_start(VL, Format);
  vprintf(Format, VL);
  va_end(VL);
  printf("\n");
  exit(ExitCode);
}

/**
 *  \brief  Implementation placed here because header needs to be rebuild on
 * change. \param[in]  MI Instruction \param[in]  AttributeId Attribute
 * identifier \param[in]  SM Source manager, if available
 */
int64_t getAttributeValue(const MCInst &MI, const std::string &AttributeId,
                          const SourceMgr *SM) {
  for (unsigned int i = 0; i < MI.getNumOperands(); i++) {
    const MCOperand &Op = MI.getOperand(i);
    if (Op.getAttributeId() == AttributeId) {
      if (!Op.isImm()) {
        printLocation(MI.getLoc(), SM);
        errs() << "Expecting constant value operand.\n";
        return 0;
      }
      return Op.getImm();
    }
  }
  assert(false && "Missing attribute identifier of encoding/decoding section "
                  "in instruction.");
  return 0;
}

} // namespace llvm

using namespace llvm;

#define DEBUG_TYPE "mccodeemitter"

STATISTIC(MCNumEmitted, "Number of MC instructions emitted");

namespace {

class CodasipMCCodeEmitter : public MCCodeEmitter {
  CodasipMCCodeEmitter(const CodasipMCCodeEmitter &) = delete;
  void operator=(const CodasipMCCodeEmitter &) = delete;
  const MCInstrInfo &MCII;
  MCContext &Ctx;
  // Generated custom fixup encoder
  CodasipCustomFixupEncoderGen m_GeneratedCustomFixupEncoder;
  // User custom fixup encoder (for RISC-V)
  CodasipCustomFixupEncoder m_UserCustomFixupEncoder;

public:
  CodasipMCCodeEmitter(const MCInstrInfo &mcii, MCContext &ctx)
      : MCII(mcii), Ctx(ctx), m_GeneratedCustomFixupEncoder(ctx),
        m_UserCustomFixupEncoder(ctx) {}

  ~CodasipMCCodeEmitter() override {}

  const CodasipCustomFixupEncoderGen &getCustomFixupEncoder() const;




  void encodeInstruction(const MCInst &MI, raw_ostream &OS,
                         SmallVectorImpl<MCFixup> &Fixups,
                         const MCSubtargetInfo &STI) const override;

  /// TableGen'erated function for getting the binary encoding for an
  /// instruction.

  uint64_t getBinaryCodeForInstr(const MCInst &MI,
                                 SmallVectorImpl<MCFixup> &Fixups,
                                 const MCSubtargetInfo &STI) const;


  /// Return binary encoding of operand. If the machine operand requires
  /// relocation, record the relocation and return zero.

  unsigned getMachineOpValue(const MCInst &MI, const MCOperand &MO,
                             SmallVectorImpl<MCFixup> &Fixups,
                             const MCSubtargetInfo &STI) const;


  uint64_t encodeMI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12(const MCInst &MI,
    unsigned OpIdx,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const;
  uint64_t encodeMI3immIH1_10start_base6_4imm53imm1_4imm5(const MCInst &MI,
    unsigned OpIdx,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const;
  uint64_t encodeMI3immIH1_10start_base8_6op_csr3csr1_7csr_imm(const MCInst &MI,
    unsigned OpIdx,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const;
  uint64_t encodeMI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi(const MCInst &MI,
    unsigned OpIdx,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const;
  uint64_t encodeMI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo(const MCInst &MI,
    unsigned OpIdx,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const;
  uint64_t encodeMI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo(const MCInst &MI,
    unsigned OpIdx,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const;
  uint64_t encodeMI3valIH1_10start_base14_11imm20_reloc3imm1_14imm20_pcrel_hi(const MCInst &MI,
    unsigned OpIdx,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const;
  uint64_t encodeMI3valIH1_10start_base14_11imm20_reloc3imm1_8imm20_hi(const MCInst &MI,
    unsigned OpIdx,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const;
  uint64_t encodeMI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo(const MCInst &MI,
    unsigned OpIdx,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const;
  uint64_t encodeMI3valIH1_10start_base8_6simm126simm121_9simm12_lo(const MCInst &MI,
    unsigned OpIdx,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const;
  uint64_t encodeMI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12(const MCInst &MI,
    unsigned OpIdx,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const;
  uint64_t encodeMI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20(const MCInst &MI,
    unsigned OpIdx,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const;
  uint64_t encodeMI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32(const MCInst &MI,
    unsigned OpIdx,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const;
  uint64_t encodeMI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi(const MCInst &MI,
    unsigned OpIdx,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const;
  uint64_t encodeMI4addrIH1_10start_base23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple(const MCInst &MI,
    unsigned OpIdx,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const;
  uint64_t encodeMI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple(const MCInst &MI,
    unsigned OpIdx,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const;
  uint64_t encodeMI4simmIH1_10start_base8_6simm126simm121_13simm12_simple(const MCInst &MI,
    unsigned OpIdx,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const;
  uint64_t encodeMI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm(const MCInst &MI,
    unsigned OpIdx,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const;

};
} // end anonymous namespace

MCCodeEmitter *llvm::createCodasipMCCodeEmitter(const MCInstrInfo &MCII,
                                                const MCRegisterInfo &MRI,
                                                MCContext &Ctx) {
  return new CodasipMCCodeEmitter(MCII, Ctx);
}

const CodasipCustomFixupEncoderGen &CodasipMCCodeEmitter::getCustomFixupEncoder() const {
  return RiscvTarget ? m_UserCustomFixupEncoder : m_GeneratedCustomFixupEncoder;
}




void CodasipMCCodeEmitter::encodeInstruction(const MCInst &MI, raw_ostream &OS,
                                           SmallVectorImpl<MCFixup> &Fixups,
                                           const MCSubtargetInfo &STI) const {
  uint64_t Bits = getBinaryCodeForInstr(MI, Fixups, STI);
  const MCInstrDesc &Desc = MCII.get(MI.getOpcode());
  unsigned Bytes = Desc.getSize();
  if (Bytes == 2)
    support::endian::write(OS, (uint16_t)(Bits), support::little);
  else if (Bytes == 4)
    support::endian::write(OS, (uint32_t)(Bits), support::little);
  else if (Bytes == 8)
    support::endian::write(OS, (uint64_t)(Bits), support::little);
  else
    for (unsigned i = 0; i < Bytes; i++) {
      const unsigned Index = i;
      OS.write((uint8_t)(Bits >> (Index * 8)));
    }

  ++MCNumEmitted; // Keep track of the # of mi's emitted.
}


unsigned CodasipMCCodeEmitter::getMachineOpValue(const MCInst &MI,
                                                 const MCOperand &MO,
                                                 SmallVectorImpl<MCFixup> &Fixups,
                                                 const MCSubtargetInfo &STI) const {
#ifdef DEBUG_CLASS
  outs() << "CodasipMCCodeEmitter::getMachineOpValue\n";
#endif

  if (MO.isReg())
    return Ctx.getRegisterInfo()->getEncodingValue(MO.getReg());

  // MO must be an immediate, only encoder methods should handle expressions properly
  assert(MO.isImm() && "Unexpected expression. Missing encoder method.");
  return MO.getImm();
}


uint64_t CodasipMCCodeEmitter::encodeMI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12(const MCInst &MI,
  unsigned OpIdx,
  SmallVectorImpl<MCFixup> &Fixups,
  const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpIdx);
  if (MO.isImm()) {
    int64_t MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12 = MO.getImm();
    bool encodingSectionHasMask = false;
    switch (MI.getOpcode()) {
    case Codasip::i_auipc__opc_auipc__reg0__imm20_s12__:
    case Codasip::i_auipc__opc_auipc__reg0_alias__imm20_s12__:
    case Codasip::i_auipc__opc_auipc__regs__imm20_s12__:
    case Codasip::i_lui__opc_lui__reg0__imm20_s12__:
    case Codasip::i_lui__opc_lui__reg0_alias__imm20_s12__:
    case Codasip::i_lui__opc_lui__regs__imm20_s12__:
      checkTruncationOverflow(MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12, 20, 0, MO.isMasked() || encodingSectionHasMask, MI.getLoc(), Ctx.getSourceManager());
      break;
    default:
      break;
    }
    return MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12;
  }
  assert(MO.isExpr());
  // Function hook for custom fixup
  if (getCustomFixupEncoder().customEncodeMI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12(MI, MO, Fixups, STI))
    return 0;
  const Codasip::Fixups Kind = Codasip::FK_Codasip_MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12;
  (void)Kind; // suppress warning
  const MCInstrDesc &IDesc = MCII.get(MI.getOpcode());
  (void)IDesc; // suppress warning
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 19, 0, IDesc.getSize(), 31, 12, 1, 0));
  return 0;
}

uint64_t CodasipMCCodeEmitter::encodeMI3immIH1_10start_base6_4imm53imm1_4imm5(const MCInst &MI,
  unsigned OpIdx,
  SmallVectorImpl<MCFixup> &Fixups,
  const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpIdx);
  if (MO.isImm()) {
    int64_t MI3immIH1_10start_base6_4imm53imm1_4imm5 = MO.getImm();
    bool encodingSectionHasMask = false;
    switch (MI.getOpcode()) {
    case Codasip::i_control_registers_imm__opc_csrrci__reg0__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrci__reg0__regs_csr__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrci__reg0_alias__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrci__reg0_alias__regs_csr__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrci__regs__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrci__regs__regs_csr__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrsi__reg0__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrsi__reg0__regs_csr__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrsi__reg0_alias__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrsi__reg0_alias__regs_csr__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrsi__regs__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrsi__regs__regs_csr__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrwi__reg0__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrwi__reg0__regs_csr__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrwi__reg0_alias__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrwi__reg0_alias__regs_csr__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrwi__regs__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrwi__regs__regs_csr__imm5__:
    case Codasip::i_csrci_alias2__csr_imm__imm5__:
    case Codasip::i_csrci_alias2__regs_csr__imm5__:
    case Codasip::i_csrci_alias__csr_imm__imm5__:
    case Codasip::i_csrci_alias__regs_csr__imm5__:
    case Codasip::i_csrsi_alias2__csr_imm__imm5__:
    case Codasip::i_csrsi_alias2__regs_csr__imm5__:
    case Codasip::i_csrsi_alias__csr_imm__imm5__:
    case Codasip::i_csrsi_alias__regs_csr__imm5__:
    case Codasip::i_csrwi_alias__csr_imm__imm5__:
    case Codasip::i_csrwi_alias__regs_csr__imm5__:
      checkTruncationOverflow(MI3immIH1_10start_base6_4imm53imm1_4imm5, 5, 0, MO.isMasked() || encodingSectionHasMask, MI.getLoc(), Ctx.getSourceManager());
      break;
    default:
      break;
    }
    return MI3immIH1_10start_base6_4imm53imm1_4imm5;
  }
  assert(MO.isExpr());
  // Function hook for custom fixup
  if (getCustomFixupEncoder().customEncodeMI3immIH1_10start_base6_4imm53imm1_4imm5(MI, MO, Fixups, STI))
    return 0;
  const Codasip::Fixups Kind = Codasip::FK_Codasip_MI3immIH1_10start_base6_4imm53imm1_4imm5;
  (void)Kind; // suppress warning
  const MCInstrDesc &IDesc = MCII.get(MI.getOpcode());
  (void)IDesc; // suppress warning
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 4, 0, IDesc.getSize(), 19, 15, 1, 0));
  return 0;
}

uint64_t CodasipMCCodeEmitter::encodeMI3immIH1_10start_base8_6op_csr3csr1_7csr_imm(const MCInst &MI,
  unsigned OpIdx,
  SmallVectorImpl<MCFixup> &Fixups,
  const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpIdx);
  if (MO.isImm()) {
    int64_t MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm = MO.getImm();
    bool encodingSectionHasMask = false;
    switch (MI.getOpcode()) {
    case Codasip::i_control_registers_imm__opc_csrrci__reg0__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrci__reg0_alias__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrci__regs__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrsi__reg0__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrsi__reg0_alias__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrsi__regs__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrwi__reg0__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrwi__reg0_alias__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrwi__regs__csr_imm__imm5__:
    case Codasip::i_control_registers_reg__opc_csrrc__reg0__csr_imm__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrc__reg0__csr_imm__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrc__reg0__csr_imm__regs__:
    case Codasip::i_control_registers_reg__opc_csrrc__reg0_alias__csr_imm__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrc__reg0_alias__csr_imm__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrc__reg0_alias__csr_imm__regs__:
    case Codasip::i_control_registers_reg__opc_csrrc__regs__csr_imm__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrc__regs__csr_imm__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrc__regs__csr_imm__regs__:
    case Codasip::i_control_registers_reg__opc_csrrs__reg0__csr_imm__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrs__reg0__csr_imm__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrs__reg0__csr_imm__regs__:
    case Codasip::i_control_registers_reg__opc_csrrs__reg0_alias__csr_imm__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrs__reg0_alias__csr_imm__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrs__reg0_alias__csr_imm__regs__:
    case Codasip::i_control_registers_reg__opc_csrrs__regs__csr_imm__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrs__regs__csr_imm__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrs__regs__csr_imm__regs__:
    case Codasip::i_control_registers_reg__opc_csrrw__reg0__csr_imm__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrw__reg0__csr_imm__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrw__reg0__csr_imm__regs__:
    case Codasip::i_control_registers_reg__opc_csrrw__reg0_alias__csr_imm__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrw__reg0_alias__csr_imm__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrw__reg0_alias__csr_imm__regs__:
    case Codasip::i_control_registers_reg__opc_csrrw__regs__csr_imm__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrw__regs__csr_imm__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrw__regs__csr_imm__regs__:
    case Codasip::i_csrc_alias__csr_imm__reg0__:
    case Codasip::i_csrc_alias__csr_imm__reg0_alias__:
    case Codasip::i_csrc_alias__csr_imm__regs__:
    case Codasip::i_csrci_alias2__csr_imm__imm5__:
    case Codasip::i_csrci_alias__csr_imm__imm5__:
    case Codasip::i_csrr_alias__reg0__csr_imm__:
    case Codasip::i_csrr_alias__reg0_alias__csr_imm__:
    case Codasip::i_csrr_alias__regs__csr_imm__:
    case Codasip::i_csrs_alias__csr_imm__reg0__:
    case Codasip::i_csrs_alias__csr_imm__reg0_alias__:
    case Codasip::i_csrs_alias__csr_imm__regs__:
    case Codasip::i_csrsi_alias2__csr_imm__imm5__:
    case Codasip::i_csrsi_alias__csr_imm__imm5__:
    case Codasip::i_csrw_alias__csr_imm__reg0__:
    case Codasip::i_csrw_alias__csr_imm__reg0_alias__:
    case Codasip::i_csrw_alias__csr_imm__regs__:
    case Codasip::i_csrwi_alias__csr_imm__imm5__:
      checkTruncationOverflow(MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm, 12, 0, MO.isMasked() || encodingSectionHasMask, MI.getLoc(), Ctx.getSourceManager());
      break;
    default:
      break;
    }
    return MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm;
  }
  assert(MO.isExpr());
  // Function hook for custom fixup
  if (getCustomFixupEncoder().customEncodeMI3immIH1_10start_base8_6op_csr3csr1_7csr_imm(MI, MO, Fixups, STI))
    return 0;
  const Codasip::Fixups Kind = Codasip::FK_Codasip_MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm;
  (void)Kind; // suppress warning
  const MCInstrDesc &IDesc = MCII.get(MI.getOpcode());
  (void)IDesc; // suppress warning
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 11, 0, IDesc.getSize(), 31, 20, 1, 0));
  return 0;
}

uint64_t CodasipMCCodeEmitter::encodeMI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi(const MCInst &MI,
  unsigned OpIdx,
  SmallVectorImpl<MCFixup> &Fixups,
  const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpIdx);
  if (MO.isImm()) {
    int64_t MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi = MO.getImm();
    bool encodingSectionHasMask = false;
    // Encoding section for fixups solvable by assembler frontend
    MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi =  (  (  (  ( (codasip::MaxInt)MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi + (codasip::Integer<32, true>)(0x800) )  )  >> (codasip::Integer<32, true>)(0xc) )  & (codasip::Integer<32, true>)(0xfffff) ) ;
    encodingSectionHasMask = true;
    switch (MI.getOpcode()) {
    case Codasip::i_lui_hi__opc_lui__reg0__imm20_hi__:
    case Codasip::i_lui_hi__opc_lui__reg0_alias__imm20_hi__:
    case Codasip::i_lui_hi__opc_lui__regs__imm20_hi__:
      checkTruncationOverflow(MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi, 20, 0, MO.isMasked() || encodingSectionHasMask, MI.getLoc(), Ctx.getSourceManager());
      break;
    default:
      break;
    }
    return MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi;
  }
  assert(MO.isExpr());
  // Function hook for custom fixup
  if (getCustomFixupEncoder().customEncodeMI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi(MI, MO, Fixups, STI))
    return 0;
  const Codasip::Fixups Kind = Codasip::FK_Codasip_MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi;
  (void)Kind; // suppress warning
  const MCInstrDesc &IDesc = MCII.get(MI.getOpcode());
  (void)IDesc; // suppress warning
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 19, 0, IDesc.getSize(), 31, 12, 1, 0));
  return 0;
}

uint64_t CodasipMCCodeEmitter::encodeMI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo(const MCInst &MI,
  unsigned OpIdx,
  SmallVectorImpl<MCFixup> &Fixups,
  const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpIdx);
  if (MO.isImm()) {
    int64_t MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo = MO.getImm();
    bool encodingSectionHasMask = false;
    // Encoding section for fixups solvable by assembler frontend
    MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo =  ( (codasip::MaxInt)MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo & (codasip::Integer<32, true>)(0xfff) ) ;
    encodingSectionHasMask = true;
    switch (MI.getOpcode()) {
    case Codasip::i_store__opc_storeb__reg0__simm12_s_lo__reg0__:
    case Codasip::i_store__opc_storeb__reg0__simm12_s_lo__reg0_alias__:
    case Codasip::i_store__opc_storeb__reg0__simm12_s_lo__regs__:
    case Codasip::i_store__opc_storeb__reg0_alias__simm12_s_lo__reg0__:
    case Codasip::i_store__opc_storeb__reg0_alias__simm12_s_lo__reg0_alias__:
    case Codasip::i_store__opc_storeb__reg0_alias__simm12_s_lo__regs__:
    case Codasip::i_store__opc_storeb__regs__simm12_s_lo__reg0__:
    case Codasip::i_store__opc_storeb__regs__simm12_s_lo__reg0_alias__:
    case Codasip::i_store__opc_storeb__regs__simm12_s_lo__regs__:
    case Codasip::i_store__opc_storeh__reg0__simm12_s_lo__reg0__:
    case Codasip::i_store__opc_storeh__reg0__simm12_s_lo__reg0_alias__:
    case Codasip::i_store__opc_storeh__reg0__simm12_s_lo__regs__:
    case Codasip::i_store__opc_storeh__reg0_alias__simm12_s_lo__reg0__:
    case Codasip::i_store__opc_storeh__reg0_alias__simm12_s_lo__reg0_alias__:
    case Codasip::i_store__opc_storeh__reg0_alias__simm12_s_lo__regs__:
    case Codasip::i_store__opc_storeh__regs__simm12_s_lo__reg0__:
    case Codasip::i_store__opc_storeh__regs__simm12_s_lo__reg0_alias__:
    case Codasip::i_store__opc_storeh__regs__simm12_s_lo__regs__:
    case Codasip::i_store__opc_storew__reg0__simm12_s_lo__reg0__:
    case Codasip::i_store__opc_storew__reg0__simm12_s_lo__reg0_alias__:
    case Codasip::i_store__opc_storew__reg0__simm12_s_lo__regs__:
    case Codasip::i_store__opc_storew__reg0_alias__simm12_s_lo__reg0__:
    case Codasip::i_store__opc_storew__reg0_alias__simm12_s_lo__reg0_alias__:
    case Codasip::i_store__opc_storew__reg0_alias__simm12_s_lo__regs__:
    case Codasip::i_store__opc_storew__regs__simm12_s_lo__reg0__:
    case Codasip::i_store__opc_storew__regs__simm12_s_lo__reg0_alias__:
    case Codasip::i_store__opc_storew__regs__simm12_s_lo__regs__:
      checkTruncationOverflow(MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo, 12, 0, MO.isMasked() || encodingSectionHasMask, MI.getLoc(), Ctx.getSourceManager());
      break;
    default:
      break;
    }
    return MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo;
  }
  assert(MO.isExpr());
  // Function hook for custom fixup
  if (getCustomFixupEncoder().customEncodeMI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo(MI, MO, Fixups, STI))
    return 0;
  const Codasip::Fixups Kind = Codasip::FK_Codasip_MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo;
  (void)Kind; // suppress warning
  const MCInstrDesc &IDesc = MCII.get(MI.getOpcode());
  (void)IDesc; // suppress warning
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 11, 5, IDesc.getSize(), 31, 25, 1, 0));
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 4, 0, IDesc.getSize(), 11, 7, 0, 0));
  return 0;
}

uint64_t CodasipMCCodeEmitter::encodeMI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo(const MCInst &MI,
  unsigned OpIdx,
  SmallVectorImpl<MCFixup> &Fixups,
  const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpIdx);
  if (MO.isImm()) {
    int64_t MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo = MO.getImm();
    bool encodingSectionHasMask = false;
    // Encoding section for fixups solvable by assembler frontend
    MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo =  ( (codasip::MaxInt)MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo & (codasip::Integer<32, true>)(0xfff) ) ;
    encodingSectionHasMask = true;
    switch (MI.getOpcode()) {
    case Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0__:
    case Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0_alias__:
    case Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__regs__:
    case Codasip::i_store__opc_storeb__reg0_alias__simm12_s_pcrel_lo__reg0__:
    case Codasip::i_store__opc_storeb__reg0_alias__simm12_s_pcrel_lo__reg0_alias__:
    case Codasip::i_store__opc_storeb__reg0_alias__simm12_s_pcrel_lo__regs__:
    case Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0__:
    case Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0_alias__:
    case Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__regs__:
    case Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0__:
    case Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0_alias__:
    case Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__regs__:
    case Codasip::i_store__opc_storeh__reg0_alias__simm12_s_pcrel_lo__reg0__:
    case Codasip::i_store__opc_storeh__reg0_alias__simm12_s_pcrel_lo__reg0_alias__:
    case Codasip::i_store__opc_storeh__reg0_alias__simm12_s_pcrel_lo__regs__:
    case Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0__:
    case Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0_alias__:
    case Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__regs__:
    case Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0__:
    case Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0_alias__:
    case Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__regs__:
    case Codasip::i_store__opc_storew__reg0_alias__simm12_s_pcrel_lo__reg0__:
    case Codasip::i_store__opc_storew__reg0_alias__simm12_s_pcrel_lo__reg0_alias__:
    case Codasip::i_store__opc_storew__reg0_alias__simm12_s_pcrel_lo__regs__:
    case Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0__:
    case Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0_alias__:
    case Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__regs__:
      checkTruncationOverflow(MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo, 12, 0, MO.isMasked() || encodingSectionHasMask, MI.getLoc(), Ctx.getSourceManager());
      break;
    default:
      break;
    }
    return MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo;
  }
  assert(MO.isExpr());
  // Function hook for custom fixup
  if (getCustomFixupEncoder().customEncodeMI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo(MI, MO, Fixups, STI))
    return 0;
  const Codasip::Fixups Kind = Codasip::FK_Codasip_MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo;
  (void)Kind; // suppress warning
  const MCInstrDesc &IDesc = MCII.get(MI.getOpcode());
  (void)IDesc; // suppress warning
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 11, 5, IDesc.getSize(), 31, 25, 1, 0));
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 4, 0, IDesc.getSize(), 11, 7, 0, 0));
  return 0;
}

uint64_t CodasipMCCodeEmitter::encodeMI3valIH1_10start_base14_11imm20_reloc3imm1_14imm20_pcrel_hi(const MCInst &MI,
  unsigned OpIdx,
  SmallVectorImpl<MCFixup> &Fixups,
  const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpIdx);
  if (MO.isImm()) {
    int64_t MI3valIH1_10start_base14_11imm20_reloc3imm1_14imm20_pcrel_hi = MO.getImm();
    bool encodingSectionHasMask = false;
    // Encoding section for fixups solvable by assembler frontend
    MI3valIH1_10start_base14_11imm20_reloc3imm1_14imm20_pcrel_hi =  (  (  (  (  ( (codasip::MaxInt)MI3valIH1_10start_base14_11imm20_reloc3imm1_14imm20_pcrel_hi - (codasip::Integer<64, false>)((codasip::Integer<64, false>)(0)) )  + (codasip::Integer<32, true>)(0x800) )  )  >> (codasip::Integer<32, true>)(0xc) )  & (codasip::Integer<32, true>)(0xfffff) ) ;
    encodingSectionHasMask = true;
    switch (MI.getOpcode()) {
    case Codasip::i_auipc_hi__opc_auipc__reg0__imm20_pcrel_hi__:
    case Codasip::i_auipc_hi__opc_auipc__reg0_alias__imm20_pcrel_hi__:
    case Codasip::i_auipc_hi__opc_auipc__regs__imm20_pcrel_hi__:
      checkTruncationOverflow(MI3valIH1_10start_base14_11imm20_reloc3imm1_14imm20_pcrel_hi, 20, 0, MO.isMasked() || encodingSectionHasMask, MI.getLoc(), Ctx.getSourceManager());
      break;
    default:
      break;
    }
    return MI3valIH1_10start_base14_11imm20_reloc3imm1_14imm20_pcrel_hi;
  }
  assert(MO.isExpr());
  // Function hook for custom fixup
  if (getCustomFixupEncoder().customEncodeMI3valIH1_10start_base14_11imm20_reloc3imm1_14imm20_pcrel_hi(MI, MO, Fixups, STI))
    return 0;
  const Codasip::Fixups Kind = Codasip::FK_Codasip_MI3valIH1_10start_base14_11imm20_reloc3imm1_14imm20_pcrel_hi;
  (void)Kind; // suppress warning
  const MCInstrDesc &IDesc = MCII.get(MI.getOpcode());
  (void)IDesc; // suppress warning
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 19, 0, IDesc.getSize(), 31, 12, 1, 0));
  return 0;
}

uint64_t CodasipMCCodeEmitter::encodeMI3valIH1_10start_base14_11imm20_reloc3imm1_8imm20_hi(const MCInst &MI,
  unsigned OpIdx,
  SmallVectorImpl<MCFixup> &Fixups,
  const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpIdx);
  if (MO.isImm()) {
    int64_t MI3valIH1_10start_base14_11imm20_reloc3imm1_8imm20_hi = MO.getImm();
    bool encodingSectionHasMask = false;
    // Encoding section for fixups solvable by assembler frontend
    MI3valIH1_10start_base14_11imm20_reloc3imm1_8imm20_hi =  (  (  (  ( (codasip::MaxInt)MI3valIH1_10start_base14_11imm20_reloc3imm1_8imm20_hi + (codasip::Integer<32, true>)(0x800) )  )  >> (codasip::Integer<32, true>)(0xc) )  & (codasip::Integer<32, true>)(0xfffff) ) ;
    encodingSectionHasMask = true;
    switch (MI.getOpcode()) {
    case Codasip::i_auipc_hi__opc_auipc__reg0__imm20_hi__:
    case Codasip::i_auipc_hi__opc_auipc__reg0_alias__imm20_hi__:
    case Codasip::i_auipc_hi__opc_auipc__regs__imm20_hi__:
      checkTruncationOverflow(MI3valIH1_10start_base14_11imm20_reloc3imm1_8imm20_hi, 20, 0, MO.isMasked() || encodingSectionHasMask, MI.getLoc(), Ctx.getSourceManager());
      break;
    default:
      break;
    }
    return MI3valIH1_10start_base14_11imm20_reloc3imm1_8imm20_hi;
  }
  assert(MO.isExpr());
  // Function hook for custom fixup
  if (getCustomFixupEncoder().customEncodeMI3valIH1_10start_base14_11imm20_reloc3imm1_8imm20_hi(MI, MO, Fixups, STI))
    return 0;
  const Codasip::Fixups Kind = Codasip::FK_Codasip_MI3valIH1_10start_base14_11imm20_reloc3imm1_8imm20_hi;
  (void)Kind; // suppress warning
  const MCInstrDesc &IDesc = MCII.get(MI.getOpcode());
  (void)IDesc; // suppress warning
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 19, 0, IDesc.getSize(), 31, 12, 1, 0));
  return 0;
}

uint64_t CodasipMCCodeEmitter::encodeMI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo(const MCInst &MI,
  unsigned OpIdx,
  SmallVectorImpl<MCFixup> &Fixups,
  const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpIdx);
  if (MO.isImm()) {
    int64_t MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo = MO.getImm();
    bool encodingSectionHasMask = false;
    // Encoding section for fixups solvable by assembler frontend
    MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo =  (  (  ( (codasip::MaxInt)MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo - (codasip::Integer<64, false>)((codasip::Integer<64, false>)(0)) )  )  & (codasip::Integer<32, true>)(0xfff) ) ;
    encodingSectionHasMask = true;
    switch (MI.getOpcode()) {
    case Codasip::i_ori_emulation_alias__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_ori_emulation_alias__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_ori_emulation_alias__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_ori_emulation_alias__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_addi_alias__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_addi_alias__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_addi_alias__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_addi_alias__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_addi_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_addi_alias__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_addi_alias__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_addi_alias__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_addi_alias__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_andi_alias__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_andi_alias__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_andi_alias__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_andi_alias__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_andi_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_andi_alias__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_andi_alias__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_andi_alias__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_andi_alias__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_jalr__opc_jalr__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_jalr__opc_jalr__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_jalr__opc_jalr__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_jalr__opc_jalr__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_jalr__opc_jalr__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_jalr__opc_jalr__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_jlr_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_jlr_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_jlr_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_load__opc_loadb__reg0__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadb__reg0__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadb__reg0__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadbu__reg0__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadbu__reg0__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadbu__reg0__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadh__reg0__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadh__reg0__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadh__reg0__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadhu__reg0__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadhu__reg0__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadhu__reg0__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadw__reg0__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadw__reg0__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadw__reg0__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__regs__:
    case Codasip::i_ori_alias__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_ori_alias__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_ori_alias__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_ori_alias__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_ori_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_ori_alias__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_ori_alias__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_ori_alias__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_ori_alias__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_xori_alias__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_xori_alias__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_xori_alias__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_xori_alias__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_xori_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_xori_alias__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_xori_alias__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_xori_alias__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_xori_alias__regs__regs__simm12_pcrel_lo__:
      checkTruncationOverflow(MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo, 12, 0, MO.isMasked() || encodingSectionHasMask, MI.getLoc(), Ctx.getSourceManager());
      break;
    default:
      break;
    }
    return MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo;
  }
  assert(MO.isExpr());
  // Function hook for custom fixup
  if (getCustomFixupEncoder().customEncodeMI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo(MI, MO, Fixups, STI))
    return 0;
  const Codasip::Fixups Kind = Codasip::FK_Codasip_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo;
  (void)Kind; // suppress warning
  const MCInstrDesc &IDesc = MCII.get(MI.getOpcode());
  (void)IDesc; // suppress warning
  switch (MI.getOpcode()) {
  case Codasip::i_ori_emulation_alias__reg0__reg0__simm12_pcrel_lo__:
  case Codasip::i_ori_emulation_alias__reg0__regs__simm12_pcrel_lo__:
  case Codasip::i_ori_emulation_alias__regs__reg0__simm12_pcrel_lo__:
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_pcrel_lo__:
    break;
  case Codasip::i_addi_alias__reg0__reg0__simm12_pcrel_lo__:
  case Codasip::i_addi_alias__reg0__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_addi_alias__reg0__regs__simm12_pcrel_lo__:
  case Codasip::i_addi_alias__reg0_alias__reg0__simm12_pcrel_lo__:
  case Codasip::i_addi_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_addi_alias__reg0_alias__regs__simm12_pcrel_lo__:
  case Codasip::i_addi_alias__regs__reg0__simm12_pcrel_lo__:
  case Codasip::i_addi_alias__regs__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_addi_alias__regs__regs__simm12_pcrel_lo__:
  case Codasip::i_andi_alias__reg0__reg0__simm12_pcrel_lo__:
  case Codasip::i_andi_alias__reg0__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_andi_alias__reg0__regs__simm12_pcrel_lo__:
  case Codasip::i_andi_alias__reg0_alias__reg0__simm12_pcrel_lo__:
  case Codasip::i_andi_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_andi_alias__reg0_alias__regs__simm12_pcrel_lo__:
  case Codasip::i_andi_alias__regs__reg0__simm12_pcrel_lo__:
  case Codasip::i_andi_alias__regs__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_andi_alias__regs__regs__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_addi__reg0__regs__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_andi__reg0__regs__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_andi__regs__reg0__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_ori__reg0__regs__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_slti__reg0__regs__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_xori__reg0__regs__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_pcrel_lo__:
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_pcrel_lo__:
  case Codasip::i_jalr__opc_jalr__reg0__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_jalr__opc_jalr__reg0__regs__simm12_pcrel_lo__:
  case Codasip::i_jalr__opc_jalr__reg0_alias__reg0__simm12_pcrel_lo__:
  case Codasip::i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_jalr__opc_jalr__reg0_alias__regs__simm12_pcrel_lo__:
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_pcrel_lo__:
  case Codasip::i_jalr__opc_jalr__regs__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_jalr__opc_jalr__regs__regs__simm12_pcrel_lo__:
  case Codasip::i_jlr_alias__reg0__simm12_pcrel_lo__:
  case Codasip::i_jlr_alias__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_jlr_alias__regs__simm12_pcrel_lo__:
  case Codasip::i_load__opc_loadb__reg0__simm12_pcrel_lo__reg0__:
  case Codasip::i_load__opc_loadb__reg0__simm12_pcrel_lo__reg0_alias__:
  case Codasip::i_load__opc_loadb__reg0__simm12_pcrel_lo__regs__:
  case Codasip::i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__reg0__:
  case Codasip::i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__reg0_alias__:
  case Codasip::i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__regs__:
  case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__reg0__:
  case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__reg0_alias__:
  case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__regs__:
  case Codasip::i_load__opc_loadbu__reg0__simm12_pcrel_lo__reg0__:
  case Codasip::i_load__opc_loadbu__reg0__simm12_pcrel_lo__reg0_alias__:
  case Codasip::i_load__opc_loadbu__reg0__simm12_pcrel_lo__regs__:
  case Codasip::i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__reg0__:
  case Codasip::i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__reg0_alias__:
  case Codasip::i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__regs__:
  case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0__:
  case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0_alias__:
  case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__regs__:
  case Codasip::i_load__opc_loadh__reg0__simm12_pcrel_lo__reg0__:
  case Codasip::i_load__opc_loadh__reg0__simm12_pcrel_lo__reg0_alias__:
  case Codasip::i_load__opc_loadh__reg0__simm12_pcrel_lo__regs__:
  case Codasip::i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__reg0__:
  case Codasip::i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__reg0_alias__:
  case Codasip::i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__regs__:
  case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__reg0__:
  case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__reg0_alias__:
  case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__regs__:
  case Codasip::i_load__opc_loadhu__reg0__simm12_pcrel_lo__reg0__:
  case Codasip::i_load__opc_loadhu__reg0__simm12_pcrel_lo__reg0_alias__:
  case Codasip::i_load__opc_loadhu__reg0__simm12_pcrel_lo__regs__:
  case Codasip::i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__reg0__:
  case Codasip::i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__reg0_alias__:
  case Codasip::i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__regs__:
  case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0__:
  case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0_alias__:
  case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__regs__:
  case Codasip::i_load__opc_loadw__reg0__simm12_pcrel_lo__reg0__:
  case Codasip::i_load__opc_loadw__reg0__simm12_pcrel_lo__reg0_alias__:
  case Codasip::i_load__opc_loadw__reg0__simm12_pcrel_lo__regs__:
  case Codasip::i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__reg0__:
  case Codasip::i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__reg0_alias__:
  case Codasip::i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__regs__:
  case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__reg0__:
  case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__reg0_alias__:
  case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__regs__:
  case Codasip::i_ori_alias__reg0__reg0__simm12_pcrel_lo__:
  case Codasip::i_ori_alias__reg0__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_ori_alias__reg0__regs__simm12_pcrel_lo__:
  case Codasip::i_ori_alias__reg0_alias__reg0__simm12_pcrel_lo__:
  case Codasip::i_ori_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_ori_alias__reg0_alias__regs__simm12_pcrel_lo__:
  case Codasip::i_ori_alias__regs__reg0__simm12_pcrel_lo__:
  case Codasip::i_ori_alias__regs__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_ori_alias__regs__regs__simm12_pcrel_lo__:
  case Codasip::i_xori_alias__reg0__reg0__simm12_pcrel_lo__:
  case Codasip::i_xori_alias__reg0__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_xori_alias__reg0__regs__simm12_pcrel_lo__:
  case Codasip::i_xori_alias__reg0_alias__reg0__simm12_pcrel_lo__:
  case Codasip::i_xori_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_xori_alias__reg0_alias__regs__simm12_pcrel_lo__:
  case Codasip::i_xori_alias__regs__reg0__simm12_pcrel_lo__:
  case Codasip::i_xori_alias__regs__reg0_alias__simm12_pcrel_lo__:
  case Codasip::i_xori_alias__regs__regs__simm12_pcrel_lo__:
    Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 11, 0, IDesc.getSize(), 31, 20, 1, 0));
    break;
  default:
    llvm_unreachable("Unexpected MCInst in encode function");
    break;
  }
  return 0;
}

uint64_t CodasipMCCodeEmitter::encodeMI3valIH1_10start_base8_6simm126simm121_9simm12_lo(const MCInst &MI,
  unsigned OpIdx,
  SmallVectorImpl<MCFixup> &Fixups,
  const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpIdx);
  if (MO.isImm()) {
    int64_t MI3valIH1_10start_base8_6simm126simm121_9simm12_lo = MO.getImm();
    bool encodingSectionHasMask = false;
    // Encoding section for fixups solvable by assembler frontend
    MI3valIH1_10start_base8_6simm126simm121_9simm12_lo =  ( (codasip::MaxInt)MI3valIH1_10start_base8_6simm126simm121_9simm12_lo & (codasip::Integer<32, true>)(0xfff) ) ;
    encodingSectionHasMask = true;
    switch (MI.getOpcode()) {
    case Codasip::i_ori_emulation_alias__reg0__reg0__simm12_lo__:
    case Codasip::i_ori_emulation_alias__reg0__regs__simm12_lo__:
    case Codasip::i_ori_emulation_alias__regs__reg0__simm12_lo__:
    case Codasip::i_ori_emulation_alias__regs__regs__simm12_lo__:
    case Codasip::i_addi_alias__reg0__reg0__simm12_lo__:
    case Codasip::i_addi_alias__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_addi_alias__reg0__regs__simm12_lo__:
    case Codasip::i_addi_alias__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_addi_alias__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_addi_alias__reg0_alias__regs__simm12_lo__:
    case Codasip::i_addi_alias__regs__reg0__simm12_lo__:
    case Codasip::i_addi_alias__regs__reg0_alias__simm12_lo__:
    case Codasip::i_addi_alias__regs__regs__simm12_lo__:
    case Codasip::i_andi_alias__reg0__reg0__simm12_lo__:
    case Codasip::i_andi_alias__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_andi_alias__reg0__regs__simm12_lo__:
    case Codasip::i_andi_alias__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_andi_alias__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_andi_alias__reg0_alias__regs__simm12_lo__:
    case Codasip::i_andi_alias__regs__reg0__simm12_lo__:
    case Codasip::i_andi_alias__regs__reg0_alias__simm12_lo__:
    case Codasip::i_andi_alias__regs__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__regs__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_lo__:
    case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_lo__:
    case Codasip::i_jalr__opc_jalr__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_jalr__opc_jalr__reg0__regs__simm12_lo__:
    case Codasip::i_jalr__opc_jalr__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_jalr__opc_jalr__reg0_alias__regs__simm12_lo__:
    case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_lo__:
    case Codasip::i_jalr__opc_jalr__regs__reg0_alias__simm12_lo__:
    case Codasip::i_jalr__opc_jalr__regs__regs__simm12_lo__:
    case Codasip::i_jlr_alias__reg0__simm12_lo__:
    case Codasip::i_jlr_alias__reg0_alias__simm12_lo__:
    case Codasip::i_jlr_alias__regs__simm12_lo__:
    case Codasip::i_load__opc_loadb__reg0__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadb__reg0__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadb__reg0__simm12_lo__regs__:
    case Codasip::i_load__opc_loadb__reg0_alias__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadb__reg0_alias__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadb__reg0_alias__simm12_lo__regs__:
    case Codasip::i_load__opc_loadb__regs__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadb__regs__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadb__regs__simm12_lo__regs__:
    case Codasip::i_load__opc_loadbu__reg0__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadbu__reg0__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadbu__reg0__simm12_lo__regs__:
    case Codasip::i_load__opc_loadbu__reg0_alias__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadbu__reg0_alias__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadbu__reg0_alias__simm12_lo__regs__:
    case Codasip::i_load__opc_loadbu__regs__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadbu__regs__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadbu__regs__simm12_lo__regs__:
    case Codasip::i_load__opc_loadh__reg0__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadh__reg0__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadh__reg0__simm12_lo__regs__:
    case Codasip::i_load__opc_loadh__reg0_alias__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadh__reg0_alias__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadh__reg0_alias__simm12_lo__regs__:
    case Codasip::i_load__opc_loadh__regs__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadh__regs__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadh__regs__simm12_lo__regs__:
    case Codasip::i_load__opc_loadhu__reg0__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadhu__reg0__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadhu__reg0__simm12_lo__regs__:
    case Codasip::i_load__opc_loadhu__reg0_alias__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadhu__reg0_alias__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadhu__reg0_alias__simm12_lo__regs__:
    case Codasip::i_load__opc_loadhu__regs__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadhu__regs__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadhu__regs__simm12_lo__regs__:
    case Codasip::i_load__opc_loadw__reg0__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadw__reg0__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadw__reg0__simm12_lo__regs__:
    case Codasip::i_load__opc_loadw__reg0_alias__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadw__reg0_alias__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadw__reg0_alias__simm12_lo__regs__:
    case Codasip::i_load__opc_loadw__regs__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadw__regs__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadw__regs__simm12_lo__regs__:
    case Codasip::i_ori_alias__reg0__reg0__simm12_lo__:
    case Codasip::i_ori_alias__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_ori_alias__reg0__regs__simm12_lo__:
    case Codasip::i_ori_alias__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_ori_alias__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_ori_alias__reg0_alias__regs__simm12_lo__:
    case Codasip::i_ori_alias__regs__reg0__simm12_lo__:
    case Codasip::i_ori_alias__regs__reg0_alias__simm12_lo__:
    case Codasip::i_ori_alias__regs__regs__simm12_lo__:
    case Codasip::i_xori_alias__reg0__reg0__simm12_lo__:
    case Codasip::i_xori_alias__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_xori_alias__reg0__regs__simm12_lo__:
    case Codasip::i_xori_alias__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_xori_alias__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_xori_alias__reg0_alias__regs__simm12_lo__:
    case Codasip::i_xori_alias__regs__reg0__simm12_lo__:
    case Codasip::i_xori_alias__regs__reg0_alias__simm12_lo__:
    case Codasip::i_xori_alias__regs__regs__simm12_lo__:
      checkTruncationOverflow(MI3valIH1_10start_base8_6simm126simm121_9simm12_lo, 12, 0, MO.isMasked() || encodingSectionHasMask, MI.getLoc(), Ctx.getSourceManager());
      break;
    default:
      break;
    }
    return MI3valIH1_10start_base8_6simm126simm121_9simm12_lo;
  }
  assert(MO.isExpr());
  // Function hook for custom fixup
  if (getCustomFixupEncoder().customEncodeMI3valIH1_10start_base8_6simm126simm121_9simm12_lo(MI, MO, Fixups, STI))
    return 0;
  const Codasip::Fixups Kind = Codasip::FK_Codasip_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo;
  (void)Kind; // suppress warning
  const MCInstrDesc &IDesc = MCII.get(MI.getOpcode());
  (void)IDesc; // suppress warning
  switch (MI.getOpcode()) {
  case Codasip::i_ori_emulation_alias__reg0__reg0__simm12_lo__:
  case Codasip::i_ori_emulation_alias__reg0__regs__simm12_lo__:
  case Codasip::i_ori_emulation_alias__regs__reg0__simm12_lo__:
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_lo__:
    break;
  case Codasip::i_addi_alias__reg0__reg0__simm12_lo__:
  case Codasip::i_addi_alias__reg0__reg0_alias__simm12_lo__:
  case Codasip::i_addi_alias__reg0__regs__simm12_lo__:
  case Codasip::i_addi_alias__reg0_alias__reg0__simm12_lo__:
  case Codasip::i_addi_alias__reg0_alias__reg0_alias__simm12_lo__:
  case Codasip::i_addi_alias__reg0_alias__regs__simm12_lo__:
  case Codasip::i_addi_alias__regs__reg0__simm12_lo__:
  case Codasip::i_addi_alias__regs__reg0_alias__simm12_lo__:
  case Codasip::i_addi_alias__regs__regs__simm12_lo__:
  case Codasip::i_andi_alias__reg0__reg0__simm12_lo__:
  case Codasip::i_andi_alias__reg0__reg0_alias__simm12_lo__:
  case Codasip::i_andi_alias__reg0__regs__simm12_lo__:
  case Codasip::i_andi_alias__reg0_alias__reg0__simm12_lo__:
  case Codasip::i_andi_alias__reg0_alias__reg0_alias__simm12_lo__:
  case Codasip::i_andi_alias__reg0_alias__regs__simm12_lo__:
  case Codasip::i_andi_alias__regs__reg0__simm12_lo__:
  case Codasip::i_andi_alias__regs__reg0_alias__simm12_lo__:
  case Codasip::i_andi_alias__regs__regs__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_addi__reg0__regs__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_andi__reg0__regs__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_andi__regs__reg0__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_ori__reg0__regs__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_slti__reg0__regs__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_xori__reg0__regs__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_lo__:
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_lo__:
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_lo__:
  case Codasip::i_jalr__opc_jalr__reg0__reg0_alias__simm12_lo__:
  case Codasip::i_jalr__opc_jalr__reg0__regs__simm12_lo__:
  case Codasip::i_jalr__opc_jalr__reg0_alias__reg0__simm12_lo__:
  case Codasip::i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_lo__:
  case Codasip::i_jalr__opc_jalr__reg0_alias__regs__simm12_lo__:
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_lo__:
  case Codasip::i_jalr__opc_jalr__regs__reg0_alias__simm12_lo__:
  case Codasip::i_jalr__opc_jalr__regs__regs__simm12_lo__:
  case Codasip::i_jlr_alias__reg0__simm12_lo__:
  case Codasip::i_jlr_alias__reg0_alias__simm12_lo__:
  case Codasip::i_jlr_alias__regs__simm12_lo__:
  case Codasip::i_load__opc_loadb__reg0__simm12_lo__reg0__:
  case Codasip::i_load__opc_loadb__reg0__simm12_lo__reg0_alias__:
  case Codasip::i_load__opc_loadb__reg0__simm12_lo__regs__:
  case Codasip::i_load__opc_loadb__reg0_alias__simm12_lo__reg0__:
  case Codasip::i_load__opc_loadb__reg0_alias__simm12_lo__reg0_alias__:
  case Codasip::i_load__opc_loadb__reg0_alias__simm12_lo__regs__:
  case Codasip::i_load__opc_loadb__regs__simm12_lo__reg0__:
  case Codasip::i_load__opc_loadb__regs__simm12_lo__reg0_alias__:
  case Codasip::i_load__opc_loadb__regs__simm12_lo__regs__:
  case Codasip::i_load__opc_loadbu__reg0__simm12_lo__reg0__:
  case Codasip::i_load__opc_loadbu__reg0__simm12_lo__reg0_alias__:
  case Codasip::i_load__opc_loadbu__reg0__simm12_lo__regs__:
  case Codasip::i_load__opc_loadbu__reg0_alias__simm12_lo__reg0__:
  case Codasip::i_load__opc_loadbu__reg0_alias__simm12_lo__reg0_alias__:
  case Codasip::i_load__opc_loadbu__reg0_alias__simm12_lo__regs__:
  case Codasip::i_load__opc_loadbu__regs__simm12_lo__reg0__:
  case Codasip::i_load__opc_loadbu__regs__simm12_lo__reg0_alias__:
  case Codasip::i_load__opc_loadbu__regs__simm12_lo__regs__:
  case Codasip::i_load__opc_loadh__reg0__simm12_lo__reg0__:
  case Codasip::i_load__opc_loadh__reg0__simm12_lo__reg0_alias__:
  case Codasip::i_load__opc_loadh__reg0__simm12_lo__regs__:
  case Codasip::i_load__opc_loadh__reg0_alias__simm12_lo__reg0__:
  case Codasip::i_load__opc_loadh__reg0_alias__simm12_lo__reg0_alias__:
  case Codasip::i_load__opc_loadh__reg0_alias__simm12_lo__regs__:
  case Codasip::i_load__opc_loadh__regs__simm12_lo__reg0__:
  case Codasip::i_load__opc_loadh__regs__simm12_lo__reg0_alias__:
  case Codasip::i_load__opc_loadh__regs__simm12_lo__regs__:
  case Codasip::i_load__opc_loadhu__reg0__simm12_lo__reg0__:
  case Codasip::i_load__opc_loadhu__reg0__simm12_lo__reg0_alias__:
  case Codasip::i_load__opc_loadhu__reg0__simm12_lo__regs__:
  case Codasip::i_load__opc_loadhu__reg0_alias__simm12_lo__reg0__:
  case Codasip::i_load__opc_loadhu__reg0_alias__simm12_lo__reg0_alias__:
  case Codasip::i_load__opc_loadhu__reg0_alias__simm12_lo__regs__:
  case Codasip::i_load__opc_loadhu__regs__simm12_lo__reg0__:
  case Codasip::i_load__opc_loadhu__regs__simm12_lo__reg0_alias__:
  case Codasip::i_load__opc_loadhu__regs__simm12_lo__regs__:
  case Codasip::i_load__opc_loadw__reg0__simm12_lo__reg0__:
  case Codasip::i_load__opc_loadw__reg0__simm12_lo__reg0_alias__:
  case Codasip::i_load__opc_loadw__reg0__simm12_lo__regs__:
  case Codasip::i_load__opc_loadw__reg0_alias__simm12_lo__reg0__:
  case Codasip::i_load__opc_loadw__reg0_alias__simm12_lo__reg0_alias__:
  case Codasip::i_load__opc_loadw__reg0_alias__simm12_lo__regs__:
  case Codasip::i_load__opc_loadw__regs__simm12_lo__reg0__:
  case Codasip::i_load__opc_loadw__regs__simm12_lo__reg0_alias__:
  case Codasip::i_load__opc_loadw__regs__simm12_lo__regs__:
  case Codasip::i_ori_alias__reg0__reg0__simm12_lo__:
  case Codasip::i_ori_alias__reg0__reg0_alias__simm12_lo__:
  case Codasip::i_ori_alias__reg0__regs__simm12_lo__:
  case Codasip::i_ori_alias__reg0_alias__reg0__simm12_lo__:
  case Codasip::i_ori_alias__reg0_alias__reg0_alias__simm12_lo__:
  case Codasip::i_ori_alias__reg0_alias__regs__simm12_lo__:
  case Codasip::i_ori_alias__regs__reg0__simm12_lo__:
  case Codasip::i_ori_alias__regs__reg0_alias__simm12_lo__:
  case Codasip::i_ori_alias__regs__regs__simm12_lo__:
  case Codasip::i_xori_alias__reg0__reg0__simm12_lo__:
  case Codasip::i_xori_alias__reg0__reg0_alias__simm12_lo__:
  case Codasip::i_xori_alias__reg0__regs__simm12_lo__:
  case Codasip::i_xori_alias__reg0_alias__reg0__simm12_lo__:
  case Codasip::i_xori_alias__reg0_alias__reg0_alias__simm12_lo__:
  case Codasip::i_xori_alias__reg0_alias__regs__simm12_lo__:
  case Codasip::i_xori_alias__regs__reg0__simm12_lo__:
  case Codasip::i_xori_alias__regs__reg0_alias__simm12_lo__:
  case Codasip::i_xori_alias__regs__regs__simm12_lo__:
    Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 11, 0, IDesc.getSize(), 31, 20, 1, 0));
    break;
  default:
    llvm_unreachable("Unexpected MCInst in encode function");
    break;
  }
  return 0;
}

uint64_t CodasipMCCodeEmitter::encodeMI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12(const MCInst &MI,
  unsigned OpIdx,
  SmallVectorImpl<MCFixup> &Fixups,
  const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpIdx);
  if (MO.isImm()) {
    int64_t MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12 = MO.getImm();
    bool encodingSectionHasMask = false;
    // Encoding section for fixups solvable by assembler frontend
    MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12 =  (  (  ( (codasip::MaxInt)MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12 - (codasip::Integer<64, true>)((codasip::Integer<64, true>)(0)) )  )  >> (codasip::Integer<32, true>)(0x1) ) ;
    switch (MI.getOpcode()) {
    case Codasip::i_beqz_alias__reg0__rel_addr12__:
    case Codasip::i_beqz_alias__reg0_alias__rel_addr12__:
    case Codasip::i_beqz_alias__regs__rel_addr12__:
    case Codasip::i_bgez_alias__reg0__rel_addr12__:
    case Codasip::i_bgez_alias__reg0_alias__rel_addr12__:
    case Codasip::i_bgez_alias__regs__rel_addr12__:
    case Codasip::i_bgt_alias__reg0__reg0__rel_addr12__:
    case Codasip::i_bgt_alias__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_bgt_alias__reg0__regs__rel_addr12__:
    case Codasip::i_bgt_alias__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_bgt_alias__reg0_alias__reg0_alias__rel_addr12__:
    case Codasip::i_bgt_alias__reg0_alias__regs__rel_addr12__:
    case Codasip::i_bgt_alias__regs__reg0__rel_addr12__:
    case Codasip::i_bgt_alias__regs__reg0_alias__rel_addr12__:
    case Codasip::i_bgt_alias__regs__regs__rel_addr12__:
    case Codasip::i_bgtu_alias__reg0__reg0__rel_addr12__:
    case Codasip::i_bgtu_alias__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_bgtu_alias__reg0__regs__rel_addr12__:
    case Codasip::i_bgtu_alias__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_bgtu_alias__reg0_alias__reg0_alias__rel_addr12__:
    case Codasip::i_bgtu_alias__reg0_alias__regs__rel_addr12__:
    case Codasip::i_bgtu_alias__regs__reg0__rel_addr12__:
    case Codasip::i_bgtu_alias__regs__reg0_alias__rel_addr12__:
    case Codasip::i_bgtu_alias__regs__regs__rel_addr12__:
    case Codasip::i_bgtz_alias__reg0__rel_addr12__:
    case Codasip::i_bgtz_alias__reg0_alias__rel_addr12__:
    case Codasip::i_bgtz_alias__regs__rel_addr12__:
    case Codasip::i_ble_alias__reg0__reg0__rel_addr12__:
    case Codasip::i_ble_alias__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_ble_alias__reg0__regs__rel_addr12__:
    case Codasip::i_ble_alias__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_ble_alias__reg0_alias__reg0_alias__rel_addr12__:
    case Codasip::i_ble_alias__reg0_alias__regs__rel_addr12__:
    case Codasip::i_ble_alias__regs__reg0__rel_addr12__:
    case Codasip::i_ble_alias__regs__reg0_alias__rel_addr12__:
    case Codasip::i_ble_alias__regs__regs__rel_addr12__:
    case Codasip::i_bleu_alias__reg0__reg0__rel_addr12__:
    case Codasip::i_bleu_alias__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_bleu_alias__reg0__regs__rel_addr12__:
    case Codasip::i_bleu_alias__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_bleu_alias__reg0_alias__reg0_alias__rel_addr12__:
    case Codasip::i_bleu_alias__reg0_alias__regs__rel_addr12__:
    case Codasip::i_bleu_alias__regs__reg0__rel_addr12__:
    case Codasip::i_bleu_alias__regs__reg0_alias__rel_addr12__:
    case Codasip::i_bleu_alias__regs__regs__rel_addr12__:
    case Codasip::i_blez_alias__reg0__rel_addr12__:
    case Codasip::i_blez_alias__reg0_alias__rel_addr12__:
    case Codasip::i_blez_alias__regs__rel_addr12__:
    case Codasip::i_bltz_alias__reg0__rel_addr12__:
    case Codasip::i_bltz_alias__reg0_alias__rel_addr12__:
    case Codasip::i_bltz_alias__regs__rel_addr12__:
    case Codasip::i_bnez_alias__reg0__rel_addr12__:
    case Codasip::i_bnez_alias__reg0_alias__rel_addr12__:
    case Codasip::i_bnez_alias__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_beq__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_beq__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_beq__reg0_alias__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_beq__reg0_alias__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_beq__regs__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_beq__regs__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_beq__regs__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bge__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bge__reg0__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bge__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bge__reg0_alias__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bge__reg0_alias__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bge__regs__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bge__regs__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bgeu__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bgeu__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bgeu__reg0_alias__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bgeu__reg0_alias__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bgeu__regs__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bgeu__regs__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_blt__reg0__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_blt__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_blt__reg0__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_blt__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_blt__reg0_alias__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_blt__reg0_alias__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_blt__regs__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_blt__regs__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bltu__reg0__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bltu__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bltu__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bltu__reg0_alias__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bltu__reg0_alias__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bltu__regs__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bltu__regs__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bne__reg0__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bne__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bne__reg0__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bne__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bne__reg0_alias__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bne__reg0_alias__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bne__regs__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bne__regs__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bne__regs__regs__rel_addr12__:
      checkTruncationOverflow(MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12, 12, 1, MO.isMasked() || encodingSectionHasMask, MI.getLoc(), Ctx.getSourceManager());
      break;
    default:
      break;
    }
    return MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12;
  }
  assert(MO.isExpr());
  // Function hook for custom fixup
  if (getCustomFixupEncoder().customEncodeMI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12(MI, MO, Fixups, STI))
    return 0;
  const Codasip::Fixups Kind = Codasip::FK_Codasip_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12;
  (void)Kind; // suppress warning
  const MCInstrDesc &IDesc = MCII.get(MI.getOpcode());
  (void)IDesc; // suppress warning
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 11, 11, IDesc.getSize(), 31, 31, 1, 1));
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 9, 4, IDesc.getSize(), 30, 25, 0, 1));
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 3, 0, IDesc.getSize(), 11, 8, 0, 1));
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 10, 10, IDesc.getSize(), 7, 7, 0, 1));
  return 0;
}

uint64_t CodasipMCCodeEmitter::encodeMI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20(const MCInst &MI,
  unsigned OpIdx,
  SmallVectorImpl<MCFixup> &Fixups,
  const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpIdx);
  if (MO.isImm()) {
    int64_t MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20 = MO.getImm();
    bool encodingSectionHasMask = false;
    // Encoding section for fixups solvable by assembler frontend
    MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20 =  (  (  ( (codasip::MaxInt)MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20 - (codasip::Integer<64, true>)((codasip::Integer<64, true>)(0)) )  )  >> (codasip::Integer<32, true>)(0x1) ) ;
    switch (MI.getOpcode()) {
    case Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__:
    case Codasip::i_jal_abs__opc_jal__regs__rel_addr20__:
    case Codasip::i_call_rel_alias__rel_addr20__:
    case Codasip::i_jal__opc_jal__reg0__rel_addr20__:
    case Codasip::i_jal__opc_jal__reg0_alias__rel_addr20__:
    case Codasip::i_jal__opc_jal__regs__rel_addr20__:
    case Codasip::i_jmp_rel_alias__rel_addr20__:
      checkTruncationOverflow(MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20, 20, 1, MO.isMasked() || encodingSectionHasMask, MI.getLoc(), Ctx.getSourceManager());
      break;
    default:
      break;
    }
    return MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20;
  }
  assert(MO.isExpr());
  // Function hook for custom fixup
  if (getCustomFixupEncoder().customEncodeMI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20(MI, MO, Fixups, STI))
    return 0;
  const Codasip::Fixups Kind = Codasip::FK_Codasip_MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20;
  (void)Kind; // suppress warning
  const MCInstrDesc &IDesc = MCII.get(MI.getOpcode());
  (void)IDesc; // suppress warning
  switch (MI.getOpcode()) {
  case Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__:
  case Codasip::i_jal_abs__opc_jal__regs__rel_addr20__:
    break;
  case Codasip::i_call_rel_alias__rel_addr20__:
  case Codasip::i_jal__opc_jal__reg0__rel_addr20__:
  case Codasip::i_jal__opc_jal__reg0_alias__rel_addr20__:
  case Codasip::i_jal__opc_jal__regs__rel_addr20__:
  case Codasip::i_jmp_rel_alias__rel_addr20__:
    Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 19, 19, IDesc.getSize(), 31, 31, 1, 1));
    Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 9, 0, IDesc.getSize(), 30, 21, 0, 1));
    Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 10, 10, IDesc.getSize(), 20, 20, 0, 1));
    Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 18, 11, IDesc.getSize(), 19, 12, 0, 1));
    break;
  default:
    llvm_unreachable("Unexpected MCInst in encode function");
    break;
  }
  return 0;
}

uint64_t CodasipMCCodeEmitter::encodeMI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32(const MCInst &MI,
  unsigned OpIdx,
  SmallVectorImpl<MCFixup> &Fixups,
  const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpIdx);
  if (MO.isImm()) {
    int64_t MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32 = MO.getImm();
    bool encodingSectionHasMask = false;
    // Encoding section for fixups solvable by assembler frontend
    MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32 =  ( (  (  (  (  ( (codasip::MaxInt)MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32 - (codasip::Integer<64, true>)((codasip::Integer<64, true>)(0)) )  )  & (codasip::Integer<32, true>)(0x800) )  )  ) ? ( ( codasip::Integer<64, false> )  (  (  (  (  ( (codasip::MaxInt)MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32 - (codasip::Integer<64, true>)((codasip::Integer<64, true>)(0)) )  )  + (codasip::Integer<32, true>)(0x1000) )  )  & (codasip::Integer<32, false>)(0xffffffff) )  ) : ( ( codasip::Integer<64, false> )  (  (  ( (codasip::MaxInt)MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32 - (codasip::Integer<64, true>)((codasip::Integer<64, true>)(0)) )  )  & (codasip::Integer<32, false>)(0xffffffff) )  ) ) ;
    encodingSectionHasMask = true;
    switch (MI.getOpcode()) {
    case Codasip::i_la_alias__reg0__rel_addr32__:
    case Codasip::i_la_alias__reg0_alias__rel_addr32__:
    case Codasip::i_la_alias__regs__rel_addr32__:
    case Codasip::i_lla_alias__reg0__rel_addr32__:
    case Codasip::i_lla_alias__reg0_alias__rel_addr32__:
    case Codasip::i_lla_alias__regs__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadb__reg0__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadb__reg0_alias__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadb__regs__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadbu__reg0__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadbu__reg0_alias__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadbu__regs__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadh__reg0__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadh__reg0_alias__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadh__regs__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadhu__reg0__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadhu__reg0_alias__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadhu__regs__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadw__reg0__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadw__reg0_alias__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadw__regs__rel_addr32__:
    case Codasip::i_store_global_alias__opc_storeb__reg0__rel_addr32__reg0__:
    case Codasip::i_store_global_alias__opc_storeb__reg0__rel_addr32__reg0_alias__:
    case Codasip::i_store_global_alias__opc_storeb__reg0__rel_addr32__regs__:
    case Codasip::i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__reg0__:
    case Codasip::i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__reg0_alias__:
    case Codasip::i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__regs__:
    case Codasip::i_store_global_alias__opc_storeb__regs__rel_addr32__reg0__:
    case Codasip::i_store_global_alias__opc_storeb__regs__rel_addr32__reg0_alias__:
    case Codasip::i_store_global_alias__opc_storeb__regs__rel_addr32__regs__:
    case Codasip::i_store_global_alias__opc_storeh__reg0__rel_addr32__reg0__:
    case Codasip::i_store_global_alias__opc_storeh__reg0__rel_addr32__reg0_alias__:
    case Codasip::i_store_global_alias__opc_storeh__reg0__rel_addr32__regs__:
    case Codasip::i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__reg0__:
    case Codasip::i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__reg0_alias__:
    case Codasip::i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__regs__:
    case Codasip::i_store_global_alias__opc_storeh__regs__rel_addr32__reg0__:
    case Codasip::i_store_global_alias__opc_storeh__regs__rel_addr32__reg0_alias__:
    case Codasip::i_store_global_alias__opc_storeh__regs__rel_addr32__regs__:
    case Codasip::i_store_global_alias__opc_storew__reg0__rel_addr32__reg0__:
    case Codasip::i_store_global_alias__opc_storew__reg0__rel_addr32__reg0_alias__:
    case Codasip::i_store_global_alias__opc_storew__reg0__rel_addr32__regs__:
    case Codasip::i_store_global_alias__opc_storew__reg0_alias__rel_addr32__reg0__:
    case Codasip::i_store_global_alias__opc_storew__reg0_alias__rel_addr32__reg0_alias__:
    case Codasip::i_store_global_alias__opc_storew__reg0_alias__rel_addr32__regs__:
    case Codasip::i_store_global_alias__opc_storew__regs__rel_addr32__reg0__:
    case Codasip::i_store_global_alias__opc_storew__regs__rel_addr32__reg0_alias__:
    case Codasip::i_store_global_alias__opc_storew__regs__rel_addr32__regs__:
      checkTruncationOverflow(MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32, 32, 1, MO.isMasked() || encodingSectionHasMask, MI.getLoc(), Ctx.getSourceManager());
      break;
    default:
      break;
    }
    return MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32;
  }
  assert(MO.isExpr());
  // Function hook for custom fixup
  if (getCustomFixupEncoder().customEncodeMI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32(MI, MO, Fixups, STI))
    return 0;
  const Codasip::Fixups Kind = Codasip::FK_Codasip_MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32;
  (void)Kind; // suppress warning
  const MCInstrDesc &IDesc = MCII.get(MI.getOpcode());
  (void)IDesc; // suppress warning
  switch (MI.getOpcode()) {
  case Codasip::i_la_alias__reg0__rel_addr32__:
  case Codasip::i_la_alias__reg0_alias__rel_addr32__:
  case Codasip::i_la_alias__regs__rel_addr32__:
  case Codasip::i_lla_alias__reg0__rel_addr32__:
  case Codasip::i_lla_alias__reg0_alias__rel_addr32__:
  case Codasip::i_lla_alias__regs__rel_addr32__:
  case Codasip::i_load_global_alias__opc_loadb__reg0__rel_addr32__:
  case Codasip::i_load_global_alias__opc_loadb__reg0_alias__rel_addr32__:
  case Codasip::i_load_global_alias__opc_loadb__regs__rel_addr32__:
  case Codasip::i_load_global_alias__opc_loadbu__reg0__rel_addr32__:
  case Codasip::i_load_global_alias__opc_loadbu__reg0_alias__rel_addr32__:
  case Codasip::i_load_global_alias__opc_loadbu__regs__rel_addr32__:
  case Codasip::i_load_global_alias__opc_loadh__reg0__rel_addr32__:
  case Codasip::i_load_global_alias__opc_loadh__reg0_alias__rel_addr32__:
  case Codasip::i_load_global_alias__opc_loadh__regs__rel_addr32__:
  case Codasip::i_load_global_alias__opc_loadhu__reg0__rel_addr32__:
  case Codasip::i_load_global_alias__opc_loadhu__reg0_alias__rel_addr32__:
  case Codasip::i_load_global_alias__opc_loadhu__regs__rel_addr32__:
  case Codasip::i_load_global_alias__opc_loadw__reg0__rel_addr32__:
  case Codasip::i_load_global_alias__opc_loadw__reg0_alias__rel_addr32__:
  case Codasip::i_load_global_alias__opc_loadw__regs__rel_addr32__:
    Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 11, 0, IDesc.getSize(), 63, 52, 0, 1));
    Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 31, 12, IDesc.getSize(), 31, 12, 1, 1));
    break;
  case Codasip::i_store_global_alias__opc_storeb__reg0__rel_addr32__reg0__:
  case Codasip::i_store_global_alias__opc_storeb__reg0__rel_addr32__reg0_alias__:
  case Codasip::i_store_global_alias__opc_storeb__reg0__rel_addr32__regs__:
  case Codasip::i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__reg0__:
  case Codasip::i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__reg0_alias__:
  case Codasip::i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__regs__:
  case Codasip::i_store_global_alias__opc_storeb__regs__rel_addr32__reg0__:
  case Codasip::i_store_global_alias__opc_storeb__regs__rel_addr32__reg0_alias__:
  case Codasip::i_store_global_alias__opc_storeb__regs__rel_addr32__regs__:
  case Codasip::i_store_global_alias__opc_storeh__reg0__rel_addr32__reg0__:
  case Codasip::i_store_global_alias__opc_storeh__reg0__rel_addr32__reg0_alias__:
  case Codasip::i_store_global_alias__opc_storeh__reg0__rel_addr32__regs__:
  case Codasip::i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__reg0__:
  case Codasip::i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__reg0_alias__:
  case Codasip::i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__regs__:
  case Codasip::i_store_global_alias__opc_storeh__regs__rel_addr32__reg0__:
  case Codasip::i_store_global_alias__opc_storeh__regs__rel_addr32__reg0_alias__:
  case Codasip::i_store_global_alias__opc_storeh__regs__rel_addr32__regs__:
  case Codasip::i_store_global_alias__opc_storew__reg0__rel_addr32__reg0__:
  case Codasip::i_store_global_alias__opc_storew__reg0__rel_addr32__reg0_alias__:
  case Codasip::i_store_global_alias__opc_storew__reg0__rel_addr32__regs__:
  case Codasip::i_store_global_alias__opc_storew__reg0_alias__rel_addr32__reg0__:
  case Codasip::i_store_global_alias__opc_storew__reg0_alias__rel_addr32__reg0_alias__:
  case Codasip::i_store_global_alias__opc_storew__reg0_alias__rel_addr32__regs__:
  case Codasip::i_store_global_alias__opc_storew__regs__rel_addr32__reg0__:
  case Codasip::i_store_global_alias__opc_storew__regs__rel_addr32__reg0_alias__:
  case Codasip::i_store_global_alias__opc_storew__regs__rel_addr32__regs__:
    Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 11, 5, IDesc.getSize(), 63, 57, 0, 1));
    Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 4, 0, IDesc.getSize(), 43, 39, 0, 1));
    Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 31, 12, IDesc.getSize(), 31, 12, 1, 1));
    break;
  default:
    llvm_unreachable("Unexpected MCInst in encode function");
    break;
  }
  return 0;
}

uint64_t CodasipMCCodeEmitter::encodeMI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi(const MCInst &MI,
  unsigned OpIdx,
  SmallVectorImpl<MCFixup> &Fixups,
  const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpIdx);
  if (MO.isImm()) {
    int64_t MI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi = MO.getImm();
    bool encodingSectionHasMask = false;
    // Encoding section for fixups solvable by assembler frontend
    MI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi =  ( (  (  ( (codasip::MaxInt)MI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi & (codasip::Integer<32, true>)(0x800) )  )  ) ? ( ( codasip::Integer<32, false> )  (  (  ( (codasip::MaxInt)MI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi + (codasip::Integer<32, true>)(0x1000) )  )  & (codasip::Integer<32, false>)(0xffffffff) )  ) : ( ( codasip::Integer<32, false> )  ( (codasip::MaxInt)MI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi & (codasip::Integer<32, false>)(0xffffffff) )  ) ) ;
    encodingSectionHasMask = true;
    switch (MI.getOpcode()) {
    case Codasip::i_li_aalias__reg0__imm32_lui_addi__:
    case Codasip::i_li_aalias__reg0_alias__imm32_lui_addi__:
    case Codasip::i_li_aalias__regs__imm32_lui_addi__:
      checkTruncationOverflow(MI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi, 32, 1, MO.isMasked() || encodingSectionHasMask, MI.getLoc(), Ctx.getSourceManager());
      break;
    default:
      break;
    }
    return MI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi;
  }
  assert(MO.isExpr());
  // Function hook for custom fixup
  if (getCustomFixupEncoder().customEncodeMI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi(MI, MO, Fixups, STI))
    return 0;
  const Codasip::Fixups Kind = Codasip::FK_Codasip_MI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi;
  (void)Kind; // suppress warning
  const MCInstrDesc &IDesc = MCII.get(MI.getOpcode());
  (void)IDesc; // suppress warning
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 11, 0, IDesc.getSize(), 63, 52, 0, 1));
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 31, 12, IDesc.getSize(), 31, 12, 1, 1));
  return 0;
}

uint64_t CodasipMCCodeEmitter::encodeMI4addrIH1_10start_base23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple(const MCInst &MI,
  unsigned OpIdx,
  SmallVectorImpl<MCFixup> &Fixups,
  const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpIdx);
  if (MO.isImm()) {
    int64_t MI4addrIH1_10start_base23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple = MO.getImm();
    bool encodingSectionHasMask = false;
    // Encoding section for fixups solvable by assembler frontend
    MI4addrIH1_10start_base23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple =  ( (  (  (  (  ( (codasip::MaxInt)MI4addrIH1_10start_base23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple - (codasip::Integer<64, true>)((codasip::Integer<64, true>)(0)) )  )  & (codasip::Integer<32, true>)(0x800) )  )  ) ? ( ( codasip::Integer<64, false> )  (  (  (  (  ( (codasip::MaxInt)MI4addrIH1_10start_base23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple - (codasip::Integer<64, true>)((codasip::Integer<64, true>)(0)) )  )  + (codasip::Integer<32, true>)(0x1000) )  )  & (codasip::Integer<32, false>)(0xffffffff) )  ) : ( ( codasip::Integer<64, false> )  (  (  ( (codasip::MaxInt)MI4addrIH1_10start_base23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple - (codasip::Integer<64, true>)((codasip::Integer<64, true>)(0)) )  )  & (codasip::Integer<32, false>)(0xffffffff) )  ) ) ;
    encodingSectionHasMask = true;
    switch (MI.getOpcode()) {
    case Codasip::i_call_alias__rel_addr32_call_tail_simple__:
    case Codasip::i_tail_alias__rel_addr32_call_tail_simple__:
      checkTruncationOverflow(MI4addrIH1_10start_base23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple, 32, 1, MO.isMasked() || encodingSectionHasMask, MI.getLoc(), Ctx.getSourceManager());
      break;
    default:
      break;
    }
    return MI4addrIH1_10start_base23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple;
  }
  assert(MO.isExpr());
  // Function hook for custom fixup
  if (getCustomFixupEncoder().customEncodeMI4addrIH1_10start_base23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple(MI, MO, Fixups, STI))
    return 0;
  const Codasip::Fixups Kind = Codasip::FK_Codasip_MI4addrIH1_10start_base23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple;
  (void)Kind; // suppress warning
  const MCInstrDesc &IDesc = MCII.get(MI.getOpcode());
  (void)IDesc; // suppress warning
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 11, 0, IDesc.getSize(), 63, 52, 0, 1));
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 31, 12, IDesc.getSize(), 31, 12, 1, 1));
  return 0;
}

uint64_t CodasipMCCodeEmitter::encodeMI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple(const MCInst &MI,
  unsigned OpIdx,
  SmallVectorImpl<MCFixup> &Fixups,
  const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpIdx);
  if (MO.isImm()) {
    int64_t MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple = MO.getImm();
    bool encodingSectionHasMask = false;
    switch (MI.getOpcode()) {
    case Codasip::i_store__opc_storeb__reg0__simm12_simple__reg0__:
    case Codasip::i_store__opc_storeb__reg0__simm12_simple__reg0_alias__:
    case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__:
    case Codasip::i_store__opc_storeb__reg0_alias__simm12_simple__reg0__:
    case Codasip::i_store__opc_storeb__reg0_alias__simm12_simple__reg0_alias__:
    case Codasip::i_store__opc_storeb__reg0_alias__simm12_simple__regs__:
    case Codasip::i_store__opc_storeb__regs__simm12_simple__reg0__:
    case Codasip::i_store__opc_storeb__regs__simm12_simple__reg0_alias__:
    case Codasip::i_store__opc_storeb__regs__simm12_simple__regs__:
    case Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__:
    case Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0_alias__:
    case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__:
    case Codasip::i_store__opc_storeh__reg0_alias__simm12_simple__reg0__:
    case Codasip::i_store__opc_storeh__reg0_alias__simm12_simple__reg0_alias__:
    case Codasip::i_store__opc_storeh__reg0_alias__simm12_simple__regs__:
    case Codasip::i_store__opc_storeh__regs__simm12_simple__reg0__:
    case Codasip::i_store__opc_storeh__regs__simm12_simple__reg0_alias__:
    case Codasip::i_store__opc_storeh__regs__simm12_simple__regs__:
    case Codasip::i_store__opc_storew__reg0__simm12_simple__reg0__:
    case Codasip::i_store__opc_storew__reg0__simm12_simple__reg0_alias__:
    case Codasip::i_store__opc_storew__reg0__simm12_simple__regs__:
    case Codasip::i_store__opc_storew__reg0_alias__simm12_simple__reg0__:
    case Codasip::i_store__opc_storew__reg0_alias__simm12_simple__reg0_alias__:
    case Codasip::i_store__opc_storew__reg0_alias__simm12_simple__regs__:
    case Codasip::i_store__opc_storew__regs__simm12_simple__reg0__:
    case Codasip::i_store__opc_storew__regs__simm12_simple__reg0_alias__:
    case Codasip::i_store__opc_storew__regs__simm12_simple__regs__:
      checkTruncationOverflow(MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple, 12, 1, MO.isMasked() || encodingSectionHasMask, MI.getLoc(), Ctx.getSourceManager());
      break;
    default:
      break;
    }
    return MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple;
  }
  assert(MO.isExpr());
  // Function hook for custom fixup
  if (getCustomFixupEncoder().customEncodeMI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple(MI, MO, Fixups, STI))
    return 0;
  const Codasip::Fixups Kind = Codasip::FK_Codasip_MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple;
  (void)Kind; // suppress warning
  const MCInstrDesc &IDesc = MCII.get(MI.getOpcode());
  (void)IDesc; // suppress warning
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 11, 5, IDesc.getSize(), 31, 25, 1, 1));
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 4, 0, IDesc.getSize(), 11, 7, 0, 1));
  return 0;
}

uint64_t CodasipMCCodeEmitter::encodeMI4simmIH1_10start_base8_6simm126simm121_13simm12_simple(const MCInst &MI,
  unsigned OpIdx,
  SmallVectorImpl<MCFixup> &Fixups,
  const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpIdx);
  if (MO.isImm()) {
    int64_t MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple = MO.getImm();
    bool encodingSectionHasMask = false;
    switch (MI.getOpcode()) {
    case Codasip::i_ori_emulation_alias__reg0__reg0__simm12_simple__:
    case Codasip::i_ori_emulation_alias__reg0__regs__simm12_simple__:
    case Codasip::i_ori_emulation_alias__regs__reg0__simm12_simple__:
    case Codasip::i_ori_emulation_alias__regs__regs__simm12_simple__:
    case Codasip::i_addi_alias__reg0__reg0__simm12_simple__:
    case Codasip::i_addi_alias__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_addi_alias__reg0__regs__simm12_simple__:
    case Codasip::i_addi_alias__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_addi_alias__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_addi_alias__reg0_alias__regs__simm12_simple__:
    case Codasip::i_addi_alias__regs__reg0__simm12_simple__:
    case Codasip::i_addi_alias__regs__reg0_alias__simm12_simple__:
    case Codasip::i_addi_alias__regs__regs__simm12_simple__:
    case Codasip::i_andi_alias__reg0__reg0__simm12_simple__:
    case Codasip::i_andi_alias__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_andi_alias__reg0__regs__simm12_simple__:
    case Codasip::i_andi_alias__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_andi_alias__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_andi_alias__reg0_alias__regs__simm12_simple__:
    case Codasip::i_andi_alias__regs__reg0__simm12_simple__:
    case Codasip::i_andi_alias__regs__reg0_alias__simm12_simple__:
    case Codasip::i_andi_alias__regs__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_andi__regs__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:
    case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__:
    case Codasip::i_jalr__opc_jalr__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_jalr__opc_jalr__reg0__regs__simm12_simple__:
    case Codasip::i_jalr__opc_jalr__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_jalr__opc_jalr__reg0_alias__regs__simm12_simple__:
    case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_simple__:
    case Codasip::i_jalr__opc_jalr__regs__reg0_alias__simm12_simple__:
    case Codasip::i_jalr__opc_jalr__regs__regs__simm12_simple__:
    case Codasip::i_jlr_alias__reg0__simm12_simple__:
    case Codasip::i_jlr_alias__reg0_alias__simm12_simple__:
    case Codasip::i_jlr_alias__regs__simm12_simple__:
    case Codasip::i_load__opc_loadb__reg0__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadb__reg0__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadb__reg0__simm12_simple__regs__:
    case Codasip::i_load__opc_loadb__reg0_alias__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadb__reg0_alias__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadb__reg0_alias__simm12_simple__regs__:
    case Codasip::i_load__opc_loadb__regs__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadb__regs__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__:
    case Codasip::i_load__opc_loadbu__reg0__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadbu__reg0__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadbu__reg0__simm12_simple__regs__:
    case Codasip::i_load__opc_loadbu__reg0_alias__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadbu__reg0_alias__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadbu__reg0_alias__simm12_simple__regs__:
    case Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__:
    case Codasip::i_load__opc_loadh__reg0__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadh__reg0__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadh__reg0__simm12_simple__regs__:
    case Codasip::i_load__opc_loadh__reg0_alias__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadh__reg0_alias__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadh__reg0_alias__simm12_simple__regs__:
    case Codasip::i_load__opc_loadh__regs__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadh__regs__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__:
    case Codasip::i_load__opc_loadhu__reg0__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadhu__reg0__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadhu__reg0__simm12_simple__regs__:
    case Codasip::i_load__opc_loadhu__reg0_alias__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadhu__reg0_alias__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadhu__reg0_alias__simm12_simple__regs__:
    case Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__:
    case Codasip::i_load__opc_loadw__reg0__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadw__reg0__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadw__reg0__simm12_simple__regs__:
    case Codasip::i_load__opc_loadw__reg0_alias__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadw__reg0_alias__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadw__reg0_alias__simm12_simple__regs__:
    case Codasip::i_load__opc_loadw__regs__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadw__regs__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__:
    case Codasip::i_ori_alias__reg0__reg0__simm12_simple__:
    case Codasip::i_ori_alias__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_ori_alias__reg0__regs__simm12_simple__:
    case Codasip::i_ori_alias__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_ori_alias__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_ori_alias__reg0_alias__regs__simm12_simple__:
    case Codasip::i_ori_alias__regs__reg0__simm12_simple__:
    case Codasip::i_ori_alias__regs__reg0_alias__simm12_simple__:
    case Codasip::i_ori_alias__regs__regs__simm12_simple__:
    case Codasip::i_xori_alias__reg0__reg0__simm12_simple__:
    case Codasip::i_xori_alias__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_xori_alias__reg0__regs__simm12_simple__:
    case Codasip::i_xori_alias__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_xori_alias__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_xori_alias__reg0_alias__regs__simm12_simple__:
    case Codasip::i_xori_alias__regs__reg0__simm12_simple__:
    case Codasip::i_xori_alias__regs__reg0_alias__simm12_simple__:
    case Codasip::i_xori_alias__regs__regs__simm12_simple__:
      checkTruncationOverflow(MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple, 12, 1, MO.isMasked() || encodingSectionHasMask, MI.getLoc(), Ctx.getSourceManager());
      break;
    default:
      break;
    }
    return MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple;
  }
  assert(MO.isExpr());
  // Function hook for custom fixup
  if (getCustomFixupEncoder().customEncodeMI4simmIH1_10start_base8_6simm126simm121_13simm12_simple(MI, MO, Fixups, STI))
    return 0;
  const Codasip::Fixups Kind = Codasip::FK_Codasip_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple;
  (void)Kind; // suppress warning
  const MCInstrDesc &IDesc = MCII.get(MI.getOpcode());
  (void)IDesc; // suppress warning
  switch (MI.getOpcode()) {
  case Codasip::i_ori_emulation_alias__reg0__reg0__simm12_simple__:
  case Codasip::i_ori_emulation_alias__reg0__regs__simm12_simple__:
  case Codasip::i_ori_emulation_alias__regs__reg0__simm12_simple__:
  case Codasip::i_ori_emulation_alias__regs__regs__simm12_simple__:
    break;
  case Codasip::i_addi_alias__reg0__reg0__simm12_simple__:
  case Codasip::i_addi_alias__reg0__reg0_alias__simm12_simple__:
  case Codasip::i_addi_alias__reg0__regs__simm12_simple__:
  case Codasip::i_addi_alias__reg0_alias__reg0__simm12_simple__:
  case Codasip::i_addi_alias__reg0_alias__reg0_alias__simm12_simple__:
  case Codasip::i_addi_alias__reg0_alias__regs__simm12_simple__:
  case Codasip::i_addi_alias__regs__reg0__simm12_simple__:
  case Codasip::i_addi_alias__regs__reg0_alias__simm12_simple__:
  case Codasip::i_addi_alias__regs__regs__simm12_simple__:
  case Codasip::i_andi_alias__reg0__reg0__simm12_simple__:
  case Codasip::i_andi_alias__reg0__reg0_alias__simm12_simple__:
  case Codasip::i_andi_alias__reg0__regs__simm12_simple__:
  case Codasip::i_andi_alias__reg0_alias__reg0__simm12_simple__:
  case Codasip::i_andi_alias__reg0_alias__reg0_alias__simm12_simple__:
  case Codasip::i_andi_alias__reg0_alias__regs__simm12_simple__:
  case Codasip::i_andi_alias__regs__reg0__simm12_simple__:
  case Codasip::i_andi_alias__regs__reg0_alias__simm12_simple__:
  case Codasip::i_andi_alias__regs__regs__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_addi__reg0__regs__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_andi__reg0__regs__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_andi__regs__reg0__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_ori__reg0__regs__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_slti__reg0__regs__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_xori__reg0__regs__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_simple__:
  case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:
  case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__:
  case Codasip::i_jalr__opc_jalr__reg0__reg0_alias__simm12_simple__:
  case Codasip::i_jalr__opc_jalr__reg0__regs__simm12_simple__:
  case Codasip::i_jalr__opc_jalr__reg0_alias__reg0__simm12_simple__:
  case Codasip::i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_simple__:
  case Codasip::i_jalr__opc_jalr__reg0_alias__regs__simm12_simple__:
  case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_simple__:
  case Codasip::i_jalr__opc_jalr__regs__reg0_alias__simm12_simple__:
  case Codasip::i_jalr__opc_jalr__regs__regs__simm12_simple__:
  case Codasip::i_jlr_alias__reg0__simm12_simple__:
  case Codasip::i_jlr_alias__reg0_alias__simm12_simple__:
  case Codasip::i_jlr_alias__regs__simm12_simple__:
  case Codasip::i_load__opc_loadb__reg0__simm12_simple__reg0__:
  case Codasip::i_load__opc_loadb__reg0__simm12_simple__reg0_alias__:
  case Codasip::i_load__opc_loadb__reg0__simm12_simple__regs__:
  case Codasip::i_load__opc_loadb__reg0_alias__simm12_simple__reg0__:
  case Codasip::i_load__opc_loadb__reg0_alias__simm12_simple__reg0_alias__:
  case Codasip::i_load__opc_loadb__reg0_alias__simm12_simple__regs__:
  case Codasip::i_load__opc_loadb__regs__simm12_simple__reg0__:
  case Codasip::i_load__opc_loadb__regs__simm12_simple__reg0_alias__:
  case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__:
  case Codasip::i_load__opc_loadbu__reg0__simm12_simple__reg0__:
  case Codasip::i_load__opc_loadbu__reg0__simm12_simple__reg0_alias__:
  case Codasip::i_load__opc_loadbu__reg0__simm12_simple__regs__:
  case Codasip::i_load__opc_loadbu__reg0_alias__simm12_simple__reg0__:
  case Codasip::i_load__opc_loadbu__reg0_alias__simm12_simple__reg0_alias__:
  case Codasip::i_load__opc_loadbu__reg0_alias__simm12_simple__regs__:
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__:
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0_alias__:
  case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__:
  case Codasip::i_load__opc_loadh__reg0__simm12_simple__reg0__:
  case Codasip::i_load__opc_loadh__reg0__simm12_simple__reg0_alias__:
  case Codasip::i_load__opc_loadh__reg0__simm12_simple__regs__:
  case Codasip::i_load__opc_loadh__reg0_alias__simm12_simple__reg0__:
  case Codasip::i_load__opc_loadh__reg0_alias__simm12_simple__reg0_alias__:
  case Codasip::i_load__opc_loadh__reg0_alias__simm12_simple__regs__:
  case Codasip::i_load__opc_loadh__regs__simm12_simple__reg0__:
  case Codasip::i_load__opc_loadh__regs__simm12_simple__reg0_alias__:
  case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__:
  case Codasip::i_load__opc_loadhu__reg0__simm12_simple__reg0__:
  case Codasip::i_load__opc_loadhu__reg0__simm12_simple__reg0_alias__:
  case Codasip::i_load__opc_loadhu__reg0__simm12_simple__regs__:
  case Codasip::i_load__opc_loadhu__reg0_alias__simm12_simple__reg0__:
  case Codasip::i_load__opc_loadhu__reg0_alias__simm12_simple__reg0_alias__:
  case Codasip::i_load__opc_loadhu__reg0_alias__simm12_simple__regs__:
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__:
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0_alias__:
  case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__:
  case Codasip::i_load__opc_loadw__reg0__simm12_simple__reg0__:
  case Codasip::i_load__opc_loadw__reg0__simm12_simple__reg0_alias__:
  case Codasip::i_load__opc_loadw__reg0__simm12_simple__regs__:
  case Codasip::i_load__opc_loadw__reg0_alias__simm12_simple__reg0__:
  case Codasip::i_load__opc_loadw__reg0_alias__simm12_simple__reg0_alias__:
  case Codasip::i_load__opc_loadw__reg0_alias__simm12_simple__regs__:
  case Codasip::i_load__opc_loadw__regs__simm12_simple__reg0__:
  case Codasip::i_load__opc_loadw__regs__simm12_simple__reg0_alias__:
  case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__:
  case Codasip::i_ori_alias__reg0__reg0__simm12_simple__:
  case Codasip::i_ori_alias__reg0__reg0_alias__simm12_simple__:
  case Codasip::i_ori_alias__reg0__regs__simm12_simple__:
  case Codasip::i_ori_alias__reg0_alias__reg0__simm12_simple__:
  case Codasip::i_ori_alias__reg0_alias__reg0_alias__simm12_simple__:
  case Codasip::i_ori_alias__reg0_alias__regs__simm12_simple__:
  case Codasip::i_ori_alias__regs__reg0__simm12_simple__:
  case Codasip::i_ori_alias__regs__reg0_alias__simm12_simple__:
  case Codasip::i_ori_alias__regs__regs__simm12_simple__:
  case Codasip::i_xori_alias__reg0__reg0__simm12_simple__:
  case Codasip::i_xori_alias__reg0__reg0_alias__simm12_simple__:
  case Codasip::i_xori_alias__reg0__regs__simm12_simple__:
  case Codasip::i_xori_alias__reg0_alias__reg0__simm12_simple__:
  case Codasip::i_xori_alias__reg0_alias__reg0_alias__simm12_simple__:
  case Codasip::i_xori_alias__reg0_alias__regs__simm12_simple__:
  case Codasip::i_xori_alias__regs__reg0__simm12_simple__:
  case Codasip::i_xori_alias__regs__reg0_alias__simm12_simple__:
  case Codasip::i_xori_alias__regs__regs__simm12_simple__:
    Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 11, 0, IDesc.getSize(), 31, 20, 1, 1));
    break;
  default:
    llvm_unreachable("Unexpected MCInst in encode function");
    break;
  }
  return 0;
}

uint64_t CodasipMCCodeEmitter::encodeMI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm(const MCInst &MI,
  unsigned OpIdx,
  SmallVectorImpl<MCFixup> &Fixups,
  const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpIdx);
  if (MO.isImm()) {
    int64_t MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm = MO.getImm();
    bool encodingSectionHasMask = false;
    switch (MI.getOpcode()) {
    case Codasip::i_comp_2reg_imm_shift__opc_slli__reg0__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_slli__reg0__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_slli__reg0__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_slli__reg0_alias__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_slli__reg0_alias__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_slli__reg0_alias__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_slli__regs__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_slli__regs__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srai__reg0__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srai__reg0__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srai__reg0__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srai__reg0_alias__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srai__reg0_alias__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srai__reg0_alias__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srai__regs__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srai__regs__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srli__reg0__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srli__reg0__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srli__reg0__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srli__reg0_alias__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srli__reg0_alias__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srli__reg0_alias__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srli__regs__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srli__regs__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_slli_alias__reg0__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_slli_alias__reg0__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_slli_alias__reg0__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_slli_alias__reg0_alias__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_slli_alias__reg0_alias__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_slli_alias__reg0_alias__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_slli_alias__regs__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_slli_alias__regs__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_slli_alias__regs__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srai_alias__reg0__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srai_alias__reg0__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srai_alias__reg0__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srai_alias__reg0_alias__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srai_alias__reg0_alias__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srai_alias__reg0_alias__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srai_alias__regs__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srai_alias__regs__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srai_alias__regs__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srli_alias__reg0__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srli_alias__reg0__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srli_alias__reg0__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srli_alias__reg0_alias__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srli_alias__reg0_alias__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srli_alias__reg0_alias__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srli_alias__regs__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srli_alias__regs__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srli_alias__regs__regs__shift_imm__:
      checkTruncationOverflow(MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm, 5, 0, MO.isMasked() || encodingSectionHasMask, MI.getLoc(), Ctx.getSourceManager());
      break;
    default:
      break;
    }
    return MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm;
  }
  assert(MO.isExpr());
  // Function hook for custom fixup
  if (getCustomFixupEncoder().customEncodeMI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm(MI, MO, Fixups, STI))
    return 0;
  const Codasip::Fixups Kind = Codasip::FK_Codasip_MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm;
  (void)Kind; // suppress warning
  const MCInstrDesc &IDesc = MCII.get(MI.getOpcode());
  (void)IDesc; // suppress warning
  Fixups.push_back(MCFixup::createCodasip(0, MO.getExpr(), MCFixupKind(Kind), MI.getLoc(), 4, 0, IDesc.getSize(), 24, 20, 1, 0));
  return 0;
}


#ifndef _MSVC
_Pragma("GCC diagnostic push")
_Pragma("GCC diagnostic ignored \"-Wcast-qual\"")
#endif
#include "CodasipGenMCCodeEmitter.inc"
#ifndef _MSVC
_Pragma("GCC diagnostic pop")
#endif
