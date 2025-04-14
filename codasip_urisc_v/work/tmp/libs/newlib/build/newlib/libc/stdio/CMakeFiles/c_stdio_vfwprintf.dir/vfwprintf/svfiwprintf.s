	.text
	.file	"svfiwprintf.c"
	.globl	_svfiwprintf_r          //  -- Begin function _svfiwprintf_r
	.type	_svfiwprintf_r,@function
_svfiwprintf_r:                         //  @_svfiwprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -624
	.cfi_adjust_cfa_offset 624
	sw x27, 576 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	mv x27, x11
	sw x22, 596 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	mv x22, x10
	lbu x10, 12 ( x27 )
	sw x23, 592 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	mv x23, x12
	sw ra, 620 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	and x10, x10, 128
	sw x9, 616 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 612 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 608 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 604 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 600 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x24, 588 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 584 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 580 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw fp, 572 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x13, 568 ( sp )
	beq x0, x10, .LBB0_4
.LBB0_1:                                //  %land.lhs.true
	lw x10, 16 ( x27 )
	bltu x0, x10, .LBB0_4
.LBB0_2:                                //  %if.then
	add x9, x0, 64
	mv x10, x22
	mv x11, x9
	jal _malloc_r
	sw x10, 16 ( x27 )
	sw x10, 0 ( x27 )
	bltu x0, x10, .LBB0_3
.LBB0_267:                              //  %if.then
	jal x0, .LBB0_264
.LBB0_3:                                //  %if.end
	sw x9, 20 ( x27 )
.LBB0_4:                                //  %if.end8
	add x10, sp, 488
	sw x10, 552 ( sp )
	add x10, sp, 88
	add x10, x10, 400
	sw x10, 28 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _svfiwprintf_r.blanks )
	add x10, x10, %lo( _svfiwprintf_r.blanks )
	sw x10, 72 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _svfiwprintf_r.zeroes )
	add x10, x10, %lo( _svfiwprintf_r.zeroes )
	sw x10, 76 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( JTI0_0 )
	add x10, x10, %lo( JTI0_0 )
	sw x10, 52 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( .str.1 )
	add x10, x10, %lo( .str.1 )
	sw x10, 8 ( sp )                //  4-byte Folded Spill
	lui x10, %hi( .str.2 )
	add x10, x10, %lo( .str.2 )
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( .str.3 )
	add x10, x10, %lo( .str.3 )
	mv fp, x0
	sw x10, 12 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( .str )
	add x19, sp, 552
	add x10, x10, %lo( .str )
	mv x20, fp
	add x26, x0, -1
	add x21, x0, 10
	sw x0, 8 ( x19 )
	sw fp, 24 ( sp )                //  4-byte Folded Spill
	sw x0, 556 ( sp )
	sw x10, 16 ( sp )               //  4-byte Folded Spill
	sw fp, 44 ( sp )                //  4-byte Folded Spill
	sw fp, 40 ( sp )                //  4-byte Folded Spill
	sw x27, 56 ( sp )               //  4-byte Folded Spill
	sw x22, 60 ( sp )               //  4-byte Folded Spill
.LBB0_5:                                //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_8 Depth 2
                                        //        Child Loop BB0_15 Depth 3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_23 Depth 6
                                        //            Child Loop BB0_18 Depth 5
                                        //        Child Loop BB0_151 Depth 3
                                        //        Child Loop BB0_173 Depth 3
                                        //        Child Loop BB0_158 Depth 3
                                        //        Child Loop BB0_163 Depth 3
                                        //        Child Loop BB0_131 Depth 3
                                        //        Child Loop BB0_202 Depth 3
                                        //        Child Loop BB0_213 Depth 3
                                        //        Child Loop BB0_221 Depth 3
                                        //        Child Loop BB0_236 Depth 3
                                        //      Child Loop BB0_6 Depth 2
	add x18, sp, 488
	mv x9, x23
	lw x10, 0 ( x9 )
	beq x0, x10, .LBB0_8
.LBB0_6:                                //  %while.cond
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	xor x11, x10, 37
	beq x0, x11, .LBB0_8
.LBB0_7:                                //  %while.body
                                        //    in Loop: Header=BB0_6 Depth=2
	add x9, x9, 4
	lw x10, 0 ( x9 )
	bltu x0, x10, .LBB0_6
.LBB0_8:                                //  %while.end
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_15 Depth 3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_23 Depth 6
                                        //            Child Loop BB0_18 Depth 5
                                        //        Child Loop BB0_151 Depth 3
                                        //        Child Loop BB0_173 Depth 3
                                        //        Child Loop BB0_158 Depth 3
                                        //        Child Loop BB0_163 Depth 3
                                        //        Child Loop BB0_131 Depth 3
                                        //        Child Loop BB0_202 Depth 3
                                        //        Child Loop BB0_213 Depth 3
                                        //        Child Loop BB0_221 Depth 3
                                        //        Child Loop BB0_236 Depth 3
	sw x20, 64 ( sp )               //  4-byte Folded Spill
	sub x20, x9, x23
	beq x0, x20, .LBB0_13
.LBB0_9:                                //  %if.then14
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x19 )
	sw x20, 4 ( x18 )
	sw x23, 0 ( x18 )
	add x10, x20, x10
	sw x10, 8 ( x19 )
	lw x10, 556 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 556 ( sp )
	bltu x0, x10, .LBB0_11
.LBB0_10:                               //  %if.then21
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x22
	mv x11, x27
	mv x12, x19
	jal __ssprint_r
	add x18, sp, 488
	beq x0, x10, .LBB0_12
	jal x0, .LBB0_259
.LBB0_11:                               //    in Loop: Header=BB0_8 Depth=2
	add x18, x18, 8
.LBB0_12:                               //  %if.end27
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 64 ( sp )               //  4-byte Folded Reload
	sra x10, x20, 2&31
	add x11, x11, x10
	lw x10, 0 ( x9 )
	sw x11, 64 ( sp )               //  4-byte Folded Spill
.LBB0_13:                               //  %if.end29
                                        //    in Loop: Header=BB0_8 Depth=2
	bltu x0, x10, .LBB0_14
.LBB0_268:                              //  %if.end29
	jal x0, .LBB0_256
.LBB0_14:                               //  %if.end33
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x9, 4
	mv x25, fp
	mv x24, fp
	sw x0, 564 ( sp )
	sw x26, 68 ( sp )               //  4-byte Folded Spill
.LBB0_15:                               //  %rflag
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_23 Depth 6
                                        //            Child Loop BB0_18 Depth 5
	lw x22, 0 ( x10 )
	add x23, x10, 4
	mv x20, x25
.LBB0_16:                               //  %reswitch
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_23 Depth 6
                                        //            Child Loop BB0_18 Depth 5
	add x10, x22, -49
	sltiu x10, x10, 9
	beq x0, x10, .LBB0_19
.LBB0_17:                               //  %do.body.preheader
                                        //    in Loop: Header=BB0_16 Depth=4
	mv x24, fp
.LBB0_18:                               //  %do.body
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	mv x10, x24
	mv x11, x21
	jal __mulsi3
	add x10, x10, x22
	lw x22, 0 ( x23 )
	add x24, x10, -48
	add x23, x23, 4
	add x10, x22, -48
	sltiu x10, x10, 10
	bltu x0, x10, .LBB0_18
	jal x0, .LBB0_16
.LBB0_19:                               //  %reswitch
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //  =>        This Loop Header: Depth=5
                                        //              Child Loop BB0_23 Depth 6
	add x10, x0, 122
	bltu x10, x22, .LBB0_107
.LBB0_20:                               //  %reswitch
                                        //    in Loop: Header=BB0_19 Depth=5
	lw x11, 52 ( sp )               //  4-byte Folded Reload
	sll x10, x22, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB0_21:                               //  %sw.bb63
                                        //    in Loop: Header=BB0_19 Depth=5
	lw x22, 0 ( x23 )
	add x10, x23, 4
	xor x11, x22, 42
	beq x0, x11, .LBB0_51
.LBB0_22:                               //  %while.cond74.preheader
                                        //    in Loop: Header=BB0_19 Depth=5
	mv x23, x10
	add x9, x22, -48
	mv x10, fp
	add x11, x0, 9
	bltu x11, x9, .LBB0_25
.LBB0_23:                               //  %while.body78
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //            Parent Loop BB0_19 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	mv x11, x21
	jal __mulsi3
	lw x22, 0 ( x23 )
	add x10, x10, x9
	add x23, x23, 4
	add x9, x22, -48
	sltiu x11, x9, 10
	bltu x0, x11, .LBB0_23
.LBB0_24:                               //  %while.end83
                                        //    in Loop: Header=BB0_19 Depth=5
	sw x26, 68 ( sp )               //  4-byte Folded Spill
	blt x10, x0, .LBB0_16
.LBB0_25:                               //  %while.end83.thread
                                        //    in Loop: Header=BB0_19 Depth=5
	sw x10, 68 ( sp )               //  4-byte Folded Spill
	add x10, x22, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB0_17
	jal x0, .LBB0_19
.LBB0_26:                               //  %sw.bb115
                                        //    in Loop: Header=BB0_15 Depth=3
	or x20, x20, 32
	jal x0, .LBB0_42
.LBB0_27:                               //  %sw.bb49
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x11, 564 ( sp )
	mv x10, x23
	bltu x0, x11, .LBB0_15
.LBB0_28:                               //  %if.then51
                                        //    in Loop: Header=BB0_15 Depth=3
	add x10, x0, 32
	jal x0, .LBB0_38
.LBB0_29:                               //  %sw.bb53
                                        //    in Loop: Header=BB0_15 Depth=3
	or x20, x20, 1
	jal x0, .LBB0_42
.LBB0_30:                               //  %sw.bb
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x9, 60 ( sp )                //  4-byte Folded Reload
	mv x10, x9
	jal _localeconv_r
	lw x10, 4 ( x10 )
	lb x20, 0 ( x10 )
	mv x10, x9
	jal _localeconv_r
	lw x10, 8 ( x10 )
	sw x20, 24 ( sp )               //  4-byte Folded Spill
	sw x10, 40 ( sp )               //  4-byte Folded Spill
	mv x10, x23
	beq x0, x20, .LBB0_15
.LBB0_31:                               //  %sw.bb
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x11, 40 ( sp )               //  4-byte Folded Reload
	mv x10, x23
	beq x0, x11, .LBB0_15
.LBB0_32:                               //  %land.lhs.true44
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	lbu x10, 0 ( x10 )
	beq x10, fp, .LBB0_34
.LBB0_33:                               //  %land.lhs.true44
                                        //    in Loop: Header=BB0_15 Depth=3
	or x25, x25, 1024
.LBB0_34:                               //  %land.lhs.true44
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x10, x23
	jal x0, .LBB0_15
.LBB0_35:                               //  %sw.bb55
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 568 ( sp )
	add x11, x10, 4
	sw x11, 568 ( sp )
	lw x24, 0 ( x10 )
	mv x10, x23
	bge x24, x0, .LBB0_15
.LBB0_36:                               //  %if.end59
                                        //    in Loop: Header=BB0_15 Depth=3
	sub x24, x0, x24
	or x25, x25, 4
	mv x10, x23
	jal x0, .LBB0_15
.LBB0_37:                               //  %sw.bb62
                                        //    in Loop: Header=BB0_15 Depth=3
	add x10, x0, 43
.LBB0_38:                               //  %rflag
                                        //    in Loop: Header=BB0_15 Depth=3
	sw x10, 564 ( sp )
.LBB0_39:                               //  %rflag.backedge.loopexit
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x10, x23
	jal x0, .LBB0_15
.LBB0_40:                               //  %sw.bb60.loopexit
                                        //    in Loop: Header=BB0_15 Depth=3
	or x20, x20, 4
	jal x0, .LBB0_42
.LBB0_41:                               //  %sw.bb86
                                        //    in Loop: Header=BB0_15 Depth=3
	or x20, x20, 128
.LBB0_42:                               //  %rflag
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x25, x20
	mv x10, x23
	jal x0, .LBB0_15
.LBB0_43:                               //  %sw.bb96
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 0 ( x23 )
	add x11, x0, 104
	beq x10, x11, .LBB0_48
.LBB0_44:                               //  %sw.bb96
                                        //    in Loop: Header=BB0_15 Depth=3
	add x11, x0, 64
	jal x0, .LBB0_47
.LBB0_45:                               //  %sw.bb104
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x10, 0 ( x23 )
	add x11, x0, 108
	beq x10, x11, .LBB0_49
.LBB0_46:                               //  %sw.bb104
                                        //    in Loop: Header=BB0_15 Depth=3
	add x11, x0, 16
.LBB0_47:                               //  %sw.bb96
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x10, x23
	jal x0, .LBB0_50
.LBB0_48:                               //    in Loop: Header=BB0_15 Depth=3
	add x10, x23, 4
	add x11, x0, 512
	jal x0, .LBB0_50
.LBB0_49:                               //    in Loop: Header=BB0_15 Depth=3
	add x10, x23, 4
	add x11, x0, 32
.LBB0_50:                               //  %sw.bb96
                                        //    in Loop: Header=BB0_15 Depth=3
	or x20, x20, x11
	mv x25, x20
	jal x0, .LBB0_15
.LBB0_51:                               //  %if.then67
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x11, 568 ( sp )
	add x12, x11, 4
	sw x12, 568 ( sp )
	lw x11, 0 ( x11 )
	blt x26, x11, .LBB0_53
.LBB0_52:                               //  %if.then67
                                        //    in Loop: Header=BB0_15 Depth=3
	mv x11, x26
.LBB0_53:                               //  %if.then67
                                        //    in Loop: Header=BB0_15 Depth=3
	sw x11, 68 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_15
.LBB0_54:                               //  %sw.bb182
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x20, 32
	bltu x0, x10, .LBB0_59
.LBB0_55:                               //  %if.else188
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x20, 16
	bltu x0, x10, .LBB0_60
.LBB0_56:                               //  %if.else193
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x20, 64
	bltu x0, x10, .LBB0_62
.LBB0_57:                               //  %if.else199
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x22, 60 ( sp )               //  4-byte Folded Reload
	and x10, x20, 512
	bltu x0, x10, .LBB0_63
.LBB0_58:                               //  %if.else205
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	lw x20, 64 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 568 ( sp )
	lw x10, 0 ( x10 )
	sw x20, 0 ( x10 )
	mv x9, x23
	lw x10, 0 ( x9 )
	bltu x0, x10, .LBB0_6
	jal x0, .LBB0_8
.LBB0_59:                               //  %if.then185
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	lw x20, 64 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 568 ( sp )
	lw x10, 0 ( x10 )
	sra x11, x20, 31&31
	sw x11, 4 ( x10 )
	jal x0, .LBB0_61
.LBB0_60:                               //  %if.then191
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	lw x20, 64 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 568 ( sp )
	lw x10, 0 ( x10 )
.LBB0_61:                               //  %for.cond
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x20, 0 ( x10 )
	lw x22, 60 ( sp )               //  4-byte Folded Reload
	mv x9, x23
	lw x10, 0 ( x9 )
	bltu x0, x10, .LBB0_6
	jal x0, .LBB0_8
.LBB0_62:                               //  %if.then196
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	lw x20, 64 ( sp )               //  4-byte Folded Reload
	lw x22, 60 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 568 ( sp )
	lw x10, 0 ( x10 )
	sh x20, 0 ( x10 )
	mv x9, x23
	lw x10, 0 ( x9 )
	bltu x0, x10, .LBB0_6
	jal x0, .LBB0_8
.LBB0_63:                               //  %if.then202
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	lw x20, 64 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 568 ( sp )
	lw x10, 0 ( x10 )
	sb x20, 0 ( x10 )
	mv x9, x23
	lw x10, 0 ( x9 )
	bltu x0, x10, .LBB0_6
	jal x0, .LBB0_8
.LBB0_64:                               //  %sw.bb119
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	add x11, x10, 4
	sw x11, 568 ( sp )
	lw x10, 0 ( x10 )
	and x11, x20, 16
	bltu x0, x11, .LBB0_103
.LBB0_65:                               //  %sw.bb119
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x11, x22, 99
	bltu x0, x11, .LBB0_103
.LBB0_66:                               //  %if.then126
                                        //    in Loop: Header=BB0_8 Depth=2
	jal btowc
	lw x9, 44 ( sp )                //  4-byte Folded Reload
	xor x11, x10, -1
	bltu x0, x11, .LBB0_104
	jal x0, .LBB0_266
.LBB0_67:                               //  %sw.bb253
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	add x11, x10, 4
	sw x11, 568 ( sp )
	lw x9, 0 ( x10 )
	sw x0, 564 ( sp )
	beq x0, x9, .LBB0_108
.LBB0_68:                               //  %if.else264
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x20, 16
	bltu x0, x10, .LBB0_111
.LBB0_69:                               //  %if.else264
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x10, x22, 83
	beq x0, x10, .LBB0_111
.LBB0_70:                               //  %if.then270
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x22, 68 ( sp )               //  4-byte Folded Reload
	blt x22, x0, .LBB0_128
.LBB0_71:                               //  %if.then273
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	mv x11, fp
	mv x12, x22
	jal memchr
	beq x10, fp, .LBB0_73
.LBB0_72:                               //  %if.then273
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x22, x10, x9
.LBB0_73:                               //  %if.end285
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	sltiu x11, x22, 100
	sll x20, x22, 2&31
	bltu x0, x11, .LBB0_129
.LBB0_74:                               //  %if.then288
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11, x20, 4
	jal _malloc_r
	mv x26, x10
	beq x0, x26, .LBB0_266
.LBB0_75:                               //    in Loop: Header=BB0_8 Depth=2
	sw x26, 36 ( sp )               //  4-byte Folded Spill
	sw x26, 32 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_130
.LBB0_76:                               //  %sw.bb142
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x20, 32
	bltu x0, x10, .LBB0_105
.LBB0_77:                               //  %cond.false147
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x20, 16
	bltu x0, x10, .LBB0_116
.LBB0_78:                               //  %cond.false152
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x20, 64
	bltu x0, x10, .LBB0_124
.LBB0_79:                               //  %cond.false159
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	add x11, x10, 4
	sw x11, 568 ( sp )
	lw x27, 0 ( x10 )
	and x10, x20, 512
	beq x0, x10, .LBB0_117
.LBB0_80:                               //  %cond.true162
                                        //    in Loop: Header=BB0_8 Depth=2
	sll x10, x27, 24&31
	sra x27, x10, 24&31
	lw x9, 44 ( sp )                //  4-byte Folded Reload
	lw x22, 68 ( sp )               //  4-byte Folded Reload
	sra x25, x27, 31&31
	bge x25, x0, .LBB0_106
	jal x0, .LBB0_118
.LBB0_81:                               //  %hex.loopexit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9, 20 ( sp )                //  4-byte Folded Reload
	and x10, x20, 32
	beq x0, x10, .LBB0_98
.LBB0_82:                               //  %cond.true378
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	add x11, x10, 4
	sw x11, 568 ( sp )
	add x11, x10, 8
	lw x27, 0 ( x10 )
	sw x11, 568 ( sp )
	lw x25, 4 ( x10 )
	and x10, x20, 1
	beq x0, x10, .LBB0_85
.LBB0_83:                               //  %cond.end408
                                        //    in Loop: Header=BB0_8 Depth=2
	or x10, x25, x27
	beq x0, x10, .LBB0_85
.LBB0_84:                               //  %if.then415
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 48
	or x20, x20, 2
	sw x22, 84 ( sp )
	sw x10, 80 ( sp )
.LBB0_85:                               //  %if.end419
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x22, 68 ( sp )               //  4-byte Folded Reload
	and x20, x20, -1025
	add x10, x0, 2
	sw x0, 564 ( sp )
	bge x26, x22, .LBB0_143
.LBB0_142:                              //    in Loop: Header=BB0_8 Depth=2
	and x20, x20, -129
.LBB0_143:                              //  %number
                                        //    in Loop: Header=BB0_8 Depth=2
	bltu x0, x22, .LBB0_148
.LBB0_144:                              //  %number
                                        //    in Loop: Header=BB0_8 Depth=2
	or x11, x25, x27
	bltu x0, x11, .LBB0_148
.LBB0_145:                              //  %if.else500
                                        //    in Loop: Header=BB0_8 Depth=2
	bltu x0, x10, .LBB0_161
.LBB0_146:                              //  %if.else500
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x20, 1
	beq x0, x10, .LBB0_161
.LBB0_147:                              //  %if.then507
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 48
	jal x0, .LBB0_170
.LBB0_148:                              //  %if.then431
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x0, x10, .LBB0_162
.LBB0_149:                              //  %if.then431
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x11, x10, 1
	beq x0, x11, .LBB0_152
.LBB0_150:                              //  %if.then431
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x26, 28 ( sp )               //  4-byte Folded Reload
	xor x10, x10, 2
	bltu x0, x10, .LBB0_167
.LBB0_151:                              //  %do.body491
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	and x10, x27, 15
	sll x10, x10, 2&31
	add x10, x10, x9
	lw x10, 0 ( x10 )
	sll x11, x25, 28&31
	srl x25, x25, 4&31
	sw x10, -4 ( x26 )
	srl x10, x27, 4&31
	or x27, x11, x10
	add x26, x26, -4
	or x10, x25, x27
	bltu x0, x10, .LBB0_151
	jal x0, .LBB0_190
.LBB0_161:                              //    in Loop: Header=BB0_8 Depth=2
	lw x26, 28 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_190
.LBB0_86:                               //  %sw.bb211
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x20, 32
	bltu x0, x10, .LBB0_121
.LBB0_87:                               //  %cond.false216
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x20, 16
	bltu x0, x10, .LBB0_125
.LBB0_88:                               //  %cond.false221
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x20, 64
	bltu x0, x10, .LBB0_138
.LBB0_89:                               //  %cond.false228
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	add x11, x10, 4
	sw x11, 568 ( sp )
	lw x27, 0 ( x10 )
	and x11, x20, 512
	beq x11, fp, .LBB0_139
.LBB0_90:                               //  %cond.false228
                                        //    in Loop: Header=BB0_8 Depth=2
	and x27, x27, 255
	jal x0, .LBB0_139
.LBB0_91:                               //  %sw.bb247
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	lw x9, 16 ( sp )                //  4-byte Folded Reload
	lw x22, 68 ( sp )               //  4-byte Folded Reload
	or x20, x20, 2
	add x11, x10, 4
	sw x11, 568 ( sp )
	lw x27, 0 ( x10 )
	add x10, x0, 120
	sw x10, 84 ( sp )
	add x10, x0, 48
	sw x10, 80 ( sp )
	add x10, x0, 2
	mv x25, fp
	sw x0, 564 ( sp )
	blt x26, x22, .LBB0_142
	jal x0, .LBB0_143
.LBB0_92:                               //  %sw.bb339
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x20, 32
	bltu x0, x10, .LBB0_122
.LBB0_93:                               //  %cond.false344
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x20, 16
	bltu x0, x10, .LBB0_126
.LBB0_94:                               //  %cond.false349
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x20, 64
	bltu x0, x10, .LBB0_140
.LBB0_95:                               //  %cond.false356
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	lw x9, 44 ( sp )                //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 568 ( sp )
	lw x27, 0 ( x10 )
	and x11, x20, 512
	beq x11, fp, .LBB0_141
.LBB0_96:                               //  %cond.false356
                                        //    in Loop: Header=BB0_8 Depth=2
	and x27, x27, 255
	jal x0, .LBB0_141
.LBB0_97:                               //  %hex.loopexit1
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x10, %hi( .str )
	add x9, x10, %lo( .str )
	and x10, x20, 32
	bltu x0, x10, .LBB0_82
.LBB0_98:                               //  %cond.false380
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x20, 16
	bltu x0, x10, .LBB0_123
.LBB0_99:                               //  %cond.false385
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x20, 64
	bltu x0, x10, .LBB0_127
.LBB0_100:                              //  %cond.false392
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	add x11, x10, 4
	sw x11, 568 ( sp )
	lw x27, 0 ( x10 )
	and x11, x20, 512
	beq x11, fp, .LBB0_102
.LBB0_101:                              //  %cond.false392
                                        //    in Loop: Header=BB0_8 Depth=2
	and x27, x27, 255
.LBB0_102:                              //  %cond.end405
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x25, fp
	and x10, x20, 1
	bltu x0, x10, .LBB0_83
	jal x0, .LBB0_85
.LBB0_103:                              //    in Loop: Header=BB0_8 Depth=2
	lw x9, 44 ( sp )                //  4-byte Folded Reload
.LBB0_104:                              //  %if.end140
                                        //    in Loop: Header=BB0_8 Depth=2
	seqz x25, x0
	mv x22, fp
	sw x10, 88 ( sp )
	sw x0, 92 ( sp )
	sw x0, 564 ( sp )
	sw fp, 32 ( sp )                //  4-byte Folded Spill
	sw fp, 36 ( sp )                //  4-byte Folded Spill
	mv x10, x25
	add x26, sp, 88
	mv x12, x22
	sw x9, 44 ( sp )                //  4-byte Folded Spill
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	bge x10, x22, .LBB0_191
	jal x0, .LBB0_192
.LBB0_105:                              //  %cond.true145
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	lw x9, 44 ( sp )                //  4-byte Folded Reload
	lw x22, 68 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 568 ( sp )
	add x11, x10, 8
	lw x27, 0 ( x10 )
	sw x11, 568 ( sp )
	lw x25, 4 ( x10 )
	blt x25, x0, .LBB0_118
.LBB0_106:                              //    in Loop: Header=BB0_8 Depth=2
	seqz x10, x0
	blt x26, x22, .LBB0_142
	jal x0, .LBB0_143
.LBB0_107:                              //  %if.end521
                                        //    in Loop: Header=BB0_8 Depth=2
	seqz x25, x0
	sw x22, 88 ( sp )
	mv x22, fp
	mv x10, x25
	add x26, sp, 88
	sw x0, 564 ( sp )
	sw fp, 32 ( sp )                //  4-byte Folded Spill
	sw fp, 36 ( sp )                //  4-byte Folded Spill
	jal x0, .LBB0_137
.LBB0_162:                              //  %do.body434.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	add x26, sp, 484
.LBB0_163:                              //  %do.body434
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sll x11, x25, 29&31
	srl x10, x27, 3&31
	or x11, x11, x10
	and x10, x27, 7
	or x10, x10, 48
	srl x25, x25, 3&31
	sw x10, 0 ( x26 )
	add x26, x26, -4
	or x12, x25, x11
	mv x27, x11
	bltu x0, x12, .LBB0_163
.LBB0_164:                              //  %do.end441
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11, x26, 4
	and x12, x20, 1
	beq x0, x12, .LBB0_189
.LBB0_165:                              //  %do.end441
                                        //    in Loop: Header=BB0_8 Depth=2
	xor x10, x10, 48
	beq x0, x10, .LBB0_189
.LBB0_166:                              //  %if.then447
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 48
	sw x10, 0 ( x26 )
	jal x0, .LBB0_190
.LBB0_167:                              //  %sw.default
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x26, 12 ( sp )               //  4-byte Folded Reload
	mv x10, x26
	jal wcslen
	sw fp, 36 ( sp )                //  4-byte Folded Spill
	sw fp, 32 ( sp )                //  4-byte Folded Spill
	mv x12, x22
	sw x9, 44 ( sp )                //  4-byte Folded Spill
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	bge x10, x22, .LBB0_191
	jal x0, .LBB0_192
.LBB0_108:                              //  %if.then257
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9, 44 ( sp )                //  4-byte Folded Reload
	lw x11, 68 ( sp )               //  4-byte Folded Reload
	add x10, x0, 6
	bltu x11, x10, .LBB0_110
.LBB0_109:                              //  %if.then257
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 6
	mv x11, x10
.LBB0_110:                              //  %if.then257
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x26, 8 ( sp )                //  4-byte Folded Reload
	mv x10, x11
	mv x22, fp
	sw fp, 32 ( sp )                //  4-byte Folded Spill
	sw fp, 36 ( sp )                //  4-byte Folded Spill
	mv x12, x22
	sw x9, 44 ( sp )                //  4-byte Folded Spill
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	bge x10, x22, .LBB0_191
	jal x0, .LBB0_192
.LBB0_111:                              //  %if.else315
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x22, 68 ( sp )               //  4-byte Folded Reload
	blt x22, x0, .LBB0_133
.LBB0_112:                              //  %if.then318
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	mv x11, fp
	mv x12, x22
	jal wmemchr
	beq x0, x10, .LBB0_135
.LBB0_113:                              //  %if.then323
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x10, x10, x9
	sra x10, x10, 2&31
	blt x22, x10, .LBB0_115
.LBB0_114:                              //  %if.then323
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x22, x10
.LBB0_115:                              //  %if.then323
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x22
	jal x0, .LBB0_134
.LBB0_116:                              //  %cond.true150
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	add x11, x10, 4
	sw x11, 568 ( sp )
	lw x27, 0 ( x10 )
.LBB0_117:                              //  %cond.end172
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9, 44 ( sp )                //  4-byte Folded Reload
	lw x22, 68 ( sp )               //  4-byte Folded Reload
	sra x25, x27, 31&31
	bge x25, x0, .LBB0_106
.LBB0_118:                              //  %if.then431.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x26, x22, .LBB0_120
.LBB0_119:                              //    in Loop: Header=BB0_8 Depth=2
	and x20, x20, -129
.LBB0_120:                              //  %if.then431.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x0, 45
	sw x10, 564 ( sp )
	snez x10, x27
	add x10, x10, x25
	sub x27, x0, x27
	sub x25, x0, x10
.LBB0_152:                              //  %sw.bb450
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x25, fp, .LBB0_168
.LBB0_153:                              //  %sw.bb450
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, fp
	bltu x0, x10, .LBB0_169
.LBB0_154:                              //  %do.body458.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x20, 1024
	sw x20, 48 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB0_171
.LBB0_155:                              //  %do.body458.us.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x26, 28 ( sp )               //  4-byte Folded Reload
	mv x20, x9
	jal x0, .LBB0_158
.LBB0_156:                              //  %do.body458.us
                                        //    in Loop: Header=BB0_158 Depth=3
	snez x11, x25
.LBB0_157:                              //  %do.body458.us
                                        //    in Loop: Header=BB0_158 Depth=3
	sub x10, x27, x10
	or x10, x10, 48
	sw x10, -4 ( x26 )
	add x26, x26, -4
	mv x27, x9
	mv x25, x22
	beq x0, x11, .LBB0_186
.LBB0_158:                              //  %do.body458.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	mv x10, x27
	mv x11, x25
	mv x12, x21
	mv x13, fp
	jal __udivdi3
	mv x12, x21
	mv x13, fp
	mv x9, x10
	mv x22, x11
	jal __muldi3
	bne x25, fp, .LBB0_156
.LBB0_159:                              //    in Loop: Header=BB0_158 Depth=3
	add x11, x0, 9
	sltu x11, x11, x27
	jal x0, .LBB0_157
.LBB0_168:                              //    in Loop: Header=BB0_8 Depth=2
	sltiu x10, x27, 10
	beq x0, x10, .LBB0_154
.LBB0_169:                              //  %if.then453
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x27, 48
.LBB0_170:                              //  %if.end510
                                        //    in Loop: Header=BB0_8 Depth=2
	add x26, sp, 484
	sw x10, 484 ( sp )
	jal x0, .LBB0_190
.LBB0_121:                              //  %cond.true214
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	lw x9, 44 ( sp )                //  4-byte Folded Reload
	lw x22, 68 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 568 ( sp )
	add x11, x10, 8
	lw x27, 0 ( x10 )
	sw x11, 568 ( sp )
	lw x25, 4 ( x10 )
	and x20, x20, -1025
	mv x10, fp
	sw x0, 564 ( sp )
	blt x26, x22, .LBB0_142
	jal x0, .LBB0_143
.LBB0_122:                              //  %cond.true342
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	lw x9, 44 ( sp )                //  4-byte Folded Reload
	lw x22, 68 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 568 ( sp )
	add x11, x10, 8
	lw x27, 0 ( x10 )
	sw x11, 568 ( sp )
	lw x25, 4 ( x10 )
	seqz x10, x0
	sw x0, 564 ( sp )
	blt x26, x22, .LBB0_142
	jal x0, .LBB0_143
.LBB0_123:                              //  %cond.true383
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	add x11, x10, 4
	sw x11, 568 ( sp )
	lw x27, 0 ( x10 )
	mv x25, fp
	and x10, x20, 1
	bltu x0, x10, .LBB0_83
	jal x0, .LBB0_85
.LBB0_189:                              //    in Loop: Header=BB0_8 Depth=2
	mv x26, x11
	jal x0, .LBB0_190
.LBB0_171:                              //  %do.body458.preheader5
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x26, 28 ( sp )               //  4-byte Folded Reload
	mv x20, fp
	sw x9, 44 ( sp )                //  4-byte Folded Spill
	jal x0, .LBB0_173
.LBB0_172:                              //  %if.end485
                                        //    in Loop: Header=BB0_173 Depth=3
	snez x10, x25
	mv x27, x9
	mv x25, x22
	beq x0, x10, .LBB0_185
.LBB0_173:                              //  %do.body458
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	mv x10, x27
	mv x11, x25
	mv x12, x21
	mv x13, fp
	jal __udivdi3
	mv x12, x21
	mv x13, fp
	mv x9, x10
	mv x22, x11
	jal __muldi3
	lw x11, 40 ( sp )               //  4-byte Folded Reload
	sub x10, x27, x10
	or x10, x10, 48
	sw x10, -4 ( x26 )
	lb x11, 0 ( x11 )
	add x10, x26, -4
	add x20, x20, 1
	bne x20, x11, .LBB0_177
.LBB0_174:                              //  %land.lhs.true469
                                        //    in Loop: Header=BB0_173 Depth=3
	beq x25, fp, .LBB0_178
.LBB0_175:                              //  %land.lhs.true469
                                        //    in Loop: Header=BB0_173 Depth=3
	mv x12, fp
	bltu x0, x12, .LBB0_177
.LBB0_179:                              //  %land.lhs.true469
                                        //    in Loop: Header=BB0_173 Depth=3
	and x11, x11, 255
	xor x11, x11, 127
	beq x0, x11, .LBB0_177
.LBB0_180:                              //  %if.then476
                                        //    in Loop: Header=BB0_173 Depth=3
	lw x10, 24 ( sp )               //  4-byte Folded Reload
	lw x11, 40 ( sp )               //  4-byte Folded Reload
	sw x10, -8 ( x26 )
	lbu x10, 1 ( x11 )
	beq x10, fp, .LBB0_182
.LBB0_181:                              //  %if.then476
                                        //    in Loop: Header=BB0_173 Depth=3
	add x11, x11, 1
	sw x11, 40 ( sp )               //  4-byte Folded Spill
.LBB0_182:                              //  %if.then476
                                        //    in Loop: Header=BB0_173 Depth=3
	add x26, x26, -8
	mv x20, fp
	bne x25, fp, .LBB0_172
	jal x0, .LBB0_184
.LBB0_178:                              //    in Loop: Header=BB0_173 Depth=3
	sltiu x12, x27, 10
	beq x0, x12, .LBB0_179
.LBB0_177:                              //    in Loop: Header=BB0_173 Depth=3
	mv x26, x10
	bne x25, fp, .LBB0_172
.LBB0_184:                              //    in Loop: Header=BB0_173 Depth=3
	add x10, x0, 9
	sltu x10, x10, x27
	mv x27, x9
	mv x25, x22
	bltu x0, x10, .LBB0_173
.LBB0_185:                              //    in Loop: Header=BB0_8 Depth=2
	lw x9, 44 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB0_187
.LBB0_186:                              //    in Loop: Header=BB0_8 Depth=2
	mv x9, x20
.LBB0_187:                              //  %if.end510
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x20, 48 ( sp )               //  4-byte Folded Reload
	lw x22, 68 ( sp )               //  4-byte Folded Reload
.LBB0_190:                              //  %if.end510
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	sw fp, 36 ( sp )                //  4-byte Folded Spill
	sw fp, 32 ( sp )                //  4-byte Folded Spill
	sub x10, x10, x26
	sra x10, x10, 2&31
	mv x12, x22
	sw x9, 44 ( sp )                //  4-byte Folded Spill
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	blt x10, x22, .LBB0_192
.LBB0_191:                              //  %sw.epilog523
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x12, x10
.LBB0_192:                              //  %sw.epilog523
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 564 ( sp )
	and x22, x20, 2
	sw x10, 48 ( sp )               //  4-byte Folded Spill
	snez x11, x11
	add x9, x11, x12
	srl x11, x22, 1&31
	beq x0, x11, .LBB0_194
.LBB0_193:                              //    in Loop: Header=BB0_8 Depth=2
	add x9, x9, 2
.LBB0_194:                              //  %sw.epilog523
                                        //    in Loop: Header=BB0_8 Depth=2
	and x27, x20, 132
	beq x0, x27, .LBB0_198
.LBB0_195:                              //  %if.end588
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 564 ( sp )
	beq x0, x10, .LBB0_205
.LBB0_196:                              //  %if.then590
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x19 )
	add x10, x10, 4
	sw x10, 8 ( x19 )
	add x10, x0, 4
	sw x10, 4 ( x18 )
	add x10, sp, 564
	sw x10, 0 ( x18 )
	lw x10, 556 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 556 ( sp )
	bltu x0, x10, .LBB0_204
.LBB0_197:                              //  %if.then600
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	lw x11, 56 ( sp )               //  4-byte Folded Reload
	mv x12, x19
	jal __ssprint_r
	add x18, sp, 488
	beq x0, x10, .LBB0_205
	jal x0, .LBB0_263
.LBB0_198:                              //  %if.then542
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x25, x20
	sub x20, x24, x9
	bge x0, x20, .LBB0_250
.LBB0_199:                              //  %while.cond547.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x18 )
	slti x10, x20, 17
	beq x0, x10, .LBB0_202
	jal x0, .LBB0_248
.LBB0_200:                              //    in Loop: Header=BB0_202 Depth=3
	add x18, x18, 8
.LBB0_201:                              //  %if.end566
                                        //    in Loop: Header=BB0_202 Depth=3
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	add x20, x20, -16
	sw x10, 0 ( x18 )
	add x10, x0, 16
	bge x10, x20, .LBB0_248
.LBB0_202:                              //  %while.body550
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	add x10, x10, 64
	sw x10, 8 ( x19 )
	add x10, x0, 64
	sw x10, 4 ( x18 )
	lw x10, 556 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 556 ( sp )
	bltu x0, x10, .LBB0_200
.LBB0_203:                              //  %if.then560
                                        //    in Loop: Header=BB0_202 Depth=3
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	lw x11, 56 ( sp )               //  4-byte Folded Reload
	mv x12, x19
	jal __ssprint_r
	add x18, sp, 488
	beq x0, x10, .LBB0_201
	jal x0, .LBB0_263
.LBB0_204:                              //    in Loop: Header=BB0_8 Depth=2
	add x18, x18, 8
.LBB0_205:                              //  %if.end607
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x0, x22, .LBB0_226
.LBB0_206:                              //  %if.then610
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 8 ( x19 )
	add x10, x10, 8
	sw x10, 8 ( x19 )
	add x10, x0, 8
	sw x10, 4 ( x18 )
	add x10, sp, 80
	sw x10, 0 ( x18 )
	lw x10, 556 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 556 ( sp )
	bltu x0, x10, .LBB0_225
.LBB0_207:                              //  %if.then621
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x22, 60 ( sp )               //  4-byte Folded Reload
	lw x11, 56 ( sp )               //  4-byte Folded Reload
	mv x12, x19
	mv x10, x22
	jal __ssprint_r
	add x18, sp, 488
	bltu x0, x10, .LBB0_265
.LBB0_208:                              //  %if.end628
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x25, x20
	xor x10, x27, 128
	bltu x0, x10, .LBB0_227
.LBB0_209:                              //  %if.then632
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27, 56 ( sp )               //  4-byte Folded Reload
	sub x20, x24, x9
	bge x0, x20, .LBB0_217
.LBB0_210:                              //  %while.cond637.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x18 )
	slti x10, x20, 17
	beq x0, x10, .LBB0_213
	jal x0, .LBB0_215
.LBB0_211:                              //    in Loop: Header=BB0_213 Depth=3
	add x18, x18, 8
.LBB0_212:                              //  %if.end656
                                        //    in Loop: Header=BB0_213 Depth=3
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	add x20, x20, -16
	sw x10, 0 ( x18 )
	add x10, x0, 16
	bge x10, x20, .LBB0_215
.LBB0_213:                              //  %while.body640
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	add x10, x10, 64
	sw x10, 8 ( x19 )
	add x10, x0, 64
	sw x10, 4 ( x18 )
	lw x10, 556 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 556 ( sp )
	bltu x0, x10, .LBB0_211
.LBB0_214:                              //  %if.then650
                                        //    in Loop: Header=BB0_213 Depth=3
	mv x10, x22
	mv x11, x27
	mv x12, x19
	jal __ssprint_r
	add x18, sp, 488
	beq x0, x10, .LBB0_212
	jal x0, .LBB0_253
.LBB0_215:                              //  %while.end658
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x19 )
	sll x10, x20, 2&31
	sw x10, 4 ( x18 )
	add x11, x10, x11
	lw x10, 556 ( sp )
	sw x11, 8 ( x19 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 556 ( sp )
	bltu x0, x10, .LBB0_251
.LBB0_216:                              //  %if.then670
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x22
	mv x11, x27
	mv x12, x19
	jal __ssprint_r
	add x18, sp, 488
	bltu x0, x10, .LBB0_253
.LBB0_217:                              //  %if.end678
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 68 ( sp )               //  4-byte Folded Reload
	lw x11, 48 ( sp )               //  4-byte Folded Reload
	sub x20, x10, x11
	bge x0, x20, .LBB0_229
.LBB0_218:                              //  %while.cond683.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x18 )
	slti x10, x20, 17
	beq x0, x10, .LBB0_221
	jal x0, .LBB0_223
.LBB0_219:                              //    in Loop: Header=BB0_221 Depth=3
	add x18, x18, 8
.LBB0_220:                              //  %if.end702
                                        //    in Loop: Header=BB0_221 Depth=3
	lw x10, 76 ( sp )               //  4-byte Folded Reload
	add x20, x20, -16
	sw x10, 0 ( x18 )
	add x10, x0, 16
	bge x10, x20, .LBB0_223
.LBB0_221:                              //  %while.body686
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	add x10, x10, 64
	sw x10, 8 ( x19 )
	add x10, x0, 64
	sw x10, 4 ( x18 )
	lw x10, 556 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 556 ( sp )
	bltu x0, x10, .LBB0_219
.LBB0_222:                              //  %if.then696
                                        //    in Loop: Header=BB0_221 Depth=3
	mv x10, x22
	mv x11, x27
	mv x12, x19
	jal __ssprint_r
	add x18, sp, 488
	beq x0, x10, .LBB0_220
	jal x0, .LBB0_253
.LBB0_223:                              //  %while.end704
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x19 )
	sll x10, x20, 2&31
	sw x10, 4 ( x18 )
	add x11, x10, x11
	lw x10, 556 ( sp )
	sw x11, 8 ( x19 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 556 ( sp )
	bltu x0, x10, .LBB0_228
.LBB0_224:                              //  %if.then716
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x22
	mv x11, x27
	mv x12, x19
	jal __ssprint_r
	add x18, sp, 488
	beq x0, x10, .LBB0_229
	jal x0, .LBB0_253
.LBB0_225:                              //    in Loop: Header=BB0_8 Depth=2
	add x18, x18, 8
.LBB0_226:                              //  %if.end628
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x22, 60 ( sp )               //  4-byte Folded Reload
	mv x25, x20
	xor x10, x27, 128
	beq x0, x10, .LBB0_209
.LBB0_227:                              //    in Loop: Header=BB0_8 Depth=2
	lw x27, 56 ( sp )               //  4-byte Folded Reload
	lw x10, 68 ( sp )               //  4-byte Folded Reload
	lw x11, 48 ( sp )               //  4-byte Folded Reload
	sub x20, x10, x11
	blt x0, x20, .LBB0_218
	jal x0, .LBB0_229
.LBB0_228:                              //    in Loop: Header=BB0_8 Depth=2
	add x18, x18, 8
.LBB0_229:                              //  %if.end723
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 48 ( sp )               //  4-byte Folded Reload
	lw x11, 8 ( x19 )
	sw x26, 0 ( x18 )
	sll x10, x10, 2&31
	add x11, x10, x11
	sw x10, 4 ( x18 )
	lw x10, 556 ( sp )
	sw x11, 8 ( x19 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 556 ( sp )
	bltu x0, x10, .LBB0_238
.LBB0_230:                              //  %if.then735
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x22
	mv x11, x27
	mv x12, x19
	jal __ssprint_r
	lw x20, 64 ( sp )               //  4-byte Folded Reload
	add x11, sp, 488
	add x26, x0, -1
	bltu x0, x10, .LBB0_254
.LBB0_231:                              //  %if.end741
                                        //    in Loop: Header=BB0_8 Depth=2
	and x10, x25, 4
	beq x0, x10, .LBB0_241
.LBB0_232:                              //  %if.then744
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x18, x24, x9
	bge x0, x18, .LBB0_241
.LBB0_233:                              //  %while.cond749.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x11 )
	slti x10, x18, 17
	beq x0, x10, .LBB0_236
	jal x0, .LBB0_239
.LBB0_234:                              //    in Loop: Header=BB0_236 Depth=3
	add x11, x11, 8
.LBB0_235:                              //  %if.end768
                                        //    in Loop: Header=BB0_236 Depth=3
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	add x18, x18, -16
	sw x10, 0 ( x11 )
	add x10, x0, 16
	bge x10, x18, .LBB0_239
.LBB0_236:                              //  %while.body752
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 8 ( x19 )
	add x10, x10, 64
	sw x10, 8 ( x19 )
	add x10, x0, 64
	sw x10, 4 ( x11 )
	lw x10, 556 ( sp )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 556 ( sp )
	bltu x0, x10, .LBB0_234
.LBB0_237:                              //  %if.then762
                                        //    in Loop: Header=BB0_236 Depth=3
	mv x10, x22
	mv x11, x27
	mv x12, x19
	jal __ssprint_r
	add x11, sp, 488
	beq x0, x10, .LBB0_235
	jal x0, .LBB0_254
.LBB0_238:                              //    in Loop: Header=BB0_8 Depth=2
	lw x20, 64 ( sp )               //  4-byte Folded Reload
	add x11, x18, 8
	add x26, x0, -1
	and x10, x25, 4
	bltu x0, x10, .LBB0_232
	jal x0, .LBB0_241
.LBB0_239:                              //  %while.end770
                                        //    in Loop: Header=BB0_8 Depth=2
	sll x10, x18, 2&31
	sw x10, 4 ( x11 )
	lw x11, 8 ( x19 )
	add x10, x10, x11
	lw x11, 556 ( sp )
	sw x10, 8 ( x19 )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 556 ( sp )
	bltu x0, x11, .LBB0_242
.LBB0_240:                              //  %if.then782
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x22
	mv x11, x27
	mv x12, x19
	jal __ssprint_r
	bltu x0, x10, .LBB0_254
.LBB0_241:                              //  %if.end790thread-pre-split
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 560 ( sp )
.LBB0_242:                              //  %if.end790
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x9, x24, .LBB0_244
.LBB0_243:                              //  %if.end790
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x24, x9
.LBB0_244:                              //  %if.end790
                                        //    in Loop: Header=BB0_8 Depth=2
	add x20, x20, x24
	beq x0, x10, .LBB0_246
.LBB0_245:                              //  %land.lhs.true800
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x22
	mv x11, x27
	mv x12, x19
	jal __ssprint_r
	bltu x0, x10, .LBB0_254
.LBB0_246:                              //  %if.end804
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	sw x0, 556 ( sp )
	beq x0, x10, .LBB0_5
.LBB0_247:                              //  %if.then809
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 32 ( sp )               //  4-byte Folded Reload
	mv x10, x22
	jal _free_r
	add x18, sp, 488
	mv x9, x23
	lw x10, 0 ( x9 )
	bltu x0, x10, .LBB0_6
	jal x0, .LBB0_8
.LBB0_248:                              //  %while.end568
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11, 8 ( x19 )
	sll x10, x20, 2&31
	sw x10, 4 ( x18 )
	add x11, x10, x11
	lw x10, 556 ( sp )
	sw x11, 8 ( x19 )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 556 ( sp )
	bltu x0, x10, .LBB0_252
.LBB0_249:                              //  %if.then580
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	lw x11, 56 ( sp )               //  4-byte Folded Reload
	mv x12, x19
	jal __ssprint_r
	add x18, sp, 488
	mv x20, x25
	beq x0, x10, .LBB0_195
	jal x0, .LBB0_263
.LBB0_250:                              //    in Loop: Header=BB0_8 Depth=2
	mv x20, x25
	lw x10, 564 ( sp )
	bltu x0, x10, .LBB0_196
	jal x0, .LBB0_205
.LBB0_251:                              //    in Loop: Header=BB0_8 Depth=2
	add x18, x18, 8
	lw x10, 68 ( sp )               //  4-byte Folded Reload
	lw x11, 48 ( sp )               //  4-byte Folded Reload
	sub x20, x10, x11
	blt x0, x20, .LBB0_218
	jal x0, .LBB0_229
.LBB0_252:                              //    in Loop: Header=BB0_8 Depth=2
	add x18, x18, 8
	mv x20, x25
	lw x10, 564 ( sp )
	bltu x0, x10, .LBB0_196
	jal x0, .LBB0_205
.LBB0_124:                              //  %cond.true155
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	add x11, x10, 4
	sw x11, 568 ( sp )
	lw x10, 0 ( x10 )
	sll x10, x10, 16&31
	sra x27, x10, 16&31
	lw x9, 44 ( sp )                //  4-byte Folded Reload
	lw x22, 68 ( sp )               //  4-byte Folded Reload
	sra x25, x27, 31&31
	bge x25, x0, .LBB0_106
	jal x0, .LBB0_118
.LBB0_125:                              //  %cond.true219
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	add x11, x10, 4
	sw x11, 568 ( sp )
	lw x27, 0 ( x10 )
	jal x0, .LBB0_139
.LBB0_126:                              //  %cond.true347
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	lw x9, 44 ( sp )                //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 568 ( sp )
	lw x27, 0 ( x10 )
	jal x0, .LBB0_141
.LBB0_127:                              //  %cond.true388
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	add x11, x10, 4
	sw x11, 568 ( sp )
	lhu x27, 0 ( x10 )
	mv x25, fp
	and x10, x20, 1
	bltu x0, x10, .LBB0_83
	jal x0, .LBB0_85
.LBB0_128:                              //  %if.else283
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	jal strlen
	mv x22, x10
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	sltiu x11, x22, 100
	sll x20, x22, 2&31
	beq x0, x11, .LBB0_74
.LBB0_129:                              //  %if.end302
                                        //    in Loop: Header=BB0_8 Depth=2
	add x26, sp, 88
	sw fp, 32 ( sp )                //  4-byte Folded Spill
	sw fp, 36 ( sp )                //  4-byte Folded Spill
	beq x0, x22, .LBB0_132
.LBB0_130:                              //  %for.body.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x26
	mv x11, x22
.LBB0_131:                              //  %for.body
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lb x12, 0 ( x9 )
	add x9, x9, 1
	add x11, x11, -1
	sw x12, 0 ( x10 )
	add x10, x10, 4
	bltu x0, x11, .LBB0_131
.LBB0_132:                              //  %cleanup311.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10, x20, x26
	lw x9, 44 ( sp )                //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	mv x10, x22
	mv x22, fp
	mv x20, x25
	mv x12, x22
	sw x9, 44 ( sp )                //  4-byte Folded Spill
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	bge x10, x22, .LBB0_191
	jal x0, .LBB0_192
.LBB0_133:                              //  %if.else334
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x10, x9
	jal wcslen
.LBB0_134:                              //  %sw.epilog523
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x22, fp
	sw fp, 32 ( sp )                //  4-byte Folded Spill
	sw fp, 36 ( sp )                //  4-byte Folded Spill
	jal x0, .LBB0_136
.LBB0_135:                              //    in Loop: Header=BB0_8 Depth=2
	mv x10, x22
	sw fp, 32 ( sp )                //  4-byte Folded Spill
	sw fp, 36 ( sp )                //  4-byte Folded Spill
	mv x22, fp
.LBB0_136:                              //  %sw.epilog523
                                        //    in Loop: Header=BB0_8 Depth=2
	mv x26, x9
.LBB0_137:                              //  %sw.epilog523
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9, 44 ( sp )                //  4-byte Folded Reload
	mv x12, x22
	sw x9, 44 ( sp )                //  4-byte Folded Spill
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	bge x10, x22, .LBB0_191
	jal x0, .LBB0_192
.LBB0_138:                              //  %cond.true224
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	add x11, x10, 4
	sw x11, 568 ( sp )
	lhu x27, 0 ( x10 )
.LBB0_139:                              //  %cond.false228
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9, 44 ( sp )                //  4-byte Folded Reload
	lw x22, 68 ( sp )               //  4-byte Folded Reload
	mv x25, fp
	and x20, x20, -1025
	mv x10, fp
	sw x0, 564 ( sp )
	blt x26, x22, .LBB0_142
	jal x0, .LBB0_143
.LBB0_140:                              //  %cond.true352
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10, 568 ( sp )
	lw x9, 44 ( sp )                //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 568 ( sp )
	lhu x27, 0 ( x10 )
.LBB0_141:                              //  %cond.false356
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x22, 68 ( sp )               //  4-byte Folded Reload
	seqz x10, x0
	mv x25, fp
	sw x0, 564 ( sp )
	bge x26, x22, .LBB0_143
	jal x0, .LBB0_142
.LBB0_253:
	lw x20, 64 ( sp )               //  4-byte Folded Reload
.LBB0_254:                              //  %error
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_260
.LBB0_255:                              //  %if.then822
	lw x11, 32 ( sp )               //  4-byte Folded Reload
	mv x10, x22
	jal _free_r
	lbu x10, 12 ( x27 )
	mv x11, x0
	and x10, x10, 64
	bne x10, x11, .LBB0_261
	jal x0, .LBB0_262
.LBB0_256:                              //  %done
	lw x10, 560 ( sp )
	beq x0, x10, .LBB0_258
.LBB0_257:                              //  %land.lhs.true813
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	add x12, sp, 552
	mv x11, x27
	jal __ssprint_r
	bltu x0, x10, .LBB0_259
.LBB0_258:                              //  %if.end817
	sw x0, 556 ( sp )
.LBB0_259:                              //  %if.end823
	lw x20, 64 ( sp )               //  4-byte Folded Reload
.LBB0_260:                              //  %if.end823
	lbu x10, 12 ( x27 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB0_262
.LBB0_261:                              //  %if.end823
	add x20, x0, -1
.LBB0_262:                              //  %cleanup833
	mv x10, x20
	lw fp, 572 ( sp )               //  4-byte Folded Reload
	lw x27, 576 ( sp )              //  4-byte Folded Reload
	lw x26, 580 ( sp )              //  4-byte Folded Reload
	lw x25, 584 ( sp )              //  4-byte Folded Reload
	lw x24, 588 ( sp )              //  4-byte Folded Reload
	lw x23, 592 ( sp )              //  4-byte Folded Reload
	lw x22, 596 ( sp )              //  4-byte Folded Reload
	lw x21, 600 ( sp )              //  4-byte Folded Reload
	lw x20, 604 ( sp )              //  4-byte Folded Reload
	lw x19, 608 ( sp )              //  4-byte Folded Reload
	lw x18, 612 ( sp )              //  4-byte Folded Reload
	lw x9, 616 ( sp )               //  4-byte Folded Reload
	lw ra, 620 ( sp )               //  4-byte Folded Reload
	add sp, sp, 624
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_263:
	lw x27, 56 ( sp )               //  4-byte Folded Reload
	lw x20, 64 ( sp )               //  4-byte Folded Reload
	lw x22, 60 ( sp )               //  4-byte Folded Reload
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB0_255
	jal x0, .LBB0_260
.LBB0_264:                              //  %if.then6
	add x10, x0, 12
	add x20, x0, -1
	sw x10, 0 ( x22 )
	jal x0, .LBB0_262
.LBB0_265:
	lw x27, 56 ( sp )               //  4-byte Folded Reload
	lw x20, 64 ( sp )               //  4-byte Folded Reload
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB0_255
	jal x0, .LBB0_260
.LBB0_266:                              //  %cleanup
	lh x10, 12 ( x27 )
	or x10, x10, 64
	sh x10, 12 ( x27 )
	jal x0, .LBB0_259
.Lfunc_end0:
	.size	_svfiwprintf_r, .Lfunc_end0-_svfiwprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_256
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_27
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_29
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_30
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_35
	.long	.LBB0_37
	.long	.LBB0_107
	.long	.LBB0_40
	.long	.LBB0_21
	.long	.LBB0_107
	.long	.LBB0_41
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_64
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_67
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_81
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_64
	.long	.LBB0_76
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_43
	.long	.LBB0_76
	.long	.LBB0_26
	.long	.LBB0_107
	.long	.LBB0_45
	.long	.LBB0_107
	.long	.LBB0_54
	.long	.LBB0_86
	.long	.LBB0_91
	.long	.LBB0_26
	.long	.LBB0_107
	.long	.LBB0_67
	.long	.LBB0_39
	.long	.LBB0_92
	.long	.LBB0_107
	.long	.LBB0_107
	.long	.LBB0_97
	.long	.LBB0_107
	.long	.LBB0_39
                                        //  -- End function
	.address_space	0
	.type	_svfiwprintf_r.blanks,@object //  @_svfiwprintf_r.blanks
	.p2align	2
_svfiwprintf_r.blanks:
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
	.size	_svfiwprintf_r.blanks, 64

	.address_space	0
	.type	_svfiwprintf_r.zeroes,@object //  @_svfiwprintf_r.zeroes
	.p2align	2
_svfiwprintf_r.zeroes:
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
	.size	_svfiwprintf_r.zeroes, 64

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2
.str:
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
	.size	.str, 68

	.address_space	0
	.type	.str.1,@object          //  @.str.1
	.p2align	2
.str.1:
	.long	40                      //  0x28
	.long	110                     //  0x6e
	.long	117                     //  0x75
	.long	108                     //  0x6c
	.long	108                     //  0x6c
	.long	41                      //  0x29
	.long	0                       //  0x0
	.size	.str.1, 28

	.address_space	0
	.type	.str.2,@object          //  @.str.2
	.p2align	2
.str.2:
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
	.size	.str.2, 68

	.address_space	0
	.type	.str.3,@object          //  @.str.3
	.p2align	2
.str.3:
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
	.size	.str.3, 104


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
