	.text
	.file	"strncat.c"
	.globl	strncat                 //  -- Begin function strncat
	.type	strncat,@function
strncat:                                //  @strncat
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	and x14, x10, 3
	mv x13, x10
	bltu x0, x14, .LBB0_3
.LBB0_1:                                //  %if.then
	lui x14, %hi( -16843009 )
	lui x15, %hi( -2139062144 )
	add x13, x10, -4
	add x14, x14, %lo( -16843009 )
	add x15, x15, %lo( -2139062144 )
.LBB0_2:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x16, 4 ( x13 )
	add x13, x13, 4
	add x17, x14, x16
	xor x16, x16, -1
	and x16, x17, x16
	and x16, x15, x16
	beq x0, x16, .LBB0_2
.LBB0_3:                                //  %while.cond3.preheader
	add x13, x13, -1
.LBB0_4:                                //  %while.cond3
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14, 1 ( x13 )
	add x13, x13, 1
	bltu x0, x14, .LBB0_4
.LBB0_5:                                //  %while.cond8.preheader
	beq x0, x12, .LBB0_10
.LBB0_6:                                //  %land.rhs.preheader
	mv x14, x0
.LBB0_7:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	add x16, x14, x11
	lbu x16, 0 ( x16 )
	add x15, x14, x13
	sb x16, 0 ( x15 )
	beq x0, x16, .LBB0_10
.LBB0_8:                                //  %while.body13
                                        //    in Loop: Header=BB0_7 Depth=1
	add x14, x14, 1
	bne x12, x14, .LBB0_7
.LBB0_9:                                //  %if.end17.thread
	add x11, x14, x13
	sb x0, 0 ( x11 )
.LBB0_10:                               //  %while.end18
	jr ra
.Lfunc_end0:
	.size	strncat, .Lfunc_end0-strncat
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
