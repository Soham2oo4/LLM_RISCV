	.text
	.file	"fgetwc.c"
	.globl	__fgetwc                //  -- Begin function __fgetwc
	.type	__fgetwc,@function
__fgetwc:                               //  @__fgetwc
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x11
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lw x10, 4 ( fp )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	bge x0, x10, .LBB0_1
.LBB0_2:                                //  %if.end
	jal __locale_mb_cur_max
	xor x10, x10, 1
	bltu x0, x10, .LBB0_3
.LBB0_13:                               //  %if.then3
	lw x10, 0 ( fp )
	add x11, x10, 1
	sw x11, 0 ( fp )
	lw x11, 4 ( fp )
	lbu x10, 0 ( x10 )
	add x11, x11, -1
	sw x11, 4 ( fp )
	sw x10, 8 ( sp )
	jal x0, .LBB0_12
.LBB0_3:                                //  %do.body.preheader
	add x18, fp, 92
	add x19, sp, 8
.LBB0_4:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x13, 4 ( fp )
	lw x12, 0 ( fp )
	mv x10, x9
	mv x11, x19
	mv x14, x18
	jal _mbrtowc_r
	xor x11, x10, -2
	bltu x0, x11, .LBB0_5
.LBB0_9:                                //  %do.cond
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x10, x9
	mv x11, fp
	jal __srefill_r
	beq x0, x10, .LBB0_4
	jal x0, .LBB0_10
.LBB0_1:                                //  %land.lhs.true
	mv x10, x9
	mv x11, fp
	jal __srefill_r
	bltu x0, x10, .LBB0_11
	jal x0, .LBB0_2
.LBB0_5:                                //  %do.body
	xor x11, x10, -1
	beq x0, x11, .LBB0_10
.LBB0_6:                                //  %do.body
	bltu x0, x10, .LBB0_8
.LBB0_7:                                //  %if.then18
	lw x10, 0 ( fp )
	add x10, x10, 1
	sw x10, 0 ( fp )
	lw x10, 4 ( fp )
	add x10, x10, -1
	sw x10, 4 ( fp )
	mv x10, x0
	jal x0, .LBB0_12
.LBB0_10:                               //  %do.end
	lh x10, 12 ( fp )
	or x10, x10, 64
	sh x10, 12 ( fp )
	jal __errno
	add x11, x0, 138
	sw x11, 0 ( x10 )
.LBB0_11:                               //  %cleanup
	add x10, x0, -1
.LBB0_12:                               //  %cleanup
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_8:                                //  %if.else23
	lw x11, 0 ( fp )
	add x11, x10, x11
	sw x11, 0 ( fp )
	lw x11, 4 ( fp )
	sub x10, x11, x10
	sw x10, 4 ( fp )
	lw x10, 8 ( sp )
	jal x0, .LBB0_12
.Lfunc_end0:
	.size	__fgetwc, .Lfunc_end0-__fgetwc
	.cfi_endproc
                                        //  -- End function
	.globl	_fgetwc_r               //  -- Begin function _fgetwc_r
	.type	_fgetwc_r,@function
_fgetwc_r:                              //  @_fgetwc_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lhu x13, 12 ( x11 )
	lui x12, (8192>>12)&1048575
	and x14, x12, x13
	bltu x0, x14, .LBB1_2
.LBB1_1:                                //  %if.then7
	or x13, x12, x13
	sh x13, 12 ( x11 )
	lw x13, 100 ( x11 )
	or x12, x12, x13
	sw x12, 100 ( x11 )
.LBB1_2:                                //  %do.end
	j __fgetwc
.Lfunc_end1:
	.size	_fgetwc_r, .Lfunc_end1-_fgetwc_r
	.cfi_endproc
                                        //  -- End function
	.globl	fgetwc                  //  -- Begin function fgetwc
	.type	fgetwc,@function
fgetwc:                                 //  @fgetwc
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x9, 0 ( x10 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x9, .LBB2_3
.LBB2_1:                                //  %land.lhs.true
	lw x10, 56 ( x9 )
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
.LBB2_5:                                //  %_fgetwc_r.exit
	mv x10, x9
	mv x11, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	j __fgetwc
.LBB2_2:                                //  %if.then
	mv x10, x9
	jal __sinit
	lhu x11, 12 ( fp )
	lui x10, (8192>>12)&1048575
	and x12, x10, x11
	beq x0, x12, .LBB2_4
	jal x0, .LBB2_5
.Lfunc_end2:
	.size	fgetwc, .Lfunc_end2-fgetwc
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
