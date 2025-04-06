	.text
	.file	"iswgraph_l.c"
	.globl	iswgraph_l              //  -- Begin function iswgraph_l
	.type	iswgraph_l,@function
iswgraph_l:                             //  @iswgraph_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv fp, x11
	mv x9, x10
	jal iswprint_l
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %land.rhs
	mv x10, x9
	mv x11, fp
	jal iswspace_l
	seqz x10, x10
	jal x0, .LBB0_3
.LBB0_1:
	mv x10, x0
.LBB0_3:                                //  %land.end
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	iswgraph_l, .Lfunc_end0-iswgraph_l
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
