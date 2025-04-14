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
	add sp, sp, -368
	.cfi_adjust_cfa_offset 368
	sw x9, 360 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x24, 332 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x27, 320 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw ra, 364 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 356 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 352 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 348 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 344 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 340 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 336 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x25, 328 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 324 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw fp, 316 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv x24, x12
	mv x27, x11
	mv x9, x10
	sw x13, 300 ( sp )
	jal _localeconv_r
	lw x10, 0 ( x10 )
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	jal strlen
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	lbu x10, 12 ( x27 )
	and x10, x10, 128
	beq x0, x10, .LBB0_4
.LBB0_1:                                //  %land.lhs.true
	lw x10, 16 ( x27 )
	bltu x0, x10, .LBB0_4
.LBB0_2:                                //  %if.then
	add fp, x0, 64
	mv x10, x9
	mv x11, fp
	jal _malloc_r
	sw x10, 16 ( x27 )
	sw x10, 0 ( x27 )
	bltu x0, x10, .LBB0_3
.LBB0_525:                              //  %if.then
	jal x0, .LBB0_522
.LBB0_3:                                //  %if.end
	sw fp, 20 ( x27 )
.LBB0_4:                                //  %if.end11
	add x10, sp, 208
	sw x10, 272 ( sp )
	add x10, sp, 108
	add x10, x10, 100
	sw x10, 36 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _svfprintf_r.blanks )
	add x10, x10, %lo( _svfprintf_r.blanks )
	sw x10, 92 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _svfprintf_r.zeroes )
	add x10, x10, %lo( _svfprintf_r.zeroes )
	sw x10, 100 ( sp )              //  4-byte Folded Spill
	lui x10, %hi( .str.8 )
	add x10, x10, %lo( .str.8 )
	sw x10, 12 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( JTI0_0 )
	add x10, x10, %lo( JTI0_0 )
	add x11, sp, 285
	mv x19, x0
	sw x10, 64 ( sp )               //  4-byte Folded Spill
	add x10, x11, 2
	add x18, sp, 272
	sw x10, 8 ( sp )                //  4-byte Folded Spill
	add x10, x11, 3
	add x23, x0, 10
	add x25, x0, 90
	mv x20, x19
	sw x0, 8 ( x18 )
	sw x19, 40 ( sp )               //  4-byte Folded Spill
	sw x0, 276 ( sp )
	sw x19, 80 ( sp )               //  4-byte Folded Spill
	sw x19, 44 ( sp )               //  4-byte Folded Spill
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	sw x19, 72 ( sp )               //  4-byte Folded Spill
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	sw x19, 28 ( sp )               //  4-byte Folded Spill
	sw x10, 4 ( sp )                //  4-byte Folded Spill
	sw x27, 84 ( sp )               //  4-byte Folded Spill
	sw x9, 88 ( sp )                //  4-byte Folded Spill
.LBB0_5:                                //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_8 Depth 2
                                        //        Child Loop BB0_15 Depth 3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_20 Depth 5
                                        //              Child Loop BB0_25 Depth 6
                                        //            Child Loop BB0_18 Depth 5
                                        //        Child Loop BB0_122 Depth 3
                                        //        Child Loop BB0_125 Depth 3
                                        //        Child Loop BB0_167 Depth 3
                                        //        Child Loop BB0_163 Depth 3
                                        //        Child Loop BB0_464 Depth 3
                                        //        Child Loop BB0_362 Depth 3
                                        //        Child Loop BB0_398 Depth 3
                                        //        Child Loop BB0_369 Depth 3
                                        //        Child Loop BB0_481 Depth 3
                                        //        Child Loop BB0_494 Depth 3
                                        //        Child Loop BB0_499 Depth 3
                                        //        Child Loop BB0_197 Depth 3
                                        //        Child Loop BB0_215 Depth 3
                                        //        Child Loop BB0_224 Depth 3
                                        //        Child Loop BB0_283 Depth 3
                                        //        Child Loop BB0_344 Depth 3
                                        //        Child Loop BB0_400 Depth 3
                                        //          Child Loop BB0_418 Depth 4
                                        //        Child Loop BB0_447 Depth 3
                                        //        Child Loop BB0_430 Depth 3
                                        //        Child Loop BB0_271 Depth 3
                                        //        Child Loop BB0_319 Depth 3
                                        //      Child Loop BB0_6 Depth 2
	add x21, sp, 208
	mv fp, x24
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
                                        //            Child Loop BB0_20 Depth 5
                                        //              Child Loop BB0_25 Depth 6
                                        //            Child Loop BB0_18 Depth 5
                                        //        Child Loop BB0_122 Depth 3
                                        //        Child Loop BB0_125 Depth 3
                                        //        Child Loop BB0_167 Depth 3
                                        //        Child Loop BB0_163 Depth 3
                                        //        Child Loop BB0_464 Depth 3
                                        //        Child Loop BB0_362 Depth 3
                                        //        Child Loop BB0_398 Depth 3
                                        //        Child Loop BB0_369 Depth 3
                                        //        Child Loop BB0_481 Depth 3
                                        //        Child Loop BB0_494 Depth 3
                                        //        Child Loop BB0_499 Depth 3
                                        //        Child Loop BB0_197 Depth 3
                                        //        Child Loop BB0_215 Depth 3
                                        //        Child Loop BB0_224 Depth 3
                                        //        Child Loop BB0_283 Depth 3
                                        //        Child Loop BB0_344 Depth 3
                                        //        Child Loop BB0_400 Depth 3
                                        //          Child Loop BB0_418 Depth 4
                                        //        Child Loop BB0_447 Depth 3
                                        //        Child Loop BB0_430 Depth 3
                                        //        Child Loop BB0_271 Depth 3
                                        //        Child Loop BB0_319 Depth 3
	sub x9, fp, x24
	beq x0, x9, .LBB0_13
.LBB0_9:                                //  %if.then19
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x18 )
	sw x9, 4 ( x21 )
	sw x24, 0 ( x21 )
	add x10, x9, x10
	sw x10, 8 ( x18 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_11
.LBB0_10:                               //  %if.then24
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	add x21, sp, 208
	beq x0, x10, .LBB0_12
	jal x0, .LBB0_220
.LBB0_11:                               //    in Loop: Header=BB0_8 Depth=2
	add x21, x21, 8
.LBB0_12:                               //  %if.end30
                                        //    in Loop: Header=BB0_8 Depth=2
	lbu x10, 0 ( fp )
	add x20, x20, x9
.LBB0_13:                               //  %if.end32
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	bltu x0, x10, .LBB0_14
.LBB0_526:                              //  %if.end32
	jal x0, .LBB0_519
.LBB0_14:                               //  %if.end37
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, -1
	add x11, fp, 1
	mv x22, x19
	sw x19, 96 ( sp )               //  4-byte Folded Spill
	sb x0, 299 ( sp )
	sw x10, 76 ( sp )               //  4-byte Folded Spill
	sw x20, 68 ( sp )               //  4-byte Folded Spill
.LBB0_15:                               //  %rflag
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_20 Depth 5
                                        //              Child Loop BB0_25 Depth 6
                                        //            Child Loop BB0_18 Depth 5
	lb x18, 0 ( x11 )
	add x26, x11, 1
.LBB0_16:                               //  %reswitch
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB0_20 Depth 5
                                        //              Child Loop BB0_25 Depth 6
                                        //            Child Loop BB0_18 Depth 5
	add x10, x18, -49
	sltiu x10, x10, 9
	beq x0, x10, .LBB0_20
.LBB0_17:                               //  %do.body.preheader
                                        //    in Loop: Header=BB0_16 Depth=4
	mv x22, x19
.LBB0_18:                               //  %do.body
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	mv x10, x22
	mv x11, x23
	jal __mulsi3
	add x10, x10, x18
	lb x18, 0 ( x26 )
	add x22, x10, -48
	add x26, x26, 1
	add x10, x18, -48
	sltiu x10, x10, 10
	bltu x0, x10, .LBB0_18
	jal x0, .LBB0_16
.LBB0_19:                               //    in Loop: Header=BB0_20 Depth=5
	mv x10, x0
	mv x26, x11
	sw x10, 76 ( sp )               //  4-byte Folded Spill
	add x10, x18, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB0_17
.LBB0_20:                               //  %reswitch
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //  =>        This Loop Header: Depth=5
                                        //              Child Loop BB0_25 Depth 6
	add x10, x18, -32
	bltu x25, x10, .LBB0_140
.LBB0_21:                               //  %reswitch
                                        //    in Loop: Header=BB0_20 Depth=5
	lw x11, 64 ( sp )               //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB0_22:                               //  %sw.bb69
                                        //    in Loop: Header=BB0_20 Depth=5
	lb x18, 0 ( x26 )
	add x11, x26, 1
	xor x10, x18, 42
	beq x0, x10, .LBB0_54
.LBB0_23:                               //  %while.cond81.preheader
                                        //    in Loop: Header=BB0_20 Depth=5
	add fp, x18, -48
	add x10, x0, 9
	bltu x10, fp, .LBB0_19
.LBB0_24:                               //  %while.body85.preheader
                                        //    in Loop: Header=BB0_20 Depth=5
	mv x10, x0
	mv x26, x11
.LBB0_25:                               //  %while.body85
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //            Parent Loop BB0_20 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	add x11, x0, 10
	jal __mulsi3
	lb x18, 0 ( x26 )
	add x10, x10, fp
	add x26, x26, 1
	add fp, x18, -48
	sltiu x11, fp, 10
	bltu x0, x11, .LBB0_25
.LBB0_26:                               //  %while.end90
                                        //    in Loop: Header=BB0_20 Depth=5
	add x11, x0, -1
	sw x11, 76 ( sp )               //  4-byte Folded Spill
	blt x10, x0, .LBB0_16
.LBB0_27:                               //  %while.end90.thread
                                        //    in Loop: Header=BB0_20 Depth=5
	sw x10, 76 ( sp )               //  4-byte Folded Spill
	add x10, x18, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB0_17
	jal x0, .LBB0_20
.LBB0_28:                               //  %sw.bb127
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	or x10, x10, 32
	jal x0, .LBB0_45
.LBB0_29:                               //  %sw.bb55
                                        //    in Loop: Header=BB0_15 Depth=3
	lbu x10, 299 ( sp )
	mv x11, x26
	bltu x0, x10, .LBB0_15
.LBB0_30:                               //  %if.then57
                                        //    in Loop: Header=BB0_15 Depth=3
	add x10, x0, 32
	jal x0, .LBB0_41
.LBB0_31:                               //  %sw.bb59
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	or x10, x10, 1
	jal x0, .LBB0_45
.LBB0_32:                               //  %sw.bb
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x10, x9
	jal _localeconv_r
	lw x10, 4 ( x10 )
	sw x10, 28 ( sp )               //  4-byte Folded Spill
	jal strlen
	mv fp, x10
	mv x10, x9
	jal _localeconv_r
	lw x10, 8 ( x10 )
	mv x11, x26
	sw fp, 32 ( sp )                //  4-byte Folded Spill
	sw x10, 72 ( sp )               //  4-byte Folded Spill
	beq x0, fp, .LBB0_15
.LBB0_33:                               //  %sw.bb
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	mv x11, x26
	beq x0, x10, .LBB0_15
.LBB0_34:                               //  %land.lhs.true50
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	mv x11, x0
	lbu x10, 0 ( x10 )
	beq x10, x11, .LBB0_36
.LBB0_35:                               //  %land.lhs.true50
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	or x10, x10, 1024
	sw x10, 96 ( sp )               //  4-byte Folded Spill
.LBB0_36:                               //  %land.lhs.true50
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x11, x26
	jal x0, .LBB0_15
.LBB0_37:                               //  %sw.bb61
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x22, 0 ( x10 )
	mv x11, x26
	bge x22, x0, .LBB0_15
.LBB0_38:                               //  %if.end65
                                        //    in Loop: Header=BB0_15 Depth=3
	sub x22, x0, x22
.LBB0_39:                               //  %sw.bb66.loopexit
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	or x10, x10, 4
	jal x0, .LBB0_45
.LBB0_40:                               //  %sw.bb68
                                        //    in Loop: Header=BB0_15 Depth=3
	add x10, x0, 43
.LBB0_41:                               //  %rflag
                                        //    in Loop: Header=BB0_15 Depth=3
	sb x10, 299 ( sp )
.LBB0_42:                               //  %rflag.backedge.loopexit
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x11, x26
	jal x0, .LBB0_15
.LBB0_43:                               //  %sw.bb93
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	or x10, x10, 128
	jal x0, .LBB0_45
.LBB0_44:                               //  %sw.bb104
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	or x10, x10, 8
.LBB0_45:                               //  %rflag
                                        //    in Loop: Header=BB0_15 Depth=3
	sw x10, 96 ( sp )               //  4-byte Folded Spill
	mv x11, x26
	jal x0, .LBB0_15
.LBB0_46:                               //  %sw.bb106
                                        //    in Loop: Header=BB0_15 Depth=3
	lbu x10, 0 ( x26 )
	add x11, x0, 104
	beq x10, x11, .LBB0_51
.LBB0_47:                               //  %sw.bb106
                                        //    in Loop: Header=BB0_15 Depth=3
	add x10, x0, 64
	jal x0, .LBB0_50
.LBB0_48:                               //  %sw.bb115
                                        //    in Loop: Header=BB0_15 Depth=3
	lbu x10, 0 ( x26 )
	add x11, x0, 108
	beq x10, x11, .LBB0_52
.LBB0_49:                               //  %sw.bb115
                                        //    in Loop: Header=BB0_15 Depth=3
	add x10, x0, 16
.LBB0_50:                               //  %sw.bb106
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x11, x26
	jal x0, .LBB0_53
.LBB0_51:                               //    in Loop: Header=BB0_15 Depth=3
	add x11, x26, 1
	add x10, x0, 512
	jal x0, .LBB0_53
.LBB0_52:                               //    in Loop: Header=BB0_15 Depth=3
	add x11, x26, 1
	add x10, x0, 32
.LBB0_53:                               //  %sw.bb106
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x12, 96 ( sp )               //  4-byte Folded Reload
	or x12, x12, x10
	sw x12, 96 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_15
.LBB0_54:                               //  %if.then74
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 300 ( sp )
	add x12, x10, 4
	sw x12, 300 ( sp )
	lw x12, 0 ( x10 )
	add x10, x0, -1
	sw x12, 76 ( sp )               //  4-byte Folded Spill
	blt x10, x12, .LBB0_15
.LBB0_55:                               //  %if.then74
                                        //    in Loop: Header=BB0_15 Depth=3
	sw x10, 76 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_15
.LBB0_56:                               //  %sw.bb389
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	add x18, sp, 272
	and x10, x11, 32
	bltu x0, x10, .LBB0_61
.LBB0_57:                               //  %if.else395
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x11, 16
	bltu x0, x10, .LBB0_60
.LBB0_58:                               //  %if.else400
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x11, 64
	bltu x0, x10, .LBB0_63
.LBB0_59:                               //  %if.else406
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x11, 512
	bltu x0, x10, .LBB0_64
.LBB0_60:                               //  %if.then398
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x10, 0 ( x10 )
	jal x0, .LBB0_62
.LBB0_61:                               //  %if.then392
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x10, 0 ( x10 )
	sra x11, x20, 31&31
	sw x11, 4 ( x10 )
.LBB0_62:                               //  %for.cond
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x20, 0 ( x10 )
	mv x24, x26
	mv fp, x24
	lbu x10, 0 ( fp )
	bltu x0, x10, .LBB0_6
	jal x0, .LBB0_8
.LBB0_63:                               //  %if.then403
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	mv x24, x26
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x10, 0 ( x10 )
	sh x20, 0 ( x10 )
	mv fp, x24
	lbu x10, 0 ( fp )
	bltu x0, x10, .LBB0_6
	jal x0, .LBB0_8
.LBB0_64:                               //  %if.then409
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	mv x24, x26
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x10, 0 ( x10 )
	sb x20, 0 ( x10 )
	mv fp, x24
	lbu x10, 0 ( fp )
	bltu x0, x10, .LBB0_6
	jal x0, .LBB0_8
.LBB0_65:                               //  %sw.bb177
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	and x10, x10, 8
	bltu x0, x10, .LBB0_67
.LBB0_66:                               //  %if.else184
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	add x11, x10, 8
	lw fp, 0 ( x10 )
	sw x11, 300 ( sp )
	lw x25, 4 ( x10 )
	jal x0, .LBB0_68
.LBB0_67:                               //  %if.then180
                                        //    in Loop: Header=BB0_8 Depth=2
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
	mv fp, x10
	mv x25, x11
.LBB0_68:                               //  %if.end187
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	mv x19, x0
	and x11, x10, x25
	lui x13, (2146435072>>12)&1048575
	mv x10, fp
	mv x12, x19
	jal __nedf2
	sw x25, 40 ( sp )               //  4-byte Folded Spill
	sw fp, 48 ( sp )                //  4-byte Folded Spill
	bltu x0, x10, .LBB0_73
.LBB0_69:                               //  %if.then190
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x20, x0
	mv x13, x20
	mv x10, fp
	mv x11, x25
	mv x12, x20
	jal __ltdf2
	bge x10, x0, .LBB0_71
.LBB0_70:                               //  %if.then194
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 45
	sb x10, 299 ( sp )
.LBB0_71:                               //  %if.end195
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	add x10, x0, 72
	blt x18, x10, .LBB0_77
.LBB0_72:                               //  %if.end195
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.1 )
	add x24, x10, %lo( .str.1 )
	jal x0, .LBB0_78
.LBB0_73:                               //  %if.end202
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, fp
	mv x13, x25
	mv x11, x25
	mv x12, fp
	jal __unorddf2
	bltu x0, x10, .LBB0_91
.LBB0_74:                               //  %if.end223
                                        //    in Loop: Header=BB0_8 Depth=2
	or fp, x18, 32
	xor x9, fp, 97
	bltu x0, x9, .LBB0_143
.LBB0_75:                               //  %if.then228
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 97
	bne x18, x10, .LBB0_76
.LBB0_527:                              //  %if.then228
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_294
.LBB0_76:                               //  %if.then228
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 88
	jal x0, .LBB0_295
.LBB0_77:                               //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str )
	add x24, x10, %lo( .str )
.LBB0_78:                               //  %if.end195
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x11, x20
	add x19, x0, 3
	and x27, x27, -129
.LBB0_79:                               //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	mv fp, x20
	jal x0, .LBB0_182
.LBB0_80:                               //  %sw.bb131
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	mv x20, x0
	mv fp, x20
	seqz x19, x0
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x10, 0 ( x10 )
	mv x11, x20
	sb x0, 299 ( sp )
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	sb x10, 108 ( sp )
	sw x20, 52 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_142
.LBB0_81:                               //  %sw.bb462
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x24, 0 ( x10 )
	sb x0, 299 ( sp )
	beq x0, x24, .LBB0_146
.LBB0_82:                               //  %if.else473
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	lw x19, 76 ( sp )               //  4-byte Folded Reload
	bge x19, x0, .LBB0_83
.LBB0_528:                              //  %if.else473
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_301
.LBB0_83:                               //  %if.then476
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x20, x0
	mv x10, x24
	mv x11, x20
	mv x12, x19
	jal memchr
	beq x10, x20, .LBB0_85
.LBB0_84:                               //  %if.then476
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x19, x10, x24
.LBB0_85:                               //  %if.then476
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x11, x20
	jal x0, .LBB0_79
.LBB0_86:                               //  %sw.bb137.loopexit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	and x10, x27, 32
	bltu x0, x10, .LBB0_95
.LBB0_87:                               //  %cond.false142
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 44 ( sp )               //  4-byte Folded Reload
	and x10, x27, 16
	bltu x0, x10, .LBB0_149
.LBB0_88:                               //  %cond.false147
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x27, 64
	beq x0, x10, .LBB0_89
.LBB0_529:                              //  %cond.false147
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_333
.LBB0_89:                               //  %cond.false154
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x19, 0 ( x10 )
	and x10, x27, 512
	beq x0, x10, .LBB0_150
.LBB0_90:                               //  %cond.true157
                                        //    in Loop: Header=BB0_8 Depth=2
	sll x10, x19, 24&31
	sra x19, x10, 24&31
	sra x20, x19, 31&31
	bge x20, x0, .LBB0_96
	jal x0, .LBB0_151
.LBB0_91:                               //  %cond.true210
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x25, x0, .LBB0_92
.LBB0_530:                              //  %cond.true210
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_330
.LBB0_92:                               //  %if.end216
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	add x10, x0, 72
	bge x18, x10, .LBB0_93
.LBB0_531:                              //  %if.end216
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_331
.LBB0_93:                               //  %if.end216
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.3 )
	add x24, x10, %lo( .str.3 )
	jal x0, .LBB0_332
.LBB0_94:                               //  %sw.bb135
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	or x27, x27, 16
	and x10, x27, 32
	beq x0, x10, .LBB0_87
.LBB0_95:                               //  %cond.true140
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	lw x12, 44 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 300 ( sp )
	add x11, x10, 8
	lw x19, 0 ( x10 )
	sw x11, 300 ( sp )
	lw x20, 4 ( x10 )
	blt x20, x0, .LBB0_151
.LBB0_96:                               //    in Loop: Header=BB0_8 Depth=2
	seqz x10, x0
	lw x13, 76 ( sp )               //  4-byte Folded Reload
	add x11, x0, -1
	blt x11, x13, .LBB0_113
	jal x0, .LBB0_114
.LBB0_97:                               //  %sw.bb418
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	add x18, x0, 79
	or x27, x27, 16
	lw x12, 44 ( sp )               //  4-byte Folded Reload
	and x10, x27, 32
	beq x0, x10, .LBB0_107
.LBB0_98:                               //  %cond.true423
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	add x11, x10, 8
	lw x19, 0 ( x10 )
	sw x11, 300 ( sp )
	lw x20, 4 ( x10 )
	jal x0, .LBB0_391
.LBB0_99:                               //  %sw.bb490
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	add x18, x0, 85
	or x27, x27, 16
	lw x12, 44 ( sp )               //  4-byte Folded Reload
	and x10, x27, 32
	beq x0, x10, .LBB0_131
.LBB0_100:                              //  %cond.true495
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 300 ( sp )
	add x10, x11, 4
	sw x10, 300 ( sp )
	add x10, x11, 8
	lw x19, 0 ( x11 )
	sw x10, 300 ( sp )
	lw x20, 4 ( x11 )
	jal x0, .LBB0_394
.LBB0_101:                              //  %hex.loopexit
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.6 )
	add x12, x10, %lo( .str.6 )
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	and x10, x27, 32
	beq x0, x10, .LBB0_136
.LBB0_102:                              //  %cond.true531
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	add x11, x10, 8
	lw x19, 0 ( x10 )
	sw x11, 300 ( sp )
	lw x20, 4 ( x10 )
	and x10, x27, 1
	beq x0, x10, .LBB0_105
.LBB0_103:                              //  %cond.end561
                                        //    in Loop: Header=BB0_8 Depth=2
	or x10, x20, x19
	beq x0, x10, .LBB0_105
.LBB0_104:                              //  %if.then568
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 48
	or x27, x27, 2
	sb x18, 107 ( sp )
	sb x10, 106 ( sp )
.LBB0_105:                              //  %if.end573
                                        //    in Loop: Header=BB0_8 Depth=2
	and x27, x27, -1025
	jal x0, .LBB0_112
.LBB0_106:                              //  %sw.bb420.loopexit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	lw x12, 44 ( sp )               //  4-byte Folded Reload
	and x10, x27, 32
	bltu x0, x10, .LBB0_98
.LBB0_107:                              //  %cond.false425
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x27, 16
	bltu x0, x10, .LBB0_290
.LBB0_108:                              //  %cond.false430
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x27, 64
	beq x0, x10, .LBB0_109
.LBB0_532:                              //  %cond.false430
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_389
.LBB0_109:                              //  %cond.false437
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x19, 0 ( x10 )
	and x11, x27, 512
	mv x10, x0
	bne x11, x10, .LBB0_110
.LBB0_533:                              //  %cond.false437
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_390
.LBB0_110:                              //  %cond.false437
                                        //    in Loop: Header=BB0_8 Depth=2
	and x19, x19, 255
	jal x0, .LBB0_390
.LBB0_111:                              //  %sw.bb456
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	add x18, x0, 120
	mv x20, x0
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x19, 0 ( x10 )
	add x10, x0, 48
	sb x10, 106 ( sp )
	lui x10, %hi( .str.4 )
	sb x18, 107 ( sp )
	add x12, x10, %lo( .str.4 )
	or x27, x27, 2
.LBB0_112:                              //  %nosign
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 2
	sb x0, 299 ( sp )
	lw x13, 76 ( sp )               //  4-byte Folded Reload
	add x11, x0, -1
	bge x11, x13, .LBB0_114
.LBB0_113:                              //    in Loop: Header=BB0_8 Depth=2
	and x27, x27, -129
.LBB0_114:                              //  %number
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	bltu x0, x11, .LBB0_119
.LBB0_115:                              //  %number
                                        //    in Loop: Header=BB0_8 Depth=2
	or x11, x20, x19
	bltu x0, x11, .LBB0_119
.LBB0_116:                              //  %if.else658
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x12, 44 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB0_123
.LBB0_117:                              //  %if.else658
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x27, 1
	beq x0, x10, .LBB0_123
.LBB0_118:                              //  %if.then665
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 48
	jal x0, .LBB0_158
.LBB0_119:                              //  %if.then587
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x0, x10, .LBB0_124
.LBB0_120:                              //  %if.then587
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x11, x10, 1
	beq x0, x11, .LBB0_154
.LBB0_121:                              //  %if.then587
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x24, 36 ( sp )               //  4-byte Folded Reload
	xor x10, x10, 2
	sw x12, 44 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB0_129
.LBB0_122:                              //  %do.body649
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	and x10, x19, 15
	add x10, x10, x12
	lb x10, 0 ( x10 )
	sll x11, x20, 28&31
	srl x20, x20, 4&31
	sb x10, -1 ( x24 )
	srl x10, x19, 4&31
	or x19, x11, x10
	add x24, x24, -1
	or x10, x20, x19
	bltu x0, x10, .LBB0_122
	jal x0, .LBB0_179
.LBB0_123:                              //    in Loop: Header=BB0_8 Depth=2
	lw x24, 36 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_179
.LBB0_124:                              //  %do.body590.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	add x24, sp, 207
	sw x12, 44 ( sp )               //  4-byte Folded Spill
.LBB0_125:                              //  %do.body590
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sll x11, x20, 29&31
	srl x10, x19, 3&31
	or x10, x11, x10
	and x11, x19, 7
	or x11, x11, 48
	srl x20, x20, 3&31
	sb x11, 0 ( x24 )
	add x24, x24, -1
	or x12, x20, x10
	mv x19, x10
	bltu x0, x12, .LBB0_125
.LBB0_126:                              //  %do.end597
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x24, 1
	and x12, x27, 1
	beq x0, x12, .LBB0_375
.LBB0_127:                              //  %do.end597
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x11, x11, 48
	beq x0, x11, .LBB0_375
.LBB0_128:                              //  %if.then604
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 48
	sb x10, 0 ( x24 )
	jal x0, .LBB0_179
.LBB0_129:                              //  %sw.default
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.7 )
	add x24, x10, %lo( .str.7 )
	mv x10, x24
	jal strlen
	mv x19, x10
	jal x0, .LBB0_180
.LBB0_130:                              //  %sw.bb492.loopexit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	lw x12, 44 ( sp )               //  4-byte Folded Reload
	and x10, x27, 32
	bltu x0, x10, .LBB0_100
.LBB0_131:                              //  %cond.false497
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x27, 16
	bltu x0, x10, .LBB0_291
.LBB0_132:                              //  %cond.false502
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x27, 64
	beq x0, x10, .LBB0_133
.LBB0_534:                              //  %cond.false502
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_392
.LBB0_133:                              //  %cond.false509
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x19, 0 ( x10 )
	and x11, x27, 512
	mv x10, x0
	bne x11, x10, .LBB0_134
.LBB0_535:                              //  %cond.false509
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_393
.LBB0_134:                              //  %cond.false509
                                        //    in Loop: Header=BB0_8 Depth=2
	and x19, x19, 255
	jal x0, .LBB0_393
.LBB0_135:                              //  %hex.loopexit1
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.4 )
	add x12, x10, %lo( .str.4 )
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	and x10, x27, 32
	bltu x0, x10, .LBB0_102
.LBB0_136:                              //  %cond.false533
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x27, 16
	bltu x0, x10, .LBB0_292
.LBB0_137:                              //  %cond.false538
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x27, 64
	beq x0, x10, .LBB0_138
.LBB0_536:                              //  %cond.false538
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_395
.LBB0_138:                              //  %cond.false545
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x19, 0 ( x10 )
	and x11, x27, 512
	mv x10, x0
	beq x11, x10, .LBB0_293
.LBB0_139:                              //  %cond.false545
                                        //    in Loop: Header=BB0_8 Depth=2
	and x19, x19, 255
	mv x20, x0
	and x10, x27, 1
	bltu x0, x10, .LBB0_103
	jal x0, .LBB0_105
.LBB0_140:                              //  %sw.default674
                                        //    in Loop: Header=BB0_8 Depth=2
	bltu x0, x18, .LBB0_141
.LBB0_537:                              //  %sw.default674
	jal x0, .LBB0_519
.LBB0_141:                              //  %if.end678
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x25, x19
	mv x20, x19
	mv x11, x19
	sw x19, 60 ( sp )               //  4-byte Folded Spill
	seqz x19, x0
	mv fp, x25
	sb x18, 108 ( sp )
	sb x0, 299 ( sp )
	sw x25, 52 ( sp )               //  4-byte Folded Spill
.LBB0_142:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	add x24, sp, 108
	mv x10, x11
	mv x25, x11
	sw fp, 56 ( sp )                //  4-byte Folded Spill
	bge x19, x11, .LBB0_183
	jal x0, .LBB0_184
.LBB0_143:                              //  %if.else251
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	xor x10, x10, -1
	beq x0, x10, .LBB0_334
.LBB0_144:                              //  %if.else255
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 103
	bne fp, x10, .LBB0_145
.LBB0_538:                              //  %if.else255
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_352
.LBB0_145:                              //  %if.else255
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 76 ( sp )               //  4-byte Folded Reload
	mv x10, x12
	mv x11, x0
	sw x11, 60 ( sp )               //  4-byte Folded Spill
	beq x12, x11, .LBB0_354
.LBB0_353:                              //  %if.else255
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x12
.LBB0_354:                              //  %if.else255
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x10, 76 ( sp )               //  4-byte Folded Spill
	bge x25, x19, .LBB0_298
.LBB0_355:                              //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x19, x10, x25
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	xor x10, fp, 103
	bltu x0, x9, .LBB0_299
.LBB0_356:                              //  %if.then2.i
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x10, 56 ( sp )               //  4-byte Folded Spill
	lw x10, 48 ( sp )               //  4-byte Folded Reload
	add x12, sp, 292
	mv x11, x19
	jal frexp
	mv x19, x0
	lui x13, (1069547520>>12)&1048575
	mv x12, x19
	jal __muldf3
	mv x12, x19
	mv x13, x19
	mv x20, x10
	mv x25, x11
	jal __nedf2
	beq x0, x10, .LBB0_359
.LBB0_357:                              //  %if.end5.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 97
	beq x18, x10, .LBB0_360
.LBB0_358:                              //  %if.end5.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.6 )
	add x10, x10, %lo( .str.6 )
	jal x0, .LBB0_361
.LBB0_146:                              //  %if.then466
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	lw x19, 76 ( sp )               //  4-byte Folded Reload
	add x10, x0, 6
	bltu x19, x10, .LBB0_148
.LBB0_147:                              //  %if.then466
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x19, x10
.LBB0_148:                              //  %if.then466
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.5 )
	add x24, x10, %lo( .str.5 )
	jal x0, .LBB0_302
.LBB0_149:                              //  %cond.true145
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x19, 0 ( x10 )
.LBB0_150:                              //  %cond.end167
                                        //    in Loop: Header=BB0_8 Depth=2
	sra x20, x19, 31&31
	bge x20, x0, .LBB0_96
.LBB0_151:                              //  %if.then587.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	add x10, x0, -1
	bge x10, x11, .LBB0_153
.LBB0_152:                              //    in Loop: Header=BB0_8 Depth=2
	and x27, x27, -129
.LBB0_153:                              //  %if.then587.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 45
	sb x10, 299 ( sp )
	snez x10, x19
	add x10, x10, x20
	sub x19, x0, x19
	sub x20, x0, x10
.LBB0_154:                              //  %sw.bb607
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x0
	sw x12, 44 ( sp )               //  4-byte Folded Spill
	bne x20, x10, .LBB0_156
.LBB0_155:                              //    in Loop: Header=BB0_8 Depth=2
	sltiu x10, x19, 10
.LBB0_156:                              //  %sw.bb607
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x0, x10, .LBB0_159
.LBB0_157:                              //  %if.then610
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x19, 48
.LBB0_158:                              //  %if.end668
                                        //    in Loop: Header=BB0_8 Depth=2
	sb x10, 207 ( sp )
	add x24, sp, 207
	jal x0, .LBB0_179
.LBB0_159:                              //  %do.body615.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x27, 1024
	sw x27, 96 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB0_165
.LBB0_160:                              //  %do.body615.us.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x24, x0
	mv fp, x24
	jal x0, .LBB0_163
.LBB0_161:                              //  %do.body615.us
                                        //    in Loop: Header=BB0_163 Depth=3
	snez x11, x20
.LBB0_162:                              //  %do.body615.us
                                        //    in Loop: Header=BB0_163 Depth=3
	sub x10, x19, x10
	or x12, x10, 48
	add x10, sp, 108
	add x13, fp, x10
	add fp, fp, -1
	mv x19, x25
	mv x20, x9
	sb x12, 99 ( x13 )
	beq x0, x11, .LBB0_177
.LBB0_163:                              //  %do.body615.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
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
	mv x9, x11
	jal __muldi3
	bne x20, x24, .LBB0_161
.LBB0_164:                              //    in Loop: Header=BB0_163 Depth=3
	add x11, x0, 9
	sltu x11, x11, x19
	jal x0, .LBB0_162
.LBB0_165:                              //  %do.body615.preheader12
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	lw x24, 36 ( sp )               //  4-byte Folded Reload
	sub x10, x0, x10
	sw x10, 60 ( sp )               //  4-byte Folded Spill
	mv x10, x0
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_167
.LBB0_166:                              //  %if.end643
                                        //    in Loop: Header=BB0_167 Depth=3
	snez x10, x20
	mv x19, x27
	mv x20, x25
	beq x0, x10, .LBB0_178
.LBB0_167:                              //  %do.body615
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x9, x0, 10
	mv fp, x0
	mv x10, x19
	mv x11, x20
	mv x12, x9
	mv x13, fp
	jal __udivdi3
	mv x12, x9
	mv x13, fp
	mv x27, x10
	mv x25, x11
	jal __muldi3
	sub x10, x19, x10
	or x10, x10, 48
	sb x10, -1 ( x24 )
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	lw x11, 80 ( sp )               //  4-byte Folded Reload
	add x24, x24, -1
	lb x10, 0 ( x10 )
	add x11, x11, 1
	sw x11, 80 ( sp )               //  4-byte Folded Spill
	bne x11, x10, .LBB0_173
.LBB0_168:                              //  %land.lhs.true626
                                        //    in Loop: Header=BB0_167 Depth=3
	beq x20, fp, .LBB0_176
.LBB0_169:                              //  %land.lhs.true626
                                        //    in Loop: Header=BB0_167 Depth=3
	mv x11, fp
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	bltu x0, x11, .LBB0_174
.LBB0_170:                              //  %land.lhs.true626
                                        //    in Loop: Header=BB0_167 Depth=3
	and x10, x10, 255
	xor x10, x10, 127
	beq x0, x10, .LBB0_174
.LBB0_171:                              //  %if.then633
                                        //    in Loop: Header=BB0_167 Depth=3
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	lw x11, 28 ( sp )               //  4-byte Folded Reload
	lw x12, 32 ( sp )               //  4-byte Folded Reload
	add x24, x10, x24
	mv x10, x24
	jal strncpy
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	mv x12, x0
	sw x12, 80 ( sp )               //  4-byte Folded Spill
	lbu x10, 1 ( x11 )
	beq x10, x12, .LBB0_174
.LBB0_172:                              //  %if.then633
                                        //    in Loop: Header=BB0_167 Depth=3
	add x11, x11, 1
	sw x11, 72 ( sp )               //  4-byte Folded Spill
	bne x20, fp, .LBB0_166
	jal x0, .LBB0_175
.LBB0_173:                              //    in Loop: Header=BB0_167 Depth=3
	lw x9, 88 ( sp )                //  4-byte Folded Reload
.LBB0_174:                              //  %if.end643
                                        //    in Loop: Header=BB0_167 Depth=3
	bne x20, fp, .LBB0_166
.LBB0_175:                              //    in Loop: Header=BB0_167 Depth=3
	add x10, x0, 9
	sltu x10, x10, x19
	mv x19, x27
	mv x20, x25
	bltu x0, x10, .LBB0_167
	jal x0, .LBB0_178
.LBB0_176:                              //    in Loop: Header=BB0_167 Depth=3
	sltiu x11, x19, 10
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	beq x0, x11, .LBB0_170
	jal x0, .LBB0_174
.LBB0_177:                              //  %if.end668.loopexit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	add x10, fp, x10
	add x24, x10, 100
	sub x10, x0, fp
	sw x10, 80 ( sp )               //  4-byte Folded Spill
.LBB0_178:                              //  %if.end668
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_179
.LBB0_375:                              //    in Loop: Header=BB0_8 Depth=2
	mv x24, x10
.LBB0_179:                              //  %if.end668
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	sub x19, x10, x24
.LBB0_180:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x20, x0
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	mv fp, x20
.LBB0_181:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x20, 60 ( sp )               //  4-byte Folded Spill
.LBB0_182:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x20, 52 ( sp )               //  4-byte Folded Spill
	mv x10, x11
	mv x25, x11
	sw fp, 56 ( sp )                //  4-byte Folded Spill
	blt x19, x11, .LBB0_184
.LBB0_183:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x19
.LBB0_184:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	lbu x11, 299 ( sp )
	and fp, x27, 2
	snez x11, x11
	add x11, x11, x10
	srl x10, fp, 1&31
	beq x0, x10, .LBB0_186
.LBB0_185:                              //    in Loop: Header=BB0_8 Depth=2
	add x11, x11, 2
.LBB0_186:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x11, 76 ( sp )               //  4-byte Folded Spill
	sw x27, 96 ( sp )               //  4-byte Folded Spill
	add x11, x0, 16
	and x27, x27, 132
	beq x0, x27, .LBB0_190
.LBB0_187:                              //  %if.end744
                                        //    in Loop: Header=BB0_8 Depth=2
	lbu x10, 299 ( sp )
	beq x0, x10, .LBB0_201
.LBB0_188:                              //  %if.then746
                                        //    in Loop: Header=BB0_8 Depth=2
	add x12, sp, 272
	lw x10, 8 ( x12 )
	add x10, x10, 1
	sw x10, 8 ( x12 )
	seqz x10, x0
	sw x10, 4 ( x21 )
	add x10, sp, 299
	sw x10, 0 ( x21 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_200
.LBB0_189:                              //  %if.then756
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 84 ( sp )               //  4-byte Folded Reload
	mv x10, x9
	jal __ssprint_r
	add x21, sp, 208
	add x11, x0, 16
	beq x0, x10, .LBB0_201
	jal x0, .LBB0_194
.LBB0_190:                              //  %if.then700
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	sub x9, x22, x10
	bge x0, x9, .LBB0_247
.LBB0_191:                              //  %while.cond705.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, x9, 17
	beq x0, x10, .LBB0_197
	jal x0, .LBB0_192
.LBB0_195:                              //    in Loop: Header=BB0_197 Depth=3
	add x21, x21, 8
.LBB0_196:                              //  %if.end724
                                        //    in Loop: Header=BB0_197 Depth=3
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	add x9, x9, -16
	add x11, x0, 16
	sw x10, 0 ( x21 )
	bge x11, x9, .LBB0_192
.LBB0_197:                              //  %while.body708
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x12, sp, 272
	lw x10, 8 ( x12 )
	sw x11, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x12 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_195
.LBB0_198:                              //  %if.then718
                                        //    in Loop: Header=BB0_197 Depth=3
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	lw x11, 84 ( sp )               //  4-byte Folded Reload
	jal __ssprint_r
	add x21, sp, 208
	beq x0, x10, .LBB0_196
	jal x0, .LBB0_199
.LBB0_200:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x21, 8
	add x11, x0, 16
.LBB0_201:                              //  %if.end763
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x0, fp, .LBB0_204
.LBB0_202:                              //  %if.then766
                                        //    in Loop: Header=BB0_8 Depth=2
	add x12, sp, 272
	lw x10, 8 ( x12 )
	add x10, x10, 2
	sw x10, 8 ( x12 )
	add x10, x0, 2
	sw x10, 4 ( x21 )
	add x10, sp, 106
	sw x10, 0 ( x21 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_226
.LBB0_203:                              //  %if.then777
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 84 ( sp )               //  4-byte Folded Reload
	mv x10, x9
	jal __ssprint_r
	add x21, sp, 208
	add x11, x0, 16
	beq x0, x10, .LBB0_204
.LBB0_539:                              //  %if.then777
	jal x0, .LBB0_194
.LBB0_204:                              //  %if.end784
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x10, x27, 128
	bltu x0, x10, .LBB0_227
.LBB0_205:                              //  %if.then788
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	lw x27, 84 ( sp )               //  4-byte Folded Reload
	sub fp, x22, x10
	bge x0, fp, .LBB0_209
.LBB0_206:                              //  %while.cond793.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_215
	jal x0, .LBB0_207
.LBB0_213:                              //    in Loop: Header=BB0_215 Depth=3
	add x21, x21, 8
.LBB0_214:                              //  %if.end812
                                        //    in Loop: Header=BB0_215 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	add x11, x0, 16
	sw x10, 0 ( x21 )
	bge x11, fp, .LBB0_207
.LBB0_215:                              //  %while.body796
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x12, sp, 272
	lw x10, 8 ( x12 )
	sw x11, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x12 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_213
.LBB0_216:                              //  %if.then806
                                        //    in Loop: Header=BB0_215 Depth=3
	mv x10, x9
	mv x11, x27
	jal __ssprint_r
	add x21, sp, 208
	beq x0, x10, .LBB0_214
	jal x0, .LBB0_217
.LBB0_207:                              //  %while.end814
                                        //    in Loop: Header=BB0_8 Depth=2
	add x12, sp, 272
	lw x10, 8 ( x12 )
	sw fp, 4 ( x21 )
	add x10, fp, x10
	sw x10, 8 ( x12 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_248
.LBB0_208:                              //  %if.then824
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	mv x11, x27
	jal __ssprint_r
	add x21, sp, 208
	add x11, x0, 16
	beq x0, x10, .LBB0_209
.LBB0_540:                              //  %if.then824
	jal x0, .LBB0_217
.LBB0_209:                              //  %if.end832
                                        //    in Loop: Header=BB0_8 Depth=2
	sub fp, x25, x19
	bge x0, fp, .LBB0_228
.LBB0_210:                              //  %while.cond837.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_224
	jal x0, .LBB0_211
.LBB0_222:                              //    in Loop: Header=BB0_224 Depth=3
	add x21, x21, 8
.LBB0_223:                              //  %if.end856
                                        //    in Loop: Header=BB0_224 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	add x11, x0, 16
	sw x10, 0 ( x21 )
	bge x11, fp, .LBB0_211
.LBB0_224:                              //  %while.body840
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x12, sp, 272
	lw x10, 8 ( x12 )
	sw x11, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x12 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_222
.LBB0_225:                              //  %if.then850
                                        //    in Loop: Header=BB0_224 Depth=3
	mv x10, x9
	mv x11, x27
	jal __ssprint_r
	add x21, sp, 208
	beq x0, x10, .LBB0_223
	jal x0, .LBB0_217
.LBB0_211:                              //  %while.end858
                                        //    in Loop: Header=BB0_8 Depth=2
	add x12, sp, 272
	lw x10, 8 ( x12 )
	sw fp, 4 ( x21 )
	add x10, fp, x10
	sw x10, 8 ( x12 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_231
.LBB0_212:                              //  %if.then868
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	mv x11, x27
	jal __ssprint_r
	add x21, sp, 208
	beq x0, x10, .LBB0_228
	jal x0, .LBB0_217
.LBB0_226:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x21, 8
	add x11, x0, 16
	xor x10, x27, 128
	beq x0, x10, .LBB0_205
.LBB0_227:                              //    in Loop: Header=BB0_8 Depth=2
	lw x27, 84 ( sp )               //  4-byte Folded Reload
	sub fp, x25, x19
	blt x0, fp, .LBB0_210
.LBB0_228:                              //  %if.end875
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	and x10, x10, 256
	bltu x0, x10, .LBB0_232
.LBB0_229:                              //  %if.then879
                                        //    in Loop: Header=BB0_8 Depth=2
	add x18, sp, 272
	lw x10, 8 ( x18 )
	sw x19, 4 ( x21 )
	sw x24, 0 ( x21 )
	add x10, x19, x10
	sw x10, 8 ( x18 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_238
.LBB0_230:                              //  %if.then889
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	lw x20, 68 ( sp )               //  4-byte Folded Reload
	add x21, sp, 208
	mv x19, x0
	add x25, x0, 90
	lw x24, 76 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB0_561
.LBB0_562:                              //  %if.then889
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_313
.LBB0_561:                              //  %if.then889
	jal x0, .LBB0_218
.LBB0_231:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x21, 8
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	and x10, x10, 256
	beq x0, x10, .LBB0_229
.LBB0_232:                              //  %if.else896
                                        //    in Loop: Header=BB0_8 Depth=2
	slti x10, x18, 102
	bltu x0, x10, .LBB0_240
.LBB0_233:                              //  %if.then899
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 48 ( sp )               //  4-byte Folded Reload
	lw x11, 40 ( sp )               //  4-byte Folded Reload
	mv x19, x0
	mv x13, x19
	mv x12, x19
	jal __nedf2
	add x18, sp, 272
	bltu x0, x10, .LBB0_256
.LBB0_234:                              //  %if.then903
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x18 )
	add x10, x10, 1
	sw x10, 8 ( x18 )
	seqz x10, x0
	sw x10, 4 ( x21 )
	lw x10, 12 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_262
.LBB0_235:                              //  %if.then913
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	lw x20, 68 ( sp )               //  4-byte Folded Reload
	lw x24, 76 ( sp )               //  4-byte Folded Reload
	add x21, sp, 208
	add x25, x0, 90
	beq x0, x10, .LBB0_236
.LBB0_541:                              //  %if.then913
	jal x0, .LBB0_218
.LBB0_236:                              //  %if.end919
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	and x10, x10, 1
	bltu x0, x10, .LBB0_263
.LBB0_237:                              //  %if.end919
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 292 ( sp )
	lw x11, 80 ( sp )               //  4-byte Folded Reload
	bge x10, x11, .LBB0_313
	jal x0, .LBB0_263
.LBB0_238:                              //    in Loop: Header=BB0_8 Depth=2
	lw x20, 68 ( sp )               //  4-byte Folded Reload
	add x21, x21, 8
	mv x19, x0
	add x25, x0, 90
.LBB0_239:                              //  %if.end1550
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x24, 76 ( sp )               //  4-byte Folded Reload
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	and x10, x10, 4
	beq x0, x10, .LBB0_323
.LBB0_314:                              //  %if.then1553
                                        //    in Loop: Header=BB0_8 Depth=2
	sub fp, x22, x24
	bge x0, fp, .LBB0_323
.LBB0_315:                              //  %while.cond1558.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	bltu x0, x10, .LBB0_321
.LBB0_316:                              //  %while.body1561.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11, x0, 16
	jal x0, .LBB0_319
.LBB0_317:                              //    in Loop: Header=BB0_319 Depth=3
	add x21, x21, 8
.LBB0_318:                              //  %if.end1577
                                        //    in Loop: Header=BB0_319 Depth=3
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	add fp, fp, -16
	add x11, x0, 16
	sw x10, 0 ( x21 )
	bge x11, fp, .LBB0_321
.LBB0_319:                              //  %while.body1561
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x18 )
	sw x11, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x18 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_317
.LBB0_320:                              //  %if.then1571
                                        //    in Loop: Header=BB0_319 Depth=3
	mv x10, x9
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	add x21, sp, 208
	beq x0, x10, .LBB0_318
	jal x0, .LBB0_218
.LBB0_240:                              //  %if.else1408
                                        //    in Loop: Header=BB0_8 Depth=2
	add x18, sp, 272
	lw x10, 8 ( x18 )
	lw x12, 276 ( sp )
	lw fp, 80 ( sp )                //  4-byte Folded Reload
	add x9, x21, 8
	add x11, x10, 1
	seqz x10, x0
	mv x13, x10
	add x10, x12, 1
	slti x12, x12, 7
	mv x19, x0
	sw x24, 0 ( x21 )
	sw x11, 8 ( x18 )
	sw x13, 4 ( x21 )
	sw x10, 276 ( sp )
	blt x13, fp, .LBB0_249
.LBB0_241:                              //  %if.else1408
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13, 96 ( sp )               //  4-byte Folded Reload
	and x13, x13, 1
	bltu x0, x13, .LBB0_249
.LBB0_242:                              //  %if.else1514
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x20, 68 ( sp )               //  4-byte Folded Reload
	lw x24, 76 ( sp )               //  4-byte Folded Reload
	add x25, x0, 90
	bltu x0, x12, .LBB0_244
.LBB0_243:                              //  %if.then1505
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	add x9, sp, 208
	beq x0, x10, .LBB0_244
	jal x0, .LBB0_254
.LBB0_192:                              //  %while.end726
                                        //    in Loop: Header=BB0_8 Depth=2
	add x12, sp, 272
	lw x10, 8 ( x12 )
	sw x9, 4 ( x21 )
	add x10, x9, x10
	sw x10, 8 ( x12 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_255
.LBB0_193:                              //  %if.then736
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	lw x11, 84 ( sp )               //  4-byte Folded Reload
	mv x10, x9
	jal __ssprint_r
	add x21, sp, 208
	add x11, x0, 16
	beq x0, x10, .LBB0_187
	jal x0, .LBB0_194
.LBB0_321:                              //    in Loop: Header=BB0_8 Depth=2
	add x10, x21, 4
	sw fp, 0 ( x10 )
	lw x10, 8 ( x18 )
	lw x11, 276 ( sp )
	add x10, fp, x10
	add x12, x11, 1
	slti x11, x11, 7
	sw x10, 8 ( x18 )
	sw x12, 276 ( sp )
	bltu x0, x11, .LBB0_324
.LBB0_322:                              //  %if.then1589
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	beq x0, x10, .LBB0_323
	jal x0, .LBB0_218
.LBB0_247:                              //    in Loop: Header=BB0_8 Depth=2
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	lbu x10, 299 ( sp )
	bltu x0, x10, .LBB0_188
	jal x0, .LBB0_201
.LBB0_248:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x21, 8
	add x11, x0, 16
	sub fp, x25, x19
	blt x0, fp, .LBB0_210
	jal x0, .LBB0_228
.LBB0_249:                              //  %if.then1414
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x20, 68 ( sp )               //  4-byte Folded Reload
	add x25, x0, 90
	bltu x0, x12, .LBB0_252
.LBB0_250:                              //  %if.then1424
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	mv x11, x27
	mv x12, x18
	mv x10, x9
	jal __ssprint_r
	beq x0, x10, .LBB0_251
.LBB0_542:                              //  %if.then1424
	jal x0, .LBB0_218
.LBB0_251:                              //  %if.then1424.if.end1430_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 276 ( sp )
	lw x11, 8 ( x18 )
	add x9, sp, 208
.LBB0_252:                              //  %if.end1430
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 24 ( sp )               //  4-byte Folded Reload
	add x11, x12, x11
	sw x11, 8 ( x18 )
	lw x11, 20 ( sp )               //  4-byte Folded Reload
	sw x12, 4 ( x9 )
	sw x11, 0 ( x9 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_273
.LBB0_253:                              //  %if.then1441
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	add x9, sp, 208
	beq x0, x10, .LBB0_274
	jal x0, .LBB0_254
.LBB0_255:                              //    in Loop: Header=BB0_8 Depth=2
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	add x21, x21, 8
	add x11, x0, 16
	lbu x10, 299 ( sp )
	bltu x0, x10, .LBB0_188
	jal x0, .LBB0_201
.LBB0_256:                              //  %if.else986
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 292 ( sp )
	bge x0, x10, .LBB0_287
.LBB0_257:                              //  %if.else1089
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 52 ( sp )               //  4-byte Folded Reload
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	mv fp, x11
	blt x11, x10, .LBB0_259
.LBB0_258:                              //  %if.else1089
                                        //    in Loop: Header=BB0_8 Depth=2
	lw fp, 80 ( sp )                //  4-byte Folded Reload
.LBB0_259:                              //  %if.else1089
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x0, fp, .LBB0_336
.LBB0_260:                              //  %if.then1101
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x18 )
	sw fp, 4 ( x21 )
	sw x24, 0 ( x21 )
	add x10, fp, x10
	sw x10, 8 ( x18 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_335
.LBB0_261:                              //  %if.then1111
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	add x21, sp, 208
	beq x0, x10, .LBB0_336
	jal x0, .LBB0_217
.LBB0_262:                              //    in Loop: Header=BB0_8 Depth=2
	lw x20, 68 ( sp )               //  4-byte Folded Reload
	lw x24, 76 ( sp )               //  4-byte Folded Reload
	add x21, x21, 8
	add x25, x0, 90
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	and x10, x10, 1
	beq x0, x10, .LBB0_237
.LBB0_263:                              //  %if.then925
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 24 ( sp )               //  4-byte Folded Reload
	lw x10, 8 ( x18 )
	sw x11, 4 ( x21 )
	add x10, x11, x10
	sw x10, 8 ( x18 )
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_285
.LBB0_264:                              //  %if.then935
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	add x21, sp, 208
	add x11, x0, 16
	beq x0, x10, .LBB0_265
.LBB0_543:                              //  %if.then935
	jal x0, .LBB0_218
.LBB0_265:                              //  %if.end941
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	add fp, x10, -1
	bge x0, fp, .LBB0_313
.LBB0_266:                              //  %while.cond946.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_271
	jal x0, .LBB0_267
.LBB0_269:                              //    in Loop: Header=BB0_271 Depth=3
	add x21, x21, 8
.LBB0_270:                              //  %if.end965
                                        //    in Loop: Header=BB0_271 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	add x11, x0, 16
	sw x10, 0 ( x21 )
	bge x11, fp, .LBB0_267
.LBB0_271:                              //  %while.body949
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x18 )
	sw x11, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x18 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_269
.LBB0_272:                              //  %if.then959
                                        //    in Loop: Header=BB0_271 Depth=3
	mv x10, x9
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	add x21, sp, 208
	beq x0, x10, .LBB0_270
	jal x0, .LBB0_218
.LBB0_273:                              //    in Loop: Header=BB0_8 Depth=2
	add x9, x9, 8
.LBB0_274:                              //  %if.end1447
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 48 ( sp )               //  4-byte Folded Reload
	lw x11, 40 ( sp )               //  4-byte Folded Reload
	mv x13, x19
	mv x12, x19
	jal __eqdf2
	beq x0, x10, .LBB0_277
.LBB0_275:                              //  %if.then1450
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x24, 1
	sw x10, 0 ( x9 )
	lw x12, 8 ( x18 )
	lw x10, 276 ( sp )
	add x11, fp, -1
	sw x11, 4 ( x9 )
	add x12, x11, x12
	add x11, x10, 1
	slti x10, x10, 7
	sw x12, 8 ( x18 )
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_286
.LBB0_276:                              //  %if.then1462
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	lw x24, 76 ( sp )               //  4-byte Folded Reload
	add x9, sp, 208
	beq x0, x10, .LBB0_244
	jal x0, .LBB0_254
.LBB0_277:                              //  %if.else1469
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x24, 76 ( sp )               //  4-byte Folded Reload
	add fp, fp, -1
	bge x0, fp, .LBB0_244
.LBB0_278:                              //  %while.cond1474.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add x11, x0, 16
	sw x10, 0 ( x9 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_283
	jal x0, .LBB0_279
.LBB0_281:                              //    in Loop: Header=BB0_283 Depth=3
	add x9, x9, 8
.LBB0_282:                              //  %if.end1493
                                        //    in Loop: Header=BB0_283 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	add x11, x0, 16
	sw x10, 0 ( x9 )
	bge x11, fp, .LBB0_279
.LBB0_283:                              //  %while.body1477
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x18 )
	sw x11, 4 ( x9 )
	add x10, x10, 16
	sw x10, 8 ( x18 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_281
.LBB0_284:                              //  %if.then1487
                                        //    in Loop: Header=BB0_283 Depth=3
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	add x9, sp, 208
	beq x0, x10, .LBB0_282
	jal x0, .LBB0_254
.LBB0_285:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x21, 8
	add x11, x0, 16
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	add fp, x10, -1
	blt x0, fp, .LBB0_266
	jal x0, .LBB0_313
.LBB0_286:                              //    in Loop: Header=BB0_8 Depth=2
	lw x24, 76 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_280
.LBB0_287:                              //  %if.then989
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x18 )
	add x11, x11, 1
	sw x11, 8 ( x18 )
	seqz x11, x0
	sw x11, 4 ( x21 )
	lw x11, 12 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x21 )
	lw x11, 276 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 276 ( sp )
	bltu x0, x11, .LBB0_347
.LBB0_288:                              //  %if.then999
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	lw x20, 68 ( sp )               //  4-byte Folded Reload
	add x25, x0, 90
	beq x0, x10, .LBB0_289
.LBB0_544:                              //  %if.then999
	jal x0, .LBB0_218
.LBB0_289:                              //  %if.then999.if.end1005_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 292 ( sp )
	add x21, sp, 208
	jal x0, .LBB0_348
.LBB0_290:                              //  %cond.true428
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x19, 0 ( x10 )
	jal x0, .LBB0_390
.LBB0_291:                              //  %cond.true500
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x19, 0 ( x10 )
	jal x0, .LBB0_393
.LBB0_292:                              //  %cond.true536
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x19, 0 ( x10 )
.LBB0_293:                              //  %cond.end558
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x20, x0
	and x10, x27, 1
	bltu x0, x10, .LBB0_103
	jal x0, .LBB0_105
.LBB0_294:                              //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 120
.LBB0_295:                              //  %if.then228
                                        //    in Loop: Header=BB0_8 Depth=2
	sb x10, 107 ( sp )
	add x10, x0, 48
	sb x10, 106 ( sp )
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	or x10, x10, 2
	sw x10, 96 ( sp )               //  4-byte Folded Spill
	slti x10, x11, 100
	bltu x0, x10, .LBB0_303
.LBB0_296:                              //  %if.then237
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	add x11, x11, 1
	jal _malloc_r
	mv x24, x10
	sw x10, 60 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB0_297
.LBB0_563:                              //  %if.then237
	jal x0, .LBB0_524
.LBB0_297:                              //  %if.end267
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x25, x19, .LBB0_355
.LBB0_298:                              //  %if.end267
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x19, x25
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	xor x10, fp, 103
	beq x0, x9, .LBB0_356
.LBB0_299:                              //  %if.end43.i
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x9, x10
	xor x20, fp, 102
	bltu x0, x20, .LBB0_304
.LBB0_300:                              //    in Loop: Header=BB0_8 Depth=2
	lw fp, 76 ( sp )                //  4-byte Folded Reload
	add x13, x0, 3
	jal x0, .LBB0_305
.LBB0_301:                              //  %if.else486
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x24
	jal strlen
	mv x19, x10
.LBB0_302:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x20, x0
	mv fp, x20
	mv x11, x20
	jal x0, .LBB0_181
.LBB0_303:                              //    in Loop: Header=BB0_8 Depth=2
	add x24, sp, 108
	sw x19, 60 ( sp )               //  4-byte Folded Spill
	bge x25, x19, .LBB0_298
	jal x0, .LBB0_355
.LBB0_304:                              //  %if.else50.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	xor x10, fp, 101
	seqz x10, x10
	add x13, x0, 2
	add fp, x10, x11
.LBB0_305:                              //  %if.end58.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	lw x11, 48 ( sp )               //  4-byte Folded Reload
	add x15, sp, 292
	add x16, sp, 308
	add x17, sp, 304
	mv x12, x19
	mv x14, fp
	jal _dtoa_r
	mv x24, x10
	mv x12, x9
	bltu x0, x12, .LBB0_308
.LBB0_306:                              //  %if.end58.i
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x27, 1
	bltu x0, x10, .LBB0_308
.LBB0_307:                              //  %if.end58.if.end96_crit_edge.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9, 304 ( sp )
	or x16, x27, 256
	sub x10, x9, x24
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	beq x0, x12, .LBB0_457
	jal x0, .LBB0_466
.LBB0_308:                              //  %if.then68.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x9, fp, x24
	sw x12, 56 ( sp )               //  4-byte Folded Spill
	bltu x0, x20, .LBB0_454
.LBB0_309:                              //  %if.then74.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 48 ( sp )               //  4-byte Folded Reload
	mv x12, x0
	mv x11, x19
	mv x13, x12
	jal __eqdf2
	beq x0, x10, .LBB0_452
.LBB0_310:                              //  %if.then74.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lbu x10, 0 ( x24 )
	xor x10, x10, 48
	bltu x0, x10, .LBB0_452
.LBB0_311:                              //  %if.then80.i
                                        //    in Loop: Header=BB0_8 Depth=2
	seqz x10, x0
	sub x10, x10, fp
	sw x10, 292 ( sp )
	jal x0, .LBB0_453
.LBB0_279:                              //  %while.end1495
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x18 )
	sw fp, 4 ( x9 )
	add x10, fp, x10
	sw x10, 8 ( x18 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	beq x0, x10, .LBB0_243
.LBB0_280:                              //    in Loop: Header=BB0_8 Depth=2
	add x9, x9, 8
.LBB0_244:                              //  %if.end1531
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 16 ( sp )               //  4-byte Folded Reload
	lw x10, 8 ( x18 )
	sw x11, 4 ( x9 )
	add x10, x11, x10
	sw x10, 8 ( x18 )
	add x10, sp, 285
	sw x10, 0 ( x9 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_312
.LBB0_245:                              //  %if.then1542
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB0_246
.LBB0_312:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x9, 8
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	and x10, x10, 4
	beq x0, x10, .LBB0_323
	jal x0, .LBB0_314
.LBB0_330:                              //  %if.then215
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 45
	sb x10, 299 ( sp )
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	add x10, x0, 72
	blt x18, x10, .LBB0_331
.LBB0_545:                              //  %if.then215
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_93
.LBB0_331:                              //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.2 )
	add x24, x10, %lo( .str.2 )
.LBB0_332:                              //  %if.end216
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x20, x0
	add x19, x0, 3
	mv fp, x20
	mv x11, x20
	and x27, x27, -129
	jal x0, .LBB0_181
.LBB0_333:                              //  %cond.true150
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lw x10, 0 ( x10 )
	sll x10, x10, 16&31
	sra x19, x10, 16&31
	sra x20, x19, 31&31
	blt x20, x0, .LBB0_546
.LBB0_547:                              //  %cond.true150
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_96
.LBB0_546:                              //  %cond.true150
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_151
.LBB0_334:                              //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 6
	sw x10, 76 ( sp )               //  4-byte Folded Spill
	sw x19, 60 ( sp )               //  4-byte Folded Spill
	bge x25, x19, .LBB0_298
	jal x0, .LBB0_355
.LBB0_359:                              //  %if.then4.i
                                        //    in Loop: Header=BB0_8 Depth=2
	seqz x10, x0
	sw x10, 292 ( sp )
	add x10, x0, 97
	bne x18, x10, .LBB0_358
.LBB0_360:                              //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.4 )
	add x10, x10, %lo( .str.4 )
.LBB0_361:                              //  %if.end5.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9, 76 ( sp )                //  4-byte Folded Reload
	sw x10, 80 ( sp )               //  4-byte Folded Spill
.LBB0_362:                              //  %do.body.i
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	mv x12, x0
	lui x13, (1076887552>>12)&1048575
	mv x10, x20
	mv x11, x25
	mv x27, x19
	jal __muldf3
	mv x19, x10
	mv x20, x11
	jal __fixdfsi
	mv fp, x10
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	add x11, x27, x24
	add x10, fp, x10
	lb x10, 0 ( x10 )
	sb x10, 0 ( x11 )
	mv x10, fp
	jal __floatsidf
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __subdf3
	mv x20, x10
	mv x25, x11
	add x19, x27, 1
	beq x9, x27, .LBB0_364
.LBB0_363:                              //  %do.body.i
                                        //    in Loop: Header=BB0_362 Depth=3
	mv x12, x0
	mv x10, x20
	mv x11, x25
	mv x13, x12
	jal __nedf2
	bltu x0, x10, .LBB0_362
.LBB0_364:                              //  %do.end.i
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x20
	mv x11, x25
	jal __gtdf2
	add x9, x19, x24
	blt x0, x10, .LBB0_367
.LBB0_365:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 1
	beq x0, x10, .LBB0_396
.LBB0_366:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x20
	mv x11, x25
	jal __eqdf2
	bltu x0, x10, .LBB0_396
.LBB0_367:                              //  %if.then19.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 80 ( sp )               //  4-byte Folded Reload
	add x10, x9, -1
	sw x10, 304 ( sp )
	lbu x11, -1 ( x9 )
	lbu x12, 15 ( x12 )
	bne x11, x12, .LBB0_372
.LBB0_368:                              //  %while.body.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27, 96 ( sp )               //  4-byte Folded Reload
.LBB0_369:                              //  %while.body.i
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x12, x0, 48
	sb x12, 0 ( x10 )
	lw x12, 304 ( sp )
	add x10, x12, -1
	sw x10, 304 ( sp )
	lbu x12, -1 ( x12 )
	beq x12, x11, .LBB0_369
.LBB0_370:                              //  %while.end.i
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x11, x12, 57
	bltu x0, x11, .LBB0_373
.LBB0_371:                              //  %cond.true.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 80 ( sp )               //  4-byte Folded Reload
	lbu x11, 10 ( x11 )
	jal x0, .LBB0_374
.LBB0_372:                              //    in Loop: Header=BB0_8 Depth=2
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	mv x12, x11
	xor x11, x12, 57
	beq x0, x11, .LBB0_371
.LBB0_373:                              //  %cond.false.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11, x12, 1
.LBB0_374:                              //  %if.end42.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 56 ( sp )               //  4-byte Folded Reload
	sb x11, 0 ( x10 )
	or x16, x27, 256
	sub x10, x9, x24
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	beq x0, x12, .LBB0_457
.LBB0_466:                              //  %if.else286
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	xor x10, x18, 70
	bltu x0, x10, .LBB0_468
.LBB0_467:                              //  %if.else307.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 292 ( sp )
	jal x0, .LBB0_473
.LBB0_335:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x21, 8
.LBB0_336:                              //  %if.end1118
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x19, fp, .LBB0_338
.LBB0_337:                              //  %if.end1118
                                        //    in Loop: Header=BB0_8 Depth=2
	mv fp, x19
.LBB0_338:                              //  %if.end1118
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	add x11, x0, 16
	sub fp, x10, fp
	bge x0, fp, .LBB0_346
.LBB0_339:                              //  %while.cond1129.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_344
	jal x0, .LBB0_340
.LBB0_342:                              //    in Loop: Header=BB0_344 Depth=3
	add x21, x21, 8
.LBB0_343:                              //  %if.end1148
                                        //    in Loop: Header=BB0_344 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	add x11, x0, 16
	sw x10, 0 ( x21 )
	bge x11, fp, .LBB0_340
.LBB0_344:                              //  %while.body1132
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x18 )
	sw x11, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x18 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_342
.LBB0_345:                              //  %if.then1142
                                        //    in Loop: Header=BB0_344 Depth=3
	mv x10, x9
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	add x21, sp, 208
	beq x0, x10, .LBB0_343
	jal x0, .LBB0_217
.LBB0_340:                              //  %while.end1150
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x18 )
	sw fp, 4 ( x21 )
	add x10, fp, x10
	sw x10, 8 ( x18 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_376
.LBB0_341:                              //  %if.then1160
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	lw fp, 56 ( sp )                //  4-byte Folded Reload
	add x21, sp, 208
	beq x0, x10, .LBB0_377
	jal x0, .LBB0_217
.LBB0_346:                              //    in Loop: Header=BB0_8 Depth=2
	lw fp, 56 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB0_377
.LBB0_347:                              //    in Loop: Header=BB0_8 Depth=2
	lw x20, 68 ( sp )               //  4-byte Folded Reload
	add x21, x21, 8
	add x25, x0, 90
.LBB0_348:                              //  %if.end1005
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	lw x12, 80 ( sp )               //  4-byte Folded Reload
	and x11, x11, 1
	or x11, x12, x11
	or x11, x10, x11
	beq x0, x11, .LBB0_239
.LBB0_349:                              //  %if.then1012
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 24 ( sp )               //  4-byte Folded Reload
	lw x11, 8 ( x18 )
	sw x12, 4 ( x21 )
	add x11, x12, x11
	sw x11, 8 ( x18 )
	lw x11, 20 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x21 )
	lw x11, 276 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 276 ( sp )
	bltu x0, x11, .LBB0_425
.LBB0_350:                              //  %if.then1022
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	bltu x0, x10, .LBB0_218
.LBB0_351:                              //  %if.then1022.if.end1028_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 292 ( sp )
	add x11, sp, 208
	lw x21, 80 ( sp )               //  4-byte Folded Reload
	bge x10, x0, .LBB0_516
	jal x0, .LBB0_426
.LBB0_352:                              //    in Loop: Header=BB0_8 Depth=2
	lw x12, 76 ( sp )               //  4-byte Folded Reload
	seqz x10, x0
	mv x11, x0
	sw x11, 60 ( sp )               //  4-byte Folded Spill
	bne x12, x11, .LBB0_548
.LBB0_549:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_354
.LBB0_548:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_353
.LBB0_376:                              //    in Loop: Header=BB0_8 Depth=2
	lw fp, 56 ( sp )                //  4-byte Folded Reload
	add x21, x21, 8
.LBB0_377:                              //  %cleanup.cont
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	add x18, x10, x24
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	and x10, x10, 1024
	bltu x0, x10, .LBB0_379
.LBB0_378:                              //    in Loop: Header=BB0_8 Depth=2
	lw x20, 68 ( sp )               //  4-byte Folded Reload
	mv fp, x18
	jal x0, .LBB0_384
.LBB0_379:                              //  %while.cond1172.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x0, fp, .LBB0_399
.LBB0_380:                              //  %while.cond1172.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x0, x20, .LBB0_399
.LBB0_381:                              //  %while.end1288
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	add fp, x10, x24
	bltu fp, x18, .LBB0_383
.LBB0_382:                              //  %while.end1288
                                        //    in Loop: Header=BB0_8 Depth=2
	mv fp, x18
.LBB0_383:                              //  %while.end1288
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x20, 68 ( sp )               //  4-byte Folded Reload
	mv x19, x0
.LBB0_384:                              //  %if.end1295
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	lw x10, 292 ( sp )
	add x25, x0, 90
	add x18, sp, 272
	and x11, x11, 1
	bltu x0, x11, .LBB0_386
.LBB0_385:                              //  %if.end1295
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 80 ( sp )               //  4-byte Folded Reload
	bge x10, x11, .LBB0_433
.LBB0_386:                              //  %if.then1301
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 24 ( sp )               //  4-byte Folded Reload
	lw x11, 8 ( x18 )
	sw x12, 4 ( x21 )
	add x11, x12, x11
	sw x11, 8 ( x18 )
	lw x11, 20 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x21 )
	lw x11, 276 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 276 ( sp )
	bltu x0, x11, .LBB0_432
.LBB0_387:                              //  %if.then1311
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	bltu x0, x10, .LBB0_218
.LBB0_388:                              //  %if.then1311.if.end1318_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 292 ( sp )
	add x21, sp, 208
	jal x0, .LBB0_433
.LBB0_389:                              //  %cond.true433
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lhu x19, 0 ( x10 )
.LBB0_390:                              //  %cond.end450
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x20, x0
.LBB0_391:                              //  %cond.end453
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x0
	and x27, x27, -1025
	sb x0, 299 ( sp )
	lw x13, 76 ( sp )               //  4-byte Folded Reload
	add x11, x0, -1
	bge x11, x13, .LBB0_550
.LBB0_551:                              //  %cond.end453
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_113
.LBB0_550:                              //  %cond.end453
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_114
.LBB0_392:                              //  %cond.true505
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lhu x19, 0 ( x10 )
.LBB0_393:                              //  %cond.end522
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x20, x0
.LBB0_394:                              //  %cond.end522
                                        //    in Loop: Header=BB0_8 Depth=2
	seqz x10, x0
	sb x0, 299 ( sp )
	lw x13, 76 ( sp )               //  4-byte Folded Reload
	add x11, x0, -1
	bge x11, x13, .LBB0_552
.LBB0_553:                              //  %cond.end522
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_113
.LBB0_552:                              //  %cond.end522
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_114
.LBB0_395:                              //  %cond.true541
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 300 ( sp )
	add x11, x10, 4
	sw x11, 300 ( sp )
	lhu x19, 0 ( x10 )
	mv x20, x0
	and x10, x27, 1
	beq x0, x10, .LBB0_554
.LBB0_555:                              //  %cond.true541
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_103
.LBB0_554:                              //  %cond.true541
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_105
.LBB0_396:                              //  %while.cond35.preheader.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	sub x10, x11, x19
	add x10, x10, 1
	bge x0, x10, .LBB0_514
.LBB0_397:                              //  %while.body39.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x10, x11, x27
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	lw x12, 56 ( sp )               //  4-byte Folded Reload
.LBB0_398:                              //  %while.body39.i
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x11, x0, 48
	sb x11, 0 ( x9 )
	add x9, x9, 1
	add x10, x10, -1
	blt x0, x10, .LBB0_398
	jal x0, .LBB0_456
.LBB0_399:                              //  %while.body1177.lr.ph
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	slt x25, x0, fp
	add x10, x10, x24
	sw x10, 52 ( sp )               //  4-byte Folded Spill
.LBB0_400:                              //  %while.body1177
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_418 Depth 4
	add x10, sp, 272
	mv x11, x10
	lw x12, 32 ( sp )               //  4-byte Folded Reload
	lw x10, 8 ( x11 )
	and x19, x25, 1
	sw x12, 4 ( x21 )
	add x10, x12, x10
	sw x10, 8 ( x11 )
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	sw x11, 276 ( sp )
	bltu x0, x19, .LBB0_402
.LBB0_401:                              //  %while.body1177
                                        //    in Loop: Header=BB0_400 Depth=3
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	add x11, x11, -1
	sw x11, 72 ( sp )               //  4-byte Folded Spill
.LBB0_402:                              //  %while.body1177
                                        //    in Loop: Header=BB0_400 Depth=3
	slti x10, x10, 7
	bltu x0, x10, .LBB0_404
.LBB0_403:                              //  %if.then1195
                                        //    in Loop: Header=BB0_400 Depth=3
	mv x10, x9
	mv x11, x27
	add x12, sp, 272
	jal __ssprint_r
	add x21, sp, 208
	add x11, x0, 16
	beq x0, x10, .LBB0_405
	jal x0, .LBB0_217
.LBB0_404:                              //    in Loop: Header=BB0_400 Depth=3
	add x21, x21, 8
	add x11, x0, 16
.LBB0_405:                              //  %if.end1201
                                        //    in Loop: Header=BB0_400 Depth=3
	lw x12, 72 ( sp )               //  4-byte Folded Reload
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	sw fp, 56 ( sp )                //  4-byte Folded Spill
	lb fp, 0 ( x12 )
	sub x10, x10, x18
	blt fp, x10, .LBB0_407
.LBB0_406:                              //  %if.end1201
                                        //    in Loop: Header=BB0_400 Depth=3
	mv fp, x10
.LBB0_407:                              //  %if.end1201
                                        //    in Loop: Header=BB0_400 Depth=3
	bge x0, fp, .LBB0_410
.LBB0_408:                              //  %if.then1215
                                        //    in Loop: Header=BB0_400 Depth=3
	add x12, sp, 272
	lw x10, 8 ( x12 )
	sw fp, 4 ( x21 )
	sw x18, 0 ( x21 )
	add x10, fp, x10
	sw x10, 8 ( x12 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_421
.LBB0_409:                              //  %if.then1225
                                        //    in Loop: Header=BB0_400 Depth=3
	mv x10, x9
	mv x11, x27
	jal __ssprint_r
	add x21, sp, 208
	add x11, x0, 16
	bltu x0, x10, .LBB0_217
.LBB0_410:                              //  %if.end1232
                                        //    in Loop: Header=BB0_400 Depth=3
	mv x10, x0
	blt x10, fp, .LBB0_412
.LBB0_411:                              //  %if.end1232
                                        //    in Loop: Header=BB0_400 Depth=3
	mv fp, x0
.LBB0_412:                              //  %if.end1232
                                        //    in Loop: Header=BB0_400 Depth=3
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	lb x10, 0 ( x10 )
	sub fp, x10, fp
	bge x0, fp, .LBB0_420
.LBB0_413:                              //  %while.cond1244.preheader
                                        //    in Loop: Header=BB0_400 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_418
	jal x0, .LBB0_414
.LBB0_416:                              //    in Loop: Header=BB0_418 Depth=4
	add x21, x21, 8
.LBB0_417:                              //  %if.end1263
                                        //    in Loop: Header=BB0_418 Depth=4
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	add x11, x0, 16
	sw x10, 0 ( x21 )
	bge x11, fp, .LBB0_414
.LBB0_418:                              //  %while.body1247
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_400 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	add x12, sp, 272
	lw x10, 8 ( x12 )
	sw x11, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x12 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_416
.LBB0_419:                              //  %if.then1257
                                        //    in Loop: Header=BB0_418 Depth=4
	mv x10, x9
	mv x11, x27
	jal __ssprint_r
	add x21, sp, 208
	beq x0, x10, .LBB0_417
	jal x0, .LBB0_217
.LBB0_414:                              //  %while.end1265
                                        //    in Loop: Header=BB0_400 Depth=3
	add x12, sp, 272
	lw x10, 8 ( x12 )
	sw fp, 4 ( x21 )
	add x10, fp, x10
	sw x10, 8 ( x12 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_422
.LBB0_415:                              //  %if.then1275
                                        //    in Loop: Header=BB0_400 Depth=3
	mv x10, x9
	mv x11, x27
	jal __ssprint_r
	lw fp, 56 ( sp )                //  4-byte Folded Reload
	add x21, sp, 208
	beq x0, x10, .LBB0_423
	jal x0, .LBB0_217
.LBB0_420:                              //    in Loop: Header=BB0_400 Depth=3
	lw fp, 56 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB0_423
.LBB0_421:                              //    in Loop: Header=BB0_400 Depth=3
	add x21, x21, 8
	add x11, x0, 16
	mv x10, x0
	bge x10, fp, .LBB0_411
	jal x0, .LBB0_412
.LBB0_422:                              //    in Loop: Header=BB0_400 Depth=3
	lw fp, 56 ( sp )                //  4-byte Folded Reload
	add x21, x21, 8
.LBB0_423:                              //  %cleanup.cont1285
                                        //    in Loop: Header=BB0_400 Depth=3
	xor x10, x25, -1
	and x10, x10, 1
	sub x20, x20, x10
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	sub fp, fp, x19
	slt x25, x0, fp
	lb x10, 0 ( x10 )
	add x18, x10, x18
	blt x0, fp, .LBB0_400
.LBB0_424:                              //  %cleanup.cont1285
                                        //    in Loop: Header=BB0_400 Depth=3
	blt x0, x20, .LBB0_400
	jal x0, .LBB0_381
.LBB0_425:                              //    in Loop: Header=BB0_8 Depth=2
	add x11, x21, 8
	lw x21, 80 ( sp )               //  4-byte Folded Reload
	bge x10, x0, .LBB0_516
.LBB0_426:                              //  %while.cond1033.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 100 ( sp )              //  4-byte Folded Reload
	sub fp, x0, x10
	sw x12, 0 ( x11 )
	add x12, x0, -17
	blt x12, x10, .LBB0_450
.LBB0_427:                              //  %while.body1036.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	add x12, x0, 16
	jal x0, .LBB0_430
.LBB0_428:                              //    in Loop: Header=BB0_430 Depth=3
	add x11, x11, 8
.LBB0_429:                              //  %if.end1052
                                        //    in Loop: Header=BB0_430 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	add x12, x0, 16
	sw x10, 0 ( x11 )
	bge x12, fp, .LBB0_450
.LBB0_430:                              //  %while.body1036
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x18 )
	sw x12, 4 ( x11 )
	add x10, x10, 16
	sw x10, 8 ( x18 )
	lw x10, 276 ( sp )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 276 ( sp )
	bltu x0, x10, .LBB0_428
.LBB0_431:                              //  %if.then1046
                                        //    in Loop: Header=BB0_430 Depth=3
	mv x10, x9
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	add x11, sp, 208
	beq x0, x10, .LBB0_429
	jal x0, .LBB0_218
.LBB0_432:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x21, 8
.LBB0_433:                              //  %if.end1318
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 80 ( sp )               //  4-byte Folded Reload
	add x11, x12, x24
	sub x10, x12, x10
	sub x11, x11, fp
	mv x9, x10
	blt x10, x11, .LBB0_435
.LBB0_434:                              //  %if.end1318
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x9, x11
.LBB0_435:                              //  %if.end1318
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x24, 76 ( sp )               //  4-byte Folded Reload
	bge x0, x9, .LBB0_439
.LBB0_436:                              //  %if.then1332
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x18 )
	sw x9, 4 ( x21 )
	sw fp, 0 ( x21 )
	add x11, x9, x11
	sw x11, 8 ( x18 )
	lw x11, 276 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 276 ( sp )
	bltu x0, x11, .LBB0_441
.LBB0_437:                              //  %if.then1342
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	bltu x0, x10, .LBB0_254
.LBB0_438:                              //  %if.then1342.if.end1349_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 292 ( sp )
	lw x11, 80 ( sp )               //  4-byte Folded Reload
	add x21, sp, 208
	sub x10, x11, x10
.LBB0_439:                              //  %if.end1349
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x19, x9, .LBB0_442
.LBB0_440:                              //  %if.end1349
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x11, x19
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	add fp, x11, x10
	bge x0, fp, .LBB0_313
.LBB0_443:                              //  %while.cond1361.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x21 )
	slti x10, fp, 17
	bltu x0, x10, .LBB0_267
.LBB0_444:                              //  %while.body1364.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11, x0, 16
	jal x0, .LBB0_447
.LBB0_445:                              //    in Loop: Header=BB0_447 Depth=3
	add x21, x21, 8
.LBB0_446:                              //  %if.end1380
                                        //    in Loop: Header=BB0_447 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	add x11, x0, 16
	sw x10, 0 ( x21 )
	bge x11, fp, .LBB0_267
.LBB0_447:                              //  %while.body1364
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x18 )
	sw x11, 4 ( x21 )
	add x10, x10, 16
	sw x10, 8 ( x18 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_445
.LBB0_448:                              //  %if.then1374
                                        //    in Loop: Header=BB0_447 Depth=3
	mv x10, x9
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	add x21, sp, 208
	beq x0, x10, .LBB0_446
	jal x0, .LBB0_218
.LBB0_267:                              //  %while.end967
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x18 )
	sw fp, 4 ( x21 )
	add x10, fp, x10
	sw x10, 8 ( x18 )
	lw x10, 276 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 276 ( sp )
	bltu x0, x10, .LBB0_268
.LBB0_246:                              //  %if.then977
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	add x21, sp, 208
	bltu x0, x10, .LBB0_218
.LBB0_313:                              //  %if.end1550
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	and x10, x10, 4
	bltu x0, x10, .LBB0_314
.LBB0_323:                              //  %if.end1597thread-pre-split
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 280 ( sp )
.LBB0_324:                              //  %if.end1597
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x24, x22, .LBB0_326
.LBB0_325:                              //  %if.end1597
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x22, x24
.LBB0_326:                              //  %if.end1597
                                        //    in Loop: Header=BB0_8 Depth=2
	add x20, x20, x22
	beq x0, x10, .LBB0_328
.LBB0_327:                              //  %land.lhs.true1607
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	bltu x0, x10, .LBB0_218
.LBB0_328:                              //  %if.end1611
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 60 ( sp )               //  4-byte Folded Reload
	mv x24, x26
	sw x0, 276 ( sp )
	bltu x0, x11, .LBB0_329
.LBB0_556:                              //  %if.end1611
                                        //    in Loop: Header=BB0_5 Depth=1
	jal x0, .LBB0_5
.LBB0_329:                              //  %if.then1616
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	jal _free_r
	mv x24, x26
	add x21, sp, 208
	mv fp, x24
	lbu x10, 0 ( fp )
	beq x0, x10, .LBB0_557
.LBB0_558:                              //  %if.then1616
                                        //    in Loop: Header=BB0_5 Depth=1
	jal x0, .LBB0_6
.LBB0_557:                              //  %if.then1616
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_8
.LBB0_268:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x21, 8
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	and x10, x10, 4
	bltu x0, x10, .LBB0_314
	jal x0, .LBB0_323
.LBB0_441:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x21, 8
	bge x19, x9, .LBB0_440
.LBB0_442:                              //    in Loop: Header=BB0_8 Depth=2
	sub x11, x0, x9
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	add fp, x11, x10
	blt x0, fp, .LBB0_443
	jal x0, .LBB0_313
.LBB0_450:                              //  %while.end1054
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x18 )
	sw fp, 4 ( x11 )
	add x10, fp, x10
	sw x10, 8 ( x18 )
	lw x10, 276 ( sp )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 276 ( sp )
	bltu x0, x10, .LBB0_515
.LBB0_451:                              //  %if.then1064
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	add x11, sp, 208
	beq x0, x10, .LBB0_516
	jal x0, .LBB0_218
.LBB0_452:                              //  %if.then74.if.end83_crit_edge.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 292 ( sp )
.LBB0_453:                              //  %if.end83.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x9, x10, x9
.LBB0_454:                              //  %if.end85.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 48 ( sp )               //  4-byte Folded Reload
	mv x12, x0
	mv x11, x19
	mv x13, x12
	jal __nedf2
	bltu x0, x10, .LBB0_463
.LBB0_455:                              //  %if.end89.thread.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 56 ( sp )               //  4-byte Folded Reload
	sw x9, 304 ( sp )
.LBB0_456:                              //  %cvt.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	or x16, x27, 256
	sub x10, x9, x24
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	bltu x0, x12, .LBB0_466
.LBB0_457:                              //  %if.then276
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 292 ( sp )
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	add x18, x18, -2
	slti x10, x11, -3
	bltu x0, x10, .LBB0_468
.LBB0_458:                              //  %if.then276
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	mv x12, x11
	blt x10, x11, .LBB0_468
.LBB0_459:                              //    in Loop: Header=BB0_8 Depth=2
	add x18, x0, 103
	jal x0, .LBB0_460
.LBB0_468:                              //  %if.end291
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 101
	blt x10, x18, .LBB0_472
.LBB0_469:                              //  %if.then294
                                        //    in Loop: Header=BB0_8 Depth=2
	or x10, x18, 32
	add x11, x0, 97
	beq x10, x11, .LBB0_490
.LBB0_470:                              //  %if.then294
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x11, x18
	lw x14, 292 ( sp )
	seqz x15, x0
	add x12, x14, -1
	bge x14, x15, .LBB0_491
.LBB0_471:                              //    in Loop: Header=BB0_8 Depth=2
	add x13, x0, 45
	sub fp, x15, x14
	jal x0, .LBB0_492
.LBB0_472:                              //  %if.else307
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 292 ( sp )
	xor x10, x18, 102
	bltu x0, x10, .LBB0_460
.LBB0_473:                              //  %if.then310
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	and x10, x27, 1
	mv x25, x12
	or x10, x11, x10
	bge x0, x12, .LBB0_485
.LBB0_474:                              //  %if.then313
                                        //    in Loop: Header=BB0_8 Depth=2
	add x18, x0, 102
	beq x0, x10, .LBB0_509
.LBB0_475:                              //  %if.then318
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 24 ( sp )               //  4-byte Folded Reload
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	add x10, x10, x11
	add x19, x25, x10
	mv fp, x0
	and x10, x27, 1024
	bltu x0, x10, .LBB0_477
	jal x0, .LBB0_510
.LBB0_460:                              //  %if.else334
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 80 ( sp )               //  4-byte Folded Reload
	bge x12, x11, .LBB0_476
.LBB0_461:                              //  %if.else343
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 24 ( sp )               //  4-byte Folded Reload
	add x19, x10, x11
	bge x0, x12, .LBB0_511
.LBB0_462:                              //    in Loop: Header=BB0_8 Depth=2
	mv x25, x12
	mv fp, x0
	and x10, x27, 1024
	bltu x0, x10, .LBB0_477
	jal x0, .LBB0_510
.LBB0_476:                              //  %if.then337
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 24 ( sp )               //  4-byte Folded Reload
	and x10, x27, 1
	sub x10, x0, x10
	mv x25, x12
	and x10, x11, x10
	add x19, x10, x12
	mv fp, x0
	and x10, x27, 1024
	beq x0, x10, .LBB0_510
.LBB0_477:                              //  %if.end352
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x0, x25, .LBB0_510
.LBB0_478:                              //  %while.cond359.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	mv fp, x0
	lb x10, 0 ( x10 )
	xor x11, x10, 127
	beq x0, x11, .LBB0_487
.LBB0_479:                              //  %while.cond359.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x10, x25, .LBB0_487
.LBB0_480:                              //  %if.end368.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x11, x0
	mv x27, x16
	mv fp, x11
	mv x20, x11
.LBB0_481:                              //  %if.end368
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x13, 72 ( sp )               //  4-byte Folded Reload
	lbu x12, 1 ( x13 )
	beq x12, x11, .LBB0_483
.LBB0_482:                              //  %if.end368
                                        //    in Loop: Header=BB0_481 Depth=3
	add x13, x13, 1
.LBB0_483:                              //  %if.end368
                                        //    in Loop: Header=BB0_481 Depth=3
	sub x25, x25, x10
	snez x10, x12
	add x20, x10, x20
	seqz x10, x12
	add fp, x10, fp
	lb x10, 0 ( x13 )
	sw x13, 72 ( sp )               //  4-byte Folded Spill
	xor x12, x10, 127
	beq x0, x12, .LBB0_488
.LBB0_484:                              //  %if.end368
                                        //    in Loop: Header=BB0_481 Depth=3
	blt x10, x25, .LBB0_481
	jal x0, .LBB0_488
.LBB0_485:                              //  %if.else322
                                        //    in Loop: Header=BB0_8 Depth=2
	mv fp, x0
	beq x10, fp, .LBB0_512
.LBB0_486:                              //  %if.else322
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 24 ( sp )               //  4-byte Folded Reload
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	add x10, x10, x11
	add x19, x10, 1
	jal x0, .LBB0_513
.LBB0_487:                              //    in Loop: Header=BB0_8 Depth=2
	mv x27, x16
	mv x20, fp
.LBB0_488:                              //  %while.end379
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 32 ( sp )               //  4-byte Folded Reload
	add x10, fp, x20
	jal __mulsi3
	add x19, x19, x10
	mv x16, x27
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	mv x11, x0
	sw x25, 52 ( sp )               //  4-byte Folded Spill
	bge x10, x0, .LBB0_489
	jal x0, .LBB0_508
.LBB0_490:                              //    in Loop: Header=BB0_8 Depth=2
	add x11, x18, 15
	lw x14, 292 ( sp )
	seqz x15, x0
	add x12, x14, -1
	blt x14, x15, .LBB0_471
.LBB0_491:                              //  %if.then294
                                        //    in Loop: Header=BB0_8 Depth=2
	add x13, x0, 43
	mv fp, x12
.LBB0_492:                              //  %if.then294
                                        //    in Loop: Header=BB0_8 Depth=2
	sb x11, 285 ( sp )
	slti x11, fp, 10
	sw x12, 292 ( sp )
	sb x13, 286 ( sp )
	bltu x0, x11, .LBB0_500
.LBB0_493:                              //  %do.body.i2298.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	add x27, sp, 308
	add x25, x0, 6
	add x10, x0, -1
	sw x16, 76 ( sp )               //  4-byte Folded Spill
.LBB0_494:                              //  %do.body.i2298
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x20, x0, 10
	mv x19, fp
	mv x9, x10
	mv x10, x19
	mv x11, x20
	jal __divsi3
	mv x11, x20
	mv fp, x10
	jal __mulsi3
	sub x10, x19, x10
	add x12, x25, x27
	add x11, x10, 48
	sb x11, 0 ( x12 )
	add x10, x9, -1
	add x25, x25, -1
	add x12, x0, 99
	blt x12, x19, .LBB0_494
.LBB0_495:                              //  %do.end.i2299
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x25, x27
	add x12, fp, 48
	sb x12, 0 ( x10 )
	lw x10, 8 ( sp )                //  4-byte Folded Reload
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	lw x16, 76 ( sp )               //  4-byte Folded Reload
	add x13, x25, -7
	bge x13, x0, .LBB0_503
.LBB0_496:                              //  %for.inc.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 4 ( sp )                //  4-byte Folded Reload
	sb x12, 287 ( sp )
	xor x12, x25, 6
	beq x0, x12, .LBB0_503
.LBB0_497:                              //  %for.inc.for.inc_crit_edge.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	sb x11, 288 ( sp )
	xor x11, x25, 5
	add x10, sp, 289
	beq x0, x11, .LBB0_503
.LBB0_498:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, sp, 289
.LBB0_499:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x11, sp, 316
	add x11, x9, x11
	lb x11, 0 ( x11 )
	add x9, x9, 1
	sb x11, 0 ( x10 )
	add x10, x10, 1
	xor x11, x9, -1
	bltu x0, x11, .LBB0_499
	jal x0, .LBB0_503
.LBB0_500:                              //  %if.else23.i
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x11, x10, 97
	lw x10, 8 ( sp )                //  4-byte Folded Reload
	beq x0, x11, .LBB0_502
.LBB0_501:                              //  %if.then25.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 48
	sb x10, 287 ( sp )
	lw x10, 4 ( sp )                //  4-byte Folded Reload
.LBB0_502:                              //  %if.end27.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11, fp, 48
	sb x11, 0 ( x10 )
	add x10, x10, 1
.LBB0_503:                              //  %exponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13, 80 ( sp )               //  4-byte Folded Reload
	mv x20, x0
	add x12, x0, 2
	mv x11, x20
	blt x13, x12, .LBB0_505
.LBB0_504:                              //  %exponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 24 ( sp )               //  4-byte Folded Reload
.LBB0_505:                              //  %exponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	and x12, x27, 1
	beq x12, x20, .LBB0_507
.LBB0_506:                              //  %exponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 24 ( sp )               //  4-byte Folded Reload
.LBB0_507:                              //  %exponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 80 ( sp )               //  4-byte Folded Reload
	and x16, x16, -1025
	mv fp, x20
	mv x25, x20
	add x11, x12, x11
	add x12, sp, 285
	sub x10, x10, x12
	sw x10, 16 ( sp )               //  4-byte Folded Spill
	add x19, x10, x11
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	mv x11, x0
	sw x25, 52 ( sp )               //  4-byte Folded Spill
	bge x10, x0, .LBB0_489
	jal x0, .LBB0_508
.LBB0_463:                              //  %if.end89.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 304 ( sp )
	lw x12, 56 ( sp )               //  4-byte Folded Reload
	bgeu x10, x9, .LBB0_465
.LBB0_464:                              //  %while.body93.i
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x11, x10, 1
	sw x11, 304 ( sp )
	add x11, x0, 48
	sb x11, 0 ( x10 )
	lw x10, 304 ( sp )
	bltu x10, x9, .LBB0_464
.LBB0_465:                              //  %if.end96.loopexit.i
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x9, x10
	or x16, x27, 256
	sub x10, x9, x24
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	beq x0, x12, .LBB0_457
	jal x0, .LBB0_466
.LBB0_509:                              //    in Loop: Header=BB0_8 Depth=2
	mv x19, x25
	mv fp, x0
	and x10, x27, 1024
	bltu x0, x10, .LBB0_477
	jal x0, .LBB0_510
.LBB0_511:                              //  %if.then347
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x10, x19, x12
	mv fp, x0
	add x19, x10, 1
	mv x20, fp
	mv x25, x12
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	mv x11, x0
	sw x25, 52 ( sp )               //  4-byte Folded Spill
	bge x10, x0, .LBB0_489
	jal x0, .LBB0_508
.LBB0_512:                              //    in Loop: Header=BB0_8 Depth=2
	seqz x19, x0
.LBB0_513:                              //  %if.else322
                                        //    in Loop: Header=BB0_8 Depth=2
	add x18, x0, 102
.LBB0_510:                              //    in Loop: Header=BB0_8 Depth=2
	mv x20, fp
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	mv x11, x0
	sw x25, 52 ( sp )               //  4-byte Folded Spill
	bge x10, x0, .LBB0_489
.LBB0_508:                              //  %if.then387
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 45
	sb x10, 299 ( sp )
.LBB0_489:                              //    in Loop: Header=BB0_8 Depth=2
	mv x27, x16
	mv x10, x11
	mv x25, x11
	sw fp, 56 ( sp )                //  4-byte Folded Spill
	blt x19, x11, .LBB0_559
.LBB0_560:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_183
.LBB0_559:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_184
.LBB0_514:                              //    in Loop: Header=BB0_8 Depth=2
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	lw x12, 56 ( sp )               //  4-byte Folded Reload
	or x16, x27, 256
	sub x10, x9, x24
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	beq x0, x12, .LBB0_457
	jal x0, .LBB0_466
.LBB0_515:                              //    in Loop: Header=BB0_8 Depth=2
	add x11, x11, 8
.LBB0_516:                              //  %if.end1071
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x18 )
	sw x21, 4 ( x11 )
	sw x24, 0 ( x11 )
	add x10, x21, x10
	sw x10, 8 ( x18 )
	lw x10, 276 ( sp )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 276 ( sp )
	bltu x0, x10, .LBB0_518
.LBB0_517:                              //  %if.then1081
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	mv x11, x27
	mv x12, x18
	jal __ssprint_r
	add x21, sp, 208
	lw x24, 76 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_313
	jal x0, .LBB0_218
.LBB0_518:                              //    in Loop: Header=BB0_8 Depth=2
	add x21, x11, 8
	jal x0, .LBB0_239
.LBB0_199:
	lw x27, 84 ( sp )               //  4-byte Folded Reload
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB0_217
.LBB0_519:                              //  %done
	lw x10, 280 ( sp )
	beq x0, x10, .LBB0_521
.LBB0_520:                              //  %land.lhs.true1620
	add x12, sp, 272
	mv x10, x9
	mv x11, x27
	jal __ssprint_r
	bltu x0, x10, .LBB0_220
.LBB0_521:                              //  %if.end1624
	sw x0, 276 ( sp )
	lbu x10, 12 ( x27 )
	mv x11, x0
	and x10, x10, 64
	bne x10, x11, .LBB0_221
	jal x0, .LBB0_523
.LBB0_522:                              //  %if.then9
	add x10, x0, 12
	add x20, x0, -1
	sw x10, 0 ( x9 )
	jal x0, .LBB0_523
.LBB0_194:
	lw x27, 84 ( sp )               //  4-byte Folded Reload
.LBB0_217:
	lw x20, 68 ( sp )               //  4-byte Folded Reload
.LBB0_218:                              //  %error
	lw x11, 60 ( sp )               //  4-byte Folded Reload
	beq x0, x11, .LBB0_220
.LBB0_219:                              //  %if.then1629
	mv x10, x9
	jal _free_r
.LBB0_220:                              //  %if.end1630
	lbu x10, 12 ( x27 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB0_523
.LBB0_221:                              //  %if.end1630
	add x20, x0, -1
.LBB0_523:                              //  %cleanup1640
	mv x10, x20
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
.LBB0_254:
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	lw x11, 60 ( sp )               //  4-byte Folded Reload
	bltu x0, x11, .LBB0_219
	jal x0, .LBB0_220
.LBB0_524:                              //  %if.then242
	lh x10, 12 ( x27 )
	or x10, x10, 64
	sh x10, 12 ( x27 )
	lbu x10, 12 ( x27 )
	mv x11, x0
	and x10, x10, 64
	bne x10, x11, .LBB0_221
	jal x0, .LBB0_523
.Lfunc_end0:
	.size	_svfprintf_r, .Lfunc_end0-_svfprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_29
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_31
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_32
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_37
	.long	.LBB0_40
	.long	.LBB0_140
	.long	.LBB0_39
	.long	.LBB0_22
	.long	.LBB0_140
	.long	.LBB0_43
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_65
	.long	.LBB0_140
	.long	.LBB0_80
	.long	.LBB0_94
	.long	.LBB0_65
	.long	.LBB0_65
	.long	.LBB0_65
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_44
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_97
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_81
	.long	.LBB0_140
	.long	.LBB0_99
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_101
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_65
	.long	.LBB0_140
	.long	.LBB0_80
	.long	.LBB0_86
	.long	.LBB0_65
	.long	.LBB0_65
	.long	.LBB0_65
	.long	.LBB0_46
	.long	.LBB0_86
	.long	.LBB0_28
	.long	.LBB0_140
	.long	.LBB0_48
	.long	.LBB0_140
	.long	.LBB0_56
	.long	.LBB0_106
	.long	.LBB0_111
	.long	.LBB0_28
	.long	.LBB0_140
	.long	.LBB0_81
	.long	.LBB0_42
	.long	.LBB0_130
	.long	.LBB0_140
	.long	.LBB0_140
	.long	.LBB0_135
	.long	.LBB0_140
	.long	.LBB0_42
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
