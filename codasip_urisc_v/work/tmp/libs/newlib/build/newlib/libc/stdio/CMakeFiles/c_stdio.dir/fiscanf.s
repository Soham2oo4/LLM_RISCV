	.text
	.file	"fiscanf.c"
	.globl	fiscanf                 //  -- Begin function fiscanf
	.type	fiscanf,@function
fiscanf:                                //  @fiscanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	lw x11, 16 ( sp )
	lw x12, 20 ( sp )
	add x13, sp, 24
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x13, 8 ( sp )
	jal __svfiscanf_r
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	fiscanf, .Lfunc_end0-fiscanf
	.cfi_endproc
                                        //  -- End function
	.globl	_fiscanf_r              //  -- Begin function _fiscanf_r
	.type	_fiscanf_r,@function
_fiscanf_r:                             //  @_fiscanf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lw x10, 16 ( sp )
	lw x11, 20 ( sp )
	lw x12, 24 ( sp )
	add x13, sp, 28
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x13, 8 ( sp )
	jal __svfiscanf_r
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	_fiscanf_r, .Lfunc_end1-_fiscanf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
