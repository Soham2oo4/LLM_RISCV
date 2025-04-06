	.text
	.file	"svfwprintf.c"
	.globl	_svfwprintf_r           //  -- Begin function _svfwprintf_r
	.type	_svfwprintf_r,@function
_svfwprintf_r:                          //  @_svfwprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -736
	.cfi_adjust_cfa_offset 736
	sw x9, 728 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 724 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x24, 700 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw ra, 732 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 720 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 716 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 712 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 708 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 704 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x25, 696 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 692 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 688 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 684 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv x24, x12
	mv x9, x11
	mv x18, x10
	sw x13, 652 ( sp )
	sw x0, 644 ( sp )
	sw x0, 600 ( sp )
	jal _localeconv_r
	lw x10, 0 ( x10 )
	lb x10, 0 ( x10 )
	sw x10, 640 ( sp )
	lbu x10, 12 ( x9 )
	and x10, x10, 128
	beq x0, x10, .LBB0_4
.LBB0_1:                                //  %land.lhs.true
	lw x10, 16 ( x9 )
	bltu x0, x10, .LBB0_4
.LBB0_2:                                //  %if.then
	add fp, x0, 64
	mv x10, x18
	mv x11, fp
	jal _malloc_r
	sw x10, 16 ( x9 )
	sw x10, 0 ( x9 )
	bltu x0, x10, .LBB0_3
.LBB0_503:                              //  %if.then
	jal x0, .LBB0_495
.LBB0_3:                                //  %if.end
	sw fp, 20 ( x9 )
.LBB0_4:                                //  %if.end11
	add x10, sp, 524
	sw x10, 588 ( sp )
	add x10, sp, 656
	add x10, x10, 24
	sw x10, 32 ( sp )               //  4-byte Folded Spill
	add x10, sp, 124
	add x10, x10, 400
	sw x10, 52 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _svfwprintf_r.blanks )
	add x10, x10, %lo( _svfwprintf_r.blanks )
	sw x10, 108 ( sp )              //  4-byte Folded Spill
	lui x10, %hi( _svfwprintf_r.zeroes )
	add x10, x10, %lo( _svfwprintf_r.zeroes )
	sw x10, 112 ( sp )              //  4-byte Folded Spill
	lui x10, %hi( .str.8 )
	add x10, x10, %lo( .str.8 )
	sw x10, 40 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( JTI0_0 )
	add x10, x10, %lo( JTI0_0 )
	add x11, sp, 604
	mv x22, x0
	sw x10, 88 ( sp )               //  4-byte Folded Spill
	add x10, x11, 8
	add x15, sp, 588
	sw x10, 36 ( sp )               //  4-byte Folded Spill
	add x10, x11, 12
	add x26, x0, 64
	add x21, x0, 10
	add x19, x0, 90
	mv x23, x22
	sw x0, 8 ( x15 )
	sw x22, 96 ( sp )               //  4-byte Folded Spill
	sw x0, 592 ( sp )
	sw x22, 48 ( sp )               //  4-byte Folded Spill
	sw x22, 44 ( sp )               //  4-byte Folded Spill
	sw x22, 56 ( sp )               //  4-byte Folded Spill
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	sw x10, 28 ( sp )               //  4-byte Folded Spill
	sw x18, 100 ( sp )              //  4-byte Folded Spill
	sw x9, 76 ( sp )                //  4-byte Folded Spill
.LBB0_5:                                //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_8 Depth 2
                                        //        Child Loop BB0_15 Depth 3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_24 Depth 6
                                        //            Child Loop BB0_18 Depth 5
                                        //        Child Loop BB0_223 Depth 3
                                        //        Child Loop BB0_161 Depth 3
                                        //        Child Loop BB0_143 Depth 3
                                        //        Child Loop BB0_228 Depth 3
                                        //        Child Loop BB0_239 Depth 3
                                        //        Child Loop BB0_455 Depth 3
                                        //        Child Loop BB0_197 Depth 3
                                        //        Child Loop BB0_202 Depth 3
                                        //        Child Loop BB0_262 Depth 3
                                        //        Child Loop BB0_281 Depth 3
                                        //        Child Loop BB0_289 Depth 3
                                        //        Child Loop BB0_336 Depth 3
                                        //        Child Loop BB0_357 Depth 3
                                        //        Child Loop BB0_382 Depth 3
                                        //          Child Loop BB0_398 Depth 4
                                        //        Child Loop BB0_442 Depth 3
                                        //        Child Loop BB0_425 Depth 3
                                        //        Child Loop BB0_342 Depth 3
                                        //        Child Loop BB0_416 Depth 3
                                        //      Child Loop BB0_6 Depth 2
	add x20, sp, 524
	mv fp, x24
	lw x10, 0 ( fp )
	beq x0, x10, .LBB0_8
.LBB0_6:                                //  %while.cond
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	xor x11, x10, 37
	beq x0, x11, .LBB0_8
.LBB0_7:                                //  %while.body
                                        //    in Loop: Header=BB0_6 Depth=2
	add fp, fp, 4
	lw x10, 0 ( fp )
	bltu x0, x10, .LBB0_6
.LBB0_8:                                //  %while.end
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_15 Depth 3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_24 Depth 6
                                        //            Child Loop BB0_18 Depth 5
                                        //        Child Loop BB0_223 Depth 3
                                        //        Child Loop BB0_161 Depth 3
                                        //        Child Loop BB0_143 Depth 3
                                        //        Child Loop BB0_228 Depth 3
                                        //        Child Loop BB0_239 Depth 3
                                        //        Child Loop BB0_455 Depth 3
                                        //        Child Loop BB0_197 Depth 3
                                        //        Child Loop BB0_202 Depth 3
                                        //        Child Loop BB0_262 Depth 3
                                        //        Child Loop BB0_281 Depth 3
                                        //        Child Loop BB0_289 Depth 3
                                        //        Child Loop BB0_336 Depth 3
                                        //        Child Loop BB0_357 Depth 3
                                        //        Child Loop BB0_382 Depth 3
                                        //          Child Loop BB0_398 Depth 4
                                        //        Child Loop BB0_442 Depth 3
                                        //        Child Loop BB0_425 Depth 3
                                        //        Child Loop BB0_342 Depth 3
                                        //        Child Loop BB0_416 Depth 3
	sub x9, fp, x24
	beq x0, x9, .LBB0_13
.LBB0_9:                                //  %if.then17
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x15 )
	sw x9, 4 ( x20 )
	sw x24, 0 ( x20 )
	add x10, x9, x10
	sw x10, 8 ( x15 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_11
.LBB0_10:                               //  %if.then24
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	mv x10, x18
	mv x12, x15
	jal __ssprint_r
	add x20, sp, 524
	beq x0, x10, .LBB0_12
	jal x0, .LBB0_496
.LBB0_11:                               //    in Loop: Header=BB0_8 Depth=2
	add x20, x20, 8
.LBB0_12:                               //  %if.end30
                                        //    in Loop: Header=BB0_8 Depth=2
	sra x10, x9, 2&31
	add x23, x23, x10
	lw x10, 0 ( fp )
.LBB0_13:                               //  %if.end32
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9, 76 ( sp )                //  4-byte Folded Reload
	bltu x0, x10, .LBB0_14
.LBB0_504:                              //  %if.end32
	jal x0, .LBB0_492
.LBB0_14:                               //  %if.end36
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11, fp, 4
	add x10, x0, -1
	mv fp, x22
	mv x25, x22
	sw x0, 648 ( sp )
	sw x10, 92 ( sp )               //  4-byte Folded Spill
	sw x23, 84 ( sp )               //  4-byte Folded Spill
.LBB0_15:                               //  %rflag
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_24 Depth 6
                                        //            Child Loop BB0_18 Depth 5
	lw x27, 0 ( x11 )
	add x24, x11, 4
.LBB0_16:                               //  %reswitch
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_24 Depth 6
                                        //            Child Loop BB0_18 Depth 5
	add x10, x27, -49
	sltiu x10, x10, 9
	beq x0, x10, .LBB0_19
.LBB0_17:                               //  %do.body.preheader
                                        //    in Loop: Header=BB0_16 Depth=4
	mv x25, x22
.LBB0_18:                               //  %do.body
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	mv x10, x25
	mv x11, x21
	jal __mulsi3
	add x10, x10, x27
	lw x27, 0 ( x24 )
	add x25, x10, -48
	add x24, x24, 4
	add x10, x27, -48
	sltiu x10, x10, 10
	bltu x0, x10, .LBB0_18
	jal x0, .LBB0_16
.LBB0_27:                               //    in Loop: Header=BB0_19 Depth=5
	mv x10, x0
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	mv x24, x11
	sw x10, 92 ( sp )               //  4-byte Folded Spill
	add x10, x27, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB0_17
.LBB0_19:                               //  %reswitch
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //  =>        This Loop Header: Depth=5
                                        //              Child Loop BB0_24 Depth 6
	add x10, x27, -32
	bltu x19, x10, .LBB0_120
.LBB0_20:                               //  %reswitch
                                        //    in Loop: Header=BB0_19 Depth=5
	lw x11, 88 ( sp )               //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB0_21:                               //  %sw.bb66
                                        //    in Loop: Header=BB0_19 Depth=5
	lw x27, 0 ( x24 )
	add x11, x24, 4
	xor x10, x27, 42
	beq x0, x10, .LBB0_51
.LBB0_22:                               //  %while.cond77.preheader
                                        //    in Loop: Header=BB0_19 Depth=5
	sw fp, 104 ( sp )               //  4-byte Folded Spill
	add fp, x27, -48
	add x10, x0, 9
	bltu x10, fp, .LBB0_27
.LBB0_23:                               //  %while.body81.preheader
                                        //    in Loop: Header=BB0_19 Depth=5
	mv x10, x0
	mv x24, x11
.LBB0_24:                               //  %while.body81
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //            Parent Loop BB0_19 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	add x11, x0, 10
	jal __mulsi3
	lw x27, 0 ( x24 )
	add x10, x10, fp
	add x24, x24, 4
	add fp, x27, -48
	sltiu x11, fp, 10
	bltu x0, x11, .LBB0_24
.LBB0_25:                               //  %while.end86
                                        //    in Loop: Header=BB0_19 Depth=5
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	add x11, x0, -1
	sw x11, 92 ( sp )               //  4-byte Folded Spill
	blt x10, x0, .LBB0_16
.LBB0_26:                               //  %while.end86.thread
                                        //    in Loop: Header=BB0_19 Depth=5
	sw x10, 92 ( sp )               //  4-byte Folded Spill
	add x10, x27, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB0_17
	jal x0, .LBB0_19
.LBB0_28:                               //  %sw.bb120
                                        //    in Loop: Header=BB0_15 Depth=3
	or fp, fp, 32
	mv x11, x24
	jal x0, .LBB0_15
.LBB0_29:                               //  %sw.bb52
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 648 ( sp )
	mv x11, x24
	bltu x0, x10, .LBB0_15
.LBB0_30:                               //  %if.then54
                                        //    in Loop: Header=BB0_15 Depth=3
	add x10, x0, 32
	jal x0, .LBB0_41
.LBB0_31:                               //  %sw.bb56
                                        //    in Loop: Header=BB0_15 Depth=3
	or fp, fp, 1
	mv x11, x24
	jal x0, .LBB0_15
.LBB0_32:                               //  %sw.bb
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x10, x18
	jal _localeconv_r
	lw x10, 4 ( x10 )
	lb x10, 0 ( x10 )
	sw x10, 644 ( sp )
	mv x10, x18
	jal _localeconv_r
	lw x10, 8 ( x10 )
	mv x11, x24
	sw x10, 96 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB0_15
.LBB0_33:                               //  %sw.bb
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 644 ( sp )
	mv x11, x24
	beq x0, x10, .LBB0_15
.LBB0_34:                               //  %land.lhs.true47
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	mv x11, x0
	lbu x10, 0 ( x10 )
	beq x10, x11, .LBB0_36
.LBB0_35:                               //  %land.lhs.true47
                                        //    in Loop: Header=BB0_15 Depth=3
	or fp, fp, 1024
.LBB0_36:                               //  %land.lhs.true47
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x11, x24
	jal x0, .LBB0_15
.LBB0_37:                               //  %sw.bb58
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x25, 0 ( x10 )
	mv x11, x24
	bge x25, x0, .LBB0_15
.LBB0_38:                               //  %if.end62
                                        //    in Loop: Header=BB0_15 Depth=3
	sub x25, x0, x25
.LBB0_39:                               //  %sw.bb63.loopexit
                                        //    in Loop: Header=BB0_15 Depth=3
	or fp, fp, 4
	mv x11, x24
	jal x0, .LBB0_15
.LBB0_40:                               //  %sw.bb65
                                        //    in Loop: Header=BB0_15 Depth=3
	add x10, x0, 43
.LBB0_41:                               //  %rflag
                                        //    in Loop: Header=BB0_15 Depth=3
	sw x10, 648 ( sp )
.LBB0_42:                               //  %rflag.backedge.loopexit
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x11, x24
	jal x0, .LBB0_15
.LBB0_43:                               //  %sw.bb89
                                        //    in Loop: Header=BB0_15 Depth=3
	or fp, fp, 128
	mv x11, x24
	jal x0, .LBB0_15
.LBB0_44:                               //  %sw.bb99
                                        //    in Loop: Header=BB0_15 Depth=3
	or fp, fp, 8
	mv x11, x24
	jal x0, .LBB0_15
.LBB0_45:                               //  %sw.bb101
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 0 ( x24 )
	add x11, x0, 104
	beq x10, x11, .LBB0_49
.LBB0_46:                               //  %sw.bb101
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x10, x26
	mv x11, x24
	or fp, fp, x10
	jal x0, .LBB0_15
.LBB0_47:                               //  %sw.bb109
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 0 ( x24 )
	add x11, x0, 108
	beq x10, x11, .LBB0_50
.LBB0_48:                               //  %sw.bb109
                                        //    in Loop: Header=BB0_15 Depth=3
	add x10, x0, 16
	mv x11, x24
	or fp, fp, x10
	jal x0, .LBB0_15
.LBB0_49:                               //    in Loop: Header=BB0_15 Depth=3
	add x10, x0, 512
	add x11, x24, 4
	or fp, fp, x10
	jal x0, .LBB0_15
.LBB0_50:                               //    in Loop: Header=BB0_15 Depth=3
	add x10, x0, 32
	add x11, x24, 4
	or fp, fp, x10
	jal x0, .LBB0_15
.LBB0_51:                               //  %if.then70
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 652 ( sp )
	add x12, x10, 4
	sw x12, 652 ( sp )
	lw x12, 0 ( x10 )
	add x10, x0, -1
	sw x12, 92 ( sp )               //  4-byte Folded Spill
	blt x10, x12, .LBB0_15
.LBB0_52:                               //  %if.then70
                                        //    in Loop: Header=BB0_15 Depth=3
	sw x10, 92 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_15
.LBB0_53:                               //  %sw.bb421
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 32
	bltu x0, x10, .LBB0_58
.LBB0_54:                               //  %if.else427
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 16
	add x15, sp, 588
	bltu x0, x10, .LBB0_57
.LBB0_55:                               //  %if.else432
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 64
	bltu x0, x10, .LBB0_59
.LBB0_56:                               //  %if.else438
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 512
	bltu x0, x10, .LBB0_60
.LBB0_57:                               //  %if.then430
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x10, 0 ( x10 )
	sw x23, 0 ( x10 )
	mv fp, x24
	lw x10, 0 ( fp )
	bltu x0, x10, .LBB0_6
	jal x0, .LBB0_8
.LBB0_58:                               //  %if.then424
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x15, sp, 588
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x10, 0 ( x10 )
	sra x11, x23, 31&31
	sw x11, 4 ( x10 )
	sw x23, 0 ( x10 )
	mv fp, x24
	lw x10, 0 ( fp )
	bltu x0, x10, .LBB0_6
	jal x0, .LBB0_8
.LBB0_59:                               //  %if.then435
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x10, 0 ( x10 )
	sh x23, 0 ( x10 )
	mv fp, x24
	lw x10, 0 ( fp )
	bltu x0, x10, .LBB0_6
	jal x0, .LBB0_8
.LBB0_60:                               //  %if.then441
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x10, 0 ( x10 )
	sb x23, 0 ( x10 )
	mv fp, x24
	lw x10, 0 ( fp )
	bltu x0, x10, .LBB0_6
	jal x0, .LBB0_8
.LBB0_61:                               //  %sw.bb187
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 8
	sw fp, 104 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB0_63
.LBB0_62:                               //  %if.else194
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	add x11, x10, 8
	lw x19, 0 ( x10 )
	sw x11, 652 ( sp )
	lw fp, 4 ( x10 )
	jal x0, .LBB0_64
.LBB0_63:                               //  %if.then190
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13, 652 ( sp )
	add x10, x13, 4
	sw x10, 652 ( sp )
	add x11, x13, 8
	lw x10, 0 ( x13 )
	sw x11, 652 ( sp )
	add x12, x13, 12
	lw x11, 4 ( x13 )
	sw x12, 652 ( sp )
	add x14, x13, 16
	lw x12, 8 ( x13 )
	sw x14, 652 ( sp )
	lw x13, 12 ( x13 )
	jal __trunctfdf2
	mv x19, x10
	mv fp, x11
.LBB0_64:                               //  %if.end197
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	mv x26, x0
	and x11, x10, fp
	lui x13, (2146435072>>12)&1048575
	mv x10, x19
	mv x12, x26
	jal __nedf2
	sw x19, 56 ( sp )               //  4-byte Folded Spill
	sw fp, 68 ( sp )                //  4-byte Folded Spill
	bltu x0, x10, .LBB0_69
.LBB0_65:                               //  %if.then200
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x23, x0
	mv x13, x23
	mv x10, x19
	mv x11, fp
	mv x12, x23
	jal __ltdf2
	bge x10, x0, .LBB0_67
.LBB0_66:                               //  %if.then204
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 45
	sw x10, 648 ( sp )
.LBB0_67:                               //  %if.end205
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 72
	add x15, sp, 588
	bltu x27, x10, .LBB0_73
.LBB0_68:                               //  %if.end205
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.1 )
	add x10, x10, %lo( .str.1 )
	jal x0, .LBB0_74
.LBB0_69:                               //  %if.end212
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x19
	mv x13, fp
	mv x11, fp
	mv x12, x19
	jal __unorddf2
	bltu x0, x10, .LBB0_92
.LBB0_70:                               //  %if.end233
                                        //    in Loop: Header=BB0_8 Depth=2
	or x18, x27, 32
	xor x10, x18, 97
	bltu x0, x10, .LBB0_122
.LBB0_71:                               //  %if.then239
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 97
	beq x27, x10, .LBB0_150
.LBB0_72:                               //  %if.then239
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 88
	jal x0, .LBB0_151
.LBB0_73:                               //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
.LBB0_74:                               //  %if.end205
                                        //    in Loop: Header=BB0_8 Depth=2
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	sw x10, 72 ( sp )               //  4-byte Folded Spill
	mv x26, x23
	add x22, x0, 3
	and fp, fp, -129
	sw x23, 80 ( sp )               //  4-byte Folded Spill
	sw x23, 64 ( sp )               //  4-byte Folded Spill
	sw x23, 60 ( sp )               //  4-byte Folded Spill
	mv x10, x26
	bge x22, x26, .LBB0_255
	jal x0, .LBB0_256
.LBB0_75:                               //  %sw.bb124
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x10, 0 ( x10 )
	and x11, fp, 16
	bltu x0, x11, .LBB0_113
.LBB0_76:                               //  %sw.bb124
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x11, x27, 99
	bltu x0, x11, .LBB0_113
.LBB0_77:                               //  %if.then131
                                        //    in Loop: Header=BB0_8 Depth=2
	jal btowc
	xor x11, x10, -1
	add x15, sp, 588
	bltu x0, x11, .LBB0_114
	jal x0, .LBB0_498
.LBB0_78:                               //  %sw.bb492
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x26, 0 ( x10 )
	sw x0, 648 ( sp )
	beq x0, x26, .LBB0_125
.LBB0_79:                               //  %if.else503
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 16
	bltu x0, x10, .LBB0_128
.LBB0_80:                               //  %if.else503
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x10, x27, 83
	beq x0, x10, .LBB0_128
.LBB0_81:                               //  %if.then509
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 92 ( sp )               //  4-byte Folded Reload
	sw fp, 104 ( sp )               //  4-byte Folded Spill
	blt x12, x0, .LBB0_236
.LBB0_82:                               //  %if.then512
                                        //    in Loop: Header=BB0_8 Depth=2
	mv fp, x0
	mv x10, x26
	mv x11, fp
	jal memchr
	beq x10, fp, .LBB0_84
.LBB0_83:                               //  %if.then512
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x10, x10, x26
	sw x10, 92 ( sp )               //  4-byte Folded Spill
.LBB0_84:                               //  %if.then512
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 92 ( sp )               //  4-byte Folded Reload
	mv x19, x9
	sltiu x10, x11, 100
	sll fp, x11, 2&31
	bltu x0, x10, .LBB0_237
.LBB0_85:                               //  %if.then527
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x9, x11
	add x11, fp, 4
	mv x10, x18
	jal _malloc_r
	bltu x0, x10, .LBB0_86
.LBB0_505:                              //  %if.then527
	jal x0, .LBB0_499
.LBB0_86:                               //    in Loop: Header=BB0_8 Depth=2
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	add x15, sp, 588
	jal x0, .LBB0_238
.LBB0_87:                               //  %sw.bb147
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 32
	bltu x0, x10, .LBB0_115
.LBB0_88:                               //  %cond.false152
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 16
	add x15, sp, 588
	bltu x0, x10, .LBB0_133
.LBB0_89:                               //  %cond.false157
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	and x10, fp, 64
	bltu x0, x10, .LBB0_208
.LBB0_90:                               //  %cond.false164
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x18, 0 ( x10 )
	and x10, fp, 512
	beq x0, x10, .LBB0_134
.LBB0_91:                               //  %cond.true167
                                        //    in Loop: Header=BB0_8 Depth=2
	sll x10, x18, 24&31
	sra x18, x10, 24&31
	sra x22, x18, 31&31
	bge x22, x0, .LBB0_116
	jal x0, .LBB0_135
.LBB0_92:                               //  %cond.true220
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15, sp, 588
	blt fp, x0, .LBB0_155
.LBB0_93:                               //  %if.end226
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 72
	bltu x27, x10, .LBB0_156
.LBB0_94:                               //  %if.end226
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.3 )
	add x10, x10, %lo( .str.3 )
	jal x0, .LBB0_157
.LBB0_95:                               //  %hex.loopexit
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.6 )
	add x10, x10, %lo( .str.6 )
	jal x0, .LBB0_108
.LBB0_96:                               //  %sw.bb450
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 32
	bltu x0, x10, .LBB0_145
.LBB0_97:                               //  %cond.false455
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 16
	add x15, sp, 588
	bltu x0, x10, .LBB0_209
.LBB0_98:                               //  %cond.false460
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 64
	beq x0, x10, .LBB0_99
.LBB0_506:                              //  %cond.false460
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_461
.LBB0_99:                               //  %cond.false467
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x18, 0 ( x10 )
	and x11, fp, 512
	mv x10, x0
	bne x11, x10, .LBB0_100
.LBB0_507:                              //  %cond.false467
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_462
.LBB0_100:                              //  %cond.false467
                                        //    in Loop: Header=BB0_8 Depth=2
	and x18, x18, 255
	jal x0, .LBB0_462
.LBB0_101:                              //  %sw.bb486
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x27, x0, 120
	mv x22, x0
	or fp, fp, 2
	add x11, x10, 4
	sw x11, 652 ( sp )
	lui x11, %hi( .str.4 )
	lw x18, 0 ( x10 )
	add x10, x0, 48
	add x11, x11, %lo( .str.4 )
	sw x10, 116 ( sp )
	sw x27, 120 ( sp )
	add x10, x0, 2
	sw x11, 48 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_147
.LBB0_102:                              //  %sw.bb578
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 32
	bltu x0, x10, .LBB0_146
.LBB0_103:                              //  %cond.false583
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 16
	add x15, sp, 588
	bltu x0, x10, .LBB0_210
.LBB0_104:                              //  %cond.false588
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 64
	beq x0, x10, .LBB0_105
.LBB0_508:                              //  %cond.false588
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_464
.LBB0_105:                              //  %cond.false595
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x18, 0 ( x10 )
	and x11, fp, 512
	mv x10, x0
	bne x11, x10, .LBB0_106
.LBB0_509:                              //  %cond.false595
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_465
.LBB0_106:                              //  %cond.false595
                                        //    in Loop: Header=BB0_8 Depth=2
	and x18, x18, 255
	jal x0, .LBB0_465
.LBB0_107:                              //  %hex.loopexit1
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.4 )
	add x10, x10, %lo( .str.4 )
.LBB0_108:                              //  %hex
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	sw x10, 48 ( sp )               //  4-byte Folded Spill
	and x10, fp, 32
	add x15, sp, 588
	bltu x0, x10, .LBB0_117
.LBB0_109:                              //  %cond.false619
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 16
	bltu x0, x10, .LBB0_148
.LBB0_110:                              //  %cond.false624
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 64
	bltu x0, x10, .LBB0_211
.LBB0_111:                              //  %cond.false631
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x18, 0 ( x10 )
	and x11, fp, 512
	mv x10, x0
	beq x11, x10, .LBB0_149
.LBB0_112:                              //  %cond.false631
                                        //    in Loop: Header=BB0_8 Depth=2
	and x18, x18, 255
	mv x22, x0
	and x10, fp, 1
	bltu x0, x10, .LBB0_118
	jal x0, .LBB0_212
.LBB0_113:                              //    in Loop: Header=BB0_8 Depth=2
	add x15, sp, 588
.LBB0_114:                              //  %if.end145
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x23, x0
	sw x10, 124 ( sp )
	sw x23, 64 ( sp )               //  4-byte Folded Spill
	mv x26, x23
	sw x0, 128 ( sp )
	sw x0, 648 ( sp )
	sw x23, 80 ( sp )               //  4-byte Folded Spill
	seqz x22, x0
	sw x23, 60 ( sp )               //  4-byte Folded Spill
	add x10, sp, 124
	sw x10, 72 ( sp )               //  4-byte Folded Spill
	mv x10, x26
	bge x22, x26, .LBB0_255
	jal x0, .LBB0_256
.LBB0_115:                              //  %cond.true150
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	add x15, sp, 588
	add x11, x10, 4
	sw x11, 652 ( sp )
	add x11, x10, 8
	lw x18, 0 ( x10 )
	sw x11, 652 ( sp )
	lw x22, 4 ( x10 )
	blt x22, x0, .LBB0_135
.LBB0_116:                              //    in Loop: Header=BB0_8 Depth=2
	seqz x10, x0
	add x11, x0, -1
	blt x11, x26, .LBB0_213
	jal x0, .LBB0_214
.LBB0_117:                              //  %cond.true617
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	add x11, x10, 8
	lw x18, 0 ( x10 )
	sw x11, 652 ( sp )
	lw x22, 4 ( x10 )
	and x10, fp, 1
	beq x0, x10, .LBB0_212
.LBB0_118:                              //  %cond.end647
                                        //    in Loop: Header=BB0_8 Depth=2
	or x10, x22, x18
	beq x0, x10, .LBB0_212
.LBB0_119:                              //  %if.then654
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 48
	or fp, fp, 2
	sw x27, 120 ( sp )
	sw x10, 116 ( sp )
	jal x0, .LBB0_212
.LBB0_120:                              //  %sw.default757
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15, sp, 588
	bltu x0, x27, .LBB0_121
.LBB0_510:                              //  %sw.default757
	jal x0, .LBB0_492
.LBB0_121:                              //  %if.end761
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x19, x22
	mv x23, x22
	mv x26, x22
	sw x22, 80 ( sp )               //  4-byte Folded Spill
	seqz x22, x0
	sw x27, 124 ( sp )
	sw x0, 648 ( sp )
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	sw x19, 60 ( sp )               //  4-byte Folded Spill
	add x10, sp, 124
	sw x10, 72 ( sp )               //  4-byte Folded Spill
	mv x10, x26
	bge x22, x26, .LBB0_255
	jal x0, .LBB0_256
.LBB0_122:                              //  %if.else261
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 92 ( sp )               //  4-byte Folded Reload
	add x10, sp, 124
	xor x11, x11, -1
	beq x0, x11, .LBB0_174
.LBB0_123:                              //  %if.else265
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11, x0, 103
	beq x18, x11, .LBB0_175
.LBB0_124:                              //  %if.else265
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 92 ( sp )               //  4-byte Folded Reload
	mv x22, x12
	mv x11, x0
	mv x26, x11
	bne x12, x11, .LBB0_176
	jal x0, .LBB0_177
.LBB0_125:                              //  %if.then496
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x22, 92 ( sp )               //  4-byte Folded Reload
	add x10, x0, 6
	add x15, sp, 588
	bltu x22, x10, .LBB0_127
.LBB0_126:                              //  %if.then496
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x22, x10
.LBB0_127:                              //  %if.then496
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.5 )
	mv x23, x0
	add x10, x10, %lo( .str.5 )
	sw x10, 72 ( sp )               //  4-byte Folded Spill
	sw x23, 64 ( sp )               //  4-byte Folded Spill
	mv x26, x23
	sw x23, 80 ( sp )               //  4-byte Folded Spill
	sw x23, 60 ( sp )               //  4-byte Folded Spill
	mv x10, x26
	bge x22, x26, .LBB0_255
	jal x0, .LBB0_256
.LBB0_128:                              //  %if.else554
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x22, 92 ( sp )               //  4-byte Folded Reload
	blt x22, x0, .LBB0_241
.LBB0_129:                              //  %if.then557
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x19, x0
	mv x10, x26
	mv x11, x19
	mv x12, x22
	jal wmemchr
	bltu x0, x10, .LBB0_130
.LBB0_511:                              //  %if.then557
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_447
.LBB0_130:                              //  %if.then562
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x10, x10, x26
	sra x10, x10, 2&31
	add x15, sp, 588
	blt x22, x10, .LBB0_132
.LBB0_131:                              //  %if.then562
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x22, x10
.LBB0_132:                              //  %if.then562
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x23, x0
	mv x10, x23
	sw x23, 64 ( sp )               //  4-byte Folded Spill
	sw x23, 80 ( sp )               //  4-byte Folded Spill
	sw x23, 60 ( sp )               //  4-byte Folded Spill
	sw x26, 72 ( sp )               //  4-byte Folded Spill
	mv x26, x10
	mv x10, x26
	bge x22, x26, .LBB0_255
	jal x0, .LBB0_256
.LBB0_133:                              //  %cond.true155
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x18, 0 ( x10 )
.LBB0_134:                              //  %cond.end177
                                        //    in Loop: Header=BB0_8 Depth=2
	sra x22, x18, 31&31
	bge x22, x0, .LBB0_116
.LBB0_135:                              //  %if.then671.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, -1
	bge x10, x26, .LBB0_137
.LBB0_136:                              //    in Loop: Header=BB0_8 Depth=2
	and fp, fp, -129
.LBB0_137:                              //  %if.then671.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 45
	sw x10, 648 ( sp )
	snez x10, x18
	add x10, x10, x22
	sw fp, 104 ( sp )               //  4-byte Folded Spill
	sub x18, x0, x18
	sub x22, x0, x10
	add x10, x0, 9
	mv fp, x0
	bne x22, fp, .LBB0_233
.LBB0_138:                              //    in Loop: Header=BB0_8 Depth=2
	sltu x10, x10, x18
	beq x0, x10, .LBB0_234
.LBB0_139:                              //  %if.end697
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	sw x0, 600 ( sp )
	and x10, x10, 1024
	bltu x0, x10, .LBB0_159
.LBB0_140:                              //  %do.body698.us.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x19, 52 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_143
.LBB0_141:                              //  %do.body698.us
                                        //    in Loop: Header=BB0_143 Depth=3
	snez x11, x22
.LBB0_142:                              //  %do.body698.us
                                        //    in Loop: Header=BB0_143 Depth=3
	sub x10, x18, x10
	mv x19, x9
	or x10, x10, 48
	sw x10, -4 ( x19 )
	lw x10, 600 ( sp )
	add x19, x19, -4
	mv x18, x23
	mv x22, x26
	add x10, x10, 1
	sw x10, 600 ( sp )
	beq x0, x11, .LBB0_173
.LBB0_143:                              //  %do.body698.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	mv x9, x19
	add x19, x0, 10
	mv x10, x18
	mv x11, x22
	mv x12, x19
	mv x13, fp
	jal __udivdi3
	mv x12, x19
	mv x13, fp
	mv x23, x10
	mv x26, x11
	jal __muldi3
	bne x22, fp, .LBB0_141
.LBB0_144:                              //    in Loop: Header=BB0_143 Depth=3
	add x11, x0, 9
	sltu x11, x11, x18
	jal x0, .LBB0_142
.LBB0_145:                              //  %cond.true453
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	add x15, sp, 588
	add x11, x10, 4
	sw x11, 652 ( sp )
	add x11, x10, 8
	lw x18, 0 ( x10 )
	sw x11, 652 ( sp )
	lw x22, 4 ( x10 )
	jal x0, .LBB0_463
.LBB0_146:                              //  %cond.true581
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 652 ( sp )
	add x27, x0, 117
	add x10, x11, 4
	sw x10, 652 ( sp )
	add x10, x11, 8
	lw x18, 0 ( x11 )
	sw x10, 652 ( sp )
	lw x22, 4 ( x11 )
	seqz x10, x0
.LBB0_147:                              //  %nosign
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	add x15, sp, 588
	sw x0, 648 ( sp )
	add x11, x0, -1
	blt x11, x26, .LBB0_213
	jal x0, .LBB0_214
.LBB0_148:                              //  %cond.true622
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x18, 0 ( x10 )
.LBB0_149:                              //  %cond.end644
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x22, x0
	and x10, fp, 1
	bltu x0, x10, .LBB0_118
	jal x0, .LBB0_212
.LBB0_150:                              //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 120
.LBB0_151:                              //  %if.then239
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x10, 120 ( sp )
	add x10, x0, 48
	sw x10, 116 ( sp )
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	lw x22, 92 ( sp )               //  4-byte Folded Reload
	or x10, x10, 2
	sw x10, 104 ( sp )              //  4-byte Folded Spill
	slti x10, x22, 100
	bltu x0, x10, .LBB0_154
.LBB0_152:                              //  %if.then248
                                        //    in Loop: Header=BB0_8 Depth=2
	sll x10, x22, 2&31
	add x11, x10, 4
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	jal _malloc_r
	mv x26, x10
	bltu x0, x26, .LBB0_153
.LBB0_512:                              //  %if.then248
	jal x0, .LBB0_500
.LBB0_153:                              //    in Loop: Header=BB0_8 Depth=2
	mv x10, x26
	jal x0, .LBB0_177
.LBB0_154:                              //    in Loop: Header=BB0_8 Depth=2
	mv x26, x0
	add x10, sp, 124
	jal x0, .LBB0_177
.LBB0_155:                              //  %if.then225
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 45
	sw x10, 648 ( sp )
	add x10, x0, 72
	bgeu x27, x10, .LBB0_94
.LBB0_156:                              //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.2 )
	add x10, x10, %lo( .str.2 )
.LBB0_157:                              //  %if.end226
                                        //    in Loop: Header=BB0_8 Depth=2
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	mv x23, x0
	add x22, x0, 3
	mv x26, x23
	and fp, fp, -129
	sw x10, 72 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_158
.LBB0_159:                              //    in Loop: Header=BB0_8 Depth=2
	lw x19, 52 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_161
.LBB0_160:                              //  %if.end725
                                        //    in Loop: Header=BB0_161 Depth=3
	snez x10, x22
	mv x18, x23
	mv x22, x26
	sw x13, 96 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB0_173
.LBB0_161:                              //  %do.body698
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	mv x9, x19
	add x19, x0, 10
	mv fp, x0
	mv x10, x18
	mv x11, x22
	mv x12, x19
	mv x13, fp
	jal __udivdi3
	mv x12, x19
	mv x13, fp
	mv x23, x10
	mv x26, x11
	mv x19, x9
	jal __muldi3
	lw x11, 600 ( sp )
	lw x13, 96 ( sp )               //  4-byte Folded Reload
	sub x10, x18, x10
	or x10, x10, 48
	add x12, x11, 1
	sw x10, -4 ( x19 )
	sw x12, 600 ( sp )
	lb x11, 0 ( x13 )
	add x10, x19, -4
	bne x12, x11, .LBB0_165
.LBB0_162:                              //  %land.lhs.true709
                                        //    in Loop: Header=BB0_161 Depth=3
	beq x22, fp, .LBB0_166
.LBB0_163:                              //  %land.lhs.true709
                                        //    in Loop: Header=BB0_161 Depth=3
	mv x12, fp
	bltu x0, x12, .LBB0_165
.LBB0_167:                              //  %land.lhs.true709
                                        //    in Loop: Header=BB0_161 Depth=3
	and x11, x11, 255
	xor x11, x11, 127
	beq x0, x11, .LBB0_165
.LBB0_168:                              //  %if.then716
                                        //    in Loop: Header=BB0_161 Depth=3
	lw x10, 644 ( sp )
	sw x0, 600 ( sp )
	mv x11, x0
	sw x10, -8 ( x19 )
	lbu x10, 1 ( x13 )
	beq x10, x11, .LBB0_170
.LBB0_169:                              //  %if.then716
                                        //    in Loop: Header=BB0_161 Depth=3
	add x13, x13, 1
.LBB0_170:                              //  %if.then716
                                        //    in Loop: Header=BB0_161 Depth=3
	add x19, x19, -8
	bne x22, fp, .LBB0_160
	jal x0, .LBB0_172
.LBB0_166:                              //    in Loop: Header=BB0_161 Depth=3
	sltiu x12, x18, 10
	beq x0, x12, .LBB0_167
.LBB0_165:                              //    in Loop: Header=BB0_161 Depth=3
	mv x19, x10
	bne x22, fp, .LBB0_160
.LBB0_172:                              //    in Loop: Header=BB0_161 Depth=3
	add x10, x0, 9
	sltu x10, x10, x18
	mv x18, x23
	mv x22, x26
	sw x13, 96 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB0_161
.LBB0_173:                              //    in Loop: Header=BB0_8 Depth=2
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	lw x9, 76 ( sp )                //  4-byte Folded Reload
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	add x15, sp, 588
	jal x0, .LBB0_254
.LBB0_174:                              //    in Loop: Header=BB0_8 Depth=2
	add x22, x0, 6
	jal x0, .LBB0_177
.LBB0_175:                              //    in Loop: Header=BB0_8 Depth=2
	lw x12, 92 ( sp )               //  4-byte Folded Reload
	seqz x22, x0
	mv x11, x0
	mv x26, x11
	beq x12, x11, .LBB0_177
.LBB0_176:                              //  %if.else265
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x22, x12
.LBB0_177:                              //  %if.end277
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x10, 4 ( sp )
	add x10, x0, 100
	sw x10, 8 ( sp )
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	lw x12, 68 ( sp )               //  4-byte Folded Reload
	add fp, sp, 600
	add x15, sp, 636
	or x14, x10, 256
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	add x16, sp, 632
	mv x11, x19
	mv x13, x22
	mv x17, x27
	sw fp, 0 ( sp )
	sw x14, 92 ( sp )               //  4-byte Folded Spill
	jal wcvt
	sw x26, 80 ( sp )               //  4-byte Folded Spill
	sw x10, 72 ( sp )               //  4-byte Folded Spill
	bltu x0, x26, .LBB0_182
.LBB0_178:                              //  %if.end277
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11, sp, 124
	add x15, sp, 588
	bne x10, x11, .LBB0_183
.LBB0_179:                              //  %if.end277
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 600 ( sp )
	slti x11, x10, 101
	bltu x0, x11, .LBB0_183
.LBB0_180:                              //  %if.then290
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x26, x19
	lw x19, 100 ( sp )              //  4-byte Folded Reload
	sll x11, x10, 2&31
	mv x10, x19
	jal _malloc_r
	bltu x0, x10, .LBB0_181
.LBB0_513:                              //  %if.then290
	jal x0, .LBB0_500
.LBB0_181:                              //  %if.end300
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 600 ( sp )
	lw x12, 68 ( sp )               //  4-byte Folded Reload
	lw x14, 92 ( sp )               //  4-byte Folded Reload
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	sw x10, 4 ( sp )
	mv x10, x19
	mv x19, x26
	sw x11, 8 ( sp )
	add x15, sp, 636
	add x16, sp, 632
	mv x11, x19
	mv x13, x22
	mv x17, x27
	sw fp, 0 ( sp )
	jal wcvt
	sw x10, 72 ( sp )               //  4-byte Folded Spill
.LBB0_182:                              //  %if.end303
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15, sp, 588
.LBB0_183:                              //  %if.end303
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x10, x18, 103
	bltu x0, x10, .LBB0_189
.LBB0_184:                              //  %if.then309
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x16, 632 ( sp )
	lw x12, 104 ( sp )              //  4-byte Folded Reload
	slti x10, x16, -3
	bltu x0, x10, .LBB0_186
.LBB0_185:                              //  %if.then309
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x22, x16, .LBB0_246
.LBB0_186:                              //  %if.then309.if.then327_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	add x27, x27, -2
	or x18, x27, 32
	add x10, x0, 97
	beq x18, x10, .LBB0_193
.LBB0_187:                              //  %if.then327
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x27
	seqz x17, x0
	add x11, x16, -1
	bge x16, x17, .LBB0_194
.LBB0_188:                              //    in Loop: Header=BB0_8 Depth=2
	add x12, x0, 45
	sub fp, x17, x16
	jal x0, .LBB0_195
.LBB0_189:                              //  %if.else319
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 104 ( sp )              //  4-byte Folded Reload
	xor x10, x27, 70
	bltu x0, x10, .LBB0_191
.LBB0_190:                              //  %if.else340.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x16, 632 ( sp )
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	and x10, x12, 1
	or x10, x22, x10
	blt x0, x16, .LBB0_244
.LBB0_250:                              //  %if.end385.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x11, x0
	bne x10, x11, .LBB0_251
.LBB0_514:                              //  %if.end385.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_469
.LBB0_251:                              //  %if.end385.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	add x22, x22, 2
	jal x0, .LBB0_470
.LBB0_191:                              //  %if.end324
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 101
	bltu x10, x27, .LBB0_242
.LBB0_192:                              //  %if.end324.if.then327_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x16, 632 ( sp )
	add x10, x0, 97
	bne x18, x10, .LBB0_187
.LBB0_193:                              //    in Loop: Header=BB0_8 Depth=2
	add x10, x27, 15
	seqz x17, x0
	add x11, x16, -1
	blt x16, x17, .LBB0_188
.LBB0_194:                              //  %if.then327
                                        //    in Loop: Header=BB0_8 Depth=2
	add x12, x0, 43
	mv fp, x11
.LBB0_195:                              //  %if.then327
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x10, 604 ( sp )
	slti x10, fp, 10
	sw x11, 632 ( sp )
	sw x12, 608 ( sp )
	bltu x0, x10, .LBB0_203
.LBB0_196:                              //  %do.body.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9, 32 ( sp )                //  4-byte Folded Reload
	mv x12, x0
	add x13, sp, 684
	mv x23, x17
.LBB0_197:                              //  %do.body.i
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	mv x18, fp
	add x22, x0, 10
	mv x10, x18
	mv x11, x22
	mv x19, x12
	mv x26, x13
	jal __divsi3
	mv x11, x22
	mv fp, x10
	jal __mulsi3
	sub x10, x18, x10
	add x11, x10, 48
	sw x11, 0 ( x9 )
	add x13, x26, -4
	add x12, x19, 1
	add x9, x9, -4
	add x23, x23, -1
	add x10, x0, 99
	blt x10, x18, .LBB0_197
.LBB0_198:                              //  %do.end.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x12, fp, 48
	sw x12, 0 ( x9 )
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 76 ( sp )                //  4-byte Folded Reload
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	lw x14, 92 ( sp )               //  4-byte Folded Reload
	add x13, x23, -2
	add x15, sp, 588
	seqz x17, x0
	bge x13, x0, .LBB0_206
.LBB0_199:                              //  %for.inc.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	sw x12, 612 ( sp )
	xor x12, x23, 1
	beq x0, x12, .LBB0_206
.LBB0_200:                              //  %for.inc.for.inc_crit_edge.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, sp, 620
	sw x11, 616 ( sp )
	beq x0, x23, .LBB0_206
.LBB0_201:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, sp, 620
.LBB0_202:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x11, 0 ( x26 )
	add x26, x26, 4
	add x19, x19, -1
	sw x11, 0 ( x10 )
	add x10, x10, 4
	bltu x0, x19, .LBB0_202
	jal x0, .LBB0_206
.LBB0_203:                              //  %if.else17.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	lw x14, 92 ( sp )               //  4-byte Folded Reload
	xor x11, x18, 97
	beq x0, x11, .LBB0_205
.LBB0_204:                              //  %if.then19.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 48
	sw x10, 612 ( sp )
	lw x10, 28 ( sp )               //  4-byte Folded Reload
.LBB0_205:                              //  %if.end21.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	add x11, fp, 48
	sw x11, 0 ( x10 )
	add x10, x10, 4
.LBB0_206:                              //  %wexponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13, 104 ( sp )              //  4-byte Folded Reload
	lw x11, 600 ( sp )
	mv x23, x0
	and x14, x14, -1025
	and x13, x13, 1
	slt x12, x17, x11
	or x12, x12, x13
	add x13, sp, 604
	sub x10, x10, x13
	sra x10, x10, 2&31
	sw x10, 44 ( sp )               //  4-byte Folded Spill
	add x10, x11, x10
	add x22, x12, x10
	sw x23, 64 ( sp )               //  4-byte Folded Spill
	sw x23, 60 ( sp )               //  4-byte Folded Spill
	lw x10, 636 ( sp )
	mv x26, x0
	bltu x0, x10, .LBB0_472
.LBB0_515:                              //  %wexponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_207
.LBB0_472:                              //  %if.then419
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 45
	sw x10, 648 ( sp )
	mv fp, x14
	mv x10, x26
	bge x22, x26, .LBB0_255
	jal x0, .LBB0_256
.LBB0_208:                              //  %cond.true160
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x10, 0 ( x10 )
	sll x10, x10, 16&31
	sra x18, x10, 16&31
	sra x22, x18, 31&31
	bge x22, x0, .LBB0_116
	jal x0, .LBB0_135
.LBB0_209:                              //  %cond.true458
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x18, 0 ( x10 )
	jal x0, .LBB0_462
.LBB0_210:                              //  %cond.true586
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x18, 0 ( x10 )
	jal x0, .LBB0_465
.LBB0_211:                              //  %cond.true627
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lhu x18, 0 ( x10 )
	mv x22, x0
	and x10, fp, 1
	bltu x0, x10, .LBB0_118
.LBB0_212:                              //  %if.end658
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 2
	and fp, fp, -1025
	sw x0, 648 ( sp )
	add x11, x0, -1
	bge x11, x26, .LBB0_214
.LBB0_213:                              //    in Loop: Header=BB0_8 Depth=2
	and fp, fp, -129
.LBB0_214:                              //  %number
                                        //    in Loop: Header=BB0_8 Depth=2
	bltu x0, x26, .LBB0_220
.LBB0_215:                              //  %number
                                        //    in Loop: Header=BB0_8 Depth=2
	or x11, x22, x18
	bltu x0, x11, .LBB0_220
.LBB0_216:                              //  %if.else740
                                        //    in Loop: Header=BB0_8 Depth=2
	bltu x0, x10, .LBB0_225
.LBB0_217:                              //  %if.else740
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	and x10, fp, 1
	beq x0, x10, .LBB0_226
.LBB0_218:                              //  %if.then747
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 48
	sw x10, 520 ( sp )
	add x10, sp, 520
	jal x0, .LBB0_253
.LBB0_220:                              //  %if.then671
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x0, x10, .LBB0_227
.LBB0_221:                              //  %if.then671
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x11, x10, 1
	beq x0, x11, .LBB0_232
.LBB0_222:                              //  %if.then671
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x19, 52 ( sp )               //  4-byte Folded Reload
	lw x12, 48 ( sp )               //  4-byte Folded Reload
	xor x10, x10, 2
	bltu x0, x10, .LBB0_235
.LBB0_223:                              //  %do.body731
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	and x10, x18, 15
	sll x10, x10, 2&31
	add x10, x10, x12
	lw x10, 0 ( x10 )
	sll x11, x22, 28&31
	srl x22, x22, 4&31
	sw x10, -4 ( x19 )
	srl x10, x18, 4&31
	or x18, x11, x10
	add x19, x19, -4
	or x10, x22, x18
	bltu x0, x10, .LBB0_223
.LBB0_224:                              //    in Loop: Header=BB0_8 Depth=2
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	jal x0, .LBB0_254
.LBB0_225:                              //    in Loop: Header=BB0_8 Depth=2
	lw x19, 52 ( sp )               //  4-byte Folded Reload
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	jal x0, .LBB0_254
.LBB0_226:                              //    in Loop: Header=BB0_8 Depth=2
	lw x19, 52 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_254
.LBB0_227:                              //  %do.body674.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, sp, 520
	mv x19, x10
.LBB0_228:                              //  %do.body674
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sll x11, x22, 29&31
	srl x10, x18, 3&31
	or x10, x11, x10
	and x11, x18, 7
	or x11, x11, 48
	srl x22, x22, 3&31
	sw x11, 0 ( x19 )
	add x19, x19, -4
	or x12, x22, x10
	mv x18, x10
	bltu x0, x12, .LBB0_228
.LBB0_229:                              //  %do.end681
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x19, 4
	and x12, fp, 1
	beq x0, x12, .LBB0_252
.LBB0_230:                              //  %do.end681
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	xor x11, x11, 48
	beq x0, x11, .LBB0_253
.LBB0_231:                              //  %if.then687
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 48
	sw x10, 0 ( x19 )
	jal x0, .LBB0_254
.LBB0_232:                              //    in Loop: Header=BB0_8 Depth=2
	sw fp, 104 ( sp )               //  4-byte Folded Spill
	add x10, x0, 9
	mv fp, x0
	beq x22, fp, .LBB0_138
.LBB0_233:                              //  %sw.bb690
                                        //    in Loop: Header=BB0_8 Depth=2
	snez x10, x22
	bltu x0, x10, .LBB0_139
.LBB0_234:                              //  %if.then693
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x18, 48
	sw x10, 520 ( sp )
	add x10, sp, 520
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_253
.LBB0_235:                              //  %sw.default
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.7 )
	add x10, x10, %lo( .str.7 )
	sw x10, 72 ( sp )               //  4-byte Folded Spill
	jal wcslen
	mv x23, x0
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	add x15, sp, 588
	mv x22, x10
.LBB0_158:                              //  %if.end226
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x23, 64 ( sp )               //  4-byte Folded Spill
	sw x23, 80 ( sp )               //  4-byte Folded Spill
	sw x23, 60 ( sp )               //  4-byte Folded Spill
	mv x10, x26
	bge x22, x26, .LBB0_255
	jal x0, .LBB0_256
.LBB0_236:                              //  %if.else522
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x26
	jal strlen
	mv x11, x10
	mv x19, x9
	sltiu x10, x11, 100
	sll fp, x11, 2&31
	beq x0, x10, .LBB0_85
.LBB0_237:                              //  %if.end541
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x0
	sw x10, 80 ( sp )               //  4-byte Folded Spill
	add x10, sp, 124
	add x15, sp, 588
	mv x9, x11
	beq x0, x11, .LBB0_240
.LBB0_238:                              //  %for.body.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x13, x10
	mv x11, x9
.LBB0_239:                              //  %for.body
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lb x12, 0 ( x26 )
	add x26, x26, 1
	add x11, x11, -1
	sw x12, 0 ( x13 )
	add x13, x13, 4
	bltu x0, x11, .LBB0_239
.LBB0_240:                              //  %cleanup550.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x10, 72 ( sp )               //  4-byte Folded Spill
	add x10, fp, x10
	mv x23, x22
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	sw x22, 60 ( sp )               //  4-byte Folded Spill
	sw x22, 64 ( sp )               //  4-byte Folded Spill
	mv x22, x9
	sw x0, 0 ( x10 )
	mv x26, x23
	mv x9, x19
	mv x10, x26
	bge x22, x26, .LBB0_255
	jal x0, .LBB0_256
.LBB0_241:                              //  %if.else573
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x26
	jal wcslen
	mv x23, x0
	mv x22, x10
	sw x23, 64 ( sp )               //  4-byte Folded Spill
	mv x10, x23
	sw x23, 80 ( sp )               //  4-byte Folded Spill
	sw x23, 60 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_448
.LBB0_242:                              //  %if.else340
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x16, 632 ( sp )
	xor x10, x27, 102
	bltu x0, x10, .LBB0_246
.LBB0_243:                              //  %if.then343
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	and x10, x12, 1
	or x10, x22, x10
	bge x0, x16, .LBB0_250
.LBB0_244:                              //  %if.then346
                                        //    in Loop: Header=BB0_8 Depth=2
	add x27, x0, 102
	bltu x0, x10, .LBB0_245
.LBB0_516:                              //  %if.then346
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_459
.LBB0_245:                              //  %if.then351
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x16, x22
	add x22, x10, 1
	mv x11, x0
	and x10, x12, 1024
	beq x0, x10, .LBB0_517
.LBB0_518:                              //  %if.then351
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_451
.LBB0_517:                              //  %if.then351
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_460
.LBB0_246:                              //  %if.else366
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 600 ( sp )
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	bge x16, x10, .LBB0_249
.LBB0_247:                              //  %if.else375
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x11, x0
	bge x11, x16, .LBB0_248
.LBB0_519:                              //  %if.else375
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_449
.LBB0_248:                              //  %if.else375
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11, x0, 2
	sub x11, x11, x16
	jal x0, .LBB0_450
.LBB0_249:                              //  %if.then369
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x12, 1
	add x22, x10, x16
	add x27, x0, 103
	mv x11, x0
	and x10, x12, 1024
	beq x0, x10, .LBB0_520
.LBB0_521:                              //  %if.then369
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_451
.LBB0_520:                              //  %if.then369
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_460
.LBB0_252:                              //    in Loop: Header=BB0_8 Depth=2
	lw x18, 100 ( sp )              //  4-byte Folded Reload
.LBB0_253:                              //  %if.end750
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x19, x10
.LBB0_254:                              //  %if.end750
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	mv x23, x0
	sw x19, 72 ( sp )               //  4-byte Folded Spill
	sw x23, 64 ( sp )               //  4-byte Folded Spill
	sub x10, x10, x19
	sra x22, x10, 2&31
	sw x23, 80 ( sp )               //  4-byte Folded Spill
	sw x23, 60 ( sp )               //  4-byte Folded Spill
	mv x10, x26
	blt x22, x26, .LBB0_256
.LBB0_255:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x22
.LBB0_256:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 648 ( sp )
	sw fp, 104 ( sp )               //  4-byte Folded Spill
	and fp, fp, 2
	snez x11, x11
	add x11, x11, x10
	srl x10, fp, 1&31
	beq x0, x10, .LBB0_257
.LBB0_264:                              //    in Loop: Header=BB0_8 Depth=2
	add x11, x11, 2
.LBB0_257:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x19, x26
	sw x11, 92 ( sp )               //  4-byte Folded Spill
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	and x26, x10, 132
	beq x0, x26, .LBB0_258
.LBB0_267:                              //  %if.end828
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 648 ( sp )
	beq x0, x10, .LBB0_273
.LBB0_268:                              //  %if.then830
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x15 )
	add x10, x10, 4
	sw x10, 8 ( x15 )
	add x10, x0, 4
	sw x10, 4 ( x20 )
	add x10, sp, 648
	sw x10, 0 ( x20 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_270
.LBB0_269:                              //  %if.then840
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x20, sp, 524
	beq x0, x10, .LBB0_273
	jal x0, .LBB0_486
.LBB0_258:                              //  %if.then782
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	sub x18, x25, x10
	bge x0, x18, .LBB0_272
.LBB0_259:                              //  %while.cond787.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 108 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x20 )
	slti x10, x18, 17
	beq x0, x10, .LBB0_262
	jal x0, .LBB0_265
.LBB0_260:                              //    in Loop: Header=BB0_262 Depth=3
	add x20, x20, 8
.LBB0_261:                              //  %if.end806
                                        //    in Loop: Header=BB0_262 Depth=3
	lw x10, 108 ( sp )              //  4-byte Folded Reload
	add x18, x18, -16
	sw x10, 0 ( x20 )
	add x10, x0, 16
	bge x10, x18, .LBB0_265
.LBB0_262:                              //  %while.body790
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x15 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	add x10, x0, 64
	sw x10, 4 ( x20 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_260
.LBB0_263:                              //  %if.then800
                                        //    in Loop: Header=BB0_262 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x20, sp, 524
	beq x0, x10, .LBB0_261
	jal x0, .LBB0_485
.LBB0_270:                              //    in Loop: Header=BB0_8 Depth=2
	add x20, x20, 8
	bltu x0, fp, .LBB0_274
	jal x0, .LBB0_276
.LBB0_265:                              //  %while.end808
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	sll x10, x18, 2&31
	sw x10, 4 ( x20 )
	add x11, x10, x11
	lw x10, 592 ( sp )
	sw x11, 8 ( x15 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_271
.LBB0_266:                              //  %if.then820
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	mv x11, x9
	mv x12, x15
	mv x10, x18
	jal __ssprint_r
	add x15, sp, 588
	add x20, sp, 524
	beq x0, x10, .LBB0_267
	jal x0, .LBB0_486
.LBB0_271:                              //    in Loop: Header=BB0_8 Depth=2
	add x20, x20, 8
.LBB0_272:                              //  %if.end828
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	lw x10, 648 ( sp )
	bltu x0, x10, .LBB0_268
.LBB0_273:                              //  %if.end847
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x0, fp, .LBB0_276
.LBB0_274:                              //  %if.then850
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x15 )
	add x10, x10, 8
	sw x10, 8 ( x15 )
	add x10, x0, 8
	sw x10, 4 ( x20 )
	add x10, sp, 116
	sw x10, 0 ( x20 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_296
.LBB0_275:                              //  %if.then861
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x20, sp, 524
	beq x0, x10, .LBB0_276
.LBB0_522:                              //  %if.then861
	jal x0, .LBB0_486
.LBB0_276:                              //  %if.end868
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x10, x26, 128
	bltu x0, x10, .LBB0_297
.LBB0_277:                              //  %if.then872
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	add x26, x0, 64
	sub fp, x25, x10
	bge x0, fp, .LBB0_285
.LBB0_278:                              //  %while.cond877.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x20 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_281
	jal x0, .LBB0_283
.LBB0_279:                              //    in Loop: Header=BB0_281 Depth=3
	add x20, x20, 8
.LBB0_280:                              //  %if.end896
                                        //    in Loop: Header=BB0_281 Depth=3
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x20 )
	add x10, x0, 16
	bge x10, fp, .LBB0_283
.LBB0_281:                              //  %while.body880
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x15 )
	sw x26, 4 ( x20 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_279
.LBB0_282:                              //  %if.then890
                                        //    in Loop: Header=BB0_281 Depth=3
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x20, sp, 524
	beq x0, x10, .LBB0_280
	jal x0, .LBB0_486
.LBB0_283:                              //  %while.end898
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	sll x10, fp, 2&31
	sw x10, 4 ( x20 )
	add x11, x10, x11
	lw x10, 592 ( sp )
	sw x11, 8 ( x15 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_311
.LBB0_284:                              //  %if.then910
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x20, sp, 524
	beq x0, x10, .LBB0_285
.LBB0_523:                              //  %if.then910
	jal x0, .LBB0_486
.LBB0_285:                              //  %if.end918
                                        //    in Loop: Header=BB0_8 Depth=2
	sub fp, x19, x22
	bge x0, fp, .LBB0_298
.LBB0_286:                              //  %while.cond923.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x20 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_289
	jal x0, .LBB0_291
.LBB0_287:                              //    in Loop: Header=BB0_289 Depth=3
	add x20, x20, 8
.LBB0_288:                              //  %if.end942
                                        //    in Loop: Header=BB0_289 Depth=3
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x20 )
	add x10, x0, 16
	bge x10, fp, .LBB0_291
.LBB0_289:                              //  %while.body926
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x15 )
	sw x26, 4 ( x20 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_287
.LBB0_290:                              //  %if.then936
                                        //    in Loop: Header=BB0_289 Depth=3
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x20, sp, 524
	beq x0, x10, .LBB0_288
	jal x0, .LBB0_486
.LBB0_291:                              //  %while.end944
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	sll x10, fp, 2&31
	sw x10, 4 ( x20 )
	add x11, x10, x11
	lw x10, 592 ( sp )
	sw x11, 8 ( x15 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_306
.LBB0_292:                              //  %if.then956
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	add x15, sp, 588
	add x20, sp, 524
	bltu x0, x10, .LBB0_486
.LBB0_293:                              //  %if.end963
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 256
	bltu x0, x10, .LBB0_299
.LBB0_294:                              //  %if.then967
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	sll x10, x22, 2&31
	sw x10, 4 ( x20 )
	add x11, x10, x11
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	sw x11, 8 ( x15 )
	sw x10, 0 ( x20 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_307
.LBB0_295:                              //  %if.then979
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	lw x23, 84 ( sp )               //  4-byte Folded Reload
	lw x27, 92 ( sp )               //  4-byte Folded Reload
	add x15, sp, 588
	add x20, sp, 524
	mv x22, x0
	add x19, x0, 90
	beq x0, x10, .LBB0_411
	jal x0, .LBB0_487
.LBB0_296:                              //    in Loop: Header=BB0_8 Depth=2
	add x20, x20, 8
	xor x10, x26, 128
	beq x0, x10, .LBB0_277
.LBB0_297:                              //    in Loop: Header=BB0_8 Depth=2
	add x26, x0, 64
	sub fp, x19, x22
	blt x0, fp, .LBB0_286
.LBB0_298:                              //    in Loop: Header=BB0_8 Depth=2
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	and x10, fp, 256
	beq x0, x10, .LBB0_294
.LBB0_299:                              //  %if.else986
                                        //    in Loop: Header=BB0_8 Depth=2
	sltiu x10, x27, 102
	bltu x0, x10, .LBB0_308
.LBB0_300:                              //  %if.then989
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	lw x11, 68 ( sp )               //  4-byte Folded Reload
	mv x22, x0
	mv x13, x22
	mv x12, x22
	jal __nedf2
	bltu x0, x10, .LBB0_317
.LBB0_301:                              //  %if.then993
                                        //    in Loop: Header=BB0_8 Depth=2
	add x12, sp, 588
	lw x10, 8 ( x12 )
	lw x27, 92 ( sp )               //  4-byte Folded Reload
	add x10, x10, 4
	sw x10, 8 ( x12 )
	add x10, x0, 4
	sw x10, 4 ( x20 )
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x20 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_323
.LBB0_302:                              //  %if.then1003
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x18
	mv x11, x9
	jal __ssprint_r
	lw x23, 84 ( sp )               //  4-byte Folded Reload
	add x20, sp, 524
	add x19, x0, 90
	bltu x0, x10, .LBB0_487
.LBB0_303:                              //  %if.end1009
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 600 ( sp )
	and x11, fp, 1
	bltu x0, x11, .LBB0_324
.LBB0_304:                              //  %if.end1009
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 632 ( sp )
	blt x11, x10, .LBB0_324
.LBB0_305:                              //    in Loop: Header=BB0_8 Depth=2
	add x15, sp, 588
	and x10, fp, 4
	beq x0, x10, .LBB0_478
.LBB0_412:                              //  %if.then1673
                                        //    in Loop: Header=BB0_8 Depth=2
	sub fp, x25, x27
	bge x0, fp, .LBB0_478
.LBB0_413:                              //  %while.cond1678.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 108 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x20 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_416
	jal x0, .LBB0_418
.LBB0_414:                              //    in Loop: Header=BB0_416 Depth=3
	add x20, x20, 8
.LBB0_415:                              //  %if.end1697
                                        //    in Loop: Header=BB0_416 Depth=3
	lw x10, 108 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x20 )
	add x10, x0, 16
	bge x10, fp, .LBB0_418
.LBB0_416:                              //  %while.body1681
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x15 )
	sw x26, 4 ( x20 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_414
.LBB0_417:                              //  %if.then1691
                                        //    in Loop: Header=BB0_416 Depth=3
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x20, sp, 524
	beq x0, x10, .LBB0_415
	jal x0, .LBB0_487
.LBB0_306:                              //    in Loop: Header=BB0_8 Depth=2
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	add x20, x20, 8
	and x10, fp, 256
	beq x0, x10, .LBB0_294
	jal x0, .LBB0_299
.LBB0_307:                              //    in Loop: Header=BB0_8 Depth=2
	lw x23, 84 ( sp )               //  4-byte Folded Reload
	lw x27, 92 ( sp )               //  4-byte Folded Reload
	add x20, x20, 8
	mv x22, x0
	add x19, x0, 90
	and x10, fp, 4
	bltu x0, x10, .LBB0_412
	jal x0, .LBB0_478
.LBB0_308:                              //  %if.else1522
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 4
	sw x10, 4 ( x20 )
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	lw x12, 592 ( sp )
	lw x13, 600 ( sp )
	add x18, x20, 8
	sw x10, 0 ( x20 )
	lw x10, 8 ( x15 )
	and x14, fp, 1
	mv x22, x0
	add x11, x10, 4
	add x10, x12, 1
	sw x11, 8 ( x15 )
	sw x10, 592 ( sp )
	bltu x0, x14, .LBB0_312
.LBB0_309:                              //  %if.else1522
                                        //    in Loop: Header=BB0_8 Depth=2
	slti x13, x13, 2
	beq x0, x13, .LBB0_312
.LBB0_310:                              //  %if.else1632
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x23, 84 ( sp )               //  4-byte Folded Reload
	lw x27, 92 ( sp )               //  4-byte Folded Reload
	slti x10, x12, 7
	add x19, x0, 90
	beq x0, x10, .LBB0_331
	jal x0, .LBB0_408
.LBB0_418:                              //  %while.end1699
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	sll x10, fp, 2&31
	sw x10, 4 ( x20 )
	add x10, x10, x11
	lw x11, 592 ( sp )
	sw x10, 8 ( x15 )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 592 ( sp )
	bltu x0, x11, .LBB0_479
.LBB0_419:                              //  %if.then1711
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	beq x0, x10, .LBB0_478
	jal x0, .LBB0_487
.LBB0_311:                              //    in Loop: Header=BB0_8 Depth=2
	add x20, x20, 8
	sub fp, x19, x22
	blt x0, fp, .LBB0_286
	jal x0, .LBB0_298
.LBB0_312:                              //  %if.then1528
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x23, 84 ( sp )               //  4-byte Folded Reload
	lw x27, 92 ( sp )               //  4-byte Folded Reload
	slti x12, x12, 7
	add x19, x0, 90
	bltu x0, x12, .LBB0_315
.LBB0_313:                              //  %if.then1538
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	mv x11, x9
	mv x12, x15
	mv fp, x15
	mv x10, x18
	jal __ssprint_r
	bltu x0, x10, .LBB0_487
.LBB0_314:                              //  %if.then1538.if.end1544_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 592 ( sp )
	lw x11, 8 ( fp )
	mv x15, fp
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	add x18, sp, 524
.LBB0_315:                              //  %if.end1544
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11, x11, 4
	sw x11, 8 ( x15 )
	add x11, x0, 4
	sw x11, 4 ( x18 )
	add x11, sp, 640
	sw x11, 0 ( x18 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_328
.LBB0_316:                              //  %if.then1555
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x18, sp, 524
	beq x0, x10, .LBB0_329
	jal x0, .LBB0_497
.LBB0_317:                              //  %if.else1078
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 632 ( sp )
	lw x27, 92 ( sp )               //  4-byte Folded Reload
	add x15, sp, 588
	bge x0, x10, .LBB0_345
.LBB0_318:                              //  %if.else1185
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 600 ( sp )
	lw x11, 60 ( sp )               //  4-byte Folded Reload
	sll x10, x10, 2&31
	sra x10, x10, 2&31
	mv fp, x11
	blt x11, x10, .LBB0_320
.LBB0_319:                              //  %if.else1185
                                        //    in Loop: Header=BB0_8 Depth=2
	mv fp, x10
.LBB0_320:                              //  %if.else1185
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x0, fp, .LBB0_351
.LBB0_321:                              //  %if.then1198
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	sll x10, fp, 2&31
	sw x10, 4 ( x20 )
	add x11, x10, x11
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	sw x11, 8 ( x15 )
	sw x10, 0 ( x20 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_350
.LBB0_322:                              //  %if.then1210
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x20, sp, 524
	beq x0, x10, .LBB0_351
	jal x0, .LBB0_486
.LBB0_323:                              //    in Loop: Header=BB0_8 Depth=2
	lw x23, 84 ( sp )               //  4-byte Folded Reload
	add x20, x20, 8
	add x19, x0, 90
	lw x10, 600 ( sp )
	and x11, fp, 1
	beq x0, x11, .LBB0_304
.LBB0_324:                              //  %if.then1015
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15, sp, 588
	lw x11, 8 ( x15 )
	add x11, x11, 4
	sw x11, 8 ( x15 )
	add x11, x0, 4
	sw x11, 4 ( x20 )
	add x11, sp, 640
	sw x11, 0 ( x20 )
	lw x11, 592 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 592 ( sp )
	bltu x0, x11, .LBB0_338
.LBB0_325:                              //  %if.then1025
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	bltu x0, x10, .LBB0_487
.LBB0_326:                              //  %if.then1025.if.end1031_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 600 ( sp )
	add x20, sp, 524
	add x15, sp, 588
	add fp, x10, -1
	bge x0, fp, .LBB0_327
.LBB0_339:                              //  %while.cond1036.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x20 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_342
	jal x0, .LBB0_444
.LBB0_340:                              //    in Loop: Header=BB0_342 Depth=3
	add x20, x20, 8
.LBB0_341:                              //  %if.end1055
                                        //    in Loop: Header=BB0_342 Depth=3
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x20 )
	add x10, x0, 16
	bge x10, fp, .LBB0_444
.LBB0_342:                              //  %while.body1039
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x15 )
	sw x26, 4 ( x20 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_340
.LBB0_343:                              //  %if.then1049
                                        //    in Loop: Header=BB0_342 Depth=3
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x20, sp, 524
	beq x0, x10, .LBB0_341
	jal x0, .LBB0_487
.LBB0_328:                              //    in Loop: Header=BB0_8 Depth=2
	add x18, x18, 8
.LBB0_329:                              //  %if.end1561
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	lw x11, 68 ( sp )               //  4-byte Folded Reload
	mv x13, x22
	mv x12, x22
	jal __eqdf2
	beq x0, x10, .LBB0_332
.LBB0_330:                              //  %if.then1564
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	lw x11, 600 ( sp )
	add x15, sp, 588
	lw x12, 8 ( x15 )
	add x10, x10, 4
	sw x10, 0 ( x18 )
	lw x10, 592 ( sp )
	sll x11, x11, 2&31
	add x11, x11, -4
	add x12, x11, x12
	sw x11, 4 ( x18 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x12, 8 ( x15 )
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_407
.LBB0_331:                              //  %if.then1578
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x18, sp, 524
	beq x0, x10, .LBB0_408
	jal x0, .LBB0_497
.LBB0_332:                              //  %if.else1585
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 600 ( sp )
	add x15, sp, 588
	add fp, x10, -1
	bge x0, fp, .LBB0_367
.LBB0_333:                              //  %while.cond1590.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x18 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_336
	jal x0, .LBB0_348
.LBB0_334:                              //    in Loop: Header=BB0_336 Depth=3
	add x18, x18, 8
.LBB0_335:                              //  %if.end1609
                                        //    in Loop: Header=BB0_336 Depth=3
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x18 )
	add x10, x0, 16
	bge x10, fp, .LBB0_348
.LBB0_336:                              //  %while.body1593
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x15 )
	sw x26, 4 ( x18 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_334
.LBB0_337:                              //  %if.then1603
                                        //    in Loop: Header=BB0_336 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x18, sp, 524
	beq x0, x10, .LBB0_335
	jal x0, .LBB0_497
.LBB0_338:                              //    in Loop: Header=BB0_8 Depth=2
	add x20, x20, 8
	add fp, x10, -1
	blt x0, fp, .LBB0_339
	jal x0, .LBB0_327
.LBB0_345:                              //  %if.then1081
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	add x11, x11, 4
	sw x11, 8 ( x15 )
	add x11, x0, 4
	sw x11, 4 ( x20 )
	lw x11, 40 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x20 )
	lw x11, 592 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 592 ( sp )
	bltu x0, x11, .LBB0_362
.LBB0_346:                              //  %if.then1091
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	lw x23, 84 ( sp )               //  4-byte Folded Reload
	add x19, x0, 90
	bltu x0, x10, .LBB0_487
.LBB0_347:                              //  %if.then1091.if.end1097_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 632 ( sp )
	add x20, sp, 524
	add x15, sp, 588
	jal x0, .LBB0_363
.LBB0_348:                              //  %while.end1611
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	sll x10, fp, 2&31
	sw x10, 4 ( x18 )
	add x11, x10, x11
	lw x10, 592 ( sp )
	sw x11, 8 ( x15 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_406
.LBB0_349:                              //  %if.then1623
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	add x15, sp, 588
	add x18, sp, 524
	beq x0, x10, .LBB0_408
	jal x0, .LBB0_497
.LBB0_350:                              //    in Loop: Header=BB0_8 Depth=2
	add x20, x20, 8
.LBB0_351:                              //  %if.end1217
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x22, fp, .LBB0_353
.LBB0_352:                              //  %if.end1217
                                        //    in Loop: Header=BB0_8 Depth=2
	mv fp, x22
.LBB0_353:                              //  %if.end1217
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	sub fp, x10, fp
	bge x0, fp, .LBB0_361
.LBB0_354:                              //  %while.cond1228.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x20 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_357
	jal x0, .LBB0_359
.LBB0_355:                              //    in Loop: Header=BB0_357 Depth=3
	add x20, x20, 8
.LBB0_356:                              //  %if.end1247
                                        //    in Loop: Header=BB0_357 Depth=3
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x20 )
	add x10, x0, 16
	bge x10, fp, .LBB0_359
.LBB0_357:                              //  %while.body1231
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x15 )
	sw x26, 4 ( x20 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_355
.LBB0_358:                              //  %if.then1241
                                        //    in Loop: Header=BB0_357 Depth=3
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x20, sp, 524
	beq x0, x10, .LBB0_356
	jal x0, .LBB0_486
.LBB0_359:                              //  %while.end1249
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	sll x10, fp, 2&31
	sw x10, 4 ( x20 )
	add x11, x10, x11
	lw x10, 592 ( sp )
	sw x11, 8 ( x15 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_368
.LBB0_360:                              //  %if.then1261
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	lw x11, 104 ( sp )              //  4-byte Folded Reload
	add x15, sp, 588
	add x20, sp, 524
	beq x0, x10, .LBB0_369
	jal x0, .LBB0_486
.LBB0_361:                              //    in Loop: Header=BB0_8 Depth=2
	lw x11, 104 ( sp )              //  4-byte Folded Reload
	jal x0, .LBB0_369
.LBB0_362:                              //    in Loop: Header=BB0_8 Depth=2
	lw x23, 84 ( sp )               //  4-byte Folded Reload
	add x20, x20, 8
	add x19, x0, 90
.LBB0_363:                              //  %if.end1097
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 600 ( sp )
	and x11, fp, 1
	or x11, x11, x10
	or x11, x12, x11
	beq x0, x11, .LBB0_411
.LBB0_364:                              //  %if.then1104
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	add x11, x11, 4
	sw x11, 8 ( x15 )
	add x11, x0, 4
	sw x11, 4 ( x20 )
	add x11, sp, 640
	sw x11, 0 ( x20 )
	lw x11, 592 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 592 ( sp )
	bltu x0, x11, .LBB0_421
.LBB0_365:                              //  %if.then1114
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	bltu x0, x10, .LBB0_487
.LBB0_366:                              //  %if.then1114.if.end1120_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 632 ( sp )
	add x11, sp, 524
	add x15, sp, 588
	bge x10, x0, .LBB0_476
	jal x0, .LBB0_422
.LBB0_367:                              //    in Loop: Header=BB0_8 Depth=2
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_408
.LBB0_368:                              //    in Loop: Header=BB0_8 Depth=2
	lw x11, 104 ( sp )              //  4-byte Folded Reload
	add x20, x20, 8
.LBB0_369:                              //  %cleanup.cont1271
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	lw x12, 72 ( sp )               //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x19, x10, x12
	and x10, x11, 1024
	bltu x0, x10, .LBB0_371
.LBB0_370:                              //  %cleanup.cont1271.if.end1404_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 600 ( sp )
	lw x23, 84 ( sp )               //  4-byte Folded Reload
	mv fp, x19
	jal x0, .LBB0_376
.LBB0_371:                              //  %while.cond1276.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 64 ( sp )               //  4-byte Folded Reload
	blt x0, x11, .LBB0_381
.LBB0_372:                              //  %while.cond1276.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x0, x23, .LBB0_381
.LBB0_373:                              //  %while.end1397
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 600 ( sp )
	lw x12, 72 ( sp )               //  4-byte Folded Reload
	sll x11, x10, 2&31
	add fp, x11, x12
	bltu fp, x19, .LBB0_375
.LBB0_374:                              //  %while.end1397
                                        //    in Loop: Header=BB0_8 Depth=2
	mv fp, x19
.LBB0_375:                              //  %while.end1397
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x23, 84 ( sp )               //  4-byte Folded Reload
	add x26, x0, 64
	mv x22, x0
.LBB0_376:                              //  %if.end1404
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 104 ( sp )              //  4-byte Folded Reload
	lw x11, 632 ( sp )
	add x19, x0, 90
	and x12, x12, 1
	bltu x0, x12, .LBB0_378
.LBB0_377:                              //  %if.end1404
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x11, x10, .LBB0_428
.LBB0_378:                              //  %if.then1410
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 8 ( x15 )
	add x12, x12, 4
	sw x12, 8 ( x15 )
	add x12, x0, 4
	sw x12, 4 ( x20 )
	add x12, sp, 640
	sw x12, 0 ( x20 )
	lw x12, 592 ( sp )
	add x13, x12, 1
	slti x12, x12, 7
	sw x13, 592 ( sp )
	bltu x0, x12, .LBB0_427
.LBB0_379:                              //  %if.then1420
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	bltu x0, x10, .LBB0_487
.LBB0_380:                              //  %if.then1420.if.end1427_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 632 ( sp )
	lw x10, 600 ( sp )
	add x20, sp, 524
	add x15, sp, 588
	jal x0, .LBB0_428
.LBB0_381:                              //  %while.body1281.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	slt x22, x0, x11
.LBB0_382:                              //  %while.body1281
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_398 Depth 4
	lw x10, 8 ( x15 )
	sw x11, 64 ( sp )               //  4-byte Folded Spill
	and x26, x22, 1
	add x10, x10, 4
	sw x10, 8 ( x15 )
	add x10, x0, 4
	sw x10, 4 ( x20 )
	add x10, sp, 644
	sw x10, 0 ( x20 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	sw x11, 592 ( sp )
	bltu x0, x26, .LBB0_384
.LBB0_383:                              //  %while.body1281
                                        //    in Loop: Header=BB0_382 Depth=3
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	add x11, x11, -1
	sw x11, 96 ( sp )               //  4-byte Folded Spill
.LBB0_384:                              //  %while.body1281
                                        //    in Loop: Header=BB0_382 Depth=3
	slti x10, x10, 7
	bltu x0, x10, .LBB0_386
.LBB0_385:                              //  %if.then1299
                                        //    in Loop: Header=BB0_382 Depth=3
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x20, sp, 524
	beq x0, x10, .LBB0_387
	jal x0, .LBB0_486
.LBB0_386:                              //    in Loop: Header=BB0_382 Depth=3
	add x20, x20, 8
.LBB0_387:                              //  %if.end1305
                                        //    in Loop: Header=BB0_382 Depth=3
	lw x10, 600 ( sp )
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x10, x10, x11
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	sub x10, x10, x19
	sra x10, x10, 2&31
	lb fp, 0 ( x11 )
	blt fp, x10, .LBB0_389
.LBB0_388:                              //  %if.end1305
                                        //    in Loop: Header=BB0_382 Depth=3
	mv fp, x10
.LBB0_389:                              //  %if.end1305
                                        //    in Loop: Header=BB0_382 Depth=3
	bge x0, fp, .LBB0_392
.LBB0_390:                              //  %if.then1320
                                        //    in Loop: Header=BB0_382 Depth=3
	lw x11, 8 ( x15 )
	sll x10, fp, 2&31
	sw x10, 4 ( x20 )
	sw x19, 0 ( x20 )
	add x11, x10, x11
	lw x10, 592 ( sp )
	sw x11, 8 ( x15 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_402
.LBB0_391:                              //  %if.then1332
                                        //    in Loop: Header=BB0_382 Depth=3
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x20, sp, 524
	bltu x0, x10, .LBB0_486
.LBB0_392:                              //  %if.end1339
                                        //    in Loop: Header=BB0_382 Depth=3
	mv x10, x0
	blt x10, fp, .LBB0_394
.LBB0_393:                              //  %if.end1339
                                        //    in Loop: Header=BB0_382 Depth=3
	mv fp, x0
.LBB0_394:                              //  %if.end1339
                                        //    in Loop: Header=BB0_382 Depth=3
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	lb x10, 0 ( x10 )
	sub fp, x10, fp
	bge x0, fp, .LBB0_404
.LBB0_395:                              //  %while.cond1351.preheader
                                        //    in Loop: Header=BB0_382 Depth=3
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x20 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_398
	jal x0, .LBB0_400
.LBB0_396:                              //    in Loop: Header=BB0_398 Depth=4
	add x20, x20, 8
.LBB0_397:                              //  %if.end1370
                                        //    in Loop: Header=BB0_398 Depth=4
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x20 )
	add x10, x0, 16
	bge x10, fp, .LBB0_400
.LBB0_398:                              //  %while.body1354
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_382 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	lw x10, 8 ( x15 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	add x10, x0, 64
	sw x10, 4 ( x20 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_396
.LBB0_399:                              //  %if.then1364
                                        //    in Loop: Header=BB0_398 Depth=4
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x20, sp, 524
	beq x0, x10, .LBB0_397
	jal x0, .LBB0_486
.LBB0_400:                              //  %while.end1372
                                        //    in Loop: Header=BB0_382 Depth=3
	lw x11, 8 ( x15 )
	sll x10, fp, 2&31
	sw x10, 4 ( x20 )
	add x11, x10, x11
	lw x10, 592 ( sp )
	sw x11, 8 ( x15 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_403
.LBB0_401:                              //  %if.then1384
                                        //    in Loop: Header=BB0_382 Depth=3
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x20, sp, 524
	beq x0, x10, .LBB0_404
	jal x0, .LBB0_486
.LBB0_402:                              //    in Loop: Header=BB0_382 Depth=3
	add x20, x20, 8
	mv x10, x0
	bge x10, fp, .LBB0_393
	jal x0, .LBB0_394
.LBB0_403:                              //    in Loop: Header=BB0_382 Depth=3
	add x20, x20, 8
.LBB0_404:                              //  %cleanup.cont1394
                                        //    in Loop: Header=BB0_382 Depth=3
	xor x10, x22, -1
	and x10, x10, 1
	sub x23, x23, x10
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	lw x11, 64 ( sp )               //  4-byte Folded Reload
	lb x10, 0 ( x10 )
	sub x11, x11, x26
	slt x22, x0, x11
	sll x10, x10, 2&31
	add x19, x10, x19
	blt x0, x11, .LBB0_382
.LBB0_405:                              //  %cleanup.cont1394
                                        //    in Loop: Header=BB0_382 Depth=3
	blt x0, x23, .LBB0_382
	jal x0, .LBB0_373
.LBB0_406:                              //    in Loop: Header=BB0_8 Depth=2
	lw fp, 104 ( sp )               //  4-byte Folded Reload
.LBB0_407:                              //  %if.end1649
                                        //    in Loop: Header=BB0_8 Depth=2
	add x18, x18, 8
.LBB0_408:                              //  %if.end1649
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	lw x11, 8 ( x15 )
	sll x10, x10, 2&31
	add x11, x10, x11
	sw x10, 4 ( x18 )
	add x10, sp, 604
	sw x10, 0 ( x18 )
	lw x10, 592 ( sp )
	sw x11, 8 ( x15 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_420
.LBB0_409:                              //  %if.then1662
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x18, 100 ( sp )              //  4-byte Folded Reload
.LBB0_410:                              //  %if.then1177
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x20, sp, 524
	bltu x0, x10, .LBB0_487
.LBB0_411:                              //  %if.end1670
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, fp, 4
	bltu x0, x10, .LBB0_412
.LBB0_478:                              //  %if.end1719thread-pre-split
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 596 ( sp )
.LBB0_479:                              //  %if.end1719
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x27, x25, .LBB0_481
.LBB0_480:                              //  %if.end1719
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x25, x27
.LBB0_481:                              //  %if.end1719
                                        //    in Loop: Header=BB0_8 Depth=2
	add x23, x23, x25
	beq x0, x10, .LBB0_483
.LBB0_482:                              //  %land.lhs.true1729
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	bltu x0, x10, .LBB0_487
.LBB0_483:                              //  %if.end1733
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 80 ( sp )               //  4-byte Folded Reload
	sw x0, 592 ( sp )
	bltu x0, x11, .LBB0_484
.LBB0_524:                              //  %if.end1733
                                        //    in Loop: Header=BB0_5 Depth=1
	jal x0, .LBB0_5
.LBB0_484:                              //  %if.then1738
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x18
	jal _free_r
	add x15, sp, 588
	add x20, sp, 524
	mv fp, x24
	lw x10, 0 ( fp )
	beq x0, x10, .LBB0_525
.LBB0_526:                              //  %if.then1738
                                        //    in Loop: Header=BB0_5 Depth=1
	jal x0, .LBB0_6
.LBB0_525:                              //  %if.then1738
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_8
.LBB0_420:                              //    in Loop: Header=BB0_8 Depth=2
	add x20, x18, 8
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	and x10, fp, 4
	bltu x0, x10, .LBB0_412
	jal x0, .LBB0_478
.LBB0_421:                              //    in Loop: Header=BB0_8 Depth=2
	add x11, x20, 8
	bge x10, x0, .LBB0_476
.LBB0_422:                              //  %while.cond1125.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 112 ( sp )              //  4-byte Folded Reload
	sub fp, x0, x10
	sw x12, 0 ( x11 )
	add x12, x0, -17
	bge x12, x10, .LBB0_425
	jal x0, .LBB0_473
.LBB0_423:                              //    in Loop: Header=BB0_425 Depth=3
	add x11, x11, 8
.LBB0_424:                              //  %if.end1144
                                        //    in Loop: Header=BB0_425 Depth=3
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x11 )
	add x10, x0, 16
	bge x10, fp, .LBB0_473
.LBB0_425:                              //  %while.body1128
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x15 )
	sw x26, 4 ( x11 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	lw x10, 592 ( sp )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 592 ( sp )
	bltu x0, x10, .LBB0_423
.LBB0_426:                              //  %if.then1138
                                        //    in Loop: Header=BB0_425 Depth=3
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x11, sp, 524
	beq x0, x10, .LBB0_424
	jal x0, .LBB0_487
.LBB0_427:                              //    in Loop: Header=BB0_8 Depth=2
	add x20, x20, 8
.LBB0_428:                              //  %if.end1427
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13, 72 ( sp )               //  4-byte Folded Reload
	sll x12, x10, 2&31
	sub x10, x10, x11
	mv x9, x10
	add x12, x12, x13
	sub x12, x12, fp
	sra x12, x12, 2&31
	blt x10, x12, .LBB0_430
.LBB0_429:                              //  %if.end1427
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x9, x12
.LBB0_430:                              //  %if.end1427
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x0, x9, .LBB0_434
.LBB0_431:                              //  %if.then1442
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 8 ( x15 )
	sll x11, x9, 2&31
	sw x11, 4 ( x20 )
	sw fp, 0 ( x20 )
	add x12, x11, x12
	lw x11, 592 ( sp )
	sw x12, 8 ( x15 )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 592 ( sp )
	bltu x0, x11, .LBB0_437
.LBB0_432:                              //  %if.then1454
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	mv x10, x18
	mv x12, x15
	jal __ssprint_r
	bltu x0, x10, .LBB0_502
.LBB0_433:                              //  %if.then1454.if.end1461_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 632 ( sp )
	lw x11, 600 ( sp )
	add x20, sp, 524
	add x15, sp, 588
	sub x10, x11, x10
.LBB0_434:                              //  %if.end1461
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x22, x9, .LBB0_438
.LBB0_435:                              //  %if.end1461
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x11, x22
	lw x9, 76 ( sp )                //  4-byte Folded Reload
	add fp, x11, x10
	blt x0, fp, .LBB0_439
.LBB0_327:                              //    in Loop: Header=BB0_8 Depth=2
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	and x10, fp, 4
	bltu x0, x10, .LBB0_412
	jal x0, .LBB0_478
.LBB0_437:                              //    in Loop: Header=BB0_8 Depth=2
	add x20, x20, 8
	bge x22, x9, .LBB0_435
.LBB0_438:                              //    in Loop: Header=BB0_8 Depth=2
	sub x11, x0, x9
	lw x9, 76 ( sp )                //  4-byte Folded Reload
	add fp, x11, x10
	bge x0, fp, .LBB0_327
.LBB0_439:                              //  %while.cond1473.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x20 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_442
	jal x0, .LBB0_444
.LBB0_440:                              //    in Loop: Header=BB0_442 Depth=3
	add x20, x20, 8
.LBB0_441:                              //  %if.end1492
                                        //    in Loop: Header=BB0_442 Depth=3
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x20 )
	add x10, x0, 16
	bge x10, fp, .LBB0_444
.LBB0_442:                              //  %while.body1476
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x15 )
	sw x26, 4 ( x20 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_440
.LBB0_443:                              //  %if.then1486
                                        //    in Loop: Header=BB0_442 Depth=3
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x20, sp, 524
	beq x0, x10, .LBB0_441
	jal x0, .LBB0_487
.LBB0_444:                              //  %while.end1057
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	sll x10, fp, 2&31
	sw x10, 4 ( x20 )
	add x11, x10, x11
	sw x11, 8 ( x15 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_446
.LBB0_445:                              //  %if.then1069
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	add x15, sp, 588
	add x20, sp, 524
	beq x0, x10, .LBB0_411
	jal x0, .LBB0_487
.LBB0_446:                              //    in Loop: Header=BB0_8 Depth=2
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	add x20, x20, 8
	and x10, fp, 4
	bltu x0, x10, .LBB0_412
	jal x0, .LBB0_478
.LBB0_447:                              //    in Loop: Header=BB0_8 Depth=2
	mv x10, x19
	mv x23, x19
	sw x19, 80 ( sp )               //  4-byte Folded Spill
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	sw x19, 60 ( sp )               //  4-byte Folded Spill
.LBB0_448:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x26, 72 ( sp )               //  4-byte Folded Spill
	mv x26, x10
	add x15, sp, 588
	mv x10, x26
	blt x22, x26, .LBB0_527
.LBB0_528:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_255
.LBB0_527:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_256
.LBB0_449:                              //    in Loop: Header=BB0_8 Depth=2
	seqz x11, x0
.LBB0_450:                              //  %if.else375
                                        //    in Loop: Header=BB0_8 Depth=2
	add x22, x10, x11
	add x27, x0, 103
	mv x11, x0
	and x10, x12, 1024
	beq x0, x10, .LBB0_460
.LBB0_451:                              //  %if.end385
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x0, x16, .LBB0_460
.LBB0_452:                              //  %while.cond392.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	mv x14, x0
	lb x10, 0 ( x10 )
	xor x11, x10, 127
	beq x0, x11, .LBB0_467
.LBB0_453:                              //  %while.cond392.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x10, x16, .LBB0_467
.LBB0_454:                              //  %if.end401.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x11, x0
	mv x14, x11
	mv x23, x11
.LBB0_455:                              //  %if.end401
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x13, 96 ( sp )               //  4-byte Folded Reload
	lbu x12, 1 ( x13 )
	beq x12, x11, .LBB0_457
.LBB0_456:                              //  %if.end401
                                        //    in Loop: Header=BB0_455 Depth=3
	add x13, x13, 1
.LBB0_457:                              //  %if.end401
                                        //    in Loop: Header=BB0_455 Depth=3
	sub x16, x16, x10
	snez x10, x12
	add x23, x10, x23
	seqz x10, x12
	add x14, x10, x14
	lb x10, 0 ( x13 )
	sw x13, 96 ( sp )               //  4-byte Folded Spill
	xor x12, x10, 127
	beq x0, x12, .LBB0_468
.LBB0_458:                              //  %if.end401
                                        //    in Loop: Header=BB0_455 Depth=3
	blt x10, x16, .LBB0_455
	jal x0, .LBB0_468
.LBB0_467:                              //    in Loop: Header=BB0_8 Depth=2
	mv x23, x14
.LBB0_468:                              //  %while.end412
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x22, x14
	add x22, x23, x10
	sw x16, 60 ( sp )               //  4-byte Folded Spill
	sw x14, 64 ( sp )               //  4-byte Folded Spill
	lw x14, 92 ( sp )               //  4-byte Folded Reload
	lw x10, 636 ( sp )
	mv x26, x0
	beq x0, x10, .LBB0_207
.LBB0_529:                              //  %while.end412
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_472
.LBB0_207:                              //    in Loop: Header=BB0_8 Depth=2
	mv fp, x14
	mv x10, x26
	blt x22, x26, .LBB0_530
.LBB0_531:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_255
.LBB0_530:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_256
.LBB0_459:                              //    in Loop: Header=BB0_8 Depth=2
	mv x22, x16
	mv x11, x0
	and x10, x12, 1024
	bltu x0, x10, .LBB0_451
.LBB0_460:                              //    in Loop: Header=BB0_8 Depth=2
	sw x16, 60 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_471
.LBB0_461:                              //  %cond.true463
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lhu x18, 0 ( x10 )
.LBB0_462:                              //  %cond.false467
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	mv x22, x0
.LBB0_463:                              //  %cond.end483
                                        //    in Loop: Header=BB0_8 Depth=2
	add x27, x0, 111
	mv x10, x0
	and fp, fp, -1025
	sw x0, 648 ( sp )
	add x11, x0, -1
	bge x11, x26, .LBB0_532
.LBB0_533:                              //  %cond.end483
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_213
.LBB0_532:                              //  %cond.end483
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_214
.LBB0_464:                              //  %cond.true591
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lhu x18, 0 ( x10 )
.LBB0_465:                              //  %cond.false595
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x26, 92 ( sp )               //  4-byte Folded Reload
	mv x22, x0
	add x27, x0, 117
	seqz x10, x0
	sw x0, 648 ( sp )
	add x11, x0, -1
	bge x11, x26, .LBB0_534
.LBB0_535:                              //  %cond.false595
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_213
.LBB0_534:                              //  %cond.false595
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_214
.LBB0_469:                              //    in Loop: Header=BB0_8 Depth=2
	seqz x22, x0
.LBB0_470:                              //  %if.end385.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x16, 60 ( sp )               //  4-byte Folded Spill
	add x27, x0, 102
.LBB0_471:                              //  %if.end417
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x11, 64 ( sp )               //  4-byte Folded Spill
	mv x23, x11
	lw x14, 92 ( sp )               //  4-byte Folded Reload
	lw x10, 636 ( sp )
	mv x26, x0
	beq x0, x10, .LBB0_536
.LBB0_537:                              //  %if.end417
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_472
.LBB0_536:                              //  %if.end417
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_207
.LBB0_473:                              //  %while.end1146
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 8 ( x15 )
	sll x10, fp, 2&31
	sw x10, 4 ( x11 )
	add x12, x10, x12
	lw x10, 592 ( sp )
	sw x12, 8 ( x15 )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 592 ( sp )
	bltu x0, x10, .LBB0_475
.LBB0_474:                              //  %if.then1158
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x18
	mv x11, x9
	mv x12, x15
	jal __ssprint_r
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	add x15, sp, 588
	add x11, sp, 524
	beq x0, x10, .LBB0_476
	jal x0, .LBB0_487
.LBB0_475:                              //    in Loop: Header=BB0_8 Depth=2
	lw fp, 104 ( sp )               //  4-byte Folded Reload
	add x11, x11, 8
.LBB0_476:                              //  %if.end1165
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 600 ( sp )
	lw x12, 8 ( x15 )
	sll x10, x10, 2&31
	add x12, x10, x12
	sw x12, 8 ( x15 )
	lw x12, 72 ( sp )               //  4-byte Folded Reload
	sw x10, 4 ( x11 )
	lw x10, 592 ( sp )
	sw x12, 0 ( x11 )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 592 ( sp )
	beq x0, x10, .LBB0_410
.LBB0_477:                              //    in Loop: Header=BB0_8 Depth=2
	add x20, x11, 8
	and x10, fp, 4
	bltu x0, x10, .LBB0_412
	jal x0, .LBB0_478
.LBB0_485:
	lw x18, 100 ( sp )              //  4-byte Folded Reload
.LBB0_486:
	lw x23, 84 ( sp )               //  4-byte Folded Reload
.LBB0_487:                              //  %error
	lw x11, 80 ( sp )               //  4-byte Folded Reload
	beq x0, x11, .LBB0_489
.LBB0_488:                              //  %if.then1751
	mv x10, x18
	jal _free_r
.LBB0_489:                              //  %if.end1752
	lbu x10, 12 ( x9 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB0_491
.LBB0_490:                              //  %if.end1752
	add x23, x0, -1
.LBB0_491:                              //  %cleanup1762
	mv x10, x23
	lw fp, 684 ( sp )               //  4-byte Folded Reload
	lw x27, 688 ( sp )              //  4-byte Folded Reload
	lw x26, 692 ( sp )              //  4-byte Folded Reload
	lw x25, 696 ( sp )              //  4-byte Folded Reload
	lw x24, 700 ( sp )              //  4-byte Folded Reload
	lw x23, 704 ( sp )              //  4-byte Folded Reload
	lw x22, 708 ( sp )              //  4-byte Folded Reload
	lw x21, 712 ( sp )              //  4-byte Folded Reload
	lw x20, 716 ( sp )              //  4-byte Folded Reload
	lw x19, 720 ( sp )              //  4-byte Folded Reload
	lw x18, 724 ( sp )              //  4-byte Folded Reload
	lw x9, 728 ( sp )               //  4-byte Folded Reload
	lw ra, 732 ( sp )               //  4-byte Folded Reload
	add sp, sp, 736
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_492:                              //  %done
	lw x10, 596 ( sp )
	beq x0, x10, .LBB0_494
.LBB0_493:                              //  %land.lhs.true1742
	add x12, sp, 588
	mv x10, x18
	mv x11, x9
	jal __ssprint_r
	bltu x0, x10, .LBB0_489
.LBB0_494:                              //  %if.end1746
	sw x0, 592 ( sp )
	lbu x10, 12 ( x9 )
	mv x11, x0
	and x10, x10, 64
	bne x10, x11, .LBB0_490
	jal x0, .LBB0_491
.LBB0_495:                              //  %if.then9
	add x10, x0, 12
	sw x10, 0 ( x18 )
	jal x0, .LBB0_490
.LBB0_496:
	lw x9, 76 ( sp )                //  4-byte Folded Reload
	lbu x10, 12 ( x9 )
	mv x11, x0
	and x10, x10, 64
	bne x10, x11, .LBB0_490
	jal x0, .LBB0_491
.LBB0_497:
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	lw x11, 80 ( sp )               //  4-byte Folded Reload
	bltu x0, x11, .LBB0_488
	jal x0, .LBB0_489
.LBB0_498:                              //  %cleanup
	lh x10, 12 ( x9 )
	lw x23, 84 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_501
.LBB0_499:                              //  %cleanup550
	mv x9, x19
.LBB0_500:                              //  %if.then254
	lh x10, 12 ( x9 )
.LBB0_501:                              //  %if.then254
	or x10, x10, 64
	sh x10, 12 ( x9 )
	lbu x10, 12 ( x9 )
	mv x11, x0
	and x10, x10, 64
	bne x10, x11, .LBB0_490
	jal x0, .LBB0_491
.LBB0_502:
	lw x9, 76 ( sp )                //  4-byte Folded Reload
	lw x11, 80 ( sp )               //  4-byte Folded Reload
	bltu x0, x11, .LBB0_488
	jal x0, .LBB0_489
.Lfunc_end0:
	.size	_svfwprintf_r, .Lfunc_end0-_svfwprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_29
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_31
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_32
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_37
	.long	.LBB0_40
	.long	.LBB0_120
	.long	.LBB0_39
	.long	.LBB0_21
	.long	.LBB0_120
	.long	.LBB0_43
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_61
	.long	.LBB0_120
	.long	.LBB0_75
	.long	.LBB0_120
	.long	.LBB0_61
	.long	.LBB0_61
	.long	.LBB0_61
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_44
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_78
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_95
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_61
	.long	.LBB0_120
	.long	.LBB0_75
	.long	.LBB0_87
	.long	.LBB0_61
	.long	.LBB0_61
	.long	.LBB0_61
	.long	.LBB0_45
	.long	.LBB0_87
	.long	.LBB0_28
	.long	.LBB0_120
	.long	.LBB0_47
	.long	.LBB0_120
	.long	.LBB0_53
	.long	.LBB0_96
	.long	.LBB0_101
	.long	.LBB0_28
	.long	.LBB0_120
	.long	.LBB0_78
	.long	.LBB0_42
	.long	.LBB0_102
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_107
	.long	.LBB0_120
	.long	.LBB0_42
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
	blt x12, x25, .LBB1_1
.LBB1_2:                                //  %entry
	mv x21, x12
	jal x0, .LBB1_3
.LBB1_1:
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x21, x11, x12
.LBB1_3:                                //  %entry
	lw fp, 68 ( sp )
	lw x24, 64 ( sp )
	sra x11, x12, 31&31
	and x11, x11, 45
	or x26, x22, 32
	sw x11, 0 ( x15 )
	xor x11, x26, 97
	bltu x0, x11, .LBB1_27
.LBB1_4:                                //  %if.then2
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
	beq x0, x10, .LBB1_5
.LBB1_6:                                //  %if.end5
	add x10, x0, 97
	beq x22, x10, .LBB1_7
.LBB1_8:                                //  %if.end5
	lui x10, %hi( .str.6 )
	add x23, x10, %lo( .str.6 )
	jal x0, .LBB1_9
.LBB1_27:                               //  %if.end37
	xor x27, x26, 102
	bltu x0, x27, .LBB1_29
.LBB1_28:
	add x13, x0, 3
	jal x0, .LBB1_30
.LBB1_29:                               //  %if.else44
	xor x11, x26, 101
	seqz x11, x11
	add x9, x9, x11
	add x13, x0, 2
.LBB1_30:                               //  %if.end52
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
	bltu x0, x10, .LBB1_33
.LBB1_31:                               //  %if.end52
	xor x10, x26, 103
	bltu x0, x10, .LBB1_33
.LBB1_32:                               //  %if.end52.if.end94_crit_edge
	lw x23, 4 ( sp )
	sub x10, x23, x19
	sw x10, 0 ( x24 )
	bge x0, x22, .LBB1_50
.LBB1_46:                               //  %if.end94
	bge x0, x10, .LBB1_50
.LBB1_47:                               //  %for.body.preheader
	mv x10, fp
.LBB1_48:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x11, x25, x19
	lb x11, 0 ( x11 )
	add x25, x25, 1
	sw x11, 0 ( x10 )
	bge x25, x22, .LBB1_50
.LBB1_49:                               //  %for.body
                                        //    in Loop: Header=BB1_48 Depth=1
	lw x11, 0 ( x24 )
	add x10, x10, 4
	blt x25, x11, .LBB1_48
	jal x0, .LBB1_50
.LBB1_33:                               //  %if.then66
	add x23, x9, x19
	bltu x0, x27, .LBB1_39
.LBB1_34:                               //  %if.then72
	mv x12, x0
	mv x10, x20
	mv x11, x21
	mv x13, x12
	jal __eqdf2
	beq x0, x10, .LBB1_36
.LBB1_35:                               //  %if.then72
	lbu x10, 0 ( x19 )
	xor x10, x10, 48
	bltu x0, x10, .LBB1_36
.LBB1_37:                               //  %if.then78
	seqz x10, x0
	sub x10, x10, x9
	sw x10, 0 ( x18 )
	jal x0, .LBB1_38
.LBB1_5:                                //  %if.then4
	seqz x10, x0
	sw x10, 0 ( x18 )
	add x10, x0, 97
	bne x22, x10, .LBB1_8
.LBB1_7:
	lui x10, %hi( .str.4 )
	add x23, x10, %lo( .str.4 )
.LBB1_9:                                //  %if.end5
	add x27, x9, 1
	mv x9, x0
	lui x18, (1076887552>>12)&1048575
	mv x22, fp
.LBB1_10:                               //  %do.body
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
	beq x0, x10, .LBB1_12
.LBB1_11:                               //  %do.body
                                        //    in Loop: Header=BB1_10 Depth=1
	mv x10, x19
	mv x13, x9
	mv x11, x20
	mv x12, x9
	jal __nedf2
	mv x27, x26
	bltu x0, x10, .LBB1_10
.LBB1_12:                               //  %do.end
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x19
	mv x11, x20
	jal __gtdf2
	blt x0, x10, .LBB1_18
.LBB1_13:                               //  %lor.lhs.false14
	and x10, x21, 1
	beq x0, x10, .LBB1_15
.LBB1_14:                               //  %lor.lhs.false14
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x19
	mv x11, x20
	jal __eqdf2
	bltu x0, x10, .LBB1_15
.LBB1_18:                               //  %if.then19
	lw x11, 60 ( x23 )
	add x10, x22, -4
	bne x25, x11, .LBB1_19
.LBB1_20:                               //  %while.body.preheader
	add x12, x0, 48
.LBB1_21:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x11, x10
	sw x12, 0 ( x11 )
	add x10, x11, -4
	lw x11, -4 ( x11 )
	beq x11, x25, .LBB1_21
.LBB1_22:                               //  %while.end
	xor x12, x11, 57
	bltu x0, x12, .LBB1_24
.LBB1_23:                               //  %cond.true
	lw x11, 40 ( x23 )
	jal x0, .LBB1_25
.LBB1_19:
	mv x11, x25
	xor x12, x11, 57
	beq x0, x12, .LBB1_23
.LBB1_24:                               //  %cond.false
	add x11, x11, 1
.LBB1_25:                               //  %if.end36
	sw x11, 0 ( x10 )
.LBB1_26:                               //  %if.end36
	sub x10, x22, fp
	sra x10, x10, 2&31
	sw x10, 0 ( x24 )
.LBB1_50:                               //  %cleanup
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
.LBB1_15:                               //  %while.cond29.preheader
	bge x0, x26, .LBB1_26
.LBB1_16:
	add x10, x0, 48
.LBB1_17:                               //  %while.body33
                                        //  =>This Inner Loop Header: Depth=1
	sw x10, 0 ( x22 )
	add x22, x22, 4
	add x26, x26, -1
	blt x0, x26, .LBB1_17
	jal x0, .LBB1_26
.LBB1_36:                               //  %if.then72.if.end81_crit_edge
	lw x10, 0 ( x18 )
.LBB1_38:                               //  %if.end81
	add x23, x10, x23
.LBB1_39:                               //  %if.end83
	mv x12, x0
	mv x10, x20
	mv x11, x21
	mv x13, x12
	jal __nedf2
	bltu x0, x10, .LBB1_41
.LBB1_40:                               //  %if.end87.thread
	sw x23, 4 ( sp )
	sub x10, x23, x19
	sw x10, 0 ( x24 )
	blt x0, x22, .LBB1_46
	jal x0, .LBB1_50
.LBB1_41:                               //  %if.end87
	lw x10, 4 ( sp )
	bgeu x10, x23, .LBB1_44
.LBB1_42:                               //  %while.body91.preheader
	add x11, x0, 48
.LBB1_43:                               //  %while.body91
                                        //  =>This Inner Loop Header: Depth=1
	add x12, x10, 1
	sw x12, 4 ( sp )
	sb x11, 0 ( x10 )
	lw x10, 4 ( sp )
	bltu x10, x23, .LBB1_43
.LBB1_44:                               //  %if.end94.loopexit
	mv x23, x10
	sub x10, x23, x19
	sw x10, 0 ( x24 )
	blt x0, x22, .LBB1_46
	jal x0, .LBB1_50
.Lfunc_end1:
	.size	wcvt, .Lfunc_end1-wcvt
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	_svfwprintf_r.blanks,@object //  @_svfwprintf_r.blanks
	.section	.rodata,"a",@progbits
	.p2align	2
_svfwprintf_r.blanks:
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
	.size	_svfwprintf_r.blanks, 64

	.address_space	0
	.type	_svfwprintf_r.zeroes,@object //  @_svfwprintf_r.zeroes
	.p2align	2
_svfwprintf_r.zeroes:
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
	.size	_svfwprintf_r.zeroes, 64

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
