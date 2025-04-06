	.text
	.file	"wcpncpy.c"
	.globl	wcpncpy                 //  -- Begin function wcpncpy
	.type	wcpncpy,@function
wcpncpy:                                //  @wcpncpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x0
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x12, .LBB0_2
.LBB0_3:                                //  %while.body
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x14, 0 ( x11 )
	add x11, x11, 4
	add x12, x12, -1
	sw x14, 0 ( x10 )
	add x10, x10, 4
	bltu x0, x14, .LBB0_1
.LBB0_4:                                //  %while.end
	add x11, x10, -4
	beq x0, x12, .LBB0_7
.LBB0_5:                                //  %while.body6.preheader
	mv x14, x0
.LBB0_6:                                //  %while.body6
                                        //  =>This Inner Loop Header: Depth=1
	sw x0, 0 ( x10 )
	add x10, x10, 4
	add x14, x14, 1
	bne x12, x14, .LBB0_6
.LBB0_7:                                //  %while.end8
	beq x11, x13, .LBB0_9
.LBB0_8:                                //  %while.end8
	mv x10, x11
.LBB0_9:                                //  %while.end8
	jr ra
.LBB0_2:
	mv x11, x13
	bne x11, x13, .LBB0_8
	jal x0, .LBB0_9
.Lfunc_end0:
	.size	wcpncpy, .Lfunc_end0-wcpncpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
