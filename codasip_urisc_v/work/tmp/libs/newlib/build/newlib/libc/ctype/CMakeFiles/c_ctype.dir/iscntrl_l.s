	.text
	.file	"iscntrl_l.c"
	.globl	iscntrl_l               //  -- Begin function iscntrl_l
	.type	iscntrl_l,@function
iscntrl_l:                              //  @iscntrl_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( _ctype_ )
	add x11, x11, %lo( _ctype_ )
	add x10, x11, x10
	lbu x10, 1 ( x10 )
	and x10, x10, 32
	jr ra
.Lfunc_end0:
	.size	iscntrl_l, .Lfunc_end0-iscntrl_l
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
