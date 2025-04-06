	.text
	.file	"svfscanf.c"
	.globl	__ssvfscanf_r           //  -- Begin function __ssvfscanf_r
	.type	__ssvfscanf_r,@function
__ssvfscanf_r:                          //  @__ssvfscanf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -768
	.cfi_adjust_cfa_offset 768
	sw fp, 752 ( sp )
	.cfi_offset 8, -16
	add fp, sp, 752
	.cfi_def_cfa 8, 16
	sw x18, -12 ( fp )              //  4-byte Folded Spill
	.cfi_offset 18, -28
	mv x18, x11
	sw x19, -16 ( fp )              //  4-byte Folded Spill
	.cfi_offset 19, -32
	mv x19, x10
	lhu x10, 12 ( x18 )
	lui x11, (8192>>12)&1048575
	sw x21, -24 ( fp )              //  4-byte Folded Spill
	.cfi_offset 21, -40
	mv x21, x12
	and x12, x11, x10
	sw ra, -4 ( fp )                //  4-byte Folded Spill
	.cfi_offset 1, -20
	sw x9, -8 ( fp )                //  4-byte Folded Spill
	.cfi_offset 9, -24
	sw x20, -20 ( fp )              //  4-byte Folded Spill
	.cfi_offset 20, -36
	sw x22, -28 ( fp )              //  4-byte Folded Spill
	.cfi_offset 22, -44
	sw x23, -32 ( fp )              //  4-byte Folded Spill
	.cfi_offset 23, -48
	sw x24, -36 ( fp )              //  4-byte Folded Spill
	.cfi_offset 24, -52
	sw x25, -40 ( fp )              //  4-byte Folded Spill
	.cfi_offset 25, -56
	sw x26, -44 ( fp )              //  4-byte Folded Spill
	.cfi_offset 26, -60
	sw x27, -48 ( fp )              //  4-byte Folded Spill
	.cfi_offset 27, -64
	sw x13, -68 ( fp )
	bltu x0, x12, .LBB0_2
.LBB0_1:                                //  %if.then
	or x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 100 ( x18 )
	lui x11, %hi( -8193 )
	add x11, x11, %lo( -8193 )
	and x10, x11, x10
	sw x10, 100 ( x18 )
.LBB0_2:                                //  %do.end
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB0_3
.LBB0_547:                              //  %do.end
	jal x0, .LBB0_515
.LBB0_3:                                //  %land.lhs.true.lr.ph.lr.ph.lr.ph.lr.ph
	add x12, fp, -678
	add x11, x12, 339
	sw x11, -708 ( fp )             //  4-byte Folded Spill
	lui x11, %hi( _ctype_ )
	add x9, x11, %lo( _ctype_ )
	lui x11, %hi( JTI0_0 )
	mv x22, x0
	add x11, x11, %lo( JTI0_0 )
	sw x11, -692 ( fp )             //  4-byte Folded Spill
	add x11, x12, 338
	mv x27, x22
	mv x20, x22
	sw x22, -704 ( fp )             //  4-byte Folded Spill
	sw x22, -700 ( fp )             //  4-byte Folded Spill
	sw x22, -696 ( fp )             //  4-byte Folded Spill
	sw x11, -712 ( fp )             //  4-byte Folded Spill
.LBB0_4:                                //  %land.lhs.true.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_5 Depth 2
                                        //        Child Loop BB0_7 Depth 3
                                        //      Child Loop BB0_15 Depth 2
                                        //      Child Loop BB0_49 Depth 2
                                        //      Child Loop BB0_167 Depth 2
                                        //      Child Loop BB0_268 Depth 2
                                        //      Child Loop BB0_131 Depth 2
                                        //      Child Loop BB0_447 Depth 2
                                        //      Child Loop BB0_428 Depth 2
                                        //      Child Loop BB0_492 Depth 2
                                        //      Child Loop BB0_250 Depth 2
                                        //      Child Loop BB0_358 Depth 2
                                        //      Child Loop BB0_477 Depth 2
                                        //      Child Loop BB0_402 Depth 2
                                        //      Child Loop BB0_100 Depth 2
                                        //      Child Loop BB0_496 Depth 2
                                        //      Child Loop BB0_243 Depth 2
                                        //      Child Loop BB0_343 Depth 2
                                        //      Child Loop BB0_463 Depth 2
                                        //      Child Loop BB0_371 Depth 2
                                        //      Child Loop BB0_82 Depth 2
                                        //      Child Loop BB0_237 Depth 2
	add x11, x10, x9
	add x24, x21, 1
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	beq x0, x11, .LBB0_11
.LBB0_5:                                //  %for.cond15.preheader
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_7 Depth 3
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_7
	jal x0, .LBB0_6
.LBB0_8:                                //  %if.end26
                                        //    in Loop: Header=BB0_7 Depth=3
	add x10, x10, 1
	sw x10, 0 ( x18 )
	lw x10, 4 ( x18 )
	add x20, x20, 1
	add x10, x10, -1
	sw x10, 4 ( x18 )
	blt x0, x10, .LBB0_7
.LBB0_6:                                //  %land.lhs.true18
                                        //    in Loop: Header=BB0_5 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_9
.LBB0_7:                                //  %lor.lhs.false
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_5 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 0 ( x18 )
	lbu x11, 0 ( x10 )
	add x11, x11, x9
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB0_8
.LBB0_9:                                //  %for.end
                                        //    in Loop: Header=BB0_5 Depth=2
	lbu x10, 0 ( x24 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB0_10
.LBB0_548:                              //  %for.end
	jal x0, .LBB0_520
.LBB0_10:                               //  %land.lhs.true
                                        //    in Loop: Header=BB0_5 Depth=2
	add x11, x10, x9
	add x24, x24, 1
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB0_5
.LBB0_11:                               //  %if.end29
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x10, 255
	xor x10, x10, 37
	bltu x0, x10, .LBB0_38
.LBB0_12:                               //  %again.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x25, x0
	mv x23, x25
	lbu x26, 0 ( x24 )
	add x11, x0, 85
	add x10, x26, -37
	bgeu x11, x10, .LBB0_15
	jal x0, .LBB0_520
.LBB0_13:                               //  %sw.bb115
                                        //    in Loop: Header=BB0_15 Depth=2
	and x10, x25, 15
	mv x24, x21
	beq x0, x10, .LBB0_14
.LBB0_549:                              //  %sw.bb115
	jal x0, .LBB0_520
.LBB0_14:                               //  %again
                                        //    in Loop: Header=BB0_15 Depth=2
	lbu x26, 0 ( x24 )
	add x11, x0, 85
	add x10, x26, -37
	bgeu x11, x10, .LBB0_15
.LBB0_550:                              //  %again
	jal x0, .LBB0_520
.LBB0_15:                               //  %again
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, -692 ( fp )             //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x21, x24, 1
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB0_16:                               //  %sw.bb132
                                        //    in Loop: Header=BB0_15 Depth=2
	and x10, x25, 143
	beq x0, x10, .LBB0_17
.LBB0_551:                              //  %sw.bb132
	jal x0, .LBB0_520
.LBB0_17:                               //  %if.end136
                                        //    in Loop: Header=BB0_15 Depth=2
	add x11, x0, 10
	mv x10, x23
	jal __mulsi3
	add x10, x26, x10
	add x23, x10, -48
.LBB0_20:                               //  %if.end88
                                        //    in Loop: Header=BB0_15 Depth=2
	mv x24, x21
	lbu x26, 0 ( x24 )
	add x11, x0, 85
	add x10, x26, -37
	bgeu x11, x10, .LBB0_15
	jal x0, .LBB0_520
.LBB0_18:                               //  %sw.bb84
                                        //    in Loop: Header=BB0_15 Depth=2
	and x10, x25, 15
	beq x0, x10, .LBB0_19
.LBB0_552:                              //  %sw.bb84
	jal x0, .LBB0_520
.LBB0_19:                               //  %if.end88
                                        //    in Loop: Header=BB0_15 Depth=2
	or x25, x25, 2
	jal x0, .LBB0_20
.LBB0_21:                               //  %sw.bb63
                                        //    in Loop: Header=BB0_15 Depth=2
	and x10, x25, 159
	or x10, x23, x10
	beq x0, x10, .LBB0_22
.LBB0_553:                              //  %sw.bb63
	jal x0, .LBB0_520
.LBB0_22:                               //  %if.end69
                                        //    in Loop: Header=BB0_15 Depth=2
	or x25, x25, 16
	mv x23, x0
	jal x0, .LBB0_20
.LBB0_23:                               //  %sw.bb90
                                        //    in Loop: Header=BB0_15 Depth=2
	and x10, x25, 15
	beq x0, x10, .LBB0_24
.LBB0_554:                              //  %sw.bb90
	jal x0, .LBB0_520
.LBB0_24:                               //  %if.end94
                                        //    in Loop: Header=BB0_15 Depth=2
	lbu x10, 1 ( x24 )
	add x11, x0, 104
	beq x10, x11, .LBB0_34
.LBB0_25:                               //  %if.end94
                                        //    in Loop: Header=BB0_15 Depth=2
	add x10, x0, 4
	jal x0, .LBB0_29
.LBB0_26:                               //  %sw.bb71
                                        //    in Loop: Header=BB0_15 Depth=2
	and x10, x25, 15
	beq x0, x10, .LBB0_27
.LBB0_555:                              //  %sw.bb71
	jal x0, .LBB0_520
.LBB0_27:                               //  %if.end75
                                        //    in Loop: Header=BB0_15 Depth=2
	lbu x10, 1 ( x24 )
	add x11, x0, 108
	beq x10, x11, .LBB0_35
.LBB0_28:                               //  %if.end75
                                        //    in Loop: Header=BB0_15 Depth=2
	seqz x10, x0
.LBB0_29:                               //  %if.end75
                                        //    in Loop: Header=BB0_15 Depth=2
	mv x24, x21
	jal x0, .LBB0_37
.LBB0_30:                               //  %sw.bb120
                                        //    in Loop: Header=BB0_15 Depth=2
	and x10, x25, 143
	beq x0, x10, .LBB0_31
.LBB0_556:                              //  %sw.bb120
	jal x0, .LBB0_520
.LBB0_31:                               //  %do.body125
                                        //    in Loop: Header=BB0_15 Depth=2
	bltu x0, x22, .LBB0_33
.LBB0_32:                               //  %if.then127
                                        //    in Loop: Header=BB0_15 Depth=2
	mv x10, sp
	add x22, x10, -16
	mv sp, x22
	sw x0, -12 ( x10 )
	sw x0, -16 ( x10 )
.LBB0_33:                               //  %do.end130
                                        //    in Loop: Header=BB0_15 Depth=2
	or x25, x25, 128
	jal x0, .LBB0_20
.LBB0_34:                               //    in Loop: Header=BB0_15 Depth=2
	add x10, x0, 8
	jal x0, .LBB0_36
.LBB0_35:                               //    in Loop: Header=BB0_15 Depth=2
	add x10, x0, 2
.LBB0_36:                               //    in Loop: Header=BB0_15 Depth=2
	add x24, x24, 2
.LBB0_37:                               //    in Loop: Header=BB0_15 Depth=2
	or x25, x25, x10
	lbu x26, 0 ( x24 )
	add x11, x0, 85
	add x10, x26, -37
	bgeu x11, x10, .LBB0_15
	jal x0, .LBB0_520
.LBB0_38:                               //    in Loop: Header=BB0_4 Depth=1
	mv x21, x24
.LBB0_39:                               //  %literal
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_41
.LBB0_40:                               //  %land.lhs.true43
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_41
.LBB0_557:                              //  %land.lhs.true43
	jal x0, .LBB0_517
.LBB0_41:                               //  %if.end47
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	lbu x11, -1 ( x21 )
	lbu x12, 0 ( x10 )
	beq x12, x11, .LBB0_42
.LBB0_558:                              //  %if.end47
	jal x0, .LBB0_520
.LBB0_42:                               //  %if.end54
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, 1
	sw x10, 0 ( x18 )
	lw x10, 4 ( x18 )
	add x20, x20, 1
	add x10, x10, -1
	sw x10, 4 ( x18 )
.LBB0_43:                               //  %for.cond.outer2899.backedge
                                        //    in Loop: Header=BB0_4 Depth=1
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_520
.LBB0_44:                               //  %sw.epilog.loopexit5282
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24, x0, 4
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_46
.LBB0_45:                               //  %land.lhs.true195
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_46
.LBB0_559:                              //  %land.lhs.true195
	jal x0, .LBB0_517
.LBB0_46:                               //  %if.end199
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 64
	bltu x0, x10, .LBB0_53
.LBB0_47:                               //  %while.cond.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	jal x0, .LBB0_49
.LBB0_48:                               //  %if.then215
                                        //    in Loop: Header=BB0_49 Depth=2
	add x10, x10, 1
	sw x10, 0 ( x18 )
	add x20, x20, 1
.LBB0_49:                               //  %while.cond.preheader
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x11, 0 ( x10 )
	add x11, x11, x9
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	beq x0, x11, .LBB0_53
.LBB0_50:                               //  %while.body
                                        //    in Loop: Header=BB0_49 Depth=2
	lw x11, 4 ( x18 )
	add x11, x11, -1
	sw x11, 4 ( x18 )
	blt x0, x11, .LBB0_48
.LBB0_51:                               //  %if.else218
                                        //    in Loop: Header=BB0_49 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_52
.LBB0_560:                              //  %if.else218
	jal x0, .LBB0_517
.LBB0_52:                               //  %if.else218.if.end223_crit_edge
                                        //    in Loop: Header=BB0_49 Depth=2
	lw x10, 0 ( x18 )
	add x20, x20, 1
	jal x0, .LBB0_49
.LBB0_53:                               //  %if.end224
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 4
	bltu x10, x24, .LBB0_43
.LBB0_54:                               //  %if.end224
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x11, %hi( JTI0_1 )
	sll x10, x24, 2&31
	add x11, x11, %lo( JTI0_1 )
	add x10, x11, x10
	lw x10, 0 ( x10 )
	sw x27, -716 ( fp )             //  4-byte Folded Spill
	jr x10
.LBB0_55:                               //  %sw.bb225
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x24, x0
	bne x23, x24, .LBB0_57
.LBB0_56:                               //    in Loop: Header=BB0_4 Depth=1
	seqz x23, x0
.LBB0_57:                               //  %sw.bb225
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 1
	bltu x0, x10, .LBB0_78
.LBB0_58:                               //  %if.else409
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 16
	bltu x0, x10, .LBB0_236
.LBB0_59:                               //  %if.else442
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB0_291
.LBB0_60:                               //  %if.else503
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -68 ( fp )
	mv x25, x0
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x24, 0 ( x10 )
	jal x0, .LBB0_329
.LBB0_61:                               //  %sw.bb532
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x24, x0
	bne x23, x24, .LBB0_63
.LBB0_62:                               //    in Loop: Header=BB0_4 Depth=1
	add x23, x0, -1
.LBB0_63:                               //  %sw.bb532
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 1
	bltu x0, x10, .LBB0_96
.LBB0_64:                               //  %if.else747
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 16
	bltu x0, x10, .LBB0_240
.LBB0_65:                               //  %if.else785
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB0_295
.LBB0_66:                               //  %if.else846
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -68 ( fp )
	mv x25, x0
	mv x24, x25
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x26, 0 ( x10 )
	jal x0, .LBB0_339
.LBB0_67:                               //  %sw.bb931
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x27, x0
	bne x23, x27, .LBB0_69
.LBB0_68:                               //    in Loop: Header=BB0_4 Depth=1
	add x23, x0, -1
.LBB0_69:                               //  %sw.bb931
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24, fp, -679
	and x10, x25, 1
	bltu x0, x10, .LBB0_116
.LBB0_70:                               //  %if.else1151
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 16
	bltu x0, x10, .LBB0_247
.LBB0_71:                               //  %if.else1183
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	and x10, x25, 128
	bltu x0, x10, .LBB0_299
.LBB0_72:                               //  %if.else1245
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -68 ( fp )
	mv x24, x0
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x25, 0 ( x10 )
	sw x24, -720 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB0_354
.LBB0_73:                               //  %sw.bb1328
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x23, -1
	add x11, x0, 348
	bltu x11, x10, .LBB0_118
.LBB0_74:                               //  %sw.bb1328
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x26, x23
	lui x12, %hi( 3456 )
	add x12, x12, %lo( 3456 )
	or x24, x12, x25
	bltu x0, x26, .LBB0_119
.LBB0_125:                              //    in Loop: Header=BB0_4 Depth=1
	mv x23, x0
	mv x25, x23
	add x27, fp, -678
	add x26, x25, x27
	and x10, x24, 256
	bltu x0, x10, .LBB0_153
	jal x0, .LBB0_156
.LBB0_75:                               //  %sw.bb1491
                                        //    in Loop: Header=BB0_4 Depth=1
	add x26, x23, -1
	add x27, x0, 348
	bltu x27, x26, .LBB0_121
.LBB0_76:                               //  %sw.bb1491
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x24, x23
	jal x0, .LBB0_122
.LBB0_77:                               //  %sw.bb145
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 16
	sw x10, -700 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtoul_r )
	add x10, x10, %lo( _strtoul_r )
	add x24, x0, 3
	sw x10, -704 ( fp )             //  4-byte Folded Spill
	or x25, x25, 512
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_46
	jal x0, .LBB0_45
.LBB0_78:                               //  %if.then232
                                        //    in Loop: Header=BB0_4 Depth=1
	and x12, x25, 16
	sw x12, -724 ( fp )             //  4-byte Folded Spill
	beq x0, x12, .LBB0_254
.LBB0_79:                               //  %while.body298.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x24, x0
	jal __locale_mb_cur_max
	bne x24, x10, .LBB0_82
	jal x0, .LBB0_516
.LBB0_90:                               //    in Loop: Header=BB0_82 Depth=2
	mv x24, x25
	lw x10, 4 ( x18 )
	bge x0, x10, .LBB0_94
.LBB0_80:                               //  %if.end380.us
                                        //    in Loop: Header=BB0_82 Depth=2
	beq x0, x23, .LBB0_320
.LBB0_81:                               //  %while.body298.us
                                        //    in Loop: Header=BB0_82 Depth=2
	jal __locale_mb_cur_max
	bne x24, x10, .LBB0_82
.LBB0_561:                              //  %while.body298.us
	jal x0, .LBB0_516
.LBB0_82:                               //  %if.end303.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	add x25, x24, 1
	add x10, x10, -1
	lb x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	add x10, x11, 1
	sw x10, 0 ( x18 )
	add x10, fp, -678
	add x10, x24, x10
	sb x12, 0 ( x10 )
	lw x10, -696 ( fp )             //  4-byte Folded Reload
	xor x10, x10, 3
	bltu x0, x10, .LBB0_84
.LBB0_83:                               //  %if.end303.us
                                        //    in Loop: Header=BB0_82 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB0_85
.LBB0_84:                               //  %if.then316.us
                                        //    in Loop: Header=BB0_82 Depth=2
	add x10, fp, -60
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB0_85:                               //  %if.end318.us
                                        //    in Loop: Header=BB0_82 Depth=2
	mv x24, x0
	add x12, fp, -678
	add x14, fp, -60
	mv x10, x19
	mv x11, x24
	mv x13, x25
	jal _mbrtowc_r
	xor x11, x10, -2
	sw x10, -696 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB0_90
.LBB0_86:                               //  %if.end318.us
                                        //    in Loop: Header=BB0_82 Depth=2
	beq x0, x10, .LBB0_91
.LBB0_87:                               //  %if.end318.us
                                        //    in Loop: Header=BB0_82 Depth=2
	xor x10, x10, -1
	bltu x0, x10, .LBB0_88
.LBB0_562:                              //  %if.end318.us
	jal x0, .LBB0_516
.LBB0_88:                               //  %if.then334.us
                                        //    in Loop: Header=BB0_82 Depth=2
	lw x10, -696 ( fp )             //  4-byte Folded Reload
	add x20, x20, x25
	xor x10, x10, 3
	bltu x0, x10, .LBB0_92
.LBB0_89:                               //  %if.then334.us
                                        //    in Loop: Header=BB0_82 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB0_93
	jal x0, .LBB0_92
.LBB0_91:                               //  %if.then334.thread.us
                                        //    in Loop: Header=BB0_82 Depth=2
	add x20, x20, x25
.LBB0_92:                               //  %if.then342.us
                                        //    in Loop: Header=BB0_82 Depth=2
	add x23, x23, -1
.LBB0_93:                               //  %if.end368.us
                                        //    in Loop: Header=BB0_82 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_80
.LBB0_94:                               //  %land.lhs.true372.us
                                        //    in Loop: Header=BB0_82 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_80
.LBB0_95:                               //    in Loop: Header=BB0_4 Depth=1
	mv x26, x0
	mv x27, x26
	mv x25, x26
	sw x26, -720 ( fp )             //  4-byte Folded Spill
	bltu x0, x24, .LBB0_563
.LBB0_564:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_389
.LBB0_563:
	jal x0, .LBB0_516
.LBB0_96:                               //  %if.then539
                                        //    in Loop: Header=BB0_4 Depth=1
	and x12, x25, 16
	sw x12, -732 ( fp )             //  4-byte Folded Spill
	beq x0, x12, .LBB0_256
.LBB0_97:                               //  %while.body614.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x24, x0
	jal __locale_mb_cur_max
	bne x24, x10, .LBB0_100
	jal x0, .LBB0_517
.LBB0_98:                               //  %if.end716
                                        //    in Loop: Header=BB0_100 Depth=2
	beq x0, x23, .LBB0_324
.LBB0_99:                               //  %while.body614
                                        //    in Loop: Header=BB0_100 Depth=2
	jal __locale_mb_cur_max
	bne x24, x10, .LBB0_100
.LBB0_565:                              //  %while.body614
	jal x0, .LBB0_517
.LBB0_100:                              //  %if.end619
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	add x10, x10, -1
	lb x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	add x10, x11, 1
	sw x10, 0 ( x18 )
	add x10, fp, -678
	add x10, x24, x10
	sb x12, 0 ( x10 )
	lw x10, -696 ( fp )             //  4-byte Folded Reload
	add x24, x24, 1
	xor x10, x10, 3
	bltu x0, x10, .LBB0_102
.LBB0_101:                              //  %if.end619
                                        //    in Loop: Header=BB0_100 Depth=2
	lw x10, -688 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB0_103
.LBB0_102:                              //  %if.then633
                                        //    in Loop: Header=BB0_100 Depth=2
	add x10, fp, -688
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB0_103:                              //  %if.end635
                                        //    in Loop: Header=BB0_100 Depth=2
	add x25, fp, -72
	add x12, fp, -678
	add x14, fp, -688
	mv x10, x19
	mv x11, x25
	mv x13, x24
	jal _mbrtowc_r
	xor x11, x10, -2
	sw x10, -696 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB0_113
.LBB0_104:                              //  %if.end635
                                        //    in Loop: Header=BB0_100 Depth=2
	beq x0, x10, .LBB0_108
.LBB0_105:                              //  %if.end635
                                        //    in Loop: Header=BB0_100 Depth=2
	xor x10, x10, -1
	bltu x0, x10, .LBB0_106
.LBB0_566:                              //  %if.end635
	jal x0, .LBB0_517
.LBB0_106:                              //  %if.then648
                                        //    in Loop: Header=BB0_100 Depth=2
	lw x27, -72 ( fp )
	xor x10, x27, -1
	bltu x0, x10, .LBB0_109
.LBB0_107:                              //    in Loop: Header=BB0_100 Depth=2
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	lw x11, -696 ( fp )             //  4-byte Folded Reload
	add x26, x0, -1
	add x10, fp, -328
	add x10, x26, x10
	lbu x10, 0 ( x10 )
	bltu x0, x10, .LBB0_112
	jal x0, .LBB0_490
.LBB0_108:                              //  %if.then648.thread
                                        //    in Loop: Header=BB0_100 Depth=2
	mv x27, x0
	sw x0, -72 ( fp )
.LBB0_109:                              //  %if.end.i
                                        //    in Loop: Header=BB0_100 Depth=2
	add x25, fp, -60
	mv x26, x0
	add x12, x0, 8
	mv x10, x25
	mv x11, x26
	jal memset
	lui x10, %hi( __global_locale )
	add x10, x10, %lo( __global_locale )
	lw x14, 224 ( x10 )
	add x11, fp, -61
	mv x10, x19
	mv x12, x27
	mv x13, x25
	call.reg x14
	seqz x11, x0
	bne x10, x11, .LBB0_111
.LBB0_110:                              //    in Loop: Header=BB0_100 Depth=2
	lbu x26, -61 ( fp )
.LBB0_111:                              //  %if.end.i
                                        //    in Loop: Header=BB0_100 Depth=2
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	lw x11, -696 ( fp )             //  4-byte Folded Reload
	add x25, fp, -72
	add x10, fp, -328
	add x10, x26, x10
	lbu x10, 0 ( x10 )
	bltu x0, x10, .LBB0_112
.LBB0_567:                              //  %if.end.i
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_490
.LBB0_112:                              //  %if.end662
                                        //    in Loop: Header=BB0_100 Depth=2
	xor x10, x11, 3
	lw x11, -688 ( fp )
	snez x10, x10
	add x20, x20, x24
	mv x24, x0
	xor x11, x11, 4
	snez x11, x11
	or x10, x10, x11
	sub x23, x23, x10
.LBB0_113:                              //  %if.end704
                                        //    in Loop: Header=BB0_100 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_98
.LBB0_114:                              //  %land.lhs.true708
                                        //    in Loop: Header=BB0_100 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_98
.LBB0_115:                              //    in Loop: Header=BB0_4 Depth=1
	mv x26, x0
	add x25, fp, -72
	sw x26, -728 ( fp )             //  4-byte Folded Spill
	sw x26, -720 ( fp )             //  4-byte Folded Spill
	bltu x0, x24, .LBB0_568
.LBB0_569:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_497
.LBB0_568:
	jal x0, .LBB0_517
.LBB0_116:                              //  %if.then938
                                        //    in Loop: Header=BB0_4 Depth=1
	and x26, x25, 16
	beq x0, x26, .LBB0_258
.LBB0_117:                              //    in Loop: Header=BB0_4 Depth=1
	add x25, fp, -72
	jal x0, .LBB0_260
.LBB0_118:                              //    in Loop: Header=BB0_4 Depth=1
	add x26, x0, 349
	lui x12, %hi( 3456 )
	add x12, x12, %lo( 3456 )
	or x24, x12, x25
	beq x0, x26, .LBB0_125
.LBB0_119:                              //  %for.body1339.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x25, x0
	bltu x11, x10, .LBB0_127
.LBB0_120:                              //  %for.body1339.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x27, x25
	jal x0, .LBB0_128
.LBB0_121:                              //    in Loop: Header=BB0_4 Depth=1
	add x24, x0, 349
.LBB0_122:                              //  %sw.bb1491
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	jal _localeconv_r
	mv x11, x0
	or x25, x25, 1920
	beq x0, x24, .LBB0_126
.LBB0_123:                              //  %for.body1504.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x10 )
	sw x10, -744 ( fp )             //  4-byte Folded Spill
	mv x10, x0
	bltu x27, x26, .LBB0_163
.LBB0_124:                              //  %for.body1504.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, -740 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB0_164
.LBB0_126:                              //    in Loop: Header=BB0_4 Depth=1
	sw x11, -724 ( fp )             //  4-byte Folded Spill
	mv x26, x11
	mv x23, x11
	sw x11, -732 ( fp )             //  4-byte Folded Spill
	sw x11, -728 ( fp )             //  4-byte Folded Spill
	mv x27, x11
	jal x0, .LBB0_262
.LBB0_127:                              //    in Loop: Header=BB0_4 Depth=1
	add x27, x23, -349
.LBB0_128:                              //  %for.body1339.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x23, x25
	jal x0, .LBB0_131
.LBB0_163:                              //    in Loop: Header=BB0_4 Depth=1
	add x11, x23, -349
	sw x11, -740 ( fp )             //  4-byte Folded Spill
.LBB0_164:                              //  %for.body1504.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x12, fp, -678
	mv x26, x10
	mv x23, x10
	mv x27, x10
	sw x10, -728 ( fp )             //  4-byte Folded Spill
	sw x10, -732 ( fp )             //  4-byte Folded Spill
	sw x10, -720 ( fp )             //  4-byte Folded Spill
	sw x10, -724 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB0_167
.LBB0_165:                              //  %if.then1652
                                        //    in Loop: Header=BB0_167 Depth=2
	add x10, x10, 1
	sw x10, 0 ( x18 )
.LBB0_166:                              //  %if.end1660
                                        //    in Loop: Header=BB0_167 Depth=2
	add x10, fp, -678
	add x24, x24, -1
	add x12, x27, x10
	beq x0, x24, .LBB0_214
.LBB0_167:                              //  %for.body1504
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 0 ( x18 )
	add x14, x0, 78
	lbu x11, 0 ( x10 )
	add x13, x11, -43
	bltu x14, x13, .LBB0_199
.LBB0_168:                              //  %for.body1504
                                        //    in Loop: Header=BB0_167 Depth=2
	lui x14, %hi( JTI0_2 )
	sll x13, x13, 2&31
	add x14, x14, %lo( JTI0_2 )
	add x13, x14, x13
	lw x13, 0 ( x13 )
	jr x13
.LBB0_169:                              //  %sw.bb1519
                                        //    in Loop: Header=BB0_167 Depth=2
	sll x12, x26, 24&31
	sra x12, x12, 24&31
	sll x13, x23, 24&31
	sub x12, x0, x12
	sra x13, x13, 24&31
	bne x13, x12, .LBB0_214
.LBB0_170:                              //  %if.then1525
                                        //    in Loop: Header=BB0_167 Depth=2
	and x25, x25, -385
.LBB0_171:                              //  %fok
                                        //    in Loop: Header=BB0_167 Depth=2
	add x12, fp, -678
	add x12, x27, x12
	add x27, x27, 1
	sb x11, 0 ( x12 )
.LBB0_172:                              //  %fskip
                                        //    in Loop: Header=BB0_167 Depth=2
	lw x11, 4 ( x18 )
	add x20, x20, 1
	add x11, x11, -1
	sw x11, 4 ( x18 )
	blt x0, x11, .LBB0_165
.LBB0_173:                              //  %if.else1655
                                        //    in Loop: Header=BB0_167 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_166
	jal x0, .LBB0_214
.LBB0_174:                              //  %sw.bb1528
                                        //    in Loop: Header=BB0_167 Depth=2
	and x12, x25, 128
	beq x0, x12, .LBB0_214
.LBB0_175:                              //  %if.then1531
                                        //    in Loop: Header=BB0_167 Depth=2
	and x25, x25, -129
	jal x0, .LBB0_171
.LBB0_176:                              //  %sw.bb1563
                                        //    in Loop: Header=BB0_167 Depth=2
	and x12, x23, 255
	xor x12, x12, 1
	bltu x0, x12, .LBB0_214
.LBB0_177:                              //    in Loop: Header=BB0_167 Depth=2
	add x23, x0, 2
	jal x0, .LBB0_171
.LBB0_178:                              //  %sw.bb1611
                                        //    in Loop: Header=BB0_167 Depth=2
	and x13, x25, 1280
	xor x13, x13, 1024
	beq x0, x13, .LBB0_181
.LBB0_179:                              //  %lor.lhs.false1615
                                        //    in Loop: Header=BB0_167 Depth=2
	and x13, x25, 1024
	beq x0, x13, .LBB0_214
.LBB0_180:                              //  %lor.lhs.false1615
                                        //    in Loop: Header=BB0_167 Depth=2
	lw x13, -720 ( fp )             //  4-byte Folded Reload
	beq x0, x13, .LBB0_214
.LBB0_181:                              //  %if.then1620
                                        //    in Loop: Header=BB0_167 Depth=2
	and x14, x25, 512
	mv x13, x0
	bne x14, x13, .LBB0_183
.LBB0_182:                              //    in Loop: Header=BB0_167 Depth=2
	lw x14, -724 ( fp )             //  4-byte Folded Reload
	lw x15, -720 ( fp )             //  4-byte Folded Reload
	sw x12, -732 ( fp )             //  4-byte Folded Spill
	sub x14, x15, x14
	sw x14, -728 ( fp )             //  4-byte Folded Spill
.LBB0_183:                              //  %if.then1620
                                        //    in Loop: Header=BB0_167 Depth=2
	and x12, x25, -1921
	or x25, x12, 384
	sw x13, -720 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB0_171
.LBB0_184:                              //  %sw.bb1593
                                        //    in Loop: Header=BB0_167 Depth=2
	and x12, x26, 255
	xor x12, x12, 2
	bltu x0, x12, .LBB0_214
.LBB0_185:                              //    in Loop: Header=BB0_167 Depth=2
	add x26, x0, 3
	jal x0, .LBB0_171
.LBB0_186:                              //  %sw.bb1569
                                        //    in Loop: Header=BB0_167 Depth=2
	and x12, x25, 1792
	xor x12, x12, 1792
	bltu x0, x12, .LBB0_205
.LBB0_187:                              //  %sw.bb1569
                                        //    in Loop: Header=BB0_167 Depth=2
	lw x12, -720 ( fp )             //  4-byte Folded Reload
	bltu x0, x12, .LBB0_205
.LBB0_188:                              //  %sw.bb1569
                                        //    in Loop: Header=BB0_167 Depth=2
	and x12, x26, 255
	bltu x0, x12, .LBB0_205
.LBB0_189:                              //  %if.then1580
                                        //    in Loop: Header=BB0_167 Depth=2
	seqz x26, x0
	jal x0, .LBB0_194
.LBB0_190:                              //  %sw.bb1534
                                        //    in Loop: Header=BB0_167 Depth=2
	and x12, x25, 1792
	xor x13, x12, 1792
	and x12, x23, 255
	bltu x0, x13, .LBB0_208
.LBB0_191:                              //  %sw.bb1534
                                        //    in Loop: Header=BB0_167 Depth=2
	lw x13, -720 ( fp )             //  4-byte Folded Reload
	bltu x0, x13, .LBB0_208
.LBB0_192:                              //  %sw.bb1534
                                        //    in Loop: Header=BB0_167 Depth=2
	bltu x0, x12, .LBB0_208
.LBB0_193:                              //  %if.then1545
                                        //    in Loop: Header=BB0_167 Depth=2
	seqz x23, x0
.LBB0_194:                              //  %fok
                                        //    in Loop: Header=BB0_167 Depth=2
	mv x12, x0
	sw x12, -720 ( fp )             //  4-byte Folded Spill
	and x25, x25, -1921
	jal x0, .LBB0_171
.LBB0_195:                              //  %sw.bb1599
                                        //    in Loop: Header=BB0_167 Depth=2
	and x12, x26, 255
	xor x12, x12, 6
	bltu x0, x12, .LBB0_214
.LBB0_196:                              //    in Loop: Header=BB0_167 Depth=2
	add x26, x0, 7
	jal x0, .LBB0_171
.LBB0_197:                              //  %sw.bb1605
                                        //    in Loop: Header=BB0_167 Depth=2
	and x12, x26, 255
	xor x12, x12, 7
	bltu x0, x12, .LBB0_214
.LBB0_198:                              //    in Loop: Header=BB0_167 Depth=2
	add x26, x0, 8
	jal x0, .LBB0_171
.LBB0_199:                              //  %sw.default1630
                                        //    in Loop: Header=BB0_167 Depth=2
	and x12, x25, 512
	beq x0, x12, .LBB0_214
.LBB0_200:                              //  %sw.default1630
                                        //    in Loop: Header=BB0_167 Depth=2
	lw x12, -744 ( fp )             //  4-byte Folded Reload
	lbu x12, 0 ( x12 )
	bne x11, x12, .LBB0_214
.LBB0_201:                              //  %if.then1640
                                        //    in Loop: Header=BB0_167 Depth=2
	lw x12, -720 ( fp )             //  4-byte Folded Reload
	and x25, x25, -641
	sw x12, -724 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB0_171
.LBB0_202:                              //  %sw.bb1507
                                        //    in Loop: Header=BB0_167 Depth=2
	and x12, x25, 256
	beq x0, x12, .LBB0_169
.LBB0_203:                              //  %if.then1510
                                        //    in Loop: Header=BB0_167 Depth=2
	lw x11, -720 ( fp )             //  4-byte Folded Reload
	and x25, x25, -129
	add x11, x11, 1
	sw x11, -720 ( fp )             //  4-byte Folded Spill
	lw x11, -740 ( fp )             //  4-byte Folded Reload
	beq x0, x11, .LBB0_213
.LBB0_204:                              //  %if.then1514
                                        //    in Loop: Header=BB0_167 Depth=2
	add x11, x11, -1
	add x24, x24, 1
	sw x11, -740 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB0_172
.LBB0_205:                              //  %if.end1582
                                        //    in Loop: Header=BB0_167 Depth=2
	and x12, x26, 255
	xor x13, x12, 5
	beq x0, x13, .LBB0_212
.LBB0_206:                              //  %if.end1582
                                        //    in Loop: Header=BB0_167 Depth=2
	xor x12, x12, 3
	beq x0, x12, .LBB0_212
	jal x0, .LBB0_214
.LBB0_208:                              //  %if.end1547
                                        //    in Loop: Header=BB0_167 Depth=2
	xor x12, x12, 2
	bltu x0, x12, .LBB0_210
.LBB0_209:                              //    in Loop: Header=BB0_167 Depth=2
	add x23, x0, 3
	jal x0, .LBB0_171
.LBB0_210:                              //  %if.end1552
                                        //    in Loop: Header=BB0_167 Depth=2
	and x12, x26, 255
	xor x13, x12, 4
	beq x0, x13, .LBB0_212
.LBB0_211:                              //  %if.end1552
                                        //    in Loop: Header=BB0_167 Depth=2
	xor x12, x12, 1
	bltu x0, x12, .LBB0_214
.LBB0_212:                              //  %if.then1560
                                        //    in Loop: Header=BB0_167 Depth=2
	add x26, x26, 1
	jal x0, .LBB0_171
.LBB0_213:                              //    in Loop: Header=BB0_167 Depth=2
	mv x11, x0
	sw x11, -740 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB0_172
.LBB0_214:                              //  %for.end1661
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_261
.LBB0_215:                              //    in Loop: Header=BB0_4 Depth=1
	and x25, x25, -257
	sw x10, -736 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB0_263
.LBB0_216:                              //  %sw.bb154
                                        //    in Loop: Header=BB0_4 Depth=1
	or x25, x25, 1
.LBB0_217:                              //  %sw.bb156
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x24, x0
	or x25, x25, 64
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_46
	jal x0, .LBB0_45
.LBB0_218:                              //  %sw.bb137
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 10
	sw x10, -700 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtol_r )
	add x24, x0, 3
	add x10, x10, %lo( _strtol_r )
	sw x10, -704 ( fp )             //  4-byte Folded Spill
	or x25, x25, 1
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_46
	jal x0, .LBB0_45
.LBB0_219:                              //  %sw.bb141
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 8
	sw x10, -700 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtoul_r )
	add x24, x0, 3
	add x10, x10, %lo( _strtoul_r )
	sw x10, -704 ( fp )             //  4-byte Folded Spill
	or x25, x25, 1
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_46
	jal x0, .LBB0_45
.LBB0_220:                              //  %sw.bb148
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24, x0, 2
	or x25, x25, 1
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_46
	jal x0, .LBB0_45
.LBB0_221:                              //  %sw.bb151
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, fp, -328
	mv x11, x21
	jal __sccl
	mv x21, x10
	seqz x24, x0
	or x25, x25, 64
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_46
	jal x0, .LBB0_45
.LBB0_222:                              //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24, x0, 3
	add x10, x0, 10
	jal x0, .LBB0_224
.LBB0_223:                              //  %sw.epilog.loopexit3724
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24, x0, 3
	mv x10, x0
.LBB0_224:                              //  %sw.epilog
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, -700 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtol_r )
	add x10, x10, %lo( _strtol_r )
	sw x10, -704 ( fp )             //  4-byte Folded Spill
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_46
	jal x0, .LBB0_45
.LBB0_225:                              //  %sw.bb160
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 16
	bltu x0, x10, .LBB0_43
.LBB0_226:                              //  %if.end164
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 8
	bltu x0, x10, .LBB0_319
.LBB0_227:                              //  %if.else169
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 4
	beq x0, x10, .LBB0_228
.LBB0_570:                              //  %if.else169
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_493
.LBB0_228:                              //  %if.else175
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 1
	bltu x0, x10, .LBB0_230
.LBB0_229:                              //  %if.else180
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 2
	beq x0, x10, .LBB0_230
.LBB0_571:                              //  %if.else180
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_512
.LBB0_230:                              //  %if.then178
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sw x20, 0 ( x10 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_520
.LBB0_231:                              //  %sw.epilog.loopexit4326
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24, x0, 3
	add x10, x0, 8
	jal x0, .LBB0_235
.LBB0_232:                              //  %sw.bb158
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 16
	sw x10, -700 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtoul_r )
	add x10, x10, %lo( _strtoul_r )
	add x24, x0, 3
	sw x10, -704 ( fp )             //  4-byte Folded Spill
	or x25, x25, 544
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_46
	jal x0, .LBB0_45
.LBB0_233:                              //  %sw.epilog.loopexit4
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24, x0, 2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_46
	jal x0, .LBB0_45
.LBB0_234:                              //  %sw.epilog.loopexit4799
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24, x0, 3
	add x10, x0, 10
.LBB0_235:                              //  %sw.epilog
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, -700 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtoul_r )
	add x10, x10, %lo( _strtoul_r )
	sw x10, -704 ( fp )             //  4-byte Folded Spill
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_46
	jal x0, .LBB0_45
.LBB0_236:                              //  %for.cond413.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x24, x0
.LBB0_237:                              //  %for.cond413
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 4 ( x18 )
	bge x10, x23, .LBB0_289
.LBB0_238:                              //  %if.then417
                                        //    in Loop: Header=BB0_237 Depth=2
	lw x11, 0 ( x18 )
	sub x23, x23, x10
	add x24, x24, x10
	add x11, x10, x11
	sw x11, 0 ( x18 )
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_237
.LBB0_239:                              //  %if.then424
                                        //    in Loop: Header=BB0_4 Depth=1
	bltu x0, x24, .LBB0_290
	jal x0, .LBB0_517
.LBB0_240:                              //  %while.cond751.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x24, fp, -328
	lbu x11, 0 ( x10 )
	add x11, x11, x24
	lbu x11, 0 ( x11 )
	bltu x0, x11, .LBB0_241
.LBB0_572:                              //  %while.cond751.preheader
	jal x0, .LBB0_520
.LBB0_241:                              //  %while.body756.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x20, 1
	add x23, x23, -1
	jal x0, .LBB0_243
.LBB0_242:                              //  %if.end778
                                        //    in Loop: Header=BB0_243 Depth=2
	lbu x11, 0 ( x10 )
	add x23, x23, -1
	add x12, x11, x24
	lbu x12, 0 ( x12 )
	add x11, x20, 1
	beq x0, x12, .LBB0_43
.LBB0_243:                              //  %while.body756
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x20, x11
	lw x11, 4 ( x18 )
	add x10, x10, 1
	sw x10, 0 ( x18 )
	add x12, x11, -1
	sw x12, 4 ( x18 )
	beq x0, x23, .LBB0_43
.LBB0_244:                              //  %if.end766
                                        //    in Loop: Header=BB0_243 Depth=2
	seqz x12, x0
	blt x12, x11, .LBB0_242
.LBB0_245:                              //  %land.lhs.true770
                                        //    in Loop: Header=BB0_243 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_43
.LBB0_246:                              //  %land.lhs.true770.if.end778_crit_edge
                                        //    in Loop: Header=BB0_243 Depth=2
	lw x10, 0 ( x18 )
	jal x0, .LBB0_242
.LBB0_247:                              //  %while.cond1155.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	lbu x11, 0 ( x10 )
	add x11, x11, x9
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB0_303
.LBB0_248:                              //  %while.body1162.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	seqz x11, x0
	jal x0, .LBB0_250
.LBB0_249:                              //  %if.end1180
                                        //    in Loop: Header=BB0_250 Depth=2
	lbu x11, 0 ( x10 )
	add x12, x11, x9
	lbu x12, 1 ( x12 )
	add x11, x24, 1
	and x12, x12, 8
	bltu x0, x12, .LBB0_304
.LBB0_250:                              //  %while.body1162
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x24, x11
	lw x11, 4 ( x18 )
	add x10, x10, 1
	sw x10, 0 ( x18 )
	add x12, x11, -1
	sw x12, 4 ( x18 )
	beq x23, x24, .LBB0_304
.LBB0_251:                              //  %if.end1172
                                        //    in Loop: Header=BB0_250 Depth=2
	seqz x12, x0
	blt x12, x11, .LBB0_249
.LBB0_252:                              //  %land.lhs.true1176
                                        //    in Loop: Header=BB0_250 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_304
.LBB0_253:                              //  %land.lhs.true1176.if.end1180_crit_edge
                                        //    in Loop: Header=BB0_250 Depth=2
	lw x10, 0 ( x18 )
	jal x0, .LBB0_249
.LBB0_254:                              //  %if.else236
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB0_305
.LBB0_255:                              //  %if.else291
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -68 ( fp )
	mv x27, x0
	mv x24, x27
	mv x26, x27
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x25, 0 ( x10 )
	sw x27, -720 ( fp )             //  4-byte Folded Spill
	jal __locale_mb_cur_max
	bne x24, x10, .LBB0_371
	jal x0, .LBB0_516
.LBB0_256:                              //  %if.else547
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB0_309
.LBB0_257:                              //  %if.else607
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -68 ( fp )
	mv x26, x0
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x25, 0 ( x10 )
	sw x26, -720 ( fp )             //  4-byte Folded Spill
	sw x26, -728 ( fp )             //  4-byte Folded Spill
	sw x26, -724 ( fp )             //  4-byte Folded Spill
	jal __locale_mb_cur_max
	bne x24, x10, .LBB0_402
	jal x0, .LBB0_517
.LBB0_258:                              //  %if.else946
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB0_313
.LBB0_259:                              //  %if.else1006
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -68 ( fp )
	mv x27, x0
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x25, 0 ( x10 )
.LBB0_260:                              //  %if.end1009
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x27, -720 ( fp )             //  4-byte Folded Spill
	sw x27, -724 ( fp )             //  4-byte Folded Spill
	sw x26, -728 ( fp )             //  4-byte Folded Spill
	bltu x0, x23, .LBB0_425
	jal x0, .LBB0_503
.LBB0_261:                              //    in Loop: Header=BB0_4 Depth=1
	mv x10, x0
	mv x11, x10
.LBB0_262:                              //  %for.end1661.thread
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x11, -736 ( fp )             //  4-byte Folded Spill
.LBB0_263:                              //    in Loop: Header=BB0_4 Depth=1
	sll x10, x23, 24&31
	sra x10, x10, 24&31
	add x10, x10, -1
	seqz x11, x0
	bltu x11, x10, .LBB0_264
.LBB0_573:
	jal x0, .LBB0_528
.LBB0_264:                              //  %if.end1681
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x10, x26, 24&31
	sra x10, x10, 24&31
	add x11, x10, -1
	add x12, x0, 6
	bltu x12, x11, .LBB0_270
.LBB0_265:                              //  %if.then1686
                                        //    in Loop: Header=BB0_4 Depth=1
	slti x10, x10, 3
	beq x0, x10, .LBB0_266
.LBB0_574:                              //  %if.then1686
	jal x0, .LBB0_535
.LBB0_266:                              //  %while.cond1691.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x26, 255
	xor x10, x10, 3
	beq x0, x10, .LBB0_270
.LBB0_267:                              //  %while.body1696.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x26, -4
	and x23, x10, 255
	add x24, fp, -679
.LBB0_268:                              //  %while.body1696
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x27, x24
	lb x11, 0 ( x10 )
	mv x10, x19
	mv x12, x18
	jal _sungetc_r
	lui x11, %hi( -16777216 )
	sll x10, x26, 24&31
	add x11, x11, %lo( -16777216 )
	add x10, x11, x10
	sra x26, x10, 24&31
	add x27, x27, -1
	add x10, x0, 3
	blt x10, x26, .LBB0_268
.LBB0_269:                              //  %if.end1714.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	xor x10, x23, -1
	add x20, x10, x20
.LBB0_270:                              //  %if.end1714
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, fp, -678
	add x24, x27, x10
	and x10, x25, 256
	bltu x0, x10, .LBB0_272
.LBB0_271:                              //    in Loop: Header=BB0_4 Depth=1
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	mv x23, x24
	and x10, x25, 16
	bltu x0, x10, .LBB0_43
	jal x0, .LBB0_277
.LBB0_272:                              //  %if.then1717
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 1024
	beq x0, x10, .LBB0_273
.LBB0_575:                              //  %if.then1717
	jal x0, .LBB0_538
.LBB0_273:                              //  %if.end1731
                                        //    in Loop: Header=BB0_4 Depth=1
	lb x11, -1 ( x24 )
	or x10, x11, 32
	and x10, x10, 255
	xor x10, x10, 101
	bltu x0, x10, .LBB0_275
.LBB0_274:                              //    in Loop: Header=BB0_4 Depth=1
	add x20, x20, -1
	add x23, x24, -1
	jal x0, .LBB0_276
.LBB0_275:                              //  %if.then1740
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x12, x18
	jal _sungetc_r
	lb x11, -2 ( x24 )
	add x20, x20, -2
	add x23, x24, -2
.LBB0_276:                              //  %if.end1745
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	mv x10, x19
	mv x12, x18
	jal _sungetc_r
	and x10, x25, 16
	bltu x0, x10, .LBB0_43
.LBB0_277:                              //  %if.then1751
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 1536
	xor x10, x10, 1024
	sb x0, 0 ( x23 )
	bltu x0, x10, .LBB0_280
.LBB0_278:                              //  %if.end1766
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -736 ( fp )             //  4-byte Folded Reload
	lw x11, -724 ( fp )             //  4-byte Folded Reload
	sub x10, x10, x11
	beq x0, x10, .LBB0_284
.LBB0_279:                              //    in Loop: Header=BB0_4 Depth=1
	sub x10, x0, x10
	lw x11, -708 ( fp )             //  4-byte Folded Reload
	bltu x23, x11, .LBB0_283
.LBB0_282:                              //  %if.then1768
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x23, -712 ( fp )             //  4-byte Folded Reload
.LBB0_283:                              //  %if.then1768
                                        //    in Loop: Header=BB0_4 Depth=1
	add sp, sp, -16
	lui x11, %hi( .str )
	add x11, x11, %lo( .str )
	sw x11, 4 ( sp )
	sw x10, 8 ( sp )
	sw x23, 0 ( sp )
	jal sprintf
	add sp, sp, 16
	jal x0, .LBB0_284
.LBB0_280:                              //  %if.else1759
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -728 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_284
.LBB0_281:                              //  %if.end1766.thread2852
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x23, -732 ( fp )             //  4-byte Folded Reload
	mv x24, x10
	mv x12, x0
	add x13, x0, 10
	add x11, x23, 1
	mv x10, x19
	jal _strtol_r
	sub x10, x10, x24
	lw x11, -708 ( fp )             //  4-byte Folded Reload
	bltu x23, x11, .LBB0_283
	jal x0, .LBB0_282
.LBB0_284:                              //  %if.end1781
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, fp, -678
	mv x12, x0
	mv x10, x19
	jal _strtod_r
	mv x23, x10
	mv x24, x11
	and x10, x25, 1
	bltu x0, x10, .LBB0_288
.LBB0_285:                              //  %if.else1788
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 2
	bltu x0, x10, .LBB0_318
.LBB0_286:                              //  %if.else1794
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x25, -68 ( fp )
	mv x13, x24
	mv x11, x24
	mv x12, x23
	add x10, x25, 4
	sw x10, -68 ( fp )
	mv x10, x23
	jal __unorddf2
	lw x25, 0 ( x25 )
	beq x0, x10, .LBB0_287
.LBB0_576:                              //  %if.else1794
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_488
.LBB0_287:                              //  %if.else1799
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x23
	mv x11, x24
	jal __truncdfsf2
	jal x0, .LBB0_489
.LBB0_288:                              //  %if.then1786
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -68 ( fp )
	add x27, x27, 1
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sw x24, 4 ( x10 )
	sw x23, 0 ( x10 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_520
.LBB0_289:                              //  %if.else430
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x10, x10, x23
	sw x10, 4 ( x18 )
	lw x10, 0 ( x18 )
	add x24, x24, x23
	add x10, x23, x10
	sw x10, 0 ( x18 )
.LBB0_290:                              //  %cleanup439.thread
                                        //    in Loop: Header=BB0_4 Depth=1
	add x20, x20, x24
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB0_4
	jal x0, .LBB0_520
.LBB0_291:                              //  %if.then445
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x25, 0 ( x10 )
	bltu x0, x25, .LBB0_292
.LBB0_577:                              //  %if.then445
	jal x0, .LBB0_520
.LBB0_292:                              //  %if.end449
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x23
	jal malloc
	mv x24, x10
	bltu x0, x24, .LBB0_293
.LBB0_578:                              //  %if.end449
	jal x0, .LBB0_519
.LBB0_293:                              //  %if.end454
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x24, 0 ( x25 )
	lhu x10, 4 ( x22 )
	lhu x11, 6 ( x22 )
	bgeu x11, x10, .LBB0_325
.LBB0_294:                              //  %if.end454.if.end494_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	jal x0, .LBB0_328
.LBB0_295:                              //  %if.then789
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x25, 0 ( x10 )
	bltu x0, x25, .LBB0_296
.LBB0_579:                              //  %if.then789
	jal x0, .LBB0_520
.LBB0_296:                              //  %if.end793
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24, x0, 32
	mv x10, x24
	jal malloc
	mv x26, x10
	bltu x0, x26, .LBB0_297
.LBB0_580:                              //  %if.end793
	jal x0, .LBB0_519
.LBB0_297:                              //  %if.end797
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x26, 0 ( x25 )
	lhu x10, 4 ( x22 )
	lhu x11, 6 ( x22 )
	bgeu x11, x10, .LBB0_335
.LBB0_298:                              //  %if.end797.if.end837_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	jal x0, .LBB0_338
.LBB0_299:                              //  %if.then1188
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -720 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB0_300
.LBB0_581:                              //  %if.then1188
	jal x0, .LBB0_520
.LBB0_300:                              //  %if.end1192
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24, x0, 32
	mv x10, x24
	jal malloc
	mv x25, x10
	bltu x0, x25, .LBB0_301
.LBB0_582:                              //  %if.end1192
	jal x0, .LBB0_519
.LBB0_301:                              //  %if.end1196
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	sw x25, 0 ( x10 )
	lhu x10, 4 ( x22 )
	lhu x11, 6 ( x22 )
	bgeu x11, x10, .LBB0_350
.LBB0_302:                              //  %if.end1196.if.end1236_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	jal x0, .LBB0_353
.LBB0_303:                              //    in Loop: Header=BB0_4 Depth=1
	mv x24, x0
	add x20, x20, x24
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB0_583
.LBB0_584:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_583:
	jal x0, .LBB0_520
.LBB0_304:                              //  %while.end1181
                                        //    in Loop: Header=BB0_4 Depth=1
	add x20, x20, x24
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB0_585
.LBB0_586:                              //  %while.end1181
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_585:                              //  %while.end1181
	jal x0, .LBB0_520
.LBB0_305:                              //  %if.then239
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -720 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB0_306
.LBB0_587:                              //  %if.then239
	jal x0, .LBB0_520
.LBB0_306:                              //  %if.end243
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 128
	jal malloc
	mv x25, x10
	add x27, x0, -1
	bltu x0, x25, .LBB0_307
.LBB0_588:                              //  %if.end243
	jal x0, .LBB0_520
.LBB0_307:                              //  %if.end247
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	sw x25, 0 ( x10 )
	lhu x10, 4 ( x22 )
	lhu x11, 6 ( x22 )
	bgeu x11, x10, .LBB0_365
.LBB0_308:                              //  %if.end247.if.end284_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	jal x0, .LBB0_368
.LBB0_309:                              //  %if.then550
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x26, 0 ( x10 )
	bltu x0, x26, .LBB0_310
.LBB0_589:                              //  %if.then550
	jal x0, .LBB0_545
.LBB0_310:                              //  %if.end554
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 128
	jal malloc
	mv x13, x10
	add x25, x0, -1
	bltu x0, x13, .LBB0_311
.LBB0_590:                              //  %if.end554
	jal x0, .LBB0_533
.LBB0_311:                              //  %if.end558
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x13, 0 ( x26 )
	lhu x10, 4 ( x22 )
	lhu x11, 6 ( x22 )
	sw x13, -720 ( fp )             //  4-byte Folded Spill
	bgeu x11, x10, .LBB0_394
.LBB0_312:                              //  %if.end558.if.end598_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	jal x0, .LBB0_397
.LBB0_313:                              //  %if.then949
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x27, 0 ( x10 )
	bltu x0, x27, .LBB0_314
.LBB0_591:                              //  %if.then949
	jal x0, .LBB0_546
.LBB0_314:                              //  %if.end953
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 128
	jal malloc
	add x25, x0, -1
	bltu x0, x10, .LBB0_315
.LBB0_592:                              //  %if.end953
	jal x0, .LBB0_533
.LBB0_315:                              //  %if.end957
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 0 ( x27 )
	sw x10, -720 ( fp )             //  4-byte Folded Spill
	lhu x10, 4 ( x22 )
	lhu x11, 6 ( x22 )
	bgeu x11, x10, .LBB0_421
.LBB0_316:                              //  %if.end957.if.end997_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	jal x0, .LBB0_424
.LBB0_318:                              //  %if.then1791
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x25, -68 ( fp )
	mv x11, x24
	add x10, x25, 4
	sw x10, -68 ( fp )
	mv x10, x23
	jal __extenddftf2
	lw x14, 0 ( x25 )
	add x27, x27, 1
	sw x13, 12 ( x14 )
	sw x12, 8 ( x14 )
	sw x11, 4 ( x14 )
	sw x10, 0 ( x14 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB0_593
.LBB0_594:                              //  %if.then1791
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_593:                              //  %if.then1791
	jal x0, .LBB0_520
.LBB0_319:                              //  %if.then167
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sb x20, 0 ( x10 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB0_595
.LBB0_596:                              //  %if.then167
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_595:                              //  %if.then167
	jal x0, .LBB0_520
.LBB0_320:                              //    in Loop: Header=BB0_4 Depth=1
	mv x26, x0
	sw x26, -720 ( fp )             //  4-byte Folded Spill
	mv x27, x26
	mv x25, x26
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	bltu x0, x10, .LBB0_390
	jal x0, .LBB0_393
.LBB0_148:                              //  %if.end1356
                                        //    in Loop: Header=BB0_131 Depth=2
	snez x11, x27
	add x26, x11, x26
	add x23, x23, 1
	and x24, x24, -897
	mv x27, x12
	lw x11, 4 ( x18 )
	add x11, x11, -1
	sw x11, 4 ( x18 )
	bge x0, x11, .LBB0_151
.LBB0_129:                              //  %if.then1403
                                        //    in Loop: Header=BB0_131 Depth=2
	add x10, x10, 1
	sw x10, 0 ( x18 )
.LBB0_130:                              //  %for.inc1412
                                        //    in Loop: Header=BB0_131 Depth=2
	add x26, x26, -1
	beq x0, x26, .LBB0_152
.LBB0_131:                              //  %for.body1339
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 0 ( x18 )
	add x13, x0, 77
	lbu x11, 0 ( x10 )
	add x12, x11, -43
	bltu x13, x12, .LBB0_152
.LBB0_132:                              //  %for.body1339
                                        //    in Loop: Header=BB0_131 Depth=2
	lui x13, %hi( JTI0_3 )
	sll x12, x12, 2&31
	add x13, x13, %lo( JTI0_3 )
	add x12, x13, x12
	lw x12, 0 ( x12 )
	jr x12
.LBB0_133:                              //  %sw.bb1376
                                        //    in Loop: Header=BB0_131 Depth=2
	lw x12, -700 ( fp )             //  4-byte Folded Reload
	slti x12, x12, 11
	bltu x0, x12, .LBB0_152
.LBB0_134:                              //  %if.end1380
                                        //    in Loop: Header=BB0_131 Depth=2
	lui x12, %hi( -2945 )
	add x12, x12, %lo( -2945 )
	and x24, x12, x24
	jal x0, .LBB0_150
.LBB0_135:                              //  %sw.bb1364
                                        //    in Loop: Header=BB0_131 Depth=2
	lui x12, %hi( -2945 )
	add x12, x12, %lo( -2945 )
	and x24, x12, x24
	lw x12, -700 ( fp )             //  4-byte Folded Reload
	lui x13, %hi( __ssvfscanf_r.basefix )
	add x13, x13, %lo( __ssvfscanf_r.basefix )
	sll x12, x12, 1&31
	add x12, x12, x13
	lh x12, 0 ( x12 )
	sw x12, -700 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB0_150
.LBB0_136:                              //  %sw.bb1382
                                        //    in Loop: Header=BB0_131 Depth=2
	and x12, x24, 128
	beq x0, x12, .LBB0_152
.LBB0_137:                              //  %if.then1385
                                        //    in Loop: Header=BB0_131 Depth=2
	and x24, x24, -129
	jal x0, .LBB0_150
.LBB0_138:                              //  %sw.bb1368
                                        //    in Loop: Header=BB0_131 Depth=2
	lw x14, -700 ( fp )             //  4-byte Folded Reload
	lui x13, %hi( __ssvfscanf_r.basefix )
	add x13, x13, %lo( __ssvfscanf_r.basefix )
	sll x12, x14, 1&31
	add x12, x12, x13
	lh x12, 0 ( x12 )
	add x13, x14, -1
	sltiu x13, x13, 8
	bltu x0, x13, .LBB0_509
.LBB0_139:                              //  %if.end1374
                                        //    in Loop: Header=BB0_131 Depth=2
	lui x13, %hi( -2945 )
	add x13, x13, %lo( -2945 )
	and x24, x13, x24
	sw x12, -700 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB0_150
.LBB0_140:                              //  %sw.bb1388
                                        //    in Loop: Header=BB0_131 Depth=2
	and x12, x24, 1536
	xor x12, x12, 512
	bltu x0, x12, .LBB0_152
.LBB0_141:                              //  %if.then1392
                                        //    in Loop: Header=BB0_131 Depth=2
	add x12, x0, 16
	sw x12, -700 ( fp )             //  4-byte Folded Spill
	and x12, x24, -1793
	or x24, x12, 1280
	jal x0, .LBB0_150
.LBB0_142:                              //  %sw.bb1342
                                        //    in Loop: Header=BB0_131 Depth=2
	lui x12, %hi( 2048 )
	add x12, x12, %lo( 2048 )
	and x12, x12, x24
	beq x0, x12, .LBB0_150
.LBB0_143:                              //  %if.end1346
                                        //    in Loop: Header=BB0_131 Depth=2
	lw x13, -700 ( fp )             //  4-byte Folded Reload
	mv x12, x0
	bne x13, x12, .LBB0_145
.LBB0_144:                              //    in Loop: Header=BB0_131 Depth=2
	or x24, x24, 512
	add x13, x0, 8
	sw x13, -700 ( fp )             //  4-byte Folded Spill
.LBB0_145:                              //  %if.end1346
                                        //    in Loop: Header=BB0_131 Depth=2
	and x13, x24, 1024
	bltu x0, x13, .LBB0_149
.LBB0_146:                              //  %if.end1356
                                        //    in Loop: Header=BB0_131 Depth=2
	beq x27, x12, .LBB0_148
.LBB0_147:                              //  %if.end1356
                                        //    in Loop: Header=BB0_131 Depth=2
	add x12, x27, -1
	jal x0, .LBB0_148
.LBB0_149:                              //  %if.then1354
                                        //    in Loop: Header=BB0_131 Depth=2
	and x24, x24, -1409
.LBB0_150:                              //  %ok
                                        //    in Loop: Header=BB0_131 Depth=2
	add x12, fp, -678
	add x12, x25, x12
	add x25, x25, 1
	sb x11, 0 ( x12 )
	lw x11, 4 ( x18 )
	add x11, x11, -1
	sw x11, 4 ( x18 )
	blt x0, x11, .LBB0_129
.LBB0_151:                              //  %if.else1406
                                        //    in Loop: Header=BB0_131 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_130
.LBB0_152:                              //  %for.end1414
                                        //    in Loop: Header=BB0_4 Depth=1
	add x27, fp, -678
	add x26, x25, x27
	and x10, x24, 256
	beq x0, x10, .LBB0_156
.LBB0_153:                              //  %if.then1417
                                        //    in Loop: Header=BB0_4 Depth=1
	bge x0, x25, .LBB0_155
.LBB0_154:                              //  %if.then1421
                                        //    in Loop: Header=BB0_4 Depth=1
	lb x11, -1 ( x26 )
	mv x10, x19
	mv x12, x18
	jal _sungetc_r
	add x26, x26, -1
.LBB0_155:                              //  %if.end1425
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x26, x27, .LBB0_534
.LBB0_156:                              //  %if.end1431
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x24, 16
	bltu x0, x10, .LBB0_323
.LBB0_157:                              //  %if.then1435
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13, -700 ( fp )             //  4-byte Folded Reload
	lw x14, -704 ( fp )             //  4-byte Folded Reload
	add x11, fp, -678
	mv x12, x0
	mv x10, x19
	sb x0, 0 ( x26 )
	call.reg x14
	and x11, x24, 32
	bltu x0, x11, .LBB0_162
.LBB0_158:                              //  %if.else1442
                                        //    in Loop: Header=BB0_4 Depth=1
	and x11, x24, 8
	bltu x0, x11, .LBB0_317
.LBB0_159:                              //  %if.else1448
                                        //    in Loop: Header=BB0_4 Depth=1
	and x11, x24, 4
	bltu x0, x11, .LBB0_321
.LBB0_160:                              //  %if.else1454
                                        //    in Loop: Header=BB0_4 Depth=1
	and x11, x24, 1
	bltu x0, x11, .LBB0_162
.LBB0_161:                              //  %if.else1459
                                        //    in Loop: Header=BB0_4 Depth=1
	and x11, x24, 2
	bltu x0, x11, .LBB0_510
.LBB0_162:                              //  %if.else1473
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -68 ( fp )
	add x12, x11, 4
	sw x12, -68 ( fp )
	lw x11, 0 ( x11 )
	sw x10, 0 ( x11 )
	jal x0, .LBB0_322
.LBB0_317:                              //  %if.then1445
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -68 ( fp )
	add x12, x11, 4
	sw x12, -68 ( fp )
	lw x11, 0 ( x11 )
	sb x10, 0 ( x11 )
	jal x0, .LBB0_322
.LBB0_321:                              //  %if.then1451
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -68 ( fp )
	add x12, x11, 4
	sw x12, -68 ( fp )
	lw x11, 0 ( x11 )
	sh x10, 0 ( x11 )
.LBB0_322:                              //  %if.end1479
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -716 ( fp )             //  4-byte Folded Reload
	add x10, x10, 1
	sw x10, -716 ( fp )             //  4-byte Folded Spill
.LBB0_323:                              //  %cleanup1488.thread
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x10, x20, x27
	add x10, x23, x10
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	add x20, x26, x10
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB0_597
.LBB0_598:                              //  %cleanup1488.thread
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_597:                              //  %cleanup1488.thread
	jal x0, .LBB0_520
.LBB0_324:                              //    in Loop: Header=BB0_4 Depth=1
	mv x26, x0
	add x25, fp, -72
	sw x26, -728 ( fp )             //  4-byte Folded Spill
	sw x26, -720 ( fp )             //  4-byte Folded Spill
	lw x10, -732 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_599
.LBB0_600:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_43
.LBB0_599:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_498
.LBB0_325:                              //  %if.then462
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB0_522
.LBB0_326:                              //  %if.end482
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB0_522
.LBB0_327:                              //  %cleanup491
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x11, 4 ( x22 )
	sw x10, 0 ( x22 )
	add x11, x11, 8
	sh x11, 4 ( x22 )
	lhu x11, 6 ( x22 )
.LBB0_328:                              //  %if.end494
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x25, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x22 )
.LBB0_329:                              //  %if.end505
                                        //    in Loop: Header=BB0_4 Depth=1
	seqz x12, x0
	mv x10, x19
	mv x11, x24
	mv x13, x23
	mv x14, x18
	jal _sfread_r
	mv x24, x10
	beq x0, x24, .LBB0_517
.LBB0_330:                              //  %if.end510
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x25, .LBB0_334
.LBB0_331:                              //  %if.end510
                                        //    in Loop: Header=BB0_4 Depth=1
	bgeu x24, x23, .LBB0_334
.LBB0_332:                              //  %if.then516
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x25 )
	mv x11, x24
	jal realloc
	beq x0, x10, .LBB0_334
.LBB0_333:                              //  %if.then521
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 0 ( x25 )
.LBB0_334:                              //  %cleanup526.thread2735
                                        //    in Loop: Header=BB0_4 Depth=1
	add x20, x20, x24
	add x27, x27, 1
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB0_601
.LBB0_602:                              //  %cleanup526.thread2735
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_601:                              //  %cleanup526.thread2735
	jal x0, .LBB0_520
.LBB0_335:                              //  %if.then805
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB0_522
.LBB0_336:                              //  %if.end825
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB0_522
.LBB0_337:                              //  %cleanup834
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x11, 4 ( x22 )
	sw x10, 0 ( x22 )
	add x11, x11, 8
	sh x11, 4 ( x22 )
	lhu x11, 6 ( x22 )
.LBB0_338:                              //  %if.end837
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x25, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x22 )
.LBB0_339:                              //  %if.end848
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x12, fp, -328
	sw x25, -720 ( fp )             //  4-byte Folded Spill
	lbu x11, 0 ( x10 )
	add x11, x11, x12
	lbu x11, 0 ( x11 )
	beq x0, x11, .LBB0_349
.LBB0_340:                              //  %while.body854.lr.ph
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x25, .LBB0_461
.LBB0_341:                              //    in Loop: Header=BB0_4 Depth=1
	mv x25, x26
	jal x0, .LBB0_343
.LBB0_342:                              //  %if.end900
                                        //    in Loop: Header=BB0_343 Depth=2
	lw x10, 0 ( x18 )
	add x12, fp, -328
	lbu x11, 0 ( x10 )
	add x11, x11, x12
	lbu x11, 0 ( x11 )
	beq x0, x11, .LBB0_469
.LBB0_343:                              //  %while.body854
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x11, x10, 1
	sw x11, 0 ( x18 )
	lw x11, 4 ( x18 )
	add x11, x11, -1
	sw x11, 4 ( x18 )
	lb x10, 0 ( x10 )
	sb x10, 0 ( x25 )
	add x25, x25, 1
	sub x27, x25, x26
	bltu x27, x24, .LBB0_346
.LBB0_344:                              //  %if.then869
                                        //    in Loop: Header=BB0_343 Depth=2
	sll x24, x24, 1&31
	mv x10, x26
	mv x11, x24
	jal realloc
	mv x26, x10
	beq x0, x26, .LBB0_519
.LBB0_345:                              //  %if.end875
                                        //    in Loop: Header=BB0_343 Depth=2
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	add x25, x27, x26
	sw x26, 0 ( x10 )
.LBB0_346:                              //  %cleanup.cont883
                                        //    in Loop: Header=BB0_343 Depth=2
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	add x23, x23, -1
	beq x0, x23, .LBB0_469
.LBB0_347:                              //  %if.end888
                                        //    in Loop: Header=BB0_343 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_342
.LBB0_348:                              //  %land.lhs.true892
                                        //    in Loop: Header=BB0_343 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_342
	jal x0, .LBB0_467
.LBB0_349:                              //    in Loop: Header=BB0_4 Depth=1
	mv x25, x26
	sub x23, x25, x26
	bltu x0, x23, .LBB0_470
	jal x0, .LBB0_520
.LBB0_350:                              //  %if.then1204
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB0_522
.LBB0_351:                              //  %if.end1224
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB0_522
.LBB0_352:                              //  %cleanup1233
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x11, 4 ( x22 )
	sw x10, 0 ( x22 )
	add x11, x11, 8
	sh x11, 4 ( x22 )
	lhu x11, 6 ( x22 )
.LBB0_353:                              //  %if.end1236
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -720 ( fp )             //  4-byte Folded Reload
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x22 )
.LBB0_354:                              //  %if.end1247
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	lbu x11, 0 ( x10 )
	add x11, x11, x9
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB0_364
.LBB0_355:                              //  %while.body1256.lr.ph
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -720 ( fp )             //  4-byte Folded Reload
	beq x0, x11, .LBB0_475
.LBB0_356:                              //    in Loop: Header=BB0_4 Depth=1
	mv x27, x25
	jal x0, .LBB0_358
.LBB0_357:                              //  %if.end1298
                                        //    in Loop: Header=BB0_358 Depth=2
	lw x10, 0 ( x18 )
	lbu x11, 0 ( x10 )
	add x11, x11, x9
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB0_481
.LBB0_358:                              //  %while.body1256
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x11, x10, 1
	sw x11, 0 ( x18 )
	lw x11, 4 ( x18 )
	add x11, x11, -1
	sw x11, 4 ( x18 )
	lb x10, 0 ( x10 )
	sb x10, 0 ( x27 )
	add x27, x27, 1
	sub x26, x27, x25
	bltu x26, x24, .LBB0_361
.LBB0_359:                              //  %if.then1271
                                        //    in Loop: Header=BB0_358 Depth=2
	sll x24, x24, 1&31
	mv x10, x25
	mv x11, x24
	jal realloc
	mv x25, x10
	beq x0, x25, .LBB0_519
.LBB0_360:                              //  %if.end1277
                                        //    in Loop: Header=BB0_358 Depth=2
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	add x27, x26, x25
	sw x25, 0 ( x10 )
.LBB0_361:                              //  %cleanup.cont1285
                                        //    in Loop: Header=BB0_358 Depth=2
	add x23, x23, -1
	beq x0, x23, .LBB0_481
.LBB0_362:                              //  %if.end1290
                                        //    in Loop: Header=BB0_358 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_357
.LBB0_363:                              //  %land.lhs.true1294
                                        //    in Loop: Header=BB0_358 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_357
	jal x0, .LBB0_481
.LBB0_364:                              //    in Loop: Header=BB0_4 Depth=1
	mv x27, x25
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	sub x23, x27, x25
	sb x0, 0 ( x27 )
	bltu x0, x10, .LBB0_482
	jal x0, .LBB0_485
.LBB0_365:                              //  %if.then255
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB0_520
.LBB0_366:                              //  %if.end275
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB0_520
.LBB0_367:                              //  %cleanup
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x11, 4 ( x22 )
	sw x10, 0 ( x22 )
	add x11, x11, 8
	sh x11, 4 ( x22 )
	lhu x11, 6 ( x22 )
.LBB0_368:                              //  %if.end284
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -720 ( fp )             //  4-byte Folded Reload
	add x27, x0, 32
	mv x26, x25
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x22 )
	jal __locale_mb_cur_max
	bne x24, x10, .LBB0_371
	jal x0, .LBB0_516
.LBB0_369:                              //  %if.end380
                                        //    in Loop: Header=BB0_371 Depth=2
	beq x0, x23, .LBB0_389
.LBB0_370:                              //  %while.body298
                                        //    in Loop: Header=BB0_371 Depth=2
	jal __locale_mb_cur_max
	beq x24, x10, .LBB0_516
.LBB0_371:                              //  %if.end303
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	add x10, x10, -1
	lb x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	add x10, x11, 1
	sw x10, 0 ( x18 )
	add x10, fp, -678
	add x10, x24, x10
	sb x12, 0 ( x10 )
	lw x10, -696 ( fp )             //  4-byte Folded Reload
	add x24, x24, 1
	xor x10, x10, 3
	bltu x0, x10, .LBB0_373
.LBB0_372:                              //  %if.end303
                                        //    in Loop: Header=BB0_371 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB0_374
.LBB0_373:                              //  %if.then316
                                        //    in Loop: Header=BB0_371 Depth=2
	add x10, fp, -60
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB0_374:                              //  %if.end318
                                        //    in Loop: Header=BB0_371 Depth=2
	add x12, fp, -678
	add x14, fp, -60
	mv x10, x19
	mv x11, x25
	mv x13, x24
	jal _mbrtowc_r
	xor x11, x10, -2
	sw x10, -696 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB0_386
.LBB0_375:                              //  %if.end318
                                        //    in Loop: Header=BB0_371 Depth=2
	beq x0, x10, .LBB0_379
.LBB0_376:                              //  %if.end318
                                        //    in Loop: Header=BB0_371 Depth=2
	xor x10, x10, -1
	beq x0, x10, .LBB0_516
.LBB0_377:                              //  %if.then334
                                        //    in Loop: Header=BB0_371 Depth=2
	lw x10, -696 ( fp )             //  4-byte Folded Reload
	add x20, x20, x24
	xor x10, x10, 3
	bltu x0, x10, .LBB0_380
.LBB0_378:                              //  %if.then334
                                        //    in Loop: Header=BB0_371 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB0_381
	jal x0, .LBB0_380
.LBB0_379:                              //  %if.then330
                                        //    in Loop: Header=BB0_371 Depth=2
	add x20, x20, x24
	sw x0, 0 ( x25 )
.LBB0_380:                              //  %if.then342
                                        //    in Loop: Header=BB0_371 Depth=2
	add x23, x23, -1
.LBB0_381:                              //  %if.then347
                                        //    in Loop: Header=BB0_371 Depth=2
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_385
.LBB0_382:                              //  %if.then347
                                        //    in Loop: Header=BB0_371 Depth=2
	sub x10, x25, x26
	sra x24, x10, 2&31
	bltu x24, x27, .LBB0_385
.LBB0_383:                              //  %if.then352
                                        //    in Loop: Header=BB0_371 Depth=2
	sll x11, x27, 3&31
	mv x10, x26
	jal realloc
	mv x26, x10
	beq x0, x26, .LBB0_519
.LBB0_384:                              //  %if.end357
                                        //    in Loop: Header=BB0_371 Depth=2
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	sll x27, x27, 1&31
	sw x26, 0 ( x10 )
	sll x10, x24, 2&31
	add x25, x10, x26
.LBB0_385:                              //  %cleanup.cont365
                                        //    in Loop: Header=BB0_371 Depth=2
	mv x24, x0
	add x25, x25, 4
.LBB0_386:                              //  %if.end368
                                        //    in Loop: Header=BB0_371 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_369
.LBB0_387:                              //  %land.lhs.true372
                                        //    in Loop: Header=BB0_371 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_369
.LBB0_388:                              //  %if.then375
                                        //    in Loop: Header=BB0_4 Depth=1
	bltu x0, x24, .LBB0_516
.LBB0_389:                              //  %while.end381
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_393
.LBB0_390:                              //  %while.end381
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x11, x25, x26
	sra x10, x11, 2&31
	bgeu x10, x27, .LBB0_393
.LBB0_391:                              //  %if.then391
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB0_393
.LBB0_392:                              //  %if.then395
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -720 ( fp )             //  4-byte Folded Reload
	sw x10, 0 ( x11 )
.LBB0_393:                              //  %cleanup403
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -724 ( fp )             //  4-byte Folded Reload
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	seqz x10, x10
	add x27, x10, x27
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB0_603
.LBB0_604:                              //  %cleanup403
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_603:                              //  %cleanup403
	jal x0, .LBB0_520
.LBB0_394:                              //  %if.then566
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB0_533
.LBB0_395:                              //  %if.end586
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB0_533
.LBB0_396:                              //  %cleanup595
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x11, 4 ( x22 )
	lw x13, -720 ( fp )             //  4-byte Folded Reload
	sw x10, 0 ( x22 )
	add x11, x11, 8
	sh x11, 4 ( x22 )
	lhu x11, 6 ( x22 )
.LBB0_397:                              //  %if.end598
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x26, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x22 )
	add x10, x0, 32
	sw x10, -728 ( fp )             //  4-byte Folded Spill
	mv x25, x13
	sw x26, -724 ( fp )             //  4-byte Folded Spill
	jal __locale_mb_cur_max
	bne x24, x10, .LBB0_402
	jal x0, .LBB0_517
.LBB0_398:                              //    in Loop: Header=BB0_402 Depth=2
	lw x26, -724 ( fp )             //  4-byte Folded Reload
	mv x25, x11
.LBB0_399:                              //  %if.end704.us
                                        //    in Loop: Header=BB0_402 Depth=2
	lw x10, 4 ( x18 )
	bge x0, x10, .LBB0_419
.LBB0_400:                              //  %if.end716.us
                                        //    in Loop: Header=BB0_402 Depth=2
	beq x0, x23, .LBB0_497
.LBB0_401:                              //  %while.body614.us
                                        //    in Loop: Header=BB0_402 Depth=2
	jal __locale_mb_cur_max
	beq x24, x10, .LBB0_517
.LBB0_402:                              //  %if.end619.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	add x10, x10, -1
	lb x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	add x10, x11, 1
	sw x10, 0 ( x18 )
	add x10, fp, -678
	add x10, x24, x10
	sb x12, 0 ( x10 )
	lw x10, -696 ( fp )             //  4-byte Folded Reload
	add x24, x24, 1
	xor x10, x10, 3
	bltu x0, x10, .LBB0_404
.LBB0_403:                              //  %if.end619.us
                                        //    in Loop: Header=BB0_402 Depth=2
	lw x10, -688 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB0_405
.LBB0_404:                              //  %if.then633.us
                                        //    in Loop: Header=BB0_402 Depth=2
	add x10, fp, -688
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB0_405:                              //  %if.end635.us
                                        //    in Loop: Header=BB0_402 Depth=2
	add x12, fp, -678
	add x14, fp, -688
	mv x10, x19
	mv x11, x25
	mv x13, x24
	jal _mbrtowc_r
	xor x11, x10, -2
	sw x10, -696 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB0_399
.LBB0_406:                              //  %if.end635.us
                                        //    in Loop: Header=BB0_402 Depth=2
	beq x0, x10, .LBB0_410
.LBB0_407:                              //  %if.end635.us
                                        //    in Loop: Header=BB0_402 Depth=2
	xor x10, x10, -1
	beq x0, x10, .LBB0_517
.LBB0_408:                              //  %if.then648.us
                                        //    in Loop: Header=BB0_402 Depth=2
	mv x12, x26
	mv x26, x25
	lw x25, 0 ( x25 )
	xor x10, x25, -1
	bltu x0, x10, .LBB0_411
.LBB0_409:                              //    in Loop: Header=BB0_402 Depth=2
	lw x11, -696 ( fp )             //  4-byte Folded Reload
	mv x25, x26
	add x27, x0, -1
	mv x26, x12
	jal x0, .LBB0_414
.LBB0_410:                              //  %if.then648.thread.us
                                        //    in Loop: Header=BB0_402 Depth=2
	mv x26, x25
	sw x0, 0 ( x25 )
	mv x25, x0
.LBB0_411:                              //  %if.end.i.us
                                        //    in Loop: Header=BB0_402 Depth=2
	mv x27, x0
	add x10, fp, -60
	add x12, x0, 8
	mv x11, x27
	jal memset
	lui x10, %hi( __global_locale )
	add x10, x10, %lo( __global_locale )
	lw x14, 224 ( x10 )
	add x11, fp, -61
	mv x10, x19
	mv x12, x25
	add x13, fp, -60
	call.reg x14
	seqz x11, x0
	bne x10, x11, .LBB0_413
.LBB0_412:                              //    in Loop: Header=BB0_402 Depth=2
	lbu x27, -61 ( fp )
.LBB0_413:                              //  %if.end.i.us
                                        //    in Loop: Header=BB0_402 Depth=2
	mv x25, x26
	lw x11, -696 ( fp )             //  4-byte Folded Reload
	lw x26, -724 ( fp )             //  4-byte Folded Reload
.LBB0_414:                              //  %__wctob.exit.us
                                        //    in Loop: Header=BB0_402 Depth=2
	add x12, fp, -328
	add x12, x27, x12
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	lbu x12, 0 ( x12 )
	beq x0, x12, .LBB0_494
.LBB0_415:                              //  %if.end662.us
                                        //    in Loop: Header=BB0_402 Depth=2
	xor x11, x11, 3
	snez x12, x11
	lw x11, -688 ( fp )
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	add x20, x20, x24
	mv x24, x0
	xor x11, x11, 4
	snez x11, x11
	or x11, x12, x11
	sub x23, x23, x11
	add x25, x25, 4
	beq x0, x26, .LBB0_399
.LBB0_416:                              //  %if.end662.us
                                        //    in Loop: Header=BB0_402 Depth=2
	lw x26, -728 ( fp )             //  4-byte Folded Reload
	sub x12, x25, x10
	mv x11, x25
	sra x25, x12, 2&31
	bltu x25, x26, .LBB0_398
.LBB0_417:                              //  %if.then688.us
                                        //    in Loop: Header=BB0_402 Depth=2
	sll x11, x26, 3&31
	jal realloc
	beq x0, x10, .LBB0_532
.LBB0_418:                              //  %if.end694.us
                                        //    in Loop: Header=BB0_402 Depth=2
	lw x12, -724 ( fp )             //  4-byte Folded Reload
	sll x11, x25, 2&31
	sll x26, x26, 1&31
	sw x26, -728 ( fp )             //  4-byte Folded Spill
	add x25, x11, x10
	mv x26, x12
	sw x10, 0 ( x12 )
	sw x10, -720 ( fp )             //  4-byte Folded Spill
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_400
.LBB0_419:                              //  %land.lhs.true708.us
                                        //    in Loop: Header=BB0_402 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_400
.LBB0_420:                              //  %if.then711
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x24, .LBB0_497
	jal x0, .LBB0_517
.LBB0_421:                              //  %if.then965
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB0_533
.LBB0_422:                              //  %if.end985
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB0_533
.LBB0_423:                              //  %cleanup994
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x11, 4 ( x22 )
	sw x10, 0 ( x22 )
	add x11, x11, 8
	sh x11, 4 ( x22 )
	lhu x11, 6 ( x22 )
.LBB0_424:                              //  %if.end997
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x27, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x22 )
	add x10, x0, 32
	lw x25, -720 ( fp )             //  4-byte Folded Reload
	sw x10, -724 ( fp )             //  4-byte Folded Spill
	sw x26, -728 ( fp )             //  4-byte Folded Spill
	beq x0, x23, .LBB0_503
.LBB0_425:                              //  %if.end1009
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	lbu x10, 0 ( x10 )
	add x10, x10, x9
	lbu x10, 1 ( x10 )
	and x10, x10, 8
	bltu x0, x10, .LBB0_503
.LBB0_426:                              //  %while.body1019.lr.ph
                                        //    in Loop: Header=BB0_4 Depth=1
	bltu x0, x26, .LBB0_446
.LBB0_427:                              //  %while.body1019.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x26, x0
.LBB0_428:                              //  %while.body1019.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	jal __locale_mb_cur_max
	beq x26, x10, .LBB0_516
.LBB0_429:                              //  %if.end1024.us
                                        //    in Loop: Header=BB0_428 Depth=2
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	add x10, x10, -1
	lb x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	add x10, x11, 1
	sw x10, 0 ( x18 )
	add x10, fp, -678
	add x10, x26, x10
	sb x12, 0 ( x10 )
	lw x10, -696 ( fp )             //  4-byte Folded Reload
	add x26, x26, 1
	xor x10, x10, 3
	bltu x0, x10, .LBB0_431
.LBB0_430:                              //  %if.end1024.us
                                        //    in Loop: Header=BB0_428 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB0_432
.LBB0_431:                              //  %if.then1038.us
                                        //    in Loop: Header=BB0_428 Depth=2
	add x10, fp, -60
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB0_432:                              //  %if.end1040.us
                                        //    in Loop: Header=BB0_428 Depth=2
	add x12, fp, -678
	add x14, fp, -60
	mv x10, x19
	mv x11, x25
	mv x13, x26
	jal _mbrtowc_r
	xor x11, x10, -2
	sw x10, -696 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB0_442
.LBB0_433:                              //  %if.end1040.us
                                        //    in Loop: Header=BB0_428 Depth=2
	beq x0, x10, .LBB0_436
.LBB0_434:                              //  %if.end1040.us
                                        //    in Loop: Header=BB0_428 Depth=2
	xor x10, x10, -1
	beq x0, x10, .LBB0_516
.LBB0_435:                              //  %if.end1040.us.if.then1053.us_crit_edge
                                        //    in Loop: Header=BB0_428 Depth=2
	lw x10, 0 ( x25 )
	jal iswspace
	beq x0, x10, .LBB0_437
	jal x0, .LBB0_491
.LBB0_436:                              //  %if.then1049.us
                                        //    in Loop: Header=BB0_428 Depth=2
	mv x10, x0
	sw x0, 0 ( x25 )
	jal iswspace
	bltu x0, x10, .LBB0_491
.LBB0_437:                              //  %if.end1066.us
                                        //    in Loop: Header=BB0_428 Depth=2
	lw x10, -696 ( fp )             //  4-byte Folded Reload
	lw x11, -60 ( fp )
	add x20, x20, x26
	mv x26, x0
	xor x10, x10, 3
	xor x11, x11, 4
	snez x10, x10
	snez x11, x11
	or x10, x10, x11
	sub x23, x23, x10
	add x25, x25, 4
	beq x0, x27, .LBB0_442
.LBB0_438:                              //  %if.end1066.us
                                        //    in Loop: Header=BB0_428 Depth=2
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	mv x12, x25
	mv x25, x27
	lw x27, -724 ( fp )             //  4-byte Folded Reload
	sub x11, x12, x10
	sra x24, x11, 2&31
	bltu x24, x27, .LBB0_441
.LBB0_439:                              //  %if.then1092.us
                                        //    in Loop: Header=BB0_428 Depth=2
	sll x11, x27, 3&31
	jal realloc
	beq x0, x10, .LBB0_532
.LBB0_440:                              //  %if.end1098.us
                                        //    in Loop: Header=BB0_428 Depth=2
	sll x11, x24, 2&31
	sll x27, x27, 1&31
	sw x10, 0 ( x25 )
	sw x10, -720 ( fp )             //  4-byte Folded Spill
	add x10, x11, x10
	sw x27, -724 ( fp )             //  4-byte Folded Spill
	mv x27, x25
	mv x25, x10
	add x24, fp, -679
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_444
	jal x0, .LBB0_443
.LBB0_441:                              //    in Loop: Header=BB0_428 Depth=2
	mv x27, x25
	add x24, fp, -679
	mv x25, x12
.LBB0_442:                              //  %if.end1108.us
                                        //    in Loop: Header=BB0_428 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_444
.LBB0_443:                              //  %land.lhs.true1112.us
                                        //    in Loop: Header=BB0_428 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_502
.LBB0_444:                              //  %if.end1120.us
                                        //    in Loop: Header=BB0_428 Depth=2
	beq x0, x23, .LBB0_503
.LBB0_445:                              //  %if.end1120.us
                                        //    in Loop: Header=BB0_428 Depth=2
	lw x10, 0 ( x18 )
	lbu x10, 0 ( x10 )
	add x10, x10, x9
	lbu x10, 1 ( x10 )
	and x10, x10, 8
	beq x0, x10, .LBB0_428
	jal x0, .LBB0_503
.LBB0_446:                              //  %while.body1019.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x26, x0
.LBB0_447:                              //  %while.body1019
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	jal __locale_mb_cur_max
	beq x26, x10, .LBB0_516
.LBB0_448:                              //  %if.end1024
                                        //    in Loop: Header=BB0_447 Depth=2
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	add x10, x10, -1
	lb x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	add x10, x11, 1
	sw x10, 0 ( x18 )
	add x10, fp, -678
	add x10, x26, x10
	sb x12, 0 ( x10 )
	lw x10, -696 ( fp )             //  4-byte Folded Reload
	add x26, x26, 1
	xor x10, x10, 3
	bltu x0, x10, .LBB0_450
.LBB0_449:                              //  %if.end1024
                                        //    in Loop: Header=BB0_447 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB0_451
.LBB0_450:                              //  %if.then1038
                                        //    in Loop: Header=BB0_447 Depth=2
	add x10, fp, -60
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB0_451:                              //  %if.end1040
                                        //    in Loop: Header=BB0_447 Depth=2
	add x12, fp, -678
	add x14, fp, -60
	mv x10, x19
	mv x11, x25
	mv x13, x26
	jal _mbrtowc_r
	xor x11, x10, -2
	sw x10, -696 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB0_457
.LBB0_452:                              //  %if.end1040
                                        //    in Loop: Header=BB0_447 Depth=2
	beq x0, x10, .LBB0_455
.LBB0_453:                              //  %if.end1040
                                        //    in Loop: Header=BB0_447 Depth=2
	xor x10, x10, -1
	beq x0, x10, .LBB0_516
.LBB0_454:                              //  %if.end1040.if.then1053_crit_edge
                                        //    in Loop: Header=BB0_447 Depth=2
	lw x10, 0 ( x25 )
	jal iswspace
	beq x0, x10, .LBB0_456
	jal x0, .LBB0_491
.LBB0_455:                              //  %if.then1049
                                        //    in Loop: Header=BB0_447 Depth=2
	mv x10, x0
	sw x0, 0 ( x25 )
	jal iswspace
	bltu x0, x10, .LBB0_491
.LBB0_456:                              //  %if.end1066
                                        //    in Loop: Header=BB0_447 Depth=2
	lw x10, -696 ( fp )             //  4-byte Folded Reload
	lw x11, -60 ( fp )
	add x20, x20, x26
	mv x26, x0
	xor x10, x10, 3
	xor x11, x11, 4
	snez x10, x10
	snez x11, x11
	or x10, x10, x11
	sub x23, x23, x10
.LBB0_457:                              //  %if.end1108
                                        //    in Loop: Header=BB0_447 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_459
.LBB0_458:                              //  %land.lhs.true1112
                                        //    in Loop: Header=BB0_447 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_502
.LBB0_459:                              //  %if.end1120
                                        //    in Loop: Header=BB0_447 Depth=2
	beq x0, x23, .LBB0_503
.LBB0_460:                              //  %if.end1120
                                        //    in Loop: Header=BB0_447 Depth=2
	lw x10, 0 ( x18 )
	lbu x10, 0 ( x10 )
	add x10, x10, x9
	lbu x10, 1 ( x10 )
	and x10, x10, 8
	beq x0, x10, .LBB0_447
	jal x0, .LBB0_503
.LBB0_461:                              //  %while.body854.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x25, x0
	add x23, x23, -1
	jal x0, .LBB0_463
.LBB0_462:                              //  %if.end900.us
                                        //    in Loop: Header=BB0_463 Depth=2
	lw x10, 0 ( x18 )
	add x12, fp, -328
	add x25, x25, 1
	lbu x11, 0 ( x10 )
	add x11, x11, x12
	lbu x11, 0 ( x11 )
	beq x0, x11, .LBB0_468
.LBB0_463:                              //  %while.body854.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x11, x10, 1
	sw x11, 0 ( x18 )
	lw x11, 4 ( x18 )
	add x27, x25, x26
	add x11, x11, -1
	sw x11, 4 ( x18 )
	lb x10, 0 ( x10 )
	sb x10, 0 ( x27 )
	beq x23, x25, .LBB0_468
.LBB0_464:                              //  %if.end888.us
                                        //    in Loop: Header=BB0_463 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_462
.LBB0_465:                              //  %land.lhs.true892.us
                                        //    in Loop: Header=BB0_463 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_462
.LBB0_466:                              //  %if.then895.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	add x25, x27, 1
	lw x27, -716 ( fp )             //  4-byte Folded Reload
.LBB0_467:                              //  %if.then895
                                        //    in Loop: Header=BB0_4 Depth=1
	bne x25, x26, .LBB0_469
	jal x0, .LBB0_517
.LBB0_468:                              //  %while.end901.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	add x25, x27, 1
	lw x27, -716 ( fp )             //  4-byte Folded Reload
.LBB0_469:                              //  %while.end901
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x23, x25, x26
	beq x0, x23, .LBB0_520
.LBB0_470:                              //  %if.end908
                                        //    in Loop: Header=BB0_4 Depth=1
	sb x0, 0 ( x25 )
	lw x25, -720 ( fp )             //  4-byte Folded Reload
	beq x0, x25, .LBB0_474
.LBB0_471:                              //  %if.end908
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x23, 1
	bgeu x11, x24, .LBB0_474
.LBB0_472:                              //  %if.then915
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x25 )
	jal realloc
	beq x0, x10, .LBB0_474
.LBB0_473:                              //  %if.then920
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 0 ( x25 )
.LBB0_474:                              //  %cleanup925.thread2791
                                        //    in Loop: Header=BB0_4 Depth=1
	add x20, x20, x23
	add x27, x27, 1
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB0_605
.LBB0_606:                              //  %cleanup925.thread2791
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_605:                              //  %cleanup925.thread2791
	jal x0, .LBB0_520
.LBB0_475:                              //  %while.body1256.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x27, x0
	add x23, x23, -1
	jal x0, .LBB0_477
.LBB0_476:                              //  %if.end1298.us
                                        //    in Loop: Header=BB0_477 Depth=2
	lw x10, 0 ( x18 )
	add x27, x27, 1
	lbu x11, 0 ( x10 )
	add x11, x11, x9
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB0_480
.LBB0_477:                              //  %while.body1256.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x11, x10, 1
	sw x11, 0 ( x18 )
	lw x11, 4 ( x18 )
	add x26, x27, x25
	add x11, x11, -1
	sw x11, 4 ( x18 )
	lb x10, 0 ( x10 )
	sb x10, 0 ( x26 )
	beq x23, x27, .LBB0_480
.LBB0_478:                              //  %if.end1290.us
                                        //    in Loop: Header=BB0_477 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB0_476
.LBB0_479:                              //  %land.lhs.true1294.us
                                        //    in Loop: Header=BB0_477 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_476
.LBB0_480:                              //  %while.end1299.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	add x27, x26, 1
.LBB0_481:                              //  %while.end1299
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	sub x23, x27, x25
	sb x0, 0 ( x27 )
	beq x0, x10, .LBB0_485
.LBB0_482:                              //  %while.end1299
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x23, 1
	bgeu x11, x24, .LBB0_485
.LBB0_483:                              //  %if.then1309
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB0_485
.LBB0_484:                              //  %if.then1314
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -720 ( fp )             //  4-byte Folded Reload
	sw x10, 0 ( x11 )
.LBB0_485:                              //  %cleanup1322
                                        //    in Loop: Header=BB0_4 Depth=1
	add x20, x20, x23
.LBB0_486:                              //  %if.end1327
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x27, -716 ( fp )             //  4-byte Folded Reload
.LBB0_487:                              //  %if.end1327
                                        //    in Loop: Header=BB0_4 Depth=1
	add x27, x27, 1
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB0_607
.LBB0_608:                              //  %if.end1327
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_607:                              //  %if.end1327
	jal x0, .LBB0_520
.LBB0_488:                              //  %if.then1797
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x10, %hi( .str.1 )
	add x10, x10, %lo( .str.1 )
	jal nanf
.LBB0_489:                              //  %if.end1803
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 0 ( x25 )
	add x27, x27, 1
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB0_609
.LBB0_610:                              //  %if.end1803
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_609:                              //  %if.end1803
	jal x0, .LBB0_520
.LBB0_490:                              //    in Loop: Header=BB0_4 Depth=1
	mv x26, x0
	mv x12, x26
	mv x10, x26
	sw x12, -728 ( fp )             //  4-byte Folded Spill
	sw x10, -720 ( fp )             //  4-byte Folded Spill
	sw x11, -696 ( fp )             //  4-byte Folded Spill
	bltu x0, x24, .LBB0_495
	jal x0, .LBB0_497
.LBB0_491:                              //  %while.cond1057.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x26, .LBB0_503
.LBB0_492:                              //  %while.body1060
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x26, x24
	lbu x11, 0 ( x10 )
	mv x10, x19
	mv x12, x18
	jal _sungetc_r
	add x26, x26, -1
	bltu x0, x26, .LBB0_492
	jal x0, .LBB0_503
.LBB0_493:                              //  %if.then172
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sh x20, 0 ( x10 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB0_611
.LBB0_612:                              //  %if.then172
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_611:                              //  %if.then172
	jal x0, .LBB0_520
.LBB0_494:                              //    in Loop: Header=BB0_4 Depth=1
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	lw x12, -728 ( fp )             //  4-byte Folded Reload
	sw x12, -728 ( fp )             //  4-byte Folded Spill
	sw x10, -720 ( fp )             //  4-byte Folded Spill
	sw x11, -696 ( fp )             //  4-byte Folded Spill
	beq x0, x24, .LBB0_497
.LBB0_495:                              //  %while.body656.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x23, fp, -679
.LBB0_496:                              //  %while.body656
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x24, x23
	lbu x11, 0 ( x10 )
	mv x10, x19
	mv x12, x18
	jal _sungetc_r
	add x24, x24, -1
	bltu x0, x24, .LBB0_496
.LBB0_497:                              //  %while.end717
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -732 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_498
.LBB0_613:                              //  %while.end717
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_43
.LBB0_498:                              //  %if.then720
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x0, 0 ( x25 )
	beq x0, x26, .LBB0_487
.LBB0_499:                              //  %if.then720
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	sub x10, x25, x10
	sra x10, x10, 2&31
	add x11, x10, 1
	lw x10, -728 ( fp )             //  4-byte Folded Reload
	bgeu x11, x10, .LBB0_487
.LBB0_500:                              //  %if.then731
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x26 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB0_487
.LBB0_501:                              //  %if.then736
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 0 ( x26 )
	add x27, x27, 1
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB0_614
.LBB0_615:                              //  %if.then736
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_614:                              //  %if.then736
	jal x0, .LBB0_520
.LBB0_502:                              //  %if.then1115
                                        //    in Loop: Header=BB0_4 Depth=1
	bltu x0, x26, .LBB0_516
.LBB0_503:                              //  %while.end1121
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -728 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_505
.LBB0_504:                              //    in Loop: Header=BB0_4 Depth=1
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB0_616
.LBB0_617:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_616:
	jal x0, .LBB0_520
.LBB0_505:                              //  %if.then1124
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x0, 0 ( x25 )
	beq x0, x27, .LBB0_486
.LBB0_506:                              //  %if.then1124
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	sub x10, x25, x10
	sra x10, x10, 2&31
	add x11, x10, 1
	lw x10, -724 ( fp )             //  4-byte Folded Reload
	bgeu x11, x10, .LBB0_486
.LBB0_507:                              //  %if.then1135
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x27 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB0_486
.LBB0_508:                              //  %if.then1140
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 0 ( x27 )
	jal x0, .LBB0_486
.LBB0_509:                              //  %for.end1414.loopexit.split.loop.exit
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x12, -700 ( fp )             //  4-byte Folded Spill
	add x27, fp, -678
	add x26, x25, x27
	and x10, x24, 256
	bltu x0, x10, .LBB0_153
	jal x0, .LBB0_156
.LBB0_510:                              //  %if.then1462
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -704 ( fp )             //  4-byte Folded Reload
	lui x10, %hi( _strtoul_r )
	add x10, x10, %lo( _strtoul_r )
	beq x11, x10, .LBB0_513
.LBB0_511:                              //  %if.else1468
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13, -700 ( fp )             //  4-byte Folded Reload
	add x11, fp, -678
	mv x12, x0
	mv x10, x19
	jal _strtoll_r
	jal x0, .LBB0_514
.LBB0_512:                              //  %if.then183
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sra x11, x20, 31&31
	sw x11, 4 ( x10 )
	sw x20, 0 ( x10 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB0_618
.LBB0_619:                              //  %if.then183
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_618:                              //  %if.then183
	jal x0, .LBB0_520
.LBB0_513:                              //  %if.then1465
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13, -700 ( fp )             //  4-byte Folded Reload
	add x11, fp, -678
	mv x12, x0
	mv x10, x19
	jal _strtoull_r
.LBB0_514:                              //  %if.end1471
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x12, -68 ( fp )
	add x13, x12, 4
	sw x13, -68 ( fp )
	lw x12, 0 ( x12 )
	sw x11, 4 ( x12 )
	sw x10, 0 ( x12 )
	jal x0, .LBB0_322
.LBB0_515:
	mv x27, x0
	jal x0, .LBB0_527
.LBB0_516:                              //  %cleanup1145.thread2815
	lw x27, -716 ( fp )             //  4-byte Folded Reload
.LBB0_517:                              //  %input_failure
	beq x0, x27, .LBB0_519
.LBB0_518:                              //  %land.lhs.true1817
	lbu x10, 12 ( x18 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB0_520
.LBB0_519:                              //  %land.lhs.true1817
	add x27, x0, -1
.LBB0_520:                              //  %do.body1822
	beq x0, x22, .LBB0_527
.LBB0_521:                              //  %if.then1824
	xor x10, x27, -1
	bltu x0, x10, .LBB0_525
.LBB0_522:                              //  %for.cond1828.preheader
	lhu x10, 6 ( x22 )
	add x27, x0, -1
	beq x0, x10, .LBB0_525
.LBB0_523:                              //  %for.body1833.lr.ph
	mv x9, x0
	mv x18, x9
.LBB0_524:                              //  %for.body1833
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x22 )
	add x10, x9, x10
	lw x10, 0 ( x10 )
	lw x10, 0 ( x10 )
	jal free
	lw x10, 0 ( x22 )
	add x18, x18, 1
	add x10, x9, x10
	lw x10, 0 ( x10 )
	add x9, x9, 4
	sw x0, 0 ( x10 )
	lhu x10, 6 ( x22 )
	bltu x18, x10, .LBB0_524
.LBB0_525:                              //  %if.end1841
	lw x10, 0 ( x22 )
	beq x0, x10, .LBB0_527
.LBB0_526:                              //  %if.then1844
	jal free
.LBB0_527:                              //  %cleanup1850
	mv x10, x27
	lw x27, -48 ( fp )              //  4-byte Folded Reload
	lw x26, -44 ( fp )              //  4-byte Folded Reload
	lw x25, -40 ( fp )              //  4-byte Folded Reload
	lw x24, -36 ( fp )              //  4-byte Folded Reload
	lw x23, -32 ( fp )              //  4-byte Folded Reload
	lw x22, -28 ( fp )              //  4-byte Folded Reload
	lw x21, -24 ( fp )              //  4-byte Folded Reload
	lw x20, -20 ( fp )              //  4-byte Folded Reload
	lw x19, -16 ( fp )              //  4-byte Folded Reload
	lw x18, -12 ( fp )              //  4-byte Folded Reload
	lw x9, -8 ( fp )                //  4-byte Folded Reload
	lw ra, -4 ( fp )                //  4-byte Folded Reload
	mv sp, fp
	lw fp, 0 ( sp )
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_528:                              //  %while.cond1671.preheader
	bge x0, x27, .LBB0_534
.LBB0_529:                              //  %while.body1675.preheader
	add x9, fp, -678
	add x20, x27, x9
.LBB0_530:                              //  %while.body1675
                                        //  =>This Inner Loop Header: Depth=1
	lb x11, -1 ( x20 )
	mv x10, x19
	mv x12, x18
	jal _sungetc_r
	add x20, x20, -1
	bltu x9, x20, .LBB0_530
	jal x0, .LBB0_534
.LBB0_532:
	add x25, x0, -1
.LBB0_533:                              //  %cleanup1145.thread
	mv x27, x25
	bltu x0, x22, .LBB0_521
	jal x0, .LBB0_527
.LBB0_535:                              //  %while.cond1703.preheader
	add x9, fp, -679
	bge x0, x27, .LBB0_534
.LBB0_536:                              //  %while.body1707
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x27, x9
	lb x11, 0 ( x10 )
	mv x10, x19
	mv x12, x18
	jal _sungetc_r
	add x27, x27, -1
	blt x0, x27, .LBB0_536
	jal x0, .LBB0_534
.LBB0_538:                              //  %while.cond1721.preheader
	bge x0, x27, .LBB0_534
.LBB0_539:                              //  %while.body1725.preheader
	add x9, fp, -679
.LBB0_540:                              //  %while.body1725
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x27, x9
	lb x11, 0 ( x10 )
	mv x10, x19
	mv x12, x18
	jal _sungetc_r
	add x27, x27, -1
	blt x0, x27, .LBB0_540
.LBB0_534:
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	bltu x0, x22, .LBB0_521
	jal x0, .LBB0_527
.LBB0_545:
	mv x25, x27
	mv x27, x25
	bltu x0, x22, .LBB0_521
	jal x0, .LBB0_527
.LBB0_546:
	lw x25, -716 ( fp )             //  4-byte Folded Reload
	mv x27, x25
	bltu x0, x22, .LBB0_521
	jal x0, .LBB0_527
.Lfunc_end0:
	.size	__ssvfscanf_r, .Lfunc_end0-__ssvfscanf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_39
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_21
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_16
	.long	.LBB0_16
	.long	.LBB0_16
	.long	.LBB0_16
	.long	.LBB0_16
	.long	.LBB0_16
	.long	.LBB0_16
	.long	.LBB0_16
	.long	.LBB0_16
	.long	.LBB0_16
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_44
	.long	.LBB0_520
	.long	.LBB0_216
	.long	.LBB0_218
	.long	.LBB0_44
	.long	.LBB0_44
	.long	.LBB0_44
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_18
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_219
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_220
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_77
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_221
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_44
	.long	.LBB0_520
	.long	.LBB0_217
	.long	.LBB0_222
	.long	.LBB0_44
	.long	.LBB0_44
	.long	.LBB0_44
	.long	.LBB0_23
	.long	.LBB0_223
	.long	.LBB0_18
	.long	.LBB0_520
	.long	.LBB0_26
	.long	.LBB0_30
	.long	.LBB0_225
	.long	.LBB0_231
	.long	.LBB0_232
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_233
	.long	.LBB0_13
	.long	.LBB0_234
	.long	.LBB0_520
	.long	.LBB0_520
	.long	.LBB0_77
	.long	.LBB0_520
	.long	.LBB0_13
JTI0_1:
	.long	.LBB0_55
	.long	.LBB0_61
	.long	.LBB0_67
	.long	.LBB0_73
	.long	.LBB0_75
JTI0_2:
	.long	.LBB0_174
	.long	.LBB0_199
	.long	.LBB0_174
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_202
	.long	.LBB0_169
	.long	.LBB0_169
	.long	.LBB0_169
	.long	.LBB0_169
	.long	.LBB0_169
	.long	.LBB0_169
	.long	.LBB0_169
	.long	.LBB0_169
	.long	.LBB0_169
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_176
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_178
	.long	.LBB0_184
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_186
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_190
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_195
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_197
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_176
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_178
	.long	.LBB0_184
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_186
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_190
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_195
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_199
	.long	.LBB0_197
JTI0_3:
	.long	.LBB0_136
	.long	.LBB0_152
	.long	.LBB0_136
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_142
	.long	.LBB0_135
	.long	.LBB0_135
	.long	.LBB0_135
	.long	.LBB0_135
	.long	.LBB0_135
	.long	.LBB0_135
	.long	.LBB0_135
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_133
	.long	.LBB0_133
	.long	.LBB0_133
	.long	.LBB0_133
	.long	.LBB0_133
	.long	.LBB0_133
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_140
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_133
	.long	.LBB0_133
	.long	.LBB0_133
	.long	.LBB0_133
	.long	.LBB0_133
	.long	.LBB0_133
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_152
	.long	.LBB0_140
                                        //  -- End function
	.address_space	0
	.type	__ssvfscanf_r.basefix,@object //  @__ssvfscanf_r.basefix
	.p2align	1
__ssvfscanf_r.basefix:
	.short	10                      //  0xa
	.short	1                       //  0x1
	.short	2                       //  0x2
	.short	3                       //  0x3
	.short	4                       //  0x4
	.short	5                       //  0x5
	.short	6                       //  0x6
	.short	7                       //  0x7
	.short	8                       //  0x8
	.short	9                       //  0x9
	.short	10                      //  0xa
	.short	11                      //  0xb
	.short	12                      //  0xc
	.short	13                      //  0xd
	.short	14                      //  0xe
	.short	15                      //  0xf
	.short	16                      //  0x10
	.size	__ssvfscanf_r.basefix, 34

	.address_space	0
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"e%ld"
	.size	.str, 5

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.zero	1
	.size	.str.1, 1

	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
