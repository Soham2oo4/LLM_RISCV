	.text
	.file	"wmemcmp.c"
	.globl	wmemcmp                 //  -- Begin function wmemcmp
	.type	wmemcmp,@function
wmemcmp:                                //  @wmemcmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x10
	mv x10, x0
	beq x0, x12, .LBB0_6
.LBB0_1:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x14, 0 ( x11 )
	lw x15, 0 ( x13 )
	bne x15, x14, .LBB0_2
.LBB0_5:                                //  %if.end
                                        //    in Loop: Header=BB0_1 Depth=1
	add x11, x11, 4
	add x13, x13, 4
	add x12, x12, -1
	bltu x0, x12, .LBB0_1
.LBB0_6:                                //  %cleanup
	jr ra
.LBB0_2:                                //  %if.then
	blt x14, x15, .LBB0_3
.LBB0_4:                                //  %if.then
	add x10, x0, -1
	jr ra
.LBB0_3:
	seqz x10, x0
	jr ra
.Lfunc_end0:
	.size	wmemcmp, .Lfunc_end0-wmemcmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
