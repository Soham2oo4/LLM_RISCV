	.text
	.file	"wcsncmp.c"
	.globl	wcsncmp                 //  -- Begin function wcsncmp
	.type	wcsncmp,@function
wcsncmp:                                //  @wcsncmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x10
	mv x10, x0
	beq x0, x12, .LBB0_5
.LBB0_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x15, 0 ( x11 )
	lw x14, 0 ( x13 )
	bne x14, x15, .LBB0_2
.LBB0_3:                                //  %if.end4
                                        //    in Loop: Header=BB0_1 Depth=1
	beq x0, x14, .LBB0_5
.LBB0_4:                                //  %do.cond
                                        //    in Loop: Header=BB0_1 Depth=1
	add x11, x11, 4
	add x13, x13, 4
	add x12, x12, -1
	bltu x0, x12, .LBB0_1
.LBB0_5:                                //  %return
	jr ra
.LBB0_2:                                //  %if.then2
	sub x10, x14, x15
	jr ra
.Lfunc_end0:
	.size	wcsncmp, .Lfunc_end0-wcsncmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
