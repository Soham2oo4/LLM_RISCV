	.text
	.file	"reent.c"
	.globl	cleanup_glue            //  -- Begin function cleanup_glue
	.type	cleanup_glue,@function
cleanup_glue:                           //  @cleanup_glue
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x11
	lw x11, 0 ( fp )
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x11, .LBB0_2
.LBB0_1:                                //  %if.then
	mv x10, x9
	jal cleanup_glue
.LBB0_2:                                //  %if.end
	mv x10, x9
	mv x11, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	j _free_r
.Lfunc_end0:
	.size	cleanup_glue, .Lfunc_end0-cleanup_glue
	.cfi_endproc
                                        //  -- End function
	.globl	_reclaim_reent          //  -- Begin function _reclaim_reent
	.type	_reclaim_reent,@function
_reclaim_reent:                         //  @_reclaim_reent
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
	lw x10, 0 ( x10 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	beq x10, fp, .LBB1_18
.LBB1_1:                                //  %if.then
	lw x10, 76 ( fp )
	beq x0, x10, .LBB1_8
.LBB1_2:                                //  %for.body.preheader
	mv x9, x0
	sll x11, x9, 2&31
	add x10, x11, x10
	lw x11, 0 ( x10 )
	beq x0, x11, .LBB1_5
.LBB1_4:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x18, 0 ( x11 )
	mv x10, fp
	jal _free_r
	mv x11, x18
	bltu x0, x18, .LBB1_4
.LBB1_5:                                //  %while.end
                                        //  =>This Inner Loop Header: Depth=1
	add x9, x9, 1
	xor x10, x9, 32
	beq x0, x10, .LBB1_7
.LBB1_6:                                //  %while.end.for.body_crit_edge
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 76 ( fp )
	sll x11, x9, 2&31
	add x10, x11, x10
	lw x11, 0 ( x10 )
	bltu x0, x11, .LBB1_4
	jal x0, .LBB1_5
.LBB1_7:                                //  %for.end
	lw x11, 76 ( fp )
	mv x10, fp
	jal _free_r
.LBB1_8:                                //  %if.end
	lw x11, 64 ( fp )
	beq x0, x11, .LBB1_10
.LBB1_9:                                //  %if.then7
	mv x10, fp
	jal _free_r
.LBB1_10:                               //  %if.end9
	lw x11, 328 ( fp )
	beq x0, x11, .LBB1_13
.LBB1_11:                               //  %land.lhs.true
	add x9, fp, 332
	beq x11, x9, .LBB1_13
.LBB1_12:                               //  %for.body18
                                        //  =>This Inner Loop Header: Depth=1
	lw x18, 0 ( x11 )
	mv x10, fp
	jal _free_r
	mv x11, x18
	bne x18, x9, .LBB1_12
.LBB1_13:                               //  %if.end21
	lw x11, 84 ( fp )
	beq x0, x11, .LBB1_15
.LBB1_14:                               //  %if.then23
	mv x10, fp
	jal _free_r
.LBB1_15:                               //  %if.end25
	lw x10, 56 ( fp )
	beq x0, x10, .LBB1_18
.LBB1_16:                               //  %if.then27
	lw x11, 60 ( fp )
	mv x10, fp
	call.reg x11
	lw x11, 736 ( fp )
	beq x0, x11, .LBB1_18
.LBB1_17:                               //  %if.then30
	mv x10, fp
	jal cleanup_glue
.LBB1_18:                               //  %if.end35
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	_reclaim_reent, .Lfunc_end1-_reclaim_reent
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	errno,@object           //  @errno
	.comm	errno,4,4

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
