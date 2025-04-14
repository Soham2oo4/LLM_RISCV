	.text
	.file	"mktemp.c"
	.globl	_mkstemp_r              //  -- Begin function _mkstemp_r
	.type	_mkstemp_r,@function
_mkstemp_r:                             //  @_mkstemp_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x0
	add x12, sp, 4
	mv x14, fp
	lui x15, (65536>>12)&1048575
	mv x13, fp
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _gettemp
	beq x10, fp, .LBB0_1
.LBB0_2:                                //  %entry
	lw x10, 4 ( sp )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_1:
	add x10, x0, -1
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_mkstemp_r, .Lfunc_end0-_mkstemp_r
	.cfi_endproc
                                        //  -- End function
	.type	_gettemp,@function      //  -- Begin function _gettemp
_gettemp:                               //  @_gettemp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	sw x9, 120 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 116 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 108 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 104 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw fp, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 112 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x23, 96 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 92 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 88 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 84 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 80 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	mv x20, x15
	mv x21, x14
	mv x22, x13
	mv x18, x12
	mv x9, x11
	mv fp, x10
	jal _getpid_r
	mv x19, x10
	xor x10, x21, -1
	mv x25, x9
.LBB1_1:                                //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x11, 0 ( x25 )
	add x25, x25, 1
	bltu x0, x11, .LBB1_1
.LBB1_2:                                //  %for.end
	add x24, x25, -1
	sub x11, x24, x9
	bltu x11, x21, .LBB1_8
.LBB1_3:                                //  %if.end
	add x27, x10, x25
	mv x26, x27
	bgeu x9, x27, .LBB1_7
.LBB1_4:                                //  %land.rhs.preheader
	sub x10, x25, x21
	add x11, x10, -2
	add x23, x0, 10
.LBB1_5:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	mv x26, x11
	lbu x10, 0 ( x26 )
	xor x10, x10, 88
	bltu x0, x10, .LBB1_7
.LBB1_6:                                //  %while.body
                                        //    in Loop: Header=BB1_5 Depth=1
	mv x10, x19
	mv x11, x23
	jal __udivsi3
	hackaton_custom_instr_c x11, x23, x10
	sub x11, x19, x11
	or x11, x11, 48
	sb x11, 0 ( x26 )
	add x11, x26, -1
	mv x19, x10
	bltu x9, x26, .LBB1_5
.LBB1_7:                                //  %while.end
	sub x10, x27, x26
	slti x10, x10, 6
	beq x0, x10, .LBB1_11
.LBB1_8:                                //  %if.then
	add x10, x0, 22
.LBB1_9:                                //  %cleanup
	sw x10, 0 ( fp )
	mv x19, x0
.LBB1_10:                               //  %cleanup
	mv x10, x19
	lw fp, 76 ( sp )                //  4-byte Folded Reload
	lw x27, 80 ( sp )               //  4-byte Folded Reload
	lw x26, 84 ( sp )               //  4-byte Folded Reload
	lw x25, 88 ( sp )               //  4-byte Folded Reload
	lw x24, 92 ( sp )               //  4-byte Folded Reload
	lw x23, 96 ( sp )               //  4-byte Folded Reload
	lw x22, 100 ( sp )              //  4-byte Folded Reload
	lw x21, 104 ( sp )              //  4-byte Folded Reload
	lw x20, 108 ( sp )              //  4-byte Folded Reload
	lw x19, 112 ( sp )              //  4-byte Folded Reload
	lw x18, 116 ( sp )              //  4-byte Folded Reload
	lw x9, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_11:                               //  %for.cond15.preheader
	bgeu x9, x26, .LBB1_15
.LBB1_12:
	mv x23, x26
.LBB1_13:                               //  %if.end19
                                        //  =>This Inner Loop Header: Depth=1
	lbu x10, 0 ( x23 )
	xor x10, x10, 47
	beq x0, x10, .LBB1_17
.LBB1_14:                               //  %for.inc33
                                        //    in Loop: Header=BB1_13 Depth=1
	add x23, x23, -1
	bltu x9, x23, .LBB1_13
.LBB1_15:                               //  %for.end35
	beq x0, x22, .LBB1_21
.LBB1_16:                               //  %if.then38
	add x10, x0, 88
	jal x0, .LBB1_9
.LBB1_17:                               //  %if.then23
	add x12, sp, 4
	mv x10, fp
	mv x11, x9
	sb x0, 0 ( x23 )
	jal _stat_r
	mv x19, x0
	bltu x0, x10, .LBB1_10
.LBB1_18:                               //  %if.end27
	lbu x10, 9 ( sp )
	and x10, x10, 64
	bltu x0, x10, .LBB1_20
.LBB1_19:                               //  %if.then29
	add x10, x0, 20
	sw x10, 0 ( fp )
	jal x0, .LBB1_10
.LBB1_20:                               //  %if.end31
	add x10, x0, 47
	sb x10, 0 ( x23 )
	bltu x0, x22, .LBB1_16
.LBB1_21:                               //  %if.else.lr.ph
	add x23, x26, x21
	add x21, x23, 2
	add x22, x26, 1
	beq x0, x18, .LBB1_32
.LBB1_22:                               //  %if.else.lr.ph.split
	lui x10, %hi( 2562 )
	add x10, x10, %lo( 2562 )
	or x20, x10, x20
	add x13, x0, 384
	mv x10, fp
	mv x11, x9
	mv x12, x20
	jal _open_r
	sw x10, 0 ( x18 )
	beq x21, x25, .LBB1_34
.LBB1_23:                               //  %if.else.preheader
	seqz x19, x0
	bge x10, x0, .LBB1_10
.LBB1_24:                               //  %if.end46.preheader
	lui x10, %hi( _ctype_ )
	add x25, x23, 1
	mv x23, x0
	add x26, x0, 97
	add x27, x10, %lo( _ctype_ )
	add x21, x0, 384
.LBB1_25:                               //  %if.end46
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_26 Depth 2
	lw x10, 0 ( fp )
	mv x11, x25
	xor x12, x10, 17
	mv x10, x22
	bltu x0, x12, .LBB1_45
.LBB1_26:                               //  %if.end66
                                        //    Parent Loop BB1_25 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x12, 0 ( x10 )
	xor x13, x12, 122
	bltu x0, x13, .LBB1_28
.LBB1_27:                               //  %if.then70
                                        //    in Loop: Header=BB1_26 Depth=2
	sb x26, 0 ( x10 )
	add x10, x10, 1
	add x11, x11, 1
	bne x24, x11, .LBB1_26
	jal x0, .LBB1_45
.LBB1_28:                               //  %if.else72
                                        //    in Loop: Header=BB1_25 Depth=1
	add x11, x12, x27
	lbu x11, 1 ( x11 )
	and x11, x11, 4
	beq x11, x23, .LBB1_30
.LBB1_29:                               //  %if.else72
                                        //    in Loop: Header=BB1_25 Depth=1
	mv x11, x26
	jal x0, .LBB1_31
.LBB1_30:                               //    in Loop: Header=BB1_25 Depth=1
	add x11, x12, 1
.LBB1_31:                               //  %if.else72
                                        //    in Loop: Header=BB1_25 Depth=1
	sb x11, 0 ( x10 )
	mv x10, fp
	mv x11, x9
	mv x12, x20
	mv x13, x21
	jal _open_r
	sw x10, 0 ( x18 )
	blt x10, x0, .LBB1_25
	jal x0, .LBB1_10
.LBB1_32:                               //  %if.else.us.preheader
	add x12, sp, 4
	mv x10, fp
	mv x11, x9
	jal _stat_r
	beq x0, x10, .LBB1_35
.LBB1_33:                               //  %if.then55
	lw x10, 0 ( fp )
	xor x10, x10, 2
	seqz x19, x10
	jal x0, .LBB1_10
.LBB1_34:                               //  %if.then41.us131
	xor x10, x10, -1
	slt x19, x10, x0
	jal x0, .LBB1_10
.LBB1_45:
	mv x19, x23
	jal x0, .LBB1_10
.LBB1_35:                               //  %if.end61.us.preheader
	lui x10, %hi( _ctype_ )
	add x20, x23, 1
	mv x19, x0
	add x23, x0, 97
	add x26, x10, %lo( _ctype_ )
	add x18, sp, 4
.LBB1_36:                               //  %if.end61.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_38 Depth 2
	beq x21, x25, .LBB1_10
.LBB1_37:                               //  %if.end66.us.preheader
                                        //    in Loop: Header=BB1_36 Depth=1
	mv x11, x20
	mv x10, x22
.LBB1_38:                               //  %if.end66.us
                                        //    Parent Loop BB1_36 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x12, 0 ( x10 )
	xor x13, x12, 122
	bltu x0, x13, .LBB1_40
.LBB1_39:                               //  %if.then70.us
                                        //    in Loop: Header=BB1_38 Depth=2
	sb x23, 0 ( x10 )
	add x10, x10, 1
	add x11, x11, 1
	bne x24, x11, .LBB1_38
	jal x0, .LBB1_10
.LBB1_40:                               //  %if.else72.us
                                        //    in Loop: Header=BB1_36 Depth=1
	add x11, x12, x26
	lbu x11, 1 ( x11 )
	and x11, x11, 4
	beq x11, x19, .LBB1_42
.LBB1_41:                               //  %if.else72.us
                                        //    in Loop: Header=BB1_36 Depth=1
	mv x11, x23
	jal x0, .LBB1_43
.LBB1_42:                               //    in Loop: Header=BB1_36 Depth=1
	add x11, x12, 1
.LBB1_43:                               //  %if.else72.us
                                        //    in Loop: Header=BB1_36 Depth=1
	sb x11, 0 ( x10 )
	mv x10, fp
	mv x11, x9
	mv x12, x18
	jal _stat_r
	beq x0, x10, .LBB1_36
	jal x0, .LBB1_33
.Lfunc_end1:
	.size	_gettemp, .Lfunc_end1-_gettemp
	.cfi_endproc
                                        //  -- End function
	.globl	_mkdtemp_r              //  -- Begin function _mkdtemp_r
	.type	_mkdtemp_r,@function
_mkdtemp_r:                             //  @_mkdtemp_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -112
	.cfi_adjust_cfa_offset 112
	sw x9, 104 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 84 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -28
	sw ra, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 96 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 92 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 88 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	mv x9, x11
	mv fp, x10
	jal _getpid_r
	mv x18, x10
	add x21, x9, -1
.LBB2_1:                                //  %for.cond.i
                                        //  =>This Inner Loop Header: Depth=1
	lbu x10, 1 ( x21 )
	add x21, x21, 1
	bltu x0, x10, .LBB2_1
.LBB2_2:                                //  %for.end.i
	bgeu x9, x21, .LBB2_3
.LBB2_4:                                //  %land.rhs.i.preheader
	add x12, x21, -1
	add x19, x0, 10
.LBB2_5:                                //  %land.rhs.i
                                        //  =>This Inner Loop Header: Depth=1
	mv x20, x12
	lbu x11, 0 ( x20 )
	xor x10, x11, 88
	bltu x0, x10, .LBB2_7
.LBB2_6:                                //  %while.body.i
                                        //    in Loop: Header=BB2_5 Depth=1
	mv x10, x18
	mv x11, x19
	jal __udivsi3
	hackaton_custom_instr_c x11, x19, x10
	sub x11, x18, x11
	or x11, x11, 48
	add x12, x20, -1
	mv x18, x10
	sb x11, 0 ( x20 )
	bltu x9, x20, .LBB2_5
.LBB2_7:                                //  %while.end.i
	sub x10, x21, x20
	slti x10, x10, 6
	beq x0, x10, .LBB2_9
.LBB2_8:
	add x18, x0, 22
	jal x0, .LBB2_19
.LBB2_3:
	mv x11, x0
	mv x20, x21
	sub x10, x21, x20
	slti x10, x10, 6
	bltu x0, x10, .LBB2_8
.LBB2_9:                                //  %for.cond15.preheader.i
	add x18, x0, 88
	bgeu x9, x20, .LBB2_19
.LBB2_10:                               //  %if.end19.i.preheader
	and x10, x11, 255
	xor x10, x10, 47
	beq x0, x10, .LBB2_15
.LBB2_11:                               //  %for.inc33.i.preheader
	add x10, x20, -1
.LBB2_12:                               //  %for.inc33.i
                                        //  =>This Inner Loop Header: Depth=1
	bgeu x9, x10, .LBB2_19
.LBB2_13:                               //  %for.inc33.i.if.end19.i_crit_edge
                                        //    in Loop: Header=BB2_12 Depth=1
	lbu x11, 0 ( x10 )
	add x10, x10, -1
	xor x11, x11, 47
	bltu x0, x11, .LBB2_12
.LBB2_14:                               //  %if.then23.i.loopexit
	add x20, x10, 1
.LBB2_15:                               //  %if.then23.i
	add x12, sp, 12
	mv x10, fp
	mv x11, x9
	sb x0, 0 ( x20 )
	jal _stat_r
	bltu x0, x10, .LBB2_20
.LBB2_16:                               //  %if.end27.i
	lbu x10, 17 ( sp )
	and x10, x10, 64
	bltu x0, x10, .LBB2_18
.LBB2_17:
	add x18, x0, 20
	jal x0, .LBB2_19
.LBB2_18:                               //  %if.end31.i
	add x10, x0, 47
	sb x10, 0 ( x20 )
.LBB2_19:                               //  %_gettemp.exit.sink.split
	sw x18, 0 ( fp )
.LBB2_20:                               //  %_gettemp.exit
	lw fp, 84 ( sp )                //  4-byte Folded Reload
	lw x21, 88 ( sp )               //  4-byte Folded Reload
	lw x20, 92 ( sp )               //  4-byte Folded Reload
	lw x19, 96 ( sp )               //  4-byte Folded Reload
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	lw ra, 108 ( sp )               //  4-byte Folded Reload
	mv x10, x0
	add sp, sp, 112
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	_mkdtemp_r, .Lfunc_end2-_mkdtemp_r
	.cfi_endproc
                                        //  -- End function
	.globl	_mkstemps_r             //  -- Begin function _mkstemps_r
	.type	_mkstemps_r,@function
_mkstemps_r:                            //  @_mkstemps_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x0
	mv x14, x12
	add x12, sp, 4
	lui x15, (65536>>12)&1048575
	mv x13, fp
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _gettemp
	beq x10, fp, .LBB3_1
.LBB3_2:                                //  %entry
	lw x10, 4 ( sp )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB3_1:
	add x10, x0, -1
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end3:
	.size	_mkstemps_r, .Lfunc_end3-_mkstemps_r
	.cfi_endproc
                                        //  -- End function
	.globl	_mkostemp_r             //  -- Begin function _mkostemp_r
	.type	_mkostemp_r,@function
_mkostemp_r:                            //  @_mkostemp_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x0
	and x15, x12, -4
	add x12, sp, 4
	mv x14, fp
	mv x13, fp
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _gettemp
	beq x10, fp, .LBB4_1
.LBB4_2:                                //  %entry
	lw x10, 4 ( sp )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB4_1:
	add x10, x0, -1
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end4:
	.size	_mkostemp_r, .Lfunc_end4-_mkostemp_r
	.cfi_endproc
                                        //  -- End function
	.globl	_mkostemps_r            //  -- Begin function _mkostemps_r
	.type	_mkostemps_r,@function
_mkostemps_r:                           //  @_mkostemps_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x0
	mv x14, x12
	and x15, x13, -4
	add x12, sp, 4
	mv x13, fp
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _gettemp
	beq x10, fp, .LBB5_1
.LBB5_2:                                //  %entry
	lw x10, 4 ( sp )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB5_1:
	add x10, x0, -1
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end5:
	.size	_mkostemps_r, .Lfunc_end5-_mkostemps_r
	.cfi_endproc
                                        //  -- End function
	.globl	_mktemp_r               //  -- Begin function _mktemp_r
	.type	_mktemp_r,@function
_mktemp_r:                              //  @_mktemp_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x0
	mv x14, x9
	mv x13, x9
	mv x12, x9
	mv x15, x9
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv fp, x11
	jal _gettemp
	beq x10, x9, .LBB6_2
.LBB6_1:                                //  %entry
	mv x9, fp
.LBB6_2:                                //  %entry
	mv x10, x9
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end6:
	.size	_mktemp_r, .Lfunc_end6-_mktemp_r
	.cfi_endproc
                                        //  -- End function
	.globl	mkstemp                 //  -- Begin function mkstemp
	.type	mkstemp,@function
mkstemp:                                //  @mkstemp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x0
	add x12, sp, 4
	mv x14, fp
	lui x15, (65536>>12)&1048575
	mv x13, fp
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _gettemp
	beq x10, fp, .LBB7_1
.LBB7_2:                                //  %entry
	lw x10, 4 ( sp )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB7_1:
	add x10, x0, -1
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end7:
	.size	mkstemp, .Lfunc_end7-mkstemp
	.cfi_endproc
                                        //  -- End function
	.globl	mkdtemp                 //  -- Begin function mkdtemp
	.type	mkdtemp,@function
mkdtemp:                                //  @mkdtemp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -112
	.cfi_adjust_cfa_offset 112
	sw x9, 104 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw fp, 84 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -28
	lw fp, 0 ( x10 )
	sw ra, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 96 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x10, fp
	sw x20, 92 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 88 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	jal _getpid_r
	mv x18, x10
	add x21, x9, -1
.LBB8_1:                                //  %for.cond.i
                                        //  =>This Inner Loop Header: Depth=1
	lbu x10, 1 ( x21 )
	add x21, x21, 1
	bltu x0, x10, .LBB8_1
.LBB8_2:                                //  %for.end.i
	bgeu x9, x21, .LBB8_3
.LBB8_4:                                //  %land.rhs.i.preheader
	add x12, x21, -1
	add x19, x0, 10
.LBB8_5:                                //  %land.rhs.i
                                        //  =>This Inner Loop Header: Depth=1
	mv x20, x12
	lbu x11, 0 ( x20 )
	xor x10, x11, 88
	bltu x0, x10, .LBB8_7
.LBB8_6:                                //  %while.body.i
                                        //    in Loop: Header=BB8_5 Depth=1
	mv x10, x18
	mv x11, x19
	jal __udivsi3
	hackaton_custom_instr_c x11, x19, x10
	sub x11, x18, x11
	or x11, x11, 48
	add x12, x20, -1
	mv x18, x10
	sb x11, 0 ( x20 )
	bltu x9, x20, .LBB8_5
.LBB8_7:                                //  %while.end.i
	sub x10, x21, x20
	slti x10, x10, 6
	beq x0, x10, .LBB8_9
.LBB8_8:
	add x18, x0, 22
	jal x0, .LBB8_19
.LBB8_3:
	mv x11, x0
	mv x20, x21
	sub x10, x21, x20
	slti x10, x10, 6
	bltu x0, x10, .LBB8_8
.LBB8_9:                                //  %for.cond15.preheader.i
	add x18, x0, 88
	bgeu x9, x20, .LBB8_19
.LBB8_10:                               //  %if.end19.i.preheader
	and x10, x11, 255
	xor x10, x10, 47
	beq x0, x10, .LBB8_15
.LBB8_11:                               //  %for.inc33.i.preheader
	add x10, x20, -1
.LBB8_12:                               //  %for.inc33.i
                                        //  =>This Inner Loop Header: Depth=1
	bgeu x9, x10, .LBB8_19
.LBB8_13:                               //  %for.inc33.i.if.end19.i_crit_edge
                                        //    in Loop: Header=BB8_12 Depth=1
	lbu x11, 0 ( x10 )
	add x10, x10, -1
	xor x11, x11, 47
	bltu x0, x11, .LBB8_12
.LBB8_14:                               //  %if.then23.i.loopexit
	add x20, x10, 1
.LBB8_15:                               //  %if.then23.i
	add x12, sp, 12
	mv x10, fp
	mv x11, x9
	sb x0, 0 ( x20 )
	jal _stat_r
	bltu x0, x10, .LBB8_20
.LBB8_16:                               //  %if.end27.i
	lbu x10, 17 ( sp )
	and x10, x10, 64
	bltu x0, x10, .LBB8_18
.LBB8_17:
	add x18, x0, 20
	jal x0, .LBB8_19
.LBB8_18:                               //  %if.end31.i
	add x10, x0, 47
	sb x10, 0 ( x20 )
.LBB8_19:                               //  %_gettemp.exit.sink.split
	sw x18, 0 ( fp )
.LBB8_20:                               //  %_gettemp.exit
	lw fp, 84 ( sp )                //  4-byte Folded Reload
	lw x21, 88 ( sp )               //  4-byte Folded Reload
	lw x20, 92 ( sp )               //  4-byte Folded Reload
	lw x19, 96 ( sp )               //  4-byte Folded Reload
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	lw ra, 108 ( sp )               //  4-byte Folded Reload
	mv x10, x0
	add sp, sp, 112
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end8:
	.size	mkdtemp, .Lfunc_end8-mkdtemp
	.cfi_endproc
                                        //  -- End function
	.globl	mkstemps                //  -- Begin function mkstemps
	.type	mkstemps,@function
mkstemps:                               //  @mkstemps
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x14, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x0
	add x12, sp, 4
	lui x15, (65536>>12)&1048575
	mv x13, fp
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _gettemp
	beq x10, fp, .LBB9_1
.LBB9_2:                                //  %entry
	lw x10, 4 ( sp )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB9_1:
	add x10, x0, -1
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end9:
	.size	mkstemps, .Lfunc_end9-mkstemps
	.cfi_endproc
                                        //  -- End function
	.globl	mkostemp                //  -- Begin function mkostemp
	.type	mkostemp,@function
mkostemp:                               //  @mkostemp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x13, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x0
	and x15, x11, -4
	mv x11, x13
	add x12, sp, 4
	mv x14, fp
	mv x13, fp
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _gettemp
	beq x10, fp, .LBB10_1
.LBB10_2:                               //  %entry
	lw x10, 4 ( sp )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB10_1:
	add x10, x0, -1
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end10:
	.size	mkostemp, .Lfunc_end10-mkostemp
	.cfi_endproc
                                        //  -- End function
	.globl	mkostemps               //  -- Begin function mkostemps
	.type	mkostemps,@function
mkostemps:                              //  @mkostemps
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x14, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x0
	and x15, x12, -4
	add x12, sp, 4
	mv x13, fp
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _gettemp
	beq x10, fp, .LBB11_1
.LBB11_2:                               //  %entry
	lw x10, 4 ( sp )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB11_1:
	add x10, x0, -1
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end11:
	.size	mkostemps, .Lfunc_end11-mkostemps
	.cfi_endproc
                                        //  -- End function
	.globl	mktemp                  //  -- Begin function mktemp
	.type	mktemp,@function
mktemp:                                 //  @mktemp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x0
	mv x14, x9
	mv x13, x9
	mv x11, fp
	mv x12, x9
	mv x15, x9
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _gettemp
	beq x10, x9, .LBB12_2
.LBB12_1:                               //  %entry
	mv x9, fp
.LBB12_2:                               //  %entry
	mv x10, x9
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end12:
	.size	mktemp, .Lfunc_end12-mktemp
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
