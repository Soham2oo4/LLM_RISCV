	.text
	.file	"s_lround.c"
	.globl	lround                  //  -- Begin function lround
	.type	lround,@function
lround:                                 //  @lround
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	mv x13, x0
	blt x11, x13, .LBB0_1
.LBB0_2:                                //  %entry
	seqz x12, x0
	jal x0, .LBB0_3
.LBB0_1:
	add x12, x0, -1
.LBB0_3:                                //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lui x14, %hi( 1048575 )
	add x14, x14, %lo( 1048575 )
	and x14, x14, x11
	lui x15, (1048576>>12)&1048575
	or x14, x15, x14
	srl x15, x11, 20&31
	and x15, x15, 2047
	add x16, x15, -1023
	add x17, x0, 19
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	blt x17, x16, .LBB0_7
.LBB0_4:                                //  %if.then
	blt x16, x0, .LBB0_5
.LBB0_12:                               //  %if.else10
	lui x11, (524288>>12)&1048575
	add x10, x0, 1043
	srl x11, x11, x16
	sub x10, x10, x15
	add x11, x14, x11
	srl x10, x11, x10
	jal x0, .LBB0_13
.LBB0_7:                                //  %if.else14
	add x17, x0, 30
	bltu x17, x16, .LBB0_11
.LBB0_8:                                //  %if.else23
	lui x16, %hi( -2147483648 )
	add x11, x15, -1043
	add x16, x16, %lo( -2147483648 )
	srl x16, x16, x11
	add x10, x10, x16
	add x17, x0, 1043
	bgeu x17, x15, .LBB0_10
.LBB0_9:
	add x13, x0, 1075
	sub x13, x13, x15
	srl x13, x10, x13
.LBB0_10:                               //  %if.else23
	sltu x10, x10, x16
	add x10, x10, x14
	sll x10, x10, x11
	or x10, x13, x10
.LBB0_13:                               //  %if.end41
	mv x11, x12
	jal __mulsi3
	jal x0, .LBB0_14
.LBB0_11:                               //  %if.else39
	jal __fixdfsi
.LBB0_14:                               //  %cleanup
	mv x12, x10
.LBB0_15:                               //  %cleanup
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	mv x10, x12
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_5:                                //  %if.then7
	add x10, x0, -1
	beq x16, x10, .LBB0_15
.LBB0_6:                                //  %if.then7
	mv x12, x0
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	mv x10, x12
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	lround, .Lfunc_end0-lround
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
