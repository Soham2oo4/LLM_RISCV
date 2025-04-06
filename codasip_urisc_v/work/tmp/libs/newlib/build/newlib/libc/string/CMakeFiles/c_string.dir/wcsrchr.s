	.text
	.file	"wcsrchr.c"
	.globl	wcsrchr                 //  -- Begin function wcsrchr
	.type	wcsrchr,@function
wcsrchr:                                //  @wcsrchr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x10
	add x13, x12, -4
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 4 ( x13 )
	add x13, x13, 4
	bltu x0, x10, .LBB0_1
.LBB0_2:                                //  %while.cond1.preheader
	mv x10, x0
	bltu x13, x12, .LBB0_9
.LBB0_3:                                //  %while.body2.preheader
	beq x0, x11, .LBB0_4
.LBB0_5:                                //  %if.end.preheader
	add x13, x13, -4
.LBB0_6:                                //  %if.end
                                        //  =>This Inner Loop Header: Depth=1
	bltu x13, x12, .LBB0_9
.LBB0_7:                                //  %if.end.while.body2_crit_edge
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x14, 0 ( x13 )
	add x13, x13, -4
	bne x14, x11, .LBB0_6
.LBB0_8:                                //  %if.end.while.body2_crit_edge.cleanup.loopexit_crit_edge
	add x10, x13, 4
.LBB0_9:                                //  %cleanup
	jr ra
.LBB0_4:
	mv x10, x13
	jr ra
.Lfunc_end0:
	.size	wcsrchr, .Lfunc_end0-wcsrchr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
