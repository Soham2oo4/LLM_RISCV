	.text
	.file	"svfwscanf.c"
	.globl	__ssvfwscanf_r          //  -- Begin function __ssvfwscanf_r
	.type	__ssvfwscanf_r,@function
__ssvfwscanf_r:                         //  @__ssvfwscanf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -1616
	.cfi_adjust_cfa_offset 1616
	sw fp, 1600 ( sp )
	.cfi_offset 8, -16
	add fp, sp, 1600
	.cfi_def_cfa 8, 16
	sw x18, -12 ( fp )              //  4-byte Folded Spill
	.cfi_offset 18, -28
	sw x19, -16 ( fp )              //  4-byte Folded Spill
	.cfi_offset 19, -32
	sw x27, -48 ( fp )              //  4-byte Folded Spill
	.cfi_offset 27, -64
	sw ra, -4 ( fp )                //  4-byte Folded Spill
	.cfi_offset 1, -20
	sw x9, -8 ( fp )                //  4-byte Folded Spill
	.cfi_offset 9, -24
	sw x20, -20 ( fp )              //  4-byte Folded Spill
	.cfi_offset 20, -36
	sw x21, -24 ( fp )              //  4-byte Folded Spill
	.cfi_offset 21, -40
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
	mv x27, x12
	mv x18, x11
	mv x19, x10
	sw x13, -56 ( fp )
	jal _localeconv_r
	lw x10, 0 ( x10 )
	lhu x12, 12 ( x18 )
	lui x11, (8192>>12)&1048575
	lb x14, 0 ( x10 )
	and x13, x11, x12
	bltu x0, x13, .LBB0_2
.LBB0_1:                                //  %if.then
	or x10, x11, x12
	sh x10, 12 ( x18 )
	lw x10, 100 ( x18 )
	or x10, x11, x10
	sw x10, 100 ( x18 )
.LBB0_2:                                //  %do.end
	lw x24, 0 ( x27 )
	bltu x0, x24, .LBB0_3
.LBB0_777:                              //  %do.end
	jal x0, .LBB0_686
.LBB0_3:                                //  %if.end9.lr.ph.lr.ph.lr.ph.lr.ph.lr.ph
	add x12, fp, -1464
	add x10, x12, 4
	sw x10, -1544 ( fp )            //  4-byte Folded Spill
	add x10, x12, 1356
	sw x10, -1552 ( fp )            //  4-byte Folded Spill
	add x10, x18, 64
	sw x10, -1476 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( JTI0_0 )
	add x16, x10, %lo( JTI0_0 )
	lui x10, %hi( 65503 )
	add x10, x10, %lo( 65503 )
	sw x10, -1480 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( JTI0_1 )
	add x10, x10, %lo( JTI0_1 )
	sw x10, -1508 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	sw x10, -1560 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( _wcstoul_r )
	add x10, x10, %lo( _wcstoul_r )
	sw x10, -1524 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( JTI0_3 )
	add x10, x10, %lo( JTI0_3 )
	sw x10, -1504 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( -65665 )
	add x10, x10, %lo( -65665 )
	sw x10, -1548 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( __ssvfwscanf_r.basefix )
	add x10, x10, %lo( __ssvfwscanf_r.basefix )
	sw x10, -1520 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( -16777216 )
	add x10, x10, %lo( -16777216 )
	sw x10, -1528 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( .str.1 )
	add x10, x10, %lo( .str.1 )
	sw x10, -1568 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	sw x10, -1556 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( JTI0_2 )
	add x10, x10, %lo( JTI0_2 )
	sw x10, -1500 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( _wcstol_r )
	mv x11, x0
	add x10, x10, %lo( _wcstol_r )
	sw x10, -1540 ( fp )            //  4-byte Folded Spill
	add x10, x12, 1352
	mv x20, x11
	add x9, x18, 63
	add x22, x18, 4
	mv x23, x11
	sw x14, -1516 ( fp )            //  4-byte Folded Spill
	sw x11, -1488 ( fp )            //  4-byte Folded Spill
	sw x11, -1472 ( fp )            //  4-byte Folded Spill
	sw x11, -1492 ( fp )            //  4-byte Folded Spill
	sw x11, -1512 ( fp )            //  4-byte Folded Spill
	sw x11, -1496 ( fp )            //  4-byte Folded Spill
	sw x11, -1536 ( fp )            //  4-byte Folded Spill
	sw x10, -1564 ( fp )            //  4-byte Folded Spill
	sw x11, -1532 ( fp )            //  4-byte Folded Spill
	sw x16, -1484 ( fp )            //  4-byte Folded Spill
.LBB0_4:                                //  %if.end9.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_35 Depth 2
                                        //      Child Loop BB0_7 Depth 2
                                        //        Child Loop BB0_8 Depth 3
                                        //          Child Loop BB0_9 Depth 4
                                        //      Child Loop BB0_99 Depth 2
                                        //      Child Loop BB0_53 Depth 2
                                        //      Child Loop BB0_212 Depth 2
                                        //      Child Loop BB0_452 Depth 2
                                        //      Child Loop BB0_163 Depth 2
                                        //      Child Loop BB0_150 Depth 2
                                        //      Child Loop BB0_411 Depth 2
                                        //      Child Loop BB0_275 Depth 2
                                        //      Child Loop BB0_539 Depth 2
                                        //      Child Loop BB0_203 Depth 2
                                        //      Child Loop BB0_127 Depth 2
                                        //      Child Loop BB0_132 Depth 2
                                        //      Child Loop BB0_374 Depth 2
                                        //        Child Loop BB0_375 Depth 3
                                        //      Child Loop BB0_386 Depth 2
                                        //        Child Loop BB0_387 Depth 3
                                        //      Child Loop BB0_497 Depth 2
                                        //      Child Loop BB0_513 Depth 2
                                        //      Child Loop BB0_361 Depth 2
                                        //      Child Loop BB0_186 Depth 2
                                        //      Child Loop BB0_342 Depth 2
                                        //      Child Loop BB0_115 Depth 2
	lw x26, -1480 ( fp )            //  4-byte Folded Reload
	add x25, x0, 3
	mv x10, x24
	add x27, x27, 4
	jal iswspace
	bltu x0, x10, .LBB0_35
.LBB0_5:                                //  %if.end23
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x16, -1484 ( fp )            //  4-byte Folded Reload
	xor x10, x24, 37
	add x12, x0, 85
	bltu x0, x10, .LBB0_67
.LBB0_6:                                //  %again.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x25, x0
	mv x26, x25
.LBB0_7:                                //  %again
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_8 Depth 3
                                        //          Child Loop BB0_9 Depth 4
	mv x10, x27
.LBB0_8:                                //  %again
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_7 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_9 Depth 4
	lw x24, 0 ( x10 )
	add x11, x24, -37
	bgeu x12, x11, .LBB0_9
.LBB0_778:                              //  %again
	jal x0, .LBB0_691
.LBB0_9:                                //  %again
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_7 Depth=2
                                        //        Parent Loop BB0_8 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	sll x11, x11, 2&31
	add x11, x16, x11
	lw x11, 0 ( x11 )
	add x27, x10, 4
	jr x11
.LBB0_10:                               //  %sw.bb88
                                        //    in Loop: Header=BB0_8 Depth=3
	and x11, x25, 15
	mv x10, x27
	beq x0, x11, .LBB0_8
	jal x0, .LBB0_691
.LBB0_11:                               //  %sw.bb64
                                        //    in Loop: Header=BB0_9 Depth=4
	and x11, x25, 15
	beq x0, x11, .LBB0_12
.LBB0_779:                              //  %sw.bb64
	jal x0, .LBB0_691
.LBB0_12:                               //  %if.end68
                                        //    in Loop: Header=BB0_9 Depth=4
	lw x11, 4 ( x10 )
	add x13, x0, 104
	beq x11, x13, .LBB0_18
.LBB0_13:                               //  %if.end68
                                        //    in Loop: Header=BB0_9 Depth=4
	add x11, x0, 4
	jal x0, .LBB0_17
.LBB0_14:                               //  %sw.bb46
                                        //    in Loop: Header=BB0_9 Depth=4
	and x11, x25, 15
	beq x0, x11, .LBB0_15
.LBB0_780:                              //  %sw.bb46
	jal x0, .LBB0_691
.LBB0_15:                               //  %if.end50
                                        //    in Loop: Header=BB0_9 Depth=4
	lw x11, 4 ( x10 )
	add x13, x0, 108
	beq x11, x13, .LBB0_19
.LBB0_16:                               //  %if.end50
                                        //    in Loop: Header=BB0_9 Depth=4
	seqz x11, x0
.LBB0_17:                               //  %if.end50
                                        //    in Loop: Header=BB0_9 Depth=4
	mv x10, x27
	or x25, x25, x11
	lw x24, 0 ( x10 )
	add x11, x24, -37
	bgeu x12, x11, .LBB0_9
	jal x0, .LBB0_691
.LBB0_18:                               //    in Loop: Header=BB0_9 Depth=4
	add x11, x0, 8
	jal x0, .LBB0_20
.LBB0_19:                               //    in Loop: Header=BB0_9 Depth=4
	add x11, x0, 2
.LBB0_20:                               //    in Loop: Header=BB0_9 Depth=4
	add x10, x10, 8
	or x25, x25, x11
	lw x24, 0 ( x10 )
	add x11, x24, -37
	bgeu x12, x11, .LBB0_9
	jal x0, .LBB0_691
.LBB0_21:                               //  %sw.bb105
                                        //    in Loop: Header=BB0_7 Depth=2
	and x10, x25, 143
	beq x0, x10, .LBB0_22
.LBB0_781:                              //  %sw.bb105
	jal x0, .LBB0_691
.LBB0_22:                               //  %if.end109
                                        //    in Loop: Header=BB0_7 Depth=2
	add x10, x0, 10
	hackaton_custom_instr_c x10, x10, x26
	add x10, x24, x10
	add x26, x10, -48
	jal x0, .LBB0_7
.LBB0_23:                               //  %sw.bb58
                                        //    in Loop: Header=BB0_7 Depth=2
	and x10, x25, 15
	beq x0, x10, .LBB0_24
.LBB0_782:                              //  %sw.bb58
	jal x0, .LBB0_691
.LBB0_24:                               //  %if.end62
                                        //    in Loop: Header=BB0_7 Depth=2
	or x25, x25, 2
	jal x0, .LBB0_7
.LBB0_25:                               //  %sw.bb39
                                        //    in Loop: Header=BB0_7 Depth=2
	and x10, x25, 159
	or x10, x26, x10
	beq x0, x10, .LBB0_26
.LBB0_783:                              //  %sw.bb39
	jal x0, .LBB0_691
.LBB0_26:                               //  %if.end44
                                        //    in Loop: Header=BB0_7 Depth=2
	or x25, x25, 16
	mv x26, x0
	jal x0, .LBB0_7
.LBB0_27:                               //  %sw.bb93
                                        //    in Loop: Header=BB0_7 Depth=2
	and x10, x25, 143
	beq x0, x10, .LBB0_28
.LBB0_784:                              //  %sw.bb93
	jal x0, .LBB0_691
.LBB0_28:                               //  %do.body98
                                        //    in Loop: Header=BB0_7 Depth=2
	bltu x0, x20, .LBB0_30
.LBB0_29:                               //  %if.then100
                                        //    in Loop: Header=BB0_7 Depth=2
	mv x10, sp
	add x20, x10, -16
	mv sp, x20
	sw x0, -12 ( x10 )
	sw x0, -16 ( x10 )
.LBB0_30:                               //  %do.end103
                                        //    in Loop: Header=BB0_7 Depth=2
	or x25, x25, 128
	jal x0, .LBB0_7
.LBB0_31:                               //  %if.end13.if.end32_crit_edge.i
                                        //    in Loop: Header=BB0_35 Depth=2
	lw x10, 0 ( x18 )
.LBB0_32:                               //  %if.end32.i
                                        //    in Loop: Header=BB0_35 Depth=2
	sw x10, 56 ( x18 )
	lw x10, -1476 ( fp )            //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x25, 52 ( x18 )
	sw x9, 0 ( x18 )
	sw x10, 48 ( x18 )
	add x10, x0, 2
	sw x11, 60 ( x18 )
	sw x10, 4 ( x18 )
	sw x24, 63 ( x18 )
.LBB0_33:                               //  %if.end22
                                        //    in Loop: Header=BB0_35 Depth=2
	lw x24, 0 ( x27 )
	bltu x0, x24, .LBB0_34
.LBB0_785:                              //  %if.end22
	jal x0, .LBB0_691
.LBB0_34:                               //  %if.end9
                                        //    in Loop: Header=BB0_35 Depth=2
	mv x10, x24
	add x27, x27, 4
	jal iswspace
	beq x0, x10, .LBB0_5
.LBB0_35:                               //  %while.cond
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_38
.LBB0_36:                               //  %land.lhs.true.i
                                        //    in Loop: Header=BB0_35 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_33
.LBB0_37:                               //  %land.lhs.true.if.end_crit_edge.i
                                        //    in Loop: Header=BB0_35 Depth=2
	lw x10, 0 ( x22 )
.LBB0_38:                               //  %_sfgetwc_r.exit
                                        //    in Loop: Header=BB0_35 Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x24, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x24, -1
	beq x0, x10, .LBB0_33
.LBB0_39:                               //  %land.rhs
                                        //    in Loop: Header=BB0_35 Depth=2
	mv x10, x24
	jal iswspace
	bltu x0, x10, .LBB0_35
.LBB0_40:                               //  %if.end.i2559
                                        //    in Loop: Header=BB0_35 Depth=2
	lhu x10, 12 ( x18 )
	and x10, x26, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_45
.LBB0_41:                               //  %if.then4.i
                                        //    in Loop: Header=BB0_35 Depth=2
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_43
.LBB0_42:                               //  %land.lhs.true.i2563
                                        //    in Loop: Header=BB0_35 Depth=2
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_33
.LBB0_43:                               //  %if.end9.i
                                        //    in Loop: Header=BB0_35 Depth=2
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x24, -4 ( x10 )
.LBB0_44:                               //  %if.end22
                                        //    in Loop: Header=BB0_35 Depth=2
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	lw x24, 0 ( x27 )
	bltu x0, x24, .LBB0_34
	jal x0, .LBB0_691
.LBB0_45:                               //  %if.end13.i
                                        //    in Loop: Header=BB0_35 Depth=2
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_31
.LBB0_46:                               //  %land.lhs.true17.i
                                        //    in Loop: Header=BB0_35 Depth=2
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_32
.LBB0_47:                               //  %land.lhs.true23.i
                                        //    in Loop: Header=BB0_35 Depth=2
	lw x11, -4 ( x10 )
	bne x11, x24, .LBB0_32
.LBB0_48:                               //  %if.then27.i
                                        //    in Loop: Header=BB0_35 Depth=2
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_44
.LBB0_49:                               //  %sw.epilog.loopexit6487
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x23, -1572 ( fp )            //  4-byte Folded Spill
	add x23, x0, 4
	and x10, x25, 64
	bltu x0, x10, .LBB0_102
.LBB0_50:                               //  %while.cond186
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_53
.LBB0_51:                               //  %land.lhs.true.i2625
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_52
.LBB0_786:                              //  %land.lhs.true.i2625
	jal x0, .LBB0_687
.LBB0_52:                               //  %land.lhs.true.if.end_crit_edge.i2627
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
.LBB0_53:                               //  %_sfgetwc_r.exit2633
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x24, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x24, -1
	bltu x0, x10, .LBB0_54
.LBB0_787:                              //  %_sfgetwc_r.exit2633
	jal x0, .LBB0_687
.LBB0_54:                               //  %land.rhs190
                                        //    in Loop: Header=BB0_53 Depth=2
	mv x10, x24
	jal iswspace
	beq x0, x10, .LBB0_56
.LBB0_55:                               //  %while.body194
                                        //    in Loop: Header=BB0_53 Depth=2
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	add x10, x10, 1
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_53
	jal x0, .LBB0_51
.LBB0_56:                               //  %if.end.i2638
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	lw x11, -1480 ( fp )            //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_62
.LBB0_57:                               //  %if.then4.i2642
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_59
.LBB0_58:                               //  %land.lhs.true.i2645
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_102
.LBB0_59:                               //  %if.end9.i2650
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x24, -4 ( x10 )
.LBB0_60:                               //  %if.end202
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	add x10, x0, 4
	bgeu x10, x23, .LBB0_103
.LBB0_118:                              //    in Loop: Header=BB0_4 Depth=1
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	lw x24, 0 ( x27 )
	bltu x0, x24, .LBB0_4
	jal x0, .LBB0_691
.LBB0_61:                               //  %sw.bb114
                                        //    in Loop: Header=BB0_4 Depth=1
	or x25, x25, 512
	sw x23, -1572 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB0_88
.LBB0_62:                               //  %if.end13.i2653
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_93
.LBB0_63:                               //  %land.lhs.true17.i2659
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_94
.LBB0_64:                               //  %land.lhs.true23.i2662
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x24, .LBB0_94
.LBB0_65:                               //  %if.then27.i2665
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_60
.LBB0_66:                               //  %literal.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x26, -1480 ( fp )            //  4-byte Folded Reload
.LBB0_67:                               //  %literal
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 0 ( x22 )
	blt x0, x11, .LBB0_70
.LBB0_68:                               //  %land.lhs.true.i2571
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_69
.LBB0_788:                              //  %land.lhs.true.i2571
	jal x0, .LBB0_688
.LBB0_69:                               //  %land.lhs.true.if.end_crit_edge.i2573
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 0 ( x22 )
.LBB0_70:                               //  %_sfgetwc_r.exit2579
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x12, 0 ( x18 )
	mv x25, x23
	add x13, x11, -4
	add x10, x12, 4
	sw x10, 0 ( x18 )
	lw x23, 0 ( x12 )
	sw x13, 4 ( x18 )
	xor x14, x23, -1
	bltu x0, x14, .LBB0_71
.LBB0_789:                              //  %_sfgetwc_r.exit2579
	jal x0, .LBB0_700
.LBB0_71:                               //  %if.end33
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x23, x24, .LBB0_72
.LBB0_790:                              //  %if.end33
	jal x0, .LBB0_701
.LBB0_72:                               //  %if.end38
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	lw x24, 0 ( x27 )
	mv x23, x25
	add x10, x10, 1
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	bltu x0, x24, .LBB0_4
	jal x0, .LBB0_691
.LBB0_73:                               //  %sw.bb144
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x23, -1572 ( fp )            //  4-byte Folded Spill
	or x25, x25, 1
	or x25, x25, 64
	mv x23, x0
	and x10, x25, 64
	beq x0, x10, .LBB0_50
	jal x0, .LBB0_102
.LBB0_74:                               //  %sw.bb117
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x23, -1572 ( fp )            //  4-byte Folded Spill
	or x25, x25, 1
	add x23, x0, 2
	and x10, x25, 64
	beq x0, x10, .LBB0_50
	jal x0, .LBB0_102
.LBB0_75:                               //  %sw.bb120
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 4 ( x10 )
	add x12, x0, 94
	beq x11, x12, .LBB0_95
.LBB0_76:                               //  %sw.bb120
                                        //    in Loop: Header=BB0_4 Depth=1
	add x12, x0, 4
	sw x27, -1496 ( fp )            //  4-byte Folded Spill
	add x10, x12, x10
	lw x10, 0 ( x10 )
	add x12, x0, 93
	beq x10, x12, .LBB0_97
.LBB0_96:                               //  %sw.bb120
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x27, -1496 ( fp )            //  4-byte Folded Reload
	jal x0, .LBB0_98
.LBB0_77:                               //  %sw.bb146.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x23, -1572 ( fp )            //  4-byte Folded Spill
	or x25, x25, 64
	mv x23, x0
	and x10, x25, 64
	beq x0, x10, .LBB0_50
	jal x0, .LBB0_102
.LBB0_78:                               //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1540 ( fp )            //  4-byte Folded Reload
	jal x0, .LBB0_91
.LBB0_79:                               //  %sw.epilog.loopexit4477
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1540 ( fp )            //  4-byte Folded Reload
	sw x23, -1572 ( fp )            //  4-byte Folded Spill
	sw x10, -1512 ( fp )            //  4-byte Folded Spill
	mv x10, x0
	sw x10, -1492 ( fp )            //  4-byte Folded Spill
	add x23, x0, 3
	and x10, x25, 64
	beq x0, x10, .LBB0_50
	jal x0, .LBB0_102
.LBB0_80:                               //  %sw.bb150
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 16
	beq x0, x10, .LBB0_81
.LBB0_791:                              //  %sw.bb150
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_684
.LBB0_81:                               //  %if.end154
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 8
	bltu x0, x10, .LBB0_309
.LBB0_82:                               //  %if.else159
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 4
	beq x0, x10, .LBB0_83
.LBB0_792:                              //  %if.else159
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_422
.LBB0_83:                               //  %if.else165
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 1
	bltu x0, x10, .LBB0_85
.LBB0_84:                               //  %if.else170
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 2
	beq x0, x10, .LBB0_85
.LBB0_793:                              //  %if.else170
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_668
.LBB0_85:                               //  %if.then168
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	lw x11, -1472 ( fp )            //  4-byte Folded Reload
	sw x11, 0 ( x10 )
	lw x24, 0 ( x27 )
	bltu x0, x24, .LBB0_4
	jal x0, .LBB0_691
.LBB0_86:                               //  %sw.epilog.loopexit5237
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1524 ( fp )            //  4-byte Folded Reload
	sw x23, -1572 ( fp )            //  4-byte Folded Spill
	sw x10, -1512 ( fp )            //  4-byte Folded Spill
	add x10, x0, 8
	sw x10, -1492 ( fp )            //  4-byte Folded Spill
	add x23, x0, 3
	and x10, x25, 64
	beq x0, x10, .LBB0_50
	jal x0, .LBB0_102
.LBB0_87:                               //  %sw.bb148
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x23, -1572 ( fp )            //  4-byte Folded Spill
	or x25, x25, 544
.LBB0_88:                               //  %sw.epilog
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1524 ( fp )            //  4-byte Folded Reload
	sw x10, -1512 ( fp )            //  4-byte Folded Spill
	add x10, x0, 16
	sw x10, -1492 ( fp )            //  4-byte Folded Spill
	add x23, x0, 3
	and x10, x25, 64
	beq x0, x10, .LBB0_50
	jal x0, .LBB0_102
.LBB0_89:                               //  %sw.epilog.loopexit4
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x23, -1572 ( fp )            //  4-byte Folded Spill
	add x23, x0, 2
	and x10, x25, 64
	beq x0, x10, .LBB0_50
	jal x0, .LBB0_102
.LBB0_90:                               //  %sw.epilog.loopexit5870
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1524 ( fp )            //  4-byte Folded Reload
.LBB0_91:                               //  %sw.epilog
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x23, -1572 ( fp )            //  4-byte Folded Spill
	sw x10, -1512 ( fp )            //  4-byte Folded Spill
	add x10, x0, 10
	sw x10, -1492 ( fp )            //  4-byte Folded Spill
	add x23, x0, 3
	and x10, x25, 64
	beq x0, x10, .LBB0_50
	jal x0, .LBB0_102
.LBB0_93:                               //  %if.end13.if.end32_crit_edge.i2656
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
.LBB0_94:                               //  %if.end32.i2673
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -1476 ( fp )            //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x9, 0 ( x18 )
	sw x10, 48 ( x18 )
	add x10, x0, 2
	sw x11, 60 ( x18 )
	sw x10, 4 ( x18 )
	sw x24, 63 ( x18 )
	add x10, x0, 4
	bgeu x10, x23, .LBB0_103
	jal x0, .LBB0_118
.LBB0_95:                               //    in Loop: Header=BB0_4 Depth=1
	add x12, x10, 8
	sw x12, -1496 ( fp )            //  4-byte Folded Spill
	add x12, x0, 8
	add x10, x12, x10
	lw x10, 0 ( x10 )
	add x12, x0, 93
	bne x10, x12, .LBB0_96
.LBB0_97:                               //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1496 ( fp )            //  4-byte Folded Reload
	add x27, x10, 4
.LBB0_98:                               //  %sw.bb120
                                        //    in Loop: Header=BB0_4 Depth=1
	xor x10, x11, 94
	seqz x10, x10
	sw x23, -1572 ( fp )            //  4-byte Folded Spill
	sw x10, -1532 ( fp )            //  4-byte Folded Spill
.LBB0_99:                               //  %while.cond132
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 0 ( x27 )
	add x27, x27, 4
	xor x11, x10, 93
	beq x0, x11, .LBB0_101
.LBB0_100:                              //  %while.cond132
                                        //    in Loop: Header=BB0_99 Depth=2
	bltu x0, x10, .LBB0_99
.LBB0_101:                              //  %while.end141
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x27, -4
	sw x10, -1536 ( fp )            //  4-byte Folded Spill
	or x25, x25, 64
	seqz x23, x0
	and x10, x25, 64
	beq x0, x10, .LBB0_50
.LBB0_102:                              //  %if.end202
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 4
	bltu x10, x23, .LBB0_118
.LBB0_103:                              //  %if.end202
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -1508 ( fp )            //  4-byte Folded Reload
	sll x10, x23, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB0_104:                              //  %sw.bb203
                                        //    in Loop: Header=BB0_4 Depth=1
	seqz x10, x0
	sw x10, -1576 ( fp )            //  4-byte Folded Spill
	mv x10, x0
	beq x26, x10, .LBB0_106
.LBB0_105:                              //  %sw.bb203
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x26, -1576 ( fp )            //  4-byte Folded Spill
.LBB0_106:                              //  %sw.bb203
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	and x11, x25, 16
	and x10, x25, 1
	sw x11, -1592 ( fp )            //  4-byte Folded Spill
	bltu x0, x10, .LBB0_184
.LBB0_107:                              //  %if.else336
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x26, -1576 ( fp )            //  4-byte Folded Reload
	beq x0, x11, .LBB0_265
.LBB0_108:                              //  %land.rhs408.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x24, x0
	add x10, fp, -64
	mv x11, x24
	add x12, x0, 8
	jal memset
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_115
	jal x0, .LBB0_113
.LBB0_109:                              //  %while.body413.us
                                        //    in Loop: Header=BB0_115 Depth=2
	xor x10, x10, -1
	bltu x0, x10, .LBB0_110
.LBB0_794:                              //  %while.body413.us
	jal x0, .LBB0_688
.LBB0_110:                              //  %if.then424.us
                                        //    in Loop: Header=BB0_115 Depth=2
	add x26, x26, -1
.LBB0_111:                              //  %if.end460.us
                                        //    in Loop: Header=BB0_115 Depth=2
	add x24, x24, 1
	beq x0, x26, .LBB0_322
.LBB0_112:                              //  %land.rhs408.us
                                        //    in Loop: Header=BB0_115 Depth=2
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_115
.LBB0_113:                              //  %land.lhs.true.i2692.us
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_310
.LBB0_114:                              //  %land.lhs.true.if.end_crit_edge.i2694.us
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
.LBB0_115:                              //  %_sfgetwc_r.exit2700.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x12, -1
	beq x0, x10, .LBB0_310
.LBB0_116:                              //  %while.body413.us
                                        //    in Loop: Header=BB0_115 Depth=2
	mv x10, x19
	add x11, fp, -1465
	add x13, fp, -64
	jal _wcrtomb_r
	bltu x0, x10, .LBB0_109
.LBB0_117:                              //  %lor.lhs.false421.us
                                        //    in Loop: Header=BB0_115 Depth=2
	lw x10, -64 ( fp )
	xor x10, x10, -4
	bltu x0, x10, .LBB0_110
	jal x0, .LBB0_111
.LBB0_119:                              //  %sw.bb495
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, -1
	mv x23, x0
	sw x10, -1576 ( fp )            //  4-byte Folded Spill
	beq x26, x23, .LBB0_121
.LBB0_120:                              //  %sw.bb495
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x26, -1576 ( fp )            //  4-byte Folded Spill
.LBB0_121:                              //  %sw.bb495
                                        //    in Loop: Header=BB0_4 Depth=1
	and x26, x25, 16
	and x10, x25, 1
	beq x0, x10, .LBB0_192
.LBB0_122:                              //  %sw.bb495
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x26, .LBB0_192
.LBB0_123:                              //  %while.cond506.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1496 ( fp )            //  4-byte Folded Reload
	lw x11, -1536 ( fp )            //  4-byte Folded Reload
	lw x26, -1480 ( fp )            //  4-byte Folded Reload
	sub x10, x11, x10
	sra x25, x10, 2&31
	lw x10, -1532 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB0_132
.LBB0_124:                              //  %while.cond506
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_127
.LBB0_125:                              //  %land.lhs.true.i2705
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_126
.LBB0_795:                              //  %land.lhs.true.i2705
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_434
.LBB0_126:                              //  %land.lhs.true.if.end_crit_edge.i2707
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
.LBB0_127:                              //  %_sfgetwc_r.exit2713
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x24, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x24, -1
	bltu x0, x10, .LBB0_128
.LBB0_796:                              //  %_sfgetwc_r.exit2713
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_434
.LBB0_128:                              //  %land.lhs.true510
                                        //    in Loop: Header=BB0_127 Depth=2
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	beq x10, x23, .LBB0_138
.LBB0_129:                              //  %land.rhs514
                                        //    in Loop: Header=BB0_127 Depth=2
	lw x10, -1496 ( fp )            //  4-byte Folded Reload
	mv x11, x24
	mv x12, x25
	jal wmemchr
	bltu x0, x10, .LBB0_138
.LBB0_130:                              //  %while.body532
                                        //    in Loop: Header=BB0_127 Depth=2
	add x23, x23, 1
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_127
	jal x0, .LBB0_125
.LBB0_131:                              //  %while.body532.us
                                        //    in Loop: Header=BB0_132 Depth=2
	add x23, x23, 1
.LBB0_132:                              //  %while.cond506.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_135
.LBB0_133:                              //  %land.lhs.true.i2705.us
                                        //    in Loop: Header=BB0_132 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_134
.LBB0_797:                              //  %land.lhs.true.i2705.us
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_434
.LBB0_134:                              //  %land.lhs.true.if.end_crit_edge.i2707.us
                                        //    in Loop: Header=BB0_132 Depth=2
	lw x10, 0 ( x22 )
.LBB0_135:                              //  %_sfgetwc_r.exit2713.us
                                        //    in Loop: Header=BB0_132 Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x24, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x24, -1
	bltu x0, x10, .LBB0_136
.LBB0_798:                              //  %_sfgetwc_r.exit2713.us
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_434
.LBB0_136:                              //  %land.lhs.true510.us
                                        //    in Loop: Header=BB0_132 Depth=2
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	beq x10, x23, .LBB0_138
.LBB0_137:                              //  %land.rhs514.us
                                        //    in Loop: Header=BB0_132 Depth=2
	lw x10, -1496 ( fp )            //  4-byte Folded Reload
	mv x11, x24
	mv x12, x25
	jal wmemchr
	bltu x0, x10, .LBB0_131
.LBB0_138:                              //  %if.end.i2718
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	add x12, x0, 3
	and x10, x26, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_301
.LBB0_139:                              //  %if.then4.i2722
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_141
.LBB0_140:                              //  %land.lhs.true.i2725
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	beq x0, x10, .LBB0_141
.LBB0_799:                              //  %land.lhs.true.i2725
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_434
.LBB0_141:                              //  %if.end9.i2730
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x24, -4 ( x10 )
.LBB0_142:                              //  %if.end539
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	beq x0, x23, .LBB0_800
.LBB0_801:                              //  %if.end539
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_666
.LBB0_800:                              //  %if.end539
	jal x0, .LBB0_726
.LBB0_143:                              //  %sw.bb890
                                        //    in Loop: Header=BB0_4 Depth=1
	add x23, x0, -1
	mv x10, x0
	beq x26, x10, .LBB0_145
.LBB0_144:                              //  %sw.bb890
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x23, x26
.LBB0_145:                              //  %sw.bb890
                                        //    in Loop: Header=BB0_4 Depth=1
	and x26, x25, 16
	and x10, x25, 1
	beq x0, x10, .LBB0_195
.LBB0_146:                              //  %sw.bb890
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x26, .LBB0_195
.LBB0_147:                              //  %while.cond901.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x25, -1480 ( fp )            //  4-byte Folded Reload
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_150
.LBB0_148:                              //  %land.lhs.true.i2867
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_149
.LBB0_802:                              //  %land.lhs.true.i2867
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_421
.LBB0_149:                              //  %land.lhs.true.if.end_crit_edge.i2869
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
.LBB0_150:                              //  %_sfgetwc_r.exit2875
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x24, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x24, -1
	beq x0, x10, .LBB0_279
.LBB0_151:                              //  %land.lhs.true905
                                        //    in Loop: Header=BB0_150 Depth=2
	beq x0, x23, .LBB0_260
.LBB0_152:                              //  %land.rhs909
                                        //    in Loop: Header=BB0_150 Depth=2
	mv x10, x24
	jal iswspace
	bltu x0, x10, .LBB0_260
.LBB0_153:                              //  %while.body913
                                        //    in Loop: Header=BB0_150 Depth=2
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	add x23, x23, -1
	add x10, x10, 1
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_150
	jal x0, .LBB0_148
.LBB0_154:                              //  %sw.bb1229
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x26, -1
	add x23, x0, 349
	add x11, x0, 348
	bltu x11, x10, .LBB0_156
.LBB0_155:                              //  %sw.bb1229
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x23, x26
.LBB0_156:                              //  %sw.bb1229
                                        //    in Loop: Header=BB0_4 Depth=1
	or x26, x25, 1408
	sw x9, -1584 ( fp )             //  4-byte Folded Spill
	beq x0, x23, .LBB0_208
.LBB0_157:                              //  %for.body.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	add x9, fp, -1464
	mv x24, x0
	blt x0, x10, .LBB0_163
	jal x0, .LBB0_161
.LBB0_158:                              //  %sw.bb1255
                                        //    in Loop: Header=BB0_163 Depth=2
	lw x11, -1492 ( fp )            //  4-byte Folded Reload
	lw x12, -1520 ( fp )            //  4-byte Folded Reload
	and x26, x26, -897
	sll x11, x11, 1&31
	add x11, x11, x12
	lh x11, 0 ( x11 )
.LBB0_159:                              //  %ok
                                        //    in Loop: Header=BB0_163 Depth=2
	sw x11, -1492 ( fp )            //  4-byte Folded Spill
	sw x25, 0 ( x9 )
	add x9, x9, 4
	add x24, x24, 1
	beq x23, x24, .LBB0_178
.LBB0_160:                              //  %for.body
                                        //    in Loop: Header=BB0_163 Depth=2
	blt x0, x10, .LBB0_163
.LBB0_161:                              //  %land.lhs.true.i3029
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_162
.LBB0_803:                              //  %land.lhs.true.i3029
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_630
.LBB0_162:                              //  %land.lhs.true.if.end_crit_edge.i3031
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
.LBB0_163:                              //  %_sfgetwc_r.exit3037
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x13, 0 ( x18 )
	mv x12, x10
	add x10, x12, -4
	add x15, x0, 121
	add x11, x13, 4
	sw x11, 0 ( x18 )
	lw x25, 0 ( x13 )
	sw x10, 4 ( x18 )
	add x14, x25, 1
	bgeu x15, x14, .LBB0_164
.LBB0_804:                              //  %_sfgetwc_r.exit3037
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_620
.LBB0_164:                              //  %_sfgetwc_r.exit3037
                                        //    in Loop: Header=BB0_163 Depth=2
	lw x15, -1504 ( fp )            //  4-byte Folded Reload
	sll x14, x14, 2&31
	add x14, x15, x14
	lw x14, 0 ( x14 )
	jr x14
.LBB0_165:                              //  %sw.bb1267
                                        //    in Loop: Header=BB0_163 Depth=2
	lw x14, -1492 ( fp )            //  4-byte Folded Reload
	slti x14, x14, 11
	beq x0, x14, .LBB0_166
.LBB0_805:                              //  %sw.bb1267
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_620
.LBB0_166:                              //  %if.else1252
                                        //    in Loop: Header=BB0_163 Depth=2
	and x26, x26, -897
	sw x25, 0 ( x9 )
	add x9, x9, 4
	add x24, x24, 1
	bne x23, x24, .LBB0_160
	jal x0, .LBB0_178
.LBB0_167:                              //  %sw.bb1273
                                        //    in Loop: Header=BB0_163 Depth=2
	and x14, x26, 128
	bltu x0, x14, .LBB0_168
.LBB0_806:                              //  %sw.bb1273
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_620
.LBB0_168:                              //  %if.then1276
                                        //    in Loop: Header=BB0_163 Depth=2
	lw x11, -1548 ( fp )            //  4-byte Folded Reload
	lui x12, (65536>>12)&1048575
	and x11, x11, x26
	or x26, x12, x11
	sw x25, 0 ( x9 )
	add x9, x9, 4
	add x24, x24, 1
	bne x23, x24, .LBB0_160
	jal x0, .LBB0_178
.LBB0_169:                              //  %sw.bb1259
                                        //    in Loop: Header=BB0_163 Depth=2
	lw x17, -1492 ( fp )            //  4-byte Folded Reload
	lw x15, -1520 ( fp )            //  4-byte Folded Reload
	sll x14, x17, 1&31
	add x14, x14, x15
	lh x14, 0 ( x14 )
	add x15, x17, -1
	sltiu x15, x15, 8
	beq x0, x15, .LBB0_170
.LBB0_807:                              //  %sw.bb1259
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_619
.LBB0_170:                              //  %if.end1265
                                        //    in Loop: Header=BB0_163 Depth=2
	and x26, x26, -897
	sw x14, -1492 ( fp )            //  4-byte Folded Spill
	sw x25, 0 ( x9 )
	add x9, x9, 4
	add x24, x24, 1
	bne x23, x24, .LBB0_160
	jal x0, .LBB0_178
.LBB0_171:                              //  %sw.bb1280
                                        //    in Loop: Header=BB0_163 Depth=2
	and x14, x26, 512
	bltu x0, x14, .LBB0_172
.LBB0_808:                              //  %sw.bb1280
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_620
.LBB0_172:                              //  %land.lhs.true1283
                                        //    in Loop: Header=BB0_163 Depth=2
	lw x15, -1544 ( fp )            //  4-byte Folded Reload
	srl x14, x26, 14&31
	and x14, x14, 4
	add x14, x14, x15
	beq x9, x14, .LBB0_173
.LBB0_809:                              //  %land.lhs.true1283
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_620
.LBB0_173:                              //  %if.then1293
                                        //    in Loop: Header=BB0_163 Depth=2
	and x26, x26, -513
	add x11, x0, 16
	jal x0, .LBB0_159
.LBB0_174:                              //  %sw.bb1242
                                        //    in Loop: Header=BB0_163 Depth=2
	lw x12, -1492 ( fp )            //  4-byte Folded Reload
	mv x11, x0
	bne x12, x11, .LBB0_176
.LBB0_175:                              //    in Loop: Header=BB0_163 Depth=2
	or x26, x26, 512
	add x11, x0, 8
	sw x11, -1492 ( fp )            //  4-byte Folded Spill
.LBB0_176:                              //  %sw.bb1242
                                        //    in Loop: Header=BB0_163 Depth=2
	and x11, x26, 1024
	beq x0, x11, .LBB0_166
.LBB0_177:                              //  %if.then1250
                                        //    in Loop: Header=BB0_163 Depth=2
	and x26, x26, -1409
	sw x25, 0 ( x9 )
	add x9, x9, 4
	add x24, x24, 1
	bne x23, x24, .LBB0_160
.LBB0_178:                              //    in Loop: Header=BB0_4 Depth=1
	seqz x24, x0
	and x10, x26, 256
	bltu x0, x10, .LBB0_810
.LBB0_811:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_631
.LBB0_810:
	jal x0, .LBB0_720
.LBB0_179:                              //  %sw.bb1381
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x26, -1
	add x23, x0, 349
	add x11, x0, 348
	bltu x11, x10, .LBB0_181
.LBB0_180:                              //  %sw.bb1381
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x23, x26
.LBB0_181:                              //  %sw.bb1381
                                        //    in Loop: Header=BB0_4 Depth=1
	or x13, x25, 1920
	beq x0, x23, .LBB0_209
.LBB0_182:                              //  %for.body1392.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x0, 348
	bltu x11, x10, .LBB0_210
.LBB0_183:                              //  %for.body1392.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x0
	sw x10, -1588 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB0_211
.LBB0_184:                              //  %if.then210
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x26, -1576 ( fp )            //  4-byte Folded Reload
	beq x0, x11, .LBB0_267
.LBB0_185:                              //  %land.rhs275.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	mv x25, x0
.LBB0_186:                              //  %land.rhs275.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	blt x0, x10, .LBB0_189
.LBB0_187:                              //  %land.lhs.true.i2679.us
                                        //    in Loop: Header=BB0_186 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_280
.LBB0_188:                              //  %land.lhs.true.if.end_crit_edge.i2681.us
                                        //    in Loop: Header=BB0_186 Depth=2
	lw x10, 0 ( x22 )
.LBB0_189:                              //  %_sfgetwc_r.exit2687.us
                                        //    in Loop: Header=BB0_186 Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x11, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x11, x11, -1
	beq x0, x11, .LBB0_280
.LBB0_190:                              //  %if.end302.us
                                        //    in Loop: Header=BB0_186 Depth=2
	add x25, x25, 1
	bne x26, x25, .LBB0_186
.LBB0_191:                              //    in Loop: Header=BB0_4 Depth=1
	mv x10, x0
	mv x14, x10
	mv x13, x10
	sw x10, -1584 ( fp )            //  4-byte Folded Spill
	lw x10, -1584 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB0_812
.LBB0_813:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_482
.LBB0_812:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_485
.LBB0_192:                              //  %if.else544
                                        //    in Loop: Header=BB0_4 Depth=1
	bltu x0, x10, .LBB0_269
.LBB0_193:                              //  %if.else702
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x26, -1584 ( fp )            //  4-byte Folded Spill
	beq x0, x26, .LBB0_281
.LBB0_194:                              //    in Loop: Header=BB0_4 Depth=1
	sw x23, -1588 ( fp )            //  4-byte Folded Spill
	sw x23, -1592 ( fp )            //  4-byte Folded Spill
	sw x23, -1596 ( fp )            //  4-byte Folded Spill
	add x26, fp, -1465
	jal x0, .LBB0_491
.LBB0_195:                              //  %if.else921
                                        //    in Loop: Header=BB0_4 Depth=1
	bltu x0, x10, .LBB0_271
.LBB0_196:                              //  %if.else1059
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x26, .LBB0_283
.LBB0_197:                              //  %while.cond1132.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, fp, -64
	mv x11, x0
	add x12, x0, 8
	jal memset
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_203
.LBB0_201:                              //  %land.lhs.true.i2975.us
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_202
.LBB0_814:                              //  %land.lhs.true.i2975.us
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_667
.LBB0_202:                              //  %land.lhs.true.if.end_crit_edge.i2977.us
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	jal x0, .LBB0_203
.LBB0_198:                              //  %while.body1144.us
                                        //    in Loop: Header=BB0_203 Depth=2
	xor x10, x10, -1
	bltu x0, x10, .LBB0_199
.LBB0_815:                              //  %while.body1144.us
	jal x0, .LBB0_687
.LBB0_199:                              //  %if.then1156.us
                                        //    in Loop: Header=BB0_203 Depth=2
	add x23, x23, -1
.LBB0_200:                              //  %if.end1192.us
                                        //    in Loop: Header=BB0_203 Depth=2
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	add x10, x10, 1
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	lw x10, 0 ( x22 )
	bge x0, x10, .LBB0_201
.LBB0_203:                              //  %_sfgetwc_r.exit2983.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x24, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x11, x24, -1
	snez x10, x11
	bltu x0, x23, .LBB0_204
.LBB0_879:                              //  %_sfgetwc_r.exit2983.us
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_437
.LBB0_204:                              //  %_sfgetwc_r.exit2983.us
                                        //    in Loop: Header=BB0_203 Depth=2
	bltu x0, x11, .LBB0_205
.LBB0_880:                              //  %_sfgetwc_r.exit2983.us
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_437
.LBB0_205:                              //  %land.rhs1139.us
                                        //    in Loop: Header=BB0_203 Depth=2
	mv x10, x24
	jal iswspace
	beq x0, x10, .LBB0_206
.LBB0_816:                              //  %land.rhs1139.us
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_479
.LBB0_206:                              //  %while.body1144.us
                                        //    in Loop: Header=BB0_203 Depth=2
	add x10, fp, -1465
	mv x11, x24
	add x12, fp, -64
	jal wcrtomb
	bltu x0, x10, .LBB0_198
.LBB0_207:                              //  %lor.lhs.false1152.us
                                        //    in Loop: Header=BB0_203 Depth=2
	lw x10, -64 ( fp )
	xor x10, x10, -4
	bltu x0, x10, .LBB0_199
	jal x0, .LBB0_200
.LBB0_208:                              //    in Loop: Header=BB0_4 Depth=1
	mv x24, x0
	add x9, fp, -1464
	and x10, x26, 256
	bltu x0, x10, .LBB0_817
.LBB0_818:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_631
.LBB0_817:
	jal x0, .LBB0_720
.LBB0_209:                              //    in Loop: Header=BB0_4 Depth=1
	mv x10, x0
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	sw x10, -1584 ( fp )            //  4-byte Folded Spill
	add x26, fp, -1464
	mv x14, x10
	sw x10, -1488 ( fp )            //  4-byte Folded Spill
	sw x10, -1596 ( fp )            //  4-byte Folded Spill
	sw x10, -1592 ( fp )            //  4-byte Folded Spill
	mv x24, x10
	jal x0, .LBB0_443
.LBB0_210:                              //    in Loop: Header=BB0_4 Depth=1
	add x10, x26, -349
	sw x10, -1588 ( fp )            //  4-byte Folded Spill
	mv x10, x0
.LBB0_211:                              //  %for.body1392.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x24, x10
	add x26, fp, -1464
	mv x14, x10
	sw x10, -1584 ( fp )            //  4-byte Folded Spill
	sw x10, -1592 ( fp )            //  4-byte Folded Spill
	sw x10, -1488 ( fp )            //  4-byte Folded Spill
	sw x10, -1596 ( fp )            //  4-byte Folded Spill
	sw x10, -1576 ( fp )            //  4-byte Folded Spill
	sw x20, -1580 ( fp )            //  4-byte Folded Spill
.LBB0_212:                              //  %for.body1392
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 0 ( x22 )
	bge x0, x10, .LBB0_217
.LBB0_213:                              //  %_sfgetwc_r.exit3173
                                        //    in Loop: Header=BB0_212 Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x25, 0 ( x11 )
	sw x10, 4 ( x18 )
	add x11, x0, 78
	add x10, x25, -43
	bltu x11, x10, .LBB0_218
.LBB0_214:                              //  %_sfgetwc_r.exit3173
                                        //    in Loop: Header=BB0_212 Depth=2
	lw x11, -1500 ( fp )            //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB0_215:                              //  %sw.bb1406
                                        //    in Loop: Header=BB0_212 Depth=2
	lw x11, -1488 ( fp )            //  4-byte Folded Reload
	sll x10, x14, 24&31
	sra x10, x10, 24&31
	sub x10, x0, x10
	sll x11, x11, 24&31
	sra x11, x11, 24&31
	bne x11, x10, .LBB0_312
.LBB0_216:                              //  %if.then1412
                                        //    in Loop: Header=BB0_212 Depth=2
	and x13, x13, -385
	jal x0, .LBB0_221
.LBB0_217:                              //  %land.lhs.true.i3165
                                        //    in Loop: Header=BB0_212 Depth=2
	mv x10, x19
	mv x11, x18
	mv x20, x24
	mv x24, x26
	mv x25, x13
	mv x26, x9
	mv x21, x14
	jal __ssrefill_r
	mv x26, x24
	mv x24, x20
	lw x20, -1580 ( fp )            //  4-byte Folded Reload
	mv x13, x25
	mv x14, x21
	add x25, x0, -1
	beq x0, x10, .LBB0_223
.LBB0_218:                              //  %sw.default1517
                                        //    in Loop: Header=BB0_212 Depth=2
	lw x11, -1516 ( fp )            //  4-byte Folded Reload
	and x10, x13, 512
	beq x0, x10, .LBB0_311
.LBB0_219:                              //  %sw.default1517
                                        //    in Loop: Header=BB0_212 Depth=2
	bne x25, x11, .LBB0_311
.LBB0_220:                              //  %if.then1523
                                        //    in Loop: Header=BB0_212 Depth=2
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	and x13, x13, -641
	mv x25, x11
	sw x10, -1584 ( fp )            //  4-byte Folded Spill
.LBB0_221:                              //  %fok
                                        //    in Loop: Header=BB0_212 Depth=2
	add x24, x24, 1
	sw x25, 0 ( x26 )
.LBB0_222:                              //  %fskip
                                        //    in Loop: Header=BB0_212 Depth=2
	sll x10, x24, 2&31
	add x11, fp, -1464
	add x26, x10, x11
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	add x23, x23, -1
	add x10, x10, 1
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	bltu x0, x23, .LBB0_212
	jal x0, .LBB0_440
.LBB0_223:                              //  %land.lhs.true.if.end_crit_edge.i3167
                                        //    in Loop: Header=BB0_212 Depth=2
	lw x10, 0 ( x22 )
	jal x0, .LBB0_213
.LBB0_224:                              //  %sw.bb1415
                                        //    in Loop: Header=BB0_212 Depth=2
	and x10, x13, 128
	beq x0, x10, .LBB0_312
.LBB0_225:                              //  %if.then1418
                                        //    in Loop: Header=BB0_212 Depth=2
	and x13, x13, -129
	jal x0, .LBB0_221
.LBB0_226:                              //  %sw.bb1450
                                        //    in Loop: Header=BB0_212 Depth=2
	lw x10, -1488 ( fp )            //  4-byte Folded Reload
	and x10, x10, 255
	xor x10, x10, 1
	bltu x0, x10, .LBB0_312
.LBB0_227:                              //    in Loop: Header=BB0_212 Depth=2
	add x10, x0, 2
	sw x10, -1488 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB0_221
.LBB0_228:                              //  %sw.bb1498
                                        //    in Loop: Header=BB0_212 Depth=2
	and x10, x13, 1280
	xor x10, x10, 1024
	beq x0, x10, .LBB0_231
.LBB0_229:                              //  %lor.lhs.false1502
                                        //    in Loop: Header=BB0_212 Depth=2
	and x10, x13, 1024
	beq x0, x10, .LBB0_312
.LBB0_230:                              //  %lor.lhs.false1502
                                        //    in Loop: Header=BB0_212 Depth=2
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB0_312
.LBB0_231:                              //  %if.then1507
                                        //    in Loop: Header=BB0_212 Depth=2
	and x10, x13, 512
	mv x11, x0
	bne x10, x11, .LBB0_233
.LBB0_232:                              //    in Loop: Header=BB0_212 Depth=2
	lw x10, -1584 ( fp )            //  4-byte Folded Reload
	lw x11, -1576 ( fp )            //  4-byte Folded Reload
	sw x26, -1596 ( fp )            //  4-byte Folded Spill
	sub x10, x11, x10
	sw x10, -1592 ( fp )            //  4-byte Folded Spill
.LBB0_233:                              //  %if.then1507
                                        //    in Loop: Header=BB0_212 Depth=2
	and x10, x13, -1921
	or x13, x10, 384
	mv x10, x0
	sw x10, -1576 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB0_221
.LBB0_234:                              //  %sw.bb1480
                                        //    in Loop: Header=BB0_212 Depth=2
	and x10, x14, 255
	xor x10, x10, 2
	bltu x0, x10, .LBB0_312
.LBB0_235:                              //    in Loop: Header=BB0_212 Depth=2
	add x10, x0, 3
	mv x14, x10
	jal x0, .LBB0_221
.LBB0_236:                              //  %sw.bb1421
                                        //    in Loop: Header=BB0_212 Depth=2
	and x10, x13, 1792
	xor x11, x10, 1792
	lw x10, -1488 ( fp )            //  4-byte Folded Reload
	and x10, x10, 255
	bltu x0, x11, .LBB0_251
.LBB0_237:                              //  %sw.bb1421
                                        //    in Loop: Header=BB0_212 Depth=2
	lw x11, -1576 ( fp )            //  4-byte Folded Reload
	bltu x0, x11, .LBB0_251
.LBB0_238:                              //  %sw.bb1421
                                        //    in Loop: Header=BB0_212 Depth=2
	bltu x0, x10, .LBB0_251
.LBB0_239:                              //  %if.then1432
                                        //    in Loop: Header=BB0_212 Depth=2
	mv x10, x0
	sw x10, -1576 ( fp )            //  4-byte Folded Spill
	seqz x10, x0
	and x13, x13, -1921
	sw x10, -1488 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB0_221
.LBB0_240:                              //  %sw.bb1486
                                        //    in Loop: Header=BB0_212 Depth=2
	and x10, x14, 255
	xor x10, x10, 6
	bltu x0, x10, .LBB0_312
.LBB0_241:                              //    in Loop: Header=BB0_212 Depth=2
	add x10, x0, 7
	mv x14, x10
	jal x0, .LBB0_221
.LBB0_242:                              //  %sw.bb1492
                                        //    in Loop: Header=BB0_212 Depth=2
	and x10, x14, 255
	xor x10, x10, 7
	bltu x0, x10, .LBB0_312
.LBB0_243:                              //    in Loop: Header=BB0_212 Depth=2
	add x10, x0, 8
	mv x14, x10
	jal x0, .LBB0_221
.LBB0_244:                              //  %sw.bb1394
                                        //    in Loop: Header=BB0_212 Depth=2
	and x10, x13, 256
	beq x0, x10, .LBB0_215
.LBB0_245:                              //  %if.then1397
                                        //    in Loop: Header=BB0_212 Depth=2
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	and x13, x13, -129
	add x10, x10, 1
	sw x10, -1576 ( fp )            //  4-byte Folded Spill
	lw x10, -1588 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB0_259
.LBB0_246:                              //  %if.then1401
                                        //    in Loop: Header=BB0_212 Depth=2
	add x10, x10, -1
	add x23, x23, 1
	sw x10, -1588 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB0_222
.LBB0_247:                              //  %sw.bb1456
                                        //    in Loop: Header=BB0_212 Depth=2
	and x10, x13, 1792
	xor x11, x10, 1792
	and x10, x14, 255
	bltu x0, x11, .LBB0_253
.LBB0_248:                              //  %sw.bb1456
                                        //    in Loop: Header=BB0_212 Depth=2
	lw x11, -1576 ( fp )            //  4-byte Folded Reload
	bltu x0, x11, .LBB0_253
.LBB0_249:                              //  %sw.bb1456
                                        //    in Loop: Header=BB0_212 Depth=2
	bltu x0, x10, .LBB0_253
.LBB0_250:                              //  %if.then1467
                                        //    in Loop: Header=BB0_212 Depth=2
	mv x10, x0
	sw x10, -1576 ( fp )            //  4-byte Folded Spill
	seqz x10, x0
	and x13, x13, -1921
	add x25, x0, 105
	mv x14, x10
	jal x0, .LBB0_221
.LBB0_251:                              //  %if.end1434
                                        //    in Loop: Header=BB0_212 Depth=2
	xor x10, x10, 2
	bltu x0, x10, .LBB0_256
.LBB0_252:                              //    in Loop: Header=BB0_212 Depth=2
	add x10, x0, 3
	sw x10, -1488 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB0_221
.LBB0_253:                              //  %if.end1469
                                        //    in Loop: Header=BB0_212 Depth=2
	xor x11, x10, 5
	beq x0, x11, .LBB0_255
.LBB0_254:                              //  %if.end1469
                                        //    in Loop: Header=BB0_212 Depth=2
	xor x10, x10, 3
	beq x0, x10, .LBB0_255
.LBB0_819:                              //  %if.end1469
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_685
.LBB0_255:                              //  %if.then1477
                                        //    in Loop: Header=BB0_212 Depth=2
	add x14, x14, 1
	add x25, x0, 105
	jal x0, .LBB0_221
.LBB0_256:                              //  %if.end1439
                                        //    in Loop: Header=BB0_212 Depth=2
	and x10, x14, 255
	xor x11, x10, 4
	beq x0, x11, .LBB0_258
.LBB0_257:                              //  %if.end1439
                                        //    in Loop: Header=BB0_212 Depth=2
	xor x10, x10, 1
	bltu x0, x10, .LBB0_312
.LBB0_258:                              //  %if.then1447
                                        //    in Loop: Header=BB0_212 Depth=2
	add x14, x14, 1
	jal x0, .LBB0_221
.LBB0_259:                              //    in Loop: Header=BB0_212 Depth=2
	mv x10, x0
	sw x10, -1588 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB0_222
.LBB0_260:                              //  %if.end.i2880
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	and x10, x25, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_305
.LBB0_261:                              //  %if.then4.i2884
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	blt x11, x10, .LBB0_263
.LBB0_262:                              //  %land.lhs.true.i2887
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	beq x0, x10, .LBB0_263
.LBB0_820:                              //  %land.lhs.true.i2887
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_684
.LBB0_263:                              //  %if.end9.i2892
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x24, -4 ( x10 )
.LBB0_264:                              //  %if.end1228
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	lw x24, 0 ( x27 )
	bltu x0, x24, .LBB0_4
	jal x0, .LBB0_691
.LBB0_265:                              //  %if.else340
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB0_285
.LBB0_266:                              //  %if.else400
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	mv x24, x0
	mv x21, x24
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x26, 0 ( x10 )
	sw x24, -1588 ( fp )            //  4-byte Folded Spill
	sw x24, -1584 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB0_335
.LBB0_267:                              //  %if.else215
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 128
	sw x20, -1580 ( fp )            //  4-byte Folded Spill
	bltu x0, x10, .LBB0_289
.LBB0_268:                              //  %if.else268
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	mv x11, x0
	mv x12, x11
	mv x25, x12
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	mv x14, x12
	mv x13, x12
	sw x12, -1584 ( fp )            //  4-byte Folded Spill
	sw x10, -1488 ( fp )            //  4-byte Folded Spill
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_361
	jal x0, .LBB0_359
.LBB0_269:                              //  %if.then547
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB0_293
.LBB0_270:                              //  %if.else609
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	sw x23, -1588 ( fp )            //  4-byte Folded Spill
	mv x26, x23
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -1488 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB0_372
.LBB0_271:                              //  %if.then924
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB0_297
.LBB0_272:                              //  %while.cond989.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x26, 0 ( x10 )
	sw x26, -1488 ( fp )            //  4-byte Folded Spill
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_275
.LBB0_273:                              //  %land.lhs.true.i2921.us
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_423
.LBB0_274:                              //  %land.lhs.true.if.end_crit_edge.i2923.us
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
.LBB0_275:                              //  %_sfgetwc_r.exit2929.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x24, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x24, -1
	beq x0, x10, .LBB0_423
.LBB0_276:                              //  %land.lhs.true993.us
                                        //    in Loop: Header=BB0_275 Depth=2
	beq x0, x23, .LBB0_321
.LBB0_277:                              //  %land.end1001.us
                                        //    in Loop: Header=BB0_275 Depth=2
	mv x10, x24
	jal iswspace
	bltu x0, x10, .LBB0_321
.LBB0_278:                              //  %while.body1002.us
                                        //    in Loop: Header=BB0_275 Depth=2
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	lw x11, -1488 ( fp )            //  4-byte Folded Reload
	add x23, x23, -1
	add x10, x10, 1
	sw x24, 0 ( x11 )
	add x11, x11, 4
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	sw x11, -1488 ( fp )            //  4-byte Folded Spill
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_275
	jal x0, .LBB0_273
.LBB0_279:                              //    in Loop: Header=BB0_4 Depth=1
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	lw x24, 0 ( x27 )
	beq x0, x24, .LBB0_821
.LBB0_822:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_821:
	jal x0, .LBB0_691
.LBB0_280:                              //    in Loop: Header=BB0_4 Depth=1
	mv x14, x0
	mv x13, x14
	sw x14, -1584 ( fp )            //  4-byte Folded Spill
	bltu x0, x25, .LBB0_481
	jal x0, .LBB0_688
.LBB0_281:                              //  %if.else710
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB0_323
.LBB0_282:                              //  %if.else770
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	sw x23, -1596 ( fp )            //  4-byte Folded Spill
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x26, 0 ( x10 )
	sw x23, -1588 ( fp )            //  4-byte Folded Spill
	sw x23, -1592 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB0_491
.LBB0_283:                              //  %if.else1067
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x25, 128
	sw x26, -1588 ( fp )            //  4-byte Folded Spill
	bltu x0, x10, .LBB0_327
.LBB0_284:                              //  %if.else1127
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	mv x11, x0
	mv x25, x11
	add x12, x10, 4
	sw x12, -56 ( fp )
	lw x26, 0 ( x10 )
	sw x11, -1576 ( fp )            //  4-byte Folded Spill
	sw x11, -1584 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB0_533
.LBB0_285:                              //  %if.then343
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x21, 0 ( x10 )
	bltu x0, x21, .LBB0_286
.LBB0_823:                              //  %if.then343
	jal x0, .LBB0_691
.LBB0_286:                              //  %if.end347
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 32
	jal malloc
	mv x26, x10
	bltu x0, x26, .LBB0_287
.LBB0_824:                              //  %if.end347
	jal x0, .LBB0_690
.LBB0_287:                              //  %if.end351
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x26, 0 ( x21 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB0_331
.LBB0_288:                              //  %if.end351.if.end391_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	jal x0, .LBB0_334
.LBB0_289:                              //  %if.then218
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -1584 ( fp )            //  4-byte Folded Spill
	bltu x0, x10, .LBB0_290
.LBB0_825:                              //  %if.then218
	jal x0, .LBB0_691
.LBB0_290:                              //  %if.end222
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 128
	jal malloc
	bltu x0, x10, .LBB0_291
.LBB0_826:                              //  %if.end222
	jal x0, .LBB0_690
.LBB0_291:                              //  %if.end226
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -1584 ( fp )            //  4-byte Folded Reload
	sw x10, -1488 ( fp )            //  4-byte Folded Spill
	sw x10, 0 ( x11 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB0_352
.LBB0_292:                              //  %if.end226.if.end262_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	jal x0, .LBB0_355
.LBB0_293:                              //  %if.then552
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x26, 0 ( x10 )
	bltu x0, x26, .LBB0_294
.LBB0_827:                              //  %if.then552
	jal x0, .LBB0_726
.LBB0_294:                              //  %if.end556
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 128
	jal malloc
	bltu x0, x10, .LBB0_295
.LBB0_828:                              //  %if.end556
	jal x0, .LBB0_690
.LBB0_295:                              //  %if.end560
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 0 ( x26 )
	sw x10, -1488 ( fp )            //  4-byte Folded Spill
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB0_368
.LBB0_296:                              //  %if.end560.if.end600_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	jal x0, .LBB0_371
.LBB0_297:                              //  %if.then929
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -1576 ( fp )            //  4-byte Folded Spill
	bltu x0, x10, .LBB0_298
.LBB0_829:                              //  %if.then929
	jal x0, .LBB0_726
.LBB0_298:                              //  %if.end933
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 128
	jal malloc
	mv x26, x10
	bltu x0, x26, .LBB0_299
.LBB0_830:                              //  %if.end933
	jal x0, .LBB0_690
.LBB0_299:                              //  %if.end937
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	sw x26, 0 ( x10 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB0_403
.LBB0_300:                              //  %if.end937.if.end977_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	jal x0, .LBB0_406
.LBB0_301:                              //  %if.end13.i2733
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_432
.LBB0_302:                              //  %land.lhs.true17.i2739
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_433
.LBB0_303:                              //  %land.lhs.true23.i2742
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x24, .LBB0_433
.LBB0_304:                              //  %if.then27.i2745
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_142
.LBB0_305:                              //  %if.end13.i2895
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	beq x0, x11, .LBB0_435
.LBB0_306:                              //  %land.lhs.true17.i2901
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x12, x0, 3
	bgeu x11, x10, .LBB0_436
.LBB0_307:                              //  %land.lhs.true23.i2904
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x24, .LBB0_436
.LBB0_308:                              //  %if.then27.i2907
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_264
.LBB0_309:                              //  %if.then157
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	lw x11, -1472 ( fp )            //  4-byte Folded Reload
	sb x11, 0 ( x10 )
	lw x24, 0 ( x27 )
	beq x0, x24, .LBB0_831
.LBB0_832:                              //  %if.then157
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_831:                              //  %if.then157
	jal x0, .LBB0_691
.LBB0_310:                              //    in Loop: Header=BB0_4 Depth=1
	mv x10, x0
	mv x21, x10
	mv x12, x10
	add x26, fp, -1465
	sw x10, -1584 ( fp )            //  4-byte Folded Spill
	bltu x0, x24, .LBB0_571
	jal x0, .LBB0_688
.LBB0_311:                              //  %sw.epilog1526
                                        //    in Loop: Header=BB0_4 Depth=1
	xor x10, x25, -1
	beq x0, x10, .LBB0_440
.LBB0_312:                              //  %if.end.i3178
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	lw x11, -1480 ( fp )            //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_317
.LBB0_313:                              //  %if.then4.i3182
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_315
.LBB0_314:                              //  %land.lhs.true.i3185
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	sw x13, -1588 ( fp )            //  4-byte Folded Spill
	mv x23, x14
	jal __submore
	lw x13, -1588 ( fp )            //  4-byte Folded Reload
	mv x14, x23
	bltu x0, x10, .LBB0_440
.LBB0_315:                              //  %if.end9.i3190
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x25, -4 ( x10 )
.LBB0_316:                              //  %for.end1535
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	bltu x0, x10, .LBB0_441
.LBB0_442:                              //    in Loop: Header=BB0_4 Depth=1
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	mv x10, x0
.LBB0_443:                              //  %for.end1535.thread
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, -1576 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB0_444
.LBB0_317:                              //  %if.end13.i3193
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_438
.LBB0_318:                              //  %land.lhs.true17.i3199
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_439
.LBB0_319:                              //  %land.lhs.true23.i3202
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x25, .LBB0_439
.LBB0_320:                              //  %if.then27.i3205
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_316
.LBB0_321:                              //    in Loop: Header=BB0_4 Depth=1
	mv x25, x0
	sw x25, -1576 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB0_416
.LBB0_322:                              //    in Loop: Header=BB0_4 Depth=1
	mv x21, x0
	add x26, fp, -1465
	sw x21, -1584 ( fp )            //  4-byte Folded Spill
	mv x12, x21
	bltu x0, x21, .LBB0_572
	jal x0, .LBB0_575
.LBB0_323:                              //  %if.then713
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -1588 ( fp )            //  4-byte Folded Spill
	bltu x0, x10, .LBB0_324
.LBB0_833:                              //  %if.then713
	jal x0, .LBB0_726
.LBB0_324:                              //  %if.end717
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 32
	jal malloc
	mv x24, x10
	bltu x0, x24, .LBB0_325
.LBB0_834:                              //  %if.end717
	jal x0, .LBB0_690
.LBB0_325:                              //  %if.end721
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1588 ( fp )            //  4-byte Folded Reload
	sw x24, 0 ( x10 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB0_487
.LBB0_326:                              //  %if.end721.if.end761_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	jal x0, .LBB0_490
.LBB0_327:                              //  %if.then1070
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -1576 ( fp )            //  4-byte Folded Spill
	bltu x0, x10, .LBB0_328
.LBB0_835:                              //  %if.then1070
	jal x0, .LBB0_726
.LBB0_328:                              //  %if.end1074
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 32
	jal malloc
	mv x11, x10
	bltu x0, x11, .LBB0_329
.LBB0_836:                              //  %if.end1074
	jal x0, .LBB0_690
.LBB0_329:                              //  %if.end1078
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	sw x11, -1584 ( fp )            //  4-byte Folded Spill
	sw x11, 0 ( x10 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB0_529
.LBB0_330:                              //  %if.end1078.if.end1118_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	jal x0, .LBB0_532
.LBB0_331:                              //  %if.then359
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x10, 8
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	bgeu x10, x11, .LBB0_332
.LBB0_837:                              //  %if.then359
	jal x0, .LBB0_693
.LBB0_332:                              //  %if.end379
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	bltu x0, x10, .LBB0_333
.LBB0_838:                              //  %if.end379
	jal x0, .LBB0_693
.LBB0_333:                              //  %cleanup388
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB0_334:                              //  %if.end391
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x21, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x10, x0, 32
	sw x10, -1588 ( fp )            //  4-byte Folded Spill
	sw x26, -1584 ( fp )            //  4-byte Folded Spill
	mv x24, x0
.LBB0_335:                              //  %land.rhs408.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, fp, -64
	mv x11, x24
	add x12, x0, 8
	jal memset
	sw x23, -1572 ( fp )            //  4-byte Folded Spill
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_342
	jal x0, .LBB0_340
.LBB0_336:                              //  %if.then444
                                        //    in Loop: Header=BB0_342 Depth=2
	lw x10, -1584 ( fp )            //  4-byte Folded Reload
	sll x11, x11, 1&31
	sw x11, -1588 ( fp )            //  4-byte Folded Spill
	jal realloc
	bltu x0, x10, .LBB0_337
.LBB0_839:                              //  %if.then444
	jal x0, .LBB0_690
.LBB0_337:                              //  %if.end450
                                        //    in Loop: Header=BB0_342 Depth=2
	add x26, x25, x10
	sw x10, 0 ( x21 )
	sw x10, -1584 ( fp )            //  4-byte Folded Spill
.LBB0_338:                              //  %cleanup.cont458
                                        //    in Loop: Header=BB0_342 Depth=2
	add x26, x23, x26
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	add x24, x24, 1
	beq x0, x10, .LBB0_351
.LBB0_339:                              //  %land.rhs408
                                        //    in Loop: Header=BB0_342 Depth=2
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_342
.LBB0_340:                              //  %land.lhs.true.i2692
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_570
.LBB0_341:                              //  %land.lhs.true.if.end_crit_edge.i2694
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
.LBB0_342:                              //  %_sfgetwc_r.exit2700
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x12, -1
	beq x0, x10, .LBB0_570
.LBB0_343:                              //  %while.body413
                                        //    in Loop: Header=BB0_342 Depth=2
	mv x10, x19
	mv x11, x26
	add x13, fp, -64
	jal _wcrtomb_r
	mv x23, x10
	beq x0, x23, .LBB0_345
.LBB0_344:                              //  %while.body413
                                        //    in Loop: Header=BB0_342 Depth=2
	xor x10, x23, -1
	bltu x0, x10, .LBB0_346
	jal x0, .LBB0_687
.LBB0_345:                              //  %lor.lhs.false421
                                        //    in Loop: Header=BB0_342 Depth=2
	lw x10, -64 ( fp )
	xor x10, x10, -4
	beq x0, x10, .LBB0_347
.LBB0_346:                              //  %if.then424
                                        //    in Loop: Header=BB0_342 Depth=2
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	add x10, x10, -1
	sw x10, -1576 ( fp )            //  4-byte Folded Spill
.LBB0_347:                              //  %if.then429
                                        //    in Loop: Header=BB0_342 Depth=2
	beq x0, x21, .LBB0_338
.LBB0_348:                              //  %land.lhs.true436
                                        //    in Loop: Header=BB0_342 Depth=2
	lw x10, -1584 ( fp )            //  4-byte Folded Reload
	sub x25, x26, x10
	jal __locale_mb_cur_max
	lw x11, -1588 ( fp )            //  4-byte Folded Reload
	bgeu x25, x11, .LBB0_336
.LBB0_349:                              //  %land.lhs.true436
                                        //    in Loop: Header=BB0_342 Depth=2
	sub x10, x11, x10
	bltu x25, x10, .LBB0_338
	jal x0, .LBB0_336
.LBB0_570:                              //    in Loop: Header=BB0_4 Depth=1
	lw x12, -1588 ( fp )            //  4-byte Folded Reload
	bltu x0, x24, .LBB0_571
.LBB0_840:
	jal x0, .LBB0_688
.LBB0_571:                              //  %if.end466
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x21, .LBB0_575
.LBB0_572:                              //  %if.end466
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1584 ( fp )            //  4-byte Folded Reload
	sub x11, x26, x10
	bgeu x11, x12, .LBB0_575
.LBB0_573:                              //  %if.then476
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x21 )
	jal realloc
	beq x0, x10, .LBB0_575
.LBB0_574:                              //  %if.then481
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 0 ( x21 )
.LBB0_575:                              //  %cleanup489
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	add x10, x10, x24
	jal x0, .LBB0_576
.LBB0_351:                              //    in Loop: Header=BB0_4 Depth=1
	lw x12, -1588 ( fp )            //  4-byte Folded Reload
	bltu x0, x21, .LBB0_572
	jal x0, .LBB0_575
.LBB0_352:                              //  %if.then234
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x10, 8
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	bgeu x10, x11, .LBB0_353
.LBB0_841:                              //  %if.then234
	jal x0, .LBB0_693
.LBB0_353:                              //  %if.end253
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	bltu x0, x10, .LBB0_354
.LBB0_842:                              //  %if.end253
	jal x0, .LBB0_693
.LBB0_354:                              //  %cleanup
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB0_355:                              //  %if.end262
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -1584 ( fp )            //  4-byte Folded Reload
	lw x14, -1488 ( fp )            //  4-byte Folded Reload
	mv x25, x0
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x10, x0, 32
	mv x13, x10
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_361
	jal x0, .LBB0_359
.LBB0_356:                              //    in Loop: Header=BB0_361 Depth=2
	lw x11, -1488 ( fp )            //  4-byte Folded Reload
.LBB0_357:                              //  %cleanup.cont300
                                        //    in Loop: Header=BB0_361 Depth=2
	sw x23, 0 ( x11 )
	add x11, x11, 4
	mv x23, x9
	add x25, x25, 1
	mv x9, x21
	sw x11, -1488 ( fp )            //  4-byte Folded Spill
	beq x26, x25, .LBB0_481
.LBB0_358:                              //  %land.rhs275
                                        //    in Loop: Header=BB0_361 Depth=2
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_361
.LBB0_359:                              //  %land.lhs.true.i2679
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	mv x24, x14
	mv x21, x13
	jal __ssrefill_r
	bltu x0, x10, .LBB0_480
.LBB0_360:                              //  %land.lhs.true.if.end_crit_edge.i2681
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	mv x13, x21
	mv x14, x24
.LBB0_361:                              //  %_sfgetwc_r.exit2687
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	mv x21, x9
	mv x9, x23
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x23, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x23, -1
	beq x0, x10, .LBB0_367
.LBB0_362:                              //  %if.then283
                                        //    in Loop: Header=BB0_361 Depth=2
	lw x10, -1584 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB0_356
.LBB0_363:                              //  %if.then283
                                        //    in Loop: Header=BB0_361 Depth=2
	lw x11, -1488 ( fp )            //  4-byte Folded Reload
	sub x10, x11, x14
	sra x26, x10, 2&31
	bltu x26, x13, .LBB0_366
.LBB0_364:                              //  %if.then288
                                        //    in Loop: Header=BB0_361 Depth=2
	sll x11, x13, 3&31
	mv x10, x14
	mv x20, x13
	jal realloc
	mv x14, x10
	bltu x0, x14, .LBB0_365
.LBB0_843:                              //  %if.then288
	jal x0, .LBB0_699
.LBB0_365:                              //  %if.end293
                                        //    in Loop: Header=BB0_361 Depth=2
	lw x10, -1584 ( fp )            //  4-byte Folded Reload
	sll x20, x20, 1&31
	mv x13, x20
	lw x20, -1580 ( fp )            //  4-byte Folded Reload
	sw x14, 0 ( x10 )
	sll x10, x26, 2&31
	lw x26, -1576 ( fp )            //  4-byte Folded Reload
	add x11, x10, x14
	jal x0, .LBB0_357
.LBB0_366:                              //    in Loop: Header=BB0_361 Depth=2
	lw x26, -1576 ( fp )            //  4-byte Folded Reload
	jal x0, .LBB0_357
.LBB0_367:                              //    in Loop: Header=BB0_4 Depth=1
	mv x23, x9
	mv x9, x21
	bltu x0, x25, .LBB0_481
	jal x0, .LBB0_688
.LBB0_368:                              //  %if.then568
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x10, 8
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	bgeu x10, x11, .LBB0_369
.LBB0_844:                              //  %if.then568
	jal x0, .LBB0_693
.LBB0_369:                              //  %if.end588
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	bltu x0, x10, .LBB0_370
.LBB0_845:                              //  %if.end588
	jal x0, .LBB0_693
.LBB0_370:                              //  %cleanup597
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB0_371:                              //  %if.end600
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x26, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x10, x0, 32
	sw x10, -1588 ( fp )            //  4-byte Folded Spill
.LBB0_372:                              //  %if.end611
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1496 ( fp )            //  4-byte Folded Reload
	lw x11, -1536 ( fp )            //  4-byte Folded Reload
	sw x9, -1584 ( fp )             //  4-byte Folded Spill
	sub x10, x11, x10
	sra x24, x10, 2&31
	lw x10, -1532 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB0_385
.LBB0_373:                              //    in Loop: Header=BB0_4 Depth=1
	lw x11, -1488 ( fp )            //  4-byte Folded Reload
.LBB0_374:                              //  %while.cond612.outer
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_375 Depth 3
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	sub x23, x0, x10
.LBB0_375:                              //  %while.cond612
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_374 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 0 ( x22 )
	mv x9, x11
	blt x0, x10, .LBB0_378
.LBB0_376:                              //  %land.lhs.true.i2759
                                        //    in Loop: Header=BB0_375 Depth=3
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_402
.LBB0_377:                              //  %land.lhs.true.if.end_crit_edge.i2761
                                        //    in Loop: Header=BB0_375 Depth=3
	lw x10, 0 ( x22 )
.LBB0_378:                              //  %_sfgetwc_r.exit2767
                                        //    in Loop: Header=BB0_375 Depth=3
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x25, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x25, -1
	beq x0, x10, .LBB0_402
.LBB0_379:                              //  %land.lhs.true616
                                        //    in Loop: Header=BB0_375 Depth=3
	add x23, x23, 1
	xor x10, x23, 1
	beq x0, x10, .LBB0_397
.LBB0_380:                              //  %land.end641
                                        //    in Loop: Header=BB0_375 Depth=3
	lw x10, -1496 ( fp )            //  4-byte Folded Reload
	mv x11, x25
	mv x12, x24
	jal wmemchr
	bltu x0, x10, .LBB0_397
.LBB0_381:                              //  %while.body642
                                        //    in Loop: Header=BB0_375 Depth=3
	add x10, x9, 4
	mv x11, x10
	sw x25, 0 ( x9 )
	beq x0, x26, .LBB0_375
.LBB0_382:                              //  %while.body642
                                        //    in Loop: Header=BB0_375 Depth=3
	lw x11, -1488 ( fp )            //  4-byte Folded Reload
	sub x11, x10, x11
	sra x25, x11, 2&31
	mv x11, x10
	lw x10, -1588 ( fp )            //  4-byte Folded Reload
	bltu x25, x10, .LBB0_375
.LBB0_383:                              //  %if.then654
                                        //    in Loop: Header=BB0_374 Depth=2
	lw x9, -1588 ( fp )             //  4-byte Folded Reload
	lw x10, -1488 ( fp )            //  4-byte Folded Reload
	sll x11, x9, 3&31
	jal realloc
	mv x11, x10
	bltu x0, x11, .LBB0_384
.LBB0_846:                              //  %if.then654
	jal x0, .LBB0_690
.LBB0_384:                              //  %if.end660
                                        //    in Loop: Header=BB0_374 Depth=2
	sub x10, x0, x23
	sw x10, -1576 ( fp )            //  4-byte Folded Spill
	sll x10, x25, 2&31
	sll x9, x9, 1&31
	sw x11, 0 ( x26 )
	sw x11, -1488 ( fp )            //  4-byte Folded Spill
	add x11, x10, x11
	sw x9, -1588 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB0_374
.LBB0_385:                              //  %while.cond612.us.outer.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -1488 ( fp )            //  4-byte Folded Reload
.LBB0_386:                              //  %while.cond612.us.outer
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_387 Depth 3
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	sub x23, x0, x10
.LBB0_387:                              //  %while.cond612.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_386 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 0 ( x22 )
	mv x9, x11
	blt x0, x10, .LBB0_390
.LBB0_388:                              //  %land.lhs.true.i2759.us
                                        //    in Loop: Header=BB0_387 Depth=3
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_402
.LBB0_389:                              //  %land.lhs.true.if.end_crit_edge.i2761.us
                                        //    in Loop: Header=BB0_387 Depth=3
	lw x10, 0 ( x22 )
.LBB0_390:                              //  %_sfgetwc_r.exit2767.us
                                        //    in Loop: Header=BB0_387 Depth=3
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x25, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x25, -1
	beq x0, x10, .LBB0_402
.LBB0_391:                              //  %land.lhs.true616.us
                                        //    in Loop: Header=BB0_387 Depth=3
	add x23, x23, 1
	xor x10, x23, 1
	beq x0, x10, .LBB0_397
.LBB0_392:                              //  %land.end641.us
                                        //    in Loop: Header=BB0_387 Depth=3
	lw x10, -1496 ( fp )            //  4-byte Folded Reload
	mv x11, x25
	mv x12, x24
	jal wmemchr
	beq x0, x10, .LBB0_397
.LBB0_393:                              //  %while.body642.us
                                        //    in Loop: Header=BB0_387 Depth=3
	add x10, x9, 4
	mv x11, x10
	sw x25, 0 ( x9 )
	beq x0, x26, .LBB0_387
.LBB0_394:                              //  %while.body642.us
                                        //    in Loop: Header=BB0_387 Depth=3
	lw x11, -1488 ( fp )            //  4-byte Folded Reload
	sub x11, x10, x11
	sra x25, x11, 2&31
	mv x11, x10
	lw x10, -1588 ( fp )            //  4-byte Folded Reload
	bltu x25, x10, .LBB0_387
.LBB0_395:                              //  %if.then654.us
                                        //    in Loop: Header=BB0_386 Depth=2
	lw x9, -1588 ( fp )             //  4-byte Folded Reload
	lw x10, -1488 ( fp )            //  4-byte Folded Reload
	sll x11, x9, 3&31
	jal realloc
	mv x11, x10
	bltu x0, x11, .LBB0_396
.LBB0_847:                              //  %if.then654.us
	jal x0, .LBB0_690
.LBB0_396:                              //  %if.end660.us
                                        //    in Loop: Header=BB0_386 Depth=2
	sub x10, x0, x23
	sw x10, -1576 ( fp )            //  4-byte Folded Spill
	sll x9, x9, 1&31
	sll x10, x25, 2&31
	sw x11, 0 ( x26 )
	sw x11, -1488 ( fp )            //  4-byte Folded Spill
	add x11, x10, x11
	sw x9, -1588 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB0_386
.LBB0_397:                              //  %if.end.i2772
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	lw x11, -1480 ( fp )            //  4-byte Folded Reload
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_424
.LBB0_398:                              //  %if.then4.i2776
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_400
.LBB0_399:                              //  %land.lhs.true.i2779
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_611
.LBB0_400:                              //  %if.end9.i2784
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x25, -4 ( x10 )
.LBB0_401:                              //  %if.end674
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	lw x10, -1488 ( fp )            //  4-byte Folded Reload
	sub x10, x9, x10
	bltu x0, x10, .LBB0_612
	jal x0, .LBB0_691
.LBB0_402:                              //    in Loop: Header=BB0_4 Depth=1
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	lw x10, -1488 ( fp )            //  4-byte Folded Reload
	sub x10, x9, x10
	bltu x0, x10, .LBB0_612
	jal x0, .LBB0_691
.LBB0_403:                              //  %if.then945
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x10, 8
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	bgeu x10, x11, .LBB0_404
.LBB0_848:                              //  %if.then945
	jal x0, .LBB0_693
.LBB0_404:                              //  %if.end965
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	bltu x0, x10, .LBB0_405
.LBB0_849:                              //  %if.end965
	jal x0, .LBB0_693
.LBB0_405:                              //  %cleanup974
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB0_406:                              //  %while.cond989.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -1576 ( fp )            //  4-byte Folded Reload
	add x25, x0, 32
	sw x12, 0 ( x10 )
	add x10, x11, 1
	mv x11, x26
	sh x10, 6 ( x20 )
	lw x10, 0 ( x22 )
	sw x11, -1488 ( fp )            //  4-byte Folded Spill
	blt x0, x10, .LBB0_411
.LBB0_409:                              //  %land.lhs.true.i2921
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_410
.LBB0_850:                              //  %land.lhs.true.i2921
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_674
.LBB0_410:                              //  %land.lhs.true.if.end_crit_edge.i2923
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	jal x0, .LBB0_411
.LBB0_407:                              //  %if.end1020
                                        //    in Loop: Header=BB0_411 Depth=2
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	sll x25, x25, 1&31
	sw x26, 0 ( x10 )
	sll x10, x24, 2&31
	add x11, x10, x26
.LBB0_408:                              //  %cleanup.cont1028
                                        //    in Loop: Header=BB0_411 Depth=2
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	add x23, x23, -1
	add x10, x10, 1
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	lw x10, 0 ( x22 )
	sw x11, -1488 ( fp )            //  4-byte Folded Spill
	bge x0, x10, .LBB0_409
.LBB0_411:                              //  %_sfgetwc_r.exit2929
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x24, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x24, -1
	beq x0, x10, .LBB0_486
.LBB0_412:                              //  %land.lhs.true993
                                        //    in Loop: Header=BB0_411 Depth=2
	beq x0, x23, .LBB0_416
.LBB0_413:                              //  %land.end1001
                                        //    in Loop: Header=BB0_411 Depth=2
	mv x10, x24
	jal iswspace
	bltu x0, x10, .LBB0_416
.LBB0_414:                              //  %while.body1002
                                        //    in Loop: Header=BB0_411 Depth=2
	lw x11, -1488 ( fp )            //  4-byte Folded Reload
	sw x24, 0 ( x11 )
	add x11, x11, 4
	sub x10, x11, x26
	sra x24, x10, 2&31
	bltu x24, x25, .LBB0_408
.LBB0_415:                              //  %if.then1014
                                        //    in Loop: Header=BB0_411 Depth=2
	sll x11, x25, 3&31
	mv x10, x26
	jal realloc
	mv x26, x10
	bltu x0, x26, .LBB0_407
	jal x0, .LBB0_690
.LBB0_416:                              //  %if.end.i2934
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	lw x11, -1480 ( fp )            //  4-byte Folded Reload
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_428
.LBB0_417:                              //  %if.then4.i2938
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_419
.LBB0_418:                              //  %land.lhs.true.i2941
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	beq x0, x10, .LBB0_419
.LBB0_851:                              //  %land.lhs.true.i2941
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_675
.LBB0_419:                              //  %if.end9.i2946
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x24, -4 ( x10 )
.LBB0_420:                              //  %if.end1035
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	lw x10, -1488 ( fp )            //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB0_852
.LBB0_853:                              //  %if.end1035
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_676
.LBB0_852:                              //  %if.end1035
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_679
.LBB0_421:                              //    in Loop: Header=BB0_4 Depth=1
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	lw x24, 0 ( x27 )
	beq x0, x24, .LBB0_854
.LBB0_855:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_854:
	jal x0, .LBB0_691
.LBB0_422:                              //  %if.then162
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	lw x11, -1472 ( fp )            //  4-byte Folded Reload
	sh x11, 0 ( x10 )
	lw x24, 0 ( x27 )
	beq x0, x24, .LBB0_856
.LBB0_857:                              //  %if.then162
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_856:                              //  %if.then162
	jal x0, .LBB0_691
.LBB0_423:                              //    in Loop: Header=BB0_4 Depth=1
	mv x25, x0
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	sw x25, -1576 ( fp )            //  4-byte Folded Spill
	lw x10, -1488 ( fp )            //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB0_858
.LBB0_859:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_676
.LBB0_858:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_679
.LBB0_424:                              //  %if.end13.i2787
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_609
.LBB0_425:                              //  %land.lhs.true17.i2793
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_610
.LBB0_426:                              //  %land.lhs.true23.i2796
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x25, .LBB0_610
.LBB0_427:                              //  %if.then27.i2799
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_401
.LBB0_428:                              //  %if.end13.i2949
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_617
.LBB0_429:                              //  %land.lhs.true17.i2955
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_618
.LBB0_430:                              //  %land.lhs.true23.i2958
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x24, .LBB0_618
.LBB0_431:                              //  %if.then27.i2961
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_420
.LBB0_432:                              //  %if.end13.if.end32_crit_edge.i2736
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
.LBB0_433:                              //  %if.end32.i2753
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 56 ( x18 )
	lw x10, -1476 ( fp )            //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x12, 52 ( x18 )
	sw x9, 0 ( x18 )
	sw x10, 48 ( x18 )
	add x10, x0, 2
	sw x11, 60 ( x18 )
	sw x10, 4 ( x18 )
	sw x24, 63 ( x18 )
.LBB0_434:                              //  %if.end539
                                        //    in Loop: Header=BB0_4 Depth=1
	bltu x0, x23, .LBB0_666
	jal x0, .LBB0_726
.LBB0_435:                              //  %if.end13.if.end32_crit_edge.i2898
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x12, x0, 3
.LBB0_436:                              //  %if.end32.i2915
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 56 ( x18 )
	lw x10, -1476 ( fp )            //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x12, 52 ( x18 )
	sw x9, 0 ( x18 )
	sw x10, 48 ( x18 )
	add x10, x0, 2
	sw x11, 60 ( x18 )
	sw x10, 4 ( x18 )
	sw x24, 63 ( x18 )
	lw x24, 0 ( x27 )
	beq x0, x24, .LBB0_860
.LBB0_861:                              //  %if.end32.i2915
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_860:                              //  %if.end32.i2915
	jal x0, .LBB0_691
.LBB0_437:                              //    in Loop: Header=BB0_4 Depth=1
	mv x25, x0
	sw x26, -1588 ( fp )            //  4-byte Folded Spill
	add x26, fp, -1465
	sw x25, -1576 ( fp )            //  4-byte Folded Spill
	sw x25, -1584 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB0_549
.LBB0_438:                              //  %if.end13.if.end32_crit_edge.i3196
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
.LBB0_439:                              //  %if.end32.i3213
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -1476 ( fp )            //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x9, 0 ( x18 )
	sw x10, 48 ( x18 )
	add x10, x0, 2
	sw x11, 60 ( x18 )
	sw x10, 4 ( x18 )
	sw x25, 63 ( x18 )
.LBB0_440:                              //  %for.end1535
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB0_442
.LBB0_441:                              //    in Loop: Header=BB0_4 Depth=1
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	and x13, x13, -257
.LBB0_444:                              //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1488 ( fp )            //  4-byte Folded Reload
	seqz x11, x0
	sll x10, x10, 24&31
	sra x10, x10, 24&31
	add x10, x10, -1
	bltu x11, x10, .LBB0_445
.LBB0_862:
	jal x0, .LBB0_705
.LBB0_445:                              //  %if.end1554
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x10, x14, 24&31
	sra x10, x10, 24&31
	add x11, x10, -1
	add x12, x0, 6
	sw x13, -1588 ( fp )            //  4-byte Folded Spill
	bltu x12, x11, .LBB0_463
.LBB0_446:                              //  %if.then1559
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x26, -1480 ( fp )            //  4-byte Folded Reload
	slti x10, x10, 3
	beq x0, x10, .LBB0_447
.LBB0_863:                              //  %if.then1559
	jal x0, .LBB0_727
.LBB0_447:                              //  %while.cond1564.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x14, 255
	xor x10, x10, 3
	beq x0, x10, .LBB0_464
.LBB0_448:                              //  %while.body1569.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x12, -1528 ( fp )            //  4-byte Folded Reload
	sll x10, x24, 2&31
	add x11, fp, -1468
	sw x23, -1572 ( fp )            //  4-byte Folded Spill
	add x23, x10, x11
	add x10, x14, -4
	and x21, x10, 255
	jal x0, .LBB0_452
.LBB0_449:                              //  %if.end13.if.end32_crit_edge.i3278
                                        //    in Loop: Header=BB0_452 Depth=2
	lw x10, 0 ( x18 )
.LBB0_450:                              //  %if.end32.i3295
                                        //    in Loop: Header=BB0_452 Depth=2
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -1476 ( fp )            //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x9, 0 ( x18 )
	sw x10, 48 ( x18 )
	add x10, x0, 2
	sw x11, 60 ( x18 )
	sw x10, 4 ( x18 )
	sw x26, 63 ( x18 )
.LBB0_451:                              //  %_sungetwc_r.exit3296
                                        //    in Loop: Header=BB0_452 Depth=2
	add x24, x24, -1
	add x23, x23, -4
	add x10, x0, 3
	bge x10, x14, .LBB0_462
.LBB0_452:                              //  %while.body1569
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x26, 0 ( x23 )
	sll x10, x14, 24&31
	add x10, x12, x10
	sra x14, x10, 24&31
	xor x10, x26, -1
	beq x0, x10, .LBB0_451
.LBB0_453:                              //  %if.end.i3260
                                        //    in Loop: Header=BB0_452 Depth=2
	lhu x10, 12 ( x18 )
	lw x11, -1480 ( fp )            //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_458
.LBB0_454:                              //  %if.then4.i3264
                                        //    in Loop: Header=BB0_452 Depth=2
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_456
.LBB0_455:                              //  %land.lhs.true.i3267
                                        //    in Loop: Header=BB0_452 Depth=2
	mv x10, x19
	mv x11, x18
	mv x25, x14
	jal __submore
	lw x13, -1588 ( fp )            //  4-byte Folded Reload
	lw x12, -1528 ( fp )            //  4-byte Folded Reload
	mv x14, x25
	bltu x0, x10, .LBB0_451
.LBB0_456:                              //  %if.end9.i3272
                                        //    in Loop: Header=BB0_452 Depth=2
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x26, -4 ( x10 )
.LBB0_457:                              //  %_sungetwc_r.exit3296
                                        //    in Loop: Header=BB0_452 Depth=2
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	add x24, x24, -1
	add x23, x23, -4
	add x10, x0, 3
	blt x10, x14, .LBB0_452
	jal x0, .LBB0_462
.LBB0_458:                              //  %if.end13.i3275
                                        //    in Loop: Header=BB0_452 Depth=2
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_449
.LBB0_459:                              //  %land.lhs.true17.i3281
                                        //    in Loop: Header=BB0_452 Depth=2
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_450
.LBB0_460:                              //  %land.lhs.true23.i3284
                                        //    in Loop: Header=BB0_452 Depth=2
	lw x11, -4 ( x10 )
	bne x11, x26, .LBB0_450
.LBB0_461:                              //  %if.then27.i3287
                                        //    in Loop: Header=BB0_452 Depth=2
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_457
.LBB0_462:                              //  %if.end1585.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -1472 ( fp )            //  4-byte Folded Reload
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	xor x10, x21, -1
	add x11, x10, x11
	sw x11, -1472 ( fp )            //  4-byte Folded Spill
.LBB0_463:                              //  %if.end1585
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x26, -1480 ( fp )            //  4-byte Folded Reload
.LBB0_464:                              //  %if.end1585
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x10, x24, 2&31
	add x11, fp, -1464
	add x25, x10, x11
	and x11, x13, 256
	bltu x0, x11, .LBB0_466
.LBB0_465:                              //    in Loop: Header=BB0_4 Depth=1
	mv x24, x9
	mv x9, x25
	and x10, x13, 16
	sw x9, -1488 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB0_595
.LBB0_592:                              //  %if.then1619
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x13, 1536
	xor x10, x10, 1024
	sw x0, 0 ( x9 )
	bltu x0, x10, .LBB0_596
.LBB0_593:                              //  %if.end1634
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1584 ( fp )            //  4-byte Folded Reload
	lw x11, -1576 ( fp )            //  4-byte Folded Reload
	mv x9, x24
	sub x10, x11, x10
	beq x0, x10, .LBB0_600
.LBB0_594:                              //    in Loop: Header=BB0_4 Depth=1
	lw x24, -1488 ( fp )            //  4-byte Folded Reload
	sub x10, x0, x10
	lw x11, -1552 ( fp )            //  4-byte Folded Reload
	bltu x24, x11, .LBB0_599
.LBB0_598:                              //  %if.then1636
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x24, -1564 ( fp )            //  4-byte Folded Reload
.LBB0_599:                              //  %if.then1636
                                        //    in Loop: Header=BB0_4 Depth=1
	add sp, sp, -16
	lw x11, -1556 ( fp )            //  4-byte Folded Reload
	sw x10, 12 ( sp )
	add x10, x0, 11
	sw x10, 4 ( sp )
	sw x11, 8 ( sp )
	sw x24, 0 ( sp )
	jal swprintf
	add sp, sp, 16
	jal x0, .LBB0_600
.LBB0_466:                              //  %if.then1588
                                        //    in Loop: Header=BB0_4 Depth=1
	and x11, x13, 1024
	beq x0, x11, .LBB0_467
.LBB0_864:                              //  %if.then1588
	jal x0, .LBB0_742
.LBB0_467:                              //  %if.end1601
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x23, -1572 ( fp )            //  4-byte Folded Spill
	lw x23, -4 ( x25 )
	or x10, x23, 32
	xor x10, x10, 101
	bltu x0, x10, .LBB0_469
.LBB0_468:                              //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	mv x24, x9
	add x9, x25, -4
	add x10, x10, -1
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	xor x10, x23, -1
	add x12, x0, 3
	bltu x0, x10, .LBB0_580
	jal x0, .LBB0_591
.LBB0_596:                              //  %if.else1627
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1592 ( fp )            //  4-byte Folded Reload
	mv x9, x24
	beq x0, x10, .LBB0_600
.LBB0_597:                              //  %if.end1634.thread3682
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x24, -1596 ( fp )            //  4-byte Folded Reload
	mv x25, x10
	mv x10, x19
	mv x12, x0
	add x11, x24, 4
	add x13, x0, 10
	jal _wcstol_r
	sub x10, x10, x25
	lw x11, -1552 ( fp )            //  4-byte Folded Reload
	bltu x24, x11, .LBB0_599
	jal x0, .LBB0_598
.LBB0_600:                              //  %if.end1649
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	add x11, fp, -1464
	mv x12, x0
	mv x26, x23
	jal _wcstod_r
	mv x24, x11
	lw x11, -1588 ( fp )            //  4-byte Folded Reload
	mv x23, x10
	and x10, x11, 1
	bltu x0, x10, .LBB0_604
.LBB0_601:                              //  %if.else1656
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x11, 2
	bltu x0, x10, .LBB0_605
.LBB0_602:                              //  %if.else1662
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x25, -56 ( fp )
	mv x13, x24
	mv x11, x24
	mv x12, x23
	add x10, x25, 4
	sw x10, -56 ( fp )
	mv x10, x23
	jal __unorddf2
	lw x25, 0 ( x25 )
	bltu x0, x10, .LBB0_606
.LBB0_603:                              //  %if.else1667
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x23
	mv x11, x24
	jal __truncdfsf2
	jal x0, .LBB0_607
.LBB0_604:                              //  %if.then1654
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x24, 4 ( x10 )
	sw x23, 0 ( x10 )
	jal x0, .LBB0_608
.LBB0_469:                              //  %if.then1609
                                        //    in Loop: Header=BB0_4 Depth=1
	xor x10, x23, -1
	beq x0, x10, .LBB0_579
.LBB0_470:                              //  %if.end.i3383
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	and x10, x26, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_475
.LBB0_471:                              //  %if.then4.i3387
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_473
.LBB0_472:                              //  %land.lhs.true.i3390
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	lw x13, -1588 ( fp )            //  4-byte Folded Reload
	bltu x0, x10, .LBB0_579
.LBB0_473:                              //  %if.end9.i3395
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x23, -4 ( x10 )
.LBB0_474:                              //  %_sungetwc_r.exit3419
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	jal x0, .LBB0_579
.LBB0_605:                              //  %if.then1659
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x25, -56 ( fp )
	mv x11, x24
	add x10, x25, 4
	sw x10, -56 ( fp )
	mv x10, x23
	jal __extenddftf2
	lw x14, 0 ( x25 )
	sw x13, 12 ( x14 )
	sw x12, 8 ( x14 )
	sw x11, 4 ( x14 )
	sw x10, 0 ( x14 )
	jal x0, .LBB0_608
.LBB0_475:                              //  %if.end13.i3398
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_577
.LBB0_476:                              //  %land.lhs.true17.i3404
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_578
.LBB0_477:                              //  %land.lhs.true23.i3407
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x23, .LBB0_578
.LBB0_478:                              //  %if.then27.i3410
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_474
.LBB0_606:                              //  %if.then1665
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1568 ( fp )            //  4-byte Folded Reload
	jal nanf
.LBB0_607:                              //  %if.end1671
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 0 ( x25 )
.LBB0_608:                              //  %if.end1671
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x23, x26
	add x23, x23, 1
	lw x24, 0 ( x27 )
	beq x0, x24, .LBB0_865
.LBB0_866:                              //  %if.end1671
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_865:                              //  %if.end1671
	jal x0, .LBB0_691
.LBB0_479:                              //    in Loop: Header=BB0_4 Depth=1
	mv x10, x0
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	sw x26, -1588 ( fp )            //  4-byte Folded Spill
	add x26, fp, -1465
	mv x25, x10
	sw x10, -1584 ( fp )            //  4-byte Folded Spill
	sw x10, -1576 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB0_551
.LBB0_480:                              //    in Loop: Header=BB0_4 Depth=1
	mv x13, x21
	mv x14, x24
	beq x0, x25, .LBB0_688
.LBB0_481:                              //  %if.end308
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1584 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB0_485
.LBB0_482:                              //  %if.end308
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1488 ( fp )            //  4-byte Folded Reload
	sub x11, x10, x14
	sra x10, x11, 2&31
	bgeu x10, x13, .LBB0_485
.LBB0_483:                              //  %if.then319
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1584 ( fp )            //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB0_485
.LBB0_484:                              //  %if.then323
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -1584 ( fp )            //  4-byte Folded Reload
	sw x10, 0 ( x11 )
.LBB0_485:                              //  %cleanup331.thread3490
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	add x10, x10, x25
.LBB0_576:                              //  %sw.epilog1682
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	lw x10, -1592 ( fp )            //  4-byte Folded Reload
	seqz x10, x10
	add x23, x10, x23
	lw x24, 0 ( x27 )
	beq x0, x24, .LBB0_867
.LBB0_868:                              //  %sw.epilog1682
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_867:                              //  %sw.epilog1682
	jal x0, .LBB0_691
.LBB0_486:                              //    in Loop: Header=BB0_4 Depth=1
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	lw x10, -1488 ( fp )            //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	bltu x0, x10, .LBB0_676
	jal x0, .LBB0_679
.LBB0_487:                              //  %if.then729
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x10, 8
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	bltu x10, x11, .LBB0_693
.LBB0_488:                              //  %if.end749
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB0_693
.LBB0_489:                              //  %cleanup758
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB0_490:                              //  %if.end761
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -1588 ( fp )            //  4-byte Folded Reload
	sw x24, -1592 ( fp )            //  4-byte Folded Spill
	mv x26, x24
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x10, x0, 32
	sw x10, -1596 ( fp )            //  4-byte Folded Spill
.LBB0_491:                              //  %if.end773
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, fp, -64
	mv x11, x23
	add x12, x0, 8
	jal memset
	lw x10, -1496 ( fp )            //  4-byte Folded Reload
	lw x11, -1536 ( fp )            //  4-byte Folded Reload
	sub x10, x11, x10
	sra x24, x10, 2&31
	lw x10, -1532 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB0_513
.LBB0_492:                              //  %while.cond775.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x24, -1600 ( fp )            //  4-byte Folded Spill
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_497
.LBB0_495:                              //  %land.lhs.true.i2813
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_659
.LBB0_496:                              //  %land.lhs.true.if.end_crit_edge.i2815
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	jal x0, .LBB0_497
.LBB0_493:                              //  %if.end852
                                        //    in Loop: Header=BB0_497 Depth=2
	lw x24, -1600 ( fp )            //  4-byte Folded Reload
.LBB0_494:                              //  %if.end852
                                        //    in Loop: Header=BB0_497 Depth=2
	add x23, x23, 1
	lw x10, 0 ( x22 )
	bge x0, x10, .LBB0_495
.LBB0_497:                              //  %_sfgetwc_r.exit2821
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x25, 0 ( x11 )
	lw x12, -1576 ( fp )            //  4-byte Folded Reload
	sw x10, 4 ( x18 )
	xor x11, x25, -1
	snez x10, x11
	beq x0, x12, .LBB0_527
.LBB0_498:                              //  %_sfgetwc_r.exit2821
                                        //    in Loop: Header=BB0_497 Depth=2
	beq x0, x11, .LBB0_527
.LBB0_499:                              //  %land.rhs782
                                        //    in Loop: Header=BB0_497 Depth=2
	lw x10, -1496 ( fp )            //  4-byte Folded Reload
	mv x11, x25
	mv x12, x24
	jal wmemchr
	bltu x0, x10, .LBB0_560
.LBB0_500:                              //  %while.body804
                                        //    in Loop: Header=BB0_497 Depth=2
	mv x10, x19
	mv x11, x26
	mv x12, x25
	add x13, fp, -64
	jal _wcrtomb_r
	beq x0, x10, .LBB0_502
.LBB0_501:                              //  %while.body804
                                        //    in Loop: Header=BB0_497 Depth=2
	xor x11, x10, -1
	bltu x0, x11, .LBB0_503
	jal x0, .LBB0_687
.LBB0_502:                              //  %lor.lhs.false812
                                        //    in Loop: Header=BB0_497 Depth=2
	lw x11, -64 ( fp )
	xor x11, x11, -4
	beq x0, x11, .LBB0_504
.LBB0_503:                              //  %if.then816
                                        //    in Loop: Header=BB0_497 Depth=2
	lw x11, -1576 ( fp )            //  4-byte Folded Reload
	add x11, x11, -1
	sw x11, -1576 ( fp )            //  4-byte Folded Spill
.LBB0_504:                              //  %if.end818
                                        //    in Loop: Header=BB0_497 Depth=2
	lw x11, -1584 ( fp )            //  4-byte Folded Reload
	bltu x0, x11, .LBB0_494
.LBB0_505:                              //  %if.then821
                                        //    in Loop: Header=BB0_497 Depth=2
	add x26, x10, x26
	lw x10, -1588 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB0_494
.LBB0_506:                              //  %land.lhs.true829
                                        //    in Loop: Header=BB0_497 Depth=2
	lw x10, -1592 ( fp )            //  4-byte Folded Reload
	mv x11, x26
	sub x25, x11, x10
	jal __locale_mb_cur_max
	lw x24, -1596 ( fp )            //  4-byte Folded Reload
	bgeu x25, x24, .LBB0_508
.LBB0_507:                              //  %land.lhs.true829
                                        //    in Loop: Header=BB0_497 Depth=2
	sub x10, x24, x10
	bltu x25, x10, .LBB0_493
.LBB0_508:                              //  %if.then837
                                        //    in Loop: Header=BB0_497 Depth=2
	lw x10, -1592 ( fp )            //  4-byte Folded Reload
	sll x24, x24, 1&31
	mv x11, x24
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB0_690
.LBB0_509:                              //  %if.end843
                                        //    in Loop: Header=BB0_497 Depth=2
	lw x10, -1588 ( fp )            //  4-byte Folded Reload
	add x26, x25, x11
	sw x24, -1596 ( fp )            //  4-byte Folded Spill
	sw x11, -1592 ( fp )            //  4-byte Folded Spill
	sw x11, 0 ( x10 )
	jal x0, .LBB0_493
.LBB0_510:                              //  %if.then837.us
                                        //    in Loop: Header=BB0_513 Depth=2
	lw x10, -1592 ( fp )            //  4-byte Folded Reload
	sll x11, x11, 1&31
	sw x11, -1596 ( fp )            //  4-byte Folded Spill
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB0_690
.LBB0_511:                              //  %if.end843.us
                                        //    in Loop: Header=BB0_513 Depth=2
	lw x10, -1588 ( fp )            //  4-byte Folded Reload
	add x26, x25, x11
	sw x11, -1592 ( fp )            //  4-byte Folded Spill
	sw x11, 0 ( x10 )
.LBB0_512:                              //  %if.end852.us
                                        //    in Loop: Header=BB0_513 Depth=2
	add x23, x23, 1
.LBB0_513:                              //  %while.cond775.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_516
.LBB0_514:                              //  %land.lhs.true.i2813.us
                                        //    in Loop: Header=BB0_513 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_659
.LBB0_515:                              //  %land.lhs.true.if.end_crit_edge.i2815.us
                                        //    in Loop: Header=BB0_513 Depth=2
	lw x10, 0 ( x22 )
.LBB0_516:                              //  %_sfgetwc_r.exit2821.us
                                        //    in Loop: Header=BB0_513 Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x25, 0 ( x11 )
	lw x12, -1576 ( fp )            //  4-byte Folded Reload
	sw x10, 4 ( x18 )
	xor x11, x25, -1
	snez x10, x11
	beq x0, x12, .LBB0_527
.LBB0_517:                              //  %_sfgetwc_r.exit2821.us
                                        //    in Loop: Header=BB0_513 Depth=2
	beq x0, x11, .LBB0_527
.LBB0_518:                              //  %land.rhs782.us
                                        //    in Loop: Header=BB0_513 Depth=2
	lw x10, -1496 ( fp )            //  4-byte Folded Reload
	mv x11, x25
	mv x12, x24
	jal wmemchr
	beq x0, x10, .LBB0_560
.LBB0_519:                              //  %while.body804.us
                                        //    in Loop: Header=BB0_513 Depth=2
	mv x10, x19
	mv x11, x26
	mv x12, x25
	add x13, fp, -64
	jal _wcrtomb_r
	beq x0, x10, .LBB0_521
.LBB0_520:                              //  %while.body804.us
                                        //    in Loop: Header=BB0_513 Depth=2
	xor x11, x10, -1
	bltu x0, x11, .LBB0_522
	jal x0, .LBB0_687
.LBB0_521:                              //  %lor.lhs.false812.us
                                        //    in Loop: Header=BB0_513 Depth=2
	lw x11, -64 ( fp )
	xor x11, x11, -4
	beq x0, x11, .LBB0_523
.LBB0_522:                              //  %if.then816.us
                                        //    in Loop: Header=BB0_513 Depth=2
	lw x11, -1576 ( fp )            //  4-byte Folded Reload
	add x11, x11, -1
	sw x11, -1576 ( fp )            //  4-byte Folded Spill
.LBB0_523:                              //  %if.end818.us
                                        //    in Loop: Header=BB0_513 Depth=2
	lw x11, -1584 ( fp )            //  4-byte Folded Reload
	bltu x0, x11, .LBB0_512
.LBB0_524:                              //  %if.then821.us
                                        //    in Loop: Header=BB0_513 Depth=2
	add x26, x10, x26
	lw x10, -1588 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB0_512
.LBB0_525:                              //  %land.lhs.true829.us
                                        //    in Loop: Header=BB0_513 Depth=2
	lw x10, -1592 ( fp )            //  4-byte Folded Reload
	sub x25, x26, x10
	jal __locale_mb_cur_max
	lw x11, -1596 ( fp )            //  4-byte Folded Reload
	bgeu x25, x11, .LBB0_510
.LBB0_526:                              //  %land.lhs.true829.us
                                        //    in Loop: Header=BB0_513 Depth=2
	sub x10, x11, x10
	bltu x25, x10, .LBB0_512
	jal x0, .LBB0_510
.LBB0_527:                              //  %while.end854
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -1480 ( fp )            //  4-byte Folded Reload
	bltu x0, x10, .LBB0_561
	jal x0, .LBB0_659
.LBB0_560:                              //    in Loop: Header=BB0_4 Depth=1
	lw x11, -1480 ( fp )            //  4-byte Folded Reload
.LBB0_561:                              //  %if.end.i2826
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_566
.LBB0_562:                              //  %if.then4.i2830
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_564
.LBB0_563:                              //  %land.lhs.true.i2833
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_659
.LBB0_564:                              //  %if.end9.i2838
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x25, -4 ( x10 )
.LBB0_565:                              //  %if.end859
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	lw x10, -1584 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB0_660
	jal x0, .LBB0_666
.LBB0_566:                              //  %if.end13.i2841
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_657
.LBB0_567:                              //  %land.lhs.true17.i2847
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_658
.LBB0_568:                              //  %land.lhs.true23.i2850
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x25, .LBB0_658
.LBB0_569:                              //  %if.then27.i2853
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_565
.LBB0_529:                              //  %if.then1086
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x10, 8
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	bltu x10, x11, .LBB0_693
.LBB0_530:                              //  %if.end1106
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB0_693
.LBB0_531:                              //  %cleanup1115
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB0_532:                              //  %if.end1118
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -1576 ( fp )            //  4-byte Folded Reload
	lw x26, -1584 ( fp )            //  4-byte Folded Reload
	add x25, x0, 32
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	mv x11, x0
.LBB0_533:                              //  %while.cond1132.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, fp, -64
	add x12, x0, 8
	jal memset
	lw x10, 0 ( x22 )
	blt x0, x10, .LBB0_539
.LBB0_537:                              //  %land.lhs.true.i2975
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_669
.LBB0_538:                              //  %land.lhs.true.if.end_crit_edge.i2977
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	jal x0, .LBB0_539
.LBB0_534:                              //  %if.then1177
                                        //    in Loop: Header=BB0_539 Depth=2
	lw x10, -1584 ( fp )            //  4-byte Folded Reload
	sll x25, x25, 1&31
	mv x11, x25
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB0_690
.LBB0_535:                              //  %if.end1183
                                        //    in Loop: Header=BB0_539 Depth=2
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	add x26, x24, x11
	sw x11, -1584 ( fp )            //  4-byte Folded Spill
	sw x11, 0 ( x10 )
.LBB0_536:                              //  %if.end1192
                                        //    in Loop: Header=BB0_539 Depth=2
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	add x10, x10, 1
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	lw x10, 0 ( x22 )
	bge x0, x10, .LBB0_537
.LBB0_539:                              //  %_sfgetwc_r.exit2983
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x24, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x11, x24, -1
	snez x10, x11
	beq x0, x23, .LBB0_549
.LBB0_540:                              //  %_sfgetwc_r.exit2983
                                        //    in Loop: Header=BB0_539 Depth=2
	beq x0, x11, .LBB0_549
.LBB0_541:                              //  %land.rhs1139
                                        //    in Loop: Header=BB0_539 Depth=2
	mv x10, x24
	jal iswspace
	bltu x0, x10, .LBB0_550
.LBB0_542:                              //  %while.body1144
                                        //    in Loop: Header=BB0_539 Depth=2
	mv x10, x26
	mv x11, x24
	add x12, fp, -64
	jal wcrtomb
	beq x0, x10, .LBB0_544
.LBB0_543:                              //  %while.body1144
                                        //    in Loop: Header=BB0_539 Depth=2
	xor x11, x10, -1
	bltu x0, x11, .LBB0_545
	jal x0, .LBB0_687
.LBB0_544:                              //  %lor.lhs.false1152
                                        //    in Loop: Header=BB0_539 Depth=2
	lw x11, -64 ( fp )
	xor x11, x11, -4
	beq x0, x11, .LBB0_546
.LBB0_545:                              //  %if.then1156
                                        //    in Loop: Header=BB0_539 Depth=2
	add x23, x23, -1
.LBB0_546:                              //  %if.then1161
                                        //    in Loop: Header=BB0_539 Depth=2
	add x26, x10, x26
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB0_536
.LBB0_547:                              //  %land.lhs.true1169
                                        //    in Loop: Header=BB0_539 Depth=2
	lw x10, -1584 ( fp )            //  4-byte Folded Reload
	sub x24, x26, x10
	jal __locale_mb_cur_max
	bgeu x24, x25, .LBB0_534
.LBB0_548:                              //  %land.lhs.true1169
                                        //    in Loop: Header=BB0_539 Depth=2
	sub x10, x25, x10
	bltu x24, x10, .LBB0_536
	jal x0, .LBB0_534
.LBB0_549:                              //  %while.end1194
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	bltu x0, x10, .LBB0_551
	jal x0, .LBB0_670
.LBB0_550:                              //    in Loop: Header=BB0_4 Depth=1
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
.LBB0_551:                              //  %if.end.i2988
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	lw x11, -1480 ( fp )            //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_556
.LBB0_552:                              //  %if.then4.i2992
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_554
.LBB0_553:                              //  %land.lhs.true.i2995
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_670
.LBB0_554:                              //  %if.end9.i3000
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x24, -4 ( x10 )
.LBB0_555:                              //  %if.end1199
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	lw x10, -1588 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB0_671
	jal x0, .LBB0_684
.LBB0_556:                              //  %if.end13.i3003
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_655
.LBB0_557:                              //  %land.lhs.true17.i3009
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_656
.LBB0_558:                              //  %land.lhs.true23.i3012
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x24, .LBB0_656
.LBB0_559:                              //  %if.then27.i3015
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_555
.LBB0_577:                              //  %if.end13.if.end32_crit_edge.i3401
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
.LBB0_578:                              //  %if.end32.i3418
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -1476 ( fp )            //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x9, 0 ( x18 )
	sw x10, 48 ( x18 )
	add x10, x0, 2
	sw x11, 60 ( x18 )
	sw x10, 4 ( x18 )
	sw x23, 63 ( x18 )
.LBB0_579:                              //  %_sungetwc_r.exit3419
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	lw x23, -8 ( x25 )
	mv x24, x9
	add x9, x25, -8
	add x10, x10, -2
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	xor x10, x23, -1
	add x12, x0, 3
	beq x0, x10, .LBB0_591
.LBB0_580:                              //  %if.end.i3424
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	and x10, x26, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_585
.LBB0_581:                              //  %if.then4.i3428
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_583
.LBB0_582:                              //  %land.lhs.true.i3431
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	lw x13, -1588 ( fp )            //  4-byte Folded Reload
	bltu x0, x10, .LBB0_591
.LBB0_583:                              //  %if.end9.i3436
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x23, -4 ( x10 )
.LBB0_584:                              //  %if.end1615
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	and x10, x13, 16
	sw x9, -1488 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB0_595
	jal x0, .LBB0_592
.LBB0_585:                              //  %if.end13.i3439
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_589
.LBB0_586:                              //  %land.lhs.true17.i3445
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_590
.LBB0_587:                              //  %land.lhs.true23.i3448
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x23, .LBB0_590
.LBB0_588:                              //  %if.then27.i3451
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_584
.LBB0_589:                              //  %if.end13.if.end32_crit_edge.i3442
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
.LBB0_590:                              //  %if.end32.i3459
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 56 ( x18 )
	lw x10, -1476 ( fp )            //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x12, 52 ( x18 )
	sw x24, 0 ( x18 )
	sw x10, 48 ( x18 )
	add x10, x0, 2
	sw x11, 60 ( x18 )
	sw x10, 4 ( x18 )
	sw x23, 63 ( x18 )
.LBB0_591:                              //  %if.end1615
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	and x10, x13, 16
	sw x9, -1488 ( fp )             //  4-byte Folded Spill
	beq x0, x10, .LBB0_592
.LBB0_595:                              //    in Loop: Header=BB0_4 Depth=1
	mv x9, x24
	lw x24, 0 ( x27 )
	beq x0, x24, .LBB0_869
.LBB0_870:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_869:
	jal x0, .LBB0_691
.LBB0_609:                              //  %if.end13.if.end32_crit_edge.i2790
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
.LBB0_610:                              //  %if.end32.i2807
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -1476 ( fp )            //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x10, 48 ( x18 )
	lw x10, -1584 ( fp )            //  4-byte Folded Reload
	sw x11, 60 ( x18 )
	sw x25, 63 ( x18 )
	sw x10, 0 ( x18 )
	add x10, x0, 2
	sw x10, 4 ( x18 )
.LBB0_611:                              //  %if.end674
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1488 ( fp )            //  4-byte Folded Reload
	sub x10, x9, x10
	beq x0, x10, .LBB0_691
.LBB0_612:                              //  %if.end682
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x23, -1572 ( fp )            //  4-byte Folded Spill
	sra x23, x10, 2&31
	sw x9, -1488 ( fp )             //  4-byte Folded Spill
	sw x0, 0 ( x9 )
	beq x0, x26, .LBB0_616
.LBB0_613:                              //  %if.end682
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1588 ( fp )            //  4-byte Folded Reload
	add x11, x23, 1
	bgeu x11, x10, .LBB0_616
.LBB0_614:                              //  %if.then689
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x26 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB0_616
.LBB0_615:                              //  %if.then694
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 0 ( x26 )
.LBB0_616:                              //  %cleanup698
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1572 ( fp )            //  4-byte Folded Reload
	lw x9, -1584 ( fp )             //  4-byte Folded Reload
	jal x0, .LBB0_665
.LBB0_617:                              //  %if.end13.if.end32_crit_edge.i2952
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
.LBB0_618:                              //  %if.end32.i2969
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -1476 ( fp )            //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x9, 0 ( x18 )
	sw x10, 48 ( x18 )
	add x10, x0, 2
	sw x11, 60 ( x18 )
	sw x10, 4 ( x18 )
	sw x24, 63 ( x18 )
	lw x10, -1488 ( fp )            //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	bltu x0, x10, .LBB0_676
	jal x0, .LBB0_679
.LBB0_619:                              //    in Loop: Header=BB0_4 Depth=1
	sw x14, -1492 ( fp )            //  4-byte Folded Spill
.LBB0_620:                              //  %if.end.i3042
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x14, 12 ( x18 )
	lw x15, -1480 ( fp )            //  4-byte Folded Reload
	and x14, x15, x14
	sh x14, 12 ( x18 )
	lw x14, 48 ( x18 )
	beq x0, x14, .LBB0_625
.LBB0_621:                              //  %if.then4.i3046
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x12, 52 ( x18 )
	blt x10, x12, .LBB0_624
.LBB0_622:                              //  %land.lhs.true.i3049
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_630
.LBB0_623:                              //  %land.lhs.true.i3049.if.end9.i3054_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 0 ( x18 )
.LBB0_624:                              //  %if.end9.i3054
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x11, -4
	sw x10, 0 ( x18 )
	sb x25, -4 ( x11 )
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	and x10, x26, 256
	beq x0, x10, .LBB0_631
	jal x0, .LBB0_720
.LBB0_625:                              //  %if.end13.i3057
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14, 16 ( x18 )
	beq x0, x14, .LBB0_629
.LBB0_626:                              //  %if.end13.i3057
                                        //    in Loop: Header=BB0_4 Depth=1
	bgeu x14, x11, .LBB0_629
.LBB0_627:                              //  %land.lhs.true23.i3066
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14, 0 ( x13 )
	bne x14, x25, .LBB0_629
.LBB0_628:                              //  %if.then27.i3069
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x12, 4 ( x18 )
	sw x13, 0 ( x18 )
	and x10, x26, 256
	beq x0, x10, .LBB0_631
	jal x0, .LBB0_720
.LBB0_629:                              //  %if.end32.i3077
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 60 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -1476 ( fp )            //  4-byte Folded Reload
	sw x11, 56 ( x18 )
	sw x25, 63 ( x18 )
	sw x10, 48 ( x18 )
	lw x10, -1584 ( fp )            //  4-byte Folded Reload
	sw x10, 0 ( x18 )
	add x10, x0, 2
	sw x10, 4 ( x18 )
.LBB0_630:                              //  %for.end
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x26, 256
	bltu x0, x10, .LBB0_720
.LBB0_631:                              //  %if.end1314
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x23, -4 ( x9 )
	or x10, x23, 32
	xor x10, x10, 120
	bltu x0, x10, .LBB0_644
.LBB0_632:                              //  %if.then1321
                                        //    in Loop: Header=BB0_4 Depth=1
	add x9, x9, -4
	xor x10, x23, -1
	add x12, x0, 3
	beq x0, x10, .LBB0_644
.LBB0_633:                              //  %if.end.i3124
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	lw x11, -1480 ( fp )            //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_638
.LBB0_634:                              //  %if.then4.i3128
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_636
.LBB0_635:                              //  %land.lhs.true.i3131
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_644
.LBB0_636:                              //  %if.end9.i3136
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x23, -4 ( x10 )
.LBB0_637:                              //  %if.end1324
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	and x10, x26, 16
	sw x9, -1488 ( fp )             //  4-byte Folded Spill
	beq x0, x10, .LBB0_645
	jal x0, .LBB0_683
.LBB0_638:                              //  %if.end13.i3139
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_642
.LBB0_639:                              //  %land.lhs.true17.i3145
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_643
.LBB0_640:                              //  %land.lhs.true23.i3148
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x23, .LBB0_643
.LBB0_641:                              //  %if.then27.i3151
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_637
.LBB0_642:                              //  %if.end13.if.end32_crit_edge.i3142
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
.LBB0_643:                              //  %if.end32.i3159
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 56 ( x18 )
	lw x10, -1476 ( fp )            //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x12, 52 ( x18 )
	sw x10, 48 ( x18 )
	lw x10, -1584 ( fp )            //  4-byte Folded Reload
	sw x11, 60 ( x18 )
	sw x23, 63 ( x18 )
	sw x10, 0 ( x18 )
	add x10, x0, 2
	sw x10, 4 ( x18 )
.LBB0_644:                              //  %if.end1324
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	and x10, x26, 16
	sw x9, -1488 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB0_683
.LBB0_645:                              //  %if.then1328
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13, -1492 ( fp )            //  4-byte Folded Reload
	lw x14, -1512 ( fp )            //  4-byte Folded Reload
	mv x10, x19
	add x11, fp, -1464
	mv x12, x0
	sw x0, 0 ( x9 )
	call.reg x14
	and x11, x26, 32
	bltu x0, x11, .LBB0_650
.LBB0_646:                              //  %if.else1335
                                        //    in Loop: Header=BB0_4 Depth=1
	and x11, x26, 8
	bltu x0, x11, .LBB0_651
.LBB0_647:                              //  %if.else1341
                                        //    in Loop: Header=BB0_4 Depth=1
	and x11, x26, 4
	bltu x0, x11, .LBB0_652
.LBB0_648:                              //  %if.else1347
                                        //    in Loop: Header=BB0_4 Depth=1
	and x11, x26, 1
	bltu x0, x11, .LBB0_650
.LBB0_649:                              //  %if.else1352
                                        //    in Loop: Header=BB0_4 Depth=1
	and x11, x26, 2
	bltu x0, x11, .LBB0_653
.LBB0_650:                              //  %if.else1366
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -56 ( fp )
	add x12, x11, 4
	sw x12, -56 ( fp )
	lw x11, 0 ( x11 )
	sw x10, 0 ( x11 )
	jal x0, .LBB0_682
.LBB0_651:                              //  %if.then1338
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -56 ( fp )
	add x12, x11, 4
	sw x12, -56 ( fp )
	lw x11, 0 ( x11 )
	sb x10, 0 ( x11 )
	jal x0, .LBB0_682
.LBB0_652:                              //  %if.then1344
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -56 ( fp )
	add x12, x11, 4
	sw x12, -56 ( fp )
	lw x11, 0 ( x11 )
	sh x10, 0 ( x11 )
	jal x0, .LBB0_682
.LBB0_653:                              //  %if.then1355
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1524 ( fp )            //  4-byte Folded Reload
	lw x11, -1512 ( fp )            //  4-byte Folded Reload
	beq x11, x10, .LBB0_680
.LBB0_654:                              //  %if.else1361
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13, -1492 ( fp )            //  4-byte Folded Reload
	mv x10, x19
	add x11, fp, -1464
	mv x12, x0
	jal _wcstoll_r
	jal x0, .LBB0_681
.LBB0_655:                              //  %if.end13.if.end32_crit_edge.i3006
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
.LBB0_656:                              //  %if.end32.i3023
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -1476 ( fp )            //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x9, 0 ( x18 )
	sw x10, 48 ( x18 )
	add x10, x0, 2
	sw x11, 60 ( x18 )
	sw x10, 4 ( x18 )
	sw x24, 63 ( x18 )
	lw x10, -1588 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB0_671
	jal x0, .LBB0_684
.LBB0_657:                              //  %if.end13.if.end32_crit_edge.i2844
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
.LBB0_658:                              //  %if.end32.i2861
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -1476 ( fp )            //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x9, 0 ( x18 )
	sw x10, 48 ( x18 )
	add x10, x0, 2
	sw x11, 60 ( x18 )
	sw x10, 4 ( x18 )
	sw x25, 63 ( x18 )
.LBB0_659:                              //  %if.end859
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1584 ( fp )            //  4-byte Folded Reload
	bltu x0, x10, .LBB0_666
.LBB0_660:                              //  %if.then862
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1588 ( fp )            //  4-byte Folded Reload
	sb x0, 0 ( x26 )
	beq x0, x10, .LBB0_664
.LBB0_661:                              //  %if.then862
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1592 ( fp )            //  4-byte Folded Reload
	sub x10, x26, x10
	add x11, x10, 1
	lw x10, -1596 ( fp )            //  4-byte Folded Reload
	bgeu x11, x10, .LBB0_664
.LBB0_662:                              //  %if.then872
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1588 ( fp )            //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB0_664
.LBB0_663:                              //  %if.then877
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -1588 ( fp )            //  4-byte Folded Reload
	sw x10, 0 ( x11 )
.LBB0_664:                              //  %if.end879
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1572 ( fp )            //  4-byte Folded Reload
.LBB0_665:                              //  %if.end888
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, 1
	sw x10, -1572 ( fp )            //  4-byte Folded Spill
.LBB0_666:                              //  %if.end888
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	add x10, x10, x23
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	lw x24, 0 ( x27 )
	beq x0, x24, .LBB0_871
.LBB0_872:                              //  %if.end888
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_871:                              //  %if.end888
	jal x0, .LBB0_691
.LBB0_667:                              //    in Loop: Header=BB0_4 Depth=1
	mv x25, x0
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	sw x26, -1588 ( fp )            //  4-byte Folded Spill
	sw x25, -1576 ( fp )            //  4-byte Folded Spill
	sw x25, -1584 ( fp )            //  4-byte Folded Spill
	add x26, fp, -1465
	lw x10, -1588 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB0_671
	jal x0, .LBB0_684
.LBB0_668:                              //  %if.then173
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	lw x12, -1472 ( fp )            //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sra x11, x12, 31&31
	sw x11, 4 ( x10 )
	sw x12, 0 ( x10 )
	lw x24, 0 ( x27 )
	beq x0, x24, .LBB0_873
.LBB0_874:                              //  %if.then173
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_873:                              //  %if.then173
	jal x0, .LBB0_691
.LBB0_669:                              //    in Loop: Header=BB0_4 Depth=1
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
.LBB0_670:                              //  %if.end1199
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1588 ( fp )            //  4-byte Folded Reload
	bltu x0, x10, .LBB0_684
.LBB0_671:                              //  %if.then1202
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	sb x0, 0 ( x26 )
	beq x0, x10, .LBB0_679
.LBB0_672:                              //  %if.then1202
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1584 ( fp )            //  4-byte Folded Reload
	sub x10, x26, x10
	add x11, x10, 1
	bgeu x11, x25, .LBB0_679
.LBB0_673:                              //  %if.then1212
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	bltu x0, x10, .LBB0_678
	jal x0, .LBB0_679
.LBB0_674:                              //    in Loop: Header=BB0_4 Depth=1
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
.LBB0_675:                              //  %if.end1035
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1488 ( fp )            //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB0_679
.LBB0_676:                              //  %if.end1035
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1488 ( fp )            //  4-byte Folded Reload
	sub x10, x10, x26
	sra x10, x10, 2&31
	add x11, x10, 1
	bgeu x11, x25, .LBB0_679
.LBB0_677:                              //  %if.then1046
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	sll x11, x11, 2&31
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB0_679
.LBB0_678:                              //  %if.then1217
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -1576 ( fp )            //  4-byte Folded Reload
	sw x10, 0 ( x11 )
.LBB0_679:                              //  %if.end1219
                                        //    in Loop: Header=BB0_4 Depth=1
	add x23, x23, 1
	lw x24, 0 ( x27 )
	beq x0, x24, .LBB0_875
.LBB0_876:                              //  %if.end1219
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_875:                              //  %if.end1219
	jal x0, .LBB0_691
.LBB0_680:                              //  %if.then1358
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13, -1492 ( fp )            //  4-byte Folded Reload
	mv x10, x19
	add x11, fp, -1464
	mv x12, x0
	jal _wcstoull_r
.LBB0_681:                              //  %if.end1364
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x12, -56 ( fp )
	add x13, x12, 4
	sw x13, -56 ( fp )
	lw x12, 0 ( x12 )
	sw x11, 4 ( x12 )
	sw x10, 0 ( x12 )
.LBB0_682:                              //  %if.end1372
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x9, -1488 ( fp )             //  4-byte Folded Reload
	add x23, x23, 1
.LBB0_683:                              //  %if.end1374
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -1472 ( fp )            //  4-byte Folded Reload
	add x10, fp, -1464
	sub x10, x9, x10
	sra x10, x10, 2&31
	add x11, x11, x10
	lw x9, -1584 ( fp )             //  4-byte Folded Reload
	sw x11, -1472 ( fp )            //  4-byte Folded Spill
.LBB0_684:                              //  %for.cond.outer3717.backedge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x24, 0 ( x27 )
	beq x0, x24, .LBB0_877
.LBB0_878:                              //  %for.cond.outer3717.backedge
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_877:                              //  %for.cond.outer3717.backedge
	jal x0, .LBB0_691
.LBB0_685:                              //    in Loop: Header=BB0_4 Depth=1
	add x25, x0, 105
	jal x0, .LBB0_312
.LBB0_686:
	mv x23, x0
	jal x0, .LBB0_698
.LBB0_687:                              //  %input_failure.loopexit33
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
.LBB0_688:                              //  %input_failure
	beq x0, x23, .LBB0_690
.LBB0_689:                              //  %land.lhs.true1684
	lbu x10, 12 ( x18 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB0_691
.LBB0_690:                              //  %land.lhs.true1684
	add x23, x0, -1
.LBB0_691:                              //  %do.body1693
	beq x0, x20, .LBB0_698
.LBB0_692:                              //  %if.then1695
	xor x10, x23, -1
	bltu x0, x10, .LBB0_696
.LBB0_693:                              //  %for.cond1699.preheader
	lhu x10, 6 ( x20 )
	add x23, x0, -1
	beq x0, x10, .LBB0_696
.LBB0_694:                              //  %for.body1704.lr.ph
	mv x9, x0
	mv x18, x9
.LBB0_695:                              //  %for.body1704
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x20 )
	add x10, x9, x10
	lw x10, 0 ( x10 )
	lw x10, 0 ( x10 )
	jal free
	lw x10, 0 ( x20 )
	add x18, x18, 1
	add x10, x9, x10
	lw x10, 0 ( x10 )
	add x9, x9, 4
	sw x0, 0 ( x10 )
	lhu x10, 6 ( x20 )
	bltu x18, x10, .LBB0_695
.LBB0_696:                              //  %if.end1712
	lw x10, 0 ( x20 )
	beq x0, x10, .LBB0_698
.LBB0_697:                              //  %if.then1715
	jal free
.LBB0_698:                              //  %cleanup1721
	mv x10, x23
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
.LBB0_699:
	lw x20, -1580 ( fp )            //  4-byte Folded Reload
	add x23, x0, -1
	bltu x0, x20, .LBB0_692
	jal x0, .LBB0_698
.LBB0_701:                              //  %if.end.i2584
	lhu x14, 12 ( x18 )
	and x14, x26, x14
	sh x14, 12 ( x18 )
	lw x14, 48 ( x18 )
	beq x0, x14, .LBB0_757
.LBB0_702:                              //  %if.then4.i2588
	lw x11, 52 ( x18 )
	blt x13, x11, .LBB0_772
.LBB0_703:                              //  %land.lhs.true.i2591
	mv x10, x19
	mv x11, x18
	jal __submore
	beq x0, x10, .LBB0_771
.LBB0_700:
	mv x23, x25
	bltu x0, x23, .LBB0_689
	jal x0, .LBB0_690
.LBB0_705:                              //  %while.cond1545.preheader
	lw x27, -1476 ( fp )            //  4-byte Folded Reload
	add x21, fp, -1464
	bgeu x21, x26, .LBB0_691
.LBB0_706:                              //  %while.body1549.preheader
	mv x25, x23
	add x22, x0, 3
	add x23, x0, 2
	lw x24, -4 ( x26 )
	add x26, x26, -4
	xor x10, x24, -1
	bltu x0, x10, .LBB0_711
	jal x0, .LBB0_709
.LBB0_707:                              //  %if.end13.if.end32_crit_edge.i3237
	lw x10, 0 ( x18 )
.LBB0_708:                              //  %if.end32.i3254
	lw x11, 4 ( x18 )
	sw x10, 56 ( x18 )
	sw x22, 52 ( x18 )
	sw x27, 48 ( x18 )
	sw x11, 60 ( x18 )
	sw x9, 0 ( x18 )
	sw x23, 4 ( x18 )
	sw x24, 63 ( x18 )
.LBB0_709:                              //  %_sungetwc_r.exit3255
	bgeu x21, x26, .LBB0_719
.LBB0_710:                              //  %while.body1549
	lw x24, -4 ( x26 )
	add x26, x26, -4
	xor x10, x24, -1
	beq x0, x10, .LBB0_709
.LBB0_711:                              //  %if.end.i3219
	lhu x10, 12 ( x18 )
	lw x11, -1480 ( fp )            //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_715
.LBB0_712:                              //  %if.then4.i3223
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_714
.LBB0_713:                              //  %land.lhs.true.i3226
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_709
.LBB0_714:                              //  %if.end9.i3231
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x24, -4 ( x10 )
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	bltu x21, x26, .LBB0_710
	jal x0, .LBB0_719
.LBB0_715:                              //  %if.end13.i3234
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_707
.LBB0_716:                              //  %land.lhs.true17.i3240
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_708
.LBB0_717:                              //  %land.lhs.true23.i3243
	lw x11, -4 ( x10 )
	bne x11, x24, .LBB0_708
.LBB0_718:                              //  %if.then27.i3246
	add x10, x10, -4
	sw x10, 0 ( x18 )
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	bltu x21, x26, .LBB0_710
.LBB0_719:
	mv x23, x25
	bltu x0, x20, .LBB0_692
	jal x0, .LBB0_698
.LBB0_720:                              //  %if.then1306
	beq x0, x24, .LBB0_726
.LBB0_721:                              //  %if.then1310
	lw x21, -4 ( x9 )
	lw x12, -1476 ( fp )            //  4-byte Folded Reload
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	xor x10, x21, -1
	beq x0, x10, .LBB0_691
.LBB0_722:                              //  %if.end.i3083
	lhu x10, 12 ( x18 )
	lw x11, -1480 ( fp )            //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_765
.LBB0_723:                              //  %if.then4.i3087
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_725
.LBB0_724:                              //  %land.lhs.true.i3090
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_691
.LBB0_725:                              //  %if.end9.i3095
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x21, -4 ( x10 )
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	bltu x0, x20, .LBB0_692
	jal x0, .LBB0_698
.LBB0_726:
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	bltu x0, x20, .LBB0_692
	jal x0, .LBB0_698
.LBB0_727:                              //  %while.cond1575.preheader
	lw x27, -1476 ( fp )            //  4-byte Folded Reload
	bge x0, x24, .LBB0_691
.LBB0_728:                              //  %while.body1579.preheader
	sll x10, x24, 2&31
	add x11, fp, -1464
	add x10, x10, x11
	mv x26, x23
	add x21, x10, -4
	add x22, x0, 3
	add x23, x0, 2
	lw x25, 0 ( x21 )
	add x24, x24, -1
	xor x10, x25, -1
	bltu x0, x10, .LBB0_733
	jal x0, .LBB0_731
.LBB0_729:                              //  %if.end13.if.end32_crit_edge.i3319
	lw x10, 0 ( x18 )
.LBB0_730:                              //  %if.end32.i3336
	lw x11, 4 ( x18 )
	sw x10, 56 ( x18 )
	sw x22, 52 ( x18 )
	sw x27, 48 ( x18 )
	sw x11, 60 ( x18 )
	sw x9, 0 ( x18 )
	sw x23, 4 ( x18 )
	sw x25, 63 ( x18 )
.LBB0_731:                              //  %_sungetwc_r.exit3337
	add x21, x21, -4
	bge x0, x24, .LBB0_763
.LBB0_732:                              //  %while.body1579
	lw x25, 0 ( x21 )
	add x24, x24, -1
	xor x10, x25, -1
	beq x0, x10, .LBB0_731
.LBB0_733:                              //  %if.end.i3301
	lhu x10, 12 ( x18 )
	lw x11, -1480 ( fp )            //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_738
.LBB0_734:                              //  %if.then4.i3305
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_736
.LBB0_735:                              //  %land.lhs.true.i3308
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_731
.LBB0_736:                              //  %if.end9.i3313
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x25, -4 ( x10 )
.LBB0_737:                              //  %_sungetwc_r.exit3337
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	add x21, x21, -4
	blt x0, x24, .LBB0_732
	jal x0, .LBB0_763
.LBB0_738:                              //  %if.end13.i3316
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_729
.LBB0_739:                              //  %land.lhs.true17.i3322
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_730
.LBB0_740:                              //  %land.lhs.true23.i3325
	lw x11, -4 ( x10 )
	bne x11, x25, .LBB0_730
.LBB0_741:                              //  %if.then27.i3328
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_737
.LBB0_742:                              //  %while.cond1592.preheader
	lw x27, -1476 ( fp )            //  4-byte Folded Reload
	bge x0, x24, .LBB0_691
.LBB0_743:                              //  %while.body1596.preheader
	add x11, fp, -1464
	add x10, x10, x11
	mv x26, x23
	add x21, x10, -4
	add x22, x0, 3
	add x23, x0, 2
	lw x25, 0 ( x21 )
	add x24, x24, -1
	xor x10, x25, -1
	bltu x0, x10, .LBB0_748
	jal x0, .LBB0_746
.LBB0_744:                              //  %if.end13.if.end32_crit_edge.i3360
	lw x10, 0 ( x18 )
.LBB0_745:                              //  %if.end32.i3377
	lw x11, 4 ( x18 )
	sw x10, 56 ( x18 )
	sw x22, 52 ( x18 )
	sw x27, 48 ( x18 )
	sw x11, 60 ( x18 )
	sw x9, 0 ( x18 )
	sw x23, 4 ( x18 )
	sw x25, 63 ( x18 )
.LBB0_746:                              //  %_sungetwc_r.exit3378
	add x21, x21, -4
	bge x0, x24, .LBB0_763
.LBB0_747:                              //  %while.body1596
	lw x25, 0 ( x21 )
	add x24, x24, -1
	xor x10, x25, -1
	beq x0, x10, .LBB0_746
.LBB0_748:                              //  %if.end.i3342
	lhu x10, 12 ( x18 )
	lw x11, -1480 ( fp )            //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_753
.LBB0_749:                              //  %if.then4.i3346
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_751
.LBB0_750:                              //  %land.lhs.true.i3349
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_746
.LBB0_751:                              //  %if.end9.i3354
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x25, -4 ( x10 )
.LBB0_752:                              //  %_sungetwc_r.exit3378
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	add x21, x21, -4
	blt x0, x24, .LBB0_747
	jal x0, .LBB0_763
.LBB0_753:                              //  %if.end13.i3357
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_744
.LBB0_754:                              //  %land.lhs.true17.i3363
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_745
.LBB0_755:                              //  %land.lhs.true23.i3366
	lw x11, -4 ( x10 )
	bne x11, x25, .LBB0_745
.LBB0_756:                              //  %if.then27.i3369
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_752
.LBB0_763:
	mv x23, x26
	bltu x0, x20, .LBB0_692
	jal x0, .LBB0_698
.LBB0_757:                              //  %if.end13.i2599
	lw x14, 16 ( x18 )
	beq x0, x14, .LBB0_764
.LBB0_758:                              //  %if.end13.i2599
	bgeu x14, x10, .LBB0_764
.LBB0_759:                              //  %land.lhs.true23.i2608
	lw x14, 0 ( x12 )
	bne x14, x23, .LBB0_764
.LBB0_760:                              //  %if.then27.i2611
	sw x11, 4 ( x18 )
	sw x12, 0 ( x18 )
	mv x23, x25
	bltu x0, x23, .LBB0_689
	jal x0, .LBB0_690
.LBB0_764:                              //  %if.end32.i2619
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -1476 ( fp )            //  4-byte Folded Reload
	sw x13, 60 ( x18 )
	sw x23, 63 ( x18 )
	sw x9, 0 ( x18 )
	sw x10, 48 ( x18 )
	add x10, x0, 2
	sw x10, 4 ( x18 )
	mv x23, x25
	bltu x0, x23, .LBB0_689
	jal x0, .LBB0_690
.LBB0_765:                              //  %if.end13.i3098
	lw x9, -1584 ( fp )             //  4-byte Folded Reload
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_775
.LBB0_766:                              //  %land.lhs.true17.i3104
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_776
.LBB0_767:                              //  %land.lhs.true23.i3107
	lw x11, -4 ( x10 )
	bne x11, x21, .LBB0_776
.LBB0_768:                              //  %if.then27.i3110
	add x10, x10, -4
	sw x10, 0 ( x18 )
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	bltu x0, x20, .LBB0_692
	jal x0, .LBB0_698
.LBB0_771:                              //  %land.lhs.true.i2591.if.end9.i2596_crit_edge
	lw x10, 0 ( x18 )
.LBB0_772:                              //  %if.end9.i2596
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x23, -4 ( x10 )
	lw x10, 4 ( x18 )
	mv x23, x25
	add x10, x10, 4
	sw x10, 4 ( x18 )
	bltu x0, x23, .LBB0_689
	jal x0, .LBB0_690
.LBB0_775:                              //  %if.end13.if.end32_crit_edge.i3101
	lw x10, 0 ( x18 )
.LBB0_776:                              //  %if.end32.i3118
	lw x11, 4 ( x18 )
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	add x10, x0, 2
	sw x11, 60 ( x18 )
	sw x12, 48 ( x18 )
	sw x9, 0 ( x18 )
	sw x10, 4 ( x18 )
	sw x21, 63 ( x18 )
	bltu x0, x20, .LBB0_692
	jal x0, .LBB0_698
.Lfunc_end0:
	.size	__ssvfwscanf_r, .Lfunc_end0-__ssvfwscanf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_66
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_25
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_49
	.long	.LBB0_691
	.long	.LBB0_73
	.long	.LBB0_691
	.long	.LBB0_49
	.long	.LBB0_49
	.long	.LBB0_49
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_23
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_74
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_61
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_75
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_49
	.long	.LBB0_691
	.long	.LBB0_77
	.long	.LBB0_78
	.long	.LBB0_49
	.long	.LBB0_49
	.long	.LBB0_49
	.long	.LBB0_11
	.long	.LBB0_79
	.long	.LBB0_23
	.long	.LBB0_691
	.long	.LBB0_14
	.long	.LBB0_27
	.long	.LBB0_80
	.long	.LBB0_86
	.long	.LBB0_87
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_89
	.long	.LBB0_10
	.long	.LBB0_90
	.long	.LBB0_691
	.long	.LBB0_691
	.long	.LBB0_61
	.long	.LBB0_691
	.long	.LBB0_10
JTI0_1:
	.long	.LBB0_104
	.long	.LBB0_119
	.long	.LBB0_143
	.long	.LBB0_154
	.long	.LBB0_179
JTI0_2:
	.long	.LBB0_224
	.long	.LBB0_218
	.long	.LBB0_224
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_244
	.long	.LBB0_215
	.long	.LBB0_215
	.long	.LBB0_215
	.long	.LBB0_215
	.long	.LBB0_215
	.long	.LBB0_215
	.long	.LBB0_215
	.long	.LBB0_215
	.long	.LBB0_215
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_226
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_228
	.long	.LBB0_234
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_236
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_240
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_242
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_226
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_228
	.long	.LBB0_234
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_247
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_236
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_240
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_218
	.long	.LBB0_242
JTI0_3:
	.long	.LBB0_630
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_167
	.long	.LBB0_620
	.long	.LBB0_167
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_174
	.long	.LBB0_158
	.long	.LBB0_158
	.long	.LBB0_158
	.long	.LBB0_158
	.long	.LBB0_158
	.long	.LBB0_158
	.long	.LBB0_158
	.long	.LBB0_169
	.long	.LBB0_169
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_165
	.long	.LBB0_165
	.long	.LBB0_165
	.long	.LBB0_165
	.long	.LBB0_165
	.long	.LBB0_165
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_171
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_165
	.long	.LBB0_165
	.long	.LBB0_165
	.long	.LBB0_165
	.long	.LBB0_165
	.long	.LBB0_165
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_620
	.long	.LBB0_171
                                        //  -- End function
	.address_space	0
	.type	__ssvfwscanf_r.basefix,@object //  @__ssvfwscanf_r.basefix
	.p2align	1
__ssvfwscanf_r.basefix:
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
	.size	__ssvfwscanf_r.basefix, 34

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2
.str:
	.long	101                     //  0x65
	.long	37                      //  0x25
	.long	108                     //  0x6c
	.long	100                     //  0x64
	.long	0                       //  0x0
	.size	.str, 20

	.address_space	0
	.type	.str.1,@object          //  @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.str.1:
	.zero	1
	.size	.str.1, 1


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
