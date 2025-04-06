	.text
	.file	"ef_log10.c"
	.globl	__ieee754_log10f        //  -- Begin function __ieee754_log10f
	.type	__ieee754_log10f,@function
__ieee754_log10f:                       //  @__ieee754_log10f
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x10, x10, fp
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %if.end
	blt fp, x0, .LBB0_3
.LBB0_4:                                //  %if.end3
	lui x10, (2139095040>>12)&1048575
	bge fp, x10, .LBB0_5
.LBB0_6:                                //  %if.end6
	lui x19, (8388608>>12)&1048575
	blt fp, x19, .LBB0_7
.LBB0_8:                                //  %if.end6
	add x18, x0, -127
	jal x0, .LBB0_9
.LBB0_1:
	lui x10, %hi( -8388608 )
	add x10, x10, %lo( -8388608 )
	jal x0, .LBB0_13
.LBB0_3:                                //  %if.then2
	mv x10, fp
	mv x11, fp
	jal __subsf3
	mv x11, x0
	jal __divsf3
	jal x0, .LBB0_13
.LBB0_5:                                //  %if.then5
	mv x10, fp
	mv x11, fp
	jal x0, .LBB0_12
.LBB0_7:
	add x18, x0, -152
.LBB0_9:                                //  %if.end6
	lui x11, (1275068416>>12)&1048575
	mv x10, fp
	jal __mulsf3
	mv x9, x10
	blt fp, x19, .LBB0_11
.LBB0_10:                               //  %if.end6
	mv x9, fp
.LBB0_11:                               //  %if.end6
	sra x10, x9, 23&31
	add x10, x10, x18
	slt x19, x10, x0
	add x10, x10, x19
	jal __floatsisf
	mv fp, x10
	lui x10, %hi( 894707675 )
	add x11, x10, %lo( 894707675 )
	mv x10, fp
	jal __mulsf3
	mv x18, x10
	lui x10, %hi( 8388607 )
	add x10, x10, %lo( 8388607 )
	and x10, x10, x9
	sll x11, x19, 23&31
	or x10, x10, x11
	lui x11, (1065353216>>12)&1048575
	xor x10, x11, x10
	jal __ieee754_logf
	lui x11, %hi( 1054759897 )
	add x11, x11, %lo( 1054759897 )
	jal __mulsf3
	mv x11, x10
	mv x10, x18
	jal __addsf3
	mv x9, x10
	lui x10, %hi( 1050288256 )
	add x11, x10, %lo( 1050288256 )
	mv x10, fp
	jal __mulsf3
	mv x11, x9
.LBB0_12:                               //  %cleanup
	jal __addsf3
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
	.size	__ieee754_log10f, .Lfunc_end0-__ieee754_log10f
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
