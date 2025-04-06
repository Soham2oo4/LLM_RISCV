	.text
	.file	"__atexit.c"
	.globl	__register_exitproc     //  -- Begin function __register_exitproc
	.type	__register_exitproc,@function
__register_exitproc:                    //  @__register_exitproc
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x14, %hi( _global_impure_ptr )
	add x14, x14, %lo( _global_impure_ptr )
	lw x15, 0 ( x14 )
	lw x14, 328 ( x15 )
	beq x0, x14, .LBB0_1
.LBB0_2:                                //  %if.end
	lw x15, 4 ( x14 )
	add x16, x0, 31
	bge x16, x15, .LBB0_4
.LBB0_3:
	add x10, x0, -1
	jr ra
.LBB0_1:                                //  %if.then
	add x14, x15, 332
	sw x14, 328 ( x15 )
	lw x15, 4 ( x14 )
	add x16, x0, 31
	blt x16, x15, .LBB0_3
.LBB0_4:                                //  %if.end4
	sll x16, x15, 2&31
	beq x0, x10, .LBB0_7
.LBB0_5:                                //  %if.then6
	add x17, x16, x14
	sw x13, 264 ( x17 )
	lw x13, 392 ( x14 )
	sw x12, 136 ( x17 )
	seqz x12, x0
	sll x12, x12, x15
	or x13, x12, x13
	xor x10, x10, 2
	sw x13, 392 ( x14 )
	bltu x0, x10, .LBB0_7
.LBB0_6:                                //  %if.then12
	lw x10, 396 ( x14 )
	or x10, x12, x10
	sw x10, 396 ( x14 )
.LBB0_7:                                //  %if.end17
	add x10, x16, x14
	sw x11, 8 ( x10 )
	add x10, x15, 1
	sw x10, 4 ( x14 )
	mv x10, x0
	jr ra
.Lfunc_end0:
	.size	__register_exitproc, .Lfunc_end0-__register_exitproc
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
