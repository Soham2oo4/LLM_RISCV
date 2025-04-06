	.text
	.file	"ef_fmod.c"
	.globl	__ieee754_fmodf         //  -- Begin function __ieee754_fmodf
	.type	__ieee754_fmodf,@function
__ieee754_fmodf:                        //  @__ieee754_fmodf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lui x12, %hi( 2147483647 )
	add x13, x12, %lo( 2147483647 )
	and x14, x13, x10
	srl x12, x14, 23&31
	add x15, x0, 254
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x15, x12, .LBB0_2
.LBB0_1:                                //  %entry
	and x16, x13, x11
	add x13, x16, -1
	srl x13, x13, 23&31
	sltiu x13, x13, 255
	beq x0, x13, .LBB0_2
.LBB0_3:                                //  %if.end
	bltu x14, x16, .LBB0_36
.LBB0_4:                                //  %if.end14
	beq x14, x16, .LBB0_5
.LBB0_6:                                //  %if.end17
	bltu x0, x12, .LBB0_9
.LBB0_7:                                //  %if.then19
	add x15, x0, -126
	sll x12, x10, 8&31
	bge x0, x12, .LBB0_10
.LBB0_8:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x15, x15, -1
	sll x12, x12, 1&31
	blt x0, x12, .LBB0_8
.LBB0_10:                               //  %if.end24
	add x12, x0, -126
	srl x13, x16, 23&31
	bltu x0, x13, .LBB0_14
.LBB0_11:                               //  %if.then26
	sll x17, x11, 8&31
	mv x13, x12
	blt x17, x0, .LBB0_15
.LBB0_12:                               //  %for.body30.preheader
	add x13, x0, -126
.LBB0_13:                               //  %for.body30
                                        //  =>This Inner Loop Header: Depth=1
	add x13, x13, -1
	sll x17, x17, 1&31
	bge x17, x0, .LBB0_13
	jal x0, .LBB0_15
.LBB0_2:                                //  %if.then
	jal __mulsf3
	mv x11, x10
	jal __divsf3
.LBB0_36:                               //  %cleanup
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_9:                                //  %if.else
	add x15, x12, -127
	add x12, x0, -126
	srl x13, x16, 23&31
	beq x0, x13, .LBB0_11
.LBB0_14:                               //  %if.else35
	add x13, x13, -127
.LBB0_15:                               //  %if.end38
	lui x17, %hi( 8388607 )
	add x17, x17, %lo( 8388607 )
	lui x5, (8388608>>12)&1048575
	add x6, x0, -127
	blt x6, x13, .LBB0_16
.LBB0_17:                               //  %if.end38
	sub x11, x12, x13
	sll x16, x16, x11
	bge x6, x15, .LBB0_20
.LBB0_19:
	and x11, x17, x10
	or x14, x5, x11
	sub x5, x15, x13
	sub x11, x14, x16
	beq x0, x5, .LBB0_26
.LBB0_22:                               //  %while.body.preheader
	sub x5, x13, x15
	mv x15, x5
	bge x11, x0, .LBB0_24
.LBB0_25:                               //  %if.end65
                                        //  =>This Inner Loop Header: Depth=1
	sll x14, x14, 1&31
	sub x11, x14, x16
	add x5, x15, 1
	bltu x5, x15, .LBB0_26
.LBB0_23:                               //  %while.body
                                        //    in Loop: Header=BB0_25 Depth=1
	mv x15, x5
	blt x11, x0, .LBB0_25
.LBB0_24:                               //  %if.else58
	mv x14, x11
	bltu x0, x11, .LBB0_25
	jal x0, .LBB0_5
.LBB0_16:
	and x11, x17, x11
	or x16, x5, x11
	blt x6, x15, .LBB0_19
.LBB0_20:                               //  %if.end38
	sub x11, x12, x15
	sll x14, x14, x11
	sub x5, x15, x13
	sub x11, x14, x16
	bltu x0, x5, .LBB0_22
.LBB0_26:                               //  %while.end
	add x15, x0, -1
	blt x15, x11, .LBB0_28
.LBB0_27:                               //  %while.end
	mv x11, x14
.LBB0_28:                               //  %while.end
	beq x0, x11, .LBB0_5
.LBB0_29:                               //  %while.cond75.preheader
	lui x14, %hi( -2147483648 )
	add x14, x14, %lo( -2147483648 )
	blt x17, x11, .LBB0_32
.LBB0_30:
	lui x15, (4194304>>12)&1048575
.LBB0_31:                               //  %while.body77
                                        //  =>This Inner Loop Header: Depth=1
	mv x16, x11
	add x13, x13, -1
	sll x11, x16, 1&31
	blt x16, x15, .LBB0_31
.LBB0_32:                               //  %while.end80
	and x10, x14, x10
	slti x14, x13, -126
	bltu x0, x14, .LBB0_34
.LBB0_33:                               //  %if.then82
	sll x12, x13, 23&31
	lui x13, (1065353216>>12)&1048575
	add x12, x13, x12
	lui x13, %hi( -8388608 )
	add x13, x13, %lo( -8388608 )
	add x11, x13, x11
	or x11, x12, x11
	or x10, x10, x11
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_5:                                //  %if.then16
	srl x10, x10, 29&31
	lui x11, %hi( Zero )
	and x10, x10, 4
	add x11, x11, %lo( Zero )
	add x10, x10, x11
	lw x10, 0 ( x10 )
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_34:                               //  %if.else93
	sub x12, x12, x13
	srl x11, x11, x12
	or x10, x10, x11
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__ieee754_fmodf, .Lfunc_end0-__ieee754_fmodf
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	Zero,@object            //  @Zero
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
Zero:
	.long	0                       //  float 0
	.long	2147483648              //  float -0
	.size	Zero, 8


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
