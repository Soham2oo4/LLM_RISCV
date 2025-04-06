	.text
	.file	"rewind.c"
	.globl	_rewind_r               //  -- Begin function _rewind_r
	.type	_rewind_r,@function
_rewind_r:                              //  @_rewind_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x12, x0
	mv x13, x12
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv fp, x11
	jal _fseek_r
	lhu x10, 12 ( fp )
	lui x11, %hi( 65439 )
	add x11, x11, %lo( 65439 )
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( fp )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_rewind_r, .Lfunc_end0-_rewind_r
	.cfi_endproc
                                        //  -- End function
	.globl	rewind                  //  -- Begin function rewind
	.type	rewind,@function
rewind:                                 //  @rewind
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	mv x12, x0
	mv x11, fp
	mv x13, x12
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _fseek_r
	lhu x10, 12 ( fp )
	lui x11, %hi( 65439 )
	add x11, x11, %lo( 65439 )
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( fp )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	rewind, .Lfunc_end1-rewind
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
