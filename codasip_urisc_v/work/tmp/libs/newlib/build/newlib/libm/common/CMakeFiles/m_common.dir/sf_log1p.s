	.text
	.file	"sf_log1p.c"
	.globl	log1pf                  //  -- Begin function log1pf
	.type	log1pf,@function
log1pf:                                 //  @log1pf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv fp, x10
	lui x10, (2139095040>>12)&1048575
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	bge fp, x10, .LBB0_1
.LBB0_3:                                //  %if.end
	lui x10, %hi( 1054086102 )
	add x10, x10, %lo( 1054086102 )
	blt x10, fp, .LBB0_17
.LBB0_4:                                //  %if.then2
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x10, x10, fp
	srl x9, x10, 23&31
	sltiu x11, x9, 127
	bltu x0, x11, .LBB0_8
.LBB0_5:                                //  %if.then4
	lui x10, %hi( -1082130432 )
	add x11, x10, %lo( -1082130432 )
	mv x10, fp
	jal __nesf2
	bltu x0, x10, .LBB0_7
.LBB0_6:                                //  %if.then6
	seqz x10, x0
	jal __math_divzerof
	jal x0, .LBB0_34
.LBB0_1:                                //  %if.then
	mv x10, fp
	mv x11, fp
	jal __addsf3
	jal x0, .LBB0_34
.LBB0_17:                               //  %if.then24
	lui x10, %hi( 1509949439 )
	add x10, x10, %lo( 1509949439 )
	blt x10, fp, .LBB0_21
.LBB0_18:                               //  %if.then26
	lui x9, (1065353216>>12)&1048575
	mv x10, fp
	mv x11, x9
	jal __addsf3
	mv x19, x10
	mv x10, fp
	mv x11, x19
	jal __subsf3
	sra x11, x19, 23&31
	add x18, x11, -127
	mv x11, x9
	jal __addsf3
	mv x9, x10
	lui x10, %hi( -1082130432 )
	add x11, x10, %lo( -1082130432 )
	mv x10, x19
	jal __addsf3
	mv x11, x10
	mv x10, fp
	jal __subsf3
	mv x11, x0
	blt x11, x18, .LBB0_20
.LBB0_19:                               //  %if.then26
	mv x9, x10
.LBB0_20:                               //  %if.then26
	mv x10, x9
	mv x11, x19
	jal __divsf3
	mv x9, x10
	jal x0, .LBB0_22
.LBB0_8:                                //  %if.end8
	srl x10, x10, 24&31
	add x11, x0, 48
	bltu x11, x10, .LBB0_13
.LBB0_9:                                //  %if.then10
	lui x11, (1275068416>>12)&1048575
	mv x10, fp
	jal __addsf3
	mv x11, x0
	jal __gtsf2
	bge x0, x10, .LBB0_12
.LBB0_10:                               //  %if.then10
	sltiu x10, x9, 73
	beq x0, x10, .LBB0_12
.LBB0_11:
	mv x20, fp
	jal x0, .LBB0_35
.LBB0_21:                               //  %if.else40
	srl x10, fp, 23&31
	mv x9, x0
	add x18, x10, -127
	mv x19, fp
.LBB0_22:                               //  %if.end49
	lui x10, %hi( 8388607 )
	add x10, x10, %lo( 8388607 )
	and x20, x10, x19
	lui x10, %hi( 3474678 )
	add x10, x10, %lo( 3474678 )
	bltu x10, x20, .LBB0_24
.LBB0_23:                               //  %do.body53
	lui x10, (1065353216>>12)&1048575
	or x10, x10, x20
	jal x0, .LBB0_25
.LBB0_24:                               //  %if.else58
	lui x11, (8388608>>12)&1048575
	lui x10, (1056964608>>12)&1048575
	sub x11, x11, x20
	or x10, x10, x20
	srl x20, x11, 2&31
	add x18, x18, 1
.LBB0_25:                               //  %if.end71
	lui x11, %hi( -1082130432 )
	add x11, x11, %lo( -1082130432 )
	jal __addsf3
	lui x11, (1056964608>>12)&1048575
	mv fp, x10
	jal __mulsf3
	mv x11, x10
	mv x10, fp
	jal __mulsf3
	mv x19, x10
	beq x0, x20, .LBB0_26
.LBB0_15:                               //  %if.end103
	lui x11, (1073741824>>12)&1048575
	mv x10, fp
	jal __addsf3
	mv x11, x10
	mv x10, fp
	jal __divsf3
	mv x20, x10
	mv x11, x20
	jal __mulsf3
	mv x21, x10
	lui x10, %hi( 1041729687 )
	add x11, x10, %lo( 1041729687 )
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 1042075727 )
	add x11, x11, %lo( 1042075727 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 1044001573 )
	add x11, x11, %lo( 1044001573 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 1046711849 )
	add x11, x11, %lo( 1046711849 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 1049774373 )
	add x11, x11, %lo( 1049774373 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 1053609165 )
	add x11, x11, %lo( 1053609165 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 1059760811 )
	add x11, x11, %lo( 1059760811 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	mv x21, x10
	beq x0, x18, .LBB0_16
.LBB0_32:                               //  %if.else127
	mv x10, x18
	jal __floatsisf
	mv x18, x10
	lui x10, %hi( 1060204928 )
	add x11, x10, %lo( 1060204928 )
	mv x10, x18
	jal __mulsf3
	mv x22, x10
	mv x10, x19
	mv x11, x21
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	mv x20, x10
	lui x10, %hi( 924317649 )
	add x11, x10, %lo( 924317649 )
	mv x10, x18
	jal __mulsf3
	mv x11, x10
	mv x10, x9
	jal __addsf3
	mv x11, x20
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __subsf3
	mv x11, fp
	jal __subsf3
	mv x11, x10
	mv x10, x22
	jal x0, .LBB0_33
.LBB0_26:                               //  %if.then75
	mv x20, x0
	mv x10, fp
	mv x11, x20
	jal __nesf2
	bltu x0, x10, .LBB0_29
.LBB0_27:                               //  %if.then77
	beq x0, x18, .LBB0_35
.LBB0_28:                               //  %if.else80
	mv x10, x18
	jal __floatsisf
	mv fp, x10
	lui x10, %hi( 924317649 )
	add x11, x10, %lo( 924317649 )
	mv x10, fp
	jal __mulsf3
	mv x11, x10
	mv x10, x9
	jal __addsf3
	mv x9, x10
	lui x10, %hi( 1060204928 )
	add x11, x10, %lo( 1060204928 )
	mv x10, fp
	jal __mulsf3
	mv x11, x9
	jal __addsf3
	jal x0, .LBB0_34
.LBB0_16:                               //  %if.then122
	mv x10, x19
	mv x11, x21
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	mv x11, x10
	mv x10, x19
	jal __subsf3
	mv x11, x10
	mv x10, fp
	jal x0, .LBB0_33
.LBB0_13:                               //  %if.end17
	lui x10, %hi( 1097468384 )
	add x10, x10, %lo( 1097468384 )
	lui x11, %hi( 1097468385 )
	add x10, x10, fp
	add x11, x11, %lo( 1097468385 )
	bltu x10, x11, .LBB0_18
.LBB0_14:                               //  %if.end71.thread
	lui x11, (1056964608>>12)&1048575
	mv x10, fp
	jal __mulsf3
	mv x11, fp
	jal __mulsf3
	mv x19, x10
	mv x18, x0
                                        //  implicit-def: $rf_gpr_9
	jal x0, .LBB0_15
.LBB0_7:                                //  %if.else
	mv x10, fp
	jal __math_invalidf
	jal x0, .LBB0_34
.LBB0_29:                               //  %if.end86
	lui x10, %hi( -1087722837 )
	add x11, x10, %lo( -1087722837 )
	mv x10, fp
	jal __mulsf3
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	mv x19, x10
	beq x0, x18, .LBB0_30
.LBB0_31:                               //  %if.else94
	mv x10, x18
	jal __floatsisf
	mv x18, x10
	lui x10, %hi( 1060204928 )
	add x11, x10, %lo( 1060204928 )
	mv x10, x18
	jal __mulsf3
	mv x20, x10
	lui x10, %hi( 924317649 )
	add x11, x10, %lo( 924317649 )
	mv x10, x18
	jal __mulsf3
	mv x11, x10
	mv x10, x9
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __subsf3
	mv x11, fp
	jal __subsf3
	mv x11, x10
	mv x10, x20
	jal x0, .LBB0_33
.LBB0_12:                               //  %if.else15
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	lui x11, %hi( -1090519040 )
	add x11, x11, %lo( -1090519040 )
	jal __mulsf3
	mv x11, x10
	mv x10, fp
	jal __addsf3
	jal x0, .LBB0_34
.LBB0_30:                               //  %if.then92
	mv x10, fp
	mv x11, x19
.LBB0_33:                               //  %cleanup
	jal __subsf3
.LBB0_34:                               //  %cleanup
	mv x20, x10
.LBB0_35:                               //  %cleanup
	mv x10, x20
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x22, 4 ( sp )                //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	log1pf, .Lfunc_end0-log1pf
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_divzerof
	.hidden	__math_invalidf

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
