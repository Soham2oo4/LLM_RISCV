	.text
	.file	"ef_sinh.c"
	.globl	__ieee754_sinhf         //  -- Begin function __ieee754_sinhf
	.type	__ieee754_sinhf,@function
__ieee754_sinhf:                        //  @__ieee754_sinhf
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
	add x10, x10, %lo( 2147483647 )
	and x10, x10, x9
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	srl x18, x10, 23&31
	sltiu x11, x18, 255
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	beq x0, x11, .LBB0_1
.LBB0_2:                                //  %if.end
	mv x11, x0
	blt x9, x11, .LBB0_3
.LBB0_4:                                //  %if.end
	lui fp, (1056964608>>12)&1048575
	srl x11, x10, 20&31
	add x12, x0, 1050
	bgeu x12, x11, .LBB0_6
.LBB0_11:                               //  %if.end25
	lui x11, %hi( 1118925335 )
	add x11, x11, %lo( 1118925335 )
	bltu x11, x10, .LBB0_14
.LBB0_12:                               //  %if.then27
	mv x10, x9
	jal fabsf
	jal __ieee754_expf
	jal x0, .LBB0_13
.LBB0_1:                                //  %if.then
	mv x10, x9
	mv x11, x9
	jal __addsf3
	jal x0, .LBB0_19
.LBB0_3:
	lui x11, %hi( -1090519040 )
	add fp, x11, %lo( -1090519040 )
	srl x11, x10, 20&31
	add x12, x0, 1050
	bltu x12, x11, .LBB0_11
.LBB0_6:                                //  %if.then5
	lui x10, %hi( 2096152002 )
	add x11, x10, %lo( 2096152002 )
	mv x10, x9
	jal __addsf3
	lui x11, (1065353216>>12)&1048575
	jal __gtsf2
	bge x0, x10, .LBB0_8
.LBB0_7:                                //  %if.then5
	sltiu x10, x18, 99
	bltu x0, x10, .LBB0_20
.LBB0_8:                                //  %if.end12
	mv x10, x9
	jal fabsf
	jal expm1f
	mv x9, x10
	add x10, x0, 126
	bltu x10, x18, .LBB0_10
.LBB0_9:                                //  %if.then15
	mv x10, x9
	mv x11, x9
	jal __addsf3
	mv x18, x10
	mv x10, x9
	mv x11, x9
	jal __mulsf3
	mv x19, x10
	lui x11, (1065353216>>12)&1048575
	mv x10, x9
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __divsf3
	mv x11, x10
	mv x10, x18
	jal __subsf3
	jal x0, .LBB0_13
.LBB0_14:                               //  %if.end31
	lui x11, %hi( 1119016188 )
	add x11, x11, %lo( 1119016188 )
	bltu x11, x10, .LBB0_16
.LBB0_15:                               //  %if.then33
	mv x10, x9
	jal fabsf
	lui x11, (1056964608>>12)&1048575
	jal __mulsf3
	jal __ieee754_expf
	mv x9, x10
	mv x10, fp
	mv x11, x9
	jal __mulsf3
	mv x11, x10
	jal x0, .LBB0_17
.LBB0_10:                               //  %if.end20
	lui x11, (1065353216>>12)&1048575
	mv x10, x9
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __divsf3
	mv x11, x10
	mv x10, x9
	jal __addsf3
.LBB0_13:                               //  %cleanup
	mv x11, x10
	mv x10, fp
	jal x0, .LBB0_18
.LBB0_16:                               //  %if.end39
	lui x10, %hi( 2096152002 )
	add x11, x10, %lo( 2096152002 )
.LBB0_17:                               //  %cleanup
	mv x10, x9
.LBB0_18:                               //  %cleanup
	jal __mulsf3
.LBB0_19:                               //  %cleanup
	mv x9, x10
.LBB0_20:                               //  %cleanup
	mv x10, x9
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__ieee754_sinhf, .Lfunc_end0-__ieee754_sinhf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
