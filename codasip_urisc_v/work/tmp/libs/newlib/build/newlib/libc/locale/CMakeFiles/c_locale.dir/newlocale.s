	.text
	.file	"newlocale.c"
	.globl	_newlocale_r            //  -- Begin function _newlocale_r
	.type	_newlocale_r,@function
_newlocale_r:                           //  @_newlocale_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( __global_locale )
	add x10, x10, %lo( __global_locale )
	jr ra
.Lfunc_end0:
	.size	_newlocale_r, .Lfunc_end0-_newlocale_r
	.cfi_endproc
                                        //  -- End function
	.globl	newlocale               //  -- Begin function newlocale
	.type	newlocale,@function
newlocale:                              //  @newlocale
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( __global_locale )
	add x10, x10, %lo( __global_locale )
	jr ra
.Lfunc_end1:
	.size	newlocale, .Lfunc_end1-newlocale
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
