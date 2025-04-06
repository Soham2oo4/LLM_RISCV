	.text
	.file	"er_lgamma.c"
	.globl	__ieee754_lgamma_r      //  -- Begin function __ieee754_lgamma_r
	.type	__ieee754_lgamma_r,@function
__ieee754_lgamma_r:                     //  @__ieee754_lgamma_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x19, x10
	mv x20, x12
	seqz x10, x0
	sw x10, 0 ( x20 )
	lui x10, %hi( 2147483647 )
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x11
	add x10, x10, %lo( 2147483647 )
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	and x23, x10, fp
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	srl x24, x23, 20&31
	sltiu x10, x24, 2047
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x25, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	bltu x0, x10, .LBB0_2
.LBB0_1:                                //  %if.then
	mv x10, x19
	mv x11, fp
	mv x12, x19
	mv x13, fp
	jal __muldf3
	jal x0, .LBB0_63
.LBB0_2:                                //  %if.end
	or x10, x19, x23
	beq x0, x10, .LBB0_6
.LBB0_3:                                //  %if.end7
	add x10, x0, 952
	bltu x10, x24, .LBB0_8
.LBB0_4:                                //  %if.then9
	blt fp, x0, .LBB0_16
.LBB0_5:                                //  %if.else
	mv x10, x19
	mv x11, fp
	jal __ieee754_log
	lui x12, %hi( -2147483648 )
	add x12, x12, %lo( -2147483648 )
	xor x11, x12, x11
	jal x0, .LBB0_63
.LBB0_6:                                //  %if.then3
	blt fp, x0, .LBB0_7
.LBB0_67:                               //  %if.then3
	jal x0, .LBB0_62
.LBB0_7:                                //  %if.then5
	add x10, x0, -1
	sw x10, 0 ( x20 )
	jal x0, .LBB0_62
.LBB0_8:                                //  %if.end16
	mv x27, x0
	blt fp, x0, .LBB0_17
.LBB0_9:
	mv x9, x27
	mv x18, x27
	mv x22, fp
.LBB0_10:                               //  %if.end38
	lui x10, %hi( -1072693248 )
	add x10, x10, %lo( -1072693248 )
	add x10, x10, x23
	or x10, x19, x10
	beq x0, x10, .LBB0_20
.LBB0_11:                               //  %lor.lhs.false
	lui x10, %hi( -1073741824 )
	add x10, x10, %lo( -1073741824 )
	add x10, x10, x23
	or x10, x19, x10
	beq x0, x10, .LBB0_21
.LBB0_12:                               //  %if.else46
	srl x10, x23, 30&31
	bltu x0, x10, .LBB0_22
.LBB0_13:                               //  %if.then48
	lui x10, %hi( 1072483532 )
	add x10, x10, %lo( 1072483532 )
	bltu x10, x23, .LBB0_32
.LBB0_14:                               //  %if.then50
	mv x10, x19
	mv x11, x22
	jal __ieee754_log
	mv x21, x10
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x20, x10, x11
	lui x10, %hi( 1072130371 )
	add x10, x10, %lo( 1072130371 )
	bgeu x10, x23, .LBB0_40
.LBB0_15:
	sw x20, 8 ( sp )                //  4-byte Folded Spill
	lui x11, (1072693248>>12)&1048575
	mv x10, x0
	mv x20, x21
	jal x0, .LBB0_34
.LBB0_16:                               //  %if.then11
	add x10, x0, -1
	sw x10, 0 ( x20 )
	lui x10, %hi( -2147483648 )
	add x9, x10, %lo( -2147483648 )
	xor x11, x9, fp
	mv x10, x19
	jal __ieee754_log
	xor x11, x9, x11
	jal x0, .LBB0_63
.LBB0_17:                               //  %if.then18
	sltiu x10, x24, 1075
	beq x0, x10, .LBB0_62
.LBB0_18:                               //  %if.end23
	add x10, x0, 1020
	bltu x10, x24, .LBB0_30
.LBB0_19:                               //  %if.then.i
	lui x10, %hi( 1413754136 )
	add x12, x10, %lo( 1413754136 )
	lui x10, %hi( 1074340347 )
	add x13, x10, %lo( 1074340347 )
	mv x10, x19
	mv x11, fp
	jal __muldf3
	mv x12, x0
	mv x13, x12
	mv x14, x12
	jal __kernel_sin
	mv x21, x10
	mv x22, x11
	jal x0, .LBB0_61
.LBB0_20:
	mv x22, x27
	mv x23, x27
	jal x0, .LBB0_53
.LBB0_21:
	mv x22, x0
	mv x23, x22
	jal x0, .LBB0_53
.LBB0_22:                               //  %if.else163
	srl x10, x23, 21&31
	add x11, x0, 512
	bltu x11, x10, .LBB0_35
.LBB0_23:                               //  %if.then165
	mv x10, x19
	mv x11, x22
	jal __fixdfsi
	mv x21, x10
	jal __floatsidf
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x22
	jal __subdf3
	mv x19, x10
	lui x10, %hi( -585635515 )
	add x12, x10, %lo( -585635515 )
	lui x10, %hi( 1057013740 )
	add x13, x10, %lo( 1057013740 )
	mv x10, x19
	mv x20, x11
	jal __muldf3
	lui x12, %hi( 1936257593 )
	lui x13, %hi( 1063134902 )
	add x12, x12, %lo( 1936257593 )
	add x13, x13, %lo( 1063134902 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 2123602273 )
	lui x13, %hi( 1067141148 )
	add x12, x12, %lo( 2123602273 )
	add x13, x13, %lo( 1067141148 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( -1092226313 )
	lui x13, %hi( 1069726620 )
	add x12, x12, %lo( -1092226313 )
	add x13, x13, %lo( 1069726620 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 1326686041 )
	lui x13, %hi( 1070913935 )
	add x12, x12, %lo( 1326686041 )
	add x13, x13, %lo( 1070913935 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 920782968 )
	lui x13, %hi( 1070302347 )
	add x12, x12, %lo( 920782968 )
	add x13, x13, %lo( 1070302347 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( -478302008 )
	lui x13, %hi( -1078737817 )
	add x12, x12, %lo( -478302008 )
	add x13, x13, %lo( -1078737817 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	mv x22, x10
	lui x10, %hi( -1514962624 )
	add x12, x10, %lo( -1514962624 )
	lui x10, %hi( 1054784247 )
	mv x23, x11
	add x13, x10, %lo( 1054784247 )
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( -901666469 )
	lui x13, %hi( 1061780954 )
	add x12, x12, %lo( -901666469 )
	add x13, x13, %lo( 1061780954 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 1949226101 )
	lui x13, %hi( 1066604522 )
	add x12, x12, %lo( 1949226101 )
	add x13, x13, %lo( 1066604522 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( -855908569 )
	lui x13, %hi( 1069941229 )
	add x12, x12, %lo( -855908569 )
	add x13, x13, %lo( 1069941229 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( -1814831908 )
	lui x13, %hi( 1072110104 )
	add x12, x12, %lo( -1814831908 )
	add x13, x13, %lo( 1072110104 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	lui x12, %hi( 1657056116 )
	lui x13, %hi( 1073104295 )
	add x12, x12, %lo( 1657056116 )
	add x13, x13, %lo( 1073104295 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	mv x24, x0
	lui x25, (1072693248>>12)&1048575
	mv x12, x24
	mv x13, x25
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x23
	jal __divdf3
	mv x22, x10
	mv x23, x11
	lui x13, (1071644672>>12)&1048575
	mv x10, x19
	mv x11, x20
	mv x12, x24
	jal __muldf3
	mv x12, x22
	mv x13, x23
	jal __adddf3
	mv x22, x10
	mv x23, x11
	add x10, x21, -3
	add x11, x0, 4
	bltu x11, x10, .LBB0_53
.LBB0_24:                               //  %if.then165
	lui x11, %hi( JTI0_1 )
	sll x10, x10, 2&31
	add x11, x11, %lo( JTI0_1 )
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB0_25:                               //  %sw.bb196
	mv x12, x0
	lui x13, (1075314688>>12)&1048575
	mv x10, x19
	mv x11, x20
	jal __adddf3
	mv x24, x10
	mv x25, x11
.LBB0_26:                               //  %sw.bb199
	mv x12, x0
	lui x13, (1075052544>>12)&1048575
	mv x10, x19
	mv x11, x20
	jal __adddf3
	mv x12, x24
	mv x13, x25
	jal __muldf3
	mv x24, x10
	mv x25, x11
.LBB0_27:                               //  %sw.bb202
	mv x12, x0
	lui x13, (1074790400>>12)&1048575
	mv x10, x19
	mv x11, x20
	jal __adddf3
	mv x12, x24
	mv x13, x25
	jal __muldf3
	mv x24, x10
	mv x25, x11
.LBB0_28:                               //  %sw.bb205
	mv x12, x0
	lui x13, (1074266112>>12)&1048575
	mv x10, x19
	mv x11, x20
	jal __adddf3
	mv x12, x24
	mv x13, x25
	jal __muldf3
	mv x24, x10
	mv x25, x11
.LBB0_29:                               //  %sw.bb208
	mv x12, x0
	lui x13, (1073741824>>12)&1048575
	mv x10, x19
	mv x11, x20
	jal __adddf3
	mv x12, x24
	mv x13, x25
	jal __muldf3
	jal __ieee754_log
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x23
	jal x0, .LBB0_51
.LBB0_30:                               //  %if.end.i
	lui x10, %hi( -2147483648 )
	add x22, x10, %lo( -2147483648 )
	xor x9, x22, fp
	mv x10, x19
	mv x11, x9
	jal floor
	mv x12, x19
	mv x13, x9
	jal __eqdf2
	beq x0, x10, .LBB0_37
.LBB0_31:                               //  %if.then3.i
	mv x21, x0
	lui x10, %hi( -1075838976 )
	add x13, x10, %lo( -1075838976 )
	mv x10, x19
	mv x11, fp
	mv x12, x21
	jal __muldf3
	mv x9, x10
	mv x18, x11
	jal floor
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
	jal __subdf3
	mv x12, x10
	mv x13, x11
	jal __adddf3
	lui x13, (1074790400>>12)&1048575
	mv x12, x21
	mv x18, x10
	mv x9, x11
	jal __muldf3
	jal __fixdfsi
	add x11, x0, 6
	bltu x11, x10, .LBB0_55
.LBB0_38:                               //  %if.end25.i
	lui x11, %hi( JTI0_0 )
	sll x10, x10, 2&31
	add x11, x11, %lo( JTI0_0 )
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB0_39:                               //  %sw.bb28.i
	mv x21, x0
	lui x11, (1071644672>>12)&1048575
	mv x10, x21
	mv x12, x18
	mv x13, x9
	jal __subdf3
	lui x12, %hi( 1413754136 )
	lui x13, %hi( 1074340347 )
	add x12, x12, %lo( 1413754136 )
	add x13, x13, %lo( 1074340347 )
	jal __muldf3
	mv x12, x21
	mv x13, x21
	jal __kernel_cos
	jal x0, .LBB0_59
.LBB0_32:                               //  %if.else63
	lui x10, %hi( 1073460418 )
	add x10, x10, %lo( 1073460418 )
	bgeu x10, x23, .LBB0_42
.LBB0_33:
	mv x20, x0
	lui x11, (1073741824>>12)&1048575
	sw x20, 8 ( sp )                //  4-byte Folded Spill
	mv x10, x20
.LBB0_34:                               //  %sw.bb
	mv x12, x19
	mv x13, x22
	jal __subdf3
	mv x19, x10
	mv x22, x11
	mv x12, x19
	mv x13, x22
	jal __muldf3
	mv x23, x10
	lui x10, %hi( 1116535378 )
	add x12, x10, %lo( 1116535378 )
	lui x10, %hi( 1056600180 )
	add x13, x10, %lo( 1056600180 )
	mv x10, x23
	mv x24, x11
	jal __muldf3
	lui x12, %hi( -317659827 )
	lui x13, %hi( 1059910380 )
	add x12, x12, %lo( -317659827 )
	add x13, x13, %lo( 1059910380 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( 292503389 )
	lui x13, %hi( 1062439572 )
	add x12, x12, %lo( 292503389 )
	add x13, x13, %lo( 1062439572 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -1232080920 )
	lui x13, %hi( 1065238607 )
	add x12, x12, %lo( -1232080920 )
	add x13, x13, %lo( 1065238607 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( 441803431 )
	lui x13, %hi( 1068580352 )
	add x12, x12, %lo( 441803431 )
	add x13, x13, %lo( 1068580352 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -478302008 )
	lui x13, %hi( 1068745831 )
	add x12, x12, %lo( -478302008 )
	add x13, x13, %lo( 1068745831 )
	jal __adddf3
	mv x25, x10
	lui x10, %hi( -1868277705 )
	add x12, x10, %lo( -1868277705 )
	lui x10, %hi( 1057457550 )
	mv x26, x11
	add x13, x10, %lo( 1057457550 )
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -1736574201 )
	lui x13, %hi( 1058820232 )
	add x12, x12, %lo( -1736574201 )
	add x13, x13, %lo( 1058820232 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -1984324608 )
	lui x13, %hi( 1061205702 )
	add x12, x12, %lo( -1984324608 )
	add x13, x13, %lo( 1061205702 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -860384661 )
	lui x13, %hi( 1063759320 )
	add x12, x12, %lo( -860384661 )
	add x13, x13, %lo( 1063759320 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -1399696261 )
	lui x13, %hi( 1066734370 )
	add x12, x12, %lo( -1399696261 )
	add x13, x13, %lo( 1066734370 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -995749971 )
	lui x13, %hi( 1070900044 )
	add x12, x12, %lo( -995749971 )
	add x13, x13, %lo( 1070900044 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	mv x21, x10
	mv x23, x11
	mv x10, x19
	mv x11, x22
	mv x12, x25
	mv x13, x26
	jal __muldf3
	mv x12, x21
	mv x13, x23
	jal __adddf3
	mv x21, x10
	lui x10, %hi( -1075838976 )
	mv x23, x11
	add x13, x10, %lo( -1075838976 )
	mv x12, x0
	mv x10, x19
	mv x11, x22
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x23
	jal __adddf3
	mv x13, x11
	lw x11, 8 ( sp )                //  4-byte Folded Reload
	mv x12, x10
	mv x10, x20
	jal x0, .LBB0_51
.LBB0_35:                               //  %if.else214
	mv x10, x19
	mv x11, x22
	jal __ieee754_log
	mv x21, x10
	mv x20, x11
	add x10, x0, 1080
	bltu x10, x24, .LBB0_45
.LBB0_36:                               //  %if.then217
	mv x23, x0
	lui x11, (1072693248>>12)&1048575
	mv x10, x23
	mv x12, x19
	mv x13, x22
	jal __divdf3
	mv x24, x10
	mv x25, x11
	mv x12, x24
	mv x13, x25
	jal __muldf3
	mv x26, x10
	lui x10, %hi( 194921444 )
	add x12, x10, %lo( 194921444 )
	lui x10, %hi( -1084573539 )
	add x13, x10, %lo( -1084573539 )
	mv x10, x26
	mv x27, x11
	jal __muldf3
	lui x12, %hi( 1289410001 )
	lui x13, %hi( 1061906362 )
	add x12, x12, %lo( 1289410001 )
	add x13, x13, %lo( 1061906362 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x26
	mv x11, x27
	jal __muldf3
	lui x12, %hi( -1945114815 )
	lui x13, %hi( -1086095157 )
	add x12, x12, %lo( -1945114815 )
	add x13, x13, %lo( -1086095157 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x26
	mv x11, x27
	jal __muldf3
	lui x12, %hi( -1731249994 )
	lui x13, %hi( 1061814687 )
	add x12, x12, %lo( -1731249994 )
	add x13, x13, %lo( 1061814687 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x26
	mv x11, x27
	jal __muldf3
	lui x12, %hi( 380644956 )
	lui x13, %hi( -1083784852 )
	add x12, x12, %lo( 380644956 )
	add x13, x13, %lo( -1083784852 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x11, x27
	mv x10, x26
	mv x27, x0
	jal __muldf3
	lui x12, %hi( 1431655739 )
	lui x13, %hi( 1068848469 )
	add x12, x12, %lo( 1431655739 )
	add x13, x13, %lo( 1068848469 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x25
	jal __muldf3
	lui x12, %hi( -1865843351 )
	lui x13, %hi( 1071304675 )
	add x12, x12, %lo( -1865843351 )
	add x13, x13, %lo( 1071304675 )
	jal __adddf3
	mv x24, x10
	lui x10, %hi( -1075838976 )
	mv x25, x11
	add x13, x10, %lo( -1075838976 )
	mv x10, x19
	mv x11, x22
	mv x12, x23
	jal __adddf3
	mv x19, x10
	lui x10, %hi( -1074790400 )
	mv x22, x11
	add x13, x10, %lo( -1074790400 )
	mv x10, x21
	mv x11, x20
	mv x12, x23
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x22
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x25
	jal x0, .LBB0_51
.LBB0_37:                               //  %if.else12.i
	mv x10, x0
	lui x11, (1127219200>>12)&1048575
	mv x12, x19
	mv x13, fp
	jal __subdf3
	and x21, x10, 1
	mv x10, x21
	jal __floatsidf
	mv x18, x10
	mv x9, x11
	sll x10, x21, 2&31
	add x11, x0, 6
	bgeu x11, x10, .LBB0_38
.LBB0_55:                               //  %sw.default.i
	mv x21, x0
	lui x10, %hi( -1073741824 )
	add x13, x10, %lo( -1073741824 )
	mv x10, x18
	mv x11, x9
	mv x12, x21
	jal __adddf3
	jal x0, .LBB0_56
.LBB0_40:                               //  %if.else56
	lui x10, %hi( -1923417860 )
	add x12, x10, %lo( -1923417860 )
	lui x10, %hi( -1075999903 )
	add x13, x10, %lo( -1075999903 )
	mv x10, x19
	mv x11, x22
	jal __adddf3
	mv x25, x10
	lui x10, %hi( 1070442080 )
	mv x26, x11
	add x10, x10, %lo( 1070442080 )
	bgeu x10, x23, .LBB0_48
.LBB0_41:
	sw x20, 8 ( sp )                //  4-byte Folded Spill
	mv x20, x21
	jal x0, .LBB0_44
.LBB0_42:                               //  %if.else67
	lui x10, %hi( 1072936132 )
	add x10, x10, %lo( 1072936132 )
	bltu x23, x10, .LBB0_49
.LBB0_43:                               //  %if.then69
	lui x10, %hi( 1666629183 )
	add x12, x10, %lo( 1666629183 )
	lui x10, %hi( -1074306344 )
	add x13, x10, %lo( -1074306344 )
	mv x10, x19
	mv x11, x22
	jal __adddf3
	mv x20, x0
	mv x25, x10
	mv x26, x11
	sw x20, 8 ( sp )                //  4-byte Folded Spill
.LBB0_44:                               //  %sw.bb102
	mv x10, x25
	mv x11, x26
	mv x12, x25
	mv x13, x26
	jal __muldf3
	mv x19, x10
	mv x22, x11
	mv x10, x25
	mv x11, x26
	mv x12, x19
	mv x13, x22
	jal __muldf3
	mv x23, x10
	lui x10, %hi( -322728904 )
	add x12, x10, %lo( -322728904 )
	lui x10, %hi( -1087078620 )
	add x13, x10, %lo( -1087078620 )
	mv x10, x23
	mv x24, x11
	jal __muldf3
	lui x12, %hi( -278812439 )
	lui x13, %hi( 1062002444 )
	add x12, x12, %lo( -278812439 )
	add x13, x13, %lo( 1062002444 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -1276570409 )
	lui x13, %hi( -1083298049 )
	add x12, x12, %lo( -1276570409 )
	add x13, x13, %lo( -1083298049 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -1760888340 )
	lui x13, %hi( 1066559207 )
	add x12, x12, %lo( -1760888340 )
	add x13, x13, %lo( 1066559207 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -1916353271 )
	lui x13, %hi( -1077746649 )
	add x12, x12, %lo( -1916353271 )
	add x13, x13, %lo( -1077746649 )
	jal __adddf3
	mv x27, x10
	lui x10, %hi( -389884940 )
	add x12, x10, %lo( -389884940 )
	lui x10, %hi( 1060502846 )
	mv x21, x11
	add x13, x10, %lo( 1060502846 )
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -1670127380 )
	lui x13, %hi( -1086216688 )
	add x12, x12, %lo( -1670127380 )
	add x13, x13, %lo( -1086216688 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( 773179669 )
	lui x13, %hi( 1063420627 )
	add x12, x12, %lo( 773179669 )
	add x13, x13, %lo( 1063420627 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -1164841878 )
	lui x13, %hi( -1081794657 )
	add x12, x12, %lo( -1164841878 )
	add x13, x13, %lo( -1081794657 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -1797963365 )
	lui x13, %hi( 1068534594 )
	add x12, x12, %lo( -1797963365 )
	add x13, x13, %lo( 1068534594 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x26
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x27
	mv x11, x21
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	mv x12, x10
	lui x10, %hi( -1534421217 )
	mv x13, x11
	lui x11, %hi( -1135556662 )
	add x10, x10, %lo( -1534421217 )
	add x11, x11, %lo( -1135556662 )
	jal __subdf3
	mv x25, x10
	lui x10, %hi( 1812904951 )
	add x12, x10, %lo( 1812904951 )
	lui x10, %hi( 1060417389 )
	mv x26, x11
	add x13, x10, %lo( 1060417389 )
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -1087563023 )
	lui x13, %hi( -1084817778 )
	add x12, x12, %lo( -1087563023 )
	add x13, x13, %lo( -1084817778 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -479141052 )
	lui x13, %hi( 1064893664 )
	add x12, x12, %lo( -479141052 )
	add x13, x13, %lo( 1064893664 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -550127853 )
	lui x13, %hi( -1079981656 )
	add x12, x12, %lo( -550127853 )
	add x13, x13, %lo( -1079981656 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -923912030 )
	lui x13, %hi( 1071576875 )
	add x12, x12, %lo( -923912030 )
	add x13, x13, %lo( 1071576875 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x22
	jal __muldf3
	mv x12, x25
	mv x13, x26
	jal __subdf3
	lui x12, %hi( -1128035774 )
	lui x13, %hi( -1077995079 )
	add x12, x12, %lo( -1128035774 )
	add x13, x13, %lo( -1077995079 )
	jal __adddf3
	mv x13, x11
	lw x11, 8 ( sp )                //  4-byte Folded Reload
	mv x12, x10
	mv x10, x20
	jal __adddf3
	mv x22, x10
	mv x23, x11
	mv x27, x0
	jal x0, .LBB0_53
.LBB0_45:                               //  %if.else237
	lui x10, %hi( -1074790400 )
	add x13, x10, %lo( -1074790400 )
	mv x12, x0
	mv x10, x21
	mv x11, x20
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x22
	jal __muldf3
	jal x0, .LBB0_52
.LBB0_46:                               //  %sw.bb32.i
	mv x21, x0
	lui x11, (1072693248>>12)&1048575
	mv x10, x21
	mv x12, x18
	mv x13, x9
	jal __subdf3
.LBB0_56:                               //  %sw.epilog.i
	lui x12, %hi( 1413754136 )
	lui x13, %hi( 1074340347 )
	add x12, x12, %lo( 1413754136 )
	add x13, x13, %lo( 1074340347 )
	jal __muldf3
	mv x12, x21
	mv x13, x21
	mv x14, x21
	jal x0, .LBB0_58
.LBB0_47:                               //  %sw.bb36.i
	mv x21, x0
	lui x10, %hi( -1074266112 )
	add x13, x10, %lo( -1074266112 )
	mv x10, x18
	mv x11, x9
	mv x12, x21
	jal __adddf3
	lui x12, %hi( 1413754136 )
	lui x13, %hi( 1074340347 )
	add x12, x12, %lo( 1413754136 )
	add x13, x13, %lo( 1074340347 )
	jal __muldf3
	mv x12, x21
	mv x13, x21
	jal __kernel_cos
	mv x21, x10
	xor x11, x22, x11
	jal x0, .LBB0_60
.LBB0_48:
	mv x25, x21
	jal x0, .LBB0_50
.LBB0_49:                               //  %if.else71
	mv x25, x0
	lui x10, %hi( -1074790400 )
	add x13, x10, %lo( -1074790400 )
	mv x10, x19
	mv x11, x22
	mv x12, x25
	jal __adddf3
	mv x19, x10
	mv x22, x11
	mv x20, x25
.LBB0_50:                               //  %sw.bb137
	lui x10, %hi( -1087657207 )
	add x12, x10, %lo( -1087657207 )
	lui x10, %hi( 1066100619 )
	add x13, x10, %lo( 1066100619 )
	mv x10, x19
	mv x11, x22
	jal __muldf3
	lui x12, %hi( -167704284 )
	lui x13, %hi( 1070419630 )
	add x12, x12, %lo( -167704284 )
	add x13, x13, %lo( 1070419630 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x22
	jal __muldf3
	lui x12, %hi( 1156219984 )
	lui x13, %hi( 1072646518 )
	add x12, x12, %lo( 1156219984 )
	add x13, x13, %lo( 1072646518 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x22
	jal __muldf3
	lui x12, %hi( -786842257 )
	lui x13, %hi( 1073170268 )
	add x12, x12, %lo( -786842257 )
	add x13, x13, %lo( 1073170268 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x22
	jal __muldf3
	lui x12, %hi( -1962910209 )
	lui x13, %hi( 1071923230 )
	add x12, x12, %lo( -1962910209 )
	add x13, x13, %lo( 1071923230 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x22
	jal __muldf3
	lui x12, %hi( -478302008 )
	lui x13, %hi( -1078737817 )
	add x12, x12, %lo( -478302008 )
	add x13, x13, %lo( -1078737817 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x22
	jal __muldf3
	mv x23, x10
	lui x10, %hi( 1473302369 )
	add x12, x10, %lo( 1473302369 )
	lui x10, %hi( 1063934651 )
	mv x24, x11
	add x13, x10, %lo( 1063934651 )
	mv x10, x19
	mv x11, x22
	jal __muldf3
	lui x12, %hi( -699171704 )
	lui x13, %hi( 1069198933 )
	add x12, x12, %lo( -699171704 )
	add x13, x13, %lo( 1069198933 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x22
	jal __muldf3
	lui x12, %hi( -464498513 )
	lui x13, %hi( 1072209403 )
	add x12, x12, %lo( -464498513 )
	add x13, x13, %lo( 1072209403 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x22
	jal __muldf3
	lui x12, %hi( -1540679435 )
	lui x13, %hi( 1073809189 )
	add x12, x12, %lo( -1540679435 )
	add x13, x13, %lo( 1073809189 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x22
	jal __muldf3
	lui x12, %hi( -1027776100 )
	lui x13, %hi( 1073980887 )
	add x12, x12, %lo( -1027776100 )
	add x13, x13, %lo( 1073980887 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x22
	jal __muldf3
	mv x21, x0
	lui x13, (1072693248>>12)&1048575
	mv x12, x21
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __divdf3
	mv x23, x10
	lui x10, %hi( -1075838976 )
	mv x24, x11
	add x13, x10, %lo( -1075838976 )
	mv x10, x19
	mv x11, x22
	mv x12, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x20
.LBB0_51:                               //  %if.end244
	jal __adddf3
.LBB0_52:                               //  %if.end244
	mv x22, x10
	mv x23, x11
.LBB0_53:                               //  %if.end244
	mv x10, x9
	mv x11, x18
	mv x12, x22
	mv x13, x23
	jal __subdf3
	blt fp, x27, .LBB0_63
.LBB0_54:                               //  %if.end244
	mv x10, x22
	mv x11, x23
	jal x0, .LBB0_63
.LBB0_57:                               //  %sw.bb.i
	lui x10, %hi( 1413754136 )
	add x12, x10, %lo( 1413754136 )
	lui x10, %hi( 1074340347 )
	add x13, x10, %lo( 1074340347 )
	mv x10, x18
	mv x11, x9
	jal __muldf3
	mv x12, x0
	mv x13, x12
	mv x14, x12
.LBB0_58:                               //  %sw.epilog.i
	jal __kernel_sin
.LBB0_59:                               //  %sw.epilog.i
	mv x21, x10
.LBB0_60:                               //  %sw.epilog.i
	xor x22, x22, x11
.LBB0_61:                               //  %sin_pi.exit
	mv x12, x0
	mv x10, x21
	mv x11, x22
	mv x13, x12
	jal __nedf2
	bltu x0, x10, .LBB0_64
.LBB0_62:                               //  %if.end6
	mv x10, x19
	mv x11, fp
	mv x12, x19
	mv x13, fp
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x0
	lui x11, (1072693248>>12)&1048575
	jal __divdf3
.LBB0_63:                               //  %cleanup
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x27, 16 ( sp )               //  4-byte Folded Reload
	lw x26, 20 ( sp )               //  4-byte Folded Reload
	lw x25, 24 ( sp )               //  4-byte Folded Reload
	lw x24, 28 ( sp )               //  4-byte Folded Reload
	lw x23, 32 ( sp )               //  4-byte Folded Reload
	lw x22, 36 ( sp )               //  4-byte Folded Reload
	lw x21, 40 ( sp )               //  4-byte Folded Reload
	lw x20, 44 ( sp )               //  4-byte Folded Reload
	lw x19, 48 ( sp )               //  4-byte Folded Reload
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	lw x9, 56 ( sp )                //  4-byte Folded Reload
	lw ra, 60 ( sp )                //  4-byte Folded Reload
	add sp, sp, 64
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_64:                               //  %if.end29
	mv x10, x21
	mv x11, x22
	mv x12, x19
	mv x13, fp
	jal __muldf3
	jal fabs
	mv x12, x10
	lui x10, %hi( 1413754136 )
	mv x13, x11
	lui x11, %hi( 1074340347 )
	add x10, x10, %lo( 1413754136 )
	add x11, x11, %lo( 1074340347 )
	jal __divdf3
	jal __ieee754_log
	mv x12, x0
	mv x9, x10
	mv x18, x11
	mv x10, x21
	mv x11, x22
	mv x13, x12
	jal __ltdf2
	bge x10, x0, .LBB0_66
.LBB0_65:                               //  %if.then35
	add x10, x0, -1
	sw x10, 0 ( x20 )
.LBB0_66:                               //  %if.end36
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x22, x10, fp
	jal x0, .LBB0_10
.Lfunc_end0:
	.size	__ieee754_lgamma_r, .Lfunc_end0-__ieee754_lgamma_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_57
	.long	.LBB0_39
	.long	.LBB0_39
	.long	.LBB0_46
	.long	.LBB0_46
	.long	.LBB0_47
	.long	.LBB0_47
JTI0_1:
	.long	.LBB0_29
	.long	.LBB0_28
	.long	.LBB0_27
	.long	.LBB0_26
	.long	.LBB0_25
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
