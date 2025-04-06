	.text
	.file	"sf_lround.c"
	.globl	lroundf                 //  -- Begin function lroundf
	.type	lroundf,@function
lroundf:                                //  @lroundf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	mv x12, x0
	blt x10, x12, .LBB0_1
.LBB0_2:                                //  %entry
	seqz x11, x0
	jal x0, .LBB0_3
.LBB0_1:
	add x11, x0, -1
.LBB0_3:                                //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	srl x13, x10, 23&31
	and x14, x13, 255
	add x13, x14, -127
	add x15, x0, 30
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	blt x15, x13, .LBB0_9
.LBB0_4:                                //  %if.then
	blt x13, x0, .LBB0_5
.LBB0_7:                                //  %if.else
	lui x12, %hi( 8388607 )
	add x12, x12, %lo( 8388607 )
	and x10, x12, x10
	lui x12, (8388608>>12)&1048575
	or x10, x12, x10
	slti x12, x13, 23
	bltu x0, x12, .LBB0_10
.LBB0_8:                                //  %if.then9
	add x12, x14, -150
	sll x10, x10, x12
	jal x0, .LBB0_11
.LBB0_9:                                //  %if.else16
	jal __fixsfsi
	jal x0, .LBB0_12
.LBB0_5:                                //  %if.then5
	add x10, x0, -1
	beq x13, x10, .LBB0_13
.LBB0_6:                                //  %if.then5
	mv x11, x12
.LBB0_13:                               //  %cleanup
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	mv x10, x11
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_10:                               //  %if.else11
	add x12, x0, 150
	sub x12, x12, x14
	lui x14, (4194304>>12)&1048575
	srl x13, x14, x13
	add x10, x10, x13
	srl x10, x10, x12
.LBB0_11:                               //  %if.end17
	jal __mulsi3
.LBB0_12:                               //  %cleanup
	mv x11, x10
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	mv x10, x11
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	lroundf, .Lfunc_end0-lroundf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
