	.text
	.file	"strchr.c"
	.globl	strchr                  //  -- Begin function strchr
	.type	strchr,@function
strchr:                                 //  @strchr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	and x13, x10, 3
	and x12, x11, 255
	beq x0, x12, .LBB0_15
.LBB0_1:                                //  %while.cond17.preheader
	beq x0, x13, .LBB0_6
.LBB0_2:
	mv x11, x0
.LBB0_3:                                //  %while.body20
                                        //  =>This Inner Loop Header: Depth=1
	lbu x13, 0 ( x10 )
	beq x0, x13, .LBB0_22
.LBB0_4:                                //  %if.end23
                                        //    in Loop: Header=BB0_3 Depth=1
	beq x13, x12, .LBB0_24
.LBB0_5:                                //  %if.end28
                                        //    in Loop: Header=BB0_3 Depth=1
	add x10, x10, 1
	and x13, x10, 3
	bltu x0, x13, .LBB0_3
.LBB0_6:                                //  %while.end30
	lw x14, 0 ( x10 )
	lui x11, %hi( -16843009 )
	add x11, x11, %lo( -16843009 )
	add x13, x11, x14
	xor x15, x14, -1
	and x15, x13, x15
	lui x13, %hi( -2139062144 )
	add x13, x13, %lo( -2139062144 )
	and x15, x13, x15
	bltu x0, x15, .LBB0_10
.LBB0_7:                                //  %land.rhs.preheader
	sll x15, x12, 8&31
	or x15, x12, x15
	sll x16, x15, 16&31
	or x15, x15, x16
.LBB0_8:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	xor x14, x15, x14
	add x16, x11, x14
	xor x14, x14, -1
	and x14, x16, x14
	and x14, x13, x14
	bltu x0, x14, .LBB0_10
.LBB0_9:                                //  %while.body48
                                        //    in Loop: Header=BB0_8 Depth=1
	lw x14, 4 ( x10 )
	add x10, x10, 4
	add x16, x11, x14
	xor x17, x14, -1
	and x16, x16, x17
	and x16, x13, x16
	beq x0, x16, .LBB0_8
.LBB0_10:                               //  %while.end50
	add x13, x10, -1
.LBB0_11:                               //  %while.cond51
                                        //  =>This Inner Loop Header: Depth=1
	lbu x10, 1 ( x13 )
	add x11, x13, 1
	beq x10, x12, .LBB0_13
.LBB0_12:                               //  %while.cond51
                                        //    in Loop: Header=BB0_11 Depth=1
	mv x13, x11
	bltu x0, x10, .LBB0_11
.LBB0_13:                               //  %while.end62
	beq x10, x12, .LBB0_22
.LBB0_14:                               //  %while.end62
	mv x11, x0
	mv x10, x11
	jr ra
.LBB0_15:                               //  %while.cond.preheader
	beq x0, x13, .LBB0_18
.LBB0_16:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x11, 0 ( x10 )
	beq x0, x11, .LBB0_24
.LBB0_17:                               //  %if.end
                                        //    in Loop: Header=BB0_16 Depth=1
	add x10, x10, 1
	and x11, x10, 3
	bltu x0, x11, .LBB0_16
.LBB0_18:                               //  %while.end
	lui x12, %hi( -2139062144 )
	add x11, x10, -4
	lui x10, %hi( -16843009 )
	add x10, x10, %lo( -16843009 )
	add x12, x12, %lo( -2139062144 )
.LBB0_19:                               //  %while.cond4
                                        //  =>This Inner Loop Header: Depth=1
	lw x13, 4 ( x11 )
	add x11, x11, 4
	add x14, x10, x13
	xor x15, x13, -1
	and x14, x14, x15
	and x14, x12, x14
	beq x0, x14, .LBB0_19
.LBB0_20:                               //  %while.end10
	and x10, x13, 255
	beq x0, x10, .LBB0_22
.LBB0_21:                               //  %while.cond11.while.cond11_crit_edge
                                        //  =>This Inner Loop Header: Depth=1
	lbu x10, 1 ( x11 )
	add x11, x11, 1
	bltu x0, x10, .LBB0_21
.LBB0_22:                               //  %cleanup
	mv x10, x11
.LBB0_24:
	jr ra
.Lfunc_end0:
	.size	strchr, .Lfunc_end0-strchr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
