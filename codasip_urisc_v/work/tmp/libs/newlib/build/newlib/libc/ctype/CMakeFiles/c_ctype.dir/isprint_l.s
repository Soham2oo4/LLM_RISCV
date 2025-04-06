	.text
	.file	"isprint_l.c"
	.globl	isgraph_l               //  -- Begin function isgraph_l
	.type	isgraph_l,@function
isgraph_l:                              //  @isgraph_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( _ctype_ )
	add x11, x11, %lo( _ctype_ )
	add x10, x11, x10
	lbu x10, 1 ( x10 )
	and x10, x10, 23
	jr ra
.Lfunc_end0:
	.size	isgraph_l, .Lfunc_end0-isgraph_l
	.cfi_endproc
                                        //  -- End function
	.globl	isprint_l               //  -- Begin function isprint_l
	.type	isprint_l,@function
isprint_l:                              //  @isprint_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( _ctype_ )
	add x11, x11, %lo( _ctype_ )
	add x10, x11, x10
	lbu x10, 1 ( x10 )
	and x10, x10, 151
	jr ra
.Lfunc_end1:
	.size	isprint_l, .Lfunc_end1-isprint_l
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
