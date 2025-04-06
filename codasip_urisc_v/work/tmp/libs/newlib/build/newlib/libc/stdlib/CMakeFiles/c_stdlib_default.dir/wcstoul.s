	.text
	.file	"wcstoul.c"
	.globl	_wcstoul_l              //  -- Begin function _wcstoul_l
	.type	_wcstoul_l,@function
_wcstoul_l:                             //  @_wcstoul_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x22, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	mv x19, x14
	mv x21, x13
	mv fp, x12
	mv x18, x10
	mv x22, x9
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
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
.LBB0_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x20, 0 ( x22 )
	mv x11, x19
	mv x10, x20
	jal iswspace_l
	add x22, x22, 4
	bltu x0, x10, .LBB0_1
.LBB0_2:                                //  %do.end
	xor x10, x20, 43
	beq x0, x10, .LBB0_6
.LBB0_3:                                //  %do.end
	xor x10, x20, 45
	bltu x0, x10, .LBB0_5
.LBB0_4:
	seqz x23, x0
	jal x0, .LBB0_7
.LBB0_6:                                //  %if.then3
	mv x23, x0
.LBB0_7:                                //  %if.end5.sink.split
	lw x20, 0 ( x22 )
	add x24, x22, 4
	and x10, x21, -17
	xor x11, x20, 48
	sw x18, 8 ( sp )                //  4-byte Folded Spill
	bltu x0, x10, .LBB0_14
.LBB0_9:                                //  %if.end5
	bltu x0, x11, .LBB0_14
.LBB0_10:                               //  %land.lhs.true9
	lw x10, 0 ( x24 )
	or x10, x10, 32
	xor x10, x10, 120
	bltu x0, x10, .LBB0_11
.LBB0_13:                               //  %if.end14.thread
	lw x20, 4 ( x24 )
	add x10, x24, 8
	add x19, x0, 16
	mv x24, x10
	jal x0, .LBB0_18
.LBB0_5:                                //  %do.end.if.end5_crit_edge
	mv x23, x0
	mv x24, x22
	and x10, x21, -17
	xor x11, x20, 48
	sw x18, 8 ( sp )                //  4-byte Folded Spill
	beq x0, x10, .LBB0_9
.LBB0_14:                               //  %if.end14
	seqz x10, x21
	beq x0, x11, .LBB0_12
.LBB0_15:
	add x19, x0, 10
	beq x0, x10, .LBB0_17
	jal x0, .LBB0_18
.LBB0_11:                               //  %if.end14.thread129
	seqz x10, x21
.LBB0_12:
	add x19, x0, 8
	add x20, x0, 48
	bltu x0, x10, .LBB0_18
.LBB0_17:
	mv x19, x21
.LBB0_18:
	add x21, x0, -1
	mv x10, x21
	mv x11, x19
	jal __udivsi3
	mv x11, x19
	mv x22, x10
	jal __mulsi3
	mv x12, x0
	add x13, x24, -4
	xor x25, x10, -1
	seqz x26, x0
	add x27, x0, 25
	mv x11, x12
	jal x0, .LBB0_19
.LBB0_26:                               //    in Loop: Header=BB0_19 Depth=1
	mv x12, x10
	mv x11, x21
.LBB0_31:                               //  %for.inc
                                        //    in Loop: Header=BB0_19 Depth=1
	lw x20, 4 ( x24 )
	add x13, x24, 4
.LBB0_19:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x18, x20, -48
	mv x10, x12
	mv x24, x13
	sltiu x12, x18, 10
	bltu x0, x12, .LBB0_24
.LBB0_20:                               //  %if.else23
                                        //    in Loop: Header=BB0_19 Depth=1
	add x12, x20, -65
	bltu x27, x12, .LBB0_22
.LBB0_21:                               //  %if.then27
                                        //    in Loop: Header=BB0_19 Depth=1
	add x18, x20, -55
.LBB0_24:                               //  %if.end38
                                        //    in Loop: Header=BB0_19 Depth=1
	bge x18, x19, .LBB0_32
.LBB0_25:                               //  %if.end41
                                        //    in Loop: Header=BB0_19 Depth=1
	bltu x22, x10, .LBB0_26
.LBB0_27:                               //  %if.end41
                                        //    in Loop: Header=BB0_19 Depth=1
	blt x11, x0, .LBB0_26
.LBB0_28:                               //  %lor.lhs.false45
                                        //    in Loop: Header=BB0_19 Depth=1
	bne x10, x22, .LBB0_30
.LBB0_29:                               //  %lor.lhs.false45
                                        //    in Loop: Header=BB0_19 Depth=1
	mv x12, x22
	mv x11, x21
	blt x25, x18, .LBB0_31
.LBB0_30:                               //  %if.else50
                                        //    in Loop: Header=BB0_19 Depth=1
	mv x11, x19
	jal __mulsi3
	add x12, x10, x18
	mv x11, x26
	jal x0, .LBB0_31
.LBB0_22:                               //  %if.else29
                                        //    in Loop: Header=BB0_19 Depth=1
	add x12, x20, -97
	bltu x27, x12, .LBB0_32
.LBB0_23:                               //  %if.then33
                                        //    in Loop: Header=BB0_19 Depth=1
	add x18, x20, -87
	blt x18, x19, .LBB0_25
.LBB0_32:                               //  %for.end
	blt x11, x0, .LBB0_33
.LBB0_34:                               //  %if.else55
	mv x12, x0
	beq x23, x12, .LBB0_36
.LBB0_35:                               //  %if.else55
	sub x10, x0, x10
.LBB0_36:                               //  %if.end60
	beq x0, fp, .LBB0_40
.LBB0_37:                               //  %if.then62
	mv x12, x0
	beq x11, x12, .LBB0_39
.LBB0_38:                               //  %if.then62
	mv x9, x24
.LBB0_39:                               //  %if.then62
	sw x9, 0 ( fp )
.LBB0_40:                               //  %if.end66
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
.LBB0_33:                               //  %if.then54
	lw x12, 8 ( sp )                //  4-byte Folded Reload
	add x10, x0, 34
	sw x10, 0 ( x12 )
	add x10, x0, -1
	bltu x0, fp, .LBB0_37
	jal x0, .LBB0_40
.Lfunc_end0:
	.size	_wcstoul_l, .Lfunc_end0-_wcstoul_l
	.cfi_endproc
                                        //  -- End function
	.globl	_wcstoul_r              //  -- Begin function _wcstoul_r
	.type	_wcstoul_r,@function
_wcstoul_r:                             //  @_wcstoul_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x14, %hi( __global_locale )
	add x14, x14, %lo( __global_locale )
	j _wcstoul_l
.Lfunc_end1:
	.size	_wcstoul_r, .Lfunc_end1-_wcstoul_r
	.cfi_endproc
                                        //  -- End function
	.globl	wcstoul_l               //  -- Begin function wcstoul_l
	.type	wcstoul_l,@function
wcstoul_l:                              //  @wcstoul_l
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
	j _wcstoul_l
.Lfunc_end2:
	.size	wcstoul_l, .Lfunc_end2-wcstoul_l
	.cfi_endproc
                                        //  -- End function
	.globl	wcstoul                 //  -- Begin function wcstoul
	.type	wcstoul,@function
wcstoul:                                //  @wcstoul
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
	j _wcstoul_l
.Lfunc_end3:
	.size	wcstoul, .Lfunc_end3-wcstoul
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
