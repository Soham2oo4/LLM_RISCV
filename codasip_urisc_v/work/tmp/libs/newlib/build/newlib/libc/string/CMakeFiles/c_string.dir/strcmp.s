	.text
	.file	"strcmp.c"
	.globl	strcmp                  //  -- Begin function strcmp
	.type	strcmp,@function
strcmp:                                 //  @strcmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	or x12, x10, x11
	and x12, x12, 3
	bltu x0, x12, .LBB0_5
.LBB0_1:                                //  %if.then
	lw x14, 0 ( x10 )
	lw x12, 0 ( x11 )
	bne x14, x12, .LBB0_5
.LBB0_2:                                //  %while.body.preheader
	lui x12, %hi( -16843009 )
	add x13, x12, %lo( -16843009 )
	lui x12, %hi( -2139062144 )
	add x15, x12, %lo( -2139062144 )
	mv x12, x0
.LBB0_3:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x16, x13, x14
	xor x14, x14, -1
	and x14, x16, x14
	and x14, x15, x14
	bltu x0, x14, .LBB0_11
.LBB0_4:                                //  %if.end
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x14, 4 ( x10 )
	lw x16, 4 ( x11 )
	add x11, x11, 4
	add x10, x10, 4
	beq x14, x16, .LBB0_3
.LBB0_5:                                //  %if.end7
	lbu x13, 0 ( x10 )
	mv x12, x0
	beq x0, x13, .LBB0_10
.LBB0_6:                                //  %land.rhs.preheader
	add x10, x10, 1
.LBB0_7:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14, 0 ( x11 )
	and x15, x13, 255
	bne x15, x14, .LBB0_8
.LBB0_9:                                //  %while.body15
                                        //    in Loop: Header=BB0_7 Depth=1
	lbu x13, 0 ( x10 )
	add x14, x10, 1
	add x11, x11, 1
	mv x10, x14
	bltu x0, x13, .LBB0_7
	jal x0, .LBB0_10
.LBB0_8:
	mv x12, x13
.LBB0_10:                               //  %while.end18
	lbu x10, 0 ( x11 )
	and x11, x12, 255
	sub x12, x11, x10
.LBB0_11:                               //  %cleanup
	mv x10, x12
	jr ra
.Lfunc_end0:
	.size	strcmp, .Lfunc_end0-strcmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
