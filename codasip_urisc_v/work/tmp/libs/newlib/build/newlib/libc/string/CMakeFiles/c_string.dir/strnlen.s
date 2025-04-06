	.text
	.file	"strnlen.c"
	.globl	strnlen                 //  -- Begin function strnlen
	.type	strnlen,@function
strnlen:                                //  @strnlen
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x10
	beq x0, x11, .LBB0_4
.LBB0_1:                                //  %land.rhs.preheader
	mv x12, x10
.LBB0_2:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lbu x13, 0 ( x12 )
	beq x0, x13, .LBB0_4
.LBB0_3:                                //  %while.body
                                        //    in Loop: Header=BB0_2 Depth=1
	add x11, x11, -1
	add x12, x12, 1
	bltu x0, x11, .LBB0_2
.LBB0_4:                                //  %while.end
	sub x10, x12, x10
	jr ra
.Lfunc_end0:
	.size	strnlen, .Lfunc_end0-strnlen
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
