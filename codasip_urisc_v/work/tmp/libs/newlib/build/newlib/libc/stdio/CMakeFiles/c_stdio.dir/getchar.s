	.text
	.file	"getchar.c"
	.globl	_getchar_r              //  -- Begin function _getchar_r
	.type	_getchar_r,@function
_getchar_r:                             //  @_getchar_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x11, 4 ( x10 )
	j _getc_r
.Lfunc_end0:
	.size	_getchar_r, .Lfunc_end0-_getchar_r
	.cfi_endproc
                                        //  -- End function
	.globl	getchar                 //  -- Begin function getchar
	.type	getchar,@function
getchar:                                //  @getchar
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	lw x11, 4 ( x10 )
	j _getc_r
.Lfunc_end1:
	.size	getchar, .Lfunc_end1-getchar
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
