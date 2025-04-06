	.text
	.file	"putc.c"
	.globl	_putc_r                 //  -- Begin function _putc_r
	.type	_putc_r,@function
_putc_r:                                //  @_putc_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x12
	mv x9, x11
	mv x18, x10
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x18, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x10, 56 ( x18 )
	bltu x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then
	mv x10, x18
	jal __sinit
.LBB0_3:                                //  %if.end
	lw x11, 8 ( fp )
	add x10, x11, -1
	sw x10, 8 ( fp )
	and x10, x9, 255
	blt x0, x11, .LBB0_6
.LBB0_4:                                //  %lor.lhs.false.i
	xor x12, x10, 10
	beq x0, x12, .LBB0_7
.LBB0_5:                                //  %lor.lhs.false.i
	lw x12, 24 ( fp )
	bge x12, x11, .LBB0_7
.LBB0_6:                                //  %if.then.i
	lw x11, 0 ( fp )
	add x12, x11, 1
	sw x12, 0 ( fp )
	sb x9, 0 ( x11 )
	jal x0, .LBB0_8
.LBB0_7:                                //  %if.else.i
	mv x10, x18
	mv x11, x9
	mv x12, fp
	jal __swbuf_r
.LBB0_8:                                //  %__sputc_r.exit
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_putc_r, .Lfunc_end0-_putc_r
	.cfi_endproc
                                        //  -- End function
	.globl	putc                    //  -- Begin function putc
	.type	putc,@function
putc:                                   //  @putc
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
	beq x0, x18, .LBB1_3
.LBB1_1:                                //  %land.lhs.true
	lw x10, 56 ( x18 )
	bltu x0, x10, .LBB1_3
.LBB1_2:                                //  %if.then
	mv x10, x18
	jal __sinit
.LBB1_3:                                //  %if.end
	lw x11, 8 ( fp )
	add x10, x11, -1
	sw x10, 8 ( fp )
	and x10, x9, 255
	blt x0, x11, .LBB1_6
.LBB1_4:                                //  %lor.lhs.false.i
	xor x12, x10, 10
	beq x0, x12, .LBB1_7
.LBB1_5:                                //  %lor.lhs.false.i
	lw x12, 24 ( fp )
	bge x12, x11, .LBB1_7
.LBB1_6:                                //  %if.then.i
	lw x11, 0 ( fp )
	add x12, x11, 1
	sw x12, 0 ( fp )
	sb x9, 0 ( x11 )
	jal x0, .LBB1_8
.LBB1_7:                                //  %if.else.i
	mv x10, x18
	mv x11, x9
	mv x12, fp
	jal __swbuf_r
.LBB1_8:                                //  %__sputc_r.exit
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	putc, .Lfunc_end1-putc
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
