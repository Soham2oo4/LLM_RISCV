	.text
	.file	"s_expm1.c"
	.globl	expm1                   //  -- Begin function expm1
	.type	expm1,@function
expm1:                                  //  @expm1
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( -2147483648 )
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x11
	add x10, x10, %lo( -2147483648 )
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	and x20, x10, fp
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	lui x11, %hi( 1078159482 )
	and x10, x10, fp
	add x11, x11, %lo( 1078159482 )
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	bltu x10, x11, .LBB0_6
.LBB0_1:                                //  %if.then3
	lui x11, %hi( 1082535490 )
	add x13, x11, %lo( 1082535490 )
	bltu x10, x13, .LBB0_14
.LBB0_2:                                //  %if.then5
	srl x10, x10, 20&31
	sltiu x10, x10, 2047
	bltu x0, x10, .LBB0_12
.LBB0_3:                                //  %if.then7
	lui x10, %hi( 1048575 )
	add x10, x10, %lo( 1048575 )
	and x10, x10, fp
	or x21, x9, x10
	mv x22, x0
	mv x19, x9
	mv x18, fp
	beq x20, x22, .LBB0_5
.LBB0_4:                                //  %if.then7
	lui x10, %hi( -1074790400 )
	add x18, x10, %lo( -1074790400 )
	mv x19, x22
.LBB0_5:                                //  %if.then7
	mv x10, x9
	mv x11, fp
	mv x12, x9
	mv x13, fp
	jal __adddf3
	bne x21, x22, .LBB0_37
	jal x0, .LBB0_38
.LBB0_6:                                //  %if.end30
	lui x11, %hi( 1071001155 )
	add x11, x11, %lo( 1071001155 )
	bltu x10, x11, .LBB0_10
.LBB0_7:                                //  %if.then32
	lui x11, %hi( 1072734897 )
	add x11, x11, %lo( 1072734897 )
	bltu x11, x10, .LBB0_17
.LBB0_8:                                //  %if.then34
	lui x10, %hi( -18874368 )
	add x12, x10, %lo( -18874368 )
	bltu x0, x20, .LBB0_34
.LBB0_9:                                //  %if.then36
	lui x10, %hi( -1075433918 )
	add x13, x10, %lo( -1075433918 )
	mv x10, x9
	mv x11, fp
	jal __adddf3
	mv x19, x10
	lui x10, %hi( 1038760431 )
	add x21, x10, %lo( 1038760431 )
	lui x10, %hi( 897137782 )
	mv x20, x11
	add x22, x10, %lo( 897137782 )
	seqz x18, x0
	jal x0, .LBB0_21
.LBB0_10:                               //  %if.else53
	srl x10, x10, 20&31
	add x11, x0, 968
	bltu x11, x10, .LBB0_22
.LBB0_11:                               //  %if.then56
	lui x10, %hi( -2013235812 )
	add x12, x10, %lo( -2013235812 )
	lui x10, %hi( 2117592124 )
	add x13, x10, %lo( 2117592124 )
	mv x10, x9
	mv x11, fp
	jal __adddf3
	mv x12, x10
	mv x13, x11
	jal x0, .LBB0_28
.LBB0_12:                               //  %if.end18
	lui x10, %hi( -17155601 )
	add x12, x10, %lo( -17155601 )
	mv x10, x9
	mv x11, fp
	jal __gtdf2
	bge x0, x10, .LBB0_14
.LBB0_13:                               //  %if.then20
	mv x10, x0
	jal __math_oflow
	jal x0, .LBB0_37
.LBB0_14:                               //  %if.end22
	lui x10, %hi( -1023872167 )
	add x12, x10, %lo( -1023872167 )
	lui x10, %hi( 27618847 )
	add x13, x10, %lo( 27618847 )
	mv x10, x9
	mv x11, fp
	jal __adddf3
	mv x19, x0
	mv x13, x19
	mv x12, x19
	jal __ltdf2
	bge x10, x0, .LBB0_17
.LBB0_15:                               //  %if.end22
	beq x0, x20, .LBB0_17
.LBB0_16:
	lui x10, %hi( -1074790400 )
	add x18, x10, %lo( -1074790400 )
	jal x0, .LBB0_38
.LBB0_17:                               //  %if.else41
	lui x10, %hi( 1697350398 )
	add x12, x10, %lo( 1697350398 )
	lui x10, %hi( 1073157447 )
	add x13, x10, %lo( 1073157447 )
	mv x10, x9
	mv x11, fp
	jal __muldf3
	mv x12, x0
	beq x20, x12, .LBB0_19
.LBB0_18:                               //  %if.else41
	lui x13, %hi( -1075838976 )
	add x13, x13, %lo( -1075838976 )
	jal x0, .LBB0_20
.LBB0_19:
	lui x13, (1071644672>>12)&1048575
.LBB0_20:                               //  %if.else41
	jal __adddf3
	jal __fixdfsi
	mv x18, x10
	jal __floatsidf
	mv x21, x10
	lui x10, %hi( -18874368 )
	add x12, x10, %lo( -18874368 )
	lui x10, %hi( -1075433918 )
	add x13, x10, %lo( -1075433918 )
	mv x10, x21
	mv x22, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __adddf3
	mv x19, x10
	lui x10, %hi( 897137782 )
	add x12, x10, %lo( 897137782 )
	lui x10, %hi( 1038760431 )
	mv x20, x11
	add x13, x10, %lo( 1038760431 )
	mv x10, x21
	mv x11, x22
	jal __muldf3
	mv x22, x10
	mv x21, x11
.LBB0_21:                               //  %if.end49
	mv x10, x19
	mv x11, x20
	mv x12, x22
	mv x13, x21
	jal __subdf3
	mv x9, x10
	mv fp, x11
	mv x10, x19
	mv x11, x20
	mv x12, x9
	mv x13, fp
	jal __subdf3
	mv x12, x22
	mv x13, x21
	jal __subdf3
	mv x19, x10
	mv x20, x11
	jal x0, .LBB0_23
.LBB0_22:
	mv x18, x0
                                        //  implicit-def: $rf_gpr_19
                                        //  implicit-def: $rf_gpr_20
.LBB0_23:                               //  %if.end63
	mv x24, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x9
	mv x11, fp
	mv x12, x24
	jal __muldf3
	mv x25, x10
	mv x26, x11
	mv x10, x9
	mv x11, fp
	mv x12, x25
	mv x13, x26
	jal __muldf3
	mv x22, x10
	lui x10, %hi( 1846133549 )
	add x12, x10, %lo( 1846133549 )
	lui x10, %hi( -1098187337 )
	add x13, x10, %lo( -1098187337 )
	mv x10, x22
	mv x21, x11
	jal __muldf3
	lui x12, %hi( -2031726023 )
	lui x13, %hi( 1053872074 )
	add x12, x12, %lo( -2031726023 )
	add x13, x13, %lo( 1053872074 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x21
	jal __muldf3
	lui x12, %hi( -1632969801 )
	lui x13, %hi( -1089155559 )
	add x12, x12, %lo( -1632969801 )
	add x13, x13, %lo( -1089155559 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x21
	jal __muldf3
	lui x12, %hi( 436098437 )
	lui x13, %hi( 1062863264 )
	add x12, x12, %lo( 436098437 )
	add x13, x13, %lo( 1062863264 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x21
	jal __muldf3
	lui x12, %hi( 286331124 )
	lui x13, %hi( -1079963375 )
	add x12, x12, %lo( 286331124 )
	add x13, x13, %lo( -1079963375 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x21
	jal __muldf3
	lui x13, (1072693248>>12)&1048575
	mv x12, x24
	jal __adddf3
	mv x27, x10
	mv x23, x11
	mv x10, x25
	mv x11, x26
	mv x12, x27
	mv x13, x23
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lui x11, (1074266112>>12)&1048575
	mv x10, x24
	jal __subdf3
	mv x25, x10
	mv x26, x11
	mv x10, x27
	mv x11, x23
	mv x12, x25
	mv x13, x26
	jal __subdf3
	mv x23, x10
	mv x27, x11
	mv x10, x9
	mv x11, fp
	mv x12, x25
	mv x13, x26
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lui x11, (1075314688>>12)&1048575
	mv x10, x24
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x27
	jal __divdf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	beq x0, x18, .LBB0_27
.LBB0_24:                               //  %if.else88
	mv x10, x12
	mv x11, x13
	mv x12, x19
	mv x13, x20
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __muldf3
	mv x12, x19
	mv x13, x20
	jal __subdf3
	mv x12, x22
	mv x13, x21
	jal __subdf3
	mv x20, x10
	mv x19, x11
	xor x10, x18, 1
	beq x0, x10, .LBB0_29
.LBB0_25:                               //  %if.else88
	xor x10, x18, -1
	bltu x0, x10, .LBB0_31
.LBB0_26:                               //  %if.then95
	mv x10, x9
	mv x11, fp
	mv x12, x20
	mv x13, x19
	jal __subdf3
	mv fp, x0
	lui x13, (1071644672>>12)&1048575
	mv x12, fp
	jal __muldf3
	lui x12, %hi( -1075838976 )
	add x13, x12, %lo( -1075838976 )
	jal x0, .LBB0_33
.LBB0_27:                               //  %if.then84
	mv x10, x9
	mv x11, fp
	jal __muldf3
	mv x12, x22
	mv x13, x21
.LBB0_28:                               //  %cleanup205
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __subdf3
	jal x0, .LBB0_37
.LBB0_29:                               //  %if.then102
	lui x10, %hi( -1076887552 )
	add x13, x10, %lo( -1076887552 )
	mv x12, x0
	mv x10, x9
	mv x11, fp
	jal __ltdf2
	bge x10, x0, .LBB0_35
.LBB0_30:                               //  %if.then105
	mv x18, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x9
	mv x11, fp
	mv x12, x18
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x19
	jal __subdf3
	lui x12, %hi( -1073741824 )
	add x13, x12, %lo( -1073741824 )
	mv x12, x18
	jal __muldf3
	jal x0, .LBB0_37
.LBB0_31:                               //  %if.end113
	sltiu x10, x18, 57
	bltu x0, x10, .LBB0_39
.LBB0_32:                               //  %if.then118
	mv x10, x9
	mv x11, fp
	mv x12, x20
	mv x13, x19
	jal __subdf3
	mv fp, x0
	lui x13, (1072693248>>12)&1048575
	mv x12, fp
	jal __adddf3
	sll x12, x18, 20&31
	add x11, x11, x12
	lui x12, %hi( -1074790400 )
	add x13, x12, %lo( -1074790400 )
.LBB0_33:                               //  %cleanup205
	mv x12, fp
	jal x0, .LBB0_36
.LBB0_34:                               //  %if.else38
	lui x10, %hi( 1072049730 )
	add x13, x10, %lo( 1072049730 )
	mv x10, x9
	mv x11, fp
	jal __adddf3
	mv x19, x10
	lui x10, %hi( -1108723217 )
	add x21, x10, %lo( -1108723217 )
	lui x10, %hi( 897137782 )
	mv x20, x11
	add x22, x10, %lo( 897137782 )
	add x18, x0, -1
	jal x0, .LBB0_21
.LBB0_35:                               //  %if.else109
	mv x10, x9
	mv x11, fp
	mv x12, x20
	mv x13, x19
	jal __subdf3
	mv x12, x10
	mv x13, x11
	jal __adddf3
	mv x12, x0
	lui x13, (1072693248>>12)&1048575
.LBB0_36:                               //  %if.then7
	jal __adddf3
.LBB0_37:                               //  %if.then7
	mv x19, x10
	mv x18, x11
.LBB0_38:                               //  %cleanup205
	mv x10, x19
	mv x11, x18
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
.LBB0_39:                               //  %if.end138
	add x10, x0, 19
	blt x10, x18, .LBB0_41
.LBB0_40:                               //  %if.then141
	mv x10, x20
	mv x11, x19
	mv x12, x9
	mv x13, fp
	jal __subdf3
	mv x12, x10
	lui x10, (2097152>>12)&1048575
	mv x13, x11
	srl x10, x10, x18
	lui x11, (1072693248>>12)&1048575
	sub x11, x11, x10
	mv x10, x0
	jal __subdf3
	mv x19, x10
	sll x10, x18, 20&31
	add x18, x11, x10
	jal x0, .LBB0_38
.LBB0_41:                               //  %if.else171
	sll x21, x18, 20&31
	mv x18, x0
	lui x22, (1072693248>>12)&1048575
	sub x13, x22, x21
	mv x10, x20
	mv x11, x19
	mv x12, x18
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __subdf3
	mv x12, x18
	mv x13, x22
	jal __adddf3
	mv x19, x10
	add x18, x11, x21
	jal x0, .LBB0_38
.Lfunc_end0:
	.size	expm1, .Lfunc_end0-expm1
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_oflow

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
