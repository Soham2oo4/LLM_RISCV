	.text
	.file	"erf_lgamma.c"
	.globl	__ieee754_lgammaf_r     //  -- Begin function __ieee754_lgammaf_r
	.type	__ieee754_lgammaf_r,@function
__ieee754_lgammaf_r:                    //  @__ieee754_lgammaf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv fp, x10
	mv x18, x11
	seqz x10, x0
	sw x10, 0 ( x18 )
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	and x20, x10, fp
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	srl x22, x20, 23&31
	sltiu x10, x22, 255
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	bltu x0, x10, .LBB0_2
.LBB0_1:                                //  %if.then
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	jal x0, .LBB0_29
.LBB0_2:                                //  %if.end
	beq x0, x20, .LBB0_6
.LBB0_3:                                //  %if.end6
	add x10, x0, 56
	bltu x10, x22, .LBB0_8
.LBB0_4:                                //  %if.then8
	blt fp, x0, .LBB0_12
.LBB0_5:                                //  %if.else
	mv x10, fp
	jal __ieee754_logf
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x10, x11, x10
	jal x0, .LBB0_29
.LBB0_6:                                //  %if.then2
	bge fp, x0, .LBB0_28
.LBB0_7:                                //  %if.then4
	add x10, x0, -1
	sw x10, 0 ( x18 )
	jal x0, .LBB0_28
.LBB0_8:                                //  %if.end15
	mv x23, x0
	blt fp, x0, .LBB0_13
.LBB0_9:
	mv x9, x23
	mv x19, fp
	lui x10, %hi( 1065353215 )
	add x10, x10, %lo( 1065353215 )
	blt x10, fp, .LBB0_33
.LBB0_10:                               //  %if.end37
	lui x10, %hi( -1082130432 )
	add x10, x10, %lo( -1082130432 )
	mv x21, x23
	beq fp, x10, .LBB0_62
.LBB0_11:                               //  %if.end37
	lui x10, %hi( -1073741824 )
	add x10, x10, %lo( -1073741824 )
	mv x21, x23
	beq fp, x10, .LBB0_62
	jal x0, .LBB0_35
.LBB0_12:                               //  %if.then10
	add x10, x0, -1
	sw x10, 0 ( x18 )
	lui x10, %hi( -2147483648 )
	add x9, x10, %lo( -2147483648 )
	xor x10, x9, fp
	jal __ieee754_logf
	xor x10, x9, x10
	jal x0, .LBB0_29
.LBB0_13:                               //  %if.then17
	srl x10, x20, 24&31
	sltiu x10, x10, 75
	beq x0, x10, .LBB0_28
.LBB0_14:                               //  %if.end22
	add x10, x0, 124
	bltu x10, x22, .LBB0_16
.LBB0_15:                               //  %if.then.i
	lui x10, %hi( 1078530011 )
	add x11, x10, %lo( 1078530011 )
	mv x10, fp
	jal __mulsf3
	mv x11, x0
	mv x12, x11
	jal __kernel_sinf
	mv x19, x10
	mv x11, x0
	mv x10, x19
	jal __nesf2
	bltu x0, x10, .LBB0_30
.LBB0_28:                               //  %if.end5
	mv x10, fp
	mv x11, fp
	jal __subsf3
	mv x11, x10
	lui x10, (1065353216>>12)&1048575
	jal __divsf3
.LBB0_29:                               //  %cleanup
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x23, 16 ( sp )               //  4-byte Folded Reload
	lw x22, 20 ( sp )               //  4-byte Folded Reload
	lw x21, 24 ( sp )               //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_16:                               //  %if.end.i
	lui x10, %hi( -2147483648 )
	add x21, x10, %lo( -2147483648 )
	xor x9, x21, fp
	mv x10, x9
	jal floorf
	mv x11, x9
	jal __eqsf2
	beq x0, x10, .LBB0_18
.LBB0_17:                               //  %if.then3.i
	lui x10, %hi( -1090519040 )
	add x11, x10, %lo( -1090519040 )
	mv x10, fp
	jal __mulsf3
	mv x9, x10
	jal floorf
	mv x11, x10
	mv x10, x9
	jal __subsf3
	mv x11, x10
	jal __addsf3
	lui x11, (1082130432>>12)&1048575
	mv x9, x10
	jal __mulsf3
	jal __fixsfsi
	add x11, x0, 6
	bltu x11, x10, .LBB0_23
.LBB0_19:                               //  %if.end26.i
	lui x11, %hi( JTI0_0 )
	sll x10, x10, 2&31
	add x11, x11, %lo( JTI0_0 )
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB0_20:                               //  %sw.bb29.i
	lui x10, (1056964608>>12)&1048575
	mv x11, x9
	jal __subsf3
	lui x11, %hi( 1078530011 )
	add x11, x11, %lo( 1078530011 )
	jal __mulsf3
	mv x11, x0
	jal __kernel_cosf
	jal x0, .LBB0_27
.LBB0_18:                               //  %if.else12.i
	lui x10, (1258291200>>12)&1048575
	mv x11, fp
	jal __subsf3
	and x19, x10, 1
	mv x10, x19
	jal __floatsisf
	mv x9, x10
	sll x10, x19, 2&31
	add x11, x0, 6
	bgeu x11, x10, .LBB0_19
.LBB0_23:                               //  %sw.default.i
	lui x10, %hi( -1073741824 )
	add x11, x10, %lo( -1073741824 )
	mv x10, x9
	jal __addsf3
	jal x0, .LBB0_24
.LBB0_21:                               //  %sw.bb33.i
	lui x10, (1065353216>>12)&1048575
	mv x11, x9
	jal __subsf3
.LBB0_24:                               //  %sw.epilog.i
	lui x11, %hi( 1078530011 )
	add x11, x11, %lo( 1078530011 )
	jal x0, .LBB0_26
.LBB0_22:                               //  %sw.bb37.i
	lui x10, %hi( -1077936128 )
	add x11, x10, %lo( -1077936128 )
	mv x10, x9
	jal __addsf3
	lui x11, %hi( 1078530011 )
	add x11, x11, %lo( 1078530011 )
	jal __mulsf3
	mv x11, x0
	jal __kernel_cosf
	xor x10, x21, x10
	jal x0, .LBB0_27
.LBB0_25:                               //  %sw.bb.i
	lui x10, %hi( 1078530011 )
	add x11, x10, %lo( 1078530011 )
	mv x10, x9
.LBB0_26:                               //  %sw.epilog.i
	jal __mulsf3
	mv x11, x0
	mv x12, x11
	jal __kernel_sinf
.LBB0_27:                               //  %sw.epilog.i
	xor x19, x21, x10
	mv x11, x0
	mv x10, x19
	jal __nesf2
	beq x0, x10, .LBB0_28
.LBB0_30:                               //  %if.end28
	mv x10, x19
	mv x11, fp
	jal __mulsf3
	jal fabsf
	mv x11, x10
	lui x10, %hi( 1078530011 )
	add x10, x10, %lo( 1078530011 )
	jal __divsf3
	jal __ieee754_logf
	mv x9, x10
	mv x11, x0
	mv x10, x19
	jal __ltsf2
	bge x10, x0, .LBB0_32
.LBB0_31:                               //  %if.then34
	add x10, x0, -1
	sw x10, 0 ( x18 )
.LBB0_32:                               //  %if.end35
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x19, x10, fp
	lui x10, %hi( 1065353215 )
	add x10, x10, %lo( 1065353215 )
	bge x10, fp, .LBB0_10
.LBB0_33:                               //  %if.end37
	lui x10, (1065353216>>12)&1048575
	mv x21, x23
	beq fp, x10, .LBB0_62
.LBB0_34:                               //  %if.end37
	lui x10, (1073741824>>12)&1048575
	mv x21, x23
	beq fp, x10, .LBB0_62
.LBB0_35:                               //  %if.else41
	srl x10, x20, 30&31
	bltu x0, x10, .LBB0_39
.LBB0_36:                               //  %if.then43
	lui x10, %hi( 1063675494 )
	add x10, x10, %lo( 1063675494 )
	bltu x10, x20, .LBB0_47
.LBB0_37:                               //  %if.then45
	mv x10, x19
	jal __ieee754_logf
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x18, x11, x10
	lui x10, %hi( 1060850207 )
	add x10, x10, %lo( 1060850207 )
	bgeu x10, x20, .LBB0_52
.LBB0_38:
	lui x10, (1065353216>>12)&1048575
	jal x0, .LBB0_49
.LBB0_39:                               //  %if.else158
	srl x10, x20, 24&31
	add x11, x0, 64
	bltu x11, x10, .LBB0_50
.LBB0_40:                               //  %if.then160
	mv x10, x19
	jal __fixsfsi
	mv x20, x10
	jal __floatsisf
	mv x11, x10
	mv x10, x19
	jal __subsf3
	mv x18, x10
	lui x10, %hi( 939917159 )
	add x11, x10, %lo( 939917159 )
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 988886452 )
	add x11, x11, %lo( 988886452 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1020936420 )
	add x11, x11, %lo( 1020936420 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1041620198 )
	add x11, x11, %lo( 1041620198 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1051118714 )
	add x11, x11, %lo( 1051118714 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1046226010 )
	add x11, x11, %lo( 1046226010 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1113709761 )
	add x11, x11, %lo( -1113709761 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x21, x10
	lui x10, %hi( 922081213 )
	add x11, x10, %lo( 922081213 )
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 978054870 )
	add x11, x11, %lo( 978054870 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1016643412 )
	add x11, x11, %lo( 1016643412 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1043337070 )
	add x11, x11, %lo( 1043337070 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1060688069 )
	add x11, x11, %lo( 1060688069 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1068641595 )
	add x11, x11, %lo( 1068641595 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x19, (1065353216>>12)&1048575
	mv x11, x19
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __divsf3
	mv x21, x10
	lui x11, (1056964608>>12)&1048575
	mv x10, x18
	jal __mulsf3
	mv x11, x21
	jal __addsf3
	mv x21, x10
	add x10, x20, -3
	add x11, x0, 4
	bltu x11, x10, .LBB0_62
.LBB0_41:                               //  %if.then160
	lui x11, %hi( JTI0_1 )
	sll x10, x10, 2&31
	add x11, x11, %lo( JTI0_1 )
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB0_42:                               //  %sw.bb191
	lui x11, (1086324736>>12)&1048575
	mv x10, x18
	jal __addsf3
	mv x19, x10
.LBB0_43:                               //  %sw.bb194
	lui x11, (1084227584>>12)&1048575
	mv x10, x18
	jal __addsf3
	mv x11, x19
	jal __mulsf3
	mv x19, x10
.LBB0_44:                               //  %sw.bb197
	lui x11, (1082130432>>12)&1048575
	mv x10, x18
	jal __addsf3
	mv x11, x19
	jal __mulsf3
	mv x19, x10
.LBB0_45:                               //  %sw.bb200
	lui x11, (1077936128>>12)&1048575
	mv x10, x18
	jal __addsf3
	mv x11, x19
	jal __mulsf3
	mv x19, x10
.LBB0_46:                               //  %sw.bb203
	lui x11, (1073741824>>12)&1048575
	mv x10, x18
	jal __addsf3
	mv x11, x19
	jal __mulsf3
	jal __ieee754_logf
	mv x11, x10
	mv x10, x21
	jal x0, .LBB0_60
.LBB0_47:                               //  %if.else58
	lui x10, %hi( 1071490583 )
	add x10, x10, %lo( 1071490583 )
	bgeu x10, x20, .LBB0_53
.LBB0_48:
	mv x18, x0
	lui x10, (1073741824>>12)&1048575
.LBB0_49:                               //  %sw.bb
	mv x11, x19
	jal __subsf3
	mv x19, x10
	mv x11, x19
	jal __mulsf3
	mv x20, x10
	lui x10, %hi( 936608674 )
	add x11, x10, %lo( 936608674 )
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 963090279 )
	add x11, x11, %lo( 963090279 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 983323809 )
	add x11, x11, %lo( 983323809 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 1005716094 )
	add x11, x11, %lo( 1005716094 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 1032450049 )
	add x11, x11, %lo( 1032450049 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 1033773887 )
	add x11, x11, %lo( 1033773887 )
	jal __addsf3
	mv x21, x10
	lui x10, %hi( 943467637 )
	add x11, x10, %lo( 943467637 )
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 954369093 )
	add x11, x11, %lo( 954369093 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 973452852 )
	add x11, x11, %lo( 973452852 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 993881798 )
	add x11, x11, %lo( 993881798 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 1017682197 )
	add x11, x11, %lo( 1017682197 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 1051007590 )
	add x11, x11, %lo( 1051007590 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	mv x20, x10
	mv x10, x19
	mv x11, x21
	jal __mulsf3
	mv x11, x20
	jal __addsf3
	mv x20, x10
	lui x10, %hi( -1090519040 )
	add x11, x10, %lo( -1090519040 )
	mv x10, x19
	jal __mulsf3
	mv x11, x10
	mv x10, x20
	jal x0, .LBB0_59
.LBB0_50:                               //  %if.else209
	mv x10, x19
	jal __ieee754_logf
	mv x18, x10
	add x10, x0, 184
	bltu x10, x22, .LBB0_56
.LBB0_51:                               //  %if.then212
	lui x10, (1065353216>>12)&1048575
	mv x11, x19
	jal __divsf3
	mv x20, x10
	mv x11, x20
	jal __mulsf3
	mv x21, x10
	lui x10, %hi( -1160395544 )
	add x11, x10, %lo( -1160395544 )
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 979058130 )
	add x11, x11, %lo( 979058130 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( -1172568484 )
	add x11, x11, %lo( -1172568484 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 978324733 )
	add x11, x11, %lo( 978324733 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( -1154086047 )
	add x11, x11, %lo( -1154086047 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 1034594987 )
	add x11, x11, %lo( 1034594987 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 1054244637 )
	add x11, x11, %lo( 1054244637 )
	jal __addsf3
	mv x20, x10
	lui x10, %hi( -1090519040 )
	add x11, x10, %lo( -1090519040 )
	mv x10, x19
	jal __addsf3
	mv x19, x10
	lui x10, %hi( -1082130432 )
	add x11, x10, %lo( -1082130432 )
	mv x10, x18
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	mv x11, x10
	mv x10, x20
	jal x0, .LBB0_60
.LBB0_52:                               //  %if.else51
	lui x10, %hi( -1091806452 )
	add x11, x10, %lo( -1091806452 )
	mv x10, x19
	jal __addsf3
	mv x21, x10
	lui x10, %hi( 1047343879 )
	add x10, x10, %lo( 1047343879 )
	bltu x10, x20, .LBB0_55
	jal x0, .LBB0_58
.LBB0_53:                               //  %if.else62
	lui x10, %hi( 1067296288 )
	add x10, x10, %lo( 1067296288 )
	bltu x20, x10, .LBB0_57
.LBB0_54:                               //  %if.then64
	lui x10, %hi( -1078257981 )
	add x11, x10, %lo( -1078257981 )
	mv x10, x19
	jal __addsf3
	mv x21, x10
	mv x18, x0
.LBB0_55:                               //  %sw.bb97
	mv x10, x21
	mv x11, x21
	jal __mulsf3
	mv x19, x10
	mv x10, x21
	mv x11, x19
	jal __mulsf3
	mv x20, x10
	lui x10, %hi( -1180436185 )
	add x11, x10, %lo( -1180436185 )
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 979826791 )
	add x11, x11, %lo( 979826791 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( -1150191618 )
	add x11, x11, %lo( -1150191618 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 1016280893 )
	add x11, x11, %lo( 1016280893 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( -1105780420 )
	add x11, x11, %lo( -1105780420 )
	jal __addsf3
	mv x22, x10
	lui x10, %hi( 967830007 )
	add x11, x10, %lo( 967830007 )
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( -1173540731 )
	add x11, x11, %lo( -1173540731 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 991172249 )
	add x11, x11, %lo( 991172249 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( -1138164482 )
	add x11, x11, %lo( -1138164482 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 1032083989 )
	add x11, x11, %lo( 1032083989 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	mv x11, x10
	mv x10, x22
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	mv x11, x10
	lui x10, %hi( 837164114 )
	add x10, x10, %lo( 837164114 )
	jal __subsf3
	mv x21, x10
	lui x10, %hi( 967146347 )
	add x11, x10, %lo( 967146347 )
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( -1162349450 )
	add x11, x11, %lo( -1162349450 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 1002956551 )
	add x11, x11, %lo( 1002956551 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( -1123660473 )
	add x11, x11, %lo( -1123660473 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 1056422238 )
	add x11, x11, %lo( 1056422238 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	mv x11, x21
	jal __subsf3
	lui x11, %hi( -1107767859 )
	add x11, x11, %lo( -1107767859 )
	jal x0, .LBB0_59
.LBB0_56:                               //  %if.else232
	lui x10, %hi( -1082130432 )
	add x11, x10, %lo( -1082130432 )
	mv x10, x18
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	jal x0, .LBB0_61
.LBB0_57:                               //  %if.else66
	lui x10, %hi( -1082130432 )
	add x11, x10, %lo( -1082130432 )
	mv x10, x19
	jal __addsf3
	mv x19, x10
	mv x18, x0
.LBB0_58:                               //  %sw.bb132
	lui x10, %hi( 1012612190 )
	add x11, x10, %lo( 1012612190 )
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( 1047164280 )
	add x11, x11, %lo( 1047164280 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( 1064979378 )
	add x11, x11, %lo( 1064979378 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( 1069169383 )
	add x11, x11, %lo( 1069169383 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( 1059193076 )
	add x11, x11, %lo( 1059193076 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( -1113709761 )
	add x11, x11, %lo( -1113709761 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	mv x20, x10
	lui x10, %hi( 995284443 )
	add x11, x10, %lo( 995284443 )
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( 1037398703 )
	add x11, x11, %lo( 1037398703 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( 1061482463 )
	add x11, x11, %lo( 1061482463 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( 1074280749 )
	add x11, x11, %lo( 1074280749 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( 1075654334 )
	add x11, x11, %lo( 1075654334 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	mv x21, x10
	lui x10, %hi( -1090519040 )
	add x11, x10, %lo( -1090519040 )
	mv x10, x19
	jal __mulsf3
	mv x19, x10
	mv x10, x20
	mv x11, x21
	jal __divsf3
	mv x11, x19
.LBB0_59:                               //  %if.end239
	jal __addsf3
	mv x11, x10
	mv x10, x18
.LBB0_60:                               //  %if.end239
	jal __addsf3
.LBB0_61:                               //  %if.end239
	mv x21, x10
.LBB0_62:                               //  %if.end239
	mv x10, x9
	mv x11, x21
	jal __subsf3
	blt fp, x23, .LBB0_29
.LBB0_63:                               //  %if.end239
	mv x10, x21
	jal x0, .LBB0_29
.Lfunc_end0:
	.size	__ieee754_lgammaf_r, .Lfunc_end0-__ieee754_lgammaf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_25
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_22
	.long	.LBB0_22
JTI0_1:
	.long	.LBB0_46
	.long	.LBB0_45
	.long	.LBB0_44
	.long	.LBB0_43
	.long	.LBB0_42
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
