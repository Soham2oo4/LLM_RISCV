	.text
	.file	"e_cosh.c"
	.globl	__ieee754_cosh          //  -- Begin function __ieee754_cosh
	.type	__ieee754_cosh,@function
__ieee754_cosh:                         //  @__ieee754_cosh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	lui x12, %hi( 2147483647 )
	add x12, x12, %lo( 2147483647 )
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	and x20, x12, x11
	srl x12, x20, 20&31
	sltiu x12, x12, 2047
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	bltu x0, x12, .LBB0_5
.LBB0_1:                                //  %if.then
	mv x12, x10
	mv x13, x11
.LBB0_2:                                //  %cleanup
	jal __muldf3
.LBB0_3:                                //  %cleanup
	mv fp, x10
	mv x9, x11
.LBB0_4:                                //  %cleanup
	mv x10, fp
	mv x11, x9
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_5:                                //  %if.end
	lui x12, %hi( 1071001154 )
	add x12, x12, %lo( 1071001154 )
	bltu x12, x20, .LBB0_8
.LBB0_6:                                //  %if.then2
	jal fabs
	jal expm1
	mv x12, x0
	lui x13, (1072693248>>12)&1048575
	mv x18, x10
	mv x19, x11
	jal __adddf3
	mv fp, x10
	srl x10, x20, 23&31
	mv x9, x11
	sltiu x10, x10, 121
	bltu x0, x10, .LBB0_4
.LBB0_7:                                //  %if.end6
	mv x10, x18
	mv x11, x19
	mv x12, x18
	mv x13, x19
	jal __muldf3
	mv x18, x10
	mv x19, x11
	mv x10, fp
	mv x11, x9
	mv x12, fp
	mv x13, x9
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __divdf3
	mv x12, x0
	lui x13, (1072693248>>12)&1048575
	jal __adddf3
	jal x0, .LBB0_3
.LBB0_8:                                //  %if.end10
	lui x12, %hi( 1077280767 )
	add x12, x12, %lo( 1077280767 )
	bltu x12, x20, .LBB0_10
.LBB0_9:                                //  %if.then12
	jal fabs
	jal __ieee754_exp
	mv x18, x0
	lui x19, (1071644672>>12)&1048575
	mv x12, x18
	mv x13, x19
	mv fp, x10
	mv x9, x11
	jal __muldf3
	mv x20, x10
	mv x21, x11
	mv x10, x18
	mv x11, x19
	mv x12, fp
	mv x13, x9
	jal __divdf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __adddf3
	jal x0, .LBB0_3
.LBB0_10:                               //  %if.end18
	lui x12, %hi( 1082535489 )
	add x12, x12, %lo( 1082535489 )
	bltu x12, x20, .LBB0_12
.LBB0_11:                               //  %if.then20
	jal fabs
	jal __ieee754_exp
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	jal x0, .LBB0_2
.LBB0_12:                               //  %do.body25
	lui x12, %hi( 1082536910 )
	add x12, x12, %lo( 1082536910 )
	bltu x20, x12, .LBB0_15
.LBB0_13:                               //  %lor.lhs.false
	lui x13, %hi( -1883637635 )
	add x13, x13, %lo( -1883637635 )
	bltu x13, x10, .LBB0_16
.LBB0_14:                               //  %lor.lhs.false
	bne x20, x12, .LBB0_16
.LBB0_15:                               //  %if.then33
	jal fabs
	mv fp, x0
	lui x9, (1071644672>>12)&1048575
	mv x12, fp
	mv x13, x9
	jal __muldf3
	jal __ieee754_exp
	mv x12, fp
	mv x13, x9
	mv x18, x10
	mv x19, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal x0, .LBB0_2
.LBB0_16:                               //  %if.end39
	mv x10, x0
	jal __math_oflow
	jal x0, .LBB0_3
.Lfunc_end0:
	.size	__ieee754_cosh, .Lfunc_end0-__ieee754_cosh
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_oflow

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
