	.text
	.file	"wcslcpy.c"
	.globl	wcslcpy                 //  -- Begin function wcslcpy
	.type	wcslcpy,@function
wcslcpy:                                //  @wcslcpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x11
	beq x0, x12, .LBB0_6
.LBB0_1:                                //  %land.lhs.true
	mv x13, x11
	add x12, x12, -1
	beq x0, x12, .LBB0_5
.LBB0_3:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x14, 0 ( x13 )
	sw x14, 0 ( x10 )
	beq x0, x14, .LBB0_7
.LBB0_4:                                //  %do.cond
                                        //    in Loop: Header=BB0_3 Depth=1
	add x10, x10, 4
	add x13, x13, 4
	add x12, x12, -1
	bltu x0, x12, .LBB0_3
.LBB0_5:                                //  %if.then11
	sw x0, 0 ( x10 )
.LBB0_6:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x13 )
	add x13, x13, 4
	bltu x0, x10, .LBB0_6
.LBB0_8:                                //  %if.end14
	sub x10, x13, x11
	sra x10, x10, 2&31
	add x10, x10, -1
	jr ra
.LBB0_7:                                //  %if.end14.loopexit1
	add x13, x13, 4
	sub x10, x13, x11
	sra x10, x10, 2&31
	add x10, x10, -1
	jr ra
.Lfunc_end0:
	.size	wcslcpy, .Lfunc_end0-wcslcpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
