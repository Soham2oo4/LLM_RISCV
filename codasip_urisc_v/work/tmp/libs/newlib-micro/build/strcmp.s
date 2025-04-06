	.text
	.file	"strcmp.c"
	.globl	strcmp                  //  -- Begin function strcmp
	.type	strcmp,@function
strcmp:                                 //  @strcmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lbu x13, 0 ( x10 )
	mv x12, x0
	beq x0, x13, .LBB0_5
.LBB0_1:                                //  %land.rhs.preheader
	add x10, x10, 1
.LBB0_2:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14, 0 ( x11 )
	and x15, x13, 255
	bne x15, x14, .LBB0_3
.LBB0_4:                                //  %while.body
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x13, 0 ( x10 )
	add x14, x10, 1
	add x11, x11, 1
	mv x10, x14
	bltu x0, x13, .LBB0_2
.LBB0_5:                                //  %while.end
	lbu x10, 0 ( x11 )
	and x11, x12, 255
	sub x10, x11, x10
	jr ra
.LBB0_3:
	mv x12, x13
	lbu x10, 0 ( x11 )
	and x11, x12, 255
	sub x10, x11, x10
	jr ra
.Lfunc_end0:
	.size	strcmp, .Lfunc_end0-strcmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
