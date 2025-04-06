	.text
	.file	"strlcat.c"
	.globl	strlcat                 //  -- Begin function strlcat
	.type	strlcat,@function
strlcat:                                //  @strlcat
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x13, x10
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	beq x0, x12, .LBB0_4
.LBB0_1:                                //  %land.rhs.preheader
	mv x14, x12
	mv x13, x10
.LBB0_2:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lbu x15, 0 ( x13 )
	beq x0, x15, .LBB0_4
.LBB0_3:                                //  %while.body
                                        //    in Loop: Header=BB0_2 Depth=1
	add x14, x14, -1
	add x13, x13, 1
	bltu x0, x14, .LBB0_2
.LBB0_4:                                //  %while.end
	sub fp, x13, x10
	sub x10, x12, fp
	beq x0, x10, .LBB0_7
.LBB0_5:                                //  %while.cond5.preheader
	lbu x15, 0 ( x11 )
	beq x0, x15, .LBB0_6
.LBB0_8:
	seqz x14, x0
	mv x12, x11
	xor x16, x10, 1
	beq x0, x16, .LBB0_10
.LBB0_11:                               //  %if.then12
	sb x15, 0 ( x13 )
	add x10, x10, -1
	add x13, x13, 1
	lbu x15, 1 ( x12 )
	add x12, x12, 1
	beq x0, x15, .LBB0_13
.LBB0_9:                                //  %while.body9
	xor x16, x10, 1
	bltu x0, x16, .LBB0_11
.LBB0_10:
	mv x10, x14
	lbu x15, 1 ( x12 )
	add x12, x12, 1
	bltu x0, x15, .LBB0_9
	jal x0, .LBB0_13
.LBB0_7:                                //  %if.then
	mv x10, x11
	jal strlen
	jal x0, .LBB0_14
.LBB0_6:
	mv x12, x11
.LBB0_13:                               //  %while.end17
	sub x10, x12, x11
	sb x0, 0 ( x13 )
.LBB0_14:                               //  %cleanup
	add x10, fp, x10
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	strlcat, .Lfunc_end0-strlcat
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
