	.text
	.file	"wcstoull.c"
	.globl	_wcstoull_l             //  -- Begin function _wcstoull_l
	.type	_wcstoull_l,@function
_wcstoull_l:                            //  @_wcstoull_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	mv x23, x10
	mv x19, x14
	mv x21, x13
	mv x22, x12
	mv x9, x11
	add x10, x0, 36
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
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
	bltu x10, x21, .LBB0_47
.LBB0_1:                                //  %entry
	xor x10, x21, 1
	beq x0, x10, .LBB0_47
.LBB0_2:
	mv x18, x9
.LBB0_3:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x20, 0 ( x18 )
	mv x11, x19
	mv x10, x20
	jal iswspace_l
	add x18, x18, 4
	bltu x0, x10, .LBB0_3
.LBB0_4:                                //  %do.end
	xor x10, x20, 43
	beq x0, x10, .LBB0_8
.LBB0_5:                                //  %do.end
	xor x10, x20, 45
	bltu x0, x10, .LBB0_7
.LBB0_6:
	seqz x12, x0
	jal x0, .LBB0_9
.LBB0_47:                               //  %if.then
	add x10, x0, 22
	mv x12, x0
	sw x10, 0 ( x23 )
	mv x11, x12
	jal x0, .LBB0_46
.LBB0_8:                                //  %if.then8
	mv x12, x0
.LBB0_9:                                //  %if.end11.sink.split
	lw x20, 0 ( x18 )
	add fp, x18, 4
	jal x0, .LBB0_10
.LBB0_7:                                //  %do.end.if.end11_crit_edge
	mv x12, x0
	mv fp, x18
.LBB0_10:                               //  %if.end11
	and x10, x21, -17
	xor x11, x20, 48
	sw x22, 24 ( sp )               //  4-byte Folded Spill
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	sw x12, 20 ( sp )               //  4-byte Folded Spill
	bltu x0, x10, .LBB0_16
.LBB0_11:                               //  %if.end11
	bltu x0, x11, .LBB0_16
.LBB0_12:                               //  %land.lhs.true16
	lw x10, 0 ( fp )
	or x10, x10, 32
	xor x10, x10, 120
	bltu x0, x10, .LBB0_13
.LBB0_15:                               //  %if.end21.thread
	lw x20, 4 ( fp )
	add x10, fp, 8
	add x19, x0, 16
	mv fp, x10
	jal x0, .LBB0_20
.LBB0_16:                               //  %if.end21
	seqz x10, x21
	beq x0, x11, .LBB0_14
.LBB0_17:
	add x19, x0, 10
	beq x0, x10, .LBB0_19
	jal x0, .LBB0_20
.LBB0_13:                               //  %if.end21.thread166
	seqz x10, x21
.LBB0_14:
	add x19, x0, 8
	add x20, x0, 48
	bltu x0, x10, .LBB0_20
.LBB0_19:
	mv x19, x21
.LBB0_20:
	add x21, x0, -1
	sra x22, x19, 31&31
	mv x11, x21
	mv x10, x21
	mv x12, x19
	mv x13, x22
	jal __udivdi3
	mv x12, x19
	mv x13, x22
	mv x23, x10
	mv x24, x11
	jal __muldi3
	mv x12, x0
	add x15, fp, -4
	xor x27, x10, -1
	seqz x25, x0
	add fp, x0, 25
	mv x14, x12
	mv x13, x12
	jal x0, .LBB0_21
.LBB0_31:                               //    in Loop: Header=BB0_21 Depth=1
	mv x12, x10
	mv x14, x11
	mv x13, x21
.LBB0_36:                               //  %for.inc
                                        //    in Loop: Header=BB0_21 Depth=1
	lw x20, 4 ( x26 )
	add x15, x26, 4
.LBB0_21:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x18, x20, -48
	mv x11, x14
	mv x10, x12
	mv x26, x15
	sltiu x12, x18, 10
	bltu x0, x12, .LBB0_26
.LBB0_22:                               //  %if.else34
                                        //    in Loop: Header=BB0_21 Depth=1
	add x12, x20, -65
	bltu fp, x12, .LBB0_24
.LBB0_23:                               //  %if.then40
                                        //    in Loop: Header=BB0_21 Depth=1
	add x18, x20, -55
.LBB0_26:                               //  %if.end53
                                        //    in Loop: Header=BB0_21 Depth=1
	bge x18, x19, .LBB0_37
.LBB0_27:                               //  %if.end57
                                        //    in Loop: Header=BB0_21 Depth=1
	beq x11, x24, .LBB0_28
.LBB0_29:                               //  %if.end57
                                        //    in Loop: Header=BB0_21 Depth=1
	sltu x12, x24, x11
	bltu x0, x12, .LBB0_31
.LBB0_32:                               //  %if.end57
                                        //    in Loop: Header=BB0_21 Depth=1
	blt x13, x0, .LBB0_31
.LBB0_33:                               //  %lor.lhs.false63
                                        //    in Loop: Header=BB0_21 Depth=1
	xor x12, x23, x10
	xor x13, x24, x11
	or x12, x13, x12
	bltu x0, x12, .LBB0_35
.LBB0_34:                               //  %lor.lhs.false63
                                        //    in Loop: Header=BB0_21 Depth=1
	mv x12, x23
	mv x14, x24
	mv x13, x21
	blt x27, x18, .LBB0_36
.LBB0_35:                               //  %if.else70
                                        //    in Loop: Header=BB0_21 Depth=1
	mv x12, x19
	mv x13, x22
	jal __muldi3
	sra x12, x18, 31&31
	add x11, x12, x11
	add x12, x18, x10
	sltu x10, x12, x10
	add x14, x10, x11
	mv x13, x25
	jal x0, .LBB0_36
.LBB0_28:                               //    in Loop: Header=BB0_21 Depth=1
	sltu x12, x23, x10
	beq x0, x12, .LBB0_32
	jal x0, .LBB0_31
.LBB0_24:                               //  %if.else42
                                        //    in Loop: Header=BB0_21 Depth=1
	add x12, x20, -97
	bltu fp, x12, .LBB0_37
.LBB0_25:                               //  %if.then48
                                        //    in Loop: Header=BB0_21 Depth=1
	add x18, x20, -87
	blt x18, x19, .LBB0_27
.LBB0_37:                               //  %for.end
	blt x13, x0, .LBB0_38
.LBB0_39:                               //  %if.else79
	lw x14, 20 ( sp )               //  4-byte Folded Reload
	mv x12, x0
	beq x14, x12, .LBB0_40
.LBB0_41:                               //  %if.else79
	sub x12, x0, x10
	snez x10, x10
	add x10, x10, x11
	sub x11, x0, x10
	lw x14, 24 ( sp )               //  4-byte Folded Reload
	beq x0, x14, .LBB0_46
.LBB0_43:                               //  %if.then87
	mv x10, x0
	beq x13, x10, .LBB0_45
.LBB0_44:                               //  %if.then87
	mv x9, x26
.LBB0_45:                               //  %if.then87
	sw x9, 0 ( x14 )
.LBB0_46:                               //  %cleanup
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
.LBB0_38:                               //  %if.then77
	lw x11, 16 ( sp )               //  4-byte Folded Reload
	add x10, x0, 34
	add x12, x0, -1
	sw x10, 0 ( x11 )
	mv x11, x12
	lw x14, 24 ( sp )               //  4-byte Folded Reload
	bltu x0, x14, .LBB0_43
	jal x0, .LBB0_46
.LBB0_40:
	mv x12, x10
	lw x14, 24 ( sp )               //  4-byte Folded Reload
	bltu x0, x14, .LBB0_43
	jal x0, .LBB0_46
.Lfunc_end0:
	.size	_wcstoull_l, .Lfunc_end0-_wcstoull_l
	.cfi_endproc
                                        //  -- End function
	.globl	_wcstoull_r             //  -- Begin function _wcstoull_r
	.type	_wcstoull_r,@function
_wcstoull_r:                            //  @_wcstoull_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x14, %hi( __global_locale )
	add x14, x14, %lo( __global_locale )
	j _wcstoull_l
.Lfunc_end1:
	.size	_wcstoull_r, .Lfunc_end1-_wcstoull_r
	.cfi_endproc
                                        //  -- End function
	.globl	wcstoull_l              //  -- Begin function wcstoull_l
	.type	wcstoull_l,@function
wcstoull_l:                             //  @wcstoull_l
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
	j _wcstoull_l
.Lfunc_end2:
	.size	wcstoull_l, .Lfunc_end2-wcstoull_l
	.cfi_endproc
                                        //  -- End function
	.globl	wcstoull                //  -- Begin function wcstoull
	.type	wcstoull,@function
wcstoull:                               //  @wcstoull
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
	j _wcstoull_l
.Lfunc_end3:
	.size	wcstoull, .Lfunc_end3-wcstoull
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
