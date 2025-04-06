	.text
	.file	"strncpy.c"
	.globl	strncpy                 //  -- Begin function strncpy
	.type	strncpy,@function
strncpy:                                //  @strncpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	sltiu x13, x12, 4
	bltu x0, x13, .LBB0_1
.LBB0_2:                                //  %entry
	or x13, x10, x11
	and x13, x13, 3
	bltu x0, x13, .LBB0_3
.LBB0_4:                                //  %if.then
	lui x13, %hi( -16843009 )
	add x14, x13, %lo( -16843009 )
	lui x13, %hi( -2139062144 )
	add x15, x13, %lo( -2139062144 )
	add x16, x0, 3
	mv x13, x10
.LBB0_5:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lw x17, 0 ( x11 )
	add x5, x14, x17
	xor x6, x17, -1
	and x5, x5, x6
	and x5, x15, x5
	bltu x0, x5, .LBB0_7
.LBB0_6:                                //  %while.body
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x17, 0 ( x13 )
	add x13, x13, 4
	add x11, x11, 4
	add x12, x12, -4
	bltu x16, x12, .LBB0_5
	jal x0, .LBB0_7
.LBB0_1:
	mv x13, x10
	bltu x0, x12, .LBB0_8
	jal x0, .LBB0_12
.LBB0_3:
	mv x13, x10
.LBB0_7:                                //  %while.cond8
	beq x0, x12, .LBB0_12
.LBB0_8:                                //  %while.body10
	lbu x14, 0 ( x11 )
	add x11, x11, 1
	add x12, x12, -1
	sb x14, 0 ( x13 )
	add x13, x13, 1
	bltu x0, x14, .LBB0_7
.LBB0_9:                                //  %while.end17
	beq x0, x12, .LBB0_12
.LBB0_10:                               //  %while.body22.preheader
	mv x11, x0
.LBB0_11:                               //  %while.body22
                                        //  =>This Inner Loop Header: Depth=1
	add x14, x11, x13
	add x11, x11, 1
	sb x0, 0 ( x14 )
	bne x12, x11, .LBB0_11
.LBB0_12:                               //  %while.end24
	jr ra
.Lfunc_end0:
	.size	strncpy, .Lfunc_end0-strncpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
