	.text
	.file	"ef_atan2.c"
	.globl	__ieee754_atan2f        //  -- Begin function __ieee754_atan2f
	.type	__ieee754_atan2f,@function
__ieee754_atan2f:                       //  @__ieee754_atan2f
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lui x12, %hi( 2147483647 )
	add x14, x12, %lo( 2147483647 )
	and x12, x14, x10
	lui x13, (2139095040>>12)&1048575
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	bltu x13, x12, .LBB0_33
.LBB0_1:                                //  %entry
	lui x15, %hi( 2139095041 )
	and x14, x14, x11
	add x15, x15, %lo( 2139095041 )
	bgeu x14, x15, .LBB0_33
.LBB0_2:                                //  %if.end
	lui x15, (1065353216>>12)&1048575
	bne x11, x15, .LBB0_4
.LBB0_3:                                //  %if.then10
	jal atanf
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_4:                                //  %if.end11
	srl x16, x11, 30&31
	slt x15, x10, x0
	and x16, x16, 2
	or fp, x15, x16
	beq x0, x12, .LBB0_5
.LBB0_8:                                //  %if.end19
	beq x14, x13, .LBB0_12
.LBB0_9:                                //  %if.end19
	beq x0, x14, .LBB0_10
.LBB0_20:                               //  %if.end39
	bne x12, x13, .LBB0_21
.LBB0_10:                               //  %if.then21
	mv x11, x0
	blt x10, x11, .LBB0_11
.LBB0_35:                               //  %if.then21
	lui x10, %hi( 1070141403 )
	add x10, x10, %lo( 1070141403 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_5:                                //  %if.then16
	sltiu x11, fp, 2
	bltu x0, x11, .LBB0_34
.LBB0_6:                                //  %if.then16
	xor x10, fp, 3
	bltu x0, x10, .LBB0_7
	jal x0, .LBB0_19
.LBB0_12:                               //  %if.then25
	bne x12, x13, .LBB0_17
.LBB0_13:                               //  %if.then27
	lui x12, %hi( JTI0_1 )
	sll x11, fp, 2&31
	add x12, x12, %lo( JTI0_1 )
	add x11, x12, x11
	lw x11, 0 ( x11 )
	lui x10, %hi( 1061752795 )
	add x10, x10, %lo( 1061752795 )
	jr x11
.LBB0_14:                               //  %sw.bb29
	lui x10, %hi( -1085730853 )
	add x10, x10, %lo( -1085730853 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_11:
	lui x10, %hi( -1077342245 )
	add x10, x10, %lo( -1077342245 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_21:                               //  %if.end44
	lui x13, %hi( 511705087 )
	sub x12, x12, x14
	add x13, x13, %lo( 511705087 )
	bge x13, x12, .LBB0_23
.LBB0_22:
	lui x10, %hi( 1070141403 )
	add x10, x10, %lo( 1070141403 )
	bltu x0, fp, .LBB0_28
	jal x0, .LBB0_34
.LBB0_17:                               //  %if.else
	lui x12, %hi( JTI0_0 )
	sll x11, fp, 2&31
	add x12, x12, %lo( JTI0_0 )
	add x11, x12, x11
	lw x11, 0 ( x11 )
	mv x10, x0
	jr x11
.LBB0_18:                               //  %sw.bb34
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_7:                                //  %sw.bb17
	lui x10, %hi( 1078530011 )
	add x10, x10, %lo( 1078530011 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_19:                               //  %sw.bb18
	lui x10, %hi( -1068953637 )
	add x10, x10, %lo( -1068953637 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_23:                               //  %if.else48
	bge x11, x0, .LBB0_26
.LBB0_24:                               //  %if.else48
	lui x13, %hi( -503316480 )
	add x13, x13, %lo( -503316480 )
	bge x12, x13, .LBB0_26
.LBB0_25:
	mv x10, x0
	bltu x0, fp, .LBB0_28
	jal x0, .LBB0_34
.LBB0_15:                               //  %sw.bb30
	lui x10, %hi( 1075235812 )
	add x10, x10, %lo( 1075235812 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_16:                               //  %sw.bb31
	lui x10, %hi( -1072247836 )
	add x10, x10, %lo( -1072247836 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_26:                               //  %if.else52
	jal __divsf3
	jal fabsf
	jal atanf
	beq x0, fp, .LBB0_34
.LBB0_28:                               //  %if.end56
	xor x11, fp, 2
	beq x0, x11, .LBB0_31
.LBB0_29:                               //  %if.end56
	xor x11, fp, 1
	bltu x0, x11, .LBB0_32
.LBB0_30:                               //  %sw.bb58
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x10, x11, x10
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_31:                               //  %sw.bb70
	lui x11, %hi( 867941678 )
	add x11, x11, %lo( 867941678 )
	jal __addsf3
	mv x11, x10
	lui x10, %hi( 1078530011 )
	add x10, x10, %lo( 1078530011 )
	jal __subsf3
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_32:                               //  %sw.default
	lui x11, %hi( 867941678 )
	add x11, x11, %lo( 867941678 )
	jal __addsf3
	lui x11, %hi( -1068953637 )
	add x11, x11, %lo( -1068953637 )
.LBB0_33:                               //  %cleanup
	jal __addsf3
.LBB0_34:                               //  %cleanup
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__ieee754_atan2f, .Lfunc_end0-__ieee754_atan2f
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_34
	.long	.LBB0_18
	.long	.LBB0_7
	.long	.LBB0_19
JTI0_1:
	.long	.LBB0_34
	.long	.LBB0_14
	.long	.LBB0_15
	.long	.LBB0_16
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
