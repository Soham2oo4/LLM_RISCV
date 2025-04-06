	.text
	.file	"memccpy.c"
	.globl	memccpy                 //  -- Begin function memccpy
	.type	memccpy,@function
memccpy:                                //  @memccpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	sltiu x15, x13, 4
	sll x14, x12, 24&31
	bltu x0, x15, .LBB0_5
.LBB0_1:                                //  %land.lhs.true
	or x15, x10, x11
	and x15, x15, 3
	bltu x0, x15, .LBB0_5
.LBB0_2:                                //  %while.body.preheader
	sra x15, x14, 24&31
	sll x12, x12, 8&31
	add x12, x15, x12
	sll x12, x12, 8&31
	add x12, x15, x12
	sll x12, x12, 8&31
	lui x16, %hi( -2139062144 )
	add x12, x15, x12
	lui x15, %hi( -16843009 )
	add x15, x15, %lo( -16843009 )
	add x16, x16, %lo( -2139062144 )
	add x17, x0, 3
.LBB0_3:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x5, 0 ( x11 )
	xor x6, x12, x5
	add x7, x15, x6
	xor x6, x6, -1
	and x6, x7, x6
	and x6, x16, x6
	bltu x0, x6, .LBB0_5
.LBB0_4:                                //  %cleanup
                                        //    in Loop: Header=BB0_3 Depth=1
	sw x5, 0 ( x10 )
	add x10, x10, 4
	add x11, x11, 4
	add x13, x13, -4
	bltu x17, x13, .LBB0_3
.LBB0_5:                                //  %if.end15
	sra x14, x14, 24&31
	mv x12, x0
.LBB0_6:                                //  %while.cond16
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x13, .LBB0_7
.LBB0_8:                                //  %while.body18
                                        //    in Loop: Header=BB0_6 Depth=1
	lb x15, 0 ( x11 )
	add x11, x11, 1
	add x13, x13, -1
	sb x15, 0 ( x10 )
	add x10, x10, 1
	bne x14, x15, .LBB0_6
.LBB0_9:                                //  %while.end27
	jr ra
.LBB0_7:
	mv x10, x12
	jr ra
.Lfunc_end0:
	.size	memccpy, .Lfunc_end0-memccpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
