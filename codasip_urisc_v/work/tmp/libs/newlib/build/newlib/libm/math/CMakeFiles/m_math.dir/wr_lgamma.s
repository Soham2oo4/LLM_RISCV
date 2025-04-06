	.text
	.file	"wr_lgamma.c"
	.globl	lgamma_r                //  -- Begin function lgamma_r
	.type	lgamma_r,@function
lgamma_r:                               //  @lgamma_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv x18, x11
	mv x19, x10
	jal __ieee754_lgamma_r
	mv fp, x10
	mv x9, x11
	jal finite
	bltu x0, x10, .LBB0_7
.LBB0_1:                                //  %land.lhs.true
	mv x10, x19
	mv x11, x18
	jal finite
	beq x0, x10, .LBB0_7
.LBB0_2:                                //  %if.then
	mv x12, x0
	mv x10, x19
	mv x11, x18
	mv x13, x12
	jal __ledf2
	mv x23, x10
	mv x10, x19
	mv x11, x18
	jal floor
	mv x21, x10
	mv x22, x11
	jal __errno
	mv x20, x10
	blt x0, x23, .LBB0_5
.LBB0_3:                                //  %if.then
	mv x10, x21
	mv x11, x22
	mv x12, x19
	mv x13, x18
	jal __nedf2
	bltu x0, x10, .LBB0_5
.LBB0_4:                                //  %if.then7
	add x10, x0, 33
	jal x0, .LBB0_6
.LBB0_5:                                //  %if.else
	add x10, x0, 34
.LBB0_6:                                //  %if.end10
	sw x10, 0 ( x20 )
.LBB0_7:                                //  %if.end10
	mv x10, fp
	mv x11, x9
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
.Lfunc_end0:
	.size	lgamma_r, .Lfunc_end0-lgamma_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
