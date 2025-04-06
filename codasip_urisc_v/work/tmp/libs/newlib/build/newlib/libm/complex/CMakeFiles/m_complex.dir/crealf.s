	.text
	.file	"crealf.c"
	.globl	crealf                  //  -- Begin function crealf
	.type	crealf,@function
crealf:                                 //  @crealf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x10, 0 ( x10 )
	jr ra
.Lfunc_end0:
	.size	crealf, .Lfunc_end0-crealf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
