	.text
	.file	"localeconv.c"
	.globl	__localeconv_l          //  -- Begin function __localeconv_l
	.type	__localeconv_l,@function
__localeconv_l:                         //  @__localeconv_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x10, x10, 240
	jr ra
.Lfunc_end0:
	.size	__localeconv_l, .Lfunc_end0-__localeconv_l
	.cfi_endproc
                                        //  -- End function
	.globl	_localeconv_r           //  -- Begin function _localeconv_r
	.type	_localeconv_r,@function
_localeconv_r:                          //  @_localeconv_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( __global_locale )
	add x10, x10, %lo( __global_locale )
	add x10, x10, 240
	jr ra
.Lfunc_end1:
	.size	_localeconv_r, .Lfunc_end1-_localeconv_r
	.cfi_endproc
                                        //  -- End function
	.globl	localeconv              //  -- Begin function localeconv
	.type	localeconv,@function
localeconv:                             //  @localeconv
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( __global_locale )
	add x10, x10, %lo( __global_locale )
	add x10, x10, 240
	jr ra
.Lfunc_end2:
	.size	localeconv, .Lfunc_end2-localeconv
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
