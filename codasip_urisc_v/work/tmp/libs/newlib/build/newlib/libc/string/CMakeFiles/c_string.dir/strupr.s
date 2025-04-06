	.text
	.file	"strupr.c"
	.globl	strupr                  //  -- Begin function strupr
	.type	strupr,@function
strupr:                                 //  @strupr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lbu x11, 0 ( x10 )
	beq x0, x11, .LBB0_5
.LBB0_1:                                //  %for.body.preheader
	lui x13, %hi( _ctype_ )
	add x12, x10, 1
	add x13, x13, %lo( _ctype_ )
	add x14, x0, 2
	jal x0, .LBB0_2
.LBB0_4:                                //  %for.body
                                        //    in Loop: Header=BB0_2 Depth=1
	sb x11, -1 ( x12 )
	lbu x11, 0 ( x12 )
	add x15, x12, 1
	mv x12, x15
	beq x0, x11, .LBB0_5
.LBB0_2:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	and x15, x11, 255
	add x15, x15, x13
	lbu x15, 1 ( x15 )
	and x15, x15, 3
	bne x15, x14, .LBB0_4
.LBB0_3:                                //    in Loop: Header=BB0_2 Depth=1
	add x11, x11, -32
	jal x0, .LBB0_4
.LBB0_5:                                //  %for.end
	jr ra
.Lfunc_end0:
	.size	strupr, .Lfunc_end0-strupr
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
