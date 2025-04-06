	.text
	.file	"strlen.c"
	.globl	strlen                  //  -- Begin function strlen
	.type	strlen,@function
strlen:                                 //  @strlen
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	and x12, x10, 3
	mv x11, x10
	beq x0, x12, .LBB0_6
.LBB0_1:                                //  %while.body.preheader
	lbu x11, 0 ( x10 )
	beq x0, x11, .LBB0_2
.LBB0_3:                                //  %if.end.preheader
	add x11, x10, 1
.LBB0_5:                                //  %if.end
                                        //  =>This Inner Loop Header: Depth=1
	and x12, x11, 3
	beq x0, x12, .LBB0_6
.LBB0_4:                                //  %while.body
                                        //    in Loop: Header=BB0_5 Depth=1
	lbu x12, 0 ( x11 )
	add x11, x11, 1
	bltu x0, x12, .LBB0_5
.LBB0_10:                               //  %cleanup.loopexit
	add x11, x11, -1
	sub x10, x11, x10
	jr ra
.LBB0_6:                                //  %while.end
	lui x12, %hi( -16843009 )
	lui x13, %hi( -2139062144 )
	add x11, x11, -4
	add x12, x12, %lo( -16843009 )
	add x13, x13, %lo( -2139062144 )
.LBB0_7:                                //  %while.cond2
                                        //  =>This Inner Loop Header: Depth=1
	lw x14, 4 ( x11 )
	add x11, x11, 4
	add x15, x12, x14
	xor x16, x14, -1
	and x15, x15, x16
	and x15, x13, x15
	beq x0, x15, .LBB0_7
.LBB0_8:                                //  %while.end8
	and x12, x14, 255
	beq x0, x12, .LBB0_11
.LBB0_9:                                //  %while.cond9.while.cond9_crit_edge
                                        //  =>This Inner Loop Header: Depth=1
	lbu x12, 1 ( x11 )
	add x11, x11, 1
	bltu x0, x12, .LBB0_9
.LBB0_11:                               //  %cleanup
	sub x10, x11, x10
	jr ra
.LBB0_2:
	mv x11, x10
	sub x10, x11, x10
	jr ra
.Lfunc_end0:
	.size	strlen, .Lfunc_end0-strlen
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
