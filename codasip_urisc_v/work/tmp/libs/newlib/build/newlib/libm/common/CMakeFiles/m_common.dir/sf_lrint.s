	.text
	.file	"sf_lrint.c"
	.globl	lrintf                  //  -- Begin function lrintf
	.type	lrintf,@function
lrintf:                                 //  @lrintf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	mv x11, x10
	srl x10, x11, 23&31
	and x10, x10, 255
	add x12, x10, -127
	add x13, x0, 30
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 16 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -16
	blt x13, x12, .LBB0_9
.LBB0_1:                                //  %if.then
	mv fp, x0
	slti x13, x12, -1
	bltu x0, x13, .LBB0_8
.LBB0_2:                                //  %if.else
	slt x18, x11, x0
	slti x12, x12, 23
	bltu x0, x12, .LBB0_4
.LBB0_3:                                //  %if.then5
	lui x12, %hi( 8388607 )
	add x12, x12, %lo( 8388607 )
	and x11, x12, x11
	lui x12, (8388608>>12)&1048575
	or x11, x12, x11
	add x10, x10, -150
	sll fp, x11, x10
	mv x10, x0
	beq x18, x10, .LBB0_8
	jal x0, .LBB0_7
.LBB0_9:                                //  %if.else29
	mv x10, x11
	jal __fixsfsi
	mv fp, x10
.LBB0_8:                                //  %cleanup
	mv x10, fp
	lw fp, 16 ( sp )                //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_4:                                //  %if.else8
	lui x12, %hi( TWO23 )
	sll x10, x18, 2&31
	add x12, x12, %lo( TWO23 )
	add x10, x10, x12
	lw x9, 0 ( x10 )
	mv x10, x9
	jal __addsf3
	sw x10, 12 ( sp )
	lw x10, 12 ( sp )
	mv x11, x9
	jal __subsf3
	lui x11, %hi( 2147483647 )
	add x11, x11, %lo( 2147483647 )
	and x11, x11, x10
	beq x0, x11, .LBB0_8
.LBB0_5:                                //  %if.end
	srl x11, x10, 23&31
	and x11, x11, 255
	add x12, x0, 150
	sub x11, x12, x11
	lui x12, %hi( 8388607 )
	add x12, x12, %lo( 8388607 )
	and x10, x12, x10
	lui x12, (8388608>>12)&1048575
	or x10, x12, x10
	srl fp, x10, x11
	mv x10, x0
	beq x18, x10, .LBB0_8
.LBB0_7:                                //  %if.end30
	sub fp, x0, fp
	jal x0, .LBB0_8
.Lfunc_end0:
	.size	lrintf, .Lfunc_end0-lrintf
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
