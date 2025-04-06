	.text
	.file	"strncmp.c"
	.globl	strncmp                 //  -- Begin function strncmp
	.type	strncmp,@function
strncmp:                                //  @strncmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x10
	mv x10, x0
	beq x0, x12, .LBB0_14
.LBB0_1:                                //  %if.end
	or x14, x13, x11
	and x14, x14, 3
	bltu x0, x14, .LBB0_8
.LBB0_2:                                //  %if.then2
	sltiu x14, x12, 4
	bltu x0, x14, .LBB0_8
.LBB0_3:                                //  %land.rhs.preheader
	lui x14, %hi( -16843009 )
	lui x15, %hi( -2139062144 )
	add x14, x14, %lo( -16843009 )
	add x15, x15, %lo( -2139062144 )
	add x16, x0, 3
.LBB0_4:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lw x17, 0 ( x13 )
	lw x5, 0 ( x11 )
	bne x17, x5, .LBB0_8
.LBB0_5:                                //  %while.body
                                        //    in Loop: Header=BB0_4 Depth=1
	xor x5, x12, 4
	beq x0, x5, .LBB0_14
.LBB0_6:                                //  %lor.lhs.false
                                        //    in Loop: Header=BB0_4 Depth=1
	add x5, x14, x17
	xor x17, x17, -1
	and x17, x5, x17
	and x17, x15, x17
	bltu x0, x17, .LBB0_14
.LBB0_7:                                //  %if.end11
                                        //    in Loop: Header=BB0_4 Depth=1
	add x12, x12, -4
	add x11, x11, 4
	add x13, x13, 4
	bltu x16, x12, .LBB0_4
.LBB0_8:                                //  %if.end13
	lbu x16, 0 ( x11 )
	lbu x14, 0 ( x13 )
	bne x14, x16, .LBB0_13
.LBB0_9:                                //  %while.body21.preheader
	add x15, x11, 1
	add x13, x13, 1
	add x11, x12, -1
.LBB0_10:                               //  %while.body21
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x11, .LBB0_14
.LBB0_11:                               //  %while.body21
                                        //    in Loop: Header=BB0_10 Depth=1
	and x12, x14, 255
	beq x0, x12, .LBB0_14
.LBB0_12:                               //  %if.end29
                                        //    in Loop: Header=BB0_10 Depth=1
	lbu x16, 0 ( x15 )
	lbu x14, 0 ( x13 )
	add x12, x13, 1
	add x17, x15, 1
	add x11, x11, -1
	mv x13, x12
	mv x15, x17
	beq x14, x16, .LBB0_10
.LBB0_13:                               //  %while.end32
	sub x10, x14, x16
.LBB0_14:                               //  %cleanup
	jr ra
.Lfunc_end0:
	.size	strncmp, .Lfunc_end0-strncmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
