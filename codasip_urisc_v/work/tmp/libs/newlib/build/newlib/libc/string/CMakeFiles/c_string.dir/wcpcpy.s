	.text
	.file	"wcpcpy.c"
	.globl	wcpcpy                  //  -- Begin function wcpcpy
	.type	wcpcpy,@function
wcpcpy:                                 //  @wcpcpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x10, x10, -4
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x12, 0 ( x11 )
	add x11, x11, 4
	sw x12, 4 ( x10 )
	add x10, x10, 4
	bltu x0, x12, .LBB0_1
.LBB0_2:                                //  %while.end
	jr ra
.Lfunc_end0:
	.size	wcpcpy, .Lfunc_end0-wcpcpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
