	.text
	.file	"memcmp.c"
	.globl	memcmp                  //  -- Begin function memcmp
	.type	memcmp,@function
memcmp:                                 //  @memcmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x10
	sltiu x14, x12, 4
	mv x10, x0
	beq x0, x14, .LBB0_1
.LBB0_5:                                //  %if.end6
	bltu x0, x12, .LBB0_6
.LBB0_9:                                //  %cleanup
	jr ra
.LBB0_1:                                //  %land.lhs.true
	or x14, x13, x11
	and x14, x14, 3
	beq x0, x14, .LBB0_2
.LBB0_6:                                //  %while.body9
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14, 0 ( x11 )
	lbu x15, 0 ( x13 )
	bne x15, x14, .LBB0_7
.LBB0_8:                                //  %if.end17
                                        //    in Loop: Header=BB0_6 Depth=1
	add x12, x12, -1
	add x11, x11, 1
	add x13, x13, 1
	bltu x0, x12, .LBB0_6
	jal x0, .LBB0_9
.LBB0_7:                                //  %if.then13
	sub x10, x15, x14
	jr ra
.LBB0_2:                                //  %while.body.preheader
	add x14, x0, 3
.LBB0_3:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x15, 0 ( x11 )
	lw x16, 0 ( x13 )
	bne x16, x15, .LBB0_5
.LBB0_4:                                //  %if.end
                                        //    in Loop: Header=BB0_3 Depth=1
	add x11, x11, 4
	add x13, x13, 4
	add x12, x12, -4
	bltu x14, x12, .LBB0_3
	jal x0, .LBB0_5
.Lfunc_end0:
	.size	memcmp, .Lfunc_end0-memcmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
