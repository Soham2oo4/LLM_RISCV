	.text
	.file	"getsubopt.c"
	.globl	getsubopt               //  -- Begin function getsubopt
	.type	getsubopt,@function
getsubopt:                              //  @getsubopt
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	lui x13, %hi( suboptarg )
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9, x13, %lo( suboptarg )
	add fp, x0, -1
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x0, 0 ( x12 )
	sw x0, 0 ( x9 )
	beq x0, x10, .LBB0_37
.LBB0_1:                                //  %lor.lhs.false
	lw x14, 0 ( x10 )
	beq x0, x14, .LBB0_37
.LBB0_2:                                //  %for.cond.preheader
	add x13, x0, 31
	lbu x15, 0 ( x14 )
	blt x13, x15, .LBB0_7
.LBB0_4:                                //  %for.cond
	xor x16, x15, 9
	bltu x0, x16, .LBB0_5
.LBB0_9:                                //  %for.inc
	add x14, x14, 1
	lbu x15, 0 ( x14 )
	bge x13, x15, .LBB0_4
.LBB0_7:                                //  %for.cond
	xor x16, x15, 44
	beq x0, x16, .LBB0_9
.LBB0_8:                                //  %for.cond
	xor x15, x15, 32
	beq x0, x15, .LBB0_9
	jal x0, .LBB0_10
.LBB0_5:                                //  %for.cond
	bltu x0, x15, .LBB0_10
.LBB0_6:                                //  %if.then13
	sw x14, 0 ( x10 )
	jal x0, .LBB0_37
.LBB0_10:                               //  %if.end14
	add x15, x14, 1
	sw x14, 0 ( x9 )
.LBB0_11:                               //  %for.cond15
                                        //  =>This Inner Loop Header: Depth=1
	add x14, x15, 1
	lbu x15, 0 ( x15 )
	bge x13, x15, .LBB0_12
.LBB0_15:                               //  %for.cond15
                                        //    in Loop: Header=BB0_11 Depth=1
	xor x16, x15, 32
	beq x0, x16, .LBB0_14
.LBB0_16:                               //  %for.cond15
                                        //    in Loop: Header=BB0_11 Depth=1
	xor x16, x15, 44
	beq x0, x16, .LBB0_14
.LBB0_17:                               //  %for.cond15
                                        //    in Loop: Header=BB0_11 Depth=1
	xor x16, x15, 61
	mv x15, x14
	bltu x0, x16, .LBB0_11
	jal x0, .LBB0_18
.LBB0_12:                               //  %for.cond15
                                        //    in Loop: Header=BB0_11 Depth=1
	beq x0, x15, .LBB0_31
.LBB0_13:                               //  %for.cond15
                                        //    in Loop: Header=BB0_11 Depth=1
	xor x16, x15, 9
	mv x15, x14
	bltu x0, x16, .LBB0_11
.LBB0_14:                               //  %if.else
	add x12, x14, -1
	sb x0, 0 ( x12 )
	lbu x12, 0 ( x14 )
	xor x13, x12, 9
	bltu x0, x13, .LBB0_28
.LBB0_30:                               //  %for.inc88
                                        //  =>This Inner Loop Header: Depth=1
	add x14, x14, 1
	lbu x12, 0 ( x14 )
	xor x13, x12, 9
	beq x0, x13, .LBB0_30
.LBB0_28:                               //  %for.cond70
	xor x13, x12, 44
	beq x0, x13, .LBB0_30
.LBB0_29:                               //  %for.cond70
	xor x12, x12, 32
	beq x0, x12, .LBB0_30
.LBB0_32:                               //  %if.end91
	sw x14, 0 ( x10 )
	lw x12, 0 ( x11 )
	beq x0, x12, .LBB0_37
.LBB0_33:                               //  %for.body94.preheader
	mv x18, x0
	add x19, x11, 4
.LBB0_34:                               //  %for.body94
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x9 )
	mv x11, x12
	jal strcmp
	beq x0, x10, .LBB0_35
.LBB0_36:                               //  %for.inc98
                                        //    in Loop: Header=BB0_34 Depth=1
	lw x12, 0 ( x19 )
	add x10, x19, 4
	add x18, x18, 1
	mv x19, x10
	bltu x0, x12, .LBB0_34
	jal x0, .LBB0_37
.LBB0_35:
	mv fp, x18
.LBB0_37:                               //  %cleanup
	mv x10, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_18:                               //  %if.then42
	sb x0, -1 ( x14 )
	sw x14, 0 ( x12 )
	mv x12, x14
	lbu x14, 0 ( x12 )
	blt x13, x14, .LBB0_23
	jal x0, .LBB0_20
.LBB0_25:                               //  %for.inc61
	add x12, x12, 1
	lbu x14, 0 ( x12 )
	blt x13, x14, .LBB0_23
.LBB0_20:                               //  %for.cond44
	beq x0, x14, .LBB0_26
.LBB0_21:                               //  %for.cond44
	xor x14, x14, 9
	bltu x0, x14, .LBB0_25
	jal x0, .LBB0_22
.LBB0_23:                               //  %for.cond44
	xor x15, x14, 32
	beq x0, x15, .LBB0_22
.LBB0_24:                               //  %for.cond44
	xor x14, x14, 44
	bltu x0, x14, .LBB0_25
.LBB0_22:                               //  %if.then65
	add x14, x12, 1
	sb x0, 0 ( x12 )
	lbu x12, 0 ( x14 )
	xor x13, x12, 9
	bltu x0, x13, .LBB0_28
	jal x0, .LBB0_30
.LBB0_31:                               //  %if.end91.loopexit1
	add x14, x14, -1
	sw x14, 0 ( x10 )
	lw x12, 0 ( x11 )
	bltu x0, x12, .LBB0_33
	jal x0, .LBB0_37
.LBB0_26:                               //  %for.cond70.preheader.loopexit
	mv x14, x12
	lbu x12, 0 ( x14 )
	xor x13, x12, 9
	bltu x0, x13, .LBB0_28
	jal x0, .LBB0_30
.Lfunc_end0:
	.size	getsubopt, .Lfunc_end0-getsubopt
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	suboptarg,@object       //  @suboptarg
	.comm	suboptarg,4,4

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
