	.text
	.file	"e_atan2.c"
	.globl	__ieee754_atan2         //  -- Begin function __ieee754_atan2
	.type	__ieee754_atan2,@function
__ieee754_atan2:                        //  @__ieee754_atan2
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sub x15, x0, x12
	lui x14, %hi( 2147483647 )
	add x16, x14, %lo( 2147483647 )
	or x15, x15, x12
	and x14, x16, x13
	slt x15, x15, x0
	or x17, x15, x14
	lui x15, (2146435072>>12)&1048575
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	bltu x15, x17, .LBB0_36
.LBB0_1:                                //  %lor.lhs.false
	sub x17, x0, x10
	or x17, x17, x10
	lui x5, %hi( 2146435073 )
	and x16, x16, x11
	slt x17, x17, x0
	or x17, x17, x16
	add x5, x5, %lo( 2146435073 )
	bltu x17, x5, .LBB0_2
.LBB0_36:                               //  %cleanup
	jal __adddf3
.LBB0_37:                               //  %cleanup
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_2:                                //  %if.end
	lui x17, %hi( -1072693248 )
	add x17, x17, %lo( -1072693248 )
	add x17, x17, x13
	or x17, x12, x17
	beq x0, x17, .LBB0_3
.LBB0_4:                                //  %if.end22
	srl x5, x13, 30&31
	slt x17, x11, x0
	and x5, x5, 2
	or fp, x17, x5
	or x17, x10, x16
	beq x0, x17, .LBB0_5
.LBB0_8:                                //  %if.end33
	or x17, x12, x14
	beq x0, x17, .LBB0_9
.LBB0_13:                               //  %if.end38
	bne x14, x15, .LBB0_23
.LBB0_14:                               //  %if.then40
	bne x16, x15, .LBB0_20
.LBB0_15:                               //  %if.then42
	lui x13, %hi( JTI0_1 )
	sll x12, fp, 2&31
	add x13, x13, %lo( JTI0_1 )
	add x12, x13, x12
	lw x12, 0 ( x12 )
	lui x10, %hi( 1072243195 )
	add x11, x10, %lo( 1072243195 )
	lui x10, %hi( 1413754136 )
	add x10, x10, %lo( 1413754136 )
	jr x12
.LBB0_16:                               //  %sw.bb44
	lui x11, %hi( -1075240453 )
	add x11, x11, %lo( -1075240453 )
	jal x0, .LBB0_37
.LBB0_3:                                //  %if.then21
	jal atan
	jal x0, .LBB0_37
.LBB0_5:                                //  %if.then30
	sltiu x12, fp, 2
	bltu x0, x12, .LBB0_37
.LBB0_6:                                //  %if.then30
	xor x10, fp, 3
	bltu x0, x10, .LBB0_7
	jal x0, .LBB0_22
.LBB0_23:                               //  %if.end54
	bne x16, x15, .LBB0_24
.LBB0_9:                                //  %if.then36
	mv x10, x0
	blt x11, x10, .LBB0_10
.LBB0_11:                               //  %if.then36
	lui x10, %hi( 1073291771 )
	add x11, x10, %lo( 1073291771 )
	jal x0, .LBB0_12
.LBB0_10:
	lui x10, %hi( -1074191877 )
	add x11, x10, %lo( -1074191877 )
	jal x0, .LBB0_12
.LBB0_20:                               //  %if.else
	lui x12, %hi( JTI0_0 )
	sll x11, fp, 2&31
	add x12, x12, %lo( JTI0_0 )
	add x11, x12, x11
	lw x12, 0 ( x11 )
	mv x10, x0
	mv x11, x10
	jr x12
.LBB0_21:                               //  %sw.bb49
	lui x10, %hi( -2147483648 )
	add x11, x10, %lo( -2147483648 )
	mv x10, x0
	jal x0, .LBB0_37
.LBB0_7:                                //  %sw.bb31
	lui x10, %hi( 1074340347 )
	add x11, x10, %lo( 1074340347 )
	jal x0, .LBB0_12
.LBB0_22:                               //  %sw.bb32
	lui x10, %hi( -1073143301 )
	add x11, x10, %lo( -1073143301 )
.LBB0_12:                               //  %if.then36
	lui x10, %hi( 1413754136 )
	add x10, x10, %lo( 1413754136 )
	jal x0, .LBB0_37
.LBB0_24:                               //  %if.end59
	sub x16, x16, x14
	lui x14, %hi( 63963135 )
	lui x9, %hi( 1413754136 )
	add x14, x14, %lo( 63963135 )
	bge x14, x16, .LBB0_26
.LBB0_25:
	lui x10, %hi( 1073291771 )
	add x15, x10, %lo( 1073291771 )
	add x14, x9, %lo( 1413754136 )
	bltu x0, fp, .LBB0_31
	jal x0, .LBB0_30
.LBB0_26:                               //  %if.else64
	bge x13, x0, .LBB0_28
.LBB0_27:                               //  %if.else64
	lui x15, %hi( -62914560 )
	mv x14, x0
	add x17, x15, %lo( -62914560 )
	mv x15, x14
	blt x16, x17, .LBB0_29
.LBB0_28:                               //  %if.else68
	jal __divdf3
	jal fabs
	jal atan
	mv x14, x10
	mv x15, x11
.LBB0_29:                               //  %if.end72
	beq x0, fp, .LBB0_30
.LBB0_31:                               //  %if.end72
	xor x10, fp, 2
	beq x0, x10, .LBB0_34
.LBB0_32:                               //  %if.end72
	xor x10, fp, 1
	bltu x0, x10, .LBB0_35
.LBB0_33:                               //  %sw.bb74
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x11, x10, x15
	mv x10, x14
	jal x0, .LBB0_37
.LBB0_17:                               //  %sw.bb45
	lui x10, %hi( 1073928572 )
	add x11, x10, %lo( 1073928572 )
	jal x0, .LBB0_18
.LBB0_19:                               //  %sw.bb46
	lui x10, %hi( -1073555076 )
	add x11, x10, %lo( -1073555076 )
.LBB0_18:                               //  %cleanup
	lui x10, %hi( 2134057426 )
	add x10, x10, %lo( 2134057426 )
	jal x0, .LBB0_37
.LBB0_30:
	mv x10, x14
	mv x11, x15
	jal x0, .LBB0_37
.LBB0_34:                               //  %sw.bb88
	lui x10, %hi( 856972295 )
	add x12, x10, %lo( 856972295 )
	lui x10, %hi( -1130256858 )
	add x13, x10, %lo( -1130256858 )
	mv x10, x14
	mv x11, x15
	jal __adddf3
	mv x13, x11
	lui x11, %hi( 1074340347 )
	mv x12, x10
	add x10, x9, %lo( 1413754136 )
	add x11, x11, %lo( 1074340347 )
	jal __subdf3
	jal x0, .LBB0_37
.LBB0_35:                               //  %sw.default
	lui x10, %hi( 856972295 )
	add x12, x10, %lo( 856972295 )
	lui x10, %hi( -1130256858 )
	add x13, x10, %lo( -1130256858 )
	mv x10, x14
	mv x11, x15
	jal __adddf3
	lui x13, %hi( -1073143301 )
	add x12, x9, %lo( 1413754136 )
	add x13, x13, %lo( -1073143301 )
	jal x0, .LBB0_36
.Lfunc_end0:
	.size	__ieee754_atan2, .Lfunc_end0-__ieee754_atan2
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_37
	.long	.LBB0_21
	.long	.LBB0_7
	.long	.LBB0_22
JTI0_1:
	.long	.LBB0_37
	.long	.LBB0_16
	.long	.LBB0_17
	.long	.LBB0_19
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
