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
	add sp, sp, -384
	.cfi_adjust_cfa_offset 384
	sw x18, 372 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x13
	sw x24, 348 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 344 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw fp, 332 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw ra, 380 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 376 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 368 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 364 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 360 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 356 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 352 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x26, 340 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 336 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	mv fp, x12
	mv x24, x11
	mv x25, x10
	sw x18, 316 ( sp )
	jal _localeconv_r
	lw x9, 0 ( x10 )
	mv x10, x9
	jal strlen
	mv x19, x10
	beq x0, x25, .LBB1_2
.LBB1_1:                                //  %land.lhs.true
	lw x10, 56 ( x25 )
	bltu x0, x10, .LBB1_2
.LBB1_535:                              //  %land.lhs.true
	jal x0, .LBB1_530
.LBB1_2:                                //  %if.end
	lhu x10, 12 ( x24 )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB1_4
.LBB1_3:                                //  %if.then14
	lw x12, 100 ( x24 )
	lui x13, %hi( -8193 )
	add x13, x13, %lo( -8193 )
	or x10, x11, x10
	and x12, x13, x12
	sw x12, 100 ( x24 )
	sh x10, 12 ( x24 )
.LBB1_4:                                //  %do.end22
	and x11, x10, 8
	beq x0, x11, .LBB1_10
.LBB1_5:                                //  %lor.lhs.false
	lw x11, 16 ( x24 )
	beq x0, x11, .LBB1_10
.LBB1_6:                                //  %if.end45
	and x10, x10, 26
	xor x10, x10, 10
	bltu x0, x10, .LBB1_12
.LBB1_7:                                //  %land.lhs.true51
	lh x10, 14 ( x24 )
	blt x10, x0, .LBB1_12
.LBB1_8:                                //  %if.then55
	mv x10, x25
	mv x11, x24
	mv x12, fp
	mv x13, x18
	jal __sbprintf
	mv x20, x10
	jal x0, .LBB1_9
.LBB1_10:                               //  %land.lhs.true29
	mv x10, x25
	mv x11, x24
	jal __swsetup_r
	beq x0, x10, .LBB1_11
.LBB1_536:                              //  %land.lhs.true29
	jal x0, .LBB1_263
.LBB1_11:                               //  %land.lhs.true29.if.end45_crit_edge
	lhu x10, 12 ( x24 )
	and x10, x10, 26
	xor x10, x10, 10
	beq x0, x10, .LBB1_7
.LBB1_12:                               //  %if.end69
	add x10, sp, 224
	sw x10, 288 ( sp )
	add x10, sp, 124
	add x10, x10, 100
	sw x10, 52 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _vfprintf_r.blanks )
	add x10, x10, %lo( _vfprintf_r.blanks )
	sw x10, 108 ( sp )              //  4-byte Folded Spill
	lui x10, %hi( _vfprintf_r.zeroes )
	add x10, x10, %lo( _vfprintf_r.zeroes )
	sw x10, 116 ( sp )              //  4-byte Folded Spill
	lui x10, %hi( .str.8 )
	add x10, x10, %lo( .str.8 )
	sw x10, 28 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( JTI1_0 )
	add x10, x10, %lo( JTI1_0 )
	add x11, sp, 301
	mv x27, x0
	sw x10, 84 ( sp )               //  4-byte Folded Spill
	add x10, x11, 2
	sw x19, 40 ( sp )               //  4-byte Folded Spill
	add x19, sp, 288
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	add x10, x11, 3
	add x23, x0, 10
	mv x20, x27
	sw x9, 32 ( sp )                //  4-byte Folded Spill
	sw x0, 8 ( x19 )
	sw x27, 60 ( sp )               //  4-byte Folded Spill
	sw x0, 292 ( sp )
	sw x27, 104 ( sp )              //  4-byte Folded Spill
	sw x27, 64 ( sp )               //  4-byte Folded Spill
	sw x27, 36 ( sp )               //  4-byte Folded Spill
	sw x27, 68 ( sp )               //  4-byte Folded Spill
	sw x27, 96 ( sp )               //  4-byte Folded Spill
	sw x27, 48 ( sp )               //  4-byte Folded Spill
	sw x27, 44 ( sp )               //  4-byte Folded Spill
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	sw x25, 92 ( sp )               //  4-byte Folded Spill
.LBB1_13:                               //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_16 Depth 2
                                        //        Child Loop BB1_23 Depth 3
                                        //          Child Loop BB1_24 Depth 4
                                        //            Child Loop BB1_25 Depth 5
                                        //              Child Loop BB1_27 Depth 6
                                        //            Child Loop BB1_33 Depth 5
                                        //        Child Loop BB1_216 Depth 3
                                        //        Child Loop BB1_225 Depth 3
                                        //        Child Loop BB1_233 Depth 3
                                        //        Child Loop BB1_221 Depth 3
                                        //        Child Loop BB1_466 Depth 3
                                        //        Child Loop BB1_183 Depth 3
                                        //        Child Loop BB1_407 Depth 3
                                        //        Child Loop BB1_190 Depth 3
                                        //        Child Loop BB1_513 Depth 3
                                        //        Child Loop BB1_493 Depth 3
                                        //        Child Loop BB1_498 Depth 3
                                        //        Child Loop BB1_266 Depth 3
                                        //        Child Loop BB1_282 Depth 3
                                        //        Child Loop BB1_294 Depth 3
                                        //        Child Loop BB1_348 Depth 3
                                        //        Child Loop BB1_382 Depth 3
                                        //        Child Loop BB1_409 Depth 3
                                        //          Child Loop BB1_428 Depth 4
                                        //        Child Loop BB1_456 Depth 3
                                        //        Child Loop BB1_439 Depth 3
                                        //        Child Loop BB1_336 Depth 3
                                        //        Child Loop BB1_362 Depth 3
                                        //      Child Loop BB1_14 Depth 2
	add x21, sp, 224
	mv x9, fp
	lbu x10, 0 ( x9 )
	beq x0, x10, .LBB1_16
.LBB1_14:                               //  %while.cond
                                        //    Parent Loop BB1_13 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	xor x11, x10, 37
	beq x0, x11, .LBB1_16
.LBB1_15:                               //  %while.body
                                        //    in Loop: Header=BB1_14 Depth=2
	add x9, x9, 1
	lbu x10, 0 ( x9 )
	bltu x0, x10, .LBB1_14
.LBB1_16:                               //  %while.end
                                        //    Parent Loop BB1_13 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_23 Depth 3
                                        //          Child Loop BB1_24 Depth 4
                                        //            Child Loop BB1_25 Depth 5
                                        //              Child Loop BB1_27 Depth 6
                                        //            Child Loop BB1_33 Depth 5
                                        //        Child Loop BB1_216 Depth 3
                                        //        Child Loop BB1_225 Depth 3
                                        //        Child Loop BB1_233 Depth 3
                                        //        Child Loop BB1_221 Depth 3
                                        //        Child Loop BB1_466 Depth 3
                                        //        Child Loop BB1_183 Depth 3
                                        //        Child Loop BB1_407 Depth 3
                                        //        Child Loop BB1_190 Depth 3
                                        //        Child Loop BB1_513 Depth 3
                                        //        Child Loop BB1_493 Depth 3
                                        //        Child Loop BB1_498 Depth 3
                                        //        Child Loop BB1_266 Depth 3
                                        //        Child Loop BB1_282 Depth 3
                                        //        Child Loop BB1_294 Depth 3
                                        //        Child Loop BB1_348 Depth 3
                                        //        Child Loop BB1_382 Depth 3
                                        //        Child Loop BB1_409 Depth 3
                                        //          Child Loop BB1_428 Depth 4
                                        //        Child Loop BB1_456 Depth 3
                                        //        Child Loop BB1_439 Depth 3
                                        //        Child Loop BB1_336 Depth 3
                                        //        Child Loop BB1_362 Depth 3
	sub x18, x9, fp
	beq x0, x18, .LBB1_21
.LBB1_17:                               //  %if.then78
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 8 ( x19 )
	sw x18, 4 ( x21 )
	sw fp, 0 ( x21 )
	add x10, x18, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_19
.LBB1_18:                               //  %if.then83
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x21, sp, 224
	beq x0, x10, .LBB1_20
	jal x0, .LBB1_262
.LBB1_19:                               //    in Loop: Header=BB1_16 Depth=2
	add x21, x21, 8
.LBB1_20:                               //  %if.end89
                                        //    in Loop: Header=BB1_16 Depth=2
	lbu x10, 0 ( x9 )
	add x20, x20, x18
.LBB1_21:                               //  %if.end91
                                        //    in Loop: Header=BB1_16 Depth=2
	bltu x0, x10, .LBB1_22
.LBB1_537:                              //  %if.end91
	jal x0, .LBB1_531
.LBB1_22:                               //  %if.end96
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, x0, -1
	add x11, x9, 1
	mv x22, x27
	sw x27, 112 ( sp )              //  4-byte Folded Spill
	sb x0, 315 ( sp )
	sw x10, 100 ( sp )              //  4-byte Folded Spill
	sw x20, 88 ( sp )               //  4-byte Folded Spill
.LBB1_23:                               //  %rflag
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_24 Depth 4
                                        //            Child Loop BB1_25 Depth 5
                                        //              Child Loop BB1_27 Depth 6
                                        //            Child Loop BB1_33 Depth 5
	lb x18, 0 ( x11 )
	add x26, x11, 1
.LBB1_24:                               //  %reswitch.outer
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //        Parent Loop BB1_23 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB1_25 Depth 5
                                        //              Child Loop BB1_27 Depth 6
                                        //            Child Loop BB1_33 Depth 5
	lw x9, 112 ( sp )               //  4-byte Folded Reload
.LBB1_25:                               //  %reswitch
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //        Parent Loop BB1_23 Depth=3
                                        //          Parent Loop BB1_24 Depth=4
                                        //  =>        This Loop Header: Depth=5
                                        //              Child Loop BB1_27 Depth 6
	add x10, x18, -49
	sltiu x10, x10, 9
	beq x0, x10, .LBB1_28
.LBB1_26:                               //  %do.body159.preheader
                                        //    in Loop: Header=BB1_25 Depth=5
	mv x22, x27
.LBB1_27:                               //  %do.body159
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //        Parent Loop BB1_23 Depth=3
                                        //          Parent Loop BB1_24 Depth=4
                                        //            Parent Loop BB1_25 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	mv x10, x22
	mv x11, x23
	jal __mulsi3
	add x10, x10, x18
	lb x18, 0 ( x26 )
	add x22, x10, -48
	add x26, x26, 1
	add x10, x18, -48
	sltiu x10, x10, 10
	bltu x0, x10, .LBB1_27
	jal x0, .LBB1_25
.LBB1_28:                               //  %reswitch
                                        //    in Loop: Header=BB1_24 Depth=4
	add x10, x18, -32
	add x11, x0, 90
	bltu x11, x10, .LBB1_130
.LBB1_29:                               //  %reswitch
                                        //    in Loop: Header=BB1_24 Depth=4
	lw x11, 84 ( sp )               //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB1_30:                               //  %sw.bb129
                                        //    in Loop: Header=BB1_24 Depth=4
	lb x18, 0 ( x26 )
	add x11, x26, 1
	xor x10, x18, 42
	beq x0, x10, .LBB1_63
.LBB1_31:                               //  %while.cond141.preheader
                                        //    in Loop: Header=BB1_24 Depth=4
	add x9, x18, -48
	add x10, x0, 9
	bltu x10, x9, .LBB1_36
.LBB1_32:                               //  %while.body145.preheader
                                        //    in Loop: Header=BB1_24 Depth=4
	mv x10, x0
	mv x26, x11
.LBB1_33:                               //  %while.body145
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //        Parent Loop BB1_23 Depth=3
                                        //          Parent Loop BB1_24 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	add x11, x0, 10
	jal __mulsi3
	lb x18, 0 ( x26 )
	add x10, x10, x9
	add x26, x26, 1
	add x9, x18, -48
	sltiu x11, x9, 10
	bltu x0, x11, .LBB1_33
.LBB1_34:                               //  %while.end150
                                        //    in Loop: Header=BB1_24 Depth=4
	add x11, x0, -1
	sw x11, 100 ( sp )              //  4-byte Folded Spill
	blt x10, x0, .LBB1_24
.LBB1_35:                               //  %while.end150.thread
                                        //    in Loop: Header=BB1_24 Depth=4
	sw x10, 100 ( sp )              //  4-byte Folded Spill
	jal x0, .LBB1_24
.LBB1_36:                               //    in Loop: Header=BB1_24 Depth=4
	mv x10, x0
	mv x26, x11
	sw x10, 100 ( sp )              //  4-byte Folded Spill
	jal x0, .LBB1_24
.LBB1_37:                               //  %sw.bb193
                                        //    in Loop: Header=BB1_23 Depth=3
	or x9, x9, 32
	jal x0, .LBB1_54
.LBB1_38:                               //  %sw.bb115
                                        //    in Loop: Header=BB1_23 Depth=3
	lbu x10, 315 ( sp )
	mv x11, x26
	bltu x0, x10, .LBB1_23
.LBB1_39:                               //  %if.then117
                                        //    in Loop: Header=BB1_23 Depth=3
	add x10, x0, 32
	jal x0, .LBB1_49
.LBB1_40:                               //  %sw.bb119
                                        //    in Loop: Header=BB1_23 Depth=3
	or x9, x9, 1
	jal x0, .LBB1_54
.LBB1_41:                               //  %sw.bb
                                        //    in Loop: Header=BB1_23 Depth=3
	mv x10, x25
	jal _localeconv_r
	lw x10, 4 ( x10 )
	sw x10, 44 ( sp )               //  4-byte Folded Spill
	jal strlen
	mv x9, x10
	mv x10, x25
	jal _localeconv_r
	lw x10, 8 ( x10 )
	mv x11, x26
	sw x9, 48 ( sp )                //  4-byte Folded Spill
	sw x10, 96 ( sp )               //  4-byte Folded Spill
	beq x0, x9, .LBB1_23
.LBB1_42:                               //  %sw.bb
                                        //    in Loop: Header=BB1_23 Depth=3
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	mv x11, x26
	beq x0, x10, .LBB1_23
.LBB1_43:                               //  %land.lhs.true109
                                        //    in Loop: Header=BB1_23 Depth=3
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	mv x11, x0
	lbu x10, 0 ( x10 )
	beq x10, x11, .LBB1_45
.LBB1_44:                               //  %land.lhs.true109
                                        //    in Loop: Header=BB1_23 Depth=3
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	or x10, x10, 1024
	sw x10, 112 ( sp )              //  4-byte Folded Spill
.LBB1_45:                               //  %land.lhs.true109
                                        //    in Loop: Header=BB1_23 Depth=3
	mv x11, x26
	jal x0, .LBB1_23
.LBB1_46:                               //  %sw.bb121
                                        //    in Loop: Header=BB1_23 Depth=3
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x22, 0 ( x10 )
	mv x11, x26
	bge x22, x0, .LBB1_23
.LBB1_47:                               //  %if.end125
                                        //    in Loop: Header=BB1_23 Depth=3
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	sub x22, x0, x22
	mv x11, x26
	or x10, x10, 4
	sw x10, 112 ( sp )              //  4-byte Folded Spill
	jal x0, .LBB1_23
.LBB1_48:                               //  %sw.bb128
                                        //    in Loop: Header=BB1_23 Depth=3
	add x10, x0, 43
.LBB1_49:                               //  %rflag
                                        //    in Loop: Header=BB1_23 Depth=3
	sb x10, 315 ( sp )
.LBB1_50:                               //  %rflag.backedge.loopexit
                                        //    in Loop: Header=BB1_23 Depth=3
	mv x11, x26
	jal x0, .LBB1_23
.LBB1_51:                               //  %sw.bb126.loopexit
                                        //    in Loop: Header=BB1_23 Depth=3
	or x9, x9, 4
	jal x0, .LBB1_54
.LBB1_52:                               //  %sw.bb156
                                        //    in Loop: Header=BB1_23 Depth=3
	or x9, x9, 128
	jal x0, .LBB1_54
.LBB1_53:                               //  %sw.bb170
                                        //    in Loop: Header=BB1_23 Depth=3
	or x9, x9, 8
.LBB1_54:                               //  %rflag
                                        //    in Loop: Header=BB1_23 Depth=3
	sw x9, 112 ( sp )               //  4-byte Folded Spill
	mv x11, x26
	jal x0, .LBB1_23
.LBB1_55:                               //  %sw.bb172
                                        //    in Loop: Header=BB1_23 Depth=3
	lbu x10, 0 ( x26 )
	add x11, x0, 104
	beq x10, x11, .LBB1_60
.LBB1_56:                               //  %sw.bb172
                                        //    in Loop: Header=BB1_23 Depth=3
	add x10, x0, 64
	jal x0, .LBB1_59
.LBB1_57:                               //  %sw.bb181
                                        //    in Loop: Header=BB1_23 Depth=3
	lbu x10, 0 ( x26 )
	add x11, x0, 108
	beq x10, x11, .LBB1_61
.LBB1_58:                               //  %sw.bb181
                                        //    in Loop: Header=BB1_23 Depth=3
	add x10, x0, 16
.LBB1_59:                               //  %sw.bb172
                                        //    in Loop: Header=BB1_23 Depth=3
	mv x11, x26
	jal x0, .LBB1_62
.LBB1_60:                               //    in Loop: Header=BB1_23 Depth=3
	add x11, x26, 1
	add x10, x0, 512
	jal x0, .LBB1_62
.LBB1_61:                               //    in Loop: Header=BB1_23 Depth=3
	add x11, x26, 1
	add x10, x0, 32
.LBB1_62:                               //  %sw.bb172
                                        //    in Loop: Header=BB1_23 Depth=3
	or x9, x9, x10
	sw x9, 112 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB1_23
.LBB1_63:                               //  %if.then134
                                        //    in Loop: Header=BB1_23 Depth=3
	lw x10, 316 ( sp )
	add x12, x10, 4
	sw x12, 316 ( sp )
	lw x12, 0 ( x10 )
	add x10, x0, -1
	blt x10, x12, .LBB1_65
.LBB1_64:                               //  %if.then134
                                        //    in Loop: Header=BB1_23 Depth=3
	mv x12, x10
.LBB1_65:                               //  %if.then134
                                        //    in Loop: Header=BB1_23 Depth=3
	sw x12, 100 ( sp )              //  4-byte Folded Spill
	jal x0, .LBB1_23
.LBB1_66:                               //  %sw.bb456
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x9, 32
	bltu x0, x10, .LBB1_71
.LBB1_67:                               //  %if.else462
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x9, 16
	bltu x0, x10, .LBB1_70
.LBB1_68:                               //  %if.else467
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x9, 64
	bltu x0, x10, .LBB1_73
.LBB1_69:                               //  %if.else473
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x9, 512
	bltu x0, x10, .LBB1_74
.LBB1_70:                               //  %if.then465
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x10, 0 ( x10 )
	jal x0, .LBB1_72
.LBB1_71:                               //  %if.then459
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x10, 0 ( x10 )
	sra x11, x20, 31&31
	sw x11, 4 ( x10 )
.LBB1_72:                               //  %for.cond
                                        //    in Loop: Header=BB1_16 Depth=2
	sw x20, 0 ( x10 )
	mv fp, x26
	mv x9, fp
	lbu x10, 0 ( x9 )
	bltu x0, x10, .LBB1_14
	jal x0, .LBB1_16
.LBB1_73:                               //  %if.then470
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	mv fp, x26
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x10, 0 ( x10 )
	sh x20, 0 ( x10 )
	mv x9, fp
	lbu x10, 0 ( x9 )
	bltu x0, x10, .LBB1_14
	jal x0, .LBB1_16
.LBB1_74:                               //  %if.then476
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	mv fp, x26
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x10, 0 ( x10 )
	sb x20, 0 ( x10 )
	mv x9, fp
	lbu x10, 0 ( x9 )
	bltu x0, x10, .LBB1_14
	jal x0, .LBB1_16
.LBB1_75:                               //  %sw.bb243
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x9, 8
	bltu x0, x10, .LBB1_77
.LBB1_76:                               //  %if.else250
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	add x11, x10, 8
	lw x9, 0 ( x10 )
	sw x11, 316 ( sp )
	lw x27, 4 ( x10 )
	jal x0, .LBB1_78
.LBB1_77:                               //  %if.then246
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x13, 316 ( sp )
	add x10, x13, 4
	sw x10, 316 ( sp )
	add x11, x13, 8
	lw x10, 0 ( x13 )
	sw x11, 316 ( sp )
	add x12, x13, 12
	lw x11, 4 ( x13 )
	sw x12, 316 ( sp )
	add x14, x13, 16
	lw x12, 8 ( x13 )
	sw x14, 316 ( sp )
	lw x13, 12 ( x13 )
	jal __trunctfdf2
	mv x9, x10
	mv x27, x11
.LBB1_78:                               //  %if.end253
                                        //    in Loop: Header=BB1_16 Depth=2
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	mv x20, x0
	and x11, x10, x27
	lui x13, (2146435072>>12)&1048575
	mv x10, x9
	mv x12, x20
	jal __nedf2
	sw x27, 60 ( sp )               //  4-byte Folded Spill
	sw x9, 68 ( sp )                //  4-byte Folded Spill
	bltu x0, x10, .LBB1_83
.LBB1_79:                               //  %if.then256
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x19, x0
	mv x13, x19
	mv x10, x9
	mv x11, x27
	mv x12, x19
	jal __ltdf2
	bge x10, x0, .LBB1_81
.LBB1_80:                               //  %if.then260
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, x0, 45
	sb x10, 315 ( sp )
.LBB1_81:                               //  %if.end261
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, x0, 72
	blt x18, x10, .LBB1_87
.LBB1_82:                               //  %if.end261
                                        //    in Loop: Header=BB1_16 Depth=2
	lui x10, %hi( .str.1 )
	add fp, x10, %lo( .str.1 )
	jal x0, .LBB1_88
.LBB1_83:                               //  %if.end268
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x9
	mv x13, x27
	mv x11, x27
	mv x12, x9
	jal __unorddf2
	bltu x0, x10, .LBB1_96
.LBB1_84:                               //  %if.end289
                                        //    in Loop: Header=BB1_16 Depth=2
	or x9, x18, 32
	xor x19, x9, 97
	bltu x0, x19, .LBB1_132
.LBB1_85:                               //  %if.then295
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, x0, 97
	beq x18, x10, .LBB1_153
.LBB1_86:                               //  %if.then295
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, x0, 88
	jal x0, .LBB1_154
.LBB1_87:                               //    in Loop: Header=BB1_16 Depth=2
	lui x10, %hi( .str )
	add fp, x10, %lo( .str )
.LBB1_88:                               //  %if.end261
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x9, 112 ( sp )               //  4-byte Folded Reload
	mv x11, x19
	add x20, x0, 3
	and x9, x9, -129
.LBB1_89:                               //  %sw.epilog748
                                        //    in Loop: Header=BB1_16 Depth=2
	sw x19, 80 ( sp )               //  4-byte Folded Spill
	sw x19, 72 ( sp )               //  4-byte Folded Spill
	sw x19, 76 ( sp )               //  4-byte Folded Spill
	mv x12, x11
	mv x27, x11
	bge x20, x11, .LBB1_248
	jal x0, .LBB1_249
.LBB1_90:                               //  %sw.bb197
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	mv x19, x0
	seqz x20, x0
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x10, 0 ( x10 )
	sw x19, 72 ( sp )               //  4-byte Folded Spill
	mv x11, x19
	sb x0, 315 ( sp )
	sb x10, 124 ( sp )
	sw x19, 80 ( sp )               //  4-byte Folded Spill
	sw x19, 76 ( sp )               //  4-byte Folded Spill
	add fp, sp, 124
	mv x12, x11
	mv x27, x11
	bge x20, x11, .LBB1_248
	jal x0, .LBB1_249
.LBB1_91:                               //  %sw.bb529
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw fp, 0 ( x10 )
	sb x0, 315 ( sp )
	beq x0, fp, .LBB1_135
.LBB1_92:                               //  %if.else540
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x20, 100 ( sp )              //  4-byte Folded Reload
	blt x20, x0, .LBB1_160
.LBB1_93:                               //  %if.then543
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x19, x0
	mv x10, fp
	mv x11, x19
	mv x12, x20
	jal memchr
	beq x10, x19, .LBB1_95
.LBB1_94:                               //  %if.then543
                                        //    in Loop: Header=BB1_16 Depth=2
	sub x20, x10, fp
.LBB1_95:                               //  %if.then543
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x11, x19
	jal x0, .LBB1_89
.LBB1_96:                               //  %cond.true276
                                        //    in Loop: Header=BB1_16 Depth=2
	bge x27, x0, .LBB1_98
.LBB1_97:                               //  %if.then281
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, x0, 45
	sb x10, 315 ( sp )
.LBB1_98:                               //  %if.end282
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x9, 112 ( sp )               //  4-byte Folded Reload
	add x10, x0, 72
	blt x18, x10, .LBB1_148
.LBB1_99:                               //  %if.end282
                                        //    in Loop: Header=BB1_16 Depth=2
	lui x10, %hi( .str.3 )
	add fp, x10, %lo( .str.3 )
	jal x0, .LBB1_149
.LBB1_100:                              //  %sw.bb201
                                        //    in Loop: Header=BB1_16 Depth=2
	or x9, x9, 16
.LBB1_101:                              //  %sw.bb203
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x9, 32
	bltu x0, x10, .LBB1_106
.LBB1_102:                              //  %cond.false208
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x12, 64 ( sp )               //  4-byte Folded Reload
	and x10, x9, 16
	bltu x0, x10, .LBB1_138
.LBB1_103:                              //  %cond.false213
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x9, 64
	bltu x0, x10, .LBB1_171
.LBB1_104:                              //  %cond.false220
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x19, 0 ( x10 )
	and x10, x9, 512
	beq x0, x10, .LBB1_139
.LBB1_105:                              //  %cond.true223
                                        //    in Loop: Header=BB1_16 Depth=2
	sll x10, x19, 24&31
	sra x19, x10, 24&31
	sra x20, x19, 31&31
	bge x20, x0, .LBB1_107
	jal x0, .LBB1_140
.LBB1_106:                              //  %cond.true206
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	lw x12, 64 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 316 ( sp )
	add x11, x10, 8
	lw x19, 0 ( x10 )
	sw x11, 316 ( sp )
	lw x20, 4 ( x10 )
	blt x20, x0, .LBB1_140
.LBB1_107:                              //    in Loop: Header=BB1_16 Depth=2
	seqz x10, x0
	lw x13, 100 ( sp )              //  4-byte Folded Reload
	add x11, x0, -1
	blt x11, x13, .LBB1_207
	jal x0, .LBB1_208
.LBB1_108:                              //  %sw.bb485
                                        //    in Loop: Header=BB1_16 Depth=2
	add x18, x0, 79
	or x9, x9, 16
.LBB1_109:                              //  %sw.bb487
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x12, 64 ( sp )               //  4-byte Folded Reload
	and x10, x9, 32
	bltu x0, x10, .LBB1_128
.LBB1_110:                              //  %cond.false492
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x9, 16
	bltu x0, x10, .LBB1_150
.LBB1_111:                              //  %cond.false497
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x9, 64
	bltu x0, x10, .LBB1_195
.LBB1_112:                              //  %cond.false504
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x19, 0 ( x10 )
	and x11, x9, 512
	mv x10, x0
	beq x11, x10, .LBB1_196
.LBB1_113:                              //  %cond.false504
                                        //    in Loop: Header=BB1_16 Depth=2
	and x19, x19, 255
	jal x0, .LBB1_196
.LBB1_114:                              //  %sw.bb557
                                        //    in Loop: Header=BB1_16 Depth=2
	add x18, x0, 85
	or x9, x9, 16
.LBB1_115:                              //  %sw.bb559
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x12, 64 ( sp )               //  4-byte Folded Reload
	and x10, x9, 32
	bltu x0, x10, .LBB1_129
.LBB1_116:                              //  %cond.false564
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x9, 16
	bltu x0, x10, .LBB1_151
.LBB1_117:                              //  %cond.false569
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x9, 64
	bltu x0, x10, .LBB1_198
.LBB1_118:                              //  %cond.false576
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x19, 0 ( x10 )
	and x11, x9, 512
	mv x10, x0
	beq x11, x10, .LBB1_199
.LBB1_119:                              //  %cond.false576
                                        //    in Loop: Header=BB1_16 Depth=2
	and x19, x19, 255
	jal x0, .LBB1_199
.LBB1_120:                              //  %hex.loopexit
                                        //    in Loop: Header=BB1_16 Depth=2
	lui x10, %hi( .str.6 )
	add x12, x10, %lo( .str.6 )
	and x10, x9, 32
	beq x0, x10, .LBB1_124
.LBB1_121:                              //  %cond.true598
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	add x11, x10, 8
	lw x19, 0 ( x10 )
	sw x11, 316 ( sp )
	lw x20, 4 ( x10 )
	and x10, x9, 1
	bltu x0, x10, .LBB1_203
	jal x0, .LBB1_205
.LBB1_122:                              //  %sw.bb523
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	add x18, x0, 120
	mv x20, x0
	or x9, x9, 2
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x19, 0 ( x10 )
	add x10, x0, 48
	sb x10, 122 ( sp )
	lui x10, %hi( .str.4 )
	sb x18, 123 ( sp )
	add x12, x10, %lo( .str.4 )
	jal x0, .LBB1_206
.LBB1_123:                              //  %hex.loopexit1
                                        //    in Loop: Header=BB1_16 Depth=2
	lui x10, %hi( .str.4 )
	add x12, x10, %lo( .str.4 )
	and x10, x9, 32
	bltu x0, x10, .LBB1_121
.LBB1_124:                              //  %cond.false600
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x9, 16
	bltu x0, x10, .LBB1_152
.LBB1_125:                              //  %cond.false605
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x9, 64
	bltu x0, x10, .LBB1_201
.LBB1_126:                              //  %cond.false612
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x19, 0 ( x10 )
	and x11, x9, 512
	mv x10, x0
	beq x11, x10, .LBB1_202
.LBB1_127:                              //  %cond.false612
                                        //    in Loop: Header=BB1_16 Depth=2
	and x19, x19, 255
	mv x20, x0
	and x10, x9, 1
	bltu x0, x10, .LBB1_203
	jal x0, .LBB1_205
.LBB1_128:                              //  %cond.true490
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	add x11, x10, 8
	lw x19, 0 ( x10 )
	sw x11, 316 ( sp )
	lw x20, 4 ( x10 )
	jal x0, .LBB1_197
.LBB1_129:                              //  %cond.true562
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 316 ( sp )
	add x10, x11, 4
	sw x10, 316 ( sp )
	add x10, x11, 8
	lw x19, 0 ( x11 )
	sw x10, 316 ( sp )
	lw x20, 4 ( x11 )
	jal x0, .LBB1_200
.LBB1_130:                              //  %sw.default741
                                        //    in Loop: Header=BB1_16 Depth=2
	bltu x0, x18, .LBB1_131
.LBB1_538:                              //  %sw.default741
	jal x0, .LBB1_531
.LBB1_131:                              //  %if.end745
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x12, x27
	mv x19, x27
	mv x11, x27
	seqz x20, x0
	sb x18, 124 ( sp )
	sb x0, 315 ( sp )
	sw x27, 80 ( sp )               //  4-byte Folded Spill
	sw x12, 72 ( sp )               //  4-byte Folded Spill
	sw x12, 76 ( sp )               //  4-byte Folded Spill
	add fp, sp, 124
	mv x12, x11
	mv x27, x11
	bge x20, x11, .LBB1_248
	jal x0, .LBB1_249
.LBB1_132:                              //  %if.else318
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	xor x10, x10, -1
	beq x0, x10, .LBB1_172
.LBB1_133:                              //  %if.else322
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, x0, 103
	beq x9, x10, .LBB1_173
.LBB1_134:                              //  %if.else322
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x12, 100 ( sp )              //  4-byte Folded Reload
	mv x10, x12
	mv x11, x0
	sw x11, 80 ( sp )               //  4-byte Folded Spill
	beq x12, x11, .LBB1_175
.LBB1_174:                              //  %if.else322
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x12
.LBB1_175:                              //  %if.else322
                                        //    in Loop: Header=BB1_16 Depth=2
	sw x10, 100 ( sp )              //  4-byte Folded Spill
	bge x27, x20, .LBB1_157
.LBB1_176:                              //    in Loop: Header=BB1_16 Depth=2
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x20, x10, x27
	xor x27, x9, 103
	bltu x0, x19, .LBB1_158
.LBB1_177:                              //  %if.then2.i
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 68 ( sp )               //  4-byte Folded Reload
	add x12, sp, 308
	mv x11, x20
	sw x27, 76 ( sp )               //  4-byte Folded Spill
	jal frexp
	mv x20, x0
	lui x13, (1069547520>>12)&1048575
	mv x12, x20
	jal __muldf3
	mv x12, x20
	mv x13, x20
	mv x25, x10
	mv x27, x11
	jal __nedf2
	bltu x0, x10, .LBB1_179
.LBB1_178:                              //  %if.then4.i
                                        //    in Loop: Header=BB1_16 Depth=2
	seqz x10, x0
	sw x10, 308 ( sp )
.LBB1_179:                              //  %if.end5.i
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x9, 100 ( sp )               //  4-byte Folded Reload
	add x10, x0, 97
	sw x24, 16 ( sp )               //  4-byte Folded Spill
	beq x18, x10, .LBB1_181
.LBB1_180:                              //  %if.end5.i
                                        //    in Loop: Header=BB1_16 Depth=2
	lui x10, %hi( .str.6 )
	add x10, x10, %lo( .str.6 )
	jal x0, .LBB1_182
.LBB1_135:                              //  %if.then533
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x20, 100 ( sp )              //  4-byte Folded Reload
	add x10, x0, 6
	bltu x20, x10, .LBB1_137
.LBB1_136:                              //  %if.then533
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x20, x10
.LBB1_137:                              //  %if.then533
                                        //    in Loop: Header=BB1_16 Depth=2
	lui x11, %hi( .str.5 )
	add fp, x11, %lo( .str.5 )
	jal x0, .LBB1_161
.LBB1_138:                              //  %cond.true211
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x19, 0 ( x10 )
.LBB1_139:                              //  %cond.end233
                                        //    in Loop: Header=BB1_16 Depth=2
	sra x20, x19, 31&31
	bge x20, x0, .LBB1_107
.LBB1_140:                              //  %if.then654.thread
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 100 ( sp )              //  4-byte Folded Reload
	add x10, x0, -1
	bge x10, x11, .LBB1_142
.LBB1_141:                              //    in Loop: Header=BB1_16 Depth=2
	and x9, x9, -129
.LBB1_142:                              //  %if.then654.thread
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, x0, 45
	sb x10, 315 ( sp )
	snez x10, x19
	add x10, x10, x20
	sub x19, x0, x19
	sub x20, x0, x10
	jal x0, .LBB1_143
.LBB1_148:                              //    in Loop: Header=BB1_16 Depth=2
	lui x10, %hi( .str.2 )
	add fp, x10, %lo( .str.2 )
.LBB1_149:                              //  %if.end282
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x19, x0
	add x20, x0, 3
	sw x19, 72 ( sp )               //  4-byte Folded Spill
	mv x11, x19
	and x9, x9, -129
	jal x0, .LBB1_247
.LBB1_150:                              //  %cond.true495
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x19, 0 ( x10 )
	jal x0, .LBB1_196
.LBB1_151:                              //  %cond.true567
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x19, 0 ( x10 )
	jal x0, .LBB1_199
.LBB1_152:                              //  %cond.true603
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x19, 0 ( x10 )
	mv x20, x0
	and x10, x9, 1
	bltu x0, x10, .LBB1_203
	jal x0, .LBB1_205
.LBB1_153:                              //    in Loop: Header=BB1_16 Depth=2
	add x10, x0, 120
.LBB1_154:                              //  %if.then295
                                        //    in Loop: Header=BB1_16 Depth=2
	sb x10, 123 ( sp )
	add x10, x0, 48
	sb x10, 122 ( sp )
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	lw x11, 100 ( sp )              //  4-byte Folded Reload
	or x10, x10, 2
	sw x10, 112 ( sp )              //  4-byte Folded Spill
	slti x10, x11, 100
	bltu x0, x10, .LBB1_162
.LBB1_155:                              //  %if.then304
                                        //    in Loop: Header=BB1_16 Depth=2
	add x11, x11, 1
	mv x10, x25
	jal _malloc_r
	mv fp, x10
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB1_156
.LBB1_539:                              //  %if.then304
	jal x0, .LBB1_534
.LBB1_156:                              //  %if.end334
                                        //    in Loop: Header=BB1_16 Depth=2
	blt x27, x20, .LBB1_176
.LBB1_157:                              //  %if.end334
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x20, x27
	xor x27, x9, 103
	beq x0, x19, .LBB1_177
.LBB1_158:                              //  %if.end43.i
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x25, x24
	xor x19, x9, 102
	bltu x0, x19, .LBB1_163
.LBB1_159:                              //    in Loop: Header=BB1_16 Depth=2
	lw x24, 100 ( sp )              //  4-byte Folded Reload
	add x13, x0, 3
	jal x0, .LBB1_164
.LBB1_160:                              //  %if.else553
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, fp
	jal strlen
	mv x20, x10
.LBB1_161:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x19, x0
	mv x11, x19
	jal x0, .LBB1_246
.LBB1_162:                              //    in Loop: Header=BB1_16 Depth=2
	add fp, sp, 124
	sw x20, 80 ( sp )               //  4-byte Folded Spill
	bge x27, x20, .LBB1_157
	jal x0, .LBB1_176
.LBB1_181:                              //    in Loop: Header=BB1_16 Depth=2
	lui x10, %hi( .str.4 )
	add x10, x10, %lo( .str.4 )
.LBB1_182:                              //  %if.end5.i
                                        //    in Loop: Header=BB1_16 Depth=2
	sw x10, 104 ( sp )              //  4-byte Folded Spill
.LBB1_183:                              //  %do.body.i2388
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	mv x12, x0
	lui x13, (1076887552>>12)&1048575
	mv x10, x25
	mv x11, x27
	mv x19, x20
	jal __muldf3
	mv x20, x10
	mv x25, x11
	jal __fixdfsi
	mv x24, x10
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	add x11, x19, fp
	add x10, x24, x10
	lb x10, 0 ( x10 )
	sb x10, 0 ( x11 )
	mv x10, x24
	jal __floatsidf
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x25
	jal __subdf3
	mv x25, x10
	mv x27, x11
	add x20, x19, 1
	beq x9, x19, .LBB1_185
.LBB1_184:                              //  %do.body.i2388
                                        //    in Loop: Header=BB1_183 Depth=3
	mv x12, x0
	mv x10, x25
	mv x11, x27
	mv x13, x12
	jal __nedf2
	bltu x0, x10, .LBB1_183
.LBB1_185:                              //  %do.end.i2390
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x25
	mv x11, x27
	jal __gtdf2
	add x9, x20, fp
	blt x0, x10, .LBB1_188
.LBB1_186:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x24, 1
	bltu x0, x10, .LBB1_187
.LBB1_540:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB1_16 Depth=2
	jal x0, .LBB1_405
.LBB1_187:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x25
	mv x11, x27
	jal __eqdf2
	beq x0, x10, .LBB1_188
.LBB1_541:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB1_16 Depth=2
	jal x0, .LBB1_405
.LBB1_188:                              //  %if.then19.i
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x12, 104 ( sp )              //  4-byte Folded Reload
	add x10, x9, -1
	sw x10, 328 ( sp )
	lbu x11, -1 ( x9 )
	lbu x12, 15 ( x12 )
	bne x11, x12, .LBB1_191
.LBB1_189:                              //  %while.body.i.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x24, 16 ( sp )               //  4-byte Folded Reload
	lw x25, 92 ( sp )               //  4-byte Folded Reload
	lw x13, 96 ( sp )               //  4-byte Folded Reload
	lw x27, 76 ( sp )               //  4-byte Folded Reload
.LBB1_190:                              //  %while.body.i
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x12, x0, 48
	sb x12, 0 ( x10 )
	lw x12, 328 ( sp )
	add x10, x12, -1
	sw x10, 328 ( sp )
	lbu x12, -1 ( x12 )
	beq x12, x11, .LBB1_190
	jal x0, .LBB1_192
.LBB1_163:                              //  %if.else50.i
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 100 ( sp )              //  4-byte Folded Reload
	xor x10, x9, 101
	seqz x10, x10
	add x13, x0, 2
	add x24, x10, x11
.LBB1_164:                              //  %if.end58.i
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 68 ( sp )               //  4-byte Folded Reload
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	lw x9, 112 ( sp )               //  4-byte Folded Reload
	add x15, sp, 308
	add x16, sp, 320
	add x17, sp, 328
	mv x12, x20
	mv x14, x24
	jal _dtoa_r
	mv fp, x10
	bltu x0, x27, .LBB1_167
.LBB1_165:                              //  %if.end58.i
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x9, 1
	bltu x0, x10, .LBB1_167
.LBB1_166:                              //  %if.end58.if.end96_crit_edge.i
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x24, x25
	lw x9, 328 ( sp )
	lw x25, 92 ( sp )               //  4-byte Folded Reload
	lw x13, 96 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_469
.LBB1_167:                              //  %if.then68.i
                                        //    in Loop: Header=BB1_16 Depth=2
	add x9, x24, fp
	beq x0, x19, .LBB1_168
.LBB1_542:                              //  %if.then68.i
                                        //    in Loop: Header=BB1_16 Depth=2
	jal x0, .LBB1_404
.LBB1_168:                              //  %if.then74.i
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 68 ( sp )               //  4-byte Folded Reload
	mv x12, x0
	mv x11, x20
	mv x13, x12
	jal __eqdf2
	bltu x0, x10, .LBB1_169
.LBB1_543:                              //  %if.then74.i
                                        //    in Loop: Header=BB1_16 Depth=2
	jal x0, .LBB1_461
.LBB1_169:                              //  %if.then74.i
                                        //    in Loop: Header=BB1_16 Depth=2
	lbu x10, 0 ( fp )
	xor x10, x10, 48
	beq x0, x10, .LBB1_170
.LBB1_544:                              //  %if.then74.i
                                        //    in Loop: Header=BB1_16 Depth=2
	jal x0, .LBB1_461
.LBB1_170:                              //  %if.then80.i
                                        //    in Loop: Header=BB1_16 Depth=2
	seqz x10, x0
	sub x10, x10, x24
	sw x10, 308 ( sp )
	jal x0, .LBB1_462
.LBB1_171:                              //  %cond.true216
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x10, 0 ( x10 )
	sll x10, x10, 16&31
	sra x19, x10, 16&31
	sra x20, x19, 31&31
	bge x20, x0, .LBB1_107
	jal x0, .LBB1_140
.LBB1_172:                              //    in Loop: Header=BB1_16 Depth=2
	add x10, x0, 6
	sw x10, 100 ( sp )              //  4-byte Folded Spill
	sw x20, 80 ( sp )               //  4-byte Folded Spill
	bge x27, x20, .LBB1_157
	jal x0, .LBB1_176
.LBB1_191:                              //    in Loop: Header=BB1_16 Depth=2
	lw x24, 16 ( sp )               //  4-byte Folded Reload
	lw x25, 92 ( sp )               //  4-byte Folded Reload
	lw x13, 96 ( sp )               //  4-byte Folded Reload
	lw x27, 76 ( sp )               //  4-byte Folded Reload
	mv x12, x11
.LBB1_192:                              //  %while.end.i
                                        //    in Loop: Header=BB1_16 Depth=2
	xor x11, x12, 57
	bltu x0, x11, .LBB1_194
.LBB1_193:                              //  %cond.true.i
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 104 ( sp )              //  4-byte Folded Reload
	lbu x11, 10 ( x11 )
	sb x11, 0 ( x10 )
	jal x0, .LBB1_469
.LBB1_194:                              //  %cond.false.i
                                        //    in Loop: Header=BB1_16 Depth=2
	add x11, x12, 1
	sb x11, 0 ( x10 )
	jal x0, .LBB1_469
.LBB1_173:                              //    in Loop: Header=BB1_16 Depth=2
	lw x12, 100 ( sp )              //  4-byte Folded Reload
	seqz x10, x0
	mv x11, x0
	sw x11, 80 ( sp )               //  4-byte Folded Spill
	beq x12, x11, .LBB1_175
	jal x0, .LBB1_174
.LBB1_195:                              //  %cond.true500
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lhu x19, 0 ( x10 )
.LBB1_196:                              //  %cond.end517
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x20, x0
.LBB1_197:                              //  %cond.end520
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x0
	and x9, x9, -1025
	sb x0, 315 ( sp )
	lw x13, 100 ( sp )              //  4-byte Folded Reload
	add x11, x0, -1
	blt x11, x13, .LBB1_207
	jal x0, .LBB1_208
.LBB1_198:                              //  %cond.true572
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lhu x19, 0 ( x10 )
.LBB1_199:                              //  %cond.end589
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x20, x0
.LBB1_200:                              //  %cond.end589
                                        //    in Loop: Header=BB1_16 Depth=2
	seqz x10, x0
	sb x0, 315 ( sp )
	lw x13, 100 ( sp )              //  4-byte Folded Reload
	add x11, x0, -1
	blt x11, x13, .LBB1_207
	jal x0, .LBB1_208
.LBB1_201:                              //  %cond.true608
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lhu x19, 0 ( x10 )
.LBB1_202:                              //  %cond.end625
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x20, x0
	and x10, x9, 1
	beq x0, x10, .LBB1_205
.LBB1_203:                              //  %cond.end628
                                        //    in Loop: Header=BB1_16 Depth=2
	or x10, x20, x19
	beq x0, x10, .LBB1_205
.LBB1_204:                              //  %if.then635
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, x0, 48
	or x9, x9, 2
	sb x18, 123 ( sp )
	sb x10, 122 ( sp )
.LBB1_205:                              //  %if.end640
                                        //    in Loop: Header=BB1_16 Depth=2
	and x9, x9, -1025
.LBB1_206:                              //  %nosign
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, x0, 2
	sb x0, 315 ( sp )
	lw x13, 100 ( sp )              //  4-byte Folded Reload
	add x11, x0, -1
	bge x11, x13, .LBB1_208
.LBB1_207:                              //    in Loop: Header=BB1_16 Depth=2
	and x9, x9, -129
.LBB1_208:                              //  %number
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 100 ( sp )              //  4-byte Folded Reload
	bltu x0, x11, .LBB1_213
.LBB1_209:                              //  %number
                                        //    in Loop: Header=BB1_16 Depth=2
	or x11, x20, x19
	bltu x0, x11, .LBB1_213
.LBB1_210:                              //  %if.else725
                                        //    in Loop: Header=BB1_16 Depth=2
	sw x12, 64 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB1_223
.LBB1_211:                              //  %if.else725
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x9, 1
	beq x0, x10, .LBB1_223
.LBB1_212:                              //  %if.then732
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, x0, 48
	jal x0, .LBB1_147
.LBB1_213:                              //  %if.then654
                                        //    in Loop: Header=BB1_16 Depth=2
	beq x0, x10, .LBB1_224
.LBB1_214:                              //  %if.then654
                                        //    in Loop: Header=BB1_16 Depth=2
	xor x11, x10, 1
	beq x0, x11, .LBB1_143
.LBB1_215:                              //  %if.then654
                                        //    in Loop: Header=BB1_16 Depth=2
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	xor x10, x10, 2
	sw x12, 64 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB1_229
.LBB1_216:                              //  %do.body716
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	and x10, x19, 15
	add x10, x10, x12
	lb x10, 0 ( x10 )
	sll x11, x20, 28&31
	srl x20, x20, 4&31
	sb x10, -1 ( fp )
	srl x10, x19, 4&31
	or x19, x11, x10
	add fp, fp, -1
	or x10, x20, x19
	bltu x0, x10, .LBB1_216
	jal x0, .LBB1_244
.LBB1_143:                              //  %sw.bb674
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x0
	sw x12, 64 ( sp )               //  4-byte Folded Spill
	bne x20, x10, .LBB1_145
.LBB1_144:                              //    in Loop: Header=BB1_16 Depth=2
	sltiu x10, x19, 10
.LBB1_145:                              //  %sw.bb674
                                        //    in Loop: Header=BB1_16 Depth=2
	beq x0, x10, .LBB1_217
.LBB1_146:                              //  %if.then677
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, x19, 48
.LBB1_147:                              //  %if.end735
                                        //    in Loop: Header=BB1_16 Depth=2
	sb x10, 223 ( sp )
	add fp, sp, 223
	jal x0, .LBB1_244
.LBB1_223:                              //    in Loop: Header=BB1_16 Depth=2
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB1_244
.LBB1_217:                              //  %do.body682.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x9, 1024
	sw x24, 16 ( sp )               //  4-byte Folded Spill
	sw x9, 112 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB1_230
.LBB1_218:                              //  %do.body682.us.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x24, x0
	mv x9, x24
	jal x0, .LBB1_221
.LBB1_219:                              //  %do.body682.us
                                        //    in Loop: Header=BB1_221 Depth=3
	snez x11, x20
.LBB1_220:                              //  %do.body682.us
                                        //    in Loop: Header=BB1_221 Depth=3
	sub x10, x19, x10
	or x12, x10, 48
	add x10, sp, 124
	add x13, x9, x10
	add x9, x9, -1
	mv x19, x25
	mv x20, fp
	sb x12, 99 ( x13 )
	beq x0, x11, .LBB1_242
.LBB1_221:                              //  %do.body682.us
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x27, x0, 10
	mv x10, x19
	mv x11, x20
	mv x12, x27
	mv x13, x24
	jal __udivdi3
	mv x12, x27
	mv x13, x24
	mv x25, x10
	mv fp, x11
	jal __muldi3
	bne x20, x24, .LBB1_219
.LBB1_222:                              //    in Loop: Header=BB1_221 Depth=3
	add x11, x0, 9
	sltu x11, x11, x19
	jal x0, .LBB1_220
.LBB1_224:                              //  %do.body657.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	add fp, sp, 223
	sw x12, 64 ( sp )               //  4-byte Folded Spill
.LBB1_225:                              //  %do.body657
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sll x11, x20, 29&31
	srl x10, x19, 3&31
	or x10, x11, x10
	and x11, x19, 7
	or x11, x11, 48
	srl x20, x20, 3&31
	sb x11, 0 ( fp )
	add fp, fp, -1
	or x12, x20, x10
	mv x19, x10
	bltu x0, x12, .LBB1_225
.LBB1_226:                              //  %do.end664
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, fp, 1
	and x12, x9, 1
	beq x0, x12, .LBB1_389
.LBB1_227:                              //  %do.end664
                                        //    in Loop: Header=BB1_16 Depth=2
	xor x11, x11, 48
	beq x0, x11, .LBB1_389
.LBB1_228:                              //  %if.then671
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, x0, 48
	sb x10, 0 ( fp )
	jal x0, .LBB1_244
.LBB1_229:                              //  %sw.default
                                        //    in Loop: Header=BB1_16 Depth=2
	lui x10, %hi( .str.7 )
	add fp, x10, %lo( .str.7 )
	mv x10, fp
	jal strlen
	mv x20, x10
	jal x0, .LBB1_245
.LBB1_230:                              //  %do.body682.preheader12
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 48 ( sp )               //  4-byte Folded Reload
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	sub x10, x0, x10
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	mv x10, x0
	sw x10, 104 ( sp )              //  4-byte Folded Spill
	jal x0, .LBB1_233
.LBB1_231:                              //  %if.end710
                                        //    in Loop: Header=BB1_233 Depth=3
	snez x10, x20
	mv x19, x27
	mv x20, x25
	sw x12, 104 ( sp )              //  4-byte Folded Spill
	beq x0, x10, .LBB1_243
.LBB1_233:                              //  %do.body682
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x9, x0, 10
	mv x24, x0
	mv x10, x19
	mv x11, x20
	mv x12, x9
	mv x13, x24
	jal __udivdi3
	mv x12, x9
	mv x13, x24
	mv x27, x10
	mv x25, x11
	jal __muldi3
	sub x10, x19, x10
	or x10, x10, 48
	sb x10, -1 ( fp )
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	lw x12, 104 ( sp )              //  4-byte Folded Reload
	add fp, fp, -1
	lb x10, 0 ( x10 )
	add x12, x12, 1
	bne x12, x10, .LBB1_240
.LBB1_234:                              //  %land.lhs.true693
                                        //    in Loop: Header=BB1_233 Depth=3
	beq x20, x24, .LBB1_239
.LBB1_235:                              //  %land.lhs.true693
                                        //    in Loop: Header=BB1_233 Depth=3
	mv x11, x24
	bltu x0, x11, .LBB1_240
.LBB1_236:                              //  %land.lhs.true693
                                        //    in Loop: Header=BB1_233 Depth=3
	and x10, x10, 255
	xor x10, x10, 127
	beq x0, x10, .LBB1_240
.LBB1_237:                              //  %if.then700
                                        //    in Loop: Header=BB1_233 Depth=3
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	lw x11, 44 ( sp )               //  4-byte Folded Reload
	lw x12, 48 ( sp )               //  4-byte Folded Reload
	add fp, x10, fp
	mv x10, fp
	jal strncpy
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	mv x12, x0
	lbu x10, 1 ( x11 )
	beq x10, x12, .LBB1_240
.LBB1_238:                              //  %if.then700
                                        //    in Loop: Header=BB1_233 Depth=3
	add x11, x11, 1
	sw x11, 96 ( sp )               //  4-byte Folded Spill
	bne x20, x24, .LBB1_231
	jal x0, .LBB1_241
.LBB1_239:                              //    in Loop: Header=BB1_233 Depth=3
	sltiu x11, x19, 10
	beq x0, x11, .LBB1_236
.LBB1_240:                              //  %if.end710
                                        //    in Loop: Header=BB1_233 Depth=3
	bne x20, x24, .LBB1_231
.LBB1_241:                              //    in Loop: Header=BB1_233 Depth=3
	add x10, x0, 9
	sltu x10, x10, x19
	mv x19, x27
	mv x20, x25
	sw x12, 104 ( sp )              //  4-byte Folded Spill
	bltu x0, x10, .LBB1_233
	jal x0, .LBB1_243
.LBB1_242:                              //  %if.end735.loopexit
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, x9, x10
	add fp, x10, 100
	sub x10, x0, x9
	sw x10, 104 ( sp )              //  4-byte Folded Spill
.LBB1_243:                              //  %if.end735
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x24, 16 ( sp )               //  4-byte Folded Reload
	lw x25, 92 ( sp )               //  4-byte Folded Reload
	lw x9, 112 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_244
.LBB1_389:                              //    in Loop: Header=BB1_16 Depth=2
	mv fp, x10
.LBB1_244:                              //  %if.end735
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	sub x20, x10, fp
.LBB1_245:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x19, x0
	lw x11, 100 ( sp )              //  4-byte Folded Reload
.LBB1_246:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_16 Depth=2
	sw x19, 72 ( sp )               //  4-byte Folded Spill
.LBB1_247:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_16 Depth=2
	sw x19, 80 ( sp )               //  4-byte Folded Spill
	sw x19, 76 ( sp )               //  4-byte Folded Spill
	mv x12, x11
	mv x27, x11
	blt x20, x11, .LBB1_249
.LBB1_248:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x12, x20
.LBB1_249:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_16 Depth=2
	lbu x11, 315 ( sp )
	sw x9, 112 ( sp )               //  4-byte Folded Spill
	and x9, x9, 2
	sw x19, 56 ( sp )               //  4-byte Folded Spill
	snez x11, x11
	add x11, x11, x12
	srl x12, x9, 1&31
	beq x0, x12, .LBB1_251
.LBB1_250:                              //    in Loop: Header=BB1_16 Depth=2
	add x11, x11, 2
.LBB1_251:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	sw x11, 100 ( sp )              //  4-byte Folded Spill
	add x11, x0, 16
	and x19, x10, 132
	beq x0, x19, .LBB1_255
.LBB1_252:                              //  %if.end811
                                        //    in Loop: Header=BB1_16 Depth=2
	lbu x10, 315 ( sp )
	beq x0, x10, .LBB1_271
.LBB1_253:                              //  %if.then813
                                        //    in Loop: Header=BB1_16 Depth=2
	add x12, sp, 288
	lw x10, 8 ( x12 )
	add x10, x10, 1
	sw x10, 8 ( x12 )
	seqz x10, x0
	sw x10, 4 ( x21 )
	add x10, sp, 315
	sw x10, 0 ( x21 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_270
.LBB1_254:                              //  %if.then823
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	jal __sprint_r
	add x21, sp, 224
	add x11, x0, 16
	beq x0, x10, .LBB1_271
	jal x0, .LBB1_259
.LBB1_255:                              //  %if.then767
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	mv x25, x24
	sub x24, x22, x10
	bge x0, x24, .LBB1_313
.LBB1_256:                              //  %while.cond772.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 108 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, x24, 17
	beq x0, x10, .LBB1_266
	jal x0, .LBB1_257
.LBB1_264:                              //    in Loop: Header=BB1_266 Depth=3
	add x21, x21, 8
.LBB1_265:                              //  %if.end791
                                        //    in Loop: Header=BB1_266 Depth=3
	lw x10, 108 ( sp )              //  4-byte Folded Reload
	add x24, x24, -16
	add x11, x0, 16
	sw x10, 0 ( x21 )
	bge x11, x24, .LBB1_257
.LBB1_266:                              //  %while.body775
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x12, sp, 288
	lw x10, 8 ( x12 )
	sw x11, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x12 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_264
.LBB1_267:                              //  %if.then785
                                        //    in Loop: Header=BB1_266 Depth=3
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	mv x11, x25
	jal __sprint_r
	add x21, sp, 224
	beq x0, x10, .LBB1_265
	jal x0, .LBB1_268
.LBB1_270:                              //    in Loop: Header=BB1_16 Depth=2
	add x21, x21, 8
	add x11, x0, 16
.LBB1_271:                              //  %if.end830
                                        //    in Loop: Header=BB1_16 Depth=2
	beq x0, x9, .LBB1_284
.LBB1_272:                              //  %if.then833
                                        //    in Loop: Header=BB1_16 Depth=2
	add x12, sp, 288
	lw x10, 8 ( x12 )
	add x10, x10, 2
	sw x10, 8 ( x12 )
	add x10, x0, 2
	sw x10, 4 ( x21 )
	add x10, sp, 122
	sw x10, 0 ( x21 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_296
.LBB1_273:                              //  %if.then844
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	jal __sprint_r
	add x21, sp, 224
	add x11, x0, 16
	mv x12, x27
	beq x0, x10, .LBB1_274
.LBB1_545:                              //  %if.then844
	jal x0, .LBB1_259
.LBB1_274:                              //  %if.end851
                                        //    in Loop: Header=BB1_16 Depth=2
	xor x10, x19, 128
	bltu x0, x10, .LBB1_285
.LBB1_275:                              //  %if.then855
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add x19, sp, 288
	sub x9, x22, x10
	bge x0, x9, .LBB1_311
.LBB1_276:                              //  %while.cond860.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, x9, 17
	beq x0, x10, .LBB1_282
	jal x0, .LBB1_277
.LBB1_280:                              //    in Loop: Header=BB1_282 Depth=3
	add x21, x21, 8
.LBB1_281:                              //  %if.end879
                                        //    in Loop: Header=BB1_282 Depth=3
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	add x9, x9, -16
	add x11, x0, 16
	sw x10, 0 ( x21 )
	bge x11, x9, .LBB1_277
.LBB1_282:                              //  %while.body863
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	sw x11, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_280
.LBB1_283:                              //  %if.then873
                                        //    in Loop: Header=BB1_282 Depth=3
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x21, sp, 224
	beq x0, x10, .LBB1_281
	jal x0, .LBB1_259
.LBB1_284:                              //    in Loop: Header=BB1_16 Depth=2
	mv x12, x27
	xor x10, x19, 128
	beq x0, x10, .LBB1_275
.LBB1_285:                              //    in Loop: Header=BB1_16 Depth=2
	add x19, sp, 288
	sub x9, x12, x20
	blt x0, x9, .LBB1_286
.LBB1_312:                              //    in Loop: Header=BB1_16 Depth=2
	lw x9, 112 ( sp )               //  4-byte Folded Reload
	and x10, x9, 256
	beq x0, x10, .LBB1_290
.LBB1_298:                              //  %if.else963
                                        //    in Loop: Header=BB1_16 Depth=2
	slti x10, x18, 102
	bltu x0, x10, .LBB1_305
.LBB1_299:                              //  %if.then966
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 68 ( sp )               //  4-byte Folded Reload
	lw x11, 60 ( sp )               //  4-byte Folded Reload
	mv x27, x0
	mv x13, x27
	mv x12, x27
	jal __nedf2
	bltu x0, x10, .LBB1_321
.LBB1_300:                              //  %if.then970
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 8 ( x19 )
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	add x10, x10, 1
	sw x10, 8 ( x19 )
	seqz x10, x0
	sw x10, 4 ( x21 )
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_327
.LBB1_301:                              //  %if.then980
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	lw x20, 88 ( sp )               //  4-byte Folded Reload
	add x21, sp, 224
	beq x0, x10, .LBB1_302
.LBB1_546:                              //  %if.then980
	jal x0, .LBB1_260
.LBB1_302:                              //  %if.end986
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x9, 1
	bltu x0, x10, .LBB1_328
.LBB1_303:                              //  %if.end986
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 308 ( sp )
	lw x11, 104 ( sp )              //  4-byte Folded Reload
	bge x10, x11, .LBB1_356
	jal x0, .LBB1_328
.LBB1_277:                              //  %while.end881
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 8 ( x19 )
	sw x9, 4 ( x21 )
	add x10, x9, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_314
.LBB1_278:                              //  %if.then891
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x21, sp, 224
	add x11, x0, 16
	mv x12, x27
	beq x0, x10, .LBB1_279
.LBB1_547:                              //  %if.then891
	jal x0, .LBB1_259
.LBB1_279:                              //  %if.end899
                                        //    in Loop: Header=BB1_16 Depth=2
	sub x9, x12, x20
	bge x0, x9, .LBB1_312
.LBB1_286:                              //  %while.cond904.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, x9, 17
	beq x0, x10, .LBB1_294
	jal x0, .LBB1_287
.LBB1_292:                              //    in Loop: Header=BB1_294 Depth=3
	add x21, x21, 8
.LBB1_293:                              //  %if.end923
                                        //    in Loop: Header=BB1_294 Depth=3
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	add x9, x9, -16
	add x11, x0, 16
	sw x10, 0 ( x21 )
	bge x11, x9, .LBB1_287
.LBB1_294:                              //  %while.body907
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	sw x11, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_292
.LBB1_295:                              //  %if.then917
                                        //    in Loop: Header=BB1_294 Depth=3
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x21, sp, 224
	beq x0, x10, .LBB1_293
	jal x0, .LBB1_259
.LBB1_287:                              //  %while.end925
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 8 ( x19 )
	sw x9, 4 ( x21 )
	add x10, x9, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_297
.LBB1_288:                              //  %if.then935
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	lw x9, 112 ( sp )               //  4-byte Folded Reload
	add x21, sp, 224
	beq x0, x10, .LBB1_289
.LBB1_548:                              //  %if.then935
	jal x0, .LBB1_259
.LBB1_289:                              //  %if.end942
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x9, 256
	bltu x0, x10, .LBB1_298
.LBB1_290:                              //  %if.then946
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 8 ( x19 )
	sw x20, 4 ( x21 )
	sw fp, 0 ( x21 )
	add x10, x20, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_304
.LBB1_291:                              //  %if.then956
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	lw x20, 88 ( sp )               //  4-byte Folded Reload
	add x21, sp, 224
	mv x27, x0
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	beq x0, x10, .LBB1_356
	jal x0, .LBB1_260
.LBB1_296:                              //    in Loop: Header=BB1_16 Depth=2
	add x21, x21, 8
	add x11, x0, 16
	mv x12, x27
	xor x10, x19, 128
	beq x0, x10, .LBB1_275
	jal x0, .LBB1_285
.LBB1_297:                              //    in Loop: Header=BB1_16 Depth=2
	lw x9, 112 ( sp )               //  4-byte Folded Reload
	add x21, x21, 8
	and x10, x9, 256
	beq x0, x10, .LBB1_290
	jal x0, .LBB1_298
.LBB1_305:                              //  %if.else1475
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 8 ( x19 )
	lw x12, 292 ( sp )
	lw x14, 104 ( sp )              //  4-byte Folded Reload
	add x18, x21, 8
	add x11, x10, 1
	seqz x10, x0
	mv x13, x10
	add x10, x12, 1
	slti x12, x12, 7
	mv x27, x0
	sw fp, 0 ( x21 )
	sw x11, 8 ( x19 )
	sw x13, 4 ( x21 )
	sw x10, 292 ( sp )
	blt x13, x14, .LBB1_315
.LBB1_306:                              //  %if.else1475
                                        //    in Loop: Header=BB1_16 Depth=2
	and x13, x9, 1
	bltu x0, x13, .LBB1_315
.LBB1_307:                              //  %if.else1581
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x20, 88 ( sp )               //  4-byte Folded Reload
	bltu x0, x12, .LBB1_309
	jal x0, .LBB1_308
.LBB1_304:                              //    in Loop: Header=BB1_16 Depth=2
	lw x20, 88 ( sp )               //  4-byte Folded Reload
	add x21, x21, 8
	mv x27, x0
	jal x0, .LBB1_355
.LBB1_257:                              //  %while.end793
                                        //    in Loop: Header=BB1_16 Depth=2
	add x12, sp, 288
	lw x10, 8 ( x12 )
	sw x24, 4 ( x21 )
	add x10, x24, x10
	sw x10, 8 ( x12 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_320
.LBB1_258:                              //  %if.then803
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	mv x24, x25
	mv x11, x24
	mv x25, x10
	jal __sprint_r
	add x21, sp, 224
	add x11, x0, 16
	beq x0, x10, .LBB1_252
	jal x0, .LBB1_259
.LBB1_311:                              //    in Loop: Header=BB1_16 Depth=2
	mv x12, x27
	sub x9, x12, x20
	blt x0, x9, .LBB1_286
	jal x0, .LBB1_312
.LBB1_313:                              //    in Loop: Header=BB1_16 Depth=2
	mv x24, x25
	lw x25, 92 ( sp )               //  4-byte Folded Reload
	lbu x10, 315 ( sp )
	bltu x0, x10, .LBB1_253
	jal x0, .LBB1_271
.LBB1_314:                              //    in Loop: Header=BB1_16 Depth=2
	add x21, x21, 8
	add x11, x0, 16
	mv x12, x27
	sub x9, x12, x20
	blt x0, x9, .LBB1_286
	jal x0, .LBB1_312
.LBB1_315:                              //  %if.then1481
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x20, 88 ( sp )               //  4-byte Folded Reload
	bltu x0, x12, .LBB1_318
.LBB1_316:                              //  %if.then1491
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	bltu x0, x10, .LBB1_260
.LBB1_317:                              //  %if.then1491.if.end1497_crit_edge
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 292 ( sp )
	lw x11, 8 ( x19 )
	add x18, sp, 224
.LBB1_318:                              //  %if.end1497
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x12, 40 ( sp )               //  4-byte Folded Reload
	add x11, x12, x11
	sw x11, 8 ( x19 )
	lw x11, 32 ( sp )               //  4-byte Folded Reload
	sw x12, 4 ( x18 )
	sw x11, 0 ( x18 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_338
.LBB1_319:                              //  %if.then1508
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x18, sp, 224
	beq x0, x10, .LBB1_339
	jal x0, .LBB1_260
.LBB1_320:                              //    in Loop: Header=BB1_16 Depth=2
	mv x24, x25
	lw x25, 92 ( sp )               //  4-byte Folded Reload
	add x21, x21, 8
	add x11, x0, 16
	lbu x10, 315 ( sp )
	bltu x0, x10, .LBB1_253
	jal x0, .LBB1_271
.LBB1_321:                              //  %if.else1053
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 308 ( sp )
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	bge x0, x10, .LBB1_351
.LBB1_322:                              //  %if.else1156
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	mv x9, x11
	blt x11, x10, .LBB1_324
.LBB1_323:                              //  %if.else1156
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x9, 104 ( sp )               //  4-byte Folded Reload
.LBB1_324:                              //  %if.else1156
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x20, 56 ( sp )               //  4-byte Folded Reload
	bge x0, x9, .LBB1_374
.LBB1_325:                              //  %if.then1168
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 8 ( x19 )
	sw x9, 4 ( x21 )
	sw fp, 0 ( x21 )
	add x10, x9, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_373
.LBB1_326:                              //  %if.then1178
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x21, sp, 224
	beq x0, x10, .LBB1_374
	jal x0, .LBB1_259
.LBB1_327:                              //    in Loop: Header=BB1_16 Depth=2
	lw x20, 88 ( sp )               //  4-byte Folded Reload
	add x21, x21, 8
	and x10, x9, 1
	beq x0, x10, .LBB1_303
.LBB1_328:                              //  %if.then992
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 40 ( sp )               //  4-byte Folded Reload
	lw x10, 8 ( x19 )
	sw x11, 4 ( x21 )
	add x10, x11, x10
	sw x10, 8 ( x19 )
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_350
.LBB1_329:                              //  %if.then1002
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x21, sp, 224
	add x11, x0, 16
	bltu x0, x10, .LBB1_260
.LBB1_330:                              //  %if.end1008
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	add fp, x10, -1
	bge x0, fp, .LBB1_356
.LBB1_331:                              //  %while.cond1013.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	beq x0, x10, .LBB1_336
	jal x0, .LBB1_332
.LBB1_334:                              //    in Loop: Header=BB1_336 Depth=3
	add x21, x21, 8
.LBB1_335:                              //  %if.end1032
                                        //    in Loop: Header=BB1_336 Depth=3
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	add x11, x0, 16
	sw x10, 0 ( x21 )
	bge x11, fp, .LBB1_332
.LBB1_336:                              //  %while.body1016
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	sw x11, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_334
.LBB1_337:                              //  %if.then1026
                                        //    in Loop: Header=BB1_336 Depth=3
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x21, sp, 224
	beq x0, x10, .LBB1_335
	jal x0, .LBB1_260
.LBB1_338:                              //    in Loop: Header=BB1_16 Depth=2
	add x18, x18, 8
.LBB1_339:                              //  %if.end1514
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 68 ( sp )               //  4-byte Folded Reload
	lw x11, 60 ( sp )               //  4-byte Folded Reload
	mv x13, x27
	mv x12, x27
	jal __eqdf2
	beq x0, x10, .LBB1_343
.LBB1_340:                              //  %if.then1517
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 104 ( sp )              //  4-byte Folded Reload
	lw x12, 8 ( x19 )
	add x10, fp, 1
	sw x10, 0 ( x18 )
	add x11, x11, -1
	add x12, x11, x12
	sw x12, 8 ( x19 )
	sw x11, 4 ( x18 )
	jal x0, .LBB1_341
.LBB1_343:                              //  %if.else1536
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	add fp, x10, -1
	bge x0, fp, .LBB1_309
.LBB1_344:                              //  %while.cond1541.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	add x11, x0, 16
	sw x10, 0 ( x18 )
	slti x10, fp, 17
	beq x0, x10, .LBB1_348
	jal x0, .LBB1_345
.LBB1_346:                              //    in Loop: Header=BB1_348 Depth=3
	add x18, x18, 8
.LBB1_347:                              //  %if.end1560
                                        //    in Loop: Header=BB1_348 Depth=3
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	add x11, x0, 16
	sw x10, 0 ( x18 )
	bge x11, fp, .LBB1_345
.LBB1_348:                              //  %while.body1544
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	sw x11, 4 ( x18 )
	add x10, x10, 16
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_346
.LBB1_349:                              //  %if.then1554
                                        //    in Loop: Header=BB1_348 Depth=3
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x18, sp, 224
	beq x0, x10, .LBB1_347
	jal x0, .LBB1_260
.LBB1_350:                              //    in Loop: Header=BB1_16 Depth=2
	add x21, x21, 8
	add x11, x0, 16
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	add fp, x10, -1
	blt x0, fp, .LBB1_331
	jal x0, .LBB1_356
.LBB1_351:                              //  %if.then1056
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 8 ( x19 )
	add x11, x11, 1
	sw x11, 8 ( x19 )
	seqz x11, x0
	sw x11, 4 ( x21 )
	lw x11, 28 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x21 )
	lw x11, 292 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 292 ( sp )
	bltu x0, x11, .LBB1_384
.LBB1_352:                              //  %if.then1066
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	lw x20, 88 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB1_260
.LBB1_353:                              //  %if.then1066.if.end1072_crit_edge
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 308 ( sp )
	add x21, sp, 224
	jal x0, .LBB1_385
.LBB1_345:                              //  %while.end1562
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 8 ( x19 )
	sw fp, 4 ( x18 )
	add x10, fp, x10
	sw x10, 8 ( x19 )
.LBB1_341:                              //  %if.then1517
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_342
.LBB1_308:                              //  %if.then1529
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x18, sp, 224
	beq x0, x10, .LBB1_309
	jal x0, .LBB1_260
.LBB1_342:                              //    in Loop: Header=BB1_16 Depth=2
	add x18, x18, 8
.LBB1_309:                              //  %if.end1598
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 36 ( sp )               //  4-byte Folded Reload
	lw x10, 8 ( x19 )
	sw x11, 4 ( x18 )
	add x10, x11, x10
	sw x10, 8 ( x19 )
	add x10, sp, 301
	sw x10, 0 ( x18 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_354
.LBB1_310:                              //  %if.then1609
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x21, sp, 224
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	beq x0, x10, .LBB1_356
	jal x0, .LBB1_260
.LBB1_354:                              //    in Loop: Header=BB1_16 Depth=2
	add x21, x18, 8
.LBB1_355:                              //  %if.end1617
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x18, 100 ( sp )              //  4-byte Folded Reload
.LBB1_356:                              //  %if.end1617
                                        //    in Loop: Header=BB1_16 Depth=2
	and x10, x9, 4
	beq x0, x10, .LBB1_366
.LBB1_357:                              //  %if.then1620
                                        //    in Loop: Header=BB1_16 Depth=2
	sub fp, x22, x18
	bge x0, fp, .LBB1_366
.LBB1_358:                              //  %while.cond1625.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 108 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	bltu x0, x10, .LBB1_364
.LBB1_359:                              //  %while.body1628.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	add x11, x0, 16
	jal x0, .LBB1_362
.LBB1_360:                              //    in Loop: Header=BB1_362 Depth=3
	add x21, x21, 8
.LBB1_361:                              //  %if.end1644
                                        //    in Loop: Header=BB1_362 Depth=3
	lw x10, 108 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	add x11, x0, 16
	sw x10, 0 ( x21 )
	bge x11, fp, .LBB1_364
.LBB1_362:                              //  %while.body1628
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	sw x11, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_360
.LBB1_363:                              //  %if.then1638
                                        //    in Loop: Header=BB1_362 Depth=3
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x21, sp, 224
	beq x0, x10, .LBB1_361
	jal x0, .LBB1_260
.LBB1_364:                              //    in Loop: Header=BB1_16 Depth=2
	add x10, x21, 4
	sw fp, 0 ( x10 )
	lw x10, 8 ( x19 )
	lw x11, 292 ( sp )
	add x10, fp, x10
	add x12, x11, 1
	slti x11, x11, 7
	sw x10, 8 ( x19 )
	sw x12, 292 ( sp )
	bltu x0, x11, .LBB1_367
.LBB1_365:                              //  %if.then1656
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	bltu x0, x10, .LBB1_260
.LBB1_366:                              //  %if.end1664thread-pre-split
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 296 ( sp )
.LBB1_367:                              //  %if.end1664
                                        //    in Loop: Header=BB1_16 Depth=2
	blt x18, x22, .LBB1_369
.LBB1_368:                              //  %if.end1664
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x22, x18
.LBB1_369:                              //  %if.end1664
                                        //    in Loop: Header=BB1_16 Depth=2
	add x20, x20, x22
	beq x0, x10, .LBB1_371
.LBB1_370:                              //  %land.lhs.true1674
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	bltu x0, x10, .LBB1_260
.LBB1_371:                              //  %if.end1678
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 80 ( sp )               //  4-byte Folded Reload
	mv fp, x26
	sw x0, 292 ( sp )
	bltu x0, x11, .LBB1_372
.LBB1_549:                              //  %if.end1678
                                        //    in Loop: Header=BB1_13 Depth=1
	jal x0, .LBB1_13
.LBB1_372:                              //  %if.then1683
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	jal _free_r
	mv fp, x26
	add x21, sp, 224
	mv x9, fp
	lbu x10, 0 ( x9 )
	beq x0, x10, .LBB1_550
.LBB1_551:                              //  %if.then1683
                                        //    in Loop: Header=BB1_13 Depth=1
	jal x0, .LBB1_14
.LBB1_550:                              //  %if.then1683
                                        //    in Loop: Header=BB1_16 Depth=2
	jal x0, .LBB1_16
.LBB1_373:                              //    in Loop: Header=BB1_16 Depth=2
	add x21, x21, 8
.LBB1_374:                              //  %if.end1185
                                        //    in Loop: Header=BB1_16 Depth=2
	blt x27, x9, .LBB1_376
.LBB1_375:                              //  %if.end1185
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x9, x27
.LBB1_376:                              //  %if.end1185
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	add x11, x0, 16
	sub x9, x10, x9
	bge x0, x9, .LBB1_393
.LBB1_377:                              //  %while.cond1196.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, x9, 17
	beq x0, x10, .LBB1_382
	jal x0, .LBB1_378
.LBB1_380:                              //    in Loop: Header=BB1_382 Depth=3
	add x21, x21, 8
.LBB1_381:                              //  %if.end1215
                                        //    in Loop: Header=BB1_382 Depth=3
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	add x9, x9, -16
	add x11, x0, 16
	sw x10, 0 ( x21 )
	bge x11, x9, .LBB1_378
.LBB1_382:                              //  %while.body1199
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	sw x11, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_380
.LBB1_383:                              //  %if.then1209
                                        //    in Loop: Header=BB1_382 Depth=3
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x21, sp, 224
	beq x0, x10, .LBB1_381
	jal x0, .LBB1_259
.LBB1_378:                              //  %while.end1217
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 8 ( x19 )
	sw x9, 4 ( x21 )
	add x10, x9, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_390
.LBB1_379:                              //  %if.then1227
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	lw x11, 112 ( sp )              //  4-byte Folded Reload
	add x21, sp, 224
	beq x0, x10, .LBB1_391
	jal x0, .LBB1_259
.LBB1_393:                              //    in Loop: Header=BB1_16 Depth=2
	lw x11, 112 ( sp )              //  4-byte Folded Reload
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	add x18, x10, fp
	and x10, x11, 1024
	beq x0, x10, .LBB1_392
.LBB1_394:                              //  %while.cond1239.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 104 ( sp )              //  4-byte Folded Reload
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	blt x0, x10, .LBB1_408
.LBB1_395:                              //  %while.cond1239.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	blt x0, x20, .LBB1_408
.LBB1_396:                              //  %while.end1355
                                        //    in Loop: Header=BB1_16 Depth=2
	add x9, x11, fp
	bltu x9, x18, .LBB1_398
.LBB1_397:                              //  %while.end1355
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x9, x18
.LBB1_398:                              //  %while.end1355
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x25, 92 ( sp )               //  4-byte Folded Reload
	lw x20, 88 ( sp )               //  4-byte Folded Reload
	mv x27, x0
	jal x0, .LBB1_399
.LBB1_384:                              //    in Loop: Header=BB1_16 Depth=2
	lw x20, 88 ( sp )               //  4-byte Folded Reload
	add x21, x21, 8
.LBB1_385:                              //  %if.end1072
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x12, 104 ( sp )              //  4-byte Folded Reload
	and x11, x9, 1
	or x11, x12, x11
	or x11, x10, x11
	beq x0, x11, .LBB1_356
.LBB1_386:                              //  %if.then1079
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x12, 40 ( sp )               //  4-byte Folded Reload
	lw x11, 8 ( x19 )
	sw x12, 4 ( x21 )
	add x11, x12, x11
	sw x11, 8 ( x19 )
	lw x11, 32 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x21 )
	lw x11, 292 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 292 ( sp )
	bltu x0, x11, .LBB1_434
.LBB1_387:                              //  %if.then1089
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	bltu x0, x10, .LBB1_260
.LBB1_388:                              //  %if.then1089.if.end1095_crit_edge
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 308 ( sp )
	add x11, sp, 224
	bge x10, x0, .LBB1_527
	jal x0, .LBB1_435
.LBB1_390:                              //    in Loop: Header=BB1_16 Depth=2
	lw x11, 112 ( sp )              //  4-byte Folded Reload
	add x21, x21, 8
.LBB1_391:                              //  %cleanup.cont
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	add x18, x10, fp
	and x10, x11, 1024
	bltu x0, x10, .LBB1_394
.LBB1_392:                              //    in Loop: Header=BB1_16 Depth=2
	lw x20, 88 ( sp )               //  4-byte Folded Reload
	mv x9, x18
.LBB1_399:                              //  %if.end1362
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 112 ( sp )              //  4-byte Folded Reload
	lw x10, 308 ( sp )
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	and x11, x11, 1
	bltu x0, x11, .LBB1_401
.LBB1_400:                              //  %if.end1362
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 104 ( sp )              //  4-byte Folded Reload
	bge x10, x11, .LBB1_442
.LBB1_401:                              //  %if.then1368
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x12, 40 ( sp )               //  4-byte Folded Reload
	lw x11, 8 ( x19 )
	sw x12, 4 ( x21 )
	add x11, x12, x11
	sw x11, 8 ( x19 )
	lw x11, 32 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x21 )
	lw x11, 292 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 292 ( sp )
	bltu x0, x11, .LBB1_441
.LBB1_402:                              //  %if.then1378
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	bltu x0, x10, .LBB1_260
.LBB1_403:                              //  %if.then1378.if.end1385_crit_edge
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 308 ( sp )
	add x21, sp, 224
	jal x0, .LBB1_442
.LBB1_405:                              //  %while.cond35.preheader.i
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 100 ( sp )              //  4-byte Folded Reload
	sub x10, x11, x20
	add x10, x10, 1
	bge x0, x10, .LBB1_468
.LBB1_406:                              //  %while.body39.i.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x24, 16 ( sp )               //  4-byte Folded Reload
	lw x25, 92 ( sp )               //  4-byte Folded Reload
	lw x13, 96 ( sp )               //  4-byte Folded Reload
	lw x27, 76 ( sp )               //  4-byte Folded Reload
	sub x10, x11, x19
.LBB1_407:                              //  %while.body39.i
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x11, x0, 48
	sb x11, 0 ( x9 )
	add x9, x9, 1
	add x10, x10, -1
	blt x0, x10, .LBB1_407
	jal x0, .LBB1_469
.LBB1_404:                              //    in Loop: Header=BB1_16 Depth=2
	mv x24, x25
	jal x0, .LBB1_463
.LBB1_408:                              //  %while.body1244.lr.ph
                                        //    in Loop: Header=BB1_16 Depth=2
	slt x27, x0, x10
	add x10, x11, fp
	sw x10, 76 ( sp )               //  4-byte Folded Spill
.LBB1_409:                              //  %while.body1244
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_428 Depth 4
	lw x11, 48 ( sp )               //  4-byte Folded Reload
	lw x10, 8 ( x19 )
	and x25, x27, 1
	sw x11, 4 ( x21 )
	add x10, x11, x10
	sw x10, 8 ( x19 )
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	sw x11, 292 ( sp )
	bltu x0, x25, .LBB1_411
.LBB1_410:                              //  %while.body1244
                                        //    in Loop: Header=BB1_409 Depth=3
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	add x11, x11, -1
	sw x11, 96 ( sp )               //  4-byte Folded Spill
.LBB1_411:                              //  %while.body1244
                                        //    in Loop: Header=BB1_409 Depth=3
	slti x10, x10, 7
	bltu x0, x10, .LBB1_413
.LBB1_412:                              //  %if.then1262
                                        //    in Loop: Header=BB1_409 Depth=3
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x21, sp, 224
	add x11, x0, 16
	beq x0, x10, .LBB1_414
	jal x0, .LBB1_269
.LBB1_413:                              //    in Loop: Header=BB1_409 Depth=3
	add x21, x21, 8
	add x11, x0, 16
.LBB1_414:                              //  %if.end1268
                                        //    in Loop: Header=BB1_409 Depth=3
	lw x12, 96 ( sp )               //  4-byte Folded Reload
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	lb x9, 0 ( x12 )
	sub x10, x10, x18
	blt x9, x10, .LBB1_416
.LBB1_415:                              //  %if.end1268
                                        //    in Loop: Header=BB1_409 Depth=3
	mv x9, x10
.LBB1_416:                              //  %if.end1268
                                        //    in Loop: Header=BB1_409 Depth=3
	bge x0, x9, .LBB1_420
.LBB1_417:                              //  %if.then1282
                                        //    in Loop: Header=BB1_409 Depth=3
	lw x10, 8 ( x19 )
	sw x9, 4 ( x21 )
	sw x18, 0 ( x21 )
	add x10, x9, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_419
.LBB1_418:                              //  %if.then1292
                                        //    in Loop: Header=BB1_409 Depth=3
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x21, sp, 224
	add x11, x0, 16
	beq x0, x10, .LBB1_420
	jal x0, .LBB1_269
.LBB1_419:                              //    in Loop: Header=BB1_409 Depth=3
	add x21, x21, 8
	add x11, x0, 16
.LBB1_420:                              //  %if.end1299
                                        //    in Loop: Header=BB1_409 Depth=3
	mv x10, x0
	blt x10, x9, .LBB1_422
.LBB1_421:                              //  %if.end1299
                                        //    in Loop: Header=BB1_409 Depth=3
	mv x9, x0
.LBB1_422:                              //  %if.end1299
                                        //    in Loop: Header=BB1_409 Depth=3
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	lb x10, 0 ( x10 )
	sub x9, x10, x9
	bge x0, x9, .LBB1_430
.LBB1_423:                              //  %while.cond1311.preheader
                                        //    in Loop: Header=BB1_409 Depth=3
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, x9, 17
	beq x0, x10, .LBB1_428
	jal x0, .LBB1_424
.LBB1_426:                              //    in Loop: Header=BB1_428 Depth=4
	add x21, x21, 8
.LBB1_427:                              //  %if.end1330
                                        //    in Loop: Header=BB1_428 Depth=4
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	add x9, x9, -16
	add x11, x0, 16
	sw x10, 0 ( x21 )
	bge x11, x9, .LBB1_424
.LBB1_428:                              //  %while.body1314
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //        Parent Loop BB1_409 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	lw x10, 8 ( x19 )
	sw x11, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_426
.LBB1_429:                              //  %if.then1324
                                        //    in Loop: Header=BB1_428 Depth=4
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x21, sp, 224
	beq x0, x10, .LBB1_427
	jal x0, .LBB1_269
.LBB1_424:                              //  %while.end1332
                                        //    in Loop: Header=BB1_409 Depth=3
	lw x10, 8 ( x19 )
	sw x9, 4 ( x21 )
	add x10, x9, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_431
.LBB1_425:                              //  %if.then1342
                                        //    in Loop: Header=BB1_409 Depth=3
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	lw x11, 104 ( sp )              //  4-byte Folded Reload
	add x21, sp, 224
	beq x0, x10, .LBB1_432
	jal x0, .LBB1_269
.LBB1_430:                              //    in Loop: Header=BB1_409 Depth=3
	lw x11, 104 ( sp )              //  4-byte Folded Reload
	jal x0, .LBB1_432
.LBB1_431:                              //    in Loop: Header=BB1_409 Depth=3
	lw x11, 104 ( sp )              //  4-byte Folded Reload
	add x21, x21, 8
.LBB1_432:                              //  %cleanup.cont1352
                                        //    in Loop: Header=BB1_409 Depth=3
	xor x10, x27, -1
	and x10, x10, 1
	sub x20, x20, x10
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	lw x12, 72 ( sp )               //  4-byte Folded Reload
	lb x10, 0 ( x10 )
	sub x12, x12, x25
	slt x27, x0, x12
	sw x12, 72 ( sp )               //  4-byte Folded Spill
	add x18, x10, x18
	blt x0, x12, .LBB1_409
.LBB1_433:                              //  %cleanup.cont1352
                                        //    in Loop: Header=BB1_409 Depth=3
	blt x0, x20, .LBB1_409
	jal x0, .LBB1_396
.LBB1_434:                              //    in Loop: Header=BB1_16 Depth=2
	add x11, x21, 8
	bge x10, x0, .LBB1_527
.LBB1_435:                              //  %while.cond1100.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x12, 116 ( sp )              //  4-byte Folded Reload
	sub x9, x0, x10
	sw x12, 0 ( x11 )
	add x12, x0, -17
	blt x12, x10, .LBB1_459
.LBB1_436:                              //  %while.body1103.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	add x12, x0, 16
	jal x0, .LBB1_439
.LBB1_437:                              //    in Loop: Header=BB1_439 Depth=3
	add x11, x11, 8
.LBB1_438:                              //  %if.end1119
                                        //    in Loop: Header=BB1_439 Depth=3
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	add x9, x9, -16
	add x12, x0, 16
	sw x10, 0 ( x11 )
	bge x12, x9, .LBB1_459
.LBB1_439:                              //  %while.body1103
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	sw x12, 4 ( x11 )
	add x10, x10, 16
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 292 ( sp )
	bltu x0, x10, .LBB1_437
.LBB1_440:                              //  %if.then1113
                                        //    in Loop: Header=BB1_439 Depth=3
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x11, sp, 224
	beq x0, x10, .LBB1_438
	jal x0, .LBB1_260
.LBB1_441:                              //    in Loop: Header=BB1_16 Depth=2
	add x21, x21, 8
.LBB1_442:                              //  %if.end1385
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x12, 104 ( sp )              //  4-byte Folded Reload
	add x11, x12, fp
	sub x10, x12, x10
	sub x11, x11, x9
	mv fp, x10
	blt x10, x11, .LBB1_444
.LBB1_443:                              //  %if.end1385
                                        //    in Loop: Header=BB1_16 Depth=2
	mv fp, x11
.LBB1_444:                              //  %if.end1385
                                        //    in Loop: Header=BB1_16 Depth=2
	bge x0, fp, .LBB1_450
.LBB1_445:                              //  %if.then1399
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 8 ( x19 )
	sw fp, 4 ( x21 )
	sw x9, 0 ( x21 )
	add x11, fp, x11
	sw x11, 8 ( x19 )
	lw x11, 292 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 292 ( sp )
	bltu x0, x11, .LBB1_448
.LBB1_446:                              //  %if.then1409
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	lw x9, 112 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB1_260
.LBB1_447:                              //  %if.then1409.if.end1416_crit_edge
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 308 ( sp )
	lw x11, 104 ( sp )              //  4-byte Folded Reload
	add x21, sp, 224
	sub x10, x11, x10
	bge x27, fp, .LBB1_449
	jal x0, .LBB1_451
.LBB1_450:                              //    in Loop: Header=BB1_16 Depth=2
	lw x9, 112 ( sp )               //  4-byte Folded Reload
	blt x27, fp, .LBB1_451
.LBB1_449:                              //  %if.end1416
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x11, x27
	add fp, x11, x10
	blt x0, fp, .LBB1_452
	jal x0, .LBB1_356
.LBB1_448:                              //    in Loop: Header=BB1_16 Depth=2
	lw x9, 112 ( sp )               //  4-byte Folded Reload
	add x21, x21, 8
	bge x27, fp, .LBB1_449
.LBB1_451:                              //    in Loop: Header=BB1_16 Depth=2
	sub x11, x0, fp
	add fp, x11, x10
	bge x0, fp, .LBB1_356
.LBB1_452:                              //  %while.cond1428.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	bltu x0, x10, .LBB1_332
.LBB1_453:                              //  %while.body1431.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	add x11, x0, 16
	jal x0, .LBB1_456
.LBB1_454:                              //    in Loop: Header=BB1_456 Depth=3
	add x21, x21, 8
.LBB1_455:                              //  %if.end1447
                                        //    in Loop: Header=BB1_456 Depth=3
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	add x11, x0, 16
	sw x10, 0 ( x21 )
	bge x11, fp, .LBB1_332
.LBB1_456:                              //  %while.body1431
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	sw x11, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB1_454
.LBB1_457:                              //  %if.then1441
                                        //    in Loop: Header=BB1_456 Depth=3
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x21, sp, 224
	beq x0, x10, .LBB1_455
	jal x0, .LBB1_260
.LBB1_332:                              //  %while.end1034
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 8 ( x19 )
	sw fp, 4 ( x21 )
	add x10, fp, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	beq x0, x10, .LBB1_528
.LBB1_333:                              //    in Loop: Header=BB1_16 Depth=2
	add x21, x21, 8
	and x10, x9, 4
	bltu x0, x10, .LBB1_357
	jal x0, .LBB1_366
.LBB1_459:                              //  %while.end1121
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 8 ( x19 )
	sw x9, 4 ( x11 )
	add x10, x9, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 292 ( sp )
	bltu x0, x10, .LBB1_526
.LBB1_460:                              //  %if.then1131
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	lw x9, 112 ( sp )               //  4-byte Folded Reload
	add x11, sp, 224
	beq x0, x10, .LBB1_527
	jal x0, .LBB1_260
.LBB1_461:                              //  %if.then74.if.end83_crit_edge.i
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 308 ( sp )
.LBB1_462:                              //  %if.end83.i
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x24, x25
	add x9, x10, x9
.LBB1_463:                              //  %if.end85.i
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 68 ( sp )               //  4-byte Folded Reload
	mv x12, x0
	lw x25, 92 ( sp )               //  4-byte Folded Reload
	mv x11, x20
	mv x13, x12
	jal __nedf2
	bltu x0, x10, .LBB1_465
.LBB1_464:                              //  %if.end89.thread.i
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x13, 96 ( sp )               //  4-byte Folded Reload
	sw x9, 328 ( sp )
	jal x0, .LBB1_469
.LBB1_465:                              //  %if.end89.i
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 328 ( sp )
	lw x13, 96 ( sp )               //  4-byte Folded Reload
	bgeu x10, x9, .LBB1_467
.LBB1_466:                              //  %while.body93.i
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x11, x10, 1
	sw x11, 328 ( sp )
	add x11, x0, 48
	sb x11, 0 ( x10 )
	lw x10, 328 ( sp )
	bltu x10, x9, .LBB1_466
.LBB1_467:                              //  %if.end96.loopexit.i
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x9, x10
	jal x0, .LBB1_469
.LBB1_468:                              //    in Loop: Header=BB1_16 Depth=2
	lw x24, 16 ( sp )               //  4-byte Folded Reload
	lw x25, 92 ( sp )               //  4-byte Folded Reload
	lw x13, 96 ( sp )               //  4-byte Folded Reload
	lw x27, 76 ( sp )               //  4-byte Folded Reload
.LBB1_469:                              //  %cvt.exit
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	sub x17, x9, fp
	sw x17, 104 ( sp )              //  4-byte Folded Spill
	or x16, x10, 256
	bltu x0, x27, .LBB1_476
.LBB1_470:                              //  %if.then343
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x9, 308 ( sp )
	add x18, x18, -2
	slti x10, x9, -3
	bltu x0, x10, .LBB1_480
.LBB1_471:                              //  %if.then343
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x12, 112 ( sp )              //  4-byte Folded Reload
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	blt x10, x9, .LBB1_481
.LBB1_472:                              //    in Loop: Header=BB1_16 Depth=2
	add x18, x0, 103
	jal x0, .LBB1_473
.LBB1_476:                              //  %if.else353
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x12, 112 ( sp )              //  4-byte Folded Reload
	xor x10, x18, 70
	bltu x0, x10, .LBB1_481
.LBB1_477:                              //  %if.else374.thread
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x9, 308 ( sp )
	lw x11, 100 ( sp )              //  4-byte Folded Reload
	and x10, x12, 1
	or x10, x11, x10
	blt x0, x9, .LBB1_487
.LBB1_478:                              //  %if.else389
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x19, x0
	beq x10, x19, .LBB1_519
.LBB1_479:                              //  %if.else389
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	lw x11, 100 ( sp )              //  4-byte Folded Reload
	add x10, x10, x11
	add x20, x10, 1
	jal x0, .LBB1_520
.LBB1_480:                              //    in Loop: Header=BB1_16 Depth=2
	lw x12, 112 ( sp )              //  4-byte Folded Reload
.LBB1_481:                              //  %if.end358
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, x0, 101
	blt x10, x18, .LBB1_485
.LBB1_482:                              //  %if.then361
                                        //    in Loop: Header=BB1_16 Depth=2
	or x10, x18, 32
	add x11, x0, 97
	beq x10, x11, .LBB1_489
.LBB1_483:                              //  %if.then361
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x11, x18
	lw x14, 308 ( sp )
	seqz x15, x0
	add x12, x14, -1
	blt x14, x15, .LBB1_484
.LBB1_490:                              //  %if.then361
                                        //    in Loop: Header=BB1_16 Depth=2
	add x13, x0, 43
	mv x20, x12
	jal x0, .LBB1_491
.LBB1_485:                              //  %if.else374
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x9, 308 ( sp )
	xor x10, x18, 102
	bltu x0, x10, .LBB1_473
.LBB1_486:                              //  %if.then377
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 100 ( sp )              //  4-byte Folded Reload
	and x10, x12, 1
	or x10, x11, x10
	bge x0, x9, .LBB1_478
.LBB1_487:                              //  %if.then380
                                        //    in Loop: Header=BB1_16 Depth=2
	add x18, x0, 102
	beq x0, x10, .LBB1_507
.LBB1_488:                              //  %if.then385
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	lw x11, 100 ( sp )              //  4-byte Folded Reload
	add x10, x10, x11
	add x20, x9, x10
	mv x19, x0
	and x10, x12, 1024
	bltu x0, x10, .LBB1_509
	jal x0, .LBB1_518
.LBB1_473:                              //  %if.else401
                                        //    in Loop: Header=BB1_16 Depth=2
	bge x9, x17, .LBB1_517
.LBB1_474:                              //  %if.else410
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	add x20, x10, x17
	blt x0, x9, .LBB1_508
.LBB1_475:                              //  %if.then414
                                        //    in Loop: Header=BB1_16 Depth=2
	sub x10, x20, x9
	mv x19, x0
	add x20, x10, 1
	mv x27, x19
	jal x0, .LBB1_523
.LBB1_517:                              //  %if.then404
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 40 ( sp )               //  4-byte Folded Reload
	and x10, x12, 1
	sub x10, x0, x10
	and x10, x11, x10
	add x20, x10, x9
	mv x19, x0
	and x10, x12, 1024
	bltu x0, x10, .LBB1_509
	jal x0, .LBB1_518
.LBB1_489:                              //    in Loop: Header=BB1_16 Depth=2
	add x11, x18, 15
	lw x14, 308 ( sp )
	seqz x15, x0
	add x12, x14, -1
	bge x14, x15, .LBB1_490
.LBB1_484:                              //    in Loop: Header=BB1_16 Depth=2
	add x13, x0, 45
	sub x20, x15, x14
.LBB1_491:                              //  %if.then361
                                        //    in Loop: Header=BB1_16 Depth=2
	sb x11, 301 ( sp )
	slti x11, x20, 10
	sw x12, 308 ( sp )
	sb x13, 302 ( sp )
	bltu x0, x11, .LBB1_499
.LBB1_492:                              //  %do.body.i.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	add x27, sp, 320
	add x19, x0, 6
	add x10, x0, -1
	sw x16, 76 ( sp )               //  4-byte Folded Spill
	sw x24, 16 ( sp )               //  4-byte Folded Spill
.LBB1_493:                              //  %do.body.i
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x25, x0, 10
	mv x24, x20
	mv x9, x10
	mv x10, x24
	mv x11, x25
	jal __divsi3
	mv x11, x25
	mv x20, x10
	jal __mulsi3
	sub x10, x24, x10
	add x12, x19, x27
	add x11, x10, 48
	sb x11, 0 ( x12 )
	add x10, x9, -1
	add x19, x19, -1
	add x12, x0, 99
	blt x12, x24, .LBB1_493
.LBB1_494:                              //  %do.end.i
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, x19, x27
	add x12, x20, 48
	sb x12, 0 ( x10 )
	lw x10, 24 ( sp )               //  4-byte Folded Reload
	lw x24, 16 ( sp )               //  4-byte Folded Reload
	lw x25, 92 ( sp )               //  4-byte Folded Reload
	lw x16, 76 ( sp )               //  4-byte Folded Reload
	add x13, x19, -7
	bge x13, x0, .LBB1_502
.LBB1_495:                              //  %for.inc.i.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	sb x12, 303 ( sp )
	xor x12, x19, 6
	beq x0, x12, .LBB1_502
.LBB1_496:                              //  %for.inc.for.inc_crit_edge.i.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	sb x11, 304 ( sp )
	xor x11, x19, 5
	add x10, sp, 305
	beq x0, x11, .LBB1_502
.LBB1_497:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, sp, 305
.LBB1_498:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x11, sp, 328
	add x11, x9, x11
	lb x11, 0 ( x11 )
	add x9, x9, 1
	sb x11, 0 ( x10 )
	add x10, x10, 1
	xor x11, x9, -1
	bltu x0, x11, .LBB1_498
	jal x0, .LBB1_502
.LBB1_499:                              //  %if.else23.i
                                        //    in Loop: Header=BB1_16 Depth=2
	xor x11, x10, 97
	lw x10, 24 ( sp )               //  4-byte Folded Reload
	beq x0, x11, .LBB1_501
.LBB1_500:                              //  %if.then25.i
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, x0, 48
	sb x10, 303 ( sp )
	lw x10, 20 ( sp )               //  4-byte Folded Reload
.LBB1_501:                              //  %if.end27.i
                                        //    in Loop: Header=BB1_16 Depth=2
	add x11, x20, 48
	sb x11, 0 ( x10 )
	add x10, x10, 1
.LBB1_502:                              //  %exponent.exit
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x17, 104 ( sp )              //  4-byte Folded Reload
	mv x13, x0
	add x12, x0, 2
	mv x11, x13
	blt x17, x12, .LBB1_504
.LBB1_503:                              //  %exponent.exit
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 40 ( sp )               //  4-byte Folded Reload
.LBB1_504:                              //  %exponent.exit
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x12, 112 ( sp )              //  4-byte Folded Reload
	mv x27, x13
	and x12, x12, 1
	beq x12, x13, .LBB1_506
.LBB1_505:                              //  %exponent.exit
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 40 ( sp )               //  4-byte Folded Reload
.LBB1_506:                              //  %exponent.exit
                                        //    in Loop: Header=BB1_16 Depth=2
	add x12, sp, 301
	sub x10, x10, x12
	mv x9, x27
	add x11, x17, x11
	and x16, x16, -1025
	sw x10, 36 ( sp )               //  4-byte Folded Spill
	add x20, x10, x11
	mv x19, x9
	jal x0, .LBB1_523
.LBB1_507:                              //    in Loop: Header=BB1_16 Depth=2
	mv x20, x9
.LBB1_508:                              //  %if.end419
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x19, x0
	and x10, x12, 1024
	beq x0, x10, .LBB1_518
.LBB1_509:                              //  %if.end419
                                        //    in Loop: Header=BB1_16 Depth=2
	bge x0, x9, .LBB1_518
.LBB1_510:                              //  %while.cond426.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	lb x10, 0 ( x13 )
	mv x19, x0
	sw x16, 76 ( sp )               //  4-byte Folded Spill
	xor x11, x10, 127
	beq x0, x11, .LBB1_521
.LBB1_511:                              //  %while.cond426.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	bge x10, x9, .LBB1_521
.LBB1_512:                              //  %if.end435.preheader
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x11, x0
	mv x19, x11
	mv x27, x11
.LBB1_513:                              //  %if.end435
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x13, 96 ( sp )               //  4-byte Folded Reload
	lbu x12, 1 ( x13 )
	beq x12, x11, .LBB1_515
.LBB1_514:                              //  %if.end435
                                        //    in Loop: Header=BB1_513 Depth=3
	add x13, x13, 1
.LBB1_515:                              //  %if.end435
                                        //    in Loop: Header=BB1_513 Depth=3
	sub x9, x9, x10
	snez x10, x12
	add x27, x10, x27
	seqz x10, x12
	add x19, x10, x19
	lb x10, 0 ( x13 )
	sw x13, 96 ( sp )               //  4-byte Folded Spill
	xor x12, x10, 127
	beq x0, x12, .LBB1_522
.LBB1_516:                              //  %if.end435
                                        //    in Loop: Header=BB1_513 Depth=3
	blt x10, x9, .LBB1_513
	jal x0, .LBB1_522
.LBB1_518:                              //    in Loop: Header=BB1_16 Depth=2
	mv x27, x19
	jal x0, .LBB1_523
.LBB1_521:                              //    in Loop: Header=BB1_16 Depth=2
	mv x27, x19
.LBB1_522:                              //  %while.end446
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x11, 48 ( sp )               //  4-byte Folded Reload
	add x10, x19, x27
	jal __mulsi3
	lw x16, 76 ( sp )               //  4-byte Folded Reload
	add x20, x20, x10
	jal x0, .LBB1_523
.LBB1_519:                              //    in Loop: Header=BB1_16 Depth=2
	seqz x20, x0
.LBB1_520:                              //  %if.else389
                                        //    in Loop: Header=BB1_16 Depth=2
	add x18, x0, 102
	mv x27, x19
.LBB1_523:                              //  %if.end452
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	mv x11, x0
	sw x19, 72 ( sp )               //  4-byte Folded Spill
	sw x9, 76 ( sp )                //  4-byte Folded Spill
	bge x10, x0, .LBB1_525
.LBB1_524:                              //  %if.then454
                                        //    in Loop: Header=BB1_16 Depth=2
	add x10, x0, 45
	sb x10, 315 ( sp )
.LBB1_525:                              //    in Loop: Header=BB1_16 Depth=2
	mv x9, x16
	mv x19, x27
	mv x12, x11
	mv x27, x11
	blt x20, x11, .LBB1_552
.LBB1_553:                              //    in Loop: Header=BB1_16 Depth=2
	jal x0, .LBB1_248
.LBB1_552:                              //    in Loop: Header=BB1_16 Depth=2
	jal x0, .LBB1_249
.LBB1_526:                              //    in Loop: Header=BB1_16 Depth=2
	lw x9, 112 ( sp )               //  4-byte Folded Reload
	add x11, x11, 8
.LBB1_527:                              //  %if.end1138
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x12, 104 ( sp )              //  4-byte Folded Reload
	lw x10, 8 ( x19 )
	sw fp, 0 ( x11 )
	sw x12, 4 ( x11 )
	add x10, x12, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 292 ( sp )
	bltu x0, x10, .LBB1_529
.LBB1_528:                              //  %if.then1044
                                        //    in Loop: Header=BB1_16 Depth=2
	mv x10, x25
	mv x11, x24
	mv x12, x19
	jal __sprint_r
	add x21, sp, 224
	beq x0, x10, .LBB1_356
	jal x0, .LBB1_260
.LBB1_529:                              //    in Loop: Header=BB1_16 Depth=2
	add x21, x11, 8
	and x10, x9, 4
	bltu x0, x10, .LBB1_357
	jal x0, .LBB1_366
.LBB1_530:                              //  %if.then
	mv x10, x25
	jal __sinit
	lhu x10, 12 ( x24 )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB1_554
.LBB1_555:                              //  %if.then
	jal x0, .LBB1_3
.LBB1_554:                              //  %if.then
	jal x0, .LBB1_4
.LBB1_268:
	mv x24, x25
.LBB1_269:
	lw x25, 92 ( sp )               //  4-byte Folded Reload
.LBB1_259:
	lw x20, 88 ( sp )               //  4-byte Folded Reload
.LBB1_260:                              //  %error
	lw x11, 80 ( sp )               //  4-byte Folded Reload
	beq x0, x11, .LBB1_262
.LBB1_261:                              //  %if.then1696
	mv x10, x25
	jal _free_r
.LBB1_262:                              //  %if.end1697
	lbu x10, 12 ( x24 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB1_9
.LBB1_263:                              //  %if.end1697
	add x20, x0, -1
.LBB1_9:                                //  %cleanup1719
	mv x10, x20
	lw fp, 332 ( sp )               //  4-byte Folded Reload
	lw x27, 336 ( sp )              //  4-byte Folded Reload
	lw x26, 340 ( sp )              //  4-byte Folded Reload
	lw x25, 344 ( sp )              //  4-byte Folded Reload
	lw x24, 348 ( sp )              //  4-byte Folded Reload
	lw x23, 352 ( sp )              //  4-byte Folded Reload
	lw x22, 356 ( sp )              //  4-byte Folded Reload
	lw x21, 360 ( sp )              //  4-byte Folded Reload
	lw x20, 364 ( sp )              //  4-byte Folded Reload
	lw x19, 368 ( sp )              //  4-byte Folded Reload
	lw x18, 372 ( sp )              //  4-byte Folded Reload
	lw x9, 376 ( sp )               //  4-byte Folded Reload
	lw ra, 380 ( sp )               //  4-byte Folded Reload
	add sp, sp, 384
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_531:                              //  %done
	lw x10, 296 ( sp )
	beq x0, x10, .LBB1_533
.LBB1_532:                              //  %land.lhs.true1687
	add x12, sp, 288
	mv x10, x25
	mv x11, x24
	jal __sprint_r
	bltu x0, x10, .LBB1_262
.LBB1_533:                              //  %if.end1691
	sw x0, 292 ( sp )
	lbu x10, 12 ( x24 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB1_9
	jal x0, .LBB1_263
.LBB1_534:                              //  %if.then309
	lh x10, 12 ( x24 )
	lw x20, 88 ( sp )               //  4-byte Folded Reload
	or x10, x10, 64
	sh x10, 12 ( x24 )
	lbu x10, 12 ( x24 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB1_9
	jal x0, .LBB1_263
.Lfunc_end1:
	.size	_vfprintf_r, .Lfunc_end1-_vfprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_38
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_40
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_41
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_46
	.long	.LBB1_48
	.long	.LBB1_130
	.long	.LBB1_51
	.long	.LBB1_30
	.long	.LBB1_130
	.long	.LBB1_52
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_75
	.long	.LBB1_130
	.long	.LBB1_90
	.long	.LBB1_100
	.long	.LBB1_75
	.long	.LBB1_75
	.long	.LBB1_75
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_53
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_108
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_91
	.long	.LBB1_130
	.long	.LBB1_114
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_120
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_75
	.long	.LBB1_130
	.long	.LBB1_90
	.long	.LBB1_101
	.long	.LBB1_75
	.long	.LBB1_75
	.long	.LBB1_75
	.long	.LBB1_55
	.long	.LBB1_101
	.long	.LBB1_37
	.long	.LBB1_130
	.long	.LBB1_57
	.long	.LBB1_130
	.long	.LBB1_66
	.long	.LBB1_109
	.long	.LBB1_122
	.long	.LBB1_37
	.long	.LBB1_130
	.long	.LBB1_91
	.long	.LBB1_50
	.long	.LBB1_115
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_123
	.long	.LBB1_130
	.long	.LBB1_50
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
