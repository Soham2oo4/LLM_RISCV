	.text
	.file	"mbsrtowcs.c"
	.globl	_mbsrtowcs_r            //  -- Begin function _mbsrtowcs_r
	.type	_mbsrtowcs_r,@function
_mbsrtowcs_r:                           //  @_mbsrtowcs_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x15, x14
	mv x14, x13
	add x13, x0, -1
	j _mbsnrtowcs_r
.Lfunc_end0:
	.size	_mbsrtowcs_r, .Lfunc_end0-_mbsrtowcs_r
	.cfi_endproc
                                        //  -- End function
	.globl	mbsrtowcs               //  -- Begin function mbsrtowcs
	.type	mbsrtowcs,@function
mbsrtowcs:                              //  @mbsrtowcs
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x14, x12
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	mv x15, x13
	add x13, x0, -1
	j _mbsnrtowcs_r
.Lfunc_end1:
	.size	mbsrtowcs, .Lfunc_end1-mbsrtowcs
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
