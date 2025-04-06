	.text
	.file	"bzero.c"
	.globl	bzero                   //  -- Begin function bzero
	.type	bzero,@function
bzero:                                  //  @bzero
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x11
	mv x11, x0
	j memset
.Lfunc_end0:
	.size	bzero, .Lfunc_end0-bzero
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
