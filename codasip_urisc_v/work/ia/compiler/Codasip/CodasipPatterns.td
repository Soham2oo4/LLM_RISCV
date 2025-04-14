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


// definition of auxiliary patterns
    
def rule_BRCOND_0: Pattern<(brcond (i32 (seteq (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1))), bb:$op2),
[(i_control_conditional__opc_beq__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__ (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1)), bb:$op2)]>;

def rule_BRCOND_1: Pattern<(brcond (i32 (setne (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1))), bb:$op2),
[(i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__ (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1)), bb:$op2)]>;

def rule_BRCOND_2: Pattern<(brcond (i32 (setge (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1))), bb:$op2),
[(i_control_conditional__opc_beq__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__ (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1)), bb:$op2)]>;

def rule_BRCOND_3: Pattern<(brcond (i32 (setlt (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1))), bb:$op2),
[(i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__ (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1)), bb:$op2)]>;

def rule_BRCOND_4: Pattern<(brcond (i32 (setuge (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1))), bb:$op2),
[(i_control_conditional__opc_beq__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__ (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1)), bb:$op2)]>;

def rule_BRCOND_5: Pattern<(brcond (i32 (setult (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1))), bb:$op2),
[(i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__ (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1)), bb:$op2)]>;

def rule_BRCOND_6: Pattern<(brcond (i32 CheckFI_i32_regs:$op0), bb:$op1),
[(i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ (i32 CheckFI_i32_regs:$op0), bb:$op1)]>;

def rule_SELECT_7: CodasipInst<(outs regs:$op2_out), (ins regs:$op0, regs:$op1, regs:$op2, regs:$op3) > {
let Pattern = [(set regs:$op2_out, (select (i32 (seteq (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), (i32 CheckFI_i32_regs:$op2), (i32 CheckFI_i32_regs:$op3)))];
let usesCustomInserter = 1;
let hasNoSchedulingInfo = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
}

def rule_SELECT_8: CodasipInst<(outs regs:$op2_out), (ins regs:$op0, regs:$op1, regs:$op2, regs:$op3) > {
let Pattern = [(set regs:$op2_out, (select (i32 (setne (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), (i32 CheckFI_i32_regs:$op2), (i32 CheckFI_i32_regs:$op3)))];
let usesCustomInserter = 1;
let hasNoSchedulingInfo = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
}

def rule_SELECT_9: CodasipInst<(outs regs:$op2_out), (ins regs:$op0, regs:$op1, regs:$op2, regs:$op3) > {
let Pattern = [(set regs:$op2_out, (select (i32 (setge (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), (i32 CheckFI_i32_regs:$op2), (i32 CheckFI_i32_regs:$op3)))];
let usesCustomInserter = 1;
let hasNoSchedulingInfo = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
}

def rule_SELECT_10: CodasipInst<(outs regs:$op2_out), (ins regs:$op0, regs:$op1, regs:$op2, regs:$op3) > {
let Pattern = [(set regs:$op2_out, (select (i32 (setgt (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), (i32 CheckFI_i32_regs:$op2), (i32 CheckFI_i32_regs:$op3)))];
let usesCustomInserter = 1;
let hasNoSchedulingInfo = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
}

def rule_SELECT_11: CodasipInst<(outs regs:$op2_out), (ins regs:$op0, regs:$op1, regs:$op2, regs:$op3) > {
let Pattern = [(set regs:$op2_out, (select (i32 (setle (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), (i32 CheckFI_i32_regs:$op2), (i32 CheckFI_i32_regs:$op3)))];
let usesCustomInserter = 1;
let hasNoSchedulingInfo = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
}

def rule_SELECT_12: CodasipInst<(outs regs:$op2_out), (ins regs:$op0, regs:$op1, regs:$op2, regs:$op3) > {
let Pattern = [(set regs:$op2_out, (select (i32 (setlt (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), (i32 CheckFI_i32_regs:$op2), (i32 CheckFI_i32_regs:$op3)))];
let usesCustomInserter = 1;
let hasNoSchedulingInfo = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
}

def rule_SELECT_13: CodasipInst<(outs regs:$op2_out), (ins regs:$op0, regs:$op1, regs:$op2, regs:$op3) > {
let Pattern = [(set regs:$op2_out, (select (i32 (setuge (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), (i32 CheckFI_i32_regs:$op2), (i32 CheckFI_i32_regs:$op3)))];
let usesCustomInserter = 1;
let hasNoSchedulingInfo = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
}

def rule_SELECT_14: CodasipInst<(outs regs:$op2_out), (ins regs:$op0, regs:$op1, regs:$op2, regs:$op3) > {
let Pattern = [(set regs:$op2_out, (select (i32 (setugt (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), (i32 CheckFI_i32_regs:$op2), (i32 CheckFI_i32_regs:$op3)))];
let usesCustomInserter = 1;
let hasNoSchedulingInfo = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
}

def rule_SELECT_15: CodasipInst<(outs regs:$op2_out), (ins regs:$op0, regs:$op1, regs:$op2, regs:$op3) > {
let Pattern = [(set regs:$op2_out, (select (i32 (setule (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), (i32 CheckFI_i32_regs:$op2), (i32 CheckFI_i32_regs:$op3)))];
let usesCustomInserter = 1;
let hasNoSchedulingInfo = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
}

def rule_SELECT_16: CodasipInst<(outs regs:$op2_out), (ins regs:$op0, regs:$op1, regs:$op2, regs:$op3) > {
let Pattern = [(set regs:$op2_out, (select (i32 (setult (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))), (i32 CheckFI_i32_regs:$op2), (i32 CheckFI_i32_regs:$op3)))];
let usesCustomInserter = 1;
let hasNoSchedulingInfo = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
}

def rule_SELECT_17: CodasipInst<(outs regs:$op1_out), (ins regs:$op0, regs:$op1, regs:$op2) > {
let Pattern = [(set regs:$op1_out, (select (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2)))];
let usesCustomInserter = 1;
let hasNoSchedulingInfo = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
}

def rule_SETCC_18: Pattern<(i32 (seteq (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))),
[(i_seqz_alias__regs__regs__ (i_comp_3reg__opc_xor__regs__regs__regs__ (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1)))]>;

def rule_SETCC_19: Pattern<(i32 (seteq (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1))),
[(i_seqz_alias__regs__regs__ (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__ (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1)))]>;

def rule_SETCC_20: Pattern<(i32 (setne (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))),
[(i_snez_alias__regs__regs__ (i_comp_3reg__opc_xor__regs__regs__regs__ (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1)))]>;

def rule_SETCC_21: Pattern<(i32 (setne (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1))),
[(i_snez_alias__regs__regs__ (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__ (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1)))]>;

def rule_SETCC_22: Pattern<(i32 (setge (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))),
[(i_seqz_alias__regs__regs__ (i_comp_3reg__opc_slt__regs__regs__regs__ (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1)))]>;

def rule_SETCC_23: Pattern<(i32 (setge (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1))),
[(i_seqz_alias__regs__regs__ (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__ (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1)))]>;

def rule_SETCC_24: Pattern<(i32 (setle (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))),
[(i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__ (i_comp_3reg__opc_slt__regs__regs__regs__ (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op0)), 1)]>;

def rule_SETCC_25: Pattern<(i32 (setuge (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))),
[(i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__ (i_comp_3reg__opc_sltu__regs__regs__regs__ (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1)), 1)]>;

def rule_SETCC_26: Pattern<(i32 (setuge (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1))),
[(i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__ (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__ (i32 CheckFI_i32_regs:$op0), (i32 sext12To32imm:$op1)), 1)]>;

def rule_SETCC_27: Pattern<(i32 (setule (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))),
[(i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__ (i_comp_3reg__opc_sltu__regs__regs__regs__ (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op0)), 1)]>;




// patterns linking intrinsics with instructions



// patterns for moi instructions

def i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0__MOI_CLONE_MOI_SDT: SDTypeProfile<0,0,[]>;
def i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0__MOI_CLONE_MOI_node: SDNode<"CodasipISD::MOI_GROUP_0",i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0__MOI_CLONE_MOI_SDT,[SDNPHasChain,SDNPMayLoad,SDNPMayStore]>;
def i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0__MOI_CLONE_: CodasipMicroClass_<(outs), (ins)>
{
let Pattern = [(i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0__MOI_CLONE_MOI_node )];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_f,reg0,reg0,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__regs__MOI_CLONE_MOI_SDT: SDTypeProfile<0,1,[]>;
def i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__regs__MOI_CLONE_MOI_node: SDNode<"CodasipISD::MOI_GROUP_1",i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__regs__MOI_CLONE_MOI_SDT,[SDNPHasChain,SDNPMayLoad,SDNPMayStore]>;
def i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__regs__MOI_CLONE_: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let Pattern = [(i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__regs__MOI_CLONE_MOI_node (i32 CheckFI_i32_regs:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_f,reg0,reg0,regs)
}

def i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0__MOI_CLONE_MOI_SDT: SDTypeProfile<0,1,[]>;
def i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0__MOI_CLONE_MOI_node: SDNode<"CodasipISD::MOI_GROUP_2",i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0__MOI_CLONE_MOI_SDT,[SDNPHasChain,SDNPMayLoad,SDNPMayStore]>;
def i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0__MOI_CLONE_: CodasipMicroClass_<(outs), (ins regs:$op0)>
{
let Pattern = [(i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0__MOI_CLONE_MOI_node (i32 CheckFI_i32_regs:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_f,reg0,regs,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__regs__MOI_CLONE_MOI_SDT: SDTypeProfile<0,2,[]>;
def i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__regs__MOI_CLONE_MOI_node: SDNode<"CodasipISD::MOI_GROUP_3",i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__regs__MOI_CLONE_MOI_SDT,[SDNPHasChain,SDNPMayLoad,SDNPMayStore,SDNPMemOperand]>;
def i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__regs__MOI_CLONE_: CodasipMicroClass_<(outs), (ins regs:$op0, regs:$op1)>
{
let Pattern = [(i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__regs__MOI_CLONE_MOI_node (i32 CheckFI_i32_regs:$op0), (i32 CheckFI_i32_regs:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_f,reg0,regs,regs)
}

def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__AEXT_CLONE_MOI_CLONE_MOI_SDT: SDTypeProfile<1,1,[SDTCisVT<0,i32>]>;
def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__AEXT_CLONE_MOI_CLONE_MOI_node: SDNode<"CodasipISD::MOI_GROUP_4",i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__AEXT_CLONE_MOI_CLONE_MOI_SDT,[SDNPHasChain,SDNPMayLoad,SDNPMayStore]>;
def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__AEXT_CLONE_MOI_CLONE_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let Pattern = [(set regs:$op0, (i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__AEXT_CLONE_MOI_CLONE_MOI_node (i32 CheckFI_i32_regs:$op1)))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_c,regs,reg0,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__AEXT_CLONE_MOI_CLONE_MOI_SDT: SDTypeProfile<1,2,[SDTCisVT<0,i32>]>;
def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__AEXT_CLONE_MOI_CLONE_MOI_node: SDNode<"CodasipISD::MOI_GROUP_5",i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__AEXT_CLONE_MOI_CLONE_MOI_SDT,[SDNPHasChain,SDNPMayLoad,SDNPMayStore,SDNPMemOperand]>;
def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__AEXT_CLONE_MOI_CLONE_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let Pattern = [(set regs:$op0, (i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__AEXT_CLONE_MOI_CLONE_MOI_node (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2)))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_c,regs,reg0,regs)
}

def i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__AEXT_CLONE_MOI_CLONE_MOI_SDT: SDTypeProfile<1,2,[SDTCisVT<0,i32>]>;
def i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__AEXT_CLONE_MOI_CLONE_MOI_node: SDNode<"CodasipISD::MOI_GROUP_6",i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__AEXT_CLONE_MOI_CLONE_MOI_SDT,[SDNPHasChain,SDNPMayLoad,SDNPMayStore,SDNPMemOperand]>;
def i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__AEXT_CLONE_MOI_CLONE_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let Pattern = [(set regs:$op0, (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__AEXT_CLONE_MOI_CLONE_MOI_node (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2)))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_c,regs,regs,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__AEXT_CLONE_MOI_CLONE_MOI_SDT: SDTypeProfile<1,3,[SDTCisVT<0,i32>]>;
def i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__AEXT_CLONE_MOI_CLONE_MOI_node: SDNode<"CodasipISD::MOI_GROUP_7",i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__AEXT_CLONE_MOI_CLONE_MOI_SDT,[SDNPHasChain,SDNPMayLoad,SDNPMayStore,SDNPMemOperand]>;
def i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__AEXT_CLONE_MOI_CLONE_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2, regs:$op3)>
{
let Pattern = [(set regs:$op0, (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__AEXT_CLONE_MOI_CLONE_MOI_node (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2), (i32 CheckFI_i32_regs:$op3)))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_c,regs,regs,regs)
}

def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__MOI_CLONE_MOI_SDT: SDTypeProfile<1,1,[SDTCisVT<0,i32>]>;
def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__MOI_CLONE_MOI_node: SDNode<"CodasipISD::MOI_GROUP_8",i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__MOI_CLONE_MOI_SDT,[SDNPHasChain,SDNPMayLoad,SDNPMayStore]>;
def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__MOI_CLONE_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1)>
{
let Pattern = [(set regs:$op0, (i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__MOI_CLONE_MOI_node (i32 CheckFI_i32_regs:$op1)))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_c,regs,reg0,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__MOI_CLONE_MOI_SDT: SDTypeProfile<1,2,[SDTCisVT<0,i32>]>;
def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__MOI_CLONE_MOI_node: SDNode<"CodasipISD::MOI_GROUP_9",i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__MOI_CLONE_MOI_SDT,[SDNPHasChain,SDNPMayLoad,SDNPMayStore,SDNPMemOperand]>;
def i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__MOI_CLONE_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let Pattern = [(set regs:$op0, (i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__MOI_CLONE_MOI_node (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2)))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_c,regs,reg0,regs)
}

def i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__MOI_CLONE_MOI_SDT: SDTypeProfile<1,2,[SDTCisVT<0,i32>]>;
def i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__MOI_CLONE_MOI_node: SDNode<"CodasipISD::MOI_GROUP_10",i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__MOI_CLONE_MOI_SDT,[SDNPHasChain,SDNPMayLoad,SDNPMayStore,SDNPMemOperand]>;
def i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__MOI_CLONE_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2)>
{
let Pattern = [(set regs:$op0, (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__MOI_CLONE_MOI_node (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2)))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_c,regs,regs,reg0)
}

def i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__MOI_CLONE_MOI_SDT: SDTypeProfile<1,3,[SDTCisVT<0,i32>]>;
def i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__MOI_CLONE_MOI_node: SDNode<"CodasipISD::MOI_GROUP_11",i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__MOI_CLONE_MOI_SDT,[SDNPHasChain,SDNPMayLoad,SDNPMayStore,SDNPMemOperand]>;
def i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__MOI_CLONE_: CodasipMicroClass_<(outs regs:$op0), (ins regs:$op1, regs:$op2, regs:$op3)>
{
let Pattern = [(set regs:$op0, (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__MOI_CLONE_MOI_node (i32 CheckFI_i32_regs:$op1), (i32 CheckFI_i32_regs:$op2), (i32 CheckFI_i32_regs:$op3)))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let isCodeGenOnly = 1;
// i_ext_hackaton(opc_hackaton_custom_c,regs,regs,regs)
}



// patterns for general vector shuffles


