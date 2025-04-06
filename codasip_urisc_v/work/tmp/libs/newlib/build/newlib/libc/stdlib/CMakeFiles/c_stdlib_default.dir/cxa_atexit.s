	.text
	.file	"cxa_atexit.c"
	.globl	__cxa_atexit            //  -- Begin function __cxa_atexit
	.type	__cxa_atexit,@function
__cxa_atexit:                           //  @__cxa_atexit
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x12
	mv x12, x11
	mv x11, x10
	add x10, x0, 2
	j __register_exitproc
.Lfunc_end0:
	.size	__cxa_atexit, .Lfunc_end0-__cxa_atexit
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
