	.text
	.file	"wcsncat.c"
	.globl	wcsncat                 //  -- Begin function wcsncat
	.type	wcsncat,@function
wcsncat:                                //  @wcsncat
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x10
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	mv x15, x13
	lw x14, 0 ( x15 )
	add x13, x15, 4
	bltu x0, x14, .LBB0_1
.LBB0_2:                                //  %while.cond1.preheader
	beq x0, x12, .LBB0_8
.LBB0_3:                                //  %while.cond1.preheader
	lw x14, 0 ( x11 )
	beq x0, x14, .LBB0_8
.LBB0_4:                                //  %while.body4.preheader
	add x15, x0, -4
	add x12, x12, -1
	add x11, x11, 4
.LBB0_5:                                //  %while.body4
                                        //  =>This Inner Loop Header: Depth=1
	add x16, x15, x13
	sw x14, 0 ( x16 )
	add x16, x15, 4
	add x17, x12, -1
	bgeu x17, x12, .LBB0_7
.LBB0_6:                                //  %while.body4
                                        //    in Loop: Header=BB0_5 Depth=1
	add x12, x15, x11
	lw x14, 4 ( x12 )
	mv x12, x17
	mv x15, x16
	bltu x0, x14, .LBB0_5
.LBB0_7:                                //  %while.end7.loopexit
	add x15, x16, x13
.LBB0_8:                                //  %while.end7
	sw x0, 0 ( x15 )
	jr ra
.Lfunc_end0:
	.size	wcsncat, .Lfunc_end0-wcsncat
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
