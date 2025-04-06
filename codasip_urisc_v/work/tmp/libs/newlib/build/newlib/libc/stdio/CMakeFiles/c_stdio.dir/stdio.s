	.text
	.file	"stdio.c"
	.globl	__sread                 //  -- Begin function __sread
	.type	__sread,@function
__sread:                                //  @__sread
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x11
	lh x11, 14 ( fp )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _read_r
	blt x10, x0, .LBB0_2
.LBB0_1:                                //  %if.then
	lw x11, 80 ( fp )
	add x11, x10, x11
	sw x11, 80 ( fp )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_2:                                //  %if.else
	lhu x11, 12 ( fp )
	lui x12, %hi( 61439 )
	add x12, x12, %lo( 61439 )
	and x11, x12, x11
	sh x11, 12 ( fp )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__sread, .Lfunc_end0-__sread
	.cfi_endproc
                                        //  -- End function
	.globl	__seofread              //  -- Begin function __seofread
	.type	__seofread,@function
__seofread:                             //  @__seofread
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x10, x0
	jr ra
.Lfunc_end1:
	.size	__seofread, .Lfunc_end1-__seofread
	.cfi_endproc
                                        //  -- End function
	.globl	__swrite                //  -- Begin function __swrite
	.type	__swrite,@function
__swrite:                               //  @__swrite
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x11
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	lhu x10, 12 ( x19 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x13
	mv x9, x12
	and x11, x10, 256
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x11, .LBB2_2
.LBB2_1:                                //  %if.then
	lh x11, 14 ( x19 )
	mv x12, x0
	add x13, x0, 2
	mv x10, x18
	jal _lseek_r
	lhu x10, 12 ( x19 )
.LBB2_2:                                //  %if.end
	lui x11, %hi( 61439 )
	add x11, x11, %lo( 61439 )
	and x10, x11, x10
	sh x10, 12 ( x19 )
	mv x10, x18
	mv x12, x9
	mv x13, fp
	lh x11, 14 ( x19 )
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	j _write_r
.Lfunc_end2:
	.size	__swrite, .Lfunc_end2-__swrite
	.cfi_endproc
                                        //  -- End function
	.globl	__sseek                 //  -- Begin function __sseek
	.type	__sseek,@function
__sseek:                                //  @__sseek
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x11
	lh x11, 14 ( fp )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _lseek_r
	lhu x11, 12 ( fp )
	xor x12, x10, -1
	beq x0, x12, .LBB3_1
.LBB3_2:                                //  %if.else
	lui x12, (4096>>12)&1048575
	or x11, x12, x11
	sw x10, 80 ( fp )
	jal x0, .LBB3_3
.LBB3_1:                                //  %if.then
	lui x12, %hi( 61439 )
	add x12, x12, %lo( 61439 )
	and x11, x12, x11
.LBB3_3:                                //  %if.end
	sh x11, 12 ( fp )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end3:
	.size	__sseek, .Lfunc_end3-__sseek
	.cfi_endproc
                                        //  -- End function
	.globl	__sclose                //  -- Begin function __sclose
	.type	__sclose,@function
__sclose:                               //  @__sclose
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lh x11, 14 ( x11 )
	j _close_r
.Lfunc_end4:
	.size	__sclose, .Lfunc_end4-__sclose
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
