	.text
	.file	"sf_asinh.c"
	.globl	asinhf                  //  -- Begin function asinhf
	.type	asinhf,@function
asinhf:                                 //  @asinhf
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
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	and x9, x10, fp
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	srl x18, x9, 23&31
	sltiu x10, x18, 255
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	beq x0, x10, .LBB0_1
.LBB0_3:                                //  %if.end
	lui x10, %hi( 1900671690 )
	add x11, x10, %lo( 1900671690 )
	mv x10, fp
	jal __addsf3
	lui x11, (1065353216>>12)&1048575
	jal __gtsf2
	bge x0, x10, .LBB0_5
.LBB0_4:                                //  %if.end
	sltiu x10, x18, 99
	bltu x0, x10, .LBB0_2
.LBB0_5:                                //  %if.end7
	lui x10, %hi( 1300234241 )
	add x10, x10, %lo( 1300234241 )
	bltu x9, x10, .LBB0_7
.LBB0_6:                                //  %if.then9
	mv x10, fp
	jal fabsf
	jal __ieee754_logf
	lui x11, %hi( 1060205080 )
	add x11, x11, %lo( 1060205080 )
	jal __addsf3
	mv x11, x0
	blt x11, fp, .LBB0_12
	jal x0, .LBB0_11
.LBB0_1:                                //  %if.then
	mv x10, fp
	mv x11, fp
	jal __addsf3
	mv fp, x10
.LBB0_2:                                //  %cleanup
	mv x10, fp
.LBB0_12:                               //  %if.end31
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_7:                                //  %if.else
	lui x10, %hi( 1073741825 )
	add x10, x10, %lo( 1073741825 )
	bltu x9, x10, .LBB0_9
.LBB0_8:                                //  %if.then13
	mv x10, fp
	jal fabsf
	mv x9, x10
	mv x11, x9
	jal __addsf3
	mv x18, x10
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	lui x19, (1065353216>>12)&1048575
	mv x11, x19
	jal __addsf3
	jal __ieee754_sqrtf
	mv x11, x10
	mv x10, x9
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __divsf3
	mv x11, x10
	mv x10, x18
	jal __addsf3
	jal __ieee754_logf
	mv x11, x0
	blt x11, fp, .LBB0_12
	jal x0, .LBB0_11
.LBB0_9:                                //  %if.else21
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x9, x10
	mv x10, fp
	jal fabsf
	lui x19, (1065353216>>12)&1048575
	mv x18, x10
	mv x10, x9
	mv x11, x19
	jal __addsf3
	jal __ieee754_sqrtf
	mv x11, x19
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __divsf3
	mv x11, x10
	mv x10, x18
	jal __addsf3
	jal log1pf
	mv x11, x0
	blt x11, fp, .LBB0_12
.LBB0_11:                               //  %if.end31
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x10, x11, x10
	jal x0, .LBB0_12
.Lfunc_end0:
	.size	asinhf, .Lfunc_end0-asinhf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
