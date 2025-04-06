	.text
	.file	"vasiprintf.c"
	.globl	vasiprintf              //  -- Begin function vasiprintf
	.type	vasiprintf,@function
vasiprintf:                             //  @vasiprintf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	sw fp, 120 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	lui x14, %hi( -64888 )
	mv x13, x12
	mv x12, x11
	add x11, sp, 16
	add x14, x14, %lo( -64888 )
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x14, 12 ( x11 )
	sw x0, 16 ( x11 )
	sw x0, 8 ( x11 )
	sw x0, 16 ( sp )
	sw x0, 36 ( sp )
	jal _svfiprintf_r
	blt x10, x0, .LBB0_2
.LBB0_1:                                //  %if.then.i
	lw x11, 16 ( sp )
	sb x0, 0 ( x11 )
	lw x11, 32 ( sp )
	sw x11, 0 ( fp )
.LBB0_2:                                //  %_vasiprintf_r.exit
	lw fp, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	vasiprintf, .Lfunc_end0-vasiprintf
	.cfi_endproc
                                        //  -- End function
	.globl	_vasiprintf_r           //  -- Begin function _vasiprintf_r
	.type	_vasiprintf_r,@function
_vasiprintf_r:                          //  @_vasiprintf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	lui x14, %hi( -64888 )
	sw fp, 120 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x11
	add x11, sp, 16
	add x14, x14, %lo( -64888 )
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x14, 12 ( x11 )
	sw x0, 16 ( x11 )
	sw x0, 8 ( x11 )
	sw x0, 16 ( sp )
	sw x0, 36 ( sp )
	jal _svfiprintf_r
	blt x10, x0, .LBB1_2
.LBB1_1:                                //  %if.then
	lw x11, 16 ( sp )
	sb x0, 0 ( x11 )
	lw x11, 32 ( sp )
	sw x11, 0 ( fp )
.LBB1_2:                                //  %if.end
	lw fp, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	_vasiprintf_r, .Lfunc_end1-_vasiprintf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
