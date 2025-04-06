	.text
	.file	"fwprintf.c"
	.globl	_fwprintf_r             //  -- Begin function _fwprintf_r
	.type	_fwprintf_r,@function
_fwprintf_r:                            //  @_fwprintf_r
	.cfi_sections .debug_frame
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
	jal _vfwprintf_r
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_fwprintf_r, .Lfunc_end0-_fwprintf_r
	.cfi_endproc
                                        //  -- End function
	.globl	fwprintf                //  -- Begin function fwprintf
	.type	fwprintf,@function
fwprintf:                               //  @fwprintf
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
	jal _vfwprintf_r
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	fwprintf, .Lfunc_end1-fwprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
