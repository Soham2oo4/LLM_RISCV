	.text
	.file	"vprintf.c"
	.globl	vprintf                 //  -- Begin function vprintf
	.type	vprintf,@function
vprintf:                                //  @vprintf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	mv x13, x11
	lw x11, 8 ( x10 )
	j _vfprintf_r
.Lfunc_end0:
	.size	vprintf, .Lfunc_end0-vprintf
	.cfi_endproc
                                        //  -- End function
	.globl	_vprintf_r              //  -- Begin function _vprintf_r
	.type	_vprintf_r,@function
_vprintf_r:                             //  @_vprintf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x12
	mv x12, x11
	lw x11, 8 ( x10 )
	j _vfprintf_r
.Lfunc_end1:
	.size	_vprintf_r, .Lfunc_end1-_vprintf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
