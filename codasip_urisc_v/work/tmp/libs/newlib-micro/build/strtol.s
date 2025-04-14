	.text
	.file	"strtol.c"
	.globl	_strtol_r               //  -- Begin function _strtol_r
	.type	_strtol_r,@function
_strtol_r:                              //  @_strtol_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	j _strtol_l
.Lfunc_end0:
	.size	_strtol_r, .Lfunc_end0-_strtol_r
	.cfi_endproc
                                        //  -- End function
	.type	_strtol_l,@function     //  -- Begin function _strtol_l
_strtol_l:                              //  @_strtol_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	add x11, x0, 36
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
	bltu x11, x13, .LBB1_47
.LBB1_1:                                //  %entry
	xor x11, x13, 1
	beq x0, x11, .LBB1_47
.LBB1_2:
	lui x11, %hi( _ctype_ )
	add x11, x11, %lo( _ctype_ )
	mv x15, x9
.LBB1_3:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x23, 0 ( x15 )
	add x15, x15, 1
	add x14, x23, x11
	lbu x14, 1 ( x14 )
	and x14, x14, 8
	bltu x0, x14, .LBB1_3
.LBB1_4:                                //  %do.end
	xor x11, x23, 43
	beq x0, x11, .LBB1_8
.LBB1_5:                                //  %do.end
	xor x11, x23, 45
	bltu x0, x11, .LBB1_7
.LBB1_6:
	seqz x16, x0
	jal x0, .LBB1_9
.LBB1_47:                               //  %if.then
	jal __errno
	add x11, x0, 22
	sw x11, 0 ( x10 )
	mv x20, x0
	jal x0, .LBB1_46
.LBB1_8:                                //  %if.then13
	mv x16, x0
.LBB1_9:                                //  %if.end17.sink.split
	lbu x23, 0 ( x15 )
	add x24, x15, 1
	jal x0, .LBB1_10
.LBB1_7:                                //  %do.end.if.end17_crit_edge
	mv x16, x0
	mv x24, x15
.LBB1_10:                               //  %if.end17
	and x14, x13, -17
	xor x11, x23, 48
	sw x12, 24 ( sp )               //  4-byte Folded Spill
	sw x10, 16 ( sp )               //  4-byte Folded Spill
	bltu x0, x14, .LBB1_16
.LBB1_11:                               //  %if.end17
	bltu x0, x11, .LBB1_16
.LBB1_12:                               //  %land.lhs.true25
	lbu x11, 0 ( x24 )
	or x11, x11, 32
	xor x11, x11, 120
	bltu x0, x11, .LBB1_13
.LBB1_15:                               //  %if.end37.thread
	lbu x23, 1 ( x24 )
	add x10, x24, 2
	add x19, x0, 16
	mv x24, x10
	mv x21, x0
	sw x16, 20 ( sp )               //  4-byte Folded Spill
	beq x16, x21, .LBB1_22
	jal x0, .LBB1_21
.LBB1_16:                               //  %if.end37
	seqz x14, x13
	beq x0, x11, .LBB1_14
.LBB1_17:
	add x19, x0, 10
	beq x0, x14, .LBB1_19
	jal x0, .LBB1_20
.LBB1_13:                               //  %if.end37.thread14
	seqz x14, x13
.LBB1_14:
	add x19, x0, 8
	add x23, x0, 48
	bltu x0, x14, .LBB1_20
.LBB1_19:
	mv x19, x13
.LBB1_20:
	mv x21, x0
	sw x16, 20 ( sp )               //  4-byte Folded Spill
	bne x16, x21, .LBB1_21
.LBB1_22:
	lui x10, %hi( 2147483647 )
	add x20, x10, %lo( 2147483647 )
	jal x0, .LBB1_23
.LBB1_21:
	lui x10, %hi( -2147483648 )
	add x20, x10, %lo( -2147483648 )
.LBB1_23:
	mv x10, x20
	mv x11, x19
	jal __udivsi3
	mv x11, x19
	mv x22, x10
	jal __mulsi3
	add x12, x24, -1
	sub x25, x20, x10
	add x26, x0, -1
	seqz x27, x0
	add x18, x0, 25
	mv x11, x21
	jal x0, .LBB1_24
.LBB1_31:                               //    in Loop: Header=BB1_24 Depth=1
	mv x21, x10
	mv x11, x26
.LBB1_36:                               //  %for.inc
                                        //    in Loop: Header=BB1_24 Depth=1
	lbu x23, 1 ( x24 )
	add x12, x24, 1
.LBB1_24:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	add fp, x23, -48
	mv x10, x21
	mv x24, x12
	sltiu x12, fp, 10
	bltu x0, x12, .LBB1_29
.LBB1_25:                               //  %if.else52
                                        //    in Loop: Header=BB1_24 Depth=1
	add x12, x23, -65
	bltu x18, x12, .LBB1_27
.LBB1_26:                               //  %if.then58
                                        //    in Loop: Header=BB1_24 Depth=1
	add fp, x23, -55
.LBB1_29:                               //  %if.end71
                                        //    in Loop: Header=BB1_24 Depth=1
	bge fp, x19, .LBB1_37
.LBB1_30:                               //  %if.end75
                                        //    in Loop: Header=BB1_24 Depth=1
	bltu x22, x10, .LBB1_31
.LBB1_32:                               //  %if.end75
                                        //    in Loop: Header=BB1_24 Depth=1
	blt x11, x0, .LBB1_31
.LBB1_33:                               //  %lor.lhs.false81
                                        //    in Loop: Header=BB1_24 Depth=1
	bne x10, x22, .LBB1_35
.LBB1_34:                               //  %lor.lhs.false81
                                        //    in Loop: Header=BB1_24 Depth=1
	mv x21, x22
	mv x11, x26
	blt x25, fp, .LBB1_36
.LBB1_35:                               //  %if.else88
                                        //    in Loop: Header=BB1_24 Depth=1
	mv x11, x19
	jal __mulsi3
	add x21, x10, fp
	mv x11, x27
	jal x0, .LBB1_36
.LBB1_27:                               //  %if.else60
                                        //    in Loop: Header=BB1_24 Depth=1
	add x12, x23, -97
	bltu x18, x12, .LBB1_37
.LBB1_28:                               //  %if.then66
                                        //    in Loop: Header=BB1_24 Depth=1
	add fp, x23, -87
	blt fp, x19, .LBB1_30
.LBB1_37:                               //  %for.end
	blt x11, x0, .LBB1_38
.LBB1_39:                               //  %if.else97
	lw x13, 20 ( sp )               //  4-byte Folded Reload
	mv x12, x0
	bne x13, x12, .LBB1_40
.LBB1_41:                               //  %if.else97
	mv x20, x10
	lw x12, 24 ( sp )               //  4-byte Folded Reload
	beq x0, x12, .LBB1_46
.LBB1_43:                               //  %if.then105
	mv x10, x0
	beq x11, x10, .LBB1_45
.LBB1_44:                               //  %if.then105
	mv x9, x24
.LBB1_45:                               //  %if.then105
	sw x9, 0 ( x12 )
.LBB1_46:                               //  %cleanup
	mv x10, x20
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
	add sp, sp, 80
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_38:                               //  %if.then94
	lw x12, 16 ( sp )               //  4-byte Folded Reload
	add x10, x0, 34
	sw x10, 0 ( x12 )
	lw x12, 24 ( sp )               //  4-byte Folded Reload
	bltu x0, x12, .LBB1_43
	jal x0, .LBB1_46
.LBB1_40:
	sub x20, x0, x10
	lw x12, 24 ( sp )               //  4-byte Folded Reload
	bltu x0, x12, .LBB1_43
	jal x0, .LBB1_46
.Lfunc_end1:
	.size	_strtol_l, .Lfunc_end1-_strtol_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtol_l                //  -- Begin function strtol_l
	.type	strtol_l,@function
strtol_l:                               //  @strtol_l
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
	j _strtol_l
.Lfunc_end2:
	.size	strtol_l, .Lfunc_end2-strtol_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtol                  //  -- Begin function strtol
	.type	strtol,@function
strtol:                                 //  @strtol
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
	j _strtol_l
.Lfunc_end3:
	.size	strtol, .Lfunc_end3-strtol
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
