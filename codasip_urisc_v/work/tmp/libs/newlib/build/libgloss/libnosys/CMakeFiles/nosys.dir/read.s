	.text
	.file	"read.c"
	.globl	read                    //  -- Begin function read
	.type	read,@function
read:                                   //  @read
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x12, .LBB0_1
.LBB0_2:                                //  %if.end
	mv x12, x0
	beq x11, x12, .LBB0_3
.LBB0_4:                                //  %if.end
	add x11, x0, 88
	blt x10, x12, .LBB0_6
	jal x0, .LBB0_7
.LBB0_1:
	mv x10, x0
	jr ra
.LBB0_3:
	add x11, x0, 22
	bge x10, x12, .LBB0_7
.LBB0_6:
	add x11, x0, 9
.LBB0_7:                                //  %if.end
	.cfi_def_cfa 2, 0
	lui x10, %hi( errno )
	add x10, x10, %lo( errno )
	sw x11, 0 ( x10 )
	add x10, x0, -1
	jr ra
.Lfunc_end0:
	.size	read, .Lfunc_end0-read
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
