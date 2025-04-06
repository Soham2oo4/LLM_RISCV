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
 * \date    2025-04-06
 * \author  Codasip (c) C compiler backend generator
 * \version 9.4.2
 * \brief   Source for compiler backend
 * \project codasip_urisc_v.ia
 * \note          Codasip Studio version: 9.4.2
 *                Project: codasip_urisc_v.ia
 *                Date: 2025-04-06 06:40:46
 *                Copyright (C) 2025 Codasip s.r.o.
 */


#include "CodasipMCTargetDesc.h"

#include "Codasip.h"
#include "CodasipMCAsmInfo.h"
#include "CodasipMCELFStreamer.h"
#include "CodasipTargetStreamer.h"
#include "InstPrinter/CodasipInstPrinter.h"
#include "llvm/MC/MCAsmBackend.h"
#include "llvm/MC/MCCodeEmitter.h"
#include "llvm/MC/MCDwarf.h"
#include "llvm/MC/MCELFStreamer.h"
#include "llvm/MC/MCInstrAnalysis.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCObjectWriter.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/MC/MachineLocation.h"
#include "llvm/Support/TargetRegistry.h"

#define GET_INSTRINFO_MC_DESC
#include "CodasipGenInstrInfo.inc"

#define GET_SUBTARGETINFO_MC_DESC
#include "CodasipGenSubtargetInfo.inc"

#define GET_REGINFO_MC_DESC
#include "CodasipGenRegisterInfo.inc"

using namespace llvm;

static MCInstrInfo *createCodasipMCInstrInfo() {
  MCInstrInfo *X = new MCInstrInfo();
  InitCodasipMCInstrInfo(X);
  return X;
}

static MCRegisterInfo *createCodasipMCRegisterInfo(const Triple &) {
  MCRegisterInfo *X = new MCRegisterInfo();
  const int RA = Codasip::rf_gpr_1;
  InitCodasipMCRegisterInfo(X, RA);
  return X;
}

static MCSubtargetInfo *
createCodasipMCSubtargetInfo(const Triple &TT, StringRef CPU, StringRef FS) {
  if (CPU.empty())
    CPU = "codasip";
  return createCodasipMCSubtargetInfoImpl(TT, CPU, FS);
}

static MCAsmInfo *createCodasipMCAsmInfo(const MCRegisterInfo &MRI,
                                         const Triple &TT) {
  MCAsmInfo *MAI = new CodasipMCAsmInfo(TT);
  // get SP (space 0) if compiler
  // Note: CodasipGen2RegisterInfo::GetSP is not virtual
  const int SP = Codasip::rf_gpr_2;
  // note: our registers have only one dwarf number each
  MCCFIInstruction Inst =
      MCCFIInstruction::createDefCfa(nullptr, MRI.getDwarfRegNum(SP, 0), 0);
  MAI->addInitialFrameState(Inst);
  return MAI;
}

// compiler only
#if !NO_COMPILER

namespace {

class CodasipMCInstrAnalysis : public MCInstrAnalysis {
public:
  CodasipMCInstrAnalysis(const MCInstrInfo *Info) : MCInstrAnalysis(Info) {}

  bool evaluateBranch(const MCInst &Inst, uint64_t Addr, uint64_t Size,
                      uint64_t &Target) const override {
    unsigned NumOps = Inst.getNumOperands();
    if (NumOps == 0)
      return false;
    switch (Info->get(Inst.getOpcode()).OpInfo[NumOps - 1].OperandType) {
    case MCOI::OPERAND_UNKNOWN:
    case MCOI::OPERAND_IMMEDIATE:
      // jal, bal ...
      Target = Inst.getOperand(NumOps - 1).getImm();
      return true;
    case MCOI::OPERAND_PCREL:
      // b, j, beq ...
      Target = Addr + Inst.getOperand(NumOps - 1).getImm();
      return true;
    default:
      return false;
    }
  }

  bool isLabel(const MCInst &Inst) const override {     switch (Inst.getOpcode()) {
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
    case Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__:
    case Codasip::i_jal_abs__opc_jal__regs__rel_addr20__:
    case Codasip::i_call_rel_alias__rel_addr20__:
    case Codasip::i_jal__opc_jal__reg0__rel_addr20__:
    case Codasip::i_jal__opc_jal__reg0_alias__rel_addr20__:
    case Codasip::i_jal__opc_jal__regs__rel_addr20__:
    case Codasip::i_jmp_rel_alias__rel_addr20__:
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
    case Codasip::i_li_aalias__reg0__imm32_lui_addi__:
    case Codasip::i_li_aalias__reg0_alias__imm32_lui_addi__:
    case Codasip::i_li_aalias__regs__imm32_lui_addi__:
    case Codasip::i_call_alias__rel_addr32_call_tail_simple__:
    case Codasip::i_tail_alias__rel_addr32_call_tail_simple__:
      return true;
    default:
      return false;
    } }
};

} // namespace

static MCInstrAnalysis *createCodasipMCInstrAnalysis(const MCInstrInfo *Info) {
  return new CodasipMCInstrAnalysis(Info);
}

#endif //! NO_COMPILER

static MCInstPrinter *createCodasipMCInstPrinter(const Triple &,
                                                 unsigned SyntaxVariant,
                                                 const MCAsmInfo &MAI,
                                                 const MCInstrInfo &MII,
                                                 const MCRegisterInfo &MRI) {
  return new CodasipInstPrinter(MAI, MII, MRI);
}

static MCStreamer *createELFStreamer(const Triple &T, MCContext &Ctx,
                                     std::unique_ptr<MCAsmBackend> &&TAB,
                                     std::unique_ptr<MCObjectWriter> &&OW,
                                     std::unique_ptr<MCCodeEmitter> &&Emitter,
                                     bool RelaxAll) {
  return createCodasipELFStreamer(T, Ctx, std::move(TAB), std::move(OW),
                                  std::move(Emitter), RelaxAll);
}



extern "C" void LLVMInitializeCodasipTargetMC() {
  // Register the MC asm info.
  TargetRegistry::RegisterMCAsmInfo(TheCodasipTarget, createCodasipMCAsmInfo);
  // Register the MC instruction info.
  TargetRegistry::RegisterMCInstrInfo(TheCodasipTarget,
                                      createCodasipMCInstrInfo);
  // Register the MC register info.
  TargetRegistry::RegisterMCRegInfo(TheCodasipTarget,
                                    createCodasipMCRegisterInfo);
  // Instruction printer
  TargetRegistry::RegisterMCInstPrinter(TheCodasipTarget,
                                        createCodasipMCInstPrinter);
  // Register the MC subtarget info.
  TargetRegistry::RegisterMCSubtargetInfo(TheCodasipTarget,
                                          createCodasipMCSubtargetInfo);
  TargetRegistry::RegisterMCAsmBackend(TheCodasipTarget,
                                       createCodasipAsmBackend);
  TargetRegistry::RegisterMCCodeEmitter(TheCodasipTarget,
                                        createCodasipMCCodeEmitter);
  TargetRegistry::RegisterELFStreamer(TheCodasipTarget, createELFStreamer);
  TargetRegistry::RegisterObjectTargetStreamer(
      TheCodasipTarget, createCodasipObjectTargetStreamer);
  // Register the asm target streamer.
  TargetRegistry::RegisterAsmTargetStreamer(TheCodasipTarget,
                                            createCodasipAsmTargetStreamer);
#if !NO_COMPILER
  // Register the MC instruction analyzer.
  TargetRegistry::RegisterMCInstrAnalysis(TheCodasipTarget,
                                          createCodasipMCInstrAnalysis);
#endif //! NO_COMPILER
}
