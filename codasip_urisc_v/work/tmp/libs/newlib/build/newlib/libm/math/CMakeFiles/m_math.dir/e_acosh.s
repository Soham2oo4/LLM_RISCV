	.text
	.file	"e_acosh.c"
	.globl	__ieee754_acosh         //  -- Begin function __ieee754_acosh
	.type	__ieee754_acosh,@function
__ieee754_acosh:                        //  @__ieee754_acosh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( 1072693247 )
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv fp, x11
	add x10, x10, %lo( 1072693247 )
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	blt x10, fp, .LBB0_2
.LBB0_1:                                //  %if.then
	mv x10, x9
	mv x11, fp
	mv x12, x9
	mv x13, fp
	jal __subdf3
	mv x12, x10
	mv x13, x11
	jal __divdf3
.LBB0_11:                               //  %cleanup
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x23, 16 ( sp )               //  4-byte Folded Reload
	lw x22, 20 ( sp )               //  4-byte Folded Reload
	lw x21, 24 ( sp )               //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_2:                                //  %if.else
	lui x10, (1102053376>>12)&1048575
	blt fp, x10, .LBB0_6
.LBB0_3:                                //  %if.then4
	lui x10, (2146435072>>12)&1048575
	blt fp, x10, .LBB0_5
.LBB0_4:                                //  %if.then6
	mv x10, x9
	mv x11, fp
	mv x12, x9
	mv x13, fp
	jal __adddf3
	jal x0, .LBB0_11
.LBB0_6:                                //  %if.else9
	lui x10, %hi( -1072693248 )
	add x10, x10, %lo( -1072693248 )
	add x10, x10, fp
	or x10, x9, x10
	beq x0, x10, .LBB0_7
.LBB0_8:                                //  %if.else13
	lui x10, %hi( 1073741825 )
	add x10, x10, %lo( 1073741825 )
	blt fp, x10, .LBB0_10
.LBB0_9:                                //  %if.then15
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __muldf3
	mv x18, x10
	mv x19, x11
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __adddf3
	mv x20, x10
	lui x10, %hi( -1074790400 )
	add x23, x10, %lo( -1074790400 )
	mv x22, x0
	mv x21, x11
	mv x10, x18
	mv x11, x19
	mv x12, x22
	mv x13, x23
	jal __adddf3
	jal __ieee754_sqrt
	mv x12, x9
	mv x13, fp
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x23
	jal __divdf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __adddf3
	jal __ieee754_log
	jal x0, .LBB0_11
.LBB0_5:                                //  %if.else7
	mv x10, x9
	mv x11, fp
	jal __ieee754_log
	lui x12, %hi( -17155601 )
	lui x13, %hi( 1072049730 )
	add x12, x12, %lo( -17155601 )
	add x13, x13, %lo( 1072049730 )
	jal __adddf3
	jal x0, .LBB0_11
.LBB0_7:
	mv x10, x0
	mv x11, x10
	jal x0, .LBB0_11
.LBB0_10:                               //  %if.else23
	lui x10, %hi( -1074790400 )
	add x13, x10, %lo( -1074790400 )
	mv x12, x0
	mv x10, x9
	mv x11, fp
	jal __adddf3
	mv fp, x10
	mv x9, x11
	mv x12, fp
	mv x13, x9
	jal __adddf3
	mv x18, x10
	mv x19, x11
	mv x10, fp
	mv x11, x9
	mv x12, fp
	mv x13, x9
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __adddf3
	jal __ieee754_sqrt
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x9
	jal __adddf3
	jal log1p
	jal x0, .LBB0_11
.Lfunc_end0:
	.size	__ieee754_acosh, .Lfunc_end0-__ieee754_acosh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
