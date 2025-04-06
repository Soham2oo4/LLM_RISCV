	.text
	.file	"strsep.c"
	.globl	strsep                  //  -- Begin function strsep
	.type	strsep,@function
strsep:                                 //  @strsep
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x10
	lw x10, 0 ( x12 )
	mv x13, x0
	j __strtok_r
.Lfunc_end0:
	.size	strsep, .Lfunc_end0-strsep
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
