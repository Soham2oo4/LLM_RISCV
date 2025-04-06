	.text
	.file	"wf_tgamma.c"
	.globl	tgammaf                 //  -- Begin function tgammaf
	.type	tgammaf,@function
tgammaf:                                //  @tgammaf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	mv x11, x0
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv x9, x10
	jal __ltsf2
	mv x19, x10
	mv x10, x9
	jal __ieee754_tgammaf
	mv fp, x10
	mv x10, x9
	jal __extendsfdf2
	mv x9, x10
	mv x18, x11
	bge x19, x0, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	mv x10, x9
	mv x11, x18
	jal floor
	mv x12, x9
	mv x13, x18
	jal __eqdf2
	bltu x0, x10, .LBB0_3
.LBB0_2:
	add x9, x0, 33
	jal x0, .LBB0_5
.LBB0_3:                                //  %if.else
	mv x10, x9
	mv x11, x18
	jal finite
	beq x0, x10, .LBB0_6
.LBB0_4:
	add x9, x0, 34
.LBB0_5:                                //  %if.end12.sink.split
	jal __errno
	sw x9, 0 ( x10 )
.LBB0_6:                                //  %if.end12
	mv x10, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	tgammaf, .Lfunc_end0-tgammaf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
