	.text
	.file	"ef_cosh.c"
	.globl	__ieee754_coshf         //  -- Begin function __ieee754_coshf
	.type	__ieee754_coshf,@function
__ieee754_coshf:                        //  @__ieee754_coshf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lui x11, %hi( 2147483647 )
	add x11, x11, %lo( 2147483647 )
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	and x18, x11, x10
	srl x11, x18, 23&31
	sltiu x11, x11, 255
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	beq x0, x11, .LBB0_4
.LBB0_1:                                //  %if.end
	lui x11, %hi( 1051816471 )
	add x11, x11, %lo( 1051816471 )
	bltu x11, x18, .LBB0_8
.LBB0_2:                                //  %if.then2
	jal fabsf
	jal expm1f
	lui x11, (1065353216>>12)&1048575
	mv x9, x10
	jal __addsf3
	mv fp, x10
	srl x10, x18, 26&31
	sltiu x10, x10, 9
	bltu x0, x10, .LBB0_7
.LBB0_3:                                //  %if.end6
	mv x10, x9
	mv x11, x9
	jal __mulsf3
	mv x9, x10
	mv x10, fp
	mv x11, fp
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __divsf3
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	jal x0, .LBB0_6
.LBB0_4:                                //  %if.then
	mv x11, x10
.LBB0_5:                                //  %cleanup
	jal __mulsf3
.LBB0_6:                                //  %cleanup
	mv fp, x10
.LBB0_7:                                //  %cleanup
	mv x10, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_8:                                //  %if.end10
	srl x11, x18, 20&31
	add x12, x0, 1050
	bltu x12, x11, .LBB0_10
.LBB0_9:                                //  %if.then12
	jal fabsf
	jal __ieee754_expf
	lui x9, (1056964608>>12)&1048575
	mv x11, x9
	mv fp, x10
	jal __mulsf3
	mv x18, x10
	mv x10, x9
	mv x11, fp
	jal __divsf3
	mv x11, x10
	mv x10, x18
	jal __addsf3
	jal x0, .LBB0_6
.LBB0_10:                               //  %if.end18
	lui x11, %hi( 1118925335 )
	add x11, x11, %lo( 1118925335 )
	bltu x11, x18, .LBB0_12
.LBB0_11:                               //  %if.then20
	jal fabsf
	jal __ieee754_expf
	lui x11, (1056964608>>12)&1048575
	jal x0, .LBB0_5
.LBB0_12:                               //  %if.end24
	lui x11, %hi( 1119016188 )
	add x11, x11, %lo( 1119016188 )
	bltu x11, x18, .LBB0_14
.LBB0_13:                               //  %if.then26
	jal fabsf
	lui fp, (1056964608>>12)&1048575
	mv x11, fp
	jal __mulsf3
	jal __ieee754_expf
	mv x11, fp
	mv x9, x10
	jal __mulsf3
	mv x11, x10
	mv x10, x9
	jal x0, .LBB0_5
.LBB0_14:                               //  %if.end32
	mv x10, x0
	jal __math_oflowf
	jal x0, .LBB0_6
.Lfunc_end0:
	.size	__ieee754_coshf, .Lfunc_end0-__ieee754_coshf
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_oflowf

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
