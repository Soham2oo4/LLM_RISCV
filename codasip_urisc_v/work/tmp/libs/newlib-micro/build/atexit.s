	.text
	.file	"atexit.c"
	.globl	atexit                  //  -- Begin function atexit
	.type	atexit,@function
atexit:                                 //  @atexit
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x10
	mv x10, x0
	mv x12, x10
	mv x13, x10
	j __register_exitproc
.Lfunc_end0:
	.size	atexit, .Lfunc_end0-atexit
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
