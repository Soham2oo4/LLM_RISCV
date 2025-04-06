	.text
	.file	"duplocale.c"
	.globl	_duplocale_r            //  -- Begin function _duplocale_r
	.type	_duplocale_r,@function
_duplocale_r:                           //  @_duplocale_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( __global_locale )
	add x10, x10, %lo( __global_locale )
	jr ra
.Lfunc_end0:
	.size	_duplocale_r, .Lfunc_end0-_duplocale_r
	.cfi_endproc
                                        //  -- End function
	.globl	duplocale               //  -- Begin function duplocale
	.type	duplocale,@function
duplocale:                              //  @duplocale
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( __global_locale )
	add x10, x10, %lo( __global_locale )
	jr ra
.Lfunc_end1:
	.size	duplocale, .Lfunc_end1-duplocale
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
