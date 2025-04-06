	.text
	.file	"wcscat.c"
	.globl	wcscat                  //  -- Begin function wcscat
	.type	wcscat,@function
wcscat:                                 //  @wcscat
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x10
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	mv x14, x12
	lw x13, 0 ( x14 )
	add x12, x14, 4
	bltu x0, x13, .LBB0_1
.LBB0_2:                                //  %while.cond1.preheader
	lw x13, 0 ( x11 )
	beq x0, x13, .LBB0_6
.LBB0_3:                                //  %while.body3.preheader
	add x14, x0, -4
	add x11, x11, 4
.LBB0_4:                                //  %while.body3
                                        //  =>This Inner Loop Header: Depth=1
	add x15, x14, x12
	sw x13, 0 ( x15 )
	add x13, x14, x11
	lw x13, 4 ( x13 )
	add x14, x14, 4
	bltu x0, x13, .LBB0_4
.LBB0_5:                                //  %while.end6.loopexit
	add x14, x14, x12
.LBB0_6:                                //  %while.end6
	sw x0, 0 ( x14 )
	jr ra
.Lfunc_end0:
	.size	wcscat, .Lfunc_end0-wcscat
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
