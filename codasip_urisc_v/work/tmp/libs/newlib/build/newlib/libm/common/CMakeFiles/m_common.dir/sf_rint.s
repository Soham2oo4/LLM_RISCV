	.text
	.file	"sf_rint.c"
	.globl	rintf                   //  -- Begin function rintf
	.type	rintf,@function
rintf:                                  //  @rintf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 16 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x10
	lui x10, %hi( 2147483647 )
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18, x10, %lo( 2147483647 )
	and x10, x18, fp
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	srl x9, x10, 23&31
	add x11, x9, -127
	add x12, x0, 22
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	blt x12, x11, .LBB0_8
.LBB0_1:                                //  %if.then
	beq x0, x10, .LBB0_10
.LBB0_2:                                //  %if.end
	slt x10, fp, x0
	blt x11, x0, .LBB0_3
.LBB0_4:                                //  %if.else
	lui x12, %hi( 8388607 )
	add x12, x12, %lo( 8388607 )
	srl x12, x12, x11
	and x13, fp, x12
	beq x0, x13, .LBB0_10
.LBB0_5:                                //  %if.end38
	srl x12, x12, 1&31
	and x13, fp, x12
	beq x0, x13, .LBB0_7
.LBB0_6:                                //  %if.then42
	xor x12, x12, -1
	lui x13, (2097152>>12)&1048575
	srl x11, x13, x11
	and x12, fp, x12
	or fp, x11, x12
.LBB0_7:                                //  %do.body54
	lui x11, %hi( TWO23 )
	sll x10, x10, 2&31
	add x11, x11, %lo( TWO23 )
	add x10, x10, x11
	lw x9, 0 ( x10 )
	mv x11, fp
	mv x10, x9
	jal __addsf3
	sw x10, 12 ( sp )
	lw x10, 12 ( sp )
	mv x11, x9
	jal __subsf3
	jal x0, .LBB0_9
.LBB0_8:                                //  %if.else48
	mv x10, fp
	mv x11, fp
	jal __addsf3
	add x11, x0, 255
	bltu x9, x11, .LBB0_10
.LBB0_9:                                //  %if.else48
	mv fp, x10
	jal x0, .LBB0_10
.LBB0_3:                                //  %if.then6
	lui x11, %hi( 8388607 )
	add x11, x11, %lo( 8388607 )
	and x11, x11, fp
	sub x11, x0, x11
	srl x11, x11, 9&31
	lui x12, (4194304>>12)&1048575
	and x11, x12, x11
	lui x12, %hi( -1048576 )
	add x12, x12, %lo( -1048576 )
	and x12, x12, fp
	or x11, x12, x11
	lui x12, %hi( TWO23 )
	sll x10, x10, 2&31
	add x12, x12, %lo( TWO23 )
	add x10, x10, x12
	lw x9, 0 ( x10 )
	mv x10, x9
	jal __addsf3
	sw x10, 12 ( sp )
	lw x10, 12 ( sp )
	mv x11, x9
	jal __subsf3
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	and x11, x11, fp
	and x10, x18, x10
	or fp, x11, x10
.LBB0_10:                               //  %cleanup
	mv x10, fp
	lw fp, 16 ( sp )                //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	rintf, .Lfunc_end0-rintf
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
