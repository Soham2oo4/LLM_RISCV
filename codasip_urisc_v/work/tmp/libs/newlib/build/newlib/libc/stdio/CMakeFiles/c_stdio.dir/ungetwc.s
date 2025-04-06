	.text
	.file	"ungetwc.c"
	.globl	_ungetwc_r              //  -- Begin function _ungetwc_r
	.type	_ungetwc_r,@function
_ungetwc_r:                             //  @_ungetwc_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x12
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	lhu x11, 12 ( fp )
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x10
	lui x10, (8192>>12)&1048575
	and x12, x10, x11
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	bltu x0, x12, .LBB0_2
.LBB0_1:                                //  %if.then7
	or x11, x10, x11
	sh x11, 12 ( fp )
	lw x11, 100 ( fp )
	or x10, x10, x11
	sw x10, 100 ( fp )
.LBB0_2:                                //  %do.end
	add x18, x0, -1
	xor x10, x9, -1
	beq x0, x10, .LBB0_8
.LBB0_3:                                //  %if.else
	add x13, fp, 92
	add x11, sp, 7
	mv x10, x19
	mv x12, x9
	jal _wcrtomb_r
	xor x11, x10, -1
	beq x0, x11, .LBB0_9
.LBB0_4:                                //  %while.cond.preheader
	add x20, x10, 1
.LBB0_5:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x20, x20, -1
	beq x0, x20, .LBB0_6
.LBB0_7:                                //  %while.body
                                        //    in Loop: Header=BB0_5 Depth=1
	lbu x11, 7 ( sp )
	mv x10, x19
	mv x12, fp
	jal _ungetc_r
	xor x10, x10, -1
	bltu x0, x10, .LBB0_5
	jal x0, .LBB0_8
.LBB0_9:                                //  %if.then18
	lh x10, 12 ( fp )
	or x10, x10, 64
	sh x10, 12 ( fp )
	jal x0, .LBB0_8
.LBB0_6:
	mv x18, x9
.LBB0_8:                                //  %if.end33
	mv x10, x18
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_ungetwc_r, .Lfunc_end0-_ungetwc_r
	.cfi_endproc
                                        //  -- End function
	.globl	ungetwc                 //  -- Begin function ungetwc
	.type	ungetwc,@function
ungetwc:                                //  @ungetwc
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x18, 0 ( x10 )
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x11
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	beq x0, x18, .LBB1_3
.LBB1_1:                                //  %land.lhs.true
	lw x10, 56 ( x18 )
	beq x0, x10, .LBB1_2
.LBB1_3:                                //  %if.end
	lhu x11, 12 ( fp )
	lui x10, (8192>>12)&1048575
	and x12, x10, x11
	bltu x0, x12, .LBB1_5
.LBB1_4:                                //  %if.then7.i
	or x11, x10, x11
	sh x11, 12 ( fp )
	lw x11, 100 ( fp )
	or x10, x10, x11
	sw x10, 100 ( fp )
.LBB1_5:                                //  %do.end.i
	add x19, x0, -1
	xor x10, x9, -1
	beq x0, x10, .LBB1_11
.LBB1_6:                                //  %if.else.i
	add x13, fp, 92
	add x11, sp, 7
	mv x10, x18
	mv x12, x9
	jal _wcrtomb_r
	xor x11, x10, -1
	beq x0, x11, .LBB1_12
.LBB1_7:                                //  %while.cond.i.preheader
	add x20, x10, 1
.LBB1_8:                                //  %while.cond.i
                                        //  =>This Inner Loop Header: Depth=1
	add x20, x20, -1
	beq x0, x20, .LBB1_9
.LBB1_10:                               //  %while.body.i
                                        //    in Loop: Header=BB1_8 Depth=1
	lbu x11, 7 ( sp )
	mv x10, x18
	mv x12, fp
	jal _ungetc_r
	xor x10, x10, -1
	bltu x0, x10, .LBB1_8
	jal x0, .LBB1_11
.LBB1_2:                                //  %if.then
	mv x10, x18
	jal __sinit
	lhu x11, 12 ( fp )
	lui x10, (8192>>12)&1048575
	and x12, x10, x11
	beq x0, x12, .LBB1_4
	jal x0, .LBB1_5
.LBB1_12:                               //  %if.then18.i
	lh x10, 12 ( fp )
	or x10, x10, 64
	sh x10, 12 ( fp )
	jal x0, .LBB1_11
.LBB1_9:
	mv x19, x9
.LBB1_11:                               //  %_ungetwc_r.exit
	mv x10, x19
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	ungetwc, .Lfunc_end1-ungetwc
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
