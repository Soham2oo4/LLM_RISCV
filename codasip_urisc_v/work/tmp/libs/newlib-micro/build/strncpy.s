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
	mv x13, x0
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	beq x12, x13, .LBB0_6
.LBB0_2:                                //  %while.body
                                        //    in Loop: Header=BB0_1 Depth=1
	add x15, x13, x11
	lbu x15, 0 ( x15 )
	add x14, x13, x10
	add x13, x13, 1
	sb x15, 0 ( x14 )
	bltu x0, x15, .LBB0_1
.LBB0_3:                                //  %while.end
	beq x12, x13, .LBB0_6
.LBB0_4:                                //  %while.body8.preheader
	sub x11, x12, x13
	mv x12, x0
.LBB0_5:                                //  %while.body8
                                        //  =>This Inner Loop Header: Depth=1
	add x14, x12, x10
	add x14, x13, x14
	add x12, x12, 1
	sb x0, 0 ( x14 )
	bne x11, x12, .LBB0_5
.LBB0_6:                                //  %while.end10
	jr ra
.Lfunc_end0:
	.size	strncpy, .Lfunc_end0-strncpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
