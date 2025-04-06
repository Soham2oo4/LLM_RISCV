	.text
	.file	"s_rint.c"
	.globl	rint                    //  -- Begin function rint
	.type	rint,@function
rint:                                   //  @rint
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw fp, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x10
	srl x10, x9, 20&31
	and x10, x10, 2047
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	slt x19, x9, x0
	add x18, x10, -1023
	add x11, x0, 19
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	blt x11, x18, .LBB0_7
.LBB0_1:                                //  %if.then
	blt x18, x0, .LBB0_2
.LBB0_4:                                //  %if.else
	lui x10, %hi( 1048575 )
	add x10, x10, %lo( 1048575 )
	srl x10, x10, x18
	and x11, x9, x10
	or x11, fp, x11
	beq x0, x11, .LBB0_15
.LBB0_5:                                //  %if.end47
	srl x10, x10, 1&31
	and x11, x9, x10
	or x11, fp, x11
	beq x0, x11, .LBB0_13
.LBB0_6:                                //  %if.then52
	xor x10, x10, -1
	lui x11, (262144>>12)&1048575
	and x10, x9, x10
	srl x11, x11, x18
	or x9, x11, x10
	xor x10, x18, 19
	seqz x10, x10
	sll fp, x10, 31&31
	jal x0, .LBB0_13
.LBB0_7:                                //  %if.else62
	slti x11, x18, 52
	bltu x0, x11, .LBB0_10
.LBB0_8:                                //  %if.then64
	mv x10, fp
	mv x13, x9
	mv x11, x9
	mv x12, fp
	jal __adddf3
	add x12, x0, 1024
	beq x18, x12, .LBB0_14
.LBB0_9:                                //  %if.then64
	mv x10, fp
	mv x11, x9
	jal x0, .LBB0_14
.LBB0_10:                               //  %if.else69
	add x10, x10, -1043
	add x11, x0, -1
	srl x11, x11, x10
	and x12, fp, x11
	beq x0, x12, .LBB0_15
.LBB0_11:                               //  %if.end75
	srl x11, x11, 1&31
	and x12, fp, x11
	beq x0, x12, .LBB0_13
.LBB0_12:                               //  %if.then79
	xor x11, x11, -1
	lui x12, (1073741824>>12)&1048575
	srl x10, x12, x10
	and x11, fp, x11
	or fp, x10, x11
.LBB0_13:                               //  %do.body88
	lui x11, %hi( TWO52 )
	sll x10, x19, 3&31
	add x11, x11, %lo( TWO52 )
	add x10, x10, x11
	lw x19, 4 ( x10 )
	lw x18, 0 ( x10 )
	mv x12, fp
	mv x13, x9
	mv x11, x19
	mv x10, x18
	jal __adddf3
	add x12, sp, 16
	or x12, x12, 4
	sw x11, 0 ( x12 )
	sw x10, 16 ( sp )
	lw x11, 0 ( x12 )
	lw x10, 16 ( sp )
	mv x12, x18
	mv x13, x19
	jal __subdf3
.LBB0_14:                               //  %cleanup
	mv fp, x10
	mv x9, x11
.LBB0_15:                               //  %cleanup
	mv x10, fp
	mv x11, x9
	lw fp, 24 ( sp )                //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_2:                                //  %if.then5
	lui x10, %hi( 2147483647 )
	add x20, x10, %lo( 2147483647 )
	and x10, x20, x9
	or x10, fp, x10
	beq x0, x10, .LBB0_15
.LBB0_3:                                //  %if.end
	lui x11, %hi( 1048575 )
	add x11, x11, %lo( 1048575 )
	and x11, x11, x9
	or x11, fp, x11
	sub x11, x0, x11
	lui x10, %hi( -131072 )
	or x11, fp, x11
	add x10, x10, %lo( -131072 )
	srl x11, x11, 12&31
	lui x12, (524288>>12)&1048575
	and x11, x12, x11
	and x10, x10, x9
	or x13, x10, x11
	lui x11, %hi( TWO52 )
	sll x10, x19, 3&31
	add x11, x11, %lo( TWO52 )
	add x10, x10, x11
	lw x18, 4 ( x10 )
	lw x9, 0 ( x10 )
	mv x12, fp
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
	mv fp, x10
	and x10, x20, x11
	sll x11, x19, 31&31
	or x9, x11, x10
	jal x0, .LBB0_15
.Lfunc_end0:
	.size	rint, .Lfunc_end0-rint
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
