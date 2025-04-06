	.text
	.file	"mempcpy.c"
	.globl	mempcpy                 //  -- Begin function mempcpy
	.type	mempcpy,@function
mempcpy:                                //  @mempcpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	sltiu x13, x12, 16
	beq x0, x13, .LBB0_1
.LBB0_8:                                //  %if.end
	bltu x0, x12, .LBB0_9
	jal x0, .LBB0_10
.LBB0_1:                                //  %land.lhs.true
	or x13, x10, x11
	and x13, x13, 3
	beq x0, x13, .LBB0_2
.LBB0_9:                                //  %while.body19
                                        //  =>This Inner Loop Header: Depth=1
	lb x13, 0 ( x11 )
	add x11, x11, 1
	add x12, x12, -1
	sb x13, 0 ( x10 )
	add x10, x10, 1
	bltu x0, x12, .LBB0_9
.LBB0_10:                               //  %while.end22
	jr ra
.LBB0_2:                                //  %while.body.preheader
	add x13, x0, 15
.LBB0_3:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x14, 0 ( x11 )
	add x12, x12, -16
	sw x14, 0 ( x10 )
	lw x14, 4 ( x11 )
	sw x14, 4 ( x10 )
	lw x14, 8 ( x11 )
	sw x14, 8 ( x10 )
	lw x14, 12 ( x11 )
	add x11, x11, 16
	sw x14, 12 ( x10 )
	add x10, x10, 16
	bltu x13, x12, .LBB0_3
.LBB0_4:                                //  %while.cond10.preheader
	sltiu x13, x12, 4
	bltu x0, x13, .LBB0_8
.LBB0_5:                                //  %while.body12.preheader
	mv x13, x0
	add x14, x0, 3
.LBB0_6:                                //  %while.body12
                                        //  =>This Inner Loop Header: Depth=1
	add x16, x13, x11
	lw x16, 0 ( x16 )
	add x15, x13, x10
	add x13, x13, 4
	add x12, x12, -4
	sw x16, 0 ( x15 )
	bltu x14, x12, .LBB0_6
.LBB0_7:                                //  %while.end16.loopexit
	add x10, x13, x10
	add x11, x13, x11
	bltu x0, x12, .LBB0_9
	jal x0, .LBB0_10
.Lfunc_end0:
	.size	mempcpy, .Lfunc_end0-mempcpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
