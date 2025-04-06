	.text
	.file	"getwchar.c"
	.globl	_getwchar_r             //  -- Begin function _getwchar_r
	.type	_getwchar_r,@function
_getwchar_r:                            //  @_getwchar_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( _impure_ptr )
	add x11, x11, %lo( _impure_ptr )
	lw x11, 0 ( x11 )
	lw x11, 4 ( x11 )
	j _fgetwc_r
.Lfunc_end0:
	.size	_getwchar_r, .Lfunc_end0-_getwchar_r
	.cfi_endproc
                                        //  -- End function
	.globl	getwchar                //  -- Begin function getwchar
	.type	getwchar,@function
getwchar:                               //  @getwchar
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	lw x10, 4 ( x10 )
	j fgetwc
.Lfunc_end1:
	.size	getwchar, .Lfunc_end1-getwchar
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
