	.text
	.file	"gdtoa-gethex.c"
	.globl	__gethex                //  -- Begin function __gethex
	.type	__gethex,@function
__gethex:                               //  @__gethex
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -96
	.cfi_adjust_cfa_offset 96
	sw x21, 72 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	mv x21, x10
	lui x10, %hi( _C_numeric_locale )
	add x10, x10, %lo( _C_numeric_locale )
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	lw x22, 0 ( x10 )
	sw x19, 80 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw ra, 92 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 88 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x10, x22
	sw x18, 84 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 76 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x23, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x15, 16 ( sp )               //  4-byte Folded Spill
	sw x14, 32 ( sp )               //  4-byte Folded Spill
	sw x13, 20 ( sp )               //  4-byte Folded Spill
	sw x12, 28 ( sp )               //  4-byte Folded Spill
	mv x19, x11
	jal strlen
	mv x23, x10
	add x26, x23, -1
	add x10, x26, x22
	lw x11, 0 ( x19 )
	lbu x9, 0 ( x10 )
	add x27, x0, -1
	add x24, x11, 1
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x10, 1 ( x24 )
	add x27, x27, 1
	add x24, x24, 1
	xor x11, x10, 48
	beq x0, x11, .LBB0_1
.LBB0_2:                                //  %while.end
	lui x11, %hi( __hexdig )
	add fp, x11, %lo( __hexdig )
	add x11, x10, fp
	lbu x11, 0 ( x11 )
	mv x18, x0
	beq x0, x11, .LBB0_13
.LBB0_3:
	mv x20, x18
	add x10, x10, fp
	lbu x10, 0 ( x10 )
	mv x25, x24
	beq x0, x10, .LBB0_6
.LBB0_4:                                //  %while.cond28.while.cond28_crit_edge.preheader
	mv x25, x24
.LBB0_5:                                //  %while.cond28.while.cond28_crit_edge
                                        //  =>This Inner Loop Header: Depth=1
	lbu x10, 1 ( x25 )
	add x25, x25, 1
	add x10, x10, fp
	lbu x10, 0 ( x10 )
	bltu x0, x10, .LBB0_5
.LBB0_6:                                //  %while.end34
	mv x10, x25
	mv x11, x22
	mv x12, x23
	jal strncmp
	bltu x0, x20, .LBB0_11
.LBB0_7:                                //  %while.end34
	bltu x0, x10, .LBB0_11
.LBB0_8:                                //  %if.then39
	add x10, x26, x25
	add x20, x23, x25
.LBB0_9:                                //  %while.cond41
                                        //  =>This Inner Loop Header: Depth=1
	lbu x11, 1 ( x10 )
	add x10, x10, 1
	add x11, x11, fp
	lbu x11, 0 ( x11 )
	bltu x0, x11, .LBB0_9
.LBB0_10:
	mv x25, x10
.LBB0_11:                               //  %if.end48
	beq x0, x20, .LBB0_15
.LBB0_12:                               //  %if.then50
	sub x10, x25, x20
	sll x10, x10, 2&31
	sub x14, x0, x10
	jal x0, .LBB0_16
.LBB0_13:                               //  %if.then
	mv x10, x24
	mv x11, x22
	mv x12, x23
	jal strncmp
	beq x0, x10, .LBB0_59
.LBB0_14:
	mv x14, x0
	seqz x18, x0
	mv x20, x24
	lbu x10, 0 ( x20 )
	or x10, x10, 32
	xor x10, x10, 112
	beq x0, x10, .LBB0_17
.LBB0_81:
	mv x26, x20
	sw x26, 0 ( x19 )
	beq x0, x18, .LBB0_30
.LBB0_82:                               //  %if.then88
	mv x22, x0
	bne x27, x22, .LBB0_160
.LBB0_83:
	add x22, x0, 6
	jal x0, .LBB0_160
.LBB0_15:
	mv x14, x0
.LBB0_16:                               //  %pcheckthread-pre-split
	mv x20, x25
	lbu x10, 0 ( x20 )
	or x10, x10, 32
	xor x10, x10, 112
	bltu x0, x10, .LBB0_81
.LBB0_17:                               //  %sw.bb
	lbu x11, 1 ( x20 )
	sw x19, 24 ( sp )               //  4-byte Folded Spill
	mv x19, x0
	xor x10, x11, 43
	beq x0, x10, .LBB0_20
.LBB0_18:                               //  %sw.bb
	xor x10, x11, 45
	bltu x0, x10, .LBB0_21
.LBB0_19:                               //  %sw.bb56
	seqz x19, x0
.LBB0_20:                               //  %sw.bb57
	lbu x11, 2 ( x20 )
	add x10, x0, 2
	jal x0, .LBB0_22
.LBB0_21:
	seqz x10, x0
.LBB0_22:                               //  %sw.epilog
	add x11, x11, fp
	lbu x11, 0 ( x11 )
	add x12, x11, -1
	and x13, x12, 255
	add x12, x0, 24
	bgeu x12, x13, .LBB0_24
.LBB0_23:
	mv x26, x20
	lw x19, 24 ( sp )               //  4-byte Folded Reload
	sw x26, 0 ( x19 )
	bltu x0, x18, .LBB0_82
.LBB0_30:                               //  %if.end90
	xor x10, x24, -1
	add x10, x20, x10
	slti x11, x10, 8
	sw x14, 36 ( sp )               //  4-byte Folded Spill
	bltu x0, x11, .LBB0_33
.LBB0_31:                               //  %for.body.preheader
	mv x11, x0
	add x12, x0, 15
.LBB0_32:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x13, x10
	srl x10, x13, 1&31
	add x11, x11, 1
	bltu x12, x13, .LBB0_32
	jal x0, .LBB0_34
.LBB0_24:                               //  %if.end67
	add x10, x10, x20
	lbu x13, 1 ( x10 )
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	add x26, x10, 1
	add x10, x11, -16
	add x13, x13, fp
	lbu x21, 0 ( x13 )
	sw x14, 36 ( sp )               //  4-byte Folded Spill
	add x13, x21, -1
	and x13, x13, 255
	bltu x12, x13, .LBB0_27
.LBB0_25:                               //  %while.body78.preheader
	add x25, x0, 10
.LBB0_26:                               //  %while.body78
                                        //  =>This Inner Loop Header: Depth=1
	mv x11, x25
	jal __mulsi3
	lbu x11, 1 ( x26 )
	add x26, x26, 1
	add x12, x11, fp
	and x11, x21, 255
	lbu x21, 0 ( x12 )
	add x11, x11, x10
	add x10, x11, -16
	add x12, x21, -1
	and x12, x12, 255
	sltiu x12, x12, 25
	bltu x0, x12, .LBB0_26
.LBB0_27:                               //  %while.end80
	mv x12, x0
	beq x19, x12, .LBB0_29
.LBB0_28:                               //  %while.end80
	add x10, x0, 16
	sub x10, x10, x11
.LBB0_29:                               //  %while.end80
	lw x14, 36 ( sp )               //  4-byte Folded Reload
	lw x21, 40 ( sp )               //  4-byte Folded Reload
	add x14, x14, x10
	lw x19, 24 ( sp )               //  4-byte Folded Reload
	sw x26, 0 ( x19 )
	bltu x0, x18, .LBB0_82
	jal x0, .LBB0_30
.LBB0_33:
	mv x11, x0
.LBB0_34:                               //  %for.end
	mv x10, x21
	jal _Balloc
	beq x0, x10, .LBB0_162
.LBB0_35:                               //  %if.end102
	add x18, x10, 20
	mv x25, x0
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	bgeu x24, x20, .LBB0_45
.LBB0_36:                               //  %while.body106.lr.ph.lr.ph
	seqz x10, x0
	mv x19, x25
	sub x27, x10, x23
	sub x26, x0, x23
	mv x21, x18
	jal x0, .LBB0_38
.LBB0_37:                               //  %if.end133
                                        //    in Loop: Header=BB0_38 Depth=1
	lbu x10, 0 ( x20 )
	add x10, x10, fp
	lbu x10, 0 ( x10 )
	and x10, x10, 15
	sll x10, x10, x19
	or x25, x25, x10
	add x19, x19, 4
	bgeu x24, x20, .LBB0_46
.LBB0_38:                               //  %while.body106.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_39 Depth 2
	mv x10, x20
.LBB0_39:                               //  %while.body106
                                        //    Parent Loop BB0_38 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x11, -1 ( x10 )
	add x20, x10, -1
	bne x11, x9, .LBB0_43
.LBB0_40:                               //  %land.lhs.true112
                                        //    in Loop: Header=BB0_39 Depth=2
	add x10, x26, x10
	bltu x10, x24, .LBB0_43
.LBB0_41:                               //  %land.lhs.true117
                                        //    in Loop: Header=BB0_39 Depth=2
	mv x11, x22
	mv x12, x23
	jal strncmp
	bltu x0, x10, .LBB0_43
.LBB0_42:                               //  %if.then124
                                        //    in Loop: Header=BB0_39 Depth=2
	add x10, x27, x20
	bltu x24, x10, .LBB0_39
	jal x0, .LBB0_46
.LBB0_43:                               //  %if.end128
                                        //    in Loop: Header=BB0_38 Depth=1
	xor x10, x19, 32
	bltu x0, x10, .LBB0_37
.LBB0_44:                               //  %if.then131
                                        //    in Loop: Header=BB0_38 Depth=1
	mv x19, x0
	sw x25, 0 ( x18 )
	mv x25, x19
	add x18, x18, 4
	jal x0, .LBB0_37
.LBB0_45:
	mv x21, x18
.LBB0_46:                               //  %while.end139
	lw x26, 24 ( sp )               //  4-byte Folded Reload
	sub x10, x18, x21
	add x10, x10, 4
	sra x11, x10, 2&31
	sll fp, x10, 3&31
	mv x10, x25
	sw x11, 16 ( x26 )
	sw x25, 0 ( x18 )
	jal __hi0bits
	lw x24, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 40 ( sp )               //  4-byte Folded Reload
	sub x10, fp, x10
	lw x23, 0 ( x24 )
	bge x23, x10, .LBB0_52
.LBB0_47:                               //  %if.then154
	sub x22, x10, x23
	mv x10, x26
	mv x11, x22
	jal __any_on
	beq x0, x10, .LBB0_73
.LBB0_48:                               //  %if.then158
	add x10, x22, -1
	sra x11, x10, 5&31
	sll x11, x11, 2&31
	add x11, x11, x26
	lw x11, 20 ( x11 )
	lw x5, 36 ( sp )                //  4-byte Folded Reload
	seqz fp, x0
	sll x12, fp, x10
	and x11, x12, x11
	beq x0, x11, .LBB0_74
.LBB0_49:                               //  %if.then166
	slti x10, x10, 2
	bltu x0, x10, .LBB0_91
.LBB0_50:                               //  %land.lhs.true169
	add x11, x22, -2
	mv x10, x26
	mv x9, x5
	jal __any_on
	mv x11, x0
	beq x10, x11, .LBB0_104
.LBB0_51:                               //  %land.lhs.true169
	add fp, x0, 3
	jal x0, .LBB0_105
.LBB0_52:                               //  %if.else
	mv fp, x0
	bge x10, x23, .LBB0_65
.LBB0_53:                               //  %if.then180
	sub x22, x23, x10
	mv x10, x19
	mv x11, x26
	mv x12, x22
	jal __lshift
	lw x5, 36 ( sp )                //  4-byte Folded Reload
	mv x26, x10
	add x21, x26, 20
	sub x5, x5, x22
	lw x10, 8 ( x24 )
	blt x10, x5, .LBB0_109
.LBB0_54:                               //  %if.end191
	lw x10, 4 ( x24 )
	bge x5, x10, .LBB0_66
.LBB0_55:                               //  %if.then194
	sub x9, x10, x5
	bge x9, x23, .LBB0_84
.LBB0_56:                               //  %if.end224
	seqz x18, x0
	add x22, x9, -1
	mv x10, x18
	bltu x0, fp, .LBB0_130
.LBB0_57:                               //  %if.else228
	bge x0, x22, .LBB0_129
.LBB0_58:                               //  %if.then231
	mv x10, x26
	mv x11, x22
	jal __any_on
	jal x0, .LBB0_130
.LBB0_59:                               //  %if.end
	add x20, x23, x24
	lbu x10, 0 ( x20 )
	add x11, x10, fp
	lbu x11, 0 ( x11 )
	beq x0, x11, .LBB0_80
.LBB0_60:                               //  %while.cond16.preheader
	xor x12, x10, 48
	mv x24, x20
	bltu x0, x12, .LBB0_64
.LBB0_61:                               //  %while.body20.preheader
	mv x24, x20
.LBB0_62:                               //  %while.body20
                                        //  =>This Inner Loop Header: Depth=1
	lbu x10, 1 ( x24 )
	add x24, x24, 1
	xor x11, x10, 48
	beq x0, x11, .LBB0_62
.LBB0_63:                               //  %while.end21.loopexit
	add x11, x10, fp
	lbu x11, 0 ( x11 )
.LBB0_64:                               //  %while.end21
	seqz x27, x0
	seqz x18, x11
	add x10, x10, fp
	lbu x10, 0 ( x10 )
	mv x25, x24
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_6
.LBB0_65:
	lw x5, 36 ( sp )                //  4-byte Folded Reload
	lw x10, 8 ( x24 )
	bge x10, x5, .LBB0_54
	jal x0, .LBB0_109
.LBB0_66:
	seqz x22, x0
	beq x0, fp, .LBB0_147
.LBB0_67:                               //  %if.then248
	lw x10, 12 ( x24 )
	xor x11, x10, 3
	beq x0, x11, .LBB0_98
.LBB0_68:                               //  %if.then248
	xor x11, x10, 2
	beq x0, x11, .LBB0_97
.LBB0_69:                               //  %if.then248
	xor x10, x10, 1
	bltu x0, x10, .LBB0_72
.LBB0_70:                               //  %sw.bb250
	and x10, fp, 2
	beq x0, x10, .LBB0_72
.LBB0_71:                               //  %land.lhs.true253
	lw x10, 0 ( x21 )
	or x10, fp, x10
	and x10, x10, 1
	bltu x0, x10, .LBB0_99
	jal x0, .LBB0_72
.LBB0_73:
	lw x5, 36 ( sp )                //  4-byte Folded Reload
	mv fp, x0
.LBB0_74:                               //  %if.end176
	lw x11, 16 ( x26 )
	sra x10, x22, 5&31
	mv x13, x21
	bge x10, x11, .LBB0_106
.LBB0_75:                               //  %if.then.i543
	add x12, x26, 20
	sll x11, x11, 2&31
	sll x10, x10, 2&31
	add x11, x11, x12
	and x13, x22, 31
	beq x0, x13, .LBB0_92
.LBB0_76:                               //  %if.then3.i
	add x14, x10, x12
	lw x12, 0 ( x14 )
	add x14, x14, 4
	srl x12, x12, x13
	bgeu x14, x11, .LBB0_94
.LBB0_77:                               //  %while.body.i558.preheader
	add x14, x0, 32
	sub x15, x14, x13
	add x14, x26, 24
.LBB0_78:                               //  %while.body.i558
                                        //  =>This Inner Loop Header: Depth=1
	add x16, x10, x14
	lw x17, 0 ( x16 )
	sll x17, x17, x15
	or x12, x12, x17
	sw x12, -4 ( x14 )
	lw x12, 0 ( x16 )
	add x14, x14, 4
	add x16, x10, x14
	srl x12, x12, x13
	bltu x16, x11, .LBB0_78
.LBB0_79:                               //  %while.end.i564.loopexit
	add x10, x14, -4
	mv x11, x0
	mv x13, x10
	beq x12, x11, .LBB0_96
.LBB0_95:                               //  %while.end.i564
	add x13, x10, 4
.LBB0_96:                               //  %while.end.i564
	sw x12, 0 ( x10 )
	sub x10, x13, x21
	sra x11, x10, 2&31
	sw x11, 16 ( x26 )
	bltu x0, x10, .LBB0_108
	jal x0, .LBB0_107
.LBB0_80:
	mv x14, x0
	seqz x18, x0
	or x10, x10, 32
	xor x10, x10, 112
	beq x0, x10, .LBB0_17
	jal x0, .LBB0_81
.LBB0_84:                               //  %if.then199
	lw x11, 12 ( x24 )
	xor x12, x11, 3
	beq x0, x12, .LBB0_113
.LBB0_85:                               //  %if.then199
	xor x12, x11, 2
	beq x0, x12, .LBB0_111
.LBB0_86:                               //  %if.then199
	xor x11, x11, 1
	bltu x0, x11, .LBB0_112
.LBB0_87:                               //  %sw.bb200
	bne x23, x9, .LBB0_112
.LBB0_88:                               //  %land.lhs.true203
	slti x11, x23, 2
	bltu x0, x11, .LBB0_114
.LBB0_89:                               //  %lor.lhs.false206
	add x11, x23, -1
	mv x10, x26
	jal __any_on
	beq x0, x10, .LBB0_112
.LBB0_90:                               //  %lor.lhs.false206.one_bit_crit_edge
	lw x10, 4 ( x24 )
	jal x0, .LBB0_114
.LBB0_91:
	add fp, x0, 2
	lw x11, 16 ( x26 )
	sra x10, x22, 5&31
	mv x13, x21
	blt x10, x11, .LBB0_75
	jal x0, .LBB0_106
.LBB0_92:                               //  %while.body14.i.preheader
	mv x13, x21
.LBB0_93:                               //  %while.body14.i
                                        //  =>This Inner Loop Header: Depth=1
	add x12, x10, x13
	lw x12, 0 ( x12 )
	sw x12, 0 ( x13 )
	add x13, x13, 4
	add x12, x10, x13
	bltu x12, x11, .LBB0_93
	jal x0, .LBB0_106
.LBB0_94:
	mv x10, x21
	mv x11, x0
	mv x13, x10
	beq x12, x11, .LBB0_96
	jal x0, .LBB0_95
.LBB0_97:                               //  %sw.bb261
	lw x11, 16 ( sp )               //  4-byte Folded Reload
	seqz x10, x0
	sub x11, x10, x11
	mv x10, x11
	beq x0, x10, .LBB0_72
.LBB0_99:                               //  %if.then266
	lw x9, 16 ( x26 )
	add x10, x26, 20
	sll fp, x9, 2&31
	add x11, fp, x10
.LBB0_100:                              //  %do.body.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x12, 0 ( x10 )
	xor x13, x12, -1
	bltu x0, x13, .LBB0_110
.LBB0_101:                              //  %if.end.i
                                        //    in Loop: Header=BB0_100 Depth=1
	sw x0, 0 ( x10 )
	add x10, x10, 4
	bltu x10, x11, .LBB0_100
.LBB0_102:                              //  %do.end.i
	lw x10, 8 ( x26 )
	bge x9, x10, .LBB0_115
.LBB0_103:
	mv x10, x9
	jal x0, .LBB0_117
.LBB0_98:
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB0_99
.LBB0_72:                               //  %if.else312
	or x22, x22, 16
	jal x0, .LBB0_147
.LBB0_104:
	add fp, x0, 2
.LBB0_105:                              //  %land.lhs.true169
	mv x5, x9
	lw x11, 16 ( x26 )
	sra x10, x22, 5&31
	mv x13, x21
	blt x10, x11, .LBB0_75
.LBB0_106:                              //  %if.end19.i571
	sub x10, x13, x21
	sra x11, x10, 2&31
	sw x11, 16 ( x26 )
	bltu x0, x10, .LBB0_108
.LBB0_107:                              //  %if.then24.i572
	sw x0, 0 ( x21 )
.LBB0_108:                              //  %rshift.exit573
	add x5, x5, x22
	lw x10, 8 ( x24 )
	bge x10, x5, .LBB0_54
.LBB0_109:                              //  %ovfl
	mv x10, x19
	mv x11, x26
	jal _Bfree
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	add x22, x0, 163
	sw x0, 0 ( x10 )
	jal x0, .LBB0_160
.LBB0_110:                              //  %if.then.i536
	add x11, x12, 1
	sw x11, 0 ( x10 )
	mv x12, x9
	xor x10, x22, 2
	bltu x0, x10, .LBB0_121
.LBB0_118:                              //  %if.then273
	lw x10, 0 ( x24 )
	add x10, x10, -1
	bne x23, x10, .LBB0_128
.LBB0_119:                              //  %land.lhs.true278
	sra x10, x23, 5&31
	sll x10, x10, 2&31
	add x10, x10, x26
	lw x10, 20 ( x10 )
	seqz x22, x0
	sll x11, x22, x23
	and x10, x11, x10
	mv x11, x0
	bne x10, x11, .LBB0_157
.LBB0_128:
	add x22, x0, 2
	jal x0, .LBB0_157
.LBB0_111:                              //  %sw.bb212
	lw x11, 16 ( sp )               //  4-byte Folded Reload
	beq x0, x11, .LBB0_114
.LBB0_112:                              //  %sw.epilog223
	mv x10, x19
	mv x11, x26
	jal _Bfree
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	add x22, x0, 80
	sw x0, 0 ( x10 )
	jal x0, .LBB0_160
.LBB0_113:                              //  %sw.bb216
	lw x11, 16 ( sp )               //  4-byte Folded Reload
	beq x0, x11, .LBB0_112
.LBB0_114:                              //  %one_bit
	lw x11, 20 ( sp )               //  4-byte Folded Reload
	add x22, x0, 98
	sw x10, 0 ( x11 )
	lw x11, 32 ( sp )               //  4-byte Folded Reload
	seqz x10, x0
	sw x10, 0 ( x21 )
	sw x10, 16 ( x26 )
	sw x26, 0 ( x11 )
	jal x0, .LBB0_160
.LBB0_115:                              //  %if.then4.i
	lw x10, 4 ( x26 )
	mv x18, x5
	add x11, x10, 1
	mv x10, x19
	jal _Balloc
	mv x20, x10
	beq x0, x20, .LBB0_163
.LBB0_116:                              //  %if.end7.i
	lw x10, 16 ( x26 )
	add x11, x26, 12
	sll x10, x10, 2&31
	add x12, x10, 8
	add x10, x20, 12
	jal memcpy
	mv x10, x19
	mv x11, x26
	jal _Bfree
	lw x10, 16 ( x20 )
	mv x26, x20
	mv x5, x18
.LBB0_117:                              //  %if.end12.i
	sll x11, x10, 2&31
	add x11, x11, x26
	seqz x12, x0
	sw x12, 20 ( x11 )
	add x12, x10, 1
	sw x12, 16 ( x26 )
	xor x10, x22, 2
	beq x0, x10, .LBB0_118
.LBB0_121:                              //  %if.else287
	blt x9, x12, .LBB0_125
.LBB0_122:                              //  %lor.lhs.false291
	and x9, x23, 31
	beq x0, x9, .LBB0_157
.LBB0_123:                              //  %land.lhs.true295
	add x10, x26, fp
	lw x10, 16 ( x10 )
	mv x18, x5
	jal __hi0bits
	add x11, x0, 32
	sub x11, x11, x9
	bge x10, x11, .LBB0_161
.LBB0_124:                              //  %land.lhs.true295.if.then302_crit_edge
	lw x12, 16 ( x26 )
	mv x5, x18
.LBB0_125:                              //  %if.then302
	add x10, x26, 20
	mv x13, x10
	bge x0, x12, .LBB0_153
.LBB0_126:                              //  %if.then.i
	lw x11, 20 ( x26 )
	xor x13, x12, 1
	srl x11, x11, 1&31
	bltu x0, x13, .LBB0_148
.LBB0_127:
	mv x12, x10
	mv x14, x0
	mv x13, x12
	bne x11, x14, .LBB0_151
	jal x0, .LBB0_152
.LBB0_129:
	mv x10, x0
.LBB0_130:                              //  %if.end234
	sra x12, x22, 5&31
	sll x12, x12, 2&31
	add x12, x12, x21
	lw x12, 0 ( x12 )
	sll x11, x18, x22
	and x12, x11, x12
	mv x11, x0
	beq x12, x11, .LBB0_132
.LBB0_131:                              //  %if.end234
	or fp, x10, 2
	jal x0, .LBB0_133
.LBB0_132:
	mv fp, x10
.LBB0_133:                              //  %if.end234
	lw x13, 16 ( x26 )
	add x10, x26, 20
	sra x12, x9, 5&31
	mv x15, x10
	bge x12, x13, .LBB0_144
.LBB0_134:                              //  %if.then.i582
	add x14, x26, 20
	sll x13, x13, 2&31
	sll x12, x12, 2&31
	add x13, x13, x14
	and x15, x9, 31
	beq x0, x15, .LBB0_139
.LBB0_135:                              //  %if.then3.i588
	add x16, x12, x14
	lw x14, 0 ( x16 )
	add x16, x16, 4
	srl x14, x14, x15
	bgeu x16, x13, .LBB0_141
.LBB0_136:                              //  %while.body.i599.preheader
	add x16, x0, 32
	sub x17, x16, x15
	add x16, x26, 24
.LBB0_137:                              //  %while.body.i599
                                        //  =>This Inner Loop Header: Depth=1
	add x5, x12, x16
	lw x6, 0 ( x5 )
	sll x6, x6, x17
	or x14, x14, x6
	sw x14, -4 ( x16 )
	lw x14, 0 ( x5 )
	add x16, x16, 4
	add x5, x12, x16
	srl x14, x14, x15
	bltu x5, x13, .LBB0_137
.LBB0_138:                              //  %while.end.i605.loopexit
	add x12, x16, -4
	mv x15, x12
	beq x14, x11, .LBB0_143
.LBB0_142:                              //  %while.end.i605
	add x15, x12, 4
.LBB0_143:                              //  %while.end.i605
	sw x14, 0 ( x12 )
	sub x11, x15, x10
	sra x12, x11, 2&31
	sw x12, 16 ( x26 )
	bltu x0, x11, .LBB0_146
	jal x0, .LBB0_145
.LBB0_139:                              //  %while.body14.i611.preheader
	mv x15, x10
.LBB0_140:                              //  %while.body14.i611
                                        //  =>This Inner Loop Header: Depth=1
	add x11, x12, x15
	lw x11, 0 ( x11 )
	sw x11, 0 ( x15 )
	add x15, x15, 4
	add x11, x12, x15
	bltu x11, x13, .LBB0_140
.LBB0_144:                              //  %if.end19.i618
	sub x11, x15, x10
	sra x12, x11, 2&31
	sw x12, 16 ( x26 )
	bltu x0, x11, .LBB0_146
.LBB0_145:                              //  %if.then24.i619
	sw x0, 0 ( x10 )
.LBB0_146:                              //  %rshift.exit620
	lw x5, 4 ( x24 )
	sub x23, x23, x9
	add x22, x0, 2
	bltu x0, fp, .LBB0_67
.LBB0_147:                              //  %if.end315
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	lw x11, 20 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_159
.LBB0_141:
	mv x12, x10
	mv x15, x12
	beq x14, x11, .LBB0_143
	jal x0, .LBB0_142
.LBB0_148:                              //  %while.body.i.preheader
	sll x12, x12, 2&31
	add x13, x26, 20
	add x13, x12, x13
	mv x12, x10
.LBB0_149:                              //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x14, 4 ( x12 )
	sll x15, x14, 31&31
	or x11, x11, x15
	sw x11, 0 ( x12 )
	srl x11, x14, 1&31
	add x14, x12, 8
	add x12, x12, 4
	bltu x14, x13, .LBB0_149
.LBB0_150:                              //  %while.end.i
	mv x14, x0
	mv x13, x12
	beq x11, x14, .LBB0_152
.LBB0_151:                              //  %while.end.i
	add x13, x12, 4
.LBB0_152:                              //  %while.end.i
	sw x11, 0 ( x12 )
.LBB0_153:                              //  %if.end19.i
	sub x11, x13, x10
	sra x12, x11, 2&31
	sw x12, 16 ( x26 )
	bltu x0, x11, .LBB0_155
.LBB0_154:                              //  %if.then24.i
	sw x0, 0 ( x10 )
.LBB0_155:                              //  %rshift.exit
	lw x10, 8 ( x24 )
	bge x5, x10, .LBB0_109
.LBB0_156:
	add x5, x5, 1
.LBB0_157:                              //  %if.end310
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	lw x11, 20 ( sp )               //  4-byte Folded Reload
.LBB0_158:                              //  %if.end310
	or x22, x22, 32
.LBB0_159:                              //  %if.end315
	sw x5, 0 ( x11 )
	sw x26, 0 ( x10 )
.LBB0_160:                              //  %cleanup
	mv x10, x22
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
.LBB0_161:
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	lw x11, 20 ( sp )               //  4-byte Folded Reload
	mv x5, x18
	jal x0, .LBB0_158
.LBB0_162:                              //  %if.then101
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	add x11, x0, 222
	lui x13, %hi( .str.1 )
	mv x12, x0
	add x13, x13, %lo( .str.1 )
	jal __assert_func
.LBB0_163:                              //  %if.then6.i
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	add x11, x0, 132
	lui x13, %hi( .str.1 )
	mv x12, x0
	add x13, x13, %lo( .str.1 )
	jal __assert_func
.Lfunc_end0:
	.size	__gethex, .Lfunc_end0-__gethex
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	__hexdig,@object        //  @__hexdig
	.section	.rodata,"a",@progbits
	.globl	__hexdig
__hexdig:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\020\021\022\023\024\025\026\027\030\031\000\000\000\000\000\000\000\032\033\034\035\036\037\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\032\033\034\035\036\037"
	.zero	153
	.size	__hexdig, 256

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"/tools/toolchain/newlib/newlib/libc/stdlib/gdtoa-gethex.c"
	.size	.str, 58

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"Balloc succeeded"
	.size	.str.1, 17

	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
