	.text
	.file	"wcstold.c"
	.globl	wcstold_l               //  -- Begin function wcstold_l
	.type	wcstold_l,@function
wcstold_l:                              //  @wcstold_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal wcstod_l
	jal __extenddftf2
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	wcstold_l, .Lfunc_end0-wcstold_l
	.cfi_endproc
                                        //  -- End function
	.globl	wcstold                 //  -- Begin function wcstold
	.type	wcstold,@function
wcstold:                                //  @wcstold
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lui x12, %hi( __global_locale )
	add x12, x12, %lo( __global_locale )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal wcstod_l
	jal __extenddftf2
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	wcstold, .Lfunc_end1-wcstold
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
