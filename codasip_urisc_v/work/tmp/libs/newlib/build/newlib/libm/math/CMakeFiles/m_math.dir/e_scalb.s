	.text
	.file	"e_scalb.c"
	.globl	__ieee754_scalb         //  -- Begin function __ieee754_scalb
	.type	__ieee754_scalb,@function
__ieee754_scalb:                        //  @__ieee754_scalb
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv x18, x13
	mv x19, x12
	mv fp, x11
	mv x9, x10
	jal __unorddf2
	bltu x0, x10, .LBB0_1
.LBB0_2:                                //  %if.end
	mv x10, x19
	mv x11, x18
	jal finite
	beq x0, x10, .LBB0_3
.LBB0_5:                                //  %if.end6
	mv x10, x19
	mv x11, x18
	jal rint
	mv x12, x19
	mv x13, x18
	jal __eqdf2
	beq x0, x10, .LBB0_7
.LBB0_6:                                //  %if.then9
	mv x10, x19
	mv x11, x18
	mv x12, x19
	mv x13, x18
	jal __subdf3
	mv x12, x10
	mv x13, x11
	jal __divdf3
	jal x0, .LBB0_13
.LBB0_3:                                //  %if.then2
	mv x12, x0
	mv x10, x19
	mv x11, x18
	mv x13, x12
	jal __gtdf2
	bge x0, x10, .LBB0_4
.LBB0_1:                                //  %if.then
	mv x10, x9
	mv x11, fp
	mv x12, x19
	mv x13, x18
	jal __muldf3
	jal x0, .LBB0_13
.LBB0_7:                                //  %if.end13
	lui x10, %hi( 1089453312 )
	add x13, x10, %lo( 1089453312 )
	mv x12, x0
	mv x10, x19
	mv x11, x18
	jal __gtdf2
	bge x0, x10, .LBB0_9
.LBB0_8:                                //  %if.then15
	lui x10, %hi( 65000 )
	add x12, x10, %lo( 65000 )
	jal x0, .LBB0_12
.LBB0_4:                                //  %if.else
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x13, x10, x18
	mv x10, x9
	mv x11, fp
	mv x12, x19
	jal __divdf3
	jal x0, .LBB0_13
.LBB0_9:                                //  %if.end17
	lui x10, %hi( -1058030336 )
	add x13, x10, %lo( -1058030336 )
	mv x12, x0
	mv x10, x19
	mv x11, x18
	jal __ltdf2
	bge x10, x0, .LBB0_11
.LBB0_10:                               //  %if.then20
	lui x10, %hi( -65000 )
	add x12, x10, %lo( -65000 )
	jal x0, .LBB0_12
.LBB0_11:                               //  %if.end22
	mv x10, x19
	mv x11, x18
	jal __fixdfsi
	mv x12, x10
.LBB0_12:                               //  %return
	mv x10, x9
	mv x11, fp
	jal scalbn
.LBB0_13:                               //  %return
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__ieee754_scalb, .Lfunc_end0-__ieee754_scalb
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
