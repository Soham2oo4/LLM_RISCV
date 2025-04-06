	.text
	.file	"sf_nan.c"
	.globl	nanf                    //  -- Begin function nanf
	.type	nanf,@function
nanf:                                   //  @nanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, (2143289344>>12)&1048575
	jr ra
.Lfunc_end0:
	.size	nanf, .Lfunc_end0-nanf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
