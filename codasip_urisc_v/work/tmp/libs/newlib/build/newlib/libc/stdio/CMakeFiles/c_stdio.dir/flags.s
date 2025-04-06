	.text
	.file	"flags.c"
	.globl	__sflags                //  -- Begin function __sflags
	.type	__sflags,@function
__sflags:                               //  @__sflags
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lb x13, 0 ( x11 )
	xor x14, x13, 97
	beq x0, x14, .LBB0_6
.LBB0_1:                                //  %entry
	xor x14, x13, 114
	beq x0, x14, .LBB0_2
.LBB0_3:                                //  %entry
	xor x13, x13, 119
	bltu x0, x13, .LBB0_5
.LBB0_4:                                //  %sw.bb1
	add x14, x0, 1536
	seqz x13, x0
	add x10, x0, 8
	lbu x17, 1 ( x11 )
	bltu x0, x17, .LBB0_8
	jal x0, .LBB0_16
.LBB0_6:                                //  %sw.bb2
	add x14, x0, 520
	seqz x13, x0
	add x10, x0, 264
	lbu x17, 1 ( x11 )
	bltu x0, x17, .LBB0_8
	jal x0, .LBB0_16
.LBB0_2:
	mv x13, x0
	add x10, x0, 4
	mv x14, x13
	lbu x17, 1 ( x11 )
	beq x0, x17, .LBB0_16
.LBB0_8:                                //  %while.body.preheader
	add x5, x11, 2
	lui x11, %hi( 2048 )
	add x11, x11, %lo( 2048 )
	lui x15, (65536>>12)&1048575
	mv x16, x5
	and x5, x17, 255
	xor x5, x5, 120
	bltu x0, x5, .LBB0_10
.LBB0_14:                               //  %sw.bb9
	or x13, x11, x13
.LBB0_15:                               //  %sw.epilog12
	lbu x17, 0 ( x16 )
	add x5, x16, 1
	beq x0, x17, .LBB0_16
.LBB0_9:                                //  %while.body
	mv x16, x5
	and x5, x17, 255
	xor x5, x5, 120
	beq x0, x5, .LBB0_14
.LBB0_10:                               //  %while.body
	sll x17, x17, 24&31
	sra x17, x17, 24&31
	xor x5, x17, 98
	beq x0, x5, .LBB0_13
.LBB0_11:                               //  %while.body
	xor x17, x17, 43
	bltu x0, x17, .LBB0_15
.LBB0_12:                               //  %sw.bb4
	and x13, x13, -4
	and x10, x10, -29
	or x13, x13, 2
	or x10, x10, 16
	lbu x17, 0 ( x16 )
	add x5, x16, 1
	bltu x0, x17, .LBB0_9
	jal x0, .LBB0_16
.LBB0_13:                               //  %sw.bb7
	or x13, x15, x13
	lbu x17, 0 ( x16 )
	add x5, x16, 1
	bltu x0, x17, .LBB0_9
.LBB0_16:                               //  %while.end
	or x11, x14, x13
	sw x11, 0 ( x12 )
	jr ra
.LBB0_5:                                //  %sw.default
	add x11, x0, 22
	sw x11, 0 ( x10 )
	mv x10, x0
	jr ra
.Lfunc_end0:
	.size	__sflags, .Lfunc_end0-__sflags
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
