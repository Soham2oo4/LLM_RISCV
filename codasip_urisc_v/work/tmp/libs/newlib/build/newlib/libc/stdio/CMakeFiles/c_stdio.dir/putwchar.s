	.text
	.file	"putwchar.c"
	.globl	_putwchar_r             //  -- Begin function _putwchar_r
	.type	_putwchar_r,@function
_putwchar_r:                            //  @_putwchar_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x12, %hi( _impure_ptr )
	add x12, x12, %lo( _impure_ptr )
	lw x12, 0 ( x12 )
	lw x12, 8 ( x12 )
	j _fputwc_r
.Lfunc_end0:
	.size	_putwchar_r, .Lfunc_end0-_putwchar_r
	.cfi_endproc
                                        //  -- End function
	.globl	putwchar                //  -- Begin function putwchar
	.type	putwchar,@function
putwchar:                               //  @putwchar
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( _impure_ptr )
	add x11, x11, %lo( _impure_ptr )
	lw x11, 0 ( x11 )
	lw x11, 8 ( x11 )
	j fputwc
.Lfunc_end1:
	.size	putwchar, .Lfunc_end1-putwchar
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
