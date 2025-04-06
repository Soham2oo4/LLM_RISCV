	.text
	.file	"s_erf.c"
	.globl	erf                     //  -- Begin function erf
	.type	erf,@function
erf:                                    //  @erf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( 2147483647 )
	sw fp, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x11
	add x10, x10, %lo( 2147483647 )
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	and x21, x10, fp
	srl x10, x21, 20&31
	sltiu x11, x10, 2047
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	bltu x0, x11, .LBB0_2
.LBB0_1:                                //  %if.then
	mv x10, x0
	lui x11, (1072693248>>12)&1048575
	mv x12, x9
	mv x13, fp
	jal __divdf3
	mv x9, x10
	srl x10, fp, 30&31
	mv x18, x11
	and x10, x10, 2
	seqz x11, x0
	sub x10, x11, x10
	jal __floatsidf
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
	jal x0, .LBB0_26
.LBB0_2:                                //  %if.end
	lui x11, %hi( 1072365567 )
	add x11, x11, %lo( 1072365567 )
	bltu x11, x21, .LBB0_9
.LBB0_3:                                //  %if.then3
	add x11, x0, 994
	bltu x11, x10, .LBB0_8
.LBB0_4:                                //  %if.then6
	srl x10, x21, 23&31
	bltu x0, x10, .LBB0_6
.LBB0_5:                                //  %if.then9
	mv x18, x0
	lui x13, (1075838976>>12)&1048575
	mv x10, x9
	mv x11, fp
	mv x12, x18
	jal __muldf3
	mv x19, x10
	lui x10, %hi( -2112562327 )
	add x12, x10, %lo( -2112562327 )
	lui x10, %hi( 1072721594 )
	mv x20, x11
	add x13, x10, %lo( 1072721594 )
	mv x10, x9
	mv x11, fp
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __adddf3
	lui x13, (1069547520>>12)&1048575
	mv x12, x18
	jal __muldf3
	jal x0, .LBB0_27
.LBB0_9:                                //  %if.end39
	lui x11, %hi( 4092 )
	srl x10, x21, 18&31
	add x11, x11, %lo( 4092 )
	bltu x11, x10, .LBB0_13
.LBB0_10:                               //  %if.then42
	mv x10, x9
	mv x11, fp
	jal fabs
	lui x12, %hi( -1074790400 )
	mv x9, x0
	add x13, x12, %lo( -1074790400 )
	mv x12, x9
	jal __adddf3
	mv x18, x10
	lui x10, %hi( 177604415 )
	add x12, x10, %lo( 177604415 )
	lui x10, %hi( -1084113096 )
	add x13, x10, %lo( -1084113096 )
	mv x10, x18
	mv x19, x11
	jal __muldf3
	lui x12, %hi( 1503106539 )
	lui x13, %hi( 1067592246 )
	add x12, x12, %lo( 1503106539 )
	add x13, x13, %lo( 1067592246 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 1027483884 )
	lui x13, %hi( -1078172776 )
	add x12, x12, %lo( 1027483884 )
	add x13, x13, %lo( -1078172776 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -2142166812 )
	lui x13, %hi( 1070882762 )
	add x12, x12, %lo( -2142166812 )
	add x13, x13, %lo( 1070882762 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -71777295 )
	lui x13, %hi( -1076374976 )
	add x12, x12, %lo( -71777295 )
	add x13, x13, %lo( -1076374976 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -1382894771 )
	lui x13, %hi( 1071287552 )
	add x12, x12, %lo( -1382894771 )
	add x13, x13, %lo( 1071287552 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -1091078856 )
	lui x13, %hi( -1084008008 )
	add x12, x12, %lo( -1091078856 )
	add x13, x13, %lo( -1084008008 )
	jal __adddf3
	mv x20, x10
	lui x10, %hi( 1463096605 )
	add x12, x10, %lo( 1463096605 )
	lui x10, %hi( 1065913172 )
	mv x21, x11
	add x13, x10, %lo( 1065913172 )
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 1800527132 )
	lui x13, %hi( 1066134978 )
	add x12, x12, %lo( 1800527132 )
	add x13, x13, %lo( 1066134978 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -412928737 )
	lui x13, %hi( 1069557344 )
	add x12, x12, %lo( -412928737 )
	add x13, x13, %lo( 1069557344 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -643831385 )
	lui x13, %hi( 1068655452 )
	add x12, x12, %lo( -643831385 )
	add x13, x13, %lo( 1068655452 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -1830064333 )
	lui x13, %hi( 1071729392 )
	add x12, x12, %lo( -1830064333 )
	add x13, x13, %lo( 1071729392 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 418308899 )
	lui x13, %hi( 1069235814 )
	add x12, x12, %lo( 418308899 )
	add x13, x13, %lo( 1069235814 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x13, (1072693248>>12)&1048575
	mv x12, x9
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __divdf3
	mv x14, x10
	mv x15, x11
	blt fp, x0, .LBB0_12
.LBB0_11:                               //  %if.then70
	lui x10, %hi( 1072368321 )
	lui x12, (1610612736>>12)&1048575
	add x13, x10, %lo( 1072368321 )
	jal x0, .LBB0_25
.LBB0_8:                                //  %if.end16
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __muldf3
	mv x18, x10
	lui x10, %hi( 301995692 )
	add x12, x10, %lo( 301995692 )
	lui x10, %hi( -1090983210 )
	add x13, x10, %lo( -1090983210 )
	mv x10, x18
	mv x19, x11
	jal __muldf3
	lui x12, %hi( 593914084 )
	lui x13, %hi( -1082678639 )
	add x12, x12, %lo( 593914084 )
	add x13, x13, %lo( -1082678639 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -606660273 )
	lui x13, %hi( -1080219055 )
	add x12, x12, %lo( -606660273 )
	add x13, x13, %lo( -1080219055 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 1763490067 )
	lui x13, %hi( -1076572803 )
	add x12, x12, %lo( 1763490067 )
	add x13, x13, %lo( -1076572803 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -2112562328 )
	lui x13, %hi( 1069575866 )
	add x12, x12, %lo( -2112562328 )
	add x13, x13, %lo( 1069575866 )
	jal __adddf3
	mv x20, x10
	lui x10, %hi( 1117937952 )
	add x12, x10, %lo( 1117937952 )
	lui x10, %hi( -1093624765 )
	mv x21, x11
	add x13, x10, %lo( -1093624765 )
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 572267024 )
	lui x13, %hi( 1059151305 )
	add x12, x12, %lo( 572267024 )
	add x13, x13, %lo( 1059151305 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -992777457 )
	lui x13, %hi( 1064620066 )
	add x12, x12, %lo( -992777457 )
	add x13, x13, %lo( 1064620066 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 1429655226 )
	lui x13, %hi( 1068541260 )
	add x12, x12, %lo( 1429655226 )
	add x13, x13, %lo( 1068541260 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -841294839 )
	lui x13, %hi( 1071216505 )
	add x12, x12, %lo( -841294839 )
	add x13, x13, %lo( 1071216505 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	mv x12, x0
	lui x13, (1072693248>>12)&1048575
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __divdf3
	mv x12, x9
	mv x13, fp
	jal x0, .LBB0_7
.LBB0_13:                               //  %if.end75
	lui x11, %hi( 2051 )
	srl x10, x21, 19&31
	add x11, x11, %lo( 2051 )
	bltu x10, x11, .LBB0_18
.LBB0_14:                               //  %if.then78
	add x10, x0, -1
	blt x10, fp, .LBB0_15
.LBB0_16:                               //  %if.then78
	lui x10, %hi( -1074790400 )
	add x11, x10, %lo( -1074790400 )
	mv x10, x0
	jal x0, .LBB0_27
.LBB0_6:                                //  %if.end13
	lui x10, %hi( -2112562327 )
	add x12, x10, %lo( -2112562327 )
	lui x10, %hi( 1069575866 )
	add x13, x10, %lo( 1069575866 )
	mv x10, x9
	mv x11, fp
.LBB0_7:                                //  %cleanup
	jal __muldf3
	mv x12, x9
	mv x13, fp
	jal x0, .LBB0_26
.LBB0_18:                               //  %if.end83
	mv x10, x9
	mv x11, fp
	jal fabs
	mv x9, x10
	mv x18, x11
	mv x12, x9
	mv x13, x18
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x0
	lui x11, (1072693248>>12)&1048575
	jal __divdf3
	mv x19, x10
	lui x10, %hi( 1074191213 )
	mv x20, x11
	add x10, x10, %lo( 1074191213 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	bltu x10, x21, .LBB0_20
.LBB0_19:                               //  %if.then89
	lui x10, %hi( -962936228 )
	add x12, x10, %lo( -962936228 )
	lui x10, %hi( -1071406865 )
	add x13, x10, %lo( -1071406865 )
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 1474614002 )
	lui x13, %hi( -1068215707 )
	add x12, x12, %lo( 1474614002 )
	add x13, x13, %lo( -1068215707 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( -338908238 )
	lui x13, %hi( -1066986660 )
	add x12, x12, %lo( -338908238 )
	add x13, x13, %lo( -1066986660 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( -2077744538 )
	lui x13, %hi( -1067168591 )
	add x12, x12, %lo( -2077744538 )
	add x13, x13, %lo( -1067168591 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( -456416371 )
	lui x13, %hi( -1068552182 )
	add x12, x12, %lo( -456416371 )
	add x13, x13, %lo( -1068552182 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 1102112550 )
	lui x13, %hi( -1071309308 )
	add x12, x12, %lo( 1102112550 )
	add x13, x13, %lo( -1071309308 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( -457542816 )
	lui x13, %hi( -1075432426 )
	add x12, x12, %lo( -457542816 )
	add x13, x13, %lo( -1075432426 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 1611490357 )
	lui x13, %hi( -1081854958 )
	add x12, x12, %lo( 1611490357 )
	add x13, x13, %lo( -1081854958 )
	jal __adddf3
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( -294348190 )
	add x12, x10, %lo( -294348190 )
	lui x10, %hi( -1079054350 )
	sw x11, 16 ( sp )               //  4-byte Folded Spill
	add x13, x10, %lo( -1079054350 )
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( -1907864941 )
	lui x13, %hi( 1075464175 )
	add x12, x12, %lo( -1907864941 )
	add x13, x13, %lo( 1075464175 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( -297226708 )
	lui x13, %hi( 1079716003 )
	add x12, x12, %lo( -297226708 )
	add x13, x13, %lo( 1079716003 )
	jal __adddf3
	mv x12, x10
	lui x10, %hi( 1077126841 )
	add x10, x10, %lo( 1077126841 )
	sw x10, 12 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( -1116703097 )
	add x10, x10, %lo( -1116703097 )
	sw x10, 8 ( sp )                //  4-byte Folded Spill
	lui x10, %hi( 1080112396 )
	add x25, x10, %lo( 1080112396 )
	lui x10, %hi( 1382737697 )
	add x26, x10, %lo( 1382737697 )
	lui x10, %hi( 1081813261 )
	add x27, x10, %lo( 1081813261 )
	lui x10, %hi( -712369551 )
	add x21, x10, %lo( -712369551 )
	lui x10, %hi( 1082403609 )
	add x22, x10, %lo( 1082403609 )
	lui x10, %hi( 569124968 )
	add x9, x10, %lo( 569124968 )
	lui x10, %hi( 1081790497 )
	add x23, x10, %lo( 1081790497 )
	lui x10, %hi( 1466958612 )
	mv x13, x11
	add x24, x10, %lo( 1466958612 )
	jal x0, .LBB0_21
.LBB0_12:                               //  %if.else
	lui x11, %hi( -1075115327 )
	lui x10, (1610612736>>12)&1048575
	add x11, x11, %lo( -1075115327 )
	jal x0, .LBB0_23
.LBB0_15:
	lui x11, (1072693248>>12)&1048575
	mv x10, x0
	jal x0, .LBB0_27
.LBB0_20:                               //  %if.else120
	lui x10, %hi( -1680066497 )
	add x12, x10, %lo( -1680066497 )
	lui x10, %hi( -1065469874 )
	add x13, x10, %lo( -1065469874 )
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 1781422482 )
	lui x13, %hi( -1064303519 )
	add x12, x12, %lo( 1781422482 )
	add x13, x13, %lo( -1064303519 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 326496808 )
	lui x13, %hi( -1065096056 )
	add x12, x12, %lo( 326496808 )
	add x13, x13, %lo( -1065096056 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 1137044888 )
	lui x13, %hi( -1067183011 )
	add x12, x12, %lo( 1137044888 )
	add x13, x13, %lo( -1067183011 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 1432328538 )
	lui x13, %hi( -1070480887 )
	add x12, x12, %lo( 1432328538 )
	add x13, x13, %lo( -1070480887 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 1891796446 )
	lui x13, %hi( -1075211334 )
	add x12, x12, %lo( 1891796446 )
	add x13, x13, %lo( -1075211334 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 971534154 )
	lui x13, %hi( -1081854958 )
	add x12, x12, %lo( 971534154 )
	add x13, x13, %lo( -1081854958 )
	jal __adddf3
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 1114713442 )
	add x12, x10, %lo( 1114713442 )
	lui x10, %hi( -1070173982 )
	sw x11, 16 ( sp )               //  4-byte Folded Spill
	add x13, x10, %lo( -1070173982 )
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( -408950941 )
	lui x13, %hi( 1081976948 )
	add x12, x12, %lo( -408950941 )
	add x13, x13, %lo( 1081976948 )
	jal __adddf3
	mv x12, x10
	lui x10, %hi( 1077827211 )
	add x10, x10, %lo( 1077827211 )
	sw x10, 12 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 639455632 )
	add x10, x10, %lo( 639455632 )
	sw x10, 8 ( sp )                //  4-byte Folded Spill
	lui x10, %hi( 1081367726 )
	add x25, x10, %lo( 1081367726 )
	lui x10, %hi( 572235530 )
	add x26, x10, %lo( 572235530 )
	lui x10, %hi( 1083704043 )
	add x27, x10, %lo( 1083704043 )
	lui x10, %hi( 412963096 )
	add x21, x10, %lo( 412963096 )
	lui x10, %hi( 1084817335 )
	add x22, x10, %lo( 1084817335 )
	lui x10, %hi( 1754014826 )
	add x9, x10, %lo( 1754014826 )
	lui x10, %hi( 1084486169 )
	add x23, x10, %lo( 1084486169 )
	lui x10, %hi( -824230938 )
	mv x13, x11
	add x24, x10, %lo( -824230938 )
.LBB0_21:                               //  %if.end147
	mv x10, x19
	mv x11, x20
	jal __muldf3
	mv x12, x24
	mv x13, x23
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	mv x12, x9
	mv x13, x22
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	mv x12, x21
	mv x13, x27
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	mv x12, x26
	mv x13, x25
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lw x12, 8 ( sp )                //  4-byte Folded Reload
	lw x13, 12 ( sp )               //  4-byte Folded Reload
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	mv x9, x0
	lui x13, (1072693248>>12)&1048575
	mv x12, x9
	jal __adddf3
	lw x23, 24 ( sp )               //  4-byte Folded Reload
	mv x19, x10
	mv x20, x11
	mv x10, x9
	mv x13, x18
	mv x11, x18
	mv x12, x23
	jal __subdf3
	mv x21, x10
	mv x22, x11
	mv x10, x23
	mv x13, x18
	mv x11, x18
	mv x12, x9
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __muldf3
	mv x21, x10
	mv x22, x11
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	lw x11, 16 ( sp )               //  4-byte Folded Reload
	mv x12, x19
	mv x13, x20
	jal __divdf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __adddf3
	mv x19, x10
	mv x20, x11
	mv x10, x9
	mv x13, x18
	mv x11, x18
	mv x12, x9
	jal __muldf3
	mv x12, x10
	lui x10, %hi( -1075707904 )
	mv x13, x11
	add x11, x10, %lo( -1075707904 )
	mv x10, x9
	jal __subdf3
	jal __ieee754_exp
	mv x9, x10
	mv x21, x11
	mv x10, x19
	mv x11, x20
	jal __ieee754_exp
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x21
	jal __muldf3
	mv x12, x23
	mv x13, x18
	jal __divdf3
	mv x14, x10
	mv x15, x11
	blt fp, x0, .LBB0_24
.LBB0_22:                               //  %if.then167
	mv x10, x0
	lui x11, (1072693248>>12)&1048575
.LBB0_23:                               //  %cleanup
	mv x12, x14
	mv x13, x15
	jal __subdf3
	jal x0, .LBB0_27
.LBB0_24:                               //  %if.else170
	lui x10, %hi( -1074790400 )
	mv x12, x0
	add x13, x10, %lo( -1074790400 )
.LBB0_25:                               //  %cleanup
	mv x10, x14
	mv x11, x15
.LBB0_26:                               //  %cleanup
	jal __adddf3
.LBB0_27:                               //  %cleanup
	lw fp, 28 ( sp )                //  4-byte Folded Reload
	lw x27, 32 ( sp )               //  4-byte Folded Reload
	lw x26, 36 ( sp )               //  4-byte Folded Reload
	lw x25, 40 ( sp )               //  4-byte Folded Reload
	lw x24, 44 ( sp )               //  4-byte Folded Reload
	lw x23, 48 ( sp )               //  4-byte Folded Reload
	lw x22, 52 ( sp )               //  4-byte Folded Reload
	lw x21, 56 ( sp )               //  4-byte Folded Reload
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	lw x19, 64 ( sp )               //  4-byte Folded Reload
	lw x18, 68 ( sp )               //  4-byte Folded Reload
	lw x9, 72 ( sp )                //  4-byte Folded Reload
	lw ra, 76 ( sp )                //  4-byte Folded Reload
	add sp, sp, 80
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	erf, .Lfunc_end0-erf
	.cfi_endproc
                                        //  -- End function
	.globl	erfc                    //  -- Begin function erfc
	.type	erfc,@function
erfc:                                   //  @erfc
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( 2147483647 )
	sw fp, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x11
	add x10, x10, %lo( 2147483647 )
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	and x21, x10, fp
	srl x10, x21, 20&31
	sltiu x11, x10, 2047
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	bltu x0, x11, .LBB1_2
.LBB1_1:                                //  %if.then
	mv x10, x0
	lui x11, (1072693248>>12)&1048575
	mv x12, x9
	mv x13, fp
	jal __divdf3
	mv x9, x10
	srl x10, fp, 30&31
	and x10, x10, 2
	mv x18, x11
	jal __floatunsidf
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
.LBB1_17:                               //  %cleanup
	jal __adddf3
.LBB1_18:                               //  %cleanup
	mv x9, x10
.LBB1_19:                               //  %cleanup
	mv x10, x9
.LBB1_20:                               //  %cleanup
	lw fp, 28 ( sp )                //  4-byte Folded Reload
	lw x27, 32 ( sp )               //  4-byte Folded Reload
	lw x26, 36 ( sp )               //  4-byte Folded Reload
	lw x25, 40 ( sp )               //  4-byte Folded Reload
	lw x24, 44 ( sp )               //  4-byte Folded Reload
	lw x23, 48 ( sp )               //  4-byte Folded Reload
	lw x22, 52 ( sp )               //  4-byte Folded Reload
	lw x21, 56 ( sp )               //  4-byte Folded Reload
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	lw x19, 64 ( sp )               //  4-byte Folded Reload
	lw x18, 68 ( sp )               //  4-byte Folded Reload
	lw x9, 72 ( sp )                //  4-byte Folded Reload
	lw ra, 76 ( sp )                //  4-byte Folded Reload
	add sp, sp, 80
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_2:                                //  %if.end
	lui x11, %hi( 1072365567 )
	add x11, x11, %lo( 1072365567 )
	bltu x11, x21, .LBB1_5
.LBB1_3:                                //  %if.then3
	add x11, x0, 966
	bltu x11, x10, .LBB1_8
.LBB1_4:                                //  %if.then6
	mv x10, x0
	lui x11, (1072693248>>12)&1048575
	mv x12, x9
	mv x13, fp
	jal __subdf3
	jal x0, .LBB1_18
.LBB1_5:                                //  %if.end37
	lui x11, %hi( 4092 )
	srl x10, x21, 18&31
	add x11, x11, %lo( 4092 )
	bltu x11, x10, .LBB1_10
.LBB1_6:                                //  %if.then40
	mv x10, x9
	mv x11, fp
	jal fabs
	lui x12, %hi( -1074790400 )
	mv x9, x0
	add x13, x12, %lo( -1074790400 )
	mv x12, x9
	jal __adddf3
	mv x18, x10
	lui x10, %hi( 177604415 )
	add x12, x10, %lo( 177604415 )
	lui x10, %hi( -1084113096 )
	add x13, x10, %lo( -1084113096 )
	mv x10, x18
	mv x19, x11
	jal __muldf3
	lui x12, %hi( 1503106539 )
	lui x13, %hi( 1067592246 )
	add x12, x12, %lo( 1503106539 )
	add x13, x13, %lo( 1067592246 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 1027483884 )
	lui x13, %hi( -1078172776 )
	add x12, x12, %lo( 1027483884 )
	add x13, x13, %lo( -1078172776 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -2142166812 )
	lui x13, %hi( 1070882762 )
	add x12, x12, %lo( -2142166812 )
	add x13, x13, %lo( 1070882762 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -71777295 )
	lui x13, %hi( -1076374976 )
	add x12, x12, %lo( -71777295 )
	add x13, x13, %lo( -1076374976 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -1382894771 )
	lui x13, %hi( 1071287552 )
	add x12, x12, %lo( -1382894771 )
	add x13, x13, %lo( 1071287552 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -1091078856 )
	lui x13, %hi( -1084008008 )
	add x12, x12, %lo( -1091078856 )
	add x13, x13, %lo( -1084008008 )
	jal __adddf3
	mv x20, x10
	lui x10, %hi( 1463096605 )
	add x12, x10, %lo( 1463096605 )
	lui x10, %hi( 1065913172 )
	mv x21, x11
	add x13, x10, %lo( 1065913172 )
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 1800527132 )
	lui x13, %hi( 1066134978 )
	add x12, x12, %lo( 1800527132 )
	add x13, x13, %lo( 1066134978 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -412928737 )
	lui x13, %hi( 1069557344 )
	add x12, x12, %lo( -412928737 )
	add x13, x13, %lo( 1069557344 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -643831385 )
	lui x13, %hi( 1068655452 )
	add x12, x12, %lo( -643831385 )
	add x13, x13, %lo( 1068655452 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -1830064333 )
	lui x13, %hi( 1071729392 )
	add x12, x12, %lo( -1830064333 )
	add x13, x13, %lo( 1071729392 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 418308899 )
	lui x13, %hi( 1069235814 )
	add x12, x12, %lo( 418308899 )
	add x13, x13, %lo( 1069235814 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x13, (1072693248>>12)&1048575
	mv x12, x9
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __divdf3
	mv x14, x10
	mv x15, x11
	blt fp, x0, .LBB1_16
.LBB1_7:                                //  %if.then68
	lui x10, %hi( -2147483648 )
	lui x11, %hi( 1069798650 )
	add x10, x10, %lo( -2147483648 )
	add x11, x11, %lo( 1069798650 )
	mv x12, x14
	mv x13, x15
	jal __subdf3
	jal x0, .LBB1_18
.LBB1_8:                                //  %if.end7
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __muldf3
	mv x18, x10
	lui x10, %hi( 301995692 )
	add x12, x10, %lo( 301995692 )
	lui x10, %hi( -1090983210 )
	add x13, x10, %lo( -1090983210 )
	mv x10, x18
	mv x19, x11
	jal __muldf3
	lui x12, %hi( 593914084 )
	lui x13, %hi( -1082678639 )
	add x12, x12, %lo( 593914084 )
	add x13, x13, %lo( -1082678639 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -606660273 )
	lui x13, %hi( -1080219055 )
	add x12, x12, %lo( -606660273 )
	add x13, x13, %lo( -1080219055 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 1763490067 )
	lui x13, %hi( -1076572803 )
	add x12, x12, %lo( 1763490067 )
	add x13, x13, %lo( -1076572803 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -2112562328 )
	lui x13, %hi( 1069575866 )
	add x12, x12, %lo( -2112562328 )
	add x13, x13, %lo( 1069575866 )
	jal __adddf3
	mv x20, x10
	lui x10, %hi( 1117937952 )
	add x12, x10, %lo( 1117937952 )
	lui x10, %hi( -1093624765 )
	mv x21, x11
	add x13, x10, %lo( -1093624765 )
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 572267024 )
	lui x13, %hi( 1059151305 )
	add x12, x12, %lo( 572267024 )
	add x13, x13, %lo( 1059151305 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -992777457 )
	lui x13, %hi( 1064620066 )
	add x12, x12, %lo( -992777457 )
	add x13, x13, %lo( 1064620066 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 1429655226 )
	lui x13, %hi( 1068541260 )
	add x12, x12, %lo( 1429655226 )
	add x13, x13, %lo( 1068541260 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -841294839 )
	lui x13, %hi( 1071216505 )
	add x12, x12, %lo( -841294839 )
	add x13, x13, %lo( 1071216505 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	mv x12, x0
	lui x13, (1072693248>>12)&1048575
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __divdf3
	mv x12, x9
	mv x13, fp
	jal __muldf3
	mv x19, x10
	lui x10, %hi( 1070596095 )
	mv x18, x11
	add x10, x10, %lo( 1070596095 )
	blt x10, fp, .LBB1_13
.LBB1_9:                                //  %if.then29
	mv x10, x19
	mv x11, x18
	mv x12, x9
	mv x13, fp
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x0
	lui x11, (1072693248>>12)&1048575
	jal __subdf3
	jal x0, .LBB1_18
.LBB1_10:                               //  %if.end75
	lui x10, %hi( 1077673983 )
	add x10, x10, %lo( 1077673983 )
	bltu x10, x21, .LBB1_14
.LBB1_11:                               //  %if.then78
	mv x10, x9
	mv x11, fp
	jal fabs
	mv x22, x10
	mv x18, x11
	mv x12, x22
	mv x13, x18
	jal __muldf3
	mv x9, x0
	mv x13, x11
	mv x12, x10
	lui x11, (1072693248>>12)&1048575
	mv x10, x9
	jal __divdf3
	mv x19, x10
	lui x10, %hi( 1074191212 )
	mv x20, x11
	add x10, x10, %lo( 1074191212 )
	bltu x10, x21, .LBB1_21
.LBB1_12:                               //  %if.then84
	lui x10, %hi( -962936228 )
	add x12, x10, %lo( -962936228 )
	lui x10, %hi( -1071406865 )
	add x13, x10, %lo( -1071406865 )
	mv x10, x19
	mv x11, x20
	sw x22, 24 ( sp )               //  4-byte Folded Spill
	jal __muldf3
	lui x12, %hi( 1474614002 )
	lui x13, %hi( -1068215707 )
	add x12, x12, %lo( 1474614002 )
	add x13, x13, %lo( -1068215707 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( -338908238 )
	lui x13, %hi( -1066986660 )
	add x12, x12, %lo( -338908238 )
	add x13, x13, %lo( -1066986660 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( -2077744538 )
	lui x13, %hi( -1067168591 )
	add x12, x12, %lo( -2077744538 )
	add x13, x13, %lo( -1067168591 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( -456416371 )
	lui x13, %hi( -1068552182 )
	add x12, x12, %lo( -456416371 )
	add x13, x13, %lo( -1068552182 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 1102112550 )
	lui x13, %hi( -1071309308 )
	add x12, x12, %lo( 1102112550 )
	add x13, x13, %lo( -1071309308 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( -457542816 )
	lui x13, %hi( -1075432426 )
	add x12, x12, %lo( -457542816 )
	add x13, x13, %lo( -1075432426 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 1611490357 )
	lui x13, %hi( -1081854958 )
	add x12, x12, %lo( 1611490357 )
	add x13, x13, %lo( -1081854958 )
	jal __adddf3
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( -294348190 )
	add x12, x10, %lo( -294348190 )
	lui x10, %hi( -1079054350 )
	sw x11, 16 ( sp )               //  4-byte Folded Spill
	add x13, x10, %lo( -1079054350 )
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( -1907864941 )
	lui x13, %hi( 1075464175 )
	add x12, x12, %lo( -1907864941 )
	add x13, x13, %lo( 1075464175 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( -297226708 )
	lui x13, %hi( 1079716003 )
	add x12, x12, %lo( -297226708 )
	add x13, x13, %lo( 1079716003 )
	jal __adddf3
	mv x12, x10
	lui x10, %hi( 1077126841 )
	add x10, x10, %lo( 1077126841 )
	sw x10, 12 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( -1116703097 )
	add x10, x10, %lo( -1116703097 )
	sw x10, 8 ( sp )                //  4-byte Folded Spill
	lui x10, %hi( 1080112396 )
	add x25, x10, %lo( 1080112396 )
	lui x10, %hi( 1382737697 )
	add x26, x10, %lo( 1382737697 )
	lui x10, %hi( 1081813261 )
	add x27, x10, %lo( 1081813261 )
	lui x10, %hi( -712369551 )
	add x21, x10, %lo( -712369551 )
	lui x10, %hi( 1082403609 )
	add x22, x10, %lo( 1082403609 )
	lui x10, %hi( 569124968 )
	add x9, x10, %lo( 569124968 )
	lui x10, %hi( 1081790497 )
	add x23, x10, %lo( 1081790497 )
	lui x10, %hi( 1466958612 )
	mv x13, x11
	add x24, x10, %lo( 1466958612 )
	jal x0, .LBB1_26
.LBB1_13:                               //  %if.else
	mv x20, x0
	lui x10, %hi( -1075838976 )
	add x13, x10, %lo( -1075838976 )
	mv x10, x9
	mv x11, fp
	mv x12, x20
	jal __adddf3
	mv x12, x19
	mv x13, x18
	jal __adddf3
	mv x12, x10
	mv x13, x11
	lui x11, (1071644672>>12)&1048575
	mv x10, x20
	jal __subdf3
	jal x0, .LBB1_18
.LBB1_14:                               //  %if.else173
	bge x0, fp, .LBB1_24
.LBB1_15:                               //  %if.then176
	mv x10, x0
	jal __math_uflow
	jal x0, .LBB1_18
.LBB1_16:                               //  %if.else71
	lui x10, %hi( 1072368321 )
	add x13, x10, %lo( 1072368321 )
	lui x12, (1610612736>>12)&1048575
	mv x10, x14
	mv x11, x15
	jal __adddf3
	mv x12, x0
	lui x13, (1072693248>>12)&1048575
	jal x0, .LBB1_17
.LBB1_21:                               //  %if.else115
	bge fp, x0, .LBB1_25
.LBB1_22:                               //  %if.else115
	lui x11, %hi( 2050 )
	srl x10, x21, 19&31
	add x11, x11, %lo( 2050 )
	bgeu x11, x10, .LBB1_25
.LBB1_23:
	lui x11, (1073741824>>12)&1048575
	jal x0, .LBB1_19
.LBB1_24:
	lui x11, (1073741824>>12)&1048575
	mv x9, x0
	jal x0, .LBB1_19
.LBB1_25:                               //  %if.end121
	lui x10, %hi( -1680066497 )
	add x12, x10, %lo( -1680066497 )
	lui x10, %hi( -1065469874 )
	add x13, x10, %lo( -1065469874 )
	mv x10, x19
	mv x11, x20
	sw x22, 24 ( sp )               //  4-byte Folded Spill
	jal __muldf3
	lui x12, %hi( 1781422482 )
	lui x13, %hi( -1064303519 )
	add x12, x12, %lo( 1781422482 )
	add x13, x13, %lo( -1064303519 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 326496808 )
	lui x13, %hi( -1065096056 )
	add x12, x12, %lo( 326496808 )
	add x13, x13, %lo( -1065096056 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 1137044888 )
	lui x13, %hi( -1067183011 )
	add x12, x12, %lo( 1137044888 )
	add x13, x13, %lo( -1067183011 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 1432328538 )
	lui x13, %hi( -1070480887 )
	add x12, x12, %lo( 1432328538 )
	add x13, x13, %lo( -1070480887 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 1891796446 )
	lui x13, %hi( -1075211334 )
	add x12, x12, %lo( 1891796446 )
	add x13, x13, %lo( -1075211334 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 971534154 )
	lui x13, %hi( -1081854958 )
	add x12, x12, %lo( 971534154 )
	add x13, x13, %lo( -1081854958 )
	jal __adddf3
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 1114713442 )
	add x12, x10, %lo( 1114713442 )
	lui x10, %hi( -1070173982 )
	sw x11, 16 ( sp )               //  4-byte Folded Spill
	add x13, x10, %lo( -1070173982 )
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( -408950941 )
	lui x13, %hi( 1081976948 )
	add x12, x12, %lo( -408950941 )
	add x13, x13, %lo( 1081976948 )
	jal __adddf3
	mv x12, x10
	lui x10, %hi( 1077827211 )
	add x10, x10, %lo( 1077827211 )
	sw x10, 12 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 639455632 )
	add x10, x10, %lo( 639455632 )
	sw x10, 8 ( sp )                //  4-byte Folded Spill
	lui x10, %hi( 1081367726 )
	add x25, x10, %lo( 1081367726 )
	lui x10, %hi( 572235530 )
	add x26, x10, %lo( 572235530 )
	lui x10, %hi( 1083704043 )
	add x27, x10, %lo( 1083704043 )
	lui x10, %hi( 412963096 )
	add x21, x10, %lo( 412963096 )
	lui x10, %hi( 1084817335 )
	add x22, x10, %lo( 1084817335 )
	lui x10, %hi( 1754014826 )
	add x9, x10, %lo( 1754014826 )
	lui x10, %hi( 1084486169 )
	add x23, x10, %lo( 1084486169 )
	lui x10, %hi( -824230938 )
	mv x13, x11
	add x24, x10, %lo( -824230938 )
.LBB1_26:                               //  %if.end148
	mv x10, x19
	mv x11, x20
	jal __muldf3
	mv x12, x24
	mv x13, x23
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	mv x12, x9
	mv x13, x22
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	mv x12, x21
	mv x13, x27
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	mv x12, x26
	mv x13, x25
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lw x12, 8 ( sp )                //  4-byte Folded Reload
	lw x13, 12 ( sp )               //  4-byte Folded Reload
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	mv x19, x0
	lui x13, (1072693248>>12)&1048575
	mv x12, x19
	jal __adddf3
	lw x23, 24 ( sp )               //  4-byte Folded Reload
	mv x9, x10
	mv x20, x11
	mv x10, x19
	mv x11, x18
	mv x12, x23
	mv x13, x18
	jal __subdf3
	mv x21, x10
	mv x22, x11
	mv x10, x23
	mv x11, x18
	mv x12, x19
	mv x13, x18
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __muldf3
	mv x21, x10
	mv x22, x11
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	lw x11, 16 ( sp )               //  4-byte Folded Reload
	mv x12, x9
	mv x13, x20
	jal __divdf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __adddf3
	mv x9, x10
	mv x20, x11
	mv x10, x19
	mv x11, x18
	mv x12, x19
	mv x13, x18
	jal __muldf3
	mv x12, x10
	lui x10, %hi( -1075707904 )
	mv x13, x11
	add x11, x10, %lo( -1075707904 )
	mv x10, x19
	jal __subdf3
	jal __ieee754_exp
	mv x21, x10
	mv x22, x11
	mv x10, x9
	mv x11, x20
	jal __ieee754_exp
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __muldf3
	mv x12, x23
	mv x13, x18
	jal __divdf3
	mv x18, x10
	mv x9, x11
	lui x11, (1073741824>>12)&1048575
	mv x10, x19
	mv x12, x18
	mv x13, x9
	jal __subdf3
	blt x19, fp, .LBB1_28
.LBB1_27:                               //  %if.end148
	mv x9, x11
	mv x18, x10
.LBB1_28:                               //  %if.end148
	mv x10, x18
	mv x11, x9
	jal x0, .LBB1_20
.Lfunc_end1:
	.size	erfc, .Lfunc_end1-erfc
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_uflow

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
