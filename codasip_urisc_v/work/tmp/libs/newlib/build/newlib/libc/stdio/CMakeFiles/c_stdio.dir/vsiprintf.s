	.text
	.file	"vsiprintf.c"
	.globl	vsiprintf               //  -- Begin function vsiprintf
	.type	vsiprintf,@function
vsiprintf:                              //  @vsiprintf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -112
	.cfi_adjust_cfa_offset 112
	mv x13, x12
	mv x12, x11
	lui x11, %hi( _impure_ptr )
	add x11, x11, %lo( _impure_ptr )
	lw x14, 0 ( x11 )
	add x11, sp, 4
	sw x10, 16 ( x11 )
	sw x10, 4 ( sp )
	lui x10, %hi( 2147483647 )
	lui x15, %hi( -65016 )
	add x10, x10, %lo( 2147483647 )
	add x15, x15, %lo( -65016 )
	sw x10, 8 ( x11 )
	sw x10, 24 ( sp )
	mv x10, x14
	sw ra, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x15, 12 ( x11 )
	jal _svfiprintf_r
	lw x11, 4 ( sp )
	lw ra, 108 ( sp )               //  4-byte Folded Reload
	sb x0, 0 ( x11 )
	add sp, sp, 112
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	vsiprintf, .Lfunc_end0-vsiprintf
	.cfi_endproc
                                        //  -- End function
	.globl	_vsiprintf_r            //  -- Begin function _vsiprintf_r
	.type	_vsiprintf_r,@function
_vsiprintf_r:                           //  @_vsiprintf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -112
	.cfi_adjust_cfa_offset 112
	add x14, sp, 4
	sw x11, 16 ( x14 )
	sw x11, 4 ( sp )
	lui x11, %hi( 2147483647 )
	lui x15, %hi( -65016 )
	add x11, x11, %lo( 2147483647 )
	add x15, x15, %lo( -65016 )
	sw x11, 8 ( x14 )
	sw x11, 24 ( sp )
	mv x11, x14
	sw ra, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x15, 12 ( x14 )
	jal _svfiprintf_r
	lw x11, 4 ( sp )
	lw ra, 108 ( sp )               //  4-byte Folded Reload
	sb x0, 0 ( x11 )
	add sp, sp, 112
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	_vsiprintf_r, .Lfunc_end1-_vsiprintf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
