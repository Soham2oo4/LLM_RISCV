	.text
	.file	"vfprintf.c"
	.globl	vfprintf                //  -- Begin function vfprintf
	.type	vfprintf,@function
vfprintf:                               //  @vfprintf
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
	j _vfprintf_r
.Lfunc_end0:
	.size	vfprintf, .Lfunc_end0-vfprintf
	.cfi_endproc
                                        //  -- End function
	.globl	_vfprintf_r             //  -- Begin function _vfprintf_r
	.type	_vfprintf_r,@function
_vfprintf_r:                            //  @_vfprintf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -368
	.cfi_adjust_cfa_offset 368
	sw x18, 356 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x13
	sw x19, 352 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x27, 320 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 316 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw ra, 364 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 360 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20, 348 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 344 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 340 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 336 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 332 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 328 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 324 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	mv fp, x12
	mv x19, x11
	mv x27, x10
	sw x18, 300 ( sp )
	jal _localeconv_r
	lw x9, 0 ( x10 )
	mv x10, x9
	jal strlen
	mv x20, x10
	beq x0, x27, .LBB1_2
.LBB1_1:                                //  %land.lhs.true
	lw x10, 56 ( x27 )
	bltu x0, x10, .LBB1_2
.LBB1_526:                              //  %land.lhs.true
	jal x0, .LBB1_519
.LBB1_2:                                //  %if.end
	lhu x10, 12 ( x19 )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB1_4
.LBB1_3:                                //  %if.then14
	lw x12, 100 ( x19 )
	lui x13, %hi( -8193 )
	add x13, x13, %lo( -8193 )
	or x10, x11, x10
	and x12, x13, x12
	sw x12, 100 ( x19 )
	sh x10, 12 ( x19 )
.LBB1_4:                                //  %do.end22
	and x11, x10, 8
	beq x0, x11, .LBB1_9
.LBB1_5:                                //  %lor.lhs.false
	lw x11, 16 ( x19 )
	beq x0, x11, .LBB1_9
.LBB1_6:                                //  %if.end45
	and x10, x10, 26
	xor x10, x10, 10
	bltu x0, x10, .LBB1_11
.LBB1_7:                                //  %land.lhs.true51
	lh x10, 14 ( x19 )
	blt x10, x0, .LBB1_11
.LBB1_8:                                //  %if.then55
	mv x10, x27
	mv x11, x19
	mv x12, fp
	mv x13, x18
	jal __sbprintf
	mv x24, x10
	jal x0, .LBB1_524
.LBB1_9:                                //  %land.lhs.true29
	mv x10, x27
	mv x11, x19
	jal __swsetup_r
	beq x0, x10, .LBB1_10
.LBB1_527:                              //  %land.lhs.true29
	jal x0, .LBB1_523
.LBB1_10:                               //  %land.lhs.true29.if.end45_crit_edge
	lhu x10, 12 ( x19 )
	and x10, x10, 26
	xor x10, x10, 10
	beq x0, x10, .LBB1_7
.LBB1_11:                               //  %if.end69
	add x10, sp, 208
	sw x10, 272 ( sp )
	add x10, sp, 108
	add x10, x10, 100
	sw x10, 40 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _vfprintf_r.blanks )
	add x10, x10, %lo( _vfprintf_r.blanks )
	sw x10, 96 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _vfprintf_r.zeroes )
	add x10, x10, %lo( _vfprintf_r.zeroes )
	sw x10, 100 ( sp )              //  4-byte Folded Spill
	lui x10, %hi( .str.8 )
	add x10, x10, %lo( .str.8 )
	sw x10, 12 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( JTI1_0 )
	add x10, x10, %lo( JTI1_0 )
	add x11, sp, 285
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	mv x20, x0
	sw x10, 64 ( sp )               //  4-byte Folded Spill
	add x10, x11, 2
	add x16, sp, 272
	sw x10, 8 ( sp )                //  4-byte Folded Spill
	add x10, x11, 3
	add x23, x0, 10
	add x26, x0, 90
	add x12, x0, 16
	mv x24, x20
	sw x9, 16 ( sp )                //  4-byte Folded Spill
	sw x0, 8 ( x16 )
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	sw x0, 276 ( sp )
	sw x20, 76 ( sp )               //  4-byte Folded Spill
	sw x20, 24 ( sp )               //  4-byte Folded Spill
	sw x20, 20 ( sp )               //  4-byte Folded Spill
	sw x20, 52 ( sp )               //  4-byte Folded Spill
	sw x20, 72 ( sp )               //  4-byte Folded Spill
	sw x20, 36 ( sp )               //  4-byte Folded Spill
	sw x20, 32 ( sp )               //  4-byte Folded Spill
	sw x10, 4 ( sp )                //  4-byte Folded Spill
	sw x19, 80 ( sp )               //  4-byte Folded Spill
	sw x27, 88 ( sp )               //  4-byte Folded Spill
.LBB1_12:                               //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_15 Depth 2
                                        //        Child Loop BB1_22 Depth 3
                                        //          Child Loop BB1_23 Depth 4
                                        //            Child Loop BB1_27 Depth 5
                                        //              Child Loop BB1_32 Depth 6
                                        //            Child Loop BB1_25 Depth 5
                                        //        Child Loop BB1_209 Depth 3
                                        //        Child Loop BB1_218 Depth 3
                                        //        Child Loop BB1_225 Depth 3
                                        //        Child Loop BB1_214 Depth 3
                                        //        Child Loop BB1_457 Depth 3
                                        //        Child Loop BB1_177 Depth 3
                                        //        Child Loop BB1_397 Depth 3
                                        //        Child Loop BB1_184 Depth 3
                                        //        Child Loop BB1_504 Depth 3
                                        //        Child Loop BB1_484 Depth 3
                                        //        Child Loop BB1_489 Depth 3
                                        //        Child Loop BB1_255 Depth 3
                                        //        Child Loop BB1_272 Depth 3
                                        //        Child Loop BB1_289 Depth 3
                                        //        Child Loop BB1_340 Depth 3
                                        //        Child Loop BB1_374 Depth 3
                                        //        Child Loop BB1_399 Depth 3
                                        //          Child Loop BB1_418 Depth 4
                                        //        Child Loop BB1_446 Depth 3
                                        //        Child Loop BB1_428 Depth 3
                                        //        Child Loop BB1_328 Depth 3
                                        //        Child Loop BB1_354 Depth 3
                                        //      Child Loop BB1_13 Depth 2
	add x21, sp, 208
	mv x9, fp
	lbu x10, 0 ( x9 )
	beq x0, x10, .LBB1_15
.LBB1_13:                               //  %while.cond
                                        //    Parent Loop BB1_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	xor x11, x10, 37
	beq x0, x11, .LBB1_15
.LBB1_14:                               //  %while.body
                                        //    in Loop: Header=BB1_13 Depth=2
	add x9, x9, 1
	lbu x10, 0 ( x9 )
	bltu x0, x10, .LBB1_13
.LBB1_15:                               //  %while.end
                                        //    Parent Loop BB1_12 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_22 Depth 3
                                        //          Child Loop BB1_23 Depth 4
                                        //            Child Loop BB1_27 Depth 5
                                        //              Child Loop BB1_32 Depth 6
                                        //            Child Loop BB1_25 Depth 5
                                        //        Child Loop BB1_209 Depth 3
                                        //        Child Loop BB1_218 Depth 3
                                        //        Child Loop BB1_225 Depth 3
                                        //        Child Loop BB1_214 Depth 3
                                        //        Child Loop BB1_457 Depth 3
                                        //        Child Loop BB1_177 Depth 3
                                        //        Child Loop BB1_397 Depth 3
                                        //        Child Loop BB1_184 Depth 3
                                        //        Child Loop BB1_504 Depth 3
                                        //        Child Loop BB1_484 Depth 3
                                        //        Child Loop BB1_489 Depth 3
                                        //        Child Loop BB1_255 Depth 3
                                        //        Child Loop BB1_272 Depth 3
                                        //        Child Loop BB1_289 Depth 3
                                        //        Child Loop BB1_340 Depth 3
                                        //        Child Loop BB1_374 Depth 3
                                        //        Child Loop BB1_399 Depth 3
                                        //          Child Loop BB1_418 Depth 4
                                        //        Child Loop BB1_446 Depth 3
                                        //        Child Loop BB1_428 Depth 3
                                        //        Child Loop BB1_328 Depth 3
                                        //        Child Loop BB1_354 Depth 3
	sub x18, x9, fp
	beq x0, x18, .LBB1_20
.LBB1_16:                               //  %if.then78
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 8 ( x16 )
	sw x18, 4 ( x21 )
	sw fp, 0 ( x21 )
	add x10, x18, x10
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_18
.LBB1_17:                               //  %if.then83
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x12, x0, 16
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_19
	jal x0, .LBB1_277
.LBB1_18:                               //    in Loop: Header=BB1_15 Depth=2
	add x21, x21, 8
.LBB1_19:                               //  %if.end89
                                        //    in Loop: Header=BB1_15 Depth=2
	lbu x10, 0 ( x9 )
	add x24, x24, x18
.LBB1_20:                               //  %if.end91
                                        //    in Loop: Header=BB1_15 Depth=2
	bltu x0, x10, .LBB1_21
.LBB1_528:                              //  %if.end91
	jal x0, .LBB1_520
.LBB1_21:                               //  %if.end96
                                        //    in Loop: Header=BB1_15 Depth=2
	add x11, x0, -1
	add x10, x9, 1
	mv x18, x20
	mv x22, x20
	sb x0, 299 ( sp )
	sw x11, 84 ( sp )               //  4-byte Folded Spill
	sw x24, 68 ( sp )               //  4-byte Folded Spill
.LBB1_22:                               //  %rflag
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_23 Depth 4
                                        //            Child Loop BB1_27 Depth 5
                                        //              Child Loop BB1_32 Depth 6
                                        //            Child Loop BB1_25 Depth 5
	lb x9, 0 ( x10 )
	add x25, x10, 1
.LBB1_23:                               //  %reswitch
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //        Parent Loop BB1_22 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB1_27 Depth 5
                                        //              Child Loop BB1_32 Depth 6
                                        //            Child Loop BB1_25 Depth 5
	add x10, x9, -49
	sltiu x10, x10, 9
	beq x0, x10, .LBB1_27
.LBB1_24:                               //  %do.body159.preheader
                                        //    in Loop: Header=BB1_23 Depth=4
	mv x22, x20
.LBB1_25:                               //  %do.body159
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //        Parent Loop BB1_22 Depth=3
                                        //          Parent Loop BB1_23 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	hackaton_custom_instr_c x10, x23, x22
	add x10, x10, x9
	lb x9, 0 ( x25 )
	add x22, x10, -48
	add x25, x25, 1
	add x10, x9, -48
	sltiu x10, x10, 10
	bltu x0, x10, .LBB1_25
	jal x0, .LBB1_23
.LBB1_26:                               //    in Loop: Header=BB1_27 Depth=5
	mv x11, x0
	mv x25, x10
	add x12, x0, 16
	sw x11, 84 ( sp )               //  4-byte Folded Spill
	add x10, x9, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB1_24
.LBB1_27:                               //  %reswitch
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //        Parent Loop BB1_22 Depth=3
                                        //          Parent Loop BB1_23 Depth=4
                                        //  =>        This Loop Header: Depth=5
                                        //              Child Loop BB1_32 Depth 6
	add x10, x9, -32
	bltu x26, x10, .LBB1_124
.LBB1_28:                               //  %reswitch
                                        //    in Loop: Header=BB1_27 Depth=5
	lw x11, 64 ( sp )               //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB1_29:                               //  %sw.bb129
                                        //    in Loop: Header=BB1_27 Depth=5
	lb x9, 0 ( x25 )
	add x10, x25, 1
	xor x11, x9, 42
	beq x0, x11, .LBB1_58
.LBB1_30:                               //  %while.cond141.preheader
                                        //    in Loop: Header=BB1_27 Depth=5
	add x12, x9, -48
	add x11, x0, 9
	bltu x11, x12, .LBB1_26
.LBB1_31:                               //  %while.body145.preheader
                                        //    in Loop: Header=BB1_27 Depth=5
	mv x11, x0
	mv x25, x10
.LBB1_32:                               //  %while.body145
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //        Parent Loop BB1_22 Depth=3
                                        //          Parent Loop BB1_23 Depth=4
                                        //            Parent Loop BB1_27 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	lb x9, 0 ( x25 )
	hackaton_custom_instr_c x10, x23, x11
	add x11, x10, x12
	add x25, x25, 1
	add x12, x9, -48
	sltiu x10, x12, 10
	bltu x0, x10, .LBB1_32
.LBB1_33:                               //  %while.end150
                                        //    in Loop: Header=BB1_27 Depth=5
	add x10, x0, -1
	add x12, x0, 16
	sw x10, 84 ( sp )               //  4-byte Folded Spill
	blt x11, x0, .LBB1_23
.LBB1_34:                               //  %while.end150.thread
                                        //    in Loop: Header=BB1_27 Depth=5
	sw x11, 84 ( sp )               //  4-byte Folded Spill
	add x10, x9, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB1_24
	jal x0, .LBB1_27
.LBB1_35:                               //  %sw.bb193
                                        //    in Loop: Header=BB1_22 Depth=3
	or x18, x18, 32
	mv x10, x25
	jal x0, .LBB1_22
.LBB1_36:                               //  %sw.bb115
                                        //    in Loop: Header=BB1_22 Depth=3
	lbu x11, 299 ( sp )
	mv x10, x25
	bltu x0, x11, .LBB1_22
.LBB1_37:                               //  %if.then117
                                        //    in Loop: Header=BB1_22 Depth=3
	add x10, x0, 32
	jal x0, .LBB1_48
.LBB1_38:                               //  %sw.bb119
                                        //    in Loop: Header=BB1_22 Depth=3
	or x18, x18, 1
	mv x10, x25
	jal x0, .LBB1_22
.LBB1_39:                               //  %sw.bb
                                        //    in Loop: Header=BB1_22 Depth=3
	mv x10, x27
	jal _localeconv_r
	lw x10, 4 ( x10 )
	sw x10, 32 ( sp )               //  4-byte Folded Spill
	jal strlen
	mv x9, x10
	mv x10, x27
	jal _localeconv_r
	lw x10, 8 ( x10 )
	add x12, x0, 16
	add x16, sp, 272
	sw x9, 36 ( sp )                //  4-byte Folded Spill
	sw x10, 72 ( sp )               //  4-byte Folded Spill
	mv x10, x25
	beq x0, x9, .LBB1_22
.LBB1_40:                               //  %sw.bb
                                        //    in Loop: Header=BB1_22 Depth=3
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	mv x10, x25
	beq x0, x11, .LBB1_22
.LBB1_41:                               //  %land.lhs.true109
                                        //    in Loop: Header=BB1_22 Depth=3
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	mv x11, x0
	lbu x10, 0 ( x10 )
	beq x10, x11, .LBB1_43
.LBB1_42:                               //  %land.lhs.true109
                                        //    in Loop: Header=BB1_22 Depth=3
	or x18, x18, 1024
.LBB1_43:                               //  %land.lhs.true109
                                        //    in Loop: Header=BB1_22 Depth=3
	mv x10, x25
	jal x0, .LBB1_22
.LBB1_44:                               //  %sw.bb121
                                        //    in Loop: Header=BB1_22 Depth=3
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x22, 0 ( x10 )
	mv x10, x25
	bge x22, x0, .LBB1_22
.LBB1_45:                               //  %if.end125
                                        //    in Loop: Header=BB1_22 Depth=3
	sub x22, x0, x22
.LBB1_46:                               //  %sw.bb126.loopexit
                                        //    in Loop: Header=BB1_22 Depth=3
	or x18, x18, 4
	mv x10, x25
	jal x0, .LBB1_22
.LBB1_47:                               //  %sw.bb128
                                        //    in Loop: Header=BB1_22 Depth=3
	add x10, x0, 43
.LBB1_48:                               //  %rflag
                                        //    in Loop: Header=BB1_22 Depth=3
	sb x10, 299 ( sp )
.LBB1_49:                               //  %rflag.backedge.loopexit
                                        //    in Loop: Header=BB1_22 Depth=3
	mv x10, x25
	jal x0, .LBB1_22
.LBB1_50:                               //  %sw.bb156
                                        //    in Loop: Header=BB1_22 Depth=3
	or x18, x18, 128
	mv x10, x25
	jal x0, .LBB1_22
.LBB1_51:                               //  %sw.bb170
                                        //    in Loop: Header=BB1_22 Depth=3
	or x18, x18, 8
	mv x10, x25
	jal x0, .LBB1_22
.LBB1_52:                               //  %sw.bb172
                                        //    in Loop: Header=BB1_22 Depth=3
	lbu x10, 0 ( x25 )
	add x11, x0, 104
	beq x10, x11, .LBB1_56
.LBB1_53:                               //  %sw.bb172
                                        //    in Loop: Header=BB1_22 Depth=3
	add x11, x0, 64
	mv x10, x25
	or x18, x18, x11
	jal x0, .LBB1_22
.LBB1_54:                               //  %sw.bb181
                                        //    in Loop: Header=BB1_22 Depth=3
	lbu x10, 0 ( x25 )
	add x11, x0, 108
	beq x10, x11, .LBB1_57
.LBB1_55:                               //  %sw.bb181
                                        //    in Loop: Header=BB1_22 Depth=3
	mv x11, x12
	mv x10, x25
	or x18, x18, x11
	jal x0, .LBB1_22
.LBB1_56:                               //    in Loop: Header=BB1_22 Depth=3
	add x11, x0, 512
	add x10, x25, 1
	or x18, x18, x11
	jal x0, .LBB1_22
.LBB1_57:                               //    in Loop: Header=BB1_22 Depth=3
	add x11, x0, 32
	add x10, x25, 1
	or x18, x18, x11
	jal x0, .LBB1_22
.LBB1_58:                               //  %if.then134
                                        //    in Loop: Header=BB1_22 Depth=3
	lw x11, 300 ( sp )
	add x12, x11, 4
	sw x12, 300 ( sp )
	lw x12, 0 ( x11 )
	add x11, x0, -1
	sw x12, 84 ( sp )               //  4-byte Folded Spill
	blt x11, x12, .LBB1_60
.LBB1_59:                               //  %if.then134
                                        //    in Loop: Header=BB1_22 Depth=3
	sw x11, 84 ( sp )               //  4-byte Folded Spill
.LBB1_60:                               //  %if.then134
                                        //    in Loop: Header=BB1_22 Depth=3
	add x12, x0, 16
	jal x0, .LBB1_22
.LBB1_61:                               //  %sw.bb456
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 32
	bltu x0, x10, .LBB1_66
.LBB1_62:                               //  %if.else462
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 16
	bltu x0, x10, .LBB1_65
.LBB1_63:                               //  %if.else467
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 64
	bltu x0, x10, .LBB1_68
.LBB1_64:                               //  %if.else473
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 512
	bltu x0, x10, .LBB1_69
.LBB1_65:                               //  %if.then465
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x10, 0 ( x10 )
	jal x0, .LBB1_67
.LBB1_66:                               //  %if.then459
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x10, 0 ( x10 )
	sra x11, x24, 31&31
	sw x11, 4 ( x10 )
.LBB1_67:                               //  %for.cond
                                        //    in Loop: Header=BB1_15 Depth=2
	sw x24, 0 ( x10 )
	mv fp, x25
	mv x9, fp
	lbu x10, 0 ( x9 )
	bltu x0, x10, .LBB1_13
	jal x0, .LBB1_15
.LBB1_68:                               //  %if.then470
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	mv fp, x25
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x10, 0 ( x10 )
	sh x24, 0 ( x10 )
	mv x9, fp
	lbu x10, 0 ( x9 )
	bltu x0, x10, .LBB1_13
	jal x0, .LBB1_15
.LBB1_69:                               //  %if.then476
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	mv fp, x25
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x10, 0 ( x10 )
	sb x24, 0 ( x10 )
	mv x9, fp
	lbu x10, 0 ( x9 )
	bltu x0, x10, .LBB1_13
	jal x0, .LBB1_15
.LBB1_70:                               //  %sw.bb243
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 8
	sw x18, 92 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB1_72
.LBB1_71:                               //  %if.else250
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x12, 300 ( sp )
	add x11, x12, 4
	sw x11, 300 ( sp )
	add x11, x12, 8
	lw x10, 0 ( x12 )
	sw x11, 300 ( sp )
	lw x26, 4 ( x12 )
	jal x0, .LBB1_73
.LBB1_72:                               //  %if.then246
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x13, 300 ( sp )
	add x10, x13, 4
	sw x10, 300 ( sp )
	add x11, x13, 8
	lw x10, 0 ( x13 )
	sw x11, 300 ( sp )
	add x12, x13, 12
	lw x11, 4 ( x13 )
	sw x12, 300 ( sp )
	add x14, x13, 16
	lw x12, 8 ( x13 )
	sw x14, 300 ( sp )
	lw x13, 12 ( x13 )
	jal __trunctfdf2
	mv x26, x11
.LBB1_73:                               //  %if.end253
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x11, %hi( 2147483647 )
	add x11, x11, %lo( 2147483647 )
	mv x20, x0
	and x11, x11, x26
	lui x13, (2146435072>>12)&1048575
	mv x12, x20
	mv x18, x10
	jal __nedf2
	sw x26, 44 ( sp )               //  4-byte Folded Spill
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB1_78
.LBB1_74:                               //  %if.then256
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x11, x26
	mv x26, x0
	mv x13, x26
	mv x10, x18
	mv x12, x26
	jal __ltdf2
	bge x10, x0, .LBB1_76
.LBB1_75:                               //  %if.then260
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10, x0, 45
	sb x10, 299 ( sp )
.LBB1_76:                               //  %if.end261
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x18, 92 ( sp )               //  4-byte Folded Reload
	add x10, x0, 72
	add x16, sp, 272
	add x12, x0, 16
	blt x9, x10, .LBB1_82
.LBB1_77:                               //  %if.end261
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x10, %hi( .str.1 )
	add fp, x10, %lo( .str.1 )
	jal x0, .LBB1_83
.LBB1_78:                               //  %if.end268
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x18
	mv x13, x26
	mv x11, x26
	mv x12, x18
	jal __unorddf2
	bltu x0, x10, .LBB1_90
.LBB1_79:                               //  %if.end289
                                        //    in Loop: Header=BB1_15 Depth=2
	or x18, x9, 32
	xor x19, x18, 97
	bltu x0, x19, .LBB1_127
.LBB1_80:                               //  %if.then295
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10, x0, 97
	beq x9, x10, .LBB1_148
.LBB1_81:                               //  %if.then295
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10, x0, 88
	jal x0, .LBB1_149
.LBB1_82:                               //    in Loop: Header=BB1_15 Depth=2
	lui x10, %hi( .str )
	add fp, x10, %lo( .str )
.LBB1_83:                               //  %if.end261
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x27, x26
	add x20, x0, 3
	and x18, x18, -129
	sw x26, 60 ( sp )               //  4-byte Folded Spill
	sw x26, 48 ( sp )               //  4-byte Folded Spill
	sw x26, 56 ( sp )               //  4-byte Folded Spill
	mv x10, x27
	bge x20, x27, .LBB1_242
	jal x0, .LBB1_243
.LBB1_84:                               //  %sw.bb197
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	mv x26, x0
	mv x27, x26
	seqz x20, x0
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x10, 0 ( x10 )
	sw x26, 48 ( sp )               //  4-byte Folded Spill
	sb x0, 299 ( sp )
	sw x26, 60 ( sp )               //  4-byte Folded Spill
	sb x10, 108 ( sp )
	sw x26, 56 ( sp )               //  4-byte Folded Spill
	add fp, sp, 108
	mv x10, x27
	bge x20, x27, .LBB1_242
	jal x0, .LBB1_243
.LBB1_85:                               //  %sw.bb529
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw fp, 0 ( x10 )
	sb x0, 299 ( sp )
	beq x0, fp, .LBB1_130
.LBB1_86:                               //  %if.else540
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x20, 84 ( sp )               //  4-byte Folded Reload
	blt x20, x0, .LBB1_155
.LBB1_87:                               //  %if.then543
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x26, x0
	mv x10, fp
	mv x11, x26
	mv x12, x20
	jal memchr
	beq x10, x26, .LBB1_89
.LBB1_88:                               //  %if.then543
                                        //    in Loop: Header=BB1_15 Depth=2
	sub x20, x10, fp
.LBB1_89:                               //  %if.then543
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x27, x26
	sw x26, 60 ( sp )               //  4-byte Folded Spill
	sw x26, 48 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB1_156
.LBB1_90:                               //  %cond.true276
                                        //    in Loop: Header=BB1_15 Depth=2
	add x16, sp, 272
	add x12, x0, 16
	bge x26, x0, .LBB1_92
.LBB1_91:                               //  %if.then281
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10, x0, 45
	sb x10, 299 ( sp )
.LBB1_92:                               //  %if.end282
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x18, 92 ( sp )               //  4-byte Folded Reload
	add x10, x0, 72
	blt x9, x10, .LBB1_143
.LBB1_93:                               //  %if.end282
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x10, %hi( .str.3 )
	add fp, x10, %lo( .str.3 )
	jal x0, .LBB1_144
.LBB1_94:                               //  %sw.bb201
                                        //    in Loop: Header=BB1_15 Depth=2
	or x18, x18, 16
.LBB1_95:                               //  %sw.bb203
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 32
	bltu x0, x10, .LBB1_100
.LBB1_96:                               //  %cond.false208
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 16
	bltu x0, x10, .LBB1_133
.LBB1_97:                               //  %cond.false213
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x27, 84 ( sp )               //  4-byte Folded Reload
	and x10, x18, 64
	bltu x0, x10, .LBB1_166
.LBB1_98:                               //  %cond.false220
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x20, 0 ( x10 )
	and x10, x18, 512
	beq x0, x10, .LBB1_134
.LBB1_99:                               //  %cond.true223
                                        //    in Loop: Header=BB1_15 Depth=2
	sll x10, x20, 24&31
	sra x20, x10, 24&31
	sra x26, x20, 31&31
	bge x26, x0, .LBB1_101
	jal x0, .LBB1_135
.LBB1_100:                              //  %cond.true206
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	lw x27, 84 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 300 ( sp )
	add x11, x10, 8
	lw x20, 0 ( x10 )
	sw x11, 300 ( sp )
	lw x26, 4 ( x10 )
	blt x26, x0, .LBB1_135
.LBB1_101:                              //    in Loop: Header=BB1_15 Depth=2
	seqz x10, x0
	add x11, x0, -1
	blt x11, x27, .LBB1_200
	jal x0, .LBB1_201
.LBB1_102:                              //  %sw.bb485
                                        //    in Loop: Header=BB1_15 Depth=2
	add x9, x0, 79
	or x18, x18, 16
.LBB1_103:                              //  %sw.bb487
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 32
	bltu x0, x10, .LBB1_122
.LBB1_104:                              //  %cond.false492
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x27, 84 ( sp )               //  4-byte Folded Reload
	and x10, x18, 16
	bltu x0, x10, .LBB1_145
.LBB1_105:                              //  %cond.false497
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 64
	bltu x0, x10, .LBB1_190
.LBB1_106:                              //  %cond.false504
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x20, 0 ( x10 )
	and x11, x18, 512
	mv x10, x0
	beq x11, x10, .LBB1_191
.LBB1_107:                              //  %cond.false504
                                        //    in Loop: Header=BB1_15 Depth=2
	and x20, x20, 255
	jal x0, .LBB1_191
.LBB1_108:                              //  %sw.bb557
                                        //    in Loop: Header=BB1_15 Depth=2
	add x9, x0, 85
	or x18, x18, 16
.LBB1_109:                              //  %sw.bb559
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 32
	bltu x0, x10, .LBB1_123
.LBB1_110:                              //  %cond.false564
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 16
	bltu x0, x10, .LBB1_146
.LBB1_111:                              //  %cond.false569
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 64
	bltu x0, x10, .LBB1_193
.LBB1_112:                              //  %cond.false576
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x20, 0 ( x10 )
	and x11, x18, 512
	mv x10, x0
	beq x11, x10, .LBB1_194
.LBB1_113:                              //  %cond.false576
                                        //    in Loop: Header=BB1_15 Depth=2
	and x20, x20, 255
	jal x0, .LBB1_194
.LBB1_114:                              //  %hex.loopexit
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x10, %hi( .str.6 )
	add x10, x10, %lo( .str.6 )
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	and x10, x18, 32
	beq x0, x10, .LBB1_118
.LBB1_115:                              //  %cond.true598
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	lw x27, 84 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 300 ( sp )
	add x11, x10, 8
	lw x20, 0 ( x10 )
	sw x11, 300 ( sp )
	lw x26, 4 ( x10 )
	and x10, x18, 1
	bltu x0, x10, .LBB1_197
	jal x0, .LBB1_199
.LBB1_116:                              //  %sw.bb523
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	add x9, x0, 120
	lw x27, 84 ( sp )               //  4-byte Folded Reload
	mv x26, x0
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x20, 0 ( x10 )
	add x10, x0, 48
	sb x10, 106 ( sp )
	lui x10, %hi( .str.4 )
	add x10, x10, %lo( .str.4 )
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	sb x9, 107 ( sp )
	or x18, x18, 2
	add x10, x0, 2
	sb x0, 299 ( sp )
	add x11, x0, -1
	blt x11, x27, .LBB1_200
	jal x0, .LBB1_201
.LBB1_117:                              //  %hex.loopexit1
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x10, %hi( .str.4 )
	add x10, x10, %lo( .str.4 )
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	and x10, x18, 32
	bltu x0, x10, .LBB1_115
.LBB1_118:                              //  %cond.false600
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x27, 84 ( sp )               //  4-byte Folded Reload
	and x10, x18, 16
	bltu x0, x10, .LBB1_147
.LBB1_119:                              //  %cond.false605
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 64
	bltu x0, x10, .LBB1_195
.LBB1_120:                              //  %cond.false612
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x20, 0 ( x10 )
	and x11, x18, 512
	mv x10, x0
	beq x11, x10, .LBB1_196
.LBB1_121:                              //  %cond.false612
                                        //    in Loop: Header=BB1_15 Depth=2
	and x20, x20, 255
	mv x26, x0
	and x10, x18, 1
	bltu x0, x10, .LBB1_197
	jal x0, .LBB1_199
.LBB1_122:                              //  %cond.true490
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	lw x27, 84 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 300 ( sp )
	add x11, x10, 8
	lw x20, 0 ( x10 )
	sw x11, 300 ( sp )
	lw x26, 4 ( x10 )
	jal x0, .LBB1_192
.LBB1_123:                              //  %cond.true562
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11, 300 ( sp )
	lw x27, 84 ( sp )               //  4-byte Folded Reload
	add x10, x11, 4
	sw x10, 300 ( sp )
	add x10, x11, 8
	lw x20, 0 ( x11 )
	sw x10, 300 ( sp )
	lw x26, 4 ( x11 )
	seqz x10, x0
	sb x0, 299 ( sp )
	add x11, x0, -1
	blt x11, x27, .LBB1_200
	jal x0, .LBB1_201
.LBB1_124:                              //  %sw.default741
                                        //    in Loop: Header=BB1_15 Depth=2
	bltu x0, x9, .LBB1_125
.LBB1_529:                              //  %sw.default741
	jal x0, .LBB1_520
.LBB1_125:                              //  %if.end745
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x24, x20
	mv x26, x20
	mv x27, x20
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	seqz x20, x0
	sb x9, 108 ( sp )
	sb x0, 299 ( sp )
	sw x24, 48 ( sp )               //  4-byte Folded Spill
	sw x24, 56 ( sp )               //  4-byte Folded Spill
	add fp, sp, 108
	mv x10, x27
	bge x20, x27, .LBB1_242
	jal x0, .LBB1_243
.LBB1_127:                              //  %if.else318
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 84 ( sp )               //  4-byte Folded Reload
	xor x11, x10, -1
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	beq x0, x11, .LBB1_167
.LBB1_128:                              //  %if.else322
                                        //    in Loop: Header=BB1_15 Depth=2
	add x11, x0, 103
	beq x18, x11, .LBB1_168
.LBB1_129:                              //  %if.else322
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x13, 84 ( sp )               //  4-byte Folded Reload
	mv x11, x13
	mv x12, x0
	sw x12, 60 ( sp )               //  4-byte Folded Spill
	beq x13, x12, .LBB1_170
.LBB1_169:                              //  %if.else322
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x11, x13
.LBB1_170:                              //  %if.else322
                                        //    in Loop: Header=BB1_15 Depth=2
	sw x11, 84 ( sp )               //  4-byte Folded Spill
	bge x26, x20, .LBB1_152
.LBB1_171:                              //    in Loop: Header=BB1_15 Depth=2
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x20, x11, x26
	xor x11, x18, 103
	bltu x0, x19, .LBB1_153
.LBB1_172:                              //  %if.then2.i
                                        //    in Loop: Header=BB1_15 Depth=2
	sw x11, 76 ( sp )               //  4-byte Folded Spill
	add x12, sp, 292
	mv x11, x20
	jal frexp
	mv x20, x0
	lui x13, (1069547520>>12)&1048575
	mv x12, x20
	jal __muldf3
	mv x12, x20
	mv x13, x20
	mv x24, x10
	mv x26, x11
	jal __nedf2
	bltu x0, x10, .LBB1_174
.LBB1_173:                              //  %if.then4.i
                                        //    in Loop: Header=BB1_15 Depth=2
	seqz x10, x0
	sw x10, 292 ( sp )
.LBB1_174:                              //  %if.end5.i
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10, x0, 97
	beq x9, x10, .LBB1_176
.LBB1_175:                              //  %if.end5.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x10, %hi( .str.6 )
	add x19, x10, %lo( .str.6 )
	jal x0, .LBB1_177
.LBB1_130:                              //  %if.then533
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x20, 84 ( sp )               //  4-byte Folded Reload
	add x10, x0, 6
	bltu x20, x10, .LBB1_132
.LBB1_131:                              //  %if.then533
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x20, x10
.LBB1_132:                              //  %if.then533
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x26, x0
	lui x10, %hi( .str.5 )
	add fp, x10, %lo( .str.5 )
	sw x26, 48 ( sp )               //  4-byte Folded Spill
	mv x27, x26
	sw x26, 60 ( sp )               //  4-byte Folded Spill
	sw x26, 56 ( sp )               //  4-byte Folded Spill
	mv x10, x27
	bge x20, x27, .LBB1_242
	jal x0, .LBB1_243
.LBB1_133:                              //  %cond.true211
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	lw x27, 84 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x20, 0 ( x10 )
.LBB1_134:                              //  %cond.end233
                                        //    in Loop: Header=BB1_15 Depth=2
	sra x26, x20, 31&31
	bge x26, x0, .LBB1_101
.LBB1_135:                              //  %if.then654.thread
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10, x0, -1
	bge x10, x27, .LBB1_137
.LBB1_136:                              //    in Loop: Header=BB1_15 Depth=2
	and x18, x18, -129
.LBB1_137:                              //  %if.then654.thread
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10, x0, 45
	sb x10, 299 ( sp )
	snez x10, x20
	add x10, x10, x26
	sub x20, x0, x20
	sub x26, x0, x10
	jal x0, .LBB1_138
.LBB1_143:                              //    in Loop: Header=BB1_15 Depth=2
	lui x10, %hi( .str.2 )
	add fp, x10, %lo( .str.2 )
.LBB1_144:                              //  %if.end282
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x26, x0
	add x20, x0, 3
	sw x26, 48 ( sp )               //  4-byte Folded Spill
	mv x27, x26
	and x18, x18, -129
	sw x26, 60 ( sp )               //  4-byte Folded Spill
	sw x26, 56 ( sp )               //  4-byte Folded Spill
	mv x10, x27
	bge x20, x27, .LBB1_242
	jal x0, .LBB1_243
.LBB1_145:                              //  %cond.true495
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x20, 0 ( x10 )
	jal x0, .LBB1_191
.LBB1_146:                              //  %cond.true567
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x20, 0 ( x10 )
	jal x0, .LBB1_194
.LBB1_147:                              //  %cond.true603
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x20, 0 ( x10 )
	mv x26, x0
	and x10, x18, 1
	bltu x0, x10, .LBB1_197
	jal x0, .LBB1_199
.LBB1_148:                              //    in Loop: Header=BB1_15 Depth=2
	add x10, x0, 120
.LBB1_149:                              //  %if.then295
                                        //    in Loop: Header=BB1_15 Depth=2
	sb x10, 107 ( sp )
	add x10, x0, 48
	sb x10, 106 ( sp )
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	lw x11, 84 ( sp )               //  4-byte Folded Reload
	or x10, x10, 2
	sw x10, 92 ( sp )               //  4-byte Folded Spill
	slti x10, x11, 100
	bltu x0, x10, .LBB1_157
.LBB1_150:                              //  %if.then304
                                        //    in Loop: Header=BB1_15 Depth=2
	add x11, x11, 1
	mv x10, x27
	jal _malloc_r
	mv x11, x10
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	mv fp, x11
	sw x11, 60 ( sp )               //  4-byte Folded Spill
	bltu x0, x11, .LBB1_151
.LBB1_530:                              //  %if.then304
	jal x0, .LBB1_525
.LBB1_151:                              //  %if.end334
                                        //    in Loop: Header=BB1_15 Depth=2
	blt x26, x20, .LBB1_171
.LBB1_152:                              //  %if.end334
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x20, x26
	xor x11, x18, 103
	beq x0, x19, .LBB1_172
.LBB1_153:                              //  %if.end43.i
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x19, x11
	xor x24, x18, 102
	bltu x0, x24, .LBB1_158
.LBB1_154:                              //    in Loop: Header=BB1_15 Depth=2
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	add x13, x0, 3
	jal x0, .LBB1_159
.LBB1_155:                              //  %if.else553
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, fp
	jal strlen
	mv x26, x0
	mv x20, x10
	sw x26, 48 ( sp )               //  4-byte Folded Spill
	mv x27, x26
	sw x26, 60 ( sp )               //  4-byte Folded Spill
.LBB1_156:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_15 Depth=2
	sw x26, 56 ( sp )               //  4-byte Folded Spill
	add x16, sp, 272
	add x12, x0, 16
	mv x10, x27
	bge x20, x27, .LBB1_242
	jal x0, .LBB1_243
.LBB1_157:                              //    in Loop: Header=BB1_15 Depth=2
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	add fp, sp, 108
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	bge x26, x20, .LBB1_152
	jal x0, .LBB1_171
.LBB1_176:                              //    in Loop: Header=BB1_15 Depth=2
	lui x10, %hi( .str.4 )
	add x19, x10, %lo( .str.4 )
.LBB1_177:                              //  %do.body.i2388
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	mv x12, x0
	lui x13, (1076887552>>12)&1048575
	mv x10, x24
	mv x11, x26
	mv x27, x20
	jal __muldf3
	mv x20, x10
	mv x24, x11
	jal __fixdfsi
	mv x18, x10
	add x10, x18, x19
	lb x10, 0 ( x10 )
	add x11, x27, fp
	sb x10, 0 ( x11 )
	mv x10, x18
	jal __floatsidf
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x24
	jal __subdf3
	mv x24, x10
	lw x10, 84 ( sp )               //  4-byte Folded Reload
	mv x26, x11
	add x20, x27, 1
	beq x10, x27, .LBB1_179
.LBB1_178:                              //  %do.body.i2388
                                        //    in Loop: Header=BB1_177 Depth=3
	mv x12, x0
	mv x10, x24
	mv x11, x26
	mv x13, x12
	jal __nedf2
	bltu x0, x10, .LBB1_177
.LBB1_179:                              //  %do.end.i2390
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x24
	mv x11, x26
	sw x19, 56 ( sp )               //  4-byte Folded Spill
	jal __gtdf2
	add x19, x20, fp
	blt x0, x10, .LBB1_182
.LBB1_180:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 1
	bltu x0, x10, .LBB1_181
.LBB1_531:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_395
.LBB1_181:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x24
	mv x11, x26
	jal __eqdf2
	beq x0, x10, .LBB1_182
.LBB1_532:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_395
.LBB1_182:                              //  %if.then19.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x12, 56 ( sp )               //  4-byte Folded Reload
	add x10, x19, -1
	sw x10, 312 ( sp )
	lbu x11, -1 ( x19 )
	lbu x12, 15 ( x12 )
	bne x11, x12, .LBB1_185
.LBB1_183:                              //  %while.body.i.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x18, 92 ( sp )               //  4-byte Folded Reload
	lw x27, 84 ( sp )               //  4-byte Folded Reload
	lw x13, 76 ( sp )               //  4-byte Folded Reload
	add x16, sp, 272
.LBB1_184:                              //  %while.body.i
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x12, x0, 48
	sb x12, 0 ( x10 )
	lw x12, 312 ( sp )
	add x10, x12, -1
	sw x10, 312 ( sp )
	lbu x12, -1 ( x12 )
	beq x12, x11, .LBB1_184
	jal x0, .LBB1_186
.LBB1_158:                              //  %if.else50.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11, 84 ( sp )               //  4-byte Folded Reload
	xor x10, x18, 101
	seqz x10, x10
	add x13, x0, 2
	add x18, x10, x11
.LBB1_159:                              //  %if.end58.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11, 52 ( sp )               //  4-byte Folded Reload
	add x15, sp, 292
	add x16, sp, 304
	add x17, sp, 312
	mv x10, x27
	mv x12, x20
	mv x14, x18
	jal _dtoa_r
	mv fp, x10
	mv x13, x19
	bltu x0, x13, .LBB1_162
.LBB1_160:                              //  %if.end58.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	and x10, x10, 1
	bltu x0, x10, .LBB1_162
.LBB1_161:                              //  %if.end58.if.end96_crit_edge.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x19, 312 ( sp )
	lw x18, 92 ( sp )               //  4-byte Folded Reload
	lw x27, 84 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_454
.LBB1_162:                              //  %if.then68.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x27, 84 ( sp )               //  4-byte Folded Reload
	add x19, x18, fp
	sw x13, 76 ( sp )               //  4-byte Folded Spill
	beq x0, x24, .LBB1_163
.LBB1_533:                              //  %if.then68.i
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_394
.LBB1_163:                              //  %if.then74.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	mv x12, x0
	mv x11, x20
	mv x13, x12
	jal __eqdf2
	bltu x0, x10, .LBB1_164
.LBB1_534:                              //  %if.then74.i
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_450
.LBB1_164:                              //  %if.then74.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lbu x10, 0 ( fp )
	xor x10, x10, 48
	beq x0, x10, .LBB1_165
.LBB1_535:                              //  %if.then74.i
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_450
.LBB1_165:                              //  %if.then80.i
                                        //    in Loop: Header=BB1_15 Depth=2
	seqz x10, x0
	sub x10, x10, x18
	sw x10, 292 ( sp )
	jal x0, .LBB1_451
.LBB1_166:                              //  %cond.true216
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x10, 0 ( x10 )
	sll x10, x10, 16&31
	sra x20, x10, 16&31
	sra x26, x20, 31&31
	bge x26, x0, .LBB1_101
	jal x0, .LBB1_135
.LBB1_167:                              //    in Loop: Header=BB1_15 Depth=2
	add x11, x0, 6
	sw x11, 84 ( sp )               //  4-byte Folded Spill
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	bge x26, x20, .LBB1_152
	jal x0, .LBB1_171
.LBB1_185:                              //    in Loop: Header=BB1_15 Depth=2
	lw x18, 92 ( sp )               //  4-byte Folded Reload
	lw x27, 84 ( sp )               //  4-byte Folded Reload
	lw x13, 76 ( sp )               //  4-byte Folded Reload
	mv x12, x11
	add x16, sp, 272
.LBB1_186:                              //  %while.end.i
                                        //    in Loop: Header=BB1_15 Depth=2
	xor x11, x12, 57
	bltu x0, x11, .LBB1_188
.LBB1_187:                              //  %cond.true.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11, 56 ( sp )               //  4-byte Folded Reload
	lbu x11, 10 ( x11 )
	jal x0, .LBB1_189
.LBB1_188:                              //  %cond.false.i
                                        //    in Loop: Header=BB1_15 Depth=2
	add x11, x12, 1
.LBB1_189:                              //  %if.end42.i
                                        //    in Loop: Header=BB1_15 Depth=2
	sb x11, 0 ( x10 )
	jal x0, .LBB1_455
.LBB1_168:                              //    in Loop: Header=BB1_15 Depth=2
	lw x13, 84 ( sp )               //  4-byte Folded Reload
	seqz x11, x0
	mv x12, x0
	sw x12, 60 ( sp )               //  4-byte Folded Spill
	beq x13, x12, .LBB1_170
	jal x0, .LBB1_169
.LBB1_190:                              //  %cond.true500
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lhu x20, 0 ( x10 )
.LBB1_191:                              //  %cond.end517
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x26, x0
.LBB1_192:                              //  %cond.end520
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x0
	and x18, x18, -1025
	sb x0, 299 ( sp )
	add x11, x0, -1
	blt x11, x27, .LBB1_200
	jal x0, .LBB1_201
.LBB1_193:                              //  %cond.true572
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lhu x20, 0 ( x10 )
.LBB1_194:                              //  %cond.false576
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x27, 84 ( sp )               //  4-byte Folded Reload
	mv x26, x0
	seqz x10, x0
	sb x0, 299 ( sp )
	add x11, x0, -1
	blt x11, x27, .LBB1_200
	jal x0, .LBB1_201
.LBB1_195:                              //  %cond.true608
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lhu x20, 0 ( x10 )
.LBB1_196:                              //  %cond.end625
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x26, x0
	and x10, x18, 1
	beq x0, x10, .LBB1_199
.LBB1_197:                              //  %cond.end628
                                        //    in Loop: Header=BB1_15 Depth=2
	or x10, x26, x20
	beq x0, x10, .LBB1_199
.LBB1_198:                              //  %if.then635
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10, x0, 48
	or x18, x18, 2
	sb x9, 107 ( sp )
	sb x10, 106 ( sp )
.LBB1_199:                              //  %if.end640
                                        //    in Loop: Header=BB1_15 Depth=2
	and x18, x18, -1025
	add x10, x0, 2
	sb x0, 299 ( sp )
	add x11, x0, -1
	bge x11, x27, .LBB1_201
.LBB1_200:                              //    in Loop: Header=BB1_15 Depth=2
	and x18, x18, -129
.LBB1_201:                              //  %number
                                        //    in Loop: Header=BB1_15 Depth=2
	bltu x0, x27, .LBB1_206
.LBB1_202:                              //  %number
                                        //    in Loop: Header=BB1_15 Depth=2
	or x11, x26, x20
	bltu x0, x11, .LBB1_206
.LBB1_203:                              //  %if.else725
                                        //    in Loop: Header=BB1_15 Depth=2
	bltu x0, x10, .LBB1_216
.LBB1_204:                              //  %if.else725
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 1
	beq x0, x10, .LBB1_216
.LBB1_205:                              //  %if.then732
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10, x0, 48
	jal x0, .LBB1_142
.LBB1_206:                              //  %if.then654
                                        //    in Loop: Header=BB1_15 Depth=2
	beq x0, x10, .LBB1_217
.LBB1_207:                              //  %if.then654
                                        //    in Loop: Header=BB1_15 Depth=2
	xor x11, x10, 1
	beq x0, x11, .LBB1_138
.LBB1_208:                              //  %if.then654
                                        //    in Loop: Header=BB1_15 Depth=2
	lw fp, 40 ( sp )                //  4-byte Folded Reload
	lw x13, 24 ( sp )               //  4-byte Folded Reload
	xor x10, x10, 2
	bltu x0, x10, .LBB1_222
.LBB1_209:                              //  %do.body716
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	and x10, x20, 15
	add x10, x10, x13
	lb x10, 0 ( x10 )
	sll x11, x26, 28&31
	srl x26, x26, 4&31
	sb x10, -1 ( fp )
	srl x10, x20, 4&31
	or x20, x11, x10
	add fp, fp, -1
	or x10, x26, x20
	bltu x0, x10, .LBB1_209
	jal x0, .LBB1_240
.LBB1_138:                              //  %sw.bb674
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x0
	bne x26, x10, .LBB1_140
.LBB1_139:                              //    in Loop: Header=BB1_15 Depth=2
	sltiu x10, x20, 10
.LBB1_140:                              //  %sw.bb674
                                        //    in Loop: Header=BB1_15 Depth=2
	beq x0, x10, .LBB1_210
.LBB1_141:                              //  %if.then677
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10, x20, 48
.LBB1_142:                              //  %if.end735
                                        //    in Loop: Header=BB1_15 Depth=2
	sb x10, 207 ( sp )
	add fp, sp, 207
	jal x0, .LBB1_240
.LBB1_216:                              //    in Loop: Header=BB1_15 Depth=2
	lw fp, 40 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB1_240
.LBB1_210:                              //  %do.body682.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 1024
	sw x18, 92 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB1_223
.LBB1_211:                              //  %do.body682.us.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x18, x0
	mv x19, x18
	jal x0, .LBB1_214
.LBB1_212:                              //  %do.body682.us
                                        //    in Loop: Header=BB1_214 Depth=3
	snez x11, x26
.LBB1_213:                              //  %do.body682.us
                                        //    in Loop: Header=BB1_214 Depth=3
	sub x10, x20, x10
	or x12, x10, 48
	add x10, sp, 108
	add x13, x19, x10
	add x19, x19, -1
	mv x20, x24
	mv x26, fp
	sb x12, 99 ( x13 )
	beq x0, x11, .LBB1_236
.LBB1_214:                              //  %do.body682.us
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x27, x0, 10
	mv x10, x20
	mv x11, x26
	mv x12, x27
	mv x13, x18
	jal __udivdi3
	mv x12, x27
	mv x13, x18
	mv x24, x10
	mv fp, x11
	jal __muldi3
	bne x26, x18, .LBB1_212
.LBB1_215:                              //    in Loop: Header=BB1_214 Depth=3
	add x11, x0, 9
	sltu x11, x11, x20
	jal x0, .LBB1_213
.LBB1_217:                              //  %do.body657.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	add fp, sp, 207
.LBB1_218:                              //  %do.body657
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sll x11, x26, 29&31
	srl x10, x20, 3&31
	or x10, x11, x10
	and x11, x20, 7
	or x11, x11, 48
	srl x26, x26, 3&31
	sb x11, 0 ( fp )
	add fp, fp, -1
	or x12, x26, x10
	mv x20, x10
	bltu x0, x12, .LBB1_218
.LBB1_219:                              //  %do.end664
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10, fp, 1
	and x12, x18, 1
	beq x0, x12, .LBB1_238
.LBB1_220:                              //  %do.end664
                                        //    in Loop: Header=BB1_15 Depth=2
	xor x11, x11, 48
	beq x0, x11, .LBB1_238
.LBB1_221:                              //  %if.then671
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10, x0, 48
	sb x10, 0 ( fp )
	jal x0, .LBB1_239
.LBB1_222:                              //  %sw.default
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x10, %hi( .str.7 )
	add fp, x10, %lo( .str.7 )
	mv x10, fp
	jal strlen
	add x12, x0, 16
	add x16, sp, 272
	mv x20, x10
	jal x0, .LBB1_241
.LBB1_223:                              //  %do.body682.preheader12
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	lw fp, 40 ( sp )                //  4-byte Folded Reload
	sub x10, x0, x10
	sw x10, 60 ( sp )               //  4-byte Folded Spill
	mv x10, x0
	sw x10, 76 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB1_225
.LBB1_224:                              //  %if.end710
                                        //    in Loop: Header=BB1_225 Depth=3
	snez x10, x26
	mv x20, x27
	mv x26, x24
	beq x0, x10, .LBB1_237
.LBB1_225:                              //  %do.body682
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x19, x0, 10
	mv x18, x0
	mv x10, x20
	mv x11, x26
	mv x12, x19
	mv x13, x18
	jal __udivdi3
	mv x12, x19
	mv x13, x18
	mv x27, x10
	mv x24, x11
	jal __muldi3
	sub x10, x20, x10
	or x10, x10, 48
	sb x10, -1 ( fp )
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	add fp, fp, -1
	lb x10, 0 ( x10 )
	add x11, x11, 1
	sw x11, 76 ( sp )               //  4-byte Folded Spill
	bne x11, x10, .LBB1_231
.LBB1_226:                              //  %land.lhs.true693
                                        //    in Loop: Header=BB1_225 Depth=3
	beq x26, x18, .LBB1_235
.LBB1_227:                              //  %land.lhs.true693
                                        //    in Loop: Header=BB1_225 Depth=3
	mv x11, x18
	lw x19, 80 ( sp )               //  4-byte Folded Reload
	add x16, sp, 272
	add x12, x0, 16
	bltu x0, x11, .LBB1_233
.LBB1_228:                              //  %land.lhs.true693
                                        //    in Loop: Header=BB1_225 Depth=3
	and x10, x10, 255
	xor x10, x10, 127
	beq x0, x10, .LBB1_233
.LBB1_229:                              //  %if.then700
                                        //    in Loop: Header=BB1_225 Depth=3
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	lw x11, 32 ( sp )               //  4-byte Folded Reload
	lw x12, 36 ( sp )               //  4-byte Folded Reload
	add fp, x10, fp
	mv x10, fp
	jal strncpy
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	mv x12, x0
	sw x12, 76 ( sp )               //  4-byte Folded Spill
	lbu x10, 1 ( x11 )
	beq x10, x12, .LBB1_232
.LBB1_230:                              //  %if.then700
                                        //    in Loop: Header=BB1_225 Depth=3
	add x11, x11, 1
	sw x11, 72 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB1_232
.LBB1_231:                              //    in Loop: Header=BB1_225 Depth=3
	lw x19, 80 ( sp )               //  4-byte Folded Reload
.LBB1_232:                              //  %if.then700
                                        //    in Loop: Header=BB1_225 Depth=3
	add x16, sp, 272
	add x12, x0, 16
.LBB1_233:                              //  %if.end710
                                        //    in Loop: Header=BB1_225 Depth=3
	bne x26, x18, .LBB1_224
.LBB1_234:                              //    in Loop: Header=BB1_225 Depth=3
	add x10, x0, 9
	sltu x10, x10, x20
	mv x20, x27
	mv x26, x24
	bltu x0, x10, .LBB1_225
	jal x0, .LBB1_237
.LBB1_235:                              //    in Loop: Header=BB1_225 Depth=3
	sltiu x11, x20, 10
	lw x19, 80 ( sp )               //  4-byte Folded Reload
	add x16, sp, 272
	add x12, x0, 16
	beq x0, x11, .LBB1_228
	jal x0, .LBB1_233
.LBB1_236:                              //  %if.end735.loopexit
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10, x19, x10
	add fp, x10, 100
	sub x10, x0, x19
	lw x19, 80 ( sp )               //  4-byte Folded Reload
	add x16, sp, 272
	add x12, x0, 16
	sw x10, 76 ( sp )               //  4-byte Folded Spill
.LBB1_237:                              //  %if.end735
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x18, 92 ( sp )               //  4-byte Folded Reload
	lw x27, 84 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_240
.LBB1_238:                              //    in Loop: Header=BB1_15 Depth=2
	mv fp, x10
.LBB1_239:                              //  %if.end735
                                        //    in Loop: Header=BB1_15 Depth=2
	add x12, x0, 16
.LBB1_240:                              //  %if.end735
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	sub x20, x10, fp
.LBB1_241:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x26, x0
	sw x26, 48 ( sp )               //  4-byte Folded Spill
	sw x26, 60 ( sp )               //  4-byte Folded Spill
	sw x26, 56 ( sp )               //  4-byte Folded Spill
	mv x10, x27
	blt x20, x27, .LBB1_243
.LBB1_242:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x20
.LBB1_243:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_15 Depth=2
	lbu x11, 299 ( sp )
	sw x18, 92 ( sp )               //  4-byte Folded Spill
	and x18, x18, 2
	snez x11, x11
	add x11, x11, x10
	srl x10, x18, 1&31
	beq x0, x10, .LBB1_244
.LBB1_258:                              //    in Loop: Header=BB1_15 Depth=2
	add x11, x11, 2
.LBB1_244:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x24, x27
	sw x11, 84 ( sp )               //  4-byte Folded Spill
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	and x27, x10, 132
	beq x0, x27, .LBB1_245
.LBB1_249:                              //  %if.end811
                                        //    in Loop: Header=BB1_15 Depth=2
	lbu x10, 299 ( sp )
	beq x0, x10, .LBB1_262
.LBB1_250:                              //  %if.then813
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 8 ( x16 )
	add x10, x10, 1
	sw x10, 8 ( x16 )
	seqz x10, x0
	sw x10, 4 ( x21 )
	add x10, sp, 299
	sw x10, 0 ( x21 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_259
.LBB1_251:                              //  %if.then823
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x12, x0, 16
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_262
	jal x0, .LBB1_252
.LBB1_245:                              //  %if.then767
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 84 ( sp )               //  4-byte Folded Reload
	sub x19, x22, x10
	bge x0, x19, .LBB1_261
.LBB1_246:                              //  %while.cond772.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, x19, 17
	beq x0, x10, .LBB1_255
	jal x0, .LBB1_247
.LBB1_253:                              //    in Loop: Header=BB1_255 Depth=3
	add x21, x21, 8
.LBB1_254:                              //  %if.end791
                                        //    in Loop: Header=BB1_255 Depth=3
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	add x19, x19, -16
	sw x10, 0 ( x21 )
	bge x12, x19, .LBB1_247
.LBB1_255:                              //  %while.body775
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x16 )
	sw x12, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_253
.LBB1_256:                              //  %if.then785
                                        //    in Loop: Header=BB1_255 Depth=3
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	lw x11, 80 ( sp )               //  4-byte Folded Reload
	mv x12, x16
	jal __sprint_r
	add x12, x0, 16
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_254
	jal x0, .LBB1_257
.LBB1_259:                              //    in Loop: Header=BB1_15 Depth=2
	add x21, x21, 8
	bltu x0, x18, .LBB1_263
	jal x0, .LBB1_265
.LBB1_247:                              //  %while.end793
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 8 ( x16 )
	sw x19, 4 ( x21 )
	add x10, x19, x10
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_260
.LBB1_248:                              //  %if.then803
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x19, 80 ( sp )               //  4-byte Folded Reload
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x12, x16
	mv x11, x19
	jal __sprint_r
	add x12, x0, 16
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_249
	jal x0, .LBB1_252
.LBB1_260:                              //    in Loop: Header=BB1_15 Depth=2
	add x21, x21, 8
.LBB1_261:                              //  %if.end811
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x19, 80 ( sp )               //  4-byte Folded Reload
	lbu x10, 299 ( sp )
	bltu x0, x10, .LBB1_250
.LBB1_262:                              //  %if.end830
                                        //    in Loop: Header=BB1_15 Depth=2
	beq x0, x18, .LBB1_265
.LBB1_263:                              //  %if.then833
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 8 ( x16 )
	add x10, x10, 2
	sw x10, 8 ( x16 )
	add x10, x0, 2
	sw x10, 4 ( x21 )
	add x10, sp, 106
	sw x10, 0 ( x21 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_278
.LBB1_264:                              //  %if.then844
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x12, x0, 16
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_265
.LBB1_536:                              //  %if.then844
	jal x0, .LBB1_252
.LBB1_265:                              //  %if.end851
                                        //    in Loop: Header=BB1_15 Depth=2
	xor x10, x27, 128
	bltu x0, x10, .LBB1_279
.LBB1_266:                              //  %if.then855
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 84 ( sp )               //  4-byte Folded Reload
	lw x27, 88 ( sp )               //  4-byte Folded Reload
	sub x18, x22, x10
	bge x0, x18, .LBB1_280
.LBB1_267:                              //  %while.cond860.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, x18, 17
	beq x0, x10, .LBB1_272
	jal x0, .LBB1_268
.LBB1_270:                              //    in Loop: Header=BB1_272 Depth=3
	add x21, x21, 8
.LBB1_271:                              //  %if.end879
                                        //    in Loop: Header=BB1_272 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add x18, x18, -16
	sw x10, 0 ( x21 )
	bge x12, x18, .LBB1_268
.LBB1_272:                              //  %while.body863
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x16 )
	sw x12, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_270
.LBB1_273:                              //  %if.then873
                                        //    in Loop: Header=BB1_272 Depth=3
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x12, x0, 16
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_271
	jal x0, .LBB1_274
.LBB1_268:                              //  %while.end881
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 8 ( x16 )
	sw x18, 4 ( x21 )
	add x10, x18, x10
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_306
.LBB1_269:                              //  %if.then891
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x12, x0, 16
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_280
	jal x0, .LBB1_274
.LBB1_278:                              //    in Loop: Header=BB1_15 Depth=2
	add x21, x21, 8
	xor x10, x27, 128
	beq x0, x10, .LBB1_266
.LBB1_279:                              //    in Loop: Header=BB1_15 Depth=2
	lw x27, 88 ( sp )               //  4-byte Folded Reload
.LBB1_280:                              //  %if.end899
                                        //    in Loop: Header=BB1_15 Depth=2
	sub x18, x24, x20
	bge x0, x18, .LBB1_307
.LBB1_281:                              //  %while.cond904.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, x18, 17
	beq x0, x10, .LBB1_289
	jal x0, .LBB1_282
.LBB1_287:                              //    in Loop: Header=BB1_289 Depth=3
	add x21, x21, 8
.LBB1_288:                              //  %if.end923
                                        //    in Loop: Header=BB1_289 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add x18, x18, -16
	sw x10, 0 ( x21 )
	bge x12, x18, .LBB1_282
.LBB1_289:                              //  %while.body907
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x16 )
	sw x12, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_287
.LBB1_290:                              //  %if.then917
                                        //    in Loop: Header=BB1_289 Depth=3
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x12, x0, 16
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_288
	jal x0, .LBB1_274
.LBB1_282:                              //  %while.end925
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 8 ( x16 )
	sw x18, 4 ( x21 )
	add x10, x18, x10
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_291
.LBB1_283:                              //  %if.then935
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	lw x18, 92 ( sp )               //  4-byte Folded Reload
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_284
.LBB1_537:                              //  %if.then935
	jal x0, .LBB1_274
.LBB1_284:                              //  %if.end942
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 256
	bltu x0, x10, .LBB1_292
.LBB1_285:                              //  %if.then946
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 8 ( x16 )
	sw x20, 4 ( x21 )
	sw fp, 0 ( x21 )
	add x10, x20, x10
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_299
.LBB1_286:                              //  %if.then956
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	lw x24, 68 ( sp )               //  4-byte Folded Reload
	add x16, sp, 272
	add x21, sp, 208
	mv x20, x0
	add x26, x0, 90
	lw x9, 84 ( sp )                //  4-byte Folded Reload
	beq x0, x10, .LBB1_348
	jal x0, .LBB1_275
.LBB1_291:                              //    in Loop: Header=BB1_15 Depth=2
	lw x18, 92 ( sp )               //  4-byte Folded Reload
	add x21, x21, 8
	and x10, x18, 256
	beq x0, x10, .LBB1_285
.LBB1_292:                              //  %if.else963
                                        //    in Loop: Header=BB1_15 Depth=2
	slti x10, x9, 102
	bltu x0, x10, .LBB1_300
.LBB1_293:                              //  %if.then966
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	lw x11, 44 ( sp )               //  4-byte Folded Reload
	mv x20, x0
	mv x13, x20
	mv x12, x20
	jal __nedf2
	bltu x0, x10, .LBB1_313
.LBB1_294:                              //  %if.then970
                                        //    in Loop: Header=BB1_15 Depth=2
	add x12, sp, 272
	lw x10, 8 ( x12 )
	lw x9, 84 ( sp )                //  4-byte Folded Reload
	add x10, x10, 1
	sw x10, 8 ( x12 )
	seqz x10, x0
	sw x10, 4 ( x21 )
	lw x10, 12 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_319
.LBB1_295:                              //  %if.then980
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	jal __sprint_r
	lw x24, 68 ( sp )               //  4-byte Folded Reload
	add x21, sp, 208
	add x26, x0, 90
	beq x0, x10, .LBB1_296
.LBB1_538:                              //  %if.then980
	jal x0, .LBB1_275
.LBB1_296:                              //  %if.end986
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 1
	bltu x0, x10, .LBB1_320
.LBB1_297:                              //  %if.end986
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 292 ( sp )
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	blt x10, x11, .LBB1_320
.LBB1_298:                              //    in Loop: Header=BB1_15 Depth=2
	add x16, sp, 272
	and x10, x18, 4
	beq x0, x10, .LBB1_358
.LBB1_349:                              //  %if.then1620
                                        //    in Loop: Header=BB1_15 Depth=2
	sub fp, x22, x9
	bge x0, fp, .LBB1_358
.LBB1_350:                              //  %while.cond1625.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	bltu x0, x10, .LBB1_356
.LBB1_351:                              //  %while.body1628.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	add x12, x0, 16
	jal x0, .LBB1_354
.LBB1_352:                              //    in Loop: Header=BB1_354 Depth=3
	add x21, x21, 8
.LBB1_353:                              //  %if.end1644
                                        //    in Loop: Header=BB1_354 Depth=3
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x21 )
	bge x12, fp, .LBB1_356
.LBB1_354:                              //  %while.body1628
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x16 )
	sw x12, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_352
.LBB1_355:                              //  %if.then1638
                                        //    in Loop: Header=BB1_354 Depth=3
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x12, x0, 16
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_353
	jal x0, .LBB1_275
.LBB1_299:                              //    in Loop: Header=BB1_15 Depth=2
	lw x24, 68 ( sp )               //  4-byte Folded Reload
	add x21, x21, 8
	mv x20, x0
	add x26, x0, 90
	jal x0, .LBB1_347
.LBB1_300:                              //  %if.else1475
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 8 ( x16 )
	lw x12, 276 ( sp )
	sw fp, 0 ( x21 )
	add x9, x21, 8
	add x11, x10, 1
	seqz x10, x0
	mv x13, x10
	sw x13, 4 ( x21 )
	lw x21, 76 ( sp )               //  4-byte Folded Reload
	add x10, x12, 1
	slti x12, x12, 7
	mv x20, x0
	sw x11, 8 ( x16 )
	sw x10, 276 ( sp )
	blt x13, x21, .LBB1_308
.LBB1_301:                              //  %if.else1475
                                        //    in Loop: Header=BB1_15 Depth=2
	and x13, x18, 1
	bltu x0, x13, .LBB1_308
.LBB1_302:                              //  %if.else1581
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x24, 68 ( sp )               //  4-byte Folded Reload
	add x26, x0, 90
	bltu x0, x12, .LBB1_304
	jal x0, .LBB1_303
.LBB1_356:                              //    in Loop: Header=BB1_15 Depth=2
	add x10, x21, 4
	sw fp, 0 ( x10 )
	lw x10, 8 ( x16 )
	lw x11, 276 ( sp )
	add x10, fp, x10
	add x12, x11, 1
	slti x11, x11, 7
	sw x10, 8 ( x16 )
	sw x12, 276 ( sp )
	bltu x0, x11, .LBB1_359
.LBB1_357:                              //  %if.then1656
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x16, sp, 272
	beq x0, x10, .LBB1_358
	jal x0, .LBB1_275
.LBB1_306:                              //    in Loop: Header=BB1_15 Depth=2
	add x21, x21, 8
	sub x18, x24, x20
	blt x0, x18, .LBB1_281
.LBB1_307:                              //    in Loop: Header=BB1_15 Depth=2
	lw x18, 92 ( sp )               //  4-byte Folded Reload
	and x10, x18, 256
	beq x0, x10, .LBB1_285
	jal x0, .LBB1_292
.LBB1_308:                              //  %if.then1481
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x24, 68 ( sp )               //  4-byte Folded Reload
	add x26, x0, 90
	bltu x0, x12, .LBB1_311
.LBB1_309:                              //  %if.then1491
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	mv x12, x16
	mv x18, x16
	jal __sprint_r
	bltu x0, x10, .LBB1_275
.LBB1_310:                              //  %if.then1491.if.end1497_crit_edge
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 276 ( sp )
	lw x11, 8 ( x18 )
	mv x16, x18
	lw x18, 92 ( sp )               //  4-byte Folded Reload
	add x9, sp, 208
.LBB1_311:                              //  %if.end1497
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x12, 28 ( sp )               //  4-byte Folded Reload
	add x11, x12, x11
	sw x11, 8 ( x16 )
	lw x11, 16 ( sp )               //  4-byte Folded Reload
	sw x12, 4 ( x9 )
	sw x11, 0 ( x9 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_330
.LBB1_312:                              //  %if.then1508
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x9, sp, 208
	beq x0, x10, .LBB1_331
	jal x0, .LBB1_275
.LBB1_313:                              //  %if.else1053
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 292 ( sp )
	add x16, sp, 272
	bge x0, x10, .LBB1_343
.LBB1_314:                              //  %if.else1156
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11, 56 ( sp )               //  4-byte Folded Reload
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	mv x9, x11
	blt x11, x10, .LBB1_316
.LBB1_315:                              //  %if.else1156
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x9, 76 ( sp )                //  4-byte Folded Reload
.LBB1_316:                              //  %if.else1156
                                        //    in Loop: Header=BB1_15 Depth=2
	add x12, x0, 16
	bge x0, x9, .LBB1_366
.LBB1_317:                              //  %if.then1168
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 8 ( x16 )
	sw x9, 4 ( x21 )
	sw fp, 0 ( x21 )
	add x10, x9, x10
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_365
.LBB1_318:                              //  %if.then1178
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x12, x0, 16
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_366
	jal x0, .LBB1_274
.LBB1_319:                              //    in Loop: Header=BB1_15 Depth=2
	lw x24, 68 ( sp )               //  4-byte Folded Reload
	add x21, x21, 8
	add x26, x0, 90
	and x10, x18, 1
	beq x0, x10, .LBB1_297
.LBB1_320:                              //  %if.then992
                                        //    in Loop: Header=BB1_15 Depth=2
	add x16, sp, 272
	lw x11, 28 ( sp )               //  4-byte Folded Reload
	lw x10, 8 ( x16 )
	sw x11, 4 ( x21 )
	add x10, x11, x10
	sw x10, 8 ( x16 )
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_342
.LBB1_321:                              //  %if.then1002
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x16, sp, 272
	add x21, sp, 208
	add x12, x0, 16
	bltu x0, x10, .LBB1_275
.LBB1_322:                              //  %if.end1008
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	add fp, x10, -1
	bge x0, fp, .LBB1_348
.LBB1_323:                              //  %while.cond1013.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	beq x0, x10, .LBB1_328
	jal x0, .LBB1_324
.LBB1_326:                              //    in Loop: Header=BB1_328 Depth=3
	add x21, x21, 8
.LBB1_327:                              //  %if.end1032
                                        //    in Loop: Header=BB1_328 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x21 )
	bge x12, fp, .LBB1_324
.LBB1_328:                              //  %while.body1016
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x16 )
	sw x12, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_326
.LBB1_329:                              //  %if.then1026
                                        //    in Loop: Header=BB1_328 Depth=3
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x12, x0, 16
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_327
	jal x0, .LBB1_275
.LBB1_330:                              //    in Loop: Header=BB1_15 Depth=2
	add x9, x9, 8
.LBB1_331:                              //  %if.end1514
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	lw x11, 44 ( sp )               //  4-byte Folded Reload
	mv x13, x20
	mv x12, x20
	jal __eqdf2
	beq x0, x10, .LBB1_335
.LBB1_332:                              //  %if.then1517
                                        //    in Loop: Header=BB1_15 Depth=2
	add x16, sp, 272
	lw x12, 8 ( x16 )
	add x11, x21, -1
	add x10, fp, 1
	sw x11, 4 ( x9 )
	add x12, x11, x12
	sw x12, 8 ( x16 )
	sw x10, 0 ( x9 )
	jal x0, .LBB1_333
.LBB1_335:                              //  %if.else1536
                                        //    in Loop: Header=BB1_15 Depth=2
	add fp, x21, -1
	add x16, sp, 272
	bge x0, fp, .LBB1_304
.LBB1_336:                              //  %while.cond1541.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add x12, x0, 16
	sw x10, 0 ( x9 )
	slti x10, fp, 17
	beq x0, x10, .LBB1_340
	jal x0, .LBB1_337
.LBB1_338:                              //    in Loop: Header=BB1_340 Depth=3
	add x9, x9, 8
.LBB1_339:                              //  %if.end1560
                                        //    in Loop: Header=BB1_340 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x9 )
	bge x12, fp, .LBB1_337
.LBB1_340:                              //  %while.body1544
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x16 )
	sw x12, 4 ( x9 )
	add x10, x10, 16
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_338
.LBB1_341:                              //  %if.then1554
                                        //    in Loop: Header=BB1_340 Depth=3
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x12, x0, 16
	add x16, sp, 272
	add x9, sp, 208
	beq x0, x10, .LBB1_339
	jal x0, .LBB1_275
.LBB1_342:                              //    in Loop: Header=BB1_15 Depth=2
	add x21, x21, 8
	add x12, x0, 16
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	add fp, x10, -1
	blt x0, fp, .LBB1_323
	jal x0, .LBB1_348
.LBB1_343:                              //  %if.then1056
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11, 8 ( x16 )
	add x11, x11, 1
	sw x11, 8 ( x16 )
	seqz x11, x0
	sw x11, 4 ( x21 )
	lw x11, 12 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x21 )
	lw x11, 276 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 276 ( sp )
	bltu x0, x11, .LBB1_376
.LBB1_344:                              //  %if.then1066
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	lw x24, 68 ( sp )               //  4-byte Folded Reload
	lw x9, 84 ( sp )                //  4-byte Folded Reload
	add x26, x0, 90
	bltu x0, x10, .LBB1_275
.LBB1_345:                              //  %if.then1066.if.end1072_crit_edge
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 292 ( sp )
	add x21, sp, 208
	add x16, sp, 272
	jal x0, .LBB1_377
.LBB1_337:                              //  %while.end1562
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 8 ( x16 )
	sw fp, 4 ( x9 )
	add x10, fp, x10
	sw x10, 8 ( x16 )
.LBB1_333:                              //  %if.then1517
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_334
.LBB1_303:                              //  %if.then1529
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x16, sp, 272
	add x9, sp, 208
	beq x0, x10, .LBB1_304
	jal x0, .LBB1_275
.LBB1_334:                              //    in Loop: Header=BB1_15 Depth=2
	add x9, x9, 8
.LBB1_304:                              //  %if.end1598
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11, 20 ( sp )               //  4-byte Folded Reload
	lw x10, 8 ( x16 )
	sw x11, 4 ( x9 )
	add x10, x11, x10
	sw x10, 8 ( x16 )
	add x10, sp, 285
	sw x10, 0 ( x9 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_346
.LBB1_305:                              //  %if.then1609
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x16, sp, 272
	add x21, sp, 208
	lw x9, 84 ( sp )                //  4-byte Folded Reload
	beq x0, x10, .LBB1_348
	jal x0, .LBB1_275
.LBB1_346:                              //    in Loop: Header=BB1_15 Depth=2
	add x21, x9, 8
.LBB1_347:                              //  %if.end1617
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x9, 84 ( sp )                //  4-byte Folded Reload
.LBB1_348:                              //  %if.end1617
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 4
	bltu x0, x10, .LBB1_349
.LBB1_358:                              //  %if.end1664thread-pre-split
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 280 ( sp )
.LBB1_359:                              //  %if.end1664
                                        //    in Loop: Header=BB1_15 Depth=2
	blt x9, x22, .LBB1_361
.LBB1_360:                              //  %if.end1664
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x22, x9
.LBB1_361:                              //  %if.end1664
                                        //    in Loop: Header=BB1_15 Depth=2
	add x24, x24, x22
	beq x0, x10, .LBB1_363
.LBB1_362:                              //  %land.lhs.true1674
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x16, sp, 272
	bltu x0, x10, .LBB1_275
.LBB1_363:                              //  %if.end1678
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11, 60 ( sp )               //  4-byte Folded Reload
	mv fp, x25
	add x12, x0, 16
	sw x0, 276 ( sp )
	bltu x0, x11, .LBB1_364
.LBB1_539:                              //  %if.end1678
                                        //    in Loop: Header=BB1_12 Depth=1
	jal x0, .LBB1_12
.LBB1_364:                              //  %if.then1683
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	jal _free_r
	add x12, x0, 16
	add x16, sp, 272
	mv fp, x25
	add x21, sp, 208
	mv x9, fp
	lbu x10, 0 ( x9 )
	beq x0, x10, .LBB1_540
.LBB1_541:                              //  %if.then1683
                                        //    in Loop: Header=BB1_12 Depth=1
	jal x0, .LBB1_13
.LBB1_540:                              //  %if.then1683
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_15
.LBB1_365:                              //    in Loop: Header=BB1_15 Depth=2
	add x21, x21, 8
.LBB1_366:                              //  %if.end1185
                                        //    in Loop: Header=BB1_15 Depth=2
	blt x20, x9, .LBB1_368
.LBB1_367:                              //  %if.end1185
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x9, x20
.LBB1_368:                              //  %if.end1185
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	sub x9, x10, x9
	bge x0, x9, .LBB1_382
.LBB1_369:                              //  %while.cond1196.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, x9, 17
	beq x0, x10, .LBB1_374
	jal x0, .LBB1_370
.LBB1_372:                              //    in Loop: Header=BB1_374 Depth=3
	add x21, x21, 8
.LBB1_373:                              //  %if.end1215
                                        //    in Loop: Header=BB1_374 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add x9, x9, -16
	sw x10, 0 ( x21 )
	bge x12, x9, .LBB1_370
.LBB1_374:                              //  %while.body1199
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x16 )
	sw x12, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_372
.LBB1_375:                              //  %if.then1209
                                        //    in Loop: Header=BB1_374 Depth=3
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x12, x0, 16
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_373
	jal x0, .LBB1_274
.LBB1_370:                              //  %while.end1217
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 8 ( x16 )
	sw x9, 4 ( x21 )
	add x10, x9, x10
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_381
.LBB1_371:                              //  %if.then1227
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x12, x0, 16
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_382
	jal x0, .LBB1_274
.LBB1_376:                              //    in Loop: Header=BB1_15 Depth=2
	lw x24, 68 ( sp )               //  4-byte Folded Reload
	lw x9, 84 ( sp )                //  4-byte Folded Reload
	add x21, x21, 8
	add x26, x0, 90
.LBB1_377:                              //  %if.end1072
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x12, 76 ( sp )               //  4-byte Folded Reload
	and x11, x18, 1
	or x11, x12, x11
	or x11, x10, x11
	beq x0, x11, .LBB1_348
.LBB1_378:                              //  %if.then1079
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x12, 28 ( sp )               //  4-byte Folded Reload
	lw x11, 8 ( x16 )
	sw x12, 4 ( x21 )
	add x11, x12, x11
	sw x11, 8 ( x16 )
	lw x11, 16 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x21 )
	lw x11, 276 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 276 ( sp )
	bltu x0, x11, .LBB1_423
.LBB1_379:                              //  %if.then1089
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	bltu x0, x10, .LBB1_275
.LBB1_380:                              //  %if.then1089.if.end1095_crit_edge
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 292 ( sp )
	add x11, sp, 208
	add x16, sp, 272
	lw x21, 76 ( sp )               //  4-byte Folded Reload
	bge x10, x0, .LBB1_516
	jal x0, .LBB1_424
.LBB1_381:                              //    in Loop: Header=BB1_15 Depth=2
	add x21, x21, 8
.LBB1_382:                              //  %cleanup.cont
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	add x9, x10, fp
	and x10, x18, 1024
	bltu x0, x10, .LBB1_384
.LBB1_383:                              //    in Loop: Header=BB1_15 Depth=2
	lw x24, 68 ( sp )               //  4-byte Folded Reload
	mv x18, x9
	jal x0, .LBB1_389
.LBB1_384:                              //  %while.cond1239.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 48 ( sp )               //  4-byte Folded Reload
	blt x0, x10, .LBB1_398
.LBB1_385:                              //  %while.cond1239.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	blt x0, x26, .LBB1_398
.LBB1_386:                              //  %while.end1355
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	add x18, x10, fp
	bltu x18, x9, .LBB1_388
.LBB1_387:                              //  %while.end1355
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x18, x9
.LBB1_388:                              //  %while.end1355
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x24, 68 ( sp )               //  4-byte Folded Reload
	mv x20, x0
.LBB1_389:                              //  %if.end1362
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11, 92 ( sp )               //  4-byte Folded Reload
	lw x10, 292 ( sp )
	lw x9, 84 ( sp )                //  4-byte Folded Reload
	add x26, x0, 90
	and x11, x11, 1
	bltu x0, x11, .LBB1_391
.LBB1_390:                              //  %if.end1362
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	bge x10, x11, .LBB1_432
.LBB1_391:                              //  %if.then1368
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x12, 28 ( sp )               //  4-byte Folded Reload
	lw x11, 8 ( x16 )
	sw x12, 4 ( x21 )
	add x11, x12, x11
	sw x11, 8 ( x16 )
	lw x11, 16 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x21 )
	lw x11, 276 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 276 ( sp )
	bltu x0, x11, .LBB1_430
.LBB1_392:                              //  %if.then1378
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	bltu x0, x10, .LBB1_275
.LBB1_393:                              //  %if.then1378.if.end1385_crit_edge
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 292 ( sp )
	add x21, sp, 208
	add x16, sp, 272
	jal x0, .LBB1_431
.LBB1_395:                              //  %while.cond35.preheader.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11, 84 ( sp )               //  4-byte Folded Reload
	sub x10, x11, x20
	add x10, x10, 1
	bge x0, x10, .LBB1_463
.LBB1_396:                              //  %while.body39.i.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x18, 92 ( sp )               //  4-byte Folded Reload
	lw x13, 76 ( sp )               //  4-byte Folded Reload
	sub x10, x11, x27
	add x16, sp, 272
	add x12, x0, 16
	mv x27, x11
.LBB1_397:                              //  %while.body39.i
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x11, x0, 48
	sb x11, 0 ( x19 )
	add x19, x19, 1
	add x10, x10, -1
	blt x0, x10, .LBB1_397
	jal x0, .LBB1_464
.LBB1_394:                              //    in Loop: Header=BB1_15 Depth=2
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	lw x18, 92 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_452
.LBB1_398:                              //  %while.body1244.lr.ph
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 48 ( sp )               //  4-byte Folded Reload
	slt x24, x0, x10
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	add x10, x10, fp
	sw x10, 56 ( sp )               //  4-byte Folded Spill
.LBB1_399:                              //  %while.body1244
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_418 Depth 4
	lw x11, 36 ( sp )               //  4-byte Folded Reload
	lw x10, 8 ( x16 )
	and x20, x24, 1
	sw x11, 4 ( x21 )
	add x10, x11, x10
	sw x10, 8 ( x16 )
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	sw x11, 276 ( sp )
	bltu x0, x20, .LBB1_401
.LBB1_400:                              //  %while.body1244
                                        //    in Loop: Header=BB1_399 Depth=3
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	add x11, x11, -1
	sw x11, 72 ( sp )               //  4-byte Folded Spill
.LBB1_401:                              //  %while.body1244
                                        //    in Loop: Header=BB1_399 Depth=3
	slti x10, x10, 7
	bltu x0, x10, .LBB1_403
.LBB1_402:                              //  %if.then1262
                                        //    in Loop: Header=BB1_399 Depth=3
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x12, x0, 16
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_404
	jal x0, .LBB1_274
.LBB1_403:                              //    in Loop: Header=BB1_399 Depth=3
	add x21, x21, 8
.LBB1_404:                              //  %if.end1268
                                        //    in Loop: Header=BB1_399 Depth=3
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	lb x18, 0 ( x11 )
	sub x10, x10, x9
	blt x18, x10, .LBB1_406
.LBB1_405:                              //  %if.end1268
                                        //    in Loop: Header=BB1_399 Depth=3
	mv x18, x10
.LBB1_406:                              //  %if.end1268
                                        //    in Loop: Header=BB1_399 Depth=3
	bge x0, x18, .LBB1_410
.LBB1_407:                              //  %if.then1282
                                        //    in Loop: Header=BB1_399 Depth=3
	lw x10, 8 ( x16 )
	sw x18, 4 ( x21 )
	sw x9, 0 ( x21 )
	add x10, x18, x10
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_409
.LBB1_408:                              //  %if.then1292
                                        //    in Loop: Header=BB1_399 Depth=3
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x12, x0, 16
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_410
	jal x0, .LBB1_274
.LBB1_409:                              //    in Loop: Header=BB1_399 Depth=3
	add x21, x21, 8
.LBB1_410:                              //  %if.end1299
                                        //    in Loop: Header=BB1_399 Depth=3
	mv x10, x0
	blt x10, x18, .LBB1_412
.LBB1_411:                              //  %if.end1299
                                        //    in Loop: Header=BB1_399 Depth=3
	mv x18, x0
.LBB1_412:                              //  %if.end1299
                                        //    in Loop: Header=BB1_399 Depth=3
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	lb x10, 0 ( x10 )
	sub x18, x10, x18
	bge x0, x18, .LBB1_421
.LBB1_413:                              //  %while.cond1311.preheader
                                        //    in Loop: Header=BB1_399 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, x18, 17
	beq x0, x10, .LBB1_418
	jal x0, .LBB1_414
.LBB1_416:                              //    in Loop: Header=BB1_418 Depth=4
	add x21, x21, 8
.LBB1_417:                              //  %if.end1330
                                        //    in Loop: Header=BB1_418 Depth=4
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add x18, x18, -16
	sw x10, 0 ( x21 )
	bge x12, x18, .LBB1_414
.LBB1_418:                              //  %while.body1314
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //        Parent Loop BB1_399 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	lw x10, 8 ( x16 )
	sw x12, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_416
.LBB1_419:                              //  %if.then1324
                                        //    in Loop: Header=BB1_418 Depth=4
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x12, x0, 16
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_417
	jal x0, .LBB1_274
.LBB1_414:                              //  %while.end1332
                                        //    in Loop: Header=BB1_399 Depth=3
	lw x10, 8 ( x16 )
	sw x18, 4 ( x21 )
	add x10, x18, x10
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_420
.LBB1_415:                              //  %if.then1342
                                        //    in Loop: Header=BB1_399 Depth=3
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x12, x0, 16
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_421
	jal x0, .LBB1_274
.LBB1_420:                              //    in Loop: Header=BB1_399 Depth=3
	add x21, x21, 8
.LBB1_421:                              //  %cleanup.cont1352
                                        //    in Loop: Header=BB1_399 Depth=3
	xor x10, x24, -1
	and x10, x10, 1
	sub x26, x26, x10
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	lw x11, 48 ( sp )               //  4-byte Folded Reload
	lb x10, 0 ( x10 )
	sub x11, x11, x20
	slt x24, x0, x11
	sw x11, 48 ( sp )               //  4-byte Folded Spill
	add x9, x10, x9
	blt x0, x11, .LBB1_399
.LBB1_422:                              //  %cleanup.cont1352
                                        //    in Loop: Header=BB1_399 Depth=3
	blt x0, x26, .LBB1_399
	jal x0, .LBB1_386
.LBB1_423:                              //    in Loop: Header=BB1_15 Depth=2
	add x11, x21, 8
	lw x21, 76 ( sp )               //  4-byte Folded Reload
	bge x10, x0, .LBB1_516
.LBB1_424:                              //  %while.cond1100.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x12, 100 ( sp )              //  4-byte Folded Reload
	sub x9, x0, x10
	sw x12, 0 ( x11 )
	add x12, x0, -17
	blt x12, x10, .LBB1_448
.LBB1_425:                              //  %while.body1103.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	add x12, x0, 16
	jal x0, .LBB1_428
.LBB1_426:                              //    in Loop: Header=BB1_428 Depth=3
	add x11, x11, 8
.LBB1_427:                              //  %if.end1119
                                        //    in Loop: Header=BB1_428 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add x9, x9, -16
	add x12, x0, 16
	sw x10, 0 ( x11 )
	bge x12, x9, .LBB1_448
.LBB1_428:                              //  %while.body1103
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x16 )
	sw x12, 4 ( x11 )
	add x10, x10, 16
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 276 ( sp )
	bltu x0, x10, .LBB1_426
.LBB1_429:                              //  %if.then1113
                                        //    in Loop: Header=BB1_428 Depth=3
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x16, sp, 272
	add x11, sp, 208
	beq x0, x10, .LBB1_427
	jal x0, .LBB1_275
.LBB1_430:                              //    in Loop: Header=BB1_15 Depth=2
	add x21, x21, 8
.LBB1_431:                              //  %if.end1385
                                        //    in Loop: Header=BB1_15 Depth=2
	add x12, x0, 16
.LBB1_432:                              //  %if.end1385
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x13, 76 ( sp )               //  4-byte Folded Reload
	add x11, x13, fp
	sub x10, x13, x10
	sub x11, x11, x18
	mv fp, x10
	blt x10, x11, .LBB1_434
.LBB1_433:                              //  %if.end1385
                                        //    in Loop: Header=BB1_15 Depth=2
	mv fp, x11
.LBB1_434:                              //  %if.end1385
                                        //    in Loop: Header=BB1_15 Depth=2
	bge x0, fp, .LBB1_440
.LBB1_435:                              //  %if.then1399
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11, 8 ( x16 )
	sw fp, 4 ( x21 )
	sw x18, 0 ( x21 )
	add x11, fp, x11
	sw x11, 8 ( x16 )
	lw x11, 276 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 276 ( sp )
	bltu x0, x11, .LBB1_438
.LBB1_436:                              //  %if.then1409
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	lw x18, 92 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB1_275
.LBB1_437:                              //  %if.then1409.if.end1416_crit_edge
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 292 ( sp )
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	add x21, sp, 208
	add x16, sp, 272
	add x12, x0, 16
	sub x10, x11, x10
	bge x20, fp, .LBB1_439
	jal x0, .LBB1_441
.LBB1_440:                              //    in Loop: Header=BB1_15 Depth=2
	lw x18, 92 ( sp )               //  4-byte Folded Reload
	blt x20, fp, .LBB1_441
.LBB1_439:                              //  %if.end1416
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x11, x20
	add fp, x11, x10
	blt x0, fp, .LBB1_442
	jal x0, .LBB1_348
.LBB1_438:                              //    in Loop: Header=BB1_15 Depth=2
	lw x18, 92 ( sp )               //  4-byte Folded Reload
	add x21, x21, 8
	add x12, x0, 16
	bge x20, fp, .LBB1_439
.LBB1_441:                              //    in Loop: Header=BB1_15 Depth=2
	sub x11, x0, fp
	add fp, x11, x10
	bge x0, fp, .LBB1_348
.LBB1_442:                              //  %while.cond1428.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	beq x0, x10, .LBB1_446
	jal x0, .LBB1_324
.LBB1_444:                              //    in Loop: Header=BB1_446 Depth=3
	add x21, x21, 8
.LBB1_445:                              //  %if.end1447
                                        //    in Loop: Header=BB1_446 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x21 )
	bge x12, fp, .LBB1_324
.LBB1_446:                              //  %while.body1431
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x16 )
	sw x12, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB1_444
.LBB1_447:                              //  %if.then1441
                                        //    in Loop: Header=BB1_446 Depth=3
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x12, x0, 16
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_445
	jal x0, .LBB1_275
.LBB1_324:                              //  %while.end1034
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 8 ( x16 )
	sw fp, 4 ( x21 )
	add x10, fp, x10
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	beq x0, x10, .LBB1_517
.LBB1_325:                              //    in Loop: Header=BB1_15 Depth=2
	add x21, x21, 8
	and x10, x18, 4
	bltu x0, x10, .LBB1_349
	jal x0, .LBB1_358
.LBB1_448:                              //  %while.end1121
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 8 ( x16 )
	sw x9, 4 ( x11 )
	add x10, x9, x10
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 276 ( sp )
	bltu x0, x10, .LBB1_515
.LBB1_449:                              //  %if.then1131
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	lw x9, 84 ( sp )                //  4-byte Folded Reload
	add x16, sp, 272
	add x11, sp, 208
	beq x0, x10, .LBB1_516
	jal x0, .LBB1_275
.LBB1_450:                              //  %if.then74.if.end83_crit_edge.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 292 ( sp )
.LBB1_451:                              //  %if.end83.i
                                        //    in Loop: Header=BB1_15 Depth=2
	add x19, x10, x19
	lw x18, 92 ( sp )               //  4-byte Folded Reload
	lw x10, 52 ( sp )               //  4-byte Folded Reload
.LBB1_452:                              //  %if.end85.i
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x12, x0
	mv x11, x20
	mv x13, x12
	jal __nedf2
	bltu x0, x10, .LBB1_456
.LBB1_453:                              //  %if.end89.thread.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x13, 76 ( sp )               //  4-byte Folded Reload
	sw x19, 312 ( sp )
.LBB1_454:                              //  %if.end89.thread.i
                                        //    in Loop: Header=BB1_15 Depth=2
	add x16, sp, 272
.LBB1_455:                              //  %if.end89.thread.i
                                        //    in Loop: Header=BB1_15 Depth=2
	add x12, x0, 16
	or x17, x18, 256
	sub x10, x19, fp
	sw x10, 76 ( sp )               //  4-byte Folded Spill
	beq x0, x13, .LBB1_465
.LBB1_459:                              //  %if.else353
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x19, 80 ( sp )               //  4-byte Folded Reload
	xor x10, x9, 70
	bltu x0, x10, .LBB1_472
.LBB1_460:                              //  %if.else374.thread
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15, 292 ( sp )
	and x10, x18, 1
	or x10, x27, x10
	sw x15, 56 ( sp )               //  4-byte Folded Spill
	blt x0, x15, .LBB1_478
.LBB1_461:                              //  %if.else389
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x11, x0
	sw x11, 48 ( sp )               //  4-byte Folded Spill
	beq x10, x11, .LBB1_510
.LBB1_462:                              //  %if.else389
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	add x10, x10, x27
	add x20, x10, 1
	jal x0, .LBB1_511
.LBB1_456:                              //  %if.end89.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 312 ( sp )
	lw x13, 76 ( sp )               //  4-byte Folded Reload
	add x16, sp, 272
	add x12, x0, 16
	bgeu x10, x19, .LBB1_458
.LBB1_457:                              //  %while.body93.i
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x11, x10, 1
	sw x11, 312 ( sp )
	add x11, x0, 48
	sb x11, 0 ( x10 )
	lw x10, 312 ( sp )
	bltu x10, x19, .LBB1_457
.LBB1_458:                              //  %if.end96.loopexit.i
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x19, x10
	or x17, x18, 256
	sub x10, x19, fp
	sw x10, 76 ( sp )               //  4-byte Folded Spill
	beq x0, x13, .LBB1_465
	jal x0, .LBB1_459
.LBB1_510:                              //    in Loop: Header=BB1_15 Depth=2
	seqz x20, x0
.LBB1_511:                              //  %if.else389
                                        //    in Loop: Header=BB1_15 Depth=2
	add x9, x0, 102
	mv x26, x0
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	mv x27, x0
	bge x10, x0, .LBB1_514
	jal x0, .LBB1_471
.LBB1_463:                              //    in Loop: Header=BB1_15 Depth=2
	lw x18, 92 ( sp )               //  4-byte Folded Reload
	lw x13, 76 ( sp )               //  4-byte Folded Reload
	add x16, sp, 272
	add x12, x0, 16
	mv x27, x11
.LBB1_464:                              //  %cvt.exit
                                        //    in Loop: Header=BB1_15 Depth=2
	or x17, x18, 256
	sub x10, x19, fp
	sw x10, 76 ( sp )               //  4-byte Folded Spill
	bltu x0, x13, .LBB1_459
.LBB1_465:                              //  %if.then343
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11, 292 ( sp )
	lw x19, 80 ( sp )               //  4-byte Folded Reload
	add x9, x9, -2
	slti x10, x11, -3
	bltu x0, x10, .LBB1_472
.LBB1_466:                              //  %if.then343
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x15, x11
	blt x27, x11, .LBB1_472
.LBB1_467:                              //    in Loop: Header=BB1_15 Depth=2
	add x9, x0, 103
	jal x0, .LBB1_468
.LBB1_472:                              //  %if.end358
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10, x0, 101
	blt x10, x9, .LBB1_476
.LBB1_473:                              //  %if.then361
                                        //    in Loop: Header=BB1_15 Depth=2
	or x11, x9, 32
	add x10, x0, 97
	beq x11, x10, .LBB1_480
.LBB1_474:                              //  %if.then361
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x12, x9
	lw x10, 292 ( sp )
	seqz x15, x0
	add x13, x10, -1
	blt x10, x15, .LBB1_475
.LBB1_481:                              //  %if.then361
                                        //    in Loop: Header=BB1_15 Depth=2
	add x14, x0, 43
	mv x10, x13
	jal x0, .LBB1_482
.LBB1_476:                              //  %if.else374
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15, 292 ( sp )
	xor x10, x9, 102
	bltu x0, x10, .LBB1_468
.LBB1_477:                              //  %if.then377
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x18, 1
	or x10, x27, x10
	sw x15, 56 ( sp )               //  4-byte Folded Spill
	bge x0, x15, .LBB1_461
.LBB1_478:                              //  %if.then380
                                        //    in Loop: Header=BB1_15 Depth=2
	add x9, x0, 102
	beq x0, x10, .LBB1_498
.LBB1_479:                              //  %if.then385
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	lw x15, 56 ( sp )               //  4-byte Folded Reload
	add x10, x10, x27
	add x20, x15, x10
	mv x11, x0
	and x10, x18, 1024
	bltu x0, x10, .LBB1_500
	jal x0, .LBB1_509
.LBB1_468:                              //  %if.else401
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	bge x15, x11, .LBB1_508
.LBB1_469:                              //  %if.else410
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	add x20, x10, x11
	blt x0, x15, .LBB1_499
.LBB1_470:                              //  %if.then414
                                        //    in Loop: Header=BB1_15 Depth=2
	sub x10, x20, x15
	mv x26, x0
	sw x15, 56 ( sp )               //  4-byte Folded Spill
	add x20, x10, 1
	sw x26, 48 ( sp )               //  4-byte Folded Spill
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	mv x27, x0
	bge x10, x0, .LBB1_514
	jal x0, .LBB1_471
.LBB1_508:                              //  %if.then404
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11, 28 ( sp )               //  4-byte Folded Reload
	and x10, x18, 1
	sub x10, x0, x10
	and x10, x11, x10
	add x20, x10, x15
	mv x11, x0
	and x10, x18, 1024
	bltu x0, x10, .LBB1_500
	jal x0, .LBB1_509
.LBB1_480:                              //    in Loop: Header=BB1_15 Depth=2
	add x12, x9, 15
	lw x10, 292 ( sp )
	seqz x15, x0
	add x13, x10, -1
	bge x10, x15, .LBB1_481
.LBB1_475:                              //    in Loop: Header=BB1_15 Depth=2
	add x14, x0, 45
	sub x10, x15, x10
.LBB1_482:                              //  %if.then361
                                        //    in Loop: Header=BB1_15 Depth=2
	sb x12, 285 ( sp )
	slti x12, x10, 10
	sw x13, 292 ( sp )
	sb x14, 286 ( sp )
	bltu x0, x12, .LBB1_490
.LBB1_483:                              //  %do.body.i.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x27, x17
	add x24, sp, 304
	add x20, x0, 6
	add x12, x0, -1
.LBB1_484:                              //  %do.body.i
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	mv x11, x23
	mv x18, x10
	mv x19, x12
	jal __divsi3
	hackaton_custom_instr_c x11, x23, x10
	sub x11, x18, x11
	add x12, x20, x24
	add x11, x11, 48
	sb x11, 0 ( x12 )
	add x12, x19, -1
	add x20, x20, -1
	add x13, x0, 99
	blt x13, x18, .LBB1_484
.LBB1_485:                              //  %do.end.i
                                        //    in Loop: Header=BB1_15 Depth=2
	add x12, x10, 48
	lw x10, 8 ( sp )                //  4-byte Folded Reload
	lw x18, 92 ( sp )               //  4-byte Folded Reload
	add x13, x20, x24
	sb x12, 0 ( x13 )
	add x13, x20, -7
	add x16, sp, 272
	mv x17, x27
	bge x13, x0, .LBB1_493
.LBB1_486:                              //  %for.inc.i.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 4 ( sp )                //  4-byte Folded Reload
	sb x12, 287 ( sp )
	xor x12, x20, 6
	beq x0, x12, .LBB1_493
.LBB1_487:                              //  %for.inc.for.inc_crit_edge.i.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	sb x11, 288 ( sp )
	xor x11, x20, 5
	add x10, sp, 289
	beq x0, x11, .LBB1_493
.LBB1_488:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10, sp, 289
.LBB1_489:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x11, sp, 312
	add x11, x19, x11
	lb x11, 0 ( x11 )
	add x19, x19, 1
	sb x11, 0 ( x10 )
	add x10, x10, 1
	xor x11, x19, -1
	bltu x0, x11, .LBB1_489
	jal x0, .LBB1_493
.LBB1_490:                              //  %if.else23.i
                                        //    in Loop: Header=BB1_15 Depth=2
	xor x12, x11, 97
	lw x11, 8 ( sp )                //  4-byte Folded Reload
	beq x0, x12, .LBB1_492
.LBB1_491:                              //  %if.then25.i
                                        //    in Loop: Header=BB1_15 Depth=2
	add x11, x0, 48
	sb x11, 287 ( sp )
	lw x11, 4 ( sp )                //  4-byte Folded Reload
.LBB1_492:                              //  %if.end27.i
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10, x10, 48
	sb x10, 0 ( x11 )
	add x10, x11, 1
.LBB1_493:                              //  %exponent.exit
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x13, 76 ( sp )               //  4-byte Folded Reload
	mv x26, x0
	add x12, x0, 2
	mv x11, x26
	blt x13, x12, .LBB1_495
.LBB1_494:                              //  %exponent.exit
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11, 28 ( sp )               //  4-byte Folded Reload
.LBB1_495:                              //  %exponent.exit
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x19, 80 ( sp )               //  4-byte Folded Reload
	and x12, x18, 1
	beq x12, x26, .LBB1_497
.LBB1_496:                              //  %exponent.exit
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11, 28 ( sp )               //  4-byte Folded Reload
.LBB1_497:                              //  %exponent.exit
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x12, 76 ( sp )               //  4-byte Folded Reload
	and x17, x17, -1025
	sw x26, 48 ( sp )               //  4-byte Folded Spill
	sw x26, 56 ( sp )               //  4-byte Folded Spill
	add x11, x12, x11
	add x12, sp, 285
	sub x10, x10, x12
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	add x20, x10, x11
	add x12, x0, 16
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	mv x27, x0
	bge x10, x0, .LBB1_514
	jal x0, .LBB1_471
.LBB1_498:                              //    in Loop: Header=BB1_15 Depth=2
	lw x15, 56 ( sp )               //  4-byte Folded Reload
	mv x20, x15
.LBB1_499:                              //  %if.end419
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x11, x0
	and x10, x18, 1024
	beq x0, x10, .LBB1_509
.LBB1_500:                              //  %if.end419
                                        //    in Loop: Header=BB1_15 Depth=2
	bge x0, x15, .LBB1_509
.LBB1_501:                              //  %while.cond426.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	mv x14, x0
	lb x10, 0 ( x10 )
	xor x11, x10, 127
	beq x0, x11, .LBB1_512
.LBB1_502:                              //  %while.cond426.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	bge x10, x15, .LBB1_512
.LBB1_503:                              //  %if.end435.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x11, x0
	mv x14, x11
	mv x26, x11
.LBB1_504:                              //  %if.end435
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x13, 72 ( sp )               //  4-byte Folded Reload
	lbu x12, 1 ( x13 )
	beq x12, x11, .LBB1_506
.LBB1_505:                              //  %if.end435
                                        //    in Loop: Header=BB1_504 Depth=3
	add x13, x13, 1
.LBB1_506:                              //  %if.end435
                                        //    in Loop: Header=BB1_504 Depth=3
	sub x15, x15, x10
	snez x10, x12
	add x26, x10, x26
	seqz x10, x12
	add x14, x10, x14
	lb x10, 0 ( x13 )
	sw x13, 72 ( sp )               //  4-byte Folded Spill
	xor x12, x10, 127
	beq x0, x12, .LBB1_513
.LBB1_507:                              //  %if.end435
                                        //    in Loop: Header=BB1_504 Depth=3
	blt x10, x15, .LBB1_504
	jal x0, .LBB1_513
.LBB1_509:                              //    in Loop: Header=BB1_15 Depth=2
	sw x15, 56 ( sp )               //  4-byte Folded Spill
	sw x11, 48 ( sp )               //  4-byte Folded Spill
	mv x26, x11
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	mv x27, x0
	bge x10, x0, .LBB1_514
.LBB1_471:                              //  %if.then454
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10, x0, 45
	sb x10, 299 ( sp )
	mv x18, x17
	mv x10, x27
	blt x20, x27, .LBB1_542
.LBB1_543:                              //  %if.then454
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_242
.LBB1_542:                              //  %if.then454
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_243
.LBB1_512:                              //    in Loop: Header=BB1_15 Depth=2
	mv x26, x14
.LBB1_513:                              //  %while.end446
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11, 36 ( sp )               //  4-byte Folded Reload
	add x10, x14, x26
	sw x15, 56 ( sp )               //  4-byte Folded Spill
	sw x14, 48 ( sp )               //  4-byte Folded Spill
	hackaton_custom_instr_c x10, x11, x10
	add x20, x20, x10
	add x12, x0, 16
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	mv x27, x0
	blt x10, x0, .LBB1_471
.LBB1_514:                              //    in Loop: Header=BB1_15 Depth=2
	mv x18, x17
	mv x10, x27
	blt x20, x27, .LBB1_544
.LBB1_545:                              //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_242
.LBB1_544:                              //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_243
.LBB1_515:                              //    in Loop: Header=BB1_15 Depth=2
	lw x9, 84 ( sp )                //  4-byte Folded Reload
	add x11, x11, 8
.LBB1_516:                              //  %if.end1138
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 8 ( x16 )
	sw x21, 4 ( x11 )
	sw fp, 0 ( x11 )
	add x10, x21, x10
	sw x10, 8 ( x16 )
	lw x10, 276 ( sp )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 276 ( sp )
	bltu x0, x10, .LBB1_518
.LBB1_517:                              //  %if.then1044
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, x27
	mv x11, x19
	mv x12, x16
	jal __sprint_r
	add x16, sp, 272
	add x21, sp, 208
	beq x0, x10, .LBB1_348
	jal x0, .LBB1_275
.LBB1_518:                              //    in Loop: Header=BB1_15 Depth=2
	add x21, x11, 8
	and x10, x18, 4
	beq x0, x10, .LBB1_546
.LBB1_547:                              //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_349
.LBB1_546:                              //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_358
.LBB1_519:                              //  %if.then
	mv x10, x27
	jal __sinit
	lhu x10, 12 ( x19 )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB1_548
.LBB1_549:                              //  %if.then
	jal x0, .LBB1_3
.LBB1_548:                              //  %if.then
	jal x0, .LBB1_4
.LBB1_257:
	lw x19, 80 ( sp )               //  4-byte Folded Reload
.LBB1_252:
	lw x27, 88 ( sp )               //  4-byte Folded Reload
.LBB1_274:
	lw x24, 68 ( sp )               //  4-byte Folded Reload
.LBB1_275:                              //  %error
	lw x11, 60 ( sp )               //  4-byte Folded Reload
	beq x0, x11, .LBB1_277
.LBB1_276:                              //  %if.then1696
	mv x10, x27
	jal _free_r
.LBB1_277:                              //  %if.end1697
	lbu x10, 12 ( x19 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB1_524
.LBB1_523:                              //  %if.end1697
	add x24, x0, -1
.LBB1_524:                              //  %cleanup1719
	mv x10, x24
	lw fp, 316 ( sp )               //  4-byte Folded Reload
	lw x27, 320 ( sp )              //  4-byte Folded Reload
	lw x26, 324 ( sp )              //  4-byte Folded Reload
	lw x25, 328 ( sp )              //  4-byte Folded Reload
	lw x24, 332 ( sp )              //  4-byte Folded Reload
	lw x23, 336 ( sp )              //  4-byte Folded Reload
	lw x22, 340 ( sp )              //  4-byte Folded Reload
	lw x21, 344 ( sp )              //  4-byte Folded Reload
	lw x20, 348 ( sp )              //  4-byte Folded Reload
	lw x19, 352 ( sp )              //  4-byte Folded Reload
	lw x18, 356 ( sp )              //  4-byte Folded Reload
	lw x9, 360 ( sp )               //  4-byte Folded Reload
	lw ra, 364 ( sp )               //  4-byte Folded Reload
	add sp, sp, 368
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_520:                              //  %done
	lw x10, 280 ( sp )
	beq x0, x10, .LBB1_522
.LBB1_521:                              //  %land.lhs.true1687
	add x12, sp, 272
	mv x10, x27
	mv x11, x19
	jal __sprint_r
	bltu x0, x10, .LBB1_277
.LBB1_522:                              //  %if.end1691
	sw x0, 276 ( sp )
	lbu x10, 12 ( x19 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB1_524
	jal x0, .LBB1_523
.LBB1_525:                              //  %if.then309
	lw x19, 80 ( sp )               //  4-byte Folded Reload
	lh x10, 12 ( x19 )
	or x10, x10, 64
	sh x10, 12 ( x19 )
	lbu x10, 12 ( x19 )
	mv x11, x0
	and x10, x10, 64
	bne x10, x11, .LBB1_523
	jal x0, .LBB1_524
.Lfunc_end1:
	.size	_vfprintf_r, .Lfunc_end1-_vfprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_36
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_38
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_39
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_44
	.long	.LBB1_47
	.long	.LBB1_124
	.long	.LBB1_46
	.long	.LBB1_29
	.long	.LBB1_124
	.long	.LBB1_50
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
	.long	.LBB1_70
	.long	.LBB1_124
	.long	.LBB1_84
	.long	.LBB1_94
	.long	.LBB1_70
	.long	.LBB1_70
	.long	.LBB1_70
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_51
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_102
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_85
	.long	.LBB1_124
	.long	.LBB1_108
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_114
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_70
	.long	.LBB1_124
	.long	.LBB1_84
	.long	.LBB1_95
	.long	.LBB1_70
	.long	.LBB1_70
	.long	.LBB1_70
	.long	.LBB1_52
	.long	.LBB1_95
	.long	.LBB1_35
	.long	.LBB1_124
	.long	.LBB1_54
	.long	.LBB1_124
	.long	.LBB1_61
	.long	.LBB1_103
	.long	.LBB1_116
	.long	.LBB1_35
	.long	.LBB1_124
	.long	.LBB1_85
	.long	.LBB1_49
	.long	.LBB1_109
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_117
	.long	.LBB1_124
	.long	.LBB1_49
                                        //  -- End function
	.text
	.type	__sbprintf,@function    //  -- Begin function __sbprintf
__sbprintf:                             //  @__sbprintf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -1152
	.cfi_adjust_cfa_offset 1152
	sw fp, 1136 ( sp )              //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x11
	sw x9, 1144 ( sp )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lhu x10, 12 ( fp )
	lui x11, %hi( 65533 )
	add x11, x11, %lo( 65533 )
	sw ra, 1148 ( sp )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	and x10, x11, x10
	add x11, sp, 1032
	sh x10, 12 ( x11 )
	lw x10, 100 ( fp )
	sw x18, 1140 ( sp )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x0, 24 ( x11 )
	sw x10, 100 ( x11 )
	lh x10, 14 ( fp )
	sh x10, 14 ( x11 )
	lw x10, 28 ( fp )
	sw x10, 28 ( x11 )
	lw x10, 36 ( fp )
	sw x10, 36 ( x11 )
	add x10, sp, 8
	sw x10, 16 ( x11 )
	sw x10, 1032 ( sp )
	add x10, x0, 1024
	sw x10, 8 ( x11 )
	sw x10, 1052 ( sp )
	mv x10, x9
	jal _vfprintf_r
	mv x18, x10
	blt x18, x0, .LBB2_3
.LBB2_1:                                //  %land.lhs.true
	add x11, sp, 1032
	mv x10, x9
	jal _fflush_r
	mv x11, x0
	beq x10, x11, .LBB2_3
.LBB2_2:                                //  %land.lhs.true
	add x18, x0, -1
.LBB2_3:                                //  %if.end
	lbu x10, 1044 ( sp )
	and x10, x10, 64
	beq x0, x10, .LBB2_5
.LBB2_4:                                //  %if.then15
	lh x10, 12 ( fp )
	or x10, x10, 64
	sh x10, 12 ( fp )
.LBB2_5:                                //  %if.end19
	mv x10, x18
	lw fp, 1136 ( sp )              //  4-byte Folded Reload
	lw x18, 1140 ( sp )             //  4-byte Folded Reload
	lw x9, 1144 ( sp )              //  4-byte Folded Reload
	lw ra, 1148 ( sp )              //  4-byte Folded Reload
	add sp, sp, 1152
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	__sbprintf, .Lfunc_end2-__sbprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	_vfprintf_r.blanks,@object //  @_vfprintf_r.blanks
	.section	.rodata,"a",@progbits
_vfprintf_r.blanks:
	.zero	16,32
	.size	_vfprintf_r.blanks, 16

	.address_space	0
	.type	_vfprintf_r.zeroes,@object //  @_vfprintf_r.zeroes
_vfprintf_r.zeroes:
	.zero	16,48
	.size	_vfprintf_r.zeroes, 16

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"INF"
	.size	.str, 4

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"inf"
	.size	.str.1, 4

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"NAN"
	.size	.str.2, 4

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"nan"
	.size	.str.3, 4

	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	"0123456789abcdef"
	.size	.str.4, 17

	.address_space	0
	.type	.str.5,@object          //  @.str.5
.str.5:
	.asciz	"(null)"
	.size	.str.5, 7

	.address_space	0
	.type	.str.6,@object          //  @.str.6
.str.6:
	.asciz	"0123456789ABCDEF"
	.size	.str.6, 17

	.address_space	0
	.type	.str.7,@object          //  @.str.7
.str.7:
	.asciz	"bug in vfprintf: bad base"
	.size	.str.7, 26

	.address_space	0
	.type	.str.8,@object          //  @.str.8
.str.8:
	.asciz	"0"
	.size	.str.8, 2


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
