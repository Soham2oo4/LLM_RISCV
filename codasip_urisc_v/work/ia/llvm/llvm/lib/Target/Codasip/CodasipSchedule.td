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


// schedule itineraries, this can be edited
// Note: if VLIW, we don't care about actual unit IDs
// - the only thing that matters is how many slots does something consume

def FU0_S0: FuncUnit;
def FU1_S0: FuncUnit;
def FU2_S0: FuncUnit;
def FU3_S0: FuncUnit;
def FU4_S0: FuncUnit;
def FU5_S0: FuncUnit;
def FU6_S0: FuncUnit;
def FU7_S0: FuncUnit;
def FU8_S0: FuncUnit;
def FU9_S0: FuncUnit;
def FU10_S0: FuncUnit;
def FU11_S0: FuncUnit;
def FU12_S0: FuncUnit;
def FU13_S0: FuncUnit;
def FU14_S0: FuncUnit;
def FU15_S0: FuncUnit;
def FU16_S0: FuncUnit;
def FU17_S0: FuncUnit;
def FU18_S0: FuncUnit;
def FU19_S0: FuncUnit;
def FU20_S0: FuncUnit;
def FU21_S0: FuncUnit;
def FU22_S0: FuncUnit;
def FU23_S0: FuncUnit;
def FU24_S0: FuncUnit;
def FU25_S0: FuncUnit;
def FU26_S0: FuncUnit;
def FU27_S0: FuncUnit;
def FU28_S0: FuncUnit;
def FU29_S0: FuncUnit;
def FU30_S0: FuncUnit;
def FU31_S0: FuncUnit;
def FU32_S0: FuncUnit;
def FU33_S0: FuncUnit;
def W_r_csr_marchid_S0: FuncUnit;
def W_r_csr_mcause_S0: FuncUnit;
def W_r_csr_mcountinhibit_S0: FuncUnit;
def W_r_csr_mcycle_S0: FuncUnit;
def W_r_csr_mepc_S0: FuncUnit;
def W_r_csr_mhartid_S0: FuncUnit;
def W_r_csr_mie_S0: FuncUnit;
def W_r_csr_minstret_S0: FuncUnit;
def W_r_csr_mip_S0: FuncUnit;
def W_r_csr_misa_S0: FuncUnit;
def W_r_csr_mscratch_S0: FuncUnit;
def W_r_csr_mstatus_S0: FuncUnit;
def W_r_csr_mtval_S0: FuncUnit;
def W_r_csr_mtvec_S0: FuncUnit;
def W_r_csr_nmi_S0: FuncUnit;
def W_r_csr_nmi_mtval_S0: FuncUnit;
def W_r_nmi_handler_S0: FuncUnit;
def W_rf_gpr_S0: FuncUnit;
def W_codasip_physical_regs_csr_S0: FuncUnit;
def Itin_sc_divide: InstrItinClass;
def Itin_sc_loads: InstrItinClass;
def Itin_sc_multiply: InstrItinClass;
def Itin_sc_stores: InstrItinClass;

def CodasipItineraries: ProcessorItineraries<[FU0_S0,FU1_S0,FU2_S0,FU3_S0,FU4_S0,FU5_S0,FU6_S0,FU7_S0,FU8_S0,FU9_S0,FU10_S0,FU11_S0,FU12_S0,FU13_S0,FU14_S0,FU15_S0,FU16_S0,FU17_S0,FU18_S0,FU19_S0,FU20_S0,FU21_S0,FU22_S0,FU23_S0,FU24_S0,FU25_S0,FU26_S0,FU27_S0,FU28_S0,FU29_S0,FU30_S0,FU31_S0,FU32_S0,FU33_S0,W_r_csr_marchid_S0,W_r_csr_mcause_S0,W_r_csr_mcountinhibit_S0,W_r_csr_mcycle_S0,W_r_csr_mepc_S0,W_r_csr_mhartid_S0,W_r_csr_mie_S0,W_r_csr_minstret_S0,W_r_csr_mip_S0,W_r_csr_misa_S0,W_r_csr_mscratch_S0,W_r_csr_mstatus_S0,W_r_csr_mtval_S0,W_r_csr_mtvec_S0,W_r_csr_nmi_S0,W_r_csr_nmi_mtval_S0,W_r_nmi_handler_S0,W_rf_gpr_S0,W_codasip_physical_regs_csr_S0], [], [
InstrItinData<Itin_sc_divide, [InstrStage< 1, [FU0_S0]>, InstrStage< 1, [FU1_S0]>, InstrStage< 1, [FU2_S0]>, InstrStage< 1, [FU3_S0]>, InstrStage< 1, [FU4_S0]>, InstrStage< 1, [FU5_S0]>, InstrStage< 1, [FU6_S0]>, InstrStage< 1, [FU7_S0]>, InstrStage< 1, [FU8_S0]>, InstrStage< 1, [FU9_S0]>, InstrStage< 1, [FU10_S0]>, InstrStage< 1, [FU11_S0]>, InstrStage< 1, [FU12_S0]>, InstrStage< 1, [FU13_S0]>, InstrStage< 1, [FU14_S0]>, InstrStage< 1, [FU15_S0]>, InstrStage< 1, [FU16_S0]>, InstrStage< 1, [FU17_S0]>, InstrStage< 1, [FU18_S0]>, InstrStage< 1, [FU19_S0]>, InstrStage< 1, [FU20_S0]>, InstrStage< 1, [FU21_S0]>, InstrStage< 1, [FU22_S0]>, InstrStage< 1, [FU23_S0]>, InstrStage< 1, [FU24_S0]>, InstrStage< 1, [FU25_S0]>, InstrStage< 1, [FU26_S0]>, InstrStage< 1, [FU27_S0]>, InstrStage< 1, [FU28_S0]>, InstrStage< 1, [FU29_S0]>, InstrStage< 1, [FU30_S0]>, InstrStage< 1, [FU31_S0]>, InstrStage< 1, [FU32_S0]>, InstrStage< 1, [FU33_S0]>]>,
InstrItinData<Itin_sc_loads, [InstrStage< 1, [FU0_S0]>, InstrStage<0,[W_rf_gpr_S0],0>, InstrStage< 1, [FU1_S0]>]>,
InstrItinData<Itin_sc_multiply, [InstrStage< 1, [FU0_S0]>]>,
InstrItinData<Itin_sc_stores, [InstrStage< 1, [FU0_S0]>]>
]>;


// an empty file, unless edited
include "CodasipCustomSchedule.td"
// an empty file, unless vliw
include "CodasipVliwSchedule.td"

