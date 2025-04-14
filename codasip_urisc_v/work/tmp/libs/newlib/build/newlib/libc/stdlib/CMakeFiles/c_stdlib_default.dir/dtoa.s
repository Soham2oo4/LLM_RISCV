	.text
	.file	"dtoa.c"
	.globl	_dtoa_r                 //  -- Begin function _dtoa_r
	.type	_dtoa_r,@function
_dtoa_r:                                //  @_dtoa_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -144
	.cfi_adjust_cfa_offset 144
	sw x18, 132 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	sw x25, 104 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	mv x25, x11
	lw x11, 64 ( x18 )
	sw x9, 136 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 128 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 124 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 120 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23, 112 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 108 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw fp, 92 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv x9, x17
	mv fp, x16
	mv x19, x15
	mv x20, x14
	mv x24, x13
	mv x23, x12
	seqz x21, x0
	sw ra, 140 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x22, 116 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x26, 100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 96 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	beq x0, x11, .LBB0_2
.LBB0_1:                                //  %if.then
	lw x10, 68 ( x18 )
	sll x12, x21, x10
	sw x10, 4 ( x11 )
	mv x10, x18
	sw x12, 8 ( x11 )
	jal _Bfree
	sw x0, 64 ( x18 )
.LBB0_2:                                //  %if.end
	blt x23, x0, .LBB0_9
.LBB0_3:                                //  %if.else
	sw x0, 0 ( fp )
	lui x10, (2146435072>>12)&1048575
	and x22, x10, x23
	bne x22, x10, .LBB0_10
.LBB0_4:                                //  %if.then17
	lui x10, %hi( 9999 )
	add x10, x10, %lo( 9999 )
	sw x10, 0 ( x19 )
	lui x10, %hi( .str.1 )
	bltu x0, x25, .LBB0_6
.LBB0_5:                                //  %land.rhs
	lui x11, %hi( 1048575 )
	add x11, x11, %lo( 1048575 )
	and x11, x11, x23
	mv x12, x0
	beq x11, x12, .LBB0_19
.LBB0_6:                                //  %land.rhs
	add x20, x10, %lo( .str.1 )
	bltu x0, x9, .LBB0_7
.LBB0_249:                              //  %land.rhs
	jal x0, .LBB0_184
.LBB0_7:                                //  %if.then26
	lbu x10, 3 ( x20 )
	mv x11, x0
	beq x10, x11, .LBB0_15
.LBB0_8:                                //  %if.then26
	add x10, x20, 8
	jal x0, .LBB0_16
.LBB0_9:                                //  %if.then9
	seqz x10, x0
	sw x10, 0 ( fp )
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x23, x10, x23
	lui x10, (2146435072>>12)&1048575
	and x22, x10, x23
	beq x22, x10, .LBB0_4
.LBB0_10:                               //  %if.end32
	mv fp, x0
	mv x10, x25
	mv x11, x23
	mv x12, fp
	mv x13, fp
	jal __nedf2
	beq x0, x10, .LBB0_13
.LBB0_11:                               //  %if.end40
	add x13, sp, 84
	add x14, sp, 88
	mv x10, x18
	mv x11, x25
	mv x12, x23
	jal __d2b
	srl x11, x23, 20&31
	and x13, x11, 2047
	sw x9, 64 ( sp )                //  4-byte Folded Spill
	sw x19, 60 ( sp )               //  4-byte Folded Spill
	sw x10, 76 ( sp )               //  4-byte Folded Spill
	sw x22, 32 ( sp )               //  4-byte Folded Spill
	beq x0, x13, .LBB0_17
.LBB0_12:                               //  %if.then47
	lui x11, %hi( 1048575 )
	add x11, x11, %lo( 1048575 )
	and x11, x11, x23
	lui x12, (1072693248>>12)&1048575
	sw fp, 16 ( sp )                //  4-byte Folded Spill
	or x11, x12, x11
	add x27, x13, -1023
	mv x10, x25
	jal x0, .LBB0_22
.LBB0_13:                               //  %if.then35
	lui x10, %hi( .str.2 )
	add x20, x10, %lo( .str.2 )
	sw x21, 0 ( x19 )
	beq x0, x9, .LBB0_184
.LBB0_14:                               //  %if.then37
	add x10, x20, 1
	jal x0, .LBB0_16
.LBB0_15:
	add x10, x20, 3
.LBB0_16:                               //  %cleanup
	sw x10, 0 ( x9 )
	jal x0, .LBB0_184
.LBB0_17:                               //  %if.else55
	lw x12, 88 ( sp )
	lw x11, 84 ( sp )
	add fp, x12, x11
	slti x11, fp, -1041
	bltu x0, x11, .LBB0_20
.LBB0_18:                               //  %cond.true59
	add x11, x0, -1010
	add x10, fp, 1042
	sub x11, x11, fp
	srl x10, x25, x10
	sll x11, x23, x11
	or x10, x10, x11
	jal x0, .LBB0_21
.LBB0_19:
	lui x10, %hi( .str )
	add x20, x10, %lo( .str )
	bltu x0, x9, .LBB0_7
	jal x0, .LBB0_184
.LBB0_20:                               //  %cond.false69
	add x10, x0, -1042
	sub x10, x10, fp
	sll x10, x25, x10
.LBB0_21:                               //  %cond.end74
	jal __floatunsidf
	seqz x12, x0
	sw x12, 16 ( sp )               //  4-byte Folded Spill
	lui x12, %hi( -32505856 )
	add x12, x12, %lo( -32505856 )
	add x27, fp, -1
	add x11, x12, x11
.LBB0_22:                               //  %if.end82
	lui x12, %hi( -1074266112 )
	mv x22, x0
	add x13, x12, %lo( -1074266112 )
	mv x12, x22
	jal __adddf3
	lui x12, %hi( 1668236129 )
	lui x13, %hi( 1070761895 )
	add x12, x12, %lo( 1668236129 )
	add x13, x13, %lo( 1070761895 )
	jal __muldf3
	lui x12, %hi( -1956591437 )
	lui x13, %hi( 1069976104 )
	add x12, x12, %lo( -1956591437 )
	add x13, x13, %lo( 1069976104 )
	jal __adddf3
	mv fp, x10
	mv x10, x27
	mv x9, x11
	jal __floatsidf
	lui x12, %hi( 1352628731 )
	lui x13, %hi( 1070810131 )
	add x12, x12, %lo( 1352628731 )
	add x13, x13, %lo( 1070810131 )
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x9
	jal __adddf3
	mv fp, x10
	mv x9, x11
	jal __fixdfsi
	mv x26, x10
	jal __floatsidf
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x9
	jal __nedf2
	snez x19, x10
	mv x10, fp
	mv x11, x9
	mv x12, x22
	mv x13, x22
	jal __ltdf2
	slti x10, x10, 0
	and x10, x19, x10
	sub x9, x26, x10
	add x10, x0, 22
	bltu x10, x9, .LBB0_25
.LBB0_23:                               //  %if.then102
	lui x11, %hi( __mprec_tens )
	sll x10, x9, 3&31
	add x11, x11, %lo( __mprec_tens )
	add x10, x10, x11
	lw x12, 0 ( x10 )
	lw x13, 4 ( x10 )
	mv x10, x25
	mv x11, x23
	jal __ltdf2
	mv x21, x0
	bge x10, x0, .LBB0_25
.LBB0_24:                               //  %select.unfold
	add x9, x9, -1
.LBB0_25:                               //  %if.end110
	lw x11, 88 ( sp )
	xor x10, x27, -1
	add x13, x0, -1
	add x12, x10, x11
	blt x13, x12, .LBB0_28
.LBB0_26:                               //  %if.end110
	sub x14, x0, x12
	mv x12, x22
	bge x9, x0, .LBB0_29
.LBB0_27:                               //  %if.else123
	sub x10, x0, x9
	mv x15, x0
	sub x14, x14, x9
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	mv x11, x0
	add x10, x0, 9
	mv fp, x11
	bgeu x10, x24, .LBB0_30
	jal x0, .LBB0_31
.LBB0_28:
	mv x14, x22
	blt x9, x0, .LBB0_27
.LBB0_29:                               //  %if.then121
	mv x10, x0
	add x12, x9, x12
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	mv x15, x9
	mv x11, x0
	add x10, x0, 9
	mv fp, x11
	bltu x10, x24, .LBB0_31
.LBB0_30:                               //  %if.end126
	mv fp, x24
.LBB0_31:                               //  %if.end126
	add x10, x0, 5
	sw x12, 48 ( sp )               //  4-byte Folded Spill
	sw x15, 44 ( sp )               //  4-byte Folded Spill
	blt x10, fp, .LBB0_38
.LBB0_32:                               //  %if.end126
	mv x12, fp
	seqz x15, x0
	sw x14, 28 ( sp )               //  4-byte Folded Spill
	sw x12, 68 ( sp )               //  4-byte Folded Spill
	bltu x10, x12, .LBB0_39
.LBB0_33:                               //  %if.end126
	sll x10, x12, 2&31
	lui x12, %hi( JTI0_0 )
	add x12, x12, %lo( JTI0_0 )
	add x10, x12, x10
	lw x12, 0 ( x10 )
	mv x10, x15
	mv x19, x13
	mv x14, x11
	jr x12
.LBB0_34:                               //  %sw.bb138
	mv x10, x0
.LBB0_35:                               //  %sw.bb139
	blt x15, x20, .LBB0_37
.LBB0_36:                               //  %sw.bb139
	mv x20, x15
.LBB0_37:                               //  %sw.bb139
	mv x13, x20
	mv x19, x20
	mv x15, x10
	mv x27, x20
	sltiu x10, x27, 24
	sw x0, 68 ( x18 )
	sw x13, 36 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB0_43
	jal x0, .LBB0_46
.LBB0_38:
	add x12, fp, -4
	seqz x15, x0
	sw x14, 28 ( sp )               //  4-byte Folded Spill
	sw x12, 68 ( sp )               //  4-byte Folded Spill
	bgeu x10, x12, .LBB0_33
.LBB0_39:
	mv x19, x13
	sltiu x10, x27, 24
	sw x0, 68 ( x18 )
	sw x13, 36 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB0_43
	jal x0, .LBB0_46
.LBB0_40:                               //  %sw.bb144
	mv x15, x0
.LBB0_41:                               //  %sw.bb145
	add x13, x20, x9
	add x19, x13, 1
	mv x14, x20
	mv x27, x19
	blt x13, x0, .LBB0_47
.LBB0_42:                               //  %sw.epilog
	sltiu x10, x27, 24
	sw x0, 68 ( x18 )
	sw x13, 36 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB0_46
.LBB0_43:                               //  %for.body.preheader
	add x10, x0, 4
	mv x11, x0
.LBB0_44:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	sll x10, x10, 1&31
	add x11, x11, 1
	add x12, x10, 20
	bgeu x27, x12, .LBB0_44
.LBB0_45:                               //  %for.cond.for.end_crit_edge
	sw x11, 68 ( x18 )
.LBB0_46:                               //  %for.end
	mv x14, x20
	jal x0, .LBB0_48
.LBB0_47:                               //  %sw.epilog.thread
	sw x13, 36 ( sp )               //  4-byte Folded Spill
	sw x0, 68 ( x18 )
.LBB0_48:                               //  %for.end
	mv x10, x18
	sw x15, 56 ( sp )               //  4-byte Folded Spill
	sw x14, 40 ( sp )               //  4-byte Folded Spill
	sw x21, 52 ( sp )               //  4-byte Folded Spill
	sw x9, 80 ( sp )                //  4-byte Folded Spill
	jal _Balloc
	mv x20, x10
	bltu x0, x20, .LBB0_49
.LBB0_250:                              //  %for.end
	jal x0, .LBB0_247
.LBB0_49:                               //  %if.end164
	slti x10, fp, 6
	add x11, x0, 14
	sltu x11, x11, x19
	xor x10, x10, 1
	or x10, x10, x11
	sw x20, 64 ( x18 )
	sw x19, 72 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB0_96
.LBB0_50:                               //  %if.then174
	lw x21, 80 ( sp )               //  4-byte Folded Reload
	bge x0, x21, .LBB0_53
.LBB0_51:                               //  %if.then179
	and x10, x21, 15
	lui x11, %hi( __mprec_tens )
	sll x10, x10, 3&31
	add x11, x11, %lo( __mprec_tens )
	add x19, x10, x11
	srl fp, x21, 4&31
	and x10, x21, 256
	bltu x0, x10, .LBB0_59
.LBB0_52:
	add x24, x0, 2
	mv x9, x25
	mv x22, x23
	lw x15, 4 ( x19 )
	lw x14, 0 ( x19 )
	beq x0, fp, .LBB0_64
.LBB0_60:                               //  %for.body192.preheader
	lui x10, %hi( __mprec_bigtens )
	add x19, x10, %lo( __mprec_bigtens )
	and x10, fp, 1
	bltu x0, x10, .LBB0_63
.LBB0_61:                               //  %for.inc200
	add x19, x19, 8
	sra fp, fp, 1&31
	beq x0, fp, .LBB0_64
.LBB0_62:                               //  %for.body192
	and x10, fp, 1
	beq x0, x10, .LBB0_61
.LBB0_63:                               //  %if.then195
	lw x12, 0 ( x19 )
	lw x13, 4 ( x19 )
	mv x10, x14
	mv x11, x15
	jal __muldf3
	mv x14, x10
	mv x15, x11
	add x24, x24, 1
	add x19, x19, 8
	sra fp, fp, 1&31
	bltu x0, fp, .LBB0_62
	jal x0, .LBB0_64
.LBB0_53:                               //  %if.else206
	add x24, x0, 2
	beq x0, x21, .LBB0_70
.LBB0_54:                               //  %if.then210
	sub fp, x0, x21
	and x10, fp, 15
	lui x11, %hi( __mprec_tens )
	sll x10, x10, 3&31
	add x11, x11, %lo( __mprec_tens )
	add x10, x10, x11
	lw x12, 0 ( x10 )
	lw x13, 4 ( x10 )
	mv x10, x25
	mv x11, x23
	jal __muldf3
	mv x27, x10
	mv x22, x11
	sra fp, fp, 4&31
	beq x0, fp, .LBB0_71
.LBB0_55:                               //  %for.body218.preheader
	lw x19, 72 ( sp )               //  4-byte Folded Reload
	lui x10, %hi( __mprec_bigtens )
	add x24, x0, 2
	add x9, x10, %lo( __mprec_bigtens )
	and x10, fp, 1
	bltu x0, x10, .LBB0_58
.LBB0_56:                               //  %for.inc227
	add x9, x9, 8
	sra fp, fp, 1&31
	beq x0, fp, .LBB0_65
.LBB0_57:                               //  %for.body218
	and x10, fp, 1
	beq x0, x10, .LBB0_56
.LBB0_58:                               //  %if.then221
	lw x12, 0 ( x9 )
	lw x13, 4 ( x9 )
	mv x10, x27
	mv x11, x22
	jal __muldf3
	mv x27, x10
	mv x22, x11
	add x24, x24, 1
	add x9, x9, 8
	sra fp, fp, 1&31
	bltu x0, fp, .LBB0_57
	jal x0, .LBB0_65
.LBB0_59:                               //  %if.then185
	lui x10, %hi( __mprec_bigtens )
	add x10, x10, %lo( __mprec_bigtens )
	lw x12, 32 ( x10 )
	lw x13, 36 ( x10 )
	mv x10, x25
	mv x11, x23
	jal __divdf3
	mv x9, x10
	mv x22, x11
	add x24, x0, 3
	and fp, fp, 15
	lw x15, 4 ( x19 )
	lw x14, 0 ( x19 )
	bltu x0, fp, .LBB0_60
.LBB0_64:                               //  %for.end203
	mv x10, x9
	mv x11, x22
	mv x12, x14
	mv x13, x15
	jal __divdf3
	lw x19, 72 ( sp )               //  4-byte Folded Reload
	mv x27, x10
	mv x22, x11
.LBB0_65:                               //  %if.end232
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_72
.LBB0_66:                               //  %land.lhs.true234
	bge x0, x19, .LBB0_72
.LBB0_67:                               //  %land.lhs.true234
	mv x12, x0
	lui x13, (1072693248>>12)&1048575
	mv x10, x27
	mv x11, x22
	jal __ltdf2
	bge x10, x0, .LBB0_72
.LBB0_68:                               //  %if.then241
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	bge x0, x10, .LBB0_96
.LBB0_69:                               //  %if.end245
	mv x12, x0
	lui x13, (1076101120>>12)&1048575
	mv x10, x27
	mv x11, x22
	jal __muldf3
	mv x27, x10
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	lw x19, 36 ( sp )               //  4-byte Folded Reload
	mv x22, x11
	add x24, x24, 1
	add x21, x10, -1
	jal x0, .LBB0_72
.LBB0_70:
	lw x19, 72 ( sp )               //  4-byte Folded Reload
	mv x27, x25
	mv x22, x23
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB0_66
	jal x0, .LBB0_72
.LBB0_71:
	lw x19, 72 ( sp )               //  4-byte Folded Reload
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB0_66
.LBB0_72:                               //  %if.end250
	mv x10, x24
	jal __floatsidf
	mv x12, x10
	mv x13, x11
	mv x10, x27
	mv x11, x22
	jal __muldf3
	mv x24, x0
	lui x13, (1075576832>>12)&1048575
	mv x12, x24
	jal __adddf3
	mv fp, x10
	lui x10, %hi( -54525952 )
	add x10, x10, %lo( -54525952 )
	add x9, x10, x11
	beq x0, x19, .LBB0_76
.LBB0_73:                               //  %if.end277
	lui x11, %hi( __mprec_tens )
	sll x10, x19, 3&31
	add x11, x11, %lo( __mprec_tens )
	add x10, x11, x10
	lw x24, -4 ( x10 )
	lw x26, -8 ( x10 )
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	sw x25, 20 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB0_78
.LBB0_74:                               //  %if.then279
	mv x10, x27
	mv x11, x22
	jal __fixdfsi
	mv x25, x10
	add x10, x25, 48
	sb x10, 0 ( x20 )
	mv x10, x0
	lui x11, (1071644672>>12)&1048575
	mv x12, x26
	mv x13, x24
	jal __divdf3
	mv x12, fp
	mv x13, x9
	jal __subdf3
	mv x24, x10
	mv x10, x25
	mv x26, x11
	jal __floatsidf
	mv x12, x10
	mv x13, x11
	mv x10, x27
	mv x11, x22
	jal __subdf3
	mv x12, x24
	mv x13, x26
	mv fp, x10
	mv x27, x11
	jal __ltdf2
	bge x10, x0, .LBB0_80
.LBB0_75:
	add fp, x20, 1
	mv x26, x21
	jal x0, .LBB0_85
.LBB0_76:                               //  %if.then261
	lui x10, %hi( -1072431104 )
	add x13, x10, %lo( -1072431104 )
	mv x10, x27
	mv x11, x22
	mv x12, x24
	jal __adddf3
	mv x12, fp
	mv x13, x9
	mv x22, x10
	mv x26, x11
	jal __gtdf2
	bge x0, x10, .LBB0_86
.LBB0_77:
	lw x27, 76 ( sp )               //  4-byte Folded Reload
	mv x26, x21
	mv x21, x24
	jal x0, .LBB0_163
.LBB0_78:                               //  %if.else317
	mv x10, x27
	mv x11, x22
	jal __fixdfsi
	mv x25, x10
	add x10, x25, 48
	sb x10, 0 ( x20 )
	mv x10, x26
	mv x11, x24
	mv x12, fp
	mv x13, x9
	jal __muldf3
	mv x24, x10
	mv x10, x25
	sw x11, 12 ( sp )               //  4-byte Folded Spill
	jal __floatsidf
	mv x12, x10
	mv x13, x11
	mv x10, x27
	mv x11, x22
	jal __subdf3
	mv fp, x10
	mv x9, x11
	add x26, x20, 1
	xor x10, x19, 1
	bltu x0, x10, .LBB0_88
.LBB0_79:
	lw x25, 20 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_90
.LBB0_80:                               //  %if.end299.preheader
	sw x21, 12 ( sp )               //  4-byte Folded Spill
	seqz x21, x0
	mv x22, x0
	lui x9, (1076101120>>12)&1048575
.LBB0_81:                               //  %if.end299
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x22
	lui x11, (1072693248>>12)&1048575
	mv x12, fp
	mv x13, x27
	jal __subdf3
	mv x12, x24
	mv x13, x26
	jal __ltdf2
	blt x10, x0, .LBB0_210
.LBB0_82:                               //  %if.end306
                                        //    in Loop: Header=BB0_81 Depth=1
	lw x25, 20 ( sp )               //  4-byte Folded Reload
	bge x21, x19, .LBB0_96
.LBB0_83:                               //  %if.end311
                                        //    in Loop: Header=BB0_81 Depth=1
	mv x10, fp
	mv x11, x27
	mv x12, x22
	mv x13, x9
	jal __muldf3
	mv fp, x10
	mv x25, x11
	jal __fixdfsi
	add x11, x21, x20
	add x12, x10, 48
	sb x12, 0 ( x11 )
	jal __floatsidf
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x25
	jal __subdf3
	mv fp, x10
	mv x27, x11
	mv x10, x24
	mv x11, x26
	mv x12, x22
	mv x13, x9
	jal __muldf3
	mv x24, x10
	mv x26, x11
	mv x10, fp
	mv x11, x27
	mv x12, x24
	mv x13, x26
	jal __ltdf2
	add x21, x21, 1
	bge x10, x0, .LBB0_81
.LBB0_84:                               //  %ret1.loopexit6
	lw x26, 12 ( sp )               //  4-byte Folded Reload
	add fp, x21, x20
.LBB0_85:                               //  %ret1
	lw x9, 64 ( sp )                //  4-byte Folded Reload
	lw x19, 60 ( sp )               //  4-byte Folded Reload
	lw x27, 76 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_182
.LBB0_86:                               //  %if.end269
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x13, x10, x9
	mv x10, x22
	mv x11, x26
	mv x12, fp
	jal __ltdf2
	bge x10, x0, .LBB0_96
.LBB0_87:
	mv x24, x0
	lw x27, 76 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB0_174
.LBB0_88:                               //  %for.inc355.preheader
	lw x25, 20 ( sp )               //  4-byte Folded Reload
	add x19, x19, -1
	mv x22, x0
	lui x27, (1076101120>>12)&1048575
.LBB0_89:                               //  %for.inc355
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, fp
	mv x11, x9
	mv x12, x22
	mv x13, x27
	jal __muldf3
	mv fp, x10
	mv x9, x11
	jal __fixdfsi
	add x11, x10, 48
	sb x11, 0 ( x26 )
	jal __floatsidf
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x9
	jal __subdf3
	mv fp, x10
	mv x9, x11
	add x26, x26, 1
	add x19, x19, -1
	bltu x0, x19, .LBB0_89
.LBB0_90:                               //  %if.then333
	lw x19, 12 ( sp )               //  4-byte Folded Reload
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x24
	mv x11, x19
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x9
	jal __gtdf2
	bge x0, x10, .LBB0_92
.LBB0_91:
	sw x21, 80 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_211
.LBB0_92:                               //  %if.else340
	mv x10, x0
	lui x11, (1071644672>>12)&1048575
	mv x12, x24
	mv x13, x19
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x9
	jal __ltdf2
	bge x10, x0, .LBB0_96
.LBB0_93:                               //  %while.cond.preheader
	lw x9, 64 ( sp )                //  4-byte Folded Reload
	lw x19, 60 ( sp )               //  4-byte Folded Reload
	add fp, x26, 1
.LBB0_94:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x10, -2 ( fp )
	add fp, fp, -1
	xor x10, x10, 48
	beq x0, x10, .LBB0_94
.LBB0_95:
	lw x27, 76 ( sp )               //  4-byte Folded Reload
	mv x26, x21
	jal x0, .LBB0_182
.LBB0_96:                               //  %if.end363
	lw x10, 84 ( sp )
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	add x11, x0, 14
	blt x11, x26, .LBB0_102
.LBB0_97:                               //  %if.end363
	blt x10, x0, .LBB0_102
.LBB0_98:                               //  %if.then369
	lui x11, %hi( __mprec_tens )
	sll x10, x26, 3&31
	add x11, x11, %lo( __mprec_tens )
	add x10, x10, x11
	mv fp, x25
	lw x22, 4 ( x10 )
	lw x25, 0 ( x10 )
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw x19, 72 ( sp )               //  4-byte Folded Reload
	blt x0, x19, .LBB0_106
.LBB0_99:                               //  %if.then369
	bge x9, x0, .LBB0_106
.LBB0_100:                              //  %if.then376
	mv x24, x0
	lui x13, (1075052544>>12)&1048575
	mv x10, x25
	mv x11, x22
	mv x12, x24
	jal __muldf3
	lw x27, 76 ( sp )               //  4-byte Folded Reload
	mv x12, x10
	mv x13, x11
	blt x19, x0, .LBB0_174
.LBB0_101:                              //  %if.then376
	mv x10, fp
	mv x11, x23
	jal __ledf2
	mv x21, x24
	blt x0, x10, .LBB0_163
	jal x0, .LBB0_175
.LBB0_102:                              //  %if.end439
	lw fp, 56 ( sp )                //  4-byte Folded Reload
	lw x14, 72 ( sp )               //  4-byte Folded Reload
	beq x0, fp, .LBB0_112
.LBB0_103:                              //  %if.then441
	lw x12, 68 ( sp )               //  4-byte Folded Reload
	lw x19, 28 ( sp )               //  4-byte Folded Reload
	lw x21, 24 ( sp )               //  4-byte Folded Reload
	seqz x11, x0
	blt x11, x12, .LBB0_113
.LBB0_104:                              //  %if.then444
	lw x15, 48 ( sp )               //  4-byte Folded Reload
	lw x12, 16 ( sp )               //  4-byte Folded Reload
	mv x11, x0
	beq x12, x11, .LBB0_121
.LBB0_105:                              //  %if.then444
	add x10, x10, 1075
	jal x0, .LBB0_122
.LBB0_106:                              //  %for.cond387.preheader
	mv x10, fp
	mv x11, x23
	mv x12, x25
	mv x13, x22
	jal __divdf3
	jal __fixdfsi
	mv x24, x10
	add x10, x24, 48
	sb x10, 0 ( x20 )
	mv x10, x24
	jal __floatsidf
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x22
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x23
	jal __subdf3
	lw x27, 76 ( sp )               //  4-byte Folded Reload
	add x26, x20, 1
	xor x12, x19, 1
	beq x0, x12, .LBB0_110
.LBB0_107:                              //  %if.end430.preheader
	add x19, x19, -1
	mv fp, x0
	lui x9, (1076101120>>12)&1048575
.LBB0_108:                              //  %if.end430
                                        //  =>This Inner Loop Header: Depth=1
	mv x12, fp
	mv x13, x9
	jal __muldf3
	mv x13, fp
	mv x12, fp
	mv x21, x10
	mv x23, x11
	jal __nedf2
	beq x0, x10, .LBB0_120
.LBB0_109:                              //  %for.cond387
                                        //    in Loop: Header=BB0_108 Depth=1
	mv x10, x21
	mv x11, x23
	mv x12, x25
	mv x13, x22
	jal __divdf3
	jal __fixdfsi
	mv x24, x10
	add x10, x24, 48
	sb x10, 0 ( x26 )
	mv x10, x24
	jal __floatsidf
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x22
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x23
	jal __subdf3
	add x26, x26, 1
	add x19, x19, -1
	bltu x0, x19, .LBB0_108
.LBB0_110:                              //  %if.then400
	mv x12, x10
	mv x13, x11
	jal __adddf3
	mv x12, x25
	mv x13, x22
	mv fp, x10
	mv x9, x11
	jal __gtdf2
	bge x0, x10, .LBB0_117
.LBB0_111:
	lw x9, 64 ( sp )                //  4-byte Folded Reload
	lw x19, 60 ( sp )               //  4-byte Folded Reload
	mv fp, x26
	lbu x10, -1 ( fp )
	xor x11, x10, 57
	beq x0, x11, .LBB0_213
	jal x0, .LBB0_215
.LBB0_112:
	lw x19, 28 ( sp )               //  4-byte Folded Reload
	lw x21, 24 ( sp )               //  4-byte Folded Reload
	mv x24, x0
	mv x9, x19
	mv x22, x21
	blt x0, x9, .LBB0_128
.LBB0_137:
	lw x26, 48 ( sp )               //  4-byte Folded Reload
	sw x9, 48 ( sp )                //  4-byte Folded Spill
	blt x0, x22, .LBB0_133
	jal x0, .LBB0_142
.LBB0_113:                              //  %if.else452
	lw x15, 48 ( sp )               //  4-byte Folded Reload
	mv x12, x0
	add x22, x14, -1
	mv x11, x12
	blt x21, x22, .LBB0_114
.LBB0_123:                              //  %if.else452
	sub x11, x21, x22
	sra x13, x14, 31&31
	mv x10, x12
	bge x14, x12, .LBB0_124
.LBB0_115:                              //  %if.else452
	and x13, x14, x13
	blt x21, x22, .LBB0_125
.LBB0_116:                              //  %if.else452
	mv x22, x21
	jal x0, .LBB0_126
.LBB0_114:                              //  %if.else452
	sra x13, x14, 31&31
	mv x10, x12
	blt x14, x12, .LBB0_115
.LBB0_124:                              //  %if.else452
	mv x10, x14
	and x13, x14, x13
	bge x21, x22, .LBB0_116
.LBB0_125:
	sub x12, x22, x21
.LBB0_126:                              //  %if.else452
	sub x9, x19, x13
	lw x13, 44 ( sp )               //  4-byte Folded Reload
	mv x21, x11
	add x13, x13, x12
	sw x13, 44 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_127
.LBB0_174:
	mv x21, x24
	jal x0, .LBB0_175
.LBB0_117:                              //  %lor.lhs.false407
	and x10, x24, 1
	beq x0, x10, .LBB0_120
.LBB0_118:                              //  %lor.lhs.false407
	mv x10, fp
	mv x11, x9
	mv x12, x25
	mv x13, x22
	jal __nedf2
	lw x9, 64 ( sp )                //  4-byte Folded Reload
	lw x19, 60 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_212
.LBB0_119:
	mv fp, x26
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_182
.LBB0_120:
	mv fp, x26
	lw x9, 64 ( sp )                //  4-byte Folded Reload
	lw x19, 60 ( sp )               //  4-byte Folded Reload
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_182
.LBB0_121:
	lw x10, 88 ( sp )
	add x11, x0, 54
	sub x10, x11, x10
.LBB0_122:                              //  %if.then444
	mv x9, x19
	mv x22, x21
.LBB0_127:                              //  %if.end468
	add x15, x15, x10
	add x19, x19, x10
	seqz x11, x0
	mv x10, x18
	sw x15, 48 ( sp )               //  4-byte Folded Spill
	jal __i2b
	mv x24, x10
	bge x0, x9, .LBB0_137
.LBB0_128:                              //  %if.end472
	lw x26, 48 ( sp )               //  4-byte Folded Reload
	bge x0, x26, .LBB0_132
.LBB0_129:                              //  %if.then478
	mv x10, x9
	blt x9, x26, .LBB0_131
.LBB0_130:                              //  %if.then478
	mv x10, x26
.LBB0_131:                              //  %if.then478
	sub x26, x26, x10
	sub x9, x9, x10
	sub x19, x19, x10
.LBB0_132:                              //  %if.end488
	sw x9, 48 ( sp )                //  4-byte Folded Spill
	bge x0, x22, .LBB0_142
.LBB0_133:                              //  %if.then491
	beq x0, fp, .LBB0_138
.LBB0_134:                              //  %if.then493
	bge x0, x21, .LBB0_140
.LBB0_135:                              //  %if.then496
	mv x10, x18
	mv x11, x24
	mv x12, x21
	jal __pow5mult
	lw x9, 76 ( sp )                //  4-byte Folded Reload
	mv x24, x10
	mv x10, x18
	mv x11, x24
	mv x12, x9
	jal __multiply
	mv fp, x10
	mv x10, x18
	mv x11, x9
	jal _Bfree
	sub x12, x22, x21
	beq x0, x12, .LBB0_141
.LBB0_136:                              //  %if.then503
	mv x10, x18
	mv x11, fp
	jal x0, .LBB0_139
.LBB0_138:                              //  %if.else506
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	mv x10, x18
	mv x12, x22
.LBB0_139:                              //  %if.end509
	jal __pow5mult
	sw x10, 76 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_142
.LBB0_140:
	lw fp, 76 ( sp )                //  4-byte Folded Reload
	sub x12, x22, x21
	bltu x0, x12, .LBB0_136
.LBB0_141:
	sw fp, 76 ( sp )                //  4-byte Folded Spill
.LBB0_142:                              //  %if.end509
	seqz x9, x0
	lw fp, 32 ( sp )                //  4-byte Folded Reload
	mv x10, x18
	mv x11, x9
	jal __i2b
	lw x12, 44 ( sp )               //  4-byte Folded Reload
	mv x11, x10
	bge x0, x12, .LBB0_144
.LBB0_143:                              //  %if.then513
	mv x10, x18
	jal __pow5mult
	lw x12, 44 ( sp )               //  4-byte Folded Reload
	mv x27, x10
	jal x0, .LBB0_145
.LBB0_144:
	mv x27, x11
.LBB0_145:                              //  %if.end515
	lui x10, %hi( 1048575 )
	lw x11, 68 ( sp )               //  4-byte Folded Reload
	add x10, x10, %lo( 1048575 )
	and x10, x10, x23
	or x10, x25, x10
	slt x11, x9, x11
	snez x10, x10
	or x10, x10, x11
	seqz x11, fp
	or x23, x10, x11
	xor x21, x23, 1
	add fp, x21, x26
	add x22, x0, 32
	beq x0, x12, .LBB0_147
.LBB0_146:                              //  %cond.true538
	mv x11, x27
	lw x10, 16 ( x11 )
	sll x10, x10, 2&31
	add x10, x11, x10
	lw x10, 16 ( x10 )
	jal __hi0bits
	sub x9, x22, x10
.LBB0_147:                              //  %cond.end544
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	add x10, fp, x9
	and x11, x10, 31
	mv x10, x0
	beq x11, x10, .LBB0_149
.LBB0_148:                              //  %cond.end544
	sub x10, x22, x11
.LBB0_149:                              //  %cond.end544
	add x12, x21, x19
	sltiu x11, x10, 5
	bltu x0, x11, .LBB0_151
.LBB0_150:                              //  %if.then555
	lw x11, 48 ( sp )               //  4-byte Folded Reload
	add x10, x10, -4
	lw x9, 52 ( sp )                //  4-byte Folded Reload
	add fp, fp, x10
	add x11, x11, x10
	sw x11, 48 ( sp )               //  4-byte Folded Spill
	add x12, x12, x10
	blt x0, x12, .LBB0_154
	jal x0, .LBB0_155
.LBB0_151:                              //  %if.else560
	lw x9, 52 ( sp )                //  4-byte Folded Reload
	xor x11, x10, 4
	beq x0, x11, .LBB0_153
.LBB0_152:                              //  %if.then563
	lw x11, 48 ( sp )               //  4-byte Folded Reload
	add x10, x10, 28
	add fp, fp, x10
	add x12, x12, x10
	add x11, x11, x10
	sw x11, 48 ( sp )               //  4-byte Folded Spill
.LBB0_153:                              //  %if.end569
	bge x0, x12, .LBB0_155
.LBB0_154:                              //  %if.then572
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	mv x10, x18
	jal __lshift
	sw x10, 76 ( sp )               //  4-byte Folded Spill
.LBB0_155:                              //  %if.end574
	bge x0, fp, .LBB0_157
.LBB0_156:                              //  %if.then577
	mv x10, x18
	mv x11, x27
	mv x12, fp
	jal __lshift
	mv x27, x10
.LBB0_157:                              //  %if.end579
	sw x27, 52 ( sp )               //  4-byte Folded Spill
	beq x0, x9, .LBB0_159
.LBB0_158:                              //  %if.then581
	lw fp, 76 ( sp )                //  4-byte Folded Reload
	mv x11, x27
	mv x10, fp
	jal __mcmp
	blt x10, x0, .LBB0_164
.LBB0_159:
	lw x21, 72 ( sp )               //  4-byte Folded Reload
	lw fp, 48 ( sp )                //  4-byte Folded Reload
	lw x10, 68 ( sp )               //  4-byte Folded Reload
	slti x10, x10, 3
	bltu x0, x10, .LBB0_167
.LBB0_160:                              //  %if.end593
	blt x0, x21, .LBB0_167
.LBB0_161:                              //  %if.then599
	blt x21, x0, .LBB0_173
.LBB0_162:                              //  %lor.lhs.false602
	lw x11, 52 ( sp )               //  4-byte Folded Reload
	add x12, x0, 5
	mv x13, x0
	mv x10, x18
	jal __multadd
	lw x27, 76 ( sp )               //  4-byte Folded Reload
	mv x21, x10
	mv x11, x21
	mv x10, x27
	jal __mcmp
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	bge x0, x10, .LBB0_175
.LBB0_163:                              //  %one_digit
	add x10, x0, 49
	sb x10, 0 ( x20 )
	mv x22, x0
	add x26, x26, 1
	add fp, x20, 1
	mv x10, x18
	mv x11, x21
	jal _Bfree
	beq x0, x24, .LBB0_181
.LBB0_177:                              //  %if.then789
	beq x0, x22, .LBB0_180
.LBB0_178:                              //  %if.then789
	beq x22, x24, .LBB0_180
.LBB0_179:                              //  %if.then794
	mv x10, x18
	mv x11, x22
	jal _Bfree
.LBB0_180:                              //  %if.end795
	mv x10, x18
	mv x11, x24
	jal _Bfree
	jal x0, .LBB0_181
.LBB0_164:                              //  %if.then585
	add x12, x0, 10
	mv x13, x0
	mv x10, x18
	mv x11, fp
	jal __multadd
	sw x10, 76 ( sp )               //  4-byte Folded Spill
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	lw fp, 48 ( sp )                //  4-byte Folded Reload
	add x26, x26, -1
	beq x0, x10, .LBB0_166
.LBB0_165:                              //  %if.then589
	add x12, x0, 10
	mv x13, x0
	mv x10, x18
	mv x11, x24
	jal __multadd
	mv x24, x10
.LBB0_166:                              //  %if.end593
	lw x21, 36 ( sp )               //  4-byte Folded Reload
	lw x10, 68 ( sp )               //  4-byte Folded Reload
	slti x10, x10, 3
	beq x0, x10, .LBB0_160
.LBB0_167:                              //  %if.end612
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_170
.LBB0_168:                              //  %if.then614
	bge x0, fp, .LBB0_185
.LBB0_169:                              //  %if.then617
	mv x10, x18
	mv x11, x24
	mv x12, fp
	jal __lshift
	mv x22, x10
	mv x24, x22
	lw x9, 76 ( sp )                //  4-byte Folded Reload
	beq x0, x23, .LBB0_186
	jal x0, .LBB0_188
.LBB0_170:                              //  %for.cond738.preheader
	lw x27, 76 ( sp )               //  4-byte Folded Reload
	lw x11, 52 ( sp )               //  4-byte Folded Reload
	mv x10, x27
	jal quorem
	mv x11, x21
	add x23, x10, 48
	add x9, x20, 1
	slti x10, x11, 2
	sb x23, 0 ( x20 )
	bltu x0, x10, .LBB0_209
.LBB0_171:                              //  %if.end746.preheader
	lw x21, 52 ( sp )               //  4-byte Folded Reload
	add x19, x11, -1
	add fp, x0, 10
	mv x22, x0
.LBB0_172:                              //  %if.end746
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x18
	mv x11, x27
	mv x12, fp
	mv x13, x22
	jal __multadd
	mv x11, x21
	mv x27, x10
	jal quorem
	add x23, x10, 48
	sb x23, 0 ( x9 )
	add x9, x9, 1
	add x19, x19, -1
	bltu x0, x19, .LBB0_172
	jal x0, .LBB0_224
.LBB0_173:
	lw x27, 76 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw x21, 52 ( sp )               //  4-byte Folded Reload
.LBB0_175:                              //  %no_digits
	mv x22, x0
	xor x26, x9, -1
	mv fp, x20
.LBB0_176:                              //  %ret
	mv x10, x18
	mv x11, x21
	jal _Bfree
	bltu x0, x24, .LBB0_177
.LBB0_181:
	lw x9, 64 ( sp )                //  4-byte Folded Reload
	lw x19, 60 ( sp )               //  4-byte Folded Reload
.LBB0_182:                              //  %ret1
	mv x10, x18
	mv x11, x27
	jal _Bfree
	add x10, x26, 1
	sb x0, 0 ( fp )
	sw x10, 0 ( x19 )
	beq x0, x9, .LBB0_184
.LBB0_183:                              //  %if.then799
	sw fp, 0 ( x9 )
.LBB0_184:                              //  %cleanup
	mv x10, x20
	lw fp, 92 ( sp )                //  4-byte Folded Reload
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	lw x26, 100 ( sp )              //  4-byte Folded Reload
	lw x25, 104 ( sp )              //  4-byte Folded Reload
	lw x24, 108 ( sp )              //  4-byte Folded Reload
	lw x23, 112 ( sp )              //  4-byte Folded Reload
	lw x22, 116 ( sp )              //  4-byte Folded Reload
	lw x21, 120 ( sp )              //  4-byte Folded Reload
	lw x20, 124 ( sp )              //  4-byte Folded Reload
	lw x19, 128 ( sp )              //  4-byte Folded Reload
	lw x18, 132 ( sp )              //  4-byte Folded Reload
	lw x9, 136 ( sp )               //  4-byte Folded Reload
	lw ra, 140 ( sp )               //  4-byte Folded Reload
	add sp, sp, 144
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_185:
	mv x22, x24
	lw x9, 76 ( sp )                //  4-byte Folded Reload
	bltu x0, x23, .LBB0_188
.LBB0_186:                              //  %if.then621
	lw x11, 4 ( x22 )
	mv x10, x18
	jal _Balloc
	mv fp, x10
	beq x0, fp, .LBB0_248
.LBB0_187:                              //  %if.end628
	lw x10, 16 ( x22 )
	add x11, x22, 12
	sll x10, x10, 2&31
	add x12, x10, 8
	add x10, fp, 12
	jal memcpy
	seqz x12, x0
	mv x10, x18
	mv x11, fp
	jal __lshift
	mv x24, x10
.LBB0_188:                              //  %if.end636
	sw x26, 80 ( sp )               //  4-byte Folded Spill
	add x26, x21, -1
	and x10, x25, 1
	bltu x0, x10, .LBB0_200
.LBB0_189:                              //  %for.cond637.us.preheader
	lw x21, 52 ( sp )               //  4-byte Folded Reload
	mv x23, x0
	mv x19, x20
	mv x27, x24
	jal x0, .LBB0_191
.LBB0_190:                              //  %for.inc734.us
                                        //    in Loop: Header=BB0_191 Depth=1
	add x19, x19, 1
	add x26, x26, -1
	mv x22, fp
.LBB0_191:                              //  %for.cond637.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x9
	mv x11, x21
	mv x24, x23
	jal quorem
	mv fp, x21
	mv x21, x10
	mv x10, x9
	mv x11, x22
	mv x25, x9
	jal __mcmp
	mv x9, x10
	mv x10, x18
	mv x11, fp
	mv x12, x27
	sw x27, 76 ( sp )               //  4-byte Folded Spill
	jal __mdiff
	mv x27, x10
	lw x10, 12 ( x27 )
	seqz fp, x0
	bltu x0, x10, .LBB0_193
.LBB0_192:                              //  %cond.false645.us
                                        //    in Loop: Header=BB0_191 Depth=1
	mv x10, x25
	mv x11, x27
	jal __mcmp
	mv fp, x10
.LBB0_193:                              //  %cond.end647.us
                                        //    in Loop: Header=BB0_191 Depth=1
	mv x10, x18
	mv x11, x27
	add x23, x21, 48
	jal _Bfree
	lw x11, 68 ( sp )               //  4-byte Folded Reload
	or x10, x11, fp
	beq x0, x10, .LBB0_219
.LBB0_194:                              //  %if.end670.us
                                        //    in Loop: Header=BB0_191 Depth=1
	mv x27, x25
	blt x9, x0, .LBB0_233
.LBB0_195:                              //  %if.end670.us
                                        //    in Loop: Header=BB0_191 Depth=1
	or x10, x11, x9
	beq x0, x10, .LBB0_233
.LBB0_196:                              //  %if.end706.us
                                        //    in Loop: Header=BB0_191 Depth=1
	blt x0, fp, .LBB0_221
.LBB0_197:                              //  %if.end718.us
                                        //    in Loop: Header=BB0_191 Depth=1
	sb x23, 0 ( x19 )
	beq x0, x26, .LBB0_223
.LBB0_198:                              //  %if.end724.us
                                        //    in Loop: Header=BB0_191 Depth=1
	add x25, x0, 10
	mv x23, x24
	mv x10, x18
	mv x11, x27
	mv x12, x25
	mv x13, x23
	jal __multadd
	mv x9, x10
	mv x10, x18
	mv x11, x22
	mv x12, x25
	mv x13, x23
	jal __multadd
	lw x21, 52 ( sp )               //  4-byte Folded Reload
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	mv fp, x10
	mv x27, fp
	beq x22, x11, .LBB0_190
.LBB0_199:                              //  %if.else730.us
                                        //    in Loop: Header=BB0_191 Depth=1
	mv x10, x18
	mv x12, x25
	mv x13, x23
	jal __multadd
	mv x27, x10
	jal x0, .LBB0_190
.LBB0_200:                              //  %for.cond637.preheader
	lw x21, 52 ( sp )               //  4-byte Folded Reload
	add x23, x0, 10
	mv x27, x24
	sw x20, 72 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_202
.LBB0_201:                              //  %for.inc734
                                        //    in Loop: Header=BB0_202 Depth=1
	add x20, x20, 1
	add x26, x26, -1
	mv x22, fp
.LBB0_202:                              //  %for.cond637
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x9
	mv x11, x21
	mv x24, x23
	jal quorem
	mv fp, x21
	mv x21, x10
	mv x10, x9
	mv x11, x22
	mv x25, x9
	jal __mcmp
	mv x9, x10
	mv x10, x18
	mv x11, fp
	mv x12, x27
	mv x19, x27
	jal __mdiff
	mv x27, x10
	lw x10, 12 ( x27 )
	seqz fp, x0
	bltu x0, x10, .LBB0_204
.LBB0_203:                              //  %cond.false645
                                        //    in Loop: Header=BB0_202 Depth=1
	mv x10, x25
	mv x11, x27
	jal __mcmp
	mv fp, x10
.LBB0_204:                              //  %cond.end647
                                        //    in Loop: Header=BB0_202 Depth=1
	mv x10, x18
	mv x11, x27
	add x23, x21, 48
	jal _Bfree
	mv x27, x25
	blt x9, x0, .LBB0_216
.LBB0_205:                              //  %if.end706
                                        //    in Loop: Header=BB0_202 Depth=1
	blt x0, fp, .LBB0_217
.LBB0_206:                              //  %if.end718
                                        //    in Loop: Header=BB0_202 Depth=1
	sb x23, 0 ( x20 )
	beq x0, x26, .LBB0_218
.LBB0_207:                              //  %if.end724
                                        //    in Loop: Header=BB0_202 Depth=1
	mv x23, x24
	mv x24, x0
	mv x10, x18
	mv x11, x27
	mv x12, x23
	mv x13, x24
	jal __multadd
	mv x9, x10
	mv x10, x18
	mv x11, x22
	mv x12, x23
	mv x13, x24
	jal __multadd
	lw x21, 52 ( sp )               //  4-byte Folded Reload
	mv fp, x10
	mv x27, fp
	beq x22, x19, .LBB0_201
.LBB0_208:                              //  %if.else730
                                        //    in Loop: Header=BB0_202 Depth=1
	mv x10, x18
	mv x11, x19
	mv x12, x23
	mv x13, x24
	jal __multadd
	mv x27, x10
	jal x0, .LBB0_201
.LBB0_209:
	lw x21, 52 ( sp )               //  4-byte Folded Reload
	mv x22, x0
	jal x0, .LBB0_224
.LBB0_210:                              //  %bump_up.loopexit
	lw x10, 12 ( sp )               //  4-byte Folded Reload
	add x26, x21, x20
	sw x10, 80 ( sp )               //  4-byte Folded Spill
.LBB0_211:                              //  %bump_up
	lw x9, 64 ( sp )                //  4-byte Folded Reload
	lw x19, 60 ( sp )               //  4-byte Folded Reload
	lw x27, 76 ( sp )               //  4-byte Folded Reload
.LBB0_212:                              //  %while.cond415
	mv fp, x26
	lbu x10, -1 ( fp )
	xor x11, x10, 57
	bltu x0, x11, .LBB0_215
.LBB0_213:                              //  %while.body420
	add x26, fp, -1
	bne x20, x26, .LBB0_212
.LBB0_214:                              //  %if.then423
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	add x10, x0, 48
	sb x10, 0 ( x20 )
	add x10, x0, 49
	add x26, x26, 1
	sb x10, 0 ( x20 )
	jal x0, .LBB0_182
.LBB0_215:                              //  %while.end426.loopexit
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	add x11, fp, -1
	add x10, x10, 1
	sb x10, 0 ( x11 )
	jal x0, .LBB0_182
.LBB0_216:
	mv x24, x19
	mv x19, x20
	lw x20, 72 ( sp )               //  4-byte Folded Reload
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	blt x0, fp, .LBB0_234
	jal x0, .LBB0_244
.LBB0_217:
	mv x24, x19
	mv x19, x20
	lw x20, 72 ( sp )               //  4-byte Folded Reload
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	xor x10, x23, 57
	bltu x0, x10, .LBB0_222
	jal x0, .LBB0_238
.LBB0_218:                              //  %if.end751.loopexit3
	add x9, x20, 1
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	lw x21, 52 ( sp )               //  4-byte Folded Reload
	lw x20, 72 ( sp )               //  4-byte Folded Reload
	mv x24, x19
	jal x0, .LBB0_224
.LBB0_219:                              //  %if.then658
	xor x10, x23, 57
	mv x27, x25
	bltu x0, x10, .LBB0_229
.LBB0_220:
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	lw x24, 76 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_238
.LBB0_233:
	lw x24, 76 ( sp )               //  4-byte Folded Reload
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	bge x0, fp, .LBB0_244
.LBB0_234:                              //  %if.then686
	seqz x12, x0
	mv x10, x18
	mv x11, x27
	jal __lshift
	lw x11, 52 ( sp )               //  4-byte Folded Reload
	mv x27, x10
	jal __mcmp
	blt x0, x10, .LBB0_237
.LBB0_235:                              //  %lor.lhs.false691
	and x11, x23, 1
	beq x0, x11, .LBB0_244
.LBB0_236:                              //  %lor.lhs.false691
	bltu x0, x10, .LBB0_244
.LBB0_237:                              //  %land.lhs.true697
	xor x10, x23, 57
	beq x0, x10, .LBB0_238
.LBB0_243:
	add x23, x21, 49
.LBB0_244:                              //  %if.end703
	sb x23, 0 ( x19 )
	jal x0, .LBB0_245
.LBB0_221:
	lw x24, 76 ( sp )               //  4-byte Folded Reload
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	xor x10, x23, 57
	bltu x0, x10, .LBB0_222
.LBB0_238:                              //  %round_9_up
	lw x21, 52 ( sp )               //  4-byte Folded Reload
	add x10, x0, 57
	add x9, x19, 1
	sb x10, 0 ( x19 )
	mv fp, x9
	lbu x10, -1 ( fp )
	xor x11, x10, 57
	beq x0, x11, .LBB0_240
	jal x0, .LBB0_242
.LBB0_222:                              //  %if.end714
	add x10, x21, 49
	sb x10, 0 ( x19 )
.LBB0_245:                              //  %ret
	lw x21, 52 ( sp )               //  4-byte Folded Reload
.LBB0_246:                              //  %ret
	add fp, x19, 1
	mv x10, x18
	mv x11, x21
	jal _Bfree
	bltu x0, x24, .LBB0_177
	jal x0, .LBB0_181
.LBB0_223:                              //  %if.end751.loopexit
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	lw x21, 52 ( sp )               //  4-byte Folded Reload
	lw x24, 76 ( sp )               //  4-byte Folded Reload
	add x9, x19, 1
.LBB0_224:                              //  %if.end751
	seqz x12, x0
	mv x10, x18
	mv x11, x27
	jal __lshift
	mv x11, x21
	mv x27, x10
	jal __mcmp
	blt x0, x10, .LBB0_239
.LBB0_225:                              //  %lor.lhs.false756
	and x11, x23, 1
	beq x0, x11, .LBB0_227
.LBB0_226:                              //  %lor.lhs.false756
	bltu x0, x10, .LBB0_227
.LBB0_239:                              //  %while.cond763
	mv fp, x9
	lbu x10, -1 ( fp )
	xor x11, x10, 57
	bltu x0, x11, .LBB0_242
.LBB0_240:                              //  %while.body768
	add x9, fp, -1
	bne x20, x9, .LBB0_239
.LBB0_241:                              //  %if.then771
	add x10, x0, 49
	sb x10, 0 ( x20 )
	add x26, x26, 1
	mv x10, x18
	mv x11, x21
	jal _Bfree
	bltu x0, x24, .LBB0_177
	jal x0, .LBB0_181
.LBB0_242:                              //  %while.end775
	add x10, x10, 1
	sb x10, -1 ( fp )
	mv x10, x18
	mv x11, x21
	jal _Bfree
	bltu x0, x24, .LBB0_177
	jal x0, .LBB0_181
.LBB0_227:                              //  %while.cond779.preheader
	add fp, x9, 1
.LBB0_228:                              //  %while.cond779
                                        //  =>This Inner Loop Header: Depth=1
	lbu x10, -2 ( fp )
	add fp, fp, -1
	xor x10, x10, 48
	beq x0, x10, .LBB0_228
	jal x0, .LBB0_176
.LBB0_229:                              //  %if.end662
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	bge x24, x9, .LBB0_231
.LBB0_230:
	add x23, x21, 49
.LBB0_231:                              //  %if.end662
	lw x21, 52 ( sp )               //  4-byte Folded Reload
	lw x24, 76 ( sp )               //  4-byte Folded Reload
	sb x23, 0 ( x19 )
	jal x0, .LBB0_246
.LBB0_247:                              //  %if.then163
	lui x10, %hi( .str.3 )
	add x10, x10, %lo( .str.3 )
	add x11, x0, 426
	lui x13, %hi( .str.4 )
	mv x12, x0
	add x13, x13, %lo( .str.4 )
	jal __assert_func
.LBB0_248:                              //  %if.then627
	lui x10, %hi( .str.3 )
	add x10, x10, %lo( .str.3 )
	add x11, x0, 746
	lui x13, %hi( .str.4 )
	mv x12, x0
	add x13, x13, %lo( .str.4 )
	jal __assert_func
.Lfunc_end0:
	.size	_dtoa_r, .Lfunc_end0-_dtoa_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_47
	.long	.LBB0_47
	.long	.LBB0_34
	.long	.LBB0_40
	.long	.LBB0_35
	.long	.LBB0_41
                                        //  -- End function
	.text
	.type	quorem,@function        //  -- Begin function quorem
quorem:                                 //  @quorem
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -48
	mv x18, x11
	mv fp, x10
	lw x10, 16 ( x18 )
	lw x11, 16 ( fp )
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 26, -44
	bge x11, x10, .LBB1_2
.LBB1_1:
	mv x9, x0
	jal x0, .LBB1_19
.LBB1_2:                                //  %if.end
	add x21, x10, -1
	add x23, x18, 20
	sll x10, x21, 2&31
	add x24, x10, x23
	add x22, fp, 20
	lw x11, 0 ( x24 )
	add x26, x10, x22
	lw x20, 0 ( x26 )
	add x19, x11, 1
	mv x11, x19
	mv x10, x20
	jal __udivsi3
	mv x9, x10
	lui x25, %hi( 65535 )
	bltu x20, x19, .LBB1_10
.LBB1_3:                                //  %do.body.preheader
	mv x13, x0
	add x10, x25, %lo( 65535 )
	mv x14, x13
	mv x11, x22
	mv x12, x23
.LBB1_4:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x15, 0 ( x12 )
	lw x17, 0 ( x11 )
	add x12, x12, 4
	srl x16, x15, 16&31
	and x15, x10, x15
	hackaton_custom_instr_c x15, x9, x15
	add x14, x14, x15
	srl x15, x14, 16&31
	srl x5, x17, 16&31
	hackaton_custom_instr_c x16, x9, x16
	and x14, x10, x14
	and x17, x10, x17
	add x15, x16, x15
	sub x14, x17, x14
	and x16, x10, x15
	add x13, x13, x14
	sra x14, x13, 16&31
	sub x16, x5, x16
	add x14, x14, x16
	and x13, x10, x13
	sll x16, x14, 16&31
	or x13, x13, x16
	sw x13, 0 ( x11 )
	sra x13, x14, 16&31
	add x11, x11, 4
	srl x14, x15, 16&31
	bgeu x24, x12, .LBB1_4
.LBB1_5:                                //  %do.end
	lw x10, 0 ( x26 )
	bltu x0, x10, .LBB1_10
.LBB1_6:                                //  %while.cond.preheader
	add x10, x26, -4
	bgeu x22, x10, .LBB1_9
.LBB1_7:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x10 )
	bltu x0, x11, .LBB1_9
.LBB1_8:                                //  %while.body
                                        //    in Loop: Header=BB1_7 Depth=1
	add x21, x21, -1
	add x10, x10, -4
	bltu x22, x10, .LBB1_7
.LBB1_9:                                //  %while.end
	sw x21, 16 ( fp )
.LBB1_10:                               //  %if.end33
	mv x10, fp
	mv x11, x18
	jal __mcmp
	blt x10, x0, .LBB1_19
.LBB1_11:                               //  %do.body40.preheader
	mv x12, x0
	add x10, x25, %lo( 65535 )
	mv x13, x12
	mv x11, x22
.LBB1_12:                               //  %do.body40
                                        //  =>This Inner Loop Header: Depth=1
	lw x14, 0 ( x23 )
	lw x16, 0 ( x11 )
	add x23, x23, 4
	and x15, x10, x14
	add x13, x13, x15
	and x15, x10, x13
	and x17, x10, x16
	srl x13, x13, 16&31
	srl x14, x14, 16&31
	sub x15, x17, x15
	add x13, x14, x13
	add x12, x12, x15
	and x15, x10, x13
	srl x14, x16, 16&31
	sub x14, x14, x15
	and x15, x10, x12
	sra x12, x12, 16&31
	add x12, x12, x14
	sll x14, x12, 16&31
	or x14, x15, x14
	sw x14, 0 ( x11 )
	add x11, x11, 4
	sra x12, x12, 16&31
	srl x13, x13, 16&31
	bgeu x24, x23, .LBB1_12
.LBB1_13:                               //  %do.end64
	sll x10, x21, 2&31
	add x10, x10, fp
	lw x11, 20 ( x10 )
	add x9, x9, 1
	bltu x0, x11, .LBB1_19
.LBB1_14:                               //  %while.cond70.preheader
	add x10, x10, 20
	add x10, x10, -4
	bgeu x22, x10, .LBB1_18
.LBB1_16:                               //  %land.rhs73
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x10 )
	bltu x0, x11, .LBB1_18
.LBB1_17:                               //  %while.body77
                                        //    in Loop: Header=BB1_16 Depth=1
	add x21, x21, -1
	add x10, x10, -4
	bltu x22, x10, .LBB1_16
.LBB1_18:                               //  %while.end79
	sw x21, 16 ( fp )
.LBB1_19:                               //  %cleanup
	mv x10, x9
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x26, 4 ( sp )                //  4-byte Folded Reload
	lw x25, 8 ( sp )                //  4-byte Folded Reload
	lw x24, 12 ( sp )               //  4-byte Folded Reload
	lw x23, 16 ( sp )               //  4-byte Folded Reload
	lw x22, 20 ( sp )               //  4-byte Folded Reload
	lw x21, 24 ( sp )               //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	quorem, .Lfunc_end1-quorem
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"Infinity"
	.size	.str, 9

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"NaN"
	.size	.str.1, 4

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"0"
	.size	.str.2, 2

	.address_space	0
	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"/tools/toolchain/newlib/newlib/libc/stdlib/dtoa.c"
	.size	.str.3, 50

	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	"Balloc succeeded"
	.size	.str.4, 17

	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
