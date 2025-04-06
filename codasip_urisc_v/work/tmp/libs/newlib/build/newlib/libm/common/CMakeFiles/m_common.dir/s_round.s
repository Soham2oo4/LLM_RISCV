	.text
	.file	"s_round.c"
	.globl	round                   //  -- Begin function round
	.type	round,@function
round:                                  //  @round
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x10
	srl x10, x9, 20&31
	and x10, x10, 2047
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18, x10, -1023
	add x11, x0, 19
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	blt x11, x18, .LBB0_7
.LBB0_1:                                //  %if.then
	blt x18, x0, .LBB0_2
.LBB0_5:                                //  %if.else
	lui x10, %hi( 1048575 )
	add x10, x10, %lo( 1048575 )
	srl x10, x10, x18
	and x10, x9, x10
	or x10, fp, x10
	beq x0, x10, .LBB0_14
.LBB0_6:                                //  %cleanup.thread
	lui x10, %hi( -1048576 )
	lui x11, (524288>>12)&1048575
	add x10, x10, %lo( -1048576 )
	srl x11, x11, x18
	sra x10, x10, x18
	add x11, x9, x11
	and x10, x10, x11
	jal x0, .LBB0_4
.LBB0_7:                                //  %if.else18
	slti x11, x18, 52
	bltu x0, x11, .LBB0_11
.LBB0_8:                                //  %if.then20
	mv x10, fp
	mv x13, x9
	mv x11, x9
	mv x12, fp
	jal __adddf3
	add x12, x0, 1024
	beq x18, x12, .LBB0_10
.LBB0_9:                                //  %if.then20
	mv x11, x9
	mv x10, fp
	jal x0, .LBB0_10
.LBB0_11:                               //  %if.else25
	add x11, x10, -1043
	add x12, x0, -1
	srl x11, x12, x11
	and x12, fp, x11
	beq x0, x12, .LBB0_14
.LBB0_12:                               //  %cleanup41.thread
	add x12, x0, 1074
	sub x10, x12, x10
	seqz x12, x0
	sll x10, x12, x10
	add x12, fp, x10
	sltu x10, x12, x10
	xor x11, x11, -1
	and fp, x11, x12
	add x10, x9, x10
	mv x11, x0
	jal x0, .LBB0_13
.LBB0_2:                                //  %if.then5
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	and x10, x10, x9
	add x11, x0, -1
	bne x18, x11, .LBB0_4
.LBB0_3:
	lui x11, (1072693248>>12)&1048575
	or x10, x11, x10
.LBB0_4:                                //  %if.then5
	mv fp, x0
	mv x11, fp
.LBB0_13:                               //  %do.body47
	or x9, x11, x10
.LBB0_14:                               //  %cleanup55
	mv x10, fp
	mv x11, x9
.LBB0_10:                               //  %if.then20
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	round, .Lfunc_end0-round
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
