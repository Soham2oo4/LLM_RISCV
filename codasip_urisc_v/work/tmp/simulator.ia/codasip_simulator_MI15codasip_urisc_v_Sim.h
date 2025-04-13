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
 * \author  Codasip (c) simulator generator
 * \version 9.4.2
 * \brief   Source files for simulator
 * \project MI15codasip_urisc_v
 */
#ifndef CODASIP_SIMULATOR_MI15CODASIP_URISC_V_SIM_1_H_
#define CODASIP_SIMULATOR_MI15CODASIP_URISC_V_SIM_1_H_

#include "simulator/simbase/simulator_private.h"
#include "simulator/simbase/simulator_log.h"
#include "simulator/simbase/simulator_resources.h"
#include "simulator/resources/csr_include.h"
#include "simulator/simbase/simulator_helpers.h"
#include <memory>
#include <csignal>
#include <iomanip>
#include "utility/stringutils.h"
#include "getoptl/interface/codal_parameters.h"
#include "simulator/saverestorel/binary_stream.h"
#undef SIM_LOG
#define SIM_LOG(logType, verb, cc) LOG(m_Log, logType, verb, cc)
#include "instrset/disassembler/disassembler.h"
#include "simulator/rspl/rsp_server.h"
#include "simulator/rspl/rsp_target.h"
#include "codasip_resources_MemoryCore_codasip_memory_m_memory_t.h"
#include "simulator/loaderl/loader.h"
#include "simulator/simbase/syscalls.h"

namespace codasip {
namespace simulator {
namespace MI15codasip_urisc_v {

/**
 *  \class  Sim
 */
class Sim : public SimulatorPrivateInterface, public debugger::RspTarget
 {
private:
    typedef enum {
        CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa,
    }parser_switch_t;
    std::map<std::string, std::vector<Uid>> m_DumpableResourcesMapping;
    std::string m_Name;
    Uid m_Uid;
    uint64_t m_SimCycleCounter;
    resources::Index m_CheckerLevel;
    mutable Log m_Log;
    uint64_t m_SimCycleTimeout;
    int m_Halt;
    std::string m_SimExitCodeFilePath;
    int m_SimExitCode;
    std::string m_ExitMsg;
    bool m_InstructionTraceEnabled;
    uint64_t m_PreviousInstructionAddress;
protected:
    std::function<void()> m_ResetCallback;
private:
    std::atomic<bool> m_WasInterruptedByDebugger;
    std::unique_ptr<disassembler::Disassembler> m_Disassembler;
    static std::string RSP_JSON;
    debugger::RspServer m_RspServer;
    int idecstate;
    resources::codasip_memory_m_memory_t MI8m_memory;
protected:
    resources::Register<resources::VariableStorage<uint32_t> > MI13r_instr_fetch;
    resources::Register<resources::VariableStorage<codasip::Integer<1, false>> > MI13r_fetch_fault;
    resources::Register<resources::VariableStorage<codasip::Integer<1, false>> > MI14r_pf_mem_error;
    resources::Register<resources::VariableStorage<codasip::Integer<1, false>> > MI18r_minstret_written;
    resources::Register<resources::VariableStorage<codasip::Integer<1, false>> > MI18r_minstret_inhibit;
    resources::Register<resources::VariableStorage<codasip::Integer<1, false>> > MI16r_mcycle_inhibit;
    resources::Register<resources::VariableStorage<codasip::Integer<1, false>> > MI15r_illegal_instr;
    resources::Register<resources::VariableStorage<codasip::Integer<1, false>> > MI15r_unknown_instr;
    resources::Register<resources::VariableStorage<codasip::Integer<1, false>> > MI13r_fetch_hresp;
    resources::Register<resources::VariableStorage<codasip::Integer<1, false>> > MI12r_ldst_hresp;
    resources::Register<resources::VariableStorage<codasip::Integer<1, false>> > MI5r_wfi;
public:
    resources::Register<resources::VariableStorage<uint64_t> > MI14r_csr_minstret;
    resources::Register<resources::VariableStorage<uint64_t> > MI12r_csr_mcycle;
    resources::Register<resources::VariableStorage<uint32_t, 1, true> > MI19r_csr_mcountinhibit;
    resources::Register<resources::VariableStorage<uint32_t, 1, true> > MI13r_csr_mhartid;
    resources::Register<resources::VariableStorage<codasip::Integer<1, false>> > MI9r_csr_nmi;
    resources::Register<resources::VariableStorage<uint32_t> > MI15r_csr_nmi_mtval;
    resources::Register<resources::VariableStorage<uint32_t, 1, true> > MI13r_nmi_handler;
    resources::Register<resources::VariableStorage<uint32_t, 1, true> > MI9r_csr_mip;
    resources::Register<resources::VariableStorage<uint32_t, 1, true> > MI9r_csr_mie;
    resources::Register<resources::VariableStorage<uint32_t> > MI11r_csr_mtval;
    resources::Register<resources::VariableStorage<uint32_t> > MI10r_csr_mepc;
    resources::Register<resources::VariableStorage<uint32_t> > MI12r_csr_mcause;
    resources::Register<resources::VariableStorage<uint32_t> > MI14r_csr_mscratch;
    resources::Register<resources::VariableStorage<uint32_t> > MI11r_csr_mtvec;
    resources::Register<resources::VariableStorage<uint32_t> > MI13r_csr_mstatus;
    resources::Register<resources::VariableStorage<uint32_t, 1, true> > MI10r_csr_misa;
    resources::Register<resources::VariableStorage<uint32_t, 1, true> > MI13r_csr_marchid;
protected:
    resources::Register<resources::VariableStorage<codasip::Integer<1, false>> > MI12r_reset_init;
    resources::Register<resources::VariableStorage<uint32_t> > MI14r_syscall_addr;
    resources::Register<resources::VariableStorage<uint32_t> > MI4r_PC;
public:
    resources::RegisterFile<resources::VariableStorage<uint32_t, 32> > MI6rf_gpr;
private:
    AddressSpaceInfo MI6as_all_virt_program;
    AddressSpaceInfo MI6as_all_virt_data;
    AddressSpaceInfo MI6as_all;
protected:
    resources::Register<resources::VariableStorage<codasip::Integer<1, false>> > MI8r_wfi_ce;
public:
    resources::Ahb3LiteInitiatorInterface<resources::PayloadSentinel<uint32_t, 8, 32, resources::CP_LITTLE_ENDIAN, resources::AhbPac> > MI7if_ldst;
    resources::Ahb3LiteInitiatorInterface<resources::PayloadSentinel<uint32_t, 8, 32, resources::CP_LITTLE_ENDIAN, resources::AhbPac> > MI8if_fetch;
    resources::Port<resources::VariableStorage<codasip::Integer<1, false>> > MI6p_meip;
    resources::Port<resources::VariableStorage<codasip::Integer<1, false>> > MI6p_msip;
    resources::Port<resources::VariableStorage<codasip::Integer<1, false>> > MI6p_mtip;
    resources::Port<resources::VariableStorage<codasip::Integer<1, false>> > MI5p_wfi;
    resources::Port<resources::VariableStorage<codasip::Integer<1, false>> > MI5p_nmi;
    resources::Port<resources::VariableStorage<uint32_t> > MI11p_nmi_mtval;
    resources::Port<resources::VariableStorage<uint32_t> > MI11p_boot_addr;
protected:
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI90codasip_return_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc;
    resources::Signal<resources::VariableStorage<int32_t > > MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src;
    resources::Signal<resources::VariableStorage<codasip::Integer<12, false> > > MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr;
    resources::Signal<resources::VariableStorage<int32_t > > MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI90codasip_return_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<5, false> > > MI45codasip_return_MI4imm5IH5_3isa3isa6_4imm53imm;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI74codasip_return_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<12, true> > > MI52codasip_return_MI6simm12IH5_3isa3isa8_6simm126simm12;
    resources::Signal<resources::VariableStorage<codasip::Integer<17, false> > > MI86codasip_return_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<5, false> > > MI56codasip_return_MI9shift_immIH5_3isa3isa11_9shift_imm3imm;
    resources::Signal<resources::VariableStorage<int32_t > > MI56codasip_return_MI9imm20_s12IH5_3isa3isa11_9imm20_s123imm;
    resources::Signal<resources::VariableStorage<codasip::Integer<7, false> > > MI51codasip_return_MI7opc_luiIH5_3isa3isa9_7opc_lui3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<7, false> > > MI56codasip_return_MI9opc_auipcIH5_3isa3isa11_9opc_auipc3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<17, false> > > MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc;
    resources::Signal<resources::VariableStorage<int32_t > > MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1;
    resources::Signal<resources::VariableStorage<int32_t > > MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2;
    resources::Signal<resources::VariableStorage<int32_t > > MI61codasip_return_MI10rel_addr20IH5_3isa3isa13_10rel_addr204addr;
    resources::Signal<resources::VariableStorage<codasip::Integer<7, false> > > MI51codasip_return_MI7opc_jalIH5_3isa3isa9_7opc_jal3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI54codasip_return_MI8opc_jalrIH5_3isa3isa10_8opc_jalr3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI86codasip_return_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc;
    resources::Signal<resources::VariableStorage<int32_t > > MI61codasip_return_MI10rel_addr12IH5_3isa3isa13_10rel_addr124addr;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI56codasip_return_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<12, true> > > MI59codasip_return_MI8simm12_sIH5_3isa3isa10_8simm12_s8simm12_s;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI60codasip_return_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<22, false> > > MI56codasip_return_MI9opc_ecallIH5_3isa3isa11_9opc_ecall3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<22, false> > > MI60codasip_return_MI10opc_ebreakIH5_3isa3isa13_10opc_ebreak3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<22, false> > > MI54codasip_return_MI8opc_xretIH5_3isa3isa10_8opc_xret3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<22, false> > > MI51codasip_return_MI7opc_wfiIH5_3isa3isa9_7opc_wfi3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<4, false> > > MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1;
    resources::Signal<resources::VariableStorage<codasip::Integer<4, false> > > MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI56codasip_return_MI9opc_fenceIH5_3isa3isa11_9opc_fence3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI60codasip_return_MI10opc_fenceiIH5_3isa3isa13_10opc_fencei3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<22, false> > > MI56codasip_return_MI9opc_unimpIH5_3isa3isa11_9opc_unimp3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<22, false> > > MI78codasip_return_MI19opc_timers_countersIH5_3isa3isa22_19opc_timers_counters3opc;
    resources::Signal<resources::VariableStorage<int32_t > > MI54codasip_return_MI8imm20_hiIH5_3isa3isa10_8imm20_hi3imm;
    resources::Signal<resources::VariableStorage<int32_t > > MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1;
    resources::Signal<resources::VariableStorage<int32_t > > MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2;
    resources::Signal<resources::VariableStorage<codasip::Integer<3, false> > > MI82codasip_return_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<5, false> > > MI3immIH5_3isa3isa6_4imm53imm1_4imm5;
    resources::Signal<resources::VariableStorage<codasip::Integer<12, true> > > MI4simmIH5_3isa3isa8_6simm126simm121_13simm12_simple;
    resources::Signal<resources::VariableStorage<codasip::Integer<12, false> > > MI3valIH5_3isa3isa8_6simm126simm121_9simm12_lo;
    resources::Signal<resources::VariableStorage<codasip::Integer<12, false> > > MI3valIH5_3isa3isa8_6simm126simm121_15simm12_pcrel_lo;
    resources::Signal<resources::VariableStorage<codasip::Integer<5, false> > > MI5shiftIH5_3isa3isa11_9shift_imm3imm1_9shift_imm;
    resources::Signal<resources::VariableStorage<codasip::Integer<20, false> > > MI3immIH5_3isa3isa11_9imm20_s123imm1_9imm20_s12;
    resources::Signal<resources::VariableStorage<int32_t > > MI81codasip_return_MI20rel_addr32_call_tailIH5_3isa3isa23_20rel_addr32_call_tail4addr;
    resources::Signal<resources::VariableStorage<int32_t > > MI4addrIH5_3isa3isa23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple;
    resources::Signal<resources::VariableStorage<int32_t > > MI61codasip_return_MI10rel_addr32IH5_3isa3isa13_10rel_addr324addr;
    resources::Signal<resources::VariableStorage<int32_t > > MI4addrIH5_3isa3isa13_10rel_addr324addr1_10rel_addr32;
    resources::Signal<resources::VariableStorage<int32_t > > MI62codasip_return_MI11imm20_relocIH5_3isa3isa14_11imm20_reloc3imm;
    resources::Signal<resources::VariableStorage<codasip::Integer<20, false> > > MI3valIH5_3isa3isa14_11imm20_reloc3imm1_8imm20_hi;
    resources::Signal<resources::VariableStorage<codasip::Integer<20, false> > > MI3valIH5_3isa3isa14_11imm20_reloc3imm1_14imm20_pcrel_hi;
    resources::Signal<resources::VariableStorage<codasip::Integer<20, false> > > MI3valIH5_3isa3isa10_8imm20_hi3imm1_8imm20_hi;
    resources::Signal<resources::VariableStorage<codasip::Integer<20, true> > > MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20;
    resources::Signal<resources::VariableStorage<codasip::Integer<12, true> > > MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12;
    resources::Signal<resources::VariableStorage<codasip::Integer<12, true> > > MI4simmIH5_3isa3isa10_8simm12_s8simm12_s1_13simm12_simple;
    resources::Signal<resources::VariableStorage<codasip::Integer<12, false> > > MI3valIH5_3isa3isa10_8simm12_s8simm12_s1_11simm12_s_lo;
    resources::Signal<resources::VariableStorage<codasip::Integer<12, false> > > MI3valIH5_3isa3isa10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_0IH1_4main;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_1IH1_4main;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_2IH1_4main;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_3IH1_4main;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_4IH1_4main;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_0IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_1IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_2IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst;
    resources::Signal<resources::VariableStorage<uint32_t > > MI5vaddrIH1_11fetch_instr;
    resources::Signal<resources::VariableStorage<uint32_t > > MI5instrIH1_11fetch_instrB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_0IH1_11fetch_instr;
    resources::Signal<resources::VariableStorage<codasip::Integer<5, false> > > MI1iIH1_11rf_gpr_read;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3valIH1_11rf_gpr_readB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_0IH1_11rf_gpr_read;
    resources::Signal<resources::VariableStorage<codasip::Integer<5, false> > > MI1iIH1_12rf_gpr_write;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3valIH1_12rf_gpr_write;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_0IH1_12rf_gpr_write;
    resources::Signal<resources::VariableStorage<uint32_t > > MI5haddrIH1_20fetch_interface_read;
    resources::Signal<resources::VariableStorage<codasip::Integer<3, false> > > MI5hsizeIH1_20fetch_interface_read;
    resources::Signal<resources::VariableStorage<uint32_t > > MI6resultIH1_20fetch_interface_readB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI5hrespIH1_20fetch_interface_readB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<2, false> > > MI5hprotIH1_20fetch_interface_readB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI5haddrIH1_19ldst_interface_read;
    resources::Signal<resources::VariableStorage<uint32_t > > MI5hsizeIH1_19ldst_interface_read;
    resources::Signal<resources::VariableStorage<uint32_t > > MI6resultIH1_19ldst_interface_readB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI5hrespIH1_19ldst_interface_readB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<2, false> > > MI5hprotIH1_19ldst_interface_readB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI5wdataIH1_20ldst_interface_write;
    resources::Signal<resources::VariableStorage<uint32_t > > MI5haddrIH1_20ldst_interface_write;
    resources::Signal<resources::VariableStorage<uint32_t > > MI5hsizeIH1_20ldst_interface_write;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI5hrespIH1_20ldst_interface_writeB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<2, false> > > MI5hprotIH1_20ldst_interface_writeB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3opcIH1_8load_val;
    resources::Signal<resources::VariableStorage<uint32_t > > MI7addressIH1_8load_val;
    resources::Signal<resources::VariableStorage<uint32_t > > MI6resultIH1_8load_valB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3sbcIH1_8load_valB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI17codasip_tmp_var_0IH1_8load_val;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_1IH1_8load_val;
    resources::Signal<resources::VariableStorage<uint32_t > > MI17codasip_tmp_var_2IH1_8load_val;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_3IH1_8load_val;
    resources::Signal<resources::VariableStorage<uint32_t > > MI11error_causeIH1_8load_valB0B10;
    resources::Signal<resources::VariableStorage<uint32_t > > MI17codasip_tmp_var_4IH1_8load_val;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3opcIH1_9write_val;
    resources::Signal<resources::VariableStorage<uint32_t > > MI7addressIH1_9write_val;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3valIH1_9write_val;
    resources::Signal<resources::VariableStorage<uint32_t > > MI11error_causeIH1_9write_valB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3sbcIH1_9write_valB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI17codasip_tmp_var_0IH1_9write_val;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_1IH1_9write_val;
    resources::Signal<resources::VariableStorage<uint32_t > > MI17codasip_tmp_var_2IH1_9write_val;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_3IH1_9write_val;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_4IH1_9write_val;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_5IH1_9write_val;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_6IH1_9write_val;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3opcIH1_7compute;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3op1IH1_7compute;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3op2IH1_7compute;
    resources::Signal<resources::VariableStorage<uint32_t > > MI6resultIH1_7computeB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI17codasip_tmp_var_0IH1_7compute;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_1IH1_7compute;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_2IH1_7compute;
    resources::Signal<resources::VariableStorage<uint64_t > > MI6retvalIH1_4haltB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI10start_addrIH1_4haltB0B1;
    resources::Signal<resources::VariableStorage<uint32_t > > MI8end_addrIH1_4haltB0B1;
    resources::Signal<resources::VariableStorage<uint32_t > > MI7addressIH1_4haltB0B1;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_0IH1_4halt;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3sbcIH1_16check_mem_access;
    resources::Signal<resources::VariableStorage<uint32_t > > MI7addressIH1_16check_mem_access;
    resources::Signal<resources::VariableStorage<uint32_t > > MI10trap_causeIH1_15print_trap_info;
    resources::Signal<resources::VariableStorage<uint32_t > > MI4tvalIH1_15print_trap_info;
    resources::Signal<resources::VariableStorage<codasip::Integer<5, false> > > MI9int_causeIH1_15print_trap_infoB0B0;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_0IH1_15print_trap_info;
    resources::Signal<resources::VariableStorage<codasip::Integer<5, false> > > MI17codasip_tmp_var_1IH1_15print_trap_info;
    resources::Signal<resources::VariableStorage<uint32_t > > MI17codasip_tmp_var_2IH1_15print_trap_info;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3opcIH1_17csr_get_write_val;
    resources::Signal<resources::VariableStorage<uint32_t > > MI7currValIH1_17csr_get_write_val;
    resources::Signal<resources::VariableStorage<uint32_t > > MI8writeValIH1_17csr_get_write_val;
    resources::Signal<resources::VariableStorage<uint32_t > > MI6retvalIH1_17csr_get_write_valB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI17codasip_tmp_var_0IH1_17csr_get_write_val;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI3menIH1_8take_intB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI7pendingIH1_8take_intB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI7enabledIH1_8take_intB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI9int_causeIH1_8take_intB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI9nmi_mtvalIH1_8take_intB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI3nmiIH1_8take_intB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_0IH1_8take_int;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_1IH1_8take_int;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_2IH1_8take_int;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_3IH1_8take_int;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_4IH1_8take_int;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_5IH1_8take_int;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_6IH1_8take_int;
    resources::Signal<resources::VariableStorage<uint32_t > > MI10trap_causeIH1_9take_trap;
    resources::Signal<resources::VariableStorage<uint32_t > > MI7bad_valIH1_9take_trap;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI9decrementIH1_9take_trap;
    resources::Signal<resources::VariableStorage<uint32_t > > MI5causeIH1_9take_trapB0B0;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_0IH1_9take_trap;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_1IH1_9take_trap;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_3IH1_9take_trap;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_4IH1_9take_trap;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_2IH1_9take_trap;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI4mpieIH1_8do_xcallB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<4, false> > > MI10int_enableIH1_7do_xretB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<4, false> > > MI15prev_int_enableIH1_7do_xretB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<5, false> > > MI3srcIH1_18csr_read_write_reg;
    resources::Signal<resources::VariableStorage<codasip::Integer<12, false> > > MI3csrIH1_18csr_read_write_reg;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI3opcIH1_18csr_read_write_reg;
    resources::Signal<resources::VariableStorage<uint32_t > > MI8writeValIH1_18csr_read_write_regB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI7readValIH1_18csr_read_write_regB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI8is_writeIH1_18csr_read_write_regB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_0IH1_18csr_read_write_reg;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3immIH1_18csr_read_write_imm;
    resources::Signal<resources::VariableStorage<codasip::Integer<12, false> > > MI3csrIH1_18csr_read_write_imm;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI3opcIH1_18csr_read_write_imm;
    resources::Signal<resources::VariableStorage<uint32_t > > MI7readValIH1_18csr_read_write_immB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI8is_writeIH1_18csr_read_write_immB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_0IH1_18csr_read_write_imm;
    resources::Signal<resources::VariableStorage<uint32_t > > MI8writeValIH1_14csr_read_write;
    resources::Signal<resources::VariableStorage<codasip::Integer<12, false> > > MI3csrIH1_14csr_read_write;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI3opcIH1_14csr_read_write;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI8is_writeIH1_14csr_read_write;
    resources::Signal<resources::VariableStorage<uint32_t > > MI7readValIH1_14csr_read_writeB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<12, false> > > MI17codasip_tmp_var_0IH1_14csr_read_write;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_1IH1_14csr_read_write;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_2IH1_14csr_read_write;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_3IH1_14csr_read_write;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_4IH1_14csr_read_write;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_5IH1_14csr_read_write;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_6IH1_14csr_read_write;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_7IH1_14csr_read_write;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_8IH1_14csr_read_write;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_9IH1_14csr_read_write;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI18codasip_tmp_var_10IH1_14csr_read_write;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI18codasip_tmp_var_11IH1_14csr_read_write;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI18codasip_tmp_var_12IH1_14csr_read_write;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI18codasip_tmp_var_13IH1_14csr_read_write;
    resources::Signal<resources::VariableStorage<uint32_t > > MI11INSTRUCTIONIH5_3isa3isa1_3isa;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI19INVALID_INSTRUCTIONIH5_3isa3isa1_3isa;
    resources::Signal<resources::VariableStorage<uint32_t > > MI8writeValIH5_3isa3isa1_23i_control_registers_regB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_reg;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_reg;
    resources::Signal<resources::VariableStorage<uint32_t > > MI8writeValIH5_3isa3isa1_23i_control_registers_immB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_imm;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_imm;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3valIH5_3isa3isa1_15i_comp_2reg_immB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3valIH5_3isa3isa1_21i_comp_2reg_imm_shiftB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI8jmp_addrIH5_3isa3isa1_5i_jalB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3tmpIH5_3isa3isa1_5i_jalB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_0IH5_3isa3isa1_5i_jal;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3valIH5_3isa3isa1_6i_jalrB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI8jmp_addrIH5_3isa3isa1_6i_jalrB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3tmpIH5_3isa3isa1_6i_jalrB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_0IH5_3isa3isa1_6i_jalr;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_0IH5_3isa3isa1_21i_control_conditional;
    resources::Signal<resources::VariableStorage<uint32_t > > MI8jmp_addrIH5_3isa3isa1_21i_control_conditionalB0B1;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_1IH5_3isa3isa1_21i_control_conditional;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3valIH5_3isa3isa1_6i_loadB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI4addrIH5_3isa3isa1_6i_loadB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_0IH5_3isa3isa1_6i_load;
    resources::Signal<resources::VariableStorage<uint32_t > > MI4addrIH5_3isa3isa1_7i_storeB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI4dataIH5_3isa3isa1_7i_storeB0;
    resources::Signal<resources::VariableStorage<uint32_t > > MI1iIH5_3isa3isa1_8i_ebreakB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_0IH5_3isa3isa1_6i_xret;
    resources::Signal<resources::VariableStorage<uint32_t > > MI3valIH5_3isa3isa1_8i_lui_hiB0;
    resources::Signal<resources::VariableStorage<uint64_t > > MI3tmpIH5_3isa3isa1_16i_call_rel_aliasB0;
    resources::Signal<resources::VariableStorage<uint64_t > > MI3tmpIH5_3isa3isa1_16i_call_reg_aliasB0;
    resources::Signal<resources::VariableStorage<int32_t > > MI6resultIH5_3isa3isa1_14i_ext_hackatonB0;
    resources::Signal<resources::VariableStorage<int32_t > > MI2s1IH5_3isa3isa1_14i_ext_hackatonB0;
    resources::Signal<resources::VariableStorage<int32_t > > MI2s2IH5_3isa3isa1_14i_ext_hackatonB0;
    resources::Signal<resources::VariableStorage<int32_t > > MI2s3IH5_3isa3isa1_14i_ext_hackatonB0;
    resources::Signal<resources::VariableStorage<int32_t > > MI7result0IH5_3isa3isa1_14i_ext_hackatonB0;
    resources::Signal<resources::VariableStorage<int32_t > > MI7result1IH5_3isa3isa1_14i_ext_hackatonB0;
    resources::Signal<resources::VariableStorage<int32_t > > MI7simd_a0IH5_3isa3isa1_14i_ext_hackatonB0;
    resources::Signal<resources::VariableStorage<int32_t > > MI7simd_a1IH5_3isa3isa1_14i_ext_hackatonB0;
    resources::Signal<resources::VariableStorage<int32_t > > MI7simd_b0IH5_3isa3isa1_14i_ext_hackatonB0;
    resources::Signal<resources::VariableStorage<int32_t > > MI7simd_b1IH5_3isa3isa1_14i_ext_hackatonB0;
    resources::Signal<resources::VariableStorage<int32_t > > MI11accumulatorIH5_3isa3isa1_14i_ext_hackatonB0;
    resources::Signal<resources::VariableStorage<int32_t > > MI4sum0IH5_3isa3isa1_14i_ext_hackatonB0;
    resources::Signal<resources::VariableStorage<int32_t > > MI4sum1IH5_3isa3isa1_14i_ext_hackatonB0;
    resources::Signal<resources::VariableStorage<int64_t > > MI5summaIH5_3isa3isa1_14i_ext_hackatonB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<3, false> > > MI17codasip_tmp_var_0IH5_3isa3isa1_14i_ext_hackaton;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_1IH5_3isa3isa1_14i_ext_hackaton;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_2IH5_3isa3isa1_14i_ext_hackaton;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_4IH5_3isa3isa1_14i_ext_hackaton;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_3IH5_3isa3isa1_14i_ext_hackaton;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_5IH5_3isa3isa1_14i_ext_hackaton;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_6IH5_3isa3isa1_14i_ext_hackaton;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_7IH5_3isa3isa1_14i_ext_hackaton;
private:
    std::string m_Executable;
    std::unordered_map<std::string, codasip_address_t> m_Symbols;
    SysCalls m_SysCalls;
    getopt::SimulatorOptions::SaveRestoreOptions m_SaveRestoreOptions;
public:
    /**
     *  \brief  Sim
     */
    Sim(const std::string& name, const Uid uid, const char* codalParametersString = nullptr, const char* codalParametersHelp = nullptr);
    /**
     *  \brief  ClockCycle
     */
    int ClockCycle();
    /**
     *  \brief  Reset
     */
    int Reset();
    /**
     *  \brief  GetPath
     */
    const char* GetPath() const ;
    /**
     *  \brief  GetName
     */
    const std::string& GetName() const ;
    /**
     *  \brief  GetUid
     */
    Uid GetUid() const ;
    /**
     *  \brief  GetCycleCount
     */
    uint64_t GetCycleCount() const ;
    /**
     *  \brief  DumpProfiler
     */
    bool DumpProfiler(const uint64_t cycleCounter);
    /**
     *  \brief  SetCycleCount
     */
    void SetCycleCount(const uint64_t val);
    /**
     *  \brief  SetLogging
     */
    void SetLogging(const char* options);
    /**
     *  \brief  GetLastError
     */
    const char* GetLastError() const ;
    /**
     *  \brief  Elaborate
     */
    void Elaborate(Log& parentLog);
    /**
     *  \brief  Run
     */
    int Run();
    /**
     *  \brief  GetType
     */
    Type GetType() const ;
    /**
     *  \brief  GetSimulator
     */
    SimulatorPrivateInterface* GetSimulator() const ;
    /**
     *  \brief  GetFeatures
     */
    SimulatorPrivateInterface::Features GetFeatures() const ;
    /**
     *  \brief  SetTimeout
     */
    void SetTimeout(const uint64_t timeout);
    /**
     *  \brief  SetSyscall
     */
    void SetSyscall(const Address address);
    /**
     *  \brief  GetSimExitCode
     */
    int GetSimExitCode() const ;
    /**
     *  \brief  PmuClockCycle
     */
    void PmuClockCycle();
    /**
     *  \brief  AfterInterruptCallback
     */
    void AfterInterruptCallback();
private:
    template<class T> std::string codasip_disassembler(const int&, const T& input, const codasip_address_t address = 0, const std::string& isa = "default", const unsigned char alignment = 0);
public:
    /**
     *  \brief  GetDisassembler
     */
    disassembler::Disassembler& GetDisassembler();
    /**
     *  \brief  SetDisableEbreakInterrupt
     */
    void SetDisableEbreakInterrupt(const bool disableEbreakInterrupt);
    /**
     *  \brief  ResourceRead
     */
    bool ResourceRead(MaxUint& data, const debugger::Tid tid, const debugger::Did dwarf) const ;
    /**
     *  \brief  ResourceWrite
     */
    bool ResourceWrite(const debugger::Tid tid, const debugger::Did dwarf, const MaxUint& data);
    /**
     *  \brief  MemoryRead
     */
    bool MemoryRead(MaxUint& byte, const debugger::Tid tid, const debugger::Did dwarf, const codasip_address_t address) const ;
    /**
     *  \brief  MemoryWrite
     */
    bool MemoryWrite(const debugger::Tid tid, const debugger::Did dwarf, const codasip_address_t address, const MaxUint& byte);
private:
    void codasip_break();
public:
    /**
     *  \brief  SetInitialDebuggerState
     */
    void SetInitialDebuggerState();
private:
    void InitRspJson();
public:
    /**
     *  \brief  GetRspJson
     */
    const std::string& GetRspJson() const ;
    /**
     *  \brief  StartRspServer
     */
    void StartRspServer(const unsigned int rspPort, const unsigned int lldbPort = 0);
    /**
     *  \brief  CommitMemoryWrites
     */
    void CommitMemoryWrites();
    /**
     *  \brief  GetThreadCount
     */
    unsigned GetThreadCount();
    /**
     *  \brief  GetThreadIndex
     */
    unsigned GetThreadIndex();
    /**
     *  \brief  SetThreadIndex
     */
    void SetThreadIndex(unsigned index);
private:
    void codasip_debugger();
public:
    /**
     *  \brief  Kill
     */
    bool Kill();
    /**
     *  \brief  InitBrick
     */
    bool InitBrick(const char* outputFile, const bool useDisassembler, const bool enablePrints);
    /**
     *  \brief  InitProfiler
     */
    void InitProfiler(const char* outputFile, const unsigned int samplingRate, const bool enabledCallStack, const uint32_t* sequenceLengthsArray, const uint32_t sequenceLengthsArrayLength);
    /**
     *  \brief  PrintInstructionTrace
     */
    void PrintInstructionTrace();
    /**
     *  \brief  SetInstructionTraceEnabled
     */
    void SetInstructionTraceEnabled(const bool value);
    /**
     *  \brief  Parser_MI3isaIH5_3isa3isa
     */
    int Parser_MI3isaIH5_3isa3isa(const uint32_t input);
private:
    int Parser_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc_bc__14_13_12_6_5_4_3_2_1_0_bs_32(const uint32_t input);
    int Parser_MI3isaIH5_3isa3isa_bs_32(const uint32_t input);
    int Parser_MI4regsIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(const uint32_t input);
    int Parser_MI4regsIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32(const uint32_t input);
    int Parser_MI4regsIH5_3isa3isa9_7reg_any4rs_1_bc__19_18_17_16_15_bs_32(const uint32_t input);
    int Parser_MI4regsIH5_3isa3isa9_7reg_any4rs_2_bc__24_23_22_21_20_bs_32(const uint32_t input);
    int Parser_MI4regsIH5_3isa3isa9_7reg_any4src1_bc__19_18_17_16_15_bs_32(const uint32_t input);
    int Parser_MI4regsIH5_3isa3isa9_7reg_any4src2_bc__24_23_22_21_20_bs_32(const uint32_t input);
    int Parser_MI6op_csrIH5_3isa3isa8_6op_csr3csr_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(const uint32_t input);
    int Parser_MI6simm12IH5_3isa3isa8_6simm126simm12_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(const uint32_t input);
    int Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(const uint32_t input);
    int Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32(const uint32_t input);
    int Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1_bc__19_18_17_16_15_bs_32(const uint32_t input);
    int Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2_bc__24_23_22_21_20_bs_32(const uint32_t input);
    int Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src1_bc__19_18_17_16_15_bs_32(const uint32_t input);
    int Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src2_bc__24_23_22_21_20_bs_32(const uint32_t input);
    int Parser_MI8regs_csrIH5_3isa3isa8_6op_csr3csr_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(const uint32_t input);
    int Parser_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc_bc__14_13_12_6_5_4_3_2_1_0_bs_32(const uint32_t input);
    void SwitchClean_MI3isaIH5_3isa3isa();
    void Decoder_MI3isaIH5_3isa3isa(const uint32_t MI15codasip_param_0, bool& MI15codasip_param_1);
    void MI4main();
    void MI20resolve_illegal_instIH23_20resolve_illegal_inst20resolve_illegal_inst();
    void MI5reset();
    uint32_t MI11fetch_instr(const uint32_t MI15codasip_param_0);
    uint32_t MI11rf_gpr_read(const codasip::Integer<5, false> MI15codasip_param_0);
    void MI12rf_gpr_write(const codasip::Integer<5, false> MI15codasip_param_0, const uint32_t MI15codasip_param_1);
    uint32_t MI20fetch_interface_read(const uint32_t MI15codasip_param_0, codasip::Integer<3, false> MI15codasip_param_1);
    uint32_t MI19ldst_interface_read(const uint32_t MI15codasip_param_0, uint32_t MI15codasip_param_1);
    void MI20ldst_interface_write(const uint32_t MI15codasip_param_0, const uint32_t MI15codasip_param_1, uint32_t MI15codasip_param_2);
    uint32_t MI8load_val(const uint32_t MI15codasip_param_0, const uint32_t MI15codasip_param_1);
    void MI9write_val(const uint32_t MI15codasip_param_0, const uint32_t MI15codasip_param_1, const uint32_t MI15codasip_param_2);
    uint32_t MI7compute(const uint32_t MI15codasip_param_0, const uint32_t MI15codasip_param_1, const uint32_t MI15codasip_param_2);
    void MI4halt();
    codasip::Integer<1, false> MI16check_mem_access(const uint32_t MI15codasip_param_0, const uint32_t MI15codasip_param_1);
    void MI15print_trap_info(const uint32_t MI15codasip_param_0, const uint32_t MI15codasip_param_1);
    uint32_t MI17csr_get_write_val(const uint32_t MI15codasip_param_0, const uint32_t MI15codasip_param_1, const uint32_t MI15codasip_param_2);
    void MI8take_int();
    void MI9take_trap(const uint32_t MI15codasip_param_0, const uint32_t MI15codasip_param_1, const codasip::Integer<1, false> MI15codasip_param_2);
    void MI8do_xcall();
    void MI7do_xret();
    uint32_t MI18csr_read_write_reg(const codasip::Integer<5, false> MI15codasip_param_0, const codasip::Integer<12, false> MI15codasip_param_1, const codasip::Integer<10, false> MI15codasip_param_2);
    uint32_t MI18csr_read_write_imm(uint32_t MI15codasip_param_0, const codasip::Integer<12, false> MI15codasip_param_1, const codasip::Integer<10, false> MI15codasip_param_2);
    uint32_t MI14csr_read_write(uint32_t MI15codasip_param_0, const codasip::Integer<12, false> MI15codasip_param_1, const codasip::Integer<10, false> MI15codasip_param_2, codasip::Integer<1, false> MI15codasip_param_3);
    void MI3isaIH5_3isa3isa(const uint32_t MI15codasip_param_0, bool MI15codasip_param_1);
    void MI23i_control_registers_regIH5_3isa3isa();
    void MI9opc_csrrwIH5_3isa3isa28_25opc_control_registers_reg3opc();
    void MI9opc_csrrsIH5_3isa3isa28_25opc_control_registers_reg3opc();
    void MI9opc_csrrcIH5_3isa3isa28_25opc_control_registers_reg3opc();
    void MI23i_control_registers_immIH5_3isa3isa();
    void MI10opc_csrrwiIH5_3isa3isa28_25opc_control_registers_imm3opc();
    void MI10opc_csrrsiIH5_3isa3isa28_25opc_control_registers_imm3opc();
    void MI10opc_csrrciIH5_3isa3isa28_25opc_control_registers_imm3opc();
    void MI15i_comp_2reg_immIH5_3isa3isa();
    void MI8opc_addiIH5_3isa3isa20_17opc_comp_2reg_imm3opc();
    void MI8opc_sltiIH5_3isa3isa20_17opc_comp_2reg_imm3opc();
    void MI9opc_sltiuIH5_3isa3isa20_17opc_comp_2reg_imm3opc();
    void MI8opc_andiIH5_3isa3isa20_17opc_comp_2reg_imm3opc();
    void MI7opc_oriIH5_3isa3isa20_17opc_comp_2reg_imm3opc();
    void MI8opc_xoriIH5_3isa3isa20_17opc_comp_2reg_imm3opc();
    void MI21i_comp_2reg_imm_shiftIH5_3isa3isa();
    void MI8opc_slliIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc();
    void MI8opc_srliIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc();
    void MI8opc_sraiIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc();
    void MI5i_luiIH5_3isa3isa();
    void MI7opc_luiIH5_3isa3isa9_7opc_lui3opc();
    void MI7i_auipcIH5_3isa3isa();
    void MI9opc_auipcIH5_3isa3isa11_9opc_auipc3opc();
    void MI11i_comp_3regIH5_3isa3isa();
    void MI7opc_addIH5_3isa3isa16_13opc_comp_3reg3opc();
    void MI7opc_sltIH5_3isa3isa16_13opc_comp_3reg3opc();
    void MI8opc_sltuIH5_3isa3isa16_13opc_comp_3reg3opc();
    void MI7opc_andIH5_3isa3isa16_13opc_comp_3reg3opc();
    void MI6opc_orIH5_3isa3isa16_13opc_comp_3reg3opc();
    void MI7opc_xorIH5_3isa3isa16_13opc_comp_3reg3opc();
    void MI7opc_sllIH5_3isa3isa16_13opc_comp_3reg3opc();
    void MI7opc_srlIH5_3isa3isa16_13opc_comp_3reg3opc();
    void MI7opc_subIH5_3isa3isa16_13opc_comp_3reg3opc();
    void MI7opc_sraIH5_3isa3isa16_13opc_comp_3reg3opc();
    void MI5i_jalIH5_3isa3isa();
    void MI7opc_jalIH5_3isa3isa9_7opc_jal3opc();
    void MI6i_jalrIH5_3isa3isa();
    void MI8opc_jalrIH5_3isa3isa10_8opc_jalr3opc();
    void MI21i_control_conditionalIH5_3isa3isa();
    void MI7opc_beqIH5_3isa3isa26_23opc_control_conditional3opc();
    void MI7opc_bneIH5_3isa3isa26_23opc_control_conditional3opc();
    void MI7opc_bltIH5_3isa3isa26_23opc_control_conditional3opc();
    void MI8opc_bltuIH5_3isa3isa26_23opc_control_conditional3opc();
    void MI7opc_bgeIH5_3isa3isa26_23opc_control_conditional3opc();
    void MI8opc_bgeuIH5_3isa3isa26_23opc_control_conditional3opc();
    void MI6i_loadIH5_3isa3isa();
    void MI9opc_loadwIH5_3isa3isa11_9opc_loads3opc();
    void MI9opc_loadhIH5_3isa3isa11_9opc_loads3opc();
    void MI10opc_loadhuIH5_3isa3isa11_9opc_loads3opc();
    void MI9opc_loadbIH5_3isa3isa11_9opc_loads3opc();
    void MI10opc_loadbuIH5_3isa3isa11_9opc_loads3opc();
    void MI7i_storeIH5_3isa3isa();
    void MI10opc_storewIH5_3isa3isa13_10opc_stores3opc();
    void MI10opc_storehIH5_3isa3isa13_10opc_stores3opc();
    void MI10opc_storebIH5_3isa3isa13_10opc_stores3opc();
    void MI7i_ecallIH5_3isa3isa();
    void MI9opc_ecallIH5_3isa3isa11_9opc_ecall3opc();
    void MI8i_ebreakIH5_3isa3isa();
    void MI10opc_ebreakIH5_3isa3isa13_10opc_ebreak3opc();
    void MI6i_xretIH5_3isa3isa();
    void MI8opc_mretIH5_3isa3isa10_8opc_xret3opc();
    void MI5i_wfiIH5_3isa3isa();
    void MI7opc_wfiIH5_3isa3isa9_7opc_wfi3opc();
    void MI7i_fenceIH5_3isa3isa();
    void MI9opc_fenceIH5_3isa3isa11_9opc_fence3opc();
    void MI14opc_iorw_fenceIH5_3isa3isa18_15opc_fence_param6param1();
    void MI13opc_ior_fenceIH5_3isa3isa18_15opc_fence_param6param1();
    void MI13opc_iow_fenceIH5_3isa3isa18_15opc_fence_param6param1();
    void MI12opc_io_fenceIH5_3isa3isa18_15opc_fence_param6param1();
    void MI13opc_irw_fenceIH5_3isa3isa18_15opc_fence_param6param1();
    void MI12opc_ir_fenceIH5_3isa3isa18_15opc_fence_param6param1();
    void MI12opc_iw_fenceIH5_3isa3isa18_15opc_fence_param6param1();
    void MI11opc_i_fenceIH5_3isa3isa18_15opc_fence_param6param1();
    void MI13opc_orw_fenceIH5_3isa3isa18_15opc_fence_param6param1();
    void MI12opc_or_fenceIH5_3isa3isa18_15opc_fence_param6param1();
    void MI12opc_ow_fenceIH5_3isa3isa18_15opc_fence_param6param1();
    void MI11opc_o_fenceIH5_3isa3isa18_15opc_fence_param6param1();
    void MI12opc_rw_fenceIH5_3isa3isa18_15opc_fence_param6param1();
    void MI11opc_r_fenceIH5_3isa3isa18_15opc_fence_param6param1();
    void MI11opc_w_fenceIH5_3isa3isa18_15opc_fence_param6param1();
    void MI14opc_hint_fenceIH5_3isa3isa18_15opc_fence_param6param1();
    void MI14opc_iorw_fenceIH5_3isa3isa18_15opc_fence_param6param2();
    void MI13opc_ior_fenceIH5_3isa3isa18_15opc_fence_param6param2();
    void MI13opc_iow_fenceIH5_3isa3isa18_15opc_fence_param6param2();
    void MI12opc_io_fenceIH5_3isa3isa18_15opc_fence_param6param2();
    void MI13opc_irw_fenceIH5_3isa3isa18_15opc_fence_param6param2();
    void MI12opc_ir_fenceIH5_3isa3isa18_15opc_fence_param6param2();
    void MI12opc_iw_fenceIH5_3isa3isa18_15opc_fence_param6param2();
    void MI11opc_i_fenceIH5_3isa3isa18_15opc_fence_param6param2();
    void MI13opc_orw_fenceIH5_3isa3isa18_15opc_fence_param6param2();
    void MI12opc_or_fenceIH5_3isa3isa18_15opc_fence_param6param2();
    void MI12opc_ow_fenceIH5_3isa3isa18_15opc_fence_param6param2();
    void MI11opc_o_fenceIH5_3isa3isa18_15opc_fence_param6param2();
    void MI12opc_rw_fenceIH5_3isa3isa18_15opc_fence_param6param2();
    void MI11opc_r_fenceIH5_3isa3isa18_15opc_fence_param6param2();
    void MI11opc_w_fenceIH5_3isa3isa18_15opc_fence_param6param2();
    void MI14opc_hint_fenceIH5_3isa3isa18_15opc_fence_param6param2();
    void MI8i_fenceiIH5_3isa3isa();
    void MI10opc_fenceiIH5_3isa3isa13_10opc_fencei3opc();
    void MI7i_unimpIH5_3isa3isa();
    void MI9opc_unimpIH5_3isa3isa11_9opc_unimp3opc();
    void MI11opc_rdcycleIH5_3isa3isa22_19opc_timers_counters3opc();
    void MI10opc_rdtimeIH5_3isa3isa22_19opc_timers_counters3opc();
    void MI13opc_rdinstretIH5_3isa3isa22_19opc_timers_counters3opc();
    void MI12opc_rdcyclehIH5_3isa3isa22_19opc_timers_counters3opc();
    void MI11opc_rdtimehIH5_3isa3isa22_19opc_timers_counters3opc();
    void MI14opc_rdinstrethIH5_3isa3isa22_19opc_timers_counters3opc();
    void MI8i_lui_hiIH5_3isa3isa();
    void MI11i_neg_aliasIH5_3isa3isa();
    void MI11i_nop_aliasIH5_3isa3isa();
    void MI10i_mv_aliasIH5_3isa3isa();
    void MI12i_seqz_aliasIH5_3isa3isa();
    void MI14i_get_pc_aliasIH5_3isa3isa();
    void MI12i_snez_aliasIH5_3isa3isa();
    void MI16i_jump_reg_aliasIH5_3isa3isa();
    void MI15i_jmp_rel_aliasIH5_3isa3isa();
    void MI16i_call_rel_aliasIH5_3isa3isa();
    void MI16i_call_reg_aliasIH5_3isa3isa();
    void MI14i_ext_hackatonIH5_3isa3isa();
    void MI21opc_hackaton_custom_aIH5_3isa3isa24_21opc_hackaton_custom_i3opc();
    void MI21opc_hackaton_custom_bIH5_3isa3isa24_21opc_hackaton_custom_i3opc();
    void MI21opc_hackaton_custom_cIH5_3isa3isa24_21opc_hackaton_custom_i3opc();
    void MI21opc_hackaton_custom_dIH5_3isa3isa24_21opc_hackaton_custom_i3opc();
    void MI21opc_hackaton_custom_eIH5_3isa3isa24_21opc_hackaton_custom_i3opc();
    void MI4reg1IH5_3isa3isa9_7reg_any3dst();
    void MI10reg1_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI4reg2IH5_3isa3isa9_7reg_any3dst();
    void MI10reg2_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI4reg3IH5_3isa3isa9_7reg_any3dst();
    void MI10reg3_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI4reg4IH5_3isa3isa9_7reg_any3dst();
    void MI10reg4_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI4reg5IH5_3isa3isa9_7reg_any3dst();
    void MI10reg5_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI4reg6IH5_3isa3isa9_7reg_any3dst();
    void MI10reg6_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI4reg7IH5_3isa3isa9_7reg_any3dst();
    void MI10reg7_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI4reg8IH5_3isa3isa9_7reg_any3dst();
    void MI11reg8_alias1IH5_3isa3isa9_7reg_any3dst();
    void MI11reg8_alias2IH5_3isa3isa9_7reg_any3dst();
    void MI4reg9IH5_3isa3isa9_7reg_any3dst();
    void MI10reg9_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg10IH5_3isa3isa9_7reg_any3dst();
    void MI11reg10_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg11IH5_3isa3isa9_7reg_any3dst();
    void MI11reg11_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg12IH5_3isa3isa9_7reg_any3dst();
    void MI11reg12_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg13IH5_3isa3isa9_7reg_any3dst();
    void MI11reg13_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg14IH5_3isa3isa9_7reg_any3dst();
    void MI11reg14_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg15IH5_3isa3isa9_7reg_any3dst();
    void MI11reg15_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg16IH5_3isa3isa9_7reg_any3dst();
    void MI11reg16_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg17IH5_3isa3isa9_7reg_any3dst();
    void MI11reg17_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg18IH5_3isa3isa9_7reg_any3dst();
    void MI11reg18_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg19IH5_3isa3isa9_7reg_any3dst();
    void MI11reg19_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg20IH5_3isa3isa9_7reg_any3dst();
    void MI11reg20_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg21IH5_3isa3isa9_7reg_any3dst();
    void MI11reg21_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg22IH5_3isa3isa9_7reg_any3dst();
    void MI11reg22_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg23IH5_3isa3isa9_7reg_any3dst();
    void MI11reg23_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg24IH5_3isa3isa9_7reg_any3dst();
    void MI11reg24_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg25IH5_3isa3isa9_7reg_any3dst();
    void MI11reg25_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg26IH5_3isa3isa9_7reg_any3dst();
    void MI11reg26_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg27IH5_3isa3isa9_7reg_any3dst();
    void MI11reg27_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg28IH5_3isa3isa9_7reg_any3dst();
    void MI11reg28_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg29IH5_3isa3isa9_7reg_any3dst();
    void MI11reg29_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg30IH5_3isa3isa9_7reg_any3dst();
    void MI11reg30_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI5reg31IH5_3isa3isa9_7reg_any3dst();
    void MI11reg31_aliasIH5_3isa3isa9_7reg_any3dst();
    void MI4reg0IH5_3isa3isa9_7reg_any3dst();
    void MI4reg1IH5_3isa3isa9_7reg_any3src();
    void MI10reg1_aliasIH5_3isa3isa9_7reg_any3src();
    void MI4reg2IH5_3isa3isa9_7reg_any3src();
    void MI10reg2_aliasIH5_3isa3isa9_7reg_any3src();
    void MI4reg3IH5_3isa3isa9_7reg_any3src();
    void MI10reg3_aliasIH5_3isa3isa9_7reg_any3src();
    void MI4reg4IH5_3isa3isa9_7reg_any3src();
    void MI10reg4_aliasIH5_3isa3isa9_7reg_any3src();
    void MI4reg5IH5_3isa3isa9_7reg_any3src();
    void MI10reg5_aliasIH5_3isa3isa9_7reg_any3src();
    void MI4reg6IH5_3isa3isa9_7reg_any3src();
    void MI10reg6_aliasIH5_3isa3isa9_7reg_any3src();
    void MI4reg7IH5_3isa3isa9_7reg_any3src();
    void MI10reg7_aliasIH5_3isa3isa9_7reg_any3src();
    void MI4reg8IH5_3isa3isa9_7reg_any3src();
    void MI11reg8_alias1IH5_3isa3isa9_7reg_any3src();
    void MI11reg8_alias2IH5_3isa3isa9_7reg_any3src();
    void MI4reg9IH5_3isa3isa9_7reg_any3src();
    void MI10reg9_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg10IH5_3isa3isa9_7reg_any3src();
    void MI11reg10_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg11IH5_3isa3isa9_7reg_any3src();
    void MI11reg11_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg12IH5_3isa3isa9_7reg_any3src();
    void MI11reg12_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg13IH5_3isa3isa9_7reg_any3src();
    void MI11reg13_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg14IH5_3isa3isa9_7reg_any3src();
    void MI11reg14_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg15IH5_3isa3isa9_7reg_any3src();
    void MI11reg15_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg16IH5_3isa3isa9_7reg_any3src();
    void MI11reg16_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg17IH5_3isa3isa9_7reg_any3src();
    void MI11reg17_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg18IH5_3isa3isa9_7reg_any3src();
    void MI11reg18_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg19IH5_3isa3isa9_7reg_any3src();
    void MI11reg19_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg20IH5_3isa3isa9_7reg_any3src();
    void MI11reg20_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg21IH5_3isa3isa9_7reg_any3src();
    void MI11reg21_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg22IH5_3isa3isa9_7reg_any3src();
    void MI11reg22_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg23IH5_3isa3isa9_7reg_any3src();
    void MI11reg23_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg24IH5_3isa3isa9_7reg_any3src();
    void MI11reg24_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg25IH5_3isa3isa9_7reg_any3src();
    void MI11reg25_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg26IH5_3isa3isa9_7reg_any3src();
    void MI11reg26_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg27IH5_3isa3isa9_7reg_any3src();
    void MI11reg27_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg28IH5_3isa3isa9_7reg_any3src();
    void MI11reg28_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg29IH5_3isa3isa9_7reg_any3src();
    void MI11reg29_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg30IH5_3isa3isa9_7reg_any3src();
    void MI11reg30_aliasIH5_3isa3isa9_7reg_any3src();
    void MI5reg31IH5_3isa3isa9_7reg_any3src();
    void MI11reg31_aliasIH5_3isa3isa9_7reg_any3src();
    void MI4reg0IH5_3isa3isa9_7reg_any3src();
    void MI11csr_mstatusIH5_3isa3isa8_6op_csr3csr();
    void MI7csr_mieIH5_3isa3isa8_6op_csr3csr();
    void MI9csr_mtvecIH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mcountinhibitIH5_3isa3isa8_6op_csr3csr();
    void MI14csr_mhpmevent3IH5_3isa3isa8_6op_csr3csr();
    void MI14csr_mhpmevent4IH5_3isa3isa8_6op_csr3csr();
    void MI14csr_mhpmevent5IH5_3isa3isa8_6op_csr3csr();
    void MI14csr_mhpmevent6IH5_3isa3isa8_6op_csr3csr();
    void MI14csr_mhpmevent7IH5_3isa3isa8_6op_csr3csr();
    void MI14csr_mhpmevent8IH5_3isa3isa8_6op_csr3csr();
    void MI14csr_mhpmevent9IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent10IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent11IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent12IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent13IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent14IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent15IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent16IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent17IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent18IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent19IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent20IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent21IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent22IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent23IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent24IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent25IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent26IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent27IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent28IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent29IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent30IH5_3isa3isa8_6op_csr3csr();
    void MI15csr_mhpmevent31IH5_3isa3isa8_6op_csr3csr();
    void MI12csr_mscratchIH5_3isa3isa8_6op_csr3csr();
    void MI8csr_mepcIH5_3isa3isa8_6op_csr3csr();
    void MI10csr_mcauseIH5_3isa3isa8_6op_csr3csr();
    void MI9csr_mtvalIH5_3isa3isa8_6op_csr3csr();
    void MI7csr_mipIH5_3isa3isa8_6op_csr3csr();
    void MI7csr_nmiIH5_3isa3isa8_6op_csr3csr();
    void MI13csr_nmi_mtvalIH5_3isa3isa8_6op_csr3csr();
    void MI10csr_mcycleIH5_3isa3isa8_6op_csr3csr();
    void MI12csr_minstretIH5_3isa3isa8_6op_csr3csr();
    void MI16csr_mhpmcounter3IH5_3isa3isa8_6op_csr3csr();
    void MI16csr_mhpmcounter4IH5_3isa3isa8_6op_csr3csr();
    void MI16csr_mhpmcounter5IH5_3isa3isa8_6op_csr3csr();
    void MI16csr_mhpmcounter6IH5_3isa3isa8_6op_csr3csr();
    void MI16csr_mhpmcounter7IH5_3isa3isa8_6op_csr3csr();
    void MI16csr_mhpmcounter8IH5_3isa3isa8_6op_csr3csr();
    void MI16csr_mhpmcounter9IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter10IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter11IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter12IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter13IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter14IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter15IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter16IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter17IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter18IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter19IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter20IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter21IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter22IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter23IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter24IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter25IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter26IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter27IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter28IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter29IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter30IH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter31IH5_3isa3isa8_6op_csr3csr();
    void MI8csr_misaIH5_3isa3isa8_6op_csr3csr();
    void MI13csr_mvendoridIH5_3isa3isa8_6op_csr3csr();
    void MI11csr_marchidIH5_3isa3isa8_6op_csr3csr();
    void MI10csr_mimpidIH5_3isa3isa8_6op_csr3csr();
    void MI11csr_mhartidIH5_3isa3isa8_6op_csr3csr();
    void MI11csr_mcyclehIH5_3isa3isa8_6op_csr3csr();
    void MI13csr_minstrethIH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter3hIH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter4hIH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter5hIH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter6hIH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter7hIH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter8hIH5_3isa3isa8_6op_csr3csr();
    void MI17csr_mhpmcounter9hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter10hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter11hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter12hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter13hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter14hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter15hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter16hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter17hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter18hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter19hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter20hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter21hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter22hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter23hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter24hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter25hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter26hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter27hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter28hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter29hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter30hIH5_3isa3isa8_6op_csr3csr();
    void MI18csr_mhpmcounter31hIH5_3isa3isa8_6op_csr3csr();
    void MI4imm5IH5_3isa3isa6_4imm53imm();
    void MI13simm12_simpleIH5_3isa3isa8_6simm126simm12();
    void MI9simm12_loIH5_3isa3isa8_6simm126simm12();
    void MI15simm12_pcrel_loIH5_3isa3isa8_6simm126simm12();
    void MI9shift_immIH5_3isa3isa11_9shift_imm3imm();
    void MI9imm20_s12IH5_3isa3isa11_9imm20_s123imm();
    void MI4reg1IH5_3isa3isa9_7reg_any4src1();
    void MI10reg1_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI4reg2IH5_3isa3isa9_7reg_any4src1();
    void MI10reg2_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI4reg3IH5_3isa3isa9_7reg_any4src1();
    void MI10reg3_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI4reg4IH5_3isa3isa9_7reg_any4src1();
    void MI10reg4_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI4reg5IH5_3isa3isa9_7reg_any4src1();
    void MI10reg5_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI4reg6IH5_3isa3isa9_7reg_any4src1();
    void MI10reg6_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI4reg7IH5_3isa3isa9_7reg_any4src1();
    void MI10reg7_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI4reg8IH5_3isa3isa9_7reg_any4src1();
    void MI11reg8_alias1IH5_3isa3isa9_7reg_any4src1();
    void MI11reg8_alias2IH5_3isa3isa9_7reg_any4src1();
    void MI4reg9IH5_3isa3isa9_7reg_any4src1();
    void MI10reg9_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg10IH5_3isa3isa9_7reg_any4src1();
    void MI11reg10_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg11IH5_3isa3isa9_7reg_any4src1();
    void MI11reg11_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg12IH5_3isa3isa9_7reg_any4src1();
    void MI11reg12_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg13IH5_3isa3isa9_7reg_any4src1();
    void MI11reg13_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg14IH5_3isa3isa9_7reg_any4src1();
    void MI11reg14_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg15IH5_3isa3isa9_7reg_any4src1();
    void MI11reg15_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg16IH5_3isa3isa9_7reg_any4src1();
    void MI11reg16_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg17IH5_3isa3isa9_7reg_any4src1();
    void MI11reg17_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg18IH5_3isa3isa9_7reg_any4src1();
    void MI11reg18_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg19IH5_3isa3isa9_7reg_any4src1();
    void MI11reg19_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg20IH5_3isa3isa9_7reg_any4src1();
    void MI11reg20_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg21IH5_3isa3isa9_7reg_any4src1();
    void MI11reg21_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg22IH5_3isa3isa9_7reg_any4src1();
    void MI11reg22_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg23IH5_3isa3isa9_7reg_any4src1();
    void MI11reg23_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg24IH5_3isa3isa9_7reg_any4src1();
    void MI11reg24_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg25IH5_3isa3isa9_7reg_any4src1();
    void MI11reg25_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg26IH5_3isa3isa9_7reg_any4src1();
    void MI11reg26_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg27IH5_3isa3isa9_7reg_any4src1();
    void MI11reg27_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg28IH5_3isa3isa9_7reg_any4src1();
    void MI11reg28_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg29IH5_3isa3isa9_7reg_any4src1();
    void MI11reg29_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg30IH5_3isa3isa9_7reg_any4src1();
    void MI11reg30_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI5reg31IH5_3isa3isa9_7reg_any4src1();
    void MI11reg31_aliasIH5_3isa3isa9_7reg_any4src1();
    void MI4reg0IH5_3isa3isa9_7reg_any4src1();
    void MI4reg1IH5_3isa3isa9_7reg_any4src2();
    void MI10reg1_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI4reg2IH5_3isa3isa9_7reg_any4src2();
    void MI10reg2_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI4reg3IH5_3isa3isa9_7reg_any4src2();
    void MI10reg3_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI4reg4IH5_3isa3isa9_7reg_any4src2();
    void MI10reg4_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI4reg5IH5_3isa3isa9_7reg_any4src2();
    void MI10reg5_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI4reg6IH5_3isa3isa9_7reg_any4src2();
    void MI10reg6_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI4reg7IH5_3isa3isa9_7reg_any4src2();
    void MI10reg7_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI4reg8IH5_3isa3isa9_7reg_any4src2();
    void MI11reg8_alias1IH5_3isa3isa9_7reg_any4src2();
    void MI11reg8_alias2IH5_3isa3isa9_7reg_any4src2();
    void MI4reg9IH5_3isa3isa9_7reg_any4src2();
    void MI10reg9_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg10IH5_3isa3isa9_7reg_any4src2();
    void MI11reg10_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg11IH5_3isa3isa9_7reg_any4src2();
    void MI11reg11_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg12IH5_3isa3isa9_7reg_any4src2();
    void MI11reg12_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg13IH5_3isa3isa9_7reg_any4src2();
    void MI11reg13_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg14IH5_3isa3isa9_7reg_any4src2();
    void MI11reg14_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg15IH5_3isa3isa9_7reg_any4src2();
    void MI11reg15_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg16IH5_3isa3isa9_7reg_any4src2();
    void MI11reg16_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg17IH5_3isa3isa9_7reg_any4src2();
    void MI11reg17_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg18IH5_3isa3isa9_7reg_any4src2();
    void MI11reg18_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg19IH5_3isa3isa9_7reg_any4src2();
    void MI11reg19_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg20IH5_3isa3isa9_7reg_any4src2();
    void MI11reg20_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg21IH5_3isa3isa9_7reg_any4src2();
    void MI11reg21_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg22IH5_3isa3isa9_7reg_any4src2();
    void MI11reg22_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg23IH5_3isa3isa9_7reg_any4src2();
    void MI11reg23_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg24IH5_3isa3isa9_7reg_any4src2();
    void MI11reg24_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg25IH5_3isa3isa9_7reg_any4src2();
    void MI11reg25_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg26IH5_3isa3isa9_7reg_any4src2();
    void MI11reg26_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg27IH5_3isa3isa9_7reg_any4src2();
    void MI11reg27_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg28IH5_3isa3isa9_7reg_any4src2();
    void MI11reg28_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg29IH5_3isa3isa9_7reg_any4src2();
    void MI11reg29_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg30IH5_3isa3isa9_7reg_any4src2();
    void MI11reg30_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI5reg31IH5_3isa3isa9_7reg_any4src2();
    void MI11reg31_aliasIH5_3isa3isa9_7reg_any4src2();
    void MI4reg0IH5_3isa3isa9_7reg_any4src2();
    void MI27rel_addr32_call_tail_simpleIH5_3isa3isa23_20rel_addr32_call_tail4addr();
    void MI10rel_addr32IH5_3isa3isa13_10rel_addr324addr();
    void MI8imm20_hiIH5_3isa3isa14_11imm20_reloc3imm();
    void MI14imm20_pcrel_hiIH5_3isa3isa14_11imm20_reloc3imm();
    void MI8imm20_hiIH5_3isa3isa10_8imm20_hi3imm();
    void MI10rel_addr20IH5_3isa3isa13_10rel_addr204addr();
    void MI10rel_addr12IH5_3isa3isa13_10rel_addr124addr();
    void MI13simm12_simpleIH5_3isa3isa10_8simm12_s8simm12_s();
    void MI11simm12_s_loIH5_3isa3isa10_8simm12_s8simm12_s();
    void MI17simm12_s_pcrel_loIH5_3isa3isa10_8simm12_s8simm12_s();
    void MI4reg1IH5_3isa3isa9_7reg_any4rs_1();
    void MI10reg1_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI4reg2IH5_3isa3isa9_7reg_any4rs_1();
    void MI10reg2_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI4reg3IH5_3isa3isa9_7reg_any4rs_1();
    void MI10reg3_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI4reg4IH5_3isa3isa9_7reg_any4rs_1();
    void MI10reg4_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI4reg5IH5_3isa3isa9_7reg_any4rs_1();
    void MI10reg5_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI4reg6IH5_3isa3isa9_7reg_any4rs_1();
    void MI10reg6_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI4reg7IH5_3isa3isa9_7reg_any4rs_1();
    void MI10reg7_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI4reg8IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg8_alias1IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg8_alias2IH5_3isa3isa9_7reg_any4rs_1();
    void MI4reg9IH5_3isa3isa9_7reg_any4rs_1();
    void MI10reg9_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg10IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg10_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg11IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg11_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg12IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg12_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg13IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg13_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg14IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg14_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg15IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg15_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg16IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg16_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg17IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg17_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg18IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg18_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg19IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg19_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg20IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg20_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg21IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg21_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg22IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg22_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg23IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg23_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg24IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg24_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg25IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg25_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg26IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg26_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg27IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg27_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg28IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg28_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg29IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg29_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg30IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg30_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI5reg31IH5_3isa3isa9_7reg_any4rs_1();
    void MI11reg31_aliasIH5_3isa3isa9_7reg_any4rs_1();
    void MI4reg0IH5_3isa3isa9_7reg_any4rs_1();
    void MI4reg1IH5_3isa3isa9_7reg_any4rs_2();
    void MI10reg1_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI4reg2IH5_3isa3isa9_7reg_any4rs_2();
    void MI10reg2_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI4reg3IH5_3isa3isa9_7reg_any4rs_2();
    void MI10reg3_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI4reg4IH5_3isa3isa9_7reg_any4rs_2();
    void MI10reg4_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI4reg5IH5_3isa3isa9_7reg_any4rs_2();
    void MI10reg5_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI4reg6IH5_3isa3isa9_7reg_any4rs_2();
    void MI10reg6_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI4reg7IH5_3isa3isa9_7reg_any4rs_2();
    void MI10reg7_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI4reg8IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg8_alias1IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg8_alias2IH5_3isa3isa9_7reg_any4rs_2();
    void MI4reg9IH5_3isa3isa9_7reg_any4rs_2();
    void MI10reg9_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg10IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg10_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg11IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg11_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg12IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg12_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg13IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg13_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg14IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg14_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg15IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg15_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg16IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg16_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg17IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg17_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg18IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg18_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg19IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg19_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg20IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg20_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg21IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg21_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg22IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg22_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg23IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg23_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg24IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg24_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg25IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg25_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg26IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg26_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg27IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg27_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg28IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg28_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg29IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg29_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg30IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg30_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI5reg31IH5_3isa3isa9_7reg_any4rs_2();
    void MI11reg31_aliasIH5_3isa3isa9_7reg_any4rs_2();
    void MI4reg0IH5_3isa3isa9_7reg_any4rs_2();
    void SetMemoryLatencies(const std::map<std::pair<std::string, bool>, std::vector<size_t>>& latencies);
public:
    /**
     *  \brief  ResourceRead
     */
    MaxInt ResourceRead(const Uid resource, const simulator::Address addr);
    /**
     *  \brief  ResourceRead
     */
    MaxInt ResourceRead(const Uid resource, const simulator::Address addr, const unsigned sbc);
    /**
     *  \brief  ResourceWrite
     */
    void ResourceWrite(const Uid resource, const MaxInt& data, const simulator::Address addr);
    /**
     *  \brief  ResourceWrite
     */
    void ResourceWrite(const Uid resource, const MaxInt& data, const simulator::Address addr, const unsigned sbc);
    /**
     *  \brief  ResourceStats
     */
    uint64_t ResourceStats(const Uid resource, const profiler::AccessType type, const Address addr) const ;
    /**
     *  \brief  Dump
     */
    bool Dump(DumpStream& stream,const std::vector<Uid>& resources,const bool continuous = false);
    /**
     *  \brief  LoadProgram
     */
    void LoadProgram(const Uid addressSpace,const codasip::MaxInt& data,const Address addr,const unsigned int sbc,const bool isText,const int bw);
    /**
     *  \brief  InvalidateCaches
     */
    void InvalidateCaches(const bool flush);
    /**
     *  \brief  Restore
     */
    bool Restore(std::istream& stream,const bool continuous = false,const std::string& format = std::string());
    /**
     *  \brief  GetDumpableResourceUids
     */
    std::vector<Uid> GetDumpableResourceUids(const std::string& globalSignature) const ;
private:
    void MemoriesClockCycle();
    void MI6as_all_load(const MaxInt& data, const codasip_address_t addr, const resources::Index sbc, const int xexe_bw);
    MaxInt MI6as_all_dread(const codasip_address_t addr,const resources::Index sbc = 4);
    void MI6as_all_dwrite(const MaxInt& data, const codasip_address_t addr,const resources::Index sbc = 4);
    MaxInt MI6as_all_program_dread(const codasip_address_t addr,const resources::Index sbc = 4);
    void MI6as_all_program_dwrite(const MaxInt& data, const codasip_address_t addr,const resources::Index sbc = 4);
    MaxInt MI6as_all_data_dread(const codasip_address_t addr,const resources::Index sbc = 4);
    void MI6as_all_data_dwrite(const MaxInt& data, const codasip_address_t addr,const resources::Index sbc = 4);
    void InterfacesClockCycle();
    void PortsClockCycle();
    void SignalsClockCycle();
public:
    /**
     *  \brief  ResourceRead
     */
    bool ResourceRead(Data* output, const unsigned outputLen, const char* resource, const Address addr = 0);
    /**
     *  \brief  ResourceWrite
     */
    bool ResourceWrite(const Data* data, const unsigned dataLen, const char* resource, const Address addr = 0);
private:
    bool GetAsipInfo(std::vector<Uid>* pcsUID, Uid* programAsUID, Uid* dataAsUID) const ;
public:
    /**
     *  \brief  SetExecutable
     */
    void SetExecutable(const std::string& executable);
    /**
     *  \brief  LoadExecutable
     */
    bool LoadExecutable(const char* executable, const char* arguments);
    /**
     *  \brief  LoadSymbol
     */
    void LoadSymbol(const Address address, const std::string& name);
private:
    codasip_address_t codasip_symbol_address(const std::string& name) const ;
    int codasip_syscall(const codasip_address_t addr);
    void CachesClockCycle();
    void TcmsClockCycle();
    void ArbitersClockCycle();
public:
    /**
     *  \brief  RegistersClockCycle
     */
    void RegistersClockCycle();
private:
    uint64_t codasip_get_clock_cycle() const ;
    void codasip_inc_clock_cycle(uint64_t val);
    void codasip_halt();
public:
    /**
     *  \brief  SetSimExitCodeFilePath
     */
    void SetSimExitCodeFilePath(const char* path);
    /**
     *  \brief  StackOverflowCheck
     */
    void StackOverflowCheck(const bool enable, const Address main, const Address low, const Address high);
    /**
     *  \brief  GetCodalParamsHelp
     */
    static const char* GetCodalParamsHelp();
    /**
     *  \brief  GetCurrentThreadIndex
     */
    unsigned GetCurrentThreadIndex();
    /**
     *  \brief  GetCurrentThreadInstructionAddress
     */
    uint64_t GetCurrentThreadInstructionAddress();
    /**
     *  \brief  RvSignatureDump
     */
    void RvSignatureDump(std::ostream& output, unsigned int granularity);
    /**
     *  \brief  SaveState
     */
    void SaveState();
    /**
     *  \brief  RestoreState
     */
    void RestoreState();
    /**
     *  \brief  GetSaveRestoreOptions
     */
    const getopt::SimulatorOptions::SaveRestoreOptions& GetSaveRestoreOptions() const ;
    /**
     *  \brief  SetSaveRestoreOptions
     */
    void SetSaveRestoreOptions(const getopt::SimulatorOptions::SaveRestoreOptions& options);
    /**
     *  \brief  SaveState
     */
    void SaveState(const char* path);
    /**
     *  \brief  RestoreState
     */
    void RestoreState(const char* path);
private:
    bool IsAddressHit();
public:
    /**
     *  \brief  SetResetCallback
     */
    virtual void SetResetCallback(std::function<void()> callback);
};
inline int Sim::ClockCycle()
{
    int rc = SIM_OK;
    CachesClockCycle();
    TcmsClockCycle();
    ArbitersClockCycle();
    MemoriesClockCycle();
    if (m_Halt != SIM_OK) return m_Halt;
    bool haltableErrorFlag = false;
    try
    {
        try
        {
            m_PreviousInstructionAddress = GetCurrentThreadInstructionAddress();
            if (GetDoInitialSuspend())
            {
                InitialSuspend();
                GetDoInitialSuspend() = false;
            }
            else
            {
                codasip_debugger();
            }
            PortsClockCycle();
            MI4main();
            PmuClockCycle();
            RegistersClockCycle();
            PrintInstructionTrace();
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
    if (m_SimCycleCounter >= m_SimCycleTimeout)
    {
        m_Halt = SIM_HALT;
    }
    if (GetSaveRestoreOptions().doSaveAtClockCycle && (m_SimCycleCounter > GetSaveRestoreOptions().saveStateClockCycle))
    {
        SaveState();
        m_Halt = SIM_HALT;
    }
    if (GetSaveRestoreOptions().doSaveAtAddress && IsAddressHit())
    {
        SaveState();
        m_Halt = SIM_HALT;
    }
    if (haltableErrorFlag)
    {
        Interrupt(m_Tid);
        codasip_debugger();
    }
    switch(m_Tid) {
        default:
        case 1:
        UpdateStateChangeAndNotify((SimulatorReturnCode)m_Halt, MI4r_PC.dread());
        break;
    }
    return m_Halt;
}
inline uint64_t Sim::GetCycleCount() const 
{
    return m_SimCycleCounter;
}
inline bool Sim::DumpProfiler(const uint64_t cycleCounter)
{
    return false;
}
inline void Sim::PmuClockCycle()
{
    const auto wakeUpFlag = MI6p_msip.read()||MI6p_mtip.read()||MI6p_meip.read()||MI5p_nmi.read();
    if (wakeUpFlag)
    {
        MI8r_wfi_ce.write(true);
    }

    if (IsStepMode() || m_WasInterruptedByDebugger)
    {
        MI8r_wfi_ce.write(true);
    }
    m_WasInterruptedByDebugger = false;
}
/**
 *  \brief  codasip_disassembler
 */
template<class T> std::string Sim::codasip_disassembler(const int&, const T& input, const codasip_address_t address, const std::string& isa, const unsigned char alignment)
{
    disassembler::Instructions output;
    const size_t inputSize = resources::BitWidthTypeSelector<T>::value;
    m_Disassembler->Disassemble(output, input, inputSize, address, 8);
    if (output.size())
    {
        std::string text = output.at(0).GetText();
        if (alignment) text.resize(alignment, ' ');
        return text;
    }
    std::stringstream ss;
    ss << "disassembler: failed for the input: " << std::hex << "0x" << input << std::dec << ".";
    return ss.str();
}
/**
 *  \brief  codasip_break
 */
inline void Sim::codasip_break()
{
    Interrupt(m_Tid);
}
inline void Sim::SetInitialDebuggerState()
{

}
inline void Sim::CommitMemoryWrites()
{
    InvalidateCaches(true);
}
inline unsigned Sim::GetThreadCount()
{
    return 1;
}
inline unsigned Sim::GetThreadIndex()
{
    return 0;
}
inline void Sim::SetThreadIndex(unsigned index)
{
    /* no-op */
}
/**
 *  \brief  codasip_debugger
 */
inline void Sim::codasip_debugger()
{
    unsigned tid = m_Tid;
    switch (tid) {
        default:
        case 1:
            UpdateStateChangeAndInterruptClockCycle(tid, MI4r_PC.dread(), debugger::DEBUG_LEVEL_C);
            break;
    }
    UpdateStateChangeAndInterrupt({1,},
     {MI4r_PC.dread(),}, debugger::DEBUG_LEVEL_C);
}
inline bool Sim::Kill()
{
    m_Halt = SIM_KILLED;
    return true;
}
inline int Sim::Parser_MI3isaIH5_3isa3isa(const uint32_t input)
{
        if (Parser_MI3isaIH5_3isa3isa_bs_32(input) == INSTPARSER_OK) return INSTPARSER_OK;
        return INSTPARSER_INVALIDCODE;
}
/**
 *  \brief  Parser_MI3isaIH5_3isa3isa_bs_32
 */
inline int Sim::Parser_MI3isaIH5_3isa3isa_bs_32(const uint32_t input)
{
        if (((input & 0xffffffff) == 0x100f /*00000000000000000001000000001111*/ ) || 
                ((input & 0xfffff) == 0xf /*XXXXXXXXXXXX00000000000000001111*/ )) {
            
            if (((input & 0xffffffff) == 0x100f /*00000000000000000001000000001111*/ )) {
                
                MI10opc_fenceiIH5_3isa3isa13_10opc_fencei3opc();
                MI8i_fenceiIH5_3isa3isa();
                goto END_OF_MI11i_mem_modelIH5_3isa3isa;
            }
            if (((input & 0xfffff) == 0xf /*XXXXXXXXXXXX00000000000000001111*/ )) {
                
                switch (((input & 0xf000000) )) {
                case ( 0x0 /*XXXX0000*/ ):
                {
                    
                    MI14opc_hint_fenceIH5_3isa3isa18_15opc_fence_param6param2();
                    break;
                }
                case ( 0x1000000 /*XXXX0001*/ ):
                {
                    
                    MI11opc_w_fenceIH5_3isa3isa18_15opc_fence_param6param2();
                    break;
                }
                case ( 0x2000000 /*XXXX0010*/ ):
                {
                    
                    MI11opc_r_fenceIH5_3isa3isa18_15opc_fence_param6param2();
                    break;
                }
                case ( 0x3000000 /*XXXX0011*/ ):
                {
                    
                    MI12opc_rw_fenceIH5_3isa3isa18_15opc_fence_param6param2();
                    break;
                }
                case ( 0x4000000 /*XXXX0100*/ ):
                {
                    
                    MI11opc_o_fenceIH5_3isa3isa18_15opc_fence_param6param2();
                    break;
                }
                case ( 0x5000000 /*XXXX0101*/ ):
                {
                    
                    MI12opc_ow_fenceIH5_3isa3isa18_15opc_fence_param6param2();
                    break;
                }
                case ( 0x6000000 /*XXXX0110*/ ):
                {
                    
                    MI12opc_or_fenceIH5_3isa3isa18_15opc_fence_param6param2();
                    break;
                }
                case ( 0x7000000 /*XXXX0111*/ ):
                {
                    
                    MI13opc_orw_fenceIH5_3isa3isa18_15opc_fence_param6param2();
                    break;
                }
                case ( 0x8000000 /*XXXX1000*/ ):
                {
                    
                    MI11opc_i_fenceIH5_3isa3isa18_15opc_fence_param6param2();
                    break;
                }
                case ( 0x9000000 /*XXXX1001*/ ):
                {
                    
                    MI12opc_iw_fenceIH5_3isa3isa18_15opc_fence_param6param2();
                    break;
                }
                case ( 0xa000000 /*XXXX1010*/ ):
                {
                    
                    MI12opc_ir_fenceIH5_3isa3isa18_15opc_fence_param6param2();
                    break;
                }
                case ( 0xb000000 /*XXXX1011*/ ):
                {
                    
                    MI13opc_irw_fenceIH5_3isa3isa18_15opc_fence_param6param2();
                    break;
                }
                case ( 0xc000000 /*XXXX1100*/ ):
                {
                    
                    MI12opc_io_fenceIH5_3isa3isa18_15opc_fence_param6param2();
                    break;
                }
                case ( 0xd000000 /*XXXX1101*/ ):
                {
                    
                    MI13opc_iow_fenceIH5_3isa3isa18_15opc_fence_param6param2();
                    break;
                }
                case ( 0xe000000 /*XXXX1110*/ ):
                {
                    
                    MI13opc_ior_fenceIH5_3isa3isa18_15opc_fence_param6param2();
                    break;
                }
                case ( 0xf000000 /*XXXX1111*/ ):
                {
                    
                    MI14opc_iorw_fenceIH5_3isa3isa18_15opc_fence_param6param2();
                    break;
                }
                default: 
                    return INSTPARSER_INVALIDCODE;
                }
                switch (((input & 0xf00000) )) {
                case ( 0x0 /*XXXXXXXX0000*/ ):
                {
                    
                    MI14opc_hint_fenceIH5_3isa3isa18_15opc_fence_param6param1();
                    break;
                }
                case ( 0x100000 /*XXXXXXXX0001*/ ):
                {
                    
                    MI11opc_w_fenceIH5_3isa3isa18_15opc_fence_param6param1();
                    break;
                }
                case ( 0x200000 /*XXXXXXXX0010*/ ):
                {
                    
                    MI11opc_r_fenceIH5_3isa3isa18_15opc_fence_param6param1();
                    break;
                }
                case ( 0x300000 /*XXXXXXXX0011*/ ):
                {
                    
                    MI12opc_rw_fenceIH5_3isa3isa18_15opc_fence_param6param1();
                    break;
                }
                case ( 0x400000 /*XXXXXXXX0100*/ ):
                {
                    
                    MI11opc_o_fenceIH5_3isa3isa18_15opc_fence_param6param1();
                    break;
                }
                case ( 0x500000 /*XXXXXXXX0101*/ ):
                {
                    
                    MI12opc_ow_fenceIH5_3isa3isa18_15opc_fence_param6param1();
                    break;
                }
                case ( 0x600000 /*XXXXXXXX0110*/ ):
                {
                    
                    MI12opc_or_fenceIH5_3isa3isa18_15opc_fence_param6param1();
                    break;
                }
                case ( 0x700000 /*XXXXXXXX0111*/ ):
                {
                    
                    MI13opc_orw_fenceIH5_3isa3isa18_15opc_fence_param6param1();
                    break;
                }
                case ( 0x800000 /*XXXXXXXX1000*/ ):
                {
                    
                    MI11opc_i_fenceIH5_3isa3isa18_15opc_fence_param6param1();
                    break;
                }
                case ( 0x900000 /*XXXXXXXX1001*/ ):
                {
                    
                    MI12opc_iw_fenceIH5_3isa3isa18_15opc_fence_param6param1();
                    break;
                }
                case ( 0xa00000 /*XXXXXXXX1010*/ ):
                {
                    
                    MI12opc_ir_fenceIH5_3isa3isa18_15opc_fence_param6param1();
                    break;
                }
                case ( 0xb00000 /*XXXXXXXX1011*/ ):
                {
                    
                    MI13opc_irw_fenceIH5_3isa3isa18_15opc_fence_param6param1();
                    break;
                }
                case ( 0xc00000 /*XXXXXXXX1100*/ ):
                {
                    
                    MI12opc_io_fenceIH5_3isa3isa18_15opc_fence_param6param1();
                    break;
                }
                case ( 0xd00000 /*XXXXXXXX1101*/ ):
                {
                    
                    MI13opc_iow_fenceIH5_3isa3isa18_15opc_fence_param6param1();
                    break;
                }
                case ( 0xe00000 /*XXXXXXXX1110*/ ):
                {
                    
                    MI13opc_ior_fenceIH5_3isa3isa18_15opc_fence_param6param1();
                    break;
                }
                case ( 0xf00000 /*XXXXXXXX1111*/ ):
                {
                    
                    MI14opc_iorw_fenceIH5_3isa3isa18_15opc_fence_param6param1();
                    break;
                }
                default: 
                    return INSTPARSER_INVALIDCODE;
                }
                MI9opc_fenceIH5_3isa3isa11_9opc_fence3opc();
                MI7i_fenceIH5_3isa3isa();
                goto END_OF_MI11i_mem_modelIH5_3isa3isa;
            }
            return INSTPARSER_INVALIDCODE;
            // Collecting label
            END_OF_MI11i_mem_modelIH5_3isa3isa:
            goto END_OF_MI3isaIH5_3isa3isa;
        }
        if (((input & 0xffefffff) == 0x73 /*00000000000X00000000000001110011*/ ) || 
                ((input & 0xffffffff) == 0x10500073 /*00010000010100000000000001110011*/ ) || 
                ((input & 0xffffffff) == 0x30200073 /*00110000001000000000000001110011*/ )) {
            
            switch (((input & 0xffffffff) )) {
            case ( 0x73 /*00000000000000000000000001110011*/ ):
            {
                
                MI9opc_ecallIH5_3isa3isa11_9opc_ecall3opc();
                MI7i_ecallIH5_3isa3isa();
                break;
            }
            case ( 0x100073 /*00000000000100000000000001110011*/ ):
            {
                
                MI10opc_ebreakIH5_3isa3isa13_10opc_ebreak3opc();
                MI8i_ebreakIH5_3isa3isa();
                break;
            }
            case ( 0x10500073 /*00010000010100000000000001110011*/ ):
            {
                
                MI7opc_wfiIH5_3isa3isa9_7opc_wfi3opc();
                MI5i_wfiIH5_3isa3isa();
                break;
            }
            case ( 0x30200073 /*00110000001000000000000001110011*/ ):
            {
                
                MI8opc_mretIH5_3isa3isa10_8opc_xret3opc();
                MI6i_xretIH5_3isa3isa();
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            goto END_OF_MI3isaIH5_3isa3isa;
        }
        if (((input & 0xfe00307f) == 0x1013 /*0000000XXXXXXXXXXX01XXXXX0010011*/ ) || 
                ((input & 0xfe00007f) == 0x33 /*0000000XXXXXXXXXXXXXXXXXX0110011*/ ) || 
                ((input & 0xfe00707f) == 0x40000033 /*0100000XXXXXXXXXX000XXXXX0110011*/ ) || 
                ((input & 0xfe00705f) == 0x40005013 /*0100000XXXXXXXXXX101XXXXX0X10011*/ ) || 
                ((input & 0x307f) == 0x3013 /*XXXXXXXXXXXXXXXXXX11XXXXX0010011*/ ) || 
                ((input & 0x107f) == 0x13 /*XXXXXXXXXXXXXXXXXXX0XXXXX0010011*/ ) || 
                ((input & 0x5f) == 0x17 /*XXXXXXXXXXXXXXXXXXXXXXXXX0X10111*/ )) {
            
            if (((input & 0xfe00307f) == 0x1013 /*0000000XXXXXXXXXXX01XXXXX0010011*/ ) || 
                    ((input & 0xfe00707f) == 0x40005013 /*0100000XXXXXXXXXX101XXXXX0010011*/ )) {
                
                switch (((input & 0xfe00707f) )) {
                case ( 0x1013 /*0000000XXXXXXXXXX001XXXXX0010011*/ ):
                {
                    
                    MI8opc_slliIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc();
                    break;
                }
                case ( 0x5013 /*0000000XXXXXXXXXX101XXXXX0010011*/ ):
                {
                    
                    MI8opc_srliIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc();
                    break;
                }
                case ( 0x40005013 /*0100000XXXXXXXXXX101XXXXX0010011*/ ):
                {
                    
                    MI8opc_sraiIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc();
                    break;
                }
                default: 
                    return INSTPARSER_INVALIDCODE;
                }
                MI5shiftIH5_3isa3isa11_9shift_imm3imm1_9shift_imm.dwrite((((input & 0x1f00000) >> 20) << 0));
                MI9shift_immIH5_3isa3isa11_9shift_imm3imm();
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                MI21i_comp_2reg_imm_shiftIH5_3isa3isa();
                goto END_OF_MI6i_compIH5_3isa3isa;
            }
            if (((input & 0xfe00007f) == 0x33 /*0000000XXXXXXXXXXXXXXXXXX0110011*/ ) || 
                    ((input & 0xfe00707f) == 0x40000033 /*0100000XXXXXXXXXX000XXXXX0110011*/ ) || 
                    ((input & 0xfe00707f) == 0x40005033 /*0100000XXXXXXXXXX101XXXXX0110011*/ )) {
                
                switch (((input & 0xfe00707f) )) {
                case ( 0x33 /*0000000XXXXXXXXXX000XXXXX0110011*/ ):
                {
                    
                    MI7opc_addIH5_3isa3isa16_13opc_comp_3reg3opc();
                    break;
                }
                case ( 0x1033 /*0000000XXXXXXXXXX001XXXXX0110011*/ ):
                {
                    
                    MI7opc_sllIH5_3isa3isa16_13opc_comp_3reg3opc();
                    break;
                }
                case ( 0x2033 /*0000000XXXXXXXXXX010XXXXX0110011*/ ):
                {
                    
                    MI7opc_sltIH5_3isa3isa16_13opc_comp_3reg3opc();
                    break;
                }
                case ( 0x3033 /*0000000XXXXXXXXXX011XXXXX0110011*/ ):
                {
                    
                    MI8opc_sltuIH5_3isa3isa16_13opc_comp_3reg3opc();
                    break;
                }
                case ( 0x4033 /*0000000XXXXXXXXXX100XXXXX0110011*/ ):
                {
                    
                    MI7opc_xorIH5_3isa3isa16_13opc_comp_3reg3opc();
                    break;
                }
                case ( 0x5033 /*0000000XXXXXXXXXX101XXXXX0110011*/ ):
                {
                    
                    MI7opc_srlIH5_3isa3isa16_13opc_comp_3reg3opc();
                    break;
                }
                case ( 0x6033 /*0000000XXXXXXXXXX110XXXXX0110011*/ ):
                {
                    
                    MI6opc_orIH5_3isa3isa16_13opc_comp_3reg3opc();
                    break;
                }
                case ( 0x7033 /*0000000XXXXXXXXXX111XXXXX0110011*/ ):
                {
                    
                    MI7opc_andIH5_3isa3isa16_13opc_comp_3reg3opc();
                    break;
                }
                case ( 0x40000033 /*0100000XXXXXXXXXX000XXXXX0110011*/ ):
                {
                    
                    MI7opc_subIH5_3isa3isa16_13opc_comp_3reg3opc();
                    break;
                }
                case ( 0x40005033 /*0100000XXXXXXXXXX101XXXXX0110011*/ ):
                {
                    
                    MI7opc_sraIH5_3isa3isa16_13opc_comp_3reg3opc();
                    break;
                }
                default: 
                    return INSTPARSER_INVALIDCODE;
                }
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src2_bc__24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src1_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                MI11i_comp_3regIH5_3isa3isa();
                goto END_OF_MI6i_compIH5_3isa3isa;
            }
            if (((input & 0x7f) == 0x17 /*XXXXXXXXXXXXXXXXXXXXXXXXX0010111*/ )) {
                
                MI3immIH5_3isa3isa11_9imm20_s123imm1_9imm20_s12.dwrite((((input & 0xfffff000) >> 12) << 0));
                MI9imm20_s12IH5_3isa3isa11_9imm20_s123imm();
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                MI9opc_auipcIH5_3isa3isa11_9opc_auipc3opc();
                MI7i_auipcIH5_3isa3isa();
                goto END_OF_MI6i_compIH5_3isa3isa;
            }
            if (((input & 0x7f) == 0x37 /*XXXXXXXXXXXXXXXXXXXXXXXXX0110111*/ )) {
                
                MI3immIH5_3isa3isa11_9imm20_s123imm1_9imm20_s12.dwrite((((input & 0xfffff000) >> 12) << 0));
                MI9imm20_s12IH5_3isa3isa11_9imm20_s123imm();
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                MI7opc_luiIH5_3isa3isa9_7opc_lui3opc();
                MI5i_luiIH5_3isa3isa();
                goto END_OF_MI6i_compIH5_3isa3isa;
            }
            if (((input & 0x307f) == 0x3013 /*XXXXXXXXXXXXXXXXXX11XXXXX0010011*/ ) || 
                    ((input & 0x107f) == 0x13 /*XXXXXXXXXXXXXXXXXXX0XXXXX0010011*/ )) {
                
                if (Parser_MI6simm12IH5_3isa3isa8_6simm126simm12_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                switch (((input & 0x707f) )) {
                case ( 0x3013 /*XXXXXXXXXXXXXXXXX011XXXXX0010011*/ ):
                {
                    
                    MI9opc_sltiuIH5_3isa3isa20_17opc_comp_2reg_imm3opc();
                    break;
                }
                case ( 0x7013 /*XXXXXXXXXXXXXXXXX111XXXXX0010011*/ ):
                {
                    
                    MI8opc_andiIH5_3isa3isa20_17opc_comp_2reg_imm3opc();
                    break;
                }
                case ( 0x13 /*XXXXXXXXXXXXXXXXX000XXXXX0010011*/ ):
                {
                    
                    MI8opc_addiIH5_3isa3isa20_17opc_comp_2reg_imm3opc();
                    break;
                }
                case ( 0x2013 /*XXXXXXXXXXXXXXXXX010XXXXX0010011*/ ):
                {
                    
                    MI8opc_sltiIH5_3isa3isa20_17opc_comp_2reg_imm3opc();
                    break;
                }
                case ( 0x4013 /*XXXXXXXXXXXXXXXXX100XXXXX0010011*/ ):
                {
                    
                    MI8opc_xoriIH5_3isa3isa20_17opc_comp_2reg_imm3opc();
                    break;
                }
                case ( 0x6013 /*XXXXXXXXXXXXXXXXX110XXXXX0010011*/ ):
                {
                    
                    MI7opc_oriIH5_3isa3isa20_17opc_comp_2reg_imm3opc();
                    break;
                }
                default: 
                    return INSTPARSER_INVALIDCODE;
                }
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                MI15i_comp_2reg_immIH5_3isa3isa();
                goto END_OF_MI6i_compIH5_3isa3isa;
            }
            return INSTPARSER_INVALIDCODE;
            // Collecting label
            END_OF_MI6i_compIH5_3isa3isa:
            goto END_OF_MI3isaIH5_3isa3isa;
        }
        if (((input & 0xfe00407f) == 0x2b /*0000000XXXXXXXXXX0XXXXXXX0101011*/ ) || 
                ((input & 0xfe00707f) == 0x402b /*0000000XXXXXXXXXX100XXXXX0101011*/ )) {
            
            if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2_bc__24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            switch (((input & 0x7000) )) {
            case ( 0x0 /*XXXXXXXXXXXXXXXXX000*/ ):
            {
                
                MI21opc_hackaton_custom_aIH5_3isa3isa24_21opc_hackaton_custom_i3opc();
                break;
            }
            case ( 0x1000 /*XXXXXXXXXXXXXXXXX001*/ ):
            {
                
                MI21opc_hackaton_custom_bIH5_3isa3isa24_21opc_hackaton_custom_i3opc();
                break;
            }
            case ( 0x2000 /*XXXXXXXXXXXXXXXXX010*/ ):
            {
                
                MI21opc_hackaton_custom_cIH5_3isa3isa24_21opc_hackaton_custom_i3opc();
                break;
            }
            case ( 0x3000 /*XXXXXXXXXXXXXXXXX011*/ ):
            {
                
                MI21opc_hackaton_custom_dIH5_3isa3isa24_21opc_hackaton_custom_i3opc();
                break;
            }
            case ( 0x4000 /*XXXXXXXXXXXXXXXXX100*/ ):
            {
                
                MI21opc_hackaton_custom_eIH5_3isa3isa24_21opc_hackaton_custom_i3opc();
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            MI14i_ext_hackatonIH5_3isa3isa();
            goto END_OF_MI3isaIH5_3isa3isa;
        }
        if (((input & 0xffa0307f) == 0x30002073 /*001100000X0XXXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xffa0107f) == 0x30001073 /*001100000X0XXXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xffb0307f) == 0x32002073 /*001100100X00XXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xffb0107f) == 0x32001073 /*001100100X00XXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xffb0307f) == 0x32302073 /*001100100X11XXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xffb0107f) == 0x32301073 /*001100100X11XXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xff70307f) == 0x32502073 /*00110010X101XXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xff70107f) == 0x32501073 /*00110010X101XXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xff70307f) == 0x32602073 /*00110010X110XXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xff70107f) == 0x32601073 /*00110010X110XXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xff80307f) == 0x33002073 /*001100110XXXXXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xff80107f) == 0x33001073 /*001100110XXXXXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xfff0307f) == 0x33d02073 /*001100111101XXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xfff0107f) == 0x33d01073 /*001100111101XXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xfff0307f) == 0x33e02073 /*001100111110XXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xfff0107f) == 0x33e01073 /*001100111110XXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xfec0307f) == 0x32802073 /*0011001X10XXXXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xfec0107f) == 0x32801073 /*0011001X10XXXXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xfef0307f) == 0x32c02073 /*0011001X1100XXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xfef0107f) == 0x32c01073 /*0011001X1100XXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xfef0307f) == 0x32f02073 /*0011001X1111XXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xfef0107f) == 0x32f01073 /*0011001X1111XXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xffc0307f) == 0x34002073 /*0011010000XXXXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xffc0107f) == 0x34001073 /*0011010000XXXXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xfff0307f) == 0x34402073 /*001101000100XXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xfff0107f) == 0x34401073 /*001101000100XXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xf7d0307f) == 0xb0002073 /*1011X00000X0XXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xf7d0107f) == 0xb0001073 /*1011X00000X0XXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xf7b0307f) == 0xb0302073 /*1011X0000X11XXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xf7b0107f) == 0xb0301073 /*1011X0000X11XXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xf760307f) == 0xb0402073 /*1011X000X10XXXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xf760107f) == 0xb0401073 /*1011X000X10XXXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xf770307f) == 0xb0602073 /*1011X000X110XXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xf770107f) == 0xb0601073 /*1011X000X110XXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xf780307f) == 0xb1002073 /*1011X0010XXXXXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xf780107f) == 0xb1001073 /*1011X0010XXXXXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xf7e0307f) == 0xb1c02073 /*1011X001110XXXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xf7e0107f) == 0xb1c01073 /*1011X001110XXXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xf7f0307f) == 0xb1e02073 /*1011X0011110XXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xf7f0107f) == 0xb1e01073 /*1011X0011110XXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xf6c0307f) == 0xb0802073 /*1011X00X10XXXXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xf6c0107f) == 0xb0801073 /*1011X00X10XXXXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xf6f0307f) == 0xb0f02073 /*1011X00X1111XXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xf6f0107f) == 0xb0f01073 /*1011X00X1111XXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xfff0307f) == 0xf1202073 /*111100010010XXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xfff0107f) == 0xf1201073 /*111100010010XXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xffd0307f) == 0xf1102073 /*1111000100X1XXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xffd0107f) == 0xf1101073 /*1111000100X1XXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xfff0307f) == 0xf1402073 /*111100010100XXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xfff0107f) == 0xf1401073 /*111100010100XXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xfff0307f) == 0xfc102073 /*111111000001XXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xfff0107f) == 0xfc101073 /*111111000001XXXXXXX1XXXXX1110011*/ ) || 
                ((input & 0xfff0307f) == 0xfc602073 /*111111000110XXXXXX10XXXXX1110011*/ ) || 
                ((input & 0xfff0107f) == 0xfc601073 /*111111000110XXXXXXX1XXXXX1110011*/ )) {
            
            if (((input & 0xffa0707f) == 0x30006073 /*001100000X0XXXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xffa0507f) == 0x30005073 /*001100000X0XXXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xffb0707f) == 0x32006073 /*001100100X00XXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xffb0507f) == 0x32005073 /*001100100X00XXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xffb0707f) == 0x32306073 /*001100100X11XXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xffb0507f) == 0x32305073 /*001100100X11XXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xff70707f) == 0x32506073 /*00110010X101XXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xff70507f) == 0x32505073 /*00110010X101XXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xff70707f) == 0x32606073 /*00110010X110XXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xff70507f) == 0x32605073 /*00110010X110XXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xff80707f) == 0x33006073 /*001100110XXXXXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xff80507f) == 0x33005073 /*001100110XXXXXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xfff0707f) == 0x33d06073 /*001100111101XXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xfff0507f) == 0x33d05073 /*001100111101XXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xfff0707f) == 0x33e06073 /*001100111110XXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xfff0507f) == 0x33e05073 /*001100111110XXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xfec0707f) == 0x32806073 /*0011001X10XXXXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xfec0507f) == 0x32805073 /*0011001X10XXXXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xfef0707f) == 0x32c06073 /*0011001X1100XXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xfef0507f) == 0x32c05073 /*0011001X1100XXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xfef0707f) == 0x32f06073 /*0011001X1111XXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xfef0507f) == 0x32f05073 /*0011001X1111XXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xffc0707f) == 0x34006073 /*0011010000XXXXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xffc0507f) == 0x34005073 /*0011010000XXXXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xfff0707f) == 0x34406073 /*001101000100XXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xfff0507f) == 0x34405073 /*001101000100XXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xf7d0707f) == 0xb0006073 /*1011X00000X0XXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xf7d0507f) == 0xb0005073 /*1011X00000X0XXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xf7b0707f) == 0xb0306073 /*1011X0000X11XXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xf7b0507f) == 0xb0305073 /*1011X0000X11XXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xf760707f) == 0xb0406073 /*1011X000X10XXXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xf760507f) == 0xb0405073 /*1011X000X10XXXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xf770707f) == 0xb0606073 /*1011X000X110XXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xf770507f) == 0xb0605073 /*1011X000X110XXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xf780707f) == 0xb1006073 /*1011X0010XXXXXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xf780507f) == 0xb1005073 /*1011X0010XXXXXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xf7e0707f) == 0xb1c06073 /*1011X001110XXXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xf7e0507f) == 0xb1c05073 /*1011X001110XXXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xf7f0707f) == 0xb1e06073 /*1011X0011110XXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xf7f0507f) == 0xb1e05073 /*1011X0011110XXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xf6c0707f) == 0xb0806073 /*1011X00X10XXXXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xf6c0507f) == 0xb0805073 /*1011X00X10XXXXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xf6f0707f) == 0xb0f06073 /*1011X00X1111XXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xf6f0507f) == 0xb0f05073 /*1011X00X1111XXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xfff0707f) == 0xf1206073 /*111100010010XXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xfff0507f) == 0xf1205073 /*111100010010XXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xffd0707f) == 0xf1106073 /*1111000100X1XXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xffd0507f) == 0xf1105073 /*1111000100X1XXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xfff0707f) == 0xf1406073 /*111100010100XXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xfff0507f) == 0xf1405073 /*111100010100XXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xfff0707f) == 0xfc106073 /*111111000001XXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xfff0507f) == 0xfc105073 /*111111000001XXXXX1X1XXXXX1110011*/ ) || 
                    ((input & 0xfff0707f) == 0xfc606073 /*111111000110XXXXX110XXXXX1110011*/ ) || 
                    ((input & 0xfff0507f) == 0xfc605073 /*111111000110XXXXX1X1XXXXX1110011*/ )) {
                
                if (Parser_MI6op_csrIH5_3isa3isa8_6op_csr3csr_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                MI3immIH5_3isa3isa6_4imm53imm1_4imm5.dwrite((((input & 0xf8000) >> 15) << 0));
                MI4imm5IH5_3isa3isa6_4imm53imm();
                switch (((input & 0x707f) )) {
                case ( 0x6073 /*XXXXXXXXXXXXXXXXX110XXXXX1110011*/ ):
                {
                    
                    MI10opc_csrrsiIH5_3isa3isa28_25opc_control_registers_imm3opc();
                    break;
                }
                case ( 0x5073 /*XXXXXXXXXXXXXXXXX101XXXXX1110011*/ ):
                {
                    
                    MI10opc_csrrwiIH5_3isa3isa28_25opc_control_registers_imm3opc();
                    break;
                }
                case ( 0x7073 /*XXXXXXXXXXXXXXXXX111XXXXX1110011*/ ):
                {
                    
                    MI10opc_csrrciIH5_3isa3isa28_25opc_control_registers_imm3opc();
                    break;
                }
                default: 
                    return INSTPARSER_INVALIDCODE;
                }
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                MI23i_control_registers_immIH5_3isa3isa();
                goto END_OF_MI14i_control_regsIH5_3isa3isa;
            }
            if (((input & 0xffa0707f) == 0x30002073 /*001100000X0XXXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xffa0507f) == 0x30001073 /*001100000X0XXXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xffb0707f) == 0x32002073 /*001100100X00XXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xffb0507f) == 0x32001073 /*001100100X00XXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xffb0707f) == 0x32302073 /*001100100X11XXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xffb0507f) == 0x32301073 /*001100100X11XXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xff70707f) == 0x32502073 /*00110010X101XXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xff70507f) == 0x32501073 /*00110010X101XXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xff70707f) == 0x32602073 /*00110010X110XXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xff70507f) == 0x32601073 /*00110010X110XXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xff80707f) == 0x33002073 /*001100110XXXXXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xff80507f) == 0x33001073 /*001100110XXXXXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xfff0707f) == 0x33d02073 /*001100111101XXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xfff0507f) == 0x33d01073 /*001100111101XXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xfff0707f) == 0x33e02073 /*001100111110XXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xfff0507f) == 0x33e01073 /*001100111110XXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xfec0707f) == 0x32802073 /*0011001X10XXXXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xfec0507f) == 0x32801073 /*0011001X10XXXXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xfef0707f) == 0x32c02073 /*0011001X1100XXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xfef0507f) == 0x32c01073 /*0011001X1100XXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xfef0707f) == 0x32f02073 /*0011001X1111XXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xfef0507f) == 0x32f01073 /*0011001X1111XXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xffc0707f) == 0x34002073 /*0011010000XXXXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xffc0507f) == 0x34001073 /*0011010000XXXXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xfff0707f) == 0x34402073 /*001101000100XXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xfff0507f) == 0x34401073 /*001101000100XXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xf7d0707f) == 0xb0002073 /*1011X00000X0XXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xf7d0507f) == 0xb0001073 /*1011X00000X0XXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xf7b0707f) == 0xb0302073 /*1011X0000X11XXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xf7b0507f) == 0xb0301073 /*1011X0000X11XXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xf760707f) == 0xb0402073 /*1011X000X10XXXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xf760507f) == 0xb0401073 /*1011X000X10XXXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xf770707f) == 0xb0602073 /*1011X000X110XXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xf770507f) == 0xb0601073 /*1011X000X110XXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xf780707f) == 0xb1002073 /*1011X0010XXXXXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xf780507f) == 0xb1001073 /*1011X0010XXXXXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xf7e0707f) == 0xb1c02073 /*1011X001110XXXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xf7e0507f) == 0xb1c01073 /*1011X001110XXXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xf7f0707f) == 0xb1e02073 /*1011X0011110XXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xf7f0507f) == 0xb1e01073 /*1011X0011110XXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xf6c0707f) == 0xb0802073 /*1011X00X10XXXXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xf6c0507f) == 0xb0801073 /*1011X00X10XXXXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xf6f0707f) == 0xb0f02073 /*1011X00X1111XXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xf6f0507f) == 0xb0f01073 /*1011X00X1111XXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xfff0707f) == 0xf1202073 /*111100010010XXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xfff0507f) == 0xf1201073 /*111100010010XXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xffd0707f) == 0xf1102073 /*1111000100X1XXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xffd0507f) == 0xf1101073 /*1111000100X1XXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xfff0707f) == 0xf1402073 /*111100010100XXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xfff0507f) == 0xf1401073 /*111100010100XXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xfff0707f) == 0xfc102073 /*111111000001XXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xfff0507f) == 0xfc101073 /*111111000001XXXXX0X1XXXXX1110011*/ ) || 
                    ((input & 0xfff0707f) == 0xfc602073 /*111111000110XXXXX010XXXXX1110011*/ ) || 
                    ((input & 0xfff0507f) == 0xfc601073 /*111111000110XXXXX0X1XXXXX1110011*/ )) {
                
                if (Parser_MI6op_csrIH5_3isa3isa8_6op_csr3csr_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                switch (((input & 0x707f) )) {
                case ( 0x2073 /*XXXXXXXXXXXXXXXXX010XXXXX1110011*/ ):
                {
                    
                    MI9opc_csrrsIH5_3isa3isa28_25opc_control_registers_reg3opc();
                    break;
                }
                case ( 0x1073 /*XXXXXXXXXXXXXXXXX001XXXXX1110011*/ ):
                {
                    
                    MI9opc_csrrwIH5_3isa3isa28_25opc_control_registers_reg3opc();
                    break;
                }
                case ( 0x3073 /*XXXXXXXXXXXXXXXXX011XXXXX1110011*/ ):
                {
                    
                    MI9opc_csrrcIH5_3isa3isa28_25opc_control_registers_reg3opc();
                    break;
                }
                default: 
                    return INSTPARSER_INVALIDCODE;
                }
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                MI23i_control_registers_regIH5_3isa3isa();
                goto END_OF_MI14i_control_regsIH5_3isa3isa;
            }
            return INSTPARSER_INVALIDCODE;
            // Collecting label
            END_OF_MI14i_control_regsIH5_3isa3isa:
            goto END_OF_MI3isaIH5_3isa3isa;
        }
        if (((input & 0xffffffff) == 0xc000107f /*11000000000000000001000001111111*/ )) {
            
            MI9opc_unimpIH5_3isa3isa11_9opc_unimp3opc();
            MI7i_unimpIH5_3isa3isa();
            goto END_OF_MI3isaIH5_3isa3isa;
        }
        if (((input & 0x707f) == 0x67 /*XXXXXXXXXXXXXXXXX000XXXXX1100111*/ ) || 
                ((input & 0x607f) == 0x6063 /*XXXXXXXXXXXXXXXXX11XXXXXX1100011*/ ) || 
                ((input & 0x207f) == 0x63 /*XXXXXXXXXXXXXXXXXX0XXXXXX1100011*/ ) || 
                ((input & 0x7f) == 0x6f /*XXXXXXXXXXXXXXXXXXXXXXXXX1101111*/ )) {
            
            if (((input & 0x7f) == 0x6f /*XXXXXXXXXXXXXXXXXXXXXXXXX1101111*/ )) {
                
                MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20.dwrite((((input & 0x80000000) >> 31) << 19));
                MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20.dwrite(MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20.dread() | (((input & 0xff000) >> 12) << 11));
                MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20.dwrite(MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20.dread() | (((input & 0x100000) >> 20) << 10));
                MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20.dwrite(MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20.dread() | (((input & 0x7fe00000) >> 21) << 0));
                MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20.dwrite(((int32_t)((int32_t)MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20.dread() << 12)) >> 12);
                MI10rel_addr20IH5_3isa3isa13_10rel_addr204addr();
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                MI7opc_jalIH5_3isa3isa9_7opc_jal3opc();
                MI5i_jalIH5_3isa3isa();
                goto END_OF_MI9i_controlIH5_3isa3isa;
            }
            if (((input & 0x707f) == 0x67 /*XXXXXXXXXXXXXXXXX000XXXXX1100111*/ )) {
                
                if (Parser_MI6simm12IH5_3isa3isa8_6simm126simm12_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                MI8opc_jalrIH5_3isa3isa10_8opc_jalr3opc();
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                MI6i_jalrIH5_3isa3isa();
                goto END_OF_MI9i_controlIH5_3isa3isa;
            }
            if (((input & 0x607f) == 0x6063 /*XXXXXXXXXXXXXXXXX11XXXXXX1100011*/ ) || 
                    ((input & 0x207f) == 0x63 /*XXXXXXXXXXXXXXXXXX0XXXXXX1100011*/ )) {
                
                MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12.dwrite((((input & 0x80000000) >> 31) << 11));
                MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12.dwrite(MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12.dread() | (((input & 0x80) >> 7) << 10));
                MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12.dwrite(MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12.dread() | (((input & 0x7e000000) >> 25) << 4));
                MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12.dwrite(MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12.dread() | (((input & 0xf00) >> 8) << 0));
                MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12.dwrite(((int16_t)((int16_t)MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12.dread() << 4)) >> 4);
                MI10rel_addr12IH5_3isa3isa13_10rel_addr124addr();
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src2_bc__24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src1_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                switch (((input & 0x707f) )) {
                case ( 0x6063 /*XXXXXXXXXXXXXXXXX110XXXXX1100011*/ ):
                {
                    
                    MI8opc_bltuIH5_3isa3isa26_23opc_control_conditional3opc();
                    break;
                }
                case ( 0x7063 /*XXXXXXXXXXXXXXXXX111XXXXX1100011*/ ):
                {
                    
                    MI8opc_bgeuIH5_3isa3isa26_23opc_control_conditional3opc();
                    break;
                }
                case ( 0x63 /*XXXXXXXXXXXXXXXXX000XXXXX1100011*/ ):
                {
                    
                    MI7opc_beqIH5_3isa3isa26_23opc_control_conditional3opc();
                    break;
                }
                case ( 0x1063 /*XXXXXXXXXXXXXXXXX001XXXXX1100011*/ ):
                {
                    
                    MI7opc_bneIH5_3isa3isa26_23opc_control_conditional3opc();
                    break;
                }
                case ( 0x4063 /*XXXXXXXXXXXXXXXXX100XXXXX1100011*/ ):
                {
                    
                    MI7opc_bltIH5_3isa3isa26_23opc_control_conditional3opc();
                    break;
                }
                case ( 0x5063 /*XXXXXXXXXXXXXXXXX101XXXXX1100011*/ ):
                {
                    
                    MI7opc_bgeIH5_3isa3isa26_23opc_control_conditional3opc();
                    break;
                }
                default: 
                    return INSTPARSER_INVALIDCODE;
                }
                MI21i_control_conditionalIH5_3isa3isa();
                goto END_OF_MI9i_controlIH5_3isa3isa;
            }
            return INSTPARSER_INVALIDCODE;
            // Collecting label
            END_OF_MI9i_controlIH5_3isa3isa:
            goto END_OF_MI3isaIH5_3isa3isa;
        }
        if (((input & 0x607f) == 0x23 /*XXXXXXXXXXXXXXXXX00XXXXXX0100011*/ ) || 
                ((input & 0x705f) == 0x2003 /*XXXXXXXXXXXXXXXXX010XXXXX0X00011*/ ) || 
                ((input & 0x207f) == 0x3 /*XXXXXXXXXXXXXXXXXX0XXXXXX0000011*/ )) {
            
            if (((input & 0x707f) == 0x2003 /*XXXXXXXXXXXXXXXXX010XXXXX0000011*/ ) || 
                    ((input & 0x207f) == 0x3 /*XXXXXXXXXXXXXXXXXX0XXXXXX0000011*/ )) {
                
                if (Parser_MI6simm12IH5_3isa3isa8_6simm126simm12_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc_bc__14_13_12_6_5_4_3_2_1_0_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                MI6i_loadIH5_3isa3isa();
                goto END_OF_MI12i_load_storeIH5_3isa3isa;
            }
            if (((input & 0x607f) == 0x23 /*XXXXXXXXXXXXXXXXX00XXXXXX0100011*/ ) || 
                    ((input & 0x707f) == 0x2023 /*XXXXXXXXXXXXXXXXX010XXXXX0100011*/ )) {
                
                
                MI4simmIH5_3isa3isa10_8simm12_s8simm12_s1_13simm12_simple.dwrite((((input & 0xfe000000) >> 25) << 5));
                MI4simmIH5_3isa3isa10_8simm12_s8simm12_s1_13simm12_simple.dwrite(MI4simmIH5_3isa3isa10_8simm12_s8simm12_s1_13simm12_simple.dread() | (((input & 0xf80) >> 7) << 0));
                MI4simmIH5_3isa3isa10_8simm12_s8simm12_s1_13simm12_simple.dwrite(((int16_t)((int16_t)MI4simmIH5_3isa3isa10_8simm12_s8simm12_s1_13simm12_simple.dread() << 4)) >> 4);
                MI13simm12_simpleIH5_3isa3isa10_8simm12_s8simm12_s();
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src2_bc__24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src1_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc_bc__14_13_12_6_5_4_3_2_1_0_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                MI7i_storeIH5_3isa3isa();
                goto END_OF_MI12i_load_storeIH5_3isa3isa;
            }
            return INSTPARSER_INVALIDCODE;
            // Collecting label
            END_OF_MI12i_load_storeIH5_3isa3isa:
            goto END_OF_MI3isaIH5_3isa3isa;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI3isaIH5_3isa3isa:
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI6op_csrIH5_3isa3isa8_6op_csr3csr_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32
 */
inline int Sim::Parser_MI6op_csrIH5_3isa3isa8_6op_csr3csr_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(const uint32_t input)
{
        
        if (Parser_MI8regs_csrIH5_3isa3isa8_6op_csr3csr_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI6simm12IH5_3isa3isa8_6simm126simm12_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32
 */
inline int Sim::Parser_MI6simm12IH5_3isa3isa8_6simm126simm12_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(const uint32_t input)
{
        
        MI4simmIH5_3isa3isa8_6simm126simm121_13simm12_simple.dwrite((((input & 0xfff00000) >> 20) << 0));
        MI4simmIH5_3isa3isa8_6simm126simm121_13simm12_simple.dwrite(((int16_t)((int16_t)MI4simmIH5_3isa3isa8_6simm126simm121_13simm12_simple.dread() << 4)) >> 4);
        MI13simm12_simpleIH5_3isa3isa8_6simm126simm12();
        return INSTPARSER_OK;
}
/**
 *  \brief  SwitchClean_MI3isaIH5_3isa3isa
 */
inline void Sim::SwitchClean_MI3isaIH5_3isa3isa()
{

}
/**
 *  \brief  Decoder_MI3isaIH5_3isa3isa
 */
inline void Sim::Decoder_MI3isaIH5_3isa3isa(const uint32_t MI15codasip_param_0, bool& MI15codasip_param_1)
{
    MI15codasip_param_1 = Parser_MI3isaIH5_3isa3isa(MI15codasip_param_0) != INSTPARSER_OK;
    MI3isaIH5_3isa3isa(MI15codasip_param_0, MI15codasip_param_1);
}
/**
 *  \brief  MI5reset
 */
inline void Sim::MI5reset()
{
    {
        MI4r_PC.write(MI11p_boot_addr.read());
        MI14r_syscall_addr.write(MI11p_boot_addr.read() + uint32_t(16u));
    }
}
/**
 *  \brief  MI3isaIH5_3isa3isa
 */
inline void Sim::MI3isaIH5_3isa3isa(const uint32_t MI15codasip_param_0, bool MI15codasip_param_1)
{
    {
    }
}
/**
 *  \brief  MI9opc_csrrwIH5_3isa3isa28_25opc_control_registers_reg3opc
 */
inline void Sim::MI9opc_csrrwIH5_3isa3isa28_25opc_control_registers_reg3opc()
{
    {
        MI90codasip_return_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc.write(codasip::Integer<10, false>(243u));
    }
}
/**
 *  \brief  MI9opc_csrrsIH5_3isa3isa28_25opc_control_registers_reg3opc
 */
inline void Sim::MI9opc_csrrsIH5_3isa3isa28_25opc_control_registers_reg3opc()
{
    {
        MI90codasip_return_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc.write(codasip::Integer<10, false>(371u));
    }
}
/**
 *  \brief  MI9opc_csrrcIH5_3isa3isa28_25opc_control_registers_reg3opc
 */
inline void Sim::MI9opc_csrrcIH5_3isa3isa28_25opc_control_registers_reg3opc()
{
    {
        MI90codasip_return_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc.write(codasip::Integer<10, false>(499u));
    }
}
/**
 *  \brief  MI10opc_csrrwiIH5_3isa3isa28_25opc_control_registers_imm3opc
 */
inline void Sim::MI10opc_csrrwiIH5_3isa3isa28_25opc_control_registers_imm3opc()
{
    {
        MI90codasip_return_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc.write(codasip::Integer<10, false>(755u));
    }
}
/**
 *  \brief  MI10opc_csrrsiIH5_3isa3isa28_25opc_control_registers_imm3opc
 */
inline void Sim::MI10opc_csrrsiIH5_3isa3isa28_25opc_control_registers_imm3opc()
{
    {
        MI90codasip_return_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc.write(codasip::Integer<10, false>(883u));
    }
}
/**
 *  \brief  MI10opc_csrrciIH5_3isa3isa28_25opc_control_registers_imm3opc
 */
inline void Sim::MI10opc_csrrciIH5_3isa3isa28_25opc_control_registers_imm3opc()
{
    {
        MI90codasip_return_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc.write(codasip::Integer<10, false>(1011u));
    }
}
/**
 *  \brief  MI15i_comp_2reg_immIH5_3isa3isa
 */
inline void Sim::MI15i_comp_2reg_immIH5_3isa3isa()
{
    {
        MI3valIH5_3isa3isa1_15i_comp_2reg_immB0.write(MI11rf_gpr_read(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.read()));
        MI12rf_gpr_write(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.read(),MI7compute(MI74codasip_return_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc.read(),MI3valIH5_3isa3isa1_15i_comp_2reg_immB0.read(),static_cast<int32_t>((MI52codasip_return_MI6simm12IH5_3isa3isa8_6simm126simm12.read()))));
    }
}
/**
 *  \brief  MI8opc_addiIH5_3isa3isa20_17opc_comp_2reg_imm3opc
 */
inline void Sim::MI8opc_addiIH5_3isa3isa20_17opc_comp_2reg_imm3opc()
{
    {
        MI74codasip_return_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc.write(codasip::Integer<10, false>(19u));
    }
}
/**
 *  \brief  MI8opc_sltiIH5_3isa3isa20_17opc_comp_2reg_imm3opc
 */
inline void Sim::MI8opc_sltiIH5_3isa3isa20_17opc_comp_2reg_imm3opc()
{
    {
        MI74codasip_return_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc.write(codasip::Integer<10, false>(275u));
    }
}
/**
 *  \brief  MI9opc_sltiuIH5_3isa3isa20_17opc_comp_2reg_imm3opc
 */
inline void Sim::MI9opc_sltiuIH5_3isa3isa20_17opc_comp_2reg_imm3opc()
{
    {
        MI74codasip_return_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc.write(codasip::Integer<10, false>(403u));
    }
}
/**
 *  \brief  MI8opc_andiIH5_3isa3isa20_17opc_comp_2reg_imm3opc
 */
inline void Sim::MI8opc_andiIH5_3isa3isa20_17opc_comp_2reg_imm3opc()
{
    {
        MI74codasip_return_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc.write(codasip::Integer<10, false>(915u));
    }
}
/**
 *  \brief  MI7opc_oriIH5_3isa3isa20_17opc_comp_2reg_imm3opc
 */
inline void Sim::MI7opc_oriIH5_3isa3isa20_17opc_comp_2reg_imm3opc()
{
    {
        MI74codasip_return_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc.write(codasip::Integer<10, false>(787u));
    }
}
/**
 *  \brief  MI8opc_xoriIH5_3isa3isa20_17opc_comp_2reg_imm3opc
 */
inline void Sim::MI8opc_xoriIH5_3isa3isa20_17opc_comp_2reg_imm3opc()
{
    {
        MI74codasip_return_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc.write(codasip::Integer<10, false>(531u));
    }
}
/**
 *  \brief  MI21i_comp_2reg_imm_shiftIH5_3isa3isa
 */
inline void Sim::MI21i_comp_2reg_imm_shiftIH5_3isa3isa()
{
    {
        MI3valIH5_3isa3isa1_21i_comp_2reg_imm_shiftB0.write(MI11rf_gpr_read(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.read()));
        MI12rf_gpr_write(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.read(),MI7compute(MI86codasip_return_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc.read(),MI3valIH5_3isa3isa1_21i_comp_2reg_imm_shiftB0.read(),static_cast<uint32_t>((MI56codasip_return_MI9shift_immIH5_3isa3isa11_9shift_imm3imm.read()))));
    }
}
/**
 *  \brief  MI8opc_slliIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc
 */
inline void Sim::MI8opc_slliIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc()
{
    {
        MI86codasip_return_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc.write(codasip::Integer<17, false>(147u));
    }
}
/**
 *  \brief  MI8opc_srliIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc
 */
inline void Sim::MI8opc_srliIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc()
{
    {
        MI86codasip_return_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc.write(codasip::Integer<17, false>(659u));
    }
}
/**
 *  \brief  MI8opc_sraiIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc
 */
inline void Sim::MI8opc_sraiIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc()
{
    {
        MI86codasip_return_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc.write(codasip::Integer<17, false>(33427u));
    }
}
/**
 *  \brief  MI5i_luiIH5_3isa3isa
 */
inline void Sim::MI5i_luiIH5_3isa3isa()
{
    {
        MI12rf_gpr_write(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.read(),static_cast<int32_t>((MI56codasip_return_MI9imm20_s12IH5_3isa3isa11_9imm20_s123imm.read())));
    }
}
/**
 *  \brief  MI7opc_luiIH5_3isa3isa9_7opc_lui3opc
 */
inline void Sim::MI7opc_luiIH5_3isa3isa9_7opc_lui3opc()
{
    {
    }
}
/**
 *  \brief  MI7i_auipcIH5_3isa3isa
 */
inline void Sim::MI7i_auipcIH5_3isa3isa()
{
    {
        MI12rf_gpr_write(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.read(),(MI4r_PC.read() - uint32_t(4u)) + static_cast<uint32_t>(static_cast<int32_t>((MI56codasip_return_MI9imm20_s12IH5_3isa3isa11_9imm20_s123imm.read()))));
    }
}
/**
 *  \brief  MI9opc_auipcIH5_3isa3isa11_9opc_auipc3opc
 */
inline void Sim::MI9opc_auipcIH5_3isa3isa11_9opc_auipc3opc()
{
    {
    }
}
/**
 *  \brief  MI11i_comp_3regIH5_3isa3isa
 */
inline void Sim::MI11i_comp_3regIH5_3isa3isa()
{
    {
        MI12rf_gpr_write(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.read(),MI7compute(MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc.read(),MI11rf_gpr_read(MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.read()),MI11rf_gpr_read(MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.read())));
    }
}
/**
 *  \brief  MI7opc_addIH5_3isa3isa16_13opc_comp_3reg3opc
 */
inline void Sim::MI7opc_addIH5_3isa3isa16_13opc_comp_3reg3opc()
{
    {
        MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc.write(codasip::Integer<17, false>(51u));
    }
}
/**
 *  \brief  MI7opc_sltIH5_3isa3isa16_13opc_comp_3reg3opc
 */
inline void Sim::MI7opc_sltIH5_3isa3isa16_13opc_comp_3reg3opc()
{
    {
        MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc.write(codasip::Integer<17, false>(307u));
    }
}
/**
 *  \brief  MI8opc_sltuIH5_3isa3isa16_13opc_comp_3reg3opc
 */
inline void Sim::MI8opc_sltuIH5_3isa3isa16_13opc_comp_3reg3opc()
{
    {
        MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc.write(codasip::Integer<17, false>(435u));
    }
}
/**
 *  \brief  MI7opc_andIH5_3isa3isa16_13opc_comp_3reg3opc
 */
inline void Sim::MI7opc_andIH5_3isa3isa16_13opc_comp_3reg3opc()
{
    {
        MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc.write(codasip::Integer<17, false>(947u));
    }
}
/**
 *  \brief  MI6opc_orIH5_3isa3isa16_13opc_comp_3reg3opc
 */
inline void Sim::MI6opc_orIH5_3isa3isa16_13opc_comp_3reg3opc()
{
    {
        MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc.write(codasip::Integer<17, false>(819u));
    }
}
/**
 *  \brief  MI7opc_xorIH5_3isa3isa16_13opc_comp_3reg3opc
 */
inline void Sim::MI7opc_xorIH5_3isa3isa16_13opc_comp_3reg3opc()
{
    {
        MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc.write(codasip::Integer<17, false>(563u));
    }
}
/**
 *  \brief  MI7opc_sllIH5_3isa3isa16_13opc_comp_3reg3opc
 */
inline void Sim::MI7opc_sllIH5_3isa3isa16_13opc_comp_3reg3opc()
{
    {
        MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc.write(codasip::Integer<17, false>(179u));
    }
}
/**
 *  \brief  MI7opc_srlIH5_3isa3isa16_13opc_comp_3reg3opc
 */
inline void Sim::MI7opc_srlIH5_3isa3isa16_13opc_comp_3reg3opc()
{
    {
        MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc.write(codasip::Integer<17, false>(691u));
    }
}
/**
 *  \brief  MI7opc_subIH5_3isa3isa16_13opc_comp_3reg3opc
 */
inline void Sim::MI7opc_subIH5_3isa3isa16_13opc_comp_3reg3opc()
{
    {
        MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc.write(codasip::Integer<17, false>(32819u));
    }
}
/**
 *  \brief  MI7opc_sraIH5_3isa3isa16_13opc_comp_3reg3opc
 */
inline void Sim::MI7opc_sraIH5_3isa3isa16_13opc_comp_3reg3opc()
{
    {
        MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc.write(codasip::Integer<17, false>(33459u));
    }
}
/**
 *  \brief  MI7opc_jalIH5_3isa3isa9_7opc_jal3opc
 */
inline void Sim::MI7opc_jalIH5_3isa3isa9_7opc_jal3opc()
{
    {
    }
}
/**
 *  \brief  MI8opc_jalrIH5_3isa3isa10_8opc_jalr3opc
 */
inline void Sim::MI8opc_jalrIH5_3isa3isa10_8opc_jalr3opc()
{
    {
    }
}
/**
 *  \brief  MI7opc_beqIH5_3isa3isa26_23opc_control_conditional3opc
 */
inline void Sim::MI7opc_beqIH5_3isa3isa26_23opc_control_conditional3opc()
{
    {
        MI86codasip_return_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc.write(codasip::Integer<10, false>(99u));
    }
}
/**
 *  \brief  MI7opc_bneIH5_3isa3isa26_23opc_control_conditional3opc
 */
inline void Sim::MI7opc_bneIH5_3isa3isa26_23opc_control_conditional3opc()
{
    {
        MI86codasip_return_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc.write(codasip::Integer<10, false>(227u));
    }
}
/**
 *  \brief  MI7opc_bltIH5_3isa3isa26_23opc_control_conditional3opc
 */
inline void Sim::MI7opc_bltIH5_3isa3isa26_23opc_control_conditional3opc()
{
    {
        MI86codasip_return_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc.write(codasip::Integer<10, false>(611u));
    }
}
/**
 *  \brief  MI8opc_bltuIH5_3isa3isa26_23opc_control_conditional3opc
 */
inline void Sim::MI8opc_bltuIH5_3isa3isa26_23opc_control_conditional3opc()
{
    {
        MI86codasip_return_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc.write(codasip::Integer<10, false>(867u));
    }
}
/**
 *  \brief  MI7opc_bgeIH5_3isa3isa26_23opc_control_conditional3opc
 */
inline void Sim::MI7opc_bgeIH5_3isa3isa26_23opc_control_conditional3opc()
{
    {
        MI86codasip_return_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc.write(codasip::Integer<10, false>(739u));
    }
}
/**
 *  \brief  MI8opc_bgeuIH5_3isa3isa26_23opc_control_conditional3opc
 */
inline void Sim::MI8opc_bgeuIH5_3isa3isa26_23opc_control_conditional3opc()
{
    {
        MI86codasip_return_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc.write(codasip::Integer<10, false>(995u));
    }
}
/**
 *  \brief  MI9opc_loadwIH5_3isa3isa11_9opc_loads3opc
 */
inline void Sim::MI9opc_loadwIH5_3isa3isa11_9opc_loads3opc()
{
    {
        MI56codasip_return_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc.write(codasip::Integer<10, false>(259u));
    }
}
/**
 *  \brief  MI9opc_loadhIH5_3isa3isa11_9opc_loads3opc
 */
inline void Sim::MI9opc_loadhIH5_3isa3isa11_9opc_loads3opc()
{
    {
        MI56codasip_return_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc.write(codasip::Integer<10, false>(131u));
    }
}
/**
 *  \brief  MI10opc_loadhuIH5_3isa3isa11_9opc_loads3opc
 */
inline void Sim::MI10opc_loadhuIH5_3isa3isa11_9opc_loads3opc()
{
    {
        MI56codasip_return_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc.write(codasip::Integer<10, false>(643u));
    }
}
/**
 *  \brief  MI9opc_loadbIH5_3isa3isa11_9opc_loads3opc
 */
inline void Sim::MI9opc_loadbIH5_3isa3isa11_9opc_loads3opc()
{
    {
        MI56codasip_return_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc.write(codasip::Integer<10, false>(3u));
    }
}
/**
 *  \brief  MI10opc_loadbuIH5_3isa3isa11_9opc_loads3opc
 */
inline void Sim::MI10opc_loadbuIH5_3isa3isa11_9opc_loads3opc()
{
    {
        MI56codasip_return_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc.write(codasip::Integer<10, false>(515u));
    }
}
/**
 *  \brief  MI10opc_storewIH5_3isa3isa13_10opc_stores3opc
 */
inline void Sim::MI10opc_storewIH5_3isa3isa13_10opc_stores3opc()
{
    {
        MI60codasip_return_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc.write(codasip::Integer<10, false>(291u));
    }
}
/**
 *  \brief  MI10opc_storehIH5_3isa3isa13_10opc_stores3opc
 */
inline void Sim::MI10opc_storehIH5_3isa3isa13_10opc_stores3opc()
{
    {
        MI60codasip_return_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc.write(codasip::Integer<10, false>(163u));
    }
}
/**
 *  \brief  MI10opc_storebIH5_3isa3isa13_10opc_stores3opc
 */
inline void Sim::MI10opc_storebIH5_3isa3isa13_10opc_stores3opc()
{
    {
        MI60codasip_return_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc.write(codasip::Integer<10, false>(35u));
    }
}
/**
 *  \brief  MI7i_ecallIH5_3isa3isa
 */
inline void Sim::MI7i_ecallIH5_3isa3isa()
{
    {
        {
            resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
            {
                MI9take_trap(uint32_t(11u),int32_t(0),bool(1u));
            }
        }
    }
}
/**
 *  \brief  MI9opc_ecallIH5_3isa3isa11_9opc_ecall3opc
 */
inline void Sim::MI9opc_ecallIH5_3isa3isa11_9opc_ecall3opc()
{
    {
    }
}
/**
 *  \brief  MI8i_ebreakIH5_3isa3isa
 */
inline void Sim::MI8i_ebreakIH5_3isa3isa()
{
    {
        SIM_LOG(LOG_TYPE_PRINT, 3, m_SimCycleCounter)
             << "\n";
        {
            resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
            {
                MI9take_trap(codasip::Integer<5, false>(3u),MI4r_PC.read() - uint32_t(4u),bool(1u));
            }
        }
    }
}
/**
 *  \brief  MI10opc_ebreakIH5_3isa3isa13_10opc_ebreak3opc
 */
inline void Sim::MI10opc_ebreakIH5_3isa3isa13_10opc_ebreak3opc()
{
    {
    }
}
/**
 *  \brief  MI6i_xretIH5_3isa3isa
 */
inline void Sim::MI6i_xretIH5_3isa3isa()
{
    {
        {
            resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
            {
                MI7do_xret();
            }
        }
    }
}
/**
 *  \brief  MI8opc_mretIH5_3isa3isa10_8opc_xret3opc
 */
inline void Sim::MI8opc_mretIH5_3isa3isa10_8opc_xret3opc()
{
    {
    }
}
/**
 *  \brief  MI5i_wfiIH5_3isa3isa
 */
inline void Sim::MI5i_wfiIH5_3isa3isa()
{
    {
        {
            resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
            {
                MI14r_csr_minstret.write(MI14r_csr_minstret.read() + uint64_t(1ull));
                MI5r_wfi.write(int32_t(1));
            }
        }
    }
}
/**
 *  \brief  MI7opc_wfiIH5_3isa3isa9_7opc_wfi3opc
 */
inline void Sim::MI7opc_wfiIH5_3isa3isa9_7opc_wfi3opc()
{
    {
    }
}
/**
 *  \brief  MI7i_fenceIH5_3isa3isa
 */
inline void Sim::MI7i_fenceIH5_3isa3isa()
{
    {
        SIM_LOG(LOG_TYPE_INFO, 2, m_SimCycleCounter)
             << "Fence called with 0x"
             << codasip::ToUpper(codasip::Integer<4, 0>(MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.read()).GetHex())
             << ", 0x"
             << codasip::ToUpper(codasip::Integer<4, 0>(MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.read()).GetHex());
    }
}
/**
 *  \brief  MI9opc_fenceIH5_3isa3isa11_9opc_fence3opc
 */
inline void Sim::MI9opc_fenceIH5_3isa3isa11_9opc_fence3opc()
{
    {
    }
}
/**
 *  \brief  MI14opc_iorw_fenceIH5_3isa3isa18_15opc_fence_param6param1
 */
inline void Sim::MI14opc_iorw_fenceIH5_3isa3isa18_15opc_fence_param6param1()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.write(codasip::Integer<4, false>(15u));
    }
}
/**
 *  \brief  MI13opc_ior_fenceIH5_3isa3isa18_15opc_fence_param6param1
 */
inline void Sim::MI13opc_ior_fenceIH5_3isa3isa18_15opc_fence_param6param1()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.write(codasip::Integer<4, false>(14u));
    }
}
/**
 *  \brief  MI13opc_iow_fenceIH5_3isa3isa18_15opc_fence_param6param1
 */
inline void Sim::MI13opc_iow_fenceIH5_3isa3isa18_15opc_fence_param6param1()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.write(codasip::Integer<4, false>(13u));
    }
}
/**
 *  \brief  MI12opc_io_fenceIH5_3isa3isa18_15opc_fence_param6param1
 */
inline void Sim::MI12opc_io_fenceIH5_3isa3isa18_15opc_fence_param6param1()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.write(codasip::Integer<4, false>(12u));
    }
}
/**
 *  \brief  MI13opc_irw_fenceIH5_3isa3isa18_15opc_fence_param6param1
 */
inline void Sim::MI13opc_irw_fenceIH5_3isa3isa18_15opc_fence_param6param1()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.write(codasip::Integer<4, false>(11u));
    }
}
/**
 *  \brief  MI12opc_ir_fenceIH5_3isa3isa18_15opc_fence_param6param1
 */
inline void Sim::MI12opc_ir_fenceIH5_3isa3isa18_15opc_fence_param6param1()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.write(codasip::Integer<4, false>(10u));
    }
}
/**
 *  \brief  MI12opc_iw_fenceIH5_3isa3isa18_15opc_fence_param6param1
 */
inline void Sim::MI12opc_iw_fenceIH5_3isa3isa18_15opc_fence_param6param1()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.write(codasip::Integer<4, false>(9u));
    }
}
/**
 *  \brief  MI11opc_i_fenceIH5_3isa3isa18_15opc_fence_param6param1
 */
inline void Sim::MI11opc_i_fenceIH5_3isa3isa18_15opc_fence_param6param1()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.write(codasip::Integer<4, false>(8u));
    }
}
/**
 *  \brief  MI13opc_orw_fenceIH5_3isa3isa18_15opc_fence_param6param1
 */
inline void Sim::MI13opc_orw_fenceIH5_3isa3isa18_15opc_fence_param6param1()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.write(codasip::Integer<4, false>(7u));
    }
}
/**
 *  \brief  MI12opc_or_fenceIH5_3isa3isa18_15opc_fence_param6param1
 */
inline void Sim::MI12opc_or_fenceIH5_3isa3isa18_15opc_fence_param6param1()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.write(codasip::Integer<4, false>(6u));
    }
}
/**
 *  \brief  MI12opc_ow_fenceIH5_3isa3isa18_15opc_fence_param6param1
 */
inline void Sim::MI12opc_ow_fenceIH5_3isa3isa18_15opc_fence_param6param1()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.write(codasip::Integer<4, false>(5u));
    }
}
/**
 *  \brief  MI11opc_o_fenceIH5_3isa3isa18_15opc_fence_param6param1
 */
inline void Sim::MI11opc_o_fenceIH5_3isa3isa18_15opc_fence_param6param1()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.write(codasip::Integer<4, false>(4u));
    }
}
/**
 *  \brief  MI12opc_rw_fenceIH5_3isa3isa18_15opc_fence_param6param1
 */
inline void Sim::MI12opc_rw_fenceIH5_3isa3isa18_15opc_fence_param6param1()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.write(codasip::Integer<4, false>(3u));
    }
}
/**
 *  \brief  MI11opc_r_fenceIH5_3isa3isa18_15opc_fence_param6param1
 */
inline void Sim::MI11opc_r_fenceIH5_3isa3isa18_15opc_fence_param6param1()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.write(codasip::Integer<4, false>(2u));
    }
}
/**
 *  \brief  MI11opc_w_fenceIH5_3isa3isa18_15opc_fence_param6param1
 */
inline void Sim::MI11opc_w_fenceIH5_3isa3isa18_15opc_fence_param6param1()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.write(codasip::Integer<4, false>(1u));
    }
}
/**
 *  \brief  MI14opc_hint_fenceIH5_3isa3isa18_15opc_fence_param6param1
 */
inline void Sim::MI14opc_hint_fenceIH5_3isa3isa18_15opc_fence_param6param1()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.write(codasip::Integer<4, false>(0u));
    }
}
/**
 *  \brief  MI14opc_iorw_fenceIH5_3isa3isa18_15opc_fence_param6param2
 */
inline void Sim::MI14opc_iorw_fenceIH5_3isa3isa18_15opc_fence_param6param2()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.write(codasip::Integer<4, false>(15u));
    }
}
/**
 *  \brief  MI13opc_ior_fenceIH5_3isa3isa18_15opc_fence_param6param2
 */
inline void Sim::MI13opc_ior_fenceIH5_3isa3isa18_15opc_fence_param6param2()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.write(codasip::Integer<4, false>(14u));
    }
}
/**
 *  \brief  MI13opc_iow_fenceIH5_3isa3isa18_15opc_fence_param6param2
 */
inline void Sim::MI13opc_iow_fenceIH5_3isa3isa18_15opc_fence_param6param2()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.write(codasip::Integer<4, false>(13u));
    }
}
/**
 *  \brief  MI12opc_io_fenceIH5_3isa3isa18_15opc_fence_param6param2
 */
inline void Sim::MI12opc_io_fenceIH5_3isa3isa18_15opc_fence_param6param2()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.write(codasip::Integer<4, false>(12u));
    }
}
/**
 *  \brief  MI13opc_irw_fenceIH5_3isa3isa18_15opc_fence_param6param2
 */
inline void Sim::MI13opc_irw_fenceIH5_3isa3isa18_15opc_fence_param6param2()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.write(codasip::Integer<4, false>(11u));
    }
}
/**
 *  \brief  MI12opc_ir_fenceIH5_3isa3isa18_15opc_fence_param6param2
 */
inline void Sim::MI12opc_ir_fenceIH5_3isa3isa18_15opc_fence_param6param2()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.write(codasip::Integer<4, false>(10u));
    }
}
/**
 *  \brief  MI12opc_iw_fenceIH5_3isa3isa18_15opc_fence_param6param2
 */
inline void Sim::MI12opc_iw_fenceIH5_3isa3isa18_15opc_fence_param6param2()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.write(codasip::Integer<4, false>(9u));
    }
}
/**
 *  \brief  MI11opc_i_fenceIH5_3isa3isa18_15opc_fence_param6param2
 */
inline void Sim::MI11opc_i_fenceIH5_3isa3isa18_15opc_fence_param6param2()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.write(codasip::Integer<4, false>(8u));
    }
}
/**
 *  \brief  MI13opc_orw_fenceIH5_3isa3isa18_15opc_fence_param6param2
 */
inline void Sim::MI13opc_orw_fenceIH5_3isa3isa18_15opc_fence_param6param2()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.write(codasip::Integer<4, false>(7u));
    }
}
/**
 *  \brief  MI12opc_or_fenceIH5_3isa3isa18_15opc_fence_param6param2
 */
inline void Sim::MI12opc_or_fenceIH5_3isa3isa18_15opc_fence_param6param2()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.write(codasip::Integer<4, false>(6u));
    }
}
/**
 *  \brief  MI12opc_ow_fenceIH5_3isa3isa18_15opc_fence_param6param2
 */
inline void Sim::MI12opc_ow_fenceIH5_3isa3isa18_15opc_fence_param6param2()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.write(codasip::Integer<4, false>(5u));
    }
}
/**
 *  \brief  MI11opc_o_fenceIH5_3isa3isa18_15opc_fence_param6param2
 */
inline void Sim::MI11opc_o_fenceIH5_3isa3isa18_15opc_fence_param6param2()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.write(codasip::Integer<4, false>(4u));
    }
}
/**
 *  \brief  MI12opc_rw_fenceIH5_3isa3isa18_15opc_fence_param6param2
 */
inline void Sim::MI12opc_rw_fenceIH5_3isa3isa18_15opc_fence_param6param2()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.write(codasip::Integer<4, false>(3u));
    }
}
/**
 *  \brief  MI11opc_r_fenceIH5_3isa3isa18_15opc_fence_param6param2
 */
inline void Sim::MI11opc_r_fenceIH5_3isa3isa18_15opc_fence_param6param2()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.write(codasip::Integer<4, false>(2u));
    }
}
/**
 *  \brief  MI11opc_w_fenceIH5_3isa3isa18_15opc_fence_param6param2
 */
inline void Sim::MI11opc_w_fenceIH5_3isa3isa18_15opc_fence_param6param2()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.write(codasip::Integer<4, false>(1u));
    }
}
/**
 *  \brief  MI14opc_hint_fenceIH5_3isa3isa18_15opc_fence_param6param2
 */
inline void Sim::MI14opc_hint_fenceIH5_3isa3isa18_15opc_fence_param6param2()
{
    {
        MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.write(codasip::Integer<4, false>(0u));
    }
}
/**
 *  \brief  MI8i_fenceiIH5_3isa3isa
 */
inline void Sim::MI8i_fenceiIH5_3isa3isa()
{
    {
    }
}
/**
 *  \brief  MI10opc_fenceiIH5_3isa3isa13_10opc_fencei3opc
 */
inline void Sim::MI10opc_fenceiIH5_3isa3isa13_10opc_fencei3opc()
{
    {
    }
}
/**
 *  \brief  MI7i_unimpIH5_3isa3isa
 */
inline void Sim::MI7i_unimpIH5_3isa3isa()
{
    {
        {
            resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
            {
                MI15r_illegal_instr.write(int32_t(1));
            }
        }
    }
}
/**
 *  \brief  MI9opc_unimpIH5_3isa3isa11_9opc_unimp3opc
 */
inline void Sim::MI9opc_unimpIH5_3isa3isa11_9opc_unimp3opc()
{
    {
    }
}
/**
 *  \brief  MI11opc_rdcycleIH5_3isa3isa22_19opc_timers_counters3opc
 */
inline void Sim::MI11opc_rdcycleIH5_3isa3isa22_19opc_timers_counters3opc()
{
    {
    }
}
/**
 *  \brief  MI10opc_rdtimeIH5_3isa3isa22_19opc_timers_counters3opc
 */
inline void Sim::MI10opc_rdtimeIH5_3isa3isa22_19opc_timers_counters3opc()
{
    {
    }
}
/**
 *  \brief  MI13opc_rdinstretIH5_3isa3isa22_19opc_timers_counters3opc
 */
inline void Sim::MI13opc_rdinstretIH5_3isa3isa22_19opc_timers_counters3opc()
{
    {
    }
}
/**
 *  \brief  MI12opc_rdcyclehIH5_3isa3isa22_19opc_timers_counters3opc
 */
inline void Sim::MI12opc_rdcyclehIH5_3isa3isa22_19opc_timers_counters3opc()
{
    {
    }
}
/**
 *  \brief  MI11opc_rdtimehIH5_3isa3isa22_19opc_timers_counters3opc
 */
inline void Sim::MI11opc_rdtimehIH5_3isa3isa22_19opc_timers_counters3opc()
{
    {
    }
}
/**
 *  \brief  MI14opc_rdinstrethIH5_3isa3isa22_19opc_timers_counters3opc
 */
inline void Sim::MI14opc_rdinstrethIH5_3isa3isa22_19opc_timers_counters3opc()
{
    {
    }
}
/**
 *  \brief  MI8i_lui_hiIH5_3isa3isa
 */
inline void Sim::MI8i_lui_hiIH5_3isa3isa()
{
    {
        MI3valIH5_3isa3isa1_8i_lui_hiB0.write(static_cast<int32_t>((MI54codasip_return_MI8imm20_hiIH5_3isa3isa10_8imm20_hi3imm.read())));
        MI12rf_gpr_write(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.read(),MI3valIH5_3isa3isa1_8i_lui_hiB0.read());
    }
}
/**
 *  \brief  MI11i_neg_aliasIH5_3isa3isa
 */
inline void Sim::MI11i_neg_aliasIH5_3isa3isa()
{
    {
        MI12rf_gpr_write(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.read(),MI7compute(codasip::Integer<17, false>(32819u),int32_t(0),MI11rf_gpr_read(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.read())));
    }
}
/**
 *  \brief  MI11i_nop_aliasIH5_3isa3isa
 */
inline void Sim::MI11i_nop_aliasIH5_3isa3isa()
{
    {
    }
}
/**
 *  \brief  MI10i_mv_aliasIH5_3isa3isa
 */
inline void Sim::MI10i_mv_aliasIH5_3isa3isa()
{
    {
        MI12rf_gpr_write(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.read(),MI11rf_gpr_read(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.read()));
    }
}
/**
 *  \brief  MI12i_seqz_aliasIH5_3isa3isa
 */
inline void Sim::MI12i_seqz_aliasIH5_3isa3isa()
{
    {
        MI12rf_gpr_write(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.read(),MI7compute(codasip::Integer<10, false>(403u),MI11rf_gpr_read(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.read()),int32_t(1)));
    }
}
/**
 *  \brief  MI14i_get_pc_aliasIH5_3isa3isa
 */
inline void Sim::MI14i_get_pc_aliasIH5_3isa3isa()
{
    {
        MI12rf_gpr_write(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.read(),(MI4r_PC.read() - uint32_t(4u)));
    }
}
/**
 *  \brief  MI12i_snez_aliasIH5_3isa3isa
 */
inline void Sim::MI12i_snez_aliasIH5_3isa3isa()
{
    {
        MI12rf_gpr_write(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.read(),MI7compute(codasip::Integer<17, false>(435u),int32_t(0),MI11rf_gpr_read(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.read())));
    }
}
/**
 *  \brief  MI16i_jump_reg_aliasIH5_3isa3isa
 */
inline void Sim::MI16i_jump_reg_aliasIH5_3isa3isa()
{
    {
        MI4r_PC.write(static_cast<uint64_t>(MI11rf_gpr_read(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.read())) & uint64_t(18446744073709551614ull));
    }
}
/**
 *  \brief  MI15i_jmp_rel_aliasIH5_3isa3isa
 */
inline void Sim::MI15i_jmp_rel_aliasIH5_3isa3isa()
{
    {
        MI4r_PC.write(static_cast<int32_t>((MI4r_PC.read() - uint32_t(4u))) + static_cast<int32_t>((MI61codasip_return_MI10rel_addr20IH5_3isa3isa13_10rel_addr204addr.read())));
    }
}
/**
 *  \brief  MI16i_call_rel_aliasIH5_3isa3isa
 */
inline void Sim::MI16i_call_rel_aliasIH5_3isa3isa()
{
    {
        MI3tmpIH5_3isa3isa1_16i_call_rel_aliasB0.write(MI4r_PC.read());
        MI4r_PC.write(static_cast<int32_t>((MI4r_PC.read() - uint32_t(4u))) + static_cast<int32_t>((MI61codasip_return_MI10rel_addr20IH5_3isa3isa13_10rel_addr204addr.read())));
        MI12rf_gpr_write(int32_t(1),MI3tmpIH5_3isa3isa1_16i_call_rel_aliasB0.read());
    }
}
/**
 *  \brief  MI16i_call_reg_aliasIH5_3isa3isa
 */
inline void Sim::MI16i_call_reg_aliasIH5_3isa3isa()
{
    {
        MI3tmpIH5_3isa3isa1_16i_call_reg_aliasB0.write(MI4r_PC.read());
        MI4r_PC.write(static_cast<uint64_t>(MI11rf_gpr_read(MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.read())) & uint64_t(18446744073709551614ull));
        MI12rf_gpr_write(int32_t(1),MI3tmpIH5_3isa3isa1_16i_call_reg_aliasB0.read());
    }
}
/**
 *  \brief  MI21opc_hackaton_custom_aIH5_3isa3isa24_21opc_hackaton_custom_i3opc
 */
inline void Sim::MI21opc_hackaton_custom_aIH5_3isa3isa24_21opc_hackaton_custom_i3opc()
{
    {
        MI82codasip_return_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc.write(codasip::Integer<3, false>(0u));
    }
}
/**
 *  \brief  MI21opc_hackaton_custom_bIH5_3isa3isa24_21opc_hackaton_custom_i3opc
 */
inline void Sim::MI21opc_hackaton_custom_bIH5_3isa3isa24_21opc_hackaton_custom_i3opc()
{
    {
        MI82codasip_return_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc.write(codasip::Integer<3, false>(1u));
    }
}
/**
 *  \brief  MI21opc_hackaton_custom_cIH5_3isa3isa24_21opc_hackaton_custom_i3opc
 */
inline void Sim::MI21opc_hackaton_custom_cIH5_3isa3isa24_21opc_hackaton_custom_i3opc()
{
    {
        MI82codasip_return_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc.write(codasip::Integer<3, false>(2u));
    }
}
/**
 *  \brief  MI21opc_hackaton_custom_dIH5_3isa3isa24_21opc_hackaton_custom_i3opc
 */
inline void Sim::MI21opc_hackaton_custom_dIH5_3isa3isa24_21opc_hackaton_custom_i3opc()
{
    {
        MI82codasip_return_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc.write(codasip::Integer<3, false>(3u));
    }
}
/**
 *  \brief  MI21opc_hackaton_custom_eIH5_3isa3isa24_21opc_hackaton_custom_i3opc
 */
inline void Sim::MI21opc_hackaton_custom_eIH5_3isa3isa24_21opc_hackaton_custom_i3opc()
{
    {
        MI82codasip_return_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc.write(codasip::Integer<3, false>(4u));
    }
}
/**
 *  \brief  MI4reg1IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI4reg1IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(1));
    }
}
/**
 *  \brief  MI10reg1_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI10reg1_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(1));
    }
}
/**
 *  \brief  MI4reg2IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI4reg2IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(2));
    }
}
/**
 *  \brief  MI10reg2_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI10reg2_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(2));
    }
}
/**
 *  \brief  MI4reg3IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI4reg3IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(3));
    }
}
/**
 *  \brief  MI10reg3_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI10reg3_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(3));
    }
}
/**
 *  \brief  MI4reg4IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI4reg4IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(4));
    }
}
/**
 *  \brief  MI10reg4_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI10reg4_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(4));
    }
}
/**
 *  \brief  MI4reg5IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI4reg5IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(5));
    }
}
/**
 *  \brief  MI10reg5_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI10reg5_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(5));
    }
}
/**
 *  \brief  MI4reg6IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI4reg6IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(6));
    }
}
/**
 *  \brief  MI10reg6_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI10reg6_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(6));
    }
}
/**
 *  \brief  MI4reg7IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI4reg7IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(7));
    }
}
/**
 *  \brief  MI10reg7_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI10reg7_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(7));
    }
}
/**
 *  \brief  MI4reg8IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI4reg8IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(8));
    }
}
/**
 *  \brief  MI11reg8_alias1IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg8_alias1IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(8));
    }
}
/**
 *  \brief  MI11reg8_alias2IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg8_alias2IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(8));
    }
}
/**
 *  \brief  MI4reg9IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI4reg9IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(9));
    }
}
/**
 *  \brief  MI10reg9_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI10reg9_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(9));
    }
}
/**
 *  \brief  MI5reg10IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg10IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(10));
    }
}
/**
 *  \brief  MI11reg10_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg10_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(10));
    }
}
/**
 *  \brief  MI5reg11IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg11IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(11));
    }
}
/**
 *  \brief  MI11reg11_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg11_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(11));
    }
}
/**
 *  \brief  MI5reg12IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg12IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(12));
    }
}
/**
 *  \brief  MI11reg12_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg12_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(12));
    }
}
/**
 *  \brief  MI5reg13IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg13IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(13));
    }
}
/**
 *  \brief  MI11reg13_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg13_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(13));
    }
}
/**
 *  \brief  MI5reg14IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg14IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(14));
    }
}
/**
 *  \brief  MI11reg14_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg14_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(14));
    }
}
/**
 *  \brief  MI5reg15IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg15IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(15));
    }
}
/**
 *  \brief  MI11reg15_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg15_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(15));
    }
}
/**
 *  \brief  MI5reg16IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg16IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(16));
    }
}
/**
 *  \brief  MI11reg16_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg16_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(16));
    }
}
/**
 *  \brief  MI5reg17IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg17IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(17));
    }
}
/**
 *  \brief  MI11reg17_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg17_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(17));
    }
}
/**
 *  \brief  MI5reg18IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg18IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(18));
    }
}
/**
 *  \brief  MI11reg18_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg18_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(18));
    }
}
/**
 *  \brief  MI5reg19IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg19IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(19));
    }
}
/**
 *  \brief  MI11reg19_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg19_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(19));
    }
}
/**
 *  \brief  MI5reg20IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg20IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(20));
    }
}
/**
 *  \brief  MI11reg20_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg20_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(20));
    }
}
/**
 *  \brief  MI5reg21IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg21IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(21));
    }
}
/**
 *  \brief  MI11reg21_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg21_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(21));
    }
}
/**
 *  \brief  MI5reg22IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg22IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(22));
    }
}
/**
 *  \brief  MI11reg22_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg22_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(22));
    }
}
/**
 *  \brief  MI5reg23IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg23IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(23));
    }
}
/**
 *  \brief  MI11reg23_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg23_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(23));
    }
}
/**
 *  \brief  MI5reg24IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg24IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(24));
    }
}
/**
 *  \brief  MI11reg24_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg24_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(24));
    }
}
/**
 *  \brief  MI5reg25IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg25IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(25));
    }
}
/**
 *  \brief  MI11reg25_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg25_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(25));
    }
}
/**
 *  \brief  MI5reg26IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg26IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(26));
    }
}
/**
 *  \brief  MI11reg26_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg26_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(26));
    }
}
/**
 *  \brief  MI5reg27IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg27IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(27));
    }
}
/**
 *  \brief  MI11reg27_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg27_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(27));
    }
}
/**
 *  \brief  MI5reg28IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg28IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(28));
    }
}
/**
 *  \brief  MI11reg28_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg28_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(28));
    }
}
/**
 *  \brief  MI5reg29IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg29IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(29));
    }
}
/**
 *  \brief  MI11reg29_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg29_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(29));
    }
}
/**
 *  \brief  MI5reg30IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg30IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(30));
    }
}
/**
 *  \brief  MI11reg30_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg30_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(30));
    }
}
/**
 *  \brief  MI5reg31IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI5reg31IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(31));
    }
}
/**
 *  \brief  MI11reg31_aliasIH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI11reg31_aliasIH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(31));
    }
}
/**
 *  \brief  MI4reg0IH5_3isa3isa9_7reg_any3dst
 */
inline void Sim::MI4reg0IH5_3isa3isa9_7reg_any3dst()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.write(int32_t(0));
    }
}
/**
 *  \brief  MI4reg1IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI4reg1IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(1));
    }
}
/**
 *  \brief  MI10reg1_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI10reg1_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(1));
    }
}
/**
 *  \brief  MI4reg2IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI4reg2IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(2));
    }
}
/**
 *  \brief  MI10reg2_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI10reg2_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(2));
    }
}
/**
 *  \brief  MI4reg3IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI4reg3IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(3));
    }
}
/**
 *  \brief  MI10reg3_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI10reg3_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(3));
    }
}
/**
 *  \brief  MI4reg4IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI4reg4IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(4));
    }
}
/**
 *  \brief  MI10reg4_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI10reg4_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(4));
    }
}
/**
 *  \brief  MI4reg5IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI4reg5IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(5));
    }
}
/**
 *  \brief  MI10reg5_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI10reg5_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(5));
    }
}
/**
 *  \brief  MI4reg6IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI4reg6IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(6));
    }
}
/**
 *  \brief  MI10reg6_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI10reg6_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(6));
    }
}
/**
 *  \brief  MI4reg7IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI4reg7IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(7));
    }
}
/**
 *  \brief  MI10reg7_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI10reg7_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(7));
    }
}
/**
 *  \brief  MI4reg8IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI4reg8IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(8));
    }
}
/**
 *  \brief  MI11reg8_alias1IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg8_alias1IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(8));
    }
}
/**
 *  \brief  MI11reg8_alias2IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg8_alias2IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(8));
    }
}
/**
 *  \brief  MI4reg9IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI4reg9IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(9));
    }
}
/**
 *  \brief  MI10reg9_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI10reg9_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(9));
    }
}
/**
 *  \brief  MI5reg10IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg10IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(10));
    }
}
/**
 *  \brief  MI11reg10_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg10_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(10));
    }
}
/**
 *  \brief  MI5reg11IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg11IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(11));
    }
}
/**
 *  \brief  MI11reg11_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg11_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(11));
    }
}
/**
 *  \brief  MI5reg12IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg12IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(12));
    }
}
/**
 *  \brief  MI11reg12_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg12_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(12));
    }
}
/**
 *  \brief  MI5reg13IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg13IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(13));
    }
}
/**
 *  \brief  MI11reg13_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg13_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(13));
    }
}
/**
 *  \brief  MI5reg14IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg14IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(14));
    }
}
/**
 *  \brief  MI11reg14_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg14_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(14));
    }
}
/**
 *  \brief  MI5reg15IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg15IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(15));
    }
}
/**
 *  \brief  MI11reg15_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg15_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(15));
    }
}
/**
 *  \brief  MI5reg16IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg16IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(16));
    }
}
/**
 *  \brief  MI11reg16_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg16_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(16));
    }
}
/**
 *  \brief  MI5reg17IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg17IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(17));
    }
}
/**
 *  \brief  MI11reg17_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg17_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(17));
    }
}
/**
 *  \brief  MI5reg18IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg18IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(18));
    }
}
/**
 *  \brief  MI11reg18_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg18_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(18));
    }
}
/**
 *  \brief  MI5reg19IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg19IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(19));
    }
}
/**
 *  \brief  MI11reg19_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg19_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(19));
    }
}
/**
 *  \brief  MI5reg20IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg20IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(20));
    }
}
/**
 *  \brief  MI11reg20_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg20_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(20));
    }
}
/**
 *  \brief  MI5reg21IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg21IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(21));
    }
}
/**
 *  \brief  MI11reg21_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg21_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(21));
    }
}
/**
 *  \brief  MI5reg22IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg22IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(22));
    }
}
/**
 *  \brief  MI11reg22_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg22_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(22));
    }
}
/**
 *  \brief  MI5reg23IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg23IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(23));
    }
}
/**
 *  \brief  MI11reg23_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg23_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(23));
    }
}
/**
 *  \brief  MI5reg24IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg24IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(24));
    }
}
/**
 *  \brief  MI11reg24_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg24_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(24));
    }
}
/**
 *  \brief  MI5reg25IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg25IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(25));
    }
}
/**
 *  \brief  MI11reg25_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg25_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(25));
    }
}
/**
 *  \brief  MI5reg26IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg26IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(26));
    }
}
/**
 *  \brief  MI11reg26_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg26_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(26));
    }
}
/**
 *  \brief  MI5reg27IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg27IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(27));
    }
}
/**
 *  \brief  MI11reg27_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg27_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(27));
    }
}
/**
 *  \brief  MI5reg28IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg28IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(28));
    }
}
/**
 *  \brief  MI11reg28_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg28_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(28));
    }
}
/**
 *  \brief  MI5reg29IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg29IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(29));
    }
}
/**
 *  \brief  MI11reg29_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg29_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(29));
    }
}
/**
 *  \brief  MI5reg30IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg30IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(30));
    }
}
/**
 *  \brief  MI11reg30_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg30_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(30));
    }
}
/**
 *  \brief  MI5reg31IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI5reg31IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(31));
    }
}
/**
 *  \brief  MI11reg31_aliasIH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI11reg31_aliasIH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(31));
    }
}
/**
 *  \brief  MI4reg0IH5_3isa3isa9_7reg_any3src
 */
inline void Sim::MI4reg0IH5_3isa3isa9_7reg_any3src()
{
    {
        MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.write(int32_t(0));
    }
}
/**
 *  \brief  MI11csr_mstatusIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI11csr_mstatusIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(768u));
    }
}
/**
 *  \brief  MI7csr_mieIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI7csr_mieIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(772u));
    }
}
/**
 *  \brief  MI9csr_mtvecIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI9csr_mtvecIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(773u));
    }
}
/**
 *  \brief  MI17csr_mcountinhibitIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mcountinhibitIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(800u));
    }
}
/**
 *  \brief  MI14csr_mhpmevent3IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI14csr_mhpmevent3IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(803u));
    }
}
/**
 *  \brief  MI14csr_mhpmevent4IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI14csr_mhpmevent4IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(804u));
    }
}
/**
 *  \brief  MI14csr_mhpmevent5IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI14csr_mhpmevent5IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(805u));
    }
}
/**
 *  \brief  MI14csr_mhpmevent6IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI14csr_mhpmevent6IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(806u));
    }
}
/**
 *  \brief  MI14csr_mhpmevent7IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI14csr_mhpmevent7IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(807u));
    }
}
/**
 *  \brief  MI14csr_mhpmevent8IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI14csr_mhpmevent8IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(808u));
    }
}
/**
 *  \brief  MI14csr_mhpmevent9IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI14csr_mhpmevent9IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(809u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent10IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent10IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(810u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent11IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent11IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(811u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent12IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent12IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(812u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent13IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent13IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(813u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent14IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent14IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(814u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent15IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent15IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(815u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent16IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent16IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(816u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent17IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent17IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(817u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent18IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent18IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(818u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent19IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent19IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(819u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent20IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent20IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(820u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent21IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent21IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(821u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent22IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent22IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(822u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent23IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent23IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(823u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent24IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent24IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(824u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent25IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent25IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(825u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent26IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent26IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(826u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent27IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent27IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(827u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent28IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent28IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(828u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent29IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent29IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(829u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent30IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent30IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(830u));
    }
}
/**
 *  \brief  MI15csr_mhpmevent31IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI15csr_mhpmevent31IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(831u));
    }
}
/**
 *  \brief  MI12csr_mscratchIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI12csr_mscratchIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(832u));
    }
}
/**
 *  \brief  MI8csr_mepcIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI8csr_mepcIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(833u));
    }
}
/**
 *  \brief  MI10csr_mcauseIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI10csr_mcauseIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(834u));
    }
}
/**
 *  \brief  MI9csr_mtvalIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI9csr_mtvalIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(835u));
    }
}
/**
 *  \brief  MI7csr_mipIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI7csr_mipIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(836u));
    }
}
/**
 *  \brief  MI7csr_nmiIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI7csr_nmiIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(4033u));
    }
}
/**
 *  \brief  MI13csr_nmi_mtvalIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI13csr_nmi_mtvalIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(4038u));
    }
}
/**
 *  \brief  MI10csr_mcycleIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI10csr_mcycleIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2816u));
    }
}
/**
 *  \brief  MI12csr_minstretIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI12csr_minstretIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2818u));
    }
}
/**
 *  \brief  MI16csr_mhpmcounter3IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI16csr_mhpmcounter3IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2819u));
    }
}
/**
 *  \brief  MI16csr_mhpmcounter4IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI16csr_mhpmcounter4IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2820u));
    }
}
/**
 *  \brief  MI16csr_mhpmcounter5IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI16csr_mhpmcounter5IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2821u));
    }
}
/**
 *  \brief  MI16csr_mhpmcounter6IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI16csr_mhpmcounter6IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2822u));
    }
}
/**
 *  \brief  MI16csr_mhpmcounter7IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI16csr_mhpmcounter7IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2823u));
    }
}
/**
 *  \brief  MI16csr_mhpmcounter8IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI16csr_mhpmcounter8IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2824u));
    }
}
/**
 *  \brief  MI16csr_mhpmcounter9IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI16csr_mhpmcounter9IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2825u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter10IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter10IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2826u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter11IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter11IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2827u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter12IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter12IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2828u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter13IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter13IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2829u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter14IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter14IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2830u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter15IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter15IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2831u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter16IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter16IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2832u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter17IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter17IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2833u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter18IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter18IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2834u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter19IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter19IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2835u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter20IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter20IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2836u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter21IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter21IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2837u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter22IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter22IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2838u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter23IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter23IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2839u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter24IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter24IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2840u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter25IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter25IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2841u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter26IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter26IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2842u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter27IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter27IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2843u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter28IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter28IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2844u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter29IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter29IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2845u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter30IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter30IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2846u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter31IH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter31IH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2847u));
    }
}
/**
 *  \brief  MI8csr_misaIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI8csr_misaIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(769u));
    }
}
/**
 *  \brief  MI13csr_mvendoridIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI13csr_mvendoridIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(3857u));
    }
}
/**
 *  \brief  MI11csr_marchidIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI11csr_marchidIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(3858u));
    }
}
/**
 *  \brief  MI10csr_mimpidIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI10csr_mimpidIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(3859u));
    }
}
/**
 *  \brief  MI11csr_mhartidIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI11csr_mhartidIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(3860u));
    }
}
/**
 *  \brief  MI11csr_mcyclehIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI11csr_mcyclehIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2944u));
    }
}
/**
 *  \brief  MI13csr_minstrethIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI13csr_minstrethIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2946u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter3hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter3hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2947u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter4hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter4hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2948u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter5hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter5hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2949u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter6hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter6hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2950u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter7hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter7hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2951u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter8hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter8hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2952u));
    }
}
/**
 *  \brief  MI17csr_mhpmcounter9hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI17csr_mhpmcounter9hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2953u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter10hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter10hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2954u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter11hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter11hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2955u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter12hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter12hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2956u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter13hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter13hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2957u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter14hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter14hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2958u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter15hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter15hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2959u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter16hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter16hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2960u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter17hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter17hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2961u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter18hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter18hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2962u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter19hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter19hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2963u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter20hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter20hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2964u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter21hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter21hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2965u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter22hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter22hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2966u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter23hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter23hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2967u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter24hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter24hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2968u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter25hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter25hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2969u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter26hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter26hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2970u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter27hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter27hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2971u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter28hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter28hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2972u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter29hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter29hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2973u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter30hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter30hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2974u));
    }
}
/**
 *  \brief  MI18csr_mhpmcounter31hIH5_3isa3isa8_6op_csr3csr
 */
inline void Sim::MI18csr_mhpmcounter31hIH5_3isa3isa8_6op_csr3csr()
{
    {
        MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.write(codasip::Integer<12, false>(2975u));
    }
}
/**
 *  \brief  MI4imm5IH5_3isa3isa6_4imm53imm
 */
inline void Sim::MI4imm5IH5_3isa3isa6_4imm53imm()
{
    {
        MI45codasip_return_MI4imm5IH5_3isa3isa6_4imm53imm.write(MI3immIH5_3isa3isa6_4imm53imm1_4imm5.read());
    }
}
/**
 *  \brief  MI13simm12_simpleIH5_3isa3isa8_6simm126simm12
 */
inline void Sim::MI13simm12_simpleIH5_3isa3isa8_6simm126simm12()
{
    {
        MI52codasip_return_MI6simm12IH5_3isa3isa8_6simm126simm12.write(MI4simmIH5_3isa3isa8_6simm126simm121_13simm12_simple.read());
    }
}
/**
 *  \brief  MI9simm12_loIH5_3isa3isa8_6simm126simm12
 */
inline void Sim::MI9simm12_loIH5_3isa3isa8_6simm126simm12()
{
    {
        MI52codasip_return_MI6simm12IH5_3isa3isa8_6simm126simm12.write(static_cast<codasip::Integer<12, true>>(MI3valIH5_3isa3isa8_6simm126simm121_9simm12_lo.read()));
    }
}
/**
 *  \brief  MI15simm12_pcrel_loIH5_3isa3isa8_6simm126simm12
 */
inline void Sim::MI15simm12_pcrel_loIH5_3isa3isa8_6simm126simm12()
{
    {
        MI52codasip_return_MI6simm12IH5_3isa3isa8_6simm126simm12.write(static_cast<codasip::Integer<12, true>>(MI3valIH5_3isa3isa8_6simm126simm121_15simm12_pcrel_lo.read()));
    }
}
/**
 *  \brief  MI9shift_immIH5_3isa3isa11_9shift_imm3imm
 */
inline void Sim::MI9shift_immIH5_3isa3isa11_9shift_imm3imm()
{
    {
        MI56codasip_return_MI9shift_immIH5_3isa3isa11_9shift_imm3imm.write(MI5shiftIH5_3isa3isa11_9shift_imm3imm1_9shift_imm.read());
    }
}
/**
 *  \brief  MI9imm20_s12IH5_3isa3isa11_9imm20_s123imm
 */
inline void Sim::MI9imm20_s12IH5_3isa3isa11_9imm20_s123imm()
{
    {
        MI56codasip_return_MI9imm20_s12IH5_3isa3isa11_9imm20_s123imm.write(static_cast<int32_t>(MI3immIH5_3isa3isa11_9imm20_s123imm1_9imm20_s12.read()) << int32_t(12));
    }
}
/**
 *  \brief  MI4reg1IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI4reg1IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(1));
    }
}
/**
 *  \brief  MI10reg1_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI10reg1_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(1));
    }
}
/**
 *  \brief  MI4reg2IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI4reg2IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(2));
    }
}
/**
 *  \brief  MI10reg2_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI10reg2_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(2));
    }
}
/**
 *  \brief  MI4reg3IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI4reg3IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(3));
    }
}
/**
 *  \brief  MI10reg3_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI10reg3_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(3));
    }
}
/**
 *  \brief  MI4reg4IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI4reg4IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(4));
    }
}
/**
 *  \brief  MI10reg4_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI10reg4_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(4));
    }
}
/**
 *  \brief  MI4reg5IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI4reg5IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(5));
    }
}
/**
 *  \brief  MI10reg5_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI10reg5_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(5));
    }
}
/**
 *  \brief  MI4reg6IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI4reg6IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(6));
    }
}
/**
 *  \brief  MI10reg6_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI10reg6_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(6));
    }
}
/**
 *  \brief  MI4reg7IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI4reg7IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(7));
    }
}
/**
 *  \brief  MI10reg7_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI10reg7_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(7));
    }
}
/**
 *  \brief  MI4reg8IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI4reg8IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(8));
    }
}
/**
 *  \brief  MI11reg8_alias1IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg8_alias1IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(8));
    }
}
/**
 *  \brief  MI11reg8_alias2IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg8_alias2IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(8));
    }
}
/**
 *  \brief  MI4reg9IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI4reg9IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(9));
    }
}
/**
 *  \brief  MI10reg9_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI10reg9_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(9));
    }
}
/**
 *  \brief  MI5reg10IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg10IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(10));
    }
}
/**
 *  \brief  MI11reg10_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg10_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(10));
    }
}
/**
 *  \brief  MI5reg11IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg11IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(11));
    }
}
/**
 *  \brief  MI11reg11_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg11_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(11));
    }
}
/**
 *  \brief  MI5reg12IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg12IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(12));
    }
}
/**
 *  \brief  MI11reg12_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg12_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(12));
    }
}
/**
 *  \brief  MI5reg13IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg13IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(13));
    }
}
/**
 *  \brief  MI11reg13_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg13_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(13));
    }
}
/**
 *  \brief  MI5reg14IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg14IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(14));
    }
}
/**
 *  \brief  MI11reg14_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg14_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(14));
    }
}
/**
 *  \brief  MI5reg15IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg15IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(15));
    }
}
/**
 *  \brief  MI11reg15_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg15_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(15));
    }
}
/**
 *  \brief  MI5reg16IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg16IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(16));
    }
}
/**
 *  \brief  MI11reg16_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg16_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(16));
    }
}
/**
 *  \brief  MI5reg17IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg17IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(17));
    }
}
/**
 *  \brief  MI11reg17_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg17_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(17));
    }
}
/**
 *  \brief  MI5reg18IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg18IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(18));
    }
}
/**
 *  \brief  MI11reg18_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg18_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(18));
    }
}
/**
 *  \brief  MI5reg19IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg19IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(19));
    }
}
/**
 *  \brief  MI11reg19_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg19_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(19));
    }
}
/**
 *  \brief  MI5reg20IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg20IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(20));
    }
}
/**
 *  \brief  MI11reg20_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg20_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(20));
    }
}
/**
 *  \brief  MI5reg21IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg21IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(21));
    }
}
/**
 *  \brief  MI11reg21_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg21_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(21));
    }
}
/**
 *  \brief  MI5reg22IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg22IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(22));
    }
}
/**
 *  \brief  MI11reg22_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg22_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(22));
    }
}
/**
 *  \brief  MI5reg23IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg23IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(23));
    }
}
/**
 *  \brief  MI11reg23_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg23_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(23));
    }
}
/**
 *  \brief  MI5reg24IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg24IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(24));
    }
}
/**
 *  \brief  MI11reg24_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg24_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(24));
    }
}
/**
 *  \brief  MI5reg25IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg25IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(25));
    }
}
/**
 *  \brief  MI11reg25_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg25_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(25));
    }
}
/**
 *  \brief  MI5reg26IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg26IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(26));
    }
}
/**
 *  \brief  MI11reg26_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg26_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(26));
    }
}
/**
 *  \brief  MI5reg27IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg27IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(27));
    }
}
/**
 *  \brief  MI11reg27_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg27_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(27));
    }
}
/**
 *  \brief  MI5reg28IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg28IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(28));
    }
}
/**
 *  \brief  MI11reg28_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg28_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(28));
    }
}
/**
 *  \brief  MI5reg29IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg29IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(29));
    }
}
/**
 *  \brief  MI11reg29_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg29_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(29));
    }
}
/**
 *  \brief  MI5reg30IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg30IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(30));
    }
}
/**
 *  \brief  MI11reg30_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg30_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(30));
    }
}
/**
 *  \brief  MI5reg31IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI5reg31IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(31));
    }
}
/**
 *  \brief  MI11reg31_aliasIH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI11reg31_aliasIH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(31));
    }
}
/**
 *  \brief  MI4reg0IH5_3isa3isa9_7reg_any4src1
 */
inline void Sim::MI4reg0IH5_3isa3isa9_7reg_any4src1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.write(int32_t(0));
    }
}
/**
 *  \brief  MI4reg1IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI4reg1IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(1));
    }
}
/**
 *  \brief  MI10reg1_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI10reg1_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(1));
    }
}
/**
 *  \brief  MI4reg2IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI4reg2IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(2));
    }
}
/**
 *  \brief  MI10reg2_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI10reg2_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(2));
    }
}
/**
 *  \brief  MI4reg3IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI4reg3IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(3));
    }
}
/**
 *  \brief  MI10reg3_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI10reg3_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(3));
    }
}
/**
 *  \brief  MI4reg4IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI4reg4IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(4));
    }
}
/**
 *  \brief  MI10reg4_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI10reg4_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(4));
    }
}
/**
 *  \brief  MI4reg5IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI4reg5IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(5));
    }
}
/**
 *  \brief  MI10reg5_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI10reg5_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(5));
    }
}
/**
 *  \brief  MI4reg6IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI4reg6IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(6));
    }
}
/**
 *  \brief  MI10reg6_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI10reg6_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(6));
    }
}
/**
 *  \brief  MI4reg7IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI4reg7IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(7));
    }
}
/**
 *  \brief  MI10reg7_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI10reg7_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(7));
    }
}
/**
 *  \brief  MI4reg8IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI4reg8IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(8));
    }
}
/**
 *  \brief  MI11reg8_alias1IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg8_alias1IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(8));
    }
}
/**
 *  \brief  MI11reg8_alias2IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg8_alias2IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(8));
    }
}
/**
 *  \brief  MI4reg9IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI4reg9IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(9));
    }
}
/**
 *  \brief  MI10reg9_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI10reg9_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(9));
    }
}
/**
 *  \brief  MI5reg10IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg10IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(10));
    }
}
/**
 *  \brief  MI11reg10_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg10_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(10));
    }
}
/**
 *  \brief  MI5reg11IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg11IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(11));
    }
}
/**
 *  \brief  MI11reg11_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg11_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(11));
    }
}
/**
 *  \brief  MI5reg12IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg12IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(12));
    }
}
/**
 *  \brief  MI11reg12_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg12_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(12));
    }
}
/**
 *  \brief  MI5reg13IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg13IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(13));
    }
}
/**
 *  \brief  MI11reg13_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg13_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(13));
    }
}
/**
 *  \brief  MI5reg14IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg14IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(14));
    }
}
/**
 *  \brief  MI11reg14_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg14_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(14));
    }
}
/**
 *  \brief  MI5reg15IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg15IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(15));
    }
}
/**
 *  \brief  MI11reg15_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg15_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(15));
    }
}
/**
 *  \brief  MI5reg16IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg16IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(16));
    }
}
/**
 *  \brief  MI11reg16_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg16_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(16));
    }
}
/**
 *  \brief  MI5reg17IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg17IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(17));
    }
}
/**
 *  \brief  MI11reg17_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg17_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(17));
    }
}
/**
 *  \brief  MI5reg18IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg18IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(18));
    }
}
/**
 *  \brief  MI11reg18_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg18_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(18));
    }
}
/**
 *  \brief  MI5reg19IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg19IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(19));
    }
}
/**
 *  \brief  MI11reg19_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg19_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(19));
    }
}
/**
 *  \brief  MI5reg20IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg20IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(20));
    }
}
/**
 *  \brief  MI11reg20_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg20_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(20));
    }
}
/**
 *  \brief  MI5reg21IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg21IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(21));
    }
}
/**
 *  \brief  MI11reg21_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg21_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(21));
    }
}
/**
 *  \brief  MI5reg22IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg22IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(22));
    }
}
/**
 *  \brief  MI11reg22_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg22_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(22));
    }
}
/**
 *  \brief  MI5reg23IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg23IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(23));
    }
}
/**
 *  \brief  MI11reg23_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg23_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(23));
    }
}
/**
 *  \brief  MI5reg24IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg24IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(24));
    }
}
/**
 *  \brief  MI11reg24_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg24_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(24));
    }
}
/**
 *  \brief  MI5reg25IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg25IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(25));
    }
}
/**
 *  \brief  MI11reg25_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg25_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(25));
    }
}
/**
 *  \brief  MI5reg26IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg26IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(26));
    }
}
/**
 *  \brief  MI11reg26_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg26_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(26));
    }
}
/**
 *  \brief  MI5reg27IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg27IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(27));
    }
}
/**
 *  \brief  MI11reg27_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg27_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(27));
    }
}
/**
 *  \brief  MI5reg28IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg28IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(28));
    }
}
/**
 *  \brief  MI11reg28_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg28_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(28));
    }
}
/**
 *  \brief  MI5reg29IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg29IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(29));
    }
}
/**
 *  \brief  MI11reg29_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg29_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(29));
    }
}
/**
 *  \brief  MI5reg30IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg30IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(30));
    }
}
/**
 *  \brief  MI11reg30_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg30_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(30));
    }
}
/**
 *  \brief  MI5reg31IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI5reg31IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(31));
    }
}
/**
 *  \brief  MI11reg31_aliasIH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI11reg31_aliasIH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(31));
    }
}
/**
 *  \brief  MI4reg0IH5_3isa3isa9_7reg_any4src2
 */
inline void Sim::MI4reg0IH5_3isa3isa9_7reg_any4src2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.write(int32_t(0));
    }
}
/**
 *  \brief  MI27rel_addr32_call_tail_simpleIH5_3isa3isa23_20rel_addr32_call_tail4addr
 */
inline void Sim::MI27rel_addr32_call_tail_simpleIH5_3isa3isa23_20rel_addr32_call_tail4addr()
{
    {
    }
}
/**
 *  \brief  MI10rel_addr32IH5_3isa3isa13_10rel_addr324addr
 */
inline void Sim::MI10rel_addr32IH5_3isa3isa13_10rel_addr324addr()
{
    {
    }
}
/**
 *  \brief  MI8imm20_hiIH5_3isa3isa14_11imm20_reloc3imm
 */
inline void Sim::MI8imm20_hiIH5_3isa3isa14_11imm20_reloc3imm()
{
    {
    }
}
/**
 *  \brief  MI14imm20_pcrel_hiIH5_3isa3isa14_11imm20_reloc3imm
 */
inline void Sim::MI14imm20_pcrel_hiIH5_3isa3isa14_11imm20_reloc3imm()
{
    {
    }
}
/**
 *  \brief  MI8imm20_hiIH5_3isa3isa10_8imm20_hi3imm
 */
inline void Sim::MI8imm20_hiIH5_3isa3isa10_8imm20_hi3imm()
{
    {
        MI54codasip_return_MI8imm20_hiIH5_3isa3isa10_8imm20_hi3imm.write(static_cast<int32_t>(MI3valIH5_3isa3isa10_8imm20_hi3imm1_8imm20_hi.read()) << int32_t(12));
    }
}
/**
 *  \brief  MI10rel_addr20IH5_3isa3isa13_10rel_addr204addr
 */
inline void Sim::MI10rel_addr20IH5_3isa3isa13_10rel_addr204addr()
{
    {
        MI61codasip_return_MI10rel_addr20IH5_3isa3isa13_10rel_addr204addr.write(static_cast<int32_t>(MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20.read()) << int32_t(1));
    }
}
/**
 *  \brief  MI10rel_addr12IH5_3isa3isa13_10rel_addr124addr
 */
inline void Sim::MI10rel_addr12IH5_3isa3isa13_10rel_addr124addr()
{
    {
        MI61codasip_return_MI10rel_addr12IH5_3isa3isa13_10rel_addr124addr.write(static_cast<int32_t>(MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12.read()) << int32_t(1));
    }
}
/**
 *  \brief  MI13simm12_simpleIH5_3isa3isa10_8simm12_s8simm12_s
 */
inline void Sim::MI13simm12_simpleIH5_3isa3isa10_8simm12_s8simm12_s()
{
    {
        MI59codasip_return_MI8simm12_sIH5_3isa3isa10_8simm12_s8simm12_s.write(MI4simmIH5_3isa3isa10_8simm12_s8simm12_s1_13simm12_simple.read());
    }
}
/**
 *  \brief  MI11simm12_s_loIH5_3isa3isa10_8simm12_s8simm12_s
 */
inline void Sim::MI11simm12_s_loIH5_3isa3isa10_8simm12_s8simm12_s()
{
    {
        MI59codasip_return_MI8simm12_sIH5_3isa3isa10_8simm12_s8simm12_s.write(static_cast<codasip::Integer<12, true>>(MI3valIH5_3isa3isa10_8simm12_s8simm12_s1_11simm12_s_lo.read()));
    }
}
/**
 *  \brief  MI17simm12_s_pcrel_loIH5_3isa3isa10_8simm12_s8simm12_s
 */
inline void Sim::MI17simm12_s_pcrel_loIH5_3isa3isa10_8simm12_s8simm12_s()
{
    {
        MI59codasip_return_MI8simm12_sIH5_3isa3isa10_8simm12_s8simm12_s.write(static_cast<codasip::Integer<12, true>>(MI3valIH5_3isa3isa10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo.read()));
    }
}
/**
 *  \brief  MI4reg1IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI4reg1IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(1));
    }
}
/**
 *  \brief  MI10reg1_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI10reg1_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(1));
    }
}
/**
 *  \brief  MI4reg2IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI4reg2IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(2));
    }
}
/**
 *  \brief  MI10reg2_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI10reg2_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(2));
    }
}
/**
 *  \brief  MI4reg3IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI4reg3IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(3));
    }
}
/**
 *  \brief  MI10reg3_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI10reg3_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(3));
    }
}
/**
 *  \brief  MI4reg4IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI4reg4IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(4));
    }
}
/**
 *  \brief  MI10reg4_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI10reg4_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(4));
    }
}
/**
 *  \brief  MI4reg5IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI4reg5IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(5));
    }
}
/**
 *  \brief  MI10reg5_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI10reg5_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(5));
    }
}
/**
 *  \brief  MI4reg6IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI4reg6IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(6));
    }
}
/**
 *  \brief  MI10reg6_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI10reg6_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(6));
    }
}
/**
 *  \brief  MI4reg7IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI4reg7IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(7));
    }
}
/**
 *  \brief  MI10reg7_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI10reg7_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(7));
    }
}
/**
 *  \brief  MI4reg8IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI4reg8IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(8));
    }
}
/**
 *  \brief  MI11reg8_alias1IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg8_alias1IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(8));
    }
}
/**
 *  \brief  MI11reg8_alias2IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg8_alias2IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(8));
    }
}
/**
 *  \brief  MI4reg9IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI4reg9IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(9));
    }
}
/**
 *  \brief  MI10reg9_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI10reg9_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(9));
    }
}
/**
 *  \brief  MI5reg10IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg10IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(10));
    }
}
/**
 *  \brief  MI11reg10_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg10_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(10));
    }
}
/**
 *  \brief  MI5reg11IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg11IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(11));
    }
}
/**
 *  \brief  MI11reg11_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg11_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(11));
    }
}
/**
 *  \brief  MI5reg12IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg12IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(12));
    }
}
/**
 *  \brief  MI11reg12_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg12_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(12));
    }
}
/**
 *  \brief  MI5reg13IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg13IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(13));
    }
}
/**
 *  \brief  MI11reg13_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg13_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(13));
    }
}
/**
 *  \brief  MI5reg14IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg14IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(14));
    }
}
/**
 *  \brief  MI11reg14_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg14_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(14));
    }
}
/**
 *  \brief  MI5reg15IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg15IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(15));
    }
}
/**
 *  \brief  MI11reg15_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg15_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(15));
    }
}
/**
 *  \brief  MI5reg16IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg16IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(16));
    }
}
/**
 *  \brief  MI11reg16_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg16_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(16));
    }
}
/**
 *  \brief  MI5reg17IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg17IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(17));
    }
}
/**
 *  \brief  MI11reg17_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg17_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(17));
    }
}
/**
 *  \brief  MI5reg18IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg18IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(18));
    }
}
/**
 *  \brief  MI11reg18_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg18_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(18));
    }
}
/**
 *  \brief  MI5reg19IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg19IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(19));
    }
}
/**
 *  \brief  MI11reg19_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg19_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(19));
    }
}
/**
 *  \brief  MI5reg20IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg20IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(20));
    }
}
/**
 *  \brief  MI11reg20_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg20_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(20));
    }
}
/**
 *  \brief  MI5reg21IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg21IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(21));
    }
}
/**
 *  \brief  MI11reg21_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg21_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(21));
    }
}
/**
 *  \brief  MI5reg22IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg22IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(22));
    }
}
/**
 *  \brief  MI11reg22_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg22_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(22));
    }
}
/**
 *  \brief  MI5reg23IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg23IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(23));
    }
}
/**
 *  \brief  MI11reg23_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg23_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(23));
    }
}
/**
 *  \brief  MI5reg24IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg24IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(24));
    }
}
/**
 *  \brief  MI11reg24_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg24_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(24));
    }
}
/**
 *  \brief  MI5reg25IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg25IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(25));
    }
}
/**
 *  \brief  MI11reg25_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg25_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(25));
    }
}
/**
 *  \brief  MI5reg26IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg26IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(26));
    }
}
/**
 *  \brief  MI11reg26_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg26_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(26));
    }
}
/**
 *  \brief  MI5reg27IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg27IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(27));
    }
}
/**
 *  \brief  MI11reg27_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg27_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(27));
    }
}
/**
 *  \brief  MI5reg28IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg28IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(28));
    }
}
/**
 *  \brief  MI11reg28_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg28_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(28));
    }
}
/**
 *  \brief  MI5reg29IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg29IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(29));
    }
}
/**
 *  \brief  MI11reg29_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg29_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(29));
    }
}
/**
 *  \brief  MI5reg30IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg30IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(30));
    }
}
/**
 *  \brief  MI11reg30_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg30_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(30));
    }
}
/**
 *  \brief  MI5reg31IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI5reg31IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(31));
    }
}
/**
 *  \brief  MI11reg31_aliasIH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI11reg31_aliasIH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(31));
    }
}
/**
 *  \brief  MI4reg0IH5_3isa3isa9_7reg_any4rs_1
 */
inline void Sim::MI4reg0IH5_3isa3isa9_7reg_any4rs_1()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.write(int32_t(0));
    }
}
/**
 *  \brief  MI4reg1IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI4reg1IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(1));
    }
}
/**
 *  \brief  MI10reg1_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI10reg1_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(1));
    }
}
/**
 *  \brief  MI4reg2IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI4reg2IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(2));
    }
}
/**
 *  \brief  MI10reg2_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI10reg2_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(2));
    }
}
/**
 *  \brief  MI4reg3IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI4reg3IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(3));
    }
}
/**
 *  \brief  MI10reg3_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI10reg3_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(3));
    }
}
/**
 *  \brief  MI4reg4IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI4reg4IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(4));
    }
}
/**
 *  \brief  MI10reg4_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI10reg4_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(4));
    }
}
/**
 *  \brief  MI4reg5IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI4reg5IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(5));
    }
}
/**
 *  \brief  MI10reg5_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI10reg5_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(5));
    }
}
/**
 *  \brief  MI4reg6IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI4reg6IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(6));
    }
}
/**
 *  \brief  MI10reg6_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI10reg6_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(6));
    }
}
/**
 *  \brief  MI4reg7IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI4reg7IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(7));
    }
}
/**
 *  \brief  MI10reg7_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI10reg7_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(7));
    }
}
/**
 *  \brief  MI4reg8IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI4reg8IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(8));
    }
}
/**
 *  \brief  MI11reg8_alias1IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg8_alias1IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(8));
    }
}
/**
 *  \brief  MI11reg8_alias2IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg8_alias2IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(8));
    }
}
/**
 *  \brief  MI4reg9IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI4reg9IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(9));
    }
}
/**
 *  \brief  MI10reg9_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI10reg9_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(9));
    }
}
/**
 *  \brief  MI5reg10IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg10IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(10));
    }
}
/**
 *  \brief  MI11reg10_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg10_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(10));
    }
}
/**
 *  \brief  MI5reg11IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg11IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(11));
    }
}
/**
 *  \brief  MI11reg11_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg11_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(11));
    }
}
/**
 *  \brief  MI5reg12IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg12IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(12));
    }
}
/**
 *  \brief  MI11reg12_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg12_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(12));
    }
}
/**
 *  \brief  MI5reg13IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg13IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(13));
    }
}
/**
 *  \brief  MI11reg13_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg13_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(13));
    }
}
/**
 *  \brief  MI5reg14IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg14IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(14));
    }
}
/**
 *  \brief  MI11reg14_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg14_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(14));
    }
}
/**
 *  \brief  MI5reg15IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg15IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(15));
    }
}
/**
 *  \brief  MI11reg15_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg15_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(15));
    }
}
/**
 *  \brief  MI5reg16IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg16IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(16));
    }
}
/**
 *  \brief  MI11reg16_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg16_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(16));
    }
}
/**
 *  \brief  MI5reg17IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg17IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(17));
    }
}
/**
 *  \brief  MI11reg17_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg17_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(17));
    }
}
/**
 *  \brief  MI5reg18IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg18IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(18));
    }
}
/**
 *  \brief  MI11reg18_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg18_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(18));
    }
}
/**
 *  \brief  MI5reg19IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg19IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(19));
    }
}
/**
 *  \brief  MI11reg19_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg19_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(19));
    }
}
/**
 *  \brief  MI5reg20IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg20IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(20));
    }
}
/**
 *  \brief  MI11reg20_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg20_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(20));
    }
}
/**
 *  \brief  MI5reg21IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg21IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(21));
    }
}
/**
 *  \brief  MI11reg21_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg21_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(21));
    }
}
/**
 *  \brief  MI5reg22IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg22IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(22));
    }
}
/**
 *  \brief  MI11reg22_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg22_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(22));
    }
}
/**
 *  \brief  MI5reg23IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg23IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(23));
    }
}
/**
 *  \brief  MI11reg23_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg23_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(23));
    }
}
/**
 *  \brief  MI5reg24IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg24IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(24));
    }
}
/**
 *  \brief  MI11reg24_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg24_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(24));
    }
}
/**
 *  \brief  MI5reg25IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg25IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(25));
    }
}
/**
 *  \brief  MI11reg25_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg25_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(25));
    }
}
/**
 *  \brief  MI5reg26IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg26IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(26));
    }
}
/**
 *  \brief  MI11reg26_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg26_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(26));
    }
}
/**
 *  \brief  MI5reg27IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg27IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(27));
    }
}
/**
 *  \brief  MI11reg27_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg27_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(27));
    }
}
/**
 *  \brief  MI5reg28IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg28IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(28));
    }
}
/**
 *  \brief  MI11reg28_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg28_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(28));
    }
}
/**
 *  \brief  MI5reg29IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg29IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(29));
    }
}
/**
 *  \brief  MI11reg29_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg29_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(29));
    }
}
/**
 *  \brief  MI5reg30IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg30IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(30));
    }
}
/**
 *  \brief  MI11reg30_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg30_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(30));
    }
}
/**
 *  \brief  MI5reg31IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI5reg31IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(31));
    }
}
/**
 *  \brief  MI11reg31_aliasIH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI11reg31_aliasIH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(31));
    }
}
/**
 *  \brief  MI4reg0IH5_3isa3isa9_7reg_any4rs_2
 */
inline void Sim::MI4reg0IH5_3isa3isa9_7reg_any4rs_2()
{
    {
        MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.write(int32_t(0));
    }
}
/**
 *  \brief  SetMemoryLatencies
 */
inline void Sim::SetMemoryLatencies(const std::map<std::pair<std::string, bool>, std::vector<size_t>>& latencies)
{
    if (!latencies.empty())
    {
        SIM_LOG(LOG_TYPE_WARNING, 0, m_SimCycleCounter) << "memory latency specifications are ignored for IA simulator";
    }
}
/**
 *  \brief  MemoriesClockCycle
 */
inline void Sim::MemoriesClockCycle()
{
    MI8m_memory.clock_cycle();
}
/**
 *  \brief  MI6as_all_load
 */
inline void Sim::MI6as_all_load(const MaxInt& data, const codasip_address_t addr, const resources::Index sbc, const int xexe_bw)
{
    if (addr <= 0xffffffffull) {
        if (xexe_bw != -1 && xexe_bw % 8) {
            SIM_LOG(LOG_TYPE_WARNING, 0, m_SimCycleCounter) << "LAU bit-width in xexe file (address 0x" << std::hex << addr << std::dec << "(" << addr << ")) is not compatible with LAU bit-width of interface 'if_ldst'." << std::endl;
        }
        MI7if_ldst.load((data), addr, sbc);
    }
}
/**
 *  \brief  MI6as_all_dread
 */
inline MaxInt Sim::MI6as_all_dread(const codasip_address_t addr,const resources::Index sbc)
{
    if (addr <= 0xffffffffull) {
        return MI7if_ldst.dread(addr, sbc);
    }
    // failsafe
    return 0;
}
/**
 *  \brief  MI6as_all_dwrite
 */
inline void Sim::MI6as_all_dwrite(const MaxInt& data, const codasip_address_t addr,const resources::Index sbc)
{
    if (addr <= 0xffffffffull) {
        MI7if_ldst.dwrite((data), addr, sbc);
        return;
    }
}
/**
 *  \brief  MI6as_all_program_dread
 */
inline MaxInt Sim::MI6as_all_program_dread(const codasip_address_t addr,const resources::Index sbc)
{
    if (addr <= 0xffffffffull) {
        return MI8if_fetch.dread(addr, sbc);
    }
    // failsafe
    return 0;
}
/**
 *  \brief  MI6as_all_program_dwrite
 */
inline void Sim::MI6as_all_program_dwrite(const MaxInt& data, const codasip_address_t addr,const resources::Index sbc)
{
    if (addr <= 0xffffffffull) {
        MI8if_fetch.dwrite((data), addr, sbc);
        return;
    }
}
/**
 *  \brief  MI6as_all_data_dread
 */
inline MaxInt Sim::MI6as_all_data_dread(const codasip_address_t addr,const resources::Index sbc)
{
    if (addr <= 0xffffffffull) {
        return MI7if_ldst.dread(addr, sbc);
    }
    // failsafe
    return 0;
}
/**
 *  \brief  MI6as_all_data_dwrite
 */
inline void Sim::MI6as_all_data_dwrite(const MaxInt& data, const codasip_address_t addr,const resources::Index sbc)
{
    if (addr <= 0xffffffffull) {
        MI7if_ldst.dwrite((data), addr, sbc);
        return;
    }
}
/**
 *  \brief  InterfacesClockCycle
 */
inline void Sim::InterfacesClockCycle()
{
    MI7if_ldst.clock_cycle();
    MI8if_fetch.clock_cycle();
}
/**
 *  \brief  PortsClockCycle
 */
inline void Sim::PortsClockCycle()
{
    MI6p_meip.clock_cycle();
    MI6p_msip.clock_cycle();
    MI6p_mtip.clock_cycle();
    MI5p_wfi.clock_cycle();
    MI5p_wfi.reset_if_changed();
    MI5p_nmi.clock_cycle();
    MI11p_nmi_mtval.clock_cycle();
    MI11p_boot_addr.clock_cycle();
}
/**
 *  \brief  SignalsClockCycle
 */
inline void Sim::SignalsClockCycle()
{
    MI90codasip_return_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc.clock_cycle();
    MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3src.clock_cycle();
    MI49codasip_return_MI6op_csrIH5_3isa3isa8_6op_csr3csr.clock_cycle();
    MI51codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any3dst.clock_cycle();
    MI90codasip_return_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc.clock_cycle();
    MI45codasip_return_MI4imm5IH5_3isa3isa6_4imm53imm.clock_cycle();
    MI74codasip_return_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc.clock_cycle();
    MI52codasip_return_MI6simm12IH5_3isa3isa8_6simm126simm12.clock_cycle();
    MI86codasip_return_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc.clock_cycle();
    MI56codasip_return_MI9shift_immIH5_3isa3isa11_9shift_imm3imm.clock_cycle();
    MI56codasip_return_MI9imm20_s12IH5_3isa3isa11_9imm20_s123imm.clock_cycle();
    MI66codasip_return_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc.clock_cycle();
    MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src1.clock_cycle();
    MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4src2.clock_cycle();
    MI61codasip_return_MI10rel_addr20IH5_3isa3isa13_10rel_addr204addr.clock_cycle();
    MI86codasip_return_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc.clock_cycle();
    MI61codasip_return_MI10rel_addr12IH5_3isa3isa13_10rel_addr124addr.clock_cycle();
    MI56codasip_return_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc.clock_cycle();
    MI59codasip_return_MI8simm12_sIH5_3isa3isa10_8simm12_s8simm12_s.clock_cycle();
    MI60codasip_return_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc.clock_cycle();
    MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1.clock_cycle();
    MI73codasip_return_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2.clock_cycle();
    MI54codasip_return_MI8imm20_hiIH5_3isa3isa10_8imm20_hi3imm.clock_cycle();
    MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1.clock_cycle();
    MI52codasip_return_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2.clock_cycle();
    MI82codasip_return_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc.clock_cycle();
    MI17codasip_tmp_var_0IH1_4main.clock_cycle();
    MI17codasip_tmp_var_1IH1_4main.clock_cycle();
    MI17codasip_tmp_var_2IH1_4main.clock_cycle();
    MI17codasip_tmp_var_3IH1_4main.clock_cycle();
    MI17codasip_tmp_var_4IH1_4main.clock_cycle();
    MI17codasip_tmp_var_0IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.clock_cycle();
    MI17codasip_tmp_var_1IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.clock_cycle();
    MI17codasip_tmp_var_2IH23_20resolve_illegal_inst20resolve_illegal_inst1_20resolve_illegal_inst.clock_cycle();
    MI5vaddrIH1_11fetch_instr.clock_cycle();
    MI5instrIH1_11fetch_instrB0.clock_cycle();
    MI17codasip_tmp_var_0IH1_11fetch_instr.clock_cycle();
    MI1iIH1_11rf_gpr_read.clock_cycle();
    MI3valIH1_11rf_gpr_readB0.clock_cycle();
    MI17codasip_tmp_var_0IH1_11rf_gpr_read.clock_cycle();
    MI1iIH1_12rf_gpr_write.clock_cycle();
    MI3valIH1_12rf_gpr_write.clock_cycle();
    MI17codasip_tmp_var_0IH1_12rf_gpr_write.clock_cycle();
    MI5haddrIH1_20fetch_interface_read.clock_cycle();
    MI5hsizeIH1_20fetch_interface_read.clock_cycle();
    MI6resultIH1_20fetch_interface_readB0.clock_cycle();
    MI5hrespIH1_20fetch_interface_readB0.clock_cycle();
    MI5hprotIH1_20fetch_interface_readB0.clock_cycle();
    MI5haddrIH1_19ldst_interface_read.clock_cycle();
    MI5hsizeIH1_19ldst_interface_read.clock_cycle();
    MI6resultIH1_19ldst_interface_readB0.clock_cycle();
    MI5hrespIH1_19ldst_interface_readB0.clock_cycle();
    MI5hprotIH1_19ldst_interface_readB0.clock_cycle();
    MI5wdataIH1_20ldst_interface_write.clock_cycle();
    MI5haddrIH1_20ldst_interface_write.clock_cycle();
    MI5hsizeIH1_20ldst_interface_write.clock_cycle();
    MI5hrespIH1_20ldst_interface_writeB0.clock_cycle();
    MI5hprotIH1_20ldst_interface_writeB0.clock_cycle();
    MI3opcIH1_8load_val.clock_cycle();
    MI7addressIH1_8load_val.clock_cycle();
    MI6resultIH1_8load_valB0.clock_cycle();
    MI3sbcIH1_8load_valB0.clock_cycle();
    MI17codasip_tmp_var_0IH1_8load_val.clock_cycle();
    MI17codasip_tmp_var_1IH1_8load_val.clock_cycle();
    MI17codasip_tmp_var_2IH1_8load_val.clock_cycle();
    MI17codasip_tmp_var_3IH1_8load_val.clock_cycle();
    MI11error_causeIH1_8load_valB0B10.clock_cycle();
    MI17codasip_tmp_var_4IH1_8load_val.clock_cycle();
    MI3opcIH1_9write_val.clock_cycle();
    MI7addressIH1_9write_val.clock_cycle();
    MI3valIH1_9write_val.clock_cycle();
    MI11error_causeIH1_9write_valB0.clock_cycle();
    MI3sbcIH1_9write_valB0.clock_cycle();
    MI17codasip_tmp_var_0IH1_9write_val.clock_cycle();
    MI17codasip_tmp_var_1IH1_9write_val.clock_cycle();
    MI17codasip_tmp_var_2IH1_9write_val.clock_cycle();
    MI17codasip_tmp_var_3IH1_9write_val.clock_cycle();
    MI17codasip_tmp_var_4IH1_9write_val.clock_cycle();
    MI17codasip_tmp_var_5IH1_9write_val.clock_cycle();
    MI17codasip_tmp_var_6IH1_9write_val.clock_cycle();
    MI3opcIH1_7compute.clock_cycle();
    MI3op1IH1_7compute.clock_cycle();
    MI3op2IH1_7compute.clock_cycle();
    MI6resultIH1_7computeB0.clock_cycle();
    MI17codasip_tmp_var_0IH1_7compute.clock_cycle();
    MI17codasip_tmp_var_1IH1_7compute.clock_cycle();
    MI17codasip_tmp_var_2IH1_7compute.clock_cycle();
    MI6retvalIH1_4haltB0.clock_cycle();
    MI10start_addrIH1_4haltB0B1.clock_cycle();
    MI8end_addrIH1_4haltB0B1.clock_cycle();
    MI7addressIH1_4haltB0B1.clock_cycle();
    MI17codasip_tmp_var_0IH1_4halt.clock_cycle();
    MI3sbcIH1_16check_mem_access.clock_cycle();
    MI7addressIH1_16check_mem_access.clock_cycle();
    MI10trap_causeIH1_15print_trap_info.clock_cycle();
    MI4tvalIH1_15print_trap_info.clock_cycle();
    MI9int_causeIH1_15print_trap_infoB0B0.clock_cycle();
    MI17codasip_tmp_var_0IH1_15print_trap_info.clock_cycle();
    MI17codasip_tmp_var_1IH1_15print_trap_info.clock_cycle();
    MI17codasip_tmp_var_2IH1_15print_trap_info.clock_cycle();
    MI3opcIH1_17csr_get_write_val.clock_cycle();
    MI7currValIH1_17csr_get_write_val.clock_cycle();
    MI8writeValIH1_17csr_get_write_val.clock_cycle();
    MI6retvalIH1_17csr_get_write_valB0.clock_cycle();
    MI17codasip_tmp_var_0IH1_17csr_get_write_val.clock_cycle();
    MI3menIH1_8take_intB0.clock_cycle();
    MI7pendingIH1_8take_intB0.clock_cycle();
    MI7enabledIH1_8take_intB0.clock_cycle();
    MI9int_causeIH1_8take_intB0.clock_cycle();
    MI9nmi_mtvalIH1_8take_intB0.clock_cycle();
    MI3nmiIH1_8take_intB0.clock_cycle();
    MI17codasip_tmp_var_0IH1_8take_int.clock_cycle();
    MI17codasip_tmp_var_1IH1_8take_int.clock_cycle();
    MI17codasip_tmp_var_2IH1_8take_int.clock_cycle();
    MI17codasip_tmp_var_3IH1_8take_int.clock_cycle();
    MI17codasip_tmp_var_4IH1_8take_int.clock_cycle();
    MI17codasip_tmp_var_5IH1_8take_int.clock_cycle();
    MI17codasip_tmp_var_6IH1_8take_int.clock_cycle();
    MI10trap_causeIH1_9take_trap.clock_cycle();
    MI7bad_valIH1_9take_trap.clock_cycle();
    MI9decrementIH1_9take_trap.clock_cycle();
    MI5causeIH1_9take_trapB0B0.clock_cycle();
    MI17codasip_tmp_var_0IH1_9take_trap.clock_cycle();
    MI17codasip_tmp_var_1IH1_9take_trap.clock_cycle();
    MI17codasip_tmp_var_3IH1_9take_trap.clock_cycle();
    MI17codasip_tmp_var_4IH1_9take_trap.clock_cycle();
    MI17codasip_tmp_var_2IH1_9take_trap.clock_cycle();
    MI4mpieIH1_8do_xcallB0.clock_cycle();
    MI10int_enableIH1_7do_xretB0.clock_cycle();
    MI15prev_int_enableIH1_7do_xretB0.clock_cycle();
    MI3srcIH1_18csr_read_write_reg.clock_cycle();
    MI3csrIH1_18csr_read_write_reg.clock_cycle();
    MI3opcIH1_18csr_read_write_reg.clock_cycle();
    MI8writeValIH1_18csr_read_write_regB0.clock_cycle();
    MI7readValIH1_18csr_read_write_regB0.clock_cycle();
    MI8is_writeIH1_18csr_read_write_regB0.clock_cycle();
    MI17codasip_tmp_var_0IH1_18csr_read_write_reg.clock_cycle();
    MI3immIH1_18csr_read_write_imm.clock_cycle();
    MI3csrIH1_18csr_read_write_imm.clock_cycle();
    MI3opcIH1_18csr_read_write_imm.clock_cycle();
    MI7readValIH1_18csr_read_write_immB0.clock_cycle();
    MI8is_writeIH1_18csr_read_write_immB0.clock_cycle();
    MI17codasip_tmp_var_0IH1_18csr_read_write_imm.clock_cycle();
    MI8writeValIH1_14csr_read_write.clock_cycle();
    MI3csrIH1_14csr_read_write.clock_cycle();
    MI3opcIH1_14csr_read_write.clock_cycle();
    MI8is_writeIH1_14csr_read_write.clock_cycle();
    MI7readValIH1_14csr_read_writeB0.clock_cycle();
    MI17codasip_tmp_var_0IH1_14csr_read_write.clock_cycle();
    MI17codasip_tmp_var_1IH1_14csr_read_write.clock_cycle();
    MI17codasip_tmp_var_2IH1_14csr_read_write.clock_cycle();
    MI17codasip_tmp_var_3IH1_14csr_read_write.clock_cycle();
    MI17codasip_tmp_var_4IH1_14csr_read_write.clock_cycle();
    MI17codasip_tmp_var_5IH1_14csr_read_write.clock_cycle();
    MI17codasip_tmp_var_6IH1_14csr_read_write.clock_cycle();
    MI17codasip_tmp_var_7IH1_14csr_read_write.clock_cycle();
    MI17codasip_tmp_var_8IH1_14csr_read_write.clock_cycle();
    MI17codasip_tmp_var_9IH1_14csr_read_write.clock_cycle();
    MI18codasip_tmp_var_10IH1_14csr_read_write.clock_cycle();
    MI18codasip_tmp_var_11IH1_14csr_read_write.clock_cycle();
    MI18codasip_tmp_var_12IH1_14csr_read_write.clock_cycle();
    MI18codasip_tmp_var_13IH1_14csr_read_write.clock_cycle();
    MI11INSTRUCTIONIH5_3isa3isa1_3isa.clock_cycle();
    MI19INVALID_INSTRUCTIONIH5_3isa3isa1_3isa.clock_cycle();
    MI8writeValIH5_3isa3isa1_23i_control_registers_regB0.clock_cycle();
    MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_reg.clock_cycle();
    MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_reg.clock_cycle();
    MI8writeValIH5_3isa3isa1_23i_control_registers_immB0.clock_cycle();
    MI17codasip_tmp_var_0IH5_3isa3isa1_23i_control_registers_imm.clock_cycle();
    MI17codasip_tmp_var_1IH5_3isa3isa1_23i_control_registers_imm.clock_cycle();
    MI3valIH5_3isa3isa1_15i_comp_2reg_immB0.clock_cycle();
    MI3valIH5_3isa3isa1_21i_comp_2reg_imm_shiftB0.clock_cycle();
    MI8jmp_addrIH5_3isa3isa1_5i_jalB0.clock_cycle();
    MI3tmpIH5_3isa3isa1_5i_jalB0.clock_cycle();
    MI17codasip_tmp_var_0IH5_3isa3isa1_5i_jal.clock_cycle();
    MI3valIH5_3isa3isa1_6i_jalrB0.clock_cycle();
    MI8jmp_addrIH5_3isa3isa1_6i_jalrB0.clock_cycle();
    MI3tmpIH5_3isa3isa1_6i_jalrB0.clock_cycle();
    MI17codasip_tmp_var_0IH5_3isa3isa1_6i_jalr.clock_cycle();
    MI17codasip_tmp_var_0IH5_3isa3isa1_21i_control_conditional.clock_cycle();
    MI8jmp_addrIH5_3isa3isa1_21i_control_conditionalB0B1.clock_cycle();
    MI17codasip_tmp_var_1IH5_3isa3isa1_21i_control_conditional.clock_cycle();
    MI3valIH5_3isa3isa1_6i_loadB0.clock_cycle();
    MI4addrIH5_3isa3isa1_6i_loadB0.clock_cycle();
    MI17codasip_tmp_var_0IH5_3isa3isa1_6i_load.clock_cycle();
    MI4addrIH5_3isa3isa1_7i_storeB0.clock_cycle();
    MI4dataIH5_3isa3isa1_7i_storeB0.clock_cycle();
    MI1iIH5_3isa3isa1_8i_ebreakB0.clock_cycle();
    MI17codasip_tmp_var_0IH5_3isa3isa1_6i_xret.clock_cycle();
    MI3valIH5_3isa3isa1_8i_lui_hiB0.clock_cycle();
    MI3tmpIH5_3isa3isa1_16i_call_rel_aliasB0.clock_cycle();
    MI3tmpIH5_3isa3isa1_16i_call_reg_aliasB0.clock_cycle();
    MI6resultIH5_3isa3isa1_14i_ext_hackatonB0.clock_cycle();
    MI2s1IH5_3isa3isa1_14i_ext_hackatonB0.clock_cycle();
    MI2s2IH5_3isa3isa1_14i_ext_hackatonB0.clock_cycle();
    MI2s3IH5_3isa3isa1_14i_ext_hackatonB0.clock_cycle();
    MI7result0IH5_3isa3isa1_14i_ext_hackatonB0.clock_cycle();
    MI7result1IH5_3isa3isa1_14i_ext_hackatonB0.clock_cycle();
    MI7simd_a0IH5_3isa3isa1_14i_ext_hackatonB0.clock_cycle();
    MI7simd_a1IH5_3isa3isa1_14i_ext_hackatonB0.clock_cycle();
    MI7simd_b0IH5_3isa3isa1_14i_ext_hackatonB0.clock_cycle();
    MI7simd_b1IH5_3isa3isa1_14i_ext_hackatonB0.clock_cycle();
    MI11accumulatorIH5_3isa3isa1_14i_ext_hackatonB0.clock_cycle();
    MI4sum0IH5_3isa3isa1_14i_ext_hackatonB0.clock_cycle();
    MI4sum1IH5_3isa3isa1_14i_ext_hackatonB0.clock_cycle();
    MI5summaIH5_3isa3isa1_14i_ext_hackatonB0.clock_cycle();
    MI17codasip_tmp_var_0IH5_3isa3isa1_14i_ext_hackaton.clock_cycle();
    MI17codasip_tmp_var_1IH5_3isa3isa1_14i_ext_hackaton.clock_cycle();
    MI17codasip_tmp_var_2IH5_3isa3isa1_14i_ext_hackaton.clock_cycle();
    MI17codasip_tmp_var_4IH5_3isa3isa1_14i_ext_hackaton.clock_cycle();
    MI17codasip_tmp_var_3IH5_3isa3isa1_14i_ext_hackaton.clock_cycle();
    MI17codasip_tmp_var_5IH5_3isa3isa1_14i_ext_hackaton.clock_cycle();
    MI17codasip_tmp_var_6IH5_3isa3isa1_14i_ext_hackaton.clock_cycle();
    MI17codasip_tmp_var_7IH5_3isa3isa1_14i_ext_hackaton.clock_cycle();
}
/**
 *  \brief  codasip_symbol_address
 */
inline codasip_address_t Sim::codasip_symbol_address(const std::string& name) const 
{
    auto it = m_Symbols.find(name);
    return (it != m_Symbols.end()) ? it->second : 0;
}
/**
 *  \brief  codasip_syscall
 */
inline int Sim::codasip_syscall(const codasip_address_t addr)
{
    if (m_SysCalls.GetUserAddress().IsValid()) {
        return m_SysCalls.SysCall(static_cast<codasip_address_t>(ResourceRead(35, m_SysCalls.GetUserAddress().GetAddress(), 4)));
    }
    return m_SysCalls.SysCall(addr);
}
/**
 *  \brief  CachesClockCycle
 */
inline void Sim::CachesClockCycle()
{

}
/**
 *  \brief  TcmsClockCycle
 */
inline void Sim::TcmsClockCycle()
{

}
/**
 *  \brief  ArbitersClockCycle
 */
inline void Sim::ArbitersClockCycle()
{

}
inline void Sim::RegistersClockCycle()
{

}
/**
 *  \brief  codasip_halt
 */
inline void Sim::codasip_halt()
{
    m_Halt = SIM_HALT;
}
inline const char* Sim::GetCodalParamsHelp()
{
    return "List of key=value runtime parameters.\n"
    "\n     Model accepts no parameters.";
}
} // namespace MI15codasip_urisc_v
} // namespace simulator
} // namespace codasip

#endif
