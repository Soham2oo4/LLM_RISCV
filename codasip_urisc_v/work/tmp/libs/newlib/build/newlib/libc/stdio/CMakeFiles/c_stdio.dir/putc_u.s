	.text
	.file	"putc_u.c"
	.globl	_putc_unlocked_r        //  -- Begin function _putc_unlocked_r
	.type	_putc_unlocked_r,@function
_putc_unlocked_r:                       //  @_putc_unlocked_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lw x14, 8 ( x12 )
	mv x13, x10
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x10, x14, -1
	sw x10, 8 ( x12 )
	and x10, x11, 255
	blt x0, x14, .LBB0_3
.LBB0_1:                                //  %lor.lhs.false.i
	xor x15, x10, 10
	beq x0, x15, .LBB0_4
.LBB0_2:                                //  %lor.lhs.false.i
	lw x15, 24 ( x12 )
	bge x15, x14, .LBB0_4
.LBB0_3:                                //  %if.then.i
	lw x13, 0 ( x12 )
	add x14, x13, 1
	sw x14, 0 ( x12 )
	sb x11, 0 ( x13 )
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_4:                                //  %if.else.i
	mv x10, x13
	jal __swbuf_r
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_putc_unlocked_r, .Lfunc_end0-_putc_unlocked_r
	.cfi_endproc
                                        //  -- End function
	.globl	putc_unlocked           //  -- Begin function putc_unlocked
	.type	putc_unlocked,@function
putc_unlocked:                          //  @putc_unlocked
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x12, x11
	lw x14, 8 ( x12 )
	mv x11, x10
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x10, x14, -1
	sw x10, 8 ( x12 )
	bge x0, x14, .LBB1_2
.LBB1_1:                                //  %entry.if.then_crit_edge.i
	and x10, x11, 255
	jal x0, .LBB1_4
.LBB1_2:                                //  %lor.lhs.false.i
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x13, 0 ( x10 )
	and x10, x11, 255
	xor x15, x10, 10
	beq x0, x15, .LBB1_5
.LBB1_3:                                //  %lor.lhs.false.i
	lw x15, 24 ( x12 )
	bge x15, x14, .LBB1_5
.LBB1_4:                                //  %if.then.i
	lw x13, 0 ( x12 )
	add x14, x13, 1
	sw x14, 0 ( x12 )
	sb x11, 0 ( x13 )
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_5:                                //  %if.else.i
	mv x10, x13
	jal __swbuf_r
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	putc_unlocked, .Lfunc_end1-putc_unlocked
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
