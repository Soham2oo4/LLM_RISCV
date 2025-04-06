	.text
	.file	"e_sinh.c"
	.globl	__ieee754_sinh          //  -- Begin function __ieee754_sinh
	.type	__ieee754_sinh,@function
__ieee754_sinh:                         //  @__ieee754_sinh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	lui x10, %hi( 2147483647 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	add x10, x10, %lo( 2147483647 )
	and x10, x10, x9
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	srl x19, x10, 20&31
	sltiu x11, x19, 2047
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	bltu x0, x11, .LBB0_2
.LBB0_1:                                //  %if.then
	mv x10, x18
	mv x11, x9
	mv x12, x18
	mv x13, x9
	jal __adddf3
	jal x0, .LBB0_21
.LBB0_2:                                //  %if.end
	mv x11, x0
	blt x9, x11, .LBB0_3
.LBB0_4:                                //  %if.end
	lui fp, (1071644672>>12)&1048575
	lui x11, %hi( 1077280767 )
	add x11, x11, %lo( 1077280767 )
	bgeu x11, x10, .LBB0_6
.LBB0_13:                               //  %if.end25
	lui x11, %hi( 1082535489 )
	add x11, x11, %lo( 1082535489 )
	bltu x11, x10, .LBB0_15
.LBB0_14:                               //  %if.then27
	mv x10, x18
	mv x11, x9
	jal fabs
	jal __ieee754_exp
	mv x12, x10
	mv x13, x11
	mv x10, x0
	mv x11, fp
	jal x0, .LBB0_20
.LBB0_3:
	lui x11, %hi( -1075838976 )
	add fp, x11, %lo( -1075838976 )
	lui x11, %hi( 1077280767 )
	add x11, x11, %lo( 1077280767 )
	bltu x11, x10, .LBB0_13
.LBB0_6:                                //  %if.then5
	lui x10, %hi( 1017934899 )
	add x12, x10, %lo( 1017934899 )
	lui x10, %hi( 2142010143 )
	add x13, x10, %lo( 2142010143 )
	mv x10, x18
	mv x11, x9
	jal __adddf3
	mv x12, x0
	lui x13, (1072693248>>12)&1048575
	jal __gtdf2
	bge x0, x10, .LBB0_8
.LBB0_7:                                //  %if.then5
	sltiu x10, x19, 995
	bltu x0, x10, .LBB0_22
.LBB0_8:                                //  %if.end12
	mv x10, x18
	mv x11, x9
	jal fabs
	jal expm1
	mv x18, x10
	mv x9, x11
	add x10, x0, 1022
	bltu x10, x19, .LBB0_10
.LBB0_9:                                //  %if.then15
	mv x19, x0
	lui x13, (1072693248>>12)&1048575
	mv x10, x18
	mv x11, x9
	mv x12, x19
	jal __adddf3
	mv x20, x10
	mv x21, x11
	mv x10, x18
	mv x13, x9
	mv x11, x9
	mv x12, x18
	jal __muldf3
	mv x12, x20
	mv x13, x21
	jal __divdf3
	mv x20, x10
	mv x21, x11
	mv x10, x18
	mv x11, x9
	mv x12, x18
	mv x13, x9
	jal __adddf3
	mv x12, x20
	mv x13, x21
	jal __subdf3
	jal x0, .LBB0_11
.LBB0_15:                               //  %do.body32
	lui x11, %hi( 1082536910 )
	add x11, x11, %lo( 1082536910 )
	bltu x10, x11, .LBB0_18
.LBB0_16:                               //  %lor.lhs.false
	lui x12, %hi( -1883637635 )
	add x12, x12, %lo( -1883637635 )
	bltu x12, x18, .LBB0_19
.LBB0_17:                               //  %lor.lhs.false
	bne x10, x11, .LBB0_19
.LBB0_18:                               //  %if.then40
	mv x10, x18
	mv x11, x9
	jal fabs
	mv x9, x0
	lui x13, (1071644672>>12)&1048575
	mv x12, x9
	jal __muldf3
	jal __ieee754_exp
	mv x18, x10
	mv x19, x11
	mv x10, x9
	mv x11, fp
	mv x12, x18
	mv x13, x19
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal x0, .LBB0_20
.LBB0_10:                               //  %if.end20
	mv x19, x0
	lui x13, (1072693248>>12)&1048575
	mv x10, x18
	mv x11, x9
	mv x12, x19
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x9
	jal __divdf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x9
	jal __adddf3
.LBB0_11:                               //  %cleanup
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, fp
	jal x0, .LBB0_20
.LBB0_19:                               //  %if.end46
	lui x10, %hi( 1017934899 )
	add x12, x10, %lo( 1017934899 )
	lui x10, %hi( 2142010143 )
	add x13, x10, %lo( 2142010143 )
	mv x10, x18
	mv x11, x9
.LBB0_20:                               //  %cleanup
	jal __muldf3
.LBB0_21:                               //  %cleanup
	mv x18, x10
	mv x9, x11
.LBB0_22:                               //  %cleanup
	mv x10, x18
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
.Lfunc_end0:
	.size	__ieee754_sinh, .Lfunc_end0-__ieee754_sinh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
