	.text
	.file	"sniprintf.c"
	.globl	_sniprintf_r            //  -- Begin function _sniprintf_r
	.type	_sniprintf_r,@function
_sniprintf_r:                           //  @_sniprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	sw x9, 120 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 116 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	lw fp, 128 ( sp )
	lw x9, 136 ( sp )
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	blt x9, x0, .LBB0_1
.LBB0_2:                                //  %if.end
	lw x12, 140 ( sp )
	lw x10, 132 ( sp )
	add x13, x9, -1
	bltu x13, x9, .LBB0_4
.LBB0_3:                                //  %if.end
	mv x13, x0
.LBB0_4:                                //  %if.end
	add x11, sp, 8
	lui x14, %hi( -65016 )
	add x14, x14, %lo( -65016 )
	sw x10, 16 ( x11 )
	sw x10, 8 ( sp )
	sw x13, 8 ( x11 )
	sw x13, 28 ( sp )
	add x13, sp, 144
	mv x10, fp
	sw x14, 12 ( x11 )
	sw x13, 112 ( sp )
	jal _svfiprintf_r
	add x11, x0, -2
	blt x11, x10, .LBB0_6
.LBB0_5:                                //  %if.then6
	add x11, x0, 139
	sw x11, 0 ( fp )
.LBB0_6:                                //  %if.end8
	beq x0, x9, .LBB0_8
.LBB0_7:                                //  %if.then10
	lw x11, 8 ( sp )
	sb x0, 0 ( x11 )
	jal x0, .LBB0_8
.LBB0_1:                                //  %if.then
	add x10, x0, 139
	sw x10, 0 ( fp )
	add x10, x0, -1
.LBB0_8:                                //  %cleanup
	lw fp, 116 ( sp )               //  4-byte Folded Reload
	lw x9, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_sniprintf_r, .Lfunc_end0-_sniprintf_r
	.cfi_endproc
                                        //  -- End function
	.globl	sniprintf               //  -- Begin function sniprintf
	.type	sniprintf,@function
sniprintf:                              //  @sniprintf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x9, 120 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 116 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	lw fp, 0 ( x10 )
	lw x9, 132 ( sp )
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	blt x9, x0, .LBB1_1
.LBB1_2:                                //  %if.end
	lw x12, 136 ( sp )
	lw x10, 128 ( sp )
	add x13, x9, -1
	bltu x13, x9, .LBB1_4
.LBB1_3:                                //  %if.end
	mv x13, x0
.LBB1_4:                                //  %if.end
	add x11, sp, 8
	lui x14, %hi( -65016 )
	add x14, x14, %lo( -65016 )
	sw x10, 16 ( x11 )
	sw x10, 8 ( sp )
	sw x13, 8 ( x11 )
	sw x13, 28 ( sp )
	add x13, sp, 140
	mv x10, fp
	sw x14, 12 ( x11 )
	sw x13, 112 ( sp )
	jal _svfiprintf_r
	add x11, x0, -2
	blt x11, x10, .LBB1_6
.LBB1_5:                                //  %if.then6
	add x11, x0, 139
	sw x11, 0 ( fp )
.LBB1_6:                                //  %if.end8
	beq x0, x9, .LBB1_8
.LBB1_7:                                //  %if.then10
	lw x11, 8 ( sp )
	sb x0, 0 ( x11 )
	jal x0, .LBB1_8
.LBB1_1:                                //  %if.then
	add x10, x0, 139
	sw x10, 0 ( fp )
	add x10, x0, -1
.LBB1_8:                                //  %cleanup
	lw fp, 116 ( sp )               //  4-byte Folded Reload
	lw x9, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	sniprintf, .Lfunc_end1-sniprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
