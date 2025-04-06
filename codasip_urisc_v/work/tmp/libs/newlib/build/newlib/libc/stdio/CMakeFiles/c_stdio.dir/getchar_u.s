	.text
	.file	"getchar_u.c"
	.globl	_getchar_unlocked_r     //  -- Begin function _getchar_unlocked_r
	.type	_getchar_unlocked_r,@function
_getchar_unlocked_r:                    //  @_getchar_unlocked_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x11, 4 ( x10 )
	j _getc_unlocked_r
.Lfunc_end0:
	.size	_getchar_unlocked_r, .Lfunc_end0-_getchar_unlocked_r
	.cfi_endproc
                                        //  -- End function
	.globl	getchar_unlocked        //  -- Begin function getchar_unlocked
	.type	getchar_unlocked,@function
getchar_unlocked:                       //  @getchar_unlocked
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	lw x11, 4 ( x10 )
	j _getc_unlocked_r
.Lfunc_end1:
	.size	getchar_unlocked, .Lfunc_end1-getchar_unlocked
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
