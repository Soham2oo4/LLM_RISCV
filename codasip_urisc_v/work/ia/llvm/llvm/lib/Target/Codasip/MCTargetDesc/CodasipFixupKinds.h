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
 * \date    2025-04-13
 * \author  Codasip (c) C compiler backend generator
 * \version 9.4.2
 * \brief   Source for compiler backend
 * \project codasip_urisc_v.ia
 * \note          Codasip Studio version: 9.4.2
 *                Project: codasip_urisc_v.ia
 *                Date: 2025-04-13 13:38:41
 *                Copyright (C) 2025 Codasip s.r.o.
 */


#ifndef LLVM_LIB_TARGET_CODASIP_MCTARGETDESC_codasipFIXUPKINDS_H
#define LLVM_LIB_TARGET_CODASIP_MCTARGETDESC_codasipFIXUPKINDS_H

#include "llvm/MC/MCFixup.h"

#undef Codasip

namespace llvm {
namespace Codasip {
enum Fixups {
  // Taken from RISC-V target
  // fixup_riscv_hi20 - 20-bit fixup corresponding to hi(foo) for
  // instructions like lui
  fixup_riscv_hi20 = FirstTargetFixupKind,
  // fixup_riscv_lo12_i - 12-bit fixup corresponding to lo(foo) for
  // instructions like addi
  fixup_riscv_lo12_i,
  // fixup_riscv_lo12_s - 12-bit fixup corresponding to lo(foo) for
  // the S-type store instructions
  fixup_riscv_lo12_s,
  // fixup_riscv_pcrel_hi20 - 20-bit fixup corresponding to pcrel_hi(foo) for
  // instructions like auipc
  fixup_riscv_pcrel_hi20,
  // fixup_riscv_pcrel_lo12_i - 12-bit fixup corresponding to pcrel_lo(foo) for
  // instructions like addi
  fixup_riscv_pcrel_lo12_i,
  // fixup_riscv_pcrel_lo12_s - 12-bit fixup corresponding to pcrel_lo(foo) for
  // the S-type store instructions
  fixup_riscv_pcrel_lo12_s,
  // fixup_riscv_got_hi20 - 20-bit fixup corresponding to got_pcrel_hi(foo) for
  // instructions like auipc
  fixup_riscv_got_hi20,
  // fixup_riscv_tprel_hi20 - 20-bit fixup corresponding to tprel_hi(foo) for
  // instructions like lui
  fixup_riscv_tprel_hi20,
  // fixup_riscv_tprel_lo12_i - 12-bit fixup corresponding to tprel_lo(foo) for
  // instructions like addi
  fixup_riscv_tprel_lo12_i,
  // fixup_riscv_tprel_lo12_s - 12-bit fixup corresponding to tprel_lo(foo) for
  // the S-type store instructions
  fixup_riscv_tprel_lo12_s,
  // fixup_riscv_tprel_add - A fixup corresponding to %tprel_add(foo) for the
  // add_tls instruction. Used to provide a hint to the linker.
  fixup_riscv_tprel_add,
  // fixup_riscv_tls_got_hi20 - 20-bit fixup corresponding to
  // tls_ie_pcrel_hi(foo) for instructions like auipc
  fixup_riscv_tls_got_hi20,
  // fixup_riscv_tls_gd_hi20 - 20-bit fixup corresponding to
  // tls_gd_pcrel_hi(foo) for instructions like auipc
  fixup_riscv_tls_gd_hi20,
  // fixup_riscv_jal - 20-bit fixup for symbol references in the jal
  // instruction
  fixup_riscv_jal,
  // fixup_riscv_branch - 12-bit fixup for symbol references in the branch
  // instructions
  fixup_riscv_branch,
  // fixup_riscv_rvc_jump - 11-bit fixup for symbol references in the
  // compressed jump instruction
  fixup_riscv_rvc_jump,
  // fixup_riscv_rvc_branch - 8-bit fixup for symbol references in the
  // compressed branch instruction
  fixup_riscv_rvc_branch,
  // fixup_riscv_call - A fixup representing a call attached to the auipc
  // instruction in a pair composed of adjacent auipc+jalr instructions.
  fixup_riscv_call,
  // fixup_riscv_call_plt - A fixup representing a procedure linkage table call
  // attached to the auipc instruction in a pair composed of adjacent auipc+jalr
  // instructions.
  fixup_riscv_call_plt,
  // fixup_riscv_relax - Used to generate an R_RISCV_RELAX relocation type,
  // which indicates the linker may relax the instruction pair.
  fixup_riscv_relax,
  // fixup_riscv_align - Used to generate an R_RISCV_ALIGN relocation type,
  // which indicates the linker should fixup the alignment after linker
  // relaxation.
  fixup_riscv_align,
  FK_Codasip_MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12,
  FK_Codasip_MI3immIH1_10start_base1_10load_imm32,
  FK_Codasip_MI3immIH1_10start_base1_8c_lui_hi,
  FK_Codasip_MI3immIH1_10start_base1_9c_addi_lo,
  FK_Codasip_MI3immIH1_10start_base6_4imm53imm1_4imm5,
  FK_Codasip_MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm,
  FK_Codasip_MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi,
  FK_Codasip_MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo,
  FK_Codasip_MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo,
  FK_Codasip_MI3valIH1_10start_base14_11imm20_reloc3imm1_14imm20_pcrel_hi,
  FK_Codasip_MI3valIH1_10start_base14_11imm20_reloc3imm1_8imm20_hi,
  FK_Codasip_MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo,
  FK_Codasip_MI3valIH1_10start_base8_6simm126simm121_9simm12_lo,
  FK_Codasip_MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12,
  FK_Codasip_MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20,
  FK_Codasip_MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32,
  FK_Codasip_MI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi,
  FK_Codasip_MI4addrIH1_10start_base23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple,
  FK_Codasip_MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple,
  FK_Codasip_MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple,
  FK_Codasip_MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm,
  FK_Codasip_Invalid,

  NumTargetFixupKinds = FK_Codasip_Invalid - FirstTargetFixupKind
};
} // namespace Codasip
} // end namespace llvm

#endif
