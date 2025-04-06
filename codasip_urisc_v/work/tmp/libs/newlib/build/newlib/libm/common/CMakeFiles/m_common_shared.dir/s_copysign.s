	.text
	.file	"s_copysign.c"
	.globl	copysign                //  -- Begin function copysign
	.type	copysign,@function
copysign:                               //  @copysign
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x12, %hi( 2147483647 )
	add x12, x12, %lo( 2147483647 )
	and x11, x12, x11
	lui x12, %hi( -2147483648 )
	add x12, x12, %lo( -2147483648 )
	and x12, x12, x13
	or x11, x11, x12
	jr ra
.Lfunc_end0:
	.size	copysign, .Lfunc_end0-copysign
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
