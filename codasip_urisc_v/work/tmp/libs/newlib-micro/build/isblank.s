	.text
	.file	"isblank.c"
	.globl	isblank                 //  -- Begin function isblank
	.type	isblank,@function
isblank:                                //  @isblank
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( _ctype_ )
	add x11, x11, %lo( _ctype_ )
	add x11, x11, x10
	lbu x11, 1 ( x11 )
	xor x10, x10, 9
	seqz x10, x10
	srl x11, x11, 7&31
	or x10, x10, x11
	jr ra
.Lfunc_end0:
	.size	isblank, .Lfunc_end0-isblank
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
