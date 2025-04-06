	.text
	.file	"memmove.c"
	.globl	memmove                 //  -- Begin function memmove
	.type	memmove,@function
memmove:                                //  @memmove
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	bgeu x11, x10, .LBB0_5
.LBB0_1:                                //  %land.lhs.true
	add x13, x12, x11
	bgeu x10, x13, .LBB0_5
.LBB0_2:                                //  %if.then
	beq x0, x12, .LBB0_8
.LBB0_3:                                //  %while.body.preheader
	add x13, x10, -1
	add x11, x11, -1
.LBB0_4:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x15, x12, x11
	lb x15, 0 ( x15 )
	add x14, x12, x13
	add x12, x12, -1
	sb x15, 0 ( x14 )
	bltu x0, x12, .LBB0_4
	jal x0, .LBB0_8
.LBB0_5:                                //  %if.else
	sltiu x13, x12, 16
	beq x0, x13, .LBB0_9
.LBB0_6:
	mv x13, x10
.LBB0_7:                                //  %if.end
	bltu x0, x12, .LBB0_11
	jal x0, .LBB0_8
.LBB0_9:                                //  %land.lhs.true6
	or x13, x10, x11
	and x13, x13, 3
	beq x0, x13, .LBB0_16
.LBB0_10:
	mv x13, x10
.LBB0_11:                               //  %while.body32
                                        //  =>This Inner Loop Header: Depth=1
	lb x14, 0 ( x11 )
	add x11, x11, 1
	add x12, x12, -1
	sb x14, 0 ( x13 )
	add x13, x13, 1
	bltu x0, x12, .LBB0_11
.LBB0_8:                                //  %if.end36
	jr ra
.LBB0_16:                               //  %while.body12.preheader
	add x14, x0, 15
	mv x13, x10
.LBB0_17:                               //  %while.body12
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
	bltu x14, x12, .LBB0_17
.LBB0_12:                               //  %while.cond22.preheader
	sltiu x14, x12, 4
	bltu x0, x14, .LBB0_7
.LBB0_13:                               //  %while.body24.preheader
	mv x14, x0
	add x15, x0, 3
.LBB0_14:                               //  %while.body24
                                        //  =>This Inner Loop Header: Depth=1
	add x17, x14, x11
	lw x17, 0 ( x17 )
	add x16, x14, x13
	add x14, x14, 4
	add x12, x12, -4
	sw x17, 0 ( x16 )
	bltu x15, x12, .LBB0_14
.LBB0_15:                               //  %while.end28.loopexit
	add x13, x14, x13
	add x11, x14, x11
	bltu x0, x12, .LBB0_11
	jal x0, .LBB0_8
.Lfunc_end0:
	.size	memmove, .Lfunc_end0-memmove
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
