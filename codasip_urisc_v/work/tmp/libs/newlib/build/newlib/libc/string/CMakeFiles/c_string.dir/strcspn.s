	.text
	.file	"strcspn.c"
	.globl	strcspn                 //  -- Begin function strcspn
	.type	strcspn,@function
strcspn:                                //  @strcspn
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lbu x13, 0 ( x10 )
	mv x12, x10
	beq x0, x13, .LBB0_9
.LBB0_1:                                //  %for.cond.preheader.lr.ph
	lbu x14, 0 ( x11 )
	beq x0, x14, .LBB0_4
.LBB0_2:                                //  %for.cond.preheader.preheader
	add x11, x11, 1
	mv x12, x10
.LBB0_3:                                //  %for.cond.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_7 Depth 2
	mv x15, x11
	mv x16, x14
.LBB0_7:                                //  %for.body
                                        //    Parent Loop BB0_3 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	and x16, x16, 255
	and x17, x13, 255
	beq x17, x16, .LBB0_9
.LBB0_6:                                //  %for.cond
                                        //    in Loop: Header=BB0_7 Depth=2
	lbu x16, 0 ( x15 )
	add x17, x15, 1
	mv x15, x17
	bltu x0, x16, .LBB0_7
.LBB0_8:                                //  %if.end6
                                        //    in Loop: Header=BB0_3 Depth=1
	lbu x13, 1 ( x12 )
	add x12, x12, 1
	bltu x0, x13, .LBB0_3
	jal x0, .LBB0_9
.LBB0_4:                                //  %for.cond.preheader.us.preheader
	mv x12, x10
.LBB0_5:                                //  %for.cond.preheader.us
                                        //  =>This Inner Loop Header: Depth=1
	lbu x11, 1 ( x12 )
	add x12, x12, 1
	bltu x0, x11, .LBB0_5
.LBB0_9:                                //  %while.end
	sub x10, x12, x10
	jr ra
.Lfunc_end0:
	.size	strcspn, .Lfunc_end0-strcspn
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
