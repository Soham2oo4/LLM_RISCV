	.text
	.file	"__adjust.c"
	.globl	__adjust                //  -- Begin function __adjust
	.type	__adjust,@function
__adjust:                               //  @__adjust
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	slti x14, x12, 309
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	bltu x0, x14, .LBB0_4
.LBB0_1:                                //  %if.then
	add x11, x0, 34
	mv x9, x0
	sw x11, 0 ( x10 )
	beq x13, x9, .LBB0_2
.LBB0_3:                                //  %if.then
	lui x10, %hi( -1048576 )
	add fp, x10, %lo( -1048576 )
	jal x0, .LBB0_13
.LBB0_4:                                //  %if.else
	add x14, x0, -309
	blt x14, x12, .LBB0_6
.LBB0_5:                                //  %if.then2
	add x11, x0, 34
	mv x9, x0
	sw x11, 0 ( x10 )
	mv fp, x9
	jal x0, .LBB0_13
.LBB0_2:
	lui fp, (2146435072>>12)&1048575
	jal x0, .LBB0_13
.LBB0_6:                                //  %if.end4
	lw fp, 4 ( x11 )
	mv x10, x0
	beq x13, x10, .LBB0_8
.LBB0_7:                                //  %if.end4
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor fp, x10, fp
.LBB0_8:                                //  %if.end4
	lw x9, 0 ( x11 )
	beq x0, x12, .LBB0_13
.LBB0_9:                                //  %if.end10
	blt x12, x0, .LBB0_10
.LBB0_11:                               //  %if.else16
	mv x10, x12
	jal __exp10
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __muldf3
	jal x0, .LBB0_12
.LBB0_10:                               //  %if.then12
	sub x10, x0, x12
	jal __exp10
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __divdf3
.LBB0_12:                               //  %cleanup
	mv x9, x10
	mv fp, x11
.LBB0_13:                               //  %cleanup
	mv x10, x9
	mv x11, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__adjust, .Lfunc_end0-__adjust
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
