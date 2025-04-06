	.text
	.file	"makebuf.c"
	.globl	__smakebuf_r            //  -- Begin function __smakebuf_r
	.type	__smakebuf_r,@function
__smakebuf_r:                           //  @__smakebuf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -112
	.cfi_adjust_cfa_offset 112
	sw fp, 88 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x11
	sw x9, 104 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lhu x10, 12 ( fp )
	sw ra, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 96 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	and x11, x10, 2
	sw x20, 92 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	bltu x0, x11, .LBB0_8
.LBB0_1:                                //  %if.end
	lh x11, 14 ( fp )
	blt x11, x0, .LBB0_10
.LBB0_2:                                //  %lor.lhs.false.i
	add x12, sp, 16
	mv x10, x9
	jal _fstat_r
	blt x10, x0, .LBB0_9
.LBB0_3:                                //  %if.end8.i
	lw x10, 20 ( sp )
	lui x11, (61440>>12)&1048575
	add x18, x0, 1024
	and x10, x11, x10
	lui x11, (8192>>12)&1048575
	xor x10, x11, x10
	lui x11, %hi( 2048 )
	add x19, x11, %lo( 2048 )
	seqz x20, x10
	mv x10, x9
	mv x11, x18
	jal _malloc_r
	bltu x0, x10, .LBB0_4
.LBB0_12:                               //  %if.then4
	lhu x10, 12 ( fp )
	and x11, x10, 512
	bltu x0, x11, .LBB0_15
.LBB0_13:                               //  %if.then9
	seqz x11, x0
	sw x11, 20 ( fp )
	add x11, fp, 67
	sw x11, 16 ( fp )
	sw x11, 0 ( fp )
	lui x11, %hi( 65532 )
	add x11, x11, %lo( 65532 )
	and x10, x11, x10
	or x10, x10, 2
	jal x0, .LBB0_14
.LBB0_8:                                //  %if.then
	seqz x10, x0
	sw x10, 20 ( fp )
	add x10, fp, 67
	sw x10, 16 ( fp )
	sw x10, 0 ( fp )
	jal x0, .LBB0_15
.LBB0_9:                                //  %lor.lhs.false.i.if.then.i_crit_edge
	lhu x10, 12 ( fp )
.LBB0_10:                               //  %if.then.i
	and x10, x10, 128
	mv x20, x0
	beq x10, x20, .LBB0_16
.LBB0_11:                               //  %if.then.i
	add x18, x0, 64
	jal x0, .LBB0_17
.LBB0_16:
	add x18, x0, 1024
.LBB0_17:
	mv x19, x20
	mv x10, x9
	mv x11, x18
	jal _malloc_r
	beq x0, x10, .LBB0_12
.LBB0_4:                                //  %if.else
	lui x11, %hi( _cleanup_r )
	add x11, x11, %lo( _cleanup_r )
	sw x11, 60 ( x9 )
	sw x10, 16 ( fp )
	sw x10, 0 ( fp )
	lh x10, 12 ( fp )
	sw x18, 20 ( fp )
	or x11, x10, 128
	sh x11, 12 ( fp )
	beq x0, x20, .LBB0_7
.LBB0_5:                                //  %land.lhs.true
	lh x11, 14 ( fp )
	mv x10, x9
	jal _isatty_r
	lhu x11, 12 ( fp )
	beq x0, x10, .LBB0_7
.LBB0_6:                                //  %if.then36
	lui x10, %hi( 65532 )
	add x10, x10, %lo( 65532 )
	and x10, x10, x11
	or x11, x10, 1
	sh x11, 12 ( fp )
.LBB0_7:                                //  %if.end43
	or x10, x19, x11
.LBB0_14:                               //  %cleanup
	sh x10, 12 ( fp )
.LBB0_15:                               //  %cleanup
	lw fp, 88 ( sp )                //  4-byte Folded Reload
	lw x20, 92 ( sp )               //  4-byte Folded Reload
	lw x19, 96 ( sp )               //  4-byte Folded Reload
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	lw ra, 108 ( sp )               //  4-byte Folded Reload
	add sp, sp, 112
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__smakebuf_r, .Lfunc_end0-__smakebuf_r
	.cfi_endproc
                                        //  -- End function
	.globl	__swhatbuf_r            //  -- Begin function __swhatbuf_r
	.type	__swhatbuf_r,@function
__swhatbuf_r:                           //  @__swhatbuf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -96
	.cfi_adjust_cfa_offset 96
	sw x18, 84 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x11
	lh x11, 14 ( x18 )
	sw x9, 88 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 80 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv x9, x13
	mv fp, x12
	sw ra, 92 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	blt x11, x0, .LBB1_2
.LBB1_1:                                //  %lor.lhs.false
	add x12, sp, 8
	jal _fstat_r
	blt x10, x0, .LBB1_2
.LBB1_4:                                //  %if.end8
	lw x10, 12 ( sp )
	lui x11, (61440>>12)&1048575
	and x10, x11, x10
	lui x11, (8192>>12)&1048575
	xor x10, x11, x10
	seqz x10, x10
	sw x10, 0 ( x9 )
	lui x10, %hi( 2048 )
	add x10, x10, %lo( 2048 )
	jal x0, .LBB1_5
.LBB1_2:                                //  %if.then
	sw x0, 0 ( x9 )
	lbu x10, 12 ( x18 )
	and x11, x10, 128
	mv x10, x0
	beq x11, x10, .LBB1_5
.LBB1_3:                                //  %if.then
	add x11, x0, 64
	jal x0, .LBB1_6
.LBB1_5:                                //  %cleanup
	add x11, x0, 1024
.LBB1_6:                                //  %cleanup
	sw x11, 0 ( fp )
	lw fp, 80 ( sp )                //  4-byte Folded Reload
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	lw ra, 92 ( sp )                //  4-byte Folded Reload
	add sp, sp, 96
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	__swhatbuf_r, .Lfunc_end1-__swhatbuf_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
