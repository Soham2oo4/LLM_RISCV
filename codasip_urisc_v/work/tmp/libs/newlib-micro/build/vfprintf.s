	.text
	.file	"vfprintf.c"
	.globl	__ssputs_r              //  -- Begin function __ssputs_r
	.type	__ssputs_r,@function
__ssputs_r:                             //  @__ssputs_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x11
	lw x10, 8 ( fp )
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x13
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x9, x10, .LBB0_2
.LBB0_1:                                //  %entry
	mv x9, x10
.LBB0_2:                                //  %entry
	lw x10, 0 ( fp )
	mv x11, x12
	mv x12, x9
	jal memmove
	lw x10, 8 ( fp )
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	sub x10, x10, x9
	sw x10, 8 ( fp )
	lw x10, 0 ( fp )
	add x10, x9, x10
	sw x10, 0 ( fp )
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	mv x10, x0
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__ssputs_r, .Lfunc_end0-__ssputs_r
	.cfi_endproc
                                        //  -- End function
	.globl	__ssprint_r             //  -- Begin function __ssprint_r
	.type	__ssprint_r,@function
__ssprint_r:                            //  @__ssprint_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x12
	lw x10, 8 ( fp )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	beq x0, x10, .LBB1_8
.LBB1_1:                                //  %do.body.preheader
	lw x10, 0 ( fp )
	add x19, x10, 4
	lw x20, 0 ( x19 )
	bltu x0, x20, .LBB1_4
	jal x0, .LBB1_3
.LBB1_6:                                //  %while.end
	lw x11, -4 ( x19 )
	lw x10, 0 ( x9 )
	mv x12, x18
	jal memmove
	lw x10, 8 ( x9 )
	sub x10, x10, x18
	sw x10, 8 ( x9 )
	lw x10, 0 ( x9 )
	add x10, x18, x10
	sw x10, 0 ( x9 )
	lw x10, 8 ( fp )
	sub x10, x10, x20
	sw x10, 8 ( fp )
	beq x0, x10, .LBB1_7
.LBB1_3:                                //  %while.body.backedge
                                        //  =>This Inner Loop Header: Depth=1
	add x19, x19, 8
	lw x20, 0 ( x19 )
	beq x0, x20, .LBB1_3
.LBB1_4:                                //  %while.end
	lw x10, 8 ( x9 )
	mv x18, x20
	bltu x20, x10, .LBB1_6
.LBB1_5:                                //  %while.end
	mv x18, x10
	jal x0, .LBB1_6
.LBB1_7:                                //  %do.end
	sw x0, 8 ( fp )
.LBB1_8:                                //  %cleanup
	sw x0, 4 ( fp )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	mv x10, x0
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	__ssprint_r, .Lfunc_end1-__ssprint_r
	.cfi_endproc
                                        //  -- End function
	.globl	_svfiprintf_r           //  -- Begin function _svfiprintf_r
	.type	_svfiprintf_r,@function
_svfiprintf_r:                          //  @_svfiprintf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -176
	.cfi_adjust_cfa_offset 176
	add x10, sp, 79
	add x10, x10, 40
	sw x10, 40 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _svfiprintf_r.blanks )
	sw fp, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	add fp, x10, %lo( _svfiprintf_r.blanks )
	lui x10, %hi( _svfiprintf_r.zeroes )
	add x10, x10, %lo( _svfiprintf_r.zeroes )
	sw x10, 72 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( JTI2_0 )
	add x10, x10, %lo( JTI2_0 )
	sw x10, 52 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( .str.3 )
	add x10, x10, %lo( .str.3 )
	sw x10, 32 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 65535 )
	add x10, x10, %lo( 65535 )
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( .str.2 )
	add x10, x10, %lo( .str.2 )
	sw x10, 28 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	sw x22, 148 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	mv x22, x0
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( .str.1 )
	sw x9, 168 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 160 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 156 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x25, 136 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 132 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 128 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	add x10, x10, %lo( .str.1 )
	sw x23, 144 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	mv x25, x12
	mv x9, x11
	mv x23, x22
	add x27, x0, -1
	add x19, x0, 10
	add x26, x0, 120
	add x20, x0, 16
	sw ra, 172 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 164 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21, 152 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x24, 140 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x13, 120 ( sp )
	sw x10, 16 ( sp )               //  4-byte Folded Spill
	sw x22, 44 ( sp )               //  4-byte Folded Spill
	sw fp, 56 ( sp )                //  4-byte Folded Spill
	mv x18, x25
	lbu x10, 0 ( x18 )
	beq x0, x10, .LBB2_4
.LBB2_2:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	xor x11, x10, 37
	beq x0, x11, .LBB2_4
.LBB2_3:                                //  %while.body
                                        //    in Loop: Header=BB2_2 Depth=1
	add x18, x18, 1
	lbu x10, 0 ( x18 )
	bltu x0, x10, .LBB2_2
.LBB2_4:                                //  %while.end
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB2_10 Depth 2
                                        //        Child Loop BB2_11 Depth 3
                                        //          Child Loop BB2_14 Depth 4
                                        //            Child Loop BB2_18 Depth 5
                                        //          Child Loop BB2_13 Depth 4
                                        //      Child Loop BB2_99 Depth 2
                                        //      Child Loop BB2_163 Depth 2
                                        //      Child Loop BB2_105 Depth 2
                                        //      Child Loop BB2_156 Depth 2
                                        //      Child Loop BB2_150 Depth 2
                                        //      Child Loop BB2_147 Depth 2
                                        //      Child Loop BB2_153 Depth 2
	sub x21, x18, x25
	beq x0, x21, .LBB2_8
.LBB2_5:                                //  %if.then
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 8 ( x9 )
	mv fp, x21
	bltu x21, x10, .LBB2_7
.LBB2_6:                                //  %if.then
                                        //    in Loop: Header=BB2_4 Depth=1
	mv fp, x10
.LBB2_7:                                //  %if.then
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 0 ( x9 )
	mv x11, x25
	mv x12, fp
	jal memmove
	lw x10, 8 ( x9 )
	add x23, x23, x21
	sub x10, x10, fp
	sw x10, 8 ( x9 )
	lw x10, 0 ( x9 )
	add x10, fp, x10
	sw x10, 0 ( x9 )
	lbu x10, 0 ( x18 )
	lw fp, 56 ( sp )                //  4-byte Folded Reload
.LBB2_8:                                //  %if.end10
                                        //    in Loop: Header=BB2_4 Depth=1
	beq x0, x10, .LBB2_175
.LBB2_9:                                //  %if.end15
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x21, x22
	add x12, x18, 1
	mv x10, x22
	mv x14, x27
	mv x24, x22
	sb x0, 119 ( sp )
.LBB2_10:                               //  %rflag
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_11 Depth 3
                                        //          Child Loop BB2_14 Depth 4
                                        //            Child Loop BB2_18 Depth 5
                                        //          Child Loop BB2_13 Depth 4
	lb x11, 0 ( x12 )
	add x25, x12, 1
.LBB2_11:                               //  %reswitch
                                        //    Parent Loop BB2_4 Depth=1
                                        //      Parent Loop BB2_10 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB2_14 Depth 4
                                        //            Child Loop BB2_18 Depth 5
                                        //          Child Loop BB2_13 Depth 4
	add x12, x11, -49
	sltiu x12, x12, 9
	beq x0, x12, .LBB2_14
.LBB2_12:                               //  %do.body.preheader
                                        //    in Loop: Header=BB2_11 Depth=3
	mv x24, x22
.LBB2_13:                               //  %do.body
                                        //    Parent Loop BB2_4 Depth=1
                                        //      Parent Loop BB2_10 Depth=2
                                        //        Parent Loop BB2_11 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	hackaton_custom_instr_c x12, x19, x24
	add x11, x12, x11
	add x24, x11, -48
	lb x11, 0 ( x25 )
	add x25, x25, 1
	add x12, x11, -48
	sltiu x12, x12, 10
	bltu x0, x12, .LBB2_13
	jal x0, .LBB2_11
.LBB2_14:                               //  %reswitch
                                        //    Parent Loop BB2_4 Depth=1
                                        //      Parent Loop BB2_10 Depth=2
                                        //        Parent Loop BB2_11 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB2_18 Depth 5
	bltu x26, x11, .LBB2_76
.LBB2_15:                               //  %reswitch
                                        //    in Loop: Header=BB2_14 Depth=4
	lw x13, 52 ( sp )               //  4-byte Folded Reload
	sll x12, x11, 2&31
	add x12, x13, x12
	lw x12, 0 ( x12 )
	jr x12
.LBB2_16:                               //  %sw.bb29
                                        //    in Loop: Header=BB2_14 Depth=4
	lb x11, 0 ( x25 )
	add x12, x25, 1
	xor x13, x11, 42
	beq x0, x13, .LBB2_35
.LBB2_17:                               //  %while.cond41.preheader
                                        //    in Loop: Header=BB2_14 Depth=4
	mv x25, x12
	add x13, x11, -48
	mv x12, x22
	add x14, x0, 9
	bltu x14, x13, .LBB2_20
.LBB2_18:                               //  %while.body45
                                        //    Parent Loop BB2_4 Depth=1
                                        //      Parent Loop BB2_10 Depth=2
                                        //        Parent Loop BB2_11 Depth=3
                                        //          Parent Loop BB2_14 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	hackaton_custom_instr_c x11, x19, x12
	add x12, x11, x13
	lb x11, 0 ( x25 )
	add x25, x25, 1
	add x13, x11, -48
	sltiu x14, x13, 10
	bltu x0, x14, .LBB2_18
.LBB2_19:                               //  %while.end50
                                        //    in Loop: Header=BB2_14 Depth=4
	mv x14, x27
	blt x12, x0, .LBB2_11
.LBB2_20:                               //  %while.end50.thread
                                        //    in Loop: Header=BB2_14 Depth=4
	mv x14, x12
	add x12, x11, -49
	sltiu x12, x12, 9
	bltu x0, x12, .LBB2_12
	jal x0, .LBB2_14
.LBB2_21:                               //  %sw.bb
                                        //    in Loop: Header=BB2_10 Depth=2
	and x11, x10, 255
	mv x12, x25
	bltu x0, x11, .LBB2_10
.LBB2_22:                               //  %if.then18
                                        //    in Loop: Header=BB2_10 Depth=2
	add x10, x0, 32
	jal x0, .LBB2_28
.LBB2_23:                               //  %sw.bb20
                                        //    in Loop: Header=BB2_10 Depth=2
	or x21, x21, 1
	mv x12, x25
	jal x0, .LBB2_10
.LBB2_24:                               //  %sw.bb21
                                        //    in Loop: Header=BB2_10 Depth=2
	lw x11, 120 ( sp )
	add x12, x11, 4
	sw x12, 120 ( sp )
	lw x24, 0 ( x11 )
	mv x12, x25
	bge x24, x0, .LBB2_10
.LBB2_25:                               //  %if.end25
                                        //    in Loop: Header=BB2_10 Depth=2
	sub x24, x0, x24
.LBB2_26:                               //  %sw.bb26.loopexit
                                        //    in Loop: Header=BB2_10 Depth=2
	or x21, x21, 4
	mv x12, x25
	jal x0, .LBB2_10
.LBB2_27:                               //  %sw.bb28
                                        //    in Loop: Header=BB2_10 Depth=2
	add x10, x0, 43
.LBB2_28:                               //  %rflag
                                        //    in Loop: Header=BB2_10 Depth=2
	sb x10, 119 ( sp )
	mv x12, x25
	jal x0, .LBB2_10
.LBB2_29:                               //  %sw.bb53
                                        //    in Loop: Header=BB2_10 Depth=2
	or x21, x21, 128
	mv x12, x25
	jal x0, .LBB2_10
.LBB2_30:                               //  %sw.bb64
                                        //    in Loop: Header=BB2_10 Depth=2
	or x21, x21, 64
	mv x12, x25
	jal x0, .LBB2_10
.LBB2_31:                               //  %sw.bb66
                                        //    in Loop: Header=BB2_10 Depth=2
	lbu x11, 0 ( x25 )
	add x12, x0, 108
	beq x11, x12, .LBB2_34
.LBB2_32:                               //  %sw.bb66
                                        //    in Loop: Header=BB2_10 Depth=2
	mv x11, x20
	mv x12, x25
	or x21, x21, x11
	jal x0, .LBB2_10
.LBB2_33:                               //  %sw.bb75
                                        //    in Loop: Header=BB2_10 Depth=2
	or x21, x21, 32
	mv x12, x25
	jal x0, .LBB2_10
.LBB2_34:                               //    in Loop: Header=BB2_10 Depth=2
	add x11, x0, 32
	add x12, x25, 1
	or x21, x21, x11
	jal x0, .LBB2_10
.LBB2_35:                               //  %if.then34
                                        //    in Loop: Header=BB2_10 Depth=2
	lw x11, 120 ( sp )
	add x13, x11, 4
	sw x13, 120 ( sp )
	lw x14, 0 ( x11 )
	blt x27, x14, .LBB2_10
.LBB2_36:                               //  %if.then34
                                        //    in Loop: Header=BB2_10 Depth=2
	mv x14, x27
	jal x0, .LBB2_10
.LBB2_37:                               //  %sw.bb80
                                        //    in Loop: Header=BB2_4 Depth=1
	or x21, x21, 16
.LBB2_38:                               //  %sw.bb82
                                        //    in Loop: Header=BB2_4 Depth=1
	and x10, x21, 32
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB2_42
.LBB2_39:                               //  %cond.false86
                                        //    in Loop: Header=BB2_4 Depth=1
	and x10, x21, 16
	bltu x0, x10, .LBB2_78
.LBB2_40:                               //  %cond.false91
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 120 ( sp )
	lw x23, 44 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 120 ( sp )
	lw x26, 0 ( x10 )
	and x10, x21, 64
	beq x0, x10, .LBB2_79
.LBB2_41:                               //  %cond.true94
                                        //    in Loop: Header=BB2_4 Depth=1
	sll x10, x26, 16&31
	sra x26, x10, 16&31
	sra x18, x26, 31&31
	bge x18, x0, .LBB2_43
	jal x0, .LBB2_80
.LBB2_42:                               //  %cond.true84
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 120 ( sp )
	lw x23, 44 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 120 ( sp )
	add x11, x10, 8
	lw x26, 0 ( x10 )
	sw x11, 120 ( sp )
	lw x18, 4 ( x10 )
	blt x18, x0, .LBB2_80
.LBB2_43:                               //    in Loop: Header=BB2_4 Depth=1
	seqz x10, x0
	blt x27, x14, .LBB2_90
	jal x0, .LBB2_91
.LBB2_44:                               //  %sw.bb143
                                        //    in Loop: Header=BB2_4 Depth=1
	or x21, x21, 16
.LBB2_45:                               //  %sw.bb145
                                        //    in Loop: Header=BB2_4 Depth=1
	and x10, x21, 32
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB2_74
.LBB2_46:                               //  %cond.false150
                                        //    in Loop: Header=BB2_4 Depth=1
	and x10, x21, 16
	bltu x0, x10, .LBB2_83
.LBB2_47:                               //  %cond.false155
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 120 ( sp )
	add x11, x10, 4
	sw x11, 120 ( sp )
	lw x26, 0 ( x10 )
	and x10, x21, 64
	beq x10, x22, .LBB2_84
.LBB2_48:                               //  %cond.false155
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	and x26, x10, x26
	jal x0, .LBB2_84
.LBB2_49:                               //  %sw.bb213
                                        //    in Loop: Header=BB2_4 Depth=1
	or x21, x21, 16
.LBB2_50:                               //  %sw.bb215
                                        //    in Loop: Header=BB2_4 Depth=1
	and x10, x21, 32
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB2_75
.LBB2_51:                               //  %cond.false220
                                        //    in Loop: Header=BB2_4 Depth=1
	and x10, x21, 16
	bltu x0, x10, .LBB2_85
.LBB2_52:                               //  %cond.false225
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 120 ( sp )
	add x11, x10, 4
	sw x11, 120 ( sp )
	lw x26, 0 ( x10 )
	and x10, x21, 64
	beq x10, x22, .LBB2_86
.LBB2_53:                               //  %cond.false225
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	and x26, x10, x26
	jal x0, .LBB2_86
.LBB2_54:                               //  %hex.loopexit
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x13, 28 ( sp )               //  4-byte Folded Reload
	add x10, x0, 88
	and x11, x21, 32
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	beq x0, x11, .LBB2_70
.LBB2_55:                               //  %cond.true254
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x11, 120 ( sp )
	mv x23, x13
	add x12, x11, 4
	sw x12, 120 ( sp )
	add x12, x11, 8
	lw x26, 0 ( x11 )
	sw x12, 120 ( sp )
	lw x18, 4 ( x11 )
	and x11, x21, 1
	beq x0, x11, .LBB2_89
.LBB2_56:                               //  %cond.end284
                                        //    in Loop: Header=BB2_4 Depth=1
	or x11, x18, x26
	beq x0, x11, .LBB2_89
.LBB2_57:                               //  %if.then290
                                        //    in Loop: Header=BB2_4 Depth=1
	sb x10, 78 ( sp )
	add x10, x0, 48
	or x21, x21, 2
	sb x10, 77 ( sp )
	add x10, x0, 2
	sb x0, 119 ( sp )
	blt x27, x14, .LBB2_90
	jal x0, .LBB2_91
.LBB2_58:                               //  %sw.bb77
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 120 ( sp )
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	add x11, x10, 4
	sw x11, 120 ( sp )
	lw x10, 0 ( x10 )
	sb x10, 79 ( sp )
	jal x0, .LBB2_77
.LBB2_59:                               //  %sw.bb121
                                        //    in Loop: Header=BB2_4 Depth=1
	and x10, x21, 32
	bltu x0, x10, .LBB2_87
.LBB2_60:                               //  %if.else127
                                        //    in Loop: Header=BB2_4 Depth=1
	and x10, x21, 16
	bltu x0, x10, .LBB2_62
.LBB2_61:                               //  %if.else132
                                        //    in Loop: Header=BB2_4 Depth=1
	and x10, x21, 64
	bltu x0, x10, .LBB2_174
.LBB2_62:                               //  %if.then130
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 120 ( sp )
	add x11, x10, 4
	sw x11, 120 ( sp )
	lw x10, 0 ( x10 )
	sw x23, 0 ( x10 )
	mv x18, x25
	lbu x10, 0 ( x18 )
	bltu x0, x10, .LBB2_2
	jal x0, .LBB2_4
.LBB2_63:                               //  %sw.bb180
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 120 ( sp )
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	lw x23, 24 ( sp )               //  4-byte Folded Reload
	or x21, x21, 2
	add x11, x10, 4
	sw x11, 120 ( sp )
	mv x11, x26
	lw x26, 0 ( x10 )
	add x10, x0, 48
	sb x10, 77 ( sp )
	sb x11, 78 ( sp )
	add x10, x0, 2
	mv x18, x22
	sb x0, 119 ( sp )
	blt x27, x14, .LBB2_90
	jal x0, .LBB2_91
.LBB2_64:                               //  %sw.bb185
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 120 ( sp )
	add x11, x10, 4
	sw x11, 120 ( sp )
	lw x27, 0 ( x10 )
	sb x0, 119 ( sp )
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	beq x0, x27, .LBB2_168
.LBB2_65:                               //  %if.else196
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x10, x27
	blt x14, x0, .LBB2_173
.LBB2_66:                               //  %if.then199
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x11, x22
	mv x12, x14
	mv x26, x14
	jal memchr
	beq x10, x22, .LBB2_68
.LBB2_67:                               //  %if.then199
                                        //    in Loop: Header=BB2_4 Depth=1
	sub x26, x10, x27
.LBB2_68:                               //  %if.then199
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x14, x22
	lw x23, 44 ( sp )               //  4-byte Folded Reload
	mv x11, x14
	bge x26, x14, .LBB2_111
	jal x0, .LBB2_112
.LBB2_69:                               //  %hex.loopexit1
                                        //    in Loop: Header=BB2_4 Depth=1
	lui x10, %hi( .str )
	add x13, x10, %lo( .str )
	mv x10, x26
	and x11, x21, 32
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	bltu x0, x11, .LBB2_55
.LBB2_70:                               //  %cond.false256
                                        //    in Loop: Header=BB2_4 Depth=1
	and x11, x21, 16
	bltu x0, x11, .LBB2_88
.LBB2_71:                               //  %cond.false261
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x11, 120 ( sp )
	mv x23, x13
	add x12, x11, 4
	sw x12, 120 ( sp )
	lw x26, 0 ( x11 )
	and x11, x21, 64
	beq x11, x22, .LBB2_73
.LBB2_72:                               //  %cond.false261
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x11, 20 ( sp )               //  4-byte Folded Reload
	and x26, x11, x26
.LBB2_73:                               //  %cond.end281
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x18, x22
	and x11, x21, 1
	bltu x0, x11, .LBB2_56
.LBB2_89:                               //  %nosign
                                        //    in Loop: Header=BB2_4 Depth=1
	add x10, x0, 2
	sb x0, 119 ( sp )
	bge x27, x14, .LBB2_91
.LBB2_90:                               //    in Loop: Header=BB2_4 Depth=1
	and x21, x21, -129
.LBB2_91:                               //  %number
                                        //    in Loop: Header=BB2_4 Depth=1
	bltu x0, x14, .LBB2_96
.LBB2_92:                               //  %number
                                        //    in Loop: Header=BB2_4 Depth=1
	or x11, x18, x26
	bltu x0, x11, .LBB2_96
.LBB2_93:                               //  %if.else352
                                        //    in Loop: Header=BB2_4 Depth=1
	bltu x0, x10, .LBB2_161
.LBB2_94:                               //  %if.else352
                                        //    in Loop: Header=BB2_4 Depth=1
	and x10, x21, 1
	beq x0, x10, .LBB2_161
.LBB2_95:                               //  %if.then358
                                        //    in Loop: Header=BB2_4 Depth=1
	add x10, x0, 48
	jal x0, .LBB2_109
.LBB2_96:                               //  %if.then307
                                        //    in Loop: Header=BB2_4 Depth=1
	beq x0, x10, .LBB2_162
.LBB2_97:                               //  %if.then307
                                        //    in Loop: Header=BB2_4 Depth=1
	xor x11, x10, 1
	beq x0, x11, .LBB2_100
.LBB2_98:                               //  %if.then307
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x27, 40 ( sp )               //  4-byte Folded Reload
	xor x10, x10, 2
	bltu x0, x10, .LBB2_167
.LBB2_99:                               //  %do.body343
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	and x10, x26, 15
	add x10, x10, x23
	lb x10, 0 ( x10 )
	sll x11, x18, 28&31
	srl x18, x18, 4&31
	sb x10, -1 ( x27 )
	srl x10, x26, 4&31
	or x26, x11, x10
	add x27, x27, -1
	or x10, x18, x26
	bltu x0, x10, .LBB2_99
	jal x0, .LBB2_110
.LBB2_161:                              //    in Loop: Header=BB2_4 Depth=1
	lw x27, 40 ( sp )               //  4-byte Folded Reload
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	sub x26, x10, x27
	mv x11, x14
	bge x26, x14, .LBB2_111
	jal x0, .LBB2_112
.LBB2_162:                              //  %do.body309.preheader
                                        //    in Loop: Header=BB2_4 Depth=1
	add x27, sp, 118
.LBB2_163:                              //  %do.body309
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sll x11, x18, 29&31
	srl x10, x26, 3&31
	or x11, x11, x10
	and x10, x26, 7
	or x10, x10, 48
	srl x18, x18, 3&31
	sb x10, 0 ( x27 )
	add x27, x27, -1
	or x12, x18, x11
	mv x26, x11
	bltu x0, x12, .LBB2_163
.LBB2_164:                              //  %do.end316
                                        //    in Loop: Header=BB2_4 Depth=1
	add x11, x27, 1
	and x12, x21, 1
	beq x0, x12, .LBB2_172
.LBB2_165:                              //  %do.end316
                                        //    in Loop: Header=BB2_4 Depth=1
	xor x10, x10, 48
	beq x0, x10, .LBB2_172
.LBB2_166:                              //  %if.then323
                                        //    in Loop: Header=BB2_4 Depth=1
	add x10, x0, 48
	sb x10, 0 ( x27 )
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	sub x26, x10, x27
	mv x11, x14
	bge x26, x14, .LBB2_111
	jal x0, .LBB2_112
.LBB2_167:                              //  %sw.default
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x27, 32 ( sp )               //  4-byte Folded Reload
	mv x18, x14
	mv x10, x27
	jal strlen
	mv x14, x18
	mv x26, x10
	mv x11, x14
	bge x26, x14, .LBB2_111
	jal x0, .LBB2_112
.LBB2_74:                               //  %cond.true148
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 120 ( sp )
	lw x23, 44 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 120 ( sp )
	add x11, x10, 8
	lw x26, 0 ( x10 )
	sw x11, 120 ( sp )
	lw x18, 4 ( x10 )
	mv x10, x22
	sb x0, 119 ( sp )
	blt x27, x14, .LBB2_90
	jal x0, .LBB2_91
.LBB2_75:                               //  %cond.true218
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 120 ( sp )
	lw x23, 44 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 120 ( sp )
	add x11, x10, 8
	lw x26, 0 ( x10 )
	sw x11, 120 ( sp )
	lw x18, 4 ( x10 )
	seqz x10, x0
	sb x0, 119 ( sp )
	blt x27, x14, .LBB2_90
	jal x0, .LBB2_91
.LBB2_76:                               //  %if.end371
                                        //    in Loop: Header=BB2_4 Depth=1
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	sb x11, 79 ( sp )
.LBB2_77:                               //  %sw.epilog374
                                        //    in Loop: Header=BB2_4 Depth=1
	seqz x26, x0
	mv x14, x22
	add x27, sp, 79
	sb x0, 119 ( sp )
	lw x23, 44 ( sp )               //  4-byte Folded Reload
	mv x11, x14
	bge x26, x14, .LBB2_111
	jal x0, .LBB2_112
.LBB2_78:                               //  %cond.true89
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 120 ( sp )
	lw x23, 44 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 120 ( sp )
	lw x26, 0 ( x10 )
.LBB2_79:                               //  %cond.end111
                                        //    in Loop: Header=BB2_4 Depth=1
	sra x18, x26, 31&31
	bge x18, x0, .LBB2_43
.LBB2_80:                               //  %if.then307.thread
                                        //    in Loop: Header=BB2_4 Depth=1
	bge x27, x14, .LBB2_82
.LBB2_81:                               //    in Loop: Header=BB2_4 Depth=1
	and x21, x21, -129
.LBB2_82:                               //  %if.then307.thread
                                        //    in Loop: Header=BB2_4 Depth=1
	add x10, x0, 45
	sb x10, 119 ( sp )
	snez x10, x26
	add x10, x10, x18
	sub x26, x0, x26
	sub x18, x0, x10
.LBB2_100:                              //  %sw.bb326
                                        //    in Loop: Header=BB2_4 Depth=1
	beq x18, x22, .LBB2_107
.LBB2_101:                              //  %sw.bb326
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x10, x22
	bltu x0, x10, .LBB2_108
.LBB2_102:                              //    in Loop: Header=BB2_4 Depth=1
	lw x27, 40 ( sp )               //  4-byte Folded Reload
	sw x21, 68 ( sp )               //  4-byte Folded Spill
	mv x21, x23
	sw x14, 60 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB2_105
.LBB2_103:                              //  %do.body334
                                        //    in Loop: Header=BB2_105 Depth=2
	snez x11, x18
.LBB2_104:                              //  %do.body334
                                        //    in Loop: Header=BB2_105 Depth=2
	sub x10, x26, x10
	or x10, x10, 48
	sb x10, -1 ( x27 )
	add x27, x27, -1
	mv x26, x23
	mv x18, fp
	beq x0, x11, .LBB2_159
.LBB2_105:                              //  %do.body334
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x10, x26
	mv x11, x18
	mv x12, x19
	mv x13, x22
	jal __udivdi3
	mv x12, x19
	mv x13, x22
	mv x23, x10
	mv fp, x11
	jal __muldi3
	bne x18, x22, .LBB2_103
.LBB2_106:                              //    in Loop: Header=BB2_105 Depth=2
	add x11, x0, 9
	sltu x11, x11, x26
	jal x0, .LBB2_104
.LBB2_107:                              //    in Loop: Header=BB2_4 Depth=1
	sltiu x10, x26, 10
	beq x0, x10, .LBB2_102
.LBB2_108:                              //  %if.then329
                                        //    in Loop: Header=BB2_4 Depth=1
	add x10, x26, 48
.LBB2_109:                              //  %if.end361
                                        //    in Loop: Header=BB2_4 Depth=1
	add x27, sp, 118
	sb x10, 118 ( sp )
.LBB2_110:                              //  %if.end361
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	sub x26, x10, x27
	mv x11, x14
	blt x26, x14, .LBB2_112
.LBB2_111:                              //  %sw.epilog374
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x11, x26
.LBB2_112:                              //  %sw.epilog374
                                        //    in Loop: Header=BB2_4 Depth=1
	lbu x10, 119 ( sp )
	sw x21, 68 ( sp )               //  4-byte Folded Spill
	and x21, x21, 2
	snez x12, x10
	add x12, x12, x11
	srl x11, x21, 1&31
	beq x0, x11, .LBB2_114
.LBB2_113:                              //    in Loop: Header=BB2_4 Depth=1
	add x12, x12, 2
.LBB2_114:                              //  %sw.epilog374
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x11, 68 ( sp )               //  4-byte Folded Reload
	sw x23, 44 ( sp )               //  4-byte Folded Spill
	sw x14, 60 ( sp )               //  4-byte Folded Spill
	sw x12, 64 ( sp )               //  4-byte Folded Spill
	and x18, x11, 132
	bltu x0, x18, .LBB2_120
.LBB2_115:                              //  %if.then392
                                        //    in Loop: Header=BB2_4 Depth=1
	sub x23, x24, x12
	bge x0, x23, .LBB2_120
.LBB2_116:                              //  %while.cond397.preheader
                                        //    in Loop: Header=BB2_4 Depth=1
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	lw x10, 0 ( x9 )
	lw x18, 8 ( x9 )
	slti x11, x23, 17
	beq x0, x11, .LBB2_156
.LBB2_117:                              //  %while.end407
                                        //    in Loop: Header=BB2_4 Depth=1
	bltu x23, x18, .LBB2_119
.LBB2_118:                              //  %while.end407
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x23, x18
.LBB2_119:                              //  %while.end407
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x11, fp
	mv x12, x23
	jal memmove
	lw x10, 8 ( x9 )
	lw x14, 60 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	sub x10, x10, x23
	sw x10, 8 ( x9 )
	lw x10, 0 ( x9 )
	add x10, x23, x10
	sw x10, 0 ( x9 )
	lbu x10, 119 ( sp )
.LBB2_120:                              //  %if.end414
                                        //    in Loop: Header=BB2_4 Depth=1
	beq x0, x10, .LBB2_122
.LBB2_121:                              //  %if.then416
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x11, 8 ( x9 )
	lw x10, 0 ( x9 )
	snez fp, x11
	add x11, sp, 119
	mv x12, fp
	jal memmove
	lw x10, 8 ( x9 )
	lw x14, 60 ( sp )               //  4-byte Folded Reload
	sub x10, x10, fp
	sw x10, 8 ( x9 )
	lw x10, 0 ( x9 )
	add x10, fp, x10
	lw fp, 56 ( sp )                //  4-byte Folded Reload
	sw x10, 0 ( x9 )
.LBB2_122:                              //  %if.end422
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x23, 72 ( sp )               //  4-byte Folded Reload
	beq x0, x21, .LBB2_126
.LBB2_123:                              //  %if.then425
                                        //    in Loop: Header=BB2_4 Depth=1
	lw fp, 8 ( x9 )
	add x10, x0, 2
	bltu fp, x10, .LBB2_125
.LBB2_124:                              //  %if.then425
                                        //    in Loop: Header=BB2_4 Depth=1
	add fp, x0, 2
.LBB2_125:                              //  %if.then425
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 0 ( x9 )
	add x11, sp, 77
	mv x12, fp
	jal memmove
	lw x10, 8 ( x9 )
	lw x14, 60 ( sp )               //  4-byte Folded Reload
	sub x10, x10, fp
	sw x10, 8 ( x9 )
	lw x10, 0 ( x9 )
	add x10, fp, x10
	lw fp, 56 ( sp )                //  4-byte Folded Reload
	sw x10, 0 ( x9 )
.LBB2_126:                              //  %if.end432
                                        //    in Loop: Header=BB2_4 Depth=1
	xor x10, x18, 128
	bltu x0, x10, .LBB2_132
.LBB2_127:                              //  %if.then436
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 64 ( sp )               //  4-byte Folded Reload
	sub x18, x24, x10
	bge x0, x18, .LBB2_132
.LBB2_128:                              //  %while.cond441.preheader
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 0 ( x9 )
	lw x23, 8 ( x9 )
	slti x11, x18, 17
	beq x0, x11, .LBB2_150
.LBB2_129:                              //  %while.end451
                                        //    in Loop: Header=BB2_4 Depth=1
	bltu x18, x23, .LBB2_131
.LBB2_130:                              //  %while.end451
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x18, x23
.LBB2_131:                              //  %while.end451
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x23, 72 ( sp )               //  4-byte Folded Reload
	mv x12, x18
	mv x11, x23
	jal memmove
	lw x10, 8 ( x9 )
	lw x14, 60 ( sp )               //  4-byte Folded Reload
	sub x10, x10, x18
	sw x10, 8 ( x9 )
	lw x10, 0 ( x9 )
	add x10, x18, x10
	sw x10, 0 ( x9 )
.LBB2_132:                              //  %if.end458
                                        //    in Loop: Header=BB2_4 Depth=1
	sub x18, x14, x26
	bge x0, x18, .LBB2_158
.LBB2_133:                              //  %while.cond463.preheader
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 0 ( x9 )
	lw x21, 8 ( x9 )
	slti x11, x18, 17
	beq x0, x11, .LBB2_147
.LBB2_134:                              //  %while.end473
                                        //    in Loop: Header=BB2_4 Depth=1
	bltu x18, x21, .LBB2_136
.LBB2_135:                              //  %while.end473
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x18, x21
.LBB2_136:                              //  %while.end473
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x11, x23
	mv x12, x18
	jal memmove
	lw x10, 0 ( x9 )
	lw x11, 8 ( x9 )
	add x10, x18, x10
	sub x11, x11, x18
	sw x11, 8 ( x9 )
	sw x10, 0 ( x9 )
	bltu x26, x11, .LBB2_138
.LBB2_137:                              //  %if.end479
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x26, x11
.LBB2_138:                              //  %if.end479
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x11, x27
	mv x12, x26
	jal memmove
	lw x11, 8 ( x9 )
	lw x10, 0 ( x9 )
	lw x23, 48 ( sp )               //  4-byte Folded Reload
	add x27, x0, -1
	sub x21, x11, x26
	lw x11, 68 ( sp )               //  4-byte Folded Reload
	add x10, x26, x10
	add x26, x0, 120
	sw x21, 8 ( x9 )
	and x11, x11, 4
	sw x10, 0 ( x9 )
	beq x0, x11, .LBB2_144
.LBB2_139:                              //  %if.then487
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x11, 64 ( sp )               //  4-byte Folded Reload
	sub x18, x24, x11
	bge x0, x18, .LBB2_144
.LBB2_140:                              //  %while.cond492.preheader
                                        //    in Loop: Header=BB2_4 Depth=1
	slti x11, x18, 17
	beq x0, x11, .LBB2_153
.LBB2_141:                              //  %while.end502
                                        //    in Loop: Header=BB2_4 Depth=1
	bltu x18, x21, .LBB2_143
.LBB2_142:                              //  %while.end502
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x18, x21
.LBB2_143:                              //  %while.end502
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x11, fp
	mv x12, x18
	jal memmove
	lw x10, 8 ( x9 )
	sub x10, x10, x18
	sw x10, 8 ( x9 )
	lw x10, 0 ( x9 )
	add x10, x18, x10
	sw x10, 0 ( x9 )
.LBB2_144:                              //  %if.end520
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 64 ( sp )               //  4-byte Folded Reload
	blt x10, x24, .LBB2_1
.LBB2_145:                              //  %if.end520
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x24, x10
.LBB2_1:                                //  %if.end520
                                        //    in Loop: Header=BB2_4 Depth=1
	add x23, x23, x24
	mv x18, x25
	lbu x10, 0 ( x18 )
	bltu x0, x10, .LBB2_2
	jal x0, .LBB2_4
.LBB2_146:                              //  %while.body466
                                        //    in Loop: Header=BB2_147 Depth=2
	mv x11, x23
	mv x12, x21
	jal memmove
	lw x10, 0 ( x9 )
	lw x11, 8 ( x9 )
	add x18, x18, -16
	add x10, x21, x10
	sub x21, x11, x21
	sw x21, 8 ( x9 )
	sw x10, 0 ( x9 )
	bge x20, x18, .LBB2_134
.LBB2_147:                              //  %while.body466
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bltu x21, x20, .LBB2_146
.LBB2_148:                              //  %while.body466
                                        //    in Loop: Header=BB2_147 Depth=2
	mv x21, x20
	jal x0, .LBB2_146
.LBB2_149:                              //  %while.body444
                                        //    in Loop: Header=BB2_150 Depth=2
	lw x11, 72 ( sp )               //  4-byte Folded Reload
	mv x12, x23
	jal memmove
	lw x10, 0 ( x9 )
	lw x11, 8 ( x9 )
	add x18, x18, -16
	add x10, x23, x10
	sub x23, x11, x23
	sw x23, 8 ( x9 )
	sw x10, 0 ( x9 )
	bge x20, x18, .LBB2_129
.LBB2_150:                              //  %while.body444
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bltu x23, x20, .LBB2_149
.LBB2_151:                              //  %while.body444
                                        //    in Loop: Header=BB2_150 Depth=2
	mv x23, x20
	jal x0, .LBB2_149
.LBB2_152:                              //  %while.body495
                                        //    in Loop: Header=BB2_153 Depth=2
	mv x11, fp
	mv x12, x21
	jal memmove
	lw x10, 0 ( x9 )
	lw x11, 8 ( x9 )
	add x18, x18, -16
	add x10, x21, x10
	sub x21, x11, x21
	sw x21, 8 ( x9 )
	sw x10, 0 ( x9 )
	bge x20, x18, .LBB2_141
.LBB2_153:                              //  %while.body495
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bltu x21, x20, .LBB2_152
.LBB2_154:                              //  %while.body495
                                        //    in Loop: Header=BB2_153 Depth=2
	mv x21, x20
	jal x0, .LBB2_152
.LBB2_155:                              //  %while.body400
                                        //    in Loop: Header=BB2_156 Depth=2
	mv x11, fp
	mv x12, x18
	jal memmove
	lw x10, 0 ( x9 )
	lw x11, 8 ( x9 )
	add x23, x23, -16
	add x10, x18, x10
	sub x18, x11, x18
	sw x18, 8 ( x9 )
	sw x10, 0 ( x9 )
	bge x20, x23, .LBB2_117
.LBB2_156:                              //  %while.body400
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bltu x18, x20, .LBB2_155
.LBB2_157:                              //  %while.body400
                                        //    in Loop: Header=BB2_156 Depth=2
	mv x18, x20
	jal x0, .LBB2_155
.LBB2_158:                              //  %if.end458.if.end479_crit_edge
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 0 ( x9 )
	lw x11, 8 ( x9 )
	bgeu x26, x11, .LBB2_137
	jal x0, .LBB2_138
.LBB2_159:                              //    in Loop: Header=BB2_4 Depth=1
	mv x23, x21
	lw fp, 56 ( sp )                //  4-byte Folded Reload
	lw x21, 68 ( sp )               //  4-byte Folded Reload
	lw x14, 60 ( sp )               //  4-byte Folded Reload
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	sub x26, x10, x27
	mv x11, x14
	bge x26, x14, .LBB2_111
	jal x0, .LBB2_112
.LBB2_172:                              //    in Loop: Header=BB2_4 Depth=1
	mv x27, x11
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	sub x26, x10, x27
	mv x11, x14
	bge x26, x14, .LBB2_111
	jal x0, .LBB2_112
.LBB2_83:                               //  %cond.true153
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 120 ( sp )
	add x11, x10, 4
	sw x11, 120 ( sp )
	lw x26, 0 ( x10 )
.LBB2_84:                               //  %cond.false155
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x23, 44 ( sp )               //  4-byte Folded Reload
	mv x18, x22
	mv x10, x22
	sb x0, 119 ( sp )
	blt x27, x14, .LBB2_90
	jal x0, .LBB2_91
.LBB2_85:                               //  %cond.true223
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 120 ( sp )
	add x11, x10, 4
	sw x11, 120 ( sp )
	lw x26, 0 ( x10 )
.LBB2_86:                               //  %cond.false225
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x23, 44 ( sp )               //  4-byte Folded Reload
	seqz x10, x0
	mv x18, x22
	sb x0, 119 ( sp )
	blt x27, x14, .LBB2_90
	jal x0, .LBB2_91
.LBB2_87:                               //  %if.then124
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 120 ( sp )
	add x11, x10, 4
	sw x11, 120 ( sp )
	lw x10, 0 ( x10 )
	sra x11, x23, 31&31
	sw x11, 4 ( x10 )
	sw x23, 0 ( x10 )
	mv x18, x25
	lbu x10, 0 ( x18 )
	bltu x0, x10, .LBB2_2
	jal x0, .LBB2_4
.LBB2_88:                               //  %cond.true259
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x11, 120 ( sp )
	mv x23, x13
	add x12, x11, 4
	sw x12, 120 ( sp )
	lw x26, 0 ( x11 )
	mv x18, x22
	and x11, x21, 1
	bltu x0, x11, .LBB2_56
	jal x0, .LBB2_89
.LBB2_168:                              //  %if.then189
                                        //    in Loop: Header=BB2_4 Depth=1
	add x10, x0, 6
	bltu x14, x10, .LBB2_170
.LBB2_169:                              //  %if.then189
                                        //    in Loop: Header=BB2_4 Depth=1
	add x14, x0, 6
.LBB2_170:                              //  %if.then189
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x27, 16 ( sp )               //  4-byte Folded Reload
	mv x26, x14
	mv x14, x22
	lw x23, 44 ( sp )               //  4-byte Folded Reload
	mv x11, x14
	bge x26, x14, .LBB2_111
	jal x0, .LBB2_112
.LBB2_173:                              //  %if.else209
                                        //    in Loop: Header=BB2_4 Depth=1
	jal strlen
	mv x26, x10
	mv x14, x22
	lw x23, 44 ( sp )               //  4-byte Folded Reload
	mv x11, x14
	bge x26, x14, .LBB2_111
	jal x0, .LBB2_112
.LBB2_174:                              //  %if.then135
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 120 ( sp )
	add x11, x10, 4
	sw x11, 120 ( sp )
	lw x10, 0 ( x10 )
	sh x23, 0 ( x10 )
	mv x18, x25
	lbu x10, 0 ( x18 )
	bltu x0, x10, .LBB2_2
	jal x0, .LBB2_4
.LBB2_175:                              //  %error
	lhu x10, 12 ( x9 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB2_177
.LBB2_176:                              //  %error
	add x23, x0, -1
.LBB2_177:                              //  %error
	mv x10, x23
	lw fp, 124 ( sp )               //  4-byte Folded Reload
	lw x27, 128 ( sp )              //  4-byte Folded Reload
	lw x26, 132 ( sp )              //  4-byte Folded Reload
	lw x25, 136 ( sp )              //  4-byte Folded Reload
	lw x24, 140 ( sp )              //  4-byte Folded Reload
	lw x23, 144 ( sp )              //  4-byte Folded Reload
	lw x22, 148 ( sp )              //  4-byte Folded Reload
	lw x21, 152 ( sp )              //  4-byte Folded Reload
	lw x20, 156 ( sp )              //  4-byte Folded Reload
	lw x19, 160 ( sp )              //  4-byte Folded Reload
	lw x18, 164 ( sp )              //  4-byte Folded Reload
	lw x9, 168 ( sp )               //  4-byte Folded Reload
	lw ra, 172 ( sp )               //  4-byte Folded Reload
	add sp, sp, 176
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	_svfiprintf_r, .Lfunc_end2-_svfiprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI2_0:
	.long	.LBB2_175
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_21
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_23
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_24
	.long	.LBB2_27
	.long	.LBB2_76
	.long	.LBB2_26
	.long	.LBB2_16
	.long	.LBB2_76
	.long	.LBB2_29
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_37
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_44
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_49
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_54
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_58
	.long	.LBB2_38
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_30
	.long	.LBB2_38
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_31
	.long	.LBB2_76
	.long	.LBB2_59
	.long	.LBB2_45
	.long	.LBB2_63
	.long	.LBB2_33
	.long	.LBB2_76
	.long	.LBB2_64
	.long	.LBB2_76
	.long	.LBB2_50
	.long	.LBB2_76
	.long	.LBB2_76
	.long	.LBB2_69
                                        //  -- End function
	.address_space	0
	.type	_svfiprintf_r.blanks,@object //  @_svfiprintf_r.blanks
_svfiprintf_r.blanks:
	.zero	16,32
	.size	_svfiprintf_r.blanks, 16

	.address_space	0
	.type	_svfiprintf_r.zeroes,@object //  @_svfiprintf_r.zeroes
_svfiprintf_r.zeroes:
	.zero	16,48
	.size	_svfiprintf_r.zeroes, 16

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"0123456789abcdef"
	.size	.str, 17

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"(null)"
	.size	.str.1, 7

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"0123456789ABCDEF"
	.size	.str.2, 17

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"bug in vfprintf: bad base"
	.size	.str.3, 26


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
