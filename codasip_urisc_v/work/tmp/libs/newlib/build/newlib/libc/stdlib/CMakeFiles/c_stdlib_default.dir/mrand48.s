	.text
	.file	"mrand48.c"
	.globl	_mrand48_r              //  -- Begin function _mrand48_r
	.type	_mrand48_r,@function
_mrand48_r:                             //  @_mrand48_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x10
	add x11, fp, 172
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal __dorand48
	lh x11, 176 ( fp )
	lhu x10, 174 ( fp )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	sll x11, x11, 16&31
	or x10, x10, x11
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_mrand48_r, .Lfunc_end0-_mrand48_r
	.cfi_endproc
                                        //  -- End function
	.globl	mrand48                 //  -- Begin function mrand48
	.type	mrand48,@function
mrand48:                                //  @mrand48
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	lw fp, 0 ( x10 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x11, fp, 172
	mv x10, fp
	jal __dorand48
	lh x11, 176 ( fp )
	lhu x10, 174 ( fp )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	sll x11, x11, 16&31
	or x10, x10, x11
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	mrand48, .Lfunc_end1-mrand48
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
