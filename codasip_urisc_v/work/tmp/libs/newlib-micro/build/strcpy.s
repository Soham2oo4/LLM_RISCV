	.text
	.file	"strcpy.c"
	.globl	strcpy                  //  -- Begin function strcpy
	.type	strcpy,@function
strcpy:                                 //  @strcpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x0
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x14, x12, x11
	lbu x14, 0 ( x14 )
	add x13, x12, x10
	add x12, x12, 1
	sb x14, 0 ( x13 )
	bltu x0, x14, .LBB0_1
.LBB0_2:                                //  %while.end
	jr ra
.Lfunc_end0:
	.size	strcpy, .Lfunc_end0-strcpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
