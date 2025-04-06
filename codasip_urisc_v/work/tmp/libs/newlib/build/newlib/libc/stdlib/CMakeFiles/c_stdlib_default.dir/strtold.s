	.text
	.file	"strtold.c"
	.globl	_strtold_r              //  -- Begin function _strtold_r
	.type	_strtold_r,@function
_strtold_r:                             //  @_strtold_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lui x13, %hi( __global_locale )
	add x13, x13, %lo( __global_locale )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _strtod_l
	jal __extenddftf2
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_strtold_r, .Lfunc_end0-_strtold_r
	.cfi_endproc
                                        //  -- End function
	.globl	strtold_l               //  -- Begin function strtold_l
	.type	strtold_l,@function
strtold_l:                              //  @strtold_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x13, x12
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _strtod_l
	jal __extenddftf2
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	strtold_l, .Lfunc_end1-strtold_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtold                 //  -- Begin function strtold
	.type	strtold,@function
strtold:                                //  @strtold
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	lui x13, %hi( __global_locale )
	add x13, x13, %lo( __global_locale )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _strtod_l
	jal __extenddftf2
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	strtold, .Lfunc_end2-strtold
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
