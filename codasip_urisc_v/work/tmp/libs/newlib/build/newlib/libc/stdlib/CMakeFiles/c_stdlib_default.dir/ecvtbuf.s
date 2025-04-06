	.text
	.file	"ecvtbuf.c"
	.globl	fcvtbuf                 //  -- Begin function fcvtbuf
	.type	fcvtbuf,@function
fcvtbuf:                                //  @fcvtbuf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	mv x21, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	lw x22, 0 ( x10 )
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv fp, x15
	mv x19, x14
	mv x18, x13
	mv x9, x12
	mv x20, x11
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	bltu x0, fp, .LBB0_5
.LBB0_1:                                //  %if.then
	lw fp, 84 ( x22 )
	lw x10, 80 ( x22 )
	add x11, x9, 35
	blt x11, x10, .LBB0_5
.LBB0_2:                                //  %if.then2
	add x23, x9, 36
	mv x10, x22
	mv x11, fp
	mv x12, x23
	jal _realloc_r
	mv fp, x10
	beq x0, fp, .LBB0_3
.LBB0_4:                                //  %if.end
	sw fp, 84 ( x22 )
	sw x23, 80 ( x22 )
.LBB0_5:                                //  %if.end11
	add x13, x0, 3
	add x17, sp, 8
	mv x10, x22
	mv x11, x21
	mv x12, x20
	mv x14, x9
	mv x15, x18
	mv x16, x19
	jal _dtoa_r
	lw x11, 0 ( x18 )
	sub x12, x0, x11
	lw x11, 8 ( sp )
	bgeu x10, x11, .LBB0_6
.LBB0_12:
	mv x11, fp
.LBB0_13:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lb x13, 0 ( x10 )
	add x12, x12, 1
	add x10, x10, 1
	sb x13, 0 ( x11 )
	lw x13, 8 ( sp )
	add x11, x11, 1
	bltu x10, x13, .LBB0_13
.LBB0_7:                                //  %while.cond15.preheader
	blt x12, x9, .LBB0_8
	jal x0, .LBB0_10
.LBB0_6:
	mv x11, fp
	bge x12, x9, .LBB0_10
.LBB0_8:                                //  %while.body17.preheader
	sub x10, x9, x12
	add x12, x0, 48
.LBB0_9:                                //  %while.body17
                                        //  =>This Inner Loop Header: Depth=1
	sb x12, 0 ( x11 )
	add x11, x11, 1
	add x10, x10, -1
	bltu x0, x10, .LBB0_9
.LBB0_10:                               //  %while.end20
	sb x0, 0 ( x11 )
.LBB0_11:                               //  %cleanup
	mv x10, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
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
.LBB0_3:
	mv fp, x0
	jal x0, .LBB0_11
.Lfunc_end0:
	.size	fcvtbuf, .Lfunc_end0-fcvtbuf
	.cfi_endproc
                                        //  -- End function
	.globl	ecvtbuf                 //  -- Begin function ecvtbuf
	.type	ecvtbuf,@function
ecvtbuf:                                //  @ecvtbuf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	mv x21, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	lw x22, 0 ( x10 )
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv fp, x15
	mv x18, x14
	mv x19, x13
	mv x9, x12
	mv x20, x11
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	bltu x0, fp, .LBB1_5
.LBB1_1:                                //  %if.then
	lw fp, 84 ( x22 )
	lw x10, 80 ( x22 )
	blt x9, x10, .LBB1_5
.LBB1_2:                                //  %if.then2
	add x23, x9, 1
	mv x10, x22
	mv x11, fp
	mv x12, x23
	jal _realloc_r
	mv fp, x10
	beq x0, fp, .LBB1_3
.LBB1_4:                                //  %if.end
	sw fp, 84 ( x22 )
	sw x23, 80 ( x22 )
.LBB1_5:                                //  %if.end10
	add x13, x0, 2
	add x17, sp, 8
	mv x10, x22
	mv x11, x21
	mv x12, x20
	mv x14, x9
	mv x15, x19
	mv x16, x18
	jal _dtoa_r
	lw x11, 8 ( sp )
	bgeu x10, x11, .LBB1_6
.LBB1_13:                               //  %while.body.preheader
	mv x11, x0
.LBB1_14:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x13, x11, x10
	lb x13, 0 ( x13 )
	add x12, x11, fp
	add x11, x11, 1
	sb x13, 0 ( x12 )
	lw x13, 8 ( sp )
	add x12, x11, x10
	bltu x12, x13, .LBB1_14
.LBB1_7:                                //  %while.cond14.preheader.loopexit
	add x10, x11, fp
	blt x11, x9, .LBB1_9
	jal x0, .LBB1_11
.LBB1_6:
	mv x11, x0
	mv x10, fp
	bge x11, x9, .LBB1_11
.LBB1_9:                                //  %while.body16.preheader
	sub x11, x9, x11
	add x12, x0, 48
.LBB1_10:                               //  %while.body16
                                        //  =>This Inner Loop Header: Depth=1
	sb x12, 0 ( x10 )
	add x10, x10, 1
	add x11, x11, -1
	bltu x0, x11, .LBB1_10
.LBB1_11:                               //  %while.end19
	sb x0, 0 ( x10 )
.LBB1_12:                               //  %cleanup
	mv x10, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
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
.LBB1_3:
	mv fp, x0
	jal x0, .LBB1_12
.Lfunc_end1:
	.size	ecvtbuf, .Lfunc_end1-ecvtbuf
	.cfi_endproc
                                        //  -- End function
	.globl	_gcvt                   //  -- Begin function _gcvt
	.type	_gcvt,@function
_gcvt:                                  //  @_gcvt
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	mv x19, x12
	mv x20, x11
	mv x23, x0
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	mv x9, x13
	mv x22, x10
	mv x10, x20
	mv x11, x19
	mv x12, x23
	mv x13, x23
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw fp, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv x18, x16
	mv x21, x15
	mv fp, x14
	jal __ltdf2
	bge x10, x23, .LBB2_2
.LBB2_1:
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x19, x10, x19
.LBB2_2:                                //  %entry
	mv x10, x20
	mv x11, x19
	mv x12, x23
	mv x13, x23
	jal __nedf2
	bltu x0, x10, .LBB2_4
.LBB2_3:                                //  %if.then2
	add x10, x0, 48
	sb x10, 0 ( fp )
	sb x0, 1 ( fp )
	jal x0, .LBB2_37
.LBB2_4:                                //  %if.else
	lui x10, %hi( -350469331 )
	add x12, x10, %lo( -350469331 )
	lui x10, %hi( 1058682594 )
	add x13, x10, %lo( 1058682594 )
	mv x10, x20
	mv x11, x19
	jal __ledf2
	bge x0, x10, .LBB2_6
.LBB2_5:                                //  %lor.lhs.false
	mv x10, x9
	jal _mprec_log10
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x19
	jal __gedf2
	bge x10, x0, .LBB2_6
.LBB2_7:                                //  %if.else7
	add x13, x0, 2
	add x15, sp, 24
	add x16, sp, 20
	add x17, sp, 16
	mv x10, x22
	mv x11, x20
	mv x12, x19
	mv x14, x9
	jal _dtoa_r
	lw x13, 24 ( sp )
	mv x11, x10
	lui x10, %hi( 9999 )
	add x10, x10, %lo( 9999 )
	bne x13, x10, .LBB2_8
.LBB2_36:                               //  %if.then10
	mv x10, fp
	jal strcpy
	jal x0, .LBB2_37
.LBB2_6:                                //  %if.then5
	add x14, x9, -1
	mv x10, x22
	mv x11, fp
	mv x12, x20
	mv x13, x19
	mv x15, x21
	mv x16, x18
	jal print_e
.LBB2_37:                               //  %cleanup76
	mv x10, fp
	lw fp, 28 ( sp )                //  4-byte Folded Reload
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
.LBB2_8:                                //  %while.cond.preheader
	lbu x14, 0 ( x11 )
	beq x0, x14, .LBB2_9
.LBB2_32:                               //  %while.cond.preheader
	bge x0, x13, .LBB2_9
.LBB2_33:
	mv x10, fp
.LBB2_34:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	sb x14, 0 ( x10 )
	lw x13, 24 ( sp )
	add x9, x9, -1
	add x10, x10, 1
	add x12, x11, 1
	add x13, x13, -1
	sw x13, 24 ( sp )
	lbu x14, 1 ( x11 )
	beq x0, x14, .LBB2_10
.LBB2_35:                               //  %while.body
                                        //    in Loop: Header=BB2_34 Depth=1
	mv x11, x12
	blt x0, x13, .LBB2_34
	jal x0, .LBB2_10
.LBB2_9:
	mv x10, fp
	mv x12, x11
.LBB2_10:                               //  %while.cond18.preheader
	bge x0, x9, .LBB2_15
.LBB2_11:                               //  %while.cond18.preheader
	bge x0, x13, .LBB2_15
.LBB2_12:
	add x11, x0, 48
.LBB2_13:                               //  %while.body25
                                        //  =>This Inner Loop Header: Depth=1
	sb x11, 0 ( x10 )
	lw x13, 24 ( sp )
	add x10, x10, 1
	add x9, x9, -1
	add x13, x13, -1
	sw x13, 24 ( sp )
	bge x0, x9, .LBB2_15
.LBB2_14:                               //  %while.body25
                                        //    in Loop: Header=BB2_13 Depth=1
	blt x0, x13, .LBB2_13
.LBB2_15:                               //  %while.end29
	bltu x0, x18, .LBB2_17
.LBB2_16:                               //  %lor.lhs.false31
	lbu x11, 0 ( x12 )
	beq x0, x11, .LBB2_31
.LBB2_17:                               //  %if.then34
	bne x10, fp, .LBB2_19
.LBB2_18:                               //  %if.then37
	add x10, x0, 48
	sb x10, 0 ( fp )
	add x10, fp, 1
.LBB2_19:                               //  %if.end39
	add x11, x0, 46
	sb x11, 0 ( x10 )
	lw x11, 24 ( sp )
	add x10, x10, 1
	bge x11, x0, .LBB2_22
.LBB2_20:
	add x11, x0, 48
.LBB2_21:                               //  %while.body44
                                        //  =>This Inner Loop Header: Depth=1
	sb x11, 0 ( x10 )
	lw x13, 24 ( sp )
	add x10, x10, 1
	add x13, x13, 1
	sw x13, 24 ( sp )
	blt x13, x0, .LBB2_21
.LBB2_22:                               //  %while.cond47.preheader
	bge x0, x9, .LBB2_27
.LBB2_23:                               //  %while.cond47.preheader
	lbu x13, 0 ( x12 )
	beq x0, x13, .LBB2_27
.LBB2_24:                               //  %while.body54.preheader
	add x11, x12, 1
.LBB2_25:                               //  %while.body54
                                        //  =>This Inner Loop Header: Depth=1
	sb x13, 0 ( x10 )
	add x10, x10, 1
	add x9, x9, -1
	bge x0, x9, .LBB2_27
.LBB2_26:                               //  %while.body54
                                        //    in Loop: Header=BB2_25 Depth=1
	lbu x13, 0 ( x11 )
	add x12, x11, 1
	mv x11, x12
	bltu x0, x13, .LBB2_25
.LBB2_27:                               //  %while.end58
	beq x0, x18, .LBB2_31
.LBB2_28:                               //  %while.end58
	bge x0, x9, .LBB2_31
.LBB2_29:                               //  %while.body64.preheader
	add x11, x0, 48
.LBB2_30:                               //  %while.body64
                                        //  =>This Inner Loop Header: Depth=1
	sb x11, 0 ( x10 )
	add x10, x10, 1
	add x9, x9, -1
	blt x0, x9, .LBB2_30
.LBB2_31:                               //  %if.end69
	sb x0, 0 ( x10 )
	jal x0, .LBB2_37
.Lfunc_end2:
	.size	_gcvt, .Lfunc_end2-_gcvt
	.cfi_endproc
                                        //  -- End function
	.type	print_e,@function       //  -- Begin function print_e
print_e:                                //  @print_e
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x14
	mv x5, x13
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv x18, x16
	mv fp, x15
	mv x19, x11
	mv x11, x12
	add x14, x9, 1
	add x13, x0, 2
	add x15, sp, 12
	add x16, sp, 20
	add x17, sp, 16
	mv x12, x5
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	jal _dtoa_r
	mv x11, x10
	lw x10, 12 ( sp )
	lui x12, %hi( 9999 )
	add x12, x12, %lo( 9999 )
	bne x10, x12, .LBB3_2
.LBB3_1:                                //  %if.then
	mv x10, x19
	jal strcpy
	jal x0, .LBB3_29
.LBB3_2:                                //  %if.end
	mv x10, x0
	bge x10, x9, .LBB3_4
.LBB3_3:
	seqz x18, x0
.LBB3_4:                                //  %if.end
	lb x12, 0 ( x11 )
	add x20, x19, 1
	sb x12, 0 ( x19 )
	bge x0, x9, .LBB3_14
.LBB3_5:                                //  %if.end
	lbu x12, 1 ( x11 )
	beq x0, x12, .LBB3_14
.LBB3_6:                                //  %while.body.preheader
	beq x0, x18, .LBB3_8
.LBB3_7:                                //  %if.then9.peel
	add x12, x0, 46
	sb x12, 1 ( x19 )
	lbu x12, 1 ( x11 )
	add x20, x19, 2
.LBB3_8:                                //  %if.end11.peel
	sb x12, 0 ( x20 )
	add x20, x20, 1
	add x9, x9, -1
	bge x0, x9, .LBB3_13
.LBB3_9:                                //  %if.end11.peel
	lbu x12, 2 ( x11 )
	beq x0, x12, .LBB3_13
.LBB3_10:                               //  %while.body.preheader1
	add x11, x11, 3
.LBB3_11:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	sb x12, 0 ( x20 )
	add x20, x20, 1
	add x9, x9, -1
	bge x0, x9, .LBB3_13
.LBB3_12:                               //  %while.body
                                        //    in Loop: Header=BB3_11 Depth=1
	lbu x12, 0 ( x11 )
	add x13, x11, 1
	mv x11, x13
	bltu x0, x12, .LBB3_11
.LBB3_13:
	mv x18, x10
.LBB3_14:                               //  %while.end
	xor x10, fp, 71
	beq x0, x10, .LBB3_30
.LBB3_15:                               //  %while.end
	xor x10, fp, 103
	bltu x0, x10, .LBB3_17
.LBB3_16:
	add fp, x0, 101
	jal x0, .LBB3_22
.LBB3_30:                               //  %if.then21
	add fp, x0, 69
	jal x0, .LBB3_22
.LBB3_17:                               //  %while.cond23.preheader
	bge x0, x9, .LBB3_22
.LBB3_18:                               //  %while.body26.peel
	beq x0, x18, .LBB3_20
.LBB3_19:                               //  %if.then28.peel
	add x10, x0, 46
	sb x10, 0 ( x20 )
	add x20, x20, 1
.LBB3_20:                               //  %if.end30.peel
	add x10, x0, 48
	sb x10, 0 ( x20 )
	add x20, x20, 1
	add x11, x9, -1
	bge x0, x11, .LBB3_22
.LBB3_21:                               //  %while.body26
                                        //  =>This Inner Loop Header: Depth=1
	sb x10, 0 ( x20 )
	add x20, x20, 1
	add x11, x11, -1
	blt x0, x11, .LBB3_21
.LBB3_22:                               //  %if.end35
	sb fp, 0 ( x20 )
	lw x10, 12 ( sp )
	add x11, x10, -1
	sw x11, 12 ( sp )
	bge x0, x10, .LBB3_23
.LBB3_24:                               //  %if.else42
	add x10, x0, 43
	sb x10, 1 ( x20 )
	lw x10, 12 ( sp )
	slti x11, x10, 100
	bltu x0, x11, .LBB3_26
.LBB3_27:                               //  %if.then47
	add x11, x0, 100
	jal __udivsi3
	add x11, x10, 48
	sb x11, 2 ( x20 )
	add x11, x0, -100
	jal __mulsi3
	lw x11, 12 ( sp )
	add fp, x20, 3
	add x10, x10, x11
	sw x10, 12 ( sp )
	jal x0, .LBB3_28
.LBB3_23:                               //  %if.then40
	add x10, x0, 45
	sb x10, 1 ( x20 )
	lw x10, 12 ( sp )
	sub x10, x0, x10
	sw x10, 12 ( sp )
	slti x11, x10, 100
	beq x0, x11, .LBB3_27
.LBB3_26:
	add fp, x20, 2
.LBB3_28:                               //  %if.end53
	add x11, x0, 10
	jal __divsi3
	add x11, x10, 48
	sb x11, 0 ( fp )
	add x11, x0, -10
	jal __mulsi3
	lw x11, 12 ( sp )
	add x10, x10, x11
	sw x10, 12 ( sp )
	add x10, x10, 48
	sb x10, 1 ( fp )
	sb x0, 2 ( fp )
.LBB3_29:                               //  %cleanup
	lw fp, 24 ( sp )                //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end3:
	.size	print_e, .Lfunc_end3-print_e
	.cfi_endproc
                                        //  -- End function
	.globl	_dcvt                   //  -- Begin function _dcvt
	.type	_dcvt,@function
_dcvt:                                  //  @_dcvt
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
	sw fp, 16 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv x9, x14
	mv fp, x11
	mv x18, x17
	add x11, x16, -69
	add x14, x0, 34
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x14, x11, .LBB4_37
.LBB4_1:                                //  %entry
	lui x14, %hi( JTI4_0 )
	sll x11, x11, 2&31
	add x14, x14, %lo( JTI4_0 )
	add x11, x14, x11
	lw x11, 0 ( x11 )
	jr x11
.LBB4_36:                               //  %sw.bb5
	mv x15, x16
	mv x11, fp
	mv x14, x9
	mv x16, x18
	jal print_e
	jal x0, .LBB4_37
.LBB4_2:                                //  %sw.bb
	add x14, x0, 3
	mv x11, x12
	mv x12, x13
	mv x13, x14
	add x15, sp, 12
	add x16, sp, 8
	add x17, sp, 4
	mv x14, x9
	jal _dtoa_r
	lw x13, 12 ( sp )
	mv x11, x10
	lui x10, %hi( 9999 )
	add x10, x10, %lo( 9999 )
	bne x13, x10, .LBB4_3
.LBB4_32:                               //  %if.then.i
	mv x10, fp
	jal strcpy
	jal x0, .LBB4_37
.LBB4_33:                               //  %sw.bb2
	mv x11, x0
	bne x9, x11, .LBB4_35
.LBB4_34:
	seqz x9, x0
.LBB4_35:                               //  %sw.bb2
	mv x11, x12
	mv x12, x13
	mv x15, x16
	mv x13, x9
	mv x14, fp
	mv x16, x18
	jal _gcvt
	jal x0, .LBB4_37
.LBB4_3:                                //  %while.cond.preheader.i
	bge x0, x13, .LBB4_4
.LBB4_28:                               //  %while.cond.preheader.i
	lbu x14, 0 ( x11 )
	mv x12, x11
	mv x10, fp
	beq x0, x14, .LBB4_5
.LBB4_29:
	mv x10, fp
	mv x15, x11
.LBB4_30:                               //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	sb x14, 0 ( x10 )
	lw x13, 12 ( sp )
	add x10, x10, 1
	add x12, x15, 1
	add x13, x13, -1
	sw x13, 12 ( sp )
	bge x0, x13, .LBB4_5
.LBB4_31:                               //  %while.body.i
                                        //    in Loop: Header=BB4_30 Depth=1
	lbu x14, 1 ( x15 )
	mv x15, x12
	bltu x0, x14, .LBB4_30
	jal x0, .LBB4_5
.LBB4_4:
	mv x12, x11
	mv x10, fp
.LBB4_5:                                //  %while.cond5.preheader.i
	bge x0, x13, .LBB4_8
.LBB4_6:
	add x14, x0, 48
.LBB4_7:                                //  %while.body8.i
                                        //  =>This Inner Loop Header: Depth=1
	sb x14, 0 ( x10 )
	lw x13, 12 ( sp )
	add x10, x10, 1
	add x13, x13, -1
	sw x13, 12 ( sp )
	blt x0, x13, .LBB4_7
.LBB4_8:                                //  %while.end11.i
	or x14, x9, x18
	bltu x0, x14, .LBB4_10
.LBB4_9:                                //  %lor.lhs.false.i
	lbu x14, 0 ( x12 )
	beq x0, x14, .LBB4_27
.LBB4_10:                               //  %if.then15.i
	bne x12, x11, .LBB4_12
.LBB4_11:                               //  %if.then18.i
	add x11, x0, 48
	sb x11, 0 ( x10 )
	lw x13, 12 ( sp )
	add x10, x10, 1
.LBB4_12:                               //  %if.end20.i
	bge x0, x9, .LBB4_15
.LBB4_13:                               //  %if.end20.i
	bge x13, x0, .LBB4_15
.LBB4_14:                               //  %if.then25.i
	add x11, x0, 46
	sb x11, 0 ( x10 )
	lw x13, 12 ( sp )
	add x10, x10, 1
.LBB4_15:                               //  %if.end27.i
	bge x0, x9, .LBB4_20
.LBB4_16:                               //  %if.end27.i
	bge x13, x0, .LBB4_20
.LBB4_17:
	add x11, x0, 48
.LBB4_18:                               //  %while.body35.i
                                        //  =>This Inner Loop Header: Depth=1
	sb x11, 0 ( x10 )
	lw x13, 12 ( sp )
	add x10, x10, 1
	add x9, x9, -1
	add x13, x13, 1
	sw x13, 12 ( sp )
	bge x0, x9, .LBB4_20
.LBB4_19:                               //  %while.body35.i
                                        //    in Loop: Header=BB4_18 Depth=1
	blt x13, x0, .LBB4_18
.LBB4_20:                               //  %while.cond39.preheader.i
	bge x0, x9, .LBB4_24
.LBB4_21:                               //  %while.cond39.preheader.i
	lbu x13, 0 ( x12 )
	beq x0, x13, .LBB4_24
.LBB4_22:                               //  %while.body46.i.preheader
	add x11, x12, 1
.LBB4_23:                               //  %while.body46.i
                                        //  =>This Inner Loop Header: Depth=1
	sb x13, 0 ( x10 )
	add x10, x10, 1
	add x9, x9, -1
	bge x0, x9, .LBB4_24
.LBB4_38:                               //  %while.body46.i
                                        //    in Loop: Header=BB4_23 Depth=1
	lbu x13, 0 ( x11 )
	add x12, x11, 1
	mv x11, x12
	bltu x0, x13, .LBB4_23
.LBB4_24:                               //  %while.cond51.preheader.i
	bge x0, x9, .LBB4_27
.LBB4_25:
	add x11, x0, 48
.LBB4_26:                               //  %while.body54.i
                                        //  =>This Inner Loop Header: Depth=1
	sb x11, 0 ( x10 )
	add x10, x10, 1
	add x9, x9, -1
	blt x0, x9, .LBB4_26
.LBB4_27:                               //  %if.end58.i
	sb x0, 0 ( x10 )
.LBB4_37:                               //  %sw.epilog
	mv x10, fp
	lw fp, 16 ( sp )                //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end4:
	.size	_dcvt, .Lfunc_end4-_dcvt
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI4_0:
	.long	.LBB4_36
	.long	.LBB4_2
	.long	.LBB4_33
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_37
	.long	.LBB4_36
	.long	.LBB4_2
	.long	.LBB4_33
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
