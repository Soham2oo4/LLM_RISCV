	.text
	.file	"svfprintf.c"
	.globl	_svfprintf_r            //  -- Begin function _svfprintf_r
	.type	_svfprintf_r,@function
_svfprintf_r:                           //  @_svfprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -384
	.cfi_adjust_cfa_offset 384
	sw x20, 364 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x24, 348 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x27, 336 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw ra, 380 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 376 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 372 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 368 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 360 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 356 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 352 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x25, 344 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 340 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw fp, 332 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv x27, x12
	mv x24, x11
	mv x20, x10
	sw x13, 316 ( sp )
	jal _localeconv_r
	lw x10, 0 ( x10 )
	sw x10, 32 ( sp )               //  4-byte Folded Spill
	jal strlen
	sw x10, 36 ( sp )               //  4-byte Folded Spill
	lbu x10, 12 ( x24 )
	and x10, x10, 128
	beq x0, x10, .LBB0_4
.LBB0_1:                                //  %land.lhs.true
	lw x10, 16 ( x24 )
	bltu x0, x10, .LBB0_4
.LBB0_2:                                //  %if.then
	add x18, x0, 64
	mv x10, x20
	mv x11, x18
	jal _malloc_r
	sw x10, 16 ( x24 )
	sw x10, 0 ( x24 )
	bltu x0, x10, .LBB0_3
.LBB0_536:                              //  %if.then
	jal x0, .LBB0_533
.LBB0_3:                                //  %if.end
	sw x18, 20 ( x24 )
.LBB0_4:                                //  %if.end11
	add x10, sp, 224
	sw x10, 288 ( sp )
	add x10, sp, 124
	add x10, x10, 100
	sw x10, 52 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _svfprintf_r.blanks )
	add x10, x10, %lo( _svfprintf_r.blanks )
	sw x10, 104 ( sp )              //  4-byte Folded Spill
	lui x10, %hi( _svfprintf_r.zeroes )
	add x10, x10, %lo( _svfprintf_r.zeroes )
	sw x10, 116 ( sp )              //  4-byte Folded Spill
	lui x10, %hi( .str.8 )
	add x10, x10, %lo( .str.8 )
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( JTI0_0 )
	add x10, x10, %lo( JTI0_0 )
	add x11, sp, 301
	mv x26, x0
	sw x10, 76 ( sp )               //  4-byte Folded Spill
	add x10, x11, 2
	add x19, sp, 288
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	add x10, x11, 3
	add x23, x0, 10
	add x13, x0, 16
	mv x18, x26
	sw x0, 8 ( x19 )
	sw x26, 60 ( sp )               //  4-byte Folded Spill
	sw x0, 292 ( sp )
	sw x26, 96 ( sp )               //  4-byte Folded Spill
	sw x26, 64 ( sp )               //  4-byte Folded Spill
	sw x26, 28 ( sp )               //  4-byte Folded Spill
	sw x26, 84 ( sp )               //  4-byte Folded Spill
	sw x26, 88 ( sp )               //  4-byte Folded Spill
	sw x26, 44 ( sp )               //  4-byte Folded Spill
	sw x26, 40 ( sp )               //  4-byte Folded Spill
	sw x10, 16 ( sp )               //  4-byte Folded Spill
	sw x20, 100 ( sp )              //  4-byte Folded Spill
	sw x24, 112 ( sp )              //  4-byte Folded Spill
.LBB0_5:                                //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_8 Depth 2
                                        //        Child Loop BB0_15 Depth 3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_24 Depth 6
                                        //            Child Loop BB0_18 Depth 5
                                        //        Child Loop BB0_125 Depth 3
                                        //        Child Loop BB0_130 Depth 3
                                        //        Child Loop BB0_168 Depth 3
                                        //        Child Loop BB0_164 Depth 3
                                        //        Child Loop BB0_448 Depth 3
                                        //        Child Loop BB0_350 Depth 3
                                        //        Child Loop BB0_375 Depth 3
                                        //        Child Loop BB0_357 Depth 3
                                        //        Child Loop BB0_476 Depth 3
                                        //        Child Loop BB0_487 Depth 3
                                        //        Child Loop BB0_492 Depth 3
                                        //        Child Loop BB0_191 Depth 3
                                        //        Child Loop BB0_209 Depth 3
                                        //        Child Loop BB0_219 Depth 3
                                        //        Child Loop BB0_270 Depth 3
                                        //        Child Loop BB0_316 Depth 3
                                        //        Child Loop BB0_377 Depth 3
                                        //          Child Loop BB0_392 Depth 4
                                        //        Child Loop BB0_436 Depth 3
                                        //        Child Loop BB0_419 Depth 3
                                        //        Child Loop BB0_260 Depth 3
                                        //        Child Loop BB0_410 Depth 3
                                        //      Child Loop BB0_6 Depth 2
	add x21, sp, 224
	mv fp, x27
	lbu x10, 0 ( fp )
	beq x0, x10, .LBB0_8
.LBB0_6:                                //  %while.cond
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	xor x11, x10, 37
	beq x0, x11, .LBB0_8
.LBB0_7:                                //  %while.body
                                        //    in Loop: Header=BB0_6 Depth=2
	add fp, fp, 1
	lbu x10, 0 ( fp )
	bltu x0, x10, .LBB0_6
.LBB0_8:                                //  %while.end
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_15 Depth 3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_24 Depth 6
                                        //            Child Loop BB0_18 Depth 5
                                        //        Child Loop BB0_125 Depth 3
                                        //        Child Loop BB0_130 Depth 3
                                        //        Child Loop BB0_168 Depth 3
                                        //        Child Loop BB0_164 Depth 3
                                        //        Child Loop BB0_448 Depth 3
                                        //        Child Loop BB0_350 Depth 3
                                        //        Child Loop BB0_375 Depth 3
                                        //        Child Loop BB0_357 Depth 3
                                        //        Child Loop BB0_476 Depth 3
                                        //        Child Loop BB0_487 Depth 3
                                        //        Child Loop BB0_492 Depth 3
                                        //        Child Loop BB0_191 Depth 3
                                        //        Child Loop BB0_209 Depth 3
                                        //        Child Loop BB0_219 Depth 3
                                        //        Child Loop BB0_270 Depth 3
                                        //        Child Loop BB0_316 Depth 3
                                        //        Child Loop BB0_377 Depth 3
                                        //          Child Loop BB0_392 Depth 4
                                        //        Child Loop BB0_436 Depth 3
                                        //        Child Loop BB0_419 Depth 3
                                        //        Child Loop BB0_260 Depth 3
                                        //        Child Loop BB0_410 Depth 3
	sub x9, fp, x27
	beq x0, x9, .LBB0_13
.LBB0_9:                                //  %if.then19
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x19 )
	sw x9, 4 ( x21 )
	sw x27, 0 ( x21 )
	add x10, x9, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_11
.LBB0_10:                               //  %if.then24
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	add x13, x0, 16
	add x21, sp, 224
	beq x0, x10, .LBB0_12
	jal x0, .LBB0_527
.LBB0_11:                               //    in Loop: Header=BB0_8 Depth=2
	add x21, x21, 8
.LBB0_12:                               //  %if.end30
                                        //    in Loop: Header=BB0_8 Depth=2
	lbu x10, 0 ( fp )
	add x18, x18, x9
.LBB0_13:                               //  %if.end32
                                        //    in Loop: Header=BB0_8 Depth=2
	bltu x0, x10, .LBB0_14
.LBB0_537:                              //  %if.end32
	jal x0, .LBB0_530
.LBB0_14:                               //  %if.end37
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11, x0, -1
	add x10, fp, 1
	mv x22, x26
	sw x26, 108 ( sp )              //  4-byte Folded Spill
	sb x0, 315 ( sp )
	sw x11, 92 ( sp )               //  4-byte Folded Spill
	sw x18, 80 ( sp )               //  4-byte Folded Spill
.LBB0_15:                               //  %rflag
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_24 Depth 6
                                        //            Child Loop BB0_18 Depth 5
	lb x9, 0 ( x10 )
	lw fp, 108 ( sp )               //  4-byte Folded Reload
	add x25, x10, 1
.LBB0_16:                               //  %reswitch
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_24 Depth 6
                                        //            Child Loop BB0_18 Depth 5
	add x10, x9, -49
	sltiu x10, x10, 9
	beq x0, x10, .LBB0_19
.LBB0_17:                               //  %do.body.preheader
                                        //    in Loop: Header=BB0_16 Depth=4
	mv x22, x26
.LBB0_18:                               //  %do.body
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	hackaton_custom_instr_c x10, x23, x22
	add x10, x10, x9
	lb x9, 0 ( x25 )
	add x22, x10, -48
	add x25, x25, 1
	add x10, x9, -48
	sltiu x10, x10, 10
	bltu x0, x10, .LBB0_18
	jal x0, .LBB0_16
.LBB0_27:                               //    in Loop: Header=BB0_19 Depth=5
	mv x11, x0
	mv x25, x10
	sw x11, 92 ( sp )               //  4-byte Folded Spill
	add x10, x9, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB0_17
.LBB0_19:                               //  %reswitch
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //  =>        This Loop Header: Depth=5
                                        //              Child Loop BB0_24 Depth 6
	add x10, x9, -32
	add x11, x0, 90
	bltu x11, x10, .LBB0_142
.LBB0_20:                               //  %reswitch
                                        //    in Loop: Header=BB0_19 Depth=5
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB0_21:                               //  %sw.bb69
                                        //    in Loop: Header=BB0_19 Depth=5
	lb x9, 0 ( x25 )
	add x10, x25, 1
	xor x11, x9, 42
	beq x0, x11, .LBB0_54
.LBB0_22:                               //  %while.cond81.preheader
                                        //    in Loop: Header=BB0_19 Depth=5
	add x12, x9, -48
	add x11, x0, 9
	bltu x11, x12, .LBB0_27
.LBB0_23:                               //  %while.body85.preheader
                                        //    in Loop: Header=BB0_19 Depth=5
	mv x11, x0
	mv x25, x10
.LBB0_24:                               //  %while.body85
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //            Parent Loop BB0_19 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	lb x9, 0 ( x25 )
	hackaton_custom_instr_c x10, x23, x11
	add x11, x10, x12
	add x25, x25, 1
	add x12, x9, -48
	sltiu x10, x12, 10
	bltu x0, x10, .LBB0_24
.LBB0_25:                               //  %while.end90
                                        //    in Loop: Header=BB0_19 Depth=5
	add x10, x0, -1
	sw x10, 92 ( sp )               //  4-byte Folded Spill
	blt x11, x0, .LBB0_16
.LBB0_26:                               //  %while.end90.thread
                                        //    in Loop: Header=BB0_19 Depth=5
	sw x11, 92 ( sp )               //  4-byte Folded Spill
	add x10, x9, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB0_17
	jal x0, .LBB0_19
.LBB0_28:                               //  %sw.bb127
                                        //    in Loop: Header=BB0_15 Depth=3
	or fp, fp, 32
	jal x0, .LBB0_45
.LBB0_29:                               //  %sw.bb55
                                        //    in Loop: Header=BB0_15 Depth=3
	lbu x11, 315 ( sp )
	mv x10, x25
	bltu x0, x11, .LBB0_15
.LBB0_30:                               //  %if.then57
                                        //    in Loop: Header=BB0_15 Depth=3
	add x10, x0, 32
	jal x0, .LBB0_40
.LBB0_31:                               //  %sw.bb59
                                        //    in Loop: Header=BB0_15 Depth=3
	or fp, fp, 1
	jal x0, .LBB0_45
.LBB0_32:                               //  %sw.bb
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x10, x20
	jal _localeconv_r
	lw x10, 4 ( x10 )
	sw x10, 40 ( sp )               //  4-byte Folded Spill
	jal strlen
	mv fp, x10
	mv x10, x20
	jal _localeconv_r
	lw x10, 8 ( x10 )
	add x13, x0, 16
	sw fp, 44 ( sp )                //  4-byte Folded Spill
	sw x10, 88 ( sp )               //  4-byte Folded Spill
	mv x10, x25
	beq x0, fp, .LBB0_15
.LBB0_33:                               //  %sw.bb
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x11, 88 ( sp )               //  4-byte Folded Reload
	mv x10, x25
	beq x0, x11, .LBB0_15
.LBB0_34:                               //  %land.lhs.true50
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x0
	lbu x10, 0 ( x10 )
	beq x10, x11, .LBB0_36
.LBB0_35:                               //  %land.lhs.true50
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 108 ( sp )              //  4-byte Folded Reload
	or x10, x10, 1024
	sw x10, 108 ( sp )              //  4-byte Folded Spill
.LBB0_36:                               //  %land.lhs.true50
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x10, x25
	jal x0, .LBB0_15
.LBB0_37:                               //  %sw.bb61
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x22, 0 ( x10 )
	mv x10, x25
	bge x22, x0, .LBB0_15
.LBB0_38:                               //  %if.end65
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 108 ( sp )              //  4-byte Folded Reload
	sub x22, x0, x22
	or x10, x10, 4
	sw x10, 108 ( sp )              //  4-byte Folded Spill
	mv x10, x25
	jal x0, .LBB0_15
.LBB0_39:                               //  %sw.bb68
                                        //    in Loop: Header=BB0_15 Depth=3
	add x10, x0, 43
.LBB0_40:                               //  %rflag
                                        //    in Loop: Header=BB0_15 Depth=3
	sb x10, 315 ( sp )
.LBB0_41:                               //  %rflag.backedge.loopexit
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x10, x25
	jal x0, .LBB0_15
.LBB0_42:                               //  %sw.bb66.loopexit
                                        //    in Loop: Header=BB0_15 Depth=3
	or fp, fp, 4
	jal x0, .LBB0_45
.LBB0_43:                               //  %sw.bb93
                                        //    in Loop: Header=BB0_15 Depth=3
	or fp, fp, 128
	jal x0, .LBB0_45
.LBB0_44:                               //  %sw.bb104
                                        //    in Loop: Header=BB0_15 Depth=3
	or fp, fp, 8
.LBB0_45:                               //  %rflag
                                        //    in Loop: Header=BB0_15 Depth=3
	sw fp, 108 ( sp )               //  4-byte Folded Spill
	mv x10, x25
	jal x0, .LBB0_15
.LBB0_46:                               //  %sw.bb106
                                        //    in Loop: Header=BB0_15 Depth=3
	lbu x10, 0 ( x25 )
	add x11, x0, 104
	beq x10, x11, .LBB0_51
.LBB0_47:                               //  %sw.bb106
                                        //    in Loop: Header=BB0_15 Depth=3
	add x11, x0, 64
	jal x0, .LBB0_50
.LBB0_48:                               //  %sw.bb115
                                        //    in Loop: Header=BB0_15 Depth=3
	lbu x10, 0 ( x25 )
	add x11, x0, 108
	beq x10, x11, .LBB0_52
.LBB0_49:                               //  %sw.bb115
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x11, x13
.LBB0_50:                               //  %sw.bb106
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x10, x25
	jal x0, .LBB0_53
.LBB0_51:                               //    in Loop: Header=BB0_15 Depth=3
	add x10, x25, 1
	add x11, x0, 512
	jal x0, .LBB0_53
.LBB0_52:                               //    in Loop: Header=BB0_15 Depth=3
	add x10, x25, 1
	add x11, x0, 32
.LBB0_53:                               //  %sw.bb106
                                        //    in Loop: Header=BB0_15 Depth=3
	or fp, fp, x11
	sw fp, 108 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_15
.LBB0_54:                               //  %if.then74
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x11, 316 ( sp )
	add x12, x11, 4
	sw x12, 316 ( sp )
	lw x12, 0 ( x11 )
	add x11, x0, -1
	blt x11, x12, .LBB0_56
.LBB0_55:                               //  %if.then74
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x12, x11
.LBB0_56:                               //  %if.then74
                                        //    in Loop: Header=BB0_15 Depth=3
	sw x12, 92 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_15
.LBB0_57:                               //  %sw.bb389
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 32
	bltu x0, x10, .LBB0_62
.LBB0_58:                               //  %if.else395
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 16
	bltu x0, x10, .LBB0_61
.LBB0_59:                               //  %if.else400
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 64
	bltu x0, x10, .LBB0_64
.LBB0_60:                               //  %if.else406
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 512
	bltu x0, x10, .LBB0_65
.LBB0_61:                               //  %if.then398
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x10, 0 ( x10 )
	jal x0, .LBB0_63
.LBB0_62:                               //  %if.then392
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x10, 0 ( x10 )
	sra x11, x18, 31&31
	sw x11, 4 ( x10 )
.LBB0_63:                               //  %for.cond
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x18, 0 ( x10 )
	mv x27, x25
	mv fp, x27
	lbu x10, 0 ( fp )
	bltu x0, x10, .LBB0_6
	jal x0, .LBB0_8
.LBB0_64:                               //  %if.then403
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	mv x27, x25
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x10, 0 ( x10 )
	sh x18, 0 ( x10 )
	mv fp, x27
	lbu x10, 0 ( fp )
	bltu x0, x10, .LBB0_6
	jal x0, .LBB0_8
.LBB0_65:                               //  %if.then409
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	mv x27, x25
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x10, 0 ( x10 )
	sb x18, 0 ( x10 )
	mv fp, x27
	lbu x10, 0 ( fp )
	bltu x0, x10, .LBB0_6
	jal x0, .LBB0_8
.LBB0_66:                               //  %sw.bb177
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 8
	bltu x0, x10, .LBB0_68
.LBB0_67:                               //  %if.else184
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	add x11, x10, 8
	lw x19, 0 ( x10 )
	sw x11, 316 ( sp )
	lw x26, 4 ( x10 )
	jal x0, .LBB0_69
.LBB0_68:                               //  %if.then180
                                        //    in Loop: Header=BB0_8 Depth=2
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
	mv x19, x10
	mv x26, x11
.LBB0_69:                               //  %if.end187
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	mv x20, x0
	and x11, x10, x26
	lui x13, (2146435072>>12)&1048575
	mv x10, x19
	mv x12, x20
	jal __nedf2
	sw x26, 60 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB0_74
.LBB0_70:                               //  %if.then190
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x24, x0
	mv x13, x24
	mv x10, x19
	mv x11, x26
	mv x12, x24
	jal __ltdf2
	bge x10, x0, .LBB0_72
.LBB0_71:                               //  %if.then194
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 45
	sb x10, 315 ( sp )
.LBB0_72:                               //  %if.end195
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 72
	add x13, x0, 16
	blt x9, x10, .LBB0_78
.LBB0_73:                               //  %if.end195
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.1 )
	add x27, x10, %lo( .str.1 )
	jal x0, .LBB0_79
.LBB0_74:                               //  %if.end202
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x19
	mv x13, x26
	mv x11, x26
	mv x12, x19
	jal __unorddf2
	bltu x0, x10, .LBB0_86
.LBB0_75:                               //  %if.end223
                                        //    in Loop: Header=BB0_8 Depth=2
	or fp, x9, 32
	xor x18, fp, 97
	bltu x0, x18, .LBB0_145
.LBB0_76:                               //  %if.then228
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 97
	beq x9, x10, .LBB0_282
.LBB0_77:                               //  %if.then228
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 88
	jal x0, .LBB0_283
.LBB0_78:                               //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str )
	add x27, x10, %lo( .str )
.LBB0_79:                               //  %if.end195
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x11, x24
	add x10, x0, 3
	and fp, fp, -129
	sw x24, 72 ( sp )               //  4-byte Folded Spill
	mv x18, x24
	jal x0, .LBB0_182
.LBB0_80:                               //  %sw.bb131
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	mv x24, x0
	seqz x20, x0
	mv x18, x24
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x10, 0 ( x10 )
	mv x11, x24
	sb x0, 315 ( sp )
	sw x24, 72 ( sp )               //  4-byte Folded Spill
	sb x10, 124 ( sp )
	mv x10, x20
	sw x24, 68 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_144
.LBB0_81:                               //  %sw.bb462
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x27, 0 ( x10 )
	sb x0, 315 ( sp )
	beq x0, x27, .LBB0_148
.LBB0_82:                               //  %if.else473
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x19, 84 ( sp )               //  4-byte Folded Reload
	lw x20, 92 ( sp )               //  4-byte Folded Reload
	blt x20, x0, .LBB0_289
.LBB0_83:                               //  %if.then476
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x24, x0
	mv x10, x27
	mv x11, x24
	mv x12, x20
	jal memchr
	beq x10, x24, .LBB0_85
.LBB0_84:                               //  %if.then476
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x20, x10, x27
.LBB0_85:                               //  %if.then476
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x20
	mv x11, x24
	mv x18, x24
	jal x0, .LBB0_290
.LBB0_86:                               //  %cond.true210
                                        //    in Loop: Header=BB0_8 Depth=2
	add x13, x0, 16
	blt x26, x0, .LBB0_303
.LBB0_87:                               //  %if.end216
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 72
	blt x9, x10, .LBB0_304
.LBB0_88:                               //  %if.end216
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.3 )
	add x27, x10, %lo( .str.3 )
	jal x0, .LBB0_305
.LBB0_89:                               //  %sw.bb135
                                        //    in Loop: Header=BB0_8 Depth=2
	or fp, fp, 16
.LBB0_90:                               //  %sw.bb137
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 32
	bltu x0, x10, .LBB0_95
.LBB0_91:                               //  %cond.false142
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 64 ( sp )               //  4-byte Folded Reload
	and x10, fp, 16
	bltu x0, x10, .LBB0_151
.LBB0_92:                               //  %cond.false147
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 64
	bltu x0, x10, .LBB0_307
.LBB0_93:                               //  %cond.false154
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x19, 0 ( x10 )
	and x10, fp, 512
	beq x0, x10, .LBB0_152
.LBB0_94:                               //  %cond.true157
                                        //    in Loop: Header=BB0_8 Depth=2
	sll x10, x19, 24&31
	sra x19, x10, 24&31
	sra x20, x19, 31&31
	bge x20, x0, .LBB0_96
	jal x0, .LBB0_153
.LBB0_95:                               //  %cond.true140
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	lw x12, 64 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 316 ( sp )
	add x11, x10, 8
	lw x19, 0 ( x10 )
	sw x11, 316 ( sp )
	lw x20, 4 ( x10 )
	blt x20, x0, .LBB0_153
.LBB0_96:                               //    in Loop: Header=BB0_8 Depth=2
	seqz x10, x0
	lw x14, 92 ( sp )               //  4-byte Folded Reload
	add x11, x0, -1
	blt x11, x14, .LBB0_116
	jal x0, .LBB0_117
.LBB0_97:                               //  %sw.bb418
                                        //    in Loop: Header=BB0_8 Depth=2
	add x9, x0, 79
	or fp, fp, 16
.LBB0_98:                               //  %sw.bb420
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 64 ( sp )               //  4-byte Folded Reload
	and x10, fp, 32
	bltu x0, x10, .LBB0_140
.LBB0_99:                               //  %cond.false425
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 16
	bltu x0, x10, .LBB0_278
.LBB0_100:                              //  %cond.false430
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 64
	beq x0, x10, .LBB0_101
.LBB0_538:                              //  %cond.false430
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_365
.LBB0_101:                              //  %cond.false437
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x19, 0 ( x10 )
	and x11, fp, 512
	mv x10, x0
	bne x11, x10, .LBB0_102
.LBB0_539:                              //  %cond.false437
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_366
.LBB0_102:                              //  %cond.false437
                                        //    in Loop: Header=BB0_8 Depth=2
	and x19, x19, 255
	jal x0, .LBB0_366
.LBB0_103:                              //  %sw.bb490
                                        //    in Loop: Header=BB0_8 Depth=2
	add x9, x0, 85
	or fp, fp, 16
.LBB0_104:                              //  %sw.bb492
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 64 ( sp )               //  4-byte Folded Reload
	and x10, fp, 32
	bltu x0, x10, .LBB0_141
.LBB0_105:                              //  %cond.false497
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 16
	bltu x0, x10, .LBB0_279
.LBB0_106:                              //  %cond.false502
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 64
	beq x0, x10, .LBB0_107
.LBB0_540:                              //  %cond.false502
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_368
.LBB0_107:                              //  %cond.false509
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x19, 0 ( x10 )
	and x11, fp, 512
	mv x10, x0
	bne x11, x10, .LBB0_108
.LBB0_541:                              //  %cond.false509
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_369
.LBB0_108:                              //  %cond.false509
                                        //    in Loop: Header=BB0_8 Depth=2
	and x19, x19, 255
	jal x0, .LBB0_369
.LBB0_109:                              //  %hex.loopexit
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.6 )
	add x12, x10, %lo( .str.6 )
	and x10, fp, 32
	beq x0, x10, .LBB0_136
.LBB0_110:                              //  %cond.true531
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	add x11, x10, 8
	lw x19, 0 ( x10 )
	sw x11, 316 ( sp )
	lw x20, 4 ( x10 )
	and x10, fp, 1
	beq x0, x10, .LBB0_113
.LBB0_111:                              //  %cond.end561
                                        //    in Loop: Header=BB0_8 Depth=2
	or x10, x20, x19
	beq x0, x10, .LBB0_113
.LBB0_112:                              //  %if.then568
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 48
	or fp, fp, 2
	sb x9, 123 ( sp )
	sb x10, 122 ( sp )
.LBB0_113:                              //  %if.end573
                                        //    in Loop: Header=BB0_8 Depth=2
	and fp, fp, -1025
	jal x0, .LBB0_115
.LBB0_114:                              //  %sw.bb456
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	add x9, x0, 120
	mv x20, x0
	or fp, fp, 2
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x19, 0 ( x10 )
	add x10, x0, 48
	sb x10, 122 ( sp )
	lui x10, %hi( .str.4 )
	sb x9, 123 ( sp )
	add x12, x10, %lo( .str.4 )
.LBB0_115:                              //  %nosign
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 2
	sb x0, 315 ( sp )
	lw x14, 92 ( sp )               //  4-byte Folded Reload
	add x11, x0, -1
	bge x11, x14, .LBB0_117
.LBB0_116:                              //    in Loop: Header=BB0_8 Depth=2
	and fp, fp, -129
.LBB0_117:                              //  %number
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 92 ( sp )               //  4-byte Folded Reload
	bltu x0, x11, .LBB0_122
.LBB0_118:                              //  %number
                                        //    in Loop: Header=BB0_8 Depth=2
	or x11, x20, x19
	bltu x0, x11, .LBB0_122
.LBB0_119:                              //  %if.else658
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x12, 64 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB0_127
.LBB0_120:                              //  %if.else658
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x19, 84 ( sp )               //  4-byte Folded Reload
	and x10, fp, 1
	beq x0, x10, .LBB0_128
.LBB0_121:                              //  %if.then665
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 48
	add x27, sp, 223
	sb x10, 223 ( sp )
	jal x0, .LBB0_180
.LBB0_122:                              //  %if.then587
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x0, x10, .LBB0_129
.LBB0_123:                              //  %if.then587
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x11, x10, 1
	beq x0, x11, .LBB0_156
.LBB0_124:                              //  %if.then587
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27, 52 ( sp )               //  4-byte Folded Reload
	xor x10, x10, 2
	sw x12, 64 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB0_134
.LBB0_125:                              //  %do.body649
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	and x10, x19, 15
	add x10, x10, x12
	lb x10, 0 ( x10 )
	sll x11, x20, 28&31
	srl x20, x20, 4&31
	sb x10, -1 ( x27 )
	srl x10, x19, 4&31
	or x19, x11, x10
	add x27, x27, -1
	or x10, x20, x19
	bltu x0, x10, .LBB0_125
.LBB0_126:                              //    in Loop: Header=BB0_8 Depth=2
	lw x19, 84 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_180
.LBB0_127:                              //    in Loop: Header=BB0_8 Depth=2
	lw x27, 52 ( sp )               //  4-byte Folded Reload
	lw x19, 84 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_180
.LBB0_128:                              //    in Loop: Header=BB0_8 Depth=2
	lw x27, 52 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_180
.LBB0_129:                              //  %do.body590.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	add x27, sp, 223
	sw x12, 64 ( sp )               //  4-byte Folded Spill
.LBB0_130:                              //  %do.body590
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sll x11, x20, 29&31
	srl x10, x19, 3&31
	or x10, x11, x10
	and x11, x19, 7
	or x11, x11, 48
	srl x20, x20, 3&31
	sb x11, 0 ( x27 )
	add x27, x27, -1
	or x12, x20, x10
	mv x19, x10
	bltu x0, x12, .LBB0_130
.LBB0_131:                              //  %do.end597
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x27, 1
	and x12, fp, 1
	beq x0, x12, .LBB0_362
.LBB0_132:                              //  %do.end597
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x19, 84 ( sp )               //  4-byte Folded Reload
	xor x11, x11, 48
	beq x0, x11, .LBB0_363
.LBB0_133:                              //  %if.then604
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 48
	sb x10, 0 ( x27 )
	jal x0, .LBB0_180
.LBB0_134:                              //  %sw.default
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.7 )
	add x27, x10, %lo( .str.7 )
	mv x10, x27
	jal strlen
	mv x24, x0
	lw x19, 84 ( sp )               //  4-byte Folded Reload
	lw x11, 92 ( sp )               //  4-byte Folded Reload
	add x13, x0, 16
	mv x18, x24
	jal x0, .LBB0_181
.LBB0_135:                              //  %hex.loopexit1
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.4 )
	add x12, x10, %lo( .str.4 )
	and x10, fp, 32
	bltu x0, x10, .LBB0_110
.LBB0_136:                              //  %cond.false533
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 16
	bltu x0, x10, .LBB0_280
.LBB0_137:                              //  %cond.false538
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 64
	beq x0, x10, .LBB0_138
.LBB0_542:                              //  %cond.false538
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_371
.LBB0_138:                              //  %cond.false545
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x19, 0 ( x10 )
	and x11, fp, 512
	mv x10, x0
	beq x11, x10, .LBB0_281
.LBB0_139:                              //  %cond.false545
                                        //    in Loop: Header=BB0_8 Depth=2
	and x19, x19, 255
	mv x20, x0
	and x10, fp, 1
	bltu x0, x10, .LBB0_111
	jal x0, .LBB0_113
.LBB0_140:                              //  %cond.true423
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	add x11, x10, 8
	lw x19, 0 ( x10 )
	sw x11, 316 ( sp )
	lw x20, 4 ( x10 )
	jal x0, .LBB0_367
.LBB0_141:                              //  %cond.true495
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 316 ( sp )
	add x10, x11, 4
	sw x10, 316 ( sp )
	add x10, x11, 8
	lw x19, 0 ( x11 )
	sw x10, 316 ( sp )
	lw x20, 4 ( x11 )
	jal x0, .LBB0_370
.LBB0_142:                              //  %sw.default674
                                        //    in Loop: Header=BB0_8 Depth=2
	bltu x0, x9, .LBB0_143
.LBB0_543:                              //  %sw.default674
	jal x0, .LBB0_530
.LBB0_143:                              //  %if.end678
                                        //    in Loop: Header=BB0_8 Depth=2
	seqz x20, x0
	mv x24, x26
	mv x11, x26
	mv x10, x20
	mv x18, x26
	sb x9, 124 ( sp )
	sb x0, 315 ( sp )
	sw x26, 72 ( sp )               //  4-byte Folded Spill
	sw x26, 68 ( sp )               //  4-byte Folded Spill
.LBB0_144:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x19, 84 ( sp )               //  4-byte Folded Reload
	add x27, sp, 124
	mv x12, x11
	mv x20, x11
	mv x26, x10
	bge x10, x11, .LBB0_183
	jal x0, .LBB0_184
.LBB0_145:                              //  %if.else251
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	xor x10, x10, -1
	beq x0, x10, .LBB0_308
.LBB0_146:                              //  %if.else255
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 103
	beq fp, x10, .LBB0_340
.LBB0_147:                              //  %if.else255
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 92 ( sp )               //  4-byte Folded Reload
	mv x10, x12
	mv x11, x0
	sw x11, 72 ( sp )               //  4-byte Folded Spill
	beq x12, x11, .LBB0_342
.LBB0_341:                              //  %if.else255
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x12
.LBB0_342:                              //  %if.else255
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x10, 92 ( sp )               //  4-byte Folded Spill
	bge x26, x20, .LBB0_286
.LBB0_343:                              //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x20, x10, x26
	xor x24, fp, 103
	sw x24, 68 ( sp )               //  4-byte Folded Spill
	bltu x0, x18, .LBB0_287
.LBB0_344:                              //  %if.then2.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x12, sp, 308
	mv x10, x19
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
	beq x0, x10, .LBB0_347
.LBB0_345:                              //  %if.end5.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw fp, 92 ( sp )                //  4-byte Folded Reload
	add x10, x0, 97
	sw x19, 84 ( sp )               //  4-byte Folded Spill
	beq x9, x10, .LBB0_348
.LBB0_346:                              //  %if.end5.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.6 )
	add x10, x10, %lo( .str.6 )
	jal x0, .LBB0_349
.LBB0_148:                              //  %if.then466
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x19, 84 ( sp )               //  4-byte Folded Reload
	lw x20, 92 ( sp )               //  4-byte Folded Reload
	add x10, x0, 6
	bltu x20, x10, .LBB0_150
.LBB0_149:                              //  %if.then466
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x20, x10
.LBB0_150:                              //  %if.then466
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x11, %hi( .str.5 )
	mv x24, x0
	mv x10, x20
	add x27, x11, %lo( .str.5 )
	mv x18, x24
	mv x11, x24
	jal x0, .LBB0_181
.LBB0_151:                              //  %cond.true145
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x19, 0 ( x10 )
.LBB0_152:                              //  %cond.end167
                                        //    in Loop: Header=BB0_8 Depth=2
	sra x20, x19, 31&31
	bge x20, x0, .LBB0_96
.LBB0_153:                              //  %if.then587.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 92 ( sp )               //  4-byte Folded Reload
	add x10, x0, -1
	bge x10, x11, .LBB0_155
.LBB0_154:                              //    in Loop: Header=BB0_8 Depth=2
	and fp, fp, -129
.LBB0_155:                              //  %if.then587.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 45
	sb x10, 315 ( sp )
	snez x10, x19
	add x10, x10, x20
	sub x19, x0, x19
	sub x20, x0, x10
.LBB0_156:                              //  %sw.bb607
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x0
	sw x12, 64 ( sp )               //  4-byte Folded Spill
	bne x20, x10, .LBB0_158
.LBB0_157:                              //    in Loop: Header=BB0_8 Depth=2
	sltiu x10, x19, 10
.LBB0_158:                              //  %sw.bb607
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x0, x10, .LBB0_160
.LBB0_159:                              //  %if.then610
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x19, 48
	lw x19, 84 ( sp )               //  4-byte Folded Reload
	sb x10, 223 ( sp )
	add x27, sp, 223
	jal x0, .LBB0_180
.LBB0_160:                              //  %do.body615.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 1024
	sw fp, 108 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB0_166
.LBB0_161:                              //  %do.body615.us.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x27, x0
	mv x18, x27
	jal x0, .LBB0_164
.LBB0_162:                              //  %do.body615.us
                                        //    in Loop: Header=BB0_164 Depth=3
	snez x11, x20
.LBB0_163:                              //  %do.body615.us
                                        //    in Loop: Header=BB0_164 Depth=3
	sub x10, x19, x10
	or x12, x10, 48
	add x10, sp, 124
	add x13, x18, x10
	add x18, x18, -1
	mv x19, x24
	mv x20, fp
	sb x12, 99 ( x13 )
	beq x0, x11, .LBB0_178
.LBB0_164:                              //  %do.body615.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x26, x0, 10
	mv x10, x19
	mv x11, x20
	mv x12, x26
	mv x13, x27
	jal __udivdi3
	mv x12, x26
	mv x13, x27
	mv x24, x10
	mv fp, x11
	jal __muldi3
	bne x20, x27, .LBB0_162
.LBB0_165:                              //    in Loop: Header=BB0_164 Depth=3
	add x11, x0, 9
	sltu x11, x11, x19
	jal x0, .LBB0_163
.LBB0_166:                              //  %do.body615.preheader12
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	lw x27, 52 ( sp )               //  4-byte Folded Reload
	sub x10, x0, x10
	sw x10, 72 ( sp )               //  4-byte Folded Spill
	mv x10, x0
	sw x10, 96 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_168
.LBB0_167:                              //  %if.end643
                                        //    in Loop: Header=BB0_168 Depth=3
	snez x10, x20
	mv x19, x26
	mv x20, x24
	beq x0, x10, .LBB0_179
.LBB0_168:                              //  %do.body615
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add fp, x0, 10
	mv x18, x0
	mv x10, x19
	mv x11, x20
	mv x12, fp
	mv x13, x18
	jal __udivdi3
	mv x12, fp
	mv x13, x18
	mv x26, x10
	mv x24, x11
	jal __muldi3
	sub x10, x19, x10
	or x10, x10, 48
	sb x10, -1 ( x27 )
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	add x27, x27, -1
	lb x10, 0 ( x10 )
	add x11, x11, 1
	sw x11, 96 ( sp )               //  4-byte Folded Spill
	bne x11, x10, .LBB0_174
.LBB0_169:                              //  %land.lhs.true626
                                        //    in Loop: Header=BB0_168 Depth=3
	beq x20, x18, .LBB0_177
.LBB0_170:                              //  %land.lhs.true626
                                        //    in Loop: Header=BB0_168 Depth=3
	mv x11, x18
	add x13, x0, 16
	bltu x0, x11, .LBB0_175
.LBB0_171:                              //  %land.lhs.true626
                                        //    in Loop: Header=BB0_168 Depth=3
	and x10, x10, 255
	xor x10, x10, 127
	beq x0, x10, .LBB0_175
.LBB0_172:                              //  %if.then633
                                        //    in Loop: Header=BB0_168 Depth=3
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	lw x11, 40 ( sp )               //  4-byte Folded Reload
	lw x12, 44 ( sp )               //  4-byte Folded Reload
	add x27, x10, x27
	mv x10, x27
	jal strncpy
	lw x11, 88 ( sp )               //  4-byte Folded Reload
	mv x12, x0
	sw x12, 96 ( sp )               //  4-byte Folded Spill
	lbu x10, 1 ( x11 )
	beq x10, x12, .LBB0_174
.LBB0_173:                              //  %if.then633
                                        //    in Loop: Header=BB0_168 Depth=3
	add x11, x11, 1
	sw x11, 88 ( sp )               //  4-byte Folded Spill
.LBB0_174:                              //  %if.then633
                                        //    in Loop: Header=BB0_168 Depth=3
	add x13, x0, 16
.LBB0_175:                              //  %if.end643
                                        //    in Loop: Header=BB0_168 Depth=3
	bne x20, x18, .LBB0_167
.LBB0_176:                              //    in Loop: Header=BB0_168 Depth=3
	add x10, x0, 9
	sltu x10, x10, x19
	mv x19, x26
	mv x20, x24
	bltu x0, x10, .LBB0_168
	jal x0, .LBB0_179
.LBB0_177:                              //    in Loop: Header=BB0_168 Depth=3
	sltiu x11, x19, 10
	add x13, x0, 16
	beq x0, x11, .LBB0_171
	jal x0, .LBB0_175
.LBB0_178:                              //  %if.end668.loopexit
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x18, x10
	add x27, x10, 100
	sub x10, x0, x18
	add x13, x0, 16
	sw x10, 96 ( sp )               //  4-byte Folded Spill
.LBB0_179:                              //  %if.end668
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x19, 84 ( sp )               //  4-byte Folded Reload
	lw fp, 108 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_180
.LBB0_278:                              //  %cond.true428
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x19, 0 ( x10 )
	jal x0, .LBB0_366
.LBB0_279:                              //  %cond.true500
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x19, 0 ( x10 )
	jal x0, .LBB0_369
.LBB0_280:                              //  %cond.true536
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x19, 0 ( x10 )
.LBB0_281:                              //  %cond.end558
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x20, x0
	and x10, fp, 1
	bltu x0, x10, .LBB0_111
	jal x0, .LBB0_113
.LBB0_282:                              //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 120
.LBB0_283:                              //  %if.then228
                                        //    in Loop: Header=BB0_8 Depth=2
	sb x10, 123 ( sp )
	add x10, x0, 48
	sb x10, 122 ( sp )
	lw x10, 108 ( sp )              //  4-byte Folded Reload
	lw x11, 92 ( sp )               //  4-byte Folded Reload
	or x10, x10, 2
	sw x10, 108 ( sp )              //  4-byte Folded Spill
	slti x10, x11, 100
	bltu x0, x10, .LBB0_292
.LBB0_284:                              //  %if.then237
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add x11, x11, 1
	jal _malloc_r
	mv x27, x10
	sw x10, 72 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB0_285
.LBB0_544:                              //  %if.then237
	jal x0, .LBB0_535
.LBB0_285:                              //  %if.end267
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x26, x20, .LBB0_343
.LBB0_286:                              //  %if.end267
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x20, x26
	xor x24, fp, 103
	sw x24, 68 ( sp )               //  4-byte Folded Spill
	beq x0, x18, .LBB0_344
.LBB0_287:                              //  %if.end43.i
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x18, fp, 102
	bltu x0, x18, .LBB0_293
.LBB0_288:                              //    in Loop: Header=BB0_8 Depth=2
	lw x14, 92 ( sp )               //  4-byte Folded Reload
	add x13, x0, 3
	jal x0, .LBB0_294
.LBB0_289:                              //  %if.else486
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x27
	jal strlen
	mv x24, x0
	mv x18, x24
	mv x11, x24
.LBB0_290:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x24, 72 ( sp )               //  4-byte Folded Spill
	sw x24, 68 ( sp )               //  4-byte Folded Spill
	add x13, x0, 16
	mv x12, x11
	mv x20, x11
	mv x26, x10
	bge x10, x11, .LBB0_183
	jal x0, .LBB0_184
.LBB0_292:                              //    in Loop: Header=BB0_8 Depth=2
	add x27, sp, 124
	sw x20, 72 ( sp )               //  4-byte Folded Spill
	bge x26, x20, .LBB0_286
	jal x0, .LBB0_343
.LBB0_293:                              //  %if.else50.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 92 ( sp )               //  4-byte Folded Reload
	xor x10, fp, 101
	seqz x10, x10
	add x13, x0, 2
	add x14, x10, x11
.LBB0_294:                              //  %if.end58.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	lw fp, 108 ( sp )               //  4-byte Folded Reload
	add x15, sp, 308
	add x16, sp, 324
	add x17, sp, 320
	mv x11, x19
	mv x12, x20
	sw x14, 96 ( sp )               //  4-byte Folded Spill
	jal _dtoa_r
	mv x27, x10
	bltu x0, x24, .LBB0_297
.LBB0_295:                              //  %if.end58.i
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 1
	bltu x0, x10, .LBB0_297
.LBB0_296:                              //  %if.end58.if.end96_crit_edge.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw fp, 320 ( sp )
	jal x0, .LBB0_451
.LBB0_297:                              //  %if.then68.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	add fp, x10, x27
	beq x0, x18, .LBB0_298
.LBB0_545:                              //  %if.then68.i
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_445
.LBB0_298:                              //  %if.then74.i
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x12, x0
	mv x10, x19
	mv x11, x20
	mv x13, x12
	jal __eqdf2
	bltu x0, x10, .LBB0_299
.LBB0_546:                              //  %if.then74.i
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_443
.LBB0_299:                              //  %if.then74.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lbu x10, 0 ( x27 )
	xor x10, x10, 48
	beq x0, x10, .LBB0_300
.LBB0_547:                              //  %if.then74.i
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_443
.LBB0_300:                              //  %if.then80.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	seqz x10, x0
	sub x10, x10, x11
	sw x10, 308 ( sp )
	jal x0, .LBB0_444
.LBB0_303:                              //  %if.then215
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 45
	sb x10, 315 ( sp )
	add x10, x0, 72
	bge x9, x10, .LBB0_88
.LBB0_304:                              //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.2 )
	add x27, x10, %lo( .str.2 )
.LBB0_305:                              //  %if.end216
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x24, x0
	add x10, x0, 3
	mv x18, x24
	mv x11, x24
	and fp, fp, -129
	jal x0, .LBB0_181
.LBB0_307:                              //  %cond.true150
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lw x10, 0 ( x10 )
	sll x10, x10, 16&31
	sra x19, x10, 16&31
	sra x20, x19, 31&31
	bge x20, x0, .LBB0_96
	jal x0, .LBB0_153
.LBB0_308:                              //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 6
	sw x10, 92 ( sp )               //  4-byte Folded Spill
	sw x20, 72 ( sp )               //  4-byte Folded Spill
	bge x26, x20, .LBB0_286
	jal x0, .LBB0_343
.LBB0_347:                              //  %if.then4.i
                                        //    in Loop: Header=BB0_8 Depth=2
	seqz x10, x0
	sw x10, 308 ( sp )
	lw fp, 92 ( sp )                //  4-byte Folded Reload
	add x10, x0, 97
	sw x19, 84 ( sp )               //  4-byte Folded Spill
	bne x9, x10, .LBB0_346
.LBB0_348:                              //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.4 )
	add x10, x10, %lo( .str.4 )
.LBB0_349:                              //  %if.end5.i
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x10, 96 ( sp )               //  4-byte Folded Spill
.LBB0_350:                              //  %do.body.i
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	mv x12, x0
	lui x13, (1076887552>>12)&1048575
	mv x10, x24
	mv x11, x26
	mv x19, x20
	jal __muldf3
	mv x20, x10
	mv x24, x11
	jal __fixdfsi
	mv x18, x10
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	add x11, x19, x27
	add x10, x18, x10
	lb x10, 0 ( x10 )
	sb x10, 0 ( x11 )
	mv x10, x18
	jal __floatsidf
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x24
	jal __subdf3
	mv x24, x10
	mv x26, x11
	add x20, x19, 1
	beq fp, x19, .LBB0_352
.LBB0_351:                              //  %do.body.i
                                        //    in Loop: Header=BB0_350 Depth=3
	mv x12, x0
	mv x10, x24
	mv x11, x26
	mv x13, x12
	jal __nedf2
	bltu x0, x10, .LBB0_350
.LBB0_352:                              //  %do.end.i
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x24
	mv x11, x26
	jal __gtdf2
	add fp, x20, x27
	blt x0, x10, .LBB0_355
.LBB0_353:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x18, 1
	beq x0, x10, .LBB0_373
.LBB0_354:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x24
	mv x11, x26
	jal __eqdf2
	bltu x0, x10, .LBB0_373
.LBB0_355:                              //  %if.then19.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 96 ( sp )               //  4-byte Folded Reload
	add x10, fp, -1
	sw x10, 320 ( sp )
	lbu x11, -1 ( fp )
	lbu x12, 15 ( x12 )
	bne x11, x12, .LBB0_360
.LBB0_356:                              //  %while.body.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x19, 84 ( sp )               //  4-byte Folded Reload
	add x13, x0, 16
.LBB0_357:                              //  %while.body.i
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x12, x0, 48
	sb x12, 0 ( x10 )
	lw x12, 320 ( sp )
	add x10, x12, -1
	sw x10, 320 ( sp )
	lbu x12, -1 ( x12 )
	beq x12, x11, .LBB0_357
.LBB0_358:                              //  %while.end.i
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x11, x12, 57
	bltu x0, x11, .LBB0_361
.LBB0_359:                              //  %cond.true.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	lbu x11, 10 ( x11 )
	sb x11, 0 ( x10 )
	jal x0, .LBB0_452
.LBB0_360:                              //    in Loop: Header=BB0_8 Depth=2
	lw x19, 84 ( sp )               //  4-byte Folded Reload
	mv x12, x11
	add x13, x0, 16
	xor x11, x12, 57
	beq x0, x11, .LBB0_359
.LBB0_361:                              //  %cond.false.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11, x12, 1
	sb x11, 0 ( x10 )
	jal x0, .LBB0_452
.LBB0_340:                              //    in Loop: Header=BB0_8 Depth=2
	lw x12, 92 ( sp )               //  4-byte Folded Reload
	seqz x10, x0
	mv x11, x0
	sw x11, 72 ( sp )               //  4-byte Folded Spill
	beq x12, x11, .LBB0_342
	jal x0, .LBB0_341
.LBB0_362:                              //    in Loop: Header=BB0_8 Depth=2
	lw x19, 84 ( sp )               //  4-byte Folded Reload
.LBB0_363:                              //    in Loop: Header=BB0_8 Depth=2
	mv x27, x10
.LBB0_180:                              //  %if.end668
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	mv x24, x0
	lw x11, 92 ( sp )               //  4-byte Folded Reload
	mv x18, x24
	sub x10, x10, x27
.LBB0_181:                              //  %if.end668
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x24, 72 ( sp )               //  4-byte Folded Spill
.LBB0_182:                              //  %if.end668
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x24, 68 ( sp )               //  4-byte Folded Spill
	mv x12, x11
	mv x20, x11
	mv x26, x10
	blt x10, x11, .LBB0_184
.LBB0_183:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x12, x26
.LBB0_184:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	lbu x11, 315 ( sp )
	sw fp, 108 ( sp )               //  4-byte Folded Spill
	and fp, fp, 2
	srl x10, fp, 1&31
	snez x11, x11
	add x11, x11, x12
	sw x19, 84 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB0_186
.LBB0_185:                              //    in Loop: Header=BB0_8 Depth=2
	add x11, x11, 2
.LBB0_186:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 108 ( sp )              //  4-byte Folded Reload
	sw x11, 92 ( sp )               //  4-byte Folded Spill
	and x19, x10, 132
	beq x0, x19, .LBB0_187
.LBB0_195:                              //  %if.end744
                                        //    in Loop: Header=BB0_8 Depth=2
	lbu x10, 315 ( sp )
	beq x0, x10, .LBB0_201
.LBB0_196:                              //  %if.then746
                                        //    in Loop: Header=BB0_8 Depth=2
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
	bltu x0, x10, .LBB0_198
.LBB0_197:                              //  %if.then756
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	lw x11, 112 ( sp )              //  4-byte Folded Reload
	jal __ssprint_r
	add x13, x0, 16
	add x21, sp, 224
	beq x0, x10, .LBB0_201
	jal x0, .LBB0_523
.LBB0_187:                              //  %if.then700
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	sw x24, 48 ( sp )               //  4-byte Folded Spill
	lw x24, 112 ( sp )              //  4-byte Folded Reload
	sw x18, 56 ( sp )               //  4-byte Folded Spill
	sub x18, x22, x10
	bge x0, x18, .LBB0_200
.LBB0_188:                              //  %while.cond705.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, x18, 17
	beq x0, x10, .LBB0_191
	jal x0, .LBB0_193
.LBB0_189:                              //    in Loop: Header=BB0_191 Depth=3
	add x21, x21, 8
.LBB0_190:                              //  %if.end724
                                        //    in Loop: Header=BB0_191 Depth=3
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	add x18, x18, -16
	sw x10, 0 ( x21 )
	bge x13, x18, .LBB0_193
.LBB0_191:                              //  %while.body708
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x12, sp, 288
	lw x10, 8 ( x12 )
	sw x13, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x12 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_189
.LBB0_192:                              //  %if.then718
                                        //    in Loop: Header=BB0_191 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	mv x11, x24
	jal __ssprint_r
	add x13, x0, 16
	add x21, sp, 224
	beq x0, x10, .LBB0_190
	jal x0, .LBB0_524
.LBB0_198:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x21, 8
	bltu x0, fp, .LBB0_202
.LBB0_211:                              //    in Loop: Header=BB0_8 Depth=2
	mv x11, x20
	xor x10, x19, 128
	beq x0, x10, .LBB0_205
.LBB0_212:                              //    in Loop: Header=BB0_8 Depth=2
	add x19, sp, 288
	mv x10, x26
	sub fp, x11, x10
	mv x11, x10
	blt x0, fp, .LBB0_216
.LBB0_240:                              //    in Loop: Header=BB0_8 Depth=2
	lw fp, 108 ( sp )               //  4-byte Folded Reload
	lw x20, 100 ( sp )              //  4-byte Folded Reload
	and x10, fp, 256
	beq x0, x10, .LBB0_224
.LBB0_228:                              //  %if.else896
                                        //    in Loop: Header=BB0_8 Depth=2
	slti x10, x9, 102
	bltu x0, x10, .LBB0_235
.LBB0_229:                              //  %if.then899
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 84 ( sp )               //  4-byte Folded Reload
	lw x11, 60 ( sp )               //  4-byte Folded Reload
	mv x12, x0
	mv x13, x12
	sw x18, 56 ( sp )               //  4-byte Folded Spill
	jal __nedf2
	lw x18, 80 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB0_247
.LBB0_230:                              //  %if.then903
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x19 )
	add x10, x10, 1
	sw x10, 8 ( x19 )
	seqz x10, x0
	sw x10, 4 ( x21 )
	lw x10, 24 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_253
.LBB0_231:                              //  %if.then913
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x24, 112 ( sp )              //  4-byte Folded Reload
	mv x10, x20
	mv x12, x19
	mv x11, x24
	jal __ssprint_r
	lw x27, 92 ( sp )               //  4-byte Folded Reload
	add x21, sp, 224
	mv x26, x0
	add x13, x0, 16
	beq x0, x10, .LBB0_232
.LBB0_548:                              //  %if.then913
	jal x0, .LBB0_525
.LBB0_232:                              //  %if.end919
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 1
	bltu x0, x10, .LBB0_254
.LBB0_233:                              //  %if.end919
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 308 ( sp )
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	bge x10, x11, .LBB0_405
	jal x0, .LBB0_254
.LBB0_235:                              //  %if.else1408
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x19 )
	lw x12, 292 ( sp )
	sw x27, 0 ( x21 )
	add x9, x21, 8
	add x11, x10, 1
	seqz x10, x0
	mv x13, x10
	sw x13, 4 ( x21 )
	lw x18, 80 ( sp )               //  4-byte Folded Reload
	lw x21, 96 ( sp )               //  4-byte Folded Reload
	lw x24, 112 ( sp )              //  4-byte Folded Reload
	add x10, x12, 1
	slti x12, x12, 7
	sw x11, 8 ( x19 )
	sw x10, 292 ( sp )
	blt x13, x21, .LBB0_242
.LBB0_236:                              //  %if.else1408
                                        //    in Loop: Header=BB0_8 Depth=2
	and x13, fp, 1
	bltu x0, x13, .LBB0_242
.LBB0_237:                              //  %if.else1514
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27, 92 ( sp )               //  4-byte Folded Reload
	mv x26, x0
	bltu x0, x12, .LBB0_403
.LBB0_238:                              //  %if.then1524
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	add x9, sp, 224
	beq x0, x10, .LBB0_403
	jal x0, .LBB0_525
.LBB0_193:                              //  %while.end726
                                        //    in Loop: Header=BB0_8 Depth=2
	add x12, sp, 288
	lw x10, 8 ( x12 )
	sw x18, 4 ( x21 )
	add x10, x18, x10
	sw x10, 8 ( x12 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_199
.LBB0_194:                              //  %if.then736
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	mv x11, x24
	jal __ssprint_r
	lw x18, 56 ( sp )               //  4-byte Folded Reload
	lw x24, 48 ( sp )               //  4-byte Folded Reload
	add x13, x0, 16
	add x21, sp, 224
	beq x0, x10, .LBB0_195
	jal x0, .LBB0_523
.LBB0_242:                              //  %if.then1414
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x26, x0
	bltu x0, x12, .LBB0_245
.LBB0_243:                              //  %if.then1424
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	beq x0, x10, .LBB0_244
.LBB0_549:                              //  %if.then1424
	jal x0, .LBB0_525
.LBB0_244:                              //  %if.then1424.if.end1430_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 292 ( sp )
	lw x11, 8 ( x19 )
	add x9, sp, 224
.LBB0_245:                              //  %if.end1430
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 36 ( sp )               //  4-byte Folded Reload
	add x11, x12, x11
	sw x11, 8 ( x19 )
	lw x11, 32 ( sp )               //  4-byte Folded Reload
	sw x12, 4 ( x9 )
	sw x11, 0 ( x9 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_262
.LBB0_246:                              //  %if.then1441
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	add x9, sp, 224
	beq x0, x10, .LBB0_263
	jal x0, .LBB0_525
.LBB0_199:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x21, 8
.LBB0_200:                              //    in Loop: Header=BB0_8 Depth=2
	lw x18, 56 ( sp )               //  4-byte Folded Reload
	lw x24, 48 ( sp )               //  4-byte Folded Reload
	lbu x10, 315 ( sp )
	bltu x0, x10, .LBB0_196
.LBB0_201:                              //  %if.end763
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x0, fp, .LBB0_211
.LBB0_202:                              //  %if.then766
                                        //    in Loop: Header=BB0_8 Depth=2
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
	bltu x0, x10, .LBB0_226
.LBB0_203:                              //  %if.then777
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	lw x11, 112 ( sp )              //  4-byte Folded Reload
	jal __ssprint_r
	add x13, x0, 16
	add x21, sp, 224
	mv x11, x20
	beq x0, x10, .LBB0_204
.LBB0_550:                              //  %if.then777
	jal x0, .LBB0_523
.LBB0_204:                              //  %if.end784
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x10, x19, 128
	bltu x0, x10, .LBB0_212
.LBB0_205:                              //  %if.then788
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	add x19, sp, 288
	sub fp, x22, x10
	bge x0, fp, .LBB0_239
.LBB0_206:                              //  %while.cond793.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_209
	jal x0, .LBB0_213
.LBB0_207:                              //    in Loop: Header=BB0_209 Depth=3
	add x21, x21, 8
.LBB0_208:                              //  %if.end812
                                        //    in Loop: Header=BB0_209 Depth=3
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x21 )
	bge x13, fp, .LBB0_213
.LBB0_209:                              //  %while.body796
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	sw x13, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_207
.LBB0_210:                              //  %if.then806
                                        //    in Loop: Header=BB0_209 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	lw x11, 112 ( sp )              //  4-byte Folded Reload
	mv x12, x19
	jal __ssprint_r
	add x13, x0, 16
	add x21, sp, 224
	beq x0, x10, .LBB0_208
	jal x0, .LBB0_523
.LBB0_213:                              //  %while.end814
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x19 )
	sw fp, 4 ( x21 )
	add x10, fp, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_241
.LBB0_214:                              //  %if.then824
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	lw x11, 112 ( sp )              //  4-byte Folded Reload
	mv x12, x19
	jal __ssprint_r
	add x13, x0, 16
	add x21, sp, 224
	mv x11, x20
	beq x0, x10, .LBB0_215
.LBB0_551:                              //  %if.then824
	jal x0, .LBB0_523
.LBB0_215:                              //  %if.end832
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x26
	sub fp, x11, x10
	mv x11, x10
	bge x0, fp, .LBB0_240
.LBB0_216:                              //  %while.cond837.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	lw x20, 100 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_219
	jal x0, .LBB0_221
.LBB0_217:                              //    in Loop: Header=BB0_219 Depth=3
	add x21, x21, 8
.LBB0_218:                              //  %if.end856
                                        //    in Loop: Header=BB0_219 Depth=3
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x21 )
	bge x13, fp, .LBB0_221
.LBB0_219:                              //  %while.body840
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	sw x13, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_217
.LBB0_220:                              //  %if.then850
                                        //    in Loop: Header=BB0_219 Depth=3
	lw x11, 112 ( sp )              //  4-byte Folded Reload
	mv x10, x20
	mv x12, x19
	jal __ssprint_r
	add x13, x0, 16
	add x21, sp, 224
	beq x0, x10, .LBB0_218
	jal x0, .LBB0_521
.LBB0_221:                              //  %while.end858
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x19 )
	sw fp, 4 ( x21 )
	add x10, fp, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_227
.LBB0_222:                              //  %if.then868
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 112 ( sp )              //  4-byte Folded Reload
	mv x10, x20
	mv x12, x19
	jal __ssprint_r
	lw fp, 108 ( sp )               //  4-byte Folded Reload
	add x13, x0, 16
	add x21, sp, 224
	mv x11, x26
	beq x0, x10, .LBB0_223
.LBB0_552:                              //  %if.then868
	jal x0, .LBB0_521
.LBB0_223:                              //  %if.end875
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 256
	bltu x0, x10, .LBB0_228
.LBB0_224:                              //  %if.then879
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x19 )
	sw x11, 4 ( x21 )
	sw x27, 0 ( x21 )
	add x10, x11, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_234
.LBB0_225:                              //  %if.then889
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x24, 112 ( sp )              //  4-byte Folded Reload
	mv x10, x20
	mv x12, x19
	mv x11, x24
	jal __ssprint_r
	lw x18, 80 ( sp )               //  4-byte Folded Reload
	add x13, x0, 16
	add x21, sp, 224
	mv x26, x0
	lw x27, 92 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_405
.LBB0_553:                              //  %if.then889
	jal x0, .LBB0_525
.LBB0_405:                              //  %if.end1550
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 4
	beq x0, x10, .LBB0_514
.LBB0_406:                              //  %if.then1553
                                        //    in Loop: Header=BB0_8 Depth=2
	sub fp, x22, x27
	bge x0, fp, .LBB0_514
.LBB0_407:                              //  %while.cond1558.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_410
	jal x0, .LBB0_412
.LBB0_408:                              //    in Loop: Header=BB0_410 Depth=3
	add x21, x21, 8
.LBB0_409:                              //  %if.end1577
                                        //    in Loop: Header=BB0_410 Depth=3
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x21 )
	bge x13, fp, .LBB0_412
.LBB0_410:                              //  %while.body1561
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	sw x13, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_408
.LBB0_411:                              //  %if.then1571
                                        //    in Loop: Header=BB0_410 Depth=3
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	add x13, x0, 16
	add x21, sp, 224
	beq x0, x10, .LBB0_409
	jal x0, .LBB0_525
.LBB0_226:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x21, 8
	mv x11, x20
	xor x10, x19, 128
	beq x0, x10, .LBB0_205
	jal x0, .LBB0_212
.LBB0_227:                              //    in Loop: Header=BB0_8 Depth=2
	lw fp, 108 ( sp )               //  4-byte Folded Reload
	add x21, x21, 8
	mv x11, x26
	and x10, fp, 256
	beq x0, x10, .LBB0_224
	jal x0, .LBB0_228
.LBB0_234:                              //    in Loop: Header=BB0_8 Depth=2
	lw x18, 80 ( sp )               //  4-byte Folded Reload
	lw x27, 92 ( sp )               //  4-byte Folded Reload
	lw x24, 112 ( sp )              //  4-byte Folded Reload
	add x21, x21, 8
	mv x26, x0
	and x10, fp, 4
	bltu x0, x10, .LBB0_406
	jal x0, .LBB0_514
.LBB0_412:                              //    in Loop: Header=BB0_8 Depth=2
	add x10, x21, 4
	sw fp, 0 ( x10 )
	lw x10, 8 ( x19 )
	lw x11, 292 ( sp )
	add x10, fp, x10
	add x12, x11, 1
	slti x11, x11, 7
	sw x10, 8 ( x19 )
	sw x12, 292 ( sp )
	bltu x0, x11, .LBB0_515
.LBB0_413:                              //  %if.then1589
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	beq x0, x10, .LBB0_514
	jal x0, .LBB0_525
.LBB0_241:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x21, 8
.LBB0_239:                              //    in Loop: Header=BB0_8 Depth=2
	mv x11, x20
	mv x10, x26
	sub fp, x11, x10
	mv x11, x10
	blt x0, fp, .LBB0_216
	jal x0, .LBB0_240
.LBB0_247:                              //  %if.else986
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 308 ( sp )
	bge x0, x10, .LBB0_275
.LBB0_248:                              //  %if.else1089
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 68 ( sp )               //  4-byte Folded Reload
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	add x13, x0, 16
	mv fp, x11
	blt x11, x10, .LBB0_250
.LBB0_249:                              //  %if.else1089
                                        //    in Loop: Header=BB0_8 Depth=2
	lw fp, 96 ( sp )                //  4-byte Folded Reload
.LBB0_250:                              //  %if.else1089
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x0, fp, .LBB0_310
.LBB0_251:                              //  %if.then1101
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x19 )
	sw fp, 4 ( x21 )
	sw x27, 0 ( x21 )
	add x10, fp, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_309
.LBB0_252:                              //  %if.then1111
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 112 ( sp )              //  4-byte Folded Reload
	mv x10, x20
	mv x12, x19
	jal __ssprint_r
	add x13, x0, 16
	add x21, sp, 224
	beq x0, x10, .LBB0_310
	jal x0, .LBB0_522
.LBB0_253:                              //    in Loop: Header=BB0_8 Depth=2
	lw x27, 92 ( sp )               //  4-byte Folded Reload
	lw x24, 112 ( sp )              //  4-byte Folded Reload
	add x21, x21, 8
	mv x26, x0
	add x13, x0, 16
	and x10, fp, 1
	beq x0, x10, .LBB0_233
.LBB0_254:                              //  %if.then925
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 36 ( sp )               //  4-byte Folded Reload
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
	bltu x0, x10, .LBB0_272
.LBB0_255:                              //  %if.then935
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	add x13, x0, 16
	add x21, sp, 224
	bltu x0, x10, .LBB0_525
.LBB0_256:                              //  %if.end941
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	add fp, x10, -1
	bge x0, fp, .LBB0_273
.LBB0_257:                              //  %while.cond946.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_260
	jal x0, .LBB0_438
.LBB0_258:                              //    in Loop: Header=BB0_260 Depth=3
	add x21, x21, 8
.LBB0_259:                              //  %if.end965
                                        //    in Loop: Header=BB0_260 Depth=3
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x21 )
	bge x13, fp, .LBB0_438
.LBB0_260:                              //  %while.body949
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	sw x13, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_258
.LBB0_261:                              //  %if.then959
                                        //    in Loop: Header=BB0_260 Depth=3
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	add x13, x0, 16
	add x21, sp, 224
	beq x0, x10, .LBB0_259
	jal x0, .LBB0_525
.LBB0_262:                              //    in Loop: Header=BB0_8 Depth=2
	add x9, x9, 8
.LBB0_263:                              //  %if.end1447
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 84 ( sp )               //  4-byte Folded Reload
	lw x11, 60 ( sp )               //  4-byte Folded Reload
	mv x13, x26
	mv x12, x26
	jal __eqdf2
	beq x0, x10, .LBB0_266
.LBB0_264:                              //  %if.then1450
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x27, 1
	sw x10, 0 ( x9 )
	lw x12, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x21, -1
	sw x11, 4 ( x9 )
	add x12, x11, x12
	add x11, x10, 1
	slti x10, x10, 7
	sw x12, 8 ( x19 )
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_274
.LBB0_265:                              //  %if.then1462
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	lw x27, 92 ( sp )               //  4-byte Folded Reload
	add x9, sp, 224
	beq x0, x10, .LBB0_403
	jal x0, .LBB0_525
.LBB0_266:                              //  %if.else1469
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27, 92 ( sp )               //  4-byte Folded Reload
	add fp, x21, -1
	bge x0, fp, .LBB0_339
.LBB0_267:                              //  %while.cond1474.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	add x12, x0, 16
	sw x10, 0 ( x9 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_270
	jal x0, .LBB0_301
.LBB0_268:                              //    in Loop: Header=BB0_270 Depth=3
	add x9, x9, 8
.LBB0_269:                              //  %if.end1493
                                        //    in Loop: Header=BB0_270 Depth=3
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x9 )
	bge x12, fp, .LBB0_301
.LBB0_270:                              //  %while.body1477
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	sw x12, 4 ( x9 )
	add x10, x10, 16
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_268
.LBB0_271:                              //  %if.then1487
                                        //    in Loop: Header=BB0_270 Depth=3
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	add x12, x0, 16
	add x9, sp, 224
	beq x0, x10, .LBB0_269
	jal x0, .LBB0_525
.LBB0_272:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x21, 8
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	add fp, x10, -1
	blt x0, fp, .LBB0_257
	jal x0, .LBB0_273
.LBB0_274:                              //    in Loop: Header=BB0_8 Depth=2
	lw x27, 92 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_402
.LBB0_275:                              //  %if.then989
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x19 )
	add x11, x11, 1
	sw x11, 8 ( x19 )
	seqz x11, x0
	sw x11, 4 ( x21 )
	lw x11, 24 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x21 )
	lw x11, 292 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 292 ( sp )
	bltu x0, x11, .LBB0_333
.LBB0_276:                              //  %if.then999
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x24, 112 ( sp )              //  4-byte Folded Reload
	mv x10, x20
	mv x12, x19
	mv x11, x24
	jal __ssprint_r
	mv x26, x0
	bltu x0, x10, .LBB0_525
.LBB0_277:                              //  %if.then999.if.end1005_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 308 ( sp )
	add x21, sp, 224
	jal x0, .LBB0_334
.LBB0_301:                              //  %while.end1495
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x19 )
	sw fp, 4 ( x9 )
	add x10, fp, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_401
.LBB0_302:                              //  %if.then1505
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	lw fp, 108 ( sp )               //  4-byte Folded Reload
	add x9, sp, 224
	beq x0, x10, .LBB0_403
	jal x0, .LBB0_525
.LBB0_309:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x21, 8
.LBB0_310:                              //  %if.end1118
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x0
	blt x10, fp, .LBB0_312
.LBB0_311:                              //  %if.end1118
                                        //    in Loop: Header=BB0_8 Depth=2
	mv fp, x0
.LBB0_312:                              //  %if.end1118
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 68 ( sp )               //  4-byte Folded Reload
	sub fp, x10, fp
	bge x0, fp, .LBB0_322
.LBB0_313:                              //  %while.cond1129.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_316
	jal x0, .LBB0_318
.LBB0_314:                              //    in Loop: Header=BB0_316 Depth=3
	add x21, x21, 8
.LBB0_315:                              //  %if.end1148
                                        //    in Loop: Header=BB0_316 Depth=3
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x21 )
	bge x13, fp, .LBB0_318
.LBB0_316:                              //  %while.body1132
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	sw x13, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_314
.LBB0_317:                              //  %if.then1142
                                        //    in Loop: Header=BB0_316 Depth=3
	lw x11, 112 ( sp )              //  4-byte Folded Reload
	mv x10, x20
	mv x12, x19
	jal __ssprint_r
	add x13, x0, 16
	add x21, sp, 224
	beq x0, x10, .LBB0_315
	jal x0, .LBB0_522
.LBB0_318:                              //  %while.end1150
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x19 )
	sw fp, 4 ( x21 )
	add x10, fp, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_364
.LBB0_319:                              //  %if.then1160
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 112 ( sp )              //  4-byte Folded Reload
	mv x10, x20
	mv x12, x19
	jal __ssprint_r
	lw x11, 108 ( sp )              //  4-byte Folded Reload
	add x13, x0, 16
	add x21, sp, 224
	bltu x0, x10, .LBB0_522
.LBB0_320:                              //  %cleanup.cont
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 68 ( sp )               //  4-byte Folded Reload
	add x9, x10, x27
	and x10, x11, 1024
	bltu x0, x10, .LBB0_323
.LBB0_321:                              //    in Loop: Header=BB0_8 Depth=2
	mv fp, x9
	jal x0, .LBB0_328
.LBB0_322:                              //    in Loop: Header=BB0_8 Depth=2
	lw x11, 108 ( sp )              //  4-byte Folded Reload
	lw x10, 68 ( sp )               //  4-byte Folded Reload
	add x9, x10, x27
	and x10, x11, 1024
	beq x0, x10, .LBB0_321
.LBB0_323:                              //  %while.cond1172.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	mv x19, x18
	blt x0, x10, .LBB0_376
.LBB0_324:                              //  %while.cond1172.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x0, x24, .LBB0_376
.LBB0_325:                              //  %while.end1288
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	add fp, x10, x27
	bltu fp, x9, .LBB0_327
.LBB0_326:                              //  %while.end1288
                                        //    in Loop: Header=BB0_8 Depth=2
	mv fp, x9
.LBB0_327:                              //  %while.end1288
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x20, 100 ( sp )              //  4-byte Folded Reload
	mv x18, x19
	add x19, sp, 288
.LBB0_328:                              //  %if.end1295
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 108 ( sp )              //  4-byte Folded Reload
	lw x24, 112 ( sp )              //  4-byte Folded Reload
	lw x10, 308 ( sp )
	mv x26, x0
	and x11, x11, 1
	bltu x0, x11, .LBB0_330
.LBB0_329:                              //  %if.end1295
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	bge x10, x11, .LBB0_422
.LBB0_330:                              //  %if.then1301
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 36 ( sp )               //  4-byte Folded Reload
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
	bltu x0, x11, .LBB0_421
.LBB0_331:                              //  %if.then1311
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	bltu x0, x10, .LBB0_525
.LBB0_332:                              //  %if.then1311.if.end1318_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 308 ( sp )
	add x21, sp, 224
	add x13, x0, 16
	jal x0, .LBB0_422
.LBB0_333:                              //    in Loop: Header=BB0_8 Depth=2
	lw x24, 112 ( sp )              //  4-byte Folded Reload
	add x21, x21, 8
	mv x26, x0
.LBB0_334:                              //  %if.end1005
                                        //    in Loop: Header=BB0_8 Depth=2
	add x13, x0, 16
	lw x12, 96 ( sp )               //  4-byte Folded Reload
	and x11, fp, 1
	or x11, x12, x11
	or x11, x10, x11
	beq x0, x11, .LBB0_372
.LBB0_336:                              //  %if.then1012
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 36 ( sp )               //  4-byte Folded Reload
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
	bltu x0, x11, .LBB0_415
.LBB0_337:                              //  %if.then1022
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	bltu x0, x10, .LBB0_525
.LBB0_338:                              //  %if.then1022.if.end1028_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 308 ( sp )
	add x11, sp, 224
	add x13, x0, 16
	lw x9, 96 ( sp )                //  4-byte Folded Reload
	bge x10, x0, .LBB0_511
	jal x0, .LBB0_416
.LBB0_339:                              //    in Loop: Header=BB0_8 Depth=2
	lw fp, 108 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_403
.LBB0_364:                              //    in Loop: Header=BB0_8 Depth=2
	lw x11, 108 ( sp )              //  4-byte Folded Reload
	add x21, x21, 8
	lw x10, 68 ( sp )               //  4-byte Folded Reload
	add x9, x10, x27
	and x10, x11, 1024
	beq x0, x10, .LBB0_321
	jal x0, .LBB0_323
.LBB0_365:                              //  %cond.true433
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lhu x19, 0 ( x10 )
.LBB0_366:                              //  %cond.end450
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x20, x0
.LBB0_367:                              //  %cond.end453
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x0
	and fp, fp, -1025
	sb x0, 315 ( sp )
	lw x14, 92 ( sp )               //  4-byte Folded Reload
	add x11, x0, -1
	bge x11, x14, .LBB0_554
.LBB0_555:                              //  %cond.end453
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_116
.LBB0_554:                              //  %cond.end453
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_117
.LBB0_368:                              //  %cond.true505
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lhu x19, 0 ( x10 )
.LBB0_369:                              //  %cond.end522
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x20, x0
.LBB0_370:                              //  %cond.end522
                                        //    in Loop: Header=BB0_8 Depth=2
	seqz x10, x0
	sb x0, 315 ( sp )
	lw x14, 92 ( sp )               //  4-byte Folded Reload
	add x11, x0, -1
	bge x11, x14, .LBB0_556
.LBB0_557:                              //  %cond.end522
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_116
.LBB0_556:                              //  %cond.end522
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_117
.LBB0_371:                              //  %cond.true541
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 316 ( sp )
	add x11, x10, 4
	sw x11, 316 ( sp )
	lhu x19, 0 ( x10 )
	mv x20, x0
	and x10, fp, 1
	beq x0, x10, .LBB0_558
.LBB0_559:                              //  %cond.true541
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_111
.LBB0_558:                              //  %cond.true541
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_113
.LBB0_373:                              //  %while.cond35.preheader.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 92 ( sp )               //  4-byte Folded Reload
	sub x10, x11, x20
	add x10, x10, 1
	bge x0, x10, .LBB0_450
.LBB0_374:                              //  %while.body39.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x10, x11, x19
	lw x19, 84 ( sp )               //  4-byte Folded Reload
	add x13, x0, 16
.LBB0_375:                              //  %while.body39.i
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x11, x0, 48
	sb x11, 0 ( fp )
	add fp, fp, 1
	add x10, x10, -1
	blt x0, x10, .LBB0_375
	jal x0, .LBB0_452
.LBB0_372:                              //    in Loop: Header=BB0_8 Depth=2
	lw x27, 92 ( sp )               //  4-byte Folded Reload
	and x10, fp, 4
	bltu x0, x10, .LBB0_406
	jal x0, .LBB0_514
.LBB0_376:                              //  %while.body1177.lr.ph
                                        //    in Loop: Header=BB0_8 Depth=2
	slt x18, x0, x10
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	add x26, x10, x27
.LBB0_377:                              //  %while.body1177
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_392 Depth 4
	add x10, sp, 288
	mv x11, x10
	lw x12, 44 ( sp )               //  4-byte Folded Reload
	lw x10, 8 ( x11 )
	and x20, x18, 1
	sw x12, 4 ( x21 )
	add x10, x12, x10
	sw x10, 8 ( x11 )
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	sw x11, 292 ( sp )
	bltu x0, x20, .LBB0_379
.LBB0_378:                              //  %while.body1177
                                        //    in Loop: Header=BB0_377 Depth=3
	lw x11, 88 ( sp )               //  4-byte Folded Reload
	add x11, x11, -1
	sw x11, 88 ( sp )               //  4-byte Folded Spill
.LBB0_379:                              //  %while.body1177
                                        //    in Loop: Header=BB0_377 Depth=3
	slti x10, x10, 7
	bltu x0, x10, .LBB0_396
.LBB0_380:                              //  %if.then1195
                                        //    in Loop: Header=BB0_377 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	lw x11, 112 ( sp )              //  4-byte Folded Reload
	add x12, sp, 288
	jal __ssprint_r
	add x13, x0, 16
	add x21, sp, 224
	bltu x0, x10, .LBB0_534
.LBB0_381:                              //  %if.end1201
                                        //    in Loop: Header=BB0_377 Depth=3
	lw x11, 88 ( sp )               //  4-byte Folded Reload
	sub x10, x26, x9
	lb fp, 0 ( x11 )
	blt fp, x10, .LBB0_383
.LBB0_382:                              //  %if.end1201
                                        //    in Loop: Header=BB0_377 Depth=3
	mv fp, x10
.LBB0_383:                              //  %if.end1201
                                        //    in Loop: Header=BB0_377 Depth=3
	bge x0, fp, .LBB0_386
.LBB0_384:                              //  %if.then1215
                                        //    in Loop: Header=BB0_377 Depth=3
	add x12, sp, 288
	lw x10, 8 ( x12 )
	sw fp, 4 ( x21 )
	sw x9, 0 ( x21 )
	add x10, fp, x10
	sw x10, 8 ( x12 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_397
.LBB0_385:                              //  %if.then1225
                                        //    in Loop: Header=BB0_377 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	lw x11, 112 ( sp )              //  4-byte Folded Reload
	jal __ssprint_r
	add x13, x0, 16
	add x21, sp, 224
	bltu x0, x10, .LBB0_534
.LBB0_386:                              //  %if.end1232
                                        //    in Loop: Header=BB0_377 Depth=3
	mv x10, x0
	blt x10, fp, .LBB0_388
.LBB0_387:                              //  %if.end1232
                                        //    in Loop: Header=BB0_377 Depth=3
	mv fp, x0
.LBB0_388:                              //  %if.end1232
                                        //    in Loop: Header=BB0_377 Depth=3
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	lb x10, 0 ( x10 )
	sub fp, x10, fp
	bge x0, fp, .LBB0_399
.LBB0_389:                              //  %while.cond1244.preheader
                                        //    in Loop: Header=BB0_377 Depth=3
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_392
	jal x0, .LBB0_394
.LBB0_390:                              //    in Loop: Header=BB0_392 Depth=4
	add x21, x21, 8
.LBB0_391:                              //  %if.end1263
                                        //    in Loop: Header=BB0_392 Depth=4
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x21 )
	bge x13, fp, .LBB0_394
.LBB0_392:                              //  %while.body1247
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_377 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	add x12, sp, 288
	lw x10, 8 ( x12 )
	sw x13, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x12 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_390
.LBB0_393:                              //  %if.then1257
                                        //    in Loop: Header=BB0_392 Depth=4
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	lw x11, 112 ( sp )              //  4-byte Folded Reload
	jal __ssprint_r
	add x13, x0, 16
	add x21, sp, 224
	beq x0, x10, .LBB0_391
	jal x0, .LBB0_534
.LBB0_394:                              //  %while.end1265
                                        //    in Loop: Header=BB0_377 Depth=3
	add x12, sp, 288
	lw x10, 8 ( x12 )
	sw fp, 4 ( x21 )
	add x10, fp, x10
	sw x10, 8 ( x12 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_398
.LBB0_395:                              //  %if.then1275
                                        //    in Loop: Header=BB0_377 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	lw x11, 112 ( sp )              //  4-byte Folded Reload
	jal __ssprint_r
	add x13, x0, 16
	add x21, sp, 224
	beq x0, x10, .LBB0_399
	jal x0, .LBB0_534
.LBB0_396:                              //    in Loop: Header=BB0_377 Depth=3
	add x21, x21, 8
	lw x11, 88 ( sp )               //  4-byte Folded Reload
	sub x10, x26, x9
	lb fp, 0 ( x11 )
	bge fp, x10, .LBB0_382
	jal x0, .LBB0_383
.LBB0_397:                              //    in Loop: Header=BB0_377 Depth=3
	add x21, x21, 8
	mv x10, x0
	bge x10, fp, .LBB0_387
	jal x0, .LBB0_388
.LBB0_398:                              //    in Loop: Header=BB0_377 Depth=3
	add x21, x21, 8
.LBB0_399:                              //  %cleanup.cont1285
                                        //    in Loop: Header=BB0_377 Depth=3
	xor x10, x18, -1
	and x10, x10, 1
	sub x24, x24, x10
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	lw x11, 56 ( sp )               //  4-byte Folded Reload
	lb x10, 0 ( x10 )
	sub x11, x11, x20
	slt x18, x0, x11
	sw x11, 56 ( sp )               //  4-byte Folded Spill
	add x9, x10, x9
	blt x0, x11, .LBB0_377
.LBB0_400:                              //  %cleanup.cont1285
                                        //    in Loop: Header=BB0_377 Depth=3
	blt x0, x24, .LBB0_377
	jal x0, .LBB0_325
.LBB0_401:                              //    in Loop: Header=BB0_8 Depth=2
	lw fp, 108 ( sp )               //  4-byte Folded Reload
.LBB0_402:                              //  %if.end1531
                                        //    in Loop: Header=BB0_8 Depth=2
	add x9, x9, 8
.LBB0_403:                              //  %if.end1531
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 28 ( sp )               //  4-byte Folded Reload
	lw x10, 8 ( x19 )
	sw x11, 4 ( x9 )
	add x10, x11, x10
	sw x10, 8 ( x19 )
	add x10, sp, 301
	sw x10, 0 ( x9 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_414
.LBB0_404:                              //  %if.then1542
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	add x21, sp, 224
	add x13, x0, 16
	beq x0, x10, .LBB0_405
	jal x0, .LBB0_525
.LBB0_414:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x9, 8
	add x13, x0, 16
	and x10, fp, 4
	bltu x0, x10, .LBB0_406
	jal x0, .LBB0_514
.LBB0_415:                              //    in Loop: Header=BB0_8 Depth=2
	add x11, x21, 8
	lw x9, 96 ( sp )                //  4-byte Folded Reload
	bge x10, x0, .LBB0_511
.LBB0_416:                              //  %while.cond1033.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 116 ( sp )              //  4-byte Folded Reload
	sub fp, x0, x10
	sw x12, 0 ( x11 )
	add x12, x0, -17
	bge x12, x10, .LBB0_419
	jal x0, .LBB0_441
.LBB0_417:                              //    in Loop: Header=BB0_419 Depth=3
	add x11, x11, 8
.LBB0_418:                              //  %if.end1052
                                        //    in Loop: Header=BB0_419 Depth=3
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x11 )
	bge x13, fp, .LBB0_441
.LBB0_419:                              //  %while.body1036
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	sw x13, 4 ( x11 )
	add x10, x10, 16
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 292 ( sp )
	bltu x0, x10, .LBB0_417
.LBB0_420:                              //  %if.then1046
                                        //    in Loop: Header=BB0_419 Depth=3
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	add x13, x0, 16
	add x11, sp, 224
	beq x0, x10, .LBB0_418
	jal x0, .LBB0_525
.LBB0_421:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x21, 8
.LBB0_422:                              //  %if.end1318
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 96 ( sp )               //  4-byte Folded Reload
	add x11, x12, x27
	sub x10, x12, x10
	sub x11, x11, fp
	mv x9, x10
	blt x10, x11, .LBB0_424
.LBB0_423:                              //  %if.end1318
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x9, x11
.LBB0_424:                              //  %if.end1318
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27, 92 ( sp )               //  4-byte Folded Reload
	bge x0, x9, .LBB0_428
.LBB0_425:                              //  %if.then1332
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x19 )
	sw x9, 4 ( x21 )
	sw fp, 0 ( x21 )
	add x11, x9, x11
	sw x11, 8 ( x19 )
	lw x11, 292 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 292 ( sp )
	bltu x0, x11, .LBB0_431
.LBB0_426:                              //  %if.then1342
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	bltu x0, x10, .LBB0_525
.LBB0_427:                              //  %if.then1342.if.end1349_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 308 ( sp )
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	add x21, sp, 224
	add x13, x0, 16
	sub x10, x11, x10
.LBB0_428:                              //  %if.end1349
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x26, x9, .LBB0_432
.LBB0_429:                              //  %if.end1349
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x11, x26
	add fp, x11, x10
	blt x0, fp, .LBB0_433
.LBB0_273:                              //    in Loop: Header=BB0_8 Depth=2
	lw fp, 108 ( sp )               //  4-byte Folded Reload
	and x10, fp, 4
	bltu x0, x10, .LBB0_406
	jal x0, .LBB0_514
.LBB0_431:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x21, 8
	bge x26, x9, .LBB0_429
.LBB0_432:                              //    in Loop: Header=BB0_8 Depth=2
	sub x11, x0, x9
	add fp, x11, x10
	bge x0, fp, .LBB0_273
.LBB0_433:                              //  %while.cond1361.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_436
	jal x0, .LBB0_438
.LBB0_434:                              //    in Loop: Header=BB0_436 Depth=3
	add x21, x21, 8
.LBB0_435:                              //  %if.end1380
                                        //    in Loop: Header=BB0_436 Depth=3
	lw x10, 116 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x21 )
	bge x13, fp, .LBB0_438
.LBB0_436:                              //  %while.body1364
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	sw x13, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_434
.LBB0_437:                              //  %if.then1374
                                        //    in Loop: Header=BB0_436 Depth=3
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	add x13, x0, 16
	add x21, sp, 224
	beq x0, x10, .LBB0_435
	jal x0, .LBB0_525
.LBB0_438:                              //  %while.end967
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x19 )
	sw fp, 4 ( x21 )
	add x10, fp, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 292 ( sp )
	bltu x0, x10, .LBB0_440
.LBB0_439:                              //  %if.then977
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	lw fp, 108 ( sp )               //  4-byte Folded Reload
	add x13, x0, 16
	add x21, sp, 224
	beq x0, x10, .LBB0_405
	jal x0, .LBB0_525
.LBB0_440:                              //    in Loop: Header=BB0_8 Depth=2
	lw fp, 108 ( sp )               //  4-byte Folded Reload
	add x21, x21, 8
	and x10, fp, 4
	bltu x0, x10, .LBB0_406
	jal x0, .LBB0_514
.LBB0_441:                              //  %while.end1054
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x19 )
	sw fp, 4 ( x11 )
	add x10, fp, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 292 ( sp )
	bltu x0, x10, .LBB0_510
.LBB0_442:                              //  %if.then1064
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	lw fp, 108 ( sp )               //  4-byte Folded Reload
	add x13, x0, 16
	add x11, sp, 224
	beq x0, x10, .LBB0_511
	jal x0, .LBB0_525
.LBB0_443:                              //  %if.then74.if.end83_crit_edge.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 308 ( sp )
.LBB0_444:                              //  %if.end83.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add fp, x10, fp
.LBB0_445:                              //  %if.end85.i
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x12, x0
	mv x10, x19
	mv x11, x20
	mv x13, x12
	jal __nedf2
	bltu x0, x10, .LBB0_447
.LBB0_446:                              //  %if.end89.thread.i
                                        //    in Loop: Header=BB0_8 Depth=2
	sw fp, 320 ( sp )
	jal x0, .LBB0_451
.LBB0_447:                              //  %if.end89.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 320 ( sp )
	add x13, x0, 16
	bgeu x10, fp, .LBB0_449
.LBB0_448:                              //  %while.body93.i
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x11, x10, 1
	sw x11, 320 ( sp )
	add x11, x0, 48
	sb x11, 0 ( x10 )
	lw x10, 320 ( sp )
	bltu x10, fp, .LBB0_448
.LBB0_449:                              //  %if.end96.loopexit.i
                                        //    in Loop: Header=BB0_8 Depth=2
	mv fp, x10
	jal x0, .LBB0_452
.LBB0_450:                              //    in Loop: Header=BB0_8 Depth=2
	lw x19, 84 ( sp )               //  4-byte Folded Reload
.LBB0_451:                              //  %cvt.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	add x13, x0, 16
.LBB0_452:                              //  %cvt.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 108 ( sp )              //  4-byte Folded Reload
	or x17, x10, 256
	sub x10, fp, x27
	sw x10, 96 ( sp )               //  4-byte Folded Spill
	lw x10, 68 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB0_456
.LBB0_453:                              //  %if.then276
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15, 308 ( sp )
	lw x11, 92 ( sp )               //  4-byte Folded Reload
	add x9, x9, -2
	slti x10, x15, -3
	bltu x0, x10, .LBB0_458
.LBB0_454:                              //  %if.then276
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 108 ( sp )              //  4-byte Folded Reload
	blt x11, x15, .LBB0_459
.LBB0_455:                              //    in Loop: Header=BB0_8 Depth=2
	add x9, x0, 103
	jal x0, .LBB0_467
.LBB0_456:                              //  %if.else286
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 108 ( sp )              //  4-byte Folded Reload
	lw x11, 92 ( sp )               //  4-byte Folded Reload
	xor x10, x9, 70
	bltu x0, x10, .LBB0_459
.LBB0_457:                              //  %if.else307.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15, 308 ( sp )
	and x10, x12, 1
	or x10, x11, x10
	blt x0, x15, .LBB0_465
.LBB0_480:                              //  %if.else322
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x18, x0
	beq x10, x18, .LBB0_503
.LBB0_481:                              //  %if.else322
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	add x10, x10, x11
	add x16, x10, 1
	jal x0, .LBB0_504
.LBB0_458:                              //    in Loop: Header=BB0_8 Depth=2
	lw x12, 108 ( sp )              //  4-byte Folded Reload
.LBB0_459:                              //  %if.end291
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 101
	blt x10, x9, .LBB0_463
.LBB0_460:                              //  %if.then294
                                        //    in Loop: Header=BB0_8 Depth=2
	or x11, x9, 32
	add x10, x0, 97
	beq x11, x10, .LBB0_483
.LBB0_461:                              //  %if.then294
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x12, x9
	lw x10, 308 ( sp )
	seqz x15, x0
	add x13, x10, -1
	bge x10, x15, .LBB0_484
.LBB0_462:                              //    in Loop: Header=BB0_8 Depth=2
	add x14, x0, 45
	sub x10, x15, x10
	jal x0, .LBB0_485
.LBB0_463:                              //  %if.else307
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15, 308 ( sp )
	xor x10, x9, 102
	bltu x0, x10, .LBB0_467
.LBB0_464:                              //  %if.then310
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x12, 1
	or x10, x11, x10
	bge x0, x15, .LBB0_480
.LBB0_465:                              //  %if.then313
                                        //    in Loop: Header=BB0_8 Depth=2
	add x9, x0, 102
	beq x0, x10, .LBB0_501
.LBB0_466:                              //  %if.then318
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	add x10, x10, x11
	add x16, x15, x10
	mv x18, x0
	and x10, x12, 1024
	beq x0, x10, .LBB0_502
.LBB0_472:                              //  %if.end352
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x0, x15, .LBB0_502
.LBB0_473:                              //  %while.cond359.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x18, x0
	lb x10, 0 ( x10 )
	xor x11, x10, 127
	beq x0, x11, .LBB0_506
.LBB0_474:                              //  %while.cond359.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x10, x15, .LBB0_506
.LBB0_475:                              //  %if.end368.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x11, x0
	mv x18, x11
	mv x24, x11
.LBB0_476:                              //  %if.end368
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x14, 88 ( sp )               //  4-byte Folded Reload
	lbu x12, 1 ( x14 )
	beq x12, x11, .LBB0_478
.LBB0_477:                              //  %if.end368
                                        //    in Loop: Header=BB0_476 Depth=3
	add x14, x14, 1
.LBB0_478:                              //  %if.end368
                                        //    in Loop: Header=BB0_476 Depth=3
	sub x15, x15, x10
	snez x10, x12
	add x24, x10, x24
	seqz x10, x12
	add x18, x10, x18
	lb x10, 0 ( x14 )
	sw x14, 88 ( sp )               //  4-byte Folded Spill
	xor x12, x10, 127
	beq x0, x12, .LBB0_507
.LBB0_479:                              //  %if.end368
                                        //    in Loop: Header=BB0_476 Depth=3
	blt x10, x15, .LBB0_476
	jal x0, .LBB0_507
.LBB0_467:                              //  %if.else334
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	bge x15, x11, .LBB0_470
.LBB0_468:                              //  %if.else343
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	add x16, x10, x11
	blt x0, x15, .LBB0_471
.LBB0_469:                              //  %if.then347
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x10, x16, x15
	mv x18, x0
	add x16, x10, 1
	jal x0, .LBB0_502
.LBB0_470:                              //  %if.then337
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 36 ( sp )               //  4-byte Folded Reload
	and x10, x12, 1
	sub x10, x0, x10
	and x10, x11, x10
	add x16, x10, x15
.LBB0_471:                              //  %if.end352
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x18, x0
	and x10, x12, 1024
	bltu x0, x10, .LBB0_472
	jal x0, .LBB0_502
.LBB0_506:                              //    in Loop: Header=BB0_8 Depth=2
	mv x24, x18
.LBB0_507:                              //  %while.end379
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 44 ( sp )               //  4-byte Folded Reload
	add x10, x18, x24
	hackaton_custom_instr_c x10, x11, x10
	add x16, x16, x10
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	mv x11, x0
	sw x15, 68 ( sp )               //  4-byte Folded Spill
	bge x10, x0, .LBB0_509
	jal x0, .LBB0_508
.LBB0_483:                              //    in Loop: Header=BB0_8 Depth=2
	add x12, x9, 15
	lw x10, 308 ( sp )
	seqz x15, x0
	add x13, x10, -1
	blt x10, x15, .LBB0_462
.LBB0_484:                              //  %if.then294
                                        //    in Loop: Header=BB0_8 Depth=2
	add x14, x0, 43
	mv x10, x13
.LBB0_485:                              //  %if.then294
                                        //    in Loop: Header=BB0_8 Depth=2
	sb x12, 301 ( sp )
	slti x12, x10, 10
	sw x13, 308 ( sp )
	sb x14, 302 ( sp )
	sw x19, 84 ( sp )               //  4-byte Folded Spill
	bltu x0, x12, .LBB0_493
.LBB0_486:                              //  %do.body.i2298.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x24, x17
	add x20, sp, 324
	add x19, x0, 6
	add x12, x0, -1
.LBB0_487:                              //  %do.body.i2298
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	mv x11, x23
	mv x18, x10
	mv fp, x12
	jal __divsi3
	hackaton_custom_instr_c x11, x23, x10
	sub x11, x18, x11
	add x12, x19, x20
	add x11, x11, 48
	sb x11, 0 ( x12 )
	add x12, fp, -1
	add x19, x19, -1
	add x13, x0, 99
	blt x13, x18, .LBB0_487
.LBB0_488:                              //  %do.end.i2299
                                        //    in Loop: Header=BB0_8 Depth=2
	add x12, x10, 48
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	add x13, x19, x20
	sb x12, 0 ( x13 )
	add x13, x19, -7
	mv x17, x24
	bge x13, x0, .LBB0_496
.LBB0_489:                              //  %for.inc.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	sb x12, 303 ( sp )
	xor x12, x19, 6
	beq x0, x12, .LBB0_496
.LBB0_490:                              //  %for.inc.for.inc_crit_edge.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	sb x11, 304 ( sp )
	xor x11, x19, 5
	add x10, sp, 305
	beq x0, x11, .LBB0_496
.LBB0_491:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, sp, 305
.LBB0_492:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x11, sp, 332
	add x11, fp, x11
	lb x11, 0 ( x11 )
	add fp, fp, 1
	sb x11, 0 ( x10 )
	add x10, x10, 1
	xor x11, fp, -1
	bltu x0, x11, .LBB0_492
	jal x0, .LBB0_496
.LBB0_493:                              //  %if.else23.i
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x12, x11, 97
	lw x11, 20 ( sp )               //  4-byte Folded Reload
	beq x0, x12, .LBB0_495
.LBB0_494:                              //  %if.then25.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11, x0, 48
	sb x11, 303 ( sp )
	lw x11, 16 ( sp )               //  4-byte Folded Reload
.LBB0_495:                              //  %if.end27.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x10, 48
	sb x10, 0 ( x11 )
	add x10, x11, 1
.LBB0_496:                              //  %exponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13, 96 ( sp )               //  4-byte Folded Reload
	mv x24, x0
	add x12, x0, 2
	mv x11, x24
	blt x13, x12, .LBB0_498
.LBB0_497:                              //  %exponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 36 ( sp )               //  4-byte Folded Reload
.LBB0_498:                              //  %exponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 108 ( sp )              //  4-byte Folded Reload
	lw x19, 84 ( sp )               //  4-byte Folded Reload
	add x13, x0, 16
	and x12, x12, 1
	beq x12, x24, .LBB0_500
.LBB0_499:                              //  %exponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 36 ( sp )               //  4-byte Folded Reload
.LBB0_500:                              //  %exponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 96 ( sp )               //  4-byte Folded Reload
	and x17, x17, -1025
	mv x18, x24
	mv x15, x24
	add x11, x12, x11
	add x12, sp, 301
	sub x10, x10, x12
	sw x10, 28 ( sp )               //  4-byte Folded Spill
	add x16, x10, x11
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	mv x11, x0
	sw x15, 68 ( sp )               //  4-byte Folded Spill
	bge x10, x0, .LBB0_509
	jal x0, .LBB0_508
.LBB0_501:                              //    in Loop: Header=BB0_8 Depth=2
	mv x16, x15
	mv x18, x0
	and x10, x12, 1024
	bltu x0, x10, .LBB0_472
	jal x0, .LBB0_502
.LBB0_503:                              //    in Loop: Header=BB0_8 Depth=2
	seqz x16, x0
.LBB0_504:                              //  %if.else322
                                        //    in Loop: Header=BB0_8 Depth=2
	add x9, x0, 102
.LBB0_502:                              //    in Loop: Header=BB0_8 Depth=2
	mv x24, x18
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	mv x11, x0
	sw x15, 68 ( sp )               //  4-byte Folded Spill
	bge x10, x0, .LBB0_509
.LBB0_508:                              //  %if.then387
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 45
	sb x10, 315 ( sp )
.LBB0_509:                              //    in Loop: Header=BB0_8 Depth=2
	mv fp, x17
	mv x10, x16
	mv x12, x11
	mv x20, x11
	mv x26, x10
	blt x10, x11, .LBB0_560
.LBB0_561:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_183
.LBB0_560:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_184
.LBB0_510:                              //    in Loop: Header=BB0_8 Depth=2
	lw fp, 108 ( sp )               //  4-byte Folded Reload
	add x11, x11, 8
.LBB0_511:                              //  %if.end1071
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x19 )
	sw x9, 4 ( x11 )
	sw x27, 0 ( x11 )
	add x10, x9, x10
	sw x10, 8 ( x19 )
	lw x10, 292 ( sp )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 292 ( sp )
	bltu x0, x10, .LBB0_513
.LBB0_512:                              //  %if.then1081
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	add x13, x0, 16
	add x21, sp, 224
	lw x27, 92 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_405
	jal x0, .LBB0_525
.LBB0_513:                              //    in Loop: Header=BB0_8 Depth=2
	lw x27, 92 ( sp )               //  4-byte Folded Reload
	add x21, x11, 8
	and x10, fp, 4
	bltu x0, x10, .LBB0_406
.LBB0_514:                              //  %if.end1597thread-pre-split
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 296 ( sp )
.LBB0_515:                              //  %if.end1597
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x27, x22, .LBB0_517
.LBB0_516:                              //  %if.end1597
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x22, x27
.LBB0_517:                              //  %if.end1597
                                        //    in Loop: Header=BB0_8 Depth=2
	add x18, x18, x22
	beq x0, x10, .LBB0_519
.LBB0_518:                              //  %land.lhs.true1607
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x20
	mv x11, x24
	mv x12, x19
	jal __ssprint_r
	bltu x0, x10, .LBB0_525
.LBB0_519:                              //  %if.end1611
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	mv x27, x25
	add x13, x0, 16
	sw x0, 292 ( sp )
	bltu x0, x11, .LBB0_520
.LBB0_562:                              //  %if.end1611
                                        //    in Loop: Header=BB0_5 Depth=1
	jal x0, .LBB0_5
.LBB0_520:                              //  %if.then1616
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x20
	jal _free_r
	add x13, x0, 16
	mv x27, x25
	add x21, sp, 224
	mv fp, x27
	lbu x10, 0 ( fp )
	beq x0, x10, .LBB0_563
.LBB0_564:                              //  %if.then1616
                                        //    in Loop: Header=BB0_5 Depth=1
	jal x0, .LBB0_6
.LBB0_563:                              //  %if.then1616
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_8
.LBB0_521:
	lw x18, 80 ( sp )               //  4-byte Folded Reload
.LBB0_522:
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	lw x24, 112 ( sp )              //  4-byte Folded Reload
	bltu x0, x11, .LBB0_526
	jal x0, .LBB0_527
.LBB0_523:
	lw x18, 80 ( sp )               //  4-byte Folded Reload
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	lw x20, 100 ( sp )              //  4-byte Folded Reload
	lw x24, 112 ( sp )              //  4-byte Folded Reload
	bltu x0, x11, .LBB0_526
	jal x0, .LBB0_527
.LBB0_524:
	lw x20, 100 ( sp )              //  4-byte Folded Reload
	lw x18, 80 ( sp )               //  4-byte Folded Reload
.LBB0_525:                              //  %error
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	beq x0, x11, .LBB0_527
.LBB0_526:                              //  %if.then1629
	mv x10, x20
	jal _free_r
.LBB0_527:                              //  %if.end1630
	lbu x10, 12 ( x24 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB0_529
.LBB0_528:                              //  %if.end1630
	add x18, x0, -1
.LBB0_529:                              //  %cleanup1640
	mv x10, x18
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
.LBB0_530:                              //  %done
	lw x10, 296 ( sp )
	beq x0, x10, .LBB0_532
.LBB0_531:                              //  %land.lhs.true1620
	add x12, sp, 288
	mv x10, x20
	mv x11, x24
	jal __ssprint_r
	bltu x0, x10, .LBB0_527
.LBB0_532:                              //  %if.end1624
	sw x0, 292 ( sp )
	lbu x10, 12 ( x24 )
	mv x11, x0
	and x10, x10, 64
	bne x10, x11, .LBB0_528
	jal x0, .LBB0_529
.LBB0_533:                              //  %if.then9
	add x10, x0, 12
	add x18, x0, -1
	sw x10, 0 ( x20 )
	jal x0, .LBB0_529
.LBB0_534:
	lw x20, 100 ( sp )              //  4-byte Folded Reload
	mv x18, x19
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	lw x24, 112 ( sp )              //  4-byte Folded Reload
	bltu x0, x11, .LBB0_526
	jal x0, .LBB0_527
.LBB0_535:                              //  %if.then242
	lw x24, 112 ( sp )              //  4-byte Folded Reload
	lw x18, 80 ( sp )               //  4-byte Folded Reload
	lh x10, 12 ( x24 )
	or x10, x10, 64
	sh x10, 12 ( x24 )
	lbu x10, 12 ( x24 )
	mv x11, x0
	and x10, x10, 64
	bne x10, x11, .LBB0_528
	jal x0, .LBB0_529
.Lfunc_end0:
	.size	_svfprintf_r, .Lfunc_end0-_svfprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_29
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_31
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_32
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_37
	.long	.LBB0_39
	.long	.LBB0_142
	.long	.LBB0_42
	.long	.LBB0_21
	.long	.LBB0_142
	.long	.LBB0_43
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_66
	.long	.LBB0_142
	.long	.LBB0_80
	.long	.LBB0_89
	.long	.LBB0_66
	.long	.LBB0_66
	.long	.LBB0_66
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_44
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_97
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_81
	.long	.LBB0_142
	.long	.LBB0_103
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_109
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_66
	.long	.LBB0_142
	.long	.LBB0_80
	.long	.LBB0_90
	.long	.LBB0_66
	.long	.LBB0_66
	.long	.LBB0_66
	.long	.LBB0_46
	.long	.LBB0_90
	.long	.LBB0_28
	.long	.LBB0_142
	.long	.LBB0_48
	.long	.LBB0_142
	.long	.LBB0_57
	.long	.LBB0_98
	.long	.LBB0_114
	.long	.LBB0_28
	.long	.LBB0_142
	.long	.LBB0_81
	.long	.LBB0_41
	.long	.LBB0_104
	.long	.LBB0_142
	.long	.LBB0_142
	.long	.LBB0_135
	.long	.LBB0_142
	.long	.LBB0_41
                                        //  -- End function
	.address_space	0
	.type	_svfprintf_r.blanks,@object //  @_svfprintf_r.blanks
_svfprintf_r.blanks:
	.zero	16,32
	.size	_svfprintf_r.blanks, 16

	.address_space	0
	.type	_svfprintf_r.zeroes,@object //  @_svfprintf_r.zeroes
_svfprintf_r.zeroes:
	.zero	16,48
	.size	_svfprintf_r.zeroes, 16

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
