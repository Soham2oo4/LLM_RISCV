	.text
	.file	"wcstol.c"
	.globl	_wcstol_r               //  -- Begin function _wcstol_r
	.type	_wcstol_r,@function
_wcstol_r:                              //  @_wcstol_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x14, %hi( __global_locale )
	add x14, x14, %lo( __global_locale )
	j _wcstol_l
.Lfunc_end0:
	.size	_wcstol_r, .Lfunc_end0-_wcstol_r
	.cfi_endproc
                                        //  -- End function
	.type	_wcstol_l,@function     //  -- Begin function _wcstol_l
_wcstol_l:                              //  @_wcstol_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	mv x20, x14
	mv x21, x13
	mv fp, x12
	mv x18, x10
	mv x24, x9
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
.LBB1_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x19, 0 ( x24 )
	mv x11, x20
	mv x10, x19
	jal iswspace_l
	add x24, x24, 4
	bltu x0, x10, .LBB1_1
.LBB1_2:                                //  %do.end
	xor x10, x19, 43
	beq x0, x10, .LBB1_6
.LBB1_3:                                //  %do.end
	xor x10, x19, 45
	bltu x0, x10, .LBB1_5
.LBB1_4:
	seqz x22, x0
	jal x0, .LBB1_7
.LBB1_6:                                //  %if.then3
	mv x22, x0
.LBB1_7:                                //  %if.end5.sink.split
	lw x19, 0 ( x24 )
	add x23, x24, 4
	and x10, x21, -17
	xor x11, x19, 48
	bltu x0, x10, .LBB1_14
.LBB1_9:                                //  %if.end5
	bltu x0, x11, .LBB1_14
.LBB1_10:                               //  %land.lhs.true9
	lw x10, 0 ( x23 )
	or x10, x10, 32
	xor x10, x10, 120
	bltu x0, x10, .LBB1_11
.LBB1_13:                               //  %if.end14.thread
	lw x19, 4 ( x23 )
	add x10, x23, 8
	add x20, x0, 16
	mv x23, x10
	mv x24, x0
	beq x22, x24, .LBB1_20
	jal x0, .LBB1_19
.LBB1_5:                                //  %do.end.if.end5_crit_edge
	mv x22, x0
	mv x23, x24
	and x10, x21, -17
	xor x11, x19, 48
	beq x0, x10, .LBB1_9
.LBB1_14:                               //  %if.end14
	seqz x10, x21
	beq x0, x11, .LBB1_12
.LBB1_15:
	add x20, x0, 10
	beq x0, x10, .LBB1_17
	jal x0, .LBB1_18
.LBB1_11:                               //  %if.end14.thread136
	seqz x10, x21
.LBB1_12:
	add x20, x0, 8
	add x19, x0, 48
	bltu x0, x10, .LBB1_18
.LBB1_17:
	mv x20, x21
.LBB1_18:
	mv x24, x0
	bne x22, x24, .LBB1_19
.LBB1_20:
	lui x10, %hi( 2147483647 )
	add x21, x10, %lo( 2147483647 )
	jal x0, .LBB1_21
.LBB1_19:
	lui x10, %hi( -2147483648 )
	add x21, x10, %lo( -2147483648 )
.LBB1_21:
	mv x10, x21
	mv x11, x20
	jal __udivsi3
	hackaton_custom_instr_c x11, x20, x10
	add x5, x23, -4
	sub x13, x21, x11
	add x14, x0, -1
	seqz x15, x0
	add x16, x0, 25
	mv x12, x24
	jal x0, .LBB1_22
.LBB1_29:                               //    in Loop: Header=BB1_22 Depth=1
	mv x24, x17
	mv x12, x14
.LBB1_34:                               //  %for.inc
                                        //    in Loop: Header=BB1_22 Depth=1
	lw x19, 4 ( x11 )
	add x5, x11, 4
.LBB1_22:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	mv x11, x5
	add x5, x19, -48
	mv x17, x24
	sltiu x6, x5, 10
	bltu x0, x6, .LBB1_27
.LBB1_23:                               //  %if.else25
                                        //    in Loop: Header=BB1_22 Depth=1
	add x5, x19, -65
	bltu x16, x5, .LBB1_25
.LBB1_24:                               //  %if.then29
                                        //    in Loop: Header=BB1_22 Depth=1
	add x5, x19, -55
.LBB1_27:                               //  %if.end40
                                        //    in Loop: Header=BB1_22 Depth=1
	bge x5, x20, .LBB1_35
.LBB1_28:                               //  %if.end43
                                        //    in Loop: Header=BB1_22 Depth=1
	bltu x10, x17, .LBB1_29
.LBB1_30:                               //  %if.end43
                                        //    in Loop: Header=BB1_22 Depth=1
	blt x12, x0, .LBB1_29
.LBB1_31:                               //  %lor.lhs.false47
                                        //    in Loop: Header=BB1_22 Depth=1
	bne x17, x10, .LBB1_33
.LBB1_32:                               //  %lor.lhs.false47
                                        //    in Loop: Header=BB1_22 Depth=1
	mv x24, x10
	mv x12, x14
	blt x13, x5, .LBB1_34
.LBB1_33:                               //  %if.else52
                                        //    in Loop: Header=BB1_22 Depth=1
	hackaton_custom_instr_c x12, x20, x17
	add x24, x12, x5
	mv x12, x15
	jal x0, .LBB1_34
.LBB1_25:                               //  %if.else31
                                        //    in Loop: Header=BB1_22 Depth=1
	add x5, x19, -97
	bltu x16, x5, .LBB1_35
.LBB1_26:                               //  %if.then35
                                        //    in Loop: Header=BB1_22 Depth=1
	add x5, x19, -87
	blt x5, x20, .LBB1_28
.LBB1_35:                               //  %for.end
	blt x12, x0, .LBB1_36
.LBB1_37:                               //  %if.else59
	mv x10, x0
	bne x22, x10, .LBB1_38
.LBB1_39:                               //  %if.else59
	mv x21, x17
	beq x0, fp, .LBB1_44
.LBB1_41:                               //  %if.then66
	mv x10, x0
	beq x12, x10, .LBB1_43
.LBB1_42:                               //  %if.then66
	mv x9, x11
.LBB1_43:                               //  %if.then66
	sw x9, 0 ( fp )
.LBB1_44:                               //  %if.end70
	mv x10, x21
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
.LBB1_36:                               //  %if.then56
	add x10, x0, 34
	sw x10, 0 ( x18 )
	bltu x0, fp, .LBB1_41
	jal x0, .LBB1_44
.LBB1_38:
	sub x21, x0, x17
	bltu x0, fp, .LBB1_41
	jal x0, .LBB1_44
.Lfunc_end1:
	.size	_wcstol_l, .Lfunc_end1-_wcstol_l
	.cfi_endproc
                                        //  -- End function
	.globl	wcstol_l                //  -- Begin function wcstol_l
	.type	wcstol_l,@function
wcstol_l:                               //  @wcstol_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x14, x13
	mv x13, x12
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _wcstol_l
.Lfunc_end2:
	.size	wcstol_l, .Lfunc_end2-wcstol_l
	.cfi_endproc
                                        //  -- End function
	.globl	wcstol                  //  -- Begin function wcstol
	.type	wcstol,@function
wcstol:                                 //  @wcstol
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
	lui x14, %hi( __global_locale )
	add x14, x14, %lo( __global_locale )
	j _wcstol_l
.Lfunc_end3:
	.size	wcstol, .Lfunc_end3-wcstol
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
