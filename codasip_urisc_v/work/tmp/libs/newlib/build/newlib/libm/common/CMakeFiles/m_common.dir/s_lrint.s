	.text
	.file	"s_lrint.c"
	.globl	lrint                   //  -- Begin function lrint
	.type	lrint,@function
lrint:                                  //  @lrint
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	mv x13, x11
	mv x12, x10
	srl x10, x13, 20&31
	and x10, x10, 2047
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	slt x19, x13, x0
	add x10, x10, -1023
	add x11, x0, 19
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	blt x11, x10, .LBB0_4
.LBB0_1:                                //  %if.then
	mv fp, x0
	slti x10, x10, -1
	bltu x0, x10, .LBB0_11
.LBB0_2:                                //  %if.else
	lui x11, %hi( TWO52 )
	sll x10, x19, 3&31
	add x11, x11, %lo( TWO52 )
	add x10, x10, x11
	lw x18, 4 ( x10 )
	lw x9, 0 ( x10 )
	mv x11, x18
	mv x10, x9
	jal __adddf3
	add x12, sp, 16
	or x12, x12, 4
	sw x11, 0 ( x12 )
	sw x10, 16 ( sp )
	lw x11, 0 ( x12 )
	lw x10, 16 ( sp )
	mv x12, x9
	mv x13, x18
	jal __subdf3
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x10, x10, x11
	beq x0, x10, .LBB0_11
.LBB0_3:                                //  %if.end
	lui x10, %hi( 1048575 )
	add x10, x10, %lo( 1048575 )
	and x10, x10, x11
	srl x11, x11, 20&31
	lui x12, (1048576>>12)&1048575
	or x10, x12, x10
	and x11, x11, 2047
	add x12, x0, 1043
	sub x11, x12, x11
	srl fp, x10, x11
	mv x10, x0
	bne x19, x10, .LBB0_10
	jal x0, .LBB0_11
.LBB0_4:                                //  %if.else24
	add x11, x0, 30
	blt x11, x10, .LBB0_12
.LBB0_5:                                //  %if.else35
	lui x11, %hi( TWO52 )
	sll x10, x19, 3&31
	add x11, x11, %lo( TWO52 )
	add x10, x10, x11
	lw x9, 4 ( x10 )
	lw fp, 0 ( x10 )
	mv x11, x9
	mv x10, fp
	jal __adddf3
	add x12, sp, 16
	or x12, x12, 4
	sw x11, 0 ( x12 )
	sw x10, 16 ( sp )
	lw x11, 0 ( x12 )
	lw x10, 16 ( sp )
	mv x12, fp
	mv x13, x9
	jal __subdf3
	srl x12, x11, 20&31
	and x12, x12, 2047
	add x13, x0, 1075
	sub x13, x13, x12
	add x14, x0, 32
	bltu x13, x14, .LBB0_6
.LBB0_7:                                //  %if.else35
	mv x10, x0
	jal x0, .LBB0_8
.LBB0_12:                               //  %if.else62
	mv x10, x12
	mv x11, x13
	jal __fixdfsi
	mv fp, x10
	jal x0, .LBB0_11
.LBB0_6:
	srl x10, x10, x13
.LBB0_8:                                //  %if.else35
	lui x13, %hi( 1048575 )
	add x13, x13, %lo( 1048575 )
	and x11, x13, x11
	lui x13, (1048576>>12)&1048575
	or x11, x13, x11
	add x12, x12, -1043
	sll x11, x11, x12
	or fp, x11, x10
	mv x10, x0
	beq x19, x10, .LBB0_11
.LBB0_10:                               //  %if.end64
	sub fp, x0, fp
.LBB0_11:                               //  %cleanup
	mv x10, fp
	lw fp, 28 ( sp )                //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	lrint, .Lfunc_end0-lrint
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
