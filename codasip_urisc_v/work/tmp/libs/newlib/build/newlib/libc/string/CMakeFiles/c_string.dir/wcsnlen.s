	.text
	.file	"wcsnlen.c"
	.globl	wcsnlen                 //  -- Begin function wcsnlen
	.type	wcsnlen,@function
wcsnlen:                                //  @wcsnlen
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x10
	beq x0, x11, .LBB0_5
.LBB0_1:                                //  %entry
	lw x13, 0 ( x10 )
	mv x12, x10
	beq x0, x13, .LBB0_5
.LBB0_2:                                //  %while.body.preheader
	seqz x14, x13
	mv x13, x10
.LBB0_3:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	xor x12, x14, -1
	and x12, x12, 1
	sub x11, x11, x12
	add x12, x13, 4
	beq x0, x11, .LBB0_5
.LBB0_4:                                //  %while.body
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x15, 4 ( x13 )
	mv x13, x12
	seqz x14, x15
	bltu x0, x15, .LBB0_3
.LBB0_5:                                //  %while.end
	sub x10, x12, x10
	sra x10, x10, 2&31
	jr ra
.Lfunc_end0:
	.size	wcsnlen, .Lfunc_end0-wcsnlen
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
