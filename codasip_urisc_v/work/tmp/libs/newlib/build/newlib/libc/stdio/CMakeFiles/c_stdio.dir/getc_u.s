	.text
	.file	"getc_u.c"
	.globl	_getc_unlocked_r        //  -- Begin function _getc_unlocked_r
	.type	_getc_unlocked_r,@function
_getc_unlocked_r:                       //  @_getc_unlocked_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lw x12, 4 ( x11 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x13, x12, -1
	sw x13, 4 ( x11 )
	bge x0, x12, .LBB0_1
.LBB0_2:                                //  %cond.false
	lw x10, 0 ( x11 )
	add x12, x10, 1
	sw x12, 0 ( x11 )
	lbu x10, 0 ( x10 )
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_1:                                //  %cond.true
	jal __srget_r
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_getc_unlocked_r, .Lfunc_end0-_getc_unlocked_r
	.cfi_endproc
                                        //  -- End function
	.globl	getc_unlocked           //  -- Begin function getc_unlocked
	.type	getc_unlocked,@function
getc_unlocked:                          //  @getc_unlocked
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x11, x10
	lw x10, 4 ( x11 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x12, x10, -1
	sw x12, 4 ( x11 )
	bge x0, x10, .LBB1_1
.LBB1_2:                                //  %cond.false
	lw x10, 0 ( x11 )
	add x12, x10, 1
	sw x12, 0 ( x11 )
	lbu x10, 0 ( x10 )
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_1:                                //  %cond.true
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	jal __srget_r
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	getc_unlocked, .Lfunc_end1-getc_unlocked
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
