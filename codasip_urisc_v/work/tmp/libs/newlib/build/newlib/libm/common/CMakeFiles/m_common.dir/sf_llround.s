	.text
	.file	"sf_llround.c"
	.globl	llroundf                //  -- Begin function llroundf
	.type	llroundf,@function
llroundf:                               //  @llroundf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x11, x0
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	blt x10, x11, .LBB0_1
.LBB0_2:                                //  %entry
	seqz fp, x0
	jal x0, .LBB0_3
.LBB0_1:
	add fp, x0, -1
.LBB0_3:                                //  %entry
	srl x12, x10, 23&31
	and x13, x12, 255
	add x12, x13, -127
	add x14, x0, 62
	blt x14, x12, .LBB0_10
.LBB0_4:                                //  %if.then
	blt x12, x0, .LBB0_5
.LBB0_8:                                //  %if.else
	lui x14, %hi( 8388607 )
	add x14, x14, %lo( 8388607 )
	and x10, x14, x10
	lui x14, (8388608>>12)&1048575
	or x10, x14, x10
	slti x14, x12, 23
	bltu x0, x14, .LBB0_11
.LBB0_9:                                //  %if.then10
	add x12, x13, -150
	mv x11, x0
	jal __ashldi3
	jal x0, .LBB0_12
.LBB0_10:                               //  %if.else19
	jal __fixsfdi
	jal x0, .LBB0_13
.LBB0_5:                                //  %if.then5
	add x10, x0, -1
	beq x12, x10, .LBB0_7
.LBB0_6:                                //  %if.then5
	mv fp, x0
.LBB0_7:                                //  %if.then5
	sra x11, fp, 31&31
	jal x0, .LBB0_14
.LBB0_11:                               //  %if.else13
	add x14, x0, 150
	sub x13, x14, x13
	lui x14, (4194304>>12)&1048575
	srl x12, x14, x12
	add x10, x10, x12
	srl x10, x10, x13
.LBB0_12:                               //  %if.end21
	sra x13, fp, 31&31
	mv x12, fp
	jal __muldi3
.LBB0_13:                               //  %cleanup
	mv fp, x10
.LBB0_14:                               //  %cleanup
	mv x10, fp
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	llroundf, .Lfunc_end0-llroundf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
