	.text
	.file	"e_remainder.c"
	.globl	__ieee754_remainder     //  -- Begin function __ieee754_remainder
	.type	__ieee754_remainder,@function
__ieee754_remainder:                    //  @__ieee754_remainder
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
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x13
	add x10, x10, %lo( 2147483647 )
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x19, x12
	and x20, x10, x18
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv fp, x11
	or x11, x19, x20
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	beq x0, x11, .LBB0_4
.LBB0_1:                                //  %if.end
	and x21, x10, fp
	srl x10, x21, 20&31
	add x11, x0, 2046
	bltu x11, x10, .LBB0_4
.LBB0_2:                                //  %lor.lhs.false
	srl x10, x20, 20&31
	sltiu x10, x10, 2047
	bltu x0, x10, .LBB0_7
.LBB0_3:                                //  %land.lhs.true
	lui x10, %hi( -2146435072 )
	add x10, x10, %lo( -2146435072 )
	add x10, x10, x20
	or x10, x19, x10
	beq x0, x10, .LBB0_10
.LBB0_4:                                //  %if.then
	mv x10, x9
	mv x11, fp
	mv x12, x19
	mv x13, x18
	jal __muldf3
	mv x12, x10
	mv x13, x11
	jal __divdf3
.LBB0_5:                                //  %cleanup
	mv fp, x10
.LBB0_6:                                //  %cleanup
	mv x10, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x22, 4 ( sp )                //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_7:                                //  %if.end22
	srl x10, x20, 21&31
	add x11, x0, 1022
	bltu x11, x10, .LBB0_10
.LBB0_8:                                //  %if.then24
	mv x10, x19
	mv x13, x18
	mv x11, x18
	mv x12, x19
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __ieee754_fmod
	sub x12, x9, x19
	sub x13, x21, x20
	or x12, x12, x13
	bltu x0, x12, .LBB0_11
.LBB0_9:                                //  %if.then30
	mv x12, x0
	mv x13, x12
	jal __muldf3
	jal x0, .LBB0_5
.LBB0_10:
	mv x10, x9
	mv x11, fp
	sub x12, x9, x19
	sub x13, x21, x20
	or x12, x12, x13
	beq x0, x12, .LBB0_9
.LBB0_11:                               //  %if.end32
	lui x12, %hi( -2147483648 )
	add x12, x12, %lo( -2147483648 )
	and x22, x12, fp
	jal fabs
	mv fp, x10
	mv x9, x11
	mv x10, x19
	mv x11, x18
	jal fabs
	mv x19, x10
	mv x18, x11
	srl x10, x20, 21&31
	bltu x0, x10, .LBB0_14
.LBB0_12:                               //  %if.then36
	mv x10, fp
	mv x13, x9
	mv x11, x9
	mv x12, fp
	jal __adddf3
	mv x12, x19
	mv x13, x18
	jal __gtdf2
	bge x0, x10, .LBB0_17
.LBB0_13:                               //  %if.then39
	mv x10, fp
	mv x11, x9
	mv x12, x19
	mv x13, x18
	jal __subdf3
	mv fp, x10
	mv x9, x11
	mv x12, fp
	mv x13, x9
	jal __adddf3
	mv x12, x19
	mv x13, x18
	jal __gedf2
	bge x10, x0, .LBB0_16
	jal x0, .LBB0_17
.LBB0_14:                               //  %if.else
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x19
	mv x11, x18
	jal __muldf3
	mv x20, x10
	mv x21, x11
	mv x10, fp
	mv x11, x9
	mv x12, x20
	mv x13, x21
	jal __gtdf2
	bge x0, x10, .LBB0_17
.LBB0_15:                               //  %if.then49
	mv x10, fp
	mv x11, x9
	mv x12, x19
	mv x13, x18
	jal __subdf3
	mv fp, x10
	mv x9, x11
	mv x12, x20
	mv x13, x21
	jal __gedf2
	blt x10, x0, .LBB0_17
.LBB0_16:                               //  %if.then52
	mv x10, fp
	mv x11, x9
	mv x12, x19
	mv x13, x18
	jal __subdf3
	mv fp, x10
	mv x9, x11
.LBB0_17:                               //  %do.body57
	xor x11, x9, x22
	jal x0, .LBB0_6
.Lfunc_end0:
	.size	__ieee754_remainder, .Lfunc_end0-__ieee754_remainder
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
