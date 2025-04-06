	.text
	.file	"siprintf.c"
	.globl	_siprintf_r             //  -- Begin function _siprintf_r
	.type	_siprintf_r,@function
_siprintf_r:                            //  @_siprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	lui x10, %hi( -65016 )
	add x11, sp, 16
	add x10, x10, %lo( -65016 )
	sw x10, 12 ( x11 )
	lw x10, 132 ( sp )
	lw x12, 136 ( sp )
	add x13, sp, 140
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x10, 16 ( x11 )
	sw x10, 16 ( sp )
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	sw x10, 8 ( x11 )
	sw x10, 36 ( sp )
	lw x10, 128 ( sp )
	sw x13, 120 ( sp )
	jal _svfiprintf_r
	lw x11, 16 ( sp )
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	sb x0, 0 ( x11 )
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_siprintf_r, .Lfunc_end0-_siprintf_r
	.cfi_endproc
                                        //  -- End function
	.globl	siprintf                //  -- Begin function siprintf
	.type	siprintf,@function
siprintf:                               //  @siprintf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	lui x10, %hi( -65016 )
	add x11, sp, 16
	add x10, x10, %lo( -65016 )
	sw x10, 12 ( x11 )
	lw x10, 128 ( sp )
	lw x12, 132 ( sp )
	add x13, sp, 136
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x10, 16 ( x11 )
	sw x10, 16 ( sp )
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	sw x10, 8 ( x11 )
	sw x10, 36 ( sp )
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	sw x13, 120 ( sp )
	jal _svfiprintf_r
	lw x11, 16 ( sp )
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	sb x0, 0 ( x11 )
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	siprintf, .Lfunc_end1-siprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
