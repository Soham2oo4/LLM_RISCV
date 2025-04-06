	.text
	.file	"reallocf.c"
	.globl	_reallocf_r             //  -- Begin function _reallocf_r
	.type	_reallocf_r,@function
_reallocf_r:                            //  @_reallocf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv fp, x11
	mv x9, x10
	jal _realloc_r
	mv x18, x10
	beq x0, fp, .LBB0_3
.LBB0_1:                                //  %entry
	bltu x0, x18, .LBB0_3
.LBB0_2:                                //  %if.then
	mv x10, x9
	mv x11, fp
	jal _free_r
.LBB0_3:                                //  %if.end
	mv x10, x18
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_reallocf_r, .Lfunc_end0-_reallocf_r
	.cfi_endproc
                                        //  -- End function
	.globl	reallocf                //  -- Begin function reallocf
	.type	reallocf,@function
reallocf:                               //  @reallocf
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
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x9, 0 ( x10 )
	mv x12, x11
	mv x11, fp
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv x10, x9
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	jal _realloc_r
	mv x18, x10
	beq x0, fp, .LBB1_3
.LBB1_1:                                //  %entry
	bltu x0, x18, .LBB1_3
.LBB1_2:                                //  %if.then.i
	mv x10, x9
	mv x11, fp
	jal _free_r
.LBB1_3:                                //  %_reallocf_r.exit
	mv x10, x18
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	reallocf, .Lfunc_end1-reallocf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
