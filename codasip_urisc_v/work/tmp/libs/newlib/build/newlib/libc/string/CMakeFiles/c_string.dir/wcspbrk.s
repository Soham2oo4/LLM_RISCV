	.text
	.file	"wcspbrk.c"
	.globl	wcspbrk                 //  -- Begin function wcspbrk
	.type	wcspbrk,@function
wcspbrk:                                //  @wcspbrk
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x10
	lw x13, 0 ( x12 )
	mv x10, x0
	beq x0, x13, .LBB0_10
.LBB0_1:                                //  %while.cond1.preheader.lr.ph
	lw x14, 0 ( x11 )
	beq x0, x14, .LBB0_4
.LBB0_2:                                //  %while.cond1.preheader.preheader
	add x11, x11, 4
.LBB0_3:                                //  %while.cond1.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_7 Depth 2
	mv x15, x11
	mv x16, x14
.LBB0_7:                                //  %while.body3
                                        //    Parent Loop BB0_3 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beq x13, x16, .LBB0_8
.LBB0_6:                                //  %while.cond1
                                        //    in Loop: Header=BB0_7 Depth=2
	lw x16, 0 ( x15 )
	add x17, x15, 4
	mv x15, x17
	bltu x0, x16, .LBB0_7
.LBB0_9:                                //  %while.end
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x13, 4 ( x12 )
	add x15, x12, 4
	mv x12, x15
	bltu x0, x13, .LBB0_3
	jal x0, .LBB0_10
.LBB0_8:
	mv x10, x12
	jr ra
.LBB0_4:                                //  %while.cond1.preheader.us.preheader
	add x11, x12, 4
.LBB0_5:                                //  %while.cond1.preheader.us
                                        //  =>This Inner Loop Header: Depth=1
	lw x13, 0 ( x11 )
	add x12, x11, 4
	mv x11, x12
	bltu x0, x13, .LBB0_5
.LBB0_10:                               //  %cleanup
	jr ra
.Lfunc_end0:
	.size	wcspbrk, .Lfunc_end0-wcspbrk
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
