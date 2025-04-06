	.text
	.file	"w_exp.c"
	.globl	exp                     //  -- Begin function exp
	.type	exp,@function
exp:                                    //  @exp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv x18, x11
	mv x19, x10
	jal __ieee754_exp
	mv fp, x10
	mv x9, x11
	mv x10, x19
	mv x11, x18
	jal finite
	beq x0, x10, .LBB0_5
.LBB0_1:                                //  %if.then
	lui x10, %hi( -17155601 )
	add x12, x10, %lo( -17155601 )
	lui x10, %hi( 1082535490 )
	add x13, x10, %lo( 1082535490 )
	mv x10, x19
	mv x11, x18
	jal __gtdf2
	bge x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then2
	jal __errno
	add x11, x0, 34
	sw x11, 0 ( x10 )
	lui x9, (2146435072>>12)&1048575
	mv fp, x0
	jal x0, .LBB0_5
.LBB0_3:                                //  %if.else
	lui x10, %hi( -718458799 )
	add x12, x10, %lo( -718458799 )
	lui x10, %hi( -1064875760 )
	add x13, x10, %lo( -1064875760 )
	mv x10, x19
	mv x11, x18
	jal __ltdf2
	bge x10, x0, .LBB0_5
.LBB0_4:                                //  %if.then5
	jal __errno
	mv fp, x0
	add x11, x0, 34
	mv x9, fp
	sw x11, 0 ( x10 )
.LBB0_5:                                //  %cleanup
	mv x10, fp
	mv x11, x9
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	exp, .Lfunc_end0-exp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
