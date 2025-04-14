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


include "CodasipInstrFormats.td"

// All instructions, including invalid and dummy ones

def i_call_reg_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, variable_ops)>
{
let AsmString = "call.reg $op0";
let Pattern = [(Call (i32 CheckFI_i32_regs:$op0))];
let Defs = [rf_gpr_1];
let Uses = [rf_gpr_2];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let mayLoad = 0;
let mayStore = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 2;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000011100111;
// i_call_reg_alias(regs)
}

def i_jump_reg_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "jr $op0";
let Pattern = [(brind (i32 CheckFI_i32_regs:$op0))];
let Size = 4;
let isBranch = 1;
let isIndirectBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 2;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000001100111;
// i_jump_reg_alias(regs)
}

def i_jmp_rel_alias__rel_addr20__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_brtarg:$op0)>
{
let AsmString = "j $op0";
let Pattern = [(br bb:$op0)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 2;
bits<20> op0;
let Inst{31} = op0{19-19};
let Inst{30-21} = op0{9-0};
let Inst{20} = op0{10-10};
let Inst{19-12} = op0{18-11};
let Inst{11-0} = 0b000001101111;
// i_jmp_rel_alias(rel_addr20)
}

def i_get_pc_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "get.pc x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 2;
let Inst{31-0} = 0b00000000000000000000000000010111;
// i_get_pc_alias(reg0)
}

// warning: (BGW545): The instruction contains invalid operation ('GET_PC') even after the high-level analysis. The semantic pattern will be commented out.
def i_get_pc_alias__regs__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let AsmString = "get.pc $op0";
//let Pattern = [(set i32:$op0, (i32 (add (i32 GET_PC), (i32 -4))))];
let Size = 4;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 2;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010111;
// i_get_pc_alias(regs)
}

def i_mv_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "mv x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 2;
let Inst{31-0} = 0b00000000000000000000000000010011;
// i_mv_alias(reg0,reg0)
}

def i_mv_alias__regs__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let AsmString = "mv $op0, x0";
let Pattern = [(set i32:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 2;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_mv_alias(regs,reg0)
}

def i_mv_alias__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "mv $op0, $op1";
//let Pattern = [(set i32:$op0, (i32 CheckFI_i32_regs:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 2;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_mv_alias(regs,regs)
}

def i_seqz_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "seqz x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 2;
let Inst{31-0} = 0b00000000000100000011000000010011;
// i_seqz_alias(reg0,reg0)
}

def i_seqz_alias__regs__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let AsmString = "seqz $op0, x0";
let Pattern = [(set i32:$op0, (i32 1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 2;
bits<5> op0;
let Inst{31-12} = 0b00000000000100000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_seqz_alias(regs,reg0)
}

def i_seqz_alias__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "seqz $op0, $op1";
let Pattern = [(set i32:$op0, (i32 (seteq  (i32 CheckFI_i32_regs:$op1), (i32 0))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 2;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000001;
let Inst{19-15} = op1;
let Inst{14-12} = 0b011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_seqz_alias(regs,regs)
}

def i_snez_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "snez x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 2;
let Inst{31-0} = 0b00000000000000000011000000110011;
// i_snez_alias(reg0,reg0)
}

def i_snez_alias__regs__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let AsmString = "snez $op0, x0";
let Pattern = [(set i32:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 2;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_snez_alias(regs,reg0)
}

def i_snez_alias__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "snez $op0, $op1";
let Pattern = [(set i32:$op0, (i32 (setne  (i32 CheckFI_i32_regs:$op1), (i32 0))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 2;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_snez_alias(regs,regs)
}

// warning: (BGW545): The instruction contains invalid operation ('GET_PC') even after the high-level analysis. The semantic pattern will be commented out.
def i_jalr__opc_jalr__regs__regs__simm12_simple__immspec_1_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
//let Pattern = [(set i32:$op0, (i32 GET_PC)), (brind (i32 CheckFI_i32_regs:$op1))];
let Size = 4;
let isBranch = 1;
let isIndirectBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_call_rel_alias__rel_addr20__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_i32:$op0, variable_ops)>
{
let AsmString = "jal $op0";
let Pattern = [(Call (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Defs = [rf_gpr_1];
let Uses = [rf_gpr_2];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let mayLoad = 0;
let mayStore = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 1;
bits<20> op0;
let Inst{31} = op0{19-19};
let Inst{30-21} = op0{9-0};
let Inst{20} = op0{10-10};
let Inst{19-12} = op0{18-11};
let Inst{11-0} = 0b000011101111;
// i_call_rel_alias(rel_addr20)
}
def i_call_rel_alias__rel_addr20__ES: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_i32:$op0, variable_ops)>
{
let AsmString = "jal $op0";
let Pattern = [(Call (i32 (GAWrap (i32 texternalsym:$op0))))];
let Defs = [rf_gpr_1];
let Uses = [rf_gpr_2];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let mayLoad = 0;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let isAsmParserOnly = 1;
let AddedComplexity = 1;
bits<20> op0;
let Inst{31} = op0{19-19};
let Inst{30-21} = op0{9-0};
let Inst{20} = op0{10-10};
let Inst{19-12} = op0{18-11};
let Inst{11-0} = 0b000011101111;
// i_call_rel_alias(rel_addr20)
}
def i_call_rel_alias__rel_addr20__MC: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_i32:$op0, variable_ops)>
{
let AsmString = "jal $op0";
let Pattern = [(Call (i32 (GAWrap (i32 mcsym:$op0))))];
let Defs = [rf_gpr_1];
let Uses = [rf_gpr_2];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let mayLoad = 0;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let isAsmParserOnly = 1;
let AddedComplexity = 1;
bits<20> op0;
let Inst{31} = op0{19-19};
let Inst{30-21} = op0{9-0};
let Inst{20} = op0{10-10};
let Inst{19-12} = op0{18-11};
let Inst{11-0} = 0b000011101111;
// i_call_rel_alias(rel_addr20)
}
def i_call_rel_alias__rel_addr20__BA: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_i32:$op0, variable_ops)>
{
let AsmString = "jal $op0";
let Pattern = [(Call (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Defs = [rf_gpr_1];
let Uses = [rf_gpr_2];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let mayLoad = 0;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let isAsmParserOnly = 1;
let AddedComplexity = 1;
bits<20> op0;
let Inst{31} = op0{19-19};
let Inst{30-21} = op0{9-0};
let Inst{20} = op0{10-10};
let Inst{19-12} = op0{18-11};
let Inst{11-0} = 0b000011101111;
// i_call_rel_alias(rel_addr20)
}

def i_jal_abs__opc_jal__reg0__rel_addr20__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_brtarg:$op0)>
{
let AsmString = "jal x0, $op0";
let Pattern = [(br bb:$op0)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_jal_abs(opc_jal,reg0,rel_addr20)
}

// warning: (BGW545): The instruction contains invalid operation ('GET_PC') even after the high-level analysis. The semantic pattern will be commented out.
def i_jal_abs__opc_jal__regs__rel_addr20__: CodasipMicroClass_<(outs regs:$op0), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_brtarg:$op1)>
{
let AsmString = "jal $op0, $op1";
//let Pattern = [(set i32:$op0, (i32 GET_PC)), (br bb:$op1)];
let Size = 4;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_jal_abs(opc_jal,regs,rel_addr20)
}

def i_control_conditional__opc_beq__reg0__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op0)>
{
let AsmString = "beq x0, x0, $op0";
let Pattern = [(br bb:$op0)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000000;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_beq,reg0,reg0,rel_addr12)
}

def i_control_conditional__opc_beq__reg0__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op1)>
{
let AsmString = "beq x0, $op0, $op1";
let Pattern = [(brcond (i32 (seteq  (i32 CheckFI_i32_regs:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000000;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_beq,reg0,regs,rel_addr12)
}

def i_control_conditional__opc_beq__regs__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op1)>
{
let AsmString = "beq $op0, x0, $op1";
let Pattern = [(brcond (i32 (seteq  (i32 CheckFI_i32_regs:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b000;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_beq,regs,reg0,rel_addr12)
}

def i_control_conditional__opc_beq__regs__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op2)>
{
let AsmString = "beq $op0, $op1, $op2";
let Pattern = [(brcond (i32 (seteq  (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31} = op2{11-11};
let Inst{30-25} = op2{9-4};
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-12} = 0b000;
let Inst{11-8} = op2{3-0};
let Inst{7} = op2{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_beq,regs,regs,rel_addr12)
}

def i_control_conditional__opc_bge__reg0__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op0)>
{
let AsmString = "bge x0, x0, $op0";
let Pattern = [(br bb:$op0)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000101;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bge,reg0,reg0,rel_addr12)
}

def i_control_conditional__opc_bge__reg0__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op1)>
{
let AsmString = "bge x0, $op0, $op1";
let Pattern = [(brcond (i32 (setlt  (i32 CheckFI_i32_regs:$op0), (i32 1))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000101;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bge,reg0,regs,rel_addr12)
}

def i_control_conditional__opc_bge__regs__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op1)>
{
let AsmString = "bge $op0, x0, $op1";
let Pattern = [(brcond (i32 (setgt  (i32 CheckFI_i32_regs:$op0), (i32 -1))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b101;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bge,regs,reg0,rel_addr12)
}

def i_control_conditional__opc_bge__regs__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op2)>
{
let AsmString = "bge $op0, $op1, $op2";
let Pattern = [(brcond (i32 (setge  (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31} = op2{11-11};
let Inst{30-25} = op2{9-4};
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-12} = 0b101;
let Inst{11-8} = op2{3-0};
let Inst{7} = op2{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bge,regs,regs,rel_addr12)
}

def i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op0)>
{
let AsmString = "bgeu x0, x0, $op0";
let Pattern = [(br bb:$op0)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000111;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bgeu,reg0,reg0,rel_addr12)
}

def i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op1)>
{
let AsmString = "bgeu x0, $op0, $op1";
let Pattern = [(brcond (i32 (seteq  (i32 CheckFI_i32_regs:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000111;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bgeu,reg0,regs,rel_addr12)
}

def i_control_conditional__opc_bgeu__regs__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op2)>
{
let AsmString = "bgeu $op0, $op1, $op2";
let Pattern = [(brcond (i32 (setuge  (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31} = op2{11-11};
let Inst{30-25} = op2{9-4};
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-12} = 0b111;
let Inst{11-8} = op2{3-0};
let Inst{7} = op2{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bgeu,regs,regs,rel_addr12)
}

def i_control_conditional__opc_blt__reg0__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op1)>
{
let AsmString = "blt x0, $op0, $op1";
let Pattern = [(brcond (i32 (setgt  (i32 CheckFI_i32_regs:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000100;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_blt,reg0,regs,rel_addr12)
}

def i_control_conditional__opc_blt__regs__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op1)>
{
let AsmString = "blt $op0, x0, $op1";
let Pattern = [(brcond (i32 (setlt  (i32 CheckFI_i32_regs:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b100;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_blt,regs,reg0,rel_addr12)
}

def i_control_conditional__opc_blt__regs__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op2)>
{
let AsmString = "blt $op0, $op1, $op2";
let Pattern = [(brcond (i32 (setlt  (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31} = op2{11-11};
let Inst{30-25} = op2{9-4};
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-12} = 0b100;
let Inst{11-8} = op2{3-0};
let Inst{7} = op2{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_blt,regs,regs,rel_addr12)
}

def i_control_conditional__opc_bltu__reg0__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op1)>
{
let AsmString = "bltu x0, $op0, $op1";
let Pattern = [(brcond (i32 (setne  (i32 CheckFI_i32_regs:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000110;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bltu,reg0,regs,rel_addr12)
}

def i_control_conditional__opc_bltu__regs__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op2)>
{
let AsmString = "bltu $op0, $op1, $op2";
let Pattern = [(brcond (i32 (setult  (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31} = op2{11-11};
let Inst{30-25} = op2{9-4};
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-12} = 0b110;
let Inst{11-8} = op2{3-0};
let Inst{7} = op2{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bltu,regs,regs,rel_addr12)
}

def i_control_conditional__opc_bne__reg0__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op1)>
{
let AsmString = "bne x0, $op0, $op1";
let Pattern = [(brcond (i32 (setne  (i32 CheckFI_i32_regs:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000001;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bne,reg0,regs,rel_addr12)
}

def i_control_conditional__opc_bne__regs__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op1)>
{
let AsmString = "bne $op0, x0, $op1";
let Pattern = [(brcond (i32 (setne  (i32 CheckFI_i32_regs:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b001;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bne,regs,reg0,rel_addr12)
}

def i_control_conditional__opc_bne__regs__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op2)>
{
let AsmString = "bne $op0, $op1, $op2";
let Pattern = [(brcond (i32 (setne  (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31} = op2{11-11};
let Inst{30-25} = op2{9-4};
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-12} = 0b001;
let Inst{11-8} = op2{3-0};
let Inst{7} = op2{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bne,regs,regs,rel_addr12)
}

def i_control_conditional__opc_bge__regs__regs__rel_addr12__swappedCmpClone0__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op2)>
{
let Pattern = [(brcond (i32 (setle  (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_control_conditional__opc_bgeu__regs__regs__rel_addr12__swappedCmpClone0__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op2)>
{
let Pattern = [(brcond (i32 (setule  (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_control_conditional__opc_blt__regs__regs__rel_addr12__swappedCmpClone0__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op2)>
{
let Pattern = [(brcond (i32 (setgt  (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_control_conditional__opc_bltu__regs__regs__rel_addr12__swappedCmpClone0__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_brtarg:$op2)>
{
let Pattern = [(brcond (i32 (setugt  (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_jalr__opc_jalr__reg0__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_brtarg:$op0)>
{
let AsmString = "jalr x0, x0, $op0";
let Pattern = [(br bb:$op0)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000001100111;
// i_jalr(opc_jalr,reg0,reg0,simm12_simple)
}

// warning: (BGW545): The instruction contains invalid operation ('GET_PC') even after the high-level analysis. The semantic pattern will be commented out.
def i_jalr__opc_jalr__regs__reg0__simm12_simple__: CodasipMicroClass_<(outs regs:$op0), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_brtarg:$op1)>
{
let AsmString = "jalr $op0, x0, $op1";
//let Pattern = [(set i32:$op0, (i32 GET_PC)), (br bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1100111;
// i_jalr(opc_jalr,regs,reg0,simm12_simple)
}

// warning: (BGW545): The instruction contains invalid operation ('GET_PC') even after the high-level analysis. The semantic pattern will be commented out.
def i_auipc__opc_auipc__regs__imm20_s12__: CodasipMicroClass_<(outs regs:$op0), (ins MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12_i32:$op1)>
{
let AsmString = "auipc $op0, $op1";
//let Pattern = [(set i32:$op0, (i32 (add (i32 (add (i32 GET_PC), (i32 Trunc12_i32imm:$op1))), (i32 -4))))];
let Size = 4;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<20> op1;
let Inst{31-12} = op1;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010111;
// i_auipc(opc_auipc,regs,imm20_s12)
}

def i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__: CodasipMicroClass_<(outs regs:$op0), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let AsmString = "add $op0, x0, $op1";
let Pattern = [(set i32:$op0, (i32 sext12To32imm:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_addi,regs,reg0,simm12_simple)
}

def i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
let AsmString = "add $op0, $op1, $op2";
let Pattern = [(set i32:$op0, (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 sext12To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_addi,regs,regs,simm12_simple)
}

def i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
let AsmString = "and $op0, $op1, $op2";
let Pattern = [(set i32:$op0, (i32 (and (i32 CheckFI_i32_regs:$op1), (i32 sext12To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_andi,regs,regs,simm12_simple)
}

def i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__: CodasipMicroClass_<(outs regs:$op0), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let AsmString = "or $op0, x0, $op1";
let Pattern = [(set i32:$op0, (i32 sext12To32imm:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_ori,regs,reg0,simm12_simple)
}

def i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
let AsmString = "or $op0, $op1, $op2";
let Pattern = [(set i32:$op0, (i32 (or (i32 CheckFI_i32_regs:$op1), (i32 sext12To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_ori,regs,regs,simm12_simple)
}

def i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__: CodasipMicroClass_<(outs regs:$op0), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let AsmString = "slti $op0, x0, $op1";
let Pattern = [(set i32:$op0, (i32 (setgt  (i32 sext12To32imm:$op1), (i32 0))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_slti,regs,reg0,simm12_simple)
}

def i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
let AsmString = "slti $op0, $op1, $op2";
let Pattern = [(set i32:$op0, (i32 (setlt  (i32 CheckFI_i32_regs:$op1), (i32 sext12To32imm:$op2))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_slti,regs,regs,simm12_simple)
}

def i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__: CodasipMicroClass_<(outs regs:$op0), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let AsmString = "sltiu $op0, x0, $op1";
let Pattern = [(set i32:$op0, (i32 (setne  (i32 sext12To32imm:$op1), (i32 0))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_sltiu,regs,reg0,simm12_simple)
}

def i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
let AsmString = "sltiu $op0, $op1, $op2";
let Pattern = [(set i32:$op0, (i32 (setult  (i32 CheckFI_i32_regs:$op1), (i32 sext12To32imm:$op2))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_sltiu,regs,regs,simm12_simple)
}

def i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__: CodasipMicroClass_<(outs regs:$op0), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let AsmString = "xor $op0, x0, $op1";
let Pattern = [(set i32:$op0, (i32 sext12To32imm:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_xori,regs,reg0,simm12_simple)
}

def i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
let AsmString = "xor $op0, $op1, $op2";
let Pattern = [(set i32:$op0, (i32 (xor (i32 CheckFI_i32_regs:$op1), (i32 sext12To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_xori,regs,regs,simm12_simple)
}

def i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_i32:$op2)>
{
let AsmString = "sll $op0, $op1, $op2";
let Pattern = [(set i32:$op0, (i32 (shl (i32 CheckFI_i32_regs:$op1), (i32 zext5To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<5> op2;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm_shift(opc_slli,regs,regs,shift_imm)
}

def i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_i32:$op2)>
{
let AsmString = "sra $op0, $op1, $op2";
let Pattern = [(set i32:$op0, (i32 (sra (i32 CheckFI_i32_regs:$op1), (i32 zext5To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<5> op2;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm_shift(opc_srai,regs,regs,shift_imm)
}

def i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_i32:$op2)>
{
let AsmString = "srl $op0, $op1, $op2";
let Pattern = [(set i32:$op0, (i32 (srl (i32 CheckFI_i32_regs:$op1), (i32 zext5To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<5> op2;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm_shift(opc_srli,regs,regs,shift_imm)
}

def i_comp_3reg__opc_add__reg0__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "add x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
let Inst{31-0} = 0b00000000000000000000000000110011;
// i_comp_3reg(opc_add,reg0,reg0,reg0)
}

def i_comp_3reg__opc_add__regs__reg0__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let AsmString = "add $op0, x0, x0";
let Pattern = [(set i32:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_add,regs,reg0,reg0)
}

def i_comp_3reg__opc_add__regs__reg0__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "add $op0, x0, $op1";
//let Pattern = [(set i32:$op0, (i32 CheckFI_i32_regs:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_add,regs,reg0,regs)
}

def i_comp_3reg__opc_add__regs__regs__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "add $op0, $op1, x0";
//let Pattern = [(set i32:$op0, (i32 CheckFI_i32_regs:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_add,regs,regs,reg0)
}

def i_comp_3reg__opc_add__regs__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let AsmString = "add $op0, $op2, $op1";
let Pattern = [(set i32:$op0, (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
let isCommutable = 1;
bits<5> op0;
bits<5> op2;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op2;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_add,regs,regs,regs)
}

def i_comp_3reg__opc_and__reg0__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "and x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
let Inst{31-0} = 0b00000000000000000111000000110011;
// i_comp_3reg(opc_and,reg0,reg0,reg0)
}

def i_comp_3reg__opc_and__regs__reg0__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let AsmString = "and $op0, x0, x0";
let Pattern = [(set i32:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_and,regs,reg0,reg0)
}

def i_comp_3reg__opc_and__regs__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let AsmString = "and $op0, $op2, $op1";
let Pattern = [(set i32:$op0, (i32 (and (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
let isCommutable = 1;
bits<5> op0;
bits<5> op2;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op2;
let Inst{14-12} = 0b111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_and,regs,regs,regs)
}

def i_comp_3reg__opc_or__reg0__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "or x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
let Inst{31-0} = 0b00000000000000000110000000110011;
// i_comp_3reg(opc_or,reg0,reg0,reg0)
}

def i_comp_3reg__opc_or__regs__reg0__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let AsmString = "or $op0, x0, x0";
let Pattern = [(set i32:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_or,regs,reg0,reg0)
}

def i_comp_3reg__opc_or__regs__reg0__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "or $op0, x0, $op1";
//let Pattern = [(set i32:$op0, (i32 CheckFI_i32_regs:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_or,regs,reg0,regs)
}

def i_comp_3reg__opc_or__regs__regs__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "or $op0, $op1, x0";
//let Pattern = [(set i32:$op0, (i32 CheckFI_i32_regs:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_or,regs,regs,reg0)
}

def i_comp_3reg__opc_or__regs__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let AsmString = "or $op0, $op2, $op1";
let Pattern = [(set i32:$op0, (i32 (or (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
let isCommutable = 1;
bits<5> op0;
bits<5> op2;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op2;
let Inst{14-12} = 0b110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_or,regs,regs,regs)
}

def i_comp_3reg__opc_sll__reg0__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sll x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
let Inst{31-0} = 0b00000000000000000001000000110011;
// i_comp_3reg(opc_sll,reg0,reg0,reg0)
}

def i_comp_3reg__opc_sll__regs__reg0__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let AsmString = "sll $op0, x0, x0";
let Pattern = [(set i32:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sll,regs,reg0,reg0)
}

def i_comp_3reg__opc_sll__regs__regs__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "sll $op0, $op1, x0";
//let Pattern = [(set i32:$op0, (i32 CheckFI_i32_regs:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sll,regs,regs,reg0)
}

def i_comp_3reg__opc_sll__regs__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let AsmString = "sll $op0, $op1, $op2";
let Pattern = [(set i32:$op0, (i32 (shl (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<5> op2;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sll,regs,regs,regs)
}

def i_comp_3reg__opc_slt__reg0__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "slt x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
let Inst{31-0} = 0b00000000000000000010000000110011;
// i_comp_3reg(opc_slt,reg0,reg0,reg0)
}

def i_comp_3reg__opc_slt__regs__reg0__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let AsmString = "slt $op0, x0, x0";
let Pattern = [(set i32:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_slt,regs,reg0,reg0)
}

def i_comp_3reg__opc_slt__regs__reg0__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "slt $op0, x0, $op1";
let Pattern = [(set i32:$op0, (i32 (setgt  (i32 CheckFI_i32_regs:$op1), (i32 0))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_slt,regs,reg0,regs)
}

def i_comp_3reg__opc_slt__regs__regs__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "slt $op0, $op1, x0";
let Pattern = [(set i32:$op0, (i32 (srl (i32 CheckFI_i32_regs:$op1), (i32 31))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_slt,regs,regs,reg0)
}

def i_comp_3reg__opc_slt__regs__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let AsmString = "slt $op0, $op1, $op2";
let Pattern = [(set i32:$op0, (i32 (setlt  (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<5> op2;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_slt,regs,regs,regs)
}

def i_comp_3reg__opc_sltu__reg0__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltu x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
let Inst{31-0} = 0b00000000000000000011000000110011;
// i_comp_3reg(opc_sltu,reg0,reg0,reg0)
}

def i_comp_3reg__opc_sltu__regs__reg0__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let AsmString = "sltu $op0, x0, x0";
let Pattern = [(set i32:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sltu,regs,reg0,reg0)
}

def i_comp_3reg__opc_sltu__regs__reg0__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "sltu $op0, x0, $op1";
let Pattern = [(set i32:$op0, (i32 (setne  (i32 CheckFI_i32_regs:$op1), (i32 0))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sltu,regs,reg0,regs)
}

def i_comp_3reg__opc_sltu__regs__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let AsmString = "sltu $op0, $op1, $op2";
let Pattern = [(set i32:$op0, (i32 (setult  (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<5> op2;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sltu,regs,regs,regs)
}

def i_comp_3reg__opc_sra__reg0__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sra x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
let Inst{31-0} = 0b01000000000000000101000000110011;
// i_comp_3reg(opc_sra,reg0,reg0,reg0)
}

def i_comp_3reg__opc_sra__regs__reg0__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let AsmString = "sra $op0, x0, x0";
let Pattern = [(set i32:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-12} = 0b01000000000000000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sra,regs,reg0,reg0)
}

def i_comp_3reg__opc_sra__regs__regs__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "sra $op0, $op1, x0";
//let Pattern = [(set i32:$op0, (i32 CheckFI_i32_regs:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b010000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sra,regs,regs,reg0)
}

def i_comp_3reg__opc_sra__regs__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let AsmString = "sra $op0, $op1, $op2";
let Pattern = [(set i32:$op0, (i32 (sra (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<5> op2;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sra,regs,regs,regs)
}

def i_comp_3reg__opc_srl__reg0__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "srl x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
let Inst{31-0} = 0b00000000000000000101000000110011;
// i_comp_3reg(opc_srl,reg0,reg0,reg0)
}

def i_comp_3reg__opc_srl__regs__reg0__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let AsmString = "srl $op0, x0, x0";
let Pattern = [(set i32:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_srl,regs,reg0,reg0)
}

def i_comp_3reg__opc_srl__regs__regs__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "srl $op0, $op1, x0";
//let Pattern = [(set i32:$op0, (i32 CheckFI_i32_regs:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_srl,regs,regs,reg0)
}

def i_comp_3reg__opc_srl__regs__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let AsmString = "srl $op0, $op1, $op2";
let Pattern = [(set i32:$op0, (i32 (srl (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<5> op2;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_srl,regs,regs,regs)
}

def i_comp_3reg__opc_sub__reg0__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sub x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
let Inst{31-0} = 0b01000000000000000000000000110011;
// i_comp_3reg(opc_sub,reg0,reg0,reg0)
}

def i_comp_3reg__opc_sub__regs__reg0__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let AsmString = "sub $op0, x0, x0";
let Pattern = [(set i32:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-12} = 0b01000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sub,regs,reg0,reg0)
}

def i_comp_3reg__opc_sub__regs__reg0__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "sub $op0, x0, $op1";
let Pattern = [(set i32:$op0, (i32 (sub (i32 0), (i32 CheckFI_i32_regs:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sub,regs,reg0,regs)
}

def i_comp_3reg__opc_sub__regs__regs__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "sub $op0, $op1, x0";
//let Pattern = [(set i32:$op0, (i32 CheckFI_i32_regs:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b010000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sub,regs,regs,reg0)
}

def i_comp_3reg__opc_sub__regs__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let AsmString = "sub $op0, $op1, $op2";
let Pattern = [(set i32:$op0, (i32 (sub (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<5> op2;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sub,regs,regs,regs)
}

def i_comp_3reg__opc_xor__reg0__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "xor x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
let Inst{31-0} = 0b00000000000000000100000000110011;
// i_comp_3reg(opc_xor,reg0,reg0,reg0)
}

def i_comp_3reg__opc_xor__regs__reg0__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let AsmString = "xor $op0, x0, x0";
let Pattern = [(set i32:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_xor,regs,reg0,reg0)
}

def i_comp_3reg__opc_xor__regs__reg0__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "xor $op0, x0, $op1";
//let Pattern = [(set i32:$op0, (i32 CheckFI_i32_regs:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_xor,regs,reg0,regs)
}

def i_comp_3reg__opc_xor__regs__regs__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "xor $op0, $op1, x0";
//let Pattern = [(set i32:$op0, (i32 CheckFI_i32_regs:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_xor,regs,regs,reg0)
}

def i_comp_3reg__opc_xor__regs__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let AsmString = "xor $op0, $op2, $op1";
let Pattern = [(set i32:$op0, (i32 (xor (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let AddedComplexity = 1;
let isCommutable = 1;
bits<5> op0;
bits<5> op2;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op2;
let Inst{14-12} = 0b100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_xor,regs,regs,regs)
}

def i_load__opc_loadb__reg0__simm12_simple__reg0__: CodasipMicroClass_sc_loads<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op0)>
{
let AsmString = "lb x0, $op0 ( x0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000000011;
// i_load(opc_loadb,reg0,simm12_simple,reg0)
}

def i_load__opc_loadb__reg0__simm12_simple__regs__: CodasipMicroClass_sc_loads<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let AsmString = "lb x0, $op1 ( $op0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000000011;
// i_load(opc_loadb,reg0,simm12_simple,regs)
}

def i_load__opc_loadb__regs__simm12_simple__reg0__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let AsmString = "lb $op0, $op1 ( x0 )";
let Pattern = [(set i32:$op0, (i32 (sextloadi8_a1_s0 (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadb,regs,simm12_simple,reg0)
}

def i_load__opc_loadb__regs__simm12_simple__regs__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
let AsmString = "lb $op0, $op2 ( $op1 )";
let Pattern = [(set i32:$op0, (i32 (sextloadi8_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 sext12To32imm:$op2))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadb,regs,simm12_simple,regs)
}

def i_load__opc_loadbu__reg0__simm12_simple__reg0__: CodasipMicroClass_sc_loads<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op0)>
{
let AsmString = "lbu x0, $op0 ( x0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000000011;
// i_load(opc_loadbu,reg0,simm12_simple,reg0)
}

def i_load__opc_loadbu__reg0__simm12_simple__regs__: CodasipMicroClass_sc_loads<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let AsmString = "lbu x0, $op1 ( $op0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000000011;
// i_load(opc_loadbu,reg0,simm12_simple,regs)
}

def i_load__opc_loadbu__regs__simm12_simple__reg0__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let AsmString = "lbu $op0, $op1 ( x0 )";
let Pattern = [(set i32:$op0, (i32 (zextloadi8_a1_s0 (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadbu,regs,simm12_simple,reg0)
}

def i_load__opc_loadbu__regs__simm12_simple__regs__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
let AsmString = "lbu $op0, $op2 ( $op1 )";
let Pattern = [(set i32:$op0, (i32 (zextloadi8_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 sext12To32imm:$op2))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadbu,regs,simm12_simple,regs)
}

def i_load__opc_loadh__reg0__simm12_simple__reg0__: CodasipMicroClass_sc_loads<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op0)>
{
let AsmString = "lh x0, $op0 ( x0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000000000011;
// i_load(opc_loadh,reg0,simm12_simple,reg0)
}

def i_load__opc_loadh__reg0__simm12_simple__regs__: CodasipMicroClass_sc_loads<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let AsmString = "lh x0, $op1 ( $op0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000000011;
// i_load(opc_loadh,reg0,simm12_simple,regs)
}

def i_load__opc_loadh__regs__simm12_simple__reg0__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let AsmString = "lh $op0, $op1 ( x0 )";
let Pattern = [(set i32:$op0, (i32 (sextloadi16_a1_s0 (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadh,regs,simm12_simple,reg0)
}

def i_load__opc_loadh__regs__simm12_simple__regs__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
let AsmString = "lh $op0, $op2 ( $op1 )";
let Pattern = [(set i32:$op0, (i32 (sextloadi16_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 sext12To32imm:$op2))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadh,regs,simm12_simple,regs)
}

def i_load__opc_loadhu__reg0__simm12_simple__reg0__: CodasipMicroClass_sc_loads<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op0)>
{
let AsmString = "lhu x0, $op0 ( x0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000101000000000011;
// i_load(opc_loadhu,reg0,simm12_simple,reg0)
}

def i_load__opc_loadhu__reg0__simm12_simple__regs__: CodasipMicroClass_sc_loads<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let AsmString = "lhu x0, $op1 ( $op0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000000011;
// i_load(opc_loadhu,reg0,simm12_simple,regs)
}

def i_load__opc_loadhu__regs__simm12_simple__reg0__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let AsmString = "lhu $op0, $op1 ( x0 )";
let Pattern = [(set i32:$op0, (i32 (zextloadi16_a1_s0 (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadhu,regs,simm12_simple,reg0)
}

def i_load__opc_loadhu__regs__simm12_simple__regs__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
let AsmString = "lhu $op0, $op2 ( $op1 )";
let Pattern = [(set i32:$op0, (i32 (zextloadi16_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 sext12To32imm:$op2))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadhu,regs,simm12_simple,regs)
}

def i_load__opc_loadw__reg0__simm12_simple__reg0__: CodasipMicroClass_sc_loads<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op0)>
{
let AsmString = "lw x0, $op0 ( x0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000000011;
// i_load(opc_loadw,reg0,simm12_simple,reg0)
}

def i_load__opc_loadw__reg0__simm12_simple__regs__: CodasipMicroClass_sc_loads<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let AsmString = "lw x0, $op1 ( $op0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000000011;
// i_load(opc_loadw,reg0,simm12_simple,regs)
}

def i_load__opc_loadw__regs__simm12_simple__reg0__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let AsmString = "lw $op0, $op1 ( x0 )";
let Pattern = [(set i32:$op0, (i32 (load_a1_s0 (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadw,regs,simm12_simple,reg0)
}

def i_load__opc_loadw__regs__simm12_simple__regs__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
let AsmString = "lw $op0, $op2 ( $op1 )";
let Pattern = [(set i32:$op0, (i32 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 sext12To32imm:$op2))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadw,regs,simm12_simple,regs)
}

def i_lui__opc_lui__regs__imm20_s12__: CodasipMicroClass_<(outs regs:$op0), (ins MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12_i32:$op1)>
{
let AsmString = "lui $op0, $op1";
let Pattern = [(set i32:$op0, (i32 Trunc12_i32imm:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
let AddedComplexity = 1;
bits<5> op0;
bits<20> op1;
let Inst{31-12} = op1;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110111;
// i_lui(opc_lui,regs,imm20_s12)
}

def i_neg_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "neg x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 1;
let Inst{31-0} = 0b01000000000000000000000000110011;
// i_neg_alias(reg0,reg0)
}

def i_neg_alias__regs__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let AsmString = "neg $op0, x0";
let Pattern = [(set i32:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-12} = 0b01000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_neg_alias(regs,reg0)
}

def i_neg_alias__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "neg $op0, $op1";
let Pattern = [(set i32:$op0, (i32 (sub (i32 0), (i32 CheckFI_i32_regs:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_neg_alias(regs,regs)
}

def i_store__opc_storeb__reg0__simm12_simple__reg0__: CodasipMicroClass_sc_stores<(outs), (ins MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_i32:$op0)>
{
let AsmString = "sb x0, $op0 ( x0 )";
let Pattern = [(store_a1_s0 (i8 0), (i32 sext12To32imm:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000000;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,reg0,simm12_simple,reg0)
}

def i_store__opc_storeb__reg0__simm12_simple__regs__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_i32:$op1)>
{
let AsmString = "sb x0, $op1 ( $op0 )";
let Pattern = [(store_a1_s0 (i8 0), (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b000;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,reg0,simm12_simple,regs)
}

def i_store__opc_storeb__regs__simm12_simple__reg0__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_i32:$op1)>
{
let AsmString = "sb $op0, $op1 ( x0 )";
let Pattern = [(truncstorei8_a1_s0 (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,regs,simm12_simple,reg0)
}

def i_store__opc_storeb__regs__simm12_simple__regs__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, regs:$op1, MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_i32:$op2)>
{
let AsmString = "sb $op0, $op2 ( $op1 )";
let Pattern = [(truncstorei8_a1_s0 (i32 CheckFI_i32_regs:$op0), (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 sext12To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-25} = op2{11-5};
let Inst{24-20} = op0;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op2{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,regs,simm12_simple,regs)
}

def i_store__opc_storeh__reg0__simm12_simple__reg0__: CodasipMicroClass_sc_stores<(outs), (ins MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_i32:$op0)>
{
let AsmString = "sh x0, $op0 ( x0 )";
let Pattern = [(store_a1_s0 (i16 0), (i32 sext12To32imm:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000001;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,reg0,simm12_simple,reg0)
}

def i_store__opc_storeh__reg0__simm12_simple__regs__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_i32:$op1)>
{
let AsmString = "sh x0, $op1 ( $op0 )";
let Pattern = [(store_a1_s0 (i16 0), (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b001;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,reg0,simm12_simple,regs)
}

def i_store__opc_storeh__regs__simm12_simple__reg0__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_i32:$op1)>
{
let AsmString = "sh $op0, $op1 ( x0 )";
let Pattern = [(truncstorei16_a1_s0 (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,regs,simm12_simple,reg0)
}

def i_store__opc_storeh__regs__simm12_simple__regs__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, regs:$op1, MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_i32:$op2)>
{
let AsmString = "sh $op0, $op2 ( $op1 )";
let Pattern = [(truncstorei16_a1_s0 (i32 CheckFI_i32_regs:$op0), (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 sext12To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-25} = op2{11-5};
let Inst{24-20} = op0;
let Inst{19-15} = op1;
let Inst{14-12} = 0b001;
let Inst{11-7} = op2{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,regs,simm12_simple,regs)
}

def i_store__opc_storew__reg0__simm12_simple__reg0__: CodasipMicroClass_sc_stores<(outs), (ins MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_i32:$op0)>
{
let AsmString = "sw x0, $op0 ( x0 )";
let Pattern = [(store_a1_s0 (i32 0), (i32 sext12To32imm:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000010;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,reg0,simm12_simple,reg0)
}

def i_store__opc_storew__reg0__simm12_simple__regs__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_i32:$op1)>
{
let AsmString = "sw x0, $op1 ( $op0 )";
let Pattern = [(store_a1_s0 (i32 0), (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b010;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,reg0,simm12_simple,regs)
}

def i_store__opc_storew__regs__simm12_simple__reg0__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_i32:$op1)>
{
let AsmString = "sw $op0, $op1 ( x0 )";
let Pattern = [(store_a1_s0 (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,regs,simm12_simple,reg0)
}

def i_store__opc_storew__regs__simm12_simple__regs__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, regs:$op1, MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_i32:$op2)>
{
let AsmString = "sw $op0, $op2 ( $op1 )";
let Pattern = [(store_a1_s0 (i32 CheckFI_i32_regs:$op0), (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 sext12To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-25} = op2{11-5};
let Inst{24-20} = op0;
let Inst{19-15} = op1;
let Inst{14-12} = 0b010;
let Inst{11-7} = op2{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,regs,simm12_simple,regs)
}

def i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__0__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let Pattern = [(set i32:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__1__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let Pattern = [(set i32:$op0, (i32 1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__0__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let Pattern = [(set i32:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__1__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let Pattern = [(set i32:$op0, (i32 1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_comp_3reg__opc_sll__regs__regs__regs__SHIFT_MASK_CLONE_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let Pattern = [(set i32:$op0, (i32 (shl (i32 CheckFI_i32_regs:$op1), (i32 (and (i32 CheckFI_i32_regs:$op2), (i32 31))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_comp_3reg(opc_sll,regs,regs,regs)
}

def i_comp_3reg__opc_slt__regs__regs__regs__swappedCmpClone0__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let Pattern = [(set i32:$op0, (i32 (setgt  (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_comp_3reg__opc_sltu__regs__regs__regs__swappedCmpClone0__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let Pattern = [(set i32:$op0, (i32 (setugt  (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_comp_3reg__opc_sra__regs__regs__regs__SHIFT_MASK_CLONE_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let Pattern = [(set i32:$op0, (i32 (sra (i32 CheckFI_i32_regs:$op1), (i32 (and (i32 CheckFI_i32_regs:$op2), (i32 31))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_comp_3reg(opc_sra,regs,regs,regs)
}

def i_comp_3reg__opc_srl__regs__regs__regs__SHIFT_MASK_CLONE_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let Pattern = [(set i32:$op0, (i32 (srl (i32 CheckFI_i32_regs:$op1), (i32 (and (i32 CheckFI_i32_regs:$op2), (i32 31))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_comp_3reg(opc_srl,regs,regs,regs)
}

def i_load__opc_loadb__reg0__simm12_simple__regs__immspec_1_: CodasipMicroClass_sc_loads<(outs), (ins regs:$op0)>
{
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_load__opc_loadb__regs__simm12_simple__reg0__AEXT_CLONE_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let Pattern = [(set i32:$op0, (i32 (extloadi8_a1_s0 (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_load(opc_loadb,regs,simm12_simple,reg0)
}

def i_load__opc_loadb__regs__simm12_simple__regs__AEXT_CLONE_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
let Pattern = [(set i32:$op0, (i32 (extloadi8_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 sext12To32imm:$op2))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_load(opc_loadb,regs,simm12_simple,regs)
}

def i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1)>
{
let Pattern = [(set i32:$op0, (i32 (sextloadi8_a1_s0 (i32 CheckFI_i32_regs:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1)>
{
let Pattern = [(set i32:$op0, (i32 (extloadi8_a1_s0 (i32 CheckFI_i32_regs:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_load__opc_loadbu__regs__simm12_simple__reg0__AEXT_CLONE_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let Pattern = [(set i32:$op0, (i32 (extloadi8_a1_s0 (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_load(opc_loadbu,regs,simm12_simple,reg0)
}

def i_load__opc_loadbu__regs__simm12_simple__regs__AEXT_CLONE_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
let Pattern = [(set i32:$op0, (i32 (extloadi8_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 sext12To32imm:$op2))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_load(opc_loadbu,regs,simm12_simple,regs)
}

def i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1)>
{
let Pattern = [(set i32:$op0, (i32 (zextloadi8_a1_s0 (i32 CheckFI_i32_regs:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1)>
{
let Pattern = [(set i32:$op0, (i32 (extloadi8_a1_s0 (i32 CheckFI_i32_regs:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_load__opc_loadh__reg0__simm12_simple__regs__immspec_1_: CodasipMicroClass_sc_loads<(outs), (ins regs:$op0)>
{
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_load__opc_loadh__regs__simm12_simple__reg0__AEXT_CLONE_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let Pattern = [(set i32:$op0, (i32 (extloadi16_a1_s0 (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_load(opc_loadh,regs,simm12_simple,reg0)
}

def i_load__opc_loadh__regs__simm12_simple__regs__AEXT_CLONE_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
let Pattern = [(set i32:$op0, (i32 (extloadi16_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 sext12To32imm:$op2))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_load(opc_loadh,regs,simm12_simple,regs)
}

def i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1)>
{
let Pattern = [(set i32:$op0, (i32 (sextloadi16_a1_s0 (i32 CheckFI_i32_regs:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1)>
{
let Pattern = [(set i32:$op0, (i32 (extloadi16_a1_s0 (i32 CheckFI_i32_regs:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_load__opc_loadhu__regs__simm12_simple__reg0__AEXT_CLONE_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let Pattern = [(set i32:$op0, (i32 (extloadi16_a1_s0 (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_load(opc_loadhu,regs,simm12_simple,reg0)
}

def i_load__opc_loadhu__regs__simm12_simple__regs__AEXT_CLONE_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
let Pattern = [(set i32:$op0, (i32 (extloadi16_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 sext12To32imm:$op2))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_load(opc_loadhu,regs,simm12_simple,regs)
}

def i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1)>
{
let Pattern = [(set i32:$op0, (i32 (zextloadi16_a1_s0 (i32 CheckFI_i32_regs:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1)>
{
let Pattern = [(set i32:$op0, (i32 (extloadi16_a1_s0 (i32 CheckFI_i32_regs:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_load__opc_loadw__reg0__simm12_simple__regs__immspec_1_: CodasipMicroClass_sc_loads<(outs), (ins regs:$op0)>
{
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_load__opc_loadw__regs__simm12_simple__regs__immspec_1_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1)>
{
let Pattern = [(set i32:$op0, (i32 (load_a1_s0 (i32 CheckFI_i32_regs:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0)>
{
let Pattern = [(store_a1_s0 (i8 0), (i32 CheckFI_i32_regs:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_store__opc_storeb__regs__simm12_simple__regs__immspec_1_: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, regs:$op1)>
{
let Pattern = [(truncstorei8_a1_s0 (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0)>
{
let Pattern = [(store_a1_s0 (i16 0), (i32 CheckFI_i32_regs:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_store__opc_storeh__regs__simm12_simple__regs__immspec_1_: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, regs:$op1)>
{
let Pattern = [(truncstorei16_a1_s0 (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_store__opc_storew__reg0__simm12_simple__regs__immspec_1_: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0)>
{
let Pattern = [(store_a1_s0 (i32 0), (i32 CheckFI_i32_regs:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_store__opc_storew__regs__simm12_simple__regs__immspec_1_: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, regs:$op1)>
{
let Pattern = [(store_a1_s0 (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_jal__opc_jal__reg0__rel_addr20__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_brtarg:$op0)>
{
let AsmString = "jal x0, $op0";
let Pattern = [(br bb:$op0)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
bits<20> op0;
let Inst{31} = op0{19-19};
let Inst{30-21} = op0{9-0};
let Inst{20} = op0{10-10};
let Inst{19-12} = op0{18-11};
let Inst{11-0} = 0b000001101111;
// i_jal(opc_jal,reg0,rel_addr20)
}

// warning: (BGW545): The instruction contains invalid operation ('GET_PC') even after the high-level analysis. The semantic pattern will be commented out.
def i_jal__opc_jal__regs__rel_addr20__: CodasipMicroClass_<(outs regs:$op0), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_brtarg:$op1)>
{
let AsmString = "jal $op0, $op1";
//let Pattern = [(set i32:$op0, (i32 GET_PC)), (br bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<20> op1;
let Inst{31} = op1{19-19};
let Inst{30-21} = op1{9-0};
let Inst{20} = op1{10-10};
let Inst{19-12} = op1{18-11};
let Inst{11-7} = op0;
let Inst{6-0} = 0b1101111;
// i_jal(opc_jal,regs,rel_addr20)
}

def i_ebreak__opc_ebreak__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "ebreak";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000000100000000000001110011;
// i_ebreak(opc_ebreak)
}

def i_ecall__opc_ecall__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "ecall";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000000000000000000001110011;
// i_ecall(opc_ecall)
}

def i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_a x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000000000000000000000101011;
// i_ext_hackaton(opc_hackaton_custom_a,reg0,reg0,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let AsmString = "hackaton_custom_instr_a $op0, x0, x0";
let Pattern = [(set i32:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_a,regs,reg0,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let AsmString = "hackaton_custom_instr_a $op0, $op2, $op1";
let Pattern = [(set i32:$op0, (i32 (select (i32 (seteq  (i32 CheckFI_i32_regs:$op1), (i32 0))), (i32 0), (i32 (sdiv (i32 CheckFI_i32_regs:$op2), (i32 CheckFI_i32_regs:$op1))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
bits<5> op0;
bits<5> op2;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op2;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_a,regs,regs,regs)
}

def i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_b x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000000000000001000000101011;
// i_ext_hackaton(opc_hackaton_custom_b,reg0,reg0,reg0)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_c x0, x0, x0";
//let Pattern = [(store_a1_s0 (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 2))), (i16 (load_a1_s0 (i32 2))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 0))), (i16 (load_a1_s0 (i32 0))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 4))), (i16 (load_a1_s0 (i32 4))))), (i16 8))))), (i32 6))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
let Inst{31-0} = 0b00000000000000000010000000101011;
// i_ext_hackaton(opc_hackaton_custom_c,reg0,reg0,reg0)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_c x0, x0, $op0";
//let Pattern = [(store_a1_s0 (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 2))))), (i16 (load_a1_s0 (i32 2))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op0))), (i16 (load_a1_s0 (i32 0))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 4))))), (i16 (load_a1_s0 (i32 4))))), (i16 8))))), (i32 6))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000010000000101011;
// i_ext_hackaton(opc_hackaton_custom_c,reg0,reg0,regs)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_c x0, $op0, x0";
//let Pattern = [(store_a1_s0 (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 2))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 2))))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 0))), (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op0))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 4))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 4))))))), (i16 8))))), (i32 6))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000101011;
// i_ext_hackaton(opc_hackaton_custom_c,reg0,regs,reg0)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_c x0, $op1, $op0";
//let Pattern = [(store_a1_s0 (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 2))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 2))))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op0))), (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op1))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 4))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 4))))))), (i16 8))))), (i32 6))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
bits<5> op1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b010000000101011;
// i_ext_hackaton(opc_hackaton_custom_c,reg0,regs,regs)
}

def i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_d x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000000000000011000000101011;
// i_ext_hackaton(opc_hackaton_custom_d,reg0,reg0,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_d x0, x0, $op0";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000011000000101011;
// i_ext_hackaton(opc_hackaton_custom_d,reg0,reg0,regs)
}

def i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_d x0, $op0, x0";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000101011;
// i_ext_hackaton(opc_hackaton_custom_d,reg0,regs,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_d x0, $op0, $op1";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000101011;
// i_ext_hackaton(opc_hackaton_custom_d,reg0,regs,regs)
}

def i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_e x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000000000000100000000101011;
// i_ext_hackaton(opc_hackaton_custom_e,reg0,reg0,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins)>
{
let AsmString = "hackaton_custom_instr_e $op0, x0, x0";
let Pattern = [(set i32:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_e,regs,reg0,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "hackaton_custom_instr_e $op0, $op1, x0";
let Pattern = [(set i32:$op0, (i32 (select (i32 (setlt  (i32 (select (i32 (setgt  (i32 CheckFI_i32_regs:$op1), (i32 -32768))), (i32 CheckFI_i32_regs:$op1), (i32 -32768))), (i32 32767))), (i32 (select (i32 (setgt  (i32 CheckFI_i32_regs:$op1), (i32 -32768))), (i32 CheckFI_i32_regs:$op1), (i32 -32768))), (i32 32767))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_e,regs,regs,reg0)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_f x0, x0, x0";
//let Pattern = [(store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 0))), (i16 (load_a1_s0 (i32 0))))), (i32 0)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 2))), (i16 (load_a1_s0 (i32 2))))), (i32 2)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 4))), (i16 (load_a1_s0 (i32 4))))), (i32 4)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 6))), (i16 (load_a1_s0 (i32 6))))), (i32 6))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
let Inst{31-0} = 0b00000000000000000101000000101011;
// i_ext_hackaton(opc_hackaton_custom_f,reg0,reg0,reg0)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_f x0, x0, $op0";
//let Pattern = [(store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op0))), (i16 (load_a1_s0 (i32 0))))), (i32 0)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 2))))), (i16 (load_a1_s0 (i32 2))))), (i32 2)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 4))))), (i16 (load_a1_s0 (i32 4))))), (i32 4)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 6))))), (i16 (load_a1_s0 (i32 6))))), (i32 6))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000101011;
// i_ext_hackaton(opc_hackaton_custom_f,reg0,reg0,regs)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_f x0, $op0, x0";
//let Pattern = [(store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 0))), (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op0))))), (i32 0)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 2))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 2))))))), (i32 2)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 4))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 4))))))), (i32 4)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 6))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 6))))))), (i32 6))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000101011;
// i_ext_hackaton(opc_hackaton_custom_f,reg0,regs,reg0)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_f x0, $op1, $op0";
//let Pattern = [(store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op0))), (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op1))))), (i32 0)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 2))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 2))))))), (i32 2)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 4))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 4))))))), (i32 4)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 6))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 6))))))), (i32 6))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
bits<5> op1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b101000000101011;
// i_ext_hackaton(opc_hackaton_custom_f,reg0,regs,regs)
}

def i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_g x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000000000000110000000101011;
// i_ext_hackaton(opc_hackaton_custom_g,reg0,reg0,reg0)
}

def i_fence__opc_fence__opc_hint_fence__opc_hint_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence hint, hint";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000000000000000000000001111;
// i_fence(opc_fence,opc_hint_fence,opc_hint_fence)
}

def i_fence__opc_fence__opc_hint_fence__opc_i_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence hint, i";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001000000000000000000000001111;
// i_fence(opc_fence,opc_hint_fence,opc_i_fence)
}

def i_fence__opc_fence__opc_hint_fence__opc_io_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence hint, io";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001100000000000000000000001111;
// i_fence(opc_fence,opc_hint_fence,opc_io_fence)
}

def i_fence__opc_fence__opc_hint_fence__opc_ior_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence hint, ior";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001110000000000000000000001111;
// i_fence(opc_fence,opc_hint_fence,opc_ior_fence)
}

def i_fence__opc_fence__opc_hint_fence__opc_iorw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence hint, iorw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001111000000000000000000001111;
// i_fence(opc_fence,opc_hint_fence,opc_iorw_fence)
}

def i_fence__opc_fence__opc_hint_fence__opc_iow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence hint, iow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001101000000000000000000001111;
// i_fence(opc_fence,opc_hint_fence,opc_iow_fence)
}

def i_fence__opc_fence__opc_hint_fence__opc_ir_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence hint, ir";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001010000000000000000000001111;
// i_fence(opc_fence,opc_hint_fence,opc_ir_fence)
}

def i_fence__opc_fence__opc_hint_fence__opc_irw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence hint, irw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001011000000000000000000001111;
// i_fence(opc_fence,opc_hint_fence,opc_irw_fence)
}

def i_fence__opc_fence__opc_hint_fence__opc_iw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence hint, iw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001001000000000000000000001111;
// i_fence(opc_fence,opc_hint_fence,opc_iw_fence)
}

def i_fence__opc_fence__opc_hint_fence__opc_o_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence hint, o";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000100000000000000000000001111;
// i_fence(opc_fence,opc_hint_fence,opc_o_fence)
}

def i_fence__opc_fence__opc_hint_fence__opc_or_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence hint, or";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000110000000000000000000001111;
// i_fence(opc_fence,opc_hint_fence,opc_or_fence)
}

def i_fence__opc_fence__opc_hint_fence__opc_orw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence hint, orw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000111000000000000000000001111;
// i_fence(opc_fence,opc_hint_fence,opc_orw_fence)
}

def i_fence__opc_fence__opc_hint_fence__opc_ow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence hint, ow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000101000000000000000000001111;
// i_fence(opc_fence,opc_hint_fence,opc_ow_fence)
}

def i_fence__opc_fence__opc_hint_fence__opc_r_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence hint, r";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000010000000000000000000001111;
// i_fence(opc_fence,opc_hint_fence,opc_r_fence)
}

def i_fence__opc_fence__opc_hint_fence__opc_rw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence hint, rw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000011000000000000000000001111;
// i_fence(opc_fence,opc_hint_fence,opc_rw_fence)
}

def i_fence__opc_fence__opc_hint_fence__opc_w_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence hint, w";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000001000000000000000000001111;
// i_fence(opc_fence,opc_hint_fence,opc_w_fence)
}

def i_fence__opc_fence__opc_i_fence__opc_hint_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence i, hint";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000100000000000000000001111;
// i_fence(opc_fence,opc_i_fence,opc_hint_fence)
}

def i_fence__opc_fence__opc_i_fence__opc_i_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence i, i";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001000100000000000000000001111;
// i_fence(opc_fence,opc_i_fence,opc_i_fence)
}

def i_fence__opc_fence__opc_i_fence__opc_io_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence i, io";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001100100000000000000000001111;
// i_fence(opc_fence,opc_i_fence,opc_io_fence)
}

def i_fence__opc_fence__opc_i_fence__opc_ior_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence i, ior";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001110100000000000000000001111;
// i_fence(opc_fence,opc_i_fence,opc_ior_fence)
}

def i_fence__opc_fence__opc_i_fence__opc_iorw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence i, iorw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001111100000000000000000001111;
// i_fence(opc_fence,opc_i_fence,opc_iorw_fence)
}

def i_fence__opc_fence__opc_i_fence__opc_iow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence i, iow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001101100000000000000000001111;
// i_fence(opc_fence,opc_i_fence,opc_iow_fence)
}

def i_fence__opc_fence__opc_i_fence__opc_ir_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence i, ir";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001010100000000000000000001111;
// i_fence(opc_fence,opc_i_fence,opc_ir_fence)
}

def i_fence__opc_fence__opc_i_fence__opc_irw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence i, irw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001011100000000000000000001111;
// i_fence(opc_fence,opc_i_fence,opc_irw_fence)
}

def i_fence__opc_fence__opc_i_fence__opc_iw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence i, iw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001001100000000000000000001111;
// i_fence(opc_fence,opc_i_fence,opc_iw_fence)
}

def i_fence__opc_fence__opc_i_fence__opc_o_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence i, o";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000100100000000000000000001111;
// i_fence(opc_fence,opc_i_fence,opc_o_fence)
}

def i_fence__opc_fence__opc_i_fence__opc_or_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence i, or";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000110100000000000000000001111;
// i_fence(opc_fence,opc_i_fence,opc_or_fence)
}

def i_fence__opc_fence__opc_i_fence__opc_orw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence i, orw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000111100000000000000000001111;
// i_fence(opc_fence,opc_i_fence,opc_orw_fence)
}

def i_fence__opc_fence__opc_i_fence__opc_ow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence i, ow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000101100000000000000000001111;
// i_fence(opc_fence,opc_i_fence,opc_ow_fence)
}

def i_fence__opc_fence__opc_i_fence__opc_r_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence i, r";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000010100000000000000000001111;
// i_fence(opc_fence,opc_i_fence,opc_r_fence)
}

def i_fence__opc_fence__opc_i_fence__opc_rw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence i, rw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000011100000000000000000001111;
// i_fence(opc_fence,opc_i_fence,opc_rw_fence)
}

def i_fence__opc_fence__opc_i_fence__opc_w_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence i, w";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000001100000000000000000001111;
// i_fence(opc_fence,opc_i_fence,opc_w_fence)
}

def i_fence__opc_fence__opc_io_fence__opc_hint_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence io, hint";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000110000000000000000001111;
// i_fence(opc_fence,opc_io_fence,opc_hint_fence)
}

def i_fence__opc_fence__opc_io_fence__opc_i_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence io, i";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001000110000000000000000001111;
// i_fence(opc_fence,opc_io_fence,opc_i_fence)
}

def i_fence__opc_fence__opc_io_fence__opc_io_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence io, io";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001100110000000000000000001111;
// i_fence(opc_fence,opc_io_fence,opc_io_fence)
}

def i_fence__opc_fence__opc_io_fence__opc_ior_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence io, ior";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001110110000000000000000001111;
// i_fence(opc_fence,opc_io_fence,opc_ior_fence)
}

def i_fence__opc_fence__opc_io_fence__opc_iorw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence io, iorw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001111110000000000000000001111;
// i_fence(opc_fence,opc_io_fence,opc_iorw_fence)
}

def i_fence__opc_fence__opc_io_fence__opc_iow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence io, iow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001101110000000000000000001111;
// i_fence(opc_fence,opc_io_fence,opc_iow_fence)
}

def i_fence__opc_fence__opc_io_fence__opc_ir_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence io, ir";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001010110000000000000000001111;
// i_fence(opc_fence,opc_io_fence,opc_ir_fence)
}

def i_fence__opc_fence__opc_io_fence__opc_irw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence io, irw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001011110000000000000000001111;
// i_fence(opc_fence,opc_io_fence,opc_irw_fence)
}

def i_fence__opc_fence__opc_io_fence__opc_iw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence io, iw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001001110000000000000000001111;
// i_fence(opc_fence,opc_io_fence,opc_iw_fence)
}

def i_fence__opc_fence__opc_io_fence__opc_o_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence io, o";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000100110000000000000000001111;
// i_fence(opc_fence,opc_io_fence,opc_o_fence)
}

def i_fence__opc_fence__opc_io_fence__opc_or_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence io, or";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000110110000000000000000001111;
// i_fence(opc_fence,opc_io_fence,opc_or_fence)
}

def i_fence__opc_fence__opc_io_fence__opc_orw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence io, orw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000111110000000000000000001111;
// i_fence(opc_fence,opc_io_fence,opc_orw_fence)
}

def i_fence__opc_fence__opc_io_fence__opc_ow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence io, ow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000101110000000000000000001111;
// i_fence(opc_fence,opc_io_fence,opc_ow_fence)
}

def i_fence__opc_fence__opc_io_fence__opc_r_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence io, r";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000010110000000000000000001111;
// i_fence(opc_fence,opc_io_fence,opc_r_fence)
}

def i_fence__opc_fence__opc_io_fence__opc_rw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence io, rw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000011110000000000000000001111;
// i_fence(opc_fence,opc_io_fence,opc_rw_fence)
}

def i_fence__opc_fence__opc_io_fence__opc_w_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence io, w";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000001110000000000000000001111;
// i_fence(opc_fence,opc_io_fence,opc_w_fence)
}

def i_fence__opc_fence__opc_ior_fence__opc_hint_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ior, hint";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000111000000000000000001111;
// i_fence(opc_fence,opc_ior_fence,opc_hint_fence)
}

def i_fence__opc_fence__opc_ior_fence__opc_i_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ior, i";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001000111000000000000000001111;
// i_fence(opc_fence,opc_ior_fence,opc_i_fence)
}

def i_fence__opc_fence__opc_ior_fence__opc_io_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ior, io";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001100111000000000000000001111;
// i_fence(opc_fence,opc_ior_fence,opc_io_fence)
}

def i_fence__opc_fence__opc_ior_fence__opc_ior_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ior, ior";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001110111000000000000000001111;
// i_fence(opc_fence,opc_ior_fence,opc_ior_fence)
}

def i_fence__opc_fence__opc_ior_fence__opc_iorw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ior, iorw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001111111000000000000000001111;
// i_fence(opc_fence,opc_ior_fence,opc_iorw_fence)
}

def i_fence__opc_fence__opc_ior_fence__opc_iow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ior, iow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001101111000000000000000001111;
// i_fence(opc_fence,opc_ior_fence,opc_iow_fence)
}

def i_fence__opc_fence__opc_ior_fence__opc_ir_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ior, ir";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001010111000000000000000001111;
// i_fence(opc_fence,opc_ior_fence,opc_ir_fence)
}

def i_fence__opc_fence__opc_ior_fence__opc_irw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ior, irw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001011111000000000000000001111;
// i_fence(opc_fence,opc_ior_fence,opc_irw_fence)
}

def i_fence__opc_fence__opc_ior_fence__opc_iw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ior, iw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001001111000000000000000001111;
// i_fence(opc_fence,opc_ior_fence,opc_iw_fence)
}

def i_fence__opc_fence__opc_ior_fence__opc_o_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ior, o";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000100111000000000000000001111;
// i_fence(opc_fence,opc_ior_fence,opc_o_fence)
}

def i_fence__opc_fence__opc_ior_fence__opc_or_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ior, or";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000110111000000000000000001111;
// i_fence(opc_fence,opc_ior_fence,opc_or_fence)
}

def i_fence__opc_fence__opc_ior_fence__opc_orw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ior, orw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000111111000000000000000001111;
// i_fence(opc_fence,opc_ior_fence,opc_orw_fence)
}

def i_fence__opc_fence__opc_ior_fence__opc_ow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ior, ow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000101111000000000000000001111;
// i_fence(opc_fence,opc_ior_fence,opc_ow_fence)
}

def i_fence__opc_fence__opc_ior_fence__opc_r_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ior, r";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000010111000000000000000001111;
// i_fence(opc_fence,opc_ior_fence,opc_r_fence)
}

def i_fence__opc_fence__opc_ior_fence__opc_rw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ior, rw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000011111000000000000000001111;
// i_fence(opc_fence,opc_ior_fence,opc_rw_fence)
}

def i_fence__opc_fence__opc_ior_fence__opc_w_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ior, w";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000001111000000000000000001111;
// i_fence(opc_fence,opc_ior_fence,opc_w_fence)
}

def i_fence__opc_fence__opc_iorw_fence__opc_hint_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iorw, hint";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000111100000000000000001111;
// i_fence(opc_fence,opc_iorw_fence,opc_hint_fence)
}

def i_fence__opc_fence__opc_iorw_fence__opc_i_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iorw, i";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001000111100000000000000001111;
// i_fence(opc_fence,opc_iorw_fence,opc_i_fence)
}

def i_fence__opc_fence__opc_iorw_fence__opc_io_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iorw, io";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001100111100000000000000001111;
// i_fence(opc_fence,opc_iorw_fence,opc_io_fence)
}

def i_fence__opc_fence__opc_iorw_fence__opc_ior_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iorw, ior";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001110111100000000000000001111;
// i_fence(opc_fence,opc_iorw_fence,opc_ior_fence)
}

def i_fence__opc_fence__opc_iorw_fence__opc_iorw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iorw, iorw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001111111100000000000000001111;
// i_fence(opc_fence,opc_iorw_fence,opc_iorw_fence)
}

def i_fence__opc_fence__opc_iorw_fence__opc_iow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iorw, iow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001101111100000000000000001111;
// i_fence(opc_fence,opc_iorw_fence,opc_iow_fence)
}

def i_fence__opc_fence__opc_iorw_fence__opc_ir_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iorw, ir";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001010111100000000000000001111;
// i_fence(opc_fence,opc_iorw_fence,opc_ir_fence)
}

def i_fence__opc_fence__opc_iorw_fence__opc_irw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iorw, irw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001011111100000000000000001111;
// i_fence(opc_fence,opc_iorw_fence,opc_irw_fence)
}

def i_fence__opc_fence__opc_iorw_fence__opc_iw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iorw, iw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001001111100000000000000001111;
// i_fence(opc_fence,opc_iorw_fence,opc_iw_fence)
}

def i_fence__opc_fence__opc_iorw_fence__opc_o_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iorw, o";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000100111100000000000000001111;
// i_fence(opc_fence,opc_iorw_fence,opc_o_fence)
}

def i_fence__opc_fence__opc_iorw_fence__opc_or_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iorw, or";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000110111100000000000000001111;
// i_fence(opc_fence,opc_iorw_fence,opc_or_fence)
}

def i_fence__opc_fence__opc_iorw_fence__opc_orw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iorw, orw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000111111100000000000000001111;
// i_fence(opc_fence,opc_iorw_fence,opc_orw_fence)
}

def i_fence__opc_fence__opc_iorw_fence__opc_ow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iorw, ow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000101111100000000000000001111;
// i_fence(opc_fence,opc_iorw_fence,opc_ow_fence)
}

def i_fence__opc_fence__opc_iorw_fence__opc_r_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iorw, r";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000010111100000000000000001111;
// i_fence(opc_fence,opc_iorw_fence,opc_r_fence)
}

def i_fence__opc_fence__opc_iorw_fence__opc_rw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iorw, rw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000011111100000000000000001111;
// i_fence(opc_fence,opc_iorw_fence,opc_rw_fence)
}

def i_fence__opc_fence__opc_iorw_fence__opc_w_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iorw, w";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000001111100000000000000001111;
// i_fence(opc_fence,opc_iorw_fence,opc_w_fence)
}

def i_fence__opc_fence__opc_iow_fence__opc_hint_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iow, hint";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000110100000000000000001111;
// i_fence(opc_fence,opc_iow_fence,opc_hint_fence)
}

def i_fence__opc_fence__opc_iow_fence__opc_i_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iow, i";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001000110100000000000000001111;
// i_fence(opc_fence,opc_iow_fence,opc_i_fence)
}

def i_fence__opc_fence__opc_iow_fence__opc_io_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iow, io";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001100110100000000000000001111;
// i_fence(opc_fence,opc_iow_fence,opc_io_fence)
}

def i_fence__opc_fence__opc_iow_fence__opc_ior_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iow, ior";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001110110100000000000000001111;
// i_fence(opc_fence,opc_iow_fence,opc_ior_fence)
}

def i_fence__opc_fence__opc_iow_fence__opc_iorw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iow, iorw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001111110100000000000000001111;
// i_fence(opc_fence,opc_iow_fence,opc_iorw_fence)
}

def i_fence__opc_fence__opc_iow_fence__opc_iow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iow, iow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001101110100000000000000001111;
// i_fence(opc_fence,opc_iow_fence,opc_iow_fence)
}

def i_fence__opc_fence__opc_iow_fence__opc_ir_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iow, ir";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001010110100000000000000001111;
// i_fence(opc_fence,opc_iow_fence,opc_ir_fence)
}

def i_fence__opc_fence__opc_iow_fence__opc_irw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iow, irw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001011110100000000000000001111;
// i_fence(opc_fence,opc_iow_fence,opc_irw_fence)
}

def i_fence__opc_fence__opc_iow_fence__opc_iw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iow, iw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001001110100000000000000001111;
// i_fence(opc_fence,opc_iow_fence,opc_iw_fence)
}

def i_fence__opc_fence__opc_iow_fence__opc_o_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iow, o";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000100110100000000000000001111;
// i_fence(opc_fence,opc_iow_fence,opc_o_fence)
}

def i_fence__opc_fence__opc_iow_fence__opc_or_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iow, or";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000110110100000000000000001111;
// i_fence(opc_fence,opc_iow_fence,opc_or_fence)
}

def i_fence__opc_fence__opc_iow_fence__opc_orw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iow, orw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000111110100000000000000001111;
// i_fence(opc_fence,opc_iow_fence,opc_orw_fence)
}

def i_fence__opc_fence__opc_iow_fence__opc_ow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iow, ow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000101110100000000000000001111;
// i_fence(opc_fence,opc_iow_fence,opc_ow_fence)
}

def i_fence__opc_fence__opc_iow_fence__opc_r_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iow, r";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000010110100000000000000001111;
// i_fence(opc_fence,opc_iow_fence,opc_r_fence)
}

def i_fence__opc_fence__opc_iow_fence__opc_rw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iow, rw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000011110100000000000000001111;
// i_fence(opc_fence,opc_iow_fence,opc_rw_fence)
}

def i_fence__opc_fence__opc_iow_fence__opc_w_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iow, w";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000001110100000000000000001111;
// i_fence(opc_fence,opc_iow_fence,opc_w_fence)
}

def i_fence__opc_fence__opc_ir_fence__opc_hint_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ir, hint";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000101000000000000000001111;
// i_fence(opc_fence,opc_ir_fence,opc_hint_fence)
}

def i_fence__opc_fence__opc_ir_fence__opc_i_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ir, i";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001000101000000000000000001111;
// i_fence(opc_fence,opc_ir_fence,opc_i_fence)
}

def i_fence__opc_fence__opc_ir_fence__opc_io_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ir, io";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001100101000000000000000001111;
// i_fence(opc_fence,opc_ir_fence,opc_io_fence)
}

def i_fence__opc_fence__opc_ir_fence__opc_ior_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ir, ior";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001110101000000000000000001111;
// i_fence(opc_fence,opc_ir_fence,opc_ior_fence)
}

def i_fence__opc_fence__opc_ir_fence__opc_iorw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ir, iorw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001111101000000000000000001111;
// i_fence(opc_fence,opc_ir_fence,opc_iorw_fence)
}

def i_fence__opc_fence__opc_ir_fence__opc_iow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ir, iow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001101101000000000000000001111;
// i_fence(opc_fence,opc_ir_fence,opc_iow_fence)
}

def i_fence__opc_fence__opc_ir_fence__opc_ir_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ir, ir";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001010101000000000000000001111;
// i_fence(opc_fence,opc_ir_fence,opc_ir_fence)
}

def i_fence__opc_fence__opc_ir_fence__opc_irw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ir, irw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001011101000000000000000001111;
// i_fence(opc_fence,opc_ir_fence,opc_irw_fence)
}

def i_fence__opc_fence__opc_ir_fence__opc_iw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ir, iw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001001101000000000000000001111;
// i_fence(opc_fence,opc_ir_fence,opc_iw_fence)
}

def i_fence__opc_fence__opc_ir_fence__opc_o_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ir, o";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000100101000000000000000001111;
// i_fence(opc_fence,opc_ir_fence,opc_o_fence)
}

def i_fence__opc_fence__opc_ir_fence__opc_or_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ir, or";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000110101000000000000000001111;
// i_fence(opc_fence,opc_ir_fence,opc_or_fence)
}

def i_fence__opc_fence__opc_ir_fence__opc_orw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ir, orw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000111101000000000000000001111;
// i_fence(opc_fence,opc_ir_fence,opc_orw_fence)
}

def i_fence__opc_fence__opc_ir_fence__opc_ow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ir, ow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000101101000000000000000001111;
// i_fence(opc_fence,opc_ir_fence,opc_ow_fence)
}

def i_fence__opc_fence__opc_ir_fence__opc_r_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ir, r";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000010101000000000000000001111;
// i_fence(opc_fence,opc_ir_fence,opc_r_fence)
}

def i_fence__opc_fence__opc_ir_fence__opc_rw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ir, rw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000011101000000000000000001111;
// i_fence(opc_fence,opc_ir_fence,opc_rw_fence)
}

def i_fence__opc_fence__opc_ir_fence__opc_w_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ir, w";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000001101000000000000000001111;
// i_fence(opc_fence,opc_ir_fence,opc_w_fence)
}

def i_fence__opc_fence__opc_irw_fence__opc_hint_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence irw, hint";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000101100000000000000001111;
// i_fence(opc_fence,opc_irw_fence,opc_hint_fence)
}

def i_fence__opc_fence__opc_irw_fence__opc_i_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence irw, i";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001000101100000000000000001111;
// i_fence(opc_fence,opc_irw_fence,opc_i_fence)
}

def i_fence__opc_fence__opc_irw_fence__opc_io_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence irw, io";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001100101100000000000000001111;
// i_fence(opc_fence,opc_irw_fence,opc_io_fence)
}

def i_fence__opc_fence__opc_irw_fence__opc_ior_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence irw, ior";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001110101100000000000000001111;
// i_fence(opc_fence,opc_irw_fence,opc_ior_fence)
}

def i_fence__opc_fence__opc_irw_fence__opc_iorw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence irw, iorw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001111101100000000000000001111;
// i_fence(opc_fence,opc_irw_fence,opc_iorw_fence)
}

def i_fence__opc_fence__opc_irw_fence__opc_iow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence irw, iow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001101101100000000000000001111;
// i_fence(opc_fence,opc_irw_fence,opc_iow_fence)
}

def i_fence__opc_fence__opc_irw_fence__opc_ir_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence irw, ir";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001010101100000000000000001111;
// i_fence(opc_fence,opc_irw_fence,opc_ir_fence)
}

def i_fence__opc_fence__opc_irw_fence__opc_irw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence irw, irw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001011101100000000000000001111;
// i_fence(opc_fence,opc_irw_fence,opc_irw_fence)
}

def i_fence__opc_fence__opc_irw_fence__opc_iw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence irw, iw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001001101100000000000000001111;
// i_fence(opc_fence,opc_irw_fence,opc_iw_fence)
}

def i_fence__opc_fence__opc_irw_fence__opc_o_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence irw, o";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000100101100000000000000001111;
// i_fence(opc_fence,opc_irw_fence,opc_o_fence)
}

def i_fence__opc_fence__opc_irw_fence__opc_or_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence irw, or";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000110101100000000000000001111;
// i_fence(opc_fence,opc_irw_fence,opc_or_fence)
}

def i_fence__opc_fence__opc_irw_fence__opc_orw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence irw, orw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000111101100000000000000001111;
// i_fence(opc_fence,opc_irw_fence,opc_orw_fence)
}

def i_fence__opc_fence__opc_irw_fence__opc_ow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence irw, ow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000101101100000000000000001111;
// i_fence(opc_fence,opc_irw_fence,opc_ow_fence)
}

def i_fence__opc_fence__opc_irw_fence__opc_r_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence irw, r";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000010101100000000000000001111;
// i_fence(opc_fence,opc_irw_fence,opc_r_fence)
}

def i_fence__opc_fence__opc_irw_fence__opc_rw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence irw, rw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000011101100000000000000001111;
// i_fence(opc_fence,opc_irw_fence,opc_rw_fence)
}

def i_fence__opc_fence__opc_irw_fence__opc_w_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence irw, w";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000001101100000000000000001111;
// i_fence(opc_fence,opc_irw_fence,opc_w_fence)
}

def i_fence__opc_fence__opc_iw_fence__opc_hint_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iw, hint";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000100100000000000000001111;
// i_fence(opc_fence,opc_iw_fence,opc_hint_fence)
}

def i_fence__opc_fence__opc_iw_fence__opc_i_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iw, i";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001000100100000000000000001111;
// i_fence(opc_fence,opc_iw_fence,opc_i_fence)
}

def i_fence__opc_fence__opc_iw_fence__opc_io_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iw, io";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001100100100000000000000001111;
// i_fence(opc_fence,opc_iw_fence,opc_io_fence)
}

def i_fence__opc_fence__opc_iw_fence__opc_ior_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iw, ior";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001110100100000000000000001111;
// i_fence(opc_fence,opc_iw_fence,opc_ior_fence)
}

def i_fence__opc_fence__opc_iw_fence__opc_iorw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iw, iorw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001111100100000000000000001111;
// i_fence(opc_fence,opc_iw_fence,opc_iorw_fence)
}

def i_fence__opc_fence__opc_iw_fence__opc_iow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iw, iow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001101100100000000000000001111;
// i_fence(opc_fence,opc_iw_fence,opc_iow_fence)
}

def i_fence__opc_fence__opc_iw_fence__opc_ir_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iw, ir";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001010100100000000000000001111;
// i_fence(opc_fence,opc_iw_fence,opc_ir_fence)
}

def i_fence__opc_fence__opc_iw_fence__opc_irw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iw, irw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001011100100000000000000001111;
// i_fence(opc_fence,opc_iw_fence,opc_irw_fence)
}

def i_fence__opc_fence__opc_iw_fence__opc_iw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iw, iw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001001100100000000000000001111;
// i_fence(opc_fence,opc_iw_fence,opc_iw_fence)
}

def i_fence__opc_fence__opc_iw_fence__opc_o_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iw, o";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000100100100000000000000001111;
// i_fence(opc_fence,opc_iw_fence,opc_o_fence)
}

def i_fence__opc_fence__opc_iw_fence__opc_or_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iw, or";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000110100100000000000000001111;
// i_fence(opc_fence,opc_iw_fence,opc_or_fence)
}

def i_fence__opc_fence__opc_iw_fence__opc_orw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iw, orw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000111100100000000000000001111;
// i_fence(opc_fence,opc_iw_fence,opc_orw_fence)
}

def i_fence__opc_fence__opc_iw_fence__opc_ow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iw, ow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000101100100000000000000001111;
// i_fence(opc_fence,opc_iw_fence,opc_ow_fence)
}

def i_fence__opc_fence__opc_iw_fence__opc_r_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iw, r";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000010100100000000000000001111;
// i_fence(opc_fence,opc_iw_fence,opc_r_fence)
}

def i_fence__opc_fence__opc_iw_fence__opc_rw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iw, rw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000011100100000000000000001111;
// i_fence(opc_fence,opc_iw_fence,opc_rw_fence)
}

def i_fence__opc_fence__opc_iw_fence__opc_w_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence iw, w";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000001100100000000000000001111;
// i_fence(opc_fence,opc_iw_fence,opc_w_fence)
}

def i_fence__opc_fence__opc_o_fence__opc_hint_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence o, hint";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000010000000000000000001111;
// i_fence(opc_fence,opc_o_fence,opc_hint_fence)
}

def i_fence__opc_fence__opc_o_fence__opc_i_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence o, i";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001000010000000000000000001111;
// i_fence(opc_fence,opc_o_fence,opc_i_fence)
}

def i_fence__opc_fence__opc_o_fence__opc_io_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence o, io";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001100010000000000000000001111;
// i_fence(opc_fence,opc_o_fence,opc_io_fence)
}

def i_fence__opc_fence__opc_o_fence__opc_ior_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence o, ior";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001110010000000000000000001111;
// i_fence(opc_fence,opc_o_fence,opc_ior_fence)
}

def i_fence__opc_fence__opc_o_fence__opc_iorw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence o, iorw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001111010000000000000000001111;
// i_fence(opc_fence,opc_o_fence,opc_iorw_fence)
}

def i_fence__opc_fence__opc_o_fence__opc_iow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence o, iow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001101010000000000000000001111;
// i_fence(opc_fence,opc_o_fence,opc_iow_fence)
}

def i_fence__opc_fence__opc_o_fence__opc_ir_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence o, ir";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001010010000000000000000001111;
// i_fence(opc_fence,opc_o_fence,opc_ir_fence)
}

def i_fence__opc_fence__opc_o_fence__opc_irw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence o, irw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001011010000000000000000001111;
// i_fence(opc_fence,opc_o_fence,opc_irw_fence)
}

def i_fence__opc_fence__opc_o_fence__opc_iw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence o, iw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001001010000000000000000001111;
// i_fence(opc_fence,opc_o_fence,opc_iw_fence)
}

def i_fence__opc_fence__opc_o_fence__opc_o_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence o, o";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000100010000000000000000001111;
// i_fence(opc_fence,opc_o_fence,opc_o_fence)
}

def i_fence__opc_fence__opc_o_fence__opc_or_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence o, or";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000110010000000000000000001111;
// i_fence(opc_fence,opc_o_fence,opc_or_fence)
}

def i_fence__opc_fence__opc_o_fence__opc_orw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence o, orw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000111010000000000000000001111;
// i_fence(opc_fence,opc_o_fence,opc_orw_fence)
}

def i_fence__opc_fence__opc_o_fence__opc_ow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence o, ow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000101010000000000000000001111;
// i_fence(opc_fence,opc_o_fence,opc_ow_fence)
}

def i_fence__opc_fence__opc_o_fence__opc_r_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence o, r";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000010010000000000000000001111;
// i_fence(opc_fence,opc_o_fence,opc_r_fence)
}

def i_fence__opc_fence__opc_o_fence__opc_rw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence o, rw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000011010000000000000000001111;
// i_fence(opc_fence,opc_o_fence,opc_rw_fence)
}

def i_fence__opc_fence__opc_o_fence__opc_w_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence o, w";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000001010000000000000000001111;
// i_fence(opc_fence,opc_o_fence,opc_w_fence)
}

def i_fence__opc_fence__opc_or_fence__opc_hint_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence or, hint";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000011000000000000000001111;
// i_fence(opc_fence,opc_or_fence,opc_hint_fence)
}

def i_fence__opc_fence__opc_or_fence__opc_i_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence or, i";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001000011000000000000000001111;
// i_fence(opc_fence,opc_or_fence,opc_i_fence)
}

def i_fence__opc_fence__opc_or_fence__opc_io_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence or, io";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001100011000000000000000001111;
// i_fence(opc_fence,opc_or_fence,opc_io_fence)
}

def i_fence__opc_fence__opc_or_fence__opc_ior_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence or, ior";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001110011000000000000000001111;
// i_fence(opc_fence,opc_or_fence,opc_ior_fence)
}

def i_fence__opc_fence__opc_or_fence__opc_iorw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence or, iorw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001111011000000000000000001111;
// i_fence(opc_fence,opc_or_fence,opc_iorw_fence)
}

def i_fence__opc_fence__opc_or_fence__opc_iow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence or, iow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001101011000000000000000001111;
// i_fence(opc_fence,opc_or_fence,opc_iow_fence)
}

def i_fence__opc_fence__opc_or_fence__opc_ir_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence or, ir";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001010011000000000000000001111;
// i_fence(opc_fence,opc_or_fence,opc_ir_fence)
}

def i_fence__opc_fence__opc_or_fence__opc_irw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence or, irw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001011011000000000000000001111;
// i_fence(opc_fence,opc_or_fence,opc_irw_fence)
}

def i_fence__opc_fence__opc_or_fence__opc_iw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence or, iw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001001011000000000000000001111;
// i_fence(opc_fence,opc_or_fence,opc_iw_fence)
}

def i_fence__opc_fence__opc_or_fence__opc_o_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence or, o";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000100011000000000000000001111;
// i_fence(opc_fence,opc_or_fence,opc_o_fence)
}

def i_fence__opc_fence__opc_or_fence__opc_or_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence or, or";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000110011000000000000000001111;
// i_fence(opc_fence,opc_or_fence,opc_or_fence)
}

def i_fence__opc_fence__opc_or_fence__opc_orw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence or, orw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000111011000000000000000001111;
// i_fence(opc_fence,opc_or_fence,opc_orw_fence)
}

def i_fence__opc_fence__opc_or_fence__opc_ow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence or, ow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000101011000000000000000001111;
// i_fence(opc_fence,opc_or_fence,opc_ow_fence)
}

def i_fence__opc_fence__opc_or_fence__opc_r_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence or, r";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000010011000000000000000001111;
// i_fence(opc_fence,opc_or_fence,opc_r_fence)
}

def i_fence__opc_fence__opc_or_fence__opc_rw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence or, rw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000011011000000000000000001111;
// i_fence(opc_fence,opc_or_fence,opc_rw_fence)
}

def i_fence__opc_fence__opc_or_fence__opc_w_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence or, w";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000001011000000000000000001111;
// i_fence(opc_fence,opc_or_fence,opc_w_fence)
}

def i_fence__opc_fence__opc_orw_fence__opc_hint_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence orw, hint";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000011100000000000000001111;
// i_fence(opc_fence,opc_orw_fence,opc_hint_fence)
}

def i_fence__opc_fence__opc_orw_fence__opc_i_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence orw, i";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001000011100000000000000001111;
// i_fence(opc_fence,opc_orw_fence,opc_i_fence)
}

def i_fence__opc_fence__opc_orw_fence__opc_io_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence orw, io";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001100011100000000000000001111;
// i_fence(opc_fence,opc_orw_fence,opc_io_fence)
}

def i_fence__opc_fence__opc_orw_fence__opc_ior_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence orw, ior";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001110011100000000000000001111;
// i_fence(opc_fence,opc_orw_fence,opc_ior_fence)
}

def i_fence__opc_fence__opc_orw_fence__opc_iorw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence orw, iorw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001111011100000000000000001111;
// i_fence(opc_fence,opc_orw_fence,opc_iorw_fence)
}

def i_fence__opc_fence__opc_orw_fence__opc_iow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence orw, iow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001101011100000000000000001111;
// i_fence(opc_fence,opc_orw_fence,opc_iow_fence)
}

def i_fence__opc_fence__opc_orw_fence__opc_ir_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence orw, ir";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001010011100000000000000001111;
// i_fence(opc_fence,opc_orw_fence,opc_ir_fence)
}

def i_fence__opc_fence__opc_orw_fence__opc_irw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence orw, irw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001011011100000000000000001111;
// i_fence(opc_fence,opc_orw_fence,opc_irw_fence)
}

def i_fence__opc_fence__opc_orw_fence__opc_iw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence orw, iw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001001011100000000000000001111;
// i_fence(opc_fence,opc_orw_fence,opc_iw_fence)
}

def i_fence__opc_fence__opc_orw_fence__opc_o_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence orw, o";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000100011100000000000000001111;
// i_fence(opc_fence,opc_orw_fence,opc_o_fence)
}

def i_fence__opc_fence__opc_orw_fence__opc_or_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence orw, or";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000110011100000000000000001111;
// i_fence(opc_fence,opc_orw_fence,opc_or_fence)
}

def i_fence__opc_fence__opc_orw_fence__opc_orw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence orw, orw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000111011100000000000000001111;
// i_fence(opc_fence,opc_orw_fence,opc_orw_fence)
}

def i_fence__opc_fence__opc_orw_fence__opc_ow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence orw, ow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000101011100000000000000001111;
// i_fence(opc_fence,opc_orw_fence,opc_ow_fence)
}

def i_fence__opc_fence__opc_orw_fence__opc_r_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence orw, r";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000010011100000000000000001111;
// i_fence(opc_fence,opc_orw_fence,opc_r_fence)
}

def i_fence__opc_fence__opc_orw_fence__opc_rw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence orw, rw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000011011100000000000000001111;
// i_fence(opc_fence,opc_orw_fence,opc_rw_fence)
}

def i_fence__opc_fence__opc_orw_fence__opc_w_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence orw, w";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000001011100000000000000001111;
// i_fence(opc_fence,opc_orw_fence,opc_w_fence)
}

def i_fence__opc_fence__opc_ow_fence__opc_hint_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ow, hint";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000010100000000000000001111;
// i_fence(opc_fence,opc_ow_fence,opc_hint_fence)
}

def i_fence__opc_fence__opc_ow_fence__opc_i_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ow, i";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001000010100000000000000001111;
// i_fence(opc_fence,opc_ow_fence,opc_i_fence)
}

def i_fence__opc_fence__opc_ow_fence__opc_io_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ow, io";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001100010100000000000000001111;
// i_fence(opc_fence,opc_ow_fence,opc_io_fence)
}

def i_fence__opc_fence__opc_ow_fence__opc_ior_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ow, ior";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001110010100000000000000001111;
// i_fence(opc_fence,opc_ow_fence,opc_ior_fence)
}

def i_fence__opc_fence__opc_ow_fence__opc_iorw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ow, iorw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001111010100000000000000001111;
// i_fence(opc_fence,opc_ow_fence,opc_iorw_fence)
}

def i_fence__opc_fence__opc_ow_fence__opc_iow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ow, iow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001101010100000000000000001111;
// i_fence(opc_fence,opc_ow_fence,opc_iow_fence)
}

def i_fence__opc_fence__opc_ow_fence__opc_ir_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ow, ir";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001010010100000000000000001111;
// i_fence(opc_fence,opc_ow_fence,opc_ir_fence)
}

def i_fence__opc_fence__opc_ow_fence__opc_irw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ow, irw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001011010100000000000000001111;
// i_fence(opc_fence,opc_ow_fence,opc_irw_fence)
}

def i_fence__opc_fence__opc_ow_fence__opc_iw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ow, iw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001001010100000000000000001111;
// i_fence(opc_fence,opc_ow_fence,opc_iw_fence)
}

def i_fence__opc_fence__opc_ow_fence__opc_o_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ow, o";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000100010100000000000000001111;
// i_fence(opc_fence,opc_ow_fence,opc_o_fence)
}

def i_fence__opc_fence__opc_ow_fence__opc_or_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ow, or";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000110010100000000000000001111;
// i_fence(opc_fence,opc_ow_fence,opc_or_fence)
}

def i_fence__opc_fence__opc_ow_fence__opc_orw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ow, orw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000111010100000000000000001111;
// i_fence(opc_fence,opc_ow_fence,opc_orw_fence)
}

def i_fence__opc_fence__opc_ow_fence__opc_ow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ow, ow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000101010100000000000000001111;
// i_fence(opc_fence,opc_ow_fence,opc_ow_fence)
}

def i_fence__opc_fence__opc_ow_fence__opc_r_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ow, r";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000010010100000000000000001111;
// i_fence(opc_fence,opc_ow_fence,opc_r_fence)
}

def i_fence__opc_fence__opc_ow_fence__opc_rw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ow, rw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000011010100000000000000001111;
// i_fence(opc_fence,opc_ow_fence,opc_rw_fence)
}

def i_fence__opc_fence__opc_ow_fence__opc_w_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence ow, w";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000001010100000000000000001111;
// i_fence(opc_fence,opc_ow_fence,opc_w_fence)
}

def i_fence__opc_fence__opc_r_fence__opc_hint_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence r, hint";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000001000000000000000001111;
// i_fence(opc_fence,opc_r_fence,opc_hint_fence)
}

def i_fence__opc_fence__opc_r_fence__opc_i_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence r, i";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001000001000000000000000001111;
// i_fence(opc_fence,opc_r_fence,opc_i_fence)
}

def i_fence__opc_fence__opc_r_fence__opc_io_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence r, io";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001100001000000000000000001111;
// i_fence(opc_fence,opc_r_fence,opc_io_fence)
}

def i_fence__opc_fence__opc_r_fence__opc_ior_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence r, ior";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001110001000000000000000001111;
// i_fence(opc_fence,opc_r_fence,opc_ior_fence)
}

def i_fence__opc_fence__opc_r_fence__opc_iorw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence r, iorw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001111001000000000000000001111;
// i_fence(opc_fence,opc_r_fence,opc_iorw_fence)
}

def i_fence__opc_fence__opc_r_fence__opc_iow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence r, iow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001101001000000000000000001111;
// i_fence(opc_fence,opc_r_fence,opc_iow_fence)
}

def i_fence__opc_fence__opc_r_fence__opc_ir_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence r, ir";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001010001000000000000000001111;
// i_fence(opc_fence,opc_r_fence,opc_ir_fence)
}

def i_fence__opc_fence__opc_r_fence__opc_irw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence r, irw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001011001000000000000000001111;
// i_fence(opc_fence,opc_r_fence,opc_irw_fence)
}

def i_fence__opc_fence__opc_r_fence__opc_iw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence r, iw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001001001000000000000000001111;
// i_fence(opc_fence,opc_r_fence,opc_iw_fence)
}

def i_fence__opc_fence__opc_r_fence__opc_o_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence r, o";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000100001000000000000000001111;
// i_fence(opc_fence,opc_r_fence,opc_o_fence)
}

def i_fence__opc_fence__opc_r_fence__opc_or_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence r, or";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000110001000000000000000001111;
// i_fence(opc_fence,opc_r_fence,opc_or_fence)
}

def i_fence__opc_fence__opc_r_fence__opc_orw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence r, orw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000111001000000000000000001111;
// i_fence(opc_fence,opc_r_fence,opc_orw_fence)
}

def i_fence__opc_fence__opc_r_fence__opc_ow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence r, ow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000101001000000000000000001111;
// i_fence(opc_fence,opc_r_fence,opc_ow_fence)
}

def i_fence__opc_fence__opc_r_fence__opc_r_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence r, r";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000010001000000000000000001111;
// i_fence(opc_fence,opc_r_fence,opc_r_fence)
}

def i_fence__opc_fence__opc_r_fence__opc_rw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence r, rw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000011001000000000000000001111;
// i_fence(opc_fence,opc_r_fence,opc_rw_fence)
}

def i_fence__opc_fence__opc_r_fence__opc_w_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence r, w";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000001001000000000000000001111;
// i_fence(opc_fence,opc_r_fence,opc_w_fence)
}

def i_fence__opc_fence__opc_rw_fence__opc_hint_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence rw, hint";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000001100000000000000001111;
// i_fence(opc_fence,opc_rw_fence,opc_hint_fence)
}

def i_fence__opc_fence__opc_rw_fence__opc_i_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence rw, i";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001000001100000000000000001111;
// i_fence(opc_fence,opc_rw_fence,opc_i_fence)
}

def i_fence__opc_fence__opc_rw_fence__opc_io_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence rw, io";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001100001100000000000000001111;
// i_fence(opc_fence,opc_rw_fence,opc_io_fence)
}

def i_fence__opc_fence__opc_rw_fence__opc_ior_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence rw, ior";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001110001100000000000000001111;
// i_fence(opc_fence,opc_rw_fence,opc_ior_fence)
}

def i_fence__opc_fence__opc_rw_fence__opc_iorw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence rw, iorw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001111001100000000000000001111;
// i_fence(opc_fence,opc_rw_fence,opc_iorw_fence)
}

def i_fence__opc_fence__opc_rw_fence__opc_iow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence rw, iow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001101001100000000000000001111;
// i_fence(opc_fence,opc_rw_fence,opc_iow_fence)
}

def i_fence__opc_fence__opc_rw_fence__opc_ir_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence rw, ir";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001010001100000000000000001111;
// i_fence(opc_fence,opc_rw_fence,opc_ir_fence)
}

def i_fence__opc_fence__opc_rw_fence__opc_irw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence rw, irw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001011001100000000000000001111;
// i_fence(opc_fence,opc_rw_fence,opc_irw_fence)
}

def i_fence__opc_fence__opc_rw_fence__opc_iw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence rw, iw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001001001100000000000000001111;
// i_fence(opc_fence,opc_rw_fence,opc_iw_fence)
}

def i_fence__opc_fence__opc_rw_fence__opc_o_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence rw, o";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000100001100000000000000001111;
// i_fence(opc_fence,opc_rw_fence,opc_o_fence)
}

def i_fence__opc_fence__opc_rw_fence__opc_or_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence rw, or";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000110001100000000000000001111;
// i_fence(opc_fence,opc_rw_fence,opc_or_fence)
}

def i_fence__opc_fence__opc_rw_fence__opc_orw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence rw, orw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000111001100000000000000001111;
// i_fence(opc_fence,opc_rw_fence,opc_orw_fence)
}

def i_fence__opc_fence__opc_rw_fence__opc_ow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence rw, ow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000101001100000000000000001111;
// i_fence(opc_fence,opc_rw_fence,opc_ow_fence)
}

def i_fence__opc_fence__opc_rw_fence__opc_r_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence rw, r";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000010001100000000000000001111;
// i_fence(opc_fence,opc_rw_fence,opc_r_fence)
}

def i_fence__opc_fence__opc_rw_fence__opc_rw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence rw, rw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000011001100000000000000001111;
// i_fence(opc_fence,opc_rw_fence,opc_rw_fence)
}

def i_fence__opc_fence__opc_rw_fence__opc_w_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence rw, w";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000001001100000000000000001111;
// i_fence(opc_fence,opc_rw_fence,opc_w_fence)
}

def i_fence__opc_fence__opc_w_fence__opc_hint_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence w, hint";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000000100000000000000001111;
// i_fence(opc_fence,opc_w_fence,opc_hint_fence)
}

def i_fence__opc_fence__opc_w_fence__opc_i_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence w, i";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001000000100000000000000001111;
// i_fence(opc_fence,opc_w_fence,opc_i_fence)
}

def i_fence__opc_fence__opc_w_fence__opc_io_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence w, io";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001100000100000000000000001111;
// i_fence(opc_fence,opc_w_fence,opc_io_fence)
}

def i_fence__opc_fence__opc_w_fence__opc_ior_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence w, ior";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001110000100000000000000001111;
// i_fence(opc_fence,opc_w_fence,opc_ior_fence)
}

def i_fence__opc_fence__opc_w_fence__opc_iorw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence w, iorw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001111000100000000000000001111;
// i_fence(opc_fence,opc_w_fence,opc_iorw_fence)
}

def i_fence__opc_fence__opc_w_fence__opc_iow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence w, iow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001101000100000000000000001111;
// i_fence(opc_fence,opc_w_fence,opc_iow_fence)
}

def i_fence__opc_fence__opc_w_fence__opc_ir_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence w, ir";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001010000100000000000000001111;
// i_fence(opc_fence,opc_w_fence,opc_ir_fence)
}

def i_fence__opc_fence__opc_w_fence__opc_irw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence w, irw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001011000100000000000000001111;
// i_fence(opc_fence,opc_w_fence,opc_irw_fence)
}

def i_fence__opc_fence__opc_w_fence__opc_iw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence w, iw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00001001000100000000000000001111;
// i_fence(opc_fence,opc_w_fence,opc_iw_fence)
}

def i_fence__opc_fence__opc_w_fence__opc_o_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence w, o";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000100000100000000000000001111;
// i_fence(opc_fence,opc_w_fence,opc_o_fence)
}

def i_fence__opc_fence__opc_w_fence__opc_or_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence w, or";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000110000100000000000000001111;
// i_fence(opc_fence,opc_w_fence,opc_or_fence)
}

def i_fence__opc_fence__opc_w_fence__opc_orw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence w, orw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000111000100000000000000001111;
// i_fence(opc_fence,opc_w_fence,opc_orw_fence)
}

def i_fence__opc_fence__opc_w_fence__opc_ow_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence w, ow";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000101000100000000000000001111;
// i_fence(opc_fence,opc_w_fence,opc_ow_fence)
}

def i_fence__opc_fence__opc_w_fence__opc_r_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence w, r";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000010000100000000000000001111;
// i_fence(opc_fence,opc_w_fence,opc_r_fence)
}

def i_fence__opc_fence__opc_w_fence__opc_rw_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence w, rw";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000011000100000000000000001111;
// i_fence(opc_fence,opc_w_fence,opc_rw_fence)
}

def i_fence__opc_fence__opc_w_fence__opc_w_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence w, w";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000001000100000000000000001111;
// i_fence(opc_fence,opc_w_fence,opc_w_fence)
}

def i_fencei__opc_fencei__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence.i";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00000000000000000001000000001111;
// i_fencei(opc_fencei)
}

def i_nop_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "nop";
let Pattern = [];
let Size = 4;
let mayLoad = 0;
let mayStore = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000010011;
// i_nop_alias
}

def i_ori_emulation_alias__regs__reg0__simm12_simple__: CodasipMicroClass_<(outs regs:$op0), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let AsmString = "or $op0, x0, $op1 & 0xfff";
let Pattern = [(set i32:$op0, (i32 sext12To32imm:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ori_emulation_alias(regs,reg0,simm12_simple)
}

def i_ori_emulation_alias__regs__regs__simm12_simple__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
let AsmString = "or $op0, $op1, $op2 & 0xfff";
let Pattern = [(set i32:$op0, (i32 (or (i32 CheckFI_i32_regs:$op1), (i32 sext12To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ori_emulation_alias(regs,regs,simm12_simple)
}

def i_xret__opc_mret__: CodasipMicroClass_<(outs), (ins variable_ops)>
{
let AsmString = "mret";
let Pattern = [(MRet)];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let Inst{31-0} = 0b00110000001000000000000001110011;
// i_xret(opc_mret)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__AEXT_CLONE_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
//let Pattern = [(set i32:$op0, (i32 (anyext (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 2))), (i16 (load_a1_s0 (i32 2))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 0))), (i16 (load_a1_s0 (i32 0))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 4))), (i16 (load_a1_s0 (i32 4))))), (i16 8)))))))), (store_a1_s0 (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 2))), (i16 (load_a1_s0 (i32 2))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 0))), (i16 (load_a1_s0 (i32 0))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 4))), (i16 (load_a1_s0 (i32 4))))), (i16 8))))), (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 6))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_c,regs,reg0,reg0)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__AEXT_CLONE_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
//let Pattern = [(set i32:$op0, (i32 (anyext (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 2))))), (i16 (load_a1_s0 (i32 2))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op1))), (i16 (load_a1_s0 (i32 0))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 4))))), (i16 (load_a1_s0 (i32 4))))), (i16 8)))))))), (store_a1_s0 (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 2))))), (i16 (load_a1_s0 (i32 2))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op1))), (i16 (load_a1_s0 (i32 0))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 4))))), (i16 (load_a1_s0 (i32 4))))), (i16 8))))), (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 6))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_c,regs,reg0,regs)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__AEXT_CLONE_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
//let Pattern = [(set i32:$op0, (i32 (anyext (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 2))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 2))))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 0))), (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op1))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 4))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 4))))))), (i16 8)))))))), (store_a1_s0 (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 2))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 2))))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 0))), (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op1))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 4))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 4))))))), (i16 8))))), (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 6))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_c,regs,regs,reg0)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__AEXT_CLONE_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2, regs:$op3)>
{
//let Pattern = [(set i32:$op0, (i32 (anyext (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 2))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 2))))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op1))), (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op2))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 4))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 4))))))), (i16 8)))))))), (store_a1_s0 (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 2))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 2))))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op1))), (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op2))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 4))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 4))))))), (i16 8))))), (i32 (add (i32 CheckFI_i32_regs:$op3), (i32 6))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_c,regs,regs,regs)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__AEXT_CLONE_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
//let Pattern = [(set i32:$op0, (i32 (add (i32 (add (i32 (add (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 (anyext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 0))), (i16 (load_a1_s0 (i32 0))))), (i16 8))))))), (i32 (anyext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 2))), (i16 (load_a1_s0 (i32 2))))), (i16 8))))))), (i32 (anyext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 4))), (i16 (load_a1_s0 (i32 4))))), (i16 8))))))), (i32 (anyext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 6))), (i16 (load_a1_s0 (i32 6))))), (i16 8))))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_d,regs,reg0,reg0)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__regs__AEXT_CLONE_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
//let Pattern = [(set i32:$op0, (i32 (add (i32 (add (i32 (add (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 (anyext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op2))), (i16 (load_a1_s0 (i32 0))))), (i16 8))))))), (i32 (anyext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 2))))), (i16 (load_a1_s0 (i32 2))))), (i16 8))))))), (i32 (anyext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 4))))), (i16 (load_a1_s0 (i32 4))))), (i16 8))))))), (i32 (anyext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 6))))), (i16 (load_a1_s0 (i32 6))))), (i16 8))))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_d,regs,reg0,regs)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0__AEXT_CLONE_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
//let Pattern = [(set i32:$op0, (i32 (add (i32 (add (i32 (add (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 (anyext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 0))), (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op2))))), (i16 8))))))), (i32 (anyext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 2))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 2))))))), (i16 8))))))), (i32 (anyext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 4))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 4))))))), (i16 8))))))), (i32 (anyext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 6))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 6))))))), (i16 8))))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_d,regs,regs,reg0)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_d__regs__regs__regs__AEXT_CLONE_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2, regs:$op3)>
{
//let Pattern = [(set i32:$op0, (i32 (add (i32 (add (i32 (add (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 (anyext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op2))), (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op3))))), (i16 8))))))), (i32 (anyext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 2))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op3), (i32 2))))))), (i16 8))))))), (i32 (anyext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 4))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op3), (i32 4))))))), (i16 8))))))), (i32 (anyext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 6))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op3), (i32 6))))))), (i16 8))))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_d,regs,regs,regs)
}

def e_movi32__: CodasipMicroClass_<(outs regs:$op0), (ins i32imm:$op1)>
{
let Pattern = [(set i32:$op0, (i32 imm:$op1))];
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// 
}
def e_movi32__GA: CodasipMicroClass_<(outs regs:$op0), (ins i32imm:$op1)>
{
let Pattern = [(set i32:$op0, (i32 (GAWrap (i32 tglobaladdr:$op1))))];
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// 
}
def e_movi32__ES: CodasipMicroClass_<(outs regs:$op0), (ins i32imm:$op1)>
{
let Pattern = [(set i32:$op0, (i32 (GAWrap (i32 texternalsym:$op1))))];
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// 
}
def e_movi32__MC: CodasipMicroClass_<(outs regs:$op0), (ins i32imm:$op1)>
{
let Pattern = [(set i32:$op0, (i32 (GAWrap (i32 mcsym:$op1))))];
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// 
}
def e_movi32__BA: CodasipMicroClass_<(outs regs:$op0), (ins i32imm:$op1)>
{
let Pattern = [(set i32:$op0, (i32 (GAWrap (i32 tblockaddress:$op1))))];
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// 
}
def e_movi32__JT: CodasipMicroClass_<(outs regs:$op0), (ins i32imm:$op1)>
{
let Pattern = [(set i32:$op0, (i32 (GAWrap (i32 tjumptable:$op1))))];
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// 
}
def e_movi32__CP: CodasipMicroClass_<(outs regs:$op0), (ins i32imm:$op1)>
{
let Pattern = [(set i32:$op0, (i32 (GAWrap (i32 tconstpool:$op1))))];
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// 
}

def i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2, regs:$op3)>
{
let AsmString = "hackaton_custom_instr_b $op0, $op2, $op1";
let Pattern = [(set i32:$op0, (i32 (add (i32 (sra (i32 (mul (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2))), (i32 8))), (i32 NotFI_i32_regs:$op3))))];
let Constraints = "$op3 = $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
bits<5> op0;
bits<5> op2;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op2;
let Inst{14-12} = 0b001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_b,regs,regs,regs)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "hackaton_custom_instr_c $op0, x0, x0";
//let Pattern = [(set i32:$op0, (i32 (sext (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 2))), (i16 (load_a1_s0 (i32 2))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 0))), (i16 (load_a1_s0 (i32 0))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 4))), (i16 (load_a1_s0 (i32 4))))), (i16 8)))))))), (store_a1_s0 (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 2))), (i16 (load_a1_s0 (i32 2))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 0))), (i16 (load_a1_s0 (i32 0))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 4))), (i16 (load_a1_s0 (i32 4))))), (i16 8))))), (i32 (add (i32 NotFI_i32_regs:$op1), (i32 6))))];
let Constraints = "$op1 = $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_c,regs,reg0,reg0)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let AsmString = "hackaton_custom_instr_c $op0, x0, $op1";
//let Pattern = [(set i32:$op0, (i32 (sext (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 2))))), (i16 (load_a1_s0 (i32 2))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op1))), (i16 (load_a1_s0 (i32 0))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 4))))), (i16 (load_a1_s0 (i32 4))))), (i16 8)))))))), (store_a1_s0 (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 2))))), (i16 (load_a1_s0 (i32 2))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op1))), (i16 (load_a1_s0 (i32 0))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 4))))), (i16 (load_a1_s0 (i32 4))))), (i16 8))))), (i32 (add (i32 NotFI_i32_regs:$op2), (i32 6))))];
let Constraints = "$op2 = $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_c,regs,reg0,regs)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let AsmString = "hackaton_custom_instr_c $op0, $op1, x0";
//let Pattern = [(set i32:$op0, (i32 (sext (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 2))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 2))))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 0))), (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op1))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 4))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 4))))))), (i16 8)))))))), (store_a1_s0 (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 2))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 2))))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 0))), (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op1))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 4))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 4))))))), (i16 8))))), (i32 (add (i32 NotFI_i32_regs:$op2), (i32 6))))];
let Constraints = "$op2 = $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_c,regs,regs,reg0)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2, regs:$op3)>
{
let AsmString = "hackaton_custom_instr_c $op0, $op2, $op1";
//let Pattern = [(set i32:$op0, (i32 (sext (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 2))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 2))))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op1))), (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op2))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 4))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 4))))))), (i16 8)))))))), (store_a1_s0 (i16 (add (i16 (add (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 2))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 2))))))), (i16 8))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op1))), (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op2))))), (i16 8))))), (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 4))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 4))))))), (i16 8))))), (i32 (add (i32 NotFI_i32_regs:$op3), (i32 6))))];
let Constraints = "$op3 = $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op2;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op2;
let Inst{14-12} = 0b010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_c,regs,regs,regs)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "hackaton_custom_instr_d $op0, x0, x0";
//let Pattern = [(set i32:$op0, (i32 (add (i32 (add (i32 (add (i32 (add (i32 NotFI_i32_regs:$op1), (i32 (sext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 0))), (i16 (load_a1_s0 (i32 0))))), (i16 8))))))), (i32 (sext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 2))), (i16 (load_a1_s0 (i32 2))))), (i16 8))))))), (i32 (sext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 4))), (i16 (load_a1_s0 (i32 4))))), (i16 8))))))), (i32 (sext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 6))), (i16 (load_a1_s0 (i32 6))))), (i16 8))))))))];
let Constraints = "$op1 = $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_d,regs,reg0,reg0)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let AsmString = "hackaton_custom_instr_d $op0, x0, $op2";
//let Pattern = [(set i32:$op0, (i32 (add (i32 (add (i32 (add (i32 (add (i32 NotFI_i32_regs:$op1), (i32 (sext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op2))), (i16 (load_a1_s0 (i32 0))))), (i16 8))))))), (i32 (sext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 2))))), (i16 (load_a1_s0 (i32 2))))), (i16 8))))))), (i32 (sext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 4))))), (i16 (load_a1_s0 (i32 4))))), (i16 8))))))), (i32 (sext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 6))))), (i16 (load_a1_s0 (i32 6))))), (i16 8))))))))];
let Constraints = "$op1 = $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op2;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op2;
let Inst{19-12} = 0b00000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_d,regs,reg0,regs)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let AsmString = "hackaton_custom_instr_d $op0, $op2, x0";
//let Pattern = [(set i32:$op0, (i32 (add (i32 (add (i32 (add (i32 (add (i32 NotFI_i32_regs:$op1), (i32 (sext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 0))), (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op2))))), (i16 8))))))), (i32 (sext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 2))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 2))))))), (i16 8))))))), (i32 (sext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 4))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 4))))))), (i16 8))))))), (i32 (sext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 6))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 6))))))), (i16 8))))))))];
let Constraints = "$op1 = $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op2;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op2;
let Inst{14-12} = 0b011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_d,regs,regs,reg0)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_d__regs__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2, regs:$op3)>
{
let AsmString = "hackaton_custom_instr_d $op0, $op3, $op2";
//let Pattern = [(set i32:$op0, (i32 (add (i32 (add (i32 (add (i32 (add (i32 NotFI_i32_regs:$op1), (i32 (sext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op2))), (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op3))))), (i16 8))))))), (i32 (sext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 2))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op3), (i32 2))))))), (i16 8))))))), (i32 (sext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 4))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op3), (i32 4))))))), (i16 8))))))), (i32 (sext (i16 (sra (i16 (mul (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 6))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op3), (i32 6))))))), (i16 8))))))))];
let Constraints = "$op1 = $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op3;
bits<5> op2;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op2;
let Inst{19-15} = op3;
let Inst{14-12} = 0b011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_d,regs,regs,regs)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_f__regs__reg0__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let AsmString = "hackaton_custom_instr_f $op0, x0, x0";
//let Pattern = [(set i32:$op0, (i32 NotFI_i32_regs:$op1)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 0))), (i16 (load_a1_s0 (i32 0))))), (i32 NotFI_i32_regs:$op1)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 2))), (i16 (load_a1_s0 (i32 2))))), (i32 (add (i32 NotFI_i32_regs:$op1), (i32 2)))), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 4))), (i16 (load_a1_s0 (i32 4))))), (i32 (add (i32 NotFI_i32_regs:$op1), (i32 4)))), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 6))), (i16 (load_a1_s0 (i32 6))))), (i32 (add (i32 NotFI_i32_regs:$op1), (i32 6))))];
let Constraints = "$op1 = $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_f,regs,reg0,reg0)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_f__regs__reg0__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let AsmString = "hackaton_custom_instr_f $op0, x0, $op2";
//let Pattern = [(set i32:$op0, (i32 NotFI_i32_regs:$op1)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op2))), (i16 (load_a1_s0 (i32 0))))), (i32 NotFI_i32_regs:$op1)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 2))))), (i16 (load_a1_s0 (i32 2))))), (i32 (add (i32 NotFI_i32_regs:$op1), (i32 2)))), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 4))))), (i16 (load_a1_s0 (i32 4))))), (i32 (add (i32 NotFI_i32_regs:$op1), (i32 4)))), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 6))))), (i16 (load_a1_s0 (i32 6))))), (i32 (add (i32 NotFI_i32_regs:$op1), (i32 6))))];
let Constraints = "$op1 = $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op2;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op2;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_f,regs,reg0,regs)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_f__regs__regs__reg0__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let AsmString = "hackaton_custom_instr_f $op0, $op2, x0";
//let Pattern = [(set i32:$op0, (i32 NotFI_i32_regs:$op1)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 0))), (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op2))))), (i32 NotFI_i32_regs:$op1)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 2))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 2))))))), (i32 (add (i32 NotFI_i32_regs:$op1), (i32 2)))), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 4))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 4))))))), (i32 (add (i32 NotFI_i32_regs:$op1), (i32 4)))), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 6))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 6))))))), (i32 (add (i32 NotFI_i32_regs:$op1), (i32 6))))];
let Constraints = "$op1 = $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op2;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op2;
let Inst{14-12} = 0b101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_f,regs,regs,reg0)
}

// warning: (BGW546): The instruction contains unsupported data types ('i16') even after the high-level analysis.
def i_ext_hackaton__opc_hackaton_custom_f__regs__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2, regs:$op3)>
{
let AsmString = "hackaton_custom_instr_f $op0, $op3, $op2";
//let Pattern = [(set i32:$op0, (i32 NotFI_i32_regs:$op1)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op2))), (i16 (load_a1_s0 (i32 CheckFI_i32_regs:$op3))))), (i32 NotFI_i32_regs:$op1)), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 2))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op3), (i32 2))))))), (i32 (add (i32 NotFI_i32_regs:$op1), (i32 2)))), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 4))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op3), (i32 4))))))), (i32 (add (i32 NotFI_i32_regs:$op1), (i32 4)))), (store_a1_s0 (i16 (add (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op2), (i32 6))))), (i16 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op3), (i32 6))))))), (i32 (add (i32 NotFI_i32_regs:$op1), (i32 6))))];
let Constraints = "$op1 = $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op3;
bits<5> op2;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op2;
let Inst{19-15} = op3;
let Inst{14-12} = 0b101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_f,regs,regs,regs)
}

def i_jump_reg_alias__regs__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins regs:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 CheckFI_i32_regs:$op0))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 2;
// i_jump_reg_alias(regs)
}

def i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 2;
// i_jmp_rel_alias(rel_addr20)
}
def i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ES: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 texternalsym:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 2;
// i_jmp_rel_alias(rel_addr20)
}
def i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_MC: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 mcsym:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 2;
// i_jmp_rel_alias(rel_addr20)
}
def i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_BA: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 2;
// i_jmp_rel_alias(rel_addr20)
}

def i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_jal_abs(opc_jal,reg0,rel_addr20)
}
def i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 texternalsym:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_jal_abs(opc_jal,reg0,rel_addr20)
}
def i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 mcsym:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_jal_abs(opc_jal,reg0,rel_addr20)
}
def i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_jal_abs(opc_jal,reg0,rel_addr20)
}

def i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_control_conditional(opc_beq,reg0,reg0,rel_addr12)
}
def i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 texternalsym:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_control_conditional(opc_beq,reg0,reg0,rel_addr12)
}
def i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 mcsym:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_control_conditional(opc_beq,reg0,reg0,rel_addr12)
}
def i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_control_conditional(opc_beq,reg0,reg0,rel_addr12)
}

def i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_control_conditional(opc_bge,reg0,reg0,rel_addr12)
}
def i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 texternalsym:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_control_conditional(opc_bge,reg0,reg0,rel_addr12)
}
def i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 mcsym:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_control_conditional(opc_bge,reg0,reg0,rel_addr12)
}
def i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_control_conditional(opc_bge,reg0,reg0,rel_addr12)
}

def i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_control_conditional(opc_bgeu,reg0,reg0,rel_addr12)
}
def i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 texternalsym:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_control_conditional(opc_bgeu,reg0,reg0,rel_addr12)
}
def i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 mcsym:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_control_conditional(opc_bgeu,reg0,reg0,rel_addr12)
}
def i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_control_conditional(opc_bgeu,reg0,reg0,rel_addr12)
}

def i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_jalr(opc_jalr,reg0,reg0,simm12_simple)
}
def i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ES: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 texternalsym:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_jalr(opc_jalr,reg0,reg0,simm12_simple)
}
def i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_MC: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 mcsym:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_jalr(opc_jalr,reg0,reg0,simm12_simple)
}
def i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_BA: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_jalr(opc_jalr,reg0,reg0,simm12_simple)
}

def i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
// i_jal(opc_jal,reg0,rel_addr20)
}
def i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 texternalsym:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
// i_jal(opc_jal,reg0,rel_addr20)
}
def i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 mcsym:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
// i_jal(opc_jal,reg0,rel_addr20)
}
def i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_i32:$op0, variable_ops)>
{
let Pattern = [(TailCall (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
// i_jal(opc_jal,reg0,rel_addr20)
}

def i_store__opc_storeb__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_: CodasipMicroClass_sc_stores<(outs), (ins MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_i32:$op0)>
{
let Pattern = [(truncstorei8_a1_s0 (i32 0), (i32 sext12To32imm:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_store(opc_storeb,reg0,simm12_simple,reg0)
}

def i_store__opc_storeb__reg0__simm12_simple__regs__i32_TRUNC_CLONE_: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_i32:$op1)>
{
let Pattern = [(truncstorei8_a1_s0 (i32 0), (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_store(opc_storeb,reg0,simm12_simple,regs)
}

def i_store__opc_storeh__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_: CodasipMicroClass_sc_stores<(outs), (ins MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_i32:$op0)>
{
let Pattern = [(truncstorei16_a1_s0 (i32 0), (i32 sext12To32imm:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_store(opc_storeh,reg0,simm12_simple,reg0)
}

def i_store__opc_storeh__reg0__simm12_simple__regs__i32_TRUNC_CLONE_: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_i32:$op1)>
{
let Pattern = [(truncstorei16_a1_s0 (i32 0), (i32 (add (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_store(opc_storeh,reg0,simm12_simple,regs)
}

def i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0)>
{
let Pattern = [(truncstorei8_a1_s0 (i32 0), (i32 CheckFI_i32_regs:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0)>
{
let Pattern = [(truncstorei16_a1_s0 (i32 0), (i32 CheckFI_i32_regs:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// 
}

def i_jump_reg_alias__regs___RET_EMUL_: CodasipMicroClass_<(outs), (ins variable_ops)>
{
let Pattern = [(Return)];
let Size = 4;
let hasExtraSrcRegAllocReq = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let isCodeGenOnly = 1;
let AddedComplexity = 2;
// i_jump_reg_alias(regs)
}

def i_store__opc_storew__regs__simm12_simple__regs__0_REG_EMUL_: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, regs:$op1, regs:$op2)>
{
//let Pattern = [(store_a1_s0 (i32 CheckFI_i32_regs:$op0), (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2))))];
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_store(opc_storew,regs,simm12_simple,regs)
}

def i_store__opc_storew__regs__simm12_simple__regs__1_BIGIMM_EMUL_: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, regs:$op1, MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_i32:$op2)>
{
//let Pattern = [(store_a1_s0 (i32 CheckFI_i32_regs:$op0), (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 imm:$op2))))];
let Size = 16;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_store(opc_storew,regs,simm12_simple,regs)
}

def i_load__opc_loadw__regs__simm12_simple__regs__2_REG_EMUL_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
//let Pattern = [(set i32:$op0, (i32 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2))))))];
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_load(opc_loadw,regs,simm12_simple,regs)
}

def i_load__opc_loadw__regs__simm12_simple__regs__3_BIGIMM_EMUL_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
//let Pattern = [(set i32:$op0, (i32 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 imm:$op2))))))];
let Size = 16;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_load(opc_loadw,regs,simm12_simple,regs)
}

def i_store__opc_storew__regs__simm12_simple__regs__4_BIGIMM_EMUL_: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, regs:$op1, MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_i32:$op2)>
{
//let Pattern = [(store_a1_s0 (i32 CheckFI_i32_regs:$op0), (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 imm:$op2))))];
let Size = 16;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_store(opc_storew,regs,simm12_simple,regs)
}

def i_load__opc_loadw__regs__simm12_simple__regs__5_BIGIMM_EMUL_: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
//let Pattern = [(set i32:$op0, (i32 (load_a1_s0 (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 imm:$op2))))))];
let Size = 16;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_load(opc_loadw,regs,simm12_simple,regs)
}

def i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__6_BIGIMM_EMUL_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
//let Pattern = [(set i32:$op0, (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 imm:$op2))))];
let Size = 12;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_comp_2reg_imm(opc_addi,regs,regs,simm12_simple)
}

def i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__7_BIGIMM_EMUL_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
//let Pattern = [(set i32:$op0, (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 imm:$op2))))];
let Size = 12;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_comp_2reg_imm(opc_addi,regs,regs,simm12_simple)
}

def i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__8_BIGIMM_EMUL_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
//let Pattern = [(set i32:$op0, (i32 (add (i32 CheckFI_i32_regs:$op1), (i32 imm:$op2))))];
let Size = 12;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
let AddedComplexity = 1;
// i_comp_2reg_imm(opc_addi,regs,regs,simm12_simple)
}

def c_addi_lo__opc_addi__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI3immIH1_10start_base1_9c_addi_lo_i32:$op2)>
{
let AsmString = "add $op0, $op1, %lo( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
// c_addi_lo(opc_addi,regs,regs)
}

def c_lui_hi__opc_lui__regs__: CodasipMicroClass_<(outs regs:$op0), (ins MI3immIH1_10start_base1_8c_lui_hi_i32:$op1)>
{
let AsmString = "lui $op0, %hi( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
// c_lui_hi(opc_lui,regs)
}

def i_addi_alias__reg0__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "addi x0, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_addi_alias(reg0,reg0,simm12_lo)
}

def i_addi_alias__reg0__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "addi x0, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_addi_alias(reg0,reg0,simm12_pcrel_lo)
}

def i_addi_alias__reg0__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "addi x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_addi_alias(reg0,reg0,simm12_simple)
}

def i_addi_alias__reg0__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "addi x0, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_addi_alias(reg0,reg0_alias,simm12_lo)
}

def i_addi_alias__reg0__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "addi x0, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_addi_alias(reg0,reg0_alias,simm12_pcrel_lo)
}

def i_addi_alias__reg0__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "addi x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_addi_alias(reg0,reg0_alias,simm12_simple)
}

def i_addi_alias__reg0__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "addi x0, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000010011;
// i_addi_alias(reg0,regs,simm12_lo)
}

def i_addi_alias__reg0__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "addi x0, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000010011;
// i_addi_alias(reg0,regs,simm12_pcrel_lo)
}

def i_addi_alias__reg0__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "addi x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000010011;
// i_addi_alias(reg0,regs,simm12_simple)
}

def i_addi_alias__reg0_alias__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "addi zero, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_addi_alias(reg0_alias,reg0,simm12_lo)
}

def i_addi_alias__reg0_alias__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "addi zero, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_addi_alias(reg0_alias,reg0,simm12_pcrel_lo)
}

def i_addi_alias__reg0_alias__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "addi zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_addi_alias(reg0_alias,reg0,simm12_simple)
}

def i_addi_alias__reg0_alias__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "addi zero, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_addi_alias(reg0_alias,reg0_alias,simm12_lo)
}

def i_addi_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "addi zero, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_addi_alias(reg0_alias,reg0_alias,simm12_pcrel_lo)
}

def i_addi_alias__reg0_alias__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "addi zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_addi_alias(reg0_alias,reg0_alias,simm12_simple)
}

def i_addi_alias__reg0_alias__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "addi zero, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000010011;
// i_addi_alias(reg0_alias,regs,simm12_lo)
}

def i_addi_alias__reg0_alias__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "addi zero, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000010011;
// i_addi_alias(reg0_alias,regs,simm12_pcrel_lo)
}

def i_addi_alias__reg0_alias__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "addi zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000010011;
// i_addi_alias(reg0_alias,regs,simm12_simple)
}

def i_addi_alias__regs__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "addi $op0, x0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_addi_alias(regs,reg0,simm12_lo)
}

def i_addi_alias__regs__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "addi $op0, x0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_addi_alias(regs,reg0,simm12_pcrel_lo)
}

def i_addi_alias__regs__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "addi $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_addi_alias(regs,reg0,simm12_simple)
}

def i_addi_alias__regs__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "addi $op0, zero, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_addi_alias(regs,reg0_alias,simm12_lo)
}

def i_addi_alias__regs__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "addi $op0, zero, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_addi_alias(regs,reg0_alias,simm12_pcrel_lo)
}

def i_addi_alias__regs__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "addi $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_addi_alias(regs,reg0_alias,simm12_simple)
}

def i_addi_alias__regs__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op2)>
{
let AsmString = "addi $op0, $op1, %lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_addi_alias(regs,regs,simm12_lo)
}

def i_addi_alias__regs__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op2)>
{
let AsmString = "addi $op0, $op1, %pcrel_lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_addi_alias(regs,regs,simm12_pcrel_lo)
}

def i_addi_alias__regs__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op2)>
{
let AsmString = "addi $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_addi_alias(regs,regs,simm12_simple)
}

def i_andi_alias__reg0__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "andi x0, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_andi_alias(reg0,reg0,simm12_lo)
}

def i_andi_alias__reg0__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "andi x0, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_andi_alias(reg0,reg0,simm12_pcrel_lo)
}

def i_andi_alias__reg0__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "andi x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_andi_alias(reg0,reg0,simm12_simple)
}

def i_andi_alias__reg0__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "andi x0, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_andi_alias(reg0,reg0_alias,simm12_lo)
}

def i_andi_alias__reg0__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "andi x0, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_andi_alias(reg0,reg0_alias,simm12_pcrel_lo)
}

def i_andi_alias__reg0__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "andi x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_andi_alias(reg0,reg0_alias,simm12_simple)
}

def i_andi_alias__reg0__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "andi x0, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000000010011;
// i_andi_alias(reg0,regs,simm12_lo)
}

def i_andi_alias__reg0__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "andi x0, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000000010011;
// i_andi_alias(reg0,regs,simm12_pcrel_lo)
}

def i_andi_alias__reg0__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "andi x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000000010011;
// i_andi_alias(reg0,regs,simm12_simple)
}

def i_andi_alias__reg0_alias__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "andi zero, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_andi_alias(reg0_alias,reg0,simm12_lo)
}

def i_andi_alias__reg0_alias__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "andi zero, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_andi_alias(reg0_alias,reg0,simm12_pcrel_lo)
}

def i_andi_alias__reg0_alias__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "andi zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_andi_alias(reg0_alias,reg0,simm12_simple)
}

def i_andi_alias__reg0_alias__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "andi zero, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_andi_alias(reg0_alias,reg0_alias,simm12_lo)
}

def i_andi_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "andi zero, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_andi_alias(reg0_alias,reg0_alias,simm12_pcrel_lo)
}

def i_andi_alias__reg0_alias__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "andi zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_andi_alias(reg0_alias,reg0_alias,simm12_simple)
}

def i_andi_alias__reg0_alias__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "andi zero, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000000010011;
// i_andi_alias(reg0_alias,regs,simm12_lo)
}

def i_andi_alias__reg0_alias__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "andi zero, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000000010011;
// i_andi_alias(reg0_alias,regs,simm12_pcrel_lo)
}

def i_andi_alias__reg0_alias__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "andi zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000000010011;
// i_andi_alias(reg0_alias,regs,simm12_simple)
}

def i_andi_alias__regs__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "andi $op0, x0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_andi_alias(regs,reg0,simm12_lo)
}

def i_andi_alias__regs__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "andi $op0, x0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_andi_alias(regs,reg0,simm12_pcrel_lo)
}

def i_andi_alias__regs__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "andi $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_andi_alias(regs,reg0,simm12_simple)
}

def i_andi_alias__regs__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "andi $op0, zero, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_andi_alias(regs,reg0_alias,simm12_lo)
}

def i_andi_alias__regs__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "andi $op0, zero, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_andi_alias(regs,reg0_alias,simm12_pcrel_lo)
}

def i_andi_alias__regs__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "andi $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_andi_alias(regs,reg0_alias,simm12_simple)
}

def i_andi_alias__regs__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op2)>
{
let AsmString = "andi $op0, $op1, %lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_andi_alias(regs,regs,simm12_lo)
}

def i_andi_alias__regs__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op2)>
{
let AsmString = "andi $op0, $op1, %pcrel_lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_andi_alias(regs,regs,simm12_pcrel_lo)
}

def i_andi_alias__regs__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op2)>
{
let AsmString = "andi $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_andi_alias(regs,regs,simm12_simple)
}

def i_auipc__opc_auipc__reg0_alias__imm20_s12__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12_iAny:$op0)>
{
let AsmString = "auipc zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<20> op0;
let Inst{31-12} = op0;
let Inst{11-0} = 0b000000010111;
// i_auipc(opc_auipc,reg0_alias,imm20_s12)
}

def i_auipc_hi__opc_auipc__reg0__imm20_hi__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base14_11imm20_reloc3imm1_8imm20_hi_iAny:$op0)>
{
let AsmString = "auipc x0, %hi ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<20> op0;
let Inst{31-12} = op0;
let Inst{11-0} = 0b000000010111;
// i_auipc_hi(opc_auipc,reg0,imm20_hi)
}

def i_auipc_hi__opc_auipc__reg0__imm20_pcrel_hi__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base14_11imm20_reloc3imm1_14imm20_pcrel_hi_iAny:$op0)>
{
let AsmString = "auipc x0, %pcrel_hi ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<20> op0;
let Inst{31-12} = op0;
let Inst{11-0} = 0b000000010111;
// i_auipc_hi(opc_auipc,reg0,imm20_pcrel_hi)
}

def i_auipc_hi__opc_auipc__reg0_alias__imm20_hi__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base14_11imm20_reloc3imm1_8imm20_hi_iAny:$op0)>
{
let AsmString = "auipc zero, %hi ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<20> op0;
let Inst{31-12} = op0;
let Inst{11-0} = 0b000000010111;
// i_auipc_hi(opc_auipc,reg0_alias,imm20_hi)
}

def i_auipc_hi__opc_auipc__reg0_alias__imm20_pcrel_hi__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base14_11imm20_reloc3imm1_14imm20_pcrel_hi_iAny:$op0)>
{
let AsmString = "auipc zero, %pcrel_hi ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<20> op0;
let Inst{31-12} = op0;
let Inst{11-0} = 0b000000010111;
// i_auipc_hi(opc_auipc,reg0_alias,imm20_pcrel_hi)
}

def i_auipc_hi__opc_auipc__regs__imm20_hi__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base14_11imm20_reloc3imm1_8imm20_hi_iAny:$op1)>
{
let AsmString = "auipc $op0, %hi ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<20> op1;
let Inst{31-12} = op1;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010111;
// i_auipc_hi(opc_auipc,regs,imm20_hi)
}

def i_auipc_hi__opc_auipc__regs__imm20_pcrel_hi__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base14_11imm20_reloc3imm1_14imm20_pcrel_hi_iAny:$op1)>
{
let AsmString = "auipc $op0, %pcrel_hi ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<20> op1;
let Inst{31-12} = op1;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010111;
// i_auipc_hi(opc_auipc,regs,imm20_pcrel_hi)
}

def i_beqz_alias__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "beqz x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000000;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_beqz_alias(reg0,rel_addr12)
}

def i_beqz_alias__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "beqz zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000000;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_beqz_alias(reg0_alias,rel_addr12)
}

def i_beqz_alias__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "beqz $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b000;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_beqz_alias(regs,rel_addr12)
}

def i_bgez_alias__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bgez x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000101;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bgez_alias(reg0,rel_addr12)
}

def i_bgez_alias__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bgez zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000101;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bgez_alias(reg0_alias,rel_addr12)
}

def i_bgez_alias__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bgez $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b101;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_bgez_alias(regs,rel_addr12)
}

def i_bgt_alias__reg0__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bgt x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000100;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bgt_alias(reg0,reg0,rel_addr12)
}

def i_bgt_alias__reg0__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bgt x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000100;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bgt_alias(reg0,reg0_alias,rel_addr12)
}

def i_bgt_alias__reg0__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bgt x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b100;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_bgt_alias(reg0,regs,rel_addr12)
}

def i_bgt_alias__reg0_alias__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bgt zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000100;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bgt_alias(reg0_alias,reg0,rel_addr12)
}

def i_bgt_alias__reg0_alias__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bgt zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000100;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bgt_alias(reg0_alias,reg0_alias,rel_addr12)
}

def i_bgt_alias__reg0_alias__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bgt zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b100;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_bgt_alias(reg0_alias,regs,rel_addr12)
}

def i_bgt_alias__regs__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bgt $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000100;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_bgt_alias(regs,reg0,rel_addr12)
}

def i_bgt_alias__regs__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bgt $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000100;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_bgt_alias(regs,reg0_alias,rel_addr12)
}

def i_bgt_alias__regs__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op2)>
{
let AsmString = "bgt $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31} = op2{11-11};
let Inst{30-25} = op2{9-4};
let Inst{24-20} = op0;
let Inst{19-15} = op1;
let Inst{14-12} = 0b100;
let Inst{11-8} = op2{3-0};
let Inst{7} = op2{10-10};
let Inst{6-0} = 0b1100011;
// i_bgt_alias(regs,regs,rel_addr12)
}

def i_bgtu_alias__reg0__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bgtu x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000110;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bgtu_alias(reg0,reg0,rel_addr12)
}

def i_bgtu_alias__reg0__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bgtu x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000110;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bgtu_alias(reg0,reg0_alias,rel_addr12)
}

def i_bgtu_alias__reg0__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bgtu x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b110;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_bgtu_alias(reg0,regs,rel_addr12)
}

def i_bgtu_alias__reg0_alias__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bgtu zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000110;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bgtu_alias(reg0_alias,reg0,rel_addr12)
}

def i_bgtu_alias__reg0_alias__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bgtu zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000110;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bgtu_alias(reg0_alias,reg0_alias,rel_addr12)
}

def i_bgtu_alias__reg0_alias__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bgtu zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b110;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_bgtu_alias(reg0_alias,regs,rel_addr12)
}

def i_bgtu_alias__regs__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bgtu $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000110;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_bgtu_alias(regs,reg0,rel_addr12)
}

def i_bgtu_alias__regs__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bgtu $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000110;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_bgtu_alias(regs,reg0_alias,rel_addr12)
}

def i_bgtu_alias__regs__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op2)>
{
let AsmString = "bgtu $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31} = op2{11-11};
let Inst{30-25} = op2{9-4};
let Inst{24-20} = op0;
let Inst{19-15} = op1;
let Inst{14-12} = 0b110;
let Inst{11-8} = op2{3-0};
let Inst{7} = op2{10-10};
let Inst{6-0} = 0b1100011;
// i_bgtu_alias(regs,regs,rel_addr12)
}

def i_bgtz_alias__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bgtz x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000100;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bgtz_alias(reg0,rel_addr12)
}

def i_bgtz_alias__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bgtz zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000100;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bgtz_alias(reg0_alias,rel_addr12)
}

def i_bgtz_alias__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bgtz $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000100;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_bgtz_alias(regs,rel_addr12)
}

def i_ble_alias__reg0__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "ble x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000101;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_ble_alias(reg0,reg0,rel_addr12)
}

def i_ble_alias__reg0__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "ble x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000101;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_ble_alias(reg0,reg0_alias,rel_addr12)
}

def i_ble_alias__reg0__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "ble x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b101;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_ble_alias(reg0,regs,rel_addr12)
}

def i_ble_alias__reg0_alias__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "ble zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000101;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_ble_alias(reg0_alias,reg0,rel_addr12)
}

def i_ble_alias__reg0_alias__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "ble zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000101;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_ble_alias(reg0_alias,reg0_alias,rel_addr12)
}

def i_ble_alias__reg0_alias__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "ble zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b101;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_ble_alias(reg0_alias,regs,rel_addr12)
}

def i_ble_alias__regs__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "ble $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000101;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_ble_alias(regs,reg0,rel_addr12)
}

def i_ble_alias__regs__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "ble $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000101;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_ble_alias(regs,reg0_alias,rel_addr12)
}

def i_ble_alias__regs__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op2)>
{
let AsmString = "ble $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31} = op2{11-11};
let Inst{30-25} = op2{9-4};
let Inst{24-20} = op0;
let Inst{19-15} = op1;
let Inst{14-12} = 0b101;
let Inst{11-8} = op2{3-0};
let Inst{7} = op2{10-10};
let Inst{6-0} = 0b1100011;
// i_ble_alias(regs,regs,rel_addr12)
}

def i_bleu_alias__reg0__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bleu x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000111;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bleu_alias(reg0,reg0,rel_addr12)
}

def i_bleu_alias__reg0__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bleu x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000111;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bleu_alias(reg0,reg0_alias,rel_addr12)
}

def i_bleu_alias__reg0__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bleu x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b111;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_bleu_alias(reg0,regs,rel_addr12)
}

def i_bleu_alias__reg0_alias__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bleu zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000111;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bleu_alias(reg0_alias,reg0,rel_addr12)
}

def i_bleu_alias__reg0_alias__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bleu zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000111;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bleu_alias(reg0_alias,reg0_alias,rel_addr12)
}

def i_bleu_alias__reg0_alias__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bleu zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b111;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_bleu_alias(reg0_alias,regs,rel_addr12)
}

def i_bleu_alias__regs__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bleu $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000111;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_bleu_alias(regs,reg0,rel_addr12)
}

def i_bleu_alias__regs__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bleu $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000111;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_bleu_alias(regs,reg0_alias,rel_addr12)
}

def i_bleu_alias__regs__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op2)>
{
let AsmString = "bleu $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31} = op2{11-11};
let Inst{30-25} = op2{9-4};
let Inst{24-20} = op0;
let Inst{19-15} = op1;
let Inst{14-12} = 0b111;
let Inst{11-8} = op2{3-0};
let Inst{7} = op2{10-10};
let Inst{6-0} = 0b1100011;
// i_bleu_alias(regs,regs,rel_addr12)
}

def i_blez_alias__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "blez x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000101;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_blez_alias(reg0,rel_addr12)
}

def i_blez_alias__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "blez zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000101;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_blez_alias(reg0_alias,rel_addr12)
}

def i_blez_alias__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "blez $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000101;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_blez_alias(regs,rel_addr12)
}

def i_bltz_alias__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bltz x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000100;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bltz_alias(reg0,rel_addr12)
}

def i_bltz_alias__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bltz zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000100;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bltz_alias(reg0_alias,rel_addr12)
}

def i_bltz_alias__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bltz $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b100;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_bltz_alias(regs,rel_addr12)
}

def i_bnez_alias__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bnez x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000001;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bnez_alias(reg0,rel_addr12)
}

def i_bnez_alias__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bnez zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000001;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_bnez_alias(reg0_alias,rel_addr12)
}

def i_bnez_alias__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bnez $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b001;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_bnez_alias(regs,rel_addr12)
}

def i_call_alias__rel_addr32_call_tail_simple__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple_iAny:$op0)>
{
let AsmString = "call $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-52} = op0{11-0};
let Inst{51-32} = 0b00001000000011100111;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000010010111;
// i_call_alias(rel_addr32_call_tail_simple)
}

def i_call_reg_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "call.reg zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000011100111;
// i_call_reg_alias(reg0_alias)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "add x0, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_comp_2reg_imm(opc_addi,reg0,reg0,simm12_lo)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "add x0, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_comp_2reg_imm(opc_addi,reg0,reg0,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "add x0, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_comp_2reg_imm(opc_addi,reg0,reg0_alias,simm12_lo)
}

def i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "add x0, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_comp_2reg_imm(opc_addi,reg0,reg0_alias,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "add x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_comp_2reg_imm(opc_addi,reg0,reg0_alias,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_addi__reg0__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "add x0, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000010011;
// i_comp_2reg_imm(opc_addi,reg0,regs,simm12_lo)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_addi__reg0__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "add x0, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000010011;
// i_comp_2reg_imm(opc_addi,reg0,regs,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "add zero, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_comp_2reg_imm(opc_addi,reg0_alias,reg0,simm12_lo)
}

def i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "add zero, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_comp_2reg_imm(opc_addi,reg0_alias,reg0,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "add zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_comp_2reg_imm(opc_addi,reg0_alias,reg0,simm12_simple)
}

def i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "add zero, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_comp_2reg_imm(opc_addi,reg0_alias,reg0_alias,simm12_lo)
}

def i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "add zero, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_comp_2reg_imm(opc_addi,reg0_alias,reg0_alias,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "add zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_comp_2reg_imm(opc_addi,reg0_alias,reg0_alias,simm12_simple)
}

def i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "add zero, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000010011;
// i_comp_2reg_imm(opc_addi,reg0_alias,regs,simm12_lo)
}

def i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "add zero, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000010011;
// i_comp_2reg_imm(opc_addi,reg0_alias,regs,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "add zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000010011;
// i_comp_2reg_imm(opc_addi,reg0_alias,regs,simm12_simple)
}

def i_comp_2reg_imm__opc_addi__regs__reg0__simm12_lo__: CodasipMicroClass_<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op1)>
{
let AsmString = "add $op0, x0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_addi,regs,reg0,simm12_lo)
}

def i_comp_2reg_imm__opc_addi__regs__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op1)>
{
let AsmString = "add $op0, x0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_addi,regs,reg0,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "add $op0, zero, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_addi,regs,reg0_alias,simm12_lo)
}

def i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "add $op0, zero, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_addi,regs,reg0_alias,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "add $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_addi,regs,reg0_alias,simm12_simple)
}

def i_comp_2reg_imm__opc_addi__regs__regs__simm12_lo__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op2)>
{
let AsmString = "add $op0, $op1, %lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_addi,regs,regs,simm12_lo)
}

def i_comp_2reg_imm__opc_addi__regs__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op2)>
{
let AsmString = "add $op0, $op1, %pcrel_lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_addi,regs,regs,simm12_pcrel_lo)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "and x0, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_comp_2reg_imm(opc_andi,reg0,reg0,simm12_lo)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "and x0, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_comp_2reg_imm(opc_andi,reg0,reg0,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "and x0, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_comp_2reg_imm(opc_andi,reg0,reg0_alias,simm12_lo)
}

def i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "and x0, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_comp_2reg_imm(opc_andi,reg0,reg0_alias,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "and x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_comp_2reg_imm(opc_andi,reg0,reg0_alias,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_andi__reg0__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "and x0, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000000010011;
// i_comp_2reg_imm(opc_andi,reg0,regs,simm12_lo)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_andi__reg0__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "and x0, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000000010011;
// i_comp_2reg_imm(opc_andi,reg0,regs,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "and zero, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_comp_2reg_imm(opc_andi,reg0_alias,reg0,simm12_lo)
}

def i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "and zero, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_comp_2reg_imm(opc_andi,reg0_alias,reg0,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "and zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_comp_2reg_imm(opc_andi,reg0_alias,reg0,simm12_simple)
}

def i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "and zero, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_comp_2reg_imm(opc_andi,reg0_alias,reg0_alias,simm12_lo)
}

def i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "and zero, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_comp_2reg_imm(opc_andi,reg0_alias,reg0_alias,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "and zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_comp_2reg_imm(opc_andi,reg0_alias,reg0_alias,simm12_simple)
}

def i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "and zero, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000000010011;
// i_comp_2reg_imm(opc_andi,reg0_alias,regs,simm12_lo)
}

def i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "and zero, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000000010011;
// i_comp_2reg_imm(opc_andi,reg0_alias,regs,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "and zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000000010011;
// i_comp_2reg_imm(opc_andi,reg0_alias,regs,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_andi__regs__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "and $op0, x0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_andi,regs,reg0,simm12_lo)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_andi__regs__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "and $op0, x0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_andi,regs,reg0,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "and $op0, zero, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_andi,regs,reg0_alias,simm12_lo)
}

def i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "and $op0, zero, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_andi,regs,reg0_alias,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "and $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_andi,regs,reg0_alias,simm12_simple)
}

def i_comp_2reg_imm__opc_andi__regs__regs__simm12_lo__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op2)>
{
let AsmString = "and $op0, $op1, %lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_andi,regs,regs,simm12_lo)
}

def i_comp_2reg_imm__opc_andi__regs__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op2)>
{
let AsmString = "and $op0, $op1, %pcrel_lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_andi,regs,regs,simm12_pcrel_lo)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "or x0, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_comp_2reg_imm(opc_ori,reg0,reg0,simm12_lo)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "or x0, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_comp_2reg_imm(opc_ori,reg0,reg0,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "or x0, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_comp_2reg_imm(opc_ori,reg0,reg0_alias,simm12_lo)
}

def i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "or x0, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_comp_2reg_imm(opc_ori,reg0,reg0_alias,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "or x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_comp_2reg_imm(opc_ori,reg0,reg0_alias,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_ori__reg0__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "or x0, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000010011;
// i_comp_2reg_imm(opc_ori,reg0,regs,simm12_lo)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_ori__reg0__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "or x0, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000010011;
// i_comp_2reg_imm(opc_ori,reg0,regs,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "or zero, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_comp_2reg_imm(opc_ori,reg0_alias,reg0,simm12_lo)
}

def i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "or zero, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_comp_2reg_imm(opc_ori,reg0_alias,reg0,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "or zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_comp_2reg_imm(opc_ori,reg0_alias,reg0,simm12_simple)
}

def i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "or zero, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_comp_2reg_imm(opc_ori,reg0_alias,reg0_alias,simm12_lo)
}

def i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "or zero, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_comp_2reg_imm(opc_ori,reg0_alias,reg0_alias,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "or zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_comp_2reg_imm(opc_ori,reg0_alias,reg0_alias,simm12_simple)
}

def i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "or zero, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000010011;
// i_comp_2reg_imm(opc_ori,reg0_alias,regs,simm12_lo)
}

def i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "or zero, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000010011;
// i_comp_2reg_imm(opc_ori,reg0_alias,regs,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "or zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000010011;
// i_comp_2reg_imm(opc_ori,reg0_alias,regs,simm12_simple)
}

def i_comp_2reg_imm__opc_ori__regs__reg0__simm12_lo__: CodasipMicroClass_<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op1)>
{
let AsmString = "or $op0, x0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_ori,regs,reg0,simm12_lo)
}

def i_comp_2reg_imm__opc_ori__regs__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op1)>
{
let AsmString = "or $op0, x0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_ori,regs,reg0,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "or $op0, zero, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_ori,regs,reg0_alias,simm12_lo)
}

def i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "or $op0, zero, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_ori,regs,reg0_alias,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "or $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_ori,regs,reg0_alias,simm12_simple)
}

def i_comp_2reg_imm__opc_ori__regs__regs__simm12_lo__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op2)>
{
let AsmString = "or $op0, $op1, %lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_ori,regs,regs,simm12_lo)
}

def i_comp_2reg_imm__opc_ori__regs__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op2)>
{
let AsmString = "or $op0, $op1, %pcrel_lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_ori,regs,regs,simm12_pcrel_lo)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "slti x0, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000010011;
// i_comp_2reg_imm(opc_slti,reg0,reg0,simm12_lo)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "slti x0, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000010011;
// i_comp_2reg_imm(opc_slti,reg0,reg0,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "slti x0, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000010011;
// i_comp_2reg_imm(opc_slti,reg0,reg0_alias,simm12_lo)
}

def i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "slti x0, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000010011;
// i_comp_2reg_imm(opc_slti,reg0,reg0_alias,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "slti x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000010011;
// i_comp_2reg_imm(opc_slti,reg0,reg0_alias,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_slti__reg0__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "slti x0, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000010011;
// i_comp_2reg_imm(opc_slti,reg0,regs,simm12_lo)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_slti__reg0__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "slti x0, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000010011;
// i_comp_2reg_imm(opc_slti,reg0,regs,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "slti zero, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000010011;
// i_comp_2reg_imm(opc_slti,reg0_alias,reg0,simm12_lo)
}

def i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "slti zero, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000010011;
// i_comp_2reg_imm(opc_slti,reg0_alias,reg0,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "slti zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000010011;
// i_comp_2reg_imm(opc_slti,reg0_alias,reg0,simm12_simple)
}

def i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "slti zero, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000010011;
// i_comp_2reg_imm(opc_slti,reg0_alias,reg0_alias,simm12_lo)
}

def i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "slti zero, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000010011;
// i_comp_2reg_imm(opc_slti,reg0_alias,reg0_alias,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "slti zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000010011;
// i_comp_2reg_imm(opc_slti,reg0_alias,reg0_alias,simm12_simple)
}

def i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "slti zero, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000010011;
// i_comp_2reg_imm(opc_slti,reg0_alias,regs,simm12_lo)
}

def i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "slti zero, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000010011;
// i_comp_2reg_imm(opc_slti,reg0_alias,regs,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "slti zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000010011;
// i_comp_2reg_imm(opc_slti,reg0_alias,regs,simm12_simple)
}

def i_comp_2reg_imm__opc_slti__regs__reg0__simm12_lo__: CodasipMicroClass_<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op1)>
{
let AsmString = "slti $op0, x0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_slti,regs,reg0,simm12_lo)
}

def i_comp_2reg_imm__opc_slti__regs__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op1)>
{
let AsmString = "slti $op0, x0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_slti,regs,reg0,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "slti $op0, zero, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_slti,regs,reg0_alias,simm12_lo)
}

def i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "slti $op0, zero, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_slti,regs,reg0_alias,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "slti $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_slti,regs,reg0_alias,simm12_simple)
}

def i_comp_2reg_imm__opc_slti__regs__regs__simm12_lo__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op2)>
{
let AsmString = "slti $op0, $op1, %lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_slti,regs,regs,simm12_lo)
}

def i_comp_2reg_imm__opc_slti__regs__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op2)>
{
let AsmString = "slti $op0, $op1, %pcrel_lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_slti,regs,regs,simm12_pcrel_lo)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "sltiu x0, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000000010011;
// i_comp_2reg_imm(opc_sltiu,reg0,reg0,simm12_lo)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "sltiu x0, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000000010011;
// i_comp_2reg_imm(opc_sltiu,reg0,reg0,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "sltiu x0, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000000010011;
// i_comp_2reg_imm(opc_sltiu,reg0,reg0_alias,simm12_lo)
}

def i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "sltiu x0, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000000010011;
// i_comp_2reg_imm(opc_sltiu,reg0,reg0_alias,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "sltiu x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000000010011;
// i_comp_2reg_imm(opc_sltiu,reg0,reg0_alias,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "sltiu x0, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000010011;
// i_comp_2reg_imm(opc_sltiu,reg0,regs,simm12_lo)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "sltiu x0, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000010011;
// i_comp_2reg_imm(opc_sltiu,reg0,regs,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "sltiu zero, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000000010011;
// i_comp_2reg_imm(opc_sltiu,reg0_alias,reg0,simm12_lo)
}

def i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "sltiu zero, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000000010011;
// i_comp_2reg_imm(opc_sltiu,reg0_alias,reg0,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "sltiu zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000000010011;
// i_comp_2reg_imm(opc_sltiu,reg0_alias,reg0,simm12_simple)
}

def i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "sltiu zero, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000000010011;
// i_comp_2reg_imm(opc_sltiu,reg0_alias,reg0_alias,simm12_lo)
}

def i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "sltiu zero, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000000010011;
// i_comp_2reg_imm(opc_sltiu,reg0_alias,reg0_alias,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "sltiu zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000000010011;
// i_comp_2reg_imm(opc_sltiu,reg0_alias,reg0_alias,simm12_simple)
}

def i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "sltiu zero, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000010011;
// i_comp_2reg_imm(opc_sltiu,reg0_alias,regs,simm12_lo)
}

def i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "sltiu zero, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000010011;
// i_comp_2reg_imm(opc_sltiu,reg0_alias,regs,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "sltiu zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000010011;
// i_comp_2reg_imm(opc_sltiu,reg0_alias,regs,simm12_simple)
}

def i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_lo__: CodasipMicroClass_<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op1)>
{
let AsmString = "sltiu $op0, x0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_sltiu,regs,reg0,simm12_lo)
}

def i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op1)>
{
let AsmString = "sltiu $op0, x0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_sltiu,regs,reg0,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "sltiu $op0, zero, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_sltiu,regs,reg0_alias,simm12_lo)
}

def i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "sltiu $op0, zero, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_sltiu,regs,reg0_alias,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "sltiu $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_sltiu,regs,reg0_alias,simm12_simple)
}

def i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_lo__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op2)>
{
let AsmString = "sltiu $op0, $op1, %lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_sltiu,regs,regs,simm12_lo)
}

def i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op2)>
{
let AsmString = "sltiu $op0, $op1, %pcrel_lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_sltiu,regs,regs,simm12_pcrel_lo)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "xor x0, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_comp_2reg_imm(opc_xori,reg0,reg0,simm12_lo)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "xor x0, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_comp_2reg_imm(opc_xori,reg0,reg0,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "xor x0, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_comp_2reg_imm(opc_xori,reg0,reg0_alias,simm12_lo)
}

def i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "xor x0, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_comp_2reg_imm(opc_xori,reg0,reg0_alias,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "xor x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_comp_2reg_imm(opc_xori,reg0,reg0_alias,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_xori__reg0__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "xor x0, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000010011;
// i_comp_2reg_imm(opc_xori,reg0,regs,simm12_lo)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_xori__reg0__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "xor x0, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000010011;
// i_comp_2reg_imm(opc_xori,reg0,regs,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "xor zero, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_comp_2reg_imm(opc_xori,reg0_alias,reg0,simm12_lo)
}

def i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "xor zero, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_comp_2reg_imm(opc_xori,reg0_alias,reg0,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "xor zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_comp_2reg_imm(opc_xori,reg0_alias,reg0,simm12_simple)
}

def i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "xor zero, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_comp_2reg_imm(opc_xori,reg0_alias,reg0_alias,simm12_lo)
}

def i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "xor zero, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_comp_2reg_imm(opc_xori,reg0_alias,reg0_alias,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "xor zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_comp_2reg_imm(opc_xori,reg0_alias,reg0_alias,simm12_simple)
}

def i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "xor zero, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000010011;
// i_comp_2reg_imm(opc_xori,reg0_alias,regs,simm12_lo)
}

def i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "xor zero, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000010011;
// i_comp_2reg_imm(opc_xori,reg0_alias,regs,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "xor zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000010011;
// i_comp_2reg_imm(opc_xori,reg0_alias,regs,simm12_simple)
}

def i_comp_2reg_imm__opc_xori__regs__reg0__simm12_lo__: CodasipMicroClass_<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op1)>
{
let AsmString = "xor $op0, x0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_xori,regs,reg0,simm12_lo)
}

def i_comp_2reg_imm__opc_xori__regs__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op1)>
{
let AsmString = "xor $op0, x0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_xori,regs,reg0,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "xor $op0, zero, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_xori,regs,reg0_alias,simm12_lo)
}

def i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "xor $op0, zero, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_xori,regs,reg0_alias,simm12_pcrel_lo)
}

def i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "xor $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_xori,regs,reg0_alias,simm12_simple)
}

def i_comp_2reg_imm__opc_xori__regs__regs__simm12_lo__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op2)>
{
let AsmString = "xor $op0, $op1, %lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_xori,regs,regs,simm12_lo)
}

def i_comp_2reg_imm__opc_xori__regs__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op2)>
{
let AsmString = "xor $op0, $op1, %pcrel_lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_xori,regs,regs,simm12_pcrel_lo)
}

def i_comp_2reg_imm_shift__opc_slli__reg0__reg0_alias__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "sll x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000001000000010011;
// i_comp_2reg_imm_shift(opc_slli,reg0,reg0_alias,shift_imm)
}

def i_comp_2reg_imm_shift__opc_slli__reg0_alias__reg0__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "sll zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000001000000010011;
// i_comp_2reg_imm_shift(opc_slli,reg0_alias,reg0,shift_imm)
}

def i_comp_2reg_imm_shift__opc_slli__reg0_alias__reg0_alias__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "sll zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000001000000010011;
// i_comp_2reg_imm_shift(opc_slli,reg0_alias,reg0_alias,shift_imm)
}

def i_comp_2reg_imm_shift__opc_slli__reg0_alias__regs__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "sll zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000010011;
// i_comp_2reg_imm_shift(opc_slli,reg0_alias,regs,shift_imm)
}

def i_comp_2reg_imm_shift__opc_slli__regs__reg0_alias__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "sll $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm_shift(opc_slli,regs,reg0_alias,shift_imm)
}

def i_comp_2reg_imm_shift__opc_srai__reg0__reg0_alias__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "sra x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000010011;
// i_comp_2reg_imm_shift(opc_srai,reg0,reg0_alias,shift_imm)
}

def i_comp_2reg_imm_shift__opc_srai__reg0_alias__reg0__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "sra zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000010011;
// i_comp_2reg_imm_shift(opc_srai,reg0_alias,reg0,shift_imm)
}

def i_comp_2reg_imm_shift__opc_srai__reg0_alias__reg0_alias__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "sra zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000010011;
// i_comp_2reg_imm_shift(opc_srai,reg0_alias,reg0_alias,shift_imm)
}

def i_comp_2reg_imm_shift__opc_srai__reg0_alias__regs__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "sra zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000010011;
// i_comp_2reg_imm_shift(opc_srai,reg0_alias,regs,shift_imm)
}

def i_comp_2reg_imm_shift__opc_srai__regs__reg0_alias__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "sra $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm_shift(opc_srai,regs,reg0_alias,shift_imm)
}

def i_comp_2reg_imm_shift__opc_srli__reg0__reg0_alias__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "srl x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000010011;
// i_comp_2reg_imm_shift(opc_srli,reg0,reg0_alias,shift_imm)
}

def i_comp_2reg_imm_shift__opc_srli__reg0_alias__reg0__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "srl zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000010011;
// i_comp_2reg_imm_shift(opc_srli,reg0_alias,reg0,shift_imm)
}

def i_comp_2reg_imm_shift__opc_srli__reg0_alias__reg0_alias__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "srl zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000010011;
// i_comp_2reg_imm_shift(opc_srli,reg0_alias,reg0_alias,shift_imm)
}

def i_comp_2reg_imm_shift__opc_srli__reg0_alias__regs__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "srl zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000010011;
// i_comp_2reg_imm_shift(opc_srli,reg0_alias,regs,shift_imm)
}

def i_comp_2reg_imm_shift__opc_srli__regs__reg0_alias__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "srl $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm_shift(opc_srli,regs,reg0_alias,shift_imm)
}

def i_comp_2reg_imm_shift_slli_alias__reg0__reg0__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "slli x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000001000000010011;
// i_comp_2reg_imm_shift_slli_alias(reg0,reg0,shift_imm)
}

def i_comp_2reg_imm_shift_slli_alias__reg0__reg0_alias__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "slli x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000001000000010011;
// i_comp_2reg_imm_shift_slli_alias(reg0,reg0_alias,shift_imm)
}

def i_comp_2reg_imm_shift_slli_alias__reg0__regs__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "slli x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000010011;
// i_comp_2reg_imm_shift_slli_alias(reg0,regs,shift_imm)
}

def i_comp_2reg_imm_shift_slli_alias__reg0_alias__reg0__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "slli zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000001000000010011;
// i_comp_2reg_imm_shift_slli_alias(reg0_alias,reg0,shift_imm)
}

def i_comp_2reg_imm_shift_slli_alias__reg0_alias__reg0_alias__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "slli zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000001000000010011;
// i_comp_2reg_imm_shift_slli_alias(reg0_alias,reg0_alias,shift_imm)
}

def i_comp_2reg_imm_shift_slli_alias__reg0_alias__regs__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "slli zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000010011;
// i_comp_2reg_imm_shift_slli_alias(reg0_alias,regs,shift_imm)
}

def i_comp_2reg_imm_shift_slli_alias__regs__reg0__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "slli $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm_shift_slli_alias(regs,reg0,shift_imm)
}

def i_comp_2reg_imm_shift_slli_alias__regs__reg0_alias__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "slli $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm_shift_slli_alias(regs,reg0_alias,shift_imm)
}

def i_comp_2reg_imm_shift_slli_alias__regs__regs__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op2)>
{
let AsmString = "slli $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<5> op2;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm_shift_slli_alias(regs,regs,shift_imm)
}

def i_comp_2reg_imm_shift_srai_alias__reg0__reg0__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "srai x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000010011;
// i_comp_2reg_imm_shift_srai_alias(reg0,reg0,shift_imm)
}

def i_comp_2reg_imm_shift_srai_alias__reg0__reg0_alias__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "srai x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000010011;
// i_comp_2reg_imm_shift_srai_alias(reg0,reg0_alias,shift_imm)
}

def i_comp_2reg_imm_shift_srai_alias__reg0__regs__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "srai x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000010011;
// i_comp_2reg_imm_shift_srai_alias(reg0,regs,shift_imm)
}

def i_comp_2reg_imm_shift_srai_alias__reg0_alias__reg0__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "srai zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000010011;
// i_comp_2reg_imm_shift_srai_alias(reg0_alias,reg0,shift_imm)
}

def i_comp_2reg_imm_shift_srai_alias__reg0_alias__reg0_alias__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "srai zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000010011;
// i_comp_2reg_imm_shift_srai_alias(reg0_alias,reg0_alias,shift_imm)
}

def i_comp_2reg_imm_shift_srai_alias__reg0_alias__regs__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "srai zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000010011;
// i_comp_2reg_imm_shift_srai_alias(reg0_alias,regs,shift_imm)
}

def i_comp_2reg_imm_shift_srai_alias__regs__reg0__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "srai $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm_shift_srai_alias(regs,reg0,shift_imm)
}

def i_comp_2reg_imm_shift_srai_alias__regs__reg0_alias__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "srai $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm_shift_srai_alias(regs,reg0_alias,shift_imm)
}

def i_comp_2reg_imm_shift_srai_alias__regs__regs__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op2)>
{
let AsmString = "srai $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<5> op2;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm_shift_srai_alias(regs,regs,shift_imm)
}

def i_comp_2reg_imm_shift_srli_alias__reg0__reg0__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "srli x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000010011;
// i_comp_2reg_imm_shift_srli_alias(reg0,reg0,shift_imm)
}

def i_comp_2reg_imm_shift_srli_alias__reg0__reg0_alias__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "srli x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000010011;
// i_comp_2reg_imm_shift_srli_alias(reg0,reg0_alias,shift_imm)
}

def i_comp_2reg_imm_shift_srli_alias__reg0__regs__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "srli x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000010011;
// i_comp_2reg_imm_shift_srli_alias(reg0,regs,shift_imm)
}

def i_comp_2reg_imm_shift_srli_alias__reg0_alias__reg0__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "srli zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000010011;
// i_comp_2reg_imm_shift_srli_alias(reg0_alias,reg0,shift_imm)
}

def i_comp_2reg_imm_shift_srli_alias__reg0_alias__reg0_alias__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "srli zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000010011;
// i_comp_2reg_imm_shift_srli_alias(reg0_alias,reg0_alias,shift_imm)
}

def i_comp_2reg_imm_shift_srli_alias__reg0_alias__regs__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "srli zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000010011;
// i_comp_2reg_imm_shift_srli_alias(reg0_alias,regs,shift_imm)
}

def i_comp_2reg_imm_shift_srli_alias__regs__reg0__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "srli $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm_shift_srli_alias(regs,reg0,shift_imm)
}

def i_comp_2reg_imm_shift_srli_alias__regs__reg0_alias__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "srli $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm_shift_srli_alias(regs,reg0_alias,shift_imm)
}

def i_comp_2reg_imm_shift_srli_alias__regs__regs__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op2)>
{
let AsmString = "srli $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<5> op2;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm_shift_srli_alias(regs,regs,shift_imm)
}

def i_comp_3reg__opc_add__reg0__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "add x0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000110011;
// i_comp_3reg(opc_add,reg0,reg0,reg0_alias)
}

def i_comp_3reg__opc_add__reg0__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "add x0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000110011;
// i_comp_3reg(opc_add,reg0,reg0_alias,reg0)
}

def i_comp_3reg__opc_add__reg0__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "add x0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000110011;
// i_comp_3reg(opc_add,reg0,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_add__reg0__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "add x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000000000000110011;
// i_comp_3reg(opc_add,reg0,reg0_alias,regs)
}

def i_comp_3reg__opc_add__reg0__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "add x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000110011;
// i_comp_3reg(opc_add,reg0,regs,reg0_alias)
}

def i_comp_3reg__opc_add__reg0_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "add zero, x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000110011;
// i_comp_3reg(opc_add,reg0_alias,reg0,reg0)
}

def i_comp_3reg__opc_add__reg0_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "add zero, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000110011;
// i_comp_3reg(opc_add,reg0_alias,reg0,reg0_alias)
}

def i_comp_3reg__opc_add__reg0_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "add zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000000000000110011;
// i_comp_3reg(opc_add,reg0_alias,reg0,regs)
}

def i_comp_3reg__opc_add__reg0_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "add zero, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000110011;
// i_comp_3reg(opc_add,reg0_alias,reg0_alias,reg0)
}

def i_comp_3reg__opc_add__reg0_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "add zero, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000110011;
// i_comp_3reg(opc_add,reg0_alias,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_add__reg0_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "add zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000000000000110011;
// i_comp_3reg(opc_add,reg0_alias,reg0_alias,regs)
}

def i_comp_3reg__opc_add__reg0_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "add zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000110011;
// i_comp_3reg(opc_add,reg0_alias,regs,reg0)
}

def i_comp_3reg__opc_add__reg0_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "add zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000110011;
// i_comp_3reg(opc_add,reg0_alias,regs,reg0_alias)
}

def i_comp_3reg__opc_add__reg0_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "add zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000110011;
// i_comp_3reg(opc_add,reg0_alias,regs,regs)
}

def i_comp_3reg__opc_add__regs__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "add $op0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_add,regs,reg0,reg0_alias)
}

def i_comp_3reg__opc_add__regs__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "add $op0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_add,regs,reg0_alias,reg0)
}

def i_comp_3reg__opc_add__regs__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "add $op0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_add,regs,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_add__regs__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "add $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_add,regs,reg0_alias,regs)
}

def i_comp_3reg__opc_add__regs__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "add $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_add,regs,regs,reg0_alias)
}

def i_comp_3reg__opc_and__reg0__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "and x0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000111000000110011;
// i_comp_3reg(opc_and,reg0,reg0,reg0_alias)
}

def i_comp_3reg__opc_and__reg0__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "and x0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000111000000110011;
// i_comp_3reg(opc_and,reg0,reg0_alias,reg0)
}

def i_comp_3reg__opc_and__reg0__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "and x0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000111000000110011;
// i_comp_3reg(opc_and,reg0,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_and__reg0__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "and x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000111000000110011;
// i_comp_3reg(opc_and,reg0,reg0_alias,regs)
}

def i_comp_3reg__opc_and__reg0__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "and x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000000110011;
// i_comp_3reg(opc_and,reg0,regs,reg0_alias)
}

def i_comp_3reg__opc_and__reg0_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "and zero, x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000111000000110011;
// i_comp_3reg(opc_and,reg0_alias,reg0,reg0)
}

def i_comp_3reg__opc_and__reg0_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "and zero, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000111000000110011;
// i_comp_3reg(opc_and,reg0_alias,reg0,reg0_alias)
}

def i_comp_3reg__opc_and__reg0_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "and zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000111000000110011;
// i_comp_3reg(opc_and,reg0_alias,reg0,regs)
}

def i_comp_3reg__opc_and__reg0_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "and zero, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000111000000110011;
// i_comp_3reg(opc_and,reg0_alias,reg0_alias,reg0)
}

def i_comp_3reg__opc_and__reg0_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "and zero, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000111000000110011;
// i_comp_3reg(opc_and,reg0_alias,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_and__reg0_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "and zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000111000000110011;
// i_comp_3reg(opc_and,reg0_alias,reg0_alias,regs)
}

def i_comp_3reg__opc_and__reg0_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "and zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000000110011;
// i_comp_3reg(opc_and,reg0_alias,regs,reg0)
}

def i_comp_3reg__opc_and__reg0_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "and zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000000110011;
// i_comp_3reg(opc_and,reg0_alias,regs,reg0_alias)
}

def i_comp_3reg__opc_and__reg0_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "and zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000000110011;
// i_comp_3reg(opc_and,reg0_alias,regs,regs)
}

def i_comp_3reg__opc_and__regs__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "and $op0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_and,regs,reg0,reg0_alias)
}

def i_comp_3reg__opc_and__regs__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "and $op0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_and,regs,reg0_alias,reg0)
}

def i_comp_3reg__opc_and__regs__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "and $op0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_and,regs,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_and__regs__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "and $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_and,regs,reg0_alias,regs)
}

def i_comp_3reg__opc_and__regs__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "and $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_and,regs,regs,reg0_alias)
}

def i_comp_3reg__opc_or__reg0__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "or x0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000110000000110011;
// i_comp_3reg(opc_or,reg0,reg0,reg0_alias)
}

def i_comp_3reg__opc_or__reg0__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "or x0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000110000000110011;
// i_comp_3reg(opc_or,reg0,reg0_alias,reg0)
}

def i_comp_3reg__opc_or__reg0__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "or x0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000110000000110011;
// i_comp_3reg(opc_or,reg0,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_or__reg0__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "or x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000110000000110011;
// i_comp_3reg(opc_or,reg0,reg0_alias,regs)
}

def i_comp_3reg__opc_or__reg0__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "or x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000110011;
// i_comp_3reg(opc_or,reg0,regs,reg0_alias)
}

def i_comp_3reg__opc_or__reg0_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "or zero, x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000110000000110011;
// i_comp_3reg(opc_or,reg0_alias,reg0,reg0)
}

def i_comp_3reg__opc_or__reg0_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "or zero, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000110000000110011;
// i_comp_3reg(opc_or,reg0_alias,reg0,reg0_alias)
}

def i_comp_3reg__opc_or__reg0_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "or zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000110000000110011;
// i_comp_3reg(opc_or,reg0_alias,reg0,regs)
}

def i_comp_3reg__opc_or__reg0_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "or zero, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000110000000110011;
// i_comp_3reg(opc_or,reg0_alias,reg0_alias,reg0)
}

def i_comp_3reg__opc_or__reg0_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "or zero, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000110000000110011;
// i_comp_3reg(opc_or,reg0_alias,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_or__reg0_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "or zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000110000000110011;
// i_comp_3reg(opc_or,reg0_alias,reg0_alias,regs)
}

def i_comp_3reg__opc_or__reg0_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "or zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000110011;
// i_comp_3reg(opc_or,reg0_alias,regs,reg0)
}

def i_comp_3reg__opc_or__reg0_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "or zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000110011;
// i_comp_3reg(opc_or,reg0_alias,regs,reg0_alias)
}

def i_comp_3reg__opc_or__reg0_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "or zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000110011;
// i_comp_3reg(opc_or,reg0_alias,regs,regs)
}

def i_comp_3reg__opc_or__regs__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "or $op0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_or,regs,reg0,reg0_alias)
}

def i_comp_3reg__opc_or__regs__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "or $op0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_or,regs,reg0_alias,reg0)
}

def i_comp_3reg__opc_or__regs__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "or $op0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_or,regs,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_or__regs__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "or $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_or,regs,reg0_alias,regs)
}

def i_comp_3reg__opc_or__regs__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "or $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_or,regs,regs,reg0_alias)
}

def i_comp_3reg__opc_sll__reg0__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sll x0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000110011;
// i_comp_3reg(opc_sll,reg0,reg0,reg0_alias)
}

def i_comp_3reg__opc_sll__reg0__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sll x0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000110011;
// i_comp_3reg(opc_sll,reg0,reg0_alias,reg0)
}

def i_comp_3reg__opc_sll__reg0__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sll x0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000110011;
// i_comp_3reg(opc_sll,reg0,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_sll__reg0__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sll x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000001000000110011;
// i_comp_3reg(opc_sll,reg0,reg0_alias,regs)
}

def i_comp_3reg__opc_sll__reg0__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sll x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000110011;
// i_comp_3reg(opc_sll,reg0,regs,reg0_alias)
}

def i_comp_3reg__opc_sll__reg0_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sll zero, x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000110011;
// i_comp_3reg(opc_sll,reg0_alias,reg0,reg0)
}

def i_comp_3reg__opc_sll__reg0_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sll zero, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000110011;
// i_comp_3reg(opc_sll,reg0_alias,reg0,reg0_alias)
}

def i_comp_3reg__opc_sll__reg0_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sll zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000001000000110011;
// i_comp_3reg(opc_sll,reg0_alias,reg0,regs)
}

def i_comp_3reg__opc_sll__reg0_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sll zero, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000110011;
// i_comp_3reg(opc_sll,reg0_alias,reg0_alias,reg0)
}

def i_comp_3reg__opc_sll__reg0_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sll zero, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000110011;
// i_comp_3reg(opc_sll,reg0_alias,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_sll__reg0_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sll zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000001000000110011;
// i_comp_3reg(opc_sll,reg0_alias,reg0_alias,regs)
}

def i_comp_3reg__opc_sll__reg0_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sll zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000110011;
// i_comp_3reg(opc_sll,reg0_alias,regs,reg0)
}

def i_comp_3reg__opc_sll__reg0_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sll zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000110011;
// i_comp_3reg(opc_sll,reg0_alias,regs,reg0_alias)
}

def i_comp_3reg__opc_sll__reg0_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sll zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000110011;
// i_comp_3reg(opc_sll,reg0_alias,regs,regs)
}

def i_comp_3reg__opc_sll__regs__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sll $op0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sll,regs,reg0,reg0_alias)
}

def i_comp_3reg__opc_sll__regs__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sll $op0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sll,regs,reg0_alias,reg0)
}

def i_comp_3reg__opc_sll__regs__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sll $op0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sll,regs,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_sll__regs__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sll $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sll,regs,reg0_alias,regs)
}

def i_comp_3reg__opc_sll__regs__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sll $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sll,regs,regs,reg0_alias)
}

def i_comp_3reg__opc_slt__reg0__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "slt x0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000110011;
// i_comp_3reg(opc_slt,reg0,reg0,reg0_alias)
}

def i_comp_3reg__opc_slt__reg0__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "slt x0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000110011;
// i_comp_3reg(opc_slt,reg0,reg0_alias,reg0)
}

def i_comp_3reg__opc_slt__reg0__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "slt x0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000110011;
// i_comp_3reg(opc_slt,reg0,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_slt__reg0__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "slt x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000010000000110011;
// i_comp_3reg(opc_slt,reg0,reg0_alias,regs)
}

def i_comp_3reg__opc_slt__reg0__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "slt x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000110011;
// i_comp_3reg(opc_slt,reg0,regs,reg0_alias)
}

def i_comp_3reg__opc_slt__reg0_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "slt zero, x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000110011;
// i_comp_3reg(opc_slt,reg0_alias,reg0,reg0)
}

def i_comp_3reg__opc_slt__reg0_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "slt zero, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000110011;
// i_comp_3reg(opc_slt,reg0_alias,reg0,reg0_alias)
}

def i_comp_3reg__opc_slt__reg0_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "slt zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000010000000110011;
// i_comp_3reg(opc_slt,reg0_alias,reg0,regs)
}

def i_comp_3reg__opc_slt__reg0_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "slt zero, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000110011;
// i_comp_3reg(opc_slt,reg0_alias,reg0_alias,reg0)
}

def i_comp_3reg__opc_slt__reg0_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "slt zero, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000110011;
// i_comp_3reg(opc_slt,reg0_alias,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_slt__reg0_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "slt zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000010000000110011;
// i_comp_3reg(opc_slt,reg0_alias,reg0_alias,regs)
}

def i_comp_3reg__opc_slt__reg0_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "slt zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000110011;
// i_comp_3reg(opc_slt,reg0_alias,regs,reg0)
}

def i_comp_3reg__opc_slt__reg0_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "slt zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000110011;
// i_comp_3reg(opc_slt,reg0_alias,regs,reg0_alias)
}

def i_comp_3reg__opc_slt__reg0_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "slt zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000110011;
// i_comp_3reg(opc_slt,reg0_alias,regs,regs)
}

def i_comp_3reg__opc_slt__regs__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "slt $op0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_slt,regs,reg0,reg0_alias)
}

def i_comp_3reg__opc_slt__regs__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "slt $op0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_slt,regs,reg0_alias,reg0)
}

def i_comp_3reg__opc_slt__regs__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "slt $op0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_slt,regs,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_slt__regs__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "slt $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_slt,regs,reg0_alias,regs)
}

def i_comp_3reg__opc_slt__regs__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "slt $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_slt,regs,regs,reg0_alias)
}

def i_comp_3reg__opc_sltu__reg0__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltu x0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000011000000110011;
// i_comp_3reg(opc_sltu,reg0,reg0,reg0_alias)
}

def i_comp_3reg__opc_sltu__reg0__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltu x0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000011000000110011;
// i_comp_3reg(opc_sltu,reg0,reg0_alias,reg0)
}

def i_comp_3reg__opc_sltu__reg0__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltu x0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000011000000110011;
// i_comp_3reg(opc_sltu,reg0,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_sltu__reg0__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sltu x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000011000000110011;
// i_comp_3reg(opc_sltu,reg0,reg0_alias,regs)
}

def i_comp_3reg__opc_sltu__reg0__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sltu x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000110011;
// i_comp_3reg(opc_sltu,reg0,regs,reg0_alias)
}

def i_comp_3reg__opc_sltu__reg0_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltu zero, x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000011000000110011;
// i_comp_3reg(opc_sltu,reg0_alias,reg0,reg0)
}

def i_comp_3reg__opc_sltu__reg0_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltu zero, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000011000000110011;
// i_comp_3reg(opc_sltu,reg0_alias,reg0,reg0_alias)
}

def i_comp_3reg__opc_sltu__reg0_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sltu zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000011000000110011;
// i_comp_3reg(opc_sltu,reg0_alias,reg0,regs)
}

def i_comp_3reg__opc_sltu__reg0_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltu zero, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000011000000110011;
// i_comp_3reg(opc_sltu,reg0_alias,reg0_alias,reg0)
}

def i_comp_3reg__opc_sltu__reg0_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltu zero, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000011000000110011;
// i_comp_3reg(opc_sltu,reg0_alias,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_sltu__reg0_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sltu zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000011000000110011;
// i_comp_3reg(opc_sltu,reg0_alias,reg0_alias,regs)
}

def i_comp_3reg__opc_sltu__reg0_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sltu zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000110011;
// i_comp_3reg(opc_sltu,reg0_alias,regs,reg0)
}

def i_comp_3reg__opc_sltu__reg0_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sltu zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000110011;
// i_comp_3reg(opc_sltu,reg0_alias,regs,reg0_alias)
}

def i_comp_3reg__opc_sltu__reg0_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sltu zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000110011;
// i_comp_3reg(opc_sltu,reg0_alias,regs,regs)
}

def i_comp_3reg__opc_sltu__regs__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sltu $op0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sltu,regs,reg0,reg0_alias)
}

def i_comp_3reg__opc_sltu__regs__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sltu $op0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sltu,regs,reg0_alias,reg0)
}

def i_comp_3reg__opc_sltu__regs__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sltu $op0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sltu,regs,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_sltu__regs__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sltu $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sltu,regs,reg0_alias,regs)
}

def i_comp_3reg__opc_sltu__regs__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sltu $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sltu,regs,regs,reg0_alias)
}

def i_comp_3reg__opc_sra__reg0__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sra x0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b01000000000000000101000000110011;
// i_comp_3reg(opc_sra,reg0,reg0,reg0_alias)
}

def i_comp_3reg__opc_sra__reg0__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sra x0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b01000000000000000101000000110011;
// i_comp_3reg(opc_sra,reg0,reg0_alias,reg0)
}

def i_comp_3reg__opc_sra__reg0__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sra x0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b01000000000000000101000000110011;
// i_comp_3reg(opc_sra,reg0,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_sra__reg0__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sra x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000110011;
// i_comp_3reg(opc_sra,reg0,reg0_alias,regs)
}

def i_comp_3reg__opc_sra__reg0__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sra x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b010000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000110011;
// i_comp_3reg(opc_sra,reg0,regs,reg0_alias)
}

def i_comp_3reg__opc_sra__reg0_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sra zero, x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b01000000000000000101000000110011;
// i_comp_3reg(opc_sra,reg0_alias,reg0,reg0)
}

def i_comp_3reg__opc_sra__reg0_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sra zero, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b01000000000000000101000000110011;
// i_comp_3reg(opc_sra,reg0_alias,reg0,reg0_alias)
}

def i_comp_3reg__opc_sra__reg0_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sra zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000110011;
// i_comp_3reg(opc_sra,reg0_alias,reg0,regs)
}

def i_comp_3reg__opc_sra__reg0_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sra zero, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b01000000000000000101000000110011;
// i_comp_3reg(opc_sra,reg0_alias,reg0_alias,reg0)
}

def i_comp_3reg__opc_sra__reg0_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sra zero, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b01000000000000000101000000110011;
// i_comp_3reg(opc_sra,reg0_alias,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_sra__reg0_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sra zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000110011;
// i_comp_3reg(opc_sra,reg0_alias,reg0_alias,regs)
}

def i_comp_3reg__opc_sra__reg0_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sra zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b010000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000110011;
// i_comp_3reg(opc_sra,reg0_alias,regs,reg0)
}

def i_comp_3reg__opc_sra__reg0_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sra zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b010000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000110011;
// i_comp_3reg(opc_sra,reg0_alias,regs,reg0_alias)
}

def i_comp_3reg__opc_sra__reg0_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sra zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000110011;
// i_comp_3reg(opc_sra,reg0_alias,regs,regs)
}

def i_comp_3reg__opc_sra__regs__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sra $op0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b01000000000000000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sra,regs,reg0,reg0_alias)
}

def i_comp_3reg__opc_sra__regs__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sra $op0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b01000000000000000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sra,regs,reg0_alias,reg0)
}

def i_comp_3reg__opc_sra__regs__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sra $op0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b01000000000000000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sra,regs,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_sra__regs__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sra $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sra,regs,reg0_alias,regs)
}

def i_comp_3reg__opc_sra__regs__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sra $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b010000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sra,regs,regs,reg0_alias)
}

def i_comp_3reg__opc_srl__reg0__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "srl x0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000101000000110011;
// i_comp_3reg(opc_srl,reg0,reg0,reg0_alias)
}

def i_comp_3reg__opc_srl__reg0__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "srl x0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000101000000110011;
// i_comp_3reg(opc_srl,reg0,reg0_alias,reg0)
}

def i_comp_3reg__opc_srl__reg0__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "srl x0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000101000000110011;
// i_comp_3reg(opc_srl,reg0,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_srl__reg0__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "srl x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000110011;
// i_comp_3reg(opc_srl,reg0,reg0_alias,regs)
}

def i_comp_3reg__opc_srl__reg0__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "srl x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000110011;
// i_comp_3reg(opc_srl,reg0,regs,reg0_alias)
}

def i_comp_3reg__opc_srl__reg0_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "srl zero, x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000101000000110011;
// i_comp_3reg(opc_srl,reg0_alias,reg0,reg0)
}

def i_comp_3reg__opc_srl__reg0_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "srl zero, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000101000000110011;
// i_comp_3reg(opc_srl,reg0_alias,reg0,reg0_alias)
}

def i_comp_3reg__opc_srl__reg0_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "srl zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000110011;
// i_comp_3reg(opc_srl,reg0_alias,reg0,regs)
}

def i_comp_3reg__opc_srl__reg0_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "srl zero, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000101000000110011;
// i_comp_3reg(opc_srl,reg0_alias,reg0_alias,reg0)
}

def i_comp_3reg__opc_srl__reg0_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "srl zero, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000101000000110011;
// i_comp_3reg(opc_srl,reg0_alias,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_srl__reg0_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "srl zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000110011;
// i_comp_3reg(opc_srl,reg0_alias,reg0_alias,regs)
}

def i_comp_3reg__opc_srl__reg0_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "srl zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000110011;
// i_comp_3reg(opc_srl,reg0_alias,regs,reg0)
}

def i_comp_3reg__opc_srl__reg0_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "srl zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000110011;
// i_comp_3reg(opc_srl,reg0_alias,regs,reg0_alias)
}

def i_comp_3reg__opc_srl__reg0_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "srl zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000110011;
// i_comp_3reg(opc_srl,reg0_alias,regs,regs)
}

def i_comp_3reg__opc_srl__regs__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "srl $op0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_srl,regs,reg0,reg0_alias)
}

def i_comp_3reg__opc_srl__regs__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "srl $op0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_srl,regs,reg0_alias,reg0)
}

def i_comp_3reg__opc_srl__regs__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "srl $op0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_srl,regs,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_srl__regs__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "srl $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_srl,regs,reg0_alias,regs)
}

def i_comp_3reg__opc_srl__regs__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "srl $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_srl,regs,regs,reg0_alias)
}

def i_comp_3reg__opc_sub__reg0__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sub x0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b01000000000000000000000000110011;
// i_comp_3reg(opc_sub,reg0,reg0,reg0_alias)
}

def i_comp_3reg__opc_sub__reg0__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sub x0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b01000000000000000000000000110011;
// i_comp_3reg(opc_sub,reg0,reg0_alias,reg0)
}

def i_comp_3reg__opc_sub__reg0__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sub x0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b01000000000000000000000000110011;
// i_comp_3reg(opc_sub,reg0,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_sub__reg0__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sub x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000000000000110011;
// i_comp_3reg(opc_sub,reg0,reg0_alias,regs)
}

def i_comp_3reg__opc_sub__reg0__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sub x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b010000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000110011;
// i_comp_3reg(opc_sub,reg0,regs,reg0_alias)
}

def i_comp_3reg__opc_sub__reg0_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sub zero, x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b01000000000000000000000000110011;
// i_comp_3reg(opc_sub,reg0_alias,reg0,reg0)
}

def i_comp_3reg__opc_sub__reg0_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sub zero, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b01000000000000000000000000110011;
// i_comp_3reg(opc_sub,reg0_alias,reg0,reg0_alias)
}

def i_comp_3reg__opc_sub__reg0_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sub zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000000000000110011;
// i_comp_3reg(opc_sub,reg0_alias,reg0,regs)
}

def i_comp_3reg__opc_sub__reg0_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sub zero, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b01000000000000000000000000110011;
// i_comp_3reg(opc_sub,reg0_alias,reg0_alias,reg0)
}

def i_comp_3reg__opc_sub__reg0_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sub zero, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b01000000000000000000000000110011;
// i_comp_3reg(opc_sub,reg0_alias,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_sub__reg0_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sub zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000000000000110011;
// i_comp_3reg(opc_sub,reg0_alias,reg0_alias,regs)
}

def i_comp_3reg__opc_sub__reg0_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sub zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b010000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000110011;
// i_comp_3reg(opc_sub,reg0_alias,regs,reg0)
}

def i_comp_3reg__opc_sub__reg0_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sub zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b010000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000110011;
// i_comp_3reg(opc_sub,reg0_alias,regs,reg0_alias)
}

def i_comp_3reg__opc_sub__reg0_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sub zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000110011;
// i_comp_3reg(opc_sub,reg0_alias,regs,regs)
}

def i_comp_3reg__opc_sub__regs__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sub $op0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b01000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sub,regs,reg0,reg0_alias)
}

def i_comp_3reg__opc_sub__regs__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sub $op0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b01000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sub,regs,reg0_alias,reg0)
}

def i_comp_3reg__opc_sub__regs__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sub $op0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b01000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sub,regs,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_sub__regs__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sub $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sub,regs,reg0_alias,regs)
}

def i_comp_3reg__opc_sub__regs__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sub $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b010000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sub,regs,regs,reg0_alias)
}

def i_comp_3reg__opc_xor__reg0__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "xor x0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000100000000110011;
// i_comp_3reg(opc_xor,reg0,reg0,reg0_alias)
}

def i_comp_3reg__opc_xor__reg0__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "xor x0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000100000000110011;
// i_comp_3reg(opc_xor,reg0,reg0_alias,reg0)
}

def i_comp_3reg__opc_xor__reg0__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "xor x0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000100000000110011;
// i_comp_3reg(opc_xor,reg0,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_xor__reg0__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "xor x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000100000000110011;
// i_comp_3reg(opc_xor,reg0,reg0_alias,regs)
}

def i_comp_3reg__opc_xor__reg0__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "xor x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000110011;
// i_comp_3reg(opc_xor,reg0,regs,reg0_alias)
}

def i_comp_3reg__opc_xor__reg0_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "xor zero, x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000100000000110011;
// i_comp_3reg(opc_xor,reg0_alias,reg0,reg0)
}

def i_comp_3reg__opc_xor__reg0_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "xor zero, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000100000000110011;
// i_comp_3reg(opc_xor,reg0_alias,reg0,reg0_alias)
}

def i_comp_3reg__opc_xor__reg0_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "xor zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000100000000110011;
// i_comp_3reg(opc_xor,reg0_alias,reg0,regs)
}

def i_comp_3reg__opc_xor__reg0_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "xor zero, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000100000000110011;
// i_comp_3reg(opc_xor,reg0_alias,reg0_alias,reg0)
}

def i_comp_3reg__opc_xor__reg0_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "xor zero, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000100000000110011;
// i_comp_3reg(opc_xor,reg0_alias,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_xor__reg0_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "xor zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000100000000110011;
// i_comp_3reg(opc_xor,reg0_alias,reg0_alias,regs)
}

def i_comp_3reg__opc_xor__reg0_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "xor zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000110011;
// i_comp_3reg(opc_xor,reg0_alias,regs,reg0)
}

def i_comp_3reg__opc_xor__reg0_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "xor zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000110011;
// i_comp_3reg(opc_xor,reg0_alias,regs,reg0_alias)
}

def i_comp_3reg__opc_xor__reg0_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "xor zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000110011;
// i_comp_3reg(opc_xor,reg0_alias,regs,regs)
}

def i_comp_3reg__opc_xor__regs__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "xor $op0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_xor,regs,reg0,reg0_alias)
}

def i_comp_3reg__opc_xor__regs__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "xor $op0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_xor,regs,reg0_alias,reg0)
}

def i_comp_3reg__opc_xor__regs__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "xor $op0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_xor,regs,reg0_alias,reg0_alias)
}

def i_comp_3reg__opc_xor__regs__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "xor $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_xor,regs,reg0_alias,regs)
}

def i_comp_3reg__opc_xor__regs__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "xor $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_xor,regs,regs,reg0_alias)
}

def i_control_conditional__opc_beq__reg0__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "beq x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000000;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_beq,reg0,reg0_alias,rel_addr12)
}

def i_control_conditional__opc_beq__reg0_alias__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "beq zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000000;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_beq,reg0_alias,reg0,rel_addr12)
}

def i_control_conditional__opc_beq__reg0_alias__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "beq zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000000;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_beq,reg0_alias,reg0_alias,rel_addr12)
}

def i_control_conditional__opc_beq__reg0_alias__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "beq zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000000;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_beq,reg0_alias,regs,rel_addr12)
}

def i_control_conditional__opc_beq__regs__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "beq $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b000;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_beq,regs,reg0_alias,rel_addr12)
}

def i_control_conditional__opc_bge__reg0__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bge x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000101;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bge,reg0,reg0_alias,rel_addr12)
}

def i_control_conditional__opc_bge__reg0_alias__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bge zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000101;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bge,reg0_alias,reg0,rel_addr12)
}

def i_control_conditional__opc_bge__reg0_alias__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bge zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000101;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bge,reg0_alias,reg0_alias,rel_addr12)
}

def i_control_conditional__opc_bge__reg0_alias__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bge zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000101;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bge,reg0_alias,regs,rel_addr12)
}

def i_control_conditional__opc_bge__regs__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bge $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b101;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bge,regs,reg0_alias,rel_addr12)
}

def i_control_conditional__opc_bgeu__reg0__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bgeu x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000111;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bgeu,reg0,reg0_alias,rel_addr12)
}

def i_control_conditional__opc_bgeu__reg0_alias__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bgeu zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000111;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bgeu,reg0_alias,reg0,rel_addr12)
}

def i_control_conditional__opc_bgeu__reg0_alias__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bgeu zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000111;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bgeu,reg0_alias,reg0_alias,rel_addr12)
}

def i_control_conditional__opc_bgeu__reg0_alias__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bgeu zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000111;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bgeu,reg0_alias,regs,rel_addr12)
}

def i_control_conditional__opc_bgeu__regs__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bgeu $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b111;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bgeu,regs,reg0_alias,rel_addr12)
}

def i_control_conditional__opc_blt__reg0__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "blt x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000100;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_blt,reg0,reg0_alias,rel_addr12)
}

def i_control_conditional__opc_blt__reg0_alias__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "blt zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000100;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_blt,reg0_alias,reg0,rel_addr12)
}

def i_control_conditional__opc_blt__reg0_alias__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "blt zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000100;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_blt,reg0_alias,reg0_alias,rel_addr12)
}

def i_control_conditional__opc_blt__reg0_alias__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "blt zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000100;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_blt,reg0_alias,regs,rel_addr12)
}

def i_control_conditional__opc_blt__regs__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "blt $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b100;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_blt,regs,reg0_alias,rel_addr12)
}

def i_control_conditional__opc_bltu__reg0__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bltu x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000110;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bltu,reg0,reg0_alias,rel_addr12)
}

def i_control_conditional__opc_bltu__reg0_alias__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bltu zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000110;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bltu,reg0_alias,reg0,rel_addr12)
}

def i_control_conditional__opc_bltu__reg0_alias__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bltu zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000110;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bltu,reg0_alias,reg0_alias,rel_addr12)
}

def i_control_conditional__opc_bltu__reg0_alias__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bltu zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000110;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bltu,reg0_alias,regs,rel_addr12)
}

def i_control_conditional__opc_bltu__regs__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bltu $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b110;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bltu,regs,reg0_alias,rel_addr12)
}

def i_control_conditional__opc_bne__reg0__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bne x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000001;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bne,reg0,reg0_alias,rel_addr12)
}

def i_control_conditional__opc_bne__reg0_alias__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bne zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000001;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bne,reg0_alias,reg0,rel_addr12)
}

def i_control_conditional__opc_bne__reg0_alias__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bne zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000001;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bne,reg0_alias,reg0_alias,rel_addr12)
}

def i_control_conditional__opc_bne__reg0_alias__regs__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bne zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000001;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bne,reg0_alias,regs,rel_addr12)
}

def i_control_conditional__opc_bne__regs__reg0_alias__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bne $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b001;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bne,regs,reg0_alias,rel_addr12)
}

def i_control_registers_imm__opc_csrrci__reg0__csr_imm__imm5__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrrci x0, $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000001110011;
// i_control_registers_imm(opc_csrrci,reg0,csr_imm,imm5)
}

// warning: (BGW589): Has unused operands.
def i_control_registers_imm__opc_csrrci__reg0__regs_csr__imm5__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op1)>
{
let AsmString = "csrrci x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b111000001110011;
// i_control_registers_imm(opc_csrrci,reg0,regs_csr,imm5)
}

def i_control_registers_imm__opc_csrrci__reg0_alias__csr_imm__imm5__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrrci zero, $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000001110011;
// i_control_registers_imm(opc_csrrci,reg0_alias,csr_imm,imm5)
}

def i_control_registers_imm__opc_csrrci__reg0_alias__regs_csr__imm5__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op1)>
{
let AsmString = "csrrci zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b111000001110011;
// i_control_registers_imm(opc_csrrci,reg0_alias,regs_csr,imm5)
}

def i_control_registers_imm__opc_csrrci__regs__csr_imm__imm5__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op1, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op2)>
{
let AsmString = "csrrci $op0, $op2, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_imm(opc_csrrci,regs,csr_imm,imm5)
}

// warning: (BGW589): Has unused operands.
def i_control_registers_imm__opc_csrrci__regs__regs_csr__imm5__: CodasipMicroClass_<(outs), (ins regs:$op0, regs_csr:$op1, MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op2)>
{
let AsmString = "csrrci $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<12> op1;
bits<5> op2;
let Inst{31-20} = op1;
let Inst{19-15} = op2;
let Inst{14-12} = 0b111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_imm(opc_csrrci,regs,regs_csr,imm5)
}

def i_control_registers_imm__opc_csrrsi__reg0__csr_imm__imm5__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrrsi x0, $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000001110011;
// i_control_registers_imm(opc_csrrsi,reg0,csr_imm,imm5)
}

// warning: (BGW589): Has unused operands.
def i_control_registers_imm__opc_csrrsi__reg0__regs_csr__imm5__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op1)>
{
let AsmString = "csrrsi x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b110000001110011;
// i_control_registers_imm(opc_csrrsi,reg0,regs_csr,imm5)
}

def i_control_registers_imm__opc_csrrsi__reg0_alias__csr_imm__imm5__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrrsi zero, $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000001110011;
// i_control_registers_imm(opc_csrrsi,reg0_alias,csr_imm,imm5)
}

def i_control_registers_imm__opc_csrrsi__reg0_alias__regs_csr__imm5__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op1)>
{
let AsmString = "csrrsi zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b110000001110011;
// i_control_registers_imm(opc_csrrsi,reg0_alias,regs_csr,imm5)
}

def i_control_registers_imm__opc_csrrsi__regs__csr_imm__imm5__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op1, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op2)>
{
let AsmString = "csrrsi $op0, $op2, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_imm(opc_csrrsi,regs,csr_imm,imm5)
}

// warning: (BGW589): Has unused operands.
def i_control_registers_imm__opc_csrrsi__regs__regs_csr__imm5__: CodasipMicroClass_<(outs), (ins regs:$op0, regs_csr:$op1, MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op2)>
{
let AsmString = "csrrsi $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<12> op1;
bits<5> op2;
let Inst{31-20} = op1;
let Inst{19-15} = op2;
let Inst{14-12} = 0b110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_imm(opc_csrrsi,regs,regs_csr,imm5)
}

def i_control_registers_imm__opc_csrrwi__reg0__csr_imm__imm5__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrrwi x0, $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000001110011;
// i_control_registers_imm(opc_csrrwi,reg0,csr_imm,imm5)
}

// warning: (BGW589): Has unused operands.
def i_control_registers_imm__opc_csrrwi__reg0__regs_csr__imm5__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op1)>
{
let AsmString = "csrrwi x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b101000001110011;
// i_control_registers_imm(opc_csrrwi,reg0,regs_csr,imm5)
}

def i_control_registers_imm__opc_csrrwi__reg0_alias__csr_imm__imm5__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrrwi zero, $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000001110011;
// i_control_registers_imm(opc_csrrwi,reg0_alias,csr_imm,imm5)
}

def i_control_registers_imm__opc_csrrwi__reg0_alias__regs_csr__imm5__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op1)>
{
let AsmString = "csrrwi zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b101000001110011;
// i_control_registers_imm(opc_csrrwi,reg0_alias,regs_csr,imm5)
}

def i_control_registers_imm__opc_csrrwi__regs__csr_imm__imm5__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op1, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op2)>
{
let AsmString = "csrrwi $op0, $op2, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_imm(opc_csrrwi,regs,csr_imm,imm5)
}

// warning: (BGW589): Has unused operands.
def i_control_registers_imm__opc_csrrwi__regs__regs_csr__imm5__: CodasipMicroClass_<(outs), (ins regs:$op0, regs_csr:$op1, MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op2)>
{
let AsmString = "csrrwi $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<12> op1;
bits<5> op2;
let Inst{31-20} = op1;
let Inst{19-15} = op2;
let Inst{14-12} = 0b101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_imm(opc_csrrwi,regs,regs_csr,imm5)
}

def i_control_registers_reg__opc_csrrc__reg0__csr_imm__reg0__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrrc x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000001110011;
// i_control_registers_reg(opc_csrrc,reg0,csr_imm,reg0)
}

def i_control_registers_reg__opc_csrrc__reg0__csr_imm__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrrc x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000001110011;
// i_control_registers_reg(opc_csrrc,reg0,csr_imm,reg0_alias)
}

def i_control_registers_reg__opc_csrrc__reg0__csr_imm__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrrc x0, $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000001110011;
// i_control_registers_reg(opc_csrrc,reg0,csr_imm,regs)
}

// warning: (BGW589): Has unused operands.
def i_control_registers_reg__opc_csrrc__reg0__regs_csr__reg0__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrrc x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000001110011;
// i_control_registers_reg(opc_csrrc,reg0,regs_csr,reg0)
}

def i_control_registers_reg__opc_csrrc__reg0__regs_csr__reg0_alias__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrrc x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000001110011;
// i_control_registers_reg(opc_csrrc,reg0,regs_csr,reg0_alias)
}

// warning: (BGW589): Has unused operands.
def i_control_registers_reg__opc_csrrc__reg0__regs_csr__regs__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, regs:$op1)>
{
let AsmString = "csrrc x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b011000001110011;
// i_control_registers_reg(opc_csrrc,reg0,regs_csr,regs)
}

def i_control_registers_reg__opc_csrrc__reg0_alias__csr_imm__reg0__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrrc zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000001110011;
// i_control_registers_reg(opc_csrrc,reg0_alias,csr_imm,reg0)
}

def i_control_registers_reg__opc_csrrc__reg0_alias__csr_imm__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrrc zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000001110011;
// i_control_registers_reg(opc_csrrc,reg0_alias,csr_imm,reg0_alias)
}

def i_control_registers_reg__opc_csrrc__reg0_alias__csr_imm__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrrc zero, $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000001110011;
// i_control_registers_reg(opc_csrrc,reg0_alias,csr_imm,regs)
}

def i_control_registers_reg__opc_csrrc__reg0_alias__regs_csr__reg0__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrrc zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000001110011;
// i_control_registers_reg(opc_csrrc,reg0_alias,regs_csr,reg0)
}

def i_control_registers_reg__opc_csrrc__reg0_alias__regs_csr__reg0_alias__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrrc zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000001110011;
// i_control_registers_reg(opc_csrrc,reg0_alias,regs_csr,reg0_alias)
}

def i_control_registers_reg__opc_csrrc__reg0_alias__regs_csr__regs__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, regs:$op1)>
{
let AsmString = "csrrc zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b011000001110011;
// i_control_registers_reg(opc_csrrc,reg0_alias,regs_csr,regs)
}

def i_control_registers_reg__opc_csrrc__regs__csr_imm__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrrc $op0, $op1, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_reg(opc_csrrc,regs,csr_imm,reg0)
}

def i_control_registers_reg__opc_csrrc__regs__csr_imm__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrrc $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_reg(opc_csrrc,regs,csr_imm,reg0_alias)
}

def i_control_registers_reg__opc_csrrc__regs__csr_imm__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1, regs:$op2)>
{
let AsmString = "csrrc $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
bits<5> op2;
let Inst{31-20} = op1;
let Inst{19-15} = op2;
let Inst{14-12} = 0b011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_reg(opc_csrrc,regs,csr_imm,regs)
}

// warning: (BGW589): Has unused operands.
def i_control_registers_reg__opc_csrrc__regs__regs_csr__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0, regs_csr:$op1)>
{
let AsmString = "csrrc $op0, $op1, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_reg(opc_csrrc,regs,regs_csr,reg0)
}

def i_control_registers_reg__opc_csrrc__regs__regs_csr__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs_csr:$op1)>
{
let AsmString = "csrrc $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_reg(opc_csrrc,regs,regs_csr,reg0_alias)
}

// warning: (BGW589): Has unused operands.
def i_control_registers_reg__opc_csrrc__regs__regs_csr__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs_csr:$op1, regs:$op2)>
{
let AsmString = "csrrc $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<12> op1;
bits<5> op2;
let Inst{31-20} = op1;
let Inst{19-15} = op2;
let Inst{14-12} = 0b011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_reg(opc_csrrc,regs,regs_csr,regs)
}

def i_control_registers_reg__opc_csrrs__reg0__csr_imm__reg0__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrrs x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000001110011;
// i_control_registers_reg(opc_csrrs,reg0,csr_imm,reg0)
}

def i_control_registers_reg__opc_csrrs__reg0__csr_imm__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrrs x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000001110011;
// i_control_registers_reg(opc_csrrs,reg0,csr_imm,reg0_alias)
}

def i_control_registers_reg__opc_csrrs__reg0__csr_imm__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrrs x0, $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000001110011;
// i_control_registers_reg(opc_csrrs,reg0,csr_imm,regs)
}

// warning: (BGW589): Has unused operands.
def i_control_registers_reg__opc_csrrs__reg0__regs_csr__reg0__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrrs x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000001110011;
// i_control_registers_reg(opc_csrrs,reg0,regs_csr,reg0)
}

def i_control_registers_reg__opc_csrrs__reg0__regs_csr__reg0_alias__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrrs x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000001110011;
// i_control_registers_reg(opc_csrrs,reg0,regs_csr,reg0_alias)
}

// warning: (BGW589): Has unused operands.
def i_control_registers_reg__opc_csrrs__reg0__regs_csr__regs__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, regs:$op1)>
{
let AsmString = "csrrs x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b010000001110011;
// i_control_registers_reg(opc_csrrs,reg0,regs_csr,regs)
}

def i_control_registers_reg__opc_csrrs__reg0_alias__csr_imm__reg0__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrrs zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000001110011;
// i_control_registers_reg(opc_csrrs,reg0_alias,csr_imm,reg0)
}

def i_control_registers_reg__opc_csrrs__reg0_alias__csr_imm__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrrs zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000001110011;
// i_control_registers_reg(opc_csrrs,reg0_alias,csr_imm,reg0_alias)
}

def i_control_registers_reg__opc_csrrs__reg0_alias__csr_imm__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrrs zero, $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000001110011;
// i_control_registers_reg(opc_csrrs,reg0_alias,csr_imm,regs)
}

def i_control_registers_reg__opc_csrrs__reg0_alias__regs_csr__reg0__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrrs zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000001110011;
// i_control_registers_reg(opc_csrrs,reg0_alias,regs_csr,reg0)
}

def i_control_registers_reg__opc_csrrs__reg0_alias__regs_csr__reg0_alias__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrrs zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000001110011;
// i_control_registers_reg(opc_csrrs,reg0_alias,regs_csr,reg0_alias)
}

def i_control_registers_reg__opc_csrrs__reg0_alias__regs_csr__regs__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, regs:$op1)>
{
let AsmString = "csrrs zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b010000001110011;
// i_control_registers_reg(opc_csrrs,reg0_alias,regs_csr,regs)
}

def i_control_registers_reg__opc_csrrs__regs__csr_imm__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrrs $op0, $op1, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_reg(opc_csrrs,regs,csr_imm,reg0)
}

def i_control_registers_reg__opc_csrrs__regs__csr_imm__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrrs $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_reg(opc_csrrs,regs,csr_imm,reg0_alias)
}

def i_control_registers_reg__opc_csrrs__regs__csr_imm__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1, regs:$op2)>
{
let AsmString = "csrrs $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
bits<5> op2;
let Inst{31-20} = op1;
let Inst{19-15} = op2;
let Inst{14-12} = 0b010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_reg(opc_csrrs,regs,csr_imm,regs)
}

// warning: (BGW589): Has unused operands.
def i_control_registers_reg__opc_csrrs__regs__regs_csr__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0, regs_csr:$op1)>
{
let AsmString = "csrrs $op0, $op1, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_reg(opc_csrrs,regs,regs_csr,reg0)
}

def i_control_registers_reg__opc_csrrs__regs__regs_csr__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs_csr:$op1)>
{
let AsmString = "csrrs $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_reg(opc_csrrs,regs,regs_csr,reg0_alias)
}

// warning: (BGW589): Has unused operands.
def i_control_registers_reg__opc_csrrs__regs__regs_csr__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs_csr:$op1, regs:$op2)>
{
let AsmString = "csrrs $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<12> op1;
bits<5> op2;
let Inst{31-20} = op1;
let Inst{19-15} = op2;
let Inst{14-12} = 0b010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_reg(opc_csrrs,regs,regs_csr,regs)
}

def i_control_registers_reg__opc_csrrw__reg0__csr_imm__reg0__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrrw x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000001110011;
// i_control_registers_reg(opc_csrrw,reg0,csr_imm,reg0)
}

def i_control_registers_reg__opc_csrrw__reg0__csr_imm__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrrw x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000001110011;
// i_control_registers_reg(opc_csrrw,reg0,csr_imm,reg0_alias)
}

def i_control_registers_reg__opc_csrrw__reg0__csr_imm__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrrw x0, $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000001110011;
// i_control_registers_reg(opc_csrrw,reg0,csr_imm,regs)
}

// warning: (BGW589): Has unused operands.
def i_control_registers_reg__opc_csrrw__reg0__regs_csr__reg0__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrrw x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000001110011;
// i_control_registers_reg(opc_csrrw,reg0,regs_csr,reg0)
}

def i_control_registers_reg__opc_csrrw__reg0__regs_csr__reg0_alias__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrrw x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000001110011;
// i_control_registers_reg(opc_csrrw,reg0,regs_csr,reg0_alias)
}

// warning: (BGW589): Has unused operands.
def i_control_registers_reg__opc_csrrw__reg0__regs_csr__regs__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, regs:$op1)>
{
let AsmString = "csrrw x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b001000001110011;
// i_control_registers_reg(opc_csrrw,reg0,regs_csr,regs)
}

def i_control_registers_reg__opc_csrrw__reg0_alias__csr_imm__reg0__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrrw zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000001110011;
// i_control_registers_reg(opc_csrrw,reg0_alias,csr_imm,reg0)
}

def i_control_registers_reg__opc_csrrw__reg0_alias__csr_imm__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrrw zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000001110011;
// i_control_registers_reg(opc_csrrw,reg0_alias,csr_imm,reg0_alias)
}

def i_control_registers_reg__opc_csrrw__reg0_alias__csr_imm__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrrw zero, $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000001110011;
// i_control_registers_reg(opc_csrrw,reg0_alias,csr_imm,regs)
}

def i_control_registers_reg__opc_csrrw__reg0_alias__regs_csr__reg0__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrrw zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000001110011;
// i_control_registers_reg(opc_csrrw,reg0_alias,regs_csr,reg0)
}

def i_control_registers_reg__opc_csrrw__reg0_alias__regs_csr__reg0_alias__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrrw zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000001110011;
// i_control_registers_reg(opc_csrrw,reg0_alias,regs_csr,reg0_alias)
}

def i_control_registers_reg__opc_csrrw__reg0_alias__regs_csr__regs__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, regs:$op1)>
{
let AsmString = "csrrw zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b001000001110011;
// i_control_registers_reg(opc_csrrw,reg0_alias,regs_csr,regs)
}

def i_control_registers_reg__opc_csrrw__regs__csr_imm__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrrw $op0, $op1, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_reg(opc_csrrw,regs,csr_imm,reg0)
}

def i_control_registers_reg__opc_csrrw__regs__csr_imm__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrrw $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_reg(opc_csrrw,regs,csr_imm,reg0_alias)
}

def i_control_registers_reg__opc_csrrw__regs__csr_imm__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1, regs:$op2)>
{
let AsmString = "csrrw $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
bits<5> op2;
let Inst{31-20} = op1;
let Inst{19-15} = op2;
let Inst{14-12} = 0b001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_reg(opc_csrrw,regs,csr_imm,regs)
}

// warning: (BGW589): Has unused operands.
def i_control_registers_reg__opc_csrrw__regs__regs_csr__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0, regs_csr:$op1)>
{
let AsmString = "csrrw $op0, $op1, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_reg(opc_csrrw,regs,regs_csr,reg0)
}

def i_control_registers_reg__opc_csrrw__regs__regs_csr__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs_csr:$op1)>
{
let AsmString = "csrrw $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_reg(opc_csrrw,regs,regs_csr,reg0_alias)
}

// warning: (BGW589): Has unused operands.
def i_control_registers_reg__opc_csrrw__regs__regs_csr__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs_csr:$op1, regs:$op2)>
{
let AsmString = "csrrw $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<12> op1;
bits<5> op2;
let Inst{31-20} = op1;
let Inst{19-15} = op2;
let Inst{14-12} = 0b001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_control_registers_reg(opc_csrrw,regs,regs_csr,regs)
}

def i_csrc_alias__csr_imm__reg0__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrc $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000001110011;
// i_csrc_alias(csr_imm,reg0)
}

def i_csrc_alias__csr_imm__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrc $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000001110011;
// i_csrc_alias(csr_imm,reg0_alias)
}

def i_csrc_alias__csr_imm__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrc $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000001110011;
// i_csrc_alias(csr_imm,regs)
}

def i_csrc_alias__regs_csr__reg0__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrc $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000001110011;
// i_csrc_alias(regs_csr,reg0)
}

def i_csrc_alias__regs_csr__reg0_alias__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrc $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000001110011;
// i_csrc_alias(regs_csr,reg0_alias)
}

def i_csrc_alias__regs_csr__regs__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, regs:$op1)>
{
let AsmString = "csrc $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b011000001110011;
// i_csrc_alias(regs_csr,regs)
}

def i_csrci_alias2__csr_imm__imm5__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrci $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000001110011;
// i_csrci_alias2(csr_imm,imm5)
}

def i_csrci_alias2__regs_csr__imm5__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op1)>
{
let AsmString = "csrci $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b111000001110011;
// i_csrci_alias2(regs_csr,imm5)
}

def i_csrci_alias__csr_imm__imm5__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrc $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000001110011;
// i_csrci_alias(csr_imm,imm5)
}

def i_csrci_alias__regs_csr__imm5__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op1)>
{
let AsmString = "csrc $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b111000001110011;
// i_csrci_alias(regs_csr,imm5)
}

def i_csrr_alias__reg0__csr_imm__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrr x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000001110011;
// i_csrr_alias(reg0,csr_imm)
}

def i_csrr_alias__reg0__regs_csr__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrr x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000001110011;
// i_csrr_alias(reg0,regs_csr)
}

def i_csrr_alias__reg0_alias__csr_imm__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrr zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000001110011;
// i_csrr_alias(reg0_alias,csr_imm)
}

def i_csrr_alias__reg0_alias__regs_csr__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrr zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000001110011;
// i_csrr_alias(reg0_alias,regs_csr)
}

def i_csrr_alias__regs__csr_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrr $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_csrr_alias(regs,csr_imm)
}

def i_csrr_alias__regs__regs_csr__: CodasipMicroClass_<(outs), (ins regs:$op0, regs_csr:$op1)>
{
let AsmString = "csrr $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_csrr_alias(regs,regs_csr)
}

def i_csrs_alias__csr_imm__reg0__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrs $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000001110011;
// i_csrs_alias(csr_imm,reg0)
}

def i_csrs_alias__csr_imm__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrs $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000001110011;
// i_csrs_alias(csr_imm,reg0_alias)
}

def i_csrs_alias__csr_imm__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrs $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000001110011;
// i_csrs_alias(csr_imm,regs)
}

def i_csrs_alias__regs_csr__reg0__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrs $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000001110011;
// i_csrs_alias(regs_csr,reg0)
}

def i_csrs_alias__regs_csr__reg0_alias__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrs $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000001110011;
// i_csrs_alias(regs_csr,reg0_alias)
}

def i_csrs_alias__regs_csr__regs__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, regs:$op1)>
{
let AsmString = "csrs $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b010000001110011;
// i_csrs_alias(regs_csr,regs)
}

def i_csrsi_alias2__csr_imm__imm5__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrsi $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000001110011;
// i_csrsi_alias2(csr_imm,imm5)
}

def i_csrsi_alias2__regs_csr__imm5__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op1)>
{
let AsmString = "csrsi $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b110000001110011;
// i_csrsi_alias2(regs_csr,imm5)
}

def i_csrsi_alias__csr_imm__imm5__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrs $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000001110011;
// i_csrsi_alias(csr_imm,imm5)
}

def i_csrsi_alias__regs_csr__imm5__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op1)>
{
let AsmString = "csrs $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b110000001110011;
// i_csrsi_alias(regs_csr,imm5)
}

def i_csrw_alias__csr_imm__reg0__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrw $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000001110011;
// i_csrw_alias(csr_imm,reg0)
}

def i_csrw_alias__csr_imm__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op0)>
{
let AsmString = "csrw $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000001110011;
// i_csrw_alias(csr_imm,reg0_alias)
}

def i_csrw_alias__csr_imm__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrw $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000001110011;
// i_csrw_alias(csr_imm,regs)
}

def i_csrw_alias__regs_csr__reg0__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrw $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000001110011;
// i_csrw_alias(regs_csr,reg0)
}

def i_csrw_alias__regs_csr__reg0_alias__: CodasipMicroClass_<(outs), (ins regs_csr:$op0)>
{
let AsmString = "csrw $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000001110011;
// i_csrw_alias(regs_csr,reg0_alias)
}

def i_csrw_alias__regs_csr__regs__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, regs:$op1)>
{
let AsmString = "csrw $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b001000001110011;
// i_csrw_alias(regs_csr,regs)
}

def i_csrwi_alias__csr_imm__imm5__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op0, MI3immIH1_10start_base8_6op_csr3csr1_7csr_imm_iAny:$op1)>
{
let AsmString = "csrwi $op1, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000001110011;
// i_csrwi_alias(csr_imm,imm5)
}

def i_csrwi_alias__regs_csr__imm5__: CodasipMicroClass_<(outs), (ins regs_csr:$op0, MI3immIH1_10start_base6_4imm53imm1_4imm5_iAny:$op1)>
{
let AsmString = "csrwi $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
bits<5> op1;
let Inst{31-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b101000001110011;
// i_csrwi_alias(regs_csr,imm5)
}

def i_ecall_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "scall";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000001110011;
// i_ecall_alias
}

def i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_a x0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000101011;
// i_ext_hackaton(opc_hackaton_custom_a,reg0,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_a x0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000101011;
// i_ext_hackaton(opc_hackaton_custom_a,reg0,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_a x0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000101011;
// i_ext_hackaton(opc_hackaton_custom_a,reg0,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_a x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000000000000101011;
// i_ext_hackaton(opc_hackaton_custom_a,reg0,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_a x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000101011;
// i_ext_hackaton(opc_hackaton_custom_a,reg0,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_a zero, x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000101011;
// i_ext_hackaton(opc_hackaton_custom_a,reg0_alias,reg0,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_a zero, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000101011;
// i_ext_hackaton(opc_hackaton_custom_a,reg0_alias,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_a zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000000000000101011;
// i_ext_hackaton(opc_hackaton_custom_a,reg0_alias,reg0,regs)
}

def i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_a zero, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000101011;
// i_ext_hackaton(opc_hackaton_custom_a,reg0_alias,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_a zero, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000101011;
// i_ext_hackaton(opc_hackaton_custom_a,reg0_alias,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_a zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000000000000101011;
// i_ext_hackaton(opc_hackaton_custom_a,reg0_alias,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_a zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000101011;
// i_ext_hackaton(opc_hackaton_custom_a,reg0_alias,regs,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_a zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000101011;
// i_ext_hackaton(opc_hackaton_custom_a,reg0_alias,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_a zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000101011;
// i_ext_hackaton(opc_hackaton_custom_a,reg0_alias,regs,regs)
}

def i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_a $op0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_a,regs,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_a__regs__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_a $op0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_a,regs,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_a__regs__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_a $op0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_a,regs,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_a__regs__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_a $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_a,regs,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_a__regs__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_a $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_a,regs,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_b x0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000101011;
// i_ext_hackaton(opc_hackaton_custom_b,reg0,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_b x0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000101011;
// i_ext_hackaton(opc_hackaton_custom_b,reg0,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_b x0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000101011;
// i_ext_hackaton(opc_hackaton_custom_b,reg0,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_b x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000001000000101011;
// i_ext_hackaton(opc_hackaton_custom_b,reg0,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_b x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000101011;
// i_ext_hackaton(opc_hackaton_custom_b,reg0,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_b zero, x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000101011;
// i_ext_hackaton(opc_hackaton_custom_b,reg0_alias,reg0,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_b zero, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000101011;
// i_ext_hackaton(opc_hackaton_custom_b,reg0_alias,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_b zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000001000000101011;
// i_ext_hackaton(opc_hackaton_custom_b,reg0_alias,reg0,regs)
}

def i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_b zero, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000101011;
// i_ext_hackaton(opc_hackaton_custom_b,reg0_alias,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_b zero, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000101011;
// i_ext_hackaton(opc_hackaton_custom_b,reg0_alias,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_b zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000001000000101011;
// i_ext_hackaton(opc_hackaton_custom_b,reg0_alias,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_b zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000101011;
// i_ext_hackaton(opc_hackaton_custom_b,reg0_alias,regs,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_b zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000101011;
// i_ext_hackaton(opc_hackaton_custom_b,reg0_alias,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_b zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000101011;
// i_ext_hackaton(opc_hackaton_custom_b,reg0_alias,regs,regs)
}

def i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_b $op0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_b,regs,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_b__regs__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_b $op0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_b,regs,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_b__regs__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_b $op0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_b,regs,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_b__regs__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_b $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_b,regs,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_b__regs__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_b $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_b,regs,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_c x0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000101011;
// i_ext_hackaton(opc_hackaton_custom_c,reg0,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_c x0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000101011;
// i_ext_hackaton(opc_hackaton_custom_c,reg0,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_c x0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000101011;
// i_ext_hackaton(opc_hackaton_custom_c,reg0,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_c x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000010000000101011;
// i_ext_hackaton(opc_hackaton_custom_c,reg0,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_c x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000101011;
// i_ext_hackaton(opc_hackaton_custom_c,reg0,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_c zero, x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000101011;
// i_ext_hackaton(opc_hackaton_custom_c,reg0_alias,reg0,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_c zero, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000101011;
// i_ext_hackaton(opc_hackaton_custom_c,reg0_alias,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_c zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000010000000101011;
// i_ext_hackaton(opc_hackaton_custom_c,reg0_alias,reg0,regs)
}

def i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_c zero, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000101011;
// i_ext_hackaton(opc_hackaton_custom_c,reg0_alias,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_c zero, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000101011;
// i_ext_hackaton(opc_hackaton_custom_c,reg0_alias,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_c zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000010000000101011;
// i_ext_hackaton(opc_hackaton_custom_c,reg0_alias,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_c zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000101011;
// i_ext_hackaton(opc_hackaton_custom_c,reg0_alias,regs,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_c zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000101011;
// i_ext_hackaton(opc_hackaton_custom_c,reg0_alias,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_c zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000101011;
// i_ext_hackaton(opc_hackaton_custom_c,reg0_alias,regs,regs)
}

def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_c $op0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_c,regs,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_c $op0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_c,regs,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_c $op0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_c,regs,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_c $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_c,regs,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_c $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_c,regs,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_d x0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000011000000101011;
// i_ext_hackaton(opc_hackaton_custom_d,reg0,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_d x0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000011000000101011;
// i_ext_hackaton(opc_hackaton_custom_d,reg0,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_d x0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000011000000101011;
// i_ext_hackaton(opc_hackaton_custom_d,reg0,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_d x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000011000000101011;
// i_ext_hackaton(opc_hackaton_custom_d,reg0,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_d x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000101011;
// i_ext_hackaton(opc_hackaton_custom_d,reg0,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_d zero, x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000011000000101011;
// i_ext_hackaton(opc_hackaton_custom_d,reg0_alias,reg0,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_d zero, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000011000000101011;
// i_ext_hackaton(opc_hackaton_custom_d,reg0_alias,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_d zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000011000000101011;
// i_ext_hackaton(opc_hackaton_custom_d,reg0_alias,reg0,regs)
}

def i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_d zero, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000011000000101011;
// i_ext_hackaton(opc_hackaton_custom_d,reg0_alias,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_d zero, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000011000000101011;
// i_ext_hackaton(opc_hackaton_custom_d,reg0_alias,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_d zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000011000000101011;
// i_ext_hackaton(opc_hackaton_custom_d,reg0_alias,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_d zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000101011;
// i_ext_hackaton(opc_hackaton_custom_d,reg0_alias,regs,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_d zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000101011;
// i_ext_hackaton(opc_hackaton_custom_d,reg0_alias,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_d zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000101011;
// i_ext_hackaton(opc_hackaton_custom_d,reg0_alias,regs,regs)
}

def i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_d $op0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_d,regs,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_d__regs__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_d $op0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_d,regs,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_d__regs__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_d $op0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_d,regs,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_d__regs__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_d $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_d,regs,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_d $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_d,regs,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_e x0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000100000000101011;
// i_ext_hackaton(opc_hackaton_custom_e,reg0,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_e x0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000100000000101011;
// i_ext_hackaton(opc_hackaton_custom_e,reg0,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_e x0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000100000000101011;
// i_ext_hackaton(opc_hackaton_custom_e,reg0,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_e x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000100000000101011;
// i_ext_hackaton(opc_hackaton_custom_e,reg0,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_e x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000101011;
// i_ext_hackaton(opc_hackaton_custom_e,reg0,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_e zero, x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000100000000101011;
// i_ext_hackaton(opc_hackaton_custom_e,reg0_alias,reg0,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_e zero, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000100000000101011;
// i_ext_hackaton(opc_hackaton_custom_e,reg0_alias,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_e zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000100000000101011;
// i_ext_hackaton(opc_hackaton_custom_e,reg0_alias,reg0,regs)
}

def i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_e zero, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000100000000101011;
// i_ext_hackaton(opc_hackaton_custom_e,reg0_alias,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_e zero, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000100000000101011;
// i_ext_hackaton(opc_hackaton_custom_e,reg0_alias,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_e zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000100000000101011;
// i_ext_hackaton(opc_hackaton_custom_e,reg0_alias,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_e zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000101011;
// i_ext_hackaton(opc_hackaton_custom_e,reg0_alias,regs,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_e zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000101011;
// i_ext_hackaton(opc_hackaton_custom_e,reg0_alias,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_e zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000101011;
// i_ext_hackaton(opc_hackaton_custom_e,reg0_alias,regs,regs)
}

def i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_e $op0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_e,regs,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_e__regs__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_e $op0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_e,regs,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_e__regs__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_e $op0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_e,regs,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_e__regs__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_e $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_e,regs,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_e $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_e,regs,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_f x0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000101000000101011;
// i_ext_hackaton(opc_hackaton_custom_f,reg0,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_f x0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000101000000101011;
// i_ext_hackaton(opc_hackaton_custom_f,reg0,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_f x0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000101000000101011;
// i_ext_hackaton(opc_hackaton_custom_f,reg0,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_f x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000101011;
// i_ext_hackaton(opc_hackaton_custom_f,reg0,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_f x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000101011;
// i_ext_hackaton(opc_hackaton_custom_f,reg0,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_f zero, x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000101000000101011;
// i_ext_hackaton(opc_hackaton_custom_f,reg0_alias,reg0,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_f zero, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000101000000101011;
// i_ext_hackaton(opc_hackaton_custom_f,reg0_alias,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_f zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000101011;
// i_ext_hackaton(opc_hackaton_custom_f,reg0_alias,reg0,regs)
}

def i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_f zero, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000101000000101011;
// i_ext_hackaton(opc_hackaton_custom_f,reg0_alias,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_f zero, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000101000000101011;
// i_ext_hackaton(opc_hackaton_custom_f,reg0_alias,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_f zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000101011;
// i_ext_hackaton(opc_hackaton_custom_f,reg0_alias,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_f zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000101011;
// i_ext_hackaton(opc_hackaton_custom_f,reg0_alias,regs,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_f zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000101011;
// i_ext_hackaton(opc_hackaton_custom_f,reg0_alias,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_f__reg0_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_f zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000101011;
// i_ext_hackaton(opc_hackaton_custom_f,reg0_alias,regs,regs)
}

def i_ext_hackaton__opc_hackaton_custom_f__regs__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_f $op0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_f,regs,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_f__regs__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_f $op0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_f,regs,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_f__regs__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_f $op0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_f,regs,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_f__regs__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_f $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_f,regs,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_f__regs__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_f $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_f,regs,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_g x0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000110000000101011;
// i_ext_hackaton(opc_hackaton_custom_g,reg0,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_g x0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000110000000101011;
// i_ext_hackaton(opc_hackaton_custom_g,reg0,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_g x0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000110000000101011;
// i_ext_hackaton(opc_hackaton_custom_g,reg0,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_g x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000110000000101011;
// i_ext_hackaton(opc_hackaton_custom_g,reg0,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_g__reg0__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_g x0, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000101011;
// i_ext_hackaton(opc_hackaton_custom_g,reg0,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_g zero, x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000110000000101011;
// i_ext_hackaton(opc_hackaton_custom_g,reg0_alias,reg0,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_g zero, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000110000000101011;
// i_ext_hackaton(opc_hackaton_custom_g,reg0_alias,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_g zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000110000000101011;
// i_ext_hackaton(opc_hackaton_custom_g,reg0_alias,reg0,regs)
}

def i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_g zero, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000110000000101011;
// i_ext_hackaton(opc_hackaton_custom_g,reg0_alias,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "hackaton_custom_instr_g zero, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000110000000101011;
// i_ext_hackaton(opc_hackaton_custom_g,reg0_alias,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_g zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000110000000101011;
// i_ext_hackaton(opc_hackaton_custom_g,reg0_alias,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_g zero, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000101011;
// i_ext_hackaton(opc_hackaton_custom_g,reg0_alias,regs,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_g zero, $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000101011;
// i_ext_hackaton(opc_hackaton_custom_g,reg0_alias,regs,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_g__reg0_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_g zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000101011;
// i_ext_hackaton(opc_hackaton_custom_g,reg0_alias,regs,regs)
}

def i_ext_hackaton__opc_hackaton_custom_g__regs__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_g $op0, x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_g,regs,reg0,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_g__regs__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_g $op0, zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_g,regs,reg0_alias,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_g__regs__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_g $op0, zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_g,regs,reg0_alias,reg0_alias)
}

def i_ext_hackaton__opc_hackaton_custom_g__regs__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_g $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_g,regs,reg0_alias,regs)
}

def i_ext_hackaton__opc_hackaton_custom_g__regs__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_g $op0, $op1, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_g,regs,regs,reg0_alias)
}

def i_fence_alias__opc_fence__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "fence";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00001111111100000000000000001111;
// i_fence_alias(opc_fence)
}

def i_get_pc_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "get.pc zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000010111;
// i_get_pc_alias(reg0_alias)
}

def i_jal__opc_jal__reg0_alias__rel_addr20__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20_iAny:$op0)>
{
let AsmString = "jal zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<20> op0;
let Inst{31} = op0{19-19};
let Inst{30-21} = op0{9-0};
let Inst{20} = op0{10-10};
let Inst{19-12} = op0{18-11};
let Inst{11-0} = 0b000001101111;
// i_jal(opc_jal,reg0_alias,rel_addr20)
}

def i_jalr__opc_jalr__reg0__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_brtarg:$op0)>
{
let AsmString = "jalr x0, x0, %lo ( $op0 )";
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000001100111;
// i_jalr(opc_jalr,reg0,reg0,simm12_lo)
}

def i_jalr__opc_jalr__reg0__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_brtarg:$op0)>
{
let AsmString = "jalr x0, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000001100111;
// i_jalr(opc_jalr,reg0,reg0,simm12_pcrel_lo)
}

def i_jalr__opc_jalr__reg0__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "jalr x0, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000001100111;
// i_jalr(opc_jalr,reg0,reg0_alias,simm12_lo)
}

def i_jalr__opc_jalr__reg0__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "jalr x0, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000001100111;
// i_jalr(opc_jalr,reg0,reg0_alias,simm12_pcrel_lo)
}

def i_jalr__opc_jalr__reg0__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "jalr x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000001100111;
// i_jalr(opc_jalr,reg0,reg0_alias,simm12_simple)
}

// warning: (BGW511): Invalid jump address computation. Address of a jump must be computed from only one input operand.
def i_jalr__opc_jalr__reg0__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "jalr x0, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000001100111;
// i_jalr(opc_jalr,reg0,regs,simm12_lo)
}

// warning: (BGW511): Invalid jump address computation. Address of a jump must be computed from only one input operand.
def i_jalr__opc_jalr__reg0__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "jalr x0, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000001100111;
// i_jalr(opc_jalr,reg0,regs,simm12_pcrel_lo)
}

def i_jalr__opc_jalr__reg0_alias__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "jalr zero, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000001100111;
// i_jalr(opc_jalr,reg0_alias,reg0,simm12_lo)
}

def i_jalr__opc_jalr__reg0_alias__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "jalr zero, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000001100111;
// i_jalr(opc_jalr,reg0_alias,reg0,simm12_pcrel_lo)
}

def i_jalr__opc_jalr__reg0_alias__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "jalr zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000001100111;
// i_jalr(opc_jalr,reg0_alias,reg0,simm12_simple)
}

def i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "jalr zero, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000001100111;
// i_jalr(opc_jalr,reg0_alias,reg0_alias,simm12_lo)
}

def i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "jalr zero, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000001100111;
// i_jalr(opc_jalr,reg0_alias,reg0_alias,simm12_pcrel_lo)
}

def i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "jalr zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000001100111;
// i_jalr(opc_jalr,reg0_alias,reg0_alias,simm12_simple)
}

def i_jalr__opc_jalr__reg0_alias__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "jalr zero, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000001100111;
// i_jalr(opc_jalr,reg0_alias,regs,simm12_lo)
}

def i_jalr__opc_jalr__reg0_alias__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "jalr zero, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000001100111;
// i_jalr(opc_jalr,reg0_alias,regs,simm12_pcrel_lo)
}

def i_jalr__opc_jalr__reg0_alias__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "jalr zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000001100111;
// i_jalr(opc_jalr,reg0_alias,regs,simm12_simple)
}

def i_jalr__opc_jalr__regs__reg0__simm12_lo__: CodasipMicroClass_<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_brtarg:$op1)>
{
let AsmString = "jalr $op0, x0, %lo ( $op1 )";
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1100111;
// i_jalr(opc_jalr,regs,reg0,simm12_lo)
}

def i_jalr__opc_jalr__regs__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_brtarg:$op1)>
{
let AsmString = "jalr $op0, x0, %pcrel_lo ( $op1 )";
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1100111;
// i_jalr(opc_jalr,regs,reg0,simm12_pcrel_lo)
}

def i_jalr__opc_jalr__regs__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "jalr $op0, zero, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1100111;
// i_jalr(opc_jalr,regs,reg0_alias,simm12_lo)
}

def i_jalr__opc_jalr__regs__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "jalr $op0, zero, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1100111;
// i_jalr(opc_jalr,regs,reg0_alias,simm12_pcrel_lo)
}

def i_jalr__opc_jalr__regs__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "jalr $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1100111;
// i_jalr(opc_jalr,regs,reg0_alias,simm12_simple)
}

// warning: (BGW511): Invalid jump address computation. Address of a jump must be computed from only one input operand.
def i_jalr__opc_jalr__regs__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op2)>
{
let AsmString = "jalr $op0, $op1, %lo ( $op2 )";
let Size = 4;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1100111;
// i_jalr(opc_jalr,regs,regs,simm12_lo)
}

// warning: (BGW511): Invalid jump address computation. Address of a jump must be computed from only one input operand.
def i_jalr__opc_jalr__regs__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op2)>
{
let AsmString = "jalr $op0, $op1, %pcrel_lo ( $op2 )";
let Size = 4;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1100111;
// i_jalr(opc_jalr,regs,regs,simm12_pcrel_lo)
}

def i_jalr_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "jalr x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000011100111;
// i_jalr_alias(reg0)
}

def i_jalr_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "jalr zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000011100111;
// i_jalr_alias(reg0_alias)
}

def i_jalr_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "jalr $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000011100111;
// i_jalr_alias(regs)
}

def i_jlr_alias__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "jr x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000001100111;
// i_jlr_alias(reg0,simm12_lo)
}

def i_jlr_alias__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "jr x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000001100111;
// i_jlr_alias(reg0,simm12_pcrel_lo)
}

def i_jlr_alias__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "jr x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000001100111;
// i_jlr_alias(reg0,simm12_simple)
}

def i_jlr_alias__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "jr zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000001100111;
// i_jlr_alias(reg0_alias,simm12_lo)
}

def i_jlr_alias__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "jr zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000001100111;
// i_jlr_alias(reg0_alias,simm12_pcrel_lo)
}

def i_jlr_alias__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "jr zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000001100111;
// i_jlr_alias(reg0_alias,simm12_simple)
}

def i_jlr_alias__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "jr $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000001100111;
// i_jlr_alias(regs,simm12_lo)
}

def i_jlr_alias__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "jr $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000001100111;
// i_jlr_alias(regs,simm12_pcrel_lo)
}

def i_jlr_alias__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "jr $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000001100111;
// i_jlr_alias(regs,simm12_simple)
}

def i_jump_reg_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "jr zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000001100111;
// i_jump_reg_alias(reg0_alias)
}

def i_la_alias__reg0__rel_addr32__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "la x0, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-52} = op0{11-0};
let Inst{51-32} = 0b00000000000000010011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_la_alias(reg0,rel_addr32)
}

def i_la_alias__reg0_alias__rel_addr32__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "la zero, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-52} = op0{11-0};
let Inst{51-32} = 0b00000000000000010011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_la_alias(reg0_alias,rel_addr32)
}

def i_la_alias__regs__rel_addr32__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1)>
{
let AsmString = "la $op0, $op1";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<15> op0;
bits<32> op1;
let Inst{63-52} = op1{11-0};
let Inst{51-47} = op0{4-0};
let Inst{46-44} = 0b000;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0010011;
let Inst{31-12} = op1{31-12};
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0010111;
// i_la_alias(regs,rel_addr32)
}

def i_li_aalias__reg0__imm32_lui_addi__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi_iAny:$op0)>
{
let AsmString = "li x0, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-52} = op0{11-0};
let Inst{51-32} = 0b00000000000000010011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000110111;
// i_li_aalias(reg0,imm32_lui_addi)
}

def i_li_aalias__reg0_alias__imm32_lui_addi__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi_iAny:$op0)>
{
let AsmString = "li zero, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-52} = op0{11-0};
let Inst{51-32} = 0b00000000000000010011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000110111;
// i_li_aalias(reg0_alias,imm32_lui_addi)
}

def i_li_aalias__regs__imm32_lui_addi__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi_iAny:$op1)>
{
let AsmString = "li $op0, $op1";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<15> op0;
bits<32> op1;
let Inst{63-52} = op1{11-0};
let Inst{51-47} = op0{4-0};
let Inst{46-44} = 0b000;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0010011;
let Inst{31-12} = op1{31-12};
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0110111;
// i_li_aalias(regs,imm32_lui_addi)
}

def i_lla_alias__reg0__rel_addr32__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "lla x0, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-52} = op0{11-0};
let Inst{51-32} = 0b00000000000000010011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_lla_alias(reg0,rel_addr32)
}

def i_lla_alias__reg0_alias__rel_addr32__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "lla zero, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-52} = op0{11-0};
let Inst{51-32} = 0b00000000000000010011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_lla_alias(reg0_alias,rel_addr32)
}

def i_lla_alias__regs__rel_addr32__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1)>
{
let AsmString = "lla $op0, $op1";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<15> op0;
bits<32> op1;
let Inst{63-52} = op1{11-0};
let Inst{51-47} = op0{4-0};
let Inst{46-44} = 0b000;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0010011;
let Inst{31-12} = op1{31-12};
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0010111;
// i_lla_alias(regs,rel_addr32)
}

def i_load__opc_loadb__reg0__simm12_lo__reg0__: CodasipMicroClass_sc_loads<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op0)>
{
let AsmString = "lb x0, %lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000000011;
// i_load(opc_loadb,reg0,simm12_lo,reg0)
}

def i_load__opc_loadb__reg0__simm12_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "lb x0, %lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000000011;
// i_load(opc_loadb,reg0,simm12_lo,reg0_alias)
}

def i_load__opc_loadb__reg0__simm12_lo__regs__: CodasipMicroClass_sc_loads<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op1)>
{
let AsmString = "lb x0, %lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000000011;
// i_load(opc_loadb,reg0,simm12_lo,regs)
}

def i_load__opc_loadb__reg0__simm12_pcrel_lo__reg0__: CodasipMicroClass_sc_loads<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op0)>
{
let AsmString = "lb x0, %pcrel_lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000000011;
// i_load(opc_loadb,reg0,simm12_pcrel_lo,reg0)
}

def i_load__opc_loadb__reg0__simm12_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "lb x0, %pcrel_lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000000011;
// i_load(opc_loadb,reg0,simm12_pcrel_lo,reg0_alias)
}

def i_load__opc_loadb__reg0__simm12_pcrel_lo__regs__: CodasipMicroClass_sc_loads<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op1)>
{
let AsmString = "lb x0, %pcrel_lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000000011;
// i_load(opc_loadb,reg0,simm12_pcrel_lo,regs)
}

def i_load__opc_loadb__reg0__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "lb x0, $op0 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000000011;
// i_load(opc_loadb,reg0,simm12_simple,reg0_alias)
}

def i_load__opc_loadb__reg0_alias__simm12_lo__reg0__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "lb zero, %lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000000011;
// i_load(opc_loadb,reg0_alias,simm12_lo,reg0)
}

def i_load__opc_loadb__reg0_alias__simm12_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "lb zero, %lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000000011;
// i_load(opc_loadb,reg0_alias,simm12_lo,reg0_alias)
}

def i_load__opc_loadb__reg0_alias__simm12_lo__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "lb zero, %lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000000011;
// i_load(opc_loadb,reg0_alias,simm12_lo,regs)
}

def i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__reg0__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "lb zero, %pcrel_lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000000011;
// i_load(opc_loadb,reg0_alias,simm12_pcrel_lo,reg0)
}

def i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "lb zero, %pcrel_lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000000011;
// i_load(opc_loadb,reg0_alias,simm12_pcrel_lo,reg0_alias)
}

def i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "lb zero, %pcrel_lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000000011;
// i_load(opc_loadb,reg0_alias,simm12_pcrel_lo,regs)
}

def i_load__opc_loadb__reg0_alias__simm12_simple__reg0__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "lb zero, $op0 ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000000011;
// i_load(opc_loadb,reg0_alias,simm12_simple,reg0)
}

def i_load__opc_loadb__reg0_alias__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "lb zero, $op0 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000000011;
// i_load(opc_loadb,reg0_alias,simm12_simple,reg0_alias)
}

def i_load__opc_loadb__reg0_alias__simm12_simple__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "lb zero, $op1 ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000000011;
// i_load(opc_loadb,reg0_alias,simm12_simple,regs)
}

def i_load__opc_loadb__regs__simm12_lo__reg0__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op1)>
{
let AsmString = "lb $op0, %lo ( $op1 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadb,regs,simm12_lo,reg0)
}

def i_load__opc_loadb__regs__simm12_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "lb $op0, %lo ( $op1 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadb,regs,simm12_lo,reg0_alias)
}

def i_load__opc_loadb__regs__simm12_lo__regs__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op2)>
{
let AsmString = "lb $op0, %lo ( $op2 ) ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadb,regs,simm12_lo,regs)
}

def i_load__opc_loadb__regs__simm12_pcrel_lo__reg0__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op1)>
{
let AsmString = "lb $op0, %pcrel_lo ( $op1 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadb,regs,simm12_pcrel_lo,reg0)
}

def i_load__opc_loadb__regs__simm12_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "lb $op0, %pcrel_lo ( $op1 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadb,regs,simm12_pcrel_lo,reg0_alias)
}

def i_load__opc_loadb__regs__simm12_pcrel_lo__regs__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op2)>
{
let AsmString = "lb $op0, %pcrel_lo ( $op2 ) ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadb,regs,simm12_pcrel_lo,regs)
}

def i_load__opc_loadb__regs__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "lb $op0, $op1 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadb,regs,simm12_simple,reg0_alias)
}

def i_load__opc_loadbu__reg0__simm12_lo__reg0__: CodasipMicroClass_sc_loads<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op0)>
{
let AsmString = "lbu x0, %lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000000011;
// i_load(opc_loadbu,reg0,simm12_lo,reg0)
}

def i_load__opc_loadbu__reg0__simm12_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "lbu x0, %lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000000011;
// i_load(opc_loadbu,reg0,simm12_lo,reg0_alias)
}

def i_load__opc_loadbu__reg0__simm12_lo__regs__: CodasipMicroClass_sc_loads<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op1)>
{
let AsmString = "lbu x0, %lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000000011;
// i_load(opc_loadbu,reg0,simm12_lo,regs)
}

def i_load__opc_loadbu__reg0__simm12_pcrel_lo__reg0__: CodasipMicroClass_sc_loads<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op0)>
{
let AsmString = "lbu x0, %pcrel_lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000000011;
// i_load(opc_loadbu,reg0,simm12_pcrel_lo,reg0)
}

def i_load__opc_loadbu__reg0__simm12_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "lbu x0, %pcrel_lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000000011;
// i_load(opc_loadbu,reg0,simm12_pcrel_lo,reg0_alias)
}

def i_load__opc_loadbu__reg0__simm12_pcrel_lo__regs__: CodasipMicroClass_sc_loads<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op1)>
{
let AsmString = "lbu x0, %pcrel_lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000000011;
// i_load(opc_loadbu,reg0,simm12_pcrel_lo,regs)
}

def i_load__opc_loadbu__reg0__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "lbu x0, $op0 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000000011;
// i_load(opc_loadbu,reg0,simm12_simple,reg0_alias)
}

def i_load__opc_loadbu__reg0_alias__simm12_lo__reg0__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "lbu zero, %lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000000011;
// i_load(opc_loadbu,reg0_alias,simm12_lo,reg0)
}

def i_load__opc_loadbu__reg0_alias__simm12_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "lbu zero, %lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000000011;
// i_load(opc_loadbu,reg0_alias,simm12_lo,reg0_alias)
}

def i_load__opc_loadbu__reg0_alias__simm12_lo__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "lbu zero, %lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000000011;
// i_load(opc_loadbu,reg0_alias,simm12_lo,regs)
}

def i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__reg0__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "lbu zero, %pcrel_lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000000011;
// i_load(opc_loadbu,reg0_alias,simm12_pcrel_lo,reg0)
}

def i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "lbu zero, %pcrel_lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000000011;
// i_load(opc_loadbu,reg0_alias,simm12_pcrel_lo,reg0_alias)
}

def i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "lbu zero, %pcrel_lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000000011;
// i_load(opc_loadbu,reg0_alias,simm12_pcrel_lo,regs)
}

def i_load__opc_loadbu__reg0_alias__simm12_simple__reg0__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "lbu zero, $op0 ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000000011;
// i_load(opc_loadbu,reg0_alias,simm12_simple,reg0)
}

def i_load__opc_loadbu__reg0_alias__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "lbu zero, $op0 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000000011;
// i_load(opc_loadbu,reg0_alias,simm12_simple,reg0_alias)
}

def i_load__opc_loadbu__reg0_alias__simm12_simple__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "lbu zero, $op1 ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000000011;
// i_load(opc_loadbu,reg0_alias,simm12_simple,regs)
}

def i_load__opc_loadbu__regs__simm12_lo__reg0__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op1)>
{
let AsmString = "lbu $op0, %lo ( $op1 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadbu,regs,simm12_lo,reg0)
}

def i_load__opc_loadbu__regs__simm12_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "lbu $op0, %lo ( $op1 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadbu,regs,simm12_lo,reg0_alias)
}

def i_load__opc_loadbu__regs__simm12_lo__regs__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op2)>
{
let AsmString = "lbu $op0, %lo ( $op2 ) ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadbu,regs,simm12_lo,regs)
}

def i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op1)>
{
let AsmString = "lbu $op0, %pcrel_lo ( $op1 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadbu,regs,simm12_pcrel_lo,reg0)
}

def i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "lbu $op0, %pcrel_lo ( $op1 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadbu,regs,simm12_pcrel_lo,reg0_alias)
}

def i_load__opc_loadbu__regs__simm12_pcrel_lo__regs__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op2)>
{
let AsmString = "lbu $op0, %pcrel_lo ( $op2 ) ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadbu,regs,simm12_pcrel_lo,regs)
}

def i_load__opc_loadbu__regs__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "lbu $op0, $op1 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadbu,regs,simm12_simple,reg0_alias)
}

def i_load__opc_loadh__reg0__simm12_lo__reg0__: CodasipMicroClass_sc_loads<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op0)>
{
let AsmString = "lh x0, %lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000000000011;
// i_load(opc_loadh,reg0,simm12_lo,reg0)
}

def i_load__opc_loadh__reg0__simm12_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "lh x0, %lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000000000011;
// i_load(opc_loadh,reg0,simm12_lo,reg0_alias)
}

def i_load__opc_loadh__reg0__simm12_lo__regs__: CodasipMicroClass_sc_loads<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op1)>
{
let AsmString = "lh x0, %lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000000011;
// i_load(opc_loadh,reg0,simm12_lo,regs)
}

def i_load__opc_loadh__reg0__simm12_pcrel_lo__reg0__: CodasipMicroClass_sc_loads<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op0)>
{
let AsmString = "lh x0, %pcrel_lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000000000011;
// i_load(opc_loadh,reg0,simm12_pcrel_lo,reg0)
}

def i_load__opc_loadh__reg0__simm12_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "lh x0, %pcrel_lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000000000011;
// i_load(opc_loadh,reg0,simm12_pcrel_lo,reg0_alias)
}

def i_load__opc_loadh__reg0__simm12_pcrel_lo__regs__: CodasipMicroClass_sc_loads<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op1)>
{
let AsmString = "lh x0, %pcrel_lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000000011;
// i_load(opc_loadh,reg0,simm12_pcrel_lo,regs)
}

def i_load__opc_loadh__reg0__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "lh x0, $op0 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000000000011;
// i_load(opc_loadh,reg0,simm12_simple,reg0_alias)
}

def i_load__opc_loadh__reg0_alias__simm12_lo__reg0__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "lh zero, %lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000000000011;
// i_load(opc_loadh,reg0_alias,simm12_lo,reg0)
}

def i_load__opc_loadh__reg0_alias__simm12_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "lh zero, %lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000000000011;
// i_load(opc_loadh,reg0_alias,simm12_lo,reg0_alias)
}

def i_load__opc_loadh__reg0_alias__simm12_lo__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "lh zero, %lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000000011;
// i_load(opc_loadh,reg0_alias,simm12_lo,regs)
}

def i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__reg0__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "lh zero, %pcrel_lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000000000011;
// i_load(opc_loadh,reg0_alias,simm12_pcrel_lo,reg0)
}

def i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "lh zero, %pcrel_lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000000000011;
// i_load(opc_loadh,reg0_alias,simm12_pcrel_lo,reg0_alias)
}

def i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "lh zero, %pcrel_lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000000011;
// i_load(opc_loadh,reg0_alias,simm12_pcrel_lo,regs)
}

def i_load__opc_loadh__reg0_alias__simm12_simple__reg0__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "lh zero, $op0 ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000000000011;
// i_load(opc_loadh,reg0_alias,simm12_simple,reg0)
}

def i_load__opc_loadh__reg0_alias__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "lh zero, $op0 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000001000000000011;
// i_load(opc_loadh,reg0_alias,simm12_simple,reg0_alias)
}

def i_load__opc_loadh__reg0_alias__simm12_simple__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "lh zero, $op1 ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000000011;
// i_load(opc_loadh,reg0_alias,simm12_simple,regs)
}

def i_load__opc_loadh__regs__simm12_lo__reg0__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op1)>
{
let AsmString = "lh $op0, %lo ( $op1 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadh,regs,simm12_lo,reg0)
}

def i_load__opc_loadh__regs__simm12_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "lh $op0, %lo ( $op1 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadh,regs,simm12_lo,reg0_alias)
}

def i_load__opc_loadh__regs__simm12_lo__regs__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op2)>
{
let AsmString = "lh $op0, %lo ( $op2 ) ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadh,regs,simm12_lo,regs)
}

def i_load__opc_loadh__regs__simm12_pcrel_lo__reg0__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op1)>
{
let AsmString = "lh $op0, %pcrel_lo ( $op1 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadh,regs,simm12_pcrel_lo,reg0)
}

def i_load__opc_loadh__regs__simm12_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "lh $op0, %pcrel_lo ( $op1 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadh,regs,simm12_pcrel_lo,reg0_alias)
}

def i_load__opc_loadh__regs__simm12_pcrel_lo__regs__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op2)>
{
let AsmString = "lh $op0, %pcrel_lo ( $op2 ) ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadh,regs,simm12_pcrel_lo,regs)
}

def i_load__opc_loadh__regs__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "lh $op0, $op1 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadh,regs,simm12_simple,reg0_alias)
}

def i_load__opc_loadhu__reg0__simm12_lo__reg0__: CodasipMicroClass_sc_loads<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op0)>
{
let AsmString = "lhu x0, %lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000101000000000011;
// i_load(opc_loadhu,reg0,simm12_lo,reg0)
}

def i_load__opc_loadhu__reg0__simm12_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "lhu x0, %lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000101000000000011;
// i_load(opc_loadhu,reg0,simm12_lo,reg0_alias)
}

def i_load__opc_loadhu__reg0__simm12_lo__regs__: CodasipMicroClass_sc_loads<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op1)>
{
let AsmString = "lhu x0, %lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000000011;
// i_load(opc_loadhu,reg0,simm12_lo,regs)
}

def i_load__opc_loadhu__reg0__simm12_pcrel_lo__reg0__: CodasipMicroClass_sc_loads<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op0)>
{
let AsmString = "lhu x0, %pcrel_lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000101000000000011;
// i_load(opc_loadhu,reg0,simm12_pcrel_lo,reg0)
}

def i_load__opc_loadhu__reg0__simm12_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "lhu x0, %pcrel_lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000101000000000011;
// i_load(opc_loadhu,reg0,simm12_pcrel_lo,reg0_alias)
}

def i_load__opc_loadhu__reg0__simm12_pcrel_lo__regs__: CodasipMicroClass_sc_loads<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op1)>
{
let AsmString = "lhu x0, %pcrel_lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000000011;
// i_load(opc_loadhu,reg0,simm12_pcrel_lo,regs)
}

def i_load__opc_loadhu__reg0__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "lhu x0, $op0 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000101000000000011;
// i_load(opc_loadhu,reg0,simm12_simple,reg0_alias)
}

def i_load__opc_loadhu__reg0_alias__simm12_lo__reg0__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "lhu zero, %lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000101000000000011;
// i_load(opc_loadhu,reg0_alias,simm12_lo,reg0)
}

def i_load__opc_loadhu__reg0_alias__simm12_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "lhu zero, %lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000101000000000011;
// i_load(opc_loadhu,reg0_alias,simm12_lo,reg0_alias)
}

def i_load__opc_loadhu__reg0_alias__simm12_lo__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "lhu zero, %lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000000011;
// i_load(opc_loadhu,reg0_alias,simm12_lo,regs)
}

def i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__reg0__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "lhu zero, %pcrel_lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000101000000000011;
// i_load(opc_loadhu,reg0_alias,simm12_pcrel_lo,reg0)
}

def i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "lhu zero, %pcrel_lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000101000000000011;
// i_load(opc_loadhu,reg0_alias,simm12_pcrel_lo,reg0_alias)
}

def i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "lhu zero, %pcrel_lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000000011;
// i_load(opc_loadhu,reg0_alias,simm12_pcrel_lo,regs)
}

def i_load__opc_loadhu__reg0_alias__simm12_simple__reg0__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "lhu zero, $op0 ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000101000000000011;
// i_load(opc_loadhu,reg0_alias,simm12_simple,reg0)
}

def i_load__opc_loadhu__reg0_alias__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "lhu zero, $op0 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000101000000000011;
// i_load(opc_loadhu,reg0_alias,simm12_simple,reg0_alias)
}

def i_load__opc_loadhu__reg0_alias__simm12_simple__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "lhu zero, $op1 ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000000011;
// i_load(opc_loadhu,reg0_alias,simm12_simple,regs)
}

def i_load__opc_loadhu__regs__simm12_lo__reg0__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op1)>
{
let AsmString = "lhu $op0, %lo ( $op1 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadhu,regs,simm12_lo,reg0)
}

def i_load__opc_loadhu__regs__simm12_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "lhu $op0, %lo ( $op1 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadhu,regs,simm12_lo,reg0_alias)
}

def i_load__opc_loadhu__regs__simm12_lo__regs__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op2)>
{
let AsmString = "lhu $op0, %lo ( $op2 ) ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadhu,regs,simm12_lo,regs)
}

def i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op1)>
{
let AsmString = "lhu $op0, %pcrel_lo ( $op1 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadhu,regs,simm12_pcrel_lo,reg0)
}

def i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "lhu $op0, %pcrel_lo ( $op1 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadhu,regs,simm12_pcrel_lo,reg0_alias)
}

def i_load__opc_loadhu__regs__simm12_pcrel_lo__regs__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op2)>
{
let AsmString = "lhu $op0, %pcrel_lo ( $op2 ) ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadhu,regs,simm12_pcrel_lo,regs)
}

def i_load__opc_loadhu__regs__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "lhu $op0, $op1 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadhu,regs,simm12_simple,reg0_alias)
}

def i_load__opc_loadw__reg0__simm12_lo__reg0__: CodasipMicroClass_sc_loads<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op0)>
{
let AsmString = "lw x0, %lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000000011;
// i_load(opc_loadw,reg0,simm12_lo,reg0)
}

def i_load__opc_loadw__reg0__simm12_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "lw x0, %lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000000011;
// i_load(opc_loadw,reg0,simm12_lo,reg0_alias)
}

def i_load__opc_loadw__reg0__simm12_lo__regs__: CodasipMicroClass_sc_loads<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op1)>
{
let AsmString = "lw x0, %lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000000011;
// i_load(opc_loadw,reg0,simm12_lo,regs)
}

def i_load__opc_loadw__reg0__simm12_pcrel_lo__reg0__: CodasipMicroClass_sc_loads<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op0)>
{
let AsmString = "lw x0, %pcrel_lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000000011;
// i_load(opc_loadw,reg0,simm12_pcrel_lo,reg0)
}

def i_load__opc_loadw__reg0__simm12_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "lw x0, %pcrel_lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000000011;
// i_load(opc_loadw,reg0,simm12_pcrel_lo,reg0_alias)
}

def i_load__opc_loadw__reg0__simm12_pcrel_lo__regs__: CodasipMicroClass_sc_loads<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op1)>
{
let AsmString = "lw x0, %pcrel_lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000000011;
// i_load(opc_loadw,reg0,simm12_pcrel_lo,regs)
}

def i_load__opc_loadw__reg0__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "lw x0, $op0 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000000011;
// i_load(opc_loadw,reg0,simm12_simple,reg0_alias)
}

def i_load__opc_loadw__reg0_alias__simm12_lo__reg0__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "lw zero, %lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000000011;
// i_load(opc_loadw,reg0_alias,simm12_lo,reg0)
}

def i_load__opc_loadw__reg0_alias__simm12_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "lw zero, %lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000000011;
// i_load(opc_loadw,reg0_alias,simm12_lo,reg0_alias)
}

def i_load__opc_loadw__reg0_alias__simm12_lo__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "lw zero, %lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000000011;
// i_load(opc_loadw,reg0_alias,simm12_lo,regs)
}

def i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__reg0__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "lw zero, %pcrel_lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000000011;
// i_load(opc_loadw,reg0_alias,simm12_pcrel_lo,reg0)
}

def i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "lw zero, %pcrel_lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000000011;
// i_load(opc_loadw,reg0_alias,simm12_pcrel_lo,reg0_alias)
}

def i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "lw zero, %pcrel_lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000000011;
// i_load(opc_loadw,reg0_alias,simm12_pcrel_lo,regs)
}

def i_load__opc_loadw__reg0_alias__simm12_simple__reg0__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "lw zero, $op0 ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000000011;
// i_load(opc_loadw,reg0_alias,simm12_simple,reg0)
}

def i_load__opc_loadw__reg0_alias__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "lw zero, $op0 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000000011;
// i_load(opc_loadw,reg0_alias,simm12_simple,reg0_alias)
}

def i_load__opc_loadw__reg0_alias__simm12_simple__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "lw zero, $op1 ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000000011;
// i_load(opc_loadw,reg0_alias,simm12_simple,regs)
}

def i_load__opc_loadw__regs__simm12_lo__reg0__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op1)>
{
let AsmString = "lw $op0, %lo ( $op1 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadw,regs,simm12_lo,reg0)
}

def i_load__opc_loadw__regs__simm12_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "lw $op0, %lo ( $op1 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadw,regs,simm12_lo,reg0_alias)
}

def i_load__opc_loadw__regs__simm12_lo__regs__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op2)>
{
let AsmString = "lw $op0, %lo ( $op2 ) ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadw,regs,simm12_lo,regs)
}

def i_load__opc_loadw__regs__simm12_pcrel_lo__reg0__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op1)>
{
let AsmString = "lw $op0, %pcrel_lo ( $op1 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadw,regs,simm12_pcrel_lo,reg0)
}

def i_load__opc_loadw__regs__simm12_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "lw $op0, %pcrel_lo ( $op1 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadw,regs,simm12_pcrel_lo,reg0_alias)
}

def i_load__opc_loadw__regs__simm12_pcrel_lo__regs__: CodasipMicroClass_sc_loads<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op2)>
{
let AsmString = "lw $op0, %pcrel_lo ( $op2 ) ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadw,regs,simm12_pcrel_lo,regs)
}

def i_load__opc_loadw__regs__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "lw $op0, $op1 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load(opc_loadw,regs,simm12_simple,reg0_alias)
}

def i_load_alias__opc_loadb__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lb x0, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000000011;
// i_load_alias(opc_loadb,reg0,reg0)
}

def i_load_alias__opc_loadb__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lb x0, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000000011;
// i_load_alias(opc_loadb,reg0,reg0_alias)
}

def i_load_alias__opc_loadb__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lb x0, ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000000011;
// i_load_alias(opc_loadb,reg0,regs)
}

def i_load_alias__opc_loadb__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lb zero, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000000011;
// i_load_alias(opc_loadb,reg0_alias,reg0)
}

def i_load_alias__opc_loadb__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lb zero, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000000011;
// i_load_alias(opc_loadb,reg0_alias,reg0_alias)
}

def i_load_alias__opc_loadb__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lb zero, ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000000011;
// i_load_alias(opc_loadb,reg0_alias,regs)
}

def i_load_alias__opc_loadb__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lb $op0, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load_alias(opc_loadb,regs,reg0)
}

def i_load_alias__opc_loadb__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lb $op0, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load_alias(opc_loadb,regs,reg0_alias)
}

def i_load_alias__opc_loadb__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "lb $op0, ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load_alias(opc_loadb,regs,regs)
}

def i_load_alias__opc_loadbu__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lbu x0, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000100000000000011;
// i_load_alias(opc_loadbu,reg0,reg0)
}

def i_load_alias__opc_loadbu__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lbu x0, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000100000000000011;
// i_load_alias(opc_loadbu,reg0,reg0_alias)
}

def i_load_alias__opc_loadbu__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lbu x0, ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000000011;
// i_load_alias(opc_loadbu,reg0,regs)
}

def i_load_alias__opc_loadbu__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lbu zero, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000100000000000011;
// i_load_alias(opc_loadbu,reg0_alias,reg0)
}

def i_load_alias__opc_loadbu__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lbu zero, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000100000000000011;
// i_load_alias(opc_loadbu,reg0_alias,reg0_alias)
}

def i_load_alias__opc_loadbu__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lbu zero, ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000000011;
// i_load_alias(opc_loadbu,reg0_alias,regs)
}

def i_load_alias__opc_loadbu__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lbu $op0, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load_alias(opc_loadbu,regs,reg0)
}

def i_load_alias__opc_loadbu__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lbu $op0, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load_alias(opc_loadbu,regs,reg0_alias)
}

def i_load_alias__opc_loadbu__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "lbu $op0, ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load_alias(opc_loadbu,regs,regs)
}

def i_load_alias__opc_loadh__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lh x0, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000000011;
// i_load_alias(opc_loadh,reg0,reg0)
}

def i_load_alias__opc_loadh__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lh x0, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000000011;
// i_load_alias(opc_loadh,reg0,reg0_alias)
}

def i_load_alias__opc_loadh__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lh x0, ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000000011;
// i_load_alias(opc_loadh,reg0,regs)
}

def i_load_alias__opc_loadh__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lh zero, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000000011;
// i_load_alias(opc_loadh,reg0_alias,reg0)
}

def i_load_alias__opc_loadh__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lh zero, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000000011;
// i_load_alias(opc_loadh,reg0_alias,reg0_alias)
}

def i_load_alias__opc_loadh__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lh zero, ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000000011;
// i_load_alias(opc_loadh,reg0_alias,regs)
}

def i_load_alias__opc_loadh__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lh $op0, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load_alias(opc_loadh,regs,reg0)
}

def i_load_alias__opc_loadh__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lh $op0, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load_alias(opc_loadh,regs,reg0_alias)
}

def i_load_alias__opc_loadh__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "lh $op0, ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load_alias(opc_loadh,regs,regs)
}

def i_load_alias__opc_loadhu__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lhu x0, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000101000000000011;
// i_load_alias(opc_loadhu,reg0,reg0)
}

def i_load_alias__opc_loadhu__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lhu x0, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000101000000000011;
// i_load_alias(opc_loadhu,reg0,reg0_alias)
}

def i_load_alias__opc_loadhu__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lhu x0, ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000000011;
// i_load_alias(opc_loadhu,reg0,regs)
}

def i_load_alias__opc_loadhu__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lhu zero, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000101000000000011;
// i_load_alias(opc_loadhu,reg0_alias,reg0)
}

def i_load_alias__opc_loadhu__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lhu zero, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000101000000000011;
// i_load_alias(opc_loadhu,reg0_alias,reg0_alias)
}

def i_load_alias__opc_loadhu__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lhu zero, ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000000011;
// i_load_alias(opc_loadhu,reg0_alias,regs)
}

def i_load_alias__opc_loadhu__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lhu $op0, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load_alias(opc_loadhu,regs,reg0)
}

def i_load_alias__opc_loadhu__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lhu $op0, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load_alias(opc_loadhu,regs,reg0_alias)
}

def i_load_alias__opc_loadhu__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "lhu $op0, ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load_alias(opc_loadhu,regs,regs)
}

def i_load_alias__opc_loadw__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lw x0, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000000011;
// i_load_alias(opc_loadw,reg0,reg0)
}

def i_load_alias__opc_loadw__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lw x0, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000000011;
// i_load_alias(opc_loadw,reg0,reg0_alias)
}

def i_load_alias__opc_loadw__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lw x0, ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000000011;
// i_load_alias(opc_loadw,reg0,regs)
}

def i_load_alias__opc_loadw__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lw zero, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000000011;
// i_load_alias(opc_loadw,reg0_alias,reg0)
}

def i_load_alias__opc_loadw__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lw zero, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000000011;
// i_load_alias(opc_loadw,reg0_alias,reg0_alias)
}

def i_load_alias__opc_loadw__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lw zero, ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000000011;
// i_load_alias(opc_loadw,reg0_alias,regs)
}

def i_load_alias__opc_loadw__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lw $op0, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load_alias(opc_loadw,regs,reg0)
}

def i_load_alias__opc_loadw__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "lw $op0, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load_alias(opc_loadw,regs,reg0_alias)
}

def i_load_alias__opc_loadw__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "lw $op0, ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0000011;
// i_load_alias(opc_loadw,regs,regs)
}

def i_load_global_alias__opc_loadb__reg0__rel_addr32__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "lb x0, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-52} = op0{11-0};
let Inst{51-32} = 0b00000000000000000011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_load_global_alias(opc_loadb,reg0,rel_addr32)
}

def i_load_global_alias__opc_loadb__reg0_alias__rel_addr32__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "lb zero, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-52} = op0{11-0};
let Inst{51-32} = 0b00000000000000000011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_load_global_alias(opc_loadb,reg0_alias,rel_addr32)
}

def i_load_global_alias__opc_loadb__regs__rel_addr32__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1)>
{
let AsmString = "lb $op0, $op1";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<15> op0;
bits<32> op1;
let Inst{63-52} = op1{11-0};
let Inst{51-47} = op0{4-0};
let Inst{46-44} = 0b000;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0000011;
let Inst{31-12} = op1{31-12};
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0010111;
// i_load_global_alias(opc_loadb,regs,rel_addr32)
}

def i_load_global_alias__opc_loadbu__reg0__rel_addr32__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "lbu x0, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-52} = op0{11-0};
let Inst{51-32} = 0b00000100000000000011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_load_global_alias(opc_loadbu,reg0,rel_addr32)
}

def i_load_global_alias__opc_loadbu__reg0_alias__rel_addr32__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "lbu zero, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-52} = op0{11-0};
let Inst{51-32} = 0b00000100000000000011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_load_global_alias(opc_loadbu,reg0_alias,rel_addr32)
}

def i_load_global_alias__opc_loadbu__regs__rel_addr32__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1)>
{
let AsmString = "lbu $op0, $op1";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<15> op0;
bits<32> op1;
let Inst{63-52} = op1{11-0};
let Inst{51-47} = op0{4-0};
let Inst{46-44} = 0b100;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0000011;
let Inst{31-12} = op1{31-12};
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0010111;
// i_load_global_alias(opc_loadbu,regs,rel_addr32)
}

def i_load_global_alias__opc_loadh__reg0__rel_addr32__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "lh x0, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-52} = op0{11-0};
let Inst{51-32} = 0b00000001000000000011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_load_global_alias(opc_loadh,reg0,rel_addr32)
}

def i_load_global_alias__opc_loadh__reg0_alias__rel_addr32__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "lh zero, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-52} = op0{11-0};
let Inst{51-32} = 0b00000001000000000011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_load_global_alias(opc_loadh,reg0_alias,rel_addr32)
}

def i_load_global_alias__opc_loadh__regs__rel_addr32__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1)>
{
let AsmString = "lh $op0, $op1";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<15> op0;
bits<32> op1;
let Inst{63-52} = op1{11-0};
let Inst{51-47} = op0{4-0};
let Inst{46-44} = 0b001;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0000011;
let Inst{31-12} = op1{31-12};
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0010111;
// i_load_global_alias(opc_loadh,regs,rel_addr32)
}

def i_load_global_alias__opc_loadhu__reg0__rel_addr32__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "lhu x0, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-52} = op0{11-0};
let Inst{51-32} = 0b00000101000000000011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_load_global_alias(opc_loadhu,reg0,rel_addr32)
}

def i_load_global_alias__opc_loadhu__reg0_alias__rel_addr32__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "lhu zero, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-52} = op0{11-0};
let Inst{51-32} = 0b00000101000000000011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_load_global_alias(opc_loadhu,reg0_alias,rel_addr32)
}

def i_load_global_alias__opc_loadhu__regs__rel_addr32__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1)>
{
let AsmString = "lhu $op0, $op1";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<15> op0;
bits<32> op1;
let Inst{63-52} = op1{11-0};
let Inst{51-47} = op0{4-0};
let Inst{46-44} = 0b101;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0000011;
let Inst{31-12} = op1{31-12};
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0010111;
// i_load_global_alias(opc_loadhu,regs,rel_addr32)
}

def i_load_global_alias__opc_loadw__reg0__rel_addr32__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "lw x0, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-52} = op0{11-0};
let Inst{51-32} = 0b00000010000000000011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_load_global_alias(opc_loadw,reg0,rel_addr32)
}

def i_load_global_alias__opc_loadw__reg0_alias__rel_addr32__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "lw zero, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-52} = op0{11-0};
let Inst{51-32} = 0b00000010000000000011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_load_global_alias(opc_loadw,reg0_alias,rel_addr32)
}

def i_load_global_alias__opc_loadw__regs__rel_addr32__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1)>
{
let AsmString = "lw $op0, $op1";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<15> op0;
bits<32> op1;
let Inst{63-52} = op1{11-0};
let Inst{51-47} = op0{4-0};
let Inst{46-44} = 0b010;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0000011;
let Inst{31-12} = op1{31-12};
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0010111;
// i_load_global_alias(opc_loadw,regs,rel_addr32)
}

def i_lui__opc_lui__reg0_alias__imm20_s12__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12_iAny:$op0)>
{
let AsmString = "lui zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<20> op0;
let Inst{31-12} = op0;
let Inst{11-0} = 0b000000110111;
// i_lui(opc_lui,reg0_alias,imm20_s12)
}

// warning: (BGW589): Has unused operands.
def i_lui_hi__opc_lui__reg0__imm20_hi__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi_iAny:$op0)>
{
let AsmString = "lui x0, %hi ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<20> op0;
let Inst{31-12} = op0;
let Inst{11-0} = 0b000000110111;
// i_lui_hi(opc_lui,reg0,imm20_hi)
}

def i_lui_hi__opc_lui__reg0_alias__imm20_hi__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi_iAny:$op0)>
{
let AsmString = "lui zero, %hi ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<20> op0;
let Inst{31-12} = op0;
let Inst{11-0} = 0b000000110111;
// i_lui_hi(opc_lui,reg0_alias,imm20_hi)
}

def i_lui_hi__opc_lui__regs__imm20_hi__: CodasipMicroClass_<(outs regs:$op0), (ins MI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi_i32:$op1)>
{
let AsmString = "lui $op0, %hi ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<20> op1;
let Inst{31-12} = op1;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110111;
// i_lui_hi(opc_lui,regs,imm20_hi)
}

def i_move_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "move x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000010011;
// i_move_alias(reg0,reg0)
}

def i_move_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "move x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000010011;
// i_move_alias(reg0,reg0_alias)
}

def i_move_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "move x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000010011;
// i_move_alias(reg0,regs)
}

def i_move_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "move zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000010011;
// i_move_alias(reg0_alias,reg0)
}

def i_move_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "move zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000010011;
// i_move_alias(reg0_alias,reg0_alias)
}

def i_move_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "move zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000010011;
// i_move_alias(reg0_alias,regs)
}

def i_move_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "move $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_move_alias(regs,reg0)
}

def i_move_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "move $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_move_alias(regs,reg0_alias)
}

def i_move_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "move $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_move_alias(regs,regs)
}

def i_mv_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "mv x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000010011;
// i_mv_alias(reg0,reg0_alias)
}

def i_mv_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "mv zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000010011;
// i_mv_alias(reg0_alias,reg0)
}

def i_mv_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "mv zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000010011;
// i_mv_alias(reg0_alias,reg0_alias)
}

def i_mv_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "mv zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000010011;
// i_mv_alias(reg0_alias,regs)
}

def i_mv_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "mv $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_mv_alias(regs,reg0_alias)
}

def i_neg_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "neg x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b01000000000000000000000000110011;
// i_neg_alias(reg0,reg0_alias)
}

def i_neg_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "neg zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b01000000000000000000000000110011;
// i_neg_alias(reg0_alias,reg0)
}

def i_neg_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "neg zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b01000000000000000000000000110011;
// i_neg_alias(reg0_alias,reg0_alias)
}

def i_neg_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "neg zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000000000000110011;
// i_neg_alias(reg0_alias,regs)
}

def i_neg_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "neg $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b01000000000000000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_neg_alias(regs,reg0_alias)
}

def i_not_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "not x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b11111111111100000100000000010011;
// i_not_alias(reg0,reg0)
}

def i_not_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "not x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b11111111111100000100000000010011;
// i_not_alias(reg0,reg0_alias)
}

def i_not_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "not x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b111111111111;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000010011;
// i_not_alias(reg0,regs)
}

def i_not_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "not zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b11111111111100000100000000010011;
// i_not_alias(reg0_alias,reg0)
}

def i_not_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "not zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b11111111111100000100000000010011;
// i_not_alias(reg0_alias,reg0_alias)
}

def i_not_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "not zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b111111111111;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000010011;
// i_not_alias(reg0_alias,regs)
}

def i_not_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "not $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b11111111111100000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_not_alias(regs,reg0)
}

def i_not_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "not $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b11111111111100000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_not_alias(regs,reg0_alias)
}

def i_not_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "not $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b111111111111;
let Inst{19-15} = op1;
let Inst{14-12} = 0b100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_not_alias(regs,regs)
}

def i_ori_alias__reg0__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "ori x0, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_ori_alias(reg0,reg0,simm12_lo)
}

def i_ori_alias__reg0__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "ori x0, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_ori_alias(reg0,reg0,simm12_pcrel_lo)
}

def i_ori_alias__reg0__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "ori x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_ori_alias(reg0,reg0,simm12_simple)
}

def i_ori_alias__reg0__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "ori x0, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_ori_alias(reg0,reg0_alias,simm12_lo)
}

def i_ori_alias__reg0__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "ori x0, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_ori_alias(reg0,reg0_alias,simm12_pcrel_lo)
}

def i_ori_alias__reg0__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "ori x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_ori_alias(reg0,reg0_alias,simm12_simple)
}

def i_ori_alias__reg0__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "ori x0, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000010011;
// i_ori_alias(reg0,regs,simm12_lo)
}

def i_ori_alias__reg0__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "ori x0, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000010011;
// i_ori_alias(reg0,regs,simm12_pcrel_lo)
}

def i_ori_alias__reg0__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "ori x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000010011;
// i_ori_alias(reg0,regs,simm12_simple)
}

def i_ori_alias__reg0_alias__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "ori zero, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_ori_alias(reg0_alias,reg0,simm12_lo)
}

def i_ori_alias__reg0_alias__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "ori zero, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_ori_alias(reg0_alias,reg0,simm12_pcrel_lo)
}

def i_ori_alias__reg0_alias__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "ori zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_ori_alias(reg0_alias,reg0,simm12_simple)
}

def i_ori_alias__reg0_alias__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "ori zero, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_ori_alias(reg0_alias,reg0_alias,simm12_lo)
}

def i_ori_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "ori zero, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_ori_alias(reg0_alias,reg0_alias,simm12_pcrel_lo)
}

def i_ori_alias__reg0_alias__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "ori zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_ori_alias(reg0_alias,reg0_alias,simm12_simple)
}

def i_ori_alias__reg0_alias__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "ori zero, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000010011;
// i_ori_alias(reg0_alias,regs,simm12_lo)
}

def i_ori_alias__reg0_alias__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "ori zero, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000010011;
// i_ori_alias(reg0_alias,regs,simm12_pcrel_lo)
}

def i_ori_alias__reg0_alias__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "ori zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000010011;
// i_ori_alias(reg0_alias,regs,simm12_simple)
}

def i_ori_alias__regs__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "ori $op0, x0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_ori_alias(regs,reg0,simm12_lo)
}

def i_ori_alias__regs__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "ori $op0, x0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_ori_alias(regs,reg0,simm12_pcrel_lo)
}

def i_ori_alias__regs__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "ori $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_ori_alias(regs,reg0,simm12_simple)
}

def i_ori_alias__regs__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "ori $op0, zero, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_ori_alias(regs,reg0_alias,simm12_lo)
}

def i_ori_alias__regs__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "ori $op0, zero, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_ori_alias(regs,reg0_alias,simm12_pcrel_lo)
}

def i_ori_alias__regs__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "ori $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_ori_alias(regs,reg0_alias,simm12_simple)
}

def i_ori_alias__regs__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op2)>
{
let AsmString = "ori $op0, $op1, %lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_ori_alias(regs,regs,simm12_lo)
}

def i_ori_alias__regs__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op2)>
{
let AsmString = "ori $op0, $op1, %pcrel_lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_ori_alias(regs,regs,simm12_pcrel_lo)
}

def i_ori_alias__regs__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op2)>
{
let AsmString = "ori $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_ori_alias(regs,regs,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_ori_emulation_alias__reg0__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "or x0, x0, %lo ( $op0 ) & 0xfff";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ori_emulation_alias(reg0,reg0,simm12_lo)
}

// warning: (BGW589): Has unused operands.
def i_ori_emulation_alias__reg0__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "or x0, x0, %pcrel_lo ( $op0 ) & 0xfff";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ori_emulation_alias(reg0,reg0,simm12_pcrel_lo)
}

// warning: (BGW589): Has unused operands.
def i_ori_emulation_alias__reg0__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "or x0, $op0, %lo ( $op1 ) & 0xfff";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ori_emulation_alias(reg0,regs,simm12_lo)
}

// warning: (BGW589): Has unused operands.
def i_ori_emulation_alias__reg0__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "or x0, $op0, %pcrel_lo ( $op1 ) & 0xfff";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ori_emulation_alias(reg0,regs,simm12_pcrel_lo)
}

def i_ori_emulation_alias__regs__reg0__simm12_lo__: CodasipMicroClass_<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op1)>
{
let AsmString = "or $op0, x0, %lo ( $op1 ) & 0xfff";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ori_emulation_alias(regs,reg0,simm12_lo)
}

def i_ori_emulation_alias__regs__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs regs:$op0), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op1)>
{
let AsmString = "or $op0, x0, %pcrel_lo ( $op1 ) & 0xfff";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ori_emulation_alias(regs,reg0,simm12_pcrel_lo)
}

def i_ori_emulation_alias__regs__regs__simm12_lo__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_i32:$op2)>
{
let AsmString = "or $op0, $op1, %lo ( $op2 ) & 0xfff";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ori_emulation_alias(regs,regs,simm12_lo)
}

def i_ori_emulation_alias__regs__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_i32:$op2)>
{
let AsmString = "or $op0, $op1, %pcrel_lo ( $op2 ) & 0xfff";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ori_emulation_alias(regs,regs,simm12_pcrel_lo)
}

def i_ret_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "ret";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000001000000001100111;
// i_ret_alias
}

def i_seqz_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "seqz x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000100000011000000010011;
// i_seqz_alias(reg0,reg0_alias)
}

def i_seqz_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "seqz zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000100000011000000010011;
// i_seqz_alias(reg0_alias,reg0)
}

def i_seqz_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "seqz zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000100000011000000010011;
// i_seqz_alias(reg0_alias,reg0_alias)
}

def i_seqz_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "seqz zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000001;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000010011;
// i_seqz_alias(reg0_alias,regs)
}

def i_seqz_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "seqz $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000100000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_seqz_alias(regs,reg0_alias)
}

def i_sgtz_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sgtz x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000110011;
// i_sgtz_alias(reg0,reg0)
}

def i_sgtz_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sgtz x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000110011;
// i_sgtz_alias(reg0,reg0_alias)
}

def i_sgtz_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sgtz x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000010000000110011;
// i_sgtz_alias(reg0,regs)
}

def i_sgtz_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sgtz zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000110011;
// i_sgtz_alias(reg0_alias,reg0)
}

def i_sgtz_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sgtz zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000110011;
// i_sgtz_alias(reg0_alias,reg0_alias)
}

def i_sgtz_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sgtz zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000010000000110011;
// i_sgtz_alias(reg0_alias,regs)
}

def i_sgtz_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sgtz $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_sgtz_alias(regs,reg0)
}

def i_sgtz_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sgtz $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_sgtz_alias(regs,reg0_alias)
}

def i_sgtz_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sgtz $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_sgtz_alias(regs,regs)
}

def i_sltz_alias__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltz x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000110011;
// i_sltz_alias(reg0,reg0)
}

def i_sltz_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltz x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000110011;
// i_sltz_alias(reg0,reg0_alias)
}

def i_sltz_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sltz x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000110011;
// i_sltz_alias(reg0,regs)
}

def i_sltz_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltz zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000110011;
// i_sltz_alias(reg0_alias,reg0)
}

def i_sltz_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltz zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000110011;
// i_sltz_alias(reg0_alias,reg0_alias)
}

def i_sltz_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sltz zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000110011;
// i_sltz_alias(reg0_alias,regs)
}

def i_sltz_alias__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sltz $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_sltz_alias(regs,reg0)
}

def i_sltz_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sltz $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_sltz_alias(regs,reg0_alias)
}

def i_sltz_alias__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sltz $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_sltz_alias(regs,regs)
}

def i_snez_alias__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "snez x0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000011000000110011;
// i_snez_alias(reg0,reg0_alias)
}

def i_snez_alias__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "snez zero, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000011000000110011;
// i_snez_alias(reg0_alias,reg0)
}

def i_snez_alias__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "snez zero, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000011000000110011;
// i_snez_alias(reg0_alias,reg0_alias)
}

def i_snez_alias__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "snez zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000011000000110011;
// i_snez_alias(reg0_alias,regs)
}

def i_snez_alias__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "snez $op0, zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_snez_alias(regs,reg0_alias)
}

def i_store__opc_storeb__reg0__simm12_s_lo__reg0__: CodasipMicroClass_sc_stores<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_i32:$op0)>
{
let AsmString = "sb x0, %lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000000;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,reg0,simm12_s_lo,reg0)
}

def i_store__opc_storeb__reg0__simm12_s_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_iAny:$op0)>
{
let AsmString = "sb x0, %lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000000;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,reg0,simm12_s_lo,reg0_alias)
}

def i_store__opc_storeb__reg0__simm12_s_lo__regs__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_i32:$op1)>
{
let AsmString = "sb x0, %lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b000;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,reg0,simm12_s_lo,regs)
}

def i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0__: CodasipMicroClass_sc_stores<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_i32:$op0)>
{
let AsmString = "sb x0, %pcrel_lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000000;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,reg0,simm12_s_pcrel_lo,reg0)
}

def i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_iAny:$op0)>
{
let AsmString = "sb x0, %pcrel_lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000000;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,reg0,simm12_s_pcrel_lo,reg0_alias)
}

def i_store__opc_storeb__reg0__simm12_s_pcrel_lo__regs__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_i32:$op1)>
{
let AsmString = "sb x0, %pcrel_lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b000;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,reg0,simm12_s_pcrel_lo,regs)
}

def i_store__opc_storeb__reg0__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_iAny:$op0)>
{
let AsmString = "sb x0, $op0 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000000;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,reg0,simm12_simple,reg0_alias)
}

def i_store__opc_storeb__reg0_alias__simm12_s_lo__reg0__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_iAny:$op0)>
{
let AsmString = "sb zero, %lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000000;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,reg0_alias,simm12_s_lo,reg0)
}

def i_store__opc_storeb__reg0_alias__simm12_s_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_iAny:$op0)>
{
let AsmString = "sb zero, %lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000000;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,reg0_alias,simm12_s_lo,reg0_alias)
}

def i_store__opc_storeb__reg0_alias__simm12_s_lo__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_iAny:$op1)>
{
let AsmString = "sb zero, %lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b000;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,reg0_alias,simm12_s_lo,regs)
}

def i_store__opc_storeb__reg0_alias__simm12_s_pcrel_lo__reg0__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_iAny:$op0)>
{
let AsmString = "sb zero, %pcrel_lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000000;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,reg0_alias,simm12_s_pcrel_lo,reg0)
}

def i_store__opc_storeb__reg0_alias__simm12_s_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_iAny:$op0)>
{
let AsmString = "sb zero, %pcrel_lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000000;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,reg0_alias,simm12_s_pcrel_lo,reg0_alias)
}

def i_store__opc_storeb__reg0_alias__simm12_s_pcrel_lo__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_iAny:$op1)>
{
let AsmString = "sb zero, %pcrel_lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b000;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,reg0_alias,simm12_s_pcrel_lo,regs)
}

def i_store__opc_storeb__reg0_alias__simm12_simple__reg0__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_iAny:$op0)>
{
let AsmString = "sb zero, $op0 ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000000;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,reg0_alias,simm12_simple,reg0)
}

def i_store__opc_storeb__reg0_alias__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_iAny:$op0)>
{
let AsmString = "sb zero, $op0 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000000;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,reg0_alias,simm12_simple,reg0_alias)
}

def i_store__opc_storeb__reg0_alias__simm12_simple__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_iAny:$op1)>
{
let AsmString = "sb zero, $op1 ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b000;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,reg0_alias,simm12_simple,regs)
}

def i_store__opc_storeb__regs__simm12_s_lo__reg0__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_i32:$op1)>
{
let AsmString = "sb $op0, %lo ( $op1 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,regs,simm12_s_lo,reg0)
}

def i_store__opc_storeb__regs__simm12_s_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_iAny:$op1)>
{
let AsmString = "sb $op0, %lo ( $op1 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,regs,simm12_s_lo,reg0_alias)
}

def i_store__opc_storeb__regs__simm12_s_lo__regs__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, regs:$op1, MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_i32:$op2)>
{
let AsmString = "sb $op0, %lo ( $op2 ) ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-25} = op2{11-5};
let Inst{24-20} = op0;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op2{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,regs,simm12_s_lo,regs)
}

def i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_i32:$op1)>
{
let AsmString = "sb $op0, %pcrel_lo ( $op1 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,regs,simm12_s_pcrel_lo,reg0)
}

def i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_iAny:$op1)>
{
let AsmString = "sb $op0, %pcrel_lo ( $op1 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,regs,simm12_s_pcrel_lo,reg0_alias)
}

def i_store__opc_storeb__regs__simm12_s_pcrel_lo__regs__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, regs:$op1, MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_i32:$op2)>
{
let AsmString = "sb $op0, %pcrel_lo ( $op2 ) ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-25} = op2{11-5};
let Inst{24-20} = op0;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op2{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,regs,simm12_s_pcrel_lo,regs)
}

def i_store__opc_storeb__regs__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_iAny:$op1)>
{
let AsmString = "sb $op0, $op1 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeb,regs,simm12_simple,reg0_alias)
}

def i_store__opc_storeh__reg0__simm12_s_lo__reg0__: CodasipMicroClass_sc_stores<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_i32:$op0)>
{
let AsmString = "sh x0, %lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000001;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,reg0,simm12_s_lo,reg0)
}

def i_store__opc_storeh__reg0__simm12_s_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_iAny:$op0)>
{
let AsmString = "sh x0, %lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000001;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,reg0,simm12_s_lo,reg0_alias)
}

def i_store__opc_storeh__reg0__simm12_s_lo__regs__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_i32:$op1)>
{
let AsmString = "sh x0, %lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b001;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,reg0,simm12_s_lo,regs)
}

def i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0__: CodasipMicroClass_sc_stores<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_i32:$op0)>
{
let AsmString = "sh x0, %pcrel_lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000001;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,reg0,simm12_s_pcrel_lo,reg0)
}

def i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_iAny:$op0)>
{
let AsmString = "sh x0, %pcrel_lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000001;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,reg0,simm12_s_pcrel_lo,reg0_alias)
}

def i_store__opc_storeh__reg0__simm12_s_pcrel_lo__regs__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_i32:$op1)>
{
let AsmString = "sh x0, %pcrel_lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b001;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,reg0,simm12_s_pcrel_lo,regs)
}

def i_store__opc_storeh__reg0__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_iAny:$op0)>
{
let AsmString = "sh x0, $op0 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000001;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,reg0,simm12_simple,reg0_alias)
}

def i_store__opc_storeh__reg0_alias__simm12_s_lo__reg0__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_iAny:$op0)>
{
let AsmString = "sh zero, %lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000001;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,reg0_alias,simm12_s_lo,reg0)
}

def i_store__opc_storeh__reg0_alias__simm12_s_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_iAny:$op0)>
{
let AsmString = "sh zero, %lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000001;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,reg0_alias,simm12_s_lo,reg0_alias)
}

def i_store__opc_storeh__reg0_alias__simm12_s_lo__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_iAny:$op1)>
{
let AsmString = "sh zero, %lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b001;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,reg0_alias,simm12_s_lo,regs)
}

def i_store__opc_storeh__reg0_alias__simm12_s_pcrel_lo__reg0__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_iAny:$op0)>
{
let AsmString = "sh zero, %pcrel_lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000001;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,reg0_alias,simm12_s_pcrel_lo,reg0)
}

def i_store__opc_storeh__reg0_alias__simm12_s_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_iAny:$op0)>
{
let AsmString = "sh zero, %pcrel_lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000001;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,reg0_alias,simm12_s_pcrel_lo,reg0_alias)
}

def i_store__opc_storeh__reg0_alias__simm12_s_pcrel_lo__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_iAny:$op1)>
{
let AsmString = "sh zero, %pcrel_lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b001;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,reg0_alias,simm12_s_pcrel_lo,regs)
}

def i_store__opc_storeh__reg0_alias__simm12_simple__reg0__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_iAny:$op0)>
{
let AsmString = "sh zero, $op0 ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000001;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,reg0_alias,simm12_simple,reg0)
}

def i_store__opc_storeh__reg0_alias__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_iAny:$op0)>
{
let AsmString = "sh zero, $op0 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000001;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,reg0_alias,simm12_simple,reg0_alias)
}

def i_store__opc_storeh__reg0_alias__simm12_simple__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_iAny:$op1)>
{
let AsmString = "sh zero, $op1 ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b001;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,reg0_alias,simm12_simple,regs)
}

def i_store__opc_storeh__regs__simm12_s_lo__reg0__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_i32:$op1)>
{
let AsmString = "sh $op0, %lo ( $op1 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,regs,simm12_s_lo,reg0)
}

def i_store__opc_storeh__regs__simm12_s_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_iAny:$op1)>
{
let AsmString = "sh $op0, %lo ( $op1 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,regs,simm12_s_lo,reg0_alias)
}

def i_store__opc_storeh__regs__simm12_s_lo__regs__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, regs:$op1, MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_i32:$op2)>
{
let AsmString = "sh $op0, %lo ( $op2 ) ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-25} = op2{11-5};
let Inst{24-20} = op0;
let Inst{19-15} = op1;
let Inst{14-12} = 0b001;
let Inst{11-7} = op2{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,regs,simm12_s_lo,regs)
}

def i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_i32:$op1)>
{
let AsmString = "sh $op0, %pcrel_lo ( $op1 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,regs,simm12_s_pcrel_lo,reg0)
}

def i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_iAny:$op1)>
{
let AsmString = "sh $op0, %pcrel_lo ( $op1 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,regs,simm12_s_pcrel_lo,reg0_alias)
}

def i_store__opc_storeh__regs__simm12_s_pcrel_lo__regs__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, regs:$op1, MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_i32:$op2)>
{
let AsmString = "sh $op0, %pcrel_lo ( $op2 ) ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-25} = op2{11-5};
let Inst{24-20} = op0;
let Inst{19-15} = op1;
let Inst{14-12} = 0b001;
let Inst{11-7} = op2{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,regs,simm12_s_pcrel_lo,regs)
}

def i_store__opc_storeh__regs__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_iAny:$op1)>
{
let AsmString = "sh $op0, $op1 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storeh,regs,simm12_simple,reg0_alias)
}

def i_store__opc_storew__reg0__simm12_s_lo__reg0__: CodasipMicroClass_sc_stores<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_i32:$op0)>
{
let AsmString = "sw x0, %lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000010;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,reg0,simm12_s_lo,reg0)
}

def i_store__opc_storew__reg0__simm12_s_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_iAny:$op0)>
{
let AsmString = "sw x0, %lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000010;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,reg0,simm12_s_lo,reg0_alias)
}

def i_store__opc_storew__reg0__simm12_s_lo__regs__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_i32:$op1)>
{
let AsmString = "sw x0, %lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b010;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,reg0,simm12_s_lo,regs)
}

def i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0__: CodasipMicroClass_sc_stores<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_i32:$op0)>
{
let AsmString = "sw x0, %pcrel_lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000010;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,reg0,simm12_s_pcrel_lo,reg0)
}

def i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_iAny:$op0)>
{
let AsmString = "sw x0, %pcrel_lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000010;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,reg0,simm12_s_pcrel_lo,reg0_alias)
}

def i_store__opc_storew__reg0__simm12_s_pcrel_lo__regs__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_i32:$op1)>
{
let AsmString = "sw x0, %pcrel_lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b010;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,reg0,simm12_s_pcrel_lo,regs)
}

def i_store__opc_storew__reg0__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_iAny:$op0)>
{
let AsmString = "sw x0, $op0 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000010;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,reg0,simm12_simple,reg0_alias)
}

def i_store__opc_storew__reg0_alias__simm12_s_lo__reg0__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_iAny:$op0)>
{
let AsmString = "sw zero, %lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000010;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,reg0_alias,simm12_s_lo,reg0)
}

def i_store__opc_storew__reg0_alias__simm12_s_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_iAny:$op0)>
{
let AsmString = "sw zero, %lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000010;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,reg0_alias,simm12_s_lo,reg0_alias)
}

def i_store__opc_storew__reg0_alias__simm12_s_lo__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_iAny:$op1)>
{
let AsmString = "sw zero, %lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b010;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,reg0_alias,simm12_s_lo,regs)
}

def i_store__opc_storew__reg0_alias__simm12_s_pcrel_lo__reg0__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_iAny:$op0)>
{
let AsmString = "sw zero, %pcrel_lo ( $op0 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000010;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,reg0_alias,simm12_s_pcrel_lo,reg0)
}

def i_store__opc_storew__reg0_alias__simm12_s_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_iAny:$op0)>
{
let AsmString = "sw zero, %pcrel_lo ( $op0 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000010;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,reg0_alias,simm12_s_pcrel_lo,reg0_alias)
}

def i_store__opc_storew__reg0_alias__simm12_s_pcrel_lo__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_iAny:$op1)>
{
let AsmString = "sw zero, %pcrel_lo ( $op1 ) ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b010;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,reg0_alias,simm12_s_pcrel_lo,regs)
}

def i_store__opc_storew__reg0_alias__simm12_simple__reg0__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_iAny:$op0)>
{
let AsmString = "sw zero, $op0 ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000010;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,reg0_alias,simm12_simple,reg0)
}

def i_store__opc_storew__reg0_alias__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_iAny:$op0)>
{
let AsmString = "sw zero, $op0 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-25} = op0{11-5};
let Inst{24-12} = 0b0000000000010;
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,reg0_alias,simm12_simple,reg0_alias)
}

def i_store__opc_storew__reg0_alias__simm12_simple__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_iAny:$op1)>
{
let AsmString = "sw zero, $op1 ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b010;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,reg0_alias,simm12_simple,regs)
}

def i_store__opc_storew__regs__simm12_s_lo__reg0__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_i32:$op1)>
{
let AsmString = "sw $op0, %lo ( $op1 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,regs,simm12_s_lo,reg0)
}

def i_store__opc_storew__regs__simm12_s_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_iAny:$op1)>
{
let AsmString = "sw $op0, %lo ( $op1 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,regs,simm12_s_lo,reg0_alias)
}

def i_store__opc_storew__regs__simm12_s_lo__regs__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, regs:$op1, MI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo_i32:$op2)>
{
let AsmString = "sw $op0, %lo ( $op2 ) ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-25} = op2{11-5};
let Inst{24-20} = op0;
let Inst{19-15} = op1;
let Inst{14-12} = 0b010;
let Inst{11-7} = op2{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,regs,simm12_s_lo,regs)
}

def i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_i32:$op1)>
{
let AsmString = "sw $op0, %pcrel_lo ( $op1 ) ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,regs,simm12_s_pcrel_lo,reg0)
}

def i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_iAny:$op1)>
{
let AsmString = "sw $op0, %pcrel_lo ( $op1 ) ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,regs,simm12_s_pcrel_lo,reg0_alias)
}

def i_store__opc_storew__regs__simm12_s_pcrel_lo__regs__: CodasipMicroClass_sc_stores<(outs), (ins regs:$op0, regs:$op1, MI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo_i32:$op2)>
{
let AsmString = "sw $op0, %pcrel_lo ( $op2 ) ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op2;
bits<5> op1;
let Inst{31-25} = op2{11-5};
let Inst{24-20} = op0;
let Inst{19-15} = op1;
let Inst{14-12} = 0b010;
let Inst{11-7} = op2{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,regs,simm12_s_pcrel_lo,regs)
}

def i_store__opc_storew__regs__simm12_simple__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple_iAny:$op1)>
{
let AsmString = "sw $op0, $op1 ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-25} = op1{11-5};
let Inst{24-20} = op0;
let Inst{19-12} = 0b00000010;
let Inst{11-7} = op1{4-0};
let Inst{6-0} = 0b0100011;
// i_store(opc_storew,regs,simm12_simple,reg0_alias)
}

def i_store_alias__opc_storeb__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sb x0, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000100011;
// i_store_alias(opc_storeb,reg0,reg0)
}

def i_store_alias__opc_storeb__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sb x0, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000100011;
// i_store_alias(opc_storeb,reg0,reg0_alias)
}

def i_store_alias__opc_storeb__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sb x0, ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000100011;
// i_store_alias(opc_storeb,reg0,regs)
}

def i_store_alias__opc_storeb__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sb zero, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000100011;
// i_store_alias(opc_storeb,reg0_alias,reg0)
}

def i_store_alias__opc_storeb__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sb zero, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000000000000100011;
// i_store_alias(opc_storeb,reg0_alias,reg0_alias)
}

def i_store_alias__opc_storeb__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sb zero, ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000100011;
// i_store_alias(opc_storeb,reg0_alias,regs)
}

def i_store_alias__opc_storeb__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sb $op0, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000000000000100011;
// i_store_alias(opc_storeb,regs,reg0)
}

def i_store_alias__opc_storeb__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sb $op0, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000000000000100011;
// i_store_alias(opc_storeb,regs,reg0_alias)
}

def i_store_alias__opc_storeb__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sb $op0, ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b000000000100011;
// i_store_alias(opc_storeb,regs,regs)
}

def i_store_alias__opc_storeh__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sh x0, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000100011;
// i_store_alias(opc_storeh,reg0,reg0)
}

def i_store_alias__opc_storeh__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sh x0, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000100011;
// i_store_alias(opc_storeh,reg0,reg0_alias)
}

def i_store_alias__opc_storeh__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sh x0, ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000100011;
// i_store_alias(opc_storeh,reg0,regs)
}

def i_store_alias__opc_storeh__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sh zero, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000100011;
// i_store_alias(opc_storeh,reg0_alias,reg0)
}

def i_store_alias__opc_storeh__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sh zero, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000001000000100011;
// i_store_alias(opc_storeh,reg0_alias,reg0_alias)
}

def i_store_alias__opc_storeh__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sh zero, ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000100011;
// i_store_alias(opc_storeh,reg0_alias,regs)
}

def i_store_alias__opc_storeh__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sh $op0, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000001000000100011;
// i_store_alias(opc_storeh,regs,reg0)
}

def i_store_alias__opc_storeh__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sh $op0, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000001000000100011;
// i_store_alias(opc_storeh,regs,reg0_alias)
}

def i_store_alias__opc_storeh__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sh $op0, ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b001000000100011;
// i_store_alias(opc_storeh,regs,regs)
}

def i_store_alias__opc_storew__reg0__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sw x0, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000100011;
// i_store_alias(opc_storew,reg0,reg0)
}

def i_store_alias__opc_storew__reg0__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sw x0, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000100011;
// i_store_alias(opc_storew,reg0,reg0_alias)
}

def i_store_alias__opc_storew__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sw x0, ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000100011;
// i_store_alias(opc_storew,reg0,regs)
}

def i_store_alias__opc_storew__reg0_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sw zero, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000100011;
// i_store_alias(opc_storew,reg0_alias,reg0)
}

def i_store_alias__opc_storew__reg0_alias__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sw zero, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b00000000000000000010000000100011;
// i_store_alias(opc_storew,reg0_alias,reg0_alias)
}

def i_store_alias__opc_storew__reg0_alias__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sw zero, ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000100011;
// i_store_alias(opc_storew,reg0_alias,regs)
}

def i_store_alias__opc_storew__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sw $op0, ( x0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000010000000100011;
// i_store_alias(opc_storew,regs,reg0)
}

def i_store_alias__opc_storew__regs__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sw $op0, ( zero )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000010000000100011;
// i_store_alias(opc_storew,regs,reg0_alias)
}

def i_store_alias__opc_storew__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sw $op0, ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-15} = op1;
let Inst{14-0} = 0b010000000100011;
// i_store_alias(opc_storew,regs,regs)
}

def i_store_global_alias__opc_storeb__reg0__rel_addr32__reg0__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "sb x0, $op0, x0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-57} = op0{11-5};
let Inst{56-44} = 0b0000000000000;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_store_global_alias(opc_storeb,reg0,rel_addr32,reg0)
}

def i_store_global_alias__opc_storeb__reg0__rel_addr32__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "sb x0, $op0, zero";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-57} = op0{11-5};
let Inst{56-44} = 0b0000000000000;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_store_global_alias(opc_storeb,reg0,rel_addr32,reg0_alias)
}

def i_store_global_alias__opc_storeb__reg0__rel_addr32__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1)>
{
let AsmString = "sb x0, $op1, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<10> op0;
bits<32> op1;
let Inst{63-57} = op1{11-5};
let Inst{56-52} = 0b00000;
let Inst{51-47} = op0{4-0};
let Inst{46-44} = 0b000;
let Inst{43-39} = op1{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op1{31-12};
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0010111;
// i_store_global_alias(opc_storeb,reg0,rel_addr32,regs)
}

def i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__reg0__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "sb zero, $op0, x0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-57} = op0{11-5};
let Inst{56-44} = 0b0000000000000;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_store_global_alias(opc_storeb,reg0_alias,rel_addr32,reg0)
}

def i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "sb zero, $op0, zero";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-57} = op0{11-5};
let Inst{56-44} = 0b0000000000000;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_store_global_alias(opc_storeb,reg0_alias,rel_addr32,reg0_alias)
}

def i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1)>
{
let AsmString = "sb zero, $op1, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<10> op0;
bits<32> op1;
let Inst{63-57} = op1{11-5};
let Inst{56-52} = 0b00000;
let Inst{51-47} = op0{4-0};
let Inst{46-44} = 0b000;
let Inst{43-39} = op1{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op1{31-12};
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0010111;
// i_store_global_alias(opc_storeb,reg0_alias,rel_addr32,regs)
}

def i_store_global_alias__opc_storeb__regs__rel_addr32__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1)>
{
let AsmString = "sb $op0, $op1, x0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<32> op1;
let Inst{63-57} = op1{11-5};
let Inst{56-52} = op0;
let Inst{51-44} = 0b00000000;
let Inst{43-39} = op1{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op1{31-12};
let Inst{11-0} = 0b000000010111;
// i_store_global_alias(opc_storeb,regs,rel_addr32,reg0)
}

def i_store_global_alias__opc_storeb__regs__rel_addr32__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1)>
{
let AsmString = "sb $op0, $op1, zero";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<32> op1;
let Inst{63-57} = op1{11-5};
let Inst{56-52} = op0;
let Inst{51-44} = 0b00000000;
let Inst{43-39} = op1{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op1{31-12};
let Inst{11-0} = 0b000000010111;
// i_store_global_alias(opc_storeb,regs,rel_addr32,reg0_alias)
}

def i_store_global_alias__opc_storeb__regs__rel_addr32__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1, regs:$op2)>
{
let AsmString = "sb $op0, $op1, $op2";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<32> op1;
bits<10> op2;
let Inst{63-57} = op1{11-5};
let Inst{56-52} = op0;
let Inst{51-47} = op2{4-0};
let Inst{46-44} = 0b000;
let Inst{43-39} = op1{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op1{31-12};
let Inst{11-7} = op2{4-0};
let Inst{6-0} = 0b0010111;
// i_store_global_alias(opc_storeb,regs,rel_addr32,regs)
}

def i_store_global_alias__opc_storeh__reg0__rel_addr32__reg0__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "sh x0, $op0, x0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-57} = op0{11-5};
let Inst{56-44} = 0b0000000000001;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_store_global_alias(opc_storeh,reg0,rel_addr32,reg0)
}

def i_store_global_alias__opc_storeh__reg0__rel_addr32__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "sh x0, $op0, zero";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-57} = op0{11-5};
let Inst{56-44} = 0b0000000000001;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_store_global_alias(opc_storeh,reg0,rel_addr32,reg0_alias)
}

def i_store_global_alias__opc_storeh__reg0__rel_addr32__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1)>
{
let AsmString = "sh x0, $op1, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<10> op0;
bits<32> op1;
let Inst{63-57} = op1{11-5};
let Inst{56-52} = 0b00000;
let Inst{51-47} = op0{4-0};
let Inst{46-44} = 0b001;
let Inst{43-39} = op1{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op1{31-12};
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0010111;
// i_store_global_alias(opc_storeh,reg0,rel_addr32,regs)
}

def i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__reg0__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "sh zero, $op0, x0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-57} = op0{11-5};
let Inst{56-44} = 0b0000000000001;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_store_global_alias(opc_storeh,reg0_alias,rel_addr32,reg0)
}

def i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "sh zero, $op0, zero";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-57} = op0{11-5};
let Inst{56-44} = 0b0000000000001;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_store_global_alias(opc_storeh,reg0_alias,rel_addr32,reg0_alias)
}

def i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1)>
{
let AsmString = "sh zero, $op1, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<10> op0;
bits<32> op1;
let Inst{63-57} = op1{11-5};
let Inst{56-52} = 0b00000;
let Inst{51-47} = op0{4-0};
let Inst{46-44} = 0b001;
let Inst{43-39} = op1{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op1{31-12};
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0010111;
// i_store_global_alias(opc_storeh,reg0_alias,rel_addr32,regs)
}

def i_store_global_alias__opc_storeh__regs__rel_addr32__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1)>
{
let AsmString = "sh $op0, $op1, x0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<32> op1;
let Inst{63-57} = op1{11-5};
let Inst{56-52} = op0;
let Inst{51-44} = 0b00000001;
let Inst{43-39} = op1{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op1{31-12};
let Inst{11-0} = 0b000000010111;
// i_store_global_alias(opc_storeh,regs,rel_addr32,reg0)
}

def i_store_global_alias__opc_storeh__regs__rel_addr32__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1)>
{
let AsmString = "sh $op0, $op1, zero";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<32> op1;
let Inst{63-57} = op1{11-5};
let Inst{56-52} = op0;
let Inst{51-44} = 0b00000001;
let Inst{43-39} = op1{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op1{31-12};
let Inst{11-0} = 0b000000010111;
// i_store_global_alias(opc_storeh,regs,rel_addr32,reg0_alias)
}

def i_store_global_alias__opc_storeh__regs__rel_addr32__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1, regs:$op2)>
{
let AsmString = "sh $op0, $op1, $op2";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<32> op1;
bits<10> op2;
let Inst{63-57} = op1{11-5};
let Inst{56-52} = op0;
let Inst{51-47} = op2{4-0};
let Inst{46-44} = 0b001;
let Inst{43-39} = op1{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op1{31-12};
let Inst{11-7} = op2{4-0};
let Inst{6-0} = 0b0010111;
// i_store_global_alias(opc_storeh,regs,rel_addr32,regs)
}

def i_store_global_alias__opc_storew__reg0__rel_addr32__reg0__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "sw x0, $op0, x0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-57} = op0{11-5};
let Inst{56-44} = 0b0000000000010;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_store_global_alias(opc_storew,reg0,rel_addr32,reg0)
}

def i_store_global_alias__opc_storew__reg0__rel_addr32__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "sw x0, $op0, zero";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-57} = op0{11-5};
let Inst{56-44} = 0b0000000000010;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_store_global_alias(opc_storew,reg0,rel_addr32,reg0_alias)
}

def i_store_global_alias__opc_storew__reg0__rel_addr32__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1)>
{
let AsmString = "sw x0, $op1, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<10> op0;
bits<32> op1;
let Inst{63-57} = op1{11-5};
let Inst{56-52} = 0b00000;
let Inst{51-47} = op0{4-0};
let Inst{46-44} = 0b010;
let Inst{43-39} = op1{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op1{31-12};
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0010111;
// i_store_global_alias(opc_storew,reg0,rel_addr32,regs)
}

def i_store_global_alias__opc_storew__reg0_alias__rel_addr32__reg0__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "sw zero, $op0, x0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-57} = op0{11-5};
let Inst{56-44} = 0b0000000000010;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_store_global_alias(opc_storew,reg0_alias,rel_addr32,reg0)
}

def i_store_global_alias__opc_storew__reg0_alias__rel_addr32__reg0_alias__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op0)>
{
let AsmString = "sw zero, $op0, zero";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-57} = op0{11-5};
let Inst{56-44} = 0b0000000000010;
let Inst{43-39} = op0{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b000000010111;
// i_store_global_alias(opc_storew,reg0_alias,rel_addr32,reg0_alias)
}

def i_store_global_alias__opc_storew__reg0_alias__rel_addr32__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1)>
{
let AsmString = "sw zero, $op1, $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<10> op0;
bits<32> op1;
let Inst{63-57} = op1{11-5};
let Inst{56-52} = 0b00000;
let Inst{51-47} = op0{4-0};
let Inst{46-44} = 0b010;
let Inst{43-39} = op1{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op1{31-12};
let Inst{11-7} = op0{4-0};
let Inst{6-0} = 0b0010111;
// i_store_global_alias(opc_storew,reg0_alias,rel_addr32,regs)
}

def i_store_global_alias__opc_storew__regs__rel_addr32__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1)>
{
let AsmString = "sw $op0, $op1, x0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<32> op1;
let Inst{63-57} = op1{11-5};
let Inst{56-52} = op0;
let Inst{51-44} = 0b00000010;
let Inst{43-39} = op1{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op1{31-12};
let Inst{11-0} = 0b000000010111;
// i_store_global_alias(opc_storew,regs,rel_addr32,reg0)
}

def i_store_global_alias__opc_storew__regs__rel_addr32__reg0_alias__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1)>
{
let AsmString = "sw $op0, $op1, zero";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<32> op1;
let Inst{63-57} = op1{11-5};
let Inst{56-52} = op0;
let Inst{51-44} = 0b00000010;
let Inst{43-39} = op1{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op1{31-12};
let Inst{11-0} = 0b000000010111;
// i_store_global_alias(opc_storew,regs,rel_addr32,reg0_alias)
}

def i_store_global_alias__opc_storew__regs__rel_addr32__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32_iAny:$op1, regs:$op2)>
{
let AsmString = "sw $op0, $op1, $op2";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<32> op1;
bits<10> op2;
let Inst{63-57} = op1{11-5};
let Inst{56-52} = op0;
let Inst{51-47} = op2{4-0};
let Inst{46-44} = 0b010;
let Inst{43-39} = op1{4-0};
let Inst{38-32} = 0b0100011;
let Inst{31-12} = op1{31-12};
let Inst{11-7} = op2{4-0};
let Inst{6-0} = 0b0010111;
// i_store_global_alias(opc_storew,regs,rel_addr32,regs)
}

def i_tail_alias__rel_addr32_call_tail_simple__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple_iAny:$op0)>
{
let AsmString = "tail $op0";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<32> op0;
let Inst{63-52} = op0{11-0};
let Inst{51-32} = 0b00110000000001100111;
let Inst{31-12} = op0{31-12};
let Inst{11-0} = 0b001100010111;
// i_tail_alias(rel_addr32_call_tail_simple)
}

def i_timers_counters_aliases__opc_rdcycle__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "rdcycle x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b11000000000000000010000001110011;
// i_timers_counters_aliases(opc_rdcycle,reg0)
}

def i_timers_counters_aliases__opc_rdcycle__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "rdcycle zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b11000000000000000010000001110011;
// i_timers_counters_aliases(opc_rdcycle,reg0_alias)
}

def i_timers_counters_aliases__opc_rdcycle__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "rdcycle $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b11000000000000000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_timers_counters_aliases(opc_rdcycle,regs)
}

def i_timers_counters_aliases__opc_rdcycleh__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "rdcycleh x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b11001000000000000010000001110011;
// i_timers_counters_aliases(opc_rdcycleh,reg0)
}

def i_timers_counters_aliases__opc_rdcycleh__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "rdcycleh zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b11001000000000000010000001110011;
// i_timers_counters_aliases(opc_rdcycleh,reg0_alias)
}

def i_timers_counters_aliases__opc_rdcycleh__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "rdcycleh $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b11001000000000000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_timers_counters_aliases(opc_rdcycleh,regs)
}

def i_timers_counters_aliases__opc_rdinstret__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "rdinstret x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b11000000001000000010000001110011;
// i_timers_counters_aliases(opc_rdinstret,reg0)
}

def i_timers_counters_aliases__opc_rdinstret__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "rdinstret zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b11000000001000000010000001110011;
// i_timers_counters_aliases(opc_rdinstret,reg0_alias)
}

def i_timers_counters_aliases__opc_rdinstret__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "rdinstret $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b11000000001000000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_timers_counters_aliases(opc_rdinstret,regs)
}

def i_timers_counters_aliases__opc_rdinstreth__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "rdinstreth x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b11001000001000000010000001110011;
// i_timers_counters_aliases(opc_rdinstreth,reg0)
}

def i_timers_counters_aliases__opc_rdinstreth__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "rdinstreth zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b11001000001000000010000001110011;
// i_timers_counters_aliases(opc_rdinstreth,reg0_alias)
}

def i_timers_counters_aliases__opc_rdinstreth__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "rdinstreth $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b11001000001000000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_timers_counters_aliases(opc_rdinstreth,regs)
}

def i_timers_counters_aliases__opc_rdtime__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "rdtime x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b11000000000100000010000001110011;
// i_timers_counters_aliases(opc_rdtime,reg0)
}

def i_timers_counters_aliases__opc_rdtime__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "rdtime zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b11000000000100000010000001110011;
// i_timers_counters_aliases(opc_rdtime,reg0_alias)
}

def i_timers_counters_aliases__opc_rdtime__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "rdtime $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b11000000000100000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_timers_counters_aliases(opc_rdtime,regs)
}

def i_timers_counters_aliases__opc_rdtimeh__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "rdtimeh x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b11001000000100000010000001110011;
// i_timers_counters_aliases(opc_rdtimeh,reg0)
}

def i_timers_counters_aliases__opc_rdtimeh__reg0_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "rdtimeh zero";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let Inst{31-0} = 0b11001000000100000010000001110011;
// i_timers_counters_aliases(opc_rdtimeh,reg0_alias)
}

def i_timers_counters_aliases__opc_rdtimeh__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "rdtimeh $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
let Inst{31-12} = 0b11001000000100000010;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1110011;
// i_timers_counters_aliases(opc_rdtimeh,regs)
}

def i_unimp__opc_unimp__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "unimp";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let Inst{31-0} = 0b11000000000000000001000001111111;
// i_unimp(opc_unimp)
}

def i_wfi__opc_wfi__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "wfi";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let Inst{31-0} = 0b00010000010100000000000001110011;
// i_wfi(opc_wfi)
}

def i_xori_alias__reg0__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "xori x0, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_xori_alias(reg0,reg0,simm12_lo)
}

def i_xori_alias__reg0__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "xori x0, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_xori_alias(reg0,reg0,simm12_pcrel_lo)
}

def i_xori_alias__reg0__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "xori x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_xori_alias(reg0,reg0,simm12_simple)
}

def i_xori_alias__reg0__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "xori x0, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_xori_alias(reg0,reg0_alias,simm12_lo)
}

def i_xori_alias__reg0__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "xori x0, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_xori_alias(reg0,reg0_alias,simm12_pcrel_lo)
}

def i_xori_alias__reg0__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "xori x0, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_xori_alias(reg0,reg0_alias,simm12_simple)
}

def i_xori_alias__reg0__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "xori x0, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000010011;
// i_xori_alias(reg0,regs,simm12_lo)
}

def i_xori_alias__reg0__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "xori x0, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000010011;
// i_xori_alias(reg0,regs,simm12_pcrel_lo)
}

def i_xori_alias__reg0__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "xori x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000010011;
// i_xori_alias(reg0,regs,simm12_simple)
}

def i_xori_alias__reg0_alias__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "xori zero, x0, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_xori_alias(reg0_alias,reg0,simm12_lo)
}

def i_xori_alias__reg0_alias__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "xori zero, x0, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_xori_alias(reg0_alias,reg0,simm12_pcrel_lo)
}

def i_xori_alias__reg0_alias__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "xori zero, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_xori_alias(reg0_alias,reg0,simm12_simple)
}

def i_xori_alias__reg0_alias__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op0)>
{
let AsmString = "xori zero, zero, %lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_xori_alias(reg0_alias,reg0_alias,simm12_lo)
}

def i_xori_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op0)>
{
let AsmString = "xori zero, zero, %pcrel_lo ( $op0 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_xori_alias(reg0_alias,reg0_alias,simm12_pcrel_lo)
}

def i_xori_alias__reg0_alias__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "xori zero, zero, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_xori_alias(reg0_alias,reg0_alias,simm12_simple)
}

def i_xori_alias__reg0_alias__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "xori zero, $op0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000010011;
// i_xori_alias(reg0_alias,regs,simm12_lo)
}

def i_xori_alias__reg0_alias__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "xori zero, $op0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000010011;
// i_xori_alias(reg0_alias,regs,simm12_pcrel_lo)
}

def i_xori_alias__reg0_alias__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "xori zero, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000010011;
// i_xori_alias(reg0_alias,regs,simm12_simple)
}

def i_xori_alias__regs__reg0__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "xori $op0, x0, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_xori_alias(regs,reg0,simm12_lo)
}

def i_xori_alias__regs__reg0__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "xori $op0, x0, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_xori_alias(regs,reg0,simm12_pcrel_lo)
}

def i_xori_alias__regs__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "xori $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_xori_alias(regs,reg0,simm12_simple)
}

def i_xori_alias__regs__reg0_alias__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op1)>
{
let AsmString = "xori $op0, zero, %lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_xori_alias(regs,reg0_alias,simm12_lo)
}

def i_xori_alias__regs__reg0_alias__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op1)>
{
let AsmString = "xori $op0, zero, %pcrel_lo ( $op1 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_xori_alias(regs,reg0_alias,simm12_pcrel_lo)
}

def i_xori_alias__regs__reg0_alias__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "xori $op0, zero, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_xori_alias(regs,reg0_alias,simm12_simple)
}

def i_xori_alias__regs__regs__simm12_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI3valIH1_10start_base8_6simm126simm121_9simm12_lo_iAny:$op2)>
{
let AsmString = "xori $op0, $op1, %lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_xori_alias(regs,regs,simm12_lo)
}

def i_xori_alias__regs__regs__simm12_pcrel_lo__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo_iAny:$op2)>
{
let AsmString = "xori $op0, $op1, %pcrel_lo ( $op2 )";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_xori_alias(regs,regs,simm12_pcrel_lo)
}

def i_xori_alias__regs__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op2)>
{
let AsmString = "xori $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_xori_alias(regs,regs,simm12_simple)
}

def load_imm32__regs__regs__regs__: CodasipMicroClass_<(outs regs:$op0), (ins MI3immIH1_10start_base1_10load_imm32_i32:$op1)>
{
let AsmString = "lui $op0, %hi( $op1 )\n\tadd $op0, $op0, %lo( $op1 )";
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
// load_imm32(regs,regs,regs)
}

// warning: (BGW589): Has unused operands.
def i_auipc__opc_auipc__reg0__imm20_s12__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12_iAny:$op0)>
{
let AsmString = "auipc x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<20> op0;
let Inst{31-12} = op0;
let Inst{11-0} = 0b000000010111;
// i_auipc(opc_auipc,reg0,imm20_s12)
}

// warning: (BGW506): Jumping on an invalid target.
def i_call_reg_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "call.reg x0";
let Size = 4;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 2;
let Inst{31-0} = 0b00000000000000000000000011100111;
// i_call_reg_alias(reg0)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "add x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000000000000010011;
// i_comp_2reg_imm(opc_addi,reg0,reg0,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_addi__reg0__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "add x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000010011;
// i_comp_2reg_imm(opc_addi,reg0,regs,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "and x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000111000000010011;
// i_comp_2reg_imm(opc_andi,reg0,reg0,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_andi__reg0__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "and x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000000010011;
// i_comp_2reg_imm(opc_andi,reg0,regs,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_andi__regs__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "and $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-12} = 0b00000111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm(opc_andi,regs,reg0,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "or x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000110000000010011;
// i_comp_2reg_imm(opc_ori,reg0,reg0,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_ori__reg0__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "or x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000010011;
// i_comp_2reg_imm(opc_ori,reg0,regs,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "slti x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000010000000010011;
// i_comp_2reg_imm(opc_slti,reg0,reg0,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_slti__reg0__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "slti x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000010011;
// i_comp_2reg_imm(opc_slti,reg0,regs,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "sltiu x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000011000000010011;
// i_comp_2reg_imm(opc_sltiu,reg0,reg0,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "sltiu x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000010011;
// i_comp_2reg_imm(opc_sltiu,reg0,regs,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "xor x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31-20} = op0;
let Inst{19-0} = 0b00000100000000010011;
// i_comp_2reg_imm(opc_xori,reg0,reg0,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm__opc_xori__reg0__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "xor x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000010011;
// i_comp_2reg_imm(opc_xori,reg0,regs,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm_shift__opc_slli__reg0__reg0__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "sll x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000001000000010011;
// i_comp_2reg_imm_shift(opc_slli,reg0,reg0,shift_imm)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm_shift__opc_slli__reg0__regs__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "sll x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000010011;
// i_comp_2reg_imm_shift(opc_slli,reg0,regs,shift_imm)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm_shift__opc_slli__regs__reg0__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "sll $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm_shift(opc_slli,regs,reg0,shift_imm)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm_shift__opc_srai__reg0__reg0__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "sra x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000010011;
// i_comp_2reg_imm_shift(opc_srai,reg0,reg0,shift_imm)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm_shift__opc_srai__reg0__regs__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "sra x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000010011;
// i_comp_2reg_imm_shift(opc_srai,reg0,regs,shift_imm)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm_shift__opc_srai__regs__reg0__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "sra $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm_shift(opc_srai,regs,reg0,shift_imm)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm_shift__opc_srli__reg0__reg0__shift_imm__: CodasipMicroClass_<(outs), (ins MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op0)>
{
let AsmString = "srl x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000010011;
// i_comp_2reg_imm_shift(opc_srli,reg0,reg0,shift_imm)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm_shift__opc_srli__reg0__regs__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "srl x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000010011;
// i_comp_2reg_imm_shift(opc_srli,reg0,regs,shift_imm)
}

// warning: (BGW589): Has unused operands.
def i_comp_2reg_imm_shift__opc_srli__regs__reg0__shift_imm__: CodasipMicroClass_<(outs), (ins regs:$op0, MI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm_iAny:$op1)>
{
let AsmString = "srl $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0010011;
// i_comp_2reg_imm_shift(opc_srli,regs,reg0,shift_imm)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_add__reg0__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "add x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000000000000110011;
// i_comp_3reg(opc_add,reg0,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_add__reg0__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "add x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000110011;
// i_comp_3reg(opc_add,reg0,regs,reg0)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_add__reg0__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "add x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000110011;
// i_comp_3reg(opc_add,reg0,regs,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_and__reg0__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "and x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000111000000110011;
// i_comp_3reg(opc_and,reg0,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_and__reg0__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "and x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000000110011;
// i_comp_3reg(opc_and,reg0,regs,reg0)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_and__reg0__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "and x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b111000000110011;
// i_comp_3reg(opc_and,reg0,regs,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_and__regs__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "and $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_and,regs,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_and__regs__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "and $op0, $op1, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b111;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_and,regs,regs,reg0)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_or__reg0__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "or x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000110000000110011;
// i_comp_3reg(opc_or,reg0,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_or__reg0__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "or x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000110011;
// i_comp_3reg(opc_or,reg0,regs,reg0)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_or__reg0__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "or x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000110011;
// i_comp_3reg(opc_or,reg0,regs,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_sll__reg0__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sll x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000001000000110011;
// i_comp_3reg(opc_sll,reg0,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_sll__reg0__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sll x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000110011;
// i_comp_3reg(opc_sll,reg0,regs,reg0)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_sll__reg0__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sll x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000110011;
// i_comp_3reg(opc_sll,reg0,regs,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_sll__regs__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sll $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sll,regs,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_slt__reg0__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "slt x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000010000000110011;
// i_comp_3reg(opc_slt,reg0,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_slt__reg0__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "slt x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000110011;
// i_comp_3reg(opc_slt,reg0,regs,reg0)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_slt__reg0__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "slt x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b010000000110011;
// i_comp_3reg(opc_slt,reg0,regs,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_sltu__reg0__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sltu x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000011000000110011;
// i_comp_3reg(opc_sltu,reg0,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_sltu__reg0__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sltu x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000110011;
// i_comp_3reg(opc_sltu,reg0,regs,reg0)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_sltu__reg0__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sltu x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000110011;
// i_comp_3reg(opc_sltu,reg0,regs,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_sltu__regs__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sltu $op0, $op1, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b011;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sltu,regs,regs,reg0)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_sra__reg0__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sra x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000110011;
// i_comp_3reg(opc_sra,reg0,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_sra__reg0__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sra x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-20} = 0b010000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000110011;
// i_comp_3reg(opc_sra,reg0,regs,reg0)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_sra__reg0__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sra x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000110011;
// i_comp_3reg(opc_sra,reg0,regs,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_sra__regs__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sra $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_sra,regs,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_srl__reg0__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "srl x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000101000000110011;
// i_comp_3reg(opc_srl,reg0,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_srl__reg0__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "srl x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000110011;
// i_comp_3reg(opc_srl,reg0,regs,reg0)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_srl__reg0__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "srl x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b101000000110011;
// i_comp_3reg(opc_srl,reg0,regs,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_srl__regs__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "srl $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000101;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0110011;
// i_comp_3reg(opc_srl,regs,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_sub__reg0__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sub x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000000000000110011;
// i_comp_3reg(opc_sub,reg0,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_sub__reg0__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "sub x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-20} = 0b010000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000110011;
// i_comp_3reg(opc_sub,reg0,regs,reg0)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_sub__reg0__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "sub x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000110011;
// i_comp_3reg(opc_sub,reg0,regs,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_xor__reg0__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "xor x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000100000000110011;
// i_comp_3reg(opc_xor,reg0,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_xor__reg0__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "xor x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000110011;
// i_comp_3reg(opc_xor,reg0,regs,reg0)
}

// warning: (BGW589): Has unused operands.
def i_comp_3reg__opc_xor__reg0__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "xor x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000110011;
// i_comp_3reg(opc_xor,reg0,regs,regs)
}

// warning: (BGW589): Has unused operands.
def i_control_conditional__opc_bgeu__regs__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bgeu $op0, x0, $op1";
let Size = 4;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b111;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bgeu,regs,reg0,rel_addr12)
}

// warning: (BGW589): Has unused operands.
def i_control_conditional__opc_blt__reg0__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "blt x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000100;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_blt,reg0,reg0,rel_addr12)
}

// warning: (BGW589): Has unused operands.
def i_control_conditional__opc_bltu__reg0__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bltu x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000110;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bltu,reg0,reg0,rel_addr12)
}

// warning: (BGW589): Has unused operands.
def i_control_conditional__opc_bltu__regs__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op1)>
{
let AsmString = "bltu $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31} = op1{11-11};
let Inst{30-25} = op1{9-4};
let Inst{24-20} = 0b00000;
let Inst{19-15} = op0;
let Inst{14-12} = 0b110;
let Inst{11-8} = op1{3-0};
let Inst{7} = op1{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bltu,regs,reg0,rel_addr12)
}

// warning: (BGW589): Has unused operands.
def i_control_conditional__opc_bne__reg0__reg0__rel_addr12__: CodasipMicroClass_<(outs), (ins MI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12_iAny:$op0)>
{
let AsmString = "bne x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<12> op0;
let Inst{31} = op0{11-11};
let Inst{30-25} = op0{9-4};
let Inst{24-12} = 0b0000000000001;
let Inst{11-8} = op0{3-0};
let Inst{7} = op0{10-10};
let Inst{6-0} = 0b1100011;
// i_control_conditional(opc_bne,reg0,reg0,rel_addr12)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_a x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000000000000101011;
// i_ext_hackaton(opc_hackaton_custom_a,reg0,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_a x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000101011;
// i_ext_hackaton(opc_hackaton_custom_a,reg0,regs,reg0)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_a x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000101011;
// i_ext_hackaton(opc_hackaton_custom_a,reg0,regs,regs)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_a $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_a,regs,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_a__regs__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_a $op0, $op1, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_a,regs,regs,reg0)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_b x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000001000000101011;
// i_ext_hackaton(opc_hackaton_custom_b,reg0,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_b x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000101011;
// i_ext_hackaton(opc_hackaton_custom_b,reg0,regs,reg0)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_b x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b001000000101011;
// i_ext_hackaton(opc_hackaton_custom_b,reg0,regs,regs)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_b $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_b,regs,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_b__regs__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_b $op0, $op1, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_b,regs,regs,reg0)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_e x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000100000000101011;
// i_ext_hackaton(opc_hackaton_custom_e,reg0,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_e x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000101011;
// i_ext_hackaton(opc_hackaton_custom_e,reg0,regs,reg0)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_e x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b100000000101011;
// i_ext_hackaton(opc_hackaton_custom_e,reg0,regs,regs)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_e $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_e,regs,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_e__regs__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, regs:$op2)>
{
let AsmString = "hackaton_custom_instr_e $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op1;
bits<5> op2;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b100;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_e,regs,regs,regs)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_g x0, x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000110000000101011;
// i_ext_hackaton(opc_hackaton_custom_g,reg0,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_g__reg0__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_g x0, $op0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000101011;
// i_ext_hackaton(opc_hackaton_custom_g,reg0,regs,reg0)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_g__reg0__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_g x0, $op0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b110000000101011;
// i_ext_hackaton(opc_hackaton_custom_g,reg0,regs,regs)
}

// warning: (BGW564): All results of the instruction are undefined.
def i_ext_hackaton__opc_hackaton_custom_g__regs__reg0__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_g $op0, x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_g,regs,reg0,reg0)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_g__regs__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_g $op0, x0, $op1";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op1;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op1;
let Inst{19-12} = 0b00000110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_g,regs,reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_g__regs__regs__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let AsmString = "hackaton_custom_instr_g $op0, $op1, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op1;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op1;
let Inst{14-12} = 0b110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_g,regs,regs,reg0)
}

// warning: (BGW589): Has unused operands.
def i_ext_hackaton__opc_hackaton_custom_g__regs__regs__regs__: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1, regs:$op2)>
{
let AsmString = "hackaton_custom_instr_g $op0, $op1, $op2";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
bits<5> op1;
bits<5> op2;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b110;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_g,regs,regs,regs)
}

// warning: (BGW511): Invalid jump address computation. Address of a jump must be computed from only one input operand.
def i_jalr__opc_jalr__reg0__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op1)>
{
let AsmString = "jalr x0, $op0, $op1";
let Size = 4;
let isBranch = 1;
let isIndirectBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<12> op1;
let Inst{31-20} = op1;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000001100111;
// i_jalr(opc_jalr,reg0,regs,simm12_simple)
}

// warning: (BGW511): Invalid jump address computation. Address of a jump must be computed from only one input operand.
def i_jalr__opc_jalr__regs__regs__simm12_simple__: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_i32:$op2)>
{
let AsmString = "jalr $op0, $op1, $op2";
let Size = 4;
let isBranch = 1;
let isIndirectBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<5> op0;
bits<5> op1;
bits<12> op2;
let Inst{31-20} = op2;
let Inst{19-15} = op1;
let Inst{14-12} = 0b000;
let Inst{11-7} = op0;
let Inst{6-0} = 0b1100111;
// i_jalr(opc_jalr,regs,regs,simm12_simple)
}

// warning: (BGW506): Jumping on an invalid target.
def i_jump_reg_alias__reg0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "jr x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 2;
let Inst{31-0} = 0b00000000000000000000000001100111;
// i_jump_reg_alias(reg0)
}

// warning: (BGW589): Has unused operands.
def i_lui__opc_lui__reg0__imm20_s12__: CodasipMicroClass_<(outs), (ins MI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12_iAny:$op0)>
{
let AsmString = "lui x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let AddedComplexity = 1;
bits<20> op0;
let Inst{31-12} = op0;
let Inst{11-0} = 0b000000110111;
// i_lui(opc_lui,reg0,imm20_s12)
}

// warning: (BGW589): Has unused operands.
def i_mv_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "mv x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 2;
bits<5> op0;
let Inst{31-20} = 0b000000000000;
let Inst{19-15} = op0;
let Inst{14-0} = 0b000000000010011;
// i_mv_alias(reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_neg_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "neg x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 1;
bits<5> op0;
let Inst{31-25} = 0b0100000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000000000000110011;
// i_neg_alias(reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_ori_emulation_alias__reg0__reg0__simm12_simple__: CodasipMicroClass_<(outs), (ins MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op0)>
{
let AsmString = "or x0, x0, $op0 & 0xfff";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ori_emulation_alias(reg0,reg0,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_ori_emulation_alias__reg0__regs__simm12_simple__: CodasipMicroClass_<(outs), (ins regs:$op0, MI4simmIH1_10start_base8_6simm126simm121_13simm12_simple_iAny:$op1)>
{
let AsmString = "or x0, $op0, $op1 & 0xfff";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ori_emulation_alias(reg0,regs,simm12_simple)
}

// warning: (BGW589): Has unused operands.
def i_seqz_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "seqz x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 2;
bits<5> op0;
let Inst{31-20} = 0b000000000001;
let Inst{19-15} = op0;
let Inst{14-0} = 0b011000000010011;
// i_seqz_alias(reg0,regs)
}

// warning: (BGW589): Has unused operands.
def i_snez_alias__reg0__regs__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "snez x0, $op0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let isAsmParserOnly = 1;
let AddedComplexity = 2;
bits<5> op0;
let Inst{31-25} = 0b0000000;
let Inst{24-20} = op0;
let Inst{19-0} = 0b00000011000000110011;
// i_snez_alias(reg0,regs)
}

// warning: (BGW565): The instruction performs a move from a register into itself.
def i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__reg0__: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let AsmString = "hackaton_custom_instr_b $op0, x0, x0";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
bits<5> op0;
let Inst{31-12} = 0b00000000000000000001;
let Inst{11-7} = op0;
let Inst{6-0} = 0b0101011;
// i_ext_hackaton(opc_hackaton_custom_b,regs,reg0,reg0)
}



include "CodasipPatterns.td"
include "CodasipCustomPats.td"

// callsequence nodes, generate instructions through manual elimination


// template for auxiliary meta instructions without coding
class CodasipInstDummy<dag outs, dag ins>
: CodasipInst<outs,ins>
{
  let hasNoSchedulingInfo = 1;
  let isCodeGenOnly = 1;
  let isPseudo = 1;
}

def LSDCallSeqStart: SDCallSeqStart<[ SDTCisVT<0,i32>, SDTCisVT<1,i32> ]>;
def callseq_start: SDNode<"ISD::CALLSEQ_START", LSDCallSeqStart, [SDNPHasChain,SDNPOutGlue,SDNPSideEffect]>;
def CALLSTART: CodasipInstDummy<(outs), (ins i32imm:$InSize, i32imm:$OutSize)>
{
  let AsmString = "#CALLSEQ_START $InSize, $OutSize";
  let Pattern = [(callseq_start timm:$InSize, timm:$OutSize)];
}

def LSDCallSeqEnd: SDCallSeqEnd<[ SDTCisVT<0,i32>, SDTCisVT<1,i32> ]>;
def callseq_end: SDNode<"ISD::CALLSEQ_END", LSDCallSeqEnd, [SDNPHasChain,SDNPOptInGlue,SDNPOutGlue,SDNPSideEffect]>;
def CALLEND: CodasipInstDummy<(outs), (ins i32imm:$InSize, i32imm:$OutSize)>
{
  let AsmString = "#CALLSEQ_END $InSize, $OutSize";
  let Pattern = [(callseq_end timm:$InSize, timm:$OutSize)];
}


def CDSPeh_sjlj_setjmp  : SDNode<"CodasipISD::EH_SJLJ_SETJMP",
                                SDTypeProfile<1, 1, [SDTCisInt<0>,SDTCisPtrTy<1>]>, [SDNPHasChain, SDNPSideEffect]>;
def CDSPeh_sjlj_longjmp : SDNode<"CodasipISD::EH_SJLJ_LONGJMP",
                                SDTypeProfile<0, 1, [SDTCisPtrTy<0>]>, [SDNPHasChain, SDNPSideEffect]>;

def CDSPeh_sjlj_setup_dispatch : SDNode<"CodasipISD::EH_SJLJ_SETUP_DISPATCH",
                                SDTypeProfile<0, 1, [SDTCisPtrTy<0>]>, [SDNPHasChain, SDNPSideEffect]>;

def EH_SjLj_LongJmp : CodasipInstDummy<(outs), (ins regs:$op0)>
{
  let hasSideEffects = 1;
  let isBarrier = 1;
  let usesCustomInserter = 1;
  let isTerminator = 1;
  let AsmString = "#EH_SJLJ_LONGJMP";
  let Pattern = [(CDSPeh_sjlj_longjmp regs:$op0)];
}

def EH_SjLj_SetJmp : CodasipInstDummy<(outs regs:$op0), (ins regs:$op1)>
{
  let hasSideEffects = 1;
  let isBarrier = 1;
  let usesCustomInserter = 1;
  let AsmString = "#EH_SJLJ_SETJMP";
  let Pattern = [(set i32:$op0, (CDSPeh_sjlj_setjmp regs:$op1))];
}

def EH_SjLj_Setup : CodasipInstDummy<(outs), (ins brtarg:$op1)>
{
  let isBranch = 1;
  let isTerminator = 1;
  let Size = 0;
  let AsmString = "#EH_SjLj_Setup\t$op1";
  let Pattern = [];
}

def EH_SJLJ_SETUP_DISPATCH : CodasipInstDummy<(outs), (ins regs:$op0)>
{
  let isBarrier = 1;
  let hasSideEffects = 1;
  let usesCustomInserter = 1;
  let AsmString = "";
  let Pattern = [(CDSPeh_sjlj_setup_dispatch regs:$op0)];
}


// ==== IR HWLoops ====

def hwloop_set_loop_iterations: CodasipInstDummy<(outs), (ins regs:$op0)>
{
  let AsmString = "// HWLOOP SET LOOP ITERATIONS";
  let Pattern = [(int_set_loop_iterations (i32 regs:$op0))];
  let Size = 4;
  let isBarrier = 1;
  let hasSideEffects = 1;
  let isNotDuplicable = 1;
}



def hwloop_loop_decrement_reg: CodasipInstDummy<(outs regs:$op0), (ins regs:$op1, i32imm:$op2)>
{
  let AsmString = "// HWLOOP LOOP DECREMENT REG";
  let Pattern = [(set regs:$op0, (i32 (int_loop_decrement_reg (i32 regs:$op1), (i32 imm:$op2))))];
  let Size = 4;
  let isReMaterializable = 0;
  let isNotDuplicable = 1;
}


