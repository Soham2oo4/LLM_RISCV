/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* Machine Code Emitter                                                       *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

uint64_t CodasipMCCodeEmitter::getBinaryCodeForInstr(const MCInst &MI,
    SmallVectorImpl<MCFixup> &Fixups,
    const MCSubtargetInfo &STI) const {
  static const uint64_t InstBits[] = {
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(0),
    UINT64_C(19),	// i_addi_alias__reg0__reg0__simm12_lo__
    UINT64_C(19),	// i_addi_alias__reg0__reg0__simm12_pcrel_lo__
    UINT64_C(19),	// i_addi_alias__reg0__reg0__simm12_simple__
    UINT64_C(19),	// i_addi_alias__reg0__reg0_alias__simm12_lo__
    UINT64_C(19),	// i_addi_alias__reg0__reg0_alias__simm12_pcrel_lo__
    UINT64_C(19),	// i_addi_alias__reg0__reg0_alias__simm12_simple__
    UINT64_C(19),	// i_addi_alias__reg0__regs__simm12_lo__
    UINT64_C(19),	// i_addi_alias__reg0__regs__simm12_pcrel_lo__
    UINT64_C(19),	// i_addi_alias__reg0__regs__simm12_simple__
    UINT64_C(19),	// i_addi_alias__reg0_alias__reg0__simm12_lo__
    UINT64_C(19),	// i_addi_alias__reg0_alias__reg0__simm12_pcrel_lo__
    UINT64_C(19),	// i_addi_alias__reg0_alias__reg0__simm12_simple__
    UINT64_C(19),	// i_addi_alias__reg0_alias__reg0_alias__simm12_lo__
    UINT64_C(19),	// i_addi_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__
    UINT64_C(19),	// i_addi_alias__reg0_alias__reg0_alias__simm12_simple__
    UINT64_C(19),	// i_addi_alias__reg0_alias__regs__simm12_lo__
    UINT64_C(19),	// i_addi_alias__reg0_alias__regs__simm12_pcrel_lo__
    UINT64_C(19),	// i_addi_alias__reg0_alias__regs__simm12_simple__
    UINT64_C(19),	// i_addi_alias__regs__reg0__simm12_lo__
    UINT64_C(19),	// i_addi_alias__regs__reg0__simm12_pcrel_lo__
    UINT64_C(19),	// i_addi_alias__regs__reg0__simm12_simple__
    UINT64_C(19),	// i_addi_alias__regs__reg0_alias__simm12_lo__
    UINT64_C(19),	// i_addi_alias__regs__reg0_alias__simm12_pcrel_lo__
    UINT64_C(19),	// i_addi_alias__regs__reg0_alias__simm12_simple__
    UINT64_C(19),	// i_addi_alias__regs__regs__simm12_lo__
    UINT64_C(19),	// i_addi_alias__regs__regs__simm12_pcrel_lo__
    UINT64_C(19),	// i_addi_alias__regs__regs__simm12_simple__
    UINT64_C(28691),	// i_andi_alias__reg0__reg0__simm12_lo__
    UINT64_C(28691),	// i_andi_alias__reg0__reg0__simm12_pcrel_lo__
    UINT64_C(28691),	// i_andi_alias__reg0__reg0__simm12_simple__
    UINT64_C(28691),	// i_andi_alias__reg0__reg0_alias__simm12_lo__
    UINT64_C(28691),	// i_andi_alias__reg0__reg0_alias__simm12_pcrel_lo__
    UINT64_C(28691),	// i_andi_alias__reg0__reg0_alias__simm12_simple__
    UINT64_C(28691),	// i_andi_alias__reg0__regs__simm12_lo__
    UINT64_C(28691),	// i_andi_alias__reg0__regs__simm12_pcrel_lo__
    UINT64_C(28691),	// i_andi_alias__reg0__regs__simm12_simple__
    UINT64_C(28691),	// i_andi_alias__reg0_alias__reg0__simm12_lo__
    UINT64_C(28691),	// i_andi_alias__reg0_alias__reg0__simm12_pcrel_lo__
    UINT64_C(28691),	// i_andi_alias__reg0_alias__reg0__simm12_simple__
    UINT64_C(28691),	// i_andi_alias__reg0_alias__reg0_alias__simm12_lo__
    UINT64_C(28691),	// i_andi_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__
    UINT64_C(28691),	// i_andi_alias__reg0_alias__reg0_alias__simm12_simple__
    UINT64_C(28691),	// i_andi_alias__reg0_alias__regs__simm12_lo__
    UINT64_C(28691),	// i_andi_alias__reg0_alias__regs__simm12_pcrel_lo__
    UINT64_C(28691),	// i_andi_alias__reg0_alias__regs__simm12_simple__
    UINT64_C(28691),	// i_andi_alias__regs__reg0__simm12_lo__
    UINT64_C(28691),	// i_andi_alias__regs__reg0__simm12_pcrel_lo__
    UINT64_C(28691),	// i_andi_alias__regs__reg0__simm12_simple__
    UINT64_C(28691),	// i_andi_alias__regs__reg0_alias__simm12_lo__
    UINT64_C(28691),	// i_andi_alias__regs__reg0_alias__simm12_pcrel_lo__
    UINT64_C(28691),	// i_andi_alias__regs__reg0_alias__simm12_simple__
    UINT64_C(28691),	// i_andi_alias__regs__regs__simm12_lo__
    UINT64_C(28691),	// i_andi_alias__regs__regs__simm12_pcrel_lo__
    UINT64_C(28691),	// i_andi_alias__regs__regs__simm12_simple__
    UINT64_C(23),	// i_auipc__opc_auipc__reg0__imm20_s12__
    UINT64_C(23),	// i_auipc__opc_auipc__reg0_alias__imm20_s12__
    UINT64_C(23),	// i_auipc__opc_auipc__regs__imm20_s12__
    UINT64_C(23),	// i_auipc_hi__opc_auipc__reg0__imm20_hi__
    UINT64_C(23),	// i_auipc_hi__opc_auipc__reg0__imm20_pcrel_hi__
    UINT64_C(23),	// i_auipc_hi__opc_auipc__reg0_alias__imm20_hi__
    UINT64_C(23),	// i_auipc_hi__opc_auipc__reg0_alias__imm20_pcrel_hi__
    UINT64_C(23),	// i_auipc_hi__opc_auipc__regs__imm20_hi__
    UINT64_C(23),	// i_auipc_hi__opc_auipc__regs__imm20_pcrel_hi__
    UINT64_C(99),	// i_beqz_alias__reg0__rel_addr12__
    UINT64_C(99),	// i_beqz_alias__reg0_alias__rel_addr12__
    UINT64_C(99),	// i_beqz_alias__regs__rel_addr12__
    UINT64_C(20579),	// i_bgez_alias__reg0__rel_addr12__
    UINT64_C(20579),	// i_bgez_alias__reg0_alias__rel_addr12__
    UINT64_C(20579),	// i_bgez_alias__regs__rel_addr12__
    UINT64_C(16483),	// i_bgt_alias__reg0__reg0__rel_addr12__
    UINT64_C(16483),	// i_bgt_alias__reg0__reg0_alias__rel_addr12__
    UINT64_C(16483),	// i_bgt_alias__reg0__regs__rel_addr12__
    UINT64_C(16483),	// i_bgt_alias__reg0_alias__reg0__rel_addr12__
    UINT64_C(16483),	// i_bgt_alias__reg0_alias__reg0_alias__rel_addr12__
    UINT64_C(16483),	// i_bgt_alias__reg0_alias__regs__rel_addr12__
    UINT64_C(16483),	// i_bgt_alias__regs__reg0__rel_addr12__
    UINT64_C(16483),	// i_bgt_alias__regs__reg0_alias__rel_addr12__
    UINT64_C(16483),	// i_bgt_alias__regs__regs__rel_addr12__
    UINT64_C(24675),	// i_bgtu_alias__reg0__reg0__rel_addr12__
    UINT64_C(24675),	// i_bgtu_alias__reg0__reg0_alias__rel_addr12__
    UINT64_C(24675),	// i_bgtu_alias__reg0__regs__rel_addr12__
    UINT64_C(24675),	// i_bgtu_alias__reg0_alias__reg0__rel_addr12__
    UINT64_C(24675),	// i_bgtu_alias__reg0_alias__reg0_alias__rel_addr12__
    UINT64_C(24675),	// i_bgtu_alias__reg0_alias__regs__rel_addr12__
    UINT64_C(24675),	// i_bgtu_alias__regs__reg0__rel_addr12__
    UINT64_C(24675),	// i_bgtu_alias__regs__reg0_alias__rel_addr12__
    UINT64_C(24675),	// i_bgtu_alias__regs__regs__rel_addr12__
    UINT64_C(16483),	// i_bgtz_alias__reg0__rel_addr12__
    UINT64_C(16483),	// i_bgtz_alias__reg0_alias__rel_addr12__
    UINT64_C(16483),	// i_bgtz_alias__regs__rel_addr12__
    UINT64_C(20579),	// i_ble_alias__reg0__reg0__rel_addr12__
    UINT64_C(20579),	// i_ble_alias__reg0__reg0_alias__rel_addr12__
    UINT64_C(20579),	// i_ble_alias__reg0__regs__rel_addr12__
    UINT64_C(20579),	// i_ble_alias__reg0_alias__reg0__rel_addr12__
    UINT64_C(20579),	// i_ble_alias__reg0_alias__reg0_alias__rel_addr12__
    UINT64_C(20579),	// i_ble_alias__reg0_alias__regs__rel_addr12__
    UINT64_C(20579),	// i_ble_alias__regs__reg0__rel_addr12__
    UINT64_C(20579),	// i_ble_alias__regs__reg0_alias__rel_addr12__
    UINT64_C(20579),	// i_ble_alias__regs__regs__rel_addr12__
    UINT64_C(28771),	// i_bleu_alias__reg0__reg0__rel_addr12__
    UINT64_C(28771),	// i_bleu_alias__reg0__reg0_alias__rel_addr12__
    UINT64_C(28771),	// i_bleu_alias__reg0__regs__rel_addr12__
    UINT64_C(28771),	// i_bleu_alias__reg0_alias__reg0__rel_addr12__
    UINT64_C(28771),	// i_bleu_alias__reg0_alias__reg0_alias__rel_addr12__
    UINT64_C(28771),	// i_bleu_alias__reg0_alias__regs__rel_addr12__
    UINT64_C(28771),	// i_bleu_alias__regs__reg0__rel_addr12__
    UINT64_C(28771),	// i_bleu_alias__regs__reg0_alias__rel_addr12__
    UINT64_C(28771),	// i_bleu_alias__regs__regs__rel_addr12__
    UINT64_C(20579),	// i_blez_alias__reg0__rel_addr12__
    UINT64_C(20579),	// i_blez_alias__reg0_alias__rel_addr12__
    UINT64_C(20579),	// i_blez_alias__regs__rel_addr12__
    UINT64_C(16483),	// i_bltz_alias__reg0__rel_addr12__
    UINT64_C(16483),	// i_bltz_alias__reg0_alias__rel_addr12__
    UINT64_C(16483),	// i_bltz_alias__regs__rel_addr12__
    UINT64_C(4195),	// i_bnez_alias__reg0__rel_addr12__
    UINT64_C(4195),	// i_bnez_alias__reg0_alias__rel_addr12__
    UINT64_C(4195),	// i_bnez_alias__regs__rel_addr12__
    UINT64_C(141729625800855),	// i_call_alias__rel_addr32_call_tail_simple__
    UINT64_C(231),	// i_call_reg_alias__reg0__
    UINT64_C(231),	// i_call_reg_alias__reg0_alias__
    UINT64_C(231),	// i_call_reg_alias__regs__
    UINT64_C(239),	// i_call_rel_alias__rel_addr20__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_lo__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_pcrel_lo__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_simple__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_lo__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_pcrel_lo__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_simple__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__reg0__regs__simm12_lo__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__reg0__regs__simm12_pcrel_lo__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__reg0__regs__simm12_simple__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_lo__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_pcrel_lo__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_simple__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_lo__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_pcrel_lo__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_simple__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_lo__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_pcrel_lo__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_simple__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__regs__reg0__simm12_lo__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__regs__reg0__simm12_pcrel_lo__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_lo__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_pcrel_lo__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_simple__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__regs__regs__simm12_lo__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__regs__regs__simm12_pcrel_lo__
    UINT64_C(19),	// i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_lo__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_pcrel_lo__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_simple__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_lo__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_pcrel_lo__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_simple__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__reg0__regs__simm12_lo__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__reg0__regs__simm12_pcrel_lo__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__reg0__regs__simm12_simple__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_lo__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_pcrel_lo__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_simple__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_lo__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_pcrel_lo__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_simple__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_lo__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_pcrel_lo__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_simple__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__regs__reg0__simm12_lo__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__regs__reg0__simm12_pcrel_lo__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__regs__reg0__simm12_simple__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_lo__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_pcrel_lo__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_simple__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__regs__regs__simm12_lo__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__regs__regs__simm12_pcrel_lo__
    UINT64_C(28691),	// i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_lo__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_pcrel_lo__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_simple__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_lo__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_pcrel_lo__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_simple__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__reg0__regs__simm12_lo__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__reg0__regs__simm12_pcrel_lo__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__reg0__regs__simm12_simple__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_lo__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_pcrel_lo__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_simple__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_lo__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_pcrel_lo__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_simple__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_lo__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_pcrel_lo__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_simple__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__regs__reg0__simm12_lo__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__regs__reg0__simm12_pcrel_lo__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_lo__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_pcrel_lo__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_simple__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__regs__regs__simm12_lo__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__regs__regs__simm12_pcrel_lo__
    UINT64_C(24595),	// i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_lo__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_pcrel_lo__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_simple__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_lo__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_pcrel_lo__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_simple__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__reg0__regs__simm12_lo__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__reg0__regs__simm12_pcrel_lo__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__reg0__regs__simm12_simple__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_lo__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_pcrel_lo__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_simple__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_lo__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_pcrel_lo__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_simple__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_lo__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_pcrel_lo__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_simple__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__regs__reg0__simm12_lo__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__regs__reg0__simm12_pcrel_lo__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_lo__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_pcrel_lo__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_simple__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__regs__regs__simm12_lo__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__regs__regs__simm12_pcrel_lo__
    UINT64_C(8211),	// i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_lo__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_pcrel_lo__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_simple__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_lo__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_pcrel_lo__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_simple__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_lo__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_pcrel_lo__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_simple__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_lo__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_pcrel_lo__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_simple__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_lo__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_pcrel_lo__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_simple__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_lo__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_pcrel_lo__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_simple__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_lo__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_pcrel_lo__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_lo__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_pcrel_lo__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_simple__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_lo__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_pcrel_lo__
    UINT64_C(12307),	// i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_lo__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_pcrel_lo__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_simple__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_lo__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_pcrel_lo__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_simple__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__reg0__regs__simm12_lo__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__reg0__regs__simm12_pcrel_lo__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__reg0__regs__simm12_simple__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_lo__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_pcrel_lo__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_simple__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_lo__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_pcrel_lo__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_simple__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_lo__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_pcrel_lo__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_simple__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__regs__reg0__simm12_lo__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__regs__reg0__simm12_pcrel_lo__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_lo__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_pcrel_lo__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_simple__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__regs__regs__simm12_lo__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__regs__regs__simm12_pcrel_lo__
    UINT64_C(16403),	// i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__
    UINT64_C(4115),	// i_comp_2reg_imm_shift__opc_slli__reg0__reg0__shift_imm__
    UINT64_C(4115),	// i_comp_2reg_imm_shift__opc_slli__reg0__reg0_alias__shift_imm__
    UINT64_C(4115),	// i_comp_2reg_imm_shift__opc_slli__reg0__regs__shift_imm__
    UINT64_C(4115),	// i_comp_2reg_imm_shift__opc_slli__reg0_alias__reg0__shift_imm__
    UINT64_C(4115),	// i_comp_2reg_imm_shift__opc_slli__reg0_alias__reg0_alias__shift_imm__
    UINT64_C(4115),	// i_comp_2reg_imm_shift__opc_slli__reg0_alias__regs__shift_imm__
    UINT64_C(4115),	// i_comp_2reg_imm_shift__opc_slli__regs__reg0__shift_imm__
    UINT64_C(4115),	// i_comp_2reg_imm_shift__opc_slli__regs__reg0_alias__shift_imm__
    UINT64_C(4115),	// i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__
    UINT64_C(1073762323),	// i_comp_2reg_imm_shift__opc_srai__reg0__reg0__shift_imm__
    UINT64_C(1073762323),	// i_comp_2reg_imm_shift__opc_srai__reg0__reg0_alias__shift_imm__
    UINT64_C(1073762323),	// i_comp_2reg_imm_shift__opc_srai__reg0__regs__shift_imm__
    UINT64_C(1073762323),	// i_comp_2reg_imm_shift__opc_srai__reg0_alias__reg0__shift_imm__
    UINT64_C(1073762323),	// i_comp_2reg_imm_shift__opc_srai__reg0_alias__reg0_alias__shift_imm__
    UINT64_C(1073762323),	// i_comp_2reg_imm_shift__opc_srai__reg0_alias__regs__shift_imm__
    UINT64_C(1073762323),	// i_comp_2reg_imm_shift__opc_srai__regs__reg0__shift_imm__
    UINT64_C(1073762323),	// i_comp_2reg_imm_shift__opc_srai__regs__reg0_alias__shift_imm__
    UINT64_C(1073762323),	// i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__
    UINT64_C(20499),	// i_comp_2reg_imm_shift__opc_srli__reg0__reg0__shift_imm__
    UINT64_C(20499),	// i_comp_2reg_imm_shift__opc_srli__reg0__reg0_alias__shift_imm__
    UINT64_C(20499),	// i_comp_2reg_imm_shift__opc_srli__reg0__regs__shift_imm__
    UINT64_C(20499),	// i_comp_2reg_imm_shift__opc_srli__reg0_alias__reg0__shift_imm__
    UINT64_C(20499),	// i_comp_2reg_imm_shift__opc_srli__reg0_alias__reg0_alias__shift_imm__
    UINT64_C(20499),	// i_comp_2reg_imm_shift__opc_srli__reg0_alias__regs__shift_imm__
    UINT64_C(20499),	// i_comp_2reg_imm_shift__opc_srli__regs__reg0__shift_imm__
    UINT64_C(20499),	// i_comp_2reg_imm_shift__opc_srli__regs__reg0_alias__shift_imm__
    UINT64_C(20499),	// i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__
    UINT64_C(4115),	// i_comp_2reg_imm_shift_slli_alias__reg0__reg0__shift_imm__
    UINT64_C(4115),	// i_comp_2reg_imm_shift_slli_alias__reg0__reg0_alias__shift_imm__
    UINT64_C(4115),	// i_comp_2reg_imm_shift_slli_alias__reg0__regs__shift_imm__
    UINT64_C(4115),	// i_comp_2reg_imm_shift_slli_alias__reg0_alias__reg0__shift_imm__
    UINT64_C(4115),	// i_comp_2reg_imm_shift_slli_alias__reg0_alias__reg0_alias__shift_imm__
    UINT64_C(4115),	// i_comp_2reg_imm_shift_slli_alias__reg0_alias__regs__shift_imm__
    UINT64_C(4115),	// i_comp_2reg_imm_shift_slli_alias__regs__reg0__shift_imm__
    UINT64_C(4115),	// i_comp_2reg_imm_shift_slli_alias__regs__reg0_alias__shift_imm__
    UINT64_C(4115),	// i_comp_2reg_imm_shift_slli_alias__regs__regs__shift_imm__
    UINT64_C(1073762323),	// i_comp_2reg_imm_shift_srai_alias__reg0__reg0__shift_imm__
    UINT64_C(1073762323),	// i_comp_2reg_imm_shift_srai_alias__reg0__reg0_alias__shift_imm__
    UINT64_C(1073762323),	// i_comp_2reg_imm_shift_srai_alias__reg0__regs__shift_imm__
    UINT64_C(1073762323),	// i_comp_2reg_imm_shift_srai_alias__reg0_alias__reg0__shift_imm__
    UINT64_C(1073762323),	// i_comp_2reg_imm_shift_srai_alias__reg0_alias__reg0_alias__shift_imm__
    UINT64_C(1073762323),	// i_comp_2reg_imm_shift_srai_alias__reg0_alias__regs__shift_imm__
    UINT64_C(1073762323),	// i_comp_2reg_imm_shift_srai_alias__regs__reg0__shift_imm__
    UINT64_C(1073762323),	// i_comp_2reg_imm_shift_srai_alias__regs__reg0_alias__shift_imm__
    UINT64_C(1073762323),	// i_comp_2reg_imm_shift_srai_alias__regs__regs__shift_imm__
    UINT64_C(20499),	// i_comp_2reg_imm_shift_srli_alias__reg0__reg0__shift_imm__
    UINT64_C(20499),	// i_comp_2reg_imm_shift_srli_alias__reg0__reg0_alias__shift_imm__
    UINT64_C(20499),	// i_comp_2reg_imm_shift_srli_alias__reg0__regs__shift_imm__
    UINT64_C(20499),	// i_comp_2reg_imm_shift_srli_alias__reg0_alias__reg0__shift_imm__
    UINT64_C(20499),	// i_comp_2reg_imm_shift_srli_alias__reg0_alias__reg0_alias__shift_imm__
    UINT64_C(20499),	// i_comp_2reg_imm_shift_srli_alias__reg0_alias__regs__shift_imm__
    UINT64_C(20499),	// i_comp_2reg_imm_shift_srli_alias__regs__reg0__shift_imm__
    UINT64_C(20499),	// i_comp_2reg_imm_shift_srli_alias__regs__reg0_alias__shift_imm__
    UINT64_C(20499),	// i_comp_2reg_imm_shift_srli_alias__regs__regs__shift_imm__
    UINT64_C(51),	// i_comp_3reg__opc_add__reg0__reg0__reg0__
    UINT64_C(51),	// i_comp_3reg__opc_add__reg0__reg0__reg0_alias__
    UINT64_C(51),	// i_comp_3reg__opc_add__reg0__reg0__regs__
    UINT64_C(51),	// i_comp_3reg__opc_add__reg0__reg0_alias__reg0__
    UINT64_C(51),	// i_comp_3reg__opc_add__reg0__reg0_alias__reg0_alias__
    UINT64_C(51),	// i_comp_3reg__opc_add__reg0__reg0_alias__regs__
    UINT64_C(51),	// i_comp_3reg__opc_add__reg0__regs__reg0__
    UINT64_C(51),	// i_comp_3reg__opc_add__reg0__regs__reg0_alias__
    UINT64_C(51),	// i_comp_3reg__opc_add__reg0__regs__regs__
    UINT64_C(51),	// i_comp_3reg__opc_add__reg0_alias__reg0__reg0__
    UINT64_C(51),	// i_comp_3reg__opc_add__reg0_alias__reg0__reg0_alias__
    UINT64_C(51),	// i_comp_3reg__opc_add__reg0_alias__reg0__regs__
    UINT64_C(51),	// i_comp_3reg__opc_add__reg0_alias__reg0_alias__reg0__
    UINT64_C(51),	// i_comp_3reg__opc_add__reg0_alias__reg0_alias__reg0_alias__
    UINT64_C(51),	// i_comp_3reg__opc_add__reg0_alias__reg0_alias__regs__
    UINT64_C(51),	// i_comp_3reg__opc_add__reg0_alias__regs__reg0__
    UINT64_C(51),	// i_comp_3reg__opc_add__reg0_alias__regs__reg0_alias__
    UINT64_C(51),	// i_comp_3reg__opc_add__reg0_alias__regs__regs__
    UINT64_C(51),	// i_comp_3reg__opc_add__regs__reg0__reg0__
    UINT64_C(51),	// i_comp_3reg__opc_add__regs__reg0__reg0_alias__
    UINT64_C(51),	// i_comp_3reg__opc_add__regs__reg0__regs__
    UINT64_C(51),	// i_comp_3reg__opc_add__regs__reg0_alias__reg0__
    UINT64_C(51),	// i_comp_3reg__opc_add__regs__reg0_alias__reg0_alias__
    UINT64_C(51),	// i_comp_3reg__opc_add__regs__reg0_alias__regs__
    UINT64_C(51),	// i_comp_3reg__opc_add__regs__regs__reg0__
    UINT64_C(51),	// i_comp_3reg__opc_add__regs__regs__reg0_alias__
    UINT64_C(51),	// i_comp_3reg__opc_add__regs__regs__regs__
    UINT64_C(28723),	// i_comp_3reg__opc_and__reg0__reg0__reg0__
    UINT64_C(28723),	// i_comp_3reg__opc_and__reg0__reg0__reg0_alias__
    UINT64_C(28723),	// i_comp_3reg__opc_and__reg0__reg0__regs__
    UINT64_C(28723),	// i_comp_3reg__opc_and__reg0__reg0_alias__reg0__
    UINT64_C(28723),	// i_comp_3reg__opc_and__reg0__reg0_alias__reg0_alias__
    UINT64_C(28723),	// i_comp_3reg__opc_and__reg0__reg0_alias__regs__
    UINT64_C(28723),	// i_comp_3reg__opc_and__reg0__regs__reg0__
    UINT64_C(28723),	// i_comp_3reg__opc_and__reg0__regs__reg0_alias__
    UINT64_C(28723),	// i_comp_3reg__opc_and__reg0__regs__regs__
    UINT64_C(28723),	// i_comp_3reg__opc_and__reg0_alias__reg0__reg0__
    UINT64_C(28723),	// i_comp_3reg__opc_and__reg0_alias__reg0__reg0_alias__
    UINT64_C(28723),	// i_comp_3reg__opc_and__reg0_alias__reg0__regs__
    UINT64_C(28723),	// i_comp_3reg__opc_and__reg0_alias__reg0_alias__reg0__
    UINT64_C(28723),	// i_comp_3reg__opc_and__reg0_alias__reg0_alias__reg0_alias__
    UINT64_C(28723),	// i_comp_3reg__opc_and__reg0_alias__reg0_alias__regs__
    UINT64_C(28723),	// i_comp_3reg__opc_and__reg0_alias__regs__reg0__
    UINT64_C(28723),	// i_comp_3reg__opc_and__reg0_alias__regs__reg0_alias__
    UINT64_C(28723),	// i_comp_3reg__opc_and__reg0_alias__regs__regs__
    UINT64_C(28723),	// i_comp_3reg__opc_and__regs__reg0__reg0__
    UINT64_C(28723),	// i_comp_3reg__opc_and__regs__reg0__reg0_alias__
    UINT64_C(28723),	// i_comp_3reg__opc_and__regs__reg0__regs__
    UINT64_C(28723),	// i_comp_3reg__opc_and__regs__reg0_alias__reg0__
    UINT64_C(28723),	// i_comp_3reg__opc_and__regs__reg0_alias__reg0_alias__
    UINT64_C(28723),	// i_comp_3reg__opc_and__regs__reg0_alias__regs__
    UINT64_C(28723),	// i_comp_3reg__opc_and__regs__regs__reg0__
    UINT64_C(28723),	// i_comp_3reg__opc_and__regs__regs__reg0_alias__
    UINT64_C(28723),	// i_comp_3reg__opc_and__regs__regs__regs__
    UINT64_C(24627),	// i_comp_3reg__opc_or__reg0__reg0__reg0__
    UINT64_C(24627),	// i_comp_3reg__opc_or__reg0__reg0__reg0_alias__
    UINT64_C(24627),	// i_comp_3reg__opc_or__reg0__reg0__regs__
    UINT64_C(24627),	// i_comp_3reg__opc_or__reg0__reg0_alias__reg0__
    UINT64_C(24627),	// i_comp_3reg__opc_or__reg0__reg0_alias__reg0_alias__
    UINT64_C(24627),	// i_comp_3reg__opc_or__reg0__reg0_alias__regs__
    UINT64_C(24627),	// i_comp_3reg__opc_or__reg0__regs__reg0__
    UINT64_C(24627),	// i_comp_3reg__opc_or__reg0__regs__reg0_alias__
    UINT64_C(24627),	// i_comp_3reg__opc_or__reg0__regs__regs__
    UINT64_C(24627),	// i_comp_3reg__opc_or__reg0_alias__reg0__reg0__
    UINT64_C(24627),	// i_comp_3reg__opc_or__reg0_alias__reg0__reg0_alias__
    UINT64_C(24627),	// i_comp_3reg__opc_or__reg0_alias__reg0__regs__
    UINT64_C(24627),	// i_comp_3reg__opc_or__reg0_alias__reg0_alias__reg0__
    UINT64_C(24627),	// i_comp_3reg__opc_or__reg0_alias__reg0_alias__reg0_alias__
    UINT64_C(24627),	// i_comp_3reg__opc_or__reg0_alias__reg0_alias__regs__
    UINT64_C(24627),	// i_comp_3reg__opc_or__reg0_alias__regs__reg0__
    UINT64_C(24627),	// i_comp_3reg__opc_or__reg0_alias__regs__reg0_alias__
    UINT64_C(24627),	// i_comp_3reg__opc_or__reg0_alias__regs__regs__
    UINT64_C(24627),	// i_comp_3reg__opc_or__regs__reg0__reg0__
    UINT64_C(24627),	// i_comp_3reg__opc_or__regs__reg0__reg0_alias__
    UINT64_C(24627),	// i_comp_3reg__opc_or__regs__reg0__regs__
    UINT64_C(24627),	// i_comp_3reg__opc_or__regs__reg0_alias__reg0__
    UINT64_C(24627),	// i_comp_3reg__opc_or__regs__reg0_alias__reg0_alias__
    UINT64_C(24627),	// i_comp_3reg__opc_or__regs__reg0_alias__regs__
    UINT64_C(24627),	// i_comp_3reg__opc_or__regs__regs__reg0__
    UINT64_C(24627),	// i_comp_3reg__opc_or__regs__regs__reg0_alias__
    UINT64_C(24627),	// i_comp_3reg__opc_or__regs__regs__regs__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__reg0__reg0__reg0__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__reg0__reg0__reg0_alias__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__reg0__reg0__regs__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__reg0__reg0_alias__reg0__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__reg0__reg0_alias__reg0_alias__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__reg0__reg0_alias__regs__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__reg0__regs__reg0__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__reg0__regs__reg0_alias__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__reg0__regs__regs__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__reg0_alias__reg0__reg0__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__reg0_alias__reg0__reg0_alias__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__reg0_alias__reg0__regs__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__reg0_alias__reg0_alias__reg0__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__reg0_alias__reg0_alias__reg0_alias__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__reg0_alias__reg0_alias__regs__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__reg0_alias__regs__reg0__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__reg0_alias__regs__reg0_alias__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__reg0_alias__regs__regs__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__regs__reg0__reg0__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__regs__reg0__reg0_alias__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__regs__reg0__regs__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__regs__reg0_alias__reg0__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__regs__reg0_alias__reg0_alias__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__regs__reg0_alias__regs__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__regs__regs__reg0__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__regs__regs__reg0_alias__
    UINT64_C(4147),	// i_comp_3reg__opc_sll__regs__regs__regs__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__reg0__reg0__reg0__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__reg0__reg0__reg0_alias__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__reg0__reg0__regs__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__reg0__reg0_alias__reg0__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__reg0__reg0_alias__reg0_alias__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__reg0__reg0_alias__regs__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__reg0__regs__reg0__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__reg0__regs__reg0_alias__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__reg0__regs__regs__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__reg0_alias__reg0__reg0__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__reg0_alias__reg0__reg0_alias__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__reg0_alias__reg0__regs__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__reg0_alias__reg0_alias__reg0__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__reg0_alias__reg0_alias__reg0_alias__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__reg0_alias__reg0_alias__regs__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__reg0_alias__regs__reg0__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__reg0_alias__regs__reg0_alias__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__reg0_alias__regs__regs__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__regs__reg0__reg0__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__regs__reg0__reg0_alias__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__regs__reg0__regs__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__regs__reg0_alias__reg0__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__regs__reg0_alias__reg0_alias__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__regs__reg0_alias__regs__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__regs__regs__reg0__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__regs__regs__reg0_alias__
    UINT64_C(8243),	// i_comp_3reg__opc_slt__regs__regs__regs__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__reg0__reg0__reg0__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__reg0__reg0__reg0_alias__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__reg0__reg0__regs__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__reg0__reg0_alias__reg0__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__reg0__reg0_alias__reg0_alias__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__reg0__reg0_alias__regs__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__reg0__regs__reg0__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__reg0__regs__reg0_alias__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__reg0__regs__regs__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__reg0_alias__reg0__reg0__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__reg0_alias__reg0__reg0_alias__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__reg0_alias__reg0__regs__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__reg0_alias__reg0_alias__reg0__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__reg0_alias__reg0_alias__reg0_alias__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__reg0_alias__reg0_alias__regs__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__reg0_alias__regs__reg0__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__reg0_alias__regs__reg0_alias__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__reg0_alias__regs__regs__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__regs__reg0__reg0__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__regs__reg0__reg0_alias__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__regs__reg0__regs__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__regs__reg0_alias__reg0__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__regs__reg0_alias__reg0_alias__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__regs__reg0_alias__regs__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__regs__regs__reg0__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__regs__regs__reg0_alias__
    UINT64_C(12339),	// i_comp_3reg__opc_sltu__regs__regs__regs__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__reg0__reg0__reg0__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__reg0__reg0__reg0_alias__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__reg0__reg0__regs__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__reg0__reg0_alias__reg0__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__reg0__reg0_alias__reg0_alias__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__reg0__reg0_alias__regs__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__reg0__regs__reg0__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__reg0__regs__reg0_alias__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__reg0__regs__regs__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__reg0_alias__reg0__reg0__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__reg0_alias__reg0__reg0_alias__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__reg0_alias__reg0__regs__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__reg0_alias__reg0_alias__reg0__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__reg0_alias__reg0_alias__reg0_alias__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__reg0_alias__reg0_alias__regs__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__reg0_alias__regs__reg0__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__reg0_alias__regs__reg0_alias__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__reg0_alias__regs__regs__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__regs__reg0__reg0__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__regs__reg0__reg0_alias__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__regs__reg0__regs__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__regs__reg0_alias__reg0__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__regs__reg0_alias__reg0_alias__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__regs__reg0_alias__regs__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__regs__regs__reg0__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__regs__regs__reg0_alias__
    UINT64_C(1073762355),	// i_comp_3reg__opc_sra__regs__regs__regs__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__reg0__reg0__reg0__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__reg0__reg0__reg0_alias__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__reg0__reg0__regs__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__reg0__reg0_alias__reg0__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__reg0__reg0_alias__reg0_alias__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__reg0__reg0_alias__regs__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__reg0__regs__reg0__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__reg0__regs__reg0_alias__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__reg0__regs__regs__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__reg0_alias__reg0__reg0__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__reg0_alias__reg0__reg0_alias__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__reg0_alias__reg0__regs__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__reg0_alias__reg0_alias__reg0__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__reg0_alias__reg0_alias__reg0_alias__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__reg0_alias__reg0_alias__regs__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__reg0_alias__regs__reg0__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__reg0_alias__regs__reg0_alias__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__reg0_alias__regs__regs__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__regs__reg0__reg0__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__regs__reg0__reg0_alias__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__regs__reg0__regs__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__regs__reg0_alias__reg0__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__regs__reg0_alias__reg0_alias__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__regs__reg0_alias__regs__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__regs__regs__reg0__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__regs__regs__reg0_alias__
    UINT64_C(20531),	// i_comp_3reg__opc_srl__regs__regs__regs__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__reg0__reg0__reg0__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__reg0__reg0__reg0_alias__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__reg0__reg0__regs__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__reg0__reg0_alias__reg0__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__reg0__reg0_alias__reg0_alias__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__reg0__reg0_alias__regs__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__reg0__regs__reg0__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__reg0__regs__reg0_alias__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__reg0__regs__regs__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__reg0_alias__reg0__reg0__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__reg0_alias__reg0__reg0_alias__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__reg0_alias__reg0__regs__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__reg0_alias__reg0_alias__reg0__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__reg0_alias__reg0_alias__reg0_alias__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__reg0_alias__reg0_alias__regs__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__reg0_alias__regs__reg0__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__reg0_alias__regs__reg0_alias__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__reg0_alias__regs__regs__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__regs__reg0__reg0__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__regs__reg0__reg0_alias__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__regs__reg0__regs__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__regs__reg0_alias__reg0__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__regs__reg0_alias__reg0_alias__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__regs__reg0_alias__regs__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__regs__regs__reg0__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__regs__regs__reg0_alias__
    UINT64_C(1073741875),	// i_comp_3reg__opc_sub__regs__regs__regs__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__reg0__reg0__reg0__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__reg0__reg0__reg0_alias__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__reg0__reg0__regs__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__reg0__reg0_alias__reg0__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__reg0__reg0_alias__reg0_alias__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__reg0__reg0_alias__regs__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__reg0__regs__reg0__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__reg0__regs__reg0_alias__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__reg0__regs__regs__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__reg0_alias__reg0__reg0__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__reg0_alias__reg0__reg0_alias__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__reg0_alias__reg0__regs__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__reg0_alias__reg0_alias__reg0__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__reg0_alias__reg0_alias__reg0_alias__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__reg0_alias__reg0_alias__regs__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__reg0_alias__regs__reg0__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__reg0_alias__regs__reg0_alias__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__reg0_alias__regs__regs__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__regs__reg0__reg0__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__regs__reg0__reg0_alias__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__regs__reg0__regs__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__regs__reg0_alias__reg0__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__regs__reg0_alias__reg0_alias__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__regs__reg0_alias__regs__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__regs__regs__reg0__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__regs__regs__reg0_alias__
    UINT64_C(16435),	// i_comp_3reg__opc_xor__regs__regs__regs__
    UINT64_C(99),	// i_control_conditional__opc_beq__reg0__reg0__rel_addr12__
    UINT64_C(0),	// i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_
    UINT64_C(0),	// i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA
    UINT64_C(0),	// i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES
    UINT64_C(0),	// i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC
    UINT64_C(99),	// i_control_conditional__opc_beq__reg0__reg0_alias__rel_addr12__
    UINT64_C(99),	// i_control_conditional__opc_beq__reg0__regs__rel_addr12__
    UINT64_C(99),	// i_control_conditional__opc_beq__reg0_alias__reg0__rel_addr12__
    UINT64_C(99),	// i_control_conditional__opc_beq__reg0_alias__reg0_alias__rel_addr12__
    UINT64_C(99),	// i_control_conditional__opc_beq__reg0_alias__regs__rel_addr12__
    UINT64_C(99),	// i_control_conditional__opc_beq__regs__reg0__rel_addr12__
    UINT64_C(99),	// i_control_conditional__opc_beq__regs__reg0_alias__rel_addr12__
    UINT64_C(99),	// i_control_conditional__opc_beq__regs__regs__rel_addr12__
    UINT64_C(20579),	// i_control_conditional__opc_bge__reg0__reg0__rel_addr12__
    UINT64_C(0),	// i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_
    UINT64_C(0),	// i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA
    UINT64_C(0),	// i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES
    UINT64_C(0),	// i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC
    UINT64_C(20579),	// i_control_conditional__opc_bge__reg0__reg0_alias__rel_addr12__
    UINT64_C(20579),	// i_control_conditional__opc_bge__reg0__regs__rel_addr12__
    UINT64_C(20579),	// i_control_conditional__opc_bge__reg0_alias__reg0__rel_addr12__
    UINT64_C(20579),	// i_control_conditional__opc_bge__reg0_alias__reg0_alias__rel_addr12__
    UINT64_C(20579),	// i_control_conditional__opc_bge__reg0_alias__regs__rel_addr12__
    UINT64_C(20579),	// i_control_conditional__opc_bge__regs__reg0__rel_addr12__
    UINT64_C(20579),	// i_control_conditional__opc_bge__regs__reg0_alias__rel_addr12__
    UINT64_C(20579),	// i_control_conditional__opc_bge__regs__regs__rel_addr12__
    UINT64_C(28771),	// i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__
    UINT64_C(0),	// i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_
    UINT64_C(0),	// i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA
    UINT64_C(0),	// i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES
    UINT64_C(0),	// i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC
    UINT64_C(28771),	// i_control_conditional__opc_bgeu__reg0__reg0_alias__rel_addr12__
    UINT64_C(28771),	// i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__
    UINT64_C(28771),	// i_control_conditional__opc_bgeu__reg0_alias__reg0__rel_addr12__
    UINT64_C(28771),	// i_control_conditional__opc_bgeu__reg0_alias__reg0_alias__rel_addr12__
    UINT64_C(28771),	// i_control_conditional__opc_bgeu__reg0_alias__regs__rel_addr12__
    UINT64_C(28771),	// i_control_conditional__opc_bgeu__regs__reg0__rel_addr12__
    UINT64_C(28771),	// i_control_conditional__opc_bgeu__regs__reg0_alias__rel_addr12__
    UINT64_C(28771),	// i_control_conditional__opc_bgeu__regs__regs__rel_addr12__
    UINT64_C(16483),	// i_control_conditional__opc_blt__reg0__reg0__rel_addr12__
    UINT64_C(16483),	// i_control_conditional__opc_blt__reg0__reg0_alias__rel_addr12__
    UINT64_C(16483),	// i_control_conditional__opc_blt__reg0__regs__rel_addr12__
    UINT64_C(16483),	// i_control_conditional__opc_blt__reg0_alias__reg0__rel_addr12__
    UINT64_C(16483),	// i_control_conditional__opc_blt__reg0_alias__reg0_alias__rel_addr12__
    UINT64_C(16483),	// i_control_conditional__opc_blt__reg0_alias__regs__rel_addr12__
    UINT64_C(16483),	// i_control_conditional__opc_blt__regs__reg0__rel_addr12__
    UINT64_C(16483),	// i_control_conditional__opc_blt__regs__reg0_alias__rel_addr12__
    UINT64_C(16483),	// i_control_conditional__opc_blt__regs__regs__rel_addr12__
    UINT64_C(24675),	// i_control_conditional__opc_bltu__reg0__reg0__rel_addr12__
    UINT64_C(24675),	// i_control_conditional__opc_bltu__reg0__reg0_alias__rel_addr12__
    UINT64_C(24675),	// i_control_conditional__opc_bltu__reg0__regs__rel_addr12__
    UINT64_C(24675),	// i_control_conditional__opc_bltu__reg0_alias__reg0__rel_addr12__
    UINT64_C(24675),	// i_control_conditional__opc_bltu__reg0_alias__reg0_alias__rel_addr12__
    UINT64_C(24675),	// i_control_conditional__opc_bltu__reg0_alias__regs__rel_addr12__
    UINT64_C(24675),	// i_control_conditional__opc_bltu__regs__reg0__rel_addr12__
    UINT64_C(24675),	// i_control_conditional__opc_bltu__regs__reg0_alias__rel_addr12__
    UINT64_C(24675),	// i_control_conditional__opc_bltu__regs__regs__rel_addr12__
    UINT64_C(4195),	// i_control_conditional__opc_bne__reg0__reg0__rel_addr12__
    UINT64_C(4195),	// i_control_conditional__opc_bne__reg0__reg0_alias__rel_addr12__
    UINT64_C(4195),	// i_control_conditional__opc_bne__reg0__regs__rel_addr12__
    UINT64_C(4195),	// i_control_conditional__opc_bne__reg0_alias__reg0__rel_addr12__
    UINT64_C(4195),	// i_control_conditional__opc_bne__reg0_alias__reg0_alias__rel_addr12__
    UINT64_C(4195),	// i_control_conditional__opc_bne__reg0_alias__regs__rel_addr12__
    UINT64_C(4195),	// i_control_conditional__opc_bne__regs__reg0__rel_addr12__
    UINT64_C(4195),	// i_control_conditional__opc_bne__regs__reg0_alias__rel_addr12__
    UINT64_C(4195),	// i_control_conditional__opc_bne__regs__regs__rel_addr12__
    UINT64_C(28787),	// i_control_registers_imm__opc_csrrci__reg0__csr_imm__imm5__
    UINT64_C(28787),	// i_control_registers_imm__opc_csrrci__reg0__regs_csr__imm5__
    UINT64_C(28787),	// i_control_registers_imm__opc_csrrci__reg0_alias__csr_imm__imm5__
    UINT64_C(28787),	// i_control_registers_imm__opc_csrrci__reg0_alias__regs_csr__imm5__
    UINT64_C(28787),	// i_control_registers_imm__opc_csrrci__regs__csr_imm__imm5__
    UINT64_C(28787),	// i_control_registers_imm__opc_csrrci__regs__regs_csr__imm5__
    UINT64_C(24691),	// i_control_registers_imm__opc_csrrsi__reg0__csr_imm__imm5__
    UINT64_C(24691),	// i_control_registers_imm__opc_csrrsi__reg0__regs_csr__imm5__
    UINT64_C(24691),	// i_control_registers_imm__opc_csrrsi__reg0_alias__csr_imm__imm5__
    UINT64_C(24691),	// i_control_registers_imm__opc_csrrsi__reg0_alias__regs_csr__imm5__
    UINT64_C(24691),	// i_control_registers_imm__opc_csrrsi__regs__csr_imm__imm5__
    UINT64_C(24691),	// i_control_registers_imm__opc_csrrsi__regs__regs_csr__imm5__
    UINT64_C(20595),	// i_control_registers_imm__opc_csrrwi__reg0__csr_imm__imm5__
    UINT64_C(20595),	// i_control_registers_imm__opc_csrrwi__reg0__regs_csr__imm5__
    UINT64_C(20595),	// i_control_registers_imm__opc_csrrwi__reg0_alias__csr_imm__imm5__
    UINT64_C(20595),	// i_control_registers_imm__opc_csrrwi__reg0_alias__regs_csr__imm5__
    UINT64_C(20595),	// i_control_registers_imm__opc_csrrwi__regs__csr_imm__imm5__
    UINT64_C(20595),	// i_control_registers_imm__opc_csrrwi__regs__regs_csr__imm5__
    UINT64_C(12403),	// i_control_registers_reg__opc_csrrc__reg0__csr_imm__reg0__
    UINT64_C(12403),	// i_control_registers_reg__opc_csrrc__reg0__csr_imm__reg0_alias__
    UINT64_C(12403),	// i_control_registers_reg__opc_csrrc__reg0__csr_imm__regs__
    UINT64_C(12403),	// i_control_registers_reg__opc_csrrc__reg0__regs_csr__reg0__
    UINT64_C(12403),	// i_control_registers_reg__opc_csrrc__reg0__regs_csr__reg0_alias__
    UINT64_C(12403),	// i_control_registers_reg__opc_csrrc__reg0__regs_csr__regs__
    UINT64_C(12403),	// i_control_registers_reg__opc_csrrc__reg0_alias__csr_imm__reg0__
    UINT64_C(12403),	// i_control_registers_reg__opc_csrrc__reg0_alias__csr_imm__reg0_alias__
    UINT64_C(12403),	// i_control_registers_reg__opc_csrrc__reg0_alias__csr_imm__regs__
    UINT64_C(12403),	// i_control_registers_reg__opc_csrrc__reg0_alias__regs_csr__reg0__
    UINT64_C(12403),	// i_control_registers_reg__opc_csrrc__reg0_alias__regs_csr__reg0_alias__
    UINT64_C(12403),	// i_control_registers_reg__opc_csrrc__reg0_alias__regs_csr__regs__
    UINT64_C(12403),	// i_control_registers_reg__opc_csrrc__regs__csr_imm__reg0__
    UINT64_C(12403),	// i_control_registers_reg__opc_csrrc__regs__csr_imm__reg0_alias__
    UINT64_C(12403),	// i_control_registers_reg__opc_csrrc__regs__csr_imm__regs__
    UINT64_C(12403),	// i_control_registers_reg__opc_csrrc__regs__regs_csr__reg0__
    UINT64_C(12403),	// i_control_registers_reg__opc_csrrc__regs__regs_csr__reg0_alias__
    UINT64_C(12403),	// i_control_registers_reg__opc_csrrc__regs__regs_csr__regs__
    UINT64_C(8307),	// i_control_registers_reg__opc_csrrs__reg0__csr_imm__reg0__
    UINT64_C(8307),	// i_control_registers_reg__opc_csrrs__reg0__csr_imm__reg0_alias__
    UINT64_C(8307),	// i_control_registers_reg__opc_csrrs__reg0__csr_imm__regs__
    UINT64_C(8307),	// i_control_registers_reg__opc_csrrs__reg0__regs_csr__reg0__
    UINT64_C(8307),	// i_control_registers_reg__opc_csrrs__reg0__regs_csr__reg0_alias__
    UINT64_C(8307),	// i_control_registers_reg__opc_csrrs__reg0__regs_csr__regs__
    UINT64_C(8307),	// i_control_registers_reg__opc_csrrs__reg0_alias__csr_imm__reg0__
    UINT64_C(8307),	// i_control_registers_reg__opc_csrrs__reg0_alias__csr_imm__reg0_alias__
    UINT64_C(8307),	// i_control_registers_reg__opc_csrrs__reg0_alias__csr_imm__regs__
    UINT64_C(8307),	// i_control_registers_reg__opc_csrrs__reg0_alias__regs_csr__reg0__
    UINT64_C(8307),	// i_control_registers_reg__opc_csrrs__reg0_alias__regs_csr__reg0_alias__
    UINT64_C(8307),	// i_control_registers_reg__opc_csrrs__reg0_alias__regs_csr__regs__
    UINT64_C(8307),	// i_control_registers_reg__opc_csrrs__regs__csr_imm__reg0__
    UINT64_C(8307),	// i_control_registers_reg__opc_csrrs__regs__csr_imm__reg0_alias__
    UINT64_C(8307),	// i_control_registers_reg__opc_csrrs__regs__csr_imm__regs__
    UINT64_C(8307),	// i_control_registers_reg__opc_csrrs__regs__regs_csr__reg0__
    UINT64_C(8307),	// i_control_registers_reg__opc_csrrs__regs__regs_csr__reg0_alias__
    UINT64_C(8307),	// i_control_registers_reg__opc_csrrs__regs__regs_csr__regs__
    UINT64_C(4211),	// i_control_registers_reg__opc_csrrw__reg0__csr_imm__reg0__
    UINT64_C(4211),	// i_control_registers_reg__opc_csrrw__reg0__csr_imm__reg0_alias__
    UINT64_C(4211),	// i_control_registers_reg__opc_csrrw__reg0__csr_imm__regs__
    UINT64_C(4211),	// i_control_registers_reg__opc_csrrw__reg0__regs_csr__reg0__
    UINT64_C(4211),	// i_control_registers_reg__opc_csrrw__reg0__regs_csr__reg0_alias__
    UINT64_C(4211),	// i_control_registers_reg__opc_csrrw__reg0__regs_csr__regs__
    UINT64_C(4211),	// i_control_registers_reg__opc_csrrw__reg0_alias__csr_imm__reg0__
    UINT64_C(4211),	// i_control_registers_reg__opc_csrrw__reg0_alias__csr_imm__reg0_alias__
    UINT64_C(4211),	// i_control_registers_reg__opc_csrrw__reg0_alias__csr_imm__regs__
    UINT64_C(4211),	// i_control_registers_reg__opc_csrrw__reg0_alias__regs_csr__reg0__
    UINT64_C(4211),	// i_control_registers_reg__opc_csrrw__reg0_alias__regs_csr__reg0_alias__
    UINT64_C(4211),	// i_control_registers_reg__opc_csrrw__reg0_alias__regs_csr__regs__
    UINT64_C(4211),	// i_control_registers_reg__opc_csrrw__regs__csr_imm__reg0__
    UINT64_C(4211),	// i_control_registers_reg__opc_csrrw__regs__csr_imm__reg0_alias__
    UINT64_C(4211),	// i_control_registers_reg__opc_csrrw__regs__csr_imm__regs__
    UINT64_C(4211),	// i_control_registers_reg__opc_csrrw__regs__regs_csr__reg0__
    UINT64_C(4211),	// i_control_registers_reg__opc_csrrw__regs__regs_csr__reg0_alias__
    UINT64_C(4211),	// i_control_registers_reg__opc_csrrw__regs__regs_csr__regs__
    UINT64_C(12403),	// i_csrc_alias__csr_imm__reg0__
    UINT64_C(12403),	// i_csrc_alias__csr_imm__reg0_alias__
    UINT64_C(12403),	// i_csrc_alias__csr_imm__regs__
    UINT64_C(12403),	// i_csrc_alias__regs_csr__reg0__
    UINT64_C(12403),	// i_csrc_alias__regs_csr__reg0_alias__
    UINT64_C(12403),	// i_csrc_alias__regs_csr__regs__
    UINT64_C(28787),	// i_csrci_alias2__csr_imm__imm5__
    UINT64_C(28787),	// i_csrci_alias2__regs_csr__imm5__
    UINT64_C(28787),	// i_csrci_alias__csr_imm__imm5__
    UINT64_C(28787),	// i_csrci_alias__regs_csr__imm5__
    UINT64_C(8307),	// i_csrr_alias__reg0__csr_imm__
    UINT64_C(8307),	// i_csrr_alias__reg0__regs_csr__
    UINT64_C(8307),	// i_csrr_alias__reg0_alias__csr_imm__
    UINT64_C(8307),	// i_csrr_alias__reg0_alias__regs_csr__
    UINT64_C(8307),	// i_csrr_alias__regs__csr_imm__
    UINT64_C(8307),	// i_csrr_alias__regs__regs_csr__
    UINT64_C(8307),	// i_csrs_alias__csr_imm__reg0__
    UINT64_C(8307),	// i_csrs_alias__csr_imm__reg0_alias__
    UINT64_C(8307),	// i_csrs_alias__csr_imm__regs__
    UINT64_C(8307),	// i_csrs_alias__regs_csr__reg0__
    UINT64_C(8307),	// i_csrs_alias__regs_csr__reg0_alias__
    UINT64_C(8307),	// i_csrs_alias__regs_csr__regs__
    UINT64_C(24691),	// i_csrsi_alias2__csr_imm__imm5__
    UINT64_C(24691),	// i_csrsi_alias2__regs_csr__imm5__
    UINT64_C(24691),	// i_csrsi_alias__csr_imm__imm5__
    UINT64_C(24691),	// i_csrsi_alias__regs_csr__imm5__
    UINT64_C(4211),	// i_csrw_alias__csr_imm__reg0__
    UINT64_C(4211),	// i_csrw_alias__csr_imm__reg0_alias__
    UINT64_C(4211),	// i_csrw_alias__csr_imm__regs__
    UINT64_C(4211),	// i_csrw_alias__regs_csr__reg0__
    UINT64_C(4211),	// i_csrw_alias__regs_csr__reg0_alias__
    UINT64_C(4211),	// i_csrw_alias__regs_csr__regs__
    UINT64_C(20595),	// i_csrwi_alias__csr_imm__imm5__
    UINT64_C(20595),	// i_csrwi_alias__regs_csr__imm5__
    UINT64_C(1048691),	// i_ebreak__opc_ebreak__
    UINT64_C(115),	// i_ecall__opc_ecall__
    UINT64_C(115),	// i_ecall_alias__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__reg0__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__reg0_alias__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__regs__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0_alias__reg0__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0_alias__reg0_alias__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0_alias__regs__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__reg0__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__reg0_alias__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__regs__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0__reg0__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0__reg0_alias__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0__regs__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0_alias__reg0__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0_alias__reg0_alias__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0_alias__regs__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__regs__reg0__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__regs__reg0_alias__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__regs__regs__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0_alias__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__regs__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__regs__reg0_alias__reg0__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__regs__reg0_alias__reg0_alias__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__regs__reg0_alias__regs__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__regs__regs__reg0__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__regs__regs__reg0_alias__
    UINT64_C(43),	// i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__reg0__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__reg0_alias__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__regs__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0_alias__reg0__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0_alias__reg0_alias__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0_alias__regs__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__reg0__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__reg0_alias__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__regs__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0__reg0__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0__reg0_alias__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0__regs__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0_alias__reg0__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0_alias__reg0_alias__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0_alias__regs__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__regs__reg0__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__regs__reg0_alias__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__regs__regs__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__reg0__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__reg0_alias__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__regs__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__regs__reg0_alias__reg0__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__regs__reg0_alias__reg0_alias__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__regs__reg0_alias__regs__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__regs__regs__reg0__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__regs__regs__reg0_alias__
    UINT64_C(4139),	// i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__reg0__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__reg0_alias__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__regs__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0_alias__reg0__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0_alias__reg0_alias__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0_alias__regs__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__reg0__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__reg0_alias__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__regs__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0__reg0__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0__reg0_alias__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0__regs__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0_alias__reg0__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0_alias__reg0_alias__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0_alias__regs__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__regs__reg0__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__regs__reg0_alias__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__regs__regs__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0_alias__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__regs__reg0_alias__reg0__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__regs__reg0_alias__reg0_alias__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__regs__reg0_alias__regs__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0_alias__
    UINT64_C(8235),	// i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__reg0__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__reg0_alias__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__regs__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0_alias__reg0__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0_alias__reg0_alias__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0_alias__regs__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__reg0__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__reg0_alias__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__regs__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0__reg0__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0__reg0_alias__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0__regs__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0_alias__reg0__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0_alias__reg0_alias__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0_alias__regs__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__regs__reg0__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__regs__reg0_alias__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__regs__regs__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0_alias__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__regs__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__regs__reg0_alias__reg0__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__regs__reg0_alias__reg0_alias__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__regs__reg0_alias__regs__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0_alias__
    UINT64_C(12331),	// i_ext_hackaton__opc_hackaton_custom_d__regs__regs__regs__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__reg0__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__reg0_alias__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__regs__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0_alias__reg0__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0_alias__reg0_alias__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0_alias__regs__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__reg0__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__reg0_alias__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__regs__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0__reg0__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0__reg0_alias__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0__regs__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0_alias__reg0__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0_alias__reg0_alias__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0_alias__regs__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__regs__reg0__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__regs__reg0_alias__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__regs__regs__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0_alias__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__regs__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__regs__reg0_alias__reg0__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__regs__reg0_alias__reg0_alias__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__regs__reg0_alias__regs__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0_alias__
    UINT64_C(16427),	// i_ext_hackaton__opc_hackaton_custom_e__regs__regs__regs__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0_alias__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__regs__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0_alias__reg0__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0_alias__reg0_alias__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0_alias__regs__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0_alias__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__regs__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0__reg0__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0__reg0_alias__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0__regs__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0_alias__reg0__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0_alias__reg0_alias__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0_alias__regs__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__regs__reg0__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__regs__reg0_alias__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__regs__regs__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__regs__reg0__reg0__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__regs__reg0__reg0_alias__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__regs__reg0__regs__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__regs__reg0_alias__reg0__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__regs__reg0_alias__reg0_alias__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__regs__reg0_alias__regs__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__regs__regs__reg0__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__regs__regs__reg0_alias__
    UINT64_C(20523),	// i_ext_hackaton__opc_hackaton_custom_f__regs__regs__regs__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0__reg0__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0__reg0_alias__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0__regs__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0_alias__reg0__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0_alias__reg0_alias__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0_alias__regs__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__reg0__regs__reg0__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__reg0__regs__reg0_alias__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__reg0__regs__regs__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0__reg0__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0__reg0_alias__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0__regs__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0_alias__reg0__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0_alias__reg0_alias__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0_alias__regs__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__regs__reg0__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__regs__reg0_alias__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__regs__regs__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__regs__reg0__reg0__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__regs__reg0__reg0_alias__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__regs__reg0__regs__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__regs__reg0_alias__reg0__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__regs__reg0_alias__reg0_alias__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__regs__reg0_alias__regs__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__regs__regs__reg0__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__regs__regs__reg0_alias__
    UINT64_C(24619),	// i_ext_hackaton__opc_hackaton_custom_g__regs__regs__regs__
    UINT64_C(15),	// i_fence__opc_fence__opc_hint_fence__opc_hint_fence__
    UINT64_C(134217743),	// i_fence__opc_fence__opc_hint_fence__opc_i_fence__
    UINT64_C(201326607),	// i_fence__opc_fence__opc_hint_fence__opc_io_fence__
    UINT64_C(234881039),	// i_fence__opc_fence__opc_hint_fence__opc_ior_fence__
    UINT64_C(251658255),	// i_fence__opc_fence__opc_hint_fence__opc_iorw_fence__
    UINT64_C(218103823),	// i_fence__opc_fence__opc_hint_fence__opc_iow_fence__
    UINT64_C(167772175),	// i_fence__opc_fence__opc_hint_fence__opc_ir_fence__
    UINT64_C(184549391),	// i_fence__opc_fence__opc_hint_fence__opc_irw_fence__
    UINT64_C(150994959),	// i_fence__opc_fence__opc_hint_fence__opc_iw_fence__
    UINT64_C(67108879),	// i_fence__opc_fence__opc_hint_fence__opc_o_fence__
    UINT64_C(100663311),	// i_fence__opc_fence__opc_hint_fence__opc_or_fence__
    UINT64_C(117440527),	// i_fence__opc_fence__opc_hint_fence__opc_orw_fence__
    UINT64_C(83886095),	// i_fence__opc_fence__opc_hint_fence__opc_ow_fence__
    UINT64_C(33554447),	// i_fence__opc_fence__opc_hint_fence__opc_r_fence__
    UINT64_C(50331663),	// i_fence__opc_fence__opc_hint_fence__opc_rw_fence__
    UINT64_C(16777231),	// i_fence__opc_fence__opc_hint_fence__opc_w_fence__
    UINT64_C(8388623),	// i_fence__opc_fence__opc_i_fence__opc_hint_fence__
    UINT64_C(142606351),	// i_fence__opc_fence__opc_i_fence__opc_i_fence__
    UINT64_C(209715215),	// i_fence__opc_fence__opc_i_fence__opc_io_fence__
    UINT64_C(243269647),	// i_fence__opc_fence__opc_i_fence__opc_ior_fence__
    UINT64_C(260046863),	// i_fence__opc_fence__opc_i_fence__opc_iorw_fence__
    UINT64_C(226492431),	// i_fence__opc_fence__opc_i_fence__opc_iow_fence__
    UINT64_C(176160783),	// i_fence__opc_fence__opc_i_fence__opc_ir_fence__
    UINT64_C(192937999),	// i_fence__opc_fence__opc_i_fence__opc_irw_fence__
    UINT64_C(159383567),	// i_fence__opc_fence__opc_i_fence__opc_iw_fence__
    UINT64_C(75497487),	// i_fence__opc_fence__opc_i_fence__opc_o_fence__
    UINT64_C(109051919),	// i_fence__opc_fence__opc_i_fence__opc_or_fence__
    UINT64_C(125829135),	// i_fence__opc_fence__opc_i_fence__opc_orw_fence__
    UINT64_C(92274703),	// i_fence__opc_fence__opc_i_fence__opc_ow_fence__
    UINT64_C(41943055),	// i_fence__opc_fence__opc_i_fence__opc_r_fence__
    UINT64_C(58720271),	// i_fence__opc_fence__opc_i_fence__opc_rw_fence__
    UINT64_C(25165839),	// i_fence__opc_fence__opc_i_fence__opc_w_fence__
    UINT64_C(12582927),	// i_fence__opc_fence__opc_io_fence__opc_hint_fence__
    UINT64_C(146800655),	// i_fence__opc_fence__opc_io_fence__opc_i_fence__
    UINT64_C(213909519),	// i_fence__opc_fence__opc_io_fence__opc_io_fence__
    UINT64_C(247463951),	// i_fence__opc_fence__opc_io_fence__opc_ior_fence__
    UINT64_C(264241167),	// i_fence__opc_fence__opc_io_fence__opc_iorw_fence__
    UINT64_C(230686735),	// i_fence__opc_fence__opc_io_fence__opc_iow_fence__
    UINT64_C(180355087),	// i_fence__opc_fence__opc_io_fence__opc_ir_fence__
    UINT64_C(197132303),	// i_fence__opc_fence__opc_io_fence__opc_irw_fence__
    UINT64_C(163577871),	// i_fence__opc_fence__opc_io_fence__opc_iw_fence__
    UINT64_C(79691791),	// i_fence__opc_fence__opc_io_fence__opc_o_fence__
    UINT64_C(113246223),	// i_fence__opc_fence__opc_io_fence__opc_or_fence__
    UINT64_C(130023439),	// i_fence__opc_fence__opc_io_fence__opc_orw_fence__
    UINT64_C(96469007),	// i_fence__opc_fence__opc_io_fence__opc_ow_fence__
    UINT64_C(46137359),	// i_fence__opc_fence__opc_io_fence__opc_r_fence__
    UINT64_C(62914575),	// i_fence__opc_fence__opc_io_fence__opc_rw_fence__
    UINT64_C(29360143),	// i_fence__opc_fence__opc_io_fence__opc_w_fence__
    UINT64_C(14680079),	// i_fence__opc_fence__opc_ior_fence__opc_hint_fence__
    UINT64_C(148897807),	// i_fence__opc_fence__opc_ior_fence__opc_i_fence__
    UINT64_C(216006671),	// i_fence__opc_fence__opc_ior_fence__opc_io_fence__
    UINT64_C(249561103),	// i_fence__opc_fence__opc_ior_fence__opc_ior_fence__
    UINT64_C(266338319),	// i_fence__opc_fence__opc_ior_fence__opc_iorw_fence__
    UINT64_C(232783887),	// i_fence__opc_fence__opc_ior_fence__opc_iow_fence__
    UINT64_C(182452239),	// i_fence__opc_fence__opc_ior_fence__opc_ir_fence__
    UINT64_C(199229455),	// i_fence__opc_fence__opc_ior_fence__opc_irw_fence__
    UINT64_C(165675023),	// i_fence__opc_fence__opc_ior_fence__opc_iw_fence__
    UINT64_C(81788943),	// i_fence__opc_fence__opc_ior_fence__opc_o_fence__
    UINT64_C(115343375),	// i_fence__opc_fence__opc_ior_fence__opc_or_fence__
    UINT64_C(132120591),	// i_fence__opc_fence__opc_ior_fence__opc_orw_fence__
    UINT64_C(98566159),	// i_fence__opc_fence__opc_ior_fence__opc_ow_fence__
    UINT64_C(48234511),	// i_fence__opc_fence__opc_ior_fence__opc_r_fence__
    UINT64_C(65011727),	// i_fence__opc_fence__opc_ior_fence__opc_rw_fence__
    UINT64_C(31457295),	// i_fence__opc_fence__opc_ior_fence__opc_w_fence__
    UINT64_C(15728655),	// i_fence__opc_fence__opc_iorw_fence__opc_hint_fence__
    UINT64_C(149946383),	// i_fence__opc_fence__opc_iorw_fence__opc_i_fence__
    UINT64_C(217055247),	// i_fence__opc_fence__opc_iorw_fence__opc_io_fence__
    UINT64_C(250609679),	// i_fence__opc_fence__opc_iorw_fence__opc_ior_fence__
    UINT64_C(267386895),	// i_fence__opc_fence__opc_iorw_fence__opc_iorw_fence__
    UINT64_C(233832463),	// i_fence__opc_fence__opc_iorw_fence__opc_iow_fence__
    UINT64_C(183500815),	// i_fence__opc_fence__opc_iorw_fence__opc_ir_fence__
    UINT64_C(200278031),	// i_fence__opc_fence__opc_iorw_fence__opc_irw_fence__
    UINT64_C(166723599),	// i_fence__opc_fence__opc_iorw_fence__opc_iw_fence__
    UINT64_C(82837519),	// i_fence__opc_fence__opc_iorw_fence__opc_o_fence__
    UINT64_C(116391951),	// i_fence__opc_fence__opc_iorw_fence__opc_or_fence__
    UINT64_C(133169167),	// i_fence__opc_fence__opc_iorw_fence__opc_orw_fence__
    UINT64_C(99614735),	// i_fence__opc_fence__opc_iorw_fence__opc_ow_fence__
    UINT64_C(49283087),	// i_fence__opc_fence__opc_iorw_fence__opc_r_fence__
    UINT64_C(66060303),	// i_fence__opc_fence__opc_iorw_fence__opc_rw_fence__
    UINT64_C(32505871),	// i_fence__opc_fence__opc_iorw_fence__opc_w_fence__
    UINT64_C(13631503),	// i_fence__opc_fence__opc_iow_fence__opc_hint_fence__
    UINT64_C(147849231),	// i_fence__opc_fence__opc_iow_fence__opc_i_fence__
    UINT64_C(214958095),	// i_fence__opc_fence__opc_iow_fence__opc_io_fence__
    UINT64_C(248512527),	// i_fence__opc_fence__opc_iow_fence__opc_ior_fence__
    UINT64_C(265289743),	// i_fence__opc_fence__opc_iow_fence__opc_iorw_fence__
    UINT64_C(231735311),	// i_fence__opc_fence__opc_iow_fence__opc_iow_fence__
    UINT64_C(181403663),	// i_fence__opc_fence__opc_iow_fence__opc_ir_fence__
    UINT64_C(198180879),	// i_fence__opc_fence__opc_iow_fence__opc_irw_fence__
    UINT64_C(164626447),	// i_fence__opc_fence__opc_iow_fence__opc_iw_fence__
    UINT64_C(80740367),	// i_fence__opc_fence__opc_iow_fence__opc_o_fence__
    UINT64_C(114294799),	// i_fence__opc_fence__opc_iow_fence__opc_or_fence__
    UINT64_C(131072015),	// i_fence__opc_fence__opc_iow_fence__opc_orw_fence__
    UINT64_C(97517583),	// i_fence__opc_fence__opc_iow_fence__opc_ow_fence__
    UINT64_C(47185935),	// i_fence__opc_fence__opc_iow_fence__opc_r_fence__
    UINT64_C(63963151),	// i_fence__opc_fence__opc_iow_fence__opc_rw_fence__
    UINT64_C(30408719),	// i_fence__opc_fence__opc_iow_fence__opc_w_fence__
    UINT64_C(10485775),	// i_fence__opc_fence__opc_ir_fence__opc_hint_fence__
    UINT64_C(144703503),	// i_fence__opc_fence__opc_ir_fence__opc_i_fence__
    UINT64_C(211812367),	// i_fence__opc_fence__opc_ir_fence__opc_io_fence__
    UINT64_C(245366799),	// i_fence__opc_fence__opc_ir_fence__opc_ior_fence__
    UINT64_C(262144015),	// i_fence__opc_fence__opc_ir_fence__opc_iorw_fence__
    UINT64_C(228589583),	// i_fence__opc_fence__opc_ir_fence__opc_iow_fence__
    UINT64_C(178257935),	// i_fence__opc_fence__opc_ir_fence__opc_ir_fence__
    UINT64_C(195035151),	// i_fence__opc_fence__opc_ir_fence__opc_irw_fence__
    UINT64_C(161480719),	// i_fence__opc_fence__opc_ir_fence__opc_iw_fence__
    UINT64_C(77594639),	// i_fence__opc_fence__opc_ir_fence__opc_o_fence__
    UINT64_C(111149071),	// i_fence__opc_fence__opc_ir_fence__opc_or_fence__
    UINT64_C(127926287),	// i_fence__opc_fence__opc_ir_fence__opc_orw_fence__
    UINT64_C(94371855),	// i_fence__opc_fence__opc_ir_fence__opc_ow_fence__
    UINT64_C(44040207),	// i_fence__opc_fence__opc_ir_fence__opc_r_fence__
    UINT64_C(60817423),	// i_fence__opc_fence__opc_ir_fence__opc_rw_fence__
    UINT64_C(27262991),	// i_fence__opc_fence__opc_ir_fence__opc_w_fence__
    UINT64_C(11534351),	// i_fence__opc_fence__opc_irw_fence__opc_hint_fence__
    UINT64_C(145752079),	// i_fence__opc_fence__opc_irw_fence__opc_i_fence__
    UINT64_C(212860943),	// i_fence__opc_fence__opc_irw_fence__opc_io_fence__
    UINT64_C(246415375),	// i_fence__opc_fence__opc_irw_fence__opc_ior_fence__
    UINT64_C(263192591),	// i_fence__opc_fence__opc_irw_fence__opc_iorw_fence__
    UINT64_C(229638159),	// i_fence__opc_fence__opc_irw_fence__opc_iow_fence__
    UINT64_C(179306511),	// i_fence__opc_fence__opc_irw_fence__opc_ir_fence__
    UINT64_C(196083727),	// i_fence__opc_fence__opc_irw_fence__opc_irw_fence__
    UINT64_C(162529295),	// i_fence__opc_fence__opc_irw_fence__opc_iw_fence__
    UINT64_C(78643215),	// i_fence__opc_fence__opc_irw_fence__opc_o_fence__
    UINT64_C(112197647),	// i_fence__opc_fence__opc_irw_fence__opc_or_fence__
    UINT64_C(128974863),	// i_fence__opc_fence__opc_irw_fence__opc_orw_fence__
    UINT64_C(95420431),	// i_fence__opc_fence__opc_irw_fence__opc_ow_fence__
    UINT64_C(45088783),	// i_fence__opc_fence__opc_irw_fence__opc_r_fence__
    UINT64_C(61865999),	// i_fence__opc_fence__opc_irw_fence__opc_rw_fence__
    UINT64_C(28311567),	// i_fence__opc_fence__opc_irw_fence__opc_w_fence__
    UINT64_C(9437199),	// i_fence__opc_fence__opc_iw_fence__opc_hint_fence__
    UINT64_C(143654927),	// i_fence__opc_fence__opc_iw_fence__opc_i_fence__
    UINT64_C(210763791),	// i_fence__opc_fence__opc_iw_fence__opc_io_fence__
    UINT64_C(244318223),	// i_fence__opc_fence__opc_iw_fence__opc_ior_fence__
    UINT64_C(261095439),	// i_fence__opc_fence__opc_iw_fence__opc_iorw_fence__
    UINT64_C(227541007),	// i_fence__opc_fence__opc_iw_fence__opc_iow_fence__
    UINT64_C(177209359),	// i_fence__opc_fence__opc_iw_fence__opc_ir_fence__
    UINT64_C(193986575),	// i_fence__opc_fence__opc_iw_fence__opc_irw_fence__
    UINT64_C(160432143),	// i_fence__opc_fence__opc_iw_fence__opc_iw_fence__
    UINT64_C(76546063),	// i_fence__opc_fence__opc_iw_fence__opc_o_fence__
    UINT64_C(110100495),	// i_fence__opc_fence__opc_iw_fence__opc_or_fence__
    UINT64_C(126877711),	// i_fence__opc_fence__opc_iw_fence__opc_orw_fence__
    UINT64_C(93323279),	// i_fence__opc_fence__opc_iw_fence__opc_ow_fence__
    UINT64_C(42991631),	// i_fence__opc_fence__opc_iw_fence__opc_r_fence__
    UINT64_C(59768847),	// i_fence__opc_fence__opc_iw_fence__opc_rw_fence__
    UINT64_C(26214415),	// i_fence__opc_fence__opc_iw_fence__opc_w_fence__
    UINT64_C(4194319),	// i_fence__opc_fence__opc_o_fence__opc_hint_fence__
    UINT64_C(138412047),	// i_fence__opc_fence__opc_o_fence__opc_i_fence__
    UINT64_C(205520911),	// i_fence__opc_fence__opc_o_fence__opc_io_fence__
    UINT64_C(239075343),	// i_fence__opc_fence__opc_o_fence__opc_ior_fence__
    UINT64_C(255852559),	// i_fence__opc_fence__opc_o_fence__opc_iorw_fence__
    UINT64_C(222298127),	// i_fence__opc_fence__opc_o_fence__opc_iow_fence__
    UINT64_C(171966479),	// i_fence__opc_fence__opc_o_fence__opc_ir_fence__
    UINT64_C(188743695),	// i_fence__opc_fence__opc_o_fence__opc_irw_fence__
    UINT64_C(155189263),	// i_fence__opc_fence__opc_o_fence__opc_iw_fence__
    UINT64_C(71303183),	// i_fence__opc_fence__opc_o_fence__opc_o_fence__
    UINT64_C(104857615),	// i_fence__opc_fence__opc_o_fence__opc_or_fence__
    UINT64_C(121634831),	// i_fence__opc_fence__opc_o_fence__opc_orw_fence__
    UINT64_C(88080399),	// i_fence__opc_fence__opc_o_fence__opc_ow_fence__
    UINT64_C(37748751),	// i_fence__opc_fence__opc_o_fence__opc_r_fence__
    UINT64_C(54525967),	// i_fence__opc_fence__opc_o_fence__opc_rw_fence__
    UINT64_C(20971535),	// i_fence__opc_fence__opc_o_fence__opc_w_fence__
    UINT64_C(6291471),	// i_fence__opc_fence__opc_or_fence__opc_hint_fence__
    UINT64_C(140509199),	// i_fence__opc_fence__opc_or_fence__opc_i_fence__
    UINT64_C(207618063),	// i_fence__opc_fence__opc_or_fence__opc_io_fence__
    UINT64_C(241172495),	// i_fence__opc_fence__opc_or_fence__opc_ior_fence__
    UINT64_C(257949711),	// i_fence__opc_fence__opc_or_fence__opc_iorw_fence__
    UINT64_C(224395279),	// i_fence__opc_fence__opc_or_fence__opc_iow_fence__
    UINT64_C(174063631),	// i_fence__opc_fence__opc_or_fence__opc_ir_fence__
    UINT64_C(190840847),	// i_fence__opc_fence__opc_or_fence__opc_irw_fence__
    UINT64_C(157286415),	// i_fence__opc_fence__opc_or_fence__opc_iw_fence__
    UINT64_C(73400335),	// i_fence__opc_fence__opc_or_fence__opc_o_fence__
    UINT64_C(106954767),	// i_fence__opc_fence__opc_or_fence__opc_or_fence__
    UINT64_C(123731983),	// i_fence__opc_fence__opc_or_fence__opc_orw_fence__
    UINT64_C(90177551),	// i_fence__opc_fence__opc_or_fence__opc_ow_fence__
    UINT64_C(39845903),	// i_fence__opc_fence__opc_or_fence__opc_r_fence__
    UINT64_C(56623119),	// i_fence__opc_fence__opc_or_fence__opc_rw_fence__
    UINT64_C(23068687),	// i_fence__opc_fence__opc_or_fence__opc_w_fence__
    UINT64_C(7340047),	// i_fence__opc_fence__opc_orw_fence__opc_hint_fence__
    UINT64_C(141557775),	// i_fence__opc_fence__opc_orw_fence__opc_i_fence__
    UINT64_C(208666639),	// i_fence__opc_fence__opc_orw_fence__opc_io_fence__
    UINT64_C(242221071),	// i_fence__opc_fence__opc_orw_fence__opc_ior_fence__
    UINT64_C(258998287),	// i_fence__opc_fence__opc_orw_fence__opc_iorw_fence__
    UINT64_C(225443855),	// i_fence__opc_fence__opc_orw_fence__opc_iow_fence__
    UINT64_C(175112207),	// i_fence__opc_fence__opc_orw_fence__opc_ir_fence__
    UINT64_C(191889423),	// i_fence__opc_fence__opc_orw_fence__opc_irw_fence__
    UINT64_C(158334991),	// i_fence__opc_fence__opc_orw_fence__opc_iw_fence__
    UINT64_C(74448911),	// i_fence__opc_fence__opc_orw_fence__opc_o_fence__
    UINT64_C(108003343),	// i_fence__opc_fence__opc_orw_fence__opc_or_fence__
    UINT64_C(124780559),	// i_fence__opc_fence__opc_orw_fence__opc_orw_fence__
    UINT64_C(91226127),	// i_fence__opc_fence__opc_orw_fence__opc_ow_fence__
    UINT64_C(40894479),	// i_fence__opc_fence__opc_orw_fence__opc_r_fence__
    UINT64_C(57671695),	// i_fence__opc_fence__opc_orw_fence__opc_rw_fence__
    UINT64_C(24117263),	// i_fence__opc_fence__opc_orw_fence__opc_w_fence__
    UINT64_C(5242895),	// i_fence__opc_fence__opc_ow_fence__opc_hint_fence__
    UINT64_C(139460623),	// i_fence__opc_fence__opc_ow_fence__opc_i_fence__
    UINT64_C(206569487),	// i_fence__opc_fence__opc_ow_fence__opc_io_fence__
    UINT64_C(240123919),	// i_fence__opc_fence__opc_ow_fence__opc_ior_fence__
    UINT64_C(256901135),	// i_fence__opc_fence__opc_ow_fence__opc_iorw_fence__
    UINT64_C(223346703),	// i_fence__opc_fence__opc_ow_fence__opc_iow_fence__
    UINT64_C(173015055),	// i_fence__opc_fence__opc_ow_fence__opc_ir_fence__
    UINT64_C(189792271),	// i_fence__opc_fence__opc_ow_fence__opc_irw_fence__
    UINT64_C(156237839),	// i_fence__opc_fence__opc_ow_fence__opc_iw_fence__
    UINT64_C(72351759),	// i_fence__opc_fence__opc_ow_fence__opc_o_fence__
    UINT64_C(105906191),	// i_fence__opc_fence__opc_ow_fence__opc_or_fence__
    UINT64_C(122683407),	// i_fence__opc_fence__opc_ow_fence__opc_orw_fence__
    UINT64_C(89128975),	// i_fence__opc_fence__opc_ow_fence__opc_ow_fence__
    UINT64_C(38797327),	// i_fence__opc_fence__opc_ow_fence__opc_r_fence__
    UINT64_C(55574543),	// i_fence__opc_fence__opc_ow_fence__opc_rw_fence__
    UINT64_C(22020111),	// i_fence__opc_fence__opc_ow_fence__opc_w_fence__
    UINT64_C(2097167),	// i_fence__opc_fence__opc_r_fence__opc_hint_fence__
    UINT64_C(136314895),	// i_fence__opc_fence__opc_r_fence__opc_i_fence__
    UINT64_C(203423759),	// i_fence__opc_fence__opc_r_fence__opc_io_fence__
    UINT64_C(236978191),	// i_fence__opc_fence__opc_r_fence__opc_ior_fence__
    UINT64_C(253755407),	// i_fence__opc_fence__opc_r_fence__opc_iorw_fence__
    UINT64_C(220200975),	// i_fence__opc_fence__opc_r_fence__opc_iow_fence__
    UINT64_C(169869327),	// i_fence__opc_fence__opc_r_fence__opc_ir_fence__
    UINT64_C(186646543),	// i_fence__opc_fence__opc_r_fence__opc_irw_fence__
    UINT64_C(153092111),	// i_fence__opc_fence__opc_r_fence__opc_iw_fence__
    UINT64_C(69206031),	// i_fence__opc_fence__opc_r_fence__opc_o_fence__
    UINT64_C(102760463),	// i_fence__opc_fence__opc_r_fence__opc_or_fence__
    UINT64_C(119537679),	// i_fence__opc_fence__opc_r_fence__opc_orw_fence__
    UINT64_C(85983247),	// i_fence__opc_fence__opc_r_fence__opc_ow_fence__
    UINT64_C(35651599),	// i_fence__opc_fence__opc_r_fence__opc_r_fence__
    UINT64_C(52428815),	// i_fence__opc_fence__opc_r_fence__opc_rw_fence__
    UINT64_C(18874383),	// i_fence__opc_fence__opc_r_fence__opc_w_fence__
    UINT64_C(3145743),	// i_fence__opc_fence__opc_rw_fence__opc_hint_fence__
    UINT64_C(137363471),	// i_fence__opc_fence__opc_rw_fence__opc_i_fence__
    UINT64_C(204472335),	// i_fence__opc_fence__opc_rw_fence__opc_io_fence__
    UINT64_C(238026767),	// i_fence__opc_fence__opc_rw_fence__opc_ior_fence__
    UINT64_C(254803983),	// i_fence__opc_fence__opc_rw_fence__opc_iorw_fence__
    UINT64_C(221249551),	// i_fence__opc_fence__opc_rw_fence__opc_iow_fence__
    UINT64_C(170917903),	// i_fence__opc_fence__opc_rw_fence__opc_ir_fence__
    UINT64_C(187695119),	// i_fence__opc_fence__opc_rw_fence__opc_irw_fence__
    UINT64_C(154140687),	// i_fence__opc_fence__opc_rw_fence__opc_iw_fence__
    UINT64_C(70254607),	// i_fence__opc_fence__opc_rw_fence__opc_o_fence__
    UINT64_C(103809039),	// i_fence__opc_fence__opc_rw_fence__opc_or_fence__
    UINT64_C(120586255),	// i_fence__opc_fence__opc_rw_fence__opc_orw_fence__
    UINT64_C(87031823),	// i_fence__opc_fence__opc_rw_fence__opc_ow_fence__
    UINT64_C(36700175),	// i_fence__opc_fence__opc_rw_fence__opc_r_fence__
    UINT64_C(53477391),	// i_fence__opc_fence__opc_rw_fence__opc_rw_fence__
    UINT64_C(19922959),	// i_fence__opc_fence__opc_rw_fence__opc_w_fence__
    UINT64_C(1048591),	// i_fence__opc_fence__opc_w_fence__opc_hint_fence__
    UINT64_C(135266319),	// i_fence__opc_fence__opc_w_fence__opc_i_fence__
    UINT64_C(202375183),	// i_fence__opc_fence__opc_w_fence__opc_io_fence__
    UINT64_C(235929615),	// i_fence__opc_fence__opc_w_fence__opc_ior_fence__
    UINT64_C(252706831),	// i_fence__opc_fence__opc_w_fence__opc_iorw_fence__
    UINT64_C(219152399),	// i_fence__opc_fence__opc_w_fence__opc_iow_fence__
    UINT64_C(168820751),	// i_fence__opc_fence__opc_w_fence__opc_ir_fence__
    UINT64_C(185597967),	// i_fence__opc_fence__opc_w_fence__opc_irw_fence__
    UINT64_C(152043535),	// i_fence__opc_fence__opc_w_fence__opc_iw_fence__
    UINT64_C(68157455),	// i_fence__opc_fence__opc_w_fence__opc_o_fence__
    UINT64_C(101711887),	// i_fence__opc_fence__opc_w_fence__opc_or_fence__
    UINT64_C(118489103),	// i_fence__opc_fence__opc_w_fence__opc_orw_fence__
    UINT64_C(84934671),	// i_fence__opc_fence__opc_w_fence__opc_ow_fence__
    UINT64_C(34603023),	// i_fence__opc_fence__opc_w_fence__opc_r_fence__
    UINT64_C(51380239),	// i_fence__opc_fence__opc_w_fence__opc_rw_fence__
    UINT64_C(17825807),	// i_fence__opc_fence__opc_w_fence__opc_w_fence__
    UINT64_C(267386895),	// i_fence_alias__opc_fence__
    UINT64_C(4111),	// i_fencei__opc_fencei__
    UINT64_C(23),	// i_get_pc_alias__reg0__
    UINT64_C(23),	// i_get_pc_alias__reg0_alias__
    UINT64_C(23),	// i_get_pc_alias__regs__
    UINT64_C(111),	// i_jal__opc_jal__reg0__rel_addr20__
    UINT64_C(0),	// i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_
    UINT64_C(0),	// i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA
    UINT64_C(0),	// i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES
    UINT64_C(0),	// i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC
    UINT64_C(111),	// i_jal__opc_jal__reg0_alias__rel_addr20__
    UINT64_C(111),	// i_jal__opc_jal__regs__rel_addr20__
    UINT64_C(0),	// i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_
    UINT64_C(0),	// i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA
    UINT64_C(0),	// i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES
    UINT64_C(0),	// i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC
    UINT64_C(103),	// i_jalr__opc_jalr__reg0__reg0__simm12_lo__
    UINT64_C(103),	// i_jalr__opc_jalr__reg0__reg0__simm12_pcrel_lo__
    UINT64_C(103),	// i_jalr__opc_jalr__reg0__reg0__simm12_simple__
    UINT64_C(0),	// i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_
    UINT64_C(0),	// i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_BA
    UINT64_C(0),	// i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ES
    UINT64_C(0),	// i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_MC
    UINT64_C(103),	// i_jalr__opc_jalr__reg0__reg0_alias__simm12_lo__
    UINT64_C(103),	// i_jalr__opc_jalr__reg0__reg0_alias__simm12_pcrel_lo__
    UINT64_C(103),	// i_jalr__opc_jalr__reg0__reg0_alias__simm12_simple__
    UINT64_C(103),	// i_jalr__opc_jalr__reg0__regs__simm12_lo__
    UINT64_C(103),	// i_jalr__opc_jalr__reg0__regs__simm12_pcrel_lo__
    UINT64_C(103),	// i_jalr__opc_jalr__reg0__regs__simm12_simple__
    UINT64_C(103),	// i_jalr__opc_jalr__reg0_alias__reg0__simm12_lo__
    UINT64_C(103),	// i_jalr__opc_jalr__reg0_alias__reg0__simm12_pcrel_lo__
    UINT64_C(103),	// i_jalr__opc_jalr__reg0_alias__reg0__simm12_simple__
    UINT64_C(103),	// i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_lo__
    UINT64_C(103),	// i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_pcrel_lo__
    UINT64_C(103),	// i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_simple__
    UINT64_C(103),	// i_jalr__opc_jalr__reg0_alias__regs__simm12_lo__
    UINT64_C(103),	// i_jalr__opc_jalr__reg0_alias__regs__simm12_pcrel_lo__
    UINT64_C(103),	// i_jalr__opc_jalr__reg0_alias__regs__simm12_simple__
    UINT64_C(103),	// i_jalr__opc_jalr__regs__reg0__simm12_lo__
    UINT64_C(103),	// i_jalr__opc_jalr__regs__reg0__simm12_pcrel_lo__
    UINT64_C(103),	// i_jalr__opc_jalr__regs__reg0__simm12_simple__
    UINT64_C(103),	// i_jalr__opc_jalr__regs__reg0_alias__simm12_lo__
    UINT64_C(103),	// i_jalr__opc_jalr__regs__reg0_alias__simm12_pcrel_lo__
    UINT64_C(103),	// i_jalr__opc_jalr__regs__reg0_alias__simm12_simple__
    UINT64_C(103),	// i_jalr__opc_jalr__regs__regs__simm12_lo__
    UINT64_C(103),	// i_jalr__opc_jalr__regs__regs__simm12_pcrel_lo__
    UINT64_C(103),	// i_jalr__opc_jalr__regs__regs__simm12_simple__
    UINT64_C(231),	// i_jalr_alias__reg0__
    UINT64_C(231),	// i_jalr_alias__reg0_alias__
    UINT64_C(231),	// i_jalr_alias__regs__
    UINT64_C(103),	// i_jlr_alias__reg0__simm12_lo__
    UINT64_C(103),	// i_jlr_alias__reg0__simm12_pcrel_lo__
    UINT64_C(103),	// i_jlr_alias__reg0__simm12_simple__
    UINT64_C(103),	// i_jlr_alias__reg0_alias__simm12_lo__
    UINT64_C(103),	// i_jlr_alias__reg0_alias__simm12_pcrel_lo__
    UINT64_C(103),	// i_jlr_alias__reg0_alias__simm12_simple__
    UINT64_C(103),	// i_jlr_alias__regs__simm12_lo__
    UINT64_C(103),	// i_jlr_alias__regs__simm12_pcrel_lo__
    UINT64_C(103),	// i_jlr_alias__regs__simm12_simple__
    UINT64_C(111),	// i_jmp_rel_alias__rel_addr20__
    UINT64_C(0),	// i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_
    UINT64_C(0),	// i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_BA
    UINT64_C(0),	// i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ES
    UINT64_C(0),	// i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_MC
    UINT64_C(103),	// i_jump_reg_alias__reg0__
    UINT64_C(103),	// i_jump_reg_alias__reg0_alias__
    UINT64_C(103),	// i_jump_reg_alias__regs__
    UINT64_C(0),	// i_jump_reg_alias__regs__TAILCALL_CLONE_
    UINT64_C(0),	// i_jump_reg_alias__regs___RET_EMUL_
    UINT64_C(81604378647),	// i_la_alias__reg0__rel_addr32__
    UINT64_C(81604378647),	// i_la_alias__reg0_alias__rel_addr32__
    UINT64_C(81604378647),	// i_la_alias__regs__rel_addr32__
    UINT64_C(81604378679),	// i_li_aalias__reg0__imm32_lui_addi__
    UINT64_C(81604378679),	// i_li_aalias__reg0_alias__imm32_lui_addi__
    UINT64_C(81604378679),	// i_li_aalias__regs__imm32_lui_addi__
    UINT64_C(81604378647),	// i_lla_alias__reg0__rel_addr32__
    UINT64_C(81604378647),	// i_lla_alias__reg0_alias__rel_addr32__
    UINT64_C(81604378647),	// i_lla_alias__regs__rel_addr32__
    UINT64_C(3),	// i_load__opc_loadb__reg0__simm12_lo__reg0__
    UINT64_C(3),	// i_load__opc_loadb__reg0__simm12_lo__reg0_alias__
    UINT64_C(3),	// i_load__opc_loadb__reg0__simm12_lo__regs__
    UINT64_C(3),	// i_load__opc_loadb__reg0__simm12_pcrel_lo__reg0__
    UINT64_C(3),	// i_load__opc_loadb__reg0__simm12_pcrel_lo__reg0_alias__
    UINT64_C(3),	// i_load__opc_loadb__reg0__simm12_pcrel_lo__regs__
    UINT64_C(3),	// i_load__opc_loadb__reg0__simm12_simple__reg0__
    UINT64_C(3),	// i_load__opc_loadb__reg0__simm12_simple__reg0_alias__
    UINT64_C(3),	// i_load__opc_loadb__reg0__simm12_simple__regs__
    UINT64_C(3),	// i_load__opc_loadb__reg0_alias__simm12_lo__reg0__
    UINT64_C(3),	// i_load__opc_loadb__reg0_alias__simm12_lo__reg0_alias__
    UINT64_C(3),	// i_load__opc_loadb__reg0_alias__simm12_lo__regs__
    UINT64_C(3),	// i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__reg0__
    UINT64_C(3),	// i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__reg0_alias__
    UINT64_C(3),	// i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__regs__
    UINT64_C(3),	// i_load__opc_loadb__reg0_alias__simm12_simple__reg0__
    UINT64_C(3),	// i_load__opc_loadb__reg0_alias__simm12_simple__reg0_alias__
    UINT64_C(3),	// i_load__opc_loadb__reg0_alias__simm12_simple__regs__
    UINT64_C(3),	// i_load__opc_loadb__regs__simm12_lo__reg0__
    UINT64_C(3),	// i_load__opc_loadb__regs__simm12_lo__reg0_alias__
    UINT64_C(3),	// i_load__opc_loadb__regs__simm12_lo__regs__
    UINT64_C(3),	// i_load__opc_loadb__regs__simm12_pcrel_lo__reg0__
    UINT64_C(3),	// i_load__opc_loadb__regs__simm12_pcrel_lo__reg0_alias__
    UINT64_C(3),	// i_load__opc_loadb__regs__simm12_pcrel_lo__regs__
    UINT64_C(3),	// i_load__opc_loadb__regs__simm12_simple__reg0__
    UINT64_C(3),	// i_load__opc_loadb__regs__simm12_simple__reg0_alias__
    UINT64_C(3),	// i_load__opc_loadb__regs__simm12_simple__regs__
    UINT64_C(16387),	// i_load__opc_loadbu__reg0__simm12_lo__reg0__
    UINT64_C(16387),	// i_load__opc_loadbu__reg0__simm12_lo__reg0_alias__
    UINT64_C(16387),	// i_load__opc_loadbu__reg0__simm12_lo__regs__
    UINT64_C(16387),	// i_load__opc_loadbu__reg0__simm12_pcrel_lo__reg0__
    UINT64_C(16387),	// i_load__opc_loadbu__reg0__simm12_pcrel_lo__reg0_alias__
    UINT64_C(16387),	// i_load__opc_loadbu__reg0__simm12_pcrel_lo__regs__
    UINT64_C(16387),	// i_load__opc_loadbu__reg0__simm12_simple__reg0__
    UINT64_C(16387),	// i_load__opc_loadbu__reg0__simm12_simple__reg0_alias__
    UINT64_C(16387),	// i_load__opc_loadbu__reg0__simm12_simple__regs__
    UINT64_C(16387),	// i_load__opc_loadbu__reg0_alias__simm12_lo__reg0__
    UINT64_C(16387),	// i_load__opc_loadbu__reg0_alias__simm12_lo__reg0_alias__
    UINT64_C(16387),	// i_load__opc_loadbu__reg0_alias__simm12_lo__regs__
    UINT64_C(16387),	// i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__reg0__
    UINT64_C(16387),	// i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__reg0_alias__
    UINT64_C(16387),	// i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__regs__
    UINT64_C(16387),	// i_load__opc_loadbu__reg0_alias__simm12_simple__reg0__
    UINT64_C(16387),	// i_load__opc_loadbu__reg0_alias__simm12_simple__reg0_alias__
    UINT64_C(16387),	// i_load__opc_loadbu__reg0_alias__simm12_simple__regs__
    UINT64_C(16387),	// i_load__opc_loadbu__regs__simm12_lo__reg0__
    UINT64_C(16387),	// i_load__opc_loadbu__regs__simm12_lo__reg0_alias__
    UINT64_C(16387),	// i_load__opc_loadbu__regs__simm12_lo__regs__
    UINT64_C(16387),	// i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0__
    UINT64_C(16387),	// i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0_alias__
    UINT64_C(16387),	// i_load__opc_loadbu__regs__simm12_pcrel_lo__regs__
    UINT64_C(16387),	// i_load__opc_loadbu__regs__simm12_simple__reg0__
    UINT64_C(16387),	// i_load__opc_loadbu__regs__simm12_simple__reg0_alias__
    UINT64_C(16387),	// i_load__opc_loadbu__regs__simm12_simple__regs__
    UINT64_C(4099),	// i_load__opc_loadh__reg0__simm12_lo__reg0__
    UINT64_C(4099),	// i_load__opc_loadh__reg0__simm12_lo__reg0_alias__
    UINT64_C(4099),	// i_load__opc_loadh__reg0__simm12_lo__regs__
    UINT64_C(4099),	// i_load__opc_loadh__reg0__simm12_pcrel_lo__reg0__
    UINT64_C(4099),	// i_load__opc_loadh__reg0__simm12_pcrel_lo__reg0_alias__
    UINT64_C(4099),	// i_load__opc_loadh__reg0__simm12_pcrel_lo__regs__
    UINT64_C(4099),	// i_load__opc_loadh__reg0__simm12_simple__reg0__
    UINT64_C(4099),	// i_load__opc_loadh__reg0__simm12_simple__reg0_alias__
    UINT64_C(4099),	// i_load__opc_loadh__reg0__simm12_simple__regs__
    UINT64_C(4099),	// i_load__opc_loadh__reg0_alias__simm12_lo__reg0__
    UINT64_C(4099),	// i_load__opc_loadh__reg0_alias__simm12_lo__reg0_alias__
    UINT64_C(4099),	// i_load__opc_loadh__reg0_alias__simm12_lo__regs__
    UINT64_C(4099),	// i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__reg0__
    UINT64_C(4099),	// i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__reg0_alias__
    UINT64_C(4099),	// i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__regs__
    UINT64_C(4099),	// i_load__opc_loadh__reg0_alias__simm12_simple__reg0__
    UINT64_C(4099),	// i_load__opc_loadh__reg0_alias__simm12_simple__reg0_alias__
    UINT64_C(4099),	// i_load__opc_loadh__reg0_alias__simm12_simple__regs__
    UINT64_C(4099),	// i_load__opc_loadh__regs__simm12_lo__reg0__
    UINT64_C(4099),	// i_load__opc_loadh__regs__simm12_lo__reg0_alias__
    UINT64_C(4099),	// i_load__opc_loadh__regs__simm12_lo__regs__
    UINT64_C(4099),	// i_load__opc_loadh__regs__simm12_pcrel_lo__reg0__
    UINT64_C(4099),	// i_load__opc_loadh__regs__simm12_pcrel_lo__reg0_alias__
    UINT64_C(4099),	// i_load__opc_loadh__regs__simm12_pcrel_lo__regs__
    UINT64_C(4099),	// i_load__opc_loadh__regs__simm12_simple__reg0__
    UINT64_C(4099),	// i_load__opc_loadh__regs__simm12_simple__reg0_alias__
    UINT64_C(4099),	// i_load__opc_loadh__regs__simm12_simple__regs__
    UINT64_C(20483),	// i_load__opc_loadhu__reg0__simm12_lo__reg0__
    UINT64_C(20483),	// i_load__opc_loadhu__reg0__simm12_lo__reg0_alias__
    UINT64_C(20483),	// i_load__opc_loadhu__reg0__simm12_lo__regs__
    UINT64_C(20483),	// i_load__opc_loadhu__reg0__simm12_pcrel_lo__reg0__
    UINT64_C(20483),	// i_load__opc_loadhu__reg0__simm12_pcrel_lo__reg0_alias__
    UINT64_C(20483),	// i_load__opc_loadhu__reg0__simm12_pcrel_lo__regs__
    UINT64_C(20483),	// i_load__opc_loadhu__reg0__simm12_simple__reg0__
    UINT64_C(20483),	// i_load__opc_loadhu__reg0__simm12_simple__reg0_alias__
    UINT64_C(20483),	// i_load__opc_loadhu__reg0__simm12_simple__regs__
    UINT64_C(20483),	// i_load__opc_loadhu__reg0_alias__simm12_lo__reg0__
    UINT64_C(20483),	// i_load__opc_loadhu__reg0_alias__simm12_lo__reg0_alias__
    UINT64_C(20483),	// i_load__opc_loadhu__reg0_alias__simm12_lo__regs__
    UINT64_C(20483),	// i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__reg0__
    UINT64_C(20483),	// i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__reg0_alias__
    UINT64_C(20483),	// i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__regs__
    UINT64_C(20483),	// i_load__opc_loadhu__reg0_alias__simm12_simple__reg0__
    UINT64_C(20483),	// i_load__opc_loadhu__reg0_alias__simm12_simple__reg0_alias__
    UINT64_C(20483),	// i_load__opc_loadhu__reg0_alias__simm12_simple__regs__
    UINT64_C(20483),	// i_load__opc_loadhu__regs__simm12_lo__reg0__
    UINT64_C(20483),	// i_load__opc_loadhu__regs__simm12_lo__reg0_alias__
    UINT64_C(20483),	// i_load__opc_loadhu__regs__simm12_lo__regs__
    UINT64_C(20483),	// i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0__
    UINT64_C(20483),	// i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0_alias__
    UINT64_C(20483),	// i_load__opc_loadhu__regs__simm12_pcrel_lo__regs__
    UINT64_C(20483),	// i_load__opc_loadhu__regs__simm12_simple__reg0__
    UINT64_C(20483),	// i_load__opc_loadhu__regs__simm12_simple__reg0_alias__
    UINT64_C(20483),	// i_load__opc_loadhu__regs__simm12_simple__regs__
    UINT64_C(8195),	// i_load__opc_loadw__reg0__simm12_lo__reg0__
    UINT64_C(8195),	// i_load__opc_loadw__reg0__simm12_lo__reg0_alias__
    UINT64_C(8195),	// i_load__opc_loadw__reg0__simm12_lo__regs__
    UINT64_C(8195),	// i_load__opc_loadw__reg0__simm12_pcrel_lo__reg0__
    UINT64_C(8195),	// i_load__opc_loadw__reg0__simm12_pcrel_lo__reg0_alias__
    UINT64_C(8195),	// i_load__opc_loadw__reg0__simm12_pcrel_lo__regs__
    UINT64_C(8195),	// i_load__opc_loadw__reg0__simm12_simple__reg0__
    UINT64_C(8195),	// i_load__opc_loadw__reg0__simm12_simple__reg0_alias__
    UINT64_C(8195),	// i_load__opc_loadw__reg0__simm12_simple__regs__
    UINT64_C(8195),	// i_load__opc_loadw__reg0_alias__simm12_lo__reg0__
    UINT64_C(8195),	// i_load__opc_loadw__reg0_alias__simm12_lo__reg0_alias__
    UINT64_C(8195),	// i_load__opc_loadw__reg0_alias__simm12_lo__regs__
    UINT64_C(8195),	// i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__reg0__
    UINT64_C(8195),	// i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__reg0_alias__
    UINT64_C(8195),	// i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__regs__
    UINT64_C(8195),	// i_load__opc_loadw__reg0_alias__simm12_simple__reg0__
    UINT64_C(8195),	// i_load__opc_loadw__reg0_alias__simm12_simple__reg0_alias__
    UINT64_C(8195),	// i_load__opc_loadw__reg0_alias__simm12_simple__regs__
    UINT64_C(8195),	// i_load__opc_loadw__regs__simm12_lo__reg0__
    UINT64_C(8195),	// i_load__opc_loadw__regs__simm12_lo__reg0_alias__
    UINT64_C(8195),	// i_load__opc_loadw__regs__simm12_lo__regs__
    UINT64_C(8195),	// i_load__opc_loadw__regs__simm12_pcrel_lo__reg0__
    UINT64_C(8195),	// i_load__opc_loadw__regs__simm12_pcrel_lo__reg0_alias__
    UINT64_C(8195),	// i_load__opc_loadw__regs__simm12_pcrel_lo__regs__
    UINT64_C(8195),	// i_load__opc_loadw__regs__simm12_simple__reg0__
    UINT64_C(8195),	// i_load__opc_loadw__regs__simm12_simple__reg0_alias__
    UINT64_C(8195),	// i_load__opc_loadw__regs__simm12_simple__regs__
    UINT64_C(3),	// i_load_alias__opc_loadb__reg0__reg0__
    UINT64_C(3),	// i_load_alias__opc_loadb__reg0__reg0_alias__
    UINT64_C(3),	// i_load_alias__opc_loadb__reg0__regs__
    UINT64_C(3),	// i_load_alias__opc_loadb__reg0_alias__reg0__
    UINT64_C(3),	// i_load_alias__opc_loadb__reg0_alias__reg0_alias__
    UINT64_C(3),	// i_load_alias__opc_loadb__reg0_alias__regs__
    UINT64_C(3),	// i_load_alias__opc_loadb__regs__reg0__
    UINT64_C(3),	// i_load_alias__opc_loadb__regs__reg0_alias__
    UINT64_C(3),	// i_load_alias__opc_loadb__regs__regs__
    UINT64_C(16387),	// i_load_alias__opc_loadbu__reg0__reg0__
    UINT64_C(16387),	// i_load_alias__opc_loadbu__reg0__reg0_alias__
    UINT64_C(16387),	// i_load_alias__opc_loadbu__reg0__regs__
    UINT64_C(16387),	// i_load_alias__opc_loadbu__reg0_alias__reg0__
    UINT64_C(16387),	// i_load_alias__opc_loadbu__reg0_alias__reg0_alias__
    UINT64_C(16387),	// i_load_alias__opc_loadbu__reg0_alias__regs__
    UINT64_C(16387),	// i_load_alias__opc_loadbu__regs__reg0__
    UINT64_C(16387),	// i_load_alias__opc_loadbu__regs__reg0_alias__
    UINT64_C(16387),	// i_load_alias__opc_loadbu__regs__regs__
    UINT64_C(4099),	// i_load_alias__opc_loadh__reg0__reg0__
    UINT64_C(4099),	// i_load_alias__opc_loadh__reg0__reg0_alias__
    UINT64_C(4099),	// i_load_alias__opc_loadh__reg0__regs__
    UINT64_C(4099),	// i_load_alias__opc_loadh__reg0_alias__reg0__
    UINT64_C(4099),	// i_load_alias__opc_loadh__reg0_alias__reg0_alias__
    UINT64_C(4099),	// i_load_alias__opc_loadh__reg0_alias__regs__
    UINT64_C(4099),	// i_load_alias__opc_loadh__regs__reg0__
    UINT64_C(4099),	// i_load_alias__opc_loadh__regs__reg0_alias__
    UINT64_C(4099),	// i_load_alias__opc_loadh__regs__regs__
    UINT64_C(20483),	// i_load_alias__opc_loadhu__reg0__reg0__
    UINT64_C(20483),	// i_load_alias__opc_loadhu__reg0__reg0_alias__
    UINT64_C(20483),	// i_load_alias__opc_loadhu__reg0__regs__
    UINT64_C(20483),	// i_load_alias__opc_loadhu__reg0_alias__reg0__
    UINT64_C(20483),	// i_load_alias__opc_loadhu__reg0_alias__reg0_alias__
    UINT64_C(20483),	// i_load_alias__opc_loadhu__reg0_alias__regs__
    UINT64_C(20483),	// i_load_alias__opc_loadhu__regs__reg0__
    UINT64_C(20483),	// i_load_alias__opc_loadhu__regs__reg0_alias__
    UINT64_C(20483),	// i_load_alias__opc_loadhu__regs__regs__
    UINT64_C(8195),	// i_load_alias__opc_loadw__reg0__reg0__
    UINT64_C(8195),	// i_load_alias__opc_loadw__reg0__reg0_alias__
    UINT64_C(8195),	// i_load_alias__opc_loadw__reg0__regs__
    UINT64_C(8195),	// i_load_alias__opc_loadw__reg0_alias__reg0__
    UINT64_C(8195),	// i_load_alias__opc_loadw__reg0_alias__reg0_alias__
    UINT64_C(8195),	// i_load_alias__opc_loadw__reg0_alias__regs__
    UINT64_C(8195),	// i_load_alias__opc_loadw__regs__reg0__
    UINT64_C(8195),	// i_load_alias__opc_loadw__regs__reg0_alias__
    UINT64_C(8195),	// i_load_alias__opc_loadw__regs__regs__
    UINT64_C(12884901911),	// i_load_global_alias__opc_loadb__reg0__rel_addr32__
    UINT64_C(12884901911),	// i_load_global_alias__opc_loadb__reg0_alias__rel_addr32__
    UINT64_C(12884901911),	// i_load_global_alias__opc_loadb__regs__rel_addr32__
    UINT64_C(70381629079575),	// i_load_global_alias__opc_loadbu__reg0__rel_addr32__
    UINT64_C(70381629079575),	// i_load_global_alias__opc_loadbu__reg0_alias__rel_addr32__
    UINT64_C(70381629079575),	// i_load_global_alias__opc_loadbu__regs__rel_addr32__
    UINT64_C(17605070946327),	// i_load_global_alias__opc_loadh__reg0__rel_addr32__
    UINT64_C(17605070946327),	// i_load_global_alias__opc_loadh__reg0_alias__rel_addr32__
    UINT64_C(17605070946327),	// i_load_global_alias__opc_loadh__regs__rel_addr32__
    UINT64_C(87973815123991),	// i_load_global_alias__opc_loadhu__reg0__rel_addr32__
    UINT64_C(87973815123991),	// i_load_global_alias__opc_loadhu__reg0_alias__rel_addr32__
    UINT64_C(87973815123991),	// i_load_global_alias__opc_loadhu__regs__rel_addr32__
    UINT64_C(35197256990743),	// i_load_global_alias__opc_loadw__reg0__rel_addr32__
    UINT64_C(35197256990743),	// i_load_global_alias__opc_loadw__reg0_alias__rel_addr32__
    UINT64_C(35197256990743),	// i_load_global_alias__opc_loadw__regs__rel_addr32__
    UINT64_C(55),	// i_lui__opc_lui__reg0__imm20_s12__
    UINT64_C(55),	// i_lui__opc_lui__reg0_alias__imm20_s12__
    UINT64_C(55),	// i_lui__opc_lui__regs__imm20_s12__
    UINT64_C(55),	// i_lui_hi__opc_lui__reg0__imm20_hi__
    UINT64_C(55),	// i_lui_hi__opc_lui__reg0_alias__imm20_hi__
    UINT64_C(55),	// i_lui_hi__opc_lui__regs__imm20_hi__
    UINT64_C(19),	// i_move_alias__reg0__reg0__
    UINT64_C(19),	// i_move_alias__reg0__reg0_alias__
    UINT64_C(19),	// i_move_alias__reg0__regs__
    UINT64_C(19),	// i_move_alias__reg0_alias__reg0__
    UINT64_C(19),	// i_move_alias__reg0_alias__reg0_alias__
    UINT64_C(19),	// i_move_alias__reg0_alias__regs__
    UINT64_C(19),	// i_move_alias__regs__reg0__
    UINT64_C(19),	// i_move_alias__regs__reg0_alias__
    UINT64_C(19),	// i_move_alias__regs__regs__
    UINT64_C(19),	// i_mv_alias__reg0__reg0__
    UINT64_C(19),	// i_mv_alias__reg0__reg0_alias__
    UINT64_C(19),	// i_mv_alias__reg0__regs__
    UINT64_C(19),	// i_mv_alias__reg0_alias__reg0__
    UINT64_C(19),	// i_mv_alias__reg0_alias__reg0_alias__
    UINT64_C(19),	// i_mv_alias__reg0_alias__regs__
    UINT64_C(19),	// i_mv_alias__regs__reg0__
    UINT64_C(19),	// i_mv_alias__regs__reg0_alias__
    UINT64_C(19),	// i_mv_alias__regs__regs__
    UINT64_C(1073741875),	// i_neg_alias__reg0__reg0__
    UINT64_C(1073741875),	// i_neg_alias__reg0__reg0_alias__
    UINT64_C(1073741875),	// i_neg_alias__reg0__regs__
    UINT64_C(1073741875),	// i_neg_alias__reg0_alias__reg0__
    UINT64_C(1073741875),	// i_neg_alias__reg0_alias__reg0_alias__
    UINT64_C(1073741875),	// i_neg_alias__reg0_alias__regs__
    UINT64_C(1073741875),	// i_neg_alias__regs__reg0__
    UINT64_C(1073741875),	// i_neg_alias__regs__reg0_alias__
    UINT64_C(1073741875),	// i_neg_alias__regs__regs__
    UINT64_C(19),	// i_nop_alias__
    UINT64_C(4293935123),	// i_not_alias__reg0__reg0__
    UINT64_C(4293935123),	// i_not_alias__reg0__reg0_alias__
    UINT64_C(4293935123),	// i_not_alias__reg0__regs__
    UINT64_C(4293935123),	// i_not_alias__reg0_alias__reg0__
    UINT64_C(4293935123),	// i_not_alias__reg0_alias__reg0_alias__
    UINT64_C(4293935123),	// i_not_alias__reg0_alias__regs__
    UINT64_C(4293935123),	// i_not_alias__regs__reg0__
    UINT64_C(4293935123),	// i_not_alias__regs__reg0_alias__
    UINT64_C(4293935123),	// i_not_alias__regs__regs__
    UINT64_C(24595),	// i_ori_alias__reg0__reg0__simm12_lo__
    UINT64_C(24595),	// i_ori_alias__reg0__reg0__simm12_pcrel_lo__
    UINT64_C(24595),	// i_ori_alias__reg0__reg0__simm12_simple__
    UINT64_C(24595),	// i_ori_alias__reg0__reg0_alias__simm12_lo__
    UINT64_C(24595),	// i_ori_alias__reg0__reg0_alias__simm12_pcrel_lo__
    UINT64_C(24595),	// i_ori_alias__reg0__reg0_alias__simm12_simple__
    UINT64_C(24595),	// i_ori_alias__reg0__regs__simm12_lo__
    UINT64_C(24595),	// i_ori_alias__reg0__regs__simm12_pcrel_lo__
    UINT64_C(24595),	// i_ori_alias__reg0__regs__simm12_simple__
    UINT64_C(24595),	// i_ori_alias__reg0_alias__reg0__simm12_lo__
    UINT64_C(24595),	// i_ori_alias__reg0_alias__reg0__simm12_pcrel_lo__
    UINT64_C(24595),	// i_ori_alias__reg0_alias__reg0__simm12_simple__
    UINT64_C(24595),	// i_ori_alias__reg0_alias__reg0_alias__simm12_lo__
    UINT64_C(24595),	// i_ori_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__
    UINT64_C(24595),	// i_ori_alias__reg0_alias__reg0_alias__simm12_simple__
    UINT64_C(24595),	// i_ori_alias__reg0_alias__regs__simm12_lo__
    UINT64_C(24595),	// i_ori_alias__reg0_alias__regs__simm12_pcrel_lo__
    UINT64_C(24595),	// i_ori_alias__reg0_alias__regs__simm12_simple__
    UINT64_C(24595),	// i_ori_alias__regs__reg0__simm12_lo__
    UINT64_C(24595),	// i_ori_alias__regs__reg0__simm12_pcrel_lo__
    UINT64_C(24595),	// i_ori_alias__regs__reg0__simm12_simple__
    UINT64_C(24595),	// i_ori_alias__regs__reg0_alias__simm12_lo__
    UINT64_C(24595),	// i_ori_alias__regs__reg0_alias__simm12_pcrel_lo__
    UINT64_C(24595),	// i_ori_alias__regs__reg0_alias__simm12_simple__
    UINT64_C(24595),	// i_ori_alias__regs__regs__simm12_lo__
    UINT64_C(24595),	// i_ori_alias__regs__regs__simm12_pcrel_lo__
    UINT64_C(24595),	// i_ori_alias__regs__regs__simm12_simple__
    UINT64_C(32871),	// i_ret_alias__
    UINT64_C(1060883),	// i_seqz_alias__reg0__reg0__
    UINT64_C(1060883),	// i_seqz_alias__reg0__reg0_alias__
    UINT64_C(1060883),	// i_seqz_alias__reg0__regs__
    UINT64_C(1060883),	// i_seqz_alias__reg0_alias__reg0__
    UINT64_C(1060883),	// i_seqz_alias__reg0_alias__reg0_alias__
    UINT64_C(1060883),	// i_seqz_alias__reg0_alias__regs__
    UINT64_C(1060883),	// i_seqz_alias__regs__reg0__
    UINT64_C(1060883),	// i_seqz_alias__regs__reg0_alias__
    UINT64_C(1060883),	// i_seqz_alias__regs__regs__
    UINT64_C(8243),	// i_sgtz_alias__reg0__reg0__
    UINT64_C(8243),	// i_sgtz_alias__reg0__reg0_alias__
    UINT64_C(8243),	// i_sgtz_alias__reg0__regs__
    UINT64_C(8243),	// i_sgtz_alias__reg0_alias__reg0__
    UINT64_C(8243),	// i_sgtz_alias__reg0_alias__reg0_alias__
    UINT64_C(8243),	// i_sgtz_alias__reg0_alias__regs__
    UINT64_C(8243),	// i_sgtz_alias__regs__reg0__
    UINT64_C(8243),	// i_sgtz_alias__regs__reg0_alias__
    UINT64_C(8243),	// i_sgtz_alias__regs__regs__
    UINT64_C(8243),	// i_sltz_alias__reg0__reg0__
    UINT64_C(8243),	// i_sltz_alias__reg0__reg0_alias__
    UINT64_C(8243),	// i_sltz_alias__reg0__regs__
    UINT64_C(8243),	// i_sltz_alias__reg0_alias__reg0__
    UINT64_C(8243),	// i_sltz_alias__reg0_alias__reg0_alias__
    UINT64_C(8243),	// i_sltz_alias__reg0_alias__regs__
    UINT64_C(8243),	// i_sltz_alias__regs__reg0__
    UINT64_C(8243),	// i_sltz_alias__regs__reg0_alias__
    UINT64_C(8243),	// i_sltz_alias__regs__regs__
    UINT64_C(12339),	// i_snez_alias__reg0__reg0__
    UINT64_C(12339),	// i_snez_alias__reg0__reg0_alias__
    UINT64_C(12339),	// i_snez_alias__reg0__regs__
    UINT64_C(12339),	// i_snez_alias__reg0_alias__reg0__
    UINT64_C(12339),	// i_snez_alias__reg0_alias__reg0_alias__
    UINT64_C(12339),	// i_snez_alias__reg0_alias__regs__
    UINT64_C(12339),	// i_snez_alias__regs__reg0__
    UINT64_C(12339),	// i_snez_alias__regs__reg0_alias__
    UINT64_C(12339),	// i_snez_alias__regs__regs__
    UINT64_C(35),	// i_store__opc_storeb__reg0__simm12_s_lo__reg0__
    UINT64_C(35),	// i_store__opc_storeb__reg0__simm12_s_lo__reg0_alias__
    UINT64_C(35),	// i_store__opc_storeb__reg0__simm12_s_lo__regs__
    UINT64_C(35),	// i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0__
    UINT64_C(35),	// i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0_alias__
    UINT64_C(35),	// i_store__opc_storeb__reg0__simm12_s_pcrel_lo__regs__
    UINT64_C(35),	// i_store__opc_storeb__reg0__simm12_simple__reg0__
    UINT64_C(35),	// i_store__opc_storeb__reg0__simm12_simple__reg0_alias__
    UINT64_C(35),	// i_store__opc_storeb__reg0__simm12_simple__regs__
    UINT64_C(35),	// i_store__opc_storeb__reg0_alias__simm12_s_lo__reg0__
    UINT64_C(35),	// i_store__opc_storeb__reg0_alias__simm12_s_lo__reg0_alias__
    UINT64_C(35),	// i_store__opc_storeb__reg0_alias__simm12_s_lo__regs__
    UINT64_C(35),	// i_store__opc_storeb__reg0_alias__simm12_s_pcrel_lo__reg0__
    UINT64_C(35),	// i_store__opc_storeb__reg0_alias__simm12_s_pcrel_lo__reg0_alias__
    UINT64_C(35),	// i_store__opc_storeb__reg0_alias__simm12_s_pcrel_lo__regs__
    UINT64_C(35),	// i_store__opc_storeb__reg0_alias__simm12_simple__reg0__
    UINT64_C(35),	// i_store__opc_storeb__reg0_alias__simm12_simple__reg0_alias__
    UINT64_C(35),	// i_store__opc_storeb__reg0_alias__simm12_simple__regs__
    UINT64_C(35),	// i_store__opc_storeb__regs__simm12_s_lo__reg0__
    UINT64_C(35),	// i_store__opc_storeb__regs__simm12_s_lo__reg0_alias__
    UINT64_C(35),	// i_store__opc_storeb__regs__simm12_s_lo__regs__
    UINT64_C(35),	// i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0__
    UINT64_C(35),	// i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0_alias__
    UINT64_C(35),	// i_store__opc_storeb__regs__simm12_s_pcrel_lo__regs__
    UINT64_C(35),	// i_store__opc_storeb__regs__simm12_simple__reg0__
    UINT64_C(35),	// i_store__opc_storeb__regs__simm12_simple__reg0_alias__
    UINT64_C(35),	// i_store__opc_storeb__regs__simm12_simple__regs__
    UINT64_C(4131),	// i_store__opc_storeh__reg0__simm12_s_lo__reg0__
    UINT64_C(4131),	// i_store__opc_storeh__reg0__simm12_s_lo__reg0_alias__
    UINT64_C(4131),	// i_store__opc_storeh__reg0__simm12_s_lo__regs__
    UINT64_C(4131),	// i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0__
    UINT64_C(4131),	// i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0_alias__
    UINT64_C(4131),	// i_store__opc_storeh__reg0__simm12_s_pcrel_lo__regs__
    UINT64_C(4131),	// i_store__opc_storeh__reg0__simm12_simple__reg0__
    UINT64_C(4131),	// i_store__opc_storeh__reg0__simm12_simple__reg0_alias__
    UINT64_C(4131),	// i_store__opc_storeh__reg0__simm12_simple__regs__
    UINT64_C(4131),	// i_store__opc_storeh__reg0_alias__simm12_s_lo__reg0__
    UINT64_C(4131),	// i_store__opc_storeh__reg0_alias__simm12_s_lo__reg0_alias__
    UINT64_C(4131),	// i_store__opc_storeh__reg0_alias__simm12_s_lo__regs__
    UINT64_C(4131),	// i_store__opc_storeh__reg0_alias__simm12_s_pcrel_lo__reg0__
    UINT64_C(4131),	// i_store__opc_storeh__reg0_alias__simm12_s_pcrel_lo__reg0_alias__
    UINT64_C(4131),	// i_store__opc_storeh__reg0_alias__simm12_s_pcrel_lo__regs__
    UINT64_C(4131),	// i_store__opc_storeh__reg0_alias__simm12_simple__reg0__
    UINT64_C(4131),	// i_store__opc_storeh__reg0_alias__simm12_simple__reg0_alias__
    UINT64_C(4131),	// i_store__opc_storeh__reg0_alias__simm12_simple__regs__
    UINT64_C(4131),	// i_store__opc_storeh__regs__simm12_s_lo__reg0__
    UINT64_C(4131),	// i_store__opc_storeh__regs__simm12_s_lo__reg0_alias__
    UINT64_C(4131),	// i_store__opc_storeh__regs__simm12_s_lo__regs__
    UINT64_C(4131),	// i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0__
    UINT64_C(4131),	// i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0_alias__
    UINT64_C(4131),	// i_store__opc_storeh__regs__simm12_s_pcrel_lo__regs__
    UINT64_C(4131),	// i_store__opc_storeh__regs__simm12_simple__reg0__
    UINT64_C(4131),	// i_store__opc_storeh__regs__simm12_simple__reg0_alias__
    UINT64_C(4131),	// i_store__opc_storeh__regs__simm12_simple__regs__
    UINT64_C(8227),	// i_store__opc_storew__reg0__simm12_s_lo__reg0__
    UINT64_C(8227),	// i_store__opc_storew__reg0__simm12_s_lo__reg0_alias__
    UINT64_C(8227),	// i_store__opc_storew__reg0__simm12_s_lo__regs__
    UINT64_C(8227),	// i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0__
    UINT64_C(8227),	// i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0_alias__
    UINT64_C(8227),	// i_store__opc_storew__reg0__simm12_s_pcrel_lo__regs__
    UINT64_C(8227),	// i_store__opc_storew__reg0__simm12_simple__reg0__
    UINT64_C(8227),	// i_store__opc_storew__reg0__simm12_simple__reg0_alias__
    UINT64_C(8227),	// i_store__opc_storew__reg0__simm12_simple__regs__
    UINT64_C(8227),	// i_store__opc_storew__reg0_alias__simm12_s_lo__reg0__
    UINT64_C(8227),	// i_store__opc_storew__reg0_alias__simm12_s_lo__reg0_alias__
    UINT64_C(8227),	// i_store__opc_storew__reg0_alias__simm12_s_lo__regs__
    UINT64_C(8227),	// i_store__opc_storew__reg0_alias__simm12_s_pcrel_lo__reg0__
    UINT64_C(8227),	// i_store__opc_storew__reg0_alias__simm12_s_pcrel_lo__reg0_alias__
    UINT64_C(8227),	// i_store__opc_storew__reg0_alias__simm12_s_pcrel_lo__regs__
    UINT64_C(8227),	// i_store__opc_storew__reg0_alias__simm12_simple__reg0__
    UINT64_C(8227),	// i_store__opc_storew__reg0_alias__simm12_simple__reg0_alias__
    UINT64_C(8227),	// i_store__opc_storew__reg0_alias__simm12_simple__regs__
    UINT64_C(8227),	// i_store__opc_storew__regs__simm12_s_lo__reg0__
    UINT64_C(8227),	// i_store__opc_storew__regs__simm12_s_lo__reg0_alias__
    UINT64_C(8227),	// i_store__opc_storew__regs__simm12_s_lo__regs__
    UINT64_C(8227),	// i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0__
    UINT64_C(8227),	// i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0_alias__
    UINT64_C(8227),	// i_store__opc_storew__regs__simm12_s_pcrel_lo__regs__
    UINT64_C(8227),	// i_store__opc_storew__regs__simm12_simple__reg0__
    UINT64_C(8227),	// i_store__opc_storew__regs__simm12_simple__reg0_alias__
    UINT64_C(8227),	// i_store__opc_storew__regs__simm12_simple__regs__
    UINT64_C(35),	// i_store_alias__opc_storeb__reg0__reg0__
    UINT64_C(35),	// i_store_alias__opc_storeb__reg0__reg0_alias__
    UINT64_C(35),	// i_store_alias__opc_storeb__reg0__regs__
    UINT64_C(35),	// i_store_alias__opc_storeb__reg0_alias__reg0__
    UINT64_C(35),	// i_store_alias__opc_storeb__reg0_alias__reg0_alias__
    UINT64_C(35),	// i_store_alias__opc_storeb__reg0_alias__regs__
    UINT64_C(35),	// i_store_alias__opc_storeb__regs__reg0__
    UINT64_C(35),	// i_store_alias__opc_storeb__regs__reg0_alias__
    UINT64_C(35),	// i_store_alias__opc_storeb__regs__regs__
    UINT64_C(4131),	// i_store_alias__opc_storeh__reg0__reg0__
    UINT64_C(4131),	// i_store_alias__opc_storeh__reg0__reg0_alias__
    UINT64_C(4131),	// i_store_alias__opc_storeh__reg0__regs__
    UINT64_C(4131),	// i_store_alias__opc_storeh__reg0_alias__reg0__
    UINT64_C(4131),	// i_store_alias__opc_storeh__reg0_alias__reg0_alias__
    UINT64_C(4131),	// i_store_alias__opc_storeh__reg0_alias__regs__
    UINT64_C(4131),	// i_store_alias__opc_storeh__regs__reg0__
    UINT64_C(4131),	// i_store_alias__opc_storeh__regs__reg0_alias__
    UINT64_C(4131),	// i_store_alias__opc_storeh__regs__regs__
    UINT64_C(8227),	// i_store_alias__opc_storew__reg0__reg0__
    UINT64_C(8227),	// i_store_alias__opc_storew__reg0__reg0_alias__
    UINT64_C(8227),	// i_store_alias__opc_storew__reg0__regs__
    UINT64_C(8227),	// i_store_alias__opc_storew__reg0_alias__reg0__
    UINT64_C(8227),	// i_store_alias__opc_storew__reg0_alias__reg0_alias__
    UINT64_C(8227),	// i_store_alias__opc_storew__reg0_alias__regs__
    UINT64_C(8227),	// i_store_alias__opc_storew__regs__reg0__
    UINT64_C(8227),	// i_store_alias__opc_storew__regs__reg0_alias__
    UINT64_C(8227),	// i_store_alias__opc_storew__regs__regs__
    UINT64_C(150323855383),	// i_store_global_alias__opc_storeb__reg0__rel_addr32__reg0__
    UINT64_C(150323855383),	// i_store_global_alias__opc_storeb__reg0__rel_addr32__reg0_alias__
    UINT64_C(150323855383),	// i_store_global_alias__opc_storeb__reg0__rel_addr32__regs__
    UINT64_C(150323855383),	// i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__reg0__
    UINT64_C(150323855383),	// i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__reg0_alias__
    UINT64_C(150323855383),	// i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__regs__
    UINT64_C(150323855383),	// i_store_global_alias__opc_storeb__regs__rel_addr32__reg0__
    UINT64_C(150323855383),	// i_store_global_alias__opc_storeb__regs__rel_addr32__reg0_alias__
    UINT64_C(150323855383),	// i_store_global_alias__opc_storeb__regs__rel_addr32__regs__
    UINT64_C(17742509899799),	// i_store_global_alias__opc_storeh__reg0__rel_addr32__reg0__
    UINT64_C(17742509899799),	// i_store_global_alias__opc_storeh__reg0__rel_addr32__reg0_alias__
    UINT64_C(17742509899799),	// i_store_global_alias__opc_storeh__reg0__rel_addr32__regs__
    UINT64_C(17742509899799),	// i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__reg0__
    UINT64_C(17742509899799),	// i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__reg0_alias__
    UINT64_C(17742509899799),	// i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__regs__
    UINT64_C(17742509899799),	// i_store_global_alias__opc_storeh__regs__rel_addr32__reg0__
    UINT64_C(17742509899799),	// i_store_global_alias__opc_storeh__regs__rel_addr32__reg0_alias__
    UINT64_C(17742509899799),	// i_store_global_alias__opc_storeh__regs__rel_addr32__regs__
    UINT64_C(35334695944215),	// i_store_global_alias__opc_storew__reg0__rel_addr32__reg0__
    UINT64_C(35334695944215),	// i_store_global_alias__opc_storew__reg0__rel_addr32__reg0_alias__
    UINT64_C(35334695944215),	// i_store_global_alias__opc_storew__reg0__rel_addr32__regs__
    UINT64_C(35334695944215),	// i_store_global_alias__opc_storew__reg0_alias__rel_addr32__reg0__
    UINT64_C(35334695944215),	// i_store_global_alias__opc_storew__reg0_alias__rel_addr32__reg0_alias__
    UINT64_C(35334695944215),	// i_store_global_alias__opc_storew__reg0_alias__rel_addr32__regs__
    UINT64_C(35334695944215),	// i_store_global_alias__opc_storew__regs__rel_addr32__reg0__
    UINT64_C(35334695944215),	// i_store_global_alias__opc_storew__regs__rel_addr32__reg0_alias__
    UINT64_C(35334695944215),	// i_store_global_alias__opc_storew__regs__rel_addr32__regs__
    UINT64_C(844867311764247),	// i_tail_alias__rel_addr32_call_tail_simple__
    UINT64_C(3221233779),	// i_timers_counters_aliases__opc_rdcycle__reg0__
    UINT64_C(3221233779),	// i_timers_counters_aliases__opc_rdcycle__reg0_alias__
    UINT64_C(3221233779),	// i_timers_counters_aliases__opc_rdcycle__regs__
    UINT64_C(3355451507),	// i_timers_counters_aliases__opc_rdcycleh__reg0__
    UINT64_C(3355451507),	// i_timers_counters_aliases__opc_rdcycleh__reg0_alias__
    UINT64_C(3355451507),	// i_timers_counters_aliases__opc_rdcycleh__regs__
    UINT64_C(3223330931),	// i_timers_counters_aliases__opc_rdinstret__reg0__
    UINT64_C(3223330931),	// i_timers_counters_aliases__opc_rdinstret__reg0_alias__
    UINT64_C(3223330931),	// i_timers_counters_aliases__opc_rdinstret__regs__
    UINT64_C(3357548659),	// i_timers_counters_aliases__opc_rdinstreth__reg0__
    UINT64_C(3357548659),	// i_timers_counters_aliases__opc_rdinstreth__reg0_alias__
    UINT64_C(3357548659),	// i_timers_counters_aliases__opc_rdinstreth__regs__
    UINT64_C(3222282355),	// i_timers_counters_aliases__opc_rdtime__reg0__
    UINT64_C(3222282355),	// i_timers_counters_aliases__opc_rdtime__reg0_alias__
    UINT64_C(3222282355),	// i_timers_counters_aliases__opc_rdtime__regs__
    UINT64_C(3356500083),	// i_timers_counters_aliases__opc_rdtimeh__reg0__
    UINT64_C(3356500083),	// i_timers_counters_aliases__opc_rdtimeh__reg0_alias__
    UINT64_C(3356500083),	// i_timers_counters_aliases__opc_rdtimeh__regs__
    UINT64_C(3221229695),	// i_unimp__opc_unimp__
    UINT64_C(273678451),	// i_wfi__opc_wfi__
    UINT64_C(16403),	// i_xori_alias__reg0__reg0__simm12_lo__
    UINT64_C(16403),	// i_xori_alias__reg0__reg0__simm12_pcrel_lo__
    UINT64_C(16403),	// i_xori_alias__reg0__reg0__simm12_simple__
    UINT64_C(16403),	// i_xori_alias__reg0__reg0_alias__simm12_lo__
    UINT64_C(16403),	// i_xori_alias__reg0__reg0_alias__simm12_pcrel_lo__
    UINT64_C(16403),	// i_xori_alias__reg0__reg0_alias__simm12_simple__
    UINT64_C(16403),	// i_xori_alias__reg0__regs__simm12_lo__
    UINT64_C(16403),	// i_xori_alias__reg0__regs__simm12_pcrel_lo__
    UINT64_C(16403),	// i_xori_alias__reg0__regs__simm12_simple__
    UINT64_C(16403),	// i_xori_alias__reg0_alias__reg0__simm12_lo__
    UINT64_C(16403),	// i_xori_alias__reg0_alias__reg0__simm12_pcrel_lo__
    UINT64_C(16403),	// i_xori_alias__reg0_alias__reg0__simm12_simple__
    UINT64_C(16403),	// i_xori_alias__reg0_alias__reg0_alias__simm12_lo__
    UINT64_C(16403),	// i_xori_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__
    UINT64_C(16403),	// i_xori_alias__reg0_alias__reg0_alias__simm12_simple__
    UINT64_C(16403),	// i_xori_alias__reg0_alias__regs__simm12_lo__
    UINT64_C(16403),	// i_xori_alias__reg0_alias__regs__simm12_pcrel_lo__
    UINT64_C(16403),	// i_xori_alias__reg0_alias__regs__simm12_simple__
    UINT64_C(16403),	// i_xori_alias__regs__reg0__simm12_lo__
    UINT64_C(16403),	// i_xori_alias__regs__reg0__simm12_pcrel_lo__
    UINT64_C(16403),	// i_xori_alias__regs__reg0__simm12_simple__
    UINT64_C(16403),	// i_xori_alias__regs__reg0_alias__simm12_lo__
    UINT64_C(16403),	// i_xori_alias__regs__reg0_alias__simm12_pcrel_lo__
    UINT64_C(16403),	// i_xori_alias__regs__reg0_alias__simm12_simple__
    UINT64_C(16403),	// i_xori_alias__regs__regs__simm12_lo__
    UINT64_C(16403),	// i_xori_alias__regs__regs__simm12_pcrel_lo__
    UINT64_C(16403),	// i_xori_alias__regs__regs__simm12_simple__
    UINT64_C(807403635),	// i_xret__opc_mret__
    UINT64_C(0)
  };
  const unsigned opcode = MI.getOpcode();
  uint64_t Value = InstBits[opcode];
  uint64_t op = 0;
  (void)op;  // suppress warning
  switch (opcode) {
    case Codasip::i_call_reg_alias__reg0__:
    case Codasip::i_call_reg_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_add__reg0__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_add__reg0__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_add__reg0__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_add__reg0__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_add__reg0_alias__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_add__reg0_alias__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_add__reg0_alias__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_add__reg0_alias__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_and__reg0__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_and__reg0__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_and__reg0__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_and__reg0__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_and__reg0_alias__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_and__reg0_alias__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_and__reg0_alias__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_and__reg0_alias__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_or__reg0__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_or__reg0__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_or__reg0__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_or__reg0__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_or__reg0_alias__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_or__reg0_alias__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_or__reg0_alias__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_or__reg0_alias__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sll__reg0__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_sll__reg0__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sll__reg0__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_sll__reg0__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sll__reg0_alias__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_sll__reg0_alias__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sll__reg0_alias__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_sll__reg0_alias__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_slt__reg0__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_slt__reg0__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_slt__reg0__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_slt__reg0__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_slt__reg0_alias__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_slt__reg0_alias__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_slt__reg0_alias__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_slt__reg0_alias__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sltu__reg0__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_sltu__reg0__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sltu__reg0__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_sltu__reg0__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sltu__reg0_alias__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_sltu__reg0_alias__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sltu__reg0_alias__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_sltu__reg0_alias__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sra__reg0__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_sra__reg0__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sra__reg0__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_sra__reg0__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sra__reg0_alias__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_sra__reg0_alias__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sra__reg0_alias__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_sra__reg0_alias__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_srl__reg0__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_srl__reg0__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_srl__reg0__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_srl__reg0__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_srl__reg0_alias__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_srl__reg0_alias__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_srl__reg0_alias__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_srl__reg0_alias__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sub__reg0__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_sub__reg0__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sub__reg0__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_sub__reg0__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sub__reg0_alias__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_sub__reg0_alias__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sub__reg0_alias__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_sub__reg0_alias__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_xor__reg0__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_xor__reg0__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_xor__reg0__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_xor__reg0__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_xor__reg0_alias__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_xor__reg0_alias__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_xor__reg0_alias__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_xor__reg0_alias__reg0_alias__reg0_alias__:
    case Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_:
    case Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA:
    case Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC:
    case Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_:
    case Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA:
    case Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC:
    case Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_:
    case Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA:
    case Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC:
    case Codasip::i_ebreak__opc_ebreak__:
    case Codasip::i_ecall__opc_ecall__:
    case Codasip::i_ecall_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0_alias__reg0_alias__:
    case Codasip::i_fence__opc_fence__opc_hint_fence__opc_hint_fence__:
    case Codasip::i_fence__opc_fence__opc_hint_fence__opc_i_fence__:
    case Codasip::i_fence__opc_fence__opc_hint_fence__opc_io_fence__:
    case Codasip::i_fence__opc_fence__opc_hint_fence__opc_ior_fence__:
    case Codasip::i_fence__opc_fence__opc_hint_fence__opc_iorw_fence__:
    case Codasip::i_fence__opc_fence__opc_hint_fence__opc_iow_fence__:
    case Codasip::i_fence__opc_fence__opc_hint_fence__opc_ir_fence__:
    case Codasip::i_fence__opc_fence__opc_hint_fence__opc_irw_fence__:
    case Codasip::i_fence__opc_fence__opc_hint_fence__opc_iw_fence__:
    case Codasip::i_fence__opc_fence__opc_hint_fence__opc_o_fence__:
    case Codasip::i_fence__opc_fence__opc_hint_fence__opc_or_fence__:
    case Codasip::i_fence__opc_fence__opc_hint_fence__opc_orw_fence__:
    case Codasip::i_fence__opc_fence__opc_hint_fence__opc_ow_fence__:
    case Codasip::i_fence__opc_fence__opc_hint_fence__opc_r_fence__:
    case Codasip::i_fence__opc_fence__opc_hint_fence__opc_rw_fence__:
    case Codasip::i_fence__opc_fence__opc_hint_fence__opc_w_fence__:
    case Codasip::i_fence__opc_fence__opc_i_fence__opc_hint_fence__:
    case Codasip::i_fence__opc_fence__opc_i_fence__opc_i_fence__:
    case Codasip::i_fence__opc_fence__opc_i_fence__opc_io_fence__:
    case Codasip::i_fence__opc_fence__opc_i_fence__opc_ior_fence__:
    case Codasip::i_fence__opc_fence__opc_i_fence__opc_iorw_fence__:
    case Codasip::i_fence__opc_fence__opc_i_fence__opc_iow_fence__:
    case Codasip::i_fence__opc_fence__opc_i_fence__opc_ir_fence__:
    case Codasip::i_fence__opc_fence__opc_i_fence__opc_irw_fence__:
    case Codasip::i_fence__opc_fence__opc_i_fence__opc_iw_fence__:
    case Codasip::i_fence__opc_fence__opc_i_fence__opc_o_fence__:
    case Codasip::i_fence__opc_fence__opc_i_fence__opc_or_fence__:
    case Codasip::i_fence__opc_fence__opc_i_fence__opc_orw_fence__:
    case Codasip::i_fence__opc_fence__opc_i_fence__opc_ow_fence__:
    case Codasip::i_fence__opc_fence__opc_i_fence__opc_r_fence__:
    case Codasip::i_fence__opc_fence__opc_i_fence__opc_rw_fence__:
    case Codasip::i_fence__opc_fence__opc_i_fence__opc_w_fence__:
    case Codasip::i_fence__opc_fence__opc_io_fence__opc_hint_fence__:
    case Codasip::i_fence__opc_fence__opc_io_fence__opc_i_fence__:
    case Codasip::i_fence__opc_fence__opc_io_fence__opc_io_fence__:
    case Codasip::i_fence__opc_fence__opc_io_fence__opc_ior_fence__:
    case Codasip::i_fence__opc_fence__opc_io_fence__opc_iorw_fence__:
    case Codasip::i_fence__opc_fence__opc_io_fence__opc_iow_fence__:
    case Codasip::i_fence__opc_fence__opc_io_fence__opc_ir_fence__:
    case Codasip::i_fence__opc_fence__opc_io_fence__opc_irw_fence__:
    case Codasip::i_fence__opc_fence__opc_io_fence__opc_iw_fence__:
    case Codasip::i_fence__opc_fence__opc_io_fence__opc_o_fence__:
    case Codasip::i_fence__opc_fence__opc_io_fence__opc_or_fence__:
    case Codasip::i_fence__opc_fence__opc_io_fence__opc_orw_fence__:
    case Codasip::i_fence__opc_fence__opc_io_fence__opc_ow_fence__:
    case Codasip::i_fence__opc_fence__opc_io_fence__opc_r_fence__:
    case Codasip::i_fence__opc_fence__opc_io_fence__opc_rw_fence__:
    case Codasip::i_fence__opc_fence__opc_io_fence__opc_w_fence__:
    case Codasip::i_fence__opc_fence__opc_ior_fence__opc_hint_fence__:
    case Codasip::i_fence__opc_fence__opc_ior_fence__opc_i_fence__:
    case Codasip::i_fence__opc_fence__opc_ior_fence__opc_io_fence__:
    case Codasip::i_fence__opc_fence__opc_ior_fence__opc_ior_fence__:
    case Codasip::i_fence__opc_fence__opc_ior_fence__opc_iorw_fence__:
    case Codasip::i_fence__opc_fence__opc_ior_fence__opc_iow_fence__:
    case Codasip::i_fence__opc_fence__opc_ior_fence__opc_ir_fence__:
    case Codasip::i_fence__opc_fence__opc_ior_fence__opc_irw_fence__:
    case Codasip::i_fence__opc_fence__opc_ior_fence__opc_iw_fence__:
    case Codasip::i_fence__opc_fence__opc_ior_fence__opc_o_fence__:
    case Codasip::i_fence__opc_fence__opc_ior_fence__opc_or_fence__:
    case Codasip::i_fence__opc_fence__opc_ior_fence__opc_orw_fence__:
    case Codasip::i_fence__opc_fence__opc_ior_fence__opc_ow_fence__:
    case Codasip::i_fence__opc_fence__opc_ior_fence__opc_r_fence__:
    case Codasip::i_fence__opc_fence__opc_ior_fence__opc_rw_fence__:
    case Codasip::i_fence__opc_fence__opc_ior_fence__opc_w_fence__:
    case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_hint_fence__:
    case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_i_fence__:
    case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_io_fence__:
    case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_ior_fence__:
    case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_iorw_fence__:
    case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_iow_fence__:
    case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_ir_fence__:
    case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_irw_fence__:
    case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_iw_fence__:
    case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_o_fence__:
    case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_or_fence__:
    case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_orw_fence__:
    case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_ow_fence__:
    case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_r_fence__:
    case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_rw_fence__:
    case Codasip::i_fence__opc_fence__opc_iorw_fence__opc_w_fence__:
    case Codasip::i_fence__opc_fence__opc_iow_fence__opc_hint_fence__:
    case Codasip::i_fence__opc_fence__opc_iow_fence__opc_i_fence__:
    case Codasip::i_fence__opc_fence__opc_iow_fence__opc_io_fence__:
    case Codasip::i_fence__opc_fence__opc_iow_fence__opc_ior_fence__:
    case Codasip::i_fence__opc_fence__opc_iow_fence__opc_iorw_fence__:
    case Codasip::i_fence__opc_fence__opc_iow_fence__opc_iow_fence__:
    case Codasip::i_fence__opc_fence__opc_iow_fence__opc_ir_fence__:
    case Codasip::i_fence__opc_fence__opc_iow_fence__opc_irw_fence__:
    case Codasip::i_fence__opc_fence__opc_iow_fence__opc_iw_fence__:
    case Codasip::i_fence__opc_fence__opc_iow_fence__opc_o_fence__:
    case Codasip::i_fence__opc_fence__opc_iow_fence__opc_or_fence__:
    case Codasip::i_fence__opc_fence__opc_iow_fence__opc_orw_fence__:
    case Codasip::i_fence__opc_fence__opc_iow_fence__opc_ow_fence__:
    case Codasip::i_fence__opc_fence__opc_iow_fence__opc_r_fence__:
    case Codasip::i_fence__opc_fence__opc_iow_fence__opc_rw_fence__:
    case Codasip::i_fence__opc_fence__opc_iow_fence__opc_w_fence__:
    case Codasip::i_fence__opc_fence__opc_ir_fence__opc_hint_fence__:
    case Codasip::i_fence__opc_fence__opc_ir_fence__opc_i_fence__:
    case Codasip::i_fence__opc_fence__opc_ir_fence__opc_io_fence__:
    case Codasip::i_fence__opc_fence__opc_ir_fence__opc_ior_fence__:
    case Codasip::i_fence__opc_fence__opc_ir_fence__opc_iorw_fence__:
    case Codasip::i_fence__opc_fence__opc_ir_fence__opc_iow_fence__:
    case Codasip::i_fence__opc_fence__opc_ir_fence__opc_ir_fence__:
    case Codasip::i_fence__opc_fence__opc_ir_fence__opc_irw_fence__:
    case Codasip::i_fence__opc_fence__opc_ir_fence__opc_iw_fence__:
    case Codasip::i_fence__opc_fence__opc_ir_fence__opc_o_fence__:
    case Codasip::i_fence__opc_fence__opc_ir_fence__opc_or_fence__:
    case Codasip::i_fence__opc_fence__opc_ir_fence__opc_orw_fence__:
    case Codasip::i_fence__opc_fence__opc_ir_fence__opc_ow_fence__:
    case Codasip::i_fence__opc_fence__opc_ir_fence__opc_r_fence__:
    case Codasip::i_fence__opc_fence__opc_ir_fence__opc_rw_fence__:
    case Codasip::i_fence__opc_fence__opc_ir_fence__opc_w_fence__:
    case Codasip::i_fence__opc_fence__opc_irw_fence__opc_hint_fence__:
    case Codasip::i_fence__opc_fence__opc_irw_fence__opc_i_fence__:
    case Codasip::i_fence__opc_fence__opc_irw_fence__opc_io_fence__:
    case Codasip::i_fence__opc_fence__opc_irw_fence__opc_ior_fence__:
    case Codasip::i_fence__opc_fence__opc_irw_fence__opc_iorw_fence__:
    case Codasip::i_fence__opc_fence__opc_irw_fence__opc_iow_fence__:
    case Codasip::i_fence__opc_fence__opc_irw_fence__opc_ir_fence__:
    case Codasip::i_fence__opc_fence__opc_irw_fence__opc_irw_fence__:
    case Codasip::i_fence__opc_fence__opc_irw_fence__opc_iw_fence__:
    case Codasip::i_fence__opc_fence__opc_irw_fence__opc_o_fence__:
    case Codasip::i_fence__opc_fence__opc_irw_fence__opc_or_fence__:
    case Codasip::i_fence__opc_fence__opc_irw_fence__opc_orw_fence__:
    case Codasip::i_fence__opc_fence__opc_irw_fence__opc_ow_fence__:
    case Codasip::i_fence__opc_fence__opc_irw_fence__opc_r_fence__:
    case Codasip::i_fence__opc_fence__opc_irw_fence__opc_rw_fence__:
    case Codasip::i_fence__opc_fence__opc_irw_fence__opc_w_fence__:
    case Codasip::i_fence__opc_fence__opc_iw_fence__opc_hint_fence__:
    case Codasip::i_fence__opc_fence__opc_iw_fence__opc_i_fence__:
    case Codasip::i_fence__opc_fence__opc_iw_fence__opc_io_fence__:
    case Codasip::i_fence__opc_fence__opc_iw_fence__opc_ior_fence__:
    case Codasip::i_fence__opc_fence__opc_iw_fence__opc_iorw_fence__:
    case Codasip::i_fence__opc_fence__opc_iw_fence__opc_iow_fence__:
    case Codasip::i_fence__opc_fence__opc_iw_fence__opc_ir_fence__:
    case Codasip::i_fence__opc_fence__opc_iw_fence__opc_irw_fence__:
    case Codasip::i_fence__opc_fence__opc_iw_fence__opc_iw_fence__:
    case Codasip::i_fence__opc_fence__opc_iw_fence__opc_o_fence__:
    case Codasip::i_fence__opc_fence__opc_iw_fence__opc_or_fence__:
    case Codasip::i_fence__opc_fence__opc_iw_fence__opc_orw_fence__:
    case Codasip::i_fence__opc_fence__opc_iw_fence__opc_ow_fence__:
    case Codasip::i_fence__opc_fence__opc_iw_fence__opc_r_fence__:
    case Codasip::i_fence__opc_fence__opc_iw_fence__opc_rw_fence__:
    case Codasip::i_fence__opc_fence__opc_iw_fence__opc_w_fence__:
    case Codasip::i_fence__opc_fence__opc_o_fence__opc_hint_fence__:
    case Codasip::i_fence__opc_fence__opc_o_fence__opc_i_fence__:
    case Codasip::i_fence__opc_fence__opc_o_fence__opc_io_fence__:
    case Codasip::i_fence__opc_fence__opc_o_fence__opc_ior_fence__:
    case Codasip::i_fence__opc_fence__opc_o_fence__opc_iorw_fence__:
    case Codasip::i_fence__opc_fence__opc_o_fence__opc_iow_fence__:
    case Codasip::i_fence__opc_fence__opc_o_fence__opc_ir_fence__:
    case Codasip::i_fence__opc_fence__opc_o_fence__opc_irw_fence__:
    case Codasip::i_fence__opc_fence__opc_o_fence__opc_iw_fence__:
    case Codasip::i_fence__opc_fence__opc_o_fence__opc_o_fence__:
    case Codasip::i_fence__opc_fence__opc_o_fence__opc_or_fence__:
    case Codasip::i_fence__opc_fence__opc_o_fence__opc_orw_fence__:
    case Codasip::i_fence__opc_fence__opc_o_fence__opc_ow_fence__:
    case Codasip::i_fence__opc_fence__opc_o_fence__opc_r_fence__:
    case Codasip::i_fence__opc_fence__opc_o_fence__opc_rw_fence__:
    case Codasip::i_fence__opc_fence__opc_o_fence__opc_w_fence__:
    case Codasip::i_fence__opc_fence__opc_or_fence__opc_hint_fence__:
    case Codasip::i_fence__opc_fence__opc_or_fence__opc_i_fence__:
    case Codasip::i_fence__opc_fence__opc_or_fence__opc_io_fence__:
    case Codasip::i_fence__opc_fence__opc_or_fence__opc_ior_fence__:
    case Codasip::i_fence__opc_fence__opc_or_fence__opc_iorw_fence__:
    case Codasip::i_fence__opc_fence__opc_or_fence__opc_iow_fence__:
    case Codasip::i_fence__opc_fence__opc_or_fence__opc_ir_fence__:
    case Codasip::i_fence__opc_fence__opc_or_fence__opc_irw_fence__:
    case Codasip::i_fence__opc_fence__opc_or_fence__opc_iw_fence__:
    case Codasip::i_fence__opc_fence__opc_or_fence__opc_o_fence__:
    case Codasip::i_fence__opc_fence__opc_or_fence__opc_or_fence__:
    case Codasip::i_fence__opc_fence__opc_or_fence__opc_orw_fence__:
    case Codasip::i_fence__opc_fence__opc_or_fence__opc_ow_fence__:
    case Codasip::i_fence__opc_fence__opc_or_fence__opc_r_fence__:
    case Codasip::i_fence__opc_fence__opc_or_fence__opc_rw_fence__:
    case Codasip::i_fence__opc_fence__opc_or_fence__opc_w_fence__:
    case Codasip::i_fence__opc_fence__opc_orw_fence__opc_hint_fence__:
    case Codasip::i_fence__opc_fence__opc_orw_fence__opc_i_fence__:
    case Codasip::i_fence__opc_fence__opc_orw_fence__opc_io_fence__:
    case Codasip::i_fence__opc_fence__opc_orw_fence__opc_ior_fence__:
    case Codasip::i_fence__opc_fence__opc_orw_fence__opc_iorw_fence__:
    case Codasip::i_fence__opc_fence__opc_orw_fence__opc_iow_fence__:
    case Codasip::i_fence__opc_fence__opc_orw_fence__opc_ir_fence__:
    case Codasip::i_fence__opc_fence__opc_orw_fence__opc_irw_fence__:
    case Codasip::i_fence__opc_fence__opc_orw_fence__opc_iw_fence__:
    case Codasip::i_fence__opc_fence__opc_orw_fence__opc_o_fence__:
    case Codasip::i_fence__opc_fence__opc_orw_fence__opc_or_fence__:
    case Codasip::i_fence__opc_fence__opc_orw_fence__opc_orw_fence__:
    case Codasip::i_fence__opc_fence__opc_orw_fence__opc_ow_fence__:
    case Codasip::i_fence__opc_fence__opc_orw_fence__opc_r_fence__:
    case Codasip::i_fence__opc_fence__opc_orw_fence__opc_rw_fence__:
    case Codasip::i_fence__opc_fence__opc_orw_fence__opc_w_fence__:
    case Codasip::i_fence__opc_fence__opc_ow_fence__opc_hint_fence__:
    case Codasip::i_fence__opc_fence__opc_ow_fence__opc_i_fence__:
    case Codasip::i_fence__opc_fence__opc_ow_fence__opc_io_fence__:
    case Codasip::i_fence__opc_fence__opc_ow_fence__opc_ior_fence__:
    case Codasip::i_fence__opc_fence__opc_ow_fence__opc_iorw_fence__:
    case Codasip::i_fence__opc_fence__opc_ow_fence__opc_iow_fence__:
    case Codasip::i_fence__opc_fence__opc_ow_fence__opc_ir_fence__:
    case Codasip::i_fence__opc_fence__opc_ow_fence__opc_irw_fence__:
    case Codasip::i_fence__opc_fence__opc_ow_fence__opc_iw_fence__:
    case Codasip::i_fence__opc_fence__opc_ow_fence__opc_o_fence__:
    case Codasip::i_fence__opc_fence__opc_ow_fence__opc_or_fence__:
    case Codasip::i_fence__opc_fence__opc_ow_fence__opc_orw_fence__:
    case Codasip::i_fence__opc_fence__opc_ow_fence__opc_ow_fence__:
    case Codasip::i_fence__opc_fence__opc_ow_fence__opc_r_fence__:
    case Codasip::i_fence__opc_fence__opc_ow_fence__opc_rw_fence__:
    case Codasip::i_fence__opc_fence__opc_ow_fence__opc_w_fence__:
    case Codasip::i_fence__opc_fence__opc_r_fence__opc_hint_fence__:
    case Codasip::i_fence__opc_fence__opc_r_fence__opc_i_fence__:
    case Codasip::i_fence__opc_fence__opc_r_fence__opc_io_fence__:
    case Codasip::i_fence__opc_fence__opc_r_fence__opc_ior_fence__:
    case Codasip::i_fence__opc_fence__opc_r_fence__opc_iorw_fence__:
    case Codasip::i_fence__opc_fence__opc_r_fence__opc_iow_fence__:
    case Codasip::i_fence__opc_fence__opc_r_fence__opc_ir_fence__:
    case Codasip::i_fence__opc_fence__opc_r_fence__opc_irw_fence__:
    case Codasip::i_fence__opc_fence__opc_r_fence__opc_iw_fence__:
    case Codasip::i_fence__opc_fence__opc_r_fence__opc_o_fence__:
    case Codasip::i_fence__opc_fence__opc_r_fence__opc_or_fence__:
    case Codasip::i_fence__opc_fence__opc_r_fence__opc_orw_fence__:
    case Codasip::i_fence__opc_fence__opc_r_fence__opc_ow_fence__:
    case Codasip::i_fence__opc_fence__opc_r_fence__opc_r_fence__:
    case Codasip::i_fence__opc_fence__opc_r_fence__opc_rw_fence__:
    case Codasip::i_fence__opc_fence__opc_r_fence__opc_w_fence__:
    case Codasip::i_fence__opc_fence__opc_rw_fence__opc_hint_fence__:
    case Codasip::i_fence__opc_fence__opc_rw_fence__opc_i_fence__:
    case Codasip::i_fence__opc_fence__opc_rw_fence__opc_io_fence__:
    case Codasip::i_fence__opc_fence__opc_rw_fence__opc_ior_fence__:
    case Codasip::i_fence__opc_fence__opc_rw_fence__opc_iorw_fence__:
    case Codasip::i_fence__opc_fence__opc_rw_fence__opc_iow_fence__:
    case Codasip::i_fence__opc_fence__opc_rw_fence__opc_ir_fence__:
    case Codasip::i_fence__opc_fence__opc_rw_fence__opc_irw_fence__:
    case Codasip::i_fence__opc_fence__opc_rw_fence__opc_iw_fence__:
    case Codasip::i_fence__opc_fence__opc_rw_fence__opc_o_fence__:
    case Codasip::i_fence__opc_fence__opc_rw_fence__opc_or_fence__:
    case Codasip::i_fence__opc_fence__opc_rw_fence__opc_orw_fence__:
    case Codasip::i_fence__opc_fence__opc_rw_fence__opc_ow_fence__:
    case Codasip::i_fence__opc_fence__opc_rw_fence__opc_r_fence__:
    case Codasip::i_fence__opc_fence__opc_rw_fence__opc_rw_fence__:
    case Codasip::i_fence__opc_fence__opc_rw_fence__opc_w_fence__:
    case Codasip::i_fence__opc_fence__opc_w_fence__opc_hint_fence__:
    case Codasip::i_fence__opc_fence__opc_w_fence__opc_i_fence__:
    case Codasip::i_fence__opc_fence__opc_w_fence__opc_io_fence__:
    case Codasip::i_fence__opc_fence__opc_w_fence__opc_ior_fence__:
    case Codasip::i_fence__opc_fence__opc_w_fence__opc_iorw_fence__:
    case Codasip::i_fence__opc_fence__opc_w_fence__opc_iow_fence__:
    case Codasip::i_fence__opc_fence__opc_w_fence__opc_ir_fence__:
    case Codasip::i_fence__opc_fence__opc_w_fence__opc_irw_fence__:
    case Codasip::i_fence__opc_fence__opc_w_fence__opc_iw_fence__:
    case Codasip::i_fence__opc_fence__opc_w_fence__opc_o_fence__:
    case Codasip::i_fence__opc_fence__opc_w_fence__opc_or_fence__:
    case Codasip::i_fence__opc_fence__opc_w_fence__opc_orw_fence__:
    case Codasip::i_fence__opc_fence__opc_w_fence__opc_ow_fence__:
    case Codasip::i_fence__opc_fence__opc_w_fence__opc_r_fence__:
    case Codasip::i_fence__opc_fence__opc_w_fence__opc_rw_fence__:
    case Codasip::i_fence__opc_fence__opc_w_fence__opc_w_fence__:
    case Codasip::i_fence_alias__opc_fence__:
    case Codasip::i_fencei__opc_fencei__:
    case Codasip::i_get_pc_alias__reg0__:
    case Codasip::i_get_pc_alias__reg0_alias__:
    case Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_:
    case Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA:
    case Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES:
    case Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC:
    case Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_:
    case Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA:
    case Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES:
    case Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC:
    case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_:
    case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_BA:
    case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ES:
    case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_MC:
    case Codasip::i_jalr_alias__reg0__:
    case Codasip::i_jalr_alias__reg0_alias__:
    case Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_:
    case Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_BA:
    case Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ES:
    case Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_MC:
    case Codasip::i_jump_reg_alias__reg0__:
    case Codasip::i_jump_reg_alias__reg0_alias__:
    case Codasip::i_jump_reg_alias__regs__TAILCALL_CLONE_:
    case Codasip::i_jump_reg_alias__regs___RET_EMUL_:
    case Codasip::i_load_alias__opc_loadb__reg0__reg0__:
    case Codasip::i_load_alias__opc_loadb__reg0__reg0_alias__:
    case Codasip::i_load_alias__opc_loadb__reg0_alias__reg0__:
    case Codasip::i_load_alias__opc_loadb__reg0_alias__reg0_alias__:
    case Codasip::i_load_alias__opc_loadbu__reg0__reg0__:
    case Codasip::i_load_alias__opc_loadbu__reg0__reg0_alias__:
    case Codasip::i_load_alias__opc_loadbu__reg0_alias__reg0__:
    case Codasip::i_load_alias__opc_loadbu__reg0_alias__reg0_alias__:
    case Codasip::i_load_alias__opc_loadh__reg0__reg0__:
    case Codasip::i_load_alias__opc_loadh__reg0__reg0_alias__:
    case Codasip::i_load_alias__opc_loadh__reg0_alias__reg0__:
    case Codasip::i_load_alias__opc_loadh__reg0_alias__reg0_alias__:
    case Codasip::i_load_alias__opc_loadhu__reg0__reg0__:
    case Codasip::i_load_alias__opc_loadhu__reg0__reg0_alias__:
    case Codasip::i_load_alias__opc_loadhu__reg0_alias__reg0__:
    case Codasip::i_load_alias__opc_loadhu__reg0_alias__reg0_alias__:
    case Codasip::i_load_alias__opc_loadw__reg0__reg0__:
    case Codasip::i_load_alias__opc_loadw__reg0__reg0_alias__:
    case Codasip::i_load_alias__opc_loadw__reg0_alias__reg0__:
    case Codasip::i_load_alias__opc_loadw__reg0_alias__reg0_alias__:
    case Codasip::i_move_alias__reg0__reg0__:
    case Codasip::i_move_alias__reg0__reg0_alias__:
    case Codasip::i_move_alias__reg0_alias__reg0__:
    case Codasip::i_move_alias__reg0_alias__reg0_alias__:
    case Codasip::i_mv_alias__reg0__reg0__:
    case Codasip::i_mv_alias__reg0__reg0_alias__:
    case Codasip::i_mv_alias__reg0_alias__reg0__:
    case Codasip::i_mv_alias__reg0_alias__reg0_alias__:
    case Codasip::i_neg_alias__reg0__reg0__:
    case Codasip::i_neg_alias__reg0__reg0_alias__:
    case Codasip::i_neg_alias__reg0_alias__reg0__:
    case Codasip::i_neg_alias__reg0_alias__reg0_alias__:
    case Codasip::i_nop_alias__:
    case Codasip::i_not_alias__reg0__reg0__:
    case Codasip::i_not_alias__reg0__reg0_alias__:
    case Codasip::i_not_alias__reg0_alias__reg0__:
    case Codasip::i_not_alias__reg0_alias__reg0_alias__:
    case Codasip::i_ret_alias__:
    case Codasip::i_seqz_alias__reg0__reg0__:
    case Codasip::i_seqz_alias__reg0__reg0_alias__:
    case Codasip::i_seqz_alias__reg0_alias__reg0__:
    case Codasip::i_seqz_alias__reg0_alias__reg0_alias__:
    case Codasip::i_sgtz_alias__reg0__reg0__:
    case Codasip::i_sgtz_alias__reg0__reg0_alias__:
    case Codasip::i_sgtz_alias__reg0_alias__reg0__:
    case Codasip::i_sgtz_alias__reg0_alias__reg0_alias__:
    case Codasip::i_sltz_alias__reg0__reg0__:
    case Codasip::i_sltz_alias__reg0__reg0_alias__:
    case Codasip::i_sltz_alias__reg0_alias__reg0__:
    case Codasip::i_sltz_alias__reg0_alias__reg0_alias__:
    case Codasip::i_snez_alias__reg0__reg0__:
    case Codasip::i_snez_alias__reg0__reg0_alias__:
    case Codasip::i_snez_alias__reg0_alias__reg0__:
    case Codasip::i_snez_alias__reg0_alias__reg0_alias__:
    case Codasip::i_store_alias__opc_storeb__reg0__reg0__:
    case Codasip::i_store_alias__opc_storeb__reg0__reg0_alias__:
    case Codasip::i_store_alias__opc_storeb__reg0_alias__reg0__:
    case Codasip::i_store_alias__opc_storeb__reg0_alias__reg0_alias__:
    case Codasip::i_store_alias__opc_storeh__reg0__reg0__:
    case Codasip::i_store_alias__opc_storeh__reg0__reg0_alias__:
    case Codasip::i_store_alias__opc_storeh__reg0_alias__reg0__:
    case Codasip::i_store_alias__opc_storeh__reg0_alias__reg0_alias__:
    case Codasip::i_store_alias__opc_storew__reg0__reg0__:
    case Codasip::i_store_alias__opc_storew__reg0__reg0_alias__:
    case Codasip::i_store_alias__opc_storew__reg0_alias__reg0__:
    case Codasip::i_store_alias__opc_storew__reg0_alias__reg0_alias__:
    case Codasip::i_timers_counters_aliases__opc_rdcycle__reg0__:
    case Codasip::i_timers_counters_aliases__opc_rdcycle__reg0_alias__:
    case Codasip::i_timers_counters_aliases__opc_rdcycleh__reg0__:
    case Codasip::i_timers_counters_aliases__opc_rdcycleh__reg0_alias__:
    case Codasip::i_timers_counters_aliases__opc_rdinstret__reg0__:
    case Codasip::i_timers_counters_aliases__opc_rdinstret__reg0_alias__:
    case Codasip::i_timers_counters_aliases__opc_rdinstreth__reg0__:
    case Codasip::i_timers_counters_aliases__opc_rdinstreth__reg0_alias__:
    case Codasip::i_timers_counters_aliases__opc_rdtime__reg0__:
    case Codasip::i_timers_counters_aliases__opc_rdtime__reg0_alias__:
    case Codasip::i_timers_counters_aliases__opc_rdtimeh__reg0__:
    case Codasip::i_timers_counters_aliases__opc_rdtimeh__reg0_alias__:
    case Codasip::i_unimp__opc_unimp__:
    case Codasip::i_wfi__opc_wfi__:
    case Codasip::i_xret__opc_mret__: {
      break;
    }
    case Codasip::i_auipc__opc_auipc__reg0__imm20_s12__:
    case Codasip::i_auipc__opc_auipc__reg0_alias__imm20_s12__:
    case Codasip::i_lui__opc_lui__reg0__imm20_s12__:
    case Codasip::i_lui__opc_lui__reg0_alias__imm20_s12__: {
      // op: op0
      op = encodeMI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12(MI, 0, Fixups, STI);
      op &= UINT64_C(1048575);
      op <<= 12;
      Value |= op;
      break;
    }
    case Codasip::i_control_registers_imm__opc_csrrci__reg0__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrci__reg0_alias__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrsi__reg0__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrsi__reg0_alias__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrwi__reg0__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrwi__reg0_alias__csr_imm__imm5__:
    case Codasip::i_csrci_alias2__csr_imm__imm5__:
    case Codasip::i_csrci_alias__csr_imm__imm5__:
    case Codasip::i_csrsi_alias2__csr_imm__imm5__:
    case Codasip::i_csrsi_alias__csr_imm__imm5__:
    case Codasip::i_csrwi_alias__csr_imm__imm5__: {
      // op: op0
      op = encodeMI3immIH1_10start_base6_4imm53imm1_4imm5(MI, 0, Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = encodeMI3immIH1_10start_base8_6op_csr3csr1_7csr_imm(MI, 1, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_control_registers_reg__opc_csrrc__reg0__csr_imm__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrc__reg0__csr_imm__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrc__reg0_alias__csr_imm__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrc__reg0_alias__csr_imm__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrs__reg0__csr_imm__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrs__reg0__csr_imm__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrs__reg0_alias__csr_imm__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrs__reg0_alias__csr_imm__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrw__reg0__csr_imm__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrw__reg0__csr_imm__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrw__reg0_alias__csr_imm__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrw__reg0_alias__csr_imm__reg0_alias__:
    case Codasip::i_csrc_alias__csr_imm__reg0__:
    case Codasip::i_csrc_alias__csr_imm__reg0_alias__:
    case Codasip::i_csrr_alias__reg0__csr_imm__:
    case Codasip::i_csrr_alias__reg0_alias__csr_imm__:
    case Codasip::i_csrs_alias__csr_imm__reg0__:
    case Codasip::i_csrs_alias__csr_imm__reg0_alias__:
    case Codasip::i_csrw_alias__csr_imm__reg0__:
    case Codasip::i_csrw_alias__csr_imm__reg0_alias__: {
      // op: op0
      op = encodeMI3immIH1_10start_base8_6op_csr3csr1_7csr_imm(MI, 0, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_lui_hi__opc_lui__reg0__imm20_hi__:
    case Codasip::i_lui_hi__opc_lui__reg0_alias__imm20_hi__: {
      // op: op0
      op = encodeMI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi(MI, 0, Fixups, STI);
      op &= UINT64_C(1048575);
      op <<= 12;
      Value |= op;
      break;
    }
    case Codasip::i_store__opc_storeb__reg0__simm12_s_lo__reg0__:
    case Codasip::i_store__opc_storeb__reg0__simm12_s_lo__reg0_alias__:
    case Codasip::i_store__opc_storeb__reg0_alias__simm12_s_lo__reg0__:
    case Codasip::i_store__opc_storeb__reg0_alias__simm12_s_lo__reg0_alias__:
    case Codasip::i_store__opc_storeh__reg0__simm12_s_lo__reg0__:
    case Codasip::i_store__opc_storeh__reg0__simm12_s_lo__reg0_alias__:
    case Codasip::i_store__opc_storeh__reg0_alias__simm12_s_lo__reg0__:
    case Codasip::i_store__opc_storeh__reg0_alias__simm12_s_lo__reg0_alias__:
    case Codasip::i_store__opc_storew__reg0__simm12_s_lo__reg0__:
    case Codasip::i_store__opc_storew__reg0__simm12_s_lo__reg0_alias__:
    case Codasip::i_store__opc_storew__reg0_alias__simm12_s_lo__reg0__:
    case Codasip::i_store__opc_storew__reg0_alias__simm12_s_lo__reg0_alias__: {
      // op: op0
      op = encodeMI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo(MI, 0, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 20;
      Value |= (op & UINT64_C(31)) << 7;
      break;
    }
    case Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0__:
    case Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0_alias__:
    case Codasip::i_store__opc_storeb__reg0_alias__simm12_s_pcrel_lo__reg0__:
    case Codasip::i_store__opc_storeb__reg0_alias__simm12_s_pcrel_lo__reg0_alias__:
    case Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0__:
    case Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0_alias__:
    case Codasip::i_store__opc_storeh__reg0_alias__simm12_s_pcrel_lo__reg0__:
    case Codasip::i_store__opc_storeh__reg0_alias__simm12_s_pcrel_lo__reg0_alias__:
    case Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0__:
    case Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0_alias__:
    case Codasip::i_store__opc_storew__reg0_alias__simm12_s_pcrel_lo__reg0__:
    case Codasip::i_store__opc_storew__reg0_alias__simm12_s_pcrel_lo__reg0_alias__: {
      // op: op0
      op = encodeMI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo(MI, 0, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 20;
      Value |= (op & UINT64_C(31)) << 7;
      break;
    }
    case Codasip::i_auipc_hi__opc_auipc__reg0__imm20_pcrel_hi__:
    case Codasip::i_auipc_hi__opc_auipc__reg0_alias__imm20_pcrel_hi__: {
      // op: op0
      op = encodeMI3valIH1_10start_base14_11imm20_reloc3imm1_14imm20_pcrel_hi(MI, 0, Fixups, STI);
      op &= UINT64_C(1048575);
      op <<= 12;
      Value |= op;
      break;
    }
    case Codasip::i_auipc_hi__opc_auipc__reg0__imm20_hi__:
    case Codasip::i_auipc_hi__opc_auipc__reg0_alias__imm20_hi__: {
      // op: op0
      op = encodeMI3valIH1_10start_base14_11imm20_reloc3imm1_8imm20_hi(MI, 0, Fixups, STI);
      op &= UINT64_C(1048575);
      op <<= 12;
      Value |= op;
      break;
    }
    case Codasip::i_addi_alias__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_addi_alias__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_addi_alias__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_addi_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_andi_alias__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_andi_alias__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_andi_alias__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_andi_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_jalr__opc_jalr__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_jalr__opc_jalr__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_jlr_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_jlr_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_load__opc_loadb__reg0__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadb__reg0__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadbu__reg0__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadbu__reg0__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadh__reg0__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadh__reg0__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadhu__reg0__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadhu__reg0__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadw__reg0__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadw__reg0__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_ori_alias__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_ori_alias__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_ori_alias__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_ori_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_xori_alias__reg0__reg0__simm12_pcrel_lo__:
    case Codasip::i_xori_alias__reg0__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_xori_alias__reg0_alias__reg0__simm12_pcrel_lo__:
    case Codasip::i_xori_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__: {
      // op: op0
      op = encodeMI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo(MI, 0, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_addi_alias__reg0__reg0__simm12_lo__:
    case Codasip::i_addi_alias__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_addi_alias__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_addi_alias__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_andi_alias__reg0__reg0__simm12_lo__:
    case Codasip::i_andi_alias__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_andi_alias__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_andi_alias__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_lo__:
    case Codasip::i_jalr__opc_jalr__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_jalr__opc_jalr__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_jlr_alias__reg0__simm12_lo__:
    case Codasip::i_jlr_alias__reg0_alias__simm12_lo__:
    case Codasip::i_load__opc_loadb__reg0__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadb__reg0__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadb__reg0_alias__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadb__reg0_alias__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadbu__reg0__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadbu__reg0__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadbu__reg0_alias__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadbu__reg0_alias__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadh__reg0__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadh__reg0__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadh__reg0_alias__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadh__reg0_alias__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadhu__reg0__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadhu__reg0__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadhu__reg0_alias__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadhu__reg0_alias__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadw__reg0__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadw__reg0__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadw__reg0_alias__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadw__reg0_alias__simm12_lo__reg0_alias__:
    case Codasip::i_ori_alias__reg0__reg0__simm12_lo__:
    case Codasip::i_ori_alias__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_ori_alias__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_ori_alias__reg0_alias__reg0_alias__simm12_lo__:
    case Codasip::i_xori_alias__reg0__reg0__simm12_lo__:
    case Codasip::i_xori_alias__reg0__reg0_alias__simm12_lo__:
    case Codasip::i_xori_alias__reg0_alias__reg0__simm12_lo__:
    case Codasip::i_xori_alias__reg0_alias__reg0_alias__simm12_lo__: {
      // op: op0
      op = encodeMI3valIH1_10start_base8_6simm126simm121_9simm12_lo(MI, 0, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_beqz_alias__reg0__rel_addr12__:
    case Codasip::i_beqz_alias__reg0_alias__rel_addr12__:
    case Codasip::i_bgez_alias__reg0__rel_addr12__:
    case Codasip::i_bgez_alias__reg0_alias__rel_addr12__:
    case Codasip::i_bgt_alias__reg0__reg0__rel_addr12__:
    case Codasip::i_bgt_alias__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_bgt_alias__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_bgt_alias__reg0_alias__reg0_alias__rel_addr12__:
    case Codasip::i_bgtu_alias__reg0__reg0__rel_addr12__:
    case Codasip::i_bgtu_alias__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_bgtu_alias__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_bgtu_alias__reg0_alias__reg0_alias__rel_addr12__:
    case Codasip::i_bgtz_alias__reg0__rel_addr12__:
    case Codasip::i_bgtz_alias__reg0_alias__rel_addr12__:
    case Codasip::i_ble_alias__reg0__reg0__rel_addr12__:
    case Codasip::i_ble_alias__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_ble_alias__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_ble_alias__reg0_alias__reg0_alias__rel_addr12__:
    case Codasip::i_bleu_alias__reg0__reg0__rel_addr12__:
    case Codasip::i_bleu_alias__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_bleu_alias__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_bleu_alias__reg0_alias__reg0_alias__rel_addr12__:
    case Codasip::i_blez_alias__reg0__rel_addr12__:
    case Codasip::i_blez_alias__reg0_alias__rel_addr12__:
    case Codasip::i_bltz_alias__reg0__rel_addr12__:
    case Codasip::i_bltz_alias__reg0_alias__rel_addr12__:
    case Codasip::i_bnez_alias__reg0__rel_addr12__:
    case Codasip::i_bnez_alias__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_beq__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_beq__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_beq__reg0_alias__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bge__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bge__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bge__reg0_alias__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bgeu__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bgeu__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bgeu__reg0_alias__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_blt__reg0__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_blt__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_blt__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_blt__reg0_alias__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bltu__reg0__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bltu__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bltu__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bltu__reg0_alias__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bne__reg0__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bne__reg0__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bne__reg0_alias__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bne__reg0_alias__reg0_alias__rel_addr12__: {
      // op: op0
      op = encodeMI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12(MI, 0, Fixups, STI);
      Value |= (op & UINT64_C(2048)) << 20;
      Value |= (op & UINT64_C(1008)) << 21;
      Value |= (op & UINT64_C(15)) << 8;
      Value |= (op & UINT64_C(1024)) >> 3;
      break;
    }
    case Codasip::i_call_rel_alias__rel_addr20__:
    case Codasip::i_jal__opc_jal__reg0__rel_addr20__:
    case Codasip::i_jal__opc_jal__reg0_alias__rel_addr20__:
    case Codasip::i_jmp_rel_alias__rel_addr20__: {
      // op: op0
      op = encodeMI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20(MI, 0, Fixups, STI);
      Value |= (op & UINT64_C(524288)) << 12;
      Value |= (op & UINT64_C(1023)) << 21;
      Value |= (op & UINT64_C(1024)) << 10;
      Value |= (op & UINT64_C(522240)) << 1;
      break;
    }
    case Codasip::i_store_global_alias__opc_storeb__reg0__rel_addr32__reg0__:
    case Codasip::i_store_global_alias__opc_storeb__reg0__rel_addr32__reg0_alias__:
    case Codasip::i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__reg0__:
    case Codasip::i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__reg0_alias__:
    case Codasip::i_store_global_alias__opc_storeh__reg0__rel_addr32__reg0__:
    case Codasip::i_store_global_alias__opc_storeh__reg0__rel_addr32__reg0_alias__:
    case Codasip::i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__reg0__:
    case Codasip::i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__reg0_alias__:
    case Codasip::i_store_global_alias__opc_storew__reg0__rel_addr32__reg0__:
    case Codasip::i_store_global_alias__opc_storew__reg0__rel_addr32__reg0_alias__:
    case Codasip::i_store_global_alias__opc_storew__reg0_alias__rel_addr32__reg0__:
    case Codasip::i_store_global_alias__opc_storew__reg0_alias__rel_addr32__reg0_alias__: {
      // op: op0
      op = encodeMI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32(MI, 0, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 52;
      Value |= (op & UINT64_C(31)) << 39;
      Value |= (op & UINT64_C(4294963200));
      break;
    }
    case Codasip::i_la_alias__reg0__rel_addr32__:
    case Codasip::i_la_alias__reg0_alias__rel_addr32__:
    case Codasip::i_lla_alias__reg0__rel_addr32__:
    case Codasip::i_lla_alias__reg0_alias__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadb__reg0__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadb__reg0_alias__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadbu__reg0__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadbu__reg0_alias__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadh__reg0__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadh__reg0_alias__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadhu__reg0__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadhu__reg0_alias__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadw__reg0__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadw__reg0_alias__rel_addr32__: {
      // op: op0
      op = encodeMI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32(MI, 0, Fixups, STI);
      Value |= (op & UINT64_C(4095)) << 52;
      Value |= (op & UINT64_C(4294963200));
      break;
    }
    case Codasip::i_li_aalias__reg0__imm32_lui_addi__:
    case Codasip::i_li_aalias__reg0_alias__imm32_lui_addi__: {
      // op: op0
      op = encodeMI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi(MI, 0, Fixups, STI);
      Value |= (op & UINT64_C(4095)) << 52;
      Value |= (op & UINT64_C(4294963200));
      break;
    }
    case Codasip::i_call_alias__rel_addr32_call_tail_simple__:
    case Codasip::i_tail_alias__rel_addr32_call_tail_simple__: {
      // op: op0
      op = encodeMI4addrIH1_10start_base23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple(MI, 0, Fixups, STI);
      Value |= (op & UINT64_C(4095)) << 52;
      Value |= (op & UINT64_C(4294963200));
      break;
    }
    case Codasip::i_store__opc_storeb__reg0__simm12_simple__reg0__:
    case Codasip::i_store__opc_storeb__reg0__simm12_simple__reg0_alias__:
    case Codasip::i_store__opc_storeb__reg0_alias__simm12_simple__reg0__:
    case Codasip::i_store__opc_storeb__reg0_alias__simm12_simple__reg0_alias__:
    case Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__:
    case Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0_alias__:
    case Codasip::i_store__opc_storeh__reg0_alias__simm12_simple__reg0__:
    case Codasip::i_store__opc_storeh__reg0_alias__simm12_simple__reg0_alias__:
    case Codasip::i_store__opc_storew__reg0__simm12_simple__reg0__:
    case Codasip::i_store__opc_storew__reg0__simm12_simple__reg0_alias__:
    case Codasip::i_store__opc_storew__reg0_alias__simm12_simple__reg0__:
    case Codasip::i_store__opc_storew__reg0_alias__simm12_simple__reg0_alias__: {
      // op: op0
      op = encodeMI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple(MI, 0, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 20;
      Value |= (op & UINT64_C(31)) << 7;
      break;
    }
    case Codasip::i_addi_alias__reg0__reg0__simm12_simple__:
    case Codasip::i_addi_alias__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_addi_alias__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_addi_alias__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_andi_alias__reg0__reg0__simm12_simple__:
    case Codasip::i_andi_alias__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_andi_alias__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_andi_alias__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__:
    case Codasip::i_jalr__opc_jalr__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_jalr__opc_jalr__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_jlr_alias__reg0__simm12_simple__:
    case Codasip::i_jlr_alias__reg0_alias__simm12_simple__:
    case Codasip::i_load__opc_loadb__reg0__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadb__reg0__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadb__reg0_alias__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadb__reg0_alias__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadbu__reg0__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadbu__reg0__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadbu__reg0_alias__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadbu__reg0_alias__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadh__reg0__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadh__reg0__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadh__reg0_alias__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadh__reg0_alias__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadhu__reg0__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadhu__reg0__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadhu__reg0_alias__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadhu__reg0_alias__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadw__reg0__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadw__reg0__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadw__reg0_alias__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadw__reg0_alias__simm12_simple__reg0_alias__:
    case Codasip::i_ori_alias__reg0__reg0__simm12_simple__:
    case Codasip::i_ori_alias__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_ori_alias__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_ori_alias__reg0_alias__reg0_alias__simm12_simple__:
    case Codasip::i_xori_alias__reg0__reg0__simm12_simple__:
    case Codasip::i_xori_alias__reg0__reg0_alias__simm12_simple__:
    case Codasip::i_xori_alias__reg0_alias__reg0__simm12_simple__:
    case Codasip::i_xori_alias__reg0_alias__reg0_alias__simm12_simple__: {
      // op: op0
      op = encodeMI4simmIH1_10start_base8_6simm126simm121_13simm12_simple(MI, 0, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_comp_2reg_imm_shift__opc_slli__reg0__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_slli__reg0__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_slli__reg0_alias__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_slli__reg0_alias__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srai__reg0__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srai__reg0__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srai__reg0_alias__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srai__reg0_alias__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srli__reg0__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srli__reg0__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srli__reg0_alias__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srli__reg0_alias__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_slli_alias__reg0__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_slli_alias__reg0__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_slli_alias__reg0_alias__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_slli_alias__reg0_alias__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srai_alias__reg0__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srai_alias__reg0__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srai_alias__reg0_alias__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srai_alias__reg0_alias__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srli_alias__reg0__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srli_alias__reg0__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srli_alias__reg0_alias__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srli_alias__reg0_alias__reg0_alias__shift_imm__: {
      // op: op0
      op = encodeMI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm(MI, 0, Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_la_alias__regs__rel_addr32__:
    case Codasip::i_lla_alias__regs__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadb__regs__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadbu__regs__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadh__regs__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadhu__regs__rel_addr32__:
    case Codasip::i_load_global_alias__opc_loadw__regs__rel_addr32__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      Value |= (op & UINT64_C(31)) << 47;
      Value |= (op & UINT64_C(31)) << 39;
      Value |= (op & UINT64_C(31)) << 7;
      // op: op1
      op = encodeMI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(4095)) << 52;
      Value |= (op & UINT64_C(4294963200));
      break;
    }
    case Codasip::i_li_aalias__regs__imm32_lui_addi__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      Value |= (op & UINT64_C(31)) << 47;
      Value |= (op & UINT64_C(31)) << 39;
      Value |= (op & UINT64_C(31)) << 7;
      // op: op1
      op = encodeMI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(4095)) << 52;
      Value |= (op & UINT64_C(4294963200));
      break;
    }
    case Codasip::i_store_global_alias__opc_storeb__reg0__rel_addr32__regs__:
    case Codasip::i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__regs__:
    case Codasip::i_store_global_alias__opc_storeh__reg0__rel_addr32__regs__:
    case Codasip::i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__regs__:
    case Codasip::i_store_global_alias__opc_storew__reg0__rel_addr32__regs__:
    case Codasip::i_store_global_alias__opc_storew__reg0_alias__rel_addr32__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      Value |= (op & UINT64_C(31)) << 47;
      Value |= (op & UINT64_C(31)) << 7;
      // op: op1
      op = encodeMI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 52;
      Value |= (op & UINT64_C(31)) << 39;
      Value |= (op & UINT64_C(4294963200));
      break;
    }
    case Codasip::i_call_reg_alias__regs__:
    case Codasip::i_comp_3reg__opc_add__reg0__regs__reg0__:
    case Codasip::i_comp_3reg__opc_add__reg0__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_add__reg0_alias__regs__reg0__:
    case Codasip::i_comp_3reg__opc_add__reg0_alias__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_and__reg0__regs__reg0__:
    case Codasip::i_comp_3reg__opc_and__reg0__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_and__reg0_alias__regs__reg0__:
    case Codasip::i_comp_3reg__opc_and__reg0_alias__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_or__reg0__regs__reg0__:
    case Codasip::i_comp_3reg__opc_or__reg0__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_or__reg0_alias__regs__reg0__:
    case Codasip::i_comp_3reg__opc_or__reg0_alias__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sll__reg0__regs__reg0__:
    case Codasip::i_comp_3reg__opc_sll__reg0__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sll__reg0_alias__regs__reg0__:
    case Codasip::i_comp_3reg__opc_sll__reg0_alias__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_slt__reg0__regs__reg0__:
    case Codasip::i_comp_3reg__opc_slt__reg0__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_slt__reg0_alias__regs__reg0__:
    case Codasip::i_comp_3reg__opc_slt__reg0_alias__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sltu__reg0__regs__reg0__:
    case Codasip::i_comp_3reg__opc_sltu__reg0__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sltu__reg0_alias__regs__reg0__:
    case Codasip::i_comp_3reg__opc_sltu__reg0_alias__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sra__reg0__regs__reg0__:
    case Codasip::i_comp_3reg__opc_sra__reg0__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sra__reg0_alias__regs__reg0__:
    case Codasip::i_comp_3reg__opc_sra__reg0_alias__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_srl__reg0__regs__reg0__:
    case Codasip::i_comp_3reg__opc_srl__reg0__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_srl__reg0_alias__regs__reg0__:
    case Codasip::i_comp_3reg__opc_srl__reg0_alias__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sub__reg0__regs__reg0__:
    case Codasip::i_comp_3reg__opc_sub__reg0__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sub__reg0_alias__regs__reg0__:
    case Codasip::i_comp_3reg__opc_sub__reg0_alias__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_xor__reg0__regs__reg0__:
    case Codasip::i_comp_3reg__opc_xor__reg0__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_xor__reg0_alias__regs__reg0__:
    case Codasip::i_comp_3reg__opc_xor__reg0_alias__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__reg0__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__reg0__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__regs__reg0_alias__:
    case Codasip::i_jalr_alias__regs__:
    case Codasip::i_jump_reg_alias__regs__:
    case Codasip::i_load_alias__opc_loadb__reg0__regs__:
    case Codasip::i_load_alias__opc_loadb__reg0_alias__regs__:
    case Codasip::i_load_alias__opc_loadbu__reg0__regs__:
    case Codasip::i_load_alias__opc_loadbu__reg0_alias__regs__:
    case Codasip::i_load_alias__opc_loadh__reg0__regs__:
    case Codasip::i_load_alias__opc_loadh__reg0_alias__regs__:
    case Codasip::i_load_alias__opc_loadhu__reg0__regs__:
    case Codasip::i_load_alias__opc_loadhu__reg0_alias__regs__:
    case Codasip::i_load_alias__opc_loadw__reg0__regs__:
    case Codasip::i_load_alias__opc_loadw__reg0_alias__regs__:
    case Codasip::i_move_alias__reg0__regs__:
    case Codasip::i_move_alias__reg0_alias__regs__:
    case Codasip::i_mv_alias__reg0__regs__:
    case Codasip::i_mv_alias__reg0_alias__regs__:
    case Codasip::i_not_alias__reg0__regs__:
    case Codasip::i_not_alias__reg0_alias__regs__:
    case Codasip::i_seqz_alias__reg0__regs__:
    case Codasip::i_seqz_alias__reg0_alias__regs__:
    case Codasip::i_sltz_alias__reg0__regs__:
    case Codasip::i_sltz_alias__reg0_alias__regs__:
    case Codasip::i_store_alias__opc_storeb__reg0__regs__:
    case Codasip::i_store_alias__opc_storeb__reg0_alias__regs__:
    case Codasip::i_store_alias__opc_storeh__reg0__regs__:
    case Codasip::i_store_alias__opc_storeh__reg0_alias__regs__:
    case Codasip::i_store_alias__opc_storew__reg0__regs__:
    case Codasip::i_store_alias__opc_storew__reg0_alias__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_control_registers_reg__opc_csrrc__reg0__csr_imm__regs__:
    case Codasip::i_control_registers_reg__opc_csrrc__reg0_alias__csr_imm__regs__:
    case Codasip::i_control_registers_reg__opc_csrrs__reg0__csr_imm__regs__:
    case Codasip::i_control_registers_reg__opc_csrrs__reg0_alias__csr_imm__regs__:
    case Codasip::i_control_registers_reg__opc_csrrw__reg0__csr_imm__regs__:
    case Codasip::i_control_registers_reg__opc_csrrw__reg0_alias__csr_imm__regs__:
    case Codasip::i_csrc_alias__csr_imm__regs__:
    case Codasip::i_csrs_alias__csr_imm__regs__:
    case Codasip::i_csrw_alias__csr_imm__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = encodeMI3immIH1_10start_base8_6op_csr3csr1_7csr_imm(MI, 1, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_store__opc_storeb__reg0__simm12_s_lo__regs__:
    case Codasip::i_store__opc_storeb__reg0_alias__simm12_s_lo__regs__:
    case Codasip::i_store__opc_storeh__reg0__simm12_s_lo__regs__:
    case Codasip::i_store__opc_storeh__reg0_alias__simm12_s_lo__regs__:
    case Codasip::i_store__opc_storew__reg0__simm12_s_lo__regs__:
    case Codasip::i_store__opc_storew__reg0_alias__simm12_s_lo__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = encodeMI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 20;
      Value |= (op & UINT64_C(31)) << 7;
      break;
    }
    case Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__regs__:
    case Codasip::i_store__opc_storeb__reg0_alias__simm12_s_pcrel_lo__regs__:
    case Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__regs__:
    case Codasip::i_store__opc_storeh__reg0_alias__simm12_s_pcrel_lo__regs__:
    case Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__regs__:
    case Codasip::i_store__opc_storew__reg0_alias__simm12_s_pcrel_lo__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = encodeMI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 20;
      Value |= (op & UINT64_C(31)) << 7;
      break;
    }
    case Codasip::i_addi_alias__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_addi_alias__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_andi_alias__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_andi_alias__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_jalr__opc_jalr__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_jalr__opc_jalr__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_jlr_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_load__opc_loadb__reg0__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadbu__reg0__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadh__reg0__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadhu__reg0__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadw__reg0__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__regs__:
    case Codasip::i_ori_alias__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_ori_alias__reg0_alias__regs__simm12_pcrel_lo__:
    case Codasip::i_xori_alias__reg0__regs__simm12_pcrel_lo__:
    case Codasip::i_xori_alias__reg0_alias__regs__simm12_pcrel_lo__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = encodeMI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo(MI, 1, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_addi_alias__reg0__regs__simm12_lo__:
    case Codasip::i_addi_alias__reg0_alias__regs__simm12_lo__:
    case Codasip::i_andi_alias__reg0__regs__simm12_lo__:
    case Codasip::i_andi_alias__reg0_alias__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_lo__:
    case Codasip::i_jalr__opc_jalr__reg0__regs__simm12_lo__:
    case Codasip::i_jalr__opc_jalr__reg0_alias__regs__simm12_lo__:
    case Codasip::i_jlr_alias__regs__simm12_lo__:
    case Codasip::i_load__opc_loadb__reg0__simm12_lo__regs__:
    case Codasip::i_load__opc_loadb__reg0_alias__simm12_lo__regs__:
    case Codasip::i_load__opc_loadbu__reg0__simm12_lo__regs__:
    case Codasip::i_load__opc_loadbu__reg0_alias__simm12_lo__regs__:
    case Codasip::i_load__opc_loadh__reg0__simm12_lo__regs__:
    case Codasip::i_load__opc_loadh__reg0_alias__simm12_lo__regs__:
    case Codasip::i_load__opc_loadhu__reg0__simm12_lo__regs__:
    case Codasip::i_load__opc_loadhu__reg0_alias__simm12_lo__regs__:
    case Codasip::i_load__opc_loadw__reg0__simm12_lo__regs__:
    case Codasip::i_load__opc_loadw__reg0_alias__simm12_lo__regs__:
    case Codasip::i_ori_alias__reg0__regs__simm12_lo__:
    case Codasip::i_ori_alias__reg0_alias__regs__simm12_lo__:
    case Codasip::i_xori_alias__reg0__regs__simm12_lo__:
    case Codasip::i_xori_alias__reg0_alias__regs__simm12_lo__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = encodeMI3valIH1_10start_base8_6simm126simm121_9simm12_lo(MI, 1, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_beqz_alias__regs__rel_addr12__:
    case Codasip::i_bgez_alias__regs__rel_addr12__:
    case Codasip::i_bgt_alias__reg0__regs__rel_addr12__:
    case Codasip::i_bgt_alias__reg0_alias__regs__rel_addr12__:
    case Codasip::i_bgtu_alias__reg0__regs__rel_addr12__:
    case Codasip::i_bgtu_alias__reg0_alias__regs__rel_addr12__:
    case Codasip::i_ble_alias__reg0__regs__rel_addr12__:
    case Codasip::i_ble_alias__reg0_alias__regs__rel_addr12__:
    case Codasip::i_bleu_alias__reg0__regs__rel_addr12__:
    case Codasip::i_bleu_alias__reg0_alias__regs__rel_addr12__:
    case Codasip::i_bltz_alias__regs__rel_addr12__:
    case Codasip::i_bnez_alias__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_beq__regs__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_beq__regs__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bge__regs__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bge__regs__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bgeu__regs__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bgeu__regs__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_blt__regs__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_blt__regs__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bltu__regs__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bltu__regs__reg0_alias__rel_addr12__:
    case Codasip::i_control_conditional__opc_bne__regs__reg0__rel_addr12__:
    case Codasip::i_control_conditional__opc_bne__regs__reg0_alias__rel_addr12__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = encodeMI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(2048)) << 20;
      Value |= (op & UINT64_C(1008)) << 21;
      Value |= (op & UINT64_C(15)) << 8;
      Value |= (op & UINT64_C(1024)) >> 3;
      break;
    }
    case Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__:
    case Codasip::i_store__opc_storeb__reg0_alias__simm12_simple__regs__:
    case Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__:
    case Codasip::i_store__opc_storeh__reg0_alias__simm12_simple__regs__:
    case Codasip::i_store__opc_storew__reg0__simm12_simple__regs__:
    case Codasip::i_store__opc_storew__reg0_alias__simm12_simple__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = encodeMI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 20;
      Value |= (op & UINT64_C(31)) << 7;
      break;
    }
    case Codasip::i_addi_alias__reg0__regs__simm12_simple__:
    case Codasip::i_addi_alias__reg0_alias__regs__simm12_simple__:
    case Codasip::i_andi_alias__reg0__regs__simm12_simple__:
    case Codasip::i_andi_alias__reg0_alias__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_simple__:
    case Codasip::i_jalr__opc_jalr__reg0__regs__simm12_simple__:
    case Codasip::i_jalr__opc_jalr__reg0_alias__regs__simm12_simple__:
    case Codasip::i_jlr_alias__regs__simm12_simple__:
    case Codasip::i_load__opc_loadb__reg0__simm12_simple__regs__:
    case Codasip::i_load__opc_loadb__reg0_alias__simm12_simple__regs__:
    case Codasip::i_load__opc_loadbu__reg0__simm12_simple__regs__:
    case Codasip::i_load__opc_loadbu__reg0_alias__simm12_simple__regs__:
    case Codasip::i_load__opc_loadh__reg0__simm12_simple__regs__:
    case Codasip::i_load__opc_loadh__reg0_alias__simm12_simple__regs__:
    case Codasip::i_load__opc_loadhu__reg0__simm12_simple__regs__:
    case Codasip::i_load__opc_loadhu__reg0_alias__simm12_simple__regs__:
    case Codasip::i_load__opc_loadw__reg0__simm12_simple__regs__:
    case Codasip::i_load__opc_loadw__reg0_alias__simm12_simple__regs__:
    case Codasip::i_ori_alias__reg0__regs__simm12_simple__:
    case Codasip::i_ori_alias__reg0_alias__regs__simm12_simple__:
    case Codasip::i_xori_alias__reg0__regs__simm12_simple__:
    case Codasip::i_xori_alias__reg0_alias__regs__simm12_simple__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = encodeMI4simmIH1_10start_base8_6simm126simm121_13simm12_simple(MI, 1, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_comp_2reg_imm_shift__opc_slli__reg0__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_slli__reg0_alias__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srai__reg0__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srai__reg0_alias__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srli__reg0__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srli__reg0_alias__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_slli_alias__reg0__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_slli_alias__reg0_alias__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srai_alias__reg0__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srai_alias__reg0_alias__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srli_alias__reg0__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srli_alias__reg0_alias__regs__shift_imm__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = encodeMI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm(MI, 1, Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_comp_3reg__opc_add__reg0__regs__regs__:
    case Codasip::i_comp_3reg__opc_add__reg0_alias__regs__regs__:
    case Codasip::i_comp_3reg__opc_and__reg0__regs__regs__:
    case Codasip::i_comp_3reg__opc_and__reg0_alias__regs__regs__:
    case Codasip::i_comp_3reg__opc_or__reg0__regs__regs__:
    case Codasip::i_comp_3reg__opc_or__reg0_alias__regs__regs__:
    case Codasip::i_comp_3reg__opc_sll__reg0__regs__regs__:
    case Codasip::i_comp_3reg__opc_sll__reg0_alias__regs__regs__:
    case Codasip::i_comp_3reg__opc_slt__reg0__regs__regs__:
    case Codasip::i_comp_3reg__opc_slt__reg0_alias__regs__regs__:
    case Codasip::i_comp_3reg__opc_sltu__reg0__regs__regs__:
    case Codasip::i_comp_3reg__opc_sltu__reg0_alias__regs__regs__:
    case Codasip::i_comp_3reg__opc_sra__reg0__regs__regs__:
    case Codasip::i_comp_3reg__opc_sra__reg0_alias__regs__regs__:
    case Codasip::i_comp_3reg__opc_srl__reg0__regs__regs__:
    case Codasip::i_comp_3reg__opc_srl__reg0_alias__regs__regs__:
    case Codasip::i_comp_3reg__opc_sub__reg0__regs__regs__:
    case Codasip::i_comp_3reg__opc_sub__reg0_alias__regs__regs__:
    case Codasip::i_comp_3reg__opc_xor__reg0__regs__regs__:
    case Codasip::i_comp_3reg__opc_xor__reg0_alias__regs__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__regs__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__regs__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__regs__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__regs__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__regs__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__regs__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__reg0__regs__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__regs__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_control_conditional__opc_beq__regs__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bne__regs__regs__rel_addr12__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      // op: op2
      op = encodeMI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12(MI, 2, Fixups, STI);
      Value |= (op & UINT64_C(2048)) << 20;
      Value |= (op & UINT64_C(1008)) << 21;
      Value |= (op & UINT64_C(15)) << 8;
      Value |= (op & UINT64_C(1024)) >> 3;
      break;
    }
    case Codasip::i_comp_3reg__opc_add__reg0__reg0__regs__:
    case Codasip::i_comp_3reg__opc_add__reg0__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_add__reg0_alias__reg0__regs__:
    case Codasip::i_comp_3reg__opc_add__reg0_alias__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_and__reg0__reg0__regs__:
    case Codasip::i_comp_3reg__opc_and__reg0__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_and__reg0_alias__reg0__regs__:
    case Codasip::i_comp_3reg__opc_and__reg0_alias__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_or__reg0__reg0__regs__:
    case Codasip::i_comp_3reg__opc_or__reg0__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_or__reg0_alias__reg0__regs__:
    case Codasip::i_comp_3reg__opc_or__reg0_alias__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_sll__reg0__reg0__regs__:
    case Codasip::i_comp_3reg__opc_sll__reg0__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_sll__reg0_alias__reg0__regs__:
    case Codasip::i_comp_3reg__opc_sll__reg0_alias__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_slt__reg0__reg0__regs__:
    case Codasip::i_comp_3reg__opc_slt__reg0__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_slt__reg0_alias__reg0__regs__:
    case Codasip::i_comp_3reg__opc_slt__reg0_alias__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_sltu__reg0__reg0__regs__:
    case Codasip::i_comp_3reg__opc_sltu__reg0__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_sltu__reg0_alias__reg0__regs__:
    case Codasip::i_comp_3reg__opc_sltu__reg0_alias__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_sra__reg0__reg0__regs__:
    case Codasip::i_comp_3reg__opc_sra__reg0__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_sra__reg0_alias__reg0__regs__:
    case Codasip::i_comp_3reg__opc_sra__reg0_alias__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_srl__reg0__reg0__regs__:
    case Codasip::i_comp_3reg__opc_srl__reg0__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_srl__reg0_alias__reg0__regs__:
    case Codasip::i_comp_3reg__opc_srl__reg0_alias__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_sub__reg0__reg0__regs__:
    case Codasip::i_comp_3reg__opc_sub__reg0__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_sub__reg0_alias__reg0__regs__:
    case Codasip::i_comp_3reg__opc_sub__reg0_alias__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_xor__reg0__reg0__regs__:
    case Codasip::i_comp_3reg__opc_xor__reg0__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_xor__reg0_alias__reg0__regs__:
    case Codasip::i_comp_3reg__opc_xor__reg0_alias__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0_alias__regs__:
    case Codasip::i_neg_alias__reg0__regs__:
    case Codasip::i_neg_alias__reg0_alias__regs__:
    case Codasip::i_sgtz_alias__reg0__regs__:
    case Codasip::i_sgtz_alias__reg0_alias__regs__:
    case Codasip::i_snez_alias__reg0__regs__:
    case Codasip::i_snez_alias__reg0_alias__regs__:
    case Codasip::i_store_alias__opc_storeb__regs__reg0__:
    case Codasip::i_store_alias__opc_storeb__regs__reg0_alias__:
    case Codasip::i_store_alias__opc_storeh__regs__reg0__:
    case Codasip::i_store_alias__opc_storeh__regs__reg0_alias__:
    case Codasip::i_store_alias__opc_storew__regs__reg0__:
    case Codasip::i_store_alias__opc_storew__regs__reg0_alias__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_store__opc_storeb__regs__simm12_s_lo__reg0__:
    case Codasip::i_store__opc_storeb__regs__simm12_s_lo__reg0_alias__:
    case Codasip::i_store__opc_storeh__regs__simm12_s_lo__reg0__:
    case Codasip::i_store__opc_storeh__regs__simm12_s_lo__reg0_alias__:
    case Codasip::i_store__opc_storew__regs__simm12_s_lo__reg0__:
    case Codasip::i_store__opc_storew__regs__simm12_s_lo__reg0_alias__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      // op: op1
      op = encodeMI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 20;
      Value |= (op & UINT64_C(31)) << 7;
      break;
    }
    case Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0__:
    case Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0_alias__:
    case Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0__:
    case Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0_alias__:
    case Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0__:
    case Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0_alias__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      // op: op1
      op = encodeMI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 20;
      Value |= (op & UINT64_C(31)) << 7;
      break;
    }
    case Codasip::i_bgt_alias__regs__reg0__rel_addr12__:
    case Codasip::i_bgt_alias__regs__reg0_alias__rel_addr12__:
    case Codasip::i_bgtu_alias__regs__reg0__rel_addr12__:
    case Codasip::i_bgtu_alias__regs__reg0_alias__rel_addr12__:
    case Codasip::i_bgtz_alias__regs__rel_addr12__:
    case Codasip::i_ble_alias__regs__reg0__rel_addr12__:
    case Codasip::i_ble_alias__regs__reg0_alias__rel_addr12__:
    case Codasip::i_bleu_alias__regs__reg0__rel_addr12__:
    case Codasip::i_bleu_alias__regs__reg0_alias__rel_addr12__:
    case Codasip::i_blez_alias__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_beq__reg0_alias__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bge__reg0__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bge__reg0_alias__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bgeu__reg0_alias__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_blt__reg0__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_blt__reg0_alias__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bltu__reg0_alias__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bne__reg0__regs__rel_addr12__:
    case Codasip::i_control_conditional__opc_bne__reg0_alias__regs__rel_addr12__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      // op: op1
      op = encodeMI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(2048)) << 20;
      Value |= (op & UINT64_C(1008)) << 21;
      Value |= (op & UINT64_C(15)) << 8;
      Value |= (op & UINT64_C(1024)) >> 3;
      break;
    }
    case Codasip::i_store__opc_storeb__regs__simm12_simple__reg0__:
    case Codasip::i_store__opc_storeb__regs__simm12_simple__reg0_alias__:
    case Codasip::i_store__opc_storeh__regs__simm12_simple__reg0__:
    case Codasip::i_store__opc_storeh__regs__simm12_simple__reg0_alias__:
    case Codasip::i_store__opc_storew__regs__simm12_simple__reg0__:
    case Codasip::i_store__opc_storew__regs__simm12_simple__reg0_alias__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      // op: op1
      op = encodeMI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 20;
      Value |= (op & UINT64_C(31)) << 7;
      break;
    }
    case Codasip::i_store_alias__opc_storeb__regs__regs__:
    case Codasip::i_store_alias__opc_storeh__regs__regs__:
    case Codasip::i_store_alias__opc_storew__regs__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_bgt_alias__regs__regs__rel_addr12__:
    case Codasip::i_bgtu_alias__regs__regs__rel_addr12__:
    case Codasip::i_ble_alias__regs__regs__rel_addr12__:
    case Codasip::i_bleu_alias__regs__regs__rel_addr12__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op2
      op = encodeMI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12(MI, 2, Fixups, STI);
      Value |= (op & UINT64_C(2048)) << 20;
      Value |= (op & UINT64_C(1008)) << 21;
      Value |= (op & UINT64_C(15)) << 8;
      Value |= (op & UINT64_C(1024)) >> 3;
      break;
    }
    case Codasip::i_store__opc_storeb__regs__simm12_s_lo__regs__:
    case Codasip::i_store__opc_storeh__regs__simm12_s_lo__regs__:
    case Codasip::i_store__opc_storew__regs__simm12_s_lo__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      // op: op2
      op = encodeMI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo(MI, 2, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 20;
      Value |= (op & UINT64_C(31)) << 7;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__regs__:
    case Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__regs__:
    case Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      // op: op2
      op = encodeMI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo(MI, 2, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 20;
      Value |= (op & UINT64_C(31)) << 7;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_store__opc_storeb__regs__simm12_simple__regs__:
    case Codasip::i_store__opc_storeh__regs__simm12_simple__regs__:
    case Codasip::i_store__opc_storew__regs__simm12_simple__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      // op: op2
      op = encodeMI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple(MI, 2, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 20;
      Value |= (op & UINT64_C(31)) << 7;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_store_global_alias__opc_storeb__regs__rel_addr32__reg0__:
    case Codasip::i_store_global_alias__opc_storeb__regs__rel_addr32__reg0_alias__:
    case Codasip::i_store_global_alias__opc_storeh__regs__rel_addr32__reg0__:
    case Codasip::i_store_global_alias__opc_storeh__regs__rel_addr32__reg0_alias__:
    case Codasip::i_store_global_alias__opc_storew__regs__rel_addr32__reg0__:
    case Codasip::i_store_global_alias__opc_storew__regs__rel_addr32__reg0_alias__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 52;
      Value |= op;
      // op: op1
      op = encodeMI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 52;
      Value |= (op & UINT64_C(31)) << 39;
      Value |= (op & UINT64_C(4294963200));
      break;
    }
    case Codasip::i_store_global_alias__opc_storeb__regs__rel_addr32__regs__:
    case Codasip::i_store_global_alias__opc_storeh__regs__rel_addr32__regs__:
    case Codasip::i_store_global_alias__opc_storew__regs__rel_addr32__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 52;
      Value |= op;
      // op: op1
      op = encodeMI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(4064)) << 52;
      Value |= (op & UINT64_C(31)) << 39;
      Value |= (op & UINT64_C(4294963200));
      // op: op2
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups, STI);
      Value |= (op & UINT64_C(31)) << 47;
      Value |= (op & UINT64_C(31)) << 7;
      break;
    }
    case Codasip::i_comp_3reg__opc_add__regs__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_add__regs__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_add__regs__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_add__regs__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_and__regs__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_and__regs__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_and__regs__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_and__regs__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_or__regs__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_or__regs__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_or__regs__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_or__regs__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sll__regs__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_sll__regs__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sll__regs__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_sll__regs__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_slt__regs__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_slt__regs__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_slt__regs__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_slt__regs__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sltu__regs__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_sltu__regs__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sltu__regs__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_sltu__regs__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sra__regs__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_sra__regs__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sra__regs__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_sra__regs__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_srl__regs__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_srl__regs__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_srl__regs__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_srl__regs__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sub__regs__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_sub__regs__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sub__regs__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_sub__regs__reg0_alias__reg0_alias__:
    case Codasip::i_comp_3reg__opc_xor__regs__reg0__reg0__:
    case Codasip::i_comp_3reg__opc_xor__regs__reg0__reg0_alias__:
    case Codasip::i_comp_3reg__opc_xor__regs__reg0_alias__reg0__:
    case Codasip::i_comp_3reg__opc_xor__regs__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__regs__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__regs__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__regs__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__regs__reg0_alias__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__regs__reg0__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__regs__reg0__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__regs__reg0_alias__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__regs__reg0_alias__reg0_alias__:
    case Codasip::i_get_pc_alias__regs__:
    case Codasip::i_load_alias__opc_loadb__regs__reg0__:
    case Codasip::i_load_alias__opc_loadb__regs__reg0_alias__:
    case Codasip::i_load_alias__opc_loadbu__regs__reg0__:
    case Codasip::i_load_alias__opc_loadbu__regs__reg0_alias__:
    case Codasip::i_load_alias__opc_loadh__regs__reg0__:
    case Codasip::i_load_alias__opc_loadh__regs__reg0_alias__:
    case Codasip::i_load_alias__opc_loadhu__regs__reg0__:
    case Codasip::i_load_alias__opc_loadhu__regs__reg0_alias__:
    case Codasip::i_load_alias__opc_loadw__regs__reg0__:
    case Codasip::i_load_alias__opc_loadw__regs__reg0_alias__:
    case Codasip::i_move_alias__regs__reg0__:
    case Codasip::i_move_alias__regs__reg0_alias__:
    case Codasip::i_mv_alias__regs__reg0__:
    case Codasip::i_mv_alias__regs__reg0_alias__:
    case Codasip::i_neg_alias__regs__reg0__:
    case Codasip::i_neg_alias__regs__reg0_alias__:
    case Codasip::i_not_alias__regs__reg0__:
    case Codasip::i_not_alias__regs__reg0_alias__:
    case Codasip::i_seqz_alias__regs__reg0__:
    case Codasip::i_seqz_alias__regs__reg0_alias__:
    case Codasip::i_sgtz_alias__regs__reg0__:
    case Codasip::i_sgtz_alias__regs__reg0_alias__:
    case Codasip::i_sltz_alias__regs__reg0__:
    case Codasip::i_sltz_alias__regs__reg0_alias__:
    case Codasip::i_snez_alias__regs__reg0__:
    case Codasip::i_snez_alias__regs__reg0_alias__:
    case Codasip::i_timers_counters_aliases__opc_rdcycle__regs__:
    case Codasip::i_timers_counters_aliases__opc_rdcycleh__regs__:
    case Codasip::i_timers_counters_aliases__opc_rdinstret__regs__:
    case Codasip::i_timers_counters_aliases__opc_rdinstreth__regs__:
    case Codasip::i_timers_counters_aliases__opc_rdtime__regs__:
    case Codasip::i_timers_counters_aliases__opc_rdtimeh__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      break;
    }
    case Codasip::i_auipc__opc_auipc__regs__imm20_s12__:
    case Codasip::i_lui__opc_lui__regs__imm20_s12__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = encodeMI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12(MI, 1, Fixups, STI);
      op &= UINT64_C(1048575);
      op <<= 12;
      Value |= op;
      break;
    }
    case Codasip::i_control_registers_imm__opc_csrrci__regs__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrsi__regs__csr_imm__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrwi__regs__csr_imm__imm5__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = encodeMI3immIH1_10start_base6_4imm53imm1_4imm5(MI, 1, Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op2
      op = encodeMI3immIH1_10start_base8_6op_csr3csr1_7csr_imm(MI, 2, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_control_registers_reg__opc_csrrc__regs__csr_imm__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrc__regs__csr_imm__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrs__regs__csr_imm__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrs__regs__csr_imm__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrw__regs__csr_imm__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrw__regs__csr_imm__reg0_alias__:
    case Codasip::i_csrr_alias__regs__csr_imm__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = encodeMI3immIH1_10start_base8_6op_csr3csr1_7csr_imm(MI, 1, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_control_registers_reg__opc_csrrc__regs__csr_imm__regs__:
    case Codasip::i_control_registers_reg__opc_csrrs__regs__csr_imm__regs__:
    case Codasip::i_control_registers_reg__opc_csrrw__regs__csr_imm__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = encodeMI3immIH1_10start_base8_6op_csr3csr1_7csr_imm(MI, 1, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      // op: op2
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_lui_hi__opc_lui__regs__imm20_hi__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = encodeMI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi(MI, 1, Fixups, STI);
      op &= UINT64_C(1048575);
      op <<= 12;
      Value |= op;
      break;
    }
    case Codasip::i_auipc_hi__opc_auipc__regs__imm20_pcrel_hi__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = encodeMI3valIH1_10start_base14_11imm20_reloc3imm1_14imm20_pcrel_hi(MI, 1, Fixups, STI);
      op &= UINT64_C(1048575);
      op <<= 12;
      Value |= op;
      break;
    }
    case Codasip::i_auipc_hi__opc_auipc__regs__imm20_hi__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = encodeMI3valIH1_10start_base14_11imm20_reloc3imm1_8imm20_hi(MI, 1, Fixups, STI);
      op &= UINT64_C(1048575);
      op <<= 12;
      Value |= op;
      break;
    }
    case Codasip::i_addi_alias__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_addi_alias__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_andi_alias__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_andi_alias__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_jalr__opc_jalr__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__reg0__:
    case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__reg0_alias__:
    case Codasip::i_ori_alias__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_ori_alias__regs__reg0_alias__simm12_pcrel_lo__:
    case Codasip::i_xori_alias__regs__reg0__simm12_pcrel_lo__:
    case Codasip::i_xori_alias__regs__reg0_alias__simm12_pcrel_lo__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = encodeMI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo(MI, 1, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_addi_alias__regs__reg0__simm12_lo__:
    case Codasip::i_addi_alias__regs__reg0_alias__simm12_lo__:
    case Codasip::i_andi_alias__regs__reg0__simm12_lo__:
    case Codasip::i_andi_alias__regs__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__regs__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_lo__:
    case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_lo__:
    case Codasip::i_jalr__opc_jalr__regs__reg0_alias__simm12_lo__:
    case Codasip::i_load__opc_loadb__regs__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadb__regs__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadbu__regs__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadbu__regs__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadh__regs__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadh__regs__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadhu__regs__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadhu__regs__simm12_lo__reg0_alias__:
    case Codasip::i_load__opc_loadw__regs__simm12_lo__reg0__:
    case Codasip::i_load__opc_loadw__regs__simm12_lo__reg0_alias__:
    case Codasip::i_ori_alias__regs__reg0__simm12_lo__:
    case Codasip::i_ori_alias__regs__reg0_alias__simm12_lo__:
    case Codasip::i_xori_alias__regs__reg0__simm12_lo__:
    case Codasip::i_xori_alias__regs__reg0_alias__simm12_lo__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = encodeMI3valIH1_10start_base8_6simm126simm121_9simm12_lo(MI, 1, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_jal__opc_jal__regs__rel_addr20__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = encodeMI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20(MI, 1, Fixups, STI);
      Value |= (op & UINT64_C(524288)) << 12;
      Value |= (op & UINT64_C(1023)) << 21;
      Value |= (op & UINT64_C(1024)) << 10;
      Value |= (op & UINT64_C(522240)) << 1;
      break;
    }
    case Codasip::i_addi_alias__regs__reg0__simm12_simple__:
    case Codasip::i_addi_alias__regs__reg0_alias__simm12_simple__:
    case Codasip::i_andi_alias__regs__reg0__simm12_simple__:
    case Codasip::i_andi_alias__regs__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_andi__regs__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_simple__:
    case Codasip::i_jalr__opc_jalr__regs__reg0__simm12_simple__:
    case Codasip::i_jalr__opc_jalr__regs__reg0_alias__simm12_simple__:
    case Codasip::i_load__opc_loadb__regs__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadb__regs__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadh__regs__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadh__regs__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0_alias__:
    case Codasip::i_load__opc_loadw__regs__simm12_simple__reg0__:
    case Codasip::i_load__opc_loadw__regs__simm12_simple__reg0_alias__:
    case Codasip::i_ori_alias__regs__reg0__simm12_simple__:
    case Codasip::i_ori_alias__regs__reg0_alias__simm12_simple__:
    case Codasip::i_xori_alias__regs__reg0__simm12_simple__:
    case Codasip::i_xori_alias__regs__reg0_alias__simm12_simple__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = encodeMI4simmIH1_10start_base8_6simm126simm121_13simm12_simple(MI, 1, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_comp_2reg_imm_shift__opc_slli__regs__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_slli__regs__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srai__regs__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srai__regs__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srli__regs__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srli__regs__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_slli_alias__regs__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_slli_alias__regs__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srai_alias__regs__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srai_alias__regs__reg0_alias__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srli_alias__regs__reg0__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srli_alias__regs__reg0_alias__shift_imm__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = encodeMI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm(MI, 1, Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_comp_3reg__opc_add__regs__regs__reg0__:
    case Codasip::i_comp_3reg__opc_add__regs__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_and__regs__regs__reg0__:
    case Codasip::i_comp_3reg__opc_and__regs__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_or__regs__regs__reg0__:
    case Codasip::i_comp_3reg__opc_or__regs__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sll__regs__regs__reg0__:
    case Codasip::i_comp_3reg__opc_sll__regs__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_slt__regs__regs__reg0__:
    case Codasip::i_comp_3reg__opc_slt__regs__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sltu__regs__regs__reg0__:
    case Codasip::i_comp_3reg__opc_sltu__regs__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sra__regs__regs__reg0__:
    case Codasip::i_comp_3reg__opc_sra__regs__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_srl__regs__regs__reg0__:
    case Codasip::i_comp_3reg__opc_srl__regs__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_sub__regs__regs__reg0__:
    case Codasip::i_comp_3reg__opc_sub__regs__regs__reg0_alias__:
    case Codasip::i_comp_3reg__opc_xor__regs__regs__reg0__:
    case Codasip::i_comp_3reg__opc_xor__regs__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__regs__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__regs__regs__reg0_alias__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__regs__regs__reg0__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__regs__regs__reg0_alias__:
    case Codasip::i_load_alias__opc_loadb__regs__regs__:
    case Codasip::i_load_alias__opc_loadbu__regs__regs__:
    case Codasip::i_load_alias__opc_loadh__regs__regs__:
    case Codasip::i_load_alias__opc_loadhu__regs__regs__:
    case Codasip::i_load_alias__opc_loadw__regs__regs__:
    case Codasip::i_move_alias__regs__regs__:
    case Codasip::i_mv_alias__regs__regs__:
    case Codasip::i_not_alias__regs__regs__:
    case Codasip::i_seqz_alias__regs__regs__:
    case Codasip::i_sltz_alias__regs__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_addi_alias__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_andi_alias__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_jalr__opc_jalr__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_ori_alias__regs__regs__simm12_pcrel_lo__:
    case Codasip::i_xori_alias__regs__regs__simm12_pcrel_lo__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op2
      op = encodeMI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo(MI, 2, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_addi_alias__regs__regs__simm12_lo__:
    case Codasip::i_andi_alias__regs__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_lo__:
    case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_lo__:
    case Codasip::i_jalr__opc_jalr__regs__regs__simm12_lo__:
    case Codasip::i_ori_alias__regs__regs__simm12_lo__:
    case Codasip::i_xori_alias__regs__regs__simm12_lo__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op2
      op = encodeMI3valIH1_10start_base8_6simm126simm121_9simm12_lo(MI, 2, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_addi_alias__regs__regs__simm12_simple__:
    case Codasip::i_andi_alias__regs__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:
    case Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:
    case Codasip::i_jalr__opc_jalr__regs__regs__simm12_simple__:
    case Codasip::i_ori_alias__regs__regs__simm12_simple__:
    case Codasip::i_xori_alias__regs__regs__simm12_simple__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op2
      op = encodeMI4simmIH1_10start_base8_6simm126simm121_13simm12_simple(MI, 2, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_slli_alias__regs__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srai_alias__regs__regs__shift_imm__:
    case Codasip::i_comp_2reg_imm_shift_srli_alias__regs__regs__shift_imm__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op2
      op = encodeMI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm(MI, 2, Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_comp_3reg__opc_sll__regs__regs__regs__:
    case Codasip::i_comp_3reg__opc_slt__regs__regs__regs__:
    case Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__:
    case Codasip::i_comp_3reg__opc_sra__regs__regs__regs__:
    case Codasip::i_comp_3reg__opc_srl__regs__regs__regs__:
    case Codasip::i_comp_3reg__opc_sub__regs__regs__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__regs__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__regs__regs__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op2
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_comp_3reg__opc_add__regs__reg0__regs__:
    case Codasip::i_comp_3reg__opc_add__regs__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_and__regs__reg0__regs__:
    case Codasip::i_comp_3reg__opc_and__regs__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_or__regs__reg0__regs__:
    case Codasip::i_comp_3reg__opc_or__regs__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_sll__regs__reg0__regs__:
    case Codasip::i_comp_3reg__opc_sll__regs__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_slt__regs__reg0__regs__:
    case Codasip::i_comp_3reg__opc_slt__regs__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_sltu__regs__reg0__regs__:
    case Codasip::i_comp_3reg__opc_sltu__regs__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_sra__regs__reg0__regs__:
    case Codasip::i_comp_3reg__opc_sra__regs__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_srl__regs__reg0__regs__:
    case Codasip::i_comp_3reg__opc_srl__regs__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_sub__regs__reg0__regs__:
    case Codasip::i_comp_3reg__opc_sub__regs__reg0_alias__regs__:
    case Codasip::i_comp_3reg__opc_xor__regs__reg0__regs__:
    case Codasip::i_comp_3reg__opc_xor__regs__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__regs__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__regs__reg0_alias__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__regs__reg0__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_g__regs__reg0_alias__regs__:
    case Codasip::i_neg_alias__regs__regs__:
    case Codasip::i_sgtz_alias__regs__regs__:
    case Codasip::i_snez_alias__regs__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_control_registers_reg__opc_csrrc__regs__regs_csr__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrc__regs__regs_csr__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrs__regs__regs_csr__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrs__regs__regs_csr__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrw__regs__regs_csr__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrw__regs__regs_csr__reg0_alias__:
    case Codasip::i_csrr_alias__regs__regs_csr__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_control_registers_imm__opc_csrrci__regs__regs_csr__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrsi__regs__regs_csr__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrwi__regs__regs_csr__imm5__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      // op: op2
      op = encodeMI3immIH1_10start_base6_4imm53imm1_4imm5(MI, 2, Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_control_registers_reg__opc_csrrc__regs__regs_csr__regs__:
    case Codasip::i_control_registers_reg__opc_csrrs__regs__regs_csr__regs__:
    case Codasip::i_control_registers_reg__opc_csrrw__regs__regs_csr__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      // op: op2
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__regs__:
    case Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op2
      op = encodeMI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo(MI, 2, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_load__opc_loadb__regs__simm12_lo__regs__:
    case Codasip::i_load__opc_loadbu__regs__simm12_lo__regs__:
    case Codasip::i_load__opc_loadh__regs__simm12_lo__regs__:
    case Codasip::i_load__opc_loadhu__regs__simm12_lo__regs__:
    case Codasip::i_load__opc_loadw__regs__simm12_lo__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op2
      op = encodeMI3valIH1_10start_base8_6simm126simm121_9simm12_lo(MI, 2, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_load__opc_loadb__regs__simm12_simple__regs__:
    case Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__:
    case Codasip::i_load__opc_loadh__regs__simm12_simple__regs__:
    case Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__:
    case Codasip::i_load__opc_loadw__regs__simm12_simple__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op2
      op = encodeMI4simmIH1_10start_base8_6simm126simm121_13simm12_simple(MI, 2, Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op2
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_comp_3reg__opc_add__regs__regs__regs__:
    case Codasip::i_comp_3reg__opc_and__regs__regs__regs__:
    case Codasip::i_comp_3reg__opc_or__regs__regs__regs__:
    case Codasip::i_comp_3reg__opc_xor__regs__regs__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__regs__regs__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op2
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op2
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__regs__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 7;
      Value |= op;
      // op: op3
      op = getMachineOpValue(MI, MI.getOperand(3), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op2
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_control_registers_reg__opc_csrrc__reg0__regs_csr__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrc__reg0__regs_csr__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrc__reg0_alias__regs_csr__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrc__reg0_alias__regs_csr__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrs__reg0__regs_csr__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrs__reg0__regs_csr__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrs__reg0_alias__regs_csr__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrs__reg0_alias__regs_csr__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrw__reg0__regs_csr__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrw__reg0__regs_csr__reg0_alias__:
    case Codasip::i_control_registers_reg__opc_csrrw__reg0_alias__regs_csr__reg0__:
    case Codasip::i_control_registers_reg__opc_csrrw__reg0_alias__regs_csr__reg0_alias__:
    case Codasip::i_csrc_alias__regs_csr__reg0__:
    case Codasip::i_csrc_alias__regs_csr__reg0_alias__:
    case Codasip::i_csrr_alias__reg0__regs_csr__:
    case Codasip::i_csrr_alias__reg0_alias__regs_csr__:
    case Codasip::i_csrs_alias__regs_csr__reg0__:
    case Codasip::i_csrs_alias__regs_csr__reg0_alias__:
    case Codasip::i_csrw_alias__regs_csr__reg0__:
    case Codasip::i_csrw_alias__regs_csr__reg0_alias__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      break;
    }
    case Codasip::i_control_registers_imm__opc_csrrci__reg0__regs_csr__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrci__reg0_alias__regs_csr__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrsi__reg0__regs_csr__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrsi__reg0_alias__regs_csr__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrwi__reg0__regs_csr__imm5__:
    case Codasip::i_control_registers_imm__opc_csrrwi__reg0_alias__regs_csr__imm5__:
    case Codasip::i_csrci_alias2__regs_csr__imm5__:
    case Codasip::i_csrci_alias__regs_csr__imm5__:
    case Codasip::i_csrsi_alias2__regs_csr__imm5__:
    case Codasip::i_csrsi_alias__regs_csr__imm5__:
    case Codasip::i_csrwi_alias__regs_csr__imm5__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      // op: op1
      op = encodeMI3immIH1_10start_base6_4imm53imm1_4imm5(MI, 1, Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_control_registers_reg__opc_csrrc__reg0__regs_csr__regs__:
    case Codasip::i_control_registers_reg__opc_csrrc__reg0_alias__regs_csr__regs__:
    case Codasip::i_control_registers_reg__opc_csrrs__reg0__regs_csr__regs__:
    case Codasip::i_control_registers_reg__opc_csrrs__reg0_alias__regs_csr__regs__:
    case Codasip::i_control_registers_reg__opc_csrrw__reg0__regs_csr__regs__:
    case Codasip::i_control_registers_reg__opc_csrrw__reg0_alias__regs_csr__regs__:
    case Codasip::i_csrc_alias__regs_csr__regs__:
    case Codasip::i_csrs_alias__regs_csr__regs__:
    case Codasip::i_csrw_alias__regs_csr__regs__: {
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(4095);
      op <<= 20;
      Value |= op;
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      break;
    }
    case Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__regs__: {
      // op: op1
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 15;
      Value |= op;
      // op: op0
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups, STI);
      op &= UINT64_C(31);
      op <<= 20;
      Value |= op;
      break;
    }
  default:
    std::string msg;
    raw_string_ostream Msg(msg);
    Msg << "Not supported instr: " << MI;
    report_fatal_error(Msg.str());
  }
  return Value;
}

#ifdef ENABLE_INSTR_PREDICATE_VERIFIER
#undef ENABLE_INSTR_PREDICATE_VERIFIER
#include <sstream>

// Bits for subtarget features that participate in instruction matching.
enum SubtargetFeatureBits : uint8_t {
};

#ifndef NDEBUG
static const char *SubtargetFeatureNames[] = {
  nullptr
};

#endif // NDEBUG
FeatureBitset CodasipMCCodeEmitter::
computeAvailableFeatures(const FeatureBitset& FB) const {
  FeatureBitset Features;
  return Features;
}

#ifndef NDEBUG
// Feature bitsets.
enum : uint8_t {
  CEFBS_None,
};

const static FeatureBitset FeatureBitsets[] {
  {}, // CEFBS_None
};
#endif // NDEBUG

void CodasipMCCodeEmitter::verifyInstructionPredicates(
    const MCInst &Inst, const FeatureBitset &AvailableFeatures) const {
#ifndef NDEBUG
  static uint8_t RequiredFeaturesRefs[] = {
    CEFBS_None, // PHI = 0
    CEFBS_None, // INLINEASM = 1
    CEFBS_None, // INLINEASM_BR = 2
    CEFBS_None, // CFI_INSTRUCTION = 3
    CEFBS_None, // EH_LABEL = 4
    CEFBS_None, // GC_LABEL = 5
    CEFBS_None, // ANNOTATION_LABEL = 6
    CEFBS_None, // KILL = 7
    CEFBS_None, // EXTRACT_SUBREG = 8
    CEFBS_None, // INSERT_SUBREG = 9
    CEFBS_None, // IMPLICIT_DEF = 10
    CEFBS_None, // SUBREG_TO_REG = 11
    CEFBS_None, // COPY_TO_REGCLASS = 12
    CEFBS_None, // DBG_VALUE = 13
    CEFBS_None, // DBG_LABEL = 14
    CEFBS_None, // REG_SEQUENCE = 15
    CEFBS_None, // COPY = 16
    CEFBS_None, // BUNDLE = 17
    CEFBS_None, // LIFETIME_START = 18
    CEFBS_None, // LIFETIME_END = 19
    CEFBS_None, // STACKMAP = 20
    CEFBS_None, // FENTRY_CALL = 21
    CEFBS_None, // PATCHPOINT = 22
    CEFBS_None, // LOAD_STACK_GUARD = 23
    CEFBS_None, // STATEPOINT = 24
    CEFBS_None, // LOCAL_ESCAPE = 25
    CEFBS_None, // FAULTING_OP = 26
    CEFBS_None, // PATCHABLE_OP = 27
    CEFBS_None, // PATCHABLE_FUNCTION_ENTER = 28
    CEFBS_None, // PATCHABLE_RET = 29
    CEFBS_None, // PATCHABLE_FUNCTION_EXIT = 30
    CEFBS_None, // PATCHABLE_TAIL_CALL = 31
    CEFBS_None, // PATCHABLE_EVENT_CALL = 32
    CEFBS_None, // PATCHABLE_TYPED_EVENT_CALL = 33
    CEFBS_None, // ICALL_BRANCH_FUNNEL = 34
    CEFBS_None, // G_ADD = 35
    CEFBS_None, // G_SUB = 36
    CEFBS_None, // G_MUL = 37
    CEFBS_None, // G_SDIV = 38
    CEFBS_None, // G_UDIV = 39
    CEFBS_None, // G_SREM = 40
    CEFBS_None, // G_UREM = 41
    CEFBS_None, // G_AND = 42
    CEFBS_None, // G_OR = 43
    CEFBS_None, // G_XOR = 44
    CEFBS_None, // G_IMPLICIT_DEF = 45
    CEFBS_None, // G_PHI = 46
    CEFBS_None, // G_FRAME_INDEX = 47
    CEFBS_None, // G_GLOBAL_VALUE = 48
    CEFBS_None, // G_EXTRACT = 49
    CEFBS_None, // G_UNMERGE_VALUES = 50
    CEFBS_None, // G_INSERT = 51
    CEFBS_None, // G_MERGE_VALUES = 52
    CEFBS_None, // G_BUILD_VECTOR = 53
    CEFBS_None, // G_BUILD_VECTOR_TRUNC = 54
    CEFBS_None, // G_CONCAT_VECTORS = 55
    CEFBS_None, // G_PTRTOINT = 56
    CEFBS_None, // G_INTTOPTR = 57
    CEFBS_None, // G_BITCAST = 58
    CEFBS_None, // G_INTRINSIC_TRUNC = 59
    CEFBS_None, // G_INTRINSIC_ROUND = 60
    CEFBS_None, // G_LOAD = 61
    CEFBS_None, // G_SEXTLOAD = 62
    CEFBS_None, // G_ZEXTLOAD = 63
    CEFBS_None, // G_STORE = 64
    CEFBS_None, // G_ATOMIC_CMPXCHG_WITH_SUCCESS = 65
    CEFBS_None, // G_ATOMIC_CMPXCHG = 66
    CEFBS_None, // G_ATOMICRMW_XCHG = 67
    CEFBS_None, // G_ATOMICRMW_ADD = 68
    CEFBS_None, // G_ATOMICRMW_SUB = 69
    CEFBS_None, // G_ATOMICRMW_AND = 70
    CEFBS_None, // G_ATOMICRMW_NAND = 71
    CEFBS_None, // G_ATOMICRMW_OR = 72
    CEFBS_None, // G_ATOMICRMW_XOR = 73
    CEFBS_None, // G_ATOMICRMW_MAX = 74
    CEFBS_None, // G_ATOMICRMW_MIN = 75
    CEFBS_None, // G_ATOMICRMW_UMAX = 76
    CEFBS_None, // G_ATOMICRMW_UMIN = 77
    CEFBS_None, // G_FENCE = 78
    CEFBS_None, // G_BRCOND = 79
    CEFBS_None, // G_BRINDIRECT = 80
    CEFBS_None, // G_INTRINSIC = 81
    CEFBS_None, // G_INTRINSIC_W_SIDE_EFFECTS = 82
    CEFBS_None, // G_ANYEXT = 83
    CEFBS_None, // G_TRUNC = 84
    CEFBS_None, // G_CONSTANT = 85
    CEFBS_None, // G_FCONSTANT = 86
    CEFBS_None, // G_VASTART = 87
    CEFBS_None, // G_VAARG = 88
    CEFBS_None, // G_SEXT = 89
    CEFBS_None, // G_ZEXT = 90
    CEFBS_None, // G_SHL = 91
    CEFBS_None, // G_LSHR = 92
    CEFBS_None, // G_ASHR = 93
    CEFBS_None, // G_ICMP = 94
    CEFBS_None, // G_FCMP = 95
    CEFBS_None, // G_SELECT = 96
    CEFBS_None, // G_UADDO = 97
    CEFBS_None, // G_UADDE = 98
    CEFBS_None, // G_USUBO = 99
    CEFBS_None, // G_USUBE = 100
    CEFBS_None, // G_SADDO = 101
    CEFBS_None, // G_SADDE = 102
    CEFBS_None, // G_SSUBO = 103
    CEFBS_None, // G_SSUBE = 104
    CEFBS_None, // G_UMULO = 105
    CEFBS_None, // G_SMULO = 106
    CEFBS_None, // G_UMULH = 107
    CEFBS_None, // G_SMULH = 108
    CEFBS_None, // G_FADD = 109
    CEFBS_None, // G_FSUB = 110
    CEFBS_None, // G_FMUL = 111
    CEFBS_None, // G_FMA = 112
    CEFBS_None, // G_FDIV = 113
    CEFBS_None, // G_FREM = 114
    CEFBS_None, // G_FPOW = 115
    CEFBS_None, // G_FEXP = 116
    CEFBS_None, // G_FEXP2 = 117
    CEFBS_None, // G_FLOG = 118
    CEFBS_None, // G_FLOG2 = 119
    CEFBS_None, // G_FLOG10 = 120
    CEFBS_None, // G_FNEG = 121
    CEFBS_None, // G_FPEXT = 122
    CEFBS_None, // G_FPTRUNC = 123
    CEFBS_None, // G_FPTOSI = 124
    CEFBS_None, // G_FPTOUI = 125
    CEFBS_None, // G_SITOFP = 126
    CEFBS_None, // G_UITOFP = 127
    CEFBS_None, // G_FABS = 128
    CEFBS_None, // G_FCOPYSIGN = 129
    CEFBS_None, // G_FCANONICALIZE = 130
    CEFBS_None, // G_FMINNUM = 131
    CEFBS_None, // G_FMAXNUM = 132
    CEFBS_None, // G_FMINNUM_IEEE = 133
    CEFBS_None, // G_FMAXNUM_IEEE = 134
    CEFBS_None, // G_FMINIMUM = 135
    CEFBS_None, // G_FMAXIMUM = 136
    CEFBS_None, // G_GEP = 137
    CEFBS_None, // G_PTR_MASK = 138
    CEFBS_None, // G_SMIN = 139
    CEFBS_None, // G_SMAX = 140
    CEFBS_None, // G_UMIN = 141
    CEFBS_None, // G_UMAX = 142
    CEFBS_None, // G_BR = 143
    CEFBS_None, // G_BRJT = 144
    CEFBS_None, // G_INSERT_VECTOR_ELT = 145
    CEFBS_None, // G_EXTRACT_VECTOR_ELT = 146
    CEFBS_None, // G_SHUFFLE_VECTOR = 147
    CEFBS_None, // G_CTTZ = 148
    CEFBS_None, // G_CTTZ_ZERO_UNDEF = 149
    CEFBS_None, // G_CTLZ = 150
    CEFBS_None, // G_CTLZ_ZERO_UNDEF = 151
    CEFBS_None, // G_CTPOP = 152
    CEFBS_None, // G_BSWAP = 153
    CEFBS_None, // G_FCEIL = 154
    CEFBS_None, // G_FCOS = 155
    CEFBS_None, // G_FSIN = 156
    CEFBS_None, // G_FSQRT = 157
    CEFBS_None, // G_FFLOOR = 158
    CEFBS_None, // G_FRINT = 159
    CEFBS_None, // G_FNEARBYINT = 160
    CEFBS_None, // G_ADDRSPACE_CAST = 161
    CEFBS_None, // G_BLOCK_ADDR = 162
    CEFBS_None, // G_JUMP_TABLE = 163
    CEFBS_None, // CALLEND = 164
    CEFBS_None, // CALLSTART = 165
    CEFBS_None, // EH_SJLJ_SETUP_DISPATCH = 166
    CEFBS_None, // EH_SjLj_LongJmp = 167
    CEFBS_None, // EH_SjLj_SetJmp = 168
    CEFBS_None, // EH_SjLj_Setup = 169
    CEFBS_None, // c_addi_lo__opc_addi__regs__regs__ = 170
    CEFBS_None, // c_lui_hi__opc_lui__regs__ = 171
    CEFBS_None, // e_movi32__ = 172
    CEFBS_None, // e_movi32__BA = 173
    CEFBS_None, // e_movi32__CP = 174
    CEFBS_None, // e_movi32__ES = 175
    CEFBS_None, // e_movi32__GA = 176
    CEFBS_None, // e_movi32__JT = 177
    CEFBS_None, // e_movi32__MC = 178
    CEFBS_None, // hwloop_loop_decrement_reg = 179
    CEFBS_None, // hwloop_set_loop_iterations = 180
    CEFBS_None, // i_call_rel_alias__rel_addr20__BA = 181
    CEFBS_None, // i_call_rel_alias__rel_addr20__ES = 182
    CEFBS_None, // i_call_rel_alias__rel_addr20__MC = 183
    CEFBS_None, // i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__6_BIGIMM_EMUL_ = 184
    CEFBS_None, // i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__7_BIGIMM_EMUL_ = 185
    CEFBS_None, // i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__8_BIGIMM_EMUL_ = 186
    CEFBS_None, // i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__0__ = 187
    CEFBS_None, // i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__1__ = 188
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__0__ = 189
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__1__ = 190
    CEFBS_None, // i_comp_3reg__opc_sll__regs__regs__regs__SHIFT_MASK_CLONE_ = 191
    CEFBS_None, // i_comp_3reg__opc_slt__regs__regs__regs__swappedCmpClone0__ = 192
    CEFBS_None, // i_comp_3reg__opc_sltu__regs__regs__regs__swappedCmpClone0__ = 193
    CEFBS_None, // i_comp_3reg__opc_sra__regs__regs__regs__SHIFT_MASK_CLONE_ = 194
    CEFBS_None, // i_comp_3reg__opc_srl__regs__regs__regs__SHIFT_MASK_CLONE_ = 195
    CEFBS_None, // i_control_conditional__opc_bge__regs__regs__rel_addr12__swappedCmpClone0__ = 196
    CEFBS_None, // i_control_conditional__opc_bgeu__regs__regs__rel_addr12__swappedCmpClone0__ = 197
    CEFBS_None, // i_control_conditional__opc_blt__regs__regs__rel_addr12__swappedCmpClone0__ = 198
    CEFBS_None, // i_control_conditional__opc_bltu__regs__regs__rel_addr12__swappedCmpClone0__ = 199
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__AEXT_CLONE_ = 200
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__regs__AEXT_CLONE_ = 201
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0__AEXT_CLONE_ = 202
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__regs__regs__regs__AEXT_CLONE_ = 203
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0__MOI_CLONE_ = 204
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__regs__MOI_CLONE_ = 205
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0__MOI_CLONE_ = 206
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__regs__MOI_CLONE_ = 207
    CEFBS_None, // i_jal_abs__opc_jal__reg0__rel_addr20__ = 208
    CEFBS_None, // i_jal_abs__opc_jal__regs__rel_addr20__ = 209
    CEFBS_None, // i_jalr__opc_jalr__regs__regs__simm12_simple__immspec_1_ = 210
    CEFBS_None, // i_load__opc_loadb__reg0__simm12_simple__regs__immspec_1_ = 211
    CEFBS_None, // i_load__opc_loadb__regs__simm12_simple__reg0__AEXT_CLONE_ = 212
    CEFBS_None, // i_load__opc_loadb__regs__simm12_simple__regs__AEXT_CLONE_ = 213
    CEFBS_None, // i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_ = 214
    CEFBS_None, // i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_ = 215
    CEFBS_None, // i_load__opc_loadbu__regs__simm12_simple__reg0__AEXT_CLONE_ = 216
    CEFBS_None, // i_load__opc_loadbu__regs__simm12_simple__regs__AEXT_CLONE_ = 217
    CEFBS_None, // i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_ = 218
    CEFBS_None, // i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_ = 219
    CEFBS_None, // i_load__opc_loadh__reg0__simm12_simple__regs__immspec_1_ = 220
    CEFBS_None, // i_load__opc_loadh__regs__simm12_simple__reg0__AEXT_CLONE_ = 221
    CEFBS_None, // i_load__opc_loadh__regs__simm12_simple__regs__AEXT_CLONE_ = 222
    CEFBS_None, // i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_ = 223
    CEFBS_None, // i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_ = 224
    CEFBS_None, // i_load__opc_loadhu__regs__simm12_simple__reg0__AEXT_CLONE_ = 225
    CEFBS_None, // i_load__opc_loadhu__regs__simm12_simple__regs__AEXT_CLONE_ = 226
    CEFBS_None, // i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_ = 227
    CEFBS_None, // i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_ = 228
    CEFBS_None, // i_load__opc_loadw__reg0__simm12_simple__regs__immspec_1_ = 229
    CEFBS_None, // i_load__opc_loadw__regs__simm12_simple__regs__2_REG_EMUL_ = 230
    CEFBS_None, // i_load__opc_loadw__regs__simm12_simple__regs__3_BIGIMM_EMUL_ = 231
    CEFBS_None, // i_load__opc_loadw__regs__simm12_simple__regs__5_BIGIMM_EMUL_ = 232
    CEFBS_None, // i_load__opc_loadw__regs__simm12_simple__regs__immspec_1_ = 233
    CEFBS_None, // i_ori_emulation_alias__reg0__reg0__simm12_lo__ = 234
    CEFBS_None, // i_ori_emulation_alias__reg0__reg0__simm12_pcrel_lo__ = 235
    CEFBS_None, // i_ori_emulation_alias__reg0__reg0__simm12_simple__ = 236
    CEFBS_None, // i_ori_emulation_alias__reg0__regs__simm12_lo__ = 237
    CEFBS_None, // i_ori_emulation_alias__reg0__regs__simm12_pcrel_lo__ = 238
    CEFBS_None, // i_ori_emulation_alias__reg0__regs__simm12_simple__ = 239
    CEFBS_None, // i_ori_emulation_alias__regs__reg0__simm12_lo__ = 240
    CEFBS_None, // i_ori_emulation_alias__regs__reg0__simm12_pcrel_lo__ = 241
    CEFBS_None, // i_ori_emulation_alias__regs__reg0__simm12_simple__ = 242
    CEFBS_None, // i_ori_emulation_alias__regs__regs__simm12_lo__ = 243
    CEFBS_None, // i_ori_emulation_alias__regs__regs__simm12_pcrel_lo__ = 244
    CEFBS_None, // i_ori_emulation_alias__regs__regs__simm12_simple__ = 245
    CEFBS_None, // i_store__opc_storeb__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_ = 246
    CEFBS_None, // i_store__opc_storeb__reg0__simm12_simple__regs__i32_TRUNC_CLONE_ = 247
    CEFBS_None, // i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_ = 248
    CEFBS_None, // i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_ = 249
    CEFBS_None, // i_store__opc_storeb__regs__simm12_simple__regs__immspec_1_ = 250
    CEFBS_None, // i_store__opc_storeh__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_ = 251
    CEFBS_None, // i_store__opc_storeh__reg0__simm12_simple__regs__i32_TRUNC_CLONE_ = 252
    CEFBS_None, // i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_ = 253
    CEFBS_None, // i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_ = 254
    CEFBS_None, // i_store__opc_storeh__regs__simm12_simple__regs__immspec_1_ = 255
    CEFBS_None, // i_store__opc_storew__reg0__simm12_simple__regs__immspec_1_ = 256
    CEFBS_None, // i_store__opc_storew__regs__simm12_simple__regs__0_REG_EMUL_ = 257
    CEFBS_None, // i_store__opc_storew__regs__simm12_simple__regs__1_BIGIMM_EMUL_ = 258
    CEFBS_None, // i_store__opc_storew__regs__simm12_simple__regs__4_BIGIMM_EMUL_ = 259
    CEFBS_None, // i_store__opc_storew__regs__simm12_simple__regs__immspec_1_ = 260
    CEFBS_None, // load_imm32__regs__regs__regs__ = 261
    CEFBS_None, // rule_SELECT_10 = 262
    CEFBS_None, // rule_SELECT_11 = 263
    CEFBS_None, // rule_SELECT_12 = 264
    CEFBS_None, // rule_SELECT_13 = 265
    CEFBS_None, // rule_SELECT_14 = 266
    CEFBS_None, // rule_SELECT_15 = 267
    CEFBS_None, // rule_SELECT_16 = 268
    CEFBS_None, // rule_SELECT_17 = 269
    CEFBS_None, // rule_SELECT_7 = 270
    CEFBS_None, // rule_SELECT_8 = 271
    CEFBS_None, // rule_SELECT_9 = 272
    CEFBS_None, // i_addi_alias__reg0__reg0__simm12_lo__ = 273
    CEFBS_None, // i_addi_alias__reg0__reg0__simm12_pcrel_lo__ = 274
    CEFBS_None, // i_addi_alias__reg0__reg0__simm12_simple__ = 275
    CEFBS_None, // i_addi_alias__reg0__reg0_alias__simm12_lo__ = 276
    CEFBS_None, // i_addi_alias__reg0__reg0_alias__simm12_pcrel_lo__ = 277
    CEFBS_None, // i_addi_alias__reg0__reg0_alias__simm12_simple__ = 278
    CEFBS_None, // i_addi_alias__reg0__regs__simm12_lo__ = 279
    CEFBS_None, // i_addi_alias__reg0__regs__simm12_pcrel_lo__ = 280
    CEFBS_None, // i_addi_alias__reg0__regs__simm12_simple__ = 281
    CEFBS_None, // i_addi_alias__reg0_alias__reg0__simm12_lo__ = 282
    CEFBS_None, // i_addi_alias__reg0_alias__reg0__simm12_pcrel_lo__ = 283
    CEFBS_None, // i_addi_alias__reg0_alias__reg0__simm12_simple__ = 284
    CEFBS_None, // i_addi_alias__reg0_alias__reg0_alias__simm12_lo__ = 285
    CEFBS_None, // i_addi_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__ = 286
    CEFBS_None, // i_addi_alias__reg0_alias__reg0_alias__simm12_simple__ = 287
    CEFBS_None, // i_addi_alias__reg0_alias__regs__simm12_lo__ = 288
    CEFBS_None, // i_addi_alias__reg0_alias__regs__simm12_pcrel_lo__ = 289
    CEFBS_None, // i_addi_alias__reg0_alias__regs__simm12_simple__ = 290
    CEFBS_None, // i_addi_alias__regs__reg0__simm12_lo__ = 291
    CEFBS_None, // i_addi_alias__regs__reg0__simm12_pcrel_lo__ = 292
    CEFBS_None, // i_addi_alias__regs__reg0__simm12_simple__ = 293
    CEFBS_None, // i_addi_alias__regs__reg0_alias__simm12_lo__ = 294
    CEFBS_None, // i_addi_alias__regs__reg0_alias__simm12_pcrel_lo__ = 295
    CEFBS_None, // i_addi_alias__regs__reg0_alias__simm12_simple__ = 296
    CEFBS_None, // i_addi_alias__regs__regs__simm12_lo__ = 297
    CEFBS_None, // i_addi_alias__regs__regs__simm12_pcrel_lo__ = 298
    CEFBS_None, // i_addi_alias__regs__regs__simm12_simple__ = 299
    CEFBS_None, // i_andi_alias__reg0__reg0__simm12_lo__ = 300
    CEFBS_None, // i_andi_alias__reg0__reg0__simm12_pcrel_lo__ = 301
    CEFBS_None, // i_andi_alias__reg0__reg0__simm12_simple__ = 302
    CEFBS_None, // i_andi_alias__reg0__reg0_alias__simm12_lo__ = 303
    CEFBS_None, // i_andi_alias__reg0__reg0_alias__simm12_pcrel_lo__ = 304
    CEFBS_None, // i_andi_alias__reg0__reg0_alias__simm12_simple__ = 305
    CEFBS_None, // i_andi_alias__reg0__regs__simm12_lo__ = 306
    CEFBS_None, // i_andi_alias__reg0__regs__simm12_pcrel_lo__ = 307
    CEFBS_None, // i_andi_alias__reg0__regs__simm12_simple__ = 308
    CEFBS_None, // i_andi_alias__reg0_alias__reg0__simm12_lo__ = 309
    CEFBS_None, // i_andi_alias__reg0_alias__reg0__simm12_pcrel_lo__ = 310
    CEFBS_None, // i_andi_alias__reg0_alias__reg0__simm12_simple__ = 311
    CEFBS_None, // i_andi_alias__reg0_alias__reg0_alias__simm12_lo__ = 312
    CEFBS_None, // i_andi_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__ = 313
    CEFBS_None, // i_andi_alias__reg0_alias__reg0_alias__simm12_simple__ = 314
    CEFBS_None, // i_andi_alias__reg0_alias__regs__simm12_lo__ = 315
    CEFBS_None, // i_andi_alias__reg0_alias__regs__simm12_pcrel_lo__ = 316
    CEFBS_None, // i_andi_alias__reg0_alias__regs__simm12_simple__ = 317
    CEFBS_None, // i_andi_alias__regs__reg0__simm12_lo__ = 318
    CEFBS_None, // i_andi_alias__regs__reg0__simm12_pcrel_lo__ = 319
    CEFBS_None, // i_andi_alias__regs__reg0__simm12_simple__ = 320
    CEFBS_None, // i_andi_alias__regs__reg0_alias__simm12_lo__ = 321
    CEFBS_None, // i_andi_alias__regs__reg0_alias__simm12_pcrel_lo__ = 322
    CEFBS_None, // i_andi_alias__regs__reg0_alias__simm12_simple__ = 323
    CEFBS_None, // i_andi_alias__regs__regs__simm12_lo__ = 324
    CEFBS_None, // i_andi_alias__regs__regs__simm12_pcrel_lo__ = 325
    CEFBS_None, // i_andi_alias__regs__regs__simm12_simple__ = 326
    CEFBS_None, // i_auipc__opc_auipc__reg0__imm20_s12__ = 327
    CEFBS_None, // i_auipc__opc_auipc__reg0_alias__imm20_s12__ = 328
    CEFBS_None, // i_auipc__opc_auipc__regs__imm20_s12__ = 329
    CEFBS_None, // i_auipc_hi__opc_auipc__reg0__imm20_hi__ = 330
    CEFBS_None, // i_auipc_hi__opc_auipc__reg0__imm20_pcrel_hi__ = 331
    CEFBS_None, // i_auipc_hi__opc_auipc__reg0_alias__imm20_hi__ = 332
    CEFBS_None, // i_auipc_hi__opc_auipc__reg0_alias__imm20_pcrel_hi__ = 333
    CEFBS_None, // i_auipc_hi__opc_auipc__regs__imm20_hi__ = 334
    CEFBS_None, // i_auipc_hi__opc_auipc__regs__imm20_pcrel_hi__ = 335
    CEFBS_None, // i_beqz_alias__reg0__rel_addr12__ = 336
    CEFBS_None, // i_beqz_alias__reg0_alias__rel_addr12__ = 337
    CEFBS_None, // i_beqz_alias__regs__rel_addr12__ = 338
    CEFBS_None, // i_bgez_alias__reg0__rel_addr12__ = 339
    CEFBS_None, // i_bgez_alias__reg0_alias__rel_addr12__ = 340
    CEFBS_None, // i_bgez_alias__regs__rel_addr12__ = 341
    CEFBS_None, // i_bgt_alias__reg0__reg0__rel_addr12__ = 342
    CEFBS_None, // i_bgt_alias__reg0__reg0_alias__rel_addr12__ = 343
    CEFBS_None, // i_bgt_alias__reg0__regs__rel_addr12__ = 344
    CEFBS_None, // i_bgt_alias__reg0_alias__reg0__rel_addr12__ = 345
    CEFBS_None, // i_bgt_alias__reg0_alias__reg0_alias__rel_addr12__ = 346
    CEFBS_None, // i_bgt_alias__reg0_alias__regs__rel_addr12__ = 347
    CEFBS_None, // i_bgt_alias__regs__reg0__rel_addr12__ = 348
    CEFBS_None, // i_bgt_alias__regs__reg0_alias__rel_addr12__ = 349
    CEFBS_None, // i_bgt_alias__regs__regs__rel_addr12__ = 350
    CEFBS_None, // i_bgtu_alias__reg0__reg0__rel_addr12__ = 351
    CEFBS_None, // i_bgtu_alias__reg0__reg0_alias__rel_addr12__ = 352
    CEFBS_None, // i_bgtu_alias__reg0__regs__rel_addr12__ = 353
    CEFBS_None, // i_bgtu_alias__reg0_alias__reg0__rel_addr12__ = 354
    CEFBS_None, // i_bgtu_alias__reg0_alias__reg0_alias__rel_addr12__ = 355
    CEFBS_None, // i_bgtu_alias__reg0_alias__regs__rel_addr12__ = 356
    CEFBS_None, // i_bgtu_alias__regs__reg0__rel_addr12__ = 357
    CEFBS_None, // i_bgtu_alias__regs__reg0_alias__rel_addr12__ = 358
    CEFBS_None, // i_bgtu_alias__regs__regs__rel_addr12__ = 359
    CEFBS_None, // i_bgtz_alias__reg0__rel_addr12__ = 360
    CEFBS_None, // i_bgtz_alias__reg0_alias__rel_addr12__ = 361
    CEFBS_None, // i_bgtz_alias__regs__rel_addr12__ = 362
    CEFBS_None, // i_ble_alias__reg0__reg0__rel_addr12__ = 363
    CEFBS_None, // i_ble_alias__reg0__reg0_alias__rel_addr12__ = 364
    CEFBS_None, // i_ble_alias__reg0__regs__rel_addr12__ = 365
    CEFBS_None, // i_ble_alias__reg0_alias__reg0__rel_addr12__ = 366
    CEFBS_None, // i_ble_alias__reg0_alias__reg0_alias__rel_addr12__ = 367
    CEFBS_None, // i_ble_alias__reg0_alias__regs__rel_addr12__ = 368
    CEFBS_None, // i_ble_alias__regs__reg0__rel_addr12__ = 369
    CEFBS_None, // i_ble_alias__regs__reg0_alias__rel_addr12__ = 370
    CEFBS_None, // i_ble_alias__regs__regs__rel_addr12__ = 371
    CEFBS_None, // i_bleu_alias__reg0__reg0__rel_addr12__ = 372
    CEFBS_None, // i_bleu_alias__reg0__reg0_alias__rel_addr12__ = 373
    CEFBS_None, // i_bleu_alias__reg0__regs__rel_addr12__ = 374
    CEFBS_None, // i_bleu_alias__reg0_alias__reg0__rel_addr12__ = 375
    CEFBS_None, // i_bleu_alias__reg0_alias__reg0_alias__rel_addr12__ = 376
    CEFBS_None, // i_bleu_alias__reg0_alias__regs__rel_addr12__ = 377
    CEFBS_None, // i_bleu_alias__regs__reg0__rel_addr12__ = 378
    CEFBS_None, // i_bleu_alias__regs__reg0_alias__rel_addr12__ = 379
    CEFBS_None, // i_bleu_alias__regs__regs__rel_addr12__ = 380
    CEFBS_None, // i_blez_alias__reg0__rel_addr12__ = 381
    CEFBS_None, // i_blez_alias__reg0_alias__rel_addr12__ = 382
    CEFBS_None, // i_blez_alias__regs__rel_addr12__ = 383
    CEFBS_None, // i_bltz_alias__reg0__rel_addr12__ = 384
    CEFBS_None, // i_bltz_alias__reg0_alias__rel_addr12__ = 385
    CEFBS_None, // i_bltz_alias__regs__rel_addr12__ = 386
    CEFBS_None, // i_bnez_alias__reg0__rel_addr12__ = 387
    CEFBS_None, // i_bnez_alias__reg0_alias__rel_addr12__ = 388
    CEFBS_None, // i_bnez_alias__regs__rel_addr12__ = 389
    CEFBS_None, // i_call_alias__rel_addr32_call_tail_simple__ = 390
    CEFBS_None, // i_call_reg_alias__reg0__ = 391
    CEFBS_None, // i_call_reg_alias__reg0_alias__ = 392
    CEFBS_None, // i_call_reg_alias__regs__ = 393
    CEFBS_None, // i_call_rel_alias__rel_addr20__ = 394
    CEFBS_None, // i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_lo__ = 395
    CEFBS_None, // i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_pcrel_lo__ = 396
    CEFBS_None, // i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_simple__ = 397
    CEFBS_None, // i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_lo__ = 398
    CEFBS_None, // i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_pcrel_lo__ = 399
    CEFBS_None, // i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_simple__ = 400
    CEFBS_None, // i_comp_2reg_imm__opc_addi__reg0__regs__simm12_lo__ = 401
    CEFBS_None, // i_comp_2reg_imm__opc_addi__reg0__regs__simm12_pcrel_lo__ = 402
    CEFBS_None, // i_comp_2reg_imm__opc_addi__reg0__regs__simm12_simple__ = 403
    CEFBS_None, // i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_lo__ = 404
    CEFBS_None, // i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_pcrel_lo__ = 405
    CEFBS_None, // i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_simple__ = 406
    CEFBS_None, // i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_lo__ = 407
    CEFBS_None, // i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_pcrel_lo__ = 408
    CEFBS_None, // i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_simple__ = 409
    CEFBS_None, // i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_lo__ = 410
    CEFBS_None, // i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_pcrel_lo__ = 411
    CEFBS_None, // i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_simple__ = 412
    CEFBS_None, // i_comp_2reg_imm__opc_addi__regs__reg0__simm12_lo__ = 413
    CEFBS_None, // i_comp_2reg_imm__opc_addi__regs__reg0__simm12_pcrel_lo__ = 414
    CEFBS_None, // i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__ = 415
    CEFBS_None, // i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_lo__ = 416
    CEFBS_None, // i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_pcrel_lo__ = 417
    CEFBS_None, // i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_simple__ = 418
    CEFBS_None, // i_comp_2reg_imm__opc_addi__regs__regs__simm12_lo__ = 419
    CEFBS_None, // i_comp_2reg_imm__opc_addi__regs__regs__simm12_pcrel_lo__ = 420
    CEFBS_None, // i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__ = 421
    CEFBS_None, // i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_lo__ = 422
    CEFBS_None, // i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_pcrel_lo__ = 423
    CEFBS_None, // i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_simple__ = 424
    CEFBS_None, // i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_lo__ = 425
    CEFBS_None, // i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_pcrel_lo__ = 426
    CEFBS_None, // i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_simple__ = 427
    CEFBS_None, // i_comp_2reg_imm__opc_andi__reg0__regs__simm12_lo__ = 428
    CEFBS_None, // i_comp_2reg_imm__opc_andi__reg0__regs__simm12_pcrel_lo__ = 429
    CEFBS_None, // i_comp_2reg_imm__opc_andi__reg0__regs__simm12_simple__ = 430
    CEFBS_None, // i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_lo__ = 431
    CEFBS_None, // i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_pcrel_lo__ = 432
    CEFBS_None, // i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_simple__ = 433
    CEFBS_None, // i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_lo__ = 434
    CEFBS_None, // i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_pcrel_lo__ = 435
    CEFBS_None, // i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_simple__ = 436
    CEFBS_None, // i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_lo__ = 437
    CEFBS_None, // i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_pcrel_lo__ = 438
    CEFBS_None, // i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_simple__ = 439
    CEFBS_None, // i_comp_2reg_imm__opc_andi__regs__reg0__simm12_lo__ = 440
    CEFBS_None, // i_comp_2reg_imm__opc_andi__regs__reg0__simm12_pcrel_lo__ = 441
    CEFBS_None, // i_comp_2reg_imm__opc_andi__regs__reg0__simm12_simple__ = 442
    CEFBS_None, // i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_lo__ = 443
    CEFBS_None, // i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_pcrel_lo__ = 444
    CEFBS_None, // i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_simple__ = 445
    CEFBS_None, // i_comp_2reg_imm__opc_andi__regs__regs__simm12_lo__ = 446
    CEFBS_None, // i_comp_2reg_imm__opc_andi__regs__regs__simm12_pcrel_lo__ = 447
    CEFBS_None, // i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__ = 448
    CEFBS_None, // i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_lo__ = 449
    CEFBS_None, // i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_pcrel_lo__ = 450
    CEFBS_None, // i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_simple__ = 451
    CEFBS_None, // i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_lo__ = 452
    CEFBS_None, // i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_pcrel_lo__ = 453
    CEFBS_None, // i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_simple__ = 454
    CEFBS_None, // i_comp_2reg_imm__opc_ori__reg0__regs__simm12_lo__ = 455
    CEFBS_None, // i_comp_2reg_imm__opc_ori__reg0__regs__simm12_pcrel_lo__ = 456
    CEFBS_None, // i_comp_2reg_imm__opc_ori__reg0__regs__simm12_simple__ = 457
    CEFBS_None, // i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_lo__ = 458
    CEFBS_None, // i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_pcrel_lo__ = 459
    CEFBS_None, // i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_simple__ = 460
    CEFBS_None, // i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_lo__ = 461
    CEFBS_None, // i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_pcrel_lo__ = 462
    CEFBS_None, // i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_simple__ = 463
    CEFBS_None, // i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_lo__ = 464
    CEFBS_None, // i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_pcrel_lo__ = 465
    CEFBS_None, // i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_simple__ = 466
    CEFBS_None, // i_comp_2reg_imm__opc_ori__regs__reg0__simm12_lo__ = 467
    CEFBS_None, // i_comp_2reg_imm__opc_ori__regs__reg0__simm12_pcrel_lo__ = 468
    CEFBS_None, // i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__ = 469
    CEFBS_None, // i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_lo__ = 470
    CEFBS_None, // i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_pcrel_lo__ = 471
    CEFBS_None, // i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_simple__ = 472
    CEFBS_None, // i_comp_2reg_imm__opc_ori__regs__regs__simm12_lo__ = 473
    CEFBS_None, // i_comp_2reg_imm__opc_ori__regs__regs__simm12_pcrel_lo__ = 474
    CEFBS_None, // i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__ = 475
    CEFBS_None, // i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_lo__ = 476
    CEFBS_None, // i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_pcrel_lo__ = 477
    CEFBS_None, // i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_simple__ = 478
    CEFBS_None, // i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_lo__ = 479
    CEFBS_None, // i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_pcrel_lo__ = 480
    CEFBS_None, // i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_simple__ = 481
    CEFBS_None, // i_comp_2reg_imm__opc_slti__reg0__regs__simm12_lo__ = 482
    CEFBS_None, // i_comp_2reg_imm__opc_slti__reg0__regs__simm12_pcrel_lo__ = 483
    CEFBS_None, // i_comp_2reg_imm__opc_slti__reg0__regs__simm12_simple__ = 484
    CEFBS_None, // i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_lo__ = 485
    CEFBS_None, // i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_pcrel_lo__ = 486
    CEFBS_None, // i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_simple__ = 487
    CEFBS_None, // i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_lo__ = 488
    CEFBS_None, // i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_pcrel_lo__ = 489
    CEFBS_None, // i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_simple__ = 490
    CEFBS_None, // i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_lo__ = 491
    CEFBS_None, // i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_pcrel_lo__ = 492
    CEFBS_None, // i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_simple__ = 493
    CEFBS_None, // i_comp_2reg_imm__opc_slti__regs__reg0__simm12_lo__ = 494
    CEFBS_None, // i_comp_2reg_imm__opc_slti__regs__reg0__simm12_pcrel_lo__ = 495
    CEFBS_None, // i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__ = 496
    CEFBS_None, // i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_lo__ = 497
    CEFBS_None, // i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_pcrel_lo__ = 498
    CEFBS_None, // i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_simple__ = 499
    CEFBS_None, // i_comp_2reg_imm__opc_slti__regs__regs__simm12_lo__ = 500
    CEFBS_None, // i_comp_2reg_imm__opc_slti__regs__regs__simm12_pcrel_lo__ = 501
    CEFBS_None, // i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__ = 502
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_lo__ = 503
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_pcrel_lo__ = 504
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_simple__ = 505
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_lo__ = 506
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_pcrel_lo__ = 507
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_simple__ = 508
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_lo__ = 509
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_pcrel_lo__ = 510
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_simple__ = 511
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_lo__ = 512
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_pcrel_lo__ = 513
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_simple__ = 514
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_lo__ = 515
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_pcrel_lo__ = 516
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_simple__ = 517
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_lo__ = 518
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_pcrel_lo__ = 519
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_simple__ = 520
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_lo__ = 521
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_pcrel_lo__ = 522
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__ = 523
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_lo__ = 524
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_pcrel_lo__ = 525
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_simple__ = 526
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_lo__ = 527
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_pcrel_lo__ = 528
    CEFBS_None, // i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__ = 529
    CEFBS_None, // i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_lo__ = 530
    CEFBS_None, // i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_pcrel_lo__ = 531
    CEFBS_None, // i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_simple__ = 532
    CEFBS_None, // i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_lo__ = 533
    CEFBS_None, // i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_pcrel_lo__ = 534
    CEFBS_None, // i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_simple__ = 535
    CEFBS_None, // i_comp_2reg_imm__opc_xori__reg0__regs__simm12_lo__ = 536
    CEFBS_None, // i_comp_2reg_imm__opc_xori__reg0__regs__simm12_pcrel_lo__ = 537
    CEFBS_None, // i_comp_2reg_imm__opc_xori__reg0__regs__simm12_simple__ = 538
    CEFBS_None, // i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_lo__ = 539
    CEFBS_None, // i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_pcrel_lo__ = 540
    CEFBS_None, // i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_simple__ = 541
    CEFBS_None, // i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_lo__ = 542
    CEFBS_None, // i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_pcrel_lo__ = 543
    CEFBS_None, // i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_simple__ = 544
    CEFBS_None, // i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_lo__ = 545
    CEFBS_None, // i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_pcrel_lo__ = 546
    CEFBS_None, // i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_simple__ = 547
    CEFBS_None, // i_comp_2reg_imm__opc_xori__regs__reg0__simm12_lo__ = 548
    CEFBS_None, // i_comp_2reg_imm__opc_xori__regs__reg0__simm12_pcrel_lo__ = 549
    CEFBS_None, // i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__ = 550
    CEFBS_None, // i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_lo__ = 551
    CEFBS_None, // i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_pcrel_lo__ = 552
    CEFBS_None, // i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_simple__ = 553
    CEFBS_None, // i_comp_2reg_imm__opc_xori__regs__regs__simm12_lo__ = 554
    CEFBS_None, // i_comp_2reg_imm__opc_xori__regs__regs__simm12_pcrel_lo__ = 555
    CEFBS_None, // i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__ = 556
    CEFBS_None, // i_comp_2reg_imm_shift__opc_slli__reg0__reg0__shift_imm__ = 557
    CEFBS_None, // i_comp_2reg_imm_shift__opc_slli__reg0__reg0_alias__shift_imm__ = 558
    CEFBS_None, // i_comp_2reg_imm_shift__opc_slli__reg0__regs__shift_imm__ = 559
    CEFBS_None, // i_comp_2reg_imm_shift__opc_slli__reg0_alias__reg0__shift_imm__ = 560
    CEFBS_None, // i_comp_2reg_imm_shift__opc_slli__reg0_alias__reg0_alias__shift_imm__ = 561
    CEFBS_None, // i_comp_2reg_imm_shift__opc_slli__reg0_alias__regs__shift_imm__ = 562
    CEFBS_None, // i_comp_2reg_imm_shift__opc_slli__regs__reg0__shift_imm__ = 563
    CEFBS_None, // i_comp_2reg_imm_shift__opc_slli__regs__reg0_alias__shift_imm__ = 564
    CEFBS_None, // i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__ = 565
    CEFBS_None, // i_comp_2reg_imm_shift__opc_srai__reg0__reg0__shift_imm__ = 566
    CEFBS_None, // i_comp_2reg_imm_shift__opc_srai__reg0__reg0_alias__shift_imm__ = 567
    CEFBS_None, // i_comp_2reg_imm_shift__opc_srai__reg0__regs__shift_imm__ = 568
    CEFBS_None, // i_comp_2reg_imm_shift__opc_srai__reg0_alias__reg0__shift_imm__ = 569
    CEFBS_None, // i_comp_2reg_imm_shift__opc_srai__reg0_alias__reg0_alias__shift_imm__ = 570
    CEFBS_None, // i_comp_2reg_imm_shift__opc_srai__reg0_alias__regs__shift_imm__ = 571
    CEFBS_None, // i_comp_2reg_imm_shift__opc_srai__regs__reg0__shift_imm__ = 572
    CEFBS_None, // i_comp_2reg_imm_shift__opc_srai__regs__reg0_alias__shift_imm__ = 573
    CEFBS_None, // i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__ = 574
    CEFBS_None, // i_comp_2reg_imm_shift__opc_srli__reg0__reg0__shift_imm__ = 575
    CEFBS_None, // i_comp_2reg_imm_shift__opc_srli__reg0__reg0_alias__shift_imm__ = 576
    CEFBS_None, // i_comp_2reg_imm_shift__opc_srli__reg0__regs__shift_imm__ = 577
    CEFBS_None, // i_comp_2reg_imm_shift__opc_srli__reg0_alias__reg0__shift_imm__ = 578
    CEFBS_None, // i_comp_2reg_imm_shift__opc_srli__reg0_alias__reg0_alias__shift_imm__ = 579
    CEFBS_None, // i_comp_2reg_imm_shift__opc_srli__reg0_alias__regs__shift_imm__ = 580
    CEFBS_None, // i_comp_2reg_imm_shift__opc_srli__regs__reg0__shift_imm__ = 581
    CEFBS_None, // i_comp_2reg_imm_shift__opc_srli__regs__reg0_alias__shift_imm__ = 582
    CEFBS_None, // i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__ = 583
    CEFBS_None, // i_comp_2reg_imm_shift_slli_alias__reg0__reg0__shift_imm__ = 584
    CEFBS_None, // i_comp_2reg_imm_shift_slli_alias__reg0__reg0_alias__shift_imm__ = 585
    CEFBS_None, // i_comp_2reg_imm_shift_slli_alias__reg0__regs__shift_imm__ = 586
    CEFBS_None, // i_comp_2reg_imm_shift_slli_alias__reg0_alias__reg0__shift_imm__ = 587
    CEFBS_None, // i_comp_2reg_imm_shift_slli_alias__reg0_alias__reg0_alias__shift_imm__ = 588
    CEFBS_None, // i_comp_2reg_imm_shift_slli_alias__reg0_alias__regs__shift_imm__ = 589
    CEFBS_None, // i_comp_2reg_imm_shift_slli_alias__regs__reg0__shift_imm__ = 590
    CEFBS_None, // i_comp_2reg_imm_shift_slli_alias__regs__reg0_alias__shift_imm__ = 591
    CEFBS_None, // i_comp_2reg_imm_shift_slli_alias__regs__regs__shift_imm__ = 592
    CEFBS_None, // i_comp_2reg_imm_shift_srai_alias__reg0__reg0__shift_imm__ = 593
    CEFBS_None, // i_comp_2reg_imm_shift_srai_alias__reg0__reg0_alias__shift_imm__ = 594
    CEFBS_None, // i_comp_2reg_imm_shift_srai_alias__reg0__regs__shift_imm__ = 595
    CEFBS_None, // i_comp_2reg_imm_shift_srai_alias__reg0_alias__reg0__shift_imm__ = 596
    CEFBS_None, // i_comp_2reg_imm_shift_srai_alias__reg0_alias__reg0_alias__shift_imm__ = 597
    CEFBS_None, // i_comp_2reg_imm_shift_srai_alias__reg0_alias__regs__shift_imm__ = 598
    CEFBS_None, // i_comp_2reg_imm_shift_srai_alias__regs__reg0__shift_imm__ = 599
    CEFBS_None, // i_comp_2reg_imm_shift_srai_alias__regs__reg0_alias__shift_imm__ = 600
    CEFBS_None, // i_comp_2reg_imm_shift_srai_alias__regs__regs__shift_imm__ = 601
    CEFBS_None, // i_comp_2reg_imm_shift_srli_alias__reg0__reg0__shift_imm__ = 602
    CEFBS_None, // i_comp_2reg_imm_shift_srli_alias__reg0__reg0_alias__shift_imm__ = 603
    CEFBS_None, // i_comp_2reg_imm_shift_srli_alias__reg0__regs__shift_imm__ = 604
    CEFBS_None, // i_comp_2reg_imm_shift_srli_alias__reg0_alias__reg0__shift_imm__ = 605
    CEFBS_None, // i_comp_2reg_imm_shift_srli_alias__reg0_alias__reg0_alias__shift_imm__ = 606
    CEFBS_None, // i_comp_2reg_imm_shift_srli_alias__reg0_alias__regs__shift_imm__ = 607
    CEFBS_None, // i_comp_2reg_imm_shift_srli_alias__regs__reg0__shift_imm__ = 608
    CEFBS_None, // i_comp_2reg_imm_shift_srli_alias__regs__reg0_alias__shift_imm__ = 609
    CEFBS_None, // i_comp_2reg_imm_shift_srli_alias__regs__regs__shift_imm__ = 610
    CEFBS_None, // i_comp_3reg__opc_add__reg0__reg0__reg0__ = 611
    CEFBS_None, // i_comp_3reg__opc_add__reg0__reg0__reg0_alias__ = 612
    CEFBS_None, // i_comp_3reg__opc_add__reg0__reg0__regs__ = 613
    CEFBS_None, // i_comp_3reg__opc_add__reg0__reg0_alias__reg0__ = 614
    CEFBS_None, // i_comp_3reg__opc_add__reg0__reg0_alias__reg0_alias__ = 615
    CEFBS_None, // i_comp_3reg__opc_add__reg0__reg0_alias__regs__ = 616
    CEFBS_None, // i_comp_3reg__opc_add__reg0__regs__reg0__ = 617
    CEFBS_None, // i_comp_3reg__opc_add__reg0__regs__reg0_alias__ = 618
    CEFBS_None, // i_comp_3reg__opc_add__reg0__regs__regs__ = 619
    CEFBS_None, // i_comp_3reg__opc_add__reg0_alias__reg0__reg0__ = 620
    CEFBS_None, // i_comp_3reg__opc_add__reg0_alias__reg0__reg0_alias__ = 621
    CEFBS_None, // i_comp_3reg__opc_add__reg0_alias__reg0__regs__ = 622
    CEFBS_None, // i_comp_3reg__opc_add__reg0_alias__reg0_alias__reg0__ = 623
    CEFBS_None, // i_comp_3reg__opc_add__reg0_alias__reg0_alias__reg0_alias__ = 624
    CEFBS_None, // i_comp_3reg__opc_add__reg0_alias__reg0_alias__regs__ = 625
    CEFBS_None, // i_comp_3reg__opc_add__reg0_alias__regs__reg0__ = 626
    CEFBS_None, // i_comp_3reg__opc_add__reg0_alias__regs__reg0_alias__ = 627
    CEFBS_None, // i_comp_3reg__opc_add__reg0_alias__regs__regs__ = 628
    CEFBS_None, // i_comp_3reg__opc_add__regs__reg0__reg0__ = 629
    CEFBS_None, // i_comp_3reg__opc_add__regs__reg0__reg0_alias__ = 630
    CEFBS_None, // i_comp_3reg__opc_add__regs__reg0__regs__ = 631
    CEFBS_None, // i_comp_3reg__opc_add__regs__reg0_alias__reg0__ = 632
    CEFBS_None, // i_comp_3reg__opc_add__regs__reg0_alias__reg0_alias__ = 633
    CEFBS_None, // i_comp_3reg__opc_add__regs__reg0_alias__regs__ = 634
    CEFBS_None, // i_comp_3reg__opc_add__regs__regs__reg0__ = 635
    CEFBS_None, // i_comp_3reg__opc_add__regs__regs__reg0_alias__ = 636
    CEFBS_None, // i_comp_3reg__opc_add__regs__regs__regs__ = 637
    CEFBS_None, // i_comp_3reg__opc_and__reg0__reg0__reg0__ = 638
    CEFBS_None, // i_comp_3reg__opc_and__reg0__reg0__reg0_alias__ = 639
    CEFBS_None, // i_comp_3reg__opc_and__reg0__reg0__regs__ = 640
    CEFBS_None, // i_comp_3reg__opc_and__reg0__reg0_alias__reg0__ = 641
    CEFBS_None, // i_comp_3reg__opc_and__reg0__reg0_alias__reg0_alias__ = 642
    CEFBS_None, // i_comp_3reg__opc_and__reg0__reg0_alias__regs__ = 643
    CEFBS_None, // i_comp_3reg__opc_and__reg0__regs__reg0__ = 644
    CEFBS_None, // i_comp_3reg__opc_and__reg0__regs__reg0_alias__ = 645
    CEFBS_None, // i_comp_3reg__opc_and__reg0__regs__regs__ = 646
    CEFBS_None, // i_comp_3reg__opc_and__reg0_alias__reg0__reg0__ = 647
    CEFBS_None, // i_comp_3reg__opc_and__reg0_alias__reg0__reg0_alias__ = 648
    CEFBS_None, // i_comp_3reg__opc_and__reg0_alias__reg0__regs__ = 649
    CEFBS_None, // i_comp_3reg__opc_and__reg0_alias__reg0_alias__reg0__ = 650
    CEFBS_None, // i_comp_3reg__opc_and__reg0_alias__reg0_alias__reg0_alias__ = 651
    CEFBS_None, // i_comp_3reg__opc_and__reg0_alias__reg0_alias__regs__ = 652
    CEFBS_None, // i_comp_3reg__opc_and__reg0_alias__regs__reg0__ = 653
    CEFBS_None, // i_comp_3reg__opc_and__reg0_alias__regs__reg0_alias__ = 654
    CEFBS_None, // i_comp_3reg__opc_and__reg0_alias__regs__regs__ = 655
    CEFBS_None, // i_comp_3reg__opc_and__regs__reg0__reg0__ = 656
    CEFBS_None, // i_comp_3reg__opc_and__regs__reg0__reg0_alias__ = 657
    CEFBS_None, // i_comp_3reg__opc_and__regs__reg0__regs__ = 658
    CEFBS_None, // i_comp_3reg__opc_and__regs__reg0_alias__reg0__ = 659
    CEFBS_None, // i_comp_3reg__opc_and__regs__reg0_alias__reg0_alias__ = 660
    CEFBS_None, // i_comp_3reg__opc_and__regs__reg0_alias__regs__ = 661
    CEFBS_None, // i_comp_3reg__opc_and__regs__regs__reg0__ = 662
    CEFBS_None, // i_comp_3reg__opc_and__regs__regs__reg0_alias__ = 663
    CEFBS_None, // i_comp_3reg__opc_and__regs__regs__regs__ = 664
    CEFBS_None, // i_comp_3reg__opc_or__reg0__reg0__reg0__ = 665
    CEFBS_None, // i_comp_3reg__opc_or__reg0__reg0__reg0_alias__ = 666
    CEFBS_None, // i_comp_3reg__opc_or__reg0__reg0__regs__ = 667
    CEFBS_None, // i_comp_3reg__opc_or__reg0__reg0_alias__reg0__ = 668
    CEFBS_None, // i_comp_3reg__opc_or__reg0__reg0_alias__reg0_alias__ = 669
    CEFBS_None, // i_comp_3reg__opc_or__reg0__reg0_alias__regs__ = 670
    CEFBS_None, // i_comp_3reg__opc_or__reg0__regs__reg0__ = 671
    CEFBS_None, // i_comp_3reg__opc_or__reg0__regs__reg0_alias__ = 672
    CEFBS_None, // i_comp_3reg__opc_or__reg0__regs__regs__ = 673
    CEFBS_None, // i_comp_3reg__opc_or__reg0_alias__reg0__reg0__ = 674
    CEFBS_None, // i_comp_3reg__opc_or__reg0_alias__reg0__reg0_alias__ = 675
    CEFBS_None, // i_comp_3reg__opc_or__reg0_alias__reg0__regs__ = 676
    CEFBS_None, // i_comp_3reg__opc_or__reg0_alias__reg0_alias__reg0__ = 677
    CEFBS_None, // i_comp_3reg__opc_or__reg0_alias__reg0_alias__reg0_alias__ = 678
    CEFBS_None, // i_comp_3reg__opc_or__reg0_alias__reg0_alias__regs__ = 679
    CEFBS_None, // i_comp_3reg__opc_or__reg0_alias__regs__reg0__ = 680
    CEFBS_None, // i_comp_3reg__opc_or__reg0_alias__regs__reg0_alias__ = 681
    CEFBS_None, // i_comp_3reg__opc_or__reg0_alias__regs__regs__ = 682
    CEFBS_None, // i_comp_3reg__opc_or__regs__reg0__reg0__ = 683
    CEFBS_None, // i_comp_3reg__opc_or__regs__reg0__reg0_alias__ = 684
    CEFBS_None, // i_comp_3reg__opc_or__regs__reg0__regs__ = 685
    CEFBS_None, // i_comp_3reg__opc_or__regs__reg0_alias__reg0__ = 686
    CEFBS_None, // i_comp_3reg__opc_or__regs__reg0_alias__reg0_alias__ = 687
    CEFBS_None, // i_comp_3reg__opc_or__regs__reg0_alias__regs__ = 688
    CEFBS_None, // i_comp_3reg__opc_or__regs__regs__reg0__ = 689
    CEFBS_None, // i_comp_3reg__opc_or__regs__regs__reg0_alias__ = 690
    CEFBS_None, // i_comp_3reg__opc_or__regs__regs__regs__ = 691
    CEFBS_None, // i_comp_3reg__opc_sll__reg0__reg0__reg0__ = 692
    CEFBS_None, // i_comp_3reg__opc_sll__reg0__reg0__reg0_alias__ = 693
    CEFBS_None, // i_comp_3reg__opc_sll__reg0__reg0__regs__ = 694
    CEFBS_None, // i_comp_3reg__opc_sll__reg0__reg0_alias__reg0__ = 695
    CEFBS_None, // i_comp_3reg__opc_sll__reg0__reg0_alias__reg0_alias__ = 696
    CEFBS_None, // i_comp_3reg__opc_sll__reg0__reg0_alias__regs__ = 697
    CEFBS_None, // i_comp_3reg__opc_sll__reg0__regs__reg0__ = 698
    CEFBS_None, // i_comp_3reg__opc_sll__reg0__regs__reg0_alias__ = 699
    CEFBS_None, // i_comp_3reg__opc_sll__reg0__regs__regs__ = 700
    CEFBS_None, // i_comp_3reg__opc_sll__reg0_alias__reg0__reg0__ = 701
    CEFBS_None, // i_comp_3reg__opc_sll__reg0_alias__reg0__reg0_alias__ = 702
    CEFBS_None, // i_comp_3reg__opc_sll__reg0_alias__reg0__regs__ = 703
    CEFBS_None, // i_comp_3reg__opc_sll__reg0_alias__reg0_alias__reg0__ = 704
    CEFBS_None, // i_comp_3reg__opc_sll__reg0_alias__reg0_alias__reg0_alias__ = 705
    CEFBS_None, // i_comp_3reg__opc_sll__reg0_alias__reg0_alias__regs__ = 706
    CEFBS_None, // i_comp_3reg__opc_sll__reg0_alias__regs__reg0__ = 707
    CEFBS_None, // i_comp_3reg__opc_sll__reg0_alias__regs__reg0_alias__ = 708
    CEFBS_None, // i_comp_3reg__opc_sll__reg0_alias__regs__regs__ = 709
    CEFBS_None, // i_comp_3reg__opc_sll__regs__reg0__reg0__ = 710
    CEFBS_None, // i_comp_3reg__opc_sll__regs__reg0__reg0_alias__ = 711
    CEFBS_None, // i_comp_3reg__opc_sll__regs__reg0__regs__ = 712
    CEFBS_None, // i_comp_3reg__opc_sll__regs__reg0_alias__reg0__ = 713
    CEFBS_None, // i_comp_3reg__opc_sll__regs__reg0_alias__reg0_alias__ = 714
    CEFBS_None, // i_comp_3reg__opc_sll__regs__reg0_alias__regs__ = 715
    CEFBS_None, // i_comp_3reg__opc_sll__regs__regs__reg0__ = 716
    CEFBS_None, // i_comp_3reg__opc_sll__regs__regs__reg0_alias__ = 717
    CEFBS_None, // i_comp_3reg__opc_sll__regs__regs__regs__ = 718
    CEFBS_None, // i_comp_3reg__opc_slt__reg0__reg0__reg0__ = 719
    CEFBS_None, // i_comp_3reg__opc_slt__reg0__reg0__reg0_alias__ = 720
    CEFBS_None, // i_comp_3reg__opc_slt__reg0__reg0__regs__ = 721
    CEFBS_None, // i_comp_3reg__opc_slt__reg0__reg0_alias__reg0__ = 722
    CEFBS_None, // i_comp_3reg__opc_slt__reg0__reg0_alias__reg0_alias__ = 723
    CEFBS_None, // i_comp_3reg__opc_slt__reg0__reg0_alias__regs__ = 724
    CEFBS_None, // i_comp_3reg__opc_slt__reg0__regs__reg0__ = 725
    CEFBS_None, // i_comp_3reg__opc_slt__reg0__regs__reg0_alias__ = 726
    CEFBS_None, // i_comp_3reg__opc_slt__reg0__regs__regs__ = 727
    CEFBS_None, // i_comp_3reg__opc_slt__reg0_alias__reg0__reg0__ = 728
    CEFBS_None, // i_comp_3reg__opc_slt__reg0_alias__reg0__reg0_alias__ = 729
    CEFBS_None, // i_comp_3reg__opc_slt__reg0_alias__reg0__regs__ = 730
    CEFBS_None, // i_comp_3reg__opc_slt__reg0_alias__reg0_alias__reg0__ = 731
    CEFBS_None, // i_comp_3reg__opc_slt__reg0_alias__reg0_alias__reg0_alias__ = 732
    CEFBS_None, // i_comp_3reg__opc_slt__reg0_alias__reg0_alias__regs__ = 733
    CEFBS_None, // i_comp_3reg__opc_slt__reg0_alias__regs__reg0__ = 734
    CEFBS_None, // i_comp_3reg__opc_slt__reg0_alias__regs__reg0_alias__ = 735
    CEFBS_None, // i_comp_3reg__opc_slt__reg0_alias__regs__regs__ = 736
    CEFBS_None, // i_comp_3reg__opc_slt__regs__reg0__reg0__ = 737
    CEFBS_None, // i_comp_3reg__opc_slt__regs__reg0__reg0_alias__ = 738
    CEFBS_None, // i_comp_3reg__opc_slt__regs__reg0__regs__ = 739
    CEFBS_None, // i_comp_3reg__opc_slt__regs__reg0_alias__reg0__ = 740
    CEFBS_None, // i_comp_3reg__opc_slt__regs__reg0_alias__reg0_alias__ = 741
    CEFBS_None, // i_comp_3reg__opc_slt__regs__reg0_alias__regs__ = 742
    CEFBS_None, // i_comp_3reg__opc_slt__regs__regs__reg0__ = 743
    CEFBS_None, // i_comp_3reg__opc_slt__regs__regs__reg0_alias__ = 744
    CEFBS_None, // i_comp_3reg__opc_slt__regs__regs__regs__ = 745
    CEFBS_None, // i_comp_3reg__opc_sltu__reg0__reg0__reg0__ = 746
    CEFBS_None, // i_comp_3reg__opc_sltu__reg0__reg0__reg0_alias__ = 747
    CEFBS_None, // i_comp_3reg__opc_sltu__reg0__reg0__regs__ = 748
    CEFBS_None, // i_comp_3reg__opc_sltu__reg0__reg0_alias__reg0__ = 749
    CEFBS_None, // i_comp_3reg__opc_sltu__reg0__reg0_alias__reg0_alias__ = 750
    CEFBS_None, // i_comp_3reg__opc_sltu__reg0__reg0_alias__regs__ = 751
    CEFBS_None, // i_comp_3reg__opc_sltu__reg0__regs__reg0__ = 752
    CEFBS_None, // i_comp_3reg__opc_sltu__reg0__regs__reg0_alias__ = 753
    CEFBS_None, // i_comp_3reg__opc_sltu__reg0__regs__regs__ = 754
    CEFBS_None, // i_comp_3reg__opc_sltu__reg0_alias__reg0__reg0__ = 755
    CEFBS_None, // i_comp_3reg__opc_sltu__reg0_alias__reg0__reg0_alias__ = 756
    CEFBS_None, // i_comp_3reg__opc_sltu__reg0_alias__reg0__regs__ = 757
    CEFBS_None, // i_comp_3reg__opc_sltu__reg0_alias__reg0_alias__reg0__ = 758
    CEFBS_None, // i_comp_3reg__opc_sltu__reg0_alias__reg0_alias__reg0_alias__ = 759
    CEFBS_None, // i_comp_3reg__opc_sltu__reg0_alias__reg0_alias__regs__ = 760
    CEFBS_None, // i_comp_3reg__opc_sltu__reg0_alias__regs__reg0__ = 761
    CEFBS_None, // i_comp_3reg__opc_sltu__reg0_alias__regs__reg0_alias__ = 762
    CEFBS_None, // i_comp_3reg__opc_sltu__reg0_alias__regs__regs__ = 763
    CEFBS_None, // i_comp_3reg__opc_sltu__regs__reg0__reg0__ = 764
    CEFBS_None, // i_comp_3reg__opc_sltu__regs__reg0__reg0_alias__ = 765
    CEFBS_None, // i_comp_3reg__opc_sltu__regs__reg0__regs__ = 766
    CEFBS_None, // i_comp_3reg__opc_sltu__regs__reg0_alias__reg0__ = 767
    CEFBS_None, // i_comp_3reg__opc_sltu__regs__reg0_alias__reg0_alias__ = 768
    CEFBS_None, // i_comp_3reg__opc_sltu__regs__reg0_alias__regs__ = 769
    CEFBS_None, // i_comp_3reg__opc_sltu__regs__regs__reg0__ = 770
    CEFBS_None, // i_comp_3reg__opc_sltu__regs__regs__reg0_alias__ = 771
    CEFBS_None, // i_comp_3reg__opc_sltu__regs__regs__regs__ = 772
    CEFBS_None, // i_comp_3reg__opc_sra__reg0__reg0__reg0__ = 773
    CEFBS_None, // i_comp_3reg__opc_sra__reg0__reg0__reg0_alias__ = 774
    CEFBS_None, // i_comp_3reg__opc_sra__reg0__reg0__regs__ = 775
    CEFBS_None, // i_comp_3reg__opc_sra__reg0__reg0_alias__reg0__ = 776
    CEFBS_None, // i_comp_3reg__opc_sra__reg0__reg0_alias__reg0_alias__ = 777
    CEFBS_None, // i_comp_3reg__opc_sra__reg0__reg0_alias__regs__ = 778
    CEFBS_None, // i_comp_3reg__opc_sra__reg0__regs__reg0__ = 779
    CEFBS_None, // i_comp_3reg__opc_sra__reg0__regs__reg0_alias__ = 780
    CEFBS_None, // i_comp_3reg__opc_sra__reg0__regs__regs__ = 781
    CEFBS_None, // i_comp_3reg__opc_sra__reg0_alias__reg0__reg0__ = 782
    CEFBS_None, // i_comp_3reg__opc_sra__reg0_alias__reg0__reg0_alias__ = 783
    CEFBS_None, // i_comp_3reg__opc_sra__reg0_alias__reg0__regs__ = 784
    CEFBS_None, // i_comp_3reg__opc_sra__reg0_alias__reg0_alias__reg0__ = 785
    CEFBS_None, // i_comp_3reg__opc_sra__reg0_alias__reg0_alias__reg0_alias__ = 786
    CEFBS_None, // i_comp_3reg__opc_sra__reg0_alias__reg0_alias__regs__ = 787
    CEFBS_None, // i_comp_3reg__opc_sra__reg0_alias__regs__reg0__ = 788
    CEFBS_None, // i_comp_3reg__opc_sra__reg0_alias__regs__reg0_alias__ = 789
    CEFBS_None, // i_comp_3reg__opc_sra__reg0_alias__regs__regs__ = 790
    CEFBS_None, // i_comp_3reg__opc_sra__regs__reg0__reg0__ = 791
    CEFBS_None, // i_comp_3reg__opc_sra__regs__reg0__reg0_alias__ = 792
    CEFBS_None, // i_comp_3reg__opc_sra__regs__reg0__regs__ = 793
    CEFBS_None, // i_comp_3reg__opc_sra__regs__reg0_alias__reg0__ = 794
    CEFBS_None, // i_comp_3reg__opc_sra__regs__reg0_alias__reg0_alias__ = 795
    CEFBS_None, // i_comp_3reg__opc_sra__regs__reg0_alias__regs__ = 796
    CEFBS_None, // i_comp_3reg__opc_sra__regs__regs__reg0__ = 797
    CEFBS_None, // i_comp_3reg__opc_sra__regs__regs__reg0_alias__ = 798
    CEFBS_None, // i_comp_3reg__opc_sra__regs__regs__regs__ = 799
    CEFBS_None, // i_comp_3reg__opc_srl__reg0__reg0__reg0__ = 800
    CEFBS_None, // i_comp_3reg__opc_srl__reg0__reg0__reg0_alias__ = 801
    CEFBS_None, // i_comp_3reg__opc_srl__reg0__reg0__regs__ = 802
    CEFBS_None, // i_comp_3reg__opc_srl__reg0__reg0_alias__reg0__ = 803
    CEFBS_None, // i_comp_3reg__opc_srl__reg0__reg0_alias__reg0_alias__ = 804
    CEFBS_None, // i_comp_3reg__opc_srl__reg0__reg0_alias__regs__ = 805
    CEFBS_None, // i_comp_3reg__opc_srl__reg0__regs__reg0__ = 806
    CEFBS_None, // i_comp_3reg__opc_srl__reg0__regs__reg0_alias__ = 807
    CEFBS_None, // i_comp_3reg__opc_srl__reg0__regs__regs__ = 808
    CEFBS_None, // i_comp_3reg__opc_srl__reg0_alias__reg0__reg0__ = 809
    CEFBS_None, // i_comp_3reg__opc_srl__reg0_alias__reg0__reg0_alias__ = 810
    CEFBS_None, // i_comp_3reg__opc_srl__reg0_alias__reg0__regs__ = 811
    CEFBS_None, // i_comp_3reg__opc_srl__reg0_alias__reg0_alias__reg0__ = 812
    CEFBS_None, // i_comp_3reg__opc_srl__reg0_alias__reg0_alias__reg0_alias__ = 813
    CEFBS_None, // i_comp_3reg__opc_srl__reg0_alias__reg0_alias__regs__ = 814
    CEFBS_None, // i_comp_3reg__opc_srl__reg0_alias__regs__reg0__ = 815
    CEFBS_None, // i_comp_3reg__opc_srl__reg0_alias__regs__reg0_alias__ = 816
    CEFBS_None, // i_comp_3reg__opc_srl__reg0_alias__regs__regs__ = 817
    CEFBS_None, // i_comp_3reg__opc_srl__regs__reg0__reg0__ = 818
    CEFBS_None, // i_comp_3reg__opc_srl__regs__reg0__reg0_alias__ = 819
    CEFBS_None, // i_comp_3reg__opc_srl__regs__reg0__regs__ = 820
    CEFBS_None, // i_comp_3reg__opc_srl__regs__reg0_alias__reg0__ = 821
    CEFBS_None, // i_comp_3reg__opc_srl__regs__reg0_alias__reg0_alias__ = 822
    CEFBS_None, // i_comp_3reg__opc_srl__regs__reg0_alias__regs__ = 823
    CEFBS_None, // i_comp_3reg__opc_srl__regs__regs__reg0__ = 824
    CEFBS_None, // i_comp_3reg__opc_srl__regs__regs__reg0_alias__ = 825
    CEFBS_None, // i_comp_3reg__opc_srl__regs__regs__regs__ = 826
    CEFBS_None, // i_comp_3reg__opc_sub__reg0__reg0__reg0__ = 827
    CEFBS_None, // i_comp_3reg__opc_sub__reg0__reg0__reg0_alias__ = 828
    CEFBS_None, // i_comp_3reg__opc_sub__reg0__reg0__regs__ = 829
    CEFBS_None, // i_comp_3reg__opc_sub__reg0__reg0_alias__reg0__ = 830
    CEFBS_None, // i_comp_3reg__opc_sub__reg0__reg0_alias__reg0_alias__ = 831
    CEFBS_None, // i_comp_3reg__opc_sub__reg0__reg0_alias__regs__ = 832
    CEFBS_None, // i_comp_3reg__opc_sub__reg0__regs__reg0__ = 833
    CEFBS_None, // i_comp_3reg__opc_sub__reg0__regs__reg0_alias__ = 834
    CEFBS_None, // i_comp_3reg__opc_sub__reg0__regs__regs__ = 835
    CEFBS_None, // i_comp_3reg__opc_sub__reg0_alias__reg0__reg0__ = 836
    CEFBS_None, // i_comp_3reg__opc_sub__reg0_alias__reg0__reg0_alias__ = 837
    CEFBS_None, // i_comp_3reg__opc_sub__reg0_alias__reg0__regs__ = 838
    CEFBS_None, // i_comp_3reg__opc_sub__reg0_alias__reg0_alias__reg0__ = 839
    CEFBS_None, // i_comp_3reg__opc_sub__reg0_alias__reg0_alias__reg0_alias__ = 840
    CEFBS_None, // i_comp_3reg__opc_sub__reg0_alias__reg0_alias__regs__ = 841
    CEFBS_None, // i_comp_3reg__opc_sub__reg0_alias__regs__reg0__ = 842
    CEFBS_None, // i_comp_3reg__opc_sub__reg0_alias__regs__reg0_alias__ = 843
    CEFBS_None, // i_comp_3reg__opc_sub__reg0_alias__regs__regs__ = 844
    CEFBS_None, // i_comp_3reg__opc_sub__regs__reg0__reg0__ = 845
    CEFBS_None, // i_comp_3reg__opc_sub__regs__reg0__reg0_alias__ = 846
    CEFBS_None, // i_comp_3reg__opc_sub__regs__reg0__regs__ = 847
    CEFBS_None, // i_comp_3reg__opc_sub__regs__reg0_alias__reg0__ = 848
    CEFBS_None, // i_comp_3reg__opc_sub__regs__reg0_alias__reg0_alias__ = 849
    CEFBS_None, // i_comp_3reg__opc_sub__regs__reg0_alias__regs__ = 850
    CEFBS_None, // i_comp_3reg__opc_sub__regs__regs__reg0__ = 851
    CEFBS_None, // i_comp_3reg__opc_sub__regs__regs__reg0_alias__ = 852
    CEFBS_None, // i_comp_3reg__opc_sub__regs__regs__regs__ = 853
    CEFBS_None, // i_comp_3reg__opc_xor__reg0__reg0__reg0__ = 854
    CEFBS_None, // i_comp_3reg__opc_xor__reg0__reg0__reg0_alias__ = 855
    CEFBS_None, // i_comp_3reg__opc_xor__reg0__reg0__regs__ = 856
    CEFBS_None, // i_comp_3reg__opc_xor__reg0__reg0_alias__reg0__ = 857
    CEFBS_None, // i_comp_3reg__opc_xor__reg0__reg0_alias__reg0_alias__ = 858
    CEFBS_None, // i_comp_3reg__opc_xor__reg0__reg0_alias__regs__ = 859
    CEFBS_None, // i_comp_3reg__opc_xor__reg0__regs__reg0__ = 860
    CEFBS_None, // i_comp_3reg__opc_xor__reg0__regs__reg0_alias__ = 861
    CEFBS_None, // i_comp_3reg__opc_xor__reg0__regs__regs__ = 862
    CEFBS_None, // i_comp_3reg__opc_xor__reg0_alias__reg0__reg0__ = 863
    CEFBS_None, // i_comp_3reg__opc_xor__reg0_alias__reg0__reg0_alias__ = 864
    CEFBS_None, // i_comp_3reg__opc_xor__reg0_alias__reg0__regs__ = 865
    CEFBS_None, // i_comp_3reg__opc_xor__reg0_alias__reg0_alias__reg0__ = 866
    CEFBS_None, // i_comp_3reg__opc_xor__reg0_alias__reg0_alias__reg0_alias__ = 867
    CEFBS_None, // i_comp_3reg__opc_xor__reg0_alias__reg0_alias__regs__ = 868
    CEFBS_None, // i_comp_3reg__opc_xor__reg0_alias__regs__reg0__ = 869
    CEFBS_None, // i_comp_3reg__opc_xor__reg0_alias__regs__reg0_alias__ = 870
    CEFBS_None, // i_comp_3reg__opc_xor__reg0_alias__regs__regs__ = 871
    CEFBS_None, // i_comp_3reg__opc_xor__regs__reg0__reg0__ = 872
    CEFBS_None, // i_comp_3reg__opc_xor__regs__reg0__reg0_alias__ = 873
    CEFBS_None, // i_comp_3reg__opc_xor__regs__reg0__regs__ = 874
    CEFBS_None, // i_comp_3reg__opc_xor__regs__reg0_alias__reg0__ = 875
    CEFBS_None, // i_comp_3reg__opc_xor__regs__reg0_alias__reg0_alias__ = 876
    CEFBS_None, // i_comp_3reg__opc_xor__regs__reg0_alias__regs__ = 877
    CEFBS_None, // i_comp_3reg__opc_xor__regs__regs__reg0__ = 878
    CEFBS_None, // i_comp_3reg__opc_xor__regs__regs__reg0_alias__ = 879
    CEFBS_None, // i_comp_3reg__opc_xor__regs__regs__regs__ = 880
    CEFBS_None, // i_control_conditional__opc_beq__reg0__reg0__rel_addr12__ = 881
    CEFBS_None, // i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ = 882
    CEFBS_None, // i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA = 883
    CEFBS_None, // i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES = 884
    CEFBS_None, // i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC = 885
    CEFBS_None, // i_control_conditional__opc_beq__reg0__reg0_alias__rel_addr12__ = 886
    CEFBS_None, // i_control_conditional__opc_beq__reg0__regs__rel_addr12__ = 887
    CEFBS_None, // i_control_conditional__opc_beq__reg0_alias__reg0__rel_addr12__ = 888
    CEFBS_None, // i_control_conditional__opc_beq__reg0_alias__reg0_alias__rel_addr12__ = 889
    CEFBS_None, // i_control_conditional__opc_beq__reg0_alias__regs__rel_addr12__ = 890
    CEFBS_None, // i_control_conditional__opc_beq__regs__reg0__rel_addr12__ = 891
    CEFBS_None, // i_control_conditional__opc_beq__regs__reg0_alias__rel_addr12__ = 892
    CEFBS_None, // i_control_conditional__opc_beq__regs__regs__rel_addr12__ = 893
    CEFBS_None, // i_control_conditional__opc_bge__reg0__reg0__rel_addr12__ = 894
    CEFBS_None, // i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ = 895
    CEFBS_None, // i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA = 896
    CEFBS_None, // i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES = 897
    CEFBS_None, // i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC = 898
    CEFBS_None, // i_control_conditional__opc_bge__reg0__reg0_alias__rel_addr12__ = 899
    CEFBS_None, // i_control_conditional__opc_bge__reg0__regs__rel_addr12__ = 900
    CEFBS_None, // i_control_conditional__opc_bge__reg0_alias__reg0__rel_addr12__ = 901
    CEFBS_None, // i_control_conditional__opc_bge__reg0_alias__reg0_alias__rel_addr12__ = 902
    CEFBS_None, // i_control_conditional__opc_bge__reg0_alias__regs__rel_addr12__ = 903
    CEFBS_None, // i_control_conditional__opc_bge__regs__reg0__rel_addr12__ = 904
    CEFBS_None, // i_control_conditional__opc_bge__regs__reg0_alias__rel_addr12__ = 905
    CEFBS_None, // i_control_conditional__opc_bge__regs__regs__rel_addr12__ = 906
    CEFBS_None, // i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__ = 907
    CEFBS_None, // i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ = 908
    CEFBS_None, // i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA = 909
    CEFBS_None, // i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES = 910
    CEFBS_None, // i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC = 911
    CEFBS_None, // i_control_conditional__opc_bgeu__reg0__reg0_alias__rel_addr12__ = 912
    CEFBS_None, // i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__ = 913
    CEFBS_None, // i_control_conditional__opc_bgeu__reg0_alias__reg0__rel_addr12__ = 914
    CEFBS_None, // i_control_conditional__opc_bgeu__reg0_alias__reg0_alias__rel_addr12__ = 915
    CEFBS_None, // i_control_conditional__opc_bgeu__reg0_alias__regs__rel_addr12__ = 916
    CEFBS_None, // i_control_conditional__opc_bgeu__regs__reg0__rel_addr12__ = 917
    CEFBS_None, // i_control_conditional__opc_bgeu__regs__reg0_alias__rel_addr12__ = 918
    CEFBS_None, // i_control_conditional__opc_bgeu__regs__regs__rel_addr12__ = 919
    CEFBS_None, // i_control_conditional__opc_blt__reg0__reg0__rel_addr12__ = 920
    CEFBS_None, // i_control_conditional__opc_blt__reg0__reg0_alias__rel_addr12__ = 921
    CEFBS_None, // i_control_conditional__opc_blt__reg0__regs__rel_addr12__ = 922
    CEFBS_None, // i_control_conditional__opc_blt__reg0_alias__reg0__rel_addr12__ = 923
    CEFBS_None, // i_control_conditional__opc_blt__reg0_alias__reg0_alias__rel_addr12__ = 924
    CEFBS_None, // i_control_conditional__opc_blt__reg0_alias__regs__rel_addr12__ = 925
    CEFBS_None, // i_control_conditional__opc_blt__regs__reg0__rel_addr12__ = 926
    CEFBS_None, // i_control_conditional__opc_blt__regs__reg0_alias__rel_addr12__ = 927
    CEFBS_None, // i_control_conditional__opc_blt__regs__regs__rel_addr12__ = 928
    CEFBS_None, // i_control_conditional__opc_bltu__reg0__reg0__rel_addr12__ = 929
    CEFBS_None, // i_control_conditional__opc_bltu__reg0__reg0_alias__rel_addr12__ = 930
    CEFBS_None, // i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ = 931
    CEFBS_None, // i_control_conditional__opc_bltu__reg0_alias__reg0__rel_addr12__ = 932
    CEFBS_None, // i_control_conditional__opc_bltu__reg0_alias__reg0_alias__rel_addr12__ = 933
    CEFBS_None, // i_control_conditional__opc_bltu__reg0_alias__regs__rel_addr12__ = 934
    CEFBS_None, // i_control_conditional__opc_bltu__regs__reg0__rel_addr12__ = 935
    CEFBS_None, // i_control_conditional__opc_bltu__regs__reg0_alias__rel_addr12__ = 936
    CEFBS_None, // i_control_conditional__opc_bltu__regs__regs__rel_addr12__ = 937
    CEFBS_None, // i_control_conditional__opc_bne__reg0__reg0__rel_addr12__ = 938
    CEFBS_None, // i_control_conditional__opc_bne__reg0__reg0_alias__rel_addr12__ = 939
    CEFBS_None, // i_control_conditional__opc_bne__reg0__regs__rel_addr12__ = 940
    CEFBS_None, // i_control_conditional__opc_bne__reg0_alias__reg0__rel_addr12__ = 941
    CEFBS_None, // i_control_conditional__opc_bne__reg0_alias__reg0_alias__rel_addr12__ = 942
    CEFBS_None, // i_control_conditional__opc_bne__reg0_alias__regs__rel_addr12__ = 943
    CEFBS_None, // i_control_conditional__opc_bne__regs__reg0__rel_addr12__ = 944
    CEFBS_None, // i_control_conditional__opc_bne__regs__reg0_alias__rel_addr12__ = 945
    CEFBS_None, // i_control_conditional__opc_bne__regs__regs__rel_addr12__ = 946
    CEFBS_None, // i_control_registers_imm__opc_csrrci__reg0__csr_imm__imm5__ = 947
    CEFBS_None, // i_control_registers_imm__opc_csrrci__reg0__regs_csr__imm5__ = 948
    CEFBS_None, // i_control_registers_imm__opc_csrrci__reg0_alias__csr_imm__imm5__ = 949
    CEFBS_None, // i_control_registers_imm__opc_csrrci__reg0_alias__regs_csr__imm5__ = 950
    CEFBS_None, // i_control_registers_imm__opc_csrrci__regs__csr_imm__imm5__ = 951
    CEFBS_None, // i_control_registers_imm__opc_csrrci__regs__regs_csr__imm5__ = 952
    CEFBS_None, // i_control_registers_imm__opc_csrrsi__reg0__csr_imm__imm5__ = 953
    CEFBS_None, // i_control_registers_imm__opc_csrrsi__reg0__regs_csr__imm5__ = 954
    CEFBS_None, // i_control_registers_imm__opc_csrrsi__reg0_alias__csr_imm__imm5__ = 955
    CEFBS_None, // i_control_registers_imm__opc_csrrsi__reg0_alias__regs_csr__imm5__ = 956
    CEFBS_None, // i_control_registers_imm__opc_csrrsi__regs__csr_imm__imm5__ = 957
    CEFBS_None, // i_control_registers_imm__opc_csrrsi__regs__regs_csr__imm5__ = 958
    CEFBS_None, // i_control_registers_imm__opc_csrrwi__reg0__csr_imm__imm5__ = 959
    CEFBS_None, // i_control_registers_imm__opc_csrrwi__reg0__regs_csr__imm5__ = 960
    CEFBS_None, // i_control_registers_imm__opc_csrrwi__reg0_alias__csr_imm__imm5__ = 961
    CEFBS_None, // i_control_registers_imm__opc_csrrwi__reg0_alias__regs_csr__imm5__ = 962
    CEFBS_None, // i_control_registers_imm__opc_csrrwi__regs__csr_imm__imm5__ = 963
    CEFBS_None, // i_control_registers_imm__opc_csrrwi__regs__regs_csr__imm5__ = 964
    CEFBS_None, // i_control_registers_reg__opc_csrrc__reg0__csr_imm__reg0__ = 965
    CEFBS_None, // i_control_registers_reg__opc_csrrc__reg0__csr_imm__reg0_alias__ = 966
    CEFBS_None, // i_control_registers_reg__opc_csrrc__reg0__csr_imm__regs__ = 967
    CEFBS_None, // i_control_registers_reg__opc_csrrc__reg0__regs_csr__reg0__ = 968
    CEFBS_None, // i_control_registers_reg__opc_csrrc__reg0__regs_csr__reg0_alias__ = 969
    CEFBS_None, // i_control_registers_reg__opc_csrrc__reg0__regs_csr__regs__ = 970
    CEFBS_None, // i_control_registers_reg__opc_csrrc__reg0_alias__csr_imm__reg0__ = 971
    CEFBS_None, // i_control_registers_reg__opc_csrrc__reg0_alias__csr_imm__reg0_alias__ = 972
    CEFBS_None, // i_control_registers_reg__opc_csrrc__reg0_alias__csr_imm__regs__ = 973
    CEFBS_None, // i_control_registers_reg__opc_csrrc__reg0_alias__regs_csr__reg0__ = 974
    CEFBS_None, // i_control_registers_reg__opc_csrrc__reg0_alias__regs_csr__reg0_alias__ = 975
    CEFBS_None, // i_control_registers_reg__opc_csrrc__reg0_alias__regs_csr__regs__ = 976
    CEFBS_None, // i_control_registers_reg__opc_csrrc__regs__csr_imm__reg0__ = 977
    CEFBS_None, // i_control_registers_reg__opc_csrrc__regs__csr_imm__reg0_alias__ = 978
    CEFBS_None, // i_control_registers_reg__opc_csrrc__regs__csr_imm__regs__ = 979
    CEFBS_None, // i_control_registers_reg__opc_csrrc__regs__regs_csr__reg0__ = 980
    CEFBS_None, // i_control_registers_reg__opc_csrrc__regs__regs_csr__reg0_alias__ = 981
    CEFBS_None, // i_control_registers_reg__opc_csrrc__regs__regs_csr__regs__ = 982
    CEFBS_None, // i_control_registers_reg__opc_csrrs__reg0__csr_imm__reg0__ = 983
    CEFBS_None, // i_control_registers_reg__opc_csrrs__reg0__csr_imm__reg0_alias__ = 984
    CEFBS_None, // i_control_registers_reg__opc_csrrs__reg0__csr_imm__regs__ = 985
    CEFBS_None, // i_control_registers_reg__opc_csrrs__reg0__regs_csr__reg0__ = 986
    CEFBS_None, // i_control_registers_reg__opc_csrrs__reg0__regs_csr__reg0_alias__ = 987
    CEFBS_None, // i_control_registers_reg__opc_csrrs__reg0__regs_csr__regs__ = 988
    CEFBS_None, // i_control_registers_reg__opc_csrrs__reg0_alias__csr_imm__reg0__ = 989
    CEFBS_None, // i_control_registers_reg__opc_csrrs__reg0_alias__csr_imm__reg0_alias__ = 990
    CEFBS_None, // i_control_registers_reg__opc_csrrs__reg0_alias__csr_imm__regs__ = 991
    CEFBS_None, // i_control_registers_reg__opc_csrrs__reg0_alias__regs_csr__reg0__ = 992
    CEFBS_None, // i_control_registers_reg__opc_csrrs__reg0_alias__regs_csr__reg0_alias__ = 993
    CEFBS_None, // i_control_registers_reg__opc_csrrs__reg0_alias__regs_csr__regs__ = 994
    CEFBS_None, // i_control_registers_reg__opc_csrrs__regs__csr_imm__reg0__ = 995
    CEFBS_None, // i_control_registers_reg__opc_csrrs__regs__csr_imm__reg0_alias__ = 996
    CEFBS_None, // i_control_registers_reg__opc_csrrs__regs__csr_imm__regs__ = 997
    CEFBS_None, // i_control_registers_reg__opc_csrrs__regs__regs_csr__reg0__ = 998
    CEFBS_None, // i_control_registers_reg__opc_csrrs__regs__regs_csr__reg0_alias__ = 999
    CEFBS_None, // i_control_registers_reg__opc_csrrs__regs__regs_csr__regs__ = 1000
    CEFBS_None, // i_control_registers_reg__opc_csrrw__reg0__csr_imm__reg0__ = 1001
    CEFBS_None, // i_control_registers_reg__opc_csrrw__reg0__csr_imm__reg0_alias__ = 1002
    CEFBS_None, // i_control_registers_reg__opc_csrrw__reg0__csr_imm__regs__ = 1003
    CEFBS_None, // i_control_registers_reg__opc_csrrw__reg0__regs_csr__reg0__ = 1004
    CEFBS_None, // i_control_registers_reg__opc_csrrw__reg0__regs_csr__reg0_alias__ = 1005
    CEFBS_None, // i_control_registers_reg__opc_csrrw__reg0__regs_csr__regs__ = 1006
    CEFBS_None, // i_control_registers_reg__opc_csrrw__reg0_alias__csr_imm__reg0__ = 1007
    CEFBS_None, // i_control_registers_reg__opc_csrrw__reg0_alias__csr_imm__reg0_alias__ = 1008
    CEFBS_None, // i_control_registers_reg__opc_csrrw__reg0_alias__csr_imm__regs__ = 1009
    CEFBS_None, // i_control_registers_reg__opc_csrrw__reg0_alias__regs_csr__reg0__ = 1010
    CEFBS_None, // i_control_registers_reg__opc_csrrw__reg0_alias__regs_csr__reg0_alias__ = 1011
    CEFBS_None, // i_control_registers_reg__opc_csrrw__reg0_alias__regs_csr__regs__ = 1012
    CEFBS_None, // i_control_registers_reg__opc_csrrw__regs__csr_imm__reg0__ = 1013
    CEFBS_None, // i_control_registers_reg__opc_csrrw__regs__csr_imm__reg0_alias__ = 1014
    CEFBS_None, // i_control_registers_reg__opc_csrrw__regs__csr_imm__regs__ = 1015
    CEFBS_None, // i_control_registers_reg__opc_csrrw__regs__regs_csr__reg0__ = 1016
    CEFBS_None, // i_control_registers_reg__opc_csrrw__regs__regs_csr__reg0_alias__ = 1017
    CEFBS_None, // i_control_registers_reg__opc_csrrw__regs__regs_csr__regs__ = 1018
    CEFBS_None, // i_csrc_alias__csr_imm__reg0__ = 1019
    CEFBS_None, // i_csrc_alias__csr_imm__reg0_alias__ = 1020
    CEFBS_None, // i_csrc_alias__csr_imm__regs__ = 1021
    CEFBS_None, // i_csrc_alias__regs_csr__reg0__ = 1022
    CEFBS_None, // i_csrc_alias__regs_csr__reg0_alias__ = 1023
    CEFBS_None, // i_csrc_alias__regs_csr__regs__ = 1024
    CEFBS_None, // i_csrci_alias2__csr_imm__imm5__ = 1025
    CEFBS_None, // i_csrci_alias2__regs_csr__imm5__ = 1026
    CEFBS_None, // i_csrci_alias__csr_imm__imm5__ = 1027
    CEFBS_None, // i_csrci_alias__regs_csr__imm5__ = 1028
    CEFBS_None, // i_csrr_alias__reg0__csr_imm__ = 1029
    CEFBS_None, // i_csrr_alias__reg0__regs_csr__ = 1030
    CEFBS_None, // i_csrr_alias__reg0_alias__csr_imm__ = 1031
    CEFBS_None, // i_csrr_alias__reg0_alias__regs_csr__ = 1032
    CEFBS_None, // i_csrr_alias__regs__csr_imm__ = 1033
    CEFBS_None, // i_csrr_alias__regs__regs_csr__ = 1034
    CEFBS_None, // i_csrs_alias__csr_imm__reg0__ = 1035
    CEFBS_None, // i_csrs_alias__csr_imm__reg0_alias__ = 1036
    CEFBS_None, // i_csrs_alias__csr_imm__regs__ = 1037
    CEFBS_None, // i_csrs_alias__regs_csr__reg0__ = 1038
    CEFBS_None, // i_csrs_alias__regs_csr__reg0_alias__ = 1039
    CEFBS_None, // i_csrs_alias__regs_csr__regs__ = 1040
    CEFBS_None, // i_csrsi_alias2__csr_imm__imm5__ = 1041
    CEFBS_None, // i_csrsi_alias2__regs_csr__imm5__ = 1042
    CEFBS_None, // i_csrsi_alias__csr_imm__imm5__ = 1043
    CEFBS_None, // i_csrsi_alias__regs_csr__imm5__ = 1044
    CEFBS_None, // i_csrw_alias__csr_imm__reg0__ = 1045
    CEFBS_None, // i_csrw_alias__csr_imm__reg0_alias__ = 1046
    CEFBS_None, // i_csrw_alias__csr_imm__regs__ = 1047
    CEFBS_None, // i_csrw_alias__regs_csr__reg0__ = 1048
    CEFBS_None, // i_csrw_alias__regs_csr__reg0_alias__ = 1049
    CEFBS_None, // i_csrw_alias__regs_csr__regs__ = 1050
    CEFBS_None, // i_csrwi_alias__csr_imm__imm5__ = 1051
    CEFBS_None, // i_csrwi_alias__regs_csr__imm5__ = 1052
    CEFBS_None, // i_ebreak__opc_ebreak__ = 1053
    CEFBS_None, // i_ecall__opc_ecall__ = 1054
    CEFBS_None, // i_ecall_alias__ = 1055
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__reg0__ = 1056
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__reg0_alias__ = 1057
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__regs__ = 1058
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0_alias__reg0__ = 1059
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0_alias__reg0_alias__ = 1060
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0_alias__regs__ = 1061
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__reg0__ = 1062
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__reg0_alias__ = 1063
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__regs__ = 1064
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0__reg0__ = 1065
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0__reg0_alias__ = 1066
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0__regs__ = 1067
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0_alias__reg0__ = 1068
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0_alias__reg0_alias__ = 1069
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0_alias__regs__ = 1070
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__regs__reg0__ = 1071
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__regs__reg0_alias__ = 1072
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__regs__regs__ = 1073
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__ = 1074
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0_alias__ = 1075
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__regs__ = 1076
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__regs__reg0_alias__reg0__ = 1077
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__regs__reg0_alias__reg0_alias__ = 1078
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__regs__reg0_alias__regs__ = 1079
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__regs__regs__reg0__ = 1080
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__regs__regs__reg0_alias__ = 1081
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__ = 1082
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__reg0__ = 1083
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__reg0_alias__ = 1084
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__regs__ = 1085
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0_alias__reg0__ = 1086
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0_alias__reg0_alias__ = 1087
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0_alias__regs__ = 1088
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__reg0__ = 1089
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__reg0_alias__ = 1090
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__regs__ = 1091
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0__reg0__ = 1092
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0__reg0_alias__ = 1093
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0__regs__ = 1094
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0_alias__reg0__ = 1095
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0_alias__reg0_alias__ = 1096
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0_alias__regs__ = 1097
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__regs__reg0__ = 1098
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__regs__reg0_alias__ = 1099
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__regs__regs__ = 1100
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__reg0__ = 1101
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__reg0_alias__ = 1102
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__regs__ = 1103
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__regs__reg0_alias__reg0__ = 1104
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__regs__reg0_alias__reg0_alias__ = 1105
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__regs__reg0_alias__regs__ = 1106
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__regs__regs__reg0__ = 1107
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__regs__regs__reg0_alias__ = 1108
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__ = 1109
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__reg0__ = 1110
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__reg0_alias__ = 1111
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__regs__ = 1112
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0_alias__reg0__ = 1113
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0_alias__reg0_alias__ = 1114
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0_alias__regs__ = 1115
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__reg0__ = 1116
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__reg0_alias__ = 1117
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__regs__ = 1118
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0__reg0__ = 1119
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0__reg0_alias__ = 1120
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0__regs__ = 1121
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0_alias__reg0__ = 1122
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0_alias__reg0_alias__ = 1123
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0_alias__regs__ = 1124
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__regs__reg0__ = 1125
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__regs__reg0_alias__ = 1126
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__regs__regs__ = 1127
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__ = 1128
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0_alias__ = 1129
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__ = 1130
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__regs__reg0_alias__reg0__ = 1131
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__regs__reg0_alias__reg0_alias__ = 1132
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__regs__reg0_alias__regs__ = 1133
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__ = 1134
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0_alias__ = 1135
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__ = 1136
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__reg0__ = 1137
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__reg0_alias__ = 1138
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__regs__ = 1139
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0_alias__reg0__ = 1140
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0_alias__reg0_alias__ = 1141
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0_alias__regs__ = 1142
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__reg0__ = 1143
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__reg0_alias__ = 1144
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__regs__ = 1145
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0__reg0__ = 1146
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0__reg0_alias__ = 1147
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0__regs__ = 1148
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0_alias__reg0__ = 1149
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0_alias__reg0_alias__ = 1150
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0_alias__regs__ = 1151
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__regs__reg0__ = 1152
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__regs__reg0_alias__ = 1153
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__regs__regs__ = 1154
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__ = 1155
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0_alias__ = 1156
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__regs__ = 1157
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__regs__reg0_alias__reg0__ = 1158
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__regs__reg0_alias__reg0_alias__ = 1159
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__regs__reg0_alias__regs__ = 1160
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0__ = 1161
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0_alias__ = 1162
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_d__regs__regs__regs__ = 1163
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__reg0__ = 1164
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__reg0_alias__ = 1165
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__regs__ = 1166
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0_alias__reg0__ = 1167
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0_alias__reg0_alias__ = 1168
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0_alias__regs__ = 1169
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__reg0__ = 1170
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__reg0_alias__ = 1171
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__regs__ = 1172
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0__reg0__ = 1173
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0__reg0_alias__ = 1174
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0__regs__ = 1175
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0_alias__reg0__ = 1176
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0_alias__reg0_alias__ = 1177
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0_alias__regs__ = 1178
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__regs__reg0__ = 1179
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__regs__reg0_alias__ = 1180
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__regs__regs__ = 1181
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0__ = 1182
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0_alias__ = 1183
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__regs__ = 1184
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__regs__reg0_alias__reg0__ = 1185
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__regs__reg0_alias__reg0_alias__ = 1186
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__regs__reg0_alias__regs__ = 1187
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0__ = 1188
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0_alias__ = 1189
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_e__regs__regs__regs__ = 1190
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0__ = 1191
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0_alias__ = 1192
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__regs__ = 1193
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0_alias__reg0__ = 1194
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0_alias__reg0_alias__ = 1195
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0_alias__regs__ = 1196
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0__ = 1197
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0_alias__ = 1198
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__regs__ = 1199
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0__reg0__ = 1200
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0__reg0_alias__ = 1201
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0__regs__ = 1202
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0_alias__reg0__ = 1203
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0_alias__reg0_alias__ = 1204
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0_alias__regs__ = 1205
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__regs__reg0__ = 1206
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__regs__reg0_alias__ = 1207
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__regs__regs__ = 1208
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__regs__reg0__reg0__ = 1209
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__regs__reg0__reg0_alias__ = 1210
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__regs__reg0__regs__ = 1211
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__regs__reg0_alias__reg0__ = 1212
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__regs__reg0_alias__reg0_alias__ = 1213
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__regs__reg0_alias__regs__ = 1214
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__regs__regs__reg0__ = 1215
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__regs__regs__reg0_alias__ = 1216
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_f__regs__regs__regs__ = 1217
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0__reg0__ = 1218
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0__reg0_alias__ = 1219
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0__regs__ = 1220
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0_alias__reg0__ = 1221
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0_alias__reg0_alias__ = 1222
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0_alias__regs__ = 1223
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__reg0__regs__reg0__ = 1224
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__reg0__regs__reg0_alias__ = 1225
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__reg0__regs__regs__ = 1226
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0__reg0__ = 1227
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0__reg0_alias__ = 1228
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0__regs__ = 1229
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0_alias__reg0__ = 1230
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0_alias__reg0_alias__ = 1231
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0_alias__regs__ = 1232
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__regs__reg0__ = 1233
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__regs__reg0_alias__ = 1234
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__regs__regs__ = 1235
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__regs__reg0__reg0__ = 1236
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__regs__reg0__reg0_alias__ = 1237
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__regs__reg0__regs__ = 1238
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__regs__reg0_alias__reg0__ = 1239
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__regs__reg0_alias__reg0_alias__ = 1240
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__regs__reg0_alias__regs__ = 1241
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__regs__regs__reg0__ = 1242
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__regs__regs__reg0_alias__ = 1243
    CEFBS_None, // i_ext_hackaton__opc_hackaton_custom_g__regs__regs__regs__ = 1244
    CEFBS_None, // i_fence__opc_fence__opc_hint_fence__opc_hint_fence__ = 1245
    CEFBS_None, // i_fence__opc_fence__opc_hint_fence__opc_i_fence__ = 1246
    CEFBS_None, // i_fence__opc_fence__opc_hint_fence__opc_io_fence__ = 1247
    CEFBS_None, // i_fence__opc_fence__opc_hint_fence__opc_ior_fence__ = 1248
    CEFBS_None, // i_fence__opc_fence__opc_hint_fence__opc_iorw_fence__ = 1249
    CEFBS_None, // i_fence__opc_fence__opc_hint_fence__opc_iow_fence__ = 1250
    CEFBS_None, // i_fence__opc_fence__opc_hint_fence__opc_ir_fence__ = 1251
    CEFBS_None, // i_fence__opc_fence__opc_hint_fence__opc_irw_fence__ = 1252
    CEFBS_None, // i_fence__opc_fence__opc_hint_fence__opc_iw_fence__ = 1253
    CEFBS_None, // i_fence__opc_fence__opc_hint_fence__opc_o_fence__ = 1254
    CEFBS_None, // i_fence__opc_fence__opc_hint_fence__opc_or_fence__ = 1255
    CEFBS_None, // i_fence__opc_fence__opc_hint_fence__opc_orw_fence__ = 1256
    CEFBS_None, // i_fence__opc_fence__opc_hint_fence__opc_ow_fence__ = 1257
    CEFBS_None, // i_fence__opc_fence__opc_hint_fence__opc_r_fence__ = 1258
    CEFBS_None, // i_fence__opc_fence__opc_hint_fence__opc_rw_fence__ = 1259
    CEFBS_None, // i_fence__opc_fence__opc_hint_fence__opc_w_fence__ = 1260
    CEFBS_None, // i_fence__opc_fence__opc_i_fence__opc_hint_fence__ = 1261
    CEFBS_None, // i_fence__opc_fence__opc_i_fence__opc_i_fence__ = 1262
    CEFBS_None, // i_fence__opc_fence__opc_i_fence__opc_io_fence__ = 1263
    CEFBS_None, // i_fence__opc_fence__opc_i_fence__opc_ior_fence__ = 1264
    CEFBS_None, // i_fence__opc_fence__opc_i_fence__opc_iorw_fence__ = 1265
    CEFBS_None, // i_fence__opc_fence__opc_i_fence__opc_iow_fence__ = 1266
    CEFBS_None, // i_fence__opc_fence__opc_i_fence__opc_ir_fence__ = 1267
    CEFBS_None, // i_fence__opc_fence__opc_i_fence__opc_irw_fence__ = 1268
    CEFBS_None, // i_fence__opc_fence__opc_i_fence__opc_iw_fence__ = 1269
    CEFBS_None, // i_fence__opc_fence__opc_i_fence__opc_o_fence__ = 1270
    CEFBS_None, // i_fence__opc_fence__opc_i_fence__opc_or_fence__ = 1271
    CEFBS_None, // i_fence__opc_fence__opc_i_fence__opc_orw_fence__ = 1272
    CEFBS_None, // i_fence__opc_fence__opc_i_fence__opc_ow_fence__ = 1273
    CEFBS_None, // i_fence__opc_fence__opc_i_fence__opc_r_fence__ = 1274
    CEFBS_None, // i_fence__opc_fence__opc_i_fence__opc_rw_fence__ = 1275
    CEFBS_None, // i_fence__opc_fence__opc_i_fence__opc_w_fence__ = 1276
    CEFBS_None, // i_fence__opc_fence__opc_io_fence__opc_hint_fence__ = 1277
    CEFBS_None, // i_fence__opc_fence__opc_io_fence__opc_i_fence__ = 1278
    CEFBS_None, // i_fence__opc_fence__opc_io_fence__opc_io_fence__ = 1279
    CEFBS_None, // i_fence__opc_fence__opc_io_fence__opc_ior_fence__ = 1280
    CEFBS_None, // i_fence__opc_fence__opc_io_fence__opc_iorw_fence__ = 1281
    CEFBS_None, // i_fence__opc_fence__opc_io_fence__opc_iow_fence__ = 1282
    CEFBS_None, // i_fence__opc_fence__opc_io_fence__opc_ir_fence__ = 1283
    CEFBS_None, // i_fence__opc_fence__opc_io_fence__opc_irw_fence__ = 1284
    CEFBS_None, // i_fence__opc_fence__opc_io_fence__opc_iw_fence__ = 1285
    CEFBS_None, // i_fence__opc_fence__opc_io_fence__opc_o_fence__ = 1286
    CEFBS_None, // i_fence__opc_fence__opc_io_fence__opc_or_fence__ = 1287
    CEFBS_None, // i_fence__opc_fence__opc_io_fence__opc_orw_fence__ = 1288
    CEFBS_None, // i_fence__opc_fence__opc_io_fence__opc_ow_fence__ = 1289
    CEFBS_None, // i_fence__opc_fence__opc_io_fence__opc_r_fence__ = 1290
    CEFBS_None, // i_fence__opc_fence__opc_io_fence__opc_rw_fence__ = 1291
    CEFBS_None, // i_fence__opc_fence__opc_io_fence__opc_w_fence__ = 1292
    CEFBS_None, // i_fence__opc_fence__opc_ior_fence__opc_hint_fence__ = 1293
    CEFBS_None, // i_fence__opc_fence__opc_ior_fence__opc_i_fence__ = 1294
    CEFBS_None, // i_fence__opc_fence__opc_ior_fence__opc_io_fence__ = 1295
    CEFBS_None, // i_fence__opc_fence__opc_ior_fence__opc_ior_fence__ = 1296
    CEFBS_None, // i_fence__opc_fence__opc_ior_fence__opc_iorw_fence__ = 1297
    CEFBS_None, // i_fence__opc_fence__opc_ior_fence__opc_iow_fence__ = 1298
    CEFBS_None, // i_fence__opc_fence__opc_ior_fence__opc_ir_fence__ = 1299
    CEFBS_None, // i_fence__opc_fence__opc_ior_fence__opc_irw_fence__ = 1300
    CEFBS_None, // i_fence__opc_fence__opc_ior_fence__opc_iw_fence__ = 1301
    CEFBS_None, // i_fence__opc_fence__opc_ior_fence__opc_o_fence__ = 1302
    CEFBS_None, // i_fence__opc_fence__opc_ior_fence__opc_or_fence__ = 1303
    CEFBS_None, // i_fence__opc_fence__opc_ior_fence__opc_orw_fence__ = 1304
    CEFBS_None, // i_fence__opc_fence__opc_ior_fence__opc_ow_fence__ = 1305
    CEFBS_None, // i_fence__opc_fence__opc_ior_fence__opc_r_fence__ = 1306
    CEFBS_None, // i_fence__opc_fence__opc_ior_fence__opc_rw_fence__ = 1307
    CEFBS_None, // i_fence__opc_fence__opc_ior_fence__opc_w_fence__ = 1308
    CEFBS_None, // i_fence__opc_fence__opc_iorw_fence__opc_hint_fence__ = 1309
    CEFBS_None, // i_fence__opc_fence__opc_iorw_fence__opc_i_fence__ = 1310
    CEFBS_None, // i_fence__opc_fence__opc_iorw_fence__opc_io_fence__ = 1311
    CEFBS_None, // i_fence__opc_fence__opc_iorw_fence__opc_ior_fence__ = 1312
    CEFBS_None, // i_fence__opc_fence__opc_iorw_fence__opc_iorw_fence__ = 1313
    CEFBS_None, // i_fence__opc_fence__opc_iorw_fence__opc_iow_fence__ = 1314
    CEFBS_None, // i_fence__opc_fence__opc_iorw_fence__opc_ir_fence__ = 1315
    CEFBS_None, // i_fence__opc_fence__opc_iorw_fence__opc_irw_fence__ = 1316
    CEFBS_None, // i_fence__opc_fence__opc_iorw_fence__opc_iw_fence__ = 1317
    CEFBS_None, // i_fence__opc_fence__opc_iorw_fence__opc_o_fence__ = 1318
    CEFBS_None, // i_fence__opc_fence__opc_iorw_fence__opc_or_fence__ = 1319
    CEFBS_None, // i_fence__opc_fence__opc_iorw_fence__opc_orw_fence__ = 1320
    CEFBS_None, // i_fence__opc_fence__opc_iorw_fence__opc_ow_fence__ = 1321
    CEFBS_None, // i_fence__opc_fence__opc_iorw_fence__opc_r_fence__ = 1322
    CEFBS_None, // i_fence__opc_fence__opc_iorw_fence__opc_rw_fence__ = 1323
    CEFBS_None, // i_fence__opc_fence__opc_iorw_fence__opc_w_fence__ = 1324
    CEFBS_None, // i_fence__opc_fence__opc_iow_fence__opc_hint_fence__ = 1325
    CEFBS_None, // i_fence__opc_fence__opc_iow_fence__opc_i_fence__ = 1326
    CEFBS_None, // i_fence__opc_fence__opc_iow_fence__opc_io_fence__ = 1327
    CEFBS_None, // i_fence__opc_fence__opc_iow_fence__opc_ior_fence__ = 1328
    CEFBS_None, // i_fence__opc_fence__opc_iow_fence__opc_iorw_fence__ = 1329
    CEFBS_None, // i_fence__opc_fence__opc_iow_fence__opc_iow_fence__ = 1330
    CEFBS_None, // i_fence__opc_fence__opc_iow_fence__opc_ir_fence__ = 1331
    CEFBS_None, // i_fence__opc_fence__opc_iow_fence__opc_irw_fence__ = 1332
    CEFBS_None, // i_fence__opc_fence__opc_iow_fence__opc_iw_fence__ = 1333
    CEFBS_None, // i_fence__opc_fence__opc_iow_fence__opc_o_fence__ = 1334
    CEFBS_None, // i_fence__opc_fence__opc_iow_fence__opc_or_fence__ = 1335
    CEFBS_None, // i_fence__opc_fence__opc_iow_fence__opc_orw_fence__ = 1336
    CEFBS_None, // i_fence__opc_fence__opc_iow_fence__opc_ow_fence__ = 1337
    CEFBS_None, // i_fence__opc_fence__opc_iow_fence__opc_r_fence__ = 1338
    CEFBS_None, // i_fence__opc_fence__opc_iow_fence__opc_rw_fence__ = 1339
    CEFBS_None, // i_fence__opc_fence__opc_iow_fence__opc_w_fence__ = 1340
    CEFBS_None, // i_fence__opc_fence__opc_ir_fence__opc_hint_fence__ = 1341
    CEFBS_None, // i_fence__opc_fence__opc_ir_fence__opc_i_fence__ = 1342
    CEFBS_None, // i_fence__opc_fence__opc_ir_fence__opc_io_fence__ = 1343
    CEFBS_None, // i_fence__opc_fence__opc_ir_fence__opc_ior_fence__ = 1344
    CEFBS_None, // i_fence__opc_fence__opc_ir_fence__opc_iorw_fence__ = 1345
    CEFBS_None, // i_fence__opc_fence__opc_ir_fence__opc_iow_fence__ = 1346
    CEFBS_None, // i_fence__opc_fence__opc_ir_fence__opc_ir_fence__ = 1347
    CEFBS_None, // i_fence__opc_fence__opc_ir_fence__opc_irw_fence__ = 1348
    CEFBS_None, // i_fence__opc_fence__opc_ir_fence__opc_iw_fence__ = 1349
    CEFBS_None, // i_fence__opc_fence__opc_ir_fence__opc_o_fence__ = 1350
    CEFBS_None, // i_fence__opc_fence__opc_ir_fence__opc_or_fence__ = 1351
    CEFBS_None, // i_fence__opc_fence__opc_ir_fence__opc_orw_fence__ = 1352
    CEFBS_None, // i_fence__opc_fence__opc_ir_fence__opc_ow_fence__ = 1353
    CEFBS_None, // i_fence__opc_fence__opc_ir_fence__opc_r_fence__ = 1354
    CEFBS_None, // i_fence__opc_fence__opc_ir_fence__opc_rw_fence__ = 1355
    CEFBS_None, // i_fence__opc_fence__opc_ir_fence__opc_w_fence__ = 1356
    CEFBS_None, // i_fence__opc_fence__opc_irw_fence__opc_hint_fence__ = 1357
    CEFBS_None, // i_fence__opc_fence__opc_irw_fence__opc_i_fence__ = 1358
    CEFBS_None, // i_fence__opc_fence__opc_irw_fence__opc_io_fence__ = 1359
    CEFBS_None, // i_fence__opc_fence__opc_irw_fence__opc_ior_fence__ = 1360
    CEFBS_None, // i_fence__opc_fence__opc_irw_fence__opc_iorw_fence__ = 1361
    CEFBS_None, // i_fence__opc_fence__opc_irw_fence__opc_iow_fence__ = 1362
    CEFBS_None, // i_fence__opc_fence__opc_irw_fence__opc_ir_fence__ = 1363
    CEFBS_None, // i_fence__opc_fence__opc_irw_fence__opc_irw_fence__ = 1364
    CEFBS_None, // i_fence__opc_fence__opc_irw_fence__opc_iw_fence__ = 1365
    CEFBS_None, // i_fence__opc_fence__opc_irw_fence__opc_o_fence__ = 1366
    CEFBS_None, // i_fence__opc_fence__opc_irw_fence__opc_or_fence__ = 1367
    CEFBS_None, // i_fence__opc_fence__opc_irw_fence__opc_orw_fence__ = 1368
    CEFBS_None, // i_fence__opc_fence__opc_irw_fence__opc_ow_fence__ = 1369
    CEFBS_None, // i_fence__opc_fence__opc_irw_fence__opc_r_fence__ = 1370
    CEFBS_None, // i_fence__opc_fence__opc_irw_fence__opc_rw_fence__ = 1371
    CEFBS_None, // i_fence__opc_fence__opc_irw_fence__opc_w_fence__ = 1372
    CEFBS_None, // i_fence__opc_fence__opc_iw_fence__opc_hint_fence__ = 1373
    CEFBS_None, // i_fence__opc_fence__opc_iw_fence__opc_i_fence__ = 1374
    CEFBS_None, // i_fence__opc_fence__opc_iw_fence__opc_io_fence__ = 1375
    CEFBS_None, // i_fence__opc_fence__opc_iw_fence__opc_ior_fence__ = 1376
    CEFBS_None, // i_fence__opc_fence__opc_iw_fence__opc_iorw_fence__ = 1377
    CEFBS_None, // i_fence__opc_fence__opc_iw_fence__opc_iow_fence__ = 1378
    CEFBS_None, // i_fence__opc_fence__opc_iw_fence__opc_ir_fence__ = 1379
    CEFBS_None, // i_fence__opc_fence__opc_iw_fence__opc_irw_fence__ = 1380
    CEFBS_None, // i_fence__opc_fence__opc_iw_fence__opc_iw_fence__ = 1381
    CEFBS_None, // i_fence__opc_fence__opc_iw_fence__opc_o_fence__ = 1382
    CEFBS_None, // i_fence__opc_fence__opc_iw_fence__opc_or_fence__ = 1383
    CEFBS_None, // i_fence__opc_fence__opc_iw_fence__opc_orw_fence__ = 1384
    CEFBS_None, // i_fence__opc_fence__opc_iw_fence__opc_ow_fence__ = 1385
    CEFBS_None, // i_fence__opc_fence__opc_iw_fence__opc_r_fence__ = 1386
    CEFBS_None, // i_fence__opc_fence__opc_iw_fence__opc_rw_fence__ = 1387
    CEFBS_None, // i_fence__opc_fence__opc_iw_fence__opc_w_fence__ = 1388
    CEFBS_None, // i_fence__opc_fence__opc_o_fence__opc_hint_fence__ = 1389
    CEFBS_None, // i_fence__opc_fence__opc_o_fence__opc_i_fence__ = 1390
    CEFBS_None, // i_fence__opc_fence__opc_o_fence__opc_io_fence__ = 1391
    CEFBS_None, // i_fence__opc_fence__opc_o_fence__opc_ior_fence__ = 1392
    CEFBS_None, // i_fence__opc_fence__opc_o_fence__opc_iorw_fence__ = 1393
    CEFBS_None, // i_fence__opc_fence__opc_o_fence__opc_iow_fence__ = 1394
    CEFBS_None, // i_fence__opc_fence__opc_o_fence__opc_ir_fence__ = 1395
    CEFBS_None, // i_fence__opc_fence__opc_o_fence__opc_irw_fence__ = 1396
    CEFBS_None, // i_fence__opc_fence__opc_o_fence__opc_iw_fence__ = 1397
    CEFBS_None, // i_fence__opc_fence__opc_o_fence__opc_o_fence__ = 1398
    CEFBS_None, // i_fence__opc_fence__opc_o_fence__opc_or_fence__ = 1399
    CEFBS_None, // i_fence__opc_fence__opc_o_fence__opc_orw_fence__ = 1400
    CEFBS_None, // i_fence__opc_fence__opc_o_fence__opc_ow_fence__ = 1401
    CEFBS_None, // i_fence__opc_fence__opc_o_fence__opc_r_fence__ = 1402
    CEFBS_None, // i_fence__opc_fence__opc_o_fence__opc_rw_fence__ = 1403
    CEFBS_None, // i_fence__opc_fence__opc_o_fence__opc_w_fence__ = 1404
    CEFBS_None, // i_fence__opc_fence__opc_or_fence__opc_hint_fence__ = 1405
    CEFBS_None, // i_fence__opc_fence__opc_or_fence__opc_i_fence__ = 1406
    CEFBS_None, // i_fence__opc_fence__opc_or_fence__opc_io_fence__ = 1407
    CEFBS_None, // i_fence__opc_fence__opc_or_fence__opc_ior_fence__ = 1408
    CEFBS_None, // i_fence__opc_fence__opc_or_fence__opc_iorw_fence__ = 1409
    CEFBS_None, // i_fence__opc_fence__opc_or_fence__opc_iow_fence__ = 1410
    CEFBS_None, // i_fence__opc_fence__opc_or_fence__opc_ir_fence__ = 1411
    CEFBS_None, // i_fence__opc_fence__opc_or_fence__opc_irw_fence__ = 1412
    CEFBS_None, // i_fence__opc_fence__opc_or_fence__opc_iw_fence__ = 1413
    CEFBS_None, // i_fence__opc_fence__opc_or_fence__opc_o_fence__ = 1414
    CEFBS_None, // i_fence__opc_fence__opc_or_fence__opc_or_fence__ = 1415
    CEFBS_None, // i_fence__opc_fence__opc_or_fence__opc_orw_fence__ = 1416
    CEFBS_None, // i_fence__opc_fence__opc_or_fence__opc_ow_fence__ = 1417
    CEFBS_None, // i_fence__opc_fence__opc_or_fence__opc_r_fence__ = 1418
    CEFBS_None, // i_fence__opc_fence__opc_or_fence__opc_rw_fence__ = 1419
    CEFBS_None, // i_fence__opc_fence__opc_or_fence__opc_w_fence__ = 1420
    CEFBS_None, // i_fence__opc_fence__opc_orw_fence__opc_hint_fence__ = 1421
    CEFBS_None, // i_fence__opc_fence__opc_orw_fence__opc_i_fence__ = 1422
    CEFBS_None, // i_fence__opc_fence__opc_orw_fence__opc_io_fence__ = 1423
    CEFBS_None, // i_fence__opc_fence__opc_orw_fence__opc_ior_fence__ = 1424
    CEFBS_None, // i_fence__opc_fence__opc_orw_fence__opc_iorw_fence__ = 1425
    CEFBS_None, // i_fence__opc_fence__opc_orw_fence__opc_iow_fence__ = 1426
    CEFBS_None, // i_fence__opc_fence__opc_orw_fence__opc_ir_fence__ = 1427
    CEFBS_None, // i_fence__opc_fence__opc_orw_fence__opc_irw_fence__ = 1428
    CEFBS_None, // i_fence__opc_fence__opc_orw_fence__opc_iw_fence__ = 1429
    CEFBS_None, // i_fence__opc_fence__opc_orw_fence__opc_o_fence__ = 1430
    CEFBS_None, // i_fence__opc_fence__opc_orw_fence__opc_or_fence__ = 1431
    CEFBS_None, // i_fence__opc_fence__opc_orw_fence__opc_orw_fence__ = 1432
    CEFBS_None, // i_fence__opc_fence__opc_orw_fence__opc_ow_fence__ = 1433
    CEFBS_None, // i_fence__opc_fence__opc_orw_fence__opc_r_fence__ = 1434
    CEFBS_None, // i_fence__opc_fence__opc_orw_fence__opc_rw_fence__ = 1435
    CEFBS_None, // i_fence__opc_fence__opc_orw_fence__opc_w_fence__ = 1436
    CEFBS_None, // i_fence__opc_fence__opc_ow_fence__opc_hint_fence__ = 1437
    CEFBS_None, // i_fence__opc_fence__opc_ow_fence__opc_i_fence__ = 1438
    CEFBS_None, // i_fence__opc_fence__opc_ow_fence__opc_io_fence__ = 1439
    CEFBS_None, // i_fence__opc_fence__opc_ow_fence__opc_ior_fence__ = 1440
    CEFBS_None, // i_fence__opc_fence__opc_ow_fence__opc_iorw_fence__ = 1441
    CEFBS_None, // i_fence__opc_fence__opc_ow_fence__opc_iow_fence__ = 1442
    CEFBS_None, // i_fence__opc_fence__opc_ow_fence__opc_ir_fence__ = 1443
    CEFBS_None, // i_fence__opc_fence__opc_ow_fence__opc_irw_fence__ = 1444
    CEFBS_None, // i_fence__opc_fence__opc_ow_fence__opc_iw_fence__ = 1445
    CEFBS_None, // i_fence__opc_fence__opc_ow_fence__opc_o_fence__ = 1446
    CEFBS_None, // i_fence__opc_fence__opc_ow_fence__opc_or_fence__ = 1447
    CEFBS_None, // i_fence__opc_fence__opc_ow_fence__opc_orw_fence__ = 1448
    CEFBS_None, // i_fence__opc_fence__opc_ow_fence__opc_ow_fence__ = 1449
    CEFBS_None, // i_fence__opc_fence__opc_ow_fence__opc_r_fence__ = 1450
    CEFBS_None, // i_fence__opc_fence__opc_ow_fence__opc_rw_fence__ = 1451
    CEFBS_None, // i_fence__opc_fence__opc_ow_fence__opc_w_fence__ = 1452
    CEFBS_None, // i_fence__opc_fence__opc_r_fence__opc_hint_fence__ = 1453
    CEFBS_None, // i_fence__opc_fence__opc_r_fence__opc_i_fence__ = 1454
    CEFBS_None, // i_fence__opc_fence__opc_r_fence__opc_io_fence__ = 1455
    CEFBS_None, // i_fence__opc_fence__opc_r_fence__opc_ior_fence__ = 1456
    CEFBS_None, // i_fence__opc_fence__opc_r_fence__opc_iorw_fence__ = 1457
    CEFBS_None, // i_fence__opc_fence__opc_r_fence__opc_iow_fence__ = 1458
    CEFBS_None, // i_fence__opc_fence__opc_r_fence__opc_ir_fence__ = 1459
    CEFBS_None, // i_fence__opc_fence__opc_r_fence__opc_irw_fence__ = 1460
    CEFBS_None, // i_fence__opc_fence__opc_r_fence__opc_iw_fence__ = 1461
    CEFBS_None, // i_fence__opc_fence__opc_r_fence__opc_o_fence__ = 1462
    CEFBS_None, // i_fence__opc_fence__opc_r_fence__opc_or_fence__ = 1463
    CEFBS_None, // i_fence__opc_fence__opc_r_fence__opc_orw_fence__ = 1464
    CEFBS_None, // i_fence__opc_fence__opc_r_fence__opc_ow_fence__ = 1465
    CEFBS_None, // i_fence__opc_fence__opc_r_fence__opc_r_fence__ = 1466
    CEFBS_None, // i_fence__opc_fence__opc_r_fence__opc_rw_fence__ = 1467
    CEFBS_None, // i_fence__opc_fence__opc_r_fence__opc_w_fence__ = 1468
    CEFBS_None, // i_fence__opc_fence__opc_rw_fence__opc_hint_fence__ = 1469
    CEFBS_None, // i_fence__opc_fence__opc_rw_fence__opc_i_fence__ = 1470
    CEFBS_None, // i_fence__opc_fence__opc_rw_fence__opc_io_fence__ = 1471
    CEFBS_None, // i_fence__opc_fence__opc_rw_fence__opc_ior_fence__ = 1472
    CEFBS_None, // i_fence__opc_fence__opc_rw_fence__opc_iorw_fence__ = 1473
    CEFBS_None, // i_fence__opc_fence__opc_rw_fence__opc_iow_fence__ = 1474
    CEFBS_None, // i_fence__opc_fence__opc_rw_fence__opc_ir_fence__ = 1475
    CEFBS_None, // i_fence__opc_fence__opc_rw_fence__opc_irw_fence__ = 1476
    CEFBS_None, // i_fence__opc_fence__opc_rw_fence__opc_iw_fence__ = 1477
    CEFBS_None, // i_fence__opc_fence__opc_rw_fence__opc_o_fence__ = 1478
    CEFBS_None, // i_fence__opc_fence__opc_rw_fence__opc_or_fence__ = 1479
    CEFBS_None, // i_fence__opc_fence__opc_rw_fence__opc_orw_fence__ = 1480
    CEFBS_None, // i_fence__opc_fence__opc_rw_fence__opc_ow_fence__ = 1481
    CEFBS_None, // i_fence__opc_fence__opc_rw_fence__opc_r_fence__ = 1482
    CEFBS_None, // i_fence__opc_fence__opc_rw_fence__opc_rw_fence__ = 1483
    CEFBS_None, // i_fence__opc_fence__opc_rw_fence__opc_w_fence__ = 1484
    CEFBS_None, // i_fence__opc_fence__opc_w_fence__opc_hint_fence__ = 1485
    CEFBS_None, // i_fence__opc_fence__opc_w_fence__opc_i_fence__ = 1486
    CEFBS_None, // i_fence__opc_fence__opc_w_fence__opc_io_fence__ = 1487
    CEFBS_None, // i_fence__opc_fence__opc_w_fence__opc_ior_fence__ = 1488
    CEFBS_None, // i_fence__opc_fence__opc_w_fence__opc_iorw_fence__ = 1489
    CEFBS_None, // i_fence__opc_fence__opc_w_fence__opc_iow_fence__ = 1490
    CEFBS_None, // i_fence__opc_fence__opc_w_fence__opc_ir_fence__ = 1491
    CEFBS_None, // i_fence__opc_fence__opc_w_fence__opc_irw_fence__ = 1492
    CEFBS_None, // i_fence__opc_fence__opc_w_fence__opc_iw_fence__ = 1493
    CEFBS_None, // i_fence__opc_fence__opc_w_fence__opc_o_fence__ = 1494
    CEFBS_None, // i_fence__opc_fence__opc_w_fence__opc_or_fence__ = 1495
    CEFBS_None, // i_fence__opc_fence__opc_w_fence__opc_orw_fence__ = 1496
    CEFBS_None, // i_fence__opc_fence__opc_w_fence__opc_ow_fence__ = 1497
    CEFBS_None, // i_fence__opc_fence__opc_w_fence__opc_r_fence__ = 1498
    CEFBS_None, // i_fence__opc_fence__opc_w_fence__opc_rw_fence__ = 1499
    CEFBS_None, // i_fence__opc_fence__opc_w_fence__opc_w_fence__ = 1500
    CEFBS_None, // i_fence_alias__opc_fence__ = 1501
    CEFBS_None, // i_fencei__opc_fencei__ = 1502
    CEFBS_None, // i_get_pc_alias__reg0__ = 1503
    CEFBS_None, // i_get_pc_alias__reg0_alias__ = 1504
    CEFBS_None, // i_get_pc_alias__regs__ = 1505
    CEFBS_None, // i_jal__opc_jal__reg0__rel_addr20__ = 1506
    CEFBS_None, // i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ = 1507
    CEFBS_None, // i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA = 1508
    CEFBS_None, // i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES = 1509
    CEFBS_None, // i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC = 1510
    CEFBS_None, // i_jal__opc_jal__reg0_alias__rel_addr20__ = 1511
    CEFBS_None, // i_jal__opc_jal__regs__rel_addr20__ = 1512
    CEFBS_None, // i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ = 1513
    CEFBS_None, // i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA = 1514
    CEFBS_None, // i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES = 1515
    CEFBS_None, // i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC = 1516
    CEFBS_None, // i_jalr__opc_jalr__reg0__reg0__simm12_lo__ = 1517
    CEFBS_None, // i_jalr__opc_jalr__reg0__reg0__simm12_pcrel_lo__ = 1518
    CEFBS_None, // i_jalr__opc_jalr__reg0__reg0__simm12_simple__ = 1519
    CEFBS_None, // i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ = 1520
    CEFBS_None, // i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_BA = 1521
    CEFBS_None, // i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ES = 1522
    CEFBS_None, // i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_MC = 1523
    CEFBS_None, // i_jalr__opc_jalr__reg0__reg0_alias__simm12_lo__ = 1524
    CEFBS_None, // i_jalr__opc_jalr__reg0__reg0_alias__simm12_pcrel_lo__ = 1525
    CEFBS_None, // i_jalr__opc_jalr__reg0__reg0_alias__simm12_simple__ = 1526
    CEFBS_None, // i_jalr__opc_jalr__reg0__regs__simm12_lo__ = 1527
    CEFBS_None, // i_jalr__opc_jalr__reg0__regs__simm12_pcrel_lo__ = 1528
    CEFBS_None, // i_jalr__opc_jalr__reg0__regs__simm12_simple__ = 1529
    CEFBS_None, // i_jalr__opc_jalr__reg0_alias__reg0__simm12_lo__ = 1530
    CEFBS_None, // i_jalr__opc_jalr__reg0_alias__reg0__simm12_pcrel_lo__ = 1531
    CEFBS_None, // i_jalr__opc_jalr__reg0_alias__reg0__simm12_simple__ = 1532
    CEFBS_None, // i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_lo__ = 1533
    CEFBS_None, // i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_pcrel_lo__ = 1534
    CEFBS_None, // i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_simple__ = 1535
    CEFBS_None, // i_jalr__opc_jalr__reg0_alias__regs__simm12_lo__ = 1536
    CEFBS_None, // i_jalr__opc_jalr__reg0_alias__regs__simm12_pcrel_lo__ = 1537
    CEFBS_None, // i_jalr__opc_jalr__reg0_alias__regs__simm12_simple__ = 1538
    CEFBS_None, // i_jalr__opc_jalr__regs__reg0__simm12_lo__ = 1539
    CEFBS_None, // i_jalr__opc_jalr__regs__reg0__simm12_pcrel_lo__ = 1540
    CEFBS_None, // i_jalr__opc_jalr__regs__reg0__simm12_simple__ = 1541
    CEFBS_None, // i_jalr__opc_jalr__regs__reg0_alias__simm12_lo__ = 1542
    CEFBS_None, // i_jalr__opc_jalr__regs__reg0_alias__simm12_pcrel_lo__ = 1543
    CEFBS_None, // i_jalr__opc_jalr__regs__reg0_alias__simm12_simple__ = 1544
    CEFBS_None, // i_jalr__opc_jalr__regs__regs__simm12_lo__ = 1545
    CEFBS_None, // i_jalr__opc_jalr__regs__regs__simm12_pcrel_lo__ = 1546
    CEFBS_None, // i_jalr__opc_jalr__regs__regs__simm12_simple__ = 1547
    CEFBS_None, // i_jalr_alias__reg0__ = 1548
    CEFBS_None, // i_jalr_alias__reg0_alias__ = 1549
    CEFBS_None, // i_jalr_alias__regs__ = 1550
    CEFBS_None, // i_jlr_alias__reg0__simm12_lo__ = 1551
    CEFBS_None, // i_jlr_alias__reg0__simm12_pcrel_lo__ = 1552
    CEFBS_None, // i_jlr_alias__reg0__simm12_simple__ = 1553
    CEFBS_None, // i_jlr_alias__reg0_alias__simm12_lo__ = 1554
    CEFBS_None, // i_jlr_alias__reg0_alias__simm12_pcrel_lo__ = 1555
    CEFBS_None, // i_jlr_alias__reg0_alias__simm12_simple__ = 1556
    CEFBS_None, // i_jlr_alias__regs__simm12_lo__ = 1557
    CEFBS_None, // i_jlr_alias__regs__simm12_pcrel_lo__ = 1558
    CEFBS_None, // i_jlr_alias__regs__simm12_simple__ = 1559
    CEFBS_None, // i_jmp_rel_alias__rel_addr20__ = 1560
    CEFBS_None, // i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ = 1561
    CEFBS_None, // i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_BA = 1562
    CEFBS_None, // i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ES = 1563
    CEFBS_None, // i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_MC = 1564
    CEFBS_None, // i_jump_reg_alias__reg0__ = 1565
    CEFBS_None, // i_jump_reg_alias__reg0_alias__ = 1566
    CEFBS_None, // i_jump_reg_alias__regs__ = 1567
    CEFBS_None, // i_jump_reg_alias__regs__TAILCALL_CLONE_ = 1568
    CEFBS_None, // i_jump_reg_alias__regs___RET_EMUL_ = 1569
    CEFBS_None, // i_la_alias__reg0__rel_addr32__ = 1570
    CEFBS_None, // i_la_alias__reg0_alias__rel_addr32__ = 1571
    CEFBS_None, // i_la_alias__regs__rel_addr32__ = 1572
    CEFBS_None, // i_li_aalias__reg0__imm32_lui_addi__ = 1573
    CEFBS_None, // i_li_aalias__reg0_alias__imm32_lui_addi__ = 1574
    CEFBS_None, // i_li_aalias__regs__imm32_lui_addi__ = 1575
    CEFBS_None, // i_lla_alias__reg0__rel_addr32__ = 1576
    CEFBS_None, // i_lla_alias__reg0_alias__rel_addr32__ = 1577
    CEFBS_None, // i_lla_alias__regs__rel_addr32__ = 1578
    CEFBS_None, // i_load__opc_loadb__reg0__simm12_lo__reg0__ = 1579
    CEFBS_None, // i_load__opc_loadb__reg0__simm12_lo__reg0_alias__ = 1580
    CEFBS_None, // i_load__opc_loadb__reg0__simm12_lo__regs__ = 1581
    CEFBS_None, // i_load__opc_loadb__reg0__simm12_pcrel_lo__reg0__ = 1582
    CEFBS_None, // i_load__opc_loadb__reg0__simm12_pcrel_lo__reg0_alias__ = 1583
    CEFBS_None, // i_load__opc_loadb__reg0__simm12_pcrel_lo__regs__ = 1584
    CEFBS_None, // i_load__opc_loadb__reg0__simm12_simple__reg0__ = 1585
    CEFBS_None, // i_load__opc_loadb__reg0__simm12_simple__reg0_alias__ = 1586
    CEFBS_None, // i_load__opc_loadb__reg0__simm12_simple__regs__ = 1587
    CEFBS_None, // i_load__opc_loadb__reg0_alias__simm12_lo__reg0__ = 1588
    CEFBS_None, // i_load__opc_loadb__reg0_alias__simm12_lo__reg0_alias__ = 1589
    CEFBS_None, // i_load__opc_loadb__reg0_alias__simm12_lo__regs__ = 1590
    CEFBS_None, // i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__reg0__ = 1591
    CEFBS_None, // i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__reg0_alias__ = 1592
    CEFBS_None, // i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__regs__ = 1593
    CEFBS_None, // i_load__opc_loadb__reg0_alias__simm12_simple__reg0__ = 1594
    CEFBS_None, // i_load__opc_loadb__reg0_alias__simm12_simple__reg0_alias__ = 1595
    CEFBS_None, // i_load__opc_loadb__reg0_alias__simm12_simple__regs__ = 1596
    CEFBS_None, // i_load__opc_loadb__regs__simm12_lo__reg0__ = 1597
    CEFBS_None, // i_load__opc_loadb__regs__simm12_lo__reg0_alias__ = 1598
    CEFBS_None, // i_load__opc_loadb__regs__simm12_lo__regs__ = 1599
    CEFBS_None, // i_load__opc_loadb__regs__simm12_pcrel_lo__reg0__ = 1600
    CEFBS_None, // i_load__opc_loadb__regs__simm12_pcrel_lo__reg0_alias__ = 1601
    CEFBS_None, // i_load__opc_loadb__regs__simm12_pcrel_lo__regs__ = 1602
    CEFBS_None, // i_load__opc_loadb__regs__simm12_simple__reg0__ = 1603
    CEFBS_None, // i_load__opc_loadb__regs__simm12_simple__reg0_alias__ = 1604
    CEFBS_None, // i_load__opc_loadb__regs__simm12_simple__regs__ = 1605
    CEFBS_None, // i_load__opc_loadbu__reg0__simm12_lo__reg0__ = 1606
    CEFBS_None, // i_load__opc_loadbu__reg0__simm12_lo__reg0_alias__ = 1607
    CEFBS_None, // i_load__opc_loadbu__reg0__simm12_lo__regs__ = 1608
    CEFBS_None, // i_load__opc_loadbu__reg0__simm12_pcrel_lo__reg0__ = 1609
    CEFBS_None, // i_load__opc_loadbu__reg0__simm12_pcrel_lo__reg0_alias__ = 1610
    CEFBS_None, // i_load__opc_loadbu__reg0__simm12_pcrel_lo__regs__ = 1611
    CEFBS_None, // i_load__opc_loadbu__reg0__simm12_simple__reg0__ = 1612
    CEFBS_None, // i_load__opc_loadbu__reg0__simm12_simple__reg0_alias__ = 1613
    CEFBS_None, // i_load__opc_loadbu__reg0__simm12_simple__regs__ = 1614
    CEFBS_None, // i_load__opc_loadbu__reg0_alias__simm12_lo__reg0__ = 1615
    CEFBS_None, // i_load__opc_loadbu__reg0_alias__simm12_lo__reg0_alias__ = 1616
    CEFBS_None, // i_load__opc_loadbu__reg0_alias__simm12_lo__regs__ = 1617
    CEFBS_None, // i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__reg0__ = 1618
    CEFBS_None, // i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__reg0_alias__ = 1619
    CEFBS_None, // i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__regs__ = 1620
    CEFBS_None, // i_load__opc_loadbu__reg0_alias__simm12_simple__reg0__ = 1621
    CEFBS_None, // i_load__opc_loadbu__reg0_alias__simm12_simple__reg0_alias__ = 1622
    CEFBS_None, // i_load__opc_loadbu__reg0_alias__simm12_simple__regs__ = 1623
    CEFBS_None, // i_load__opc_loadbu__regs__simm12_lo__reg0__ = 1624
    CEFBS_None, // i_load__opc_loadbu__regs__simm12_lo__reg0_alias__ = 1625
    CEFBS_None, // i_load__opc_loadbu__regs__simm12_lo__regs__ = 1626
    CEFBS_None, // i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0__ = 1627
    CEFBS_None, // i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0_alias__ = 1628
    CEFBS_None, // i_load__opc_loadbu__regs__simm12_pcrel_lo__regs__ = 1629
    CEFBS_None, // i_load__opc_loadbu__regs__simm12_simple__reg0__ = 1630
    CEFBS_None, // i_load__opc_loadbu__regs__simm12_simple__reg0_alias__ = 1631
    CEFBS_None, // i_load__opc_loadbu__regs__simm12_simple__regs__ = 1632
    CEFBS_None, // i_load__opc_loadh__reg0__simm12_lo__reg0__ = 1633
    CEFBS_None, // i_load__opc_loadh__reg0__simm12_lo__reg0_alias__ = 1634
    CEFBS_None, // i_load__opc_loadh__reg0__simm12_lo__regs__ = 1635
    CEFBS_None, // i_load__opc_loadh__reg0__simm12_pcrel_lo__reg0__ = 1636
    CEFBS_None, // i_load__opc_loadh__reg0__simm12_pcrel_lo__reg0_alias__ = 1637
    CEFBS_None, // i_load__opc_loadh__reg0__simm12_pcrel_lo__regs__ = 1638
    CEFBS_None, // i_load__opc_loadh__reg0__simm12_simple__reg0__ = 1639
    CEFBS_None, // i_load__opc_loadh__reg0__simm12_simple__reg0_alias__ = 1640
    CEFBS_None, // i_load__opc_loadh__reg0__simm12_simple__regs__ = 1641
    CEFBS_None, // i_load__opc_loadh__reg0_alias__simm12_lo__reg0__ = 1642
    CEFBS_None, // i_load__opc_loadh__reg0_alias__simm12_lo__reg0_alias__ = 1643
    CEFBS_None, // i_load__opc_loadh__reg0_alias__simm12_lo__regs__ = 1644
    CEFBS_None, // i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__reg0__ = 1645
    CEFBS_None, // i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__reg0_alias__ = 1646
    CEFBS_None, // i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__regs__ = 1647
    CEFBS_None, // i_load__opc_loadh__reg0_alias__simm12_simple__reg0__ = 1648
    CEFBS_None, // i_load__opc_loadh__reg0_alias__simm12_simple__reg0_alias__ = 1649
    CEFBS_None, // i_load__opc_loadh__reg0_alias__simm12_simple__regs__ = 1650
    CEFBS_None, // i_load__opc_loadh__regs__simm12_lo__reg0__ = 1651
    CEFBS_None, // i_load__opc_loadh__regs__simm12_lo__reg0_alias__ = 1652
    CEFBS_None, // i_load__opc_loadh__regs__simm12_lo__regs__ = 1653
    CEFBS_None, // i_load__opc_loadh__regs__simm12_pcrel_lo__reg0__ = 1654
    CEFBS_None, // i_load__opc_loadh__regs__simm12_pcrel_lo__reg0_alias__ = 1655
    CEFBS_None, // i_load__opc_loadh__regs__simm12_pcrel_lo__regs__ = 1656
    CEFBS_None, // i_load__opc_loadh__regs__simm12_simple__reg0__ = 1657
    CEFBS_None, // i_load__opc_loadh__regs__simm12_simple__reg0_alias__ = 1658
    CEFBS_None, // i_load__opc_loadh__regs__simm12_simple__regs__ = 1659
    CEFBS_None, // i_load__opc_loadhu__reg0__simm12_lo__reg0__ = 1660
    CEFBS_None, // i_load__opc_loadhu__reg0__simm12_lo__reg0_alias__ = 1661
    CEFBS_None, // i_load__opc_loadhu__reg0__simm12_lo__regs__ = 1662
    CEFBS_None, // i_load__opc_loadhu__reg0__simm12_pcrel_lo__reg0__ = 1663
    CEFBS_None, // i_load__opc_loadhu__reg0__simm12_pcrel_lo__reg0_alias__ = 1664
    CEFBS_None, // i_load__opc_loadhu__reg0__simm12_pcrel_lo__regs__ = 1665
    CEFBS_None, // i_load__opc_loadhu__reg0__simm12_simple__reg0__ = 1666
    CEFBS_None, // i_load__opc_loadhu__reg0__simm12_simple__reg0_alias__ = 1667
    CEFBS_None, // i_load__opc_loadhu__reg0__simm12_simple__regs__ = 1668
    CEFBS_None, // i_load__opc_loadhu__reg0_alias__simm12_lo__reg0__ = 1669
    CEFBS_None, // i_load__opc_loadhu__reg0_alias__simm12_lo__reg0_alias__ = 1670
    CEFBS_None, // i_load__opc_loadhu__reg0_alias__simm12_lo__regs__ = 1671
    CEFBS_None, // i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__reg0__ = 1672
    CEFBS_None, // i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__reg0_alias__ = 1673
    CEFBS_None, // i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__regs__ = 1674
    CEFBS_None, // i_load__opc_loadhu__reg0_alias__simm12_simple__reg0__ = 1675
    CEFBS_None, // i_load__opc_loadhu__reg0_alias__simm12_simple__reg0_alias__ = 1676
    CEFBS_None, // i_load__opc_loadhu__reg0_alias__simm12_simple__regs__ = 1677
    CEFBS_None, // i_load__opc_loadhu__regs__simm12_lo__reg0__ = 1678
    CEFBS_None, // i_load__opc_loadhu__regs__simm12_lo__reg0_alias__ = 1679
    CEFBS_None, // i_load__opc_loadhu__regs__simm12_lo__regs__ = 1680
    CEFBS_None, // i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0__ = 1681
    CEFBS_None, // i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0_alias__ = 1682
    CEFBS_None, // i_load__opc_loadhu__regs__simm12_pcrel_lo__regs__ = 1683
    CEFBS_None, // i_load__opc_loadhu__regs__simm12_simple__reg0__ = 1684
    CEFBS_None, // i_load__opc_loadhu__regs__simm12_simple__reg0_alias__ = 1685
    CEFBS_None, // i_load__opc_loadhu__regs__simm12_simple__regs__ = 1686
    CEFBS_None, // i_load__opc_loadw__reg0__simm12_lo__reg0__ = 1687
    CEFBS_None, // i_load__opc_loadw__reg0__simm12_lo__reg0_alias__ = 1688
    CEFBS_None, // i_load__opc_loadw__reg0__simm12_lo__regs__ = 1689
    CEFBS_None, // i_load__opc_loadw__reg0__simm12_pcrel_lo__reg0__ = 1690
    CEFBS_None, // i_load__opc_loadw__reg0__simm12_pcrel_lo__reg0_alias__ = 1691
    CEFBS_None, // i_load__opc_loadw__reg0__simm12_pcrel_lo__regs__ = 1692
    CEFBS_None, // i_load__opc_loadw__reg0__simm12_simple__reg0__ = 1693
    CEFBS_None, // i_load__opc_loadw__reg0__simm12_simple__reg0_alias__ = 1694
    CEFBS_None, // i_load__opc_loadw__reg0__simm12_simple__regs__ = 1695
    CEFBS_None, // i_load__opc_loadw__reg0_alias__simm12_lo__reg0__ = 1696
    CEFBS_None, // i_load__opc_loadw__reg0_alias__simm12_lo__reg0_alias__ = 1697
    CEFBS_None, // i_load__opc_loadw__reg0_alias__simm12_lo__regs__ = 1698
    CEFBS_None, // i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__reg0__ = 1699
    CEFBS_None, // i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__reg0_alias__ = 1700
    CEFBS_None, // i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__regs__ = 1701
    CEFBS_None, // i_load__opc_loadw__reg0_alias__simm12_simple__reg0__ = 1702
    CEFBS_None, // i_load__opc_loadw__reg0_alias__simm12_simple__reg0_alias__ = 1703
    CEFBS_None, // i_load__opc_loadw__reg0_alias__simm12_simple__regs__ = 1704
    CEFBS_None, // i_load__opc_loadw__regs__simm12_lo__reg0__ = 1705
    CEFBS_None, // i_load__opc_loadw__regs__simm12_lo__reg0_alias__ = 1706
    CEFBS_None, // i_load__opc_loadw__regs__simm12_lo__regs__ = 1707
    CEFBS_None, // i_load__opc_loadw__regs__simm12_pcrel_lo__reg0__ = 1708
    CEFBS_None, // i_load__opc_loadw__regs__simm12_pcrel_lo__reg0_alias__ = 1709
    CEFBS_None, // i_load__opc_loadw__regs__simm12_pcrel_lo__regs__ = 1710
    CEFBS_None, // i_load__opc_loadw__regs__simm12_simple__reg0__ = 1711
    CEFBS_None, // i_load__opc_loadw__regs__simm12_simple__reg0_alias__ = 1712
    CEFBS_None, // i_load__opc_loadw__regs__simm12_simple__regs__ = 1713
    CEFBS_None, // i_load_alias__opc_loadb__reg0__reg0__ = 1714
    CEFBS_None, // i_load_alias__opc_loadb__reg0__reg0_alias__ = 1715
    CEFBS_None, // i_load_alias__opc_loadb__reg0__regs__ = 1716
    CEFBS_None, // i_load_alias__opc_loadb__reg0_alias__reg0__ = 1717
    CEFBS_None, // i_load_alias__opc_loadb__reg0_alias__reg0_alias__ = 1718
    CEFBS_None, // i_load_alias__opc_loadb__reg0_alias__regs__ = 1719
    CEFBS_None, // i_load_alias__opc_loadb__regs__reg0__ = 1720
    CEFBS_None, // i_load_alias__opc_loadb__regs__reg0_alias__ = 1721
    CEFBS_None, // i_load_alias__opc_loadb__regs__regs__ = 1722
    CEFBS_None, // i_load_alias__opc_loadbu__reg0__reg0__ = 1723
    CEFBS_None, // i_load_alias__opc_loadbu__reg0__reg0_alias__ = 1724
    CEFBS_None, // i_load_alias__opc_loadbu__reg0__regs__ = 1725
    CEFBS_None, // i_load_alias__opc_loadbu__reg0_alias__reg0__ = 1726
    CEFBS_None, // i_load_alias__opc_loadbu__reg0_alias__reg0_alias__ = 1727
    CEFBS_None, // i_load_alias__opc_loadbu__reg0_alias__regs__ = 1728
    CEFBS_None, // i_load_alias__opc_loadbu__regs__reg0__ = 1729
    CEFBS_None, // i_load_alias__opc_loadbu__regs__reg0_alias__ = 1730
    CEFBS_None, // i_load_alias__opc_loadbu__regs__regs__ = 1731
    CEFBS_None, // i_load_alias__opc_loadh__reg0__reg0__ = 1732
    CEFBS_None, // i_load_alias__opc_loadh__reg0__reg0_alias__ = 1733
    CEFBS_None, // i_load_alias__opc_loadh__reg0__regs__ = 1734
    CEFBS_None, // i_load_alias__opc_loadh__reg0_alias__reg0__ = 1735
    CEFBS_None, // i_load_alias__opc_loadh__reg0_alias__reg0_alias__ = 1736
    CEFBS_None, // i_load_alias__opc_loadh__reg0_alias__regs__ = 1737
    CEFBS_None, // i_load_alias__opc_loadh__regs__reg0__ = 1738
    CEFBS_None, // i_load_alias__opc_loadh__regs__reg0_alias__ = 1739
    CEFBS_None, // i_load_alias__opc_loadh__regs__regs__ = 1740
    CEFBS_None, // i_load_alias__opc_loadhu__reg0__reg0__ = 1741
    CEFBS_None, // i_load_alias__opc_loadhu__reg0__reg0_alias__ = 1742
    CEFBS_None, // i_load_alias__opc_loadhu__reg0__regs__ = 1743
    CEFBS_None, // i_load_alias__opc_loadhu__reg0_alias__reg0__ = 1744
    CEFBS_None, // i_load_alias__opc_loadhu__reg0_alias__reg0_alias__ = 1745
    CEFBS_None, // i_load_alias__opc_loadhu__reg0_alias__regs__ = 1746
    CEFBS_None, // i_load_alias__opc_loadhu__regs__reg0__ = 1747
    CEFBS_None, // i_load_alias__opc_loadhu__regs__reg0_alias__ = 1748
    CEFBS_None, // i_load_alias__opc_loadhu__regs__regs__ = 1749
    CEFBS_None, // i_load_alias__opc_loadw__reg0__reg0__ = 1750
    CEFBS_None, // i_load_alias__opc_loadw__reg0__reg0_alias__ = 1751
    CEFBS_None, // i_load_alias__opc_loadw__reg0__regs__ = 1752
    CEFBS_None, // i_load_alias__opc_loadw__reg0_alias__reg0__ = 1753
    CEFBS_None, // i_load_alias__opc_loadw__reg0_alias__reg0_alias__ = 1754
    CEFBS_None, // i_load_alias__opc_loadw__reg0_alias__regs__ = 1755
    CEFBS_None, // i_load_alias__opc_loadw__regs__reg0__ = 1756
    CEFBS_None, // i_load_alias__opc_loadw__regs__reg0_alias__ = 1757
    CEFBS_None, // i_load_alias__opc_loadw__regs__regs__ = 1758
    CEFBS_None, // i_load_global_alias__opc_loadb__reg0__rel_addr32__ = 1759
    CEFBS_None, // i_load_global_alias__opc_loadb__reg0_alias__rel_addr32__ = 1760
    CEFBS_None, // i_load_global_alias__opc_loadb__regs__rel_addr32__ = 1761
    CEFBS_None, // i_load_global_alias__opc_loadbu__reg0__rel_addr32__ = 1762
    CEFBS_None, // i_load_global_alias__opc_loadbu__reg0_alias__rel_addr32__ = 1763
    CEFBS_None, // i_load_global_alias__opc_loadbu__regs__rel_addr32__ = 1764
    CEFBS_None, // i_load_global_alias__opc_loadh__reg0__rel_addr32__ = 1765
    CEFBS_None, // i_load_global_alias__opc_loadh__reg0_alias__rel_addr32__ = 1766
    CEFBS_None, // i_load_global_alias__opc_loadh__regs__rel_addr32__ = 1767
    CEFBS_None, // i_load_global_alias__opc_loadhu__reg0__rel_addr32__ = 1768
    CEFBS_None, // i_load_global_alias__opc_loadhu__reg0_alias__rel_addr32__ = 1769
    CEFBS_None, // i_load_global_alias__opc_loadhu__regs__rel_addr32__ = 1770
    CEFBS_None, // i_load_global_alias__opc_loadw__reg0__rel_addr32__ = 1771
    CEFBS_None, // i_load_global_alias__opc_loadw__reg0_alias__rel_addr32__ = 1772
    CEFBS_None, // i_load_global_alias__opc_loadw__regs__rel_addr32__ = 1773
    CEFBS_None, // i_lui__opc_lui__reg0__imm20_s12__ = 1774
    CEFBS_None, // i_lui__opc_lui__reg0_alias__imm20_s12__ = 1775
    CEFBS_None, // i_lui__opc_lui__regs__imm20_s12__ = 1776
    CEFBS_None, // i_lui_hi__opc_lui__reg0__imm20_hi__ = 1777
    CEFBS_None, // i_lui_hi__opc_lui__reg0_alias__imm20_hi__ = 1778
    CEFBS_None, // i_lui_hi__opc_lui__regs__imm20_hi__ = 1779
    CEFBS_None, // i_move_alias__reg0__reg0__ = 1780
    CEFBS_None, // i_move_alias__reg0__reg0_alias__ = 1781
    CEFBS_None, // i_move_alias__reg0__regs__ = 1782
    CEFBS_None, // i_move_alias__reg0_alias__reg0__ = 1783
    CEFBS_None, // i_move_alias__reg0_alias__reg0_alias__ = 1784
    CEFBS_None, // i_move_alias__reg0_alias__regs__ = 1785
    CEFBS_None, // i_move_alias__regs__reg0__ = 1786
    CEFBS_None, // i_move_alias__regs__reg0_alias__ = 1787
    CEFBS_None, // i_move_alias__regs__regs__ = 1788
    CEFBS_None, // i_mv_alias__reg0__reg0__ = 1789
    CEFBS_None, // i_mv_alias__reg0__reg0_alias__ = 1790
    CEFBS_None, // i_mv_alias__reg0__regs__ = 1791
    CEFBS_None, // i_mv_alias__reg0_alias__reg0__ = 1792
    CEFBS_None, // i_mv_alias__reg0_alias__reg0_alias__ = 1793
    CEFBS_None, // i_mv_alias__reg0_alias__regs__ = 1794
    CEFBS_None, // i_mv_alias__regs__reg0__ = 1795
    CEFBS_None, // i_mv_alias__regs__reg0_alias__ = 1796
    CEFBS_None, // i_mv_alias__regs__regs__ = 1797
    CEFBS_None, // i_neg_alias__reg0__reg0__ = 1798
    CEFBS_None, // i_neg_alias__reg0__reg0_alias__ = 1799
    CEFBS_None, // i_neg_alias__reg0__regs__ = 1800
    CEFBS_None, // i_neg_alias__reg0_alias__reg0__ = 1801
    CEFBS_None, // i_neg_alias__reg0_alias__reg0_alias__ = 1802
    CEFBS_None, // i_neg_alias__reg0_alias__regs__ = 1803
    CEFBS_None, // i_neg_alias__regs__reg0__ = 1804
    CEFBS_None, // i_neg_alias__regs__reg0_alias__ = 1805
    CEFBS_None, // i_neg_alias__regs__regs__ = 1806
    CEFBS_None, // i_nop_alias__ = 1807
    CEFBS_None, // i_not_alias__reg0__reg0__ = 1808
    CEFBS_None, // i_not_alias__reg0__reg0_alias__ = 1809
    CEFBS_None, // i_not_alias__reg0__regs__ = 1810
    CEFBS_None, // i_not_alias__reg0_alias__reg0__ = 1811
    CEFBS_None, // i_not_alias__reg0_alias__reg0_alias__ = 1812
    CEFBS_None, // i_not_alias__reg0_alias__regs__ = 1813
    CEFBS_None, // i_not_alias__regs__reg0__ = 1814
    CEFBS_None, // i_not_alias__regs__reg0_alias__ = 1815
    CEFBS_None, // i_not_alias__regs__regs__ = 1816
    CEFBS_None, // i_ori_alias__reg0__reg0__simm12_lo__ = 1817
    CEFBS_None, // i_ori_alias__reg0__reg0__simm12_pcrel_lo__ = 1818
    CEFBS_None, // i_ori_alias__reg0__reg0__simm12_simple__ = 1819
    CEFBS_None, // i_ori_alias__reg0__reg0_alias__simm12_lo__ = 1820
    CEFBS_None, // i_ori_alias__reg0__reg0_alias__simm12_pcrel_lo__ = 1821
    CEFBS_None, // i_ori_alias__reg0__reg0_alias__simm12_simple__ = 1822
    CEFBS_None, // i_ori_alias__reg0__regs__simm12_lo__ = 1823
    CEFBS_None, // i_ori_alias__reg0__regs__simm12_pcrel_lo__ = 1824
    CEFBS_None, // i_ori_alias__reg0__regs__simm12_simple__ = 1825
    CEFBS_None, // i_ori_alias__reg0_alias__reg0__simm12_lo__ = 1826
    CEFBS_None, // i_ori_alias__reg0_alias__reg0__simm12_pcrel_lo__ = 1827
    CEFBS_None, // i_ori_alias__reg0_alias__reg0__simm12_simple__ = 1828
    CEFBS_None, // i_ori_alias__reg0_alias__reg0_alias__simm12_lo__ = 1829
    CEFBS_None, // i_ori_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__ = 1830
    CEFBS_None, // i_ori_alias__reg0_alias__reg0_alias__simm12_simple__ = 1831
    CEFBS_None, // i_ori_alias__reg0_alias__regs__simm12_lo__ = 1832
    CEFBS_None, // i_ori_alias__reg0_alias__regs__simm12_pcrel_lo__ = 1833
    CEFBS_None, // i_ori_alias__reg0_alias__regs__simm12_simple__ = 1834
    CEFBS_None, // i_ori_alias__regs__reg0__simm12_lo__ = 1835
    CEFBS_None, // i_ori_alias__regs__reg0__simm12_pcrel_lo__ = 1836
    CEFBS_None, // i_ori_alias__regs__reg0__simm12_simple__ = 1837
    CEFBS_None, // i_ori_alias__regs__reg0_alias__simm12_lo__ = 1838
    CEFBS_None, // i_ori_alias__regs__reg0_alias__simm12_pcrel_lo__ = 1839
    CEFBS_None, // i_ori_alias__regs__reg0_alias__simm12_simple__ = 1840
    CEFBS_None, // i_ori_alias__regs__regs__simm12_lo__ = 1841
    CEFBS_None, // i_ori_alias__regs__regs__simm12_pcrel_lo__ = 1842
    CEFBS_None, // i_ori_alias__regs__regs__simm12_simple__ = 1843
    CEFBS_None, // i_ret_alias__ = 1844
    CEFBS_None, // i_seqz_alias__reg0__reg0__ = 1845
    CEFBS_None, // i_seqz_alias__reg0__reg0_alias__ = 1846
    CEFBS_None, // i_seqz_alias__reg0__regs__ = 1847
    CEFBS_None, // i_seqz_alias__reg0_alias__reg0__ = 1848
    CEFBS_None, // i_seqz_alias__reg0_alias__reg0_alias__ = 1849
    CEFBS_None, // i_seqz_alias__reg0_alias__regs__ = 1850
    CEFBS_None, // i_seqz_alias__regs__reg0__ = 1851
    CEFBS_None, // i_seqz_alias__regs__reg0_alias__ = 1852
    CEFBS_None, // i_seqz_alias__regs__regs__ = 1853
    CEFBS_None, // i_sgtz_alias__reg0__reg0__ = 1854
    CEFBS_None, // i_sgtz_alias__reg0__reg0_alias__ = 1855
    CEFBS_None, // i_sgtz_alias__reg0__regs__ = 1856
    CEFBS_None, // i_sgtz_alias__reg0_alias__reg0__ = 1857
    CEFBS_None, // i_sgtz_alias__reg0_alias__reg0_alias__ = 1858
    CEFBS_None, // i_sgtz_alias__reg0_alias__regs__ = 1859
    CEFBS_None, // i_sgtz_alias__regs__reg0__ = 1860
    CEFBS_None, // i_sgtz_alias__regs__reg0_alias__ = 1861
    CEFBS_None, // i_sgtz_alias__regs__regs__ = 1862
    CEFBS_None, // i_sltz_alias__reg0__reg0__ = 1863
    CEFBS_None, // i_sltz_alias__reg0__reg0_alias__ = 1864
    CEFBS_None, // i_sltz_alias__reg0__regs__ = 1865
    CEFBS_None, // i_sltz_alias__reg0_alias__reg0__ = 1866
    CEFBS_None, // i_sltz_alias__reg0_alias__reg0_alias__ = 1867
    CEFBS_None, // i_sltz_alias__reg0_alias__regs__ = 1868
    CEFBS_None, // i_sltz_alias__regs__reg0__ = 1869
    CEFBS_None, // i_sltz_alias__regs__reg0_alias__ = 1870
    CEFBS_None, // i_sltz_alias__regs__regs__ = 1871
    CEFBS_None, // i_snez_alias__reg0__reg0__ = 1872
    CEFBS_None, // i_snez_alias__reg0__reg0_alias__ = 1873
    CEFBS_None, // i_snez_alias__reg0__regs__ = 1874
    CEFBS_None, // i_snez_alias__reg0_alias__reg0__ = 1875
    CEFBS_None, // i_snez_alias__reg0_alias__reg0_alias__ = 1876
    CEFBS_None, // i_snez_alias__reg0_alias__regs__ = 1877
    CEFBS_None, // i_snez_alias__regs__reg0__ = 1878
    CEFBS_None, // i_snez_alias__regs__reg0_alias__ = 1879
    CEFBS_None, // i_snez_alias__regs__regs__ = 1880
    CEFBS_None, // i_store__opc_storeb__reg0__simm12_s_lo__reg0__ = 1881
    CEFBS_None, // i_store__opc_storeb__reg0__simm12_s_lo__reg0_alias__ = 1882
    CEFBS_None, // i_store__opc_storeb__reg0__simm12_s_lo__regs__ = 1883
    CEFBS_None, // i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0__ = 1884
    CEFBS_None, // i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0_alias__ = 1885
    CEFBS_None, // i_store__opc_storeb__reg0__simm12_s_pcrel_lo__regs__ = 1886
    CEFBS_None, // i_store__opc_storeb__reg0__simm12_simple__reg0__ = 1887
    CEFBS_None, // i_store__opc_storeb__reg0__simm12_simple__reg0_alias__ = 1888
    CEFBS_None, // i_store__opc_storeb__reg0__simm12_simple__regs__ = 1889
    CEFBS_None, // i_store__opc_storeb__reg0_alias__simm12_s_lo__reg0__ = 1890
    CEFBS_None, // i_store__opc_storeb__reg0_alias__simm12_s_lo__reg0_alias__ = 1891
    CEFBS_None, // i_store__opc_storeb__reg0_alias__simm12_s_lo__regs__ = 1892
    CEFBS_None, // i_store__opc_storeb__reg0_alias__simm12_s_pcrel_lo__reg0__ = 1893
    CEFBS_None, // i_store__opc_storeb__reg0_alias__simm12_s_pcrel_lo__reg0_alias__ = 1894
    CEFBS_None, // i_store__opc_storeb__reg0_alias__simm12_s_pcrel_lo__regs__ = 1895
    CEFBS_None, // i_store__opc_storeb__reg0_alias__simm12_simple__reg0__ = 1896
    CEFBS_None, // i_store__opc_storeb__reg0_alias__simm12_simple__reg0_alias__ = 1897
    CEFBS_None, // i_store__opc_storeb__reg0_alias__simm12_simple__regs__ = 1898
    CEFBS_None, // i_store__opc_storeb__regs__simm12_s_lo__reg0__ = 1899
    CEFBS_None, // i_store__opc_storeb__regs__simm12_s_lo__reg0_alias__ = 1900
    CEFBS_None, // i_store__opc_storeb__regs__simm12_s_lo__regs__ = 1901
    CEFBS_None, // i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0__ = 1902
    CEFBS_None, // i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0_alias__ = 1903
    CEFBS_None, // i_store__opc_storeb__regs__simm12_s_pcrel_lo__regs__ = 1904
    CEFBS_None, // i_store__opc_storeb__regs__simm12_simple__reg0__ = 1905
    CEFBS_None, // i_store__opc_storeb__regs__simm12_simple__reg0_alias__ = 1906
    CEFBS_None, // i_store__opc_storeb__regs__simm12_simple__regs__ = 1907
    CEFBS_None, // i_store__opc_storeh__reg0__simm12_s_lo__reg0__ = 1908
    CEFBS_None, // i_store__opc_storeh__reg0__simm12_s_lo__reg0_alias__ = 1909
    CEFBS_None, // i_store__opc_storeh__reg0__simm12_s_lo__regs__ = 1910
    CEFBS_None, // i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0__ = 1911
    CEFBS_None, // i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0_alias__ = 1912
    CEFBS_None, // i_store__opc_storeh__reg0__simm12_s_pcrel_lo__regs__ = 1913
    CEFBS_None, // i_store__opc_storeh__reg0__simm12_simple__reg0__ = 1914
    CEFBS_None, // i_store__opc_storeh__reg0__simm12_simple__reg0_alias__ = 1915
    CEFBS_None, // i_store__opc_storeh__reg0__simm12_simple__regs__ = 1916
    CEFBS_None, // i_store__opc_storeh__reg0_alias__simm12_s_lo__reg0__ = 1917
    CEFBS_None, // i_store__opc_storeh__reg0_alias__simm12_s_lo__reg0_alias__ = 1918
    CEFBS_None, // i_store__opc_storeh__reg0_alias__simm12_s_lo__regs__ = 1919
    CEFBS_None, // i_store__opc_storeh__reg0_alias__simm12_s_pcrel_lo__reg0__ = 1920
    CEFBS_None, // i_store__opc_storeh__reg0_alias__simm12_s_pcrel_lo__reg0_alias__ = 1921
    CEFBS_None, // i_store__opc_storeh__reg0_alias__simm12_s_pcrel_lo__regs__ = 1922
    CEFBS_None, // i_store__opc_storeh__reg0_alias__simm12_simple__reg0__ = 1923
    CEFBS_None, // i_store__opc_storeh__reg0_alias__simm12_simple__reg0_alias__ = 1924
    CEFBS_None, // i_store__opc_storeh__reg0_alias__simm12_simple__regs__ = 1925
    CEFBS_None, // i_store__opc_storeh__regs__simm12_s_lo__reg0__ = 1926
    CEFBS_None, // i_store__opc_storeh__regs__simm12_s_lo__reg0_alias__ = 1927
    CEFBS_None, // i_store__opc_storeh__regs__simm12_s_lo__regs__ = 1928
    CEFBS_None, // i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0__ = 1929
    CEFBS_None, // i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0_alias__ = 1930
    CEFBS_None, // i_store__opc_storeh__regs__simm12_s_pcrel_lo__regs__ = 1931
    CEFBS_None, // i_store__opc_storeh__regs__simm12_simple__reg0__ = 1932
    CEFBS_None, // i_store__opc_storeh__regs__simm12_simple__reg0_alias__ = 1933
    CEFBS_None, // i_store__opc_storeh__regs__simm12_simple__regs__ = 1934
    CEFBS_None, // i_store__opc_storew__reg0__simm12_s_lo__reg0__ = 1935
    CEFBS_None, // i_store__opc_storew__reg0__simm12_s_lo__reg0_alias__ = 1936
    CEFBS_None, // i_store__opc_storew__reg0__simm12_s_lo__regs__ = 1937
    CEFBS_None, // i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0__ = 1938
    CEFBS_None, // i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0_alias__ = 1939
    CEFBS_None, // i_store__opc_storew__reg0__simm12_s_pcrel_lo__regs__ = 1940
    CEFBS_None, // i_store__opc_storew__reg0__simm12_simple__reg0__ = 1941
    CEFBS_None, // i_store__opc_storew__reg0__simm12_simple__reg0_alias__ = 1942
    CEFBS_None, // i_store__opc_storew__reg0__simm12_simple__regs__ = 1943
    CEFBS_None, // i_store__opc_storew__reg0_alias__simm12_s_lo__reg0__ = 1944
    CEFBS_None, // i_store__opc_storew__reg0_alias__simm12_s_lo__reg0_alias__ = 1945
    CEFBS_None, // i_store__opc_storew__reg0_alias__simm12_s_lo__regs__ = 1946
    CEFBS_None, // i_store__opc_storew__reg0_alias__simm12_s_pcrel_lo__reg0__ = 1947
    CEFBS_None, // i_store__opc_storew__reg0_alias__simm12_s_pcrel_lo__reg0_alias__ = 1948
    CEFBS_None, // i_store__opc_storew__reg0_alias__simm12_s_pcrel_lo__regs__ = 1949
    CEFBS_None, // i_store__opc_storew__reg0_alias__simm12_simple__reg0__ = 1950
    CEFBS_None, // i_store__opc_storew__reg0_alias__simm12_simple__reg0_alias__ = 1951
    CEFBS_None, // i_store__opc_storew__reg0_alias__simm12_simple__regs__ = 1952
    CEFBS_None, // i_store__opc_storew__regs__simm12_s_lo__reg0__ = 1953
    CEFBS_None, // i_store__opc_storew__regs__simm12_s_lo__reg0_alias__ = 1954
    CEFBS_None, // i_store__opc_storew__regs__simm12_s_lo__regs__ = 1955
    CEFBS_None, // i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0__ = 1956
    CEFBS_None, // i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0_alias__ = 1957
    CEFBS_None, // i_store__opc_storew__regs__simm12_s_pcrel_lo__regs__ = 1958
    CEFBS_None, // i_store__opc_storew__regs__simm12_simple__reg0__ = 1959
    CEFBS_None, // i_store__opc_storew__regs__simm12_simple__reg0_alias__ = 1960
    CEFBS_None, // i_store__opc_storew__regs__simm12_simple__regs__ = 1961
    CEFBS_None, // i_store_alias__opc_storeb__reg0__reg0__ = 1962
    CEFBS_None, // i_store_alias__opc_storeb__reg0__reg0_alias__ = 1963
    CEFBS_None, // i_store_alias__opc_storeb__reg0__regs__ = 1964
    CEFBS_None, // i_store_alias__opc_storeb__reg0_alias__reg0__ = 1965
    CEFBS_None, // i_store_alias__opc_storeb__reg0_alias__reg0_alias__ = 1966
    CEFBS_None, // i_store_alias__opc_storeb__reg0_alias__regs__ = 1967
    CEFBS_None, // i_store_alias__opc_storeb__regs__reg0__ = 1968
    CEFBS_None, // i_store_alias__opc_storeb__regs__reg0_alias__ = 1969
    CEFBS_None, // i_store_alias__opc_storeb__regs__regs__ = 1970
    CEFBS_None, // i_store_alias__opc_storeh__reg0__reg0__ = 1971
    CEFBS_None, // i_store_alias__opc_storeh__reg0__reg0_alias__ = 1972
    CEFBS_None, // i_store_alias__opc_storeh__reg0__regs__ = 1973
    CEFBS_None, // i_store_alias__opc_storeh__reg0_alias__reg0__ = 1974
    CEFBS_None, // i_store_alias__opc_storeh__reg0_alias__reg0_alias__ = 1975
    CEFBS_None, // i_store_alias__opc_storeh__reg0_alias__regs__ = 1976
    CEFBS_None, // i_store_alias__opc_storeh__regs__reg0__ = 1977
    CEFBS_None, // i_store_alias__opc_storeh__regs__reg0_alias__ = 1978
    CEFBS_None, // i_store_alias__opc_storeh__regs__regs__ = 1979
    CEFBS_None, // i_store_alias__opc_storew__reg0__reg0__ = 1980
    CEFBS_None, // i_store_alias__opc_storew__reg0__reg0_alias__ = 1981
    CEFBS_None, // i_store_alias__opc_storew__reg0__regs__ = 1982
    CEFBS_None, // i_store_alias__opc_storew__reg0_alias__reg0__ = 1983
    CEFBS_None, // i_store_alias__opc_storew__reg0_alias__reg0_alias__ = 1984
    CEFBS_None, // i_store_alias__opc_storew__reg0_alias__regs__ = 1985
    CEFBS_None, // i_store_alias__opc_storew__regs__reg0__ = 1986
    CEFBS_None, // i_store_alias__opc_storew__regs__reg0_alias__ = 1987
    CEFBS_None, // i_store_alias__opc_storew__regs__regs__ = 1988
    CEFBS_None, // i_store_global_alias__opc_storeb__reg0__rel_addr32__reg0__ = 1989
    CEFBS_None, // i_store_global_alias__opc_storeb__reg0__rel_addr32__reg0_alias__ = 1990
    CEFBS_None, // i_store_global_alias__opc_storeb__reg0__rel_addr32__regs__ = 1991
    CEFBS_None, // i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__reg0__ = 1992
    CEFBS_None, // i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__reg0_alias__ = 1993
    CEFBS_None, // i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__regs__ = 1994
    CEFBS_None, // i_store_global_alias__opc_storeb__regs__rel_addr32__reg0__ = 1995
    CEFBS_None, // i_store_global_alias__opc_storeb__regs__rel_addr32__reg0_alias__ = 1996
    CEFBS_None, // i_store_global_alias__opc_storeb__regs__rel_addr32__regs__ = 1997
    CEFBS_None, // i_store_global_alias__opc_storeh__reg0__rel_addr32__reg0__ = 1998
    CEFBS_None, // i_store_global_alias__opc_storeh__reg0__rel_addr32__reg0_alias__ = 1999
    CEFBS_None, // i_store_global_alias__opc_storeh__reg0__rel_addr32__regs__ = 2000
    CEFBS_None, // i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__reg0__ = 2001
    CEFBS_None, // i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__reg0_alias__ = 2002
    CEFBS_None, // i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__regs__ = 2003
    CEFBS_None, // i_store_global_alias__opc_storeh__regs__rel_addr32__reg0__ = 2004
    CEFBS_None, // i_store_global_alias__opc_storeh__regs__rel_addr32__reg0_alias__ = 2005
    CEFBS_None, // i_store_global_alias__opc_storeh__regs__rel_addr32__regs__ = 2006
    CEFBS_None, // i_store_global_alias__opc_storew__reg0__rel_addr32__reg0__ = 2007
    CEFBS_None, // i_store_global_alias__opc_storew__reg0__rel_addr32__reg0_alias__ = 2008
    CEFBS_None, // i_store_global_alias__opc_storew__reg0__rel_addr32__regs__ = 2009
    CEFBS_None, // i_store_global_alias__opc_storew__reg0_alias__rel_addr32__reg0__ = 2010
    CEFBS_None, // i_store_global_alias__opc_storew__reg0_alias__rel_addr32__reg0_alias__ = 2011
    CEFBS_None, // i_store_global_alias__opc_storew__reg0_alias__rel_addr32__regs__ = 2012
    CEFBS_None, // i_store_global_alias__opc_storew__regs__rel_addr32__reg0__ = 2013
    CEFBS_None, // i_store_global_alias__opc_storew__regs__rel_addr32__reg0_alias__ = 2014
    CEFBS_None, // i_store_global_alias__opc_storew__regs__rel_addr32__regs__ = 2015
    CEFBS_None, // i_tail_alias__rel_addr32_call_tail_simple__ = 2016
    CEFBS_None, // i_timers_counters_aliases__opc_rdcycle__reg0__ = 2017
    CEFBS_None, // i_timers_counters_aliases__opc_rdcycle__reg0_alias__ = 2018
    CEFBS_None, // i_timers_counters_aliases__opc_rdcycle__regs__ = 2019
    CEFBS_None, // i_timers_counters_aliases__opc_rdcycleh__reg0__ = 2020
    CEFBS_None, // i_timers_counters_aliases__opc_rdcycleh__reg0_alias__ = 2021
    CEFBS_None, // i_timers_counters_aliases__opc_rdcycleh__regs__ = 2022
    CEFBS_None, // i_timers_counters_aliases__opc_rdinstret__reg0__ = 2023
    CEFBS_None, // i_timers_counters_aliases__opc_rdinstret__reg0_alias__ = 2024
    CEFBS_None, // i_timers_counters_aliases__opc_rdinstret__regs__ = 2025
    CEFBS_None, // i_timers_counters_aliases__opc_rdinstreth__reg0__ = 2026
    CEFBS_None, // i_timers_counters_aliases__opc_rdinstreth__reg0_alias__ = 2027
    CEFBS_None, // i_timers_counters_aliases__opc_rdinstreth__regs__ = 2028
    CEFBS_None, // i_timers_counters_aliases__opc_rdtime__reg0__ = 2029
    CEFBS_None, // i_timers_counters_aliases__opc_rdtime__reg0_alias__ = 2030
    CEFBS_None, // i_timers_counters_aliases__opc_rdtime__regs__ = 2031
    CEFBS_None, // i_timers_counters_aliases__opc_rdtimeh__reg0__ = 2032
    CEFBS_None, // i_timers_counters_aliases__opc_rdtimeh__reg0_alias__ = 2033
    CEFBS_None, // i_timers_counters_aliases__opc_rdtimeh__regs__ = 2034
    CEFBS_None, // i_unimp__opc_unimp__ = 2035
    CEFBS_None, // i_wfi__opc_wfi__ = 2036
    CEFBS_None, // i_xori_alias__reg0__reg0__simm12_lo__ = 2037
    CEFBS_None, // i_xori_alias__reg0__reg0__simm12_pcrel_lo__ = 2038
    CEFBS_None, // i_xori_alias__reg0__reg0__simm12_simple__ = 2039
    CEFBS_None, // i_xori_alias__reg0__reg0_alias__simm12_lo__ = 2040
    CEFBS_None, // i_xori_alias__reg0__reg0_alias__simm12_pcrel_lo__ = 2041
    CEFBS_None, // i_xori_alias__reg0__reg0_alias__simm12_simple__ = 2042
    CEFBS_None, // i_xori_alias__reg0__regs__simm12_lo__ = 2043
    CEFBS_None, // i_xori_alias__reg0__regs__simm12_pcrel_lo__ = 2044
    CEFBS_None, // i_xori_alias__reg0__regs__simm12_simple__ = 2045
    CEFBS_None, // i_xori_alias__reg0_alias__reg0__simm12_lo__ = 2046
    CEFBS_None, // i_xori_alias__reg0_alias__reg0__simm12_pcrel_lo__ = 2047
    CEFBS_None, // i_xori_alias__reg0_alias__reg0__simm12_simple__ = 2048
    CEFBS_None, // i_xori_alias__reg0_alias__reg0_alias__simm12_lo__ = 2049
    CEFBS_None, // i_xori_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__ = 2050
    CEFBS_None, // i_xori_alias__reg0_alias__reg0_alias__simm12_simple__ = 2051
    CEFBS_None, // i_xori_alias__reg0_alias__regs__simm12_lo__ = 2052
    CEFBS_None, // i_xori_alias__reg0_alias__regs__simm12_pcrel_lo__ = 2053
    CEFBS_None, // i_xori_alias__reg0_alias__regs__simm12_simple__ = 2054
    CEFBS_None, // i_xori_alias__regs__reg0__simm12_lo__ = 2055
    CEFBS_None, // i_xori_alias__regs__reg0__simm12_pcrel_lo__ = 2056
    CEFBS_None, // i_xori_alias__regs__reg0__simm12_simple__ = 2057
    CEFBS_None, // i_xori_alias__regs__reg0_alias__simm12_lo__ = 2058
    CEFBS_None, // i_xori_alias__regs__reg0_alias__simm12_pcrel_lo__ = 2059
    CEFBS_None, // i_xori_alias__regs__reg0_alias__simm12_simple__ = 2060
    CEFBS_None, // i_xori_alias__regs__regs__simm12_lo__ = 2061
    CEFBS_None, // i_xori_alias__regs__regs__simm12_pcrel_lo__ = 2062
    CEFBS_None, // i_xori_alias__regs__regs__simm12_simple__ = 2063
    CEFBS_None, // i_xret__opc_mret__ = 2064
  };

  assert(Inst.getOpcode() < 2065);
  const FeatureBitset &RequiredFeatures = FeatureBitsets[RequiredFeaturesRefs[Inst.getOpcode()]];
  FeatureBitset MissingFeatures =
      (AvailableFeatures & RequiredFeatures) ^
      RequiredFeatures;
  if (MissingFeatures.any()) {
    std::ostringstream Msg;
    Msg << "Attempting to emit " << MCII.getName(Inst.getOpcode()).str()
        << " instruction but the ";
    for (unsigned i = 0, e = MissingFeatures.size(); i != e; ++i)
      if (MissingFeatures.test(i))
        Msg << SubtargetFeatureNames[i] << " ";
    Msg << "predicate(s) are not met";
    report_fatal_error(Msg.str());
  }
#else
// Silence unused variable warning on targets that don't use MCII for other purposes (e.g. BPF).
(void)MCII;
#endif // NDEBUG
}
#endif
