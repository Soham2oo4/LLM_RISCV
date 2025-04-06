	.text
	.file	"s_tanh.c"
	.globl	tanh                    //  -- Begin function tanh
	.type	tanh,@function
tanh:                                   //  @tanh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( 2147483647 )
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x11
	add x10, x10, %lo( 2147483647 )
	and x10, x10, fp
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	srl x18, x10, 20&31
	sltiu x11, x18, 2047
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	bltu x0, x11, .LBB0_4
.LBB0_1:                                //  %if.then
	mv x10, x0
	lui x11, (1072693248>>12)&1048575
	mv x12, x9
	mv x13, fp
	jal __divdf3
	mv x12, x0
	blt fp, x0, .LBB0_3
.LBB0_2:                                //  %if.then2
	lui x13, (1072693248>>12)&1048575
	jal __adddf3
	jal x0, .LBB0_13
.LBB0_4:                                //  %if.end
	lui x11, %hi( 1077280767 )
	add x11, x11, %lo( 1077280767 )
	bltu x11, x10, .LBB0_5
.LBB0_6:                                //  %if.then5
	srl x10, x10, 23&31
	add x11, x0, 120
	bltu x11, x10, .LBB0_8
.LBB0_7:                                //  %if.then7
	mv x12, x0
	lui x13, (1072693248>>12)&1048575
	mv x10, x9
	mv x11, fp
	jal __adddf3
	mv x12, x9
	mv x13, fp
	jal __muldf3
	jal x0, .LBB0_13
.LBB0_5:
	lui x11, (1072693248>>12)&1048575
	mv x10, x0
	add x12, x0, -1
	bge x12, fp, .LBB0_12
	jal x0, .LBB0_13
.LBB0_3:                                //  %if.else
	lui x13, %hi( -1074790400 )
	add x13, x13, %lo( -1074790400 )
	jal __adddf3
	jal x0, .LBB0_13
.LBB0_8:                                //  %if.end9
	mv x10, x9
	mv x11, fp
	jal fabs
	sltiu x12, x18, 1023
	bltu x0, x12, .LBB0_10
.LBB0_9:                                //  %if.then11
	mv x12, x10
	mv x13, x11
	jal __adddf3
	jal expm1
	mv x9, x0
	lui x18, (1073741824>>12)&1048575
	mv x12, x9
	mv x13, x18
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
	jal __divdf3
	mv x12, x10
	mv x13, x11
	lui x11, (1072693248>>12)&1048575
	mv x10, x9
	jal __subdf3
	add x12, x0, -1
	bge x12, fp, .LBB0_12
	jal x0, .LBB0_13
.LBB0_10:                               //  %if.else17
	lui x12, %hi( -1073741824 )
	mv x9, x0
	add x13, x12, %lo( -1073741824 )
	mv x12, x9
	jal __muldf3
	jal expm1
	lui x13, (1073741824>>12)&1048575
	mv x12, x9
	mv x18, x10
	mv x19, x11
	jal __adddf3
	mv x12, x10
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	mv x13, x11
	xor x11, x10, x19
	mv x10, x18
	jal __divdf3
	add x12, x0, -1
	blt x12, fp, .LBB0_13
.LBB0_12:                               //  %if.end26
	lui x12, %hi( -2147483648 )
	add x12, x12, %lo( -2147483648 )
	xor x11, x12, x11
.LBB0_13:                               //  %cleanup
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	tanh, .Lfunc_end0-tanh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
