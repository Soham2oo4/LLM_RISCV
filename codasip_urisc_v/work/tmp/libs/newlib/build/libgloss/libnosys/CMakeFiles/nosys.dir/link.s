	.text
	.file	"link.c"
	.globl	link                    //  -- Begin function link
	.type	link,@function
link:                                   //  @link
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	add x12, x0, 22
	mv x13, x0
	mv x14, x12
	beq x11, x13, .LBB0_2
.LBB0_1:                                //  %entry
	add x14, x0, 88
.LBB0_2:                                //  %entry
	beq x10, x13, .LBB0_4
.LBB0_3:                                //  %entry
	mv x12, x14
.LBB0_4:                                //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( errno )
	add x10, x10, %lo( errno )
	sw x12, 0 ( x10 )
	add x10, x0, -1
	jr ra
.Lfunc_end0:
	.size	link, .Lfunc_end0-link
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
