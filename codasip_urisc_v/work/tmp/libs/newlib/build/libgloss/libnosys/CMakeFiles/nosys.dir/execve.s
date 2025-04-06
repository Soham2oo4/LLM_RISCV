	.text
	.file	"execve.c"
	.globl	execve                  //  -- Begin function execve
	.type	execve,@function
execve:                                 //  @execve
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	add x13, x0, 22
	mv x14, x0
	mv x15, x13
	bne x12, x14, .LBB0_1
.LBB0_2:                                //  %entry
	mv x12, x13
	bne x11, x14, .LBB0_3
.LBB0_4:                                //  %entry
	beq x10, x14, .LBB0_6
.LBB0_5:                                //  %entry
	mv x13, x12
.LBB0_6:                                //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( errno )
	add x10, x10, %lo( errno )
	sw x13, 0 ( x10 )
	add x10, x0, -1
	jr ra
.LBB0_1:                                //  %entry
	add x15, x0, 88
	mv x12, x13
	beq x11, x14, .LBB0_4
.LBB0_3:                                //  %entry
	mv x12, x15
	bne x10, x14, .LBB0_5
	jal x0, .LBB0_6
.Lfunc_end0:
	.size	execve, .Lfunc_end0-execve
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
