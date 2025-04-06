	.text
	.file	"s_llround.c"
	.globl	llround                 //  -- Begin function llround
	.type	llround,@function
llround:                                //  @llround
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	mv x9, x0
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	blt x11, x9, .LBB0_1
.LBB0_2:                                //  %entry
	seqz fp, x0
	jal x0, .LBB0_3
.LBB0_1:
	add fp, x0, -1
.LBB0_3:                                //  %entry
	lui x10, %hi( 1048575 )
	add x10, x10, %lo( 1048575 )
	and x10, x10, x11
	lui x12, (1048576>>12)&1048575
	or x10, x12, x10
	srl x12, x11, 20&31
	and x19, x12, 2047
	add x12, x19, -1023
	add x13, x0, 19
	blt x13, x12, .LBB0_8
.LBB0_4:                                //  %if.then
	blt x12, x0, .LBB0_5
.LBB0_15:                               //  %if.else10
	lui x13, (524288>>12)&1048575
	add x11, x0, 1043
	srl x12, x13, x12
	sub x11, x11, x19
	add x10, x10, x12
	srl x10, x10, x11
	mv x11, x0
	jal x0, .LBB0_16
.LBB0_8:                                //  %if.else15
	add x13, x0, 62
	bltu x13, x12, .LBB0_14
.LBB0_9:                                //  %if.then18
	slti x11, x12, 52
	bltu x0, x11, .LBB0_11
.LBB0_10:                               //  %if.then21
	add x12, x19, -1043
	mv x11, x0
	jal __ashldi3
	add x12, x19, -1075
	sll x12, x18, x12
	or x10, x12, x10
	jal x0, .LBB0_16
.LBB0_14:                               //  %if.else49
	mv x10, x18
	jal __fixdfdi
	jal x0, .LBB0_17
.LBB0_5:                                //  %if.then7
	add x10, x0, -1
	beq x12, x10, .LBB0_7
.LBB0_6:                                //  %if.then7
	mv fp, x0
.LBB0_7:                                //  %if.then7
	sra x11, fp, 31&31
	mv x10, fp
	jal x0, .LBB0_17
.LBB0_11:                               //  %if.else28
	lui x11, %hi( -2147483648 )
	add x12, x19, -1043
	add x11, x11, %lo( -2147483648 )
	srl x11, x11, x12
	add x18, x18, x11
	sltu x11, x18, x11
	add x10, x11, x10
	mv x11, x9
	jal __ashldi3
	add x12, x0, 1043
	bgeu x12, x19, .LBB0_13
.LBB0_12:
	add x12, x0, 1075
	sub x12, x12, x19
	srl x9, x18, x12
.LBB0_13:                               //  %if.else28
	or x10, x9, x10
.LBB0_16:                               //  %if.end52
	sra x13, fp, 31&31
	mv x12, fp
	jal __muldi3
.LBB0_17:                               //  %cleanup
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	llround, .Lfunc_end0-llround
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
