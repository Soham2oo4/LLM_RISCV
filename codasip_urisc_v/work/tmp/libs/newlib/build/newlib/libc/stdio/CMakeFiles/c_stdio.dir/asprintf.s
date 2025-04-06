	.text
	.file	"asprintf.c"
	.globl	_asprintf_r             //  -- Begin function _asprintf_r
	.type	_asprintf_r,@function
_asprintf_r:                            //  @_asprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	lui x10, %hi( -64888 )
	add x11, sp, 16
	add x10, x10, %lo( -64888 )
	sw x10, 12 ( x11 )
	lw x10, 128 ( sp )
	lw x12, 136 ( sp )
	add x13, sp, 140
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x13, 120 ( sp )
	sw x0, 16 ( x11 )
	sw x0, 8 ( x11 )
	sw x0, 16 ( sp )
	sw x0, 36 ( sp )
	jal _svfprintf_r
	blt x10, x0, .LBB0_2
.LBB0_1:                                //  %if.then
	lw x12, 16 ( sp )
	lw x11, 132 ( sp )
	sb x0, 0 ( x12 )
	lw x12, 32 ( sp )
	sw x12, 0 ( x11 )
.LBB0_2:                                //  %if.end
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_asprintf_r, .Lfunc_end0-_asprintf_r
	.cfi_endproc
                                        //  -- End function
	.globl	asprintf                //  -- Begin function asprintf
	.type	asprintf,@function
asprintf:                               //  @asprintf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	lui x10, %hi( -64888 )
	add x11, sp, 16
	add x10, x10, %lo( -64888 )
	sw x10, 12 ( x11 )
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	lw x12, 132 ( sp )
	add x13, sp, 136
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x13, 120 ( sp )
	sw x0, 16 ( x11 )
	sw x0, 8 ( x11 )
	sw x0, 16 ( sp )
	sw x0, 36 ( sp )
	jal _svfprintf_r
	blt x10, x0, .LBB1_2
.LBB1_1:                                //  %if.then
	lw x12, 16 ( sp )
	lw x11, 128 ( sp )
	sb x0, 0 ( x12 )
	lw x12, 32 ( sp )
	sw x12, 0 ( x11 )
.LBB1_2:                                //  %if.end
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	asprintf, .Lfunc_end1-asprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
