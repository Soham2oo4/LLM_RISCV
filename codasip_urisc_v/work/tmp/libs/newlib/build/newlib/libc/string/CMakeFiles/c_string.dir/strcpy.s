	.text
	.file	"strcpy.c"
	.globl	strcpy                  //  -- Begin function strcpy
	.type	strcpy,@function
strcpy:                                 //  @strcpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	or x12, x10, x11
	and x12, x12, 3
	beq x0, x12, .LBB0_2
.LBB0_1:
	mv x12, x10
	jal x0, .LBB0_6
.LBB0_2:                                //  %if.then
	lw x13, 0 ( x11 )
	lui x12, %hi( -16843009 )
	add x14, x12, %lo( -16843009 )
	add x12, x14, x13
	xor x15, x13, -1
	and x12, x12, x15
	lui x15, %hi( -2139062144 )
	add x15, x15, %lo( -2139062144 )
	and x12, x15, x12
	beq x0, x12, .LBB0_4
.LBB0_3:
	mv x12, x10
	jal x0, .LBB0_6
.LBB0_4:                                //  %while.body.preheader
	mv x12, x10
.LBB0_5:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x13, 0 ( x12 )
	lw x13, 4 ( x11 )
	add x12, x12, 4
	add x11, x11, 4
	add x16, x14, x13
	xor x17, x13, -1
	and x16, x16, x17
	and x16, x15, x16
	beq x0, x16, .LBB0_5
.LBB0_6:                                //  %while.cond6
                                        //  =>This Inner Loop Header: Depth=1
	lbu x13, 0 ( x11 )
	add x11, x11, 1
	sb x13, 0 ( x12 )
	add x12, x12, 1
	bltu x0, x13, .LBB0_6
.LBB0_7:                                //  %while.end11
	jr ra
.Lfunc_end0:
	.size	strcpy, .Lfunc_end0-strcpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
