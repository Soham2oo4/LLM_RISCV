	.text
	.file	"sf_nextafter.c"
	.globl	nextafterf              //  -- Begin function nextafterf
	.type	nextafterf,@function
nextafterf:                             //  @nextafterf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x9, x11
	and x19, x10, fp
	lui x18, (2139095040>>12)&1048575
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x18, x19, .LBB0_4
.LBB0_1:                                //  %entry
	lui x11, %hi( 2139095041 )
	and x10, x10, x9
	add x11, x11, %lo( 2139095041 )
	bgeu x10, x11, .LBB0_4
.LBB0_2:                                //  %if.end
	mv x10, fp
	mv x11, x9
	jal __eqsf2
	bltu x0, x10, .LBB0_7
.LBB0_3:
	mv x9, fp
	jal x0, .LBB0_6
.LBB0_4:                                //  %if.then
	mv x10, fp
	mv x11, x9
.LBB0_5:                                //  %cleanup
	jal __addsf3
	mv x9, x10
.LBB0_6:                                //  %cleanup
	mv x10, x9
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_7:                                //  %if.end11
	beq x0, x19, .LBB0_14
.LBB0_8:                                //  %if.end22
	add x10, x0, -1
	blt fp, x0, .LBB0_16
.LBB0_9:                                //  %if.then24
	slt x11, x9, fp
	bltu x0, x11, .LBB0_11
.LBB0_10:                               //  %if.end39
	seqz x10, x0
.LBB0_11:                               //  %if.end39
	add x9, fp, x10
	and x10, x18, x9
	beq x0, x10, .LBB0_17
.LBB0_12:                               //  %if.end39
	bne x10, x18, .LBB0_6
.LBB0_13:                               //  %if.then42
	mv x10, fp
	mv x11, fp
	jal x0, .LBB0_5
.LBB0_14:                               //  %do.body14
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	and x10, x10, x9
	or fp, x10, 1
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x11, fp
	mv x9, x10
	jal __eqsf2
	mv x11, x0
	bne x10, x11, .LBB0_3
	jal x0, .LBB0_6
.LBB0_16:                               //  %if.else30
	slt x11, x9, fp
	slt x12, x10, x9
	or x11, x11, x12
	beq x0, x11, .LBB0_10
	jal x0, .LBB0_11
.LBB0_17:                               //  %if.then46
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x11, fp
	jal __eqsf2
	jal x0, .LBB0_6
.Lfunc_end0:
	.size	nextafterf, .Lfunc_end0-nextafterf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
