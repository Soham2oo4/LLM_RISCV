	.text
	.file	"atoff.c"
	.globl	atoff                   //  -- Begin function atoff
	.type	atoff,@function
atoff:                                  //  @atoff
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x0
	j strtof
.Lfunc_end0:
	.size	atoff, .Lfunc_end0-atoff
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
