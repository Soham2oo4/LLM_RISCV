	.text
	.file	"vfiprintf.c"
	.globl	__sprint_r              //  -- Begin function __sprint_r
	.type	__sprint_r,@function
__sprint_r:                             //  @__sprint_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv fp, x12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x10
	lw x10, 8 ( fp )
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x11
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %if.end
	lbu x11, 101 ( x18 )
	and x11, x11, 32
	bltu x0, x11, .LBB0_3
.LBB0_11:                               //  %if.else
	mv x10, x19
	mv x11, x18
	mv x12, fp
	jal __sfvwrite_r
	mv x9, x10
	jal x0, .LBB0_12
.LBB0_1:
	mv x9, x0
	jal x0, .LBB0_13
.LBB0_3:                                //  %for.body.preheader
	lw x21, 0 ( fp )
	mv x20, x0
	add x9, x0, -1
	lw x22, 4 ( x21 )
	srl x23, x22, 2&31
	bltu x0, x23, .LBB0_5
.LBB0_9:                                //  %for.inc10
                                        //  =>This Inner Loop Header: Depth=1
	and x11, x22, -4
	sub x10, x10, x11
	add x21, x21, 8
	sw x10, 8 ( fp )
	beq x0, x10, .LBB0_10
.LBB0_4:                                //  %for.body
                                        //    in Loop: Header=BB0_9 Depth=1
	lw x22, 4 ( x21 )
	srl x23, x22, 2&31
	beq x0, x23, .LBB0_9
.LBB0_5:
	lw x24, 0 ( x21 )
.LBB0_7:                                //  %for.body6
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x24 )
	mv x10, x19
	mv x12, x18
	jal _fputwc_r
	xor x10, x10, -1
	beq x0, x10, .LBB0_12
.LBB0_6:                                //  %for.cond4
                                        //    in Loop: Header=BB0_7 Depth=1
	add x24, x24, 4
	add x23, x23, -1
	bltu x0, x23, .LBB0_7
.LBB0_8:                                //  %for.inc10.loopexit
	lw x10, 8 ( fp )
	jal x0, .LBB0_9
.LBB0_10:
	mv x9, x20
.LBB0_12:                               //  %out
	sw x0, 8 ( fp )
.LBB0_13:                               //  %cleanup20
	sw x0, 4 ( fp )
	mv x10, x9
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x24, 12 ( sp )               //  4-byte Folded Reload
	lw x23, 16 ( sp )               //  4-byte Folded Reload
	lw x22, 20 ( sp )               //  4-byte Folded Reload
	lw x21, 24 ( sp )               //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__sprint_r, .Lfunc_end0-__sprint_r
	.cfi_endproc
                                        //  -- End function
	.globl	vfiprintf               //  -- Begin function vfiprintf
	.type	vfiprintf,@function
vfiprintf:                              //  @vfiprintf
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
	j _vfiprintf_r
.Lfunc_end1:
	.size	vfiprintf, .Lfunc_end1-vfiprintf
	.cfi_endproc
                                        //  -- End function
	.globl	_vfiprintf_r            //  -- Begin function _vfiprintf_r
	.type	_vfiprintf_r,@function
_vfiprintf_r:                           //  @_vfiprintf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -304
	.cfi_adjust_cfa_offset 304
	sw x9, 296 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x23, 272 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x25, 264 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw fp, 252 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv x9, x13
	mv x23, x12
	mv fp, x11
	mv x25, x10
	sw ra, 300 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 292 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 288 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 284 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 280 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 276 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x24, 268 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26, 260 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 256 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x9, 248 ( sp )
	beq x0, x25, .LBB2_2
.LBB2_1:                                //  %land.lhs.true
	lw x10, 56 ( x25 )
	bltu x0, x10, .LBB2_2
.LBB2_414:                              //  %land.lhs.true
	jal x0, .LBB2_384
.LBB2_2:                                //  %if.end
	lhu x10, 12 ( fp )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB2_4
.LBB2_3:                                //  %if.then12
	lw x12, 100 ( fp )
	lui x13, %hi( -8193 )
	add x13, x13, %lo( -8193 )
	or x10, x11, x10
	and x12, x13, x12
	sw x12, 100 ( fp )
	sh x10, 12 ( fp )
.LBB2_4:                                //  %do.end20
	and x11, x10, 8
	beq x0, x11, .LBB2_9
.LBB2_5:                                //  %lor.lhs.false
	lw x11, 16 ( fp )
	beq x0, x11, .LBB2_9
.LBB2_6:                                //  %if.end42
	and x10, x10, 26
	xor x10, x10, 10
	bltu x0, x10, .LBB2_11
.LBB2_7:                                //  %land.lhs.true48
	lh x10, 14 ( fp )
	blt x10, x0, .LBB2_11
.LBB2_8:                                //  %if.then52
	mv x10, x25
	mv x11, fp
	mv x12, x23
	mv x13, x9
	jal __sbprintf
	mv x24, x10
	jal x0, .LBB2_401
.LBB2_9:                                //  %land.lhs.true27
	mv x10, x25
	mv x11, fp
	jal __swsetup_r
	beq x0, x10, .LBB2_10
.LBB2_415:                              //  %land.lhs.true27
	jal x0, .LBB2_400
.LBB2_10:                               //  %land.lhs.true27.if.end42_crit_edge
	lhu x10, 12 ( fp )
	and x10, x10, 26
	xor x10, x10, 10
	beq x0, x10, .LBB2_7
.LBB2_11:                               //  %if.end66
	add x10, sp, 232
	sw x0, 8 ( x10 )
	add x10, sp, 68
	add x10, x10, 100
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _vfiprintf_r.blanks )
	add x10, x10, %lo( _vfiprintf_r.blanks )
	sw x10, 28 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _vfiprintf_r.zeroes )
	add x10, x10, %lo( _vfiprintf_r.zeroes )
	mv x21, x0
	sw x10, 44 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( JTI2_0 )
	add x22, sp, 168
	add x10, x10, %lo( JTI2_0 )
	add x26, x0, -1
	mv x24, x21
	add x20, x0, 10
	add x27, x0, 122
	sw x22, 232 ( sp )
	sw x21, 12 ( sp )               //  4-byte Folded Spill
	sw x0, 236 ( sp )
	sw x10, 48 ( sp )               //  4-byte Folded Spill
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	sw x21, 36 ( sp )               //  4-byte Folded Spill
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	sw x25, 60 ( sp )               //  4-byte Folded Spill
	sw x22, 56 ( sp )               //  4-byte Folded Spill
	mv x9, x23
	lbu x10, 0 ( x9 )
	beq x0, x10, .LBB2_14
.LBB2_12:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	xor x11, x10, 37
	beq x0, x11, .LBB2_14
.LBB2_13:                               //  %while.body
                                        //    in Loop: Header=BB2_12 Depth=1
	add x9, x9, 1
	lbu x10, 0 ( x9 )
	bltu x0, x10, .LBB2_12
.LBB2_14:                               //  %while.end
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB2_62 Depth 2
                                        //      Child Loop BB2_65 Depth 2
                                        //      Child Loop BB2_24 Depth 2
                                        //        Child Loop BB2_25 Depth 3
                                        //          Child Loop BB2_28 Depth 4
                                        //            Child Loop BB2_33 Depth 5
                                        //          Child Loop BB2_27 Depth 4
                                        //      Child Loop BB2_148 Depth 2
                                        //      Child Loop BB2_163 Depth 2
                                        //      Child Loop BB2_171 Depth 2
                                        //      Child Loop BB2_157 Depth 2
                                        //      Child Loop BB2_202 Depth 2
                                        //        Child Loop BB2_208 Depth 3
                                        //        Child Loop BB2_211 Depth 3
                                        //      Child Loop BB2_351 Depth 2
                                        //      Child Loop BB2_354 Depth 2
                                        //      Child Loop BB2_248 Depth 2
                                        //      Child Loop BB2_251 Depth 2
                                        //      Child Loop BB2_258 Depth 2
                                        //      Child Loop BB2_261 Depth 2
                                        //      Child Loop BB2_231 Depth 2
                                        //        Child Loop BB2_237 Depth 3
                                        //        Child Loop BB2_240 Depth 3
                                        //      Child Loop BB2_358 Depth 2
                                        //      Child Loop BB2_361 Depth 2
                                        //      Child Loop BB2_274 Depth 2
                                        //        Child Loop BB2_280 Depth 3
                                        //        Child Loop BB2_283 Depth 3
                                        //      Child Loop BB2_344 Depth 2
                                        //      Child Loop BB2_347 Depth 2
                                        //      Child Loop BB2_336 Depth 2
                                        //      Child Loop BB2_339 Depth 2
                                        //      Child Loop BB2_313 Depth 2
                                        //        Child Loop BB2_319 Depth 3
                                        //        Child Loop BB2_322 Depth 3
                                        //      Child Loop BB2_370 Depth 2
                                        //      Child Loop BB2_373 Depth 2
                                        //      Child Loop BB2_327 Depth 2
                                        //      Child Loop BB2_330 Depth 2
	sub x18, x9, x23
	beq x0, x18, .LBB2_19
.LBB2_15:                               //  %if.then75
                                        //    in Loop: Header=BB2_14 Depth=1
	add x10, sp, 232
	mv x11, x10
	lw x10, 8 ( x11 )
	lw x13, 56 ( sp )               //  4-byte Folded Reload
	add x10, x18, x10
	sw x10, 8 ( x11 )
	lw x11, 236 ( sp )
	sw x18, 4 ( x13 )
	sw x23, 0 ( x13 )
	add x12, x11, 1
	slti x11, x11, 7
	sw x12, 236 ( sp )
	bltu x0, x11, .LBB2_20
.LBB2_16:                               //  %if.then80
                                        //    in Loop: Header=BB2_14 Depth=1
	beq x0, x10, .LBB2_21
.LBB2_17:                               //  %if.end.i1200
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x11, 101 ( fp )
	and x11, x11, 32
	bltu x0, x11, .LBB2_61
.LBB2_18:                               //  %__sprint_r.exit1229
                                        //    in Loop: Header=BB2_14 Depth=1
	add x19, sp, 232
	mv x10, x25
	mv x11, fp
	mv x12, x19
	jal __sfvwrite_r
	add x27, x0, 122
	sw x0, 8 ( x19 )
	sw x0, 236 ( sp )
	sw x22, 56 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB2_22
	jal x0, .LBB2_399
.LBB2_19:                               //    in Loop: Header=BB2_14 Depth=1
	sw x24, 32 ( sp )               //  4-byte Folded Spill
	add x18, x0, 16
	bltu x0, x10, .LBB2_23
	jal x0, .LBB2_386
.LBB2_20:                               //    in Loop: Header=BB2_14 Depth=1
	add x13, x13, 8
	sw x13, 56 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB2_22
.LBB2_21:                               //  %__sprint_r.exit1229.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 236 ( sp )
	sw x22, 56 ( sp )               //  4-byte Folded Spill
.LBB2_22:                               //  %if.end86
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x10, 0 ( x9 )
	add x24, x24, x18
	sw x24, 32 ( sp )               //  4-byte Folded Spill
	add x18, x0, 16
	bltu x0, x10, .LBB2_23
.LBB2_416:                              //  %if.end86
	jal x0, .LBB2_386
.LBB2_23:                               //  %if.end93
                                        //    in Loop: Header=BB2_14 Depth=1
	add x11, x9, 1
	mv x19, x21
	mv x24, x21
	sb x0, 247 ( sp )
	sw x26, 52 ( sp )               //  4-byte Folded Spill
.LBB2_24:                               //  %rflag
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_25 Depth 3
                                        //          Child Loop BB2_28 Depth 4
                                        //            Child Loop BB2_33 Depth 5
                                        //          Child Loop BB2_27 Depth 4
	lb x9, 0 ( x11 )
	add x23, x11, 1
.LBB2_25:                               //  %reswitch
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_24 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB2_28 Depth 4
                                        //            Child Loop BB2_33 Depth 5
                                        //          Child Loop BB2_27 Depth 4
	add x10, x9, -49
	sltiu x10, x10, 9
	beq x0, x10, .LBB2_28
.LBB2_26:                               //  %do.body156.preheader
                                        //    in Loop: Header=BB2_25 Depth=3
	mv x24, x21
.LBB2_27:                               //  %do.body156
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_24 Depth=2
                                        //        Parent Loop BB2_25 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	mv x10, x24
	mv x11, x20
	jal __mulsi3
	add x10, x10, x9
	lb x9, 0 ( x23 )
	add x24, x10, -48
	add x23, x23, 1
	add x10, x9, -48
	sltiu x10, x10, 10
	bltu x0, x10, .LBB2_27
	jal x0, .LBB2_25
.LBB2_36:                               //    in Loop: Header=BB2_28 Depth=4
	mv x10, x0
	mv x23, x11
	add x18, x0, 16
	sw x10, 52 ( sp )               //  4-byte Folded Spill
	add x10, x9, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB2_26
.LBB2_28:                               //  %reswitch
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_24 Depth=2
                                        //        Parent Loop BB2_25 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB2_33 Depth 5
	bltu x27, x9, .LBB2_113
.LBB2_29:                               //  %reswitch
                                        //    in Loop: Header=BB2_28 Depth=4
	lw x11, 48 ( sp )               //  4-byte Folded Reload
	sll x10, x9, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB2_30:                               //  %sw.bb126
                                        //    in Loop: Header=BB2_28 Depth=4
	lb x9, 0 ( x23 )
	add x11, x23, 1
	xor x10, x9, 42
	beq x0, x10, .LBB2_59
.LBB2_31:                               //  %while.cond138.preheader
                                        //    in Loop: Header=BB2_28 Depth=4
	add x18, x9, -48
	add x10, x0, 9
	bltu x10, x18, .LBB2_36
.LBB2_32:                               //  %while.body142.preheader
                                        //    in Loop: Header=BB2_28 Depth=4
	mv x10, x0
	mv x23, x11
.LBB2_33:                               //  %while.body142
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_24 Depth=2
                                        //        Parent Loop BB2_25 Depth=3
                                        //          Parent Loop BB2_28 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	add x11, x0, 10
	jal __mulsi3
	lb x9, 0 ( x23 )
	add x10, x10, x18
	add x23, x23, 1
	add x18, x9, -48
	sltiu x11, x18, 10
	bltu x0, x11, .LBB2_33
.LBB2_34:                               //  %while.end147
                                        //    in Loop: Header=BB2_28 Depth=4
	add x11, x0, -1
	add x18, x0, 16
	sw x11, 52 ( sp )               //  4-byte Folded Spill
	blt x10, x0, .LBB2_25
.LBB2_35:                               //  %while.end147.thread
                                        //    in Loop: Header=BB2_28 Depth=4
	sw x10, 52 ( sp )               //  4-byte Folded Spill
	add x10, x9, -49
	sltiu x10, x10, 9
	bltu x0, x10, .LBB2_26
	jal x0, .LBB2_28
.LBB2_37:                               //  %sw.bb188
                                        //    in Loop: Header=BB2_24 Depth=2
	or x19, x19, 32
	mv x11, x23
	jal x0, .LBB2_24
.LBB2_38:                               //  %sw.bb112
                                        //    in Loop: Header=BB2_24 Depth=2
	lbu x10, 247 ( sp )
	mv x11, x23
	bltu x0, x10, .LBB2_24
.LBB2_39:                               //  %if.then114
                                        //    in Loop: Header=BB2_24 Depth=2
	add x10, x0, 32
	jal x0, .LBB2_50
.LBB2_40:                               //  %sw.bb116
                                        //    in Loop: Header=BB2_24 Depth=2
	or x19, x19, 1
	mv x11, x23
	jal x0, .LBB2_24
.LBB2_41:                               //  %sw.bb
                                        //    in Loop: Header=BB2_24 Depth=2
	mv x10, x25
	jal _localeconv_r
	lw x10, 4 ( x10 )
	sw x10, 8 ( sp )                //  4-byte Folded Spill
	jal strlen
	mv x9, x10
	mv x10, x25
	jal _localeconv_r
	lw x10, 8 ( x10 )
	mv x11, x23
	sw x9, 12 ( sp )                //  4-byte Folded Spill
	sw x10, 36 ( sp )               //  4-byte Folded Spill
	beq x0, x9, .LBB2_24
.LBB2_42:                               //  %sw.bb
                                        //    in Loop: Header=BB2_24 Depth=2
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	mv x11, x23
	beq x0, x10, .LBB2_24
.LBB2_43:                               //  %land.lhs.true106
                                        //    in Loop: Header=BB2_24 Depth=2
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	mv x11, x0
	lbu x10, 0 ( x10 )
	beq x10, x11, .LBB2_45
.LBB2_44:                               //  %land.lhs.true106
                                        //    in Loop: Header=BB2_24 Depth=2
	or x19, x19, 1024
.LBB2_45:                               //  %land.lhs.true106
                                        //    in Loop: Header=BB2_24 Depth=2
	mv x11, x23
	jal x0, .LBB2_24
.LBB2_46:                               //  %sw.bb118
                                        //    in Loop: Header=BB2_24 Depth=2
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x24, 0 ( x10 )
	mv x11, x23
	bge x24, x0, .LBB2_24
.LBB2_47:                               //  %if.end122
                                        //    in Loop: Header=BB2_24 Depth=2
	sub x24, x0, x24
.LBB2_48:                               //  %sw.bb123.loopexit
                                        //    in Loop: Header=BB2_24 Depth=2
	or x19, x19, 4
	mv x11, x23
	jal x0, .LBB2_24
.LBB2_49:                               //  %sw.bb125
                                        //    in Loop: Header=BB2_24 Depth=2
	add x10, x0, 43
.LBB2_50:                               //  %rflag
                                        //    in Loop: Header=BB2_24 Depth=2
	sb x10, 247 ( sp )
.LBB2_51:                               //  %rflag.backedge.loopexit
                                        //    in Loop: Header=BB2_24 Depth=2
	mv x11, x23
	jal x0, .LBB2_24
.LBB2_52:                               //  %sw.bb153
                                        //    in Loop: Header=BB2_24 Depth=2
	or x19, x19, 128
	mv x11, x23
	jal x0, .LBB2_24
.LBB2_53:                               //  %sw.bb167
                                        //    in Loop: Header=BB2_24 Depth=2
	lbu x10, 0 ( x23 )
	add x11, x0, 104
	beq x10, x11, .LBB2_57
.LBB2_54:                               //  %sw.bb167
                                        //    in Loop: Header=BB2_24 Depth=2
	add x10, x0, 64
	mv x11, x23
	or x19, x19, x10
	jal x0, .LBB2_24
.LBB2_55:                               //  %sw.bb176
                                        //    in Loop: Header=BB2_24 Depth=2
	lbu x10, 0 ( x23 )
	add x11, x0, 108
	beq x10, x11, .LBB2_58
.LBB2_56:                               //  %sw.bb176
                                        //    in Loop: Header=BB2_24 Depth=2
	mv x10, x18
	mv x11, x23
	or x19, x19, x10
	jal x0, .LBB2_24
.LBB2_57:                               //    in Loop: Header=BB2_24 Depth=2
	add x10, x0, 512
	add x11, x23, 1
	or x19, x19, x10
	jal x0, .LBB2_24
.LBB2_58:                               //    in Loop: Header=BB2_24 Depth=2
	add x10, x0, 32
	add x11, x23, 1
	or x19, x19, x10
	jal x0, .LBB2_24
.LBB2_59:                               //  %if.then131
                                        //    in Loop: Header=BB2_24 Depth=2
	lw x10, 248 ( sp )
	add x12, x10, 4
	sw x12, 248 ( sp )
	lw x12, 0 ( x10 )
	add x10, x0, -1
	sw x12, 52 ( sp )               //  4-byte Folded Spill
	blt x10, x12, .LBB2_24
.LBB2_60:                               //  %if.then131
                                        //    in Loop: Header=BB2_24 Depth=2
	sw x10, 52 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB2_24
.LBB2_61:                               //  %for.body.preheader.i1202
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x19, 232 ( sp )
	lw x21, 4 ( x19 )
	srl x22, x21, 2&31
	bltu x0, x22, .LBB2_64
.LBB2_62:                               //  %for.inc10.i1222
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	and x11, x21, -4
	sub x10, x10, x11
	add x19, x19, 8
	sw x10, 240 ( sp )
	beq x0, x10, .LBB2_75
.LBB2_63:                               //  %for.body.i1207
                                        //    in Loop: Header=BB2_62 Depth=2
	lw x21, 4 ( x19 )
	srl x22, x21, 2&31
	beq x0, x22, .LBB2_62
.LBB2_64:                               //    in Loop: Header=BB2_14 Depth=1
	lw x23, 0 ( x19 )
.LBB2_65:                               //  %for.body6.i1215
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x23 )
	mv x10, x25
	mv x12, fp
	jal _fputwc_r
	xor x10, x10, -1
	bltu x0, x10, .LBB2_66
.LBB2_417:                              //  %for.body6.i1215
	jal x0, .LBB2_397
.LBB2_66:                               //  %for.cond4.i1209
                                        //    in Loop: Header=BB2_65 Depth=2
	add x23, x23, 4
	add x22, x22, -1
	bltu x0, x22, .LBB2_65
.LBB2_67:                               //  %for.inc10.loopexit.i1217
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 240 ( sp )
	jal x0, .LBB2_62
.LBB2_68:                               //  %sw.bb238
                                        //    in Loop: Header=BB2_14 Depth=1
	and x10, x19, 32
	bltu x0, x10, .LBB2_73
.LBB2_69:                               //  %if.else244
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x24, 32 ( sp )               //  4-byte Folded Reload
	and x10, x19, 16
	bltu x0, x10, .LBB2_72
.LBB2_70:                               //  %if.else249
                                        //    in Loop: Header=BB2_14 Depth=1
	and x10, x19, 64
	bltu x0, x10, .LBB2_74
.LBB2_71:                               //  %if.else255
                                        //    in Loop: Header=BB2_14 Depth=1
	and x10, x19, 512
	bltu x0, x10, .LBB2_76
.LBB2_72:                               //  %if.then247
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x10, 0 ( x10 )
	sw x24, 0 ( x10 )
	mv x9, x23
	lbu x10, 0 ( x9 )
	bltu x0, x10, .LBB2_12
	jal x0, .LBB2_14
.LBB2_73:                               //  %if.then241
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 248 ( sp )
	lw x24, 32 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x10, 0 ( x10 )
	sra x11, x24, 31&31
	sw x11, 4 ( x10 )
	sw x24, 0 ( x10 )
	mv x9, x23
	lbu x10, 0 ( x9 )
	bltu x0, x10, .LBB2_12
	jal x0, .LBB2_14
.LBB2_74:                               //  %if.then252
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x10, 0 ( x10 )
	sh x24, 0 ( x10 )
	mv x9, x23
	lbu x10, 0 ( x9 )
	bltu x0, x10, .LBB2_12
	jal x0, .LBB2_14
.LBB2_75:                               //  %__sprint_r.exit1229.thread1639
                                        //    in Loop: Header=BB2_14 Depth=1
	add x10, sp, 232
	add x22, sp, 168
	sw x0, 8 ( x10 )
	sw x0, 236 ( sp )
	sw x22, 56 ( sp )               //  4-byte Folded Spill
	mv x21, x0
	add x27, x0, 122
	jal x0, .LBB2_22
.LBB2_76:                               //  %if.then258
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x10, 0 ( x10 )
	sb x24, 0 ( x10 )
	mv x9, x23
	lbu x10, 0 ( x9 )
	bltu x0, x10, .LBB2_12
	jal x0, .LBB2_14
.LBB2_77:                               //  %sw.bb192
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x10, 0 ( x10 )
	sb x10, 68 ( sp )
	jal x0, .LBB2_114
.LBB2_78:                               //  %sw.bb310
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x26, 0 ( x10 )
	sb x0, 247 ( sp )
	beq x0, x26, .LBB2_116
.LBB2_79:                               //  %if.else321
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x27, 52 ( sp )               //  4-byte Folded Reload
	blt x27, x0, .LBB2_123
.LBB2_80:                               //  %if.then324
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x9, x0
	mv x10, x26
	mv x11, x9
	mv x12, x27
	jal memchr
	beq x10, x9, .LBB2_82
.LBB2_81:                               //  %if.then324
                                        //    in Loop: Header=BB2_14 Depth=1
	sub x27, x10, x26
.LBB2_82:                               //  %if.then324
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x21, x9
	jal x0, .LBB2_115
.LBB2_83:                               //  %sw.bb196
                                        //    in Loop: Header=BB2_14 Depth=1
	or x19, x19, 16
.LBB2_84:                               //  %sw.bb198
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw x21, 52 ( sp )               //  4-byte Folded Reload
	and x10, x19, 32
	bltu x0, x10, .LBB2_89
.LBB2_85:                               //  %cond.false203
                                        //    in Loop: Header=BB2_14 Depth=1
	and x10, x19, 16
	bltu x0, x10, .LBB2_119
.LBB2_86:                               //  %cond.false208
                                        //    in Loop: Header=BB2_14 Depth=1
	and x10, x19, 64
	bltu x0, x10, .LBB2_124
.LBB2_87:                               //  %cond.false215
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x27, 0 ( x10 )
	and x10, x19, 512
	beq x0, x10, .LBB2_125
.LBB2_88:                               //  %cond.true218
                                        //    in Loop: Header=BB2_14 Depth=1
	sll x10, x27, 24&31
	sra x27, x10, 24&31
	sra x22, x27, 31&31
	bge x22, x0, .LBB2_90
	jal x0, .LBB2_126
.LBB2_89:                               //  %cond.true201
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	add x11, x10, 8
	lw x27, 0 ( x10 )
	sw x11, 248 ( sp )
	lw x22, 4 ( x10 )
	blt x22, x0, .LBB2_126
.LBB2_90:                               //    in Loop: Header=BB2_14 Depth=1
	seqz x10, x0
	add x11, x0, -1
	blt x11, x21, .LBB2_139
	jal x0, .LBB2_140
.LBB2_91:                               //  %sw.bb267
                                        //    in Loop: Header=BB2_14 Depth=1
	or x19, x19, 16
.LBB2_92:                               //  %sw.bb269
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	and x10, x19, 32
	bltu x0, x10, .LBB2_111
.LBB2_93:                               //  %cond.false274
                                        //    in Loop: Header=BB2_14 Depth=1
	and x10, x19, 16
	bltu x0, x10, .LBB2_120
.LBB2_94:                               //  %cond.false279
                                        //    in Loop: Header=BB2_14 Depth=1
	and x10, x19, 64
	bltu x0, x10, .LBB2_129
.LBB2_95:                               //  %cond.false286
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x27, 0 ( x10 )
	and x11, x19, 512
	mv x10, x0
	beq x11, x10, .LBB2_130
.LBB2_96:                               //  %cond.false286
                                        //    in Loop: Header=BB2_14 Depth=1
	and x27, x27, 255
	jal x0, .LBB2_130
.LBB2_97:                               //  %sw.bb338
                                        //    in Loop: Header=BB2_14 Depth=1
	or x19, x19, 16
.LBB2_98:                               //  %sw.bb340
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw x21, 52 ( sp )               //  4-byte Folded Reload
	and x10, x19, 32
	bltu x0, x10, .LBB2_112
.LBB2_99:                               //  %cond.false345
                                        //    in Loop: Header=BB2_14 Depth=1
	and x10, x19, 16
	bltu x0, x10, .LBB2_121
.LBB2_100:                              //  %cond.false350
                                        //    in Loop: Header=BB2_14 Depth=1
	and x10, x19, 64
	bltu x0, x10, .LBB2_132
.LBB2_101:                              //  %cond.false357
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x27, 0 ( x10 )
	and x11, x19, 512
	mv x10, x0
	beq x11, x10, .LBB2_133
.LBB2_102:                              //  %cond.false357
                                        //    in Loop: Header=BB2_14 Depth=1
	and x27, x27, 255
	jal x0, .LBB2_133
.LBB2_103:                              //  %hex.loopexit
                                        //    in Loop: Header=BB2_14 Depth=1
	lui x10, %hi( .str.2 )
	add x9, x10, %lo( .str.2 )
	add x10, x0, 88
	and x11, x19, 32
	beq x0, x11, .LBB2_107
.LBB2_104:                              //  %cond.true379
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x11, 248 ( sp )
	lw x21, 52 ( sp )               //  4-byte Folded Reload
	add x12, x11, 4
	sw x12, 248 ( sp )
	add x12, x11, 8
	lw x27, 0 ( x11 )
	sw x12, 248 ( sp )
	lw x22, 4 ( x11 )
	and x11, x19, 1
	bltu x0, x11, .LBB2_136
	jal x0, .LBB2_138
.LBB2_105:                              //  %sw.bb305
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 248 ( sp )
	lw x21, 52 ( sp )               //  4-byte Folded Reload
	mv x22, x0
	or x19, x19, 2
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x27, 0 ( x10 )
	add x10, x0, 120
	sb x10, 67 ( sp )
	add x10, x0, 48
	sb x10, 66 ( sp )
	lui x10, %hi( .str )
	add x9, x10, %lo( .str )
	add x10, x0, 2
	sb x0, 247 ( sp )
	add x11, x0, -1
	blt x11, x21, .LBB2_139
	jal x0, .LBB2_140
.LBB2_106:                              //  %hex.loopexit1
                                        //    in Loop: Header=BB2_14 Depth=1
	lui x10, %hi( .str )
	add x9, x10, %lo( .str )
	add x10, x0, 120
	and x11, x19, 32
	bltu x0, x11, .LBB2_104
.LBB2_107:                              //  %cond.false381
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x21, 52 ( sp )               //  4-byte Folded Reload
	and x11, x19, 16
	bltu x0, x11, .LBB2_122
.LBB2_108:                              //  %cond.false386
                                        //    in Loop: Header=BB2_14 Depth=1
	and x11, x19, 64
	bltu x0, x11, .LBB2_134
.LBB2_109:                              //  %cond.false393
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x11, 248 ( sp )
	add x12, x11, 4
	sw x12, 248 ( sp )
	lw x27, 0 ( x11 )
	and x12, x19, 512
	mv x11, x0
	beq x12, x11, .LBB2_135
.LBB2_110:                              //  %cond.false393
                                        //    in Loop: Header=BB2_14 Depth=1
	and x27, x27, 255
	mv x22, x0
	and x11, x19, 1
	bltu x0, x11, .LBB2_136
	jal x0, .LBB2_138
.LBB2_111:                              //  %cond.true272
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 248 ( sp )
	lw x21, 52 ( sp )               //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, 248 ( sp )
	add x11, x10, 8
	lw x27, 0 ( x10 )
	sw x11, 248 ( sp )
	lw x22, 4 ( x10 )
	jal x0, .LBB2_131
.LBB2_112:                              //  %cond.true343
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x11, 248 ( sp )
	add x10, x11, 4
	sw x10, 248 ( sp )
	add x10, x11, 8
	lw x27, 0 ( x11 )
	sw x10, 248 ( sp )
	lw x22, 4 ( x11 )
	seqz x10, x0
	sb x0, 247 ( sp )
	add x11, x0, -1
	blt x11, x21, .LBB2_139
	jal x0, .LBB2_140
.LBB2_113:                              //  %if.end526
                                        //    in Loop: Header=BB2_14 Depth=1
	sb x9, 68 ( sp )
.LBB2_114:                              //  %sw.epilog529
                                        //    in Loop: Header=BB2_14 Depth=1
	seqz x27, x0
	add x26, sp, 68
	sb x0, 247 ( sp )
.LBB2_115:                              //  %sw.epilog529
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB2_168
.LBB2_116:                              //  %if.then314
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x27, 52 ( sp )               //  4-byte Folded Reload
	lw x14, 56 ( sp )               //  4-byte Folded Reload
	add x10, x0, 6
	bltu x27, x10, .LBB2_118
.LBB2_117:                              //  %if.then314
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x27, x10
.LBB2_118:                              //  %if.then314
                                        //    in Loop: Header=BB2_14 Depth=1
	lui x10, %hi( .str.1 )
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	add x26, x10, %lo( .str.1 )
	mv x10, x21
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	sw x21, 52 ( sp )               //  4-byte Folded Spill
	bge x27, x21, .LBB2_185
	jal x0, .LBB2_186
.LBB2_119:                              //  %cond.true206
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x27, 0 ( x10 )
	sra x22, x27, 31&31
	bge x22, x0, .LBB2_90
	jal x0, .LBB2_126
.LBB2_120:                              //  %cond.true277
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x27, 0 ( x10 )
	jal x0, .LBB2_130
.LBB2_121:                              //  %cond.true348
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x27, 0 ( x10 )
	jal x0, .LBB2_133
.LBB2_122:                              //  %cond.true384
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x11, 248 ( sp )
	add x12, x11, 4
	sw x12, 248 ( sp )
	lw x27, 0 ( x11 )
	mv x22, x0
	and x11, x19, 1
	bltu x0, x11, .LBB2_136
	jal x0, .LBB2_138
.LBB2_123:                              //  %if.else334
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x10, x26
	jal strlen
	mv x27, x10
	jal x0, .LBB2_115
.LBB2_124:                              //  %cond.true211
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lw x10, 0 ( x10 )
	sll x10, x10, 16&31
	sra x27, x10, 16&31
.LBB2_125:                              //  %cond.end228
                                        //    in Loop: Header=BB2_14 Depth=1
	sra x22, x27, 31&31
	bge x22, x0, .LBB2_90
.LBB2_126:                              //  %if.then435.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	add x10, x0, -1
	bge x10, x21, .LBB2_128
.LBB2_127:                              //    in Loop: Header=BB2_14 Depth=1
	and x19, x19, -129
.LBB2_128:                              //  %if.then435.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	add x10, x0, 45
	sb x10, 247 ( sp )
	snez x10, x27
	add x10, x10, x22
	sub x27, x0, x27
	sub x22, x0, x10
	jal x0, .LBB2_149
.LBB2_129:                              //  %cond.true282
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lhu x27, 0 ( x10 )
.LBB2_130:                              //  %cond.false286
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x21, 52 ( sp )               //  4-byte Folded Reload
	mv x22, x0
.LBB2_131:                              //  %cond.end302
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x10, x0
	and x19, x19, -1025
	sb x0, 247 ( sp )
	add x11, x0, -1
	blt x11, x21, .LBB2_139
	jal x0, .LBB2_140
.LBB2_132:                              //  %cond.true353
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 248 ( sp )
	add x11, x10, 4
	sw x11, 248 ( sp )
	lhu x27, 0 ( x10 )
.LBB2_133:                              //  %cond.end370
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x22, x0
	seqz x10, x0
	sb x0, 247 ( sp )
	add x11, x0, -1
	blt x11, x21, .LBB2_139
	jal x0, .LBB2_140
.LBB2_134:                              //  %cond.true389
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x11, 248 ( sp )
	add x12, x11, 4
	sw x12, 248 ( sp )
	lhu x27, 0 ( x11 )
.LBB2_135:                              //  %cond.end406
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x22, x0
	and x11, x19, 1
	beq x0, x11, .LBB2_138
.LBB2_136:                              //  %cond.end409
                                        //    in Loop: Header=BB2_14 Depth=1
	or x11, x22, x27
	beq x0, x11, .LBB2_138
.LBB2_137:                              //  %if.then416
                                        //    in Loop: Header=BB2_14 Depth=1
	sb x10, 67 ( sp )
	add x10, x0, 48
	or x19, x19, 2
	sb x10, 66 ( sp )
.LBB2_138:                              //  %if.end421
                                        //    in Loop: Header=BB2_14 Depth=1
	and x19, x19, -1025
	add x10, x0, 2
	sb x0, 247 ( sp )
	add x11, x0, -1
	bge x11, x21, .LBB2_140
.LBB2_139:                              //    in Loop: Header=BB2_14 Depth=1
	and x19, x19, -129
.LBB2_140:                              //  %number
                                        //    in Loop: Header=BB2_14 Depth=1
	bltu x0, x21, .LBB2_145
.LBB2_141:                              //  %number
                                        //    in Loop: Header=BB2_14 Depth=1
	or x11, x22, x27
	bltu x0, x11, .LBB2_145
.LBB2_142:                              //  %if.else506
                                        //    in Loop: Header=BB2_14 Depth=1
	bltu x0, x10, .LBB2_159
.LBB2_143:                              //  %if.else506
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x14, 56 ( sp )               //  4-byte Folded Reload
	and x10, x19, 1
	add x22, sp, 168
	beq x0, x10, .LBB2_161
.LBB2_144:                              //  %if.then513
                                        //    in Loop: Header=BB2_14 Depth=1
	add x10, x0, 48
	add x26, sp, 167
	sb x10, 167 ( sp )
	jal x0, .LBB2_184
.LBB2_145:                              //  %if.then435
                                        //    in Loop: Header=BB2_14 Depth=1
	beq x0, x10, .LBB2_162
.LBB2_146:                              //  %if.then435
                                        //    in Loop: Header=BB2_14 Depth=1
	xor x11, x10, 1
	beq x0, x11, .LBB2_149
.LBB2_147:                              //  %if.then435
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x26, 24 ( sp )               //  4-byte Folded Reload
	xor x10, x10, 2
	bltu x0, x10, .LBB2_167
.LBB2_148:                              //  %do.body497
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	and x10, x27, 15
	add x10, x10, x9
	lb x10, 0 ( x10 )
	sll x11, x22, 28&31
	srl x22, x22, 4&31
	sb x10, -1 ( x26 )
	srl x10, x27, 4&31
	or x27, x11, x10
	add x26, x26, -1
	or x10, x22, x27
	bltu x0, x10, .LBB2_148
	jal x0, .LBB2_160
.LBB2_149:                              //  %sw.bb455
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x10, x0
	bne x22, x10, .LBB2_151
.LBB2_150:                              //    in Loop: Header=BB2_14 Depth=1
	sltiu x10, x27, 10
.LBB2_151:                              //  %sw.bb455
                                        //    in Loop: Header=BB2_14 Depth=1
	beq x0, x10, .LBB2_153
.LBB2_152:                              //  %if.then458
                                        //    in Loop: Header=BB2_14 Depth=1
	add x10, x27, 48
	sb x10, 167 ( sp )
	add x26, sp, 167
	jal x0, .LBB2_160
.LBB2_153:                              //  %do.body463.preheader
                                        //    in Loop: Header=BB2_14 Depth=1
	and x10, x19, 1024
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB2_169
.LBB2_154:                              //  %do.body463.us.preheader
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x26, 24 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB2_157
.LBB2_155:                              //  %do.body463.us
                                        //    in Loop: Header=BB2_157 Depth=2
	snez x11, x22
.LBB2_156:                              //  %do.body463.us
                                        //    in Loop: Header=BB2_157 Depth=2
	sub x10, x27, x10
	or x10, x10, 48
	sb x10, -1 ( x26 )
	add x26, x26, -1
	mv x27, x9
	mv x22, x19
	beq x0, x11, .LBB2_181
.LBB2_157:                              //  %do.body463.us
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x21, x0, 10
	mv x25, x0
	mv x10, x27
	mv x11, x22
	mv x12, x21
	mv x13, x25
	jal __udivdi3
	mv x12, x21
	mv x13, x25
	mv x9, x10
	mv x19, x11
	jal __muldi3
	bne x22, x25, .LBB2_155
.LBB2_158:                              //    in Loop: Header=BB2_157 Depth=2
	add x11, x0, 9
	sltu x11, x11, x27
	jal x0, .LBB2_156
.LBB2_159:                              //    in Loop: Header=BB2_14 Depth=1
	lw x26, 24 ( sp )               //  4-byte Folded Reload
.LBB2_160:                              //    in Loop: Header=BB2_14 Depth=1
	lw x14, 56 ( sp )               //  4-byte Folded Reload
	add x22, sp, 168
	jal x0, .LBB2_184
.LBB2_161:                              //    in Loop: Header=BB2_14 Depth=1
	lw x26, 24 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB2_184
.LBB2_162:                              //  %do.body438.preheader
                                        //    in Loop: Header=BB2_14 Depth=1
	add x26, sp, 167
.LBB2_163:                              //  %do.body438
                                        //    Parent Loop BB2_14 Depth=1
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
	bltu x0, x12, .LBB2_163
.LBB2_164:                              //  %do.end445
                                        //    in Loop: Header=BB2_14 Depth=1
	add x11, x26, 1
	and x12, x19, 1
	beq x0, x12, .LBB2_364
.LBB2_165:                              //  %do.end445
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x14, 56 ( sp )               //  4-byte Folded Reload
	xor x10, x10, 48
	add x22, sp, 168
	beq x0, x10, .LBB2_365
.LBB2_166:                              //  %if.then452
                                        //    in Loop: Header=BB2_14 Depth=1
	add x10, x0, 48
	sb x10, 0 ( x26 )
	jal x0, .LBB2_184
.LBB2_167:                              //  %sw.default
                                        //    in Loop: Header=BB2_14 Depth=1
	lui x10, %hi( .str.3 )
	add x26, x10, %lo( .str.3 )
	mv x10, x26
	jal strlen
	mv x27, x10
	add x22, sp, 168
.LBB2_168:                              //  %sw.epilog529
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x14, 56 ( sp )               //  4-byte Folded Reload
	mv x10, x21
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	sw x21, 52 ( sp )               //  4-byte Folded Spill
	bge x27, x21, .LBB2_185
	jal x0, .LBB2_186
.LBB2_169:                              //  %do.body463.preheader5
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 12 ( sp )               //  4-byte Folded Reload
	lw x26, 24 ( sp )               //  4-byte Folded Reload
	mv x18, x0
	sub x10, x0, x10
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB2_171
.LBB2_170:                              //  %if.end491
                                        //    in Loop: Header=BB2_171 Depth=2
	snez x10, x22
	mv x27, x21
	mv x22, x19
	beq x0, x10, .LBB2_182
.LBB2_171:                              //  %do.body463
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x25, x0, 10
	mv x9, x0
	mv x10, x27
	mv x11, x22
	mv x12, x25
	mv x13, x9
	jal __udivdi3
	mv x12, x25
	mv x13, x9
	mv x21, x10
	mv x19, x11
	jal __muldi3
	sub x10, x27, x10
	or x10, x10, 48
	sb x10, -1 ( x26 )
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	add x26, x26, -1
	add x18, x18, 1
	lb x10, 0 ( x10 )
	bne x18, x10, .LBB2_177
.LBB2_172:                              //  %land.lhs.true474
                                        //    in Loop: Header=BB2_171 Depth=2
	beq x22, x9, .LBB2_180
.LBB2_173:                              //  %land.lhs.true474
                                        //    in Loop: Header=BB2_171 Depth=2
	mv x11, x9
	lw x25, 60 ( sp )               //  4-byte Folded Reload
	bltu x0, x11, .LBB2_178
.LBB2_174:                              //  %land.lhs.true474
                                        //    in Loop: Header=BB2_171 Depth=2
	and x10, x10, 255
	xor x10, x10, 127
	beq x0, x10, .LBB2_178
.LBB2_175:                              //  %if.then481
                                        //    in Loop: Header=BB2_171 Depth=2
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	lw x11, 8 ( sp )                //  4-byte Folded Reload
	lw x12, 12 ( sp )               //  4-byte Folded Reload
	add x26, x10, x26
	mv x10, x26
	jal strncpy
	lw x11, 36 ( sp )               //  4-byte Folded Reload
	mv x18, x0
	lbu x10, 1 ( x11 )
	beq x10, x18, .LBB2_178
.LBB2_176:                              //  %if.then481
                                        //    in Loop: Header=BB2_171 Depth=2
	add x11, x11, 1
	sw x11, 36 ( sp )               //  4-byte Folded Spill
	bne x22, x9, .LBB2_170
	jal x0, .LBB2_179
.LBB2_177:                              //    in Loop: Header=BB2_171 Depth=2
	lw x25, 60 ( sp )               //  4-byte Folded Reload
.LBB2_178:                              //  %if.end491
                                        //    in Loop: Header=BB2_171 Depth=2
	bne x22, x9, .LBB2_170
.LBB2_179:                              //    in Loop: Header=BB2_171 Depth=2
	add x10, x0, 9
	sltu x10, x10, x27
	mv x27, x21
	mv x22, x19
	bltu x0, x10, .LBB2_171
	jal x0, .LBB2_182
.LBB2_180:                              //    in Loop: Header=BB2_171 Depth=2
	sltiu x11, x27, 10
	lw x25, 60 ( sp )               //  4-byte Folded Reload
	beq x0, x11, .LBB2_174
	jal x0, .LBB2_178
.LBB2_181:                              //    in Loop: Header=BB2_14 Depth=1
	lw x25, 60 ( sp )               //  4-byte Folded Reload
	add x22, sp, 168
	jal x0, .LBB2_183
.LBB2_182:                              //    in Loop: Header=BB2_14 Depth=1
	add x22, sp, 168
	add x18, x0, 16
.LBB2_183:                              //  %if.end516
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x21, 52 ( sp )               //  4-byte Folded Reload
	lw x14, 56 ( sp )               //  4-byte Folded Reload
.LBB2_184:                              //  %if.end516
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 24 ( sp )               //  4-byte Folded Reload
	sub x27, x10, x26
	mv x10, x21
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	sw x21, 52 ( sp )               //  4-byte Folded Spill
	blt x27, x21, .LBB2_186
.LBB2_185:                              //  %sw.epilog529
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x10, x27
.LBB2_186:                              //  %sw.epilog529
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x11, 247 ( sp )
	and x21, x19, 2
	sw x27, 56 ( sp )               //  4-byte Folded Spill
	add x9, sp, 232
	snez x11, x11
	add x27, x11, x10
	srl x10, x21, 1&31
	beq x0, x10, .LBB2_188
.LBB2_187:                              //    in Loop: Header=BB2_14 Depth=1
	add x27, x27, 2
.LBB2_188:                              //  %sw.epilog529
                                        //    in Loop: Header=BB2_14 Depth=1
	and x13, x19, 132
	beq x0, x13, .LBB2_194
.LBB2_189:                              //  %if.end592
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x10, 247 ( sp )
	beq x0, x10, .LBB2_217
.LBB2_190:                              //  %if.then594
                                        //    in Loop: Header=BB2_14 Depth=1
	seqz x10, x0
	sw x10, 4 ( x14 )
	add x10, sp, 247
	sw x10, 0 ( x14 )
	lw x10, 8 ( x9 )
	lw x11, 236 ( sp )
	add x10, x10, 1
	add x12, x11, 1
	slti x11, x11, 7
	sw x10, 8 ( x9 )
	sw x12, 236 ( sp )
	bltu x0, x11, .LBB2_215
.LBB2_191:                              //  %if.then604
                                        //    in Loop: Header=BB2_14 Depth=1
	beq x0, x10, .LBB2_245
.LBB2_192:                              //  %if.end.i1311
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x11, 101 ( fp )
	and x11, x11, 32
	bltu x0, x11, .LBB2_247
.LBB2_193:                              //  %__sprint_r.exit1340
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x10, x25
	mv x11, fp
	mv x12, x9
	mv x22, x18
	mv x18, x27
	mv x27, x13
	jal __sfvwrite_r
	mv x13, x27
	mv x27, x18
	mv x18, x22
	add x22, sp, 168
	mv x14, x22
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	beq x0, x10, .LBB2_217
	jal x0, .LBB2_403
.LBB2_194:                              //  %if.then548
                                        //    in Loop: Header=BB2_14 Depth=1
	sub x22, x24, x27
	bge x0, x22, .LBB2_216
.LBB2_195:                              //  %while.cond553.preheader
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	lw x12, 236 ( sp )
	lw x11, 8 ( x9 )
	sw x10, 0 ( x14 )
	slti x10, x22, 17
	beq x0, x10, .LBB2_202
.LBB2_196:                              //  %while.end574
                                        //    in Loop: Header=BB2_14 Depth=1
	add x10, x22, x11
	add x11, x12, 1
	sw x11, 236 ( sp )
	slti x11, x12, 7
	sw x10, 8 ( x9 )
	sw x22, 4 ( x14 )
	bltu x0, x11, .LBB2_255
.LBB2_197:                              //  %if.then584
                                        //    in Loop: Header=BB2_14 Depth=1
	add x22, sp, 168
	beq x0, x10, .LBB2_264
.LBB2_198:                              //  %if.end.i1274
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x11, 101 ( fp )
	and x11, x11, 32
	bltu x0, x11, .LBB2_350
.LBB2_199:                              //  %__sprint_r.exit1303
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x10, x25
	mv x11, fp
	mv x12, x9
	mv x18, x27
	mv x27, x13
	jal __sfvwrite_r
	mv x13, x27
	mv x27, x18
	add x18, x0, 16
	mv x14, x22
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	beq x0, x10, .LBB2_189
	jal x0, .LBB2_403
.LBB2_200:                              //    in Loop: Header=BB2_202 Depth=2
	add x14, x14, 8
	mv x12, x10
.LBB2_201:                              //  %if.end572
                                        //    in Loop: Header=BB2_202 Depth=2
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	add x22, x22, -16
	sw x10, 0 ( x14 )
	bge x18, x22, .LBB2_196
.LBB2_202:                              //  %while.body556
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_208 Depth 3
                                        //        Child Loop BB2_211 Depth 3
	add x10, x12, 1
	add x11, x11, 16
	slti x12, x12, 7
	sw x11, 8 ( x9 )
	sw x18, 4 ( x14 )
	sw x10, 236 ( sp )
	bltu x0, x12, .LBB2_200
.LBB2_203:                              //  %if.then566
                                        //    in Loop: Header=BB2_202 Depth=2
	beq x0, x11, .LBB2_206
.LBB2_204:                              //  %if.end.i1237
                                        //    in Loop: Header=BB2_202 Depth=2
	lbu x10, 101 ( fp )
	and x10, x10, 32
	bltu x0, x10, .LBB2_207
.LBB2_205:                              //  %__sprint_r.exit1266
                                        //    in Loop: Header=BB2_202 Depth=2
	mv x10, x25
	mv x11, fp
	mv x12, x9
	mv x18, x27
	mv x27, x13
	jal __sfvwrite_r
	mv x11, x0
	add x13, sp, 168
	mv x14, x13
	mv x13, x27
	mv x27, x18
	mv x12, x11
	add x18, x0, 16
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	beq x0, x10, .LBB2_201
	jal x0, .LBB2_403
.LBB2_206:                              //  %__sprint_r.exit1266.thread
                                        //    in Loop: Header=BB2_202 Depth=2
	mv x11, x0
	add x10, sp, 168
	sw x0, 236 ( sp )
	mv x12, x11
	mv x14, x10
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	add x22, x22, -16
	sw x10, 0 ( x14 )
	blt x18, x22, .LBB2_202
	jal x0, .LBB2_196
.LBB2_207:                              //  %for.body.preheader.i1239
                                        //    in Loop: Header=BB2_202 Depth=2
	lw x18, 232 ( sp )
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	sw x27, 20 ( sp )               //  4-byte Folded Spill
	sw x13, 4 ( sp )                //  4-byte Folded Spill
	lw x25, 4 ( x18 )
	srl x9, x25, 2&31
	bltu x0, x9, .LBB2_210
.LBB2_208:                              //  %for.inc10.i1259
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_202 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	and x10, x25, -4
	sub x11, x11, x10
	add x18, x18, 8
	sw x11, 240 ( sp )
	beq x0, x11, .LBB2_214
.LBB2_209:                              //  %for.body.i1244
                                        //    in Loop: Header=BB2_208 Depth=3
	lw x25, 4 ( x18 )
	srl x9, x25, 2&31
	beq x0, x9, .LBB2_208
.LBB2_210:                              //    in Loop: Header=BB2_202 Depth=2
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x27, 0 ( x18 )
.LBB2_211:                              //  %for.body6.i1252
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_202 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x11, 0 ( x27 )
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	mv x12, fp
	jal _fputwc_r
	xor x10, x10, -1
	beq x0, x10, .LBB2_389
.LBB2_212:                              //  %for.cond4.i1246
                                        //    in Loop: Header=BB2_211 Depth=3
	add x27, x27, 4
	add x9, x9, -1
	bltu x0, x9, .LBB2_211
.LBB2_213:                              //  %for.inc10.loopexit.i1254
                                        //    in Loop: Header=BB2_202 Depth=2
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	lw x11, 240 ( sp )
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x27, 20 ( sp )               //  4-byte Folded Reload
	lw x13, 4 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB2_208
.LBB2_214:                              //  %__sprint_r.exit1266.thread1647
                                        //    in Loop: Header=BB2_202 Depth=2
	lw x25, 60 ( sp )               //  4-byte Folded Reload
	mv x11, x0
	add x10, sp, 168
	add x9, sp, 232
	mv x12, x11
	mv x14, x10
	add x18, x0, 16
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	add x22, x22, -16
	sw x10, 0 ( x14 )
	blt x18, x22, .LBB2_202
	jal x0, .LBB2_196
.LBB2_215:                              //    in Loop: Header=BB2_14 Depth=1
	add x14, x14, 8
	bltu x0, x21, .LBB2_218
.LBB2_246:                              //    in Loop: Header=BB2_14 Depth=1
	mv x21, x0
	xor x10, x13, 128
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB2_266
.LBB2_223:                              //  %if.then636
                                        //    in Loop: Header=BB2_14 Depth=1
	sub x19, x24, x27
	bge x0, x19, .LBB2_266
.LBB2_224:                              //  %while.cond641.preheader
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	lw x12, 236 ( sp )
	lw x11, 8 ( x9 )
	sw x10, 0 ( x14 )
	slti x10, x19, 17
	beq x0, x10, .LBB2_231
.LBB2_225:                              //  %while.end662
                                        //    in Loop: Header=BB2_14 Depth=1
	add x10, x19, x11
	add x11, x12, 1
	sw x11, 236 ( sp )
	slti x11, x12, 7
	sw x10, 8 ( x9 )
	sw x19, 4 ( x14 )
	bltu x0, x11, .LBB2_256
.LBB2_226:                              //  %if.then672
                                        //    in Loop: Header=BB2_14 Depth=1
	beq x0, x10, .LBB2_265
.LBB2_227:                              //  %if.end.i1422
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x11, 101 ( fp )
	and x11, x11, 32
	bltu x0, x11, .LBB2_357
.LBB2_228:                              //  %__sprint_r.exit1451
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x10, x25
	mv x11, fp
	mv x12, x9
	jal __sfvwrite_r
	mv x14, x22
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	beq x0, x10, .LBB2_266
	jal x0, .LBB2_403
.LBB2_229:                              //    in Loop: Header=BB2_231 Depth=2
	add x14, x14, 8
	mv x12, x10
.LBB2_230:                              //  %if.end660
                                        //    in Loop: Header=BB2_231 Depth=2
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	add x19, x19, -16
	sw x10, 0 ( x14 )
	bge x18, x19, .LBB2_225
.LBB2_231:                              //  %while.body644
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_237 Depth 3
                                        //        Child Loop BB2_240 Depth 3
	add x10, x12, 1
	add x11, x11, 16
	slti x12, x12, 7
	sw x11, 8 ( x9 )
	sw x18, 4 ( x14 )
	sw x10, 236 ( sp )
	bltu x0, x12, .LBB2_229
.LBB2_232:                              //  %if.then654
                                        //    in Loop: Header=BB2_231 Depth=2
	beq x0, x11, .LBB2_235
.LBB2_233:                              //  %if.end.i1385
                                        //    in Loop: Header=BB2_231 Depth=2
	lbu x10, 101 ( fp )
	and x10, x10, 32
	bltu x0, x10, .LBB2_236
.LBB2_234:                              //  %__sprint_r.exit1414
                                        //    in Loop: Header=BB2_231 Depth=2
	mv x10, x25
	mv x11, fp
	mv x12, x9
	jal __sfvwrite_r
	mv x12, x21
	mv x11, x21
	mv x14, x22
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	beq x0, x10, .LBB2_230
	jal x0, .LBB2_403
.LBB2_235:                              //  %__sprint_r.exit1414.thread
                                        //    in Loop: Header=BB2_231 Depth=2
	sw x0, 236 ( sp )
	mv x12, x21
	mv x11, x21
	mv x14, x22
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	add x19, x19, -16
	sw x10, 0 ( x14 )
	blt x18, x19, .LBB2_231
	jal x0, .LBB2_225
.LBB2_236:                              //  %for.body.preheader.i1387
                                        //    in Loop: Header=BB2_231 Depth=2
	lw x18, 232 ( sp )
	lw x21, 4 ( x18 )
	srl x9, x21, 2&31
	bltu x0, x9, .LBB2_239
.LBB2_237:                              //  %for.inc10.i1407
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_231 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	and x10, x21, -4
	sub x11, x11, x10
	add x18, x18, 8
	sw x11, 240 ( sp )
	beq x0, x11, .LBB2_243
.LBB2_238:                              //  %for.body.i1392
                                        //    in Loop: Header=BB2_237 Depth=3
	lw x21, 4 ( x18 )
	srl x9, x21, 2&31
	beq x0, x9, .LBB2_237
.LBB2_239:                              //    in Loop: Header=BB2_231 Depth=2
	lw x22, 0 ( x18 )
.LBB2_240:                              //  %for.body6.i1400
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_231 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x11, 0 ( x22 )
	mv x10, x25
	mv x12, fp
	jal _fputwc_r
	xor x10, x10, -1
	beq x0, x10, .LBB2_385
.LBB2_241:                              //  %for.cond4.i1394
                                        //    in Loop: Header=BB2_240 Depth=3
	add x22, x22, 4
	add x9, x9, -1
	bltu x0, x9, .LBB2_240
.LBB2_242:                              //  %for.inc10.loopexit.i1402
                                        //    in Loop: Header=BB2_231 Depth=2
	lw x11, 240 ( sp )
	add x22, sp, 168
	jal x0, .LBB2_237
.LBB2_243:                              //  %__sprint_r.exit1414.thread1679
                                        //    in Loop: Header=BB2_231 Depth=2
	mv x21, x0
	add x9, sp, 232
	mv x12, x21
	mv x11, x21
	mv x14, x22
	add x18, x0, 16
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	add x19, x19, -16
	sw x10, 0 ( x14 )
	blt x18, x19, .LBB2_231
	jal x0, .LBB2_225
.LBB2_216:                              //    in Loop: Header=BB2_14 Depth=1
	add x22, sp, 168
	lbu x10, 247 ( sp )
	bltu x0, x10, .LBB2_190
	jal x0, .LBB2_217
.LBB2_245:                              //  %__sprint_r.exit1340.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 236 ( sp )
	mv x14, x22
	bltu x0, x21, .LBB2_218
	jal x0, .LBB2_246
.LBB2_247:                              //  %for.body.preheader.i1313
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x18, 232 ( sp )
	sw x27, 20 ( sp )               //  4-byte Folded Spill
	lw x22, 4 ( x18 )
	srl x9, x22, 2&31
	bltu x0, x9, .LBB2_250
.LBB2_248:                              //  %for.inc10.i1333
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	and x11, x22, -4
	sub x10, x10, x11
	add x18, x18, 8
	sw x10, 240 ( sp )
	beq x0, x10, .LBB2_376
.LBB2_249:                              //  %for.body.i1318
                                        //    in Loop: Header=BB2_248 Depth=2
	lw x22, 4 ( x18 )
	srl x9, x22, 2&31
	beq x0, x9, .LBB2_248
.LBB2_250:                              //    in Loop: Header=BB2_14 Depth=1
	lw x25, 0 ( x18 )
	mv x27, x13
.LBB2_251:                              //  %for.body6.i1326
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x25 )
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	mv x12, fp
	jal _fputwc_r
	xor x10, x10, -1
	beq x0, x10, .LBB2_385
.LBB2_252:                              //  %for.cond4.i1320
                                        //    in Loop: Header=BB2_251 Depth=2
	add x25, x25, 4
	add x9, x9, -1
	bltu x0, x9, .LBB2_251
.LBB2_253:                              //  %for.inc10.loopexit.i1328
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x13, x27
	lw x10, 240 ( sp )
	lw x25, 60 ( sp )               //  4-byte Folded Reload
	lw x27, 20 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB2_248
.LBB2_255:                              //    in Loop: Header=BB2_14 Depth=1
	add x14, x14, 8
	add x22, sp, 168
	lbu x10, 247 ( sp )
	bltu x0, x10, .LBB2_190
	jal x0, .LBB2_217
.LBB2_256:                              //    in Loop: Header=BB2_14 Depth=1
	add x14, x14, 8
	jal x0, .LBB2_266
.LBB2_264:                              //  %__sprint_r.exit1303.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 236 ( sp )
	mv x14, x22
	lbu x10, 247 ( sp )
	bltu x0, x10, .LBB2_190
.LBB2_217:                              //  %if.end611
                                        //    in Loop: Header=BB2_14 Depth=1
	beq x0, x21, .LBB2_246
.LBB2_218:                              //  %if.then614
                                        //    in Loop: Header=BB2_14 Depth=1
	add x10, x0, 2
	sw x10, 4 ( x14 )
	add x10, sp, 66
	sw x10, 0 ( x14 )
	lw x10, 8 ( x9 )
	lw x11, 236 ( sp )
	add x10, x10, 2
	add x12, x11, 1
	slti x11, x11, 7
	sw x10, 8 ( x9 )
	sw x12, 236 ( sp )
	bltu x0, x11, .LBB2_244
.LBB2_219:                              //  %if.then625
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x21, x0
	beq x0, x10, .LBB2_254
.LBB2_220:                              //  %if.end.i1348
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x11, 101 ( fp )
	and x11, x11, 32
	bltu x0, x11, .LBB2_257
.LBB2_221:                              //  %__sprint_r.exit1377
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x10, x25
	mv x11, fp
	mv x12, x9
	mv x22, x18
	mv x18, x27
	mv x27, x13
	jal __sfvwrite_r
	mv x13, x27
	mv x27, x18
	mv x18, x22
	add x22, sp, 168
	mv x14, x22
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	bltu x0, x10, .LBB2_403
.LBB2_222:                              //  %if.end632
                                        //    in Loop: Header=BB2_14 Depth=1
	xor x10, x13, 128
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB2_266
	jal x0, .LBB2_223
.LBB2_244:                              //    in Loop: Header=BB2_14 Depth=1
	add x14, x14, 8
	mv x21, x0
	xor x10, x13, 128
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB2_223
	jal x0, .LBB2_266
.LBB2_254:                              //  %__sprint_r.exit1377.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 236 ( sp )
	mv x14, x22
	xor x10, x13, 128
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB2_223
	jal x0, .LBB2_266
.LBB2_257:                              //  %for.body.preheader.i1350
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x18, 232 ( sp )
	sw x27, 20 ( sp )               //  4-byte Folded Spill
	lw x21, 4 ( x18 )
	srl x9, x21, 2&31
	bltu x0, x9, .LBB2_260
.LBB2_258:                              //  %for.inc10.i1370
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	and x11, x21, -4
	sub x10, x10, x11
	add x18, x18, 8
	sw x10, 240 ( sp )
	beq x0, x10, .LBB2_379
.LBB2_259:                              //  %for.body.i1355
                                        //    in Loop: Header=BB2_258 Depth=2
	lw x21, 4 ( x18 )
	srl x9, x21, 2&31
	beq x0, x9, .LBB2_258
.LBB2_260:                              //    in Loop: Header=BB2_14 Depth=1
	lw x22, 0 ( x18 )
	mv x27, x13
.LBB2_261:                              //  %for.body6.i1363
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x22 )
	mv x10, x25
	mv x12, fp
	jal _fputwc_r
	xor x10, x10, -1
	beq x0, x10, .LBB2_385
.LBB2_262:                              //  %for.cond4.i1357
                                        //    in Loop: Header=BB2_261 Depth=2
	add x22, x22, 4
	add x9, x9, -1
	bltu x0, x9, .LBB2_261
.LBB2_263:                              //  %for.inc10.loopexit.i1365
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x13, x27
	lw x10, 240 ( sp )
	lw x27, 20 ( sp )               //  4-byte Folded Reload
	add x22, sp, 168
	jal x0, .LBB2_258
.LBB2_265:                              //  %__sprint_r.exit1451.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 236 ( sp )
	mv x14, x22
.LBB2_266:                              //  %if.end680
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	lw x11, 56 ( sp )               //  4-byte Folded Reload
	sw x27, 20 ( sp )               //  4-byte Folded Spill
	sub x19, x10, x11
	bge x0, x19, .LBB2_287
.LBB2_267:                              //  %while.cond685.preheader
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	lw x12, 236 ( sp )
	lw x11, 8 ( x9 )
	sw x10, 0 ( x14 )
	slti x10, x19, 17
	beq x0, x10, .LBB2_274
.LBB2_268:                              //  %while.end706
                                        //    in Loop: Header=BB2_14 Depth=1
	add x11, x19, x11
	add x13, x12, 1
	slti x10, x12, 7
	sw x11, 8 ( x9 )
	sw x19, 4 ( x14 )
	sw x13, 236 ( sp )
	bltu x0, x10, .LBB2_288
.LBB2_269:                              //  %if.then716
                                        //    in Loop: Header=BB2_14 Depth=1
	add x27, x0, 122
	beq x0, x11, .LBB2_342
.LBB2_270:                              //  %if.end.i1496
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x10, 101 ( fp )
	and x10, x10, 32
	bltu x0, x10, .LBB2_343
.LBB2_271:                              //  %__sprint_r.exit1525
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x10, x25
	mv x11, fp
	mv x12, x9
	jal __sfvwrite_r
	mv x11, x21
	mv x13, x21
	mv x14, x22
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	beq x0, x10, .LBB2_290
	jal x0, .LBB2_403
.LBB2_272:                              //    in Loop: Header=BB2_274 Depth=2
	add x14, x14, 8
	mv x12, x10
.LBB2_273:                              //  %if.end704
                                        //    in Loop: Header=BB2_274 Depth=2
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	add x19, x19, -16
	sw x10, 0 ( x14 )
	bge x18, x19, .LBB2_268
.LBB2_274:                              //  %while.body688
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_280 Depth 3
                                        //        Child Loop BB2_283 Depth 3
	add x10, x12, 1
	add x11, x11, 16
	slti x12, x12, 7
	sw x11, 8 ( x9 )
	sw x18, 4 ( x14 )
	sw x10, 236 ( sp )
	bltu x0, x12, .LBB2_272
.LBB2_275:                              //  %if.then698
                                        //    in Loop: Header=BB2_274 Depth=2
	beq x0, x11, .LBB2_278
.LBB2_276:                              //  %if.end.i1459
                                        //    in Loop: Header=BB2_274 Depth=2
	lbu x10, 101 ( fp )
	and x10, x10, 32
	bltu x0, x10, .LBB2_279
.LBB2_277:                              //  %__sprint_r.exit1488
                                        //    in Loop: Header=BB2_274 Depth=2
	mv x10, x25
	mv x11, fp
	mv x12, x9
	jal __sfvwrite_r
	mv x12, x21
	mv x11, x21
	mv x14, x22
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	beq x0, x10, .LBB2_273
	jal x0, .LBB2_403
.LBB2_278:                              //  %__sprint_r.exit1488.thread
                                        //    in Loop: Header=BB2_274 Depth=2
	sw x0, 236 ( sp )
	mv x12, x21
	mv x11, x21
	mv x14, x22
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	add x19, x19, -16
	sw x10, 0 ( x14 )
	blt x18, x19, .LBB2_274
	jal x0, .LBB2_268
.LBB2_279:                              //  %for.body.preheader.i1461
                                        //    in Loop: Header=BB2_274 Depth=2
	lw x18, 232 ( sp )
	lw x21, 4 ( x18 )
	srl x9, x21, 2&31
	bltu x0, x9, .LBB2_282
.LBB2_280:                              //  %for.inc10.i1481
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_274 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	and x10, x21, -4
	sub x11, x11, x10
	add x18, x18, 8
	sw x11, 240 ( sp )
	beq x0, x11, .LBB2_286
.LBB2_281:                              //  %for.body.i1466
                                        //    in Loop: Header=BB2_280 Depth=3
	lw x21, 4 ( x18 )
	srl x9, x21, 2&31
	beq x0, x9, .LBB2_280
.LBB2_282:                              //    in Loop: Header=BB2_274 Depth=2
	lw x22, 0 ( x18 )
.LBB2_283:                              //  %for.body6.i1474
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_274 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x11, 0 ( x22 )
	mv x10, x25
	mv x12, fp
	jal _fputwc_r
	xor x10, x10, -1
	beq x0, x10, .LBB2_385
.LBB2_284:                              //  %for.cond4.i1468
                                        //    in Loop: Header=BB2_283 Depth=3
	add x22, x22, 4
	add x9, x9, -1
	bltu x0, x9, .LBB2_283
.LBB2_285:                              //  %for.inc10.loopexit.i1476
                                        //    in Loop: Header=BB2_274 Depth=2
	lw x11, 240 ( sp )
	add x22, sp, 168
	jal x0, .LBB2_280
.LBB2_286:                              //  %__sprint_r.exit1488.thread1695
                                        //    in Loop: Header=BB2_274 Depth=2
	mv x21, x0
	add x9, sp, 232
	mv x12, x21
	mv x11, x21
	mv x14, x22
	add x18, x0, 16
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	add x19, x19, -16
	sw x10, 0 ( x14 )
	blt x18, x19, .LBB2_274
	jal x0, .LBB2_268
.LBB2_287:                              //  %if.end680.if.end723_crit_edge
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x13, 236 ( sp )
	lw x11, 8 ( x9 )
	jal x0, .LBB2_289
.LBB2_288:                              //    in Loop: Header=BB2_14 Depth=1
	add x14, x14, 8
.LBB2_289:                              //  %if.end723
                                        //    in Loop: Header=BB2_14 Depth=1
	add x27, x0, 122
.LBB2_290:                              //  %if.end723
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	add x12, x13, 1
	sw x26, 0 ( x14 )
	sw x12, 236 ( sp )
	add x11, x10, x11
	sw x10, 4 ( x14 )
	slti x10, x13, 7
	sw x11, 8 ( x9 )
	bltu x0, x10, .LBB2_304
.LBB2_291:                              //  %if.then733
                                        //    in Loop: Header=BB2_14 Depth=1
	add x26, x0, -1
	beq x0, x11, .LBB2_333
.LBB2_292:                              //  %if.end.i1533
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x10, 101 ( fp )
	and x10, x10, 32
	bltu x0, x10, .LBB2_335
.LBB2_293:                              //  %__sprint_r.exit1562
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x10, x25
	mv x11, fp
	mv x12, x9
	jal __sfvwrite_r
	mv x11, x21
	mv x12, x21
	mv x13, x22
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	bltu x0, x10, .LBB2_403
.LBB2_294:                              //  %if.end739
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	and x10, x10, 4
	beq x0, x10, .LBB2_305
.LBB2_295:                              //  %if.then742
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x27, 20 ( sp )               //  4-byte Folded Reload
	sub x19, x24, x27
	bge x0, x19, .LBB2_334
.LBB2_296:                              //  %while.cond747.preheader
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x13 )
	slti x10, x19, 17
	beq x0, x10, .LBB2_313
.LBB2_297:                              //    in Loop: Header=BB2_14 Depth=1
	add x10, x13, 4
	sw x19, 0 ( x10 )
	add x10, x12, 1
	add x11, x19, x11
	sw x10, 236 ( sp )
	add x27, x0, 122
	slti x10, x12, 7
	sw x11, 8 ( x9 )
	bltu x0, x10, .LBB2_305
.LBB2_298:                              //  %if.then778
                                        //    in Loop: Header=BB2_14 Depth=1
	beq x0, x11, .LBB2_366
.LBB2_299:                              //  %if.end.i1607
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x10, 101 ( fp )
	and x10, x10, 32
	bltu x0, x10, .LBB2_369
.LBB2_300:                              //  %__sprint_r.exit1636
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x10, x25
	mv x11, fp
	mv x12, x9
	jal __sfvwrite_r
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	bltu x0, x10, .LBB2_403
.LBB2_301:                              //  %if.end786.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	blt x10, x24, .LBB2_303
.LBB2_302:                              //  %if.end786.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x24, x10
.LBB2_303:                              //  %if.end786.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	sw x0, 236 ( sp )
	add x10, x10, x24
	mv x24, x10
	sw x22, 56 ( sp )               //  4-byte Folded Spill
	mv x9, x23
	lbu x10, 0 ( x9 )
	beq x0, x10, .LBB2_418
.LBB2_419:                              //  %if.end786.thread
	jal x0, .LBB2_12
.LBB2_418:                              //  %if.end786.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	jal x0, .LBB2_14
.LBB2_304:                              //    in Loop: Header=BB2_14 Depth=1
	add x13, x14, 8
	add x26, x0, -1
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	and x10, x10, 4
	bltu x0, x10, .LBB2_295
.LBB2_305:                              //  %if.end786
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	blt x10, x24, .LBB2_307
.LBB2_306:                              //  %if.end786
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x24, x10
.LBB2_307:                              //  %if.end786
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	add x10, x10, x24
	mv x24, x10
	beq x0, x11, .LBB2_310
.LBB2_308:                              //  %if.end.i1163
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x10, 101 ( fp )
	and x10, x10, 32
	bltu x0, x10, .LBB2_326
.LBB2_309:                              //  %__sprint_r.exit1192
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x10, x25
	mv x11, fp
	mv x12, x9
	jal __sfvwrite_r
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	bltu x0, x10, .LBB2_399
.LBB2_310:                              //  %if.end800
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 236 ( sp )
	sw x22, 56 ( sp )               //  4-byte Folded Spill
	mv x9, x23
	lbu x10, 0 ( x9 )
	beq x0, x10, .LBB2_420
.LBB2_421:                              //  %if.end800
	jal x0, .LBB2_12
.LBB2_420:                              //  %if.end800
                                        //    in Loop: Header=BB2_14 Depth=1
	jal x0, .LBB2_14
.LBB2_311:                              //    in Loop: Header=BB2_313 Depth=2
	add x13, x13, 8
	mv x12, x10
.LBB2_312:                              //  %if.end766
                                        //    in Loop: Header=BB2_313 Depth=2
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	add x19, x19, -16
	sw x10, 0 ( x13 )
	bge x18, x19, .LBB2_297
.LBB2_313:                              //  %while.body750
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_319 Depth 3
                                        //        Child Loop BB2_322 Depth 3
	add x10, x12, 1
	add x11, x11, 16
	slti x12, x12, 7
	sw x11, 8 ( x9 )
	sw x18, 4 ( x13 )
	sw x10, 236 ( sp )
	bltu x0, x12, .LBB2_311
.LBB2_314:                              //  %if.then760
                                        //    in Loop: Header=BB2_313 Depth=2
	beq x0, x11, .LBB2_317
.LBB2_315:                              //  %if.end.i1570
                                        //    in Loop: Header=BB2_313 Depth=2
	lbu x10, 101 ( fp )
	and x10, x10, 32
	bltu x0, x10, .LBB2_318
.LBB2_316:                              //  %__sprint_r.exit1599
                                        //    in Loop: Header=BB2_313 Depth=2
	mv x10, x25
	mv x11, fp
	mv x12, x9
	jal __sfvwrite_r
	mv x12, x21
	mv x11, x21
	mv x13, x22
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	beq x0, x10, .LBB2_312
	jal x0, .LBB2_403
.LBB2_317:                              //  %__sprint_r.exit1599.thread
                                        //    in Loop: Header=BB2_313 Depth=2
	sw x0, 236 ( sp )
	mv x12, x21
	mv x11, x21
	mv x13, x22
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	add x19, x19, -16
	sw x10, 0 ( x13 )
	blt x18, x19, .LBB2_313
	jal x0, .LBB2_297
.LBB2_318:                              //  %for.body.preheader.i1572
                                        //    in Loop: Header=BB2_313 Depth=2
	lw x18, 232 ( sp )
	lw x21, 4 ( x18 )
	srl x9, x21, 2&31
	bltu x0, x9, .LBB2_321
.LBB2_319:                              //  %for.inc10.i1592
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_313 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	and x10, x21, -4
	sub x11, x11, x10
	add x18, x18, 8
	sw x11, 240 ( sp )
	beq x0, x11, .LBB2_325
.LBB2_320:                              //  %for.body.i1577
                                        //    in Loop: Header=BB2_319 Depth=3
	lw x21, 4 ( x18 )
	srl x9, x21, 2&31
	beq x0, x9, .LBB2_319
.LBB2_321:                              //    in Loop: Header=BB2_313 Depth=2
	lw x22, 0 ( x18 )
.LBB2_322:                              //  %for.body6.i1585
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_313 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x11, 0 ( x22 )
	mv x10, x25
	mv x12, fp
	jal _fputwc_r
	xor x10, x10, -1
	beq x0, x10, .LBB2_385
.LBB2_323:                              //  %for.cond4.i1579
                                        //    in Loop: Header=BB2_322 Depth=3
	add x22, x22, 4
	add x9, x9, -1
	bltu x0, x9, .LBB2_322
.LBB2_324:                              //  %for.inc10.loopexit.i1587
                                        //    in Loop: Header=BB2_313 Depth=2
	lw x11, 240 ( sp )
	add x22, sp, 168
	jal x0, .LBB2_319
.LBB2_325:                              //  %__sprint_r.exit1599.thread1719
                                        //    in Loop: Header=BB2_313 Depth=2
	mv x21, x0
	add x9, sp, 232
	mv x12, x21
	mv x11, x21
	mv x13, x22
	add x18, x0, 16
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	add x19, x19, -16
	sw x10, 0 ( x13 )
	blt x18, x19, .LBB2_313
	jal x0, .LBB2_297
.LBB2_326:                              //  %for.body.preheader.i1165
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x9, 232 ( sp )
	lw x18, 4 ( x9 )
	srl x19, x18, 2&31
	bltu x0, x19, .LBB2_329
.LBB2_327:                              //  %for.inc10.i1185
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	and x10, x18, -4
	sub x11, x11, x10
	add x9, x9, 8
	sw x11, 240 ( sp )
	beq x0, x11, .LBB2_377
.LBB2_328:                              //  %for.body.i1170
                                        //    in Loop: Header=BB2_327 Depth=2
	lw x18, 4 ( x9 )
	srl x19, x18, 2&31
	beq x0, x19, .LBB2_327
.LBB2_329:                              //    in Loop: Header=BB2_14 Depth=1
	lw x21, 0 ( x9 )
.LBB2_330:                              //  %for.body6.i1178
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x21 )
	mv x10, x25
	mv x12, fp
	jal _fputwc_r
	xor x10, x10, -1
	beq x0, x10, .LBB2_397
.LBB2_331:                              //  %for.cond4.i1172
                                        //    in Loop: Header=BB2_330 Depth=2
	add x21, x21, 4
	add x19, x19, -1
	bltu x0, x19, .LBB2_330
.LBB2_332:                              //  %for.inc10.loopexit.i1180
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x11, 240 ( sp )
	mv x21, x0
	jal x0, .LBB2_327
.LBB2_333:                              //  %__sprint_r.exit1562.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 236 ( sp )
	mv x11, x21
	mv x12, x21
	mv x13, x22
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	and x10, x10, 4
	bltu x0, x10, .LBB2_295
	jal x0, .LBB2_305
.LBB2_334:                              //    in Loop: Header=BB2_14 Depth=1
	add x27, x0, 122
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	bge x10, x24, .LBB2_306
	jal x0, .LBB2_307
.LBB2_335:                              //  %for.body.preheader.i1535
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x18, 232 ( sp )
	lw x19, 4 ( x18 )
	srl x9, x19, 2&31
	bltu x0, x9, .LBB2_338
.LBB2_336:                              //  %for.inc10.i1555
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	and x10, x19, -4
	sub x11, x11, x10
	add x18, x18, 8
	sw x11, 240 ( sp )
	beq x0, x11, .LBB2_378
.LBB2_337:                              //  %for.body.i1540
                                        //    in Loop: Header=BB2_336 Depth=2
	lw x19, 4 ( x18 )
	srl x9, x19, 2&31
	beq x0, x9, .LBB2_336
.LBB2_338:                              //    in Loop: Header=BB2_14 Depth=1
	lw x21, 0 ( x18 )
.LBB2_339:                              //  %for.body6.i1548
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x21 )
	mv x10, x25
	mv x12, fp
	jal _fputwc_r
	xor x10, x10, -1
	beq x0, x10, .LBB2_385
.LBB2_340:                              //  %for.cond4.i1542
                                        //    in Loop: Header=BB2_339 Depth=2
	add x21, x21, 4
	add x9, x9, -1
	bltu x0, x9, .LBB2_339
.LBB2_341:                              //  %for.inc10.loopexit.i1550
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x11, 240 ( sp )
	mv x21, x0
	jal x0, .LBB2_336
.LBB2_342:                              //  %__sprint_r.exit1525.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 236 ( sp )
	mv x11, x21
	mv x13, x21
	mv x14, x22
	jal x0, .LBB2_290
.LBB2_343:                              //  %for.body.preheader.i1498
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x18, 232 ( sp )
	lw x19, 4 ( x18 )
	srl x9, x19, 2&31
	bltu x0, x9, .LBB2_346
.LBB2_344:                              //  %for.inc10.i1518
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	and x10, x19, -4
	sub x11, x11, x10
	add x18, x18, 8
	sw x11, 240 ( sp )
	beq x0, x11, .LBB2_380
.LBB2_345:                              //  %for.body.i1503
                                        //    in Loop: Header=BB2_344 Depth=2
	lw x19, 4 ( x18 )
	srl x9, x19, 2&31
	beq x0, x9, .LBB2_344
.LBB2_346:                              //    in Loop: Header=BB2_14 Depth=1
	lw x21, 0 ( x18 )
.LBB2_347:                              //  %for.body6.i1511
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x21 )
	mv x10, x25
	mv x12, fp
	jal _fputwc_r
	xor x10, x10, -1
	beq x0, x10, .LBB2_385
.LBB2_348:                              //  %for.cond4.i1505
                                        //    in Loop: Header=BB2_347 Depth=2
	add x21, x21, 4
	add x9, x9, -1
	bltu x0, x9, .LBB2_347
.LBB2_349:                              //  %for.inc10.loopexit.i1513
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x11, 240 ( sp )
	mv x21, x0
	jal x0, .LBB2_344
.LBB2_350:                              //  %for.body.preheader.i1276
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x18, 232 ( sp )
	sw x13, 4 ( sp )                //  4-byte Folded Spill
	lw x22, 4 ( x18 )
	srl x9, x22, 2&31
	bltu x0, x9, .LBB2_353
.LBB2_351:                              //  %for.inc10.i1296
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	and x11, x22, -4
	sub x10, x10, x11
	add x18, x18, 8
	sw x10, 240 ( sp )
	beq x0, x10, .LBB2_381
.LBB2_352:                              //  %for.body.i1281
                                        //    in Loop: Header=BB2_351 Depth=2
	lw x22, 4 ( x18 )
	srl x9, x22, 2&31
	beq x0, x9, .LBB2_351
.LBB2_353:                              //    in Loop: Header=BB2_14 Depth=1
	lw x25, 0 ( x18 )
.LBB2_354:                              //  %for.body6.i1289
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x25 )
	lw x10, 60 ( sp )               //  4-byte Folded Reload
	mv x12, fp
	jal _fputwc_r
	xor x10, x10, -1
	beq x0, x10, .LBB2_385
.LBB2_355:                              //  %for.cond4.i1283
                                        //    in Loop: Header=BB2_354 Depth=2
	add x25, x25, 4
	add x9, x9, -1
	bltu x0, x9, .LBB2_354
.LBB2_356:                              //  %for.inc10.loopexit.i1291
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 240 ( sp )
	lw x25, 60 ( sp )               //  4-byte Folded Reload
	lw x13, 4 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB2_351
.LBB2_357:                              //  %for.body.preheader.i1424
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x18, 232 ( sp )
	lw x19, 4 ( x18 )
	srl x9, x19, 2&31
	bltu x0, x9, .LBB2_360
.LBB2_358:                              //  %for.inc10.i1444
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	and x11, x19, -4
	sub x10, x10, x11
	add x18, x18, 8
	sw x10, 240 ( sp )
	beq x0, x10, .LBB2_382
.LBB2_359:                              //  %for.body.i1429
                                        //    in Loop: Header=BB2_358 Depth=2
	lw x19, 4 ( x18 )
	srl x9, x19, 2&31
	beq x0, x9, .LBB2_358
.LBB2_360:                              //    in Loop: Header=BB2_14 Depth=1
	lw x21, 0 ( x18 )
.LBB2_361:                              //  %for.body6.i1437
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x21 )
	mv x10, x25
	mv x12, fp
	jal _fputwc_r
	xor x10, x10, -1
	beq x0, x10, .LBB2_385
.LBB2_362:                              //  %for.cond4.i1431
                                        //    in Loop: Header=BB2_361 Depth=2
	add x21, x21, 4
	add x9, x9, -1
	bltu x0, x9, .LBB2_361
.LBB2_363:                              //  %for.inc10.loopexit.i1439
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 240 ( sp )
	mv x21, x0
	jal x0, .LBB2_358
.LBB2_364:                              //    in Loop: Header=BB2_14 Depth=1
	mv x26, x11
	jal x0, .LBB2_160
.LBB2_365:                              //    in Loop: Header=BB2_14 Depth=1
	mv x26, x11
	jal x0, .LBB2_184
.LBB2_366:                              //  %if.end786.thread2453
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	blt x10, x24, .LBB2_368
.LBB2_367:                              //  %if.end786.thread2453
                                        //    in Loop: Header=BB2_14 Depth=1
	mv x24, x10
.LBB2_368:                              //  %if.end786.thread2453
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	sw x0, 236 ( sp )
	sw x0, 236 ( sp )
	add x10, x10, x24
	mv x24, x10
	sw x22, 56 ( sp )               //  4-byte Folded Spill
	mv x9, x23
	lbu x10, 0 ( x9 )
	beq x0, x10, .LBB2_422
.LBB2_423:                              //  %if.end786.thread2453
	jal x0, .LBB2_12
.LBB2_422:                              //  %if.end786.thread2453
                                        //    in Loop: Header=BB2_14 Depth=1
	jal x0, .LBB2_14
.LBB2_369:                              //  %for.body.preheader.i1609
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x18, 232 ( sp )
	lw x19, 4 ( x18 )
	srl x9, x19, 2&31
	bltu x0, x9, .LBB2_372
.LBB2_370:                              //  %for.inc10.i1629
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	and x10, x19, -4
	sub x11, x11, x10
	add x18, x18, 8
	sw x11, 240 ( sp )
	beq x0, x11, .LBB2_383
.LBB2_371:                              //  %for.body.i1614
                                        //    in Loop: Header=BB2_370 Depth=2
	lw x19, 4 ( x18 )
	srl x9, x19, 2&31
	beq x0, x9, .LBB2_370
.LBB2_372:                              //    in Loop: Header=BB2_14 Depth=1
	lw x21, 0 ( x18 )
.LBB2_373:                              //  %for.body6.i1622
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 0 ( x21 )
	mv x10, x25
	mv x12, fp
	jal _fputwc_r
	xor x10, x10, -1
	beq x0, x10, .LBB2_385
.LBB2_374:                              //  %for.cond4.i1616
                                        //    in Loop: Header=BB2_373 Depth=2
	add x21, x21, 4
	add x9, x9, -1
	bltu x0, x9, .LBB2_373
.LBB2_375:                              //  %for.inc10.loopexit.i1624
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x11, 240 ( sp )
	mv x21, x0
	jal x0, .LBB2_370
.LBB2_376:                              //  %__sprint_r.exit1340.thread1663
                                        //    in Loop: Header=BB2_14 Depth=1
	add x22, sp, 168
	add x9, sp, 232
	mv x14, x22
	add x18, x0, 16
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	bltu x0, x21, .LBB2_218
	jal x0, .LBB2_246
.LBB2_377:                              //  %__sprint_r.exit1192.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	add x10, sp, 232
	sw x0, 236 ( sp )
	sw x0, 8 ( x10 )
	add x27, x0, 122
	sw x0, 236 ( sp )
	sw x22, 56 ( sp )               //  4-byte Folded Spill
	mv x9, x23
	lbu x10, 0 ( x9 )
	beq x0, x10, .LBB2_424
.LBB2_425:                              //  %__sprint_r.exit1192.thread
	jal x0, .LBB2_12
.LBB2_424:                              //  %__sprint_r.exit1192.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	jal x0, .LBB2_14
.LBB2_378:                              //  %__sprint_r.exit1562.thread1711
                                        //    in Loop: Header=BB2_14 Depth=1
	add x9, sp, 232
	mv x11, x21
	mv x12, x21
	mv x13, x22
	add x27, x0, 122
	add x18, x0, 16
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	and x10, x10, 4
	bltu x0, x10, .LBB2_295
	jal x0, .LBB2_305
.LBB2_379:                              //  %__sprint_r.exit1377.thread1671
                                        //    in Loop: Header=BB2_14 Depth=1
	add x9, sp, 232
	mv x14, x22
	mv x21, x0
	add x18, x0, 16
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	xor x10, x13, 128
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB2_223
	jal x0, .LBB2_266
.LBB2_380:                              //  %__sprint_r.exit1525.thread1703
                                        //    in Loop: Header=BB2_14 Depth=1
	add x9, sp, 232
	sw x0, 8 ( x9 )
	mv x11, x21
	sw x0, 236 ( sp )
	mv x13, x21
	mv x14, x22
	add x27, x0, 122
	add x18, x0, 16
	jal x0, .LBB2_290
.LBB2_381:                              //  %__sprint_r.exit1303.thread1655
                                        //    in Loop: Header=BB2_14 Depth=1
	add x22, sp, 168
	add x9, sp, 232
	mv x14, x22
	add x18, x0, 16
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	lbu x10, 247 ( sp )
	bltu x0, x10, .LBB2_190
	jal x0, .LBB2_217
.LBB2_382:                              //  %__sprint_r.exit1451.thread1687
                                        //    in Loop: Header=BB2_14 Depth=1
	add x9, sp, 232
	mv x14, x22
	add x18, x0, 16
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	jal x0, .LBB2_266
.LBB2_383:                              //  %__sprint_r.exit1636.thread1727
                                        //    in Loop: Header=BB2_14 Depth=1
	add x10, sp, 232
	add x27, x0, 122
	sw x0, 8 ( x10 )
	sw x0, 236 ( sp )
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	bge x10, x24, .LBB2_302
	jal x0, .LBB2_303
.LBB2_384:                              //  %if.then
	mv x10, x25
	jal __sinit
	lhu x10, 12 ( fp )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB2_426
.LBB2_427:                              //  %if.then
	jal x0, .LBB2_3
.LBB2_426:                              //  %if.then
	jal x0, .LBB2_4
.LBB2_385:                              //  %__sprint_r.exit1303.thread1658
	add x10, sp, 232
	lw x24, 32 ( sp )               //  4-byte Folded Reload
	sw x0, 8 ( x10 )
	sw x0, 236 ( sp )
	lbu x10, 12 ( fp )
	mv x11, x0
	and x10, x10, 64
	bne x10, x11, .LBB2_400
	jal x0, .LBB2_401
.LBB2_386:                              //  %done
	lw x10, 240 ( sp )
	lw x24, 32 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB2_398
.LBB2_387:                              //  %if.end.i
	lbu x11, 101 ( fp )
	and x11, x11, 32
	bltu x0, x11, .LBB2_390
.LBB2_388:                              //  %__sprint_r.exit
	add x9, sp, 232
	mv x10, x25
	mv x11, fp
	mv x12, x9
	jal __sfvwrite_r
	sw x0, 8 ( x9 )
	sw x0, 236 ( sp )
	bltu x0, x10, .LBB2_399
	jal x0, .LBB2_398
.LBB2_389:                              //  %__sprint_r.exit1266.thread1650
	add x10, sp, 232
	sw x0, 8 ( x10 )
	sw x0, 236 ( sp )
	mv x24, x19
	lbu x10, 12 ( fp )
	mv x11, x0
	and x10, x10, 64
	bne x10, x11, .LBB2_400
	jal x0, .LBB2_401
.LBB2_390:                              //  %for.body.preheader.i
	lw x9, 232 ( sp )
	lw x18, 4 ( x9 )
	srl x19, x18, 2&31
	bltu x0, x19, .LBB2_393
.LBB2_391:                              //  %for.inc10.i
                                        //  =>This Inner Loop Header: Depth=1
	and x11, x18, -4
	sub x10, x10, x11
	add x9, x9, 8
	sw x10, 240 ( sp )
	beq x0, x10, .LBB2_407
.LBB2_392:                              //  %for.body.i
                                        //    in Loop: Header=BB2_391 Depth=1
	lw x18, 4 ( x9 )
	srl x19, x18, 2&31
	beq x0, x19, .LBB2_391
.LBB2_393:
	lw x20, 0 ( x9 )
.LBB2_394:                              //  %for.body6.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x20 )
	mv x10, x25
	mv x12, fp
	jal _fputwc_r
	xor x10, x10, -1
	beq x0, x10, .LBB2_397
.LBB2_395:                              //  %for.cond4.i
                                        //    in Loop: Header=BB2_394 Depth=1
	add x20, x20, 4
	add x19, x19, -1
	bltu x0, x19, .LBB2_394
.LBB2_396:                              //  %for.inc10.loopexit.i
	lw x10, 240 ( sp )
	jal x0, .LBB2_391
.LBB2_397:                              //  %__sprint_r.exit1229.thread1642
	add x10, sp, 232
	sw x0, 8 ( x10 )
.LBB2_398:                              //  %if.end813
	sw x0, 236 ( sp )
.LBB2_399:                              //  %if.end819
	lbu x10, 12 ( fp )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB2_401
.LBB2_400:                              //  %if.end819
	add x24, x0, -1
.LBB2_401:                              //  %cleanup
	mv x10, x24
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
.LBB2_403:
	lw x24, 32 ( sp )               //  4-byte Folded Reload
	lbu x10, 12 ( fp )
	mv x11, x0
	and x10, x10, 64
	bne x10, x11, .LBB2_400
	jal x0, .LBB2_401
.LBB2_407:                              //  %__sprint_r.exit.thread
	add x10, sp, 232
	sw x0, 8 ( x10 )
	sw x0, 236 ( sp )
	jal x0, .LBB2_398
.Lfunc_end2:
	.size	_vfiprintf_r, .Lfunc_end2-_vfiprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI2_0:
	.long	.LBB2_386
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_38
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_40
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_41
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_46
	.long	.LBB2_49
	.long	.LBB2_113
	.long	.LBB2_48
	.long	.LBB2_30
	.long	.LBB2_113
	.long	.LBB2_52
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_77
	.long	.LBB2_83
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_91
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_78
	.long	.LBB2_113
	.long	.LBB2_97
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_103
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_77
	.long	.LBB2_84
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_53
	.long	.LBB2_84
	.long	.LBB2_37
	.long	.LBB2_113
	.long	.LBB2_55
	.long	.LBB2_113
	.long	.LBB2_68
	.long	.LBB2_92
	.long	.LBB2_105
	.long	.LBB2_37
	.long	.LBB2_113
	.long	.LBB2_78
	.long	.LBB2_51
	.long	.LBB2_98
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_106
	.long	.LBB2_113
	.long	.LBB2_51
                                        //  -- End function
	.text
	.type	__sbprintf,@function    //  -- Begin function __sbprintf
__sbprintf:                             //  @__sbprintf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -1152
	.cfi_adjust_cfa_offset 1152
	sw fp, 1136 ( sp )              //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x11
	sw x9, 1144 ( sp )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lhu x10, 12 ( fp )
	lui x11, %hi( 65533 )
	add x11, x11, %lo( 65533 )
	sw ra, 1148 ( sp )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	and x10, x11, x10
	add x11, sp, 1032
	sh x10, 12 ( x11 )
	lw x10, 100 ( fp )
	sw x18, 1140 ( sp )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x0, 24 ( x11 )
	sw x10, 100 ( x11 )
	lh x10, 14 ( fp )
	sh x10, 14 ( x11 )
	lw x10, 28 ( fp )
	sw x10, 28 ( x11 )
	lw x10, 36 ( fp )
	sw x10, 36 ( x11 )
	add x10, sp, 8
	sw x10, 16 ( x11 )
	sw x10, 1032 ( sp )
	add x10, x0, 1024
	sw x10, 8 ( x11 )
	sw x10, 1052 ( sp )
	mv x10, x9
	jal _vfiprintf_r
	mv x18, x10
	blt x18, x0, .LBB3_3
.LBB3_1:                                //  %land.lhs.true
	add x11, sp, 1032
	mv x10, x9
	jal _fflush_r
	mv x11, x0
	beq x10, x11, .LBB3_3
.LBB3_2:                                //  %land.lhs.true
	add x18, x0, -1
.LBB3_3:                                //  %if.end
	lbu x10, 1044 ( sp )
	and x10, x10, 64
	beq x0, x10, .LBB3_5
.LBB3_4:                                //  %if.then15
	lh x10, 12 ( fp )
	or x10, x10, 64
	sh x10, 12 ( fp )
.LBB3_5:                                //  %if.end19
	mv x10, x18
	lw fp, 1136 ( sp )              //  4-byte Folded Reload
	lw x18, 1140 ( sp )             //  4-byte Folded Reload
	lw x9, 1144 ( sp )              //  4-byte Folded Reload
	lw ra, 1148 ( sp )              //  4-byte Folded Reload
	add sp, sp, 1152
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end3:
	.size	__sbprintf, .Lfunc_end3-__sbprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	_vfiprintf_r.blanks,@object //  @_vfiprintf_r.blanks
	.section	.rodata,"a",@progbits
_vfiprintf_r.blanks:
	.zero	16,32
	.size	_vfiprintf_r.blanks, 16

	.address_space	0
	.type	_vfiprintf_r.zeroes,@object //  @_vfiprintf_r.zeroes
_vfiprintf_r.zeroes:
	.zero	16,48
	.size	_vfiprintf_r.zeroes, 16

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
