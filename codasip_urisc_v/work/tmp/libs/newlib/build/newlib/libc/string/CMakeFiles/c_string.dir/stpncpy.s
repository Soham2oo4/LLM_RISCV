	.text
	.file	"stpncpy.c"
	.globl	stpncpy                 //  -- Begin function stpncpy
	.type	stpncpy,@function
stpncpy:                                //  @stpncpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	sltiu x13, x12, 4
	bltu x0, x13, .LBB0_5
.LBB0_1:                                //  %entry
	or x13, x10, x11
	and x13, x13, 3
	bltu x0, x13, .LBB0_5
.LBB0_2:                                //  %if.then
	lui x13, %hi( -16843009 )
	lui x14, %hi( -2139062144 )
	add x13, x13, %lo( -16843009 )
	add x14, x14, %lo( -2139062144 )
	add x15, x0, 3
.LBB0_3:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lw x16, 0 ( x11 )
	add x17, x13, x16
	xor x5, x16, -1
	and x17, x17, x5
	and x17, x14, x17
	bltu x0, x17, .LBB0_5
.LBB0_4:                                //  %while.body
                                        //    in Loop: Header=BB0_3 Depth=1
	sw x16, 0 ( x10 )
	add x10, x10, 4
	add x11, x11, 4
	add x12, x12, -4
	bltu x15, x12, .LBB0_3
.LBB0_5:                                //  %while.cond8.preheader
	mv x14, x0
.LBB0_6:                                //  %while.cond8
                                        //  =>This Inner Loop Header: Depth=1
	beq x12, x14, .LBB0_12
.LBB0_7:                                //  %while.body10
                                        //    in Loop: Header=BB0_6 Depth=1
	add x15, x14, x11
	lbu x15, 0 ( x15 )
	add x13, x14, x10
	add x14, x14, 1
	sb x15, 0 ( x13 )
	bltu x0, x15, .LBB0_6
.LBB0_8:                                //  %while.end17
	add x11, x14, x10
	add x13, x11, -1
	bne x12, x14, .LBB0_9
.LBB0_13:                               //  %while.end24
	mv x10, x0
	bne x13, x10, .LBB0_14
.LBB0_15:                               //  %while.end24
	mv x10, x11
	jr ra
.LBB0_12:                               //  %while.end24.loopexit1
	add x11, x14, x10
	mv x13, x0
	mv x10, x0
	beq x13, x10, .LBB0_15
.LBB0_14:                               //  %while.end24
	mv x11, x13
	mv x10, x11
	jr ra
.LBB0_9:                                //  %while.body22.preheader
	sub x12, x12, x14
	mv x11, x0
.LBB0_10:                               //  %while.body22
                                        //  =>This Inner Loop Header: Depth=1
	add x15, x11, x10
	add x15, x14, x15
	add x11, x11, 1
	sb x0, 0 ( x15 )
	bne x12, x11, .LBB0_10
.LBB0_11:                               //  %while.end24.loopexit
	add x10, x14, x10
	add x11, x11, x10
	mv x10, x0
	beq x13, x10, .LBB0_15
	jal x0, .LBB0_14
.Lfunc_end0:
	.size	stpncpy, .Lfunc_end0-stpncpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
