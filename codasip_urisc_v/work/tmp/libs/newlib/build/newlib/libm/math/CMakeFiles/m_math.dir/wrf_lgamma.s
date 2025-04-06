	.text
	.file	"wrf_lgamma.c"
	.globl	lgammaf_r               //  -- Begin function lgammaf_r
	.type	lgammaf_r,@function
lgammaf_r:                              //  @lgammaf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv x9, x10
	jal __ieee754_lgammaf_r
	mv fp, x10
	jal finitef
	bltu x0, x10, .LBB0_7
.LBB0_1:                                //  %land.lhs.true
	mv x10, x9
	jal finitef
	beq x0, x10, .LBB0_7
.LBB0_2:                                //  %if.then
	mv x11, x0
	mv x10, x9
	jal __lesf2
	mv x20, x10
	mv x10, x9
	jal floorf
	mv x19, x10
	jal __errno
	mv x18, x10
	blt x0, x20, .LBB0_5
.LBB0_3:                                //  %if.then
	mv x10, x19
	mv x11, x9
	jal __nesf2
	bltu x0, x10, .LBB0_5
.LBB0_4:                                //  %if.then7
	add x10, x0, 33
	jal x0, .LBB0_6
.LBB0_5:                                //  %if.else
	add x10, x0, 34
.LBB0_6:                                //  %if.end10
	sw x10, 0 ( x18 )
.LBB0_7:                                //  %if.end10
	mv x10, fp
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	lgammaf_r, .Lfunc_end0-lgammaf_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
