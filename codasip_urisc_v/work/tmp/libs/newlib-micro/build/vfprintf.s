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
	add sp, sp, -160
	.cfi_adjust_cfa_offset 160
	add x10, sp, 63
	add x10, x10, 40
	sw x10, 28 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _svfiprintf_r.blanks )
	add x10, x10, %lo( _svfiprintf_r.blanks )
	sw x10, 56 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _svfiprintf_r.zeroes )
	add x10, x10, %lo( _svfiprintf_r.zeroes )
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( JTI2_0 )
	add x10, x10, %lo( JTI2_0 )
	sw x10, 40 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( .str.3 )
	add x10, x10, %lo( .str.3 )
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 65535 )
	add x10, x10, %lo( 65535 )
	sw x10, 8 ( sp )                //  4-byte Folded Spill
	lui x10, %hi( .str.2 )
	add x10, x10, %lo( .str.2 )
	sw x10, 16 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	sw x21, 136 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x10, 12 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( .str.1 )
	mv x21, x0
	sw x9, 152 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 144 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 140 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x25, 120 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x27, 112 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	add x10, x10, %lo( .str.1 )
	sw x23, 128 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 124 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	mv x25, x12
	mv x9, x11
	mv x24, x21
	add x19, x0, 10
	add x27, x0, 120
	add x20, x0, 16
	mv x23, x21
	sw ra, 156 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 148 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x22, 132 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x26, 116 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw fp, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x13, 104 ( sp )
	sw x10, 4 ( sp )                //  4-byte Folded Spill
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
                                        //      Child Loop BB2_100 Depth 2
                                        //      Child Loop BB2_115 Depth 2
                                        //      Child Loop BB2_106 Depth 2
                                        //      Child Loop BB2_171 Depth 2
                                        //      Child Loop BB2_165 Depth 2
                                        //      Child Loop BB2_162 Depth 2
                                        //      Child Loop BB2_168 Depth 2
	sub x22, x18, x25
	beq x0, x22, .LBB2_8
.LBB2_5:                                //  %if.then
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 8 ( x9 )
	mv fp, x22
	bltu x22, x10, .LBB2_7
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
	add x24, x24, x22
	sub x10, x10, fp
	sw x10, 8 ( x9 )
	lw x10, 0 ( x9 )
	add x10, fp, x10
	sw x10, 0 ( x9 )
	lbu x10, 0 ( x18 )
.LBB2_8:                                //  %if.end10
                                        //    in Loop: Header=BB2_4 Depth=1
	beq x0, x10, .LBB2_176
.LBB2_9:                                //  %if.end15
                                        //    in Loop: Header=BB2_4 Depth=1
	add x11, x0, -1
	mv x22, x21
	add x10, x18, 1
	mv fp, x21
	mv x26, x21
	sb x0, 103 ( sp )
	sw x11, 52 ( sp )               //  4-byte Folded Spill
.LBB2_10:                               //  %rflag
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_11 Depth 3
                                        //          Child Loop BB2_14 Depth 4
                                        //            Child Loop BB2_18 Depth 5
                                        //          Child Loop BB2_13 Depth 4
	lb x18, 0 ( x10 )
	add x25, x10, 1
.LBB2_11:                               //  %reswitch
                                        //    Parent Loop BB2_4 Depth=1
                                        //      Parent Loop BB2_10 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB2_14 Depth 4
                                        //            Child Loop BB2_18 Depth 5
                                        //          Child Loop BB2_13 Depth 4
	add x10, x18, -49
	sltiu x10, x10, 9
	beq x0, x10, .LBB2_14
.LBB2_12:                               //  %do.body.preheader
                                        //    in Loop: Header=BB2_11 Depth=3
	mv x26, x21
.LBB2_13:                               //  %do.body
                                        //    Parent Loop BB2_4 Depth=1
                                        //      Parent Loop BB2_10 Depth=2
                                        //        Parent Loop BB2_11 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	mv x10, x26
	mv x11, x19
	jal __mulsi3
	add x10, x10, x18
	lb x18, 0 ( x25 )
	add x26, x10, -48
	add x25, x25, 1
	add x10, x18, -48
	sltiu x10, x10, 10
	bltu x0, x10, .LBB2_13
	jal x0, .LBB2_11
.LBB2_21:                               //    in Loop: Header=BB2_14 Depth=4
	lw x22, 48 ( sp )               //  4-byte Folded Reload
	sw x10, 52 ( sp )               //  4-byte Folded Spill
	add x10, x18, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB2_12
.LBB2_14:                               //  %reswitch
                                        //    Parent Loop BB2_4 Depth=1
                                        //      Parent Loop BB2_10 Depth=2
                                        //        Parent Loop BB2_11 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB2_18 Depth 5
	bltu x27, x18, .LBB2_77
.LBB2_15:                               //  %reswitch
                                        //    in Loop: Header=BB2_14 Depth=4
	lw x11, 40 ( sp )               //  4-byte Folded Reload
	sll x10, x18, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB2_16:                               //  %sw.bb29
                                        //    in Loop: Header=BB2_14 Depth=4
	lb x18, 0 ( x25 )
	add x10, x25, 1
	xor x11, x18, 42
	beq x0, x11, .LBB2_36
.LBB2_17:                               //  %while.cond41.preheader
                                        //    in Loop: Header=BB2_14 Depth=4
	sw x22, 48 ( sp )               //  4-byte Folded Spill
	mv x25, x10
	add x22, x18, -48
	mv x10, x21
	add x11, x0, 9
	bltu x11, x22, .LBB2_21
.LBB2_18:                               //  %while.body45
                                        //    Parent Loop BB2_4 Depth=1
                                        //      Parent Loop BB2_10 Depth=2
                                        //        Parent Loop BB2_11 Depth=3
                                        //          Parent Loop BB2_14 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	mv x11, x19
	jal __mulsi3
	lb x18, 0 ( x25 )
	add x10, x10, x22
	add x25, x25, 1
	add x22, x18, -48
	sltiu x11, x22, 10
	bltu x0, x11, .LBB2_18
.LBB2_19:                               //  %while.end50
                                        //    in Loop: Header=BB2_14 Depth=4
	lw x22, 48 ( sp )               //  4-byte Folded Reload
	add x11, x0, -1
	sw x11, 52 ( sp )               //  4-byte Folded Spill
	blt x10, x0, .LBB2_11
.LBB2_20:                               //  %while.end50.thread
                                        //    in Loop: Header=BB2_14 Depth=4
	sw x10, 52 ( sp )               //  4-byte Folded Spill
	add x10, x18, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB2_12
	jal x0, .LBB2_14
.LBB2_22:                               //  %sw.bb
                                        //    in Loop: Header=BB2_10 Depth=2
	and x11, fp, 255
	mv x10, x25
	bltu x0, x11, .LBB2_10
.LBB2_23:                               //  %if.then18
                                        //    in Loop: Header=BB2_10 Depth=2
	add fp, x0, 32
	jal x0, .LBB2_29
.LBB2_24:                               //  %sw.bb20
                                        //    in Loop: Header=BB2_10 Depth=2
	or x22, x22, 1
	mv x10, x25
	jal x0, .LBB2_10
.LBB2_25:                               //  %sw.bb21
                                        //    in Loop: Header=BB2_10 Depth=2
	lw x10, 104 ( sp )
	add x11, x10, 4
	sw x11, 104 ( sp )
	lw x26, 0 ( x10 )
	mv x10, x25
	bge x26, x0, .LBB2_10
.LBB2_26:                               //  %if.end25
                                        //    in Loop: Header=BB2_10 Depth=2
	sub x26, x0, x26
.LBB2_27:                               //  %sw.bb26.loopexit
                                        //    in Loop: Header=BB2_10 Depth=2
	or x22, x22, 4
	mv x10, x25
	jal x0, .LBB2_10
.LBB2_28:                               //  %sw.bb28
                                        //    in Loop: Header=BB2_10 Depth=2
	add fp, x0, 43
.LBB2_29:                               //  %rflag
                                        //    in Loop: Header=BB2_10 Depth=2
	sb fp, 103 ( sp )
	mv x10, x25
	jal x0, .LBB2_10
.LBB2_30:                               //  %sw.bb53
                                        //    in Loop: Header=BB2_10 Depth=2
	or x22, x22, 128
	mv x10, x25
	jal x0, .LBB2_10
.LBB2_31:                               //  %sw.bb64
                                        //    in Loop: Header=BB2_10 Depth=2
	or x22, x22, 64
	mv x10, x25
	jal x0, .LBB2_10
.LBB2_32:                               //  %sw.bb66
                                        //    in Loop: Header=BB2_10 Depth=2
	lbu x10, 0 ( x25 )
	add x11, x0, 108
	beq x10, x11, .LBB2_35
.LBB2_33:                               //  %sw.bb66
                                        //    in Loop: Header=BB2_10 Depth=2
	mv x11, x20
	mv x10, x25
	or x22, x22, x11
	jal x0, .LBB2_10
.LBB2_34:                               //  %sw.bb75
                                        //    in Loop: Header=BB2_10 Depth=2
	or x22, x22, 32
	mv x10, x25
	jal x0, .LBB2_10
.LBB2_35:                               //    in Loop: Header=BB2_10 Depth=2
	add x11, x0, 32
	add x10, x25, 1
	or x22, x22, x11
	jal x0, .LBB2_10
.LBB2_36:                               //  %if.then34
                                        //    in Loop: Header=BB2_10 Depth=2
	lw x11, 104 ( sp )
	add x12, x11, 4
	sw x12, 104 ( sp )
	lw x12, 0 ( x11 )
	add x11, x0, -1
	sw x12, 52 ( sp )               //  4-byte Folded Spill
	blt x11, x12, .LBB2_10
.LBB2_37:                               //  %if.then34
                                        //    in Loop: Header=BB2_10 Depth=2
	add x11, x0, -1
	sw x11, 52 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB2_10
.LBB2_38:                               //  %sw.bb80
                                        //    in Loop: Header=BB2_4 Depth=1
	or x22, x22, 16
.LBB2_39:                               //  %sw.bb82
                                        //    in Loop: Header=BB2_4 Depth=1
	and x10, x22, 32
	bltu x0, x10, .LBB2_43
.LBB2_40:                               //  %cond.false86
                                        //    in Loop: Header=BB2_4 Depth=1
	and x10, x22, 16
	bltu x0, x10, .LBB2_79
.LBB2_41:                               //  %cond.false91
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 104 ( sp )
	add x11, x10, 4
	sw x11, 104 ( sp )
	lw x27, 0 ( x10 )
	and x10, x22, 64
	beq x0, x10, .LBB2_80
.LBB2_42:                               //  %cond.true94
                                        //    in Loop: Header=BB2_4 Depth=1
	sll x10, x27, 16&31
	sra x27, x10, 16&31
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	sra x18, x27, 31&31
	bge x18, x0, .LBB2_44
	jal x0, .LBB2_81
.LBB2_43:                               //  %cond.true84
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 104 ( sp )
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 104 ( sp )
	add x11, x10, 8
	lw x27, 0 ( x10 )
	sw x11, 104 ( sp )
	lw x18, 4 ( x10 )
	blt x18, x0, .LBB2_81
.LBB2_44:                               //    in Loop: Header=BB2_4 Depth=1
	seqz x10, x0
	add x11, x0, -1
	blt x11, fp, .LBB2_91
	jal x0, .LBB2_92
.LBB2_45:                               //  %sw.bb143
                                        //    in Loop: Header=BB2_4 Depth=1
	or x22, x22, 16
.LBB2_46:                               //  %sw.bb145
                                        //    in Loop: Header=BB2_4 Depth=1
	and x10, x22, 32
	bltu x0, x10, .LBB2_75
.LBB2_47:                               //  %cond.false150
                                        //    in Loop: Header=BB2_4 Depth=1
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	and x10, x22, 16
	bltu x0, x10, .LBB2_84
.LBB2_48:                               //  %cond.false155
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 104 ( sp )
	add x11, x10, 4
	sw x11, 104 ( sp )
	lw x27, 0 ( x10 )
	and x10, x22, 64
	beq x10, x21, .LBB2_85
.LBB2_49:                               //  %cond.false155
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 8 ( sp )                //  4-byte Folded Reload
	and x27, x10, x27
	jal x0, .LBB2_85
.LBB2_50:                               //  %sw.bb213
                                        //    in Loop: Header=BB2_4 Depth=1
	or x22, x22, 16
.LBB2_51:                               //  %sw.bb215
                                        //    in Loop: Header=BB2_4 Depth=1
	and x10, x22, 32
	bltu x0, x10, .LBB2_76
.LBB2_52:                               //  %cond.false220
                                        //    in Loop: Header=BB2_4 Depth=1
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	and x10, x22, 16
	bltu x0, x10, .LBB2_86
.LBB2_53:                               //  %cond.false225
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 104 ( sp )
	add x11, x10, 4
	sw x11, 104 ( sp )
	lw x27, 0 ( x10 )
	and x10, x22, 64
	beq x10, x21, .LBB2_87
.LBB2_54:                               //  %cond.false225
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 8 ( sp )                //  4-byte Folded Reload
	and x27, x10, x27
	jal x0, .LBB2_87
.LBB2_55:                               //  %hex.loopexit
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x23, 16 ( sp )               //  4-byte Folded Reload
	add x10, x0, 88
	and x11, x22, 32
	beq x0, x11, .LBB2_71
.LBB2_56:                               //  %cond.true254
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x11, 104 ( sp )
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	add x12, x11, 4
	sw x12, 104 ( sp )
	add x12, x11, 8
	lw x27, 0 ( x11 )
	sw x12, 104 ( sp )
	lw x18, 4 ( x11 )
	and x11, x22, 1
	beq x0, x11, .LBB2_90
.LBB2_57:                               //  %cond.end284
                                        //    in Loop: Header=BB2_4 Depth=1
	or x11, x18, x27
	beq x0, x11, .LBB2_90
.LBB2_58:                               //  %if.then290
                                        //    in Loop: Header=BB2_4 Depth=1
	sb x10, 62 ( sp )
	add x10, x0, 48
	or x22, x22, 2
	sb x10, 61 ( sp )
	add x10, x0, 2
	sb x0, 103 ( sp )
	add x11, x0, -1
	blt x11, fp, .LBB2_91
	jal x0, .LBB2_92
.LBB2_59:                               //  %sw.bb77
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 104 ( sp )
	sw x24, 36 ( sp )               //  4-byte Folded Spill
	add x11, x10, 4
	sw x11, 104 ( sp )
	lw x10, 0 ( x10 )
	sb x10, 63 ( sp )
	jal x0, .LBB2_78
.LBB2_60:                               //  %sw.bb121
                                        //    in Loop: Header=BB2_4 Depth=1
	and x10, x22, 32
	bltu x0, x10, .LBB2_88
.LBB2_61:                               //  %if.else127
                                        //    in Loop: Header=BB2_4 Depth=1
	and x10, x22, 16
	bltu x0, x10, .LBB2_63
.LBB2_62:                               //  %if.else132
                                        //    in Loop: Header=BB2_4 Depth=1
	and x10, x22, 64
	bltu x0, x10, .LBB2_175
.LBB2_63:                               //  %if.then130
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 104 ( sp )
	add x11, x10, 4
	sw x11, 104 ( sp )
	lw x10, 0 ( x10 )
	sw x24, 0 ( x10 )
	mv x18, x25
	lbu x10, 0 ( x18 )
	bltu x0, x10, .LBB2_2
	jal x0, .LBB2_4
.LBB2_64:                               //  %sw.bb180
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 104 ( sp )
	lw x23, 12 ( sp )               //  4-byte Folded Reload
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	or x22, x22, 2
	add x11, x10, 4
	sw x11, 104 ( sp )
	mv x11, x27
	lw x27, 0 ( x10 )
	add x10, x0, 48
	sb x10, 61 ( sp )
	sb x11, 62 ( sp )
	add x10, x0, 2
	mv x18, x21
	sb x0, 103 ( sp )
	add x11, x0, -1
	blt x11, fp, .LBB2_91
	jal x0, .LBB2_92
.LBB2_65:                               //  %sw.bb185
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 104 ( sp )
	sw x24, 36 ( sp )               //  4-byte Folded Spill
	add x11, x10, 4
	sw x11, 104 ( sp )
	lw x24, 0 ( x10 )
	sb x0, 103 ( sp )
	beq x0, x24, .LBB2_120
.LBB2_66:                               //  %if.else196
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x27, 52 ( sp )               //  4-byte Folded Reload
	blt x27, x0, .LBB2_174
.LBB2_67:                               //  %if.then199
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x10, x24
	mv x11, x21
	mv x12, x27
	jal memchr
	beq x10, x21, .LBB2_69
.LBB2_68:                               //  %if.then199
                                        //    in Loop: Header=BB2_4 Depth=1
	sub x27, x10, x24
.LBB2_69:                               //  %if.then199
                                        //    in Loop: Header=BB2_4 Depth=1
	mv fp, x21
	mv x11, fp
	bge x27, fp, .LBB2_126
	jal x0, .LBB2_127
.LBB2_70:                               //  %hex.loopexit1
                                        //    in Loop: Header=BB2_4 Depth=1
	lui x10, %hi( .str )
	add x23, x10, %lo( .str )
	mv x10, x27
	and x11, x22, 32
	bltu x0, x11, .LBB2_56
.LBB2_71:                               //  %cond.false256
                                        //    in Loop: Header=BB2_4 Depth=1
	and x11, x22, 16
	bltu x0, x11, .LBB2_89
.LBB2_72:                               //  %cond.false261
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x11, 104 ( sp )
	add x12, x11, 4
	sw x12, 104 ( sp )
	lw x27, 0 ( x11 )
	and x11, x22, 64
	beq x11, x21, .LBB2_74
.LBB2_73:                               //  %cond.false261
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x11, 8 ( sp )                //  4-byte Folded Reload
	and x27, x11, x27
.LBB2_74:                               //  %cond.false261
                                        //    in Loop: Header=BB2_4 Depth=1
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	mv x18, x21
	and x11, x22, 1
	bltu x0, x11, .LBB2_57
.LBB2_90:                               //  %nosign
                                        //    in Loop: Header=BB2_4 Depth=1
	add x10, x0, 2
	sb x0, 103 ( sp )
	add x11, x0, -1
	bge x11, fp, .LBB2_92
.LBB2_91:                               //    in Loop: Header=BB2_4 Depth=1
	and x22, x22, -129
.LBB2_92:                               //  %number
                                        //    in Loop: Header=BB2_4 Depth=1
	bltu x0, fp, .LBB2_97
.LBB2_93:                               //  %number
                                        //    in Loop: Header=BB2_4 Depth=1
	or x11, x18, x27
	bltu x0, x11, .LBB2_97
.LBB2_94:                               //  %if.else352
                                        //    in Loop: Header=BB2_4 Depth=1
	sw x24, 36 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB2_113
.LBB2_95:                               //  %if.else352
                                        //    in Loop: Header=BB2_4 Depth=1
	and x10, x22, 1
	beq x0, x10, .LBB2_113
.LBB2_96:                               //  %if.then358
                                        //    in Loop: Header=BB2_4 Depth=1
	add x10, x0, 48
	jal x0, .LBB2_110
.LBB2_97:                               //  %if.then307
                                        //    in Loop: Header=BB2_4 Depth=1
	beq x0, x10, .LBB2_114
.LBB2_98:                               //  %if.then307
                                        //    in Loop: Header=BB2_4 Depth=1
	xor x11, x10, 1
	beq x0, x11, .LBB2_101
.LBB2_99:                               //  %if.then307
                                        //    in Loop: Header=BB2_4 Depth=1
	sw x24, 36 ( sp )               //  4-byte Folded Spill
	lw x24, 28 ( sp )               //  4-byte Folded Reload
	xor x10, x10, 2
	bltu x0, x10, .LBB2_119
.LBB2_100:                              //  %do.body343
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	and x10, x27, 15
	add x10, x10, x23
	lb x10, 0 ( x10 )
	sll x11, x18, 28&31
	srl x18, x18, 4&31
	sb x10, -1 ( x24 )
	srl x10, x27, 4&31
	or x27, x11, x10
	add x24, x24, -1
	or x10, x18, x27
	bltu x0, x10, .LBB2_100
.LBB2_125:                              //  %if.end361
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	sub x27, x10, x24
	mv x11, fp
	blt x27, fp, .LBB2_127
.LBB2_126:                              //  %sw.epilog374
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x11, x27
.LBB2_127:                              //  %sw.epilog374
                                        //    in Loop: Header=BB2_4 Depth=1
	lbu x10, 103 ( sp )
	sw x22, 48 ( sp )               //  4-byte Folded Spill
	and x22, x22, 2
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	snez x12, x10
	add x12, x12, x11
	srl x11, x22, 1&31
	beq x0, x11, .LBB2_129
.LBB2_128:                              //    in Loop: Header=BB2_4 Depth=1
	add x12, x12, 2
.LBB2_129:                              //  %sw.epilog374
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x11, 48 ( sp )               //  4-byte Folded Reload
	sw fp, 52 ( sp )                //  4-byte Folded Spill
	sw x12, 44 ( sp )               //  4-byte Folded Spill
	and x23, x11, 132
	bltu x0, x23, .LBB2_135
.LBB2_130:                              //  %if.then392
                                        //    in Loop: Header=BB2_4 Depth=1
	sub fp, x26, x12
	bge x0, fp, .LBB2_135
.LBB2_131:                              //  %while.cond397.preheader
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 0 ( x9 )
	lw x18, 8 ( x9 )
	slti x11, fp, 17
	beq x0, x11, .LBB2_171
.LBB2_132:                              //  %while.end407
                                        //    in Loop: Header=BB2_4 Depth=1
	bltu fp, x18, .LBB2_134
.LBB2_133:                              //  %while.end407
                                        //    in Loop: Header=BB2_4 Depth=1
	mv fp, x18
.LBB2_134:                              //  %while.end407
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x11, 56 ( sp )               //  4-byte Folded Reload
	mv x12, fp
	jal memmove
	lw x10, 8 ( x9 )
	sub x10, x10, fp
	sw x10, 8 ( x9 )
	lw x10, 0 ( x9 )
	add x10, fp, x10
	sw x10, 0 ( x9 )
	lbu x10, 103 ( sp )
.LBB2_135:                              //  %if.end414
                                        //    in Loop: Header=BB2_4 Depth=1
	beq x0, x10, .LBB2_137
.LBB2_136:                              //  %if.then416
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x11, 8 ( x9 )
	lw x10, 0 ( x9 )
	snez fp, x11
	add x11, sp, 103
	mv x12, fp
	jal memmove
	lw x10, 8 ( x9 )
	sub x10, x10, fp
	sw x10, 8 ( x9 )
	lw x10, 0 ( x9 )
	add x10, fp, x10
	sw x10, 0 ( x9 )
.LBB2_137:                              //  %if.end422
                                        //    in Loop: Header=BB2_4 Depth=1
	beq x0, x22, .LBB2_141
.LBB2_138:                              //  %if.then425
                                        //    in Loop: Header=BB2_4 Depth=1
	lw fp, 8 ( x9 )
	add x10, x0, 2
	bltu fp, x10, .LBB2_140
.LBB2_139:                              //  %if.then425
                                        //    in Loop: Header=BB2_4 Depth=1
	add fp, x0, 2
.LBB2_140:                              //  %if.then425
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 0 ( x9 )
	add x11, sp, 61
	mv x12, fp
	jal memmove
	lw x10, 8 ( x9 )
	sub x10, x10, fp
	sw x10, 8 ( x9 )
	lw x10, 0 ( x9 )
	add x10, fp, x10
	sw x10, 0 ( x9 )
.LBB2_141:                              //  %if.end432
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x22, 24 ( sp )               //  4-byte Folded Reload
	xor x10, x23, 128
	bltu x0, x10, .LBB2_147
.LBB2_142:                              //  %if.then436
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	sub x18, x26, x10
	bge x0, x18, .LBB2_147
.LBB2_143:                              //  %while.cond441.preheader
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 0 ( x9 )
	lw fp, 8 ( x9 )
	slti x11, x18, 17
	beq x0, x11, .LBB2_165
.LBB2_144:                              //  %while.end451
                                        //    in Loop: Header=BB2_4 Depth=1
	bltu x18, fp, .LBB2_146
.LBB2_145:                              //  %while.end451
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x18, fp
.LBB2_146:                              //  %while.end451
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x11, x22
	mv x12, x18
	jal memmove
	lw x10, 8 ( x9 )
	sub x10, x10, x18
	sw x10, 8 ( x9 )
	lw x10, 0 ( x9 )
	add x10, x18, x10
	sw x10, 0 ( x9 )
.LBB2_147:                              //  %if.end458
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	sub x18, x10, x27
	bge x0, x18, .LBB2_173
.LBB2_148:                              //  %while.cond463.preheader
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 0 ( x9 )
	lw fp, 8 ( x9 )
	slti x11, x18, 17
	beq x0, x11, .LBB2_162
.LBB2_149:                              //  %while.end473
                                        //    in Loop: Header=BB2_4 Depth=1
	bltu x18, fp, .LBB2_151
.LBB2_150:                              //  %while.end473
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x18, fp
.LBB2_151:                              //  %while.end473
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x11, x22
	mv x12, x18
	jal memmove
	lw x10, 0 ( x9 )
	lw x11, 8 ( x9 )
	add x10, x18, x10
	sub x11, x11, x18
	sw x11, 8 ( x9 )
	sw x10, 0 ( x9 )
	lw fp, 48 ( sp )                //  4-byte Folded Reload
	bltu x27, x11, .LBB2_153
.LBB2_152:                              //  %if.end479
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x27, x11
.LBB2_153:                              //  %if.end479
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x11, x24
	mv x12, x27
	jal memmove
	lw x10, 0 ( x9 )
	lw x11, 8 ( x9 )
	lw x24, 36 ( sp )               //  4-byte Folded Reload
	add x10, x27, x10
	sub x23, x11, x27
	and x11, fp, 4
	add x27, x0, 120
	sw x23, 8 ( x9 )
	sw x10, 0 ( x9 )
	beq x0, x11, .LBB2_159
.LBB2_154:                              //  %if.then487
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x11, 44 ( sp )               //  4-byte Folded Reload
	sub x18, x26, x11
	bge x0, x18, .LBB2_159
.LBB2_155:                              //  %while.cond492.preheader
                                        //    in Loop: Header=BB2_4 Depth=1
	slti x11, x18, 17
	beq x0, x11, .LBB2_168
.LBB2_156:                              //  %while.end502
                                        //    in Loop: Header=BB2_4 Depth=1
	bltu x18, x23, .LBB2_158
.LBB2_157:                              //  %while.end502
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x18, x23
.LBB2_158:                              //  %while.end502
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x11, 56 ( sp )               //  4-byte Folded Reload
	mv x12, x18
	jal memmove
	lw x10, 8 ( x9 )
	sub x10, x10, x18
	sw x10, 8 ( x9 )
	lw x10, 0 ( x9 )
	add x10, x18, x10
	sw x10, 0 ( x9 )
.LBB2_159:                              //  %if.end520
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	blt x10, x26, .LBB2_1
.LBB2_160:                              //  %if.end520
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x26, x10
.LBB2_1:                                //  %if.end520
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x23, 32 ( sp )               //  4-byte Folded Reload
	add x24, x24, x26
	mv x18, x25
	lbu x10, 0 ( x18 )
	bltu x0, x10, .LBB2_2
	jal x0, .LBB2_4
.LBB2_161:                              //  %while.body466
                                        //    in Loop: Header=BB2_162 Depth=2
	mv x11, x22
	mv x12, fp
	jal memmove
	lw x10, 0 ( x9 )
	lw x11, 8 ( x9 )
	add x18, x18, -16
	add x10, fp, x10
	sub fp, x11, fp
	sw fp, 8 ( x9 )
	sw x10, 0 ( x9 )
	bge x20, x18, .LBB2_149
.LBB2_162:                              //  %while.body466
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bltu fp, x20, .LBB2_161
.LBB2_163:                              //  %while.body466
                                        //    in Loop: Header=BB2_162 Depth=2
	mv fp, x20
	jal x0, .LBB2_161
.LBB2_164:                              //  %while.body444
                                        //    in Loop: Header=BB2_165 Depth=2
	mv x11, x22
	mv x12, fp
	jal memmove
	lw x10, 0 ( x9 )
	lw x11, 8 ( x9 )
	add x18, x18, -16
	add x10, fp, x10
	sub fp, x11, fp
	sw fp, 8 ( x9 )
	sw x10, 0 ( x9 )
	bge x20, x18, .LBB2_144
.LBB2_165:                              //  %while.body444
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bltu fp, x20, .LBB2_164
.LBB2_166:                              //  %while.body444
                                        //    in Loop: Header=BB2_165 Depth=2
	mv fp, x20
	jal x0, .LBB2_164
.LBB2_167:                              //  %while.body495
                                        //    in Loop: Header=BB2_168 Depth=2
	lw x11, 56 ( sp )               //  4-byte Folded Reload
	mv x12, x23
	jal memmove
	lw x10, 0 ( x9 )
	lw x11, 8 ( x9 )
	add x18, x18, -16
	add x10, x23, x10
	sub x23, x11, x23
	sw x23, 8 ( x9 )
	sw x10, 0 ( x9 )
	bge x20, x18, .LBB2_156
.LBB2_168:                              //  %while.body495
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bltu x23, x20, .LBB2_167
.LBB2_169:                              //  %while.body495
                                        //    in Loop: Header=BB2_168 Depth=2
	mv x23, x20
	jal x0, .LBB2_167
.LBB2_170:                              //  %while.body400
                                        //    in Loop: Header=BB2_171 Depth=2
	lw x11, 56 ( sp )               //  4-byte Folded Reload
	mv x12, x18
	jal memmove
	lw x10, 0 ( x9 )
	lw x11, 8 ( x9 )
	add fp, fp, -16
	add x10, x18, x10
	sub x18, x11, x18
	sw x18, 8 ( x9 )
	sw x10, 0 ( x9 )
	bge x20, fp, .LBB2_132
.LBB2_171:                              //  %while.body400
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bltu x18, x20, .LBB2_170
.LBB2_172:                              //  %while.body400
                                        //    in Loop: Header=BB2_171 Depth=2
	mv x18, x20
	jal x0, .LBB2_170
.LBB2_173:                              //  %if.end458.if.end479_crit_edge
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 0 ( x9 )
	lw x11, 8 ( x9 )
	lw fp, 48 ( sp )                //  4-byte Folded Reload
	bgeu x27, x11, .LBB2_152
	jal x0, .LBB2_153
.LBB2_113:                              //    in Loop: Header=BB2_4 Depth=1
	lw x24, 28 ( sp )               //  4-byte Folded Reload
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	sub x27, x10, x24
	mv x11, fp
	bge x27, fp, .LBB2_126
	jal x0, .LBB2_127
.LBB2_114:                              //  %do.body309.preheader
                                        //    in Loop: Header=BB2_4 Depth=1
	sw x24, 36 ( sp )               //  4-byte Folded Spill
	add x24, sp, 102
.LBB2_115:                              //  %do.body309
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sll x11, x18, 29&31
	srl x10, x27, 3&31
	or x11, x11, x10
	and x10, x27, 7
	or x10, x10, 48
	srl x18, x18, 3&31
	sb x10, 0 ( x24 )
	add x24, x24, -1
	or x12, x18, x11
	mv x27, x11
	bltu x0, x12, .LBB2_115
.LBB2_116:                              //  %do.end316
                                        //    in Loop: Header=BB2_4 Depth=1
	add x11, x24, 1
	and x12, x22, 1
	beq x0, x12, .LBB2_123
.LBB2_117:                              //  %do.end316
                                        //    in Loop: Header=BB2_4 Depth=1
	xor x10, x10, 48
	beq x0, x10, .LBB2_124
.LBB2_118:                              //  %if.then323
                                        //    in Loop: Header=BB2_4 Depth=1
	add x10, x0, 48
	sb x10, 0 ( x24 )
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	sub x27, x10, x24
	mv x11, fp
	bge x27, fp, .LBB2_126
	jal x0, .LBB2_127
.LBB2_119:                              //  %sw.default
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x24, 20 ( sp )               //  4-byte Folded Reload
	mv x10, x24
	jal strlen
	mv x27, x10
	mv x11, fp
	bge x27, fp, .LBB2_126
	jal x0, .LBB2_127
.LBB2_75:                               //  %cond.true148
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 104 ( sp )
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 104 ( sp )
	add x11, x10, 8
	lw x27, 0 ( x10 )
	sw x11, 104 ( sp )
	lw x18, 4 ( x10 )
	mv x10, x21
	sb x0, 103 ( sp )
	add x11, x0, -1
	blt x11, fp, .LBB2_91
	jal x0, .LBB2_92
.LBB2_76:                               //  %cond.true218
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 104 ( sp )
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 104 ( sp )
	add x11, x10, 8
	lw x27, 0 ( x10 )
	sw x11, 104 ( sp )
	lw x18, 4 ( x10 )
	seqz x10, x0
	sb x0, 103 ( sp )
	add x11, x0, -1
	blt x11, fp, .LBB2_91
	jal x0, .LBB2_92
.LBB2_77:                               //  %if.end371
                                        //    in Loop: Header=BB2_4 Depth=1
	sw x24, 36 ( sp )               //  4-byte Folded Spill
	sb x18, 63 ( sp )
.LBB2_78:                               //  %sw.epilog374
                                        //    in Loop: Header=BB2_4 Depth=1
	seqz x27, x0
	mv fp, x21
	add x24, sp, 63
	sb x0, 103 ( sp )
	mv x11, fp
	bge x27, fp, .LBB2_126
	jal x0, .LBB2_127
.LBB2_79:                               //  %cond.true89
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 104 ( sp )
	add x11, x10, 4
	sw x11, 104 ( sp )
	lw x27, 0 ( x10 )
.LBB2_80:                               //  %cond.end111
                                        //    in Loop: Header=BB2_4 Depth=1
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	sra x18, x27, 31&31
	bge x18, x0, .LBB2_44
.LBB2_81:                               //  %if.then307.thread
                                        //    in Loop: Header=BB2_4 Depth=1
	add x10, x0, -1
	bge x10, fp, .LBB2_83
.LBB2_82:                               //    in Loop: Header=BB2_4 Depth=1
	and x22, x22, -129
.LBB2_83:                               //  %if.then307.thread
                                        //    in Loop: Header=BB2_4 Depth=1
	add x10, x0, 45
	sb x10, 103 ( sp )
	snez x10, x27
	add x10, x10, x18
	sub x27, x0, x27
	sub x18, x0, x10
.LBB2_101:                              //  %sw.bb326
                                        //    in Loop: Header=BB2_4 Depth=1
	beq x18, x21, .LBB2_108
.LBB2_102:                              //  %sw.bb326
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x10, x21
	sw x24, 36 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB2_109
.LBB2_103:                              //    in Loop: Header=BB2_4 Depth=1
	lw x24, 28 ( sp )               //  4-byte Folded Reload
	sw x22, 48 ( sp )               //  4-byte Folded Spill
	mv x22, x23
	jal x0, .LBB2_106
.LBB2_104:                              //  %do.body334
                                        //    in Loop: Header=BB2_106 Depth=2
	snez x11, x18
.LBB2_105:                              //  %do.body334
                                        //    in Loop: Header=BB2_106 Depth=2
	sub x10, x27, x10
	or x10, x10, 48
	sb x10, -1 ( x24 )
	add x24, x24, -1
	mv x27, fp
	mv x18, x23
	beq x0, x11, .LBB2_111
.LBB2_106:                              //  %do.body334
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x10, x27
	mv x11, x18
	mv x12, x19
	mv x13, x21
	jal __udivdi3
	mv x12, x19
	mv x13, x21
	mv fp, x10
	mv x23, x11
	jal __muldi3
	bne x18, x21, .LBB2_104
.LBB2_107:                              //    in Loop: Header=BB2_106 Depth=2
	add x11, x0, 9
	sltu x11, x11, x27
	jal x0, .LBB2_105
.LBB2_108:                              //    in Loop: Header=BB2_4 Depth=1
	sltiu x10, x27, 10
	sw x24, 36 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB2_103
.LBB2_109:                              //  %if.then329
                                        //    in Loop: Header=BB2_4 Depth=1
	add x10, x27, 48
.LBB2_110:                              //  %if.end361
                                        //    in Loop: Header=BB2_4 Depth=1
	add x24, sp, 102
	sb x10, 102 ( sp )
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	sub x27, x10, x24
	mv x11, fp
	bge x27, fp, .LBB2_126
	jal x0, .LBB2_127
.LBB2_111:                              //    in Loop: Header=BB2_4 Depth=1
	mv x23, x22
	lw x22, 48 ( sp )               //  4-byte Folded Reload
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	sub x27, x10, x24
	mv x11, fp
	bge x27, fp, .LBB2_126
	jal x0, .LBB2_127
.LBB2_84:                               //  %cond.true153
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 104 ( sp )
	add x11, x10, 4
	sw x11, 104 ( sp )
	lw x27, 0 ( x10 )
.LBB2_85:                               //  %cond.end175
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x18, x21
	mv x10, x21
	sb x0, 103 ( sp )
	add x11, x0, -1
	blt x11, fp, .LBB2_91
	jal x0, .LBB2_92
.LBB2_86:                               //  %cond.true223
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 104 ( sp )
	add x11, x10, 4
	sw x11, 104 ( sp )
	lw x27, 0 ( x10 )
.LBB2_87:                               //  %cond.end245
                                        //    in Loop: Header=BB2_4 Depth=1
	seqz x10, x0
	mv x18, x21
	sb x0, 103 ( sp )
	add x11, x0, -1
	blt x11, fp, .LBB2_91
	jal x0, .LBB2_92
.LBB2_88:                               //  %if.then124
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 104 ( sp )
	add x11, x10, 4
	sw x11, 104 ( sp )
	lw x10, 0 ( x10 )
	sra x11, x24, 31&31
	sw x11, 4 ( x10 )
	sw x24, 0 ( x10 )
	mv x18, x25
	lbu x10, 0 ( x18 )
	bltu x0, x10, .LBB2_2
	jal x0, .LBB2_4
.LBB2_89:                               //  %cond.true259
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x11, 104 ( sp )
	add x12, x11, 4
	sw x12, 104 ( sp )
	lw x27, 0 ( x11 )
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	mv x18, x21
	and x11, x22, 1
	bltu x0, x11, .LBB2_57
	jal x0, .LBB2_90
.LBB2_120:                              //  %if.then189
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x27, 52 ( sp )               //  4-byte Folded Reload
	add x10, x0, 6
	bltu x27, x10, .LBB2_122
.LBB2_121:                              //  %if.then189
                                        //    in Loop: Header=BB2_4 Depth=1
	add x27, x0, 6
.LBB2_122:                              //  %if.then189
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x24, 4 ( sp )                //  4-byte Folded Reload
	mv fp, x21
	mv x11, fp
	bge x27, fp, .LBB2_126
	jal x0, .LBB2_127
.LBB2_123:                              //    in Loop: Header=BB2_4 Depth=1
	mv x24, x11
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	sub x27, x10, x24
	mv x11, fp
	bge x27, fp, .LBB2_126
	jal x0, .LBB2_127
.LBB2_124:                              //    in Loop: Header=BB2_4 Depth=1
	mv x24, x11
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	sub x27, x10, x24
	mv x11, fp
	blt x27, fp, .LBB2_127
	jal x0, .LBB2_126
.LBB2_174:                              //  %if.else209
                                        //    in Loop: Header=BB2_4 Depth=1
	mv x10, x24
	jal strlen
	mv x27, x10
	mv fp, x21
	mv x11, fp
	bge x27, fp, .LBB2_126
	jal x0, .LBB2_127
.LBB2_175:                              //  %if.then135
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10, 104 ( sp )
	add x11, x10, 4
	sw x11, 104 ( sp )
	lw x10, 0 ( x10 )
	sh x24, 0 ( x10 )
	mv x18, x25
	lbu x10, 0 ( x18 )
	bltu x0, x10, .LBB2_2
	jal x0, .LBB2_4
.LBB2_176:                              //  %error
	lhu x10, 12 ( x9 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB2_178
.LBB2_177:                              //  %error
	add x24, x0, -1
.LBB2_178:                              //  %error
	mv x10, x24
	lw fp, 108 ( sp )               //  4-byte Folded Reload
	lw x27, 112 ( sp )              //  4-byte Folded Reload
	lw x26, 116 ( sp )              //  4-byte Folded Reload
	lw x25, 120 ( sp )              //  4-byte Folded Reload
	lw x24, 124 ( sp )              //  4-byte Folded Reload
	lw x23, 128 ( sp )              //  4-byte Folded Reload
	lw x22, 132 ( sp )              //  4-byte Folded Reload
	lw x21, 136 ( sp )              //  4-byte Folded Reload
	lw x20, 140 ( sp )              //  4-byte Folded Reload
	lw x19, 144 ( sp )              //  4-byte Folded Reload
	lw x18, 148 ( sp )              //  4-byte Folded Reload
	lw x9, 152 ( sp )               //  4-byte Folded Reload
	lw ra, 156 ( sp )               //  4-byte Folded Reload
	add sp, sp, 160
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	_svfiprintf_r, .Lfunc_end2-_svfiprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI2_0:
	.long	.LBB2_176
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_22
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_24
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_25
	.long	.LBB2_28
	.long	.LBB2_77
	.long	.LBB2_27
	.long	.LBB2_16
	.long	.LBB2_77
	.long	.LBB2_30
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_38
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_45
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_50
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_55
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_59
	.long	.LBB2_39
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_31
	.long	.LBB2_39
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_32
	.long	.LBB2_77
	.long	.LBB2_60
	.long	.LBB2_46
	.long	.LBB2_64
	.long	.LBB2_34
	.long	.LBB2_77
	.long	.LBB2_65
	.long	.LBB2_77
	.long	.LBB2_51
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_70
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
