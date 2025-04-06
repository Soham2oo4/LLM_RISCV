	.text
	.file	"wcschr.c"
	.globl	wcschr                  //  -- Begin function wcschr
	.type	wcschr,@function
wcschr:                                 //  @wcschr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x0
.LBB0_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x13, 0 ( x10 )
	beq x13, x11, .LBB0_4
.LBB0_2:                                //  %do.cond
                                        //    in Loop: Header=BB0_1 Depth=1
	add x10, x10, 4
	bltu x0, x13, .LBB0_1
.LBB0_3:
	mv x10, x12
.LBB0_4:                                //  %cleanup
	jr ra
.Lfunc_end0:
	.size	wcschr, .Lfunc_end0-wcschr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
