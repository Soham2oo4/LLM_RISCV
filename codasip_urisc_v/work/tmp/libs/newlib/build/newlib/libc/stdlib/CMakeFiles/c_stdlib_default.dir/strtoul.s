	.text
	.file	"strtoul.c"
	.globl	_strtoul_r              //  -- Begin function _strtoul_r
	.type	_strtoul_r,@function
_strtoul_r:                             //  @_strtoul_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	j _strtoul_l
.Lfunc_end0:
	.size	_strtoul_r, .Lfunc_end0-_strtoul_r
	.cfi_endproc
                                        //  -- End function
	.type	_strtoul_l,@function    //  -- Begin function _strtoul_l
_strtoul_l:                             //  @_strtoul_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	lui x11, %hi( _ctype_ )
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x12
	add x11, x11, %lo( _ctype_ )
	mv x14, x9
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
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
.LBB1_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x23, 0 ( x14 )
	add x14, x14, 1
	add x12, x23, x11
	lbu x12, 1 ( x12 )
	and x12, x12, 8
	bltu x0, x12, .LBB1_1
.LBB1_2:                                //  %do.end
	xor x11, x23, 43
	beq x0, x11, .LBB1_6
.LBB1_3:                                //  %do.end
	xor x11, x23, 45
	bltu x0, x11, .LBB1_5
.LBB1_4:
	seqz x22, x0
	jal x0, .LBB1_7
.LBB1_6:                                //  %if.then7
	mv x22, x0
.LBB1_7:                                //  %if.end10.sink.split
	lbu x23, 0 ( x14 )
	add x24, x14, 1
	and x12, x13, -17
	xor x11, x23, 48
	sw x10, 8 ( sp )                //  4-byte Folded Spill
	bltu x0, x12, .LBB1_14
.LBB1_9:                                //  %if.end10
	bltu x0, x11, .LBB1_14
.LBB1_10:                               //  %land.lhs.true17
	lbu x11, 0 ( x24 )
	or x11, x11, 32
	xor x11, x11, 120
	bltu x0, x11, .LBB1_11
.LBB1_13:                               //  %if.end29.thread
	lbu x23, 1 ( x24 )
	add x10, x24, 2
	add x19, x0, 16
	mv x24, x10
	jal x0, .LBB1_18
.LBB1_5:                                //  %do.end.if.end10_crit_edge
	mv x22, x0
	mv x24, x14
	and x12, x13, -17
	xor x11, x23, 48
	sw x10, 8 ( sp )                //  4-byte Folded Spill
	beq x0, x12, .LBB1_9
.LBB1_14:                               //  %if.end29
	seqz x12, x13
	beq x0, x11, .LBB1_12
.LBB1_15:
	add x19, x0, 10
	beq x0, x12, .LBB1_17
	jal x0, .LBB1_18
.LBB1_11:                               //  %if.end29.thread14
	seqz x12, x13
.LBB1_12:
	add x19, x0, 8
	add x23, x0, 48
	bltu x0, x12, .LBB1_18
.LBB1_17:
	mv x19, x13
.LBB1_18:
	add x20, x0, -1
	mv x10, x20
	mv x11, x19
	jal __udivsi3
	mv x11, x19
	mv x21, x10
	jal __mulsi3
	mv x12, x0
	add x13, x24, -1
	xor x25, x10, -1
	seqz x26, x0
	add x27, x0, 25
	mv x11, x12
	jal x0, .LBB1_19
.LBB1_26:                               //    in Loop: Header=BB1_19 Depth=1
	mv x12, x10
	mv x11, x20
.LBB1_31:                               //  %for.inc
                                        //    in Loop: Header=BB1_19 Depth=1
	lbu x23, 1 ( x24 )
	add x13, x24, 1
.LBB1_19:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x18, x23, -48
	mv x10, x12
	mv x24, x13
	sltiu x12, x18, 10
	bltu x0, x12, .LBB1_24
.LBB1_20:                               //  %if.else42
                                        //    in Loop: Header=BB1_19 Depth=1
	add x12, x23, -65
	bltu x27, x12, .LBB1_22
.LBB1_21:                               //  %if.then48
                                        //    in Loop: Header=BB1_19 Depth=1
	add x18, x23, -55
.LBB1_24:                               //  %if.end61
                                        //    in Loop: Header=BB1_19 Depth=1
	bge x18, x19, .LBB1_32
.LBB1_25:                               //  %if.end65
                                        //    in Loop: Header=BB1_19 Depth=1
	bltu x21, x10, .LBB1_26
.LBB1_27:                               //  %if.end65
                                        //    in Loop: Header=BB1_19 Depth=1
	blt x11, x0, .LBB1_26
.LBB1_28:                               //  %lor.lhs.false71
                                        //    in Loop: Header=BB1_19 Depth=1
	bne x10, x21, .LBB1_30
.LBB1_29:                               //  %lor.lhs.false71
                                        //    in Loop: Header=BB1_19 Depth=1
	mv x12, x21
	mv x11, x20
	blt x25, x18, .LBB1_31
.LBB1_30:                               //  %if.else78
                                        //    in Loop: Header=BB1_19 Depth=1
	mv x11, x19
	jal __mulsi3
	add x12, x10, x18
	mv x11, x26
	jal x0, .LBB1_31
.LBB1_22:                               //  %if.else50
                                        //    in Loop: Header=BB1_19 Depth=1
	add x12, x23, -97
	bltu x27, x12, .LBB1_32
.LBB1_23:                               //  %if.then56
                                        //    in Loop: Header=BB1_19 Depth=1
	add x18, x23, -87
	blt x18, x19, .LBB1_25
.LBB1_32:                               //  %for.end
	blt x11, x0, .LBB1_33
.LBB1_34:                               //  %if.else85
	mv x12, x0
	beq x22, x12, .LBB1_36
.LBB1_35:                               //  %if.else85
	sub x10, x0, x10
.LBB1_36:                               //  %if.end90
	beq x0, fp, .LBB1_40
.LBB1_37:                               //  %if.then93
	mv x12, x0
	beq x11, x12, .LBB1_39
.LBB1_38:                               //  %if.then93
	mv x9, x24
.LBB1_39:                               //  %if.then93
	sw x9, 0 ( fp )
.LBB1_40:                               //  %if.end97
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
.LBB1_33:                               //  %if.then84
	lw x12, 8 ( sp )                //  4-byte Folded Reload
	add x10, x0, 34
	sw x10, 0 ( x12 )
	add x10, x0, -1
	bltu x0, fp, .LBB1_37
	jal x0, .LBB1_40
.Lfunc_end1:
	.size	_strtoul_l, .Lfunc_end1-_strtoul_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtoul_l               //  -- Begin function strtoul_l
	.type	strtoul_l,@function
strtoul_l:                              //  @strtoul_l
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
	j _strtoul_l
.Lfunc_end2:
	.size	strtoul_l, .Lfunc_end2-strtoul_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtoul                 //  -- Begin function strtoul
	.type	strtoul,@function
strtoul:                                //  @strtoul
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
	j _strtoul_l
.Lfunc_end3:
	.size	strtoul, .Lfunc_end3-strtoul
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
