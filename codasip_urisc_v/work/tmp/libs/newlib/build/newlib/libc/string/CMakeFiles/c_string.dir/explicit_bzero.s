	.text
	.file	"explicit_bzero.c"
	.globl	explicit_bzero          //  -- Begin function explicit_bzero
	.type	explicit_bzero,@function
explicit_bzero:                         //  @explicit_bzero
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	j bzero
.Lfunc_end0:
	.size	explicit_bzero, .Lfunc_end0-explicit_bzero
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
