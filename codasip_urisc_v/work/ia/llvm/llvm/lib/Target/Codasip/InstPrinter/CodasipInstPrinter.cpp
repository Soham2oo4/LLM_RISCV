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


#include "CodasipInstPrinter.h"
#include "CodasipInstrInfo.h"

#include "llvm/MC/MCAsmInfo.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCSymbol.h"
#include "llvm/Support/raw_ostream.h"

#include <cstdio>
#include <utility>

using namespace llvm;

#define DEBUG_TYPE "asm-printer"

#define GET_INSTRUCTION_NAME
#define PRINT_ALIAS_INSTR
#include "CodasipGenAsmWriter.inc"

CodasipInstPrinter::CodasipInstPrinter(const MCAsmInfo &MAI,
                                       const MCInstrInfo &MII,
                                       const MCRegisterInfo &MRI)
    : MCInstPrinter(MAI, MII, MRI) {}

void CodasipInstPrinter::printRegName(raw_ostream &OS, unsigned RegNo) const {
  OS << getRegisterName(RegNo, Codasip::NoRegAltName);
}

// pref/suf data
typedef std::pair<const char *, const char *> SlotSyntax;
// Gets slots syntax based on a first slot and size of a (super)slot
inline static SlotSyntax GetSlotSyntax(const SlotData::value_type &slots) {
  
  llvm_unreachable("unknown slot syntax");
  return SlotSyntax(0, 0);
}

/// mask of slot coverage
class SlotMask : public std::vector<bool> {
public:
  /// Construct clear mask
  SlotMask(unsigned size) : std::vector<bool>(size, false) {}
  /// Detects first unset slot
  unsigned GetFirstFree() const {
    for (unsigned i = 0; i < size(); ++i) {
      if (!at(i)) {
        return i;
      }
    }
    return size();
  }
};

static SlotSyntax GetBundleSyntax(SlotMask &slots, const MCOperand &MO) {
  SlotSyntax syntax(0, 0);
  // current slot
  unsigned S = slots.GetFirstFree();
  if (S >= SLOTS) {
    return syntax;
  }
  // the actual instruction
  assert(MO.isInst());
  const MCInst &MI = *MO.getInst();
  // get possible slots
  SlotData vars;
  CodasipInstrInfo::getAllPosInBundleImpl(MI.getOpcode(), vars);
  // bad?
  if (vars.empty()) {
    return syntax;
  }
  // select the proper one (error otherwise)
  for (unsigned j = 0; j < vars.size(); ++j) {
    // match?
    if (vars[j][0] == S) {
      // get pref/suf
      syntax = GetSlotSyntax(vars[j]);
      // set bits in the mask
      for (unsigned k = 0; k < vars[j].size(); ++k) {
        const unsigned index = vars[j][k];
        assert(index < SLOTS);
        assert(!slots[index]);
        slots[index] = true;
      }
    }
  }
  return syntax;
}

// same as PrintBundle but without printing
bool CodasipInstPrinter::CheckBundle(const MCInst *bundle) {
  // a mask of covered slots
  SlotMask slots(SLOTS);
  // print all items
  for (unsigned i = 0; i < bundle->getNumOperands(); ++i) {
    // get syntax
    SlotSyntax syntax = GetBundleSyntax(slots, bundle->getOperand(i));
    // check
    if (!(syntax.first && syntax.second)) {
      // bad
      return false;
    }
  }
  // all ok
  return true;
}

/* (Abbreviated) description of algorithm (for (super)slot printing):
 * For each bundle (assumes correct bundling):
 * 1. Start at slot 0 and at first instruction
 * 2. Take all possible first slots for the current instruction
 *    and choose the one equal to the current slot (for syntax printing)
 * 3. Shift to next (free) slot
 * 4. Go back to 2, unless at the end of bundle */
void CodasipInstPrinter::PrintBundle(const MCInst *bundle, raw_ostream &O) {
  // a mask of covered slots
  SlotMask slots(SLOTS);
  // print all items
  for (unsigned i = 0; i < bundle->getNumOperands(); ++i) {
    // get syntax
    SlotSyntax syntax = GetBundleSyntax(slots, bundle->getOperand(i));
    // this is prechecked
    assert(syntax.first && syntax.second);
    // print
    O << syntax.first;
    printInstruction(bundle->getOperand(i).getInst(), O);
    O << syntax.second;
  }
}

void CodasipInstPrinter::printInst(const MCInst *MI, raw_ostream &O,
                                   StringRef Annot, const MCSubtargetInfo &) {
  if (MI->getOpcode() == TargetOpcode::BUNDLE) {
    printAnnotation(O, Annot);
    PrintBundle(MI, O);
    return;
  }
  if (!printAliasInstr(MI, O))
    printInstruction(MI, O);
  printAnnotation(O, Annot);
}

#define SHIFT_FLAG 0x1
#define MASK_FLAG 0x2

static unsigned GetAltNameIndex(int reg, int rc) {
  switch (reg) {
  case Codasip::r_csr_marchid_0:
return Codasip::NoRegAltName;
case Codasip::r_csr_mcause_0:
return Codasip::NoRegAltName;
case Codasip::r_csr_mcountinhibit_0:
return Codasip::NoRegAltName;
case Codasip::r_csr_mcycle_0:
return Codasip::NoRegAltName;
case Codasip::r_csr_mepc_0:
return Codasip::NoRegAltName;
case Codasip::r_csr_mhartid_0:
return Codasip::NoRegAltName;
case Codasip::r_csr_mie_0:
return Codasip::NoRegAltName;
case Codasip::r_csr_minstret_0:
return Codasip::NoRegAltName;
case Codasip::r_csr_mip_0:
return Codasip::NoRegAltName;
case Codasip::r_csr_misa_0:
return Codasip::NoRegAltName;
case Codasip::r_csr_mscratch_0:
return Codasip::NoRegAltName;
case Codasip::r_csr_mstatus_0:
return Codasip::NoRegAltName;
case Codasip::r_csr_mtval_0:
return Codasip::NoRegAltName;
case Codasip::r_csr_mtvec_0:
return Codasip::NoRegAltName;
case Codasip::r_csr_nmi_0:
return Codasip::NoRegAltName;
case Codasip::r_csr_nmi_mtval_0:
return Codasip::NoRegAltName;
case Codasip::r_nmi_handler_0:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_0:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_1:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_2:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_3:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_4:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_5:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_6:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_7:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_8:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_9:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_10:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_11:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_12:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_13:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_14:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_15:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_16:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_17:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_18:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_19:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_20:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_21:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_22:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_23:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_24:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_25:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_26:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_27:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_28:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_29:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_30:
return Codasip::NoRegAltName;
case Codasip::rf_gpr_31:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_768:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_769:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_772:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_773:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_800:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_803:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_804:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_805:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_806:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_807:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_808:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_809:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_810:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_811:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_812:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_813:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_814:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_815:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_816:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_817:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_818:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_819:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_820:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_821:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_822:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_823:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_824:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_825:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_826:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_827:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_828:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_829:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_830:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_831:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_832:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_833:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_834:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_835:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_836:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2816:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2818:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2819:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2820:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2821:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2822:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2823:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2824:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2825:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2826:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2827:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2828:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2829:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2830:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2831:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2832:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2833:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2834:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2835:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2836:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2837:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2838:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2839:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2840:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2841:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2842:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2843:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2844:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2845:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2846:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2847:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2944:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2946:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2947:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2948:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2949:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2950:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2951:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2952:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2953:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2954:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2955:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2956:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2957:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2958:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2959:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2960:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2961:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2962:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2963:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2964:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2965:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2966:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2967:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2968:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2969:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2970:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2971:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2972:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2973:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2974:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_2975:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_3857:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_3858:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_3859:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_3860:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_4033:
return Codasip::NoRegAltName;
case Codasip::codasip_physical_regs_csr_4038:
return Codasip::NoRegAltName;

  default:
    llvm_unreachable("unknown register");
  }
  return Codasip::NoRegAltName;
}

void CodasipInstPrinter::printOperand(const MCInst *MI, unsigned opNum,
                                      raw_ostream &O) {
  const unsigned code = MI->getOpcode();
  const MCInstrDesc &desc = MII.get(code);
  assert(opNum < desc.getNumOperands());
  const MCOperand &MO = MI->getOperand(opNum);
  const MCOperandInfo &opInfo = desc.OpInfo[opNum];
  // print
  if (MO.isReg()) {
    const unsigned altIndex = GetAltNameIndex(MO.getReg(), opInfo.RegClass);
    O << getRegisterName(MO.getReg(), altIndex);
  } else if (MO.isImm())
    O << formatHex(MO.getImm());
  else if (MO.isFPImm())
    O << MO.getFPImm();
  else {
    assert(MO.isExpr() && "unknown operand kind in printOperand");
    MO.getExpr()->print(O, nullptr);
  }
}
