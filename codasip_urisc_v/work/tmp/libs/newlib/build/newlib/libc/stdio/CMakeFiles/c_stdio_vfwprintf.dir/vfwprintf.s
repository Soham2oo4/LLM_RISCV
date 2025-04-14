	.text
	.file	"vfwprintf.c"
	.globl	vfwprintf               //  -- Begin function vfwprintf
	.type	vfwprintf,@function
vfwprintf:                              //  @vfwprintf
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
	j _vfwprintf_r
.Lfunc_end0:
	.size	vfwprintf, .Lfunc_end0-vfwprintf
	.cfi_endproc
                                        //  -- End function
	.globl	_vfwprintf_r            //  -- Begin function _vfwprintf_r
	.type	_vfwprintf_r,@function
_vfwprintf_r:                           //  @_vfwprintf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -1392
	.cfi_adjust_cfa_offset 1392
	sw x9, 1384 ( sp )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x13
	sw x18, 1380 ( sp )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x22, 1364 ( sp )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x26, 1348 ( sp )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw ra, 1388 ( sp )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 1376 ( sp )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 1372 ( sp )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 1368 ( sp )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23, 1360 ( sp )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 1356 ( sp )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 1352 ( sp )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x27, 1344 ( sp )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 1340 ( sp )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv x22, x12
	mv x18, x11
	mv x26, x10
	sw x9, 180 ( sp )
	sw x0, 172 ( sp )
	sw x0, 128 ( sp )
	jal _localeconv_r
	lw x10, 0 ( x10 )
	lb x10, 0 ( x10 )
	sw x10, 168 ( sp )
	beq x0, x26, .LBB1_2
.LBB1_1:                                //  %land.lhs.true
	lw x10, 56 ( x26 )
	bltu x0, x10, .LBB1_2
.LBB1_519:                              //  %land.lhs.true
	jal x0, .LBB1_502
.LBB1_2:                                //  %if.end
	lhu x10, 12 ( x18 )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB1_4
.LBB1_3:                                //  %if.then14
	lw x12, 100 ( x18 )
	or x10, x11, x10
	sh x10, 12 ( x18 )
	or x12, x11, x12
	sw x12, 100 ( x18 )
.LBB1_4:                                //  %do.end22
	and x11, x10, 8
	beq x0, x11, .LBB1_13
.LBB1_5:                                //  %lor.lhs.false
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB1_13
.LBB1_6:                                //  %if.end45
	and x11, x10, 26
	xor x11, x11, 10
	bltu x0, x11, .LBB1_15
.LBB1_7:                                //  %land.lhs.true51
	lh x12, 14 ( x18 )
	blt x12, x0, .LBB1_15
.LBB1_8:                                //  %if.then55
	lui x11, %hi( 65533 )
	add x11, x11, %lo( 65533 )
	and x10, x11, x10
	add x11, sp, 1236
	sh x10, 12 ( x11 )
	lw x10, 100 ( x18 )
	sh x12, 14 ( x11 )
	mv x12, x22
	mv x13, x9
	sw x10, 100 ( x11 )
	lw x10, 28 ( x18 )
	sw x0, 24 ( x11 )
	sw x10, 28 ( x11 )
	lw x10, 36 ( x18 )
	sw x10, 36 ( x11 )
	add x10, sp, 212
	sw x10, 16 ( x11 )
	sw x10, 1236 ( sp )
	add x10, x0, 1024
	sw x10, 8 ( x11 )
	sw x10, 1256 ( sp )
	mv x10, x26
	jal _vfwprintf_r
	mv x24, x10
	blt x24, x0, .LBB1_11
.LBB1_9:                                //  %land.lhs.true.i
	add x11, sp, 1236
	mv x10, x26
	jal _fflush_r
	mv x11, x0
	beq x10, x11, .LBB1_11
.LBB1_10:                               //  %land.lhs.true.i
	add x24, x0, -1
.LBB1_11:                               //  %if.end.i
	lbu x10, 1248 ( sp )
	and x10, x10, 64
	bltu x0, x10, .LBB1_12
.LBB1_520:                              //  %if.end.i
	jal x0, .LBB1_513
.LBB1_12:                               //  %if.then15.i
	lh x10, 12 ( x18 )
	or x10, x10, 64
	sh x10, 12 ( x18 )
	jal x0, .LBB1_513
.LBB1_13:                               //  %land.lhs.true29
	mv x10, x26
	mv x11, x18
	jal __swsetup_r
	beq x0, x10, .LBB1_14
.LBB1_521:                              //  %land.lhs.true29
	jal x0, .LBB1_512
.LBB1_14:                               //  %land.lhs.true29.if.end45_crit_edge
	lhu x10, 12 ( x18 )
	and x11, x10, 26
	xor x11, x11, 10
	beq x0, x11, .LBB1_7
.LBB1_15:                               //  %if.end69
	add x10, sp, 1236
	sw x10, 116 ( sp )
	add x10, sp, 184
	add x10, x10, 24
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	add x10, sp, 212
	add x10, x10, 400
	sw x10, 44 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _vfwprintf_r.blanks )
	add x10, x10, %lo( _vfwprintf_r.blanks )
	sw x10, 100 ( sp )              //  4-byte Folded Spill
	lui x10, %hi( _vfwprintf_r.zeroes )
	add x10, x10, %lo( _vfwprintf_r.zeroes )
	sw x10, 104 ( sp )              //  4-byte Folded Spill
	lui x10, %hi( .str.8 )
	add x10, x10, %lo( .str.8 )
	sw x10, 32 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( JTI1_0 )
	add x10, x10, %lo( JTI1_0 )
	add x11, sp, 132
	mv x23, x0
	sw x10, 76 ( sp )               //  4-byte Folded Spill
	add x10, x11, 8
	add x12, sp, 116
	sw x10, 28 ( sp )               //  4-byte Folded Spill
	add x10, x11, 12
	add x21, x0, 10
	add x19, x0, 90
	mv x24, x23
	sw x0, 8 ( x12 )
	sw x23, 92 ( sp )               //  4-byte Folded Spill
	sw x0, 120 ( sp )
	sw x23, 40 ( sp )               //  4-byte Folded Spill
	sw x23, 36 ( sp )               //  4-byte Folded Spill
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	sw x23, 60 ( sp )               //  4-byte Folded Spill
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	sw x18, 84 ( sp )               //  4-byte Folded Spill
	sw x26, 88 ( sp )               //  4-byte Folded Spill
.LBB1_16:                               //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_19 Depth 2
                                        //        Child Loop BB1_26 Depth 3
                                        //          Child Loop BB1_27 Depth 4
                                        //            Child Loop BB1_30 Depth 5
                                        //              Child Loop BB1_35 Depth 6
                                        //            Child Loop BB1_29 Depth 5
                                        //        Child Loop BB1_229 Depth 3
                                        //        Child Loop BB1_165 Depth 3
                                        //        Child Loop BB1_152 Depth 3
                                        //        Child Loop BB1_234 Depth 3
                                        //        Child Loop BB1_248 Depth 3
                                        //        Child Loop BB1_275 Depth 3
                                        //        Child Loop BB1_202 Depth 3
                                        //        Child Loop BB1_207 Depth 3
                                        //        Child Loop BB1_304 Depth 3
                                        //        Child Loop BB1_322 Depth 3
                                        //        Child Loop BB1_332 Depth 3
                                        //        Child Loop BB1_376 Depth 3
                                        //        Child Loop BB1_397 Depth 3
                                        //        Child Loop BB1_422 Depth 3
                                        //          Child Loop BB1_439 Depth 4
                                        //        Child Loop BB1_483 Depth 3
                                        //        Child Loop BB1_467 Depth 3
                                        //        Child Loop BB1_382 Depth 3
                                        //        Child Loop BB1_458 Depth 3
                                        //      Child Loop BB1_17 Depth 2
	add x20, sp, 1236
	mv fp, x22
	lw x10, 0 ( fp )
	beq x0, x10, .LBB1_19
.LBB1_17:                               //  %while.cond
                                        //    Parent Loop BB1_16 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	xor x11, x10, 37
	beq x0, x11, .LBB1_19
.LBB1_18:                               //  %while.body
                                        //    in Loop: Header=BB1_17 Depth=2
	add fp, fp, 4
	lw x10, 0 ( fp )
	bltu x0, x10, .LBB1_17
.LBB1_19:                               //  %while.end
                                        //    Parent Loop BB1_16 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_26 Depth 3
                                        //          Child Loop BB1_27 Depth 4
                                        //            Child Loop BB1_30 Depth 5
                                        //              Child Loop BB1_35 Depth 6
                                        //            Child Loop BB1_29 Depth 5
                                        //        Child Loop BB1_229 Depth 3
                                        //        Child Loop BB1_165 Depth 3
                                        //        Child Loop BB1_152 Depth 3
                                        //        Child Loop BB1_234 Depth 3
                                        //        Child Loop BB1_248 Depth 3
                                        //        Child Loop BB1_275 Depth 3
                                        //        Child Loop BB1_202 Depth 3
                                        //        Child Loop BB1_207 Depth 3
                                        //        Child Loop BB1_304 Depth 3
                                        //        Child Loop BB1_322 Depth 3
                                        //        Child Loop BB1_332 Depth 3
                                        //        Child Loop BB1_376 Depth 3
                                        //        Child Loop BB1_397 Depth 3
                                        //        Child Loop BB1_422 Depth 3
                                        //          Child Loop BB1_439 Depth 4
                                        //        Child Loop BB1_483 Depth 3
                                        //        Child Loop BB1_467 Depth 3
                                        //        Child Loop BB1_382 Depth 3
                                        //        Child Loop BB1_458 Depth 3
	sub x9, fp, x22
	beq x0, x9, .LBB1_24
.LBB1_20:                               //  %if.then76
                                        //    in Loop: Header=BB1_19 Depth=2
	add x12, sp, 116
	lw x10, 8 ( x12 )
	sw x9, 4 ( x20 )
	sw x22, 0 ( x20 )
	add x10, x9, x10
	sw x10, 8 ( x12 )
	lw x10, 120 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_22
.LBB1_21:                               //  %if.then83
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	mv x11, x18
	jal __sprint_r
	add x20, sp, 1236
	beq x0, x10, .LBB1_23
	jal x0, .LBB1_511
.LBB1_22:                               //    in Loop: Header=BB1_19 Depth=2
	add x20, x20, 8
.LBB1_23:                               //  %if.end89
                                        //    in Loop: Header=BB1_19 Depth=2
	sra x10, x9, 2&31
	add x24, x24, x10
	lw x10, 0 ( fp )
.LBB1_24:                               //  %if.end91
                                        //    in Loop: Header=BB1_19 Depth=2
	add x9, sp, 116
	bltu x0, x10, .LBB1_25
.LBB1_522:                              //  %if.end91
	jal x0, .LBB1_504
.LBB1_25:                               //  %if.end95
                                        //    in Loop: Header=BB1_19 Depth=2
	add x11, fp, 4
	add x10, x0, -1
	mv fp, x23
	mv x25, x23
	sw x0, 176 ( sp )
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	sw x24, 72 ( sp )               //  4-byte Folded Spill
.LBB1_26:                               //  %rflag
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_27 Depth 4
                                        //            Child Loop BB1_30 Depth 5
                                        //              Child Loop BB1_35 Depth 6
                                        //            Child Loop BB1_29 Depth 5
	lw x27, 0 ( x11 )
	add x22, x11, 4
.LBB1_27:                               //  %reswitch
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_26 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB1_30 Depth 5
                                        //              Child Loop BB1_35 Depth 6
                                        //            Child Loop BB1_29 Depth 5
	add x10, x27, -49
	sltiu x10, x10, 9
	beq x0, x10, .LBB1_30
.LBB1_28:                               //  %do.body155.preheader
                                        //    in Loop: Header=BB1_27 Depth=4
	mv x25, x23
.LBB1_29:                               //  %do.body155
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_26 Depth=3
                                        //          Parent Loop BB1_27 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	mv x10, x25
	mv x11, x21
	jal __mulsi3
	add x10, x10, x27
	lw x27, 0 ( x22 )
	add x25, x10, -48
	add x22, x22, 4
	add x10, x27, -48
	sltiu x10, x10, 10
	bltu x0, x10, .LBB1_29
	jal x0, .LBB1_27
.LBB1_38:                               //    in Loop: Header=BB1_30 Depth=5
	mv x10, x0
	lw fp, 96 ( sp )                //  4-byte Folded Reload
	mv x22, x11
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	add x10, x27, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB1_28
.LBB1_30:                               //  %reswitch
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_26 Depth=3
                                        //          Parent Loop BB1_27 Depth=4
                                        //  =>        This Loop Header: Depth=5
                                        //              Child Loop BB1_35 Depth 6
	add x10, x27, -32
	bltu x19, x10, .LBB1_124
.LBB1_31:                               //  %reswitch
                                        //    in Loop: Header=BB1_30 Depth=5
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB1_32:                               //  %sw.bb126
                                        //    in Loop: Header=BB1_30 Depth=5
	lw x27, 0 ( x22 )
	add x11, x22, 4
	xor x10, x27, 42
	beq x0, x10, .LBB1_62
.LBB1_33:                               //  %while.cond137.preheader
                                        //    in Loop: Header=BB1_30 Depth=5
	sw fp, 96 ( sp )                //  4-byte Folded Spill
	add fp, x27, -48
	add x10, x0, 9
	bltu x10, fp, .LBB1_38
.LBB1_34:                               //  %while.body141.preheader
                                        //    in Loop: Header=BB1_30 Depth=5
	mv x10, x0
	mv x22, x11
.LBB1_35:                               //  %while.body141
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_26 Depth=3
                                        //          Parent Loop BB1_27 Depth=4
                                        //            Parent Loop BB1_30 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	add x11, x0, 10
	jal __mulsi3
	lw x27, 0 ( x22 )
	add x10, x10, fp
	add x22, x22, 4
	add fp, x27, -48
	sltiu x11, fp, 10
	bltu x0, x11, .LBB1_35
.LBB1_36:                               //  %while.end146
                                        //    in Loop: Header=BB1_30 Depth=5
	lw fp, 96 ( sp )                //  4-byte Folded Reload
	add x11, x0, -1
	sw x11, 80 ( sp )               //  4-byte Folded Spill
	blt x10, x0, .LBB1_27
.LBB1_37:                               //  %while.end146.thread
                                        //    in Loop: Header=BB1_30 Depth=5
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	add x10, x27, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB1_28
	jal x0, .LBB1_30
.LBB1_39:                               //  %sw.bb186
                                        //    in Loop: Header=BB1_26 Depth=3
	or fp, fp, 32
	mv x11, x22
	jal x0, .LBB1_26
.LBB1_40:                               //  %sw.bb112
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x10, 176 ( sp )
	mv x11, x22
	bltu x0, x10, .LBB1_26
.LBB1_41:                               //  %if.then114
                                        //    in Loop: Header=BB1_26 Depth=3
	add x10, x0, 32
	jal x0, .LBB1_52
.LBB1_42:                               //  %sw.bb116
                                        //    in Loop: Header=BB1_26 Depth=3
	or fp, fp, 1
	mv x11, x22
	jal x0, .LBB1_26
.LBB1_43:                               //  %sw.bb
                                        //    in Loop: Header=BB1_26 Depth=3
	mv x10, x26
	jal _localeconv_r
	lw x10, 4 ( x10 )
	lb x10, 0 ( x10 )
	sw x10, 172 ( sp )
	mv x10, x26
	jal _localeconv_r
	lw x10, 8 ( x10 )
	mv x11, x22
	sw x10, 92 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB1_26
.LBB1_44:                               //  %sw.bb
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x10, 172 ( sp )
	mv x11, x22
	beq x0, x10, .LBB1_26
.LBB1_45:                               //  %land.lhs.true106
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	mv x11, x0
	lbu x10, 0 ( x10 )
	beq x10, x11, .LBB1_47
.LBB1_46:                               //  %land.lhs.true106
                                        //    in Loop: Header=BB1_26 Depth=3
	or fp, fp, 1024
.LBB1_47:                               //  %land.lhs.true106
                                        //    in Loop: Header=BB1_26 Depth=3
	mv x11, x22
	jal x0, .LBB1_26
.LBB1_48:                               //  %sw.bb118
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x10, 180 ( sp )
	add x11, x10, 4
	sw x11, 180 ( sp )
	lw x25, 0 ( x10 )
	mv x11, x22
	bge x25, x0, .LBB1_26
.LBB1_49:                               //  %if.end122
                                        //    in Loop: Header=BB1_26 Depth=3
	sub x25, x0, x25
.LBB1_50:                               //  %sw.bb123.loopexit
                                        //    in Loop: Header=BB1_26 Depth=3
	or fp, fp, 4
	mv x11, x22
	jal x0, .LBB1_26
.LBB1_51:                               //  %sw.bb125
                                        //    in Loop: Header=BB1_26 Depth=3
	add x10, x0, 43
.LBB1_52:                               //  %rflag
                                        //    in Loop: Header=BB1_26 Depth=3
	sw x10, 176 ( sp )
.LBB1_53:                               //  %rflag.backedge.loopexit
                                        //    in Loop: Header=BB1_26 Depth=3
	mv x11, x22
	jal x0, .LBB1_26
.LBB1_54:                               //  %sw.bb152
                                        //    in Loop: Header=BB1_26 Depth=3
	or fp, fp, 128
	mv x11, x22
	jal x0, .LBB1_26
.LBB1_55:                               //  %sw.bb165
                                        //    in Loop: Header=BB1_26 Depth=3
	or fp, fp, 8
	mv x11, x22
	jal x0, .LBB1_26
.LBB1_56:                               //  %sw.bb167
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x10, 0 ( x22 )
	add x11, x0, 104
	beq x10, x11, .LBB1_60
.LBB1_57:                               //  %sw.bb167
                                        //    in Loop: Header=BB1_26 Depth=3
	add x10, x0, 64
	mv x11, x22
	or fp, fp, x10
	jal x0, .LBB1_26
.LBB1_58:                               //  %sw.bb175
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x10, 0 ( x22 )
	add x11, x0, 108
	beq x10, x11, .LBB1_61
.LBB1_59:                               //  %sw.bb175
                                        //    in Loop: Header=BB1_26 Depth=3
	add x10, x0, 16
	mv x11, x22
	or fp, fp, x10
	jal x0, .LBB1_26
.LBB1_60:                               //    in Loop: Header=BB1_26 Depth=3
	add x10, x0, 512
	add x11, x22, 4
	or fp, fp, x10
	jal x0, .LBB1_26
.LBB1_61:                               //    in Loop: Header=BB1_26 Depth=3
	add x10, x0, 32
	add x11, x22, 4
	or fp, fp, x10
	jal x0, .LBB1_26
.LBB1_62:                               //  %if.then130
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x10, 180 ( sp )
	add x12, x10, 4
	sw x12, 180 ( sp )
	lw x12, 0 ( x10 )
	add x10, x0, -1
	sw x12, 80 ( sp )               //  4-byte Folded Spill
	blt x10, x12, .LBB1_26
.LBB1_63:                               //  %if.then130
                                        //    in Loop: Header=BB1_26 Depth=3
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB1_26
.LBB1_64:                               //  %sw.bb488
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, fp, 32
	bltu x0, x10, .LBB1_69
.LBB1_65:                               //  %if.else494
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, fp, 16
	bltu x0, x10, .LBB1_68
.LBB1_66:                               //  %if.else499
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, fp, 64
	bltu x0, x10, .LBB1_70
.LBB1_67:                               //  %if.else505
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, fp, 512
	bltu x0, x10, .LBB1_71
.LBB1_68:                               //  %if.then497
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	add x11, x10, 4
	sw x11, 180 ( sp )
	lw x10, 0 ( x10 )
	sw x24, 0 ( x10 )
	mv fp, x22
	lw x10, 0 ( fp )
	bltu x0, x10, .LBB1_17
	jal x0, .LBB1_19
.LBB1_69:                               //  %if.then491
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	add x11, x10, 4
	sw x11, 180 ( sp )
	lw x10, 0 ( x10 )
	sra x11, x24, 31&31
	sw x11, 4 ( x10 )
	sw x24, 0 ( x10 )
	mv fp, x22
	lw x10, 0 ( fp )
	bltu x0, x10, .LBB1_17
	jal x0, .LBB1_19
.LBB1_70:                               //  %if.then502
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	add x11, x10, 4
	sw x11, 180 ( sp )
	lw x10, 0 ( x10 )
	sh x24, 0 ( x10 )
	mv fp, x22
	lw x10, 0 ( fp )
	bltu x0, x10, .LBB1_17
	jal x0, .LBB1_19
.LBB1_71:                               //  %if.then508
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	add x11, x10, 4
	sw x11, 180 ( sp )
	lw x10, 0 ( x10 )
	sb x24, 0 ( x10 )
	mv fp, x22
	lw x10, 0 ( fp )
	bltu x0, x10, .LBB1_17
	jal x0, .LBB1_19
.LBB1_72:                               //  %sw.bb253
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, fp, 8
	sw fp, 96 ( sp )                //  4-byte Folded Spill
	bltu x0, x10, .LBB1_74
.LBB1_73:                               //  %if.else260
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	add x11, x10, 4
	sw x11, 180 ( sp )
	add x11, x10, 8
	lw x19, 0 ( x10 )
	sw x11, 180 ( sp )
	lw fp, 4 ( x10 )
	jal x0, .LBB1_75
.LBB1_74:                               //  %if.then256
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x13, 180 ( sp )
	add x10, x13, 4
	sw x10, 180 ( sp )
	add x11, x13, 8
	lw x10, 0 ( x13 )
	sw x11, 180 ( sp )
	add x12, x13, 12
	lw x11, 4 ( x13 )
	sw x12, 180 ( sp )
	add x14, x13, 16
	lw x12, 8 ( x13 )
	sw x14, 180 ( sp )
	lw x13, 12 ( x13 )
	jal __trunctfdf2
	mv x19, x10
	mv fp, x11
.LBB1_75:                               //  %if.end263
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x11, x10, fp
	mv x12, x0
	lui x13, (2146435072>>12)&1048575
	mv x10, x19
	jal __nedf2
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	sw fp, 60 ( sp )                //  4-byte Folded Spill
	bltu x0, x10, .LBB1_80
.LBB1_76:                               //  %if.then266
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x24, x0
	mv x13, x24
	mv x10, x19
	mv x11, fp
	mv x12, x24
	jal __ltdf2
	bge x10, x0, .LBB1_78
.LBB1_77:                               //  %if.then270
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x0, 45
	sw x10, 176 ( sp )
.LBB1_78:                               //  %if.end271
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	add x10, x0, 72
	bltu x27, x10, .LBB1_84
.LBB1_79:                               //  %if.end271
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x10, %hi( .str.1 )
	add x10, x10, %lo( .str.1 )
	jal x0, .LBB1_85
.LBB1_80:                               //  %if.end278
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x19
	mv x13, fp
	mv x11, fp
	mv x12, x19
	jal __unorddf2
	bltu x0, x10, .LBB1_100
.LBB1_81:                               //  %if.end299
                                        //    in Loop: Header=BB1_19 Depth=2
	or x12, x27, 32
	xor x10, x12, 97
	sw x12, 56 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB1_126
.LBB1_82:                               //  %if.then306
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x0, 97
	beq x27, x10, .LBB1_158
.LBB1_83:                               //  %if.then306
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x0, 88
	jal x0, .LBB1_159
.LBB1_84:                               //    in Loop: Header=BB1_19 Depth=2
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
.LBB1_85:                               //  %if.end271
                                        //    in Loop: Header=BB1_19 Depth=2
	lw fp, 96 ( sp )                //  4-byte Folded Reload
	sw x10, 64 ( sp )               //  4-byte Folded Spill
	mv x11, x24
	add x23, x0, 3
	and fp, fp, -129
	sw x24, 68 ( sp )               //  4-byte Folded Spill
	sw x24, 56 ( sp )               //  4-byte Folded Spill
	sw x24, 52 ( sp )               //  4-byte Folded Spill
	mv x10, x11
	mv x19, x11
	bge x23, x11, .LBB1_296
	jal x0, .LBB1_297
.LBB1_86:                               //  %sw.bb190
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	add x11, x10, 4
	sw x11, 180 ( sp )
	lw x10, 0 ( x10 )
	and x11, fp, 16
	bltu x0, x11, .LBB1_140
.LBB1_87:                               //  %sw.bb190
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	xor x11, x27, 99
	bltu x0, x11, .LBB1_141
.LBB1_88:                               //  %if.then197
                                        //    in Loop: Header=BB1_19 Depth=2
	jal btowc
	xor x11, x10, -1
	bltu x0, x11, .LBB1_141
	jal x0, .LBB1_518
.LBB1_89:                               //  %sw.bb559
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	add x11, x10, 4
	sw x11, 180 ( sp )
	lw x26, 0 ( x10 )
	sw x0, 176 ( sp )
	beq x0, x26, .LBB1_129
.LBB1_90:                               //  %if.else570
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x19, 80 ( sp )               //  4-byte Folded Reload
	and x10, fp, 16
	bltu x0, x10, .LBB1_132
.LBB1_91:                               //  %if.else570
                                        //    in Loop: Header=BB1_19 Depth=2
	xor x10, x27, 83
	beq x0, x10, .LBB1_132
.LBB1_92:                               //  %if.then576
                                        //    in Loop: Header=BB1_19 Depth=2
	sw fp, 96 ( sp )                //  4-byte Folded Spill
	blt x19, x0, .LBB1_242
.LBB1_93:                               //  %if.then579
                                        //    in Loop: Header=BB1_19 Depth=2
	mv fp, x0
	mv x10, x26
	mv x11, fp
	mv x12, x19
	jal memchr
	beq x10, fp, .LBB1_243
.LBB1_94:                               //  %if.then579
                                        //    in Loop: Header=BB1_19 Depth=2
	sub x19, x10, x26
	sltiu x10, x19, 100
	sll fp, x19, 2&31
	beq x0, x10, .LBB1_244
.LBB1_246:                              //  %if.end608
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x0
	sw x10, 68 ( sp )               //  4-byte Folded Spill
	add x10, sp, 212
	bltu x0, x19, .LBB1_247
	jal x0, .LBB1_249
.LBB1_95:                               //  %sw.bb213
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, fp, 32
	bltu x0, x10, .LBB1_122
.LBB1_96:                               //  %cond.false218
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, fp, 16
	bltu x0, x10, .LBB1_142
.LBB1_97:                               //  %cond.false223
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	lw x12, 80 ( sp )               //  4-byte Folded Reload
	and x10, fp, 64
	bltu x0, x10, .LBB1_212
.LBB1_98:                               //  %cond.false230
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	add x11, x10, 4
	sw x11, 180 ( sp )
	lw x18, 0 ( x10 )
	and x10, fp, 512
	beq x0, x10, .LBB1_143
.LBB1_99:                               //  %cond.true233
                                        //    in Loop: Header=BB1_19 Depth=2
	sll x10, x18, 24&31
	sra x18, x10, 24&31
	sra x23, x18, 31&31
	bge x23, x0, .LBB1_123
	jal x0, .LBB1_144
.LBB1_100:                              //  %cond.true286
                                        //    in Loop: Header=BB1_19 Depth=2
	bge fp, x0, .LBB1_102
.LBB1_101:                              //  %if.then291
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x0, 45
	sw x10, 176 ( sp )
.LBB1_102:                              //  %if.end292
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	add x10, x0, 72
	bltu x27, x10, .LBB1_137
.LBB1_103:                              //  %if.end292
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x10, %hi( .str.3 )
	add x10, x10, %lo( .str.3 )
	jal x0, .LBB1_138
.LBB1_104:                              //  %hex.loopexit
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x10, %hi( .str.6 )
	add x10, x10, %lo( .str.6 )
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	sw x10, 40 ( sp )               //  4-byte Folded Spill
	and x10, fp, 32
	beq x0, x10, .LBB1_118
.LBB1_105:                              //  %cond.true684
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	lw x12, 80 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 180 ( sp )
	add x11, x10, 8
	lw x18, 0 ( x10 )
	sw x11, 180 ( sp )
	lw x23, 4 ( x10 )
	and x10, fp, 1
	bltu x0, x10, .LBB1_217
	jal x0, .LBB1_219
.LBB1_106:                              //  %sw.bb517
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, fp, 32
	bltu x0, x10, .LBB1_154
.LBB1_107:                              //  %cond.false522
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, fp, 16
	bltu x0, x10, .LBB1_213
.LBB1_108:                              //  %cond.false527
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, fp, 64
	bltu x0, x10, .LBB1_282
.LBB1_109:                              //  %cond.false534
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	add x11, x10, 4
	sw x11, 180 ( sp )
	lw x18, 0 ( x10 )
	and x11, fp, 512
	mv x10, x0
	beq x11, x10, .LBB1_283
.LBB1_110:                              //  %cond.false534
                                        //    in Loop: Header=BB1_19 Depth=2
	and x18, x18, 255
	jal x0, .LBB1_283
.LBB1_111:                              //  %sw.bb553
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	add x27, x0, 120
	mv x23, x0
	or fp, fp, 2
	add x11, x10, 4
	sw x11, 180 ( sp )
	lui x11, %hi( .str.4 )
	lw x18, 0 ( x10 )
	add x10, x0, 48
	add x11, x11, %lo( .str.4 )
	sw x10, 108 ( sp )
	sw x27, 112 ( sp )
	add x10, x0, 2
	sw x11, 40 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB1_156
.LBB1_112:                              //  %sw.bb645
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, fp, 32
	bltu x0, x10, .LBB1_155
.LBB1_113:                              //  %cond.false650
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, fp, 16
	bltu x0, x10, .LBB1_214
.LBB1_114:                              //  %cond.false655
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, fp, 64
	bltu x0, x10, .LBB1_285
.LBB1_115:                              //  %cond.false662
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	add x11, x10, 4
	sw x11, 180 ( sp )
	lw x18, 0 ( x10 )
	and x11, fp, 512
	mv x10, x0
	beq x11, x10, .LBB1_286
.LBB1_116:                              //  %cond.false662
                                        //    in Loop: Header=BB1_19 Depth=2
	and x18, x18, 255
	jal x0, .LBB1_286
.LBB1_117:                              //  %hex.loopexit1
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x10, %hi( .str.4 )
	add x10, x10, %lo( .str.4 )
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	sw x10, 40 ( sp )               //  4-byte Folded Spill
	and x10, fp, 32
	bltu x0, x10, .LBB1_105
.LBB1_118:                              //  %cond.false686
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x12, 80 ( sp )               //  4-byte Folded Reload
	and x10, fp, 16
	bltu x0, x10, .LBB1_157
.LBB1_119:                              //  %cond.false691
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, fp, 64
	bltu x0, x10, .LBB1_215
.LBB1_120:                              //  %cond.false698
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	add x11, x10, 4
	sw x11, 180 ( sp )
	lw x18, 0 ( x10 )
	and x11, fp, 512
	mv x10, x0
	beq x11, x10, .LBB1_216
.LBB1_121:                              //  %cond.false698
                                        //    in Loop: Header=BB1_19 Depth=2
	and x18, x18, 255
	mv x23, x0
	and x10, fp, 1
	bltu x0, x10, .LBB1_217
	jal x0, .LBB1_219
.LBB1_122:                              //  %cond.true216
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	lw x12, 80 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 180 ( sp )
	add x11, x10, 8
	lw x18, 0 ( x10 )
	sw x11, 180 ( sp )
	lw x23, 4 ( x10 )
	blt x23, x0, .LBB1_144
.LBB1_123:                              //    in Loop: Header=BB1_19 Depth=2
	seqz x10, x0
	add x11, x0, -1
	blt x11, x12, .LBB1_220
	jal x0, .LBB1_221
.LBB1_124:                              //  %sw.default824
                                        //    in Loop: Header=BB1_19 Depth=2
	bltu x0, x27, .LBB1_125
.LBB1_523:                              //  %sw.default824
	jal x0, .LBB1_504
.LBB1_125:                              //  %if.end828
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x19, x23
	add x10, sp, 212
	mv x24, x23
	mv x11, x23
	sw x23, 68 ( sp )               //  4-byte Folded Spill
	seqz x23, x0
	sw x27, 212 ( sp )
	sw x0, 176 ( sp )
	sw x19, 56 ( sp )               //  4-byte Folded Spill
	sw x19, 52 ( sp )               //  4-byte Folded Spill
	sw x10, 64 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB1_268
.LBB1_126:                              //  %if.else328
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 80 ( sp )               //  4-byte Folded Reload
	add x10, sp, 212
	xor x11, x11, -1
	beq x0, x11, .LBB1_178
.LBB1_127:                              //  %if.else332
                                        //    in Loop: Header=BB1_19 Depth=2
	add x11, x0, 103
	beq x12, x11, .LBB1_179
.LBB1_128:                              //  %if.else332
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x12, 80 ( sp )               //  4-byte Folded Reload
	mv x23, x12
	mv x11, x0
	mv x18, x11
	bne x12, x11, .LBB1_180
	jal x0, .LBB1_181
.LBB1_129:                              //  %if.then563
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x23, 80 ( sp )               //  4-byte Folded Reload
	add x10, x0, 6
	bltu x23, x10, .LBB1_131
.LBB1_130:                              //  %if.then563
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x23, x10
.LBB1_131:                              //  %if.then563
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x10, %hi( .str.5 )
	mv x24, x0
	add x10, x10, %lo( .str.5 )
	sw x10, 64 ( sp )               //  4-byte Folded Spill
	sw x24, 56 ( sp )               //  4-byte Folded Spill
	mv x11, x24
	sw x24, 68 ( sp )               //  4-byte Folded Spill
	sw x24, 52 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB1_268
.LBB1_132:                              //  %if.else621
                                        //    in Loop: Header=BB1_19 Depth=2
	blt x19, x0, .LBB1_250
.LBB1_133:                              //  %if.then624
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x23, x0
	mv x10, x26
	mv x11, x23
	mv x12, x19
	jal wmemchr
	beq x0, x10, .LBB1_266
.LBB1_134:                              //  %if.then629
                                        //    in Loop: Header=BB1_19 Depth=2
	sub x10, x10, x26
	sra x10, x10, 2&31
	blt x19, x10, .LBB1_136
.LBB1_135:                              //  %if.then629
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x19, x10
.LBB1_136:                              //  %if.then629
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x23, x19
	jal x0, .LBB1_251
.LBB1_137:                              //    in Loop: Header=BB1_19 Depth=2
	lui x10, %hi( .str.2 )
	add x10, x10, %lo( .str.2 )
.LBB1_138:                              //  %if.end292
                                        //    in Loop: Header=BB1_19 Depth=2
	lw fp, 96 ( sp )                //  4-byte Folded Reload
	mv x24, x0
	sw x10, 64 ( sp )               //  4-byte Folded Spill
	add x23, x0, 3
	sw x24, 56 ( sp )               //  4-byte Folded Spill
	mv x11, x24
	and fp, fp, -129
	jal x0, .LBB1_139
.LBB1_140:                              //    in Loop: Header=BB1_19 Depth=2
	lw x26, 92 ( sp )               //  4-byte Folded Reload
.LBB1_141:                              //  %if.end211
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x24, x0
	sw x10, 212 ( sp )
	add x10, sp, 212
	sw x24, 56 ( sp )               //  4-byte Folded Spill
	mv x11, x24
	sw x0, 216 ( sp )
	sw x0, 176 ( sp )
	sw x24, 68 ( sp )               //  4-byte Folded Spill
	seqz x23, x0
	sw x24, 52 ( sp )               //  4-byte Folded Spill
	sw x10, 64 ( sp )               //  4-byte Folded Spill
	mv x10, x11
	mv x19, x11
	bge x23, x11, .LBB1_296
	jal x0, .LBB1_297
.LBB1_142:                              //  %cond.true221
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	lw x12, 80 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 180 ( sp )
	lw x18, 0 ( x10 )
.LBB1_143:                              //  %cond.end243
                                        //    in Loop: Header=BB1_19 Depth=2
	sra x23, x18, 31&31
	bge x23, x0, .LBB1_123
.LBB1_144:                              //  %if.then738.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x0, -1
	bge x10, x12, .LBB1_146
.LBB1_145:                              //    in Loop: Header=BB1_19 Depth=2
	and fp, fp, -129
.LBB1_146:                              //  %if.then738.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x0, 45
	sw x10, 176 ( sp )
	snez x10, x18
	add x10, x10, x23
	sw fp, 96 ( sp )                //  4-byte Folded Spill
	sub x18, x0, x18
	sub x23, x0, x10
	add x10, x0, 9
	mv x11, x0
	bne x23, x11, .LBB1_239
.LBB1_147:                              //    in Loop: Header=BB1_19 Depth=2
	sltu x10, x10, x18
	beq x0, x10, .LBB1_240
.LBB1_148:                              //  %if.end764
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	sw x0, 128 ( sp )
	and x10, x10, 1024
	bltu x0, x10, .LBB1_163
.LBB1_149:                              //  %do.body765.us.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x19, 44 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_152
.LBB1_150:                              //  %do.body765.us
                                        //    in Loop: Header=BB1_152 Depth=3
	snez x11, x23
.LBB1_151:                              //  %do.body765.us
                                        //    in Loop: Header=BB1_152 Depth=3
	sub x10, x18, x10
	mv x19, fp
	or x10, x10, 48
	sw x10, -4 ( x19 )
	lw x10, 128 ( sp )
	add x19, x19, -4
	mv x18, x24
	mv x23, x26
	add x10, x10, 1
	sw x10, 128 ( sp )
	beq x0, x11, .LBB1_177
.LBB1_152:                              //  %do.body765.us
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	mv fp, x19
	add x19, x0, 10
	mv x9, x0
	mv x10, x18
	mv x11, x23
	mv x12, x19
	mv x13, x9
	jal __udivdi3
	mv x12, x19
	mv x13, x9
	mv x24, x10
	mv x26, x11
	jal __muldi3
	bne x23, x9, .LBB1_150
.LBB1_153:                              //    in Loop: Header=BB1_152 Depth=3
	add x11, x0, 9
	sltu x11, x11, x18
	jal x0, .LBB1_151
.LBB1_154:                              //  %cond.true520
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	lw x12, 80 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 180 ( sp )
	add x11, x10, 8
	lw x18, 0 ( x10 )
	sw x11, 180 ( sp )
	lw x23, 4 ( x10 )
	jal x0, .LBB1_284
.LBB1_155:                              //  %cond.true648
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 180 ( sp )
	add x27, x0, 117
	add x10, x11, 4
	sw x10, 180 ( sp )
	add x10, x11, 8
	lw x18, 0 ( x11 )
	sw x10, 180 ( sp )
	lw x23, 4 ( x11 )
	seqz x10, x0
.LBB1_156:                              //  %nosign
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	lw x12, 80 ( sp )               //  4-byte Folded Reload
	sw x0, 176 ( sp )
	add x11, x0, -1
	blt x11, x12, .LBB1_220
	jal x0, .LBB1_221
.LBB1_157:                              //  %cond.true689
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	add x11, x10, 4
	sw x11, 180 ( sp )
	lw x18, 0 ( x10 )
	mv x23, x0
	and x10, fp, 1
	bltu x0, x10, .LBB1_217
	jal x0, .LBB1_219
.LBB1_158:                              //    in Loop: Header=BB1_19 Depth=2
	add x10, x0, 120
.LBB1_159:                              //  %if.then306
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x10, 112 ( sp )
	add x10, x0, 48
	sw x10, 108 ( sp )
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	lw x23, 80 ( sp )               //  4-byte Folded Reload
	or x10, x10, 2
	sw x10, 96 ( sp )               //  4-byte Folded Spill
	slti x10, x23, 100
	bltu x0, x10, .LBB1_162
.LBB1_160:                              //  %if.then315
                                        //    in Loop: Header=BB1_19 Depth=2
	sll x10, x23, 2&31
	add x11, x10, 4
	mv x10, x26
	jal _malloc_r
	mv x18, x10
	bltu x0, x18, .LBB1_161
.LBB1_524:                              //  %if.then315
	jal x0, .LBB1_515
.LBB1_161:                              //    in Loop: Header=BB1_19 Depth=2
	mv x10, x18
	jal x0, .LBB1_181
.LBB1_162:                              //    in Loop: Header=BB1_19 Depth=2
	mv x18, x0
	add x10, sp, 212
	jal x0, .LBB1_181
.LBB1_163:                              //    in Loop: Header=BB1_19 Depth=2
	lw x19, 44 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_165
.LBB1_164:                              //  %if.end792
                                        //    in Loop: Header=BB1_165 Depth=3
	snez x10, x23
	mv x18, x24
	mv x23, x26
	beq x0, x10, .LBB1_177
.LBB1_165:                              //  %do.body765
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x9, x0, 10
	mv fp, x0
	mv x10, x18
	mv x11, x23
	mv x12, x9
	mv x13, fp
	jal __udivdi3
	mv x12, x9
	mv x13, fp
	mv x24, x10
	mv x26, x11
	jal __muldi3
	lw x11, 128 ( sp )
	sub x10, x18, x10
	or x10, x10, 48
	sw x10, -4 ( x19 )
	add x12, x11, 1
	lw x11, 92 ( sp )               //  4-byte Folded Reload
	sw x12, 128 ( sp )
	add x10, x19, -4
	lb x11, 0 ( x11 )
	bne x12, x11, .LBB1_169
.LBB1_166:                              //  %land.lhs.true776
                                        //    in Loop: Header=BB1_165 Depth=3
	beq x23, fp, .LBB1_170
.LBB1_167:                              //  %land.lhs.true776
                                        //    in Loop: Header=BB1_165 Depth=3
	mv x12, fp
	bltu x0, x12, .LBB1_169
.LBB1_171:                              //  %land.lhs.true776
                                        //    in Loop: Header=BB1_165 Depth=3
	and x11, x11, 255
	xor x11, x11, 127
	beq x0, x11, .LBB1_169
.LBB1_172:                              //  %if.then783
                                        //    in Loop: Header=BB1_165 Depth=3
	lw x10, 172 ( sp )
	lw x12, 92 ( sp )               //  4-byte Folded Reload
	sw x0, 128 ( sp )
	mv x11, x0
	sw x10, -8 ( x19 )
	lbu x10, 1 ( x12 )
	beq x10, x11, .LBB1_174
.LBB1_173:                              //  %if.then783
                                        //    in Loop: Header=BB1_165 Depth=3
	add x12, x12, 1
	sw x12, 92 ( sp )               //  4-byte Folded Spill
.LBB1_174:                              //  %if.then783
                                        //    in Loop: Header=BB1_165 Depth=3
	add x19, x19, -8
	bne x23, fp, .LBB1_164
	jal x0, .LBB1_176
.LBB1_170:                              //    in Loop: Header=BB1_165 Depth=3
	sltiu x12, x18, 10
	beq x0, x12, .LBB1_171
.LBB1_169:                              //    in Loop: Header=BB1_165 Depth=3
	mv x19, x10
	bne x23, fp, .LBB1_164
.LBB1_176:                              //    in Loop: Header=BB1_165 Depth=3
	add x10, x0, 9
	sltu x10, x10, x18
	mv x18, x24
	mv x23, x26
	bltu x0, x10, .LBB1_165
.LBB1_177:                              //    in Loop: Header=BB1_19 Depth=2
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	lw fp, 96 ( sp )                //  4-byte Folded Reload
	add x9, sp, 116
	jal x0, .LBB1_265
.LBB1_178:                              //    in Loop: Header=BB1_19 Depth=2
	add x23, x0, 6
	mv x18, x0
	jal x0, .LBB1_181
.LBB1_179:                              //    in Loop: Header=BB1_19 Depth=2
	lw x12, 80 ( sp )               //  4-byte Folded Reload
	seqz x23, x0
	mv x11, x0
	mv x18, x11
	beq x12, x11, .LBB1_181
.LBB1_180:                              //  %if.else332
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x23, x12
.LBB1_181:                              //  %if.end344
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x10, 4 ( sp )
	add x10, x0, 100
	sw x10, 8 ( sp )
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	lw x12, 60 ( sp )               //  4-byte Folded Reload
	add fp, sp, 128
	add x15, sp, 164
	or x14, x10, 256
	add x16, sp, 160
	mv x10, x26
	mv x11, x19
	mv x13, x23
	mv x17, x27
	sw fp, 0 ( sp )
	sw x14, 80 ( sp )               //  4-byte Folded Spill
	jal wcvt
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	sw x10, 64 ( sp )               //  4-byte Folded Spill
	bltu x0, x18, .LBB1_190
.LBB1_182:                              //  %if.end344
                                        //    in Loop: Header=BB1_19 Depth=2
	add x11, sp, 212
	bne x10, x11, .LBB1_190
.LBB1_183:                              //  %if.end344
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 128 ( sp )
	lw x18, 56 ( sp )               //  4-byte Folded Reload
	slti x11, x10, 101
	bltu x0, x11, .LBB1_186
.LBB1_184:                              //  %if.then357
                                        //    in Loop: Header=BB1_19 Depth=2
	sll x11, x10, 2&31
	mv x10, x26
	jal _malloc_r
	bltu x0, x10, .LBB1_185
.LBB1_525:                              //  %if.then357
	jal x0, .LBB1_515
.LBB1_185:                              //  %if.end367
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 128 ( sp )
	lw x12, 60 ( sp )               //  4-byte Folded Reload
	lw x14, 80 ( sp )               //  4-byte Folded Reload
	sw x10, 68 ( sp )               //  4-byte Folded Spill
	sw x11, 8 ( sp )
	sw x10, 4 ( sp )
	add x15, sp, 164
	add x16, sp, 160
	mv x10, x26
	mv x11, x19
	mv x13, x23
	mv x17, x27
	sw fp, 0 ( sp )
	jal wcvt
	sw x10, 64 ( sp )               //  4-byte Folded Spill
.LBB1_186:                              //  %if.end370
                                        //    in Loop: Header=BB1_19 Depth=2
	xor x10, x18, 103
	bltu x0, x10, .LBB1_191
.LBB1_187:                              //  %if.then376
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14, 160 ( sp )
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	lw x12, 96 ( sp )               //  4-byte Folded Reload
	slti x10, x14, -3
	bltu x0, x10, .LBB1_193
.LBB1_188:                              //  %if.then376
                                        //    in Loop: Header=BB1_19 Depth=2
	blt x23, x14, .LBB1_193
.LBB1_189:                              //    in Loop: Header=BB1_19 Depth=2
	lw fp, 80 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB1_257
.LBB1_190:                              //    in Loop: Header=BB1_19 Depth=2
	lw x18, 56 ( sp )               //  4-byte Folded Reload
	xor x10, x18, 103
	beq x0, x10, .LBB1_187
.LBB1_191:                              //  %if.else386
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	lw x12, 96 ( sp )               //  4-byte Folded Reload
	xor x10, x27, 70
	bltu x0, x10, .LBB1_195
.LBB1_192:                              //  %if.else407.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14, 160 ( sp )
	lw fp, 80 ( sp )                //  4-byte Folded Reload
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	and x10, x12, 1
	or x10, x23, x10
	blt x0, x14, .LBB1_255
.LBB1_261:                              //  %if.end452.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x13, x0
	beq x10, x13, .LBB1_290
.LBB1_262:                              //  %if.end452.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	add x23, x23, 2
	jal x0, .LBB1_291
.LBB1_193:                              //  %if.then376.if.then394_crit_edge
                                        //    in Loop: Header=BB1_19 Depth=2
	add x27, x27, -2
	or x18, x27, 32
	add x10, x0, 97
	beq x18, x10, .LBB1_197
.LBB1_194:                              //  %if.then394
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x27
	seqz x15, x0
	add x11, x14, -1
	blt x14, x15, .LBB1_199
.LBB1_198:                              //  %if.then394
                                        //    in Loop: Header=BB1_19 Depth=2
	add x12, x0, 43
	mv fp, x11
	jal x0, .LBB1_200
.LBB1_195:                              //  %if.end391
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x0, 101
	bltu x10, x27, .LBB1_253
.LBB1_196:                              //  %if.end391.if.then394_crit_edge
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14, 160 ( sp )
	add x10, x0, 97
	bne x18, x10, .LBB1_194
.LBB1_197:                              //    in Loop: Header=BB1_19 Depth=2
	add x10, x27, 15
	seqz x15, x0
	add x11, x14, -1
	bge x14, x15, .LBB1_198
.LBB1_199:                              //    in Loop: Header=BB1_19 Depth=2
	add x12, x0, 45
	sub fp, x15, x14
.LBB1_200:                              //  %if.then394
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x10, 132 ( sp )
	slti x10, fp, 10
	sw x11, 160 ( sp )
	sw x12, 136 ( sp )
	bltu x0, x10, .LBB1_208
.LBB1_201:                              //  %do.body.i.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	mv x12, x0
	add x13, sp, 212
	mv x24, x15
.LBB1_202:                              //  %do.body.i
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	mv x18, fp
	add x23, x0, 10
	mv x10, x18
	mv x11, x23
	mv x19, x12
	mv x26, x13
	jal __divsi3
	mv x11, x23
	mv fp, x10
	jal __mulsi3
	sub x10, x18, x10
	add x11, x10, 48
	sw x11, 0 ( x9 )
	add x13, x26, -4
	add x12, x19, 1
	add x9, x9, -4
	add x24, x24, -1
	add x10, x0, 99
	blt x10, x18, .LBB1_202
.LBB1_203:                              //  %do.end.i
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	add x12, fp, 48
	sw x12, 0 ( x9 )
	add x13, x24, -2
	add x9, sp, 116
	seqz x15, x0
	bge x13, x0, .LBB1_211
.LBB1_204:                              //  %for.inc.i.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	sw x12, 140 ( sp )
	xor x12, x24, 1
	beq x0, x12, .LBB1_211
.LBB1_205:                              //  %for.inc.for.inc_crit_edge.i.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, sp, 148
	sw x11, 144 ( sp )
	beq x0, x24, .LBB1_211
.LBB1_206:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, sp, 148
.LBB1_207:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x11, 0 ( x26 )
	add x26, x26, 4
	add x19, x19, -1
	sw x11, 0 ( x10 )
	add x10, x10, 4
	bltu x0, x19, .LBB1_207
	jal x0, .LBB1_211
.LBB1_208:                              //  %if.else17.i
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	xor x11, x18, 97
	beq x0, x11, .LBB1_210
.LBB1_209:                              //  %if.then19.i
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x0, 48
	sw x10, 140 ( sp )
	lw x10, 20 ( sp )               //  4-byte Folded Reload
.LBB1_210:                              //  %if.end21.i
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	add x11, fp, 48
	sw x11, 0 ( x10 )
	add x10, x10, 4
.LBB1_211:                              //  %wexponent.exit
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x13, 96 ( sp )               //  4-byte Folded Reload
	lw x11, 128 ( sp )
	lw fp, 80 ( sp )                //  4-byte Folded Reload
	mv x24, x0
	and x13, x13, 1
	slt x12, x15, x11
	or x12, x12, x13
	add x13, sp, 132
	sub x10, x10, x13
	sra x10, x10, 2&31
	sw x10, 36 ( sp )               //  4-byte Folded Spill
	add x10, x11, x10
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	add x23, x12, x10
	and fp, fp, -1025
	mv x13, x24
	mv x14, x24
	jal x0, .LBB1_293
.LBB1_212:                              //  %cond.true226
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	add x11, x10, 4
	sw x11, 180 ( sp )
	lw x10, 0 ( x10 )
	sll x10, x10, 16&31
	sra x18, x10, 16&31
	sra x23, x18, 31&31
	bge x23, x0, .LBB1_123
	jal x0, .LBB1_144
.LBB1_213:                              //  %cond.true525
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	add x11, x10, 4
	sw x11, 180 ( sp )
	lw x18, 0 ( x10 )
	jal x0, .LBB1_283
.LBB1_214:                              //  %cond.true653
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	add x11, x10, 4
	sw x11, 180 ( sp )
	lw x18, 0 ( x10 )
	jal x0, .LBB1_286
.LBB1_215:                              //  %cond.true694
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	add x11, x10, 4
	sw x11, 180 ( sp )
	lhu x18, 0 ( x10 )
.LBB1_216:                              //  %cond.end711
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x23, x0
	and x10, fp, 1
	beq x0, x10, .LBB1_219
.LBB1_217:                              //  %cond.end714
                                        //    in Loop: Header=BB1_19 Depth=2
	or x10, x23, x18
	beq x0, x10, .LBB1_219
.LBB1_218:                              //  %if.then721
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x0, 48
	or fp, fp, 2
	sw x27, 112 ( sp )
	sw x10, 108 ( sp )
.LBB1_219:                              //  %if.end725
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x0, 2
	and fp, fp, -1025
	sw x0, 176 ( sp )
	add x11, x0, -1
	bge x11, x12, .LBB1_221
.LBB1_220:                              //    in Loop: Header=BB1_19 Depth=2
	and fp, fp, -129
.LBB1_221:                              //  %number
                                        //    in Loop: Header=BB1_19 Depth=2
	bltu x0, x12, .LBB1_226
.LBB1_222:                              //  %number
                                        //    in Loop: Header=BB1_19 Depth=2
	or x11, x23, x18
	bltu x0, x11, .LBB1_226
.LBB1_223:                              //  %if.else807
                                        //    in Loop: Header=BB1_19 Depth=2
	bltu x0, x10, .LBB1_231
.LBB1_224:                              //  %if.else807
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	and x10, fp, 1
	beq x0, x10, .LBB1_232
.LBB1_225:                              //  %if.then814
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x0, 48
	add x19, sp, 608
	sw x10, 608 ( sp )
	jal x0, .LBB1_265
.LBB1_226:                              //  %if.then738
                                        //    in Loop: Header=BB1_19 Depth=2
	beq x0, x10, .LBB1_233
.LBB1_227:                              //  %if.then738
                                        //    in Loop: Header=BB1_19 Depth=2
	xor x11, x10, 1
	beq x0, x11, .LBB1_238
.LBB1_228:                              //  %if.then738
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x19, 44 ( sp )               //  4-byte Folded Reload
	lw x12, 40 ( sp )               //  4-byte Folded Reload
	xor x10, x10, 2
	bltu x0, x10, .LBB1_241
.LBB1_229:                              //  %do.body798
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	and x10, x18, 15
	sll x10, x10, 2&31
	add x10, x10, x12
	lw x10, 0 ( x10 )
	sll x11, x23, 28&31
	srl x23, x23, 4&31
	sw x10, -4 ( x19 )
	srl x10, x18, 4&31
	or x18, x11, x10
	add x19, x19, -4
	or x10, x23, x18
	bltu x0, x10, .LBB1_229
.LBB1_230:                              //    in Loop: Header=BB1_19 Depth=2
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_265
.LBB1_231:                              //    in Loop: Header=BB1_19 Depth=2
	lw x19, 44 ( sp )               //  4-byte Folded Reload
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_265
.LBB1_232:                              //    in Loop: Header=BB1_19 Depth=2
	lw x19, 44 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_265
.LBB1_233:                              //  %do.body741.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	add x19, sp, 608
.LBB1_234:                              //  %do.body741
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sll x11, x23, 29&31
	srl x10, x18, 3&31
	or x10, x11, x10
	and x11, x18, 7
	or x11, x11, 48
	srl x23, x23, 3&31
	sw x11, 0 ( x19 )
	add x19, x19, -4
	or x12, x23, x10
	mv x18, x10
	bltu x0, x12, .LBB1_234
.LBB1_235:                              //  %do.end748
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x19, 4
	and x12, fp, 1
	beq x0, x12, .LBB1_263
.LBB1_236:                              //  %do.end748
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	xor x11, x11, 48
	beq x0, x11, .LBB1_264
.LBB1_237:                              //  %if.then754
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x0, 48
	sw x10, 0 ( x19 )
	jal x0, .LBB1_265
.LBB1_238:                              //    in Loop: Header=BB1_19 Depth=2
	sw fp, 96 ( sp )                //  4-byte Folded Spill
	add x10, x0, 9
	mv x11, x0
	beq x23, x11, .LBB1_147
.LBB1_239:                              //  %sw.bb757
                                        //    in Loop: Header=BB1_19 Depth=2
	snez x10, x23
	bltu x0, x10, .LBB1_148
.LBB1_240:                              //  %if.then760
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x18, 48
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	lw fp, 96 ( sp )                //  4-byte Folded Reload
	sw x10, 608 ( sp )
	add x19, sp, 608
	jal x0, .LBB1_265
.LBB1_241:                              //  %sw.default
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x10, %hi( .str.7 )
	add x10, x10, %lo( .str.7 )
	sw x10, 64 ( sp )               //  4-byte Folded Spill
	jal wcslen
	mv x24, x0
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	lw x11, 80 ( sp )               //  4-byte Folded Reload
	mv x23, x10
	sw x24, 56 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB1_139
.LBB1_242:                              //  %if.else589
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	jal strlen
	mv x19, x10
.LBB1_243:                              //  %if.end591
                                        //    in Loop: Header=BB1_19 Depth=2
	sltiu x10, x19, 100
	sll fp, x19, 2&31
	bltu x0, x10, .LBB1_246
.LBB1_244:                              //  %if.then594
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	add x11, fp, 4
	jal _malloc_r
	bltu x0, x10, .LBB1_245
.LBB1_526:                              //  %if.then594
	jal x0, .LBB1_516
.LBB1_245:                              //    in Loop: Header=BB1_19 Depth=2
	sw x10, 68 ( sp )               //  4-byte Folded Spill
.LBB1_247:                              //  %for.body.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x13, x10
	mv x11, x19
.LBB1_248:                              //  %for.body
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lb x12, 0 ( x26 )
	add x26, x26, 1
	add x11, x11, -1
	sw x12, 0 ( x13 )
	add x13, x13, 4
	bltu x0, x11, .LBB1_248
.LBB1_249:                              //  %cleanup617.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x10, 64 ( sp )               //  4-byte Folded Spill
	add x10, fp, x10
	mv x24, x23
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	lw fp, 96 ( sp )                //  4-byte Folded Reload
	sw x23, 52 ( sp )               //  4-byte Folded Spill
	sw x23, 56 ( sp )               //  4-byte Folded Spill
	sw x0, 0 ( x10 )
	mv x23, x19
	mv x11, x24
	mv x10, x11
	mv x19, x11
	bge x23, x11, .LBB1_296
	jal x0, .LBB1_297
.LBB1_250:                              //  %if.else640
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	jal wcslen
	mv x23, x10
.LBB1_251:                              //  %sw.epilog830
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x24, x0
	sw x24, 56 ( sp )               //  4-byte Folded Spill
	mv x11, x24
	sw x24, 68 ( sp )               //  4-byte Folded Spill
	sw x24, 52 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB1_267
.LBB1_253:                              //  %if.else407
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14, 160 ( sp )
	lw fp, 80 ( sp )                //  4-byte Folded Reload
	xor x10, x27, 102
	bltu x0, x10, .LBB1_257
.LBB1_254:                              //  %if.then410
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	and x10, x12, 1
	or x10, x23, x10
	bge x0, x14, .LBB1_261
.LBB1_255:                              //  %if.then413
                                        //    in Loop: Header=BB1_19 Depth=2
	add x27, x0, 102
	beq x0, x10, .LBB1_280
.LBB1_256:                              //  %if.then418
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x14, x23
	add x23, x10, 1
	mv x13, x0
	and x10, x12, 1024
	bltu x0, x10, .LBB1_271
	jal x0, .LBB1_292
.LBB1_257:                              //  %if.else433
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 128 ( sp )
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	bge x14, x10, .LBB1_260
.LBB1_258:                              //  %if.else442
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x11, x0
	blt x11, x14, .LBB1_269
.LBB1_259:                              //  %if.else442
                                        //    in Loop: Header=BB1_19 Depth=2
	add x11, x0, 2
	sub x11, x11, x14
	jal x0, .LBB1_270
.LBB1_260:                              //  %if.then436
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, x12, 1
	add x23, x10, x14
	add x27, x0, 103
	mv x13, x0
	and x10, x12, 1024
	bltu x0, x10, .LBB1_271
	jal x0, .LBB1_292
.LBB1_263:                              //    in Loop: Header=BB1_19 Depth=2
	lw x18, 84 ( sp )               //  4-byte Folded Reload
.LBB1_264:                              //    in Loop: Header=BB1_19 Depth=2
	mv x19, x10
.LBB1_265:                              //  %if.end817
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	mv x24, x0
	lw x11, 80 ( sp )               //  4-byte Folded Reload
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	sub x10, x10, x19
	sw x24, 56 ( sp )               //  4-byte Folded Spill
	sra x23, x10, 2&31
.LBB1_139:                              //  %if.end292
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x24, 68 ( sp )               //  4-byte Folded Spill
	sw x24, 52 ( sp )               //  4-byte Folded Spill
	mv x10, x11
	mv x19, x11
	bge x23, x11, .LBB1_296
	jal x0, .LBB1_297
.LBB1_266:                              //    in Loop: Header=BB1_19 Depth=2
	mv x10, x23
	sw x23, 68 ( sp )               //  4-byte Folded Spill
	mv x23, x19
	mv x11, x10
	mv x24, x10
	sw x10, 56 ( sp )               //  4-byte Folded Spill
	sw x10, 52 ( sp )               //  4-byte Folded Spill
.LBB1_267:                              //  %sw.epilog830
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x26, 64 ( sp )               //  4-byte Folded Spill
.LBB1_268:                              //  %sw.epilog830
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	mv x10, x11
	mv x19, x11
	bge x23, x11, .LBB1_296
	jal x0, .LBB1_297
.LBB1_269:                              //    in Loop: Header=BB1_19 Depth=2
	seqz x11, x0
.LBB1_270:                              //  %if.else442
                                        //    in Loop: Header=BB1_19 Depth=2
	add x23, x10, x11
	add x27, x0, 103
	mv x13, x0
	and x10, x12, 1024
	bltu x0, x10, .LBB1_271
	jal x0, .LBB1_292
.LBB1_280:                              //    in Loop: Header=BB1_19 Depth=2
	mv x23, x14
	mv x13, x0
	and x10, x12, 1024
	beq x0, x10, .LBB1_292
.LBB1_271:                              //  %if.end452
                                        //    in Loop: Header=BB1_19 Depth=2
	bge x0, x14, .LBB1_292
.LBB1_272:                              //  %while.cond459.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lb x10, 0 ( x26 )
	mv x13, x0
	xor x11, x10, 127
	beq x0, x11, .LBB1_288
.LBB1_273:                              //  %while.cond459.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	bge x10, x14, .LBB1_288
.LBB1_274:                              //  %if.end468.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x11, x0
	mv x13, x11
	mv x24, x11
.LBB1_275:                              //  %if.end468
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lbu x12, 1 ( x26 )
	beq x12, x11, .LBB1_277
.LBB1_276:                              //  %if.end468
                                        //    in Loop: Header=BB1_275 Depth=3
	add x26, x26, 1
.LBB1_277:                              //  %if.end468
                                        //    in Loop: Header=BB1_275 Depth=3
	sub x14, x14, x10
	snez x10, x12
	add x24, x10, x24
	seqz x10, x12
	add x13, x10, x13
	lb x10, 0 ( x26 )
	xor x12, x10, 127
	beq x0, x12, .LBB1_289
.LBB1_278:                              //  %if.end468
                                        //    in Loop: Header=BB1_275 Depth=3
	blt x10, x14, .LBB1_275
	jal x0, .LBB1_289
.LBB1_288:                              //    in Loop: Header=BB1_19 Depth=2
	mv x24, x13
.LBB1_289:                              //  %while.end479
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x23, x13
	add x23, x24, x10
	jal x0, .LBB1_293
.LBB1_282:                              //  %cond.true530
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	add x11, x10, 4
	sw x11, 180 ( sp )
	lhu x18, 0 ( x10 )
.LBB1_283:                              //  %cond.false534
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	lw x12, 80 ( sp )               //  4-byte Folded Reload
	mv x23, x0
.LBB1_284:                              //  %cond.end550
                                        //    in Loop: Header=BB1_19 Depth=2
	add x27, x0, 111
	mv x10, x0
	and fp, fp, -1025
	sw x0, 176 ( sp )
	add x11, x0, -1
	blt x11, x12, .LBB1_220
	jal x0, .LBB1_221
.LBB1_285:                              //  %cond.true658
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 180 ( sp )
	add x11, x10, 4
	sw x11, 180 ( sp )
	lhu x18, 0 ( x10 )
.LBB1_286:                              //  %cond.false662
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	lw x12, 80 ( sp )               //  4-byte Folded Reload
	mv x23, x0
	add x27, x0, 117
	seqz x10, x0
	sw x0, 176 ( sp )
	add x11, x0, -1
	blt x11, x12, .LBB1_220
	jal x0, .LBB1_221
.LBB1_290:                              //    in Loop: Header=BB1_19 Depth=2
	seqz x23, x0
.LBB1_291:                              //  %if.end452.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	add x27, x0, 102
.LBB1_292:                              //  %if.end484
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x24, x13
.LBB1_293:                              //  %if.end484
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 164 ( sp )
	mv x11, x0
	sw x14, 52 ( sp )               //  4-byte Folded Spill
	sw x13, 56 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB1_295
.LBB1_294:                              //  %if.then486
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x0, 45
	sw x10, 176 ( sp )
.LBB1_295:                              //  %sw.epilog830
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x11
	mv x19, x11
	blt x23, x11, .LBB1_297
.LBB1_296:                              //  %sw.epilog830
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x23
.LBB1_297:                              //  %sw.epilog830
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 176 ( sp )
	sw fp, 96 ( sp )                //  4-byte Folded Spill
	and fp, fp, 2
	sw x26, 92 ( sp )               //  4-byte Folded Spill
	snez x11, x11
	add x11, x11, x10
	srl x10, fp, 1&31
	beq x0, x10, .LBB1_299
.LBB1_298:                              //    in Loop: Header=BB1_19 Depth=2
	add x11, x11, 2
.LBB1_299:                              //  %sw.epilog830
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	sw x11, 80 ( sp )               //  4-byte Folded Spill
	and x26, x10, 132
	beq x0, x26, .LBB1_300
.LBB1_308:                              //  %if.end895
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 176 ( sp )
	beq x0, x10, .LBB1_314
.LBB1_309:                              //  %if.then897
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 8 ( x9 )
	add x10, x10, 4
	sw x10, 8 ( x9 )
	add x10, x0, 4
	sw x10, 4 ( x20 )
	add x10, sp, 176
	sw x10, 0 ( x20 )
	lw x10, 120 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_311
.LBB1_310:                              //  %if.then907
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	add x20, sp, 1236
	beq x0, x10, .LBB1_314
	jal x0, .LBB1_507
.LBB1_300:                              //  %if.then849
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	sub x18, x25, x10
	bge x0, x18, .LBB1_313
.LBB1_301:                              //  %while.cond854.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x20 )
	slti x10, x18, 17
	beq x0, x10, .LBB1_304
	jal x0, .LBB1_306
.LBB1_302:                              //    in Loop: Header=BB1_304 Depth=3
	add x20, x20, 8
.LBB1_303:                              //  %if.end873
                                        //    in Loop: Header=BB1_304 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add x18, x18, -16
	sw x10, 0 ( x20 )
	add x10, x0, 16
	bge x10, x18, .LBB1_306
.LBB1_304:                              //  %while.body857
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x9 )
	add x10, x10, 64
	sw x10, 8 ( x9 )
	add x10, x0, 64
	sw x10, 4 ( x20 )
	lw x10, 120 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_302
.LBB1_305:                              //  %if.then867
                                        //    in Loop: Header=BB1_304 Depth=3
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	lw x11, 84 ( sp )               //  4-byte Folded Reload
	mv x12, x9
	jal __sprint_r
	add x20, sp, 1236
	beq x0, x10, .LBB1_303
	jal x0, .LBB1_503
.LBB1_311:                              //    in Loop: Header=BB1_19 Depth=2
	add x20, x20, 8
	bltu x0, fp, .LBB1_315
	jal x0, .LBB1_317
.LBB1_306:                              //  %while.end875
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 8 ( x9 )
	sll x10, x18, 2&31
	sw x10, 4 ( x20 )
	add x11, x10, x11
	lw x10, 120 ( sp )
	sw x11, 8 ( x9 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_312
.LBB1_307:                              //  %if.then887
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x12, x9
	mv x11, x18
	jal __sprint_r
	add x20, sp, 1236
	beq x0, x10, .LBB1_308
	jal x0, .LBB1_507
.LBB1_312:                              //    in Loop: Header=BB1_19 Depth=2
	add x20, x20, 8
.LBB1_313:                              //  %if.end895
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	lw x10, 176 ( sp )
	bltu x0, x10, .LBB1_309
.LBB1_314:                              //  %if.end914
                                        //    in Loop: Header=BB1_19 Depth=2
	beq x0, fp, .LBB1_317
.LBB1_315:                              //  %if.then917
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 8 ( x9 )
	add x10, x10, 8
	sw x10, 8 ( x9 )
	add x10, x0, 8
	sw x10, 4 ( x20 )
	add x10, sp, 108
	sw x10, 0 ( x20 )
	lw x10, 120 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_326
.LBB1_316:                              //  %if.then928
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	add x20, sp, 1236
	bltu x0, x10, .LBB1_507
.LBB1_317:                              //  %if.end935
                                        //    in Loop: Header=BB1_19 Depth=2
	xor x10, x26, 128
	bltu x0, x10, .LBB1_327
.LBB1_318:                              //  %if.then939
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	lw x26, 88 ( sp )               //  4-byte Folded Reload
	sub fp, x25, x10
	bge x0, fp, .LBB1_328
.LBB1_319:                              //  %while.cond944.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x20 )
	slti x10, fp, 17
	beq x0, x10, .LBB1_322
	jal x0, .LBB1_324
.LBB1_320:                              //    in Loop: Header=BB1_322 Depth=3
	add x20, x20, 8
.LBB1_321:                              //  %if.end963
                                        //    in Loop: Header=BB1_322 Depth=3
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x20 )
	add x10, x0, 16
	bge x10, fp, .LBB1_324
.LBB1_322:                              //  %while.body947
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x9 )
	add x10, x10, 64
	sw x10, 8 ( x9 )
	add x10, x0, 64
	sw x10, 4 ( x20 )
	lw x10, 120 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_320
.LBB1_323:                              //  %if.then957
                                        //    in Loop: Header=BB1_322 Depth=3
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	add x20, sp, 1236
	beq x0, x10, .LBB1_321
	jal x0, .LBB1_508
.LBB1_324:                              //  %while.end965
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 8 ( x9 )
	sll x10, fp, 2&31
	sw x10, 4 ( x20 )
	add x11, x10, x11
	lw x10, 120 ( sp )
	sw x11, 8 ( x9 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_350
.LBB1_325:                              //  %if.then977
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	add x20, sp, 1236
	beq x0, x10, .LBB1_328
	jal x0, .LBB1_508
.LBB1_326:                              //    in Loop: Header=BB1_19 Depth=2
	add x20, x20, 8
	xor x10, x26, 128
	beq x0, x10, .LBB1_318
.LBB1_327:                              //    in Loop: Header=BB1_19 Depth=2
	lw x26, 88 ( sp )               //  4-byte Folded Reload
.LBB1_328:                              //  %if.end985
                                        //    in Loop: Header=BB1_19 Depth=2
	sub fp, x19, x23
	bge x0, fp, .LBB1_351
.LBB1_329:                              //  %while.cond990.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x20 )
	slti x10, fp, 17
	beq x0, x10, .LBB1_332
	jal x0, .LBB1_334
.LBB1_330:                              //    in Loop: Header=BB1_332 Depth=3
	add x20, x20, 8
.LBB1_331:                              //  %if.end1009
                                        //    in Loop: Header=BB1_332 Depth=3
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x20 )
	add x10, x0, 16
	bge x10, fp, .LBB1_334
.LBB1_332:                              //  %while.body993
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x9 )
	add x10, x10, 64
	sw x10, 8 ( x9 )
	add x10, x0, 64
	sw x10, 4 ( x20 )
	lw x10, 120 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_330
.LBB1_333:                              //  %if.then1003
                                        //    in Loop: Header=BB1_332 Depth=3
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	add x20, sp, 1236
	beq x0, x10, .LBB1_331
	jal x0, .LBB1_508
.LBB1_334:                              //  %while.end1011
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 8 ( x9 )
	sll x10, fp, 2&31
	sw x10, 4 ( x20 )
	add x11, x10, x11
	lw x10, 120 ( sp )
	sw x11, 8 ( x9 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_339
.LBB1_335:                              //  %if.then1023
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	lw fp, 96 ( sp )                //  4-byte Folded Reload
	add x20, sp, 1236
	bltu x0, x10, .LBB1_508
.LBB1_336:                              //  %if.end1030
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, fp, 256
	bltu x0, x10, .LBB1_340
.LBB1_337:                              //  %if.then1034
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 8 ( x9 )
	sll x10, x23, 2&31
	sw x10, 4 ( x20 )
	add x11, x10, x11
	lw x10, 64 ( sp )               //  4-byte Folded Reload
	sw x11, 8 ( x9 )
	sw x10, 0 ( x20 )
	lw x10, 120 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_346
.LBB1_338:                              //  %if.then1046
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	lw x24, 72 ( sp )               //  4-byte Folded Reload
	lw x27, 80 ( sp )               //  4-byte Folded Reload
	add x20, sp, 1236
	mv x23, x0
	add x19, x0, 90
	beq x0, x10, .LBB1_453
	jal x0, .LBB1_509
.LBB1_339:                              //    in Loop: Header=BB1_19 Depth=2
	lw fp, 96 ( sp )                //  4-byte Folded Reload
	add x20, x20, 8
	and x10, fp, 256
	beq x0, x10, .LBB1_337
.LBB1_340:                              //  %if.else1053
                                        //    in Loop: Header=BB1_19 Depth=2
	sltiu x10, x27, 102
	bltu x0, x10, .LBB1_347
.LBB1_341:                              //  %if.then1056
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 48 ( sp )               //  4-byte Folded Reload
	lw x11, 60 ( sp )               //  4-byte Folded Reload
	mv x23, x0
	mv x13, x23
	mv x12, x23
	jal __nedf2
	bltu x0, x10, .LBB1_357
.LBB1_342:                              //  %if.then1060
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 8 ( x9 )
	lw x27, 80 ( sp )               //  4-byte Folded Reload
	add x10, x10, 4
	sw x10, 8 ( x9 )
	add x10, x0, 4
	sw x10, 4 ( x20 )
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x20 )
	lw x10, 120 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_363
.LBB1_343:                              //  %if.then1070
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	lw x24, 72 ( sp )               //  4-byte Folded Reload
	add x20, sp, 1236
	add x19, x0, 90
	bltu x0, x10, .LBB1_509
.LBB1_344:                              //  %if.end1076
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 128 ( sp )
	and x11, fp, 1
	bltu x0, x11, .LBB1_364
.LBB1_345:                              //  %if.end1076
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 160 ( sp )
	bge x11, x10, .LBB1_453
	jal x0, .LBB1_364
.LBB1_346:                              //    in Loop: Header=BB1_19 Depth=2
	lw x24, 72 ( sp )               //  4-byte Folded Reload
	lw x27, 80 ( sp )               //  4-byte Folded Reload
	add x20, x20, 8
	mv x23, x0
	add x19, x0, 90
	and x10, fp, 4
	beq x0, x10, .LBB1_495
.LBB1_454:                              //  %if.then1740
                                        //    in Loop: Header=BB1_19 Depth=2
	sub fp, x25, x27
	bge x0, fp, .LBB1_495
.LBB1_455:                              //  %while.cond1745.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x20 )
	slti x10, fp, 17
	beq x0, x10, .LBB1_458
	jal x0, .LBB1_460
.LBB1_456:                              //    in Loop: Header=BB1_458 Depth=3
	add x20, x20, 8
.LBB1_457:                              //  %if.end1764
                                        //    in Loop: Header=BB1_458 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x20 )
	add x10, x0, 16
	bge x10, fp, .LBB1_460
.LBB1_458:                              //  %while.body1748
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x9 )
	add x10, x10, 64
	sw x10, 8 ( x9 )
	add x10, x0, 64
	sw x10, 4 ( x20 )
	lw x10, 120 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_456
.LBB1_459:                              //  %if.then1758
                                        //    in Loop: Header=BB1_458 Depth=3
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	add x20, sp, 1236
	beq x0, x10, .LBB1_457
	jal x0, .LBB1_509
.LBB1_347:                              //  %if.else1589
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10, x0, 4
	sw x10, 4 ( x20 )
	lw x10, 64 ( sp )               //  4-byte Folded Reload
	lw x12, 120 ( sp )
	lw x13, 128 ( sp )
	add x18, x20, 8
	sw x10, 0 ( x20 )
	lw x10, 8 ( x9 )
	and x14, fp, 1
	mv x23, x0
	add x11, x10, 4
	add x10, x12, 1
	sw x11, 8 ( x9 )
	sw x10, 120 ( sp )
	bltu x0, x14, .LBB1_352
.LBB1_348:                              //  %if.else1589
                                        //    in Loop: Header=BB1_19 Depth=2
	slti x13, x13, 2
	beq x0, x13, .LBB1_352
.LBB1_349:                              //  %if.else1699
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x24, 72 ( sp )               //  4-byte Folded Reload
	lw x27, 80 ( sp )               //  4-byte Folded Reload
	slti x10, x12, 7
	add x19, x0, 90
	beq x0, x10, .LBB1_371
	jal x0, .LBB1_449
.LBB1_460:                              //  %while.end1766
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 8 ( x9 )
	sll x10, fp, 2&31
	sw x10, 4 ( x20 )
	add x10, x10, x11
	lw x11, 120 ( sp )
	sw x10, 8 ( x9 )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 120 ( sp )
	bltu x0, x11, .LBB1_496
.LBB1_461:                              //  %if.then1778
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	beq x0, x10, .LBB1_495
	jal x0, .LBB1_509
.LBB1_350:                              //    in Loop: Header=BB1_19 Depth=2
	add x20, x20, 8
	sub fp, x19, x23
	blt x0, fp, .LBB1_329
.LBB1_351:                              //    in Loop: Header=BB1_19 Depth=2
	lw fp, 96 ( sp )                //  4-byte Folded Reload
	and x10, fp, 256
	beq x0, x10, .LBB1_337
	jal x0, .LBB1_340
.LBB1_352:                              //  %if.then1595
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x24, 72 ( sp )               //  4-byte Folded Reload
	lw x27, 80 ( sp )               //  4-byte Folded Reload
	slti x12, x12, 7
	add x19, x0, 90
	bltu x0, x12, .LBB1_355
.LBB1_353:                              //  %if.then1605
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	mv x10, x26
	mv x12, x9
	mv x11, x18
	jal __sprint_r
	bltu x0, x10, .LBB1_509
.LBB1_354:                              //  %if.then1605.if.end1611_crit_edge
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 120 ( sp )
	lw x11, 8 ( x9 )
	add x18, sp, 1236
.LBB1_355:                              //  %if.end1611
                                        //    in Loop: Header=BB1_19 Depth=2
	add x11, x11, 4
	sw x11, 8 ( x9 )
	add x11, x0, 4
	sw x11, 4 ( x18 )
	add x11, sp, 168
	sw x11, 0 ( x18 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_368
.LBB1_356:                              //  %if.then1622
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 84 ( sp )               //  4-byte Folded Reload
	mv x10, x26
	mv x12, x9
	jal __sprint_r
	add x18, sp, 1236
	beq x0, x10, .LBB1_369
	jal x0, .LBB1_514
.LBB1_357:                              //  %if.else1145
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 160 ( sp )
	lw x27, 80 ( sp )               //  4-byte Folded Reload
	bge x0, x10, .LBB1_385
.LBB1_358:                              //  %if.else1252
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 128 ( sp )
	lw x11, 52 ( sp )               //  4-byte Folded Reload
	sll x10, x10, 2&31
	sra x10, x10, 2&31
	mv fp, x11
	blt x11, x10, .LBB1_360
.LBB1_359:                              //  %if.else1252
                                        //    in Loop: Header=BB1_19 Depth=2
	mv fp, x10
.LBB1_360:                              //  %if.else1252
                                        //    in Loop: Header=BB1_19 Depth=2
	bge x0, fp, .LBB1_391
.LBB1_361:                              //  %if.then1265
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 8 ( x9 )
	sll x10, fp, 2&31
	sw x10, 4 ( x20 )
	add x11, x10, x11
	lw x10, 64 ( sp )               //  4-byte Folded Reload
	sw x11, 8 ( x9 )
	sw x10, 0 ( x20 )
	lw x10, 120 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_390
.LBB1_362:                              //  %if.then1277
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	add x20, sp, 1236
	beq x0, x10, .LBB1_391
	jal x0, .LBB1_508
.LBB1_363:                              //    in Loop: Header=BB1_19 Depth=2
	lw x24, 72 ( sp )               //  4-byte Folded Reload
	add x20, x20, 8
	add x19, x0, 90
	lw x10, 128 ( sp )
	and x11, fp, 1
	beq x0, x11, .LBB1_345
.LBB1_364:                              //  %if.then1082
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 8 ( x9 )
	add x11, x11, 4
	sw x11, 8 ( x9 )
	add x11, x0, 4
	sw x11, 4 ( x20 )
	add x11, sp, 168
	sw x11, 0 ( x20 )
	lw x11, 120 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 120 ( sp )
	bltu x0, x11, .LBB1_378
.LBB1_365:                              //  %if.then1092
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	bltu x0, x10, .LBB1_509
.LBB1_366:                              //  %if.then1092.if.end1098_crit_edge
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 128 ( sp )
	add x20, sp, 1236
	add fp, x10, -1
	blt x0, fp, .LBB1_379
	jal x0, .LBB1_367
.LBB1_368:                              //    in Loop: Header=BB1_19 Depth=2
	add x18, x18, 8
.LBB1_369:                              //  %if.end1628
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 48 ( sp )               //  4-byte Folded Reload
	lw x11, 60 ( sp )               //  4-byte Folded Reload
	mv x13, x23
	mv x12, x23
	jal __eqdf2
	beq x0, x10, .LBB1_372
.LBB1_370:                              //  %if.then1631
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 64 ( sp )               //  4-byte Folded Reload
	lw x11, 128 ( sp )
	lw x12, 8 ( x9 )
	add x10, x10, 4
	sw x10, 0 ( x18 )
	lw x10, 120 ( sp )
	sll x11, x11, 2&31
	add x11, x11, -4
	add x12, x11, x12
	sw x11, 4 ( x18 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x12, 8 ( x9 )
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_448
.LBB1_371:                              //  %if.then1645
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 84 ( sp )               //  4-byte Folded Reload
	mv x10, x26
	mv x12, x9
	jal __sprint_r
	add x18, sp, 1236
	beq x0, x10, .LBB1_449
	jal x0, .LBB1_514
.LBB1_372:                              //  %if.else1652
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 128 ( sp )
	add fp, x10, -1
	bge x0, fp, .LBB1_406
.LBB1_373:                              //  %while.cond1657.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x18 )
	slti x10, fp, 17
	beq x0, x10, .LBB1_376
	jal x0, .LBB1_388
.LBB1_374:                              //    in Loop: Header=BB1_376 Depth=3
	add x18, x18, 8
.LBB1_375:                              //  %if.end1676
                                        //    in Loop: Header=BB1_376 Depth=3
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x18 )
	add x10, x0, 16
	bge x10, fp, .LBB1_388
.LBB1_376:                              //  %while.body1660
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x9 )
	add x10, x10, 64
	sw x10, 8 ( x9 )
	add x10, x0, 64
	sw x10, 4 ( x18 )
	lw x10, 120 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_374
.LBB1_377:                              //  %if.then1670
                                        //    in Loop: Header=BB1_376 Depth=3
	lw x11, 84 ( sp )               //  4-byte Folded Reload
	mv x10, x26
	mv x12, x9
	jal __sprint_r
	add x18, sp, 1236
	beq x0, x10, .LBB1_375
	jal x0, .LBB1_514
.LBB1_378:                              //    in Loop: Header=BB1_19 Depth=2
	add x20, x20, 8
	add fp, x10, -1
	bge x0, fp, .LBB1_367
.LBB1_379:                              //  %while.cond1103.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x20 )
	slti x10, fp, 17
	beq x0, x10, .LBB1_382
	jal x0, .LBB1_485
.LBB1_380:                              //    in Loop: Header=BB1_382 Depth=3
	add x20, x20, 8
.LBB1_381:                              //  %if.end1122
                                        //    in Loop: Header=BB1_382 Depth=3
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x20 )
	add x10, x0, 16
	bge x10, fp, .LBB1_485
.LBB1_382:                              //  %while.body1106
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x9 )
	add x10, x10, 64
	sw x10, 8 ( x9 )
	add x10, x0, 64
	sw x10, 4 ( x20 )
	lw x10, 120 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_380
.LBB1_383:                              //  %if.then1116
                                        //    in Loop: Header=BB1_382 Depth=3
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	add x20, sp, 1236
	beq x0, x10, .LBB1_381
	jal x0, .LBB1_509
.LBB1_385:                              //  %if.then1148
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 8 ( x9 )
	add x11, x11, 4
	sw x11, 8 ( x9 )
	add x11, x0, 4
	sw x11, 4 ( x20 )
	lw x11, 32 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x20 )
	lw x11, 120 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 120 ( sp )
	bltu x0, x11, .LBB1_401
.LBB1_386:                              //  %if.then1158
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	lw x24, 72 ( sp )               //  4-byte Folded Reload
	add x19, x0, 90
	bltu x0, x10, .LBB1_509
.LBB1_387:                              //  %if.then1158.if.end1164_crit_edge
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 160 ( sp )
	add x20, sp, 1236
	jal x0, .LBB1_402
.LBB1_388:                              //  %while.end1678
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 8 ( x9 )
	sll x10, fp, 2&31
	sw x10, 4 ( x18 )
	add x11, x10, x11
	lw x10, 120 ( sp )
	sw x11, 8 ( x9 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_447
.LBB1_389:                              //  %if.then1690
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 84 ( sp )               //  4-byte Folded Reload
	mv x10, x26
	mv x12, x9
	jal __sprint_r
	lw fp, 96 ( sp )                //  4-byte Folded Reload
	add x18, sp, 1236
	beq x0, x10, .LBB1_449
	jal x0, .LBB1_514
.LBB1_390:                              //    in Loop: Header=BB1_19 Depth=2
	add x20, x20, 8
.LBB1_391:                              //  %if.end1284
                                        //    in Loop: Header=BB1_19 Depth=2
	blt x23, fp, .LBB1_393
.LBB1_392:                              //  %if.end1284
                                        //    in Loop: Header=BB1_19 Depth=2
	mv fp, x23
.LBB1_393:                              //  %if.end1284
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	sub fp, x10, fp
	bge x0, fp, .LBB1_408
.LBB1_394:                              //  %while.cond1295.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x20 )
	slti x10, fp, 17
	beq x0, x10, .LBB1_397
	jal x0, .LBB1_399
.LBB1_395:                              //    in Loop: Header=BB1_397 Depth=3
	add x20, x20, 8
.LBB1_396:                              //  %if.end1314
                                        //    in Loop: Header=BB1_397 Depth=3
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x20 )
	add x10, x0, 16
	bge x10, fp, .LBB1_399
.LBB1_397:                              //  %while.body1298
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x9 )
	add x10, x10, 64
	sw x10, 8 ( x9 )
	add x10, x0, 64
	sw x10, 4 ( x20 )
	lw x10, 120 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_395
.LBB1_398:                              //  %if.then1308
                                        //    in Loop: Header=BB1_397 Depth=3
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	add x20, sp, 1236
	beq x0, x10, .LBB1_396
	jal x0, .LBB1_508
.LBB1_399:                              //  %while.end1316
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 8 ( x9 )
	sll x10, fp, 2&31
	sw x10, 4 ( x20 )
	add x11, x10, x11
	lw x10, 120 ( sp )
	sw x11, 8 ( x9 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_407
.LBB1_400:                              //  %if.then1328
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	lw fp, 56 ( sp )                //  4-byte Folded Reload
	add x20, sp, 1236
	beq x0, x10, .LBB1_409
	jal x0, .LBB1_508
.LBB1_401:                              //    in Loop: Header=BB1_19 Depth=2
	lw x24, 72 ( sp )               //  4-byte Folded Reload
	add x20, x20, 8
	add x19, x0, 90
.LBB1_402:                              //  %if.end1164
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x12, 128 ( sp )
	and x11, fp, 1
	or x11, x11, x10
	or x11, x12, x11
	beq x0, x11, .LBB1_453
.LBB1_403:                              //  %if.then1171
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 8 ( x9 )
	add x11, x11, 4
	sw x11, 8 ( x9 )
	add x11, x0, 4
	sw x11, 4 ( x20 )
	add x11, sp, 168
	sw x11, 0 ( x20 )
	lw x11, 120 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 120 ( sp )
	bltu x0, x11, .LBB1_463
.LBB1_404:                              //  %if.then1181
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	bltu x0, x10, .LBB1_509
.LBB1_405:                              //  %if.then1181.if.end1187_crit_edge
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 160 ( sp )
	add x11, sp, 1236
	bge x10, x0, .LBB1_492
	jal x0, .LBB1_464
.LBB1_406:                              //    in Loop: Header=BB1_19 Depth=2
	lw fp, 96 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB1_449
.LBB1_407:                              //    in Loop: Header=BB1_19 Depth=2
	add x20, x20, 8
.LBB1_408:                              //    in Loop: Header=BB1_19 Depth=2
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	lw fp, 56 ( sp )                //  4-byte Folded Reload
.LBB1_409:                              //  %cleanup.cont1338
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	lw x12, 64 ( sp )               //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x19, x10, x12
	and x10, x11, 1024
	bltu x0, x10, .LBB1_411
.LBB1_410:                              //  %cleanup.cont1338.if.end1471_crit_edge
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 128 ( sp )
	lw x24, 72 ( sp )               //  4-byte Folded Reload
	mv fp, x19
	jal x0, .LBB1_416
.LBB1_411:                              //  %while.cond1343.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	blt x0, fp, .LBB1_421
.LBB1_412:                              //  %while.cond1343.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	blt x0, x24, .LBB1_421
.LBB1_413:                              //  %while.end1464
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 128 ( sp )
	lw x12, 64 ( sp )               //  4-byte Folded Reload
	sll x11, x10, 2&31
	add fp, x11, x12
	bltu fp, x19, .LBB1_415
.LBB1_414:                              //  %while.end1464
                                        //    in Loop: Header=BB1_19 Depth=2
	mv fp, x19
.LBB1_415:                              //  %while.end1464
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x26, 88 ( sp )               //  4-byte Folded Reload
	lw x24, 72 ( sp )               //  4-byte Folded Reload
	mv x23, x0
.LBB1_416:                              //  %if.end1471
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x12, 96 ( sp )               //  4-byte Folded Reload
	lw x11, 160 ( sp )
	add x19, x0, 90
	and x12, x12, 1
	bltu x0, x12, .LBB1_418
.LBB1_417:                              //  %if.end1471
                                        //    in Loop: Header=BB1_19 Depth=2
	bge x11, x10, .LBB1_470
.LBB1_418:                              //  %if.then1477
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x12, 8 ( x9 )
	add x12, x12, 4
	sw x12, 8 ( x9 )
	add x12, x0, 4
	sw x12, 4 ( x20 )
	add x12, sp, 168
	sw x12, 0 ( x20 )
	lw x12, 120 ( sp )
	add x13, x12, 1
	slti x12, x12, 7
	sw x13, 120 ( sp )
	bltu x0, x12, .LBB1_469
.LBB1_419:                              //  %if.then1487
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	bltu x0, x10, .LBB1_509
.LBB1_420:                              //  %if.then1487.if.end1494_crit_edge
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 160 ( sp )
	lw x10, 128 ( sp )
	add x20, sp, 1236
	jal x0, .LBB1_470
.LBB1_421:                              //  %while.body1348.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	slt x23, x0, fp
.LBB1_422:                              //  %while.body1348
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_439 Depth 4
	lw x10, 8 ( x9 )
	and x26, x23, 1
	add x10, x10, 4
	sw x10, 8 ( x9 )
	add x10, x0, 4
	sw x10, 4 ( x20 )
	add x10, sp, 172
	sw x10, 0 ( x20 )
	lw x10, 120 ( sp )
	add x11, x10, 1
	sw x11, 120 ( sp )
	bltu x0, x26, .LBB1_424
.LBB1_423:                              //  %while.body1348
                                        //    in Loop: Header=BB1_422 Depth=3
	lw x11, 92 ( sp )               //  4-byte Folded Reload
	add x11, x11, -1
	sw x11, 92 ( sp )               //  4-byte Folded Spill
.LBB1_424:                              //  %while.body1348
                                        //    in Loop: Header=BB1_422 Depth=3
	slti x10, x10, 7
	bltu x0, x10, .LBB1_426
.LBB1_425:                              //  %if.then1366
                                        //    in Loop: Header=BB1_422 Depth=3
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	add x20, sp, 1236
	beq x0, x10, .LBB1_427
	jal x0, .LBB1_507
.LBB1_426:                              //    in Loop: Header=BB1_422 Depth=3
	add x20, x20, 8
.LBB1_427:                              //  %if.end1372
                                        //    in Loop: Header=BB1_422 Depth=3
	lw x10, 128 ( sp )
	lw x11, 64 ( sp )               //  4-byte Folded Reload
	sw fp, 56 ( sp )                //  4-byte Folded Spill
	sll x10, x10, 2&31
	add x10, x10, x11
	lw x11, 92 ( sp )               //  4-byte Folded Reload
	sub x10, x10, x19
	sra x10, x10, 2&31
	lb fp, 0 ( x11 )
	blt fp, x10, .LBB1_429
.LBB1_428:                              //  %if.end1372
                                        //    in Loop: Header=BB1_422 Depth=3
	mv fp, x10
.LBB1_429:                              //  %if.end1372
                                        //    in Loop: Header=BB1_422 Depth=3
	bge x0, fp, .LBB1_433
.LBB1_430:                              //  %if.then1387
                                        //    in Loop: Header=BB1_422 Depth=3
	lw x11, 8 ( x9 )
	sll x10, fp, 2&31
	sw x10, 4 ( x20 )
	sw x19, 0 ( x20 )
	add x11, x10, x11
	lw x10, 120 ( sp )
	sw x11, 8 ( x9 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_432
.LBB1_431:                              //  %if.then1399
                                        //    in Loop: Header=BB1_422 Depth=3
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	add x20, sp, 1236
	beq x0, x10, .LBB1_433
	jal x0, .LBB1_507
.LBB1_432:                              //    in Loop: Header=BB1_422 Depth=3
	add x20, x20, 8
.LBB1_433:                              //  %if.end1406
                                        //    in Loop: Header=BB1_422 Depth=3
	mv x10, x0
	blt x10, fp, .LBB1_435
.LBB1_434:                              //  %if.end1406
                                        //    in Loop: Header=BB1_422 Depth=3
	mv fp, x0
.LBB1_435:                              //  %if.end1406
                                        //    in Loop: Header=BB1_422 Depth=3
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	lb x10, 0 ( x10 )
	sub fp, x10, fp
	bge x0, fp, .LBB1_443
.LBB1_436:                              //  %while.cond1418.preheader
                                        //    in Loop: Header=BB1_422 Depth=3
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x20 )
	slti x10, fp, 17
	beq x0, x10, .LBB1_439
	jal x0, .LBB1_441
.LBB1_437:                              //    in Loop: Header=BB1_439 Depth=4
	add x20, x20, 8
.LBB1_438:                              //  %if.end1437
                                        //    in Loop: Header=BB1_439 Depth=4
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x20 )
	add x10, x0, 16
	bge x10, fp, .LBB1_441
.LBB1_439:                              //  %while.body1421
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_422 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	lw x10, 8 ( x9 )
	add x10, x10, 64
	sw x10, 8 ( x9 )
	add x10, x0, 64
	sw x10, 4 ( x20 )
	lw x10, 120 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_437
.LBB1_440:                              //  %if.then1431
                                        //    in Loop: Header=BB1_439 Depth=4
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	add x20, sp, 1236
	beq x0, x10, .LBB1_438
	jal x0, .LBB1_507
.LBB1_441:                              //  %while.end1439
                                        //    in Loop: Header=BB1_422 Depth=3
	lw x11, 8 ( x9 )
	sll x10, fp, 2&31
	sw x10, 4 ( x20 )
	add x11, x10, x11
	lw x10, 120 ( sp )
	sw x11, 8 ( x9 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_444
.LBB1_442:                              //  %if.then1451
                                        //    in Loop: Header=BB1_422 Depth=3
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	lw fp, 56 ( sp )                //  4-byte Folded Reload
	add x20, sp, 1236
	beq x0, x10, .LBB1_445
	jal x0, .LBB1_507
.LBB1_443:                              //    in Loop: Header=BB1_422 Depth=3
	lw fp, 56 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB1_445
.LBB1_444:                              //    in Loop: Header=BB1_422 Depth=3
	lw fp, 56 ( sp )                //  4-byte Folded Reload
	add x20, x20, 8
.LBB1_445:                              //  %cleanup.cont1461
                                        //    in Loop: Header=BB1_422 Depth=3
	xor x10, x23, -1
	and x10, x10, 1
	sub x24, x24, x10
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	sub fp, fp, x26
	slt x23, x0, fp
	lb x10, 0 ( x10 )
	sll x10, x10, 2&31
	add x19, x10, x19
	blt x0, fp, .LBB1_422
.LBB1_446:                              //  %cleanup.cont1461
                                        //    in Loop: Header=BB1_422 Depth=3
	blt x0, x24, .LBB1_422
	jal x0, .LBB1_413
.LBB1_447:                              //    in Loop: Header=BB1_19 Depth=2
	lw fp, 96 ( sp )                //  4-byte Folded Reload
.LBB1_448:                              //  %if.end1716
                                        //    in Loop: Header=BB1_19 Depth=2
	add x18, x18, 8
.LBB1_449:                              //  %if.end1716
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	lw x11, 8 ( x9 )
	sll x10, x10, 2&31
	add x11, x10, x11
	sw x10, 4 ( x18 )
	add x10, sp, 132
	sw x10, 0 ( x18 )
	lw x10, 120 ( sp )
	sw x11, 8 ( x9 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_462
.LBB1_450:                              //  %if.then1729
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x18, 84 ( sp )               //  4-byte Folded Reload
.LBB1_451:                              //  %if.then1244
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	add x20, sp, 1236
	bltu x0, x10, .LBB1_509
.LBB1_453:                              //  %if.end1737
                                        //    in Loop: Header=BB1_19 Depth=2
	and x10, fp, 4
	bltu x0, x10, .LBB1_454
.LBB1_495:                              //  %if.end1786thread-pre-split
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 124 ( sp )
.LBB1_496:                              //  %if.end1786
                                        //    in Loop: Header=BB1_19 Depth=2
	blt x27, x25, .LBB1_498
.LBB1_497:                              //  %if.end1786
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x25, x27
.LBB1_498:                              //  %if.end1786
                                        //    in Loop: Header=BB1_19 Depth=2
	add x24, x24, x25
	beq x0, x10, .LBB1_500
.LBB1_499:                              //  %land.lhs.true1796
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	bltu x0, x10, .LBB1_509
.LBB1_500:                              //  %if.end1800
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 68 ( sp )               //  4-byte Folded Reload
	sw x0, 120 ( sp )
	bltu x0, x11, .LBB1_501
.LBB1_527:                              //  %if.end1800
                                        //    in Loop: Header=BB1_16 Depth=1
	jal x0, .LBB1_16
.LBB1_501:                              //  %if.then1805
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	jal _free_r
	add x20, sp, 1236
	mv fp, x22
	lw x10, 0 ( fp )
	beq x0, x10, .LBB1_528
.LBB1_529:                              //  %if.then1805
                                        //    in Loop: Header=BB1_16 Depth=1
	jal x0, .LBB1_17
.LBB1_528:                              //  %if.then1805
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_19
.LBB1_462:                              //    in Loop: Header=BB1_19 Depth=2
	add x20, x18, 8
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	and x10, fp, 4
	bltu x0, x10, .LBB1_454
	jal x0, .LBB1_495
.LBB1_463:                              //    in Loop: Header=BB1_19 Depth=2
	add x11, x20, 8
	bge x10, x0, .LBB1_492
.LBB1_464:                              //  %while.cond1192.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x12, 104 ( sp )              //  4-byte Folded Reload
	sub fp, x0, x10
	sw x12, 0 ( x11 )
	add x12, x0, -17
	bge x12, x10, .LBB1_467
	jal x0, .LBB1_489
.LBB1_465:                              //    in Loop: Header=BB1_467 Depth=3
	add x11, x11, 8
.LBB1_466:                              //  %if.end1211
                                        //    in Loop: Header=BB1_467 Depth=3
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x11 )
	add x10, x0, 16
	bge x10, fp, .LBB1_489
.LBB1_467:                              //  %while.body1195
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x9 )
	add x10, x10, 64
	sw x10, 8 ( x9 )
	add x10, x0, 64
	sw x10, 4 ( x11 )
	lw x10, 120 ( sp )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 120 ( sp )
	bltu x0, x10, .LBB1_465
.LBB1_468:                              //  %if.then1205
                                        //    in Loop: Header=BB1_467 Depth=3
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	add x11, sp, 1236
	beq x0, x10, .LBB1_466
	jal x0, .LBB1_509
.LBB1_469:                              //    in Loop: Header=BB1_19 Depth=2
	add x20, x20, 8
.LBB1_470:                              //  %if.end1494
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x13, 64 ( sp )               //  4-byte Folded Reload
	sll x12, x10, 2&31
	sub x10, x10, x11
	mv x9, x10
	add x12, x12, x13
	sub x12, x12, fp
	sra x12, x12, 2&31
	blt x10, x12, .LBB1_472
.LBB1_471:                              //  %if.end1494
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x9, x12
.LBB1_472:                              //  %if.end1494
                                        //    in Loop: Header=BB1_19 Depth=2
	bge x0, x9, .LBB1_477
.LBB1_473:                              //  %if.then1509
                                        //    in Loop: Header=BB1_19 Depth=2
	add x12, sp, 116
	lw x13, 8 ( x12 )
	sll x11, x9, 2&31
	sw x11, 4 ( x20 )
	sw fp, 0 ( x20 )
	add x13, x11, x13
	lw x11, 120 ( sp )
	sw x13, 8 ( x12 )
	add x13, x11, 1
	slti x11, x11, 7
	sw x13, 120 ( sp )
	bltu x0, x11, .LBB1_476
.LBB1_474:                              //  %if.then1521
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	mv x11, x18
	jal __sprint_r
	bltu x0, x10, .LBB1_509
.LBB1_475:                              //  %if.then1521.if.end1528_crit_edge
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 160 ( sp )
	lw x11, 128 ( sp )
	add x20, sp, 1236
	sub x10, x11, x10
	bge x23, x9, .LBB1_478
.LBB1_479:                              //    in Loop: Header=BB1_19 Depth=2
	sub x11, x0, x9
	add x9, sp, 116
	add fp, x11, x10
	blt x0, fp, .LBB1_480
.LBB1_367:                              //    in Loop: Header=BB1_19 Depth=2
	lw fp, 96 ( sp )                //  4-byte Folded Reload
	and x10, fp, 4
	bltu x0, x10, .LBB1_454
	jal x0, .LBB1_495
.LBB1_476:                              //    in Loop: Header=BB1_19 Depth=2
	add x20, x20, 8
.LBB1_477:                              //  %if.end1528
                                        //    in Loop: Header=BB1_19 Depth=2
	blt x23, x9, .LBB1_479
.LBB1_478:                              //  %if.end1528
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x11, x23
	add x9, sp, 116
	add fp, x11, x10
	bge x0, fp, .LBB1_367
.LBB1_480:                              //  %while.cond1540.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x20 )
	slti x10, fp, 17
	beq x0, x10, .LBB1_483
	jal x0, .LBB1_485
.LBB1_481:                              //    in Loop: Header=BB1_483 Depth=3
	add x20, x20, 8
.LBB1_482:                              //  %if.end1559
                                        //    in Loop: Header=BB1_483 Depth=3
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x20 )
	add x10, x0, 16
	bge x10, fp, .LBB1_485
.LBB1_483:                              //  %while.body1543
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x9 )
	add x10, x10, 64
	sw x10, 8 ( x9 )
	add x10, x0, 64
	sw x10, 4 ( x20 )
	lw x10, 120 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_481
.LBB1_484:                              //  %if.then1553
                                        //    in Loop: Header=BB1_483 Depth=3
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	add x20, sp, 1236
	beq x0, x10, .LBB1_482
	jal x0, .LBB1_509
.LBB1_485:                              //  %while.end1124
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11, 8 ( x9 )
	sll x10, fp, 2&31
	sw x10, 4 ( x20 )
	add x11, x10, x11
	sw x11, 8 ( x9 )
	lw x10, 120 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 120 ( sp )
	bltu x0, x10, .LBB1_487
.LBB1_486:                              //  %if.then1136
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	lw fp, 96 ( sp )                //  4-byte Folded Reload
	add x20, sp, 1236
	beq x0, x10, .LBB1_453
	jal x0, .LBB1_509
.LBB1_487:                              //    in Loop: Header=BB1_19 Depth=2
	lw fp, 96 ( sp )                //  4-byte Folded Reload
	add x20, x20, 8
	and x10, fp, 4
	bltu x0, x10, .LBB1_454
	jal x0, .LBB1_495
.LBB1_489:                              //  %while.end1213
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x12, 8 ( x9 )
	sll x10, fp, 2&31
	sw x10, 4 ( x11 )
	add x12, x10, x12
	lw x10, 120 ( sp )
	sw x12, 8 ( x9 )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 120 ( sp )
	bltu x0, x10, .LBB1_491
.LBB1_490:                              //  %if.then1225
                                        //    in Loop: Header=BB1_19 Depth=2
	mv x10, x26
	mv x11, x18
	mv x12, x9
	jal __sprint_r
	lw fp, 96 ( sp )                //  4-byte Folded Reload
	add x11, sp, 1236
	beq x0, x10, .LBB1_492
	jal x0, .LBB1_509
.LBB1_491:                              //    in Loop: Header=BB1_19 Depth=2
	lw fp, 96 ( sp )                //  4-byte Folded Reload
	add x11, x11, 8
.LBB1_492:                              //  %if.end1232
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10, 128 ( sp )
	lw x12, 8 ( x9 )
	sll x10, x10, 2&31
	add x12, x10, x12
	sw x12, 8 ( x9 )
	lw x12, 64 ( sp )               //  4-byte Folded Reload
	sw x10, 4 ( x11 )
	lw x10, 120 ( sp )
	sw x12, 0 ( x11 )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 120 ( sp )
	beq x0, x10, .LBB1_451
.LBB1_494:                              //    in Loop: Header=BB1_19 Depth=2
	add x20, x11, 8
	and x10, fp, 4
	bltu x0, x10, .LBB1_454
	jal x0, .LBB1_495
.LBB1_502:                              //  %if.then
	mv x10, x26
	jal __sinit
	lhu x10, 12 ( x18 )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB1_530
.LBB1_531:                              //  %if.then
	jal x0, .LBB1_3
.LBB1_530:                              //  %if.then
	jal x0, .LBB1_4
.LBB1_503:
	lw x18, 84 ( sp )               //  4-byte Folded Reload
.LBB1_507:
	lw x26, 88 ( sp )               //  4-byte Folded Reload
.LBB1_508:
	lw x24, 72 ( sp )               //  4-byte Folded Reload
.LBB1_509:                              //  %error
	lw x11, 68 ( sp )               //  4-byte Folded Reload
	beq x0, x11, .LBB1_511
.LBB1_510:                              //  %if.then1818
	mv x10, x26
	jal _free_r
.LBB1_511:                              //  %if.end1819
	lbu x10, 12 ( x18 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB1_513
.LBB1_512:                              //  %if.end1819
	add x24, x0, -1
.LBB1_513:                              //  %cleanup1841
	mv x10, x24
	lw fp, 1340 ( sp )              //  4-byte Folded Reload
	lw x27, 1344 ( sp )             //  4-byte Folded Reload
	lw x26, 1348 ( sp )             //  4-byte Folded Reload
	lw x25, 1352 ( sp )             //  4-byte Folded Reload
	lw x24, 1356 ( sp )             //  4-byte Folded Reload
	lw x23, 1360 ( sp )             //  4-byte Folded Reload
	lw x22, 1364 ( sp )             //  4-byte Folded Reload
	lw x21, 1368 ( sp )             //  4-byte Folded Reload
	lw x20, 1372 ( sp )             //  4-byte Folded Reload
	lw x19, 1376 ( sp )             //  4-byte Folded Reload
	lw x18, 1380 ( sp )             //  4-byte Folded Reload
	lw x9, 1384 ( sp )              //  4-byte Folded Reload
	lw ra, 1388 ( sp )              //  4-byte Folded Reload
	add sp, sp, 1392
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_504:                              //  %done
	lw x10, 124 ( sp )
	beq x0, x10, .LBB1_506
.LBB1_505:                              //  %land.lhs.true1809
	add x12, sp, 116
	mv x10, x26
	mv x11, x18
	jal __sprint_r
	bltu x0, x10, .LBB1_511
.LBB1_506:                              //  %if.end1813
	sw x0, 120 ( sp )
	lbu x10, 12 ( x18 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB1_513
	jal x0, .LBB1_512
.LBB1_514:
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	lw x11, 68 ( sp )               //  4-byte Folded Reload
	bltu x0, x11, .LBB1_510
	jal x0, .LBB1_511
.LBB1_515:                              //  %if.then321
	lw x18, 84 ( sp )               //  4-byte Folded Reload
.LBB1_516:                              //  %cleanup617
	lh x10, 12 ( x18 )
	jal x0, .LBB1_517
.LBB1_518:                              //  %cleanup
	lh x10, 12 ( x18 )
	lw x24, 72 ( sp )               //  4-byte Folded Reload
.LBB1_517:                              //  %cleanup617
	or x10, x10, 64
	sh x10, 12 ( x18 )
	lbu x10, 12 ( x18 )
	mv x11, x0
	and x10, x10, 64
	bne x10, x11, .LBB1_512
	jal x0, .LBB1_513
.Lfunc_end1:
	.size	_vfwprintf_r, .Lfunc_end1-_vfwprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_40
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_42
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_43
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_48
	.long	.LBB1_51
	.long	.LBB1_124
	.long	.LBB1_50
	.long	.LBB1_32
	.long	.LBB1_124
	.long	.LBB1_54
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_72
	.long	.LBB1_124
	.long	.LBB1_86
	.long	.LBB1_124
	.long	.LBB1_72
	.long	.LBB1_72
	.long	.LBB1_72
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_55
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_89
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_104
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_72
	.long	.LBB1_124
	.long	.LBB1_86
	.long	.LBB1_95
	.long	.LBB1_72
	.long	.LBB1_72
	.long	.LBB1_72
	.long	.LBB1_56
	.long	.LBB1_95
	.long	.LBB1_39
	.long	.LBB1_124
	.long	.LBB1_58
	.long	.LBB1_124
	.long	.LBB1_64
	.long	.LBB1_106
	.long	.LBB1_111
	.long	.LBB1_39
	.long	.LBB1_124
	.long	.LBB1_89
	.long	.LBB1_53
	.long	.LBB1_112
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_117
	.long	.LBB1_124
	.long	.LBB1_53
                                        //  -- End function
	.text
	.type	wcvt,@function          //  -- Begin function wcvt
wcvt:                                   //  @wcvt
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x25, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	mv x22, x17
	mv x18, x16
	mv x23, x14
	mv x9, x13
	mv x20, x11
	mv x25, x0
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	blt x12, x25, .LBB2_1
.LBB2_2:                                //  %entry
	mv x21, x12
	jal x0, .LBB2_3
.LBB2_1:
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x21, x11, x12
.LBB2_3:                                //  %entry
	lw fp, 68 ( sp )
	lw x24, 64 ( sp )
	sra x11, x12, 31&31
	and x11, x11, 45
	or x26, x22, 32
	sw x11, 0 ( x15 )
	xor x11, x26, 97
	bltu x0, x11, .LBB2_27
.LBB2_4:                                //  %if.then2
	mv x10, x20
	mv x11, x21
	mv x12, x18
	jal frexp
	mv x21, x0
	lui x13, (1069547520>>12)&1048575
	mv x12, x21
	jal __muldf3
	mv x12, x21
	mv x13, x21
	mv x19, x10
	mv x20, x11
	jal __nedf2
	beq x0, x10, .LBB2_5
.LBB2_6:                                //  %if.end5
	add x10, x0, 97
	beq x22, x10, .LBB2_7
.LBB2_8:                                //  %if.end5
	lui x10, %hi( .str.6 )
	add x23, x10, %lo( .str.6 )
	jal x0, .LBB2_9
.LBB2_27:                               //  %if.end37
	xor x27, x26, 102
	bltu x0, x27, .LBB2_29
.LBB2_28:
	add x13, x0, 3
	jal x0, .LBB2_30
.LBB2_29:                               //  %if.else44
	xor x11, x26, 101
	seqz x11, x11
	add x9, x9, x11
	add x13, x0, 2
.LBB2_30:                               //  %if.end52
	lw x22, 72 ( sp )
	add x16, sp, 8
	add x17, sp, 4
	mv x11, x20
	mv x12, x21
	mv x14, x9
	mv x15, x18
	jal _dtoa_r
	mv x19, x10
	and x10, x23, 1
	bltu x0, x10, .LBB2_33
.LBB2_31:                               //  %if.end52
	xor x10, x26, 103
	bltu x0, x10, .LBB2_33
.LBB2_32:                               //  %if.end52.if.end94_crit_edge
	lw x23, 4 ( sp )
	sub x10, x23, x19
	sw x10, 0 ( x24 )
	bge x0, x22, .LBB2_50
.LBB2_46:                               //  %if.end94
	bge x0, x10, .LBB2_50
.LBB2_47:                               //  %for.body.preheader
	mv x10, fp
.LBB2_48:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x11, x25, x19
	lb x11, 0 ( x11 )
	add x25, x25, 1
	sw x11, 0 ( x10 )
	bge x25, x22, .LBB2_50
.LBB2_49:                               //  %for.body
                                        //    in Loop: Header=BB2_48 Depth=1
	lw x11, 0 ( x24 )
	add x10, x10, 4
	blt x25, x11, .LBB2_48
	jal x0, .LBB2_50
.LBB2_33:                               //  %if.then66
	add x23, x9, x19
	bltu x0, x27, .LBB2_39
.LBB2_34:                               //  %if.then72
	mv x12, x0
	mv x10, x20
	mv x11, x21
	mv x13, x12
	jal __eqdf2
	beq x0, x10, .LBB2_36
.LBB2_35:                               //  %if.then72
	lbu x10, 0 ( x19 )
	xor x10, x10, 48
	bltu x0, x10, .LBB2_36
.LBB2_37:                               //  %if.then78
	seqz x10, x0
	sub x10, x10, x9
	sw x10, 0 ( x18 )
	jal x0, .LBB2_38
.LBB2_5:                                //  %if.then4
	seqz x10, x0
	sw x10, 0 ( x18 )
	add x10, x0, 97
	bne x22, x10, .LBB2_8
.LBB2_7:
	lui x10, %hi( .str.4 )
	add x23, x10, %lo( .str.4 )
.LBB2_9:                                //  %if.end5
	add x27, x9, 1
	mv x9, x0
	lui x18, (1076887552>>12)&1048575
	mv x22, fp
.LBB2_10:                               //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x20
	mv x12, x9
	mv x13, x18
	jal __muldf3
	mv x19, x10
	mv x20, x11
	jal __fixdfsi
	mv x21, x10
	sll x10, x21, 2&31
	add x10, x10, x23
	lw x25, 0 ( x10 )
	mv x10, x21
	sw x25, 0 ( x22 )
	jal __floatsidf
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __subdf3
	mv x19, x10
	mv x20, x11
	add x26, x27, -1
	add x22, x22, 4
	xor x10, x27, 1
	beq x0, x10, .LBB2_12
.LBB2_11:                               //  %do.body
                                        //    in Loop: Header=BB2_10 Depth=1
	mv x10, x19
	mv x13, x9
	mv x11, x20
	mv x12, x9
	jal __nedf2
	mv x27, x26
	bltu x0, x10, .LBB2_10
.LBB2_12:                               //  %do.end
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x19
	mv x11, x20
	jal __gtdf2
	blt x0, x10, .LBB2_18
.LBB2_13:                               //  %lor.lhs.false14
	and x10, x21, 1
	beq x0, x10, .LBB2_15
.LBB2_14:                               //  %lor.lhs.false14
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x19
	mv x11, x20
	jal __eqdf2
	bltu x0, x10, .LBB2_15
.LBB2_18:                               //  %if.then19
	lw x11, 60 ( x23 )
	add x10, x22, -4
	bne x25, x11, .LBB2_19
.LBB2_20:                               //  %while.body.preheader
	add x12, x0, 48
.LBB2_21:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x11, x10
	sw x12, 0 ( x11 )
	add x10, x11, -4
	lw x11, -4 ( x11 )
	beq x11, x25, .LBB2_21
.LBB2_22:                               //  %while.end
	xor x12, x11, 57
	bltu x0, x12, .LBB2_24
.LBB2_23:                               //  %cond.true
	lw x11, 40 ( x23 )
	jal x0, .LBB2_25
.LBB2_19:
	mv x11, x25
	xor x12, x11, 57
	beq x0, x12, .LBB2_23
.LBB2_24:                               //  %cond.false
	add x11, x11, 1
.LBB2_25:                               //  %if.end36
	sw x11, 0 ( x10 )
.LBB2_26:                               //  %if.end36
	sub x10, x22, fp
	sra x10, x10, 2&31
	sw x10, 0 ( x24 )
.LBB2_50:                               //  %cleanup
	mv x10, fp
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
.LBB2_15:                               //  %while.cond29.preheader
	bge x0, x26, .LBB2_26
.LBB2_16:
	add x10, x0, 48
.LBB2_17:                               //  %while.body33
                                        //  =>This Inner Loop Header: Depth=1
	sw x10, 0 ( x22 )
	add x22, x22, 4
	add x26, x26, -1
	blt x0, x26, .LBB2_17
	jal x0, .LBB2_26
.LBB2_36:                               //  %if.then72.if.end81_crit_edge
	lw x10, 0 ( x18 )
.LBB2_38:                               //  %if.end81
	add x23, x10, x23
.LBB2_39:                               //  %if.end83
	mv x12, x0
	mv x10, x20
	mv x11, x21
	mv x13, x12
	jal __nedf2
	bltu x0, x10, .LBB2_41
.LBB2_40:                               //  %if.end87.thread
	sw x23, 4 ( sp )
	sub x10, x23, x19
	sw x10, 0 ( x24 )
	blt x0, x22, .LBB2_46
	jal x0, .LBB2_50
.LBB2_41:                               //  %if.end87
	lw x10, 4 ( sp )
	bgeu x10, x23, .LBB2_44
.LBB2_42:                               //  %while.body91.preheader
	add x11, x0, 48
.LBB2_43:                               //  %while.body91
                                        //  =>This Inner Loop Header: Depth=1
	add x12, x10, 1
	sw x12, 4 ( sp )
	sb x11, 0 ( x10 )
	lw x10, 4 ( sp )
	bltu x10, x23, .LBB2_43
.LBB2_44:                               //  %if.end94.loopexit
	mv x23, x10
	sub x10, x23, x19
	sw x10, 0 ( x24 )
	blt x0, x22, .LBB2_46
	jal x0, .LBB2_50
.Lfunc_end2:
	.size	wcvt, .Lfunc_end2-wcvt
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	_vfwprintf_r.blanks,@object //  @_vfwprintf_r.blanks
	.section	.rodata,"a",@progbits
	.p2align	2
_vfwprintf_r.blanks:
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
	.size	_vfwprintf_r.blanks, 64

	.address_space	0
	.type	_vfwprintf_r.zeroes,@object //  @_vfwprintf_r.zeroes
	.p2align	2
_vfwprintf_r.zeroes:
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
	.size	_vfwprintf_r.zeroes, 64

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2
.str:
	.long	73                      //  0x49
	.long	78                      //  0x4e
	.long	70                      //  0x46
	.long	0                       //  0x0
	.size	.str, 16

	.address_space	0
	.type	.str.1,@object          //  @.str.1
	.p2align	2
.str.1:
	.long	105                     //  0x69
	.long	110                     //  0x6e
	.long	102                     //  0x66
	.long	0                       //  0x0
	.size	.str.1, 16

	.address_space	0
	.type	.str.2,@object          //  @.str.2
	.p2align	2
.str.2:
	.long	78                      //  0x4e
	.long	65                      //  0x41
	.long	78                      //  0x4e
	.long	0                       //  0x0
	.size	.str.2, 16

	.address_space	0
	.type	.str.3,@object          //  @.str.3
	.p2align	2
.str.3:
	.long	110                     //  0x6e
	.long	97                      //  0x61
	.long	110                     //  0x6e
	.long	0                       //  0x0
	.size	.str.3, 16

	.address_space	0
	.type	.str.4,@object          //  @.str.4
	.p2align	2
.str.4:
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
	.size	.str.4, 68

	.address_space	0
	.type	.str.5,@object          //  @.str.5
	.p2align	2
.str.5:
	.long	40                      //  0x28
	.long	110                     //  0x6e
	.long	117                     //  0x75
	.long	108                     //  0x6c
	.long	108                     //  0x6c
	.long	41                      //  0x29
	.long	0                       //  0x0
	.size	.str.5, 28

	.address_space	0
	.type	.str.6,@object          //  @.str.6
	.p2align	2
.str.6:
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
	.size	.str.6, 68

	.address_space	0
	.type	.str.7,@object          //  @.str.7
	.p2align	2
.str.7:
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
	.size	.str.7, 104

	.address_space	0
	.type	.str.8,@object          //  @.str.8
	.p2align	2
.str.8:
	.long	48                      //  0x30
	.long	0                       //  0x0
	.size	.str.8, 8


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
