	.text
	.file	"argz_next.c"
	.globl	argz_next               //  -- Begin function argz_next
	.type	argz_next,@function
argz_next:                              //  @argz_next
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x12, .LBB0_5
.LBB0_1:                                //  %while.cond.preheader
	.cfi_def_cfa 2, 0
.LBB0_2:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x13, 0 ( x12 )
	add x12, x12, 1
	bltu x0, x13, .LBB0_2
.LBB0_3:                                //  %while.end
	add x10, x11, x10
	bltu x12, x10, .LBB0_7
.LBB0_4:                                //  %while.end
	mv x12, x0
	mv x10, x12
	jr ra
.LBB0_5:                                //  %if.else7
	mv x12, x0
	beq x11, x12, .LBB0_7
.LBB0_6:                                //  %if.else7
	mv x12, x10
.LBB0_7:                                //  %return
	mv x10, x12
	jr ra
.Lfunc_end0:
	.size	argz_next, .Lfunc_end0-argz_next
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
