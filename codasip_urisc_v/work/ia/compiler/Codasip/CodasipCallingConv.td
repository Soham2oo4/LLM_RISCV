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


// definition of calling conventions
// should be backed by abi def, but can be done automatically as well

def CC_Codasip_Gen: CallingConv<[
  CCIfType<[i16,i8,i1], CCPromoteToType<i32>>,
  CCIfNotVarArg<CCIfType<[i32], CCAssignToReg<[rf_gpr_10, rf_gpr_11, rf_gpr_12, rf_gpr_13, rf_gpr_14, rf_gpr_15, rf_gpr_16, rf_gpr_17]>>>,
  CCIfType<[i32], CCAssignToStack<4,4>>
]>;

def RetCC_Codasip_Gen: CallingConv<[
  CCIfType<[i16,i8,i1], CCPromoteToType<i32>>,
  CCIfType<[i32], CCAssignToReg<[rf_gpr_10, rf_gpr_11, rf_gpr_12, rf_gpr_13]>>
]>;

def CSR_NoRar_Codasip: CalleeSavedRegs<
  (add rf_gpr_9, rf_gpr_18, rf_gpr_19, rf_gpr_20, rf_gpr_21, rf_gpr_22, rf_gpr_23, rf_gpr_24, rf_gpr_25, rf_gpr_26, rf_gpr_27, rf_gpr_8)
>;

// rar must come first
def CSR_Codasip: CalleeSavedRegs<
  (add rf_gpr_1, CSR_NoRar_Codasip)
>;

// all registers (no-rar variant not needed)
def CSR_All_Codasip: CalleeSavedRegs<
  (add rf_gpr_1, rf_gpr_3, rf_gpr_4, rf_gpr_5, rf_gpr_6, rf_gpr_7, rf_gpr_8, rf_gpr_9, rf_gpr_10, rf_gpr_11, rf_gpr_12, rf_gpr_13, rf_gpr_14, rf_gpr_15, rf_gpr_16, rf_gpr_17, rf_gpr_18, rf_gpr_19, rf_gpr_20, rf_gpr_21, rf_gpr_22, rf_gpr_23, rf_gpr_24, rf_gpr_25, rf_gpr_26, rf_gpr_27, rf_gpr_28, rf_gpr_29, rf_gpr_30, rf_gpr_31 )
>;

def CSR_NoRegs: CalleeSavedRegs<(add)>;

include "CodasipCustomCallC.td"
