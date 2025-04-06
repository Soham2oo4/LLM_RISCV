	.text
	.file	"freelocale.c"
	.globl	_freelocale_r           //  -- Begin function _freelocale_r
	.type	_freelocale_r,@function
_freelocale_r:                          //  @_freelocale_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_freelocale_r, .Lfunc_end0-_freelocale_r
	.cfi_endproc
                                        //  -- End function
	.globl	freelocale              //  -- Begin function freelocale
	.type	freelocale,@function
freelocale:                             //  @freelocale
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	freelocale, .Lfunc_end1-freelocale
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
