	.text
	.file	"sf_copysign.c"
	.globl	copysignf               //  -- Begin function copysignf
	.type	copysignf,@function
copysignf:                              //  @copysignf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x12, %hi( 2147483647 )
	add x12, x12, %lo( 2147483647 )
	and x10, x12, x10
	lui x12, %hi( -2147483648 )
	add x12, x12, %lo( -2147483648 )
	and x11, x12, x11
	or x10, x10, x11
	jr ra
.Lfunc_end0:
	.size	copysignf, .Lfunc_end0-copysignf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
