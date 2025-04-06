	.text
	.file	"vsiscanf.c"
	.globl	vsiscanf                //  -- Begin function vsiscanf
	.type	vsiscanf,@function
vsiscanf:                               //  @vsiscanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	sw x9, 120 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	lui x11, %hi( _impure_ptr )
	add x11, x11, %lo( _impure_ptr )
	sw x19, 112 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19, sp, 4
	sw x18, 116 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x18, 0 ( x11 )
	add x11, x0, 516
	sw fp, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv fp, x12
	sh x11, 12 ( x19 )
	sw x10, 16 ( x19 )
	sw x10, 4 ( sp )
	jal strlen
	lui x11, %hi( __seofread )
	add x11, x11, %lo( __seofread )
	sw x11, 32 ( x19 )
	lui x11, %hi( 65535 )
	add x11, x11, %lo( 65535 )
	sh x11, 14 ( x19 )
	sw x10, 4 ( x19 )
	sw x10, 24 ( sp )
	mv x10, x18
	mv x11, x19
	mv x12, x9
	mv x13, fp
	sw x0, 68 ( x19 )
	sw x0, 48 ( x19 )
	jal __ssvfiscanf_r
	lw fp, 108 ( sp )               //  4-byte Folded Reload
	lw x19, 112 ( sp )              //  4-byte Folded Reload
	lw x18, 116 ( sp )              //  4-byte Folded Reload
	lw x9, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	vsiscanf, .Lfunc_end0-vsiscanf
	.cfi_endproc
                                        //  -- End function
	.globl	_vsiscanf_r             //  -- Begin function _vsiscanf_r
	.type	_vsiscanf_r,@function
_vsiscanf_r:                            //  @_vsiscanf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	sw x18, 116 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 112 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x18, x10
	add x19, sp, 4
	add x10, x0, 516
	sh x10, 12 ( x19 )
	mv x10, x11
	sw x9, 120 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv fp, x13
	mv x9, x12
	sw x11, 16 ( x19 )
	sw x11, 4 ( sp )
	jal strlen
	lui x11, %hi( __seofread )
	add x11, x11, %lo( __seofread )
	sw x11, 32 ( x19 )
	lui x11, %hi( 65535 )
	add x11, x11, %lo( 65535 )
	sh x11, 14 ( x19 )
	sw x10, 4 ( x19 )
	sw x10, 24 ( sp )
	mv x10, x18
	mv x11, x19
	mv x12, x9
	mv x13, fp
	sw x0, 68 ( x19 )
	sw x0, 48 ( x19 )
	jal __ssvfiscanf_r
	lw fp, 108 ( sp )               //  4-byte Folded Reload
	lw x19, 112 ( sp )              //  4-byte Folded Reload
	lw x18, 116 ( sp )              //  4-byte Folded Reload
	lw x9, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	_vsiscanf_r, .Lfunc_end1-_vsiscanf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
