	.text
	.file	"strptime.c"
	.globl	strptime_l              //  -- Begin function strptime_l
	.type	strptime_l,@function
strptime_l:                             //  @strptime_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -112
	.cfi_adjust_cfa_offset 112
	sw x22, 84 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	mv x22, x10
	lbu x10, 0 ( x11 )
	sw x9, 104 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv x9, x13
	mv fp, x12
	sw ra, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 96 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 92 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 88 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23, 80 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 76 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 72 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	beq x0, x10, .LBB0_192
.LBB0_1:                                //  %for.body.lr.ph
	lui x12, %hi( _C_time_locale )
	add x19, x12, %lo( _C_time_locale )
	lui x12, %hi( _ctype_ )
	add x20, x12, %lo( _ctype_ )
	lui x12, %hi( JTI0_0 )
	add x12, x12, %lo( JTI0_0 )
	sw x12, 44 ( sp )               //  4-byte Folded Spill
	lw x12, 48 ( x19 )
	lw x26, 124 ( x19 )
	lw x27, 96 ( x19 )
	mv x18, x0
	sw x12, 36 ( sp )               //  4-byte Folded Spill
	lw x12, 0 ( x19 )
	sw x12, 40 ( sp )               //  4-byte Folded Spill
	lw x12, 160 ( x19 )
	sw x12, 28 ( sp )               //  4-byte Folded Spill
	lw x12, 164 ( x19 )
	sw x12, 32 ( sp )               //  4-byte Folded Spill
	lw x12, 228 ( x19 )
	sw x12, 24 ( sp )               //  4-byte Folded Spill
	lw x12, 156 ( x19 )
	sw x12, 20 ( sp )               //  4-byte Folded Spill
	lw x12, 152 ( x19 )
	sw x12, 16 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_4
.LBB0_2:                                //  %while.cond.for.inc.loopexit_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x21, x11
.LBB0_3:                                //  %for.inc
                                        //    in Loop: Header=BB0_4 Depth=1
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	beq x0, x10, .LBB0_141
.LBB0_4:                                //  %for.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_11 Depth 2
                                        //      Child Loop BB0_99 Depth 2
                                        //      Child Loop BB0_23 Depth 2
                                        //      Child Loop BB0_87 Depth 2
                                        //      Child Loop BB0_78 Depth 2
                                        //      Child Loop BB0_69 Depth 2
                                        //      Child Loop BB0_60 Depth 2
                                        //      Child Loop BB0_40 Depth 2
                                        //      Child Loop BB0_36 Depth 2
	and x12, x10, 255
	add x10, x12, x20
	lbu x10, 1 ( x10 )
	and x10, x10, 8
	bltu x0, x10, .LBB0_10
.LBB0_5:                                //  %if.else
                                        //    in Loop: Header=BB0_4 Depth=1
	xor x10, x12, 37
	bltu x0, x10, .LBB0_12
.LBB0_6:                                //  %land.lhs.true
                                        //    in Loop: Header=BB0_4 Depth=1
	lbu x10, 1 ( x11 )
	beq x0, x10, .LBB0_12
.LBB0_7:                                //  %land.lhs.true
                                        //    in Loop: Header=BB0_4 Depth=1
	xor x12, x10, 79
	beq x0, x12, .LBB0_9
.LBB0_8:                                //  %land.lhs.true
                                        //    in Loop: Header=BB0_4 Depth=1
	xor x12, x10, 69
	bltu x0, x12, .LBB0_14
.LBB0_9:                                //  %if.then27
                                        //    in Loop: Header=BB0_4 Depth=1
	lbu x10, 2 ( x11 )
	add x21, x11, 2
	sll x11, x10, 24&31
	sra x11, x11, 24&31
	add x12, x0, 121
	bgeu x12, x11, .LBB0_15
	jal x0, .LBB0_30
.LBB0_10:                               //  %while.cond.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lbu x10, 0 ( x22 )
	add x10, x10, x20
	lbu x10, 1 ( x10 )
	and x10, x10, 8
	beq x0, x10, .LBB0_2
.LBB0_11:                               //  %while.body
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x10, 1 ( x22 )
	add x22, x22, 1
	add x10, x10, x20
	lbu x10, 1 ( x10 )
	and x10, x10, 8
	bltu x0, x10, .LBB0_11
	jal x0, .LBB0_2
.LBB0_12:                               //  %if.else321
                                        //    in Loop: Header=BB0_4 Depth=1
	lbu x10, 0 ( x22 )
	bne x10, x12, .LBB0_146
.LBB0_13:                               //  %if.then326
                                        //    in Loop: Header=BB0_4 Depth=1
	add x22, x22, 1
	jal x0, .LBB0_2
.LBB0_14:                               //    in Loop: Header=BB0_4 Depth=1
	add x21, x11, 1
	sll x11, x10, 24&31
	sra x11, x11, 24&31
	add x12, x0, 121
	bltu x12, x11, .LBB0_30
.LBB0_15:                               //  %if.end
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x12, 44 ( sp )               //  4-byte Folded Reload
	sll x11, x11, 2&31
	add x11, x12, x11
	lw x11, 0 ( x11 )
	jr x11
.LBB0_16:                               //  %sw.bb99
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, sp, 56
	add x12, x0, 10
	mv x10, x22
	mv x13, x9
	jal strtol_l
	lw x11, 56 ( sp )
	bne x11, x22, .LBB0_20
	jal x0, .LBB0_146
.LBB0_17:                               //  %sw.bb105
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, sp, 56
	add x12, x0, 10
	mv x10, x22
	mv x13, x9
	jal strtol_l
	lw x11, 56 ( sp )
	beq x11, x22, .LBB0_146
.LBB0_18:                               //  %if.end110
                                        //    in Loop: Header=BB0_4 Depth=1
	add x12, x0, 12
	bne x10, x12, .LBB0_20
.LBB0_19:                               //    in Loop: Header=BB0_4 Depth=1
	mv x10, x0
.LBB0_20:                               //  %if.end104
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 8 ( fp )
	mv x22, x11
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_21:                               //  %sw.bb52
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_146
.LBB0_22:                               //  %for.body.i639.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	mv x24, x0
	add x25, x19, 4
.LBB0_23:                               //  %for.body.i639
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	jal strlen
	lw x11, -4 ( x25 )
	mv x23, x10
	mv x10, x22
	mv x12, x23
	mv x13, x9
	jal strncasecmp_l
	beq x0, x10, .LBB0_42
.LBB0_24:                               //  %for.inc.i645
                                        //    in Loop: Header=BB0_23 Depth=2
	lw x10, 0 ( x25 )
	add x11, x25, 4
	add x24, x24, 1
	mv x25, x11
	bltu x0, x10, .LBB0_23
	jal x0, .LBB0_146
.LBB0_25:                               //  %sw.bb82
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, sp, 56
	add x12, x0, 10
	mv x10, x22
	mv x13, x9
	jal strtol_l
	lw x11, 56 ( sp )
	beq x11, x22, .LBB0_146
.LBB0_26:                               //  %if.end87
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 12 ( fp )
	or x18, x18, 1
	mv x22, x11
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_27:                               //  %sw.bb298
                                        //    in Loop: Header=BB0_4 Depth=1
	add x21, x21, -1
.LBB0_28:                               //  %sw.bb300
                                        //    in Loop: Header=BB0_4 Depth=1
	lbu x10, 0 ( x22 )
	xor x10, x10, 37
	bltu x0, x10, .LBB0_146
.LBB0_29:                               //  %if.then304
                                        //    in Loop: Header=BB0_4 Depth=1
	add x22, x22, 1
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_30:                               //  %sw.default
                                        //    in Loop: Header=BB0_4 Depth=1
	lbu x11, 0 ( x22 )
	xor x11, x11, 37
	beq x0, x11, .LBB0_33
.LBB0_31:                               //  %lor.lhs.false311
                                        //    in Loop: Header=BB0_4 Depth=1
	lbu x11, 1 ( x22 )
	bne x11, x10, .LBB0_146
.LBB0_32:                               //    in Loop: Header=BB0_4 Depth=1
	add x22, x22, 1
.LBB0_33:                               //  %if.then317
                                        //    in Loop: Header=BB0_4 Depth=1
	add x22, x22, 1
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_34:                               //  %sw.bb
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x26, .LBB0_146
.LBB0_35:                               //  %for.body.i.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x24, x0
	add x25, x19, 128
	mv x10, x26
.LBB0_36:                               //  %for.body.i
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	jal strlen
	lw x11, -4 ( x25 )
	mv x23, x10
	mv x10, x22
	mv x12, x23
	mv x13, x9
	jal strncasecmp_l
	beq x0, x10, .LBB0_121
.LBB0_37:                               //  %for.inc.i
                                        //    in Loop: Header=BB0_36 Depth=2
	lw x10, 0 ( x25 )
	add x11, x25, 4
	add x24, x24, 1
	mv x25, x11
	bltu x0, x10, .LBB0_36
	jal x0, .LBB0_146
.LBB0_38:                               //  %sw.bb44
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_146
.LBB0_39:                               //  %for.body.i624.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	mv x24, x0
	add x25, x19, 52
.LBB0_40:                               //  %for.body.i624
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	jal strlen
	lw x11, -4 ( x25 )
	mv x23, x10
	mv x10, x22
	mv x12, x23
	mv x13, x9
	jal strncasecmp_l
	beq x0, x10, .LBB0_42
.LBB0_41:                               //  %for.inc.i630
                                        //    in Loop: Header=BB0_40 Depth=2
	lw x10, 0 ( x25 )
	add x11, x25, 4
	add x24, x24, 1
	mv x25, x11
	bltu x0, x10, .LBB0_40
	jal x0, .LBB0_146
.LBB0_42:                               //  %if.end50
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x24, 16 ( fp )
	add x22, x23, x22
	or x18, x18, 2
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_43:                               //  %sw.bb61
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, sp, 56
	add x12, x0, 10
	mv x10, x22
	mv x13, x9
	jal strtol_l
	lw x11, 56 ( sp )
	beq x11, x22, .LBB0_146
.LBB0_44:                               //  %if.end66
                                        //    in Loop: Header=BB0_4 Depth=1
	add x12, x0, 100
	hackaton_custom_instr_c x10, x12, x10
	add x10, x10, -1900
	jal x0, .LBB0_120
.LBB0_45:                               //  %sw.bb75
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x10, %hi( .str )
	add x11, x10, %lo( .str )
	mv x10, x22
	mv x12, fp
	mv x13, x9
	jal strptime_l
	mv x22, x10
	sw x22, 56 ( sp )
	beq x0, x22, .LBB0_146
.LBB0_46:                               //  %if.end80
                                        //    in Loop: Header=BB0_4 Depth=1
	or x18, x18, 7
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_47:                               //  %sw.bb89
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x10, %hi( .str.1 )
	add x11, x10, %lo( .str.1 )
	mv x10, x22
	mv x12, fp
	mv x13, x9
	jal strptime_l
	sw x10, 56 ( sp )
	beq x0, x10, .LBB0_146
.LBB0_48:                               //  %sw.bb89
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x10, x22, .LBB0_146
.LBB0_49:                               //  %if.end97
                                        //    in Loop: Header=BB0_4 Depth=1
	or x18, x18, 7
	mv x22, x10
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_50:                               //  %sw.bb135
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, sp, 56
	add x12, x0, 10
	mv x10, x22
	mv x13, x9
	jal strtol_l
	lw x11, 56 ( sp )
	beq x11, x22, .LBB0_146
.LBB0_51:                               //  %if.end140
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 4 ( fp )
	mv x22, x11
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_52:                               //  %sw.bb174
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x10, %hi( .str.2 )
	add x11, x10, %lo( .str.2 )
	jal x0, .LBB0_102
.LBB0_53:                               //  %sw.bb203
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, sp, 56
	add x12, x0, 10
	mv x10, x22
	mv x13, x9
	jal strtol_l
	lw x11, 56 ( sp )
	beq x11, x22, .LBB0_146
.LBB0_54:                               //  %if.end208
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 0 ( fp )
	mv x22, x11
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_55:                               //  %sw.bb217
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x10, %hi( .str.3 )
	add x11, x10, %lo( .str.3 )
	jal x0, .LBB0_102
.LBB0_56:                               //  %sw.bb240
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, sp, 56
	add x12, x0, 10
	mv x10, x22
	mv x13, x9
	jal strtol_l
	lw x23, 56 ( sp )
	beq x23, x22, .LBB0_146
.LBB0_57:                               //  %if.end245
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 4 ( sp )                //  4-byte Folded Spill
	lw x10, 20 ( fp )
	add x24, x0, 4
	sw x27, 8 ( sp )                //  4-byte Folded Spill
	sw x26, 12 ( sp )               //  4-byte Folded Spill
	add x22, x10, 1899
	slti x10, x22, 1970
	beq x0, x10, .LBB0_60
	jal x0, .LBB0_122
.LBB0_58:                               //    in Loop: Header=BB0_60 Depth=2
	mv x10, x0
.LBB0_59:                               //  %is_leap_year.exit.i.i740
                                        //    in Loop: Header=BB0_60 Depth=2
	add x10, x10, x11
	add x11, x0, 7
	jal __modsi3
	mv x24, x10
	add x22, x22, -1
	add x10, x0, 1969
	bge x10, x22, .LBB0_122
.LBB0_60:                               //  %while.body.i.i728
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x25, x0, 400
	mv x10, x22
	mv x11, x25
	jal __udivsi3
	add x27, x0, 100
	mv x26, x10
	mv x10, x22
	mv x11, x27
	jal __udivsi3
	add x11, x24, 365
	and x12, x22, 3
	bltu x0, x12, .LBB0_58
.LBB0_61:                               //  %land.rhs.i.i.i731
                                        //    in Loop: Header=BB0_60 Depth=2
	hackaton_custom_instr_c x10, x27, x10
	sub x10, x22, x10
	beq x0, x10, .LBB0_63
.LBB0_62:                               //    in Loop: Header=BB0_60 Depth=2
	seqz x10, x0
	jal x0, .LBB0_59
.LBB0_63:                               //  %lor.rhs.i.i.i735
                                        //    in Loop: Header=BB0_60 Depth=2
	hackaton_custom_instr_c x10, x25, x26
	sub x10, x22, x10
	seqz x10, x10
	jal x0, .LBB0_59
.LBB0_64:                               //  %sw.bb247
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, sp, 56
	add x12, x0, 10
	mv x10, x22
	mv x13, x9
	jal strtol_l
	lw x23, 56 ( sp )
	mv x13, x10
	beq x23, x22, .LBB0_146
.LBB0_65:                               //  %if.end252
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 20 ( fp )
	add x22, x10, 1899
	slti x10, x22, 1970
	bltu x0, x10, .LBB0_127
.LBB0_66:                               //  %while.body.i.i699.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24, x0, 4
	sw x13, 4 ( sp )                //  4-byte Folded Spill
	sw x27, 8 ( sp )                //  4-byte Folded Spill
	sw x26, 12 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_69
.LBB0_67:                               //    in Loop: Header=BB0_69 Depth=2
	mv x10, x0
.LBB0_68:                               //  %is_leap_year.exit.i.i711
                                        //    in Loop: Header=BB0_69 Depth=2
	add x10, x10, x11
	add x11, x0, 7
	jal __modsi3
	mv x24, x10
	add x22, x22, -1
	add x10, x0, 1969
	bge x10, x22, .LBB0_128
.LBB0_69:                               //  %while.body.i.i699
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x25, x0, 400
	mv x10, x22
	mv x11, x25
	jal __udivsi3
	add x27, x0, 100
	mv x26, x10
	mv x10, x22
	mv x11, x27
	jal __udivsi3
	add x11, x24, 365
	and x12, x22, 3
	bltu x0, x12, .LBB0_67
.LBB0_70:                               //  %land.rhs.i.i.i702
                                        //    in Loop: Header=BB0_69 Depth=2
	hackaton_custom_instr_c x10, x27, x10
	sub x10, x22, x10
	beq x0, x10, .LBB0_72
.LBB0_71:                               //    in Loop: Header=BB0_69 Depth=2
	seqz x10, x0
	jal x0, .LBB0_68
.LBB0_72:                               //  %lor.rhs.i.i.i706
                                        //    in Loop: Header=BB0_69 Depth=2
	hackaton_custom_instr_c x10, x25, x26
	sub x10, x22, x10
	seqz x10, x10
	jal x0, .LBB0_68
.LBB0_73:                               //  %sw.bb254
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, sp, 56
	add x12, x0, 10
	mv x10, x22
	mv x13, x9
	jal strtol_l
	lw x23, 56 ( sp )
	beq x23, x22, .LBB0_146
.LBB0_74:                               //  %if.end259
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 20 ( fp )
	add x22, x11, 1899
	slti x11, x22, 1970
	bltu x0, x11, .LBB0_131
.LBB0_75:                               //  %while.body.i.i.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24, x0, 4
	sw x10, 4 ( sp )                //  4-byte Folded Spill
	sw x27, 8 ( sp )                //  4-byte Folded Spill
	sw x26, 12 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_78
.LBB0_76:                               //    in Loop: Header=BB0_78 Depth=2
	mv x10, x0
.LBB0_77:                               //  %is_leap_year.exit.i.i
                                        //    in Loop: Header=BB0_78 Depth=2
	add x10, x10, x11
	add x11, x0, 7
	jal __modsi3
	mv x24, x10
	add x22, x22, -1
	add x10, x0, 1969
	bge x10, x22, .LBB0_132
.LBB0_78:                               //  %while.body.i.i
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x25, x0, 400
	mv x10, x22
	mv x11, x25
	jal __udivsi3
	add x27, x0, 100
	mv x26, x10
	mv x10, x22
	mv x11, x27
	jal __udivsi3
	add x11, x24, 365
	and x12, x22, 3
	bltu x0, x12, .LBB0_76
.LBB0_79:                               //  %land.rhs.i.i.i
                                        //    in Loop: Header=BB0_78 Depth=2
	hackaton_custom_instr_c x10, x27, x10
	sub x10, x22, x10
	beq x0, x10, .LBB0_81
.LBB0_80:                               //    in Loop: Header=BB0_78 Depth=2
	seqz x10, x0
	jal x0, .LBB0_77
.LBB0_81:                               //  %lor.rhs.i.i.i
                                        //    in Loop: Header=BB0_78 Depth=2
	hackaton_custom_instr_c x10, x25, x26
	sub x10, x22, x10
	seqz x10, x10
	jal x0, .LBB0_77
.LBB0_82:                               //  %sw.bb268
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_102
.LBB0_83:                               //  %sw.bb289
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, sp, 56
	add x12, x0, 10
	mv x10, x22
	mv x13, x9
	jal strtol_l
	lw x11, 56 ( sp )
	beq x11, x22, .LBB0_146
.LBB0_84:                               //  %if.end294
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -1900
	jal x0, .LBB0_120
.LBB0_85:                               //  %sw.bb35
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x27, .LBB0_146
.LBB0_86:                               //  %for.body.i609.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x24, x0
	add x25, x19, 100
	mv x10, x27
.LBB0_87:                               //  %for.body.i609
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	jal strlen
	lw x11, -4 ( x25 )
	mv x23, x10
	mv x10, x22
	mv x12, x23
	mv x13, x9
	jal strncasecmp_l
	beq x0, x10, .LBB0_121
.LBB0_88:                               //  %for.inc.i615
                                        //    in Loop: Header=BB0_87 Depth=2
	lw x10, 0 ( x25 )
	add x11, x25, 4
	add x24, x24, 1
	mv x25, x11
	bltu x0, x10, .LBB0_87
	jal x0, .LBB0_146
.LBB0_89:                               //  %sw.bb68
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 28 ( sp )               //  4-byte Folded Reload
	mv x10, x22
	mv x12, fp
	mv x13, x9
	jal strptime_l
	mv x22, x10
	sw x22, 56 ( sp )
	beq x0, x22, .LBB0_146
.LBB0_90:                               //  %if.end73
                                        //    in Loop: Header=BB0_4 Depth=1
	or x18, x18, 15
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_91:                               //  %sw.bb118
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, sp, 56
	add x12, x0, 10
	mv x10, x22
	mv x13, x9
	jal strtol_l
	lw x11, 56 ( sp )
	beq x11, x22, .LBB0_146
.LBB0_92:                               //  %if.end123
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -1
	sw x10, 28 ( fp )
	or x18, x18, 16
	mv x22, x11
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_93:                               //  %sw.bb126
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, sp, 56
	add x12, x0, 10
	mv x10, x22
	mv x13, x9
	jal strtol_l
	lw x11, 56 ( sp )
	beq x11, x22, .LBB0_146
.LBB0_94:                               //  %if.end131
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -1
	sw x10, 16 ( fp )
	or x18, x18, 2
	mv x22, x11
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_95:                               //  %sw.bb141
                                        //    in Loop: Header=BB0_4 Depth=1
	lbu x10, 0 ( x22 )
	xor x10, x10, 10
	bltu x0, x10, .LBB0_146
.LBB0_96:                               //  %if.then145
                                        //    in Loop: Header=BB0_4 Depth=1
	add x22, x22, 1
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_97:                               //  %sw.bb149
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_146
.LBB0_98:                               //  %for.body.i667.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	add x25, x19, 168
	seqz x24, x0
.LBB0_99:                               //  %for.body.i667
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	jal strlen
	lw x11, -4 ( x25 )
	mv x23, x10
	mv x10, x22
	mv x12, x23
	mv x13, x9
	jal strncasecmp_l
	beq x0, x10, .LBB0_125
.LBB0_100:                              //  %for.inc.i673
                                        //    in Loop: Header=BB0_99 Depth=2
	lw x10, 0 ( x25 )
	add x11, x25, 4
	add x24, x24, -1
	mv x25, x11
	bltu x0, x10, .LBB0_99
	jal x0, .LBB0_146
.LBB0_101:                              //  %sw.bb168
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 24 ( sp )               //  4-byte Folded Reload
.LBB0_102:                              //  %sw.bb268
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x22
	mv x12, fp
	mv x13, x9
	jal strptime_l
	mv x22, x10
	sw x22, 56 ( sp )
	bltu x0, x22, .LBB0_3
	jal x0, .LBB0_146
.LBB0_104:                              //  %sw.bb180
                                        //    in Loop: Header=BB0_4 Depth=1
	jal __errno
	lw x18, 0 ( x10 )
	jal __errno
	sw x0, 0 ( x10 )
	add x11, sp, 56
	add x12, x0, 10
	mv x10, x22
	mv x13, x9
	jal strtoll_l
	mv x23, x10
	add x10, sp, 48
	or x25, x10, 4
	lw x10, 56 ( sp )
	mv x24, x11
	sw x24, 0 ( x25 )
	sw x23, 48 ( sp )
	beq x10, x22, .LBB0_146
.LBB0_105:                              //  %lor.lhs.false186
                                        //    in Loop: Header=BB0_4 Depth=1
	jal __errno
	lw x10, 0 ( x10 )
	bltu x0, x10, .LBB0_146
.LBB0_106:                              //  %lor.lhs.false186
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x25 )
	lw x11, 48 ( sp )
	xor x10, x24, x10
	xor x11, x23, x11
	or x10, x10, x11
	bltu x0, x10, .LBB0_146
.LBB0_107:                              //  %lor.lhs.false193
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, sp, 48
	mv x11, fp
	jal localtime_r
	bne x10, fp, .LBB0_146
.LBB0_108:                              //  %cleanup
                                        //    in Loop: Header=BB0_4 Depth=1
	jal __errno
	lw x22, 56 ( sp )
	sw x18, 0 ( x10 )
	add x18, x0, 31
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_109:                              //  %sw.bb209
                                        //    in Loop: Header=BB0_4 Depth=1
	lbu x10, 0 ( x22 )
	xor x10, x10, 9
	bltu x0, x10, .LBB0_146
.LBB0_110:                              //  %if.then213
                                        //    in Loop: Header=BB0_4 Depth=1
	add x22, x22, 1
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_111:                              //  %sw.bb223
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, sp, 56
	add x12, x0, 10
	mv x10, x22
	mv x13, x9
	jal strtol_l
	lw x11, 56 ( sp )
	beq x11, x22, .LBB0_146
.LBB0_112:                              //  %if.end228
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -1
	jal x0, .LBB0_114
.LBB0_113:                              //  %sw.bb232
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, sp, 56
	add x12, x0, 10
	mv x10, x22
	mv x13, x9
	jal strtol_l
	lw x11, 56 ( sp )
	beq x11, x22, .LBB0_146
.LBB0_114:                              //  %if.end237
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 24 ( fp )
	or x18, x18, 8
	mv x22, x11
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_115:                              //  %sw.bb261
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 20 ( sp )               //  4-byte Folded Reload
	mv x10, x22
	mv x12, fp
	mv x13, x9
	jal strptime_l
	mv x22, x10
	sw x22, 56 ( sp )
	beq x0, x22, .LBB0_146
.LBB0_116:                              //  %if.end266
                                        //    in Loop: Header=BB0_4 Depth=1
	or x18, x18, 7
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_117:                              //  %sw.bb274
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, sp, 56
	add x12, x0, 10
	mv x10, x22
	mv x13, x9
	jal strtol_l
	lw x11, 56 ( sp )
	beq x11, x22, .LBB0_146
.LBB0_118:                              //  %if.end279
                                        //    in Loop: Header=BB0_4 Depth=1
	add x12, x0, 70
	bge x10, x12, .LBB0_120
.LBB0_119:                              //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, 100
.LBB0_120:                              //  %if.end279
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 20 ( fp )
	or x18, x18, 4
	mv x22, x11
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_121:                              //  %if.end34
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x24, 24 ( fp )
	add x22, x23, x22
	or x18, x18, 8
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_122:                              //  %first_day.exit.i748
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 4 ( sp )                //  4-byte Folded Reload
	add x10, x0, 7
	hackaton_custom_instr_c x10, x10, x11
	lw x11, 24 ( fp )
	sub x10, x10, x24
	add x10, x11, x10
	sw x10, 28 ( fp )
	bge x10, x0, .LBB0_124
.LBB0_123:                              //  %if.then.i749
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x24, 24 ( fp )
	sw x0, 28 ( fp )
.LBB0_124:                              //  %set_week_number_sun.exit
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x26, 12 ( sp )               //  4-byte Folded Reload
	lw x27, 8 ( sp )                //  4-byte Folded Reload
	or x18, x18, 16
	mv x22, x23
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_125:                              //  %match_string.exit675
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 8 ( fp )
	add x22, x23, x22
	beq x0, x10, .LBB0_139
.LBB0_126:                              //  %if.else165
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, 12
	sw x10, 8 ( fp )
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_127:                              //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 3
	jal x0, .LBB0_130
.LBB0_128:                              //  %first_day.exit.i714
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x24, 6
	add x11, x0, 7
	jal __modsi3
	add x11, x0, 3
	blt x11, x10, .LBB0_135
.LBB0_129:                              //    in Loop: Header=BB0_4 Depth=1
	lw x26, 12 ( sp )               //  4-byte Folded Reload
	lw x27, 8 ( sp )                //  4-byte Folded Reload
	lw x13, 4 ( sp )                //  4-byte Folded Reload
.LBB0_130:                              //  %first_day.exit.thread.i
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x0, 7
	jal x0, .LBB0_136
.LBB0_131:                              //    in Loop: Header=BB0_4 Depth=1
	add x22, x0, 3
	jal x0, .LBB0_133
.LBB0_132:                              //  %first_day.exit.loopexit.i
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x24, 6
	add x11, x0, 7
	jal __modsi3
	mv x22, x10
	lw x26, 12 ( sp )               //  4-byte Folded Reload
	lw x27, 8 ( sp )                //  4-byte Folded Reload
	lw x10, 4 ( sp )                //  4-byte Folded Reload
.LBB0_133:                              //  %first_day.exit.i
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x0, 7
	hackaton_custom_instr_c x24, x11, x10
	lw x10, 24 ( fp )
	add x10, x10, 6
	jal __modsi3
	sub x11, x24, x22
	add x10, x11, x10
	sw x10, 28 ( fp )
	bge x10, x0, .LBB0_138
.LBB0_134:                              //  %if.then.i
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x22, 1
	add x11, x0, 7
	jal __modsi3
	jal x0, .LBB0_137
.LBB0_135:                              //    in Loop: Header=BB0_4 Depth=1
	lw x26, 12 ( sp )               //  4-byte Folded Reload
	lw x27, 8 ( sp )                //  4-byte Folded Reload
	lw x13, 4 ( sp )                //  4-byte Folded Reload
	mv x11, x0
.LBB0_136:                              //    in Loop: Header=BB0_4 Depth=1
	add x12, x0, 7
	hackaton_custom_instr_c x12, x12, x13
	sub x12, x12, x10
	add x11, x11, x12
	lw x12, 24 ( fp )
	add x11, x12, x11
	add x11, x11, -7
	sw x11, 28 ( fp )
	bge x11, x0, .LBB0_138
.LBB0_137:                              //  %if.then8.i
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 24 ( fp )
	sw x0, 28 ( fp )
.LBB0_138:                              //  %set_week_number_mon4.exit
                                        //    in Loop: Header=BB0_4 Depth=1
	or x18, x18, 16
	mv x22, x23
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_141
.LBB0_139:                              //  %if.then159
                                        //    in Loop: Header=BB0_4 Depth=1
	bltu x0, x24, .LBB0_3
.LBB0_140:                              //  %if.then162
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 12
	sw x10, 8 ( fp )
	lbu x10, 1 ( x21 )
	add x11, x21, 1
	bltu x0, x10, .LBB0_4
.LBB0_141:                              //  %for.end
	and x10, x18, 7
	xor x10, x10, 7
	bltu x0, x10, .LBB0_147
.LBB0_142:                              //  %if.then339
	and x10, x18, 16
	bltu x0, x10, .LBB0_184
.LBB0_143:                              //  %if.then342
	lw x20, 16 ( fp )
	lui x11, %hi( _DAYS_BEFORE_MONTH )
	add x11, x11, %lo( _DAYS_BEFORE_MONTH )
	sll x10, x20, 2&31
	add x10, x10, x11
	lw x10, 0 ( x10 )
	lw x11, 12 ( fp )
	add x19, x10, x11
	lw x10, 20 ( fp )
	sw x19, 28 ( fp )
	add x9, x10, 1900
	and x10, x9, 3
	beq x0, x10, .LBB0_151
.LBB0_144:                              //  %if.then356
	add x10, x19, -1
	sw x10, 28 ( fp )
.LBB0_145:                              //  %if.end358
	or x18, x18, 16
	and x10, x18, 28
	xor x10, x10, 20
	beq x0, x10, .LBB0_185
	jal x0, .LBB0_192
.LBB0_146:                              //  %cleanup332.thread
	mv x22, x0
	jal x0, .LBB0_192
.LBB0_147:                              //  %if.else361
	and x10, x18, 20
	xor x10, x10, 20
	bltu x0, x10, .LBB0_184
.LBB0_148:                              //  %if.then365
	and x10, x18, 2
	bltu x0, x10, .LBB0_181
.LBB0_149:                              //  %if.then368
	lw x19, 28 ( fp )
	slti x10, x19, 31
	beq x0, x10, .LBB0_153
.LBB0_150:
	mv x10, x0
	jal x0, .LBB0_180
.LBB0_151:                              //  %land.rhs.i680
	add x11, x0, 100
	mv x10, x9
	jal __modsi3
	beq x0, x10, .LBB0_155
.LBB0_152:                              //  %lor.lhs.false352
	seqz x10, x0
	bge x10, x20, .LBB0_144
	jal x0, .LBB0_145
.LBB0_153:                              //  %if.else374
	lw x10, 20 ( fp )
	add x9, x10, 1900
	and x10, x9, 3
	beq x0, x10, .LBB0_157
.LBB0_154:
	mv x10, x0
	add x11, x10, 59
	bge x19, x11, .LBB0_161
.LBB0_160:
	seqz x10, x0
	jal x0, .LBB0_180
.LBB0_155:                              //  %is_leap_year.exit685
	add x11, x0, 400
	mv x10, x9
	jal __modsi3
	slti x11, x20, 2
	bltu x0, x11, .LBB0_144
.LBB0_156:                              //  %is_leap_year.exit685
	beq x0, x10, .LBB0_145
	jal x0, .LBB0_144
.LBB0_157:                              //  %land.rhs.i655
	add x11, x0, 100
	mv x10, x9
	jal __modsi3
	beq x0, x10, .LBB0_159
.LBB0_158:
	seqz x10, x0
	add x11, x10, 59
	blt x19, x11, .LBB0_160
.LBB0_161:                              //  %for.inc389
	or x11, x10, 90
	bge x19, x11, .LBB0_163
.LBB0_162:
	add x10, x0, 2
	jal x0, .LBB0_180
.LBB0_163:                              //  %for.inc389.1
	or x11, x10, 120
	bge x19, x11, .LBB0_165
.LBB0_164:
	add x10, x0, 3
	jal x0, .LBB0_180
.LBB0_159:                              //  %lor.rhs.i659
	add x11, x0, 400
	mv x10, x9
	jal __modsi3
	seqz x10, x10
	add x11, x10, 59
	bge x19, x11, .LBB0_161
	jal x0, .LBB0_160
.LBB0_165:                              //  %for.inc389.2
	add x11, x10, 151
	bge x19, x11, .LBB0_167
.LBB0_166:
	add x10, x0, 4
	jal x0, .LBB0_180
.LBB0_167:                              //  %for.inc389.3
	add x11, x10, 181
	bge x19, x11, .LBB0_169
.LBB0_168:
	add x10, x0, 5
	jal x0, .LBB0_180
.LBB0_169:                              //  %for.inc389.4
	or x11, x10, 212
	bge x19, x11, .LBB0_171
.LBB0_170:
	add x10, x0, 6
	jal x0, .LBB0_180
.LBB0_171:                              //  %for.inc389.5
	add x11, x10, 243
	bge x19, x11, .LBB0_173
.LBB0_172:
	add x10, x0, 7
	jal x0, .LBB0_180
.LBB0_173:                              //  %for.inc389.6
	add x11, x10, 273
	bge x19, x11, .LBB0_175
.LBB0_174:
	add x10, x0, 8
	jal x0, .LBB0_180
.LBB0_175:                              //  %for.inc389.7
	or x11, x10, 304
	bge x19, x11, .LBB0_177
.LBB0_176:
	add x10, x0, 9
	jal x0, .LBB0_180
.LBB0_177:                              //  %for.inc389.8
	or x10, x10, 334
	blt x19, x10, .LBB0_179
.LBB0_178:                              //  %for.inc389.8
	add x10, x0, 11
	jal x0, .LBB0_180
.LBB0_179:
	add x10, x0, 10
.LBB0_180:                              //  %if.end394.sink.split
	sw x10, 16 ( fp )
.LBB0_181:                              //  %if.end394
	and x10, x18, 1
	bltu x0, x10, .LBB0_184
.LBB0_182:                              //  %if.then397
	lw x20, 16 ( fp )
	lui x11, %hi( _DAYS_BEFORE_MONTH )
	add x11, x11, %lo( _DAYS_BEFORE_MONTH )
	sll x10, x20, 2&31
	add x10, x10, x11
	lw x10, 0 ( x10 )
	lw x11, 28 ( fp )
	sub x19, x11, x10
	lw x10, 20 ( fp )
	sw x19, 12 ( fp )
	add x9, x10, 1900
	and x10, x9, 3
	beq x0, x10, .LBB0_193
.LBB0_183:                              //  %if.then411
	add x10, x19, 1
	sw x10, 12 ( fp )
.LBB0_184:                              //  %if.end417
	and x10, x18, 28
	xor x10, x10, 20
	bltu x0, x10, .LBB0_192
.LBB0_185:                              //  %if.then421
	lw x10, 20 ( fp )
	add x21, x0, 4
	add x9, x10, 1899
	slti x10, x9, 1970
	bltu x0, x10, .LBB0_191
.LBB0_186:                              //  %while.body.i.preheader
	add x18, x0, 400
	add x19, x0, 100
	mv x24, x0
	seqz x25, x0
	add x20, x0, 7
	add x26, x0, 1969
	jal x0, .LBB0_188
.LBB0_187:                              //  %is_leap_year.exit.i
                                        //    in Loop: Header=BB0_188 Depth=1
	add x10, x12, x11
	mv x11, x20
	jal __modsi3
	mv x21, x10
	add x9, x9, -1
	bge x26, x9, .LBB0_191
.LBB0_188:                              //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x9
	mv x11, x18
	jal __udivsi3
	mv x23, x10
	mv x10, x9
	mv x11, x19
	jal __udivsi3
	add x11, x21, 365
	and x13, x9, 3
	mv x12, x24
	bltu x0, x13, .LBB0_187
.LBB0_189:                              //  %land.rhs.i.i
                                        //    in Loop: Header=BB0_188 Depth=1
	hackaton_custom_instr_c x10, x19, x10
	sub x10, x9, x10
	mv x12, x25
	bltu x0, x10, .LBB0_187
.LBB0_190:                              //  %lor.rhs.i.i
                                        //    in Loop: Header=BB0_188 Depth=1
	hackaton_custom_instr_c x10, x18, x23
	sub x10, x9, x10
	seqz x12, x10
	jal x0, .LBB0_187
.LBB0_191:                              //  %first_day.exit
	lw x10, 28 ( fp )
	add x11, x0, 7
	add x10, x21, x10
	jal __modsi3
	sw x10, 24 ( fp )
.LBB0_192:                              //  %cleanup429
	mv x10, x22
	lw fp, 60 ( sp )                //  4-byte Folded Reload
	lw x27, 64 ( sp )               //  4-byte Folded Reload
	lw x26, 68 ( sp )               //  4-byte Folded Reload
	lw x25, 72 ( sp )               //  4-byte Folded Reload
	lw x24, 76 ( sp )               //  4-byte Folded Reload
	lw x23, 80 ( sp )               //  4-byte Folded Reload
	lw x22, 84 ( sp )               //  4-byte Folded Reload
	lw x21, 88 ( sp )               //  4-byte Folded Reload
	lw x20, 92 ( sp )               //  4-byte Folded Reload
	lw x19, 96 ( sp )               //  4-byte Folded Reload
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	lw ra, 108 ( sp )               //  4-byte Folded Reload
	add sp, sp, 112
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_193:                              //  %land.rhs.i
	add x11, x0, 100
	mv x10, x9
	jal __modsi3
	beq x0, x10, .LBB0_195
.LBB0_194:                              //  %lor.lhs.false407
	seqz x10, x0
	bge x10, x20, .LBB0_183
	jal x0, .LBB0_184
.LBB0_195:                              //  %is_leap_year.exit
	add x11, x0, 400
	mv x10, x9
	jal __modsi3
	slti x11, x20, 2
	bltu x0, x11, .LBB0_183
.LBB0_196:                              //  %is_leap_year.exit
	beq x0, x10, .LBB0_184
	jal x0, .LBB0_183
.Lfunc_end0:
	.size	strptime_l, .Lfunc_end0-strptime_l
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_27
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_28
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_34
	.long	.LBB0_38
	.long	.LBB0_43
	.long	.LBB0_45
	.long	.LBB0_30
	.long	.LBB0_47
	.long	.LBB0_30
	.long	.LBB0_16
	.long	.LBB0_17
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_50
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_52
	.long	.LBB0_53
	.long	.LBB0_55
	.long	.LBB0_56
	.long	.LBB0_64
	.long	.LBB0_73
	.long	.LBB0_82
	.long	.LBB0_83
	.long	.LBB0_3
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_85
	.long	.LBB0_21
	.long	.LBB0_89
	.long	.LBB0_25
	.long	.LBB0_25
	.long	.LBB0_30
	.long	.LBB0_30
	.long	.LBB0_21
	.long	.LBB0_30
	.long	.LBB0_91
	.long	.LBB0_16
	.long	.LBB0_17
	.long	.LBB0_93
	.long	.LBB0_95
	.long	.LBB0_30
	.long	.LBB0_97
	.long	.LBB0_30
	.long	.LBB0_101
	.long	.LBB0_104
	.long	.LBB0_109
	.long	.LBB0_111
	.long	.LBB0_30
	.long	.LBB0_113
	.long	.LBB0_115
	.long	.LBB0_117
                                        //  -- End function
	.text
	.globl	strptime                //  -- Begin function strptime
	.type	strptime,@function
strptime:                               //  @strptime
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x13, %hi( __global_locale )
	add x13, x13, %lo( __global_locale )
	j strptime_l
.Lfunc_end1:
	.size	strptime, .Lfunc_end1-strptime
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	tm_year_base,@object    //  @tm_year_base
	.section	.rodata,"a",@progbits
	.globl	tm_year_base
	.p2align	2
tm_year_base:
	.long	1900                    //  0x76c
	.size	tm_year_base, 4

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"%m/%d/%y"
	.size	.str, 9

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"%Y-%m-%d"
	.size	.str.1, 9

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"%H:%M"
	.size	.str.2, 6

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"%H:%M:%S"
	.size	.str.3, 9

	.address_space	0
	.type	_DAYS_BEFORE_MONTH,@object //  @_DAYS_BEFORE_MONTH
	.section	.rodata,"a",@progbits
	.p2align	2
_DAYS_BEFORE_MONTH:
	.long	0                       //  0x0
	.long	31                      //  0x1f
	.long	59                      //  0x3b
	.long	90                      //  0x5a
	.long	120                     //  0x78
	.long	151                     //  0x97
	.long	181                     //  0xb5
	.long	212                     //  0xd4
	.long	243                     //  0xf3
	.long	273                     //  0x111
	.long	304                     //  0x130
	.long	334                     //  0x14e
	.size	_DAYS_BEFORE_MONTH, 48

	.address_space	0
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
