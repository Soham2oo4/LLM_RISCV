	.text
	.file	"sf_remquo.c"
	.globl	remquof                 //  -- Begin function remquof
	.type	remquof,@function
remquof:                                //  @remquof
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( 2147483647 )
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x21, x10, %lo( 2147483647 )
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	and x18, x21, x9
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv fp, x12
	srl x10, x18, 23&31
	add x12, x0, 254
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	bltu x12, x10, .LBB0_2
.LBB0_1:                                //  %entry
	and x16, x21, x11
	add x12, x16, -1
	srl x12, x12, 23&31
	sltiu x12, x12, 255
	beq x0, x12, .LBB0_2
.LBB0_3:                                //  %if.end
	lui x13, %hi( -2147483648 )
	xor x12, x9, x11
	add x23, x13, %lo( -2147483648 )
	and x22, x23, x12
	bgeu x18, x16, .LBB0_5
.LBB0_4:
	mv x24, x0
.LBB0_40:                               //  %do.body93
	mv x10, x11
	jal fabsf
	lui x11, (16777216>>12)&1048575
	mv x19, x10
	jal __ltsf2
	bge x10, x0, .LBB0_44
.LBB0_41:                               //  %if.then99
	mv x10, x18
	mv x11, x18
	jal __addsf3
	mv x11, x19
	mv x20, x10
	jal __gtsf2
	blt x0, x10, .LBB0_48
.LBB0_42:                               //  %lor.lhs.false102
	and x10, x24, 1
	beq x0, x10, .LBB0_49
.LBB0_43:                               //  %lor.lhs.false102
	mv x10, x20
	mv x11, x19
	jal __nesf2
	beq x0, x10, .LBB0_48
	jal x0, .LBB0_49
.LBB0_2:                                //  %if.then
	mv x10, x9
	sw x0, 0 ( fp )
	jal __mulsf3
	mv x11, x10
	jal __divsf3
	jal x0, .LBB0_52
.LBB0_5:                                //  %if.else
	bne x18, x16, .LBB0_7
.LBB0_6:                                //  %if.then17
	seqz x10, x0
	sw x10, 0 ( fp )
	jal x0, .LBB0_38
.LBB0_44:                               //  %if.else111
	lui x11, (1056964608>>12)&1048575
	mv x10, x19
	jal __mulsf3
	mv x11, x18
	mv x20, x10
	jal __ltsf2
	blt x10, x0, .LBB0_48
.LBB0_45:                               //  %lor.lhs.false114
	and x10, x24, 1
	beq x0, x10, .LBB0_49
.LBB0_46:                               //  %lor.lhs.false114
	mv x10, x20
	mv x11, x18
	jal __nesf2
	bltu x0, x10, .LBB0_49
.LBB0_48:                               //  %if.then120
	mv x10, x18
	mv x11, x19
	jal __subsf3
	mv x18, x10
	add x24, x24, 1
.LBB0_49:                               //  %do.body125
	and x10, x23, x9
	and x11, x21, x24
	mv x12, x0
	beq x22, x12, .LBB0_51
.LBB0_50:                               //  %do.body125
	sub x11, x0, x11
.LBB0_51:                               //  %do.body125
	xor x10, x18, x10
	sw x11, 0 ( fp )
	jal x0, .LBB0_52
.LBB0_7:                                //  %if.end19
	bltu x0, x10, .LBB0_10
.LBB0_8:                                //  %if.then21
	add x15, x0, -126
	sll x10, x9, 8&31
	bge x0, x10, .LBB0_11
.LBB0_9:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x15, x15, -1
	sll x10, x10, 1&31
	blt x0, x10, .LBB0_9
.LBB0_11:                               //  %if.end27
	add x10, x0, -126
	srl x12, x16, 23&31
	bltu x0, x12, .LBB0_15
.LBB0_12:                               //  %if.then29
	sll x13, x11, 8&31
	mv x12, x10
	bge x0, x13, .LBB0_16
.LBB0_13:                               //  %for.body33.preheader
	add x12, x0, -126
.LBB0_14:                               //  %for.body33
                                        //  =>This Inner Loop Header: Depth=1
	add x12, x12, -1
	sll x13, x13, 1&31
	blt x0, x13, .LBB0_14
	jal x0, .LBB0_16
.LBB0_10:                               //  %if.else24
	add x15, x10, -127
	add x10, x0, -126
	srl x12, x16, 23&31
	beq x0, x12, .LBB0_12
.LBB0_15:                               //  %if.else38
	add x12, x12, -127
.LBB0_16:                               //  %if.end41
	lui x13, %hi( 8388607 )
	add x14, x13, %lo( 8388607 )
	lui x13, (8388608>>12)&1048575
	add x5, x0, -127
	blt x5, x12, .LBB0_17
.LBB0_18:                               //  %if.end41
	sub x17, x10, x12
	sll x17, x16, x17
	bge x5, x15, .LBB0_21
.LBB0_20:
	and x16, x14, x9
	or x16, x13, x16
	sub x6, x15, x12
	sub x5, x16, x17
	beq x0, x6, .LBB0_23
.LBB0_24:                               //  %while.body.preheader
	sub x28, x12, x15
	mv x15, x0
	mv x6, x15
	mv x7, x28
	bge x5, x15, .LBB0_26
.LBB0_27:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	xor x5, x5, -1
	slt x5, x5, x0
	or x6, x5, x6
	sll x16, x16, 1&31
	sub x5, x16, x17
	sll x6, x6, 1&31
	add x28, x7, 1
	bltu x28, x7, .LBB0_28
.LBB0_25:                               //  %while.body
                                        //    in Loop: Header=BB0_27 Depth=1
	mv x7, x28
	blt x5, x15, .LBB0_27
.LBB0_26:                               //  %while.body
	mv x16, x5
	jal x0, .LBB0_27
.LBB0_17:
	and x16, x14, x11
	or x17, x13, x16
	blt x5, x15, .LBB0_20
.LBB0_21:                               //  %if.end41
	sub x16, x10, x15
	sll x16, x18, x16
	sub x6, x15, x12
	sub x5, x16, x17
	bltu x0, x6, .LBB0_24
.LBB0_23:
	mv x6, x0
.LBB0_28:                               //  %while.end
	add x17, x0, -1
	mv x15, x5
	blt x17, x5, .LBB0_30
.LBB0_29:                               //  %while.end
	mv x15, x16
.LBB0_30:                               //  %while.end
	slt x16, x5, x0
	or x16, x6, x16
	xor x24, x16, 1
	beq x0, x15, .LBB0_35
.LBB0_31:                               //  %while.cond78.preheader
	blt x14, x15, .LBB0_33
.LBB0_32:                               //  %while.body80
                                        //  =>This Inner Loop Header: Depth=1
	add x12, x12, -1
	sll x15, x15, 1&31
	blt x15, x13, .LBB0_32
.LBB0_33:                               //  %while.end83
	slti x13, x12, -126
	bltu x0, x13, .LBB0_39
.LBB0_34:                               //  %if.then85
	sll x10, x12, 23&31
	lui x12, (1065353216>>12)&1048575
	add x10, x12, x10
	lui x12, %hi( -8388608 )
	add x12, x12, %lo( -8388608 )
	add x12, x12, x15
	or x18, x10, x12
	jal x0, .LBB0_40
.LBB0_35:                               //  %if.then72
	mv x10, x0
	beq x22, x10, .LBB0_37
.LBB0_36:                               //  %if.then72
	sub x24, x0, x24
.LBB0_37:                               //  %if.then72
	sw x24, 0 ( fp )
.LBB0_38:                               //  %cleanup
	srl x10, x9, 29&31
	lui x11, %hi( Zero )
	and x10, x10, 4
	add x11, x11, %lo( Zero )
	add x10, x10, x11
	lw x10, 0 ( x10 )
.LBB0_52:                               //  %cleanup
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x24, 12 ( sp )               //  4-byte Folded Reload
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
.LBB0_39:                               //  %if.else89
	sub x10, x10, x12
	srl x18, x15, x10
	jal x0, .LBB0_40
.Lfunc_end0:
	.size	remquof, .Lfunc_end0-remquof
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
