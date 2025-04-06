	.text
	.file	"remove.c"
	.globl	_remove_r               //  -- Begin function _remove_r
	.type	_remove_r,@function
_remove_r:                              //  @_remove_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _unlink_r
	mv x11, x10
	add x10, x0, -1
	beq x11, x10, .LBB0_2
.LBB0_1:                                //  %entry
	mv x10, x0
.LBB0_2:                                //  %entry
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_remove_r, .Lfunc_end0-_remove_r
	.cfi_endproc
                                        //  -- End function
	.globl	remove                  //  -- Begin function remove
	.type	remove,@function
remove:                                 //  @remove
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _unlink_r
	mv x11, x10
	add x10, x0, -1
	beq x11, x10, .LBB1_2
.LBB1_1:                                //  %entry
	mv x10, x0
.LBB1_2:                                //  %entry
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	remove, .Lfunc_end1-remove
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
