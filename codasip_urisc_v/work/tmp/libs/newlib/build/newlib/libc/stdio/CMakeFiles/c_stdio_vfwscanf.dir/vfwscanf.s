	.text
	.file	"vfwscanf.c"
	.globl	vfwscanf                //  -- Begin function vfwscanf
	.type	vfwscanf,@function
vfwscanf:                               //  @vfwscanf
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
	j __svfwscanf_r
.Lfunc_end0:
	.size	vfwscanf, .Lfunc_end0-vfwscanf
	.cfi_endproc
                                        //  -- End function
	.globl	__svfwscanf_r           //  -- Begin function __svfwscanf_r
	.type	__svfwscanf_r,@function
__svfwscanf_r:                          //  @__svfwscanf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -1600
	.cfi_adjust_cfa_offset 1600
	sw fp, 1584 ( sp )
	.cfi_offset 8, -16
	add fp, sp, 1584
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
	bltu x0, x13, .LBB1_2
.LBB1_1:                                //  %if.then8
	or x10, x11, x12
	sh x10, 12 ( x18 )
	lw x10, 100 ( x18 )
	or x10, x11, x10
	sw x10, 100 ( x18 )
.LBB1_2:                                //  %do.end
	lw x26, 0 ( x27 )
	beq x0, x26, .LBB1_4
.LBB1_3:                                //  %if.end17.lr.ph.lr.ph.lr.ph.lr.ph.lr.ph
	add x11, fp, -1464
	add x10, x11, 4
	sw x10, -1524 ( fp )            //  4-byte Folded Spill
	add x10, x11, 1356
	sw x10, -1536 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( JTI1_0 )
	add x22, x10, %lo( JTI1_0 )
	lui x10, %hi( JTI1_1 )
	add x10, x10, %lo( JTI1_1 )
	sw x10, -1492 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	sw x10, -1544 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( _wcstoul_r )
	add x10, x10, %lo( _wcstoul_r )
	sw x10, -1504 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( JTI1_3 )
	add x10, x10, %lo( JTI1_3 )
	sw x10, -1520 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( -65665 )
	add x10, x10, %lo( -65665 )
	sw x10, -1528 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( __svfwscanf_r.basefix )
	add x10, x10, %lo( __svfwscanf_r.basefix )
	sw x10, -1500 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( -16777216 )
	add x15, x10, %lo( -16777216 )
	lui x10, %hi( .str.1 )
	add x10, x10, %lo( .str.1 )
	sw x10, -1552 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	sw x10, -1540 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( JTI1_2 )
	add x10, x10, %lo( JTI1_2 )
	sw x10, -1476 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( _wcstol_r )
	mv x12, x0
	add x10, x10, %lo( _wcstol_r )
	sw x10, -1516 ( fp )            //  4-byte Folded Spill
	add x10, x11, 1352
	mv x20, x12
	mv x9, x12
	mv x21, x12
	sw x14, -1532 ( fp )            //  4-byte Folded Spill
	sw x12, -1480 ( fp )            //  4-byte Folded Spill
	sw x12, -1472 ( fp )            //  4-byte Folded Spill
	sw x12, -1496 ( fp )            //  4-byte Folded Spill
	sw x12, -1484 ( fp )            //  4-byte Folded Spill
	sw x12, -1512 ( fp )            //  4-byte Folded Spill
	sw x10, -1548 ( fp )            //  4-byte Folded Spill
	sw x12, -1508 ( fp )            //  4-byte Folded Spill
	sw x15, -1488 ( fp )            //  4-byte Folded Spill
	mv x10, x26
	add x27, x27, 4
	jal iswspace
	bltu x0, x10, .LBB1_8
	jal x0, .LBB1_11
.LBB1_4:
	mv x9, x0
	jal x0, .LBB1_504
.LBB1_5:
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
.LBB1_6:                                //  %if.end30
	lw x26, 0 ( x27 )
	bltu x0, x26, .LBB1_7
.LBB1_517:                              //  %if.end30
	jal x0, .LBB1_496
.LBB1_7:                                //  %if.end17
	mv x10, x26
	add x27, x27, 4
	jal iswspace
	beq x0, x10, .LBB1_11
.LBB1_8:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x23, x10
	xor x10, x23, -1
	beq x0, x10, .LBB1_6
.LBB1_9:                                //  %land.rhs
                                        //    in Loop: Header=BB1_8 Depth=1
	mv x10, x23
	jal iswspace
	bltu x0, x10, .LBB1_8
.LBB1_10:                               //  %if.then28
	mv x10, x19
	mv x11, x23
	mv x12, x18
	jal _ungetwc_r
	lw x26, 0 ( x27 )
	bltu x0, x26, .LBB1_7
	jal x0, .LBB1_496
.LBB1_11:                               //  %if.end31
	xor x10, x26, 37
	mv x13, x0
	add x12, x0, 85
	add x14, x0, 10
	bltu x0, x10, .LBB1_38
.LBB1_12:                               //  %again.preheader
	mv x24, x13
	mv x25, x13
.LBB1_13:                               //  %again
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_14 Depth 2
                                        //        Child Loop BB1_15 Depth 3
	mv x10, x27
.LBB1_14:                               //  %again
                                        //    Parent Loop BB1_13 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_15 Depth 3
	lw x26, 0 ( x10 )
	add x11, x26, -37
	bgeu x12, x11, .LBB1_15
.LBB1_518:                              //  %again
	jal x0, .LBB1_496
.LBB1_15:                               //  %again
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_14 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sll x11, x11, 2&31
	add x11, x22, x11
	lw x11, 0 ( x11 )
	add x27, x10, 4
	jr x11
.LBB1_16:                               //  %sw.bb96
                                        //    in Loop: Header=BB1_14 Depth=2
	and x11, x25, 15
	mv x10, x27
	beq x0, x11, .LBB1_14
	jal x0, .LBB1_496
.LBB1_17:                               //  %sw.bb72
                                        //    in Loop: Header=BB1_15 Depth=3
	and x11, x25, 15
	beq x0, x11, .LBB1_18
.LBB1_519:                              //  %sw.bb72
	jal x0, .LBB1_496
.LBB1_18:                               //  %if.end76
                                        //    in Loop: Header=BB1_15 Depth=3
	lw x11, 4 ( x10 )
	add x16, x0, 104
	beq x11, x16, .LBB1_24
.LBB1_19:                               //  %if.end76
                                        //    in Loop: Header=BB1_15 Depth=3
	add x11, x0, 4
	jal x0, .LBB1_23
.LBB1_20:                               //  %sw.bb54
                                        //    in Loop: Header=BB1_15 Depth=3
	and x11, x25, 15
	beq x0, x11, .LBB1_21
.LBB1_520:                              //  %sw.bb54
	jal x0, .LBB1_496
.LBB1_21:                               //  %if.end58
                                        //    in Loop: Header=BB1_15 Depth=3
	lw x11, 4 ( x10 )
	add x16, x0, 108
	beq x11, x16, .LBB1_25
.LBB1_22:                               //  %if.end58
                                        //    in Loop: Header=BB1_15 Depth=3
	seqz x11, x0
.LBB1_23:                               //  %if.end58
                                        //    in Loop: Header=BB1_15 Depth=3
	mv x10, x27
	or x25, x25, x11
	lw x26, 0 ( x10 )
	add x11, x26, -37
	bgeu x12, x11, .LBB1_15
	jal x0, .LBB1_496
.LBB1_24:                               //    in Loop: Header=BB1_15 Depth=3
	add x11, x0, 8
	jal x0, .LBB1_26
.LBB1_25:                               //    in Loop: Header=BB1_15 Depth=3
	add x11, x0, 2
.LBB1_26:                               //    in Loop: Header=BB1_15 Depth=3
	add x10, x10, 8
	or x25, x25, x11
	lw x26, 0 ( x10 )
	add x11, x26, -37
	bgeu x12, x11, .LBB1_15
	jal x0, .LBB1_496
.LBB1_27:                               //  %sw.bb113
                                        //    in Loop: Header=BB1_13 Depth=1
	and x10, x25, 143
	beq x0, x10, .LBB1_28
.LBB1_521:                              //  %sw.bb113
	jal x0, .LBB1_496
.LBB1_28:                               //  %if.end117
                                        //    in Loop: Header=BB1_13 Depth=1
	hackaton_custom_instr_c x10, x14, x24
	add x10, x26, x10
	add x24, x10, -48
	jal x0, .LBB1_13
.LBB1_29:                               //  %sw.bb66
                                        //    in Loop: Header=BB1_13 Depth=1
	and x10, x25, 15
	beq x0, x10, .LBB1_30
.LBB1_522:                              //  %sw.bb66
	jal x0, .LBB1_496
.LBB1_30:                               //  %if.end70
                                        //    in Loop: Header=BB1_13 Depth=1
	or x25, x25, 2
	jal x0, .LBB1_13
.LBB1_31:                               //  %sw.bb47
                                        //    in Loop: Header=BB1_13 Depth=1
	and x10, x25, 159
	or x10, x24, x10
	beq x0, x10, .LBB1_32
.LBB1_523:                              //  %sw.bb47
	jal x0, .LBB1_496
.LBB1_32:                               //  %if.end52
                                        //    in Loop: Header=BB1_13 Depth=1
	or x25, x25, 16
	mv x24, x13
	jal x0, .LBB1_13
.LBB1_33:                               //  %sw.bb101
                                        //    in Loop: Header=BB1_13 Depth=1
	and x10, x25, 143
	beq x0, x10, .LBB1_34
.LBB1_524:                              //  %sw.bb101
	jal x0, .LBB1_496
.LBB1_34:                               //  %do.body106
                                        //    in Loop: Header=BB1_13 Depth=1
	bltu x0, x20, .LBB1_36
.LBB1_35:                               //  %if.then108
                                        //    in Loop: Header=BB1_13 Depth=1
	mv x10, sp
	add x20, x10, -16
	mv sp, x20
	sw x0, -12 ( x10 )
	sw x0, -16 ( x10 )
.LBB1_36:                               //  %do.end111
                                        //    in Loop: Header=BB1_13 Depth=1
	or x25, x25, 128
	jal x0, .LBB1_13
.LBB1_37:                               //  %sw.epilog.loopexit5499
	sw x9, -1556 ( fp )             //  4-byte Folded Spill
	add x9, x0, 4
	and x10, x25, 64
	beq x0, x10, .LBB1_69
	jal x0, .LBB1_73
.LBB1_38:                               //  %literal
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x11, x10
	xor x10, x11, -1
	bltu x0, x10, .LBB1_39
.LBB1_525:                              //  %literal
	jal x0, .LBB1_493
.LBB1_39:                               //  %if.end41
	beq x11, x26, .LBB1_40
.LBB1_526:                              //  %if.end41
	jal x0, .LBB1_509
.LBB1_40:                               //  %if.end46
	add x21, x21, 1
	lw x26, 0 ( x27 )
	bltu x0, x26, .LBB1_7
	jal x0, .LBB1_496
.LBB1_41:                               //  %sw.bb122
	or x25, x25, 512
	sw x9, -1556 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_57
.LBB1_42:                               //  %sw.bb152
	sw x9, -1556 ( fp )             //  4-byte Folded Spill
	or x25, x25, 1
	or x25, x25, 64
	mv x9, x13
	and x10, x25, 64
	beq x0, x10, .LBB1_69
	jal x0, .LBB1_73
.LBB1_43:                               //  %sw.bb125
	sw x9, -1556 ( fp )             //  4-byte Folded Spill
	or x25, x25, 1
	add x9, x0, 2
	and x10, x25, 64
	beq x0, x10, .LBB1_69
	jal x0, .LBB1_73
.LBB1_44:                               //  %sw.bb128
	lw x11, 4 ( x10 )
	add x12, x0, 94
	beq x11, x12, .LBB1_62
.LBB1_45:                               //  %sw.bb128
	add x12, x0, 4
	jal x0, .LBB1_63
.LBB1_46:                               //  %sw.bb154.loopexit
	sw x9, -1556 ( fp )             //  4-byte Folded Spill
	or x25, x25, 64
	mv x9, x13
	and x10, x25, 64
	beq x0, x10, .LBB1_69
	jal x0, .LBB1_73
.LBB1_47:                               //  %sw.epilog.loopexit
	lw x10, -1516 ( fp )            //  4-byte Folded Reload
	jal x0, .LBB1_60
.LBB1_48:                               //  %sw.epilog.loopexit3680
	lw x10, -1516 ( fp )            //  4-byte Folded Reload
	sw x9, -1556 ( fp )             //  4-byte Folded Spill
	sw x13, -1472 ( fp )            //  4-byte Folded Spill
	add x9, x0, 3
	sw x10, -1496 ( fp )            //  4-byte Folded Spill
	and x10, x25, 64
	beq x0, x10, .LBB1_69
	jal x0, .LBB1_73
.LBB1_49:                               //  %sw.bb158
	and x10, x25, 16
	bltu x0, x10, .LBB1_6
.LBB1_50:                               //  %if.end162
	and x10, x25, 8
	bltu x0, x10, .LBB1_235
.LBB1_51:                               //  %if.else167
	and x10, x25, 4
	beq x0, x10, .LBB1_52
.LBB1_527:                              //  %if.else167
	jal x0, .LBB1_330
.LBB1_52:                               //  %if.else173
	and x10, x25, 1
	bltu x0, x10, .LBB1_54
.LBB1_53:                               //  %if.else178
	and x10, x25, 2
	beq x0, x10, .LBB1_54
.LBB1_528:                              //  %if.else178
	jal x0, .LBB1_479
.LBB1_54:                               //  %if.then176
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x21, 0 ( x10 )
	lw x26, 0 ( x27 )
	bltu x0, x26, .LBB1_7
	jal x0, .LBB1_496
.LBB1_55:                               //  %sw.epilog.loopexit4359
	lw x10, -1504 ( fp )            //  4-byte Folded Reload
	sw x9, -1556 ( fp )             //  4-byte Folded Spill
	sw x10, -1496 ( fp )            //  4-byte Folded Spill
	add x10, x0, 8
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	add x9, x0, 3
	and x10, x25, 64
	beq x0, x10, .LBB1_69
	jal x0, .LBB1_73
.LBB1_56:                               //  %sw.bb156
	sw x9, -1556 ( fp )             //  4-byte Folded Spill
	or x25, x25, 544
.LBB1_57:                               //  %sw.epilog
	lw x10, -1504 ( fp )            //  4-byte Folded Reload
	sw x10, -1496 ( fp )            //  4-byte Folded Spill
	add x10, x0, 16
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	add x9, x0, 3
	and x10, x25, 64
	beq x0, x10, .LBB1_69
	jal x0, .LBB1_73
.LBB1_58:                               //  %sw.epilog.loopexit4
	sw x9, -1556 ( fp )             //  4-byte Folded Spill
	add x9, x0, 2
	and x10, x25, 64
	beq x0, x10, .LBB1_69
	jal x0, .LBB1_73
.LBB1_59:                               //  %sw.epilog.loopexit4927
	lw x10, -1504 ( fp )            //  4-byte Folded Reload
.LBB1_60:                               //  %sw.epilog
	sw x9, -1556 ( fp )             //  4-byte Folded Spill
	sw x10, -1496 ( fp )            //  4-byte Folded Spill
	sw x14, -1472 ( fp )            //  4-byte Folded Spill
	add x9, x0, 3
	and x10, x25, 64
	beq x0, x10, .LBB1_69
	jal x0, .LBB1_73
.LBB1_62:
	add x27, x10, 8
	add x12, x0, 8
.LBB1_63:                               //  %sw.bb128
	add x10, x12, x10
	lw x10, 0 ( x10 )
	add x12, x0, 93
	sw x27, -1484 ( fp )            //  4-byte Folded Spill
	bne x10, x12, .LBB1_65
.LBB1_64:
	add x27, x27, 4
.LBB1_65:                               //  %sw.bb128
	xor x10, x11, 94
	seqz x10, x10
	sw x9, -1556 ( fp )             //  4-byte Folded Spill
	sw x10, -1508 ( fp )            //  4-byte Folded Spill
.LBB1_66:                               //  %while.cond140
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x27 )
	add x27, x27, 4
	xor x11, x10, 93
	beq x0, x11, .LBB1_68
.LBB1_67:                               //  %while.cond140
                                        //    in Loop: Header=BB1_66 Depth=1
	bltu x0, x10, .LBB1_66
.LBB1_68:                               //  %while.end149
	add x10, x27, -4
	sw x10, -1512 ( fp )            //  4-byte Folded Spill
	or x25, x25, 64
	seqz x9, x0
	and x10, x25, 64
	bltu x0, x10, .LBB1_73
.LBB1_69:                               //  %while.cond194.preheader
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x23, x10
	xor x10, x23, -1
	bltu x0, x10, .LBB1_70
.LBB1_529:                              //  %while.cond194.preheader
	jal x0, .LBB1_492
.LBB1_70:                               //  %land.rhs198
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x23
	jal iswspace
	beq x0, x10, .LBB1_72
.LBB1_71:                               //  %while.body202
                                        //    in Loop: Header=BB1_70 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x23, x10
	add x21, x21, 1
	xor x10, x23, -1
	bltu x0, x10, .LBB1_70
	jal x0, .LBB1_492
.LBB1_72:                               //  %if.end208
	mv x10, x19
	mv x11, x23
	mv x12, x18
	jal _ungetwc_r
	mv x13, x0
.LBB1_73:                               //  %if.end210
	add x10, x0, 4
	bltu x10, x9, .LBB1_5
.LBB1_74:                               //  %if.end210
	lw x11, -1492 ( fp )            //  4-byte Folded Reload
	sll x10, x9, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB1_75:                               //  %sw.bb211
	seqz x9, x0
	beq x24, x13, .LBB1_77
.LBB1_76:                               //  %sw.bb211
	mv x9, x24
.LBB1_77:                               //  %sw.bb211
	and x23, x25, 16
	and x10, x25, 1
	sw x23, -1572 ( fp )            //  4-byte Folded Spill
	bltu x0, x10, .LBB1_132
.LBB1_78:                               //  %if.else344
	beq x0, x23, .LBB1_190
.LBB1_79:                               //  %land.rhs416.us.preheader
	add x23, fp, -64
	mv x10, x23
	mv x11, x13
	add x12, x0, 8
	mv x24, x13
	jal memset
	add x26, fp, -1465
	jal x0, .LBB1_83
.LBB1_80:                               //  %while.body421.us
                                        //    in Loop: Header=BB1_83 Depth=1
	xor x10, x10, -1
	bltu x0, x10, .LBB1_81
.LBB1_530:                              //  %while.body421.us
	jal x0, .LBB1_492
.LBB1_81:                               //  %if.then432.us
                                        //    in Loop: Header=BB1_83 Depth=1
	add x9, x9, -1
.LBB1_82:                               //  %if.end468.us
                                        //    in Loop: Header=BB1_83 Depth=1
	add x24, x24, 1
	beq x0, x9, .LBB1_237
.LBB1_83:                               //  %land.rhs416.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x12, x10
	xor x10, x12, -1
	beq x0, x10, .LBB1_236
.LBB1_84:                               //  %while.body421.us
                                        //    in Loop: Header=BB1_83 Depth=1
	mv x10, x19
	mv x11, x26
	mv x13, x23
	jal _wcrtomb_r
	bltu x0, x10, .LBB1_80
.LBB1_85:                               //  %lor.lhs.false429.us
                                        //    in Loop: Header=BB1_83 Depth=1
	lw x10, -64 ( fp )
	xor x10, x10, -4
	bltu x0, x10, .LBB1_81
	jal x0, .LBB1_82
.LBB1_86:                               //  %sw.bb503
	add x23, x0, -1
	beq x24, x13, .LBB1_88
.LBB1_87:                               //  %sw.bb503
	mv x23, x24
.LBB1_88:                               //  %sw.bb503
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	and x24, x25, 16
	and x10, x25, 1
	beq x0, x10, .LBB1_136
.LBB1_89:                               //  %sw.bb503
	beq x0, x24, .LBB1_136
.LBB1_90:                               //  %while.cond514.preheader
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x24, x10
	xor x10, x24, -1
	bltu x0, x10, .LBB1_91
.LBB1_531:                              //  %while.cond514.preheader
	jal x0, .LBB1_496
.LBB1_91:                               //  %land.lhs.true518.lr.ph
	lw x10, -1484 ( fp )            //  4-byte Folded Reload
	lw x11, -1512 ( fp )            //  4-byte Folded Reload
	sub x10, x11, x10
	sra x25, x10, 2&31
	lw x10, -1508 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_209
.LBB1_92:                               //  %land.lhs.true518.preheader
	mv x9, x0
.LBB1_93:                               //  %land.lhs.true518
                                        //  =>This Inner Loop Header: Depth=1
	beq x23, x9, .LBB1_213
.LBB1_94:                               //  %land.rhs522
                                        //    in Loop: Header=BB1_93 Depth=1
	lw x10, -1484 ( fp )            //  4-byte Folded Reload
	mv x11, x24
	mv x12, x25
	jal wmemchr
	bltu x0, x10, .LBB1_213
.LBB1_95:                               //  %while.body543
                                        //    in Loop: Header=BB1_93 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x24, x10
	add x9, x9, 1
	xor x10, x24, -1
	bltu x0, x10, .LBB1_93
	jal x0, .LBB1_440
.LBB1_96:                               //  %sw.bb901
	add x9, x0, -1
	beq x24, x13, .LBB1_98
.LBB1_97:                               //  %sw.bb901
	mv x9, x24
.LBB1_98:                               //  %sw.bb901
	and x23, x25, 16
	and x10, x25, 1
	beq x0, x10, .LBB1_139
.LBB1_99:                               //  %sw.bb901
	beq x0, x23, .LBB1_139
.LBB1_100:                              //  %while.cond912.preheader
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x23, x10
	xor x10, x23, -1
	beq x0, x10, .LBB1_208
.LBB1_101:                              //  %land.lhs.true916
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x9, .LBB1_201
.LBB1_102:                              //  %land.rhs920
                                        //    in Loop: Header=BB1_101 Depth=1
	mv x10, x23
	jal iswspace
	bltu x0, x10, .LBB1_201
.LBB1_103:                              //  %while.body924
                                        //    in Loop: Header=BB1_101 Depth=1
	mv x10, x19
	mv x11, x18
	add x9, x9, -1
	jal _fgetwc_r
	mv x23, x10
	add x21, x21, 1
	xor x10, x23, -1
	bltu x0, x10, .LBB1_101
.LBB1_104:
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	lw x26, 0 ( x27 )
	bltu x0, x26, .LBB1_7
	jal x0, .LBB1_496
.LBB1_105:                              //  %sw.bb1240
	add x10, x24, -1
	add x26, x0, 349
	add x11, x0, 348
	bltu x11, x10, .LBB1_107
.LBB1_106:                              //  %sw.bb1240
	mv x26, x24
.LBB1_107:                              //  %sw.bb1240
	or x9, x25, 1408
	beq x0, x26, .LBB1_142
.LBB1_108:                              //  %for.body.preheader
	lw x24, -1520 ( fp )            //  4-byte Folded Reload
	add x25, fp, -1464
	mv x23, x13
	jal x0, .LBB1_111
.LBB1_109:                              //  %sw.bb1266
                                        //    in Loop: Header=BB1_111 Depth=1
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	lw x12, -1500 ( fp )            //  4-byte Folded Reload
	and x9, x9, -897
	sll x10, x10, 1&31
	add x10, x10, x12
	lh x10, 0 ( x10 )
.LBB1_110:                              //  %ok
                                        //    in Loop: Header=BB1_111 Depth=1
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	sw x11, 0 ( x25 )
	add x25, x25, 4
	add x23, x23, 1
	beq x26, x23, .LBB1_126
.LBB1_111:                              //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x11, x10
	add x10, x11, 1
	add x12, x0, 121
	bgeu x12, x10, .LBB1_112
.LBB1_532:                              //  %for.body
	jal x0, .LBB1_415
.LBB1_112:                              //  %for.body
                                        //    in Loop: Header=BB1_111 Depth=1
	sll x10, x10, 2&31
	add x10, x24, x10
	lw x10, 0 ( x10 )
	mv x13, x0
	jr x10
.LBB1_113:                              //  %sw.bb1278
                                        //    in Loop: Header=BB1_111 Depth=1
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	slti x10, x10, 11
	beq x0, x10, .LBB1_114
.LBB1_533:                              //  %sw.bb1278
	jal x0, .LBB1_415
.LBB1_114:                              //  %if.else1263
                                        //    in Loop: Header=BB1_111 Depth=1
	and x9, x9, -897
	sw x11, 0 ( x25 )
	add x25, x25, 4
	add x23, x23, 1
	bne x26, x23, .LBB1_111
	jal x0, .LBB1_126
.LBB1_115:                              //  %sw.bb1284
                                        //    in Loop: Header=BB1_111 Depth=1
	and x10, x9, 128
	bltu x0, x10, .LBB1_116
.LBB1_534:                              //  %sw.bb1284
	jal x0, .LBB1_415
.LBB1_116:                              //  %if.then1287
                                        //    in Loop: Header=BB1_111 Depth=1
	lw x10, -1528 ( fp )            //  4-byte Folded Reload
	lui x12, (65536>>12)&1048575
	and x10, x10, x9
	or x9, x12, x10
	sw x11, 0 ( x25 )
	add x25, x25, 4
	add x23, x23, 1
	bne x26, x23, .LBB1_111
	jal x0, .LBB1_126
.LBB1_117:                              //  %sw.bb1270
                                        //    in Loop: Header=BB1_111 Depth=1
	lw x14, -1472 ( fp )            //  4-byte Folded Reload
	lw x12, -1500 ( fp )            //  4-byte Folded Reload
	sll x10, x14, 1&31
	add x10, x10, x12
	lh x10, 0 ( x10 )
	add x12, x14, -1
	sltiu x12, x12, 8
	beq x0, x12, .LBB1_118
.LBB1_535:                              //  %sw.bb1270
	jal x0, .LBB1_414
.LBB1_118:                              //  %if.end1276
                                        //    in Loop: Header=BB1_111 Depth=1
	and x9, x9, -897
	jal x0, .LBB1_110
.LBB1_119:                              //  %sw.bb1291
                                        //    in Loop: Header=BB1_111 Depth=1
	and x10, x9, 512
	bltu x0, x10, .LBB1_120
.LBB1_536:                              //  %sw.bb1291
	jal x0, .LBB1_415
.LBB1_120:                              //  %land.lhs.true1294
                                        //    in Loop: Header=BB1_111 Depth=1
	lw x12, -1524 ( fp )            //  4-byte Folded Reload
	srl x10, x9, 14&31
	and x10, x10, 4
	add x10, x10, x12
	beq x25, x10, .LBB1_121
.LBB1_537:                              //  %land.lhs.true1294
	jal x0, .LBB1_415
.LBB1_121:                              //  %if.then1304
                                        //    in Loop: Header=BB1_111 Depth=1
	and x9, x9, -513
	add x10, x0, 16
	jal x0, .LBB1_110
.LBB1_122:                              //  %sw.bb1253
                                        //    in Loop: Header=BB1_111 Depth=1
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	bne x10, x13, .LBB1_124
.LBB1_123:                              //    in Loop: Header=BB1_111 Depth=1
	or x9, x9, 512
	add x10, x0, 8
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
.LBB1_124:                              //  %sw.bb1253
                                        //    in Loop: Header=BB1_111 Depth=1
	and x10, x9, 1024
	beq x0, x10, .LBB1_114
.LBB1_125:                              //  %if.then1261
                                        //    in Loop: Header=BB1_111 Depth=1
	and x9, x9, -1409
	sw x11, 0 ( x25 )
	add x25, x25, 4
	add x23, x23, 1
	bne x26, x23, .LBB1_111
.LBB1_126:
	seqz x23, x0
	and x10, x9, 256
	bltu x0, x10, .LBB1_538
.LBB1_539:
	jal x0, .LBB1_417
.LBB1_538:
	jal x0, .LBB1_505
.LBB1_127:                              //  %sw.bb1392
	add x10, x24, -1
	add x23, x0, 349
	add x11, x0, 348
	bltu x11, x10, .LBB1_129
.LBB1_128:                              //  %sw.bb1392
	mv x23, x24
.LBB1_129:                              //  %sw.bb1392
	or x25, x25, 1920
	beq x0, x23, .LBB1_143
.LBB1_130:                              //  %for.body1403.preheader
	add x11, x0, 348
	bltu x11, x10, .LBB1_144
.LBB1_131:                              //  %for.body1403.preheader
	sw x13, -1576 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_145
.LBB1_132:                              //  %if.then218
	beq x0, x23, .LBB1_192
.LBB1_133:                              //  %land.rhs283.us.preheader
	lw x25, -1480 ( fp )            //  4-byte Folded Reload
	mv x26, x13
.LBB1_134:                              //  %land.rhs283.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	xor x10, x10, -1
	beq x0, x10, .LBB1_202
.LBB1_135:                              //  %if.end310.us
                                        //    in Loop: Header=BB1_134 Depth=1
	add x26, x26, 1
	bne x9, x26, .LBB1_134
	jal x0, .LBB1_196
.LBB1_136:                              //  %if.else555
	bltu x0, x10, .LBB1_197
.LBB1_137:                              //  %if.else713
	beq x0, x24, .LBB1_214
.LBB1_138:
	sw x13, -1560 ( fp )            //  4-byte Folded Spill
	sw x13, -1568 ( fp )            //  4-byte Folded Spill
	sw x13, -1572 ( fp )            //  4-byte Folded Spill
	add x25, fp, -1465
	jal x0, .LBB1_346
.LBB1_139:                              //  %if.else932
	bltu x0, x10, .LBB1_199
.LBB1_140:                              //  %if.else1070
	beq x0, x23, .LBB1_216
.LBB1_141:
	sw x13, -1560 ( fp )            //  4-byte Folded Spill
	sw x13, -1564 ( fp )            //  4-byte Folded Spill
	sw x13, -1568 ( fp )            //  4-byte Folded Spill
	add x24, fp, -1465
	jal x0, .LBB1_218
.LBB1_142:
	mv x23, x13
	add x25, fp, -1464
	and x10, x9, 256
	bltu x0, x10, .LBB1_540
.LBB1_541:
	jal x0, .LBB1_417
.LBB1_540:
	jal x0, .LBB1_505
.LBB1_143:
	add x26, fp, -1464
	mv x24, x13
	mv x9, x13
	sw x13, -1564 ( fp )            //  4-byte Folded Spill
	sw x13, -1480 ( fp )            //  4-byte Folded Spill
	sw x13, -1572 ( fp )            //  4-byte Folded Spill
	sw x13, -1568 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_447
.LBB1_144:
	add x10, x24, -349
	sw x10, -1576 ( fp )            //  4-byte Folded Spill
.LBB1_145:                              //  %for.body1403.preheader
	mv x9, x13
	add x26, fp, -1464
	mv x24, x13
	sw x13, -1564 ( fp )            //  4-byte Folded Spill
	sw x13, -1568 ( fp )            //  4-byte Folded Spill
	sw x13, -1480 ( fp )            //  4-byte Folded Spill
	sw x13, -1572 ( fp )            //  4-byte Folded Spill
	sw x13, -1560 ( fp )            //  4-byte Folded Spill
.LBB1_146:                              //  %for.body1403
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x11, x10
	add x10, x11, -43
	add x12, x0, 78
	bltu x12, x10, .LBB1_172
.LBB1_147:                              //  %for.body1403
                                        //    in Loop: Header=BB1_146 Depth=1
	lw x12, -1476 ( fp )            //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x10, x12, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB1_148:                              //  %sw.bb1417
                                        //    in Loop: Header=BB1_146 Depth=1
	lw x12, -1480 ( fp )            //  4-byte Folded Reload
	sll x10, x24, 24&31
	sra x10, x10, 24&31
	sub x10, x0, x10
	sll x12, x12, 24&31
	sra x12, x12, 24&31
	mv x13, x0
	beq x12, x10, .LBB1_149
.LBB1_542:                              //  %sw.bb1417
	jal x0, .LBB1_444
.LBB1_149:                              //  %if.then1423
                                        //    in Loop: Header=BB1_146 Depth=1
	and x25, x25, -385
.LBB1_150:                              //  %fok
                                        //    in Loop: Header=BB1_146 Depth=1
	sw x11, 0 ( x26 )
	add x9, x9, 1
.LBB1_151:                              //  %fskip
                                        //    in Loop: Header=BB1_146 Depth=1
	sll x10, x9, 2&31
	add x11, fp, -1464
	add x26, x10, x11
	add x21, x21, 1
	add x23, x23, -1
	bltu x0, x23, .LBB1_146
	jal x0, .LBB1_445
.LBB1_152:                              //  %sw.bb1426
                                        //    in Loop: Header=BB1_146 Depth=1
	and x10, x25, 128
	mv x13, x0
	bltu x0, x10, .LBB1_153
.LBB1_543:                              //  %sw.bb1426
	jal x0, .LBB1_444
.LBB1_153:                              //  %if.then1429
                                        //    in Loop: Header=BB1_146 Depth=1
	and x25, x25, -129
	jal x0, .LBB1_150
.LBB1_154:                              //  %sw.bb1461
                                        //    in Loop: Header=BB1_146 Depth=1
	lw x10, -1480 ( fp )            //  4-byte Folded Reload
	mv x13, x0
	and x10, x10, 255
	xor x10, x10, 1
	beq x0, x10, .LBB1_155
.LBB1_544:                              //  %sw.bb1461
	jal x0, .LBB1_444
.LBB1_155:                              //    in Loop: Header=BB1_146 Depth=1
	add x10, x0, 2
	sw x10, -1480 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_150
.LBB1_156:                              //  %sw.bb1509
                                        //    in Loop: Header=BB1_146 Depth=1
	and x10, x25, 1280
	xor x10, x10, 1024
	mv x13, x0
	beq x0, x10, .LBB1_159
.LBB1_157:                              //  %lor.lhs.false1513
                                        //    in Loop: Header=BB1_146 Depth=1
	and x10, x25, 1024
	bltu x0, x10, .LBB1_158
.LBB1_545:                              //  %lor.lhs.false1513
	jal x0, .LBB1_444
.LBB1_158:                              //  %lor.lhs.false1513
                                        //    in Loop: Header=BB1_146 Depth=1
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	bltu x0, x10, .LBB1_159
.LBB1_546:                              //  %lor.lhs.false1513
	jal x0, .LBB1_444
.LBB1_159:                              //  %if.then1518
                                        //    in Loop: Header=BB1_146 Depth=1
	and x10, x25, 512
	bne x10, x13, .LBB1_161
.LBB1_160:                              //    in Loop: Header=BB1_146 Depth=1
	lw x10, -1564 ( fp )            //  4-byte Folded Reload
	lw x12, -1560 ( fp )            //  4-byte Folded Reload
	sw x26, -1572 ( fp )            //  4-byte Folded Spill
	sub x10, x12, x10
	sw x10, -1568 ( fp )            //  4-byte Folded Spill
.LBB1_161:                              //  %if.then1518
                                        //    in Loop: Header=BB1_146 Depth=1
	and x10, x25, -1921
	or x25, x10, 384
	sw x13, -1560 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_150
.LBB1_162:                              //  %sw.bb1491
                                        //    in Loop: Header=BB1_146 Depth=1
	and x10, x24, 255
	xor x10, x10, 2
	mv x13, x0
	beq x0, x10, .LBB1_163
.LBB1_547:                              //  %sw.bb1491
	jal x0, .LBB1_444
.LBB1_163:                              //    in Loop: Header=BB1_146 Depth=1
	add x24, x0, 3
	jal x0, .LBB1_150
.LBB1_164:                              //  %sw.bb1432
                                        //    in Loop: Header=BB1_146 Depth=1
	and x10, x25, 1792
	xor x12, x10, 1792
	lw x10, -1480 ( fp )            //  4-byte Folded Reload
	and x10, x10, 255
	bltu x0, x12, .LBB1_182
.LBB1_165:                              //  %sw.bb1432
                                        //    in Loop: Header=BB1_146 Depth=1
	lw x12, -1560 ( fp )            //  4-byte Folded Reload
	bltu x0, x12, .LBB1_182
.LBB1_166:                              //  %sw.bb1432
                                        //    in Loop: Header=BB1_146 Depth=1
	bltu x0, x10, .LBB1_182
.LBB1_167:                              //  %if.then1443
                                        //    in Loop: Header=BB1_146 Depth=1
	mv x13, x0
	seqz x10, x0
	and x25, x25, -1921
	sw x13, -1560 ( fp )            //  4-byte Folded Spill
	sw x10, -1480 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_150
.LBB1_168:                              //  %sw.bb1497
                                        //    in Loop: Header=BB1_146 Depth=1
	and x10, x24, 255
	xor x10, x10, 6
	mv x13, x0
	beq x0, x10, .LBB1_169
.LBB1_548:                              //  %sw.bb1497
	jal x0, .LBB1_444
.LBB1_169:                              //    in Loop: Header=BB1_146 Depth=1
	add x24, x0, 7
	jal x0, .LBB1_150
.LBB1_170:                              //  %sw.bb1503
                                        //    in Loop: Header=BB1_146 Depth=1
	and x10, x24, 255
	xor x10, x10, 7
	mv x13, x0
	beq x0, x10, .LBB1_171
.LBB1_549:                              //  %sw.bb1503
	jal x0, .LBB1_444
.LBB1_171:                              //    in Loop: Header=BB1_146 Depth=1
	add x24, x0, 8
	jal x0, .LBB1_150
.LBB1_172:                              //  %sw.default1528
                                        //    in Loop: Header=BB1_146 Depth=1
	and x10, x25, 512
	bltu x0, x10, .LBB1_173
.LBB1_550:                              //  %sw.default1528
	jal x0, .LBB1_443
.LBB1_173:                              //  %sw.default1528
                                        //    in Loop: Header=BB1_146 Depth=1
	lw x10, -1532 ( fp )            //  4-byte Folded Reload
	beq x11, x10, .LBB1_174
.LBB1_551:                              //  %sw.default1528
	jal x0, .LBB1_443
.LBB1_174:                              //  %if.then1534
                                        //    in Loop: Header=BB1_146 Depth=1
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	and x25, x25, -641
	mv x13, x0
	sw x10, -1564 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_150
.LBB1_175:                              //  %sw.bb1405
                                        //    in Loop: Header=BB1_146 Depth=1
	and x10, x25, 256
	beq x0, x10, .LBB1_148
.LBB1_176:                              //  %if.then1408
                                        //    in Loop: Header=BB1_146 Depth=1
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	and x25, x25, -129
	add x10, x10, 1
	sw x10, -1560 ( fp )            //  4-byte Folded Spill
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_189
.LBB1_177:                              //  %if.then1412
                                        //    in Loop: Header=BB1_146 Depth=1
	add x10, x10, -1
	add x23, x23, 1
	mv x13, x0
	sw x10, -1576 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_151
.LBB1_178:                              //  %sw.bb1467
                                        //    in Loop: Header=BB1_146 Depth=1
	and x10, x25, 1792
	xor x12, x10, 1792
	and x10, x24, 255
	bltu x0, x12, .LBB1_184
.LBB1_179:                              //  %sw.bb1467
                                        //    in Loop: Header=BB1_146 Depth=1
	lw x12, -1560 ( fp )            //  4-byte Folded Reload
	bltu x0, x12, .LBB1_184
.LBB1_180:                              //  %sw.bb1467
                                        //    in Loop: Header=BB1_146 Depth=1
	bltu x0, x10, .LBB1_184
.LBB1_181:                              //  %if.then1478
                                        //    in Loop: Header=BB1_146 Depth=1
	mv x13, x0
	and x25, x25, -1921
	sw x13, -1560 ( fp )            //  4-byte Folded Spill
	seqz x24, x0
	jal x0, .LBB1_150
.LBB1_182:                              //  %if.end1445
                                        //    in Loop: Header=BB1_146 Depth=1
	xor x10, x10, 2
	mv x13, x0
	bltu x0, x10, .LBB1_186
.LBB1_183:                              //    in Loop: Header=BB1_146 Depth=1
	add x10, x0, 3
	sw x10, -1480 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_150
.LBB1_184:                              //  %if.end1480
                                        //    in Loop: Header=BB1_146 Depth=1
	xor x12, x10, 5
	mv x13, x0
	beq x0, x12, .LBB1_188
.LBB1_185:                              //  %if.end1480
                                        //    in Loop: Header=BB1_146 Depth=1
	xor x10, x10, 3
	beq x0, x10, .LBB1_188
	jal x0, .LBB1_444
.LBB1_186:                              //  %if.end1450
                                        //    in Loop: Header=BB1_146 Depth=1
	and x10, x24, 255
	xor x12, x10, 4
	beq x0, x12, .LBB1_188
.LBB1_187:                              //  %if.end1450
                                        //    in Loop: Header=BB1_146 Depth=1
	xor x10, x10, 1
	beq x0, x10, .LBB1_188
.LBB1_552:                              //  %if.end1450
	jal x0, .LBB1_444
.LBB1_188:                              //  %if.then1488
                                        //    in Loop: Header=BB1_146 Depth=1
	add x24, x24, 1
	jal x0, .LBB1_150
.LBB1_189:                              //    in Loop: Header=BB1_146 Depth=1
	mv x13, x0
	sw x13, -1576 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_151
.LBB1_190:                              //  %if.else348
	and x10, x25, 128
	bltu x0, x10, .LBB1_219
.LBB1_191:                              //  %if.else408
	lw x10, -56 ( fp )
	sw x13, -1560 ( fp )            //  4-byte Folded Spill
	add x25, fp, -64
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x26, 0 ( x10 )
	sw x13, -1568 ( fp )            //  4-byte Folded Spill
	sw x13, -1564 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_250
.LBB1_192:                              //  %if.else223
	and x10, x25, 128
	bltu x0, x10, .LBB1_223
.LBB1_193:                              //  %land.rhs283.us3581.preheader
	lw x10, -56 ( fp )
	mv x26, x13
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x25, 0 ( x10 )
.LBB1_194:                              //  %land.rhs283.us3581
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	xor x11, x10, -1
	beq x0, x11, .LBB1_202
.LBB1_195:                              //  %if.then291.us3591
                                        //    in Loop: Header=BB1_194 Depth=1
	sw x10, 0 ( x25 )
	add x25, x25, 4
	add x26, x26, 1
	bne x9, x26, .LBB1_194
.LBB1_196:
	mv x10, x0
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	mv x13, x10
	mv x12, x10
	mv x23, x10
	bltu x0, x23, .LBB1_204
	jal x0, .LBB1_207
.LBB1_197:                              //  %if.then558
	and x10, x25, 128
	bltu x0, x10, .LBB1_227
.LBB1_198:                              //  %if.else620
	lw x10, -56 ( fp )
	mv x24, x13
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x13, -1560 ( fp )            //  4-byte Folded Spill
	sw x10, -1480 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_285
.LBB1_199:                              //  %if.then935
	and x10, x25, 128
	bltu x0, x10, .LBB1_231
.LBB1_200:                              //  %if.else997
	lw x10, -56 ( fp )
	mv x25, x13
	mv x23, x13
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x26, 0 ( x10 )
	jal x0, .LBB1_301
.LBB1_201:                              //  %if.then929
	mv x10, x19
	mv x11, x23
	mv x12, x18
	jal _ungetwc_r
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	lw x26, 0 ( x27 )
	bltu x0, x26, .LBB1_7
	jal x0, .LBB1_496
.LBB1_202:
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	mv x13, x0
	mv x23, x13
	mv x12, x13
	bltu x0, x26, .LBB1_203
.LBB1_553:
	jal x0, .LBB1_493
.LBB1_203:                              //  %if.end316
	beq x0, x23, .LBB1_207
.LBB1_204:                              //  %if.end316
	sub x11, x25, x13
	sra x10, x11, 2&31
	bgeu x10, x12, .LBB1_207
.LBB1_205:                              //  %if.then327
	lw x10, 0 ( x23 )
	jal realloc
	beq x0, x10, .LBB1_207
.LBB1_206:                              //  %if.then331
	sw x10, 0 ( x23 )
.LBB1_207:                              //  %cleanup339.thread2604
	sw x25, -1480 ( fp )            //  4-byte Folded Spill
	add x21, x21, x26
	jal x0, .LBB1_270
.LBB1_208:
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	lw x26, 0 ( x27 )
	bltu x0, x26, .LBB1_7
	jal x0, .LBB1_496
.LBB1_209:                              //  %land.lhs.true518.us.preheader
	mv x9, x0
.LBB1_210:                              //  %land.lhs.true518.us
                                        //  =>This Inner Loop Header: Depth=1
	beq x23, x9, .LBB1_213
.LBB1_211:                              //  %land.rhs522.us
                                        //    in Loop: Header=BB1_210 Depth=1
	lw x10, -1484 ( fp )            //  4-byte Folded Reload
	mv x11, x24
	mv x12, x25
	jal wmemchr
	beq x0, x10, .LBB1_213
.LBB1_212:                              //  %while.body543.us
                                        //    in Loop: Header=BB1_210 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x24, x10
	add x9, x9, 1
	xor x10, x24, -1
	bltu x0, x10, .LBB1_210
	jal x0, .LBB1_440
.LBB1_213:                              //  %if.end550
	mv x10, x19
	mv x11, x24
	mv x12, x18
	jal _ungetwc_r
	bltu x0, x9, .LBB1_440
	jal x0, .LBB1_516
.LBB1_214:                              //  %if.else721
	and x10, x25, 128
	bltu x0, x10, .LBB1_238
.LBB1_215:                              //  %if.else781
	lw x10, -56 ( fp )
	sw x13, -1572 ( fp )            //  4-byte Folded Spill
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x25, 0 ( x10 )
	sw x13, -1560 ( fp )            //  4-byte Folded Spill
	sw x13, -1568 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_346
.LBB1_216:                              //  %if.else1078
	and x10, x25, 128
	bltu x0, x10, .LBB1_242
.LBB1_217:                              //  %if.else1138
	lw x10, -56 ( fp )
	sw x13, -1568 ( fp )            //  4-byte Folded Spill
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x24, 0 ( x10 )
	sw x13, -1560 ( fp )            //  4-byte Folded Spill
	sw x13, -1564 ( fp )            //  4-byte Folded Spill
.LBB1_218:                              //  %if.end1141
	add x25, fp, -64
	jal x0, .LBB1_388
.LBB1_219:                              //  %if.then351
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -1560 ( fp )            //  4-byte Folded Spill
	bltu x0, x10, .LBB1_220
.LBB1_554:                              //  %if.then351
	jal x0, .LBB1_516
.LBB1_220:                              //  %if.end355
	add x10, x0, 32
	jal malloc
	mv x26, x10
	add x25, fp, -64
	bltu x0, x26, .LBB1_221
.LBB1_555:                              //  %if.end355
	jal x0, .LBB1_495
.LBB1_221:                              //  %if.end359
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sw x26, 0 ( x10 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB1_246
.LBB1_222:                              //  %if.end359.if.end399_crit_edge
	lw x10, 0 ( x20 )
	jal x0, .LBB1_249
.LBB1_223:                              //  %if.then226
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -1480 ( fp )            //  4-byte Folded Spill
	bltu x0, x10, .LBB1_224
.LBB1_556:                              //  %if.then226
	jal x0, .LBB1_516
.LBB1_224:                              //  %if.end230
	add x10, x0, 128
	jal malloc
	mv x25, x10
	bltu x0, x25, .LBB1_225
.LBB1_557:                              //  %if.end230
	jal x0, .LBB1_495
.LBB1_225:                              //  %if.end234
	lw x10, -1480 ( fp )            //  4-byte Folded Reload
	mv x26, x0
	sw x22, -1580 ( fp )            //  4-byte Folded Spill
	sw x25, 0 ( x10 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB1_271
.LBB1_226:                              //  %if.end234.if.end270_crit_edge
	lw x10, 0 ( x20 )
	jal x0, .LBB1_274
.LBB1_227:                              //  %if.then563
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -1560 ( fp )            //  4-byte Folded Spill
	bltu x0, x10, .LBB1_228
.LBB1_558:                              //  %if.then563
	jal x0, .LBB1_496
.LBB1_228:                              //  %if.end567
	add x10, x0, 128
	jal malloc
	mv x24, x10
	bltu x0, x24, .LBB1_229
.LBB1_559:                              //  %if.end567
	jal x0, .LBB1_495
.LBB1_229:                              //  %if.end571
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sw x24, 0 ( x10 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB1_281
.LBB1_230:                              //  %if.end571.if.end611_crit_edge
	lw x10, 0 ( x20 )
	jal x0, .LBB1_284
.LBB1_231:                              //  %if.then940
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x23, 0 ( x10 )
	bltu x0, x23, .LBB1_232
.LBB1_560:                              //  %if.then940
	jal x0, .LBB1_516
.LBB1_232:                              //  %if.end944
	add x10, x0, 128
	jal malloc
	mv x26, x10
	bltu x0, x26, .LBB1_233
.LBB1_561:                              //  %if.end944
	jal x0, .LBB1_495
.LBB1_233:                              //  %if.end948
	sw x26, 0 ( x23 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB1_297
.LBB1_234:                              //  %if.end948.if.end988_crit_edge
	lw x10, 0 ( x20 )
	jal x0, .LBB1_300
.LBB1_235:                              //  %if.then165
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sb x21, 0 ( x10 )
	lw x26, 0 ( x27 )
	bltu x0, x26, .LBB1_7
	jal x0, .LBB1_496
.LBB1_236:
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	mv x10, x0
	mv x12, x10
	sw x10, -1560 ( fp )            //  4-byte Folded Spill
	sw x10, -1564 ( fp )            //  4-byte Folded Spill
	bltu x0, x24, .LBB1_265
	jal x0, .LBB1_493
.LBB1_237:
	mv x10, x0
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	sw x10, -1564 ( fp )            //  4-byte Folded Spill
	mv x12, x10
	sw x10, -1560 ( fp )            //  4-byte Folded Spill
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	bltu x0, x10, .LBB1_266
	jal x0, .LBB1_269
.LBB1_238:                              //  %if.then724
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -1560 ( fp )            //  4-byte Folded Spill
	bltu x0, x10, .LBB1_239
.LBB1_562:                              //  %if.then724
	jal x0, .LBB1_496
.LBB1_239:                              //  %if.end728
	add x10, x0, 32
	jal malloc
	bltu x0, x10, .LBB1_240
.LBB1_563:                              //  %if.end728
	jal x0, .LBB1_495
.LBB1_240:                              //  %if.end732
	lw x11, -1560 ( fp )            //  4-byte Folded Reload
	sw x10, -1568 ( fp )            //  4-byte Folded Spill
	sw x10, 0 ( x11 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB1_342
.LBB1_241:                              //  %if.end732.if.end772_crit_edge
	lw x10, 0 ( x20 )
	jal x0, .LBB1_345
.LBB1_242:                              //  %if.then1081
	lw x10, -56 ( fp )
	add x25, fp, -64
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -1560 ( fp )            //  4-byte Folded Spill
	bltu x0, x10, .LBB1_243
.LBB1_564:                              //  %if.then1081
	jal x0, .LBB1_516
.LBB1_243:                              //  %if.end1085
	add x10, x0, 32
	jal malloc
	mv x24, x10
	bltu x0, x24, .LBB1_244
.LBB1_565:                              //  %if.end1085
	jal x0, .LBB1_495
.LBB1_244:                              //  %if.end1089
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sw x24, 0 ( x10 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB1_384
.LBB1_245:                              //  %if.end1089.if.end1129_crit_edge
	lw x10, 0 ( x20 )
	jal x0, .LBB1_387
.LBB1_246:                              //  %if.then367
	add x11, x10, 8
	lw x10, -1544 ( fp )            //  4-byte Folded Reload
	bgeu x10, x11, .LBB1_247
.LBB1_566:                              //  %if.then367
	jal x0, .LBB1_498
.LBB1_247:                              //  %if.end387
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	bltu x0, x10, .LBB1_248
.LBB1_567:                              //  %if.end387
	jal x0, .LBB1_498
.LBB1_248:                              //  %cleanup396
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB1_249:                              //  %if.end399
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -1560 ( fp )            //  4-byte Folded Reload
	mv x13, x0
	sw x26, -1564 ( fp )            //  4-byte Folded Spill
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x10, x0, 32
	sw x10, -1568 ( fp )            //  4-byte Folded Spill
.LBB1_250:                              //  %land.rhs416.preheader
	mv x10, x25
	mv x11, x13
	add x12, x0, 8
	mv x24, x13
	jal memset
	jal x0, .LBB1_253
.LBB1_251:                              //  %cleanup.cont466
                                        //    in Loop: Header=BB1_253 Depth=1
	add x25, fp, -64
.LBB1_252:                              //  %cleanup.cont466
                                        //    in Loop: Header=BB1_253 Depth=1
	add x26, x23, x26
	add x24, x24, 1
	beq x0, x9, .LBB1_264
.LBB1_253:                              //  %land.rhs416
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x12, x10
	xor x10, x12, -1
	beq x0, x10, .LBB1_263
.LBB1_254:                              //  %while.body421
                                        //    in Loop: Header=BB1_253 Depth=1
	mv x10, x19
	mv x11, x26
	mv x13, x25
	jal _wcrtomb_r
	mv x23, x10
	beq x0, x23, .LBB1_256
.LBB1_255:                              //  %while.body421
                                        //    in Loop: Header=BB1_253 Depth=1
	xor x10, x23, -1
	bltu x0, x10, .LBB1_257
	jal x0, .LBB1_492
.LBB1_256:                              //  %lor.lhs.false429
                                        //    in Loop: Header=BB1_253 Depth=1
	lw x10, -64 ( fp )
	xor x10, x10, -4
	beq x0, x10, .LBB1_258
.LBB1_257:                              //  %if.then432
                                        //    in Loop: Header=BB1_253 Depth=1
	add x9, x9, -1
.LBB1_258:                              //  %if.then437
                                        //    in Loop: Header=BB1_253 Depth=1
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_252
.LBB1_259:                              //  %land.lhs.true444
                                        //    in Loop: Header=BB1_253 Depth=1
	lw x10, -1564 ( fp )            //  4-byte Folded Reload
	sub x25, x26, x10
	jal __locale_mb_cur_max
	lw x11, -1568 ( fp )            //  4-byte Folded Reload
	bgeu x25, x11, .LBB1_261
.LBB1_260:                              //  %land.lhs.true444
                                        //    in Loop: Header=BB1_253 Depth=1
	sub x10, x11, x10
	bltu x25, x10, .LBB1_251
.LBB1_261:                              //  %if.then452
                                        //    in Loop: Header=BB1_253 Depth=1
	lw x10, -1564 ( fp )            //  4-byte Folded Reload
	sll x11, x11, 1&31
	sw x11, -1568 ( fp )            //  4-byte Folded Spill
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB1_495
.LBB1_262:                              //  %if.end458
                                        //    in Loop: Header=BB1_253 Depth=1
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	add x26, x25, x11
	sw x11, -1564 ( fp )            //  4-byte Folded Spill
	sw x11, 0 ( x10 )
	jal x0, .LBB1_251
.LBB1_263:
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	lw x12, -1568 ( fp )            //  4-byte Folded Reload
	bltu x0, x24, .LBB1_265
	jal x0, .LBB1_493
.LBB1_264:
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	lw x12, -1568 ( fp )            //  4-byte Folded Reload
.LBB1_265:                              //  %if.end474
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_269
.LBB1_266:                              //  %if.end474
	lw x10, -1564 ( fp )            //  4-byte Folded Reload
	sub x11, x26, x10
	bgeu x11, x12, .LBB1_269
.LBB1_267:                              //  %if.then484
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB1_269
.LBB1_268:                              //  %if.then489
	lw x11, -1560 ( fp )            //  4-byte Folded Reload
	sw x10, 0 ( x11 )
.LBB1_269:                              //  %cleanup497
	add x21, x21, x24
.LBB1_270:                              //  %sw.epilog1693
	lw x10, -1572 ( fp )            //  4-byte Folded Reload
	seqz x10, x10
	add x9, x10, x9
	lw x26, 0 ( x27 )
	beq x0, x26, .LBB1_568
.LBB1_569:                              //  %sw.epilog1693
	jal x0, .LBB1_7
.LBB1_568:                              //  %sw.epilog1693
	jal x0, .LBB1_496
.LBB1_271:                              //  %if.then242
	add x11, x10, 8
	lw x10, -1544 ( fp )            //  4-byte Folded Reload
	bltu x10, x11, .LBB1_498
.LBB1_272:                              //  %if.end261
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_498
.LBB1_273:                              //  %cleanup
	lh x11, 4 ( x20 )
	mv x26, x0
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB1_274:                              //  %land.rhs283.preheader
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -1480 ( fp )            //  4-byte Folded Reload
	mv x13, x25
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x10, x0, 32
	mv x12, x10
	jal x0, .LBB1_276
.LBB1_275:                              //    in Loop: Header=BB1_276 Depth=1
	mv x25, x11
	sw x23, 0 ( x25 )
	add x25, x25, 4
	add x26, x26, 1
	beq x9, x26, .LBB1_280
.LBB1_276:                              //  %land.rhs283
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	mv x22, x13
	mv x24, x12
	jal _fgetwc_r
	mv x23, x10
	xor x10, x23, -1
	beq x0, x10, .LBB1_331
.LBB1_277:                              //  %if.then291
                                        //    in Loop: Header=BB1_276 Depth=1
	mv x13, x22
	sub x10, x25, x13
	mv x11, x25
	sra x25, x10, 2&31
	mv x12, x24
	bltu x25, x12, .LBB1_275
.LBB1_278:                              //  %if.then296
                                        //    in Loop: Header=BB1_276 Depth=1
	sll x11, x12, 3&31
	mv x10, x13
	mv x24, x12
	jal realloc
	mv x13, x10
	beq x0, x13, .LBB1_495
.LBB1_279:                              //  %if.end301
                                        //    in Loop: Header=BB1_276 Depth=1
	lw x10, -1480 ( fp )            //  4-byte Folded Reload
	sll x24, x24, 1&31
	mv x12, x24
	sw x13, 0 ( x10 )
	sll x10, x25, 2&31
	add x25, x10, x13
	sw x23, 0 ( x25 )
	add x25, x25, 4
	add x26, x26, 1
	bne x9, x26, .LBB1_276
.LBB1_280:
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	lw x23, -1480 ( fp )            //  4-byte Folded Reload
	lw x22, -1580 ( fp )            //  4-byte Folded Reload
	bltu x0, x23, .LBB1_204
	jal x0, .LBB1_207
.LBB1_281:                              //  %if.then579
	add x11, x10, 8
	lw x10, -1544 ( fp )            //  4-byte Folded Reload
	bltu x10, x11, .LBB1_498
.LBB1_282:                              //  %if.end599
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_498
.LBB1_283:                              //  %cleanup608
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB1_284:                              //  %if.end611
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -1560 ( fp )            //  4-byte Folded Reload
	sw x24, -1480 ( fp )            //  4-byte Folded Spill
	add x24, x0, 32
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
.LBB1_285:                              //  %if.end622
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x25, x10
	xor x10, x25, -1
	beq x0, x10, .LBB1_296
.LBB1_286:                              //  %land.lhs.true627.lr.ph
	lw x10, -1484 ( fp )            //  4-byte Folded Reload
	lw x11, -1512 ( fp )            //  4-byte Folded Reload
	sub x10, x11, x10
	sra x10, x10, 2&31
	sw x10, -1564 ( fp )            //  4-byte Folded Spill
	lw x10, -1508 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_320
.LBB1_287:                              //  %land.lhs.true627.lr.ph.split
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_332
.LBB1_288:                              //  %land.lhs.true627.preheader
	lw x26, -1480 ( fp )            //  4-byte Folded Reload
	add x9, x23, 1
	add x9, x9, -1
	bltu x0, x9, .LBB1_292
	jal x0, .LBB1_337
.LBB1_289:                              //    in Loop: Header=BB1_292 Depth=1
	sw x11, -1480 ( fp )            //  4-byte Folded Spill
.LBB1_290:                              //  %cleanup676
                                        //    in Loop: Header=BB1_292 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x25, x10
	xor x10, x25, -1
	beq x0, x10, .LBB1_338
.LBB1_291:                              //  %land.lhs.true627
                                        //    in Loop: Header=BB1_292 Depth=1
	add x9, x9, -1
	beq x0, x9, .LBB1_337
.LBB1_292:                              //  %land.end652
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, -1484 ( fp )            //  4-byte Folded Reload
	lw x12, -1564 ( fp )            //  4-byte Folded Reload
	mv x11, x25
	jal wmemchr
	bltu x0, x10, .LBB1_337
.LBB1_293:                              //  %while.body653
                                        //    in Loop: Header=BB1_292 Depth=1
	lw x11, -1480 ( fp )            //  4-byte Folded Reload
	sw x25, 0 ( x11 )
	add x11, x11, 4
	sub x10, x11, x26
	sra x23, x10, 2&31
	bltu x23, x24, .LBB1_289
.LBB1_294:                              //  %if.then665
                                        //    in Loop: Header=BB1_292 Depth=1
	sll x11, x24, 3&31
	mv x10, x26
	jal realloc
	mv x26, x10
	beq x0, x26, .LBB1_495
.LBB1_295:                              //  %if.end671
                                        //    in Loop: Header=BB1_292 Depth=1
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sll x24, x24, 1&31
	sw x26, 0 ( x10 )
	sll x10, x23, 2&31
	add x10, x10, x26
	sw x10, -1480 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_290
.LBB1_296:
	lw x26, -1480 ( fp )            //  4-byte Folded Reload
	lw x11, -1480 ( fp )            //  4-byte Folded Reload
	sub x10, x11, x26
	bltu x0, x10, .LBB1_339
	jal x0, .LBB1_516
.LBB1_297:                              //  %if.then956
	add x11, x10, 8
	lw x10, -1544 ( fp )            //  4-byte Folded Reload
	bltu x10, x11, .LBB1_498
.LBB1_298:                              //  %if.end976
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_498
.LBB1_299:                              //  %cleanup985
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB1_300:                              //  %if.end988
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x23, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x25, x0, 32
.LBB1_301:                              //  %if.end999
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x24, x10
	xor x10, x24, -1
	beq x0, x10, .LBB1_314
.LBB1_302:                              //  %land.lhs.true1004.lr.ph
	sw x26, -1480 ( fp )            //  4-byte Folded Spill
	sw x26, -1560 ( fp )            //  4-byte Folded Spill
	beq x0, x23, .LBB1_304
.LBB1_303:
	sw x26, -1480 ( fp )            //  4-byte Folded Spill
	bltu x0, x9, .LBB1_310
	jal x0, .LBB1_313
.LBB1_304:                              //  %land.end1012.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x24
	jal iswspace
	bltu x0, x10, .LBB1_313
.LBB1_305:                              //  %while.body1013.us
                                        //    in Loop: Header=BB1_304 Depth=1
	mv x26, x25
	mv x25, x23
	lw x23, -1480 ( fp )            //  4-byte Folded Reload
	mv x10, x19
	mv x11, x18
	sw x24, 0 ( x23 )
	jal _fgetwc_r
	mv x24, x10
	xor x10, x24, -1
	beq x0, x10, .LBB1_413
.LBB1_306:                              //  %land.lhs.true1004.us
                                        //    in Loop: Header=BB1_304 Depth=1
	add x23, x23, 4
	sw x23, -1480 ( fp )            //  4-byte Folded Spill
	mv x23, x25
	mv x25, x26
	lw x26, -1560 ( fp )            //  4-byte Folded Reload
	add x21, x21, 1
	add x9, x9, -1
	bltu x0, x9, .LBB1_304
	jal x0, .LBB1_313
.LBB1_307:                              //  %if.end1031
                                        //    in Loop: Header=BB1_310 Depth=1
	sll x10, x24, 2&31
	add x10, x10, x26
	sll x25, x25, 1&31
	sw x26, 0 ( x23 )
	sw x10, -1480 ( fp )            //  4-byte Folded Spill
.LBB1_308:                              //  %cleanup.cont1039
                                        //    in Loop: Header=BB1_310 Depth=1
	mv x10, x19
	mv x11, x18
	add x9, x9, -1
	jal _fgetwc_r
	mv x24, x10
	add x21, x21, 1
	xor x10, x24, -1
	beq x0, x10, .LBB1_315
.LBB1_309:                              //  %land.lhs.true1004
                                        //    in Loop: Header=BB1_310 Depth=1
	beq x0, x9, .LBB1_313
.LBB1_310:                              //  %land.end1012
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x24
	jal iswspace
	bltu x0, x10, .LBB1_313
.LBB1_311:                              //  %while.body1013
                                        //    in Loop: Header=BB1_310 Depth=1
	lw x10, -1480 ( fp )            //  4-byte Folded Reload
	sw x24, 0 ( x10 )
	add x10, x10, 4
	sw x10, -1480 ( fp )            //  4-byte Folded Spill
	sub x10, x10, x26
	sra x24, x10, 2&31
	bltu x24, x25, .LBB1_308
.LBB1_312:                              //  %if.then1025
                                        //    in Loop: Header=BB1_310 Depth=1
	sll x11, x25, 3&31
	mv x10, x26
	jal realloc
	mv x26, x10
	bltu x0, x26, .LBB1_307
	jal x0, .LBB1_495
.LBB1_313:                              //  %if.then1044
	mv x10, x19
	mv x11, x24
	mv x12, x18
	jal _ungetwc_r
	lw x10, -1480 ( fp )            //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	bltu x0, x23, .LBB1_316
	jal x0, .LBB1_319
.LBB1_314:
	sw x26, -1480 ( fp )            //  4-byte Folded Spill
.LBB1_315:                              //  %if.end1046
	lw x10, -1480 ( fp )            //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	beq x0, x23, .LBB1_319
.LBB1_316:                              //  %if.end1046
	lw x10, -1480 ( fp )            //  4-byte Folded Reload
	sub x10, x10, x26
	sra x10, x10, 2&31
	add x11, x10, 1
	bgeu x11, x25, .LBB1_319
.LBB1_317:                              //  %if.then1057
	lw x10, 0 ( x23 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_319
.LBB1_318:                              //  %if.then1062
	sw x10, 0 ( x23 )
.LBB1_319:                              //  %cleanup1066
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	add x9, x9, 1
	lw x26, 0 ( x27 )
	beq x0, x26, .LBB1_570
.LBB1_571:                              //  %cleanup1066
	jal x0, .LBB1_7
.LBB1_570:                              //  %cleanup1066
	jal x0, .LBB1_496
.LBB1_320:
	lw x26, -1480 ( fp )            //  4-byte Folded Reload
.LBB1_321:                              //  %land.end652.us
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, -1484 ( fp )            //  4-byte Folded Reload
	lw x12, -1564 ( fp )            //  4-byte Folded Reload
	mv x11, x25
	jal wmemchr
	beq x0, x10, .LBB1_337
.LBB1_322:                              //  %while.body653.us
                                        //    in Loop: Header=BB1_321 Depth=1
	lw x11, -1480 ( fp )            //  4-byte Folded Reload
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sw x25, 0 ( x11 )
	add x11, x11, 4
	beq x0, x10, .LBB1_327
.LBB1_323:                              //  %while.body653.us
                                        //    in Loop: Header=BB1_321 Depth=1
	sub x10, x11, x26
	sra x9, x10, 2&31
	bltu x9, x24, .LBB1_327
.LBB1_324:                              //  %if.then665.us
                                        //    in Loop: Header=BB1_321 Depth=1
	sll x11, x24, 3&31
	mv x10, x26
	jal realloc
	mv x26, x10
	beq x0, x26, .LBB1_495
.LBB1_325:                              //  %if.end671.us
                                        //    in Loop: Header=BB1_321 Depth=1
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sll x24, x24, 1&31
	sw x26, 0 ( x10 )
	sll x10, x9, 2&31
	add x10, x10, x26
	sw x10, -1480 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_328
.LBB1_327:                              //    in Loop: Header=BB1_321 Depth=1
	sw x11, -1480 ( fp )            //  4-byte Folded Spill
.LBB1_328:                              //  %cleanup676.us
                                        //    in Loop: Header=BB1_321 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x25, x10
	xor x10, x25, -1
	beq x0, x10, .LBB1_338
.LBB1_329:                              //  %land.lhs.true627.us
                                        //    in Loop: Header=BB1_321 Depth=1
	add x23, x23, -1
	bltu x0, x23, .LBB1_321
	jal x0, .LBB1_337
.LBB1_330:                              //  %if.then170
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sh x21, 0 ( x10 )
	lw x26, 0 ( x27 )
	beq x0, x26, .LBB1_572
.LBB1_573:                              //  %if.then170
	jal x0, .LBB1_7
.LBB1_572:                              //  %if.then170
	jal x0, .LBB1_496
.LBB1_331:
	mv x13, x22
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	lw x23, -1480 ( fp )            //  4-byte Folded Reload
	lw x22, -1580 ( fp )            //  4-byte Folded Reload
	mv x12, x24
	bltu x0, x26, .LBB1_203
	jal x0, .LBB1_493
.LBB1_332:
	lw x9, -1480 ( fp )             //  4-byte Folded Reload
.LBB1_333:                              //  %land.end652.us3525
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, -1484 ( fp )            //  4-byte Folded Reload
	lw x12, -1564 ( fp )            //  4-byte Folded Reload
	mv x11, x25
	jal wmemchr
	bltu x0, x10, .LBB1_336
.LBB1_334:                              //  %while.body653.us3527
                                        //    in Loop: Header=BB1_333 Depth=1
	mv x10, x19
	mv x11, x18
	sw x25, 0 ( x9 )
	jal _fgetwc_r
	mv x25, x10
	xor x10, x25, -1
	beq x0, x10, .LBB1_480
.LBB1_335:                              //  %land.lhs.true627.us3516
                                        //    in Loop: Header=BB1_333 Depth=1
	add x9, x9, 4
	add x23, x23, -1
	bltu x0, x23, .LBB1_333
.LBB1_336:
	lw x26, -1480 ( fp )            //  4-byte Folded Reload
	sw x9, -1480 ( fp )             //  4-byte Folded Spill
.LBB1_337:                              //  %if.then683
	mv x10, x19
	mv x11, x25
	mv x12, x18
	jal _ungetwc_r
.LBB1_338:                              //  %if.end685
	lw x11, -1480 ( fp )            //  4-byte Folded Reload
	sub x10, x11, x26
	beq x0, x10, .LBB1_516
.LBB1_339:                              //  %if.end693
	sra x9, x10, 2&31
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sw x0, 0 ( x11 )
	beq x0, x10, .LBB1_439
.LBB1_340:                              //  %if.end693
	add x11, x9, 1
	bgeu x11, x24, .LBB1_439
.LBB1_341:                              //  %if.then700
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sll x11, x11, 2&31
	lw x10, 0 ( x10 )
	jal realloc
	bltu x0, x10, .LBB1_438
	jal x0, .LBB1_439
.LBB1_342:                              //  %if.then740
	add x11, x10, 8
	lw x10, -1544 ( fp )            //  4-byte Folded Reload
	bltu x10, x11, .LBB1_498
.LBB1_343:                              //  %if.end760
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_498
.LBB1_344:                              //  %cleanup769
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB1_345:                              //  %if.end772
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -1560 ( fp )            //  4-byte Folded Reload
	lw x25, -1568 ( fp )            //  4-byte Folded Reload
	mv x13, x0
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x10, x0, 32
	sw x10, -1572 ( fp )            //  4-byte Folded Spill
.LBB1_346:                              //  %if.end784
	add x10, fp, -64
	mv x11, x13
	add x12, x0, 8
	jal memset
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x26, x10
	xor x11, x26, -1
	snez x10, x11
	beq x0, x23, .LBB1_365
.LBB1_347:                              //  %if.end784
	beq x0, x11, .LBB1_365
.LBB1_348:                              //  %land.rhs793.lr.ph
	lw x11, -1484 ( fp )            //  4-byte Folded Reload
	lw x10, -1512 ( fp )            //  4-byte Folded Reload
	lw x12, -1508 ( fp )            //  4-byte Folded Reload
	sub x10, x10, x11
	sra x13, x10, 2&31
	mv x10, x0
	sw x13, -1564 ( fp )            //  4-byte Folded Spill
	beq x0, x12, .LBB1_366
.LBB1_349:                              //  %land.rhs793.preheader
	mv x9, x10
.LBB1_350:                              //  %land.rhs793
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, -1484 ( fp )            //  4-byte Folded Reload
	mv x11, x26
	mv x12, x13
	jal wmemchr
	bltu x0, x10, .LBB1_433
.LBB1_351:                              //  %while.body815
                                        //    in Loop: Header=BB1_350 Depth=1
	mv x10, x19
	mv x11, x25
	mv x12, x26
	add x13, fp, -64
	jal _wcrtomb_r
	beq x0, x10, .LBB1_353
.LBB1_352:                              //  %while.body815
                                        //    in Loop: Header=BB1_350 Depth=1
	xor x11, x10, -1
	bltu x0, x11, .LBB1_354
	jal x0, .LBB1_492
.LBB1_353:                              //  %lor.lhs.false823
                                        //    in Loop: Header=BB1_350 Depth=1
	lw x11, -64 ( fp )
	xor x11, x11, -4
	beq x0, x11, .LBB1_355
.LBB1_354:                              //  %if.then827
                                        //    in Loop: Header=BB1_350 Depth=1
	add x23, x23, -1
.LBB1_355:                              //  %if.end829
                                        //    in Loop: Header=BB1_350 Depth=1
	bltu x0, x24, .LBB1_362
.LBB1_356:                              //  %if.then832
                                        //    in Loop: Header=BB1_350 Depth=1
	mv x11, x25
	add x11, x10, x11
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_361
.LBB1_357:                              //  %land.lhs.true840
                                        //    in Loop: Header=BB1_350 Depth=1
	lw x10, -1568 ( fp )            //  4-byte Folded Reload
	mv x25, x11
	sub x26, x11, x10
	jal __locale_mb_cur_max
	lw x11, -1572 ( fp )            //  4-byte Folded Reload
	bgeu x26, x11, .LBB1_359
.LBB1_358:                              //  %land.lhs.true840
                                        //    in Loop: Header=BB1_350 Depth=1
	sub x10, x11, x10
	bltu x26, x10, .LBB1_362
.LBB1_359:                              //  %if.then848
                                        //    in Loop: Header=BB1_350 Depth=1
	lw x10, -1568 ( fp )            //  4-byte Folded Reload
	sll x11, x11, 1&31
	sw x11, -1572 ( fp )            //  4-byte Folded Spill
	jal realloc
	beq x0, x10, .LBB1_495
.LBB1_360:                              //  %if.end854
                                        //    in Loop: Header=BB1_350 Depth=1
	lw x11, -1560 ( fp )            //  4-byte Folded Reload
	add x25, x26, x10
	sw x10, -1568 ( fp )            //  4-byte Folded Spill
	sw x10, 0 ( x11 )
	jal x0, .LBB1_362
.LBB1_361:                              //    in Loop: Header=BB1_350 Depth=1
	mv x25, x11
.LBB1_362:                              //  %if.end863
                                        //    in Loop: Header=BB1_350 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x26, x10
	xor x11, x26, -1
	add x9, x9, 1
	snez x10, x11
	beq x0, x23, .LBB1_383
.LBB1_363:                              //  %if.end863
                                        //    in Loop: Header=BB1_350 Depth=1
	lw x13, -1564 ( fp )            //  4-byte Folded Reload
	bltu x0, x11, .LBB1_350
	jal x0, .LBB1_383
.LBB1_365:
	mv x9, x0
	bltu x0, x10, .LBB1_433
	jal x0, .LBB1_434
.LBB1_366:                              //  %land.rhs793.lr.ph.split.us
	mv x10, x11
	mv x11, x26
	mv x12, x13
	jal wmemchr
	beq x0, x10, .LBB1_432
.LBB1_367:                              //  %while.body815.us.preheader
	seqz x9, x0
.LBB1_368:                              //  %while.body815.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x25
	mv x12, x26
	add x13, fp, -64
	jal _wcrtomb_r
	beq x0, x10, .LBB1_370
.LBB1_369:                              //  %while.body815.us
                                        //    in Loop: Header=BB1_368 Depth=1
	xor x11, x10, -1
	bltu x0, x11, .LBB1_371
	jal x0, .LBB1_492
.LBB1_370:                              //  %lor.lhs.false823.us
                                        //    in Loop: Header=BB1_368 Depth=1
	lw x11, -64 ( fp )
	xor x11, x11, -4
	beq x0, x11, .LBB1_372
.LBB1_371:                              //  %if.then827.us
                                        //    in Loop: Header=BB1_368 Depth=1
	add x23, x23, -1
.LBB1_372:                              //  %if.end829.us
                                        //    in Loop: Header=BB1_368 Depth=1
	bltu x0, x24, .LBB1_379
.LBB1_373:                              //  %if.then832.us
                                        //    in Loop: Header=BB1_368 Depth=1
	mv x11, x25
	add x11, x10, x11
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_378
.LBB1_374:                              //  %land.lhs.true840.us
                                        //    in Loop: Header=BB1_368 Depth=1
	lw x10, -1568 ( fp )            //  4-byte Folded Reload
	mv x25, x11
	sub x26, x11, x10
	jal __locale_mb_cur_max
	lw x11, -1572 ( fp )            //  4-byte Folded Reload
	bgeu x26, x11, .LBB1_376
.LBB1_375:                              //  %land.lhs.true840.us
                                        //    in Loop: Header=BB1_368 Depth=1
	sub x10, x11, x10
	bltu x26, x10, .LBB1_379
.LBB1_376:                              //  %if.then848.us
                                        //    in Loop: Header=BB1_368 Depth=1
	lw x10, -1568 ( fp )            //  4-byte Folded Reload
	sll x11, x11, 1&31
	sw x11, -1572 ( fp )            //  4-byte Folded Spill
	jal realloc
	beq x0, x10, .LBB1_495
.LBB1_377:                              //  %if.end854.us
                                        //    in Loop: Header=BB1_368 Depth=1
	lw x11, -1560 ( fp )            //  4-byte Folded Reload
	add x25, x26, x10
	sw x10, -1568 ( fp )            //  4-byte Folded Spill
	sw x10, 0 ( x11 )
	jal x0, .LBB1_379
.LBB1_378:                              //    in Loop: Header=BB1_368 Depth=1
	mv x25, x11
.LBB1_379:                              //  %if.end863.us
                                        //    in Loop: Header=BB1_368 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x26, x10
	xor x11, x26, -1
	snez x10, x11
	beq x0, x23, .LBB1_383
.LBB1_380:                              //  %if.end863.us
                                        //    in Loop: Header=BB1_368 Depth=1
	lw x12, -1564 ( fp )            //  4-byte Folded Reload
	beq x0, x11, .LBB1_383
.LBB1_381:                              //  %land.rhs793.us
                                        //    in Loop: Header=BB1_368 Depth=1
	lw x10, -1484 ( fp )            //  4-byte Folded Reload
	mv x11, x26
	jal wmemchr
	add x9, x9, 1
	bltu x0, x10, .LBB1_368
.LBB1_382:                              //  %if.then868.loopexit
	add x9, x9, -1
	jal x0, .LBB1_433
.LBB1_383:                              //  %while.end865
	bltu x0, x10, .LBB1_433
	jal x0, .LBB1_434
.LBB1_384:                              //  %if.then1097
	add x11, x10, 8
	lw x10, -1544 ( fp )            //  4-byte Folded Reload
	bltu x10, x11, .LBB1_498
.LBB1_385:                              //  %if.end1117
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_498
.LBB1_386:                              //  %cleanup1126
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB1_387:                              //  %if.end1129
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -1560 ( fp )            //  4-byte Folded Reload
	mv x13, x0
	sw x24, -1564 ( fp )            //  4-byte Folded Spill
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x10, x0, 32
	sw x10, -1568 ( fp )            //  4-byte Folded Spill
.LBB1_388:                              //  %if.end1141
	mv x10, x25
	mv x11, x13
	add x12, x0, 8
	jal memset
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x26, x10
	xor x11, x26, -1
	snez x10, x11
	beq x0, x9, .LBB1_482
.LBB1_389:                              //  %if.end1141
	beq x0, x11, .LBB1_482
.LBB1_390:                              //  %land.rhs1150.lr.ph
	beq x0, x23, .LBB1_399
.LBB1_391:                              //  %land.rhs1150.us
	mv x10, x26
	jal iswspace
	bltu x0, x10, .LBB1_483
.LBB1_392:                              //  %while.body1155.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x24
	mv x11, x26
	mv x12, x25
	jal wcrtomb
	beq x0, x10, .LBB1_394
.LBB1_393:                              //  %while.body1155.us
                                        //    in Loop: Header=BB1_392 Depth=1
	xor x10, x10, -1
	bltu x0, x10, .LBB1_395
	jal x0, .LBB1_492
.LBB1_394:                              //  %lor.lhs.false1163.us
                                        //    in Loop: Header=BB1_392 Depth=1
	lw x10, -64 ( fp )
	xor x10, x10, -4
	beq x0, x10, .LBB1_396
.LBB1_395:                              //  %if.then1167.us
                                        //    in Loop: Header=BB1_392 Depth=1
	add x9, x9, -1
.LBB1_396:                              //  %if.end1203.us
                                        //    in Loop: Header=BB1_392 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x26, x10
	xor x10, x26, -1
	beq x0, x9, .LBB1_481
.LBB1_397:                              //  %if.end1203.us
                                        //    in Loop: Header=BB1_392 Depth=1
	beq x0, x10, .LBB1_481
.LBB1_398:                              //  %land.rhs1150.us
                                        //    in Loop: Header=BB1_392 Depth=1
	add x21, x21, 1
	mv x10, x26
	jal iswspace
	beq x0, x10, .LBB1_392
	jal x0, .LBB1_483
.LBB1_399:                              //  %land.rhs1150
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x26
	jal iswspace
	bltu x0, x10, .LBB1_483
.LBB1_400:                              //  %while.body1155
                                        //    in Loop: Header=BB1_399 Depth=1
	mv x10, x24
	mv x11, x26
	mv x12, x25
	jal wcrtomb
	beq x0, x10, .LBB1_402
.LBB1_401:                              //  %while.body1155
                                        //    in Loop: Header=BB1_399 Depth=1
	lw x26, -1564 ( fp )            //  4-byte Folded Reload
	xor x11, x10, -1
	bltu x0, x11, .LBB1_403
	jal x0, .LBB1_492
.LBB1_402:                              //  %lor.lhs.false1163
                                        //    in Loop: Header=BB1_399 Depth=1
	lw x11, -64 ( fp )
	lw x26, -1564 ( fp )            //  4-byte Folded Reload
	xor x11, x11, -4
	beq x0, x11, .LBB1_404
.LBB1_403:                              //  %if.then1167
                                        //    in Loop: Header=BB1_399 Depth=1
	add x9, x9, -1
.LBB1_404:                              //  %if.then1172
                                        //    in Loop: Header=BB1_399 Depth=1
	mv x11, x24
	add x11, x10, x11
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_410
.LBB1_405:                              //  %land.lhs.true1180
                                        //    in Loop: Header=BB1_399 Depth=1
	mv x24, x11
	sub x25, x11, x26
	jal __locale_mb_cur_max
	lw x11, -1568 ( fp )            //  4-byte Folded Reload
	bgeu x25, x11, .LBB1_407
.LBB1_406:                              //  %land.lhs.true1180
                                        //    in Loop: Header=BB1_399 Depth=1
	sub x10, x11, x10
	bltu x25, x10, .LBB1_409
.LBB1_407:                              //  %if.then1188
                                        //    in Loop: Header=BB1_399 Depth=1
	sll x11, x11, 1&31
	mv x10, x26
	sw x11, -1568 ( fp )            //  4-byte Folded Spill
	jal realloc
	beq x0, x10, .LBB1_495
.LBB1_408:                              //  %if.end1194
                                        //    in Loop: Header=BB1_399 Depth=1
	lw x11, -1560 ( fp )            //  4-byte Folded Reload
	add x24, x25, x10
	sw x10, -1564 ( fp )            //  4-byte Folded Spill
	sw x10, 0 ( x11 )
.LBB1_409:                              //  %if.end1203
                                        //    in Loop: Header=BB1_399 Depth=1
	add x25, fp, -64
	jal x0, .LBB1_411
.LBB1_410:                              //    in Loop: Header=BB1_399 Depth=1
	mv x24, x11
.LBB1_411:                              //  %if.end1203
                                        //    in Loop: Header=BB1_399 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x26, x10
	xor x11, x26, -1
	add x21, x21, 1
	snez x10, x11
	beq x0, x9, .LBB1_482
.LBB1_412:                              //  %if.end1203
                                        //    in Loop: Header=BB1_399 Depth=1
	bltu x0, x11, .LBB1_399
	jal x0, .LBB1_482
.LBB1_413:                              //  %if.end1046.loopexit
	add x23, x23, 4
	sw x23, -1480 ( fp )            //  4-byte Folded Spill
	mv x23, x25
	mv x25, x26
	lw x26, -1560 ( fp )            //  4-byte Folded Reload
	add x21, x21, 1
	lw x10, -1480 ( fp )            //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	bltu x0, x23, .LBB1_316
	jal x0, .LBB1_319
.LBB1_414:                              //  %if.then1310.split.loop.exit6271
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
.LBB1_415:                              //  %if.then1310
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	mv x13, x0
.LBB1_416:                              //  %for.end
	and x10, x9, 256
	bltu x0, x10, .LBB1_505
.LBB1_417:                              //  %if.end1325
	lw x11, -4 ( x25 )
	or x10, x11, 32
	xor x10, x10, 120
	bltu x0, x10, .LBB1_419
.LBB1_418:                              //  %if.then1332
	mv x10, x19
	mv x12, x18
	add x25, x25, -4
	jal _ungetwc_r
	mv x13, x0
.LBB1_419:                              //  %if.end1335
	and x10, x9, 16
	bltu x0, x10, .LBB1_426
.LBB1_420:                              //  %if.then1339
	mv x12, x13
	lw x13, -1472 ( fp )            //  4-byte Folded Reload
	lw x14, -1496 ( fp )            //  4-byte Folded Reload
	mv x10, x19
	add x11, fp, -1464
	sw x0, 0 ( x25 )
	call.reg x14
	and x11, x9, 32
	bltu x0, x11, .LBB1_425
.LBB1_421:                              //  %if.else1346
	and x11, x9, 8
	mv x12, x0
	bltu x0, x11, .LBB1_427
.LBB1_422:                              //  %if.else1352
	and x11, x9, 4
	bltu x0, x11, .LBB1_428
.LBB1_423:                              //  %if.else1358
	and x11, x9, 1
	bltu x0, x11, .LBB1_425
.LBB1_424:                              //  %if.else1363
	and x11, x9, 2
	bltu x0, x11, .LBB1_441
.LBB1_425:                              //  %if.else1377
	lw x11, -56 ( fp )
	add x12, x11, 4
	sw x12, -56 ( fp )
	lw x11, 0 ( x11 )
	sw x10, 0 ( x11 )
	jal x0, .LBB1_429
.LBB1_426:
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	jal x0, .LBB1_431
.LBB1_427:                              //  %if.then1349
	lw x11, -56 ( fp )
	add x12, x11, 4
	sw x12, -56 ( fp )
	lw x11, 0 ( x11 )
	sb x10, 0 ( x11 )
	jal x0, .LBB1_429
.LBB1_428:                              //  %if.then1355
	lw x11, -56 ( fp )
	add x12, x11, 4
	sw x12, -56 ( fp )
	lw x11, 0 ( x11 )
	sh x10, 0 ( x11 )
.LBB1_429:                              //  %if.end1383
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
.LBB1_430:                              //  %if.end1383
	add x9, x9, 1
.LBB1_431:                              //  %if.end1385
	add x10, fp, -1464
	sub x10, x25, x10
	sra x10, x10, 2&31
	sw x25, -1480 ( fp )            //  4-byte Folded Spill
	add x21, x21, x10
	lw x26, 0 ( x27 )
	beq x0, x26, .LBB1_574
.LBB1_575:                              //  %if.end1385
	jal x0, .LBB1_7
.LBB1_574:                              //  %if.end1385
	jal x0, .LBB1_496
.LBB1_432:
	mv x9, x0
.LBB1_433:                              //  %if.then868
	mv x10, x19
	mv x11, x26
	mv x12, x18
	jal _ungetwc_r
.LBB1_434:                              //  %if.end870
	bltu x0, x24, .LBB1_440
.LBB1_435:                              //  %if.then873
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sb x0, 0 ( x25 )
	beq x0, x10, .LBB1_439
.LBB1_436:                              //  %if.then873
	lw x10, -1568 ( fp )            //  4-byte Folded Reload
	sub x10, x25, x10
	add x11, x10, 1
	lw x10, -1572 ( fp )            //  4-byte Folded Reload
	bgeu x11, x10, .LBB1_439
.LBB1_437:                              //  %if.then883
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB1_439
.LBB1_438:                              //  %if.then888
	lw x11, -1560 ( fp )            //  4-byte Folded Reload
	sw x10, 0 ( x11 )
.LBB1_439:                              //  %if.end890
	lw x10, -1556 ( fp )            //  4-byte Folded Reload
	add x10, x10, 1
	sw x10, -1556 ( fp )            //  4-byte Folded Spill
.LBB1_440:                              //  %if.end899
	add x21, x21, x9
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	lw x26, 0 ( x27 )
	beq x0, x26, .LBB1_576
.LBB1_577:                              //  %if.end899
	jal x0, .LBB1_7
.LBB1_576:                              //  %if.end899
	jal x0, .LBB1_496
.LBB1_441:                              //  %if.then1366
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	lw x10, -1504 ( fp )            //  4-byte Folded Reload
	lw x11, -1496 ( fp )            //  4-byte Folded Reload
	beq x11, x10, .LBB1_490
.LBB1_442:                              //  %if.else1372
	lw x13, -1472 ( fp )            //  4-byte Folded Reload
	mv x10, x19
	add x11, fp, -1464
	jal _wcstoll_r
	jal x0, .LBB1_491
.LBB1_443:                              //  %sw.epilog1537
	xor x10, x11, -1
	mv x13, x0
	beq x0, x10, .LBB1_445
.LBB1_444:                              //  %if.then1540
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	mv x13, x0
.LBB1_445:                              //  %for.end1546
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_447
.LBB1_446:
	and x25, x25, -257
	jal x0, .LBB1_448
.LBB1_447:                              //  %for.end1546.thread
	sw x13, -1560 ( fp )            //  4-byte Folded Spill
.LBB1_448:
	lw x10, -1480 ( fp )            //  4-byte Folded Reload
	seqz x11, x0
	sll x10, x10, 24&31
	sra x10, x10, 24&31
	add x10, x10, -1
	bgeu x11, x10, .LBB1_507
.LBB1_449:                              //  %if.end1565
	sll x10, x24, 24&31
	sra x10, x10, 24&31
	add x11, x10, -1
	add x12, x0, 6
	bltu x12, x11, .LBB1_455
.LBB1_450:                              //  %if.then1570
	slti x10, x10, 3
	bltu x0, x10, .LBB1_510
.LBB1_451:                              //  %while.cond1575.preheader
	and x10, x24, 255
	xor x10, x10, 3
	beq x0, x10, .LBB1_455
.LBB1_452:                              //  %while.body1580.preheader
	sll x10, x9, 2&31
	add x11, fp, -1468
	add x23, x10, x11
	add x10, x24, -4
	and x10, x10, 255
	add x26, x0, 3
	sw x10, -1480 ( fp )            //  4-byte Folded Spill
.LBB1_453:                              //  %while.body1580
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x23 )
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	lw x15, -1488 ( fp )            //  4-byte Folded Reload
	sll x10, x24, 24&31
	add x23, x23, -4
	add x9, x9, -1
	add x10, x15, x10
	sra x24, x10, 24&31
	blt x26, x24, .LBB1_453
.LBB1_454:                              //  %if.end1596.loopexit
	lw x10, -1480 ( fp )            //  4-byte Folded Reload
	mv x13, x0
	xor x10, x10, -1
	add x21, x10, x21
.LBB1_455:                              //  %if.end1596
	sll x10, x9, 2&31
	add x11, fp, -1464
	add x23, x10, x11
	and x11, x25, 256
	bltu x0, x11, .LBB1_457
.LBB1_456:
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	sw x23, -1480 ( fp )            //  4-byte Folded Spill
	and x10, x25, 16
	beq x0, x10, .LBB1_578
.LBB1_579:
	jal x0, .LBB1_6
.LBB1_578:
	jal x0, .LBB1_463
.LBB1_457:                              //  %if.then1599
	and x11, x25, 1024
	bltu x0, x11, .LBB1_513
.LBB1_458:                              //  %if.end1612
	lw x11, -4 ( x23 )
	or x10, x11, 32
	xor x10, x10, 101
	bltu x0, x10, .LBB1_460
.LBB1_459:
	add x10, x23, -4
	add x21, x21, -1
	jal x0, .LBB1_461
.LBB1_460:                              //  %if.then1620
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	lw x11, -8 ( x23 )
	add x10, x23, -8
	add x21, x21, -2
.LBB1_461:                              //  %if.end1624
	sw x10, -1480 ( fp )            //  4-byte Folded Spill
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	mv x13, x0
	and x10, x25, 16
	beq x0, x10, .LBB1_463
.LBB1_580:                              //  %if.end1624
	jal x0, .LBB1_6
.LBB1_463:                              //  %if.then1630
	lw x10, -1480 ( fp )            //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	and x10, x25, 1536
	xor x10, x10, 1024
	bltu x0, x10, .LBB1_466
.LBB1_464:                              //  %if.end1645
	lw x10, -1564 ( fp )            //  4-byte Folded Reload
	lw x11, -1560 ( fp )            //  4-byte Folded Reload
	sub x10, x11, x10
	beq x0, x10, .LBB1_470
.LBB1_465:
	lw x12, -1480 ( fp )            //  4-byte Folded Reload
	sub x10, x0, x10
	lw x11, -1536 ( fp )            //  4-byte Folded Reload
	bltu x12, x11, .LBB1_469
.LBB1_468:                              //  %if.then1647
	lw x12, -1548 ( fp )            //  4-byte Folded Reload
.LBB1_469:                              //  %if.then1647
	add sp, sp, -16
	lw x11, -1540 ( fp )            //  4-byte Folded Reload
	sw x10, 12 ( sp )
	add x10, x0, 11
	sw x10, 4 ( sp )
	sw x11, 8 ( sp )
	sw x12, 0 ( sp )
	jal swprintf
	add sp, sp, 16
	mv x13, x0
	jal x0, .LBB1_470
.LBB1_466:                              //  %if.else1638
	lw x10, -1568 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_470
.LBB1_467:                              //  %if.end1645.thread2731
	lw x23, -1572 ( fp )            //  4-byte Folded Reload
	mv x24, x10
	mv x12, x13
	mv x10, x19
	add x11, x23, 4
	add x13, x0, 10
	jal _wcstol_r
	mv x12, x23
	sub x10, x10, x24
	lw x11, -1536 ( fp )            //  4-byte Folded Reload
	bltu x12, x11, .LBB1_469
	jal x0, .LBB1_468
.LBB1_470:                              //  %if.end1660
	mv x10, x19
	add x11, fp, -1464
	mv x12, x13
	jal _wcstod_r
	mv x23, x10
	mv x24, x11
	and x10, x25, 1
	bltu x0, x10, .LBB1_474
.LBB1_471:                              //  %if.else1667
	mv x26, x9
	and x10, x25, 2
	bltu x0, x10, .LBB1_475
.LBB1_472:                              //  %if.else1673
	lw x9, -56 ( fp )
	mv x13, x24
	mv x11, x24
	mv x12, x23
	add x10, x9, 4
	sw x10, -56 ( fp )
	mv x10, x23
	jal __unorddf2
	lw x9, 0 ( x9 )
	bltu x0, x10, .LBB1_476
.LBB1_473:                              //  %if.else1678
	mv x10, x23
	mv x11, x24
	jal __truncdfsf2
	jal x0, .LBB1_477
.LBB1_474:                              //  %if.then1665
	lw x10, -56 ( fp )
	add x9, x9, 1
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x24, 4 ( x10 )
	sw x23, 0 ( x10 )
	lw x26, 0 ( x27 )
	beq x0, x26, .LBB1_581
.LBB1_582:                              //  %if.then1665
	jal x0, .LBB1_7
.LBB1_581:                              //  %if.then1665
	jal x0, .LBB1_496
.LBB1_475:                              //  %if.then1670
	lw x9, -56 ( fp )
	mv x11, x24
	add x10, x9, 4
	sw x10, -56 ( fp )
	mv x10, x23
	jal __extenddftf2
	lw x14, 0 ( x9 )
	sw x13, 12 ( x14 )
	sw x12, 8 ( x14 )
	sw x11, 4 ( x14 )
	sw x10, 0 ( x14 )
	jal x0, .LBB1_478
.LBB1_476:                              //  %if.then1676
	lw x10, -1552 ( fp )            //  4-byte Folded Reload
	jal nanf
.LBB1_477:                              //  %if.end1682
	sw x10, 0 ( x9 )
.LBB1_478:                              //  %if.end1682
	mv x9, x26
	add x9, x9, 1
	lw x26, 0 ( x27 )
	beq x0, x26, .LBB1_583
.LBB1_584:                              //  %if.end1682
	jal x0, .LBB1_7
.LBB1_583:                              //  %if.end1682
	jal x0, .LBB1_496
.LBB1_479:                              //  %if.then181
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sra x11, x21, 31&31
	sw x11, 4 ( x10 )
	sw x21, 0 ( x10 )
	lw x26, 0 ( x27 )
	beq x0, x26, .LBB1_585
.LBB1_586:                              //  %if.then181
	jal x0, .LBB1_7
.LBB1_585:                              //  %if.then181
	jal x0, .LBB1_496
.LBB1_480:                              //  %if.end685.loopexit27
	lw x26, -1480 ( fp )            //  4-byte Folded Reload
	add x10, x9, 4
	sw x10, -1480 ( fp )            //  4-byte Folded Spill
	lw x11, -1480 ( fp )            //  4-byte Folded Reload
	sub x10, x11, x26
	bltu x0, x10, .LBB1_339
	jal x0, .LBB1_516
.LBB1_481:                              //  %while.end1205.loopexit
	snez x10, x10
	add x21, x21, 1
.LBB1_482:                              //  %while.end1205
	beq x0, x10, .LBB1_484
.LBB1_483:                              //  %if.then1208
	mv x10, x19
	mv x11, x26
	mv x12, x18
	jal _ungetwc_r
.LBB1_484:                              //  %if.end1210
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	beq x0, x23, .LBB1_485
.LBB1_587:                              //  %if.end1210
	jal x0, .LBB1_6
.LBB1_485:                              //  %if.then1213
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sb x0, 0 ( x24 )
	beq x0, x10, .LBB1_489
.LBB1_486:                              //  %if.then1213
	lw x10, -1564 ( fp )            //  4-byte Folded Reload
	sub x10, x24, x10
	add x11, x10, 1
	lw x10, -1568 ( fp )            //  4-byte Folded Reload
	bgeu x11, x10, .LBB1_489
.LBB1_487:                              //  %if.then1223
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB1_489
.LBB1_488:                              //  %if.then1228
	lw x11, -1560 ( fp )            //  4-byte Folded Reload
	sw x10, 0 ( x11 )
.LBB1_489:                              //  %if.end1230
	add x9, x9, 1
	lw x26, 0 ( x27 )
	beq x0, x26, .LBB1_588
.LBB1_589:                              //  %if.end1230
	jal x0, .LBB1_7
.LBB1_588:                              //  %if.end1230
	jal x0, .LBB1_496
.LBB1_490:                              //  %if.then1369
	lw x13, -1472 ( fp )            //  4-byte Folded Reload
	mv x10, x19
	add x11, fp, -1464
	jal _wcstoull_r
.LBB1_491:                              //  %if.end1375
	lw x12, -56 ( fp )
	add x13, x12, 4
	sw x13, -56 ( fp )
	lw x12, 0 ( x12 )
	sw x11, 4 ( x12 )
	sw x10, 0 ( x12 )
	jal x0, .LBB1_430
.LBB1_492:                              //  %input_failure.loopexit35
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
.LBB1_493:                              //  %input_failure
	beq x0, x9, .LBB1_495
.LBB1_494:                              //  %land.lhs.true1695
	lbu x10, 12 ( x18 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB1_496
.LBB1_495:                              //  %land.lhs.true1695
	add x9, x0, -1
.LBB1_496:                              //  %all_done
	beq x0, x20, .LBB1_504
.LBB1_497:                              //  %if.then1718
	xor x10, x9, -1
	bltu x0, x10, .LBB1_502
.LBB1_498:                              //  %for.cond1722.preheader
	lhu x10, 6 ( x20 )
	add x9, x0, -1
	beq x0, x10, .LBB1_502
.LBB1_499:                              //  %for.body1727.lr.ph
	mv x19, x9
	mv x9, x0
	mv x18, x9
.LBB1_500:                              //  %for.body1727
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
	bltu x18, x10, .LBB1_500
.LBB1_501:
	mv x9, x19
.LBB1_502:                              //  %if.end1735
	lw x10, 0 ( x20 )
	beq x0, x10, .LBB1_504
.LBB1_503:                              //  %if.then1738
	jal free
.LBB1_504:                              //  %cleanup1744
	mv x10, x9
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
.LBB1_505:                              //  %if.then1317
	beq x0, x23, .LBB1_516
.LBB1_506:                              //  %if.then1321
	lw x11, -4 ( x25 )
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	bltu x0, x20, .LBB1_497
	jal x0, .LBB1_504
.LBB1_507:                              //  %while.cond1556.preheader
	add x9, fp, -1464
	bgeu x9, x26, .LBB1_516
.LBB1_508:                              //  %while.body1560
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, -4 ( x26 )
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	add x26, x26, -4
	bltu x9, x26, .LBB1_508
	jal x0, .LBB1_516
.LBB1_509:                              //  %if.then44
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	bltu x0, x9, .LBB1_494
	jal x0, .LBB1_495
.LBB1_510:                              //  %while.cond1586.preheader
	bge x0, x9, .LBB1_516
.LBB1_511:                              //  %while.body1590.preheader
	sll x10, x9, 2&31
	add x11, fp, -1464
	add x10, x10, x11
	add x21, x10, -4
.LBB1_512:                              //  %while.body1590
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x21 )
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	add x21, x21, -4
	add x9, x9, -1
	blt x0, x9, .LBB1_512
	jal x0, .LBB1_516
.LBB1_513:                              //  %while.cond1603.preheader
	bge x0, x9, .LBB1_516
.LBB1_514:                              //  %while.body1607.preheader
	add x11, fp, -1464
	add x10, x10, x11
	add x21, x10, -4
.LBB1_515:                              //  %while.body1607
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x21 )
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	add x21, x21, -4
	add x9, x9, -1
	blt x0, x9, .LBB1_515
.LBB1_516:                              //  %all_done
	lw x9, -1556 ( fp )             //  4-byte Folded Reload
	bltu x0, x20, .LBB1_497
	jal x0, .LBB1_504
.Lfunc_end1:
	.size	__svfwscanf_r, .Lfunc_end1-__svfwscanf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_38
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_31
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_27
	.long	.LBB1_27
	.long	.LBB1_27
	.long	.LBB1_27
	.long	.LBB1_27
	.long	.LBB1_27
	.long	.LBB1_27
	.long	.LBB1_27
	.long	.LBB1_27
	.long	.LBB1_27
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_37
	.long	.LBB1_496
	.long	.LBB1_42
	.long	.LBB1_496
	.long	.LBB1_37
	.long	.LBB1_37
	.long	.LBB1_37
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_29
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_43
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_41
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_44
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_37
	.long	.LBB1_496
	.long	.LBB1_46
	.long	.LBB1_47
	.long	.LBB1_37
	.long	.LBB1_37
	.long	.LBB1_37
	.long	.LBB1_17
	.long	.LBB1_48
	.long	.LBB1_29
	.long	.LBB1_496
	.long	.LBB1_20
	.long	.LBB1_33
	.long	.LBB1_49
	.long	.LBB1_55
	.long	.LBB1_56
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_58
	.long	.LBB1_16
	.long	.LBB1_59
	.long	.LBB1_496
	.long	.LBB1_496
	.long	.LBB1_41
	.long	.LBB1_496
	.long	.LBB1_16
JTI1_1:
	.long	.LBB1_75
	.long	.LBB1_86
	.long	.LBB1_96
	.long	.LBB1_105
	.long	.LBB1_127
JTI1_2:
	.long	.LBB1_152
	.long	.LBB1_172
	.long	.LBB1_152
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_175
	.long	.LBB1_148
	.long	.LBB1_148
	.long	.LBB1_148
	.long	.LBB1_148
	.long	.LBB1_148
	.long	.LBB1_148
	.long	.LBB1_148
	.long	.LBB1_148
	.long	.LBB1_148
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_154
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_156
	.long	.LBB1_162
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_164
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_168
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_170
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_154
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_156
	.long	.LBB1_162
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_178
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_164
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_168
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_172
	.long	.LBB1_170
JTI1_3:
	.long	.LBB1_416
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_115
	.long	.LBB1_415
	.long	.LBB1_115
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_122
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_117
	.long	.LBB1_117
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_119
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_415
	.long	.LBB1_119
                                        //  -- End function
	.text
	.globl	__svfwscanf             //  -- Begin function __svfwscanf
	.type	__svfwscanf,@function
__svfwscanf:                            //  @__svfwscanf
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
	j __svfwscanf_r
.Lfunc_end2:
	.size	__svfwscanf, .Lfunc_end2-__svfwscanf
	.cfi_endproc
                                        //  -- End function
	.globl	_vfwscanf_r             //  -- Begin function _vfwscanf_r
	.type	_vfwscanf_r,@function
_vfwscanf_r:                            //  @_vfwscanf_r
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
	j __svfwscanf_r
.Lfunc_end3:
	.size	_vfwscanf_r, .Lfunc_end3-_vfwscanf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	__svfwscanf_r.basefix,@object //  @__svfwscanf_r.basefix
	.section	.rodata,"a",@progbits
	.p2align	1
__svfwscanf_r.basefix:
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
	.size	__svfwscanf_r.basefix, 34

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
