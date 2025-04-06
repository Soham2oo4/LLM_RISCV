	.text
	.file	"wf_sqrt.c"
	.globl	sqrtf                   //  -- Begin function sqrtf
	.type	sqrtf,@function
sqrtf:                                  //  @sqrtf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x11, x0
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv fp, x10
	jal __ltsf2
	mv x9, x10
	mv x10, fp
	jal __ieee754_sqrtf
	bge x9, x0, .LBB0_2
.LBB0_1:                                //  %if.then2
	jal __errno
	add x11, x0, 33
	sw x11, 0 ( x10 )
	lui x10, (2143289344>>12)&1048575
.LBB0_2:                                //  %cleanup
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	sqrtf, .Lfunc_end0-sqrtf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
