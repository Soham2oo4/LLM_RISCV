	.text
	.file	"e_pow.c"
	.globl	__ieee754_pow           //  -- Begin function __ieee754_pow
	.type	__ieee754_pow,@function
__ieee754_pow:                          //  @__ieee754_pow
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -96
	.cfi_adjust_cfa_offset 96
	sw x19, 80 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x10
	lui x10, %hi( 2147483647 )
	sw x18, 84 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x24, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	mv x18, x13
	add x24, x10, %lo( 2147483647 )
	sw x9, 88 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	mv x9, x12
	and x22, x24, x18
	sw fp, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x11
	or x10, x9, x22
	sw ra, 92 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 76 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 72 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x25, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	beq x0, x10, .LBB0_5
.LBB0_1:                                //  %if.end13
	and x20, x24, fp
	lui x25, (2146435072>>12)&1048575
	bgeu x25, x20, .LBB0_7
.LBB0_2:                                //  %if.then23
	lui x10, %hi( -1072693248 )
	add x10, x10, %lo( -1072693248 )
	add x10, x10, fp
	or x10, x19, x10
	beq x0, x10, .LBB0_3
.LBB0_20:                               //  %if.else
	mv x10, x19
	mv x11, fp
	mv x12, x9
	mv x13, x18
	jal __adddf3
.LBB0_21:                               //  %cleanup
	mv x9, x10
.LBB0_22:                               //  %cleanup
	mv x18, x11
.LBB0_23:                               //  %cleanup
	mv x10, x9
	mv x11, x18
	jal x0, .LBB0_24
.LBB0_5:                                //  %if.then
	mv x10, x19
	mv x11, fp
	mv x12, x9
	mv x13, x18
	jal __adddf3
	sll x12, fp, 1&31
	slt x13, x19, x0
	or x12, x13, x12
	lui x13, (1048576>>12)&1048575
	xor x12, x13, x12
	lui x13, %hi( -1048576 )
	add x13, x13, %lo( -1048576 )
	beq x12, x13, .LBB0_14
.LBB0_6:                                //  %if.then
	sltu x12, x12, x13
	bltu x0, x12, .LBB0_15
	jal x0, .LBB0_16
.LBB0_7:                                //  %lor.lhs.false
	xor x10, x25, x20
	seqz x10, x10
	snez x11, x19
	and x10, x10, x11
	bltu x0, x10, .LBB0_2
.LBB0_8:                                //  %lor.lhs.false
	bltu x25, x22, .LBB0_2
.LBB0_9:                                //  %lor.lhs.false19
	beq x0, x9, .LBB0_11
.LBB0_10:                               //  %lor.lhs.false19
	beq x22, x25, .LBB0_2
.LBB0_11:                               //  %if.end31
	mv x26, x0
	blt fp, x0, .LBB0_12
.LBB0_29:                               //  %if.end66
	beq x0, x9, .LBB0_88
.LBB0_30:                               //  %if.end103
	mv x10, x19
	mv x11, fp
	jal fabs
	mv x23, x10
	mv x21, x11
	bltu x0, x19, .LBB0_33
.LBB0_31:                               //  %if.then106
	beq x0, x20, .LBB0_43
.LBB0_32:                               //  %if.then106
	lui x10, (1073741824>>12)&1048575
	or x10, x10, x20
	beq x10, x25, .LBB0_43
.LBB0_33:                               //  %if.end134
	slt x10, fp, x0
	add x27, x10, -1
	or x10, x27, x26
	beq x0, x10, .LBB0_39
.LBB0_34:                               //  %if.end143
	lui x10, %hi( 1105199105 )
	add x10, x10, %lo( 1105199105 )
	lui fp, (1072693248>>12)&1048575
	bltu x22, x10, .LBB0_41
.LBB0_35:                               //  %if.then145
	lui x10, %hi( 1139802113 )
	add x10, x10, %lo( 1139802113 )
	bltu x22, x10, .LBB0_50
.LBB0_36:                               //  %if.then147
	srl x10, x20, 20&31
	add x11, x0, 1022
	bltu x11, x10, .LBB0_58
	jal x0, .LBB0_37
.LBB0_3:                                //  %land.lhs.true26
	sll x10, x18, 1&31
	slt x11, x9, x0
	or x10, x11, x10
	lui x11, (1048576>>12)&1048575
	xor x10, x11, x10
	lui x11, %hi( -1048576 )
	add x11, x11, %lo( -1048576 )
	beq x10, x11, .LBB0_18
.LBB0_4:                                //  %land.lhs.true26
	sltu x10, x10, x11
	bltu x0, x10, .LBB0_19
	jal x0, .LBB0_20
.LBB0_14:
	sll x12, x19, 1&31
	seqz x12, x12
	beq x0, x12, .LBB0_16
.LBB0_15:
	mv x10, x0
.LBB0_16:                               //  %if.then
	beq x0, x12, .LBB0_24
.LBB0_17:
	lui x11, (1072693248>>12)&1048575
.LBB0_24:                               //  %if.then
	lw fp, 44 ( sp )                //  4-byte Folded Reload
	lw x27, 48 ( sp )               //  4-byte Folded Reload
	lw x26, 52 ( sp )               //  4-byte Folded Reload
	lw x25, 56 ( sp )               //  4-byte Folded Reload
	lw x24, 60 ( sp )               //  4-byte Folded Reload
	lw x23, 64 ( sp )               //  4-byte Folded Reload
	lw x22, 68 ( sp )               //  4-byte Folded Reload
	lw x21, 72 ( sp )               //  4-byte Folded Reload
	lw x20, 76 ( sp )               //  4-byte Folded Reload
	lw x19, 80 ( sp )               //  4-byte Folded Reload
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	lw ra, 92 ( sp )                //  4-byte Folded Reload
	add sp, sp, 96
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_18:
	sll x10, x9, 1&31
	seqz x10, x10
	beq x0, x10, .LBB0_20
.LBB0_19:
	lui x18, (1072693248>>12)&1048575
	mv x9, x0
	jal x0, .LBB0_23
.LBB0_12:                               //  %if.then33
	srl x11, x22, 22&31
	add x10, x0, 268
	bgeu x10, x11, .LBB0_25
.LBB0_13:
	add x26, x0, 2
	bltu x0, x9, .LBB0_30
.LBB0_88:                               //  %if.then68
	bne x22, x25, .LBB0_93
.LBB0_89:                               //  %if.then70
	lui x10, %hi( -1072693248 )
	add x10, x10, %lo( -1072693248 )
	add x10, x10, x20
	or x10, x19, x10
	beq x0, x10, .LBB0_19
.LBB0_90:                               //  %if.else75
	srl x10, x20, 20&31
	sltiu x10, x10, 1023
	bltu x0, x10, .LBB0_99
.LBB0_91:                               //  %if.then77
	add x10, x0, -1
	blt x10, x18, .LBB0_23
.LBB0_92:                               //  %if.then77
	mv x18, x0
	mv x9, x18
	jal x0, .LBB0_23
.LBB0_39:                               //  %if.then139
	mv x10, x19
	mv x11, fp
	mv x12, x19
	mv x13, fp
.LBB0_40:                               //  %cleanup
	jal __subdf3
	mv x12, x10
	mv x13, x11
	jal __divdf3
	jal x0, .LBB0_21
.LBB0_25:                               //  %if.else36
	srl x10, x22, 20&31
	sltiu x12, x10, 1023
	bltu x0, x12, .LBB0_29
.LBB0_26:                               //  %if.then38
	sltiu x11, x11, 261
	bltu x0, x11, .LBB0_56
.LBB0_27:                               //  %if.then41
	add x11, x0, 1075
	sub x11, x11, x10
	srl x10, x9, x11
	sll x11, x10, x11
	bne x11, x9, .LBB0_29
.LBB0_28:                               //  %if.then46
	and x10, x10, 1
	add x11, x0, 2
	sub x26, x11, x10
	bltu x0, x9, .LBB0_30
	jal x0, .LBB0_88
.LBB0_41:                               //  %if.else210
	mv x19, x0
	srl x10, x20, 20&31
	bltu x0, x10, .LBB0_52
.LBB0_42:                               //  %if.then212
	mv x12, x0
	lui x13, (1128267776>>12)&1048575
	mv x10, x23
	mv x11, x21
	jal __muldf3
	mv x23, x10
	mv x20, x11
	add x10, x0, -53
	jal x0, .LBB0_53
.LBB0_43:                               //  %if.then112
	mv x19, x0
	lui x11, (1072693248>>12)&1048575
	mv x10, x19
	mv x12, x23
	mv x13, x21
	jal __divdf3
	mv x9, x10
	blt x18, x19, .LBB0_45
.LBB0_44:                               //  %if.then112
	mv x9, x23
	mv x11, x21
.LBB0_45:                               //  %if.then112
	bge fp, x0, .LBB0_22
.LBB0_46:                               //  %if.then118
	lui x10, %hi( -1072693248 )
	add x10, x10, %lo( -1072693248 )
	add x10, x10, x20
	or x10, x10, x26
	beq x0, x10, .LBB0_84
.LBB0_47:                               //  %if.else126
	seqz x10, x0
	bne x26, x10, .LBB0_49
.LBB0_48:
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x11, x10, x11
.LBB0_49:                               //  %if.else126
	mv x10, x9
	jal x0, .LBB0_24
.LBB0_50:                               //  %if.end168
	lui x10, %hi( 1072693246 )
	add x10, x10, %lo( 1072693246 )
	bltu x10, x20, .LBB0_60
.LBB0_37:                               //  %if.then149
	blt x18, x0, .LBB0_59
.LBB0_38:                               //  %cond.false153
	mv x10, x0
	jal __math_uflow
	jal x0, .LBB0_21
.LBB0_52:
	mv x10, x19
.LBB0_53:                               //  %if.end221
	sra x11, x20, 20&31
	add x11, x10, x11
	lui x10, %hi( 1048575 )
	add x10, x10, %lo( 1048575 )
	and x10, x10, x20
	add x12, x11, -1023
	lui x11, %hi( 235663 )
	or x25, fp, x10
	add x11, x11, %lo( 235663 )
	sw fp, 36 ( sp )                //  4-byte Folded Spill
	sw x26, 32 ( sp )               //  4-byte Folded Spill
	sw x27, 28 ( sp )               //  4-byte Folded Spill
	bltu x10, x11, .LBB0_63
.LBB0_54:                               //  %if.else229
	lui x11, %hi( 767610 )
	add x11, x11, %lo( 767610 )
	bgeu x10, x11, .LBB0_62
.LBB0_55:
	mv x27, x19
	sw x12, 12 ( sp )               //  4-byte Folded Spill
	seqz x19, x0
	jal x0, .LBB0_64
.LBB0_99:                               //  %if.else79
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	sra x11, x18, 31&31
	xor x10, x10, x18
	and x9, x9, x11
	and x18, x10, x11
	jal x0, .LBB0_23
.LBB0_56:                               //  %if.else50
	beq x0, x9, .LBB0_85
.LBB0_57:
	mv x26, x0
	jal x0, .LBB0_30
.LBB0_60:                               //  %if.end178
	lui x10, %hi( 1072693249 )
	add x10, x10, %lo( 1072693249 )
	bltu x20, x10, .LBB0_83
.LBB0_58:                               //  %if.then159
	bge x0, x18, .LBB0_38
.LBB0_59:                               //  %cond.true151
	mv x10, x0
	jal __math_oflow
	jal x0, .LBB0_21
.LBB0_62:                               //  %if.else232
	lui x10, %hi( -1048576 )
	add x10, x10, %lo( -1048576 )
	add x25, x10, x25
	add x12, x12, 1
.LBB0_63:                               //  %do.body237
	mv x27, x19
	sw x12, 12 ( sp )               //  4-byte Folded Spill
.LBB0_64:                               //  %do.body237
	lui x10, %hi( bp )
	sll x11, x19, 3&31
	add x10, x10, %lo( bp )
	add x10, x11, x10
	lw x20, 0 ( x10 )
	lw x22, 4 ( x10 )
	sw x11, 24 ( sp )               //  4-byte Folded Spill
	mv x10, x23
	mv x11, x25
	mv x12, x20
	mv x13, x22
	jal __subdf3
	mv x21, x10
	mv x26, x11
	mv x10, x20
	mv x11, x22
	mv x12, x23
	mv x13, x25
	sw x21, 16 ( sp )               //  4-byte Folded Spill
	jal __adddf3
	mv x12, x10
	mv x13, x11
	lui x11, (1072693248>>12)&1048575
	mv x10, x27
	jal __divdf3
	mv fp, x11
	mv x12, x10
	mv x10, x21
	mv x11, x26
	mv x13, fp
	sw x12, 20 ( sp )               //  4-byte Folded Spill
	jal __muldf3
	sw x10, 40 ( sp )               //  4-byte Folded Spill
	mv x21, x11
	sra x10, x25, 1&31
	lui x11, (536870912>>12)&1048575
	or x10, x11, x10
	sll x11, x19, 18&31
	add x10, x11, x10
	lui x11, (524288>>12)&1048575
	add x19, x11, x10
	mv x10, x27
	mv x11, x19
	mv x12, x20
	mv x13, x22
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x25
	jal __subdf3
	mv x12, x27
	mv x13, x21
	jal __muldf3
	mv x20, x10
	mv x22, x11
	mv x10, x27
	mv x11, x19
	mv x12, x27
	mv x13, x21
	jal __muldf3
	mv x12, x10
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	mv x13, x11
	mv x11, x26
	jal __subdf3
	mv x12, x20
	mv x13, x22
	jal __subdf3
	mv x12, x10
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	mv x13, x11
	mv x11, fp
	jal __muldf3
	lw x23, 40 ( sp )               //  4-byte Folded Reload
	mv x22, x11
	mv x20, x10
	mv x11, x21
	mv x10, x23
	mv x12, x23
	mv x13, x21
	jal __muldf3
	mv x25, x10
	lui x10, %hi( 1246056175 )
	add x12, x10, %lo( 1246056175 )
	lui x10, %hi( 1070235176 )
	add x13, x10, %lo( 1070235176 )
	mv x10, x25
	mv x26, x11
	jal __muldf3
	lui x12, %hi( -1815487643 )
	lui x13, %hi( 1070433866 )
	add x12, x12, %lo( -1815487643 )
	add x13, x13, %lo( 1070433866 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x26
	jal __muldf3
	lui x12, %hi( -1457700607 )
	lui x13, %hi( 1070691424 )
	add x12, x12, %lo( -1457700607 )
	add x13, x13, %lo( 1070691424 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x26
	jal __muldf3
	lui x12, %hi( 1368335949 )
	lui x13, %hi( 1070945621 )
	add x12, x12, %lo( 1368335949 )
	add x13, x13, %lo( 1070945621 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x26
	jal __muldf3
	lui x12, %hi( -613438465 )
	lui x13, %hi( 1071345078 )
	add x12, x12, %lo( -613438465 )
	add x13, x13, %lo( 1071345078 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x26
	jal __muldf3
	lui x12, %hi( 858993411 )
	lui x13, %hi( 1071854387 )
	add x12, x12, %lo( 858993411 )
	add x13, x13, %lo( 1071854387 )
	jal __adddf3
	mv fp, x10
	mv x19, x11
	mv x10, x25
	mv x11, x26
	mv x12, x25
	mv x13, x26
	jal __muldf3
	mv x12, fp
	mv x13, x19
	jal __muldf3
	mv fp, x10
	mv x19, x11
	mv x10, x23
	mv x11, x21
	mv x12, x27
	mv x13, x21
	jal __adddf3
	mv x26, x20
	mv x12, x26
	mv x13, x22
	mv x23, x22
	jal __muldf3
	mv x12, fp
	mv x13, x19
	jal __adddf3
	mv fp, x10
	mv x19, x11
	mv x10, x27
	mv x11, x21
	mv x12, x27
	mv x13, x21
	jal __muldf3
	lui x13, (1074266112>>12)&1048575
	mv x12, x27
	mv x20, x10
	mv x22, x11
	jal __adddf3
	mv x12, fp
	mv x13, x19
	jal __adddf3
	lui x10, %hi( -1073217536 )
	add x13, x10, %lo( -1073217536 )
	mv x12, x27
	mv x10, x27
	mv x25, x11
	jal __adddf3
	mv x12, x20
	mv x13, x22
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x19
	jal __subdf3
	mv x12, x10
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	mv x13, x11
	mv x11, x21
	jal __muldf3
	mv fp, x10
	mv x19, x11
	mv x10, x26
	mv x11, x23
	mv x12, x27
	mv x13, x25
	jal __muldf3
	mv x12, fp
	mv x13, x19
	jal __adddf3
	mv x19, x10
	mv x20, x11
	mv x10, x27
	mv x11, x21
	mv x12, x27
	mv x13, x25
	jal __muldf3
	mv x12, x19
	mv x13, x20
	mv x21, x10
	mv x22, x11
	jal __adddf3
	mv x10, x27
	mv x12, x21
	mv x13, x22
	mv fp, x11
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __subdf3
	lui x13, %hi( 1072613129 )
	lui x12, %hi( -600177667 )
	add x19, x13, %lo( 1072613129 )
	add x12, x12, %lo( -600177667 )
	mv x13, x19
	jal __muldf3
	mv x20, x10
	lui x10, %hi( 341508597 )
	add x12, x10, %lo( 341508597 )
	lui x10, %hi( -1103220768 )
	mv x21, x11
	add x13, x10, %lo( -1103220768 )
	mv x10, x27
	mv x11, fp
	mv x22, x27
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __adddf3
	lw x20, 24 ( sp )               //  4-byte Folded Reload
	mv x12, x10
	lui x10, %hi( dp_l )
	add x10, x10, %lo( dp_l )
	mv x13, x11
	add x11, x20, x10
	lw x10, 0 ( x11 )
	lw x11, 4 ( x11 )
	jal __adddf3
	mv x21, x10
	lui x10, %hi( -536870912 )
	mv x25, x11
	add x12, x10, %lo( -536870912 )
	mv x10, x22
	mv x11, fp
	mv x13, x19
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	sw x25, 20 ( sp )               //  4-byte Folded Spill
	jal __muldf3
	mv x12, x21
	mv x13, x25
	mv fp, x10
	mv x19, x11
	jal __adddf3
	mv x12, x10
	lui x10, %hi( dp_h )
	add x10, x10, %lo( dp_h )
	add x10, x20, x10
	lw x20, 0 ( x10 )
	lw x21, 4 ( x10 )
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __adddf3
	mv x23, x10
	lw x10, 12 ( sp )               //  4-byte Folded Reload
	mv x25, x11
	jal __floatsidf
	mv x26, x10
	mv x27, x11
	mv x11, x25
	mv x10, x23
	mv x12, x26
	mv x13, x27
	mv x25, x22
	jal __adddf3
	mv x10, x25
	mv x12, x26
	mv x13, x27
	mv x23, x11
	jal __subdf3
	mv x12, x20
	mv x13, x21
	jal __subdf3
	mv x13, x19
	mv x12, fp
	lw x19, 20 ( sp )               //  4-byte Folded Reload
	lw x22, 40 ( sp )               //  4-byte Folded Reload
	jal __subdf3
	lw x26, 32 ( sp )               //  4-byte Folded Reload
	lw x27, 28 ( sp )               //  4-byte Folded Reload
.LBB0_65:                               //  %if.end346
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x19
	jal __subdf3
	mv x20, x0
	mv fp, x10
	mv x19, x11
	mv x10, x9
	mv x11, x18
	mv x12, x20
	mv x13, x18
	jal __subdf3
	mv x12, x25
	mv x13, x23
	jal __muldf3
	mv x21, x10
	mv x22, x11
	mv x10, fp
	mv x11, x19
	mv x12, x9
	mv x13, x18
	jal __muldf3
	mv x12, x21
	mv x13, x22
	jal __adddf3
	mv x21, x10
	mv x22, x11
	mv x10, x25
	mv x11, x23
	mv x12, x20
	mv x13, x18
	jal __muldf3
	mv x12, x21
	mv x13, x22
	mv x19, x10
	mv x23, x11
	jal __adddf3
	mv fp, x10
	add x10, x26, -1
	mv x18, x11
	or x26, x27, x10
	bne x26, x20, .LBB0_68
.LBB0_67:
	lui x10, %hi( -1074790400 )
	add x10, x10, %lo( -1074790400 )
	sw x10, 36 ( sp )               //  4-byte Folded Spill
.LBB0_68:                               //  %if.end346
	lui x10, (1083179008>>12)&1048575
	blt x18, x10, .LBB0_72
.LBB0_69:                               //  %if.then380
	lui x10, %hi( -1083179008 )
	add x10, x10, %lo( -1083179008 )
	add x10, x10, x18
	or x10, fp, x10
	bltu x0, x10, .LBB0_71
.LBB0_70:                               //  %if.else389
	lui x10, %hi( 1697350398 )
	add x12, x10, %lo( 1697350398 )
	lui x10, %hi( 1016534343 )
	add x13, x10, %lo( 1016534343 )
	mv x10, x21
	mv x11, x22
	jal __adddf3
	mv x9, x10
	mv x25, x11
	mv x10, fp
	mv x11, x18
	mv x12, x19
	mv x13, x23
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x25
	jal __gtdf2
	bge x0, x10, .LBB0_75
.LBB0_71:                               //  %if.then385
	seqz x10, x26
	jal __math_oflow
	jal x0, .LBB0_21
.LBB0_72:                               //  %if.else400
	lui x10, %hi( 2147482624 )
	add x10, x10, %lo( 2147482624 )
	lui x11, %hi( 1083231232 )
	and x10, x10, x18
	add x11, x11, %lo( 1083231232 )
	bltu x10, x11, .LBB0_75
.LBB0_73:                               //  %if.then404
	lui x10, %hi( 1064252416 )
	add x10, x10, %lo( 1064252416 )
	add x10, x10, x18
	or x10, fp, x10
	bltu x0, x10, .LBB0_82
.LBB0_74:                               //  %if.else413
	mv x10, fp
	mv x11, x18
	mv x12, x19
	mv x13, x23
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __ledf2
	bge x0, x10, .LBB0_82
.LBB0_75:                               //  %if.end424
	lui x11, %hi( 1071644673 )
	and x10, x24, x18
	add x11, x11, %lo( 1071644673 )
	bltu x10, x11, .LBB0_79
.LBB0_76:                               //  %if.then430
	srl x10, x10, 20&31
	add x10, x10, -1022
	lui x11, (1048576>>12)&1048575
	srl x10, x11, x10
	lui x12, %hi( 1048575 )
	add x10, x18, x10
	add x12, x12, %lo( 1048575 )
	and x12, x12, x10
	or x12, x11, x12
	srl x11, x10, 20&31
	and x11, x11, 2047
	add x13, x0, 1043
	sub x13, x13, x11
	srl x20, x12, x13
	mv x12, x0
	bge x18, x12, .LBB0_78
.LBB0_77:
	sub x20, x0, x20
.LBB0_78:                               //  %if.then430
	lui x13, %hi( -1048576 )
	add x11, x11, -1023
	add x13, x13, %lo( -1048576 )
	sra x11, x13, x11
	and x13, x10, x11
	mv x10, x19
	mv x11, x23
	jal __subdf3
	mv x19, x10
	mv x23, x11
	mv x10, x21
	mv x11, x22
	mv x12, x19
	mv x13, x23
	jal __adddf3
	mv x18, x11
.LBB0_79:                               //  %if.end457
	mv x9, x0
	mv x10, x9
	mv x11, x18
	mv x12, x19
	mv x13, x23
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __subdf3
	lui x12, %hi( -17155601 )
	lui x13, %hi( 1072049730 )
	add x12, x12, %lo( -17155601 )
	add x13, x13, %lo( 1072049730 )
	jal __muldf3
	mv fp, x10
	lui x10, %hi( 212364345 )
	add x12, x10, %lo( 212364345 )
	lui x10, %hi( -1105175455 )
	mv x19, x11
	add x13, x10, %lo( -1105175455 )
	mv x10, x9
	mv x11, x18
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x19
	jal __adddf3
	mv x21, x10
	lui x10, %hi( 1072049731 )
	mv x22, x11
	add x13, x10, %lo( 1072049731 )
	mv x10, x9
	mv x11, x18
	mv x12, x9
	jal __muldf3
	mv x12, x21
	mv x13, x22
	mv x23, x10
	mv x24, x11
	jal __adddf3
	mv x18, x10
	mv x19, x11
	mv x12, x18
	mv x13, x19
	jal __muldf3
	mv x25, x10
	lui x10, %hi( 1925096656 )
	add x12, x10, %lo( 1925096656 )
	lui x10, %hi( 1046886249 )
	add x13, x10, %lo( 1046886249 )
	mv x10, x25
	mv x26, x11
	jal __muldf3
	lui x12, %hi( -976065551 )
	lui x13, %hi( -1094992575 )
	add x12, x12, %lo( -976065551 )
	add x13, x13, %lo( -1094992575 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x26
	jal __muldf3
	lui x12, %hi( -1356472788 )
	lui x13, %hi( 1058100842 )
	add x12, x12, %lo( -1356472788 )
	add x13, x13, %lo( 1058100842 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x26
	jal __muldf3
	lui x12, %hi( 381599123 )
	lui x13, %hi( -1083784852 )
	add x12, x12, %lo( 381599123 )
	add x13, x13, %lo( -1083784852 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x26
	jal __muldf3
	lui x12, %hi( 1431655742 )
	lui x13, %hi( 1069897045 )
	add x12, x12, %lo( 1431655742 )
	add x13, x13, %lo( 1069897045 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x26
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __subdf3
	mv fp, x10
	mv x25, x11
	mv x10, x18
	mv x11, x19
	mv x12, fp
	mv x13, x25
	jal __muldf3
	mv x26, x10
	lui x10, %hi( -1073741824 )
	mv x27, x11
	add x13, x10, %lo( -1073741824 )
	mv x10, fp
	mv x11, x25
	mv x12, x9
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x26
	mv x11, x27
	jal __divdf3
	mv fp, x10
	mv x25, x11
	mv x10, x18
	mv x11, x19
	mv x12, x23
	mv x13, x24
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __subdf3
	mv x21, x10
	mv x22, x11
	mv x10, x18
	mv x11, x19
	mv x12, x21
	mv x13, x22
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x25
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __subdf3
	lui x13, (1072693248>>12)&1048575
	mv x12, x9
	jal __adddf3
	mv x12, x10
	sll x10, x20, 20&31
	add x13, x11, x10
	lui x10, %hi( 1048575 )
	add x10, x10, %lo( 1048575 )
	blt x10, x13, .LBB0_81
.LBB0_80:                               //  %if.then507
	mv x10, x12
	mv x12, x20
	jal scalbn
	mv x12, x10
	mv x13, x11
.LBB0_81:                               //  %do.body510
	lw x11, 36 ( sp )               //  4-byte Folded Reload
	mv x10, x0
	jal x0, .LBB0_98
.LBB0_82:                               //  %if.then409
	seqz x10, x26
	jal __math_uflow
	jal x0, .LBB0_21
.LBB0_83:                               //  %if.end188
	mv x25, x0
	lui x10, %hi( -1074790400 )
	add x13, x10, %lo( -1074790400 )
	mv x10, x23
	mv x11, x21
	mv x12, x25
	sw fp, 36 ( sp )                //  4-byte Folded Spill
	jal __adddf3
	mv x20, x10
	lui x10, %hi( -1076887552 )
	add x13, x10, %lo( -1076887552 )
	mv x10, x20
	mv x12, x25
	mv x23, x11
	jal __muldf3
	lui x12, %hi( 1431655765 )
	lui x13, %hi( 1070945621 )
	add x12, x12, %lo( 1431655765 )
	add x13, x13, %lo( 1070945621 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x23
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lui x11, (1071644672>>12)&1048575
	mv x10, x25
	jal __subdf3
	mv fp, x10
	mv x21, x11
	mv x10, x20
	mv x11, x23
	mv x12, x20
	mv x13, x23
	jal __muldf3
	mv x12, fp
	mv x13, x21
	jal __muldf3
	lui x12, %hi( 1697350398 )
	lui x13, %hi( -1074326201 )
	add x12, x12, %lo( 1697350398 )
	add x13, x13, %lo( -1074326201 )
	jal __muldf3
	mv fp, x10
	lui x10, %hi( -128065724 )
	add x12, x10, %lo( -128065724 )
	lui x10, %hi( 1045736971 )
	mv x21, x11
	add x13, x10, %lo( 1045736971 )
	mv x10, x20
	mv x11, x23
	jal __muldf3
	mv x12, fp
	mv x13, x21
	jal __adddf3
	mv x22, x10
	lui x10, %hi( 1073157447 )
	mv x19, x11
	add x13, x10, %lo( 1073157447 )
	lui x12, (1610612736>>12)&1048575
	mv x10, x20
	mv x11, x23
	jal __muldf3
	mv x12, x22
	mv x13, x19
	mv fp, x10
	mv x20, x11
	jal __adddf3
	mv x10, x25
	mv x12, fp
	mv x13, x20
	mv x23, x11
	jal __subdf3
	jal x0, .LBB0_65
.LBB0_84:                               //  %if.then122
	mv x10, x9
	mv x12, x9
	mv x13, x11
	jal x0, .LBB0_40
.LBB0_85:                               //  %if.then52
	add x11, x0, 1043
	sub x11, x11, x10
	srl x10, x22, x11
	sll x11, x10, x11
	bne x11, x22, .LBB0_87
.LBB0_86:                               //  %if.then58
	and x10, x10, 1
	add x11, x0, 2
	sub x26, x11, x10
	beq x22, x25, .LBB0_89
.LBB0_93:                               //  %if.end86
	lui x10, (1072693248>>12)&1048575
	bne x22, x10, .LBB0_96
.LBB0_94:                               //  %if.then88
	blt x18, x0, .LBB0_103
.LBB0_95:
	mv x9, x19
	mv x18, fp
	jal x0, .LBB0_23
.LBB0_96:                               //  %if.end92
	lui x10, (1073741824>>12)&1048575
	bne x18, x10, .LBB0_100
.LBB0_97:                               //  %if.then94
	mv x10, x19
	mv x11, fp
	mv x12, x19
	mv x13, fp
.LBB0_98:                               //  %cleanup
	jal __muldf3
	jal x0, .LBB0_21
.LBB0_100:                              //  %if.end95
	blt fp, x0, .LBB0_30
.LBB0_101:                              //  %if.end95
	lui x10, (1071644672>>12)&1048575
	bne x18, x10, .LBB0_30
.LBB0_102:                              //  %if.then99
	mv x10, x19
	mv x11, fp
	jal __ieee754_sqrt
	jal x0, .LBB0_21
.LBB0_103:                              //  %if.then90
	mv x10, x0
	lui x11, (1072693248>>12)&1048575
	mv x12, x19
	mv x13, fp
	jal __divdf3
	jal x0, .LBB0_21
.LBB0_87:
	mv x26, x0
	bne x22, x25, .LBB0_93
	jal x0, .LBB0_89
.Lfunc_end0:
	.size	__ieee754_pow, .Lfunc_end0-__ieee754_pow
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	bp,@object              //  @bp
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3
bp:
	.quad	4607182418800017408     //  double 1
	.quad	4609434218613702656     //  double 1.5
	.size	bp, 16

	.address_space	0
	.type	dp_l,@object            //  @dp_l
	.p2align	3
dp_l:
	.quad	0                       //  double 0
	.quad	4489242115478376454     //  double 1.350039202129749E-8
	.size	dp_l, 16

	.address_space	0
	.type	dp_h,@object            //  @dp_h
	.p2align	3
dp_h:
	.quad	0                       //  double 0
	.quad	4603444093224222720     //  double 0.58496248722076416
	.size	dp_h, 16

	.hidden	__math_oflow
	.hidden	__math_uflow

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
