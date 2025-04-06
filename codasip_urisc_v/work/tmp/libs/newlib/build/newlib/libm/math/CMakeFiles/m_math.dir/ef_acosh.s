	.text
	.file	"ef_acosh.c"
	.globl	__ieee754_acoshf        //  -- Begin function __ieee754_acoshf
	.type	__ieee754_acoshf,@function
__ieee754_acoshf:                       //  @__ieee754_acoshf
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
	lui x10, %hi( 1065353215 )
	add x10, x10, %lo( 1065353215 )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	blt x10, fp, .LBB0_2
.LBB0_1:                                //  %if.then
	mv x10, fp
	mv x11, fp
	jal __subsf3
	mv x11, x10
	jal __divsf3
	jal x0, .LBB0_11
.LBB0_2:                                //  %if.else
	lui x10, (1300234240>>12)&1048575
	blt fp, x10, .LBB0_6
.LBB0_3:                                //  %if.then3
	lui x10, (2139095040>>12)&1048575
	bge fp, x10, .LBB0_4
.LBB0_5:                                //  %if.else6
	mv x10, fp
	jal __ieee754_logf
	lui x11, %hi( 1060205080 )
	add x11, x11, %lo( 1060205080 )
	jal __addsf3
	jal x0, .LBB0_11
.LBB0_6:                                //  %if.else8
	lui x10, (1065353216>>12)&1048575
	bne fp, x10, .LBB0_8
.LBB0_7:
	mv x10, x0
	jal x0, .LBB0_11
.LBB0_4:                                //  %if.then5
	mv x10, fp
	mv x11, fp
	jal __addsf3
	jal x0, .LBB0_11
.LBB0_8:                                //  %if.else11
	lui x10, %hi( 1073741825 )
	add x10, x10, %lo( 1073741825 )
	blt fp, x10, .LBB0_10
.LBB0_9:                                //  %if.then13
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x9, x10
	mv x10, fp
	mv x11, fp
	jal __addsf3
	mv x18, x10
	lui x10, %hi( -1082130432 )
	add x19, x10, %lo( -1082130432 )
	mv x10, x9
	mv x11, x19
	jal __addsf3
	jal __ieee754_sqrtf
	mv x11, fp
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __divsf3
	mv x11, x10
	mv x10, x18
	jal __addsf3
	jal __ieee754_logf
	jal x0, .LBB0_11
.LBB0_10:                               //  %if.else21
	lui x10, %hi( -1082130432 )
	add x11, x10, %lo( -1082130432 )
	mv x10, fp
	jal __addsf3
	mv fp, x10
	mv x11, fp
	jal __addsf3
	mv x9, x10
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x11, x10
	mv x10, x9
	jal __addsf3
	jal __ieee754_sqrtf
	mv x11, x10
	mv x10, fp
	jal __addsf3
	jal log1pf
.LBB0_11:                               //  %cleanup
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__ieee754_acoshf, .Lfunc_end0-__ieee754_acoshf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
