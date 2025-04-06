	.text
	.file	"fpurge.c"
	.globl	_fpurge_r               //  -- Begin function _fpurge_r
	.type	_fpurge_r,@function
_fpurge_r:                              //  @_fpurge_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x11
	mv x18, x10
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	beq x0, x18, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x10, 56 ( x18 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end
	lh x10, 12 ( fp )
	beq x0, x10, .LBB0_4
.LBB0_5:                                //  %if.end23
	lw x11, 16 ( fp )
	mv x9, x0
	sw x11, 0 ( fp )
	and x11, x10, 8
	bltu x0, x11, .LBB0_10
.LBB0_6:                                //  %if.then26
	lw x11, 48 ( fp )
	sw x0, 4 ( fp )
	beq x0, x11, .LBB0_13
.LBB0_7:                                //  %if.then30
	add x10, fp, 64
	beq x11, x10, .LBB0_9
.LBB0_8:                                //  %if.then35
	mv x10, x18
	jal _free_r
.LBB0_9:                                //  %if.end38
	sw x0, 48 ( fp )
	jal x0, .LBB0_13
.LBB0_10:                               //  %if.else
	and x11, x10, 3
	mv x10, x9
	bltu x0, x11, .LBB0_12
.LBB0_11:                               //  %cond.false45
	lw x10, 20 ( fp )
.LBB0_12:                               //  %cond.end47
	sw x10, 8 ( fp )
	jal x0, .LBB0_13
.LBB0_2:                                //  %if.then
	mv x10, x18
	jal __sinit
	lh x10, 12 ( fp )
	bltu x0, x10, .LBB0_5
.LBB0_4:                                //  %if.then10
	add x10, x0, 9
	sw x10, 0 ( x18 )
	add x9, x0, -1
.LBB0_13:                               //  %cleanup
	mv x10, x9
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_fpurge_r, .Lfunc_end0-_fpurge_r
	.cfi_endproc
                                        //  -- End function
	.globl	fpurge                  //  -- Begin function fpurge
	.type	fpurge,@function
fpurge:                                 //  @fpurge
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x18, 0 ( x10 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	beq x0, x18, .LBB1_3
.LBB1_1:                                //  %land.lhs.true.i
	lw x10, 56 ( x18 )
	beq x0, x10, .LBB1_2
.LBB1_3:                                //  %if.end.i
	lh x10, 12 ( fp )
	beq x0, x10, .LBB1_4
.LBB1_5:                                //  %if.end23.i
	lw x11, 16 ( fp )
	mv x9, x0
	sw x11, 0 ( fp )
	and x11, x10, 8
	bltu x0, x11, .LBB1_10
.LBB1_6:                                //  %if.then26.i
	lw x11, 48 ( fp )
	sw x0, 4 ( fp )
	beq x0, x11, .LBB1_13
.LBB1_7:                                //  %if.then30.i
	add x10, fp, 64
	beq x11, x10, .LBB1_9
.LBB1_8:                                //  %if.then35.i
	mv x10, x18
	jal _free_r
.LBB1_9:                                //  %if.end38.i
	sw x0, 48 ( fp )
	jal x0, .LBB1_13
.LBB1_10:                               //  %if.else.i
	and x11, x10, 3
	mv x10, x9
	bltu x0, x11, .LBB1_12
.LBB1_11:                               //  %cond.false45.i
	lw x10, 20 ( fp )
.LBB1_12:                               //  %cond.end47.i
	sw x10, 8 ( fp )
	jal x0, .LBB1_13
.LBB1_2:                                //  %if.then.i
	mv x10, x18
	jal __sinit
	lh x10, 12 ( fp )
	bltu x0, x10, .LBB1_5
.LBB1_4:                                //  %if.then10.i
	add x10, x0, 9
	sw x10, 0 ( x18 )
	add x9, x0, -1
.LBB1_13:                               //  %_fpurge_r.exit
	mv x10, x9
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	fpurge, .Lfunc_end1-fpurge
	.cfi_endproc
                                        //  -- End function
	.globl	__fpurge                //  -- Begin function __fpurge
	.type	__fpurge,@function
__fpurge:                               //  @__fpurge
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
.LBB2_1:                                //  %land.lhs.true.i
	lw x10, 56 ( x9 )
	beq x0, x10, .LBB2_2
.LBB2_3:                                //  %if.end.i
	lh x10, 12 ( fp )
	beq x0, x10, .LBB2_4
.LBB2_5:                                //  %if.end23.i
	lw x11, 16 ( fp )
	sw x11, 0 ( fp )
	and x11, x10, 8
	bltu x0, x11, .LBB2_10
.LBB2_6:                                //  %if.then26.i
	lw x11, 48 ( fp )
	sw x0, 4 ( fp )
	beq x0, x11, .LBB2_14
.LBB2_7:                                //  %if.then30.i
	add x10, fp, 64
	beq x11, x10, .LBB2_9
.LBB2_8:                                //  %if.then35.i
	mv x10, x9
	jal _free_r
.LBB2_9:                                //  %if.end38.i
	sw x0, 48 ( fp )
	jal x0, .LBB2_14
.LBB2_10:                               //  %if.else.i
	and x10, x10, 3
	beq x0, x10, .LBB2_12
.LBB2_11:
	mv x10, x0
	jal x0, .LBB2_13
.LBB2_2:                                //  %if.then.i
	mv x10, x9
	jal __sinit
	lh x10, 12 ( fp )
	bltu x0, x10, .LBB2_5
.LBB2_4:                                //  %if.then10.i
	add x10, x0, 9
	sw x10, 0 ( x9 )
	jal x0, .LBB2_14
.LBB2_12:                               //  %cond.false45.i
	lw x10, 20 ( fp )
.LBB2_13:                               //  %cond.end47.i
	sw x10, 8 ( fp )
.LBB2_14:                               //  %_fpurge_r.exit
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	__fpurge, .Lfunc_end2-__fpurge
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
