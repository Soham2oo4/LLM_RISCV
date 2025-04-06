	.text
	.file	"svfiscanf.c"
	.globl	_sungetc_r              //  -- Begin function _sungetc_r
	.type	_sungetc_r,@function
_sungetc_r:                             //  @_sungetc_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x12
	add x18, x0, -1
	xor x11, x9, -1
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	beq x0, x11, .LBB0_13
.LBB0_1:                                //  %if.end
	lhu x11, 12 ( fp )
	lui x12, %hi( 65503 )
	add x12, x12, %lo( 65503 )
	and x19, x9, 255
	and x11, x12, x11
	sh x11, 12 ( fp )
	lw x11, 48 ( fp )
	beq x0, x11, .LBB0_5
.LBB0_2:                                //  %if.then6
	lw x11, 52 ( fp )
	lw x12, 4 ( fp )
	blt x12, x11, .LBB0_4
.LBB0_3:                                //  %land.lhs.true
	mv x11, fp
	jal __submore
	bltu x0, x10, .LBB0_13
.LBB0_4:                                //  %if.end11
	lw x10, 0 ( fp )
	add x11, x10, -1
	sw x11, 0 ( fp )
	sb x9, -1 ( x10 )
.LBB0_11:                               //  %return
	lw x10, 4 ( fp )
	add x10, x10, 1
	sw x10, 4 ( fp )
	jal x0, .LBB0_12
.LBB0_5:                                //  %if.end14
	lw x11, 16 ( fp )
	beq x0, x11, .LBB0_6
.LBB0_8:                                //  %land.lhs.true18
	lw x10, 0 ( fp )
	bgeu x11, x10, .LBB0_7
.LBB0_9:                                //  %land.lhs.true24
	lbu x11, -1 ( x10 )
	and x12, x9, 255
	bne x11, x12, .LBB0_7
.LBB0_10:                               //  %if.then29
	add x10, x10, -1
	sw x10, 0 ( fp )
	jal x0, .LBB0_11
.LBB0_6:                                //  %if.end14.if.end34_crit_edge
	lw x10, 0 ( fp )
.LBB0_7:                                //  %if.end34
	sw x10, 56 ( fp )
	add x10, x0, 3
	sw x10, 52 ( fp )
	add x10, fp, 64
	sw x10, 48 ( fp )
	add x10, fp, 66
	sw x10, 0 ( fp )
	lw x10, 4 ( fp )
	seqz x11, x0
	sb x9, 66 ( fp )
	sw x11, 4 ( fp )
	sw x10, 60 ( fp )
.LBB0_12:                               //  %return
	mv x18, x19
.LBB0_13:                               //  %return
	mv x10, x18
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_sungetc_r, .Lfunc_end0-_sungetc_r
	.cfi_endproc
                                        //  -- End function
	.globl	__ssrefill_r            //  -- Begin function __ssrefill_r
	.type	__ssrefill_r,@function
__ssrefill_r:                           //  @__ssrefill_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x11
	lw x11, 48 ( fp )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x11, .LBB1_5
.LBB1_1:                                //  %if.then
	add x12, fp, 64
	beq x11, x12, .LBB1_3
.LBB1_2:                                //  %if.then4
	jal _free_r
.LBB1_3:                                //  %if.end
	lw x10, 60 ( fp )
	sw x0, 48 ( fp )
	sw x10, 4 ( fp )
	beq x0, x10, .LBB1_5
.LBB1_4:                                //  %if.then10
	lw x10, 56 ( fp )
	sw x10, 0 ( fp )
	mv x10, x0
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_5:                                //  %if.end12
	lw x10, 16 ( fp )
	sw x0, 4 ( fp )
	sw x10, 0 ( fp )
	lh x10, 12 ( fp )
	or x10, x10, 32
	sh x10, 12 ( fp )
	add x10, x0, -1
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	__ssrefill_r, .Lfunc_end1-__ssrefill_r
	.cfi_endproc
                                        //  -- End function
	.globl	_sfread_r               //  -- Begin function _sfread_r
	.type	_sfread_r,@function
_sfread_r:                              //  @_sfread_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv fp, x13
	mv x20, x12
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	mv x18, x11
	mv x22, x10
	mv x10, fp
	mv x11, x20
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	mv x9, x14
	jal __mulsi3
	mv x21, x10
	beq x0, x21, .LBB2_1
.LBB2_2:                                //  %while.cond.preheader
	lw x11, 0 ( x9 )
	lw x23, 4 ( x9 )
	bgeu x23, x21, .LBB2_3
.LBB2_4:                                //  %while.body.lr.ph
	add x24, x9, 64
	mv x19, x21
.LBB2_5:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x18
	mv x12, x23
	jal memcpy
	lw x10, 0 ( x9 )
	lw x11, 48 ( x9 )
	sub x19, x19, x23
	sw x0, 4 ( x9 )
	add x10, x23, x10
	sw x10, 0 ( x9 )
	beq x0, x11, .LBB2_12
.LBB2_6:                                //  %if.then.i
                                        //    in Loop: Header=BB2_5 Depth=1
	beq x11, x24, .LBB2_8
.LBB2_7:                                //  %if.then4.i
                                        //    in Loop: Header=BB2_5 Depth=1
	mv x10, x22
	jal _free_r
.LBB2_8:                                //  %if.end.i
                                        //    in Loop: Header=BB2_5 Depth=1
	lw x10, 60 ( x9 )
	sw x0, 48 ( x9 )
	sw x10, 4 ( x9 )
	beq x0, x10, .LBB2_12
.LBB2_9:                                //  %__ssrefill_r.exit
                                        //    in Loop: Header=BB2_5 Depth=1
	lw x11, 56 ( x9 )
	add x18, x23, x18
	mv x23, x10
	sw x11, 0 ( x9 )
	bltu x10, x19, .LBB2_5
	jal x0, .LBB2_10
.LBB2_1:
	mv fp, x0
	jal x0, .LBB2_11
.LBB2_3:
	mv x19, x21
.LBB2_10:                               //  %while.end
	mv x10, x18
	mv x12, x19
	jal memcpy
	lw x10, 4 ( x9 )
	sub x10, x10, x19
	sw x10, 4 ( x9 )
	lw x10, 0 ( x9 )
	add x10, x19, x10
	sw x10, 0 ( x9 )
	jal x0, .LBB2_11
.LBB2_12:                               //  %if.then6
	lw x10, 16 ( x9 )
	mv x11, x20
	sw x0, 4 ( x9 )
	sw x10, 0 ( x9 )
	lh x10, 12 ( x9 )
	or x10, x10, 32
	sh x10, 12 ( x9 )
	sub x10, x21, x19
	jal __udivsi3
	mv fp, x10
.LBB2_11:                               //  %cleanup
	mv x10, fp
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
.Lfunc_end2:
	.size	_sfread_r, .Lfunc_end2-_sfread_r
	.cfi_endproc
                                        //  -- End function
	.globl	__ssvfiscanf_r          //  -- Begin function __ssvfiscanf_r
	.type	__ssvfiscanf_r,@function
__ssvfiscanf_r:                         //  @__ssvfiscanf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -448
	.cfi_adjust_cfa_offset 448
	sw fp, 432 ( sp )
	.cfi_offset 8, -16
	add fp, sp, 432
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
	bltu x0, x12, .LBB3_2
.LBB3_1:                                //  %if.then
	or x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 100 ( x18 )
	lui x11, %hi( -8193 )
	add x11, x11, %lo( -8193 )
	and x10, x11, x10
	sw x10, 100 ( x18 )
.LBB3_2:                                //  %do.end
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB3_3
.LBB3_569:                              //  %do.end
	jal x0, .LBB3_540
.LBB3_3:                                //  %land.lhs.true.lr.ph.lr.ph.lr.ph.lr.ph
	add x11, x18, 66
	sw x11, -400 ( fp )             //  4-byte Folded Spill
	lui x11, %hi( _ctype_ )
	mv x25, x0
	add x20, x11, %lo( _ctype_ )
	lui x11, %hi( JTI3_0 )
	add x11, x11, %lo( JTI3_0 )
	add x9, x18, 64
	mv x27, x25
	sw x25, -396 ( fp )             //  4-byte Folded Spill
	sw x11, -380 ( fp )             //  4-byte Folded Spill
	sw x25, -384 ( fp )             //  4-byte Folded Spill
	sw x25, -388 ( fp )             //  4-byte Folded Spill
	sw x25, -392 ( fp )             //  4-byte Folded Spill
.LBB3_4:                                //  %land.lhs.true.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB3_5 Depth 2
                                        //      Child Loop BB3_21 Depth 2
                                        //      Child Loop BB3_85 Depth 2
                                        //      Child Loop BB3_168 Depth 2
                                        //      Child Loop BB3_401 Depth 2
                                        //      Child Loop BB3_378 Depth 2
                                        //      Child Loop BB3_457 Depth 2
                                        //      Child Loop BB3_216 Depth 2
                                        //      Child Loop BB3_301 Depth 2
                                        //      Child Loop BB3_440 Depth 2
                                        //      Child Loop BB3_349 Depth 2
                                        //      Child Loop BB3_140 Depth 2
                                        //      Child Loop BB3_477 Depth 2
                                        //      Child Loop BB3_204 Depth 2
                                        //      Child Loop BB3_282 Depth 2
                                        //      Child Loop BB3_423 Depth 2
                                        //      Child Loop BB3_318 Depth 2
                                        //      Child Loop BB3_119 Depth 2
                                        //      Child Loop BB3_194 Depth 2
	add x11, x10, x20
	add x23, x21, 1
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	beq x0, x11, .LBB3_17
.LBB3_5:                                //  %for.cond15.preheader
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 4 ( x18 )
	bge x0, x10, .LBB3_7
.LBB3_6:                                //  %for.cond15.lor.lhs.false_crit_edge
                                        //    in Loop: Header=BB3_5 Depth=2
	lw x11, 0 ( x18 )
	jal x0, .LBB3_12
.LBB3_7:                                //  %land.lhs.true18
                                        //    in Loop: Header=BB3_5 Depth=2
	lw x11, 48 ( x18 )
	beq x0, x11, .LBB3_14
.LBB3_8:                                //  %if.then.i
                                        //    in Loop: Header=BB3_5 Depth=2
	beq x11, x9, .LBB3_10
.LBB3_9:                                //  %if.then4.i
                                        //    in Loop: Header=BB3_5 Depth=2
	mv x10, x19
	jal _free_r
.LBB3_10:                               //  %if.end.i
                                        //    in Loop: Header=BB3_5 Depth=2
	lw x10, 60 ( x18 )
	sw x0, 48 ( x18 )
	sw x10, 4 ( x18 )
	beq x0, x10, .LBB3_14
.LBB3_11:                               //  %__ssrefill_r.exit.thread
                                        //    in Loop: Header=BB3_5 Depth=2
	lw x11, 56 ( x18 )
	sw x11, 0 ( x18 )
.LBB3_12:                               //  %lor.lhs.false
                                        //    in Loop: Header=BB3_5 Depth=2
	lbu x12, 0 ( x11 )
	add x12, x12, x20
	lbu x12, 1 ( x12 )
	and x12, x12, 8
	beq x0, x12, .LBB3_15
.LBB3_13:                               //  %if.end26
                                        //    in Loop: Header=BB3_5 Depth=2
	add x11, x11, 1
	add x10, x10, -1
	sw x11, 0 ( x18 )
	sw x10, 4 ( x18 )
	add x27, x27, 1
	blt x0, x10, .LBB3_6
	jal x0, .LBB3_7
.LBB3_14:                               //  %__ssrefill_r.exit
                                        //    in Loop: Header=BB3_5 Depth=2
	lw x10, 16 ( x18 )
	sw x0, 4 ( x18 )
	sw x10, 0 ( x18 )
	lh x10, 12 ( x18 )
	or x10, x10, 32
	sh x10, 12 ( x18 )
.LBB3_15:                               //  %for.end
                                        //    in Loop: Header=BB3_5 Depth=2
	lbu x10, 0 ( x23 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB3_16
.LBB3_570:                              //  %for.end
	jal x0, .LBB3_547
.LBB3_16:                               //  %land.lhs.true
                                        //    in Loop: Header=BB3_5 Depth=2
	add x11, x10, x20
	add x23, x23, 1
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB3_5
.LBB3_17:                               //  %if.end29
                                        //    in Loop: Header=BB3_4 Depth=1
	and x10, x10, 255
	xor x10, x10, 37
	bltu x0, x10, .LBB3_44
.LBB3_18:                               //  %again.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	mv x26, x0
	mv x22, x26
	lbu x24, 0 ( x23 )
	add x11, x0, 85
	add x10, x24, -37
	bgeu x11, x10, .LBB3_21
	jal x0, .LBB3_547
.LBB3_19:                               //  %sw.bb115
                                        //    in Loop: Header=BB3_21 Depth=2
	and x10, x26, 15
	mv x23, x21
	beq x0, x10, .LBB3_20
.LBB3_571:                              //  %sw.bb115
	jal x0, .LBB3_547
.LBB3_20:                               //  %again
                                        //    in Loop: Header=BB3_21 Depth=2
	lbu x24, 0 ( x23 )
	add x11, x0, 85
	add x10, x24, -37
	bgeu x11, x10, .LBB3_21
.LBB3_572:                              //  %again
	jal x0, .LBB3_547
.LBB3_21:                               //  %again
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, -380 ( fp )             //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x21, x23, 1
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB3_22:                               //  %sw.bb132
                                        //    in Loop: Header=BB3_21 Depth=2
	and x10, x26, 143
	beq x0, x10, .LBB3_23
.LBB3_573:                              //  %sw.bb132
	jal x0, .LBB3_547
.LBB3_23:                               //  %if.end136
                                        //    in Loop: Header=BB3_21 Depth=2
	add x11, x0, 10
	mv x10, x22
	jal __mulsi3
	add x10, x24, x10
	add x22, x10, -48
.LBB3_26:                               //  %if.end88
                                        //    in Loop: Header=BB3_21 Depth=2
	mv x23, x21
	lbu x24, 0 ( x23 )
	add x11, x0, 85
	add x10, x24, -37
	bgeu x11, x10, .LBB3_21
	jal x0, .LBB3_547
.LBB3_24:                               //  %sw.bb84
                                        //    in Loop: Header=BB3_21 Depth=2
	and x10, x26, 15
	beq x0, x10, .LBB3_25
.LBB3_574:                              //  %sw.bb84
	jal x0, .LBB3_547
.LBB3_25:                               //  %if.end88
                                        //    in Loop: Header=BB3_21 Depth=2
	or x26, x26, 2
	jal x0, .LBB3_26
.LBB3_27:                               //  %sw.bb63
                                        //    in Loop: Header=BB3_21 Depth=2
	and x10, x26, 159
	or x10, x22, x10
	beq x0, x10, .LBB3_28
.LBB3_575:                              //  %sw.bb63
	jal x0, .LBB3_547
.LBB3_28:                               //  %if.end69
                                        //    in Loop: Header=BB3_21 Depth=2
	or x26, x26, 16
	mv x22, x0
	jal x0, .LBB3_26
.LBB3_29:                               //  %sw.bb90
                                        //    in Loop: Header=BB3_21 Depth=2
	and x10, x26, 15
	beq x0, x10, .LBB3_30
.LBB3_576:                              //  %sw.bb90
	jal x0, .LBB3_547
.LBB3_30:                               //  %if.end94
                                        //    in Loop: Header=BB3_21 Depth=2
	lbu x10, 1 ( x23 )
	add x11, x0, 104
	beq x10, x11, .LBB3_40
.LBB3_31:                               //  %if.end94
                                        //    in Loop: Header=BB3_21 Depth=2
	add x10, x0, 4
	jal x0, .LBB3_35
.LBB3_32:                               //  %sw.bb71
                                        //    in Loop: Header=BB3_21 Depth=2
	and x10, x26, 15
	beq x0, x10, .LBB3_33
.LBB3_577:                              //  %sw.bb71
	jal x0, .LBB3_547
.LBB3_33:                               //  %if.end75
                                        //    in Loop: Header=BB3_21 Depth=2
	lbu x10, 1 ( x23 )
	add x11, x0, 108
	beq x10, x11, .LBB3_41
.LBB3_34:                               //  %if.end75
                                        //    in Loop: Header=BB3_21 Depth=2
	seqz x10, x0
.LBB3_35:                               //  %if.end75
                                        //    in Loop: Header=BB3_21 Depth=2
	mv x23, x21
	jal x0, .LBB3_43
.LBB3_36:                               //  %sw.bb120
                                        //    in Loop: Header=BB3_21 Depth=2
	and x10, x26, 143
	beq x0, x10, .LBB3_37
.LBB3_578:                              //  %sw.bb120
	jal x0, .LBB3_547
.LBB3_37:                               //  %do.body125
                                        //    in Loop: Header=BB3_21 Depth=2
	bltu x0, x25, .LBB3_39
.LBB3_38:                               //  %if.then127
                                        //    in Loop: Header=BB3_21 Depth=2
	mv x10, sp
	add x25, x10, -16
	mv sp, x25
	sw x0, -12 ( x10 )
	sw x0, -16 ( x10 )
.LBB3_39:                               //  %do.end130
                                        //    in Loop: Header=BB3_21 Depth=2
	or x26, x26, 128
	jal x0, .LBB3_26
.LBB3_40:                               //    in Loop: Header=BB3_21 Depth=2
	add x10, x0, 8
	jal x0, .LBB3_42
.LBB3_41:                               //    in Loop: Header=BB3_21 Depth=2
	add x10, x0, 2
.LBB3_42:                               //    in Loop: Header=BB3_21 Depth=2
	add x23, x23, 2
.LBB3_43:                               //    in Loop: Header=BB3_21 Depth=2
	or x26, x26, x10
	lbu x24, 0 ( x23 )
	add x11, x0, 85
	add x10, x24, -37
	bgeu x11, x10, .LBB3_21
	jal x0, .LBB3_547
.LBB3_44:                               //    in Loop: Header=BB3_4 Depth=1
	mv x21, x23
.LBB3_45:                               //  %literal
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 4 ( x18 )
	bge x0, x10, .LBB3_47
.LBB3_46:                               //  %literal.if.end47_crit_edge
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11, 0 ( x18 )
	lbu x12, -1 ( x21 )
	lbu x13, 0 ( x11 )
	beq x13, x12, .LBB3_52
	jal x0, .LBB3_547
.LBB3_47:                               //  %land.lhs.true43
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11, 48 ( x18 )
	bltu x0, x11, .LBB3_48
.LBB3_579:                              //  %land.lhs.true43
	jal x0, .LBB3_554
.LBB3_48:                               //  %if.then.i2234
                                        //    in Loop: Header=BB3_4 Depth=1
	beq x11, x9, .LBB3_50
.LBB3_49:                               //  %if.then4.i2235
                                        //    in Loop: Header=BB3_4 Depth=1
	mv x10, x19
	jal _free_r
.LBB3_50:                               //  %if.end.i2239
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 60 ( x18 )
	sw x0, 48 ( x18 )
	sw x10, 4 ( x18 )
	bltu x0, x10, .LBB3_51
.LBB3_580:                              //  %if.end.i2239
	jal x0, .LBB3_554
.LBB3_51:                               //  %__ssrefill_r.exit2247.thread
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11, 56 ( x18 )
	sw x11, 0 ( x18 )
	lbu x12, -1 ( x21 )
	lbu x13, 0 ( x11 )
	beq x13, x12, .LBB3_52
.LBB3_581:                              //  %__ssrefill_r.exit2247.thread
	jal x0, .LBB3_547
.LBB3_52:                               //  %if.end54
                                        //    in Loop: Header=BB3_4 Depth=1
	add x11, x11, 1
	add x10, x10, -1
	sw x11, 0 ( x18 )
	sw x10, 4 ( x18 )
	add x27, x27, 1
.LBB3_53:                               //  %for.cond.outer2752.backedge
                                        //    in Loop: Header=BB3_4 Depth=1
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB3_4
	jal x0, .LBB3_547
.LBB3_54:                               //  %sw.bb145
                                        //    in Loop: Header=BB3_4 Depth=1
	add x10, x0, 16
	sw x10, -388 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtoul_r )
	add x10, x10, %lo( _strtoul_r )
	sw x25, -404 ( fp )             //  4-byte Folded Spill
	add x23, x0, 3
	sw x10, -396 ( fp )             //  4-byte Folded Spill
	or x26, x26, 512
	lw x25, 4 ( x18 )
	blt x0, x25, .LBB3_81
	jal x0, .LBB3_76
.LBB3_55:                               //  %sw.bb153
                                        //    in Loop: Header=BB3_4 Depth=1
	or x26, x26, 1
.LBB3_56:                               //  %sw.bb155
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x25, -404 ( fp )             //  4-byte Folded Spill
	mv x23, x0
	or x26, x26, 64
	lw x25, 4 ( x18 )
	blt x0, x25, .LBB3_81
	jal x0, .LBB3_76
.LBB3_57:                               //  %sw.bb137
                                        //    in Loop: Header=BB3_4 Depth=1
	add x10, x0, 10
	sw x10, -388 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtol_r )
	add x23, x0, 3
	add x10, x10, %lo( _strtol_r )
	sw x25, -404 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB3_59
.LBB3_58:                               //  %sw.bb141
                                        //    in Loop: Header=BB3_4 Depth=1
	add x10, x0, 8
	sw x10, -388 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtoul_r )
	sw x25, -404 ( fp )             //  4-byte Folded Spill
	add x23, x0, 3
	add x10, x10, %lo( _strtoul_r )
.LBB3_59:                               //  %sw.epilog
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x10, -396 ( fp )             //  4-byte Folded Spill
	or x26, x26, 1
	lw x25, 4 ( x18 )
	blt x0, x25, .LBB3_81
	jal x0, .LBB3_76
.LBB3_60:                               //  %sw.bb147
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x25, -404 ( fp )             //  4-byte Folded Spill
	add x23, x0, 2
	or x26, x26, 1
	lw x25, 4 ( x18 )
	blt x0, x25, .LBB3_81
	jal x0, .LBB3_76
.LBB3_61:                               //  %sw.bb150
                                        //    in Loop: Header=BB3_4 Depth=1
	add x10, fp, -328
	mv x11, x21
	sw x25, -404 ( fp )             //  4-byte Folded Spill
	jal __sccl
	mv x21, x10
	seqz x23, x0
	or x26, x26, 64
	lw x25, 4 ( x18 )
	blt x0, x25, .LBB3_81
	jal x0, .LBB3_76
.LBB3_62:                               //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB3_4 Depth=1
	add x23, x0, 3
	add x10, x0, 10
	sw x25, -404 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB3_64
.LBB3_63:                               //  %sw.epilog.loopexit3430
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x25, -404 ( fp )             //  4-byte Folded Spill
	add x23, x0, 3
	mv x10, x0
.LBB3_64:                               //  %sw.epilog
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x10, -388 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtol_r )
	add x10, x10, %lo( _strtol_r )
	sw x10, -396 ( fp )             //  4-byte Folded Spill
	lw x25, 4 ( x18 )
	blt x0, x25, .LBB3_81
	jal x0, .LBB3_76
.LBB3_65:                               //  %sw.bb159
                                        //    in Loop: Header=BB3_4 Depth=1
	and x10, x26, 16
	bltu x0, x10, .LBB3_53
.LBB3_66:                               //  %if.end163
                                        //    in Loop: Header=BB3_4 Depth=1
	and x10, x26, 8
	bltu x0, x10, .LBB3_259
.LBB3_67:                               //  %if.else168
                                        //    in Loop: Header=BB3_4 Depth=1
	and x10, x26, 4
	beq x0, x10, .LBB3_68
.LBB3_582:                              //  %if.else168
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_448
.LBB3_68:                               //  %if.else174
                                        //    in Loop: Header=BB3_4 Depth=1
	and x10, x26, 1
	bltu x0, x10, .LBB3_70
.LBB3_69:                               //  %if.else179
                                        //    in Loop: Header=BB3_4 Depth=1
	and x10, x26, 2
	beq x0, x10, .LBB3_70
.LBB3_583:                              //  %if.else179
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_535
.LBB3_70:                               //  %if.then177
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sw x27, 0 ( x10 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB3_4
	jal x0, .LBB3_547
.LBB3_71:                               //  %sw.epilog.loopexit4008
                                        //    in Loop: Header=BB3_4 Depth=1
	add x23, x0, 3
	add x10, x0, 8
	sw x25, -404 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB3_75
.LBB3_72:                               //  %sw.bb157
                                        //    in Loop: Header=BB3_4 Depth=1
	add x10, x0, 16
	sw x10, -388 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtoul_r )
	add x10, x10, %lo( _strtoul_r )
	sw x25, -404 ( fp )             //  4-byte Folded Spill
	add x23, x0, 3
	sw x10, -396 ( fp )             //  4-byte Folded Spill
	or x26, x26, 544
	lw x25, 4 ( x18 )
	blt x0, x25, .LBB3_81
	jal x0, .LBB3_76
.LBB3_73:                               //  %sw.epilog.loopexit4981
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x25, -404 ( fp )             //  4-byte Folded Spill
	add x23, x0, 2
	lw x25, 4 ( x18 )
	blt x0, x25, .LBB3_81
	jal x0, .LBB3_76
.LBB3_74:                               //  %sw.epilog.loopexit4491
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x25, -404 ( fp )             //  4-byte Folded Spill
	add x23, x0, 3
	add x10, x0, 10
.LBB3_75:                               //  %sw.epilog
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x10, -388 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtoul_r )
	add x10, x10, %lo( _strtoul_r )
	sw x10, -396 ( fp )             //  4-byte Folded Spill
	lw x25, 4 ( x18 )
	blt x0, x25, .LBB3_81
.LBB3_76:                               //  %land.lhs.true194
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11, 48 ( x18 )
	bltu x0, x11, .LBB3_77
.LBB3_584:                              //  %land.lhs.true194
	jal x0, .LBB3_541
.LBB3_77:                               //  %if.then.i2252
                                        //    in Loop: Header=BB3_4 Depth=1
	beq x11, x9, .LBB3_79
.LBB3_78:                               //  %if.then4.i2253
                                        //    in Loop: Header=BB3_4 Depth=1
	mv x10, x19
	jal _free_r
.LBB3_79:                               //  %if.end.i2257
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x25, 60 ( x18 )
	sw x0, 48 ( x18 )
	sw x25, 4 ( x18 )
	bltu x0, x25, .LBB3_80
.LBB3_585:                              //  %if.end.i2257
	jal x0, .LBB3_541
.LBB3_80:                               //  %__ssrefill_r.exit2265.thread
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 56 ( x18 )
	sw x10, 0 ( x18 )
.LBB3_81:                               //  %if.end198
                                        //    in Loop: Header=BB3_4 Depth=1
	and x10, x26, 64
	bltu x0, x10, .LBB3_92
.LBB3_82:                               //  %while.cond.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x18 )
	jal x0, .LBB3_85
.LBB3_83:                               //  %if.then214
                                        //    in Loop: Header=BB3_85 Depth=2
	add x10, x10, 1
.LBB3_84:                               //  %if.end222
                                        //    in Loop: Header=BB3_85 Depth=2
	sw x10, 0 ( x18 )
	add x27, x27, 1
.LBB3_85:                               //  %while.cond.preheader
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x11, 0 ( x10 )
	add x11, x11, x20
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	beq x0, x11, .LBB3_92
.LBB3_86:                               //  %while.body
                                        //    in Loop: Header=BB3_85 Depth=2
	add x25, x25, -1
	sw x25, 4 ( x18 )
	blt x0, x25, .LBB3_83
.LBB3_87:                               //  %if.else217
                                        //    in Loop: Header=BB3_85 Depth=2
	lw x11, 48 ( x18 )
	bltu x0, x11, .LBB3_88
.LBB3_586:                              //  %if.else217
	jal x0, .LBB3_541
.LBB3_88:                               //  %if.then.i2270
                                        //    in Loop: Header=BB3_85 Depth=2
	beq x11, x9, .LBB3_90
.LBB3_89:                               //  %if.then4.i2271
                                        //    in Loop: Header=BB3_85 Depth=2
	mv x10, x19
	jal _free_r
.LBB3_90:                               //  %if.end.i2275
                                        //    in Loop: Header=BB3_85 Depth=2
	lw x25, 60 ( x18 )
	sw x0, 48 ( x18 )
	sw x25, 4 ( x18 )
	bltu x0, x25, .LBB3_91
.LBB3_587:                              //  %if.end.i2275
	jal x0, .LBB3_541
.LBB3_91:                               //  %__ssrefill_r.exit2283.thread
                                        //    in Loop: Header=BB3_85 Depth=2
	lw x10, 56 ( x18 )
	jal x0, .LBB3_84
.LBB3_92:                               //  %if.end223
                                        //    in Loop: Header=BB3_4 Depth=1
	lui x11, %hi( JTI3_1 )
	sll x10, x23, 2&31
	add x11, x11, %lo( JTI3_1 )
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB3_93:                               //  %sw.bb224
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x23, -392 ( fp )             //  4-byte Folded Reload
	mv x24, x0
	bne x22, x24, .LBB3_95
.LBB3_94:                               //    in Loop: Header=BB3_4 Depth=1
	seqz x22, x0
.LBB3_95:                               //  %sw.bb224
                                        //    in Loop: Header=BB3_4 Depth=1
	and x10, x26, 1
	bltu x0, x10, .LBB3_113
.LBB3_96:                               //  %if.else408
                                        //    in Loop: Header=BB3_4 Depth=1
	and x10, x26, 16
	bltu x0, x10, .LBB3_192
.LBB3_97:                               //  %if.else441
                                        //    in Loop: Header=BB3_4 Depth=1
	and x10, x26, 128
	bltu x0, x10, .LBB3_231
.LBB3_98:                               //  %if.else502
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -68 ( fp )
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	mv x23, x0
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x24, 0 ( x10 )
	jal x0, .LBB3_266
.LBB3_99:                               //  %sw.bb531
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x23, -392 ( fp )             //  4-byte Folded Reload
	mv x24, x0
	bne x22, x24, .LBB3_101
.LBB3_100:                              //    in Loop: Header=BB3_4 Depth=1
	add x22, x0, -1
.LBB3_101:                              //  %sw.bb531
                                        //    in Loop: Header=BB3_4 Depth=1
	and x10, x26, 1
	bltu x0, x10, .LBB3_134
.LBB3_102:                              //  %if.else746
                                        //    in Loop: Header=BB3_4 Depth=1
	and x10, x26, 16
	bltu x0, x10, .LBB3_201
.LBB3_103:                              //  %if.else784
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	and x10, x26, 128
	bltu x0, x10, .LBB3_235
.LBB3_104:                              //  %if.else845
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -68 ( fp )
	mv x24, x0
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x23, 0 ( x10 )
	sw x24, -408 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB3_277
.LBB3_105:                              //  %sw.bb930
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x23, -392 ( fp )             //  4-byte Folded Reload
	mv x24, x0
	bne x22, x24, .LBB3_107
.LBB3_106:                              //    in Loop: Header=BB3_4 Depth=1
	add x22, x0, -1
.LBB3_107:                              //  %sw.bb930
                                        //    in Loop: Header=BB3_4 Depth=1
	and x10, x26, 1
	bltu x0, x10, .LBB3_157
.LBB3_108:                              //  %if.else1150
                                        //    in Loop: Header=BB3_4 Depth=1
	and x10, x26, 16
	bltu x0, x10, .LBB3_211
.LBB3_109:                              //  %if.else1182
                                        //    in Loop: Header=BB3_4 Depth=1
	and x10, x26, 128
	bltu x0, x10, .LBB3_239
.LBB3_110:                              //  %if.else1244
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -68 ( fp )
	mv x24, x0
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x25, 0 ( x10 )
	sw x24, -408 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB3_296
.LBB3_111:                              //  %sw.bb1327
                                        //    in Loop: Header=BB3_4 Depth=1
	add x10, x22, -1
	add x11, x0, 38
	bltu x11, x10, .LBB3_159
.LBB3_112:                              //  %sw.bb1327
                                        //    in Loop: Header=BB3_4 Depth=1
	mv x23, x22
	jal x0, .LBB3_160
.LBB3_113:                              //  %if.then231
                                        //    in Loop: Header=BB3_4 Depth=1
	and x12, x26, 16
	sw x12, -420 ( fp )             //  4-byte Folded Spill
	beq x0, x12, .LBB3_221
.LBB3_114:                              //  %while.body297.us.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	mv x24, x0
	jal __locale_mb_cur_max
	bne x24, x10, .LBB3_119
	jal x0, .LBB3_542
.LBB3_127:                              //    in Loop: Header=BB3_119 Depth=2
	mv x24, x25
	lw x10, 4 ( x18 )
	bge x0, x10, .LBB3_131
.LBB3_117:                              //  %if.end379.us
                                        //    in Loop: Header=BB3_119 Depth=2
	beq x0, x22, .LBB3_261
.LBB3_118:                              //  %while.body297.us
                                        //    in Loop: Header=BB3_119 Depth=2
	jal __locale_mb_cur_max
	bne x24, x10, .LBB3_119
.LBB3_588:                              //  %while.body297.us
	jal x0, .LBB3_542
.LBB3_119:                              //  %if.end302.us
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	add x25, x24, 1
	add x10, x10, -1
	lb x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	add x10, x11, 1
	sw x10, 0 ( x18 )
	add x10, fp, -368
	add x10, x24, x10
	sb x12, 0 ( x10 )
	xor x10, x23, 3
	bltu x0, x10, .LBB3_121
.LBB3_120:                              //  %if.end302.us
                                        //    in Loop: Header=BB3_119 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB3_122
.LBB3_121:                              //  %if.then315.us
                                        //    in Loop: Header=BB3_119 Depth=2
	add x10, fp, -60
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB3_122:                              //  %if.end317.us
                                        //    in Loop: Header=BB3_119 Depth=2
	mv x24, x0
	add x12, fp, -368
	add x14, fp, -60
	mv x10, x19
	mv x11, x24
	mv x13, x25
	jal _mbrtowc_r
	mv x23, x10
	xor x10, x23, -2
	beq x0, x10, .LBB3_127
.LBB3_123:                              //  %if.end317.us
                                        //    in Loop: Header=BB3_119 Depth=2
	beq x0, x23, .LBB3_128
.LBB3_124:                              //  %if.end317.us
                                        //    in Loop: Header=BB3_119 Depth=2
	xor x10, x23, -1
	bltu x0, x10, .LBB3_125
.LBB3_589:                              //  %if.end317.us
	jal x0, .LBB3_542
.LBB3_125:                              //  %if.then333.us
                                        //    in Loop: Header=BB3_119 Depth=2
	add x27, x27, x25
	xor x10, x23, 3
	bltu x0, x10, .LBB3_129
.LBB3_126:                              //  %if.then333.us
                                        //    in Loop: Header=BB3_119 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB3_130
	jal x0, .LBB3_129
.LBB3_128:                              //  %if.then333.thread.us
                                        //    in Loop: Header=BB3_119 Depth=2
	add x27, x27, x25
.LBB3_129:                              //  %if.then341.us
                                        //    in Loop: Header=BB3_119 Depth=2
	add x22, x22, -1
.LBB3_130:                              //  %if.end367.us
                                        //    in Loop: Header=BB3_119 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB3_117
.LBB3_131:                              //  %land.lhs.true371.us
                                        //    in Loop: Header=BB3_119 Depth=2
	lw x11, 48 ( x18 )
	bltu x0, x11, .LBB3_132
.LBB3_590:                              //  %land.lhs.true371.us
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_430
.LBB3_132:                              //  %if.then.i2288.us
                                        //    in Loop: Header=BB3_119 Depth=2
	beq x11, x9, .LBB3_115
.LBB3_133:                              //  %if.then4.i2289.us
                                        //    in Loop: Header=BB3_119 Depth=2
	mv x10, x19
	jal _free_r
.LBB3_115:                              //  %if.end.i2293.us
                                        //    in Loop: Header=BB3_119 Depth=2
	lw x10, 60 ( x18 )
	sw x0, 48 ( x18 )
	sw x10, 4 ( x18 )
	bltu x0, x10, .LBB3_116
.LBB3_591:                              //  %if.end.i2293.us
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_430
.LBB3_116:                              //  %__ssrefill_r.exit2301.thread.us
                                        //    in Loop: Header=BB3_119 Depth=2
	lw x10, 56 ( x18 )
	sw x10, 0 ( x18 )
	bltu x0, x22, .LBB3_118
.LBB3_261:                              //    in Loop: Header=BB3_4 Depth=1
	mv x25, x0
	sw x25, -412 ( fp )             //  4-byte Folded Spill
	sw x25, -408 ( fp )             //  4-byte Folded Spill
	sw x25, -416 ( fp )             //  4-byte Folded Spill
	lw x10, -412 ( fp )             //  4-byte Folded Reload
	sw x23, -392 ( fp )             //  4-byte Folded Spill
	beq x0, x10, .LBB3_592
.LBB3_593:                              //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_433
.LBB3_592:                              //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_436
.LBB3_134:                              //  %if.then538
                                        //    in Loop: Header=BB3_4 Depth=1
	and x12, x26, 16
	sw x12, -424 ( fp )             //  4-byte Folded Spill
	beq x0, x12, .LBB3_223
.LBB3_135:                              //  %while.body613.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	mv x24, x0
	jal __locale_mb_cur_max
	bne x24, x10, .LBB3_140
	jal x0, .LBB3_543
.LBB3_136:                              //  %if.end.i2342
                                        //    in Loop: Header=BB3_140 Depth=2
	lw x10, 60 ( x18 )
	sw x0, 48 ( x18 )
	sw x10, 4 ( x18 )
	bltu x0, x10, .LBB3_137
.LBB3_594:                              //  %if.end.i2342
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_450
.LBB3_137:                              //  %__ssrefill_r.exit2350.thread
                                        //    in Loop: Header=BB3_140 Depth=2
	lw x10, 56 ( x18 )
	sw x10, 0 ( x18 )
.LBB3_138:                              //  %if.end715
                                        //    in Loop: Header=BB3_140 Depth=2
	bltu x0, x22, .LBB3_139
.LBB3_595:                              //  %if.end715
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_486
.LBB3_139:                              //  %while.body613
                                        //    in Loop: Header=BB3_140 Depth=2
	jal __locale_mb_cur_max
	bne x24, x10, .LBB3_140
.LBB3_596:                              //  %while.body613
	jal x0, .LBB3_543
.LBB3_140:                              //  %if.end618
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	add x10, x10, -1
	lb x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	add x10, x11, 1
	sw x10, 0 ( x18 )
	add x10, fp, -368
	add x10, x24, x10
	sb x12, 0 ( x10 )
	add x24, x24, 1
	xor x10, x23, 3
	bltu x0, x10, .LBB3_142
.LBB3_141:                              //  %if.end618
                                        //    in Loop: Header=BB3_140 Depth=2
	lw x10, -376 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB3_143
.LBB3_142:                              //  %if.then632
                                        //    in Loop: Header=BB3_140 Depth=2
	add x10, fp, -376
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB3_143:                              //  %if.end634
                                        //    in Loop: Header=BB3_140 Depth=2
	add x11, fp, -72
	add x12, fp, -368
	add x14, fp, -376
	mv x10, x19
	mv x13, x24
	jal _mbrtowc_r
	mv x23, x10
	xor x10, x23, -2
	beq x0, x10, .LBB3_153
.LBB3_144:                              //  %if.end634
                                        //    in Loop: Header=BB3_140 Depth=2
	sw x23, -392 ( fp )             //  4-byte Folded Spill
	beq x0, x23, .LBB3_148
.LBB3_145:                              //  %if.end634
                                        //    in Loop: Header=BB3_140 Depth=2
	xor x10, x23, -1
	bltu x0, x10, .LBB3_146
.LBB3_597:                              //  %if.end634
	jal x0, .LBB3_543
.LBB3_146:                              //  %if.then647
                                        //    in Loop: Header=BB3_140 Depth=2
	mv x23, x25
	lw x25, -72 ( fp )
	xor x10, x25, -1
	bltu x0, x10, .LBB3_149
.LBB3_147:                              //    in Loop: Header=BB3_140 Depth=2
	add x26, x0, -1
	jal x0, .LBB3_151
.LBB3_148:                              //  %if.then647.thread
                                        //    in Loop: Header=BB3_140 Depth=2
	mv x23, x25
	mv x25, x0
	sw x0, -72 ( fp )
.LBB3_149:                              //  %if.end.i2322
                                        //    in Loop: Header=BB3_140 Depth=2
	mv x26, x0
	add x10, fp, -60
	add x12, x0, 8
	mv x11, x26
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
	bne x10, x11, .LBB3_151
.LBB3_150:                              //    in Loop: Header=BB3_140 Depth=2
	lbu x26, -61 ( fp )
.LBB3_151:                              //  %if.end.i2322
                                        //    in Loop: Header=BB3_140 Depth=2
	add x10, fp, -328
	add x10, x26, x10
	mv x25, x23
	lw x23, -392 ( fp )             //  4-byte Folded Reload
	lbu x10, 0 ( x10 )
	bltu x0, x10, .LBB3_152
.LBB3_598:                              //  %if.end.i2322
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_452
.LBB3_152:                              //  %if.end661
                                        //    in Loop: Header=BB3_140 Depth=2
	lw x11, -376 ( fp )
	xor x10, x23, 3
	snez x10, x10
	add x27, x27, x24
	xor x11, x11, 4
	snez x11, x11
	or x10, x10, x11
	sub x22, x22, x10
	mv x24, x0
.LBB3_153:                              //  %if.end703
                                        //    in Loop: Header=BB3_140 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB3_138
.LBB3_154:                              //  %land.lhs.true707
                                        //    in Loop: Header=BB3_140 Depth=2
	lw x11, 48 ( x18 )
	add x26, fp, -72
	bltu x0, x11, .LBB3_155
.LBB3_599:                              //  %land.lhs.true707
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_450
.LBB3_155:                              //  %if.then.i2337
                                        //    in Loop: Header=BB3_140 Depth=2
	beq x11, x9, .LBB3_136
.LBB3_156:                              //  %if.then4.i2338
                                        //    in Loop: Header=BB3_140 Depth=2
	mv x10, x19
	jal _free_r
	jal x0, .LBB3_136
.LBB3_157:                              //  %if.then937
                                        //    in Loop: Header=BB3_4 Depth=1
	and x25, x26, 16
	beq x0, x25, .LBB3_225
.LBB3_158:                              //    in Loop: Header=BB3_4 Depth=1
	add x10, fp, -72
	jal x0, .LBB3_227
.LBB3_159:                              //    in Loop: Header=BB3_4 Depth=1
	add x23, x0, 39
.LBB3_160:                              //  %sw.bb1327
                                        //    in Loop: Header=BB3_4 Depth=1
	lui x12, %hi( 3456 )
	add x12, x12, %lo( 3456 )
	or x26, x12, x26
	add x15, fp, -368
	beq x0, x23, .LBB3_163
.LBB3_161:                              //  %for.body1338.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	mv x24, x0
	bltu x11, x10, .LBB3_164
.LBB3_162:                              //  %for.body1338.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x24, -408 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB3_165
.LBB3_163:                              //    in Loop: Header=BB3_4 Depth=1
	mv x22, x0
	mv x24, x22
	add x10, x24, x15
	and x11, x26, 256
	bltu x0, x11, .LBB3_498
.LBB3_600:                              //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_230
.LBB3_498:                              //  %if.then1416
                                        //    in Loop: Header=BB3_4 Depth=1
	bge x0, x24, .LBB3_504
.LBB3_499:                              //  %if.then1420
                                        //    in Loop: Header=BB3_4 Depth=1
	lbu x24, -1 ( x10 )
	add x23, x10, -1
	xor x10, x24, 255
	bltu x0, x10, .LBB3_500
.LBB3_601:                              //  %if.then1420
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_512
.LBB3_500:                              //  %if.end.i2505
                                        //    in Loop: Header=BB3_4 Depth=1
	lhu x10, 12 ( x18 )
	lui x11, %hi( 65503 )
	add x11, x11, %lo( 65503 )
	and x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 48 ( x18 )
	beq x0, x10, .LBB3_505
.LBB3_501:                              //  %if.then6.i2509
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 52 ( x18 )
	blt x25, x10, .LBB3_503
.LBB3_502:                              //  %land.lhs.true.i2512
                                        //    in Loop: Header=BB3_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __submore
	add x15, fp, -368
	beq x0, x10, .LBB3_503
.LBB3_602:                              //  %land.lhs.true.i2512
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_512
.LBB3_503:                              //  %if.end11.i2516
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x18 )
	add x11, x10, -1
	sw x11, 0 ( x18 )
	sb x24, -1 ( x10 )
	lw x10, 4 ( x18 )
	add x10, x10, 1
	sw x10, 4 ( x18 )
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	beq x23, x15, .LBB3_603
.LBB3_604:                              //  %if.end11.i2516
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_513
.LBB3_603:                              //  %if.end11.i2516
	jal x0, .LBB3_547
.LBB3_164:                              //    in Loop: Header=BB3_4 Depth=1
	add x10, x22, -39
	sw x10, -408 ( fp )             //  4-byte Folded Spill
.LBB3_165:                              //  %for.body1338.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x18 )
	mv x22, x24
	lbu x11, 0 ( x10 )
	add x13, x0, 77
	add x12, x11, -43
	bltu x13, x12, .LBB3_664
.LBB3_665:                              //  %for.body1338.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_168
.LBB3_664:                              //  %for.body1338.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_229
.LBB3_192:                              //  %for.cond412.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x18 )
	mv x23, x0
	bge x25, x22, .LBB3_200
.LBB3_193:                              //  %if.then416.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11, 48 ( x18 )
.LBB3_194:                              //  %if.then416
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x25, x10
	add x23, x23, x25
	sw x10, 0 ( x18 )
	beq x0, x11, .LBB3_256
.LBB3_195:                              //  %if.then.i2306
                                        //    in Loop: Header=BB3_194 Depth=2
	beq x11, x9, .LBB3_197
.LBB3_196:                              //  %if.then4.i2307
                                        //    in Loop: Header=BB3_194 Depth=2
	mv x10, x19
	jal _free_r
.LBB3_197:                              //  %if.end.i2311
                                        //    in Loop: Header=BB3_194 Depth=2
	lw x12, 60 ( x18 )
	sw x0, 48 ( x18 )
	sw x12, 4 ( x18 )
	beq x0, x12, .LBB3_256
.LBB3_198:                              //  %__ssrefill_r.exit2319
                                        //    in Loop: Header=BB3_194 Depth=2
	lw x10, 56 ( x18 )
	sub x22, x22, x25
	mv x11, x0
	mv x25, x12
	sw x10, 0 ( x18 )
	blt x12, x22, .LBB3_194
.LBB3_199:                              //  %if.else429.loopexit
                                        //    in Loop: Header=BB3_4 Depth=1
	mv x25, x12
.LBB3_200:                              //  %if.else429
                                        //    in Loop: Header=BB3_4 Depth=1
	add x10, x22, x10
	sw x10, 0 ( x18 )
	sub x10, x25, x22
	add x23, x23, x22
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	sw x10, 4 ( x18 )
	add x27, x27, x23
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB3_4
	jal x0, .LBB3_547
.LBB3_201:                              //  %while.cond750.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x18 )
	add x23, fp, -328
	lbu x11, 0 ( x10 )
	add x11, x11, x23
	lbu x11, 0 ( x11 )
	bltu x0, x11, .LBB3_202
.LBB3_605:                              //  %while.cond750.preheader
	jal x0, .LBB3_565
.LBB3_202:                              //  %while.body755.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	add x12, x27, 1
	add x22, x22, -1
	jal x0, .LBB3_204
.LBB3_203:                              //  %if.end777
                                        //    in Loop: Header=BB3_204 Depth=2
	lbu x12, 0 ( x10 )
	add x22, x22, -1
	mv x25, x11
	add x13, x12, x23
	lbu x13, 0 ( x13 )
	add x12, x27, 1
	bltu x0, x13, .LBB3_204
.LBB3_606:                              //  %if.end777
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_534
.LBB3_204:                              //  %while.body755
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x10, 1
	add x11, x25, -1
	mv x27, x12
	sw x10, 0 ( x18 )
	sw x11, 4 ( x18 )
	bltu x0, x22, .LBB3_205
.LBB3_607:                              //  %while.body755
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_534
.LBB3_205:                              //  %if.end765
                                        //    in Loop: Header=BB3_204 Depth=2
	seqz x12, x0
	blt x12, x25, .LBB3_203
.LBB3_206:                              //  %land.lhs.true769
                                        //    in Loop: Header=BB3_204 Depth=2
	lw x11, 48 ( x18 )
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	beq x0, x11, .LBB3_260
.LBB3_207:                              //  %if.then.i2355
                                        //    in Loop: Header=BB3_204 Depth=2
	beq x11, x9, .LBB3_209
.LBB3_208:                              //  %if.then4.i2356
                                        //    in Loop: Header=BB3_204 Depth=2
	mv x10, x19
	jal _free_r
.LBB3_209:                              //  %if.end.i2360
                                        //    in Loop: Header=BB3_204 Depth=2
	lw x11, 60 ( x18 )
	sw x0, 48 ( x18 )
	sw x11, 4 ( x18 )
	beq x0, x11, .LBB3_260
.LBB3_210:                              //  %__ssrefill_r.exit2368.thread
                                        //    in Loop: Header=BB3_204 Depth=2
	lw x10, 56 ( x18 )
	sw x25, -404 ( fp )             //  4-byte Folded Spill
	sw x10, 0 ( x18 )
	jal x0, .LBB3_203
.LBB3_211:                              //  %while.cond1154.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x18 )
	lbu x11, 0 ( x10 )
	add x11, x11, x20
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB3_243
.LBB3_212:                              //  %while.body1161.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	seqz x12, x0
	jal x0, .LBB3_216
.LBB3_213:                              //  %if.end.i2455
                                        //    in Loop: Header=BB3_216 Depth=2
	lw x11, 60 ( x18 )
	sw x0, 48 ( x18 )
	sw x11, 4 ( x18 )
	bltu x0, x11, .LBB3_214
.LBB3_608:                              //  %if.end.i2455
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_447
.LBB3_214:                              //  %__ssrefill_r.exit2463.thread
                                        //    in Loop: Header=BB3_216 Depth=2
	lw x10, 56 ( x18 )
	sw x10, 0 ( x18 )
.LBB3_215:                              //  %if.end1179
                                        //    in Loop: Header=BB3_216 Depth=2
	lbu x12, 0 ( x10 )
	mv x25, x11
	add x13, x12, x20
	lbu x13, 1 ( x13 )
	add x12, x23, 1
	and x13, x13, 8
	bltu x0, x13, .LBB3_258
.LBB3_216:                              //  %while.body1161
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x10, 1
	add x11, x25, -1
	mv x23, x12
	sw x10, 0 ( x18 )
	sw x11, 4 ( x18 )
	beq x22, x23, .LBB3_258
.LBB3_217:                              //  %if.end1171
                                        //    in Loop: Header=BB3_216 Depth=2
	seqz x12, x0
	blt x12, x25, .LBB3_215
.LBB3_218:                              //  %land.lhs.true1175
                                        //    in Loop: Header=BB3_216 Depth=2
	lw x11, 48 ( x18 )
	bltu x0, x11, .LBB3_219
.LBB3_609:                              //  %land.lhs.true1175
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_447
.LBB3_219:                              //  %if.then.i2450
                                        //    in Loop: Header=BB3_216 Depth=2
	beq x11, x9, .LBB3_213
.LBB3_220:                              //  %if.then4.i2451
                                        //    in Loop: Header=BB3_216 Depth=2
	mv x10, x19
	jal _free_r
	jal x0, .LBB3_213
.LBB3_221:                              //  %if.else235
                                        //    in Loop: Header=BB3_4 Depth=1
	and x10, x26, 128
	bltu x0, x10, .LBB3_244
.LBB3_222:                              //  %if.else290
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x25, 0 ( x10 )
	mv x11, x0
	mv x24, x11
	sw x11, -416 ( fp )             //  4-byte Folded Spill
	sw x11, -412 ( fp )             //  4-byte Folded Spill
	sw x11, -408 ( fp )             //  4-byte Folded Spill
	jal __locale_mb_cur_max
	bne x24, x10, .LBB3_318
	jal x0, .LBB3_542
.LBB3_223:                              //  %if.else546
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	and x10, x26, 128
	bltu x0, x10, .LBB3_248
.LBB3_224:                              //  %if.else606
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x26, 0 ( x10 )
	mv x11, x0
	sw x11, -416 ( fp )             //  4-byte Folded Spill
	sw x11, -420 ( fp )             //  4-byte Folded Spill
	sw x11, -408 ( fp )             //  4-byte Folded Spill
	jal __locale_mb_cur_max
	bne x24, x10, .LBB3_349
	jal x0, .LBB3_543
.LBB3_225:                              //  %if.else945
                                        //    in Loop: Header=BB3_4 Depth=1
	and x10, x26, 128
	bltu x0, x10, .LBB3_252
.LBB3_226:                              //  %if.else1005
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -68 ( fp )
	mv x24, x0
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
.LBB3_227:                              //  %if.end1008
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x10, -408 ( fp )             //  4-byte Folded Spill
	mv x10, x24
	mv x11, x24
	sw x10, -412 ( fp )             //  4-byte Folded Spill
	sw x11, -416 ( fp )             //  4-byte Folded Spill
	bltu x0, x22, .LBB3_374
	jal x0, .LBB3_467
.LBB3_504:                              //    in Loop: Header=BB3_4 Depth=1
	mv x23, x10
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	beq x23, x15, .LBB3_610
.LBB3_611:                              //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_513
.LBB3_610:
	jal x0, .LBB3_547
.LBB3_231:                              //  %if.then444
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -68 ( fp )
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x23, 0 ( x10 )
	bltu x0, x23, .LBB3_232
.LBB3_612:                              //  %if.then444
	jal x0, .LBB3_547
.LBB3_232:                              //  %if.end448
                                        //    in Loop: Header=BB3_4 Depth=1
	mv x10, x22
	jal malloc
	mv x24, x10
	bltu x0, x24, .LBB3_233
.LBB3_613:                              //  %if.end448
	jal x0, .LBB3_555
.LBB3_233:                              //  %if.end453
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x24, 0 ( x23 )
	lhu x10, 4 ( x25 )
	lhu x11, 6 ( x25 )
	bgeu x11, x10, .LBB3_262
.LBB3_234:                              //  %if.end453.if.end493_crit_edge
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x25 )
	jal x0, .LBB3_265
.LBB3_235:                              //  %if.then788
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -408 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB3_236
.LBB3_614:                              //  %if.then788
	jal x0, .LBB3_547
.LBB3_236:                              //  %if.end792
                                        //    in Loop: Header=BB3_4 Depth=1
	add x24, x0, 32
	mv x10, x24
	jal malloc
	mv x23, x10
	bltu x0, x23, .LBB3_237
.LBB3_615:                              //  %if.end792
	jal x0, .LBB3_555
.LBB3_237:                              //  %if.end796
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -408 ( fp )             //  4-byte Folded Reload
	sw x23, 0 ( x10 )
	lhu x10, 4 ( x25 )
	lhu x11, 6 ( x25 )
	bgeu x11, x10, .LBB3_273
.LBB3_238:                              //  %if.end796.if.end836_crit_edge
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x25 )
	jal x0, .LBB3_276
.LBB3_239:                              //  %if.then1187
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -408 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB3_240
.LBB3_616:                              //  %if.then1187
	jal x0, .LBB3_565
.LBB3_240:                              //  %if.end1191
                                        //    in Loop: Header=BB3_4 Depth=1
	add x24, x0, 32
	mv x10, x24
	jal malloc
	mv x25, x10
	bltu x0, x25, .LBB3_241
.LBB3_617:                              //  %if.end1191
	jal x0, .LBB3_558
.LBB3_241:                              //  %if.end1195
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -408 ( fp )             //  4-byte Folded Reload
	lw x23, -404 ( fp )             //  4-byte Folded Reload
	sw x25, 0 ( x10 )
	lhu x10, 4 ( x23 )
	lhu x11, 6 ( x23 )
	bgeu x11, x10, .LBB3_292
.LBB3_242:                              //  %if.end1195.if.end1235_crit_edge
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x23 )
	jal x0, .LBB3_295
.LBB3_243:                              //    in Loop: Header=BB3_4 Depth=1
	mv x23, x0
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	add x27, x27, x23
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB3_4
	jal x0, .LBB3_547
.LBB3_244:                              //  %if.then238
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -412 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB3_245
.LBB3_618:                              //  %if.then238
	jal x0, .LBB3_566
.LBB3_245:                              //  %if.end242
                                        //    in Loop: Header=BB3_4 Depth=1
	add x10, x0, 128
	jal malloc
	mv x25, x10
	add x23, x0, -1
	bltu x0, x25, .LBB3_246
.LBB3_619:                              //  %if.end242
	jal x0, .LBB3_560
.LBB3_246:                              //  %if.end246
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -412 ( fp )             //  4-byte Folded Reload
	lw x13, -404 ( fp )             //  4-byte Folded Reload
	sw x25, 0 ( x10 )
	lhu x10, 4 ( x13 )
	lhu x11, 6 ( x13 )
	sw x13, -404 ( fp )             //  4-byte Folded Spill
	bgeu x11, x10, .LBB3_312
.LBB3_247:                              //  %if.end246.if.end283_crit_edge
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x13 )
	jal x0, .LBB3_315
.LBB3_248:                              //  %if.then549
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -408 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB3_249
.LBB3_620:                              //  %if.then549
	jal x0, .LBB3_567
.LBB3_249:                              //  %if.end553
                                        //    in Loop: Header=BB3_4 Depth=1
	add x10, x0, 128
	jal malloc
	mv x26, x10
	add x23, x0, -1
	bltu x0, x26, .LBB3_250
.LBB3_621:                              //  %if.end553
	jal x0, .LBB3_562
.LBB3_250:                              //  %if.end557
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -408 ( fp )             //  4-byte Folded Reload
	sw x26, 0 ( x10 )
	lhu x10, 4 ( x25 )
	lhu x11, 6 ( x25 )
	bgeu x11, x10, .LBB3_341
.LBB3_251:                              //  %if.end557.if.end597_crit_edge
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x25 )
	jal x0, .LBB3_344
.LBB3_252:                              //  %if.then948
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -68 ( fp )
	mv x26, x25
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x24, 0 ( x10 )
	bltu x0, x24, .LBB3_253
.LBB3_622:                              //  %if.then948
	jal x0, .LBB3_567
.LBB3_253:                              //  %if.end952
                                        //    in Loop: Header=BB3_4 Depth=1
	add x10, x0, 128
	jal malloc
	add x23, x0, -1
	bltu x0, x10, .LBB3_254
.LBB3_623:                              //  %if.end952
	jal x0, .LBB3_562
.LBB3_254:                              //  %if.end956
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x10, 0 ( x24 )
	sw x10, -412 ( fp )             //  4-byte Folded Spill
	lhu x10, 4 ( x25 )
	lhu x11, 6 ( x25 )
	bgeu x11, x10, .LBB3_370
.LBB3_255:                              //  %if.end956.if.end996_crit_edge
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x25 )
	jal x0, .LBB3_373
.LBB3_256:                              //  %if.then423
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 16 ( x18 )
	sw x0, 4 ( x18 )
	sw x10, 0 ( x18 )
	lh x10, 12 ( x18 )
	or x10, x10, 32
	sh x10, 12 ( x18 )
	bltu x0, x23, .LBB3_257
.LBB3_624:                              //  %if.then423
	jal x0, .LBB3_542
.LBB3_257:                              //  %cleanup438.thread
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	add x27, x27, x23
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB3_4
	jal x0, .LBB3_547
.LBB3_258:                              //  %while.end1180
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	add x27, x27, x23
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB3_4
	jal x0, .LBB3_547
.LBB3_259:                              //  %if.then166
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sb x27, 0 ( x10 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB3_4
	jal x0, .LBB3_547
.LBB3_260:                              //  %__ssrefill_r.exit2368
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 16 ( x18 )
	sw x0, 4 ( x18 )
	sw x10, 0 ( x18 )
	lh x10, 12 ( x18 )
	or x10, x10, 32
	sh x10, 12 ( x18 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB3_4
	jal x0, .LBB3_547
.LBB3_505:                              //  %if.end14.i2519
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11, 16 ( x18 )
	bltu x0, x11, .LBB3_506
.LBB3_625:                              //  %if.end14.i2519
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_509
.LBB3_506:                              //  %land.lhs.true18.i2525
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x18 )
	bltu x11, x10, .LBB3_507
.LBB3_626:                              //  %land.lhs.true18.i2525
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_510
.LBB3_507:                              //  %land.lhs.true24.i2528
                                        //    in Loop: Header=BB3_4 Depth=1
	lbu x11, -1 ( x10 )
	beq x11, x24, .LBB3_508
.LBB3_627:                              //  %land.lhs.true24.i2528
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_510
.LBB3_508:                              //  %if.then29.i2531
                                        //    in Loop: Header=BB3_4 Depth=1
	add x10, x10, -1
	add x11, x25, 1
	sw x11, 4 ( x18 )
	jal x0, .LBB3_511
.LBB3_262:                              //  %if.then461
                                        //    in Loop: Header=BB3_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bgeu x10, x11, .LBB3_263
.LBB3_628:                              //  %if.then461
	jal x0, .LBB3_549
.LBB3_263:                              //  %if.end481
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x25 )
	sll x11, x11, 2&31
	jal realloc
	bltu x0, x10, .LBB3_264
.LBB3_629:                              //  %if.end481
	jal x0, .LBB3_549
.LBB3_264:                              //  %cleanup490
                                        //    in Loop: Header=BB3_4 Depth=1
	lh x11, 4 ( x25 )
	sw x10, 0 ( x25 )
	add x11, x11, 8
	sh x11, 4 ( x25 )
	lhu x11, 6 ( x25 )
.LBB3_265:                              //  %if.end493
                                        //    in Loop: Header=BB3_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x23, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x25 )
.LBB3_266:                              //  %if.end504
                                        //    in Loop: Header=BB3_4 Depth=1
	seqz x12, x0
	mv x10, x19
	mv x11, x24
	mv x13, x22
	mv x14, x18
	jal _sfread_r
	mv x24, x10
	bltu x0, x24, .LBB3_267
.LBB3_630:                              //  %if.end504
	jal x0, .LBB3_543
.LBB3_267:                              //  %if.end509
                                        //    in Loop: Header=BB3_4 Depth=1
	beq x0, x23, .LBB3_271
.LBB3_268:                              //  %if.end509
                                        //    in Loop: Header=BB3_4 Depth=1
	bgeu x24, x22, .LBB3_271
.LBB3_269:                              //  %if.then515
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x23 )
	mv x11, x24
	jal realloc
	beq x0, x10, .LBB3_271
.LBB3_270:                              //  %if.then520
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x10, 0 ( x23 )
.LBB3_271:                              //  %cleanup525.thread2596
                                        //    in Loop: Header=BB3_4 Depth=1
	add x27, x27, x24
.LBB3_272:                              //  %if.end737
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -384 ( fp )             //  4-byte Folded Reload
	add x10, x10, 1
	sw x10, -384 ( fp )             //  4-byte Folded Spill
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB3_4
	jal x0, .LBB3_547
.LBB3_273:                              //  %if.then804
                                        //    in Loop: Header=BB3_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bgeu x10, x11, .LBB3_274
.LBB3_631:                              //  %if.then804
	jal x0, .LBB3_549
.LBB3_274:                              //  %if.end824
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x25 )
	sll x11, x11, 2&31
	jal realloc
	bltu x0, x10, .LBB3_275
.LBB3_632:                              //  %if.end824
	jal x0, .LBB3_549
.LBB3_275:                              //  %cleanup833
                                        //    in Loop: Header=BB3_4 Depth=1
	lh x11, 4 ( x25 )
	sw x10, 0 ( x25 )
	add x11, x11, 8
	sh x11, 4 ( x25 )
	lhu x11, 6 ( x25 )
.LBB3_276:                              //  %if.end836
                                        //    in Loop: Header=BB3_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -408 ( fp )             //  4-byte Folded Reload
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x25 )
.LBB3_277:                              //  %if.end847
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11, 0 ( x18 )
	add x13, fp, -328
	sw x25, -404 ( fp )             //  4-byte Folded Spill
	lbu x10, 0 ( x11 )
	add x10, x10, x13
	lbu x10, 0 ( x10 )
	beq x0, x10, .LBB3_564
.LBB3_278:                              //  %while.body853.lr.ph
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 4 ( x18 )
	lw x12, -408 ( fp )             //  4-byte Folded Reload
	beq x0, x12, .LBB3_420
.LBB3_279:                              //    in Loop: Header=BB3_4 Depth=1
	mv x25, x23
	jal x0, .LBB3_282
.LBB3_280:                              //  %if.end887.if.end899_crit_edge
                                        //    in Loop: Header=BB3_282 Depth=2
	lw x11, 0 ( x18 )
	lbu x12, 0 ( x11 )
	add x12, x12, x13
	lbu x12, 0 ( x12 )
	bltu x0, x12, .LBB3_282
.LBB3_633:                              //  %if.end887.if.end899_crit_edge
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_495
.LBB3_282:                              //  %while.body853
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12, x11, 1
	add x10, x10, -1
	sw x12, 0 ( x18 )
	sw x10, 4 ( x18 )
	lb x10, 0 ( x11 )
	sb x10, 0 ( x25 )
	add x25, x25, 1
	sub x26, x25, x23
	bltu x26, x24, .LBB3_285
.LBB3_283:                              //  %if.then868
                                        //    in Loop: Header=BB3_282 Depth=2
	sll x24, x24, 1&31
	mv x10, x23
	mv x11, x24
	jal realloc
	mv x23, x10
	bltu x0, x23, .LBB3_284
.LBB3_634:                              //  %if.then868
	jal x0, .LBB3_558
.LBB3_284:                              //  %if.end874
                                        //    in Loop: Header=BB3_282 Depth=2
	lw x10, -408 ( fp )             //  4-byte Folded Reload
	add x25, x26, x23
	add x13, fp, -328
	sw x23, 0 ( x10 )
.LBB3_285:                              //  %cleanup.cont882
                                        //    in Loop: Header=BB3_282 Depth=2
	add x22, x22, -1
	bltu x0, x22, .LBB3_286
.LBB3_635:                              //  %cleanup.cont882
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_495
.LBB3_286:                              //  %if.end887
                                        //    in Loop: Header=BB3_282 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB3_280
.LBB3_287:                              //  %land.lhs.true891
                                        //    in Loop: Header=BB3_282 Depth=2
	lw x11, 48 ( x18 )
	bltu x0, x11, .LBB3_288
.LBB3_636:                              //  %land.lhs.true891
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_494
.LBB3_288:                              //  %if.then.i2373
                                        //    in Loop: Header=BB3_282 Depth=2
	beq x11, x9, .LBB3_290
.LBB3_289:                              //  %if.then4.i2374
                                        //    in Loop: Header=BB3_282 Depth=2
	mv x10, x19
	jal _free_r
	add x13, fp, -328
.LBB3_290:                              //  %if.end.i2378
                                        //    in Loop: Header=BB3_282 Depth=2
	lw x10, 60 ( x18 )
	sw x0, 48 ( x18 )
	sw x10, 4 ( x18 )
	bltu x0, x10, .LBB3_291
.LBB3_637:                              //  %if.end.i2378
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_494
.LBB3_291:                              //  %__ssrefill_r.exit2386.thread
                                        //    in Loop: Header=BB3_282 Depth=2
	lw x11, 56 ( x18 )
	sw x11, 0 ( x18 )
	lbu x12, 0 ( x11 )
	add x12, x12, x13
	lbu x12, 0 ( x12 )
	bltu x0, x12, .LBB3_282
	jal x0, .LBB3_495
.LBB3_564:                              //    in Loop: Header=BB3_4 Depth=1
	mv x25, x23
	sub x22, x25, x23
	beq x0, x22, .LBB3_638
.LBB3_639:                              //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_496
.LBB3_638:
	jal x0, .LBB3_565
.LBB3_292:                              //  %if.then1203
                                        //    in Loop: Header=BB3_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bgeu x10, x11, .LBB3_293
.LBB3_640:                              //  %if.then1203
	jal x0, .LBB3_568
.LBB3_293:                              //  %if.end1223
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x23 )
	sll x11, x11, 2&31
	jal realloc
	bltu x0, x10, .LBB3_294
.LBB3_641:                              //  %if.end1223
	jal x0, .LBB3_568
.LBB3_294:                              //  %cleanup1232
                                        //    in Loop: Header=BB3_4 Depth=1
	lh x11, 4 ( x23 )
	sw x10, 0 ( x23 )
	add x11, x11, 8
	sh x11, 4 ( x23 )
	lhu x11, 6 ( x23 )
.LBB3_295:                              //  %if.end1235
                                        //    in Loop: Header=BB3_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -408 ( fp )             //  4-byte Folded Reload
	sw x23, -404 ( fp )             //  4-byte Folded Spill
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x23 )
.LBB3_296:                              //  %if.end1246
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11, 0 ( x18 )
	lbu x10, 0 ( x11 )
	add x10, x10, x20
	lbu x10, 1 ( x10 )
	and x10, x10, 8
	bltu x0, x10, .LBB3_311
.LBB3_297:                              //  %while.body1255.lr.ph
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 4 ( x18 )
	lw x12, -408 ( fp )             //  4-byte Folded Reload
	beq x0, x12, .LBB3_437
.LBB3_298:                              //    in Loop: Header=BB3_4 Depth=1
	mv x23, x25
	jal x0, .LBB3_301
.LBB3_299:                              //  %if.end1289.if.end1297_crit_edge
                                        //    in Loop: Header=BB3_301 Depth=2
	lw x11, 0 ( x18 )
.LBB3_300:                              //  %if.end1297
                                        //    in Loop: Header=BB3_301 Depth=2
	lbu x12, 0 ( x11 )
	add x12, x12, x20
	lbu x12, 1 ( x12 )
	and x12, x12, 8
	beq x0, x12, .LBB3_301
.LBB3_642:                              //  %if.end1297
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_528
.LBB3_301:                              //  %while.body1255
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12, x11, 1
	add x10, x10, -1
	sw x12, 0 ( x18 )
	sw x10, 4 ( x18 )
	lb x10, 0 ( x11 )
	sb x10, 0 ( x23 )
	add x23, x23, 1
	sub x26, x23, x25
	bltu x26, x24, .LBB3_304
.LBB3_302:                              //  %if.then1270
                                        //    in Loop: Header=BB3_301 Depth=2
	sll x24, x24, 1&31
	mv x10, x25
	mv x11, x24
	jal realloc
	mv x25, x10
	bltu x0, x25, .LBB3_303
.LBB3_643:                              //  %if.then1270
	jal x0, .LBB3_558
.LBB3_303:                              //  %if.end1276
                                        //    in Loop: Header=BB3_301 Depth=2
	lw x10, -408 ( fp )             //  4-byte Folded Reload
	add x23, x26, x25
	sw x25, 0 ( x10 )
.LBB3_304:                              //  %cleanup.cont1284
                                        //    in Loop: Header=BB3_301 Depth=2
	add x22, x22, -1
	beq x0, x22, .LBB3_528
.LBB3_305:                              //  %if.end1289
                                        //    in Loop: Header=BB3_301 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB3_299
.LBB3_306:                              //  %land.lhs.true1293
                                        //    in Loop: Header=BB3_301 Depth=2
	lw x11, 48 ( x18 )
	beq x0, x11, .LBB3_527
.LBB3_307:                              //  %if.then.i2468
                                        //    in Loop: Header=BB3_301 Depth=2
	beq x11, x9, .LBB3_309
.LBB3_308:                              //  %if.then4.i2469
                                        //    in Loop: Header=BB3_301 Depth=2
	mv x10, x19
	jal _free_r
.LBB3_309:                              //  %if.end.i2473
                                        //    in Loop: Header=BB3_301 Depth=2
	lw x10, 60 ( x18 )
	sw x0, 48 ( x18 )
	sw x10, 4 ( x18 )
	beq x0, x10, .LBB3_527
.LBB3_310:                              //  %__ssrefill_r.exit2481.thread
                                        //    in Loop: Header=BB3_301 Depth=2
	lw x11, 56 ( x18 )
	sw x11, 0 ( x18 )
	jal x0, .LBB3_300
.LBB3_311:                              //    in Loop: Header=BB3_4 Depth=1
	mv x23, x25
	sub x22, x23, x25
	sb x0, 0 ( x23 )
	lw x10, -408 ( fp )             //  4-byte Folded Reload
	bltu x0, x10, .LBB3_529
	jal x0, .LBB3_532
.LBB3_312:                              //  %if.then254
                                        //    in Loop: Header=BB3_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bgeu x10, x11, .LBB3_313
.LBB3_644:                              //  %if.then254
	jal x0, .LBB3_560
.LBB3_313:                              //  %if.end274
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -404 ( fp )             //  4-byte Folded Reload
	sll x11, x11, 2&31
	lw x10, 0 ( x10 )
	jal realloc
	bltu x0, x10, .LBB3_314
.LBB3_645:                              //  %if.end274
	jal x0, .LBB3_560
.LBB3_314:                              //  %cleanup
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x13, -404 ( fp )             //  4-byte Folded Reload
	lh x11, 4 ( x13 )
	sw x10, 0 ( x13 )
	add x11, x11, 8
	sh x11, 4 ( x13 )
	lhu x11, 6 ( x13 )
.LBB3_315:                              //  %if.end283
                                        //    in Loop: Header=BB3_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -412 ( fp )             //  4-byte Folded Reload
	lw x23, -392 ( fp )             //  4-byte Folded Reload
	sw x25, -416 ( fp )             //  4-byte Folded Spill
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x13 )
	add x10, x0, 32
	sw x10, -408 ( fp )             //  4-byte Folded Spill
	jal __locale_mb_cur_max
	bne x24, x10, .LBB3_318
	jal x0, .LBB3_542
.LBB3_316:                              //  %if.end379
                                        //    in Loop: Header=BB3_318 Depth=2
	beq x0, x22, .LBB3_432
.LBB3_317:                              //  %while.body297
                                        //    in Loop: Header=BB3_318 Depth=2
	jal __locale_mb_cur_max
	bne x24, x10, .LBB3_318
.LBB3_666:                              //  %while.body297
	jal x0, .LBB3_542
.LBB3_318:                              //  %if.end302
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	add x10, x10, -1
	lb x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	add x10, x11, 1
	sw x10, 0 ( x18 )
	add x10, fp, -368
	add x10, x24, x10
	sb x12, 0 ( x10 )
	add x24, x24, 1
	xor x10, x23, 3
	bltu x0, x10, .LBB3_320
.LBB3_319:                              //  %if.end302
                                        //    in Loop: Header=BB3_318 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB3_321
.LBB3_320:                              //  %if.then315
                                        //    in Loop: Header=BB3_318 Depth=2
	add x10, fp, -60
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB3_321:                              //  %if.end317
                                        //    in Loop: Header=BB3_318 Depth=2
	add x12, fp, -368
	add x14, fp, -60
	mv x10, x19
	mv x11, x25
	mv x13, x24
	jal _mbrtowc_r
	mv x23, x10
	xor x10, x23, -2
	beq x0, x10, .LBB3_335
.LBB3_322:                              //  %if.end317
                                        //    in Loop: Header=BB3_318 Depth=2
	beq x0, x23, .LBB3_326
.LBB3_323:                              //  %if.end317
                                        //    in Loop: Header=BB3_318 Depth=2
	xor x10, x23, -1
	beq x0, x10, .LBB3_542
.LBB3_324:                              //  %if.then333
                                        //    in Loop: Header=BB3_318 Depth=2
	add x27, x27, x24
	xor x10, x23, 3
	bltu x0, x10, .LBB3_327
.LBB3_325:                              //  %if.then333
                                        //    in Loop: Header=BB3_318 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB3_328
	jal x0, .LBB3_327
.LBB3_326:                              //  %if.then329
                                        //    in Loop: Header=BB3_318 Depth=2
	add x27, x27, x24
	sw x0, 0 ( x25 )
.LBB3_327:                              //  %if.then341
                                        //    in Loop: Header=BB3_318 Depth=2
	add x22, x22, -1
.LBB3_328:                              //  %if.then346
                                        //    in Loop: Header=BB3_318 Depth=2
	lw x10, -412 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB3_333
.LBB3_329:                              //  %if.then346
                                        //    in Loop: Header=BB3_318 Depth=2
	lw x10, -416 ( fp )             //  4-byte Folded Reload
	lw x26, -408 ( fp )             //  4-byte Folded Reload
	mv x24, x23
	sub x11, x25, x10
	sra x23, x11, 2&31
	bltu x23, x26, .LBB3_332
.LBB3_330:                              //  %if.then351
                                        //    in Loop: Header=BB3_318 Depth=2
	sll x11, x26, 3&31
	jal realloc
	mv x11, x10
	bltu x0, x11, .LBB3_331
.LBB3_646:                              //  %if.then351
	jal x0, .LBB3_559
.LBB3_331:                              //  %if.end356
                                        //    in Loop: Header=BB3_318 Depth=2
	lw x10, -412 ( fp )             //  4-byte Folded Reload
	sll x26, x26, 1&31
	sw x11, -416 ( fp )             //  4-byte Folded Spill
	sw x11, 0 ( x10 )
	sll x10, x23, 2&31
	add x25, x10, x11
.LBB3_332:                              //  %cleanup.cont364
                                        //    in Loop: Header=BB3_318 Depth=2
	mv x23, x24
	jal x0, .LBB3_334
.LBB3_333:                              //    in Loop: Header=BB3_318 Depth=2
	lw x26, -408 ( fp )             //  4-byte Folded Reload
.LBB3_334:                              //  %cleanup.cont364
                                        //    in Loop: Header=BB3_318 Depth=2
	mv x24, x0
	add x25, x25, 4
	sw x26, -408 ( fp )             //  4-byte Folded Spill
.LBB3_335:                              //  %if.end367
                                        //    in Loop: Header=BB3_318 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB3_316
.LBB3_336:                              //  %land.lhs.true371
                                        //    in Loop: Header=BB3_318 Depth=2
	lw x11, 48 ( x18 )
	beq x0, x11, .LBB3_431
.LBB3_337:                              //  %if.then.i2288
                                        //    in Loop: Header=BB3_318 Depth=2
	beq x11, x9, .LBB3_339
.LBB3_338:                              //  %if.then4.i2289
                                        //    in Loop: Header=BB3_318 Depth=2
	mv x10, x19
	jal _free_r
.LBB3_339:                              //  %if.end.i2293
                                        //    in Loop: Header=BB3_318 Depth=2
	lw x10, 60 ( x18 )
	sw x0, 48 ( x18 )
	sw x10, 4 ( x18 )
	beq x0, x10, .LBB3_431
.LBB3_340:                              //  %__ssrefill_r.exit2301.thread
                                        //    in Loop: Header=BB3_318 Depth=2
	lw x10, 56 ( x18 )
	sw x10, 0 ( x18 )
	jal x0, .LBB3_316
.LBB3_341:                              //  %if.then565
                                        //    in Loop: Header=BB3_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB3_562
.LBB3_342:                              //  %if.end585
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x25 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB3_562
.LBB3_343:                              //  %cleanup594
                                        //    in Loop: Header=BB3_4 Depth=1
	lh x11, 4 ( x25 )
	sw x10, 0 ( x25 )
	add x11, x11, 8
	sh x11, 4 ( x25 )
	lhu x11, 6 ( x25 )
.LBB3_344:                              //  %if.end597
                                        //    in Loop: Header=BB3_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -408 ( fp )             //  4-byte Folded Reload
	lw x23, -392 ( fp )             //  4-byte Folded Reload
	sw x26, -420 ( fp )             //  4-byte Folded Spill
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x25 )
	add x10, x0, 32
	sw x10, -416 ( fp )             //  4-byte Folded Spill
	jal __locale_mb_cur_max
	bne x24, x10, .LBB3_349
	jal x0, .LBB3_543
.LBB3_345:                              //    in Loop: Header=BB3_349 Depth=2
	lw x23, -392 ( fp )             //  4-byte Folded Reload
	mv x26, x11
.LBB3_346:                              //  %if.end703.us
                                        //    in Loop: Header=BB3_349 Depth=2
	lw x10, 4 ( x18 )
	bge x0, x10, .LBB3_365
.LBB3_347:                              //  %if.end715.us
                                        //    in Loop: Header=BB3_349 Depth=2
	beq x0, x22, .LBB3_487
.LBB3_348:                              //  %while.body613.us
                                        //    in Loop: Header=BB3_349 Depth=2
	jal __locale_mb_cur_max
	beq x24, x10, .LBB3_543
.LBB3_349:                              //  %if.end618.us
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	add x10, x10, -1
	lb x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	add x10, x11, 1
	sw x10, 0 ( x18 )
	add x10, fp, -368
	add x10, x24, x10
	sb x12, 0 ( x10 )
	add x24, x24, 1
	xor x10, x23, 3
	bltu x0, x10, .LBB3_351
.LBB3_350:                              //  %if.end618.us
                                        //    in Loop: Header=BB3_349 Depth=2
	lw x10, -376 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB3_352
.LBB3_351:                              //  %if.then632.us
                                        //    in Loop: Header=BB3_349 Depth=2
	add x10, fp, -376
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB3_352:                              //  %if.end634.us
                                        //    in Loop: Header=BB3_349 Depth=2
	add x12, fp, -368
	add x14, fp, -376
	mv x10, x19
	mv x11, x26
	mv x13, x24
	jal _mbrtowc_r
	mv x23, x10
	xor x10, x23, -2
	beq x0, x10, .LBB3_346
.LBB3_353:                              //  %if.end634.us
                                        //    in Loop: Header=BB3_349 Depth=2
	sw x23, -392 ( fp )             //  4-byte Folded Spill
	sw x26, -412 ( fp )             //  4-byte Folded Spill
	beq x0, x23, .LBB3_357
.LBB3_354:                              //  %if.end634.us
                                        //    in Loop: Header=BB3_349 Depth=2
	xor x10, x23, -1
	beq x0, x10, .LBB3_543
.LBB3_355:                              //  %if.then647.us
                                        //    in Loop: Header=BB3_349 Depth=2
	mv x23, x25
	lw x25, 0 ( x26 )
	xor x10, x25, -1
	bltu x0, x10, .LBB3_358
.LBB3_356:                              //    in Loop: Header=BB3_349 Depth=2
	add x26, x0, -1
	jal x0, .LBB3_360
.LBB3_357:                              //  %if.then647.thread.us
                                        //    in Loop: Header=BB3_349 Depth=2
	mv x23, x25
	mv x25, x0
	sw x0, 0 ( x26 )
.LBB3_358:                              //  %if.end.i2322.us
                                        //    in Loop: Header=BB3_349 Depth=2
	mv x26, x0
	add x10, fp, -60
	add x12, x0, 8
	mv x11, x26
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
	bne x10, x11, .LBB3_360
.LBB3_359:                              //    in Loop: Header=BB3_349 Depth=2
	lbu x26, -61 ( fp )
.LBB3_360:                              //  %if.end.i2322.us
                                        //    in Loop: Header=BB3_349 Depth=2
	add x10, fp, -328
	add x10, x26, x10
	mv x25, x23
	lw x23, -392 ( fp )             //  4-byte Folded Reload
	lbu x10, 0 ( x10 )
	beq x0, x10, .LBB3_472
.LBB3_361:                              //  %if.end661.us
                                        //    in Loop: Header=BB3_349 Depth=2
	lw x11, -376 ( fp )
	xor x10, x23, 3
	snez x10, x10
	lw x26, -412 ( fp )             //  4-byte Folded Reload
	xor x11, x11, 4
	snez x11, x11
	or x10, x10, x11
	sub x22, x22, x10
	lw x10, -408 ( fp )             //  4-byte Folded Reload
	add x27, x27, x24
	mv x24, x0
	add x26, x26, 4
	beq x0, x10, .LBB3_346
.LBB3_362:                              //  %if.end661.us
                                        //    in Loop: Header=BB3_349 Depth=2
	lw x10, -420 ( fp )             //  4-byte Folded Reload
	sub x11, x26, x10
	sra x23, x11, 2&31
	mv x11, x26
	lw x26, -416 ( fp )             //  4-byte Folded Reload
	bltu x23, x26, .LBB3_345
.LBB3_363:                              //  %if.then687.us
                                        //    in Loop: Header=BB3_349 Depth=2
	sll x11, x26, 3&31
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB3_561
.LBB3_364:                              //  %if.end693.us
                                        //    in Loop: Header=BB3_349 Depth=2
	lw x10, -408 ( fp )             //  4-byte Folded Reload
	sll x26, x26, 1&31
	sw x26, -416 ( fp )             //  4-byte Folded Spill
	sw x11, -420 ( fp )             //  4-byte Folded Spill
	sw x11, 0 ( x10 )
	sll x10, x23, 2&31
	lw x23, -392 ( fp )             //  4-byte Folded Reload
	add x10, x10, x11
	mv x26, x10
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB3_347
.LBB3_365:                              //  %land.lhs.true707.us
                                        //    in Loop: Header=BB3_349 Depth=2
	lw x11, 48 ( x18 )
	beq x0, x11, .LBB3_451
.LBB3_366:                              //  %if.then.i2337.us
                                        //    in Loop: Header=BB3_349 Depth=2
	beq x11, x9, .LBB3_368
.LBB3_367:                              //  %if.then4.i2338.us
                                        //    in Loop: Header=BB3_349 Depth=2
	mv x10, x19
	jal _free_r
.LBB3_368:                              //  %if.end.i2342.us
                                        //    in Loop: Header=BB3_349 Depth=2
	lw x10, 60 ( x18 )
	sw x0, 48 ( x18 )
	sw x10, 4 ( x18 )
	beq x0, x10, .LBB3_451
.LBB3_369:                              //  %__ssrefill_r.exit2350.thread.us
                                        //    in Loop: Header=BB3_349 Depth=2
	lw x10, 56 ( x18 )
	sw x10, 0 ( x18 )
	bltu x0, x22, .LBB3_348
	jal x0, .LBB3_487
.LBB3_370:                              //  %if.then964
                                        //    in Loop: Header=BB3_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB3_562
.LBB3_371:                              //  %if.end984
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x25 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB3_562
.LBB3_372:                              //  %cleanup993
                                        //    in Loop: Header=BB3_4 Depth=1
	lh x11, 4 ( x25 )
	sw x10, 0 ( x25 )
	add x11, x11, 8
	sh x11, 4 ( x25 )
	lhu x11, 6 ( x25 )
.LBB3_373:                              //  %if.end996
                                        //    in Loop: Header=BB3_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x24, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x25 )
	lw x10, -412 ( fp )             //  4-byte Folded Reload
	lw x23, -392 ( fp )             //  4-byte Folded Reload
	sw x25, -404 ( fp )             //  4-byte Folded Spill
	add x11, x0, 32
	sw x10, -408 ( fp )             //  4-byte Folded Spill
	mv x25, x26
	sw x10, -412 ( fp )             //  4-byte Folded Spill
	sw x11, -416 ( fp )             //  4-byte Folded Spill
	beq x0, x22, .LBB3_467
.LBB3_374:                              //  %if.end1008
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x18 )
	lbu x10, 0 ( x10 )
	add x10, x10, x20
	lbu x10, 1 ( x10 )
	and x10, x10, 8
	bltu x0, x10, .LBB3_467
.LBB3_375:                              //  %while.body1018.lr.ph
                                        //    in Loop: Header=BB3_4 Depth=1
	mv x26, x0
	bltu x0, x25, .LBB3_401
.LBB3_376:                              //  %while.body1018.us.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x25, -420 ( fp )             //  4-byte Folded Spill
	jal __locale_mb_cur_max
	bne x26, x10, .LBB3_378
	jal x0, .LBB3_542
.LBB3_413:                              //  %if.end1107.if.end1119_crit_edge
                                        //    in Loop: Header=BB3_401 Depth=2
	lw x10, 0 ( x18 )
	beq x0, x22, .LBB3_467
.LBB3_419:                              //  %if.end1119
                                        //    in Loop: Header=BB3_401 Depth=2
	lbu x10, 0 ( x10 )
	add x10, x10, x20
	lbu x10, 1 ( x10 )
	and x10, x10, 8
	bltu x0, x10, .LBB3_467
.LBB3_401:                              //  %while.body1018
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	jal __locale_mb_cur_max
	beq x26, x10, .LBB3_542
.LBB3_402:                              //  %if.end1023
                                        //    in Loop: Header=BB3_401 Depth=2
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	add x10, x10, -1
	lb x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	add x10, x11, 1
	sw x10, 0 ( x18 )
	add x10, fp, -368
	add x10, x26, x10
	sb x12, 0 ( x10 )
	add x26, x26, 1
	xor x10, x23, 3
	bltu x0, x10, .LBB3_404
.LBB3_403:                              //  %if.end1023
                                        //    in Loop: Header=BB3_401 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB3_405
.LBB3_404:                              //  %if.then1037
                                        //    in Loop: Header=BB3_401 Depth=2
	add x10, fp, -60
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB3_405:                              //  %if.end1039
                                        //    in Loop: Header=BB3_401 Depth=2
	lw x11, -408 ( fp )             //  4-byte Folded Reload
	add x12, fp, -368
	add x14, fp, -60
	mv x10, x19
	mv x13, x26
	jal _mbrtowc_r
	mv x23, x10
	xor x10, x23, -2
	beq x0, x10, .LBB3_412
.LBB3_406:                              //  %if.end1039
                                        //    in Loop: Header=BB3_401 Depth=2
	beq x0, x23, .LBB3_410
.LBB3_407:                              //  %if.end1039
                                        //    in Loop: Header=BB3_401 Depth=2
	xor x10, x23, -1
	beq x0, x10, .LBB3_542
.LBB3_408:                              //  %if.end1039.if.then1052_crit_edge
                                        //    in Loop: Header=BB3_401 Depth=2
	lw x10, -408 ( fp )             //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal iswspace
	beq x0, x10, .LBB3_411
	jal x0, .LBB3_409
.LBB3_410:                              //  %if.then1048
                                        //    in Loop: Header=BB3_401 Depth=2
	lw x10, -408 ( fp )             //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	mv x10, x0
	jal iswspace
	bltu x0, x10, .LBB3_409
.LBB3_411:                              //  %if.end1065
                                        //    in Loop: Header=BB3_401 Depth=2
	lw x11, -60 ( fp )
	xor x10, x23, 3
	snez x10, x10
	add x27, x27, x26
	xor x11, x11, 4
	snez x11, x11
	or x10, x10, x11
	sub x22, x22, x10
	mv x26, x0
.LBB3_412:                              //  %if.end1107
                                        //    in Loop: Header=BB3_401 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB3_413
.LBB3_414:                              //  %land.lhs.true1111
                                        //    in Loop: Header=BB3_401 Depth=2
	lw x11, 48 ( x18 )
	beq x0, x11, .LBB3_466
.LBB3_415:                              //  %if.then.i2432
                                        //    in Loop: Header=BB3_401 Depth=2
	beq x11, x9, .LBB3_417
.LBB3_416:                              //  %if.then4.i2433
                                        //    in Loop: Header=BB3_401 Depth=2
	mv x10, x19
	jal _free_r
.LBB3_417:                              //  %if.end.i2437
                                        //    in Loop: Header=BB3_401 Depth=2
	lw x10, 60 ( x18 )
	sw x0, 48 ( x18 )
	sw x10, 4 ( x18 )
	beq x0, x10, .LBB3_466
.LBB3_418:                              //  %__ssrefill_r.exit2445.thread
                                        //    in Loop: Header=BB3_401 Depth=2
	lw x10, 56 ( x18 )
	sw x10, 0 ( x18 )
	bltu x0, x22, .LBB3_419
	jal x0, .LBB3_467
.LBB3_394:                              //    in Loop: Header=BB3_378 Depth=2
	sw x11, -408 ( fp )             //  4-byte Folded Spill
	lw x10, 4 ( x18 )
	bge x0, x10, .LBB3_395
.LBB3_393:                              //  %if.end1107.us.if.end1119.us_crit_edge
                                        //    in Loop: Header=BB3_378 Depth=2
	lw x10, 0 ( x18 )
	beq x0, x22, .LBB3_467
.LBB3_400:                              //  %if.end1119.us
                                        //    in Loop: Header=BB3_378 Depth=2
	lbu x10, 0 ( x10 )
	add x10, x10, x20
	lbu x10, 1 ( x10 )
	and x10, x10, 8
	bltu x0, x10, .LBB3_467
.LBB3_377:                              //  %while.body1018.us
                                        //    in Loop: Header=BB3_378 Depth=2
	jal __locale_mb_cur_max
	beq x26, x10, .LBB3_542
.LBB3_378:                              //  %if.end1023.us
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	add x10, x10, -1
	lb x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	add x10, x11, 1
	sw x10, 0 ( x18 )
	add x10, fp, -368
	add x10, x26, x10
	sb x12, 0 ( x10 )
	add x26, x26, 1
	xor x10, x23, 3
	bltu x0, x10, .LBB3_380
.LBB3_379:                              //  %if.end1023.us
                                        //    in Loop: Header=BB3_378 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB3_381
.LBB3_380:                              //  %if.then1037.us
                                        //    in Loop: Header=BB3_378 Depth=2
	add x10, fp, -60
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB3_381:                              //  %if.end1039.us
                                        //    in Loop: Header=BB3_378 Depth=2
	lw x11, -408 ( fp )             //  4-byte Folded Reload
	add x12, fp, -368
	add x14, fp, -60
	mv x10, x19
	mv x13, x26
	jal _mbrtowc_r
	mv x23, x10
	xor x10, x23, -2
	beq x0, x10, .LBB3_392
.LBB3_382:                              //  %if.end1039.us
                                        //    in Loop: Header=BB3_378 Depth=2
	beq x0, x23, .LBB3_385
.LBB3_383:                              //  %if.end1039.us
                                        //    in Loop: Header=BB3_378 Depth=2
	xor x10, x23, -1
	beq x0, x10, .LBB3_542
.LBB3_384:                              //  %if.end1039.us.if.then1052.us_crit_edge
                                        //    in Loop: Header=BB3_378 Depth=2
	lw x10, -408 ( fp )             //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal iswspace
	beq x0, x10, .LBB3_386
	jal x0, .LBB3_409
.LBB3_385:                              //  %if.then1048.us
                                        //    in Loop: Header=BB3_378 Depth=2
	lw x10, -408 ( fp )             //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	mv x10, x0
	jal iswspace
	bltu x0, x10, .LBB3_409
.LBB3_386:                              //  %if.end1065.us
                                        //    in Loop: Header=BB3_378 Depth=2
	lw x11, -60 ( fp )
	xor x10, x23, 3
	snez x10, x10
	add x27, x27, x26
	xor x11, x11, 4
	snez x11, x11
	or x10, x10, x11
	lw x11, -408 ( fp )             //  4-byte Folded Reload
	sub x22, x22, x10
	mv x26, x0
	add x11, x11, 4
	beq x0, x24, .LBB3_394
.LBB3_387:                              //  %if.end1065.us
                                        //    in Loop: Header=BB3_378 Depth=2
	lw x10, -412 ( fp )             //  4-byte Folded Reload
	lw x25, -416 ( fp )             //  4-byte Folded Reload
	mv x12, x11
	sw x23, -392 ( fp )             //  4-byte Folded Spill
	sub x11, x12, x10
	sra x23, x11, 2&31
	bltu x23, x25, .LBB3_390
.LBB3_388:                              //  %if.then1091.us
                                        //    in Loop: Header=BB3_378 Depth=2
	sll x11, x25, 3&31
	jal realloc
	beq x0, x10, .LBB3_563
.LBB3_389:                              //  %if.end1097.us
                                        //    in Loop: Header=BB3_378 Depth=2
	mv x11, x10
	sw x10, 0 ( x24 )
	sll x10, x23, 2&31
	add x10, x10, x11
	sll x25, x25, 1&31
	sw x11, -412 ( fp )             //  4-byte Folded Spill
	sw x10, -408 ( fp )             //  4-byte Folded Spill
	sw x25, -416 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB3_391
.LBB3_390:                              //    in Loop: Header=BB3_378 Depth=2
	sw x12, -408 ( fp )             //  4-byte Folded Spill
.LBB3_391:                              //  %if.end1107.us
                                        //    in Loop: Header=BB3_378 Depth=2
	lw x23, -392 ( fp )             //  4-byte Folded Reload
	lw x25, -420 ( fp )             //  4-byte Folded Reload
.LBB3_392:                              //  %if.end1107.us
                                        //    in Loop: Header=BB3_378 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB3_393
.LBB3_395:                              //  %land.lhs.true1111.us
                                        //    in Loop: Header=BB3_378 Depth=2
	lw x11, 48 ( x18 )
	beq x0, x11, .LBB3_466
.LBB3_396:                              //  %if.then.i2432.us
                                        //    in Loop: Header=BB3_378 Depth=2
	beq x11, x9, .LBB3_398
.LBB3_397:                              //  %if.then4.i2433.us
                                        //    in Loop: Header=BB3_378 Depth=2
	mv x10, x19
	jal _free_r
.LBB3_398:                              //  %if.end.i2437.us
                                        //    in Loop: Header=BB3_378 Depth=2
	lw x10, 60 ( x18 )
	sw x0, 48 ( x18 )
	sw x10, 4 ( x18 )
	beq x0, x10, .LBB3_466
.LBB3_399:                              //  %__ssrefill_r.exit2445.thread.us
                                        //    in Loop: Header=BB3_378 Depth=2
	lw x10, 56 ( x18 )
	sw x10, 0 ( x18 )
	bltu x0, x22, .LBB3_400
	jal x0, .LBB3_467
.LBB3_184:                              //  %if.end1355
                                        //    in Loop: Header=BB3_168 Depth=2
	snez x11, x11
	add x23, x11, x23
	add x22, x22, 1
	and x26, x26, -897
	sw x12, -408 ( fp )             //  4-byte Folded Spill
	add x25, x25, -1
	sw x25, 4 ( x18 )
	bge x0, x25, .LBB3_187
.LBB3_166:                              //  %if.then1402
                                        //    in Loop: Header=BB3_168 Depth=2
	add x10, x10, 1
	add x23, x23, -1
	sw x10, 0 ( x18 )
	beq x0, x23, .LBB3_229
.LBB3_167:                              //  %for.body1338
                                        //    in Loop: Header=BB3_168 Depth=2
	lbu x11, 0 ( x10 )
	add x13, x0, 77
	add x12, x11, -43
	bltu x13, x12, .LBB3_229
.LBB3_168:                              //  %for.body1338
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lui x13, %hi( JTI3_2 )
	sll x12, x12, 2&31
	add x13, x13, %lo( JTI3_2 )
	add x12, x13, x12
	lw x12, 0 ( x12 )
	jr x12
.LBB3_169:                              //  %sw.bb1375
                                        //    in Loop: Header=BB3_168 Depth=2
	lw x12, -388 ( fp )             //  4-byte Folded Reload
	slti x12, x12, 11
	bltu x0, x12, .LBB3_229
.LBB3_170:                              //  %if.end1379
                                        //    in Loop: Header=BB3_168 Depth=2
	lui x12, %hi( -2945 )
	add x12, x12, %lo( -2945 )
	and x26, x12, x26
	jal x0, .LBB3_186
.LBB3_171:                              //  %sw.bb1363
                                        //    in Loop: Header=BB3_168 Depth=2
	lui x12, %hi( -2945 )
	add x12, x12, %lo( -2945 )
	and x26, x12, x26
	lw x12, -388 ( fp )             //  4-byte Folded Reload
	lui x13, %hi( __ssvfiscanf_r.basefix )
	add x13, x13, %lo( __ssvfiscanf_r.basefix )
	sll x12, x12, 1&31
	add x12, x12, x13
	lh x12, 0 ( x12 )
	sw x12, -388 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB3_186
.LBB3_172:                              //  %sw.bb1381
                                        //    in Loop: Header=BB3_168 Depth=2
	and x12, x26, 128
	beq x0, x12, .LBB3_229
.LBB3_173:                              //  %if.then1384
                                        //    in Loop: Header=BB3_168 Depth=2
	and x26, x26, -129
	jal x0, .LBB3_186
.LBB3_174:                              //  %sw.bb1367
                                        //    in Loop: Header=BB3_168 Depth=2
	lw x14, -388 ( fp )             //  4-byte Folded Reload
	lui x13, %hi( __ssvfiscanf_r.basefix )
	add x13, x13, %lo( __ssvfiscanf_r.basefix )
	sll x12, x14, 1&31
	add x12, x12, x13
	lh x12, 0 ( x12 )
	add x13, x14, -1
	sltiu x13, x13, 8
	bltu x0, x13, .LBB3_497
.LBB3_175:                              //  %if.end1373
                                        //    in Loop: Header=BB3_168 Depth=2
	lui x13, %hi( -2945 )
	add x13, x13, %lo( -2945 )
	and x26, x13, x26
	sw x12, -388 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB3_186
.LBB3_176:                              //  %sw.bb1387
                                        //    in Loop: Header=BB3_168 Depth=2
	and x12, x26, 1536
	xor x12, x12, 512
	bltu x0, x12, .LBB3_229
.LBB3_177:                              //  %if.then1391
                                        //    in Loop: Header=BB3_168 Depth=2
	add x12, x0, 16
	sw x12, -388 ( fp )             //  4-byte Folded Spill
	and x12, x26, -1793
	or x26, x12, 1280
	jal x0, .LBB3_186
.LBB3_178:                              //  %sw.bb1341
                                        //    in Loop: Header=BB3_168 Depth=2
	lui x12, %hi( 2048 )
	add x12, x12, %lo( 2048 )
	and x12, x12, x26
	beq x0, x12, .LBB3_186
.LBB3_179:                              //  %if.end1345
                                        //    in Loop: Header=BB3_168 Depth=2
	lw x13, -388 ( fp )             //  4-byte Folded Reload
	mv x12, x0
	bne x13, x12, .LBB3_181
.LBB3_180:                              //    in Loop: Header=BB3_168 Depth=2
	or x26, x26, 512
	add x13, x0, 8
	sw x13, -388 ( fp )             //  4-byte Folded Spill
.LBB3_181:                              //  %if.end1345
                                        //    in Loop: Header=BB3_168 Depth=2
	and x13, x26, 1024
	bltu x0, x13, .LBB3_185
.LBB3_182:                              //  %if.end1355
                                        //    in Loop: Header=BB3_168 Depth=2
	lw x11, -408 ( fp )             //  4-byte Folded Reload
	beq x11, x12, .LBB3_184
.LBB3_183:                              //  %if.end1355
                                        //    in Loop: Header=BB3_168 Depth=2
	add x12, x11, -1
	jal x0, .LBB3_184
.LBB3_185:                              //  %if.then1353
                                        //    in Loop: Header=BB3_168 Depth=2
	and x26, x26, -1409
.LBB3_186:                              //  %ok
                                        //    in Loop: Header=BB3_168 Depth=2
	add x12, x24, x15
	add x24, x24, 1
	sb x11, 0 ( x12 )
	add x25, x25, -1
	sw x25, 4 ( x18 )
	blt x0, x25, .LBB3_166
.LBB3_187:                              //  %if.else1405
                                        //    in Loop: Header=BB3_168 Depth=2
	lw x11, 48 ( x18 )
	beq x0, x11, .LBB3_228
.LBB3_188:                              //  %if.then.i2486
                                        //    in Loop: Header=BB3_168 Depth=2
	beq x11, x9, .LBB3_190
.LBB3_189:                              //  %if.then4.i2487
                                        //    in Loop: Header=BB3_168 Depth=2
	mv x10, x19
	jal _free_r
	add x15, fp, -368
.LBB3_190:                              //  %if.end.i2491
                                        //    in Loop: Header=BB3_168 Depth=2
	lw x25, 60 ( x18 )
	sw x0, 48 ( x18 )
	sw x25, 4 ( x18 )
	beq x0, x25, .LBB3_228
.LBB3_191:                              //  %__ssrefill_r.exit2499.thread
                                        //    in Loop: Header=BB3_168 Depth=2
	lw x10, 56 ( x18 )
	add x23, x23, -1
	sw x10, 0 ( x18 )
	bltu x0, x23, .LBB3_167
	jal x0, .LBB3_229
.LBB3_228:                              //  %__ssrefill_r.exit2499
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 16 ( x18 )
	sw x0, 4 ( x18 )
	mv x25, x0
	sw x10, 0 ( x18 )
	lh x10, 12 ( x18 )
	or x10, x10, 32
	sh x10, 12 ( x18 )
.LBB3_229:                              //  %for.end1413
                                        //    in Loop: Header=BB3_4 Depth=1
	add x10, x24, x15
	and x11, x26, 256
	beq x0, x11, .LBB3_230
.LBB3_647:                              //  %for.end1413
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_498
.LBB3_230:                              //    in Loop: Header=BB3_4 Depth=1
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	mv x23, x10
	and x10, x26, 16
	beq x0, x10, .LBB3_514
	jal x0, .LBB3_539
.LBB3_420:                              //  %while.body853.us.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	mv x25, x0
	add x22, x22, -1
	jal x0, .LBB3_423
.LBB3_421:                              //  %if.end887.us.if.end899.us_crit_edge
                                        //    in Loop: Header=BB3_423 Depth=2
	lw x11, 0 ( x18 )
.LBB3_422:                              //  %if.end899.us
                                        //    in Loop: Header=BB3_423 Depth=2
	lbu x12, 0 ( x11 )
	add x25, x25, 1
	add x12, x12, x13
	lbu x12, 0 ( x12 )
	beq x0, x12, .LBB3_449
.LBB3_423:                              //  %while.body853.us
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12, x11, 1
	add x10, x10, -1
	sw x12, 0 ( x18 )
	sw x10, 4 ( x18 )
	lb x10, 0 ( x11 )
	add x26, x25, x23
	sb x10, 0 ( x26 )
	beq x22, x25, .LBB3_449
.LBB3_424:                              //  %if.end887.us
                                        //    in Loop: Header=BB3_423 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB3_421
.LBB3_425:                              //  %land.lhs.true891.us
                                        //    in Loop: Header=BB3_423 Depth=2
	lw x11, 48 ( x18 )
	beq x0, x11, .LBB3_493
.LBB3_426:                              //  %if.then.i2373.us
                                        //    in Loop: Header=BB3_423 Depth=2
	beq x11, x9, .LBB3_428
.LBB3_427:                              //  %if.then4.i2374.us
                                        //    in Loop: Header=BB3_423 Depth=2
	mv x10, x19
	jal _free_r
	add x13, fp, -328
.LBB3_428:                              //  %if.end.i2378.us
                                        //    in Loop: Header=BB3_423 Depth=2
	lw x10, 60 ( x18 )
	sw x0, 48 ( x18 )
	sw x10, 4 ( x18 )
	beq x0, x10, .LBB3_493
.LBB3_429:                              //  %__ssrefill_r.exit2386.thread.us
                                        //    in Loop: Header=BB3_423 Depth=2
	lw x11, 56 ( x18 )
	sw x11, 0 ( x18 )
	jal x0, .LBB3_422
.LBB3_486:                              //    in Loop: Header=BB3_4 Depth=1
	mv x10, x0
	add x26, fp, -72
	sw x10, -420 ( fp )             //  4-byte Folded Spill
	sw x10, -408 ( fp )             //  4-byte Folded Spill
	sw x10, -416 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB3_487
.LBB3_430:                              //    in Loop: Header=BB3_4 Depth=1
	mv x25, x0
	sw x25, -412 ( fp )             //  4-byte Folded Spill
	sw x25, -408 ( fp )             //  4-byte Folded Spill
	sw x25, -416 ( fp )             //  4-byte Folded Spill
.LBB3_431:                              //  %if.then374
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 16 ( x18 )
	sw x0, 4 ( x18 )
	sw x10, 0 ( x18 )
	lh x10, 12 ( x18 )
	or x10, x10, 32
	sh x10, 12 ( x18 )
	bltu x0, x24, .LBB3_542
.LBB3_432:                              //  %while.end380
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -412 ( fp )             //  4-byte Folded Reload
	sw x23, -392 ( fp )             //  4-byte Folded Spill
	beq x0, x10, .LBB3_436
.LBB3_433:                              //  %while.end380
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -416 ( fp )             //  4-byte Folded Reload
	lw x12, -408 ( fp )             //  4-byte Folded Reload
	sub x11, x25, x10
	sra x10, x11, 2&31
	bgeu x10, x12, .LBB3_436
.LBB3_434:                              //  %if.then390
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -412 ( fp )             //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB3_436
.LBB3_435:                              //  %if.then394
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11, -412 ( fp )             //  4-byte Folded Reload
	sw x10, 0 ( x11 )
.LBB3_436:                              //  %cleanup402
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -420 ( fp )             //  4-byte Folded Reload
	lw x11, -384 ( fp )             //  4-byte Folded Reload
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	seqz x10, x10
	add x11, x10, x11
	sw x11, -384 ( fp )             //  4-byte Folded Spill
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB3_648
.LBB3_649:                              //  %cleanup402
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_4
.LBB3_648:                              //  %cleanup402
	jal x0, .LBB3_547
.LBB3_437:                              //  %while.body1255.us.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	mv x23, x0
	add x22, x22, -1
	jal x0, .LBB3_440
.LBB3_438:                              //  %if.end1289.us.if.end1297.us_crit_edge
                                        //    in Loop: Header=BB3_440 Depth=2
	lw x11, 0 ( x18 )
.LBB3_439:                              //  %if.end1297.us
                                        //    in Loop: Header=BB3_440 Depth=2
	lbu x12, 0 ( x11 )
	add x23, x23, 1
	add x12, x12, x20
	lbu x12, 1 ( x12 )
	and x12, x12, 8
	bltu x0, x12, .LBB3_492
.LBB3_440:                              //  %while.body1255.us
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12, x11, 1
	add x10, x10, -1
	sw x12, 0 ( x18 )
	sw x10, 4 ( x18 )
	lb x10, 0 ( x11 )
	add x26, x23, x25
	sb x10, 0 ( x26 )
	beq x22, x23, .LBB3_492
.LBB3_441:                              //  %if.end1289.us
                                        //    in Loop: Header=BB3_440 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB3_438
.LBB3_442:                              //  %land.lhs.true1293.us
                                        //    in Loop: Header=BB3_440 Depth=2
	lw x11, 48 ( x18 )
	beq x0, x11, .LBB3_526
.LBB3_443:                              //  %if.then.i2468.us
                                        //    in Loop: Header=BB3_440 Depth=2
	beq x11, x9, .LBB3_445
.LBB3_444:                              //  %if.then4.i2469.us
                                        //    in Loop: Header=BB3_440 Depth=2
	mv x10, x19
	jal _free_r
.LBB3_445:                              //  %if.end.i2473.us
                                        //    in Loop: Header=BB3_440 Depth=2
	lw x10, 60 ( x18 )
	sw x0, 48 ( x18 )
	sw x10, 4 ( x18 )
	beq x0, x10, .LBB3_526
.LBB3_446:                              //  %__ssrefill_r.exit2481.thread.us
                                        //    in Loop: Header=BB3_440 Depth=2
	lw x11, 56 ( x18 )
	sw x11, 0 ( x18 )
	jal x0, .LBB3_439
.LBB3_447:                              //  %__ssrefill_r.exit2463
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 16 ( x18 )
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	sw x0, 4 ( x18 )
	add x27, x27, x23
	sw x10, 0 ( x18 )
	lh x10, 12 ( x18 )
	or x10, x10, 32
	sh x10, 12 ( x18 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB3_650
.LBB3_651:                              //  %__ssrefill_r.exit2463
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_4
.LBB3_650:                              //  %__ssrefill_r.exit2463
	jal x0, .LBB3_547
.LBB3_448:                              //  %if.then171
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sh x27, 0 ( x10 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB3_652
.LBB3_653:                              //  %if.then171
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_4
.LBB3_652:                              //  %if.then171
	jal x0, .LBB3_547
.LBB3_449:                              //  %while.end900.loopexit
                                        //    in Loop: Header=BB3_4 Depth=1
	add x25, x26, 1
	sub x22, x25, x23
	bltu x0, x22, .LBB3_496
	jal x0, .LBB3_565
.LBB3_450:                              //    in Loop: Header=BB3_4 Depth=1
	mv x10, x0
	sw x10, -420 ( fp )             //  4-byte Folded Spill
	sw x10, -408 ( fp )             //  4-byte Folded Spill
	sw x10, -416 ( fp )             //  4-byte Folded Spill
.LBB3_451:                              //  %if.then710
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 16 ( x18 )
	sw x0, 4 ( x18 )
	sw x10, 0 ( x18 )
	lh x10, 12 ( x18 )
	or x10, x10, 32
	sh x10, 12 ( x18 )
	beq x0, x24, .LBB3_487
	jal x0, .LBB3_543
.LBB3_466:                              //  %if.then1114
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 16 ( x18 )
	sw x0, 4 ( x18 )
	sw x10, 0 ( x18 )
	lh x10, 12 ( x18 )
	or x10, x10, 32
	sh x10, 12 ( x18 )
	beq x0, x26, .LBB3_467
	jal x0, .LBB3_542
.LBB3_452:                              //    in Loop: Header=BB3_4 Depth=1
	mv x10, x0
	add x26, fp, -72
	sw x10, -420 ( fp )             //  4-byte Folded Spill
	sw x10, -408 ( fp )             //  4-byte Folded Spill
	sw x10, -416 ( fp )             //  4-byte Folded Spill
	bltu x0, x24, .LBB3_477
	jal x0, .LBB3_487
.LBB3_409:                              //  %while.cond1056.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	bltu x0, x26, .LBB3_457
	jal x0, .LBB3_467
.LBB3_453:                              //  %if.end14.if.end34_crit_edge.i2408
                                        //    in Loop: Header=BB3_457 Depth=2
	lw x10, 0 ( x18 )
.LBB3_454:                              //  %if.end34.i2425
                                        //    in Loop: Header=BB3_457 Depth=2
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -400 ( fp )             //  4-byte Folded Reload
	sb x22, 66 ( x18 )
	sw x9, 48 ( x18 )
	sw x10, 0 ( x18 )
	lw x10, 4 ( x18 )
	sw x10, 60 ( x18 )
	seqz x10, x0
.LBB3_455:                              //  %_sungetc_r.exit2427.sink.split
                                        //    in Loop: Header=BB3_457 Depth=2
	sw x10, 4 ( x18 )
.LBB3_456:                              //  %_sungetc_r.exit2427
                                        //    in Loop: Header=BB3_457 Depth=2
	beq x0, x26, .LBB3_467
.LBB3_457:                              //  %while.body1059
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lhu x10, 12 ( x18 )
	lui x11, %hi( 65503 )
	add x11, x11, %lo( 65503 )
	and x10, x11, x10
	sh x10, 12 ( x18 )
	add x10, fp, -369
	add x10, x26, x10
	lbu x22, 0 ( x10 )
	lw x10, 48 ( x18 )
	add x26, x26, -1
	beq x0, x10, .LBB3_462
.LBB3_458:                              //  %if.then6.i2395
                                        //    in Loop: Header=BB3_457 Depth=2
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB3_460
.LBB3_459:                              //  %land.lhs.true.i2398
                                        //    in Loop: Header=BB3_457 Depth=2
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB3_456
.LBB3_460:                              //  %if.end11.i2402
                                        //    in Loop: Header=BB3_457 Depth=2
	lw x10, 0 ( x18 )
	add x11, x10, -1
	sw x11, 0 ( x18 )
	sb x22, -1 ( x10 )
.LBB3_461:                              //  %_sungetc_r.exit2427.sink.split
                                        //    in Loop: Header=BB3_457 Depth=2
	lw x10, 4 ( x18 )
	add x10, x10, 1
	jal x0, .LBB3_455
.LBB3_462:                              //  %if.end14.i2405
                                        //    in Loop: Header=BB3_457 Depth=2
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB3_453
.LBB3_463:                              //  %land.lhs.true18.i2411
                                        //    in Loop: Header=BB3_457 Depth=2
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB3_454
.LBB3_464:                              //  %land.lhs.true24.i2414
                                        //    in Loop: Header=BB3_457 Depth=2
	lbu x11, -1 ( x10 )
	bne x11, x22, .LBB3_454
.LBB3_465:                              //  %if.then29.i2417
                                        //    in Loop: Header=BB3_457 Depth=2
	add x10, x10, -1
	sw x10, 0 ( x18 )
	jal x0, .LBB3_461
.LBB3_467:                              //  %while.end1120
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x23, -392 ( fp )             //  4-byte Folded Spill
	bltu x0, x25, .LBB3_534
.LBB3_468:                              //  %if.then1123
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11, -408 ( fp )             //  4-byte Folded Reload
	sw x0, 0 ( x11 )
	beq x0, x24, .LBB3_533
.LBB3_469:                              //  %if.then1123
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -412 ( fp )             //  4-byte Folded Reload
	sub x10, x11, x10
	sra x10, x10, 2&31
	add x11, x10, 1
	lw x10, -416 ( fp )             //  4-byte Folded Reload
	bgeu x11, x10, .LBB3_533
.LBB3_470:                              //  %if.then1134
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x24 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB3_533
.LBB3_471:                              //  %if.then1139
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x10, 0 ( x24 )
	jal x0, .LBB3_533
.LBB3_472:                              //    in Loop: Header=BB3_4 Depth=1
	lw x26, -412 ( fp )             //  4-byte Folded Reload
	lw x10, -416 ( fp )             //  4-byte Folded Reload
	sw x10, -416 ( fp )             //  4-byte Folded Spill
	bltu x0, x24, .LBB3_477
	jal x0, .LBB3_487
.LBB3_473:                              //  %if.end14.if.end34_crit_edge.i
                                        //    in Loop: Header=BB3_477 Depth=2
	lw x10, 0 ( x18 )
.LBB3_474:                              //  %if.end34.i
                                        //    in Loop: Header=BB3_477 Depth=2
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	lw x10, -400 ( fp )             //  4-byte Folded Reload
	sb x22, 66 ( x18 )
	sw x9, 48 ( x18 )
	sw x10, 0 ( x18 )
	lw x10, 4 ( x18 )
	sw x10, 60 ( x18 )
	seqz x10, x0
.LBB3_475:                              //  %_sungetc_r.exit.sink.split
                                        //    in Loop: Header=BB3_477 Depth=2
	sw x10, 4 ( x18 )
.LBB3_476:                              //  %_sungetc_r.exit
                                        //    in Loop: Header=BB3_477 Depth=2
	beq x0, x24, .LBB3_487
.LBB3_477:                              //  %while.body655
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lhu x10, 12 ( x18 )
	lui x11, %hi( 65503 )
	add x11, x11, %lo( 65503 )
	and x10, x11, x10
	sh x10, 12 ( x18 )
	add x10, fp, -369
	add x10, x24, x10
	lbu x22, 0 ( x10 )
	lw x10, 48 ( x18 )
	add x24, x24, -1
	beq x0, x10, .LBB3_482
.LBB3_478:                              //  %if.then6.i
                                        //    in Loop: Header=BB3_477 Depth=2
	lw x10, 52 ( x18 )
	lw x11, 4 ( x18 )
	blt x11, x10, .LBB3_480
.LBB3_479:                              //  %land.lhs.true.i
                                        //    in Loop: Header=BB3_477 Depth=2
	mv x10, x19
	mv x11, x18
	jal __submore
	bltu x0, x10, .LBB3_476
.LBB3_480:                              //  %if.end11.i
                                        //    in Loop: Header=BB3_477 Depth=2
	lw x10, 0 ( x18 )
	add x11, x10, -1
	sw x11, 0 ( x18 )
	sb x22, -1 ( x10 )
.LBB3_481:                              //  %_sungetc_r.exit.sink.split
                                        //    in Loop: Header=BB3_477 Depth=2
	lw x10, 4 ( x18 )
	add x10, x10, 1
	jal x0, .LBB3_475
.LBB3_482:                              //  %if.end14.i
                                        //    in Loop: Header=BB3_477 Depth=2
	lw x11, 16 ( x18 )
	beq x0, x11, .LBB3_473
.LBB3_483:                              //  %land.lhs.true18.i
                                        //    in Loop: Header=BB3_477 Depth=2
	lw x10, 0 ( x18 )
	bgeu x11, x10, .LBB3_474
.LBB3_484:                              //  %land.lhs.true24.i
                                        //    in Loop: Header=BB3_477 Depth=2
	lbu x11, -1 ( x10 )
	bne x11, x22, .LBB3_474
.LBB3_485:                              //  %if.then29.i
                                        //    in Loop: Header=BB3_477 Depth=2
	add x10, x10, -1
	sw x10, 0 ( x18 )
	jal x0, .LBB3_481
.LBB3_487:                              //  %while.end716
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -424 ( fp )             //  4-byte Folded Reload
	sw x23, -392 ( fp )             //  4-byte Folded Spill
	beq x0, x10, .LBB3_488
.LBB3_654:                              //  %while.end716
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_53
.LBB3_488:                              //  %if.then719
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -408 ( fp )             //  4-byte Folded Reload
	sw x0, 0 ( x26 )
	bltu x0, x10, .LBB3_489
.LBB3_655:                              //  %if.then719
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_272
.LBB3_489:                              //  %if.then719
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -420 ( fp )             //  4-byte Folded Reload
	sub x10, x26, x10
	sra x10, x10, 2&31
	add x11, x10, 1
	lw x10, -416 ( fp )             //  4-byte Folded Reload
	bltu x11, x10, .LBB3_490
.LBB3_656:                              //  %if.then719
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_272
.LBB3_490:                              //  %if.then730
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -408 ( fp )             //  4-byte Folded Reload
	sll x11, x11, 2&31
	lw x10, 0 ( x10 )
	jal realloc
	bltu x0, x10, .LBB3_491
.LBB3_657:                              //  %if.then730
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_272
.LBB3_491:                              //  %if.then735
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11, -408 ( fp )             //  4-byte Folded Reload
	sw x10, 0 ( x11 )
	jal x0, .LBB3_272
.LBB3_492:                              //  %while.end1298.loopexit
                                        //    in Loop: Header=BB3_4 Depth=1
	add x23, x26, 1
	sub x22, x23, x25
	sb x0, 0 ( x23 )
	lw x10, -408 ( fp )             //  4-byte Folded Reload
	bltu x0, x10, .LBB3_529
	jal x0, .LBB3_532
.LBB3_509:                              //  %if.end14.if.end34_crit_edge.i2522
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 0 ( x18 )
.LBB3_510:                              //  %if.end34.i2539
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x10, 56 ( x18 )
	add x10, x0, 3
	sw x10, 52 ( x18 )
	seqz x10, x0
	sw x10, 4 ( x18 )
	lw x10, -400 ( fp )             //  4-byte Folded Reload
	sw x25, 60 ( x18 )
	sb x24, 66 ( x18 )
	sw x9, 48 ( x18 )
.LBB3_511:                              //  %if.end1424
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x10, 0 ( x18 )
.LBB3_512:                              //  %if.end1424
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	beq x23, x15, .LBB3_547
.LBB3_513:                              //  %if.end1430
                                        //    in Loop: Header=BB3_4 Depth=1
	and x10, x26, 16
	bltu x0, x10, .LBB3_539
.LBB3_514:                              //  %if.then1434
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x13, -388 ( fp )             //  4-byte Folded Reload
	lw x14, -396 ( fp )             //  4-byte Folded Reload
	add x11, fp, -368
	mv x12, x0
	mv x10, x19
	sb x0, 0 ( x23 )
	call.reg x14
	and x11, x26, 32
	bltu x0, x11, .LBB3_521
.LBB3_515:                              //  %if.else1441
                                        //    in Loop: Header=BB3_4 Depth=1
	and x11, x26, 8
	add x15, fp, -368
	bltu x0, x11, .LBB3_522
.LBB3_516:                              //  %if.else1447
                                        //    in Loop: Header=BB3_4 Depth=1
	and x11, x26, 4
	bltu x0, x11, .LBB3_523
.LBB3_517:                              //  %if.else1453
                                        //    in Loop: Header=BB3_4 Depth=1
	and x11, x26, 1
	bltu x0, x11, .LBB3_519
.LBB3_518:                              //  %if.else1458
                                        //    in Loop: Header=BB3_4 Depth=1
	and x11, x26, 2
	bltu x0, x11, .LBB3_524
.LBB3_519:                              //  %if.else1472
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11, -68 ( fp )
	jal x0, .LBB3_520
.LBB3_521:                              //  %if.then1439
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11, -68 ( fp )
	add x15, fp, -368
.LBB3_520:                              //  %if.end1478
                                        //    in Loop: Header=BB3_4 Depth=1
	add x12, x11, 4
	sw x12, -68 ( fp )
	lw x11, 0 ( x11 )
	sw x10, 0 ( x11 )
	jal x0, .LBB3_538
.LBB3_522:                              //  %if.then1444
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11, -68 ( fp )
	add x12, x11, 4
	sw x12, -68 ( fp )
	lw x11, 0 ( x11 )
	sb x10, 0 ( x11 )
	jal x0, .LBB3_538
.LBB3_523:                              //  %if.then1450
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11, -68 ( fp )
	add x12, x11, 4
	sw x12, -68 ( fp )
	lw x11, 0 ( x11 )
	sh x10, 0 ( x11 )
	jal x0, .LBB3_538
.LBB3_524:                              //  %if.then1461
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11, -396 ( fp )             //  4-byte Folded Reload
	lui x10, %hi( _strtoul_r )
	add x10, x10, %lo( _strtoul_r )
	beq x11, x10, .LBB3_536
.LBB3_525:                              //  %if.else1467
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x13, -388 ( fp )             //  4-byte Folded Reload
	add x11, fp, -368
	mv x12, x0
	mv x10, x19
	jal _strtoll_r
	jal x0, .LBB3_537
.LBB3_493:                              //  %if.then894.loopexit
                                        //    in Loop: Header=BB3_4 Depth=1
	add x25, x26, 1
.LBB3_494:                              //  %if.then894
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 16 ( x18 )
	sw x0, 4 ( x18 )
	sw x10, 0 ( x18 )
	lh x10, 12 ( x18 )
	or x10, x10, 32
	sh x10, 12 ( x18 )
	beq x25, x23, .LBB3_542
.LBB3_495:                              //  %while.end900
                                        //    in Loop: Header=BB3_4 Depth=1
	sub x22, x25, x23
	beq x0, x22, .LBB3_565
.LBB3_496:                              //  %if.end907
                                        //    in Loop: Header=BB3_4 Depth=1
	sb x0, 0 ( x25 )
	lw x10, -408 ( fp )             //  4-byte Folded Reload
	bltu x0, x10, .LBB3_529
	jal x0, .LBB3_532
.LBB3_497:                              //  %for.end1413.loopexit.split.loop.exit
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x12, -388 ( fp )             //  4-byte Folded Spill
	add x10, x24, x15
	and x11, x26, 256
	beq x0, x11, .LBB3_230
	jal x0, .LBB3_498
.LBB3_526:                              //  %__ssrefill_r.exit2481.loopexit
                                        //    in Loop: Header=BB3_4 Depth=1
	add x23, x26, 1
.LBB3_527:                              //  %__ssrefill_r.exit2481
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, 16 ( x18 )
	sw x0, 4 ( x18 )
	sw x10, 0 ( x18 )
	lh x10, 12 ( x18 )
	or x10, x10, 32
	sh x10, 12 ( x18 )
.LBB3_528:                              //  %while.end1298
                                        //    in Loop: Header=BB3_4 Depth=1
	sub x22, x23, x25
	sb x0, 0 ( x23 )
	lw x10, -408 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB3_532
.LBB3_529:                              //  %while.end1298
                                        //    in Loop: Header=BB3_4 Depth=1
	add x11, x22, 1
	bgeu x11, x24, .LBB3_532
.LBB3_530:                              //  %if.then1308
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -408 ( fp )             //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB3_532
.LBB3_531:                              //  %if.then1313
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11, -408 ( fp )             //  4-byte Folded Reload
	sw x10, 0 ( x11 )
.LBB3_532:                              //  %cleanup1321
                                        //    in Loop: Header=BB3_4 Depth=1
	add x27, x27, x22
.LBB3_533:                              //  %if.end1326
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -384 ( fp )             //  4-byte Folded Reload
	add x10, x10, 1
	sw x10, -384 ( fp )             //  4-byte Folded Spill
.LBB3_534:                              //  %if.end1326
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB3_658
.LBB3_659:                              //  %if.end1326
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_4
.LBB3_658:                              //  %if.end1326
	jal x0, .LBB3_547
.LBB3_535:                              //  %if.then182
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sra x11, x27, 31&31
	sw x11, 4 ( x10 )
	sw x27, 0 ( x10 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB3_660
.LBB3_661:                              //  %if.then182
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_4
.LBB3_660:                              //  %if.then182
	jal x0, .LBB3_547
.LBB3_536:                              //  %if.then1464
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x13, -388 ( fp )             //  4-byte Folded Reload
	add x11, fp, -368
	mv x12, x0
	mv x10, x19
	jal _strtoull_r
.LBB3_537:                              //  %if.end1470
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x12, -68 ( fp )
	add x15, fp, -368
	add x13, x12, 4
	sw x13, -68 ( fp )
	lw x12, 0 ( x12 )
	sw x11, 4 ( x12 )
	sw x10, 0 ( x12 )
.LBB3_538:                              //  %if.end1478
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10, -384 ( fp )             //  4-byte Folded Reload
	add x10, x10, 1
	sw x10, -384 ( fp )             //  4-byte Folded Spill
.LBB3_539:                              //  %cleanup1487.thread
                                        //    in Loop: Header=BB3_4 Depth=1
	sub x10, x27, x15
	add x10, x22, x10
	add x27, x23, x10
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB3_662
.LBB3_663:                              //  %cleanup1487.thread
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_4
.LBB3_662:                              //  %cleanup1487.thread
	jal x0, .LBB3_547
.LBB3_540:
	mv x19, x0
	jal x0, .LBB3_557
.LBB3_541:                              //  %__ssrefill_r.exit2265
	lw x10, 16 ( x18 )
	sw x10, 0 ( x18 )
	lh x10, 12 ( x18 )
	or x10, x10, 32
	sh x10, 12 ( x18 )
	sw x0, 4 ( x18 )
.LBB3_542:                              //  %cleanup402.thread2578
	lw x25, -404 ( fp )             //  4-byte Folded Reload
.LBB3_543:                              //  %input_failure
	lw x12, -384 ( fp )             //  4-byte Folded Reload
	beq x0, x12, .LBB3_555
.LBB3_544:                              //  %land.lhs.true1492
	lbu x10, 12 ( x18 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB3_546
.LBB3_545:                              //  %land.lhs.true1492
	add x12, x0, -1
.LBB3_546:                              //  %land.lhs.true1492
	sw x12, -384 ( fp )             //  4-byte Folded Spill
.LBB3_547:                              //  %do.body1497
	beq x0, x25, .LBB3_556
.LBB3_548:                              //  %if.then1499
	lw x19, -384 ( fp )             //  4-byte Folded Reload
	xor x10, x19, -1
	bltu x0, x10, .LBB3_552
.LBB3_549:                              //  %for.cond1503.preheader
	lhu x10, 6 ( x25 )
	add x19, x0, -1
	beq x0, x10, .LBB3_552
.LBB3_550:                              //  %for.body1508.lr.ph
	mv x9, x0
	mv x18, x9
.LBB3_551:                              //  %for.body1508
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x25 )
	add x10, x9, x10
	lw x10, 0 ( x10 )
	lw x10, 0 ( x10 )
	jal free
	lw x10, 0 ( x25 )
	add x18, x18, 1
	add x10, x9, x10
	lw x10, 0 ( x10 )
	add x9, x9, 4
	sw x0, 0 ( x10 )
	lhu x10, 6 ( x25 )
	bltu x18, x10, .LBB3_551
.LBB3_552:                              //  %if.end1516
	lw x10, 0 ( x25 )
	beq x0, x10, .LBB3_557
.LBB3_553:                              //  %if.then1519
	jal free
	jal x0, .LBB3_557
.LBB3_554:                              //  %__ssrefill_r.exit2247
	lw x10, 16 ( x18 )
	sw x0, 4 ( x18 )
	sw x10, 0 ( x18 )
	lh x10, 12 ( x18 )
	or x10, x10, 32
	sh x10, 12 ( x18 )
	lw x12, -384 ( fp )             //  4-byte Folded Reload
	bltu x0, x12, .LBB3_544
.LBB3_555:
	add x10, x0, -1
	sw x10, -384 ( fp )             //  4-byte Folded Spill
	bltu x0, x25, .LBB3_548
.LBB3_556:
	lw x19, -384 ( fp )             //  4-byte Folded Reload
.LBB3_557:                              //  %cleanup1525
	mv x10, x19
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
.LBB3_558:
	add x10, x0, -1
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	sw x10, -384 ( fp )             //  4-byte Folded Spill
	bltu x0, x25, .LBB3_548
	jal x0, .LBB3_556
.LBB3_559:
	add x23, x0, -1
.LBB3_560:                              //  %cleanup402.thread
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	sw x23, -384 ( fp )             //  4-byte Folded Spill
	bltu x0, x25, .LBB3_548
	jal x0, .LBB3_556
.LBB3_565:
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	bltu x0, x25, .LBB3_548
	jal x0, .LBB3_556
.LBB3_563:
	lw x25, -404 ( fp )             //  4-byte Folded Reload
.LBB3_561:
	add x23, x0, -1
.LBB3_562:                              //  %cleanup740.thread
	sw x23, -384 ( fp )             //  4-byte Folded Spill
	bltu x0, x25, .LBB3_548
	jal x0, .LBB3_556
.LBB3_567:
	lw x23, -384 ( fp )             //  4-byte Folded Reload
	sw x23, -384 ( fp )             //  4-byte Folded Spill
	bltu x0, x25, .LBB3_548
	jal x0, .LBB3_556
.LBB3_566:
	lw x23, -384 ( fp )             //  4-byte Folded Reload
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	sw x23, -384 ( fp )             //  4-byte Folded Spill
	bltu x0, x25, .LBB3_548
	jal x0, .LBB3_556
.LBB3_568:
	mv x25, x23
	lhu x10, 6 ( x25 )
	add x19, x0, -1
	bltu x0, x10, .LBB3_550
	jal x0, .LBB3_552
.Lfunc_end3:
	.size	__ssvfiscanf_r, .Lfunc_end3-__ssvfiscanf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI3_0:
	.long	.LBB3_45
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_27
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_22
	.long	.LBB3_22
	.long	.LBB3_22
	.long	.LBB3_22
	.long	.LBB3_22
	.long	.LBB3_22
	.long	.LBB3_22
	.long	.LBB3_22
	.long	.LBB3_22
	.long	.LBB3_22
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_55
	.long	.LBB3_57
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_24
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_58
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_60
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_54
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_61
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_56
	.long	.LBB3_62
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_29
	.long	.LBB3_63
	.long	.LBB3_24
	.long	.LBB3_547
	.long	.LBB3_32
	.long	.LBB3_36
	.long	.LBB3_65
	.long	.LBB3_71
	.long	.LBB3_72
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_73
	.long	.LBB3_19
	.long	.LBB3_74
	.long	.LBB3_547
	.long	.LBB3_547
	.long	.LBB3_54
	.long	.LBB3_547
	.long	.LBB3_19
JTI3_1:
	.long	.LBB3_93
	.long	.LBB3_99
	.long	.LBB3_105
	.long	.LBB3_111
JTI3_2:
	.long	.LBB3_172
	.long	.LBB3_229
	.long	.LBB3_172
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_178
	.long	.LBB3_171
	.long	.LBB3_171
	.long	.LBB3_171
	.long	.LBB3_171
	.long	.LBB3_171
	.long	.LBB3_171
	.long	.LBB3_171
	.long	.LBB3_174
	.long	.LBB3_174
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_169
	.long	.LBB3_169
	.long	.LBB3_169
	.long	.LBB3_169
	.long	.LBB3_169
	.long	.LBB3_169
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_176
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_169
	.long	.LBB3_169
	.long	.LBB3_169
	.long	.LBB3_169
	.long	.LBB3_169
	.long	.LBB3_169
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_229
	.long	.LBB3_176
                                        //  -- End function
	.address_space	0
	.type	__ssvfiscanf_r.basefix,@object //  @__ssvfiscanf_r.basefix
	.p2align	1
__ssvfiscanf_r.basefix:
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
	.size	__ssvfiscanf_r.basefix, 34

	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
