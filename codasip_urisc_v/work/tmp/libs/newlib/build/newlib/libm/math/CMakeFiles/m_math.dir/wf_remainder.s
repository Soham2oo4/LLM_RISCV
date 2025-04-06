	.text
	.file	"wf_remainder.c"
	.globl	remainderf              //  -- Begin function remainderf
	.type	remainderf,@function
remainderf:                             //  @remainderf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv x9, x11
	jal __ieee754_remainderf
	mv fp, x10
	mv x11, x0
	mv x10, x9
	jal __nesf2
	bltu x0, x10, .LBB0_2
.LBB0_1:                                //  %if.then2
	jal __errno
	add x11, x0, 33
	lui fp, (2143289344>>12)&1048575
	sw x11, 0 ( x10 )
.LBB0_2:                                //  %cleanup
	mv x10, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	remainderf, .Lfunc_end0-remainderf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
