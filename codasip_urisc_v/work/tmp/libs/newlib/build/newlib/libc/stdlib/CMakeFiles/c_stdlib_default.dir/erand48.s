	.text
	.file	"erand48.c"
	.globl	_erand48_r              //  -- Begin function _erand48_r
	.type	_erand48_r,@function
_erand48_r:                             //  @_erand48_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv fp, x11
	jal __dorand48
	lhu x10, 0 ( fp )
	jal __floatunsidf
	add x12, x0, -48
	jal ldexp
	mv x9, x10
	lhu x10, 2 ( fp )
	mv x18, x11
	jal __floatunsidf
	add x12, x0, -32
	jal ldexp
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
	jal __adddf3
	mv x9, x10
	lhu x10, 4 ( fp )
	mv x18, x11
	jal __floatunsidf
	add x12, x0, -16
	jal ldexp
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
	jal __adddf3
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_erand48_r, .Lfunc_end0-_erand48_r
	.cfi_endproc
                                        //  -- End function
	.globl	erand48                 //  -- Begin function erand48
	.type	erand48,@function
erand48:                                //  @erand48
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
	mv x11, fp
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	jal __dorand48
	lhu x10, 0 ( fp )
	jal __floatunsidf
	add x12, x0, -48
	jal ldexp
	mv x9, x10
	lhu x10, 2 ( fp )
	mv x18, x11
	jal __floatunsidf
	add x12, x0, -32
	jal ldexp
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
	jal __adddf3
	mv x9, x10
	lhu x10, 4 ( fp )
	mv x18, x11
	jal __floatunsidf
	add x12, x0, -16
	jal ldexp
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
	jal __adddf3
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	erand48, .Lfunc_end1-erand48
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
