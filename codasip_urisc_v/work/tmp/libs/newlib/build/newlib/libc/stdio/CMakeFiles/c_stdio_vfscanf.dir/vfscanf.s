	.text
	.file	"vfscanf.c"
	.globl	vfscanf                 //  -- Begin function vfscanf
	.type	vfscanf,@function
vfscanf:                                //  @vfscanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x19, 0 ( x10 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x12
	mv x9, x11
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x19, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x10, 56 ( x19 )
	bltu x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then
	mv x10, x19
	jal __sinit
.LBB0_3:                                //  %if.end
	mv x10, x19
	mv x11, x18
	mv x12, x9
	mv x13, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	j __svfscanf_r
.Lfunc_end0:
	.size	vfscanf, .Lfunc_end0-vfscanf
	.cfi_endproc
                                        //  -- End function
	.globl	__svfscanf_r            //  -- Begin function __svfscanf_r
	.type	__svfscanf_r,@function
__svfscanf_r:                           //  @__svfscanf_r
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
	bltu x0, x12, .LBB1_2
.LBB1_1:                                //  %if.then7
	or x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 100 ( x18 )
	lui x11, %hi( -8193 )
	add x11, x11, %lo( -8193 )
	and x10, x11, x10
	sw x10, 100 ( x18 )
.LBB1_2:                                //  %do.end
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB1_3
.LBB1_547:                              //  %do.end
	jal x0, .LBB1_515
.LBB1_3:                                //  %land.lhs.true.lr.ph.lr.ph.lr.ph.lr.ph
	add x12, fp, -678
	add x11, x12, 339
	sw x11, -708 ( fp )             //  4-byte Folded Spill
	lui x11, %hi( _ctype_ )
	add x9, x11, %lo( _ctype_ )
	lui x11, %hi( JTI1_0 )
	mv x22, x0
	add x11, x11, %lo( JTI1_0 )
	sw x11, -692 ( fp )             //  4-byte Folded Spill
	add x11, x12, 338
	mv x27, x22
	mv x20, x22
	sw x22, -704 ( fp )             //  4-byte Folded Spill
	sw x22, -700 ( fp )             //  4-byte Folded Spill
	sw x22, -696 ( fp )             //  4-byte Folded Spill
	sw x11, -712 ( fp )             //  4-byte Folded Spill
.LBB1_4:                                //  %land.lhs.true.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_5 Depth 2
                                        //        Child Loop BB1_7 Depth 3
                                        //      Child Loop BB1_15 Depth 2
                                        //      Child Loop BB1_49 Depth 2
                                        //      Child Loop BB1_167 Depth 2
                                        //      Child Loop BB1_268 Depth 2
                                        //      Child Loop BB1_131 Depth 2
                                        //      Child Loop BB1_447 Depth 2
                                        //      Child Loop BB1_428 Depth 2
                                        //      Child Loop BB1_492 Depth 2
                                        //      Child Loop BB1_250 Depth 2
                                        //      Child Loop BB1_358 Depth 2
                                        //      Child Loop BB1_477 Depth 2
                                        //      Child Loop BB1_402 Depth 2
                                        //      Child Loop BB1_100 Depth 2
                                        //      Child Loop BB1_496 Depth 2
                                        //      Child Loop BB1_243 Depth 2
                                        //      Child Loop BB1_343 Depth 2
                                        //      Child Loop BB1_463 Depth 2
                                        //      Child Loop BB1_371 Depth 2
                                        //      Child Loop BB1_82 Depth 2
                                        //      Child Loop BB1_237 Depth 2
	add x11, x10, x9
	add x24, x21, 1
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	beq x0, x11, .LBB1_11
.LBB1_5:                                //  %for.cond24.preheader
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_7 Depth 3
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_7
	jal x0, .LBB1_6
.LBB1_8:                                //  %if.end35
                                        //    in Loop: Header=BB1_7 Depth=3
	add x10, x10, 1
	sw x10, 0 ( x18 )
	lw x10, 4 ( x18 )
	add x20, x20, 1
	add x10, x10, -1
	sw x10, 4 ( x18 )
	blt x0, x10, .LBB1_7
.LBB1_6:                                //  %land.lhs.true27
                                        //    in Loop: Header=BB1_5 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	bltu x0, x10, .LBB1_9
.LBB1_7:                                //  %lor.lhs.false
                                        //    Parent Loop BB1_4 Depth=1
                                        //      Parent Loop BB1_5 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 0 ( x18 )
	lbu x11, 0 ( x10 )
	add x11, x11, x9
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB1_8
.LBB1_9:                                //  %for.end
                                        //    in Loop: Header=BB1_5 Depth=2
	lbu x10, 0 ( x24 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB1_10
.LBB1_548:                              //  %for.end
	jal x0, .LBB1_520
.LBB1_10:                               //  %land.lhs.true
                                        //    in Loop: Header=BB1_5 Depth=2
	add x11, x10, x9
	add x24, x24, 1
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB1_5
.LBB1_11:                               //  %if.end38
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x10, 255
	xor x10, x10, 37
	bltu x0, x10, .LBB1_38
.LBB1_12:                               //  %again.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x25, x0
	mv x23, x25
	lbu x26, 0 ( x24 )
	add x11, x0, 85
	add x10, x26, -37
	bgeu x11, x10, .LBB1_15
	jal x0, .LBB1_520
.LBB1_13:                               //  %sw.bb124
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x25, 15
	mv x24, x21
	beq x0, x10, .LBB1_14
.LBB1_549:                              //  %sw.bb124
	jal x0, .LBB1_520
.LBB1_14:                               //  %again
                                        //    in Loop: Header=BB1_15 Depth=2
	lbu x26, 0 ( x24 )
	add x11, x0, 85
	add x10, x26, -37
	bgeu x11, x10, .LBB1_15
.LBB1_550:                              //  %again
	jal x0, .LBB1_520
.LBB1_15:                               //  %again
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, -692 ( fp )             //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x21, x24, 1
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB1_16:                               //  %sw.bb141
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x25, 143
	beq x0, x10, .LBB1_17
.LBB1_551:                              //  %sw.bb141
	jal x0, .LBB1_520
.LBB1_17:                               //  %if.end145
                                        //    in Loop: Header=BB1_15 Depth=2
	add x11, x0, 10
	mv x10, x23
	jal __mulsi3
	add x10, x26, x10
	add x23, x10, -48
.LBB1_20:                               //  %if.end97
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x24, x21
	lbu x26, 0 ( x24 )
	add x11, x0, 85
	add x10, x26, -37
	bgeu x11, x10, .LBB1_15
	jal x0, .LBB1_520
.LBB1_18:                               //  %sw.bb93
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x25, 15
	beq x0, x10, .LBB1_19
.LBB1_552:                              //  %sw.bb93
	jal x0, .LBB1_520
.LBB1_19:                               //  %if.end97
                                        //    in Loop: Header=BB1_15 Depth=2
	or x25, x25, 2
	jal x0, .LBB1_20
.LBB1_21:                               //  %sw.bb72
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x25, 159
	or x10, x23, x10
	beq x0, x10, .LBB1_22
.LBB1_553:                              //  %sw.bb72
	jal x0, .LBB1_520
.LBB1_22:                               //  %if.end78
                                        //    in Loop: Header=BB1_15 Depth=2
	or x25, x25, 16
	mv x23, x0
	jal x0, .LBB1_20
.LBB1_23:                               //  %sw.bb99
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x25, 15
	beq x0, x10, .LBB1_24
.LBB1_554:                              //  %sw.bb99
	jal x0, .LBB1_520
.LBB1_24:                               //  %if.end103
                                        //    in Loop: Header=BB1_15 Depth=2
	lbu x10, 1 ( x24 )
	add x11, x0, 104
	beq x10, x11, .LBB1_34
.LBB1_25:                               //  %if.end103
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10, x0, 4
	jal x0, .LBB1_29
.LBB1_26:                               //  %sw.bb80
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x25, 15
	beq x0, x10, .LBB1_27
.LBB1_555:                              //  %sw.bb80
	jal x0, .LBB1_520
.LBB1_27:                               //  %if.end84
                                        //    in Loop: Header=BB1_15 Depth=2
	lbu x10, 1 ( x24 )
	add x11, x0, 108
	beq x10, x11, .LBB1_35
.LBB1_28:                               //  %if.end84
                                        //    in Loop: Header=BB1_15 Depth=2
	seqz x10, x0
.LBB1_29:                               //  %if.end84
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x24, x21
	jal x0, .LBB1_37
.LBB1_30:                               //  %sw.bb129
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x25, 143
	beq x0, x10, .LBB1_31
.LBB1_556:                              //  %sw.bb129
	jal x0, .LBB1_520
.LBB1_31:                               //  %do.body134
                                        //    in Loop: Header=BB1_15 Depth=2
	bltu x0, x22, .LBB1_33
.LBB1_32:                               //  %if.then136
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, sp
	add x22, x10, -16
	mv sp, x22
	sw x0, -12 ( x10 )
	sw x0, -16 ( x10 )
.LBB1_33:                               //  %do.end139
                                        //    in Loop: Header=BB1_15 Depth=2
	or x25, x25, 128
	jal x0, .LBB1_20
.LBB1_34:                               //    in Loop: Header=BB1_15 Depth=2
	add x10, x0, 8
	jal x0, .LBB1_36
.LBB1_35:                               //    in Loop: Header=BB1_15 Depth=2
	add x10, x0, 2
.LBB1_36:                               //    in Loop: Header=BB1_15 Depth=2
	add x24, x24, 2
.LBB1_37:                               //    in Loop: Header=BB1_15 Depth=2
	or x25, x25, x10
	lbu x26, 0 ( x24 )
	add x11, x0, 85
	add x10, x26, -37
	bgeu x11, x10, .LBB1_15
	jal x0, .LBB1_520
.LBB1_38:                               //    in Loop: Header=BB1_4 Depth=1
	mv x21, x24
.LBB1_39:                               //  %literal
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_41
.LBB1_40:                               //  %land.lhs.true52
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_41
.LBB1_557:                              //  %land.lhs.true52
	jal x0, .LBB1_517
.LBB1_41:                               //  %if.end56
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x18 )
	lbu x11, -1 ( x21 )
	lbu x12, 0 ( x10 )
	beq x12, x11, .LBB1_42
.LBB1_558:                              //  %if.end56
	jal x0, .LBB1_520
.LBB1_42:                               //  %if.end63
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x10, 1
	sw x10, 0 ( x18 )
	lw x10, 4 ( x18 )
	add x20, x20, 1
	add x10, x10, -1
	sw x10, 4 ( x18 )
.LBB1_43:                               //  %for.cond.outer2925.backedge
                                        //    in Loop: Header=BB1_4 Depth=1
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB1_4
	jal x0, .LBB1_520
.LBB1_44:                               //  %sw.epilog.loopexit5308
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24, x0, 4
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_46
.LBB1_45:                               //  %land.lhs.true204
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_46
.LBB1_559:                              //  %land.lhs.true204
	jal x0, .LBB1_517
.LBB1_46:                               //  %if.end208
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 64
	bltu x0, x10, .LBB1_53
.LBB1_47:                               //  %while.cond.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x18 )
	jal x0, .LBB1_49
.LBB1_48:                               //  %if.then224
                                        //    in Loop: Header=BB1_49 Depth=2
	add x10, x10, 1
	sw x10, 0 ( x18 )
	add x20, x20, 1
.LBB1_49:                               //  %while.cond.preheader
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x11, 0 ( x10 )
	add x11, x11, x9
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	beq x0, x11, .LBB1_53
.LBB1_50:                               //  %while.body
                                        //    in Loop: Header=BB1_49 Depth=2
	lw x11, 4 ( x18 )
	add x11, x11, -1
	sw x11, 4 ( x18 )
	blt x0, x11, .LBB1_48
.LBB1_51:                               //  %if.else227
                                        //    in Loop: Header=BB1_49 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_52
.LBB1_560:                              //  %if.else227
	jal x0, .LBB1_517
.LBB1_52:                               //  %if.else227.if.end232_crit_edge
                                        //    in Loop: Header=BB1_49 Depth=2
	lw x10, 0 ( x18 )
	add x20, x20, 1
	jal x0, .LBB1_49
.LBB1_53:                               //  %if.end233
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x0, 4
	bltu x10, x24, .LBB1_43
.LBB1_54:                               //  %if.end233
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x11, %hi( JTI1_1 )
	sll x10, x24, 2&31
	add x11, x11, %lo( JTI1_1 )
	add x10, x11, x10
	lw x10, 0 ( x10 )
	sw x27, -716 ( fp )             //  4-byte Folded Spill
	jr x10
.LBB1_55:                               //  %sw.bb234
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x24, x0
	bne x23, x24, .LBB1_57
.LBB1_56:                               //    in Loop: Header=BB1_4 Depth=1
	seqz x23, x0
.LBB1_57:                               //  %sw.bb234
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 1
	bltu x0, x10, .LBB1_78
.LBB1_58:                               //  %if.else418
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 16
	bltu x0, x10, .LBB1_236
.LBB1_59:                               //  %if.else451
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB1_291
.LBB1_60:                               //  %if.else512
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	mv x25, x0
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x24, 0 ( x10 )
	jal x0, .LBB1_329
.LBB1_61:                               //  %sw.bb541
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x24, x0
	bne x23, x24, .LBB1_63
.LBB1_62:                               //    in Loop: Header=BB1_4 Depth=1
	add x23, x0, -1
.LBB1_63:                               //  %sw.bb541
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 1
	bltu x0, x10, .LBB1_96
.LBB1_64:                               //  %if.else756
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 16
	bltu x0, x10, .LBB1_240
.LBB1_65:                               //  %if.else794
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB1_295
.LBB1_66:                               //  %if.else855
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	mv x25, x0
	mv x24, x25
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x26, 0 ( x10 )
	jal x0, .LBB1_339
.LBB1_67:                               //  %sw.bb940
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x27, x0
	bne x23, x27, .LBB1_69
.LBB1_68:                               //    in Loop: Header=BB1_4 Depth=1
	add x23, x0, -1
.LBB1_69:                               //  %sw.bb940
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24, fp, -679
	and x10, x25, 1
	bltu x0, x10, .LBB1_116
.LBB1_70:                               //  %if.else1160
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 16
	bltu x0, x10, .LBB1_247
.LBB1_71:                               //  %if.else1192
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	and x10, x25, 128
	bltu x0, x10, .LBB1_299
.LBB1_72:                               //  %if.else1254
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	mv x24, x0
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x25, 0 ( x10 )
	sw x24, -720 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_354
.LBB1_73:                               //  %sw.bb1337
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x23, -1
	add x11, x0, 348
	bltu x11, x10, .LBB1_118
.LBB1_74:                               //  %sw.bb1337
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x26, x23
	lui x12, %hi( 3456 )
	add x12, x12, %lo( 3456 )
	or x24, x12, x25
	bltu x0, x26, .LBB1_119
.LBB1_125:                              //    in Loop: Header=BB1_4 Depth=1
	mv x23, x0
	mv x25, x23
	add x27, fp, -678
	add x26, x25, x27
	and x10, x24, 256
	bltu x0, x10, .LBB1_153
	jal x0, .LBB1_156
.LBB1_75:                               //  %sw.bb1500
                                        //    in Loop: Header=BB1_4 Depth=1
	add x26, x23, -1
	add x27, x0, 348
	bltu x27, x26, .LBB1_121
.LBB1_76:                               //  %sw.bb1500
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x24, x23
	jal x0, .LBB1_122
.LBB1_77:                               //  %sw.bb154
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x0, 16
	sw x10, -700 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtoul_r )
	add x10, x10, %lo( _strtoul_r )
	add x24, x0, 3
	sw x10, -704 ( fp )             //  4-byte Folded Spill
	or x25, x25, 512
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_46
	jal x0, .LBB1_45
.LBB1_78:                               //  %if.then241
                                        //    in Loop: Header=BB1_4 Depth=1
	and x12, x25, 16
	sw x12, -724 ( fp )             //  4-byte Folded Spill
	beq x0, x12, .LBB1_254
.LBB1_79:                               //  %while.body307.us.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x24, x0
	jal __locale_mb_cur_max
	bne x24, x10, .LBB1_82
	jal x0, .LBB1_516
.LBB1_90:                               //    in Loop: Header=BB1_82 Depth=2
	mv x24, x25
	lw x10, 4 ( x18 )
	bge x0, x10, .LBB1_94
.LBB1_80:                               //  %if.end389.us
                                        //    in Loop: Header=BB1_82 Depth=2
	beq x0, x23, .LBB1_320
.LBB1_81:                               //  %while.body307.us
                                        //    in Loop: Header=BB1_82 Depth=2
	jal __locale_mb_cur_max
	bne x24, x10, .LBB1_82
.LBB1_561:                              //  %while.body307.us
	jal x0, .LBB1_516
.LBB1_82:                               //  %if.end312.us
                                        //    Parent Loop BB1_4 Depth=1
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
	bltu x0, x10, .LBB1_84
.LBB1_83:                               //  %if.end312.us
                                        //    in Loop: Header=BB1_82 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB1_85
.LBB1_84:                               //  %if.then325.us
                                        //    in Loop: Header=BB1_82 Depth=2
	add x10, fp, -60
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB1_85:                               //  %if.end327.us
                                        //    in Loop: Header=BB1_82 Depth=2
	mv x24, x0
	add x12, fp, -678
	add x14, fp, -60
	mv x10, x19
	mv x11, x24
	mv x13, x25
	jal _mbrtowc_r
	xor x11, x10, -2
	sw x10, -696 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB1_90
.LBB1_86:                               //  %if.end327.us
                                        //    in Loop: Header=BB1_82 Depth=2
	beq x0, x10, .LBB1_91
.LBB1_87:                               //  %if.end327.us
                                        //    in Loop: Header=BB1_82 Depth=2
	xor x10, x10, -1
	bltu x0, x10, .LBB1_88
.LBB1_562:                              //  %if.end327.us
	jal x0, .LBB1_516
.LBB1_88:                               //  %if.then343.us
                                        //    in Loop: Header=BB1_82 Depth=2
	lw x10, -696 ( fp )             //  4-byte Folded Reload
	add x20, x20, x25
	xor x10, x10, 3
	bltu x0, x10, .LBB1_92
.LBB1_89:                               //  %if.then343.us
                                        //    in Loop: Header=BB1_82 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB1_93
	jal x0, .LBB1_92
.LBB1_91:                               //  %if.then343.thread.us
                                        //    in Loop: Header=BB1_82 Depth=2
	add x20, x20, x25
.LBB1_92:                               //  %if.then351.us
                                        //    in Loop: Header=BB1_82 Depth=2
	add x23, x23, -1
.LBB1_93:                               //  %if.end377.us
                                        //    in Loop: Header=BB1_82 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_80
.LBB1_94:                               //  %land.lhs.true381.us
                                        //    in Loop: Header=BB1_82 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_80
.LBB1_95:                               //    in Loop: Header=BB1_4 Depth=1
	mv x26, x0
	mv x27, x26
	mv x25, x26
	sw x26, -720 ( fp )             //  4-byte Folded Spill
	bltu x0, x24, .LBB1_563
.LBB1_564:                              //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_389
.LBB1_563:
	jal x0, .LBB1_516
.LBB1_96:                               //  %if.then548
                                        //    in Loop: Header=BB1_4 Depth=1
	and x12, x25, 16
	sw x12, -732 ( fp )             //  4-byte Folded Spill
	beq x0, x12, .LBB1_256
.LBB1_97:                               //  %while.body623.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x24, x0
	jal __locale_mb_cur_max
	bne x24, x10, .LBB1_100
	jal x0, .LBB1_517
.LBB1_98:                               //  %if.end725
                                        //    in Loop: Header=BB1_100 Depth=2
	beq x0, x23, .LBB1_324
.LBB1_99:                               //  %while.body623
                                        //    in Loop: Header=BB1_100 Depth=2
	jal __locale_mb_cur_max
	bne x24, x10, .LBB1_100
.LBB1_565:                              //  %while.body623
	jal x0, .LBB1_517
.LBB1_100:                              //  %if.end628
                                        //    Parent Loop BB1_4 Depth=1
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
	bltu x0, x10, .LBB1_102
.LBB1_101:                              //  %if.end628
                                        //    in Loop: Header=BB1_100 Depth=2
	lw x10, -688 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB1_103
.LBB1_102:                              //  %if.then642
                                        //    in Loop: Header=BB1_100 Depth=2
	add x10, fp, -688
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB1_103:                              //  %if.end644
                                        //    in Loop: Header=BB1_100 Depth=2
	add x25, fp, -72
	add x12, fp, -678
	add x14, fp, -688
	mv x10, x19
	mv x11, x25
	mv x13, x24
	jal _mbrtowc_r
	xor x11, x10, -2
	sw x10, -696 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB1_113
.LBB1_104:                              //  %if.end644
                                        //    in Loop: Header=BB1_100 Depth=2
	beq x0, x10, .LBB1_108
.LBB1_105:                              //  %if.end644
                                        //    in Loop: Header=BB1_100 Depth=2
	xor x10, x10, -1
	bltu x0, x10, .LBB1_106
.LBB1_566:                              //  %if.end644
	jal x0, .LBB1_517
.LBB1_106:                              //  %if.then657
                                        //    in Loop: Header=BB1_100 Depth=2
	lw x27, -72 ( fp )
	xor x10, x27, -1
	bltu x0, x10, .LBB1_109
.LBB1_107:                              //    in Loop: Header=BB1_100 Depth=2
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	lw x11, -696 ( fp )             //  4-byte Folded Reload
	add x26, x0, -1
	add x10, fp, -328
	add x10, x26, x10
	lbu x10, 0 ( x10 )
	bltu x0, x10, .LBB1_112
	jal x0, .LBB1_490
.LBB1_108:                              //  %if.then657.thread
                                        //    in Loop: Header=BB1_100 Depth=2
	mv x27, x0
	sw x0, -72 ( fp )
.LBB1_109:                              //  %if.end.i
                                        //    in Loop: Header=BB1_100 Depth=2
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
	bne x10, x11, .LBB1_111
.LBB1_110:                              //    in Loop: Header=BB1_100 Depth=2
	lbu x26, -61 ( fp )
.LBB1_111:                              //  %if.end.i
                                        //    in Loop: Header=BB1_100 Depth=2
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	lw x11, -696 ( fp )             //  4-byte Folded Reload
	add x25, fp, -72
	add x10, fp, -328
	add x10, x26, x10
	lbu x10, 0 ( x10 )
	bltu x0, x10, .LBB1_112
.LBB1_567:                              //  %if.end.i
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_490
.LBB1_112:                              //  %if.end671
                                        //    in Loop: Header=BB1_100 Depth=2
	xor x10, x11, 3
	lw x11, -688 ( fp )
	snez x10, x10
	add x20, x20, x24
	mv x24, x0
	xor x11, x11, 4
	snez x11, x11
	or x10, x10, x11
	sub x23, x23, x10
.LBB1_113:                              //  %if.end713
                                        //    in Loop: Header=BB1_100 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_98
.LBB1_114:                              //  %land.lhs.true717
                                        //    in Loop: Header=BB1_100 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_98
.LBB1_115:                              //    in Loop: Header=BB1_4 Depth=1
	mv x26, x0
	add x25, fp, -72
	sw x26, -728 ( fp )             //  4-byte Folded Spill
	sw x26, -720 ( fp )             //  4-byte Folded Spill
	bltu x0, x24, .LBB1_568
.LBB1_569:                              //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_497
.LBB1_568:
	jal x0, .LBB1_517
.LBB1_116:                              //  %if.then947
                                        //    in Loop: Header=BB1_4 Depth=1
	and x26, x25, 16
	beq x0, x26, .LBB1_258
.LBB1_117:                              //    in Loop: Header=BB1_4 Depth=1
	add x25, fp, -72
	jal x0, .LBB1_260
.LBB1_118:                              //    in Loop: Header=BB1_4 Depth=1
	add x26, x0, 349
	lui x12, %hi( 3456 )
	add x12, x12, %lo( 3456 )
	or x24, x12, x25
	beq x0, x26, .LBB1_125
.LBB1_119:                              //  %for.body1348.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x25, x0
	bltu x11, x10, .LBB1_127
.LBB1_120:                              //  %for.body1348.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x27, x25
	jal x0, .LBB1_128
.LBB1_121:                              //    in Loop: Header=BB1_4 Depth=1
	add x24, x0, 349
.LBB1_122:                              //  %sw.bb1500
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x10, x19
	jal _localeconv_r
	mv x11, x0
	or x25, x25, 1920
	beq x0, x24, .LBB1_126
.LBB1_123:                              //  %for.body1513.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x10 )
	sw x10, -744 ( fp )             //  4-byte Folded Spill
	mv x10, x0
	bltu x27, x26, .LBB1_163
.LBB1_124:                              //  %for.body1513.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10, -740 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_164
.LBB1_126:                              //    in Loop: Header=BB1_4 Depth=1
	sw x11, -724 ( fp )             //  4-byte Folded Spill
	mv x26, x11
	mv x23, x11
	sw x11, -732 ( fp )             //  4-byte Folded Spill
	sw x11, -728 ( fp )             //  4-byte Folded Spill
	mv x27, x11
	jal x0, .LBB1_262
.LBB1_127:                              //    in Loop: Header=BB1_4 Depth=1
	add x27, x23, -349
.LBB1_128:                              //  %for.body1348.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x23, x25
	jal x0, .LBB1_131
.LBB1_163:                              //    in Loop: Header=BB1_4 Depth=1
	add x11, x23, -349
	sw x11, -740 ( fp )             //  4-byte Folded Spill
.LBB1_164:                              //  %for.body1513.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x12, fp, -678
	mv x26, x10
	mv x23, x10
	mv x27, x10
	sw x10, -728 ( fp )             //  4-byte Folded Spill
	sw x10, -732 ( fp )             //  4-byte Folded Spill
	sw x10, -720 ( fp )             //  4-byte Folded Spill
	sw x10, -724 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_167
.LBB1_165:                              //  %if.then1661
                                        //    in Loop: Header=BB1_167 Depth=2
	add x10, x10, 1
	sw x10, 0 ( x18 )
.LBB1_166:                              //  %if.end1669
                                        //    in Loop: Header=BB1_167 Depth=2
	add x10, fp, -678
	add x24, x24, -1
	add x12, x27, x10
	beq x0, x24, .LBB1_214
.LBB1_167:                              //  %for.body1513
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 0 ( x18 )
	add x14, x0, 78
	lbu x11, 0 ( x10 )
	add x13, x11, -43
	bltu x14, x13, .LBB1_199
.LBB1_168:                              //  %for.body1513
                                        //    in Loop: Header=BB1_167 Depth=2
	lui x14, %hi( JTI1_2 )
	sll x13, x13, 2&31
	add x14, x14, %lo( JTI1_2 )
	add x13, x14, x13
	lw x13, 0 ( x13 )
	jr x13
.LBB1_169:                              //  %sw.bb1528
                                        //    in Loop: Header=BB1_167 Depth=2
	sll x12, x26, 24&31
	sra x12, x12, 24&31
	sll x13, x23, 24&31
	sub x12, x0, x12
	sra x13, x13, 24&31
	bne x13, x12, .LBB1_214
.LBB1_170:                              //  %if.then1534
                                        //    in Loop: Header=BB1_167 Depth=2
	and x25, x25, -385
.LBB1_171:                              //  %fok
                                        //    in Loop: Header=BB1_167 Depth=2
	add x12, fp, -678
	add x12, x27, x12
	add x27, x27, 1
	sb x11, 0 ( x12 )
.LBB1_172:                              //  %fskip
                                        //    in Loop: Header=BB1_167 Depth=2
	lw x11, 4 ( x18 )
	add x20, x20, 1
	add x11, x11, -1
	sw x11, 4 ( x18 )
	blt x0, x11, .LBB1_165
.LBB1_173:                              //  %if.else1664
                                        //    in Loop: Header=BB1_167 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_166
	jal x0, .LBB1_214
.LBB1_174:                              //  %sw.bb1537
                                        //    in Loop: Header=BB1_167 Depth=2
	and x12, x25, 128
	beq x0, x12, .LBB1_214
.LBB1_175:                              //  %if.then1540
                                        //    in Loop: Header=BB1_167 Depth=2
	and x25, x25, -129
	jal x0, .LBB1_171
.LBB1_176:                              //  %sw.bb1572
                                        //    in Loop: Header=BB1_167 Depth=2
	and x12, x23, 255
	xor x12, x12, 1
	bltu x0, x12, .LBB1_214
.LBB1_177:                              //    in Loop: Header=BB1_167 Depth=2
	add x23, x0, 2
	jal x0, .LBB1_171
.LBB1_178:                              //  %sw.bb1620
                                        //    in Loop: Header=BB1_167 Depth=2
	and x13, x25, 1280
	xor x13, x13, 1024
	beq x0, x13, .LBB1_181
.LBB1_179:                              //  %lor.lhs.false1624
                                        //    in Loop: Header=BB1_167 Depth=2
	and x13, x25, 1024
	beq x0, x13, .LBB1_214
.LBB1_180:                              //  %lor.lhs.false1624
                                        //    in Loop: Header=BB1_167 Depth=2
	lw x13, -720 ( fp )             //  4-byte Folded Reload
	beq x0, x13, .LBB1_214
.LBB1_181:                              //  %if.then1629
                                        //    in Loop: Header=BB1_167 Depth=2
	and x14, x25, 512
	mv x13, x0
	bne x14, x13, .LBB1_183
.LBB1_182:                              //    in Loop: Header=BB1_167 Depth=2
	lw x14, -724 ( fp )             //  4-byte Folded Reload
	lw x15, -720 ( fp )             //  4-byte Folded Reload
	sw x12, -732 ( fp )             //  4-byte Folded Spill
	sub x14, x15, x14
	sw x14, -728 ( fp )             //  4-byte Folded Spill
.LBB1_183:                              //  %if.then1629
                                        //    in Loop: Header=BB1_167 Depth=2
	and x12, x25, -1921
	or x25, x12, 384
	sw x13, -720 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_171
.LBB1_184:                              //  %sw.bb1602
                                        //    in Loop: Header=BB1_167 Depth=2
	and x12, x26, 255
	xor x12, x12, 2
	bltu x0, x12, .LBB1_214
.LBB1_185:                              //    in Loop: Header=BB1_167 Depth=2
	add x26, x0, 3
	jal x0, .LBB1_171
.LBB1_186:                              //  %sw.bb1578
                                        //    in Loop: Header=BB1_167 Depth=2
	and x12, x25, 1792
	xor x12, x12, 1792
	bltu x0, x12, .LBB1_205
.LBB1_187:                              //  %sw.bb1578
                                        //    in Loop: Header=BB1_167 Depth=2
	lw x12, -720 ( fp )             //  4-byte Folded Reload
	bltu x0, x12, .LBB1_205
.LBB1_188:                              //  %sw.bb1578
                                        //    in Loop: Header=BB1_167 Depth=2
	and x12, x26, 255
	bltu x0, x12, .LBB1_205
.LBB1_189:                              //  %if.then1589
                                        //    in Loop: Header=BB1_167 Depth=2
	seqz x26, x0
	jal x0, .LBB1_194
.LBB1_190:                              //  %sw.bb1543
                                        //    in Loop: Header=BB1_167 Depth=2
	and x12, x25, 1792
	xor x13, x12, 1792
	and x12, x23, 255
	bltu x0, x13, .LBB1_208
.LBB1_191:                              //  %sw.bb1543
                                        //    in Loop: Header=BB1_167 Depth=2
	lw x13, -720 ( fp )             //  4-byte Folded Reload
	bltu x0, x13, .LBB1_208
.LBB1_192:                              //  %sw.bb1543
                                        //    in Loop: Header=BB1_167 Depth=2
	bltu x0, x12, .LBB1_208
.LBB1_193:                              //  %if.then1554
                                        //    in Loop: Header=BB1_167 Depth=2
	seqz x23, x0
.LBB1_194:                              //  %fok
                                        //    in Loop: Header=BB1_167 Depth=2
	mv x12, x0
	sw x12, -720 ( fp )             //  4-byte Folded Spill
	and x25, x25, -1921
	jal x0, .LBB1_171
.LBB1_195:                              //  %sw.bb1608
                                        //    in Loop: Header=BB1_167 Depth=2
	and x12, x26, 255
	xor x12, x12, 6
	bltu x0, x12, .LBB1_214
.LBB1_196:                              //    in Loop: Header=BB1_167 Depth=2
	add x26, x0, 7
	jal x0, .LBB1_171
.LBB1_197:                              //  %sw.bb1614
                                        //    in Loop: Header=BB1_167 Depth=2
	and x12, x26, 255
	xor x12, x12, 7
	bltu x0, x12, .LBB1_214
.LBB1_198:                              //    in Loop: Header=BB1_167 Depth=2
	add x26, x0, 8
	jal x0, .LBB1_171
.LBB1_199:                              //  %sw.default1639
                                        //    in Loop: Header=BB1_167 Depth=2
	and x12, x25, 512
	beq x0, x12, .LBB1_214
.LBB1_200:                              //  %sw.default1639
                                        //    in Loop: Header=BB1_167 Depth=2
	lw x12, -744 ( fp )             //  4-byte Folded Reload
	lbu x12, 0 ( x12 )
	bne x11, x12, .LBB1_214
.LBB1_201:                              //  %if.then1649
                                        //    in Loop: Header=BB1_167 Depth=2
	lw x12, -720 ( fp )             //  4-byte Folded Reload
	and x25, x25, -641
	sw x12, -724 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_171
.LBB1_202:                              //  %sw.bb1516
                                        //    in Loop: Header=BB1_167 Depth=2
	and x12, x25, 256
	beq x0, x12, .LBB1_169
.LBB1_203:                              //  %if.then1519
                                        //    in Loop: Header=BB1_167 Depth=2
	lw x11, -720 ( fp )             //  4-byte Folded Reload
	and x25, x25, -129
	add x11, x11, 1
	sw x11, -720 ( fp )             //  4-byte Folded Spill
	lw x11, -740 ( fp )             //  4-byte Folded Reload
	beq x0, x11, .LBB1_213
.LBB1_204:                              //  %if.then1523
                                        //    in Loop: Header=BB1_167 Depth=2
	add x11, x11, -1
	add x24, x24, 1
	sw x11, -740 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_172
.LBB1_205:                              //  %if.end1591
                                        //    in Loop: Header=BB1_167 Depth=2
	and x12, x26, 255
	xor x13, x12, 5
	beq x0, x13, .LBB1_212
.LBB1_206:                              //  %if.end1591
                                        //    in Loop: Header=BB1_167 Depth=2
	xor x12, x12, 3
	beq x0, x12, .LBB1_212
	jal x0, .LBB1_214
.LBB1_208:                              //  %if.end1556
                                        //    in Loop: Header=BB1_167 Depth=2
	xor x12, x12, 2
	bltu x0, x12, .LBB1_210
.LBB1_209:                              //    in Loop: Header=BB1_167 Depth=2
	add x23, x0, 3
	jal x0, .LBB1_171
.LBB1_210:                              //  %if.end1561
                                        //    in Loop: Header=BB1_167 Depth=2
	and x12, x26, 255
	xor x13, x12, 4
	beq x0, x13, .LBB1_212
.LBB1_211:                              //  %if.end1561
                                        //    in Loop: Header=BB1_167 Depth=2
	xor x12, x12, 1
	bltu x0, x12, .LBB1_214
.LBB1_212:                              //  %if.then1569
                                        //    in Loop: Header=BB1_167 Depth=2
	add x26, x26, 1
	jal x0, .LBB1_171
.LBB1_213:                              //    in Loop: Header=BB1_167 Depth=2
	mv x11, x0
	sw x11, -740 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_172
.LBB1_214:                              //  %for.end1670
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_261
.LBB1_215:                              //    in Loop: Header=BB1_4 Depth=1
	and x25, x25, -257
	sw x10, -736 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_263
.LBB1_216:                              //  %sw.bb163
                                        //    in Loop: Header=BB1_4 Depth=1
	or x25, x25, 1
.LBB1_217:                              //  %sw.bb165
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x24, x0
	or x25, x25, 64
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_46
	jal x0, .LBB1_45
.LBB1_218:                              //  %sw.bb146
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x0, 10
	sw x10, -700 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtol_r )
	add x24, x0, 3
	add x10, x10, %lo( _strtol_r )
	sw x10, -704 ( fp )             //  4-byte Folded Spill
	or x25, x25, 1
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_46
	jal x0, .LBB1_45
.LBB1_219:                              //  %sw.bb150
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x0, 8
	sw x10, -700 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtoul_r )
	add x24, x0, 3
	add x10, x10, %lo( _strtoul_r )
	sw x10, -704 ( fp )             //  4-byte Folded Spill
	or x25, x25, 1
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_46
	jal x0, .LBB1_45
.LBB1_220:                              //  %sw.bb157
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24, x0, 2
	or x25, x25, 1
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_46
	jal x0, .LBB1_45
.LBB1_221:                              //  %sw.bb160
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, fp, -328
	mv x11, x21
	jal __sccl
	mv x21, x10
	seqz x24, x0
	or x25, x25, 64
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_46
	jal x0, .LBB1_45
.LBB1_222:                              //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24, x0, 3
	add x10, x0, 10
	jal x0, .LBB1_224
.LBB1_223:                              //  %sw.epilog.loopexit3750
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24, x0, 3
	mv x10, x0
.LBB1_224:                              //  %sw.epilog
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10, -700 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtol_r )
	add x10, x10, %lo( _strtol_r )
	sw x10, -704 ( fp )             //  4-byte Folded Spill
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_46
	jal x0, .LBB1_45
.LBB1_225:                              //  %sw.bb169
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 16
	bltu x0, x10, .LBB1_43
.LBB1_226:                              //  %if.end173
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 8
	bltu x0, x10, .LBB1_319
.LBB1_227:                              //  %if.else178
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 4
	beq x0, x10, .LBB1_228
.LBB1_570:                              //  %if.else178
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_493
.LBB1_228:                              //  %if.else184
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 1
	bltu x0, x10, .LBB1_230
.LBB1_229:                              //  %if.else189
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 2
	beq x0, x10, .LBB1_230
.LBB1_571:                              //  %if.else189
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_512
.LBB1_230:                              //  %if.then187
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sw x20, 0 ( x10 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB1_4
	jal x0, .LBB1_520
.LBB1_231:                              //  %sw.epilog.loopexit4352
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24, x0, 3
	add x10, x0, 8
	jal x0, .LBB1_235
.LBB1_232:                              //  %sw.bb167
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x0, 16
	sw x10, -700 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtoul_r )
	add x10, x10, %lo( _strtoul_r )
	add x24, x0, 3
	sw x10, -704 ( fp )             //  4-byte Folded Spill
	or x25, x25, 544
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_46
	jal x0, .LBB1_45
.LBB1_233:                              //  %sw.epilog.loopexit4
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24, x0, 2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_46
	jal x0, .LBB1_45
.LBB1_234:                              //  %sw.epilog.loopexit4825
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24, x0, 3
	add x10, x0, 10
.LBB1_235:                              //  %sw.epilog
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10, -700 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtoul_r )
	add x10, x10, %lo( _strtoul_r )
	sw x10, -704 ( fp )             //  4-byte Folded Spill
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_46
	jal x0, .LBB1_45
.LBB1_236:                              //  %for.cond422.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x24, x0
.LBB1_237:                              //  %for.cond422
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 4 ( x18 )
	bge x10, x23, .LBB1_289
.LBB1_238:                              //  %if.then426
                                        //    in Loop: Header=BB1_237 Depth=2
	lw x11, 0 ( x18 )
	sub x23, x23, x10
	add x24, x24, x10
	add x11, x10, x11
	sw x11, 0 ( x18 )
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_237
.LBB1_239:                              //  %if.then433
                                        //    in Loop: Header=BB1_4 Depth=1
	bltu x0, x24, .LBB1_290
	jal x0, .LBB1_517
.LBB1_240:                              //  %while.cond760.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x18 )
	add x24, fp, -328
	lbu x11, 0 ( x10 )
	add x11, x11, x24
	lbu x11, 0 ( x11 )
	bltu x0, x11, .LBB1_241
.LBB1_572:                              //  %while.cond760.preheader
	jal x0, .LBB1_520
.LBB1_241:                              //  %while.body765.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x11, x20, 1
	add x23, x23, -1
	jal x0, .LBB1_243
.LBB1_242:                              //  %if.end787
                                        //    in Loop: Header=BB1_243 Depth=2
	lbu x11, 0 ( x10 )
	add x23, x23, -1
	add x12, x11, x24
	lbu x12, 0 ( x12 )
	add x11, x20, 1
	beq x0, x12, .LBB1_43
.LBB1_243:                              //  %while.body765
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x20, x11
	lw x11, 4 ( x18 )
	add x10, x10, 1
	sw x10, 0 ( x18 )
	add x12, x11, -1
	sw x12, 4 ( x18 )
	beq x0, x23, .LBB1_43
.LBB1_244:                              //  %if.end775
                                        //    in Loop: Header=BB1_243 Depth=2
	seqz x12, x0
	blt x12, x11, .LBB1_242
.LBB1_245:                              //  %land.lhs.true779
                                        //    in Loop: Header=BB1_243 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	bltu x0, x10, .LBB1_43
.LBB1_246:                              //  %land.lhs.true779.if.end787_crit_edge
                                        //    in Loop: Header=BB1_243 Depth=2
	lw x10, 0 ( x18 )
	jal x0, .LBB1_242
.LBB1_247:                              //  %while.cond1164.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x18 )
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	lbu x11, 0 ( x10 )
	add x11, x11, x9
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB1_303
.LBB1_248:                              //  %while.body1171.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	seqz x11, x0
	jal x0, .LBB1_250
.LBB1_249:                              //  %if.end1189
                                        //    in Loop: Header=BB1_250 Depth=2
	lbu x11, 0 ( x10 )
	add x12, x11, x9
	lbu x12, 1 ( x12 )
	add x11, x24, 1
	and x12, x12, 8
	bltu x0, x12, .LBB1_304
.LBB1_250:                              //  %while.body1171
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x24, x11
	lw x11, 4 ( x18 )
	add x10, x10, 1
	sw x10, 0 ( x18 )
	add x12, x11, -1
	sw x12, 4 ( x18 )
	beq x23, x24, .LBB1_304
.LBB1_251:                              //  %if.end1181
                                        //    in Loop: Header=BB1_250 Depth=2
	seqz x12, x0
	blt x12, x11, .LBB1_249
.LBB1_252:                              //  %land.lhs.true1185
                                        //    in Loop: Header=BB1_250 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	bltu x0, x10, .LBB1_304
.LBB1_253:                              //  %land.lhs.true1185.if.end1189_crit_edge
                                        //    in Loop: Header=BB1_250 Depth=2
	lw x10, 0 ( x18 )
	jal x0, .LBB1_249
.LBB1_254:                              //  %if.else245
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB1_305
.LBB1_255:                              //  %if.else300
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	mv x27, x0
	mv x24, x27
	mv x26, x27
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x25, 0 ( x10 )
	sw x27, -720 ( fp )             //  4-byte Folded Spill
	jal __locale_mb_cur_max
	bne x24, x10, .LBB1_371
	jal x0, .LBB1_516
.LBB1_256:                              //  %if.else556
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB1_309
.LBB1_257:                              //  %if.else616
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	mv x26, x0
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x25, 0 ( x10 )
	sw x26, -720 ( fp )             //  4-byte Folded Spill
	sw x26, -728 ( fp )             //  4-byte Folded Spill
	sw x26, -724 ( fp )             //  4-byte Folded Spill
	jal __locale_mb_cur_max
	bne x24, x10, .LBB1_402
	jal x0, .LBB1_517
.LBB1_258:                              //  %if.else955
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB1_313
.LBB1_259:                              //  %if.else1015
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	mv x27, x0
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x25, 0 ( x10 )
.LBB1_260:                              //  %if.end1018
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x27, -720 ( fp )             //  4-byte Folded Spill
	sw x27, -724 ( fp )             //  4-byte Folded Spill
	sw x26, -728 ( fp )             //  4-byte Folded Spill
	bltu x0, x23, .LBB1_425
	jal x0, .LBB1_503
.LBB1_261:                              //    in Loop: Header=BB1_4 Depth=1
	mv x10, x0
	mv x11, x10
.LBB1_262:                              //  %for.end1670.thread
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x11, -736 ( fp )             //  4-byte Folded Spill
.LBB1_263:                              //    in Loop: Header=BB1_4 Depth=1
	sll x10, x23, 24&31
	sra x10, x10, 24&31
	add x10, x10, -1
	seqz x11, x0
	bltu x11, x10, .LBB1_264
.LBB1_573:
	jal x0, .LBB1_528
.LBB1_264:                              //  %if.end1690
                                        //    in Loop: Header=BB1_4 Depth=1
	sll x10, x26, 24&31
	sra x10, x10, 24&31
	add x11, x10, -1
	add x12, x0, 6
	bltu x12, x11, .LBB1_270
.LBB1_265:                              //  %if.then1695
                                        //    in Loop: Header=BB1_4 Depth=1
	slti x10, x10, 3
	beq x0, x10, .LBB1_266
.LBB1_574:                              //  %if.then1695
	jal x0, .LBB1_535
.LBB1_266:                              //  %while.cond1700.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x26, 255
	xor x10, x10, 3
	beq x0, x10, .LBB1_270
.LBB1_267:                              //  %while.body1705.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x26, -4
	and x23, x10, 255
	add x24, fp, -679
.LBB1_268:                              //  %while.body1705
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x27, x24
	lb x11, 0 ( x10 )
	mv x10, x19
	mv x12, x18
	jal _ungetc_r
	lui x11, %hi( -16777216 )
	sll x10, x26, 24&31
	add x11, x11, %lo( -16777216 )
	add x10, x11, x10
	sra x26, x10, 24&31
	add x27, x27, -1
	add x10, x0, 3
	blt x10, x26, .LBB1_268
.LBB1_269:                              //  %if.end1723.loopexit
                                        //    in Loop: Header=BB1_4 Depth=1
	xor x10, x23, -1
	add x20, x10, x20
.LBB1_270:                              //  %if.end1723
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, fp, -678
	add x24, x27, x10
	and x10, x25, 256
	bltu x0, x10, .LBB1_272
.LBB1_271:                              //    in Loop: Header=BB1_4 Depth=1
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	mv x23, x24
	and x10, x25, 16
	bltu x0, x10, .LBB1_43
	jal x0, .LBB1_277
.LBB1_272:                              //  %if.then1726
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 1024
	beq x0, x10, .LBB1_273
.LBB1_575:                              //  %if.then1726
	jal x0, .LBB1_538
.LBB1_273:                              //  %if.end1740
                                        //    in Loop: Header=BB1_4 Depth=1
	lb x11, -1 ( x24 )
	or x10, x11, 32
	and x10, x10, 255
	xor x10, x10, 101
	bltu x0, x10, .LBB1_275
.LBB1_274:                              //    in Loop: Header=BB1_4 Depth=1
	add x20, x20, -1
	add x23, x24, -1
	jal x0, .LBB1_276
.LBB1_275:                              //  %if.then1749
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x10, x19
	mv x12, x18
	jal _ungetc_r
	lb x11, -2 ( x24 )
	add x20, x20, -2
	add x23, x24, -2
.LBB1_276:                              //  %if.end1754
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	mv x10, x19
	mv x12, x18
	jal _ungetc_r
	and x10, x25, 16
	bltu x0, x10, .LBB1_43
.LBB1_277:                              //  %if.then1760
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 1536
	xor x10, x10, 1024
	sb x0, 0 ( x23 )
	bltu x0, x10, .LBB1_280
.LBB1_278:                              //  %if.end1775
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -736 ( fp )             //  4-byte Folded Reload
	lw x11, -724 ( fp )             //  4-byte Folded Reload
	sub x10, x10, x11
	beq x0, x10, .LBB1_284
.LBB1_279:                              //    in Loop: Header=BB1_4 Depth=1
	sub x10, x0, x10
	lw x11, -708 ( fp )             //  4-byte Folded Reload
	bltu x23, x11, .LBB1_283
.LBB1_282:                              //  %if.then1777
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x23, -712 ( fp )             //  4-byte Folded Reload
.LBB1_283:                              //  %if.then1777
                                        //    in Loop: Header=BB1_4 Depth=1
	add sp, sp, -16
	lui x11, %hi( .str )
	add x11, x11, %lo( .str )
	sw x11, 4 ( sp )
	sw x10, 8 ( sp )
	sw x23, 0 ( sp )
	jal sprintf
	add sp, sp, 16
	jal x0, .LBB1_284
.LBB1_280:                              //  %if.else1768
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -728 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_284
.LBB1_281:                              //  %if.end1775.thread2878
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x23, -732 ( fp )             //  4-byte Folded Reload
	mv x24, x10
	mv x12, x0
	add x13, x0, 10
	add x11, x23, 1
	mv x10, x19
	jal _strtol_r
	sub x10, x10, x24
	lw x11, -708 ( fp )             //  4-byte Folded Reload
	bltu x23, x11, .LBB1_283
	jal x0, .LBB1_282
.LBB1_284:                              //  %if.end1790
                                        //    in Loop: Header=BB1_4 Depth=1
	add x11, fp, -678
	mv x12, x0
	mv x10, x19
	jal _strtod_r
	mv x23, x10
	mv x24, x11
	and x10, x25, 1
	bltu x0, x10, .LBB1_288
.LBB1_285:                              //  %if.else1797
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 2
	bltu x0, x10, .LBB1_318
.LBB1_286:                              //  %if.else1803
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x25, -68 ( fp )
	mv x13, x24
	mv x11, x24
	mv x12, x23
	add x10, x25, 4
	sw x10, -68 ( fp )
	mv x10, x23
	jal __unorddf2
	lw x25, 0 ( x25 )
	beq x0, x10, .LBB1_287
.LBB1_576:                              //  %if.else1803
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_488
.LBB1_287:                              //  %if.else1808
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x10, x23
	mv x11, x24
	jal __truncdfsf2
	jal x0, .LBB1_489
.LBB1_288:                              //  %if.then1795
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x27, x27, 1
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sw x24, 4 ( x10 )
	sw x23, 0 ( x10 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB1_4
	jal x0, .LBB1_520
.LBB1_289:                              //  %if.else439
                                        //    in Loop: Header=BB1_4 Depth=1
	sub x10, x10, x23
	sw x10, 4 ( x18 )
	lw x10, 0 ( x18 )
	add x24, x24, x23
	add x10, x23, x10
	sw x10, 0 ( x18 )
.LBB1_290:                              //  %cleanup448.thread
                                        //    in Loop: Header=BB1_4 Depth=1
	add x20, x20, x24
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB1_4
	jal x0, .LBB1_520
.LBB1_291:                              //  %if.then454
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x25, 0 ( x10 )
	bltu x0, x25, .LBB1_292
.LBB1_577:                              //  %if.then454
	jal x0, .LBB1_520
.LBB1_292:                              //  %if.end458
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x10, x23
	jal malloc
	mv x24, x10
	bltu x0, x24, .LBB1_293
.LBB1_578:                              //  %if.end458
	jal x0, .LBB1_519
.LBB1_293:                              //  %if.end463
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x24, 0 ( x25 )
	lhu x10, 4 ( x22 )
	lhu x11, 6 ( x22 )
	bgeu x11, x10, .LBB1_325
.LBB1_294:                              //  %if.end463.if.end503_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x22 )
	jal x0, .LBB1_328
.LBB1_295:                              //  %if.then798
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x25, 0 ( x10 )
	bltu x0, x25, .LBB1_296
.LBB1_579:                              //  %if.then798
	jal x0, .LBB1_520
.LBB1_296:                              //  %if.end802
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24, x0, 32
	mv x10, x24
	jal malloc
	mv x26, x10
	bltu x0, x26, .LBB1_297
.LBB1_580:                              //  %if.end802
	jal x0, .LBB1_519
.LBB1_297:                              //  %if.end806
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x26, 0 ( x25 )
	lhu x10, 4 ( x22 )
	lhu x11, 6 ( x22 )
	bgeu x11, x10, .LBB1_335
.LBB1_298:                              //  %if.end806.if.end846_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x22 )
	jal x0, .LBB1_338
.LBB1_299:                              //  %if.then1197
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -720 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB1_300
.LBB1_581:                              //  %if.then1197
	jal x0, .LBB1_520
.LBB1_300:                              //  %if.end1201
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24, x0, 32
	mv x10, x24
	jal malloc
	mv x25, x10
	bltu x0, x25, .LBB1_301
.LBB1_582:                              //  %if.end1201
	jal x0, .LBB1_519
.LBB1_301:                              //  %if.end1205
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	sw x25, 0 ( x10 )
	lhu x10, 4 ( x22 )
	lhu x11, 6 ( x22 )
	bgeu x11, x10, .LBB1_350
.LBB1_302:                              //  %if.end1205.if.end1245_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x22 )
	jal x0, .LBB1_353
.LBB1_303:                              //    in Loop: Header=BB1_4 Depth=1
	mv x24, x0
	add x20, x20, x24
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_583
.LBB1_584:                              //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_583:
	jal x0, .LBB1_520
.LBB1_304:                              //  %while.end1190
                                        //    in Loop: Header=BB1_4 Depth=1
	add x20, x20, x24
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_585
.LBB1_586:                              //  %while.end1190
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_585:                              //  %while.end1190
	jal x0, .LBB1_520
.LBB1_305:                              //  %if.then248
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -720 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB1_306
.LBB1_587:                              //  %if.then248
	jal x0, .LBB1_520
.LBB1_306:                              //  %if.end252
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x0, 128
	jal malloc
	mv x25, x10
	add x27, x0, -1
	bltu x0, x25, .LBB1_307
.LBB1_588:                              //  %if.end252
	jal x0, .LBB1_520
.LBB1_307:                              //  %if.end256
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	sw x25, 0 ( x10 )
	lhu x10, 4 ( x22 )
	lhu x11, 6 ( x22 )
	bgeu x11, x10, .LBB1_365
.LBB1_308:                              //  %if.end256.if.end293_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x22 )
	jal x0, .LBB1_368
.LBB1_309:                              //  %if.then559
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x26, 0 ( x10 )
	bltu x0, x26, .LBB1_310
.LBB1_589:                              //  %if.then559
	jal x0, .LBB1_545
.LBB1_310:                              //  %if.end563
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x0, 128
	jal malloc
	mv x13, x10
	add x25, x0, -1
	bltu x0, x13, .LBB1_311
.LBB1_590:                              //  %if.end563
	jal x0, .LBB1_533
.LBB1_311:                              //  %if.end567
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x13, 0 ( x26 )
	lhu x10, 4 ( x22 )
	lhu x11, 6 ( x22 )
	sw x13, -720 ( fp )             //  4-byte Folded Spill
	bgeu x11, x10, .LBB1_394
.LBB1_312:                              //  %if.end567.if.end607_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x22 )
	jal x0, .LBB1_397
.LBB1_313:                              //  %if.then958
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x27, 0 ( x10 )
	bltu x0, x27, .LBB1_314
.LBB1_591:                              //  %if.then958
	jal x0, .LBB1_546
.LBB1_314:                              //  %if.end962
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x0, 128
	jal malloc
	add x25, x0, -1
	bltu x0, x10, .LBB1_315
.LBB1_592:                              //  %if.end962
	jal x0, .LBB1_533
.LBB1_315:                              //  %if.end966
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10, 0 ( x27 )
	sw x10, -720 ( fp )             //  4-byte Folded Spill
	lhu x10, 4 ( x22 )
	lhu x11, 6 ( x22 )
	bgeu x11, x10, .LBB1_421
.LBB1_316:                              //  %if.end966.if.end1006_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x22 )
	jal x0, .LBB1_424
.LBB1_318:                              //  %if.then1800
                                        //    in Loop: Header=BB1_4 Depth=1
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
	beq x0, x10, .LBB1_593
.LBB1_594:                              //  %if.then1800
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_593:                              //  %if.then1800
	jal x0, .LBB1_520
.LBB1_319:                              //  %if.then176
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sb x20, 0 ( x10 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_595
.LBB1_596:                              //  %if.then176
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_595:                              //  %if.then176
	jal x0, .LBB1_520
.LBB1_320:                              //    in Loop: Header=BB1_4 Depth=1
	mv x26, x0
	sw x26, -720 ( fp )             //  4-byte Folded Spill
	mv x27, x26
	mv x25, x26
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	bltu x0, x10, .LBB1_390
	jal x0, .LBB1_393
.LBB1_148:                              //  %if.end1365
                                        //    in Loop: Header=BB1_131 Depth=2
	snez x11, x27
	add x26, x11, x26
	add x23, x23, 1
	and x24, x24, -897
	mv x27, x12
	lw x11, 4 ( x18 )
	add x11, x11, -1
	sw x11, 4 ( x18 )
	bge x0, x11, .LBB1_151
.LBB1_129:                              //  %if.then1412
                                        //    in Loop: Header=BB1_131 Depth=2
	add x10, x10, 1
	sw x10, 0 ( x18 )
.LBB1_130:                              //  %for.inc1421
                                        //    in Loop: Header=BB1_131 Depth=2
	add x26, x26, -1
	beq x0, x26, .LBB1_152
.LBB1_131:                              //  %for.body1348
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 0 ( x18 )
	add x13, x0, 77
	lbu x11, 0 ( x10 )
	add x12, x11, -43
	bltu x13, x12, .LBB1_152
.LBB1_132:                              //  %for.body1348
                                        //    in Loop: Header=BB1_131 Depth=2
	lui x13, %hi( JTI1_3 )
	sll x12, x12, 2&31
	add x13, x13, %lo( JTI1_3 )
	add x12, x13, x12
	lw x12, 0 ( x12 )
	jr x12
.LBB1_133:                              //  %sw.bb1385
                                        //    in Loop: Header=BB1_131 Depth=2
	lw x12, -700 ( fp )             //  4-byte Folded Reload
	slti x12, x12, 11
	bltu x0, x12, .LBB1_152
.LBB1_134:                              //  %if.end1389
                                        //    in Loop: Header=BB1_131 Depth=2
	lui x12, %hi( -2945 )
	add x12, x12, %lo( -2945 )
	and x24, x12, x24
	jal x0, .LBB1_150
.LBB1_135:                              //  %sw.bb1373
                                        //    in Loop: Header=BB1_131 Depth=2
	lui x12, %hi( -2945 )
	add x12, x12, %lo( -2945 )
	and x24, x12, x24
	lw x12, -700 ( fp )             //  4-byte Folded Reload
	lui x13, %hi( __svfscanf_r.basefix )
	add x13, x13, %lo( __svfscanf_r.basefix )
	sll x12, x12, 1&31
	add x12, x12, x13
	lh x12, 0 ( x12 )
	sw x12, -700 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_150
.LBB1_136:                              //  %sw.bb1391
                                        //    in Loop: Header=BB1_131 Depth=2
	and x12, x24, 128
	beq x0, x12, .LBB1_152
.LBB1_137:                              //  %if.then1394
                                        //    in Loop: Header=BB1_131 Depth=2
	and x24, x24, -129
	jal x0, .LBB1_150
.LBB1_138:                              //  %sw.bb1377
                                        //    in Loop: Header=BB1_131 Depth=2
	lw x14, -700 ( fp )             //  4-byte Folded Reload
	lui x13, %hi( __svfscanf_r.basefix )
	add x13, x13, %lo( __svfscanf_r.basefix )
	sll x12, x14, 1&31
	add x12, x12, x13
	lh x12, 0 ( x12 )
	add x13, x14, -1
	sltiu x13, x13, 8
	bltu x0, x13, .LBB1_509
.LBB1_139:                              //  %if.end1383
                                        //    in Loop: Header=BB1_131 Depth=2
	lui x13, %hi( -2945 )
	add x13, x13, %lo( -2945 )
	and x24, x13, x24
	sw x12, -700 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_150
.LBB1_140:                              //  %sw.bb1397
                                        //    in Loop: Header=BB1_131 Depth=2
	and x12, x24, 1536
	xor x12, x12, 512
	bltu x0, x12, .LBB1_152
.LBB1_141:                              //  %if.then1401
                                        //    in Loop: Header=BB1_131 Depth=2
	add x12, x0, 16
	sw x12, -700 ( fp )             //  4-byte Folded Spill
	and x12, x24, -1793
	or x24, x12, 1280
	jal x0, .LBB1_150
.LBB1_142:                              //  %sw.bb1351
                                        //    in Loop: Header=BB1_131 Depth=2
	lui x12, %hi( 2048 )
	add x12, x12, %lo( 2048 )
	and x12, x12, x24
	beq x0, x12, .LBB1_150
.LBB1_143:                              //  %if.end1355
                                        //    in Loop: Header=BB1_131 Depth=2
	lw x13, -700 ( fp )             //  4-byte Folded Reload
	mv x12, x0
	bne x13, x12, .LBB1_145
.LBB1_144:                              //    in Loop: Header=BB1_131 Depth=2
	or x24, x24, 512
	add x13, x0, 8
	sw x13, -700 ( fp )             //  4-byte Folded Spill
.LBB1_145:                              //  %if.end1355
                                        //    in Loop: Header=BB1_131 Depth=2
	and x13, x24, 1024
	bltu x0, x13, .LBB1_149
.LBB1_146:                              //  %if.end1365
                                        //    in Loop: Header=BB1_131 Depth=2
	beq x27, x12, .LBB1_148
.LBB1_147:                              //  %if.end1365
                                        //    in Loop: Header=BB1_131 Depth=2
	add x12, x27, -1
	jal x0, .LBB1_148
.LBB1_149:                              //  %if.then1363
                                        //    in Loop: Header=BB1_131 Depth=2
	and x24, x24, -1409
.LBB1_150:                              //  %ok
                                        //    in Loop: Header=BB1_131 Depth=2
	add x12, fp, -678
	add x12, x25, x12
	add x25, x25, 1
	sb x11, 0 ( x12 )
	lw x11, 4 ( x18 )
	add x11, x11, -1
	sw x11, 4 ( x18 )
	blt x0, x11, .LBB1_129
.LBB1_151:                              //  %if.else1415
                                        //    in Loop: Header=BB1_131 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_130
.LBB1_152:                              //  %for.end1423
                                        //    in Loop: Header=BB1_4 Depth=1
	add x27, fp, -678
	add x26, x25, x27
	and x10, x24, 256
	beq x0, x10, .LBB1_156
.LBB1_153:                              //  %if.then1426
                                        //    in Loop: Header=BB1_4 Depth=1
	bge x0, x25, .LBB1_155
.LBB1_154:                              //  %if.then1430
                                        //    in Loop: Header=BB1_4 Depth=1
	lb x11, -1 ( x26 )
	mv x10, x19
	mv x12, x18
	jal _ungetc_r
	add x26, x26, -1
.LBB1_155:                              //  %if.end1434
                                        //    in Loop: Header=BB1_4 Depth=1
	beq x26, x27, .LBB1_534
.LBB1_156:                              //  %if.end1440
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x24, 16
	bltu x0, x10, .LBB1_323
.LBB1_157:                              //  %if.then1444
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x13, -700 ( fp )             //  4-byte Folded Reload
	lw x14, -704 ( fp )             //  4-byte Folded Reload
	add x11, fp, -678
	mv x12, x0
	mv x10, x19
	sb x0, 0 ( x26 )
	call.reg x14
	and x11, x24, 32
	bltu x0, x11, .LBB1_162
.LBB1_158:                              //  %if.else1451
                                        //    in Loop: Header=BB1_4 Depth=1
	and x11, x24, 8
	bltu x0, x11, .LBB1_317
.LBB1_159:                              //  %if.else1457
                                        //    in Loop: Header=BB1_4 Depth=1
	and x11, x24, 4
	bltu x0, x11, .LBB1_321
.LBB1_160:                              //  %if.else1463
                                        //    in Loop: Header=BB1_4 Depth=1
	and x11, x24, 1
	bltu x0, x11, .LBB1_162
.LBB1_161:                              //  %if.else1468
                                        //    in Loop: Header=BB1_4 Depth=1
	and x11, x24, 2
	bltu x0, x11, .LBB1_510
.LBB1_162:                              //  %if.else1482
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x11, -68 ( fp )
	add x12, x11, 4
	sw x12, -68 ( fp )
	lw x11, 0 ( x11 )
	sw x10, 0 ( x11 )
	jal x0, .LBB1_322
.LBB1_317:                              //  %if.then1454
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x11, -68 ( fp )
	add x12, x11, 4
	sw x12, -68 ( fp )
	lw x11, 0 ( x11 )
	sb x10, 0 ( x11 )
	jal x0, .LBB1_322
.LBB1_321:                              //  %if.then1460
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x11, -68 ( fp )
	add x12, x11, 4
	sw x12, -68 ( fp )
	lw x11, 0 ( x11 )
	sh x10, 0 ( x11 )
.LBB1_322:                              //  %if.end1488
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -716 ( fp )             //  4-byte Folded Reload
	add x10, x10, 1
	sw x10, -716 ( fp )             //  4-byte Folded Spill
.LBB1_323:                              //  %cleanup1497.thread
                                        //    in Loop: Header=BB1_4 Depth=1
	sub x10, x20, x27
	add x10, x23, x10
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	add x20, x26, x10
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_597
.LBB1_598:                              //  %cleanup1497.thread
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_597:                              //  %cleanup1497.thread
	jal x0, .LBB1_520
.LBB1_324:                              //    in Loop: Header=BB1_4 Depth=1
	mv x26, x0
	add x25, fp, -72
	sw x26, -728 ( fp )             //  4-byte Folded Spill
	sw x26, -720 ( fp )             //  4-byte Folded Spill
	lw x10, -732 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_599
.LBB1_600:                              //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_43
.LBB1_599:                              //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_498
.LBB1_325:                              //  %if.then471
                                        //    in Loop: Header=BB1_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB1_522
.LBB1_326:                              //  %if.end491
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x22 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_522
.LBB1_327:                              //  %cleanup500
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x11, 4 ( x22 )
	sw x10, 0 ( x22 )
	add x11, x11, 8
	sh x11, 4 ( x22 )
	lhu x11, 6 ( x22 )
.LBB1_328:                              //  %if.end503
                                        //    in Loop: Header=BB1_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x25, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x22 )
.LBB1_329:                              //  %if.end514
                                        //    in Loop: Header=BB1_4 Depth=1
	seqz x12, x0
	mv x10, x19
	mv x11, x24
	mv x13, x23
	mv x14, x18
	jal _fread_r
	mv x24, x10
	beq x0, x24, .LBB1_517
.LBB1_330:                              //  %if.end519
                                        //    in Loop: Header=BB1_4 Depth=1
	beq x0, x25, .LBB1_334
.LBB1_331:                              //  %if.end519
                                        //    in Loop: Header=BB1_4 Depth=1
	bgeu x24, x23, .LBB1_334
.LBB1_332:                              //  %if.then525
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x25 )
	mv x11, x24
	jal realloc
	beq x0, x10, .LBB1_334
.LBB1_333:                              //  %if.then530
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10, 0 ( x25 )
.LBB1_334:                              //  %cleanup535.thread2761
                                        //    in Loop: Header=BB1_4 Depth=1
	add x20, x20, x24
	add x27, x27, 1
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_601
.LBB1_602:                              //  %cleanup535.thread2761
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_601:                              //  %cleanup535.thread2761
	jal x0, .LBB1_520
.LBB1_335:                              //  %if.then814
                                        //    in Loop: Header=BB1_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB1_522
.LBB1_336:                              //  %if.end834
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x22 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_522
.LBB1_337:                              //  %cleanup843
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x11, 4 ( x22 )
	sw x10, 0 ( x22 )
	add x11, x11, 8
	sh x11, 4 ( x22 )
	lhu x11, 6 ( x22 )
.LBB1_338:                              //  %if.end846
                                        //    in Loop: Header=BB1_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x25, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x22 )
.LBB1_339:                              //  %if.end857
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x18 )
	add x12, fp, -328
	sw x25, -720 ( fp )             //  4-byte Folded Spill
	lbu x11, 0 ( x10 )
	add x11, x11, x12
	lbu x11, 0 ( x11 )
	beq x0, x11, .LBB1_349
.LBB1_340:                              //  %while.body863.lr.ph
                                        //    in Loop: Header=BB1_4 Depth=1
	beq x0, x25, .LBB1_461
.LBB1_341:                              //    in Loop: Header=BB1_4 Depth=1
	mv x25, x26
	jal x0, .LBB1_343
.LBB1_342:                              //  %if.end909
                                        //    in Loop: Header=BB1_343 Depth=2
	lw x10, 0 ( x18 )
	add x12, fp, -328
	lbu x11, 0 ( x10 )
	add x11, x11, x12
	lbu x11, 0 ( x11 )
	beq x0, x11, .LBB1_469
.LBB1_343:                              //  %while.body863
                                        //    Parent Loop BB1_4 Depth=1
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
	bltu x27, x24, .LBB1_346
.LBB1_344:                              //  %if.then878
                                        //    in Loop: Header=BB1_343 Depth=2
	sll x24, x24, 1&31
	mv x10, x26
	mv x11, x24
	jal realloc
	mv x26, x10
	beq x0, x26, .LBB1_519
.LBB1_345:                              //  %if.end884
                                        //    in Loop: Header=BB1_343 Depth=2
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	add x25, x27, x26
	sw x26, 0 ( x10 )
.LBB1_346:                              //  %cleanup.cont892
                                        //    in Loop: Header=BB1_343 Depth=2
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	add x23, x23, -1
	beq x0, x23, .LBB1_469
.LBB1_347:                              //  %if.end897
                                        //    in Loop: Header=BB1_343 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_342
.LBB1_348:                              //  %land.lhs.true901
                                        //    in Loop: Header=BB1_343 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_342
	jal x0, .LBB1_467
.LBB1_349:                              //    in Loop: Header=BB1_4 Depth=1
	mv x25, x26
	sub x23, x25, x26
	bltu x0, x23, .LBB1_470
	jal x0, .LBB1_520
.LBB1_350:                              //  %if.then1213
                                        //    in Loop: Header=BB1_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB1_522
.LBB1_351:                              //  %if.end1233
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x22 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_522
.LBB1_352:                              //  %cleanup1242
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x11, 4 ( x22 )
	sw x10, 0 ( x22 )
	add x11, x11, 8
	sh x11, 4 ( x22 )
	lhu x11, 6 ( x22 )
.LBB1_353:                              //  %if.end1245
                                        //    in Loop: Header=BB1_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -720 ( fp )             //  4-byte Folded Reload
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x22 )
.LBB1_354:                              //  %if.end1256
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x18 )
	lbu x11, 0 ( x10 )
	add x11, x11, x9
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB1_364
.LBB1_355:                              //  %while.body1265.lr.ph
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x11, -720 ( fp )             //  4-byte Folded Reload
	beq x0, x11, .LBB1_475
.LBB1_356:                              //    in Loop: Header=BB1_4 Depth=1
	mv x27, x25
	jal x0, .LBB1_358
.LBB1_357:                              //  %if.end1307
                                        //    in Loop: Header=BB1_358 Depth=2
	lw x10, 0 ( x18 )
	lbu x11, 0 ( x10 )
	add x11, x11, x9
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB1_481
.LBB1_358:                              //  %while.body1265
                                        //    Parent Loop BB1_4 Depth=1
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
	bltu x26, x24, .LBB1_361
.LBB1_359:                              //  %if.then1280
                                        //    in Loop: Header=BB1_358 Depth=2
	sll x24, x24, 1&31
	mv x10, x25
	mv x11, x24
	jal realloc
	mv x25, x10
	beq x0, x25, .LBB1_519
.LBB1_360:                              //  %if.end1286
                                        //    in Loop: Header=BB1_358 Depth=2
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	add x27, x26, x25
	sw x25, 0 ( x10 )
.LBB1_361:                              //  %cleanup.cont1294
                                        //    in Loop: Header=BB1_358 Depth=2
	add x23, x23, -1
	beq x0, x23, .LBB1_481
.LBB1_362:                              //  %if.end1299
                                        //    in Loop: Header=BB1_358 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_357
.LBB1_363:                              //  %land.lhs.true1303
                                        //    in Loop: Header=BB1_358 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_357
	jal x0, .LBB1_481
.LBB1_364:                              //    in Loop: Header=BB1_4 Depth=1
	mv x27, x25
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	sub x23, x27, x25
	sb x0, 0 ( x27 )
	bltu x0, x10, .LBB1_482
	jal x0, .LBB1_485
.LBB1_365:                              //  %if.then264
                                        //    in Loop: Header=BB1_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB1_520
.LBB1_366:                              //  %if.end284
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x22 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_520
.LBB1_367:                              //  %cleanup
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x11, 4 ( x22 )
	sw x10, 0 ( x22 )
	add x11, x11, 8
	sh x11, 4 ( x22 )
	lhu x11, 6 ( x22 )
.LBB1_368:                              //  %if.end293
                                        //    in Loop: Header=BB1_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -720 ( fp )             //  4-byte Folded Reload
	add x27, x0, 32
	mv x26, x25
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x22 )
	jal __locale_mb_cur_max
	bne x24, x10, .LBB1_371
	jal x0, .LBB1_516
.LBB1_369:                              //  %if.end389
                                        //    in Loop: Header=BB1_371 Depth=2
	beq x0, x23, .LBB1_389
.LBB1_370:                              //  %while.body307
                                        //    in Loop: Header=BB1_371 Depth=2
	jal __locale_mb_cur_max
	beq x24, x10, .LBB1_516
.LBB1_371:                              //  %if.end312
                                        //    Parent Loop BB1_4 Depth=1
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
	bltu x0, x10, .LBB1_373
.LBB1_372:                              //  %if.end312
                                        //    in Loop: Header=BB1_371 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB1_374
.LBB1_373:                              //  %if.then325
                                        //    in Loop: Header=BB1_371 Depth=2
	add x10, fp, -60
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB1_374:                              //  %if.end327
                                        //    in Loop: Header=BB1_371 Depth=2
	add x12, fp, -678
	add x14, fp, -60
	mv x10, x19
	mv x11, x25
	mv x13, x24
	jal _mbrtowc_r
	xor x11, x10, -2
	sw x10, -696 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB1_386
.LBB1_375:                              //  %if.end327
                                        //    in Loop: Header=BB1_371 Depth=2
	beq x0, x10, .LBB1_379
.LBB1_376:                              //  %if.end327
                                        //    in Loop: Header=BB1_371 Depth=2
	xor x10, x10, -1
	beq x0, x10, .LBB1_516
.LBB1_377:                              //  %if.then343
                                        //    in Loop: Header=BB1_371 Depth=2
	lw x10, -696 ( fp )             //  4-byte Folded Reload
	add x20, x20, x24
	xor x10, x10, 3
	bltu x0, x10, .LBB1_380
.LBB1_378:                              //  %if.then343
                                        //    in Loop: Header=BB1_371 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB1_381
	jal x0, .LBB1_380
.LBB1_379:                              //  %if.then339
                                        //    in Loop: Header=BB1_371 Depth=2
	add x20, x20, x24
	sw x0, 0 ( x25 )
.LBB1_380:                              //  %if.then351
                                        //    in Loop: Header=BB1_371 Depth=2
	add x23, x23, -1
.LBB1_381:                              //  %if.then356
                                        //    in Loop: Header=BB1_371 Depth=2
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_385
.LBB1_382:                              //  %if.then356
                                        //    in Loop: Header=BB1_371 Depth=2
	sub x10, x25, x26
	sra x24, x10, 2&31
	bltu x24, x27, .LBB1_385
.LBB1_383:                              //  %if.then361
                                        //    in Loop: Header=BB1_371 Depth=2
	sll x11, x27, 3&31
	mv x10, x26
	jal realloc
	mv x26, x10
	beq x0, x26, .LBB1_519
.LBB1_384:                              //  %if.end366
                                        //    in Loop: Header=BB1_371 Depth=2
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	sll x27, x27, 1&31
	sw x26, 0 ( x10 )
	sll x10, x24, 2&31
	add x25, x10, x26
.LBB1_385:                              //  %cleanup.cont374
                                        //    in Loop: Header=BB1_371 Depth=2
	mv x24, x0
	add x25, x25, 4
.LBB1_386:                              //  %if.end377
                                        //    in Loop: Header=BB1_371 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_369
.LBB1_387:                              //  %land.lhs.true381
                                        //    in Loop: Header=BB1_371 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_369
.LBB1_388:                              //  %if.then384
                                        //    in Loop: Header=BB1_4 Depth=1
	bltu x0, x24, .LBB1_516
.LBB1_389:                              //  %while.end390
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_393
.LBB1_390:                              //  %while.end390
                                        //    in Loop: Header=BB1_4 Depth=1
	sub x11, x25, x26
	sra x10, x11, 2&31
	bgeu x10, x27, .LBB1_393
.LBB1_391:                              //  %if.then400
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB1_393
.LBB1_392:                              //  %if.then404
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x11, -720 ( fp )             //  4-byte Folded Reload
	sw x10, 0 ( x11 )
.LBB1_393:                              //  %cleanup412
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -724 ( fp )             //  4-byte Folded Reload
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	seqz x10, x10
	add x27, x10, x27
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_603
.LBB1_604:                              //  %cleanup412
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_603:                              //  %cleanup412
	jal x0, .LBB1_520
.LBB1_394:                              //  %if.then575
                                        //    in Loop: Header=BB1_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB1_533
.LBB1_395:                              //  %if.end595
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x22 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_533
.LBB1_396:                              //  %cleanup604
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x11, 4 ( x22 )
	lw x13, -720 ( fp )             //  4-byte Folded Reload
	sw x10, 0 ( x22 )
	add x11, x11, 8
	sh x11, 4 ( x22 )
	lhu x11, 6 ( x22 )
.LBB1_397:                              //  %if.end607
                                        //    in Loop: Header=BB1_4 Depth=1
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
	bne x24, x10, .LBB1_402
	jal x0, .LBB1_517
.LBB1_398:                              //    in Loop: Header=BB1_402 Depth=2
	lw x26, -724 ( fp )             //  4-byte Folded Reload
	mv x25, x11
.LBB1_399:                              //  %if.end713.us
                                        //    in Loop: Header=BB1_402 Depth=2
	lw x10, 4 ( x18 )
	bge x0, x10, .LBB1_419
.LBB1_400:                              //  %if.end725.us
                                        //    in Loop: Header=BB1_402 Depth=2
	beq x0, x23, .LBB1_497
.LBB1_401:                              //  %while.body623.us
                                        //    in Loop: Header=BB1_402 Depth=2
	jal __locale_mb_cur_max
	beq x24, x10, .LBB1_517
.LBB1_402:                              //  %if.end628.us
                                        //    Parent Loop BB1_4 Depth=1
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
	bltu x0, x10, .LBB1_404
.LBB1_403:                              //  %if.end628.us
                                        //    in Loop: Header=BB1_402 Depth=2
	lw x10, -688 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB1_405
.LBB1_404:                              //  %if.then642.us
                                        //    in Loop: Header=BB1_402 Depth=2
	add x10, fp, -688
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB1_405:                              //  %if.end644.us
                                        //    in Loop: Header=BB1_402 Depth=2
	add x12, fp, -678
	add x14, fp, -688
	mv x10, x19
	mv x11, x25
	mv x13, x24
	jal _mbrtowc_r
	xor x11, x10, -2
	sw x10, -696 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB1_399
.LBB1_406:                              //  %if.end644.us
                                        //    in Loop: Header=BB1_402 Depth=2
	beq x0, x10, .LBB1_410
.LBB1_407:                              //  %if.end644.us
                                        //    in Loop: Header=BB1_402 Depth=2
	xor x10, x10, -1
	beq x0, x10, .LBB1_517
.LBB1_408:                              //  %if.then657.us
                                        //    in Loop: Header=BB1_402 Depth=2
	mv x12, x26
	mv x26, x25
	lw x25, 0 ( x25 )
	xor x10, x25, -1
	bltu x0, x10, .LBB1_411
.LBB1_409:                              //    in Loop: Header=BB1_402 Depth=2
	lw x11, -696 ( fp )             //  4-byte Folded Reload
	mv x25, x26
	add x27, x0, -1
	mv x26, x12
	jal x0, .LBB1_414
.LBB1_410:                              //  %if.then657.thread.us
                                        //    in Loop: Header=BB1_402 Depth=2
	mv x26, x25
	sw x0, 0 ( x25 )
	mv x25, x0
.LBB1_411:                              //  %if.end.i.us
                                        //    in Loop: Header=BB1_402 Depth=2
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
	bne x10, x11, .LBB1_413
.LBB1_412:                              //    in Loop: Header=BB1_402 Depth=2
	lbu x27, -61 ( fp )
.LBB1_413:                              //  %if.end.i.us
                                        //    in Loop: Header=BB1_402 Depth=2
	mv x25, x26
	lw x11, -696 ( fp )             //  4-byte Folded Reload
	lw x26, -724 ( fp )             //  4-byte Folded Reload
.LBB1_414:                              //  %__wctob.exit.us
                                        //    in Loop: Header=BB1_402 Depth=2
	add x12, fp, -328
	add x12, x27, x12
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	lbu x12, 0 ( x12 )
	beq x0, x12, .LBB1_494
.LBB1_415:                              //  %if.end671.us
                                        //    in Loop: Header=BB1_402 Depth=2
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
	beq x0, x26, .LBB1_399
.LBB1_416:                              //  %if.end671.us
                                        //    in Loop: Header=BB1_402 Depth=2
	lw x26, -728 ( fp )             //  4-byte Folded Reload
	sub x12, x25, x10
	mv x11, x25
	sra x25, x12, 2&31
	bltu x25, x26, .LBB1_398
.LBB1_417:                              //  %if.then697.us
                                        //    in Loop: Header=BB1_402 Depth=2
	sll x11, x26, 3&31
	jal realloc
	beq x0, x10, .LBB1_532
.LBB1_418:                              //  %if.end703.us
                                        //    in Loop: Header=BB1_402 Depth=2
	lw x12, -724 ( fp )             //  4-byte Folded Reload
	sll x11, x25, 2&31
	sll x26, x26, 1&31
	sw x26, -728 ( fp )             //  4-byte Folded Spill
	add x25, x11, x10
	mv x26, x12
	sw x10, 0 ( x12 )
	sw x10, -720 ( fp )             //  4-byte Folded Spill
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_400
.LBB1_419:                              //  %land.lhs.true717.us
                                        //    in Loop: Header=BB1_402 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_400
.LBB1_420:                              //  %if.then720
                                        //    in Loop: Header=BB1_4 Depth=1
	beq x0, x24, .LBB1_497
	jal x0, .LBB1_517
.LBB1_421:                              //  %if.then974
                                        //    in Loop: Header=BB1_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB1_533
.LBB1_422:                              //  %if.end994
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x22 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_533
.LBB1_423:                              //  %cleanup1003
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x11, 4 ( x22 )
	sw x10, 0 ( x22 )
	add x11, x11, 8
	sh x11, 4 ( x22 )
	lhu x11, 6 ( x22 )
.LBB1_424:                              //  %if.end1006
                                        //    in Loop: Header=BB1_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x27, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x22 )
	add x10, x0, 32
	lw x25, -720 ( fp )             //  4-byte Folded Reload
	sw x10, -724 ( fp )             //  4-byte Folded Spill
	sw x26, -728 ( fp )             //  4-byte Folded Spill
	beq x0, x23, .LBB1_503
.LBB1_425:                              //  %if.end1018
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x18 )
	lbu x10, 0 ( x10 )
	add x10, x10, x9
	lbu x10, 1 ( x10 )
	and x10, x10, 8
	bltu x0, x10, .LBB1_503
.LBB1_426:                              //  %while.body1028.lr.ph
                                        //    in Loop: Header=BB1_4 Depth=1
	bltu x0, x26, .LBB1_446
.LBB1_427:                              //  %while.body1028.us.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x26, x0
.LBB1_428:                              //  %while.body1028.us
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	jal __locale_mb_cur_max
	beq x26, x10, .LBB1_516
.LBB1_429:                              //  %if.end1033.us
                                        //    in Loop: Header=BB1_428 Depth=2
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
	bltu x0, x10, .LBB1_431
.LBB1_430:                              //  %if.end1033.us
                                        //    in Loop: Header=BB1_428 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB1_432
.LBB1_431:                              //  %if.then1047.us
                                        //    in Loop: Header=BB1_428 Depth=2
	add x10, fp, -60
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB1_432:                              //  %if.end1049.us
                                        //    in Loop: Header=BB1_428 Depth=2
	add x12, fp, -678
	add x14, fp, -60
	mv x10, x19
	mv x11, x25
	mv x13, x26
	jal _mbrtowc_r
	xor x11, x10, -2
	sw x10, -696 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB1_442
.LBB1_433:                              //  %if.end1049.us
                                        //    in Loop: Header=BB1_428 Depth=2
	beq x0, x10, .LBB1_436
.LBB1_434:                              //  %if.end1049.us
                                        //    in Loop: Header=BB1_428 Depth=2
	xor x10, x10, -1
	beq x0, x10, .LBB1_516
.LBB1_435:                              //  %if.end1049.us.if.then1062.us_crit_edge
                                        //    in Loop: Header=BB1_428 Depth=2
	lw x10, 0 ( x25 )
	jal iswspace
	beq x0, x10, .LBB1_437
	jal x0, .LBB1_491
.LBB1_436:                              //  %if.then1058.us
                                        //    in Loop: Header=BB1_428 Depth=2
	mv x10, x0
	sw x0, 0 ( x25 )
	jal iswspace
	bltu x0, x10, .LBB1_491
.LBB1_437:                              //  %if.end1075.us
                                        //    in Loop: Header=BB1_428 Depth=2
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
	beq x0, x27, .LBB1_442
.LBB1_438:                              //  %if.end1075.us
                                        //    in Loop: Header=BB1_428 Depth=2
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	mv x12, x25
	mv x25, x27
	lw x27, -724 ( fp )             //  4-byte Folded Reload
	sub x11, x12, x10
	sra x24, x11, 2&31
	bltu x24, x27, .LBB1_441
.LBB1_439:                              //  %if.then1101.us
                                        //    in Loop: Header=BB1_428 Depth=2
	sll x11, x27, 3&31
	jal realloc
	beq x0, x10, .LBB1_532
.LBB1_440:                              //  %if.end1107.us
                                        //    in Loop: Header=BB1_428 Depth=2
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
	blt x0, x10, .LBB1_444
	jal x0, .LBB1_443
.LBB1_441:                              //    in Loop: Header=BB1_428 Depth=2
	mv x27, x25
	add x24, fp, -679
	mv x25, x12
.LBB1_442:                              //  %if.end1117.us
                                        //    in Loop: Header=BB1_428 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_444
.LBB1_443:                              //  %land.lhs.true1121.us
                                        //    in Loop: Header=BB1_428 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	bltu x0, x10, .LBB1_502
.LBB1_444:                              //  %if.end1129.us
                                        //    in Loop: Header=BB1_428 Depth=2
	beq x0, x23, .LBB1_503
.LBB1_445:                              //  %if.end1129.us
                                        //    in Loop: Header=BB1_428 Depth=2
	lw x10, 0 ( x18 )
	lbu x10, 0 ( x10 )
	add x10, x10, x9
	lbu x10, 1 ( x10 )
	and x10, x10, 8
	beq x0, x10, .LBB1_428
	jal x0, .LBB1_503
.LBB1_446:                              //  %while.body1028.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x26, x0
.LBB1_447:                              //  %while.body1028
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	jal __locale_mb_cur_max
	beq x26, x10, .LBB1_516
.LBB1_448:                              //  %if.end1033
                                        //    in Loop: Header=BB1_447 Depth=2
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
	bltu x0, x10, .LBB1_450
.LBB1_449:                              //  %if.end1033
                                        //    in Loop: Header=BB1_447 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB1_451
.LBB1_450:                              //  %if.then1047
                                        //    in Loop: Header=BB1_447 Depth=2
	add x10, fp, -60
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB1_451:                              //  %if.end1049
                                        //    in Loop: Header=BB1_447 Depth=2
	add x12, fp, -678
	add x14, fp, -60
	mv x10, x19
	mv x11, x25
	mv x13, x26
	jal _mbrtowc_r
	xor x11, x10, -2
	sw x10, -696 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB1_457
.LBB1_452:                              //  %if.end1049
                                        //    in Loop: Header=BB1_447 Depth=2
	beq x0, x10, .LBB1_455
.LBB1_453:                              //  %if.end1049
                                        //    in Loop: Header=BB1_447 Depth=2
	xor x10, x10, -1
	beq x0, x10, .LBB1_516
.LBB1_454:                              //  %if.end1049.if.then1062_crit_edge
                                        //    in Loop: Header=BB1_447 Depth=2
	lw x10, 0 ( x25 )
	jal iswspace
	beq x0, x10, .LBB1_456
	jal x0, .LBB1_491
.LBB1_455:                              //  %if.then1058
                                        //    in Loop: Header=BB1_447 Depth=2
	mv x10, x0
	sw x0, 0 ( x25 )
	jal iswspace
	bltu x0, x10, .LBB1_491
.LBB1_456:                              //  %if.end1075
                                        //    in Loop: Header=BB1_447 Depth=2
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
.LBB1_457:                              //  %if.end1117
                                        //    in Loop: Header=BB1_447 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_459
.LBB1_458:                              //  %land.lhs.true1121
                                        //    in Loop: Header=BB1_447 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	bltu x0, x10, .LBB1_502
.LBB1_459:                              //  %if.end1129
                                        //    in Loop: Header=BB1_447 Depth=2
	beq x0, x23, .LBB1_503
.LBB1_460:                              //  %if.end1129
                                        //    in Loop: Header=BB1_447 Depth=2
	lw x10, 0 ( x18 )
	lbu x10, 0 ( x10 )
	add x10, x10, x9
	lbu x10, 1 ( x10 )
	and x10, x10, 8
	beq x0, x10, .LBB1_447
	jal x0, .LBB1_503
.LBB1_461:                              //  %while.body863.us.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x25, x0
	add x23, x23, -1
	jal x0, .LBB1_463
.LBB1_462:                              //  %if.end909.us
                                        //    in Loop: Header=BB1_463 Depth=2
	lw x10, 0 ( x18 )
	add x12, fp, -328
	add x25, x25, 1
	lbu x11, 0 ( x10 )
	add x11, x11, x12
	lbu x11, 0 ( x11 )
	beq x0, x11, .LBB1_468
.LBB1_463:                              //  %while.body863.us
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x11, x10, 1
	sw x11, 0 ( x18 )
	lw x11, 4 ( x18 )
	add x27, x25, x26
	add x11, x11, -1
	sw x11, 4 ( x18 )
	lb x10, 0 ( x10 )
	sb x10, 0 ( x27 )
	beq x23, x25, .LBB1_468
.LBB1_464:                              //  %if.end897.us
                                        //    in Loop: Header=BB1_463 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_462
.LBB1_465:                              //  %land.lhs.true901.us
                                        //    in Loop: Header=BB1_463 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_462
.LBB1_466:                              //  %if.then904.loopexit
                                        //    in Loop: Header=BB1_4 Depth=1
	add x25, x27, 1
	lw x27, -716 ( fp )             //  4-byte Folded Reload
.LBB1_467:                              //  %if.then904
                                        //    in Loop: Header=BB1_4 Depth=1
	bne x25, x26, .LBB1_469
	jal x0, .LBB1_517
.LBB1_468:                              //  %while.end910.loopexit
                                        //    in Loop: Header=BB1_4 Depth=1
	add x25, x27, 1
	lw x27, -716 ( fp )             //  4-byte Folded Reload
.LBB1_469:                              //  %while.end910
                                        //    in Loop: Header=BB1_4 Depth=1
	sub x23, x25, x26
	beq x0, x23, .LBB1_520
.LBB1_470:                              //  %if.end917
                                        //    in Loop: Header=BB1_4 Depth=1
	sb x0, 0 ( x25 )
	lw x25, -720 ( fp )             //  4-byte Folded Reload
	beq x0, x25, .LBB1_474
.LBB1_471:                              //  %if.end917
                                        //    in Loop: Header=BB1_4 Depth=1
	add x11, x23, 1
	bgeu x11, x24, .LBB1_474
.LBB1_472:                              //  %if.then924
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x25 )
	jal realloc
	beq x0, x10, .LBB1_474
.LBB1_473:                              //  %if.then929
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10, 0 ( x25 )
.LBB1_474:                              //  %cleanup934.thread2817
                                        //    in Loop: Header=BB1_4 Depth=1
	add x20, x20, x23
	add x27, x27, 1
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_605
.LBB1_606:                              //  %cleanup934.thread2817
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_605:                              //  %cleanup934.thread2817
	jal x0, .LBB1_520
.LBB1_475:                              //  %while.body1265.us.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x27, x0
	add x23, x23, -1
	jal x0, .LBB1_477
.LBB1_476:                              //  %if.end1307.us
                                        //    in Loop: Header=BB1_477 Depth=2
	lw x10, 0 ( x18 )
	add x27, x27, 1
	lbu x11, 0 ( x10 )
	add x11, x11, x9
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB1_480
.LBB1_477:                              //  %while.body1265.us
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x11, x10, 1
	sw x11, 0 ( x18 )
	lw x11, 4 ( x18 )
	add x26, x27, x25
	add x11, x11, -1
	sw x11, 4 ( x18 )
	lb x10, 0 ( x10 )
	sb x10, 0 ( x26 )
	beq x23, x27, .LBB1_480
.LBB1_478:                              //  %if.end1299.us
                                        //    in Loop: Header=BB1_477 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_476
.LBB1_479:                              //  %land.lhs.true1303.us
                                        //    in Loop: Header=BB1_477 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_476
.LBB1_480:                              //  %while.end1308.loopexit
                                        //    in Loop: Header=BB1_4 Depth=1
	add x27, x26, 1
.LBB1_481:                              //  %while.end1308
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	sub x23, x27, x25
	sb x0, 0 ( x27 )
	beq x0, x10, .LBB1_485
.LBB1_482:                              //  %while.end1308
                                        //    in Loop: Header=BB1_4 Depth=1
	add x11, x23, 1
	bgeu x11, x24, .LBB1_485
.LBB1_483:                              //  %if.then1318
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB1_485
.LBB1_484:                              //  %if.then1323
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x11, -720 ( fp )             //  4-byte Folded Reload
	sw x10, 0 ( x11 )
.LBB1_485:                              //  %cleanup1331
                                        //    in Loop: Header=BB1_4 Depth=1
	add x20, x20, x23
.LBB1_486:                              //  %if.end1336
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x27, -716 ( fp )             //  4-byte Folded Reload
.LBB1_487:                              //  %if.end1336
                                        //    in Loop: Header=BB1_4 Depth=1
	add x27, x27, 1
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_607
.LBB1_608:                              //  %if.end1336
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_607:                              //  %if.end1336
	jal x0, .LBB1_520
.LBB1_488:                              //  %if.then1806
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x10, %hi( .str.1 )
	add x10, x10, %lo( .str.1 )
	jal nanf
.LBB1_489:                              //  %if.end1812
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10, 0 ( x25 )
	add x27, x27, 1
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_609
.LBB1_610:                              //  %if.end1812
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_609:                              //  %if.end1812
	jal x0, .LBB1_520
.LBB1_490:                              //    in Loop: Header=BB1_4 Depth=1
	mv x26, x0
	mv x12, x26
	mv x10, x26
	sw x12, -728 ( fp )             //  4-byte Folded Spill
	sw x10, -720 ( fp )             //  4-byte Folded Spill
	sw x11, -696 ( fp )             //  4-byte Folded Spill
	bltu x0, x24, .LBB1_495
	jal x0, .LBB1_497
.LBB1_491:                              //  %while.cond1066.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	beq x0, x26, .LBB1_503
.LBB1_492:                              //  %while.body1069
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x26, x24
	lbu x11, 0 ( x10 )
	mv x10, x19
	mv x12, x18
	jal _ungetc_r
	add x26, x26, -1
	bltu x0, x26, .LBB1_492
	jal x0, .LBB1_503
.LBB1_493:                              //  %if.then181
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sh x20, 0 ( x10 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_611
.LBB1_612:                              //  %if.then181
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_611:                              //  %if.then181
	jal x0, .LBB1_520
.LBB1_494:                              //    in Loop: Header=BB1_4 Depth=1
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	lw x12, -728 ( fp )             //  4-byte Folded Reload
	sw x12, -728 ( fp )             //  4-byte Folded Spill
	sw x10, -720 ( fp )             //  4-byte Folded Spill
	sw x11, -696 ( fp )             //  4-byte Folded Spill
	beq x0, x24, .LBB1_497
.LBB1_495:                              //  %while.body665.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x23, fp, -679
.LBB1_496:                              //  %while.body665
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x24, x23
	lbu x11, 0 ( x10 )
	mv x10, x19
	mv x12, x18
	jal _ungetc_r
	add x24, x24, -1
	bltu x0, x24, .LBB1_496
.LBB1_497:                              //  %while.end726
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -732 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_498
.LBB1_613:                              //  %while.end726
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_43
.LBB1_498:                              //  %if.then729
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x0, 0 ( x25 )
	beq x0, x26, .LBB1_487
.LBB1_499:                              //  %if.then729
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	sub x10, x25, x10
	sra x10, x10, 2&31
	add x11, x10, 1
	lw x10, -728 ( fp )             //  4-byte Folded Reload
	bgeu x11, x10, .LBB1_487
.LBB1_500:                              //  %if.then740
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x26 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_487
.LBB1_501:                              //  %if.then745
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10, 0 ( x26 )
	add x27, x27, 1
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_614
.LBB1_615:                              //  %if.then745
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_614:                              //  %if.then745
	jal x0, .LBB1_520
.LBB1_502:                              //  %if.then1124
                                        //    in Loop: Header=BB1_4 Depth=1
	bltu x0, x26, .LBB1_516
.LBB1_503:                              //  %while.end1130
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -728 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_505
.LBB1_504:                              //    in Loop: Header=BB1_4 Depth=1
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_616
.LBB1_617:                              //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_616:
	jal x0, .LBB1_520
.LBB1_505:                              //  %if.then1133
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x0, 0 ( x25 )
	beq x0, x27, .LBB1_486
.LBB1_506:                              //  %if.then1133
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -720 ( fp )             //  4-byte Folded Reload
	sub x10, x25, x10
	sra x10, x10, 2&31
	add x11, x10, 1
	lw x10, -724 ( fp )             //  4-byte Folded Reload
	bgeu x11, x10, .LBB1_486
.LBB1_507:                              //  %if.then1144
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x27 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_486
.LBB1_508:                              //  %if.then1149
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10, 0 ( x27 )
	jal x0, .LBB1_486
.LBB1_509:                              //  %for.end1423.loopexit.split.loop.exit
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x12, -700 ( fp )             //  4-byte Folded Spill
	add x27, fp, -678
	add x26, x25, x27
	and x10, x24, 256
	bltu x0, x10, .LBB1_153
	jal x0, .LBB1_156
.LBB1_510:                              //  %if.then1471
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x11, -704 ( fp )             //  4-byte Folded Reload
	lui x10, %hi( _strtoul_r )
	add x10, x10, %lo( _strtoul_r )
	beq x11, x10, .LBB1_513
.LBB1_511:                              //  %if.else1477
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x13, -700 ( fp )             //  4-byte Folded Reload
	add x11, fp, -678
	mv x12, x0
	mv x10, x19
	jal _strtoll_r
	jal x0, .LBB1_514
.LBB1_512:                              //  %if.then192
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sra x11, x20, 31&31
	sw x11, 4 ( x10 )
	sw x20, 0 ( x10 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_618
.LBB1_619:                              //  %if.then192
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_618:                              //  %if.then192
	jal x0, .LBB1_520
.LBB1_513:                              //  %if.then1474
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x13, -700 ( fp )             //  4-byte Folded Reload
	add x11, fp, -678
	mv x12, x0
	mv x10, x19
	jal _strtoull_r
.LBB1_514:                              //  %if.end1480
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x12, -68 ( fp )
	add x13, x12, 4
	sw x13, -68 ( fp )
	lw x12, 0 ( x12 )
	sw x11, 4 ( x12 )
	sw x10, 0 ( x12 )
	jal x0, .LBB1_322
.LBB1_515:
	mv x27, x0
	jal x0, .LBB1_527
.LBB1_516:                              //  %cleanup1154.thread2841
	lw x27, -716 ( fp )             //  4-byte Folded Reload
.LBB1_517:                              //  %input_failure
	beq x0, x27, .LBB1_519
.LBB1_518:                              //  %land.lhs.true1826
	lbu x10, 12 ( x18 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB1_520
.LBB1_519:                              //  %land.lhs.true1826
	add x27, x0, -1
.LBB1_520:                              //  %all_done
	beq x0, x22, .LBB1_527
.LBB1_521:                              //  %if.then1848
	xor x10, x27, -1
	bltu x0, x10, .LBB1_525
.LBB1_522:                              //  %for.cond1852.preheader
	lhu x10, 6 ( x22 )
	add x27, x0, -1
	beq x0, x10, .LBB1_525
.LBB1_523:                              //  %for.body1857.lr.ph
	mv x9, x0
	mv x18, x9
.LBB1_524:                              //  %for.body1857
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
	bltu x18, x10, .LBB1_524
.LBB1_525:                              //  %if.end1865
	lw x10, 0 ( x22 )
	beq x0, x10, .LBB1_527
.LBB1_526:                              //  %if.then1868
	jal free
.LBB1_527:                              //  %cleanup1874
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
.LBB1_528:                              //  %while.cond1680.preheader
	bge x0, x27, .LBB1_534
.LBB1_529:                              //  %while.body1684.preheader
	add x9, fp, -678
	add x20, x27, x9
.LBB1_530:                              //  %while.body1684
                                        //  =>This Inner Loop Header: Depth=1
	lb x11, -1 ( x20 )
	mv x10, x19
	mv x12, x18
	jal _ungetc_r
	add x20, x20, -1
	bltu x9, x20, .LBB1_530
	jal x0, .LBB1_534
.LBB1_532:
	add x25, x0, -1
.LBB1_533:                              //  %cleanup1154.thread
	mv x27, x25
	bltu x0, x22, .LBB1_521
	jal x0, .LBB1_527
.LBB1_535:                              //  %while.cond1712.preheader
	add x9, fp, -679
	bge x0, x27, .LBB1_534
.LBB1_536:                              //  %while.body1716
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x27, x9
	lb x11, 0 ( x10 )
	mv x10, x19
	mv x12, x18
	jal _ungetc_r
	add x27, x27, -1
	blt x0, x27, .LBB1_536
	jal x0, .LBB1_534
.LBB1_538:                              //  %while.cond1730.preheader
	bge x0, x27, .LBB1_534
.LBB1_539:                              //  %while.body1734.preheader
	add x9, fp, -679
.LBB1_540:                              //  %while.body1734
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x27, x9
	lb x11, 0 ( x10 )
	mv x10, x19
	mv x12, x18
	jal _ungetc_r
	add x27, x27, -1
	blt x0, x27, .LBB1_540
.LBB1_534:
	lw x27, -716 ( fp )             //  4-byte Folded Reload
	bltu x0, x22, .LBB1_521
	jal x0, .LBB1_527
.LBB1_545:
	mv x25, x27
	mv x27, x25
	bltu x0, x22, .LBB1_521
	jal x0, .LBB1_527
.LBB1_546:
	lw x25, -716 ( fp )             //  4-byte Folded Reload
	mv x27, x25
	bltu x0, x22, .LBB1_521
	jal x0, .LBB1_527
.Lfunc_end1:
	.size	__svfscanf_r, .Lfunc_end1-__svfscanf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_39
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_21
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_44
	.long	.LBB1_520
	.long	.LBB1_216
	.long	.LBB1_218
	.long	.LBB1_44
	.long	.LBB1_44
	.long	.LBB1_44
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_18
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_219
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_220
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_77
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_221
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_44
	.long	.LBB1_520
	.long	.LBB1_217
	.long	.LBB1_222
	.long	.LBB1_44
	.long	.LBB1_44
	.long	.LBB1_44
	.long	.LBB1_23
	.long	.LBB1_223
	.long	.LBB1_18
	.long	.LBB1_520
	.long	.LBB1_26
	.long	.LBB1_30
	.long	.LBB1_225
	.long	.LBB1_231
	.long	.LBB1_232
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_233
	.long	.LBB1_13
	.long	.LBB1_234
	.long	.LBB1_520
	.long	.LBB1_520
	.long	.LBB1_77
	.long	.LBB1_520
	.long	.LBB1_13
JTI1_1:
	.long	.LBB1_55
	.long	.LBB1_61
	.long	.LBB1_67
	.long	.LBB1_73
	.long	.LBB1_75
JTI1_2:
	.long	.LBB1_174
	.long	.LBB1_199
	.long	.LBB1_174
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_202
	.long	.LBB1_169
	.long	.LBB1_169
	.long	.LBB1_169
	.long	.LBB1_169
	.long	.LBB1_169
	.long	.LBB1_169
	.long	.LBB1_169
	.long	.LBB1_169
	.long	.LBB1_169
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_176
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_178
	.long	.LBB1_184
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_186
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_190
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_195
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_197
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_176
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_178
	.long	.LBB1_184
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_186
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_190
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_195
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_199
	.long	.LBB1_197
JTI1_3:
	.long	.LBB1_136
	.long	.LBB1_152
	.long	.LBB1_136
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_142
	.long	.LBB1_135
	.long	.LBB1_135
	.long	.LBB1_135
	.long	.LBB1_135
	.long	.LBB1_135
	.long	.LBB1_135
	.long	.LBB1_135
	.long	.LBB1_138
	.long	.LBB1_138
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_133
	.long	.LBB1_133
	.long	.LBB1_133
	.long	.LBB1_133
	.long	.LBB1_133
	.long	.LBB1_133
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_140
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_133
	.long	.LBB1_133
	.long	.LBB1_133
	.long	.LBB1_133
	.long	.LBB1_133
	.long	.LBB1_133
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_152
	.long	.LBB1_140
                                        //  -- End function
	.text
	.globl	__svfscanf              //  -- Begin function __svfscanf
	.type	__svfscanf,@function
__svfscanf:                             //  @__svfscanf
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
	j __svfscanf_r
.Lfunc_end2:
	.size	__svfscanf, .Lfunc_end2-__svfscanf
	.cfi_endproc
                                        //  -- End function
	.globl	_vfscanf_r              //  -- Begin function _vfscanf_r
	.type	_vfscanf_r,@function
_vfscanf_r:                             //  @_vfscanf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x13
	mv x9, x12
	mv x18, x11
	mv x19, x10
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x19, .LBB3_3
.LBB3_1:                                //  %land.lhs.true
	lw x10, 56 ( x19 )
	bltu x0, x10, .LBB3_3
.LBB3_2:                                //  %if.then
	mv x10, x19
	jal __sinit
.LBB3_3:                                //  %if.end
	mv x10, x19
	mv x11, x18
	mv x12, x9
	mv x13, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	j __svfscanf_r
.Lfunc_end3:
	.size	_vfscanf_r, .Lfunc_end3-_vfscanf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	__svfscanf_r.basefix,@object //  @__svfscanf_r.basefix
	.section	.rodata,"a",@progbits
	.p2align	1
__svfscanf_r.basefix:
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
	.size	__svfscanf_r.basefix, 34

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
