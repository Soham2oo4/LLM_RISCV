	.text
	.file	"sf_llrint.c"
	.globl	llrintf                 //  -- Begin function llrintf
	.type	llrintf,@function
llrintf:                                //  @llrintf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	mv x12, x10
	srl x10, x12, 23&31
	and x13, x10, 255
	add x14, x13, -127
	add x10, x0, 62
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 20 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -12
	blt x10, x14, .LBB0_6
.LBB0_1:                                //  %if.then
	mv x10, x0
	slti x15, x14, -1
	mv x11, x10
	bltu x0, x15, .LBB0_11
.LBB0_2:                                //  %if.else
	slt x9, x12, x0
	slti x10, x14, 23
	bltu x0, x10, .LBB0_4
.LBB0_3:                                //  %if.then5
	lui x10, %hi( 8388607 )
	add x10, x10, %lo( 8388607 )
	and x10, x10, x12
	lui x11, (8388608>>12)&1048575
	or x10, x11, x10
	add x12, x13, -150
	mv x11, x0
	jal __ashldi3
	mv x12, x10
	mv x10, x0
	beq x9, x10, .LBB0_9
.LBB0_10:                               //  %if.end33
	sub x10, x0, x12
	snez x12, x12
	add x11, x12, x11
	sub x11, x0, x11
	jal x0, .LBB0_11
.LBB0_6:                                //  %if.else31
	mv x10, x12
	jal __fixsfdi
.LBB0_11:                               //  %cleanup
	lw fp, 20 ( sp )                //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_4:                                //  %if.else8
	lui x11, %hi( TWO23 )
	sll x10, x9, 2&31
	add x11, x11, %lo( TWO23 )
	add x10, x10, x11
	lw fp, 0 ( x10 )
	mv x11, x12
	mv x10, fp
	jal __addsf3
	sw x10, 16 ( sp )
	lw x10, 16 ( sp )
	mv x11, fp
	jal __subsf3
	lui x11, %hi( 2147483647 )
	add x11, x11, %lo( 2147483647 )
	and x11, x11, x10
	beq x0, x11, .LBB0_5
.LBB0_7:                                //  %if.end
	srl x11, x10, 23&31
	and x11, x11, 255
	add x12, x0, 150
	sub x11, x12, x11
	lui x12, %hi( 8388607 )
	add x12, x12, %lo( 8388607 )
	and x10, x12, x10
	lui x12, (8388608>>12)&1048575
	or x10, x12, x10
	srl x12, x10, x11
	mv x11, x0
	mv x10, x0
	bne x9, x10, .LBB0_10
.LBB0_9:
	mv x10, x12
	jal x0, .LBB0_11
.LBB0_5:
	mv x10, x0
	mv x11, x10
	jal x0, .LBB0_11
.Lfunc_end0:
	.size	llrintf, .Lfunc_end0-llrintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	TWO23,@object           //  @TWO23
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
TWO23:
	.long	1258291200              //  float 8388608
	.long	3405774848              //  float -8388608
	.size	TWO23, 8


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
