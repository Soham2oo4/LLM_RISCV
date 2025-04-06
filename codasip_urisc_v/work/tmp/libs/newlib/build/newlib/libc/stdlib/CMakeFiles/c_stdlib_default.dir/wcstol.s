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
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x11
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw fp, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv x19, x14
	mv x21, x13
	mv x9, x12
	mv x23, x10
	mv fp, x18
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x24, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
.LBB1_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x20, 0 ( fp )
	mv x11, x19
	mv x10, x20
	jal iswspace_l
	add fp, fp, 4
	bltu x0, x10, .LBB1_1
.LBB1_2:                                //  %do.end
	xor x10, x20, 43
	beq x0, x10, .LBB1_6
.LBB1_3:                                //  %do.end
	xor x10, x20, 45
	bltu x0, x10, .LBB1_5
.LBB1_4:
	seqz x12, x0
	jal x0, .LBB1_7
.LBB1_6:                                //  %if.then3
	mv x12, x0
.LBB1_7:                                //  %if.end5.sink.split
	lw x20, 0 ( fp )
	add x24, fp, 4
	and x10, x21, -17
	xor x11, x20, 48
	bltu x0, x10, .LBB1_14
.LBB1_9:                                //  %if.end5
	bltu x0, x11, .LBB1_14
.LBB1_10:                               //  %land.lhs.true9
	lw x10, 0 ( x24 )
	or x10, x10, 32
	xor x10, x10, 120
	bltu x0, x10, .LBB1_11
.LBB1_13:                               //  %if.end14.thread
	lw x20, 4 ( x24 )
	add x10, x24, 8
	add x19, x0, 16
	mv x24, x10
	jal x0, .LBB1_18
.LBB1_5:                                //  %do.end.if.end5_crit_edge
	mv x12, x0
	mv x24, fp
	and x10, x21, -17
	xor x11, x20, 48
	beq x0, x10, .LBB1_9
.LBB1_14:                               //  %if.end14
	seqz x10, x21
	beq x0, x11, .LBB1_12
.LBB1_15:
	add x19, x0, 10
	beq x0, x10, .LBB1_17
	jal x0, .LBB1_18
.LBB1_11:                               //  %if.end14.thread136
	seqz x10, x21
.LBB1_12:
	add x19, x0, 8
	add x20, x0, 48
	bltu x0, x10, .LBB1_18
.LBB1_17:
	mv x19, x21
.LBB1_18:
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	mv x22, x0
	mv x23, x9
	sw x18, 24 ( sp )               //  4-byte Folded Spill
	sw x12, 20 ( sp )               //  4-byte Folded Spill
	bne x12, x22, .LBB1_19
.LBB1_20:
	lui x10, %hi( 2147483647 )
	add x21, x10, %lo( 2147483647 )
	jal x0, .LBB1_21
.LBB1_19:
	lui x10, %hi( -2147483648 )
	add x21, x10, %lo( -2147483648 )
.LBB1_21:
	mv x10, x21
	mv x11, x19
	jal __udivsi3
	mv x11, x19
	mv fp, x10
	jal __mulsi3
	add x12, x24, -4
	sub x25, x21, x10
	add x26, x0, -1
	seqz x27, x0
	add x18, x0, 25
	mv x11, x22
	jal x0, .LBB1_22
.LBB1_29:                               //    in Loop: Header=BB1_22 Depth=1
	mv x22, x10
	mv x11, x26
.LBB1_34:                               //  %for.inc
                                        //    in Loop: Header=BB1_22 Depth=1
	lw x20, 4 ( x24 )
	add x12, x24, 4
.LBB1_22:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x9, x20, -48
	mv x10, x22
	mv x24, x12
	sltiu x12, x9, 10
	bltu x0, x12, .LBB1_27
.LBB1_23:                               //  %if.else25
                                        //    in Loop: Header=BB1_22 Depth=1
	add x12, x20, -65
	bltu x18, x12, .LBB1_25
.LBB1_24:                               //  %if.then29
                                        //    in Loop: Header=BB1_22 Depth=1
	add x9, x20, -55
.LBB1_27:                               //  %if.end40
                                        //    in Loop: Header=BB1_22 Depth=1
	bge x9, x19, .LBB1_35
.LBB1_28:                               //  %if.end43
                                        //    in Loop: Header=BB1_22 Depth=1
	bltu fp, x10, .LBB1_29
.LBB1_30:                               //  %if.end43
                                        //    in Loop: Header=BB1_22 Depth=1
	blt x11, x0, .LBB1_29
.LBB1_31:                               //  %lor.lhs.false47
                                        //    in Loop: Header=BB1_22 Depth=1
	bne x10, fp, .LBB1_33
.LBB1_32:                               //  %lor.lhs.false47
                                        //    in Loop: Header=BB1_22 Depth=1
	mv x22, fp
	mv x11, x26
	blt x25, x9, .LBB1_34
.LBB1_33:                               //  %if.else52
                                        //    in Loop: Header=BB1_22 Depth=1
	mv x11, x19
	jal __mulsi3
	add x22, x10, x9
	mv x11, x27
	jal x0, .LBB1_34
.LBB1_25:                               //  %if.else31
                                        //    in Loop: Header=BB1_22 Depth=1
	add x12, x20, -97
	bltu x18, x12, .LBB1_35
.LBB1_26:                               //  %if.then35
                                        //    in Loop: Header=BB1_22 Depth=1
	add x9, x20, -87
	blt x9, x19, .LBB1_28
.LBB1_35:                               //  %for.end
	blt x11, x0, .LBB1_36
.LBB1_37:                               //  %if.else59
	lw x13, 20 ( sp )               //  4-byte Folded Reload
	mv x12, x0
	bne x13, x12, .LBB1_38
.LBB1_39:                               //  %if.else59
	mv x21, x10
	beq x0, x23, .LBB1_44
.LBB1_41:                               //  %if.then66
	mv x10, x0
	beq x11, x10, .LBB1_43
.LBB1_42:                               //  %if.then66
	sw x24, 24 ( sp )               //  4-byte Folded Spill
.LBB1_43:                               //  %if.then66
	lw x10, 24 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x23 )
.LBB1_44:                               //  %if.end70
	mv x10, x21
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
.LBB1_36:                               //  %if.then56
	lw x12, 16 ( sp )               //  4-byte Folded Reload
	add x10, x0, 34
	sw x10, 0 ( x12 )
	bltu x0, x23, .LBB1_41
	jal x0, .LBB1_44
.LBB1_38:
	sub x21, x0, x10
	bltu x0, x23, .LBB1_41
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
