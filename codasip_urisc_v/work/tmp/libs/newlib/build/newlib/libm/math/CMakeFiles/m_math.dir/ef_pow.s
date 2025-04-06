	.text
	.file	"ef_pow.c"
	.globl	__ieee754_powf          //  -- Begin function __ieee754_powf
	.type	__ieee754_powf,@function
__ieee754_powf:                         //  @__ieee754_powf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	lui x10, %hi( 2147483647 )
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x25, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	mv x9, x11
	add x25, x10, %lo( 2147483647 )
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	and x21, x25, x9
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	beq x0, x21, .LBB0_6
.LBB0_1:                                //  %if.end9
	and x20, x25, x18
	lui x22, (2139095040>>12)&1048575
	bltu x22, x20, .LBB0_8
.LBB0_2:                                //  %if.end9
	lui x10, %hi( 2139095041 )
	add x10, x10, %lo( 2139095041 )
	bgeu x21, x10, .LBB0_8
.LBB0_3:                                //  %if.end18
	mv x26, x0
	blt x18, x0, .LBB0_4
.LBB0_14:                               //  %if.end36
	lui fp, (1065353216>>12)&1048575
	beq x21, fp, .LBB0_21
.LBB0_15:                               //  %if.end36
	bne x21, x22, .LBB0_23
.LBB0_16:                               //  %if.then38
	lui x10, (1065353216>>12)&1048575
	beq x20, x10, .LBB0_80
.LBB0_17:                               //  %if.else41
	lui x10, %hi( 1065353217 )
	add x10, x10, %lo( 1065353217 )
	bltu x20, x10, .LBB0_29
.LBB0_18:                               //  %if.then43
	add x10, x0, -1
	blt x10, x9, .LBB0_20
.LBB0_19:                               //  %if.then43
	mv x9, x0
.LBB0_20:                               //  %if.then43
	mv x10, x9
	jal x0, .LBB0_80
.LBB0_6:                                //  %if.then
	sll x10, x18, 1&31
	lui x11, (8388608>>12)&1048575
	xor fp, x11, x10
	mv x10, x18
	mv x11, x9
	jal __addsf3
	lui x11, %hi( -8388607 )
	add x11, x11, %lo( -8388607 )
	bgeu fp, x11, .LBB0_80
.LBB0_7:
	lui x10, (1065353216>>12)&1048575
	jal x0, .LBB0_80
.LBB0_8:                                //  %if.then12
	lui x10, (1065353216>>12)&1048575
	bne x18, x10, .LBB0_10
.LBB0_9:                                //  %land.lhs.true
	sll x11, x9, 1&31
	lui x12, (8388608>>12)&1048575
	xor x11, x12, x11
	lui x12, %hi( -8388607 )
	add x12, x12, %lo( -8388607 )
	bltu x11, x12, .LBB0_80
.LBB0_10:                               //  %if.else
	mv x10, x18
	mv x11, x9
	jal __addsf3
	jal x0, .LBB0_80
.LBB0_4:                                //  %if.then20
	srl x10, x21, 23&31
	add x11, x0, 150
	bgeu x11, x10, .LBB0_11
.LBB0_5:
	add x26, x0, 2
	lui fp, (1065353216>>12)&1048575
	bne x21, fp, .LBB0_15
.LBB0_21:                               //  %if.then54
	blt x9, x0, .LBB0_28
.LBB0_22:
	mv x10, x18
	jal x0, .LBB0_80
.LBB0_23:                               //  %if.end58
	lui x23, (1073741824>>12)&1048575
	bne x9, x23, .LBB0_25
.LBB0_24:                               //  %if.then60
	mv x10, x18
	mv x11, x18
.LBB0_79:                               //  %if.then
	jal __mulsf3
	jal x0, .LBB0_80
.LBB0_11:                               //  %if.else23
	sltiu x12, x10, 127
	bltu x0, x12, .LBB0_14
.LBB0_12:                               //  %if.then25
	sub x11, x11, x10
	srl x10, x21, x11
	sll x11, x10, x11
	bne x11, x21, .LBB0_14
.LBB0_13:                               //  %if.then30
	and x10, x10, 1
	add x11, x0, 2
	sub x26, x11, x10
	lui fp, (1065353216>>12)&1048575
	bne x21, fp, .LBB0_15
	jal x0, .LBB0_21
.LBB0_25:                               //  %if.end61
	blt x18, x0, .LBB0_30
.LBB0_26:                               //  %if.end61
	lui x10, (1056964608>>12)&1048575
	bne x9, x10, .LBB0_30
.LBB0_27:                               //  %if.then65
	mv x10, x18
	jal __ieee754_sqrtf
	jal x0, .LBB0_80
.LBB0_28:                               //  %if.then56
	lui x10, (1065353216>>12)&1048575
	mv x11, x18
	jal __divsf3
	jal x0, .LBB0_80
.LBB0_29:                               //  %if.else45
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x10, x10, x9
	sra x11, x9, 31&31
	and x10, x10, x11
	jal x0, .LBB0_80
.LBB0_30:                               //  %if.end68
	mv x10, x18
	jal fabsf
	mv x19, x10
	beq x0, x20, .LBB0_37
.LBB0_31:                               //  %if.end68
	or x10, x23, x20
	beq x10, x22, .LBB0_37
.LBB0_32:                               //  %if.end95
	slt x10, x18, x0
	add x23, x10, -1
	or x10, x23, x26
	beq x0, x10, .LBB0_43
.LBB0_33:                               //  %if.end104
	lui x10, %hi( 1291845633 )
	add x10, x10, %lo( 1291845633 )
	lui x24, %hi( -4096 )
	bltu x21, x10, .LBB0_44
.LBB0_34:                               //  %if.then106
	lui x10, %hi( 1065353203 )
	add x10, x10, %lo( 1065353203 )
	bltu x10, x20, .LBB0_46
.LBB0_35:                               //  %if.then108
	blt x9, x0, .LBB0_48
.LBB0_36:                               //  %cond.false112
	mv x10, x0
	jal __math_uflowf
	jal x0, .LBB0_80
.LBB0_37:                               //  %if.then75
	lui x10, (1065353216>>12)&1048575
	mv x11, x19
	jal __divsf3
	mv x11, x0
	blt x9, x11, .LBB0_39
.LBB0_38:                               //  %if.then75
	mv x10, x19
.LBB0_39:                               //  %if.then75
	bge x18, x0, .LBB0_80
.LBB0_40:                               //  %if.then81
	lui x11, %hi( -1065353216 )
	add x11, x11, %lo( -1065353216 )
	add x11, x11, x20
	or x11, x11, x26
	beq x0, x11, .LBB0_54
.LBB0_41:                               //  %if.else88
	seqz x11, x0
	bne x26, x11, .LBB0_80
.LBB0_42:
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x10, x11, x10
	jal x0, .LBB0_80
.LBB0_43:                               //  %if.then100
	mv x10, x18
	mv x11, x18
	jal x0, .LBB0_55
.LBB0_44:                               //  %if.else153
	srl x21, x20, 23&31
	mv x24, x0
	beq x21, x24, .LBB0_49
.LBB0_45:                               //  %if.else153
	add x18, x0, -127
	lui x11, (1266679808>>12)&1048575
	mv x10, x19
	jal __mulsf3
	beq x21, x24, .LBB0_51
.LBB0_50:                               //  %if.else153
	mv x10, x20
.LBB0_51:                               //  %if.else153
	sra x11, x10, 23&31
	add x12, x11, x18
	lui x11, %hi( 8388607 )
	add x11, x11, %lo( 8388607 )
	and x10, x11, x10
	lui x11, %hi( 1885298 )
	or x20, fp, x10
	add x11, x11, %lo( 1885298 )
	sw x23, 8 ( sp )                //  4-byte Folded Spill
	bltu x10, x11, .LBB0_58
.LBB0_52:                               //  %if.else172
	lui x11, %hi( 6140887 )
	add x11, x11, %lo( 6140887 )
	bgeu x10, x11, .LBB0_57
.LBB0_53:
	sw x12, 4 ( sp )                //  4-byte Folded Spill
	seqz x24, x0
	jal x0, .LBB0_59
.LBB0_46:                               //  %if.end116
	lui x10, %hi( 1065353224 )
	add x10, x10, %lo( 1065353224 )
	bltu x20, x10, .LBB0_56
.LBB0_47:                               //  %if.then118
	bge x0, x9, .LBB0_36
.LBB0_48:                               //  %cond.true110
	mv x10, x0
	jal __math_oflowf
	jal x0, .LBB0_80
.LBB0_49:
	add x18, x0, -151
	lui x11, (1266679808>>12)&1048575
	mv x10, x19
	jal __mulsf3
	beq x21, x24, .LBB0_51
	jal x0, .LBB0_50
.LBB0_54:                               //  %if.then84
	mv x11, x10
.LBB0_55:                               //  %cleanup
	jal __subsf3
	mv x11, x10
	jal __divsf3
	jal x0, .LBB0_80
.LBB0_57:                               //  %if.else175
	lui x10, %hi( -8388608 )
	add x10, x10, %lo( -8388608 )
	add x20, x10, x20
	add x12, x12, 1
.LBB0_58:                               //  %do.body180
	sw x12, 4 ( sp )                //  4-byte Folded Spill
.LBB0_59:                               //  %do.body180
	lui x10, %hi( bp )
	sll x18, x24, 2&31
	add x10, x10, %lo( bp )
	add x10, x18, x10
	lw x21, 0 ( x10 )
	mv x10, x20
	mv x11, x21
	jal __subsf3
	mv x22, x10
	mv x10, x21
	mv x11, x20
	jal __addsf3
	mv x11, x10
	lui x10, (1065353216>>12)&1048575
	jal __divsf3
	mv x23, x10
	mv x10, x22
	mv x11, x23
	jal __mulsf3
	mv x19, x10
	sra x10, x20, 1&31
	lui x11, (536870912>>12)&1048575
	or x10, x11, x10
	sll x11, x24, 21&31
	add x10, x11, x10
	lui x11, (262144>>12)&1048575
	add x24, x11, x10
	mv x10, x24
	mv x11, x21
	jal __subsf3
	mv x11, x10
	mv x10, x20
	jal __subsf3
	lui x11, %hi( -4096 )
	add x27, x11, %lo( -4096 )
	and x20, x27, x19
	mv x11, x20
	jal __mulsf3
	mv x21, x10
	mv x10, x24
	mv x11, x20
	jal __mulsf3
	mv x11, x10
	mv x10, x22
	jal __subsf3
	mv x11, x21
	jal __subsf3
	mv x11, x10
	mv x10, x23
	jal __mulsf3
	mv x21, x10
	mv x10, x19
	mv x11, x20
	jal __addsf3
	mv x11, x21
	jal __mulsf3
	mv x22, x10
	mv x10, x19
	mv x11, x19
	jal __mulsf3
	mv x23, x10
	lui x10, %hi( 1045688642 )
	add x11, x10, %lo( 1045688642 )
	mv x10, x23
	jal __mulsf3
	lui x11, %hi( 1047278165 )
	add x11, x11, %lo( 1047278165 )
	jal __addsf3
	mv x11, x10
	mv x10, x23
	jal __mulsf3
	lui x11, %hi( 1049338629 )
	add x11, x11, %lo( 1049338629 )
	jal __addsf3
	mv x11, x10
	mv x10, x23
	jal __mulsf3
	lui x11, %hi( 1051372203 )
	add x11, x11, %lo( 1051372203 )
	jal __addsf3
	mv x11, x10
	mv x10, x23
	jal __mulsf3
	lui x11, %hi( 1054567863 )
	add x11, x11, %lo( 1054567863 )
	jal __addsf3
	mv x11, x10
	mv x10, x23
	jal __mulsf3
	lui x11, %hi( 1058642330 )
	add x11, x11, %lo( 1058642330 )
	jal __addsf3
	mv x24, x10
	mv x10, x23
	mv x11, x23
	jal __mulsf3
	mv x11, x24
	jal __mulsf3
	mv x11, x10
	mv x10, x22
	jal __addsf3
	mv x22, x10
	mv x10, x20
	mv x11, x20
	jal __mulsf3
	lui x11, (1077936128>>12)&1048575
	mv x23, x10
	jal __addsf3
	mv x11, x22
	jal __addsf3
	and x24, x27, x10
	lui x10, %hi( -1069547520 )
	add x11, x10, %lo( -1069547520 )
	mv x10, x24
	jal __addsf3
	mv x11, x23
	jal __subsf3
	mv x11, x10
	mv x10, x22
	jal __subsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	mv x19, x10
	mv x10, x21
	mv x11, x24
	jal __mulsf3
	mv x11, x19
	jal __addsf3
	mv x19, x10
	mv x10, x20
	mv x11, x24
	jal __mulsf3
	mv x11, x19
	mv x20, x10
	jal __addsf3
	and x21, x27, x10
	mv x10, x21
	mv x11, x20
	jal __subsf3
	mv x11, x10
	mv x10, x19
	jal __subsf3
	lui x11, %hi( 1064712271 )
	add x11, x11, %lo( 1064712271 )
	jal __mulsf3
	mv x19, x10
	lui x10, %hi( 916308896 )
	add x11, x10, %lo( 916308896 )
	mv x10, x21
	jal __mulsf3
	mv x11, x19
	jal __addsf3
	mv x11, x10
	lui x10, %hi( dp_l )
	add x10, x10, %lo( dp_l )
	add x10, x18, x10
	lw x10, 0 ( x10 )
	jal __addsf3
	mv x19, x10
	lui x10, %hi( 1064712192 )
	add x11, x10, %lo( 1064712192 )
	mv x10, x21
	jal __mulsf3
	mv x11, x19
	mv x21, x10
	jal __addsf3
	mv x11, x10
	lui x10, %hi( dp_h )
	add x10, x10, %lo( dp_h )
	add x10, x18, x10
	lw x22, 0 ( x10 )
	mv x10, x22
	jal __addsf3
	mv x20, x10
	lw x10, 4 ( sp )                //  4-byte Folded Reload
	jal __floatsisf
	mv x18, x10
	mv x10, x20
	mv x11, x18
	jal __addsf3
	and x20, x27, x10
	mv x10, x20
	mv x11, x18
	lui x24, %hi( -4096 )
	jal __subsf3
	mv x11, x22
	jal __subsf3
	mv x11, x21
	jal __subsf3
	lw x23, 8 ( sp )                //  4-byte Folded Reload
.LBB0_60:                               //  %if.end306
	mv x11, x10
	mv x10, x19
	jal __subsf3
	add x22, x24, %lo( -4096 )
	and x19, x22, x9
	mv x18, x10
	mv x10, x9
	mv x11, x19
	jal __subsf3
	mv x11, x20
	jal __mulsf3
	mv x21, x10
	mv x10, x18
	mv x11, x9
	jal __mulsf3
	mv x11, x21
	jal __addsf3
	mv x18, x10
	mv x10, x20
	mv x11, x19
	jal __mulsf3
	mv x11, x18
	mv x19, x10
	jal __addsf3
	mv x20, x10
	add x10, x26, -1
	or x21, x23, x10
	mv x9, x0
	bne x21, x9, .LBB0_63
.LBB0_62:
	lui x10, %hi( -1082130432 )
	add fp, x10, %lo( -1082130432 )
.LBB0_63:                               //  %if.end306
	and x23, x25, x20
	bge x0, x20, .LBB0_68
.LBB0_64:                               //  %if.then343
	lui x10, %hi( 1124073473 )
	add x10, x10, %lo( 1124073473 )
	bgeu x23, x10, .LBB0_67
.LBB0_65:                               //  %if.else350
	lui x10, (1124073472>>12)&1048575
	bne x23, x10, .LBB0_72
.LBB0_66:                               //  %if.then353
	lui x10, %hi( 859351612 )
	add x11, x10, %lo( 859351612 )
	mv x10, x18
	jal __addsf3
	mv x9, x10
	mv x10, x20
	mv x11, x19
	jal __subsf3
	mv x11, x10
	mv x10, x9
	jal __gtsf2
	bge x0, x10, .LBB0_73
.LBB0_67:                               //  %if.then346
	seqz x10, x21
	jal __math_oflowf
	jal x0, .LBB0_80
.LBB0_68:                               //  %if.else365
	lui x10, %hi( 1125515265 )
	add x10, x10, %lo( 1125515265 )
	bgeu x23, x10, .LBB0_71
.LBB0_69:                               //  %if.else372
	mv x10, x20
	mv x11, x19
	jal __subsf3
	mv x11, x10
	mv x10, x18
	jal __lesf2
	blt x0, x10, .LBB0_72
.LBB0_70:                               //  %if.else372
	lui x10, (1125515264>>12)&1048575
	bne x23, x10, .LBB0_72
.LBB0_71:                               //  %if.then368
	seqz x10, x21
	jal __math_uflowf
.LBB0_80:                               //  %if.then
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x27, 16 ( sp )               //  4-byte Folded Reload
	lw x26, 20 ( sp )               //  4-byte Folded Reload
	lw x25, 24 ( sp )               //  4-byte Folded Reload
	lw x24, 28 ( sp )               //  4-byte Folded Reload
	lw x23, 32 ( sp )               //  4-byte Folded Reload
	lw x22, 36 ( sp )               //  4-byte Folded Reload
	lw x21, 40 ( sp )               //  4-byte Folded Reload
	lw x20, 44 ( sp )               //  4-byte Folded Reload
	lw x19, 48 ( sp )               //  4-byte Folded Reload
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	lw x9, 56 ( sp )                //  4-byte Folded Reload
	lw ra, 60 ( sp )                //  4-byte Folded Reload
	add sp, sp, 64
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_72:                               //  %if.end386
	lui x10, %hi( 1056964609 )
	add x10, x10, %lo( 1056964609 )
	bltu x23, x10, .LBB0_76
.LBB0_73:                               //  %if.then391
	srl x10, x23, 23&31
	add x10, x10, -126
	lui x11, (8388608>>12)&1048575
	srl x10, x11, x10
	lui x12, %hi( 8388607 )
	add x10, x20, x10
	add x12, x12, %lo( 8388607 )
	and x12, x12, x10
	or x12, x11, x12
	srl x11, x10, 23&31
	and x11, x11, 255
	add x13, x0, 150
	sub x13, x13, x11
	srl x9, x12, x13
	mv x12, x0
	bge x20, x12, .LBB0_75
.LBB0_74:
	sub x9, x0, x9
.LBB0_75:                               //  %if.then391
	lui x12, %hi( -8388608 )
	add x11, x11, -127
	add x12, x12, %lo( -8388608 )
	sra x11, x12, x11
	and x11, x10, x11
	mv x10, x19
	jal __subsf3
	mv x19, x10
	mv x10, x18
	mv x11, x19
	jal __addsf3
	mv x20, x10
.LBB0_76:                               //  %if.end416
	lui x10, %hi( 1060205056 )
	and x21, x22, x20
	add x11, x10, %lo( 1060205056 )
	mv x10, x21
	jal __mulsf3
	mv x20, x10
	mv x10, x21
	mv x11, x19
	jal __subsf3
	mv x11, x10
	mv x10, x18
	jal __subsf3
	lui x11, %hi( 1060205080 )
	add x11, x11, %lo( 1060205080 )
	jal __mulsf3
	mv x18, x10
	lui x10, %hi( 901758604 )
	add x11, x10, %lo( 901758604 )
	mv x10, x21
	jal __mulsf3
	mv x11, x18
	jal __addsf3
	mv x19, x10
	mv x10, x20
	mv x11, x19
	jal __addsf3
	mv x18, x10
	mv x11, x18
	jal __mulsf3
	mv x21, x10
	lui x10, %hi( 858897228 )
	add x11, x10, %lo( 858897228 )
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( -1243747826 )
	add x11, x11, %lo( -1243747826 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 948613973 )
	add x11, x11, %lo( 948613973 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( -1154086047 )
	add x11, x11, %lo( -1154086047 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 1042983595 )
	add x11, x11, %lo( 1042983595 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	mv x11, x10
	mv x10, x18
	jal __subsf3
	mv x21, x10
	mv x10, x18
	mv x11, x21
	jal __mulsf3
	mv x22, x10
	lui x10, %hi( -1073741824 )
	add x11, x10, %lo( -1073741824 )
	mv x10, x21
	jal __addsf3
	mv x11, x10
	mv x10, x22
	jal __divsf3
	mv x21, x10
	mv x10, x18
	mv x11, x20
	jal __subsf3
	mv x11, x10
	mv x10, x19
	jal __subsf3
	mv x19, x10
	mv x10, x18
	mv x11, x19
	jal __mulsf3
	mv x11, x10
	mv x10, x19
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __subsf3
	mv x11, x10
	mv x10, x18
	jal __subsf3
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	sll x11, x9, 23&31
	lui x12, %hi( 8388607 )
	add x11, x10, x11
	add x12, x12, %lo( 8388607 )
	blt x12, x11, .LBB0_78
.LBB0_77:                               //  %if.then470
	mv x11, x9
	jal scalbnf
	mv x11, x10
.LBB0_78:                               //  %if.end479
	mv x10, fp
	jal x0, .LBB0_79
.LBB0_56:                               //  %if.end126
	lui x10, %hi( -1082130432 )
	add x11, x10, %lo( -1082130432 )
	mv x10, x19
	jal __addsf3
	mv x18, x10
	mv x11, x18
	jal __mulsf3
	mv x19, x10
	lui x10, %hi( -1098907648 )
	add x11, x10, %lo( -1098907648 )
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1051372203 )
	add x11, x11, %lo( 1051372203 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x10
	lui x10, (1056964608>>12)&1048575
	jal __subsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	mv x19, x10
	lui x10, %hi( 1069066752 )
	add x11, x10, %lo( 1069066752 )
	mv x10, x18
	jal __mulsf3
	mv x21, x10
	lui x10, %hi( 921478512 )
	add x11, x10, %lo( 921478512 )
	mv x10, x18
	jal __mulsf3
	mv x18, x10
	lui x10, %hi( -1078416837 )
	add x11, x10, %lo( -1078416837 )
	mv x10, x19
	jal __mulsf3
	mv x11, x10
	mv x10, x18
	jal __addsf3
	mv x19, x10
	mv x10, x21
	mv x11, x19
	jal __addsf3
	add x11, x24, %lo( -4096 )
	and x20, x11, x10
	mv x10, x20
	mv x11, x21
	jal __subsf3
	jal x0, .LBB0_60
.Lfunc_end0:
	.size	__ieee754_powf, .Lfunc_end0-__ieee754_powf
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	bp,@object              //  @bp
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
bp:
	.long	1065353216              //  float 1
	.long	1069547520              //  float 1.5
	.size	bp, 8

	.address_space	0
	.type	dp_l,@object            //  @dp_l
	.p2align	2
dp_l:
	.long	0                       //  float 0
	.long	902942684               //  float 1.56322085E-6
	.size	dp_l, 8

	.address_space	0
	.type	dp_h,@object            //  @dp_h
	.p2align	2
dp_h:
	.long	0                       //  float 0
	.long	1058390016              //  float 0.584960938
	.size	dp_h, 8

	.hidden	__math_oflowf
	.hidden	__math_uflowf

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
