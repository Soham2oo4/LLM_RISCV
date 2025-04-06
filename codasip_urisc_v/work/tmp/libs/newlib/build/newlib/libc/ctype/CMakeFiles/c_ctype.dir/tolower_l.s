	.text
	.file	"tolower_l.c"
	.globl	tolower_l               //  -- Begin function tolower_l
	.type	tolower_l,@function
tolower_l:                              //  @tolower_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( _ctype_ )
	add x11, x11, %lo( _ctype_ )
	add x11, x10, x11
	lbu x11, 1 ( x11 )
	seqz x12, x0
	and x11, x11, 3
	bne x11, x12, .LBB0_2
.LBB0_1:
	add x10, x10, 32
.LBB0_2:                                //  %entry
	jr ra
.Lfunc_end0:
	.size	tolower_l, .Lfunc_end0-tolower_l
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
