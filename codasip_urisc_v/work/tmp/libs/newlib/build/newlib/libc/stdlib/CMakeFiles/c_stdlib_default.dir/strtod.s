	.text
	.file	"strtod.c"
	.globl	_strtod_l               //  -- Begin function _strtod_l
	.type	_strtod_l,@function
_strtod_l:                              //  @_strtod_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -192
	.cfi_adjust_cfa_offset 192
	sw fp, 140 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x10
	lui x10, %hi( _C_numeric_locale )
	add x10, x10, %lo( _C_numeric_locale )
	sw x25, 152 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	lw x25, 0 ( x10 )
	sw x9, 184 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 176 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 172 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x10, x25
	sw ra, 188 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 180 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21, 168 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 164 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 160 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 156 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26, 148 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 144 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	mv x20, x13
	mv x9, x12
	mv x19, x11
	sw x0, 128 ( sp )
	jal strlen
	mv x24, x10
	add x21, x19, 1
	add x12, x0, 42
	jal x0, .LBB0_2
.LBB0_1:                                //  %for.inc
                                        //    in Loop: Header=BB0_2 Depth=1
	add x21, x21, 1
.LBB0_2:                                //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	lb x10, -1 ( x21 )
	add x11, x21, -1
	sw x11, 132 ( sp )
	add x13, x10, -9
	sltiu x13, x13, 5
	bltu x0, x13, .LBB0_1
.LBB0_3:                                //  %for.cond
                                        //    in Loop: Header=BB0_2 Depth=1
	blt x12, x10, .LBB0_6
.LBB0_4:                                //  %for.cond
                                        //    in Loop: Header=BB0_2 Depth=1
	xor x13, x10, 32
	beq x0, x13, .LBB0_1
.LBB0_5:                                //  %for.cond
	beq x0, x10, .LBB0_82
	jal x0, .LBB0_10
.LBB0_6:                                //  %for.cond
	xor x12, x10, 45
	beq x0, x12, .LBB0_9
.LBB0_7:                                //  %for.cond
	xor x12, x10, 43
	bltu x0, x12, .LBB0_10
.LBB0_8:                                //  %sw.bb3.loopexit
	mv x26, x0
	lbu x10, 0 ( x21 )
	sw x21, 132 ( sp )
	bltu x0, x10, .LBB0_11
	jal x0, .LBB0_82
.LBB0_9:                                //  %sw.bb3.loopexit1
	seqz x26, x0
	lbu x10, 0 ( x21 )
	sw x21, 132 ( sp )
	bltu x0, x10, .LBB0_11
	jal x0, .LBB0_82
.LBB0_10:                               //  %break2.loopexit
	and x10, x10, 255
	mv x26, x0
	mv x21, x11
.LBB0_11:                               //  %break2
	mv x12, x0
	xor x11, x10, 48
	sw fp, 104 ( sp )               //  4-byte Folded Spill
	sw x9, 108 ( sp )               //  4-byte Folded Spill
	bltu x0, x11, .LBB0_19
.LBB0_12:                               //  %if.then9
	lb x10, 1 ( x21 )
	add fp, x21, 1
	or x10, x10, 32
	xor x10, x10, 120
	bltu x0, x10, .LBB0_16
.LBB0_13:                               //  %sw.bb11
	lui x10, %hi( _strtod_l.fpi )
	add x12, x10, %lo( _strtod_l.fpi )
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	add x11, sp, 132
	add x13, sp, 136
	add x14, sp, 128
	mv x15, x26
	mv x16, x20
	jal __gethex
	mv x19, x10
	and x9, x19, 7
	bltu x0, x9, .LBB0_14
.LBB0_299:                              //  %sw.bb11
	jal x0, .LBB0_260
.LBB0_14:                               //  %sw.bb11
	xor x10, x9, 6
	bltu x0, x10, .LBB0_64
.LBB0_15:                               //  %sw.bb13
	mv x23, x0
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	sw fp, 132 ( sp )
	mv x27, x23
	mv x26, x23
	bltu x0, x9, .LBB0_84
	jal x0, .LBB0_85
.LBB0_16:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x10, 0 ( fp )
	sw fp, 132 ( sp )
	add fp, fp, 1
	xor x11, x10, 48
	beq x0, x11, .LBB0_16
.LBB0_17:                               //  %while.cond
	bltu x0, x10, .LBB0_74
.LBB0_18:                               //  %ret.loopexit
	mv x23, x0
	mv x27, x23
	bltu x0, x9, .LBB0_84
	jal x0, .LBB0_85
.LBB0_19:
	sw x12, 96 ( sp )               //  4-byte Folded Spill
.LBB0_20:                               //  %if.end30
	sll x11, x10, 24&31
	add x10, x10, -48
	sra x9, x11, 24&31
	and x10, x10, 255
	add x11, x0, 9
	add x13, x0, 8
	add x18, x0, 10
	bltu x11, x10, .LBB0_26
.LBB0_21:                               //  %for.body.preheader
	mv x23, x0
	mv x22, x23
	mv x27, x23
	bgeu x13, x27, .LBB0_25
.LBB0_22:                               //  %if.else
	hackaton_custom_instr_c x10, x18, x22
	add x10, x10, x9
	add x22, x10, -48
.LBB0_23:                               //  %for.inc44
	add x10, x27, x21
	lb x9, 1 ( x10 )
	add x11, x10, 1
	add x27, x27, 1
	sw x11, 132 ( sp )
	add x10, x9, -48
	and x10, x10, 255
	sltiu x10, x10, 10
	beq x0, x10, .LBB0_27
.LBB0_24:                               //  %for.body
	bltu x13, x27, .LBB0_22
.LBB0_25:                               //  %if.then39
	hackaton_custom_instr_c x10, x18, x23
	add x10, x10, x9
	add x23, x10, -48
	jal x0, .LBB0_23
.LBB0_26:
	mv fp, x19
	mv x27, x12
	mv x22, x12
	mv x19, x12
	mv x23, x12
	mv x20, x21
	jal x0, .LBB0_28
.LBB0_27:                               //  %for.end.loopexit
	mv fp, x19
	mv x19, x12
	add x20, x27, x21
.LBB0_28:                               //  %for.end
	mv x10, x20
	mv x11, x25
	mv x12, x24
	jal strncmp
	sw x26, 100 ( sp )              //  4-byte Folded Spill
	beq x0, x10, .LBB0_43
.LBB0_29:
	mv x17, x19
	mv x26, x17
	mv x11, x17
	mv x24, x27
	mv x10, x17
	mv x19, fp
	add x5, x0, 8
	add x6, x0, 9
	or x12, x9, 32
	xor x12, x12, 101
	bltu x0, x12, .LBB0_30
.LBB0_46:                               //  %if.then127
	lw x12, 96 ( sp )               //  4-byte Folded Reload
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	or x12, x12, x10
	or x12, x24, x12
	beq x0, x12, .LBB0_82
.LBB0_47:                               //  %if.end134
	lb x9, 1 ( x20 )
	add x13, x20, 1
	mv x12, x0
	sw x13, 132 ( sp )
	xor x14, x9, 43
	beq x0, x14, .LBB0_50
.LBB0_48:                               //  %if.end134
	xor x14, x9, 45
	bltu x0, x14, .LBB0_51
.LBB0_49:                               //  %sw.bb137
	seqz x12, x0
.LBB0_50:                               //  %sw.bb138
	lb x9, 2 ( x20 )
	add x13, x20, 2
	sw x13, 132 ( sp )
.LBB0_51:                               //  %sw.epilog141
	add x14, x9, -48
	bltu x6, x14, .LBB0_69
.LBB0_52:                               //  %while.cond148.preheader
	xor x14, x9, 48
	bltu x0, x14, .LBB0_56
.LBB0_53:                               //  %while.body151.preheader
	add x13, x13, 1
.LBB0_54:                               //  %while.body151
                                        //  =>This Inner Loop Header: Depth=1
	lb x9, 0 ( x13 )
	sw x13, 132 ( sp )
	add x13, x13, 1
	xor x14, x9, 48
	beq x0, x14, .LBB0_54
.LBB0_55:                               //  %while.cond148.while.end154_crit_edge
	add x13, x13, -1
.LBB0_56:                               //  %while.end154
	add x14, x9, -49
	bltu x5, x14, .LBB0_70
.LBB0_57:                               //  %if.then160
	add x14, x9, -48
	lb x9, 1 ( x13 )
	add x15, x13, 1
	sw x15, 132 ( sp )
	add x16, x9, -48
	and x16, x16, 255
	bltu x6, x16, .LBB0_61
.LBB0_58:                               //  %while.body171.preheader
	add x15, x13, 2
.LBB0_59:                               //  %while.body171
                                        //  =>This Inner Loop Header: Depth=1
	hackaton_custom_instr_c x14, x18, x14
	add x14, x14, x9
	lb x9, 0 ( x15 )
	add x14, x14, -48
	sw x15, 132 ( sp )
	add x15, x15, 1
	add x16, x9, -48
	and x16, x16, 255
	sltiu x16, x16, 10
	bltu x0, x16, .LBB0_59
.LBB0_60:                               //  %while.end175.loopexit
	add x15, x15, -1
.LBB0_61:                               //  %while.end175
	sub x15, x15, x13
	lui x13, %hi( 19999 )
	add x17, x13, %lo( 19999 )
	mv x13, x17
	blt x5, x15, .LBB0_62
.LBB0_96:                               //  %while.end175
	mv x13, x14
	bge x17, x14, .LBB0_97
.LBB0_63:                               //  %while.end175
	mv x13, x0
	beq x12, x13, .LBB0_71
	jal x0, .LBB0_98
.LBB0_43:                               //  %if.then49
	add x20, x24, x20
	lb x9, 0 ( x20 )
	mv x17, x19
	sw x20, 132 ( sp )
	beq x0, x27, .LBB0_75
.LBB0_44:
	mv x26, x0
	mv x24, x27
	mv x10, x26
	mv x19, fp
	add x5, x0, 8
	add x6, x0, 9
	add x11, x9, -48
	bltu x6, x11, .LBB0_45
.LBB0_300:
	jal x0, .LBB0_284
.LBB0_45:
	seqz x11, x0
	or x12, x9, 32
	xor x12, x12, 101
	beq x0, x12, .LBB0_46
.LBB0_30:                               //  %if.end192
	beq x0, x24, .LBB0_72
.LBB0_31:                               //  %if.end244
	add x10, x0, 16
	mv x18, x0
	mv x25, x24
	beq x27, x18, .LBB0_33
.LBB0_32:                               //  %if.end244
	mv x25, x27
.LBB0_33:                               //  %if.end244
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	mv x27, x17
	mv fp, x24
	blt x24, x10, .LBB0_35
.LBB0_34:                               //  %if.end244
	mv fp, x10
.LBB0_35:                               //  %if.end244
	mv x10, x23
	jal __floatunsidf
	mv x20, x10
	mv x19, x11
	slti x10, fp, 10
	bltu x0, x10, .LBB0_37
.LBB0_36:                               //  %if.then255
	lui x11, %hi( __mprec_tens )
	sll x10, fp, 3&31
	add x11, x11, %lo( __mprec_tens )
	add x11, x11, x10
	lw x10, -72 ( x11 )
	lw x11, -68 ( x11 )
	mv x12, x20
	mv x13, x19
	jal __muldf3
	mv x19, x10
	mv x10, x22
	mv x20, x11
	jal __floatunsidf
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __adddf3
	mv x20, x10
	mv x19, x11
.LBB0_37:                               //  %if.end263
	sub x27, x27, x26
	lw x26, 100 ( sp )              //  4-byte Folded Reload
	add x10, x0, 15
	blt x10, x24, .LBB0_107
.LBB0_38:                               //  %land.lhs.true266
	mv x11, x0
	bltu x0, x11, .LBB0_107
.LBB0_39:                               //  %if.then269
	beq x0, x27, .LBB0_90
.LBB0_40:                               //  %if.end272
	bge x0, x27, .LBB0_104
.LBB0_41:                               //  %if.then275
	add x11, x0, 22
	blt x11, x27, .LBB0_106
.LBB0_42:                               //  %if.then278
	lui x11, %hi( __mprec_tens )
	sll x10, x27, 3&31
	add x11, x11, %lo( __mprec_tens )
	add x10, x10, x11
	lw x12, 0 ( x10 )
	lw x13, 4 ( x10 )
	mv x10, x20
	mv x11, x19
	jal __muldf3
	mv x23, x10
	mv x27, x11
	bltu x0, x9, .LBB0_84
	jal x0, .LBB0_85
.LBB0_64:                               //  %sw.default14
	lw x12, 128 ( sp )
	beq x0, x12, .LBB0_66
.LBB0_65:                               //  %if.then16
	add x10, sp, 120
	add x11, x0, 53
	jal __copybits
	lw x11, 128 ( sp )
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	jal _Bfree
.LBB0_66:                               //  %if.end17
	add x10, x9, -1
	add x11, x0, 4
	bltu x11, x10, .LBB0_99
.LBB0_67:                               //  %if.end17
	lui x11, %hi( JTI0_0 )
	sll x10, x10, 2&31
	add x11, x11, %lo( JTI0_0 )
	add x10, x11, x10
	lw x10, 0 ( x10 )
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	jr x10
.LBB0_68:                               //  %sw.bb7.i
	lw x10, 136 ( sp )
	lui x11, (1127219200>>12)&1048575
	lui x12, %hi( -1048577 )
	add x12, x12, %lo( -1048577 )
	sll x10, x10, 20&31
	add x10, x11, x10
	lw x11, 124 ( sp )
	lw x23, 120 ( sp )
	and x11, x12, x11
	or x27, x10, x11
	and x10, x19, 8
	beq x0, x10, .LBB0_83
	jal x0, .LBB0_103
.LBB0_69:                               //  %if.else190
	sw x20, 132 ( sp )
.LBB0_70:                               //  %if.end192
	mv x17, x0
.LBB0_71:                               //  %if.end192
	mv x19, x20
	bltu x0, x24, .LBB0_31
.LBB0_72:                               //  %if.then194
	lw x12, 96 ( sp )               //  4-byte Folded Reload
	mv x23, x0
	or x10, x12, x10
	beq x0, x10, .LBB0_80
.LBB0_73:
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	lw x26, 100 ( sp )              //  4-byte Folded Reload
	mv x27, x23
	bltu x0, x9, .LBB0_84
	jal x0, .LBB0_85
.LBB0_74:                               //  %if.end30.loopexit
	seqz x11, x0
	add x21, fp, -1
	sw x11, 96 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_20
.LBB0_75:                               //  %for.cond54.preheader
	and x10, x9, 255
	mv x24, x0
	xor x10, x10, 48
	mv x19, fp
	add x5, x0, 8
	bltu x0, x10, .LBB0_88
.LBB0_76:                               //  %for.body57.preheader
	mv x10, x0
	add x6, x0, 9
.LBB0_77:                               //  %for.body57
                                        //  =>This Inner Loop Header: Depth=1
	add x11, x10, x20
	lb x9, 1 ( x11 )
	add x12, x11, 1
	add x10, x10, 1
	sw x12, 132 ( sp )
	xor x11, x9, 48
	beq x0, x11, .LBB0_77
.LBB0_78:                               //  %for.cond54.for.end62_crit_edge
	add x20, x10, x20
	add x11, x9, -49
	sltiu x11, x11, 9
	bltu x0, x11, .LBB0_89
.LBB0_79:
	seqz x11, x0
	mv x26, x24
	or x12, x9, 32
	xor x12, x12, 101
	bltu x0, x12, .LBB0_30
	jal x0, .LBB0_46
.LBB0_80:                               //  %if.then198
	beq x0, x11, .LBB0_91
.LBB0_81:
	lw x9, 108 ( sp )               //  4-byte Folded Reload
.LBB0_82:                               //  %ret0
	mv x23, x0
	sw x19, 132 ( sp )
	mv x27, x23
	mv x26, x23
.LBB0_83:                               //  %ret
	beq x0, x9, .LBB0_85
.LBB0_84:                               //  %if.then945
	lw x10, 132 ( sp )
	sw x10, 0 ( x9 )
.LBB0_85:                               //  %cleanup955
	mv x10, x0
	beq x26, x10, .LBB0_87
.LBB0_86:                               //  %cleanup955
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x27, x10, x27
.LBB0_87:                               //  %cleanup955
	mv x10, x23
	mv x11, x27
	lw fp, 140 ( sp )               //  4-byte Folded Reload
	lw x27, 144 ( sp )              //  4-byte Folded Reload
	lw x26, 148 ( sp )              //  4-byte Folded Reload
	lw x25, 152 ( sp )              //  4-byte Folded Reload
	lw x24, 156 ( sp )              //  4-byte Folded Reload
	lw x23, 160 ( sp )              //  4-byte Folded Reload
	lw x22, 164 ( sp )              //  4-byte Folded Reload
	lw x21, 168 ( sp )              //  4-byte Folded Reload
	lw x20, 172 ( sp )              //  4-byte Folded Reload
	lw x19, 176 ( sp )              //  4-byte Folded Reload
	lw x18, 180 ( sp )              //  4-byte Folded Reload
	lw x9, 184 ( sp )               //  4-byte Folded Reload
	lw ra, 188 ( sp )               //  4-byte Folded Reload
	add sp, sp, 192
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_62:                               //  %while.end175
	blt x17, x14, .LBB0_63
.LBB0_97:                               //  %while.end175
	mv x17, x13
	mv x13, x0
	beq x12, x13, .LBB0_71
.LBB0_98:                               //  %while.end175
	sub x17, x0, x17
	mv x19, x20
	bltu x0, x24, .LBB0_31
	jal x0, .LBB0_72
.LBB0_88:
	mv x10, x24
	add x6, x0, 9
	add x11, x9, -49
	sltiu x11, x11, 9
	beq x0, x11, .LBB0_79
.LBB0_89:
	mv x26, x10
	mv x11, x20
	mv x13, x24
	mv x10, x24
	mv x21, x20
	add x14, x10, 1
	add x12, x9, -48
	bltu x0, x12, .LBB0_285
.LBB0_294:
	mv x24, x13
	mv x10, x14
	jal x0, .LBB0_298
.LBB0_90:
	mv x23, x20
	mv x27, x19
	bltu x0, x9, .LBB0_84
	jal x0, .LBB0_85
.LBB0_91:                               //  %if.then201
	add x10, x9, -73
	add x11, x0, 37
	bltu x11, x10, .LBB0_81
.LBB0_92:                               //  %if.then201
	lui x11, %hi( JTI0_1 )
	sll x10, x10, 2&31
	add x11, x11, %lo( JTI0_1 )
	add x10, x11, x10
	lw x10, 0 ( x10 )
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	jr x10
.LBB0_93:                               //  %sw.bb202
	lui x11, %hi( .str )
	add x10, sp, 132
	add x11, x11, %lo( .str )
	jal __match
	beq x0, x10, .LBB0_82
.LBB0_94:                               //  %if.then205
	lw x10, 132 ( sp )
	lui x11, %hi( .str.1 )
	add x11, x11, %lo( .str.1 )
	add x10, x10, -1
	sw x10, 132 ( sp )
	add x10, sp, 132
	jal __match
	lui x27, (2146435072>>12)&1048575
	mv x23, x0
	beq x0, x10, .LBB0_237
.LBB0_95:
	lw x26, 100 ( sp )              //  4-byte Folded Reload
	bltu x0, x9, .LBB0_84
	jal x0, .LBB0_85
.LBB0_99:
	mv x23, x0
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	mv x27, x23
	and x10, x19, 8
	beq x0, x10, .LBB0_83
	jal x0, .LBB0_103
.LBB0_100:                              //  %sw.bb2.i
	lw x27, 124 ( sp )
	lw x23, 120 ( sp )
	and x10, x19, 8
	beq x0, x10, .LBB0_83
	jal x0, .LBB0_103
.LBB0_101:                              //  %sw.bb14.i
	lui x27, (2146435072>>12)&1048575
	mv x23, x0
	and x10, x19, 8
	beq x0, x10, .LBB0_83
	jal x0, .LBB0_103
.LBB0_102:                              //  %sw.bb17.i
	lui x10, %hi( 2147483647 )
	add x27, x10, %lo( 2147483647 )
	add x23, x0, -1
	and x10, x19, 8
	beq x0, x10, .LBB0_83
.LBB0_103:                              //  %if.then.i
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	or x27, x10, x27
	bltu x0, x9, .LBB0_84
	jal x0, .LBB0_85
.LBB0_104:                              //  %if.else296
	slti x10, x27, -22
	bltu x0, x10, .LBB0_107
.LBB0_105:                              //  %if.then299
	lui x11, %hi( __mprec_tens )
	sll x10, x27, 3&31
	add x11, x11, %lo( __mprec_tens )
	sub x10, x11, x10
	lw x12, 0 ( x10 )
	lw x13, 4 ( x10 )
	mv x10, x20
	mv x11, x19
	jal __divdf3
	mv x23, x10
	mv x27, x11
	bltu x0, x9, .LBB0_84
	jal x0, .LBB0_85
.LBB0_106:                              //  %if.end282
	add x11, x0, 37
	sub x11, x11, x24
	bge x11, x27, .LBB0_216
.LBB0_107:                              //  %if.end305
	sub x10, x24, fp
	add x9, x10, x27
	bge x0, x9, .LBB0_120
.LBB0_108:                              //  %if.then310
	and x10, x9, 15
	beq x0, x10, .LBB0_110
.LBB0_109:                              //  %if.then314
	lui x11, %hi( __mprec_tens )
	sll x10, x10, 3&31
	add x11, x11, %lo( __mprec_tens )
	add x10, x10, x11
	lw x12, 0 ( x10 )
	lw x13, 4 ( x10 )
	mv x10, x20
	mv x11, x19
	jal __muldf3
	mv x20, x10
	mv x19, x11
.LBB0_110:                              //  %if.end318
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	and x10, x9, -16
	beq x0, x10, .LBB0_122
.LBB0_111:                              //  %if.then321
	add x11, x0, 308
	blt x11, x10, .LBB0_126
.LBB0_112:                              //  %if.end332
	sltiu x10, x9, 32
	lui fp, %hi( __mprec_bigtens )
	mv x18, x0
	bltu x0, x10, .LBB0_117
.LBB0_113:                              //  %for.body336.preheader
	srl x10, x9, 4&31
	add x22, fp, %lo( __mprec_bigtens )
	add x9, x0, 3
	mv x26, x10
	and x10, x26, 1
	bltu x0, x10, .LBB0_116
.LBB0_114:                              //  %for.inc344
	add x22, x22, 8
	srl x10, x26, 1&31
	add x18, x18, 1
	bgeu x9, x26, .LBB0_117
.LBB0_115:                              //  %for.body336
	mv x26, x10
	and x10, x26, 1
	beq x0, x10, .LBB0_114
.LBB0_116:                              //  %if.then339
	lw x12, 0 ( x22 )
	lw x13, 4 ( x22 )
	mv x10, x20
	mv x11, x19
	jal __muldf3
	mv x20, x10
	mv x19, x11
	add x22, x22, 8
	srl x10, x26, 1&31
	add x18, x18, 1
	bltu x9, x26, .LBB0_115
.LBB0_117:                              //  %for.end347
	lui x10, %hi( -55574528 )
	add x10, x10, %lo( -55574528 )
	add x13, x10, x19
	sll x10, x18, 3&31
	add x11, fp, %lo( __mprec_bigtens )
	add x11, x10, x11
	lw x10, 0 ( x11 )
	lw x11, 4 ( x11 )
	mv x12, x20
	jal __muldf3
	lw x26, 100 ( sp )              //  4-byte Folded Reload
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	mv x20, x10
	lui x10, (2146435072>>12)&1048575
	and x10, x10, x11
	lui x12, (2090860544>>12)&1048575
	bltu x12, x10, .LBB0_126
.LBB0_118:                              //  %if.end360
	mv x18, x0
	lui x12, (2089811968>>12)&1048575
	bgeu x12, x10, .LBB0_211
.LBB0_119:
	lui x10, %hi( 2146435071 )
	add x19, x10, %lo( 2146435071 )
	add x20, x0, -1
	jal x0, .LBB0_122
.LBB0_120:                              //  %if.else374
	blt x9, x0, .LBB0_127
.LBB0_121:
	lw fp, 104 ( sp )               //  4-byte Folded Reload
.LBB0_122:                              //  %if.end457
	mv x10, fp
	mv x11, x21
	mv x12, x25
	mv x13, x24
	mv x14, x23
	jal __s2b
	mv x25, x10
	beq x0, x25, .LBB0_126
.LBB0_123:                              //  %for.cond463.preheader
	lw x11, 4 ( x25 )
	mv x10, fp
	jal _Balloc
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	mv x23, x0
	mv x21, x10
	mv x22, x23
	mv x24, x23
	sw x23, 96 ( sp )               //  4-byte Folded Spill
	beq x0, x21, .LBB0_241
.LBB0_124:                              //  %if.end468.lr.ph
	lw x12, 16 ( x25 )
	add x11, x25, 12
	add x10, x21, 12
	sw x11, 64 ( sp )               //  4-byte Folded Spill
	sll x12, x12, 2&31
	add x12, x12, 8
	jal memcpy
	add x13, sp, 120
	add x14, sp, 136
	mv x10, fp
	mv x11, x20
	mv x12, x19
	jal __d2b
	mv x24, x0
	add x11, x0, -1
	blt x11, x27, .LBB0_141
.LBB0_125:                              //  %if.end468.lr.ph
	sub x11, x0, x27
	mv x27, x24
	sw x10, 128 ( sp )
	bltu x0, x10, .LBB0_142
.LBB0_209:
	mv x22, x24
	sw x21, 96 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_241
.LBB0_126:                              //  %ovfl.thread1741
	add x10, x0, 34
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( fp )
	lui x27, (2146435072>>12)&1048575
	mv x23, x0
	bltu x0, x9, .LBB0_84
	jal x0, .LBB0_85
.LBB0_127:                              //  %if.then377
	sub fp, x0, x9
	and x10, fp, 15
	beq x0, x10, .LBB0_129
.LBB0_128:                              //  %if.then382
	lui x11, %hi( __mprec_tens )
	sll x10, x10, 3&31
	add x11, x11, %lo( __mprec_tens )
	add x10, x10, x11
	lw x12, 0 ( x10 )
	lw x13, 4 ( x10 )
	mv x10, x20
	mv x11, x19
	jal __divdf3
	mv x20, x10
	mv x19, x11
.LBB0_129:                              //  %if.end386
	sra x22, fp, 4&31
	beq x0, x22, .LBB0_121
.LBB0_130:                              //  %if.then389
	slti x10, x9, -511
	bltu x0, x10, .LBB0_259
.LBB0_131:                              //  %if.end393
	and x18, fp, 256
	add x10, x0, -16
	blt x10, x9, .LBB0_136
.LBB0_132:                              //  %for.body401.preheader
	lui x10, %hi( tinytens )
	add x9, x10, %lo( tinytens )
	and x10, x22, 1
	bltu x0, x10, .LBB0_135
.LBB0_133:                              //  %for.inc409
	add x9, x9, 8
	srl x22, x22, 1&31
	beq x0, x22, .LBB0_136
.LBB0_134:                              //  %for.body401
	and x10, x22, 1
	beq x0, x10, .LBB0_133
.LBB0_135:                              //  %if.then404
	lw x12, 0 ( x9 )
	lw x13, 4 ( x9 )
	mv x10, x20
	mv x11, x19
	jal __muldf3
	mv x20, x10
	mv x19, x11
	add x9, x9, 8
	srl x22, x22, 1&31
	bltu x0, x22, .LBB0_134
.LBB0_136:                              //  %for.end412
	beq x0, x18, .LBB0_257
.LBB0_137:                              //  %land.lhs.true414
	srl x10, x19, 20&31
	and x10, x10, 2047
	add x18, x0, 106
	bltu x18, x10, .LBB0_257
.LBB0_138:                              //  %if.then422
	add x11, x0, 75
	bltu x11, x10, .LBB0_243
.LBB0_139:                              //  %if.then425
	sltiu x12, x10, 55
	beq x0, x12, .LBB0_256
.LBB0_140:
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	lui x19, (57671680>>12)&1048575
	mv x20, x0
	jal x0, .LBB0_122
.LBB0_141:
	mv x11, x24
	sw x10, 128 ( sp )
	beq x0, x10, .LBB0_209
.LBB0_142:                              //  %if.end478.preheader
	add x10, x27, x18
	sw x10, 72 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	sw x10, 48 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( -55574528 )
	add x10, x10, %lo( -55574528 )
	sw x10, 56 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 2146435071 )
	add x10, x10, %lo( 2146435071 )
	sw x10, 32 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 1048575 )
	add x10, x10, %lo( 1048575 )
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( -1801439851 )
	add x10, x10, %lo( -1801439851 )
	sw x10, 52 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 1070596095 )
	add x10, x10, %lo( 1070596095 )
	sw x10, 16 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 1071644671 )
	add x10, x10, %lo( 1071644671 )
	sw x10, 44 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 900719925 )
	add x10, x10, %lo( 900719925 )
	sw x10, 40 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( -4194304 )
	add x10, x10, %lo( -4194304 )
	sw x10, 28 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 1105199103 )
	add x10, x10, %lo( 1105199103 )
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( -1074790400 )
	add x10, x10, %lo( -1074790400 )
	sw x11, 76 ( sp )               //  4-byte Folded Spill
	sw x27, 68 ( sp )               //  4-byte Folded Spill
	mv x22, x0
	lui x27, (2146435072>>12)&1048575
	sw x10, 36 ( sp )               //  4-byte Folded Spill
	sw x21, 96 ( sp )               //  4-byte Folded Spill
	sw x18, 60 ( sp )               //  4-byte Folded Spill
	sw x25, 88 ( sp )               //  4-byte Folded Spill
.LBB0_143:                              //  %if.end478
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, fp
	seqz x11, x0
	jal __i2b
	mv x24, x10
	beq x0, x24, .LBB0_240
.LBB0_144:                              //  %if.end483
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x11, 120 ( sp )
	mv x16, x0
	mv x10, x16
	add x13, x0, -1
	mv x14, x11
	blt x13, x11, .LBB0_146
.LBB0_145:                              //  %if.end483
                                        //    in Loop: Header=BB0_143 Depth=1
	sub x10, x0, x11
	mv x14, x16
.LBB0_146:                              //  %if.end483
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x12, 76 ( sp )               //  4-byte Folded Reload
	lw x13, 136 ( sp )
	add x21, x12, x14
	sub x14, x11, x18
	add x11, x0, 54
	sub x11, x11, x13
	add x15, x13, x14
	add x13, x0, -1022
	blt x13, x15, .LBB0_149
.LBB0_147:                              //  %if.then503
                                        //    in Loop: Header=BB0_143 Depth=1
	add x13, x0, -1021
	sub x13, x13, x15
	sub x11, x11, x13
	mv x18, x22
	slti x14, x15, -1052
	bltu x0, x14, .LBB0_151
.LBB0_148:                              //  %if.then508
                                        //    in Loop: Header=BB0_143 Depth=1
	seqz x14, x0
	sll x13, x14, x13
	jal x0, .LBB0_150
.LBB0_149:                              //    in Loop: Header=BB0_143 Depth=1
	mv x18, x22
	seqz x13, x0
.LBB0_150:                              //  %if.end514
                                        //    in Loop: Header=BB0_143 Depth=1
	sw x13, 80 ( sp )               //  4-byte Folded Spill
	mv x9, x16
	jal x0, .LBB0_152
.LBB0_151:                              //  %if.else510
                                        //    in Loop: Header=BB0_143 Depth=1
	add x13, x0, -1053
	seqz x14, x0
	sub x13, x13, x15
	sll x9, x14, x13
	sw x14, 80 ( sp )               //  4-byte Folded Spill
.LBB0_152:                              //  %if.end514
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x13, 72 ( sp )               //  4-byte Folded Reload
	add x25, x21, x11
	add x10, x10, x13
	add x22, x11, x10
	mv x11, x25
	blt x25, x22, .LBB0_153
.LBB0_167:                              //  %if.end514
                                        //    in Loop: Header=BB0_143 Depth=1
	mv x11, x22
	mv x10, x21
	bge x21, x11, .LBB0_168
.LBB0_154:                              //  %if.end514
                                        //    in Loop: Header=BB0_143 Depth=1
	bge x0, x10, .LBB0_156
.LBB0_155:                              //  %if.then530
                                        //    in Loop: Header=BB0_143 Depth=1
	sub x21, x21, x10
	sub x22, x22, x10
	sub x25, x25, x10
.LBB0_156:                              //  %if.end534
                                        //    in Loop: Header=BB0_143 Depth=1
	bge x0, x12, .LBB0_160
.LBB0_157:                              //  %if.then537
                                        //    in Loop: Header=BB0_143 Depth=1
	mv x10, fp
	mv x11, x24
	jal __pow5mult
	mv x24, x10
	beq x0, x24, .LBB0_232
.LBB0_158:                              //  %if.end542
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x12, 128 ( sp )
	mv x10, fp
	mv x11, x24
	jal __multiply
	mv x26, x10
	beq x0, x26, .LBB0_234
.LBB0_159:                              //  %if.end547
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x11, 128 ( sp )
	mv x10, fp
	jal _Bfree
	sw x26, 128 ( sp )
	lw x26, 100 ( sp )              //  4-byte Folded Reload
.LBB0_160:                              //  %if.end548
                                        //    in Loop: Header=BB0_143 Depth=1
	bge x0, x25, .LBB0_162
.LBB0_161:                              //  %if.then551
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x11, 128 ( sp )
	mv x10, fp
	mv x12, x25
	jal __lshift
	sw x10, 128 ( sp )
	beq x0, x10, .LBB0_233
.LBB0_162:                              //  %if.end557
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x12, 68 ( sp )               //  4-byte Folded Reload
	bge x0, x12, .LBB0_169
.LBB0_163:                              //  %if.then560
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	mv x10, fp
	jal __pow5mult
	lw x25, 88 ( sp )               //  4-byte Folded Reload
	mv x12, x10
	beq x0, x12, .LBB0_236
.LBB0_164:                              //  %if.end566
                                        //    in Loop: Header=BB0_143 Depth=1
	bge x0, x22, .LBB0_170
.LBB0_165:                              //  %if.then569
                                        //    in Loop: Header=BB0_143 Depth=1
	mv x11, x12
	mv x10, fp
	mv x12, x22
	jal __lshift
	mv x12, x10
	mv x22, x18
	beq x0, x12, .LBB0_238
.LBB0_166:                              //  %if.end575
                                        //    in Loop: Header=BB0_143 Depth=1
	sw x12, 96 ( sp )               //  4-byte Folded Spill
	blt x0, x21, .LBB0_171
	jal x0, .LBB0_172
.LBB0_153:                              //  %if.end514
                                        //    in Loop: Header=BB0_143 Depth=1
	mv x10, x21
	blt x21, x11, .LBB0_154
.LBB0_168:                              //  %if.end514
                                        //    in Loop: Header=BB0_143 Depth=1
	mv x10, x11
	blt x0, x10, .LBB0_155
	jal x0, .LBB0_156
.LBB0_169:                              //    in Loop: Header=BB0_143 Depth=1
	lw x25, 88 ( sp )               //  4-byte Folded Reload
	lw x12, 96 ( sp )               //  4-byte Folded Reload
	blt x0, x22, .LBB0_165
.LBB0_170:                              //    in Loop: Header=BB0_143 Depth=1
	mv x22, x18
	sw x12, 96 ( sp )               //  4-byte Folded Spill
	bge x0, x21, .LBB0_172
.LBB0_171:                              //  %if.then578
                                        //    in Loop: Header=BB0_143 Depth=1
	mv x10, fp
	mv x11, x24
	mv x12, x21
	jal __lshift
	lw x12, 96 ( sp )               //  4-byte Folded Reload
	mv x24, x10
	beq x0, x24, .LBB0_239
.LBB0_172:                              //  %if.end584
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x11, 128 ( sp )
	mv x10, fp
	jal __mdiff
	mv x22, x10
	beq x0, x22, .LBB0_219
.LBB0_173:                              //  %if.end589
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x10, 12 ( x22 )
	mv x11, x24
	sw x0, 12 ( x22 )
	sw x10, 92 ( sp )               //  4-byte Folded Spill
	mv x10, x22
	jal __mcmp
	blt x10, x0, .LBB0_220
.LBB0_174:                              //  %if.end628
                                        //    in Loop: Header=BB0_143 Depth=1
	beq x0, x10, .LBB0_222
.LBB0_175:                              //  %if.end746
                                        //    in Loop: Header=BB0_143 Depth=1
	mv x10, x22
	mv x11, x24
	jal __ratio
	mv x9, x0
	mv x12, x9
	lui x13, (1073741824>>12)&1048575
	mv x21, x10
	mv x25, x11
	jal __ledf2
	lw x18, 60 ( sp )               //  4-byte Folded Reload
	sw x22, 84 ( sp )               //  4-byte Folded Spill
	bge x0, x10, .LBB0_178
.LBB0_176:                              //  %if.else786
                                        //    in Loop: Header=BB0_143 Depth=1
	mv x10, x21
	mv x11, x25
	mv x12, x9
	lui x13, (1071644672>>12)&1048575
	jal __muldf3
	mv x22, x11
	lw x11, 92 ( sp )               //  4-byte Folded Reload
	mv fp, x10
	sw x22, 80 ( sp )               //  4-byte Folded Spill
	bne x11, x9, .LBB0_179
.LBB0_177:                              //    in Loop: Header=BB0_143 Depth=1
	lw x10, 48 ( sp )               //  4-byte Folded Reload
	xor x22, x10, x22
	and x9, x27, x19
	lui x25, (2145386496>>12)&1048575
	beq x9, x25, .LBB0_180
.LBB0_189:                              //  %if.else845
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x25, 88 ( sp )               //  4-byte Folded Reload
	beq x0, x18, .LBB0_197
.LBB0_190:                              //  %if.else845
                                        //    in Loop: Header=BB0_143 Depth=1
	lui x10, (111149056>>12)&1048575
	mv x21, fp
	bltu x10, x9, .LBB0_198
.LBB0_191:                              //  %if.then850
                                        //    in Loop: Header=BB0_143 Depth=1
	lw fp, 80 ( sp )                //  4-byte Folded Reload
	lw x12, 28 ( sp )               //  4-byte Folded Reload
	lw x13, 24 ( sp )               //  4-byte Folded Reload
	mv x10, x21
	mv x11, fp
	jal __ledf2
	blt x0, x10, .LBB0_196
.LBB0_192:                              //  %if.then853
                                        //    in Loop: Header=BB0_143 Depth=1
	mv x10, x21
	mv x11, fp
	jal __fixunsdfsi
	mv x11, x10
	seqz x10, x0
	mv x12, x0
	beq x11, x12, .LBB0_194
.LBB0_193:                              //  %if.then853
                                        //    in Loop: Header=BB0_143 Depth=1
	mv x10, x11
.LBB0_194:                              //  %if.then853
                                        //    in Loop: Header=BB0_143 Depth=1
	jal __floatunsidf
	mv x22, x11
	lw x11, 92 ( sp )               //  4-byte Folded Reload
	mv x21, x10
	mv x10, x0
	sw x22, 80 ( sp )               //  4-byte Folded Spill
	bne x11, x10, .LBB0_196
.LBB0_195:                              //    in Loop: Header=BB0_143 Depth=1
	lw x10, 48 ( sp )               //  4-byte Folded Reload
	xor x22, x10, x22
.LBB0_196:                              //  %if.end867
                                        //    in Loop: Header=BB0_143 Depth=1
	sub x10, x22, x9
	lui x11, (112197632>>12)&1048575
	add x22, x11, x10
	jal x0, .LBB0_198
.LBB0_178:                              //  %if.then750
                                        //    in Loop: Header=BB0_143 Depth=1
	lui x10, (1072693248>>12)&1048575
	mv x22, x10
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	mv fp, x9
	beq x0, x10, .LBB0_183
.LBB0_179:                              //  %if.end801
                                        //    in Loop: Header=BB0_143 Depth=1
	and x9, x27, x19
	lui x25, (2145386496>>12)&1048575
	bne x9, x25, .LBB0_189
.LBB0_180:                              //  %if.then807
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	add x21, x10, x19
	mv x10, x20
	mv x11, x21
	jal __ulp
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x22
	jal __muldf3
	mv x12, x20
	mv x13, x21
	jal __adddf3
	and x12, x25, x11
	lw x25, 88 ( sp )               //  4-byte Folded Reload
	srl x12, x12, 21&31
	sltiu x12, x12, 997
	bltu x0, x12, .LBB0_182
.LBB0_181:                              //  %if.then824
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x12, 32 ( sp )               //  4-byte Folded Reload
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	lw x22, 84 ( sp )               //  4-byte Folded Reload
	xor x10, x12, x19
	xor x11, x20, -1
	or x10, x10, x11
	add x20, x0, -1
	mv x19, x12
	bltu x0, x10, .LBB0_205
	jal x0, .LBB0_255
.LBB0_182:                              //  %if.else840
                                        //    in Loop: Header=BB0_143 Depth=1
	lui x12, (55574528>>12)&1048575
	lw x22, 84 ( sp )               //  4-byte Folded Reload
	add x19, x12, x11
	mv x20, x10
	mv x21, fp
	beq x0, x18, .LBB0_199
	jal x0, .LBB0_204
.LBB0_183:                              //  %if.else754
                                        //    in Loop: Header=BB0_143 Depth=1
	xor x10, x20, 1
	beq x0, x10, .LBB0_207
.LBB0_184:                              //  %if.else754
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x22, 36 ( sp )               //  4-byte Folded Reload
	lui x10, (1072693248>>12)&1048575
	mv fp, x9
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	bltu x0, x20, .LBB0_179
.LBB0_185:                              //  %lor.lhs.false758
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	lw x22, 36 ( sp )               //  4-byte Folded Reload
	lui x11, (1072693248>>12)&1048575
	mv fp, x9
	and x10, x10, x19
	sw x11, 80 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB0_179
.LBB0_186:                              //  %if.else775
                                        //    in Loop: Header=BB0_143 Depth=1
	mv x10, x21
	mv x11, x25
	mv x12, x9
	lui x13, (1072693248>>12)&1048575
	jal __ltdf2
	mv x22, x10
	mv x10, x21
	lui x21, (1071644672>>12)&1048575
	mv x11, x25
	mv x12, x9
	mv x13, x21
	jal __muldf3
	mv fp, x9
	blt x22, x9, .LBB0_188
.LBB0_187:                              //  %if.else775
                                        //    in Loop: Header=BB0_143 Depth=1
	mv fp, x10
	mv x21, x11
.LBB0_188:                              //  %if.else775
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x10, 48 ( sp )               //  4-byte Folded Reload
	sw x21, 80 ( sp )               //  4-byte Folded Spill
	xor x22, x10, x21
	and x9, x27, x19
	lui x25, (2145386496>>12)&1048575
	beq x9, x25, .LBB0_180
	jal x0, .LBB0_189
.LBB0_197:                              //    in Loop: Header=BB0_143 Depth=1
	mv x21, fp
.LBB0_198:                              //  %if.end872
                                        //    in Loop: Header=BB0_143 Depth=1
	mv x10, x20
	mv x11, x19
	jal __ulp
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x19
	jal __adddf3
	lw x22, 84 ( sp )               //  4-byte Folded Reload
	mv x20, x10
	mv x19, x11
	bltu x0, x18, .LBB0_204
.LBB0_199:                              //  %if.end879
                                        //    in Loop: Header=BB0_143 Depth=1
	and x10, x27, x19
	bne x9, x10, .LBB0_204
.LBB0_200:                              //  %if.then887
                                        //    in Loop: Header=BB0_143 Depth=1
	lw fp, 80 ( sp )                //  4-byte Folded Reload
	mv x10, x21
	mv x11, fp
	jal __fixdfdi
	jal __floatdidf
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, fp
	jal __subdf3
	mv x22, x10
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	mv x21, x11
	bltu x0, x10, .LBB0_202
.LBB0_201:                              //  %lor.lhs.false893
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	and x10, x10, x19
	or x10, x20, x10
	beq x0, x10, .LBB0_208
.LBB0_202:                              //  %if.then902
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x12, 52 ( sp )               //  4-byte Folded Reload
	lw x13, 44 ( sp )               //  4-byte Folded Reload
	mv x10, x22
	mv x11, x21
	jal __ltdf2
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	blt x10, x0, .LBB0_263
.LBB0_203:                              //  %if.then902
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x12, 40 ( sp )               //  4-byte Folded Reload
	mv x10, x22
	mv x11, x21
	lui x13, (1071644672>>12)&1048575
	jal __gtdf2
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	lw x22, 84 ( sp )               //  4-byte Folded Reload
	bge x0, x10, .LBB0_205
	jal x0, .LBB0_280
.LBB0_204:                              //    in Loop: Header=BB0_143 Depth=1
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	lw fp, 104 ( sp )               //  4-byte Folded Reload
.LBB0_205:                              //  %cont
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x11, 128 ( sp )
	mv x10, fp
	jal _Bfree
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	mv x10, fp
	jal _Bfree
	mv x10, fp
	mv x11, x24
	jal _Bfree
	mv x10, fp
	mv x11, x22
	jal _Bfree
	lw x11, 4 ( x25 )
	mv x10, fp
	jal _Balloc
	beq x0, x10, .LBB0_231
.LBB0_206:                              //  %if.end468
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x11, 16 ( x25 )
	sw x10, 96 ( sp )               //  4-byte Folded Spill
	add x10, x10, 12
	sll x11, x11, 2&31
	add x12, x11, 8
	lw x11, 64 ( sp )               //  4-byte Folded Reload
	jal memcpy
	mv x10, fp
	mv x11, x20
	mv x12, x19
	add x13, sp, 120
	add x14, sp, 136
	jal __d2b
	sw x10, 128 ( sp )
	bltu x0, x10, .LBB0_143
	jal x0, .LBB0_241
.LBB0_207:                              //  %land.lhs.true768
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x22, 36 ( sp )               //  4-byte Folded Reload
	lui x10, (1072693248>>12)&1048575
	mv fp, x9
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	bltu x0, x19, .LBB0_179
	jal x0, .LBB0_282
.LBB0_208:                              //  %if.else910
                                        //    in Loop: Header=BB0_143 Depth=1
	lw x12, 52 ( sp )               //  4-byte Folded Reload
	lw x13, 16 ( sp )               //  4-byte Folded Reload
	mv x10, x22
	mv x11, x21
	jal __ltdf2
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	lw x22, 84 ( sp )               //  4-byte Folded Reload
	bge x10, x0, .LBB0_205
	jal x0, .LBB0_280
.LBB0_211:                              //  %if.else368
	lui x10, (55574528>>12)&1048575
	add x19, x10, x11
	jal x0, .LBB0_122
.LBB0_212:                              //  %sw.bb217
	lui x11, %hi( .str.2 )
	add x10, sp, 132
	add x11, x11, %lo( .str.2 )
	jal __match
	beq x0, x10, .LBB0_82
.LBB0_213:                              //  %if.then220
	lw x10, 132 ( sp )
	lbu x10, 0 ( x10 )
	xor x10, x10, 40
	bltu x0, x10, .LBB0_217
.LBB0_214:                              //  %land.lhs.true224
	lui x11, %hi( _strtod_l.fpinan )
	add x10, sp, 132
	add x11, x11, %lo( _strtod_l.fpinan )
	add x12, sp, 112
	jal __hexnan
	xor x10, x10, 5
	bltu x0, x10, .LBB0_217
.LBB0_215:                              //  %if.then229
	lw x10, 116 ( sp )
	lui x11, (2146435072>>12)&1048575
	lw x23, 112 ( sp )
	lw x26, 100 ( sp )              //  4-byte Folded Reload
	or x27, x11, x10
	bltu x0, x9, .LBB0_84
	jal x0, .LBB0_85
.LBB0_216:                              //  %if.then287
	sub fp, x10, x24
	lui x11, %hi( __mprec_tens )
	add x9, x11, %lo( __mprec_tens )
	sll x10, fp, 3&31
	add x10, x10, x9
	lw x12, 0 ( x10 )
	lw x13, 4 ( x10 )
	mv x10, x20
	mv x11, x19
	jal __muldf3
	sub x12, x27, fp
	sll x12, x12, 3&31
	add x13, x12, x9
	lw x12, 0 ( x13 )
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	lw x13, 4 ( x13 )
	jal __muldf3
	mv x23, x10
	mv x27, x11
	bltu x0, x9, .LBB0_84
	jal x0, .LBB0_85
.LBB0_217:                              //  %if.else236
	lui x10, %hi( .str.3 )
	add x10, x10, %lo( .str.3 )
	jal nan
	lw x26, 100 ( sp )              //  4-byte Folded Reload
	mv x23, x10
	mv x27, x11
	bltu x0, x9, .LBB0_84
	jal x0, .LBB0_85
.LBB0_219:
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	mv x22, x0
	jal x0, .LBB0_241
.LBB0_220:                              //  %if.then595
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_244
.LBB0_221:
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_275
.LBB0_222:                              //  %if.then631
	lw x21, 20 ( sp )               //  4-byte Folded Reload
	lw x11, 92 ( sp )               //  4-byte Folded Reload
	and x10, x21, x19
	beq x0, x11, .LBB0_246
.LBB0_223:                              //  %if.then633
	bne x10, x21, .LBB0_247
.LBB0_224:                              //  %land.lhs.true639
	lw x11, 60 ( sp )               //  4-byte Folded Reload
	add x10, x0, -1
	beq x0, x11, .LBB0_227
.LBB0_225:                              //  %land.lhs.true643
	lui x11, (2146435072>>12)&1048575
	and x11, x11, x19
	lui x12, (111149056>>12)&1048575
	bltu x12, x11, .LBB0_227
.LBB0_226:                              //  %cond.true649
	srl x10, x11, 20&31
	add x11, x0, 107
	sub x10, x11, x10
	add x11, x0, -1
	sll x10, x11, x10
.LBB0_227:                              //  %cond.end655
	bne x10, x20, .LBB0_247
.LBB0_228:                              //  %if.then659
	xor x10, x20, -1
	bltu x0, x10, .LBB0_274
.LBB0_229:                              //  %if.then659
	lui x10, %hi( 2146435071 )
	add x10, x10, %lo( 2146435071 )
	bne x19, x10, .LBB0_274
.LBB0_230:
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_241
.LBB0_231:
	mv x10, x0
	sw x10, 96 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_241
.LBB0_232:
	mv x24, x0
.LBB0_233:
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_235
.LBB0_234:
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	lw x26, 100 ( sp )              //  4-byte Folded Reload
.LBB0_235:                              //  %ovfl.thread
	lw x25, 88 ( sp )               //  4-byte Folded Reload
	mv x22, x18
	jal x0, .LBB0_241
.LBB0_236:
	mv x10, x0
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	sw x10, 96 ( sp )               //  4-byte Folded Spill
	mv x22, x18
	jal x0, .LBB0_241
.LBB0_237:                              //  %if.then209
	lw x10, 132 ( sp )
	lw x26, 100 ( sp )              //  4-byte Folded Reload
	add x10, x10, 1
	sw x10, 132 ( sp )
	bltu x0, x9, .LBB0_84
	jal x0, .LBB0_85
.LBB0_238:
	mv x10, x0
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	sw x10, 96 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_241
.LBB0_239:
	lw x9, 108 ( sp )               //  4-byte Folded Reload
.LBB0_240:                              //  %ovfl.thread
	mv x24, x0
.LBB0_241:                              //  %ovfl.thread
	add x10, x0, 34
	sw x10, 0 ( fp )
	lui x27, (2146435072>>12)&1048575
.LBB0_242:                              //  %retfree
	lw x11, 128 ( sp )
	mv x10, fp
	jal _Bfree
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	mv x10, fp
	jal _Bfree
	mv x10, fp
	mv x11, x24
	jal _Bfree
	mv x10, fp
	mv x11, x25
	jal _Bfree
	mv x10, fp
	mv x11, x22
	jal _Bfree
	bltu x0, x9, .LBB0_84
	jal x0, .LBB0_85
.LBB0_243:                              //  %if.else439
	add x11, x0, 107
	sub x10, x11, x10
	add x11, x0, -1
	sll x10, x11, x10
	and x20, x20, x10
	jal x0, .LBB0_257
.LBB0_244:                              //  %lor.lhs.false597
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	lw x18, 60 ( sp )               //  4-byte Folded Reload
	bltu x0, x20, .LBB0_245
.LBB0_264:                              //  %lor.lhs.false601
	lw x21, 20 ( sp )               //  4-byte Folded Reload
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	and x10, x21, x19
	bltu x0, x10, .LBB0_276
.LBB0_265:                              //  %lor.lhs.false601
	lui x10, (2146435072>>12)&1048575
	lui x11, %hi( 112197633 )
	and x10, x10, x19
	add x11, x11, %lo( 112197633 )
	bltu x10, x11, .LBB0_276
.LBB0_266:                              //  %if.end613
	lw x10, 20 ( x22 )
	bltu x0, x10, .LBB0_268
.LBB0_267:                              //  %land.lhs.true616
	lw x10, 16 ( x22 )
	slti x10, x10, 2
	bltu x0, x10, .LBB0_276
.LBB0_268:                              //  %if.end621
	seqz x12, x0
	mv x10, fp
	mv x11, x22
	jal __lshift
	mv x11, x24
	mv x22, x10
	jal __mcmp
	blt x0, x10, .LBB0_270
	jal x0, .LBB0_276
.LBB0_246:                              //  %if.else680
	or x10, x20, x10
	beq x0, x10, .LBB0_269
.LBB0_247:                              //  %if.end714
	beq x0, x9, .LBB0_249
.LBB0_248:                              //  %if.then716
	and x10, x19, x9
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB0_250
	jal x0, .LBB0_275
.LBB0_249:                              //  %if.else723
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	and x10, x20, x10
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_275
.LBB0_250:                              //  %if.end730
	mv x10, x20
	mv x11, x19
	jal __ulp
	lw x18, 60 ( sp )               //  4-byte Folded Reload
	mv x15, x10
	mv x14, x11
	beq x0, x18, .LBB0_253
.LBB0_251:                              //  %lor.lhs.false.i
	srl x10, x19, 20&31
	and x10, x10, 2047
	add x11, x0, 106
	bltu x11, x10, .LBB0_253
.LBB0_252:                              //  %if.end.i
	sll x10, x10, 20&31
	lui x11, (1184890880>>12)&1048575
	sub x13, x11, x10
	mv x12, x0
	mv x10, x15
	mv x11, x14
	jal __muldf3
	mv x15, x10
	mv x14, x11
.LBB0_253:                              //  %sulp.exit
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_261
.LBB0_254:                              //  %if.then732
	mv x10, x20
	mv x11, x19
	mv x12, x15
	mv x13, x14
	jal __adddf3
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	mv x20, x10
	mv x19, x11
	bltu x0, x18, .LBB0_277
	jal x0, .LBB0_280
.LBB0_255:                              //  %ovfl
	add x10, x0, 34
	sw x10, 0 ( fp )
	mv x23, x0
	jal x0, .LBB0_242
.LBB0_256:                              //  %if.else433
	sub x10, x11, x10
	add x11, x0, -1
	sll x10, x11, x10
	and x19, x19, x10
	mv x20, x0
.LBB0_257:                              //  %if.end445
	mv x12, x0
	mv x10, x20
	mv x11, x19
	mv x13, x12
	jal __nedf2
	beq x0, x10, .LBB0_259
.LBB0_258:
	sll x10, fp, 23&31
	sra x10, x10, 31&31
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	and x18, x10, 106
	jal x0, .LBB0_122
.LBB0_259:                              //  %undfl
	lw x11, 104 ( sp )              //  4-byte Folded Reload
	add x10, x0, 34
	sw x10, 0 ( x11 )
.LBB0_260:
	mv x23, x0
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	mv x27, x23
	bltu x0, x9, .LBB0_84
	jal x0, .LBB0_85
.LBB0_261:                              //  %if.else736
	mv x10, x20
	mv x11, x19
	mv x12, x15
	mv x13, x14
	jal __subdf3
	mv x12, x0
	mv x13, x12
	mv x20, x10
	mv x19, x11
	jal __nedf2
	beq x0, x10, .LBB0_281
.LBB0_245:
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	bltu x0, x18, .LBB0_277
	jal x0, .LBB0_280
.LBB0_263:
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	lw x22, 84 ( sp )               //  4-byte Folded Reload
	mv x23, x20
	mv x27, x19
	jal x0, .LBB0_242
.LBB0_269:
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	lw x18, 60 ( sp )               //  4-byte Folded Reload
.LBB0_270:                              //  %drop_down
	lui x10, (2146435072>>12)&1048575
	and x10, x10, x19
	lui x11, (112197632>>12)&1048575
	bltu x11, x10, .LBB0_273
.LBB0_271:                              //  %drop_down
	beq x0, x18, .LBB0_273
.LBB0_272:                              //  %if.then697
	lui x11, (57671680>>12)&1048575
	bltu x11, x10, .LBB0_277
	jal x0, .LBB0_283
.LBB0_273:                              //  %if.end703
	lui x11, %hi( -1048576 )
	add x11, x11, %lo( -1048576 )
	add x10, x11, x10
	or x19, x21, x10
	add x20, x0, -1
	bltu x0, x18, .LBB0_277
.LBB0_280:
	mv x23, x20
	mv x27, x19
	jal x0, .LBB0_242
.LBB0_274:                              //  %if.end670
	lui x10, (2146435072>>12)&1048575
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	and x10, x10, x19
	lui x11, (1048576>>12)&1048575
	add x19, x11, x10
	mv x20, x0
.LBB0_275:
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	lw x18, 60 ( sp )               //  4-byte Folded Reload
.LBB0_276:                              //  %for.end921
	beq x0, x18, .LBB0_280
.LBB0_277:                              //  %if.then923
	mv x12, x0
	lui x13, (961544192>>12)&1048575
	mv x10, x20
	mv x11, x19
	jal __muldf3
	mv x23, x10
	mv x27, x11
	bltu x0, x27, .LBB0_242
.LBB0_278:                              //  %if.then923
	bltu x0, x23, .LBB0_242
.LBB0_279:                              //  %if.then940
	add x10, x0, 34
	sw x10, 0 ( fp )
	jal x0, .LBB0_242
.LBB0_281:
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_283
.LBB0_282:
	lw x9, 108 ( sp )               //  4-byte Folded Reload
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	lw x25, 88 ( sp )               //  4-byte Folded Reload
	lw x22, 84 ( sp )               //  4-byte Folded Reload
.LBB0_283:                              //  %undfl.thread
	add x10, x0, 34
	mv x23, x0
	sw x10, 0 ( fp )
	mv x27, x23
	jal x0, .LBB0_242
.LBB0_284:
	mv x11, x20
	mv x13, x24
	add x14, x10, 1
	add x12, x9, -48
	beq x0, x12, .LBB0_294
.LBB0_285:                              //  %if.then82
	add x26, x26, x14
	add x24, x13, 1
	bge x0, x10, .LBB0_295
.LBB0_286:                              //  %for.body87.preheader
	slti x16, x13, 9
	add x13, x10, x13
	add x14, x0, 17
	mv x15, x24
	and x16, x16, 1
	beq x0, x16, .LBB0_290
.LBB0_287:                              //  %if.then91
	hackaton_custom_instr_c x23, x18, x23
.LBB0_288:                              //  %for.inc100
	slti x16, x15, 9
	add x24, x15, 1
	add x10, x10, -1
	beq x0, x10, .LBB0_292
.LBB0_289:                              //  %for.body87
	mv x15, x24
	and x16, x16, 1
	bltu x0, x16, .LBB0_287
.LBB0_290:                              //  %if.else93
	bge x15, x14, .LBB0_288
.LBB0_291:
	hackaton_custom_instr_c x22, x18, x22
	slti x16, x15, 9
	add x24, x15, 1
	add x10, x10, -1
	bltu x0, x10, .LBB0_289
.LBB0_292:                              //  %for.end102.loopexit
	add x24, x13, 1
	slti x10, x15, 9
	beq x0, x10, .LBB0_296
.LBB0_293:                              //  %if.then106
	hackaton_custom_instr_c x10, x18, x23
	add x23, x12, x10
	mv x10, x0
	jal x0, .LBB0_298
.LBB0_295:                              //  %for.end102
	bge x5, x13, .LBB0_293
.LBB0_296:                              //  %if.else109
	mv x10, x0
	add x13, x0, 16
	blt x13, x24, .LBB0_298
.LBB0_297:                              //  %if.then112
	hackaton_custom_instr_c x13, x18, x22
	add x22, x12, x13
.LBB0_298:                              //  %for.inc118
	add x20, x11, 1
	lb x9, 1 ( x11 )
	sw x20, 132 ( sp )
	add x11, x9, -48
	bgeu x6, x11, .LBB0_284
	jal x0, .LBB0_45
.Lfunc_end0:
	.size	_strtod_l, .Lfunc_end0-_strtod_l
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_68
	.long	.LBB0_100
	.long	.LBB0_101
	.long	.LBB0_102
	.long	.LBB0_68
JTI0_1:
	.long	.LBB0_93
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_212
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_93
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_82
	.long	.LBB0_212
                                        //  -- End function
	.text
	.globl	_strtod_r               //  -- Begin function _strtod_r
	.type	_strtod_r,@function
_strtod_r:                              //  @_strtod_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x13, %hi( __global_locale )
	add x13, x13, %lo( __global_locale )
	j _strtod_l
.Lfunc_end1:
	.size	_strtod_r, .Lfunc_end1-_strtod_r
	.cfi_endproc
                                        //  -- End function
	.globl	strtod_l                //  -- Begin function strtod_l
	.type	strtod_l,@function
strtod_l:                               //  @strtod_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x12
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _strtod_l
.Lfunc_end2:
	.size	strtod_l, .Lfunc_end2-strtod_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtod                  //  -- Begin function strtod
	.type	strtod,@function
strtod:                                 //  @strtod
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	lui x13, %hi( __global_locale )
	add x13, x13, %lo( __global_locale )
	j _strtod_l
.Lfunc_end3:
	.size	strtod, .Lfunc_end3-strtod
	.cfi_endproc
                                        //  -- End function
	.globl	strtof_l                //  -- Begin function strtof_l
	.type	strtof_l,@function
strtof_l:                               //  @strtof_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	mv x13, x12
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19, x10, %lo( _impure_ptr )
	lw x10, 0 ( x19 )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	jal _strtod_l
	mv x18, x10
	mv x9, x11
	mv x12, x18
	mv x13, x9
	jal __unorddf2
	bltu x0, x10, .LBB4_1
.LBB4_3:                                //  %if.end
	mv x10, x18
	mv x11, x9
	jal __truncdfsf2
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x20, x10, %lo( 2147483647 )
	and x11, x20, x9
	mv x12, x0
	lui x13, (2146435072>>12)&1048575
	mv x10, x18
	jal __eqdf2
	beq x0, x10, .LBB4_6
.LBB4_4:                                //  %if.end
	and x10, x20, fp
	lui x11, (2139095040>>12)&1048575
	jal __nesf2
	bltu x0, x10, .LBB4_6
.LBB4_5:                                //  %if.then12
	lw x10, 0 ( x19 )
	add x11, x0, 34
	sw x11, 0 ( x10 )
	jal x0, .LBB4_6
.LBB4_1:                                //  %cond.true1
	lui x10, %hi( .str.3 )
	add x10, x10, %lo( .str.3 )
	jal nanf
	mv fp, x10
	mv x10, x0
	bge x9, x10, .LBB4_6
.LBB4_2:
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor fp, x10, fp
.LBB4_6:                                //  %cleanup
	mv x10, fp
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end4:
	.size	strtof_l, .Lfunc_end4-strtof_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtof                  //  -- Begin function strtof
	.type	strtof,@function
strtof:                                 //  @strtof
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19, x10, %lo( _impure_ptr )
	lw x10, 0 ( x19 )
	lui x13, %hi( __global_locale )
	add x13, x13, %lo( __global_locale )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	jal _strtod_l
	mv x18, x10
	mv x9, x11
	mv x12, x18
	mv x13, x9
	jal __unorddf2
	bltu x0, x10, .LBB5_1
.LBB5_3:                                //  %if.end
	mv x10, x18
	mv x11, x9
	jal __truncdfsf2
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x20, x10, %lo( 2147483647 )
	and x11, x20, x9
	mv x12, x0
	lui x13, (2146435072>>12)&1048575
	mv x10, x18
	jal __eqdf2
	beq x0, x10, .LBB5_6
.LBB5_4:                                //  %if.end
	and x10, x20, fp
	lui x11, (2139095040>>12)&1048575
	jal __nesf2
	bltu x0, x10, .LBB5_6
.LBB5_5:                                //  %if.then13
	lw x10, 0 ( x19 )
	add x11, x0, 34
	sw x11, 0 ( x10 )
	jal x0, .LBB5_6
.LBB5_1:                                //  %cond.true2
	lui x10, %hi( .str.3 )
	add x10, x10, %lo( .str.3 )
	jal nanf
	mv fp, x10
	mv x10, x0
	bge x9, x10, .LBB5_6
.LBB5_2:
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor fp, x10, fp
.LBB5_6:                                //  %cleanup
	mv x10, fp
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end5:
	.size	strtof, .Lfunc_end5-strtof
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	_strtod_l.fpi,@object   //  @_strtod_l.fpi
	.section	.rodata,"a",@progbits
	.p2align	2
_strtod_l.fpi:
	.long	53                      //  0x35
	.long	4294966222              //  0xfffffbce
	.long	971                     //  0x3cb
	.long	1                       //  0x1
	.long	0                       //  0x0
	.size	_strtod_l.fpi, 20

	.address_space	0
	.type	_strtod_l.fpinan,@object //  @_strtod_l.fpinan
	.p2align	2
_strtod_l.fpinan:
	.long	52                      //  0x34
	.long	4294966222              //  0xfffffbce
	.long	971                     //  0x3cb
	.long	1                       //  0x1
	.long	0                       //  0x0
	.size	_strtod_l.fpinan, 20

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"nf"
	.size	.str, 3

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"inity"
	.size	.str.1, 6

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"an"
	.size	.str.2, 3

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.zero	1
	.size	.str.3, 1

	.address_space	0
	.address_space	0
	.address_space	0
	.type	tinytens,@object        //  @tinytens
	.section	.rodata,"a",@progbits
	.p2align	3
tinytens:
	.quad	4367597403136100796     //  double 9.9999999999999997E-17
	.quad	4128101167230658355     //  double 1.0000000000000001E-32
	.quad	3649340653511681853     //  double 9.9999999999999997E-65
	.quad	2691949749288605597     //  double 1.0000000000000001E-128
	.quad	1254259266780163907     //  double 8.112963841460668E-225
	.size	tinytens, 40

	.address_space	0
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
