	.text
	.file	"rawmemchr.c"
	.globl	rawmemchr               //  -- Begin function rawmemchr
	.type	rawmemchr,@function
rawmemchr:                              //  @rawmemchr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	and x12, x10, 3
	and x11, x11, 255
	beq x0, x12, .LBB0_3
.LBB0_1:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x12, 0 ( x10 )
	beq x12, x11, .LBB0_7
.LBB0_2:                                //  %if.end
                                        //    in Loop: Header=BB0_1 Depth=1
	add x10, x10, 1
	and x12, x10, 3
	bltu x0, x12, .LBB0_1
.LBB0_3:                                //  %while.end
	sll x12, x11, 8&31
	or x12, x11, x12
	sll x13, x12, 16&31
	lui x14, %hi( -2139062144 )
	or x12, x12, x13
	lui x13, %hi( -16843009 )
	add x10, x10, -4
	add x13, x13, %lo( -16843009 )
	add x14, x14, %lo( -2139062144 )
.LBB0_4:                                //  %while.cond13
                                        //  =>This Inner Loop Header: Depth=1
	lw x15, 4 ( x10 )
	add x10, x10, 4
	xor x16, x12, x15
	add x17, x13, x16
	xor x16, x16, -1
	and x16, x17, x16
	and x16, x14, x16
	beq x0, x16, .LBB0_4
.LBB0_5:                                //  %while.end22
	and x12, x15, 255
	beq x12, x11, .LBB0_7
.LBB0_6:                                //  %while.cond23.while.cond23_crit_edge
                                        //  =>This Inner Loop Header: Depth=1
	lbu x12, 1 ( x10 )
	add x10, x10, 1
	bne x12, x11, .LBB0_6
.LBB0_7:                                //  %cleanup
	jr ra
.Lfunc_end0:
	.size	rawmemchr, .Lfunc_end0-rawmemchr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
