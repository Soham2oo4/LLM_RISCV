	.text
	.file	"strchr.c"
	.globl	strchr                  //  -- Begin function strchr
	.type	strchr,@function
strchr:                                 //  @strchr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x13, x10, -1
	and x11, x11, 255
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x12, 1 ( x13 )
	add x10, x13, 1
	beq x12, x11, .LBB0_3
.LBB0_2:                                //  %while.cond
                                        //    in Loop: Header=BB0_1 Depth=1
	mv x13, x10
	bltu x0, x12, .LBB0_1
.LBB0_3:                                //  %while.end
	beq x12, x11, .LBB0_5
.LBB0_4:                                //  %while.end
	mv x10, x0
.LBB0_5:                                //  %while.end
	jr ra
.Lfunc_end0:
	.size	strchr, .Lfunc_end0-strchr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
