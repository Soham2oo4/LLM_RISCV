	.text
	.file	"wcsnrtombs.c"
	.globl	_wcsnrtombs_l           //  -- Begin function _wcsnrtombs_l
	.type	_wcsnrtombs_l,@function
_wcsnrtombs_l:                          //  @_wcsnrtombs_l
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
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw fp, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv x21, x10
	mv x19, x16
	mv fp, x15
	mv x20, x14
	mv x22, x13
	mv x9, x12
	mv x10, x0
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
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
	sw x11, 12 ( sp )               //  4-byte Folded Spill
	bne x11, x10, .LBB0_2
.LBB0_1:
	add x20, x0, -1
.LBB0_2:                                //  %entry
	beq x0, x20, .LBB0_28
.LBB0_3:                                //  %land.rhs.lr.ph
	lw x24, 0 ( x9 )
	lw x25, 12 ( sp )               //  4-byte Folded Reload
	beq x0, x25, .LBB0_13
.LBB0_4:                                //  %land.rhs.us.preheader
	mv x26, x0
	add x23, sp, 18
.LBB0_5:                                //  %land.rhs.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_10 Depth 2
	beq x0, x22, .LBB0_23
.LBB0_6:                                //  %while.body.us
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x12, 0 ( x24 )
	lw x14, 224 ( x19 )
	lw x18, 4 ( fp )
	lw x27, 0 ( fp )
	mv x10, x21
	mv x11, x23
	mv x13, fp
	call.reg x14
	mv x11, x10
	xor x10, x11, -1
	beq x0, x10, .LBB0_19
.LBB0_7:                                //  %if.end6.us
                                        //    in Loop: Header=BB0_5 Depth=1
	add x10, x26, x11
	bltu x20, x10, .LBB0_24
.LBB0_8:                                //  %for.cond.preheader.us
                                        //    in Loop: Header=BB0_5 Depth=1
	bge x0, x11, .LBB0_11
.LBB0_9:                                //  %for.body.us.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	mv x12, x23
.LBB0_10:                               //  %for.body.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lb x13, 0 ( x12 )
	add x12, x12, 1
	add x11, x11, -1
	sb x13, 0 ( x25 )
	add x25, x25, 1
	bltu x0, x11, .LBB0_10
.LBB0_11:                               //  %for.end.us
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x11, 0 ( x9 )
	add x11, x11, 4
	sw x11, 0 ( x9 )
	lw x11, 0 ( x24 )
	beq x0, x11, .LBB0_20
.LBB0_12:                               //  %cleanup.us
                                        //    in Loop: Header=BB0_5 Depth=1
	add x22, x22, -1
	add x24, x24, 4
	mv x26, x10
	bltu x10, x20, .LBB0_5
	jal x0, .LBB0_28
.LBB0_13:                               //  %land.rhs.preheader
	add x23, x22, 1
	mv x25, x0
	add x22, sp, 18
.LBB0_14:                               //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	add x23, x23, -1
	beq x0, x23, .LBB0_27
.LBB0_15:                               //  %while.body
                                        //    in Loop: Header=BB0_14 Depth=1
	lw x12, 0 ( x24 )
	lw x14, 224 ( x19 )
	lw x26, 4 ( fp )
	lw x18, 0 ( fp )
	mv x10, x21
	mv x11, x22
	mv x13, fp
	call.reg x14
	xor x11, x10, -1
	beq x0, x11, .LBB0_19
.LBB0_16:                               //  %if.end6
                                        //    in Loop: Header=BB0_14 Depth=1
	add x10, x25, x10
	bltu x20, x10, .LBB0_26
.LBB0_17:                               //  %if.end13
                                        //    in Loop: Header=BB0_14 Depth=1
	lw x11, 0 ( x24 )
	beq x0, x11, .LBB0_20
.LBB0_18:                               //  %cleanup
                                        //    in Loop: Header=BB0_14 Depth=1
	add x24, x24, 4
	mv x25, x10
	bltu x10, x20, .LBB0_14
	jal x0, .LBB0_28
.LBB0_19:                               //  %if.then4
	add x10, x0, 138
	sw x10, 0 ( x21 )
	sw x0, 0 ( fp )
	add x10, x0, -1
	jal x0, .LBB0_28
.LBB0_20:
	lw x11, 12 ( sp )               //  4-byte Folded Reload
	beq x0, x11, .LBB0_22
.LBB0_21:                               //  %if.then18
	sw x0, 0 ( x9 )
.LBB0_22:                               //  %if.end19
	sw x0, 0 ( fp )
	add x10, x10, -1
	jal x0, .LBB0_28
.LBB0_23:
	mv x10, x26
	jal x0, .LBB0_28
.LBB0_24:                               //  %cleanup.us.thread
	sw x18, 4 ( fp )
	sw x27, 0 ( fp )
	mv x10, x26
	jal x0, .LBB0_28
.LBB0_26:                               //  %cleanup.thread
	sw x26, 4 ( fp )
	sw x18, 0 ( fp )
.LBB0_27:                               //  %cleanup28
	mv x10, x25
.LBB0_28:                               //  %cleanup28
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
.Lfunc_end0:
	.size	_wcsnrtombs_l, .Lfunc_end0-_wcsnrtombs_l
	.cfi_endproc
                                        //  -- End function
	.globl	_wcsnrtombs_r           //  -- Begin function _wcsnrtombs_r
	.type	_wcsnrtombs_r,@function
_wcsnrtombs_r:                          //  @_wcsnrtombs_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	lui x16, %hi( __global_locale )
	add x16, x16, %lo( __global_locale )
	j _wcsnrtombs_l
.Lfunc_end1:
	.size	_wcsnrtombs_r, .Lfunc_end1-_wcsnrtombs_r
	.cfi_endproc
                                        //  -- End function
	.globl	wcsnrtombs              //  -- Begin function wcsnrtombs
	.type	wcsnrtombs,@function
wcsnrtombs:                             //  @wcsnrtombs
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x15, x14
	mv x14, x13
	mv x13, x12
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	lui x16, %hi( __global_locale )
	add x16, x16, %lo( __global_locale )
	j _wcsnrtombs_l
.Lfunc_end2:
	.size	wcsnrtombs, .Lfunc_end2-wcsnrtombs
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
