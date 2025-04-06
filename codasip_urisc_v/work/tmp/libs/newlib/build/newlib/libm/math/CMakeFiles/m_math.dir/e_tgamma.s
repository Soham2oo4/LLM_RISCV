	.text
	.file	"e_tgamma.c"
	.globl	__ieee754_tgamma        //  -- Begin function __ieee754_tgamma
	.type	__ieee754_tgamma,@function
__ieee754_tgamma:                       //  @__ieee754_tgamma
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	add x12, sp, 8
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal __ieee754_lgamma_r
	jal __ieee754_exp
	lw x12, 8 ( sp )
	mv x13, x0
	bge x12, x13, .LBB0_2
.LBB0_1:
	lui x12, %hi( -2147483648 )
	add x12, x12, %lo( -2147483648 )
	xor x11, x12, x11
.LBB0_2:                                //  %entry
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__ieee754_tgamma, .Lfunc_end0-__ieee754_tgamma
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
