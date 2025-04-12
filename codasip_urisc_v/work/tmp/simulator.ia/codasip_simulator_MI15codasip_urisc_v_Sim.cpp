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
 * \author  Codasip (c) simulator generator
 * \version 9.4.2
 * \brief   Source files for simulator
 * \project MI15codasip_urisc_v
 */
#include "codasip_simulator_MI15codasip_urisc_v_Sim.h"

#include "getopt_common/interface/basicoptions.h"
static const codasip::getopt::ToolInfoSetter g_ToolInfo(codasip::getopt::ToolInfo("Codasip  (C49_2265_2231)", 
"codasip_urisc_v", 
"977917a703b238f9ba89c02cd1dcdab27fef2368ff075463f7f94c6ff8cf1f07", 
"2025-04-12 19:56:34", 
""
));
#include <sstream>
#include "simulator/simbase/simulator_resources.h"

namespace codasip {
namespace simulator {
namespace MI15codasip_urisc_v {

// static attributes
std::string Sim::RSP_JSON;

Sim::Sim(const std::string& name, const Uid uid, const char* codalParametersString, const char* codalParametersHelp)
 :  m_Name(name),
    m_Uid(0),
    m_SimCycleCounter(0),
    m_CheckerLevel(1),
    m_Log(this),
    m_SimCycleTimeout(-1),
    m_Halt(SIM_OK),
    m_SimExitCodeFilePath("sim_exit_code"),
    m_SimExitCode(-1),
    m_ExitMsg(),
    m_InstructionTraceEnabled(false),
    m_PreviousInstructionAddress(),
    m_WasInterruptedByDebugger(false),
    m_Disassembler(new disassembler::Disassembler()),
    RspTarget(1),
    idecstate(0),
    MI8m_memory("m_memory", 47, static_cast<codasip_address_t>(2147483648)),
    MI13r_instr_fetch(m_Name + ".r_instr_fetch", static_cast< ::codasip::resources::Uid>(1ULL)),
    MI13r_fetch_fault(m_Name + ".r_fetch_fault", static_cast< ::codasip::resources::Uid>(2ULL)),
    MI14r_pf_mem_error(m_Name + ".r_pf_mem_error", static_cast< ::codasip::resources::Uid>(3ULL)),
    MI18r_minstret_written(m_Name + ".r_minstret_written", static_cast< ::codasip::resources::Uid>(4ULL)),
    MI18r_minstret_inhibit(m_Name + ".r_minstret_inhibit", static_cast< ::codasip::resources::Uid>(5ULL)),
    MI16r_mcycle_inhibit(m_Name + ".r_mcycle_inhibit", static_cast< ::codasip::resources::Uid>(6ULL)),
    MI15r_illegal_instr(m_Name + ".r_illegal_instr", static_cast< ::codasip::resources::Uid>(7ULL)),
    MI15r_unknown_instr(m_Name + ".r_unknown_instr", static_cast< ::codasip::resources::Uid>(8ULL)),
    MI13r_fetch_hresp(m_Name + ".r_fetch_hresp", static_cast< ::codasip::resources::Uid>(9ULL)),
    MI12r_ldst_hresp(m_Name + ".r_ldst_hresp", static_cast< ::codasip::resources::Uid>(10ULL)),
    MI5r_wfi(m_Name + ".r_wfi", static_cast< ::codasip::resources::Uid>(11ULL)),
    MI14r_csr_minstret(m_Name + ".r_csr_minstret", static_cast< ::codasip::resources::Uid>(12ULL)),
    MI12r_csr_mcycle(m_Name + ".r_csr_mcycle", static_cast< ::codasip::resources::Uid>(13ULL)),
    MI19r_csr_mcountinhibit(m_Name + ".r_csr_mcountinhibit", static_cast< ::codasip::resources::Uid>(14ULL)),
    MI13r_csr_mhartid(m_Name + ".r_csr_mhartid", static_cast< ::codasip::resources::Uid>(15ULL)),
    MI9r_csr_nmi(m_Name + ".r_csr_nmi", static_cast< ::codasip::resources::Uid>(16ULL)),
    MI15r_csr_nmi_mtval(m_Name + ".r_csr_nmi_mtval", static_cast< ::codasip::resources::Uid>(17ULL)),
    MI13r_nmi_handler(m_Name + ".r_nmi_handler", static_cast< ::codasip::resources::Uid>(18ULL)),
    MI9r_csr_mip(m_Name + ".r_csr_mip", static_cast< ::codasip::resources::Uid>(19ULL)),
    MI9r_csr_mie(m_Name + ".r_csr_mie", static_cast< ::codasip::resources::Uid>(20ULL)),
    MI11r_csr_mtval(m_Name + ".r_csr_mtval", static_cast< ::codasip::resources::Uid>(21ULL)),
    MI10r_csr_mepc(m_Name + ".r_csr_mepc", static_cast< ::codasip::resources::Uid>(22ULL)),
    MI12r_csr_mcause(m_Name + ".r_csr_mcause", static_cast< ::codasip::resources::Uid>(23ULL)),
    MI14r_csr_mscratch(m_Name + ".r_csr_mscratch", static_cast< ::codasip::resources::Uid>(24ULL)),
    MI11r_csr_mtvec(m_Name + ".r_csr_mtvec", static_cast< ::codasip::resources::Uid>(25ULL)),
    MI13r_csr_mstatus(m_Name + ".r_csr_mstatus", static_cast< ::codasip::resources::Uid>(26ULL)),
    MI10r_csr_misa(m_Name + ".r_csr_misa", static_cast< ::codasip::resources::Uid>(27ULL)),
    MI13r_csr_marchid(m_Name + ".r_csr_marchid", static_cast< ::codasip::resources::Uid>(28ULL)),
    MI12r_reset_init(m_Name + ".r_reset_init", static_cast< ::codasip::resources::Uid>(29ULL)),
    MI14r_syscall_addr(m_Name + ".r_syscall_addr", static_cast< ::codasip::resources::Uid>(30ULL)),
    MI4r_PC(m_Name + ".r_PC", static_cast< ::codasip::resources::Uid>(31ULL)),
    MI6rf_gpr(m_Name + ".rf_gpr", static_cast< ::codasip::resources::Uid>(32ULL)),
    MI6as_all_virt_program(34,"as_all (Using PROGRAM interface(s))",AddressSpaceInfo::AS_PROGRAM,32,32,8,false,true),
    MI6as_all_virt_data(35,"as_all (Using DATA interface(s))",AddressSpaceInfo::AS_DATA,32,32,8,false,true),
    MI6as_all(33,"as_all",AddressSpaceInfo::AS_ALL,32,32,8,false,false),
    MI8r_wfi_ce(m_Name + ".r_wfi_ce", static_cast< ::codasip::resources::Uid>(36ULL)),
    MI7if_ldst(m_Name + ".if_ldst", static_cast< ::codasip::resources::Uid>(37ULL)),
    MI8if_fetch(m_Name + ".if_fetch", static_cast< ::codasip::resources::Uid>(38ULL)),
    MI6p_meip(m_Name + ".p_meip", static_cast< ::codasip::resources::Uid>(39ULL)),
    MI6p_msip(m_Name + ".p_msip", static_cast< ::codasip::resources::Uid>(40ULL)),
    MI6p_mtip(m_Name + ".p_mtip", static_cast< ::codasip::resources::Uid>(41ULL)),
    MI5p_wfi(m_Name + ".p_wfi", static_cast< ::codasip::resources::Uid>(42ULL)),
    MI5p_nmi(m_Name + ".p_nmi", static_cast< ::codasip::resources::Uid>(43ULL)),
    MI11p_nmi_mtval(m_Name + ".p_nmi_mtval", static_cast< ::codasip::resources::Uid>(44ULL)),
    MI11p_boot_addr(m_Name + ".p_boot_addr", static_cast< ::codasip::resources::Uid>(45ULL)),
    MI90codasip_return_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc(m_Name + ".codasip_return_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc", static_cast< ::codasip::resources::Uid>(229ULL)),
    MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src(m_Name + ".codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src", static_cast< ::codasip::resources::Uid>(230ULL)),
    MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr(m_Name + ".codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr", static_cast< ::codasip::resources::Uid>(231ULL)),
    MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst(m_Name + ".codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst", static_cast< ::codasip::resources::Uid>(232ULL)),
    MI90codasip_return_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc(m_Name + ".codasip_return_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc", static_cast< ::codasip::resources::Uid>(236ULL)),
    MI45codasip_return_MI4imm5IH5_3isa3isa6_4imm53imm(m_Name + ".codasip_return_MI4imm5IH5_3isa3isa6_4imm53imm", static_cast< ::codasip::resources::Uid>(237ULL)),
    MI74codasip_return_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc(m_Name + ".codasip_return_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc", static_cast< ::codasip::resources::Uid>(241ULL)),
    MI52codasip_return_MI6simm12IH5_3isa3isa8_6simm126simm12(m_Name + ".codasip_return_MI6simm12IH5_3isa3isa8_6simm126simm12", static_cast< ::codasip::resources::Uid>(242ULL)),
    MI86codasip_return_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc(m_Name + ".codasip_return_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc", static_cast< ::codasip::resources::Uid>(244ULL)),
    MI56codasip_return_MI9shift_immIH5_3isa3isa11_9shift_imm3imm(m_Name + ".codasip_return_MI9shift_immIH5_3isa3isa11_9shift_imm3imm", static_cast< ::codasip::resources::Uid>(245ULL)),
    MI56codasip_return_MI9imm20_s12IH5_3isa3isa11_9imm20_s123imm(m_Name + ".codasip_return_MI9imm20_s12IH5_3isa3isa11_9imm20_s123imm", static_cast< ::codasip::resources::Uid>(247ULL)),
    MI51codasip_return_MI7opc_luiIH5_3isa3isa9_7opc_lui3opc(m_Name + ".codasip_return_MI7opc_luiIH5_3isa3isa9_7opc_lui3opc", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI56codasip_return_MI9opc_auipcIH5_3isa3isa11_9opc_auipc3opc(m_Name + ".codasip_return_MI9opc_auipcIH5_3isa3isa11_9opc_auipc3opc", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc(m_Name + ".codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc", static_cast< ::codasip::resources::Uid>(250ULL)),
    MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1(m_Name + ".codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1", static_cast< ::codasip::resources::Uid>(251ULL)),
    MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2(m_Name + ".codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2", static_cast< ::codasip::resources::Uid>(252ULL)),
    MI61codasip_return_MI10rel_addr20IH5_3isa3isa13_10rel_addr204addr(m_Name + ".codasip_return_MI10rel_addr20IH5_3isa3isa13_10rel_addr204addr", static_cast< ::codasip::resources::Uid>(253ULL)),
    MI51codasip_return_MI7opc_jalIH5_3isa3isa9_7opc_jal3opc(m_Name + ".codasip_return_MI7opc_jalIH5_3isa3isa9_7opc_jal3opc", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI54codasip_return_MI8opc_jalrIH5_3isa3isa10_8opc_jalr3opc(m_Name + ".codasip_return_MI8opc_jalrIH5_3isa3isa10_8opc_jalr3opc", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI86codasip_return_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc(m_Name + ".codasip_return_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc", static_cast< ::codasip::resources::Uid>(263ULL)),
    MI61codasip_return_MI10rel_addr12IH5_3isa3isa13_10rel_addr124addr(m_Name + ".codasip_return_MI10rel_addr12IH5_3isa3isa13_10rel_addr124addr", static_cast< ::codasip::resources::Uid>(264ULL)),
    MI56codasip_return_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc(m_Name + ".codasip_return_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc", static_cast< ::codasip::resources::Uid>(268ULL)),
    MI59codasip_return_MI8simm12_sIH5_3isa3isa10_8simm12_s8simm12_s(m_Name + ".codasip_return_MI8simm12_sIH5_3isa3isa10_8simm12_s8simm12_s", static_cast< ::codasip::resources::Uid>(272ULL)),
    MI60codasip_return_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc(m_Name + ".codasip_return_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc", static_cast< ::codasip::resources::Uid>(273ULL)),
    MI56codasip_return_MI9opc_ecallIH5_3isa3isa11_9opc_ecall3opc(m_Name + ".codasip_return_MI9opc_ecallIH5_3isa3isa11_9opc_ecall3opc", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI60codasip_return_MI10opc_ebreakIH5_3isa3isa13_10opc_ebreak3opc(m_Name + ".codasip_return_MI10opc_ebreakIH5_3isa3isa13_10opc_ebreak3opc", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI54codasip_return_MI8opc_xretIH5_3isa3isa10_8opc_xret3opc(m_Name + ".codasip_return_MI8opc_xretIH5_3isa3isa10_8opc_xret3opc", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI51codasip_return_MI7opc_wfiIH5_3isa3isa9_7opc_wfi3opc(m_Name + ".codasip_return_MI7opc_wfiIH5_3isa3isa9_7opc_wfi3opc", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1(m_Name + ".codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1", static_cast< ::codasip::resources::Uid>(282ULL)),
    MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2(m_Name + ".codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2", static_cast< ::codasip::resources::Uid>(283ULL)),
    MI56codasip_return_MI9opc_fenceIH5_3isa3isa11_9opc_fence3opc(m_Name + ".codasip_return_MI9opc_fenceIH5_3isa3isa11_9opc_fence3opc", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI60codasip_return_MI10opc_fenceiIH5_3isa3isa13_10opc_fencei3opc(m_Name + ".codasip_return_MI10opc_fenceiIH5_3isa3isa13_10opc_fencei3opc", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI56codasip_return_MI9opc_unimpIH5_3isa3isa11_9opc_unimp3opc(m_Name + ".codasip_return_MI9opc_unimpIH5_3isa3isa11_9opc_unimp3opc", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI78codasip_return_MI19opc_timers_countersIH5_3isa3isa22_19opc_timers_counters3opc(m_Name + ".codasip_return_MI19opc_timers_countersIH5_3isa3isa22_19opc_timers_counters3opc", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI54codasip_return_MI8imm20_hiIH5_3isa3isa10_8imm20_hi3imm(m_Name + ".codasip_return_MI8imm20_hiIH5_3isa3isa10_8imm20_hi3imm", static_cast< ::codasip::resources::Uid>(290ULL)),
    MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1(m_Name + ".codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1", static_cast< ::codasip::resources::Uid>(294ULL)),
    MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2(m_Name + ".codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2", static_cast< ::codasip::resources::Uid>(295ULL)),
    MI82codasip_return_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc(m_Name + ".codasip_return_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc", static_cast< ::codasip::resources::Uid>(296ULL)),
    MI3immIH5_3isa3isa6_4imm53imm1_4imm5(m_Name + ".imm", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI4simmIH5_3isa3isa8_6simm126simm121_13simm12_simple(m_Name + ".simm", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI3valIH5_3isa3isa8_6simm126simm121_9simm12_lo(m_Name + ".val", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI3valIH5_3isa3isa8_6simm126simm121_15simm12_pcrel_lo(m_Name + ".val", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI5shiftIH5_3isa3isa11_9shift_imm3imm1_9shift_imm(m_Name + ".shift", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI3immIH5_3isa3isa11_9imm20_s123imm1_9imm20_s12(m_Name + ".imm", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI81codasip_return_MI20rel_addr32_call_tailIH5_3isa3isa23_20rel_addr32_call_tail4addr(m_Name + ".codasip_return_MI20rel_addr32_call_tailIH5_3isa3isa23_20rel_addr32_call_tail4addr", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI4addrIH5_3isa3isa23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple(m_Name + ".addr", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI61codasip_return_MI10rel_addr32IH5_3isa3isa13_10rel_addr324addr(m_Name + ".codasip_return_MI10rel_addr32IH5_3isa3isa13_10rel_addr324addr", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI4addrIH5_3isa3isa13_10rel_addr324addr1_10rel_addr32(m_Name + ".addr", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI62codasip_return_MI11imm20_relocIH5_3isa3isa14_11imm20_reloc3imm(m_Name + ".codasip_return_MI11imm20_relocIH5_3isa3isa14_11imm20_reloc3imm", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI3valIH5_3isa3isa14_11imm20_reloc3imm1_8imm20_hi(m_Name + ".val", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI3valIH5_3isa3isa14_11imm20_reloc3imm1_14imm20_pcrel_hi(m_Name + ".val", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI3valIH5_3isa3isa10_8imm20_hi3imm1_8imm20_hi(m_Name + ".val", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20(m_Name + ".addr", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12(m_Name + ".addr", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI4simmIH5_3isa3isa10_8simm12_s8simm12_s1_13simm12_simple(m_Name + ".simm", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI3valIH5_3isa3isa10_8simm12_s8simm12_s1_11simm12_s_lo(m_Name + ".val", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI3valIH5_3isa3isa10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo(m_Name + ".val", static_cast< ::codasip::resources::Uid>(18446744073709551615ULL)),
    MI17codasip_tmp_var_0IH1_4main(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(50ULL)),
    MI17codasip_tmp_var_1IH1_4main(m_Name + ".codasip_tmp_var_1", static_cast< ::codasip::resources::Uid>(51ULL)),
    MI17codasip_tmp_var_2IH1_4main(m_Name + ".codasip_tmp_var_2", static_cast< ::codasip::resources::Uid>(52ULL)),
    MI17codasip_tmp_var_3IH1_4main(m_Name + ".codasip_tmp_var_3", static_cast< ::codasip::resources::Uid>(53ULL)),
    MI17codasip_tmp_var_4IH1_4main(m_Name + ".codasip_tmp_var_4", static_cast< ::codasip::resources::Uid>(54ULL)),
    MI17codasip_tmp_var_0IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(55ULL)),
    MI17codasip_tmp_var_1IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst(m_Name + ".codasip_tmp_var_1", static_cast< ::codasip::resources::Uid>(56ULL)),
    MI17codasip_tmp_var_2IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst(m_Name + ".codasip_tmp_var_2", static_cast< ::codasip::resources::Uid>(57ULL)),
    MI5vaddrIH1_11fetch_instr(m_Name + ".vaddr", static_cast< ::codasip::resources::Uid>(59ULL)),
    MI5instrIH1_11fetch_instrB0(m_Name + ".instr", static_cast< ::codasip::resources::Uid>(60ULL)),
    MI17codasip_tmp_var_0IH1_11fetch_instr(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(61ULL)),
    MI1iIH1_11rf_gpr_read(m_Name + ".i", static_cast< ::codasip::resources::Uid>(63ULL)),
    MI3valIH1_11rf_gpr_readB0(m_Name + ".val", static_cast< ::codasip::resources::Uid>(64ULL)),
    MI17codasip_tmp_var_0IH1_11rf_gpr_read(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(65ULL)),
    MI1iIH1_12rf_gpr_write(m_Name + ".i", static_cast< ::codasip::resources::Uid>(68ULL)),
    MI3valIH1_12rf_gpr_write(m_Name + ".val", static_cast< ::codasip::resources::Uid>(69ULL)),
    MI17codasip_tmp_var_0IH1_12rf_gpr_write(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(70ULL)),
    MI5haddrIH1_20fetch_interface_read(m_Name + ".haddr", static_cast< ::codasip::resources::Uid>(73ULL)),
    MI5hsizeIH1_20fetch_interface_read(m_Name + ".hsize", static_cast< ::codasip::resources::Uid>(74ULL)),
    MI6resultIH1_20fetch_interface_readB0(m_Name + ".result", static_cast< ::codasip::resources::Uid>(75ULL)),
    MI5hrespIH1_20fetch_interface_readB0(m_Name + ".hresp", static_cast< ::codasip::resources::Uid>(76ULL)),
    MI5hprotIH1_20fetch_interface_readB0(m_Name + ".hprot", static_cast< ::codasip::resources::Uid>(77ULL)),
    MI5haddrIH1_19ldst_interface_read(m_Name + ".haddr", static_cast< ::codasip::resources::Uid>(80ULL)),
    MI5hsizeIH1_19ldst_interface_read(m_Name + ".hsize", static_cast< ::codasip::resources::Uid>(81ULL)),
    MI6resultIH1_19ldst_interface_readB0(m_Name + ".result", static_cast< ::codasip::resources::Uid>(82ULL)),
    MI5hrespIH1_19ldst_interface_readB0(m_Name + ".hresp", static_cast< ::codasip::resources::Uid>(83ULL)),
    MI5hprotIH1_19ldst_interface_readB0(m_Name + ".hprot", static_cast< ::codasip::resources::Uid>(84ULL)),
    MI5wdataIH1_20ldst_interface_write(m_Name + ".wdata", static_cast< ::codasip::resources::Uid>(88ULL)),
    MI5haddrIH1_20ldst_interface_write(m_Name + ".haddr", static_cast< ::codasip::resources::Uid>(89ULL)),
    MI5hsizeIH1_20ldst_interface_write(m_Name + ".hsize", static_cast< ::codasip::resources::Uid>(90ULL)),
    MI5hrespIH1_20ldst_interface_writeB0(m_Name + ".hresp", static_cast< ::codasip::resources::Uid>(91ULL)),
    MI5hprotIH1_20ldst_interface_writeB0(m_Name + ".hprot", static_cast< ::codasip::resources::Uid>(92ULL)),
    MI3opcIH1_8load_val(m_Name + ".opc", static_cast< ::codasip::resources::Uid>(95ULL)),
    MI7addressIH1_8load_val(m_Name + ".address", static_cast< ::codasip::resources::Uid>(96ULL)),
    MI6resultIH1_8load_valB0(m_Name + ".result", static_cast< ::codasip::resources::Uid>(97ULL)),
    MI3sbcIH1_8load_valB0(m_Name + ".sbc", static_cast< ::codasip::resources::Uid>(98ULL)),
    MI17codasip_tmp_var_0IH1_8load_val(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(99ULL)),
    MI17codasip_tmp_var_1IH1_8load_val(m_Name + ".codasip_tmp_var_1", static_cast< ::codasip::resources::Uid>(100ULL)),
    MI17codasip_tmp_var_2IH1_8load_val(m_Name + ".codasip_tmp_var_2", static_cast< ::codasip::resources::Uid>(101ULL)),
    MI17codasip_tmp_var_3IH1_8load_val(m_Name + ".codasip_tmp_var_3", static_cast< ::codasip::resources::Uid>(102ULL)),
    MI11error_causeIH1_8load_valB0B10(m_Name + ".error_cause", static_cast< ::codasip::resources::Uid>(103ULL)),
    MI17codasip_tmp_var_4IH1_8load_val(m_Name + ".codasip_tmp_var_4", static_cast< ::codasip::resources::Uid>(104ULL)),
    MI3opcIH1_9write_val(m_Name + ".opc", static_cast< ::codasip::resources::Uid>(108ULL)),
    MI7addressIH1_9write_val(m_Name + ".address", static_cast< ::codasip::resources::Uid>(109ULL)),
    MI3valIH1_9write_val(m_Name + ".val", static_cast< ::codasip::resources::Uid>(110ULL)),
    MI11error_causeIH1_9write_valB0(m_Name + ".error_cause", static_cast< ::codasip::resources::Uid>(111ULL)),
    MI3sbcIH1_9write_valB0(m_Name + ".sbc", static_cast< ::codasip::resources::Uid>(112ULL)),
    MI17codasip_tmp_var_0IH1_9write_val(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(113ULL)),
    MI17codasip_tmp_var_1IH1_9write_val(m_Name + ".codasip_tmp_var_1", static_cast< ::codasip::resources::Uid>(114ULL)),
    MI17codasip_tmp_var_2IH1_9write_val(m_Name + ".codasip_tmp_var_2", static_cast< ::codasip::resources::Uid>(115ULL)),
    MI17codasip_tmp_var_3IH1_9write_val(m_Name + ".codasip_tmp_var_3", static_cast< ::codasip::resources::Uid>(116ULL)),
    MI17codasip_tmp_var_4IH1_9write_val(m_Name + ".codasip_tmp_var_4", static_cast< ::codasip::resources::Uid>(117ULL)),
    MI17codasip_tmp_var_5IH1_9write_val(m_Name + ".codasip_tmp_var_5", static_cast< ::codasip::resources::Uid>(118ULL)),
    MI17codasip_tmp_var_6IH1_9write_val(m_Name + ".codasip_tmp_var_6", static_cast< ::codasip::resources::Uid>(119ULL)),
    MI3opcIH1_7compute(m_Name + ".opc", static_cast< ::codasip::resources::Uid>(123ULL)),
    MI3op1IH1_7compute(m_Name + ".op1", static_cast< ::codasip::resources::Uid>(124ULL)),
    MI3op2IH1_7compute(m_Name + ".op2", static_cast< ::codasip::resources::Uid>(125ULL)),
    MI6resultIH1_7computeB0(m_Name + ".result", static_cast< ::codasip::resources::Uid>(126ULL)),
    MI17codasip_tmp_var_0IH1_7compute(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(127ULL)),
    MI17codasip_tmp_var_1IH1_7compute(m_Name + ".codasip_tmp_var_1", static_cast< ::codasip::resources::Uid>(128ULL)),
    MI17codasip_tmp_var_2IH1_7compute(m_Name + ".codasip_tmp_var_2", static_cast< ::codasip::resources::Uid>(129ULL)),
    MI6retvalIH1_4haltB0(m_Name + ".retval", static_cast< ::codasip::resources::Uid>(130ULL)),
    MI10start_addrIH1_4haltB0B1(m_Name + ".start_addr", static_cast< ::codasip::resources::Uid>(131ULL)),
    MI8end_addrIH1_4haltB0B1(m_Name + ".end_addr", static_cast< ::codasip::resources::Uid>(132ULL)),
    MI7addressIH1_4haltB0B1(m_Name + ".address", static_cast< ::codasip::resources::Uid>(133ULL)),
    MI17codasip_tmp_var_0IH1_4halt(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(134ULL)),
    MI3sbcIH1_16check_mem_access(m_Name + ".sbc", static_cast< ::codasip::resources::Uid>(137ULL)),
    MI7addressIH1_16check_mem_access(m_Name + ".address", static_cast< ::codasip::resources::Uid>(138ULL)),
    MI10trap_causeIH1_15print_trap_info(m_Name + ".trap_cause", static_cast< ::codasip::resources::Uid>(141ULL)),
    MI4tvalIH1_15print_trap_info(m_Name + ".tval", static_cast< ::codasip::resources::Uid>(142ULL)),
    MI9int_causeIH1_15print_trap_infoB0B0(m_Name + ".int_cause", static_cast< ::codasip::resources::Uid>(143ULL)),
    MI17codasip_tmp_var_0IH1_15print_trap_info(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(144ULL)),
    MI17codasip_tmp_var_1IH1_15print_trap_info(m_Name + ".codasip_tmp_var_1", static_cast< ::codasip::resources::Uid>(145ULL)),
    MI17codasip_tmp_var_2IH1_15print_trap_info(m_Name + ".codasip_tmp_var_2", static_cast< ::codasip::resources::Uid>(146ULL)),
    MI3opcIH1_17csr_get_write_val(m_Name + ".opc", static_cast< ::codasip::resources::Uid>(150ULL)),
    MI7currValIH1_17csr_get_write_val(m_Name + ".currVal", static_cast< ::codasip::resources::Uid>(151ULL)),
    MI8writeValIH1_17csr_get_write_val(m_Name + ".writeVal", static_cast< ::codasip::resources::Uid>(152ULL)),
    MI6retvalIH1_17csr_get_write_valB0(m_Name + ".retval", static_cast< ::codasip::resources::Uid>(153ULL)),
    MI17codasip_tmp_var_0IH1_17csr_get_write_val(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(154ULL)),
    MI3menIH1_8take_intB0(m_Name + ".men", static_cast< ::codasip::resources::Uid>(155ULL)),
    MI7pendingIH1_8take_intB0(m_Name + ".pending", static_cast< ::codasip::resources::Uid>(156ULL)),
    MI7enabledIH1_8take_intB0(m_Name + ".enabled", static_cast< ::codasip::resources::Uid>(157ULL)),
    MI9int_causeIH1_8take_intB0(m_Name + ".int_cause", static_cast< ::codasip::resources::Uid>(158ULL)),
    MI9nmi_mtvalIH1_8take_intB0(m_Name + ".nmi_mtval", static_cast< ::codasip::resources::Uid>(159ULL)),
    MI3nmiIH1_8take_intB0(m_Name + ".nmi", static_cast< ::codasip::resources::Uid>(160ULL)),
    MI17codasip_tmp_var_0IH1_8take_int(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(161ULL)),
    MI17codasip_tmp_var_1IH1_8take_int(m_Name + ".codasip_tmp_var_1", static_cast< ::codasip::resources::Uid>(162ULL)),
    MI17codasip_tmp_var_2IH1_8take_int(m_Name + ".codasip_tmp_var_2", static_cast< ::codasip::resources::Uid>(163ULL)),
    MI17codasip_tmp_var_3IH1_8take_int(m_Name + ".codasip_tmp_var_3", static_cast< ::codasip::resources::Uid>(164ULL)),
    MI17codasip_tmp_var_4IH1_8take_int(m_Name + ".codasip_tmp_var_4", static_cast< ::codasip::resources::Uid>(165ULL)),
    MI17codasip_tmp_var_5IH1_8take_int(m_Name + ".codasip_tmp_var_5", static_cast< ::codasip::resources::Uid>(166ULL)),
    MI17codasip_tmp_var_6IH1_8take_int(m_Name + ".codasip_tmp_var_6", static_cast< ::codasip::resources::Uid>(167ULL)),
    MI10trap_causeIH1_9take_trap(m_Name + ".trap_cause", static_cast< ::codasip::resources::Uid>(171ULL)),
    MI7bad_valIH1_9take_trap(m_Name + ".bad_val", static_cast< ::codasip::resources::Uid>(172ULL)),
    MI9decrementIH1_9take_trap(m_Name + ".decrement", static_cast< ::codasip::resources::Uid>(173ULL)),
    MI5causeIH1_9take_trapB0B0(m_Name + ".cause", static_cast< ::codasip::resources::Uid>(174ULL)),
    MI17codasip_tmp_var_0IH1_9take_trap(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(175ULL)),
    MI17codasip_tmp_var_1IH1_9take_trap(m_Name + ".codasip_tmp_var_1", static_cast< ::codasip::resources::Uid>(176ULL)),
    MI17codasip_tmp_var_3IH1_9take_trap(m_Name + ".codasip_tmp_var_3", static_cast< ::codasip::resources::Uid>(177ULL)),
    MI17codasip_tmp_var_4IH1_9take_trap(m_Name + ".codasip_tmp_var_4", static_cast< ::codasip::resources::Uid>(178ULL)),
    MI17codasip_tmp_var_2IH1_9take_trap(m_Name + ".codasip_tmp_var_2", static_cast< ::codasip::resources::Uid>(179ULL)),
    MI4mpieIH1_8do_xcallB0(m_Name + ".mpie", static_cast< ::codasip::resources::Uid>(180ULL)),
    MI10int_enableIH1_7do_xretB0(m_Name + ".int_enable", static_cast< ::codasip::resources::Uid>(181ULL)),
    MI15prev_int_enableIH1_7do_xretB0(m_Name + ".prev_int_enable", static_cast< ::codasip::resources::Uid>(182ULL)),
    MI3srcIH1_18csr_read_write_reg(m_Name + ".src", static_cast< ::codasip::resources::Uid>(186ULL)),
    MI3csrIH1_18csr_read_write_reg(m_Name + ".csr", static_cast< ::codasip::resources::Uid>(187ULL)),
    MI3opcIH1_18csr_read_write_reg(m_Name + ".opc", static_cast< ::codasip::resources::Uid>(188ULL)),
    MI8writeValIH1_18csr_read_write_regB0(m_Name + ".writeVal", static_cast< ::codasip::resources::Uid>(189ULL)),
    MI7readValIH1_18csr_read_write_regB0(m_Name + ".readVal", static_cast< ::codasip::resources::Uid>(190ULL)),
    MI8is_writeIH1_18csr_read_write_regB0(m_Name + ".is_write", static_cast< ::codasip::resources::Uid>(191ULL)),
    MI17codasip_tmp_var_0IH1_18csr_read_write_reg(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(192ULL)),
    MI3immIH1_18csr_read_write_imm(m_Name + ".imm", static_cast< ::codasip::resources::Uid>(196ULL)),
    MI3csrIH1_18csr_read_write_imm(m_Name + ".csr", static_cast< ::codasip::resources::Uid>(197ULL)),
    MI3opcIH1_18csr_read_write_imm(m_Name + ".opc", static_cast< ::codasip::resources::Uid>(198ULL)),
    MI7readValIH1_18csr_read_write_immB0(m_Name + ".readVal", static_cast< ::codasip::resources::Uid>(199ULL)),
    MI8is_writeIH1_18csr_read_write_immB0(m_Name + ".is_write", static_cast< ::codasip::resources::Uid>(200ULL)),
    MI17codasip_tmp_var_0IH1_18csr_read_write_imm(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(201ULL)),
    MI8writeValIH1_14csr_read_write(m_Name + ".writeVal", static_cast< ::codasip::resources::Uid>(206ULL)),
    MI3csrIH1_14csr_read_write(m_Name + ".csr", static_cast< ::codasip::resources::Uid>(207ULL)),
    MI3opcIH1_14csr_read_write(m_Name + ".opc", static_cast< ::codasip::resources::Uid>(208ULL)),
    MI8is_writeIH1_14csr_read_write(m_Name + ".is_write", static_cast< ::codasip::resources::Uid>(209ULL)),
    MI7readValIH1_14csr_read_writeB0(m_Name + ".readVal", static_cast< ::codasip::resources::Uid>(210ULL)),
    MI17codasip_tmp_var_0IH1_14csr_read_write(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(211ULL)),
    MI17codasip_tmp_var_1IH1_14csr_read_write(m_Name + ".codasip_tmp_var_1", static_cast< ::codasip::resources::Uid>(212ULL)),
    MI17codasip_tmp_var_2IH1_14csr_read_write(m_Name + ".codasip_tmp_var_2", static_cast< ::codasip::resources::Uid>(213ULL)),
    MI17codasip_tmp_var_3IH1_14csr_read_write(m_Name + ".codasip_tmp_var_3", static_cast< ::codasip::resources::Uid>(214ULL)),
    MI17codasip_tmp_var_4IH1_14csr_read_write(m_Name + ".codasip_tmp_var_4", static_cast< ::codasip::resources::Uid>(215ULL)),
    MI17codasip_tmp_var_5IH1_14csr_read_write(m_Name + ".codasip_tmp_var_5", static_cast< ::codasip::resources::Uid>(216ULL)),
    MI17codasip_tmp_var_6IH1_14csr_read_write(m_Name + ".codasip_tmp_var_6", static_cast< ::codasip::resources::Uid>(217ULL)),
    MI17codasip_tmp_var_7IH1_14csr_read_write(m_Name + ".codasip_tmp_var_7", static_cast< ::codasip::resources::Uid>(218ULL)),
    MI17codasip_tmp_var_8IH1_14csr_read_write(m_Name + ".codasip_tmp_var_8", static_cast< ::codasip::resources::Uid>(219ULL)),
    MI17codasip_tmp_var_9IH1_14csr_read_write(m_Name + ".codasip_tmp_var_9", static_cast< ::codasip::resources::Uid>(220ULL)),
    MI18codasip_tmp_var_10IH1_14csr_read_write(m_Name + ".codasip_tmp_var_10", static_cast< ::codasip::resources::Uid>(221ULL)),
    MI18codasip_tmp_var_11IH1_14csr_read_write(m_Name + ".codasip_tmp_var_11", static_cast< ::codasip::resources::Uid>(222ULL)),
    MI18codasip_tmp_var_12IH1_14csr_read_write(m_Name + ".codasip_tmp_var_12", static_cast< ::codasip::resources::Uid>(223ULL)),
    MI18codasip_tmp_var_13IH1_14csr_read_write(m_Name + ".codasip_tmp_var_13", static_cast< ::codasip::resources::Uid>(224ULL)),
    MI11INSTRUCTIONIH5_3isa3isa1_3isa(m_Name + ".INSTRUCTION", static_cast< ::codasip::resources::Uid>(227ULL)),
    MI19INVALID_INSTRUCTIONIH5_3isa3isa1_3isa(m_Name + ".INVALID_INSTRUCTION", static_cast< ::codasip::resources::Uid>(228ULL)),
    MI8writeValIH5_3isa3isa1_23i_control_registers_regB0(m_Name + ".writeVal", static_cast< ::codasip::resources::Uid>(233ULL)),
    MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_reg(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(234ULL)),
    MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_reg(m_Name + ".codasip_tmp_var_1", static_cast< ::codasip::resources::Uid>(235ULL)),
    MI8writeValIH5_3isa3isa1_23i_control_registers_immB0(m_Name + ".writeVal", static_cast< ::codasip::resources::Uid>(238ULL)),
    MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_imm(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(239ULL)),
    MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_imm(m_Name + ".codasip_tmp_var_1", static_cast< ::codasip::resources::Uid>(240ULL)),
    MI3valIH5_3isa3isa1_15i_comp_2reg_immB0(m_Name + ".val", static_cast< ::codasip::resources::Uid>(243ULL)),
    MI3valIH5_3isa3isa1_21i_comp_2reg_imm_shiftB0(m_Name + ".val", static_cast< ::codasip::resources::Uid>(246ULL)),
    MI8jmp_addrIH5_3isa3isa1_5i_jalB0(m_Name + ".jmp_addr", static_cast< ::codasip::resources::Uid>(254ULL)),
    MI3tmpIH5_3isa3isa1_5i_jalB0(m_Name + ".tmp", static_cast< ::codasip::resources::Uid>(255ULL)),
    MI17codasip_tmp_var_0IH5_3isa3isa1_5i_jal(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(256ULL)),
    MI3valIH5_3isa3isa1_6i_jalrB0(m_Name + ".val", static_cast< ::codasip::resources::Uid>(258ULL)),
    MI8jmp_addrIH5_3isa3isa1_6i_jalrB0(m_Name + ".jmp_addr", static_cast< ::codasip::resources::Uid>(259ULL)),
    MI3tmpIH5_3isa3isa1_6i_jalrB0(m_Name + ".tmp", static_cast< ::codasip::resources::Uid>(260ULL)),
    MI17codasip_tmp_var_0IH5_3isa3isa1_6i_jalr(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(261ULL)),
    MI17codasip_tmp_var_0IH5_3isa3isa1_21i_control_conditional(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(265ULL)),
    MI8jmp_addrIH5_3isa3isa1_21i_control_conditionalB0B1(m_Name + ".jmp_addr", static_cast< ::codasip::resources::Uid>(266ULL)),
    MI17codasip_tmp_var_1IH5_3isa3isa1_21i_control_conditional(m_Name + ".codasip_tmp_var_1", static_cast< ::codasip::resources::Uid>(267ULL)),
    MI3valIH5_3isa3isa1_6i_loadB0(m_Name + ".val", static_cast< ::codasip::resources::Uid>(269ULL)),
    MI4addrIH5_3isa3isa1_6i_loadB0(m_Name + ".addr", static_cast< ::codasip::resources::Uid>(270ULL)),
    MI17codasip_tmp_var_0IH5_3isa3isa1_6i_load(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(271ULL)),
    MI4addrIH5_3isa3isa1_7i_storeB0(m_Name + ".addr", static_cast< ::codasip::resources::Uid>(274ULL)),
    MI4dataIH5_3isa3isa1_7i_storeB0(m_Name + ".data", static_cast< ::codasip::resources::Uid>(275ULL)),
    MI1iIH5_3isa3isa1_8i_ebreakB0(m_Name + ".i", static_cast< ::codasip::resources::Uid>(277ULL)),
    MI17codasip_tmp_var_0IH5_3isa3isa1_6i_xret(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(280ULL)),
    MI3valIH5_3isa3isa1_8i_lui_hiB0(m_Name + ".val", static_cast< ::codasip::resources::Uid>(291ULL)),
    MI3tmpIH5_3isa3isa1_16i_call_rel_aliasB0(m_Name + ".tmp", static_cast< ::codasip::resources::Uid>(292ULL)),
    MI3tmpIH5_3isa3isa1_16i_call_reg_aliasB0(m_Name + ".tmp", static_cast< ::codasip::resources::Uid>(293ULL)),
    MI6resultIH5_3isa3isa1_14i_ext_hackatonB0(m_Name + ".result", static_cast< ::codasip::resources::Uid>(297ULL)),
    MI2s1IH5_3isa3isa1_14i_ext_hackatonB0(m_Name + ".s1", static_cast< ::codasip::resources::Uid>(298ULL)),
    MI2s2IH5_3isa3isa1_14i_ext_hackatonB0(m_Name + ".s2", static_cast< ::codasip::resources::Uid>(299ULL)),
    MI2s3IH5_3isa3isa1_14i_ext_hackatonB0(m_Name + ".s3", static_cast< ::codasip::resources::Uid>(300ULL)),
    MI7simd_a0IH5_3isa3isa1_14i_ext_hackatonB0(m_Name + ".simd_a0", static_cast< ::codasip::resources::Uid>(301ULL)),
    MI7simd_a1IH5_3isa3isa1_14i_ext_hackatonB0(m_Name + ".simd_a1", static_cast< ::codasip::resources::Uid>(302ULL)),
    MI7simd_b0IH5_3isa3isa1_14i_ext_hackatonB0(m_Name + ".simd_b0", static_cast< ::codasip::resources::Uid>(303ULL)),
    MI7simd_b1IH5_3isa3isa1_14i_ext_hackatonB0(m_Name + ".simd_b1", static_cast< ::codasip::resources::Uid>(304ULL)),
    MI11accumulatorIH5_3isa3isa1_14i_ext_hackatonB0(m_Name + ".accumulator", static_cast< ::codasip::resources::Uid>(305ULL)),
    MI5summaIH5_3isa3isa1_14i_ext_hackatonB0(m_Name + ".summa", static_cast< ::codasip::resources::Uid>(306ULL)),
    MI17codasip_tmp_var_0IH5_3isa3isa1_14i_ext_hackaton(m_Name + ".codasip_tmp_var_0", static_cast< ::codasip::resources::Uid>(307ULL)),
    m_SysCalls(*this, 4, 4)
{
    m_Executable = "";
    size_t namePos = m_Name.rfind('.');
    if (namePos != std::string::npos) m_Name.erase(0, namePos+1);
    Elaborate(m_Log);
    InitRspJson();
    Insert(MI8m_memory);
    MI8m_memory.if_ldst.set_log(m_Log);
    MI8m_memory.if_fetch.set_log(m_Log);
    MI13r_instr_fetch.set_default_value(uint32_t(0u));
    Insert(MI13r_instr_fetch);
    MI13r_instr_fetch.set_log(m_Log);
    MI13r_fetch_fault.set_default_value(uint32_t(0u));
    Insert(MI13r_fetch_fault);
    MI13r_fetch_fault.set_log(m_Log);
    MI14r_pf_mem_error.set_default_value(uint32_t(0u));
    Insert(MI14r_pf_mem_error);
    MI14r_pf_mem_error.set_log(m_Log);
    MI18r_minstret_written.set_default_value(uint32_t(0u));
    Insert(MI18r_minstret_written);
    MI18r_minstret_written.set_log(m_Log);
    MI18r_minstret_inhibit.set_default_value(uint32_t(0u));
    Insert(MI18r_minstret_inhibit);
    MI18r_minstret_inhibit.set_log(m_Log);
    MI16r_mcycle_inhibit.set_default_value(uint32_t(0u));
    Insert(MI16r_mcycle_inhibit);
    MI16r_mcycle_inhibit.set_log(m_Log);
    MI15r_illegal_instr.set_default_value(uint32_t(0u));
    Insert(MI15r_illegal_instr);
    MI15r_illegal_instr.set_log(m_Log);
    MI15r_unknown_instr.set_default_value(uint32_t(0u));
    Insert(MI15r_unknown_instr);
    MI15r_unknown_instr.set_log(m_Log);
    MI13r_fetch_hresp.set_default_value(uint32_t(0u));
    Insert(MI13r_fetch_hresp);
    MI13r_fetch_hresp.set_log(m_Log);
    MI12r_ldst_hresp.set_default_value(uint32_t(0u));
    Insert(MI12r_ldst_hresp);
    MI12r_ldst_hresp.set_log(m_Log);
    MI5r_wfi.set_default_value(uint32_t(0u));
    Insert(MI5r_wfi);
    MI5r_wfi.set_log(m_Log);
    MI14r_csr_minstret.set_default_value(uint32_t(0u));
    Insert(MI14r_csr_minstret);
    MI14r_csr_minstret.set_architectural(true);
    MI14r_csr_minstret.set_log(m_Log);
    MI12r_csr_mcycle.set_default_value(uint32_t(0u));
    Insert(MI12r_csr_mcycle);
    MI12r_csr_mcycle.set_architectural(true);
    MI12r_csr_mcycle.set_log(m_Log);
    MI19r_csr_mcountinhibit.set_default_value(uint32_t(0u));
    MI19r_csr_mcountinhibit.set_write_mask(uint32_t(32381u));
    Insert(MI19r_csr_mcountinhibit);
    MI19r_csr_mcountinhibit.set_architectural(true);
    MI19r_csr_mcountinhibit.set_log(m_Log);
    MI13r_csr_mhartid.set_default_value(uint32_t(0u));
    MI13r_csr_mhartid.set_write_mask(uint32_t(0u));
    Insert(MI13r_csr_mhartid);
    MI13r_csr_mhartid.set_architectural(true);
    MI13r_csr_mhartid.set_log(m_Log);
    MI9r_csr_nmi.set_default_value(uint32_t(0u));
    Insert(MI9r_csr_nmi);
    MI9r_csr_nmi.set_architectural(true);
    MI9r_csr_nmi.set_log(m_Log);
    MI15r_csr_nmi_mtval.set_default_value(uint32_t(0u));
    Insert(MI15r_csr_nmi_mtval);
    MI15r_csr_nmi_mtval.set_architectural(true);
    MI15r_csr_nmi_mtval.set_log(m_Log);
    MI13r_nmi_handler.set_default_value(uint32_t(4100u));
    MI13r_nmi_handler.set_write_mask(uint32_t(0u));
    Insert(MI13r_nmi_handler);
    MI13r_nmi_handler.set_architectural(true);
    MI13r_nmi_handler.set_log(m_Log);
    MI9r_csr_mip.set_default_value(uint32_t(0u));
    MI9r_csr_mip.set_write_mask(uint32_t(2184u));
    Insert(MI9r_csr_mip);
    MI9r_csr_mip.set_architectural(true);
    MI9r_csr_mip.set_log(m_Log);
    MI9r_csr_mie.set_default_value(uint32_t(0u));
    MI9r_csr_mie.set_write_mask(uint32_t(2184u));
    Insert(MI9r_csr_mie);
    MI9r_csr_mie.set_architectural(true);
    MI9r_csr_mie.set_log(m_Log);
    MI11r_csr_mtval.set_default_value(uint32_t(0u));
    Insert(MI11r_csr_mtval);
    MI11r_csr_mtval.set_architectural(true);
    MI11r_csr_mtval.set_log(m_Log);
    MI10r_csr_mepc.set_default_value(uint32_t(0u));
    Insert(MI10r_csr_mepc);
    MI10r_csr_mepc.set_architectural(true);
    MI10r_csr_mepc.set_log(m_Log);
    MI12r_csr_mcause.set_default_value(uint32_t(0u));
    Insert(MI12r_csr_mcause);
    MI12r_csr_mcause.set_architectural(true);
    MI12r_csr_mcause.set_log(m_Log);
    MI14r_csr_mscratch.set_default_value(uint32_t(0u));
    Insert(MI14r_csr_mscratch);
    MI14r_csr_mscratch.set_architectural(true);
    MI14r_csr_mscratch.set_log(m_Log);
    MI11r_csr_mtvec.set_default_value(uint32_t(0u));
    Insert(MI11r_csr_mtvec);
    MI11r_csr_mtvec.set_architectural(true);
    MI11r_csr_mtvec.set_log(m_Log);
    MI13r_csr_mstatus.set_default_value(uint32_t(0u));
    Insert(MI13r_csr_mstatus);
    MI13r_csr_mstatus.set_architectural(true);
    MI13r_csr_mstatus.set_log(m_Log);
    MI10r_csr_misa.set_default_value(uint32_t(1073742080u));
    MI10r_csr_misa.set_write_mask(uint32_t(0u));
    Insert(MI10r_csr_misa);
    MI10r_csr_misa.set_architectural(true);
    MI10r_csr_misa.set_log(m_Log);
    MI13r_csr_marchid.set_default_value(uint32_t(2147483664u));
    MI13r_csr_marchid.set_write_mask(uint32_t(0u));
    Insert(MI13r_csr_marchid);
    MI13r_csr_marchid.set_architectural(true);
    MI13r_csr_marchid.set_log(m_Log);
    MI12r_reset_init.set_default_value(uint32_t(1u));
    Insert(MI12r_reset_init);
    MI12r_reset_init.set_log(m_Log);
    MI14r_syscall_addr.set_default_value(uint32_t(0u));
    Insert(MI14r_syscall_addr);
    MI14r_syscall_addr.set_log(m_Log);
    MI4r_PC.set_default_value(uint32_t(4096u));
    Insert(MI4r_PC);
    MI4r_PC.set_log(m_Log);
    MI6rf_gpr.set_default_value(uint32_t(0u));
    Insert(MI6rf_gpr);
    MI6rf_gpr.set_architectural(true);
    MI6rf_gpr.set_log(m_Log);
    Insert(MI6as_all_virt_program);
    Insert(MI6as_all_virt_data);
    Insert(MI6as_all);
    MI8r_wfi_ce.set_default_value(uint32_t(1u));
    Insert(MI8r_wfi_ce);
    MI8r_wfi_ce.set_log(m_Log);
    MI7if_ldst.set_address_alignment(4);
    MI7if_ldst.set_data_alignment({1, 2, 4});
    Insert(MI7if_ldst);
    MI7if_ldst.set_log(m_Log);
    MI8if_fetch.set_address_alignment(4);
    MI8if_fetch.set_data_alignment({4});
    Insert(MI8if_fetch);
    MI8if_fetch.set_log(m_Log);
    MI6p_meip.SetDirection(PortInfo::IN);
    Insert(MI6p_meip);
    MI6p_meip.set_log(m_Log);
    MI6p_msip.SetDirection(PortInfo::IN);
    Insert(MI6p_msip);
    MI6p_msip.set_log(m_Log);
    MI6p_mtip.SetDirection(PortInfo::IN);
    Insert(MI6p_mtip);
    MI6p_mtip.set_log(m_Log);
    MI5p_wfi.SetDirection(PortInfo::OUT);
    Insert(MI5p_wfi);
    MI5p_wfi.set_log(m_Log);
    MI5p_nmi.set_default_value(codasip::Integer<1, false>(0));
    MI5p_nmi.SetDirection(PortInfo::IN);
    Insert(MI5p_nmi);
    MI5p_nmi.set_log(m_Log);
    MI11p_nmi_mtval.set_default_value(uint32_t(0));
    MI11p_nmi_mtval.SetDirection(PortInfo::IN);
    Insert(MI11p_nmi_mtval);
    MI11p_nmi_mtval.set_log(m_Log);
    MI11p_boot_addr.set_default_value(uint32_t(4096));
    MI11p_boot_addr.SetDirection(PortInfo::IN);
    Insert(MI11p_boot_addr);
    MI11p_boot_addr.set_log(m_Log);
    MI17codasip_tmp_var_0IH1_4main.set_log(m_Log);
    MI17codasip_tmp_var_1IH1_4main.set_log(m_Log);
    MI17codasip_tmp_var_2IH1_4main.set_log(m_Log);
    MI17codasip_tmp_var_3IH1_4main.set_log(m_Log);
    MI17codasip_tmp_var_4IH1_4main.set_log(m_Log);
    MI17codasip_tmp_var_0IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.set_log(m_Log);
    MI17codasip_tmp_var_1IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.set_log(m_Log);
    MI17codasip_tmp_var_2IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.set_log(m_Log);
    MI5vaddrIH1_11fetch_instr.set_log(m_Log);
    MI5instrIH1_11fetch_instrB0.set_log(m_Log);
    MI17codasip_tmp_var_0IH1_11fetch_instr.set_log(m_Log);
    MI1iIH1_11rf_gpr_read.set_log(m_Log);
    MI3valIH1_11rf_gpr_readB0.set_log(m_Log);
    MI17codasip_tmp_var_0IH1_11rf_gpr_read.set_log(m_Log);
    MI1iIH1_12rf_gpr_write.set_log(m_Log);
    MI3valIH1_12rf_gpr_write.set_log(m_Log);
    MI17codasip_tmp_var_0IH1_12rf_gpr_write.set_log(m_Log);
    MI5haddrIH1_20fetch_interface_read.set_log(m_Log);
    MI5hsizeIH1_20fetch_interface_read.set_log(m_Log);
    MI6resultIH1_20fetch_interface_readB0.set_log(m_Log);
    MI5hrespIH1_20fetch_interface_readB0.set_log(m_Log);
    MI5hprotIH1_20fetch_interface_readB0.set_log(m_Log);
    MI5haddrIH1_19ldst_interface_read.set_log(m_Log);
    MI5hsizeIH1_19ldst_interface_read.set_log(m_Log);
    MI6resultIH1_19ldst_interface_readB0.set_log(m_Log);
    MI5hrespIH1_19ldst_interface_readB0.set_log(m_Log);
    MI5hprotIH1_19ldst_interface_readB0.set_log(m_Log);
    MI5wdataIH1_20ldst_interface_write.set_log(m_Log);
    MI5haddrIH1_20ldst_interface_write.set_log(m_Log);
    MI5hsizeIH1_20ldst_interface_write.set_log(m_Log);
    MI5hrespIH1_20ldst_interface_writeB0.set_log(m_Log);
    MI5hprotIH1_20ldst_interface_writeB0.set_log(m_Log);
    MI3opcIH1_8load_val.set_log(m_Log);
    MI7addressIH1_8load_val.set_log(m_Log);
    MI6resultIH1_8load_valB0.set_log(m_Log);
    MI3sbcIH1_8load_valB0.set_log(m_Log);
    MI17codasip_tmp_var_0IH1_8load_val.set_log(m_Log);
    MI17codasip_tmp_var_1IH1_8load_val.set_log(m_Log);
    MI17codasip_tmp_var_2IH1_8load_val.set_log(m_Log);
    MI17codasip_tmp_var_3IH1_8load_val.set_log(m_Log);
    MI11error_causeIH1_8load_valB0B10.set_log(m_Log);
    MI17codasip_tmp_var_4IH1_8load_val.set_log(m_Log);
    MI3opcIH1_9write_val.set_log(m_Log);
    MI7addressIH1_9write_val.set_log(m_Log);
    MI3valIH1_9write_val.set_log(m_Log);
    MI11error_causeIH1_9write_valB0.set_log(m_Log);
    MI3sbcIH1_9write_valB0.set_log(m_Log);
    MI17codasip_tmp_var_0IH1_9write_val.set_log(m_Log);
    MI17codasip_tmp_var_1IH1_9write_val.set_log(m_Log);
    MI17codasip_tmp_var_2IH1_9write_val.set_log(m_Log);
    MI17codasip_tmp_var_3IH1_9write_val.set_log(m_Log);
    MI17codasip_tmp_var_4IH1_9write_val.set_log(m_Log);
    MI17codasip_tmp_var_5IH1_9write_val.set_log(m_Log);
    MI17codasip_tmp_var_6IH1_9write_val.set_log(m_Log);
    MI3opcIH1_7compute.set_log(m_Log);
    MI3op1IH1_7compute.set_log(m_Log);
    MI3op2IH1_7compute.set_log(m_Log);
    MI6resultIH1_7computeB0.set_log(m_Log);
    MI17codasip_tmp_var_0IH1_7compute.set_log(m_Log);
    MI17codasip_tmp_var_1IH1_7compute.set_log(m_Log);
    MI17codasip_tmp_var_2IH1_7compute.set_log(m_Log);
    MI6retvalIH1_4haltB0.set_log(m_Log);
    MI10start_addrIH1_4haltB0B1.set_log(m_Log);
    MI8end_addrIH1_4haltB0B1.set_log(m_Log);
    MI7addressIH1_4haltB0B1.set_log(m_Log);
    MI17codasip_tmp_var_0IH1_4halt.set_log(m_Log);
    MI3sbcIH1_16check_mem_access.set_log(m_Log);
    MI7addressIH1_16check_mem_access.set_log(m_Log);
    MI10trap_causeIH1_15print_trap_info.set_log(m_Log);
    MI4tvalIH1_15print_trap_info.set_log(m_Log);
    MI9int_causeIH1_15print_trap_infoB0B0.set_log(m_Log);
    MI17codasip_tmp_var_0IH1_15print_trap_info.set_log(m_Log);
    MI17codasip_tmp_var_1IH1_15print_trap_info.set_log(m_Log);
    MI17codasip_tmp_var_2IH1_15print_trap_info.set_log(m_Log);
    MI3opcIH1_17csr_get_write_val.set_log(m_Log);
    MI7currValIH1_17csr_get_write_val.set_log(m_Log);
    MI8writeValIH1_17csr_get_write_val.set_log(m_Log);
    MI6retvalIH1_17csr_get_write_valB0.set_log(m_Log);
    MI17codasip_tmp_var_0IH1_17csr_get_write_val.set_log(m_Log);
    MI3menIH1_8take_intB0.set_log(m_Log);
    MI7pendingIH1_8take_intB0.set_log(m_Log);
    MI7enabledIH1_8take_intB0.set_log(m_Log);
    MI9int_causeIH1_8take_intB0.set_log(m_Log);
    MI9nmi_mtvalIH1_8take_intB0.set_log(m_Log);
    MI3nmiIH1_8take_intB0.set_log(m_Log);
    MI17codasip_tmp_var_0IH1_8take_int.set_log(m_Log);
    MI17codasip_tmp_var_1IH1_8take_int.set_log(m_Log);
    MI17codasip_tmp_var_2IH1_8take_int.set_log(m_Log);
    MI17codasip_tmp_var_3IH1_8take_int.set_log(m_Log);
    MI17codasip_tmp_var_4IH1_8take_int.set_log(m_Log);
    MI17codasip_tmp_var_5IH1_8take_int.set_log(m_Log);
    MI17codasip_tmp_var_6IH1_8take_int.set_log(m_Log);
    MI10trap_causeIH1_9take_trap.set_log(m_Log);
    MI7bad_valIH1_9take_trap.set_log(m_Log);
    MI9decrementIH1_9take_trap.set_log(m_Log);
    MI5causeIH1_9take_trapB0B0.set_log(m_Log);
    MI17codasip_tmp_var_0IH1_9take_trap.set_log(m_Log);
    MI17codasip_tmp_var_1IH1_9take_trap.set_log(m_Log);
    MI17codasip_tmp_var_3IH1_9take_trap.set_log(m_Log);
    MI17codasip_tmp_var_4IH1_9take_trap.set_log(m_Log);
    MI17codasip_tmp_var_2IH1_9take_trap.set_log(m_Log);
    MI4mpieIH1_8do_xcallB0.set_log(m_Log);
    MI10int_enableIH1_7do_xretB0.set_log(m_Log);
    MI15prev_int_enableIH1_7do_xretB0.set_log(m_Log);
    MI3srcIH1_18csr_read_write_reg.set_log(m_Log);
    MI3csrIH1_18csr_read_write_reg.set_log(m_Log);
    MI3opcIH1_18csr_read_write_reg.set_log(m_Log);
    MI8writeValIH1_18csr_read_write_regB0.set_log(m_Log);
    MI7readValIH1_18csr_read_write_regB0.set_log(m_Log);
    MI8is_writeIH1_18csr_read_write_regB0.set_log(m_Log);
    MI17codasip_tmp_var_0IH1_18csr_read_write_reg.set_log(m_Log);
    MI3immIH1_18csr_read_write_imm.set_log(m_Log);
    MI3csrIH1_18csr_read_write_imm.set_log(m_Log);
    MI3opcIH1_18csr_read_write_imm.set_log(m_Log);
    MI7readValIH1_18csr_read_write_immB0.set_log(m_Log);
    MI8is_writeIH1_18csr_read_write_immB0.set_log(m_Log);
    MI17codasip_tmp_var_0IH1_18csr_read_write_imm.set_log(m_Log);
    MI8writeValIH1_14csr_read_write.set_log(m_Log);
    MI3csrIH1_14csr_read_write.set_log(m_Log);
    MI3opcIH1_14csr_read_write.set_log(m_Log);
    MI8is_writeIH1_14csr_read_write.set_log(m_Log);
    MI7readValIH1_14csr_read_writeB0.set_log(m_Log);
    MI17codasip_tmp_var_0IH1_14csr_read_write.set_log(m_Log);
    MI17codasip_tmp_var_1IH1_14csr_read_write.set_log(m_Log);
    MI17codasip_tmp_var_2IH1_14csr_read_write.set_log(m_Log);
    MI17codasip_tmp_var_3IH1_14csr_read_write.set_log(m_Log);
    MI17codasip_tmp_var_4IH1_14csr_read_write.set_log(m_Log);
    MI17codasip_tmp_var_5IH1_14csr_read_write.set_log(m_Log);
    MI17codasip_tmp_var_6IH1_14csr_read_write.set_log(m_Log);
    MI17codasip_tmp_var_7IH1_14csr_read_write.set_log(m_Log);
    MI17codasip_tmp_var_8IH1_14csr_read_write.set_log(m_Log);
    MI17codasip_tmp_var_9IH1_14csr_read_write.set_log(m_Log);
    MI18codasip_tmp_var_10IH1_14csr_read_write.set_log(m_Log);
    MI18codasip_tmp_var_11IH1_14csr_read_write.set_log(m_Log);
    MI18codasip_tmp_var_12IH1_14csr_read_write.set_log(m_Log);
    MI18codasip_tmp_var_13IH1_14csr_read_write.set_log(m_Log);
    MI11INSTRUCTIONIH5_3isa3isa1_3isa.set_log(m_Log);
    MI19INVALID_INSTRUCTIONIH5_3isa3isa1_3isa.set_log(m_Log);
    MI8writeValIH5_3isa3isa1_23i_control_registers_regB0.set_log(m_Log);
    MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_reg.set_log(m_Log);
    MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_reg.set_log(m_Log);
    MI8writeValIH5_3isa3isa1_23i_control_registers_immB0.set_log(m_Log);
    MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_imm.set_log(m_Log);
    MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_imm.set_log(m_Log);
    MI3valIH5_3isa3isa1_15i_comp_2reg_immB0.set_log(m_Log);
    MI3valIH5_3isa3isa1_21i_comp_2reg_imm_shiftB0.set_log(m_Log);
    MI8jmp_addrIH5_3isa3isa1_5i_jalB0.set_log(m_Log);
    MI3tmpIH5_3isa3isa1_5i_jalB0.set_log(m_Log);
    MI17codasip_tmp_var_0IH5_3isa3isa1_5i_jal.set_log(m_Log);
    MI3valIH5_3isa3isa1_6i_jalrB0.set_log(m_Log);
    MI8jmp_addrIH5_3isa3isa1_6i_jalrB0.set_log(m_Log);
    MI3tmpIH5_3isa3isa1_6i_jalrB0.set_log(m_Log);
    MI17codasip_tmp_var_0IH5_3isa3isa1_6i_jalr.set_log(m_Log);
    MI17codasip_tmp_var_0IH5_3isa3isa1_21i_control_conditional.set_log(m_Log);
    MI8jmp_addrIH5_3isa3isa1_21i_control_conditionalB0B1.set_log(m_Log);
    MI17codasip_tmp_var_1IH5_3isa3isa1_21i_control_conditional.set_log(m_Log);
    MI3valIH5_3isa3isa1_6i_loadB0.set_log(m_Log);
    MI4addrIH5_3isa3isa1_6i_loadB0.set_log(m_Log);
    MI17codasip_tmp_var_0IH5_3isa3isa1_6i_load.set_log(m_Log);
    MI4addrIH5_3isa3isa1_7i_storeB0.set_log(m_Log);
    MI4dataIH5_3isa3isa1_7i_storeB0.set_log(m_Log);
    MI1iIH5_3isa3isa1_8i_ebreakB0.set_log(m_Log);
    MI17codasip_tmp_var_0IH5_3isa3isa1_6i_xret.set_log(m_Log);
    MI3valIH5_3isa3isa1_8i_lui_hiB0.set_log(m_Log);
    MI3tmpIH5_3isa3isa1_16i_call_rel_aliasB0.set_log(m_Log);
    MI3tmpIH5_3isa3isa1_16i_call_reg_aliasB0.set_log(m_Log);
    MI6resultIH5_3isa3isa1_14i_ext_hackatonB0.set_log(m_Log);
    MI2s1IH5_3isa3isa1_14i_ext_hackatonB0.set_log(m_Log);
    MI2s2IH5_3isa3isa1_14i_ext_hackatonB0.set_log(m_Log);
    MI2s3IH5_3isa3isa1_14i_ext_hackatonB0.set_log(m_Log);
    MI7simd_a0IH5_3isa3isa1_14i_ext_hackatonB0.set_log(m_Log);
    MI7simd_a1IH5_3isa3isa1_14i_ext_hackatonB0.set_log(m_Log);
    MI7simd_b0IH5_3isa3isa1_14i_ext_hackatonB0.set_log(m_Log);
    MI7simd_b1IH5_3isa3isa1_14i_ext_hackatonB0.set_log(m_Log);
    MI11accumulatorIH5_3isa3isa1_14i_ext_hackatonB0.set_log(m_Log);
    MI5summaIH5_3isa3isa1_14i_ext_hackatonB0.set_log(m_Log);
    MI17codasip_tmp_var_0IH5_3isa3isa1_14i_ext_hackaton.set_log(m_Log);
    m_SysCalls.SetMhz(100);
}
int Sim::Reset()
{
    m_Halt = SIM_OK;
    m_ExitMsg.clear();
    int rc = SIM_OK;
    m_SimCycleCounter = 0;
    MI8m_memory.reset();
    MI13r_instr_fetch.reset();
    MI13r_fetch_fault.reset();
    MI14r_pf_mem_error.reset();
    MI18r_minstret_written.reset();
    MI18r_minstret_inhibit.reset();
    MI16r_mcycle_inhibit.reset();
    MI15r_illegal_instr.reset();
    MI15r_unknown_instr.reset();
    MI13r_fetch_hresp.reset();
    MI12r_ldst_hresp.reset();
    MI5r_wfi.reset();
    MI14r_csr_minstret.reset();
    MI12r_csr_mcycle.reset();
    MI19r_csr_mcountinhibit.reset();
    MI13r_csr_mhartid.reset();
    MI9r_csr_nmi.reset();
    MI15r_csr_nmi_mtval.reset();
    MI13r_nmi_handler.reset();
    MI9r_csr_mip.reset();
    MI9r_csr_mie.reset();
    MI11r_csr_mtval.reset();
    MI10r_csr_mepc.reset();
    MI12r_csr_mcause.reset();
    MI14r_csr_mscratch.reset();
    MI11r_csr_mtvec.reset();
    MI13r_csr_mstatus.reset();
    MI10r_csr_misa.reset();
    MI13r_csr_marchid.reset();
    MI12r_reset_init.reset();
    MI14r_syscall_addr.reset();
    MI4r_PC.reset();
    MI6rf_gpr.reset();
    MI8r_wfi_ce.reset();
    MI7if_ldst.reset();
    MI8if_fetch.reset();
    MI6p_meip.reset();
    MI6p_msip.reset();
    MI6p_mtip.reset();
    MI5p_wfi.reset();
    MI5p_nmi.reset();
    MI11p_nmi_mtval.reset();
    MI11p_boot_addr.reset();
    bool haltableErrorFlag = false;
    try
    {
        try
        {
            MI5reset();
            BeforeResumeCallback();
        }
        catch (const simulator::HaltableError& ex)
        {
            haltableErrorFlag = true;
            // rest of the handling will handle nested std::exception catch
            throw;
        }
    }
    catch (const std::exception& ex)
    {
        if (m_Halt == SIM_OK)
            m_Halt = SIM_FAIL;
        if (strlen(ex.what()) > 0)
            SIM_LOG(LOG_TYPE_FATAL, m_Halt, m_SimCycleCounter) << ex.what();
        m_ExitMsg = ex.what();
    }
    if (m_GlobalHalt == GLOBAL_HALT_EXIT) {
        m_Halt = SIM_KILLED;
    }
    m_SimCycleCounter++;
    if (m_ResetCallback)
    {
        m_ResetCallback();
    }
    return SIM_OK;
}
const char* Sim::GetPath() const 
{
    return ResourceInfo::GetPath();
}
const std::string& Sim::GetName() const 
{
    return m_Name;
}
Uid Sim::GetUid() const 
{
    return m_Uid;
}
void Sim::SetCycleCount(const uint64_t val)
{
    m_SimCycleCounter = val;
}
void Sim::SetLogging(const char* options)
{
    m_Log.SetLogging(options);
}
const char* Sim::GetLastError() const 
{
    return m_Log.GetLastError().c_str();
}
void Sim::Elaborate(Log& parentLog)
{
    // connections of the MI8m_memory
    // connections of the MI17codasip_testbench
    // connections of the MI15codasip_urisc_v
    MI7if_ldst.bind(MI8m_memory.if_ldst);
    MI8if_fetch.bind(MI8m_memory.if_fetch);
}
int Sim::Run()
{
    int rc = SIM_OK;
    do {
        rc = Sim::ClockCycle();
    } while (rc == SIM_OK && m_GlobalHalt == GLOBAL_HALT_OK);
    return rc;
}
Type Sim::GetType() const 
{
    return ASIP;
}
SimulatorPrivateInterface* Sim::GetSimulator() const 
{
    return const_cast<SimulatorPrivateInterface*>(static_cast<const SimulatorPrivateInterface*>(this));
}
SimulatorPrivateInterface::Features Sim::GetFeatures() const 
{
    return (Features)(SIMULATOR_IA | DEBUGGER | SYSCALL);
}
void Sim::SetTimeout(const uint64_t timeout)
{
    m_SimCycleTimeout = timeout;
}
void Sim::SetSyscall(const Address address)
{
    m_SysCalls.SetUserAddress(address);
}
int Sim::GetSimExitCode() const 
{
    return m_SimExitCode;
}
void Sim::AfterInterruptCallback()
{
    m_WasInterruptedByDebugger = true;
}
disassembler::Disassembler& Sim::GetDisassembler()
{
    return *m_Disassembler;
}
void Sim::SetDisableEbreakInterrupt(const bool disableEbreakInterrupt)
{
    RspTarget::SetDisableEbreakInterrupt(disableEbreakInterrupt);
}
bool Sim::ResourceRead(MaxUint& data, const debugger::Tid tid, const debugger::Did dwarf) const 
{
    switch (dwarf) {
        case 64: {
        data = MI6p_meip.dread();
        return true;
        }
        case 65: {
        data = MI6p_msip.dread();
        return true;
        }
        case 66: {
        data = MI6p_mtip.dread();
        return true;
        }
        case 67: {
        data = MI5p_wfi.dread();
        return true;
        }
        case 68: {
        data = MI5p_nmi.dread();
        return true;
        }
        case 69: {
        data = MI11p_nmi_mtval.dread();
        return true;
        }
        case 70: {
        data = MI11p_boot_addr.dread();
        return true;
        }
        case 3000000229: {
        data = MI90codasip_return_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc.dread();
        return true;
        }
        case 3000000230: {
        data = MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.dread();
        return true;
        }
        case 3000000231: {
        data = MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.dread();
        return true;
        }
        case 3000000232: {
        data = MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.dread();
        return true;
        }
        case 3000000236: {
        data = MI90codasip_return_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc.dread();
        return true;
        }
        case 3000000237: {
        data = MI45codasip_return_MI4imm5IH5_3isa3isa6_4imm53imm.dread();
        return true;
        }
        case 3000000241: {
        data = MI74codasip_return_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc.dread();
        return true;
        }
        case 3000000242: {
        data = MI52codasip_return_MI6simm12IH5_3isa3isa8_6simm126simm12.dread();
        return true;
        }
        case 3000000244: {
        data = MI86codasip_return_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc.dread();
        return true;
        }
        case 3000000245: {
        data = MI56codasip_return_MI9shift_immIH5_3isa3isa11_9shift_imm3imm.dread();
        return true;
        }
        case 3000000247: {
        data = MI56codasip_return_MI9imm20_s12IH5_3isa3isa11_9imm20_s123imm.dread();
        return true;
        }
        case 3000000250: {
        data = MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc.dread();
        return true;
        }
        case 3000000251: {
        data = MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.dread();
        return true;
        }
        case 3000000252: {
        data = MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.dread();
        return true;
        }
        case 3000000253: {
        data = MI61codasip_return_MI10rel_addr20IH5_3isa3isa13_10rel_addr204addr.dread();
        return true;
        }
        case 3000000263: {
        data = MI86codasip_return_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc.dread();
        return true;
        }
        case 3000000264: {
        data = MI61codasip_return_MI10rel_addr12IH5_3isa3isa13_10rel_addr124addr.dread();
        return true;
        }
        case 3000000268: {
        data = MI56codasip_return_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc.dread();
        return true;
        }
        case 3000000272: {
        data = MI59codasip_return_MI8simm12_sIH5_3isa3isa10_8simm12_s8simm12_s.dread();
        return true;
        }
        case 3000000273: {
        data = MI60codasip_return_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc.dread();
        return true;
        }
        case 3000000282: {
        data = MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.dread();
        return true;
        }
        case 3000000283: {
        data = MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.dread();
        return true;
        }
        case 3000000290: {
        data = MI54codasip_return_MI8imm20_hiIH5_3isa3isa10_8imm20_hi3imm.dread();
        return true;
        }
        case 3000000294: {
        data = MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.dread();
        return true;
        }
        case 3000000295: {
        data = MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.dread();
        return true;
        }
        case 3000000296: {
        data = MI82codasip_return_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc.dread();
        return true;
        }
        case 3000000050: {
        data = MI17codasip_tmp_var_0IH1_4main.dread();
        return true;
        }
        case 3000000051: {
        data = MI17codasip_tmp_var_1IH1_4main.dread();
        return true;
        }
        case 3000000052: {
        data = MI17codasip_tmp_var_2IH1_4main.dread();
        return true;
        }
        case 3000000053: {
        data = MI17codasip_tmp_var_3IH1_4main.dread();
        return true;
        }
        case 3000000054: {
        data = MI17codasip_tmp_var_4IH1_4main.dread();
        return true;
        }
        case 3000000055: {
        data = MI17codasip_tmp_var_0IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.dread();
        return true;
        }
        case 3000000056: {
        data = MI17codasip_tmp_var_1IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.dread();
        return true;
        }
        case 3000000057: {
        data = MI17codasip_tmp_var_2IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.dread();
        return true;
        }
        case 3000000059: {
        data = MI5vaddrIH1_11fetch_instr.dread();
        return true;
        }
        case 3000000060: {
        data = MI5instrIH1_11fetch_instrB0.dread();
        return true;
        }
        case 3000000061: {
        data = MI17codasip_tmp_var_0IH1_11fetch_instr.dread();
        return true;
        }
        case 3000000063: {
        data = MI1iIH1_11rf_gpr_read.dread();
        return true;
        }
        case 3000000064: {
        data = MI3valIH1_11rf_gpr_readB0.dread();
        return true;
        }
        case 3000000065: {
        data = MI17codasip_tmp_var_0IH1_11rf_gpr_read.dread();
        return true;
        }
        case 3000000068: {
        data = MI1iIH1_12rf_gpr_write.dread();
        return true;
        }
        case 3000000069: {
        data = MI3valIH1_12rf_gpr_write.dread();
        return true;
        }
        case 3000000070: {
        data = MI17codasip_tmp_var_0IH1_12rf_gpr_write.dread();
        return true;
        }
        case 3000000073: {
        data = MI5haddrIH1_20fetch_interface_read.dread();
        return true;
        }
        case 3000000074: {
        data = MI5hsizeIH1_20fetch_interface_read.dread();
        return true;
        }
        case 3000000075: {
        data = MI6resultIH1_20fetch_interface_readB0.dread();
        return true;
        }
        case 3000000076: {
        data = MI5hrespIH1_20fetch_interface_readB0.dread();
        return true;
        }
        case 3000000077: {
        data = MI5hprotIH1_20fetch_interface_readB0.dread();
        return true;
        }
        case 3000000080: {
        data = MI5haddrIH1_19ldst_interface_read.dread();
        return true;
        }
        case 3000000081: {
        data = MI5hsizeIH1_19ldst_interface_read.dread();
        return true;
        }
        case 3000000082: {
        data = MI6resultIH1_19ldst_interface_readB0.dread();
        return true;
        }
        case 3000000083: {
        data = MI5hrespIH1_19ldst_interface_readB0.dread();
        return true;
        }
        case 3000000084: {
        data = MI5hprotIH1_19ldst_interface_readB0.dread();
        return true;
        }
        case 3000000088: {
        data = MI5wdataIH1_20ldst_interface_write.dread();
        return true;
        }
        case 3000000089: {
        data = MI5haddrIH1_20ldst_interface_write.dread();
        return true;
        }
        case 3000000090: {
        data = MI5hsizeIH1_20ldst_interface_write.dread();
        return true;
        }
        case 3000000091: {
        data = MI5hrespIH1_20ldst_interface_writeB0.dread();
        return true;
        }
        case 3000000092: {
        data = MI5hprotIH1_20ldst_interface_writeB0.dread();
        return true;
        }
        case 3000000095: {
        data = MI3opcIH1_8load_val.dread();
        return true;
        }
        case 3000000096: {
        data = MI7addressIH1_8load_val.dread();
        return true;
        }
        case 3000000097: {
        data = MI6resultIH1_8load_valB0.dread();
        return true;
        }
        case 3000000098: {
        data = MI3sbcIH1_8load_valB0.dread();
        return true;
        }
        case 3000000099: {
        data = MI17codasip_tmp_var_0IH1_8load_val.dread();
        return true;
        }
        case 3000000100: {
        data = MI17codasip_tmp_var_1IH1_8load_val.dread();
        return true;
        }
        case 3000000101: {
        data = MI17codasip_tmp_var_2IH1_8load_val.dread();
        return true;
        }
        case 3000000102: {
        data = MI17codasip_tmp_var_3IH1_8load_val.dread();
        return true;
        }
        case 3000000103: {
        data = MI11error_causeIH1_8load_valB0B10.dread();
        return true;
        }
        case 3000000104: {
        data = MI17codasip_tmp_var_4IH1_8load_val.dread();
        return true;
        }
        case 3000000108: {
        data = MI3opcIH1_9write_val.dread();
        return true;
        }
        case 3000000109: {
        data = MI7addressIH1_9write_val.dread();
        return true;
        }
        case 3000000110: {
        data = MI3valIH1_9write_val.dread();
        return true;
        }
        case 3000000111: {
        data = MI11error_causeIH1_9write_valB0.dread();
        return true;
        }
        case 3000000112: {
        data = MI3sbcIH1_9write_valB0.dread();
        return true;
        }
        case 3000000113: {
        data = MI17codasip_tmp_var_0IH1_9write_val.dread();
        return true;
        }
        case 3000000114: {
        data = MI17codasip_tmp_var_1IH1_9write_val.dread();
        return true;
        }
        case 3000000115: {
        data = MI17codasip_tmp_var_2IH1_9write_val.dread();
        return true;
        }
        case 3000000116: {
        data = MI17codasip_tmp_var_3IH1_9write_val.dread();
        return true;
        }
        case 3000000117: {
        data = MI17codasip_tmp_var_4IH1_9write_val.dread();
        return true;
        }
        case 3000000118: {
        data = MI17codasip_tmp_var_5IH1_9write_val.dread();
        return true;
        }
        case 3000000119: {
        data = MI17codasip_tmp_var_6IH1_9write_val.dread();
        return true;
        }
        case 3000000123: {
        data = MI3opcIH1_7compute.dread();
        return true;
        }
        case 3000000124: {
        data = MI3op1IH1_7compute.dread();
        return true;
        }
        case 3000000125: {
        data = MI3op2IH1_7compute.dread();
        return true;
        }
        case 3000000126: {
        data = MI6resultIH1_7computeB0.dread();
        return true;
        }
        case 3000000127: {
        data = MI17codasip_tmp_var_0IH1_7compute.dread();
        return true;
        }
        case 3000000128: {
        data = MI17codasip_tmp_var_1IH1_7compute.dread();
        return true;
        }
        case 3000000129: {
        data = MI17codasip_tmp_var_2IH1_7compute.dread();
        return true;
        }
        case 3000000130: {
        data = MI6retvalIH1_4haltB0.dread();
        return true;
        }
        case 3000000131: {
        data = MI10start_addrIH1_4haltB0B1.dread();
        return true;
        }
        case 3000000132: {
        data = MI8end_addrIH1_4haltB0B1.dread();
        return true;
        }
        case 3000000133: {
        data = MI7addressIH1_4haltB0B1.dread();
        return true;
        }
        case 3000000134: {
        data = MI17codasip_tmp_var_0IH1_4halt.dread();
        return true;
        }
        case 3000000137: {
        data = MI3sbcIH1_16check_mem_access.dread();
        return true;
        }
        case 3000000138: {
        data = MI7addressIH1_16check_mem_access.dread();
        return true;
        }
        case 3000000141: {
        data = MI10trap_causeIH1_15print_trap_info.dread();
        return true;
        }
        case 3000000142: {
        data = MI4tvalIH1_15print_trap_info.dread();
        return true;
        }
        case 3000000143: {
        data = MI9int_causeIH1_15print_trap_infoB0B0.dread();
        return true;
        }
        case 3000000144: {
        data = MI17codasip_tmp_var_0IH1_15print_trap_info.dread();
        return true;
        }
        case 3000000145: {
        data = MI17codasip_tmp_var_1IH1_15print_trap_info.dread();
        return true;
        }
        case 3000000146: {
        data = MI17codasip_tmp_var_2IH1_15print_trap_info.dread();
        return true;
        }
        case 3000000150: {
        data = MI3opcIH1_17csr_get_write_val.dread();
        return true;
        }
        case 3000000151: {
        data = MI7currValIH1_17csr_get_write_val.dread();
        return true;
        }
        case 3000000152: {
        data = MI8writeValIH1_17csr_get_write_val.dread();
        return true;
        }
        case 3000000153: {
        data = MI6retvalIH1_17csr_get_write_valB0.dread();
        return true;
        }
        case 3000000154: {
        data = MI17codasip_tmp_var_0IH1_17csr_get_write_val.dread();
        return true;
        }
        case 3000000155: {
        data = MI3menIH1_8take_intB0.dread();
        return true;
        }
        case 3000000156: {
        data = MI7pendingIH1_8take_intB0.dread();
        return true;
        }
        case 3000000157: {
        data = MI7enabledIH1_8take_intB0.dread();
        return true;
        }
        case 3000000158: {
        data = MI9int_causeIH1_8take_intB0.dread();
        return true;
        }
        case 3000000159: {
        data = MI9nmi_mtvalIH1_8take_intB0.dread();
        return true;
        }
        case 3000000160: {
        data = MI3nmiIH1_8take_intB0.dread();
        return true;
        }
        case 3000000161: {
        data = MI17codasip_tmp_var_0IH1_8take_int.dread();
        return true;
        }
        case 3000000162: {
        data = MI17codasip_tmp_var_1IH1_8take_int.dread();
        return true;
        }
        case 3000000163: {
        data = MI17codasip_tmp_var_2IH1_8take_int.dread();
        return true;
        }
        case 3000000164: {
        data = MI17codasip_tmp_var_3IH1_8take_int.dread();
        return true;
        }
        case 3000000165: {
        data = MI17codasip_tmp_var_4IH1_8take_int.dread();
        return true;
        }
        case 3000000166: {
        data = MI17codasip_tmp_var_5IH1_8take_int.dread();
        return true;
        }
        case 3000000167: {
        data = MI17codasip_tmp_var_6IH1_8take_int.dread();
        return true;
        }
        case 3000000171: {
        data = MI10trap_causeIH1_9take_trap.dread();
        return true;
        }
        case 3000000172: {
        data = MI7bad_valIH1_9take_trap.dread();
        return true;
        }
        case 3000000173: {
        data = MI9decrementIH1_9take_trap.dread();
        return true;
        }
        case 3000000174: {
        data = MI5causeIH1_9take_trapB0B0.dread();
        return true;
        }
        case 3000000175: {
        data = MI17codasip_tmp_var_0IH1_9take_trap.dread();
        return true;
        }
        case 3000000176: {
        data = MI17codasip_tmp_var_1IH1_9take_trap.dread();
        return true;
        }
        case 3000000177: {
        data = MI17codasip_tmp_var_3IH1_9take_trap.dread();
        return true;
        }
        case 3000000178: {
        data = MI17codasip_tmp_var_4IH1_9take_trap.dread();
        return true;
        }
        case 3000000179: {
        data = MI17codasip_tmp_var_2IH1_9take_trap.dread();
        return true;
        }
        case 3000000180: {
        data = MI4mpieIH1_8do_xcallB0.dread();
        return true;
        }
        case 3000000181: {
        data = MI10int_enableIH1_7do_xretB0.dread();
        return true;
        }
        case 3000000182: {
        data = MI15prev_int_enableIH1_7do_xretB0.dread();
        return true;
        }
        case 3000000186: {
        data = MI3srcIH1_18csr_read_write_reg.dread();
        return true;
        }
        case 3000000187: {
        data = MI3csrIH1_18csr_read_write_reg.dread();
        return true;
        }
        case 3000000188: {
        data = MI3opcIH1_18csr_read_write_reg.dread();
        return true;
        }
        case 3000000189: {
        data = MI8writeValIH1_18csr_read_write_regB0.dread();
        return true;
        }
        case 3000000190: {
        data = MI7readValIH1_18csr_read_write_regB0.dread();
        return true;
        }
        case 3000000191: {
        data = MI8is_writeIH1_18csr_read_write_regB0.dread();
        return true;
        }
        case 3000000192: {
        data = MI17codasip_tmp_var_0IH1_18csr_read_write_reg.dread();
        return true;
        }
        case 3000000196: {
        data = MI3immIH1_18csr_read_write_imm.dread();
        return true;
        }
        case 3000000197: {
        data = MI3csrIH1_18csr_read_write_imm.dread();
        return true;
        }
        case 3000000198: {
        data = MI3opcIH1_18csr_read_write_imm.dread();
        return true;
        }
        case 3000000199: {
        data = MI7readValIH1_18csr_read_write_immB0.dread();
        return true;
        }
        case 3000000200: {
        data = MI8is_writeIH1_18csr_read_write_immB0.dread();
        return true;
        }
        case 3000000201: {
        data = MI17codasip_tmp_var_0IH1_18csr_read_write_imm.dread();
        return true;
        }
        case 3000000206: {
        data = MI8writeValIH1_14csr_read_write.dread();
        return true;
        }
        case 3000000207: {
        data = MI3csrIH1_14csr_read_write.dread();
        return true;
        }
        case 3000000208: {
        data = MI3opcIH1_14csr_read_write.dread();
        return true;
        }
        case 3000000209: {
        data = MI8is_writeIH1_14csr_read_write.dread();
        return true;
        }
        case 3000000210: {
        data = MI7readValIH1_14csr_read_writeB0.dread();
        return true;
        }
        case 3000000211: {
        data = MI17codasip_tmp_var_0IH1_14csr_read_write.dread();
        return true;
        }
        case 3000000212: {
        data = MI17codasip_tmp_var_1IH1_14csr_read_write.dread();
        return true;
        }
        case 3000000213: {
        data = MI17codasip_tmp_var_2IH1_14csr_read_write.dread();
        return true;
        }
        case 3000000214: {
        data = MI17codasip_tmp_var_3IH1_14csr_read_write.dread();
        return true;
        }
        case 3000000215: {
        data = MI17codasip_tmp_var_4IH1_14csr_read_write.dread();
        return true;
        }
        case 3000000216: {
        data = MI17codasip_tmp_var_5IH1_14csr_read_write.dread();
        return true;
        }
        case 3000000217: {
        data = MI17codasip_tmp_var_6IH1_14csr_read_write.dread();
        return true;
        }
        case 3000000218: {
        data = MI17codasip_tmp_var_7IH1_14csr_read_write.dread();
        return true;
        }
        case 3000000219: {
        data = MI17codasip_tmp_var_8IH1_14csr_read_write.dread();
        return true;
        }
        case 3000000220: {
        data = MI17codasip_tmp_var_9IH1_14csr_read_write.dread();
        return true;
        }
        case 3000000221: {
        data = MI18codasip_tmp_var_10IH1_14csr_read_write.dread();
        return true;
        }
        case 3000000222: {
        data = MI18codasip_tmp_var_11IH1_14csr_read_write.dread();
        return true;
        }
        case 3000000223: {
        data = MI18codasip_tmp_var_12IH1_14csr_read_write.dread();
        return true;
        }
        case 3000000224: {
        data = MI18codasip_tmp_var_13IH1_14csr_read_write.dread();
        return true;
        }
        case 3000000227: {
        data = MI11INSTRUCTIONIH5_3isa3isa1_3isa.dread();
        return true;
        }
        case 3000000228: {
        data = MI19INVALID_INSTRUCTIONIH5_3isa3isa1_3isa.dread();
        return true;
        }
        case 3000000233: {
        data = MI8writeValIH5_3isa3isa1_23i_control_registers_regB0.dread();
        return true;
        }
        case 3000000234: {
        data = MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_reg.dread();
        return true;
        }
        case 3000000235: {
        data = MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_reg.dread();
        return true;
        }
        case 3000000238: {
        data = MI8writeValIH5_3isa3isa1_23i_control_registers_immB0.dread();
        return true;
        }
        case 3000000239: {
        data = MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_imm.dread();
        return true;
        }
        case 3000000240: {
        data = MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_imm.dread();
        return true;
        }
        case 3000000243: {
        data = MI3valIH5_3isa3isa1_15i_comp_2reg_immB0.dread();
        return true;
        }
        case 3000000246: {
        data = MI3valIH5_3isa3isa1_21i_comp_2reg_imm_shiftB0.dread();
        return true;
        }
        case 3000000254: {
        data = MI8jmp_addrIH5_3isa3isa1_5i_jalB0.dread();
        return true;
        }
        case 3000000255: {
        data = MI3tmpIH5_3isa3isa1_5i_jalB0.dread();
        return true;
        }
        case 3000000256: {
        data = MI17codasip_tmp_var_0IH5_3isa3isa1_5i_jal.dread();
        return true;
        }
        case 3000000258: {
        data = MI3valIH5_3isa3isa1_6i_jalrB0.dread();
        return true;
        }
        case 3000000259: {
        data = MI8jmp_addrIH5_3isa3isa1_6i_jalrB0.dread();
        return true;
        }
        case 3000000260: {
        data = MI3tmpIH5_3isa3isa1_6i_jalrB0.dread();
        return true;
        }
        case 3000000261: {
        data = MI17codasip_tmp_var_0IH5_3isa3isa1_6i_jalr.dread();
        return true;
        }
        case 3000000265: {
        data = MI17codasip_tmp_var_0IH5_3isa3isa1_21i_control_conditional.dread();
        return true;
        }
        case 3000000266: {
        data = MI8jmp_addrIH5_3isa3isa1_21i_control_conditionalB0B1.dread();
        return true;
        }
        case 3000000267: {
        data = MI17codasip_tmp_var_1IH5_3isa3isa1_21i_control_conditional.dread();
        return true;
        }
        case 3000000269: {
        data = MI3valIH5_3isa3isa1_6i_loadB0.dread();
        return true;
        }
        case 3000000270: {
        data = MI4addrIH5_3isa3isa1_6i_loadB0.dread();
        return true;
        }
        case 3000000271: {
        data = MI17codasip_tmp_var_0IH5_3isa3isa1_6i_load.dread();
        return true;
        }
        case 3000000274: {
        data = MI4addrIH5_3isa3isa1_7i_storeB0.dread();
        return true;
        }
        case 3000000275: {
        data = MI4dataIH5_3isa3isa1_7i_storeB0.dread();
        return true;
        }
        case 3000000277: {
        data = MI1iIH5_3isa3isa1_8i_ebreakB0.dread();
        return true;
        }
        case 3000000280: {
        data = MI17codasip_tmp_var_0IH5_3isa3isa1_6i_xret.dread();
        return true;
        }
        case 3000000291: {
        data = MI3valIH5_3isa3isa1_8i_lui_hiB0.dread();
        return true;
        }
        case 3000000292: {
        data = MI3tmpIH5_3isa3isa1_16i_call_rel_aliasB0.dread();
        return true;
        }
        case 3000000293: {
        data = MI3tmpIH5_3isa3isa1_16i_call_reg_aliasB0.dread();
        return true;
        }
        case 3000000297: {
        data = MI6resultIH5_3isa3isa1_14i_ext_hackatonB0.dread();
        return true;
        }
        case 3000000298: {
        data = MI2s1IH5_3isa3isa1_14i_ext_hackatonB0.dread();
        return true;
        }
        case 3000000299: {
        data = MI2s2IH5_3isa3isa1_14i_ext_hackatonB0.dread();
        return true;
        }
        case 3000000300: {
        data = MI2s3IH5_3isa3isa1_14i_ext_hackatonB0.dread();
        return true;
        }
        case 3000000301: {
        data = MI7simd_a0IH5_3isa3isa1_14i_ext_hackatonB0.dread();
        return true;
        }
        case 3000000302: {
        data = MI7simd_a1IH5_3isa3isa1_14i_ext_hackatonB0.dread();
        return true;
        }
        case 3000000303: {
        data = MI7simd_b0IH5_3isa3isa1_14i_ext_hackatonB0.dread();
        return true;
        }
        case 3000000304: {
        data = MI7simd_b1IH5_3isa3isa1_14i_ext_hackatonB0.dread();
        return true;
        }
        case 3000000305: {
        data = MI11accumulatorIH5_3isa3isa1_14i_ext_hackatonB0.dread();
        return true;
        }
        case 3000000306: {
        data = MI5summaIH5_3isa3isa1_14i_ext_hackatonB0.dread();
        return true;
        }
        case 3000000307: {
        data = MI17codasip_tmp_var_0IH5_3isa3isa1_14i_ext_hackaton.dread();
        return true;
        }
        case 0: {
        data = MI6rf_gpr.dread(0);
        return true;
        }
        case 1: {
        data = MI6rf_gpr.dread(1);
        return true;
        }
        case 2: {
        data = MI6rf_gpr.dread(2);
        return true;
        }
        case 3: {
        data = MI6rf_gpr.dread(3);
        return true;
        }
        case 4: {
        data = MI6rf_gpr.dread(4);
        return true;
        }
        case 5: {
        data = MI6rf_gpr.dread(5);
        return true;
        }
        case 6: {
        data = MI6rf_gpr.dread(6);
        return true;
        }
        case 7: {
        data = MI6rf_gpr.dread(7);
        return true;
        }
        case 8: {
        data = MI6rf_gpr.dread(8);
        return true;
        }
        case 9: {
        data = MI6rf_gpr.dread(9);
        return true;
        }
        case 10: {
        data = MI6rf_gpr.dread(10);
        return true;
        }
        case 11: {
        data = MI6rf_gpr.dread(11);
        return true;
        }
        case 12: {
        data = MI6rf_gpr.dread(12);
        return true;
        }
        case 13: {
        data = MI6rf_gpr.dread(13);
        return true;
        }
        case 14: {
        data = MI6rf_gpr.dread(14);
        return true;
        }
        case 15: {
        data = MI6rf_gpr.dread(15);
        return true;
        }
        case 16: {
        data = MI6rf_gpr.dread(16);
        return true;
        }
        case 17: {
        data = MI6rf_gpr.dread(17);
        return true;
        }
        case 18: {
        data = MI6rf_gpr.dread(18);
        return true;
        }
        case 19: {
        data = MI6rf_gpr.dread(19);
        return true;
        }
        case 20: {
        data = MI6rf_gpr.dread(20);
        return true;
        }
        case 21: {
        data = MI6rf_gpr.dread(21);
        return true;
        }
        case 22: {
        data = MI6rf_gpr.dread(22);
        return true;
        }
        case 23: {
        data = MI6rf_gpr.dread(23);
        return true;
        }
        case 24: {
        data = MI6rf_gpr.dread(24);
        return true;
        }
        case 25: {
        data = MI6rf_gpr.dread(25);
        return true;
        }
        case 26: {
        data = MI6rf_gpr.dread(26);
        return true;
        }
        case 27: {
        data = MI6rf_gpr.dread(27);
        return true;
        }
        case 28: {
        data = MI6rf_gpr.dread(28);
        return true;
        }
        case 29: {
        data = MI6rf_gpr.dread(29);
        return true;
        }
        case 30: {
        data = MI6rf_gpr.dread(30);
        return true;
        }
        case 31: {
        data = MI6rf_gpr.dread(31);
        return true;
        }
        case 32: {
        data = MI10r_csr_mepc.dread();
        return true;
        }
        case 33: {
        data = MI10r_csr_misa.dread();
        return true;
        }
        case 34: {
        data = MI11r_csr_mtval.dread();
        return true;
        }
        case 35: {
        data = MI11r_csr_mtvec.dread();
        return true;
        }
        case 36: {
        data = MI12r_csr_mcause.dread();
        return true;
        }
        case 37: {
        data = MI12r_csr_mcycle.dread();
        return true;
        }
        case 38: {
        data = MI13r_csr_marchid.dread();
        return true;
        }
        case 39: {
        data = MI13r_csr_mhartid.dread();
        return true;
        }
        case 40: {
        data = MI13r_csr_mstatus.dread();
        return true;
        }
        case 41: {
        data = MI13r_nmi_handler.dread();
        return true;
        }
        case 42: {
        data = MI14r_csr_minstret.dread();
        return true;
        }
        case 43: {
        data = MI14r_csr_mscratch.dread();
        return true;
        }
        case 44: {
        data = MI15r_csr_nmi_mtval.dread();
        return true;
        }
        case 45: {
        data = MI19r_csr_mcountinhibit.dread();
        return true;
        }
        case 46: {
        data = MI9r_csr_mie.dread();
        return true;
        }
        case 47: {
        data = MI9r_csr_mip.dread();
        return true;
        }
        case 48: {
        data = MI9r_csr_nmi.dread();
        return true;
        }
        case 49: {
        data = MI13r_instr_fetch.dread();
        return true;
        }
        case 50: {
        data = MI13r_fetch_fault.dread();
        return true;
        }
        case 51: {
        data = MI14r_pf_mem_error.dread();
        return true;
        }
        case 52: {
        data = MI18r_minstret_written.dread();
        return true;
        }
        case 53: {
        data = MI18r_minstret_inhibit.dread();
        return true;
        }
        case 54: {
        data = MI16r_mcycle_inhibit.dread();
        return true;
        }
        case 55: {
        data = MI15r_illegal_instr.dread();
        return true;
        }
        case 56: {
        data = MI15r_unknown_instr.dread();
        return true;
        }
        case 57: {
        data = MI13r_fetch_hresp.dread();
        return true;
        }
        case 58: {
        data = MI12r_ldst_hresp.dread();
        return true;
        }
        case 59: {
        data = MI5r_wfi.dread();
        return true;
        }
        case 60: {
        data = MI12r_reset_init.dread();
        return true;
        }
        case 61: {
        data = MI14r_syscall_addr.dread();
        return true;
        }
        case 62: {
        data = MI4r_PC.dread();
        return true;
        }
        case 63: {
        data = MI8r_wfi_ce.dread();
        return true;
        }
    }
    return false;
}
bool Sim::ResourceWrite(const debugger::Tid tid, const debugger::Did dwarf, const MaxUint& data)
{
    switch (dwarf) {
        case 64: {
        MI6p_meip.dwrite(data);
        return true;
        }
        case 65: {
        MI6p_msip.dwrite(data);
        return true;
        }
        case 66: {
        MI6p_mtip.dwrite(data);
        return true;
        }
        case 67: {
        MI5p_wfi.dwrite(data);
        return true;
        }
        case 68: {
        MI5p_nmi.dwrite(data);
        return true;
        }
        case 69: {
        MI11p_nmi_mtval.dwrite(data);
        return true;
        }
        case 70: {
        MI11p_boot_addr.dwrite(data);
        return true;
        }
        case 3000000229: {
        MI90codasip_return_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc.dwrite(data);
        return true;
        }
        case 3000000230: {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.dwrite(data);
        return true;
        }
        case 3000000231: {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.dwrite(data);
        return true;
        }
        case 3000000232: {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.dwrite(data);
        return true;
        }
        case 3000000236: {
        MI90codasip_return_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc.dwrite(data);
        return true;
        }
        case 3000000237: {
        MI45codasip_return_MI4imm5IH5_3isa3isa6_4imm53imm.dwrite(data);
        return true;
        }
        case 3000000241: {
        MI74codasip_return_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc.dwrite(data);
        return true;
        }
        case 3000000242: {
        MI52codasip_return_MI6simm12IH5_3isa3isa8_6simm126simm12.dwrite(data);
        return true;
        }
        case 3000000244: {
        MI86codasip_return_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc.dwrite(data);
        return true;
        }
        case 3000000245: {
        MI56codasip_return_MI9shift_immIH5_3isa3isa11_9shift_imm3imm.dwrite(data);
        return true;
        }
        case 3000000247: {
        MI56codasip_return_MI9imm20_s12IH5_3isa3isa11_9imm20_s123imm.dwrite(data);
        return true;
        }
        case 3000000250: {
        MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc.dwrite(data);
        return true;
        }
        case 3000000251: {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.dwrite(data);
        return true;
        }
        case 3000000252: {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.dwrite(data);
        return true;
        }
        case 3000000253: {
        MI61codasip_return_MI10rel_addr20IH5_3isa3isa13_10rel_addr204addr.dwrite(data);
        return true;
        }
        case 3000000263: {
        MI86codasip_return_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc.dwrite(data);
        return true;
        }
        case 3000000264: {
        MI61codasip_return_MI10rel_addr12IH5_3isa3isa13_10rel_addr124addr.dwrite(data);
        return true;
        }
        case 3000000268: {
        MI56codasip_return_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc.dwrite(data);
        return true;
        }
        case 3000000272: {
        MI59codasip_return_MI8simm12_sIH5_3isa3isa10_8simm12_s8simm12_s.dwrite(data);
        return true;
        }
        case 3000000273: {
        MI60codasip_return_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc.dwrite(data);
        return true;
        }
        case 3000000282: {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.dwrite(data);
        return true;
        }
        case 3000000283: {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.dwrite(data);
        return true;
        }
        case 3000000290: {
        MI54codasip_return_MI8imm20_hiIH5_3isa3isa10_8imm20_hi3imm.dwrite(data);
        return true;
        }
        case 3000000294: {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.dwrite(data);
        return true;
        }
        case 3000000295: {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.dwrite(data);
        return true;
        }
        case 3000000296: {
        MI82codasip_return_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc.dwrite(data);
        return true;
        }
        case 3000000050: {
        MI17codasip_tmp_var_0IH1_4main.dwrite(data);
        return true;
        }
        case 3000000051: {
        MI17codasip_tmp_var_1IH1_4main.dwrite(data);
        return true;
        }
        case 3000000052: {
        MI17codasip_tmp_var_2IH1_4main.dwrite(data);
        return true;
        }
        case 3000000053: {
        MI17codasip_tmp_var_3IH1_4main.dwrite(data);
        return true;
        }
        case 3000000054: {
        MI17codasip_tmp_var_4IH1_4main.dwrite(data);
        return true;
        }
        case 3000000055: {
        MI17codasip_tmp_var_0IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.dwrite(data);
        return true;
        }
        case 3000000056: {
        MI17codasip_tmp_var_1IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.dwrite(data);
        return true;
        }
        case 3000000057: {
        MI17codasip_tmp_var_2IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.dwrite(data);
        return true;
        }
        case 3000000059: {
        MI5vaddrIH1_11fetch_instr.dwrite(data);
        return true;
        }
        case 3000000060: {
        MI5instrIH1_11fetch_instrB0.dwrite(data);
        return true;
        }
        case 3000000061: {
        MI17codasip_tmp_var_0IH1_11fetch_instr.dwrite(data);
        return true;
        }
        case 3000000063: {
        MI1iIH1_11rf_gpr_read.dwrite(data);
        return true;
        }
        case 3000000064: {
        MI3valIH1_11rf_gpr_readB0.dwrite(data);
        return true;
        }
        case 3000000065: {
        MI17codasip_tmp_var_0IH1_11rf_gpr_read.dwrite(data);
        return true;
        }
        case 3000000068: {
        MI1iIH1_12rf_gpr_write.dwrite(data);
        return true;
        }
        case 3000000069: {
        MI3valIH1_12rf_gpr_write.dwrite(data);
        return true;
        }
        case 3000000070: {
        MI17codasip_tmp_var_0IH1_12rf_gpr_write.dwrite(data);
        return true;
        }
        case 3000000073: {
        MI5haddrIH1_20fetch_interface_read.dwrite(data);
        return true;
        }
        case 3000000074: {
        MI5hsizeIH1_20fetch_interface_read.dwrite(data);
        return true;
        }
        case 3000000075: {
        MI6resultIH1_20fetch_interface_readB0.dwrite(data);
        return true;
        }
        case 3000000076: {
        MI5hrespIH1_20fetch_interface_readB0.dwrite(data);
        return true;
        }
        case 3000000077: {
        MI5hprotIH1_20fetch_interface_readB0.dwrite(data);
        return true;
        }
        case 3000000080: {
        MI5haddrIH1_19ldst_interface_read.dwrite(data);
        return true;
        }
        case 3000000081: {
        MI5hsizeIH1_19ldst_interface_read.dwrite(data);
        return true;
        }
        case 3000000082: {
        MI6resultIH1_19ldst_interface_readB0.dwrite(data);
        return true;
        }
        case 3000000083: {
        MI5hrespIH1_19ldst_interface_readB0.dwrite(data);
        return true;
        }
        case 3000000084: {
        MI5hprotIH1_19ldst_interface_readB0.dwrite(data);
        return true;
        }
        case 3000000088: {
        MI5wdataIH1_20ldst_interface_write.dwrite(data);
        return true;
        }
        case 3000000089: {
        MI5haddrIH1_20ldst_interface_write.dwrite(data);
        return true;
        }
        case 3000000090: {
        MI5hsizeIH1_20ldst_interface_write.dwrite(data);
        return true;
        }
        case 3000000091: {
        MI5hrespIH1_20ldst_interface_writeB0.dwrite(data);
        return true;
        }
        case 3000000092: {
        MI5hprotIH1_20ldst_interface_writeB0.dwrite(data);
        return true;
        }
        case 3000000095: {
        MI3opcIH1_8load_val.dwrite(data);
        return true;
        }
        case 3000000096: {
        MI7addressIH1_8load_val.dwrite(data);
        return true;
        }
        case 3000000097: {
        MI6resultIH1_8load_valB0.dwrite(data);
        return true;
        }
        case 3000000098: {
        MI3sbcIH1_8load_valB0.dwrite(data);
        return true;
        }
        case 3000000099: {
        MI17codasip_tmp_var_0IH1_8load_val.dwrite(data);
        return true;
        }
        case 3000000100: {
        MI17codasip_tmp_var_1IH1_8load_val.dwrite(data);
        return true;
        }
        case 3000000101: {
        MI17codasip_tmp_var_2IH1_8load_val.dwrite(data);
        return true;
        }
        case 3000000102: {
        MI17codasip_tmp_var_3IH1_8load_val.dwrite(data);
        return true;
        }
        case 3000000103: {
        MI11error_causeIH1_8load_valB0B10.dwrite(data);
        return true;
        }
        case 3000000104: {
        MI17codasip_tmp_var_4IH1_8load_val.dwrite(data);
        return true;
        }
        case 3000000108: {
        MI3opcIH1_9write_val.dwrite(data);
        return true;
        }
        case 3000000109: {
        MI7addressIH1_9write_val.dwrite(data);
        return true;
        }
        case 3000000110: {
        MI3valIH1_9write_val.dwrite(data);
        return true;
        }
        case 3000000111: {
        MI11error_causeIH1_9write_valB0.dwrite(data);
        return true;
        }
        case 3000000112: {
        MI3sbcIH1_9write_valB0.dwrite(data);
        return true;
        }
        case 3000000113: {
        MI17codasip_tmp_var_0IH1_9write_val.dwrite(data);
        return true;
        }
        case 3000000114: {
        MI17codasip_tmp_var_1IH1_9write_val.dwrite(data);
        return true;
        }
        case 3000000115: {
        MI17codasip_tmp_var_2IH1_9write_val.dwrite(data);
        return true;
        }
        case 3000000116: {
        MI17codasip_tmp_var_3IH1_9write_val.dwrite(data);
        return true;
        }
        case 3000000117: {
        MI17codasip_tmp_var_4IH1_9write_val.dwrite(data);
        return true;
        }
        case 3000000118: {
        MI17codasip_tmp_var_5IH1_9write_val.dwrite(data);
        return true;
        }
        case 3000000119: {
        MI17codasip_tmp_var_6IH1_9write_val.dwrite(data);
        return true;
        }
        case 3000000123: {
        MI3opcIH1_7compute.dwrite(data);
        return true;
        }
        case 3000000124: {
        MI3op1IH1_7compute.dwrite(data);
        return true;
        }
        case 3000000125: {
        MI3op2IH1_7compute.dwrite(data);
        return true;
        }
        case 3000000126: {
        MI6resultIH1_7computeB0.dwrite(data);
        return true;
        }
        case 3000000127: {
        MI17codasip_tmp_var_0IH1_7compute.dwrite(data);
        return true;
        }
        case 3000000128: {
        MI17codasip_tmp_var_1IH1_7compute.dwrite(data);
        return true;
        }
        case 3000000129: {
        MI17codasip_tmp_var_2IH1_7compute.dwrite(data);
        return true;
        }
        case 3000000130: {
        MI6retvalIH1_4haltB0.dwrite(data);
        return true;
        }
        case 3000000131: {
        MI10start_addrIH1_4haltB0B1.dwrite(data);
        return true;
        }
        case 3000000132: {
        MI8end_addrIH1_4haltB0B1.dwrite(data);
        return true;
        }
        case 3000000133: {
        MI7addressIH1_4haltB0B1.dwrite(data);
        return true;
        }
        case 3000000134: {
        MI17codasip_tmp_var_0IH1_4halt.dwrite(data);
        return true;
        }
        case 3000000137: {
        MI3sbcIH1_16check_mem_access.dwrite(data);
        return true;
        }
        case 3000000138: {
        MI7addressIH1_16check_mem_access.dwrite(data);
        return true;
        }
        case 3000000141: {
        MI10trap_causeIH1_15print_trap_info.dwrite(data);
        return true;
        }
        case 3000000142: {
        MI4tvalIH1_15print_trap_info.dwrite(data);
        return true;
        }
        case 3000000143: {
        MI9int_causeIH1_15print_trap_infoB0B0.dwrite(data);
        return true;
        }
        case 3000000144: {
        MI17codasip_tmp_var_0IH1_15print_trap_info.dwrite(data);
        return true;
        }
        case 3000000145: {
        MI17codasip_tmp_var_1IH1_15print_trap_info.dwrite(data);
        return true;
        }
        case 3000000146: {
        MI17codasip_tmp_var_2IH1_15print_trap_info.dwrite(data);
        return true;
        }
        case 3000000150: {
        MI3opcIH1_17csr_get_write_val.dwrite(data);
        return true;
        }
        case 3000000151: {
        MI7currValIH1_17csr_get_write_val.dwrite(data);
        return true;
        }
        case 3000000152: {
        MI8writeValIH1_17csr_get_write_val.dwrite(data);
        return true;
        }
        case 3000000153: {
        MI6retvalIH1_17csr_get_write_valB0.dwrite(data);
        return true;
        }
        case 3000000154: {
        MI17codasip_tmp_var_0IH1_17csr_get_write_val.dwrite(data);
        return true;
        }
        case 3000000155: {
        MI3menIH1_8take_intB0.dwrite(data);
        return true;
        }
        case 3000000156: {
        MI7pendingIH1_8take_intB0.dwrite(data);
        return true;
        }
        case 3000000157: {
        MI7enabledIH1_8take_intB0.dwrite(data);
        return true;
        }
        case 3000000158: {
        MI9int_causeIH1_8take_intB0.dwrite(data);
        return true;
        }
        case 3000000159: {
        MI9nmi_mtvalIH1_8take_intB0.dwrite(data);
        return true;
        }
        case 3000000160: {
        MI3nmiIH1_8take_intB0.dwrite(data);
        return true;
        }
        case 3000000161: {
        MI17codasip_tmp_var_0IH1_8take_int.dwrite(data);
        return true;
        }
        case 3000000162: {
        MI17codasip_tmp_var_1IH1_8take_int.dwrite(data);
        return true;
        }
        case 3000000163: {
        MI17codasip_tmp_var_2IH1_8take_int.dwrite(data);
        return true;
        }
        case 3000000164: {
        MI17codasip_tmp_var_3IH1_8take_int.dwrite(data);
        return true;
        }
        case 3000000165: {
        MI17codasip_tmp_var_4IH1_8take_int.dwrite(data);
        return true;
        }
        case 3000000166: {
        MI17codasip_tmp_var_5IH1_8take_int.dwrite(data);
        return true;
        }
        case 3000000167: {
        MI17codasip_tmp_var_6IH1_8take_int.dwrite(data);
        return true;
        }
        case 3000000171: {
        MI10trap_causeIH1_9take_trap.dwrite(data);
        return true;
        }
        case 3000000172: {
        MI7bad_valIH1_9take_trap.dwrite(data);
        return true;
        }
        case 3000000173: {
        MI9decrementIH1_9take_trap.dwrite(data);
        return true;
        }
        case 3000000174: {
        MI5causeIH1_9take_trapB0B0.dwrite(data);
        return true;
        }
        case 3000000175: {
        MI17codasip_tmp_var_0IH1_9take_trap.dwrite(data);
        return true;
        }
        case 3000000176: {
        MI17codasip_tmp_var_1IH1_9take_trap.dwrite(data);
        return true;
        }
        case 3000000177: {
        MI17codasip_tmp_var_3IH1_9take_trap.dwrite(data);
        return true;
        }
        case 3000000178: {
        MI17codasip_tmp_var_4IH1_9take_trap.dwrite(data);
        return true;
        }
        case 3000000179: {
        MI17codasip_tmp_var_2IH1_9take_trap.dwrite(data);
        return true;
        }
        case 3000000180: {
        MI4mpieIH1_8do_xcallB0.dwrite(data);
        return true;
        }
        case 3000000181: {
        MI10int_enableIH1_7do_xretB0.dwrite(data);
        return true;
        }
        case 3000000182: {
        MI15prev_int_enableIH1_7do_xretB0.dwrite(data);
        return true;
        }
        case 3000000186: {
        MI3srcIH1_18csr_read_write_reg.dwrite(data);
        return true;
        }
        case 3000000187: {
        MI3csrIH1_18csr_read_write_reg.dwrite(data);
        return true;
        }
        case 3000000188: {
        MI3opcIH1_18csr_read_write_reg.dwrite(data);
        return true;
        }
        case 3000000189: {
        MI8writeValIH1_18csr_read_write_regB0.dwrite(data);
        return true;
        }
        case 3000000190: {
        MI7readValIH1_18csr_read_write_regB0.dwrite(data);
        return true;
        }
        case 3000000191: {
        MI8is_writeIH1_18csr_read_write_regB0.dwrite(data);
        return true;
        }
        case 3000000192: {
        MI17codasip_tmp_var_0IH1_18csr_read_write_reg.dwrite(data);
        return true;
        }
        case 3000000196: {
        MI3immIH1_18csr_read_write_imm.dwrite(data);
        return true;
        }
        case 3000000197: {
        MI3csrIH1_18csr_read_write_imm.dwrite(data);
        return true;
        }
        case 3000000198: {
        MI3opcIH1_18csr_read_write_imm.dwrite(data);
        return true;
        }
        case 3000000199: {
        MI7readValIH1_18csr_read_write_immB0.dwrite(data);
        return true;
        }
        case 3000000200: {
        MI8is_writeIH1_18csr_read_write_immB0.dwrite(data);
        return true;
        }
        case 3000000201: {
        MI17codasip_tmp_var_0IH1_18csr_read_write_imm.dwrite(data);
        return true;
        }
        case 3000000206: {
        MI8writeValIH1_14csr_read_write.dwrite(data);
        return true;
        }
        case 3000000207: {
        MI3csrIH1_14csr_read_write.dwrite(data);
        return true;
        }
        case 3000000208: {
        MI3opcIH1_14csr_read_write.dwrite(data);
        return true;
        }
        case 3000000209: {
        MI8is_writeIH1_14csr_read_write.dwrite(data);
        return true;
        }
        case 3000000210: {
        MI7readValIH1_14csr_read_writeB0.dwrite(data);
        return true;
        }
        case 3000000211: {
        MI17codasip_tmp_var_0IH1_14csr_read_write.dwrite(data);
        return true;
        }
        case 3000000212: {
        MI17codasip_tmp_var_1IH1_14csr_read_write.dwrite(data);
        return true;
        }
        case 3000000213: {
        MI17codasip_tmp_var_2IH1_14csr_read_write.dwrite(data);
        return true;
        }
        case 3000000214: {
        MI17codasip_tmp_var_3IH1_14csr_read_write.dwrite(data);
        return true;
        }
        case 3000000215: {
        MI17codasip_tmp_var_4IH1_14csr_read_write.dwrite(data);
        return true;
        }
        case 3000000216: {
        MI17codasip_tmp_var_5IH1_14csr_read_write.dwrite(data);
        return true;
        }
        case 3000000217: {
        MI17codasip_tmp_var_6IH1_14csr_read_write.dwrite(data);
        return true;
        }
        case 3000000218: {
        MI17codasip_tmp_var_7IH1_14csr_read_write.dwrite(data);
        return true;
        }
        case 3000000219: {
        MI17codasip_tmp_var_8IH1_14csr_read_write.dwrite(data);
        return true;
        }
        case 3000000220: {
        MI17codasip_tmp_var_9IH1_14csr_read_write.dwrite(data);
        return true;
        }
        case 3000000221: {
        MI18codasip_tmp_var_10IH1_14csr_read_write.dwrite(data);
        return true;
        }
        case 3000000222: {
        MI18codasip_tmp_var_11IH1_14csr_read_write.dwrite(data);
        return true;
        }
        case 3000000223: {
        MI18codasip_tmp_var_12IH1_14csr_read_write.dwrite(data);
        return true;
        }
        case 3000000224: {
        MI18codasip_tmp_var_13IH1_14csr_read_write.dwrite(data);
        return true;
        }
        case 3000000227: {
        MI11INSTRUCTIONIH5_3isa3isa1_3isa.dwrite(data);
        return true;
        }
        case 3000000228: {
        MI19INVALID_INSTRUCTIONIH5_3isa3isa1_3isa.dwrite(data);
        return true;
        }
        case 3000000233: {
        MI8writeValIH5_3isa3isa1_23i_control_registers_regB0.dwrite(data);
        return true;
        }
        case 3000000234: {
        MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_reg.dwrite(data);
        return true;
        }
        case 3000000235: {
        MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_reg.dwrite(data);
        return true;
        }
        case 3000000238: {
        MI8writeValIH5_3isa3isa1_23i_control_registers_immB0.dwrite(data);
        return true;
        }
        case 3000000239: {
        MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_imm.dwrite(data);
        return true;
        }
        case 3000000240: {
        MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_imm.dwrite(data);
        return true;
        }
        case 3000000243: {
        MI3valIH5_3isa3isa1_15i_comp_2reg_immB0.dwrite(data);
        return true;
        }
        case 3000000246: {
        MI3valIH5_3isa3isa1_21i_comp_2reg_imm_shiftB0.dwrite(data);
        return true;
        }
        case 3000000254: {
        MI8jmp_addrIH5_3isa3isa1_5i_jalB0.dwrite(data);
        return true;
        }
        case 3000000255: {
        MI3tmpIH5_3isa3isa1_5i_jalB0.dwrite(data);
        return true;
        }
        case 3000000256: {
        MI17codasip_tmp_var_0IH5_3isa3isa1_5i_jal.dwrite(data);
        return true;
        }
        case 3000000258: {
        MI3valIH5_3isa3isa1_6i_jalrB0.dwrite(data);
        return true;
        }
        case 3000000259: {
        MI8jmp_addrIH5_3isa3isa1_6i_jalrB0.dwrite(data);
        return true;
        }
        case 3000000260: {
        MI3tmpIH5_3isa3isa1_6i_jalrB0.dwrite(data);
        return true;
        }
        case 3000000261: {
        MI17codasip_tmp_var_0IH5_3isa3isa1_6i_jalr.dwrite(data);
        return true;
        }
        case 3000000265: {
        MI17codasip_tmp_var_0IH5_3isa3isa1_21i_control_conditional.dwrite(data);
        return true;
        }
        case 3000000266: {
        MI8jmp_addrIH5_3isa3isa1_21i_control_conditionalB0B1.dwrite(data);
        return true;
        }
        case 3000000267: {
        MI17codasip_tmp_var_1IH5_3isa3isa1_21i_control_conditional.dwrite(data);
        return true;
        }
        case 3000000269: {
        MI3valIH5_3isa3isa1_6i_loadB0.dwrite(data);
        return true;
        }
        case 3000000270: {
        MI4addrIH5_3isa3isa1_6i_loadB0.dwrite(data);
        return true;
        }
        case 3000000271: {
        MI17codasip_tmp_var_0IH5_3isa3isa1_6i_load.dwrite(data);
        return true;
        }
        case 3000000274: {
        MI4addrIH5_3isa3isa1_7i_storeB0.dwrite(data);
        return true;
        }
        case 3000000275: {
        MI4dataIH5_3isa3isa1_7i_storeB0.dwrite(data);
        return true;
        }
        case 3000000277: {
        MI1iIH5_3isa3isa1_8i_ebreakB0.dwrite(data);
        return true;
        }
        case 3000000280: {
        MI17codasip_tmp_var_0IH5_3isa3isa1_6i_xret.dwrite(data);
        return true;
        }
        case 3000000291: {
        MI3valIH5_3isa3isa1_8i_lui_hiB0.dwrite(data);
        return true;
        }
        case 3000000292: {
        MI3tmpIH5_3isa3isa1_16i_call_rel_aliasB0.dwrite(data);
        return true;
        }
        case 3000000293: {
        MI3tmpIH5_3isa3isa1_16i_call_reg_aliasB0.dwrite(data);
        return true;
        }
        case 3000000297: {
        MI6resultIH5_3isa3isa1_14i_ext_hackatonB0.dwrite(data);
        return true;
        }
        case 3000000298: {
        MI2s1IH5_3isa3isa1_14i_ext_hackatonB0.dwrite(data);
        return true;
        }
        case 3000000299: {
        MI2s2IH5_3isa3isa1_14i_ext_hackatonB0.dwrite(data);
        return true;
        }
        case 3000000300: {
        MI2s3IH5_3isa3isa1_14i_ext_hackatonB0.dwrite(data);
        return true;
        }
        case 3000000301: {
        MI7simd_a0IH5_3isa3isa1_14i_ext_hackatonB0.dwrite(data);
        return true;
        }
        case 3000000302: {
        MI7simd_a1IH5_3isa3isa1_14i_ext_hackatonB0.dwrite(data);
        return true;
        }
        case 3000000303: {
        MI7simd_b0IH5_3isa3isa1_14i_ext_hackatonB0.dwrite(data);
        return true;
        }
        case 3000000304: {
        MI7simd_b1IH5_3isa3isa1_14i_ext_hackatonB0.dwrite(data);
        return true;
        }
        case 3000000305: {
        MI11accumulatorIH5_3isa3isa1_14i_ext_hackatonB0.dwrite(data);
        return true;
        }
        case 3000000306: {
        MI5summaIH5_3isa3isa1_14i_ext_hackatonB0.dwrite(data);
        return true;
        }
        case 3000000307: {
        MI17codasip_tmp_var_0IH5_3isa3isa1_14i_ext_hackaton.dwrite(data);
        return true;
        }
        case 0: {
        MI6rf_gpr.dwrite(data, 0);
        return true;
        }
        case 1: {
        MI6rf_gpr.dwrite(data, 1);
        return true;
        }
        case 2: {
        MI6rf_gpr.dwrite(data, 2);
        return true;
        }
        case 3: {
        MI6rf_gpr.dwrite(data, 3);
        return true;
        }
        case 4: {
        MI6rf_gpr.dwrite(data, 4);
        return true;
        }
        case 5: {
        MI6rf_gpr.dwrite(data, 5);
        return true;
        }
        case 6: {
        MI6rf_gpr.dwrite(data, 6);
        return true;
        }
        case 7: {
        MI6rf_gpr.dwrite(data, 7);
        return true;
        }
        case 8: {
        MI6rf_gpr.dwrite(data, 8);
        return true;
        }
        case 9: {
        MI6rf_gpr.dwrite(data, 9);
        return true;
        }
        case 10: {
        MI6rf_gpr.dwrite(data, 10);
        return true;
        }
        case 11: {
        MI6rf_gpr.dwrite(data, 11);
        return true;
        }
        case 12: {
        MI6rf_gpr.dwrite(data, 12);
        return true;
        }
        case 13: {
        MI6rf_gpr.dwrite(data, 13);
        return true;
        }
        case 14: {
        MI6rf_gpr.dwrite(data, 14);
        return true;
        }
        case 15: {
        MI6rf_gpr.dwrite(data, 15);
        return true;
        }
        case 16: {
        MI6rf_gpr.dwrite(data, 16);
        return true;
        }
        case 17: {
        MI6rf_gpr.dwrite(data, 17);
        return true;
        }
        case 18: {
        MI6rf_gpr.dwrite(data, 18);
        return true;
        }
        case 19: {
        MI6rf_gpr.dwrite(data, 19);
        return true;
        }
        case 20: {
        MI6rf_gpr.dwrite(data, 20);
        return true;
        }
        case 21: {
        MI6rf_gpr.dwrite(data, 21);
        return true;
        }
        case 22: {
        MI6rf_gpr.dwrite(data, 22);
        return true;
        }
        case 23: {
        MI6rf_gpr.dwrite(data, 23);
        return true;
        }
        case 24: {
        MI6rf_gpr.dwrite(data, 24);
        return true;
        }
        case 25: {
        MI6rf_gpr.dwrite(data, 25);
        return true;
        }
        case 26: {
        MI6rf_gpr.dwrite(data, 26);
        return true;
        }
        case 27: {
        MI6rf_gpr.dwrite(data, 27);
        return true;
        }
        case 28: {
        MI6rf_gpr.dwrite(data, 28);
        return true;
        }
        case 29: {
        MI6rf_gpr.dwrite(data, 29);
        return true;
        }
        case 30: {
        MI6rf_gpr.dwrite(data, 30);
        return true;
        }
        case 31: {
        MI6rf_gpr.dwrite(data, 31);
        return true;
        }
        case 32: {
        MI10r_csr_mepc.dwrite(data);
        return true;
        }
        case 33: {
        MI10r_csr_misa.dwrite(data);
        return true;
        }
        case 34: {
        MI11r_csr_mtval.dwrite(data);
        return true;
        }
        case 35: {
        MI11r_csr_mtvec.dwrite(data);
        return true;
        }
        case 36: {
        MI12r_csr_mcause.dwrite(data);
        return true;
        }
        case 37: {
        MI12r_csr_mcycle.dwrite(data);
        return true;
        }
        case 38: {
        MI13r_csr_marchid.dwrite(data);
        return true;
        }
        case 39: {
        MI13r_csr_mhartid.dwrite(data);
        return true;
        }
        case 40: {
        MI13r_csr_mstatus.dwrite(data);
        return true;
        }
        case 41: {
        MI13r_nmi_handler.dwrite(data);
        return true;
        }
        case 42: {
        MI14r_csr_minstret.dwrite(data);
        return true;
        }
        case 43: {
        MI14r_csr_mscratch.dwrite(data);
        return true;
        }
        case 44: {
        MI15r_csr_nmi_mtval.dwrite(data);
        return true;
        }
        case 45: {
        MI19r_csr_mcountinhibit.dwrite(data);
        return true;
        }
        case 46: {
        MI9r_csr_mie.dwrite(data);
        return true;
        }
        case 47: {
        MI9r_csr_mip.dwrite(data);
        return true;
        }
        case 48: {
        MI9r_csr_nmi.dwrite(data);
        return true;
        }
        case 49: {
        MI13r_instr_fetch.dwrite(data);
        return true;
        }
        case 50: {
        MI13r_fetch_fault.dwrite(data);
        return true;
        }
        case 51: {
        MI14r_pf_mem_error.dwrite(data);
        return true;
        }
        case 52: {
        MI18r_minstret_written.dwrite(data);
        return true;
        }
        case 53: {
        MI18r_minstret_inhibit.dwrite(data);
        return true;
        }
        case 54: {
        MI16r_mcycle_inhibit.dwrite(data);
        return true;
        }
        case 55: {
        MI15r_illegal_instr.dwrite(data);
        return true;
        }
        case 56: {
        MI15r_unknown_instr.dwrite(data);
        return true;
        }
        case 57: {
        MI13r_fetch_hresp.dwrite(data);
        return true;
        }
        case 58: {
        MI12r_ldst_hresp.dwrite(data);
        return true;
        }
        case 59: {
        MI5r_wfi.dwrite(data);
        return true;
        }
        case 60: {
        MI12r_reset_init.dwrite(data);
        return true;
        }
        case 61: {
        MI14r_syscall_addr.dwrite(data);
        return true;
        }
        case 62: {
        MI4r_PC.dwrite(data);
        return true;
        }
        case 63: {
        MI8r_wfi_ce.dwrite(data);
        return true;
        }
    }
    return false;
}
bool Sim::MemoryRead(MaxUint& byte, const debugger::Tid tid, const debugger::Did dwarf, const codasip_address_t address) const 
{
    switch (dwarf) {
        case 0: {
        if (address <= 0xffffffffull)
        {
            byte = const_cast<Sim*>(this)->MI7if_ldst.dread(address, 1);
            return true;
        }
        if (address <= 0xffffffffull)
        {
            byte = const_cast<Sim*>(this)->MI8if_fetch.dread(address, 1);
            return true;
        }

        }
        case 1: {
        byte = const_cast<Sim*>(this)->MI7if_ldst.dread(address, 1);
        return true;

        }
        case 2: {
        byte = const_cast<Sim*>(this)->MI8if_fetch.dread(address, 1);
        return true;

        }
        case 4: {
        byte = const_cast<Sim*>(this)->MI8m_memory.if_ldst.dread(address, 1);
        return true;

        }
        case 5: {
        byte = const_cast<Sim*>(this)->MI8m_memory.if_fetch.dread(address, 1);
        return true;

        }
    }
    return false;
}
bool Sim::MemoryWrite(const debugger::Tid tid, const debugger::Did dwarf, const codasip_address_t address, const MaxUint& byte)
{
    switch (dwarf) {
        case 0: {
        if (address <= 0xffffffffull)
        {
            MI7if_ldst.dwrite(byte, address, 1);
            return true;
        }
        if (address <= 0xffffffffull)
        {
            MI8if_fetch.dwrite(byte, address, 1);
            return true;
        }

        }
        case 1: {
        MI7if_ldst.dwrite(byte, address, 1);
        return true;

        }
        case 2: {
        MI8if_fetch.dwrite(byte, address, 1);
        return true;

        }
        case 4: {
        MI8m_memory.if_ldst.dwrite(byte, address, 1);
        return true;

        }
        case 5: {
        MI8m_memory.if_fetch.dwrite(byte, address, 1);
        return true;

        }
    }
    return false;
}
/**
 *  \brief  InitRspJson
 */
void Sim::InitRspJson()
{
    std::stringstream rspJson;
    rspJson << "{\"__generated_by\": \"Codasip Studio version 9.4.2\", \"__generated_date\": \"2025-04-12\", \"address_spaces\": [{\"addrsize\": 32, \"bytesize\": 8, \"default\": 1, \"description\": \"\", \"dwarf\": 0, \"encoding\": \"uint\", \"endian\": \"little\", \"format\": \"hex\", \"function-result\": [10, 11, 12, 13], \"interfaces\": [\"if_ldst\", \"if_fetch\"], \"name\": \"as_all\", \"set\": \"Address spaces\", \"type\": \"code-and-data\", \"uid\": 33, \"wordsize\": 32}], \"hostinfo\": {\"arch\": \"codasip_le\", \"callee-saved\": [9, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 8], \"datalayout\": \"e-p:32:32:32-S64-a0:0:32-n32\", \"endian\": \"little\", \"harts_count\": 1, \"hostname\": \"codasip_urisc_v\", \"instruction-sizes\": [32], \"ostype\": \"standalone\", \"ptrsize\": 4, \"stack_alignment\": 2, \"syscalls\": 1, \"triple\": \"codasip_le-Codasip-standalone\", \"vendor\": \"Codasip\", \"watchpoint_exceptions_received\": \"after\", \"watchpoint_simulator\": 0}, \"interfaces\": [{\"addrsize\": 32, \"bytesize\": 8, \"data_alignment\": [8, 16, 32], \"description\": \"Codasip s.r.o. CONFIDENTIAL Copyright 2022 C";
    rspJson << "odasip\", \"dwarf\": 1, \"encoding\": \"uint\", \"endian\": \"little\", \"flag\": \"RW\", \"format\": \"hex\", \"name\": \"if_ldst\", \"set\": \"Memories\", \"uid\": 37, \"wordsize\": 32}, {\"addrsize\": 32, \"bytesize\": 8, \"data_alignment\": [32], \"description\": \"\", \"dwarf\": 2, \"encoding\": \"uint\", \"endian\": \"little\", \"flag\": \"R\", \"format\": \"hex\", \"name\": \"if_fetch\", \"set\": \"Memories\", \"uid\": 38, \"wordsize\": 32}, {\"addrsize\": 32, \"bytesize\": 8, \"data_alignment\": [8, 16, 32], \"description\": \"\", \"dwarf\": 4, \"encoding\": \"uint\", \"endian\": \"little\", \"flag\": \"RW\", \"format\": \"hex\", \"name\": \"testbench_m_memory_if_ldst\", \"set\": \"Memories\", \"uid\": 48, \"wordsize\": 32}, {\"addrsize\": 32, \"bytesize\": 8, \"data_alignment\": [8, 16, 32], \"description\": \"\", \"dwarf\": 5, \"encoding\": \"uint\", \"endian\": \"little\", \"flag\": \"R\", \"format\": \"hex\", \"name\": \"testbench_m_memory_if_fetch\", \"set\": \"Memories\", \"uid\": 49, \"wordsize\": 32}], \"ports\": [{\"bitsize\": 1, \"description\": \"\", \"direction\": \"IN\", \"dwarf\": 64, \"encoding\": \"uint\", \"format\": \"hex\", \"nam";
    rspJson << "e\": \"p_meip\", \"set\": \"In Port(s)\", \"type\": \"INTERRUPT\", \"uid\": 39}, {\"bitsize\": 1, \"description\": \"\", \"direction\": \"IN\", \"dwarf\": 65, \"encoding\": \"uint\", \"format\": \"hex\", \"name\": \"p_msip\", \"set\": \"In Port(s)\", \"type\": \"INTERRUPT\", \"uid\": 40}, {\"bitsize\": 1, \"description\": \"\", \"direction\": \"IN\", \"dwarf\": 66, \"encoding\": \"uint\", \"format\": \"hex\", \"name\": \"p_mtip\", \"set\": \"In Port(s)\", \"type\": \"INTERRUPT\", \"uid\": 41}, {\"bitsize\": 1, \"description\": \"\", \"direction\": \"OUT\", \"dwarf\": 67, \"encoding\": \"uint\", \"format\": \"hex\", \"name\": \"p_wfi\", \"set\": \"Out Port(s)\", \"type\": \"CONTROL\", \"uid\": 42}, {\"bitsize\": 1, \"description\": \"\", \"direction\": \"IN\", \"dwarf\": 68, \"encoding\": \"uint\", \"format\": \"hex\", \"name\": \"p_nmi\", \"set\": \"In Port(s)\", \"type\": \"INTERRUPT\", \"uid\": 43}, {\"bitsize\": 32, \"description\": \"\", \"direction\": \"IN\", \"dwarf\": 69, \"encoding\": \"uint\", \"format\": \"hex\", \"name\": \"p_nmi_mtval\", \"set\": \"In Port(s)\", \"type\": \"DATA\", \"uid\": 44}, {\"bitsize\": 32, \"description\": \"\", \"direction\": \"IN\", \"dwa";
    rspJson << "rf\": 70, \"encoding\": \"uint\", \"format\": \"hex\", \"name\": \"p_boot_addr\", \"set\": \"In Port(s)\", \"type\": \"DATA\", \"uid\": 45}], \"registers\": [{\"arch\": 0, \"bitsize\": 32, \"description\": \"Codasip s.r.o. CONFIDENTIAL Copyright 2022 Codasip\", \"dwarf\": 49, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 0, \"name\": \"r_instr_fetch\", \"set\": \"Micro-architectural Registers\", \"uid\": 1}, {\"arch\": 0, \"bitsize\": 1, \"description\": \"\", \"dwarf\": 50, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 1, \"name\": \"r_fetch_fault\", \"set\": \"Micro-architectural Registers\", \"uid\": 2}, {\"arch\": 0, \"bitsize\": 1, \"description\": \"\", \"dwarf\": 51, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 2, \"name\": \"r_pf_mem_error\", \"set\": \"Micro-architectural Registers\", \"uid\": 3}, {\"arch\": 0, \"bitsize\": 1, \"description\": \"\", \"dwarf\": 52, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 3, \"name\": \"r_minstret_written\", \"set\": \"Micro-architectural Registers\", \"uid\": 4}, {\"arch\": 0, \"bitsize\": 1, \"description\": \"\", \"dwarf\": 53, \"encoding\": \"uint\", \"format\"";
    rspJson << ": \"hex\", \"gcc\": 4, \"name\": \"r_minstret_inhibit\", \"set\": \"Micro-architectural Registers\", \"uid\": 5}, {\"arch\": 0, \"bitsize\": 1, \"description\": \"\", \"dwarf\": 54, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 5, \"name\": \"r_mcycle_inhibit\", \"set\": \"Micro-architectural Registers\", \"uid\": 6}, {\"arch\": 0, \"bitsize\": 1, \"description\": \"\", \"dwarf\": 55, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 6, \"name\": \"r_illegal_instr\", \"set\": \"Micro-architectural Registers\", \"uid\": 7}, {\"arch\": 0, \"bitsize\": 1, \"description\": \"\", \"dwarf\": 56, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 7, \"name\": \"r_unknown_instr\", \"set\": \"Micro-architectural Registers\", \"uid\": 8}, {\"arch\": 0, \"bitsize\": 1, \"description\": \"\", \"dwarf\": 57, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 8, \"name\": \"r_fetch_hresp\", \"set\": \"Micro-architectural Registers\", \"uid\": 9}, {\"arch\": 0, \"bitsize\": 1, \"description\": \"\", \"dwarf\": 58, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 9, \"name\": \"r_ldst_hresp\", \"set\": \"Micro-architectural Registers\", ";
    rspJson << "\"uid\": 10}, {\"arch\": 0, \"bitsize\": 1, \"description\": \"\", \"dwarf\": 59, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 10, \"name\": \"r_wfi\", \"set\": \"Micro-architectural Registers\", \"uid\": 11}, {\"arch\": 1, \"bitsize\": 64, \"description\": \"\", \"dwarf\": 42, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 11, \"name\": \"r_csr_minstret\", \"set\": \"Architectural Registers\", \"uid\": 12}, {\"arch\": 1, \"bitsize\": 64, \"description\": \"\", \"dwarf\": 37, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 12, \"name\": \"r_csr_mcycle\", \"set\": \"Architectural Registers\", \"uid\": 13}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 45, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 13, \"name\": \"r_csr_mcountinhibit\", \"set\": \"Architectural Registers\", \"uid\": 14}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 39, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 14, \"name\": \"r_csr_mhartid\", \"set\": \"Architectural Registers\", \"uid\": 15}, {\"arch\": 1, \"bitsize\": 1, \"description\": \"\", \"dwarf\": 48, \"encoding\": \"uint\", \"format\": \"hex\", ";
    rspJson << "\"gcc\": 15, \"name\": \"r_csr_nmi\", \"set\": \"Architectural Registers\", \"uid\": 16}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 44, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 16, \"name\": \"r_csr_nmi_mtval\", \"set\": \"Architectural Registers\", \"uid\": 17}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 41, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 17, \"name\": \"r_nmi_handler\", \"set\": \"Architectural Registers\", \"uid\": 18}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 47, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 18, \"name\": \"r_csr_mip\", \"set\": \"Architectural Registers\", \"uid\": 19}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 46, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 19, \"name\": \"r_csr_mie\", \"set\": \"Architectural Registers\", \"uid\": 20}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 34, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 20, \"name\": \"r_csr_mtval\", \"set\": \"Architectural Registers\", \"uid\": 21}, {\"arch\": 1, \"bitsize\": 32, \"description\"";
    rspJson << ": \"\", \"dwarf\": 32, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 21, \"name\": \"r_csr_mepc\", \"set\": \"Architectural Registers\", \"uid\": 22}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 36, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 22, \"name\": \"r_csr_mcause\", \"set\": \"Architectural Registers\", \"uid\": 23}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 43, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 23, \"name\": \"r_csr_mscratch\", \"set\": \"Architectural Registers\", \"uid\": 24}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 35, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 24, \"name\": \"r_csr_mtvec\", \"set\": \"Architectural Registers\", \"uid\": 25}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 40, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 25, \"name\": \"r_csr_mstatus\", \"set\": \"Architectural Registers\", \"uid\": 26}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 33, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 26, \"name\": \"r_csr_misa\", \"set\": \"Architectural Regi";
    rspJson << "sters\", \"uid\": 27}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 38, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 27, \"name\": \"r_csr_marchid\", \"set\": \"Architectural Registers\", \"uid\": 28}, {\"arch\": 0, \"bitsize\": 1, \"description\": \"\", \"dwarf\": 60, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 28, \"name\": \"r_reset_init\", \"set\": \"Micro-architectural Registers\", \"uid\": 29}, {\"arch\": 0, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 61, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 29, \"name\": \"r_syscall_addr\", \"set\": \"Micro-architectural Registers\", \"uid\": 30}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"Program counter\", \"dwarf\": 62, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 30, \"generic\": \"pc\", \"name\": \"r_PC\", \"set\": \"Micro-architectural Registers\", \"uid\": 31}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 0, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 31, \"name\": \"rf_gpr_0\", \"rf_index\": 0, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"";
    rspJson << "bitsize\": 32, \"description\": \"\", \"dwarf\": 1, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 32, \"generic\": \"ra\", \"name\": \"rf_gpr_1\", \"rf_index\": 1, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"Stack pointer\", \"dwarf\": 2, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 33, \"generic\": \"sp\", \"name\": \"rf_gpr_2\", \"rf_index\": 2, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 3, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 34, \"name\": \"rf_gpr_3\", \"rf_index\": 3, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 4, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 35, \"name\": \"rf_gpr_4\", \"rf_index\": 4, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 5, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 36, ";
    rspJson << "\"name\": \"rf_gpr_5\", \"rf_index\": 5, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 6, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 37, \"name\": \"rf_gpr_6\", \"rf_index\": 6, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 7, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 38, \"name\": \"rf_gpr_7\", \"rf_index\": 7, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"Frame/Base pointer\", \"dwarf\": 8, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 39, \"generic\": \"fp\", \"name\": \"rf_gpr_8\", \"rf_index\": 8, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 9, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 40, \"name\": \"rf_gpr_9\", \"rf_index\": 9, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 3";
    rspJson << "2}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"Function arguments\", \"dwarf\": 10, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 41, \"generic\": \"arg1\", \"name\": \"rf_gpr_10\", \"rf_index\": 10, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"Function arguments\", \"dwarf\": 11, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 42, \"generic\": \"arg2\", \"name\": \"rf_gpr_11\", \"rf_index\": 11, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"Function arguments\", \"dwarf\": 12, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 43, \"generic\": \"arg3\", \"name\": \"rf_gpr_12\", \"rf_index\": 12, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"Function arguments\", \"dwarf\": 13, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 44, \"generic\": \"arg4\", \"name\": \"rf_gpr_13\", \"rf_index\": 13, \"rf_size\": 32, \"set\": \"Architectural Register File";
    rspJson << " \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"Function arguments\", \"dwarf\": 14, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 45, \"generic\": \"arg5\", \"name\": \"rf_gpr_14\", \"rf_index\": 14, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"Function arguments\", \"dwarf\": 15, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 46, \"generic\": \"arg6\", \"name\": \"rf_gpr_15\", \"rf_index\": 15, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"Function arguments\", \"dwarf\": 16, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 47, \"generic\": \"arg7\", \"name\": \"rf_gpr_16\", \"rf_index\": 16, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"Function arguments\", \"dwarf\": 17, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 48, \"generic\": \"arg8\", \"name\": \"rf_gpr_17\", \"rf_index\": 17, \"rf_size\": 32, \"set\": \"Archite";
    rspJson << "ctural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 18, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 49, \"name\": \"rf_gpr_18\", \"rf_index\": 18, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 19, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 50, \"name\": \"rf_gpr_19\", \"rf_index\": 19, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 20, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 51, \"name\": \"rf_gpr_20\", \"rf_index\": 20, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 21, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 52, \"name\": \"rf_gpr_21\", \"rf_index\": 21, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 22, \"encoding\": \"uint\", \"form";
    rspJson << "at\": \"hex\", \"gcc\": 53, \"name\": \"rf_gpr_22\", \"rf_index\": 22, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 23, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 54, \"name\": \"rf_gpr_23\", \"rf_index\": 23, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 24, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 55, \"name\": \"rf_gpr_24\", \"rf_index\": 24, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 25, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 56, \"name\": \"rf_gpr_25\", \"rf_index\": 25, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 26, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 57, \"name\": \"rf_gpr_26\", \"rf_index\": 26, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\":";
    rspJson << " 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 27, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 58, \"name\": \"rf_gpr_27\", \"rf_index\": 27, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 28, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 59, \"name\": \"rf_gpr_28\", \"rf_index\": 28, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 29, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 60, \"name\": \"rf_gpr_29\", \"rf_index\": 29, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 30, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 61, \"name\": \"rf_gpr_30\", \"rf_index\": 30, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 1, \"bitsize\": 32, \"description\": \"\", \"dwarf\": 31, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 62, \"name\": \"rf_gpr";
    rspJson << "_31\", \"rf_index\": 31, \"rf_size\": 32, \"set\": \"Architectural Register File \'rf_gpr\'\", \"uid\": 32}, {\"arch\": 0, \"bitsize\": 1, \"description\": \"\", \"dwarf\": 63, \"encoding\": \"uint\", \"format\": \"hex\", \"gcc\": 63, \"name\": \"r_wfi_ce\", \"set\": \"Micro-architectural Registers\", \"uid\": 36}]}";
    RSP_JSON = rspJson.str();
}
const std::string& Sim::GetRspJson() const 
{
    return RSP_JSON;
}
void Sim::StartRspServer(const unsigned int rspPort, const unsigned int lldbPort)
{
    if (!m_RspServer.IsRunning()) {
        m_RspServer.Register(*this);
        m_RspServer.Start(rspPort, lldbPort);
    }
}
bool Sim::InitBrick(const char* outputFile, const bool useDisassembler, const bool enablePrints)
{
    SIM_LOG(LOG_TYPE_ERROR, 0, m_SimCycleCounter) << "TRACK is not enabled on this simulator.";
    return false;
}
void Sim::InitProfiler(const char* outputFile, const unsigned int samplingRate, const bool enabledCallStack, const uint32_t* sequenceLengthsArray, const uint32_t sequenceLengthsArrayLength)
{
    SIM_LOG(LOG_TYPE_ERROR, 0, m_SimCycleCounter) << "Profiler is not part of simulator. Please, re-generate the simulator with profiling features.";
}
void Sim::PrintInstructionTrace()
{
    if (m_InstructionTraceEnabled)
    {
        auto addr = m_PreviousInstructionAddress;
        std::cout << " |  " << std::setw(2) << 1 << " | " << std::setw(10) << std::dec << m_SimCycleCounter << " | 0x" << std::setw(8) << std::setfill('0') << std::hex << addr << std::dec << std::setw(0) << std::setfill(' ') << " | " << std::endl;
    }
}
void Sim::SetInstructionTraceEnabled(const bool value)
{
    m_InstructionTraceEnabled = value;
    if (value)
    {
        std::cout << " | tid |      cycle |    address |" << std::endl;
    }
}
/**
 *  \brief  Parser_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc_bc__14_13_12_6_5_4_3_2_1_0_bs_32
 */
int Sim::Parser_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc_bc__14_13_12_6_5_4_3_2_1_0_bs_32(const uint32_t input)
{
        switch (((input & 0x707f) )) {
        case ( 0x23 /*XXXXXXXXXXXXXXXXX000XXXXX0100011*/ ):
        {
            
            MI10opc_storebIH5_3isa3isa13_10opc_stores3opc();
            break;
        }
        case ( 0x1023 /*XXXXXXXXXXXXXXXXX001XXXXX0100011*/ ):
        {
            
            MI10opc_storehIH5_3isa3isa13_10opc_stores3opc();
            break;
        }
        case ( 0x2023 /*XXXXXXXXXXXXXXXXX010XXXXX0100011*/ ):
        {
            
            MI10opc_storewIH5_3isa3isa13_10opc_stores3opc();
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI4regsIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32
 */
int Sim::Parser_MI4regsIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(const uint32_t input)
{
        switch (((input & 0xf80) )) {
        case ( 0x80 /*XXXXXXXXXXXXXXXXXXXX00001*/ ):
        {
            
            MI4reg1IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0x180 /*XXXXXXXXXXXXXXXXXXXX00011*/ ):
        {
            
            MI4reg3IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0x100 /*XXXXXXXXXXXXXXXXXXXX00010*/ ):
        {
            
            MI4reg2IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0x380 /*XXXXXXXXXXXXXXXXXXXX00111*/ ):
        {
            
            MI4reg7IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0x300 /*XXXXXXXXXXXXXXXXXXXX00110*/ ):
        {
            
            MI4reg6IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0x280 /*XXXXXXXXXXXXXXXXXXXX00101*/ ):
        {
            
            MI4reg5IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0x200 /*XXXXXXXXXXXXXXXXXXXX00100*/ ):
        {
            
            MI4reg4IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0x780 /*XXXXXXXXXXXXXXXXXXXX01111*/ ):
        {
            
            MI5reg15IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0x700 /*XXXXXXXXXXXXXXXXXXXX01110*/ ):
        {
            
            MI5reg14IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0x680 /*XXXXXXXXXXXXXXXXXXXX01101*/ ):
        {
            
            MI5reg13IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0x600 /*XXXXXXXXXXXXXXXXXXXX01100*/ ):
        {
            
            MI5reg12IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0x580 /*XXXXXXXXXXXXXXXXXXXX01011*/ ):
        {
            
            MI5reg11IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0x500 /*XXXXXXXXXXXXXXXXXXXX01010*/ ):
        {
            
            MI5reg10IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0x480 /*XXXXXXXXXXXXXXXXXXXX01001*/ ):
        {
            
            MI4reg9IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0x400 /*XXXXXXXXXXXXXXXXXXXX01000*/ ):
        {
            
            MI4reg8IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0xf80 /*XXXXXXXXXXXXXXXXXXXX11111*/ ):
        {
            
            MI5reg31IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0xf00 /*XXXXXXXXXXXXXXXXXXXX11110*/ ):
        {
            
            MI5reg30IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0xe80 /*XXXXXXXXXXXXXXXXXXXX11101*/ ):
        {
            
            MI5reg29IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0xe00 /*XXXXXXXXXXXXXXXXXXXX11100*/ ):
        {
            
            MI5reg28IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0xd80 /*XXXXXXXXXXXXXXXXXXXX11011*/ ):
        {
            
            MI5reg27IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0xd00 /*XXXXXXXXXXXXXXXXXXXX11010*/ ):
        {
            
            MI5reg26IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0xc80 /*XXXXXXXXXXXXXXXXXXXX11001*/ ):
        {
            
            MI5reg25IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0xc00 /*XXXXXXXXXXXXXXXXXXXX11000*/ ):
        {
            
            MI5reg24IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0xb80 /*XXXXXXXXXXXXXXXXXXXX10111*/ ):
        {
            
            MI5reg23IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0xb00 /*XXXXXXXXXXXXXXXXXXXX10110*/ ):
        {
            
            MI5reg22IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0xa80 /*XXXXXXXXXXXXXXXXXXXX10101*/ ):
        {
            
            MI5reg21IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0xa00 /*XXXXXXXXXXXXXXXXXXXX10100*/ ):
        {
            
            MI5reg20IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0x980 /*XXXXXXXXXXXXXXXXXXXX10011*/ ):
        {
            
            MI5reg19IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0x900 /*XXXXXXXXXXXXXXXXXXXX10010*/ ):
        {
            
            MI5reg18IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0x880 /*XXXXXXXXXXXXXXXXXXXX10001*/ ):
        {
            
            MI5reg17IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        case ( 0x800 /*XXXXXXXXXXXXXXXXXXXX10000*/ ):
        {
            
            MI5reg16IH5_3isa3isa9_7reg_any3dst();
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI4regsIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32
 */
int Sim::Parser_MI4regsIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32(const uint32_t input)
{
        switch (((input & 0xf8000) )) {
        case ( 0x8000 /*XXXXXXXXXXXX00001*/ ):
        {
            
            MI4reg1IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0x18000 /*XXXXXXXXXXXX00011*/ ):
        {
            
            MI4reg3IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0x10000 /*XXXXXXXXXXXX00010*/ ):
        {
            
            MI4reg2IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0x38000 /*XXXXXXXXXXXX00111*/ ):
        {
            
            MI4reg7IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0x30000 /*XXXXXXXXXXXX00110*/ ):
        {
            
            MI4reg6IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0x28000 /*XXXXXXXXXXXX00101*/ ):
        {
            
            MI4reg5IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0x20000 /*XXXXXXXXXXXX00100*/ ):
        {
            
            MI4reg4IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0x78000 /*XXXXXXXXXXXX01111*/ ):
        {
            
            MI5reg15IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0x70000 /*XXXXXXXXXXXX01110*/ ):
        {
            
            MI5reg14IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0x68000 /*XXXXXXXXXXXX01101*/ ):
        {
            
            MI5reg13IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0x60000 /*XXXXXXXXXXXX01100*/ ):
        {
            
            MI5reg12IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0x58000 /*XXXXXXXXXXXX01011*/ ):
        {
            
            MI5reg11IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0x50000 /*XXXXXXXXXXXX01010*/ ):
        {
            
            MI5reg10IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0x48000 /*XXXXXXXXXXXX01001*/ ):
        {
            
            MI4reg9IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0x40000 /*XXXXXXXXXXXX01000*/ ):
        {
            
            MI4reg8IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0xf8000 /*XXXXXXXXXXXX11111*/ ):
        {
            
            MI5reg31IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0xf0000 /*XXXXXXXXXXXX11110*/ ):
        {
            
            MI5reg30IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0xe8000 /*XXXXXXXXXXXX11101*/ ):
        {
            
            MI5reg29IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0xe0000 /*XXXXXXXXXXXX11100*/ ):
        {
            
            MI5reg28IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0xd8000 /*XXXXXXXXXXXX11011*/ ):
        {
            
            MI5reg27IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0xd0000 /*XXXXXXXXXXXX11010*/ ):
        {
            
            MI5reg26IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0xc8000 /*XXXXXXXXXXXX11001*/ ):
        {
            
            MI5reg25IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0xc0000 /*XXXXXXXXXXXX11000*/ ):
        {
            
            MI5reg24IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0xb8000 /*XXXXXXXXXXXX10111*/ ):
        {
            
            MI5reg23IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0xb0000 /*XXXXXXXXXXXX10110*/ ):
        {
            
            MI5reg22IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0xa8000 /*XXXXXXXXXXXX10101*/ ):
        {
            
            MI5reg21IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0xa0000 /*XXXXXXXXXXXX10100*/ ):
        {
            
            MI5reg20IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0x98000 /*XXXXXXXXXXXX10011*/ ):
        {
            
            MI5reg19IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0x90000 /*XXXXXXXXXXXX10010*/ ):
        {
            
            MI5reg18IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0x88000 /*XXXXXXXXXXXX10001*/ ):
        {
            
            MI5reg17IH5_3isa3isa9_7reg_any3src();
            break;
        }
        case ( 0x80000 /*XXXXXXXXXXXX10000*/ ):
        {
            
            MI5reg16IH5_3isa3isa9_7reg_any3src();
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI4regsIH5_3isa3isa9_7reg_any4rs_1_bc__19_18_17_16_15_bs_32
 */
int Sim::Parser_MI4regsIH5_3isa3isa9_7reg_any4rs_1_bc__19_18_17_16_15_bs_32(const uint32_t input)
{
        switch (((input & 0xf8000) )) {
        case ( 0x8000 /*XXXXXXXXXXXX00001*/ ):
        {
            
            MI4reg1IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0x18000 /*XXXXXXXXXXXX00011*/ ):
        {
            
            MI4reg3IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0x10000 /*XXXXXXXXXXXX00010*/ ):
        {
            
            MI4reg2IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0x38000 /*XXXXXXXXXXXX00111*/ ):
        {
            
            MI4reg7IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0x30000 /*XXXXXXXXXXXX00110*/ ):
        {
            
            MI4reg6IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0x28000 /*XXXXXXXXXXXX00101*/ ):
        {
            
            MI4reg5IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0x20000 /*XXXXXXXXXXXX00100*/ ):
        {
            
            MI4reg4IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0x78000 /*XXXXXXXXXXXX01111*/ ):
        {
            
            MI5reg15IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0x70000 /*XXXXXXXXXXXX01110*/ ):
        {
            
            MI5reg14IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0x68000 /*XXXXXXXXXXXX01101*/ ):
        {
            
            MI5reg13IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0x60000 /*XXXXXXXXXXXX01100*/ ):
        {
            
            MI5reg12IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0x58000 /*XXXXXXXXXXXX01011*/ ):
        {
            
            MI5reg11IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0x50000 /*XXXXXXXXXXXX01010*/ ):
        {
            
            MI5reg10IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0x48000 /*XXXXXXXXXXXX01001*/ ):
        {
            
            MI4reg9IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0x40000 /*XXXXXXXXXXXX01000*/ ):
        {
            
            MI4reg8IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0xf8000 /*XXXXXXXXXXXX11111*/ ):
        {
            
            MI5reg31IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0xf0000 /*XXXXXXXXXXXX11110*/ ):
        {
            
            MI5reg30IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0xe8000 /*XXXXXXXXXXXX11101*/ ):
        {
            
            MI5reg29IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0xe0000 /*XXXXXXXXXXXX11100*/ ):
        {
            
            MI5reg28IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0xd8000 /*XXXXXXXXXXXX11011*/ ):
        {
            
            MI5reg27IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0xd0000 /*XXXXXXXXXXXX11010*/ ):
        {
            
            MI5reg26IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0xc8000 /*XXXXXXXXXXXX11001*/ ):
        {
            
            MI5reg25IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0xc0000 /*XXXXXXXXXXXX11000*/ ):
        {
            
            MI5reg24IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0xb8000 /*XXXXXXXXXXXX10111*/ ):
        {
            
            MI5reg23IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0xb0000 /*XXXXXXXXXXXX10110*/ ):
        {
            
            MI5reg22IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0xa8000 /*XXXXXXXXXXXX10101*/ ):
        {
            
            MI5reg21IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0xa0000 /*XXXXXXXXXXXX10100*/ ):
        {
            
            MI5reg20IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0x98000 /*XXXXXXXXXXXX10011*/ ):
        {
            
            MI5reg19IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0x90000 /*XXXXXXXXXXXX10010*/ ):
        {
            
            MI5reg18IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0x88000 /*XXXXXXXXXXXX10001*/ ):
        {
            
            MI5reg17IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        case ( 0x80000 /*XXXXXXXXXXXX10000*/ ):
        {
            
            MI5reg16IH5_3isa3isa9_7reg_any4rs_1();
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI4regsIH5_3isa3isa9_7reg_any4rs_2_bc__24_23_22_21_20_bs_32
 */
int Sim::Parser_MI4regsIH5_3isa3isa9_7reg_any4rs_2_bc__24_23_22_21_20_bs_32(const uint32_t input)
{
        switch (((input & 0x1f00000) )) {
        case ( 0x100000 /*XXXXXXX00001*/ ):
        {
            
            MI4reg1IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x300000 /*XXXXXXX00011*/ ):
        {
            
            MI4reg3IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x200000 /*XXXXXXX00010*/ ):
        {
            
            MI4reg2IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x700000 /*XXXXXXX00111*/ ):
        {
            
            MI4reg7IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x600000 /*XXXXXXX00110*/ ):
        {
            
            MI4reg6IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x500000 /*XXXXXXX00101*/ ):
        {
            
            MI4reg5IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x400000 /*XXXXXXX00100*/ ):
        {
            
            MI4reg4IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0xf00000 /*XXXXXXX01111*/ ):
        {
            
            MI5reg15IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0xe00000 /*XXXXXXX01110*/ ):
        {
            
            MI5reg14IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0xd00000 /*XXXXXXX01101*/ ):
        {
            
            MI5reg13IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0xc00000 /*XXXXXXX01100*/ ):
        {
            
            MI5reg12IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0xb00000 /*XXXXXXX01011*/ ):
        {
            
            MI5reg11IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0xa00000 /*XXXXXXX01010*/ ):
        {
            
            MI5reg10IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x900000 /*XXXXXXX01001*/ ):
        {
            
            MI4reg9IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x800000 /*XXXXXXX01000*/ ):
        {
            
            MI4reg8IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x1f00000 /*XXXXXXX11111*/ ):
        {
            
            MI5reg31IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x1e00000 /*XXXXXXX11110*/ ):
        {
            
            MI5reg30IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x1d00000 /*XXXXXXX11101*/ ):
        {
            
            MI5reg29IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x1c00000 /*XXXXXXX11100*/ ):
        {
            
            MI5reg28IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x1b00000 /*XXXXXXX11011*/ ):
        {
            
            MI5reg27IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x1a00000 /*XXXXXXX11010*/ ):
        {
            
            MI5reg26IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x1900000 /*XXXXXXX11001*/ ):
        {
            
            MI5reg25IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x1800000 /*XXXXXXX11000*/ ):
        {
            
            MI5reg24IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x1700000 /*XXXXXXX10111*/ ):
        {
            
            MI5reg23IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x1600000 /*XXXXXXX10110*/ ):
        {
            
            MI5reg22IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x1500000 /*XXXXXXX10101*/ ):
        {
            
            MI5reg21IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x1400000 /*XXXXXXX10100*/ ):
        {
            
            MI5reg20IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x1300000 /*XXXXXXX10011*/ ):
        {
            
            MI5reg19IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x1200000 /*XXXXXXX10010*/ ):
        {
            
            MI5reg18IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x1100000 /*XXXXXXX10001*/ ):
        {
            
            MI5reg17IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        case ( 0x1000000 /*XXXXXXX10000*/ ):
        {
            
            MI5reg16IH5_3isa3isa9_7reg_any4rs_2();
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI4regsIH5_3isa3isa9_7reg_any4src1_bc__19_18_17_16_15_bs_32
 */
int Sim::Parser_MI4regsIH5_3isa3isa9_7reg_any4src1_bc__19_18_17_16_15_bs_32(const uint32_t input)
{
        switch (((input & 0xf8000) )) {
        case ( 0x8000 /*XXXXXXXXXXXX00001*/ ):
        {
            
            MI4reg1IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0x18000 /*XXXXXXXXXXXX00011*/ ):
        {
            
            MI4reg3IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0x10000 /*XXXXXXXXXXXX00010*/ ):
        {
            
            MI4reg2IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0x38000 /*XXXXXXXXXXXX00111*/ ):
        {
            
            MI4reg7IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0x30000 /*XXXXXXXXXXXX00110*/ ):
        {
            
            MI4reg6IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0x28000 /*XXXXXXXXXXXX00101*/ ):
        {
            
            MI4reg5IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0x20000 /*XXXXXXXXXXXX00100*/ ):
        {
            
            MI4reg4IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0x78000 /*XXXXXXXXXXXX01111*/ ):
        {
            
            MI5reg15IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0x70000 /*XXXXXXXXXXXX01110*/ ):
        {
            
            MI5reg14IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0x68000 /*XXXXXXXXXXXX01101*/ ):
        {
            
            MI5reg13IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0x60000 /*XXXXXXXXXXXX01100*/ ):
        {
            
            MI5reg12IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0x58000 /*XXXXXXXXXXXX01011*/ ):
        {
            
            MI5reg11IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0x50000 /*XXXXXXXXXXXX01010*/ ):
        {
            
            MI5reg10IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0x48000 /*XXXXXXXXXXXX01001*/ ):
        {
            
            MI4reg9IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0x40000 /*XXXXXXXXXXXX01000*/ ):
        {
            
            MI4reg8IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0xf8000 /*XXXXXXXXXXXX11111*/ ):
        {
            
            MI5reg31IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0xf0000 /*XXXXXXXXXXXX11110*/ ):
        {
            
            MI5reg30IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0xe8000 /*XXXXXXXXXXXX11101*/ ):
        {
            
            MI5reg29IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0xe0000 /*XXXXXXXXXXXX11100*/ ):
        {
            
            MI5reg28IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0xd8000 /*XXXXXXXXXXXX11011*/ ):
        {
            
            MI5reg27IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0xd0000 /*XXXXXXXXXXXX11010*/ ):
        {
            
            MI5reg26IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0xc8000 /*XXXXXXXXXXXX11001*/ ):
        {
            
            MI5reg25IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0xc0000 /*XXXXXXXXXXXX11000*/ ):
        {
            
            MI5reg24IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0xb8000 /*XXXXXXXXXXXX10111*/ ):
        {
            
            MI5reg23IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0xb0000 /*XXXXXXXXXXXX10110*/ ):
        {
            
            MI5reg22IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0xa8000 /*XXXXXXXXXXXX10101*/ ):
        {
            
            MI5reg21IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0xa0000 /*XXXXXXXXXXXX10100*/ ):
        {
            
            MI5reg20IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0x98000 /*XXXXXXXXXXXX10011*/ ):
        {
            
            MI5reg19IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0x90000 /*XXXXXXXXXXXX10010*/ ):
        {
            
            MI5reg18IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0x88000 /*XXXXXXXXXXXX10001*/ ):
        {
            
            MI5reg17IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        case ( 0x80000 /*XXXXXXXXXXXX10000*/ ):
        {
            
            MI5reg16IH5_3isa3isa9_7reg_any4src1();
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI4regsIH5_3isa3isa9_7reg_any4src2_bc__24_23_22_21_20_bs_32
 */
int Sim::Parser_MI4regsIH5_3isa3isa9_7reg_any4src2_bc__24_23_22_21_20_bs_32(const uint32_t input)
{
        switch (((input & 0x1f00000) )) {
        case ( 0x100000 /*XXXXXXX00001*/ ):
        {
            
            MI4reg1IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x300000 /*XXXXXXX00011*/ ):
        {
            
            MI4reg3IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x200000 /*XXXXXXX00010*/ ):
        {
            
            MI4reg2IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x700000 /*XXXXXXX00111*/ ):
        {
            
            MI4reg7IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x600000 /*XXXXXXX00110*/ ):
        {
            
            MI4reg6IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x500000 /*XXXXXXX00101*/ ):
        {
            
            MI4reg5IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x400000 /*XXXXXXX00100*/ ):
        {
            
            MI4reg4IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0xf00000 /*XXXXXXX01111*/ ):
        {
            
            MI5reg15IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0xe00000 /*XXXXXXX01110*/ ):
        {
            
            MI5reg14IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0xd00000 /*XXXXXXX01101*/ ):
        {
            
            MI5reg13IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0xc00000 /*XXXXXXX01100*/ ):
        {
            
            MI5reg12IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0xb00000 /*XXXXXXX01011*/ ):
        {
            
            MI5reg11IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0xa00000 /*XXXXXXX01010*/ ):
        {
            
            MI5reg10IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x900000 /*XXXXXXX01001*/ ):
        {
            
            MI4reg9IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x800000 /*XXXXXXX01000*/ ):
        {
            
            MI4reg8IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x1f00000 /*XXXXXXX11111*/ ):
        {
            
            MI5reg31IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x1e00000 /*XXXXXXX11110*/ ):
        {
            
            MI5reg30IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x1d00000 /*XXXXXXX11101*/ ):
        {
            
            MI5reg29IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x1c00000 /*XXXXXXX11100*/ ):
        {
            
            MI5reg28IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x1b00000 /*XXXXXXX11011*/ ):
        {
            
            MI5reg27IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x1a00000 /*XXXXXXX11010*/ ):
        {
            
            MI5reg26IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x1900000 /*XXXXXXX11001*/ ):
        {
            
            MI5reg25IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x1800000 /*XXXXXXX11000*/ ):
        {
            
            MI5reg24IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x1700000 /*XXXXXXX10111*/ ):
        {
            
            MI5reg23IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x1600000 /*XXXXXXX10110*/ ):
        {
            
            MI5reg22IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x1500000 /*XXXXXXX10101*/ ):
        {
            
            MI5reg21IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x1400000 /*XXXXXXX10100*/ ):
        {
            
            MI5reg20IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x1300000 /*XXXXXXX10011*/ ):
        {
            
            MI5reg19IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x1200000 /*XXXXXXX10010*/ ):
        {
            
            MI5reg18IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x1100000 /*XXXXXXX10001*/ ):
        {
            
            MI5reg17IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        case ( 0x1000000 /*XXXXXXX10000*/ ):
        {
            
            MI5reg16IH5_3isa3isa9_7reg_any4src2();
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32
 */
int Sim::Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(const uint32_t input)
{
        if (((input & 0xf80) == 0x0 /*XXXXXXXXXXXXXXXXXXXX00000*/ )) {
            
            MI4reg0IH5_3isa3isa9_7reg_any3dst();
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any3dst;
        }
        if (((input & 0xf80) == 0x80 /*XXXXXXXXXXXXXXXXXXXX00001*/ ) || 
                ((input & 0xf00) == 0x100 /*XXXXXXXXXXXXXXXXXXXX0001X*/ ) || 
                ((input & 0xe00) == 0x200 /*XXXXXXXXXXXXXXXXXXXX001XX*/ ) || 
                ((input & 0xc00) == 0x400 /*XXXXXXXXXXXXXXXXXXXX01XXX*/ ) || 
                ((input & 0x800) == 0x800 /*XXXXXXXXXXXXXXXXXXXX1XXXX*/ )) {
            
            if (Parser_MI4regsIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any3dst;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any3dst:
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32
 */
int Sim::Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32(const uint32_t input)
{
        if (((input & 0xf8000) == 0x0 /*XXXXXXXXXXXX00000*/ )) {
            
            MI4reg0IH5_3isa3isa9_7reg_any3src();
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any3src;
        }
        if (((input & 0xf8000) == 0x8000 /*XXXXXXXXXXXX00001*/ ) || 
                ((input & 0xf0000) == 0x10000 /*XXXXXXXXXXXX0001X*/ ) || 
                ((input & 0xe0000) == 0x20000 /*XXXXXXXXXXXX001XX*/ ) || 
                ((input & 0xc0000) == 0x40000 /*XXXXXXXXXXXX01XXX*/ ) || 
                ((input & 0x80000) == 0x80000 /*XXXXXXXXXXXX1XXXX*/ )) {
            
            if (Parser_MI4regsIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any3src;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any3src:
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1_bc__19_18_17_16_15_bs_32
 */
int Sim::Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1_bc__19_18_17_16_15_bs_32(const uint32_t input)
{
        if (((input & 0xf8000) == 0x0 /*XXXXXXXXXXXX00000*/ )) {
            
            MI4reg0IH5_3isa3isa9_7reg_any4rs_1();
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1;
        }
        if (((input & 0xf8000) == 0x8000 /*XXXXXXXXXXXX00001*/ ) || 
                ((input & 0xf0000) == 0x10000 /*XXXXXXXXXXXX0001X*/ ) || 
                ((input & 0xe0000) == 0x20000 /*XXXXXXXXXXXX001XX*/ ) || 
                ((input & 0xc0000) == 0x40000 /*XXXXXXXXXXXX01XXX*/ ) || 
                ((input & 0x80000) == 0x80000 /*XXXXXXXXXXXX1XXXX*/ )) {
            
            if (Parser_MI4regsIH5_3isa3isa9_7reg_any4rs_1_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1:
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2_bc__24_23_22_21_20_bs_32
 */
int Sim::Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2_bc__24_23_22_21_20_bs_32(const uint32_t input)
{
        if (((input & 0x1f00000) == 0x0 /*XXXXXXX00000*/ )) {
            
            MI4reg0IH5_3isa3isa9_7reg_any4rs_2();
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2;
        }
        if (((input & 0x1f00000) == 0x100000 /*XXXXXXX00001*/ ) || 
                ((input & 0x1e00000) == 0x200000 /*XXXXXXX0001X*/ ) || 
                ((input & 0x1c00000) == 0x400000 /*XXXXXXX001XX*/ ) || 
                ((input & 0x1800000) == 0x800000 /*XXXXXXX01XXX*/ ) || 
                ((input & 0x1000000) == 0x1000000 /*XXXXXXX1XXXX*/ )) {
            
            if (Parser_MI4regsIH5_3isa3isa9_7reg_any4rs_2_bc__24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2:
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src1_bc__19_18_17_16_15_bs_32
 */
int Sim::Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src1_bc__19_18_17_16_15_bs_32(const uint32_t input)
{
        if (((input & 0xf8000) == 0x0 /*XXXXXXXXXXXX00000*/ )) {
            
            MI4reg0IH5_3isa3isa9_7reg_any4src1();
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4src1;
        }
        if (((input & 0xf8000) == 0x8000 /*XXXXXXXXXXXX00001*/ ) || 
                ((input & 0xf0000) == 0x10000 /*XXXXXXXXXXXX0001X*/ ) || 
                ((input & 0xe0000) == 0x20000 /*XXXXXXXXXXXX001XX*/ ) || 
                ((input & 0xc0000) == 0x40000 /*XXXXXXXXXXXX01XXX*/ ) || 
                ((input & 0x80000) == 0x80000 /*XXXXXXXXXXXX1XXXX*/ )) {
            
            if (Parser_MI4regsIH5_3isa3isa9_7reg_any4src1_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4src1;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4src1:
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src2_bc__24_23_22_21_20_bs_32
 */
int Sim::Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src2_bc__24_23_22_21_20_bs_32(const uint32_t input)
{
        if (((input & 0x1f00000) == 0x0 /*XXXXXXX00000*/ )) {
            
            MI4reg0IH5_3isa3isa9_7reg_any4src2();
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4src2;
        }
        if (((input & 0x1f00000) == 0x100000 /*XXXXXXX00001*/ ) || 
                ((input & 0x1e00000) == 0x200000 /*XXXXXXX0001X*/ ) || 
                ((input & 0x1c00000) == 0x400000 /*XXXXXXX001XX*/ ) || 
                ((input & 0x1800000) == 0x800000 /*XXXXXXX01XXX*/ ) || 
                ((input & 0x1000000) == 0x1000000 /*XXXXXXX1XXXX*/ )) {
            
            if (Parser_MI4regsIH5_3isa3isa9_7reg_any4src2_bc__24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            goto END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4src2;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI7reg_anyIH5_3isa3isa9_7reg_any4src2:
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI8regs_csrIH5_3isa3isa8_6op_csr3csr_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32
 */
int Sim::Parser_MI8regs_csrIH5_3isa3isa8_6op_csr3csr_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(const uint32_t input)
{
        switch (((input & 0xfff00000) )) {
        case ( 0x30000000 /*001100000000*/ ):
        {
            
            MI11csr_mstatusIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x30100000 /*001100000001*/ ):
        {
            
            MI8csr_misaIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x30400000 /*001100000100*/ ):
        {
            
            MI7csr_mieIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x30500000 /*001100000101*/ ):
        {
            
            MI9csr_mtvecIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x32000000 /*001100100000*/ ):
        {
            
            MI17csr_mcountinhibitIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x32400000 /*001100100100*/ ):
        {
            
            MI14csr_mhpmevent4IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x32300000 /*001100100011*/ ):
        {
            
            MI14csr_mhpmevent3IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x32700000 /*001100100111*/ ):
        {
            
            MI14csr_mhpmevent7IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x32500000 /*001100100101*/ ):
        {
            
            MI14csr_mhpmevent5IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x32d00000 /*001100101101*/ ):
        {
            
            MI15csr_mhpmevent13IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x32600000 /*001100100110*/ ):
        {
            
            MI14csr_mhpmevent6IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x32e00000 /*001100101110*/ ):
        {
            
            MI15csr_mhpmevent14IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x33000000 /*001100110000*/ ):
        {
            
            MI15csr_mhpmevent16IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x33100000 /*001100110001*/ ):
        {
            
            MI15csr_mhpmevent17IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x33200000 /*001100110010*/ ):
        {
            
            MI15csr_mhpmevent18IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x33300000 /*001100110011*/ ):
        {
            
            MI15csr_mhpmevent19IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x33400000 /*001100110100*/ ):
        {
            
            MI15csr_mhpmevent20IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x33500000 /*001100110101*/ ):
        {
            
            MI15csr_mhpmevent21IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x33600000 /*001100110110*/ ):
        {
            
            MI15csr_mhpmevent22IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x33700000 /*001100110111*/ ):
        {
            
            MI15csr_mhpmevent23IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x33d00000 /*001100111101*/ ):
        {
            
            MI15csr_mhpmevent29IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x33e00000 /*001100111110*/ ):
        {
            
            MI15csr_mhpmevent30IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x32800000 /*001100101000*/ ):
        {
            
            MI14csr_mhpmevent8IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x32900000 /*001100101001*/ ):
        {
            
            MI14csr_mhpmevent9IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x32a00000 /*001100101010*/ ):
        {
            
            MI15csr_mhpmevent10IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x32b00000 /*001100101011*/ ):
        {
            
            MI15csr_mhpmevent11IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x33800000 /*001100111000*/ ):
        {
            
            MI15csr_mhpmevent24IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x33900000 /*001100111001*/ ):
        {
            
            MI15csr_mhpmevent25IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x33a00000 /*001100111010*/ ):
        {
            
            MI15csr_mhpmevent26IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x33b00000 /*001100111011*/ ):
        {
            
            MI15csr_mhpmevent27IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x32c00000 /*001100101100*/ ):
        {
            
            MI15csr_mhpmevent12IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x33c00000 /*001100111100*/ ):
        {
            
            MI15csr_mhpmevent28IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x32f00000 /*001100101111*/ ):
        {
            
            MI15csr_mhpmevent15IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x33f00000 /*001100111111*/ ):
        {
            
            MI15csr_mhpmevent31IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x34000000 /*001101000000*/ ):
        {
            
            MI12csr_mscratchIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x34100000 /*001101000001*/ ):
        {
            
            MI8csr_mepcIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x34200000 /*001101000010*/ ):
        {
            
            MI10csr_mcauseIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x34300000 /*001101000011*/ ):
        {
            
            MI9csr_mtvalIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0x34400000 /*001101000100*/ ):
        {
            
            MI7csr_mipIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb0000000 /*101100000000*/ ):
        {
            
            MI10csr_mcycleIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb0200000 /*101100000010*/ ):
        {
            
            MI12csr_minstretIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb8000000 /*101110000000*/ ):
        {
            
            MI11csr_mcyclehIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb8200000 /*101110000010*/ ):
        {
            
            MI13csr_minstrethIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb0300000 /*101100000011*/ ):
        {
            
            MI16csr_mhpmcounter3IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb0700000 /*101100000111*/ ):
        {
            
            MI16csr_mhpmcounter7IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb8300000 /*101110000011*/ ):
        {
            
            MI17csr_mhpmcounter3hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb8700000 /*101110000111*/ ):
        {
            
            MI17csr_mhpmcounter7hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb0400000 /*101100000100*/ ):
        {
            
            MI16csr_mhpmcounter4IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb0500000 /*101100000101*/ ):
        {
            
            MI16csr_mhpmcounter5IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb0c00000 /*101100001100*/ ):
        {
            
            MI17csr_mhpmcounter12IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb0d00000 /*101100001101*/ ):
        {
            
            MI17csr_mhpmcounter13IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb8400000 /*101110000100*/ ):
        {
            
            MI17csr_mhpmcounter4hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb8500000 /*101110000101*/ ):
        {
            
            MI17csr_mhpmcounter5hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb8c00000 /*101110001100*/ ):
        {
            
            MI18csr_mhpmcounter12hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb8d00000 /*101110001101*/ ):
        {
            
            MI18csr_mhpmcounter13hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb0600000 /*101100000110*/ ):
        {
            
            MI16csr_mhpmcounter6IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb0e00000 /*101100001110*/ ):
        {
            
            MI17csr_mhpmcounter14IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb8600000 /*101110000110*/ ):
        {
            
            MI17csr_mhpmcounter6hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb8e00000 /*101110001110*/ ):
        {
            
            MI18csr_mhpmcounter14hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb1000000 /*101100010000*/ ):
        {
            
            MI17csr_mhpmcounter16IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb1100000 /*101100010001*/ ):
        {
            
            MI17csr_mhpmcounter17IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb1200000 /*101100010010*/ ):
        {
            
            MI17csr_mhpmcounter18IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb1300000 /*101100010011*/ ):
        {
            
            MI17csr_mhpmcounter19IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb1400000 /*101100010100*/ ):
        {
            
            MI17csr_mhpmcounter20IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb1500000 /*101100010101*/ ):
        {
            
            MI17csr_mhpmcounter21IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb1600000 /*101100010110*/ ):
        {
            
            MI17csr_mhpmcounter22IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb1700000 /*101100010111*/ ):
        {
            
            MI17csr_mhpmcounter23IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb9000000 /*101110010000*/ ):
        {
            
            MI18csr_mhpmcounter16hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb9100000 /*101110010001*/ ):
        {
            
            MI18csr_mhpmcounter17hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb9200000 /*101110010010*/ ):
        {
            
            MI18csr_mhpmcounter18hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb9300000 /*101110010011*/ ):
        {
            
            MI18csr_mhpmcounter19hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb9400000 /*101110010100*/ ):
        {
            
            MI18csr_mhpmcounter20hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb9500000 /*101110010101*/ ):
        {
            
            MI18csr_mhpmcounter21hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb9600000 /*101110010110*/ ):
        {
            
            MI18csr_mhpmcounter22hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb9700000 /*101110010111*/ ):
        {
            
            MI18csr_mhpmcounter23hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb1c00000 /*101100011100*/ ):
        {
            
            MI17csr_mhpmcounter28IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb1d00000 /*101100011101*/ ):
        {
            
            MI17csr_mhpmcounter29IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb9c00000 /*101110011100*/ ):
        {
            
            MI18csr_mhpmcounter28hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb9d00000 /*101110011101*/ ):
        {
            
            MI18csr_mhpmcounter29hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb1e00000 /*101100011110*/ ):
        {
            
            MI17csr_mhpmcounter30IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb9e00000 /*101110011110*/ ):
        {
            
            MI18csr_mhpmcounter30hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb0800000 /*101100001000*/ ):
        {
            
            MI16csr_mhpmcounter8IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb0900000 /*101100001001*/ ):
        {
            
            MI16csr_mhpmcounter9IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb0a00000 /*101100001010*/ ):
        {
            
            MI17csr_mhpmcounter10IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb0b00000 /*101100001011*/ ):
        {
            
            MI17csr_mhpmcounter11IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb1800000 /*101100011000*/ ):
        {
            
            MI17csr_mhpmcounter24IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb1900000 /*101100011001*/ ):
        {
            
            MI17csr_mhpmcounter25IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb1a00000 /*101100011010*/ ):
        {
            
            MI17csr_mhpmcounter26IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb1b00000 /*101100011011*/ ):
        {
            
            MI17csr_mhpmcounter27IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb8800000 /*101110001000*/ ):
        {
            
            MI17csr_mhpmcounter8hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb8900000 /*101110001001*/ ):
        {
            
            MI17csr_mhpmcounter9hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb8a00000 /*101110001010*/ ):
        {
            
            MI18csr_mhpmcounter10hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb8b00000 /*101110001011*/ ):
        {
            
            MI18csr_mhpmcounter11hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb9800000 /*101110011000*/ ):
        {
            
            MI18csr_mhpmcounter24hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb9900000 /*101110011001*/ ):
        {
            
            MI18csr_mhpmcounter25hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb9a00000 /*101110011010*/ ):
        {
            
            MI18csr_mhpmcounter26hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb9b00000 /*101110011011*/ ):
        {
            
            MI18csr_mhpmcounter27hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb0f00000 /*101100001111*/ ):
        {
            
            MI17csr_mhpmcounter15IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb1f00000 /*101100011111*/ ):
        {
            
            MI17csr_mhpmcounter31IH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb8f00000 /*101110001111*/ ):
        {
            
            MI18csr_mhpmcounter15hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xb9f00000 /*101110011111*/ ):
        {
            
            MI18csr_mhpmcounter31hIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xf1200000 /*111100010010*/ ):
        {
            
            MI11csr_marchidIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xf1100000 /*111100010001*/ ):
        {
            
            MI13csr_mvendoridIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xf1300000 /*111100010011*/ ):
        {
            
            MI10csr_mimpidIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xf1400000 /*111100010100*/ ):
        {
            
            MI11csr_mhartidIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xfc100000 /*111111000001*/ ):
        {
            
            MI7csr_nmiIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        case ( 0xfc600000 /*111111000110*/ ):
        {
            
            MI13csr_nmi_mtvalIH5_3isa3isa8_6op_csr3csr();
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc_bc__14_13_12_6_5_4_3_2_1_0_bs_32
 */
int Sim::Parser_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc_bc__14_13_12_6_5_4_3_2_1_0_bs_32(const uint32_t input)
{
        switch (((input & 0x707f) )) {
        case ( 0x2003 /*XXXXXXXXXXXXXXXXX010XXXXX0000011*/ ):
        {
            
            MI9opc_loadwIH5_3isa3isa11_9opc_loads3opc();
            break;
        }
        case ( 0x3 /*XXXXXXXXXXXXXXXXX000XXXXX0000011*/ ):
        {
            
            MI9opc_loadbIH5_3isa3isa11_9opc_loads3opc();
            break;
        }
        case ( 0x1003 /*XXXXXXXXXXXXXXXXX001XXXXX0000011*/ ):
        {
            
            MI9opc_loadhIH5_3isa3isa11_9opc_loads3opc();
            break;
        }
        case ( 0x4003 /*XXXXXXXXXXXXXXXXX100XXXXX0000011*/ ):
        {
            
            MI10opc_loadbuIH5_3isa3isa11_9opc_loads3opc();
            break;
        }
        case ( 0x5003 /*XXXXXXXXXXXXXXXXX101XXXXX0000011*/ ):
        {
            
            MI10opc_loadhuIH5_3isa3isa11_9opc_loads3opc();
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 *  \brief  MI4main
 */
void Sim::MI4main()
{
    {
        MI16r_mcycle_inhibit.write((static_cast<codasip::Integer<1, false>>(MI19r_csr_mcountinhibit.read() >> int32_t(0))));
        MI18r_minstret_inhibit.write((static_cast<codasip::Integer<1, false>>(MI19r_csr_mcountinhibit.read() >> int32_t(2))));
        MI4r_PC.write(codasip_concatenate((static_cast<codasip::Integer<30, false>>(MI4r_PC.read() >> int32_t(2))), codasip::Integer<2, false>(0u)));
        MI9r_csr_mip.write(static_cast<codasip::Integer<12, false>>(codasip_concatenate(static_cast<codasip::Integer<9, false>>(codasip_concatenate(static_cast<uint8_t>(codasip_concatenate(static_cast<codasip::Integer<5, false>>(codasip_concatenate(static_cast<codasip::Integer<4, false>>(codasip_concatenate(MI6p_meip.read(), codasip::Integer<3, false>(0u))), MI6p_mtip.read())), codasip::Integer<3, false>(0u))), MI6p_msip.read())), codasip::Integer<3, false>(0u))));
        MI17codasip_tmp_var_0IH1_4main.write(static_cast<bool>(((MI9r_csr_mip.read() & MI9r_csr_mie.read()) != uint32_t(0u)) || MI5p_nmi.read()));
        if (MI17codasip_tmp_var_0IH1_4main.read())
        {
            MI5r_wfi.write(int32_t(0));
            SIM_LOG(LOG_TYPE_PRINT, 3, m_SimCycleCounter)
                 << "Wake up\n";
        }
        MI5p_wfi.write(MI5r_wfi.read());
        MI17codasip_tmp_var_1IH1_4main.write(static_cast<bool>(!MI5r_wfi.read() || MI5p_nmi.read()));
        if (MI17codasip_tmp_var_1IH1_4main.read())
        {
            MI8take_int();
            MI13r_fetch_fault.write(int32_t(0));
            MI17codasip_tmp_var_2IH1_4main.write(static_cast<codasip::Integer<1, false>>(MI12r_reset_init.read()));
            if (MI17codasip_tmp_var_2IH1_4main.read())
            {
                MI12r_reset_init.write(int32_t(0));
            }
            MI13r_instr_fetch.write(MI11fetch_instr(MI4r_PC.read()));
            MI17codasip_tmp_var_3IH1_4main.write(static_cast<bool>(!MI16r_mcycle_inhibit.read()));
            if (MI17codasip_tmp_var_3IH1_4main.read())
            {
                MI12r_csr_mcycle.write(MI12r_csr_mcycle.read() + uint64_t(1ull));
            }
            MI15r_illegal_instr.write(int32_t(0));
            MI14r_pf_mem_error.write(int32_t(0));
            MI17codasip_tmp_var_4IH1_4main.write(static_cast<bool>(!MI13r_fetch_fault.read()));
            if (MI17codasip_tmp_var_4IH1_4main.read())
            {
                {
                    resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
                    {
                        SIM_LOG(LOG_TYPE_PRINT, 3, m_SimCycleCounter)
                             <<  std::dec << (codasip_get_clock_cycle()) << std::dec
                             << ": "
                             << std::setw(16) << std::setfill ('0') <<  std::hex << (MI4r_PC.read()) << std::dec << std::setw(0) << std::setfill(' ')
                             << " | "
                             << std::setw(8) << std::setfill ('0') <<  std::hex << (MI13r_instr_fetch.read()) << std::dec << std::setw(0) << std::setfill(' ')
                             << " | ";
                    }
                }
                {
                    resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
                    {
                        SIM_LOG(LOG_TYPE_PRINT, 3, m_SimCycleCounter) << codasip_disassembler(int32_t(3),MI13r_instr_fetch.read(),MI4r_PC.read(),"default",int32_t(37));
                    }
                }
                SIM_LOG(LOG_TYPE_PRINT, 3, m_SimCycleCounter)
                     << " | ";
                MI4r_PC.write(MI4r_PC.read() + uint32_t(4u));
            }
            MI18r_minstret_written.write(int32_t(0));
            {
                bool MI3isaIH5_3isa3isa_decoder_invalid_bool = false;
                Decoder_MI3isaIH5_3isa3isa(MI13r_instr_fetch.read(),MI3isaIH5_3isa3isa_decoder_invalid_bool);
                MI15r_unknown_instr.write(MI3isaIH5_3isa3isa_decoder_invalid_bool);
            }
            ;
            MI20resolve_illegal_instIH23_20resolve_illegal_inst20resolve_illegal_inst();
            MI12r_ldst_hresp.write(codasip::Integer<1, false>(0u));
            MI13r_fetch_hresp.write(codasip::Integer<1, false>(0u));
        }
    }
}
/**
 *  \brief  MI20resolve_illegal_instIH23_20resolve_illegal_inst20resolve_illegal_inst
 */
void Sim::MI20resolve_illegal_instIH23_20resolve_illegal_inst20resolve_illegal_inst()
{
    {
        MI17codasip_tmp_var_0IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.write(static_cast<bool>(!MI13r_fetch_fault.read()));
        if (MI17codasip_tmp_var_0IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.read())
        {
            SIM_LOG(LOG_TYPE_PRINT, 3, m_SimCycleCounter)
                 << "\n";
        }
        MI17codasip_tmp_var_1IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.write(static_cast<codasip::Integer<1, false>>(static_cast<codasip::Integer<1, false>>(MI15r_illegal_instr.read() | MI15r_unknown_instr.read())));
        if (MI17codasip_tmp_var_1IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.read())
        {
            MI9take_trap(codasip::Integer<5, false>(2u),MI13r_instr_fetch.read(),bool(1u));
        }
        else 
        {
            MI17codasip_tmp_var_2IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.write(static_cast<bool>(!MI5r_wfi.read() && !MI18r_minstret_inhibit.read() && !MI13r_fetch_fault.read() && !MI18r_minstret_written.read() && !MI14r_pf_mem_error.read()));
            if (MI17codasip_tmp_var_2IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.read())
            {
                MI14r_csr_minstret.write(MI14r_csr_minstret.read() + uint64_t(1ull));
            }
        }
    }
}
/**
 *  \brief  MI11fetch_instr
 */
uint32_t Sim::MI11fetch_instr(const uint32_t MI15codasip_param_0)
{
    {
        MI5vaddrIH1_11fetch_instr.write(MI15codasip_param_0);
        MI5instrIH1_11fetch_instrB0.write(MI20fetch_interface_read(MI5vaddrIH1_11fetch_instr.read(),int32_t(4)));
        MI17codasip_tmp_var_0IH1_11fetch_instr.write(static_cast<bool>(MI13r_fetch_hresp.read() != codasip::Integer<1, false>(0u)));
        if (MI17codasip_tmp_var_0IH1_11fetch_instr.read())
        {
            MI9take_trap(uint32_t(2147483664u),MI5vaddrIH1_11fetch_instr.read(),bool(0u));
            MI13r_fetch_fault.write(int32_t(1));
            return int32_t(19);
        }
        return MI5instrIH1_11fetch_instrB0.read();
    }
}
/**
 *  \brief  MI11rf_gpr_read
 */
uint32_t Sim::MI11rf_gpr_read(const codasip::Integer<5, false> MI15codasip_param_0)
{
    {
        MI1iIH1_11rf_gpr_read.write(MI15codasip_param_0);
        MI17codasip_tmp_var_0IH1_11rf_gpr_read.write(static_cast<bool>(MI1iIH1_11rf_gpr_read.read() > codasip::Integer<5, false>(0u)));
        if (MI17codasip_tmp_var_0IH1_11rf_gpr_read.read())
        {
            MI3valIH1_11rf_gpr_readB0.write(MI6rf_gpr.read(MI1iIH1_11rf_gpr_read.read(),uint32_t(4294967295u)));
            SIM_LOG(LOG_TYPE_PRINT, 3, m_SimCycleCounter)
                 << "r"
                 << std::setw(2) << std::setfill ('0') << codasip::Integer<5, 0>(MI1iIH1_11rf_gpr_read.read()).GetDec() << std::setw(0) << std::setfill(' ')
                 << "->"
                 << std::setw(8) << std::setfill ('0') <<  std::hex << (MI3valIH1_11rf_gpr_readB0.read()) << std::dec << std::setw(0) << std::setfill(' ')
                 << " ";
        }
        else 
        {
            MI3valIH1_11rf_gpr_readB0.write(int32_t(0));
        }
        return MI3valIH1_11rf_gpr_readB0.read();
    }
}
/**
 *  \brief  MI12rf_gpr_write
 */
void Sim::MI12rf_gpr_write(const codasip::Integer<5, false> MI15codasip_param_0, const uint32_t MI15codasip_param_1)
{
    {
        MI3valIH1_12rf_gpr_write.write(MI15codasip_param_1);
        MI1iIH1_12rf_gpr_write.write(MI15codasip_param_0);
        MI17codasip_tmp_var_0IH1_12rf_gpr_write.write(static_cast<bool>(MI1iIH1_12rf_gpr_write.read() != codasip::Integer<5, false>(0u)));
        if (MI17codasip_tmp_var_0IH1_12rf_gpr_write.read())
        {
            resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
            {
                SIM_LOG(LOG_TYPE_PRINT, 3, m_SimCycleCounter)
                     << "r"
                     << std::setw(2) << std::setfill ('0') << codasip::Integer<5, 0>(MI1iIH1_12rf_gpr_write.read()).GetDec() << std::setw(0) << std::setfill(' ')
                     << "<-"
                     << std::setw(8) << std::setfill ('0') <<  std::hex << (MI3valIH1_12rf_gpr_write.read()) << std::dec << std::setw(0) << std::setfill(' ')
                     << " ";
                MI6rf_gpr.write(MI3valIH1_12rf_gpr_write.read(),MI1iIH1_12rf_gpr_write.read(),uint32_t(4294967295u));
                if (!(static_cast<codasip::Integer<1, false>>(~MI15r_illegal_instr.read()))) {
                    SIM_LOG(LOG_TYPE_FATAL, 0, m_SimCycleCounter)
                         << "assert failed: /home/project/codasip_urisc_v/model/ia/other/ia_utils.codal:80: "
                         << "GPR can be written only if instruction is not illegal. r_illegal_instr: "
                         << codasip::Integer<1, 0>(MI15r_illegal_instr.read()).GetDec();
                    throw simulator::HaltableError("");
                };
            }
        }
    }
}
/**
 *  \brief  MI20fetch_interface_read
 */
uint32_t Sim::MI20fetch_interface_read(const uint32_t MI15codasip_param_0, codasip::Integer<3, false> MI15codasip_param_1)
{
    {
        MI5hsizeIH1_20fetch_interface_read.write(MI15codasip_param_1);
        MI5haddrIH1_20fetch_interface_read.write(MI15codasip_param_0);
        MI5hprotIH1_20fetch_interface_readB0.write(int32_t(3));
        MI6resultIH1_20fetch_interface_readB0.write(MI8if_fetch.read(MI5haddrIH1_20fetch_interface_read.read(),MI5hsizeIH1_20fetch_interface_read.read(),MI5hrespIH1_20fetch_interface_readB0,static_cast<codasip::Integer<4, false>>(codasip_concatenate(MI5hprotIH1_20fetch_interface_readB0.read(), codasip::Integer<2, false>(2u))),codasip::Integer<1, false>(0u)));
        MI13r_fetch_hresp.write(MI5hrespIH1_20fetch_interface_readB0.read());
        return MI6resultIH1_20fetch_interface_readB0.read();
    }
}
/**
 *  \brief  MI19ldst_interface_read
 */
uint32_t Sim::MI19ldst_interface_read(const uint32_t MI15codasip_param_0, uint32_t MI15codasip_param_1)
{
    {
        MI5hsizeIH1_19ldst_interface_read.write(MI15codasip_param_1);
        MI5haddrIH1_19ldst_interface_read.write(MI15codasip_param_0);
        MI5hprotIH1_19ldst_interface_readB0.write(int32_t(3));
        MI6resultIH1_19ldst_interface_readB0.write(MI7if_ldst.read(MI5haddrIH1_19ldst_interface_read.read(),MI5hsizeIH1_19ldst_interface_read.read(),MI5hrespIH1_19ldst_interface_readB0,static_cast<codasip::Integer<4, false>>(codasip_concatenate(MI5hprotIH1_19ldst_interface_readB0.read(), codasip::Integer<2, false>(3u))),codasip::Integer<1, false>(0u)));
        MI12r_ldst_hresp.write(MI5hrespIH1_19ldst_interface_readB0.read());
        return MI6resultIH1_19ldst_interface_readB0.read();
    }
}
/**
 *  \brief  MI20ldst_interface_write
 */
void Sim::MI20ldst_interface_write(const uint32_t MI15codasip_param_0, const uint32_t MI15codasip_param_1, uint32_t MI15codasip_param_2)
{
    {
        MI5hsizeIH1_20ldst_interface_write.write(MI15codasip_param_2);
        MI5haddrIH1_20ldst_interface_write.write(MI15codasip_param_1);
        MI5wdataIH1_20ldst_interface_write.write(MI15codasip_param_0);
        MI5hprotIH1_20ldst_interface_writeB0.write(int32_t(3));
        MI7if_ldst.write(MI5wdataIH1_20ldst_interface_write.read(),MI5haddrIH1_20ldst_interface_write.read(),MI5hsizeIH1_20ldst_interface_write.read(),MI5hrespIH1_20ldst_interface_writeB0,static_cast<codasip::Integer<4, false>>(codasip_concatenate(MI5hprotIH1_20ldst_interface_writeB0.read(), codasip::Integer<2, false>(3u))),codasip::Integer<1, false>(0u));
        MI12r_ldst_hresp.write(MI5hrespIH1_20ldst_interface_writeB0.read());
    }
}
/**
 *  \brief  MI8load_val
 */
uint32_t Sim::MI8load_val(const uint32_t MI15codasip_param_0, const uint32_t MI15codasip_param_1)
{
    {
        MI7addressIH1_8load_val.write(MI15codasip_param_1);
        MI3opcIH1_8load_val.write(MI15codasip_param_0);
        MI6resultIH1_8load_valB0.write(int32_t(0));
        MI17codasip_tmp_var_0IH1_8load_val.write(MI3opcIH1_8load_val.read());
        switch (static_cast<uint32_t>(MI17codasip_tmp_var_0IH1_8load_val.read()))
        {
            case 131:
            case 643:
            {
                MI3sbcIH1_8load_valB0.write(int32_t(2));
                break;
            }
            case 259:
            {
                MI3sbcIH1_8load_valB0.write(int32_t(4));
                break;
            }
            default:
            {
                MI3sbcIH1_8load_valB0.write(int32_t(1));
                break;
            }
        }
        MI17codasip_tmp_var_1IH1_8load_val.write(static_cast<codasip::Integer<1, false>>(MI16check_mem_access(MI3sbcIH1_8load_valB0.read(),MI7addressIH1_8load_val.read())));
        if (MI17codasip_tmp_var_1IH1_8load_val.read())
        {
            MI9take_trap(codasip::Integer<5, false>(4u),MI7addressIH1_8load_val.read(),bool(1u));
            MI14r_pf_mem_error.write(int32_t(1));
            return int32_t(0);
        }
        MI17codasip_tmp_var_2IH1_8load_val.write(MI3opcIH1_8load_val.read());
        switch (static_cast<uint32_t>(MI17codasip_tmp_var_2IH1_8load_val.read()))
        {
            case 3:
            {
                MI6resultIH1_8load_valB0.write(static_cast<int32_t>((static_cast<int8_t>(MI19ldst_interface_read(MI7addressIH1_8load_val.read(),int32_t(1))))));
                break;
            }
            case 515:
            {
                MI6resultIH1_8load_valB0.write(static_cast<uint32_t>((static_cast<uint8_t>(MI19ldst_interface_read(MI7addressIH1_8load_val.read(),int32_t(1))))));
                break;
            }
            case 131:
            {
                MI6resultIH1_8load_valB0.write(static_cast<int32_t>((static_cast<int16_t>(MI19ldst_interface_read(MI7addressIH1_8load_val.read(),int32_t(2))))));
                break;
            }
            case 643:
            {
                MI6resultIH1_8load_valB0.write(static_cast<uint32_t>((static_cast<uint16_t>(MI19ldst_interface_read(MI7addressIH1_8load_val.read(),int32_t(2))))));
                break;
            }
            case 259:
            {
                MI6resultIH1_8load_valB0.write(static_cast<int32_t>((static_cast<int32_t>(MI19ldst_interface_read(MI7addressIH1_8load_val.read(),int32_t(4))))));
                break;
            }
            default:
            {
                m_Halt = 128;
                SIM_LOG(LOG_TYPE_FATAL, 128, m_SimCycleCounter)
                     << "load_val() - unknown opcode (0x"
                     <<  std::uppercase <<  std::hex << (MI3opcIH1_8load_val.read()) << std::dec << std::nouppercase
                     << ")";
                break;
            }
        }
        MI17codasip_tmp_var_3IH1_8load_val.write(static_cast<bool>(MI12r_ldst_hresp.read() != codasip::Integer<1, false>(0u)));
        if (MI17codasip_tmp_var_3IH1_8load_val.read())
        {
            MI17codasip_tmp_var_4IH1_8load_val.write(MI3opcIH1_8load_val.read());
            switch (static_cast<uint32_t>(MI17codasip_tmp_var_4IH1_8load_val.read()))
            {
                case 3:
                case 515:
                case 131:
                case 643:
                case 259:
                {
                    MI11error_causeIH1_8load_valB0B10.write(uint32_t(2147483664u));
                    MI9take_trap(MI11error_causeIH1_8load_valB0B10.read(),MI7addressIH1_8load_val.read(),bool(1u));
                    MI14r_pf_mem_error.write(int32_t(1));
                    return int32_t(0);
                }
                default:
                {
                    m_Halt = 128;
                    SIM_LOG(LOG_TYPE_FATAL, 128, m_SimCycleCounter)
                         << "load_val() - unknown opcode (0x"
                         <<  std::uppercase <<  std::hex << (MI3opcIH1_8load_val.read()) << std::dec << std::nouppercase
                         << ")";
                    break;
                }
            }
        }
        SIM_LOG(LOG_TYPE_PRINT, 3, m_SimCycleCounter)
             << "LD("
             << std::setw(8) << std::setfill ('0') <<  std::hex << (MI7addressIH1_8load_val.read()) << std::dec << std::setw(0) << std::setfill(' ')
             << ")["
             << std::setw(9) << std::setfill ('0') <<  std::hex << (MI7addressIH1_8load_val.read()) << std::dec << std::setw(0) << std::setfill(' ')
             << "] ";
        return MI6resultIH1_8load_valB0.read();
    }
}
/**
 *  \brief  MI9write_val
 */
void Sim::MI9write_val(const uint32_t MI15codasip_param_0, const uint32_t MI15codasip_param_1, const uint32_t MI15codasip_param_2)
{
    {
        MI3valIH1_9write_val.write(MI15codasip_param_2);
        MI7addressIH1_9write_val.write(MI15codasip_param_1);
        MI3opcIH1_9write_val.write(MI15codasip_param_0);
        MI17codasip_tmp_var_0IH1_9write_val.write(MI3opcIH1_9write_val.read());
        switch (static_cast<uint32_t>(MI17codasip_tmp_var_0IH1_9write_val.read()))
        {
            case 163:
            {
                MI3sbcIH1_9write_valB0.write(int32_t(2));
                break;
            }
            case 291:
            {
                MI3sbcIH1_9write_valB0.write(int32_t(4));
                break;
            }
            default:
            {
                MI3sbcIH1_9write_valB0.write(int32_t(1));
                break;
            }
        }
        MI17codasip_tmp_var_1IH1_9write_val.write(static_cast<codasip::Integer<1, false>>(MI16check_mem_access(MI3sbcIH1_9write_valB0.read(),MI7addressIH1_9write_val.read())));
        if (MI17codasip_tmp_var_1IH1_9write_val.read())
        {
            MI9take_trap(codasip::Integer<5, false>(6u),MI7addressIH1_9write_val.read(),bool(1u));
            MI14r_pf_mem_error.write(int32_t(1));
            return;
        }
        MI17codasip_tmp_var_2IH1_9write_val.write(MI3opcIH1_9write_val.read());
        switch (static_cast<uint32_t>(MI17codasip_tmp_var_2IH1_9write_val.read()))
        {
            case 35:
            {
                MI20ldst_interface_write(MI3valIH1_9write_val.read() & uint32_t(255u),MI7addressIH1_9write_val.read(),int32_t(1));
                break;
            }
            case 163:
            {
                MI20ldst_interface_write(MI3valIH1_9write_val.read() & uint32_t(65535u),MI7addressIH1_9write_val.read(),int32_t(2));
                break;
            }
            case 291:
            {
                MI20ldst_interface_write(MI3valIH1_9write_val.read() & uint32_t(4294967295u),MI7addressIH1_9write_val.read(),int32_t(4));
                break;
            }
            default:
            {
                m_Halt = 128;
                SIM_LOG(LOG_TYPE_FATAL, 128, m_SimCycleCounter)
                     << "write_val() - unknown opcode (0x"
                     <<  std::uppercase <<  std::hex << (MI3opcIH1_9write_val.read()) << std::dec << std::nouppercase
                     << ")";
                break;
            }
        }
        MI17codasip_tmp_var_3IH1_9write_val.write(static_cast<bool>(MI12r_ldst_hresp.read() == codasip::Integer<1, false>(0u)));
        if (MI17codasip_tmp_var_3IH1_9write_val.read())
        {
            SIM_LOG(LOG_TYPE_PRINT, 3, m_SimCycleCounter)
                 << "ST("
                 << std::setw(8) << std::setfill ('0') <<  std::hex << (MI7addressIH1_9write_val.read()) << std::dec << std::setw(0) << std::setfill(' ')
                 << ")["
                 << std::setw(9) << std::setfill ('0') <<  std::hex << (MI7addressIH1_9write_val.read()) << std::dec << std::setw(0) << std::setfill(' ')
                 << "]:="
                 << std::setw(8) << std::setfill ('0') <<  std::hex << (MI3valIH1_9write_val.read()) << std::dec << std::setw(0) << std::setfill(' ')
                 << " ";
            {
                resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
                {
                    MI17codasip_tmp_var_4IH1_9write_val.write(static_cast<bool>(MI7addressIH1_9write_val.read() == MI14r_syscall_addr.read()));
                    if (MI17codasip_tmp_var_4IH1_9write_val.read())
                    {
                        MI17codasip_tmp_var_5IH1_9write_val.write(static_cast<bool>(MI3valIH1_9write_val.read() == uint32_t(1u)));
                        if (MI17codasip_tmp_var_5IH1_9write_val.read())
                        {
                            MI4halt();
                        }
                        else 
                        {
                            MI17codasip_tmp_var_6IH1_9write_val.write(static_cast<bool>(MI3valIH1_9write_val.read() > uint32_t(1u)));
                            if (MI17codasip_tmp_var_6IH1_9write_val.read())
                            {
                                codasip_syscall(MI3valIH1_9write_val.read());
                                MI4r_PC.write(MI4r_PC.read() + uint32_t(4u));
                            }
                        }
                    }
                }
            }
            return;
        }
        MI11error_causeIH1_9write_valB0.write(uint32_t(2147483664u));
        MI9take_trap(MI11error_causeIH1_9write_valB0.read(),MI7addressIH1_9write_val.read(),bool(1u));
        MI14r_pf_mem_error.write(int32_t(1));
    }
}
/**
 *  \brief  MI7compute
 */
uint32_t Sim::MI7compute(const uint32_t MI15codasip_param_0, const uint32_t MI15codasip_param_1, const uint32_t MI15codasip_param_2)
{
    {
        MI3op2IH1_7compute.write(MI15codasip_param_2);
        MI3op1IH1_7compute.write(MI15codasip_param_1);
        MI3opcIH1_7compute.write(MI15codasip_param_0);
        MI6resultIH1_7computeB0.write(int32_t(0));
        MI17codasip_tmp_var_0IH1_7compute.write(MI3opcIH1_7compute.read());
        switch (static_cast<uint32_t>(MI17codasip_tmp_var_0IH1_7compute.read()))
        {
            case 51:
            case 19:
            {
                MI6resultIH1_7computeB0.write(static_cast<int32_t>((MI3op1IH1_7compute.read())) + static_cast<int32_t>((MI3op2IH1_7compute.read())));
                break;
            }
            case 32819:
            {
                MI6resultIH1_7computeB0.write(static_cast<int32_t>((MI3op1IH1_7compute.read())) - static_cast<int32_t>((MI3op2IH1_7compute.read())));
                break;
            }
            case 947:
            case 915:
            {
                MI6resultIH1_7computeB0.write(MI3op1IH1_7compute.read() & MI3op2IH1_7compute.read());
                break;
            }
            case 819:
            case 787:
            {
                MI6resultIH1_7computeB0.write(MI3op1IH1_7compute.read() | MI3op2IH1_7compute.read());
                break;
            }
            case 563:
            case 531:
            {
                MI6resultIH1_7computeB0.write(MI3op1IH1_7compute.read() ^ MI3op2IH1_7compute.read());
                break;
            }
            case 307:
            case 275:
            {
                MI17codasip_tmp_var_1IH1_7compute.write(static_cast<bool>(static_cast<int32_t>((MI3op1IH1_7compute.read())) < static_cast<int32_t>((MI3op2IH1_7compute.read()))));
                if (MI17codasip_tmp_var_1IH1_7compute.read())
                {
                    MI6resultIH1_7computeB0.write(int32_t(1));
                }
                else 
                {
                    MI6resultIH1_7computeB0.write(int32_t(0));
                }
                break;
            }
            case 435:
            case 403:
            {
                MI17codasip_tmp_var_2IH1_7compute.write(static_cast<bool>(MI3op1IH1_7compute.read() < MI3op2IH1_7compute.read()));
                if (MI17codasip_tmp_var_2IH1_7compute.read())
                {
                    MI6resultIH1_7computeB0.write(int32_t(1));
                }
                else 
                {
                    MI6resultIH1_7computeB0.write(int32_t(0));
                }
                break;
            }
            case 179:
            case 147:
            {
                MI6resultIH1_7computeB0.write(MI3op1IH1_7compute.read() << static_cast<codasip::Integer<5, false>>(MI3op2IH1_7compute.read()));
                break;
            }
            case 33459:
            case 33427:
            {
                MI6resultIH1_7computeB0.write(static_cast<int32_t>((MI3op1IH1_7compute.read())) >> static_cast<codasip::Integer<5, false>>(MI3op2IH1_7compute.read()));
                break;
            }
            case 691:
            case 659:
            {
                MI6resultIH1_7computeB0.write(static_cast<uint32_t>((MI3op1IH1_7compute.read())) >> static_cast<codasip::Integer<5, false>>(MI3op2IH1_7compute.read()));
                break;
            }
            case 99:
            {
                MI6resultIH1_7computeB0.write((MI3op1IH1_7compute.read() == MI3op2IH1_7compute.read()));
                break;
            }
            case 227:
            {
                MI6resultIH1_7computeB0.write((MI3op1IH1_7compute.read() != MI3op2IH1_7compute.read()));
                break;
            }
            case 611:
            {
                MI6resultIH1_7computeB0.write((static_cast<int32_t>((MI3op1IH1_7compute.read())) < static_cast<int32_t>((MI3op2IH1_7compute.read()))));
                break;
            }
            case 867:
            {
                MI6resultIH1_7computeB0.write((MI3op1IH1_7compute.read() < MI3op2IH1_7compute.read()));
                break;
            }
            case 739:
            {
                MI6resultIH1_7computeB0.write((static_cast<int32_t>((MI3op1IH1_7compute.read())) >= static_cast<int32_t>((MI3op2IH1_7compute.read()))));
                break;
            }
            case 995:
            {
                MI6resultIH1_7computeB0.write((MI3op1IH1_7compute.read() >= MI3op2IH1_7compute.read()));
                break;
            }
            default:
            {
                {
                    resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
                    {
                        m_Halt = 128;
                        SIM_LOG(LOG_TYPE_FATAL, 128, m_SimCycleCounter)
                             << "compute() - unknown opcode (0x"
                             <<  std::uppercase <<  std::hex << (MI3opcIH1_7compute.read()) << std::dec << std::nouppercase
                             << ")";
                    }
                }
                break;
            }
        }
        return MI6resultIH1_7computeB0.read();
    }
}
/**
 *  \brief  MI4halt
 */
void Sim::MI4halt()
{
    {
        {
            resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
            {
                codasip_halt();
            }
        }
        MI6retvalIH1_4haltB0.write(MI11rf_gpr_read(int32_t(10)));
        SIM_LOG(LOG_TYPE_INFO, 2, m_SimCycleCounter)
             << "halt() activated, return value 0x"
             <<  std::uppercase <<  std::hex << (MI6retvalIH1_4haltB0.read()) << std::dec << std::nouppercase
             << " ("
             <<  std::dec << (MI6retvalIH1_4haltB0.read()) << std::dec
             << ")\n";
        SIM_LOG(LOG_TYPE_INFO, 2, m_SimCycleCounter)
             << "r_csr_mcause is "
             <<  std::dec << (MI12r_csr_mcause.read()) << std::dec
             << "\n";
        {
            resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
            {
                codasip_store_exit_code(MI6retvalIH1_4haltB0.read(), m_SimExitCodeFilePath.c_str());
                m_SimExitCode = MI6retvalIH1_4haltB0.read();;
            }
        }
        {
            resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
            {
                MI10start_addrIH1_4haltB0B1.write(codasip_symbol_address("codasip_signature_start"));
                MI8end_addrIH1_4haltB0B1.write(codasip_symbol_address("codasip_signature_end"));
                {
                    MI7addressIH1_4haltB0B1.write(MI10start_addrIH1_4haltB0B1.read());
                    MI17codasip_tmp_var_0IH1_4halt.write(MI7addressIH1_4haltB0B1.read() < MI8end_addrIH1_4haltB0B1.read());
                    while (MI17codasip_tmp_var_0IH1_4halt.read())
                    {
                        SIM_LOG(LOG_TYPE_PRINT, 5, m_SimCycleCounter)
                             << std::setw(8) << std::setfill ('0') <<  std::hex << (MI7if_ldst.read(MI7addressIH1_4haltB0B1.read() + uint32_t(12u),int32_t(4))) << std::dec << std::setw(0) << std::setfill(' ');
                        SIM_LOG(LOG_TYPE_PRINT, 5, m_SimCycleCounter)
                             << std::setw(8) << std::setfill ('0') <<  std::hex << (MI7if_ldst.read(MI7addressIH1_4haltB0B1.read() + uint32_t(8u),int32_t(4))) << std::dec << std::setw(0) << std::setfill(' ');
                        SIM_LOG(LOG_TYPE_PRINT, 5, m_SimCycleCounter)
                             << std::setw(8) << std::setfill ('0') <<  std::hex << (MI7if_ldst.read(MI7addressIH1_4haltB0B1.read() + uint32_t(4u),int32_t(4))) << std::dec << std::setw(0) << std::setfill(' ');
                        SIM_LOG(LOG_TYPE_PRINT, 5, m_SimCycleCounter)
                             << std::setw(8) << std::setfill ('0') <<  std::hex << (MI7if_ldst.read(MI7addressIH1_4haltB0B1.read() + uint32_t(0u),int32_t(4))) << std::dec << std::setw(0) << std::setfill(' ')
                             << "\n";
                        MI7addressIH1_4haltB0B1.write(MI7addressIH1_4haltB0B1.read() + uint32_t(16u));
                        MI17codasip_tmp_var_0IH1_4halt.write(MI7addressIH1_4haltB0B1.read() < MI8end_addrIH1_4haltB0B1.read());
                    }
                }
            }
        }
    }
}
/**
 *  \brief  MI16check_mem_access
 */
codasip::Integer<1, false> Sim::MI16check_mem_access(const uint32_t MI15codasip_param_0, const uint32_t MI15codasip_param_1)
{
    {
        MI7addressIH1_16check_mem_access.write(MI15codasip_param_1);
        MI3sbcIH1_16check_mem_access.write(MI15codasip_param_0);
        {
            resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
            {
                return ((MI3sbcIH1_16check_mem_access.read() == uint32_t(4u)) && ((MI7addressIH1_16check_mem_access.read() & uint32_t(3u)) != uint32_t(0u))) || ((MI3sbcIH1_16check_mem_access.read() == uint32_t(2u)) && ((MI7addressIH1_16check_mem_access.read() & uint32_t(1u)) != uint32_t(0u)));
            }
        }
    }
}
/**
 *  \brief  MI15print_trap_info
 */
void Sim::MI15print_trap_info(const uint32_t MI15codasip_param_0, const uint32_t MI15codasip_param_1)
{
    {
        {
            resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
            {
                MI4tvalIH1_15print_trap_info.write(MI15codasip_param_1);
                MI10trap_causeIH1_15print_trap_info.write(MI15codasip_param_0);
                MI17codasip_tmp_var_0IH1_15print_trap_info.write(static_cast<bool>(static_cast<int32_t>(MI10trap_causeIH1_15print_trap_info.read()) < int32_t(0)));
                if (MI17codasip_tmp_var_0IH1_15print_trap_info.read())
                {
                    MI9int_causeIH1_15print_trap_infoB0B0.write(MI10trap_causeIH1_15print_trap_info.read() & uint32_t(31u));
                    SIM_LOG(LOG_TYPE_PRINT, 4, m_SimCycleCounter)
                         << "Interrupt, cause "
                         << codasip::Integer<5, 0>(MI9int_causeIH1_15print_trap_infoB0B0.read()).GetDec()
                         << ": ";
                    MI17codasip_tmp_var_1IH1_15print_trap_info.write(MI9int_causeIH1_15print_trap_infoB0B0.read());
                    switch (static_cast<uint8_t>(MI17codasip_tmp_var_1IH1_15print_trap_info.read()))
                    {
                        case 3:
                        {
                            SIM_LOG(LOG_TYPE_PRINT, 4, m_SimCycleCounter)
                                 << "Machine SW\n";
                            break;
                        }
                        case 7:
                        {
                            SIM_LOG(LOG_TYPE_PRINT, 4, m_SimCycleCounter)
                                 << "Machine timer\n";
                            break;
                        }
                        case 11:
                        {
                            SIM_LOG(LOG_TYPE_PRINT, 4, m_SimCycleCounter)
                                 << "Machine external\n";
                            break;
                        }
                        case 16:
                        {
                            SIM_LOG(LOG_TYPE_PRINT, 4, m_SimCycleCounter)
                                 << "Bus error on addr 0x"
                                 <<  std::hex << (MI4tvalIH1_15print_trap_info.read()) << std::dec
                                 << "\n";
                            break;
                        }
                        default:
                        {
                            SIM_LOG(LOG_TYPE_PRINT, 4, m_SimCycleCounter)
                                 << "Unknown\n";
                            break;
                        }
                    }
                }
                else 
                {
                    SIM_LOG(LOG_TYPE_PRINT, 4, m_SimCycleCounter)
                         << "Exception, cause "
                         <<  std::dec << (MI10trap_causeIH1_15print_trap_info.read()) << std::dec
                         << ": ";
                    MI17codasip_tmp_var_2IH1_15print_trap_info.write(MI10trap_causeIH1_15print_trap_info.read());
                    switch (static_cast<uint32_t>(MI17codasip_tmp_var_2IH1_15print_trap_info.read()))
                    {
                        case 0:
                        {
                            SIM_LOG(LOG_TYPE_PRINT, 4, m_SimCycleCounter)
                                 << "Instr addr 0x"
                                 <<  std::hex << (MI4tvalIH1_15print_trap_info.read()) << std::dec
                                 << " is misaligned\n";
                            break;
                        }
                        case 1:
                        {
                            SIM_LOG(LOG_TYPE_PRINT, 4, m_SimCycleCounter)
                                 << "Instr access fault at addr 0x"
                                 <<  std::hex << (MI4tvalIH1_15print_trap_info.read()) << std::dec
                                 << "\n";
                            break;
                        }
                        case 2:
                        {
                            SIM_LOG(LOG_TYPE_PRINT, 4, m_SimCycleCounter)
                                 << "Illegal instr\n";
                            break;
                        }
                        case 3:
                        {
                            SIM_LOG(LOG_TYPE_PRINT, 4, m_SimCycleCounter)
                                 << "EBREAK\n";
                            break;
                        }
                        case 4:
                        {
                            SIM_LOG(LOG_TYPE_PRINT, 4, m_SimCycleCounter)
                                 << "Load addr 0x"
                                 <<  std::hex << (MI4tvalIH1_15print_trap_info.read()) << std::dec
                                 << " misaligned\n";
                            break;
                        }
                        case 5:
                        {
                            SIM_LOG(LOG_TYPE_PRINT, 4, m_SimCycleCounter)
                                 << "Load fault from addr 0x"
                                 <<  std::hex << (MI4tvalIH1_15print_trap_info.read()) << std::dec
                                 << "\n";
                            break;
                        }
                        case 6:
                        {
                            SIM_LOG(LOG_TYPE_PRINT, 4, m_SimCycleCounter)
                                 << "Store to addr 0x"
                                 <<  std::hex << (MI4tvalIH1_15print_trap_info.read()) << std::dec
                                 << " misaligned\n";
                            break;
                        }
                        case 7:
                        {
                            SIM_LOG(LOG_TYPE_PRINT, 4, m_SimCycleCounter)
                                 << "Store fault to addr 0x"
                                 <<  std::hex << (MI4tvalIH1_15print_trap_info.read()) << std::dec
                                 << "\n";
                            break;
                        }
                        case 8:
                        {
                            SIM_LOG(LOG_TYPE_PRINT, 4, m_SimCycleCounter)
                                 << "ECALL from U-mode\n";
                            break;
                        }
                        case 11:
                        {
                            SIM_LOG(LOG_TYPE_PRINT, 4, m_SimCycleCounter)
                                 << "ECALL from M-mode\n";
                            break;
                        }
                        default:
                        {
                            SIM_LOG(LOG_TYPE_PRINT, 4, m_SimCycleCounter)
                                 << "Unknown exception\n";
                            break;
                        }
                    }
                }
            }
        }
    }
}
/**
 *  \brief  MI17csr_get_write_val
 */
uint32_t Sim::MI17csr_get_write_val(const uint32_t MI15codasip_param_0, const uint32_t MI15codasip_param_1, const uint32_t MI15codasip_param_2)
{
    {
        MI8writeValIH1_17csr_get_write_val.write(MI15codasip_param_2);
        MI7currValIH1_17csr_get_write_val.write(MI15codasip_param_1);
        MI3opcIH1_17csr_get_write_val.write(MI15codasip_param_0);
        MI6retvalIH1_17csr_get_write_valB0.write(int32_t(0));
        MI17codasip_tmp_var_0IH1_17csr_get_write_val.write(MI3opcIH1_17csr_get_write_val.read());
        switch (static_cast<uint32_t>(MI17codasip_tmp_var_0IH1_17csr_get_write_val.read()))
        {
            case 243:
            case 755:
            {
                MI6retvalIH1_17csr_get_write_valB0.write(MI8writeValIH1_17csr_get_write_val.read());
                break;
            }
            case 371:
            case 883:
            {
                MI6retvalIH1_17csr_get_write_valB0.write(MI8writeValIH1_17csr_get_write_val.read() | MI7currValIH1_17csr_get_write_val.read());
                break;
            }
            case 499:
            case 1011:
            {
                MI6retvalIH1_17csr_get_write_valB0.write((~MI8writeValIH1_17csr_get_write_val.read()) & MI7currValIH1_17csr_get_write_val.read());
                break;
            }
            default:
            {
                MI6retvalIH1_17csr_get_write_valB0.write(int32_t(0));
                {
                    resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
                    {
                        m_Halt = 128;
                        SIM_LOG(LOG_TYPE_FATAL, 128, m_SimCycleCounter)
                             << "csr_get_write_val() - unknown opcode (0x"
                             <<  std::uppercase <<  std::hex << (MI3opcIH1_17csr_get_write_val.read()) << std::dec << std::nouppercase
                             << ")";
                    }
                }
                break;
            }
        }
        return MI6retvalIH1_17csr_get_write_valB0.read();
    }
}
/**
 *  \brief  MI8take_int
 */
void Sim::MI8take_int()
{
    {
        MI9nmi_mtvalIH1_8take_intB0.write(int32_t(0));
        MI3nmiIH1_8take_intB0.write(static_cast<codasip::Integer<1, false>>(MI5p_nmi.read() & static_cast<codasip::Integer<1, false>>(~MI9r_csr_nmi.read())));
        MI9r_csr_nmi.write(MI5p_nmi.read());
        MI17codasip_tmp_var_0IH1_8take_int.write(static_cast<codasip::Integer<1, false>>(MI3nmiIH1_8take_intB0.read()));
        if (MI17codasip_tmp_var_0IH1_8take_int.read())
        {
            MI9nmi_mtvalIH1_8take_intB0.write(MI11p_nmi_mtval.read());
        }
        MI7pendingIH1_8take_intB0.write((MI9r_csr_mip.read()) & MI9r_csr_mie.read());
        MI3menIH1_8take_intB0.write((static_cast<codasip::Integer<1, false>>(MI13r_csr_mstatus.read() >> int32_t(3))));
        MI7enabledIH1_8take_intB0.write(MI7pendingIH1_8take_intB0.read() & (((MI3menIH1_8take_intB0.read()) ? static_cast<uint32_t>(uint32_t(4294967295u)) : static_cast<uint32_t>(uint32_t(0u)))));
        MI17codasip_tmp_var_1IH1_8take_int.write(static_cast<bool>((MI7pendingIH1_8take_intB0.read() != uint32_t(0u)) || MI3nmiIH1_8take_intB0.read()));
        if (MI17codasip_tmp_var_1IH1_8take_int.read())
        {
            MI5r_wfi.write(int32_t(0));
            MI8r_wfi_ce.write(int32_t(1));
        }
        MI9int_causeIH1_8take_intB0.write(int32_t(0));
        MI17codasip_tmp_var_2IH1_8take_int.write(static_cast<bool>((MI7enabledIH1_8take_intB0.read() != uint32_t(0u)) || MI3nmiIH1_8take_intB0.read()));
        if (MI17codasip_tmp_var_2IH1_8take_int.read())
        {
            MI17codasip_tmp_var_3IH1_8take_int.write(static_cast<codasip::Integer<1, false>>(MI3nmiIH1_8take_intB0.read()));
            if (MI17codasip_tmp_var_3IH1_8take_int.read())
            {
                MI9int_causeIH1_8take_intB0.write(uint32_t(16u));
            }
            else 
            {
                MI17codasip_tmp_var_4IH1_8take_int.write(static_cast<codasip::Integer<1, false>>((static_cast<codasip::Integer<1, false>>(MI7enabledIH1_8take_intB0.read() >> int32_t(11)))));
                if (MI17codasip_tmp_var_4IH1_8take_int.read())
                {
                    MI9int_causeIH1_8take_intB0.write(uint32_t(11u));
                }
                else 
                {
                    MI17codasip_tmp_var_5IH1_8take_int.write(static_cast<codasip::Integer<1, false>>((static_cast<codasip::Integer<1, false>>(MI7enabledIH1_8take_intB0.read() >> int32_t(3)))));
                    if (MI17codasip_tmp_var_5IH1_8take_int.read())
                    {
                        MI9int_causeIH1_8take_intB0.write(uint32_t(3u));
                    }
                    else 
                    {
                        MI17codasip_tmp_var_6IH1_8take_int.write(static_cast<codasip::Integer<1, false>>((static_cast<codasip::Integer<1, false>>(MI7enabledIH1_8take_intB0.read() >> int32_t(7)))));
                        if (MI17codasip_tmp_var_6IH1_8take_int.read())
                        {
                            MI9int_causeIH1_8take_intB0.write(uint32_t(7u));
                        }
                    }
                }
            }
            MI9take_trap(uint32_t(2147483648u) | MI9int_causeIH1_8take_intB0.read(),MI9nmi_mtvalIH1_8take_intB0.read(),bool(0u));
        }
    }
}
/**
 *  \brief  MI9take_trap
 */
void Sim::MI9take_trap(const uint32_t MI15codasip_param_0, const uint32_t MI15codasip_param_1, const codasip::Integer<1, false> MI15codasip_param_2)
{
    {
        {
            resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
            {
                MI9decrementIH1_9take_trap.write(MI15codasip_param_2);
                MI7bad_valIH1_9take_trap.write(MI15codasip_param_1);
                MI10trap_causeIH1_9take_trap.write(MI15codasip_param_0);
                MI15print_trap_info(MI10trap_causeIH1_9take_trap.read(),MI7bad_valIH1_9take_trap.read());
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "Take trap: cause = "
                     <<  std::dec << (MI10trap_causeIH1_9take_trap.read()) << std::dec
                     << "\n";
                MI17codasip_tmp_var_0IH1_9take_trap.write(static_cast<const codasip::Integer<1, false>>(MI9decrementIH1_9take_trap.read()));
                if (MI17codasip_tmp_var_0IH1_9take_trap.read())
                {
                    MI4r_PC.write(MI4r_PC.read() - uint32_t(4u));
                }
                MI5causeIH1_9take_trapB0B0.write(MI10trap_causeIH1_9take_trap.read());
                MI17codasip_tmp_var_1IH1_9take_trap.write(static_cast<bool>(static_cast<int32_t>(MI5causeIH1_9take_trapB0B0.read()) < int32_t(0)));
                if (MI17codasip_tmp_var_1IH1_9take_trap.read())
                {
                    MI17codasip_tmp_var_2IH1_9take_trap.write(static_cast<bool>((MI5causeIH1_9take_trapB0B0.read() << int32_t(1)) == uint32_t(32u)));
                    if (MI17codasip_tmp_var_2IH1_9take_trap.read())
                    {
                        MI5causeIH1_9take_trapB0B0.write(uint32_t(16u));
                    }
                    else 
                    {
                        MI5causeIH1_9take_trapB0B0.write(MI5causeIH1_9take_trapB0B0.read() & (uint32_t(2147483647u)));
                    }
                }
                MI10r_csr_mepc.write(MI4r_PC.read() & uint32_t(4294967292u));
                MI17codasip_tmp_var_3IH1_9take_trap.write(static_cast<bool>(MI5causeIH1_9take_trapB0B0.read() == uint32_t(16u)));
                if (MI17codasip_tmp_var_3IH1_9take_trap.read())
                {
                    MI4r_PC.write(static_cast<uint32_t>(MI13r_nmi_handler.read()));
                }
                else 
                {
                    MI4r_PC.write((MI11r_csr_mtvec.read() & uint32_t(4294967292u)) + ((((((MI11r_csr_mtvec.read() & uint32_t(1u)) != uint32_t(0u)) && (static_cast<int32_t>(MI10trap_causeIH1_9take_trap.read()) < int32_t(0)))) ? static_cast<uint32_t>((static_cast<uint32_t>((static_cast<codasip::Integer<4, false>>(MI10trap_causeIH1_9take_trap.read() >> int32_t(0)))) * uint32_t(4u))) : static_cast<uint32_t>(uint32_t(0u)))));
                }
                MI12r_csr_mcause.write(MI10trap_causeIH1_9take_trap.read());
                MI17codasip_tmp_var_4IH1_9take_trap.write(static_cast<bool>(MI5causeIH1_9take_trapB0B0.read() == uint32_t(16u)));
                if (MI17codasip_tmp_var_4IH1_9take_trap.read())
                {
                    MI11r_csr_mtval.write(uint32_t(0u));
                    MI15r_csr_nmi_mtval.write(MI7bad_valIH1_9take_trap.read());
                }
                else 
                {
                    MI11r_csr_mtval.write(MI7bad_valIH1_9take_trap.read());
                }
                MI8do_xcall();
            }
        }
    }
}
/**
 *  \brief  MI8do_xcall
 */
void Sim::MI8do_xcall()
{
    {
        MI4mpieIH1_8do_xcallB0.write((static_cast<codasip::Integer<1, false>>(MI13r_csr_mstatus.read() >> int32_t(3))));
        MI13r_csr_mstatus.write(codasip_concatenate(static_cast<codasip::Integer<29, false>>(codasip_concatenate(static_cast<codasip::Integer<28, false>>(codasip_concatenate(static_cast<codasip::Integer<25, false>>(codasip_concatenate(static_cast<codasip::Integer<24, false>>(codasip_concatenate(static_cast<codasip::Integer<21, false>>(codasip_concatenate((static_cast<codasip::Integer<19, false>>(MI13r_csr_mstatus.read() >> int32_t(13))), codasip::Integer<2, false>(3u))), (static_cast<codasip::Integer<3, false>>(MI13r_csr_mstatus.read() >> int32_t(8))))), MI4mpieIH1_8do_xcallB0.read())), (static_cast<codasip::Integer<3, false>>(MI13r_csr_mstatus.read() >> int32_t(4))))), codasip::Integer<1, false>(0u))), (static_cast<codasip::Integer<3, false>>(MI13r_csr_mstatus.read() >> int32_t(0)))));
    }
}
/**
 *  \brief  MI7do_xret
 */
void Sim::MI7do_xret()
{
    {
        MI10int_enableIH1_7do_xretB0.write(int32_t(0));
        MI15prev_int_enableIH1_7do_xretB0.write(int32_t(0));
        MI4r_PC.write(MI10r_csr_mepc.read());
        MI10int_enableIH1_7do_xretB0.write(static_cast<codasip::Integer<4, false>>(codasip_concatenate((static_cast<codasip::Integer<1, false>>(MI13r_csr_mstatus.read() >> int32_t(7))), (static_cast<codasip::Integer<3, false>>(MI13r_csr_mstatus.read() >> int32_t(0))))));
        MI15prev_int_enableIH1_7do_xretB0.write(static_cast<codasip::Integer<4, false>>(codasip_concatenate(codasip::Integer<1, false>(1u), (static_cast<codasip::Integer<3, false>>(MI13r_csr_mstatus.read() >> int32_t(4))))));
        MI13r_csr_mstatus.write(codasip_concatenate(static_cast<codasip::Integer<28, false>>(codasip_concatenate(static_cast<codasip::Integer<24, false>>(codasip_concatenate(static_cast<codasip::Integer<21, false>>(codasip_concatenate((static_cast<codasip::Integer<19, false>>(MI13r_csr_mstatus.read() >> int32_t(13))), codasip::Integer<2, false>(3u))), (static_cast<codasip::Integer<3, false>>(MI13r_csr_mstatus.read() >> int32_t(8))))), MI15prev_int_enableIH1_7do_xretB0.read())), MI10int_enableIH1_7do_xretB0.read()));
    }
}
/**
 *  \brief  MI18csr_read_write_reg
 */
uint32_t Sim::MI18csr_read_write_reg(const codasip::Integer<5, false> MI15codasip_param_0, const codasip::Integer<12, false> MI15codasip_param_1, const codasip::Integer<10, false> MI15codasip_param_2)
{
    {
        MI3opcIH1_18csr_read_write_reg.write(MI15codasip_param_2);
        MI3csrIH1_18csr_read_write_reg.write(MI15codasip_param_1);
        MI3srcIH1_18csr_read_write_reg.write(MI15codasip_param_0);
        MI8is_writeIH1_18csr_read_write_regB0.write((MI3opcIH1_18csr_read_write_reg.read() == codasip::Integer<10, false>(243u)) || ((MI3opcIH1_18csr_read_write_reg.read() == codasip::Integer<10, false>(371u) || MI3opcIH1_18csr_read_write_reg.read() == codasip::Integer<10, false>(499u)) && MI3srcIH1_18csr_read_write_reg.read() != codasip::Integer<5, false>(0u)));
        MI17codasip_tmp_var_0IH1_18csr_read_write_reg.write(static_cast<bool>(((static_cast<codasip::Integer<2, false>>(static_cast<codasip::Integer<12, false>>(MI3csrIH1_18csr_read_write_reg.read() >> int32_t(10)))) == codasip::Integer<2, false>(3u)) && MI8is_writeIH1_18csr_read_write_regB0.read()));
        if (MI17codasip_tmp_var_0IH1_18csr_read_write_reg.read())
        {
            MI15r_illegal_instr.write(bool(1u));
            return int32_t(0);
        }
        MI8writeValIH1_18csr_read_write_regB0.write(MI11rf_gpr_read(MI3srcIH1_18csr_read_write_reg.read()));
        MI7readValIH1_18csr_read_write_regB0.write(MI14csr_read_write(MI8writeValIH1_18csr_read_write_regB0.read(),MI3csrIH1_18csr_read_write_reg.read(),MI3opcIH1_18csr_read_write_reg.read(),MI8is_writeIH1_18csr_read_write_regB0.read()));
        return MI7readValIH1_18csr_read_write_regB0.read();
    }
}
/**
 *  \brief  MI18csr_read_write_imm
 */
uint32_t Sim::MI18csr_read_write_imm(uint32_t MI15codasip_param_0, const codasip::Integer<12, false> MI15codasip_param_1, const codasip::Integer<10, false> MI15codasip_param_2)
{
    {
        MI3opcIH1_18csr_read_write_imm.write(MI15codasip_param_2);
        MI3csrIH1_18csr_read_write_imm.write(MI15codasip_param_1);
        MI3immIH1_18csr_read_write_imm.write(MI15codasip_param_0);
        MI8is_writeIH1_18csr_read_write_immB0.write((MI3opcIH1_18csr_read_write_imm.read() == codasip::Integer<10, false>(755u)) || ((MI3opcIH1_18csr_read_write_imm.read() == codasip::Integer<10, false>(883u) || MI3opcIH1_18csr_read_write_imm.read() == codasip::Integer<10, false>(1011u)) && MI3immIH1_18csr_read_write_imm.read() != uint32_t(0u)));
        MI17codasip_tmp_var_0IH1_18csr_read_write_imm.write(static_cast<bool>(((static_cast<codasip::Integer<2, false>>(static_cast<codasip::Integer<12, false>>(MI3csrIH1_18csr_read_write_imm.read() >> int32_t(10)))) == codasip::Integer<2, false>(3u)) && MI8is_writeIH1_18csr_read_write_immB0.read()));
        if (MI17codasip_tmp_var_0IH1_18csr_read_write_imm.read())
        {
            MI15r_illegal_instr.write(bool(1u));
            return int32_t(0);
        }
        MI7readValIH1_18csr_read_write_immB0.write(MI14csr_read_write(MI3immIH1_18csr_read_write_imm.read(),MI3csrIH1_18csr_read_write_imm.read(),MI3opcIH1_18csr_read_write_imm.read(),MI8is_writeIH1_18csr_read_write_immB0.read()));
        return MI7readValIH1_18csr_read_write_immB0.read();
    }
}
/**
 *  \brief  MI14csr_read_write
 */
uint32_t Sim::MI14csr_read_write(uint32_t MI15codasip_param_0, const codasip::Integer<12, false> MI15codasip_param_1, const codasip::Integer<10, false> MI15codasip_param_2, codasip::Integer<1, false> MI15codasip_param_3)
{
    {
        MI8is_writeIH1_14csr_read_write.write(MI15codasip_param_3);
        MI3opcIH1_14csr_read_write.write(MI15codasip_param_2);
        MI3csrIH1_14csr_read_write.write(MI15codasip_param_1);
        MI8writeValIH1_14csr_read_write.write(MI15codasip_param_0);
        MI17codasip_tmp_var_0IH1_14csr_read_write.write(MI3csrIH1_14csr_read_write.read());
        switch (static_cast<uint16_t>(MI17codasip_tmp_var_0IH1_14csr_read_write.read()))
        {
            case 769:
            {
                MI7readValIH1_14csr_read_writeB0.write(MI10r_csr_misa.read());
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "misa ";
                break;
            }
            case 3860:
            {
                MI7readValIH1_14csr_read_writeB0.write(MI13r_csr_mhartid.read());
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "mhartid ";
                break;
            }
            case 768:
            {
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "mstatus ";
                MI7readValIH1_14csr_read_writeB0.write(MI13r_csr_mstatus.read());
                MI8writeValIH1_14csr_read_write.write(MI17csr_get_write_val(MI3opcIH1_14csr_read_write.read(),MI7readValIH1_14csr_read_writeB0.read(),MI8writeValIH1_14csr_read_write.read()));
                MI17codasip_tmp_var_1IH1_14csr_read_write.write(static_cast<bool>((static_cast<codasip::Integer<2, false>>(MI8writeValIH1_14csr_read_write.read() >> int32_t(11))) != codasip::Integer<2, false>(3u)));
                if (MI17codasip_tmp_var_1IH1_14csr_read_write.read())
                {
                    MI8writeValIH1_14csr_read_write.write(codasip_concatenate(static_cast<codasip::Integer<21, false>>(codasip_concatenate((static_cast<codasip::Integer<19, false>>(MI8writeValIH1_14csr_read_write.read() >> int32_t(13))), codasip::Integer<2, false>(3u))), (static_cast<codasip::Integer<11, false>>(MI8writeValIH1_14csr_read_write.read() >> int32_t(0)))));
                }
                MI8writeValIH1_14csr_read_write.write(MI8writeValIH1_14csr_read_write.read() & uint32_t(6280u));
                MI17codasip_tmp_var_2IH1_14csr_read_write.write(static_cast<codasip::Integer<1, false>>(MI8is_writeIH1_14csr_read_write.read()));
                if (MI17codasip_tmp_var_2IH1_14csr_read_write.read())
                {
                    MI13r_csr_mstatus.write(MI8writeValIH1_14csr_read_write.read());
                }
                break;
            }
            case 773:
            {
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "mtvec ";
                MI7readValIH1_14csr_read_writeB0.write(MI11r_csr_mtvec.read());
                MI17codasip_tmp_var_3IH1_14csr_read_write.write(static_cast<codasip::Integer<1, false>>(MI8is_writeIH1_14csr_read_write.read()));
                if (MI17codasip_tmp_var_3IH1_14csr_read_write.read())
                {
                    MI11r_csr_mtvec.write(MI17csr_get_write_val(MI3opcIH1_14csr_read_write.read(),MI7readValIH1_14csr_read_writeB0.read(),MI8writeValIH1_14csr_read_write.read()) & uint32_t(4294967293u));
                }
                break;
            }
            case 833:
            {
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "mepc ";
                MI7readValIH1_14csr_read_writeB0.write(MI10r_csr_mepc.read());
                MI17codasip_tmp_var_4IH1_14csr_read_write.write(static_cast<codasip::Integer<1, false>>(MI8is_writeIH1_14csr_read_write.read()));
                if (MI17codasip_tmp_var_4IH1_14csr_read_write.read())
                {
                    MI10r_csr_mepc.write(MI17csr_get_write_val(MI3opcIH1_14csr_read_write.read(),MI7readValIH1_14csr_read_writeB0.read(),MI8writeValIH1_14csr_read_write.read()) & uint32_t(4294967292u));
                }
                break;
            }
            case 834:
            {
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "mcause ";
                MI7readValIH1_14csr_read_writeB0.write(MI12r_csr_mcause.read());
                MI8writeValIH1_14csr_read_write.write(MI17csr_get_write_val(MI3opcIH1_14csr_read_write.read(),MI7readValIH1_14csr_read_writeB0.read(),MI8writeValIH1_14csr_read_write.read()));
                MI17codasip_tmp_var_5IH1_14csr_read_write.write(static_cast<codasip::Integer<1, false>>(MI8is_writeIH1_14csr_read_write.read()));
                if (MI17codasip_tmp_var_5IH1_14csr_read_write.read())
                {
                    MI12r_csr_mcause.write(MI8writeValIH1_14csr_read_write.read());
                }
                break;
            }
            case 835:
            {
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "mtval ";
                MI7readValIH1_14csr_read_writeB0.write(MI11r_csr_mtval.read());
                MI17codasip_tmp_var_6IH1_14csr_read_write.write(static_cast<codasip::Integer<1, false>>(MI8is_writeIH1_14csr_read_write.read()));
                if (MI17codasip_tmp_var_6IH1_14csr_read_write.read())
                {
                    MI11r_csr_mtval.write(MI17csr_get_write_val(MI3opcIH1_14csr_read_write.read(),MI7readValIH1_14csr_read_writeB0.read(),MI8writeValIH1_14csr_read_write.read()));
                }
                break;
            }
            case 832:
            {
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "mscratch ";
                MI7readValIH1_14csr_read_writeB0.write(MI14r_csr_mscratch.read());
                MI17codasip_tmp_var_7IH1_14csr_read_write.write(static_cast<codasip::Integer<1, false>>(MI8is_writeIH1_14csr_read_write.read()));
                if (MI17codasip_tmp_var_7IH1_14csr_read_write.read())
                {
                    MI14r_csr_mscratch.write(MI17csr_get_write_val(MI3opcIH1_14csr_read_write.read(),MI7readValIH1_14csr_read_writeB0.read(),MI8writeValIH1_14csr_read_write.read()));
                }
                break;
            }
            case 772:
            {
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "mie ";
                MI7readValIH1_14csr_read_writeB0.write(MI9r_csr_mie.read());
                MI8writeValIH1_14csr_read_write.write(MI17csr_get_write_val(MI3opcIH1_14csr_read_write.read(),MI7readValIH1_14csr_read_writeB0.read(),MI8writeValIH1_14csr_read_write.read()));
                MI17codasip_tmp_var_8IH1_14csr_read_write.write(static_cast<codasip::Integer<1, false>>(MI8is_writeIH1_14csr_read_write.read()));
                if (MI17codasip_tmp_var_8IH1_14csr_read_write.read())
                {
                    MI9r_csr_mie.write(static_cast<codasip::Integer<12, false>>(codasip_concatenate(static_cast<codasip::Integer<9, false>>(codasip_concatenate(static_cast<uint8_t>(codasip_concatenate(static_cast<codasip::Integer<5, false>>(codasip_concatenate(static_cast<codasip::Integer<4, false>>(codasip_concatenate((static_cast<codasip::Integer<1, false>>(MI8writeValIH1_14csr_read_write.read() >> int32_t(11))), codasip::Integer<3, false>(0u))), (static_cast<codasip::Integer<1, false>>(MI8writeValIH1_14csr_read_write.read() >> int32_t(7))))), codasip::Integer<3, false>(0u))), (static_cast<codasip::Integer<1, false>>(MI8writeValIH1_14csr_read_write.read() >> int32_t(3))))), codasip::Integer<3, false>(0u))));
                }
                break;
            }
            case 836:
            {
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "mip ";
                MI7readValIH1_14csr_read_writeB0.write(MI9r_csr_mip.read());
                break;
            }
            case 4033:
            {
                MI7readValIH1_14csr_read_writeB0.write(MI9r_csr_nmi.read());
                break;
            }
            case 4038:
            {
                MI7readValIH1_14csr_read_writeB0.write(MI15r_csr_nmi_mtval.read());
                break;
            }
            case 2816:
            {
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "mcycle ";
                MI7readValIH1_14csr_read_writeB0.write(static_cast<uint32_t>((MI12r_csr_mcycle.read())));
                MI17codasip_tmp_var_9IH1_14csr_read_write.write(static_cast<codasip::Integer<1, false>>(MI8is_writeIH1_14csr_read_write.read()));
                if (MI17codasip_tmp_var_9IH1_14csr_read_write.read())
                {
                    MI12r_csr_mcycle.write(codasip_concatenate((static_cast<uint32_t>(MI12r_csr_mcycle.read() >> int32_t(32))), MI17csr_get_write_val(MI3opcIH1_14csr_read_write.read(),MI7readValIH1_14csr_read_writeB0.read(),MI8writeValIH1_14csr_read_write.read())));
                }
                break;
            }
            case 2818:
            {
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "minstret ";
                MI7readValIH1_14csr_read_writeB0.write(static_cast<uint32_t>((MI14r_csr_minstret.read())));
                MI18codasip_tmp_var_10IH1_14csr_read_write.write(static_cast<codasip::Integer<1, false>>(MI8is_writeIH1_14csr_read_write.read()));
                if (MI18codasip_tmp_var_10IH1_14csr_read_write.read())
                {
                    MI14r_csr_minstret.write(codasip_concatenate((static_cast<uint32_t>(MI14r_csr_minstret.read() >> int32_t(32))), MI17csr_get_write_val(MI3opcIH1_14csr_read_write.read(),MI7readValIH1_14csr_read_writeB0.read(),MI8writeValIH1_14csr_read_write.read())));
                }
                MI18r_minstret_written.write(MI8is_writeIH1_14csr_read_write.read());
                break;
            }
            case 2944:
            {
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "mcycleh ";
                MI7readValIH1_14csr_read_writeB0.write((static_cast<uint32_t>(MI12r_csr_mcycle.read() >> int32_t(32))));
                MI18codasip_tmp_var_11IH1_14csr_read_write.write(static_cast<codasip::Integer<1, false>>(MI8is_writeIH1_14csr_read_write.read()));
                if (MI18codasip_tmp_var_11IH1_14csr_read_write.read())
                {
                    MI12r_csr_mcycle.write(codasip_concatenate(MI17csr_get_write_val(MI3opcIH1_14csr_read_write.read(),MI7readValIH1_14csr_read_writeB0.read(),MI8writeValIH1_14csr_read_write.read()), (static_cast<uint32_t>(MI12r_csr_mcycle.read() >> int32_t(0)))));
                }
                break;
            }
            case 2946:
            {
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "minstreth ";
                MI7readValIH1_14csr_read_writeB0.write((static_cast<uint32_t>(MI14r_csr_minstret.read() >> int32_t(32))));
                MI18codasip_tmp_var_12IH1_14csr_read_write.write(static_cast<codasip::Integer<1, false>>(MI8is_writeIH1_14csr_read_write.read()));
                if (MI18codasip_tmp_var_12IH1_14csr_read_write.read())
                {
                    MI14r_csr_minstret.write(codasip_concatenate(MI17csr_get_write_val(MI3opcIH1_14csr_read_write.read(),MI7readValIH1_14csr_read_writeB0.read(),MI8writeValIH1_14csr_read_write.read()), (static_cast<uint32_t>(MI14r_csr_minstret.read() >> int32_t(0)))));
                }
                MI18r_minstret_written.write(MI8is_writeIH1_14csr_read_write.read());
                break;
            }
            case 3857:
            {
                MI7readValIH1_14csr_read_writeB0.write(int32_t(1283));
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "mvendorid ";
                break;
            }
            case 3859:
            {
                MI7readValIH1_14csr_read_writeB0.write(uint32_t(0u));
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "mimpid";
                break;
            }
            case 3858:
            {
                MI7readValIH1_14csr_read_writeB0.write(MI13r_csr_marchid.read());
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "marchid ";
                break;
            }
            case 800:
            {
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "mcountinhibit ";
                MI7readValIH1_14csr_read_writeB0.write(MI19r_csr_mcountinhibit.read());
                MI8writeValIH1_14csr_read_write.write(MI17csr_get_write_val(MI3opcIH1_14csr_read_write.read(),MI7readValIH1_14csr_read_writeB0.read(),MI8writeValIH1_14csr_read_write.read()));
                MI18codasip_tmp_var_13IH1_14csr_read_write.write(static_cast<codasip::Integer<1, false>>(MI8is_writeIH1_14csr_read_write.read()));
                if (MI18codasip_tmp_var_13IH1_14csr_read_write.read())
                {
                    MI19r_csr_mcountinhibit.write(MI8writeValIH1_14csr_read_write.read() & uint32_t(32381u));
                }
                break;
            }
            default:
            {
                SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
                     << "unknown ";
                MI7readValIH1_14csr_read_writeB0.write(int32_t(0));
                break;
            }
        }
        SIM_LOG(LOG_TYPE_PRINT, 2, m_SimCycleCounter)
             << ": read = 0x"
             <<  std::uppercase <<  std::hex << (MI7readValIH1_14csr_read_writeB0.read()) << std::dec << std::nouppercase
             << ", write = 0x"
             <<  std::uppercase <<  std::hex << (MI8writeValIH1_14csr_read_write.read()) << std::dec << std::nouppercase
             << "\n";
        return MI7readValIH1_14csr_read_writeB0.read();
    }
}
/**
 *  \brief  MI23i_control_registers_regIH5_3isa3isa
 */
void Sim::MI23i_control_registers_regIH5_3isa3isa()
{
    {
        MI8writeValIH5_3isa3isa1_23i_control_registers_regB0.write(int32_t(0));
        {
            resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
            {
                MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_reg.write(MI90codasip_return_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc.read());
                switch (static_cast<uint16_t>(MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_reg.read()))
                {
                    case 243:
                    case 371:
                    case 499:
                    {
                        MI8writeValIH5_3isa3isa1_23i_control_registers_regB0.write(MI18csr_read_write_reg(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.read(),MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.read(),MI90codasip_return_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc.read()));
                        break;
                    }
                    default:
                    {
                        MI8writeValIH5_3isa3isa1_23i_control_registers_regB0.write(int32_t(0));
                        {
                            resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
                            {
                                m_Halt = 128;
                                SIM_LOG(LOG_TYPE_FATAL, 128, m_SimCycleCounter)
                                     << "i_control_registers_reg() - unknown opcode (0x"
                                     << codasip::ToUpper(codasip::Integer<10, 0>(MI90codasip_return_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc.read()).GetHex())
                                     << ")";
                            }
                        }
                        break;
                    }
                }
                MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_reg.write(static_cast<bool>(!MI15r_illegal_instr.read()));
                if (MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_reg.read())
                {
                    MI12rf_gpr_write(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.read(),MI8writeValIH5_3isa3isa1_23i_control_registers_regB0.read());
                }
            }
        }
    }
}
/**
 *  \brief  MI23i_control_registers_immIH5_3isa3isa
 */
void Sim::MI23i_control_registers_immIH5_3isa3isa()
{
    {
        MI8writeValIH5_3isa3isa1_23i_control_registers_immB0.write(int32_t(0));
        {
            resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
            {
                MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_imm.write(MI90codasip_return_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc.read());
                switch (static_cast<uint16_t>(MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_imm.read()))
                {
                    case 755:
                    case 883:
                    case 1011:
                    {
                        MI8writeValIH5_3isa3isa1_23i_control_registers_immB0.write(MI18csr_read_write_imm(static_cast<uint32_t>((MI45codasip_return_MI4imm5IH5_3isa3isa6_4imm53imm.read())),MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.read(),MI90codasip_return_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc.read()));
                        break;
                    }
                    default:
                    {
                        MI8writeValIH5_3isa3isa1_23i_control_registers_immB0.write(int32_t(0));
                        {
                            resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
                            {
                                m_Halt = 128;
                                SIM_LOG(LOG_TYPE_FATAL, 128, m_SimCycleCounter)
                                     << "i_control_registers_imm() - unknown opcode (0x"
                                     << codasip::ToUpper(codasip::Integer<10, 0>(MI90codasip_return_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc.read()).GetHex())
                                     << ")";
                            }
                        }
                        break;
                    }
                }
                MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_imm.write(static_cast<bool>(!MI15r_illegal_instr.read()));
                if (MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_imm.read())
                {
                    MI12rf_gpr_write(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.read(),MI8writeValIH5_3isa3isa1_23i_control_registers_immB0.read());
                }
            }
        }
    }
}
/**
 *  \brief  MI5i_jalIH5_3isa3isa
 */
void Sim::MI5i_jalIH5_3isa3isa()
{
    {
        MI3tmpIH5_3isa3isa1_5i_jalB0.write(MI4r_PC.read());
        MI8jmp_addrIH5_3isa3isa1_5i_jalB0.write(static_cast<int32_t>((MI4r_PC.read() - uint32_t(4u))) + static_cast<int32_t>((MI61codasip_return_MI10rel_addr20IH5_3isa3isa13_10rel_addr204addr.read())));
        {
            resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
            {
                MI17codasip_tmp_var_0IH5_3isa3isa1_5i_jal.write(static_cast<codasip::Integer<1, false>>((static_cast<codasip::Integer<1, false>>(MI8jmp_addrIH5_3isa3isa1_5i_jalB0.read() >> int32_t(1)))));
                if (MI17codasip_tmp_var_0IH5_3isa3isa1_5i_jal.read())
                {
                    MI9take_trap(codasip::Integer<5, false>(0u),MI8jmp_addrIH5_3isa3isa1_5i_jalB0.read(),bool(1u));
                    MI13r_fetch_fault.write(int32_t(1));
                }
                else 
                {
                    MI12rf_gpr_write(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.read(),MI3tmpIH5_3isa3isa1_5i_jalB0.read());
                    MI4r_PC.write(MI8jmp_addrIH5_3isa3isa1_5i_jalB0.read());
                }
            }
        }
    }
}
/**
 *  \brief  MI6i_jalrIH5_3isa3isa
 */
void Sim::MI6i_jalrIH5_3isa3isa()
{
    {
        MI3valIH5_3isa3isa1_6i_jalrB0.write(MI11rf_gpr_read(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.read()));
        MI8jmp_addrIH5_3isa3isa1_6i_jalrB0.write(static_cast<uint64_t>((static_cast<int32_t>((MI3valIH5_3isa3isa1_6i_jalrB0.read())) + static_cast<int32_t>((MI52codasip_return_MI6simm12IH5_3isa3isa8_6simm126simm12.read())))) & uint64_t(18446744073709551614ull));
        MI3tmpIH5_3isa3isa1_6i_jalrB0.write(MI4r_PC.read());
        {
            resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
            {
                MI17codasip_tmp_var_0IH5_3isa3isa1_6i_jalr.write(static_cast<codasip::Integer<1, false>>((static_cast<codasip::Integer<1, false>>(MI8jmp_addrIH5_3isa3isa1_6i_jalrB0.read() >> int32_t(1)))));
                if (MI17codasip_tmp_var_0IH5_3isa3isa1_6i_jalr.read())
                {
                    MI9take_trap(codasip::Integer<5, false>(0u),MI8jmp_addrIH5_3isa3isa1_6i_jalrB0.read(),bool(1u));
                    MI13r_fetch_fault.write(int32_t(1));
                }
                else 
                {
                    MI12rf_gpr_write(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.read(),MI3tmpIH5_3isa3isa1_6i_jalrB0.read());
                    MI4r_PC.write(MI8jmp_addrIH5_3isa3isa1_6i_jalrB0.read());
                }
            }
        }
    }
}
/**
 *  \brief  MI21i_control_conditionalIH5_3isa3isa
 */
void Sim::MI21i_control_conditionalIH5_3isa3isa()
{
    {
        MI17codasip_tmp_var_0IH5_3isa3isa1_21i_control_conditional.write((static_cast<uint32_t>(MI7compute(MI86codasip_return_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc.read(),MI11rf_gpr_read(MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.read()),MI11rf_gpr_read(MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.read()))) != uint32_t(0u)));
        if (MI17codasip_tmp_var_0IH5_3isa3isa1_21i_control_conditional.read())
        {
            MI8jmp_addrIH5_3isa3isa1_21i_control_conditionalB0B1.write(static_cast<int32_t>((MI4r_PC.read() - uint32_t(4u))) + static_cast<int32_t>((MI61codasip_return_MI10rel_addr12IH5_3isa3isa13_10rel_addr124addr.read())));
            {
                resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
                {
                    MI17codasip_tmp_var_1IH5_3isa3isa1_21i_control_conditional.write(static_cast<codasip::Integer<1, false>>((static_cast<codasip::Integer<1, false>>(MI8jmp_addrIH5_3isa3isa1_21i_control_conditionalB0B1.read() >> int32_t(1)))));
                    if (MI17codasip_tmp_var_1IH5_3isa3isa1_21i_control_conditional.read())
                    {
                        MI9take_trap(codasip::Integer<5, false>(0u),MI8jmp_addrIH5_3isa3isa1_21i_control_conditionalB0B1.read(),bool(1u));
                        MI13r_fetch_fault.write(int32_t(1));
                    }
                    else 
                    {
                        MI4r_PC.write(MI8jmp_addrIH5_3isa3isa1_21i_control_conditionalB0B1.read());
                    }
                }
            }
        }
    }
}
/**
 *  \brief  MI6i_loadIH5_3isa3isa
 */
void Sim::MI6i_loadIH5_3isa3isa()
{
    {
        MI4addrIH5_3isa3isa1_6i_loadB0.write(static_cast<int32_t>((MI11rf_gpr_read(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.read()))) + static_cast<int32_t>((MI52codasip_return_MI6simm12IH5_3isa3isa8_6simm126simm12.read())));
        MI3valIH5_3isa3isa1_6i_loadB0.write(MI8load_val(MI56codasip_return_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc.read(),MI4addrIH5_3isa3isa1_6i_loadB0.read()));
        {
            resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
            {
                MI17codasip_tmp_var_0IH5_3isa3isa1_6i_load.write(static_cast<bool>(!MI14r_pf_mem_error.read()));
                if (MI17codasip_tmp_var_0IH5_3isa3isa1_6i_load.read())
                {
                    MI12rf_gpr_write(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.read(),MI3valIH5_3isa3isa1_6i_loadB0.read());
                }
            }
        }
    }
}
/**
 *  \brief  MI7i_storeIH5_3isa3isa
 */
void Sim::MI7i_storeIH5_3isa3isa()
{
    {
        MI4addrIH5_3isa3isa1_7i_storeB0.write(static_cast<int32_t>((MI11rf_gpr_read(MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.read()))) + static_cast<int32_t>((MI59codasip_return_MI8simm12_sIH5_3isa3isa10_8simm12_s8simm12_s.read())));
        MI4dataIH5_3isa3isa1_7i_storeB0.write(MI11rf_gpr_read(MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.read()));
        MI9write_val(MI60codasip_return_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc.read(),MI4addrIH5_3isa3isa1_7i_storeB0.read(),MI4dataIH5_3isa3isa1_7i_storeB0.read());
    }
}
/**
 *  \brief  MI14i_ext_hackatonIH5_3isa3isa
 */
void Sim::MI14i_ext_hackatonIH5_3isa3isa()
{
    {
        MI2s1IH5_3isa3isa1_14i_ext_hackatonB0.write(MI11rf_gpr_read(MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.read()));
        MI2s2IH5_3isa3isa1_14i_ext_hackatonB0.write(MI11rf_gpr_read(MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.read()));
        MI2s3IH5_3isa3isa1_14i_ext_hackatonB0.write(MI11rf_gpr_read(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.read()));
        MI17codasip_tmp_var_0IH5_3isa3isa1_14i_ext_hackaton.write(MI82codasip_return_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc.read());
        switch (static_cast<uint8_t>(MI17codasip_tmp_var_0IH5_3isa3isa1_14i_ext_hackaton.read()))
        {
            case 0:
            {
                MI6resultIH5_3isa3isa1_14i_ext_hackatonB0.write((MI2s3IH5_3isa3isa1_14i_ext_hackatonB0.read() + (MI2s1IH5_3isa3isa1_14i_ext_hackatonB0.read() * MI2s2IH5_3isa3isa1_14i_ext_hackatonB0.read())) >> int32_t(8));
                break;
            }
            case 1:
            {
                MI6resultIH5_3isa3isa1_14i_ext_hackatonB0.write(MI2s3IH5_3isa3isa1_14i_ext_hackatonB0.read() + ((MI2s1IH5_3isa3isa1_14i_ext_hackatonB0.read() * MI2s2IH5_3isa3isa1_14i_ext_hackatonB0.read()) >> int32_t(8)));
                break;
            }
            case 2:
            {
                break;
            }
            case 3:
            {
                break;
            }
            case 4:
            {
                break;
            }
            default:
            {
                MI6resultIH5_3isa3isa1_14i_ext_hackatonB0.write(int32_t(0));
                break;
            }
        }
        MI12rf_gpr_write(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.read(),MI6resultIH5_3isa3isa1_14i_ext_hackatonB0.read());
    }
}
MaxInt Sim::ResourceRead(const Uid resource, const simulator::Address addr)
{
    switch (resource) {
    case 47:
    // no break, fall through to the interface
    case 48:
        return (MI8m_memory.if_ldst.dread(addr, 4));
    case 49:
        return (MI8m_memory.if_fetch.dread(addr, 4));
    case 1:
        return (MI13r_instr_fetch.dread());
    case 2:
        return (MI13r_fetch_fault.dread());
    case 3:
        return (MI14r_pf_mem_error.dread());
    case 4:
        return (MI18r_minstret_written.dread());
    case 5:
        return (MI18r_minstret_inhibit.dread());
    case 6:
        return (MI16r_mcycle_inhibit.dread());
    case 7:
        return (MI15r_illegal_instr.dread());
    case 8:
        return (MI15r_unknown_instr.dread());
    case 9:
        return (MI13r_fetch_hresp.dread());
    case 10:
        return (MI12r_ldst_hresp.dread());
    case 11:
        return (MI5r_wfi.dread());
    case 12:
        return (MI14r_csr_minstret.dread());
    case 13:
        return (MI12r_csr_mcycle.dread());
    case 14:
        return (MI19r_csr_mcountinhibit.dread());
    case 15:
        return (MI13r_csr_mhartid.dread());
    case 16:
        return (MI9r_csr_nmi.dread());
    case 17:
        return (MI15r_csr_nmi_mtval.dread());
    case 18:
        return (MI13r_nmi_handler.dread());
    case 19:
        return (MI9r_csr_mip.dread());
    case 20:
        return (MI9r_csr_mie.dread());
    case 21:
        return (MI11r_csr_mtval.dread());
    case 22:
        return (MI10r_csr_mepc.dread());
    case 23:
        return (MI12r_csr_mcause.dread());
    case 24:
        return (MI14r_csr_mscratch.dread());
    case 25:
        return (MI11r_csr_mtvec.dread());
    case 26:
        return (MI13r_csr_mstatus.dread());
    case 27:
        return (MI10r_csr_misa.dread());
    case 28:
        return (MI13r_csr_marchid.dread());
    case 29:
        return (MI12r_reset_init.dread());
    case 30:
        return (MI14r_syscall_addr.dread());
    case 31:
        return (MI4r_PC.dread());
    case 32:
        return (MI6rf_gpr.dread(addr));
    case 34:
        return MI6as_all_program_dread(addr, 4);
    case 35:
        return MI6as_all_data_dread(addr, 4);
    case 33:
        return (MI6as_all_dread(addr, 4));
    case 36:
        return (MI8r_wfi_ce.dread());
    case 37:
        return (MI7if_ldst.dread(addr, 4));
    case 38:
        return (MI8if_fetch.dread(addr, 4));
    case 39:
        return (MI6p_meip.dread());
    case 40:
        return (MI6p_msip.dread());
    case 41:
        return (MI6p_mtip.dread());
    case 42:
        return (MI5p_wfi.dread());
    case 43:
        return (MI5p_nmi.dread());
    case 44:
        return (MI11p_nmi_mtval.dread());
    case 45:
        return (MI11p_boot_addr.dread());
    case 50:
        return (MI17codasip_tmp_var_0IH1_4main.dread());
    case 51:
        return (MI17codasip_tmp_var_1IH1_4main.dread());
    case 52:
        return (MI17codasip_tmp_var_2IH1_4main.dread());
    case 53:
        return (MI17codasip_tmp_var_3IH1_4main.dread());
    case 54:
        return (MI17codasip_tmp_var_4IH1_4main.dread());
    case 55:
        return (MI17codasip_tmp_var_0IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.dread());
    case 56:
        return (MI17codasip_tmp_var_1IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.dread());
    case 57:
        return (MI17codasip_tmp_var_2IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.dread());
    case 59:
        return (MI5vaddrIH1_11fetch_instr.dread());
    case 60:
        return (MI5instrIH1_11fetch_instrB0.dread());
    case 61:
        return (MI17codasip_tmp_var_0IH1_11fetch_instr.dread());
    case 63:
        return (MI1iIH1_11rf_gpr_read.dread());
    case 64:
        return (MI3valIH1_11rf_gpr_readB0.dread());
    case 65:
        return (MI17codasip_tmp_var_0IH1_11rf_gpr_read.dread());
    case 68:
        return (MI1iIH1_12rf_gpr_write.dread());
    case 69:
        return (MI3valIH1_12rf_gpr_write.dread());
    case 70:
        return (MI17codasip_tmp_var_0IH1_12rf_gpr_write.dread());
    case 73:
        return (MI5haddrIH1_20fetch_interface_read.dread());
    case 74:
        return (MI5hsizeIH1_20fetch_interface_read.dread());
    case 75:
        return (MI6resultIH1_20fetch_interface_readB0.dread());
    case 76:
        return (MI5hrespIH1_20fetch_interface_readB0.dread());
    case 77:
        return (MI5hprotIH1_20fetch_interface_readB0.dread());
    case 80:
        return (MI5haddrIH1_19ldst_interface_read.dread());
    case 81:
        return (MI5hsizeIH1_19ldst_interface_read.dread());
    case 82:
        return (MI6resultIH1_19ldst_interface_readB0.dread());
    case 83:
        return (MI5hrespIH1_19ldst_interface_readB0.dread());
    case 84:
        return (MI5hprotIH1_19ldst_interface_readB0.dread());
    case 88:
        return (MI5wdataIH1_20ldst_interface_write.dread());
    case 89:
        return (MI5haddrIH1_20ldst_interface_write.dread());
    case 90:
        return (MI5hsizeIH1_20ldst_interface_write.dread());
    case 91:
        return (MI5hrespIH1_20ldst_interface_writeB0.dread());
    case 92:
        return (MI5hprotIH1_20ldst_interface_writeB0.dread());
    case 95:
        return (MI3opcIH1_8load_val.dread());
    case 96:
        return (MI7addressIH1_8load_val.dread());
    case 97:
        return (MI6resultIH1_8load_valB0.dread());
    case 98:
        return (MI3sbcIH1_8load_valB0.dread());
    case 99:
        return (MI17codasip_tmp_var_0IH1_8load_val.dread());
    case 100:
        return (MI17codasip_tmp_var_1IH1_8load_val.dread());
    case 101:
        return (MI17codasip_tmp_var_2IH1_8load_val.dread());
    case 102:
        return (MI17codasip_tmp_var_3IH1_8load_val.dread());
    case 103:
        return (MI11error_causeIH1_8load_valB0B10.dread());
    case 104:
        return (MI17codasip_tmp_var_4IH1_8load_val.dread());
    case 108:
        return (MI3opcIH1_9write_val.dread());
    case 109:
        return (MI7addressIH1_9write_val.dread());
    case 110:
        return (MI3valIH1_9write_val.dread());
    case 111:
        return (MI11error_causeIH1_9write_valB0.dread());
    case 112:
        return (MI3sbcIH1_9write_valB0.dread());
    case 113:
        return (MI17codasip_tmp_var_0IH1_9write_val.dread());
    case 114:
        return (MI17codasip_tmp_var_1IH1_9write_val.dread());
    case 115:
        return (MI17codasip_tmp_var_2IH1_9write_val.dread());
    case 116:
        return (MI17codasip_tmp_var_3IH1_9write_val.dread());
    case 117:
        return (MI17codasip_tmp_var_4IH1_9write_val.dread());
    case 118:
        return (MI17codasip_tmp_var_5IH1_9write_val.dread());
    case 119:
        return (MI17codasip_tmp_var_6IH1_9write_val.dread());
    case 123:
        return (MI3opcIH1_7compute.dread());
    case 124:
        return (MI3op1IH1_7compute.dread());
    case 125:
        return (MI3op2IH1_7compute.dread());
    case 126:
        return (MI6resultIH1_7computeB0.dread());
    case 127:
        return (MI17codasip_tmp_var_0IH1_7compute.dread());
    case 128:
        return (MI17codasip_tmp_var_1IH1_7compute.dread());
    case 129:
        return (MI17codasip_tmp_var_2IH1_7compute.dread());
    case 130:
        return (MI6retvalIH1_4haltB0.dread());
    case 131:
        return (MI10start_addrIH1_4haltB0B1.dread());
    case 132:
        return (MI8end_addrIH1_4haltB0B1.dread());
    case 133:
        return (MI7addressIH1_4haltB0B1.dread());
    case 134:
        return (MI17codasip_tmp_var_0IH1_4halt.dread());
    case 137:
        return (MI3sbcIH1_16check_mem_access.dread());
    case 138:
        return (MI7addressIH1_16check_mem_access.dread());
    case 141:
        return (MI10trap_causeIH1_15print_trap_info.dread());
    case 142:
        return (MI4tvalIH1_15print_trap_info.dread());
    case 143:
        return (MI9int_causeIH1_15print_trap_infoB0B0.dread());
    case 144:
        return (MI17codasip_tmp_var_0IH1_15print_trap_info.dread());
    case 145:
        return (MI17codasip_tmp_var_1IH1_15print_trap_info.dread());
    case 146:
        return (MI17codasip_tmp_var_2IH1_15print_trap_info.dread());
    case 150:
        return (MI3opcIH1_17csr_get_write_val.dread());
    case 151:
        return (MI7currValIH1_17csr_get_write_val.dread());
    case 152:
        return (MI8writeValIH1_17csr_get_write_val.dread());
    case 153:
        return (MI6retvalIH1_17csr_get_write_valB0.dread());
    case 154:
        return (MI17codasip_tmp_var_0IH1_17csr_get_write_val.dread());
    case 155:
        return (MI3menIH1_8take_intB0.dread());
    case 156:
        return (MI7pendingIH1_8take_intB0.dread());
    case 157:
        return (MI7enabledIH1_8take_intB0.dread());
    case 158:
        return (MI9int_causeIH1_8take_intB0.dread());
    case 159:
        return (MI9nmi_mtvalIH1_8take_intB0.dread());
    case 160:
        return (MI3nmiIH1_8take_intB0.dread());
    case 161:
        return (MI17codasip_tmp_var_0IH1_8take_int.dread());
    case 162:
        return (MI17codasip_tmp_var_1IH1_8take_int.dread());
    case 163:
        return (MI17codasip_tmp_var_2IH1_8take_int.dread());
    case 164:
        return (MI17codasip_tmp_var_3IH1_8take_int.dread());
    case 165:
        return (MI17codasip_tmp_var_4IH1_8take_int.dread());
    case 166:
        return (MI17codasip_tmp_var_5IH1_8take_int.dread());
    case 167:
        return (MI17codasip_tmp_var_6IH1_8take_int.dread());
    case 171:
        return (MI10trap_causeIH1_9take_trap.dread());
    case 172:
        return (MI7bad_valIH1_9take_trap.dread());
    case 173:
        return (MI9decrementIH1_9take_trap.dread());
    case 174:
        return (MI5causeIH1_9take_trapB0B0.dread());
    case 175:
        return (MI17codasip_tmp_var_0IH1_9take_trap.dread());
    case 176:
        return (MI17codasip_tmp_var_1IH1_9take_trap.dread());
    case 177:
        return (MI17codasip_tmp_var_3IH1_9take_trap.dread());
    case 178:
        return (MI17codasip_tmp_var_4IH1_9take_trap.dread());
    case 179:
        return (MI17codasip_tmp_var_2IH1_9take_trap.dread());
    case 180:
        return (MI4mpieIH1_8do_xcallB0.dread());
    case 181:
        return (MI10int_enableIH1_7do_xretB0.dread());
    case 182:
        return (MI15prev_int_enableIH1_7do_xretB0.dread());
    case 186:
        return (MI3srcIH1_18csr_read_write_reg.dread());
    case 187:
        return (MI3csrIH1_18csr_read_write_reg.dread());
    case 188:
        return (MI3opcIH1_18csr_read_write_reg.dread());
    case 189:
        return (MI8writeValIH1_18csr_read_write_regB0.dread());
    case 190:
        return (MI7readValIH1_18csr_read_write_regB0.dread());
    case 191:
        return (MI8is_writeIH1_18csr_read_write_regB0.dread());
    case 192:
        return (MI17codasip_tmp_var_0IH1_18csr_read_write_reg.dread());
    case 196:
        return (MI3immIH1_18csr_read_write_imm.dread());
    case 197:
        return (MI3csrIH1_18csr_read_write_imm.dread());
    case 198:
        return (MI3opcIH1_18csr_read_write_imm.dread());
    case 199:
        return (MI7readValIH1_18csr_read_write_immB0.dread());
    case 200:
        return (MI8is_writeIH1_18csr_read_write_immB0.dread());
    case 201:
        return (MI17codasip_tmp_var_0IH1_18csr_read_write_imm.dread());
    case 206:
        return (MI8writeValIH1_14csr_read_write.dread());
    case 207:
        return (MI3csrIH1_14csr_read_write.dread());
    case 208:
        return (MI3opcIH1_14csr_read_write.dread());
    case 209:
        return (MI8is_writeIH1_14csr_read_write.dread());
    case 210:
        return (MI7readValIH1_14csr_read_writeB0.dread());
    case 211:
        return (MI17codasip_tmp_var_0IH1_14csr_read_write.dread());
    case 212:
        return (MI17codasip_tmp_var_1IH1_14csr_read_write.dread());
    case 213:
        return (MI17codasip_tmp_var_2IH1_14csr_read_write.dread());
    case 214:
        return (MI17codasip_tmp_var_3IH1_14csr_read_write.dread());
    case 215:
        return (MI17codasip_tmp_var_4IH1_14csr_read_write.dread());
    case 216:
        return (MI17codasip_tmp_var_5IH1_14csr_read_write.dread());
    case 217:
        return (MI17codasip_tmp_var_6IH1_14csr_read_write.dread());
    case 218:
        return (MI17codasip_tmp_var_7IH1_14csr_read_write.dread());
    case 219:
        return (MI17codasip_tmp_var_8IH1_14csr_read_write.dread());
    case 220:
        return (MI17codasip_tmp_var_9IH1_14csr_read_write.dread());
    case 221:
        return (MI18codasip_tmp_var_10IH1_14csr_read_write.dread());
    case 222:
        return (MI18codasip_tmp_var_11IH1_14csr_read_write.dread());
    case 223:
        return (MI18codasip_tmp_var_12IH1_14csr_read_write.dread());
    case 224:
        return (MI18codasip_tmp_var_13IH1_14csr_read_write.dread());
    case 227:
        return (MI11INSTRUCTIONIH5_3isa3isa1_3isa.dread());
    case 228:
        return (MI19INVALID_INSTRUCTIONIH5_3isa3isa1_3isa.dread());
    case 233:
        return (MI8writeValIH5_3isa3isa1_23i_control_registers_regB0.dread());
    case 234:
        return (MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_reg.dread());
    case 235:
        return (MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_reg.dread());
    case 238:
        return (MI8writeValIH5_3isa3isa1_23i_control_registers_immB0.dread());
    case 239:
        return (MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_imm.dread());
    case 240:
        return (MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_imm.dread());
    case 243:
        return (MI3valIH5_3isa3isa1_15i_comp_2reg_immB0.dread());
    case 246:
        return (MI3valIH5_3isa3isa1_21i_comp_2reg_imm_shiftB0.dread());
    case 254:
        return (MI8jmp_addrIH5_3isa3isa1_5i_jalB0.dread());
    case 255:
        return (MI3tmpIH5_3isa3isa1_5i_jalB0.dread());
    case 256:
        return (MI17codasip_tmp_var_0IH5_3isa3isa1_5i_jal.dread());
    case 258:
        return (MI3valIH5_3isa3isa1_6i_jalrB0.dread());
    case 259:
        return (MI8jmp_addrIH5_3isa3isa1_6i_jalrB0.dread());
    case 260:
        return (MI3tmpIH5_3isa3isa1_6i_jalrB0.dread());
    case 261:
        return (MI17codasip_tmp_var_0IH5_3isa3isa1_6i_jalr.dread());
    case 265:
        return (MI17codasip_tmp_var_0IH5_3isa3isa1_21i_control_conditional.dread());
    case 266:
        return (MI8jmp_addrIH5_3isa3isa1_21i_control_conditionalB0B1.dread());
    case 267:
        return (MI17codasip_tmp_var_1IH5_3isa3isa1_21i_control_conditional.dread());
    case 269:
        return (MI3valIH5_3isa3isa1_6i_loadB0.dread());
    case 270:
        return (MI4addrIH5_3isa3isa1_6i_loadB0.dread());
    case 271:
        return (MI17codasip_tmp_var_0IH5_3isa3isa1_6i_load.dread());
    case 274:
        return (MI4addrIH5_3isa3isa1_7i_storeB0.dread());
    case 275:
        return (MI4dataIH5_3isa3isa1_7i_storeB0.dread());
    case 277:
        return (MI1iIH5_3isa3isa1_8i_ebreakB0.dread());
    case 280:
        return (MI17codasip_tmp_var_0IH5_3isa3isa1_6i_xret.dread());
    case 291:
        return (MI3valIH5_3isa3isa1_8i_lui_hiB0.dread());
    case 292:
        return (MI3tmpIH5_3isa3isa1_16i_call_rel_aliasB0.dread());
    case 293:
        return (MI3tmpIH5_3isa3isa1_16i_call_reg_aliasB0.dread());
    case 297:
        return (MI6resultIH5_3isa3isa1_14i_ext_hackatonB0.dread());
    case 298:
        return (MI2s1IH5_3isa3isa1_14i_ext_hackatonB0.dread());
    case 299:
        return (MI2s2IH5_3isa3isa1_14i_ext_hackatonB0.dread());
    case 300:
        return (MI2s3IH5_3isa3isa1_14i_ext_hackatonB0.dread());
    case 301:
        return (MI7simd_a0IH5_3isa3isa1_14i_ext_hackatonB0.dread());
    case 302:
        return (MI7simd_a1IH5_3isa3isa1_14i_ext_hackatonB0.dread());
    case 303:
        return (MI7simd_b0IH5_3isa3isa1_14i_ext_hackatonB0.dread());
    case 304:
        return (MI7simd_b1IH5_3isa3isa1_14i_ext_hackatonB0.dread());
    case 305:
        return (MI11accumulatorIH5_3isa3isa1_14i_ext_hackatonB0.dread());
    case 306:
        return (MI5summaIH5_3isa3isa1_14i_ext_hackatonB0.dread());
    case 307:
        return (MI17codasip_tmp_var_0IH5_3isa3isa1_14i_ext_hackaton.dread());
    default:
        SIM_LOG(LOG_TYPE_ERROR, 0, m_SimCycleCounter) << "unknown resource UID: '" << resource << "'" << std::endl;
    }
    return 0;
}
MaxInt Sim::ResourceRead(const Uid resource, const simulator::Address addr, const unsigned sbc)
{
    switch (resource) {
    case 47:
    // no break, fall through to the interface
    case 48:
        return MI8m_memory.if_ldst.dread(addr, sbc);
    case 49:
        return MI8m_memory.if_fetch.dread(addr, sbc);
    case 32:
        return MI6rf_gpr.dread(addr);
    case 34:
        return MI6as_all_program_dread(addr, sbc);
    case 35:
        return MI6as_all_data_dread(addr, sbc);
    case 33:
        return MI6as_all_dread(addr, sbc);
    case 37:
        return MI7if_ldst.dread(addr, sbc);
    case 38:
        return MI8if_fetch.dread(addr, sbc);
    default:
        SIM_LOG(LOG_TYPE_ERROR, 0, m_SimCycleCounter) << "unknown resource UID: '" << resource << "'" << std::endl;
    }
    return 0;
}
void Sim::ResourceWrite(const Uid resource, const MaxInt& data, const simulator::Address addr)
{
    switch (resource) {
    case 47:
    // no break, fall through to the interface
    case 48:
        MI8m_memory.if_ldst.dwrite((data), addr, 4);
        break;
    case 49:
        MI8m_memory.if_fetch.dwrite((data), addr, 4);
        break;
    case 1:
        MI13r_instr_fetch.dwrite((data));
        break;
    case 2:
        MI13r_fetch_fault.dwrite((data));
        break;
    case 3:
        MI14r_pf_mem_error.dwrite((data));
        break;
    case 4:
        MI18r_minstret_written.dwrite((data));
        break;
    case 5:
        MI18r_minstret_inhibit.dwrite((data));
        break;
    case 6:
        MI16r_mcycle_inhibit.dwrite((data));
        break;
    case 7:
        MI15r_illegal_instr.dwrite((data));
        break;
    case 8:
        MI15r_unknown_instr.dwrite((data));
        break;
    case 9:
        MI13r_fetch_hresp.dwrite((data));
        break;
    case 10:
        MI12r_ldst_hresp.dwrite((data));
        break;
    case 11:
        MI5r_wfi.dwrite((data));
        break;
    case 12:
        MI14r_csr_minstret.dwrite((data));
        break;
    case 13:
        MI12r_csr_mcycle.dwrite((data));
        break;
    case 14:
        MI19r_csr_mcountinhibit.dwrite((data));
        break;
    case 15:
        MI13r_csr_mhartid.dwrite((data));
        break;
    case 16:
        MI9r_csr_nmi.dwrite((data));
        break;
    case 17:
        MI15r_csr_nmi_mtval.dwrite((data));
        break;
    case 18:
        MI13r_nmi_handler.dwrite((data));
        break;
    case 19:
        MI9r_csr_mip.dwrite((data));
        break;
    case 20:
        MI9r_csr_mie.dwrite((data));
        break;
    case 21:
        MI11r_csr_mtval.dwrite((data));
        break;
    case 22:
        MI10r_csr_mepc.dwrite((data));
        break;
    case 23:
        MI12r_csr_mcause.dwrite((data));
        break;
    case 24:
        MI14r_csr_mscratch.dwrite((data));
        break;
    case 25:
        MI11r_csr_mtvec.dwrite((data));
        break;
    case 26:
        MI13r_csr_mstatus.dwrite((data));
        break;
    case 27:
        MI10r_csr_misa.dwrite((data));
        break;
    case 28:
        MI13r_csr_marchid.dwrite((data));
        break;
    case 29:
        MI12r_reset_init.dwrite((data));
        break;
    case 30:
        MI14r_syscall_addr.dwrite((data));
        break;
    case 31:
        MI4r_PC.dwrite((data));
        break;
    case 32:
        MI6rf_gpr.dwrite((data), addr);
        break;
    case 34:
        MI6as_all_program_dwrite((data), addr, 4);
        break;
    case 35:
        MI6as_all_data_dwrite((data), addr, 4);
        break;
    case 33:
        MI6as_all_dwrite((data), addr, 4);
        break;
    case 36:
        MI8r_wfi_ce.dwrite((data));
        break;
    case 37:
        MI7if_ldst.dwrite((data), addr, 4);
        break;
    case 38:
        MI8if_fetch.dwrite((data), addr, 4);
        break;
    case 39:
        MI6p_meip.dwrite((data));
        break;
    case 40:
        MI6p_msip.dwrite((data));
        break;
    case 41:
        MI6p_mtip.dwrite((data));
        break;
    case 42:
        MI5p_wfi.dwrite((data));
        break;
    case 43:
        MI5p_nmi.dwrite((data));
        break;
    case 44:
        MI11p_nmi_mtval.dwrite((data));
        break;
    case 45:
        MI11p_boot_addr.dwrite((data));
        break;
    case 50:
        MI17codasip_tmp_var_0IH1_4main.dwrite((data));
        break;
    case 51:
        MI17codasip_tmp_var_1IH1_4main.dwrite((data));
        break;
    case 52:
        MI17codasip_tmp_var_2IH1_4main.dwrite((data));
        break;
    case 53:
        MI17codasip_tmp_var_3IH1_4main.dwrite((data));
        break;
    case 54:
        MI17codasip_tmp_var_4IH1_4main.dwrite((data));
        break;
    case 55:
        MI17codasip_tmp_var_0IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.dwrite((data));
        break;
    case 56:
        MI17codasip_tmp_var_1IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.dwrite((data));
        break;
    case 57:
        MI17codasip_tmp_var_2IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.dwrite((data));
        break;
    case 59:
        MI5vaddrIH1_11fetch_instr.dwrite((data));
        break;
    case 60:
        MI5instrIH1_11fetch_instrB0.dwrite((data));
        break;
    case 61:
        MI17codasip_tmp_var_0IH1_11fetch_instr.dwrite((data));
        break;
    case 63:
        MI1iIH1_11rf_gpr_read.dwrite((data));
        break;
    case 64:
        MI3valIH1_11rf_gpr_readB0.dwrite((data));
        break;
    case 65:
        MI17codasip_tmp_var_0IH1_11rf_gpr_read.dwrite((data));
        break;
    case 68:
        MI1iIH1_12rf_gpr_write.dwrite((data));
        break;
    case 69:
        MI3valIH1_12rf_gpr_write.dwrite((data));
        break;
    case 70:
        MI17codasip_tmp_var_0IH1_12rf_gpr_write.dwrite((data));
        break;
    case 73:
        MI5haddrIH1_20fetch_interface_read.dwrite((data));
        break;
    case 74:
        MI5hsizeIH1_20fetch_interface_read.dwrite((data));
        break;
    case 75:
        MI6resultIH1_20fetch_interface_readB0.dwrite((data));
        break;
    case 76:
        MI5hrespIH1_20fetch_interface_readB0.dwrite((data));
        break;
    case 77:
        MI5hprotIH1_20fetch_interface_readB0.dwrite((data));
        break;
    case 80:
        MI5haddrIH1_19ldst_interface_read.dwrite((data));
        break;
    case 81:
        MI5hsizeIH1_19ldst_interface_read.dwrite((data));
        break;
    case 82:
        MI6resultIH1_19ldst_interface_readB0.dwrite((data));
        break;
    case 83:
        MI5hrespIH1_19ldst_interface_readB0.dwrite((data));
        break;
    case 84:
        MI5hprotIH1_19ldst_interface_readB0.dwrite((data));
        break;
    case 88:
        MI5wdataIH1_20ldst_interface_write.dwrite((data));
        break;
    case 89:
        MI5haddrIH1_20ldst_interface_write.dwrite((data));
        break;
    case 90:
        MI5hsizeIH1_20ldst_interface_write.dwrite((data));
        break;
    case 91:
        MI5hrespIH1_20ldst_interface_writeB0.dwrite((data));
        break;
    case 92:
        MI5hprotIH1_20ldst_interface_writeB0.dwrite((data));
        break;
    case 95:
        MI3opcIH1_8load_val.dwrite((data));
        break;
    case 96:
        MI7addressIH1_8load_val.dwrite((data));
        break;
    case 97:
        MI6resultIH1_8load_valB0.dwrite((data));
        break;
    case 98:
        MI3sbcIH1_8load_valB0.dwrite((data));
        break;
    case 99:
        MI17codasip_tmp_var_0IH1_8load_val.dwrite((data));
        break;
    case 100:
        MI17codasip_tmp_var_1IH1_8load_val.dwrite((data));
        break;
    case 101:
        MI17codasip_tmp_var_2IH1_8load_val.dwrite((data));
        break;
    case 102:
        MI17codasip_tmp_var_3IH1_8load_val.dwrite((data));
        break;
    case 103:
        MI11error_causeIH1_8load_valB0B10.dwrite((data));
        break;
    case 104:
        MI17codasip_tmp_var_4IH1_8load_val.dwrite((data));
        break;
    case 108:
        MI3opcIH1_9write_val.dwrite((data));
        break;
    case 109:
        MI7addressIH1_9write_val.dwrite((data));
        break;
    case 110:
        MI3valIH1_9write_val.dwrite((data));
        break;
    case 111:
        MI11error_causeIH1_9write_valB0.dwrite((data));
        break;
    case 112:
        MI3sbcIH1_9write_valB0.dwrite((data));
        break;
    case 113:
        MI17codasip_tmp_var_0IH1_9write_val.dwrite((data));
        break;
    case 114:
        MI17codasip_tmp_var_1IH1_9write_val.dwrite((data));
        break;
    case 115:
        MI17codasip_tmp_var_2IH1_9write_val.dwrite((data));
        break;
    case 116:
        MI17codasip_tmp_var_3IH1_9write_val.dwrite((data));
        break;
    case 117:
        MI17codasip_tmp_var_4IH1_9write_val.dwrite((data));
        break;
    case 118:
        MI17codasip_tmp_var_5IH1_9write_val.dwrite((data));
        break;
    case 119:
        MI17codasip_tmp_var_6IH1_9write_val.dwrite((data));
        break;
    case 123:
        MI3opcIH1_7compute.dwrite((data));
        break;
    case 124:
        MI3op1IH1_7compute.dwrite((data));
        break;
    case 125:
        MI3op2IH1_7compute.dwrite((data));
        break;
    case 126:
        MI6resultIH1_7computeB0.dwrite((data));
        break;
    case 127:
        MI17codasip_tmp_var_0IH1_7compute.dwrite((data));
        break;
    case 128:
        MI17codasip_tmp_var_1IH1_7compute.dwrite((data));
        break;
    case 129:
        MI17codasip_tmp_var_2IH1_7compute.dwrite((data));
        break;
    case 130:
        MI6retvalIH1_4haltB0.dwrite((data));
        break;
    case 131:
        MI10start_addrIH1_4haltB0B1.dwrite((data));
        break;
    case 132:
        MI8end_addrIH1_4haltB0B1.dwrite((data));
        break;
    case 133:
        MI7addressIH1_4haltB0B1.dwrite((data));
        break;
    case 134:
        MI17codasip_tmp_var_0IH1_4halt.dwrite((data));
        break;
    case 137:
        MI3sbcIH1_16check_mem_access.dwrite((data));
        break;
    case 138:
        MI7addressIH1_16check_mem_access.dwrite((data));
        break;
    case 141:
        MI10trap_causeIH1_15print_trap_info.dwrite((data));
        break;
    case 142:
        MI4tvalIH1_15print_trap_info.dwrite((data));
        break;
    case 143:
        MI9int_causeIH1_15print_trap_infoB0B0.dwrite((data));
        break;
    case 144:
        MI17codasip_tmp_var_0IH1_15print_trap_info.dwrite((data));
        break;
    case 145:
        MI17codasip_tmp_var_1IH1_15print_trap_info.dwrite((data));
        break;
    case 146:
        MI17codasip_tmp_var_2IH1_15print_trap_info.dwrite((data));
        break;
    case 150:
        MI3opcIH1_17csr_get_write_val.dwrite((data));
        break;
    case 151:
        MI7currValIH1_17csr_get_write_val.dwrite((data));
        break;
    case 152:
        MI8writeValIH1_17csr_get_write_val.dwrite((data));
        break;
    case 153:
        MI6retvalIH1_17csr_get_write_valB0.dwrite((data));
        break;
    case 154:
        MI17codasip_tmp_var_0IH1_17csr_get_write_val.dwrite((data));
        break;
    case 155:
        MI3menIH1_8take_intB0.dwrite((data));
        break;
    case 156:
        MI7pendingIH1_8take_intB0.dwrite((data));
        break;
    case 157:
        MI7enabledIH1_8take_intB0.dwrite((data));
        break;
    case 158:
        MI9int_causeIH1_8take_intB0.dwrite((data));
        break;
    case 159:
        MI9nmi_mtvalIH1_8take_intB0.dwrite((data));
        break;
    case 160:
        MI3nmiIH1_8take_intB0.dwrite((data));
        break;
    case 161:
        MI17codasip_tmp_var_0IH1_8take_int.dwrite((data));
        break;
    case 162:
        MI17codasip_tmp_var_1IH1_8take_int.dwrite((data));
        break;
    case 163:
        MI17codasip_tmp_var_2IH1_8take_int.dwrite((data));
        break;
    case 164:
        MI17codasip_tmp_var_3IH1_8take_int.dwrite((data));
        break;
    case 165:
        MI17codasip_tmp_var_4IH1_8take_int.dwrite((data));
        break;
    case 166:
        MI17codasip_tmp_var_5IH1_8take_int.dwrite((data));
        break;
    case 167:
        MI17codasip_tmp_var_6IH1_8take_int.dwrite((data));
        break;
    case 171:
        MI10trap_causeIH1_9take_trap.dwrite((data));
        break;
    case 172:
        MI7bad_valIH1_9take_trap.dwrite((data));
        break;
    case 173:
        MI9decrementIH1_9take_trap.dwrite((data));
        break;
    case 174:
        MI5causeIH1_9take_trapB0B0.dwrite((data));
        break;
    case 175:
        MI17codasip_tmp_var_0IH1_9take_trap.dwrite((data));
        break;
    case 176:
        MI17codasip_tmp_var_1IH1_9take_trap.dwrite((data));
        break;
    case 177:
        MI17codasip_tmp_var_3IH1_9take_trap.dwrite((data));
        break;
    case 178:
        MI17codasip_tmp_var_4IH1_9take_trap.dwrite((data));
        break;
    case 179:
        MI17codasip_tmp_var_2IH1_9take_trap.dwrite((data));
        break;
    case 180:
        MI4mpieIH1_8do_xcallB0.dwrite((data));
        break;
    case 181:
        MI10int_enableIH1_7do_xretB0.dwrite((data));
        break;
    case 182:
        MI15prev_int_enableIH1_7do_xretB0.dwrite((data));
        break;
    case 186:
        MI3srcIH1_18csr_read_write_reg.dwrite((data));
        break;
    case 187:
        MI3csrIH1_18csr_read_write_reg.dwrite((data));
        break;
    case 188:
        MI3opcIH1_18csr_read_write_reg.dwrite((data));
        break;
    case 189:
        MI8writeValIH1_18csr_read_write_regB0.dwrite((data));
        break;
    case 190:
        MI7readValIH1_18csr_read_write_regB0.dwrite((data));
        break;
    case 191:
        MI8is_writeIH1_18csr_read_write_regB0.dwrite((data));
        break;
    case 192:
        MI17codasip_tmp_var_0IH1_18csr_read_write_reg.dwrite((data));
        break;
    case 196:
        MI3immIH1_18csr_read_write_imm.dwrite((data));
        break;
    case 197:
        MI3csrIH1_18csr_read_write_imm.dwrite((data));
        break;
    case 198:
        MI3opcIH1_18csr_read_write_imm.dwrite((data));
        break;
    case 199:
        MI7readValIH1_18csr_read_write_immB0.dwrite((data));
        break;
    case 200:
        MI8is_writeIH1_18csr_read_write_immB0.dwrite((data));
        break;
    case 201:
        MI17codasip_tmp_var_0IH1_18csr_read_write_imm.dwrite((data));
        break;
    case 206:
        MI8writeValIH1_14csr_read_write.dwrite((data));
        break;
    case 207:
        MI3csrIH1_14csr_read_write.dwrite((data));
        break;
    case 208:
        MI3opcIH1_14csr_read_write.dwrite((data));
        break;
    case 209:
        MI8is_writeIH1_14csr_read_write.dwrite((data));
        break;
    case 210:
        MI7readValIH1_14csr_read_writeB0.dwrite((data));
        break;
    case 211:
        MI17codasip_tmp_var_0IH1_14csr_read_write.dwrite((data));
        break;
    case 212:
        MI17codasip_tmp_var_1IH1_14csr_read_write.dwrite((data));
        break;
    case 213:
        MI17codasip_tmp_var_2IH1_14csr_read_write.dwrite((data));
        break;
    case 214:
        MI17codasip_tmp_var_3IH1_14csr_read_write.dwrite((data));
        break;
    case 215:
        MI17codasip_tmp_var_4IH1_14csr_read_write.dwrite((data));
        break;
    case 216:
        MI17codasip_tmp_var_5IH1_14csr_read_write.dwrite((data));
        break;
    case 217:
        MI17codasip_tmp_var_6IH1_14csr_read_write.dwrite((data));
        break;
    case 218:
        MI17codasip_tmp_var_7IH1_14csr_read_write.dwrite((data));
        break;
    case 219:
        MI17codasip_tmp_var_8IH1_14csr_read_write.dwrite((data));
        break;
    case 220:
        MI17codasip_tmp_var_9IH1_14csr_read_write.dwrite((data));
        break;
    case 221:
        MI18codasip_tmp_var_10IH1_14csr_read_write.dwrite((data));
        break;
    case 222:
        MI18codasip_tmp_var_11IH1_14csr_read_write.dwrite((data));
        break;
    case 223:
        MI18codasip_tmp_var_12IH1_14csr_read_write.dwrite((data));
        break;
    case 224:
        MI18codasip_tmp_var_13IH1_14csr_read_write.dwrite((data));
        break;
    case 227:
        MI11INSTRUCTIONIH5_3isa3isa1_3isa.dwrite((data));
        break;
    case 228:
        MI19INVALID_INSTRUCTIONIH5_3isa3isa1_3isa.dwrite((data));
        break;
    case 233:
        MI8writeValIH5_3isa3isa1_23i_control_registers_regB0.dwrite((data));
        break;
    case 234:
        MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_reg.dwrite((data));
        break;
    case 235:
        MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_reg.dwrite((data));
        break;
    case 238:
        MI8writeValIH5_3isa3isa1_23i_control_registers_immB0.dwrite((data));
        break;
    case 239:
        MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_imm.dwrite((data));
        break;
    case 240:
        MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_imm.dwrite((data));
        break;
    case 243:
        MI3valIH5_3isa3isa1_15i_comp_2reg_immB0.dwrite((data));
        break;
    case 246:
        MI3valIH5_3isa3isa1_21i_comp_2reg_imm_shiftB0.dwrite((data));
        break;
    case 254:
        MI8jmp_addrIH5_3isa3isa1_5i_jalB0.dwrite((data));
        break;
    case 255:
        MI3tmpIH5_3isa3isa1_5i_jalB0.dwrite((data));
        break;
    case 256:
        MI17codasip_tmp_var_0IH5_3isa3isa1_5i_jal.dwrite((data));
        break;
    case 258:
        MI3valIH5_3isa3isa1_6i_jalrB0.dwrite((data));
        break;
    case 259:
        MI8jmp_addrIH5_3isa3isa1_6i_jalrB0.dwrite((data));
        break;
    case 260:
        MI3tmpIH5_3isa3isa1_6i_jalrB0.dwrite((data));
        break;
    case 261:
        MI17codasip_tmp_var_0IH5_3isa3isa1_6i_jalr.dwrite((data));
        break;
    case 265:
        MI17codasip_tmp_var_0IH5_3isa3isa1_21i_control_conditional.dwrite((data));
        break;
    case 266:
        MI8jmp_addrIH5_3isa3isa1_21i_control_conditionalB0B1.dwrite((data));
        break;
    case 267:
        MI17codasip_tmp_var_1IH5_3isa3isa1_21i_control_conditional.dwrite((data));
        break;
    case 269:
        MI3valIH5_3isa3isa1_6i_loadB0.dwrite((data));
        break;
    case 270:
        MI4addrIH5_3isa3isa1_6i_loadB0.dwrite((data));
        break;
    case 271:
        MI17codasip_tmp_var_0IH5_3isa3isa1_6i_load.dwrite((data));
        break;
    case 274:
        MI4addrIH5_3isa3isa1_7i_storeB0.dwrite((data));
        break;
    case 275:
        MI4dataIH5_3isa3isa1_7i_storeB0.dwrite((data));
        break;
    case 277:
        MI1iIH5_3isa3isa1_8i_ebreakB0.dwrite((data));
        break;
    case 280:
        MI17codasip_tmp_var_0IH5_3isa3isa1_6i_xret.dwrite((data));
        break;
    case 291:
        MI3valIH5_3isa3isa1_8i_lui_hiB0.dwrite((data));
        break;
    case 292:
        MI3tmpIH5_3isa3isa1_16i_call_rel_aliasB0.dwrite((data));
        break;
    case 293:
        MI3tmpIH5_3isa3isa1_16i_call_reg_aliasB0.dwrite((data));
        break;
    case 297:
        MI6resultIH5_3isa3isa1_14i_ext_hackatonB0.dwrite((data));
        break;
    case 298:
        MI2s1IH5_3isa3isa1_14i_ext_hackatonB0.dwrite((data));
        break;
    case 299:
        MI2s2IH5_3isa3isa1_14i_ext_hackatonB0.dwrite((data));
        break;
    case 300:
        MI2s3IH5_3isa3isa1_14i_ext_hackatonB0.dwrite((data));
        break;
    case 301:
        MI7simd_a0IH5_3isa3isa1_14i_ext_hackatonB0.dwrite((data));
        break;
    case 302:
        MI7simd_a1IH5_3isa3isa1_14i_ext_hackatonB0.dwrite((data));
        break;
    case 303:
        MI7simd_b0IH5_3isa3isa1_14i_ext_hackatonB0.dwrite((data));
        break;
    case 304:
        MI7simd_b1IH5_3isa3isa1_14i_ext_hackatonB0.dwrite((data));
        break;
    case 305:
        MI11accumulatorIH5_3isa3isa1_14i_ext_hackatonB0.dwrite((data));
        break;
    case 306:
        MI5summaIH5_3isa3isa1_14i_ext_hackatonB0.dwrite((data));
        break;
    case 307:
        MI17codasip_tmp_var_0IH5_3isa3isa1_14i_ext_hackaton.dwrite((data));
        break;
    default:
        SIM_LOG(LOG_TYPE_ERROR, 0, m_SimCycleCounter) << "unknown resource UID: '" << resource << "'" << std::endl;
    }
}
void Sim::ResourceWrite(const Uid resource, const MaxInt& data, const simulator::Address addr, const unsigned sbc)
{
    switch (resource) {
    case 47:
    // no break, fall through to the interface
    case 48:
        MI8m_memory.if_ldst.dwrite((data), addr, sbc);
        break;
    case 49:
        MI8m_memory.if_fetch.dwrite((data), addr, sbc);
        break;
    case 32:
        MI6rf_gpr.dwrite((data), addr);
        break;
    case 34:
        MI6as_all_program_dwrite((data), addr, sbc);
        break;
    case 35:
        MI6as_all_data_dwrite((data), addr, sbc);
        break;
    case 33:
        MI6as_all_dwrite((data), addr, sbc);
        break;
    case 37:
        MI7if_ldst.dwrite((data), addr, sbc);
        break;
    case 38:
        MI8if_fetch.dwrite((data), addr, sbc);
        break;
    default:
        SIM_LOG(LOG_TYPE_ERROR, 0, m_SimCycleCounter) << "unknown resource UID: '" << resource << "'" << std::endl;
    }
}
uint64_t Sim::ResourceStats(const Uid resource, const profiler::AccessType type, const Address addr) const 
{
    switch (resource) {
    }
    return 0;
}
bool Sim::Dump(DumpStream& stream,const std::vector<Uid>& resources,const bool continuous)
{
    SIM_LOG(LOG_TYPE_ERROR, 0, m_SimCycleCounter) << "simulator is generated without support of resource dumping" << std::endl;
    return false;
}
void Sim::LoadProgram(const Uid addressSpace,const codasip::MaxInt& data,const Address addr,const unsigned int sbc,const bool isText,const int bw)
{
    switch (addressSpace) {
    case 33:
        MI6as_all_load(data, addr, sbc, bw);
        return;
    }
    SIM_LOG(LOG_TYPE_ERROR, 0, m_SimCycleCounter) << "unknown address space: '" << addressSpace << "'" << std::endl;
}
void Sim::InvalidateCaches(const bool flush)
{

}
bool Sim::Restore(std::istream& stream,const bool continuous,const std::string& format)
{
    SIM_LOG(LOG_TYPE_ERROR, 0, m_SimCycleCounter) << "simulator is generated without support of resource dumping" << std::endl;
    return false;
}
std::vector<Uid> Sim::GetDumpableResourceUids(const std::string& globalSignature) const 
{
    SIM_LOG(LOG_TYPE_ERROR, 0, m_SimCycleCounter) << "simulator is generated without support of resource dumping" << std::endl;
    return {};
}
bool Sim::ResourceRead(Data* output, const unsigned outputLen, const char* resource, const Address addr)
{
    auto res = FindResource(resource);
    if (!res) {
        SIM_LOG(LOG_TYPE_ERROR, 0, m_SimCycleCounter) << "unknown resource '" << resource << "'" << std::endl;
        return false;
    }
    auto data = res.ResourceRead(addr);
    IntegerToByteArray(output, outputLen, data);
    return true;
}
bool Sim::ResourceWrite(const Data* data, const unsigned dataLen, const char* resource, const Address addr)
{
    auto res = FindResource(resource);
    if (!res) {
        SIM_LOG(LOG_TYPE_ERROR, 0, m_SimCycleCounter) << "unknown resource '" << resource << "'" << std::endl;
        return false;
    }
    codasip::MaxInt dataInt;
    ByteArrayToInteger(dataInt, data, dataLen);
    res.ResourceWrite(dataInt, addr);
    return true;
}
/**
 *  \brief  GetAsipInfo
 */
bool Sim::GetAsipInfo(std::vector<Uid>* pcsUID, Uid* programAsUID, Uid* dataAsUID) const 
{
    if (pcsUID)
    {
        pcsUID->push_back(31);
    }
    if (programAsUID) *programAsUID = 34;
    if (dataAsUID) *dataAsUID = 35;
    return true;
}
void Sim::SetExecutable(const std::string& executable)
{
    m_Executable = executable;
}
bool Sim::LoadExecutable(const char* executable, const char* arguments)
{
    Loader loader (*this);
    loader.LoadExecutable(executable);
    loader.LoadIntoSimulator(arguments, 0);
    Address entry = loader.GetEntryPoint();
    if (entry != 4096llu) {
        SIM_LOG(LOG_TYPE_WARNING, 0, m_SimCycleCounter) << "entry-point is set to 0x" << std::hex << entry << std::dec << ", but the program counter 'r_PC' has value 0x1000. Reseting the program counter to the entry-point.";
        MI4r_PC.set_default_value(entry);
        MI4r_PC.dwrite(entry);
    }
    return true;
}
void Sim::LoadSymbol(const Address address, const std::string& name)
{
    m_Symbols[name] = address;
}
/**
 *  \brief  codasip_get_clock_cycle
 */
uint64_t Sim::codasip_get_clock_cycle() const 
{
    return m_SimCycleCounter;
}
/**
 *  \brief  codasip_inc_clock_cycle
 */
void Sim::codasip_inc_clock_cycle(uint64_t val)
{
    m_SimCycleCounter += (val - 1) < val ? val - 1 : 0;
}
void Sim::SetSimExitCodeFilePath(const char* path)
{
    m_SimExitCodeFilePath = path;
}
void Sim::StackOverflowCheck(const bool enable, const Address main, const Address low, const Address high)
{

}
unsigned Sim::GetCurrentThreadIndex()
{
    return 0;
}
uint64_t Sim::GetCurrentThreadInstructionAddress()
{
    return MI4r_PC.dread();
}
void Sim::RvSignatureDump(std::ostream& output, unsigned int granularity)
{
    auto begin_signature = m_Symbols.find("begin_signature");
    if (begin_signature == m_Symbols.end())
    {
        SIM_LOG(LOG_TYPE_FATAL, 0, m_SimCycleCounter) << "Symbol \"begin_signature\" not found.";
        return;
    }
    auto end_signature = m_Symbols.find("end_signature");
    if (end_signature == m_Symbols.end())
    {
        SIM_LOG(LOG_TYPE_FATAL, 0, m_SimCycleCounter) << "Symbol \"end_signature\" not found.";
        return;
    }
    Address beginAddress = begin_signature->second;
    Address endAddress = end_signature->second;
    Uid uid = GetDataAddressSpace().GetUid();
    output << std::hex << std::setfill('0');
    const size_t width = granularity * 2;
    for (Address address = beginAddress; address < endAddress; address += granularity)
    {
        output << std::setw(width) << ResourceRead(uid, address, granularity) << std::endl;
    }
    output << std::dec << std::setw(0) << std::setfill(' ');
}
void Sim::SaveState()
{
    auto saveStream = MakeSaveStream(this->GetSaveRestoreOptions().saveStatePath);
    saveStream << m_SimCycleCounter;
    SaveResource(saveStream, "MI13r_instr_fetch", MI13r_instr_fetch, static_cast<uint64_t>(1ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI13r_fetch_fault", MI13r_fetch_fault, static_cast<uint64_t>(2ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI14r_pf_mem_error", MI14r_pf_mem_error, static_cast<uint64_t>(3ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI18r_minstret_written", MI18r_minstret_written, static_cast<uint64_t>(4ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI18r_minstret_inhibit", MI18r_minstret_inhibit, static_cast<uint64_t>(5ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI16r_mcycle_inhibit", MI16r_mcycle_inhibit, static_cast<uint64_t>(6ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI15r_illegal_instr", MI15r_illegal_instr, static_cast<uint64_t>(7ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI15r_unknown_instr", MI15r_unknown_instr, static_cast<uint64_t>(8ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI13r_fetch_hresp", MI13r_fetch_hresp, static_cast<uint64_t>(9ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI12r_ldst_hresp", MI12r_ldst_hresp, static_cast<uint64_t>(10ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI5r_wfi", MI5r_wfi, static_cast<uint64_t>(11ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI14r_csr_minstret", MI14r_csr_minstret, static_cast<uint64_t>(12ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI12r_csr_mcycle", MI12r_csr_mcycle, static_cast<uint64_t>(13ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI19r_csr_mcountinhibit", MI19r_csr_mcountinhibit, static_cast<uint64_t>(14ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI13r_csr_mhartid", MI13r_csr_mhartid, static_cast<uint64_t>(15ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI9r_csr_nmi", MI9r_csr_nmi, static_cast<uint64_t>(16ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI15r_csr_nmi_mtval", MI15r_csr_nmi_mtval, static_cast<uint64_t>(17ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI13r_nmi_handler", MI13r_nmi_handler, static_cast<uint64_t>(18ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI9r_csr_mip", MI9r_csr_mip, static_cast<uint64_t>(19ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI9r_csr_mie", MI9r_csr_mie, static_cast<uint64_t>(20ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI11r_csr_mtval", MI11r_csr_mtval, static_cast<uint64_t>(21ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI10r_csr_mepc", MI10r_csr_mepc, static_cast<uint64_t>(22ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI12r_csr_mcause", MI12r_csr_mcause, static_cast<uint64_t>(23ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI14r_csr_mscratch", MI14r_csr_mscratch, static_cast<uint64_t>(24ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI11r_csr_mtvec", MI11r_csr_mtvec, static_cast<uint64_t>(25ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI13r_csr_mstatus", MI13r_csr_mstatus, static_cast<uint64_t>(26ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI10r_csr_misa", MI10r_csr_misa, static_cast<uint64_t>(27ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI13r_csr_marchid", MI13r_csr_marchid, static_cast<uint64_t>(28ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI12r_reset_init", MI12r_reset_init, static_cast<uint64_t>(29ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI14r_syscall_addr", MI14r_syscall_addr, static_cast<uint64_t>(30ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI4r_PC", MI4r_PC, static_cast<uint64_t>(31ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI6rf_gpr", MI6rf_gpr, static_cast<uint64_t>(32ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI8r_wfi_ce", MI8r_wfi_ce, static_cast<uint64_t>(36ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI7if_ldst", MI7if_ldst, static_cast<uint64_t>(37ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI8if_fetch", MI8if_fetch, static_cast<uint64_t>(38ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI6p_meip", MI6p_meip, static_cast<uint64_t>(39ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI6p_msip", MI6p_msip, static_cast<uint64_t>(40ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI6p_mtip", MI6p_mtip, static_cast<uint64_t>(41ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI5p_wfi", MI5p_wfi, static_cast<uint64_t>(42ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI5p_nmi", MI5p_nmi, static_cast<uint64_t>(43ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI11p_nmi_mtval", MI11p_nmi_mtval, static_cast<uint64_t>(44ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI11p_boot_addr", MI11p_boot_addr, static_cast<uint64_t>(45ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI90codasip_return_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc", MI90codasip_return_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc, static_cast<uint64_t>(229ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src", MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src, static_cast<uint64_t>(230ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr", MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr, static_cast<uint64_t>(231ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst", MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst, static_cast<uint64_t>(232ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI90codasip_return_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc", MI90codasip_return_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc, static_cast<uint64_t>(236ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI45codasip_return_MI4imm5IH5_3isa3isa6_4imm53imm", MI45codasip_return_MI4imm5IH5_3isa3isa6_4imm53imm, static_cast<uint64_t>(237ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI74codasip_return_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc", MI74codasip_return_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc, static_cast<uint64_t>(241ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI52codasip_return_MI6simm12IH5_3isa3isa8_6simm126simm12", MI52codasip_return_MI6simm12IH5_3isa3isa8_6simm126simm12, static_cast<uint64_t>(242ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI86codasip_return_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc", MI86codasip_return_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc, static_cast<uint64_t>(244ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI56codasip_return_MI9shift_immIH5_3isa3isa11_9shift_imm3imm", MI56codasip_return_MI9shift_immIH5_3isa3isa11_9shift_imm3imm, static_cast<uint64_t>(245ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI56codasip_return_MI9imm20_s12IH5_3isa3isa11_9imm20_s123imm", MI56codasip_return_MI9imm20_s12IH5_3isa3isa11_9imm20_s123imm, static_cast<uint64_t>(247ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI51codasip_return_MI7opc_luiIH5_3isa3isa9_7opc_lui3opc", MI51codasip_return_MI7opc_luiIH5_3isa3isa9_7opc_lui3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI56codasip_return_MI9opc_auipcIH5_3isa3isa11_9opc_auipc3opc", MI56codasip_return_MI9opc_auipcIH5_3isa3isa11_9opc_auipc3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc", MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc, static_cast<uint64_t>(250ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1", MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1, static_cast<uint64_t>(251ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2", MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2, static_cast<uint64_t>(252ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI61codasip_return_MI10rel_addr20IH5_3isa3isa13_10rel_addr204addr", MI61codasip_return_MI10rel_addr20IH5_3isa3isa13_10rel_addr204addr, static_cast<uint64_t>(253ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI51codasip_return_MI7opc_jalIH5_3isa3isa9_7opc_jal3opc", MI51codasip_return_MI7opc_jalIH5_3isa3isa9_7opc_jal3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI54codasip_return_MI8opc_jalrIH5_3isa3isa10_8opc_jalr3opc", MI54codasip_return_MI8opc_jalrIH5_3isa3isa10_8opc_jalr3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI86codasip_return_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc", MI86codasip_return_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc, static_cast<uint64_t>(263ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI61codasip_return_MI10rel_addr12IH5_3isa3isa13_10rel_addr124addr", MI61codasip_return_MI10rel_addr12IH5_3isa3isa13_10rel_addr124addr, static_cast<uint64_t>(264ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI56codasip_return_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc", MI56codasip_return_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc, static_cast<uint64_t>(268ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI59codasip_return_MI8simm12_sIH5_3isa3isa10_8simm12_s8simm12_s", MI59codasip_return_MI8simm12_sIH5_3isa3isa10_8simm12_s8simm12_s, static_cast<uint64_t>(272ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI60codasip_return_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc", MI60codasip_return_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc, static_cast<uint64_t>(273ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI56codasip_return_MI9opc_ecallIH5_3isa3isa11_9opc_ecall3opc", MI56codasip_return_MI9opc_ecallIH5_3isa3isa11_9opc_ecall3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI60codasip_return_MI10opc_ebreakIH5_3isa3isa13_10opc_ebreak3opc", MI60codasip_return_MI10opc_ebreakIH5_3isa3isa13_10opc_ebreak3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI54codasip_return_MI8opc_xretIH5_3isa3isa10_8opc_xret3opc", MI54codasip_return_MI8opc_xretIH5_3isa3isa10_8opc_xret3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI51codasip_return_MI7opc_wfiIH5_3isa3isa9_7opc_wfi3opc", MI51codasip_return_MI7opc_wfiIH5_3isa3isa9_7opc_wfi3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1", MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1, static_cast<uint64_t>(282ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2", MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2, static_cast<uint64_t>(283ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI56codasip_return_MI9opc_fenceIH5_3isa3isa11_9opc_fence3opc", MI56codasip_return_MI9opc_fenceIH5_3isa3isa11_9opc_fence3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI60codasip_return_MI10opc_fenceiIH5_3isa3isa13_10opc_fencei3opc", MI60codasip_return_MI10opc_fenceiIH5_3isa3isa13_10opc_fencei3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI56codasip_return_MI9opc_unimpIH5_3isa3isa11_9opc_unimp3opc", MI56codasip_return_MI9opc_unimpIH5_3isa3isa11_9opc_unimp3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI78codasip_return_MI19opc_timers_countersIH5_3isa3isa22_19opc_timers_counters3opc", MI78codasip_return_MI19opc_timers_countersIH5_3isa3isa22_19opc_timers_counters3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI54codasip_return_MI8imm20_hiIH5_3isa3isa10_8imm20_hi3imm", MI54codasip_return_MI8imm20_hiIH5_3isa3isa10_8imm20_hi3imm, static_cast<uint64_t>(290ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1", MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1, static_cast<uint64_t>(294ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2", MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2, static_cast<uint64_t>(295ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI82codasip_return_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc", MI82codasip_return_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc, static_cast<uint64_t>(296ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI3immIH5_3isa3isa6_4imm53imm1_4imm5", MI3immIH5_3isa3isa6_4imm53imm1_4imm5, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI4simmIH5_3isa3isa8_6simm126simm121_13simm12_simple", MI4simmIH5_3isa3isa8_6simm126simm121_13simm12_simple, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI3valIH5_3isa3isa8_6simm126simm121_9simm12_lo", MI3valIH5_3isa3isa8_6simm126simm121_9simm12_lo, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI3valIH5_3isa3isa8_6simm126simm121_15simm12_pcrel_lo", MI3valIH5_3isa3isa8_6simm126simm121_15simm12_pcrel_lo, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI5shiftIH5_3isa3isa11_9shift_imm3imm1_9shift_imm", MI5shiftIH5_3isa3isa11_9shift_imm3imm1_9shift_imm, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI3immIH5_3isa3isa11_9imm20_s123imm1_9imm20_s12", MI3immIH5_3isa3isa11_9imm20_s123imm1_9imm20_s12, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI81codasip_return_MI20rel_addr32_call_tailIH5_3isa3isa23_20rel_addr32_call_tail4addr", MI81codasip_return_MI20rel_addr32_call_tailIH5_3isa3isa23_20rel_addr32_call_tail4addr, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI4addrIH5_3isa3isa23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple", MI4addrIH5_3isa3isa23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI61codasip_return_MI10rel_addr32IH5_3isa3isa13_10rel_addr324addr", MI61codasip_return_MI10rel_addr32IH5_3isa3isa13_10rel_addr324addr, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI4addrIH5_3isa3isa13_10rel_addr324addr1_10rel_addr32", MI4addrIH5_3isa3isa13_10rel_addr324addr1_10rel_addr32, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI62codasip_return_MI11imm20_relocIH5_3isa3isa14_11imm20_reloc3imm", MI62codasip_return_MI11imm20_relocIH5_3isa3isa14_11imm20_reloc3imm, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI3valIH5_3isa3isa14_11imm20_reloc3imm1_8imm20_hi", MI3valIH5_3isa3isa14_11imm20_reloc3imm1_8imm20_hi, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI3valIH5_3isa3isa14_11imm20_reloc3imm1_14imm20_pcrel_hi", MI3valIH5_3isa3isa14_11imm20_reloc3imm1_14imm20_pcrel_hi, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI3valIH5_3isa3isa10_8imm20_hi3imm1_8imm20_hi", MI3valIH5_3isa3isa10_8imm20_hi3imm1_8imm20_hi, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20", MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12", MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI4simmIH5_3isa3isa10_8simm12_s8simm12_s1_13simm12_simple", MI4simmIH5_3isa3isa10_8simm12_s8simm12_s1_13simm12_simple, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI3valIH5_3isa3isa10_8simm12_s8simm12_s1_11simm12_s_lo", MI3valIH5_3isa3isa10_8simm12_s8simm12_s1_11simm12_s_lo, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI3valIH5_3isa3isa10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo", MI3valIH5_3isa3isa10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
    SaveResource(saveStream, "MI8m_memory", MI8m_memory, static_cast<uint64_t>(47ULL), [](BinaryStream& stream, const auto& resource) {stream << resource;});
}
void Sim::RestoreState()
{
    auto restoreStream = MakeRestoreStream(this->GetSaveRestoreOptions().restoreStatePath);
    restoreStream >> m_SimCycleCounter;
    RestoreResource(restoreStream, "MI13r_instr_fetch", MI13r_instr_fetch, static_cast<uint64_t>(1ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI13r_fetch_fault", MI13r_fetch_fault, static_cast<uint64_t>(2ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI14r_pf_mem_error", MI14r_pf_mem_error, static_cast<uint64_t>(3ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI18r_minstret_written", MI18r_minstret_written, static_cast<uint64_t>(4ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI18r_minstret_inhibit", MI18r_minstret_inhibit, static_cast<uint64_t>(5ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI16r_mcycle_inhibit", MI16r_mcycle_inhibit, static_cast<uint64_t>(6ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI15r_illegal_instr", MI15r_illegal_instr, static_cast<uint64_t>(7ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI15r_unknown_instr", MI15r_unknown_instr, static_cast<uint64_t>(8ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI13r_fetch_hresp", MI13r_fetch_hresp, static_cast<uint64_t>(9ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI12r_ldst_hresp", MI12r_ldst_hresp, static_cast<uint64_t>(10ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI5r_wfi", MI5r_wfi, static_cast<uint64_t>(11ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI14r_csr_minstret", MI14r_csr_minstret, static_cast<uint64_t>(12ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI12r_csr_mcycle", MI12r_csr_mcycle, static_cast<uint64_t>(13ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI19r_csr_mcountinhibit", MI19r_csr_mcountinhibit, static_cast<uint64_t>(14ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI13r_csr_mhartid", MI13r_csr_mhartid, static_cast<uint64_t>(15ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI9r_csr_nmi", MI9r_csr_nmi, static_cast<uint64_t>(16ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI15r_csr_nmi_mtval", MI15r_csr_nmi_mtval, static_cast<uint64_t>(17ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI13r_nmi_handler", MI13r_nmi_handler, static_cast<uint64_t>(18ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI9r_csr_mip", MI9r_csr_mip, static_cast<uint64_t>(19ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI9r_csr_mie", MI9r_csr_mie, static_cast<uint64_t>(20ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI11r_csr_mtval", MI11r_csr_mtval, static_cast<uint64_t>(21ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI10r_csr_mepc", MI10r_csr_mepc, static_cast<uint64_t>(22ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI12r_csr_mcause", MI12r_csr_mcause, static_cast<uint64_t>(23ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI14r_csr_mscratch", MI14r_csr_mscratch, static_cast<uint64_t>(24ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI11r_csr_mtvec", MI11r_csr_mtvec, static_cast<uint64_t>(25ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI13r_csr_mstatus", MI13r_csr_mstatus, static_cast<uint64_t>(26ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI10r_csr_misa", MI10r_csr_misa, static_cast<uint64_t>(27ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI13r_csr_marchid", MI13r_csr_marchid, static_cast<uint64_t>(28ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI12r_reset_init", MI12r_reset_init, static_cast<uint64_t>(29ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI14r_syscall_addr", MI14r_syscall_addr, static_cast<uint64_t>(30ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI4r_PC", MI4r_PC, static_cast<uint64_t>(31ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI6rf_gpr", MI6rf_gpr, static_cast<uint64_t>(32ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI8r_wfi_ce", MI8r_wfi_ce, static_cast<uint64_t>(36ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI7if_ldst", MI7if_ldst, static_cast<uint64_t>(37ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI8if_fetch", MI8if_fetch, static_cast<uint64_t>(38ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI6p_meip", MI6p_meip, static_cast<uint64_t>(39ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI6p_msip", MI6p_msip, static_cast<uint64_t>(40ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI6p_mtip", MI6p_mtip, static_cast<uint64_t>(41ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI5p_wfi", MI5p_wfi, static_cast<uint64_t>(42ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI5p_nmi", MI5p_nmi, static_cast<uint64_t>(43ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI11p_nmi_mtval", MI11p_nmi_mtval, static_cast<uint64_t>(44ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI11p_boot_addr", MI11p_boot_addr, static_cast<uint64_t>(45ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI90codasip_return_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc", MI90codasip_return_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc, static_cast<uint64_t>(229ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src", MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src, static_cast<uint64_t>(230ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr", MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr, static_cast<uint64_t>(231ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst", MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst, static_cast<uint64_t>(232ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI90codasip_return_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc", MI90codasip_return_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc, static_cast<uint64_t>(236ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI45codasip_return_MI4imm5IH5_3isa3isa6_4imm53imm", MI45codasip_return_MI4imm5IH5_3isa3isa6_4imm53imm, static_cast<uint64_t>(237ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI74codasip_return_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc", MI74codasip_return_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc, static_cast<uint64_t>(241ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI52codasip_return_MI6simm12IH5_3isa3isa8_6simm126simm12", MI52codasip_return_MI6simm12IH5_3isa3isa8_6simm126simm12, static_cast<uint64_t>(242ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI86codasip_return_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc", MI86codasip_return_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc, static_cast<uint64_t>(244ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI56codasip_return_MI9shift_immIH5_3isa3isa11_9shift_imm3imm", MI56codasip_return_MI9shift_immIH5_3isa3isa11_9shift_imm3imm, static_cast<uint64_t>(245ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI56codasip_return_MI9imm20_s12IH5_3isa3isa11_9imm20_s123imm", MI56codasip_return_MI9imm20_s12IH5_3isa3isa11_9imm20_s123imm, static_cast<uint64_t>(247ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI51codasip_return_MI7opc_luiIH5_3isa3isa9_7opc_lui3opc", MI51codasip_return_MI7opc_luiIH5_3isa3isa9_7opc_lui3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI56codasip_return_MI9opc_auipcIH5_3isa3isa11_9opc_auipc3opc", MI56codasip_return_MI9opc_auipcIH5_3isa3isa11_9opc_auipc3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc", MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc, static_cast<uint64_t>(250ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1", MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1, static_cast<uint64_t>(251ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2", MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2, static_cast<uint64_t>(252ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI61codasip_return_MI10rel_addr20IH5_3isa3isa13_10rel_addr204addr", MI61codasip_return_MI10rel_addr20IH5_3isa3isa13_10rel_addr204addr, static_cast<uint64_t>(253ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI51codasip_return_MI7opc_jalIH5_3isa3isa9_7opc_jal3opc", MI51codasip_return_MI7opc_jalIH5_3isa3isa9_7opc_jal3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI54codasip_return_MI8opc_jalrIH5_3isa3isa10_8opc_jalr3opc", MI54codasip_return_MI8opc_jalrIH5_3isa3isa10_8opc_jalr3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI86codasip_return_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc", MI86codasip_return_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc, static_cast<uint64_t>(263ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI61codasip_return_MI10rel_addr12IH5_3isa3isa13_10rel_addr124addr", MI61codasip_return_MI10rel_addr12IH5_3isa3isa13_10rel_addr124addr, static_cast<uint64_t>(264ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI56codasip_return_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc", MI56codasip_return_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc, static_cast<uint64_t>(268ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI59codasip_return_MI8simm12_sIH5_3isa3isa10_8simm12_s8simm12_s", MI59codasip_return_MI8simm12_sIH5_3isa3isa10_8simm12_s8simm12_s, static_cast<uint64_t>(272ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI60codasip_return_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc", MI60codasip_return_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc, static_cast<uint64_t>(273ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI56codasip_return_MI9opc_ecallIH5_3isa3isa11_9opc_ecall3opc", MI56codasip_return_MI9opc_ecallIH5_3isa3isa11_9opc_ecall3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI60codasip_return_MI10opc_ebreakIH5_3isa3isa13_10opc_ebreak3opc", MI60codasip_return_MI10opc_ebreakIH5_3isa3isa13_10opc_ebreak3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI54codasip_return_MI8opc_xretIH5_3isa3isa10_8opc_xret3opc", MI54codasip_return_MI8opc_xretIH5_3isa3isa10_8opc_xret3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI51codasip_return_MI7opc_wfiIH5_3isa3isa9_7opc_wfi3opc", MI51codasip_return_MI7opc_wfiIH5_3isa3isa9_7opc_wfi3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1", MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1, static_cast<uint64_t>(282ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2", MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2, static_cast<uint64_t>(283ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI56codasip_return_MI9opc_fenceIH5_3isa3isa11_9opc_fence3opc", MI56codasip_return_MI9opc_fenceIH5_3isa3isa11_9opc_fence3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI60codasip_return_MI10opc_fenceiIH5_3isa3isa13_10opc_fencei3opc", MI60codasip_return_MI10opc_fenceiIH5_3isa3isa13_10opc_fencei3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI56codasip_return_MI9opc_unimpIH5_3isa3isa11_9opc_unimp3opc", MI56codasip_return_MI9opc_unimpIH5_3isa3isa11_9opc_unimp3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI78codasip_return_MI19opc_timers_countersIH5_3isa3isa22_19opc_timers_counters3opc", MI78codasip_return_MI19opc_timers_countersIH5_3isa3isa22_19opc_timers_counters3opc, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI54codasip_return_MI8imm20_hiIH5_3isa3isa10_8imm20_hi3imm", MI54codasip_return_MI8imm20_hiIH5_3isa3isa10_8imm20_hi3imm, static_cast<uint64_t>(290ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1", MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1, static_cast<uint64_t>(294ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2", MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2, static_cast<uint64_t>(295ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI82codasip_return_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc", MI82codasip_return_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc, static_cast<uint64_t>(296ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI3immIH5_3isa3isa6_4imm53imm1_4imm5", MI3immIH5_3isa3isa6_4imm53imm1_4imm5, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI4simmIH5_3isa3isa8_6simm126simm121_13simm12_simple", MI4simmIH5_3isa3isa8_6simm126simm121_13simm12_simple, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI3valIH5_3isa3isa8_6simm126simm121_9simm12_lo", MI3valIH5_3isa3isa8_6simm126simm121_9simm12_lo, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI3valIH5_3isa3isa8_6simm126simm121_15simm12_pcrel_lo", MI3valIH5_3isa3isa8_6simm126simm121_15simm12_pcrel_lo, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI5shiftIH5_3isa3isa11_9shift_imm3imm1_9shift_imm", MI5shiftIH5_3isa3isa11_9shift_imm3imm1_9shift_imm, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI3immIH5_3isa3isa11_9imm20_s123imm1_9imm20_s12", MI3immIH5_3isa3isa11_9imm20_s123imm1_9imm20_s12, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI81codasip_return_MI20rel_addr32_call_tailIH5_3isa3isa23_20rel_addr32_call_tail4addr", MI81codasip_return_MI20rel_addr32_call_tailIH5_3isa3isa23_20rel_addr32_call_tail4addr, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI4addrIH5_3isa3isa23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple", MI4addrIH5_3isa3isa23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI61codasip_return_MI10rel_addr32IH5_3isa3isa13_10rel_addr324addr", MI61codasip_return_MI10rel_addr32IH5_3isa3isa13_10rel_addr324addr, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI4addrIH5_3isa3isa13_10rel_addr324addr1_10rel_addr32", MI4addrIH5_3isa3isa13_10rel_addr324addr1_10rel_addr32, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI62codasip_return_MI11imm20_relocIH5_3isa3isa14_11imm20_reloc3imm", MI62codasip_return_MI11imm20_relocIH5_3isa3isa14_11imm20_reloc3imm, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI3valIH5_3isa3isa14_11imm20_reloc3imm1_8imm20_hi", MI3valIH5_3isa3isa14_11imm20_reloc3imm1_8imm20_hi, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI3valIH5_3isa3isa14_11imm20_reloc3imm1_14imm20_pcrel_hi", MI3valIH5_3isa3isa14_11imm20_reloc3imm1_14imm20_pcrel_hi, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI3valIH5_3isa3isa10_8imm20_hi3imm1_8imm20_hi", MI3valIH5_3isa3isa10_8imm20_hi3imm1_8imm20_hi, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20", MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12", MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI4simmIH5_3isa3isa10_8simm12_s8simm12_s1_13simm12_simple", MI4simmIH5_3isa3isa10_8simm12_s8simm12_s1_13simm12_simple, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI3valIH5_3isa3isa10_8simm12_s8simm12_s1_11simm12_s_lo", MI3valIH5_3isa3isa10_8simm12_s8simm12_s1_11simm12_s_lo, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI3valIH5_3isa3isa10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo", MI3valIH5_3isa3isa10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo, static_cast<uint64_t>(18446744073709551615ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
    RestoreResource(restoreStream, "MI8m_memory", MI8m_memory, static_cast<uint64_t>(47ULL), [](BinaryStream& stream, auto& resource) {stream >> resource;});
}
const getopt::SimulatorOptions::SaveRestoreOptions& Sim::GetSaveRestoreOptions() const 
{
    return m_SaveRestoreOptions;
}
void Sim::SetSaveRestoreOptions(const getopt::SimulatorOptions::SaveRestoreOptions& options)
{
    m_SaveRestoreOptions = options;
}
void Sim::SaveState(const char* path)
{
    if (path != nullptr)
    {
        m_SaveRestoreOptions.saveStatePath = path;
    }
    SaveState();
}
void Sim::RestoreState(const char* path)
{
    if (path != nullptr)
    {
        m_SaveRestoreOptions.restoreStatePath = path;
    }
    RestoreState();
}
/**
 *  \brief  IsAddressHit
 */
bool Sim::IsAddressHit()
{
    const codasip_address_t stopAddress = GetSaveRestoreOptions().saveStateAddress;switch (GetSaveRestoreOptions().saveStateAddressThread)
    {
        case -1:
            return MI4r_PC.read() == stopAddress;
        case 0:
            return MI4r_PC.read() == stopAddress;
    }
    return false;
}
void Sim::SetResetCallback(std::function<void()> callback)
{
    m_ResetCallback = std::move(callback);
}
} // namespace MI15codasip_urisc_v
} // namespace simulator
} // namespace codasip
