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
	sw x23, 704 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 700 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 696 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw ra, 732 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 728 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 724 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 720 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 716 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 712 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 708 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x26, 692 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 688 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 684 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv x24, x12
	mv x23, x11
	mv x25, x10
	sw x13, 652 ( sp )
	sw x0, 644 ( sp )
	sw x0, 600 ( sp )
	jal _localeconv_r
	lw x10, 0 ( x10 )
	lb x10, 0 ( x10 )
	sw x10, 640 ( sp )
	lbu x10, 12 ( x23 )
	and x10, x10, 128
	beq x0, x10, .LBB0_4
.LBB0_1:                                //  %land.lhs.true
	lw x10, 16 ( x23 )
	bltu x0, x10, .LBB0_4
.LBB0_2:                                //  %if.then
	add fp, x0, 64
	mv x10, x25
	mv x11, fp
	jal _malloc_r
	sw x10, 16 ( x23 )
	sw x10, 0 ( x23 )
	bltu x0, x10, .LBB0_3
.LBB0_489:                              //  %if.then
	jal x0, .LBB0_487
.LBB0_3:                                //  %if.end
	sw fp, 20 ( x23 )
.LBB0_4:                                //  %if.end11
	add x10, sp, 524
	sw x10, 588 ( sp )
	add x10, sp, 656
	add x10, x10, 24
	sw x10, 36 ( sp )               //  4-byte Folded Spill
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
	sw x10, 44 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( JTI0_0 )
	add x10, x10, %lo( JTI0_0 )
	add x11, sp, 604
	mv x18, x0
	sw x10, 84 ( sp )               //  4-byte Folded Spill
	add x10, x11, 8
	add x15, sp, 588
	sw x10, 40 ( sp )               //  4-byte Folded Spill
	add x10, x11, 12
	add x27, x0, 64
	add x21, x0, 10
	mv x22, x18
	sw x0, 8 ( x15 )
	sw x18, 100 ( sp )              //  4-byte Folded Spill
	sw x0, 592 ( sp )
	sw x18, 92 ( sp )               //  4-byte Folded Spill
	sw x18, 48 ( sp )               //  4-byte Folded Spill
	sw x18, 60 ( sp )               //  4-byte Folded Spill
	sw x18, 72 ( sp )               //  4-byte Folded Spill
	sw x10, 32 ( sp )               //  4-byte Folded Spill
	sw x25, 88 ( sp )               //  4-byte Folded Spill
.LBB0_5:                                //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_8 Depth 2
                                        //        Child Loop BB0_15 Depth 3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_20 Depth 5
                                        //              Child Loop BB0_25 Depth 6
                                        //            Child Loop BB0_18 Depth 5
                                        //        Child Loop BB0_251 Depth 3
                                        //        Child Loop BB0_156 Depth 3
                                        //        Child Loop BB0_140 Depth 3
                                        //        Child Loop BB0_254 Depth 3
                                        //        Child Loop BB0_217 Depth 3
                                        //        Child Loop BB0_234 Depth 3
                                        //        Child Loop BB0_196 Depth 3
                                        //        Child Loop BB0_201 Depth 3
                                        //        Child Loop BB0_285 Depth 3
                                        //        Child Loop BB0_309 Depth 3
                                        //        Child Loop BB0_313 Depth 3
                                        //        Child Loop BB0_366 Depth 3
                                        //        Child Loop BB0_382 Depth 3
                                        //        Child Loop BB0_404 Depth 3
                                        //          Child Loop BB0_422 Depth 4
                                        //        Child Loop BB0_450 Depth 3
                                        //        Child Loop BB0_435 Depth 3
                                        //        Child Loop BB0_354 Depth 3
                                        //        Child Loop BB0_481 Depth 3
                                        //      Child Loop BB0_6 Depth 2
	add x19, sp, 524
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
                                        //            Child Loop BB0_20 Depth 5
                                        //              Child Loop BB0_25 Depth 6
                                        //            Child Loop BB0_18 Depth 5
                                        //        Child Loop BB0_251 Depth 3
                                        //        Child Loop BB0_156 Depth 3
                                        //        Child Loop BB0_140 Depth 3
                                        //        Child Loop BB0_254 Depth 3
                                        //        Child Loop BB0_217 Depth 3
                                        //        Child Loop BB0_234 Depth 3
                                        //        Child Loop BB0_196 Depth 3
                                        //        Child Loop BB0_201 Depth 3
                                        //        Child Loop BB0_285 Depth 3
                                        //        Child Loop BB0_309 Depth 3
                                        //        Child Loop BB0_313 Depth 3
                                        //        Child Loop BB0_366 Depth 3
                                        //        Child Loop BB0_382 Depth 3
                                        //        Child Loop BB0_404 Depth 3
                                        //          Child Loop BB0_422 Depth 4
                                        //        Child Loop BB0_450 Depth 3
                                        //        Child Loop BB0_435 Depth 3
                                        //        Child Loop BB0_354 Depth 3
                                        //        Child Loop BB0_481 Depth 3
	sub x9, fp, x24
	beq x0, x9, .LBB0_13
.LBB0_9:                                //  %if.then17
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x15 )
	sw x9, 4 ( x19 )
	sw x24, 0 ( x19 )
	add x10, x9, x10
	sw x10, 8 ( x15 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_11
.LBB0_10:                               //  %if.then24
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x19, sp, 524
	beq x0, x10, .LBB0_12
	jal x0, .LBB0_280
.LBB0_11:                               //    in Loop: Header=BB0_8 Depth=2
	add x19, x19, 8
.LBB0_12:                               //  %if.end30
                                        //    in Loop: Header=BB0_8 Depth=2
	sra x10, x9, 2&31
	add x22, x22, x10
	lw x10, 0 ( fp )
.LBB0_13:                               //  %if.end32
                                        //    in Loop: Header=BB0_8 Depth=2
	bltu x0, x10, .LBB0_14
.LBB0_490:                              //  %if.end32
	jal x0, .LBB0_484
.LBB0_14:                               //  %if.end36
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, fp, 4
	mv x9, x18
	add fp, x0, -1
	mv x20, x18
	sw x0, 648 ( sp )
	sw x22, 80 ( sp )               //  4-byte Folded Spill
.LBB0_15:                               //  %rflag
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_20 Depth 5
                                        //              Child Loop BB0_25 Depth 6
                                        //            Child Loop BB0_18 Depth 5
	lw x26, 0 ( x10 )
	add x24, x10, 4
.LBB0_16:                               //  %reswitch
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB0_20 Depth 5
                                        //              Child Loop BB0_25 Depth 6
                                        //            Child Loop BB0_18 Depth 5
	add x10, x26, -49
	sltiu x10, x10, 9
	beq x0, x10, .LBB0_20
.LBB0_17:                               //  %do.body.preheader
                                        //    in Loop: Header=BB0_16 Depth=4
	mv x20, x18
.LBB0_18:                               //  %do.body
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	hackaton_custom_instr_c x10, x21, x20
	add x10, x10, x26
	lw x26, 0 ( x24 )
	add x20, x10, -48
	add x24, x24, 4
	add x10, x26, -48
	sltiu x10, x10, 10
	bltu x0, x10, .LBB0_18
	jal x0, .LBB0_16
.LBB0_19:                               //    in Loop: Header=BB0_20 Depth=5
	mv x11, x0
	mv x24, x10
	mv fp, x11
	add x10, x26, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB0_17
.LBB0_20:                               //  %reswitch
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //  =>        This Loop Header: Depth=5
                                        //              Child Loop BB0_25 Depth 6
	add x10, x26, -32
	add x11, x0, 90
	bltu x11, x10, .LBB0_117
.LBB0_21:                               //  %reswitch
                                        //    in Loop: Header=BB0_20 Depth=5
	lw x11, 84 ( sp )               //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB0_22:                               //  %sw.bb66
                                        //    in Loop: Header=BB0_20 Depth=5
	lw x26, 0 ( x24 )
	add x10, x24, 4
	xor x11, x26, 42
	beq x0, x11, .LBB0_51
.LBB0_23:                               //  %while.cond77.preheader
                                        //    in Loop: Header=BB0_20 Depth=5
	add x12, x26, -48
	add x11, x0, 9
	bltu x11, x12, .LBB0_19
.LBB0_24:                               //  %while.body81.preheader
                                        //    in Loop: Header=BB0_20 Depth=5
	mv x11, x0
	mv x24, x10
.LBB0_25:                               //  %while.body81
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //            Parent Loop BB0_20 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	lw x26, 0 ( x24 )
	hackaton_custom_instr_c x10, x21, x11
	add x11, x10, x12
	add x24, x24, 4
	add x12, x26, -48
	sltiu x10, x12, 10
	bltu x0, x10, .LBB0_25
.LBB0_26:                               //  %while.end86
                                        //    in Loop: Header=BB0_20 Depth=5
	add fp, x0, -1
	blt x11, x0, .LBB0_16
.LBB0_27:                               //  %while.end86.thread
                                        //    in Loop: Header=BB0_20 Depth=5
	mv fp, x11
	add x10, x26, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB0_17
	jal x0, .LBB0_20
.LBB0_28:                               //  %sw.bb120
                                        //    in Loop: Header=BB0_15 Depth=3
	or x9, x9, 32
	mv x10, x24
	jal x0, .LBB0_15
.LBB0_29:                               //  %sw.bb52
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x11, 648 ( sp )
	mv x10, x24
	bltu x0, x11, .LBB0_15
.LBB0_30:                               //  %if.then54
                                        //    in Loop: Header=BB0_15 Depth=3
	add x10, x0, 32
	jal x0, .LBB0_41
.LBB0_31:                               //  %sw.bb56
                                        //    in Loop: Header=BB0_15 Depth=3
	or x9, x9, 1
	mv x10, x24
	jal x0, .LBB0_15
.LBB0_32:                               //  %sw.bb
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x10, x25
	jal _localeconv_r
	lw x10, 4 ( x10 )
	lb x10, 0 ( x10 )
	sw x10, 644 ( sp )
	mv x10, x25
	jal _localeconv_r
	lw x11, 8 ( x10 )
	add x15, sp, 588
	mv x10, x24
	sw x11, 100 ( sp )              //  4-byte Folded Spill
	beq x0, x11, .LBB0_15
.LBB0_33:                               //  %sw.bb
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x11, 644 ( sp )
	mv x10, x24
	beq x0, x11, .LBB0_15
.LBB0_34:                               //  %land.lhs.true47
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	mv x11, x0
	lbu x10, 0 ( x10 )
	beq x10, x11, .LBB0_36
.LBB0_35:                               //  %land.lhs.true47
                                        //    in Loop: Header=BB0_15 Depth=3
	or x9, x9, 1024
.LBB0_36:                               //  %land.lhs.true47
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x10, x24
	jal x0, .LBB0_15
.LBB0_37:                               //  %sw.bb58
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x20, 0 ( x10 )
	mv x10, x24
	bge x20, x0, .LBB0_15
.LBB0_38:                               //  %if.end62
                                        //    in Loop: Header=BB0_15 Depth=3
	sub x20, x0, x20
.LBB0_39:                               //  %sw.bb63.loopexit
                                        //    in Loop: Header=BB0_15 Depth=3
	or x9, x9, 4
	mv x10, x24
	jal x0, .LBB0_15
.LBB0_40:                               //  %sw.bb65
                                        //    in Loop: Header=BB0_15 Depth=3
	add x10, x0, 43
.LBB0_41:                               //  %rflag
                                        //    in Loop: Header=BB0_15 Depth=3
	sw x10, 648 ( sp )
.LBB0_42:                               //  %rflag.backedge.loopexit
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x10, x24
	jal x0, .LBB0_15
.LBB0_43:                               //  %sw.bb89
                                        //    in Loop: Header=BB0_15 Depth=3
	or x9, x9, 128
	mv x10, x24
	jal x0, .LBB0_15
.LBB0_44:                               //  %sw.bb99
                                        //    in Loop: Header=BB0_15 Depth=3
	or x9, x9, 8
	mv x10, x24
	jal x0, .LBB0_15
.LBB0_45:                               //  %sw.bb101
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 0 ( x24 )
	add x11, x0, 104
	beq x10, x11, .LBB0_49
.LBB0_46:                               //  %sw.bb101
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x11, x27
	mv x10, x24
	or x9, x9, x11
	jal x0, .LBB0_15
.LBB0_47:                               //  %sw.bb109
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 0 ( x24 )
	add x11, x0, 108
	beq x10, x11, .LBB0_50
.LBB0_48:                               //  %sw.bb109
                                        //    in Loop: Header=BB0_15 Depth=3
	add x11, x0, 16
	mv x10, x24
	or x9, x9, x11
	jal x0, .LBB0_15
.LBB0_49:                               //    in Loop: Header=BB0_15 Depth=3
	add x11, x0, 512
	add x10, x24, 4
	or x9, x9, x11
	jal x0, .LBB0_15
.LBB0_50:                               //    in Loop: Header=BB0_15 Depth=3
	add x11, x0, 32
	add x10, x24, 4
	or x9, x9, x11
	jal x0, .LBB0_15
.LBB0_51:                               //  %if.then70
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x11, 652 ( sp )
	add x12, x11, 4
	sw x12, 652 ( sp )
	lw fp, 0 ( x11 )
	add x11, x0, -1
	blt x11, fp, .LBB0_15
.LBB0_52:                               //  %if.then70
                                        //    in Loop: Header=BB0_15 Depth=3
	mv fp, x11
	jal x0, .LBB0_15
.LBB0_53:                               //  %sw.bb421
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x9, 32
	bltu x0, x10, .LBB0_58
.LBB0_54:                               //  %if.else427
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x9, 16
	bltu x0, x10, .LBB0_57
.LBB0_55:                               //  %if.else432
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x9, 64
	bltu x0, x10, .LBB0_59
.LBB0_56:                               //  %if.else438
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x9, 512
	bltu x0, x10, .LBB0_60
.LBB0_57:                               //  %if.then430
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x10, 0 ( x10 )
	sw x22, 0 ( x10 )
	mv fp, x24
	lw x10, 0 ( fp )
	bltu x0, x10, .LBB0_6
	jal x0, .LBB0_8
.LBB0_58:                               //  %if.then424
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x10, 0 ( x10 )
	sra x11, x22, 31&31
	sw x11, 4 ( x10 )
	sw x22, 0 ( x10 )
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
	sh x22, 0 ( x10 )
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
	sb x22, 0 ( x10 )
	mv fp, x24
	lw x10, 0 ( fp )
	bltu x0, x10, .LBB0_6
	jal x0, .LBB0_8
.LBB0_61:                               //  %sw.bb187
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x27, fp
	and x10, x9, 8
	bltu x0, x10, .LBB0_63
.LBB0_62:                               //  %if.else194
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	add x11, x10, 8
	lw fp, 0 ( x10 )
	sw x11, 652 ( sp )
	lw x18, 4 ( x10 )
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
	mv fp, x10
	mv x18, x11
.LBB0_64:                               //  %if.end197
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x11, x10, x18
	mv x12, x0
	lui x13, (2146435072>>12)&1048575
	mv x10, fp
	jal __nedf2
	sw fp, 60 ( sp )                //  4-byte Folded Spill
	sw x18, 72 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB0_69
.LBB0_65:                               //  %if.then200
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x22, x0
	mv x13, x22
	mv x10, fp
	mv x11, x18
	mv x12, x22
	jal __ltdf2
	lw x16, 92 ( sp )               //  4-byte Folded Reload
	bge x10, x0, .LBB0_67
.LBB0_66:                               //  %if.then204
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 45
	sw x10, 648 ( sp )
.LBB0_67:                               //  %if.end205
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 72
	add x15, sp, 588
	bltu x26, x10, .LBB0_73
.LBB0_68:                               //  %if.end205
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.1 )
	add fp, x10, %lo( .str.1 )
	jal x0, .LBB0_74
.LBB0_69:                               //  %if.end212
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, fp
	mv x13, x18
	mv x11, x18
	mv x12, fp
	jal __unorddf2
	lw x16, 92 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB0_90
.LBB0_70:                               //  %if.end233
                                        //    in Loop: Header=BB0_8 Depth=2
	or x12, x26, 32
	xor x10, x12, 97
	sw x9, 104 ( sp )               //  4-byte Folded Spill
	sw x16, 92 ( sp )               //  4-byte Folded Spill
	sw x12, 68 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB0_119
.LBB0_71:                               //  %if.then239
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 97
	beq x26, x10, .LBB0_146
.LBB0_72:                               //  %if.then239
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 88
	jal x0, .LBB0_147
.LBB0_73:                               //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str )
	add fp, x10, %lo( .str )
.LBB0_74:                               //  %if.end205
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x11, x22
	add x5, x0, 3
	and x9, x9, -129
	sw x22, 76 ( sp )               //  4-byte Folded Spill
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	sw x22, 64 ( sp )               //  4-byte Folded Spill
	mv x10, x11
	mv x18, x11
	bge x5, x11, .LBB0_266
	jal x0, .LBB0_267
.LBB0_75:                               //  %sw.bb124
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x10, 0 ( x10 )
	and x11, x9, 16
	bltu x0, x11, .LBB0_113
.LBB0_76:                               //  %sw.bb124
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x11, x26, 99
	bltu x0, x11, .LBB0_113
.LBB0_77:                               //  %if.then131
                                        //    in Loop: Header=BB0_8 Depth=2
	jal btowc
	lw x16, 92 ( sp )               //  4-byte Folded Reload
	add x15, sp, 588
	xor x11, x10, -1
	bltu x0, x11, .LBB0_114
	jal x0, .LBB0_78
.LBB0_79:                               //  %sw.bb492
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x27, 0 ( x10 )
	sw x0, 648 ( sp )
	beq x0, x27, .LBB0_122
.LBB0_80:                               //  %if.else503
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x9, 16
	bltu x0, x10, .LBB0_125
.LBB0_81:                               //  %if.else503
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x10, x26, 83
	beq x0, x10, .LBB0_125
.LBB0_82:                               //  %if.then509
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x9, 104 ( sp )               //  4-byte Folded Spill
	bge fp, x0, .LBB0_83
.LBB0_491:                              //  %if.then509
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_211
.LBB0_83:                               //  %if.then512
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x12, fp
	mv x11, x0
	mv x10, x27
	jal memchr
	mv x11, x0
	bne x10, x11, .LBB0_84
.LBB0_492:                              //  %if.then512
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_212
.LBB0_84:                               //  %if.then512
                                        //    in Loop: Header=BB0_8 Depth=2
	sub fp, x10, x27
	jal x0, .LBB0_212
.LBB0_85:                               //  %sw.bb147
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x9, 32
	bltu x0, x10, .LBB0_115
.LBB0_86:                               //  %cond.false152
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x9, 16
	bltu x0, x10, .LBB0_130
.LBB0_87:                               //  %cond.false157
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x16, 92 ( sp )               //  4-byte Folded Reload
	and x10, x9, 64
	bltu x0, x10, .LBB0_206
.LBB0_88:                               //  %cond.false164
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x18, 0 ( x10 )
	and x10, x9, 512
	beq x0, x10, .LBB0_131
.LBB0_89:                               //  %cond.true167
                                        //    in Loop: Header=BB0_8 Depth=2
	sll x10, x18, 24&31
	sra x18, x10, 24&31
	sra x22, x18, 31&31
	bge x22, x0, .LBB0_116
	jal x0, .LBB0_132
.LBB0_90:                               //  %cond.true220
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15, sp, 588
	blt x18, x0, .LBB0_151
.LBB0_91:                               //  %if.end226
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 72
	bltu x26, x10, .LBB0_152
.LBB0_92:                               //  %if.end226
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.3 )
	add fp, x10, %lo( .str.3 )
	jal x0, .LBB0_153
.LBB0_93:                               //  %hex.loopexit
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.6 )
	add x16, x10, %lo( .str.6 )
	and x10, x9, 32
	beq x0, x10, .LBB0_109
.LBB0_94:                               //  %cond.true617
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	add x11, x10, 8
	lw x18, 0 ( x10 )
	sw x11, 652 ( sp )
	lw x22, 4 ( x10 )
	and x10, x9, 1
	beq x0, x10, .LBB0_210
.LBB0_95:                               //  %cond.end647
                                        //    in Loop: Header=BB0_8 Depth=2
	or x10, x22, x18
	beq x0, x10, .LBB0_210
.LBB0_96:                               //  %if.then654
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 48
	or x9, x9, 2
	sw x26, 120 ( sp )
	sw x10, 116 ( sp )
	jal x0, .LBB0_210
.LBB0_97:                               //  %sw.bb450
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x9, 32
	bltu x0, x10, .LBB0_142
.LBB0_98:                               //  %cond.false455
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x16, 92 ( sp )               //  4-byte Folded Reload
	and x10, x9, 16
	bltu x0, x10, .LBB0_207
.LBB0_99:                               //  %cond.false460
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x9, 64
	beq x0, x10, .LBB0_100
.LBB0_493:                              //  %cond.false460
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_239
.LBB0_100:                              //  %cond.false467
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x18, 0 ( x10 )
	and x11, x9, 512
	mv x10, x0
	bne x11, x10, .LBB0_101
.LBB0_494:                              //  %cond.false467
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_240
.LBB0_101:                              //  %cond.false467
                                        //    in Loop: Header=BB0_8 Depth=2
	and x18, x18, 255
	jal x0, .LBB0_240
.LBB0_102:                              //  %sw.bb486
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x26, x0, 120
	mv x22, x0
	or x9, x9, 2
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x18, 0 ( x10 )
	add x10, x0, 48
	lui x11, %hi( .str.4 )
	sw x10, 116 ( sp )
	sw x26, 120 ( sp )
	add x10, x0, 2
	add x16, x11, %lo( .str.4 )
	sw x0, 648 ( sp )
	add x11, x0, -1
	blt x11, fp, .LBB0_242
	jal x0, .LBB0_243
.LBB0_103:                              //  %sw.bb578
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x9, 32
	bltu x0, x10, .LBB0_143
.LBB0_104:                              //  %cond.false583
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x16, 92 ( sp )               //  4-byte Folded Reload
	and x10, x9, 16
	bltu x0, x10, .LBB0_208
.LBB0_105:                              //  %cond.false588
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x9, 64
	beq x0, x10, .LBB0_106
.LBB0_495:                              //  %cond.false588
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_454
.LBB0_106:                              //  %cond.false595
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x18, 0 ( x10 )
	and x11, x9, 512
	mv x10, x0
	bne x11, x10, .LBB0_107
.LBB0_496:                              //  %cond.false595
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_455
.LBB0_107:                              //  %cond.false595
                                        //    in Loop: Header=BB0_8 Depth=2
	and x18, x18, 255
	jal x0, .LBB0_455
.LBB0_108:                              //  %hex.loopexit1
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.4 )
	add x16, x10, %lo( .str.4 )
	and x10, x9, 32
	bltu x0, x10, .LBB0_94
.LBB0_109:                              //  %cond.false619
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x9, 16
	bltu x0, x10, .LBB0_144
.LBB0_110:                              //  %cond.false624
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x9, 64
	bltu x0, x10, .LBB0_209
.LBB0_111:                              //  %cond.false631
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x18, 0 ( x10 )
	and x11, x9, 512
	mv x10, x0
	beq x11, x10, .LBB0_145
.LBB0_112:                              //  %cond.false631
                                        //    in Loop: Header=BB0_8 Depth=2
	and x18, x18, 255
	mv x22, x0
	and x10, x9, 1
	bltu x0, x10, .LBB0_95
	jal x0, .LBB0_210
.LBB0_113:                              //    in Loop: Header=BB0_8 Depth=2
	lw x16, 92 ( sp )               //  4-byte Folded Reload
.LBB0_114:                              //  %if.end145
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x22, x0
	sw x10, 124 ( sp )
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	mv x11, x22
	sw x0, 128 ( sp )
	sw x0, 648 ( sp )
	sw x22, 76 ( sp )               //  4-byte Folded Spill
	seqz x5, x0
	sw x22, 64 ( sp )               //  4-byte Folded Spill
	add fp, sp, 124
	mv x10, x11
	mv x18, x11
	bge x5, x11, .LBB0_266
	jal x0, .LBB0_267
.LBB0_115:                              //  %cond.true150
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	lw x16, 92 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 652 ( sp )
	add x11, x10, 8
	lw x18, 0 ( x10 )
	sw x11, 652 ( sp )
	lw x22, 4 ( x10 )
	blt x22, x0, .LBB0_132
.LBB0_116:                              //    in Loop: Header=BB0_8 Depth=2
	seqz x10, x0
	add x11, x0, -1
	blt x11, fp, .LBB0_242
	jal x0, .LBB0_243
.LBB0_117:                              //  %sw.default757
                                        //    in Loop: Header=BB0_8 Depth=2
	bltu x0, x26, .LBB0_118
.LBB0_497:                              //  %sw.default757
	jal x0, .LBB0_484
.LBB0_118:                              //  %if.end761
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x18
	mv x22, x18
	mv x11, x18
	seqz x5, x0
	add fp, sp, 124
	sw x26, 124 ( sp )
	sw x0, 648 ( sp )
	sw x18, 76 ( sp )               //  4-byte Folded Spill
	sw x10, 68 ( sp )               //  4-byte Folded Spill
	sw x10, 64 ( sp )               //  4-byte Folded Spill
	lw x16, 92 ( sp )               //  4-byte Folded Reload
	mv x10, x11
	mv x18, x11
	bge x5, x11, .LBB0_266
	jal x0, .LBB0_267
.LBB0_119:                              //  %if.else261
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, sp, 124
	xor x11, x27, -1
	beq x0, x11, .LBB0_167
.LBB0_120:                              //  %if.else265
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11, x0, 103
	beq x12, x11, .LBB0_168
.LBB0_121:                              //  %if.else265
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x18, x27
	mv x11, x0
	mv x9, x11
	bne x27, x11, .LBB0_169
	jal x0, .LBB0_170
.LBB0_122:                              //  %if.then496
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x16, 92 ( sp )               //  4-byte Folded Reload
	add x10, x0, 6
	bltu fp, x10, .LBB0_124
.LBB0_123:                              //  %if.then496
                                        //    in Loop: Header=BB0_8 Depth=2
	mv fp, x10
.LBB0_124:                              //  %if.then496
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x22, x0
	lui x10, %hi( .str.5 )
	mv x5, fp
	add fp, x10, %lo( .str.5 )
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	mv x11, x22
	jal x0, .LBB0_265
.LBB0_125:                              //  %if.else554
                                        //    in Loop: Header=BB0_8 Depth=2
	bge fp, x0, .LBB0_126
.LBB0_498:                              //  %if.else554
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_219
.LBB0_126:                              //  %if.then557
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x18, x0
	mv x10, x27
	mv x11, x18
	mv x12, fp
	jal wmemchr
	bltu x0, x10, .LBB0_127
.LBB0_499:                              //  %if.then557
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_226
.LBB0_127:                              //  %if.then562
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x10, x10, x27
	sra x10, x10, 2&31
	add x15, sp, 588
	blt fp, x10, .LBB0_129
.LBB0_128:                              //  %if.then562
                                        //    in Loop: Header=BB0_8 Depth=2
	mv fp, x10
.LBB0_129:                              //  %if.then562
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x22, x0
	mv x5, fp
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	mv x11, x22
	sw x22, 76 ( sp )               //  4-byte Folded Spill
	sw x22, 64 ( sp )               //  4-byte Folded Spill
	mv fp, x27
	lw x16, 92 ( sp )               //  4-byte Folded Reload
	mv x10, x11
	mv x18, x11
	bge x5, x11, .LBB0_266
	jal x0, .LBB0_267
.LBB0_130:                              //  %cond.true155
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	lw x16, 92 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x18, 0 ( x10 )
.LBB0_131:                              //  %cond.end177
                                        //    in Loop: Header=BB0_8 Depth=2
	sra x22, x18, 31&31
	bge x22, x0, .LBB0_116
.LBB0_132:                              //  %if.then671.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, -1
	bge x10, fp, .LBB0_134
.LBB0_133:                              //    in Loop: Header=BB0_8 Depth=2
	and x9, x9, -129
.LBB0_134:                              //  %if.then671.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 45
	sw x10, 648 ( sp )
	snez x10, x18
	add x10, x10, x22
	sw x9, 104 ( sp )               //  4-byte Folded Spill
	sub x18, x0, x18
	sub x22, x0, x10
	add x10, x0, 9
	mv x9, x0
	bne x22, x9, .LBB0_259
.LBB0_135:                              //    in Loop: Header=BB0_8 Depth=2
	sltu x10, x10, x18
	sw fp, 96 ( sp )                //  4-byte Folded Spill
	beq x0, x10, .LBB0_260
.LBB0_136:                              //  %if.end697
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	sw x16, 92 ( sp )               //  4-byte Folded Spill
	sw x23, 28 ( sp )               //  4-byte Folded Spill
	sw x0, 600 ( sp )
	and x10, x10, 1024
	bltu x0, x10, .LBB0_154
.LBB0_137:                              //  %do.body698.us.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB0_140
.LBB0_138:                              //  %do.body698.us
                                        //    in Loop: Header=BB0_140 Depth=3
	snez x11, x22
.LBB0_139:                              //  %do.body698.us
                                        //    in Loop: Header=BB0_140 Depth=3
	sub x10, x18, x10
	or x10, x10, 48
	sw x10, -4 ( fp )
	lw x10, 600 ( sp )
	add fp, fp, -4
	mv x18, x23
	mv x22, x27
	add x10, x10, 1
	sw x10, 600 ( sp )
	beq x0, x11, .LBB0_166
.LBB0_140:                              //  %do.body698.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x25, x0, 10
	mv x10, x18
	mv x11, x22
	mv x12, x25
	mv x13, x9
	jal __udivdi3
	mv x12, x25
	mv x13, x9
	mv x23, x10
	mv x27, x11
	jal __muldi3
	bne x22, x9, .LBB0_138
.LBB0_141:                              //    in Loop: Header=BB0_140 Depth=3
	add x11, x0, 9
	sltu x11, x11, x18
	jal x0, .LBB0_139
.LBB0_142:                              //  %cond.true453
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	lw x16, 92 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 652 ( sp )
	add x11, x10, 8
	lw x18, 0 ( x10 )
	sw x11, 652 ( sp )
	lw x22, 4 ( x10 )
	jal x0, .LBB0_241
.LBB0_143:                              //  %cond.true581
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 652 ( sp )
	lw x16, 92 ( sp )               //  4-byte Folded Reload
	add x26, x0, 117
	add x10, x11, 4
	sw x10, 652 ( sp )
	add x10, x11, 8
	lw x18, 0 ( x11 )
	sw x10, 652 ( sp )
	lw x22, 4 ( x11 )
	seqz x10, x0
	sw x0, 648 ( sp )
	add x11, x0, -1
	blt x11, fp, .LBB0_242
	jal x0, .LBB0_243
.LBB0_144:                              //  %cond.true622
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x18, 0 ( x10 )
.LBB0_145:                              //  %cond.end644
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x22, x0
	and x10, x9, 1
	bltu x0, x10, .LBB0_95
	jal x0, .LBB0_210
.LBB0_146:                              //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 120
.LBB0_147:                              //  %if.then239
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x10, 120 ( sp )
	add x10, x0, 48
	sw x10, 116 ( sp )
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	or x10, x10, 2
	sw x10, 104 ( sp )              //  4-byte Folded Spill
	slti x10, x27, 100
	bltu x0, x10, .LBB0_150
.LBB0_148:                              //  %if.then248
                                        //    in Loop: Header=BB0_8 Depth=2
	sll x10, x27, 2&31
	add x11, x10, 4
	mv x10, x25
	jal _malloc_r
	mv x9, x10
	bltu x0, x9, .LBB0_149
.LBB0_500:                              //  %if.then248
	jal x0, .LBB0_488
.LBB0_149:                              //    in Loop: Header=BB0_8 Depth=2
	mv x18, x27
	mv x10, x9
	jal x0, .LBB0_170
.LBB0_150:                              //    in Loop: Header=BB0_8 Depth=2
	mv x9, x0
	add x10, sp, 124
	jal x0, .LBB0_169
.LBB0_151:                              //  %if.then225
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 45
	sw x10, 648 ( sp )
	add x10, x0, 72
	bgeu x26, x10, .LBB0_92
.LBB0_152:                              //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.2 )
	add fp, x10, %lo( .str.2 )
.LBB0_153:                              //  %if.end226
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x22, x0
	add x5, x0, 3
	mv x11, x22
	and x9, x9, -129
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_265
.LBB0_154:                              //    in Loop: Header=BB0_8 Depth=2
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB0_156
.LBB0_155:                              //  %if.end725
                                        //    in Loop: Header=BB0_156 Depth=3
	snez x10, x22
	mv x18, x23
	mv x22, x27
	sw x13, 100 ( sp )              //  4-byte Folded Spill
	beq x0, x10, .LBB0_166
.LBB0_156:                              //  %do.body698
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x25, x0, 10
	mv x9, x0
	mv x10, x18
	mv x11, x22
	mv x12, x25
	mv x13, x9
	jal __udivdi3
	mv x12, x25
	mv x13, x9
	mv x23, x10
	mv x27, x11
	jal __muldi3
	lw x11, 600 ( sp )
	lw x13, 100 ( sp )              //  4-byte Folded Reload
	sub x10, x18, x10
	or x10, x10, 48
	add x12, x11, 1
	sw x10, -4 ( fp )
	sw x12, 600 ( sp )
	lb x11, 0 ( x13 )
	add x10, fp, -4
	bne x12, x11, .LBB0_159
.LBB0_157:                              //  %land.lhs.true709
                                        //    in Loop: Header=BB0_156 Depth=3
	beq x22, x9, .LBB0_160
.LBB0_158:                              //  %land.lhs.true709
                                        //    in Loop: Header=BB0_156 Depth=3
	mv x12, x9
	bltu x0, x12, .LBB0_159
.LBB0_161:                              //  %land.lhs.true709
                                        //    in Loop: Header=BB0_156 Depth=3
	and x11, x11, 255
	xor x11, x11, 127
	beq x0, x11, .LBB0_159
.LBB0_162:                              //  %if.then716
                                        //    in Loop: Header=BB0_156 Depth=3
	lw x10, 644 ( sp )
	sw x0, 600 ( sp )
	mv x11, x0
	sw x10, -8 ( fp )
	lbu x10, 1 ( x13 )
	beq x10, x11, .LBB0_164
.LBB0_163:                              //  %if.then716
                                        //    in Loop: Header=BB0_156 Depth=3
	add x13, x13, 1
.LBB0_164:                              //  %if.then716
                                        //    in Loop: Header=BB0_156 Depth=3
	add fp, fp, -8
	bne x22, x9, .LBB0_155
	jal x0, .LBB0_165
.LBB0_160:                              //    in Loop: Header=BB0_156 Depth=3
	sltiu x12, x18, 10
	beq x0, x12, .LBB0_161
.LBB0_159:                              //    in Loop: Header=BB0_156 Depth=3
	mv fp, x10
	bne x22, x9, .LBB0_155
.LBB0_165:                              //    in Loop: Header=BB0_156 Depth=3
	add x10, x0, 9
	sltu x10, x10, x18
	mv x18, x23
	mv x22, x27
	sw x13, 100 ( sp )              //  4-byte Folded Spill
	bltu x0, x10, .LBB0_156
.LBB0_166:                              //    in Loop: Header=BB0_8 Depth=2
	lw x23, 28 ( sp )               //  4-byte Folded Reload
	lw x25, 88 ( sp )               //  4-byte Folded Reload
	lw x16, 92 ( sp )               //  4-byte Folded Reload
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	add x15, sp, 588
	jal x0, .LBB0_263
.LBB0_167:                              //    in Loop: Header=BB0_8 Depth=2
	add x18, x0, 6
	mv x9, x0
	jal x0, .LBB0_170
.LBB0_168:                              //    in Loop: Header=BB0_8 Depth=2
	seqz x18, x0
	mv x11, x0
	mv x9, x11
	beq x27, x11, .LBB0_170
.LBB0_169:                              //  %if.else265
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x18, x27
.LBB0_170:                              //  %if.end277
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x10, 4 ( sp )
	add x10, x0, 100
	sw x10, 8 ( sp )
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	lw x12, 72 ( sp )               //  4-byte Folded Reload
	add x22, sp, 600
	add x15, sp, 636
	or x27, x10, 256
	add x16, sp, 632
	mv x10, x25
	mv x11, fp
	mv x13, x18
	mv x14, x27
	mv x17, x26
	sw x22, 0 ( sp )
	jal wcvt
	mv fp, x10
	sw x9, 76 ( sp )                //  4-byte Folded Spill
	bltu x0, x9, .LBB0_182
.LBB0_171:                              //  %if.end277
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, sp, 124
	add x15, sp, 588
	beq fp, x10, .LBB0_172
.LBB0_501:                              //  %if.end277
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_220
.LBB0_172:                              //  %if.end277
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 600 ( sp )
	lw x9, 68 ( sp )                //  4-byte Folded Reload
	slti x11, x10, 101
	bltu x0, x11, .LBB0_175
.LBB0_173:                              //  %if.then290
                                        //    in Loop: Header=BB0_8 Depth=2
	sll x11, x10, 2&31
	mv x10, x25
	jal _malloc_r
	bltu x0, x10, .LBB0_174
.LBB0_502:                              //  %if.then290
	jal x0, .LBB0_78
.LBB0_174:                              //  %if.end300
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 600 ( sp )
	lw x12, 72 ( sp )               //  4-byte Folded Reload
	sw x10, 76 ( sp )               //  4-byte Folded Spill
	sw x10, 4 ( sp )
	sw x11, 8 ( sp )
	lw x11, 60 ( sp )               //  4-byte Folded Reload
	add x15, sp, 636
	add x16, sp, 632
	mv x10, x25
	mv x13, x18
	mv x14, x27
	mv x17, x26
	sw x22, 0 ( sp )
	jal wcvt
	mv fp, x10
	add x15, sp, 588
.LBB0_175:                              //  %if.end303
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x10, x9, 103
	bltu x0, x10, .LBB0_183
.LBB0_176:                              //  %if.then309
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x17, 632 ( sp )
	lw x16, 92 ( sp )               //  4-byte Folded Reload
	slti x10, x17, -3
	bltu x0, x10, .LBB0_187
.LBB0_177:                              //  %if.then309
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x18, x17, .LBB0_187
.LBB0_178:                              //    in Loop: Header=BB0_8 Depth=2
	lw x12, 104 ( sp )              //  4-byte Folded Reload
	jal x0, .LBB0_179
.LBB0_182:                              //    in Loop: Header=BB0_8 Depth=2
	lw x9, 68 ( sp )                //  4-byte Folded Reload
	add x15, sp, 588
	xor x10, x9, 103
	beq x0, x10, .LBB0_176
.LBB0_183:                              //  %if.else319
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x16, 92 ( sp )               //  4-byte Folded Reload
	xor x10, x26, 70
	bltu x0, x10, .LBB0_190
.LBB0_184:                              //  %if.else340.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x17, 632 ( sp )
	lw x12, 104 ( sp )              //  4-byte Folded Reload
	and x10, x12, 1
	or x10, x18, x10
	bge x0, x17, .LBB0_185
.LBB0_503:                              //  %if.else340.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_223
.LBB0_185:                              //  %if.end385.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x14, x0
	bne x10, x14, .LBB0_186
.LBB0_504:                              //  %if.end385.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_458
.LBB0_186:                              //  %if.end385.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	add x5, x18, 2
	jal x0, .LBB0_459
.LBB0_187:                              //  %if.then309.if.then327_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	add x26, x26, -2
	or x9, x26, 32
	add x10, x0, 97
	beq x9, x10, .LBB0_192
.LBB0_188:                              //  %if.then327
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x11, x26
	seqz x5, x0
	add x12, x17, -1
	bge x17, x5, .LBB0_193
.LBB0_189:                              //    in Loop: Header=BB0_8 Depth=2
	add x13, x0, 45
	sub x10, x5, x17
	jal x0, .LBB0_194
.LBB0_190:                              //  %if.end324
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 101
	bltu x10, x26, .LBB0_221
.LBB0_191:                              //  %if.end324.if.then327_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x17, 632 ( sp )
	add x10, x0, 97
	bne x9, x10, .LBB0_188
.LBB0_192:                              //    in Loop: Header=BB0_8 Depth=2
	add x11, x26, 15
	seqz x5, x0
	add x12, x17, -1
	blt x17, x5, .LBB0_189
.LBB0_193:                              //  %if.then327
                                        //    in Loop: Header=BB0_8 Depth=2
	add x13, x0, 43
	mv x10, x12
.LBB0_194:                              //  %if.then327
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x11, 604 ( sp )
	slti x11, x10, 10
	sw x12, 632 ( sp )
	sw x13, 608 ( sp )
	sw x23, 28 ( sp )               //  4-byte Folded Spill
	bltu x0, x11, .LBB0_202
.LBB0_195:                              //  %do.body.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x18, x27
	lw x27, 36 ( sp )               //  4-byte Folded Reload
	mv x12, x0
	add x13, sp, 684
	mv x25, x5
.LBB0_196:                              //  %do.body.i
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	mv x11, x21
	mv x9, x10
	mv x22, x12
	mv x23, x13
	jal __divsi3
	hackaton_custom_instr_c x11, x21, x10
	sub x11, x9, x11
	add x11, x11, 48
	sw x11, 0 ( x27 )
	add x13, x23, -4
	add x12, x22, 1
	add x27, x27, -4
	add x25, x25, -1
	add x14, x0, 99
	blt x14, x9, .LBB0_196
.LBB0_197:                              //  %do.end.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x12, x10, 48
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	lw x16, 92 ( sp )               //  4-byte Folded Reload
	lw x14, 104 ( sp )              //  4-byte Folded Reload
	sw x12, 0 ( x27 )
	add x13, x25, -2
	add x15, sp, 588
	mv x27, x18
	seqz x5, x0
	bge x13, x0, .LBB0_205
.LBB0_198:                              //  %for.inc.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	sw x12, 612 ( sp )
	xor x12, x25, 1
	beq x0, x12, .LBB0_205
.LBB0_199:                              //  %for.inc.for.inc_crit_edge.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, sp, 620
	sw x11, 616 ( sp )
	beq x0, x25, .LBB0_205
.LBB0_200:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, sp, 620
.LBB0_201:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x11, 0 ( x23 )
	add x23, x23, 4
	add x22, x22, -1
	sw x11, 0 ( x10 )
	add x10, x10, 4
	bltu x0, x22, .LBB0_201
	jal x0, .LBB0_205
.LBB0_202:                              //  %if.else17.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 40 ( sp )               //  4-byte Folded Reload
	xor x12, x9, 97
	beq x0, x12, .LBB0_204
.LBB0_203:                              //  %if.then19.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11, x0, 48
	sw x11, 612 ( sp )
	lw x11, 32 ( sp )               //  4-byte Folded Reload
.LBB0_204:                              //  %if.end21.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14, 104 ( sp )              //  4-byte Folded Reload
	add x10, x10, 48
	sw x10, 0 ( x11 )
	add x10, x11, 4
.LBB0_205:                              //  %wexponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 600 ( sp )
	and x13, x14, 1
	mv x22, x0
	lw x23, 28 ( sp )               //  4-byte Folded Reload
	slt x12, x5, x11
	or x12, x12, x13
	add x13, sp, 604
	sub x10, x10, x13
	sra x10, x10, 2&31
	sw x10, 48 ( sp )               //  4-byte Folded Spill
	add x10, x11, x10
	lw x25, 88 ( sp )               //  4-byte Folded Reload
	add x5, x12, x10
	and x27, x27, -1025
	mv x14, x22
	mv x17, x22
	jal x0, .LBB0_461
.LBB0_206:                              //  %cond.true160
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x10, 0 ( x10 )
	sll x10, x10, 16&31
	sra x18, x10, 16&31
	sra x22, x18, 31&31
	bge x22, x0, .LBB0_116
	jal x0, .LBB0_132
.LBB0_207:                              //  %cond.true458
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x18, 0 ( x10 )
	jal x0, .LBB0_240
.LBB0_208:                              //  %cond.true586
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lw x18, 0 ( x10 )
	jal x0, .LBB0_455
.LBB0_209:                              //  %cond.true627
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lhu x18, 0 ( x10 )
	mv x22, x0
	and x10, x9, 1
	bltu x0, x10, .LBB0_95
.LBB0_210:                              //  %if.end658
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 2
	and x9, x9, -1025
	sw x0, 648 ( sp )
	add x11, x0, -1
	bge x11, fp, .LBB0_243
.LBB0_242:                              //    in Loop: Header=BB0_8 Depth=2
	and x9, x9, -129
.LBB0_243:                              //  %number
                                        //    in Loop: Header=BB0_8 Depth=2
	bltu x0, fp, .LBB0_248
.LBB0_244:                              //  %number
                                        //    in Loop: Header=BB0_8 Depth=2
	or x11, x22, x18
	bltu x0, x11, .LBB0_248
.LBB0_245:                              //  %if.else740
                                        //    in Loop: Header=BB0_8 Depth=2
	sw fp, 96 ( sp )                //  4-byte Folded Spill
	bltu x0, x10, .LBB0_252
.LBB0_246:                              //  %if.else740
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x9, 1
	beq x0, x10, .LBB0_252
.LBB0_247:                              //  %if.then747
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 48
	add fp, sp, 520
	sw x10, 520 ( sp )
	jal x0, .LBB0_263
.LBB0_248:                              //  %if.then671
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x0, x10, .LBB0_253
.LBB0_249:                              //  %if.then671
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x11, x10, 1
	beq x0, x11, .LBB0_258
.LBB0_250:                              //  %if.then671
                                        //    in Loop: Header=BB0_8 Depth=2
	sw fp, 96 ( sp )                //  4-byte Folded Spill
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	xor x10, x10, 2
	bltu x0, x10, .LBB0_261
.LBB0_251:                              //  %do.body731
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	and x10, x18, 15
	sll x10, x10, 2&31
	add x10, x10, x16
	lw x10, 0 ( x10 )
	sll x11, x22, 28&31
	srl x22, x22, 4&31
	sw x10, -4 ( fp )
	srl x10, x18, 4&31
	or x18, x11, x10
	add fp, fp, -4
	or x10, x22, x18
	bltu x0, x10, .LBB0_251
	jal x0, .LBB0_263
.LBB0_252:                              //    in Loop: Header=BB0_8 Depth=2
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB0_263
.LBB0_253:                              //  %do.body674.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	sw fp, 96 ( sp )                //  4-byte Folded Spill
	add fp, sp, 520
.LBB0_254:                              //  %do.body674
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sll x11, x22, 29&31
	srl x10, x18, 3&31
	or x10, x11, x10
	and x11, x18, 7
	or x11, x11, 48
	srl x22, x22, 3&31
	sw x11, 0 ( fp )
	add fp, fp, -4
	or x12, x22, x10
	mv x18, x10
	bltu x0, x12, .LBB0_254
.LBB0_255:                              //  %do.end681
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, fp, 4
	and x12, x9, 1
	beq x0, x12, .LBB0_262
.LBB0_256:                              //  %do.end681
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x11, x11, 48
	beq x0, x11, .LBB0_262
.LBB0_257:                              //  %if.then687
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 48
	sw x10, 0 ( fp )
	jal x0, .LBB0_263
.LBB0_258:                              //    in Loop: Header=BB0_8 Depth=2
	sw x9, 104 ( sp )               //  4-byte Folded Spill
	add x10, x0, 9
	mv x9, x0
	beq x22, x9, .LBB0_135
.LBB0_259:                              //  %sw.bb690
                                        //    in Loop: Header=BB0_8 Depth=2
	snez x10, x22
	sw fp, 96 ( sp )                //  4-byte Folded Spill
	bltu x0, x10, .LBB0_136
.LBB0_260:                              //  %if.then693
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x18, 48
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	sw x10, 520 ( sp )
	add fp, sp, 520
	jal x0, .LBB0_263
.LBB0_261:                              //  %sw.default
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str.7 )
	add fp, x10, %lo( .str.7 )
	mv x10, fp
	mv x18, x16
	jal wcslen
	mv x22, x0
	mv x16, x18
	add x15, sp, 588
	mv x5, x10
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_264
.LBB0_262:                              //    in Loop: Header=BB0_8 Depth=2
	mv fp, x10
.LBB0_263:                              //  %if.end750
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	mv x22, x0
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	sub x10, x10, fp
	sra x5, x10, 2&31
.LBB0_264:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 96 ( sp )               //  4-byte Folded Reload
.LBB0_265:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x22, 76 ( sp )               //  4-byte Folded Spill
	sw x22, 64 ( sp )               //  4-byte Folded Spill
	mv x10, x11
	mv x18, x11
	blt x5, x11, .LBB0_267
.LBB0_266:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x5
.LBB0_267:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 648 ( sp )
	sw x9, 104 ( sp )               //  4-byte Folded Spill
	and x9, x9, 2
	sw x22, 56 ( sp )               //  4-byte Folded Spill
	snez x11, x11
	add x11, x11, x10
	srl x10, x9, 1&31
	mv x22, x5
	sw x16, 92 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB0_269
.LBB0_268:                              //    in Loop: Header=BB0_8 Depth=2
	add x11, x11, 2
.LBB0_269:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 104 ( sp )              //  4-byte Folded Reload
	sw x11, 96 ( sp )               //  4-byte Folded Spill
	and x27, x10, 132
	beq x0, x27, .LBB0_270
.LBB0_274:                              //  %if.end828
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 648 ( sp )
	beq x0, x10, .LBB0_292
.LBB0_275:                              //  %if.then830
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x15 )
	add x10, x10, 4
	sw x10, 8 ( x15 )
	add x10, x0, 4
	sw x10, 4 ( x19 )
	add x10, sp, 648
	sw x10, 0 ( x19 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_289
.LBB0_276:                              //  %if.then840
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x19, sp, 524
	beq x0, x10, .LBB0_292
	jal x0, .LBB0_277
.LBB0_270:                              //  %if.then782
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	mv x25, x23
	sub x23, x20, x10
	bge x0, x23, .LBB0_291
.LBB0_271:                              //  %while.cond787.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 108 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x19 )
	slti x10, x23, 17
	beq x0, x10, .LBB0_285
	jal x0, .LBB0_272
.LBB0_283:                              //    in Loop: Header=BB0_285 Depth=3
	add x19, x19, 8
.LBB0_284:                              //  %if.end806
                                        //    in Loop: Header=BB0_285 Depth=3
	lw x10, 108 ( sp )              //  4-byte Folded Reload
	add x23, x23, -16
	sw x10, 0 ( x19 )
	add x10, x0, 16
	bge x10, x23, .LBB0_272
.LBB0_285:                              //  %while.body790
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x15 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	add x10, x0, 64
	sw x10, 4 ( x19 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_283
.LBB0_286:                              //  %if.then800
                                        //    in Loop: Header=BB0_285 Depth=3
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x25
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x19, sp, 524
	beq x0, x10, .LBB0_284
	jal x0, .LBB0_287
.LBB0_289:                              //    in Loop: Header=BB0_8 Depth=2
	add x19, x19, 8
	bltu x0, x9, .LBB0_293
	jal x0, .LBB0_295
.LBB0_272:                              //  %while.end808
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	sll x10, x23, 2&31
	sw x10, 4 ( x19 )
	add x11, x10, x11
	lw x10, 592 ( sp )
	sw x11, 8 ( x15 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_290
.LBB0_273:                              //  %if.then820
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x23, x25
	mv x11, x23
	mv x12, x15
	mv x25, x10
	jal __ssprint_r
	add x15, sp, 588
	add x19, sp, 524
	beq x0, x10, .LBB0_274
	jal x0, .LBB0_277
.LBB0_290:                              //    in Loop: Header=BB0_8 Depth=2
	add x19, x19, 8
.LBB0_291:                              //    in Loop: Header=BB0_8 Depth=2
	mv x23, x25
	lw x25, 88 ( sp )               //  4-byte Folded Reload
	lw x10, 648 ( sp )
	bltu x0, x10, .LBB0_275
.LBB0_292:                              //  %if.end847
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x0, x9, .LBB0_295
.LBB0_293:                              //  %if.then850
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x15 )
	add x10, x10, 8
	sw x10, 8 ( x15 )
	add x10, x0, 8
	sw x10, 4 ( x19 )
	add x10, sp, 116
	sw x10, 0 ( x19 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_315
.LBB0_294:                              //  %if.then861
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x19, sp, 524
	beq x0, x10, .LBB0_295
.LBB0_505:                              //  %if.then861
	jal x0, .LBB0_277
.LBB0_295:                              //  %if.end868
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x10, x27, 128
	bltu x0, x10, .LBB0_316
.LBB0_296:                              //  %if.then872
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	add x27, x0, 64
	sub x9, x20, x10
	bge x0, x9, .LBB0_300
.LBB0_297:                              //  %while.cond877.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x19 )
	slti x10, x9, 17
	beq x0, x10, .LBB0_309
	jal x0, .LBB0_298
.LBB0_307:                              //    in Loop: Header=BB0_309 Depth=3
	add x19, x19, 8
.LBB0_308:                              //  %if.end896
                                        //    in Loop: Header=BB0_309 Depth=3
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	add x9, x9, -16
	sw x10, 0 ( x19 )
	add x10, x0, 16
	bge x10, x9, .LBB0_298
.LBB0_309:                              //  %while.body880
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x15 )
	sw x27, 4 ( x19 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_307
.LBB0_310:                              //  %if.then890
                                        //    in Loop: Header=BB0_309 Depth=3
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x19, sp, 524
	beq x0, x10, .LBB0_308
	jal x0, .LBB0_277
.LBB0_298:                              //  %while.end898
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	sll x10, x9, 2&31
	sw x10, 4 ( x19 )
	add x11, x10, x11
	lw x10, 592 ( sp )
	sw x11, 8 ( x15 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_333
.LBB0_299:                              //  %if.then910
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x19, sp, 524
	beq x0, x10, .LBB0_300
.LBB0_506:                              //  %if.then910
	jal x0, .LBB0_277
.LBB0_300:                              //  %if.end918
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x9, x18, x22
	bge x0, x9, .LBB0_317
.LBB0_301:                              //  %while.cond923.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x19 )
	slti x10, x9, 17
	beq x0, x10, .LBB0_313
	jal x0, .LBB0_302
.LBB0_311:                              //    in Loop: Header=BB0_313 Depth=3
	add x19, x19, 8
.LBB0_312:                              //  %if.end942
                                        //    in Loop: Header=BB0_313 Depth=3
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	add x9, x9, -16
	sw x10, 0 ( x19 )
	add x10, x0, 16
	bge x10, x9, .LBB0_302
.LBB0_313:                              //  %while.body926
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x15 )
	sw x27, 4 ( x19 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_311
.LBB0_314:                              //  %if.then936
                                        //    in Loop: Header=BB0_313 Depth=3
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x19, sp, 524
	beq x0, x10, .LBB0_312
	jal x0, .LBB0_277
.LBB0_302:                              //  %while.end944
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	sll x10, x9, 2&31
	sw x10, 4 ( x19 )
	add x11, x10, x11
	lw x10, 592 ( sp )
	sw x11, 8 ( x15 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_325
.LBB0_303:                              //  %if.then956
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	add x15, sp, 588
	add x19, sp, 524
	beq x0, x10, .LBB0_304
.LBB0_507:                              //  %if.then956
	jal x0, .LBB0_277
.LBB0_304:                              //  %if.end963
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x9, 256
	bltu x0, x10, .LBB0_318
.LBB0_305:                              //  %if.then967
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	sll x10, x22, 2&31
	sw x10, 4 ( x19 )
	sw fp, 0 ( x19 )
	add x11, x10, x11
	lw x10, 592 ( sp )
	sw x11, 8 ( x15 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_326
.LBB0_306:                              //  %if.then979
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	lw x22, 80 ( sp )               //  4-byte Folded Reload
	lw x26, 96 ( sp )               //  4-byte Folded Reload
	add x15, sp, 588
	add x19, sp, 524
	mv x18, x0
	beq x0, x10, .LBB0_467
	jal x0, .LBB0_278
.LBB0_315:                              //    in Loop: Header=BB0_8 Depth=2
	add x19, x19, 8
	xor x10, x27, 128
	beq x0, x10, .LBB0_296
.LBB0_316:                              //    in Loop: Header=BB0_8 Depth=2
	add x27, x0, 64
	sub x9, x18, x22
	blt x0, x9, .LBB0_301
.LBB0_317:                              //    in Loop: Header=BB0_8 Depth=2
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	and x10, x9, 256
	beq x0, x10, .LBB0_305
.LBB0_318:                              //  %if.else986
                                        //    in Loop: Header=BB0_8 Depth=2
	sltiu x10, x26, 102
	bltu x0, x10, .LBB0_327
.LBB0_319:                              //  %if.then989
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	mv x18, x0
	mv x13, x18
	mv x12, x18
	jal __nedf2
	bltu x0, x10, .LBB0_339
.LBB0_320:                              //  %if.then993
                                        //    in Loop: Header=BB0_8 Depth=2
	add x12, sp, 588
	lw x10, 8 ( x12 )
	lw x26, 96 ( sp )               //  4-byte Folded Reload
	add x10, x10, 4
	sw x10, 8 ( x12 )
	add x10, x0, 4
	sw x10, 4 ( x19 )
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x19 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_345
.LBB0_321:                              //  %if.then1003
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	jal __ssprint_r
	lw x22, 80 ( sp )               //  4-byte Folded Reload
	add x19, sp, 524
	bltu x0, x10, .LBB0_278
.LBB0_322:                              //  %if.end1009
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 600 ( sp )
	and x11, x9, 1
	bltu x0, x11, .LBB0_346
.LBB0_323:                              //  %if.end1009
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 632 ( sp )
	blt x11, x10, .LBB0_346
.LBB0_324:                              //    in Loop: Header=BB0_8 Depth=2
	add x15, sp, 588
	and x10, x9, 4
	beq x0, x10, .LBB0_472
.LBB0_468:                              //  %if.then1673
                                        //    in Loop: Header=BB0_8 Depth=2
	sub fp, x20, x26
	bge x0, fp, .LBB0_472
.LBB0_469:                              //  %while.cond1678.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 108 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x19 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_481
	jal x0, .LBB0_470
.LBB0_479:                              //    in Loop: Header=BB0_481 Depth=3
	add x19, x19, 8
.LBB0_480:                              //  %if.end1697
                                        //    in Loop: Header=BB0_481 Depth=3
	lw x10, 108 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x19 )
	add x10, x0, 16
	bge x10, fp, .LBB0_470
.LBB0_481:                              //  %while.body1681
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x15 )
	sw x27, 4 ( x19 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_479
.LBB0_482:                              //  %if.then1691
                                        //    in Loop: Header=BB0_481 Depth=3
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x19, sp, 524
	beq x0, x10, .LBB0_480
	jal x0, .LBB0_278
.LBB0_325:                              //    in Loop: Header=BB0_8 Depth=2
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	add x19, x19, 8
	and x10, x9, 256
	beq x0, x10, .LBB0_305
	jal x0, .LBB0_318
.LBB0_326:                              //    in Loop: Header=BB0_8 Depth=2
	lw x22, 80 ( sp )               //  4-byte Folded Reload
	lw x26, 96 ( sp )               //  4-byte Folded Reload
	add x19, x19, 8
	mv x18, x0
	and x10, x9, 4
	bltu x0, x10, .LBB0_468
	jal x0, .LBB0_472
.LBB0_327:                              //  %if.else1522
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 4
	sw x10, 4 ( x19 )
	lw x10, 8 ( x15 )
	lw x12, 592 ( sp )
	lw x13, 600 ( sp )
	add x18, x19, 8
	add x11, x10, 4
	add x10, x12, 1
	and x14, x9, 1
	sw fp, 0 ( x19 )
	sw x11, 8 ( x15 )
	sw x10, 592 ( sp )
	bltu x0, x14, .LBB0_334
.LBB0_328:                              //  %if.else1522
                                        //    in Loop: Header=BB0_8 Depth=2
	slti x13, x13, 2
	beq x0, x13, .LBB0_334
.LBB0_329:                              //  %if.else1632
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x22, 80 ( sp )               //  4-byte Folded Reload
	lw x26, 96 ( sp )               //  4-byte Folded Reload
	slti x10, x12, 7
	bltu x0, x10, .LBB0_331
	jal x0, .LBB0_330
.LBB0_470:                              //  %while.end1699
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	sll x10, fp, 2&31
	sw x10, 4 ( x19 )
	add x10, x10, x11
	lw x11, 592 ( sp )
	sw x10, 8 ( x15 )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 592 ( sp )
	bltu x0, x11, .LBB0_473
.LBB0_471:                              //  %if.then1711
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	beq x0, x10, .LBB0_472
	jal x0, .LBB0_278
.LBB0_333:                              //    in Loop: Header=BB0_8 Depth=2
	add x19, x19, 8
	sub x9, x18, x22
	blt x0, x9, .LBB0_301
	jal x0, .LBB0_317
.LBB0_334:                              //  %if.then1528
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x22, 80 ( sp )               //  4-byte Folded Reload
	lw x26, 96 ( sp )               //  4-byte Folded Reload
	slti x12, x12, 7
	bltu x0, x12, .LBB0_337
.LBB0_335:                              //  %if.then1538
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	mv x9, x15
	jal __ssprint_r
	bltu x0, x10, .LBB0_278
.LBB0_336:                              //  %if.then1538.if.end1544_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 592 ( sp )
	lw x11, 8 ( x9 )
	mv x15, x9
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	add x18, sp, 524
.LBB0_337:                              //  %if.end1544
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
	bltu x0, x10, .LBB0_356
.LBB0_338:                              //  %if.then1555
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x18, sp, 524
	beq x0, x10, .LBB0_357
	jal x0, .LBB0_278
.LBB0_339:                              //  %if.else1078
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 632 ( sp )
	lw x26, 96 ( sp )               //  4-byte Folded Reload
	add x15, sp, 588
	bge x0, x10, .LBB0_369
.LBB0_340:                              //  %if.else1185
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 600 ( sp )
	lw x11, 64 ( sp )               //  4-byte Folded Reload
	sll x10, x10, 2&31
	sra x10, x10, 2&31
	mv x9, x11
	blt x11, x10, .LBB0_342
.LBB0_341:                              //  %if.else1185
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x9, x10
.LBB0_342:                              //  %if.else1185
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x22, 56 ( sp )               //  4-byte Folded Reload
	bge x0, x9, .LBB0_374
.LBB0_343:                              //  %if.then1198
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	sll x10, x9, 2&31
	sw x10, 4 ( x19 )
	sw fp, 0 ( x19 )
	add x11, x10, x11
	lw x10, 592 ( sp )
	sw x11, 8 ( x15 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_373
.LBB0_344:                              //  %if.then1210
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x19, sp, 524
	beq x0, x10, .LBB0_374
	jal x0, .LBB0_277
.LBB0_345:                              //    in Loop: Header=BB0_8 Depth=2
	lw x22, 80 ( sp )               //  4-byte Folded Reload
	add x19, x19, 8
	lw x10, 600 ( sp )
	and x11, x9, 1
	beq x0, x11, .LBB0_323
.LBB0_346:                              //  %if.then1015
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15, sp, 588
	lw x11, 8 ( x15 )
	add x11, x11, 4
	sw x11, 8 ( x15 )
	add x11, x0, 4
	sw x11, 4 ( x19 )
	add x11, sp, 640
	sw x11, 0 ( x19 )
	lw x11, 592 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 592 ( sp )
	bltu x0, x11, .LBB0_368
.LBB0_347:                              //  %if.then1025
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	bltu x0, x10, .LBB0_278
.LBB0_348:                              //  %if.then1025.if.end1031_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 600 ( sp )
	add x19, sp, 524
	add x15, sp, 588
	add fp, x10, -1
	bge x0, fp, .LBB0_467
.LBB0_349:                              //  %while.cond1036.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x19 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_354
	jal x0, .LBB0_350
.LBB0_352:                              //    in Loop: Header=BB0_354 Depth=3
	add x19, x19, 8
.LBB0_353:                              //  %if.end1055
                                        //    in Loop: Header=BB0_354 Depth=3
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x19 )
	add x10, x0, 16
	bge x10, fp, .LBB0_350
.LBB0_354:                              //  %while.body1039
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x15 )
	sw x27, 4 ( x19 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_352
.LBB0_355:                              //  %if.then1049
                                        //    in Loop: Header=BB0_354 Depth=3
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x19, sp, 524
	beq x0, x10, .LBB0_353
	jal x0, .LBB0_278
.LBB0_356:                              //    in Loop: Header=BB0_8 Depth=2
	add x18, x18, 8
.LBB0_357:                              //  %if.end1561
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	mv x12, x0
	mv x13, x12
	jal __eqdf2
	beq x0, x10, .LBB0_361
.LBB0_358:                              //  %if.then1564
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 600 ( sp )
	add x15, sp, 588
	lw x12, 8 ( x15 )
	add x10, fp, 4
	sll x11, x11, 2&31
	add x11, x11, -4
	add x12, x11, x12
	sw x12, 8 ( x15 )
	sw x10, 0 ( x18 )
	sw x11, 4 ( x18 )
	jal x0, .LBB0_359
.LBB0_361:                              //  %if.else1585
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 600 ( sp )
	add x15, sp, 588
	add fp, x10, -1
	bge x0, fp, .LBB0_331
.LBB0_362:                              //  %while.cond1590.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x18 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_366
	jal x0, .LBB0_363
.LBB0_364:                              //    in Loop: Header=BB0_366 Depth=3
	add x18, x18, 8
.LBB0_365:                              //  %if.end1609
                                        //    in Loop: Header=BB0_366 Depth=3
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x18 )
	add x10, x0, 16
	bge x10, fp, .LBB0_363
.LBB0_366:                              //  %while.body1593
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x15 )
	sw x27, 4 ( x18 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_364
.LBB0_367:                              //  %if.then1603
                                        //    in Loop: Header=BB0_366 Depth=3
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x18, sp, 524
	beq x0, x10, .LBB0_365
	jal x0, .LBB0_278
.LBB0_368:                              //    in Loop: Header=BB0_8 Depth=2
	add x19, x19, 8
	add fp, x10, -1
	blt x0, fp, .LBB0_349
	jal x0, .LBB0_467
.LBB0_369:                              //  %if.then1081
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	add x11, x11, 4
	sw x11, 8 ( x15 )
	add x11, x0, 4
	sw x11, 4 ( x19 )
	lw x11, 44 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x19 )
	lw x11, 592 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 592 ( sp )
	bltu x0, x11, .LBB0_384
.LBB0_370:                              //  %if.then1091
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	lw x22, 80 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB0_278
.LBB0_371:                              //  %if.then1091.if.end1097_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 632 ( sp )
	add x19, sp, 524
	add x15, sp, 588
	jal x0, .LBB0_385
.LBB0_363:                              //  %while.end1611
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	sll x10, fp, 2&31
	sw x10, 4 ( x18 )
	add x11, x10, x11
	sw x11, 8 ( x15 )
.LBB0_359:                              //  %if.then1564
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_360
.LBB0_330:                              //  %if.then1578
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x18, sp, 524
	beq x0, x10, .LBB0_331
	jal x0, .LBB0_278
.LBB0_360:                              //    in Loop: Header=BB0_8 Depth=2
	add x18, x18, 8
.LBB0_331:                              //  %if.end1649
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 48 ( sp )               //  4-byte Folded Reload
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
	bltu x0, x10, .LBB0_372
.LBB0_332:                              //  %if.then1662
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x19, sp, 524
	mv x18, x0
	beq x0, x10, .LBB0_467
	jal x0, .LBB0_278
.LBB0_372:                              //    in Loop: Header=BB0_8 Depth=2
	add x19, x18, 8
	mv x18, x0
	and x10, x9, 4
	bltu x0, x10, .LBB0_468
	jal x0, .LBB0_472
.LBB0_373:                              //    in Loop: Header=BB0_8 Depth=2
	add x19, x19, 8
.LBB0_374:                              //  %if.end1217
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x18, x9, .LBB0_376
.LBB0_375:                              //  %if.end1217
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x9, x18
.LBB0_376:                              //  %if.end1217
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 64 ( sp )               //  4-byte Folded Reload
	sub x9, x10, x9
	bge x0, x9, .LBB0_390
.LBB0_377:                              //  %while.cond1228.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x19 )
	slti x10, x9, 17
	beq x0, x10, .LBB0_382
	jal x0, .LBB0_378
.LBB0_380:                              //    in Loop: Header=BB0_382 Depth=3
	add x19, x19, 8
.LBB0_381:                              //  %if.end1247
                                        //    in Loop: Header=BB0_382 Depth=3
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	add x9, x9, -16
	sw x10, 0 ( x19 )
	add x10, x0, 16
	bge x10, x9, .LBB0_378
.LBB0_382:                              //  %while.body1231
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x15 )
	sw x27, 4 ( x19 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_380
.LBB0_383:                              //  %if.then1241
                                        //    in Loop: Header=BB0_382 Depth=3
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x19, sp, 524
	beq x0, x10, .LBB0_381
	jal x0, .LBB0_277
.LBB0_378:                              //  %while.end1249
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	sll x10, x9, 2&31
	sw x10, 4 ( x19 )
	add x11, x10, x11
	lw x10, 592 ( sp )
	sw x11, 8 ( x15 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_389
.LBB0_379:                              //  %if.then1261
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	lw x11, 104 ( sp )              //  4-byte Folded Reload
	lw x9, 68 ( sp )                //  4-byte Folded Reload
	add x15, sp, 588
	add x19, sp, 524
	beq x0, x10, .LBB0_391
	jal x0, .LBB0_277
.LBB0_384:                              //    in Loop: Header=BB0_8 Depth=2
	lw x22, 80 ( sp )               //  4-byte Folded Reload
	add x19, x19, 8
.LBB0_385:                              //  %if.end1097
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 600 ( sp )
	and x11, x9, 1
	or x11, x11, x10
	or x11, x12, x11
	beq x0, x11, .LBB0_467
.LBB0_386:                              //  %if.then1104
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	add x11, x11, 4
	sw x11, 8 ( x15 )
	add x11, x0, 4
	sw x11, 4 ( x19 )
	add x11, sp, 640
	sw x11, 0 ( x19 )
	lw x11, 592 ( sp )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 592 ( sp )
	bltu x0, x11, .LBB0_429
.LBB0_387:                              //  %if.then1114
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	bltu x0, x10, .LBB0_278
.LBB0_388:                              //  %if.then1114.if.end1120_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 632 ( sp )
	add x11, sp, 524
	add x15, sp, 588
	bge x10, x0, .LBB0_465
	jal x0, .LBB0_430
.LBB0_211:                              //  %if.else522
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x27
	jal strlen
	mv fp, x10
.LBB0_212:                              //  %if.end524
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x11, fp
	sltiu x12, fp, 100
	sll x13, fp, 2&31
	sw x11, 96 ( sp )               //  4-byte Folded Spill
	bltu x0, x12, .LBB0_215
.LBB0_213:                              //  %if.then527
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11, x13, 4
	mv x10, x25
	mv x9, x13
	jal _malloc_r
	mv fp, x10
	beq x0, fp, .LBB0_488
.LBB0_214:                              //    in Loop: Header=BB0_8 Depth=2
	sw fp, 76 ( sp )                //  4-byte Folded Spill
	add x15, sp, 588
	mv x13, x9
	jal x0, .LBB0_216
.LBB0_215:                              //  %if.end541
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x0
	add fp, sp, 124
	add x15, sp, 588
	sw x10, 76 ( sp )               //  4-byte Folded Spill
	beq x0, x11, .LBB0_218
.LBB0_216:                              //  %for.body.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	mv x10, fp
.LBB0_217:                              //  %for.body
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lb x12, 0 ( x27 )
	add x27, x27, 1
	add x11, x11, -1
	sw x12, 0 ( x10 )
	add x10, x10, 4
	bltu x0, x11, .LBB0_217
.LBB0_218:                              //  %cleanup550.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x13, fp
	lw x5, 96 ( sp )                //  4-byte Folded Reload
	lw x16, 92 ( sp )               //  4-byte Folded Reload
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	sw x18, 64 ( sp )               //  4-byte Folded Spill
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	sw x0, 0 ( x10 )
	mv x11, x18
	mv x22, x18
	mv x10, x11
	mv x18, x11
	bge x5, x11, .LBB0_266
	jal x0, .LBB0_267
.LBB0_219:                              //  %if.else573
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x27
	jal wcslen
	mv x22, x0
	mv x5, x10
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	mv x11, x22
	sw x22, 76 ( sp )               //  4-byte Folded Spill
	sw x22, 64 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_227
.LBB0_389:                              //    in Loop: Header=BB0_8 Depth=2
	add x19, x19, 8
.LBB0_390:                              //    in Loop: Header=BB0_8 Depth=2
	lw x11, 104 ( sp )              //  4-byte Folded Reload
	lw x9, 68 ( sp )                //  4-byte Folded Reload
.LBB0_391:                              //  %cleanup.cont1271
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 64 ( sp )               //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x18, x10, fp
	and x10, x11, 1024
	bltu x0, x10, .LBB0_393
.LBB0_392:                              //  %cleanup.cont1271.if.end1404_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 600 ( sp )
	lw x22, 80 ( sp )               //  4-byte Folded Reload
	mv x9, x18
	jal x0, .LBB0_398
.LBB0_393:                              //  %while.cond1276.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x0, x9, .LBB0_403
.LBB0_394:                              //  %while.cond1276.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x0, x22, .LBB0_403
.LBB0_395:                              //  %while.end1397
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 600 ( sp )
	sll x11, x10, 2&31
	add x9, x11, fp
	bltu x9, x18, .LBB0_397
.LBB0_396:                              //  %while.end1397
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x9, x18
.LBB0_397:                              //  %while.end1397
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x25, 88 ( sp )               //  4-byte Folded Reload
	lw x22, 80 ( sp )               //  4-byte Folded Reload
	lw x26, 96 ( sp )               //  4-byte Folded Reload
.LBB0_398:                              //  %if.end1404
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 104 ( sp )              //  4-byte Folded Reload
	lw x11, 632 ( sp )
	mv x18, x0
	and x12, x12, 1
	bltu x0, x12, .LBB0_400
.LBB0_399:                              //  %if.end1404
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x11, x10, .LBB0_438
.LBB0_400:                              //  %if.then1410
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 8 ( x15 )
	add x12, x12, 4
	sw x12, 8 ( x15 )
	add x12, x0, 4
	sw x12, 4 ( x19 )
	add x12, sp, 640
	sw x12, 0 ( x19 )
	lw x12, 592 ( sp )
	add x13, x12, 1
	slti x12, x12, 7
	sw x13, 592 ( sp )
	bltu x0, x12, .LBB0_437
.LBB0_401:                              //  %if.then1420
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	bltu x0, x10, .LBB0_278
.LBB0_402:                              //  %if.then1420.if.end1427_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 632 ( sp )
	lw x10, 600 ( sp )
	add x19, sp, 524
	add x15, sp, 588
	jal x0, .LBB0_438
.LBB0_220:                              //    in Loop: Header=BB0_8 Depth=2
	lw x9, 68 ( sp )                //  4-byte Folded Reload
	xor x10, x9, 103
	bltu x0, x10, .LBB0_508
.LBB0_509:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_176
.LBB0_508:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_183
.LBB0_221:                              //  %if.else340
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x17, 632 ( sp )
	lw x12, 104 ( sp )              //  4-byte Folded Reload
	xor x10, x26, 102
	bltu x0, x10, .LBB0_179
.LBB0_222:                              //  %if.then343
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x12, 1
	or x10, x18, x10
	blt x0, x17, .LBB0_223
.LBB0_510:                              //  %if.then343
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_185
.LBB0_223:                              //  %if.then346
                                        //    in Loop: Header=BB0_8 Depth=2
	add x26, x0, 102
	beq x0, x10, .LBB0_238
.LBB0_224:                              //  %if.then351
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x17, x18
	add x5, x10, 1
	mv x14, x0
	and x10, x12, 1024
	bltu x0, x10, .LBB0_230
	jal x0, .LBB0_460
.LBB0_179:                              //  %if.else366
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 600 ( sp )
	bge x17, x10, .LBB0_225
.LBB0_180:                              //  %if.else375
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x11, x0
	blt x11, x17, .LBB0_228
.LBB0_181:                              //  %if.else375
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11, x0, 2
	sub x11, x11, x17
	jal x0, .LBB0_229
.LBB0_225:                              //  %if.then369
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x12, 1
	add x5, x10, x17
	add x26, x0, 103
	mv x14, x0
	and x10, x12, 1024
	bltu x0, x10, .LBB0_230
	jal x0, .LBB0_460
.LBB0_403:                              //  %while.body1281.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	slt x25, x0, x9
.LBB0_404:                              //  %while.body1281
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_422 Depth 4
	lw x10, 8 ( x15 )
	and x26, x25, 1
	add x10, x10, 4
	sw x10, 8 ( x15 )
	add x10, x0, 4
	sw x10, 4 ( x19 )
	add x10, sp, 644
	sw x10, 0 ( x19 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	sw x11, 592 ( sp )
	bltu x0, x26, .LBB0_406
.LBB0_405:                              //  %while.body1281
                                        //    in Loop: Header=BB0_404 Depth=3
	lw x11, 100 ( sp )              //  4-byte Folded Reload
	add x11, x11, -1
	sw x11, 100 ( sp )              //  4-byte Folded Spill
.LBB0_406:                              //  %while.body1281
                                        //    in Loop: Header=BB0_404 Depth=3
	slti x10, x10, 7
	bltu x0, x10, .LBB0_408
.LBB0_407:                              //  %if.then1299
                                        //    in Loop: Header=BB0_404 Depth=3
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x19, sp, 524
	beq x0, x10, .LBB0_409
	jal x0, .LBB0_288
.LBB0_408:                              //    in Loop: Header=BB0_404 Depth=3
	add x19, x19, 8
.LBB0_409:                              //  %if.end1305
                                        //    in Loop: Header=BB0_404 Depth=3
	lw x10, 600 ( sp )
	lw x11, 100 ( sp )              //  4-byte Folded Reload
	sw x9, 68 ( sp )                //  4-byte Folded Spill
	sll x10, x10, 2&31
	lb x9, 0 ( x11 )
	add x10, x10, fp
	sub x10, x10, x18
	sra x10, x10, 2&31
	blt x9, x10, .LBB0_411
.LBB0_410:                              //  %if.end1305
                                        //    in Loop: Header=BB0_404 Depth=3
	mv x9, x10
.LBB0_411:                              //  %if.end1305
                                        //    in Loop: Header=BB0_404 Depth=3
	bge x0, x9, .LBB0_414
.LBB0_412:                              //  %if.then1320
                                        //    in Loop: Header=BB0_404 Depth=3
	lw x11, 8 ( x15 )
	sll x10, x9, 2&31
	sw x10, 4 ( x19 )
	sw x18, 0 ( x19 )
	add x11, x10, x11
	lw x10, 592 ( sp )
	sw x11, 8 ( x15 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_425
.LBB0_413:                              //  %if.then1332
                                        //    in Loop: Header=BB0_404 Depth=3
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x19, sp, 524
	bltu x0, x10, .LBB0_288
.LBB0_414:                              //  %if.end1339
                                        //    in Loop: Header=BB0_404 Depth=3
	mv x10, x0
	blt x10, x9, .LBB0_416
.LBB0_415:                              //  %if.end1339
                                        //    in Loop: Header=BB0_404 Depth=3
	mv x9, x0
.LBB0_416:                              //  %if.end1339
                                        //    in Loop: Header=BB0_404 Depth=3
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	lb x10, 0 ( x10 )
	sub x9, x10, x9
	bge x0, x9, .LBB0_424
.LBB0_417:                              //  %while.cond1351.preheader
                                        //    in Loop: Header=BB0_404 Depth=3
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x19 )
	slti x10, x9, 17
	beq x0, x10, .LBB0_422
	jal x0, .LBB0_418
.LBB0_420:                              //    in Loop: Header=BB0_422 Depth=4
	add x19, x19, 8
.LBB0_421:                              //  %if.end1370
                                        //    in Loop: Header=BB0_422 Depth=4
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	add x9, x9, -16
	sw x10, 0 ( x19 )
	add x10, x0, 16
	bge x10, x9, .LBB0_418
.LBB0_422:                              //  %while.body1354
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_404 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	lw x10, 8 ( x15 )
	sw x27, 4 ( x19 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_420
.LBB0_423:                              //  %if.then1364
                                        //    in Loop: Header=BB0_422 Depth=4
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x19, sp, 524
	beq x0, x10, .LBB0_421
	jal x0, .LBB0_288
.LBB0_418:                              //  %while.end1372
                                        //    in Loop: Header=BB0_404 Depth=3
	lw x11, 8 ( x15 )
	sll x10, x9, 2&31
	sw x10, 4 ( x19 )
	add x11, x10, x11
	lw x10, 592 ( sp )
	sw x11, 8 ( x15 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_426
.LBB0_419:                              //  %if.then1384
                                        //    in Loop: Header=BB0_404 Depth=3
	lw x10, 88 ( sp )               //  4-byte Folded Reload
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	lw x9, 68 ( sp )                //  4-byte Folded Reload
	add x15, sp, 588
	add x19, sp, 524
	beq x0, x10, .LBB0_427
	jal x0, .LBB0_288
.LBB0_424:                              //    in Loop: Header=BB0_404 Depth=3
	lw x9, 68 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB0_427
.LBB0_425:                              //    in Loop: Header=BB0_404 Depth=3
	add x19, x19, 8
	mv x10, x0
	bge x10, x9, .LBB0_415
	jal x0, .LBB0_416
.LBB0_426:                              //    in Loop: Header=BB0_404 Depth=3
	lw x9, 68 ( sp )                //  4-byte Folded Reload
	add x19, x19, 8
.LBB0_427:                              //  %cleanup.cont1394
                                        //    in Loop: Header=BB0_404 Depth=3
	xor x10, x25, -1
	and x10, x10, 1
	sub x22, x22, x10
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	sub x9, x9, x26
	slt x25, x0, x9
	lb x10, 0 ( x10 )
	sll x10, x10, 2&31
	add x18, x10, x18
	blt x0, x9, .LBB0_404
.LBB0_428:                              //  %cleanup.cont1394
                                        //    in Loop: Header=BB0_404 Depth=3
	blt x0, x22, .LBB0_404
	jal x0, .LBB0_395
.LBB0_429:                              //    in Loop: Header=BB0_8 Depth=2
	add x11, x19, 8
	bge x10, x0, .LBB0_465
.LBB0_430:                              //  %while.cond1125.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 112 ( sp )              //  4-byte Folded Reload
	sub x9, x0, x10
	sw x12, 0 ( x11 )
	add x12, x0, -17
	bge x12, x10, .LBB0_435
	jal x0, .LBB0_431
.LBB0_433:                              //    in Loop: Header=BB0_435 Depth=3
	add x11, x11, 8
.LBB0_434:                              //  %if.end1144
                                        //    in Loop: Header=BB0_435 Depth=3
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	add x9, x9, -16
	sw x10, 0 ( x11 )
	add x10, x0, 16
	bge x10, x9, .LBB0_431
.LBB0_435:                              //  %while.body1128
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x15 )
	sw x27, 4 ( x11 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	lw x10, 592 ( sp )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 592 ( sp )
	bltu x0, x10, .LBB0_433
.LBB0_436:                              //  %if.then1138
                                        //    in Loop: Header=BB0_435 Depth=3
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x11, sp, 524
	beq x0, x10, .LBB0_434
	jal x0, .LBB0_278
.LBB0_437:                              //    in Loop: Header=BB0_8 Depth=2
	add x19, x19, 8
.LBB0_438:                              //  %if.end1427
                                        //    in Loop: Header=BB0_8 Depth=2
	sll x12, x10, 2&31
	add x12, x12, fp
	sub x12, x12, x9
	sub x10, x10, x11
	sra x12, x12, 2&31
	mv fp, x10
	blt x10, x12, .LBB0_440
.LBB0_439:                              //  %if.end1427
                                        //    in Loop: Header=BB0_8 Depth=2
	mv fp, x12
.LBB0_440:                              //  %if.end1427
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x0, fp, .LBB0_444
.LBB0_441:                              //  %if.then1442
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 8 ( x15 )
	sll x11, fp, 2&31
	sw x11, 4 ( x19 )
	sw x9, 0 ( x19 )
	add x12, x11, x12
	lw x11, 592 ( sp )
	sw x12, 8 ( x15 )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 592 ( sp )
	bltu x0, x11, .LBB0_452
.LBB0_442:                              //  %if.then1454
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB0_278
.LBB0_443:                              //  %if.then1454.if.end1461_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 632 ( sp )
	lw x11, 600 ( sp )
	add x19, sp, 524
	add x15, sp, 588
	sub x10, x11, x10
	bge x18, fp, .LBB0_445
	jal x0, .LBB0_453
.LBB0_444:                              //    in Loop: Header=BB0_8 Depth=2
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	blt x18, fp, .LBB0_453
.LBB0_445:                              //  %if.end1461
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x11, x18
	add fp, x11, x10
	blt x0, fp, .LBB0_446
	jal x0, .LBB0_467
.LBB0_452:                              //    in Loop: Header=BB0_8 Depth=2
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	add x19, x19, 8
	bge x18, fp, .LBB0_445
.LBB0_453:                              //    in Loop: Header=BB0_8 Depth=2
	sub x11, x0, fp
	add fp, x11, x10
	bge x0, fp, .LBB0_467
.LBB0_446:                              //  %while.cond1473.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	sw x10, 0 ( x19 )
	slti x10, fp, 17
	beq x0, x10, .LBB0_450
	jal x0, .LBB0_350
.LBB0_448:                              //    in Loop: Header=BB0_450 Depth=3
	add x19, x19, 8
.LBB0_449:                              //  %if.end1492
                                        //    in Loop: Header=BB0_450 Depth=3
	lw x10, 112 ( sp )              //  4-byte Folded Reload
	add fp, fp, -16
	sw x10, 0 ( x19 )
	add x10, x0, 16
	bge x10, fp, .LBB0_350
.LBB0_450:                              //  %while.body1476
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x15 )
	sw x27, 4 ( x19 )
	add x10, x10, 64
	sw x10, 8 ( x15 )
	lw x10, 592 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	bltu x0, x10, .LBB0_448
.LBB0_451:                              //  %if.then1486
                                        //    in Loop: Header=BB0_450 Depth=3
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x19, sp, 524
	beq x0, x10, .LBB0_449
	jal x0, .LBB0_278
.LBB0_350:                              //  %while.end1057
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x15 )
	sll x10, fp, 2&31
	sw x10, 4 ( x19 )
	add x11, x10, x11
	lw x10, 592 ( sp )
	sw x11, 8 ( x15 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 592 ( sp )
	beq x0, x10, .LBB0_466
.LBB0_351:                              //    in Loop: Header=BB0_8 Depth=2
	add x19, x19, 8
	and x10, x9, 4
	bltu x0, x10, .LBB0_468
	jal x0, .LBB0_472
.LBB0_226:                              //    in Loop: Header=BB0_8 Depth=2
	mv x5, fp
	mv x11, x18
	mv x22, x18
	sw x18, 76 ( sp )               //  4-byte Folded Spill
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	sw x18, 64 ( sp )               //  4-byte Folded Spill
.LBB0_227:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	mv fp, x27
	add x15, sp, 588
	lw x16, 92 ( sp )               //  4-byte Folded Reload
	mv x10, x11
	mv x18, x11
	blt x5, x11, .LBB0_511
.LBB0_512:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_266
.LBB0_511:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_267
.LBB0_228:                              //    in Loop: Header=BB0_8 Depth=2
	seqz x11, x0
.LBB0_229:                              //  %if.else375
                                        //    in Loop: Header=BB0_8 Depth=2
	add x5, x10, x11
	add x26, x0, 103
	mv x14, x0
	and x10, x12, 1024
	beq x0, x10, .LBB0_460
.LBB0_230:                              //  %if.end385
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x0, x17, .LBB0_460
.LBB0_231:                              //  %while.cond392.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 100 ( sp )              //  4-byte Folded Reload
	mv x14, x0
	lb x10, 0 ( x10 )
	xor x11, x10, 127
	beq x0, x11, .LBB0_456
.LBB0_232:                              //  %while.cond392.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x10, x17, .LBB0_456
.LBB0_233:                              //  %if.end401.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x11, x0
	mv x14, x11
	mv x22, x11
.LBB0_234:                              //  %if.end401
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x13, 100 ( sp )              //  4-byte Folded Reload
	lbu x12, 1 ( x13 )
	beq x12, x11, .LBB0_236
.LBB0_235:                              //  %if.end401
                                        //    in Loop: Header=BB0_234 Depth=3
	add x13, x13, 1
.LBB0_236:                              //  %if.end401
                                        //    in Loop: Header=BB0_234 Depth=3
	sub x17, x17, x10
	snez x10, x12
	add x22, x10, x22
	seqz x10, x12
	add x14, x10, x14
	lb x10, 0 ( x13 )
	sw x13, 100 ( sp )              //  4-byte Folded Spill
	xor x12, x10, 127
	beq x0, x12, .LBB0_457
.LBB0_237:                              //  %if.end401
                                        //    in Loop: Header=BB0_234 Depth=3
	blt x10, x17, .LBB0_234
	jal x0, .LBB0_457
.LBB0_456:                              //    in Loop: Header=BB0_8 Depth=2
	mv x22, x14
.LBB0_457:                              //  %while.end412
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x5, x14
	add x5, x22, x10
	jal x0, .LBB0_461
.LBB0_238:                              //    in Loop: Header=BB0_8 Depth=2
	mv x5, x17
	mv x14, x0
	and x10, x12, 1024
	bltu x0, x10, .LBB0_230
	jal x0, .LBB0_460
.LBB0_239:                              //  %cond.true463
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lhu x18, 0 ( x10 )
.LBB0_240:                              //  %cond.end480
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x22, x0
.LBB0_241:                              //  %cond.end483
                                        //    in Loop: Header=BB0_8 Depth=2
	add x26, x0, 111
	mv x10, x0
	and x9, x9, -1025
	sw x0, 648 ( sp )
	add x11, x0, -1
	blt x11, fp, .LBB0_513
.LBB0_514:                              //  %cond.end483
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_243
.LBB0_513:                              //  %cond.end483
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_242
.LBB0_454:                              //  %cond.true591
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 652 ( sp )
	add x11, x10, 4
	sw x11, 652 ( sp )
	lhu x18, 0 ( x10 )
.LBB0_455:                              //  %cond.end608
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x22, x0
	add x26, x0, 117
	seqz x10, x0
	sw x0, 648 ( sp )
	add x11, x0, -1
	bge x11, fp, .LBB0_515
.LBB0_516:                              //  %cond.end608
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_242
.LBB0_515:                              //  %cond.end608
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_243
.LBB0_458:                              //    in Loop: Header=BB0_8 Depth=2
	seqz x5, x0
.LBB0_459:                              //  %if.end385.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	add x26, x0, 102
.LBB0_460:                              //  %if.end417
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x22, x14
.LBB0_461:                              //  %if.end417
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 636 ( sp )
	mv x11, x0
	sw x17, 64 ( sp )               //  4-byte Folded Spill
	sw x14, 68 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB0_463
.LBB0_462:                              //  %if.then419
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 45
	sw x10, 648 ( sp )
.LBB0_463:                              //    in Loop: Header=BB0_8 Depth=2
	mv x9, x27
	mv x10, x11
	mv x18, x11
	blt x5, x11, .LBB0_517
.LBB0_518:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_266
.LBB0_517:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_267
.LBB0_431:                              //  %while.end1146
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12, 8 ( x15 )
	sll x10, x9, 2&31
	sw x10, 4 ( x11 )
	add x12, x10, x12
	lw x10, 592 ( sp )
	sw x12, 8 ( x15 )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 592 ( sp )
	bltu x0, x10, .LBB0_464
.LBB0_432:                              //  %if.then1158
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	add x15, sp, 588
	add x11, sp, 524
	beq x0, x10, .LBB0_465
	jal x0, .LBB0_278
.LBB0_464:                              //    in Loop: Header=BB0_8 Depth=2
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	add x11, x11, 8
.LBB0_465:                              //  %if.end1165
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 600 ( sp )
	lw x12, 8 ( x15 )
	sw fp, 0 ( x11 )
	sll x10, x10, 2&31
	add x12, x10, x12
	sw x10, 4 ( x11 )
	lw x10, 592 ( sp )
	sw x12, 8 ( x15 )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 592 ( sp )
	bltu x0, x10, .LBB0_483
.LBB0_466:                              //  %if.then1069
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	add x19, sp, 524
	bltu x0, x10, .LBB0_278
.LBB0_467:                              //  %if.end1670
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x9, 4
	bltu x0, x10, .LBB0_468
.LBB0_472:                              //  %if.end1719thread-pre-split
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 596 ( sp )
.LBB0_473:                              //  %if.end1719
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x26, x20, .LBB0_475
.LBB0_474:                              //  %if.end1719
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x20, x26
.LBB0_475:                              //  %if.end1719
                                        //    in Loop: Header=BB0_8 Depth=2
	add x22, x22, x20
	beq x0, x10, .LBB0_477
.LBB0_476:                              //  %land.lhs.true1729
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	mv x11, x23
	mv x12, x15
	jal __ssprint_r
	add x15, sp, 588
	bltu x0, x10, .LBB0_278
.LBB0_477:                              //  %if.end1733
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	sw x0, 592 ( sp )
	bltu x0, x11, .LBB0_478
.LBB0_519:                              //  %if.end1733
                                        //    in Loop: Header=BB0_5 Depth=1
	jal x0, .LBB0_5
.LBB0_478:                              //  %if.then1738
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x25
	jal _free_r
	add x15, sp, 588
	add x19, sp, 524
	mv fp, x24
	lw x10, 0 ( fp )
	beq x0, x10, .LBB0_520
.LBB0_521:                              //  %if.then1738
                                        //    in Loop: Header=BB0_5 Depth=1
	jal x0, .LBB0_6
.LBB0_520:                              //  %if.then1738
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_8
.LBB0_483:                              //    in Loop: Header=BB0_8 Depth=2
	add x19, x11, 8
	and x10, x9, 4
	bltu x0, x10, .LBB0_468
	jal x0, .LBB0_472
.LBB0_287:
	mv x23, x25
.LBB0_288:
	lw x25, 88 ( sp )               //  4-byte Folded Reload
.LBB0_277:
	lw x22, 80 ( sp )               //  4-byte Folded Reload
.LBB0_278:                              //  %error
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	beq x0, x11, .LBB0_280
.LBB0_279:                              //  %if.then1751
	mv x10, x25
	jal _free_r
.LBB0_280:                              //  %if.end1752
	lbu x10, 12 ( x23 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB0_282
.LBB0_281:                              //  %if.end1752
	add x22, x0, -1
.LBB0_282:                              //  %cleanup1762
	mv x10, x22
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
.LBB0_484:                              //  %done
	lw x10, 596 ( sp )
	beq x0, x10, .LBB0_486
.LBB0_485:                              //  %land.lhs.true1742
	add x12, sp, 588
	mv x10, x25
	mv x11, x23
	jal __ssprint_r
	bltu x0, x10, .LBB0_280
.LBB0_486:                              //  %if.end1746
	sw x0, 592 ( sp )
	lbu x10, 12 ( x23 )
	mv x11, x0
	and x10, x10, 64
	bne x10, x11, .LBB0_281
	jal x0, .LBB0_282
.LBB0_487:                              //  %if.then9
	add x10, x0, 12
	sw x10, 0 ( x25 )
	jal x0, .LBB0_281
.LBB0_78:                               //  %cleanup
	lh x10, 12 ( x23 )
	or x10, x10, 64
	sh x10, 12 ( x23 )
	lw x22, 80 ( sp )               //  4-byte Folded Reload
	lbu x10, 12 ( x23 )
	mv x11, x0
	and x10, x10, 64
	bne x10, x11, .LBB0_281
	jal x0, .LBB0_282
.LBB0_488:                              //  %if.then254
	lh x10, 12 ( x23 )
	or x10, x10, 64
	sh x10, 12 ( x23 )
	lbu x10, 12 ( x23 )
	mv x11, x0
	and x10, x10, 64
	bne x10, x11, .LBB0_281
	jal x0, .LBB0_282
.Lfunc_end0:
	.size	_svfwprintf_r, .Lfunc_end0-_svfwprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_29
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_31
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_32
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_37
	.long	.LBB0_40
	.long	.LBB0_117
	.long	.LBB0_39
	.long	.LBB0_22
	.long	.LBB0_117
	.long	.LBB0_43
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_61
	.long	.LBB0_117
	.long	.LBB0_75
	.long	.LBB0_117
	.long	.LBB0_61
	.long	.LBB0_61
	.long	.LBB0_61
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_44
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_79
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_93
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_61
	.long	.LBB0_117
	.long	.LBB0_75
	.long	.LBB0_85
	.long	.LBB0_61
	.long	.LBB0_61
	.long	.LBB0_61
	.long	.LBB0_45
	.long	.LBB0_85
	.long	.LBB0_28
	.long	.LBB0_117
	.long	.LBB0_47
	.long	.LBB0_117
	.long	.LBB0_53
	.long	.LBB0_97
	.long	.LBB0_102
	.long	.LBB0_28
	.long	.LBB0_117
	.long	.LBB0_79
	.long	.LBB0_42
	.long	.LBB0_103
	.long	.LBB0_117
	.long	.LBB0_117
	.long	.LBB0_108
	.long	.LBB0_117
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
