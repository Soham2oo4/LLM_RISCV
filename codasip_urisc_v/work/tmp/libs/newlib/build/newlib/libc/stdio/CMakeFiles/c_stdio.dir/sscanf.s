	.text
	.file	"sscanf.c"
	.globl	sscanf                  //  -- Begin function sscanf
	.type	sscanf,@function
sscanf:                                 //  @sscanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	sw fp, 120 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add fp, sp, 12
	add x10, x0, 516
	sh x10, 12 ( fp )
	lw x10, 128 ( sp )
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x10, 16 ( fp )
	sw x10, 12 ( sp )
	jal strlen
	sw x10, 4 ( fp )
	sw x10, 32 ( sp )
	lui x10, %hi( _impure_ptr )
	lui x11, %hi( __seofread )
	add x10, x10, %lo( _impure_ptr )
	add x11, x11, %lo( __seofread )
	lw x10, 0 ( x10 )
	lw x12, 132 ( sp )
	sw x11, 32 ( fp )
	lui x11, %hi( 65535 )
	add x11, x11, %lo( 65535 )
	sh x11, 14 ( fp )
	add x13, sp, 136
	mv x11, fp
	sw x0, 68 ( fp )
	sw x0, 48 ( fp )
	sw x13, 116 ( sp )
	jal __ssvfscanf_r
	lw fp, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	sscanf, .Lfunc_end0-sscanf
	.cfi_endproc
                                        //  -- End function
	.globl	_sscanf_r               //  -- Begin function _sscanf_r
	.type	_sscanf_r,@function
_sscanf_r:                              //  @_sscanf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	sw fp, 120 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add fp, sp, 12
	add x10, x0, 516
	sh x10, 12 ( fp )
	lw x10, 132 ( sp )
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x10, 16 ( fp )
	sw x10, 12 ( sp )
	jal strlen
	lui x11, %hi( __seofread )
	add x11, x11, %lo( __seofread )
	sw x10, 4 ( fp )
	sw x10, 32 ( sp )
	lw x10, 128 ( sp )
	lw x12, 136 ( sp )
	sw x11, 32 ( fp )
	lui x11, %hi( 65535 )
	add x11, x11, %lo( 65535 )
	sh x11, 14 ( fp )
	add x13, sp, 140
	mv x11, fp
	sw x0, 68 ( fp )
	sw x0, 48 ( fp )
	sw x13, 116 ( sp )
	jal __ssvfscanf_r
	lw fp, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	_sscanf_r, .Lfunc_end1-_sscanf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
