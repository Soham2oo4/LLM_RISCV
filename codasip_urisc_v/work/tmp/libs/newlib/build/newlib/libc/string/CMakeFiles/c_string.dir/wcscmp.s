	.text
	.file	"wcscmp.c"
	.globl	wcscmp                  //  -- Begin function wcscmp
	.type	wcscmp,@function
wcscmp:                                 //  @wcscmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x10
	mv x10, x0
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x14, 0 ( x11 )
	lw x13, 0 ( x12 )
	bne x13, x14, .LBB0_3
.LBB0_2:                                //  %while.body
                                        //    in Loop: Header=BB0_1 Depth=1
	add x12, x12, 4
	add x11, x11, 4
	bltu x0, x13, .LBB0_1
.LBB0_4:                                //  %return
	jr ra
.LBB0_3:                                //  %while.end
	sub x10, x13, x14
	jr ra
.Lfunc_end0:
	.size	wcscmp, .Lfunc_end0-wcscmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
