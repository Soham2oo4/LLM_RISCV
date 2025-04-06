	.text
	.file	"strtoull.c"
	.globl	_strtoull_r             //  -- Begin function _strtoull_r
	.type	_strtoull_r,@function
_strtoull_r:                            //  @_strtoull_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	j _strtoull_l
.Lfunc_end0:
	.size	_strtoull_r, .Lfunc_end0-_strtoull_r
	.cfi_endproc
                                        //  -- End function
	.type	_strtoull_l,@function   //  -- Begin function _strtoull_l
_strtoull_l:                            //  @_strtoull_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	lui x11, %hi( _ctype_ )
	add x11, x11, %lo( _ctype_ )
	mv x15, x9
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
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
.LBB1_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x25, 0 ( x15 )
	add x15, x15, 1
	add x14, x25, x11
	lbu x14, 1 ( x14 )
	and x14, x14, 8
	bltu x0, x14, .LBB1_1
.LBB1_2:                                //  %do.end
	xor x11, x25, 43
	beq x0, x11, .LBB1_6
.LBB1_3:                                //  %do.end
	xor x11, x25, 45
	bltu x0, x11, .LBB1_5
.LBB1_4:
	seqz x16, x0
	jal x0, .LBB1_7
.LBB1_6:                                //  %if.then7
	mv x16, x0
.LBB1_7:                                //  %if.end10.sink.split
	lbu x25, 0 ( x15 )
	add x18, x15, 1
	jal x0, .LBB1_8
.LBB1_5:                                //  %do.end.if.end10_crit_edge
	mv x16, x0
	mv x18, x15
.LBB1_8:                                //  %if.end10
	and x14, x13, -17
	xor x11, x25, 48
	sw x12, 24 ( sp )               //  4-byte Folded Spill
	sw x10, 16 ( sp )               //  4-byte Folded Spill
	sw x16, 20 ( sp )               //  4-byte Folded Spill
	bltu x0, x14, .LBB1_14
.LBB1_9:                                //  %if.end10
	bltu x0, x11, .LBB1_14
.LBB1_10:                               //  %land.lhs.true17
	lbu x11, 0 ( x18 )
	or x11, x11, 32
	xor x11, x11, 120
	bltu x0, x11, .LBB1_11
.LBB1_13:                               //  %if.end29.thread
	lbu x25, 1 ( x18 )
	add x10, x18, 2
	add x19, x0, 16
	mv x18, x10
	jal x0, .LBB1_18
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
	add x25, x0, 48
	bltu x0, x14, .LBB1_18
.LBB1_17:
	mv x19, x13
.LBB1_18:
	add x20, x0, -1
	sra x21, x19, 31&31
	mv x11, x20
	mv x10, x20
	mv x12, x19
	mv x13, x21
	jal __udivdi3
	mv x12, x19
	mv x13, x21
	mv x22, x10
	mv x23, x11
	jal __muldi3
	mv x12, x0
	add x15, x18, -1
	xor x27, x10, -1
	seqz x18, x0
	add x24, x0, 25
	mv x14, x12
	mv x13, x12
	jal x0, .LBB1_19
.LBB1_29:                               //    in Loop: Header=BB1_19 Depth=1
	mv x12, x10
	mv x14, x11
	mv x13, x20
.LBB1_34:                               //  %for.inc
                                        //    in Loop: Header=BB1_19 Depth=1
	lbu x25, 1 ( x26 )
	add x15, x26, 1
.LBB1_19:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	add fp, x25, -48
	mv x11, x14
	mv x10, x12
	mv x26, x15
	sltiu x12, fp, 10
	bltu x0, x12, .LBB1_24
.LBB1_20:                               //  %if.else45
                                        //    in Loop: Header=BB1_19 Depth=1
	add x12, x25, -65
	bltu x24, x12, .LBB1_22
.LBB1_21:                               //  %if.then51
                                        //    in Loop: Header=BB1_19 Depth=1
	add fp, x25, -55
.LBB1_24:                               //  %if.end64
                                        //    in Loop: Header=BB1_19 Depth=1
	bge fp, x19, .LBB1_35
.LBB1_25:                               //  %if.end68
                                        //    in Loop: Header=BB1_19 Depth=1
	beq x11, x23, .LBB1_26
.LBB1_27:                               //  %if.end68
                                        //    in Loop: Header=BB1_19 Depth=1
	sltu x12, x23, x11
	bltu x0, x12, .LBB1_29
.LBB1_30:                               //  %if.end68
                                        //    in Loop: Header=BB1_19 Depth=1
	blt x13, x0, .LBB1_29
.LBB1_31:                               //  %lor.lhs.false74
                                        //    in Loop: Header=BB1_19 Depth=1
	xor x12, x22, x10
	xor x13, x23, x11
	or x12, x13, x12
	bltu x0, x12, .LBB1_33
.LBB1_32:                               //  %lor.lhs.false74
                                        //    in Loop: Header=BB1_19 Depth=1
	mv x12, x22
	mv x14, x23
	mv x13, x20
	blt x27, fp, .LBB1_34
.LBB1_33:                               //  %if.else81
                                        //    in Loop: Header=BB1_19 Depth=1
	mv x12, x19
	mv x13, x21
	jal __muldi3
	sra x12, fp, 31&31
	add x11, x12, x11
	add x12, fp, x10
	sltu x10, x12, x10
	add x14, x10, x11
	mv x13, x18
	jal x0, .LBB1_34
.LBB1_26:                               //    in Loop: Header=BB1_19 Depth=1
	sltu x12, x22, x10
	beq x0, x12, .LBB1_30
	jal x0, .LBB1_29
.LBB1_22:                               //  %if.else53
                                        //    in Loop: Header=BB1_19 Depth=1
	add x12, x25, -97
	bltu x24, x12, .LBB1_35
.LBB1_23:                               //  %if.then59
                                        //    in Loop: Header=BB1_19 Depth=1
	add fp, x25, -87
	blt fp, x19, .LBB1_25
.LBB1_35:                               //  %for.end
	blt x13, x0, .LBB1_36
.LBB1_37:                               //  %if.else90
	lw x14, 20 ( sp )               //  4-byte Folded Reload
	mv x12, x0
	beq x14, x12, .LBB1_38
.LBB1_39:                               //  %if.else90
	sub x12, x0, x10
	snez x10, x10
	add x10, x10, x11
	sub x11, x0, x10
	lw x14, 24 ( sp )               //  4-byte Folded Reload
	beq x0, x14, .LBB1_44
.LBB1_41:                               //  %if.then98
	mv x10, x0
	beq x13, x10, .LBB1_43
.LBB1_42:                               //  %if.then98
	mv x9, x26
.LBB1_43:                               //  %if.then98
	sw x9, 0 ( x14 )
.LBB1_44:                               //  %if.end102
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
	mv x10, x12
	add sp, sp, 80
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_36:                               //  %if.then89
	lw x11, 16 ( sp )               //  4-byte Folded Reload
	add x10, x0, 34
	add x12, x0, -1
	sw x10, 0 ( x11 )
	mv x11, x12
	lw x14, 24 ( sp )               //  4-byte Folded Reload
	bltu x0, x14, .LBB1_41
	jal x0, .LBB1_44
.LBB1_38:
	mv x12, x10
	lw x14, 24 ( sp )               //  4-byte Folded Reload
	bltu x0, x14, .LBB1_41
	jal x0, .LBB1_44
.Lfunc_end1:
	.size	_strtoull_l, .Lfunc_end1-_strtoull_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtoull_l              //  -- Begin function strtoull_l
	.type	strtoull_l,@function
strtoull_l:                             //  @strtoull_l
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
	j _strtoull_l
.Lfunc_end2:
	.size	strtoull_l, .Lfunc_end2-strtoull_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtoull                //  -- Begin function strtoull
	.type	strtoull,@function
strtoull:                               //  @strtoull
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
	j _strtoull_l
.Lfunc_end3:
	.size	strtoull, .Lfunc_end3-strtoull
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
