	.text
	.file	"bcmp.c"
	.globl	bcmp                    //  -- Begin function bcmp
	.type	bcmp,@function
bcmp:                                   //  @bcmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	j memcmp
.Lfunc_end0:
	.size	bcmp, .Lfunc_end0-bcmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
