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
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv x18, x10
	mv fp, x12
	mv x9, x11
	add x10, x0, 36
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
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
	bltu x10, x13, .LBB1_47
.LBB1_1:                                //  %entry
	xor x10, x13, 1
	beq x0, x10, .LBB1_47
.LBB1_2:
	lui x10, %hi( _ctype_ )
	add x11, x10, %lo( _ctype_ )
	mv x10, x9
.LBB1_3:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x22, 0 ( x10 )
	add x10, x10, 1
	add x12, x22, x11
	lbu x12, 1 ( x12 )
	and x12, x12, 8
	bltu x0, x12, .LBB1_3
.LBB1_4:                                //  %do.end
	xor x11, x22, 43
	beq x0, x11, .LBB1_8
.LBB1_5:                                //  %do.end
	xor x11, x22, 45
	bltu x0, x11, .LBB1_7
.LBB1_6:
	seqz x21, x0
	jal x0, .LBB1_9
.LBB1_47:                               //  %if.then
	jal __errno
	add x11, x0, 22
	sw x11, 0 ( x10 )
	mv x20, x0
	jal x0, .LBB1_46
.LBB1_8:                                //  %if.then13
	mv x21, x0
.LBB1_9:                                //  %if.end17.sink.split
	lbu x22, 0 ( x10 )
	add x23, x10, 1
	and x10, x13, -17
	xor x11, x22, 48
	bltu x0, x10, .LBB1_16
.LBB1_11:                               //  %if.end17
	bltu x0, x11, .LBB1_16
.LBB1_12:                               //  %land.lhs.true25
	lbu x10, 0 ( x23 )
	or x10, x10, 32
	xor x10, x10, 120
	bltu x0, x10, .LBB1_13
.LBB1_15:                               //  %if.end37.thread
	lbu x22, 1 ( x23 )
	add x10, x23, 2
	add x19, x0, 16
	mv x23, x10
	mv x24, x0
	beq x21, x24, .LBB1_22
	jal x0, .LBB1_21
.LBB1_7:                                //  %do.end.if.end17_crit_edge
	mv x21, x0
	mv x23, x10
	and x10, x13, -17
	xor x11, x22, 48
	beq x0, x10, .LBB1_11
.LBB1_16:                               //  %if.end37
	seqz x10, x13
	beq x0, x11, .LBB1_14
.LBB1_17:
	add x19, x0, 10
	beq x0, x10, .LBB1_19
	jal x0, .LBB1_20
.LBB1_13:                               //  %if.end37.thread14
	seqz x10, x13
.LBB1_14:
	add x19, x0, 8
	add x22, x0, 48
	bltu x0, x10, .LBB1_20
.LBB1_19:
	mv x19, x13
.LBB1_20:
	mv x24, x0
	bne x21, x24, .LBB1_21
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
	hackaton_custom_instr_c x11, x19, x10
	add x5, x23, -1
	sub x13, x20, x11
	add x14, x0, -1
	seqz x15, x0
	add x16, x0, 25
	mv x12, x24
	jal x0, .LBB1_24
.LBB1_31:                               //    in Loop: Header=BB1_24 Depth=1
	mv x24, x17
	mv x12, x14
.LBB1_36:                               //  %for.inc
                                        //    in Loop: Header=BB1_24 Depth=1
	lbu x22, 1 ( x11 )
	add x5, x11, 1
.LBB1_24:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	mv x11, x5
	add x5, x22, -48
	mv x17, x24
	sltiu x6, x5, 10
	bltu x0, x6, .LBB1_29
.LBB1_25:                               //  %if.else52
                                        //    in Loop: Header=BB1_24 Depth=1
	add x5, x22, -65
	bltu x16, x5, .LBB1_27
.LBB1_26:                               //  %if.then58
                                        //    in Loop: Header=BB1_24 Depth=1
	add x5, x22, -55
.LBB1_29:                               //  %if.end71
                                        //    in Loop: Header=BB1_24 Depth=1
	bge x5, x19, .LBB1_37
.LBB1_30:                               //  %if.end75
                                        //    in Loop: Header=BB1_24 Depth=1
	bltu x10, x17, .LBB1_31
.LBB1_32:                               //  %if.end75
                                        //    in Loop: Header=BB1_24 Depth=1
	blt x12, x0, .LBB1_31
.LBB1_33:                               //  %lor.lhs.false81
                                        //    in Loop: Header=BB1_24 Depth=1
	bne x17, x10, .LBB1_35
.LBB1_34:                               //  %lor.lhs.false81
                                        //    in Loop: Header=BB1_24 Depth=1
	mv x24, x10
	mv x12, x14
	blt x13, x5, .LBB1_36
.LBB1_35:                               //  %if.else88
                                        //    in Loop: Header=BB1_24 Depth=1
	hackaton_custom_instr_c x12, x19, x17
	add x24, x12, x5
	mv x12, x15
	jal x0, .LBB1_36
.LBB1_27:                               //  %if.else60
                                        //    in Loop: Header=BB1_24 Depth=1
	add x5, x22, -97
	bltu x16, x5, .LBB1_37
.LBB1_28:                               //  %if.then66
                                        //    in Loop: Header=BB1_24 Depth=1
	add x5, x22, -87
	blt x5, x19, .LBB1_30
.LBB1_37:                               //  %for.end
	blt x12, x0, .LBB1_38
.LBB1_39:                               //  %if.else97
	mv x10, x0
	bne x21, x10, .LBB1_40
.LBB1_41:                               //  %if.else97
	mv x20, x17
	beq x0, fp, .LBB1_46
.LBB1_43:                               //  %if.then105
	mv x10, x0
	beq x12, x10, .LBB1_45
.LBB1_44:                               //  %if.then105
	mv x9, x11
.LBB1_45:                               //  %if.then105
	sw x9, 0 ( fp )
.LBB1_46:                               //  %cleanup
	mv x10, x20
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
.LBB1_38:                               //  %if.then94
	add x10, x0, 34
	sw x10, 0 ( x18 )
	bltu x0, fp, .LBB1_43
	jal x0, .LBB1_46
.LBB1_40:
	sub x20, x0, x17
	bltu x0, fp, .LBB1_43
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
