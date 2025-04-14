	.text
	.file	"svfiprintf.c"
	.globl	__ssprint_r             //  -- Begin function __ssprint_r
	.type	__ssprint_r,@function
__ssprint_r:                            //  @__ssprint_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x12
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	lw x10, 8 ( fp )
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %do.body.preheader
	lw x10, 0 ( fp )
	mv x19, x0
	add x20, x0, 3
	add x25, x10, 4
	lui x10, %hi( 64383 )
	add x26, x10, %lo( 64383 )
	lw x27, 0 ( x25 )
	bltu x0, x27, .LBB0_5
	jal x0, .LBB0_4
.LBB0_15:                               //  %if.end46
	lw x10, 0 ( x9 )
	mv x11, x21
	mv x12, x22
	jal memmove
	lw x10, 0 ( x9 )
	lw x11, 8 ( x9 )
	add x10, x22, x10
	sw x10, 0 ( x9 )
	lw x10, 8 ( fp )
	sub x11, x11, x22
	sw x11, 8 ( x9 )
	sub x10, x10, x27
	sw x10, 8 ( fp )
	beq x0, x10, .LBB0_19
.LBB0_4:                                //  %while.body.backedge
                                        //  =>This Inner Loop Header: Depth=1
	add x25, x25, 8
	lw x27, 0 ( x25 )
	beq x0, x27, .LBB0_4
.LBB0_5:                                //  %while.end
	lw x21, -4 ( x25 )
	lw x10, 8 ( x9 )
	bltu x27, x10, .LBB0_13
.LBB0_6:                                //  %land.lhs.true
	lhu x24, 12 ( x9 )
	and x11, x24, 1152
	beq x0, x11, .LBB0_13
.LBB0_7:                                //  %if.then3
	lw x10, 20 ( x9 )
	mv x11, x20
	jal __mulsi3
	slt x11, x10, x0
	add x10, x11, x10
	lw x11, 16 ( x9 )
	lw x12, 0 ( x9 )
	sra x10, x10, 1&31
	sub x22, x12, x11
	add x12, x22, x27
	add x23, x12, 1
	bltu x10, x23, .LBB0_9
.LBB0_8:                                //  %if.then3
	mv x23, x10
.LBB0_9:                                //  %if.then3
	and x10, x24, 1024
	bltu x0, x10, .LBB0_10
.LBB0_16:                               //  %if.else
	mv x10, x18
	mv x12, x23
	jal _realloc_r
	mv x24, x10
	bltu x0, x24, .LBB0_12
	jal x0, .LBB0_17
.LBB0_10:                               //  %if.then16
	mv x10, x18
	mv x11, x23
	jal _malloc_r
	mv x24, x10
	beq x0, x24, .LBB0_18
.LBB0_11:                               //  %if.end19
	lw x11, 16 ( x9 )
	mv x10, x24
	mv x12, x22
	jal memcpy
	lhu x10, 12 ( x9 )
	and x10, x26, x10
	or x10, x10, 128
	sh x10, 12 ( x9 )
.LBB0_12:                               //  %cleanup
	add x10, x22, x24
	sw x10, 0 ( x9 )
	sub x10, x23, x22
	sw x10, 8 ( x9 )
	mv x10, x27
	sw x24, 16 ( x9 )
	sw x23, 20 ( x9 )
.LBB0_13:                               //  %if.end46
	mv x22, x27
	bltu x27, x10, .LBB0_15
.LBB0_14:                               //  %if.end46
	mv x22, x10
	jal x0, .LBB0_15
.LBB0_1:
	mv x19, x0
	jal x0, .LBB0_20
.LBB0_17:                               //  %if.then32
	lw x11, 16 ( x9 )
	mv x10, x18
	jal _free_r
.LBB0_18:                               //  %err
	add x10, x0, 12
	sw x10, 0 ( x18 )
	lh x10, 12 ( x9 )
	add x19, x0, -1
	or x10, x10, 64
	sh x10, 12 ( x9 )
.LBB0_19:                               //  %cleanup71.sink.split
	sw x0, 8 ( fp )
.LBB0_20:                               //  %cleanup71
	sw x0, 4 ( fp )
	mv x10, x19
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
.Lfunc_end0:
	.size	__ssprint_r, .Lfunc_end0-__ssprint_r
	.cfi_endproc
                                        //  -- End function
	.globl	_svfiprintf_r           //  -- Begin function _svfiprintf_r
	.type	_svfiprintf_r,@function
_svfiprintf_r:                          //  @_svfiprintf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -304
	.cfi_adjust_cfa_offset 304
	sw x22, 276 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	mv x22, x11
	sw x25, 264 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	mv x25, x10
	lbu x10, 12 ( x22 )
	sw x23, 272 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	mv x23, x12
	sw ra, 300 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	and x10, x10, 128
	sw x9, 296 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 292 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 288 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 284 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 280 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x24, 268 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26, 260 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 256 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 252 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x13, 248 ( sp )
	beq x0, x10, .LBB1_4
.LBB1_1:                                //  %land.lhs.true
	lw x10, 16 ( x22 )
	bltu x0, x10, .LBB1_4
.LBB1_2:                                //  %if.then
	add x9, x0, 64
	mv x10, x25
	mv x11, x9
	jal _malloc_r
	sw x10, 16 ( x22 )
	sw x10, 0 ( x22 )
	bltu x0, x10, .LBB1_3
.LBB1_246:                              //  %if.then
	jal x0, .LBB1_240
.LBB1_3:                                //  %if.end
	sw x9, 20 ( x22 )
.LBB1_4:                                //  %if.end8
	add x10, sp, 68
	add x10, x10, 100
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _svfiprintf_r.blanks )
	add x10, x10, %lo( _svfiprintf_r.blanks )
	sw x10, 56 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _svfiprintf_r.zeroes )
	add x10, x10, %lo( _svfiprintf_r.zeroes )
	mv x26, x0
	sw x10, 60 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( JTI1_0 )
	add x21, sp, 232
	add x19, sp, 168
	add x10, x10, %lo( JTI1_0 )
	mv x18, x26
	add x20, x0, 10
	add x27, x0, 122
	sw x0, 8 ( x21 )
	sw x19, 232 ( sp )
	sw x26, 16 ( sp )               //  4-byte Folded Spill
	sw x0, 236 ( sp )
	sw x10, 36 ( sp )               //  4-byte Folded Spill
	sw x26, 32 ( sp )               //  4-byte Folded Spill
	sw x26, 48 ( sp )               //  4-byte Folded Spill
	sw x26, 12 ( sp )               //  4-byte Folded Spill
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	sw x25, 44 ( sp )               //  4-byte Folded Spill
	mv fp, x23
	lbu x10, 0 ( fp )
	beq x0, x10, .LBB1_7
.LBB1_5:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	xor x11, x10, 37
	beq x0, x11, .LBB1_7
.LBB1_6:                                //  %while.body
                                        //    in Loop: Header=BB1_5 Depth=1
	add fp, fp, 1
	lbu x10, 0 ( fp )
	bltu x0, x10, .LBB1_5
.LBB1_7:                                //  %while.end
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_14 Depth 2
                                        //        Child Loop BB1_15 Depth 3
                                        //          Child Loop BB1_18 Depth 4
                                        //            Child Loop BB1_23 Depth 5
                                        //          Child Loop BB1_17 Depth 4
                                        //      Child Loop BB1_126 Depth 2
                                        //      Child Loop BB1_205 Depth 2
                                        //      Child Loop BB1_213 Depth 2
                                        //      Child Loop BB1_202 Depth 2
                                        //      Child Loop BB1_143 Depth 2
                                        //      Child Loop BB1_161 Depth 2
                                        //      Child Loop BB1_171 Depth 2
                                        //      Child Loop BB1_187 Depth 2
	sub x9, fp, x23
	beq x0, x9, .LBB1_12
.LBB1_8:                                //  %if.then16
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 8 ( x21 )
	sw x9, 4 ( x19 )
	sw x23, 0 ( x19 )
	add x10, x9, x10
	sw x10, 8 ( x21 )
	lw x10, 236 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 236 ( sp )
	bltu x0, x10, .LBB1_10
.LBB1_9:                                //  %if.then21
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x10, x25
	mv x11, x22
	mv x12, x21
	jal __ssprint_r
	add x19, sp, 168
	beq x0, x10, .LBB1_11
	jal x0, .LBB1_234
.LBB1_10:                               //    in Loop: Header=BB1_7 Depth=1
	add x19, x19, 8
.LBB1_11:                               //  %if.end27
                                        //    in Loop: Header=BB1_7 Depth=1
	lbu x10, 0 ( fp )
	add x18, x18, x9
.LBB1_12:                               //  %if.end29
                                        //    in Loop: Header=BB1_7 Depth=1
	beq x0, x10, .LBB1_231
.LBB1_13:                               //  %if.end34
                                        //    in Loop: Header=BB1_7 Depth=1
	add x10, x0, -1
	add x11, fp, 1
	mv x9, x26
	mv x24, x26
	sb x0, 247 ( sp )
	sw x10, 52 ( sp )               //  4-byte Folded Spill
.LBB1_14:                               //  %rflag
                                        //    Parent Loop BB1_7 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_15 Depth 3
                                        //          Child Loop BB1_18 Depth 4
                                        //            Child Loop BB1_23 Depth 5
                                        //          Child Loop BB1_17 Depth 4
	lb fp, 0 ( x11 )
	add x23, x11, 1
.LBB1_15:                               //  %reswitch
                                        //    Parent Loop BB1_7 Depth=1
                                        //      Parent Loop BB1_14 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_18 Depth 4
                                        //            Child Loop BB1_23 Depth 5
                                        //          Child Loop BB1_17 Depth 4
	add x10, fp, -49
	sltiu x10, x10, 9
	beq x0, x10, .LBB1_18
.LBB1_16:                               //  %do.body.preheader
                                        //    in Loop: Header=BB1_15 Depth=3
	mv x24, x26
.LBB1_17:                               //  %do.body
                                        //    Parent Loop BB1_7 Depth=1
                                        //      Parent Loop BB1_14 Depth=2
                                        //        Parent Loop BB1_15 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	mv x10, x24
	mv x11, x20
	jal __mulsi3
	add x10, x10, fp
	lb fp, 0 ( x23 )
	add x24, x10, -48
	add x23, x23, 1
	add x10, fp, -48
	sltiu x10, x10, 10
	bltu x0, x10, .LBB1_17
	jal x0, .LBB1_15
.LBB1_26:                               //    in Loop: Header=BB1_18 Depth=4
	mv x10, x0
	mv x9, x25
	lw x25, 44 ( sp )               //  4-byte Folded Reload
	mv x23, x11
	sw x10, 52 ( sp )               //  4-byte Folded Spill
	add x10, fp, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB1_16
.LBB1_18:                               //  %reswitch
                                        //    Parent Loop BB1_7 Depth=1
                                        //      Parent Loop BB1_14 Depth=2
                                        //        Parent Loop BB1_15 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB1_23 Depth 5
	bltu x27, fp, .LBB1_95
.LBB1_19:                               //  %reswitch
                                        //    in Loop: Header=BB1_18 Depth=4
	lw x11, 36 ( sp )               //  4-byte Folded Reload
	sll x10, fp, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB1_20:                               //  %sw.bb66
                                        //    in Loop: Header=BB1_18 Depth=4
	lb fp, 0 ( x23 )
	add x11, x23, 1
	xor x10, fp, 42
	beq x0, x10, .LBB1_49
.LBB1_21:                               //  %while.cond78.preheader
                                        //    in Loop: Header=BB1_18 Depth=4
	mv x25, x9
	add x9, fp, -48
	add x10, x0, 9
	bltu x10, x9, .LBB1_26
.LBB1_22:                               //  %while.body82.preheader
                                        //    in Loop: Header=BB1_18 Depth=4
	mv x10, x0
	mv x23, x11
.LBB1_23:                               //  %while.body82
                                        //    Parent Loop BB1_7 Depth=1
                                        //      Parent Loop BB1_14 Depth=2
                                        //        Parent Loop BB1_15 Depth=3
                                        //          Parent Loop BB1_18 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	add x11, x0, 10
	jal __mulsi3
	lb fp, 0 ( x23 )
	add x10, x10, x9
	add x23, x23, 1
	add x9, fp, -48
	sltiu x11, x9, 10
	bltu x0, x11, .LBB1_23
.LBB1_24:                               //  %while.end87
                                        //    in Loop: Header=BB1_18 Depth=4
	mv x9, x25
	lw x25, 44 ( sp )               //  4-byte Folded Reload
	add x11, x0, -1
	sw x11, 52 ( sp )               //  4-byte Folded Spill
	blt x10, x0, .LBB1_15
.LBB1_25:                               //  %while.end87.thread
                                        //    in Loop: Header=BB1_18 Depth=4
	sw x10, 52 ( sp )               //  4-byte Folded Spill
	add x10, fp, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB1_16
	jal x0, .LBB1_18
.LBB1_27:                               //  %sw.bb122
                                        //    in Loop: Header=BB1_14 Depth=2
	or x9, x9, 32
	mv x11, x23
	jal x0, .LBB1_14
.LBB1_28:                               //  %sw.bb52
                                        //    in Loop: Header=BB1_14 Depth=2
	lbu x10, 247 ( sp )
	mv x11, x23
	bltu x0, x10, .LBB1_14
.LBB1_29:                               //  %if.then54
                                        //    in Loop: Header=BB1_14 Depth=2
	add x10, x0, 32
	jal x0, .LBB1_40
.LBB1_30:                               //  %sw.bb56
                                        //    in Loop: Header=BB1_14 Depth=2
	or x9, x9, 1
	mv x11, x23
	jal x0, .LBB1_14
.LBB1_31:                               //  %sw.bb
                                        //    in Loop: Header=BB1_14 Depth=2
	mv x10, x25
	jal _localeconv_r
	lw x10, 4 ( x10 )
	sw x10, 12 ( sp )               //  4-byte Folded Spill
	jal strlen
	mv fp, x10
	mv x10, x25
	jal _localeconv_r
	lw x10, 8 ( x10 )
	mv x11, x23
	sw fp, 16 ( sp )                //  4-byte Folded Spill
	sw x10, 48 ( sp )               //  4-byte Folded Spill
	beq x0, fp, .LBB1_14
.LBB1_32:                               //  %sw.bb
                                        //    in Loop: Header=BB1_14 Depth=2
	lw x10, 48 ( sp )               //  4-byte Folded Reload
	mv x11, x23
	beq x0, x10, .LBB1_14
.LBB1_33:                               //  %land.lhs.true47
                                        //    in Loop: Header=BB1_14 Depth=2
	lw x10, 48 ( sp )               //  4-byte Folded Reload
	mv x11, x0
	lbu x10, 0 ( x10 )
	beq x10, x11, .LBB1_35
.LBB1_34:                               //  %land.lhs.true47
                                        //    in Loop: Header=BB1_14 Depth=2
	or x9, x9, 1024
.LBB1_35:                               //  %land.lhs.true47
                                        //    in Loop: Header=BB1_14 Depth=2
	mv x11, x23
	jal x0, .LBB1_14
.LBB1_36:                               //  %sw.bb58
                                        //    in Loop: Header=BB1_14 Depth=2
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x24, 0 ( x10 )
	mv x11, x23
	bge x24, x0, .LBB1_14
.LBB1_37:                               //  %if.end62
                                        //    in Loop: Header=BB1_14 Depth=2
	sub x24, x0, x24
.LBB1_38:                               //  %sw.bb63.loopexit
                                        //    in Loop: Header=BB1_14 Depth=2
	or x9, x9, 4
	mv x11, x23
	jal x0, .LBB1_14
.LBB1_39:                               //  %sw.bb65
                                        //    in Loop: Header=BB1_14 Depth=2
	add x10, x0, 43
.LBB1_40:                               //  %rflag
                                        //    in Loop: Header=BB1_14 Depth=2
	sb x10, 247 ( sp )
.LBB1_41:                               //  %rflag.backedge.loopexit
                                        //    in Loop: Header=BB1_14 Depth=2
	mv x11, x23
	jal x0, .LBB1_14
.LBB1_42:                               //  %sw.bb90
                                        //    in Loop: Header=BB1_14 Depth=2
	or x9, x9, 128
	mv x11, x23
	jal x0, .LBB1_14
.LBB1_43:                               //  %sw.bb101
                                        //    in Loop: Header=BB1_14 Depth=2
	lbu x10, 0 ( x23 )
	add x11, x0, 104
	beq x10, x11, .LBB1_47
.LBB1_44:                               //  %sw.bb101
                                        //    in Loop: Header=BB1_14 Depth=2
	add x10, x0, 64
	mv x11, x23
	or x9, x9, x10
	jal x0, .LBB1_14
.LBB1_45:                               //  %sw.bb110
                                        //    in Loop: Header=BB1_14 Depth=2
	lbu x10, 0 ( x23 )
	add x11, x0, 108
	beq x10, x11, .LBB1_48
.LBB1_46:                               //  %sw.bb110
                                        //    in Loop: Header=BB1_14 Depth=2
	add x10, x0, 16
	mv x11, x23
	or x9, x9, x10
	jal x0, .LBB1_14
.LBB1_47:                               //    in Loop: Header=BB1_14 Depth=2
	add x10, x0, 512
	add x11, x23, 1
	or x9, x9, x10
	jal x0, .LBB1_14
.LBB1_48:                               //    in Loop: Header=BB1_14 Depth=2
	add x10, x0, 32
	add x11, x23, 1
	or x9, x9, x10
	jal x0, .LBB1_14
.LBB1_49:                               //  %if.then71
                                        //    in Loop: Header=BB1_14 Depth=2
	lw x10, 248 ( sp )
	add x12, x10, 4
	sw x12, 248 ( sp )
	lw x12, 0 ( x10 )
	add x10, x0, -1
	sw x12, 52 ( sp )               //  4-byte Folded Spill
	blt x10, x12, .LBB1_14
.LBB1_50:                               //  %if.then71
                                        //    in Loop: Header=BB1_14 Depth=2
	sw x10, 52 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB1_14
.LBB1_51:                               //  %sw.bb126
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 248 ( sp )
	sw x18, 28 ( sp )               //  4-byte Folded Spill
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x10, 0 ( x10 )
	sb x10, 68 ( sp )
	jal x0, .LBB1_96
.LBB1_52:                               //  %sw.bb244
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x26, 0 ( x10 )
	sb x0, 247 ( sp )
	sw x18, 28 ( sp )               //  4-byte Folded Spill
	beq x0, x26, .LBB1_97
.LBB1_53:                               //  %if.else255
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x27, 52 ( sp )               //  4-byte Folded Reload
	blt x27, x0, .LBB1_110
.LBB1_54:                               //  %if.then258
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x21, x9
	mv x9, x0
	mv x10, x26
	mv x11, x9
	mv x12, x27
	jal memchr
	beq x10, x9, .LBB1_56
.LBB1_55:                               //  %if.then258
                                        //    in Loop: Header=BB1_7 Depth=1
	sub x27, x10, x26
.LBB1_56:                               //  %if.then258
                                        //    in Loop: Header=BB1_7 Depth=1
	lw fp, 32 ( sp )                //  4-byte Folded Reload
	mv x18, x9
	mv x9, x21
	mv x10, x18
	sw fp, 32 ( sp )                //  4-byte Folded Spill
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	bge x27, x18, .LBB1_135
	jal x0, .LBB1_136
.LBB1_57:                               //  %sw.bb130
                                        //    in Loop: Header=BB1_7 Depth=1
	or x9, x9, 16
.LBB1_58:                               //  %sw.bb132
                                        //    in Loop: Header=BB1_7 Depth=1
	and x10, x9, 32
	sw x18, 28 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB1_63
.LBB1_59:                               //  %cond.false137
                                        //    in Loop: Header=BB1_7 Depth=1
	and x10, x9, 16
	bltu x0, x10, .LBB1_100
.LBB1_60:                               //  %cond.false142
                                        //    in Loop: Header=BB1_7 Depth=1
	and x10, x9, 64
	bltu x0, x10, .LBB1_113
.LBB1_61:                               //  %cond.false149
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x27, 0 ( x10 )
	and x10, x9, 512
	beq x0, x10, .LBB1_101
.LBB1_62:                               //  %cond.true152
                                        //    in Loop: Header=BB1_7 Depth=1
	sll x10, x27, 24&31
	sra x27, x10, 24&31
	lw fp, 32 ( sp )                //  4-byte Folded Reload
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	sra x22, x27, 31&31
	bge x22, x0, .LBB1_64
	jal x0, .LBB1_102
.LBB1_63:                               //  %cond.true135
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 248 ( sp )
	lw fp, 32 ( sp )                //  4-byte Folded Reload
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 248 ( sp )
	add x11, x10, 8
	lw x27, 0 ( x10 )
	sw x11, 248 ( sp )
	lw x22, 4 ( x10 )
	blt x22, x0, .LBB1_102
.LBB1_64:                               //    in Loop: Header=BB1_7 Depth=1
	seqz x10, x0
	add x11, x0, -1
	blt x11, x18, .LBB1_117
	jal x0, .LBB1_118
.LBB1_65:                               //  %sw.bb201
                                        //    in Loop: Header=BB1_7 Depth=1
	or x9, x9, 16
.LBB1_66:                               //  %sw.bb203.loopexit
                                        //    in Loop: Header=BB1_7 Depth=1
	lw fp, 32 ( sp )                //  4-byte Folded Reload
	and x10, x9, 32
	sw x18, 28 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB1_93
.LBB1_67:                               //  %cond.false208
                                        //    in Loop: Header=BB1_7 Depth=1
	and x10, x9, 16
	bltu x0, x10, .LBB1_105
.LBB1_68:                               //  %cond.false213
                                        //    in Loop: Header=BB1_7 Depth=1
	and x10, x9, 64
	bltu x0, x10, .LBB1_114
.LBB1_69:                               //  %cond.false220
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x27, 0 ( x10 )
	and x11, x9, 512
	mv x10, x0
	beq x11, x10, .LBB1_115
.LBB1_70:                               //  %cond.false220
                                        //    in Loop: Header=BB1_7 Depth=1
	and x27, x27, 255
	jal x0, .LBB1_115
.LBB1_71:                               //  %sw.bb272
                                        //    in Loop: Header=BB1_7 Depth=1
	or x9, x9, 16
.LBB1_72:                               //  %sw.bb274.loopexit
                                        //    in Loop: Header=BB1_7 Depth=1
	lw fp, 32 ( sp )                //  4-byte Folded Reload
	and x10, x9, 32
	sw x18, 28 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB1_94
.LBB1_73:                               //  %cond.false279
                                        //    in Loop: Header=BB1_7 Depth=1
	and x10, x9, 16
	bltu x0, x10, .LBB1_106
.LBB1_74:                               //  %cond.false284
                                        //    in Loop: Header=BB1_7 Depth=1
	and x10, x9, 64
	bltu x0, x10, .LBB1_226
.LBB1_75:                               //  %cond.false291
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x27, 0 ( x10 )
	and x11, x9, 512
	mv x10, x0
	beq x11, x10, .LBB1_227
.LBB1_76:                               //  %cond.false291
                                        //    in Loop: Header=BB1_7 Depth=1
	and x27, x27, 255
	jal x0, .LBB1_227
.LBB1_77:                               //  %hex.loopexit
                                        //    in Loop: Header=BB1_7 Depth=1
	lui x10, %hi( .str.2 )
	add fp, x10, %lo( .str.2 )
	add x10, x0, 88
	and x11, x9, 32
	sw x18, 28 ( sp )               //  4-byte Folded Spill
	beq x0, x11, .LBB1_89
.LBB1_78:                               //  %cond.true313
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x11, 248 ( sp )
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	add x12, x11, 4
	sw x12, 248 ( sp )
	add x12, x11, 8
	lw x27, 0 ( x11 )
	sw x12, 248 ( sp )
	lw x22, 4 ( x11 )
	and x11, x9, 1
	beq x0, x11, .LBB1_81
.LBB1_79:                               //  %cond.end343
                                        //    in Loop: Header=BB1_7 Depth=1
	or x11, x22, x27
	beq x0, x11, .LBB1_81
.LBB1_80:                               //  %if.then350
                                        //    in Loop: Header=BB1_7 Depth=1
	sb x10, 67 ( sp )
	add x10, x0, 48
	or x9, x9, 2
	sb x10, 66 ( sp )
.LBB1_81:                               //  %if.end355
                                        //    in Loop: Header=BB1_7 Depth=1
	and x9, x9, -1025
	add x10, x0, 2
	sb x0, 247 ( sp )
	add x11, x0, -1
	blt x11, x18, .LBB1_117
	jal x0, .LBB1_118
.LBB1_82:                               //  %sw.bb172
                                        //    in Loop: Header=BB1_7 Depth=1
	and x10, x9, 32
	bltu x0, x10, .LBB1_107
.LBB1_83:                               //  %if.else178
                                        //    in Loop: Header=BB1_7 Depth=1
	and x10, x9, 16
	bltu x0, x10, .LBB1_86
.LBB1_84:                               //  %if.else183
                                        //    in Loop: Header=BB1_7 Depth=1
	and x10, x9, 64
	bltu x0, x10, .LBB1_229
.LBB1_85:                               //  %if.else189
                                        //    in Loop: Header=BB1_7 Depth=1
	and x10, x9, 512
	bltu x0, x10, .LBB1_230
.LBB1_86:                               //  %if.then181
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x10, 0 ( x10 )
	sw x18, 0 ( x10 )
	mv fp, x23
	lbu x10, 0 ( fp )
	bltu x0, x10, .LBB1_5
	jal x0, .LBB1_7
.LBB1_87:                               //  %sw.bb239
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 248 ( sp )
	sw x18, 28 ( sp )               //  4-byte Folded Spill
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	mv x22, x0
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x27, 0 ( x10 )
	add x10, x0, 120
	sb x10, 67 ( sp )
	add x10, x0, 48
	sb x10, 66 ( sp )
	lui x10, %hi( .str )
	add fp, x10, %lo( .str )
	or x9, x9, 2
	add x10, x0, 2
	sb x0, 247 ( sp )
	add x11, x0, -1
	blt x11, x18, .LBB1_117
	jal x0, .LBB1_118
.LBB1_88:                               //  %hex.loopexit1
                                        //    in Loop: Header=BB1_7 Depth=1
	lui x10, %hi( .str )
	add fp, x10, %lo( .str )
	add x10, x0, 120
	and x11, x9, 32
	sw x18, 28 ( sp )               //  4-byte Folded Spill
	bltu x0, x11, .LBB1_78
.LBB1_89:                               //  %cond.false315
                                        //    in Loop: Header=BB1_7 Depth=1
	and x11, x9, 16
	bltu x0, x11, .LBB1_108
.LBB1_90:                               //  %cond.false320
                                        //    in Loop: Header=BB1_7 Depth=1
	and x11, x9, 64
	bltu x0, x11, .LBB1_228
.LBB1_91:                               //  %cond.false327
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x11, 248 ( sp )
	add x12, x11, 4
	sw x12, 248 ( sp )
	lw x27, 0 ( x11 )
	and x12, x9, 512
	mv x11, x0
	beq x12, x11, .LBB1_109
.LBB1_92:                               //  %cond.false327
                                        //    in Loop: Header=BB1_7 Depth=1
	and x27, x27, 255
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	mv x22, x0
	and x11, x9, 1
	bltu x0, x11, .LBB1_79
	jal x0, .LBB1_81
.LBB1_93:                               //  %cond.true206
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 248 ( sp )
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 248 ( sp )
	add x11, x10, 8
	lw x27, 0 ( x10 )
	sw x11, 248 ( sp )
	lw x22, 4 ( x10 )
	jal x0, .LBB1_116
.LBB1_94:                               //  %cond.true277
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x11, 248 ( sp )
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	add x10, x11, 4
	sw x10, 248 ( sp )
	add x10, x11, 8
	lw x27, 0 ( x11 )
	sw x10, 248 ( sp )
	lw x22, 4 ( x11 )
	seqz x10, x0
	sb x0, 247 ( sp )
	add x11, x0, -1
	blt x11, x18, .LBB1_117
	jal x0, .LBB1_118
.LBB1_95:                               //  %if.end459
                                        //    in Loop: Header=BB1_7 Depth=1
	sw x18, 28 ( sp )               //  4-byte Folded Spill
	sb fp, 68 ( sp )
.LBB1_96:                               //  %sw.epilog462
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x18, x26
	seqz x27, x0
	add x26, sp, 68
	sb x0, 247 ( sp )
	jal x0, .LBB1_112
.LBB1_97:                               //  %if.then248
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x27, 52 ( sp )               //  4-byte Folded Reload
	add x10, x0, 6
	bltu x27, x10, .LBB1_99
.LBB1_98:                               //  %if.then248
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x27, x10
.LBB1_99:                               //  %if.then248
                                        //    in Loop: Header=BB1_7 Depth=1
	lui x10, %hi( .str.1 )
	add x26, x10, %lo( .str.1 )
	jal x0, .LBB1_111
.LBB1_100:                              //  %cond.true140
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x27, 0 ( x10 )
.LBB1_101:                              //  %cond.end162
                                        //    in Loop: Header=BB1_7 Depth=1
	lw fp, 32 ( sp )                //  4-byte Folded Reload
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	sra x22, x27, 31&31
	bge x22, x0, .LBB1_64
.LBB1_102:                              //  %if.then368.thread
                                        //    in Loop: Header=BB1_7 Depth=1
	add x10, x0, -1
	bge x10, x18, .LBB1_104
.LBB1_103:                              //    in Loop: Header=BB1_7 Depth=1
	and x9, x9, -129
.LBB1_104:                              //  %if.then368.thread
                                        //    in Loop: Header=BB1_7 Depth=1
	add x10, x0, 45
	sb x10, 247 ( sp )
	snez x10, x27
	add x10, x10, x22
	sub x27, x0, x27
	sub x22, x0, x10
	jal x0, .LBB1_127
.LBB1_105:                              //  %cond.true211
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x27, 0 ( x10 )
	jal x0, .LBB1_115
.LBB1_106:                              //  %cond.true282
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x27, 0 ( x10 )
	jal x0, .LBB1_227
.LBB1_107:                              //  %if.then175
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x10, 0 ( x10 )
	sra x11, x18, 31&31
	sw x11, 4 ( x10 )
	sw x18, 0 ( x10 )
	mv fp, x23
	lbu x10, 0 ( fp )
	bltu x0, x10, .LBB1_5
	jal x0, .LBB1_7
.LBB1_108:                              //  %cond.true318
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x11, 248 ( sp )
	add x12, x11, 4
	sw x12, 248 ( sp )
	lw x27, 0 ( x11 )
.LBB1_109:                              //  %cond.false327
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	mv x22, x0
	and x11, x9, 1
	bltu x0, x11, .LBB1_79
	jal x0, .LBB1_81
.LBB1_110:                              //  %if.else268
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x10, x26
	jal strlen
	mv x27, x10
.LBB1_111:                              //  %sw.epilog462
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x10, x0
	mv x18, x10
.LBB1_112:                              //  %sw.epilog462
                                        //    in Loop: Header=BB1_7 Depth=1
	lw fp, 32 ( sp )                //  4-byte Folded Reload
	mv x10, x18
	sw fp, 32 ( sp )                //  4-byte Folded Spill
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	bge x27, x18, .LBB1_135
	jal x0, .LBB1_136
.LBB1_113:                              //  %cond.true145
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x10, 0 ( x10 )
	sll x10, x10, 16&31
	sra x27, x10, 16&31
	lw fp, 32 ( sp )                //  4-byte Folded Reload
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	sra x22, x27, 31&31
	bge x22, x0, .LBB1_64
	jal x0, .LBB1_102
.LBB1_114:                              //  %cond.true216
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lhu x27, 0 ( x10 )
.LBB1_115:                              //  %cond.false220
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	mv x22, x0
.LBB1_116:                              //  %cond.end236
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x10, x0
	and x9, x9, -1025
	sb x0, 247 ( sp )
	add x11, x0, -1
	bge x11, x18, .LBB1_118
.LBB1_117:                              //    in Loop: Header=BB1_7 Depth=1
	and x9, x9, -129
.LBB1_118:                              //  %number
                                        //    in Loop: Header=BB1_7 Depth=1
	bltu x0, x18, .LBB1_123
.LBB1_119:                              //  %number
                                        //    in Loop: Header=BB1_7 Depth=1
	or x11, x22, x27
	bltu x0, x11, .LBB1_123
.LBB1_120:                              //  %if.else439
                                        //    in Loop: Header=BB1_7 Depth=1
	bltu x0, x10, .LBB1_132
.LBB1_121:                              //  %if.else439
                                        //    in Loop: Header=BB1_7 Depth=1
	and x10, x9, 1
	beq x0, x10, .LBB1_132
.LBB1_122:                              //  %if.then446
                                        //    in Loop: Header=BB1_7 Depth=1
	add x10, x0, 48
	jal x0, .LBB1_131
.LBB1_123:                              //  %if.then368
                                        //    in Loop: Header=BB1_7 Depth=1
	beq x0, x10, .LBB1_204
.LBB1_124:                              //  %if.then368
                                        //    in Loop: Header=BB1_7 Depth=1
	xor x11, x10, 1
	beq x0, x11, .LBB1_127
.LBB1_125:                              //  %if.then368
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x26, 24 ( sp )               //  4-byte Folded Reload
	xor x10, x10, 2
	bltu x0, x10, .LBB1_209
.LBB1_126:                              //  %do.body430
                                        //    Parent Loop BB1_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	and x10, x27, 15
	add x10, x10, fp
	lb x10, 0 ( x10 )
	sll x11, x22, 28&31
	srl x22, x22, 4&31
	sb x10, -1 ( x26 )
	srl x10, x27, 4&31
	or x27, x11, x10
	add x26, x26, -1
	or x10, x22, x27
	bltu x0, x10, .LBB1_126
	jal x0, .LBB1_133
.LBB1_127:                              //  %sw.bb388
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x10, x0
	bne x22, x10, .LBB1_129
.LBB1_128:                              //    in Loop: Header=BB1_7 Depth=1
	sltiu x10, x27, 10
.LBB1_129:                              //  %sw.bb388
                                        //    in Loop: Header=BB1_7 Depth=1
	beq x0, x10, .LBB1_198
.LBB1_130:                              //  %if.then391
                                        //    in Loop: Header=BB1_7 Depth=1
	add x10, x27, 48
.LBB1_131:                              //  %if.end449
                                        //    in Loop: Header=BB1_7 Depth=1
	add x26, sp, 167
	sb x10, 167 ( sp )
	jal x0, .LBB1_133
.LBB1_132:                              //    in Loop: Header=BB1_7 Depth=1
	lw x26, 24 ( sp )               //  4-byte Folded Reload
.LBB1_133:                              //  %if.end449
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x22, 20 ( sp )               //  4-byte Folded Reload
.LBB1_134:                              //  %if.end449
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 24 ( sp )               //  4-byte Folded Reload
	sub x27, x10, x26
	mv x10, x18
	sw fp, 32 ( sp )                //  4-byte Folded Spill
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	blt x27, x18, .LBB1_136
.LBB1_135:                              //  %sw.epilog462
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x10, x27
.LBB1_136:                              //  %sw.epilog462
                                        //    in Loop: Header=BB1_7 Depth=1
	lbu x11, 247 ( sp )
	and x21, x9, 2
	snez x11, x11
	add fp, x11, x10
	srl x10, x21, 1&31
	beq x0, x10, .LBB1_138
.LBB1_137:                              //    in Loop: Header=BB1_7 Depth=1
	add fp, fp, 2
.LBB1_138:                              //  %sw.epilog462
                                        //    in Loop: Header=BB1_7 Depth=1
	add x11, x0, 16
	and x18, x9, 132
	sw fp, 40 ( sp )                //  4-byte Folded Spill
	beq x0, x18, .LBB1_139
.LBB1_147:                              //  %if.end525
                                        //    in Loop: Header=BB1_7 Depth=1
	lbu x10, 247 ( sp )
	beq x0, x10, .LBB1_153
.LBB1_148:                              //  %if.then527
                                        //    in Loop: Header=BB1_7 Depth=1
	add x12, sp, 232
	lw x10, 8 ( x12 )
	add x10, x10, 1
	sw x10, 8 ( x12 )
	seqz x10, x0
	sw x10, 4 ( x19 )
	add x10, sp, 247
	sw x10, 0 ( x19 )
	lw x10, 236 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 236 ( sp )
	bltu x0, x10, .LBB1_150
.LBB1_149:                              //  %if.then537
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x10, x25
	mv x11, x22
	jal __ssprint_r
	add x19, sp, 168
	add x11, x0, 16
	beq x0, x10, .LBB1_153
	jal x0, .LBB1_239
.LBB1_139:                              //  %if.then481
                                        //    in Loop: Header=BB1_7 Depth=1
	sub fp, x24, fp
	bge x0, fp, .LBB1_152
.LBB1_140:                              //  %while.cond486.preheader
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x19 )
	slti x10, fp, 17
	beq x0, x10, .LBB1_143
	jal x0, .LBB1_145
.LBB1_141:                              //    in Loop: Header=BB1_143 Depth=2
	add x19, x19, 8
.LBB1_142:                              //  %if.end505
                                        //    in Loop: Header=BB1_143 Depth=2
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	add fp, fp, -16
	add x11, x0, 16
	sw x10, 0 ( x19 )
	bge x11, fp, .LBB1_145
.LBB1_143:                              //  %while.body489
                                        //    Parent Loop BB1_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12, sp, 232
	lw x10, 8 ( x12 )
	sw x11, 4 ( x19 )
	add x10, x10, 16
	sw x10, 8 ( x12 )
	lw x10, 236 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 236 ( sp )
	bltu x0, x10, .LBB1_141
.LBB1_144:                              //  %if.then499
                                        //    in Loop: Header=BB1_143 Depth=2
	mv x10, x25
	mv x11, x22
	jal __ssprint_r
	add x19, sp, 168
	beq x0, x10, .LBB1_142
	jal x0, .LBB1_239
.LBB1_150:                              //    in Loop: Header=BB1_7 Depth=1
	add x19, x19, 8
	add x11, x0, 16
	bltu x0, x21, .LBB1_154
.LBB1_163:                              //    in Loop: Header=BB1_7 Depth=1
	add x21, sp, 232
	xor x10, x18, 128
	bltu x0, x10, .LBB1_164
.LBB1_157:                              //  %if.then569
                                        //    in Loop: Header=BB1_7 Depth=1
	sub fp, x24, fp
	bge x0, fp, .LBB1_164
.LBB1_158:                              //  %while.cond574.preheader
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	add x18, sp, 168
	sw x10, 0 ( x19 )
	slti x10, fp, 17
	beq x0, x10, .LBB1_161
	jal x0, .LBB1_165
.LBB1_159:                              //    in Loop: Header=BB1_161 Depth=2
	add x19, x19, 8
.LBB1_160:                              //  %if.end593
                                        //    in Loop: Header=BB1_161 Depth=2
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	add fp, fp, -16
	add x11, x0, 16
	sw x10, 0 ( x19 )
	bge x11, fp, .LBB1_165
.LBB1_161:                              //  %while.body577
                                        //    Parent Loop BB1_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 8 ( x21 )
	sw x11, 4 ( x19 )
	add x10, x10, 16
	sw x10, 8 ( x21 )
	lw x10, 236 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 236 ( sp )
	bltu x0, x10, .LBB1_159
.LBB1_162:                              //  %if.then587
                                        //    in Loop: Header=BB1_161 Depth=2
	mv x10, x25
	mv x11, x22
	mv x12, x21
	jal __ssprint_r
	mv x19, x18
	beq x0, x10, .LBB1_160
	jal x0, .LBB1_239
.LBB1_165:                              //  %while.end595
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 8 ( x21 )
	sw fp, 4 ( x19 )
	add x10, fp, x10
	sw x10, 8 ( x21 )
	lw x10, 236 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 236 ( sp )
	bltu x0, x10, .LBB1_178
.LBB1_166:                              //  %if.then605
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x10, x25
	mv x11, x22
	mv x12, x21
	jal __ssprint_r
	mv x19, x18
	add x11, x0, 16
	bltu x0, x10, .LBB1_239
.LBB1_167:                              //  %if.end613
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	sub fp, x10, x27
	bge x0, fp, .LBB1_179
.LBB1_168:                              //  %while.cond618.preheader
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x19 )
	slti x10, fp, 17
	beq x0, x10, .LBB1_171
	jal x0, .LBB1_173
.LBB1_169:                              //    in Loop: Header=BB1_171 Depth=2
	add x19, x19, 8
.LBB1_170:                              //  %if.end637
                                        //    in Loop: Header=BB1_171 Depth=2
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	add fp, fp, -16
	add x11, x0, 16
	sw x10, 0 ( x19 )
	bge x11, fp, .LBB1_173
.LBB1_171:                              //  %while.body621
                                        //    Parent Loop BB1_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 8 ( x21 )
	sw x11, 4 ( x19 )
	add x10, x10, 16
	sw x10, 8 ( x21 )
	lw x10, 236 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 236 ( sp )
	bltu x0, x10, .LBB1_169
.LBB1_172:                              //  %if.then631
                                        //    in Loop: Header=BB1_171 Depth=2
	mv x10, x25
	mv x11, x22
	mv x12, x21
	jal __ssprint_r
	mv x19, x18
	beq x0, x10, .LBB1_170
	jal x0, .LBB1_239
.LBB1_173:                              //  %while.end639
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 8 ( x21 )
	sw fp, 4 ( x19 )
	add x10, fp, x10
	sw x10, 8 ( x21 )
	lw x10, 236 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 236 ( sp )
	bltu x0, x10, .LBB1_176
.LBB1_174:                              //  %if.then649
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x10, x25
	mv x11, x22
	mv x12, x21
	jal __ssprint_r
	mv x19, x18
	beq x0, x10, .LBB1_179
	jal x0, .LBB1_239
.LBB1_176:                              //    in Loop: Header=BB1_7 Depth=1
	add x19, x19, 8
	jal x0, .LBB1_179
.LBB1_145:                              //  %while.end507
                                        //    in Loop: Header=BB1_7 Depth=1
	add x12, sp, 232
	lw x10, 8 ( x12 )
	sw fp, 4 ( x19 )
	add x10, fp, x10
	sw x10, 8 ( x12 )
	lw x10, 236 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 236 ( sp )
	bltu x0, x10, .LBB1_151
.LBB1_146:                              //  %if.then517
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x10, x25
	mv x11, x22
	jal __ssprint_r
	lw fp, 40 ( sp )                //  4-byte Folded Reload
	add x19, sp, 168
	add x11, x0, 16
	beq x0, x10, .LBB1_147
	jal x0, .LBB1_239
.LBB1_178:                              //    in Loop: Header=BB1_7 Depth=1
	add x19, x19, 8
	add x11, x0, 16
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	sub fp, x10, x27
	blt x0, fp, .LBB1_168
	jal x0, .LBB1_179
.LBB1_151:                              //    in Loop: Header=BB1_7 Depth=1
	add x19, x19, 8
	add x11, x0, 16
.LBB1_152:                              //  %if.end525
                                        //    in Loop: Header=BB1_7 Depth=1
	lw fp, 40 ( sp )                //  4-byte Folded Reload
	lbu x10, 247 ( sp )
	bltu x0, x10, .LBB1_148
.LBB1_153:                              //  %if.end544
                                        //    in Loop: Header=BB1_7 Depth=1
	beq x0, x21, .LBB1_163
.LBB1_154:                              //  %if.then547
                                        //    in Loop: Header=BB1_7 Depth=1
	add x21, sp, 232
	lw x10, 8 ( x21 )
	add x10, x10, 2
	sw x10, 8 ( x21 )
	add x10, x0, 2
	sw x10, 4 ( x19 )
	add x10, sp, 66
	sw x10, 0 ( x19 )
	lw x10, 236 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 236 ( sp )
	bltu x0, x10, .LBB1_175
.LBB1_155:                              //  %if.then558
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x10, x25
	mv x11, x22
	mv x12, x21
	jal __ssprint_r
	add x19, sp, 168
	add x11, x0, 16
	bltu x0, x10, .LBB1_239
.LBB1_156:                              //  %if.end565
                                        //    in Loop: Header=BB1_7 Depth=1
	xor x10, x18, 128
	beq x0, x10, .LBB1_157
.LBB1_164:                              //    in Loop: Header=BB1_7 Depth=1
	add x18, sp, 168
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	sub fp, x10, x27
	blt x0, fp, .LBB1_168
.LBB1_179:                              //  %if.end656
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 8 ( x21 )
	sw x27, 4 ( x19 )
	sw x26, 0 ( x19 )
	add x10, x27, x10
	sw x10, 8 ( x21 )
	lw x10, 236 ( sp )
	add x11, x10, 1
	slti x10, x10, 7
	sw x11, 236 ( sp )
	bltu x0, x10, .LBB1_189
.LBB1_180:                              //  %if.then666
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x10, x25
	mv x11, x22
	mv x12, x21
	jal __ssprint_r
	mv x11, x18
	lw x18, 28 ( sp )               //  4-byte Folded Reload
	mv x26, x0
	add x27, x0, 122
	bltu x0, x10, .LBB1_234
.LBB1_181:                              //  %if.end672
                                        //    in Loop: Header=BB1_7 Depth=1
	and x10, x9, 4
	beq x0, x10, .LBB1_192
.LBB1_182:                              //  %if.then675
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	sub fp, x24, x10
	bge x0, fp, .LBB1_192
.LBB1_183:                              //  %while.cond680.preheader
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x11 )
	slti x10, fp, 17
	bltu x0, x10, .LBB1_190
.LBB1_184:                              //  %while.body683.preheader
                                        //    in Loop: Header=BB1_7 Depth=1
	add x12, x0, 16
	jal x0, .LBB1_187
.LBB1_185:                              //    in Loop: Header=BB1_187 Depth=2
	add x11, x11, 8
.LBB1_186:                              //  %if.end699
                                        //    in Loop: Header=BB1_187 Depth=2
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	add fp, fp, -16
	add x12, x0, 16
	sw x10, 0 ( x11 )
	bge x12, fp, .LBB1_190
.LBB1_187:                              //  %while.body683
                                        //    Parent Loop BB1_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 8 ( x21 )
	sw x12, 4 ( x11 )
	add x10, x10, 16
	sw x10, 8 ( x21 )
	lw x10, 236 ( sp )
	add x12, x10, 1
	slti x10, x10, 7
	sw x12, 236 ( sp )
	bltu x0, x10, .LBB1_185
.LBB1_188:                              //  %if.then693
                                        //    in Loop: Header=BB1_187 Depth=2
	mv x10, x25
	mv x11, x22
	mv x12, x21
	jal __ssprint_r
	add x11, sp, 168
	beq x0, x10, .LBB1_186
	jal x0, .LBB1_234
.LBB1_189:                              //    in Loop: Header=BB1_7 Depth=1
	lw x18, 28 ( sp )               //  4-byte Folded Reload
	add x11, x19, 8
	mv x26, x0
	add x27, x0, 122
	and x10, x9, 4
	bltu x0, x10, .LBB1_182
	jal x0, .LBB1_192
.LBB1_175:                              //    in Loop: Header=BB1_7 Depth=1
	add x19, x19, 8
	add x11, x0, 16
	xor x10, x18, 128
	beq x0, x10, .LBB1_157
	jal x0, .LBB1_164
.LBB1_190:                              //    in Loop: Header=BB1_7 Depth=1
	add x10, x11, 4
	sw fp, 0 ( x10 )
	lw x10, 8 ( x21 )
	lw x11, 236 ( sp )
	add x10, fp, x10
	add x12, x11, 1
	slti x11, x11, 7
	sw x10, 8 ( x21 )
	sw x12, 236 ( sp )
	bltu x0, x11, .LBB1_193
.LBB1_191:                              //  %if.then711
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x10, x25
	mv x11, x22
	mv x12, x21
	jal __ssprint_r
	bltu x0, x10, .LBB1_234
.LBB1_192:                              //  %if.end719thread-pre-split
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 240 ( sp )
.LBB1_193:                              //  %if.end719
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x11, 40 ( sp )               //  4-byte Folded Reload
	blt x11, x24, .LBB1_195
.LBB1_194:                              //  %if.end719
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x24, x11
.LBB1_195:                              //  %if.end719
                                        //    in Loop: Header=BB1_7 Depth=1
	add x18, x18, x24
	beq x0, x10, .LBB1_197
.LBB1_196:                              //  %land.lhs.true729
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x10, x25
	mv x11, x22
	mv x12, x21
	jal __ssprint_r
	bltu x0, x10, .LBB1_234
.LBB1_197:                              //  %if.end733
                                        //    in Loop: Header=BB1_7 Depth=1
	sw x0, 236 ( sp )
	add x19, sp, 168
	mv fp, x23
	lbu x10, 0 ( fp )
	bltu x0, x10, .LBB1_5
	jal x0, .LBB1_7
.LBB1_198:                              //  %do.body396.preheader
                                        //    in Loop: Header=BB1_7 Depth=1
	and x10, x9, 1024
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	bltu x0, x10, .LBB1_210
.LBB1_199:                              //  %do.body396.us.preheader
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x26, 24 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_202
.LBB1_200:                              //  %do.body396.us
                                        //    in Loop: Header=BB1_202 Depth=2
	snez x11, x22
.LBB1_201:                              //  %do.body396.us
                                        //    in Loop: Header=BB1_202 Depth=2
	lw x25, 44 ( sp )               //  4-byte Folded Reload
	sub x10, x27, x10
	or x10, x10, 48
	sb x10, -1 ( x26 )
	add x26, x26, -1
	mv x27, x9
	mv x22, x21
	beq x0, x11, .LBB1_222
.LBB1_202:                              //  %do.body396.us
                                        //    Parent Loop BB1_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x25, x0, 10
	mv x18, x0
	mv x10, x27
	mv x11, x22
	mv x12, x25
	mv x13, x18
	jal __udivdi3
	mv x12, x25
	mv x13, x18
	mv x9, x10
	mv x21, x11
	jal __muldi3
	bne x22, x18, .LBB1_200
.LBB1_203:                              //    in Loop: Header=BB1_202 Depth=2
	add x11, x0, 9
	sltu x11, x11, x27
	jal x0, .LBB1_201
.LBB1_204:                              //  %do.body371.preheader
                                        //    in Loop: Header=BB1_7 Depth=1
	add x26, sp, 167
.LBB1_205:                              //  %do.body371
                                        //    Parent Loop BB1_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sll x11, x22, 29&31
	srl x10, x27, 3&31
	or x11, x11, x10
	and x10, x27, 7
	or x10, x10, 48
	srl x22, x22, 3&31
	sb x10, 0 ( x26 )
	add x26, x26, -1
	or x12, x22, x11
	mv x27, x11
	bltu x0, x12, .LBB1_205
.LBB1_206:                              //  %do.end378
                                        //    in Loop: Header=BB1_7 Depth=1
	add x11, x26, 1
	and x12, x9, 1
	beq x0, x12, .LBB1_225
.LBB1_207:                              //  %do.end378
                                        //    in Loop: Header=BB1_7 Depth=1
	xor x10, x10, 48
	beq x0, x10, .LBB1_225
.LBB1_208:                              //  %if.then385
                                        //    in Loop: Header=BB1_7 Depth=1
	add x10, x0, 48
	sb x10, 0 ( x26 )
	jal x0, .LBB1_133
.LBB1_209:                              //  %sw.default
                                        //    in Loop: Header=BB1_7 Depth=1
	lui x10, %hi( .str.3 )
	add x26, x10, %lo( .str.3 )
	mv x10, x26
	jal strlen
	lw x22, 20 ( sp )               //  4-byte Folded Reload
	mv x27, x10
	mv x10, x18
	sw fp, 32 ( sp )                //  4-byte Folded Spill
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	bge x27, x18, .LBB1_135
	jal x0, .LBB1_136
.LBB1_210:                              //  %do.body396.preheader5
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	lw x26, 24 ( sp )               //  4-byte Folded Reload
	sw fp, 32 ( sp )                //  4-byte Folded Spill
	mv fp, x0
	sub x10, x0, x10
	sw x10, 40 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB1_213
.LBB1_211:                              //  %if.end424
                                        //    in Loop: Header=BB1_213 Depth=2
	snez x10, x22
.LBB1_212:                              //  %if.end424
                                        //    in Loop: Header=BB1_213 Depth=2
	lw x25, 44 ( sp )               //  4-byte Folded Reload
	mv x27, x21
	mv x22, x9
	sw x18, 48 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB1_223
.LBB1_213:                              //  %do.body396
                                        //    Parent Loop BB1_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x18, x0, 10
	mv x25, x0
	mv x10, x27
	mv x11, x22
	mv x12, x18
	mv x13, x25
	jal __udivdi3
	mv x12, x18
	mv x13, x25
	mv x21, x10
	mv x9, x11
	jal __muldi3
	lw x18, 48 ( sp )               //  4-byte Folded Reload
	sub x10, x27, x10
	or x10, x10, 48
	sb x10, -1 ( x26 )
	lb x10, 0 ( x18 )
	add x26, x26, -1
	add fp, fp, 1
	bne fp, x10, .LBB1_220
.LBB1_214:                              //  %land.lhs.true407
                                        //    in Loop: Header=BB1_213 Depth=2
	beq x22, x25, .LBB1_219
.LBB1_215:                              //  %land.lhs.true407
                                        //    in Loop: Header=BB1_213 Depth=2
	mv x11, x25
	bltu x0, x11, .LBB1_220
.LBB1_216:                              //  %land.lhs.true407
                                        //    in Loop: Header=BB1_213 Depth=2
	and x10, x10, 255
	xor x10, x10, 127
	beq x0, x10, .LBB1_220
.LBB1_217:                              //  %if.then414
                                        //    in Loop: Header=BB1_213 Depth=2
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	lw x11, 12 ( sp )               //  4-byte Folded Reload
	lw x12, 16 ( sp )               //  4-byte Folded Reload
	add x26, x10, x26
	mv x10, x26
	jal strncpy
	lbu x10, 1 ( x18 )
	mv fp, x0
	beq x10, fp, .LBB1_220
.LBB1_218:                              //  %if.then414
                                        //    in Loop: Header=BB1_213 Depth=2
	add x18, x18, 1
	bne x22, x25, .LBB1_211
	jal x0, .LBB1_221
.LBB1_219:                              //    in Loop: Header=BB1_213 Depth=2
	sltiu x11, x27, 10
	beq x0, x11, .LBB1_216
.LBB1_220:                              //  %if.end424
                                        //    in Loop: Header=BB1_213 Depth=2
	bne x22, x25, .LBB1_211
.LBB1_221:                              //    in Loop: Header=BB1_213 Depth=2
	add x10, x0, 9
	sltu x10, x10, x27
	jal x0, .LBB1_212
.LBB1_222:                              //    in Loop: Header=BB1_7 Depth=1
	lw x22, 20 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_224
.LBB1_223:                              //    in Loop: Header=BB1_7 Depth=1
	lw x22, 20 ( sp )               //  4-byte Folded Reload
	lw fp, 32 ( sp )                //  4-byte Folded Reload
.LBB1_224:                              //  %if.end449
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_134
.LBB1_225:                              //    in Loop: Header=BB1_7 Depth=1
	mv x26, x11
	jal x0, .LBB1_133
.LBB1_226:                              //  %cond.true287
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lhu x27, 0 ( x10 )
.LBB1_227:                              //  %cond.false291
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	mv x22, x0
	seqz x10, x0
	sb x0, 247 ( sp )
	add x11, x0, -1
	blt x11, x18, .LBB1_117
	jal x0, .LBB1_118
.LBB1_228:                              //  %cond.true323
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x11, 248 ( sp )
	add x12, x11, 4
	sw x12, 248 ( sp )
	lhu x27, 0 ( x11 )
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	mv x22, x0
	and x11, x9, 1
	bltu x0, x11, .LBB1_79
	jal x0, .LBB1_81
.LBB1_229:                              //  %if.then186
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x10, 0 ( x10 )
	sh x18, 0 ( x10 )
	mv fp, x23
	lbu x10, 0 ( fp )
	bltu x0, x10, .LBB1_5
	jal x0, .LBB1_7
.LBB1_230:                              //  %if.then192
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x10, 0 ( x10 )
	sb x18, 0 ( x10 )
	mv fp, x23
	lbu x10, 0 ( fp )
	bltu x0, x10, .LBB1_5
	jal x0, .LBB1_7
.LBB1_239:
	lw x18, 28 ( sp )               //  4-byte Folded Reload
	lbu x10, 12 ( x22 )
	mv x11, x0
	and x10, x10, 64
	bne x10, x11, .LBB1_235
	jal x0, .LBB1_236
.LBB1_231:                              //  %done
	lw x10, 240 ( sp )
	beq x0, x10, .LBB1_233
.LBB1_232:                              //  %land.lhs.true742
	add x12, sp, 232
	mv x10, x25
	mv x11, x22
	jal __ssprint_r
	bltu x0, x10, .LBB1_234
.LBB1_233:                              //  %if.end746
	sw x0, 236 ( sp )
.LBB1_234:                              //  %if.end752
	lbu x10, 12 ( x22 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB1_236
.LBB1_235:                              //  %if.end752
	add x18, x0, -1
.LBB1_236:                              //  %cleanup
	mv x10, x18
	lw fp, 252 ( sp )               //  4-byte Folded Reload
	lw x27, 256 ( sp )              //  4-byte Folded Reload
	lw x26, 260 ( sp )              //  4-byte Folded Reload
	lw x25, 264 ( sp )              //  4-byte Folded Reload
	lw x24, 268 ( sp )              //  4-byte Folded Reload
	lw x23, 272 ( sp )              //  4-byte Folded Reload
	lw x22, 276 ( sp )              //  4-byte Folded Reload
	lw x21, 280 ( sp )              //  4-byte Folded Reload
	lw x20, 284 ( sp )              //  4-byte Folded Reload
	lw x19, 288 ( sp )              //  4-byte Folded Reload
	lw x18, 292 ( sp )              //  4-byte Folded Reload
	lw x9, 296 ( sp )               //  4-byte Folded Reload
	lw ra, 300 ( sp )               //  4-byte Folded Reload
	add sp, sp, 304
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_240:                              //  %if.then6
	add x10, x0, 12
	add x18, x0, -1
	sw x10, 0 ( x25 )
	jal x0, .LBB1_236
.Lfunc_end1:
	.size	_svfiprintf_r, .Lfunc_end1-_svfiprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_231
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_28
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_30
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_31
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_36
	.long	.LBB1_39
	.long	.LBB1_95
	.long	.LBB1_38
	.long	.LBB1_20
	.long	.LBB1_95
	.long	.LBB1_42
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_51
	.long	.LBB1_57
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_65
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_52
	.long	.LBB1_95
	.long	.LBB1_71
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_77
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_51
	.long	.LBB1_58
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_43
	.long	.LBB1_58
	.long	.LBB1_27
	.long	.LBB1_95
	.long	.LBB1_45
	.long	.LBB1_95
	.long	.LBB1_82
	.long	.LBB1_66
	.long	.LBB1_87
	.long	.LBB1_27
	.long	.LBB1_95
	.long	.LBB1_52
	.long	.LBB1_41
	.long	.LBB1_72
	.long	.LBB1_95
	.long	.LBB1_95
	.long	.LBB1_88
	.long	.LBB1_95
	.long	.LBB1_41
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
