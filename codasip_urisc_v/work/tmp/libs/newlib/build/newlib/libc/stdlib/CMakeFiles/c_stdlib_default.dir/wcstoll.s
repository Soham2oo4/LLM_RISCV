	.text
	.file	"wcstoll.c"
	.globl	_wcstoll_l              //  -- Begin function _wcstoll_l
	.type	_wcstoll_l,@function
_wcstoll_l:                             //  @_wcstoll_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw fp, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv x19, x14
	mv x20, x13
	mv x18, x12
	mv x21, x10
	mv fp, x11
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
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
	sw x11, 20 ( sp )               //  4-byte Folded Spill
.LBB0_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x22, 0 ( fp )
	mv x11, x19
	mv x10, x22
	jal iswspace_l
	add fp, fp, 4
	bltu x0, x10, .LBB0_1
.LBB0_2:                                //  %do.end
	xor x10, x22, 43
	beq x0, x10, .LBB0_6
.LBB0_3:                                //  %do.end
	xor x10, x22, 45
	bltu x0, x10, .LBB0_5
.LBB0_4:
	seqz x12, x0
	jal x0, .LBB0_7
.LBB0_6:                                //  %if.then3
	mv x12, x0
.LBB0_7:                                //  %if.end5.sink.split
	lw x22, 0 ( fp )
	add x9, fp, 4
	and x10, x20, -17
	xor x11, x22, 48
	bltu x0, x10, .LBB0_14
.LBB0_9:                                //  %if.end5
	bltu x0, x11, .LBB0_14
.LBB0_10:                               //  %land.lhs.true9
	lw x10, 0 ( x9 )
	or x10, x10, 32
	xor x10, x10, 120
	bltu x0, x10, .LBB0_11
.LBB0_13:                               //  %if.end14.thread
	lw x22, 4 ( x9 )
	add x10, x9, 8
	add x19, x0, 16
	mv x9, x10
	jal x0, .LBB0_18
.LBB0_5:                                //  %do.end.if.end5_crit_edge
	mv x12, x0
	mv x9, fp
	and x10, x20, -17
	xor x11, x22, 48
	beq x0, x10, .LBB0_9
.LBB0_14:                               //  %if.end14
	seqz x10, x20
	beq x0, x11, .LBB0_12
.LBB0_15:
	add x19, x0, 10
	beq x0, x10, .LBB0_17
	jal x0, .LBB0_18
.LBB0_11:                               //  %if.end14.thread153
	seqz x10, x20
.LBB0_12:
	add x19, x0, 8
	add x22, x0, 48
	bltu x0, x10, .LBB0_18
.LBB0_17:
	mv x19, x20
.LBB0_18:
	mv x24, x0
	add x27, x0, -1
	sw x18, 24 ( sp )               //  4-byte Folded Spill
	sw x21, 12 ( sp )               //  4-byte Folded Spill
	sw x12, 16 ( sp )               //  4-byte Folded Spill
	bne x12, x24, .LBB0_19
.LBB0_20:
	lui x10, %hi( 2147483647 )
	add x11, x10, %lo( 2147483647 )
	mv fp, x27
	jal x0, .LBB0_21
.LBB0_19:
	lui x10, %hi( -2147483648 )
	add x11, x10, %lo( -2147483648 )
	mv fp, x24
.LBB0_21:
	sra x23, x19, 31&31
	mv x10, fp
	mv x12, x19
	mv x13, x23
	sw x11, 8 ( sp )                //  4-byte Folded Spill
	jal __udivdi3
	mv x12, x19
	mv x13, x23
	mv x20, x10
	mv x25, x11
	jal __muldi3
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	sub fp, fp, x10
	add x14, x9, -4
	seqz x18, x0
	add x26, x0, 25
	mv x13, x24
	mv x12, x24
	jal x0, .LBB0_22
.LBB0_32:                               //    in Loop: Header=BB0_22 Depth=1
	mv x24, x10
	mv x13, x11
	mv x12, x27
.LBB0_37:                               //  %for.inc
                                        //    in Loop: Header=BB0_22 Depth=1
	lw x22, 4 ( x9 )
	add x14, x9, 4
.LBB0_22:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x21, x22, -48
	mv x11, x13
	mv x10, x24
	mv x9, x14
	sltiu x13, x21, 10
	bltu x0, x13, .LBB0_27
.LBB0_23:                               //  %if.else29
                                        //    in Loop: Header=BB0_22 Depth=1
	add x13, x22, -65
	bltu x26, x13, .LBB0_25
.LBB0_24:                               //  %if.then35
                                        //    in Loop: Header=BB0_22 Depth=1
	add x21, x22, -55
.LBB0_27:                               //  %if.end48
                                        //    in Loop: Header=BB0_22 Depth=1
	bge x21, x19, .LBB0_38
.LBB0_28:                               //  %if.end52
                                        //    in Loop: Header=BB0_22 Depth=1
	beq x11, x25, .LBB0_29
.LBB0_30:                               //  %if.end52
                                        //    in Loop: Header=BB0_22 Depth=1
	sltu x13, x25, x11
	bltu x0, x13, .LBB0_32
.LBB0_33:                               //  %if.end52
                                        //    in Loop: Header=BB0_22 Depth=1
	blt x12, x0, .LBB0_32
.LBB0_34:                               //  %lor.lhs.false58
                                        //    in Loop: Header=BB0_22 Depth=1
	xor x12, x20, x10
	xor x13, x25, x11
	or x12, x13, x12
	bltu x0, x12, .LBB0_36
.LBB0_35:                               //  %lor.lhs.false58
                                        //    in Loop: Header=BB0_22 Depth=1
	mv x24, x20
	mv x13, x25
	mv x12, x27
	blt fp, x21, .LBB0_37
.LBB0_36:                               //  %if.else65
                                        //    in Loop: Header=BB0_22 Depth=1
	mv x12, x19
	mv x13, x23
	jal __muldi3
	add x24, x21, x10
	sra x12, x21, 31&31
	add x11, x12, x11
	sltu x10, x24, x10
	add x13, x10, x11
	mv x12, x18
	jal x0, .LBB0_37
.LBB0_29:                               //    in Loop: Header=BB0_22 Depth=1
	sltu x13, x20, x10
	beq x0, x13, .LBB0_33
	jal x0, .LBB0_32
.LBB0_25:                               //  %if.else37
                                        //    in Loop: Header=BB0_22 Depth=1
	add x13, x22, -97
	bltu x26, x13, .LBB0_38
.LBB0_26:                               //  %if.then43
                                        //    in Loop: Header=BB0_22 Depth=1
	add x21, x22, -87
	blt x21, x19, .LBB0_28
.LBB0_38:                               //  %for.end
	blt x12, x0, .LBB0_39
.LBB0_40:                               //  %if.else75
	lw x14, 16 ( sp )               //  4-byte Folded Reload
	mv x13, x0
	bne x14, x13, .LBB0_41
.LBB0_42:                               //  %if.else75
	mv x14, x10
	lw x13, 24 ( sp )               //  4-byte Folded Reload
	bltu x0, x13, .LBB0_45
	jal x0, .LBB0_48
.LBB0_39:                               //  %if.then72
	lw x11, 12 ( sp )               //  4-byte Folded Reload
	add x10, x0, 34
	lw x13, 24 ( sp )               //  4-byte Folded Reload
	lw x14, 4 ( sp )                //  4-byte Folded Reload
	sw x10, 0 ( x11 )
	lw x11, 8 ( sp )                //  4-byte Folded Reload
	beq x0, x13, .LBB0_48
.LBB0_45:                               //  %if.then83
	mv x10, x0
	beq x12, x10, .LBB0_47
.LBB0_46:                               //  %if.then83
	sw x9, 20 ( sp )                //  4-byte Folded Spill
.LBB0_47:                               //  %if.then83
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x13 )
	jal x0, .LBB0_48
.LBB0_41:
	sub x14, x0, x10
	snez x10, x10
	add x10, x10, x11
	sub x11, x0, x10
	lw x13, 24 ( sp )               //  4-byte Folded Reload
	bltu x0, x13, .LBB0_45
.LBB0_48:                               //  %if.end87
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
.Lfunc_end0:
	.size	_wcstoll_l, .Lfunc_end0-_wcstoll_l
	.cfi_endproc
                                        //  -- End function
	.globl	_wcstoll_r              //  -- Begin function _wcstoll_r
	.type	_wcstoll_r,@function
_wcstoll_r:                             //  @_wcstoll_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x14, %hi( __global_locale )
	add x14, x14, %lo( __global_locale )
	j _wcstoll_l
.Lfunc_end1:
	.size	_wcstoll_r, .Lfunc_end1-_wcstoll_r
	.cfi_endproc
                                        //  -- End function
	.globl	wcstoll_l               //  -- Begin function wcstoll_l
	.type	wcstoll_l,@function
wcstoll_l:                              //  @wcstoll_l
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
	j _wcstoll_l
.Lfunc_end2:
	.size	wcstoll_l, .Lfunc_end2-wcstoll_l
	.cfi_endproc
                                        //  -- End function
	.globl	wcstoll                 //  -- Begin function wcstoll
	.type	wcstoll,@function
wcstoll:                                //  @wcstoll
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
	j _wcstoll_l
.Lfunc_end3:
	.size	wcstoll, .Lfunc_end3-wcstoll
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
