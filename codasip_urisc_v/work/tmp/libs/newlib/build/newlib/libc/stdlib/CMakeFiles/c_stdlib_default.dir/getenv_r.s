	.text
	.file	"getenv_r.c"
	.globl	_findenv_r              //  -- Begin function _findenv_r
	.type	_findenv_r,@function
_findenv_r:                             //  @_findenv_r
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
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	mv x9, x12
	mv x18, x11
	mv fp, x10
	jal __env_lock
	lui x10, %hi( environ )
	add x20, x10, %lo( environ )
	lw x21, 0 ( x20 )
	beq x0, x21, .LBB0_11
.LBB0_1:
	mv x11, x18
	lbu x10, 0 ( x11 )
	beq x0, x10, .LBB0_5
.LBB0_3:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	xor x10, x10, 61
	beq x0, x10, .LBB0_11
.LBB0_4:                                //  %while.body
                                        //    in Loop: Header=BB0_3 Depth=1
	add x11, x11, 1
	lbu x10, 0 ( x11 )
	bltu x0, x10, .LBB0_3
.LBB0_5:                                //  %if.then7
	lw x10, 0 ( x21 )
	beq x0, x10, .LBB0_11
.LBB0_6:                                //  %for.body.preheader
	sub x19, x11, x18
	mv x11, x18
	mv x12, x19
	jal strncmp
	beq x0, x10, .LBB0_8
.LBB0_10:                               //  %for.inc
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 4 ( x21 )
	add x11, x21, 4
	mv x21, x11
	beq x0, x10, .LBB0_11
.LBB0_7:                                //  %for.body
                                        //    in Loop: Header=BB0_10 Depth=1
	mv x11, x18
	mv x12, x19
	jal strncmp
	bltu x0, x10, .LBB0_10
.LBB0_8:                                //  %if.then10
	lw x10, 0 ( x21 )
	add x22, x19, x10
	lbu x10, 0 ( x22 )
	xor x10, x10, 61
	bltu x0, x10, .LBB0_10
.LBB0_9:                                //  %if.then14
	lw x10, 0 ( x20 )
	sub x10, x21, x10
	sra x10, x10, 2&31
	sw x10, 0 ( x9 )
	mv x10, fp
	jal __env_unlock
	add x10, x22, 1
	jal x0, .LBB0_12
.LBB0_11:                               //  %if.end22
	mv x10, fp
	jal __env_unlock
	mv x10, x0
.LBB0_12:                               //  %cleanup
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x22, 4 ( sp )                //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_findenv_r, .Lfunc_end0-_findenv_r
	.cfi_endproc
                                        //  -- End function
	.globl	_getenv_r               //  -- Begin function _getenv_r
	.type	_getenv_r,@function
_getenv_r:                              //  @_getenv_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	add x12, sp, 8
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _findenv_r
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	_getenv_r, .Lfunc_end1-_getenv_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
