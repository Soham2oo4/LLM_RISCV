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


// definition of registers, groups of registers and their properties

/******** Register dedication **************************************/
// Stack pointer: rf_gpr_2
// Base pointer: rf_gpr_8

/*******************************************************************/

// convenient classes
class CodasipReg<string defSyntax, list<string> altNames, list<RegAltNameIndex> altNameInds>: Register<defSyntax,altNames>
{
  let Namespace = " Codasip";
  let RegAltNameIndices = altNameInds;
}

class CodasipRegAltNameIndex: RegAltNameIndex
{
  let Namespace = " Codasip";
}

// definition of all HW registers
def regs_AltNameIndex: CodasipRegAltNameIndex;
def r_csr_marchid_0: CodasipReg<"", [], []>, DwarfRegNum<[38]>
{
}
def r_csr_mcause_0: CodasipReg<"", [], []>, DwarfRegNum<[36]>
{
}
def r_csr_mcountinhibit_0: CodasipReg<"", [], []>, DwarfRegNum<[45]>
{
}
def r_csr_mcycle_0: CodasipReg<"", [], []>, DwarfRegNum<[37]>
{
}
def r_csr_mepc_0: CodasipReg<"", [], []>, DwarfRegNum<[32]>
{
}
def r_csr_mhartid_0: CodasipReg<"", [], []>, DwarfRegNum<[39]>
{
}
def r_csr_mie_0: CodasipReg<"", [], []>, DwarfRegNum<[46]>
{
}
def r_csr_minstret_0: CodasipReg<"", [], []>, DwarfRegNum<[42]>
{
}
def r_csr_mip_0: CodasipReg<"", [], []>, DwarfRegNum<[47]>
{
}
def r_csr_misa_0: CodasipReg<"", [], []>, DwarfRegNum<[33]>
{
}
def r_csr_mscratch_0: CodasipReg<"", [], []>, DwarfRegNum<[43]>
{
}
def r_csr_mstatus_0: CodasipReg<"", [], []>, DwarfRegNum<[40]>
{
}
def r_csr_mtval_0: CodasipReg<"", [], []>, DwarfRegNum<[34]>
{
}
def r_csr_mtvec_0: CodasipReg<"", [], []>, DwarfRegNum<[35]>
{
}
def r_csr_nmi_0: CodasipReg<"", [], []>, DwarfRegNum<[48]>
{
}
def r_csr_nmi_mtval_0: CodasipReg<"", [], []>, DwarfRegNum<[44]>
{
}
def r_nmi_handler_0: CodasipReg<"", [], []>, DwarfRegNum<[41]>
{
}
def rf_gpr_0: CodasipReg<"", [], []>, DwarfRegNum<[0]>
{
 let HWEncoding{4-0} = 0;
}
def rf_gpr_1: CodasipReg<"ra", ["x1"], []>, DwarfRegNum<[1]>
{
 let HWEncoding{4-0} = 1;
}
def rf_gpr_2: CodasipReg<"sp", ["x2"], []>, DwarfRegNum<[2]>
{
 let HWEncoding{4-0} = 2;
}
def rf_gpr_3: CodasipReg<"x3", ["gp"], []>, DwarfRegNum<[3]>
{
 let HWEncoding{4-0} = 3;
}
def rf_gpr_4: CodasipReg<"x4", ["tp"], []>, DwarfRegNum<[4]>
{
 let HWEncoding{4-0} = 4;
}
def rf_gpr_5: CodasipReg<"x5", ["t0"], []>, DwarfRegNum<[5]>
{
 let HWEncoding{4-0} = 5;
}
def rf_gpr_6: CodasipReg<"x6", ["t1"], []>, DwarfRegNum<[6]>
{
 let HWEncoding{4-0} = 6;
}
def rf_gpr_7: CodasipReg<"x7", ["t2"], []>, DwarfRegNum<[7]>
{
 let HWEncoding{4-0} = 7;
}
def rf_gpr_8: CodasipReg<"fp", ["x8","s0"], []>, DwarfRegNum<[8]>
{
 let HWEncoding{4-0} = 8;
}
def rf_gpr_9: CodasipReg<"x9", ["s1"], []>, DwarfRegNum<[9]>
{
 let HWEncoding{4-0} = 9;
}
def rf_gpr_10: CodasipReg<"x10", ["a0"], []>, DwarfRegNum<[10]>
{
 let HWEncoding{4-0} = 10;
}
def rf_gpr_11: CodasipReg<"x11", ["a1"], []>, DwarfRegNum<[11]>
{
 let HWEncoding{4-0} = 11;
}
def rf_gpr_12: CodasipReg<"x12", ["a2"], []>, DwarfRegNum<[12]>
{
 let HWEncoding{4-0} = 12;
}
def rf_gpr_13: CodasipReg<"x13", ["a3"], []>, DwarfRegNum<[13]>
{
 let HWEncoding{4-0} = 13;
}
def rf_gpr_14: CodasipReg<"x14", ["a4"], []>, DwarfRegNum<[14]>
{
 let HWEncoding{4-0} = 14;
}
def rf_gpr_15: CodasipReg<"x15", ["a5"], []>, DwarfRegNum<[15]>
{
 let HWEncoding{4-0} = 15;
}
def rf_gpr_16: CodasipReg<"x16", ["a6"], []>, DwarfRegNum<[16]>
{
 let HWEncoding{4-0} = 16;
}
def rf_gpr_17: CodasipReg<"x17", ["a7"], []>, DwarfRegNum<[17]>
{
 let HWEncoding{4-0} = 17;
}
def rf_gpr_18: CodasipReg<"x18", ["s2"], []>, DwarfRegNum<[18]>
{
 let HWEncoding{4-0} = 18;
}
def rf_gpr_19: CodasipReg<"x19", ["s3"], []>, DwarfRegNum<[19]>
{
 let HWEncoding{4-0} = 19;
}
def rf_gpr_20: CodasipReg<"x20", ["s4"], []>, DwarfRegNum<[20]>
{
 let HWEncoding{4-0} = 20;
}
def rf_gpr_21: CodasipReg<"x21", ["s5"], []>, DwarfRegNum<[21]>
{
 let HWEncoding{4-0} = 21;
}
def rf_gpr_22: CodasipReg<"x22", ["s6"], []>, DwarfRegNum<[22]>
{
 let HWEncoding{4-0} = 22;
}
def rf_gpr_23: CodasipReg<"x23", ["s7"], []>, DwarfRegNum<[23]>
{
 let HWEncoding{4-0} = 23;
}
def rf_gpr_24: CodasipReg<"x24", ["s8"], []>, DwarfRegNum<[24]>
{
 let HWEncoding{4-0} = 24;
}
def rf_gpr_25: CodasipReg<"x25", ["s9"], []>, DwarfRegNum<[25]>
{
 let HWEncoding{4-0} = 25;
}
def rf_gpr_26: CodasipReg<"x26", ["s10"], []>, DwarfRegNum<[26]>
{
 let HWEncoding{4-0} = 26;
}
def rf_gpr_27: CodasipReg<"x27", ["s11"], []>, DwarfRegNum<[27]>
{
 let HWEncoding{4-0} = 27;
}
def rf_gpr_28: CodasipReg<"x28", ["t3"], []>, DwarfRegNum<[28]>
{
 let HWEncoding{4-0} = 28;
}
def rf_gpr_29: CodasipReg<"x29", ["t4"], []>, DwarfRegNum<[29]>
{
 let HWEncoding{4-0} = 29;
}
def rf_gpr_30: CodasipReg<"x30", ["t5"], []>, DwarfRegNum<[30]>
{
 let HWEncoding{4-0} = 30;
}
def rf_gpr_31: CodasipReg<"x31", ["t6"], []>, DwarfRegNum<[31]>
{
 let HWEncoding{4-0} = 31;
}
def codasip_physical_regs_csr_768: CodasipReg<"mstatus", [], []>, DwarfRegNum<[0]>
{
 let HWEncoding{11-0} = 768;
}
def codasip_physical_regs_csr_769: CodasipReg<"misa", [], []>, DwarfRegNum<[1]>
{
 let HWEncoding{11-0} = 769;
}
def codasip_physical_regs_csr_772: CodasipReg<"mie", [], []>, DwarfRegNum<[2]>
{
 let HWEncoding{11-0} = 772;
}
def codasip_physical_regs_csr_773: CodasipReg<"mtvec", [], []>, DwarfRegNum<[3]>
{
 let HWEncoding{11-0} = 773;
}
def codasip_physical_regs_csr_800: CodasipReg<"mcountinhibit", [], []>, DwarfRegNum<[4]>
{
 let HWEncoding{11-0} = 800;
}
def codasip_physical_regs_csr_803: CodasipReg<"mhpmevent3", [], []>, DwarfRegNum<[5]>
{
 let HWEncoding{11-0} = 803;
}
def codasip_physical_regs_csr_804: CodasipReg<"mhpmevent4", [], []>, DwarfRegNum<[6]>
{
 let HWEncoding{11-0} = 804;
}
def codasip_physical_regs_csr_805: CodasipReg<"mhpmevent5", [], []>, DwarfRegNum<[7]>
{
 let HWEncoding{11-0} = 805;
}
def codasip_physical_regs_csr_806: CodasipReg<"mhpmevent6", [], []>, DwarfRegNum<[8]>
{
 let HWEncoding{11-0} = 806;
}
def codasip_physical_regs_csr_807: CodasipReg<"mhpmevent7", [], []>, DwarfRegNum<[9]>
{
 let HWEncoding{11-0} = 807;
}
def codasip_physical_regs_csr_808: CodasipReg<"mhpmevent8", [], []>, DwarfRegNum<[10]>
{
 let HWEncoding{11-0} = 808;
}
def codasip_physical_regs_csr_809: CodasipReg<"mhpmevent9", [], []>, DwarfRegNum<[11]>
{
 let HWEncoding{11-0} = 809;
}
def codasip_physical_regs_csr_810: CodasipReg<"mhpmevent10", [], []>, DwarfRegNum<[12]>
{
 let HWEncoding{11-0} = 810;
}
def codasip_physical_regs_csr_811: CodasipReg<"mhpmevent11", [], []>, DwarfRegNum<[13]>
{
 let HWEncoding{11-0} = 811;
}
def codasip_physical_regs_csr_812: CodasipReg<"mhpmevent12", [], []>, DwarfRegNum<[14]>
{
 let HWEncoding{11-0} = 812;
}
def codasip_physical_regs_csr_813: CodasipReg<"mhpmevent13", [], []>, DwarfRegNum<[15]>
{
 let HWEncoding{11-0} = 813;
}
def codasip_physical_regs_csr_814: CodasipReg<"mhpmevent14", [], []>, DwarfRegNum<[16]>
{
 let HWEncoding{11-0} = 814;
}
def codasip_physical_regs_csr_815: CodasipReg<"mhpmevent15", [], []>, DwarfRegNum<[17]>
{
 let HWEncoding{11-0} = 815;
}
def codasip_physical_regs_csr_816: CodasipReg<"mhpmevent16", [], []>, DwarfRegNum<[18]>
{
 let HWEncoding{11-0} = 816;
}
def codasip_physical_regs_csr_817: CodasipReg<"mhpmevent17", [], []>, DwarfRegNum<[19]>
{
 let HWEncoding{11-0} = 817;
}
def codasip_physical_regs_csr_818: CodasipReg<"mhpmevent18", [], []>, DwarfRegNum<[20]>
{
 let HWEncoding{11-0} = 818;
}
def codasip_physical_regs_csr_819: CodasipReg<"mhpmevent19", [], []>, DwarfRegNum<[21]>
{
 let HWEncoding{11-0} = 819;
}
def codasip_physical_regs_csr_820: CodasipReg<"mhpmevent20", [], []>, DwarfRegNum<[22]>
{
 let HWEncoding{11-0} = 820;
}
def codasip_physical_regs_csr_821: CodasipReg<"mhpmevent21", [], []>, DwarfRegNum<[23]>
{
 let HWEncoding{11-0} = 821;
}
def codasip_physical_regs_csr_822: CodasipReg<"mhpmevent22", [], []>, DwarfRegNum<[24]>
{
 let HWEncoding{11-0} = 822;
}
def codasip_physical_regs_csr_823: CodasipReg<"mhpmevent23", [], []>, DwarfRegNum<[25]>
{
 let HWEncoding{11-0} = 823;
}
def codasip_physical_regs_csr_824: CodasipReg<"mhpmevent24", [], []>, DwarfRegNum<[26]>
{
 let HWEncoding{11-0} = 824;
}
def codasip_physical_regs_csr_825: CodasipReg<"mhpmevent25", [], []>, DwarfRegNum<[27]>
{
 let HWEncoding{11-0} = 825;
}
def codasip_physical_regs_csr_826: CodasipReg<"mhpmevent26", [], []>, DwarfRegNum<[28]>
{
 let HWEncoding{11-0} = 826;
}
def codasip_physical_regs_csr_827: CodasipReg<"mhpmevent27", [], []>, DwarfRegNum<[29]>
{
 let HWEncoding{11-0} = 827;
}
def codasip_physical_regs_csr_828: CodasipReg<"mhpmevent28", [], []>, DwarfRegNum<[30]>
{
 let HWEncoding{11-0} = 828;
}
def codasip_physical_regs_csr_829: CodasipReg<"mhpmevent29", [], []>, DwarfRegNum<[31]>
{
 let HWEncoding{11-0} = 829;
}
def codasip_physical_regs_csr_830: CodasipReg<"mhpmevent30", [], []>, DwarfRegNum<[32]>
{
 let HWEncoding{11-0} = 830;
}
def codasip_physical_regs_csr_831: CodasipReg<"mhpmevent31", [], []>, DwarfRegNum<[33]>
{
 let HWEncoding{11-0} = 831;
}
def codasip_physical_regs_csr_832: CodasipReg<"mscratch", [], []>, DwarfRegNum<[34]>
{
 let HWEncoding{11-0} = 832;
}
def codasip_physical_regs_csr_833: CodasipReg<"mepc", [], []>, DwarfRegNum<[35]>
{
 let HWEncoding{11-0} = 833;
}
def codasip_physical_regs_csr_834: CodasipReg<"mcause", [], []>, DwarfRegNum<[36]>
{
 let HWEncoding{11-0} = 834;
}
def codasip_physical_regs_csr_835: CodasipReg<"mtval", [], []>, DwarfRegNum<[37]>
{
 let HWEncoding{11-0} = 835;
}
def codasip_physical_regs_csr_836: CodasipReg<"mip", [], []>, DwarfRegNum<[38]>
{
 let HWEncoding{11-0} = 836;
}
def codasip_physical_regs_csr_2816: CodasipReg<"mcycle", [], []>, DwarfRegNum<[39]>
{
 let HWEncoding{11-0} = 2816;
}
def codasip_physical_regs_csr_2818: CodasipReg<"minstret", [], []>, DwarfRegNum<[40]>
{
 let HWEncoding{11-0} = 2818;
}
def codasip_physical_regs_csr_2819: CodasipReg<"mhpmcounter3", [], []>, DwarfRegNum<[41]>
{
 let HWEncoding{11-0} = 2819;
}
def codasip_physical_regs_csr_2820: CodasipReg<"mhpmcounter4", [], []>, DwarfRegNum<[42]>
{
 let HWEncoding{11-0} = 2820;
}
def codasip_physical_regs_csr_2821: CodasipReg<"mhpmcounter5", [], []>, DwarfRegNum<[43]>
{
 let HWEncoding{11-0} = 2821;
}
def codasip_physical_regs_csr_2822: CodasipReg<"mhpmcounter6", [], []>, DwarfRegNum<[44]>
{
 let HWEncoding{11-0} = 2822;
}
def codasip_physical_regs_csr_2823: CodasipReg<"mhpmcounter7", [], []>, DwarfRegNum<[45]>
{
 let HWEncoding{11-0} = 2823;
}
def codasip_physical_regs_csr_2824: CodasipReg<"mhpmcounter8", [], []>, DwarfRegNum<[46]>
{
 let HWEncoding{11-0} = 2824;
}
def codasip_physical_regs_csr_2825: CodasipReg<"mhpmcounter9", [], []>, DwarfRegNum<[47]>
{
 let HWEncoding{11-0} = 2825;
}
def codasip_physical_regs_csr_2826: CodasipReg<"mhpmcounter10", [], []>, DwarfRegNum<[48]>
{
 let HWEncoding{11-0} = 2826;
}
def codasip_physical_regs_csr_2827: CodasipReg<"mhpmcounter11", [], []>, DwarfRegNum<[49]>
{
 let HWEncoding{11-0} = 2827;
}
def codasip_physical_regs_csr_2828: CodasipReg<"mhpmcounter12", [], []>, DwarfRegNum<[50]>
{
 let HWEncoding{11-0} = 2828;
}
def codasip_physical_regs_csr_2829: CodasipReg<"mhpmcounter13", [], []>, DwarfRegNum<[51]>
{
 let HWEncoding{11-0} = 2829;
}
def codasip_physical_regs_csr_2830: CodasipReg<"mhpmcounter14", [], []>, DwarfRegNum<[52]>
{
 let HWEncoding{11-0} = 2830;
}
def codasip_physical_regs_csr_2831: CodasipReg<"mhpmcounter15", [], []>, DwarfRegNum<[53]>
{
 let HWEncoding{11-0} = 2831;
}
def codasip_physical_regs_csr_2832: CodasipReg<"mhpmcounter16", [], []>, DwarfRegNum<[54]>
{
 let HWEncoding{11-0} = 2832;
}
def codasip_physical_regs_csr_2833: CodasipReg<"mhpmcounter17", [], []>, DwarfRegNum<[55]>
{
 let HWEncoding{11-0} = 2833;
}
def codasip_physical_regs_csr_2834: CodasipReg<"mhpmcounter18", [], []>, DwarfRegNum<[56]>
{
 let HWEncoding{11-0} = 2834;
}
def codasip_physical_regs_csr_2835: CodasipReg<"mhpmcounter19", [], []>, DwarfRegNum<[57]>
{
 let HWEncoding{11-0} = 2835;
}
def codasip_physical_regs_csr_2836: CodasipReg<"mhpmcounter20", [], []>, DwarfRegNum<[58]>
{
 let HWEncoding{11-0} = 2836;
}
def codasip_physical_regs_csr_2837: CodasipReg<"mhpmcounter21", [], []>, DwarfRegNum<[59]>
{
 let HWEncoding{11-0} = 2837;
}
def codasip_physical_regs_csr_2838: CodasipReg<"mhpmcounter22", [], []>, DwarfRegNum<[60]>
{
 let HWEncoding{11-0} = 2838;
}
def codasip_physical_regs_csr_2839: CodasipReg<"mhpmcounter23", [], []>, DwarfRegNum<[61]>
{
 let HWEncoding{11-0} = 2839;
}
def codasip_physical_regs_csr_2840: CodasipReg<"mhpmcounter24", [], []>, DwarfRegNum<[62]>
{
 let HWEncoding{11-0} = 2840;
}
def codasip_physical_regs_csr_2841: CodasipReg<"mhpmcounter25", [], []>, DwarfRegNum<[63]>
{
 let HWEncoding{11-0} = 2841;
}
def codasip_physical_regs_csr_2842: CodasipReg<"mhpmcounter26", [], []>, DwarfRegNum<[64]>
{
 let HWEncoding{11-0} = 2842;
}
def codasip_physical_regs_csr_2843: CodasipReg<"mhpmcounter27", [], []>, DwarfRegNum<[65]>
{
 let HWEncoding{11-0} = 2843;
}
def codasip_physical_regs_csr_2844: CodasipReg<"mhpmcounter28", [], []>, DwarfRegNum<[66]>
{
 let HWEncoding{11-0} = 2844;
}
def codasip_physical_regs_csr_2845: CodasipReg<"mhpmcounter29", [], []>, DwarfRegNum<[67]>
{
 let HWEncoding{11-0} = 2845;
}
def codasip_physical_regs_csr_2846: CodasipReg<"mhpmcounter30", [], []>, DwarfRegNum<[68]>
{
 let HWEncoding{11-0} = 2846;
}
def codasip_physical_regs_csr_2847: CodasipReg<"mhpmcounter31", [], []>, DwarfRegNum<[69]>
{
 let HWEncoding{11-0} = 2847;
}
def codasip_physical_regs_csr_2944: CodasipReg<"mcycleh", [], []>, DwarfRegNum<[70]>
{
 let HWEncoding{11-0} = 2944;
}
def codasip_physical_regs_csr_2946: CodasipReg<"minstreth", [], []>, DwarfRegNum<[71]>
{
 let HWEncoding{11-0} = 2946;
}
def codasip_physical_regs_csr_2947: CodasipReg<"mhpmcounter3h", [], []>, DwarfRegNum<[72]>
{
 let HWEncoding{11-0} = 2947;
}
def codasip_physical_regs_csr_2948: CodasipReg<"mhpmcounter4h", [], []>, DwarfRegNum<[73]>
{
 let HWEncoding{11-0} = 2948;
}
def codasip_physical_regs_csr_2949: CodasipReg<"mhpmcounter5h", [], []>, DwarfRegNum<[74]>
{
 let HWEncoding{11-0} = 2949;
}
def codasip_physical_regs_csr_2950: CodasipReg<"mhpmcounter6h", [], []>, DwarfRegNum<[75]>
{
 let HWEncoding{11-0} = 2950;
}
def codasip_physical_regs_csr_2951: CodasipReg<"mhpmcounter7h", [], []>, DwarfRegNum<[76]>
{
 let HWEncoding{11-0} = 2951;
}
def codasip_physical_regs_csr_2952: CodasipReg<"mhpmcounter8h", [], []>, DwarfRegNum<[77]>
{
 let HWEncoding{11-0} = 2952;
}
def codasip_physical_regs_csr_2953: CodasipReg<"mhpmcounter9h", [], []>, DwarfRegNum<[78]>
{
 let HWEncoding{11-0} = 2953;
}
def codasip_physical_regs_csr_2954: CodasipReg<"mhpmcounter10h", [], []>, DwarfRegNum<[79]>
{
 let HWEncoding{11-0} = 2954;
}
def codasip_physical_regs_csr_2955: CodasipReg<"mhpmcounter11h", [], []>, DwarfRegNum<[80]>
{
 let HWEncoding{11-0} = 2955;
}
def codasip_physical_regs_csr_2956: CodasipReg<"mhpmcounter12h", [], []>, DwarfRegNum<[81]>
{
 let HWEncoding{11-0} = 2956;
}
def codasip_physical_regs_csr_2957: CodasipReg<"mhpmcounter13h", [], []>, DwarfRegNum<[82]>
{
 let HWEncoding{11-0} = 2957;
}
def codasip_physical_regs_csr_2958: CodasipReg<"mhpmcounter14h", [], []>, DwarfRegNum<[83]>
{
 let HWEncoding{11-0} = 2958;
}
def codasip_physical_regs_csr_2959: CodasipReg<"mhpmcounter15h", [], []>, DwarfRegNum<[84]>
{
 let HWEncoding{11-0} = 2959;
}
def codasip_physical_regs_csr_2960: CodasipReg<"mhpmcounter16h", [], []>, DwarfRegNum<[85]>
{
 let HWEncoding{11-0} = 2960;
}
def codasip_physical_regs_csr_2961: CodasipReg<"mhpmcounter17h", [], []>, DwarfRegNum<[86]>
{
 let HWEncoding{11-0} = 2961;
}
def codasip_physical_regs_csr_2962: CodasipReg<"mhpmcounter18h", [], []>, DwarfRegNum<[87]>
{
 let HWEncoding{11-0} = 2962;
}
def codasip_physical_regs_csr_2963: CodasipReg<"mhpmcounter19h", [], []>, DwarfRegNum<[88]>
{
 let HWEncoding{11-0} = 2963;
}
def codasip_physical_regs_csr_2964: CodasipReg<"mhpmcounter20h", [], []>, DwarfRegNum<[89]>
{
 let HWEncoding{11-0} = 2964;
}
def codasip_physical_regs_csr_2965: CodasipReg<"mhpmcounter21h", [], []>, DwarfRegNum<[90]>
{
 let HWEncoding{11-0} = 2965;
}
def codasip_physical_regs_csr_2966: CodasipReg<"mhpmcounter22h", [], []>, DwarfRegNum<[91]>
{
 let HWEncoding{11-0} = 2966;
}
def codasip_physical_regs_csr_2967: CodasipReg<"mhpmcounter23h", [], []>, DwarfRegNum<[92]>
{
 let HWEncoding{11-0} = 2967;
}
def codasip_physical_regs_csr_2968: CodasipReg<"mhpmcounter24h", [], []>, DwarfRegNum<[93]>
{
 let HWEncoding{11-0} = 2968;
}
def codasip_physical_regs_csr_2969: CodasipReg<"mhpmcounter25h", [], []>, DwarfRegNum<[94]>
{
 let HWEncoding{11-0} = 2969;
}
def codasip_physical_regs_csr_2970: CodasipReg<"mhpmcounter26h", [], []>, DwarfRegNum<[95]>
{
 let HWEncoding{11-0} = 2970;
}
def codasip_physical_regs_csr_2971: CodasipReg<"mhpmcounter27h", [], []>, DwarfRegNum<[96]>
{
 let HWEncoding{11-0} = 2971;
}
def codasip_physical_regs_csr_2972: CodasipReg<"mhpmcounter28h", [], []>, DwarfRegNum<[97]>
{
 let HWEncoding{11-0} = 2972;
}
def codasip_physical_regs_csr_2973: CodasipReg<"mhpmcounter29h", [], []>, DwarfRegNum<[98]>
{
 let HWEncoding{11-0} = 2973;
}
def codasip_physical_regs_csr_2974: CodasipReg<"mhpmcounter30h", [], []>, DwarfRegNum<[99]>
{
 let HWEncoding{11-0} = 2974;
}
def codasip_physical_regs_csr_2975: CodasipReg<"mhpmcounter31h", [], []>, DwarfRegNum<[100]>
{
 let HWEncoding{11-0} = 2975;
}
def codasip_physical_regs_csr_3857: CodasipReg<"mvendorid", [], []>, DwarfRegNum<[101]>
{
 let HWEncoding{11-0} = 3857;
}
def codasip_physical_regs_csr_3858: CodasipReg<"marchid", [], []>, DwarfRegNum<[102]>
{
 let HWEncoding{11-0} = 3858;
}
def codasip_physical_regs_csr_3859: CodasipReg<"mimpid", [], []>, DwarfRegNum<[103]>
{
 let HWEncoding{11-0} = 3859;
}
def codasip_physical_regs_csr_3860: CodasipReg<"mhartid", [], []>, DwarfRegNum<[104]>
{
 let HWEncoding{11-0} = 3860;
}
def codasip_physical_regs_csr_4033: CodasipReg<"nmi", [], []>, DwarfRegNum<[105]>
{
 let HWEncoding{11-0} = 4033;
}
def codasip_physical_regs_csr_4038: CodasipReg<"nmi_mtval", [], []>, DwarfRegNum<[106]>
{
 let HWEncoding{11-0} = 4038;
}




// definition of HW banks


// definition of register class r_csr_marchid
def r_csr_marchid: RegisterClass<"Codasip", [untyped], 32, (add r_csr_marchid_0)>
{
  let isAllocatable = 0;
  let Size = 32;
}

// definition of register class r_csr_mcause
def r_csr_mcause: RegisterClass<"Codasip", [untyped], 32, (add r_csr_mcause_0)>
{
  let isAllocatable = 0;
  let Size = 32;
}

// definition of register class r_csr_mcountinhibit
def r_csr_mcountinhibit: RegisterClass<"Codasip", [untyped], 32, (add r_csr_mcountinhibit_0)>
{
  let isAllocatable = 0;
  let Size = 32;
}

// definition of register class r_csr_mcycle
def r_csr_mcycle: RegisterClass<"Codasip", [untyped], 64, (add r_csr_mcycle_0)>
{
  let isAllocatable = 0;
  let Size = 64;
}

// definition of register class r_csr_mepc
def r_csr_mepc: RegisterClass<"Codasip", [untyped], 32, (add r_csr_mepc_0)>
{
  let isAllocatable = 0;
  let Size = 32;
}

// definition of register class r_csr_mhartid
def r_csr_mhartid: RegisterClass<"Codasip", [untyped], 32, (add r_csr_mhartid_0)>
{
  let isAllocatable = 0;
  let Size = 32;
}

// definition of register class r_csr_mie
def r_csr_mie: RegisterClass<"Codasip", [untyped], 32, (add r_csr_mie_0)>
{
  let isAllocatable = 0;
  let Size = 32;
}

// definition of register class r_csr_minstret
def r_csr_minstret: RegisterClass<"Codasip", [untyped], 64, (add r_csr_minstret_0)>
{
  let isAllocatable = 0;
  let Size = 64;
}

// definition of register class r_csr_mip
def r_csr_mip: RegisterClass<"Codasip", [untyped], 32, (add r_csr_mip_0)>
{
  let isAllocatable = 0;
  let Size = 32;
}

// definition of register class r_csr_misa
def r_csr_misa: RegisterClass<"Codasip", [untyped], 32, (add r_csr_misa_0)>
{
  let isAllocatable = 0;
  let Size = 32;
}

// definition of register class r_csr_mscratch
def r_csr_mscratch: RegisterClass<"Codasip", [untyped], 32, (add r_csr_mscratch_0)>
{
  let isAllocatable = 0;
  let Size = 32;
}

// definition of register class r_csr_mstatus
def r_csr_mstatus: RegisterClass<"Codasip", [untyped], 32, (add r_csr_mstatus_0)>
{
  let isAllocatable = 0;
  let Size = 32;
}

// definition of register class r_csr_mtval
def r_csr_mtval: RegisterClass<"Codasip", [untyped], 32, (add r_csr_mtval_0)>
{
  let isAllocatable = 0;
  let Size = 32;
}

// definition of register class r_csr_mtvec
def r_csr_mtvec: RegisterClass<"Codasip", [untyped], 32, (add r_csr_mtvec_0)>
{
  let isAllocatable = 0;
  let Size = 32;
}

// definition of register class r_csr_nmi
def r_csr_nmi: RegisterClass<"Codasip", [untyped], 8, (add r_csr_nmi_0)>
{
  let isAllocatable = 0;
  let Size = 8;
}

// definition of register class r_csr_nmi_mtval
def r_csr_nmi_mtval: RegisterClass<"Codasip", [untyped], 32, (add r_csr_nmi_mtval_0)>
{
  let isAllocatable = 0;
  let Size = 32;
}

// definition of register class r_nmi_handler
def r_nmi_handler: RegisterClass<"Codasip", [untyped], 32, (add r_nmi_handler_0)>
{
  let isAllocatable = 0;
  let Size = 32;
}

// definition of register class rf_gpr
def rf_gpr: RegisterClass<"Codasip", [i32], 32, (add rf_gpr_0, rf_gpr_1, rf_gpr_2, rf_gpr_3, rf_gpr_4, rf_gpr_5, rf_gpr_6, rf_gpr_7, rf_gpr_8, rf_gpr_9, rf_gpr_10, rf_gpr_11, rf_gpr_12, rf_gpr_13, rf_gpr_14, rf_gpr_15, rf_gpr_16, rf_gpr_17, rf_gpr_18, rf_gpr_19, rf_gpr_20, rf_gpr_21, rf_gpr_22, rf_gpr_23, rf_gpr_24, rf_gpr_25, rf_gpr_26, rf_gpr_27, rf_gpr_28, rf_gpr_29, rf_gpr_30, rf_gpr_31)>
{
  let isAllocatable = 0;
  let Size = 32;
}

// definition of register class codasip_physical_regs_csr
def codasip_physical_regs_csr: RegisterClass<"Codasip", [untyped], 32, (add codasip_physical_regs_csr_768, codasip_physical_regs_csr_769, codasip_physical_regs_csr_772, codasip_physical_regs_csr_773, codasip_physical_regs_csr_800, codasip_physical_regs_csr_803, codasip_physical_regs_csr_804, codasip_physical_regs_csr_805, codasip_physical_regs_csr_806, codasip_physical_regs_csr_807, codasip_physical_regs_csr_808, codasip_physical_regs_csr_809, codasip_physical_regs_csr_810, codasip_physical_regs_csr_811, codasip_physical_regs_csr_812, codasip_physical_regs_csr_813, codasip_physical_regs_csr_814, codasip_physical_regs_csr_815, codasip_physical_regs_csr_816, codasip_physical_regs_csr_817, codasip_physical_regs_csr_818, codasip_physical_regs_csr_819, codasip_physical_regs_csr_820, codasip_physical_regs_csr_821, codasip_physical_regs_csr_822, codasip_physical_regs_csr_823, codasip_physical_regs_csr_824, codasip_physical_regs_csr_825, codasip_physical_regs_csr_826, codasip_physical_regs_csr_827, codasip_physical_regs_csr_828, codasip_physical_regs_csr_829, codasip_physical_regs_csr_830, codasip_physical_regs_csr_831, codasip_physical_regs_csr_832, codasip_physical_regs_csr_833, codasip_physical_regs_csr_834, codasip_physical_regs_csr_835, codasip_physical_regs_csr_836, codasip_physical_regs_csr_2816, codasip_physical_regs_csr_2818, codasip_physical_regs_csr_2819, codasip_physical_regs_csr_2820, codasip_physical_regs_csr_2821, codasip_physical_regs_csr_2822, codasip_physical_regs_csr_2823, codasip_physical_regs_csr_2824, codasip_physical_regs_csr_2825, codasip_physical_regs_csr_2826, codasip_physical_regs_csr_2827, codasip_physical_regs_csr_2828, codasip_physical_regs_csr_2829, codasip_physical_regs_csr_2830, codasip_physical_regs_csr_2831, codasip_physical_regs_csr_2832, codasip_physical_regs_csr_2833, codasip_physical_regs_csr_2834, codasip_physical_regs_csr_2835, codasip_physical_regs_csr_2836, codasip_physical_regs_csr_2837, codasip_physical_regs_csr_2838, codasip_physical_regs_csr_2839, codasip_physical_regs_csr_2840, codasip_physical_regs_csr_2841, codasip_physical_regs_csr_2842, codasip_physical_regs_csr_2843, codasip_physical_regs_csr_2844, codasip_physical_regs_csr_2845, codasip_physical_regs_csr_2846, codasip_physical_regs_csr_2847, codasip_physical_regs_csr_2944, codasip_physical_regs_csr_2946, codasip_physical_regs_csr_2947, codasip_physical_regs_csr_2948, codasip_physical_regs_csr_2949, codasip_physical_regs_csr_2950, codasip_physical_regs_csr_2951, codasip_physical_regs_csr_2952, codasip_physical_regs_csr_2953, codasip_physical_regs_csr_2954, codasip_physical_regs_csr_2955, codasip_physical_regs_csr_2956, codasip_physical_regs_csr_2957, codasip_physical_regs_csr_2958, codasip_physical_regs_csr_2959, codasip_physical_regs_csr_2960, codasip_physical_regs_csr_2961, codasip_physical_regs_csr_2962, codasip_physical_regs_csr_2963, codasip_physical_regs_csr_2964, codasip_physical_regs_csr_2965, codasip_physical_regs_csr_2966, codasip_physical_regs_csr_2967, codasip_physical_regs_csr_2968, codasip_physical_regs_csr_2969, codasip_physical_regs_csr_2970, codasip_physical_regs_csr_2971, codasip_physical_regs_csr_2972, codasip_physical_regs_csr_2973, codasip_physical_regs_csr_2974, codasip_physical_regs_csr_2975, codasip_physical_regs_csr_3857, codasip_physical_regs_csr_3858, codasip_physical_regs_csr_3859, codasip_physical_regs_csr_3860, codasip_physical_regs_csr_4033, codasip_physical_regs_csr_4038)>
{
  let isAllocatable = 0;
  let Size = 32;
}


// dummy classes for FI hack



// definition of logical classes


// definition of register class regs
def regs: RegisterClass<"Codasip", [i32], 32, (add rf_gpr_1, rf_gpr_2, rf_gpr_3, rf_gpr_4, rf_gpr_5, rf_gpr_6, rf_gpr_7, rf_gpr_8, rf_gpr_9, rf_gpr_10, rf_gpr_11, rf_gpr_12, rf_gpr_13, rf_gpr_14, rf_gpr_15, rf_gpr_16, rf_gpr_17, rf_gpr_18, rf_gpr_19, rf_gpr_20, rf_gpr_21, rf_gpr_22, rf_gpr_23, rf_gpr_24, rf_gpr_25, rf_gpr_26, rf_gpr_27, rf_gpr_28, rf_gpr_29, rf_gpr_30, rf_gpr_31)>
{
  let AltOrders = [ (add rf_gpr_10, rf_gpr_11, rf_gpr_12, rf_gpr_13, rf_gpr_14, rf_gpr_15, rf_gpr_16, rf_gpr_17, rf_gpr_5, rf_gpr_6, rf_gpr_7, rf_gpr_28, rf_gpr_29, rf_gpr_30, rf_gpr_31, rf_gpr_8, rf_gpr_9, rf_gpr_18, rf_gpr_19, rf_gpr_20, rf_gpr_21, rf_gpr_22, rf_gpr_23, rf_gpr_24, rf_gpr_25, rf_gpr_26, rf_gpr_27, rf_gpr_1, rf_gpr_3, rf_gpr_4),
     (add ) ];
  let AltOrderSelect = [{ if(true) return 1; else  return 0;}];
  let Size = 32;
  let CopyCost = 1;
}


// definition of discarded classes


// definition of register class regs_csr
def regs_csr: RegisterClass<"Codasip", [untyped], 32, (add codasip_physical_regs_csr_768, codasip_physical_regs_csr_769, codasip_physical_regs_csr_772, codasip_physical_regs_csr_773, codasip_physical_regs_csr_800, codasip_physical_regs_csr_803, codasip_physical_regs_csr_804, codasip_physical_regs_csr_805, codasip_physical_regs_csr_806, codasip_physical_regs_csr_807, codasip_physical_regs_csr_808, codasip_physical_regs_csr_809, codasip_physical_regs_csr_810, codasip_physical_regs_csr_811, codasip_physical_regs_csr_812, codasip_physical_regs_csr_813, codasip_physical_regs_csr_814, codasip_physical_regs_csr_815, codasip_physical_regs_csr_816, codasip_physical_regs_csr_817, codasip_physical_regs_csr_818, codasip_physical_regs_csr_819, codasip_physical_regs_csr_820, codasip_physical_regs_csr_821, codasip_physical_regs_csr_822, codasip_physical_regs_csr_823, codasip_physical_regs_csr_824, codasip_physical_regs_csr_825, codasip_physical_regs_csr_826, codasip_physical_regs_csr_827, codasip_physical_regs_csr_828, codasip_physical_regs_csr_829, codasip_physical_regs_csr_830, codasip_physical_regs_csr_831, codasip_physical_regs_csr_832, codasip_physical_regs_csr_833, codasip_physical_regs_csr_834, codasip_physical_regs_csr_835, codasip_physical_regs_csr_836, codasip_physical_regs_csr_2816, codasip_physical_regs_csr_2818, codasip_physical_regs_csr_2819, codasip_physical_regs_csr_2820, codasip_physical_regs_csr_2821, codasip_physical_regs_csr_2822, codasip_physical_regs_csr_2823, codasip_physical_regs_csr_2824, codasip_physical_regs_csr_2825, codasip_physical_regs_csr_2826, codasip_physical_regs_csr_2827, codasip_physical_regs_csr_2828, codasip_physical_regs_csr_2829, codasip_physical_regs_csr_2830, codasip_physical_regs_csr_2831, codasip_physical_regs_csr_2832, codasip_physical_regs_csr_2833, codasip_physical_regs_csr_2834, codasip_physical_regs_csr_2835, codasip_physical_regs_csr_2836, codasip_physical_regs_csr_2837, codasip_physical_regs_csr_2838, codasip_physical_regs_csr_2839, codasip_physical_regs_csr_2840, codasip_physical_regs_csr_2841, codasip_physical_regs_csr_2842, codasip_physical_regs_csr_2843, codasip_physical_regs_csr_2844, codasip_physical_regs_csr_2845, codasip_physical_regs_csr_2846, codasip_physical_regs_csr_2847, codasip_physical_regs_csr_2944, codasip_physical_regs_csr_2946, codasip_physical_regs_csr_2947, codasip_physical_regs_csr_2948, codasip_physical_regs_csr_2949, codasip_physical_regs_csr_2950, codasip_physical_regs_csr_2951, codasip_physical_regs_csr_2952, codasip_physical_regs_csr_2953, codasip_physical_regs_csr_2954, codasip_physical_regs_csr_2955, codasip_physical_regs_csr_2956, codasip_physical_regs_csr_2957, codasip_physical_regs_csr_2958, codasip_physical_regs_csr_2959, codasip_physical_regs_csr_2960, codasip_physical_regs_csr_2961, codasip_physical_regs_csr_2962, codasip_physical_regs_csr_2963, codasip_physical_regs_csr_2964, codasip_physical_regs_csr_2965, codasip_physical_regs_csr_2966, codasip_physical_regs_csr_2967, codasip_physical_regs_csr_2968, codasip_physical_regs_csr_2969, codasip_physical_regs_csr_2970, codasip_physical_regs_csr_2971, codasip_physical_regs_csr_2972, codasip_physical_regs_csr_2973, codasip_physical_regs_csr_2974, codasip_physical_regs_csr_2975, codasip_physical_regs_csr_3857, codasip_physical_regs_csr_3858, codasip_physical_regs_csr_3859, codasip_physical_regs_csr_3860, codasip_physical_regs_csr_4033, codasip_physical_regs_csr_4038)>
{
  let isAllocatable = 0;
  let Size = 32;
}

