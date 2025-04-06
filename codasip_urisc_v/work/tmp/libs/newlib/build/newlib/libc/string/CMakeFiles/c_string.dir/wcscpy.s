	.text
	.file	"wcscpy.c"
	.globl	wcscpy                  //  -- Begin function wcscpy
	.type	wcscpy,@function
wcscpy:                                 //  @wcscpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x12, 0 ( x11 )
	mv x13, x10
	sw x0, 0 ( x10 )
	beq x0, x12, .LBB0_3
.LBB0_1:                                //  %while.body.preheader
	add x11, x11, 4
	mv x13, x10
.LBB0_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x12, 0 ( x13 )
	lw x12, 0 ( x11 )
	add x14, x11, 4
	add x13, x13, 4
	mv x11, x14
	bltu x0, x12, .LBB0_2
.LBB0_3:                                //  %while.end
	sw x0, 0 ( x13 )
	jr ra
.Lfunc_end0:
	.size	wcscpy, .Lfunc_end0-wcscpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
