	.text
	.file	"iswalnum_l.c"
	.globl	iswalnum_l              //  -- Begin function iswalnum_l
	.type	iswalnum_l,@function
iswalnum_l:                             //  @iswalnum_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	add x11, x0, 255
	bltu x11, x10, .LBB0_1
.LBB0_2:                                //  %cond.true
	.cfi_def_cfa 2, 0
	lui x11, %hi( _ctype_ )
	add x11, x11, %lo( _ctype_ )
	add x10, x10, x11
	lbu x10, 1 ( x10 )
	and x10, x10, 7
	jr ra
.LBB0_1:
	mv x10, x0
	jr ra
.Lfunc_end0:
	.size	iswalnum_l, .Lfunc_end0-iswalnum_l
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
