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
	lw x25, 0 ( x27 )
	beq x0, x25, .LBB1_4
.LBB1_3:                                //  %if.end17.lr.ph.lr.ph.lr.ph.lr.ph.lr.ph
	add x12, fp, -1464
	add x10, x12, 4
	sw x10, -1524 ( fp )            //  4-byte Folded Spill
	add x10, x12, 1356
	sw x10, -1536 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( JTI1_0 )
	add x26, x10, %lo( JTI1_0 )
	lui x10, %hi( JTI1_1 )
	add x10, x10, %lo( JTI1_1 )
	sw x10, -1492 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	sw x10, -1544 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( _wcstoul_r )
	add x10, x10, %lo( _wcstoul_r )
	sw x10, -1508 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( JTI1_3 )
	add x10, x10, %lo( JTI1_3 )
	sw x10, -1488 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( -65665 )
	add x10, x10, %lo( -65665 )
	sw x10, -1528 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( __svfwscanf_r.basefix )
	add x10, x10, %lo( __svfwscanf_r.basefix )
	sw x10, -1504 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( -16777216 )
	add x13, x10, %lo( -16777216 )
	lui x10, %hi( .str.1 )
	add x10, x10, %lo( .str.1 )
	sw x10, -1552 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	sw x10, -1540 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( JTI1_2 )
	add x10, x10, %lo( JTI1_2 )
	sw x10, -1480 ( fp )            //  4-byte Folded Spill
	lui x10, %hi( _wcstol_r )
	mv x11, x0
	add x10, x10, %lo( _wcstol_r )
	sw x10, -1520 ( fp )            //  4-byte Folded Spill
	add x10, x12, 1352
	mv x24, x11
	add x23, x0, -1
	mv x22, x11
	mv x21, x11
	sw x14, -1532 ( fp )            //  4-byte Folded Spill
	sw x11, -1472 ( fp )            //  4-byte Folded Spill
	sw x11, -1476 ( fp )            //  4-byte Folded Spill
	sw x11, -1500 ( fp )            //  4-byte Folded Spill
	sw x11, -1496 ( fp )            //  4-byte Folded Spill
	sw x11, -1516 ( fp )            //  4-byte Folded Spill
	sw x10, -1548 ( fp )            //  4-byte Folded Spill
	sw x11, -1512 ( fp )            //  4-byte Folded Spill
	sw x13, -1484 ( fp )            //  4-byte Folded Spill
	mv x10, x25
	add x27, x27, 4
	jal iswspace
	bltu x0, x10, .LBB1_8
	jal x0, .LBB1_11
.LBB1_4:
	mv x22, x0
	jal x0, .LBB1_509
.LBB1_5:
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
.LBB1_6:                                //  %if.end30
	lw x25, 0 ( x27 )
	bltu x0, x25, .LBB1_7
.LBB1_537:                              //  %if.end30
	jal x0, .LBB1_502
.LBB1_7:                                //  %if.end17
	mv x10, x25
	add x27, x27, 4
	jal iswspace
	beq x0, x10, .LBB1_11
.LBB1_8:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x20, x10
	xor x10, x20, -1
	beq x0, x10, .LBB1_6
.LBB1_9:                                //  %land.rhs
                                        //    in Loop: Header=BB1_8 Depth=1
	mv x10, x20
	jal iswspace
	bltu x0, x10, .LBB1_8
.LBB1_10:                               //  %if.then28
	mv x10, x19
	mv x11, x20
	mv x12, x18
	jal _ungetwc_r
	lw x25, 0 ( x27 )
	bltu x0, x25, .LBB1_7
	jal x0, .LBB1_502
.LBB1_11:                               //  %if.end31
	xor x10, x25, 37
	bltu x0, x10, .LBB1_39
.LBB1_12:                               //  %again.preheader
	mv x9, x0
	mv x20, x9
.LBB1_13:                               //  %again
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_14 Depth 2
                                        //        Child Loop BB1_15 Depth 3
	mv x10, x27
.LBB1_14:                               //  %again
                                        //    Parent Loop BB1_13 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_15 Depth 3
	lw x25, 0 ( x10 )
	add x12, x0, 85
	add x11, x25, -37
	bgeu x12, x11, .LBB1_15
.LBB1_538:                              //  %again
	jal x0, .LBB1_502
.LBB1_15:                               //  %again
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_14 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sll x11, x11, 2&31
	add x11, x26, x11
	lw x11, 0 ( x11 )
	add x27, x10, 4
	jr x11
.LBB1_16:                               //  %sw.bb96
                                        //    in Loop: Header=BB1_14 Depth=2
	and x11, x9, 15
	mv x10, x27
	beq x0, x11, .LBB1_14
	jal x0, .LBB1_502
.LBB1_17:                               //  %sw.bb72
                                        //    in Loop: Header=BB1_15 Depth=3
	and x11, x9, 15
	beq x0, x11, .LBB1_18
.LBB1_539:                              //  %sw.bb72
	jal x0, .LBB1_502
.LBB1_18:                               //  %if.end76
                                        //    in Loop: Header=BB1_15 Depth=3
	lw x11, 4 ( x10 )
	add x12, x0, 104
	beq x11, x12, .LBB1_24
.LBB1_19:                               //  %if.end76
                                        //    in Loop: Header=BB1_15 Depth=3
	add x11, x0, 4
	jal x0, .LBB1_23
.LBB1_20:                               //  %sw.bb54
                                        //    in Loop: Header=BB1_15 Depth=3
	and x11, x9, 15
	beq x0, x11, .LBB1_21
.LBB1_540:                              //  %sw.bb54
	jal x0, .LBB1_502
.LBB1_21:                               //  %if.end58
                                        //    in Loop: Header=BB1_15 Depth=3
	lw x11, 4 ( x10 )
	add x12, x0, 108
	beq x11, x12, .LBB1_25
.LBB1_22:                               //  %if.end58
                                        //    in Loop: Header=BB1_15 Depth=3
	seqz x11, x0
.LBB1_23:                               //  %if.end58
                                        //    in Loop: Header=BB1_15 Depth=3
	mv x10, x27
	jal x0, .LBB1_27
.LBB1_24:                               //    in Loop: Header=BB1_15 Depth=3
	add x11, x0, 8
	jal x0, .LBB1_26
.LBB1_25:                               //    in Loop: Header=BB1_15 Depth=3
	add x11, x0, 2
.LBB1_26:                               //    in Loop: Header=BB1_15 Depth=3
	add x10, x10, 8
.LBB1_27:                               //    in Loop: Header=BB1_15 Depth=3
	or x9, x9, x11
	lw x25, 0 ( x10 )
	add x12, x0, 85
	add x11, x25, -37
	bgeu x12, x11, .LBB1_15
	jal x0, .LBB1_502
.LBB1_28:                               //  %sw.bb113
                                        //    in Loop: Header=BB1_13 Depth=1
	and x10, x9, 143
	beq x0, x10, .LBB1_29
.LBB1_541:                              //  %sw.bb113
	jal x0, .LBB1_502
.LBB1_29:                               //  %if.end117
                                        //    in Loop: Header=BB1_13 Depth=1
	mv x10, x20
	add x11, x0, 10
	jal __mulsi3
	add x10, x25, x10
	add x20, x10, -48
	jal x0, .LBB1_13
.LBB1_30:                               //  %sw.bb66
                                        //    in Loop: Header=BB1_13 Depth=1
	and x10, x9, 15
	beq x0, x10, .LBB1_31
.LBB1_542:                              //  %sw.bb66
	jal x0, .LBB1_502
.LBB1_31:                               //  %if.end70
                                        //    in Loop: Header=BB1_13 Depth=1
	or x9, x9, 2
	jal x0, .LBB1_13
.LBB1_32:                               //  %sw.bb47
                                        //    in Loop: Header=BB1_13 Depth=1
	and x10, x9, 159
	or x10, x20, x10
	beq x0, x10, .LBB1_33
.LBB1_543:                              //  %sw.bb47
	jal x0, .LBB1_502
.LBB1_33:                               //  %if.end52
                                        //    in Loop: Header=BB1_13 Depth=1
	or x9, x9, 16
	mv x20, x0
	jal x0, .LBB1_13
.LBB1_34:                               //  %sw.bb101
                                        //    in Loop: Header=BB1_13 Depth=1
	and x10, x9, 143
	beq x0, x10, .LBB1_35
.LBB1_544:                              //  %sw.bb101
	jal x0, .LBB1_502
.LBB1_35:                               //  %do.body106
                                        //    in Loop: Header=BB1_13 Depth=1
	bltu x0, x24, .LBB1_37
.LBB1_36:                               //  %if.then108
                                        //    in Loop: Header=BB1_13 Depth=1
	mv x10, sp
	add x24, x10, -16
	mv sp, x24
	sw x0, -12 ( x10 )
	sw x0, -16 ( x10 )
.LBB1_37:                               //  %do.end111
                                        //    in Loop: Header=BB1_13 Depth=1
	or x9, x9, 128
	jal x0, .LBB1_13
.LBB1_38:                               //  %sw.epilog.loopexit5499
	sw x22, -1556 ( fp )            //  4-byte Folded Spill
	add x22, x0, 4
	and x10, x9, 64
	beq x0, x10, .LBB1_70
	jal x0, .LBB1_74
.LBB1_39:                               //  %literal
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x11, x10
	xor x10, x11, -1
	bltu x0, x10, .LBB1_40
.LBB1_545:                              //  %literal
	jal x0, .LBB1_497
.LBB1_40:                               //  %if.end41
	beq x11, x25, .LBB1_41
.LBB1_546:                              //  %if.end41
	jal x0, .LBB1_516
.LBB1_41:                               //  %if.end46
	add x21, x21, 1
	lw x25, 0 ( x27 )
	bltu x0, x25, .LBB1_7
	jal x0, .LBB1_502
.LBB1_42:                               //  %sw.bb122
	or x9, x9, 512
	sw x22, -1556 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_58
.LBB1_43:                               //  %sw.bb152
	sw x22, -1556 ( fp )            //  4-byte Folded Spill
	or x9, x9, 1
	or x9, x9, 64
	mv x22, x0
	and x10, x9, 64
	beq x0, x10, .LBB1_70
	jal x0, .LBB1_74
.LBB1_44:                               //  %sw.bb125
	sw x22, -1556 ( fp )            //  4-byte Folded Spill
	or x9, x9, 1
	add x22, x0, 2
	and x10, x9, 64
	beq x0, x10, .LBB1_70
	jal x0, .LBB1_74
.LBB1_45:                               //  %sw.bb128
	lw x11, 4 ( x10 )
	add x12, x0, 94
	beq x11, x12, .LBB1_63
.LBB1_46:                               //  %sw.bb128
	add x12, x0, 4
	sw x27, -1496 ( fp )            //  4-byte Folded Spill
	add x10, x12, x10
	lw x10, 0 ( x10 )
	add x12, x0, 93
	beq x10, x12, .LBB1_65
.LBB1_64:                               //  %sw.bb128
	lw x27, -1496 ( fp )            //  4-byte Folded Reload
	jal x0, .LBB1_66
.LBB1_47:                               //  %sw.bb154.loopexit
	sw x22, -1556 ( fp )            //  4-byte Folded Spill
	or x9, x9, 64
	mv x22, x0
	and x10, x9, 64
	beq x0, x10, .LBB1_70
	jal x0, .LBB1_74
.LBB1_48:                               //  %sw.epilog.loopexit
	lw x10, -1520 ( fp )            //  4-byte Folded Reload
	jal x0, .LBB1_61
.LBB1_49:                               //  %sw.epilog.loopexit3680
	lw x10, -1520 ( fp )            //  4-byte Folded Reload
	sw x22, -1556 ( fp )            //  4-byte Folded Spill
	sw x10, -1500 ( fp )            //  4-byte Folded Spill
	mv x10, x0
	sw x10, -1476 ( fp )            //  4-byte Folded Spill
	add x22, x0, 3
	and x10, x9, 64
	beq x0, x10, .LBB1_70
	jal x0, .LBB1_74
.LBB1_50:                               //  %sw.bb158
	and x10, x9, 16
	bltu x0, x10, .LBB1_6
.LBB1_51:                               //  %if.end162
	and x10, x9, 8
	bltu x0, x10, .LBB1_239
.LBB1_52:                               //  %if.else167
	and x10, x9, 4
	beq x0, x10, .LBB1_53
.LBB1_547:                              //  %if.else167
	jal x0, .LBB1_335
.LBB1_53:                               //  %if.else173
	and x10, x9, 1
	bltu x0, x10, .LBB1_55
.LBB1_54:                               //  %if.else178
	and x10, x9, 2
	beq x0, x10, .LBB1_55
.LBB1_548:                              //  %if.else178
	jal x0, .LBB1_481
.LBB1_55:                               //  %if.then176
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x21, 0 ( x10 )
	lw x25, 0 ( x27 )
	bltu x0, x25, .LBB1_7
	jal x0, .LBB1_502
.LBB1_56:                               //  %sw.epilog.loopexit4359
	lw x10, -1508 ( fp )            //  4-byte Folded Reload
	sw x22, -1556 ( fp )            //  4-byte Folded Spill
	sw x10, -1500 ( fp )            //  4-byte Folded Spill
	add x10, x0, 8
	sw x10, -1476 ( fp )            //  4-byte Folded Spill
	add x22, x0, 3
	and x10, x9, 64
	beq x0, x10, .LBB1_70
	jal x0, .LBB1_74
.LBB1_57:                               //  %sw.bb156
	sw x22, -1556 ( fp )            //  4-byte Folded Spill
	or x9, x9, 544
.LBB1_58:                               //  %sw.epilog
	lw x10, -1508 ( fp )            //  4-byte Folded Reload
	sw x10, -1500 ( fp )            //  4-byte Folded Spill
	add x10, x0, 16
	sw x10, -1476 ( fp )            //  4-byte Folded Spill
	add x22, x0, 3
	and x10, x9, 64
	beq x0, x10, .LBB1_70
	jal x0, .LBB1_74
.LBB1_59:                               //  %sw.epilog.loopexit4
	sw x22, -1556 ( fp )            //  4-byte Folded Spill
	add x22, x0, 2
	and x10, x9, 64
	beq x0, x10, .LBB1_70
	jal x0, .LBB1_74
.LBB1_60:                               //  %sw.epilog.loopexit4927
	lw x10, -1508 ( fp )            //  4-byte Folded Reload
.LBB1_61:                               //  %sw.epilog
	sw x22, -1556 ( fp )            //  4-byte Folded Spill
	sw x10, -1500 ( fp )            //  4-byte Folded Spill
	add x10, x0, 10
	sw x10, -1476 ( fp )            //  4-byte Folded Spill
	add x22, x0, 3
	and x10, x9, 64
	beq x0, x10, .LBB1_70
	jal x0, .LBB1_74
.LBB1_63:
	add x12, x10, 8
	sw x12, -1496 ( fp )            //  4-byte Folded Spill
	add x12, x0, 8
	add x10, x12, x10
	lw x10, 0 ( x10 )
	add x12, x0, 93
	bne x10, x12, .LBB1_64
.LBB1_65:
	lw x10, -1496 ( fp )            //  4-byte Folded Reload
	add x27, x10, 4
.LBB1_66:                               //  %sw.bb128
	xor x10, x11, 94
	seqz x10, x10
	sw x22, -1556 ( fp )            //  4-byte Folded Spill
	sw x10, -1512 ( fp )            //  4-byte Folded Spill
.LBB1_67:                               //  %while.cond140
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x27 )
	add x27, x27, 4
	xor x11, x10, 93
	beq x0, x11, .LBB1_69
.LBB1_68:                               //  %while.cond140
                                        //    in Loop: Header=BB1_67 Depth=1
	bltu x0, x10, .LBB1_67
.LBB1_69:                               //  %while.end149
	add x10, x27, -4
	sw x10, -1516 ( fp )            //  4-byte Folded Spill
	or x9, x9, 64
	seqz x22, x0
	and x10, x9, 64
	bltu x0, x10, .LBB1_74
.LBB1_70:                               //  %while.cond194.preheader
	mv x10, x19
	mv x11, x18
	mv x25, x23
	jal _fgetwc_r
	mv x23, x10
	xor x10, x23, -1
	bltu x0, x10, .LBB1_71
.LBB1_549:                              //  %while.cond194.preheader
	jal x0, .LBB1_496
.LBB1_71:                               //  %land.rhs198
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x23
	jal iswspace
	beq x0, x10, .LBB1_73
.LBB1_72:                               //  %while.body202
                                        //    in Loop: Header=BB1_71 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x23, x10
	add x21, x21, 1
	xor x10, x23, -1
	bltu x0, x10, .LBB1_71
	jal x0, .LBB1_496
.LBB1_73:                               //  %if.end208
	mv x10, x19
	mv x11, x23
	mv x12, x18
	jal _ungetwc_r
	mv x23, x25
.LBB1_74:                               //  %if.end210
	add x10, x0, 4
	bltu x10, x22, .LBB1_5
.LBB1_75:                               //  %if.end210
	lw x11, -1492 ( fp )            //  4-byte Folded Reload
	sll x10, x22, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB1_76:                               //  %sw.bb211
	seqz x22, x0
	mv x10, x0
	beq x20, x10, .LBB1_78
.LBB1_77:                               //  %sw.bb211
	mv x22, x20
.LBB1_78:                               //  %sw.bb211
	and x20, x9, 16
	and x10, x9, 1
	sw x20, -1572 ( fp )            //  4-byte Folded Spill
	bltu x0, x10, .LBB1_135
.LBB1_79:                               //  %if.else344
	beq x0, x20, .LBB1_194
.LBB1_80:                               //  %land.rhs416.us.preheader
	mv x9, x0
	add x10, fp, -64
	mv x11, x9
	add x12, x0, 8
	jal memset
	jal x0, .LBB1_84
.LBB1_81:                               //  %while.body421.us
                                        //    in Loop: Header=BB1_84 Depth=1
	xor x10, x10, -1
	bltu x0, x10, .LBB1_82
.LBB1_550:                              //  %while.body421.us
	jal x0, .LBB1_510
.LBB1_82:                               //  %if.then432.us
                                        //    in Loop: Header=BB1_84 Depth=1
	add x22, x22, -1
.LBB1_83:                               //  %if.end468.us
                                        //    in Loop: Header=BB1_84 Depth=1
	add x9, x9, 1
	beq x0, x22, .LBB1_241
.LBB1_84:                               //  %land.rhs416.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x12, x10
	xor x10, x12, -1
	beq x0, x10, .LBB1_240
.LBB1_85:                               //  %while.body421.us
                                        //    in Loop: Header=BB1_84 Depth=1
	mv x10, x19
	add x11, fp, -1465
	add x13, fp, -64
	jal _wcrtomb_r
	bltu x0, x10, .LBB1_81
.LBB1_86:                               //  %lor.lhs.false429.us
                                        //    in Loop: Header=BB1_84 Depth=1
	lw x10, -64 ( fp )
	xor x10, x10, -4
	bltu x0, x10, .LBB1_82
	jal x0, .LBB1_83
.LBB1_87:                               //  %sw.bb503
	mv x10, x0
	beq x20, x10, .LBB1_89
.LBB1_88:                               //  %sw.bb503
	mv x23, x20
.LBB1_89:                               //  %sw.bb503
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	and x20, x9, 16
	and x10, x9, 1
	beq x0, x10, .LBB1_139
.LBB1_90:                               //  %sw.bb503
	beq x0, x20, .LBB1_139
.LBB1_91:                               //  %while.cond514.preheader
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x20, x10
	xor x10, x20, -1
	bltu x0, x10, .LBB1_92
.LBB1_551:                              //  %while.cond514.preheader
	jal x0, .LBB1_502
.LBB1_92:                               //  %land.lhs.true518.lr.ph
	lw x9, -1496 ( fp )             //  4-byte Folded Reload
	lw x10, -1516 ( fp )            //  4-byte Folded Reload
	sub x10, x10, x9
	sra x25, x10, 2&31
	lw x10, -1512 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_213
.LBB1_93:                               //  %land.lhs.true518.preheader
	mv x22, x0
.LBB1_94:                               //  %land.lhs.true518
                                        //  =>This Inner Loop Header: Depth=1
	beq x23, x22, .LBB1_218
.LBB1_95:                               //  %land.rhs522
                                        //    in Loop: Header=BB1_94 Depth=1
	mv x10, x9
	mv x11, x20
	mv x12, x25
	jal wmemchr
	bltu x0, x10, .LBB1_218
.LBB1_96:                               //  %while.body543
                                        //    in Loop: Header=BB1_94 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x20, x10
	add x22, x22, 1
	xor x10, x20, -1
	bltu x0, x10, .LBB1_94
	jal x0, .LBB1_217
.LBB1_98:                               //  %sw.bb901
	mv x22, x23
	mv x10, x0
	beq x20, x10, .LBB1_100
.LBB1_99:                               //  %sw.bb901
	mv x22, x20
.LBB1_100:                              //  %sw.bb901
	and x23, x9, 16
	and x10, x9, 1
	beq x0, x10, .LBB1_142
.LBB1_101:                              //  %sw.bb901
	beq x0, x23, .LBB1_142
.LBB1_102:                              //  %while.cond912.preheader
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x20, x10
	xor x10, x20, -1
	beq x0, x10, .LBB1_212
.LBB1_103:                              //  %land.lhs.true916.preheader
	add x23, x0, -1
.LBB1_104:                              //  %land.lhs.true916
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x22, .LBB1_205
.LBB1_105:                              //  %land.rhs920
                                        //    in Loop: Header=BB1_104 Depth=1
	mv x10, x20
	jal iswspace
	bltu x0, x10, .LBB1_205
.LBB1_106:                              //  %while.body924
                                        //    in Loop: Header=BB1_104 Depth=1
	mv x10, x19
	mv x11, x18
	add x22, x22, -1
	jal _fgetwc_r
	mv x20, x10
	add x21, x21, 1
	xor x10, x20, -1
	bltu x0, x10, .LBB1_104
.LBB1_107:
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	lw x25, 0 ( x27 )
	bltu x0, x25, .LBB1_7
	jal x0, .LBB1_502
.LBB1_108:                              //  %sw.bb1240
	add x10, x20, -1
	add x22, x0, 349
	add x11, x0, 348
	bltu x11, x10, .LBB1_110
.LBB1_109:                              //  %sw.bb1240
	mv x22, x20
.LBB1_110:                              //  %sw.bb1240
	or x9, x9, 1408
	beq x0, x22, .LBB1_145
.LBB1_111:                              //  %for.body.preheader
	add x10, fp, -1464
	mv x25, x10
	mv x20, x0
	jal x0, .LBB1_114
.LBB1_112:                              //  %sw.bb1266
                                        //    in Loop: Header=BB1_114 Depth=1
	lw x10, -1476 ( fp )            //  4-byte Folded Reload
	lw x12, -1504 ( fp )            //  4-byte Folded Reload
	and x9, x9, -897
	sll x10, x10, 1&31
	add x10, x10, x12
	lh x10, 0 ( x10 )
.LBB1_113:                              //  %ok
                                        //    in Loop: Header=BB1_114 Depth=1
	sw x10, -1476 ( fp )            //  4-byte Folded Spill
	sw x11, 0 ( x25 )
	add x25, x25, 4
	add x20, x20, 1
	beq x22, x20, .LBB1_129
.LBB1_114:                              //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x11, x10
	add x10, x11, 1
	add x12, x0, 121
	bgeu x12, x10, .LBB1_115
.LBB1_552:                              //  %for.body
	jal x0, .LBB1_419
.LBB1_115:                              //  %for.body
                                        //    in Loop: Header=BB1_114 Depth=1
	lw x12, -1488 ( fp )            //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x10, x12, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB1_116:                              //  %sw.bb1278
                                        //    in Loop: Header=BB1_114 Depth=1
	lw x10, -1476 ( fp )            //  4-byte Folded Reload
	slti x10, x10, 11
	beq x0, x10, .LBB1_117
.LBB1_553:                              //  %sw.bb1278
	jal x0, .LBB1_419
.LBB1_117:                              //  %if.else1263
                                        //    in Loop: Header=BB1_114 Depth=1
	and x9, x9, -897
	sw x11, 0 ( x25 )
	add x25, x25, 4
	add x20, x20, 1
	bne x22, x20, .LBB1_114
	jal x0, .LBB1_129
.LBB1_118:                              //  %sw.bb1284
                                        //    in Loop: Header=BB1_114 Depth=1
	and x10, x9, 128
	bltu x0, x10, .LBB1_119
.LBB1_554:                              //  %sw.bb1284
	jal x0, .LBB1_419
.LBB1_119:                              //  %if.then1287
                                        //    in Loop: Header=BB1_114 Depth=1
	lw x10, -1528 ( fp )            //  4-byte Folded Reload
	lui x12, (65536>>12)&1048575
	and x10, x10, x9
	or x9, x12, x10
	sw x11, 0 ( x25 )
	add x25, x25, 4
	add x20, x20, 1
	bne x22, x20, .LBB1_114
	jal x0, .LBB1_129
.LBB1_120:                              //  %sw.bb1270
                                        //    in Loop: Header=BB1_114 Depth=1
	lw x13, -1476 ( fp )            //  4-byte Folded Reload
	lw x12, -1504 ( fp )            //  4-byte Folded Reload
	sll x10, x13, 1&31
	add x10, x10, x12
	lh x10, 0 ( x10 )
	add x12, x13, -1
	sltiu x12, x12, 8
	beq x0, x12, .LBB1_121
.LBB1_555:                              //  %sw.bb1270
	jal x0, .LBB1_418
.LBB1_121:                              //  %if.end1276
                                        //    in Loop: Header=BB1_114 Depth=1
	and x9, x9, -897
	jal x0, .LBB1_113
.LBB1_122:                              //  %sw.bb1291
                                        //    in Loop: Header=BB1_114 Depth=1
	and x10, x9, 512
	bltu x0, x10, .LBB1_123
.LBB1_556:                              //  %sw.bb1291
	jal x0, .LBB1_419
.LBB1_123:                              //  %land.lhs.true1294
                                        //    in Loop: Header=BB1_114 Depth=1
	lw x12, -1524 ( fp )            //  4-byte Folded Reload
	srl x10, x9, 14&31
	and x10, x10, 4
	add x10, x10, x12
	beq x25, x10, .LBB1_124
.LBB1_557:                              //  %land.lhs.true1294
	jal x0, .LBB1_419
.LBB1_124:                              //  %if.then1304
                                        //    in Loop: Header=BB1_114 Depth=1
	and x9, x9, -513
	add x10, x0, 16
	jal x0, .LBB1_113
.LBB1_125:                              //  %sw.bb1253
                                        //    in Loop: Header=BB1_114 Depth=1
	lw x12, -1476 ( fp )            //  4-byte Folded Reload
	mv x10, x0
	bne x12, x10, .LBB1_127
.LBB1_126:                              //    in Loop: Header=BB1_114 Depth=1
	or x9, x9, 512
	add x10, x0, 8
	sw x10, -1476 ( fp )            //  4-byte Folded Spill
.LBB1_127:                              //  %sw.bb1253
                                        //    in Loop: Header=BB1_114 Depth=1
	and x10, x9, 1024
	beq x0, x10, .LBB1_117
.LBB1_128:                              //  %if.then1261
                                        //    in Loop: Header=BB1_114 Depth=1
	and x9, x9, -1409
	sw x11, 0 ( x25 )
	add x25, x25, 4
	add x20, x20, 1
	bne x22, x20, .LBB1_114
.LBB1_129:
	seqz x20, x0
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	and x10, x9, 256
	bltu x0, x10, .LBB1_558
.LBB1_559:
	jal x0, .LBB1_421
.LBB1_558:
	jal x0, .LBB1_511
.LBB1_130:                              //  %sw.bb1392
	add x10, x20, -1
	add x25, x0, 349
	add x11, x0, 348
	bltu x11, x10, .LBB1_132
.LBB1_131:                              //  %sw.bb1392
	mv x25, x20
.LBB1_132:                              //  %sw.bb1392
	or x14, x9, 1920
	mv x11, x0
	beq x0, x25, .LBB1_146
.LBB1_133:                              //  %for.body1403.preheader
	add x12, x0, 348
	sw x14, -1472 ( fp )            //  4-byte Folded Spill
	bltu x12, x10, .LBB1_147
.LBB1_134:                              //  %for.body1403.preheader
	sw x11, -1576 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_148
.LBB1_135:                              //  %if.then218
	beq x0, x20, .LBB1_196
.LBB1_136:                              //  %land.rhs283.us.preheader
	mv x25, x0
.LBB1_137:                              //  %land.rhs283.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	xor x10, x10, -1
	beq x0, x10, .LBB1_206
.LBB1_138:                              //  %if.end310.us
                                        //    in Loop: Header=BB1_137 Depth=1
	add x25, x25, 1
	bne x22, x25, .LBB1_137
	jal x0, .LBB1_200
.LBB1_139:                              //  %if.else555
	bltu x0, x10, .LBB1_201
.LBB1_140:                              //  %if.else713
	sw x20, -1560 ( fp )            //  4-byte Folded Spill
	beq x0, x20, .LBB1_219
.LBB1_141:
	mv x11, x0
	sw x11, -1564 ( fp )            //  4-byte Folded Spill
	sw x11, -1568 ( fp )            //  4-byte Folded Spill
	sw x11, -1572 ( fp )            //  4-byte Folded Spill
	add x20, fp, -1465
	jal x0, .LBB1_354
.LBB1_142:                              //  %if.else932
	bltu x0, x10, .LBB1_203
.LBB1_143:                              //  %if.else1070
	beq x0, x23, .LBB1_221
.LBB1_144:
	mv x11, x0
	mv x9, x11
	sw x11, -1560 ( fp )            //  4-byte Folded Spill
	sw x11, -1564 ( fp )            //  4-byte Folded Spill
	add x20, fp, -1465
	jal x0, .LBB1_394
.LBB1_145:
	add x10, fp, -1464
	mv x20, x0
	mv x25, x10
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	and x10, x9, 256
	bltu x0, x10, .LBB1_560
.LBB1_561:
	jal x0, .LBB1_421
.LBB1_560:
	jal x0, .LBB1_511
.LBB1_146:
	mv x10, x11
	sw x11, -1564 ( fp )            //  4-byte Folded Spill
	add x23, fp, -1464
	mv x9, x11
	mv x20, x11
	sw x11, -1572 ( fp )            //  4-byte Folded Spill
	sw x11, -1568 ( fp )            //  4-byte Folded Spill
	mv x22, x10
	jal x0, .LBB1_449
.LBB1_147:
	add x10, x20, -349
	sw x10, -1576 ( fp )            //  4-byte Folded Spill
.LBB1_148:                              //  %for.body1403.preheader
	mv x22, x11
	add x23, fp, -1464
	mv x9, x11
	mv x20, x11
	sw x11, -1564 ( fp )            //  4-byte Folded Spill
	sw x11, -1568 ( fp )            //  4-byte Folded Spill
	sw x11, -1572 ( fp )            //  4-byte Folded Spill
	sw x11, -1560 ( fp )            //  4-byte Folded Spill
.LBB1_149:                              //  %for.body1403
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	lw x13, -1472 ( fp )            //  4-byte Folded Reload
	mv x11, x10
	add x10, x11, -43
	add x12, x0, 78
	bltu x12, x10, .LBB1_175
.LBB1_150:                              //  %for.body1403
                                        //    in Loop: Header=BB1_149 Depth=1
	lw x12, -1480 ( fp )            //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x10, x12, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB1_151:                              //  %sw.bb1417
                                        //    in Loop: Header=BB1_149 Depth=1
	sll x10, x9, 24&31
	sra x10, x10, 24&31
	sll x12, x20, 24&31
	sub x10, x0, x10
	sra x12, x12, 24&31
	beq x12, x10, .LBB1_152
.LBB1_562:                              //  %sw.bb1417
	jal x0, .LBB1_445
.LBB1_152:                              //  %if.then1423
                                        //    in Loop: Header=BB1_149 Depth=1
	and x13, x13, -385
.LBB1_153:                              //  %fok
                                        //    in Loop: Header=BB1_149 Depth=1
	sw x13, -1472 ( fp )            //  4-byte Folded Spill
	sw x11, 0 ( x23 )
	add x22, x22, 1
.LBB1_154:                              //  %fskip
                                        //    in Loop: Header=BB1_149 Depth=1
	sll x10, x22, 2&31
	add x11, fp, -1464
	add x23, x10, x11
	add x21, x21, 1
	add x25, x25, -1
	bltu x0, x25, .LBB1_149
	jal x0, .LBB1_446
.LBB1_155:                              //  %sw.bb1426
                                        //    in Loop: Header=BB1_149 Depth=1
	and x10, x13, 128
	bltu x0, x10, .LBB1_156
.LBB1_563:                              //  %sw.bb1426
	jal x0, .LBB1_445
.LBB1_156:                              //  %if.then1429
                                        //    in Loop: Header=BB1_149 Depth=1
	and x13, x13, -129
	jal x0, .LBB1_153
.LBB1_157:                              //  %sw.bb1461
                                        //    in Loop: Header=BB1_149 Depth=1
	and x10, x20, 255
	xor x10, x10, 1
	beq x0, x10, .LBB1_158
.LBB1_564:                              //  %sw.bb1461
	jal x0, .LBB1_445
.LBB1_158:                              //    in Loop: Header=BB1_149 Depth=1
	add x20, x0, 2
	jal x0, .LBB1_153
.LBB1_159:                              //  %sw.bb1509
                                        //    in Loop: Header=BB1_149 Depth=1
	and x10, x13, 1280
	xor x10, x10, 1024
	beq x0, x10, .LBB1_162
.LBB1_160:                              //  %lor.lhs.false1513
                                        //    in Loop: Header=BB1_149 Depth=1
	and x10, x13, 1024
	bltu x0, x10, .LBB1_161
.LBB1_565:                              //  %lor.lhs.false1513
	jal x0, .LBB1_445
.LBB1_161:                              //  %lor.lhs.false1513
                                        //    in Loop: Header=BB1_149 Depth=1
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	bltu x0, x10, .LBB1_162
.LBB1_566:                              //  %lor.lhs.false1513
	jal x0, .LBB1_445
.LBB1_162:                              //  %if.then1518
                                        //    in Loop: Header=BB1_149 Depth=1
	and x10, x13, 512
	mv x12, x0
	bne x10, x12, .LBB1_164
.LBB1_163:                              //    in Loop: Header=BB1_149 Depth=1
	lw x10, -1564 ( fp )            //  4-byte Folded Reload
	lw x12, -1560 ( fp )            //  4-byte Folded Reload
	sw x23, -1572 ( fp )            //  4-byte Folded Spill
	sub x10, x12, x10
	sw x10, -1568 ( fp )            //  4-byte Folded Spill
.LBB1_164:                              //  %if.then1518
                                        //    in Loop: Header=BB1_149 Depth=1
	and x10, x13, -1921
	or x13, x10, 384
	mv x10, x0
	sw x10, -1560 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_153
.LBB1_165:                              //  %sw.bb1491
                                        //    in Loop: Header=BB1_149 Depth=1
	and x10, x9, 255
	xor x10, x10, 2
	beq x0, x10, .LBB1_166
.LBB1_567:                              //  %sw.bb1491
	jal x0, .LBB1_445
.LBB1_166:                              //    in Loop: Header=BB1_149 Depth=1
	add x9, x0, 3
	jal x0, .LBB1_153
.LBB1_167:                              //  %sw.bb1432
                                        //    in Loop: Header=BB1_149 Depth=1
	and x10, x13, 1792
	xor x12, x10, 1792
	and x10, x20, 255
	bltu x0, x12, .LBB1_185
.LBB1_168:                              //  %sw.bb1432
                                        //    in Loop: Header=BB1_149 Depth=1
	lw x12, -1560 ( fp )            //  4-byte Folded Reload
	bltu x0, x12, .LBB1_185
.LBB1_169:                              //  %sw.bb1432
                                        //    in Loop: Header=BB1_149 Depth=1
	bltu x0, x10, .LBB1_185
.LBB1_170:                              //  %if.then1443
                                        //    in Loop: Header=BB1_149 Depth=1
	mv x10, x0
	and x13, x13, -1921
	sw x10, -1560 ( fp )            //  4-byte Folded Spill
	seqz x20, x0
	jal x0, .LBB1_153
.LBB1_171:                              //  %sw.bb1497
                                        //    in Loop: Header=BB1_149 Depth=1
	and x10, x9, 255
	xor x10, x10, 6
	beq x0, x10, .LBB1_172
.LBB1_568:                              //  %sw.bb1497
	jal x0, .LBB1_445
.LBB1_172:                              //    in Loop: Header=BB1_149 Depth=1
	add x9, x0, 7
	jal x0, .LBB1_153
.LBB1_173:                              //  %sw.bb1503
                                        //    in Loop: Header=BB1_149 Depth=1
	and x10, x9, 255
	xor x10, x10, 7
	beq x0, x10, .LBB1_174
.LBB1_569:                              //  %sw.bb1503
	jal x0, .LBB1_445
.LBB1_174:                              //    in Loop: Header=BB1_149 Depth=1
	add x9, x0, 8
	jal x0, .LBB1_153
.LBB1_175:                              //  %sw.default1528
                                        //    in Loop: Header=BB1_149 Depth=1
	and x10, x13, 512
	bltu x0, x10, .LBB1_176
.LBB1_570:                              //  %sw.default1528
	jal x0, .LBB1_444
.LBB1_176:                              //  %sw.default1528
                                        //    in Loop: Header=BB1_149 Depth=1
	lw x10, -1532 ( fp )            //  4-byte Folded Reload
	beq x11, x10, .LBB1_177
.LBB1_571:                              //  %sw.default1528
	jal x0, .LBB1_444
.LBB1_177:                              //  %if.then1534
                                        //    in Loop: Header=BB1_149 Depth=1
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	and x13, x13, -641
	sw x10, -1564 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_153
.LBB1_178:                              //  %sw.bb1405
                                        //    in Loop: Header=BB1_149 Depth=1
	and x10, x13, 256
	beq x0, x10, .LBB1_151
.LBB1_179:                              //  %if.then1408
                                        //    in Loop: Header=BB1_149 Depth=1
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	and x13, x13, -129
	sw x13, -1472 ( fp )            //  4-byte Folded Spill
	add x10, x10, 1
	sw x10, -1560 ( fp )            //  4-byte Folded Spill
	lw x10, -1576 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_192
.LBB1_180:                              //  %if.then1412
                                        //    in Loop: Header=BB1_149 Depth=1
	add x25, x25, 1
	add x10, x10, -1
	jal x0, .LBB1_193
.LBB1_181:                              //  %sw.bb1467
                                        //    in Loop: Header=BB1_149 Depth=1
	and x10, x13, 1792
	xor x12, x10, 1792
	and x10, x9, 255
	bltu x0, x12, .LBB1_187
.LBB1_182:                              //  %sw.bb1467
                                        //    in Loop: Header=BB1_149 Depth=1
	lw x12, -1560 ( fp )            //  4-byte Folded Reload
	bltu x0, x12, .LBB1_187
.LBB1_183:                              //  %sw.bb1467
                                        //    in Loop: Header=BB1_149 Depth=1
	bltu x0, x10, .LBB1_187
.LBB1_184:                              //  %if.then1478
                                        //    in Loop: Header=BB1_149 Depth=1
	mv x10, x0
	and x13, x13, -1921
	sw x10, -1560 ( fp )            //  4-byte Folded Spill
	seqz x9, x0
	jal x0, .LBB1_153
.LBB1_185:                              //  %if.end1445
                                        //    in Loop: Header=BB1_149 Depth=1
	xor x10, x10, 2
	bltu x0, x10, .LBB1_189
.LBB1_186:                              //    in Loop: Header=BB1_149 Depth=1
	add x20, x0, 3
	jal x0, .LBB1_153
.LBB1_187:                              //  %if.end1480
                                        //    in Loop: Header=BB1_149 Depth=1
	xor x12, x10, 5
	beq x0, x12, .LBB1_191
.LBB1_188:                              //  %if.end1480
                                        //    in Loop: Header=BB1_149 Depth=1
	xor x10, x10, 3
	beq x0, x10, .LBB1_191
	jal x0, .LBB1_445
.LBB1_189:                              //  %if.end1450
                                        //    in Loop: Header=BB1_149 Depth=1
	and x10, x9, 255
	xor x12, x10, 4
	beq x0, x12, .LBB1_191
.LBB1_190:                              //  %if.end1450
                                        //    in Loop: Header=BB1_149 Depth=1
	xor x10, x10, 1
	beq x0, x10, .LBB1_191
.LBB1_572:                              //  %if.end1450
	jal x0, .LBB1_445
.LBB1_191:                              //  %if.then1488
                                        //    in Loop: Header=BB1_149 Depth=1
	add x9, x9, 1
	jal x0, .LBB1_153
.LBB1_192:                              //    in Loop: Header=BB1_149 Depth=1
	mv x10, x0
.LBB1_193:                              //  %fskip
                                        //    in Loop: Header=BB1_149 Depth=1
	sw x10, -1576 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_154
.LBB1_194:                              //  %if.else348
	and x10, x9, 128
	bltu x0, x10, .LBB1_223
.LBB1_195:                              //  %if.else408
	lw x10, -56 ( fp )
	mv x9, x0
	sw x9, -1560 ( fp )             //  4-byte Folded Spill
	mv x25, x9
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x20, 0 ( x10 )
	sw x9, -1568 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_254
.LBB1_196:                              //  %if.else223
	and x10, x9, 128
	bltu x0, x10, .LBB1_227
.LBB1_197:                              //  %land.rhs283.us3581.preheader
	lw x10, -56 ( fp )
	mv x25, x0
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
.LBB1_198:                              //  %land.rhs283.us3581
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	xor x11, x10, -1
	beq x0, x11, .LBB1_206
.LBB1_199:                              //  %if.then291.us3591
                                        //    in Loop: Header=BB1_198 Depth=1
	lw x11, -1472 ( fp )            //  4-byte Folded Reload
	add x25, x25, 1
	sw x10, 0 ( x11 )
	add x11, x11, 4
	sw x11, -1472 ( fp )            //  4-byte Folded Spill
	bne x22, x25, .LBB1_198
.LBB1_200:
	mv x10, x0
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	mv x14, x10
	mv x12, x10
	mv x9, x10
	bltu x0, x10, .LBB1_208
	jal x0, .LBB1_211
.LBB1_201:                              //  %if.then558
	and x10, x9, 128
	bltu x0, x10, .LBB1_231
.LBB1_202:                              //  %if.else620
	lw x10, -56 ( fp )
	mv x11, x0
	mv x12, x11
	mv x9, x12
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x25, 0 ( x10 )
	sw x12, -1560 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_290
.LBB1_203:                              //  %if.then935
	and x10, x9, 128
	bltu x0, x10, .LBB1_235
.LBB1_204:                              //  %if.else997
	lw x10, -56 ( fp )
	mv x9, x0
	mv x23, x9
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x20, 0 ( x10 )
	jal x0, .LBB1_305
.LBB1_205:                              //  %if.then929
	mv x10, x19
	mv x11, x20
	mv x12, x18
	jal _ungetwc_r
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	lw x25, 0 ( x27 )
	bltu x0, x25, .LBB1_7
	jal x0, .LBB1_502
.LBB1_206:
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	mv x14, x0
	mv x10, x14
	mv x12, x14
	bltu x0, x25, .LBB1_207
.LBB1_573:
	jal x0, .LBB1_497
.LBB1_207:                              //  %if.end316
	mv x9, x10
	beq x0, x10, .LBB1_211
.LBB1_208:                              //  %if.end316
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	sub x11, x10, x14
	sra x10, x11, 2&31
	bgeu x10, x12, .LBB1_211
.LBB1_209:                              //  %if.then327
	lw x10, 0 ( x9 )
	jal realloc
	beq x0, x10, .LBB1_211
.LBB1_210:                              //  %if.then331
	sw x10, 0 ( x9 )
.LBB1_211:                              //  %cleanup339.thread2604
	add x21, x21, x25
	jal x0, .LBB1_275
.LBB1_212:
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	add x23, x0, -1
	lw x25, 0 ( x27 )
	bltu x0, x25, .LBB1_7
	jal x0, .LBB1_502
.LBB1_213:                              //  %land.lhs.true518.us.preheader
	mv x22, x0
.LBB1_214:                              //  %land.lhs.true518.us
                                        //  =>This Inner Loop Header: Depth=1
	beq x23, x22, .LBB1_218
.LBB1_215:                              //  %land.rhs522.us
                                        //    in Loop: Header=BB1_214 Depth=1
	mv x10, x9
	mv x11, x20
	mv x12, x25
	jal wmemchr
	beq x0, x10, .LBB1_218
.LBB1_216:                              //  %while.body543.us
                                        //    in Loop: Header=BB1_214 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x20, x10
	add x22, x22, 1
	xor x10, x20, -1
	bltu x0, x10, .LBB1_214
.LBB1_217:
	add x23, x0, -1
	jal x0, .LBB1_441
.LBB1_218:
	mv x10, x19
	mv x11, x20
	mv x12, x18
	add x23, x0, -1
	jal _ungetwc_r
	bltu x0, x22, .LBB1_441
	jal x0, .LBB1_532
.LBB1_219:                              //  %if.else721
	and x10, x9, 128
	bltu x0, x10, .LBB1_242
.LBB1_220:                              //  %if.else781
	lw x10, -56 ( fp )
	mv x11, x0
	sw x11, -1572 ( fp )            //  4-byte Folded Spill
	add x12, x10, 4
	sw x12, -56 ( fp )
	lw x20, 0 ( x10 )
	sw x11, -1564 ( fp )            //  4-byte Folded Spill
	sw x11, -1568 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_354
.LBB1_221:                              //  %if.else1078
	and x10, x9, 128
	bltu x0, x10, .LBB1_246
.LBB1_222:                              //  %if.else1138
	lw x10, -56 ( fp )
	mv x11, x0
	sw x11, -1564 ( fp )            //  4-byte Folded Spill
	mv x9, x11
	add x12, x10, 4
	sw x12, -56 ( fp )
	lw x20, 0 ( x10 )
	sw x11, -1560 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_394
.LBB1_223:                              //  %if.then351
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -1560 ( fp )            //  4-byte Folded Spill
	bltu x0, x10, .LBB1_224
.LBB1_574:                              //  %if.then351
	jal x0, .LBB1_532
.LBB1_224:                              //  %if.end355
	add x10, x0, 32
	jal malloc
	mv x25, x10
	bltu x0, x25, .LBB1_225
.LBB1_575:                              //  %if.end355
	jal x0, .LBB1_535
.LBB1_225:                              //  %if.end359
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sw x25, 0 ( x10 )
	lhu x10, 4 ( x24 )
	lhu x11, 6 ( x24 )
	bgeu x11, x10, .LBB1_250
.LBB1_226:                              //  %if.end359.if.end399_crit_edge
	lw x10, 0 ( x24 )
	jal x0, .LBB1_253
.LBB1_227:                              //  %if.then226
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -1560 ( fp )            //  4-byte Folded Spill
	bltu x0, x10, .LBB1_228
.LBB1_576:                              //  %if.then226
	jal x0, .LBB1_532
.LBB1_228:                              //  %if.end230
	add x10, x0, 128
	jal malloc
	mv x9, x10
	bltu x0, x9, .LBB1_229
.LBB1_577:                              //  %if.end230
	jal x0, .LBB1_535
.LBB1_229:                              //  %if.end234
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sw x9, -1472 ( fp )             //  4-byte Folded Spill
	sw x9, 0 ( x10 )
	lhu x10, 4 ( x24 )
	lhu x11, 6 ( x24 )
	bgeu x11, x10, .LBB1_276
.LBB1_230:                              //  %if.end234.if.end270_crit_edge
	lw x10, 0 ( x24 )
	jal x0, .LBB1_279
.LBB1_231:                              //  %if.then563
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -1560 ( fp )            //  4-byte Folded Spill
	bltu x0, x10, .LBB1_232
.LBB1_578:                              //  %if.then563
	jal x0, .LBB1_502
.LBB1_232:                              //  %if.end567
	add x10, x0, 128
	jal malloc
	mv x25, x10
	bltu x0, x25, .LBB1_233
.LBB1_579:                              //  %if.end567
	jal x0, .LBB1_499
.LBB1_233:                              //  %if.end571
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sw x25, 0 ( x10 )
	lhu x10, 4 ( x24 )
	lhu x11, 6 ( x24 )
	bgeu x11, x10, .LBB1_286
.LBB1_234:                              //  %if.end571.if.end611_crit_edge
	lw x10, 0 ( x24 )
	jal x0, .LBB1_289
.LBB1_235:                              //  %if.then940
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x9, 0 ( x10 )
	bltu x0, x9, .LBB1_236
.LBB1_580:                              //  %if.then940
	jal x0, .LBB1_532
.LBB1_236:                              //  %if.end944
	add x10, x0, 128
	jal malloc
	mv x20, x10
	bltu x0, x20, .LBB1_237
.LBB1_581:                              //  %if.end944
	jal x0, .LBB1_499
.LBB1_237:                              //  %if.end948
	sw x20, 0 ( x9 )
	lhu x10, 4 ( x24 )
	lhu x11, 6 ( x24 )
	bgeu x11, x10, .LBB1_301
.LBB1_238:                              //  %if.end948.if.end988_crit_edge
	lw x10, 0 ( x24 )
	jal x0, .LBB1_304
.LBB1_239:                              //  %if.then165
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sb x21, 0 ( x10 )
	lw x25, 0 ( x27 )
	bltu x0, x25, .LBB1_7
	jal x0, .LBB1_502
.LBB1_240:
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	mv x25, x0
	mv x12, x25
	add x20, fp, -1465
	sw x25, -1560 ( fp )            //  4-byte Folded Spill
	bltu x0, x9, .LBB1_270
	jal x0, .LBB1_497
.LBB1_241:
	mv x10, x0
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	add x20, fp, -1465
	mv x25, x10
	mv x12, x10
	sw x10, -1560 ( fp )            //  4-byte Folded Spill
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	bltu x0, x10, .LBB1_271
	jal x0, .LBB1_274
.LBB1_242:                              //  %if.then724
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -1564 ( fp )            //  4-byte Folded Spill
	bltu x0, x10, .LBB1_243
.LBB1_582:                              //  %if.then724
	jal x0, .LBB1_502
.LBB1_243:                              //  %if.end728
	add x10, x0, 32
	jal malloc
	mv x11, x10
	bltu x0, x11, .LBB1_244
.LBB1_583:                              //  %if.end728
	jal x0, .LBB1_499
.LBB1_244:                              //  %if.end732
	lw x10, -1564 ( fp )            //  4-byte Folded Reload
	sw x11, -1568 ( fp )            //  4-byte Folded Spill
	sw x11, 0 ( x10 )
	lhu x10, 4 ( x24 )
	lhu x11, 6 ( x24 )
	bgeu x11, x10, .LBB1_350
.LBB1_245:                              //  %if.end732.if.end772_crit_edge
	lw x10, 0 ( x24 )
	jal x0, .LBB1_353
.LBB1_246:                              //  %if.then1081
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x9, 0 ( x10 )
	bltu x0, x9, .LBB1_247
.LBB1_584:                              //  %if.then1081
	jal x0, .LBB1_532
.LBB1_247:                              //  %if.end1085
	add x10, x0, 32
	jal malloc
	mv x20, x10
	bltu x0, x20, .LBB1_248
.LBB1_585:                              //  %if.end1085
	jal x0, .LBB1_499
.LBB1_248:                              //  %if.end1089
	sw x20, 0 ( x9 )
	lhu x10, 4 ( x24 )
	lhu x11, 6 ( x24 )
	bgeu x11, x10, .LBB1_390
.LBB1_249:                              //  %if.end1089.if.end1129_crit_edge
	lw x10, 0 ( x24 )
	jal x0, .LBB1_393
.LBB1_250:                              //  %if.then367
	add x11, x10, 8
	lw x10, -1544 ( fp )            //  4-byte Folded Reload
	bgeu x10, x11, .LBB1_251
.LBB1_586:                              //  %if.then367
	jal x0, .LBB1_504
.LBB1_251:                              //  %if.end387
	lw x10, 0 ( x24 )
	sll x11, x11, 2&31
	jal realloc
	bltu x0, x10, .LBB1_252
.LBB1_587:                              //  %if.end387
	jal x0, .LBB1_504
.LBB1_252:                              //  %cleanup396
	lh x11, 4 ( x24 )
	sw x10, 0 ( x24 )
	add x11, x11, 8
	sh x11, 4 ( x24 )
	lhu x11, 6 ( x24 )
.LBB1_253:                              //  %if.end399
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -1560 ( fp )            //  4-byte Folded Reload
	mv x20, x25
	mv x9, x0
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x24 )
	add x10, x0, 32
	sw x10, -1568 ( fp )            //  4-byte Folded Spill
.LBB1_254:                              //  %land.rhs416.preheader
	add x10, fp, -64
	mv x11, x9
	add x12, x0, 8
	jal memset
	jal x0, .LBB1_258
.LBB1_255:                              //    in Loop: Header=BB1_258 Depth=1
	mv x25, x22
.LBB1_256:                              //  %cleanup.cont466
                                        //    in Loop: Header=BB1_258 Depth=1
	lw x22, -1564 ( fp )            //  4-byte Folded Reload
.LBB1_257:                              //  %cleanup.cont466
                                        //    in Loop: Header=BB1_258 Depth=1
	add x20, x23, x20
	add x9, x9, 1
	add x23, x0, -1
	beq x0, x22, .LBB1_269
.LBB1_258:                              //  %land.rhs416
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x12, x10
	xor x10, x12, -1
	beq x0, x10, .LBB1_268
.LBB1_259:                              //  %while.body421
                                        //    in Loop: Header=BB1_258 Depth=1
	mv x10, x19
	mv x11, x20
	add x13, fp, -64
	jal _wcrtomb_r
	mv x23, x10
	beq x0, x23, .LBB1_261
.LBB1_260:                              //  %while.body421
                                        //    in Loop: Header=BB1_258 Depth=1
	xor x10, x23, -1
	bltu x0, x10, .LBB1_262
	jal x0, .LBB1_500
.LBB1_261:                              //  %lor.lhs.false429
                                        //    in Loop: Header=BB1_258 Depth=1
	lw x10, -64 ( fp )
	xor x10, x10, -4
	beq x0, x10, .LBB1_263
.LBB1_262:                              //  %if.then432
                                        //    in Loop: Header=BB1_258 Depth=1
	add x22, x22, -1
.LBB1_263:                              //  %if.then437
                                        //    in Loop: Header=BB1_258 Depth=1
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_257
.LBB1_264:                              //  %land.lhs.true444
                                        //    in Loop: Header=BB1_258 Depth=1
	sw x22, -1564 ( fp )            //  4-byte Folded Spill
	mv x22, x25
	sub x25, x20, x25
	jal __locale_mb_cur_max
	lw x11, -1568 ( fp )            //  4-byte Folded Reload
	bgeu x25, x11, .LBB1_266
.LBB1_265:                              //  %land.lhs.true444
                                        //    in Loop: Header=BB1_258 Depth=1
	sub x10, x11, x10
	bltu x25, x10, .LBB1_255
.LBB1_266:                              //  %if.then452
                                        //    in Loop: Header=BB1_258 Depth=1
	sll x11, x11, 1&31
	mv x10, x22
	sw x11, -1568 ( fp )            //  4-byte Folded Spill
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB1_499
.LBB1_267:                              //  %if.end458
                                        //    in Loop: Header=BB1_258 Depth=1
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	add x20, x25, x11
	mv x25, x11
	sw x11, 0 ( x10 )
	jal x0, .LBB1_256
.LBB1_268:
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	lw x12, -1568 ( fp )            //  4-byte Folded Reload
	bltu x0, x9, .LBB1_270
	jal x0, .LBB1_497
.LBB1_269:
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	lw x12, -1568 ( fp )            //  4-byte Folded Reload
.LBB1_270:                              //  %if.end474
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_274
.LBB1_271:                              //  %if.end474
	sub x11, x20, x25
	bgeu x11, x12, .LBB1_274
.LBB1_272:                              //  %if.then484
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB1_274
.LBB1_273:                              //  %if.then489
	lw x11, -1560 ( fp )            //  4-byte Folded Reload
	sw x10, 0 ( x11 )
.LBB1_274:                              //  %cleanup497
	add x21, x21, x9
.LBB1_275:                              //  %sw.epilog1693
	lw x10, -1572 ( fp )            //  4-byte Folded Reload
	seqz x10, x10
	add x22, x10, x22
	lw x25, 0 ( x27 )
	beq x0, x25, .LBB1_588
.LBB1_589:                              //  %sw.epilog1693
	jal x0, .LBB1_7
.LBB1_588:                              //  %sw.epilog1693
	jal x0, .LBB1_502
.LBB1_276:                              //  %if.then242
	add x11, x10, 8
	lw x10, -1544 ( fp )            //  4-byte Folded Reload
	bltu x10, x11, .LBB1_504
.LBB1_277:                              //  %if.end261
	lw x10, 0 ( x24 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_504
.LBB1_278:                              //  %cleanup
	lh x11, 4 ( x24 )
	sw x10, 0 ( x24 )
	add x11, x11, 8
	sh x11, 4 ( x24 )
	lhu x11, 6 ( x24 )
.LBB1_279:                              //  %land.rhs283.preheader
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -1560 ( fp )            //  4-byte Folded Reload
	lw x14, -1472 ( fp )            //  4-byte Folded Reload
	mv x25, x0
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x24 )
	add x10, x0, 32
	mv x12, x10
	jal x0, .LBB1_282
.LBB1_280:                              //    in Loop: Header=BB1_282 Depth=1
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
.LBB1_281:                              //  %cleanup.cont308
                                        //    in Loop: Header=BB1_282 Depth=1
	sw x23, 0 ( x10 )
	add x10, x10, 4
	add x25, x25, 1
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	beq x22, x25, .LBB1_337
.LBB1_282:                              //  %land.rhs283
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	mv x9, x14
	mv x20, x12
	jal _fgetwc_r
	mv x23, x10
	xor x10, x23, -1
	beq x0, x10, .LBB1_336
.LBB1_283:                              //  %if.then291
                                        //    in Loop: Header=BB1_282 Depth=1
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	mv x14, x9
	mv x12, x20
	sub x10, x10, x14
	sra x9, x10, 2&31
	bltu x9, x12, .LBB1_280
.LBB1_284:                              //  %if.then296
                                        //    in Loop: Header=BB1_282 Depth=1
	sll x11, x12, 3&31
	mv x10, x14
	mv x20, x12
	jal realloc
	mv x14, x10
	beq x0, x14, .LBB1_499
.LBB1_285:                              //  %if.end301
                                        //    in Loop: Header=BB1_282 Depth=1
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sll x20, x20, 1&31
	mv x12, x20
	sw x14, 0 ( x10 )
	sll x10, x9, 2&31
	add x10, x10, x14
	jal x0, .LBB1_281
.LBB1_286:                              //  %if.then579
	add x11, x10, 8
	lw x10, -1544 ( fp )            //  4-byte Folded Reload
	bltu x10, x11, .LBB1_504
.LBB1_287:                              //  %if.end599
	lw x10, 0 ( x24 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_504
.LBB1_288:                              //  %cleanup608
	lh x11, 4 ( x24 )
	sw x10, 0 ( x24 )
	add x11, x11, 8
	sh x11, 4 ( x24 )
	lhu x11, 6 ( x24 )
.LBB1_289:                              //  %if.end611
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -1560 ( fp )            //  4-byte Folded Reload
	add x9, x0, 32
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x24 )
.LBB1_290:                              //  %if.end622
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x20, x10
	xor x10, x20, -1
	beq x0, x10, .LBB1_300
.LBB1_291:                              //  %land.lhs.true627.lr.ph
	lw x10, -1496 ( fp )            //  4-byte Folded Reload
	lw x11, -1516 ( fp )            //  4-byte Folded Reload
	sub x10, x11, x10
	sra x10, x10, 2&31
	sw x10, -1564 ( fp )            //  4-byte Folded Spill
	lw x10, -1512 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_325
.LBB1_292:                              //  %land.lhs.true627.lr.ph.split
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_338
.LBB1_293:                              //  %land.lhs.true627.preheader
	add x22, x23, 1
	add x23, x0, -1
	sw x25, -1472 ( fp )            //  4-byte Folded Spill
	add x22, x22, -1
	bltu x0, x22, .LBB1_296
	jal x0, .LBB1_343
.LBB1_294:                              //  %cleanup676
                                        //    in Loop: Header=BB1_296 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x20, x10
	xor x10, x20, -1
	beq x0, x10, .LBB1_345
.LBB1_295:                              //  %land.lhs.true627
                                        //    in Loop: Header=BB1_296 Depth=1
	add x22, x22, -1
	beq x0, x22, .LBB1_343
.LBB1_296:                              //  %land.end652
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, -1496 ( fp )            //  4-byte Folded Reload
	lw x12, -1564 ( fp )            //  4-byte Folded Reload
	mv x11, x20
	jal wmemchr
	bltu x0, x10, .LBB1_343
.LBB1_297:                              //  %while.body653
                                        //    in Loop: Header=BB1_296 Depth=1
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	sw x20, 0 ( x10 )
	add x10, x10, 4
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	sub x10, x10, x25
	sra x20, x10, 2&31
	bltu x20, x9, .LBB1_294
.LBB1_298:                              //  %if.then665
                                        //    in Loop: Header=BB1_296 Depth=1
	sll x11, x9, 3&31
	mv x10, x25
	jal realloc
	mv x25, x10
	beq x0, x25, .LBB1_535
.LBB1_299:                              //  %if.end671
                                        //    in Loop: Header=BB1_296 Depth=1
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sll x9, x9, 1&31
	sw x25, 0 ( x10 )
	sll x10, x20, 2&31
	add x10, x10, x25
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_294
.LBB1_300:
	sw x25, -1472 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_344
.LBB1_301:                              //  %if.then956
	add x11, x10, 8
	lw x10, -1544 ( fp )            //  4-byte Folded Reload
	bltu x10, x11, .LBB1_504
.LBB1_302:                              //  %if.end976
	lw x10, 0 ( x24 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_504
.LBB1_303:                              //  %cleanup985
	lh x11, 4 ( x24 )
	sw x10, 0 ( x24 )
	add x11, x11, 8
	sh x11, 4 ( x24 )
	lhu x11, 6 ( x24 )
.LBB1_304:                              //  %if.end988
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x9, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x24 )
	add x23, x0, 32
.LBB1_305:                              //  %if.end999
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x25, x10
	xor x10, x25, -1
	beq x0, x10, .LBB1_318
.LBB1_306:                              //  %land.lhs.true1004.lr.ph
	sw x20, -1472 ( fp )            //  4-byte Folded Spill
	sw x20, -1560 ( fp )            //  4-byte Folded Spill
	beq x0, x9, .LBB1_308
.LBB1_307:
	sw x20, -1472 ( fp )            //  4-byte Folded Spill
	bltu x0, x22, .LBB1_314
	jal x0, .LBB1_317
.LBB1_308:                              //  %land.end1012.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x25
	jal iswspace
	bltu x0, x10, .LBB1_317
.LBB1_309:                              //  %while.body1013.us
                                        //    in Loop: Header=BB1_308 Depth=1
	mv x20, x23
	mv x23, x9
	lw x9, -1472 ( fp )             //  4-byte Folded Reload
	mv x10, x19
	mv x11, x18
	sw x25, 0 ( x9 )
	jal _fgetwc_r
	mv x25, x10
	xor x10, x25, -1
	beq x0, x10, .LBB1_417
.LBB1_310:                              //  %land.lhs.true1004.us
                                        //    in Loop: Header=BB1_308 Depth=1
	add x9, x9, 4
	sw x9, -1472 ( fp )             //  4-byte Folded Spill
	mv x9, x23
	mv x23, x20
	lw x20, -1560 ( fp )            //  4-byte Folded Reload
	add x21, x21, 1
	add x22, x22, -1
	bltu x0, x22, .LBB1_308
	jal x0, .LBB1_317
.LBB1_311:                              //  %if.end1031
                                        //    in Loop: Header=BB1_314 Depth=1
	sll x10, x25, 2&31
	add x10, x10, x20
	sll x23, x23, 1&31
	sw x20, 0 ( x9 )
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
.LBB1_312:                              //  %cleanup.cont1039
                                        //    in Loop: Header=BB1_314 Depth=1
	mv x10, x19
	mv x11, x18
	add x22, x22, -1
	jal _fgetwc_r
	mv x25, x10
	add x21, x21, 1
	xor x10, x25, -1
	beq x0, x10, .LBB1_319
.LBB1_313:                              //  %land.lhs.true1004
                                        //    in Loop: Header=BB1_314 Depth=1
	beq x0, x22, .LBB1_317
.LBB1_314:                              //  %land.end1012
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x25
	jal iswspace
	bltu x0, x10, .LBB1_317
.LBB1_315:                              //  %while.body1013
                                        //    in Loop: Header=BB1_314 Depth=1
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	sw x25, 0 ( x10 )
	add x10, x10, 4
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	sub x10, x10, x20
	sra x25, x10, 2&31
	bltu x25, x23, .LBB1_312
.LBB1_316:                              //  %if.then1025
                                        //    in Loop: Header=BB1_314 Depth=1
	sll x11, x23, 3&31
	mv x10, x20
	jal realloc
	mv x20, x10
	bltu x0, x20, .LBB1_311
	jal x0, .LBB1_499
.LBB1_317:                              //  %if.then1044
	mv x10, x19
	mv x11, x25
	mv x12, x18
	jal _ungetwc_r
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	bltu x0, x9, .LBB1_320
	jal x0, .LBB1_323
.LBB1_318:
	sw x20, -1472 ( fp )            //  4-byte Folded Spill
.LBB1_319:                              //  %if.end1046
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	beq x0, x9, .LBB1_323
.LBB1_320:                              //  %if.end1046
	sub x10, x10, x20
	sra x10, x10, 2&31
	add x11, x10, 1
	bgeu x11, x23, .LBB1_323
.LBB1_321:                              //  %if.then1057
	lw x10, 0 ( x9 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_323
.LBB1_322:                              //  %if.then1062
	sw x10, 0 ( x9 )
.LBB1_323:                              //  %cleanup1066
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
.LBB1_324:                              //  %if.end1230
	add x22, x22, 1
	add x23, x0, -1
	lw x25, 0 ( x27 )
	beq x0, x25, .LBB1_590
.LBB1_591:                              //  %if.end1230
	jal x0, .LBB1_7
.LBB1_590:                              //  %if.end1230
	jal x0, .LBB1_502
.LBB1_325:
	sw x25, -1472 ( fp )            //  4-byte Folded Spill
.LBB1_326:                              //  %land.end652.us
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, -1496 ( fp )            //  4-byte Folded Reload
	lw x12, -1564 ( fp )            //  4-byte Folded Reload
	mv x11, x20
	jal wmemchr
	beq x0, x10, .LBB1_343
.LBB1_327:                              //  %while.body653.us
                                        //    in Loop: Header=BB1_326 Depth=1
	lw x11, -1472 ( fp )            //  4-byte Folded Reload
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sw x20, 0 ( x11 )
	add x11, x11, 4
	beq x0, x10, .LBB1_332
.LBB1_328:                              //  %while.body653.us
                                        //    in Loop: Header=BB1_326 Depth=1
	sub x10, x11, x25
	sra x20, x10, 2&31
	bltu x20, x9, .LBB1_332
.LBB1_329:                              //  %if.then665.us
                                        //    in Loop: Header=BB1_326 Depth=1
	sll x11, x9, 3&31
	mv x10, x25
	jal realloc
	mv x25, x10
	beq x0, x25, .LBB1_499
.LBB1_330:                              //  %if.end671.us
                                        //    in Loop: Header=BB1_326 Depth=1
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sll x9, x9, 1&31
	sw x25, 0 ( x10 )
	sll x10, x20, 2&31
	add x10, x10, x25
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_333
.LBB1_332:                              //    in Loop: Header=BB1_326 Depth=1
	sw x11, -1472 ( fp )            //  4-byte Folded Spill
.LBB1_333:                              //  %cleanup676.us
                                        //    in Loop: Header=BB1_326 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x20, x10
	xor x10, x20, -1
	beq x0, x10, .LBB1_344
.LBB1_334:                              //  %land.lhs.true627.us
                                        //    in Loop: Header=BB1_326 Depth=1
	add x23, x23, -1
	bltu x0, x23, .LBB1_326
	jal x0, .LBB1_343
.LBB1_335:                              //  %if.then170
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sh x21, 0 ( x10 )
	lw x25, 0 ( x27 )
	beq x0, x25, .LBB1_592
.LBB1_593:                              //  %if.then170
	jal x0, .LBB1_7
.LBB1_592:                              //  %if.then170
	jal x0, .LBB1_502
.LBB1_336:
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	add x23, x0, -1
	mv x12, x20
	mv x14, x9
	bltu x0, x25, .LBB1_207
	jal x0, .LBB1_497
.LBB1_337:
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	add x23, x0, -1
	mv x9, x10
	bltu x0, x10, .LBB1_208
	jal x0, .LBB1_211
.LBB1_338:
	mv x22, x25
.LBB1_339:                              //  %land.end652.us3525
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, -1496 ( fp )            //  4-byte Folded Reload
	lw x12, -1564 ( fp )            //  4-byte Folded Reload
	mv x11, x20
	jal wmemchr
	bltu x0, x10, .LBB1_342
.LBB1_340:                              //  %while.body653.us3527
                                        //    in Loop: Header=BB1_339 Depth=1
	mv x10, x19
	mv x11, x18
	sw x20, 0 ( x22 )
	jal _fgetwc_r
	mv x20, x10
	xor x10, x20, -1
	beq x0, x10, .LBB1_482
.LBB1_341:                              //  %land.lhs.true627.us3516
                                        //    in Loop: Header=BB1_339 Depth=1
	add x22, x22, 4
	add x23, x23, -1
	bltu x0, x23, .LBB1_339
.LBB1_342:
	sw x22, -1472 ( fp )            //  4-byte Folded Spill
.LBB1_343:                              //  %if.then683
	mv x10, x19
	mv x11, x20
	mv x12, x18
	jal _ungetwc_r
.LBB1_344:                              //  %if.end685
	add x23, x0, -1
.LBB1_345:                              //  %if.end685
	lw x11, -1472 ( fp )            //  4-byte Folded Reload
	sub x10, x11, x25
	beq x0, x10, .LBB1_532
.LBB1_346:                              //  %if.end693
	sra x22, x10, 2&31
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sw x0, 0 ( x11 )
	beq x0, x10, .LBB1_440
.LBB1_347:                              //  %if.end693
	add x11, x22, 1
	bgeu x11, x9, .LBB1_440
.LBB1_348:                              //  %if.then700
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sll x11, x11, 2&31
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB1_440
.LBB1_349:                              //  %if.then705
	lw x11, -1560 ( fp )            //  4-byte Folded Reload
	jal x0, .LBB1_439
.LBB1_350:                              //  %if.then740
	add x11, x10, 8
	lw x10, -1544 ( fp )            //  4-byte Folded Reload
	bltu x10, x11, .LBB1_504
.LBB1_351:                              //  %if.end760
	lw x10, 0 ( x24 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_504
.LBB1_352:                              //  %cleanup769
	lh x11, 4 ( x24 )
	sw x10, 0 ( x24 )
	add x11, x11, 8
	sh x11, 4 ( x24 )
	lhu x11, 6 ( x24 )
.LBB1_353:                              //  %if.end772
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -1564 ( fp )            //  4-byte Folded Reload
	lw x20, -1568 ( fp )            //  4-byte Folded Reload
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x24 )
	add x10, x0, 32
	sw x10, -1572 ( fp )            //  4-byte Folded Spill
	mv x11, x0
.LBB1_354:                              //  %if.end784
	add x10, fp, -64
	add x12, x0, 8
	jal memset
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x25, x10
	xor x11, x25, -1
	snez x10, x11
	beq x0, x23, .LBB1_372
.LBB1_355:                              //  %if.end784
	beq x0, x11, .LBB1_372
.LBB1_356:                              //  %land.rhs793.lr.ph
	lw x10, -1496 ( fp )            //  4-byte Folded Reload
	lw x11, -1516 ( fp )            //  4-byte Folded Reload
	sub x11, x11, x10
	sra x12, x11, 2&31
	lw x11, -1512 ( fp )            //  4-byte Folded Reload
	mv x9, x12
	beq x0, x11, .LBB1_373
.LBB1_357:                              //  %land.rhs793.preheader
	mv x22, x0
.LBB1_358:                              //  %land.rhs793
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, -1496 ( fp )            //  4-byte Folded Reload
	mv x11, x25
	jal wmemchr
	bltu x0, x10, .LBB1_433
.LBB1_359:                              //  %while.body815
                                        //    in Loop: Header=BB1_358 Depth=1
	mv x10, x19
	mv x11, x20
	mv x12, x25
	add x13, fp, -64
	jal _wcrtomb_r
	beq x0, x10, .LBB1_361
.LBB1_360:                              //  %while.body815
                                        //    in Loop: Header=BB1_358 Depth=1
	xor x11, x10, -1
	bltu x0, x11, .LBB1_362
	jal x0, .LBB1_500
.LBB1_361:                              //  %lor.lhs.false823
                                        //    in Loop: Header=BB1_358 Depth=1
	lw x11, -64 ( fp )
	xor x11, x11, -4
	beq x0, x11, .LBB1_363
.LBB1_362:                              //  %if.then827
                                        //    in Loop: Header=BB1_358 Depth=1
	add x23, x23, -1
.LBB1_363:                              //  %if.end829
                                        //    in Loop: Header=BB1_358 Depth=1
	lw x11, -1560 ( fp )            //  4-byte Folded Reload
	bltu x0, x11, .LBB1_369
.LBB1_364:                              //  %if.then832
                                        //    in Loop: Header=BB1_358 Depth=1
	add x20, x10, x20
	lw x10, -1564 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_369
.LBB1_365:                              //  %land.lhs.true840
                                        //    in Loop: Header=BB1_358 Depth=1
	lw x10, -1568 ( fp )            //  4-byte Folded Reload
	sub x25, x20, x10
	jal __locale_mb_cur_max
	lw x11, -1572 ( fp )            //  4-byte Folded Reload
	bgeu x25, x11, .LBB1_367
.LBB1_366:                              //  %land.lhs.true840
                                        //    in Loop: Header=BB1_358 Depth=1
	sub x10, x11, x10
	bltu x25, x10, .LBB1_369
.LBB1_367:                              //  %if.then848
                                        //    in Loop: Header=BB1_358 Depth=1
	lw x10, -1568 ( fp )            //  4-byte Folded Reload
	sll x11, x11, 1&31
	sw x11, -1572 ( fp )            //  4-byte Folded Spill
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB1_499
.LBB1_368:                              //  %if.end854
                                        //    in Loop: Header=BB1_358 Depth=1
	lw x10, -1564 ( fp )            //  4-byte Folded Reload
	add x20, x25, x11
	sw x11, -1568 ( fp )            //  4-byte Folded Spill
	sw x11, 0 ( x10 )
.LBB1_369:                              //  %if.end863
                                        //    in Loop: Header=BB1_358 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x25, x10
	xor x11, x25, -1
	add x22, x22, 1
	snez x10, x11
	beq x0, x23, .LBB1_389
.LBB1_370:                              //  %if.end863
                                        //    in Loop: Header=BB1_358 Depth=1
	mv x12, x9
	bltu x0, x11, .LBB1_358
	jal x0, .LBB1_389
.LBB1_372:
	mv x22, x0
	bltu x0, x10, .LBB1_433
	jal x0, .LBB1_434
.LBB1_373:                              //  %land.rhs793.lr.ph.split.us
	mv x11, x25
	jal wmemchr
	beq x0, x10, .LBB1_432
.LBB1_374:                              //  %while.body815.us.preheader
	seqz x22, x0
.LBB1_375:                              //  %while.body815.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x20
	mv x12, x25
	add x13, fp, -64
	jal _wcrtomb_r
	beq x0, x10, .LBB1_377
.LBB1_376:                              //  %while.body815.us
                                        //    in Loop: Header=BB1_375 Depth=1
	xor x11, x10, -1
	bltu x0, x11, .LBB1_378
	jal x0, .LBB1_500
.LBB1_377:                              //  %lor.lhs.false823.us
                                        //    in Loop: Header=BB1_375 Depth=1
	lw x11, -64 ( fp )
	xor x11, x11, -4
	beq x0, x11, .LBB1_379
.LBB1_378:                              //  %if.then827.us
                                        //    in Loop: Header=BB1_375 Depth=1
	add x23, x23, -1
.LBB1_379:                              //  %if.end829.us
                                        //    in Loop: Header=BB1_375 Depth=1
	lw x11, -1560 ( fp )            //  4-byte Folded Reload
	bltu x0, x11, .LBB1_385
.LBB1_380:                              //  %if.then832.us
                                        //    in Loop: Header=BB1_375 Depth=1
	add x20, x10, x20
	lw x10, -1564 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_385
.LBB1_381:                              //  %land.lhs.true840.us
                                        //    in Loop: Header=BB1_375 Depth=1
	lw x10, -1568 ( fp )            //  4-byte Folded Reload
	sub x25, x20, x10
	jal __locale_mb_cur_max
	lw x11, -1572 ( fp )            //  4-byte Folded Reload
	bgeu x25, x11, .LBB1_383
.LBB1_382:                              //  %land.lhs.true840.us
                                        //    in Loop: Header=BB1_375 Depth=1
	sub x10, x11, x10
	bltu x25, x10, .LBB1_385
.LBB1_383:                              //  %if.then848.us
                                        //    in Loop: Header=BB1_375 Depth=1
	lw x10, -1568 ( fp )            //  4-byte Folded Reload
	sll x11, x11, 1&31
	sw x11, -1572 ( fp )            //  4-byte Folded Spill
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB1_499
.LBB1_384:                              //  %if.end854.us
                                        //    in Loop: Header=BB1_375 Depth=1
	lw x10, -1564 ( fp )            //  4-byte Folded Reload
	add x20, x25, x11
	sw x11, -1568 ( fp )            //  4-byte Folded Spill
	sw x11, 0 ( x10 )
.LBB1_385:                              //  %if.end863.us
                                        //    in Loop: Header=BB1_375 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x25, x10
	xor x11, x25, -1
	snez x10, x11
	beq x0, x23, .LBB1_389
.LBB1_386:                              //  %if.end863.us
                                        //    in Loop: Header=BB1_375 Depth=1
	mv x12, x9
	beq x0, x11, .LBB1_389
.LBB1_387:                              //  %land.rhs793.us
                                        //    in Loop: Header=BB1_375 Depth=1
	lw x10, -1496 ( fp )            //  4-byte Folded Reload
	mv x11, x25
	jal wmemchr
	add x22, x22, 1
	bltu x0, x10, .LBB1_375
.LBB1_388:                              //  %if.then868.loopexit
	add x22, x22, -1
	jal x0, .LBB1_433
.LBB1_389:                              //  %while.end865
	bltu x0, x10, .LBB1_433
	jal x0, .LBB1_434
.LBB1_390:                              //  %if.then1097
	add x11, x10, 8
	lw x10, -1544 ( fp )            //  4-byte Folded Reload
	bltu x10, x11, .LBB1_504
.LBB1_391:                              //  %if.end1117
	lw x10, 0 ( x24 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_504
.LBB1_392:                              //  %cleanup1126
	lh x11, 4 ( x24 )
	sw x10, 0 ( x24 )
	add x11, x11, 8
	sh x11, 4 ( x24 )
	lhu x11, 6 ( x24 )
.LBB1_393:                              //  %if.end1129
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x9, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x24 )
	add x10, x0, 32
	sw x10, -1564 ( fp )            //  4-byte Folded Spill
	sw x20, -1560 ( fp )            //  4-byte Folded Spill
	mv x11, x0
.LBB1_394:                              //  %if.end1141
	add x10, fp, -64
	add x12, x0, 8
	jal memset
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x25, x10
	xor x11, x25, -1
	snez x10, x11
	beq x0, x22, .LBB1_484
.LBB1_395:                              //  %if.end1141
	beq x0, x11, .LBB1_484
.LBB1_396:                              //  %land.rhs1150.lr.ph
	beq x0, x23, .LBB1_405
.LBB1_397:                              //  %land.rhs1150.us
	mv x10, x25
	jal iswspace
	bltu x0, x10, .LBB1_485
.LBB1_398:                              //  %while.body1155.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x20
	mv x11, x25
	add x12, fp, -64
	jal wcrtomb
	beq x0, x10, .LBB1_400
.LBB1_399:                              //  %while.body1155.us
                                        //    in Loop: Header=BB1_398 Depth=1
	xor x10, x10, -1
	bltu x0, x10, .LBB1_401
	jal x0, .LBB1_500
.LBB1_400:                              //  %lor.lhs.false1163.us
                                        //    in Loop: Header=BB1_398 Depth=1
	lw x10, -64 ( fp )
	xor x10, x10, -4
	beq x0, x10, .LBB1_402
.LBB1_401:                              //  %if.then1167.us
                                        //    in Loop: Header=BB1_398 Depth=1
	add x22, x22, -1
.LBB1_402:                              //  %if.end1203.us
                                        //    in Loop: Header=BB1_398 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x25, x10
	xor x10, x25, -1
	beq x0, x22, .LBB1_483
.LBB1_403:                              //  %if.end1203.us
                                        //    in Loop: Header=BB1_398 Depth=1
	beq x0, x10, .LBB1_483
.LBB1_404:                              //  %land.rhs1150.us
                                        //    in Loop: Header=BB1_398 Depth=1
	add x21, x21, 1
	mv x10, x25
	jal iswspace
	beq x0, x10, .LBB1_398
	jal x0, .LBB1_485
.LBB1_405:                              //  %land.rhs1150
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x25
	jal iswspace
	bltu x0, x10, .LBB1_485
.LBB1_406:                              //  %while.body1155
                                        //    in Loop: Header=BB1_405 Depth=1
	mv x10, x20
	mv x11, x25
	add x12, fp, -64
	jal wcrtomb
	beq x0, x10, .LBB1_408
.LBB1_407:                              //  %while.body1155
                                        //    in Loop: Header=BB1_405 Depth=1
	xor x11, x10, -1
	bltu x0, x11, .LBB1_409
	jal x0, .LBB1_500
.LBB1_408:                              //  %lor.lhs.false1163
                                        //    in Loop: Header=BB1_405 Depth=1
	lw x11, -64 ( fp )
	xor x11, x11, -4
	beq x0, x11, .LBB1_410
.LBB1_409:                              //  %if.then1167
                                        //    in Loop: Header=BB1_405 Depth=1
	add x22, x22, -1
.LBB1_410:                              //  %if.then1172
                                        //    in Loop: Header=BB1_405 Depth=1
	add x20, x10, x20
	beq x0, x9, .LBB1_415
.LBB1_411:                              //  %land.lhs.true1180
                                        //    in Loop: Header=BB1_405 Depth=1
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sub x25, x20, x10
	jal __locale_mb_cur_max
	lw x11, -1564 ( fp )            //  4-byte Folded Reload
	bgeu x25, x11, .LBB1_413
.LBB1_412:                              //  %land.lhs.true1180
                                        //    in Loop: Header=BB1_405 Depth=1
	sub x10, x11, x10
	bltu x25, x10, .LBB1_415
.LBB1_413:                              //  %if.then1188
                                        //    in Loop: Header=BB1_405 Depth=1
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sll x11, x11, 1&31
	sw x11, -1564 ( fp )            //  4-byte Folded Spill
	jal realloc
	beq x0, x10, .LBB1_499
.LBB1_414:                              //  %if.end1194
                                        //    in Loop: Header=BB1_405 Depth=1
	add x20, x25, x10
	sw x10, 0 ( x9 )
	sw x10, -1560 ( fp )            //  4-byte Folded Spill
.LBB1_415:                              //  %if.end1203
                                        //    in Loop: Header=BB1_405 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x25, x10
	xor x11, x25, -1
	add x21, x21, 1
	snez x10, x11
	beq x0, x22, .LBB1_484
.LBB1_416:                              //  %if.end1203
                                        //    in Loop: Header=BB1_405 Depth=1
	bltu x0, x11, .LBB1_405
	jal x0, .LBB1_484
.LBB1_417:                              //  %if.end1046.loopexit
	add x9, x9, 4
	sw x9, -1472 ( fp )             //  4-byte Folded Spill
	mv x9, x23
	mv x23, x20
	lw x20, -1560 ( fp )            //  4-byte Folded Reload
	add x21, x21, 1
	lw x10, -1472 ( fp )            //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	bltu x0, x9, .LBB1_320
	jal x0, .LBB1_323
.LBB1_418:                              //  %if.then1310.split.loop.exit6271
	sw x10, -1476 ( fp )            //  4-byte Folded Spill
.LBB1_419:                              //  %if.then1310
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
.LBB1_420:                              //  %for.end
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	and x10, x9, 256
	bltu x0, x10, .LBB1_511
.LBB1_421:                              //  %if.end1325
	lw x11, -4 ( x25 )
	or x10, x11, 32
	xor x10, x10, 120
	bltu x0, x10, .LBB1_423
.LBB1_422:                              //  %if.then1332
	mv x10, x19
	mv x12, x18
	add x25, x25, -4
	jal _ungetwc_r
.LBB1_423:                              //  %if.end1335
	and x10, x9, 16
	bltu x0, x10, .LBB1_495
.LBB1_424:                              //  %if.then1339
	lw x13, -1476 ( fp )            //  4-byte Folded Reload
	lw x14, -1500 ( fp )            //  4-byte Folded Reload
	mv x10, x19
	add x11, fp, -1464
	mv x12, x0
	sw x0, 0 ( x25 )
	call.reg x14
	and x11, x9, 32
	bltu x0, x11, .LBB1_429
.LBB1_425:                              //  %if.else1346
	and x11, x9, 8
	bltu x0, x11, .LBB1_430
.LBB1_426:                              //  %if.else1352
	and x11, x9, 4
	bltu x0, x11, .LBB1_431
.LBB1_427:                              //  %if.else1358
	and x11, x9, 1
	bltu x0, x11, .LBB1_429
.LBB1_428:                              //  %if.else1363
	and x11, x9, 2
	bltu x0, x11, .LBB1_442
.LBB1_429:                              //  %if.else1377
	lw x11, -56 ( fp )
	add x12, x11, 4
	sw x12, -56 ( fp )
	lw x11, 0 ( x11 )
	sw x10, 0 ( x11 )
	jal x0, .LBB1_494
.LBB1_430:                              //  %if.then1349
	lw x11, -56 ( fp )
	add x12, x11, 4
	sw x12, -56 ( fp )
	lw x11, 0 ( x11 )
	sb x10, 0 ( x11 )
	jal x0, .LBB1_494
.LBB1_431:                              //  %if.then1355
	lw x11, -56 ( fp )
	add x12, x11, 4
	sw x12, -56 ( fp )
	lw x11, 0 ( x11 )
	sh x10, 0 ( x11 )
	jal x0, .LBB1_494
.LBB1_432:
	mv x22, x0
.LBB1_433:                              //  %if.then868
	mv x10, x19
	mv x11, x25
	mv x12, x18
	jal _ungetwc_r
.LBB1_434:                              //  %if.end870
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	add x23, x0, -1
	bltu x0, x10, .LBB1_441
.LBB1_435:                              //  %if.then873
	lw x10, -1564 ( fp )            //  4-byte Folded Reload
	sb x0, 0 ( x20 )
	beq x0, x10, .LBB1_440
.LBB1_436:                              //  %if.then873
	lw x10, -1568 ( fp )            //  4-byte Folded Reload
	sub x10, x20, x10
	add x11, x10, 1
	lw x10, -1572 ( fp )            //  4-byte Folded Reload
	bgeu x11, x10, .LBB1_440
.LBB1_437:                              //  %if.then883
	lw x10, -1564 ( fp )            //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB1_440
.LBB1_438:                              //  %if.then888
	lw x11, -1564 ( fp )            //  4-byte Folded Reload
.LBB1_439:                              //  %if.end890
	sw x10, 0 ( x11 )
.LBB1_440:                              //  %if.end890
	lw x10, -1556 ( fp )            //  4-byte Folded Reload
	add x10, x10, 1
	sw x10, -1556 ( fp )            //  4-byte Folded Spill
.LBB1_441:                              //  %if.end899
	add x21, x21, x22
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	lw x25, 0 ( x27 )
	beq x0, x25, .LBB1_594
.LBB1_595:                              //  %if.end899
	jal x0, .LBB1_7
.LBB1_594:                              //  %if.end899
	jal x0, .LBB1_502
.LBB1_442:                              //  %if.then1366
	lw x10, -1508 ( fp )            //  4-byte Folded Reload
	lw x11, -1500 ( fp )            //  4-byte Folded Reload
	beq x11, x10, .LBB1_492
.LBB1_443:                              //  %if.else1372
	lw x13, -1476 ( fp )            //  4-byte Folded Reload
	mv x10, x19
	add x11, fp, -1464
	mv x12, x0
	jal _wcstoll_r
	jal x0, .LBB1_493
.LBB1_444:                              //  %sw.epilog1537
	xor x10, x11, -1
	beq x0, x10, .LBB1_446
.LBB1_445:                              //  %if.then1540
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
.LBB1_446:                              //  %for.end1546
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_448
.LBB1_447:
	lw x14, -1472 ( fp )            //  4-byte Folded Reload
	and x14, x14, -257
	jal x0, .LBB1_450
.LBB1_448:
	lw x14, -1472 ( fp )            //  4-byte Folded Reload
	mv x10, x0
.LBB1_449:                              //  %for.end1546.thread
	sw x10, -1560 ( fp )            //  4-byte Folded Spill
.LBB1_450:
	sll x10, x20, 24&31
	sra x10, x10, 24&31
	add x10, x10, -1
	seqz x11, x0
	bgeu x11, x10, .LBB1_513
.LBB1_451:                              //  %if.end1565
	sll x10, x9, 24&31
	sra x10, x10, 24&31
	add x11, x10, -1
	add x12, x0, 6
	bltu x12, x11, .LBB1_457
.LBB1_452:                              //  %if.then1570
	slti x10, x10, 3
	add x23, x0, -1
	bltu x0, x10, .LBB1_518
.LBB1_453:                              //  %while.cond1575.preheader
	and x10, x9, 255
	xor x10, x10, 3
	beq x0, x10, .LBB1_458
.LBB1_454:                              //  %while.body1580.preheader
	sll x10, x22, 2&31
	add x11, fp, -1468
	add x20, x10, x11
	add x10, x9, -4
	and x23, x10, 255
	add x25, x0, 3
	sw x14, -1472 ( fp )            //  4-byte Folded Spill
.LBB1_455:                              //  %while.body1580
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x20 )
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	lw x13, -1484 ( fp )            //  4-byte Folded Reload
	sll x10, x9, 24&31
	add x20, x20, -4
	add x22, x22, -1
	add x10, x13, x10
	sra x9, x10, 24&31
	blt x25, x9, .LBB1_455
.LBB1_456:                              //  %if.end1596.loopexit
	lw x14, -1472 ( fp )            //  4-byte Folded Reload
	xor x10, x23, -1
	add x21, x10, x21
.LBB1_457:
	add x23, x0, -1
.LBB1_458:                              //  %if.end1596
	sll x10, x22, 2&31
	add x11, fp, -1464
	add x9, x10, x11
	and x11, x14, 256
	bltu x0, x11, .LBB1_460
.LBB1_459:
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	mv x20, x9
	and x10, x14, 16
	sw x20, -1472 ( fp )            //  4-byte Folded Spill
	beq x0, x10, .LBB1_596
.LBB1_597:
	jal x0, .LBB1_6
.LBB1_596:
	jal x0, .LBB1_465
.LBB1_460:                              //  %if.then1599
	and x11, x14, 1024
	bltu x0, x11, .LBB1_522
.LBB1_461:                              //  %if.end1612
	lw x11, -4 ( x9 )
	mv x25, x14
	or x10, x11, 32
	xor x10, x10, 101
	bltu x0, x10, .LBB1_463
.LBB1_462:
	add x21, x21, -1
	add x20, x9, -4
	jal x0, .LBB1_464
.LBB1_463:                              //  %if.then1620
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	lw x11, -8 ( x9 )
	add x21, x21, -2
	add x20, x9, -8
.LBB1_464:                              //  %if.end1624
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	mv x14, x25
	and x10, x14, 16
	sw x20, -1472 ( fp )            //  4-byte Folded Spill
	beq x0, x10, .LBB1_465
.LBB1_598:                              //  %if.end1624
	jal x0, .LBB1_6
.LBB1_465:                              //  %if.then1630
	and x10, x14, 1536
	mv x9, x14
	xor x10, x10, 1024
	sw x0, 0 ( x20 )
	bltu x0, x10, .LBB1_468
.LBB1_466:                              //  %if.end1645
	lw x10, -1564 ( fp )            //  4-byte Folded Reload
	lw x11, -1560 ( fp )            //  4-byte Folded Reload
	sub x10, x11, x10
	beq x0, x10, .LBB1_472
.LBB1_467:
	sub x10, x0, x10
	mv x12, x20
	lw x11, -1536 ( fp )            //  4-byte Folded Reload
	bltu x12, x11, .LBB1_471
.LBB1_470:                              //  %if.then1647
	lw x12, -1548 ( fp )            //  4-byte Folded Reload
.LBB1_471:                              //  %if.then1647
	add sp, sp, -16
	lw x11, -1540 ( fp )            //  4-byte Folded Reload
	sw x10, 12 ( sp )
	add x10, x0, 11
	sw x10, 4 ( sp )
	sw x11, 8 ( sp )
	sw x12, 0 ( sp )
	jal swprintf
	add sp, sp, 16
	jal x0, .LBB1_472
.LBB1_468:                              //  %if.else1638
	lw x10, -1568 ( fp )            //  4-byte Folded Reload
	beq x0, x10, .LBB1_472
.LBB1_469:                              //  %if.end1645.thread2731
	lw x25, -1572 ( fp )            //  4-byte Folded Reload
	sw x10, -1568 ( fp )            //  4-byte Folded Spill
	mv x10, x19
	mv x12, x0
	add x11, x25, 4
	add x13, x0, 10
	jal _wcstol_r
	lw x11, -1568 ( fp )            //  4-byte Folded Reload
	mv x12, x25
	sub x10, x10, x11
	lw x11, -1536 ( fp )            //  4-byte Folded Reload
	bltu x12, x11, .LBB1_471
	jal x0, .LBB1_470
.LBB1_472:                              //  %if.end1660
	mv x10, x19
	add x11, fp, -1464
	mv x12, x0
	mv x25, x23
	jal _wcstod_r
	mv x20, x10
	mv x23, x11
	and x10, x9, 1
	bltu x0, x10, .LBB1_476
.LBB1_473:                              //  %if.else1667
	and x10, x9, 2
	bltu x0, x10, .LBB1_477
.LBB1_474:                              //  %if.else1673
	lw x9, -56 ( fp )
	mv x13, x23
	mv x11, x23
	mv x12, x20
	add x10, x9, 4
	sw x10, -56 ( fp )
	mv x10, x20
	jal __unorddf2
	lw x9, 0 ( x9 )
	bltu x0, x10, .LBB1_478
.LBB1_475:                              //  %if.else1678
	mv x10, x20
	mv x11, x23
	jal __truncdfsf2
	jal x0, .LBB1_479
.LBB1_476:                              //  %if.then1665
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x23, 4 ( x10 )
	sw x20, 0 ( x10 )
	jal x0, .LBB1_480
.LBB1_477:                              //  %if.then1670
	lw x9, -56 ( fp )
	mv x11, x23
	add x10, x9, 4
	sw x10, -56 ( fp )
	mv x10, x20
	jal __extenddftf2
	lw x14, 0 ( x9 )
	sw x13, 12 ( x14 )
	sw x12, 8 ( x14 )
	sw x11, 4 ( x14 )
	sw x10, 0 ( x14 )
	jal x0, .LBB1_480
.LBB1_478:                              //  %if.then1676
	lw x10, -1552 ( fp )            //  4-byte Folded Reload
	jal nanf
.LBB1_479:                              //  %if.end1682
	sw x10, 0 ( x9 )
.LBB1_480:                              //  %if.end1682
	mv x23, x25
	add x22, x22, 1
	lw x25, 0 ( x27 )
	beq x0, x25, .LBB1_599
.LBB1_600:                              //  %if.end1682
	jal x0, .LBB1_7
.LBB1_599:                              //  %if.end1682
	jal x0, .LBB1_502
.LBB1_481:                              //  %if.then181
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sra x11, x21, 31&31
	sw x11, 4 ( x10 )
	sw x21, 0 ( x10 )
	lw x25, 0 ( x27 )
	beq x0, x25, .LBB1_601
.LBB1_602:                              //  %if.then181
	jal x0, .LBB1_7
.LBB1_601:                              //  %if.then181
	jal x0, .LBB1_502
.LBB1_482:                              //  %if.end685.loopexit27
	add x10, x22, 4
	sw x10, -1472 ( fp )            //  4-byte Folded Spill
	jal x0, .LBB1_344
.LBB1_483:                              //  %while.end1205.loopexit
	snez x10, x10
	add x21, x21, 1
.LBB1_484:                              //  %while.end1205
	beq x0, x10, .LBB1_486
.LBB1_485:                              //  %if.then1208
	mv x10, x19
	mv x11, x25
	mv x12, x18
	jal _ungetwc_r
.LBB1_486:                              //  %if.end1210
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	beq x0, x23, .LBB1_488
.LBB1_487:                              //  %if.end1239
	add x23, x0, -1
	lw x25, 0 ( x27 )
	beq x0, x25, .LBB1_603
.LBB1_604:                              //  %if.end1239
	jal x0, .LBB1_7
.LBB1_603:                              //  %if.end1239
	jal x0, .LBB1_502
.LBB1_488:                              //  %if.then1213
	sb x0, 0 ( x20 )
	beq x0, x9, .LBB1_324
.LBB1_489:                              //  %if.then1213
	lw x10, -1560 ( fp )            //  4-byte Folded Reload
	sub x10, x20, x10
	add x11, x10, 1
	lw x10, -1564 ( fp )            //  4-byte Folded Reload
	bgeu x11, x10, .LBB1_324
.LBB1_490:                              //  %if.then1223
	lw x10, 0 ( x9 )
	jal realloc
	beq x0, x10, .LBB1_324
.LBB1_491:                              //  %if.then1228
	sw x10, 0 ( x9 )
	jal x0, .LBB1_324
.LBB1_492:                              //  %if.then1369
	lw x13, -1476 ( fp )            //  4-byte Folded Reload
	mv x10, x19
	add x11, fp, -1464
	mv x12, x0
	jal _wcstoull_r
.LBB1_493:                              //  %if.end1375
	lw x12, -56 ( fp )
	add x13, x12, 4
	sw x13, -56 ( fp )
	lw x12, 0 ( x12 )
	sw x11, 4 ( x12 )
	sw x10, 0 ( x12 )
.LBB1_494:                              //  %if.end1383
	add x22, x22, 1
.LBB1_495:                              //  %if.end1385
	add x10, fp, -1464
	sub x10, x25, x10
	sra x10, x10, 2&31
	sw x25, -1472 ( fp )            //  4-byte Folded Spill
	add x21, x21, x10
	lw x25, 0 ( x27 )
	beq x0, x25, .LBB1_605
.LBB1_606:                              //  %if.end1385
	jal x0, .LBB1_7
.LBB1_605:                              //  %if.end1385
	jal x0, .LBB1_502
.LBB1_496:
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	mv x23, x25
.LBB1_497:                              //  %input_failure
	beq x0, x22, .LBB1_501
.LBB1_498:                              //  %land.lhs.true1695
	lbu x10, 12 ( x18 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB1_502
.LBB1_499:                              //  %land.lhs.true1695
	add x22, x0, -1
	bltu x0, x24, .LBB1_503
	jal x0, .LBB1_509
.LBB1_500:                              //  %input_failure.loopexit35
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	add x23, x0, -1
	bltu x0, x22, .LBB1_498
.LBB1_501:
	mv x22, x23
.LBB1_502:                              //  %all_done
	beq x0, x24, .LBB1_509
.LBB1_503:                              //  %if.then1718
	xor x10, x22, -1
	bltu x0, x10, .LBB1_507
.LBB1_504:                              //  %for.cond1722.preheader
	lhu x10, 6 ( x24 )
	add x22, x0, -1
	beq x0, x10, .LBB1_507
.LBB1_505:                              //  %for.body1727.lr.ph
	mv x9, x0
	mv x18, x9
.LBB1_506:                              //  %for.body1727
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x24 )
	add x10, x9, x10
	lw x10, 0 ( x10 )
	lw x10, 0 ( x10 )
	jal free
	lw x10, 0 ( x24 )
	add x18, x18, 1
	add x10, x9, x10
	lw x10, 0 ( x10 )
	add x9, x9, 4
	sw x0, 0 ( x10 )
	lhu x10, 6 ( x24 )
	bltu x18, x10, .LBB1_506
.LBB1_507:                              //  %if.end1735
	lw x10, 0 ( x24 )
	beq x0, x10, .LBB1_509
.LBB1_508:                              //  %if.then1738
	jal free
.LBB1_509:                              //  %cleanup1744
	mv x10, x22
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
.LBB1_510:
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	bltu x0, x22, .LBB1_498
	jal x0, .LBB1_501
.LBB1_511:                              //  %if.then1317
	beq x0, x20, .LBB1_502
.LBB1_512:                              //  %if.then1321
	lw x11, -4 ( x25 )
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	bltu x0, x24, .LBB1_503
	jal x0, .LBB1_509
.LBB1_513:                              //  %while.cond1556.preheader
	add x9, fp, -1464
	bgeu x9, x23, .LBB1_532
.LBB1_514:                              //  %while.body1560.preheader
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
.LBB1_515:                              //  %while.body1560
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, -4 ( x23 )
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	add x23, x23, -4
	bltu x9, x23, .LBB1_515
	jal x0, .LBB1_502
.LBB1_516:                              //  %if.then44
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	bltu x0, x22, .LBB1_498
	jal x0, .LBB1_501
.LBB1_535:
	mv x22, x23
	bltu x0, x24, .LBB1_503
	jal x0, .LBB1_509
.LBB1_518:                              //  %while.cond1586.preheader
	bge x0, x22, .LBB1_532
.LBB1_519:                              //  %while.body1590.preheader
	sll x10, x22, 2&31
	add x11, fp, -1464
	add x10, x10, x11
	add x9, x10, -4
.LBB1_520:                              //  %while.body1590
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x9 )
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	add x9, x9, -4
	add x22, x22, -1
	blt x0, x22, .LBB1_520
	jal x0, .LBB1_532
.LBB1_522:                              //  %while.cond1603.preheader
	bge x0, x22, .LBB1_532
.LBB1_523:                              //  %while.body1607.preheader
	add x11, fp, -1464
	add x10, x10, x11
	add x9, x10, -4
.LBB1_524:                              //  %while.body1607
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x9 )
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	add x9, x9, -4
	add x22, x22, -1
	blt x0, x22, .LBB1_524
.LBB1_532:
	lw x22, -1556 ( fp )            //  4-byte Folded Reload
	bltu x0, x24, .LBB1_503
	jal x0, .LBB1_509
.Lfunc_end1:
	.size	__svfwscanf_r, .Lfunc_end1-__svfwscanf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_39
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_32
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_38
	.long	.LBB1_502
	.long	.LBB1_43
	.long	.LBB1_502
	.long	.LBB1_38
	.long	.LBB1_38
	.long	.LBB1_38
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_30
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_44
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_42
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_45
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_38
	.long	.LBB1_502
	.long	.LBB1_47
	.long	.LBB1_48
	.long	.LBB1_38
	.long	.LBB1_38
	.long	.LBB1_38
	.long	.LBB1_17
	.long	.LBB1_49
	.long	.LBB1_30
	.long	.LBB1_502
	.long	.LBB1_20
	.long	.LBB1_34
	.long	.LBB1_50
	.long	.LBB1_56
	.long	.LBB1_57
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_59
	.long	.LBB1_16
	.long	.LBB1_60
	.long	.LBB1_502
	.long	.LBB1_502
	.long	.LBB1_42
	.long	.LBB1_502
	.long	.LBB1_16
JTI1_1:
	.long	.LBB1_76
	.long	.LBB1_87
	.long	.LBB1_98
	.long	.LBB1_108
	.long	.LBB1_130
JTI1_2:
	.long	.LBB1_155
	.long	.LBB1_175
	.long	.LBB1_155
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_178
	.long	.LBB1_151
	.long	.LBB1_151
	.long	.LBB1_151
	.long	.LBB1_151
	.long	.LBB1_151
	.long	.LBB1_151
	.long	.LBB1_151
	.long	.LBB1_151
	.long	.LBB1_151
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_157
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_159
	.long	.LBB1_165
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_167
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_171
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_173
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_157
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_159
	.long	.LBB1_165
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_181
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_167
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_171
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_175
	.long	.LBB1_173
JTI1_3:
	.long	.LBB1_420
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_118
	.long	.LBB1_419
	.long	.LBB1_118
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_125
	.long	.LBB1_112
	.long	.LBB1_112
	.long	.LBB1_112
	.long	.LBB1_112
	.long	.LBB1_112
	.long	.LBB1_112
	.long	.LBB1_112
	.long	.LBB1_120
	.long	.LBB1_120
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_116
	.long	.LBB1_116
	.long	.LBB1_116
	.long	.LBB1_116
	.long	.LBB1_116
	.long	.LBB1_116
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_122
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_116
	.long	.LBB1_116
	.long	.LBB1_116
	.long	.LBB1_116
	.long	.LBB1_116
	.long	.LBB1_116
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_419
	.long	.LBB1_122
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
