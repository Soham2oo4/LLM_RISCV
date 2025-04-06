	.text
	.file	"strlcpy.c"
	.globl	strlcpy                 //  -- Begin function strlcpy
	.type	strlcpy,@function
strlcpy:                                //  @strlcpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x11
	beq x0, x12, .LBB0_6
.LBB0_1:                                //  %land.lhs.true
	mv x13, x11
	add x12, x12, -1
	beq x0, x12, .LBB0_5
.LBB0_3:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14, 0 ( x13 )
	sb x14, 0 ( x10 )
	beq x0, x14, .LBB0_7
.LBB0_4:                                //  %do.cond
                                        //    in Loop: Header=BB0_3 Depth=1
	add x10, x10, 1
	add x13, x13, 1
	add x12, x12, -1
	bltu x0, x12, .LBB0_3
.LBB0_5:                                //  %if.then15
	sb x0, 0 ( x10 )
.LBB0_6:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x10, 0 ( x13 )
	add x13, x13, 1
	bltu x0, x10, .LBB0_6
.LBB0_8:                                //  %if.end18
	xor x10, x11, -1
	add x10, x10, x13
	jr ra
.LBB0_7:                                //  %if.end18.loopexit1
	add x13, x13, 1
	xor x10, x11, -1
	add x10, x10, x13
	jr ra
.Lfunc_end0:
	.size	strlcpy, .Lfunc_end0-strlcpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
