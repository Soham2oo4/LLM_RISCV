	.text
	.file	"e_log10.c"
	.globl	__ieee754_log10         //  -- Begin function __ieee754_log10
	.type	__ieee754_log10,@function
__ieee754_log10:                        //  @__ieee754_log10
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv fp, x10
	lui x10, %hi( 1048575 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9, x10, %lo( 1048575 )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	blt x9, x11, .LBB0_1
.LBB0_2:                                //  %if.then
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x10, x10, x11
	or x10, fp, x10
	beq x0, x10, .LBB0_3
.LBB0_4:                                //  %if.end
	blt x11, x0, .LBB0_5
.LBB0_6:                                //  %if.end6
	mv x12, x0
	lui x13, (1129316352>>12)&1048575
	mv x10, fp
	jal __muldf3
	mv fp, x10
	add x10, x0, -54
	lui x12, (2146435072>>12)&1048575
	bge x11, x12, .LBB0_8
.LBB0_9:                                //  %if.end17
	and x12, x9, x11
	sra x11, x11, 20&31
	add x10, x10, x11
	add x10, x10, -1023
	slt x11, x10, x0
	sll x13, x11, 20&31
	add x10, x10, x11
	or x21, x12, x13
	jal __floatsidf
	mv x9, x10
	lui x10, %hi( 301017910 )
	add x12, x10, %lo( 301017910 )
	lui x10, %hi( 1029308147 )
	add x13, x10, %lo( 1029308147 )
	mv x10, x9
	mv x18, x11
	jal __muldf3
	mv x19, x10
	lui x10, (1072693248>>12)&1048575
	mv x20, x11
	xor x11, x10, x21
	mv x10, fp
	jal __ieee754_log
	lui x12, %hi( 354870542 )
	lui x13, %hi( 1071369083 )
	add x12, x12, %lo( 354870542 )
	add x13, x13, %lo( 1071369083 )
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __adddf3
	mv fp, x10
	lui x10, %hi( 1070810131 )
	mv x19, x11
	add x13, x10, %lo( 1070810131 )
	lui x12, (1352622080>>12)&1048575
	mv x10, x9
	mv x11, x18
	jal __muldf3
	mv x12, fp
	mv x13, x19
	jal x0, .LBB0_10
.LBB0_1:
	mv x10, x0
	lui x12, (2146435072>>12)&1048575
	blt x11, x12, .LBB0_9
.LBB0_8:                                //  %if.then16
	mv x10, fp
	mv x12, fp
	mv x13, x11
.LBB0_10:                               //  %cleanup
	jal __adddf3
	jal x0, .LBB0_11
.LBB0_3:
	lui x10, %hi( -1048576 )
	add x11, x10, %lo( -1048576 )
	mv x10, x0
	jal x0, .LBB0_11
.LBB0_5:                                //  %if.then5
	mv x10, fp
	mv x12, fp
	mv x13, x11
	jal __subdf3
	mv x12, x0
	mv x13, x12
	jal __divdf3
.LBB0_11:                               //  %cleanup
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
	.size	__ieee754_log10, .Lfunc_end0-__ieee754_log10
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
