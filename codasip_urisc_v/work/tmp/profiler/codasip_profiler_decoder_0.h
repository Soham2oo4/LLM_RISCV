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
 * \author  Codasip (c) source generator
 * \version 9.4.2
 */
#ifndef CODASIP_PROFILER_DECODER_0_0_H_
#define CODASIP_PROFILER_DECODER_0_0_H_

#include "simulator/profilerl/profiler_interface.h"
#include "common/codasip_integer.h"
#include "common/toolstypes.h"
#include "instrset/disassembler/dsmutilsl/dsm_text.h"
#include <set>
#include <stack>

namespace codasip {
namespace profiler {
namespace MI15codasip_urisc_v {

/**
 *  \class  MI3isaIH5_3isa3isa
 */
class MI3isaIH5_3isa3isa  {
private:
    typedef enum {
        CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI10csr_mcauseIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI10csr_mcycleIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI10csr_mimpidIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI10opc_csrrciIH5_3isa3isa28_25opc_control_registers_imm3opc,
        CODASIP_SWITCH_VALUE_MI10opc_csrrsiIH5_3isa3isa28_25opc_control_registers_imm3opc,
        CODASIP_SWITCH_VALUE_MI10opc_csrrwiIH5_3isa3isa28_25opc_control_registers_imm3opc,
        CODASIP_SWITCH_VALUE_MI10opc_loadbuIH5_3isa3isa11_9opc_loads3opc,
        CODASIP_SWITCH_VALUE_MI10opc_loadhuIH5_3isa3isa11_9opc_loads3opc,
        CODASIP_SWITCH_VALUE_MI10opc_storebIH5_3isa3isa13_10opc_stores3opc,
        CODASIP_SWITCH_VALUE_MI10opc_storehIH5_3isa3isa13_10opc_stores3opc,
        CODASIP_SWITCH_VALUE_MI10opc_storewIH5_3isa3isa13_10opc_stores3opc,
        CODASIP_SWITCH_VALUE_MI11csr_marchidIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI11csr_mcyclehIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI11csr_mhartidIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI11csr_mstatusIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI11i_comp_3regIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI11i_mem_modelIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI11opc_i_fenceIH5_3isa3isa18_15opc_fence_param6param1,
        CODASIP_SWITCH_VALUE_MI11opc_i_fenceIH5_3isa3isa18_15opc_fence_param6param2,
        CODASIP_SWITCH_VALUE_MI11opc_o_fenceIH5_3isa3isa18_15opc_fence_param6param1,
        CODASIP_SWITCH_VALUE_MI11opc_o_fenceIH5_3isa3isa18_15opc_fence_param6param2,
        CODASIP_SWITCH_VALUE_MI11opc_r_fenceIH5_3isa3isa18_15opc_fence_param6param1,
        CODASIP_SWITCH_VALUE_MI11opc_r_fenceIH5_3isa3isa18_15opc_fence_param6param2,
        CODASIP_SWITCH_VALUE_MI11opc_w_fenceIH5_3isa3isa18_15opc_fence_param6param1,
        CODASIP_SWITCH_VALUE_MI11opc_w_fenceIH5_3isa3isa18_15opc_fence_param6param2,
        CODASIP_SWITCH_VALUE_MI12csr_minstretIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI12csr_mscratchIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI12i_load_storeIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI12opc_io_fenceIH5_3isa3isa18_15opc_fence_param6param1,
        CODASIP_SWITCH_VALUE_MI12opc_io_fenceIH5_3isa3isa18_15opc_fence_param6param2,
        CODASIP_SWITCH_VALUE_MI12opc_ir_fenceIH5_3isa3isa18_15opc_fence_param6param1,
        CODASIP_SWITCH_VALUE_MI12opc_ir_fenceIH5_3isa3isa18_15opc_fence_param6param2,
        CODASIP_SWITCH_VALUE_MI12opc_iw_fenceIH5_3isa3isa18_15opc_fence_param6param1,
        CODASIP_SWITCH_VALUE_MI12opc_iw_fenceIH5_3isa3isa18_15opc_fence_param6param2,
        CODASIP_SWITCH_VALUE_MI12opc_or_fenceIH5_3isa3isa18_15opc_fence_param6param1,
        CODASIP_SWITCH_VALUE_MI12opc_or_fenceIH5_3isa3isa18_15opc_fence_param6param2,
        CODASIP_SWITCH_VALUE_MI12opc_ow_fenceIH5_3isa3isa18_15opc_fence_param6param1,
        CODASIP_SWITCH_VALUE_MI12opc_ow_fenceIH5_3isa3isa18_15opc_fence_param6param2,
        CODASIP_SWITCH_VALUE_MI12opc_rw_fenceIH5_3isa3isa18_15opc_fence_param6param1,
        CODASIP_SWITCH_VALUE_MI12opc_rw_fenceIH5_3isa3isa18_15opc_fence_param6param2,
        CODASIP_SWITCH_VALUE_MI13csr_minstrethIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI13csr_mvendoridIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI13csr_nmi_mtvalIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI13opc_ior_fenceIH5_3isa3isa18_15opc_fence_param6param1,
        CODASIP_SWITCH_VALUE_MI13opc_ior_fenceIH5_3isa3isa18_15opc_fence_param6param2,
        CODASIP_SWITCH_VALUE_MI13opc_iow_fenceIH5_3isa3isa18_15opc_fence_param6param1,
        CODASIP_SWITCH_VALUE_MI13opc_iow_fenceIH5_3isa3isa18_15opc_fence_param6param2,
        CODASIP_SWITCH_VALUE_MI13opc_irw_fenceIH5_3isa3isa18_15opc_fence_param6param1,
        CODASIP_SWITCH_VALUE_MI13opc_irw_fenceIH5_3isa3isa18_15opc_fence_param6param2,
        CODASIP_SWITCH_VALUE_MI13opc_orw_fenceIH5_3isa3isa18_15opc_fence_param6param1,
        CODASIP_SWITCH_VALUE_MI13opc_orw_fenceIH5_3isa3isa18_15opc_fence_param6param2,
        CODASIP_SWITCH_VALUE_MI13simm12_simpleIH5_3isa3isa10_8simm12_s8simm12_s,
        CODASIP_SWITCH_VALUE_MI13simm12_simpleIH5_3isa3isa8_6simm126simm12,
        CODASIP_SWITCH_VALUE_MI14csr_mhpmevent3IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI14csr_mhpmevent4IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI14csr_mhpmevent5IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI14csr_mhpmevent6IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI14csr_mhpmevent7IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI14csr_mhpmevent8IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI14csr_mhpmevent9IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI14i_control_regsIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI14i_ext_hackatonIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI14opc_hint_fenceIH5_3isa3isa18_15opc_fence_param6param1,
        CODASIP_SWITCH_VALUE_MI14opc_hint_fenceIH5_3isa3isa18_15opc_fence_param6param2,
        CODASIP_SWITCH_VALUE_MI14opc_iorw_fenceIH5_3isa3isa18_15opc_fence_param6param1,
        CODASIP_SWITCH_VALUE_MI14opc_iorw_fenceIH5_3isa3isa18_15opc_fence_param6param2,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent10IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent11IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent12IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent13IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent14IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent15IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent16IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent17IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent18IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent19IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent20IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent21IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent22IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent23IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent24IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent25IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent26IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent27IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent28IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent29IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent30IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15csr_mhpmevent31IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI15i_comp_2reg_immIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter3IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter4IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter5IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter6IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter7IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter8IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI16csr_mhpmcounter9IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mcountinhibitIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter10IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter11IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter12IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter13IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter14IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter15IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter16IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter17IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter18IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter19IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter20IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter21IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter22IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter23IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter24IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter25IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter26IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter27IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter28IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter29IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter30IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter31IH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter3hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter4hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter5hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter6hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter7hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter8hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI17csr_mhpmcounter9hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter10hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter11hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter12hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter13hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter14hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter15hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter16hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter17hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter18hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter19hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter20hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter21hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter22hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter23hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter24hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter25hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter26hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter27hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter28hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter29hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter30hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI18csr_mhpmcounter31hIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI21i_comp_2reg_imm_shiftIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI21i_control_conditionalIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI21opc_hackaton_custom_aIH5_3isa3isa24_21opc_hackaton_custom_i3opc,
        CODASIP_SWITCH_VALUE_MI21opc_hackaton_custom_bIH5_3isa3isa24_21opc_hackaton_custom_i3opc,
        CODASIP_SWITCH_VALUE_MI21opc_hackaton_custom_cIH5_3isa3isa24_21opc_hackaton_custom_i3opc,
        CODASIP_SWITCH_VALUE_MI21opc_hackaton_custom_dIH5_3isa3isa24_21opc_hackaton_custom_i3opc,
        CODASIP_SWITCH_VALUE_MI21opc_hackaton_custom_eIH5_3isa3isa24_21opc_hackaton_custom_i3opc,
        CODASIP_SWITCH_VALUE_MI23i_control_registers_immIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI23i_control_registers_regIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI4reg0IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI4reg0IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI4reg0IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI4reg0IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI4reg0IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI4reg0IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI4reg1IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI4reg1IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI4reg1IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI4reg1IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI4reg1IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI4reg1IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI4reg2IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI4reg2IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI4reg2IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI4reg2IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI4reg2IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI4reg2IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI4reg3IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI4reg3IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI4reg3IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI4reg3IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI4reg3IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI4reg3IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI4reg4IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI4reg4IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI4reg4IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI4reg4IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI4reg4IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI4reg4IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI4reg5IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI4reg5IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI4reg5IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI4reg5IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI4reg5IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI4reg5IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI4reg6IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI4reg6IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI4reg6IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI4reg6IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI4reg6IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI4reg6IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI4reg7IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI4reg7IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI4reg7IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI4reg7IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI4reg7IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI4reg7IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI4reg8IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI4reg8IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI4reg8IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI4reg8IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI4reg8IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI4reg8IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI4reg9IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI4reg9IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI4reg9IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI4reg9IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI4reg9IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI4reg9IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI4regsIH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI4regsIH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI4regsIH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI4regsIH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI4regsIH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI4regsIH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5i_jalIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI5i_luiIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI5i_wfiIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI5reg10IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg10IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg10IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg10IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg10IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg10IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg11IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg11IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg11IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg11IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg11IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg11IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg12IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg12IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg12IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg12IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg12IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg12IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg13IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg13IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg13IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg13IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg13IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg13IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg14IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg14IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg14IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg14IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg14IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg14IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg15IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg15IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg15IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg15IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg15IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg15IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg16IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg16IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg16IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg16IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg16IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg16IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg17IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg17IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg17IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg17IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg17IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg17IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg18IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg18IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg18IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg18IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg18IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg18IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg19IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg19IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg19IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg19IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg19IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg19IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg20IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg20IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg20IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg20IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg20IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg20IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg21IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg21IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg21IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg21IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg21IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg21IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg22IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg22IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg22IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg22IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg22IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg22IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg23IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg23IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg23IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg23IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg23IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg23IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg24IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg24IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg24IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg24IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg24IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg24IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg25IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg25IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg25IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg25IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg25IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg25IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg26IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg26IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg26IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg26IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg26IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg26IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg27IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg27IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg27IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg27IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg27IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg27IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg28IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg28IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg28IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg28IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg28IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg28IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg29IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg29IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg29IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg29IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg29IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg29IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg30IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg30IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg30IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg30IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg30IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg30IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI5reg31IH5_3isa3isa9_7reg_any3dst,
        CODASIP_SWITCH_VALUE_MI5reg31IH5_3isa3isa9_7reg_any3src,
        CODASIP_SWITCH_VALUE_MI5reg31IH5_3isa3isa9_7reg_any4rs_1,
        CODASIP_SWITCH_VALUE_MI5reg31IH5_3isa3isa9_7reg_any4rs_2,
        CODASIP_SWITCH_VALUE_MI5reg31IH5_3isa3isa9_7reg_any4src1,
        CODASIP_SWITCH_VALUE_MI5reg31IH5_3isa3isa9_7reg_any4src2,
        CODASIP_SWITCH_VALUE_MI6i_compIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI6i_jalrIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI6i_loadIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI6i_xretIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI6opc_orIH5_3isa3isa16_13opc_comp_3reg3opc,
        CODASIP_SWITCH_VALUE_MI7csr_mieIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI7csr_mipIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI7csr_nmiIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI7i_auipcIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI7i_ecallIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI7i_fenceIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI7i_storeIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI7i_unimpIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI7opc_addIH5_3isa3isa16_13opc_comp_3reg3opc,
        CODASIP_SWITCH_VALUE_MI7opc_andIH5_3isa3isa16_13opc_comp_3reg3opc,
        CODASIP_SWITCH_VALUE_MI7opc_beqIH5_3isa3isa26_23opc_control_conditional3opc,
        CODASIP_SWITCH_VALUE_MI7opc_bgeIH5_3isa3isa26_23opc_control_conditional3opc,
        CODASIP_SWITCH_VALUE_MI7opc_bltIH5_3isa3isa26_23opc_control_conditional3opc,
        CODASIP_SWITCH_VALUE_MI7opc_bneIH5_3isa3isa26_23opc_control_conditional3opc,
        CODASIP_SWITCH_VALUE_MI7opc_oriIH5_3isa3isa20_17opc_comp_2reg_imm3opc,
        CODASIP_SWITCH_VALUE_MI7opc_sllIH5_3isa3isa16_13opc_comp_3reg3opc,
        CODASIP_SWITCH_VALUE_MI7opc_sltIH5_3isa3isa16_13opc_comp_3reg3opc,
        CODASIP_SWITCH_VALUE_MI7opc_sraIH5_3isa3isa16_13opc_comp_3reg3opc,
        CODASIP_SWITCH_VALUE_MI7opc_srlIH5_3isa3isa16_13opc_comp_3reg3opc,
        CODASIP_SWITCH_VALUE_MI7opc_subIH5_3isa3isa16_13opc_comp_3reg3opc,
        CODASIP_SWITCH_VALUE_MI7opc_xorIH5_3isa3isa16_13opc_comp_3reg3opc,
        CODASIP_SWITCH_VALUE_MI8csr_mepcIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI8csr_misaIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI8i_ebreakIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI8i_fenceiIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI8i_systemIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI8opc_addiIH5_3isa3isa20_17opc_comp_2reg_imm3opc,
        CODASIP_SWITCH_VALUE_MI8opc_andiIH5_3isa3isa20_17opc_comp_2reg_imm3opc,
        CODASIP_SWITCH_VALUE_MI8opc_bgeuIH5_3isa3isa26_23opc_control_conditional3opc,
        CODASIP_SWITCH_VALUE_MI8opc_bltuIH5_3isa3isa26_23opc_control_conditional3opc,
        CODASIP_SWITCH_VALUE_MI8opc_slliIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc,
        CODASIP_SWITCH_VALUE_MI8opc_sltiIH5_3isa3isa20_17opc_comp_2reg_imm3opc,
        CODASIP_SWITCH_VALUE_MI8opc_sltuIH5_3isa3isa16_13opc_comp_3reg3opc,
        CODASIP_SWITCH_VALUE_MI8opc_sraiIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc,
        CODASIP_SWITCH_VALUE_MI8opc_srliIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc,
        CODASIP_SWITCH_VALUE_MI8opc_xoriIH5_3isa3isa20_17opc_comp_2reg_imm3opc,
        CODASIP_SWITCH_VALUE_MI8regs_csrIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI9csr_mtvalIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI9csr_mtvecIH5_3isa3isa8_6op_csr3csr,
        CODASIP_SWITCH_VALUE_MI9i_controlIH5_3isa3isa,
        CODASIP_SWITCH_VALUE_MI9opc_csrrcIH5_3isa3isa28_25opc_control_registers_reg3opc,
        CODASIP_SWITCH_VALUE_MI9opc_csrrsIH5_3isa3isa28_25opc_control_registers_reg3opc,
        CODASIP_SWITCH_VALUE_MI9opc_csrrwIH5_3isa3isa28_25opc_control_registers_reg3opc,
        CODASIP_SWITCH_VALUE_MI9opc_loadbIH5_3isa3isa11_9opc_loads3opc,
        CODASIP_SWITCH_VALUE_MI9opc_loadhIH5_3isa3isa11_9opc_loads3opc,
        CODASIP_SWITCH_VALUE_MI9opc_loadwIH5_3isa3isa11_9opc_loads3opc,
        CODASIP_SWITCH_VALUE_MI9opc_sltiuIH5_3isa3isa20_17opc_comp_2reg_imm3opc,
    }parser_switch_t;
    uint8_t MI5shiftIH5_3isa3isa11_9shift_imm3imm1_9shift_imm;
    uint32_t MI3immIH5_3isa3isa11_9imm20_s123imm1_9imm20_s12;
    uint8_t MI3immIH5_3isa3isa6_4imm53imm1_4imm5;
    int32_t MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20;
    int16_t MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12;
    int16_t MI4simmIH5_3isa3isa10_8simm12_s8simm12_s1_13simm12_simple;
    int16_t MI4simmIH5_3isa3isa8_6simm126simm121_13simm12_simple;
    parser_switch_t codasip_switch_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc;
    parser_switch_t codasip_switch_MI11i_mem_modelIH5_3isa3isa;
    parser_switch_t codasip_switch_MI12i_load_storeIH5_3isa3isa;
    parser_switch_t codasip_switch_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc;
    parser_switch_t codasip_switch_MI14i_control_regsIH5_3isa3isa;
    parser_switch_t codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1;
    parser_switch_t codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2;
    parser_switch_t codasip_switch_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc;
    parser_switch_t codasip_switch_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc;
    parser_switch_t codasip_switch_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc;
    parser_switch_t codasip_switch_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc;
    parser_switch_t codasip_switch_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc;
    parser_switch_t codasip_switch_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc;
    parser_switch_t codasip_switch_MI3isaIH5_3isa3isa;
    parser_switch_t codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst;
    parser_switch_t codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src;
    parser_switch_t codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1;
    parser_switch_t codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2;
    parser_switch_t codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1;
    parser_switch_t codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2;
    parser_switch_t codasip_switch_MI6i_compIH5_3isa3isa;
    parser_switch_t codasip_switch_MI6op_csrIH5_3isa3isa8_6op_csr3csr;
    parser_switch_t codasip_switch_MI6simm12IH5_3isa3isa8_6simm126simm12;
    parser_switch_t codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any3dst;
    parser_switch_t codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any3src;
    parser_switch_t codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1;
    parser_switch_t codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2;
    parser_switch_t codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4src1;
    parser_switch_t codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4src2;
    parser_switch_t codasip_switch_MI8i_systemIH5_3isa3isa;
    parser_switch_t codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr;
    parser_switch_t codasip_switch_MI8simm12_sIH5_3isa3isa10_8simm12_s8simm12_s;
    parser_switch_t codasip_switch_MI9i_controlIH5_3isa3isa;
    parser_switch_t codasip_switch_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc;
    std::stack<disassembler::DsmText> m_Streams;
    codasip_address_t m_Address;
public:
    DecodersInterface::Instructions m_Instructions;
    DecodersInterface::Operands m_Operands;
private:
    int idecstate;
    int Parser_MI3isaIH5_3isa3isa(const uint32_t input);
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
    int Generator_MI3isaIH5_3isa3isa(InstructionWithOperands& output, const bool decodeOperands);
    int Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3dst(InstructionWithOperands& output, const bool decodeOperands);
    int Generator_MI4regsIH5_3isa3isa9_7reg_any3dst(InstructionWithOperands& output, const bool decodeOperands);
    int Generator_MI6op_csrIH5_3isa3isa8_6op_csr3csr(InstructionWithOperands& output, const bool decodeOperands);
    int Generator_MI8regs_csrIH5_3isa3isa8_6op_csr3csr(InstructionWithOperands& output, const bool decodeOperands);
    int Generator_MI7reg_anyIH5_3isa3isa9_7reg_any3src(InstructionWithOperands& output, const bool decodeOperands);
    int Generator_MI4regsIH5_3isa3isa9_7reg_any3src(InstructionWithOperands& output, const bool decodeOperands);
    int Generator_MI6simm12IH5_3isa3isa8_6simm126simm12(InstructionWithOperands& output, const bool decodeOperands);
    int Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4src1(InstructionWithOperands& output, const bool decodeOperands);
    int Generator_MI4regsIH5_3isa3isa9_7reg_any4src1(InstructionWithOperands& output, const bool decodeOperands);
    int Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4src2(InstructionWithOperands& output, const bool decodeOperands);
    int Generator_MI4regsIH5_3isa3isa9_7reg_any4src2(InstructionWithOperands& output, const bool decodeOperands);
    int Generator_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc(InstructionWithOperands& output, const bool decodeOperands);
    int Generator_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc(InstructionWithOperands& output, const bool decodeOperands);
    int Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1(InstructionWithOperands& output, const bool decodeOperands);
    int Generator_MI4regsIH5_3isa3isa9_7reg_any4rs_1(InstructionWithOperands& output, const bool decodeOperands);
    int Generator_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2(InstructionWithOperands& output, const bool decodeOperands);
    int Generator_MI4regsIH5_3isa3isa9_7reg_any4rs_2(InstructionWithOperands& output, const bool decodeOperands);
public:
    /**
     *  \brief  Decode
     */
    void Decode(InstructionWithOperands& output, const codasip::MaxInt& input, const bool decodeOperands);
    /**
     *  \brief  GetInstructions
     */
    const DecodersInterface::Instructions& GetInstructions() const ;
    /**
     *  \brief  GetOperands
     */
    const DecodersInterface::Operands& GetOperands() const ;
    /**
     *  \brief  MI3isaIH5_3isa3isa
     */
    MI3isaIH5_3isa3isa();
};
/**
 *  \brief  Parser_MI3isaIH5_3isa3isa
 */
FORCE_INLINE int MI3isaIH5_3isa3isa::Parser_MI3isaIH5_3isa3isa(const uint32_t input)
{
        SwitchClean_MI3isaIH5_3isa3isa();
        if (Parser_MI3isaIH5_3isa3isa_bs_32(input) == INSTPARSER_OK) return INSTPARSER_OK;
        return INSTPARSER_INVALIDCODE;
}
/**
 *  \brief  Parser_MI3isaIH5_3isa3isa_bs_32
 */
FORCE_INLINE int MI3isaIH5_3isa3isa::Parser_MI3isaIH5_3isa3isa_bs_32(const uint32_t input)
{
        if (((input & 0xffffffff) == 0x100f /*00000000000000000001000000001111*/ ) || 
                ((input & 0xfffff) == 0xf /*XXXXXXXXXXXX00000000000000001111*/ )) {
            codasip_switch_MI3isaIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI11i_mem_modelIH5_3isa3isa;
            if (((input & 0xffffffff) == 0x100f /*00000000000000000001000000001111*/ )) {
                codasip_switch_MI11i_mem_modelIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI8i_fenceiIH5_3isa3isa;
                goto END_OF_MI11i_mem_modelIH5_3isa3isa;
            }
            if (((input & 0xfffff) == 0xf /*XXXXXXXXXXXX00000000000000001111*/ )) {
                codasip_switch_MI11i_mem_modelIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI7i_fenceIH5_3isa3isa;
                switch (((input & 0xf000000) )) {
                case ( 0x0 /*XXXX0000*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2 = CODASIP_SWITCH_VALUE_MI14opc_hint_fenceIH5_3isa3isa18_15opc_fence_param6param2;
                    break;
                }
                case ( 0x1000000 /*XXXX0001*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2 = CODASIP_SWITCH_VALUE_MI11opc_w_fenceIH5_3isa3isa18_15opc_fence_param6param2;
                    break;
                }
                case ( 0x2000000 /*XXXX0010*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2 = CODASIP_SWITCH_VALUE_MI11opc_r_fenceIH5_3isa3isa18_15opc_fence_param6param2;
                    break;
                }
                case ( 0x3000000 /*XXXX0011*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2 = CODASIP_SWITCH_VALUE_MI12opc_rw_fenceIH5_3isa3isa18_15opc_fence_param6param2;
                    break;
                }
                case ( 0x4000000 /*XXXX0100*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2 = CODASIP_SWITCH_VALUE_MI11opc_o_fenceIH5_3isa3isa18_15opc_fence_param6param2;
                    break;
                }
                case ( 0x5000000 /*XXXX0101*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2 = CODASIP_SWITCH_VALUE_MI12opc_ow_fenceIH5_3isa3isa18_15opc_fence_param6param2;
                    break;
                }
                case ( 0x6000000 /*XXXX0110*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2 = CODASIP_SWITCH_VALUE_MI12opc_or_fenceIH5_3isa3isa18_15opc_fence_param6param2;
                    break;
                }
                case ( 0x7000000 /*XXXX0111*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2 = CODASIP_SWITCH_VALUE_MI13opc_orw_fenceIH5_3isa3isa18_15opc_fence_param6param2;
                    break;
                }
                case ( 0x8000000 /*XXXX1000*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2 = CODASIP_SWITCH_VALUE_MI11opc_i_fenceIH5_3isa3isa18_15opc_fence_param6param2;
                    break;
                }
                case ( 0x9000000 /*XXXX1001*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2 = CODASIP_SWITCH_VALUE_MI12opc_iw_fenceIH5_3isa3isa18_15opc_fence_param6param2;
                    break;
                }
                case ( 0xa000000 /*XXXX1010*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2 = CODASIP_SWITCH_VALUE_MI12opc_ir_fenceIH5_3isa3isa18_15opc_fence_param6param2;
                    break;
                }
                case ( 0xb000000 /*XXXX1011*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2 = CODASIP_SWITCH_VALUE_MI13opc_irw_fenceIH5_3isa3isa18_15opc_fence_param6param2;
                    break;
                }
                case ( 0xc000000 /*XXXX1100*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2 = CODASIP_SWITCH_VALUE_MI12opc_io_fenceIH5_3isa3isa18_15opc_fence_param6param2;
                    break;
                }
                case ( 0xd000000 /*XXXX1101*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2 = CODASIP_SWITCH_VALUE_MI13opc_iow_fenceIH5_3isa3isa18_15opc_fence_param6param2;
                    break;
                }
                case ( 0xe000000 /*XXXX1110*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2 = CODASIP_SWITCH_VALUE_MI13opc_ior_fenceIH5_3isa3isa18_15opc_fence_param6param2;
                    break;
                }
                case ( 0xf000000 /*XXXX1111*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2 = CODASIP_SWITCH_VALUE_MI14opc_iorw_fenceIH5_3isa3isa18_15opc_fence_param6param2;
                    break;
                }
                default: 
                    return INSTPARSER_INVALIDCODE;
                }
                switch (((input & 0xf00000) )) {
                case ( 0x0 /*XXXXXXXX0000*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1 = CODASIP_SWITCH_VALUE_MI14opc_hint_fenceIH5_3isa3isa18_15opc_fence_param6param1;
                    break;
                }
                case ( 0x100000 /*XXXXXXXX0001*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1 = CODASIP_SWITCH_VALUE_MI11opc_w_fenceIH5_3isa3isa18_15opc_fence_param6param1;
                    break;
                }
                case ( 0x200000 /*XXXXXXXX0010*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1 = CODASIP_SWITCH_VALUE_MI11opc_r_fenceIH5_3isa3isa18_15opc_fence_param6param1;
                    break;
                }
                case ( 0x300000 /*XXXXXXXX0011*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1 = CODASIP_SWITCH_VALUE_MI12opc_rw_fenceIH5_3isa3isa18_15opc_fence_param6param1;
                    break;
                }
                case ( 0x400000 /*XXXXXXXX0100*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1 = CODASIP_SWITCH_VALUE_MI11opc_o_fenceIH5_3isa3isa18_15opc_fence_param6param1;
                    break;
                }
                case ( 0x500000 /*XXXXXXXX0101*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1 = CODASIP_SWITCH_VALUE_MI12opc_ow_fenceIH5_3isa3isa18_15opc_fence_param6param1;
                    break;
                }
                case ( 0x600000 /*XXXXXXXX0110*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1 = CODASIP_SWITCH_VALUE_MI12opc_or_fenceIH5_3isa3isa18_15opc_fence_param6param1;
                    break;
                }
                case ( 0x700000 /*XXXXXXXX0111*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1 = CODASIP_SWITCH_VALUE_MI13opc_orw_fenceIH5_3isa3isa18_15opc_fence_param6param1;
                    break;
                }
                case ( 0x800000 /*XXXXXXXX1000*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1 = CODASIP_SWITCH_VALUE_MI11opc_i_fenceIH5_3isa3isa18_15opc_fence_param6param1;
                    break;
                }
                case ( 0x900000 /*XXXXXXXX1001*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1 = CODASIP_SWITCH_VALUE_MI12opc_iw_fenceIH5_3isa3isa18_15opc_fence_param6param1;
                    break;
                }
                case ( 0xa00000 /*XXXXXXXX1010*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1 = CODASIP_SWITCH_VALUE_MI12opc_ir_fenceIH5_3isa3isa18_15opc_fence_param6param1;
                    break;
                }
                case ( 0xb00000 /*XXXXXXXX1011*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1 = CODASIP_SWITCH_VALUE_MI13opc_irw_fenceIH5_3isa3isa18_15opc_fence_param6param1;
                    break;
                }
                case ( 0xc00000 /*XXXXXXXX1100*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1 = CODASIP_SWITCH_VALUE_MI12opc_io_fenceIH5_3isa3isa18_15opc_fence_param6param1;
                    break;
                }
                case ( 0xd00000 /*XXXXXXXX1101*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1 = CODASIP_SWITCH_VALUE_MI13opc_iow_fenceIH5_3isa3isa18_15opc_fence_param6param1;
                    break;
                }
                case ( 0xe00000 /*XXXXXXXX1110*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1 = CODASIP_SWITCH_VALUE_MI13opc_ior_fenceIH5_3isa3isa18_15opc_fence_param6param1;
                    break;
                }
                case ( 0xf00000 /*XXXXXXXX1111*/ ):
                {
                    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1 = CODASIP_SWITCH_VALUE_MI14opc_iorw_fenceIH5_3isa3isa18_15opc_fence_param6param1;
                    break;
                }
                default: 
                    return INSTPARSER_INVALIDCODE;
                }
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
            codasip_switch_MI3isaIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI8i_systemIH5_3isa3isa;
            switch (((input & 0xffffffff) )) {
            case ( 0x73 /*00000000000000000000000001110011*/ ):
            {
                codasip_switch_MI8i_systemIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI7i_ecallIH5_3isa3isa;
                break;
            }
            case ( 0x100073 /*00000000000100000000000001110011*/ ):
            {
                codasip_switch_MI8i_systemIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI8i_ebreakIH5_3isa3isa;
                break;
            }
            case ( 0x10500073 /*00010000010100000000000001110011*/ ):
            {
                codasip_switch_MI8i_systemIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI5i_wfiIH5_3isa3isa;
                break;
            }
            case ( 0x30200073 /*00110000001000000000000001110011*/ ):
            {
                codasip_switch_MI8i_systemIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI6i_xretIH5_3isa3isa;
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
            codasip_switch_MI3isaIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI6i_compIH5_3isa3isa;
            if (((input & 0xfe00307f) == 0x1013 /*0000000XXXXXXXXXXX01XXXXX0010011*/ ) || 
                    ((input & 0xfe00707f) == 0x40005013 /*0100000XXXXXXXXXX101XXXXX0010011*/ )) {
                codasip_switch_MI6i_compIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI21i_comp_2reg_imm_shiftIH5_3isa3isa;
                switch (((input & 0xfe00707f) )) {
                case ( 0x1013 /*0000000XXXXXXXXXX001XXXXX0010011*/ ):
                {
                    codasip_switch_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc = CODASIP_SWITCH_VALUE_MI8opc_slliIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc;
                    break;
                }
                case ( 0x5013 /*0000000XXXXXXXXXX101XXXXX0010011*/ ):
                {
                    codasip_switch_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc = CODASIP_SWITCH_VALUE_MI8opc_srliIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc;
                    break;
                }
                case ( 0x40005013 /*0100000XXXXXXXXXX101XXXXX0010011*/ ):
                {
                    codasip_switch_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc = CODASIP_SWITCH_VALUE_MI8opc_sraiIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc;
                    break;
                }
                default: 
                    return INSTPARSER_INVALIDCODE;
                }
                MI5shiftIH5_3isa3isa11_9shift_imm3imm1_9shift_imm = (((input & 0x1f00000) >> 20) << 0);
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                goto END_OF_MI6i_compIH5_3isa3isa;
            }
            if (((input & 0xfe00007f) == 0x33 /*0000000XXXXXXXXXXXXXXXXXX0110011*/ ) || 
                    ((input & 0xfe00707f) == 0x40000033 /*0100000XXXXXXXXXX000XXXXX0110011*/ ) || 
                    ((input & 0xfe00707f) == 0x40005033 /*0100000XXXXXXXXXX101XXXXX0110011*/ )) {
                codasip_switch_MI6i_compIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI11i_comp_3regIH5_3isa3isa;
                switch (((input & 0xfe00707f) )) {
                case ( 0x33 /*0000000XXXXXXXXXX000XXXXX0110011*/ ):
                {
                    codasip_switch_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc = CODASIP_SWITCH_VALUE_MI7opc_addIH5_3isa3isa16_13opc_comp_3reg3opc;
                    break;
                }
                case ( 0x1033 /*0000000XXXXXXXXXX001XXXXX0110011*/ ):
                {
                    codasip_switch_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc = CODASIP_SWITCH_VALUE_MI7opc_sllIH5_3isa3isa16_13opc_comp_3reg3opc;
                    break;
                }
                case ( 0x2033 /*0000000XXXXXXXXXX010XXXXX0110011*/ ):
                {
                    codasip_switch_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc = CODASIP_SWITCH_VALUE_MI7opc_sltIH5_3isa3isa16_13opc_comp_3reg3opc;
                    break;
                }
                case ( 0x3033 /*0000000XXXXXXXXXX011XXXXX0110011*/ ):
                {
                    codasip_switch_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc = CODASIP_SWITCH_VALUE_MI8opc_sltuIH5_3isa3isa16_13opc_comp_3reg3opc;
                    break;
                }
                case ( 0x4033 /*0000000XXXXXXXXXX100XXXXX0110011*/ ):
                {
                    codasip_switch_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc = CODASIP_SWITCH_VALUE_MI7opc_xorIH5_3isa3isa16_13opc_comp_3reg3opc;
                    break;
                }
                case ( 0x5033 /*0000000XXXXXXXXXX101XXXXX0110011*/ ):
                {
                    codasip_switch_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc = CODASIP_SWITCH_VALUE_MI7opc_srlIH5_3isa3isa16_13opc_comp_3reg3opc;
                    break;
                }
                case ( 0x6033 /*0000000XXXXXXXXXX110XXXXX0110011*/ ):
                {
                    codasip_switch_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc = CODASIP_SWITCH_VALUE_MI6opc_orIH5_3isa3isa16_13opc_comp_3reg3opc;
                    break;
                }
                case ( 0x7033 /*0000000XXXXXXXXXX111XXXXX0110011*/ ):
                {
                    codasip_switch_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc = CODASIP_SWITCH_VALUE_MI7opc_andIH5_3isa3isa16_13opc_comp_3reg3opc;
                    break;
                }
                case ( 0x40000033 /*0100000XXXXXXXXXX000XXXXX0110011*/ ):
                {
                    codasip_switch_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc = CODASIP_SWITCH_VALUE_MI7opc_subIH5_3isa3isa16_13opc_comp_3reg3opc;
                    break;
                }
                case ( 0x40005033 /*0100000XXXXXXXXXX101XXXXX0110011*/ ):
                {
                    codasip_switch_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc = CODASIP_SWITCH_VALUE_MI7opc_sraIH5_3isa3isa16_13opc_comp_3reg3opc;
                    break;
                }
                default: 
                    return INSTPARSER_INVALIDCODE;
                }
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src2_bc__24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src1_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                goto END_OF_MI6i_compIH5_3isa3isa;
            }
            if (((input & 0x7f) == 0x17 /*XXXXXXXXXXXXXXXXXXXXXXXXX0010111*/ )) {
                codasip_switch_MI6i_compIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI7i_auipcIH5_3isa3isa;
                MI3immIH5_3isa3isa11_9imm20_s123imm1_9imm20_s12 = (((input & 0xfffff000) >> 12) << 0);
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                goto END_OF_MI6i_compIH5_3isa3isa;
            }
            if (((input & 0x7f) == 0x37 /*XXXXXXXXXXXXXXXXXXXXXXXXX0110111*/ )) {
                codasip_switch_MI6i_compIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI5i_luiIH5_3isa3isa;
                MI3immIH5_3isa3isa11_9imm20_s123imm1_9imm20_s12 = (((input & 0xfffff000) >> 12) << 0);
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                goto END_OF_MI6i_compIH5_3isa3isa;
            }
            if (((input & 0x307f) == 0x3013 /*XXXXXXXXXXXXXXXXXX11XXXXX0010011*/ ) || 
                    ((input & 0x107f) == 0x13 /*XXXXXXXXXXXXXXXXXXX0XXXXX0010011*/ )) {
                codasip_switch_MI6i_compIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI15i_comp_2reg_immIH5_3isa3isa;
                if (Parser_MI6simm12IH5_3isa3isa8_6simm126simm12_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                switch (((input & 0x707f) )) {
                case ( 0x3013 /*XXXXXXXXXXXXXXXXX011XXXXX0010011*/ ):
                {
                    codasip_switch_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc = CODASIP_SWITCH_VALUE_MI9opc_sltiuIH5_3isa3isa20_17opc_comp_2reg_imm3opc;
                    break;
                }
                case ( 0x7013 /*XXXXXXXXXXXXXXXXX111XXXXX0010011*/ ):
                {
                    codasip_switch_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc = CODASIP_SWITCH_VALUE_MI8opc_andiIH5_3isa3isa20_17opc_comp_2reg_imm3opc;
                    break;
                }
                case ( 0x13 /*XXXXXXXXXXXXXXXXX000XXXXX0010011*/ ):
                {
                    codasip_switch_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc = CODASIP_SWITCH_VALUE_MI8opc_addiIH5_3isa3isa20_17opc_comp_2reg_imm3opc;
                    break;
                }
                case ( 0x2013 /*XXXXXXXXXXXXXXXXX010XXXXX0010011*/ ):
                {
                    codasip_switch_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc = CODASIP_SWITCH_VALUE_MI8opc_sltiIH5_3isa3isa20_17opc_comp_2reg_imm3opc;
                    break;
                }
                case ( 0x4013 /*XXXXXXXXXXXXXXXXX100XXXXX0010011*/ ):
                {
                    codasip_switch_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc = CODASIP_SWITCH_VALUE_MI8opc_xoriIH5_3isa3isa20_17opc_comp_2reg_imm3opc;
                    break;
                }
                case ( 0x6013 /*XXXXXXXXXXXXXXXXX110XXXXX0010011*/ ):
                {
                    codasip_switch_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc = CODASIP_SWITCH_VALUE_MI7opc_oriIH5_3isa3isa20_17opc_comp_2reg_imm3opc;
                    break;
                }
                default: 
                    return INSTPARSER_INVALIDCODE;
                }
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                goto END_OF_MI6i_compIH5_3isa3isa;
            }
            return INSTPARSER_INVALIDCODE;
            // Collecting label
            END_OF_MI6i_compIH5_3isa3isa:
            goto END_OF_MI3isaIH5_3isa3isa;
        }
        if (((input & 0xfe00407f) == 0x2b /*0000000XXXXXXXXXX0XXXXXXX0101011*/ ) || 
                ((input & 0xfe00707f) == 0x402b /*0000000XXXXXXXXXX100XXXXX0101011*/ )) {
            codasip_switch_MI3isaIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI14i_ext_hackatonIH5_3isa3isa;
            if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2_bc__24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            switch (((input & 0x7000) )) {
            case ( 0x0 /*XXXXXXXXXXXXXXXXX000*/ ):
            {
                codasip_switch_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc = CODASIP_SWITCH_VALUE_MI21opc_hackaton_custom_aIH5_3isa3isa24_21opc_hackaton_custom_i3opc;
                break;
            }
            case ( 0x1000 /*XXXXXXXXXXXXXXXXX001*/ ):
            {
                codasip_switch_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc = CODASIP_SWITCH_VALUE_MI21opc_hackaton_custom_bIH5_3isa3isa24_21opc_hackaton_custom_i3opc;
                break;
            }
            case ( 0x2000 /*XXXXXXXXXXXXXXXXX010*/ ):
            {
                codasip_switch_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc = CODASIP_SWITCH_VALUE_MI21opc_hackaton_custom_cIH5_3isa3isa24_21opc_hackaton_custom_i3opc;
                break;
            }
            case ( 0x3000 /*XXXXXXXXXXXXXXXXX011*/ ):
            {
                codasip_switch_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc = CODASIP_SWITCH_VALUE_MI21opc_hackaton_custom_dIH5_3isa3isa24_21opc_hackaton_custom_i3opc;
                break;
            }
            case ( 0x4000 /*XXXXXXXXXXXXXXXXX100*/ ):
            {
                codasip_switch_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc = CODASIP_SWITCH_VALUE_MI21opc_hackaton_custom_eIH5_3isa3isa24_21opc_hackaton_custom_i3opc;
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
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
            codasip_switch_MI3isaIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI14i_control_regsIH5_3isa3isa;
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
                codasip_switch_MI14i_control_regsIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI23i_control_registers_immIH5_3isa3isa;
                if (Parser_MI6op_csrIH5_3isa3isa8_6op_csr3csr_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                MI3immIH5_3isa3isa6_4imm53imm1_4imm5 = (((input & 0xf8000) >> 15) << 0);
                switch (((input & 0x707f) )) {
                case ( 0x6073 /*XXXXXXXXXXXXXXXXX110XXXXX1110011*/ ):
                {
                    codasip_switch_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc = CODASIP_SWITCH_VALUE_MI10opc_csrrsiIH5_3isa3isa28_25opc_control_registers_imm3opc;
                    break;
                }
                case ( 0x5073 /*XXXXXXXXXXXXXXXXX101XXXXX1110011*/ ):
                {
                    codasip_switch_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc = CODASIP_SWITCH_VALUE_MI10opc_csrrwiIH5_3isa3isa28_25opc_control_registers_imm3opc;
                    break;
                }
                case ( 0x7073 /*XXXXXXXXXXXXXXXXX111XXXXX1110011*/ ):
                {
                    codasip_switch_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc = CODASIP_SWITCH_VALUE_MI10opc_csrrciIH5_3isa3isa28_25opc_control_registers_imm3opc;
                    break;
                }
                default: 
                    return INSTPARSER_INVALIDCODE;
                }
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
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
                codasip_switch_MI14i_control_regsIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI23i_control_registers_regIH5_3isa3isa;
                if (Parser_MI6op_csrIH5_3isa3isa8_6op_csr3csr_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                switch (((input & 0x707f) )) {
                case ( 0x2073 /*XXXXXXXXXXXXXXXXX010XXXXX1110011*/ ):
                {
                    codasip_switch_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc = CODASIP_SWITCH_VALUE_MI9opc_csrrsIH5_3isa3isa28_25opc_control_registers_reg3opc;
                    break;
                }
                case ( 0x1073 /*XXXXXXXXXXXXXXXXX001XXXXX1110011*/ ):
                {
                    codasip_switch_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc = CODASIP_SWITCH_VALUE_MI9opc_csrrwIH5_3isa3isa28_25opc_control_registers_reg3opc;
                    break;
                }
                case ( 0x3073 /*XXXXXXXXXXXXXXXXX011XXXXX1110011*/ ):
                {
                    codasip_switch_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc = CODASIP_SWITCH_VALUE_MI9opc_csrrcIH5_3isa3isa28_25opc_control_registers_reg3opc;
                    break;
                }
                default: 
                    return INSTPARSER_INVALIDCODE;
                }
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                goto END_OF_MI14i_control_regsIH5_3isa3isa;
            }
            return INSTPARSER_INVALIDCODE;
            // Collecting label
            END_OF_MI14i_control_regsIH5_3isa3isa:
            goto END_OF_MI3isaIH5_3isa3isa;
        }
        if (((input & 0xffffffff) == 0xc000107f /*11000000000000000001000001111111*/ )) {
            codasip_switch_MI3isaIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI7i_unimpIH5_3isa3isa;
            goto END_OF_MI3isaIH5_3isa3isa;
        }
        if (((input & 0x707f) == 0x67 /*XXXXXXXXXXXXXXXXX000XXXXX1100111*/ ) || 
                ((input & 0x607f) == 0x6063 /*XXXXXXXXXXXXXXXXX11XXXXXX1100011*/ ) || 
                ((input & 0x207f) == 0x63 /*XXXXXXXXXXXXXXXXXX0XXXXXX1100011*/ ) || 
                ((input & 0x7f) == 0x6f /*XXXXXXXXXXXXXXXXXXXXXXXXX1101111*/ )) {
            codasip_switch_MI3isaIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI9i_controlIH5_3isa3isa;
            if (((input & 0x7f) == 0x6f /*XXXXXXXXXXXXXXXXXXXXXXXXX1101111*/ )) {
                codasip_switch_MI9i_controlIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI5i_jalIH5_3isa3isa;
                MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20 = (((input & 0x80000000) >> 31) << 19);
                MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20 |= (((input & 0xff000) >> 12) << 11);
                MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20 |= (((input & 0x100000) >> 20) << 10);
                MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20 |= (((input & 0x7fe00000) >> 21) << 0);
                MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20 = (((int32_t)((int32_t)MI4addrIH5_3isa3isa13_10rel_addr204addr1_10rel_addr20 << 12)) >> 12);
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                goto END_OF_MI9i_controlIH5_3isa3isa;
            }
            if (((input & 0x707f) == 0x67 /*XXXXXXXXXXXXXXXXX000XXXXX1100111*/ )) {
                codasip_switch_MI9i_controlIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI6i_jalrIH5_3isa3isa;
                if (Parser_MI6simm12IH5_3isa3isa8_6simm126simm12_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                goto END_OF_MI9i_controlIH5_3isa3isa;
            }
            if (((input & 0x607f) == 0x6063 /*XXXXXXXXXXXXXXXXX11XXXXXX1100011*/ ) || 
                    ((input & 0x207f) == 0x63 /*XXXXXXXXXXXXXXXXXX0XXXXXX1100011*/ )) {
                codasip_switch_MI9i_controlIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI21i_control_conditionalIH5_3isa3isa;
                MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12 = (((input & 0x80000000) >> 31) << 11);
                MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12 |= (((input & 0x80) >> 7) << 10);
                MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12 |= (((input & 0x7e000000) >> 25) << 4);
                MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12 |= (((input & 0xf00) >> 8) << 0);
                MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12 = (((int16_t)((int16_t)MI4addrIH5_3isa3isa13_10rel_addr124addr1_10rel_addr12 << 4)) >> 4);
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src2_bc__24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src1_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                switch (((input & 0x707f) )) {
                case ( 0x6063 /*XXXXXXXXXXXXXXXXX110XXXXX1100011*/ ):
                {
                    codasip_switch_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc = CODASIP_SWITCH_VALUE_MI8opc_bltuIH5_3isa3isa26_23opc_control_conditional3opc;
                    break;
                }
                case ( 0x7063 /*XXXXXXXXXXXXXXXXX111XXXXX1100011*/ ):
                {
                    codasip_switch_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc = CODASIP_SWITCH_VALUE_MI8opc_bgeuIH5_3isa3isa26_23opc_control_conditional3opc;
                    break;
                }
                case ( 0x63 /*XXXXXXXXXXXXXXXXX000XXXXX1100011*/ ):
                {
                    codasip_switch_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc = CODASIP_SWITCH_VALUE_MI7opc_beqIH5_3isa3isa26_23opc_control_conditional3opc;
                    break;
                }
                case ( 0x1063 /*XXXXXXXXXXXXXXXXX001XXXXX1100011*/ ):
                {
                    codasip_switch_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc = CODASIP_SWITCH_VALUE_MI7opc_bneIH5_3isa3isa26_23opc_control_conditional3opc;
                    break;
                }
                case ( 0x4063 /*XXXXXXXXXXXXXXXXX100XXXXX1100011*/ ):
                {
                    codasip_switch_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc = CODASIP_SWITCH_VALUE_MI7opc_bltIH5_3isa3isa26_23opc_control_conditional3opc;
                    break;
                }
                case ( 0x5063 /*XXXXXXXXXXXXXXXXX101XXXXX1100011*/ ):
                {
                    codasip_switch_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc = CODASIP_SWITCH_VALUE_MI7opc_bgeIH5_3isa3isa26_23opc_control_conditional3opc;
                    break;
                }
                default: 
                    return INSTPARSER_INVALIDCODE;
                }
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
            codasip_switch_MI3isaIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI12i_load_storeIH5_3isa3isa;
            if (((input & 0x707f) == 0x2003 /*XXXXXXXXXXXXXXXXX010XXXXX0000011*/ ) || 
                    ((input & 0x207f) == 0x3 /*XXXXXXXXXXXXXXXXXX0XXXXXX0000011*/ )) {
                codasip_switch_MI12i_load_storeIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI6i_loadIH5_3isa3isa;
                if (Parser_MI6simm12IH5_3isa3isa8_6simm126simm12_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3src_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc_bc__14_13_12_6_5_4_3_2_1_0_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any3dst_bc__11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                goto END_OF_MI12i_load_storeIH5_3isa3isa;
            }
            if (((input & 0x607f) == 0x23 /*XXXXXXXXXXXXXXXXX00XXXXXX0100011*/ ) || 
                    ((input & 0x707f) == 0x2023 /*XXXXXXXXXXXXXXXXX010XXXXX0100011*/ )) {
                codasip_switch_MI12i_load_storeIH5_3isa3isa = CODASIP_SWITCH_VALUE_MI7i_storeIH5_3isa3isa;
                codasip_switch_MI8simm12_sIH5_3isa3isa10_8simm12_s8simm12_s = CODASIP_SWITCH_VALUE_MI13simm12_simpleIH5_3isa3isa10_8simm12_s8simm12_s;
                MI4simmIH5_3isa3isa10_8simm12_s8simm12_s1_13simm12_simple = (((input & 0xfe000000) >> 25) << 5);
                MI4simmIH5_3isa3isa10_8simm12_s8simm12_s1_13simm12_simple |= (((input & 0xf80) >> 7) << 0);
                MI4simmIH5_3isa3isa10_8simm12_s8simm12_s1_13simm12_simple = (((int16_t)((int16_t)MI4simmIH5_3isa3isa10_8simm12_s8simm12_s1_13simm12_simple << 4)) >> 4);
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src2_bc__24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI7reg_anyIH5_3isa3isa9_7reg_any4src1_bc__19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
                if (Parser_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc_bc__14_13_12_6_5_4_3_2_1_0_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
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
FORCE_INLINE int MI3isaIH5_3isa3isa::Parser_MI6op_csrIH5_3isa3isa8_6op_csr3csr_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(const uint32_t input)
{
        codasip_switch_MI6op_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_VALUE_MI8regs_csrIH5_3isa3isa8_6op_csr3csr;
        if (Parser_MI8regs_csrIH5_3isa3isa8_6op_csr3csr_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
        return INSTPARSER_OK;
}
/**
 *  \brief  Parser_MI6simm12IH5_3isa3isa8_6simm126simm12_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32
 */
FORCE_INLINE int MI3isaIH5_3isa3isa::Parser_MI6simm12IH5_3isa3isa8_6simm126simm12_bc__31_30_29_28_27_26_25_24_23_22_21_20_bs_32(const uint32_t input)
{
        codasip_switch_MI6simm12IH5_3isa3isa8_6simm126simm12 = CODASIP_SWITCH_VALUE_MI13simm12_simpleIH5_3isa3isa8_6simm126simm12;
        MI4simmIH5_3isa3isa8_6simm126simm121_13simm12_simple = (((input & 0xfff00000) >> 20) << 0);
        MI4simmIH5_3isa3isa8_6simm126simm121_13simm12_simple = (((int16_t)((int16_t)MI4simmIH5_3isa3isa8_6simm126simm121_13simm12_simple << 4)) >> 4);
        return INSTPARSER_OK;
}
/**
 *  \brief  SwitchClean_MI3isaIH5_3isa3isa
 */
FORCE_INLINE void MI3isaIH5_3isa3isa::SwitchClean_MI3isaIH5_3isa3isa()
{
    codasip_switch_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI11i_mem_modelIH5_3isa3isa = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI12i_load_storeIH5_3isa3isa = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI13opc_comp_3regIH5_3isa3isa16_13opc_comp_3reg3opc = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI14i_control_regsIH5_3isa3isa = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param1 = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI15opc_fence_paramIH5_3isa3isa18_15opc_fence_param6param2 = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI17opc_comp_2reg_immIH5_3isa3isa20_17opc_comp_2reg_imm3opc = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI21opc_hackaton_custom_iIH5_3isa3isa24_21opc_hackaton_custom_i3opc = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI23opc_comp_2reg_imm_shiftIH5_3isa3isa26_23opc_comp_2reg_imm_shift3opc = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI23opc_control_conditionalIH5_3isa3isa26_23opc_control_conditional3opc = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI25opc_control_registers_immIH5_3isa3isa28_25opc_control_registers_imm3opc = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI25opc_control_registers_regIH5_3isa3isa28_25opc_control_registers_reg3opc = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI3isaIH5_3isa3isa = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI4regsIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI4regsIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI6i_compIH5_3isa3isa = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI6op_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI6simm12IH5_3isa3isa8_6simm126simm12 = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any3dst = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any3src = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_1 = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4rs_2 = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4src1 = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI7reg_anyIH5_3isa3isa9_7reg_any4src2 = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI8i_systemIH5_3isa3isa = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI8regs_csrIH5_3isa3isa8_6op_csr3csr = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI8simm12_sIH5_3isa3isa10_8simm12_s8simm12_s = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI9i_controlIH5_3isa3isa = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
    codasip_switch_MI9opc_loadsIH5_3isa3isa11_9opc_loads3opc = CODASIP_SWITCH_UNDEF_MI3isaIH5_3isa3isa;
}
/**
 *  \brief  Generator_MI6op_csrIH5_3isa3isa8_6op_csr3csr
 */
FORCE_INLINE int MI3isaIH5_3isa3isa::Generator_MI6op_csrIH5_3isa3isa8_6op_csr3csr(InstructionWithOperands& output, const bool decodeOperands)
{
    if (!decodeOperands)
    {
        m_Streams.top() += "op_csr";
        m_Streams.push(disassembler::DsmText());
    }
    switch (codasip_switch_MI6op_csrIH5_3isa3isa8_6op_csr3csr) {
        case CODASIP_SWITCH_VALUE_MI8regs_csrIH5_3isa3isa8_6op_csr3csr:
        Generator_MI8regs_csrIH5_3isa3isa8_6op_csr3csr(output, decodeOperands);
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    if (!decodeOperands)
    {
        output.AddOperand("op_csr", m_Streams.top().ToString());
        m_Streams.pop();
    }
    return INSTGENERATOR_OK;
}
/**
 *  \brief  Generator_MI6simm12IH5_3isa3isa8_6simm126simm12
 */
FORCE_INLINE int MI3isaIH5_3isa3isa::Generator_MI6simm12IH5_3isa3isa8_6simm126simm12(InstructionWithOperands& output, const bool decodeOperands)
{
    switch (codasip_switch_MI6simm12IH5_3isa3isa8_6simm126simm12) {
        case CODASIP_SWITCH_VALUE_MI13simm12_simpleIH5_3isa3isa8_6simm126simm12:
        if (decodeOperands)
        {
            std::stringstream out;
            out << MI4simmIH5_3isa3isa8_6simm126simm121_13simm12_simple;
            m_Streams.top() += out.str();
        }
        else
        {
            m_Streams.top() += "<imm>";
        }
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    return INSTGENERATOR_OK;
}
/**
 *  \brief  Generator_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc
 */
FORCE_INLINE int MI3isaIH5_3isa3isa::Generator_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc(InstructionWithOperands& output, const bool decodeOperands)
{
    switch (codasip_switch_MI10opc_storesIH5_3isa3isa13_10opc_stores3opc) {
        case CODASIP_SWITCH_VALUE_MI10opc_storewIH5_3isa3isa13_10opc_stores3opc:
        m_Streams.top() += "sw";
        break;
        case CODASIP_SWITCH_VALUE_MI10opc_storehIH5_3isa3isa13_10opc_stores3opc:
        m_Streams.top() += "sh";
        break;
        case CODASIP_SWITCH_VALUE_MI10opc_storebIH5_3isa3isa13_10opc_stores3opc:
        m_Streams.top() += "sb";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    return INSTGENERATOR_OK;
}
FORCE_INLINE void MI3isaIH5_3isa3isa::Decode(InstructionWithOperands& output, const codasip::MaxInt& input, const bool decodeOperands)
{
    Parser_MI3isaIH5_3isa3isa(input);
    Generator_MI3isaIH5_3isa3isa(output, decodeOperands);
}
FORCE_INLINE const DecodersInterface::Instructions& MI3isaIH5_3isa3isa::GetInstructions() const 
{
    return m_Instructions;
}
FORCE_INLINE const DecodersInterface::Operands& MI3isaIH5_3isa3isa::GetOperands() const 
{
    return m_Operands;
}
} // namespace MI15codasip_urisc_v
} // namespace profiler
} // namespace codasip

#endif
