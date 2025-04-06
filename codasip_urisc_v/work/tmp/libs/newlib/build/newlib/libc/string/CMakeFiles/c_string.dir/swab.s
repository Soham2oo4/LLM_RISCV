	.text
	.file	"swab.c"
	.globl	swab                    //  -- Begin function swab
	.type	swab,@function
swab:                                   //  @swab
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	slti x13, x12, 2
	bltu x0, x13, .LBB0_1
.LBB0_2:                                //  %for.body.preheader
	mv x13, x0
.LBB0_3:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x15, x13, x10
	lb x16, 1 ( x15 )
	lb x15, 0 ( x15 )
	add x14, x13, x11
	sb x16, 0 ( x14 )
	sb x15, 1 ( x14 )
	add x14, x13, 3
	add x13, x13, 2
	blt x14, x12, .LBB0_3
.LBB0_4:                                //  %for.end.loopexit
	add x10, x13, 1
	beq x10, x12, .LBB0_6
	jal x0, .LBB0_7
.LBB0_1:
	seqz x10, x0
	bne x10, x12, .LBB0_7
.LBB0_6:                                //  %if.then
	add x10, x11, x12
	sb x0, -1 ( x10 )
.LBB0_7:                                //  %if.end
	jr ra
.Lfunc_end0:
	.size	swab, .Lfunc_end0-swab
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
