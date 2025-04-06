	.text
	.file	"memmem.c"
	.globl	memmem                  //  -- Begin function memmem
	.type	memmem,@function
memmem:                                 //  @memmem
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -320
	.cfi_adjust_cfa_offset 320
	sw x9, 312 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20, 300 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 268 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x12
	mv x20, x13
	mv x12, x11
	mv x9, x10
	sw ra, 316 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 308 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 304 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 296 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 292 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 288 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 284 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 280 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 276 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 272 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	beq x0, x20, .LBB0_40
.LBB0_1:                                //  %entry
	xor x10, x20, 1
	bltu x0, x10, .LBB0_4
.LBB0_2:                                //  %if.then2
	lbu x11, 0 ( fp )
	mv x10, x9
	jal memchr
.LBB0_3:                                //  %cleanup133
	mv x9, x10
	jal x0, .LBB0_40
.LBB0_4:                                //  %if.end3
	bltu x12, x20, .LBB0_5
.LBB0_6:                                //  %if.end7
	sub x13, x12, x20
	add x22, x13, x9
	xor x10, x20, 2
	bltu x0, x10, .LBB0_15
.LBB0_7:                                //  %if.then11
	lbu x11, 0 ( x9 )
	lbu x10, 1 ( x9 )
	lbu x12, 0 ( fp )
	sll x11, x11, 16&31
	or x10, x10, x11
	lbu x11, 1 ( fp )
	sll x12, x12, 16&31
	or x11, x11, x12
	beq x10, x11, .LBB0_13
.LBB0_8:                                //  %if.then11
	bge x0, x13, .LBB0_13
.LBB0_9:                                //  %for.body.preheader
	add x12, x9, 2
.LBB0_10:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x13, x12
	lbu x12, 0 ( x13 )
	sll x10, x10, 16&31
	or x10, x12, x10
	add x12, x13, 1
	beq x10, x11, .LBB0_12
.LBB0_11:                               //  %for.body
                                        //    in Loop: Header=BB0_10 Depth=1
	bgeu x22, x13, .LBB0_10
.LBB0_12:                               //  %for.end.loopexit
	add x9, x12, -2
.LBB0_13:                               //  %for.end
	beq x10, x11, .LBB0_40
.LBB0_5:
	mv x9, x0
.LBB0_40:                               //  %cleanup133
	mv x10, x9
	lw fp, 268 ( sp )               //  4-byte Folded Reload
	lw x27, 272 ( sp )              //  4-byte Folded Reload
	lw x26, 276 ( sp )              //  4-byte Folded Reload
	lw x25, 280 ( sp )              //  4-byte Folded Reload
	lw x24, 284 ( sp )              //  4-byte Folded Reload
	lw x23, 288 ( sp )              //  4-byte Folded Reload
	lw x22, 292 ( sp )              //  4-byte Folded Reload
	lw x21, 296 ( sp )              //  4-byte Folded Reload
	lw x20, 300 ( sp )              //  4-byte Folded Reload
	lw x19, 304 ( sp )              //  4-byte Folded Reload
	lw x18, 308 ( sp )              //  4-byte Folded Reload
	lw x9, 312 ( sp )               //  4-byte Folded Reload
	lw ra, 316 ( sp )               //  4-byte Folded Reload
	add sp, sp, 320
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_15:                               //  %if.end33
	sltiu x10, x20, 257
	beq x0, x10, .LBB0_41
.LBB0_16:                               //  %for.body43.preheader
	add x18, sp, 12
	mv x21, x0
	add x12, x0, 256
	mv x10, x18
	mv x11, x21
	jal memset
	add x10, x20, -2
	add x19, x20, -1
.LBB0_17:                               //  %for.body43
                                        //  =>This Inner Loop Header: Depth=1
	add x11, x21, fp
	lb x12, 1 ( x11 )
	lb x11, 0 ( x11 )
	add x21, x21, 1
	sll x11, x11, 3&31
	sub x11, x12, x11
	and x11, x11, 255
	add x11, x11, x18
	sb x21, 0 ( x11 )
	bne x10, x21, .LBB0_17
.LBB0_18:                               //  %for.end54
	add x10, x19, fp
	lb x11, 0 ( x10 )
	lb x10, -1 ( x10 )
	sll x10, x10, 3&31
	sub x10, x11, x10
	and x10, x10, 255
	add x11, x10, x18
	lbu x10, 0 ( x11 )
	sb x19, 0 ( x11 )
	sltiu x11, x19, 16
	beq x0, x11, .LBB0_27
.LBB0_19:                               //  %for.cond78.us.preheader
	add x23, x20, -1
	sub x21, x19, x10
	mv x20, x0
.LBB0_20:                               //  %for.cond78.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_21 Depth 2
	mv x24, x9
	bltu x22, x9, .LBB0_26
.LBB0_21:                               //  %do.body.us
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x23, x24
	lb x11, -1 ( x10 )
	lb x12, 0 ( x10 )
	add x24, x19, x24
	sll x11, x11, 3&31
	sub x11, x12, x11
	and x11, x11, 255
	add x11, x11, x18
	lbu x25, 0 ( x11 )
	bltu x22, x10, .LBB0_23
.LBB0_22:                               //  %do.body.us
                                        //    in Loop: Header=BB0_21 Depth=2
	beq x0, x25, .LBB0_21
.LBB0_23:                               //  %do.end.us
                                        //    in Loop: Header=BB0_21 Depth=2
	sub x9, x24, x25
	bltu x25, x19, .LBB0_20
.LBB0_24:                               //  %if.then111.us
                                        //    in Loop: Header=BB0_21 Depth=2
	mv x10, x9
	mv x11, fp
	mv x12, x19
	jal memcmp
	beq x0, x10, .LBB0_40
.LBB0_25:                               //  %if.end116.us
                                        //    in Loop: Header=BB0_21 Depth=2
	sub x10, x0, x25
	add x11, x21, x24
	add x9, x10, x11
	mv x24, x9
	bgeu x22, x9, .LBB0_21
.LBB0_26:
	mv x9, x20
	jal x0, .LBB0_40
.LBB0_27:                               //  %for.cond78.outer.preheader
	mv x13, x0
	sub x24, x20, x10
	add x25, x20, -1
	add x12, x0, 4
	mv x27, x13
	bgeu x22, x9, .LBB0_30
	jal x0, .LBB0_39
.LBB0_28:                               //  %do.end
                                        //    in Loop: Header=BB0_30 Depth=1
	sub x23, x26, x21
	add x9, x23, 1
	bgeu x21, x19, .LBB0_33
.LBB0_29:                               //  %for.cond78
                                        //    in Loop: Header=BB0_30 Depth=1
	bltu x22, x9, .LBB0_39
.LBB0_30:                               //  %do.body.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_31 Depth 2
	add x26, x9, -1
.LBB0_31:                               //  %do.body
                                        //    Parent Loop BB0_30 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x20, x26
	lb x11, -1 ( x10 )
	lb x15, 0 ( x10 )
	add x26, x25, x26
	sll x11, x11, 3&31
	sub x11, x15, x11
	and x11, x11, 255
	add x11, x11, x18
	lbu x21, 0 ( x11 )
	bltu x22, x10, .LBB0_28
.LBB0_32:                               //  %do.body
                                        //    in Loop: Header=BB0_31 Depth=2
	beq x0, x21, .LBB0_31
	jal x0, .LBB0_28
.LBB0_33:                               //  %lor.lhs.false
                                        //    in Loop: Header=BB0_30 Depth=1
	sub x10, x27, x21
	add x10, x10, x26
	add x11, x27, fp
	add x10, x10, 1
	jal memcmp
	bltu x0, x10, .LBB0_38
.LBB0_34:                               //  %if.then111
                                        //    in Loop: Header=BB0_30 Depth=1
	add x9, x23, 1
	mv x10, x9
	mv x11, fp
	mv x12, x19
	jal memcmp
	beq x0, x10, .LBB0_40
.LBB0_35:                               //  %if.end116
                                        //    in Loop: Header=BB0_30 Depth=1
	add x10, x0, 3
	bltu x10, x27, .LBB0_37
.LBB0_36:                               //  %if.end116
                                        //    in Loop: Header=BB0_30 Depth=1
	mv x27, x19
.LBB0_37:                               //  %if.end116
                                        //    in Loop: Header=BB0_30 Depth=1
	add x27, x27, -4
.LBB0_38:                               //  %if.end124
                                        //    in Loop: Header=BB0_30 Depth=1
	add x10, x24, x26
	mv x13, x0
	add x12, x0, 4
	sub x9, x10, x21
	bgeu x22, x9, .LBB0_30
.LBB0_39:
	mv x9, x13
	jal x0, .LBB0_40
.LBB0_41:                               //  %if.then36
	mv x11, x12
	mv x10, x9
	mv x12, fp
	mv x13, x20
	jal two_way_long_needle
	jal x0, .LBB0_3
.Lfunc_end0:
	.size	memmem, .Lfunc_end0-memmem
	.cfi_endproc
                                        //  -- End function
	.type	two_way_long_needle,@function //  -- Begin function two_way_long_needle
two_way_long_needle:                    //  @two_way_long_needle
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -1072
	.cfi_adjust_cfa_offset 1072
	sw x19, 1056 ( sp )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x13
	sw x9, 1064 ( sp )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20, 1052 ( sp )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 1040 ( sp )              //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv fp, x10
	mv x9, x12
	mv x20, x11
	sltiu x10, x19, 2
	sw ra, 1068 ( sp )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 1060 ( sp )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21, 1048 ( sp )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 1044 ( sp )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	bltu x0, x10, .LBB1_1
.LBB1_2:                                //  %while.body.i.preheader
	seqz x11, x0
	add x10, x0, -1
	mv x12, x0
	mv x13, x11
	mv x21, x11
	mv x14, x11
	jal x0, .LBB1_3
.LBB1_4:                                //  %if.then.i
                                        //    in Loop: Header=BB1_3 Depth=1
	sub x21, x14, x10
	mv x12, x14
	mv x13, x11
	add x14, x12, x13
	bgeu x14, x19, .LBB1_12
.LBB1_3:                                //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	add x15, x13, x10
	add x16, x14, x9
	add x15, x15, x9
	lbu x15, 0 ( x15 )
	lbu x16, 0 ( x16 )
	bltu x16, x15, .LBB1_4
.LBB1_5:                                //  %if.else.i
                                        //    in Loop: Header=BB1_3 Depth=1
	bne x16, x15, .LBB1_9
.LBB1_6:                                //  %if.then12.i
                                        //    in Loop: Header=BB1_3 Depth=1
	bne x13, x21, .LBB1_7
.LBB1_8:                                //  %if.else16.i
                                        //    in Loop: Header=BB1_3 Depth=1
	add x12, x21, x12
	mv x13, x11
	add x14, x12, x13
	bltu x14, x19, .LBB1_3
	jal x0, .LBB1_12
.LBB1_9:                                //  %if.else18.i
                                        //    in Loop: Header=BB1_3 Depth=1
	add x13, x12, 1
	mv x21, x11
	mv x10, x12
	mv x12, x13
	mv x13, x11
	add x14, x12, x13
	bltu x14, x19, .LBB1_3
	jal x0, .LBB1_12
.LBB1_7:                                //  %if.then15.i
                                        //    in Loop: Header=BB1_3 Depth=1
	add x13, x13, 1
	add x14, x12, x13
	bltu x14, x19, .LBB1_3
.LBB1_12:                               //  %while.body26.i.preheader
	seqz x13, x0
	add x11, x0, -1
	mv x14, x0
	mv x15, x13
	mv x12, x13
	mv x16, x13
	jal x0, .LBB1_13
.LBB1_14:                               //  %if.then35.i
                                        //    in Loop: Header=BB1_13 Depth=1
	sub x12, x16, x11
	mv x14, x16
	mv x15, x13
	add x16, x14, x15
	bgeu x16, x19, .LBB1_22
.LBB1_13:                               //  %while.body26.i
                                        //  =>This Inner Loop Header: Depth=1
	add x17, x15, x11
	add x5, x16, x9
	add x17, x17, x9
	lbu x17, 0 ( x17 )
	lbu x5, 0 ( x5 )
	bltu x17, x5, .LBB1_14
.LBB1_15:                               //  %if.else38.i
                                        //    in Loop: Header=BB1_13 Depth=1
	bne x5, x17, .LBB1_19
.LBB1_16:                               //  %if.then43.i
                                        //    in Loop: Header=BB1_13 Depth=1
	bne x15, x12, .LBB1_17
.LBB1_18:                               //  %if.else48.i
                                        //    in Loop: Header=BB1_13 Depth=1
	add x14, x12, x14
	mv x15, x13
	add x16, x14, x15
	bltu x16, x19, .LBB1_13
	jal x0, .LBB1_22
.LBB1_19:                               //  %if.else51.i
                                        //    in Loop: Header=BB1_13 Depth=1
	add x15, x14, 1
	mv x12, x13
	mv x11, x14
	mv x14, x15
	mv x15, x13
	add x16, x14, x15
	bltu x16, x19, .LBB1_13
	jal x0, .LBB1_22
.LBB1_17:                               //  %if.then46.i
                                        //    in Loop: Header=BB1_13 Depth=1
	add x15, x15, 1
	add x16, x14, x15
	bltu x16, x19, .LBB1_13
	jal x0, .LBB1_22
.LBB1_1:
	add x10, x0, -1
	seqz x21, x0
	mv x11, x10
	mv x12, x21
.LBB1_22:                               //  %while.end55.i
	add x18, x10, 1
	add x10, x11, 1
	bltu x10, x18, .LBB1_24
.LBB1_23:                               //  %while.end55.i
	mv x21, x12
.LBB1_24:                               //  %while.end55.i
	mv x11, x0
	add x22, sp, 16
.LBB1_25:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x12, x11, x22
	add x11, x11, 4
	sw x19, 0 ( x12 )
	xor x12, x11, 1024
	bltu x0, x12, .LBB1_25
.LBB1_26:                               //  %for.cond1.preheader
	bltu x10, x18, .LBB1_28
.LBB1_27:                               //  %for.cond1.preheader
	mv x18, x10
.LBB1_28:                               //  %for.cond1.preheader
	beq x0, x19, .LBB1_31
.LBB1_29:                               //  %for.body3.preheader
	add x10, x19, -1
	mv x11, x9
.LBB1_30:                               //  %for.body3
                                        //  =>This Inner Loop Header: Depth=1
	lbu x12, 0 ( x11 )
	add x11, x11, 1
	sll x12, x12, 2&31
	add x12, x12, x22
	sw x10, 0 ( x12 )
	add x10, x10, -1
	xor x12, x10, -1
	bltu x0, x12, .LBB1_30
.LBB1_31:                               //  %for.end9
	add x11, x21, x9
	mv x10, x9
	mv x12, x18
	jal memcmp
	beq x0, x10, .LBB1_32
.LBB1_51:                               //  %if.else72
	sub x11, x19, x18
	bltu x18, x11, .LBB1_53
.LBB1_52:                               //  %if.else72
	mv x11, x18
.LBB1_53:                               //  %if.else72
	sub x12, x20, x19
	mv x10, x0
	add x13, x19, -1
	bgeu x18, x13, .LBB1_54
.LBB1_60:                               //  %while.body87.us.preheader
	add x15, x18, x9
	add x16, x9, -1
	add x17, fp, -1
	mv x14, x10
	jal x0, .LBB1_61
.LBB1_70:                               //  %if.then95.us
                                        //    in Loop: Header=BB1_61 Depth=1
	add x14, x14, x5
	bltu x12, x14, .LBB1_75
.LBB1_61:                               //  %while.body87.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_63 Depth 2
                                        //      Child Loop BB1_66 Depth 2
	add x5, x14, x13
	add x5, x5, fp
	lbu x5, 0 ( x5 )
	sll x5, x5, 2&31
	add x5, x5, x22
	lw x5, 0 ( x5 )
	bltu x0, x5, .LBB1_70
.LBB1_62:                               //  %land.rhs102.us.preheader
                                        //    in Loop: Header=BB1_61 Depth=1
	add x5, x14, fp
	add x6, x18, x5
	mv x5, x10
.LBB1_63:                               //  %land.rhs102.us
                                        //    Parent Loop BB1_61 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x7, x5, x15
	add x28, x5, x6
	lbu x28, 0 ( x28 )
	lbu x7, 0 ( x7 )
	bne x7, x28, .LBB1_69
.LBB1_64:                               //  %while.body111.us
                                        //    in Loop: Header=BB1_63 Depth=2
	add x5, x5, 1
	add x7, x5, x18
	bltu x7, x13, .LBB1_63
.LBB1_65:                               //  %while.cond119.us.preheader
                                        //    in Loop: Header=BB1_61 Depth=1
	add x5, x14, x17
	mv x6, x18
.LBB1_66:                               //  %while.cond119.us
                                        //    Parent Loop BB1_61 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beq x0, x6, .LBB1_74
.LBB1_67:                               //  %land.rhs122.us
                                        //    in Loop: Header=BB1_66 Depth=2
	add x28, x6, x16
	add x7, x6, -1
	add x6, x6, x5
	lbu x29, 0 ( x6 )
	lbu x28, 0 ( x28 )
	mv x6, x7
	beq x28, x29, .LBB1_66
.LBB1_68:                               //    in Loop: Header=BB1_61 Depth=1
	mv x5, x11
.LBB1_69:                               //  %if.end144.us
                                        //    in Loop: Header=BB1_61 Depth=1
	add x14, x5, x14
	add x14, x14, 1
	bgeu x12, x14, .LBB1_61
	jal x0, .LBB1_75
.LBB1_32:                               //  %while.cond.preheader
	seqz x10, x0
	sub x11, x10, x18
	mv x10, x0
	mv x12, x10
	add x13, x9, -1
	add x14, fp, -1
	sub x15, x20, x19
	add x16, x19, -1
	sub x17, x19, x21
	mv x5, x10
	jal x0, .LBB1_33
.LBB1_76:                               //  %if.else
                                        //    in Loop: Header=BB1_33 Depth=1
	add x6, x6, x11
.LBB1_38:                               //  %if.then19
                                        //    in Loop: Header=BB1_33 Depth=1
	mv x5, x10
.LBB1_39:                               //  %while.cond.backedge
                                        //    in Loop: Header=BB1_33 Depth=1
	add x12, x12, x6
	bltu x15, x12, .LBB1_75
.LBB1_33:                               //  %while.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_44 Depth 2
                                        //      Child Loop BB1_47 Depth 2
	add x6, x12, x16
	add x6, x6, fp
	lbu x6, 0 ( x6 )
	sll x6, x6, 2&31
	add x6, x6, x22
	lw x6, 0 ( x6 )
	beq x0, x6, .LBB1_40
.LBB1_34:                               //  %if.then19
                                        //    in Loop: Header=BB1_33 Depth=1
	mv x7, x17
	bltu x6, x21, .LBB1_36
.LBB1_35:                               //  %if.then19
                                        //    in Loop: Header=BB1_33 Depth=1
	mv x7, x6
.LBB1_36:                               //  %if.then19
                                        //    in Loop: Header=BB1_33 Depth=1
	beq x5, x10, .LBB1_38
.LBB1_37:                               //  %if.then19
                                        //    in Loop: Header=BB1_33 Depth=1
	mv x6, x7
	jal x0, .LBB1_38
.LBB1_40:                               //  %if.end24
                                        //    in Loop: Header=BB1_33 Depth=1
	mv x6, x5
	bltu x18, x5, .LBB1_42
.LBB1_41:                               //  %if.end24
                                        //    in Loop: Header=BB1_33 Depth=1
	mv x6, x18
.LBB1_42:                               //  %if.end24
                                        //    in Loop: Header=BB1_33 Depth=1
	bgeu x6, x16, .LBB1_46
.LBB1_43:                               //  %land.rhs.preheader
                                        //    in Loop: Header=BB1_33 Depth=1
	add x7, x12, fp
.LBB1_44:                               //  %land.rhs
                                        //    Parent Loop BB1_33 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x28, x6, x9
	add x29, x6, x7
	lbu x29, 0 ( x29 )
	lbu x28, 0 ( x28 )
	bne x28, x29, .LBB1_76
.LBB1_45:                               //  %while.body35
                                        //    in Loop: Header=BB1_44 Depth=2
	add x6, x6, 1
	bltu x6, x16, .LBB1_44
.LBB1_46:                               //  %while.cond42.preheader
                                        //    in Loop: Header=BB1_33 Depth=1
	add x6, x12, x14
	mv x28, x18
.LBB1_47:                               //  %while.cond42
                                        //    Parent Loop BB1_33 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x7, x28
	bgeu x5, x7, .LBB1_49
.LBB1_48:                               //  %land.rhs46
                                        //    in Loop: Header=BB1_47 Depth=2
	add x29, x7, x13
	add x30, x7, x6
	lbu x30, 0 ( x30 )
	lbu x29, 0 ( x29 )
	add x28, x7, -1
	beq x29, x30, .LBB1_47
.LBB1_49:                               //  %while.end56
                                        //    in Loop: Header=BB1_33 Depth=1
	add x28, x5, 1
	mv x6, x21
	mv x5, x17
	bgeu x7, x28, .LBB1_39
.LBB1_50:                               //  %cleanup
	add x10, x12, fp
	jal x0, .LBB1_75
.LBB1_54:                               //  %while.body87.preheader
	add x15, x9, -1
	add x16, fp, -1
	mv x14, x10
	jal x0, .LBB1_55
.LBB1_72:                               //  %if.then95
                                        //    in Loop: Header=BB1_55 Depth=1
	add x14, x14, x17
	bltu x12, x14, .LBB1_75
.LBB1_55:                               //  %while.body87
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_57 Depth 2
	add x17, x14, x13
	add x17, x17, fp
	lbu x17, 0 ( x17 )
	sll x17, x17, 2&31
	add x17, x17, x22
	lw x17, 0 ( x17 )
	bltu x0, x17, .LBB1_72
.LBB1_56:                               //  %while.cond119.preheader
                                        //    in Loop: Header=BB1_55 Depth=1
	add x17, x14, x16
	mv x5, x18
.LBB1_57:                               //  %while.cond119
                                        //    Parent Loop BB1_55 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beq x0, x5, .LBB1_74
.LBB1_58:                               //  %land.rhs122
                                        //    in Loop: Header=BB1_57 Depth=2
	add x7, x5, x15
	add x6, x5, -1
	add x5, x5, x17
	lbu x28, 0 ( x5 )
	lbu x7, 0 ( x7 )
	mv x5, x6
	beq x7, x28, .LBB1_57
.LBB1_59:                               //  %if.end144
                                        //    in Loop: Header=BB1_55 Depth=1
	add x14, x11, x14
	add x14, x14, 1
	bgeu x12, x14, .LBB1_55
	jal x0, .LBB1_75
.LBB1_74:                               //  %cleanup146
	add x10, x14, fp
.LBB1_75:                               //  %cleanup150
	lw fp, 1040 ( sp )              //  4-byte Folded Reload
	lw x22, 1044 ( sp )             //  4-byte Folded Reload
	lw x21, 1048 ( sp )             //  4-byte Folded Reload
	lw x20, 1052 ( sp )             //  4-byte Folded Reload
	lw x19, 1056 ( sp )             //  4-byte Folded Reload
	lw x18, 1060 ( sp )             //  4-byte Folded Reload
	lw x9, 1064 ( sp )              //  4-byte Folded Reload
	lw ra, 1068 ( sp )              //  4-byte Folded Reload
	add sp, sp, 1072
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	two_way_long_needle, .Lfunc_end1-two_way_long_needle
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
