	.text
	.file	"fputwc.c"
	.globl	__fputwc                //  -- Begin function __fputwc
	.type	__fputwc,@function
__fputwc:                               //  @__fputwc
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x9, x12
	mv fp, x11
	mv x18, x10
	jal __locale_mb_cur_max
	add x11, fp, -1
	add x12, x0, 254
	bltu x12, x11, .LBB0_9
.LBB0_1:                                //  %entry
	xor x10, x10, 1
	bltu x0, x10, .LBB0_9
.LBB0_2:                                //  %if.end11.thread
	seqz x19, x0
	sb fp, 7 ( sp )
	jal x0, .LBB0_3
.LBB0_9:                                //  %if.else
	add x13, x9, 92
	add x11, sp, 7
	mv x10, x18
	mv x12, fp
	jal _wcrtomb_r
	mv x19, x10
	beq x0, x19, .LBB0_14
.LBB0_10:                               //  %if.else
	xor x10, x19, -1
	bltu x0, x10, .LBB0_3
.LBB0_11:                               //  %if.then8
	lh x10, 12 ( x9 )
	add fp, x0, -1
	or x10, x10, 64
	sh x10, 12 ( x9 )
	jal x0, .LBB0_14
.LBB0_3:                                //  %for.body.lr.ph
	add x20, x0, -1
	jal x0, .LBB0_4
.LBB0_7:                                //  %__sputc_r.exit.thread
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x9 )
	add x12, x10, 1
	sw x12, 0 ( x9 )
	sb x11, 0 ( x10 )
.LBB0_8:                                //  %for.inc
                                        //    in Loop: Header=BB0_4 Depth=1
	add x19, x19, -1
	beq x0, x19, .LBB0_14
.LBB0_4:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 8 ( x9 )
	add x11, x10, -1
	sw x11, 8 ( x9 )
	lbu x11, 7 ( sp )
	blt x0, x10, .LBB0_7
.LBB0_5:                                //  %lor.lhs.false.i
                                        //    in Loop: Header=BB0_4 Depth=1
	xor x12, x11, 10
	beq x0, x12, .LBB0_12
.LBB0_6:                                //  %lor.lhs.false.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x12, 24 ( x9 )
	blt x12, x10, .LBB0_7
.LBB0_12:                               //  %__sputc_r.exit
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x18
	mv x12, x9
	jal __swbuf_r
	xor x10, x10, -1
	bltu x0, x10, .LBB0_8
.LBB0_13:
	mv fp, x20
.LBB0_14:                               //  %cleanup
	mv x10, fp
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
	.size	__fputwc, .Lfunc_end0-__fputwc
	.cfi_endproc
                                        //  -- End function
	.globl	_fputwc_r               //  -- Begin function _fputwc_r
	.type	_fputwc_r,@function
_fputwc_r:                              //  @_fputwc_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lhu x14, 12 ( x12 )
	lui x13, (8192>>12)&1048575
	and x15, x13, x14
	bltu x0, x15, .LBB1_2
.LBB1_1:                                //  %if.then7
	or x14, x13, x14
	sh x14, 12 ( x12 )
	lw x14, 100 ( x12 )
	or x13, x13, x14
	sw x13, 100 ( x12 )
.LBB1_2:                                //  %do.end
	j __fputwc
.Lfunc_end1:
	.size	_fputwc_r, .Lfunc_end1-_fputwc_r
	.cfi_endproc
                                        //  -- End function
	.globl	fputwc                  //  -- Begin function fputwc
	.type	fputwc,@function
fputwc:                                 //  @fputwc
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x18, 0 ( x10 )
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x11
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x18, .LBB2_3
.LBB2_1:                                //  %land.lhs.true
	lw x10, 56 ( x18 )
	beq x0, x10, .LBB2_2
.LBB2_3:                                //  %if.end
	lhu x11, 12 ( fp )
	lui x10, (8192>>12)&1048575
	and x12, x10, x11
	bltu x0, x12, .LBB2_5
.LBB2_4:                                //  %if.then7.i
	or x11, x10, x11
	sh x11, 12 ( fp )
	lw x11, 100 ( fp )
	or x10, x10, x11
	sw x10, 100 ( fp )
.LBB2_5:                                //  %_fputwc_r.exit
	mv x10, x18
	mv x11, x9
	mv x12, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	j __fputwc
.LBB2_2:                                //  %if.then
	mv x10, x18
	jal __sinit
	lhu x11, 12 ( fp )
	lui x10, (8192>>12)&1048575
	and x12, x10, x11
	beq x0, x12, .LBB2_4
	jal x0, .LBB2_5
.Lfunc_end2:
	.size	fputwc, .Lfunc_end2-fputwc
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
