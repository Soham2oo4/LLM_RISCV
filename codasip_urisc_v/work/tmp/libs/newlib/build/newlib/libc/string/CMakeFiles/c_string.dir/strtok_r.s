	.text
	.file	"strtok_r.c"
	.globl	__strtok_r              //  -- Begin function __strtok_r
	.type	__strtok_r,@function
__strtok_r:                             //  @__strtok_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x10, 0 ( x12 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end
	beq x0, x13, .LBB0_4
.LBB0_9:                                //  %cont
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_10 Depth 2
	lbu x14, 0 ( x10 )
	add x13, x10, 1
	mv x15, x11
.LBB0_10:                               //  %for.cond
                                        //    Parent Loop BB0_9 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x16, 0 ( x15 )
	beq x0, x16, .LBB0_13
.LBB0_11:                               //  %for.body
                                        //    in Loop: Header=BB0_10 Depth=2
	add x15, x15, 1
	bne x14, x16, .LBB0_10
.LBB0_12:                               //    in Loop: Header=BB0_9 Depth=1
	mv x10, x13
	jal x0, .LBB0_9
.LBB0_4:                                //  %cont.us
	lbu x14, 0 ( x10 )
	add x13, x10, 1
	mv x15, x11
.LBB0_5:                                //  %for.cond.us
                                        //  =>This Inner Loop Header: Depth=1
	lbu x16, 0 ( x15 )
	beq x0, x16, .LBB0_13
.LBB0_6:                                //  %for.body.us
                                        //    in Loop: Header=BB0_5 Depth=1
	add x15, x15, 1
	bne x14, x16, .LBB0_5
.LBB0_7:                                //  %if.else
	sw x13, 0 ( x12 )
	sb x0, 0 ( x10 )
	jr ra
.LBB0_13:                               //  %for.end
	beq x0, x14, .LBB0_14
.LBB0_15:                               //  %for.cond16
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_16 Depth 2
	lbu x15, 0 ( x13 )
	add x14, x13, 1
	mv x16, x11
.LBB0_16:                               //  %do.body
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x17, 0 ( x16 )
	beq x17, x15, .LBB0_17
.LBB0_21:                               //  %do.cond
                                        //    in Loop: Header=BB0_16 Depth=2
	add x16, x16, 1
	bltu x0, x17, .LBB0_16
.LBB0_22:                               //    in Loop: Header=BB0_15 Depth=1
	mv x13, x14
	jal x0, .LBB0_15
.LBB0_17:                               //  %if.then23
	beq x0, x15, .LBB0_18
.LBB0_19:                               //  %if.else27
	sb x0, 0 ( x13 )
	sw x14, 0 ( x12 )
	jr ra
.LBB0_14:                               //  %if.then13
	mv x10, x0
	sw x0, 0 ( x12 )
	jr ra
.LBB0_18:
	mv x14, x0
	sw x14, 0 ( x12 )
	jr ra
.LBB0_2:
	mv x10, x0
	jr ra
.Lfunc_end0:
	.size	__strtok_r, .Lfunc_end0-__strtok_r
	.cfi_endproc
                                        //  -- End function
	.globl	strtok_r                //  -- Begin function strtok_r
	.type	strtok_r,@function
strtok_r:                               //  @strtok_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	bltu x0, x10, .LBB1_3
.LBB1_1:                                //  %land.lhs.true.i
	lw x10, 0 ( x12 )
	beq x0, x10, .LBB1_2
.LBB1_3:                                //  %cont.i.preheader
	mv x13, x0
.LBB1_4:                                //  %cont.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_5 Depth 2
	lbu x15, 0 ( x10 )
	add x14, x10, 1
	mv x16, x11
.LBB1_5:                                //  %for.cond.i
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x17, 0 ( x16 )
	beq x0, x17, .LBB1_8
.LBB1_6:                                //  %for.body.i
                                        //    in Loop: Header=BB1_5 Depth=2
	add x16, x16, 1
	bne x15, x17, .LBB1_5
.LBB1_7:                                //    in Loop: Header=BB1_4 Depth=1
	mv x10, x14
	jal x0, .LBB1_4
.LBB1_8:                                //  %for.end.i
	beq x0, x15, .LBB1_9
.LBB1_10:                               //  %for.cond16.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_11 Depth 2
	lbu x16, 0 ( x14 )
	add x15, x14, 1
	mv x17, x11
.LBB1_11:                               //  %do.body.i
                                        //    Parent Loop BB1_10 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x5, 0 ( x17 )
	beq x5, x16, .LBB1_12
.LBB1_14:                               //  %do.cond.i
                                        //    in Loop: Header=BB1_11 Depth=2
	add x17, x17, 1
	bltu x0, x5, .LBB1_11
.LBB1_15:                               //    in Loop: Header=BB1_10 Depth=1
	mv x14, x15
	jal x0, .LBB1_10
.LBB1_12:                               //  %if.then23.i
	beq x0, x16, .LBB1_13
.LBB1_16:                               //  %if.else27.i
	sb x0, 0 ( x14 )
	sw x15, 0 ( x12 )
	jr ra
.LBB1_9:
	mv x15, x13
	mv x10, x13
	sw x15, 0 ( x12 )
	jr ra
.LBB1_13:
	mv x15, x13
	sw x15, 0 ( x12 )
	jr ra
.LBB1_2:
	mv x10, x0
	jr ra
.Lfunc_end1:
	.size	strtok_r, .Lfunc_end1-strtok_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
