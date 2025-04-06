	.text
	.file	"strxfrm.c"
	.globl	strxfrm                 //  -- Begin function strxfrm
	.type	strxfrm,@function
strxfrm:                                //  @strxfrm
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x10
	mv x10, x0
	beq x0, x12, .LBB0_4
.LBB0_1:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x15, x10, x11
	lbu x15, 0 ( x15 )
	add x14, x10, x13
	sb x15, 0 ( x14 )
	beq x0, x15, .LBB0_7
.LBB0_2:                                //  %if.then
                                        //    in Loop: Header=BB0_1 Depth=1
	add x10, x10, 1
	bne x12, x10, .LBB0_1
.LBB0_3:                                //  %while.cond4.preheader.loopexit
	add x11, x10, x11
.LBB0_4:                                //  %while.cond4.preheader
	lbu x12, 0 ( x11 )
	beq x0, x12, .LBB0_7
.LBB0_5:                                //  %while.body5.preheader
	add x11, x11, 1
.LBB0_6:                                //  %while.body5
                                        //  =>This Inner Loop Header: Depth=1
	lbu x13, 0 ( x11 )
	add x12, x11, 1
	add x10, x10, 1
	mv x11, x12
	bltu x0, x13, .LBB0_6
.LBB0_7:                                //  %cleanup
	jr ra
.Lfunc_end0:
	.size	strxfrm, .Lfunc_end0-strxfrm
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
