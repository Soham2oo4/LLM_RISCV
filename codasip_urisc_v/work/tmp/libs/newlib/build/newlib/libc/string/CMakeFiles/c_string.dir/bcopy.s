	.text
	.file	"bcopy.c"
	.globl	bcopy                   //  -- Begin function bcopy
	.type	bcopy,@function
bcopy:                                  //  @bcopy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x10
	mv x10, x11
	mv x11, x13
	j memmove
.Lfunc_end0:
	.size	bcopy, .Lfunc_end0-bcopy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
