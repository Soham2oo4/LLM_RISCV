	.text
	.file	"s_llrint.c"
	.globl	llrint                  //  -- Begin function llrint
	.type	llrint,@function
llrint:                                 //  @llrint
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw fp, 20 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv fp, x11
	mv x13, x10
	srl x10, fp, 20&31
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	and x21, x10, 2047
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	slt x20, fp, x0
	add x11, x21, -1023
	add x10, x0, 19
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	blt x10, x11, .LBB0_4
.LBB0_1:                                //  %if.then
	mv x10, x0
	slti x12, x11, -1
	mv x11, x10
	bltu x0, x12, .LBB0_15
.LBB0_2:                                //  %if.else
	lui x11, %hi( TWO52 )
	sll x10, x20, 3&31
	add x11, x11, %lo( TWO52 )
	add x10, x10, x11
	lw x18, 4 ( x10 )
	lw x9, 0 ( x10 )
	mv x12, x13
	mv x13, fp
	mv x11, x18
	mv x10, x9
	jal __adddf3
	add x12, sp, 8
	or x12, x12, 4
	sw x11, 0 ( x12 )
	sw x10, 8 ( sp )
	lw x11, 0 ( x12 )
	lw x10, 8 ( sp )
	mv x12, x9
	mv x13, x18
	jal __subdf3
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x10, x10, x11
	beq x0, x10, .LBB0_3
.LBB0_11:                               //  %if.end
	lui x10, %hi( 1048575 )
	add x10, x10, %lo( 1048575 )
	and x10, x10, x11
	srl x11, x11, 20&31
	lui x12, (1048576>>12)&1048575
	or x10, x12, x10
	and x11, x11, 2047
	add x12, x0, 1043
	sub x11, x12, x11
	srl x12, x10, x11
	sra x11, x12, 31&31
	mv x10, x0
	beq x20, x10, .LBB0_13
.LBB0_14:                               //  %if.end74
	sub x10, x0, x12
	snez x12, x12
	add x11, x12, x11
	sub x11, x0, x11
	jal x0, .LBB0_15
.LBB0_4:                                //  %if.else24
	add x10, x0, 62
	blt x10, x11, .LBB0_10
.LBB0_5:                                //  %if.then27
	slti x10, x11, 52
	bltu x0, x10, .LBB0_7
.LBB0_6:                                //  %if.then30
	mv x9, x0
	add x12, x21, -1075
	mv x10, x13
	mv x11, x9
	jal __ashldi3
	mv x18, x10
	lui x10, %hi( 1048575 )
	add x10, x10, %lo( 1048575 )
	mv x19, x11
	and x10, x10, fp
	lui x11, (1048576>>12)&1048575
	or x10, x11, x10
	add x12, x21, -1043
	mv x11, x9
	jal __ashldi3
	or x11, x19, x11
	or x12, x18, x10
	mv x10, x0
	bne x20, x10, .LBB0_14
.LBB0_13:
	mv x10, x12
	jal x0, .LBB0_15
.LBB0_10:                               //  %if.else71
	mv x10, x13
	mv x11, fp
	jal __fixdfdi
	jal x0, .LBB0_15
.LBB0_7:                                //  %if.else40
	lui x11, %hi( TWO52 )
	sll x10, x20, 3&31
	add x11, x11, %lo( TWO52 )
	add x10, x10, x11
	lw x18, 4 ( x10 )
	lw x9, 0 ( x10 )
	mv x12, x13
	mv x13, fp
	mv x11, x18
	mv x10, x9
	jal __adddf3
	add x12, sp, 8
	or x12, x12, 4
	sw x11, 0 ( x12 )
	sw x10, 8 ( sp )
	lw x11, 0 ( x12 )
	lw x10, 8 ( sp )
	mv x12, x9
	mv x13, x18
	jal __subdf3
	mv fp, x10
	lui x10, %hi( 1048575 )
	add x10, x10, %lo( 1048575 )
	and x10, x10, x11
	srl x11, x11, 20&31
	lui x12, (1048576>>12)&1048575
	and x18, x11, 2047
	mv x9, x0
	or x10, x12, x10
	add x12, x18, -1043
	mv x11, x9
	jal __ashldi3
	add x12, x0, 1075
	sub x12, x12, x18
	add x13, x0, 32
	bgeu x12, x13, .LBB0_9
.LBB0_8:
	srl x9, fp, x12
.LBB0_9:                                //  %if.else40
	or x12, x9, x10
	mv x10, x0
	bne x20, x10, .LBB0_14
	jal x0, .LBB0_13
.LBB0_3:
	mv x10, x0
	mv x11, x10
.LBB0_15:                               //  %cleanup
	lw fp, 20 ( sp )                //  4-byte Folded Reload
	lw x21, 24 ( sp )               //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	llrint, .Lfunc_end0-llrint
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	TWO52,@object           //  @TWO52
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3
TWO52:
	.quad	4841369599423283200     //  double 4503599627370496
	.quad	-4382002437431492608    //  double -4503599627370496
	.size	TWO52, 16


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
