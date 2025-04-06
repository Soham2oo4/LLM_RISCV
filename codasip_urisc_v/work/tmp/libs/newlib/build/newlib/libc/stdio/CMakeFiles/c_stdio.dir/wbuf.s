	.text
	.file	"wbuf.c"
	.globl	__swbuf_r               //  -- Begin function __swbuf_r
	.type	__swbuf_r,@function
__swbuf_r:                              //  @__swbuf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x12
	mv x19, x11
	mv x9, x10
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	beq x0, x9, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x10, 56 ( x9 )
	bltu x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then
	mv x10, x9
	jal __sinit
.LBB0_3:                                //  %if.end
	lw x10, 24 ( fp )
	add x18, x0, -1
	sw x10, 8 ( fp )
	lhu x10, 12 ( fp )
	and x11, x10, 8
	beq x0, x11, .LBB0_5
.LBB0_4:                                //  %lor.lhs.false
	lw x11, 16 ( fp )
	bltu x0, x11, .LBB0_7
.LBB0_5:                                //  %land.lhs.true5
	mv x10, x9
	mv x11, fp
	jal __swsetup_r
	bltu x0, x10, .LBB0_17
.LBB0_6:                                //  %land.lhs.true5.if.end8_crit_edge
	lhu x10, 12 ( fp )
.LBB0_7:                                //  %if.end8
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB0_9
.LBB0_8:                                //  %if.then16
	or x10, x11, x10
	sh x10, 12 ( fp )
	lw x10, 100 ( fp )
	lui x11, %hi( -8193 )
	add x11, x11, %lo( -8193 )
	and x10, x11, x10
	sw x10, 100 ( fp )
.LBB0_9:                                //  %do.end23
	lw x11, 16 ( fp )
	lw x10, 0 ( fp )
	lw x12, 20 ( fp )
	sub x11, x10, x11
	blt x11, x12, .LBB0_12
.LBB0_10:                               //  %if.then29
	mv x10, x9
	mv x11, fp
	jal _fflush_r
	bltu x0, x10, .LBB0_17
.LBB0_11:                               //  %if.then29.if.end34_crit_edge
	lw x10, 0 ( fp )
	mv x11, x0
.LBB0_12:                               //  %if.end34
	add x12, x10, 1
	sw x12, 0 ( fp )
	lw x12, 8 ( fp )
	and x20, x19, 255
	add x11, x11, 1
	add x12, x12, -1
	sw x12, 8 ( fp )
	sb x19, 0 ( x10 )
	lw x10, 20 ( fp )
	beq x11, x10, .LBB0_15
.LBB0_13:                               //  %lor.lhs.false42
	xor x10, x20, 10
	bltu x0, x10, .LBB0_16
.LBB0_14:                               //  %lor.lhs.false42
	lhu x10, 12 ( fp )
	and x10, x10, 1
	beq x0, x10, .LBB0_16
.LBB0_15:                               //  %if.then50
	mv x10, x9
	mv x11, fp
	jal _fflush_r
	bltu x0, x10, .LBB0_17
.LBB0_16:                               //  %if.end55
	mv x18, x20
.LBB0_17:                               //  %cleanup
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
	.size	__swbuf_r, .Lfunc_end0-__swbuf_r
	.cfi_endproc
                                        //  -- End function
	.globl	__swbuf                 //  -- Begin function __swbuf
	.type	__swbuf,@function
__swbuf:                                //  @__swbuf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j __swbuf_r
.Lfunc_end1:
	.size	__swbuf, .Lfunc_end1-__swbuf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
