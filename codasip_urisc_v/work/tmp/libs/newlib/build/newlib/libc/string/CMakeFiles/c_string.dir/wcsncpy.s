	.text
	.file	"wcsncpy.c"
	.globl	wcsncpy                 //  -- Begin function wcsncpy
	.type	wcsncpy,@function
wcsncpy:                                //  @wcsncpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x0
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x12, .LBB0_6
.LBB0_2:                                //  %while.body
                                        //    in Loop: Header=BB0_1 Depth=1
	add x15, x13, x11
	lw x15, 0 ( x15 )
	add x14, x13, x10
	add x13, x13, 4
	add x12, x12, -1
	sw x15, 0 ( x14 )
	bltu x0, x15, .LBB0_1
.LBB0_3:                                //  %while.end
	beq x0, x12, .LBB0_6
.LBB0_4:                                //  %while.body6.preheader
	add x11, x13, x10
	mv x13, x0
.LBB0_5:                                //  %while.body6
                                        //  =>This Inner Loop Header: Depth=1
	sw x0, 0 ( x11 )
	add x11, x11, 4
	add x13, x13, 1
	bne x12, x13, .LBB0_5
.LBB0_6:                                //  %while.end8
	jr ra
.Lfunc_end0:
	.size	wcsncpy, .Lfunc_end0-wcsncpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
