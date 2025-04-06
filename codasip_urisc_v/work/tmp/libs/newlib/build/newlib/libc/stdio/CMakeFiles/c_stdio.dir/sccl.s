	.text
	.file	"sccl.c"
	.globl	__sccl                  //  -- Begin function __sccl
	.type	__sccl,@function
__sccl:                                 //  @__sccl
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lbu x15, 0 ( x11 )
	mv x13, x0
	xor x12, x15, 94
	bltu x0, x12, .LBB0_1
.LBB0_2:                                //  %if.then
	lbu x15, 1 ( x11 )
	seqz x14, x0
	add x12, x11, 2
	jal x0, .LBB0_3
.LBB0_1:
	add x12, x11, 1
	mv x14, x13
.LBB0_3:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x11, x13, x10
	add x13, x13, 1
	sb x14, 0 ( x11 )
	xor x11, x13, 256
	bltu x0, x11, .LBB0_3
.LBB0_4:                                //  %for.end
	beq x0, x15, .LBB0_17
.LBB0_5:                                //  %for.cond11.preheader
	xor x13, x14, 1
	add x11, x10, 1
	add x14, x0, 45
	jal x0, .LBB0_6
.LBB0_14:                               //    in Loop: Header=BB0_6 Depth=1
	mv x12, x17
	mv x15, x14
.LBB0_6:                                //  %for.cond11
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_13 Depth 2
                                        //        Child Loop BB0_16 Depth 3
	and x16, x15, 255
	add x15, x16, x10
	sb x13, 0 ( x15 )
	lbu x15, 0 ( x12 )
	add x17, x12, 1
	xor x5, x15, 45
	bltu x0, x5, .LBB0_9
.LBB0_13:                               //  %sw.bb17
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_16 Depth 3
	lbu x15, 0 ( x17 )
	xor x5, x15, 93
	beq x0, x5, .LBB0_14
.LBB0_15:                               //  %sw.bb17
                                        //    in Loop: Header=BB0_13 Depth=2
	blt x15, x16, .LBB0_14
.LBB0_16:                               //  %do.body
                                        //    Parent Loop BB0_6 Depth=1
                                        //      Parent Loop BB0_13 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x17, x16, x11
	add x16, x16, 1
	sb x13, 0 ( x17 )
	blt x16, x15, .LBB0_16
.LBB0_7:                                //  %doswitch.loopexit
                                        //    in Loop: Header=BB0_13 Depth=2
	add x12, x12, 2
	lbu x15, 0 ( x12 )
	add x17, x12, 1
	xor x5, x15, 45
	beq x0, x5, .LBB0_13
.LBB0_9:                                //  %doswitch
                                        //    in Loop: Header=BB0_6 Depth=1
	beq x0, x15, .LBB0_12
.LBB0_10:                               //  %doswitch
                                        //    in Loop: Header=BB0_6 Depth=1
	xor x16, x15, 93
	mv x12, x17
	bltu x0, x16, .LBB0_6
.LBB0_11:                               //  %cleanup.loopexit1
	mv x12, x17
.LBB0_12:                               //  %cleanup
	mv x10, x12
	jr ra
.LBB0_17:                               //  %if.then9
	add x12, x12, -1
	mv x10, x12
	jr ra
.Lfunc_end0:
	.size	__sccl, .Lfunc_end0-__sccl
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
