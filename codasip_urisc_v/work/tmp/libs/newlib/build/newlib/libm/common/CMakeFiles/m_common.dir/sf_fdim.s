	.text
	.file	"sf_fdim.c"
	.globl	fdimf                   //  -- Begin function fdimf
	.type	fdimf,@function
fdimf:                                  //  @fdimf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x9, x11
	mv fp, x10
	jal __fpclassifyf
	beq x0, x10, .LBB0_5
.LBB0_1:                                //  %if.end
	mv x10, x9
	jal __fpclassifyf
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end4
	mv x10, fp
	mv x11, x9
	jal __gtsf2
	mv x18, x10
	mv x10, fp
	mv x11, x9
	jal __subsf3
	mv fp, x10
	mv x10, x0
	blt x10, x18, .LBB0_5
.LBB0_4:                                //  %if.end4
	mv fp, x10
	jal x0, .LBB0_5
.LBB0_2:
	mv fp, x9
.LBB0_5:                                //  %return
	mv x10, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	fdimf, .Lfunc_end0-fdimf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
