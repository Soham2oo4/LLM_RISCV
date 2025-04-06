	.text
	.file	"asniprintf.c"
	.globl	_asniprintf_r           //  -- Begin function _asniprintf_r
	.type	_asniprintf_r,@function
_asniprintf_r:                          //  @_asniprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	sw fp, 120 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	lw fp, 136 ( sp )
	lw x10, 132 ( sp )
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x13, 0 ( fp )
	snez x11, x10
	snez x12, x13
	and x12, x12, x11
	bltu x0, x12, .LBB0_2
.LBB0_1:                                //  %entry
	add x14, x0, 648
	add x11, sp, 12
	sh x14, 12 ( x11 )
	mv x14, x0
	beq x0, x12, .LBB0_3
	jal x0, .LBB0_4
.LBB0_2:
	add x14, x0, 1544
	add x11, sp, 12
	sh x14, 12 ( x11 )
	mv x14, x0
	beq x0, x12, .LBB0_3
.LBB0_4:                                //  %entry
	bltu x0, x12, .LBB0_5
.LBB0_8:                                //  %entry
	mv x13, x14
	sw x10, 28 ( sp )
	sw x10, 12 ( sp )
	lw x10, 128 ( sp )
	bge x13, x0, .LBB0_6
.LBB0_9:                                //  %if.then3
	add x11, x0, 139
	sw x11, 0 ( x10 )
	jal x0, .LBB0_10
.LBB0_3:                                //  %entry
	mv x10, x14
	beq x0, x12, .LBB0_8
.LBB0_5:                                //  %entry
	sw x10, 28 ( sp )
	sw x10, 12 ( sp )
	lw x10, 128 ( sp )
	blt x13, x0, .LBB0_9
.LBB0_6:                                //  %if.end4
	lw x12, 140 ( sp )
	lui x14, %hi( 65535 )
	add x14, x14, %lo( 65535 )
	sw x13, 8 ( x11 )
	sw x13, 32 ( sp )
	add x13, sp, 144
	sh x14, 14 ( x11 )
	sw x13, 116 ( sp )
	jal _svfiprintf_r
	blt x10, x0, .LBB0_10
.LBB0_7:                                //  %if.end10
	sw x10, 0 ( fp )
	lw x10, 12 ( sp )
	sb x0, 0 ( x10 )
	lw x10, 28 ( sp )
	lw fp, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_10:
	mv x10, x0
	lw fp, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_asniprintf_r, .Lfunc_end0-_asniprintf_r
	.cfi_endproc
                                        //  -- End function
	.globl	asniprintf              //  -- Begin function asniprintf
	.type	asniprintf,@function
asniprintf:                             //  @asniprintf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	sw fp, 120 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	lw fp, 132 ( sp )
	lw x10, 128 ( sp )
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x13, 0 ( fp )
	snez x11, x10
	snez x12, x13
	and x12, x12, x11
	bltu x0, x12, .LBB1_2
.LBB1_1:                                //  %entry
	add x14, x0, 648
	add x11, sp, 12
	sh x14, 12 ( x11 )
	mv x14, x0
	beq x0, x12, .LBB1_3
	jal x0, .LBB1_4
.LBB1_2:
	add x14, x0, 1544
	add x11, sp, 12
	sh x14, 12 ( x11 )
	mv x14, x0
	bltu x0, x12, .LBB1_4
.LBB1_3:                                //  %entry
	mv x10, x14
.LBB1_4:                                //  %entry
	bltu x0, x12, .LBB1_6
.LBB1_5:                                //  %entry
	mv x13, x14
.LBB1_6:                                //  %entry
	sw x10, 28 ( sp )
	sw x10, 12 ( sp )
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	blt x13, x0, .LBB1_9
.LBB1_7:                                //  %if.end4
	lw x12, 136 ( sp )
	lui x14, %hi( 65535 )
	add x14, x14, %lo( 65535 )
	sw x13, 8 ( x11 )
	sw x13, 32 ( sp )
	add x13, sp, 140
	sh x14, 14 ( x11 )
	sw x13, 116 ( sp )
	jal _svfiprintf_r
	blt x10, x0, .LBB1_10
.LBB1_8:                                //  %if.end10
	sw x10, 0 ( fp )
	lw x10, 12 ( sp )
	sb x0, 0 ( x10 )
	lw x10, 28 ( sp )
	lw fp, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_9:                                //  %if.then3
	add x11, x0, 139
	sw x11, 0 ( x10 )
.LBB1_10:
	mv x10, x0
	lw fp, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	asniprintf, .Lfunc_end1-asniprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
