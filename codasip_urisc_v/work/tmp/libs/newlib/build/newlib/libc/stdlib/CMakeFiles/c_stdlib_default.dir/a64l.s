	.text
	.file	"a64l.c"
	.globl	a64l                    //  -- Begin function a64l
	.type	a64l,@function
a64l:                                   //  @a64l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %for.body.preheader
	lbu x13, 0 ( x10 )
	mv x11, x0
	mv x12, x10
	bne x13, x11, .LBB0_3
.LBB0_4:                                //  %for.body.preheader
	snez x13, x13
	add x13, x13, x10
	lbu x13, 0 ( x13 )
	bne x13, x11, .LBB0_5
.LBB0_6:                                //  %for.body.preheader
	lbu x13, 0 ( x12 )
	bne x13, x11, .LBB0_7
.LBB0_8:                                //  %for.body.preheader
	lbu x13, 0 ( x12 )
	bne x13, x11, .LBB0_9
.LBB0_10:                               //  %for.body.preheader
	lbu x13, 0 ( x12 )
	bne x13, x11, .LBB0_11
.LBB0_12:                               //  %for.body.preheader
	lbu x13, 0 ( x12 )
	bne x13, x11, .LBB0_13
.LBB0_14:                               //  %for.body.preheader
	bltu x10, x12, .LBB0_15
	jal x0, .LBB0_23
.LBB0_1:
	mv x11, x0
	mv x10, x11
	jr ra
.LBB0_3:                                //  %for.body.preheader
	add x12, x10, 1
	snez x13, x13
	add x13, x13, x10
	lbu x13, 0 ( x13 )
	beq x13, x11, .LBB0_6
.LBB0_5:                                //  %for.body.preheader
	add x12, x12, 1
	lbu x13, 0 ( x12 )
	beq x13, x11, .LBB0_8
.LBB0_7:                                //  %for.body.preheader
	add x12, x12, 1
	lbu x13, 0 ( x12 )
	beq x13, x11, .LBB0_10
.LBB0_9:                                //  %for.body.preheader
	add x12, x12, 1
	lbu x13, 0 ( x12 )
	beq x13, x11, .LBB0_12
.LBB0_11:                               //  %for.body.preheader
	add x12, x12, 1
	lbu x13, 0 ( x12 )
	beq x13, x11, .LBB0_14
.LBB0_13:                               //  %for.body.preheader
	add x12, x12, 1
	bgeu x10, x12, .LBB0_23
.LBB0_15:                               //  %while.body.preheader
	lui x11, %hi( JTI0_0 )
	mv x13, x0
	seqz x14, x0
	add x15, x0, 75
	add x16, x11, %lo( JTI0_0 )
	mv x11, x13
	lb x5, -1 ( x12 )
	add x12, x12, -1
	add x17, x5, -47
	bgeu x15, x17, .LBB0_17
	jal x0, .LBB0_21
.LBB0_20:                               //  %sw.bb12
	add x17, x5, -59
.LBB0_22:                               //  %sw.epilog
	sll x11, x11, 6&31
	add x11, x11, x17
	bgeu x10, x12, .LBB0_23
.LBB0_16:                               //  %while.body
	lb x5, -1 ( x12 )
	add x12, x12, -1
	add x17, x5, -47
	bltu x15, x17, .LBB0_21
.LBB0_17:                               //  %while.body
	sll x17, x17, 2&31
	add x17, x16, x17
	lw x6, 0 ( x17 )
	mv x17, x14
	jr x6
.LBB0_19:                               //  %sw.bb8
	add x17, x5, -53
	sll x11, x11, 6&31
	add x11, x11, x17
	bltu x10, x12, .LBB0_16
	jal x0, .LBB0_23
.LBB0_18:                               //  %sw.bb6
	add x17, x5, -46
	sll x11, x11, 6&31
	add x11, x11, x17
	bltu x10, x12, .LBB0_16
	jal x0, .LBB0_23
.LBB0_21:                               //  %sw.default
	mv x17, x13
	sll x11, x11, 6&31
	add x11, x11, x17
	bltu x10, x12, .LBB0_16
.LBB0_23:                               //  %cleanup
	mv x10, x11
	jr ra
.Lfunc_end0:
	.size	a64l, .Lfunc_end0-a64l
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_22
	.long	.LBB0_18
	.long	.LBB0_18
	.long	.LBB0_18
	.long	.LBB0_18
	.long	.LBB0_18
	.long	.LBB0_18
	.long	.LBB0_18
	.long	.LBB0_18
	.long	.LBB0_18
	.long	.LBB0_18
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
