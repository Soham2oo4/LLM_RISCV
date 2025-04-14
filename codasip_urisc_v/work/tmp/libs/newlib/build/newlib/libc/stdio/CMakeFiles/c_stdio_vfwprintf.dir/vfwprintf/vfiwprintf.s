	.text
	.file	"vfiwprintf.c"
	.globl	vfiwprintf              //  -- Begin function vfiwprintf
	.type	vfiwprintf,@function
vfiwprintf:                             //  @vfiwprintf
	.cfi_sections .debug_frame
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
	j _vfiwprintf_r
.Lfunc_end0:
	.size	vfiwprintf, .Lfunc_end0-vfiwprintf
	.cfi_endproc
                                        //  -- End function
	.globl	_vfiwprintf_r           //  -- Begin function _vfiwprintf_r
	.type	_vfiwprintf_r,@function
_vfiwprintf_r:                          //  @_vfiwprintf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -1296
	.cfi_adjust_cfa_offset 1296
	sw x18, 1284 ( sp )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x22, 1268 ( sp )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 1264 ( sp )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 1260 ( sp )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	mv x18, x13
	mv x23, x12
	mv x24, x11
	mv x22, x10
	sw ra, 1292 ( sp )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 1288 ( sp )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 1280 ( sp )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 1276 ( sp )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 1272 ( sp )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x25, 1256 ( sp )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 1252 ( sp )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 1248 ( sp )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 1244 ( sp )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x18, 112 ( sp )
	beq x0, x22, .LBB1_2
.LBB1_1:                                //  %land.lhs.true
	lw x10, 56 ( x22 )
	bltu x0, x10, .LBB1_2
.LBB1_279:                              //  %land.lhs.true
	jal x0, .LBB1_265
.LBB1_2:                                //  %if.end
	lhu x10, 12 ( x24 )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB1_4
.LBB1_3:                                //  %if.then12
	lw x12, 100 ( x24 )
	or x10, x11, x10
	sh x10, 12 ( x24 )
	or x12, x11, x12
	sw x12, 100 ( x24 )
.LBB1_4:                                //  %do.end20
	and x11, x10, 8
	beq x0, x11, .LBB1_13
.LBB1_5:                                //  %lor.lhs.false
	lw x11, 16 ( x24 )
	beq x0, x11, .LBB1_13
.LBB1_6:                                //  %if.end42
	and x11, x10, 26
	xor x11, x11, 10
	bltu x0, x11, .LBB1_15
.LBB1_7:                                //  %land.lhs.true48
	lh x12, 14 ( x24 )
	blt x12, x0, .LBB1_15
.LBB1_8:                                //  %if.then52
	lui x11, %hi( 65533 )
	add x11, x11, %lo( 65533 )
	and x10, x11, x10
	add x11, sp, 1140
	sh x10, 12 ( x11 )
	lw x10, 100 ( x24 )
	sh x12, 14 ( x11 )
	mv x12, x23
	mv x13, x18
	sw x10, 100 ( x11 )
	lw x10, 28 ( x24 )
	sw x0, 24 ( x11 )
	sw x10, 28 ( x11 )
	lw x10, 36 ( x24 )
	sw x10, 36 ( x11 )
	add x10, sp, 116
	sw x10, 16 ( x11 )
	sw x10, 1140 ( sp )
	add x10, x0, 1024
	sw x10, 8 ( x11 )
	sw x10, 1160 ( sp )
	mv x10, x22
	jal _vfiwprintf_r
	mv x27, x10
	blt x27, x0, .LBB1_11
.LBB1_9:                                //  %land.lhs.true.i
	add x11, sp, 1140
	mv x10, x22
	jal _fflush_r
	mv x11, x0
	beq x10, x11, .LBB1_11
.LBB1_10:                               //  %land.lhs.true.i
	add x27, x0, -1
.LBB1_11:                               //  %if.end.i
	lbu x10, 1152 ( sp )
	and x10, x10, 64
	bltu x0, x10, .LBB1_12
.LBB1_280:                              //  %if.end.i
	jal x0, .LBB1_275
.LBB1_12:                               //  %if.then15.i
	lh x10, 12 ( x24 )
	or x10, x10, 64
	sh x10, 12 ( x24 )
	jal x0, .LBB1_275
.LBB1_13:                               //  %land.lhs.true27
	mv x10, x22
	mv x11, x24
	jal __swsetup_r
	beq x0, x10, .LBB1_14
.LBB1_281:                              //  %land.lhs.true27
	jal x0, .LBB1_274
.LBB1_14:                               //  %land.lhs.true27.if.end42_crit_edge
	lhu x10, 12 ( x24 )
	and x11, x10, 26
	xor x11, x11, 10
	beq x0, x11, .LBB1_7
.LBB1_15:                               //  %if.end66
	add x10, sp, 116
	add x10, x10, 400
	sw x10, 36 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _vfiwprintf_r.blanks )
	add x10, x10, %lo( _vfiwprintf_r.blanks )
	sw x10, 76 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _vfiwprintf_r.zeroes )
	add x10, x10, %lo( _vfiwprintf_r.zeroes )
	sw x10, 84 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( JTI1_0 )
	add x10, x10, %lo( JTI1_0 )
	sw x10, 68 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( .str.1 )
	add x10, x10, %lo( .str.1 )
	sw x10, 16 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( .str.2 )
	add x10, x10, %lo( .str.2 )
	sw x10, 28 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( .str.3 )
	add x10, x10, %lo( .str.3 )
	mv fp, x0
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( .str )
	add x26, sp, 1140
	add x19, sp, 96
	add x10, x10, %lo( .str )
	add x25, x0, -1
	mv x27, fp
	add x21, x0, 10
	sw x0, 8 ( x19 )
	sw x26, 96 ( sp )
	sw fp, 32 ( sp )                //  4-byte Folded Spill
	sw x0, 100 ( sp )
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	sw fp, 56 ( sp )                //  4-byte Folded Spill
	sw fp, 52 ( sp )                //  4-byte Folded Spill
	sw x22, 60 ( sp )               //  4-byte Folded Spill
.LBB1_16:                               //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_19 Depth 2
                                        //        Child Loop BB1_26 Depth 3
                                        //          Child Loop BB1_27 Depth 4
                                        //            Child Loop BB1_30 Depth 5
                                        //              Child Loop BB1_34 Depth 6
                                        //            Child Loop BB1_29 Depth 5
                                        //        Child Loop BB1_143 Depth 3
                                        //        Child Loop BB1_165 Depth 3
                                        //        Child Loop BB1_151 Depth 3
                                        //        Child Loop BB1_156 Depth 3
                                        //        Child Loop BB1_189 Depth 3
                                        //        Child Loop BB1_204 Depth 3
                                        //        Child Loop BB1_222 Depth 3
                                        //        Child Loop BB1_232 Depth 3
                                        //        Child Loop BB1_244 Depth 3
                                        //      Child Loop BB1_17 Depth 2
	mv x9, x26
	mv x18, x23
	lw x10, 0 ( x18 )
	beq x0, x10, .LBB1_19
.LBB1_17:                               //  %while.cond
                                        //    Parent Loop BB1_16 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	xor x11, x10, 37
	beq x0, x11, .LBB1_19
.LBB1_18:                               //  %while.body
                                        //    in Loop: Header=BB1_17 Depth=2
	add x18, x18, 4
	lw x10, 0 ( x18 )
	bltu x0, x10, .LBB1_17
.LBB1_19:                               //  %while.end
                                        //    Parent Loop BB1_16 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_26 Depth 3
                                        //          Child Loop BB1_27 Depth 4
                                        //            Child Loop BB1_30 Depth 5
                                        //              Child Loop BB1_34 Depth 6
                                        //            Child Loop BB1_29 Depth 5
                                        //        Child Loop BB1_143 Depth 3
                                        //        Child Loop BB1_165 Depth 3
                                        //        Child Loop BB1_151 Depth 3
                                        //        Child Loop BB1_156 Depth 3
                                        //        Child Loop BB1_189 Depth 3
                                        //        Child Loop BB1_204 Depth 3
                                        //        Child Loop BB1_222 Depth 3
                                        //        Child Loop BB1_232 Depth 3
                                        //        Child Loop BB1_244 Depth 3
	sub x20, x18, x23
	beq x0, x20, .LBB1_24
.LBB1_20:                               //  %if.then73
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 8 ( x19 )
	sw x20, 4 ( x9 )
	sw x23, 0 ( x9 )
	add x10, x20, x10
	sw x10, 8 ( x19 )
	lw x10, 100 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 100 ( sp )
	bltu x0, x10, .LBB1_22
.LBB1_21:                               //  %if.then80
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x22
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	mv x9, x26
	beq x0, x10, .LBB1_23
	jal x0, .LBB1_273
.LBB1_22:                               //    in Loop: Header=BB1_19 Depth=2
	add x9, x9, 8
.LBB1_23:                               //  %if.end86
                                        //    in Loop: Header=BB1_19 Depth=2
	sra x10, x20, 2&31
	add x27, x27, x10
	lw x10, 0 ( x18 )
.LBB1_24:                               //  %if.end88
                                        //    in Loop: Header=BB1_19 Depth=2
	bltu x0, x10, .LBB1_25
.LBB1_282:                              //  %if.end88
	jal x0, .LBB1_266
.LBB1_25:                               //  %if.end92
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x18, 4
	mv x20, fp
	sw fp, 80 ( sp )                //  4-byte Folded Spill
	sw x0, 108 ( sp )
	sw x25, 72 ( sp )               //  4-byte Folded Spill
.LBB1_26:                               //  %rflag
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_27 Depth 4
                                        //            Child Loop BB1_30 Depth 5
                                        //              Child Loop BB1_34 Depth 6
                                        //            Child Loop BB1_29 Depth 5
	lw x11, 0 ( x10 )
	add x23, x10, 4
.LBB1_27:                               //  %reswitch
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_26 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB1_30 Depth 5
                                        //              Child Loop BB1_34 Depth 6
                                        //            Child Loop BB1_29 Depth 5
	add x10, x11, -49
	sltiu x10, x10, 9
	beq x0, x10, .LBB1_30
.LBB1_28:                               //  %do.body152.preheader
                                        //    in Loop: Header=BB1_27 Depth=4
	mv x20, fp
.LBB1_29:                               //  %do.body152
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_26 Depth=3
                                        //          Parent Loop BB1_27 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	hackaton_custom_instr_c x10, x21, x20
	add x10, x10, x11
	lw x11, 0 ( x23 )
	add x20, x10, -48
	add x23, x23, 4
	add x10, x11, -48
	sltiu x10, x10, 10
	bltu x0, x10, .LBB1_29
	jal x0, .LBB1_27
.LBB1_30:                               //  %reswitch
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_26 Depth=3
                                        //          Parent Loop BB1_27 Depth=4
                                        //  =>        This Loop Header: Depth=5
                                        //              Child Loop BB1_34 Depth 6
	add x10, x0, 122
	bltu x10, x11, .LBB1_109
.LBB1_31:                               //  %reswitch
                                        //    in Loop: Header=BB1_30 Depth=5
	lw x12, 68 ( sp )               //  4-byte Folded Reload
	sll x10, x11, 2&31
	add x10, x12, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB1_32:                               //  %sw.bb123
                                        //    in Loop: Header=BB1_30 Depth=5
	lw x11, 0 ( x23 )
	add x10, x23, 4
	xor x12, x11, 42
	beq x0, x12, .LBB1_62
.LBB1_33:                               //  %while.cond134.preheader
                                        //    in Loop: Header=BB1_30 Depth=5
	mv x23, x10
	add x12, x11, -48
	mv x10, fp
	add x13, x0, 9
	bltu x13, x12, .LBB1_36
.LBB1_34:                               //  %while.body138
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_26 Depth=3
                                        //          Parent Loop BB1_27 Depth=4
                                        //            Parent Loop BB1_30 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	lw x11, 0 ( x23 )
	hackaton_custom_instr_c x10, x21, x10
	add x10, x10, x12
	add x23, x23, 4
	add x12, x11, -48
	sltiu x13, x12, 10
	bltu x0, x13, .LBB1_34
.LBB1_35:                               //  %while.end143
                                        //    in Loop: Header=BB1_30 Depth=5
	sw x25, 72 ( sp )               //  4-byte Folded Spill
	blt x10, x0, .LBB1_27
.LBB1_36:                               //  %while.end143.thread
                                        //    in Loop: Header=BB1_30 Depth=5
	sw x10, 72 ( sp )               //  4-byte Folded Spill
	add x10, x11, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB1_28
	jal x0, .LBB1_30
.LBB1_37:                               //  %sw.bb181
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	or x10, x10, 32
	jal x0, .LBB1_53
.LBB1_38:                               //  %sw.bb109
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x11, 108 ( sp )
	mv x10, x23
	bltu x0, x11, .LBB1_26
.LBB1_39:                               //  %if.then111
                                        //    in Loop: Header=BB1_26 Depth=3
	add x10, x0, 32
	jal x0, .LBB1_50
.LBB1_40:                               //  %sw.bb113
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	or x10, x10, 1
	jal x0, .LBB1_53
.LBB1_41:                               //  %sw.bb
                                        //    in Loop: Header=BB1_26 Depth=3
	mv x10, x22
	jal _localeconv_r
	lw x10, 4 ( x10 )
	lb x18, 0 ( x10 )
	mv x10, x22
	jal _localeconv_r
	lw x10, 8 ( x10 )
	sw x18, 32 ( sp )               //  4-byte Folded Spill
	sw x10, 52 ( sp )               //  4-byte Folded Spill
	mv x10, x23
	beq x0, x18, .LBB1_26
.LBB1_42:                               //  %sw.bb
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x11, 52 ( sp )               //  4-byte Folded Reload
	mv x10, x23
	beq x0, x11, .LBB1_26
.LBB1_43:                               //  %land.lhs.true103
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	lbu x10, 0 ( x10 )
	beq x10, fp, .LBB1_45
.LBB1_44:                               //  %land.lhs.true103
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	or x10, x10, 1024
	sw x10, 80 ( sp )               //  4-byte Folded Spill
.LBB1_45:                               //  %land.lhs.true103
                                        //    in Loop: Header=BB1_26 Depth=3
	mv x10, x23
	jal x0, .LBB1_26
.LBB1_46:                               //  %sw.bb115
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x10, 112 ( sp )
	add x11, x10, 4
	sw x11, 112 ( sp )
	lw x20, 0 ( x10 )
	mv x10, x23
	bge x20, x0, .LBB1_26
.LBB1_47:                               //  %if.end119
                                        //    in Loop: Header=BB1_26 Depth=3
	sub x20, x0, x20
.LBB1_48:                               //  %sw.bb120.loopexit
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	or x10, x10, 4
	jal x0, .LBB1_53
.LBB1_49:                               //  %sw.bb122
                                        //    in Loop: Header=BB1_26 Depth=3
	add x10, x0, 43
.LBB1_50:                               //  %rflag
                                        //    in Loop: Header=BB1_26 Depth=3
	sw x10, 108 ( sp )
.LBB1_51:                               //  %rflag.backedge.loopexit
                                        //    in Loop: Header=BB1_26 Depth=3
	mv x10, x23
	jal x0, .LBB1_26
.LBB1_52:                               //  %sw.bb149
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	or x10, x10, 128
.LBB1_53:                               //  %rflag
                                        //    in Loop: Header=BB1_26 Depth=3
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	mv x10, x23
	jal x0, .LBB1_26
.LBB1_54:                               //  %sw.bb162
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x10, 0 ( x23 )
	add x11, x0, 104
	beq x10, x11, .LBB1_59
.LBB1_55:                               //  %sw.bb162
                                        //    in Loop: Header=BB1_26 Depth=3
	add x11, x0, 64
	jal x0, .LBB1_58
.LBB1_56:                               //  %sw.bb170
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x10, 0 ( x23 )
	add x11, x0, 108
	beq x10, x11, .LBB1_60
.LBB1_57:                               //  %sw.bb170
                                        //    in Loop: Header=BB1_26 Depth=3
	add x11, x0, 16
.LBB1_58:                               //  %sw.bb162
                                        //    in Loop: Header=BB1_26 Depth=3
	mv x10, x23
	jal x0, .LBB1_61
.LBB1_59:                               //    in Loop: Header=BB1_26 Depth=3
	add x10, x23, 4
	add x11, x0, 512
	jal x0, .LBB1_61
.LBB1_60:                               //    in Loop: Header=BB1_26 Depth=3
	add x10, x23, 4
	add x11, x0, 32
.LBB1_61:                               //  %sw.bb162
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x12, 80 ( sp )               //  4-byte Folded Reload
	or x12, x12, x11
	sw x12, 80 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB1_26
.LBB1_62:                               //  %if.then127
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x11, 112 ( sp )
	add x12, x11, 4
	sw x12, 112 ( sp )
	lw x11, 0 ( x11 )
	sw x11, 72 ( sp )               //  4-byte Folded Spill
	blt x25, x11, .LBB1_26
.LBB1_63:                               //  %if.then127
                                        //    in Loop: Header=BB1_26 Depth=3
	sw x25, 72 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB1_26
.LBB1_64:                               //  %sw.bb248
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 80 ( sp )               //  4-byte Folded Reload
	and x10, x11, 32
	bltu x0, x10, .LBB1_69
.LBB1_65:                               //  %if.else254
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, x11, 16
	bltu x0, x10, .LBB1_68
.LBB1_66:                               //  %if.else259
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, x11, 64
	bltu x0, x10, .LBB1_70
.LBB1_67:                               //  %if.else265
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, x11, 512
	bltu x0, x10, .LBB1_71
.LBB1_68:                               //  %if.then257
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	add x11, x10, 4
	sw x11, 112 ( sp )
	lw x10, 0 ( x10 )
	sw x27, 0 ( x10 )
	mv x18, x23
	lw x10, 0 ( x18 )
	bltu x0, x10, .LBB1_17
	jal x0, .LBB1_19
.LBB1_69:                               //  %if.then251
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	add x11, x10, 4
	sw x11, 112 ( sp )
	lw x10, 0 ( x10 )
	sra x11, x27, 31&31
	sw x11, 4 ( x10 )
	sw x27, 0 ( x10 )
	mv x18, x23
	lw x10, 0 ( x18 )
	bltu x0, x10, .LBB1_17
	jal x0, .LBB1_19
.LBB1_70:                               //  %if.then262
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	add x11, x10, 4
	sw x11, 112 ( sp )
	lw x10, 0 ( x10 )
	sh x27, 0 ( x10 )
	mv x18, x23
	lw x10, 0 ( x18 )
	bltu x0, x10, .LBB1_17
	jal x0, .LBB1_19
.LBB1_71:                               //  %if.then268
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	add x11, x10, 4
	sw x11, 112 ( sp )
	lw x10, 0 ( x10 )
	sb x27, 0 ( x10 )
	mv x18, x23
	lw x10, 0 ( x18 )
	bltu x0, x10, .LBB1_17
	jal x0, .LBB1_19
.LBB1_72:                               //  %sw.bb185
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	add x12, x10, 4
	sw x12, 112 ( sp )
	lw x10, 0 ( x10 )
	and x12, x26, 16
	sw x27, 48 ( sp )               //  4-byte Folded Spill
	bltu x0, x12, .LBB1_105
.LBB1_73:                               //  %sw.bb185
                                        //    in Loop: Header=BB1_19 Depth=2
	xor x11, x11, 99
	bltu x0, x11, .LBB1_105
.LBB1_74:                               //  %if.then192
                                        //    in Loop: Header=BB1_19 Depth=2
	jal btowc
	lw x18, 56 ( sp )               //  4-byte Folded Reload
	xor x11, x10, -1
	bltu x0, x11, .LBB1_106
	jal x0, .LBB1_276
.LBB1_75:                               //  %sw.bb319
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	add x12, x10, 4
	sw x12, 112 ( sp )
	lw x22, 0 ( x10 )
	sw x0, 108 ( sp )
	sw x27, 48 ( sp )               //  4-byte Folded Spill
	beq x0, x22, .LBB1_110
.LBB1_76:                               //  %if.else330
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	and x10, x26, 16
	bltu x0, x10, .LBB1_115
.LBB1_77:                               //  %if.else330
                                        //    in Loop: Header=BB1_19 Depth=2
	xor x10, x11, 83
	beq x0, x10, .LBB1_115
.LBB1_78:                               //  %if.then336
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x25, 72 ( sp )               //  4-byte Folded Reload
	blt x25, x0, .LBB1_183
.LBB1_79:                               //  %if.then339
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x22
	mv x11, fp
	mv x12, x25
	jal memchr
	beq x10, fp, .LBB1_184
.LBB1_80:                               //  %if.then339
                                        //    in Loop: Header=BB1_19 Depth=2
	sub x25, x10, x22
	sltiu x10, x25, 100
	sll x13, x25, 2&31
	sw x25, 72 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB1_185
.LBB1_187:                              //  %if.end368
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x25
	add x25, sp, 116
	sw fp, 40 ( sp )                //  4-byte Folded Spill
	sw fp, 44 ( sp )                //  4-byte Folded Spill
	bltu x0, x10, .LBB1_188
	jal x0, .LBB1_190
.LBB1_81:                               //  %sw.bb208
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x12, 80 ( sp )               //  4-byte Folded Reload
	sw x27, 48 ( sp )               //  4-byte Folded Spill
	and x10, x12, 32
	bltu x0, x10, .LBB1_107
.LBB1_82:                               //  %cond.false213
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, x12, 16
	bltu x0, x10, .LBB1_120
.LBB1_83:                               //  %cond.false218
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, x12, 64
	bltu x0, x10, .LBB1_179
.LBB1_84:                               //  %cond.false225
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	add x11, x10, 4
	sw x11, 112 ( sp )
	lw x26, 0 ( x10 )
	and x10, x12, 512
	beq x0, x10, .LBB1_121
.LBB1_85:                               //  %cond.true228
                                        //    in Loop: Header=BB1_19 Depth=2
	sll x10, x26, 24&31
	sra x26, x10, 24&31
	lw x18, 56 ( sp )               //  4-byte Folded Reload
	sra x27, x26, 31&31
	bge x27, x0, .LBB1_108
	jal x0, .LBB1_122
.LBB1_86:                               //  %hex.loopexit
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x18, 28 ( sp )               //  4-byte Folded Reload
	lw x13, 80 ( sp )               //  4-byte Folded Reload
	sw x27, 48 ( sp )               //  4-byte Folded Spill
	and x10, x13, 32
	beq x0, x10, .LBB1_101
.LBB1_87:                               //  %cond.true444
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	add x12, x10, 4
	sw x12, 112 ( sp )
	add x12, x10, 8
	lw x26, 0 ( x10 )
	sw x12, 112 ( sp )
	lw x27, 4 ( x10 )
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	and x10, x10, 1
	beq x0, x10, .LBB1_131
.LBB1_129:                              //  %cond.end474
                                        //    in Loop: Header=BB1_19 Depth=2
	or x10, x27, x26
	beq x0, x10, .LBB1_131
.LBB1_130:                              //  %if.then481
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x0, 48
	sw x10, 88 ( sp )
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	sw x11, 92 ( sp )
	or x10, x10, 2
	jal x0, .LBB1_132
.LBB1_89:                               //  %sw.bb277
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x12, 80 ( sp )               //  4-byte Folded Reload
	sw x27, 48 ( sp )               //  4-byte Folded Spill
	and x10, x12, 32
	bltu x0, x10, .LBB1_125
.LBB1_90:                               //  %cond.false282
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, x12, 16
	bltu x0, x10, .LBB1_180
.LBB1_91:                               //  %cond.false287
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, x12, 64
	bltu x0, x10, .LBB1_260
.LBB1_92:                               //  %cond.false294
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	add x11, x10, 4
	sw x11, 112 ( sp )
	lw x26, 0 ( x10 )
	and x11, x12, 512
	beq x11, fp, .LBB1_261
.LBB1_93:                               //  %cond.false294
                                        //    in Loop: Header=BB1_19 Depth=2
	and x26, x26, 255
	jal x0, .LBB1_261
.LBB1_94:                               //  %sw.bb313
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	sw x27, 48 ( sp )               //  4-byte Folded Spill
	lw x18, 24 ( sp )               //  4-byte Folded Reload
	mv x27, fp
	add x11, x10, 4
	sw x11, 112 ( sp )
	lw x26, 0 ( x10 )
	add x10, x0, 120
	sw x10, 92 ( sp )
	add x10, x0, 48
	sw x10, 88 ( sp )
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	or x10, x10, 2
	jal x0, .LBB1_133
.LBB1_95:                               //  %sw.bb405
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x12, 80 ( sp )               //  4-byte Folded Reload
	sw x27, 48 ( sp )               //  4-byte Folded Spill
	and x10, x12, 32
	bltu x0, x10, .LBB1_126
.LBB1_96:                               //  %cond.false410
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, x12, 16
	bltu x0, x10, .LBB1_181
.LBB1_97:                               //  %cond.false415
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, x12, 64
	bltu x0, x10, .LBB1_263
.LBB1_98:                               //  %cond.false422
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	lw x18, 56 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 112 ( sp )
	lw x26, 0 ( x10 )
	and x11, x12, 512
	beq x11, fp, .LBB1_264
.LBB1_99:                               //  %cond.false422
                                        //    in Loop: Header=BB1_19 Depth=2
	and x26, x26, 255
	jal x0, .LBB1_264
.LBB1_100:                              //  %hex.loopexit1
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x10, %hi( .str )
	add x18, x10, %lo( .str )
	lw x13, 80 ( sp )               //  4-byte Folded Reload
	sw x27, 48 ( sp )               //  4-byte Folded Spill
	and x10, x13, 32
	bltu x0, x10, .LBB1_87
.LBB1_101:                              //  %cond.false446
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, x13, 16
	bltu x0, x10, .LBB1_127
.LBB1_102:                              //  %cond.false451
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, x13, 64
	bltu x0, x10, .LBB1_182
.LBB1_103:                              //  %cond.false458
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	add x12, x10, 4
	sw x12, 112 ( sp )
	lw x26, 0 ( x10 )
	and x12, x13, 512
	beq x12, fp, .LBB1_128
.LBB1_104:                              //  %cond.false458
                                        //    in Loop: Header=BB1_19 Depth=2
	and x26, x26, 255
	mv x27, fp
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	and x10, x10, 1
	bltu x0, x10, .LBB1_129
	jal x0, .LBB1_131
.LBB1_105:                              //    in Loop: Header=BB1_19 Depth=2
	lw x18, 56 ( sp )               //  4-byte Folded Reload
.LBB1_106:                              //  %if.end206
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x11, fp
	sw x10, 116 ( sp )
	sw x0, 120 ( sp )
	sw x0, 108 ( sp )
	sw fp, 40 ( sp )                //  4-byte Folded Spill
	sw fp, 44 ( sp )                //  4-byte Folded Spill
	seqz x27, x0
	add x25, sp, 116
	mv x10, x11
	sw x18, 56 ( sp )               //  4-byte Folded Spill
	sw x11, 72 ( sp )               //  4-byte Folded Spill
	bge x27, x11, .LBB1_196
	jal x0, .LBB1_197
.LBB1_107:                              //  %cond.true211
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	lw x18, 56 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 112 ( sp )
	add x11, x10, 8
	lw x26, 0 ( x10 )
	sw x11, 112 ( sp )
	lw x27, 4 ( x10 )
	blt x27, x0, .LBB1_122
.LBB1_108:                              //    in Loop: Header=BB1_19 Depth=2
	seqz x10, x0
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	blt x25, x11, .LBB1_134
	jal x0, .LBB1_135
.LBB1_109:                              //  %if.end588
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x27, 48 ( sp )               //  4-byte Folded Spill
	sw x11, 116 ( sp )
	mv x11, fp
	seqz x27, x0
	add x25, sp, 116
	sw x0, 108 ( sp )
	jal x0, .LBB1_113
.LBB1_110:                              //  %if.then323
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x27, 72 ( sp )               //  4-byte Folded Reload
	add x10, x0, 6
	bltu x27, x10, .LBB1_112
.LBB1_111:                              //  %if.then323
                                        //    in Loop: Header=BB1_19 Depth=2
	add x27, x0, 6
.LBB1_112:                              //  %if.then323
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x25, 16 ( sp )               //  4-byte Folded Reload
	lw x22, 60 ( sp )               //  4-byte Folded Reload
	mv x11, fp
.LBB1_113:                              //  %sw.epilog590
                                        //    in Loop: Header=BB1_19 Depth=2
	sw fp, 40 ( sp )                //  4-byte Folded Spill
	sw fp, 44 ( sp )                //  4-byte Folded Spill
	lw x18, 56 ( sp )               //  4-byte Folded Reload
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	mv x10, x11
	sw x18, 56 ( sp )               //  4-byte Folded Spill
	sw x11, 72 ( sp )               //  4-byte Folded Spill
	bge x27, x11, .LBB1_196
	jal x0, .LBB1_197
.LBB1_115:                              //  %if.else381
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x18, 72 ( sp )               //  4-byte Folded Reload
	blt x18, x0, .LBB1_191
.LBB1_116:                              //  %if.then384
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x22
	mv x11, fp
	mv x12, x18
	jal wmemchr
	beq x0, x10, .LBB1_257
.LBB1_117:                              //  %if.then389
                                        //    in Loop: Header=BB1_19 Depth=2
	sub x10, x10, x22
	sra x10, x10, 2&31
	blt x18, x10, .LBB1_119
.LBB1_118:                              //  %if.then389
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x18, x10
.LBB1_119:                              //  %if.then389
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x27, x18
	jal x0, .LBB1_192
.LBB1_120:                              //  %cond.true216
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	add x11, x10, 4
	sw x11, 112 ( sp )
	lw x26, 0 ( x10 )
.LBB1_121:                              //  %cond.end238
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x18, 56 ( sp )               //  4-byte Folded Reload
	sra x27, x26, 31&31
	bge x27, x0, .LBB1_108
.LBB1_122:                              //  %if.then498.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	bge x25, x10, .LBB1_124
.LBB1_123:                              //    in Loop: Header=BB1_19 Depth=2
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	and x10, x10, -129
	sw x10, 80 ( sp )               //  4-byte Folded Spill
.LBB1_124:                              //  %if.then498.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x0, 45
	sw x10, 108 ( sp )
	snez x10, x26
	add x10, x10, x27
	sub x26, x0, x26
	sub x27, x0, x10
	jal x0, .LBB1_145
.LBB1_125:                              //  %cond.true280
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	lw x18, 56 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 112 ( sp )
	add x11, x10, 8
	lw x26, 0 ( x10 )
	sw x11, 112 ( sp )
	lw x27, 4 ( x10 )
	jal x0, .LBB1_262
.LBB1_126:                              //  %cond.true408
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	lw x18, 56 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 112 ( sp )
	add x11, x10, 8
	lw x26, 0 ( x10 )
	sw x11, 112 ( sp )
	lw x27, 4 ( x10 )
	seqz x10, x0
	sw x0, 108 ( sp )
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	blt x25, x11, .LBB1_134
	jal x0, .LBB1_135
.LBB1_127:                              //  %cond.true449
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	add x12, x10, 4
	sw x12, 112 ( sp )
	lw x26, 0 ( x10 )
.LBB1_128:                              //  %cond.end471
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x27, fp
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	and x10, x10, 1
	bltu x0, x10, .LBB1_129
	jal x0, .LBB1_131
.LBB1_179:                              //  %cond.true221
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	add x11, x10, 4
	sw x11, 112 ( sp )
	lw x10, 0 ( x10 )
	sll x10, x10, 16&31
	sra x26, x10, 16&31
	lw x18, 56 ( sp )               //  4-byte Folded Reload
	sra x27, x26, 31&31
	bge x27, x0, .LBB1_108
	jal x0, .LBB1_122
.LBB1_180:                              //  %cond.true285
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	add x11, x10, 4
	sw x11, 112 ( sp )
	lw x26, 0 ( x10 )
	jal x0, .LBB1_261
.LBB1_181:                              //  %cond.true413
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	lw x18, 56 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 112 ( sp )
	lw x26, 0 ( x10 )
	jal x0, .LBB1_264
.LBB1_182:                              //  %cond.true454
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	add x12, x10, 4
	sw x12, 112 ( sp )
	lhu x26, 0 ( x10 )
	mv x27, fp
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	and x10, x10, 1
	bltu x0, x10, .LBB1_129
.LBB1_131:                              //    in Loop: Header=BB1_19 Depth=2
	lw x10, 80 ( sp )               //  4-byte Folded Reload
.LBB1_132:                              //  %if.end485
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, x10, -1025
.LBB1_133:                              //  %if.end485
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	add x10, x0, 2
	sw x0, 108 ( sp )
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	bge x25, x11, .LBB1_135
.LBB1_134:                              //    in Loop: Header=BB1_19 Depth=2
	lw x11, 80 ( sp )               //  4-byte Folded Reload
	and x11, x11, -129
	sw x11, 80 ( sp )               //  4-byte Folded Spill
.LBB1_135:                              //  %number
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	bltu x0, x11, .LBB1_140
.LBB1_136:                              //  %number
                                        //    in Loop: Header=BB1_19 Depth=2
	or x11, x27, x26
	bltu x0, x11, .LBB1_140
.LBB1_137:                              //  %if.else567
                                        //    in Loop: Header=BB1_19 Depth=2
	bltu x0, x10, .LBB1_153
.LBB1_138:                              //  %if.else567
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	and x10, x26, 1
	beq x0, x10, .LBB1_154
.LBB1_139:                              //  %if.then574
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x0, 48
	add x25, sp, 512
	sw x10, 512 ( sp )
	jal x0, .LBB1_195
.LBB1_140:                              //  %if.then498
                                        //    in Loop: Header=BB1_19 Depth=2
	beq x0, x10, .LBB1_155
.LBB1_141:                              //  %if.then498
                                        //    in Loop: Header=BB1_19 Depth=2
	xor x11, x10, 1
	beq x0, x11, .LBB1_145
.LBB1_142:                              //  %if.then498
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x25, 36 ( sp )               //  4-byte Folded Reload
	xor x10, x10, 2
	bltu x0, x10, .LBB1_160
.LBB1_143:                              //  %do.body558
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	and x10, x26, 15
	sll x10, x10, 2&31
	add x10, x10, x18
	lw x10, 0 ( x10 )
	sll x11, x27, 28&31
	srl x27, x27, 4&31
	sw x10, -4 ( x25 )
	srl x10, x26, 4&31
	or x26, x11, x10
	add x25, x25, -4
	or x10, x27, x26
	bltu x0, x10, .LBB1_143
.LBB1_144:                              //    in Loop: Header=BB1_19 Depth=2
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_195
.LBB1_145:                              //  %sw.bb517
                                        //    in Loop: Header=BB1_19 Depth=2
	beq x27, fp, .LBB1_161
.LBB1_146:                              //  %sw.bb517
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, fp
	bltu x0, x10, .LBB1_162
.LBB1_147:                              //  %do.body525.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	sw x18, 56 ( sp )               //  4-byte Folded Spill
	and x10, x10, 1024
	bltu x0, x10, .LBB1_163
.LBB1_148:                              //  %do.body525.us.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x25, 36 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_151
.LBB1_149:                              //  %do.body525.us
                                        //    in Loop: Header=BB1_151 Depth=3
	snez x11, x27
.LBB1_150:                              //  %do.body525.us
                                        //    in Loop: Header=BB1_151 Depth=3
	sub x10, x26, x10
	or x10, x10, 48
	sw x10, -4 ( x25 )
	add x25, x25, -4
	mv x26, x18
	mv x27, x22
	beq x0, x11, .LBB1_178
.LBB1_151:                              //  %do.body525.us
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	mv x10, x26
	mv x11, x27
	mv x12, x21
	mv x13, fp
	jal __udivdi3
	mv x12, x21
	mv x13, fp
	mv x18, x10
	mv x22, x11
	jal __muldi3
	bne x27, fp, .LBB1_149
.LBB1_152:                              //    in Loop: Header=BB1_151 Depth=3
	add x11, x0, 9
	sltu x11, x11, x26
	jal x0, .LBB1_150
.LBB1_153:                              //    in Loop: Header=BB1_19 Depth=2
	lw x25, 36 ( sp )               //  4-byte Folded Reload
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_195
.LBB1_154:                              //    in Loop: Header=BB1_19 Depth=2
	lw x25, 36 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_195
.LBB1_155:                              //  %do.body501.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	add x25, sp, 512
.LBB1_156:                              //  %do.body501
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sll x11, x27, 29&31
	srl x10, x26, 3&31
	or x11, x11, x10
	and x10, x26, 7
	or x10, x10, 48
	srl x27, x27, 3&31
	sw x10, 0 ( x25 )
	add x25, x25, -4
	or x12, x27, x11
	mv x26, x11
	bltu x0, x12, .LBB1_156
.LBB1_157:                              //  %do.end508
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	add x11, x25, 4
	and x12, x26, 1
	beq x0, x12, .LBB1_194
.LBB1_158:                              //  %do.end508
                                        //    in Loop: Header=BB1_19 Depth=2
	xor x10, x10, 48
	beq x0, x10, .LBB1_194
.LBB1_159:                              //  %if.then514
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x0, 48
	sw x10, 0 ( x25 )
	jal x0, .LBB1_195
.LBB1_160:                              //  %sw.default
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x25, 20 ( sp )               //  4-byte Folded Reload
	mv x10, x25
	jal wcslen
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	mv x27, x10
	sw fp, 44 ( sp )                //  4-byte Folded Spill
	sw fp, 40 ( sp )                //  4-byte Folded Spill
	mv x10, x11
	sw x18, 56 ( sp )               //  4-byte Folded Spill
	sw x11, 72 ( sp )               //  4-byte Folded Spill
	bge x27, x11, .LBB1_196
	jal x0, .LBB1_197
.LBB1_161:                              //    in Loop: Header=BB1_19 Depth=2
	sltiu x10, x26, 10
	beq x0, x10, .LBB1_147
.LBB1_162:                              //  %if.then520
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x26, 48
	lw x26, 80 ( sp )               //  4-byte Folded Reload
	sw x10, 512 ( sp )
	add x25, sp, 512
	jal x0, .LBB1_195
.LBB1_194:                              //    in Loop: Header=BB1_19 Depth=2
	mv x25, x11
	jal x0, .LBB1_195
.LBB1_163:                              //  %do.body525.preheader5
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x25, 36 ( sp )               //  4-byte Folded Reload
	sw x24, 64 ( sp )               //  4-byte Folded Spill
	mv x24, fp
	jal x0, .LBB1_165
.LBB1_164:                              //  %if.end552
                                        //    in Loop: Header=BB1_165 Depth=3
	snez x10, x27
	mv x26, x22
	mv x27, x18
	beq x0, x10, .LBB1_177
.LBB1_165:                              //  %do.body525
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	mv x10, x26
	mv x11, x27
	mv x12, x21
	mv x13, fp
	jal __udivdi3
	mv x12, x21
	mv x13, fp
	mv x22, x10
	mv x18, x11
	jal __muldi3
	lw x11, 52 ( sp )               //  4-byte Folded Reload
	sub x10, x26, x10
	or x10, x10, 48
	sw x10, -4 ( x25 )
	lb x11, 0 ( x11 )
	add x10, x25, -4
	add x24, x24, 1
	bne x24, x11, .LBB1_169
.LBB1_166:                              //  %land.lhs.true536
                                        //    in Loop: Header=BB1_165 Depth=3
	beq x27, fp, .LBB1_170
.LBB1_167:                              //  %land.lhs.true536
                                        //    in Loop: Header=BB1_165 Depth=3
	mv x12, fp
	bltu x0, x12, .LBB1_169
.LBB1_171:                              //  %land.lhs.true536
                                        //    in Loop: Header=BB1_165 Depth=3
	and x11, x11, 255
	xor x11, x11, 127
	beq x0, x11, .LBB1_169
.LBB1_172:                              //  %if.then543
                                        //    in Loop: Header=BB1_165 Depth=3
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	lw x11, 52 ( sp )               //  4-byte Folded Reload
	sw x10, -8 ( x25 )
	lbu x10, 1 ( x11 )
	beq x10, fp, .LBB1_174
.LBB1_173:                              //  %if.then543
                                        //    in Loop: Header=BB1_165 Depth=3
	add x11, x11, 1
	sw x11, 52 ( sp )               //  4-byte Folded Spill
.LBB1_174:                              //  %if.then543
                                        //    in Loop: Header=BB1_165 Depth=3
	add x25, x25, -8
	mv x24, fp
	bne x27, fp, .LBB1_164
	jal x0, .LBB1_176
.LBB1_170:                              //    in Loop: Header=BB1_165 Depth=3
	sltiu x12, x26, 10
	beq x0, x12, .LBB1_171
.LBB1_169:                              //    in Loop: Header=BB1_165 Depth=3
	mv x25, x10
	bne x27, fp, .LBB1_164
.LBB1_176:                              //    in Loop: Header=BB1_165 Depth=3
	add x10, x0, 9
	sltu x10, x10, x26
	mv x26, x22
	mv x27, x18
	bltu x0, x10, .LBB1_165
.LBB1_177:                              //    in Loop: Header=BB1_19 Depth=2
	lw x24, 64 ( sp )               //  4-byte Folded Reload
.LBB1_178:                              //    in Loop: Header=BB1_19 Depth=2
	lw x22, 60 ( sp )               //  4-byte Folded Reload
	lw x18, 56 ( sp )               //  4-byte Folded Reload
	lw x26, 80 ( sp )               //  4-byte Folded Reload
.LBB1_195:                              //  %if.end577
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	sw fp, 44 ( sp )                //  4-byte Folded Spill
	sw fp, 40 ( sp )                //  4-byte Folded Spill
	sub x10, x10, x25
	sra x27, x10, 2&31
	mv x10, x11
	sw x18, 56 ( sp )               //  4-byte Folded Spill
	sw x11, 72 ( sp )               //  4-byte Folded Spill
	blt x27, x11, .LBB1_197
.LBB1_196:                              //  %sw.epilog590
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x27
.LBB1_197:                              //  %sw.epilog590
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 108 ( sp )
	and x18, x26, 2
	snez x11, x11
	add x11, x11, x10
	srl x10, x18, 1&31
	beq x0, x10, .LBB1_199
.LBB1_198:                              //    in Loop: Header=BB1_19 Depth=2
	add x11, x11, 2
.LBB1_199:                              //  %sw.epilog590
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x26, 80 ( sp )               //  4-byte Folded Spill
	and x26, x26, 132
	sw x11, 64 ( sp )               //  4-byte Folded Spill
	beq x0, x26, .LBB1_200
.LBB1_208:                              //  %if.end655
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 108 ( sp )
	beq x0, x10, .LBB1_214
.LBB1_209:                              //  %if.then657
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 8 ( x19 )
	add x10, x10, 4
	sw x10, 8 ( x19 )
	add x10, x0, 4
	sw x10, 4 ( x9 )
	add x10, sp, 108
	sw x10, 0 ( x9 )
	lw x10, 100 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 100 ( sp )
	bltu x0, x10, .LBB1_211
.LBB1_210:                              //  %if.then667
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x22
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x9, sp, 1140
	beq x0, x10, .LBB1_214
	jal x0, .LBB1_270
.LBB1_200:                              //  %if.then609
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 64 ( sp )               //  4-byte Folded Reload
	mv x22, x24
	sub x24, x20, x10
	bge x0, x24, .LBB1_213
.LBB1_201:                              //  %while.cond614.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x9 )
	slti x10, x24, 17
	beq x0, x10, .LBB1_204
	jal x0, .LBB1_206
.LBB1_202:                              //    in Loop: Header=BB1_204 Depth=3
	add x9, x9, 8
.LBB1_203:                              //  %if.end633
                                        //    in Loop: Header=BB1_204 Depth=3
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	add x24, x24, -16
	sw x10, 0 ( x9 )
	add x10, x0, 16
	bge x10, x24, .LBB1_206
.LBB1_204:                              //  %while.body617
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	add x10, x10, 64
	sw x10, 8 ( x19 )
	add x10, x0, 64
	sw x10, 4 ( x9 )
	lw x10, 100 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 100 ( sp )
	bltu x0, x10, .LBB1_202
.LBB1_205:                              //  %if.then627
                                        //    in Loop: Header=BB1_204 Depth=3
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	mv x11, x22
	mv x12, x19
	jal __sprint_r
	add x9, sp, 1140
	beq x0, x10, .LBB1_203
	jal x0, .LBB1_269
.LBB1_211:                              //    in Loop: Header=BB1_19 Depth=2
	add x9, x9, 8
	bltu x0, x18, .LBB1_215
	jal x0, .LBB1_217
.LBB1_206:                              //  %while.end635
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 8 ( x19 )
	sll x10, x24, 2&31
	sw x10, 4 ( x9 )
	add x11, x10, x11
	lw x10, 100 ( sp )
	sw x11, 8 ( x19 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 100 ( sp )
	bltu x0, x10, .LBB1_212
.LBB1_207:                              //  %if.then647
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	mv x24, x22
	mv x11, x24
	mv x12, x19
	mv x22, x10
	jal __sprint_r
	add x9, sp, 1140
	beq x0, x10, .LBB1_208
	jal x0, .LBB1_270
.LBB1_212:                              //    in Loop: Header=BB1_19 Depth=2
	add x9, x9, 8
.LBB1_213:                              //    in Loop: Header=BB1_19 Depth=2
	mv x24, x22
	lw x22, 60 ( sp )               //  4-byte Folded Reload
	lw x10, 108 ( sp )
	bltu x0, x10, .LBB1_209
.LBB1_214:                              //  %if.end674
                                        //    in Loop: Header=BB1_19 Depth=2
	beq x0, x18, .LBB1_217
.LBB1_215:                              //  %if.then677
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 8 ( x19 )
	add x10, x10, 8
	sw x10, 8 ( x19 )
	add x10, x0, 8
	sw x10, 4 ( x9 )
	add x10, sp, 88
	sw x10, 0 ( x9 )
	lw x10, 100 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 100 ( sp )
	bltu x0, x10, .LBB1_226
.LBB1_216:                              //  %if.then688
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x22
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x9, sp, 1140
	bltu x0, x10, .LBB1_270
.LBB1_217:                              //  %if.end695
                                        //    in Loop: Header=BB1_19 Depth=2
	xor x10, x26, 128
	bltu x0, x10, .LBB1_227
.LBB1_218:                              //  %if.then699
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 64 ( sp )               //  4-byte Folded Reload
	add x26, sp, 1140
	sub x18, x20, x10
	bge x0, x18, .LBB1_228
.LBB1_219:                              //  %while.cond704.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 84 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x9 )
	slti x10, x18, 17
	beq x0, x10, .LBB1_222
	jal x0, .LBB1_224
.LBB1_220:                              //    in Loop: Header=BB1_222 Depth=3
	add x9, x9, 8
.LBB1_221:                              //  %if.end723
                                        //    in Loop: Header=BB1_222 Depth=3
	lw x10, 84 ( sp )               //  4-byte Folded Reload
	add x18, x18, -16
	sw x10, 0 ( x9 )
	add x10, x0, 16
	bge x10, x18, .LBB1_224
.LBB1_222:                              //  %while.body707
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	add x10, x10, 64
	sw x10, 8 ( x19 )
	add x10, x0, 64
	sw x10, 4 ( x9 )
	lw x10, 100 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 100 ( sp )
	bltu x0, x10, .LBB1_220
.LBB1_223:                              //  %if.then717
                                        //    in Loop: Header=BB1_222 Depth=3
	mv x10, x22
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	mv x9, x26
	beq x0, x10, .LBB1_221
	jal x0, .LBB1_270
.LBB1_224:                              //  %while.end725
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 8 ( x19 )
	sll x10, x18, 2&31
	sw x10, 4 ( x9 )
	add x11, x10, x11
	lw x10, 100 ( sp )
	sw x11, 8 ( x19 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 100 ( sp )
	bltu x0, x10, .LBB1_256
.LBB1_225:                              //  %if.then737
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x22
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	mv x9, x26
	beq x0, x10, .LBB1_228
	jal x0, .LBB1_270
.LBB1_226:                              //    in Loop: Header=BB1_19 Depth=2
	add x9, x9, 8
	xor x10, x26, 128
	beq x0, x10, .LBB1_218
.LBB1_227:                              //    in Loop: Header=BB1_19 Depth=2
	add x26, sp, 1140
.LBB1_228:                              //  %if.end745
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	sub x18, x10, x27
	bge x0, x18, .LBB1_237
.LBB1_229:                              //  %while.cond750.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 84 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x9 )
	slti x10, x18, 17
	beq x0, x10, .LBB1_232
	jal x0, .LBB1_234
.LBB1_230:                              //    in Loop: Header=BB1_232 Depth=3
	add x9, x9, 8
.LBB1_231:                              //  %if.end769
                                        //    in Loop: Header=BB1_232 Depth=3
	lw x10, 84 ( sp )               //  4-byte Folded Reload
	add x18, x18, -16
	sw x10, 0 ( x9 )
	add x10, x0, 16
	bge x10, x18, .LBB1_234
.LBB1_232:                              //  %while.body753
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	add x10, x10, 64
	sw x10, 8 ( x19 )
	add x10, x0, 64
	sw x10, 4 ( x9 )
	lw x10, 100 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 100 ( sp )
	bltu x0, x10, .LBB1_230
.LBB1_233:                              //  %if.then763
                                        //    in Loop: Header=BB1_232 Depth=3
	mv x10, x22
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	mv x9, x26
	beq x0, x10, .LBB1_231
	jal x0, .LBB1_270
.LBB1_234:                              //  %while.end771
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 8 ( x19 )
	sll x10, x18, 2&31
	sw x10, 4 ( x9 )
	add x11, x10, x11
	lw x10, 100 ( sp )
	sw x11, 8 ( x19 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 100 ( sp )
	bltu x0, x10, .LBB1_236
.LBB1_235:                              //  %if.then783
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x22
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	mv x9, x26
	beq x0, x10, .LBB1_237
	jal x0, .LBB1_270
.LBB1_236:                              //    in Loop: Header=BB1_19 Depth=2
	add x9, x9, 8
.LBB1_237:                              //  %if.end790
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 8 ( x19 )
	sll x10, x27, 2&31
	sw x10, 4 ( x9 )
	sw x25, 0 ( x9 )
	add x11, x10, x11
	lw x10, 100 ( sp )
	sw x11, 8 ( x19 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 100 ( sp )
	bltu x0, x10, .LBB1_246
.LBB1_238:                              //  %if.then802
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x22
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	lw x27, 48 ( sp )               //  4-byte Folded Reload
	lw x18, 64 ( sp )               //  4-byte Folded Reload
	mv x11, x26
	add x25, x0, -1
	bltu x0, x10, .LBB1_271
.LBB1_239:                              //  %if.end808
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	and x10, x10, 4
	beq x0, x10, .LBB1_249
.LBB1_240:                              //  %if.then811
                                        //    in Loop: Header=BB1_19 Depth=2
	sub x9, x20, x18
	bge x0, x9, .LBB1_249
.LBB1_241:                              //  %while.cond816.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x11 )
	slti x10, x9, 17
	beq x0, x10, .LBB1_244
	jal x0, .LBB1_247
.LBB1_242:                              //    in Loop: Header=BB1_244 Depth=3
	add x11, x11, 8
.LBB1_243:                              //  %if.end835
                                        //    in Loop: Header=BB1_244 Depth=3
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	add x9, x9, -16
	sw x10, 0 ( x11 )
	add x10, x0, 16
	bge x10, x9, .LBB1_247
.LBB1_244:                              //  %while.body819
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	add x10, x10, 64
	sw x10, 8 ( x19 )
	add x10, x0, 64
	sw x10, 4 ( x11 )
	lw x10, 100 ( sp )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 100 ( sp )
	bltu x0, x10, .LBB1_242
.LBB1_245:                              //  %if.then829
                                        //    in Loop: Header=BB1_244 Depth=3
	mv x10, x22
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	mv x11, x26
	beq x0, x10, .LBB1_243
	jal x0, .LBB1_271
.LBB1_246:                              //    in Loop: Header=BB1_19 Depth=2
	lw x27, 48 ( sp )               //  4-byte Folded Reload
	lw x18, 64 ( sp )               //  4-byte Folded Reload
	add x11, x9, 8
	add x25, x0, -1
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	and x10, x10, 4
	bltu x0, x10, .LBB1_240
	jal x0, .LBB1_249
.LBB1_247:                              //  %while.end837
                                        //    in Loop: Header=BB1_19 Depth=2
	sll x10, x9, 2&31
	sw x10, 4 ( x11 )
	lw x11, 8 ( x19 )
	add x10, x10, x11
	lw x11, 100 ( sp )
	sw x10, 8 ( x19 )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 100 ( sp )
	bltu x0, x11, .LBB1_250
.LBB1_248:                              //  %if.then849
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x22
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	bltu x0, x10, .LBB1_271
.LBB1_249:                              //  %if.end857thread-pre-split
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 104 ( sp )
.LBB1_250:                              //  %if.end857
                                        //    in Loop: Header=BB1_19 Depth=2
	blt x18, x20, .LBB1_252
.LBB1_251:                              //  %if.end857
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x20, x18
.LBB1_252:                              //  %if.end857
                                        //    in Loop: Header=BB1_19 Depth=2
	add x27, x27, x20
	beq x0, x10, .LBB1_254
.LBB1_253:                              //  %land.lhs.true867
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x22
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	bltu x0, x10, .LBB1_271
.LBB1_254:                              //  %if.end871
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	sw x0, 100 ( sp )
	beq x0, x10, .LBB1_16
.LBB1_255:                              //  %if.then876
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 40 ( sp )               //  4-byte Folded Reload
	mv x10, x22
	jal _free_r
	mv x9, x26
	mv x18, x23
	lw x10, 0 ( x18 )
	bltu x0, x10, .LBB1_17
	jal x0, .LBB1_19
.LBB1_256:                              //    in Loop: Header=BB1_19 Depth=2
	add x9, x9, 8
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	sub x18, x10, x27
	blt x0, x18, .LBB1_229
	jal x0, .LBB1_237
.LBB1_183:                              //  %if.else349
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x22
	jal strlen
	mv x25, x10
.LBB1_184:                              //  %if.end351
                                        //    in Loop: Header=BB1_19 Depth=2
	sltiu x10, x25, 100
	sll x13, x25, 2&31
	sw x25, 72 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB1_187
.LBB1_185:                              //  %if.then354
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	add x11, x13, 4
	mv x18, x13
	jal _malloc_r
	mv x25, x10
	beq x0, x25, .LBB1_277
.LBB1_186:                              //    in Loop: Header=BB1_19 Depth=2
	sw x25, 44 ( sp )               //  4-byte Folded Spill
	sw x25, 40 ( sp )               //  4-byte Folded Spill
	mv x13, x18
.LBB1_188:                              //  %for.body.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	mv x10, x25
.LBB1_189:                              //  %for.body
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lb x12, 0 ( x22 )
	add x22, x22, 1
	add x11, x11, -1
	sw x12, 0 ( x10 )
	add x10, x10, 4
	bltu x0, x11, .LBB1_189
.LBB1_190:                              //  %cleanup377.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x13, x25
	lw x27, 72 ( sp )               //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	mv x11, fp
	jal x0, .LBB1_259
.LBB1_191:                              //  %if.else400
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x22
	jal wcslen
	mv x27, x10
.LBB1_192:                              //  %sw.epilog590
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x11, fp
	sw fp, 40 ( sp )                //  4-byte Folded Spill
	sw fp, 44 ( sp )                //  4-byte Folded Spill
	jal x0, .LBB1_258
.LBB1_257:                              //    in Loop: Header=BB1_19 Depth=2
	sw fp, 40 ( sp )                //  4-byte Folded Spill
	sw fp, 44 ( sp )                //  4-byte Folded Spill
	mv x27, x18
	mv x11, fp
.LBB1_258:                              //  %sw.epilog590
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x25, x22
.LBB1_259:                              //  %sw.epilog590
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x22, 60 ( sp )               //  4-byte Folded Reload
	lw x18, 56 ( sp )               //  4-byte Folded Reload
	mv x10, x11
	sw x18, 56 ( sp )               //  4-byte Folded Spill
	sw x11, 72 ( sp )               //  4-byte Folded Spill
	bge x27, x11, .LBB1_196
	jal x0, .LBB1_197
.LBB1_260:                              //  %cond.true290
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	add x11, x10, 4
	sw x11, 112 ( sp )
	lhu x26, 0 ( x10 )
.LBB1_261:                              //  %cond.false294
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x18, 56 ( sp )               //  4-byte Folded Reload
	mv x27, fp
.LBB1_262:                              //  %cond.end310
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	and x10, x10, -1025
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	mv x10, fp
	sw x0, 108 ( sp )
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	blt x25, x11, .LBB1_134
	jal x0, .LBB1_135
.LBB1_263:                              //  %cond.true418
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 112 ( sp )
	lw x18, 56 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 112 ( sp )
	lhu x26, 0 ( x10 )
.LBB1_264:                              //  %cond.end435
                                        //    in Loop: Header=BB1_19 Depth=2
	seqz x10, x0
	mv x27, fp
	sw x0, 108 ( sp )
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	blt x25, x11, .LBB1_134
	jal x0, .LBB1_135
.LBB1_265:                              //  %if.then
	mv x10, x22
	jal __sinit
	lhu x10, 12 ( x24 )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB1_283
.LBB1_284:                              //  %if.then
	jal x0, .LBB1_3
.LBB1_283:                              //  %if.then
	jal x0, .LBB1_4
.LBB1_266:                              //  %done
	lw x10, 104 ( sp )
	beq x0, x10, .LBB1_268
.LBB1_267:                              //  %land.lhs.true880
	add x12, sp, 96
	mv x10, x22
	mv x11, x24
	jal __sprint_r
	bltu x0, x10, .LBB1_273
.LBB1_268:                              //  %if.end884
	sw x0, 100 ( sp )
	lbu x10, 12 ( x24 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB1_275
	jal x0, .LBB1_274
.LBB1_269:
	mv x24, x22
	lw x22, 60 ( sp )               //  4-byte Folded Reload
.LBB1_270:
	lw x27, 48 ( sp )               //  4-byte Folded Reload
.LBB1_271:                              //  %error
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB1_273
.LBB1_272:                              //  %if.then889
	lw x11, 40 ( sp )               //  4-byte Folded Reload
	mv x10, x22
	jal _free_r
.LBB1_273:                              //  %if.end890
	lbu x10, 12 ( x24 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB1_275
.LBB1_274:                              //  %if.end890
	add x27, x0, -1
.LBB1_275:                              //  %cleanup912
	mv x10, x27
	lw fp, 1244 ( sp )              //  4-byte Folded Reload
	lw x27, 1248 ( sp )             //  4-byte Folded Reload
	lw x26, 1252 ( sp )             //  4-byte Folded Reload
	lw x25, 1256 ( sp )             //  4-byte Folded Reload
	lw x24, 1260 ( sp )             //  4-byte Folded Reload
	lw x23, 1264 ( sp )             //  4-byte Folded Reload
	lw x22, 1268 ( sp )             //  4-byte Folded Reload
	lw x21, 1272 ( sp )             //  4-byte Folded Reload
	lw x20, 1276 ( sp )             //  4-byte Folded Reload
	lw x19, 1280 ( sp )             //  4-byte Folded Reload
	lw x18, 1284 ( sp )             //  4-byte Folded Reload
	lw x9, 1288 ( sp )              //  4-byte Folded Reload
	lw ra, 1292 ( sp )              //  4-byte Folded Reload
	add sp, sp, 1296
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_276:                              //  %cleanup
	lh x10, 12 ( x24 )
	lw x27, 48 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_278
.LBB1_277:                              //  %cleanup377
	lh x10, 12 ( x24 )
.LBB1_278:                              //  %cleanup377
	or x10, x10, 64
	sh x10, 12 ( x24 )
	lbu x10, 12 ( x24 )
	mv x11, x0
	and x10, x10, 64
	bne x10, x11, .LBB1_274
	jal x0, .LBB1_275
.Lfunc_end1:
	.size	_vfiwprintf_r, .Lfunc_end1-_vfiwprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_266
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_38
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_40
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_41
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_46
	.long	.LBB1_49
	.long	.LBB1_109
	.long	.LBB1_48
	.long	.LBB1_32
	.long	.LBB1_109
	.long	.LBB1_52
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_72
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_75
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_86
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_72
	.long	.LBB1_81
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_54
	.long	.LBB1_81
	.long	.LBB1_37
	.long	.LBB1_109
	.long	.LBB1_56
	.long	.LBB1_109
	.long	.LBB1_64
	.long	.LBB1_89
	.long	.LBB1_94
	.long	.LBB1_37
	.long	.LBB1_109
	.long	.LBB1_75
	.long	.LBB1_51
	.long	.LBB1_95
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_100
	.long	.LBB1_109
	.long	.LBB1_51
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	_vfiwprintf_r.blanks,@object //  @_vfiwprintf_r.blanks
	.p2align	2
_vfiwprintf_r.blanks:
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.size	_vfiwprintf_r.blanks, 64

	.address_space	0
	.type	_vfiwprintf_r.zeroes,@object //  @_vfiwprintf_r.zeroes
	.p2align	2
_vfiwprintf_r.zeroes:
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.size	_vfiwprintf_r.zeroes, 64

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2
.str:
	.long	48                      //  0x30
	.long	49                      //  0x31
	.long	50                      //  0x32
	.long	51                      //  0x33
	.long	52                      //  0x34
	.long	53                      //  0x35
	.long	54                      //  0x36
	.long	55                      //  0x37
	.long	56                      //  0x38
	.long	57                      //  0x39
	.long	97                      //  0x61
	.long	98                      //  0x62
	.long	99                      //  0x63
	.long	100                     //  0x64
	.long	101                     //  0x65
	.long	102                     //  0x66
	.long	0                       //  0x0
	.size	.str, 68

	.address_space	0
	.type	.str.1,@object          //  @.str.1
	.p2align	2
.str.1:
	.long	40                      //  0x28
	.long	110                     //  0x6e
	.long	117                     //  0x75
	.long	108                     //  0x6c
	.long	108                     //  0x6c
	.long	41                      //  0x29
	.long	0                       //  0x0
	.size	.str.1, 28

	.address_space	0
	.type	.str.2,@object          //  @.str.2
	.p2align	2
.str.2:
	.long	48                      //  0x30
	.long	49                      //  0x31
	.long	50                      //  0x32
	.long	51                      //  0x33
	.long	52                      //  0x34
	.long	53                      //  0x35
	.long	54                      //  0x36
	.long	55                      //  0x37
	.long	56                      //  0x38
	.long	57                      //  0x39
	.long	65                      //  0x41
	.long	66                      //  0x42
	.long	67                      //  0x43
	.long	68                      //  0x44
	.long	69                      //  0x45
	.long	70                      //  0x46
	.long	0                       //  0x0
	.size	.str.2, 68

	.address_space	0
	.type	.str.3,@object          //  @.str.3
	.p2align	2
.str.3:
	.long	98                      //  0x62
	.long	117                     //  0x75
	.long	103                     //  0x67
	.long	32                      //  0x20
	.long	105                     //  0x69
	.long	110                     //  0x6e
	.long	32                      //  0x20
	.long	118                     //  0x76
	.long	102                     //  0x66
	.long	112                     //  0x70
	.long	114                     //  0x72
	.long	105                     //  0x69
	.long	110                     //  0x6e
	.long	116                     //  0x74
	.long	102                     //  0x66
	.long	58                      //  0x3a
	.long	32                      //  0x20
	.long	98                      //  0x62
	.long	97                      //  0x61
	.long	100                     //  0x64
	.long	32                      //  0x20
	.long	98                      //  0x62
	.long	97                      //  0x61
	.long	115                     //  0x73
	.long	101                     //  0x65
	.long	0                       //  0x0
	.size	.str.3, 104


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
