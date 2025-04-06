	.text
	.file	"malloptr.c"
	.globl	_mallopt_r              //  -- Begin function _mallopt_r
	.type	_mallopt_r,@function
_mallopt_r:                             //  @_mallopt_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x10, x0
	jr ra
.Lfunc_end0:
	.size	_mallopt_r, .Lfunc_end0-_mallopt_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
