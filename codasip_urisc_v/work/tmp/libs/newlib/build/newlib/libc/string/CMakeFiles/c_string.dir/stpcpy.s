	.text
	.file	"stpcpy.c"
	.globl	stpcpy                  //  -- Begin function stpcpy
	.type	stpcpy,@function
stpcpy:                                 //  @stpcpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	or x12, x10, x11
	and x12, x12, 3
	bltu x0, x12, .LBB0_3
.LBB0_1:                                //  %if.then
	lw x12, 0 ( x11 )
	lui x13, %hi( -16843009 )
	add x13, x13, %lo( -16843009 )
	add x14, x13, x12
	xor x15, x12, -1
	and x15, x14, x15
	lui x14, %hi( -2139062144 )
	add x14, x14, %lo( -2139062144 )
	and x15, x14, x15
	bltu x0, x15, .LBB0_3
.LBB0_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x12, 0 ( x10 )
	lw x12, 4 ( x11 )
	add x10, x10, 4
	add x11, x11, 4
	add x15, x13, x12
	xor x16, x12, -1
	and x15, x15, x16
	and x15, x14, x15
	beq x0, x15, .LBB0_2
.LBB0_3:                                //  %while.cond6.preheader
	add x10, x10, -1
.LBB0_4:                                //  %while.cond6
                                        //  =>This Inner Loop Header: Depth=1
	lbu x12, 0 ( x11 )
	add x11, x11, 1
	sb x12, 1 ( x10 )
	add x10, x10, 1
	bltu x0, x12, .LBB0_4
.LBB0_5:                                //  %while.end11
	jr ra
.Lfunc_end0:
	.size	stpcpy, .Lfunc_end0-stpcpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
