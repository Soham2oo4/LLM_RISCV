	.text
	.file	"atoll.c"
	.globl	atoll                   //  -- Begin function atoll
	.type	atoll,@function
atoll:                                  //  @atoll
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x0
	add x12, x0, 10
	j strtoll
.Lfunc_end0:
	.size	atoll, .Lfunc_end0-atoll
	.cfi_endproc
                                        //  -- End function
	.globl	_atoll_r                //  -- Begin function _atoll_r
	.type	_atoll_r,@function
_atoll_r:                               //  @_atoll_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x0
	add x13, x0, 10
	j _strtoll_r
.Lfunc_end1:
	.size	_atoll_r, .Lfunc_end1-_atoll_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
