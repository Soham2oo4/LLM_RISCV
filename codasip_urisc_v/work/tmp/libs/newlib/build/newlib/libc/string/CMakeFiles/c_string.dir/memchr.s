	.text
	.file	"memchr.c"
	.globl	memchr                  //  -- Begin function memchr
	.type	memchr,@function
memchr:                                 //  @memchr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x10
	and x14, x13, 3
	mv x10, x0
	and x11, x11, 255
	beq x0, x14, .LBB0_4
.LBB0_1:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x12, .LBB0_11
.LBB0_2:                                //  %if.end
                                        //    in Loop: Header=BB0_1 Depth=1
	lbu x14, 0 ( x13 )
	beq x14, x11, .LBB0_13
.LBB0_3:                                //  %if.end6
                                        //    in Loop: Header=BB0_1 Depth=1
	add x13, x13, 1
	add x12, x12, -1
	and x14, x13, 3
	bltu x0, x14, .LBB0_1
.LBB0_4:                                //  %while.end
	sltiu x14, x12, 4
	bltu x0, x14, .LBB0_8
.LBB0_5:                                //  %if.then9
	sll x14, x11, 8&31
	or x14, x11, x14
	sll x15, x14, 16&31
	lui x16, %hi( -2139062144 )
	or x14, x14, x15
	lui x15, %hi( -16843009 )
	add x15, x15, %lo( -16843009 )
	add x16, x16, %lo( -2139062144 )
	add x17, x0, 3
.LBB0_6:                                //  %while.body22
                                        //  =>This Inner Loop Header: Depth=1
	lw x5, 0 ( x13 )
	xor x5, x14, x5
	add x6, x15, x5
	xor x5, x5, -1
	and x5, x6, x5
	and x5, x16, x5
	bltu x0, x5, .LBB0_8
.LBB0_7:                                //  %if.end28
                                        //    in Loop: Header=BB0_6 Depth=1
	add x13, x13, 4
	add x12, x12, -4
	bltu x17, x12, .LBB0_6
.LBB0_8:                                //  %if.end32
	beq x0, x12, .LBB0_11
.LBB0_9:                                //  %while.body36
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14, 0 ( x13 )
	beq x14, x11, .LBB0_13
.LBB0_10:                               //  %if.end42
                                        //    in Loop: Header=BB0_9 Depth=1
	add x12, x12, -1
	add x13, x13, 1
	bltu x0, x12, .LBB0_9
.LBB0_11:                               //  %cleanup
	jr ra
.LBB0_13:
	mv x10, x13
	jr ra
.Lfunc_end0:
	.size	memchr, .Lfunc_end0-memchr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
