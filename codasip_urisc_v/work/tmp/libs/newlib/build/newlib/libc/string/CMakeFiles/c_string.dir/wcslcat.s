	.text
	.file	"wcslcat.c"
	.globl	wcslcat                 //  -- Begin function wcslcat
	.type	wcslcat,@function
wcslcat:                                //  @wcslcat
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
	beq x0, x12, .LBB0_5
.LBB0_1:                                //  %entry
	lw x14, 0 ( x10 )
	mv x13, x10
	beq x0, x14, .LBB0_5
.LBB0_2:                                //  %while.body.preheader
	seqz x15, x14
	mv x14, x12
	mv x16, x10
.LBB0_3:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	xor x13, x15, -1
	and x13, x13, 1
	sub x14, x14, x13
	add x13, x16, 4
	beq x0, x14, .LBB0_5
.LBB0_4:                                //  %while.body
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x17, 4 ( x16 )
	mv x16, x13
	seqz x15, x17
	bltu x0, x17, .LBB0_3
.LBB0_5:                                //  %while.end
	sub x10, x13, x10
	sra fp, x10, 2&31
	sub x10, x12, fp
	beq x0, x10, .LBB0_8
.LBB0_6:                                //  %while.cond3.preheader
	lw x15, 0 ( x11 )
	beq x0, x15, .LBB0_7
.LBB0_9:
	seqz x14, x0
	mv x12, x11
	xor x16, x10, 1
	beq x0, x16, .LBB0_11
.LBB0_12:                               //  %if.then7
	sw x15, 0 ( x13 )
	add x10, x10, -1
	add x13, x13, 4
	lw x15, 4 ( x12 )
	add x12, x12, 4
	beq x0, x15, .LBB0_14
.LBB0_10:                               //  %while.body5
	xor x16, x10, 1
	bltu x0, x16, .LBB0_12
.LBB0_11:
	mv x10, x14
	lw x15, 4 ( x12 )
	add x12, x12, 4
	bltu x0, x15, .LBB0_10
	jal x0, .LBB0_14
.LBB0_8:                                //  %if.then
	mv x10, x11
	jal wcslen
	jal x0, .LBB0_15
.LBB0_7:
	mv x12, x11
.LBB0_14:                               //  %while.end12
	sub x10, x12, x11
	sra x10, x10, 2&31
	sw x0, 0 ( x13 )
.LBB0_15:                               //  %cleanup
	add x10, fp, x10
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	wcslcat, .Lfunc_end0-wcslcat
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
