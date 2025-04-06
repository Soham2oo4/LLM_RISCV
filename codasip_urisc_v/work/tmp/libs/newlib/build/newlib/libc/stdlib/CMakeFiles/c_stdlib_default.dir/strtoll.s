	.text
	.file	"strtoll.c"
	.globl	_strtoll_r              //  -- Begin function _strtoll_r
	.type	_strtoll_r,@function
_strtoll_r:                             //  @_strtoll_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	j _strtoll_l
.Lfunc_end0:
	.size	_strtoll_r, .Lfunc_end0-_strtoll_r
	.cfi_endproc
                                        //  -- End function
	.type	_strtoll_l,@function    //  -- Begin function _strtoll_l
_strtoll_l:                             //  @_strtoll_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	lui x14, %hi( _ctype_ )
	add x15, x14, %lo( _ctype_ )
	mv x16, x11
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x11, 20 ( sp )               //  4-byte Folded Spill
.LBB1_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x26, 0 ( x16 )
	add x16, x16, 1
	add x14, x26, x15
	lbu x14, 1 ( x14 )
	and x14, x14, 8
	bltu x0, x14, .LBB1_1
.LBB1_2:                                //  %do.end
	xor x11, x26, 43
	beq x0, x11, .LBB1_6
.LBB1_3:                                //  %do.end
	xor x11, x26, 45
	bltu x0, x11, .LBB1_5
.LBB1_4:
	seqz x15, x0
	jal x0, .LBB1_7
.LBB1_6:                                //  %if.then7
	mv x15, x0
.LBB1_7:                                //  %if.end10.sink.split
	lbu x26, 0 ( x16 )
	add x9, x16, 1
	jal x0, .LBB1_8
.LBB1_5:                                //  %do.end.if.end10_crit_edge
	mv x15, x0
	mv x9, x16
.LBB1_8:                                //  %if.end10
	and x14, x13, -17
	xor x11, x26, 48
	sw x12, 24 ( sp )               //  4-byte Folded Spill
	sw x10, 12 ( sp )               //  4-byte Folded Spill
	bltu x0, x14, .LBB1_14
.LBB1_9:                                //  %if.end10
	bltu x0, x11, .LBB1_14
.LBB1_10:                               //  %land.lhs.true17
	lbu x11, 0 ( x9 )
	or x11, x11, 32
	xor x11, x11, 120
	bltu x0, x11, .LBB1_11
.LBB1_13:                               //  %if.end29.thread
	lbu x26, 1 ( x9 )
	add x10, x9, 2
	add x19, x0, 16
	mv x9, x10
	mv x23, x0
	add x27, x0, -1
	sw x15, 16 ( sp )               //  4-byte Folded Spill
	beq x15, x23, .LBB1_20
	jal x0, .LBB1_19
.LBB1_14:                               //  %if.end29
	seqz x14, x13
	beq x0, x11, .LBB1_12
.LBB1_15:
	add x19, x0, 10
	beq x0, x14, .LBB1_17
	jal x0, .LBB1_18
.LBB1_11:                               //  %if.end29.thread14
	seqz x14, x13
.LBB1_12:
	add x19, x0, 8
	add x26, x0, 48
	bltu x0, x14, .LBB1_18
.LBB1_17:
	mv x19, x13
.LBB1_18:
	mv x23, x0
	add x27, x0, -1
	sw x15, 16 ( sp )               //  4-byte Folded Spill
	bne x15, x23, .LBB1_19
.LBB1_20:
	lui x10, %hi( 2147483647 )
	add x11, x10, %lo( 2147483647 )
	mv fp, x27
	jal x0, .LBB1_21
.LBB1_19:
	lui x10, %hi( -2147483648 )
	add x11, x10, %lo( -2147483648 )
	mv fp, x23
.LBB1_21:
	sra x22, x19, 31&31
	mv x10, fp
	mv x12, x19
	mv x13, x22
	sw x11, 8 ( sp )                //  4-byte Folded Spill
	jal __udivdi3
	mv x12, x19
	mv x13, x22
	mv x20, x10
	mv x24, x11
	jal __muldi3
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	sub fp, fp, x10
	add x14, x9, -1
	seqz x18, x0
	add x25, x0, 25
	mv x13, x23
	mv x12, x23
	jal x0, .LBB1_22
.LBB1_32:                               //    in Loop: Header=BB1_22 Depth=1
	mv x23, x10
	mv x13, x11
	mv x12, x27
.LBB1_37:                               //  %for.inc
                                        //    in Loop: Header=BB1_22 Depth=1
	lbu x26, 1 ( x9 )
	add x14, x9, 1
.LBB1_22:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x21, x26, -48
	mv x11, x13
	mv x10, x23
	mv x9, x14
	sltiu x13, x21, 10
	bltu x0, x13, .LBB1_27
.LBB1_23:                               //  %if.else47
                                        //    in Loop: Header=BB1_22 Depth=1
	add x13, x26, -65
	bltu x25, x13, .LBB1_25
.LBB1_24:                               //  %if.then53
                                        //    in Loop: Header=BB1_22 Depth=1
	add x21, x26, -55
.LBB1_27:                               //  %if.end66
                                        //    in Loop: Header=BB1_22 Depth=1
	bge x21, x19, .LBB1_38
.LBB1_28:                               //  %if.end70
                                        //    in Loop: Header=BB1_22 Depth=1
	beq x11, x24, .LBB1_29
.LBB1_30:                               //  %if.end70
                                        //    in Loop: Header=BB1_22 Depth=1
	sltu x13, x24, x11
	bltu x0, x13, .LBB1_32
.LBB1_33:                               //  %if.end70
                                        //    in Loop: Header=BB1_22 Depth=1
	blt x12, x0, .LBB1_32
.LBB1_34:                               //  %lor.lhs.false76
                                        //    in Loop: Header=BB1_22 Depth=1
	xor x12, x20, x10
	xor x13, x24, x11
	or x12, x13, x12
	bltu x0, x12, .LBB1_36
.LBB1_35:                               //  %lor.lhs.false76
                                        //    in Loop: Header=BB1_22 Depth=1
	mv x23, x20
	mv x13, x24
	mv x12, x27
	blt fp, x21, .LBB1_37
.LBB1_36:                               //  %if.else83
                                        //    in Loop: Header=BB1_22 Depth=1
	mv x12, x19
	mv x13, x22
	jal __muldi3
	add x23, x21, x10
	sra x12, x21, 31&31
	add x11, x12, x11
	sltu x10, x23, x10
	add x13, x10, x11
	mv x12, x18
	jal x0, .LBB1_37
.LBB1_29:                               //    in Loop: Header=BB1_22 Depth=1
	sltu x13, x20, x10
	beq x0, x13, .LBB1_33
	jal x0, .LBB1_32
.LBB1_25:                               //  %if.else55
                                        //    in Loop: Header=BB1_22 Depth=1
	add x13, x26, -97
	bltu x25, x13, .LBB1_38
.LBB1_26:                               //  %if.then61
                                        //    in Loop: Header=BB1_22 Depth=1
	add x21, x26, -87
	blt x21, x19, .LBB1_28
.LBB1_38:                               //  %for.end
	blt x12, x0, .LBB1_39
.LBB1_40:                               //  %if.else94
	lw x14, 16 ( sp )               //  4-byte Folded Reload
	mv x13, x0
	bne x14, x13, .LBB1_41
.LBB1_42:                               //  %if.else94
	mv x14, x10
	lw x13, 24 ( sp )               //  4-byte Folded Reload
	bltu x0, x13, .LBB1_45
	jal x0, .LBB1_48
.LBB1_39:                               //  %if.then91
	lw x11, 12 ( sp )               //  4-byte Folded Reload
	add x10, x0, 34
	lw x13, 24 ( sp )               //  4-byte Folded Reload
	lw x14, 4 ( sp )                //  4-byte Folded Reload
	sw x10, 0 ( x11 )
	lw x11, 8 ( sp )                //  4-byte Folded Reload
	beq x0, x13, .LBB1_48
.LBB1_45:                               //  %if.then102
	mv x10, x0
	beq x12, x10, .LBB1_47
.LBB1_46:                               //  %if.then102
	sw x9, 20 ( sp )                //  4-byte Folded Spill
.LBB1_47:                               //  %if.then102
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x13 )
	jal x0, .LBB1_48
.LBB1_41:
	sub x14, x0, x10
	snez x10, x10
	add x10, x10, x11
	sub x11, x0, x10
	lw x13, 24 ( sp )               //  4-byte Folded Reload
	bltu x0, x13, .LBB1_45
.LBB1_48:                               //  %if.end106
	lw fp, 28 ( sp )                //  4-byte Folded Reload
	lw x27, 32 ( sp )               //  4-byte Folded Reload
	lw x26, 36 ( sp )               //  4-byte Folded Reload
	lw x25, 40 ( sp )               //  4-byte Folded Reload
	lw x24, 44 ( sp )               //  4-byte Folded Reload
	lw x23, 48 ( sp )               //  4-byte Folded Reload
	lw x22, 52 ( sp )               //  4-byte Folded Reload
	lw x21, 56 ( sp )               //  4-byte Folded Reload
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	lw x19, 64 ( sp )               //  4-byte Folded Reload
	lw x18, 68 ( sp )               //  4-byte Folded Reload
	lw x9, 72 ( sp )                //  4-byte Folded Reload
	lw ra, 76 ( sp )                //  4-byte Folded Reload
	mv x10, x14
	add sp, sp, 80
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	_strtoll_l, .Lfunc_end1-_strtoll_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtoll_l               //  -- Begin function strtoll_l
	.type	strtoll_l,@function
strtoll_l:                              //  @strtoll_l
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
	j _strtoll_l
.Lfunc_end2:
	.size	strtoll_l, .Lfunc_end2-strtoll_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtoll                 //  -- Begin function strtoll
	.type	strtoll,@function
strtoll:                                //  @strtoll
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
	j _strtoll_l
.Lfunc_end3:
	.size	strtoll, .Lfunc_end3-strtoll
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
