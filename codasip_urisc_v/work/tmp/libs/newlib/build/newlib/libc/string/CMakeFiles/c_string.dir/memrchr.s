	.text
	.file	"memrchr.c"
	.globl	memrchr                 //  -- Begin function memrchr
	.type	memrchr,@function
memrchr:                                //  @memrchr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x10
	add x12, x12, -1
	mv x10, x0
	and x11, x11, 255
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x14, x12, x13
	add x15, x14, 1
	and x15, x15, 3
	beq x0, x15, .LBB0_5
.LBB0_2:                                //  %while.body
                                        //    in Loop: Header=BB0_1 Depth=1
	xor x15, x12, -1
	beq x0, x15, .LBB0_14
.LBB0_3:                                //  %if.end
                                        //    in Loop: Header=BB0_1 Depth=1
	lbu x14, 0 ( x14 )
	add x12, x12, -1
	bne x14, x11, .LBB0_1
.LBB0_4:                                //  %if.end.cleanup.loopexit1_crit_edge
	add x10, x12, x13
	add x10, x10, 1
	jr ra
.LBB0_5:                                //  %while.end
	add x12, x12, 1
	sltiu x15, x12, 4
	bltu x0, x15, .LBB0_10
.LBB0_6:                                //  %if.then11
	sll x14, x11, 8&31
	or x14, x11, x14
	sll x15, x14, 16&31
	lui x16, %hi( -16843009 )
	lui x17, %hi( -2139062144 )
	or x14, x14, x15
	add x15, x13, -4
	add x16, x16, %lo( -16843009 )
	add x17, x17, %lo( -2139062144 )
	add x5, x0, 3
.LBB0_7:                                //  %while.body26
                                        //  =>This Inner Loop Header: Depth=1
	add x6, x12, x15
	lw x6, 0 ( x6 )
	xor x6, x14, x6
	add x7, x16, x6
	xor x6, x6, -1
	and x6, x7, x6
	and x6, x17, x6
	bltu x0, x6, .LBB0_9
.LBB0_8:                                //  %if.end32
                                        //    in Loop: Header=BB0_7 Depth=1
	add x12, x12, -4
	bltu x5, x12, .LBB0_7
.LBB0_9:                                //  %while.body26.while.end35_crit_edge
	add x13, x12, x13
	add x13, x13, -4
	add x14, x13, 3
.LBB0_10:                               //  %if.end38
	beq x0, x12, .LBB0_14
.LBB0_11:                               //  %while.body42
                                        //  =>This Inner Loop Header: Depth=1
	lbu x13, 0 ( x14 )
	beq x13, x11, .LBB0_12
.LBB0_13:                               //  %if.end48
                                        //    in Loop: Header=BB0_11 Depth=1
	add x12, x12, -1
	add x14, x14, -1
	bltu x0, x12, .LBB0_11
.LBB0_14:                               //  %cleanup
	jr ra
.LBB0_12:
	mv x10, x14
	jr ra
.Lfunc_end0:
	.size	memrchr, .Lfunc_end0-memrchr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
