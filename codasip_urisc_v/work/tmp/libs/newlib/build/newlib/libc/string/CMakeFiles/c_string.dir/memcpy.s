	.text
	.file	"memcpy.c"
	.globl	memcpy                  //  -- Begin function memcpy
	.type	memcpy,@function
memcpy:                                 //  @memcpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	sltiu x13, x12, 16
	beq x0, x13, .LBB0_4
.LBB0_1:
	mv x13, x10
.LBB0_2:                                //  %if.end
	bltu x0, x12, .LBB0_6
	jal x0, .LBB0_3
.LBB0_4:                                //  %land.lhs.true
	or x13, x10, x11
	and x13, x13, 3
	beq x0, x13, .LBB0_11
.LBB0_5:
	mv x13, x10
.LBB0_6:                                //  %while.body19
                                        //  =>This Inner Loop Header: Depth=1
	lb x14, 0 ( x11 )
	add x11, x11, 1
	add x12, x12, -1
	sb x14, 0 ( x13 )
	add x13, x13, 1
	bltu x0, x12, .LBB0_6
.LBB0_3:                                //  %while.end22
	jr ra
.LBB0_11:                               //  %while.body.preheader
	add x14, x0, 15
	mv x13, x10
.LBB0_12:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x15, 0 ( x11 )
	add x12, x12, -16
	sw x15, 0 ( x13 )
	lw x15, 4 ( x11 )
	sw x15, 4 ( x13 )
	lw x15, 8 ( x11 )
	sw x15, 8 ( x13 )
	lw x15, 12 ( x11 )
	add x11, x11, 16
	sw x15, 12 ( x13 )
	add x13, x13, 16
	bltu x14, x12, .LBB0_12
.LBB0_7:                                //  %while.cond10.preheader
	sltiu x14, x12, 4
	bltu x0, x14, .LBB0_2
.LBB0_8:                                //  %while.body12.preheader
	mv x14, x0
	add x15, x0, 3
.LBB0_9:                                //  %while.body12
                                        //  =>This Inner Loop Header: Depth=1
	add x17, x14, x11
	lw x17, 0 ( x17 )
	add x16, x14, x13
	add x14, x14, 4
	add x12, x12, -4
	sw x17, 0 ( x16 )
	bltu x15, x12, .LBB0_9
.LBB0_10:                               //  %while.end16.loopexit
	add x13, x14, x13
	add x11, x14, x11
	bltu x0, x12, .LBB0_6
	jal x0, .LBB0_3
.Lfunc_end0:
	.size	memcpy, .Lfunc_end0-memcpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
