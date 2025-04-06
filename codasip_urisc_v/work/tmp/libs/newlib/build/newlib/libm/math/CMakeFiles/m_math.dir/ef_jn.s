	.text
	.file	"ef_jn.c"
	.globl	__ieee754_jnf           //  -- Begin function __ieee754_jnf
	.type	__ieee754_jnf,@function
__ieee754_jnf:                          //  @__ieee754_jnf
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
	lui x10, %hi( 2147483647 )
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x11
	add x10, x10, %lo( 2147483647 )
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	and x19, x10, x18
	lui x10, %hi( 2139095041 )
	add x10, x10, %lo( 2139095041 )
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
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
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	bltu x19, x10, .LBB0_2
.LBB0_1:                                //  %if.then
	mv x10, x18
	mv x11, x18
	jal __addsf3
	jal x0, .LBB0_43
.LBB0_2:                                //  %if.end
	blt x9, x0, .LBB0_4
.LBB0_3:
	mv x11, x18
	mv x10, x18
	xor x12, x9, 1
	beq x0, x12, .LBB0_8
.LBB0_6:                                //  %if.end4
	bltu x0, x9, .LBB0_9
.LBB0_7:                                //  %if.then6
	jal __ieee754_j0f
	jal x0, .LBB0_43
.LBB0_4:                                //  %if.then2
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x11, x10, x18
	xor x10, x10, x18
	sub x9, x0, x9
	xor x12, x9, 1
	bltu x0, x12, .LBB0_6
.LBB0_8:                                //  %if.then9
	jal __ieee754_j1f
	jal x0, .LBB0_43
.LBB0_9:                                //  %if.end11
	slt x11, x11, x0
	and x26, x9, x11
	jal fabsf
	mv fp, x10
	mv x27, x0
	lui x21, %hi( -2147483648 )
	bge x18, x0, .LBB0_12
.LBB0_10:                               //  %if.end11
	add x11, x21, %lo( -2147483648 )
	mv x10, x27
	beq x18, x11, .LBB0_41
.LBB0_11:                               //  %if.end11
	lui x10, %hi( -8388608 )
	add x11, x10, %lo( -8388608 )
	mv x10, x27
	beq x18, x11, .LBB0_41
	jal x0, .LBB0_15
.LBB0_12:                               //  %if.end11
	mv x10, x27
	beq x0, x18, .LBB0_41
.LBB0_13:                               //  %if.end11
	lui x11, (2139095040>>12)&1048575
	mv x10, x27
	bne x18, x11, .LBB0_15
.LBB0_41:                               //  %if.end126
	beq x26, x27, .LBB0_43
.LBB0_42:
	add x11, x21, %lo( -2147483648 )
	xor x10, x11, x10
.LBB0_43:                               //  %cleanup
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
.LBB0_15:                               //  %if.else
	mv x10, x9
	jal __floatsisf
	mv x18, x10
	mv x10, fp
	mv x11, x18
	jal __gesf2
	bge x10, x0, .LBB0_16
.LBB0_19:                               //  %if.else28
	srl x10, x19, 23&31
	add x11, x0, 96
	bltu x11, x10, .LBB0_26
.LBB0_20:                               //  %if.then31
	add x11, x0, 33
	mv x10, x27
	blt x11, x9, .LBB0_41
.LBB0_21:                               //  %if.else35
	lui x11, (1056964608>>12)&1048575
	mv x10, fp
	jal __mulsf3
	mv fp, x10
	lui x18, (1065353216>>12)&1048575
	slti x10, x9, 2
	beq x0, x10, .LBB0_23
.LBB0_22:
	mv x19, fp
	mv x10, x19
	mv x11, x18
	jal __divsf3
	bne x26, x27, .LBB0_42
	jal x0, .LBB0_43
.LBB0_16:                               //  %if.then20
	mv x10, fp
	jal __ieee754_j0f
	mv x18, x10
	mv x10, fp
	jal __ieee754_j1f
	slti x11, x9, 2
	bltu x0, x11, .LBB0_41
.LBB0_17:                               //  %for.body.preheader
	add x19, x0, 2
	add x20, x9, -1
.LBB0_18:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x9, x10
	mv x10, x19
	jal __floatsisf
	mv x11, fp
	jal __divsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	mv x11, x18
	jal __subsf3
	add x19, x19, 2
	add x20, x20, -1
	mv x18, x9
	bltu x0, x20, .LBB0_18
	jal x0, .LBB0_41
.LBB0_26:                               //  %if.else49
	sll x21, x9, 1&31
	mv x10, x21
	sw x18, 8 ( sp )                //  4-byte Folded Spill
	jal __floatsisf
	mv x11, fp
	jal __divsf3
	mv x18, x10
	lui x10, (1073741824>>12)&1048575
	mv x11, fp
	jal __divsf3
	mv x22, x10
	mv x10, x18
	mv x11, x22
	jal __addsf3
	mv x19, x10
	mv x10, x18
	mv x11, x19
	jal __mulsf3
	lui x11, %hi( -1082130432 )
	add x11, x11, %lo( -1082130432 )
	jal __addsf3
	mv x24, x10
	lui x10, %hi( 1315859240 )
	add x23, x10, %lo( 1315859240 )
	mv x10, x24
	mv x11, x23
	jal __ltsf2
	seqz x20, x0
	bge x10, x0, .LBB0_28
.LBB0_27:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x22
	mv x11, x19
	mv x25, x24
	jal __addsf3
	mv x11, x25
	mv x19, x10
	jal __mulsf3
	mv x11, x18
	jal __subsf3
	mv x11, x23
	mv x24, x10
	jal __ltsf2
	add x20, x20, 1
	mv x18, x25
	blt x10, x0, .LBB0_27
.LBB0_28:                               //  %while.end
	add x10, x9, x20
	mv x18, x0
	sll x23, x10, 1&31
	lui x19, (1065353216>>12)&1048575
.LBB0_29:                               //  %for.body69
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x23
	jal __floatsisf
	mv x11, fp
	jal __divsf3
	mv x11, x18
	jal __subsf3
	mv x11, x10
	mv x10, x19
	jal __divsf3
	mv x18, x10
	add x23, x23, -2
	bge x23, x21, .LBB0_29
.LBB0_30:                               //  %for.end76
	lw x20, 8 ( sp )                //  4-byte Folded Reload
	mv x10, x22
	mv x11, x20
	jal __mulsf3
	jal fabsf
	jal __ieee754_logf
	mv x11, x20
	jal __mulsf3
	lui x11, %hi( 1118925184 )
	add x11, x11, %lo( 1118925184 )
	jal __ltsf2
	add x24, x9, -1
	mv x20, x10
	sll x10, x24, 1&31
	jal __floatsisf
	mv x21, x10
	bge x20, x0, .LBB0_31
.LBB0_35:                               //  %for.cond89.preheader
	bge x0, x24, .LBB0_40
.LBB0_36:                               //  %for.body92.preheader
	lui x10, %hi( -1073741824 )
	lui x19, (1065353216>>12)&1048575
	add x9, x10, %lo( -1073741824 )
	mv x20, x18
.LBB0_37:                               //  %for.body92
                                        //  =>This Inner Loop Header: Depth=1
	mv x22, x19
	mv x10, x22
	mv x11, x21
	jal __mulsf3
	mv x11, fp
	jal __divsf3
	mv x11, x20
	jal __subsf3
	mv x19, x10
	mv x10, x21
	mv x11, x9
	jal __addsf3
	mv x21, x10
	add x24, x24, -1
	mv x20, x22
	blt x0, x24, .LBB0_37
	jal x0, .LBB0_40
.LBB0_31:                               //  %for.cond103.preheader
	bge x0, x24, .LBB0_40
.LBB0_32:                               //  %for.body106.preheader
	lui x10, %hi( -1073741824 )
	lui x25, (1065353216>>12)&1048575
	add x9, x10, %lo( -1073741824 )
	lui x10, %hi( 1343554297 )
	add x20, x10, %lo( 1343554297 )
	mv x19, x25
	mv x22, x18
	jal x0, .LBB0_33
.LBB0_38:                               //  %if.then113
                                        //    in Loop: Header=BB0_33 Depth=1
	mv x10, x19
	mv x11, x21
	jal __divsf3
	mv x22, x10
	mv x10, x18
	mv x11, x21
	jal __divsf3
	mv x18, x10
	mv x19, x25
	add x24, x24, -1
	mv x21, x23
	bge x0, x24, .LBB0_40
.LBB0_33:                               //  %for.body106
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x21
	mv x11, x9
	jal __addsf3
	mv x23, x10
	mv x10, x19
	mv x11, x21
	jal __mulsf3
	mv x11, fp
	jal __divsf3
	mv x11, x22
	jal __subsf3
	mv x11, x20
	mv x21, x10
	jal __gtsf2
	blt x0, x10, .LBB0_38
.LBB0_34:                               //    in Loop: Header=BB0_33 Depth=1
	mv x22, x19
	mv x19, x21
	add x24, x24, -1
	mv x21, x23
	blt x0, x24, .LBB0_33
.LBB0_40:                               //  %if.end120
	mv x10, fp
	jal __ieee754_j0f
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x19
	jal __divsf3
	lui x21, %hi( -2147483648 )
	bne x26, x27, .LBB0_42
	jal x0, .LBB0_43
.LBB0_23:                               //  %for.body40.preheader
	seqz x20, x0
	mv x19, fp
.LBB0_24:                               //  %for.body40
                                        //  =>This Inner Loop Header: Depth=1
	add x20, x20, 1
	mv x10, x20
	jal __floatsisf
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x18, x10
	mv x10, fp
	mv x11, x19
	jal __mulsf3
	mv x19, x10
	bne x9, x20, .LBB0_24
.LBB0_25:                               //  %for.end46
	mv x10, x19
	mv x11, x18
	jal __divsf3
	bne x26, x27, .LBB0_42
	jal x0, .LBB0_43
.Lfunc_end0:
	.size	__ieee754_jnf, .Lfunc_end0-__ieee754_jnf
	.cfi_endproc
                                        //  -- End function
	.globl	__ieee754_ynf           //  -- Begin function __ieee754_ynf
	.type	__ieee754_ynf,@function
__ieee754_ynf:                          //  @__ieee754_ynf
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
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv fp, x11
	lui x11, %hi( 2139095041 )
	add x10, x10, %lo( 2147483647 )
	and x10, x10, fp
	add x11, x11, %lo( 2139095041 )
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	bltu x10, x11, .LBB1_2
.LBB1_1:                                //  %if.then
	mv x10, fp
	mv x11, fp
	jal __addsf3
	jal x0, .LBB1_22
.LBB1_2:                                //  %if.end
	lui x20, %hi( -8388608 )
	beq x0, x10, .LBB1_3
.LBB1_4:                                //  %if.end3
	blt fp, x0, .LBB1_5
.LBB1_6:                                //  %if.end6
	blt x9, x0, .LBB1_8
.LBB1_7:
	seqz x18, x0
	xor x11, x9, 1
	beq x0, x11, .LBB1_12
.LBB1_10:                               //  %if.end11
	bltu x0, x9, .LBB1_13
.LBB1_11:                               //  %if.then13
	mv x10, fp
	jal __ieee754_y0f
	jal x0, .LBB1_22
.LBB1_3:
	add x10, x20, %lo( -8388608 )
	jal x0, .LBB1_22
.LBB1_5:
	lui x10, (2143289344>>12)&1048575
	jal x0, .LBB1_22
.LBB1_8:                                //  %if.then8
	sub x9, x0, x9
	sll x11, x9, 1&31
	and x11, x11, 2
	seqz x12, x0
	sub x18, x12, x11
	xor x11, x9, 1
	bltu x0, x11, .LBB1_10
.LBB1_12:                               //  %if.then16
	mv x10, x18
	jal __floatsisf
	mv x9, x10
	mv x10, fp
	jal __ieee754_y1f
	mv x11, x9
	jal __mulsf3
	jal x0, .LBB1_22
.LBB1_13:                               //  %if.end18
	lui x11, (2139095040>>12)&1048575
	bne x10, x11, .LBB1_15
.LBB1_14:
	mv x10, x0
	jal x0, .LBB1_22
.LBB1_15:                               //  %if.end22
	mv x10, fp
	jal __ieee754_y0f
	mv x19, x10
	mv x10, fp
	jal __ieee754_y1f
	slti x11, x9, 2
	bltu x0, x11, .LBB1_20
.LBB1_16:                               //  %if.end22
	add x22, x20, %lo( -8388608 )
	beq x10, x22, .LBB1_20
.LBB1_17:                               //  %for.body.preheader
	add x20, x0, 2
	mv x23, x20
.LBB1_18:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x21, x10
	mv x10, x20
	jal __floatsisf
	mv x11, fp
	jal __divsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	mv x11, x19
	jal __subsf3
	bge x23, x9, .LBB1_20
.LBB1_19:                               //  %for.body
                                        //    in Loop: Header=BB1_18 Depth=1
	add x20, x20, 2
	add x23, x23, 1
	mv x19, x21
	bne x10, x22, .LBB1_18
.LBB1_20:                               //  %for.end
	mv x11, x0
	blt x11, x18, .LBB1_22
.LBB1_21:                               //  %for.end
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x10, x11, x10
.LBB1_22:                               //  %cleanup
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
.Lfunc_end1:
	.size	__ieee754_ynf, .Lfunc_end1-__ieee754_ynf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
