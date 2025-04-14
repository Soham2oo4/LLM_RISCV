	.text
	.file	"tzcalc_limits.c"
	.globl	__tzcalc_limits         //  -- Begin function __tzcalc_limits
	.type	__tzcalc_limits,@function
__tzcalc_limits:                        //  @__tzcalc_limits
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
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
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -48
	mv x18, x10
	jal __gettzinfo
	mv fp, x10
	slti x10, x18, 1970
	beq x0, x10, .LBB0_2
.LBB0_1:
	mv x10, x0
	jal x0, .LBB0_40
.LBB0_2:                                //  %if.end
	add x11, x0, 365
	mv x10, x18
	jal __mulsi3
	add x11, x18, -1969
	sra x12, x11, 31&31
	srl x12, x12, 30&31
	add x11, x12, x11
	sra x11, x11, 2&31
	add x9, x11, x10
	add x10, x18, -1901
	add x11, x0, -100
	jal __divsi3
	add x21, x10, x9
	add x11, x0, 100
	mv x10, x18
	jal __umodsi3
	mv x19, x10
	and x24, x18, 3
	snez x10, x19
	seqz x11, x24
	add x20, x0, 400
	and x22, x11, x10
	mv x10, x18
	mv x11, x20
	jal __umodsi3
	seqz x9, x10
	add x10, x18, -1601
	mv x11, x20
	or x22, x22, x9
	sw x18, 4 ( fp )
	jal __divsi3
	lui x11, %hi( -719051 )
	add x10, x10, x21
	add x11, x11, %lo( -719051 )
	add x23, x11, x10
	lui x11, %hi( -719050 )
	add x11, x11, %lo( -719050 )
	add x21, x11, x10
	lbu x10, 8 ( fp )
	lui x20, %hi( 86400 )
	bltu x0, x24, .LBB0_7
.LBB0_3:                                //  %if.end
	beq x0, x19, .LBB0_7
.LBB0_4:                                //  %for.body.preheader
	xor x11, x10, 68
	beq x0, x11, .LBB0_22
.LBB0_5:                                //  %for.body.preheader
	xor x10, x10, 74
	bltu x0, x10, .LBB0_23
.LBB0_6:                                //  %if.then14
	lw x10, 20 ( fp )
	add x11, x0, 59
	slt x11, x11, x10
	and x11, x11, x22
	add x10, x10, x23
	add x10, x11, x10
	jal x0, .LBB0_31
.LBB0_7:                                //  %for.body.us.preheader
	xor x11, x10, 74
	beq x0, x11, .LBB0_10
.LBB0_8:                                //  %for.body.us.preheader
	xor x10, x10, 68
	bltu x0, x10, .LBB0_11
.LBB0_9:                                //  %if.then38.us
	lw x10, 20 ( fp )
	add x10, x21, x10
	jal x0, .LBB0_19
.LBB0_22:                               //  %if.then38
	lw x10, 20 ( fp )
	add x10, x21, x10
	jal x0, .LBB0_31
.LBB0_23:                               //  %lor.end
	lw x10, 12 ( fp )
	mv x25, x0
	lui x19, %hi( __month_lengths )
	mv x24, x25
	slti x11, x10, 2
	mv x18, x21
	bltu x0, x11, .LBB0_26
.LBB0_24:                               //  %for.body60.preheader
	add x11, x19, %lo( __month_lengths )
	mv x24, x0
	add x11, x11, 48
	mv x18, x21
.LBB0_25:                               //  %for.body60
                                        //  =>This Inner Loop Header: Depth=1
	lw x12, 0 ( x11 )
	add x11, x11, 4
	add x18, x18, x12
	add x12, x24, 2
	add x24, x24, 1
	blt x12, x10, .LBB0_25
.LBB0_26:                               //  %for.end
	add x9, x0, 7
	add x10, x18, 4
	mv x11, x9
	jal __modsi3
	lw x11, 20 ( fp )
	sub x26, x11, x10
	bge x26, x25, .LBB0_28
.LBB0_27:
	add x26, x26, 7
.LBB0_28:                               //  %for.end
	lw x10, 16 ( fp )
	mv x11, x9
	jal __mulsi3
	sll x11, x24, 2&31
	add x12, x19, %lo( __month_lengths )
	add x11, x11, x12
	lw x11, 48 ( x11 )
	add x10, x10, x26
.LBB0_29:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x10, -7
	bge x10, x11, .LBB0_29
.LBB0_30:                               //  %while.end
	add x10, x10, x18
.LBB0_31:                               //  %if.end87
	mv x9, x0
	sra x11, x10, 31&31
	add x12, x20, %lo( 86400 )
	mv x13, x9
	jal __muldi3
	lw x12, 24 ( fp )
	sra x13, x12, 31&31
	add x12, x12, x10
	add x11, x13, x11
	sltu x10, x12, x10
	add x10, x10, x11
	lw x11, 36 ( fp )
	sra x13, x11, 31&31
	add x24, x11, x12
	add x10, x13, x10
	sltu x11, x24, x12
	add x25, x11, x10
	lbu x10, 40 ( fp )
	sw x25, 32 ( fp )
	sw x24, 28 ( fp )
	xor x11, x10, 68
	beq x0, x11, .LBB0_35
.LBB0_32:                               //  %if.end87
	xor x10, x10, 74
	beq x0, x10, .LBB0_21
.LBB0_33:                               //  %lor.end.1
	lw x10, 44 ( fp )
	slti x11, x10, 2
	bltu x0, x11, .LBB0_34
.LBB0_50:                               //  %for.body60.1.preheader
	lui x11, %hi( __month_lengths )
	add x11, x11, %lo( __month_lengths )
	mv x19, x0
	add x11, x11, 48
.LBB0_51:                               //  %for.body60.1
                                        //  =>This Inner Loop Header: Depth=1
	lw x12, 0 ( x11 )
	add x11, x11, 4
	add x21, x21, x12
	add x12, x19, 2
	add x19, x19, 1
	blt x12, x10, .LBB0_51
	jal x0, .LBB0_52
.LBB0_10:                               //  %if.then14.us
	lw x10, 20 ( fp )
	add x11, x0, 59
	slt x11, x11, x10
	and x11, x11, x22
	add x10, x10, x23
	add x10, x11, x10
	jal x0, .LBB0_19
.LBB0_11:                               //  %lor.end.us
	lw x18, 12 ( fp )
	mv x25, x0
	mv x24, x25
	mv x19, x21
	slti x10, x18, 2
	bltu x0, x10, .LBB0_14
.LBB0_12:                               //  %for.body60.us.preheader
	add x11, x0, 48
	mv x10, x9
	jal __mulsi3
	lui x11, %hi( __month_lengths )
	add x11, x11, %lo( __month_lengths )
	add x10, x10, x11
	mv x24, x0
	mv x19, x21
.LBB0_13:                               //  %for.body60.us
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x10 )
	add x10, x10, 4
	add x19, x19, x11
	add x11, x24, 2
	add x24, x24, 1
	blt x11, x18, .LBB0_13
.LBB0_14:                               //  %for.end.us
	add x18, x0, 7
	add x10, x19, 4
	mv x11, x18
	jal __modsi3
	lw x11, 20 ( fp )
	sub x26, x11, x10
	bge x26, x25, .LBB0_16
.LBB0_15:
	add x26, x26, 7
.LBB0_16:                               //  %for.end.us
	lw x10, 16 ( fp )
	mv x11, x18
	jal __mulsi3
	add x18, x10, x26
	add x11, x0, 48
	mv x10, x9
	jal __mulsi3
	lui x11, %hi( __month_lengths )
	add x11, x11, %lo( __month_lengths )
	add x10, x10, x11
	sll x11, x24, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
.LBB0_17:                               //  %while.cond.us
                                        //  =>This Inner Loop Header: Depth=1
	add x18, x18, -7
	bge x18, x10, .LBB0_17
.LBB0_18:                               //  %while.end.us
	add x10, x18, x19
.LBB0_19:                               //  %if.end87.us
	mv x18, x0
	sra x11, x10, 31&31
	add x12, x20, %lo( 86400 )
	mv x13, x18
	jal __muldi3
	lw x12, 24 ( fp )
	sra x13, x12, 31&31
	add x12, x12, x10
	add x11, x13, x11
	sltu x10, x12, x10
	add x10, x10, x11
	lw x11, 36 ( fp )
	sra x13, x11, 31&31
	add x24, x11, x12
	add x10, x13, x10
	sltu x11, x24, x12
	add x25, x11, x10
	lbu x10, 40 ( fp )
	sw x25, 32 ( fp )
	sw x24, 28 ( fp )
	xor x11, x10, 68
	beq x0, x11, .LBB0_35
.LBB0_20:                               //  %if.end87.us
	xor x10, x10, 74
	bltu x0, x10, .LBB0_41
.LBB0_21:                               //  %if.then14.us.1
	lw x10, 52 ( fp )
	add x11, x0, 59
	slt x11, x11, x10
	and x11, x11, x22
	add x10, x10, x23
	add x10, x11, x10
	jal x0, .LBB0_36
.LBB0_35:                               //  %if.then38.us.1
	lw x10, 52 ( fp )
	add x10, x21, x10
	jal x0, .LBB0_36
.LBB0_41:                               //  %lor.end.us.1
	lw x19, 44 ( fp )
	slti x10, x19, 2
	bltu x0, x10, .LBB0_42
.LBB0_43:                               //  %for.body60.us.1.preheader
	add x11, x0, 48
	mv x10, x9
	jal __mulsi3
	lui x11, %hi( __month_lengths )
	add x11, x11, %lo( __month_lengths )
	add x10, x10, x11
	mv x22, x0
.LBB0_44:                               //  %for.body60.us.1
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x10 )
	add x10, x10, 4
	add x21, x21, x11
	add x11, x22, 2
	add x22, x22, 1
	blt x11, x19, .LBB0_44
	jal x0, .LBB0_45
.LBB0_34:
	mv x19, x9
.LBB0_52:                               //  %for.end.1
	add x18, x0, 7
	add x10, x21, 4
	mv x11, x18
	jal __modsi3
	lw x11, 52 ( fp )
	sub x22, x11, x10
	bge x22, x9, .LBB0_54
.LBB0_53:
	add x22, x22, 7
.LBB0_54:                               //  %for.end.1
	lw x10, 48 ( fp )
	mv x11, x18
	jal __mulsi3
	lui x12, %hi( __month_lengths )
	sll x11, x19, 2&31
	add x12, x12, %lo( __month_lengths )
	add x11, x11, x12
	lw x11, 48 ( x11 )
	add x10, x10, x22
.LBB0_55:                               //  %while.cond.1
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x10, -7
	bge x10, x11, .LBB0_55
.LBB0_56:                               //  %while.end.1
	add x10, x10, x21
	jal x0, .LBB0_36
.LBB0_42:
	mv x22, x18
.LBB0_45:                               //  %for.end.us.1
	add x19, x0, 7
	add x10, x21, 4
	mv x11, x19
	jal __modsi3
	lw x11, 52 ( fp )
	sub x23, x11, x10
	bge x23, x18, .LBB0_47
.LBB0_46:
	add x23, x23, 7
.LBB0_47:                               //  %for.end.us.1
	lw x10, 48 ( fp )
	mv x11, x19
	jal __mulsi3
	add x18, x10, x23
	add x11, x0, 48
	mv x10, x9
	jal __mulsi3
	lui x11, %hi( __month_lengths )
	add x11, x11, %lo( __month_lengths )
	add x10, x10, x11
	sll x11, x22, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
.LBB0_48:                               //  %while.cond.us.1
                                        //  =>This Inner Loop Header: Depth=1
	add x18, x18, -7
	bge x18, x10, .LBB0_48
.LBB0_49:                               //  %while.end.us.1
	add x10, x18, x21
.LBB0_36:                               //  %for.end102
	sra x11, x10, 31&31
	add x12, x20, %lo( 86400 )
	mv x13, x0
	jal __muldi3
	lw x12, 56 ( fp )
	sra x13, x12, 31&31
	add x12, x12, x10
	add x11, x13, x11
	sltu x10, x12, x10
	add x10, x10, x11
	lw x11, 68 ( fp )
	sra x13, x11, 31&31
	add x13, x13, x10
	add x10, x11, x12
	sltu x11, x10, x12
	add x11, x11, x13
	beq x25, x11, .LBB0_37
.LBB0_38:                               //  %for.end102
	slt x12, x25, x11
	jal x0, .LBB0_39
.LBB0_37:
	sltu x12, x24, x10
.LBB0_39:                               //  %for.end102
	sw x10, 60 ( fp )
	seqz x10, x0
	sw x11, 64 ( fp )
	sw x12, 0 ( fp )
.LBB0_40:                               //  %cleanup
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x26, 4 ( sp )                //  4-byte Folded Reload
	lw x25, 8 ( sp )                //  4-byte Folded Reload
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
.Lfunc_end0:
	.size	__tzcalc_limits, .Lfunc_end0-__tzcalc_limits
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
