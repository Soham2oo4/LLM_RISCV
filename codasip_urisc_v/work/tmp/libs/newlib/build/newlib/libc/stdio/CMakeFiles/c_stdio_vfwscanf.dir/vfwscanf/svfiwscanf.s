	.text
	.file	"svfiwscanf.c"
	.globl	__ssvfiwscanf_r         //  -- Begin function __ssvfiwscanf_r
	.type	__ssvfiwscanf_r,@function
__ssvfiwscanf_r:                        //  @__ssvfiwscanf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -336
	.cfi_adjust_cfa_offset 336
	sw fp, 320 ( sp )
	.cfi_offset 8, -16
	add fp, sp, 320
	.cfi_def_cfa 8, 16
	sw x18, -12 ( fp )              //  4-byte Folded Spill
	.cfi_offset 18, -28
	mv x18, x11
	lhu x11, 12 ( x18 )
	sw x19, -16 ( fp )              //  4-byte Folded Spill
	.cfi_offset 19, -32
	mv x19, x10
	lui x10, (8192>>12)&1048575
	sw x26, -44 ( fp )              //  4-byte Folded Spill
	.cfi_offset 26, -60
	mv x26, x12
	and x12, x10, x11
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
	sw x27, -48 ( fp )              //  4-byte Folded Spill
	.cfi_offset 27, -64
	sw x13, -56 ( fp )
	bltu x0, x12, .LBB0_2
.LBB0_1:                                //  %if.then
	or x11, x10, x11
	sh x11, 12 ( x18 )
	lw x11, 100 ( x18 )
	or x10, x10, x11
	sw x10, 100 ( x18 )
.LBB0_2:                                //  %do.end
	lw x25, 0 ( x26 )
	bltu x0, x25, .LBB0_3
.LBB0_572:                              //  %do.end
	jal x0, .LBB0_534
.LBB0_3:                                //  %if.end7.lr.ph.lr.ph.lr.ph.lr.ph.lr.ph
	add x10, x18, 63
	sw x10, -240 ( fp )             //  4-byte Folded Spill
	add x10, x18, 64
	sw x10, -244 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( JTI0_0 )
	add x24, x10, %lo( JTI0_0 )
	lui x10, %hi( 65503 )
	add x10, x10, %lo( 65503 )
	sw x10, -232 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( JTI0_1 )
	add x10, x10, %lo( JTI0_1 )
	sw x10, -264 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	sw x10, -296 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _wcstoul_r )
	add x10, x10, %lo( _wcstoul_r )
	sw x10, -272 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( JTI0_2 )
	add x10, x10, %lo( JTI0_2 )
	sw x10, -260 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( -65665 )
	add x10, x10, %lo( -65665 )
	sw x10, -292 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( __ssvfiwscanf_r.basefix )
	add x10, x10, %lo( __ssvfiwscanf_r.basefix )
	mv x11, x0
	sw x10, -276 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _wcstol_r )
	add x10, x10, %lo( _wcstol_r )
	mv x20, x11
	add x21, x18, 4
	mv x9, x11
	sw x10, -288 ( fp )             //  4-byte Folded Spill
	sw x11, -248 ( fp )             //  4-byte Folded Spill
	sw x11, -236 ( fp )             //  4-byte Folded Spill
	sw x11, -252 ( fp )             //  4-byte Folded Spill
	sw x11, -268 ( fp )             //  4-byte Folded Spill
	sw x11, -256 ( fp )             //  4-byte Folded Spill
	sw x11, -284 ( fp )             //  4-byte Folded Spill
	sw x11, -280 ( fp )             //  4-byte Folded Spill
.LBB0_4:                                //  %if.end7.lr.ph.lr.ph.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_27 Depth 2
                                        //      Child Loop BB0_82 Depth 2
                                        //      Child Loop BB0_88 Depth 2
                                        //      Child Loop BB0_148 Depth 2
                                        //      Child Loop BB0_135 Depth 2
                                        //      Child Loop BB0_325 Depth 2
                                        //      Child Loop BB0_204 Depth 2
                                        //      Child Loop BB0_416 Depth 2
                                        //      Child Loop BB0_183 Depth 2
                                        //      Child Loop BB0_124 Depth 2
                                        //      Child Loop BB0_211 Depth 2
                                        //      Child Loop BB0_306 Depth 2
                                        //        Child Loop BB0_307 Depth 3
                                        //      Child Loop BB0_437 Depth 2
                                        //        Child Loop BB0_438 Depth 3
                                        //      Child Loop BB0_364 Depth 2
                                        //      Child Loop BB0_381 Depth 2
                                        //      Child Loop BB0_295 Depth 2
                                        //      Child Loop BB0_166 Depth 2
                                        //      Child Loop BB0_272 Depth 2
                                        //      Child Loop BB0_113 Depth 2
                                        //      Child Loop BB0_9 Depth 2
	lw x23, -240 ( fp )             //  4-byte Folded Reload
	lw x27, -244 ( fp )             //  4-byte Folded Reload
	mv x10, x25
	add x26, x26, 4
	jal iswspace
	bltu x0, x10, .LBB0_9
	jal x0, .LBB0_23
.LBB0_5:                                //  %if.end13.if.end32_crit_edge.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
.LBB0_6:                                //  %if.end32.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 4 ( x18 )
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	add x10, x0, 2
	sw x11, 60 ( x18 )
	sw x27, 48 ( x18 )
	sw x23, 0 ( x18 )
	sw x10, 4 ( x18 )
	sw x22, 63 ( x18 )
.LBB0_7:                                //  %if.end19
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x25, 0 ( x26 )
	bltu x0, x25, .LBB0_8
.LBB0_573:                              //  %if.end19
	jal x0, .LBB0_556
.LBB0_8:                                //  %if.end7
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x25
	add x26, x26, 4
	jal iswspace
	beq x0, x10, .LBB0_23
.LBB0_9:                                //  %while.cond
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_12
.LBB0_10:                               //  %land.lhs.true.i
                                        //    in Loop: Header=BB0_9 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_7
.LBB0_11:                               //  %land.lhs.true.if.end_crit_edge.i
                                        //    in Loop: Header=BB0_9 Depth=2
	lw x10, 0 ( x21 )
.LBB0_12:                               //  %_sfgetwc_r.exit
                                        //    in Loop: Header=BB0_9 Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x22, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x22, -1
	beq x0, x10, .LBB0_7
.LBB0_13:                               //  %land.rhs
                                        //    in Loop: Header=BB0_9 Depth=2
	mv x10, x22
	jal iswspace
	bltu x0, x10, .LBB0_9
.LBB0_14:                               //  %if.end.i2113
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	lw x11, -232 ( fp )             //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_19
.LBB0_15:                               //  %if.then4.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_17
.LBB0_16:                               //  %land.lhs.true.i2117
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_7
.LBB0_17:                               //  %if.end9.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x22, -4 ( x10 )
.LBB0_18:                               //  %if.end19
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	lw x25, 0 ( x26 )
	bltu x0, x25, .LBB0_8
	jal x0, .LBB0_556
.LBB0_19:                               //  %if.end13.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_5
.LBB0_20:                               //  %land.lhs.true17.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_6
.LBB0_21:                               //  %land.lhs.true23.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x22, .LBB0_6
.LBB0_22:                               //  %if.then27.i
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_18
.LBB0_23:                               //  %if.end20
                                        //    in Loop: Header=BB0_4 Depth=1
	xor x10, x25, 37
	bltu x0, x10, .LBB0_48
.LBB0_24:                               //  %again.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x27, x0
	mv x22, x27
	mv x10, x26
	add x23, x0, 85
	lw x25, 0 ( x10 )
	add x11, x25, -37
	bgeu x23, x11, .LBB0_27
	jal x0, .LBB0_556
.LBB0_25:                               //  %sw.bb85
                                        //    in Loop: Header=BB0_27 Depth=2
	and x11, x27, 15
	mv x10, x26
	beq x0, x11, .LBB0_26
.LBB0_574:                              //  %sw.bb85
	jal x0, .LBB0_556
.LBB0_26:                               //  %again
                                        //    in Loop: Header=BB0_27 Depth=2
	lw x25, 0 ( x10 )
	add x11, x25, -37
	bgeu x23, x11, .LBB0_27
.LBB0_575:                              //  %again
	jal x0, .LBB0_556
.LBB0_27:                               //  %again
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sll x11, x11, 2&31
	add x11, x24, x11
	lw x11, 0 ( x11 )
	add x26, x10, 4
	jr x11
.LBB0_28:                               //  %sw.bb102
                                        //    in Loop: Header=BB0_27 Depth=2
	and x10, x27, 143
	beq x0, x10, .LBB0_29
.LBB0_576:                              //  %sw.bb102
	jal x0, .LBB0_556
.LBB0_29:                               //  %if.end106
                                        //    in Loop: Header=BB0_27 Depth=2
	mv x10, x22
	add x11, x0, 10
	jal __mulsi3
	add x10, x25, x10
	add x22, x10, -48
	mv x10, x26
	lw x25, 0 ( x10 )
	add x11, x25, -37
	bgeu x23, x11, .LBB0_27
	jal x0, .LBB0_556
.LBB0_30:                               //  %sw.bb55
                                        //    in Loop: Header=BB0_27 Depth=2
	and x10, x27, 15
	beq x0, x10, .LBB0_31
.LBB0_577:                              //  %sw.bb55
	jal x0, .LBB0_556
.LBB0_31:                               //  %if.end59
                                        //    in Loop: Header=BB0_27 Depth=2
	or x27, x27, 2
	mv x10, x26
	lw x25, 0 ( x10 )
	add x11, x25, -37
	bgeu x23, x11, .LBB0_27
	jal x0, .LBB0_556
.LBB0_32:                               //  %sw.bb36
                                        //    in Loop: Header=BB0_27 Depth=2
	and x10, x27, 159
	or x10, x22, x10
	beq x0, x10, .LBB0_33
.LBB0_578:                              //  %sw.bb36
	jal x0, .LBB0_556
.LBB0_33:                               //  %if.end41
                                        //    in Loop: Header=BB0_27 Depth=2
	or x27, x27, 16
	mv x22, x0
	mv x10, x26
	lw x25, 0 ( x10 )
	add x11, x25, -37
	bgeu x23, x11, .LBB0_27
	jal x0, .LBB0_556
.LBB0_34:                               //  %sw.bb61
                                        //    in Loop: Header=BB0_27 Depth=2
	and x11, x27, 15
	beq x0, x11, .LBB0_35
.LBB0_579:                              //  %sw.bb61
	jal x0, .LBB0_556
.LBB0_35:                               //  %if.end65
                                        //    in Loop: Header=BB0_27 Depth=2
	lw x11, 4 ( x10 )
	add x12, x0, 104
	beq x11, x12, .LBB0_45
.LBB0_36:                               //  %if.end65
                                        //    in Loop: Header=BB0_27 Depth=2
	add x11, x0, 4
	jal x0, .LBB0_40
.LBB0_37:                               //  %sw.bb43
                                        //    in Loop: Header=BB0_27 Depth=2
	and x11, x27, 15
	beq x0, x11, .LBB0_38
.LBB0_580:                              //  %sw.bb43
	jal x0, .LBB0_556
.LBB0_38:                               //  %if.end47
                                        //    in Loop: Header=BB0_27 Depth=2
	lw x11, 4 ( x10 )
	add x12, x0, 108
	beq x11, x12, .LBB0_46
.LBB0_39:                               //  %if.end47
                                        //    in Loop: Header=BB0_27 Depth=2
	seqz x11, x0
.LBB0_40:                               //  %if.end47
                                        //    in Loop: Header=BB0_27 Depth=2
	mv x10, x26
	or x27, x27, x11
	lw x25, 0 ( x10 )
	add x11, x25, -37
	bgeu x23, x11, .LBB0_27
	jal x0, .LBB0_556
.LBB0_41:                               //  %sw.bb90
                                        //    in Loop: Header=BB0_27 Depth=2
	and x10, x27, 143
	beq x0, x10, .LBB0_42
.LBB0_581:                              //  %sw.bb90
	jal x0, .LBB0_556
.LBB0_42:                               //  %do.body95
                                        //    in Loop: Header=BB0_27 Depth=2
	bltu x0, x20, .LBB0_44
.LBB0_43:                               //  %if.then97
                                        //    in Loop: Header=BB0_27 Depth=2
	mv x10, sp
	add x20, x10, -16
	mv sp, x20
	sw x0, -12 ( x10 )
	sw x0, -16 ( x10 )
.LBB0_44:                               //  %do.end100
                                        //    in Loop: Header=BB0_27 Depth=2
	or x27, x27, 128
	mv x10, x26
	lw x25, 0 ( x10 )
	add x11, x25, -37
	bgeu x23, x11, .LBB0_27
	jal x0, .LBB0_556
.LBB0_45:                               //    in Loop: Header=BB0_27 Depth=2
	add x11, x0, 8
	jal x0, .LBB0_47
.LBB0_46:                               //    in Loop: Header=BB0_27 Depth=2
	add x11, x0, 2
.LBB0_47:                               //    in Loop: Header=BB0_27 Depth=2
	add x10, x10, 8
	or x27, x27, x11
	lw x25, 0 ( x10 )
	add x11, x25, -37
	bgeu x23, x11, .LBB0_27
	jal x0, .LBB0_556
.LBB0_48:                               //  %literal
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 0 ( x21 )
	blt x0, x11, .LBB0_51
.LBB0_49:                               //  %land.lhs.true.i2125
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_50
.LBB0_582:                              //  %land.lhs.true.i2125
	jal x0, .LBB0_553
.LBB0_50:                               //  %land.lhs.true.if.end_crit_edge.i2127
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 0 ( x21 )
.LBB0_51:                               //  %_sfgetwc_r.exit2133
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x12, 0 ( x18 )
	mv x22, x9
	add x13, x11, -4
	add x10, x12, 4
	sw x10, 0 ( x18 )
	lw x9, 0 ( x12 )
	sw x13, 4 ( x18 )
	xor x14, x9, -1
	bltu x0, x14, .LBB0_52
.LBB0_583:                              //  %_sfgetwc_r.exit2133
	jal x0, .LBB0_552
.LBB0_52:                               //  %if.end30
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x9, x25, .LBB0_53
.LBB0_584:                              //  %if.end30
	jal x0, .LBB0_542
.LBB0_53:                               //  %if.end35
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	lw x25, 0 ( x26 )
	mv x9, x22
	add x10, x10, 1
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	lw x23, -240 ( fp )             //  4-byte Folded Reload
	lw x27, -244 ( fp )             //  4-byte Folded Reload
	bltu x0, x25, .LBB0_8
	jal x0, .LBB0_556
.LBB0_54:                               //  %sw.bb146
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x27, 16
	bltu x0, x10, .LBB0_63
.LBB0_55:                               //  %if.end150
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x27, 8
	bltu x0, x10, .LBB0_60
.LBB0_56:                               //  %if.else155
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x27, 4
	bltu x0, x10, .LBB0_61
.LBB0_57:                               //  %if.else161
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x27, 1
	bltu x0, x10, .LBB0_59
.LBB0_58:                               //  %if.else166
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x27, 2
	bltu x0, x10, .LBB0_62
.LBB0_59:                               //  %if.then164
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	lw x11, -236 ( fp )             //  4-byte Folded Reload
	sw x11, 0 ( x10 )
	jal x0, .LBB0_63
.LBB0_60:                               //  %if.then153
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	lw x11, -236 ( fp )             //  4-byte Folded Reload
	sb x11, 0 ( x10 )
	jal x0, .LBB0_63
.LBB0_61:                               //  %if.then158
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	lw x11, -236 ( fp )             //  4-byte Folded Reload
	sh x11, 0 ( x10 )
	jal x0, .LBB0_63
.LBB0_62:                               //  %if.then169
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	lw x12, -236 ( fp )             //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sra x11, x12, 31&31
	sw x11, 4 ( x10 )
	sw x12, 0 ( x10 )
.LBB0_63:                               //  %for.cond.outer2942.backedge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x25, 0 ( x26 )
	lw x23, -240 ( fp )             //  4-byte Folded Reload
	lw x27, -244 ( fp )             //  4-byte Folded Reload
	bltu x0, x25, .LBB0_8
	jal x0, .LBB0_556
.LBB0_64:                               //  %sw.bb111
                                        //    in Loop: Header=BB0_4 Depth=1
	or x27, x27, 512
	jal x0, .LBB0_74
.LBB0_65:                               //  %sw.bb140
                                        //    in Loop: Header=BB0_4 Depth=1
	or x27, x27, 1
.LBB0_66:                               //  %sw.bb142
                                        //    in Loop: Header=BB0_4 Depth=1
	or x27, x27, 64
	mv x25, x0
	and x10, x27, 64
	beq x0, x10, .LBB0_85
	jal x0, .LBB0_101
.LBB0_67:                               //  %sw.bb113
                                        //    in Loop: Header=BB0_4 Depth=1
	or x27, x27, 1
	add x25, x0, 2
	and x10, x27, 64
	beq x0, x10, .LBB0_85
	jal x0, .LBB0_101
.LBB0_68:                               //  %sw.bb116
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 4 ( x10 )
	add x12, x0, 94
	beq x11, x12, .LBB0_78
.LBB0_69:                               //  %sw.bb116
                                        //    in Loop: Header=BB0_4 Depth=1
	add x12, x0, 4
	sw x26, -256 ( fp )             //  4-byte Folded Spill
	add x10, x12, x10
	lw x10, 0 ( x10 )
	add x12, x0, 93
	beq x10, x12, .LBB0_80
.LBB0_79:                               //  %sw.bb116
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x26, -256 ( fp )             //  4-byte Folded Reload
	jal x0, .LBB0_81
.LBB0_70:                               //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	jal x0, .LBB0_77
.LBB0_71:                               //  %sw.epilog.loopexit3570
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sw x10, -268 ( fp )             //  4-byte Folded Spill
	mv x10, x0
	add x25, x0, 3
	sw x10, -252 ( fp )             //  4-byte Folded Spill
	and x10, x27, 64
	beq x0, x10, .LBB0_85
	jal x0, .LBB0_101
.LBB0_72:                               //  %sw.epilog.loopexit4244
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -272 ( fp )             //  4-byte Folded Reload
	sw x10, -268 ( fp )             //  4-byte Folded Spill
	add x10, x0, 8
	add x25, x0, 3
	sw x10, -252 ( fp )             //  4-byte Folded Spill
	and x10, x27, 64
	beq x0, x10, .LBB0_85
	jal x0, .LBB0_101
.LBB0_73:                               //  %sw.bb144
                                        //    in Loop: Header=BB0_4 Depth=1
	or x27, x27, 544
.LBB0_74:                               //  %sw.epilog
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -272 ( fp )             //  4-byte Folded Reload
	sw x10, -268 ( fp )             //  4-byte Folded Spill
	add x10, x0, 16
	add x25, x0, 3
	sw x10, -252 ( fp )             //  4-byte Folded Spill
	and x10, x27, 64
	beq x0, x10, .LBB0_85
	jal x0, .LBB0_101
.LBB0_75:                               //  %sw.epilog.loopexit5364
                                        //    in Loop: Header=BB0_4 Depth=1
	add x25, x0, 2
	and x10, x27, 64
	beq x0, x10, .LBB0_85
	jal x0, .LBB0_101
.LBB0_76:                               //  %sw.epilog.loopexit4812
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -272 ( fp )             //  4-byte Folded Reload
.LBB0_77:                               //  %sw.epilog
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, -268 ( fp )             //  4-byte Folded Spill
	add x10, x0, 10
	add x25, x0, 3
	sw x10, -252 ( fp )             //  4-byte Folded Spill
	and x10, x27, 64
	beq x0, x10, .LBB0_85
	jal x0, .LBB0_101
.LBB0_78:                               //    in Loop: Header=BB0_4 Depth=1
	add x12, x10, 8
	sw x12, -256 ( fp )             //  4-byte Folded Spill
	add x12, x0, 8
	add x10, x12, x10
	lw x10, 0 ( x10 )
	add x12, x0, 93
	bne x10, x12, .LBB0_79
.LBB0_80:                               //    in Loop: Header=BB0_4 Depth=1
	lw x10, -256 ( fp )             //  4-byte Folded Reload
	add x26, x10, 4
.LBB0_81:                               //  %sw.bb116
                                        //    in Loop: Header=BB0_4 Depth=1
	xor x10, x11, 94
	seqz x10, x10
	sw x10, -280 ( fp )             //  4-byte Folded Spill
.LBB0_82:                               //  %while.cond128
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 0 ( x26 )
	add x26, x26, 4
	xor x11, x10, 93
	beq x0, x11, .LBB0_84
.LBB0_83:                               //  %while.cond128
                                        //    in Loop: Header=BB0_82 Depth=2
	bltu x0, x10, .LBB0_82
.LBB0_84:                               //  %while.end137
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x26, -4
	sw x10, -284 ( fp )             //  4-byte Folded Spill
	or x27, x27, 64
	seqz x25, x0
	and x10, x27, 64
	bltu x0, x10, .LBB0_101
.LBB0_85:                               //  %while.cond182
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_88
.LBB0_86:                               //  %land.lhs.true.i2179
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_87
.LBB0_585:                              //  %land.lhs.true.i2179
	jal x0, .LBB0_553
.LBB0_87:                               //  %land.lhs.true.if.end_crit_edge.i2181
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x21 )
.LBB0_88:                               //  %_sfgetwc_r.exit2187
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x23, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x23, -1
	bltu x0, x10, .LBB0_89
.LBB0_586:                              //  %_sfgetwc_r.exit2187
	jal x0, .LBB0_553
.LBB0_89:                               //  %land.rhs186
                                        //    in Loop: Header=BB0_88 Depth=2
	mv x10, x23
	jal iswspace
	beq x0, x10, .LBB0_91
.LBB0_90:                               //  %while.body190
                                        //    in Loop: Header=BB0_88 Depth=2
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	add x10, x10, 1
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_88
	jal x0, .LBB0_86
.LBB0_91:                               //  %if.end.i2192
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	lw x11, -232 ( fp )             //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_95
.LBB0_92:                               //  %if.then4.i2196
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_94
.LBB0_93:                               //  %land.lhs.true.i2199
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_101
.LBB0_94:                               //  %if.end9.i2204
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x23, -4 ( x10 )
	lw x10, 4 ( x18 )
	lw x11, -264 ( fp )             //  4-byte Folded Reload
	add x10, x10, 4
	sw x10, 4 ( x18 )
	sll x10, x25, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB0_95:                               //  %if.end13.i2207
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_99
.LBB0_96:                               //  %land.lhs.true17.i2213
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_100
.LBB0_97:                               //  %land.lhs.true23.i2216
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x23, .LBB0_100
.LBB0_98:                               //  %if.then27.i2219
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	lw x10, 4 ( x18 )
	lw x11, -264 ( fp )             //  4-byte Folded Reload
	add x10, x10, 4
	sw x10, 4 ( x18 )
	sll x10, x25, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB0_99:                               //  %if.end13.if.end32_crit_edge.i2210
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
.LBB0_100:                              //  %if.end32.i2227
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x10, 48 ( x18 )
	lw x10, -240 ( fp )             //  4-byte Folded Reload
	sw x11, 60 ( x18 )
	sw x23, 63 ( x18 )
	sw x10, 0 ( x18 )
	add x10, x0, 2
	sw x10, 4 ( x18 )
.LBB0_101:                              //  %if.end198
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -264 ( fp )             //  4-byte Folded Reload
	sll x10, x25, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB0_102:                              //  %sw.bb199
                                        //    in Loop: Header=BB0_4 Depth=1
	seqz x10, x0
	sw x10, -300 ( fp )             //  4-byte Folded Spill
	mv x10, x0
	beq x22, x10, .LBB0_104
.LBB0_103:                              //  %sw.bb199
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x22, -300 ( fp )             //  4-byte Folded Spill
.LBB0_104:                              //  %sw.bb199
                                        //    in Loop: Header=BB0_4 Depth=1
	and x22, x27, 16
	and x10, x27, 1
	sw x22, -316 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB0_164
.LBB0_105:                              //  %if.else332
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x22, .LBB0_194
.LBB0_106:                              //  %land.rhs404.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x25, x0
	add x10, fp, -64
	mv x11, x25
	add x12, x0, 8
	jal memset
	lw x22, -300 ( fp )             //  4-byte Folded Reload
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_113
	jal x0, .LBB0_111
.LBB0_107:                              //  %while.body409.us
                                        //    in Loop: Header=BB0_113 Depth=2
	xor x10, x10, -1
	bltu x0, x10, .LBB0_108
.LBB0_587:                              //  %while.body409.us
	jal x0, .LBB0_553
.LBB0_108:                              //  %if.then420.us
                                        //    in Loop: Header=BB0_113 Depth=2
	add x22, x22, -1
.LBB0_109:                              //  %if.end456.us
                                        //    in Loop: Header=BB0_113 Depth=2
	add x25, x25, 1
	bltu x0, x22, .LBB0_110
.LBB0_588:                              //  %if.end456.us
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_352
.LBB0_110:                              //  %land.rhs404.us
                                        //    in Loop: Header=BB0_113 Depth=2
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_113
.LBB0_111:                              //  %land.lhs.true.i2246.us
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_250
.LBB0_112:                              //  %land.lhs.true.if.end_crit_edge.i2248.us
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x21 )
.LBB0_113:                              //  %_sfgetwc_r.exit2254.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x12, -1
	beq x0, x10, .LBB0_250
.LBB0_114:                              //  %while.body409.us
                                        //    in Loop: Header=BB0_113 Depth=2
	mv x10, x19
	add x11, fp, -225
	add x13, fp, -64
	jal _wcrtomb_r
	bltu x0, x10, .LBB0_107
.LBB0_115:                              //  %lor.lhs.false417.us
                                        //    in Loop: Header=BB0_113 Depth=2
	lw x10, -64 ( fp )
	xor x10, x10, -4
	bltu x0, x10, .LBB0_108
	jal x0, .LBB0_109
.LBB0_116:                              //  %sw.bb491
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, -1
	sw x10, -300 ( fp )             //  4-byte Folded Spill
	mv x10, x0
	beq x22, x10, .LBB0_118
.LBB0_117:                              //  %sw.bb491
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x22, -300 ( fp )             //  4-byte Folded Spill
.LBB0_118:                              //  %sw.bb491
                                        //    in Loop: Header=BB0_4 Depth=1
	and x22, x27, 16
	and x10, x27, 1
	beq x0, x10, .LBB0_172
.LBB0_119:                              //  %sw.bb491
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x22, .LBB0_172
.LBB0_120:                              //  %while.cond502.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -256 ( fp )             //  4-byte Folded Reload
	lw x11, -284 ( fp )             //  4-byte Folded Reload
	sub x10, x11, x10
	sra x23, x10, 2&31
	lw x10, -280 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_208
.LBB0_121:                              //  %while.cond502.preheader21
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x27, -240 ( fp )             //  4-byte Folded Reload
	mv x25, x0
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_124
.LBB0_122:                              //  %land.lhs.true.i2259
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_220
.LBB0_123:                              //  %land.lhs.true.if.end_crit_edge.i2261
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x21 )
.LBB0_124:                              //  %_sfgetwc_r.exit2267
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x22, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x22, -1
	beq x0, x10, .LBB0_220
.LBB0_125:                              //  %land.lhs.true506
                                        //    in Loop: Header=BB0_124 Depth=2
	lw x10, -300 ( fp )             //  4-byte Folded Reload
	beq x10, x25, .LBB0_215
.LBB0_126:                              //  %land.rhs510
                                        //    in Loop: Header=BB0_124 Depth=2
	lw x10, -256 ( fp )             //  4-byte Folded Reload
	mv x11, x22
	mv x12, x23
	jal wmemchr
	bltu x0, x10, .LBB0_215
.LBB0_127:                              //  %while.body528
                                        //    in Loop: Header=BB0_124 Depth=2
	add x25, x25, 1
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_124
	jal x0, .LBB0_122
.LBB0_128:                              //  %sw.bb886
                                        //    in Loop: Header=BB0_4 Depth=1
	add x25, x0, -1
	mv x10, x0
	beq x22, x10, .LBB0_130
.LBB0_129:                              //  %sw.bb886
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x25, x22
.LBB0_130:                              //  %sw.bb886
                                        //    in Loop: Header=BB0_4 Depth=1
	and x22, x27, 16
	and x10, x27, 1
	beq x0, x10, .LBB0_175
.LBB0_131:                              //  %sw.bb886
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x22, .LBB0_175
.LBB0_132:                              //  %while.cond897.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x23, -240 ( fp )             //  4-byte Folded Reload
	lw x27, -244 ( fp )             //  4-byte Folded Reload
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_135
.LBB0_133:                              //  %land.lhs.true.i2421
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_134
.LBB0_589:                              //  %land.lhs.true.i2421
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_533
.LBB0_134:                              //  %land.lhs.true.if.end_crit_edge.i2423
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x21 )
.LBB0_135:                              //  %_sfgetwc_r.exit2429
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x22, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x22, -1
	bltu x0, x10, .LBB0_136
.LBB0_590:                              //  %_sfgetwc_r.exit2429
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_533
.LBB0_136:                              //  %land.lhs.true901
                                        //    in Loop: Header=BB0_135 Depth=2
	beq x0, x25, .LBB0_189
.LBB0_137:                              //  %land.rhs905
                                        //    in Loop: Header=BB0_135 Depth=2
	mv x10, x22
	jal iswspace
	bltu x0, x10, .LBB0_189
.LBB0_138:                              //  %while.body909
                                        //    in Loop: Header=BB0_135 Depth=2
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	add x25, x25, -1
	add x10, x10, 1
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_135
	jal x0, .LBB0_133
.LBB0_139:                              //  %sw.bb1225
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x9, -304 ( fp )              //  4-byte Folded Spill
	add x10, x22, -1
	add x9, x0, 39
	add x11, x0, 38
	bltu x11, x10, .LBB0_141
.LBB0_140:                              //  %sw.bb1225
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x9, x22
.LBB0_141:                              //  %sw.bb1225
                                        //    in Loop: Header=BB0_4 Depth=1
	or x22, x27, 1408
	beq x0, x9, .LBB0_188
.LBB0_142:                              //  %for.body.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x21 )
	add x27, fp, -224
	mv x23, x0
	blt x0, x10, .LBB0_148
	jal x0, .LBB0_146
.LBB0_143:                              //  %sw.bb1251
                                        //    in Loop: Header=BB0_148 Depth=2
	lw x11, -252 ( fp )             //  4-byte Folded Reload
	lw x12, -276 ( fp )             //  4-byte Folded Reload
	and x22, x22, -897
	sll x11, x11, 1&31
	add x11, x11, x12
	lh x11, 0 ( x11 )
.LBB0_144:                              //  %ok
                                        //    in Loop: Header=BB0_148 Depth=2
	sw x11, -252 ( fp )             //  4-byte Folded Spill
	sw x25, 0 ( x27 )
	add x27, x27, 4
	add x23, x23, 1
	beq x9, x23, .LBB0_163
.LBB0_145:                              //  %for.body
                                        //    in Loop: Header=BB0_148 Depth=2
	blt x0, x10, .LBB0_148
.LBB0_146:                              //  %land.lhs.true.i2583
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_147
.LBB0_591:                              //  %land.lhs.true.i2583
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_473
.LBB0_147:                              //  %land.lhs.true.if.end_crit_edge.i2585
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x21 )
.LBB0_148:                              //  %_sfgetwc_r.exit2591
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
	bgeu x15, x14, .LBB0_149
.LBB0_592:                              //  %_sfgetwc_r.exit2591
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_463
.LBB0_149:                              //  %_sfgetwc_r.exit2591
                                        //    in Loop: Header=BB0_148 Depth=2
	lw x15, -260 ( fp )             //  4-byte Folded Reload
	sll x14, x14, 2&31
	add x14, x15, x14
	lw x14, 0 ( x14 )
	jr x14
.LBB0_150:                              //  %sw.bb1263
                                        //    in Loop: Header=BB0_148 Depth=2
	lw x14, -252 ( fp )             //  4-byte Folded Reload
	slti x14, x14, 11
	beq x0, x14, .LBB0_151
.LBB0_593:                              //  %sw.bb1263
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_463
.LBB0_151:                              //  %if.else1248
                                        //    in Loop: Header=BB0_148 Depth=2
	and x22, x22, -897
	sw x25, 0 ( x27 )
	add x27, x27, 4
	add x23, x23, 1
	bne x9, x23, .LBB0_145
	jal x0, .LBB0_163
.LBB0_152:                              //  %sw.bb1269
                                        //    in Loop: Header=BB0_148 Depth=2
	and x14, x22, 128
	bltu x0, x14, .LBB0_153
.LBB0_594:                              //  %sw.bb1269
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_463
.LBB0_153:                              //  %if.then1272
                                        //    in Loop: Header=BB0_148 Depth=2
	lw x11, -292 ( fp )             //  4-byte Folded Reload
	lui x12, (65536>>12)&1048575
	and x11, x11, x22
	or x22, x12, x11
	sw x25, 0 ( x27 )
	add x27, x27, 4
	add x23, x23, 1
	bne x9, x23, .LBB0_145
	jal x0, .LBB0_163
.LBB0_154:                              //  %sw.bb1255
                                        //    in Loop: Header=BB0_148 Depth=2
	lw x16, -252 ( fp )             //  4-byte Folded Reload
	lw x15, -276 ( fp )             //  4-byte Folded Reload
	sll x14, x16, 1&31
	add x14, x14, x15
	lh x14, 0 ( x14 )
	add x15, x16, -1
	sltiu x15, x15, 8
	beq x0, x15, .LBB0_155
.LBB0_595:                              //  %sw.bb1255
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_462
.LBB0_155:                              //  %if.end1261
                                        //    in Loop: Header=BB0_148 Depth=2
	and x22, x22, -897
	sw x14, -252 ( fp )             //  4-byte Folded Spill
	sw x25, 0 ( x27 )
	add x27, x27, 4
	add x23, x23, 1
	bne x9, x23, .LBB0_145
	jal x0, .LBB0_163
.LBB0_156:                              //  %sw.bb1276
                                        //    in Loop: Header=BB0_148 Depth=2
	and x14, x22, 512
	bltu x0, x14, .LBB0_157
.LBB0_596:                              //  %sw.bb1276
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_463
.LBB0_157:                              //  %land.lhs.true1279
                                        //    in Loop: Header=BB0_148 Depth=2
	srl x14, x22, 14&31
	and x14, x14, 4
	add x15, fp, -220
	add x14, x14, x15
	beq x27, x14, .LBB0_158
.LBB0_597:                              //  %land.lhs.true1279
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_463
.LBB0_158:                              //  %if.then1289
                                        //    in Loop: Header=BB0_148 Depth=2
	and x22, x22, -513
	add x11, x0, 16
	jal x0, .LBB0_144
.LBB0_159:                              //  %sw.bb1238
                                        //    in Loop: Header=BB0_148 Depth=2
	lw x12, -252 ( fp )             //  4-byte Folded Reload
	mv x11, x0
	bne x12, x11, .LBB0_161
.LBB0_160:                              //    in Loop: Header=BB0_148 Depth=2
	or x22, x22, 512
	add x11, x0, 8
	sw x11, -252 ( fp )             //  4-byte Folded Spill
.LBB0_161:                              //  %sw.bb1238
                                        //    in Loop: Header=BB0_148 Depth=2
	and x11, x22, 1024
	beq x0, x11, .LBB0_151
.LBB0_162:                              //  %if.then1246
                                        //    in Loop: Header=BB0_148 Depth=2
	and x22, x22, -1409
	sw x25, 0 ( x27 )
	add x27, x27, 4
	add x23, x23, 1
	bne x9, x23, .LBB0_145
.LBB0_163:                              //    in Loop: Header=BB0_4 Depth=1
	seqz x23, x0
	and x10, x22, 256
	bltu x0, x10, .LBB0_598
.LBB0_599:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_474
.LBB0_598:
	jal x0, .LBB0_535
.LBB0_164:                              //  %if.then206
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x22, .LBB0_196
.LBB0_165:                              //  %land.rhs271.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x21 )
	lw x22, -300 ( fp )             //  4-byte Folded Reload
	mv x25, x0
.LBB0_166:                              //  %land.rhs271.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	blt x0, x10, .LBB0_169
.LBB0_167:                              //  %land.lhs.true.i2233.us
                                        //    in Loop: Header=BB0_166 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_221
.LBB0_168:                              //  %land.lhs.true.if.end_crit_edge.i2235.us
                                        //    in Loop: Header=BB0_166 Depth=2
	lw x10, 0 ( x21 )
.LBB0_169:                              //  %_sfgetwc_r.exit2241.us
                                        //    in Loop: Header=BB0_166 Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x11, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x11, x11, -1
	beq x0, x11, .LBB0_221
.LBB0_170:                              //  %if.end298.us
                                        //    in Loop: Header=BB0_166 Depth=2
	add x25, x25, 1
	bne x22, x25, .LBB0_166
.LBB0_171:                              //    in Loop: Header=BB0_4 Depth=1
	mv x10, x0
	mv x14, x10
	mv x13, x10
	sw x10, -304 ( fp )             //  4-byte Folded Spill
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	bltu x0, x10, .LBB0_349
	jal x0, .LBB0_352
.LBB0_172:                              //  %if.else540
                                        //    in Loop: Header=BB0_4 Depth=1
	bltu x0, x10, .LBB0_198
.LBB0_173:                              //  %if.else698
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x22, -304 ( fp )             //  4-byte Folded Spill
	beq x0, x22, .LBB0_222
.LBB0_174:                              //    in Loop: Header=BB0_4 Depth=1
	mv x25, x0
	sw x25, -308 ( fp )             //  4-byte Folded Spill
	sw x25, -312 ( fp )             //  4-byte Folded Spill
	sw x25, -316 ( fp )             //  4-byte Folded Spill
	add x22, fp, -225
	jal x0, .LBB0_358
.LBB0_175:                              //  %if.else917
                                        //    in Loop: Header=BB0_4 Depth=1
	bltu x0, x10, .LBB0_200
.LBB0_176:                              //  %if.else1055
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x22, .LBB0_224
.LBB0_177:                              //  %while.cond1128.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, fp, -64
	mv x11, x0
	add x12, x0, 8
	jal memset
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_183
.LBB0_181:                              //  %land.lhs.true.i2529.us
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	beq x0, x10, .LBB0_182
.LBB0_600:                              //  %land.lhs.true.i2529.us
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_508
.LBB0_182:                              //  %land.lhs.true.if.end_crit_edge.i2531.us
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x21 )
	jal x0, .LBB0_183
.LBB0_178:                              //  %while.body1140.us
                                        //    in Loop: Header=BB0_183 Depth=2
	xor x10, x10, -1
	bltu x0, x10, .LBB0_179
.LBB0_601:                              //  %while.body1140.us
	jal x0, .LBB0_553
.LBB0_179:                              //  %if.then1152.us
                                        //    in Loop: Header=BB0_183 Depth=2
	add x25, x25, -1
.LBB0_180:                              //  %if.end1188.us
                                        //    in Loop: Header=BB0_183 Depth=2
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	add x10, x10, 1
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	lw x10, 0 ( x21 )
	bge x0, x10, .LBB0_181
.LBB0_183:                              //  %_sfgetwc_r.exit2537.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x23, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x11, x23, -1
	snez x10, x11
	beq x0, x25, .LBB0_345
.LBB0_184:                              //  %_sfgetwc_r.exit2537.us
                                        //    in Loop: Header=BB0_183 Depth=2
	beq x0, x11, .LBB0_345
.LBB0_185:                              //  %land.rhs1135.us
                                        //    in Loop: Header=BB0_183 Depth=2
	mv x10, x23
	jal iswspace
	bltu x0, x10, .LBB0_346
.LBB0_186:                              //  %while.body1140.us
                                        //    in Loop: Header=BB0_183 Depth=2
	add x10, fp, -225
	mv x11, x23
	add x12, fp, -64
	jal wcrtomb
	bltu x0, x10, .LBB0_178
.LBB0_187:                              //  %lor.lhs.false1148.us
                                        //    in Loop: Header=BB0_183 Depth=2
	lw x10, -64 ( fp )
	xor x10, x10, -4
	bltu x0, x10, .LBB0_179
	jal x0, .LBB0_180
.LBB0_188:                              //    in Loop: Header=BB0_4 Depth=1
	mv x23, x0
	add x27, fp, -224
	and x10, x22, 256
	bltu x0, x10, .LBB0_602
.LBB0_603:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_474
.LBB0_602:
	jal x0, .LBB0_535
.LBB0_189:                              //  %if.end.i2434
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	lw x11, -232 ( fp )             //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_242
.LBB0_190:                              //  %if.then4.i2438
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_192
.LBB0_191:                              //  %land.lhs.true.i2441
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	beq x0, x10, .LBB0_192
.LBB0_604:                              //  %land.lhs.true.i2441
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_533
.LBB0_192:                              //  %if.end9.i2446
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x22, -4 ( x10 )
.LBB0_193:                              //  %if.end1224
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	lw x25, 0 ( x26 )
	bltu x0, x25, .LBB0_4
	jal x0, .LBB0_556
.LBB0_194:                              //  %if.else336
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x27, 128
	bltu x0, x10, .LBB0_226
.LBB0_195:                              //  %if.else396
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	mv x25, x0
	sw x25, -304 ( fp )             //  4-byte Folded Spill
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x23, 0 ( x10 )
	sw x25, -312 ( fp )             //  4-byte Folded Spill
	sw x25, -308 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB0_264
.LBB0_196:                              //  %if.else211
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x27, 128
	bltu x0, x10, .LBB0_230
.LBB0_197:                              //  %if.else264
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
	sw x12, -304 ( fp )             //  4-byte Folded Spill
	sw x10, -248 ( fp )             //  4-byte Folded Spill
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_295
	jal x0, .LBB0_293
.LBB0_198:                              //  %if.then543
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x27, 128
	bltu x0, x10, .LBB0_234
.LBB0_199:                              //  %if.else605
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	mv x27, x0
	sw x27, -308 ( fp )             //  4-byte Folded Spill
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x22, 0 ( x10 )
	jal x0, .LBB0_305
.LBB0_200:                              //  %if.then920
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x27, 128
	bltu x0, x10, .LBB0_238
.LBB0_201:                              //  %while.cond985.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	lw x27, -240 ( fp )             //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -300 ( fp )             //  4-byte Folded Spill
	sw x10, -248 ( fp )             //  4-byte Folded Spill
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_204
.LBB0_202:                              //  %land.lhs.true.i2475.us
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_335
.LBB0_203:                              //  %land.lhs.true.if.end_crit_edge.i2477.us
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x21 )
.LBB0_204:                              //  %_sfgetwc_r.exit2483.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x23, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x23, -1
	beq x0, x10, .LBB0_335
.LBB0_205:                              //  %land.lhs.true989.us
                                        //    in Loop: Header=BB0_204 Depth=2
	beq x0, x25, .LBB0_251
.LBB0_206:                              //  %land.end997.us
                                        //    in Loop: Header=BB0_204 Depth=2
	mv x10, x23
	jal iswspace
	bltu x0, x10, .LBB0_251
.LBB0_207:                              //  %while.body998.us
                                        //    in Loop: Header=BB0_204 Depth=2
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	lw x11, -248 ( fp )             //  4-byte Folded Reload
	add x25, x25, -1
	add x10, x10, 1
	sw x23, 0 ( x11 )
	add x11, x11, 4
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	sw x11, -248 ( fp )             //  4-byte Folded Spill
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_204
	jal x0, .LBB0_202
.LBB0_208:                              //  %while.cond502.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x27, -240 ( fp )             //  4-byte Folded Reload
	mv x25, x0
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_211
.LBB0_209:                              //  %land.lhs.true.i2259.us
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_220
.LBB0_210:                              //  %land.lhs.true.if.end_crit_edge.i2261.us
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x21 )
.LBB0_211:                              //  %_sfgetwc_r.exit2267.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x22, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x22, -1
	beq x0, x10, .LBB0_220
.LBB0_212:                              //  %land.lhs.true506.us
                                        //    in Loop: Header=BB0_211 Depth=2
	lw x10, -300 ( fp )             //  4-byte Folded Reload
	beq x10, x25, .LBB0_215
.LBB0_213:                              //  %land.rhs510.us
                                        //    in Loop: Header=BB0_211 Depth=2
	lw x10, -256 ( fp )             //  4-byte Folded Reload
	mv x11, x22
	mv x12, x23
	jal wmemchr
	beq x0, x10, .LBB0_215
.LBB0_214:                              //  %while.body528.us
                                        //    in Loop: Header=BB0_211 Depth=2
	add x25, x25, 1
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_211
	jal x0, .LBB0_209
.LBB0_215:                              //  %if.end.i2272
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	lw x11, -232 ( fp )             //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_246
.LBB0_216:                              //  %if.then4.i2276
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_218
.LBB0_217:                              //  %land.lhs.true.i2279
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_220
.LBB0_218:                              //  %if.end9.i2284
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x22, -4 ( x10 )
.LBB0_219:                              //  %if.end535
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
.LBB0_220:                              //  %if.end535
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x25, .LBB0_605
.LBB0_606:                              //  %if.end535
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_532
.LBB0_605:                              //  %if.end535
	jal x0, .LBB0_556
.LBB0_221:                              //    in Loop: Header=BB0_4 Depth=1
	mv x14, x0
	mv x13, x14
	sw x14, -304 ( fp )             //  4-byte Folded Spill
	bltu x0, x25, .LBB0_348
	jal x0, .LBB0_553
.LBB0_222:                              //  %if.else706
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x27, 128
	bltu x0, x10, .LBB0_252
.LBB0_223:                              //  %if.else766
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	mv x25, x0
	sw x25, -316 ( fp )             //  4-byte Folded Spill
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x22, 0 ( x10 )
	sw x25, -308 ( fp )             //  4-byte Folded Spill
	sw x25, -312 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB0_358
.LBB0_224:                              //  %if.else1063
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x27, 128
	sw x22, -308 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB0_256
.LBB0_225:                              //  %if.else1123
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	mv x11, x0
	mv x27, x11
	add x12, x10, 4
	sw x12, -56 ( fp )
	lw x22, 0 ( x10 )
	sw x11, -300 ( fp )             //  4-byte Folded Spill
	sw x11, -304 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB0_409
.LBB0_226:                              //  %if.then339
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -304 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB0_227
.LBB0_607:                              //  %if.then339
	jal x0, .LBB0_556
.LBB0_227:                              //  %if.end343
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 32
	jal malloc
	mv x23, x10
	bltu x0, x23, .LBB0_228
.LBB0_608:                              //  %if.end343
	jal x0, .LBB0_555
.LBB0_228:                              //  %if.end347
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	sw x23, 0 ( x10 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB0_260
.LBB0_229:                              //  %if.end347.if.end387_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	jal x0, .LBB0_263
.LBB0_230:                              //  %if.then214
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -304 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB0_231
.LBB0_609:                              //  %if.then214
	jal x0, .LBB0_556
.LBB0_231:                              //  %if.end218
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 128
	jal malloc
	bltu x0, x10, .LBB0_232
.LBB0_610:                              //  %if.end218
	jal x0, .LBB0_555
.LBB0_232:                              //  %if.end222
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -304 ( fp )             //  4-byte Folded Reload
	sw x10, -248 ( fp )             //  4-byte Folded Spill
	sw x10, 0 ( x11 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB0_286
.LBB0_233:                              //  %if.end222.if.end258_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	jal x0, .LBB0_289
.LBB0_234:                              //  %if.then548
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x27, 0 ( x10 )
	bltu x0, x27, .LBB0_235
.LBB0_611:                              //  %if.then548
	jal x0, .LBB0_556
.LBB0_235:                              //  %if.end552
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 128
	jal malloc
	mv x22, x10
	bltu x0, x22, .LBB0_236
.LBB0_612:                              //  %if.end552
	jal x0, .LBB0_555
.LBB0_236:                              //  %if.end556
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x22, 0 ( x27 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB0_301
.LBB0_237:                              //  %if.end556.if.end596_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	jal x0, .LBB0_304
.LBB0_238:                              //  %if.then925
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	lw x27, -240 ( fp )             //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -304 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB0_239
.LBB0_613:                              //  %if.then925
	jal x0, .LBB0_556
.LBB0_239:                              //  %if.end929
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 128
	jal malloc
	mv x12, x10
	bltu x0, x12, .LBB0_240
.LBB0_614:                              //  %if.end929
	jal x0, .LBB0_555
.LBB0_240:                              //  %if.end933
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	sw x12, -300 ( fp )             //  4-byte Folded Spill
	sw x12, 0 ( x10 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB0_317
.LBB0_241:                              //  %if.end933.if.end973_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	jal x0, .LBB0_320
.LBB0_242:                              //  %if.end13.i2449
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_341
.LBB0_243:                              //  %land.lhs.true17.i2455
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_342
.LBB0_244:                              //  %land.lhs.true23.i2458
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x22, .LBB0_342
.LBB0_245:                              //  %if.then27.i2461
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_193
.LBB0_246:                              //  %if.end13.i2287
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_343
.LBB0_247:                              //  %land.lhs.true17.i2293
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_344
.LBB0_248:                              //  %land.lhs.true23.i2296
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x22, .LBB0_344
.LBB0_249:                              //  %if.then27.i2299
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_219
.LBB0_250:                              //    in Loop: Header=BB0_4 Depth=1
	mv x10, x0
	mv x22, x10
	mv x12, x10
	add x23, fp, -225
	sw x10, -308 ( fp )             //  4-byte Folded Spill
	bltu x0, x25, .LBB0_282
	jal x0, .LBB0_553
.LBB0_251:                              //    in Loop: Header=BB0_4 Depth=1
	mv x22, x0
	sw x22, -304 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB0_330
.LBB0_252:                              //  %if.then709
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -308 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB0_253
.LBB0_615:                              //  %if.then709
	jal x0, .LBB0_556
.LBB0_253:                              //  %if.end713
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 32
	jal malloc
	mv x11, x10
	bltu x0, x11, .LBB0_254
.LBB0_616:                              //  %if.end713
	jal x0, .LBB0_555
.LBB0_254:                              //  %if.end717
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -308 ( fp )             //  4-byte Folded Reload
	sw x11, -312 ( fp )             //  4-byte Folded Spill
	sw x11, 0 ( x10 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB0_354
.LBB0_255:                              //  %if.end717.if.end757_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	jal x0, .LBB0_357
.LBB0_256:                              //  %if.then1066
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -300 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB0_257
.LBB0_617:                              //  %if.then1066
	jal x0, .LBB0_556
.LBB0_257:                              //  %if.end1070
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 32
	jal malloc
	mv x22, x10
	bltu x0, x22, .LBB0_258
.LBB0_618:                              //  %if.end1070
	jal x0, .LBB0_555
.LBB0_258:                              //  %if.end1074
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -300 ( fp )             //  4-byte Folded Reload
	sw x22, 0 ( x10 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB0_405
.LBB0_259:                              //  %if.end1074.if.end1114_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	jal x0, .LBB0_408
.LBB0_260:                              //  %if.then355
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x10, 8
	lw x10, -296 ( fp )             //  4-byte Folded Reload
	bgeu x10, x11, .LBB0_261
.LBB0_619:                              //  %if.then355
	jal x0, .LBB0_558
.LBB0_261:                              //  %if.end375
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	bltu x0, x10, .LBB0_262
.LBB0_620:                              //  %if.end375
	jal x0, .LBB0_558
.LBB0_262:                              //  %cleanup384
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB0_263:                              //  %if.end387
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -304 ( fp )             //  4-byte Folded Reload
	sw x23, -308 ( fp )             //  4-byte Folded Spill
	mv x25, x0
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x10, x0, 32
	sw x10, -312 ( fp )             //  4-byte Folded Spill
.LBB0_264:                              //  %land.rhs404.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x22, -300 ( fp )             //  4-byte Folded Reload
	add x10, fp, -64
	mv x11, x25
	add x12, x0, 8
	jal memset
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_272
	jal x0, .LBB0_270
.LBB0_265:                              //  %if.then440
                                        //    in Loop: Header=BB0_272 Depth=2
	lw x10, -308 ( fp )             //  4-byte Folded Reload
	sll x11, x11, 1&31
	sw x11, -312 ( fp )             //  4-byte Folded Spill
	jal realloc
	mv x11, x10
	bltu x0, x11, .LBB0_266
.LBB0_621:                              //  %if.then440
	jal x0, .LBB0_555
.LBB0_266:                              //  %if.end446
                                        //    in Loop: Header=BB0_272 Depth=2
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	add x23, x9, x11
	sw x11, -308 ( fp )             //  4-byte Folded Spill
	sw x11, 0 ( x10 )
.LBB0_267:                              //  %cleanup.cont454
                                        //    in Loop: Header=BB0_272 Depth=2
	mv x9, x22
	lw x22, -300 ( fp )             //  4-byte Folded Reload
.LBB0_268:                              //  %cleanup.cont454
                                        //    in Loop: Header=BB0_272 Depth=2
	add x23, x27, x23
	add x25, x25, 1
	beq x0, x22, .LBB0_281
.LBB0_269:                              //  %land.rhs404
                                        //    in Loop: Header=BB0_272 Depth=2
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_272
.LBB0_270:                              //  %land.lhs.true.i2246
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_280
.LBB0_271:                              //  %land.lhs.true.if.end_crit_edge.i2248
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x21 )
.LBB0_272:                              //  %_sfgetwc_r.exit2254
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x12, -1
	beq x0, x10, .LBB0_280
.LBB0_273:                              //  %while.body409
                                        //    in Loop: Header=BB0_272 Depth=2
	mv x10, x19
	mv x11, x23
	add x13, fp, -64
	jal _wcrtomb_r
	mv x27, x10
	beq x0, x27, .LBB0_275
.LBB0_274:                              //  %while.body409
                                        //    in Loop: Header=BB0_272 Depth=2
	xor x10, x27, -1
	bltu x0, x10, .LBB0_276
	jal x0, .LBB0_553
.LBB0_275:                              //  %lor.lhs.false417
                                        //    in Loop: Header=BB0_272 Depth=2
	lw x10, -64 ( fp )
	xor x10, x10, -4
	beq x0, x10, .LBB0_277
.LBB0_276:                              //  %if.then420
                                        //    in Loop: Header=BB0_272 Depth=2
	add x22, x22, -1
.LBB0_277:                              //  %if.then425
                                        //    in Loop: Header=BB0_272 Depth=2
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_268
.LBB0_278:                              //  %land.lhs.true432
                                        //    in Loop: Header=BB0_272 Depth=2
	lw x10, -308 ( fp )             //  4-byte Folded Reload
	sw x22, -300 ( fp )             //  4-byte Folded Spill
	mv x22, x9
	sub x9, x23, x10
	jal __locale_mb_cur_max
	lw x11, -312 ( fp )             //  4-byte Folded Reload
	bgeu x9, x11, .LBB0_265
.LBB0_279:                              //  %land.lhs.true432
                                        //    in Loop: Header=BB0_272 Depth=2
	sub x10, x11, x10
	bltu x9, x10, .LBB0_267
	jal x0, .LBB0_265
.LBB0_280:                              //    in Loop: Header=BB0_4 Depth=1
	lw x22, -304 ( fp )             //  4-byte Folded Reload
	lw x12, -312 ( fp )             //  4-byte Folded Reload
	bltu x0, x25, .LBB0_282
	jal x0, .LBB0_553
.LBB0_281:                              //    in Loop: Header=BB0_4 Depth=1
	lw x22, -304 ( fp )             //  4-byte Folded Reload
	lw x12, -312 ( fp )             //  4-byte Folded Reload
.LBB0_282:                              //  %if.end462
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x22, .LBB0_352
.LBB0_283:                              //  %if.end462
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -308 ( fp )             //  4-byte Folded Reload
	sub x11, x23, x10
	bgeu x11, x12, .LBB0_352
.LBB0_284:                              //  %if.then472
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x22 )
	jal realloc
	beq x0, x10, .LBB0_352
.LBB0_285:                              //  %if.then477
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 0 ( x22 )
	jal x0, .LBB0_352
.LBB0_286:                              //  %if.then230
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x10, 8
	lw x10, -296 ( fp )             //  4-byte Folded Reload
	bgeu x10, x11, .LBB0_287
.LBB0_622:                              //  %if.then230
	jal x0, .LBB0_558
.LBB0_287:                              //  %if.end249
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	bltu x0, x10, .LBB0_288
.LBB0_623:                              //  %if.end249
	jal x0, .LBB0_558
.LBB0_288:                              //  %cleanup
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB0_289:                              //  %if.end258
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -304 ( fp )             //  4-byte Folded Reload
	lw x14, -248 ( fp )             //  4-byte Folded Reload
	mv x25, x0
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x10, x0, 32
	mv x13, x10
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_295
	jal x0, .LBB0_293
.LBB0_290:                              //    in Loop: Header=BB0_295 Depth=2
	lw x11, -248 ( fp )             //  4-byte Folded Reload
.LBB0_291:                              //  %cleanup.cont296
                                        //    in Loop: Header=BB0_295 Depth=2
	lw x10, -300 ( fp )             //  4-byte Folded Reload
	sw x9, 0 ( x11 )
	add x11, x11, 4
	add x25, x25, 1
	mv x9, x27
	sw x11, -248 ( fp )             //  4-byte Folded Spill
	beq x10, x25, .LBB0_348
.LBB0_292:                              //  %land.rhs271
                                        //    in Loop: Header=BB0_295 Depth=2
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_295
.LBB0_293:                              //  %land.lhs.true.i2233
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	mv x22, x14
	mv x23, x13
	jal __ssrefill_r
	bltu x0, x10, .LBB0_347
.LBB0_294:                              //  %land.lhs.true.if.end_crit_edge.i2235
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x21 )
	mv x13, x23
	mv x14, x22
.LBB0_295:                              //  %_sfgetwc_r.exit2241
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	mv x27, x9
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x9, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x9, -1
	beq x0, x10, .LBB0_300
.LBB0_296:                              //  %if.then279
                                        //    in Loop: Header=BB0_295 Depth=2
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_290
.LBB0_297:                              //  %if.then279
                                        //    in Loop: Header=BB0_295 Depth=2
	lw x11, -248 ( fp )             //  4-byte Folded Reload
	sub x10, x11, x14
	sra x23, x10, 2&31
	bltu x23, x13, .LBB0_291
.LBB0_298:                              //  %if.then284
                                        //    in Loop: Header=BB0_295 Depth=2
	sll x11, x13, 3&31
	mv x10, x14
	mv x22, x24
	mv x24, x13
	jal realloc
	mv x14, x10
	bltu x0, x14, .LBB0_299
.LBB0_624:                              //  %if.then284
	jal x0, .LBB0_555
.LBB0_299:                              //  %if.end289
                                        //    in Loop: Header=BB0_295 Depth=2
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	sll x24, x24, 1&31
	mv x13, x24
	mv x24, x22
	sw x14, 0 ( x10 )
	sll x10, x23, 2&31
	add x11, x10, x14
	jal x0, .LBB0_291
.LBB0_300:                              //    in Loop: Header=BB0_4 Depth=1
	mv x9, x27
	bltu x0, x25, .LBB0_348
	jal x0, .LBB0_553
.LBB0_301:                              //  %if.then564
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x10, 8
	lw x10, -296 ( fp )             //  4-byte Folded Reload
	bgeu x10, x11, .LBB0_302
.LBB0_625:                              //  %if.then564
	jal x0, .LBB0_558
.LBB0_302:                              //  %if.end584
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	bltu x0, x10, .LBB0_303
.LBB0_626:                              //  %if.end584
	jal x0, .LBB0_558
.LBB0_303:                              //  %cleanup593
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB0_304:                              //  %if.end596
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x27, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x10, x0, 32
	sw x10, -308 ( fp )             //  4-byte Folded Spill
.LBB0_305:                              //  %if.end607
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -256 ( fp )             //  4-byte Folded Reload
	lw x11, -284 ( fp )             //  4-byte Folded Reload
	sw x9, -304 ( fp )              //  4-byte Folded Spill
	sw x22, -248 ( fp )             //  4-byte Folded Spill
	sub x10, x11, x10
	sra x25, x10, 2&31
	lw x10, -280 ( fp )             //  4-byte Folded Reload
	mv x11, x22
	beq x0, x10, .LBB0_437
.LBB0_306:                              //  %while.cond608.outer
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_307 Depth 3
	lw x10, -300 ( fp )             //  4-byte Folded Reload
	sub x9, x0, x10
.LBB0_307:                              //  %while.cond608
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_306 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 0 ( x21 )
	mv x22, x11
	blt x0, x10, .LBB0_310
.LBB0_308:                              //  %land.lhs.true.i2313
                                        //    in Loop: Header=BB0_307 Depth=3
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_456
.LBB0_309:                              //  %land.lhs.true.if.end_crit_edge.i2315
                                        //    in Loop: Header=BB0_307 Depth=3
	lw x10, 0 ( x21 )
.LBB0_310:                              //  %_sfgetwc_r.exit2321
                                        //    in Loop: Header=BB0_307 Depth=3
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x23, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x23, -1
	beq x0, x10, .LBB0_456
.LBB0_311:                              //  %land.lhs.true612
                                        //    in Loop: Header=BB0_307 Depth=3
	add x9, x9, 1
	xor x10, x9, 1
	beq x0, x10, .LBB0_447
.LBB0_312:                              //  %land.end637
                                        //    in Loop: Header=BB0_307 Depth=3
	lw x10, -256 ( fp )             //  4-byte Folded Reload
	mv x11, x23
	mv x12, x25
	jal wmemchr
	bltu x0, x10, .LBB0_447
.LBB0_313:                              //  %while.body638
                                        //    in Loop: Header=BB0_307 Depth=3
	add x10, x22, 4
	mv x11, x10
	sw x23, 0 ( x22 )
	beq x0, x27, .LBB0_307
.LBB0_314:                              //  %while.body638
                                        //    in Loop: Header=BB0_307 Depth=3
	lw x11, -248 ( fp )             //  4-byte Folded Reload
	sub x11, x10, x11
	sra x23, x11, 2&31
	mv x11, x10
	lw x10, -308 ( fp )             //  4-byte Folded Reload
	bltu x23, x10, .LBB0_307
.LBB0_315:                              //  %if.then650
                                        //    in Loop: Header=BB0_306 Depth=2
	lw x22, -308 ( fp )             //  4-byte Folded Reload
	lw x10, -248 ( fp )             //  4-byte Folded Reload
	sll x11, x22, 3&31
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB0_555
.LBB0_316:                              //  %if.end656
                                        //    in Loop: Header=BB0_306 Depth=2
	sub x10, x0, x9
	sw x10, -300 ( fp )             //  4-byte Folded Spill
	sll x10, x23, 2&31
	sll x22, x22, 1&31
	sw x11, 0 ( x27 )
	sw x11, -248 ( fp )             //  4-byte Folded Spill
	add x11, x10, x11
	sw x22, -308 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB0_306
.LBB0_317:                              //  %if.then941
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x10, 8
	lw x10, -296 ( fp )             //  4-byte Folded Reload
	bltu x10, x11, .LBB0_558
.LBB0_318:                              //  %if.end961
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB0_558
.LBB0_319:                              //  %cleanup970
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB0_320:                              //  %while.cond985.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -304 ( fp )             //  4-byte Folded Reload
	add x22, x0, 32
	sw x12, 0 ( x10 )
	add x10, x11, 1
	lw x11, -300 ( fp )             //  4-byte Folded Reload
	sh x10, 6 ( x20 )
	lw x10, 0 ( x21 )
	sw x11, -248 ( fp )             //  4-byte Folded Spill
	blt x0, x10, .LBB0_325
.LBB0_323:                              //  %land.lhs.true.i2475
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_514
.LBB0_324:                              //  %land.lhs.true.if.end_crit_edge.i2477
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x21 )
	jal x0, .LBB0_325
.LBB0_321:                              //  %if.end1016
                                        //    in Loop: Header=BB0_325 Depth=2
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	sll x22, x22, 1&31
	sw x12, 0 ( x10 )
	sll x10, x9, 2&31
	add x11, x10, x12
.LBB0_322:                              //  %cleanup.cont1024
                                        //    in Loop: Header=BB0_325 Depth=2
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	mv x9, x27
	lw x27, -240 ( fp )             //  4-byte Folded Reload
	sw x12, -300 ( fp )             //  4-byte Folded Spill
	add x10, x10, 1
	add x25, x25, -1
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	lw x10, 0 ( x21 )
	sw x11, -248 ( fp )             //  4-byte Folded Spill
	bge x0, x10, .LBB0_323
.LBB0_325:                              //  %_sfgetwc_r.exit2483
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x23, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x23, -1
	beq x0, x10, .LBB0_353
.LBB0_326:                              //  %land.lhs.true989
                                        //    in Loop: Header=BB0_325 Depth=2
	beq x0, x25, .LBB0_330
.LBB0_327:                              //  %land.end997
                                        //    in Loop: Header=BB0_325 Depth=2
	mv x10, x23
	jal iswspace
	bltu x0, x10, .LBB0_330
.LBB0_328:                              //  %while.body998
                                        //    in Loop: Header=BB0_325 Depth=2
	lw x11, -248 ( fp )             //  4-byte Folded Reload
	lw x12, -300 ( fp )             //  4-byte Folded Reload
	mv x27, x9
	sw x23, 0 ( x11 )
	add x11, x11, 4
	sub x10, x11, x12
	sra x9, x10, 2&31
	bltu x9, x22, .LBB0_322
.LBB0_329:                              //  %if.then1010
                                        //    in Loop: Header=BB0_325 Depth=2
	sll x11, x22, 3&31
	mv x10, x12
	jal realloc
	mv x12, x10
	bltu x0, x12, .LBB0_321
	jal x0, .LBB0_555
.LBB0_330:                              //  %if.end.i2488
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	lw x11, -232 ( fp )             //  4-byte Folded Reload
	lw x12, -300 ( fp )             //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_336
.LBB0_331:                              //  %if.then4.i2492
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_333
.LBB0_332:                              //  %land.lhs.true.i2495
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	mv x25, x12
	jal __submore
	mv x12, x25
	bltu x0, x10, .LBB0_515
.LBB0_333:                              //  %if.end9.i2500
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x23, -4 ( x10 )
.LBB0_334:                              //  %if.end1031
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	lw x10, -248 ( fp )             //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	bltu x0, x10, .LBB0_516
	jal x0, .LBB0_520
.LBB0_335:                              //    in Loop: Header=BB0_4 Depth=1
	mv x22, x0
	lw x12, -300 ( fp )             //  4-byte Folded Reload
	sw x22, -304 ( fp )             //  4-byte Folded Spill
	lw x10, -248 ( fp )             //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	bltu x0, x10, .LBB0_516
	jal x0, .LBB0_520
.LBB0_336:                              //  %if.end13.i2503
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_459
.LBB0_337:                              //  %land.lhs.true17.i2509
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_460
.LBB0_338:                              //  %land.lhs.true23.i2512
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x23, .LBB0_460
.LBB0_339:                              //  %if.then27.i2515
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_334
.LBB0_341:                              //  %if.end13.if.end32_crit_edge.i2452
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
.LBB0_342:                              //  %if.end32.i2469
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 4 ( x18 )
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	add x10, x0, 2
	sw x11, 60 ( x18 )
	sw x27, 48 ( x18 )
	sw x23, 0 ( x18 )
	sw x10, 4 ( x18 )
	sw x22, 63 ( x18 )
	lw x25, 0 ( x26 )
	beq x0, x25, .LBB0_627
.LBB0_628:                              //  %if.end32.i2469
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_627:                              //  %if.end32.i2469
	jal x0, .LBB0_556
.LBB0_343:                              //  %if.end13.if.end32_crit_edge.i2290
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
.LBB0_344:                              //  %if.end32.i2307
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x27, 0 ( x18 )
	sw x10, 48 ( x18 )
	add x10, x0, 2
	sw x11, 60 ( x18 )
	sw x10, 4 ( x18 )
	sw x22, 63 ( x18 )
	bltu x0, x25, .LBB0_532
	jal x0, .LBB0_556
.LBB0_345:                              //    in Loop: Header=BB0_4 Depth=1
	mv x27, x0
	sw x22, -308 ( fp )             //  4-byte Folded Spill
	add x22, fp, -225
	sw x27, -300 ( fp )             //  4-byte Folded Spill
	sw x27, -304 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB0_426
.LBB0_346:                              //    in Loop: Header=BB0_4 Depth=1
	mv x10, x0
	sw x22, -308 ( fp )             //  4-byte Folded Spill
	mv x27, x10
	sw x10, -304 ( fp )             //  4-byte Folded Spill
	add x22, fp, -225
	sw x10, -300 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB0_427
.LBB0_347:                              //    in Loop: Header=BB0_4 Depth=1
	mv x13, x23
	mv x14, x22
	beq x0, x25, .LBB0_553
.LBB0_348:                              //  %if.end304
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_352
.LBB0_349:                              //  %if.end304
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -248 ( fp )             //  4-byte Folded Reload
	sub x11, x10, x14
	sra x10, x11, 2&31
	bgeu x10, x13, .LBB0_352
.LBB0_350:                              //  %if.then315
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB0_352
.LBB0_351:                              //  %if.then319
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -304 ( fp )             //  4-byte Folded Reload
	sw x10, 0 ( x11 )
.LBB0_352:                              //  %cleanup327.thread2744
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -316 ( fp )             //  4-byte Folded Reload
	seqz x10, x10
	add x9, x10, x9
	jal x0, .LBB0_532
.LBB0_353:                              //    in Loop: Header=BB0_4 Depth=1
	lw x12, -300 ( fp )             //  4-byte Folded Reload
	lw x10, -248 ( fp )             //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	bltu x0, x10, .LBB0_516
	jal x0, .LBB0_520
.LBB0_354:                              //  %if.then725
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x10, 8
	lw x10, -296 ( fp )             //  4-byte Folded Reload
	bltu x10, x11, .LBB0_558
.LBB0_355:                              //  %if.end745
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB0_558
.LBB0_356:                              //  %cleanup754
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB0_357:                              //  %if.end757
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -308 ( fp )             //  4-byte Folded Reload
	lw x22, -312 ( fp )             //  4-byte Folded Reload
	mv x25, x0
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x10, x0, 32
	sw x10, -316 ( fp )             //  4-byte Folded Spill
.LBB0_358:                              //  %if.end769
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, fp, -64
	mv x11, x25
	add x12, x0, 8
	jal memset
	lw x10, -256 ( fp )             //  4-byte Folded Reload
	lw x11, -284 ( fp )             //  4-byte Folded Reload
	sub x10, x11, x10
	sra x27, x10, 2&31
	lw x10, -280 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_381
.LBB0_359:                              //  %while.cond771.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x27, -320 ( fp )             //  4-byte Folded Spill
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_364
.LBB0_362:                              //  %land.lhs.true.i2367
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_502
.LBB0_363:                              //  %land.lhs.true.if.end_crit_edge.i2369
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x21 )
	jal x0, .LBB0_364
.LBB0_360:                              //  %if.end848
                                        //    in Loop: Header=BB0_364 Depth=2
	lw x27, -320 ( fp )             //  4-byte Folded Reload
	mv x9, x23
.LBB0_361:                              //  %if.end848
                                        //    in Loop: Header=BB0_364 Depth=2
	add x25, x25, 1
	lw x10, 0 ( x21 )
	bge x0, x10, .LBB0_362
.LBB0_364:                              //  %_sfgetwc_r.exit2375
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x23, 0 ( x11 )
	lw x12, -300 ( fp )             //  4-byte Folded Reload
	sw x10, 4 ( x18 )
	xor x11, x23, -1
	snez x10, x11
	beq x0, x12, .LBB0_395
.LBB0_365:                              //  %_sfgetwc_r.exit2375
                                        //    in Loop: Header=BB0_364 Depth=2
	beq x0, x11, .LBB0_395
.LBB0_366:                              //  %land.rhs778
                                        //    in Loop: Header=BB0_364 Depth=2
	lw x10, -256 ( fp )             //  4-byte Folded Reload
	mv x11, x23
	mv x12, x27
	jal wmemchr
	bltu x0, x10, .LBB0_396
.LBB0_367:                              //  %while.body800
                                        //    in Loop: Header=BB0_364 Depth=2
	mv x10, x19
	mv x11, x22
	mv x12, x23
	add x13, fp, -64
	jal _wcrtomb_r
	beq x0, x10, .LBB0_369
.LBB0_368:                              //  %while.body800
                                        //    in Loop: Header=BB0_364 Depth=2
	xor x11, x10, -1
	bltu x0, x11, .LBB0_370
	jal x0, .LBB0_553
.LBB0_369:                              //  %lor.lhs.false808
                                        //    in Loop: Header=BB0_364 Depth=2
	lw x11, -64 ( fp )
	xor x11, x11, -4
	beq x0, x11, .LBB0_371
.LBB0_370:                              //  %if.then812
                                        //    in Loop: Header=BB0_364 Depth=2
	lw x11, -300 ( fp )             //  4-byte Folded Reload
	add x11, x11, -1
	sw x11, -300 ( fp )             //  4-byte Folded Spill
.LBB0_371:                              //  %if.end814
                                        //    in Loop: Header=BB0_364 Depth=2
	lw x11, -304 ( fp )             //  4-byte Folded Reload
	bltu x0, x11, .LBB0_361
.LBB0_372:                              //  %if.then817
                                        //    in Loop: Header=BB0_364 Depth=2
	add x22, x10, x22
	lw x10, -308 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_361
.LBB0_373:                              //  %land.lhs.true825
                                        //    in Loop: Header=BB0_364 Depth=2
	lw x10, -312 ( fp )             //  4-byte Folded Reload
	mv x11, x22
	mv x23, x9
	sub x9, x11, x10
	jal __locale_mb_cur_max
	lw x27, -316 ( fp )             //  4-byte Folded Reload
	bgeu x9, x27, .LBB0_375
.LBB0_374:                              //  %land.lhs.true825
                                        //    in Loop: Header=BB0_364 Depth=2
	sub x10, x27, x10
	bltu x9, x10, .LBB0_360
.LBB0_375:                              //  %if.then833
                                        //    in Loop: Header=BB0_364 Depth=2
	lw x10, -312 ( fp )             //  4-byte Folded Reload
	sll x27, x27, 1&31
	mv x11, x27
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB0_555
.LBB0_376:                              //  %if.end839
                                        //    in Loop: Header=BB0_364 Depth=2
	lw x10, -308 ( fp )             //  4-byte Folded Reload
	add x22, x9, x11
	sw x27, -316 ( fp )             //  4-byte Folded Spill
	sw x11, -312 ( fp )             //  4-byte Folded Spill
	sw x11, 0 ( x10 )
	jal x0, .LBB0_360
.LBB0_377:                              //  %if.then833.us
                                        //    in Loop: Header=BB0_381 Depth=2
	lw x10, -312 ( fp )             //  4-byte Folded Reload
	sll x11, x11, 1&31
	sw x11, -316 ( fp )             //  4-byte Folded Spill
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB0_555
.LBB0_378:                              //  %if.end839.us
                                        //    in Loop: Header=BB0_381 Depth=2
	lw x10, -308 ( fp )             //  4-byte Folded Reload
	add x22, x9, x11
	sw x11, -312 ( fp )             //  4-byte Folded Spill
	sw x11, 0 ( x10 )
.LBB0_379:                              //  %if.end848.us
                                        //    in Loop: Header=BB0_381 Depth=2
	mv x9, x23
.LBB0_380:                              //  %if.end848.us
                                        //    in Loop: Header=BB0_381 Depth=2
	add x25, x25, 1
.LBB0_381:                              //  %while.cond771.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_384
.LBB0_382:                              //  %land.lhs.true.i2367.us
                                        //    in Loop: Header=BB0_381 Depth=2
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_502
.LBB0_383:                              //  %land.lhs.true.if.end_crit_edge.i2369.us
                                        //    in Loop: Header=BB0_381 Depth=2
	lw x10, 0 ( x21 )
.LBB0_384:                              //  %_sfgetwc_r.exit2375.us
                                        //    in Loop: Header=BB0_381 Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x23, 0 ( x11 )
	lw x12, -300 ( fp )             //  4-byte Folded Reload
	sw x10, 4 ( x18 )
	xor x11, x23, -1
	snez x10, x11
	beq x0, x12, .LBB0_395
.LBB0_385:                              //  %_sfgetwc_r.exit2375.us
                                        //    in Loop: Header=BB0_381 Depth=2
	beq x0, x11, .LBB0_395
.LBB0_386:                              //  %land.rhs778.us
                                        //    in Loop: Header=BB0_381 Depth=2
	lw x10, -256 ( fp )             //  4-byte Folded Reload
	mv x11, x23
	mv x12, x27
	jal wmemchr
	beq x0, x10, .LBB0_396
.LBB0_387:                              //  %while.body800.us
                                        //    in Loop: Header=BB0_381 Depth=2
	mv x10, x19
	mv x11, x22
	mv x12, x23
	add x13, fp, -64
	jal _wcrtomb_r
	beq x0, x10, .LBB0_389
.LBB0_388:                              //  %while.body800.us
                                        //    in Loop: Header=BB0_381 Depth=2
	xor x11, x10, -1
	bltu x0, x11, .LBB0_390
	jal x0, .LBB0_553
.LBB0_389:                              //  %lor.lhs.false808.us
                                        //    in Loop: Header=BB0_381 Depth=2
	lw x11, -64 ( fp )
	xor x11, x11, -4
	beq x0, x11, .LBB0_391
.LBB0_390:                              //  %if.then812.us
                                        //    in Loop: Header=BB0_381 Depth=2
	lw x11, -300 ( fp )             //  4-byte Folded Reload
	add x11, x11, -1
	sw x11, -300 ( fp )             //  4-byte Folded Spill
.LBB0_391:                              //  %if.end814.us
                                        //    in Loop: Header=BB0_381 Depth=2
	lw x11, -304 ( fp )             //  4-byte Folded Reload
	bltu x0, x11, .LBB0_380
.LBB0_392:                              //  %if.then817.us
                                        //    in Loop: Header=BB0_381 Depth=2
	add x22, x10, x22
	lw x10, -308 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_380
.LBB0_393:                              //  %land.lhs.true825.us
                                        //    in Loop: Header=BB0_381 Depth=2
	lw x10, -312 ( fp )             //  4-byte Folded Reload
	mv x23, x9
	sub x9, x22, x10
	jal __locale_mb_cur_max
	lw x11, -316 ( fp )             //  4-byte Folded Reload
	bgeu x9, x11, .LBB0_377
.LBB0_394:                              //  %land.lhs.true825.us
                                        //    in Loop: Header=BB0_381 Depth=2
	sub x10, x11, x10
	bltu x9, x10, .LBB0_379
	jal x0, .LBB0_377
.LBB0_395:                              //  %while.end850
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x10, .LBB0_502
.LBB0_396:                              //  %if.end.i2380
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	lw x11, -232 ( fp )             //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_401
.LBB0_397:                              //  %if.then4.i2384
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_399
.LBB0_398:                              //  %land.lhs.true.i2387
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_502
.LBB0_399:                              //  %if.end9.i2392
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x23, -4 ( x10 )
.LBB0_400:                              //  %if.end855
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_503
	jal x0, .LBB0_532
.LBB0_401:                              //  %if.end13.i2395
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_500
.LBB0_402:                              //  %land.lhs.true17.i2401
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_501
.LBB0_403:                              //  %land.lhs.true23.i2404
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x23, .LBB0_501
.LBB0_404:                              //  %if.then27.i2407
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_400
.LBB0_405:                              //  %if.then1082
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x10, 8
	lw x10, -296 ( fp )             //  4-byte Folded Reload
	bltu x10, x11, .LBB0_558
.LBB0_406:                              //  %if.end1102
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB0_558
.LBB0_407:                              //  %cleanup1111
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB0_408:                              //  %if.end1114
                                        //    in Loop: Header=BB0_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -300 ( fp )             //  4-byte Folded Reload
	sw x22, -304 ( fp )             //  4-byte Folded Spill
	add x27, x0, 32
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	mv x11, x0
.LBB0_409:                              //  %while.cond1128.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, fp, -64
	add x12, x0, 8
	jal memset
	lw x10, 0 ( x21 )
	blt x0, x10, .LBB0_416
.LBB0_414:                              //  %land.lhs.true.i2529
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_509
.LBB0_415:                              //  %land.lhs.true.if.end_crit_edge.i2531
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x21 )
	jal x0, .LBB0_416
.LBB0_410:                              //  %if.then1173
                                        //    in Loop: Header=BB0_416 Depth=2
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	sll x27, x27, 1&31
	mv x11, x27
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB0_555
.LBB0_411:                              //  %if.end1179
                                        //    in Loop: Header=BB0_416 Depth=2
	lw x10, -300 ( fp )             //  4-byte Folded Reload
	add x22, x9, x11
	sw x11, -304 ( fp )             //  4-byte Folded Spill
	sw x11, 0 ( x10 )
.LBB0_412:                              //  %if.end1188
                                        //    in Loop: Header=BB0_416 Depth=2
	mv x9, x23
.LBB0_413:                              //  %if.end1188
                                        //    in Loop: Header=BB0_416 Depth=2
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	add x10, x10, 1
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	lw x10, 0 ( x21 )
	bge x0, x10, .LBB0_414
.LBB0_416:                              //  %_sfgetwc_r.exit2537
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x23, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x11, x23, -1
	snez x10, x11
	beq x0, x25, .LBB0_426
.LBB0_417:                              //  %_sfgetwc_r.exit2537
                                        //    in Loop: Header=BB0_416 Depth=2
	beq x0, x11, .LBB0_426
.LBB0_418:                              //  %land.rhs1135
                                        //    in Loop: Header=BB0_416 Depth=2
	mv x10, x23
	jal iswspace
	bltu x0, x10, .LBB0_427
.LBB0_419:                              //  %while.body1140
                                        //    in Loop: Header=BB0_416 Depth=2
	mv x10, x22
	mv x11, x23
	add x12, fp, -64
	jal wcrtomb
	beq x0, x10, .LBB0_421
.LBB0_420:                              //  %while.body1140
                                        //    in Loop: Header=BB0_416 Depth=2
	xor x11, x10, -1
	bltu x0, x11, .LBB0_422
	jal x0, .LBB0_553
.LBB0_421:                              //  %lor.lhs.false1148
                                        //    in Loop: Header=BB0_416 Depth=2
	lw x11, -64 ( fp )
	xor x11, x11, -4
	beq x0, x11, .LBB0_423
.LBB0_422:                              //  %if.then1152
                                        //    in Loop: Header=BB0_416 Depth=2
	add x25, x25, -1
.LBB0_423:                              //  %if.then1157
                                        //    in Loop: Header=BB0_416 Depth=2
	add x22, x10, x22
	lw x10, -300 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_413
.LBB0_424:                              //  %land.lhs.true1165
                                        //    in Loop: Header=BB0_416 Depth=2
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	mv x23, x9
	sub x9, x22, x10
	jal __locale_mb_cur_max
	bgeu x9, x27, .LBB0_410
.LBB0_425:                              //  %land.lhs.true1165
                                        //    in Loop: Header=BB0_416 Depth=2
	sub x10, x27, x10
	bltu x9, x10, .LBB0_412
	jal x0, .LBB0_410
.LBB0_426:                              //  %while.end1190
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x10, .LBB0_509
.LBB0_427:                              //  %if.end.i2542
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	lw x11, -232 ( fp )             //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_432
.LBB0_428:                              //  %if.then4.i2546
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_430
.LBB0_429:                              //  %land.lhs.true.i2549
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_509
.LBB0_430:                              //  %if.end9.i2554
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x23, -4 ( x10 )
.LBB0_431:                              //  %if.end1195
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	lw x10, -308 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_510
	jal x0, .LBB0_533
.LBB0_432:                              //  %if.end13.i2557
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_498
.LBB0_433:                              //  %land.lhs.true17.i2563
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_499
.LBB0_434:                              //  %land.lhs.true23.i2566
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x23, .LBB0_499
.LBB0_435:                              //  %if.then27.i2569
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_431
.LBB0_436:                              //  %if.end656.us
                                        //    in Loop: Header=BB0_437 Depth=2
	sub x10, x0, x9
	sw x10, -300 ( fp )             //  4-byte Folded Spill
	sll x22, x22, 1&31
	sll x10, x23, 2&31
	sw x11, 0 ( x27 )
	sw x11, -248 ( fp )             //  4-byte Folded Spill
	add x11, x10, x11
	sw x22, -308 ( fp )             //  4-byte Folded Spill
.LBB0_437:                              //  %while.cond608.us.outer
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_438 Depth 3
	lw x10, -300 ( fp )             //  4-byte Folded Reload
	sub x9, x0, x10
.LBB0_438:                              //  %while.cond608.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_437 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 0 ( x21 )
	mv x22, x11
	blt x0, x10, .LBB0_441
.LBB0_439:                              //  %land.lhs.true.i2313.us
                                        //    in Loop: Header=BB0_438 Depth=3
	mv x10, x19
	mv x11, x18
	jal __ssrefill_r
	bltu x0, x10, .LBB0_521
.LBB0_440:                              //  %land.lhs.true.if.end_crit_edge.i2315.us
                                        //    in Loop: Header=BB0_438 Depth=3
	lw x10, 0 ( x21 )
.LBB0_441:                              //  %_sfgetwc_r.exit2321.us
                                        //    in Loop: Header=BB0_438 Depth=3
	lw x11, 0 ( x18 )
	add x10, x10, -4
	add x12, x11, 4
	sw x12, 0 ( x18 )
	lw x23, 0 ( x11 )
	sw x10, 4 ( x18 )
	xor x10, x23, -1
	beq x0, x10, .LBB0_456
.LBB0_442:                              //  %land.lhs.true612.us
                                        //    in Loop: Header=BB0_438 Depth=3
	add x9, x9, 1
	xor x10, x9, 1
	beq x0, x10, .LBB0_447
.LBB0_443:                              //  %land.end637.us
                                        //    in Loop: Header=BB0_438 Depth=3
	lw x10, -256 ( fp )             //  4-byte Folded Reload
	mv x11, x23
	mv x12, x25
	jal wmemchr
	beq x0, x10, .LBB0_447
.LBB0_444:                              //  %while.body638.us
                                        //    in Loop: Header=BB0_438 Depth=3
	add x10, x22, 4
	mv x11, x10
	sw x23, 0 ( x22 )
	beq x0, x27, .LBB0_438
.LBB0_445:                              //  %while.body638.us
                                        //    in Loop: Header=BB0_438 Depth=3
	lw x11, -248 ( fp )             //  4-byte Folded Reload
	sub x11, x10, x11
	sra x23, x11, 2&31
	mv x11, x10
	lw x10, -308 ( fp )             //  4-byte Folded Reload
	bltu x23, x10, .LBB0_438
.LBB0_446:                              //  %if.then650.us
                                        //    in Loop: Header=BB0_437 Depth=2
	lw x22, -308 ( fp )             //  4-byte Folded Reload
	lw x10, -248 ( fp )             //  4-byte Folded Reload
	sll x11, x22, 3&31
	jal realloc
	mv x11, x10
	bltu x0, x11, .LBB0_436
	jal x0, .LBB0_555
.LBB0_447:                              //  %if.end.i2326
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	lw x11, -232 ( fp )             //  4-byte Folded Reload
	lw x9, -304 ( fp )              //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_452
.LBB0_448:                              //  %if.then4.i2330
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_450
.LBB0_449:                              //  %land.lhs.true.i2333
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_522
.LBB0_450:                              //  %if.end9.i2338
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x23, -4 ( x10 )
.LBB0_451:                              //  %if.end670
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	lw x10, -248 ( fp )             //  4-byte Folded Reload
	sub x10, x22, x10
	bltu x0, x10, .LBB0_523
	jal x0, .LBB0_556
.LBB0_456:                              //    in Loop: Header=BB0_4 Depth=1
	lw x9, -304 ( fp )              //  4-byte Folded Reload
	lw x10, -248 ( fp )             //  4-byte Folded Reload
	sub x10, x22, x10
	bltu x0, x10, .LBB0_523
	jal x0, .LBB0_556
.LBB0_452:                              //  %if.end13.i2341
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_457
.LBB0_453:                              //  %land.lhs.true17.i2347
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_458
.LBB0_454:                              //  %land.lhs.true23.i2350
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x23, .LBB0_458
.LBB0_455:                              //  %if.then27.i2353
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_451
.LBB0_457:                              //  %if.end13.if.end32_crit_edge.i2344
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
.LBB0_458:                              //  %if.end32.i2361
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x10, 48 ( x18 )
	lw x10, -240 ( fp )             //  4-byte Folded Reload
	sw x11, 60 ( x18 )
	sw x23, 63 ( x18 )
	sw x10, 0 ( x18 )
	add x10, x0, 2
	sw x10, 4 ( x18 )
	lw x10, -248 ( fp )             //  4-byte Folded Reload
	sub x10, x22, x10
	bltu x0, x10, .LBB0_523
	jal x0, .LBB0_556
.LBB0_459:                              //  %if.end13.if.end32_crit_edge.i2506
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
.LBB0_460:                              //  %if.end32.i2523
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x27, 0 ( x18 )
	sw x10, 48 ( x18 )
	add x10, x0, 2
	sw x11, 60 ( x18 )
	sw x10, 4 ( x18 )
	sw x23, 63 ( x18 )
	lw x10, -248 ( fp )             //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	bltu x0, x10, .LBB0_516
	jal x0, .LBB0_520
.LBB0_462:                              //    in Loop: Header=BB0_4 Depth=1
	sw x14, -252 ( fp )             //  4-byte Folded Spill
.LBB0_463:                              //  %if.end.i2596
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x14, 12 ( x18 )
	lw x15, -232 ( fp )             //  4-byte Folded Reload
	and x14, x15, x14
	sh x14, 12 ( x18 )
	lw x14, 48 ( x18 )
	beq x0, x14, .LBB0_468
.LBB0_464:                              //  %if.then4.i2600
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x12, 52 ( x18 )
	blt x10, x12, .LBB0_467
.LBB0_465:                              //  %land.lhs.true.i2603
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_473
.LBB0_466:                              //  %land.lhs.true.i2603.if.end9.i2608_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 0 ( x18 )
.LBB0_467:                              //  %if.end9.i2608
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x11, -4
	sw x10, 0 ( x18 )
	sb x25, -4 ( x11 )
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	and x10, x22, 256
	beq x0, x10, .LBB0_474
	jal x0, .LBB0_535
.LBB0_468:                              //  %if.end13.i2611
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14, 16 ( x18 )
	beq x0, x14, .LBB0_472
.LBB0_469:                              //  %if.end13.i2611
                                        //    in Loop: Header=BB0_4 Depth=1
	bgeu x14, x11, .LBB0_472
.LBB0_470:                              //  %land.lhs.true23.i2620
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14, 0 ( x13 )
	bne x14, x25, .LBB0_472
.LBB0_471:                              //  %if.then27.i2623
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x12, 4 ( x18 )
	sw x13, 0 ( x18 )
	and x10, x22, 256
	beq x0, x10, .LBB0_474
	jal x0, .LBB0_535
.LBB0_472:                              //  %if.end32.i2631
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 60 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	sw x11, 56 ( x18 )
	sw x25, 63 ( x18 )
	sw x10, 48 ( x18 )
	lw x10, -240 ( fp )             //  4-byte Folded Reload
	sw x10, 0 ( x18 )
	add x10, x0, 2
	sw x10, 4 ( x18 )
.LBB0_473:                              //  %for.end
                                        //    in Loop: Header=BB0_4 Depth=1
	and x10, x22, 256
	bltu x0, x10, .LBB0_535
.LBB0_474:                              //  %if.end1310
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x9, -4 ( x27 )
	or x10, x9, 32
	xor x10, x10, 120
	bltu x0, x10, .LBB0_487
.LBB0_475:                              //  %if.then1317
                                        //    in Loop: Header=BB0_4 Depth=1
	add x27, x27, -4
	xor x10, x9, -1
	beq x0, x10, .LBB0_487
.LBB0_476:                              //  %if.end.i2678
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x10, 12 ( x18 )
	lw x11, -232 ( fp )             //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_481
.LBB0_477:                              //  %if.then4.i2682
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_479
.LBB0_478:                              //  %land.lhs.true.i2685
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_487
.LBB0_479:                              //  %if.end9.i2690
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x9, -4 ( x10 )
.LBB0_480:                              //  %if.end1320
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	lw x9, -304 ( fp )              //  4-byte Folded Reload
	and x10, x22, 16
	sw x27, -248 ( fp )             //  4-byte Folded Spill
	beq x0, x10, .LBB0_488
	jal x0, .LBB0_531
.LBB0_481:                              //  %if.end13.i2693
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_485
.LBB0_482:                              //  %land.lhs.true17.i2699
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_486
.LBB0_483:                              //  %land.lhs.true23.i2702
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -4 ( x10 )
	bne x11, x9, .LBB0_486
.LBB0_484:                              //  %if.then27.i2705
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_480
.LBB0_485:                              //  %if.end13.if.end32_crit_edge.i2696
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
.LBB0_486:                              //  %if.end32.i2713
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x10, 48 ( x18 )
	lw x10, -240 ( fp )             //  4-byte Folded Reload
	sw x11, 60 ( x18 )
	sw x9, 63 ( x18 )
	sw x10, 0 ( x18 )
	add x10, x0, 2
	sw x10, 4 ( x18 )
.LBB0_487:                              //  %if.end1320
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x9, -304 ( fp )              //  4-byte Folded Reload
	and x10, x22, 16
	sw x27, -248 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB0_531
.LBB0_488:                              //  %if.then1324
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13, -252 ( fp )             //  4-byte Folded Reload
	lw x14, -268 ( fp )             //  4-byte Folded Reload
	mv x10, x19
	add x11, fp, -224
	mv x12, x0
	sw x0, 0 ( x27 )
	call.reg x14
	and x11, x22, 32
	bltu x0, x11, .LBB0_493
.LBB0_489:                              //  %if.else1331
                                        //    in Loop: Header=BB0_4 Depth=1
	and x11, x22, 8
	bltu x0, x11, .LBB0_494
.LBB0_490:                              //  %if.else1337
                                        //    in Loop: Header=BB0_4 Depth=1
	and x11, x22, 4
	bltu x0, x11, .LBB0_495
.LBB0_491:                              //  %if.else1343
                                        //    in Loop: Header=BB0_4 Depth=1
	and x11, x22, 1
	bltu x0, x11, .LBB0_493
.LBB0_492:                              //  %if.else1348
                                        //    in Loop: Header=BB0_4 Depth=1
	and x11, x22, 2
	bltu x0, x11, .LBB0_496
.LBB0_493:                              //  %if.else1362
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -56 ( fp )
	add x12, x11, 4
	sw x12, -56 ( fp )
	lw x11, 0 ( x11 )
	sw x10, 0 ( x11 )
	jal x0, .LBB0_530
.LBB0_494:                              //  %if.then1334
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -56 ( fp )
	add x12, x11, 4
	sw x12, -56 ( fp )
	lw x11, 0 ( x11 )
	sb x10, 0 ( x11 )
	jal x0, .LBB0_530
.LBB0_495:                              //  %if.then1340
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -56 ( fp )
	add x12, x11, 4
	sw x12, -56 ( fp )
	lw x11, 0 ( x11 )
	sh x10, 0 ( x11 )
	jal x0, .LBB0_530
.LBB0_496:                              //  %if.then1351
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -272 ( fp )             //  4-byte Folded Reload
	lw x11, -268 ( fp )             //  4-byte Folded Reload
	beq x11, x10, .LBB0_528
.LBB0_497:                              //  %if.else1357
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13, -252 ( fp )             //  4-byte Folded Reload
	mv x10, x19
	add x11, fp, -224
	mv x12, x0
	jal _wcstoll_r
	jal x0, .LBB0_529
.LBB0_498:                              //  %if.end13.if.end32_crit_edge.i2560
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
.LBB0_499:                              //  %if.end32.i2577
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x10, 48 ( x18 )
	lw x10, -240 ( fp )             //  4-byte Folded Reload
	sw x11, 60 ( x18 )
	sw x23, 63 ( x18 )
	sw x10, 0 ( x18 )
	add x10, x0, 2
	sw x10, 4 ( x18 )
	lw x10, -308 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_510
	jal x0, .LBB0_533
.LBB0_500:                              //  %if.end13.if.end32_crit_edge.i2398
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x18 )
.LBB0_501:                              //  %if.end32.i2415
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x10, 48 ( x18 )
	lw x10, -240 ( fp )             //  4-byte Folded Reload
	sw x11, 60 ( x18 )
	sw x23, 63 ( x18 )
	sw x10, 0 ( x18 )
	add x10, x0, 2
	sw x10, 4 ( x18 )
.LBB0_502:                              //  %if.end855
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	bltu x0, x10, .LBB0_532
.LBB0_503:                              //  %if.then858
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -308 ( fp )             //  4-byte Folded Reload
	sb x0, 0 ( x22 )
	beq x0, x10, .LBB0_527
.LBB0_504:                              //  %if.then858
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -312 ( fp )             //  4-byte Folded Reload
	sub x10, x22, x10
	add x11, x10, 1
	lw x10, -316 ( fp )             //  4-byte Folded Reload
	bgeu x11, x10, .LBB0_527
.LBB0_505:                              //  %if.then868
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -308 ( fp )             //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB0_527
.LBB0_506:                              //  %if.then873
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -308 ( fp )             //  4-byte Folded Reload
	sw x10, 0 ( x11 )
	jal x0, .LBB0_527
.LBB0_508:                              //    in Loop: Header=BB0_4 Depth=1
	mv x27, x0
	sw x22, -308 ( fp )             //  4-byte Folded Spill
	sw x27, -300 ( fp )             //  4-byte Folded Spill
	add x22, fp, -225
	sw x27, -304 ( fp )             //  4-byte Folded Spill
.LBB0_509:                              //  %if.end1195
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -308 ( fp )             //  4-byte Folded Reload
	bltu x0, x10, .LBB0_533
.LBB0_510:                              //  %if.then1198
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -300 ( fp )             //  4-byte Folded Reload
	sb x0, 0 ( x22 )
	beq x0, x10, .LBB0_520
.LBB0_511:                              //  %if.then1198
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	sub x10, x22, x10
	add x11, x10, 1
	bgeu x11, x27, .LBB0_520
.LBB0_512:                              //  %if.then1208
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -300 ( fp )             //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB0_520
.LBB0_513:                              //  %if.then1213
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -300 ( fp )             //  4-byte Folded Reload
	jal x0, .LBB0_519
.LBB0_514:                              //    in Loop: Header=BB0_4 Depth=1
	lw x12, -300 ( fp )             //  4-byte Folded Reload
.LBB0_515:                              //  %if.end1031
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -248 ( fp )             //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_520
.LBB0_516:                              //  %if.end1031
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -248 ( fp )             //  4-byte Folded Reload
	sub x10, x10, x12
	sra x10, x10, 2&31
	add x11, x10, 1
	bgeu x11, x22, .LBB0_520
.LBB0_517:                              //  %if.then1042
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	sll x11, x11, 2&31
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB0_520
.LBB0_518:                              //  %if.then1047
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, -304 ( fp )             //  4-byte Folded Reload
.LBB0_519:                              //  %if.end1215
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 0 ( x11 )
.LBB0_520:                              //  %if.end1215
                                        //    in Loop: Header=BB0_4 Depth=1
	add x9, x9, 1
	lw x25, 0 ( x26 )
	beq x0, x25, .LBB0_629
.LBB0_630:                              //  %if.end1215
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_629:                              //  %if.end1215
	jal x0, .LBB0_556
.LBB0_521:                              //    in Loop: Header=BB0_4 Depth=1
	lw x9, -304 ( fp )              //  4-byte Folded Reload
.LBB0_522:                              //  %if.end670
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -248 ( fp )             //  4-byte Folded Reload
	sub x10, x22, x10
	beq x0, x10, .LBB0_556
.LBB0_523:                              //  %if.end678
                                        //    in Loop: Header=BB0_4 Depth=1
	sra x25, x10, 2&31
	sw x22, -248 ( fp )             //  4-byte Folded Spill
	sw x0, 0 ( x22 )
	beq x0, x27, .LBB0_527
.LBB0_524:                              //  %if.end678
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -308 ( fp )             //  4-byte Folded Reload
	add x11, x25, 1
	bgeu x11, x10, .LBB0_527
.LBB0_525:                              //  %if.then685
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x27 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB0_527
.LBB0_526:                              //  %if.then690
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10, 0 ( x27 )
.LBB0_527:                              //  %cleanup694
                                        //    in Loop: Header=BB0_4 Depth=1
	add x9, x9, 1
	jal x0, .LBB0_532
.LBB0_528:                              //  %if.then1354
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13, -252 ( fp )             //  4-byte Folded Reload
	mv x10, x19
	add x11, fp, -224
	mv x12, x0
	jal _wcstoull_r
.LBB0_529:                              //  %if.end1360
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x12, -56 ( fp )
	add x13, x12, 4
	sw x13, -56 ( fp )
	lw x12, 0 ( x12 )
	sw x11, 4 ( x12 )
	sw x10, 0 ( x12 )
.LBB0_530:                              //  %if.end1368
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x27, -248 ( fp )             //  4-byte Folded Reload
	add x9, x9, 1
.LBB0_531:                              //  %if.end1370
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, fp, -224
	sub x10, x27, x10
	sra x25, x10, 2&31
.LBB0_532:                              //  %sw.epilog1377
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	add x10, x10, x25
	sw x10, -236 ( fp )             //  4-byte Folded Spill
.LBB0_533:                              //  %if.end1224
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x25, 0 ( x26 )
	beq x0, x25, .LBB0_631
.LBB0_632:                              //  %if.end1224
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_631:                              //  %if.end1224
	jal x0, .LBB0_556
.LBB0_534:
	mv x9, x0
	jal x0, .LBB0_564
.LBB0_535:                              //  %if.then1302
	beq x0, x23, .LBB0_571
.LBB0_536:                              //  %if.then1306
	lw x9, -4 ( x27 )
	xor x10, x9, -1
	beq x0, x10, .LBB0_571
.LBB0_537:                              //  %if.end.i2637
	lhu x10, 12 ( x18 )
	lw x11, -232 ( fp )             //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB0_565
.LBB0_538:                              //  %if.then4.i2641
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB0_540
.LBB0_539:                              //  %land.lhs.true.i2644
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_571
.LBB0_540:                              //  %if.end9.i2649
	lw x10, 0 ( x18 )
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x9, -4 ( x10 )
.LBB0_541:                              //  %do.body1388
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	lw x9, -304 ( fp )              //  4-byte Folded Reload
	bltu x0, x20, .LBB0_557
	jal x0, .LBB0_564
.LBB0_542:                              //  %if.end.i2138
	lhu x14, 12 ( x18 )
	lw x15, -232 ( fp )             //  4-byte Folded Reload
	lw x16, -244 ( fp )             //  4-byte Folded Reload
	and x14, x15, x14
	sh x14, 12 ( x18 )
	lw x14, 48 ( x18 )
	lw x15, -240 ( fp )             //  4-byte Folded Reload
	beq x0, x14, .LBB0_547
.LBB0_543:                              //  %if.then4.i2142
	lw x11, 52 ( x18 )
	blt x13, x11, .LBB0_546
.LBB0_544:                              //  %land.lhs.true.i2145
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB0_552
.LBB0_545:                              //  %land.lhs.true.i2145.if.end9.i2150_crit_edge
	lw x10, 0 ( x18 )
.LBB0_546:                              //  %if.end9.i2150
	add x11, x10, -4
	sw x11, 0 ( x18 )
	sb x9, -4 ( x10 )
	lw x10, 4 ( x18 )
	add x10, x10, 4
	sw x10, 4 ( x18 )
	jal x0, .LBB0_552
.LBB0_547:                              //  %if.end13.i2153
	lw x14, 16 ( x18 )
	beq x0, x14, .LBB0_551
.LBB0_548:                              //  %if.end13.i2153
	bgeu x14, x10, .LBB0_551
.LBB0_549:                              //  %land.lhs.true23.i2162
	lw x14, 0 ( x12 )
	bne x14, x9, .LBB0_551
.LBB0_550:                              //  %if.then27.i2165
	sw x11, 4 ( x18 )
	sw x12, 0 ( x18 )
	jal x0, .LBB0_552
.LBB0_551:                              //  %if.end32.i2173
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	add x10, x0, 2
	sw x13, 60 ( x18 )
	sw x16, 48 ( x18 )
	sw x15, 0 ( x18 )
	sw x10, 4 ( x18 )
	sw x9, 63 ( x18 )
.LBB0_552:                              //  %input_failure
	mv x9, x22
.LBB0_553:                              //  %input_failure
	beq x0, x9, .LBB0_555
.LBB0_554:                              //  %land.lhs.true1379
	lbu x10, 12 ( x18 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB0_556
.LBB0_555:                              //  %land.lhs.true1379
	add x9, x0, -1
.LBB0_556:                              //  %do.body1388
	beq x0, x20, .LBB0_564
.LBB0_557:                              //  %if.then1390
	xor x10, x9, -1
	bltu x0, x10, .LBB0_562
.LBB0_558:                              //  %for.cond1394.preheader
	lhu x10, 6 ( x20 )
	add x9, x0, -1
	beq x0, x10, .LBB0_562
.LBB0_559:                              //  %for.body1399.lr.ph
	mv x19, x9
	mv x9, x0
	mv x18, x9
.LBB0_560:                              //  %for.body1399
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
	bltu x18, x10, .LBB0_560
.LBB0_561:
	mv x9, x19
.LBB0_562:                              //  %if.end1407
	lw x10, 0 ( x20 )
	beq x0, x10, .LBB0_564
.LBB0_563:                              //  %if.then1410
	jal free
.LBB0_564:                              //  %cleanup1416
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
.LBB0_565:                              //  %if.end13.i2652
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB0_569
.LBB0_566:                              //  %land.lhs.true17.i2658
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB0_570
.LBB0_567:                              //  %land.lhs.true23.i2661
	lw x11, -4 ( x10 )
	bne x11, x9, .LBB0_570
.LBB0_568:                              //  %if.then27.i2664
	add x10, x10, -4
	sw x10, 0 ( x18 )
	jal x0, .LBB0_541
.LBB0_569:                              //  %if.end13.if.end32_crit_edge.i2655
	lw x10, 0 ( x18 )
.LBB0_570:                              //  %if.end32.i2672
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	lw x11, 4 ( x18 )
	sw x10, 48 ( x18 )
	lw x10, -240 ( fp )             //  4-byte Folded Reload
	sw x11, 60 ( x18 )
	sw x9, 63 ( x18 )
	sw x10, 0 ( x18 )
	add x10, x0, 2
	sw x10, 4 ( x18 )
.LBB0_571:                              //  %do.body1388
	lw x9, -304 ( fp )              //  4-byte Folded Reload
	bltu x0, x20, .LBB0_557
	jal x0, .LBB0_564
.Lfunc_end0:
	.size	__ssvfiwscanf_r, .Lfunc_end0-__ssvfiwscanf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_48
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_32
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_28
	.long	.LBB0_28
	.long	.LBB0_28
	.long	.LBB0_28
	.long	.LBB0_28
	.long	.LBB0_28
	.long	.LBB0_28
	.long	.LBB0_28
	.long	.LBB0_28
	.long	.LBB0_28
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_65
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_30
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_67
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_64
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_68
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_66
	.long	.LBB0_70
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_34
	.long	.LBB0_71
	.long	.LBB0_30
	.long	.LBB0_556
	.long	.LBB0_37
	.long	.LBB0_41
	.long	.LBB0_54
	.long	.LBB0_72
	.long	.LBB0_73
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_75
	.long	.LBB0_25
	.long	.LBB0_76
	.long	.LBB0_556
	.long	.LBB0_556
	.long	.LBB0_64
	.long	.LBB0_556
	.long	.LBB0_25
JTI0_1:
	.long	.LBB0_102
	.long	.LBB0_116
	.long	.LBB0_128
	.long	.LBB0_139
JTI0_2:
	.long	.LBB0_473
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_152
	.long	.LBB0_463
	.long	.LBB0_152
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_159
	.long	.LBB0_143
	.long	.LBB0_143
	.long	.LBB0_143
	.long	.LBB0_143
	.long	.LBB0_143
	.long	.LBB0_143
	.long	.LBB0_143
	.long	.LBB0_154
	.long	.LBB0_154
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_150
	.long	.LBB0_150
	.long	.LBB0_150
	.long	.LBB0_150
	.long	.LBB0_150
	.long	.LBB0_150
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_156
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_150
	.long	.LBB0_150
	.long	.LBB0_150
	.long	.LBB0_150
	.long	.LBB0_150
	.long	.LBB0_150
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_463
	.long	.LBB0_156
                                        //  -- End function
	.address_space	0
	.type	__ssvfiwscanf_r.basefix,@object //  @__ssvfiwscanf_r.basefix
	.p2align	1
__ssvfiwscanf_r.basefix:
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
	.size	__ssvfiwscanf_r.basefix, 34


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
