	.text
	.file	"wcscspn.c"
	.globl	wcscspn                 //  -- Begin function wcscspn
	.type	wcscspn,@function
wcscspn:                                //  @wcscspn
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x13, 0 ( x10 )
	mv x12, x10
	beq x0, x13, .LBB0_9
.LBB0_1:                                //  %while.cond1.preheader.lr.ph
	lw x14, 0 ( x11 )
	beq x0, x14, .LBB0_4
.LBB0_2:                                //  %while.cond1.preheader.preheader
	add x11, x11, 4
	mv x12, x10
.LBB0_3:                                //  %while.cond1.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_6 Depth 2
	mv x15, x11
	mv x16, x14
	beq x13, x16, .LBB0_9
.LBB0_6:                                //  %while.cond1
                                        //    Parent Loop BB0_3 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x16, 0 ( x15 )
	add x17, x15, 4
	mv x15, x17
	beq x0, x16, .LBB0_8
.LBB0_7:                                //  %while.body3
                                        //    in Loop: Header=BB0_6 Depth=2
	bne x13, x16, .LBB0_6
	jal x0, .LBB0_9
.LBB0_8:                                //  %while.end
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x13, 4 ( x12 )
	add x12, x12, 4
	bltu x0, x13, .LBB0_3
	jal x0, .LBB0_9
.LBB0_4:                                //  %while.cond1.preheader.us.preheader
	mv x12, x10
.LBB0_5:                                //  %while.cond1.preheader.us
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 4 ( x12 )
	add x12, x12, 4
	bltu x0, x11, .LBB0_5
.LBB0_9:                                //  %done
	sub x10, x12, x10
	sra x10, x10, 2&31
	jr ra
.Lfunc_end0:
	.size	wcscspn, .Lfunc_end0-wcscspn
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
