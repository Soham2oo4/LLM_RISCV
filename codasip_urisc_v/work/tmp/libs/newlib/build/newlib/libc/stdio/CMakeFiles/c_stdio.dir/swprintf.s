	.text
	.file	"swprintf.c"
	.globl	_swprintf_r             //  -- Begin function _swprintf_r
	.type	_swprintf_r,@function
_swprintf_r:                            //  @_swprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	sw x9, 120 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x9, 136 ( sp )
	sw fp, 116 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	lw fp, 128 ( sp )
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srl x10, x9, 29&31
	bltu x0, x10, .LBB0_6
.LBB0_1:                                //  %if.end
	lw x10, 132 ( sp )
	lw x12, 140 ( sp )
	lui x13, %hi( -65016 )
	add x11, sp, 8
	add x13, x13, %lo( -65016 )
	sw x10, 16 ( x11 )
	sw x10, 8 ( sp )
	mv x10, x0
	sw x13, 12 ( x11 )
	beq x9, x10, .LBB0_3
.LBB0_2:
	sll x10, x9, 2&31
	add x10, x10, -4
.LBB0_3:                                //  %if.end
	add x13, sp, 144
	sw x10, 8 ( x11 )
	sw x10, 28 ( sp )
	mv x10, fp
	sw x13, 112 ( sp )
	jal _svfwprintf_r
	beq x0, x9, .LBB0_5
.LBB0_4:                                //  %if.then6
	lw x11, 8 ( sp )
	sw x0, 0 ( x11 )
.LBB0_5:                                //  %if.end8
	bltu x10, x9, .LBB0_7
.LBB0_6:                                //  %cleanup.sink.split
	add x10, x0, 139
	sw x10, 0 ( fp )
	add x10, x0, -1
.LBB0_7:                                //  %cleanup
	lw fp, 116 ( sp )               //  4-byte Folded Reload
	lw x9, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_swprintf_r, .Lfunc_end0-_swprintf_r
	.cfi_endproc
                                        //  -- End function
	.globl	swprintf                //  -- Begin function swprintf
	.type	swprintf,@function
swprintf:                               //  @swprintf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	lui x10, %hi( _impure_ptr )
	sw x9, 120 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x10, x10, %lo( _impure_ptr )
	lw x9, 132 ( sp )
	sw fp, 116 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	lw fp, 0 ( x10 )
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srl x10, x9, 29&31
	bltu x0, x10, .LBB1_6
.LBB1_1:                                //  %if.end
	lw x10, 128 ( sp )
	lw x12, 136 ( sp )
	lui x13, %hi( -65016 )
	add x11, sp, 8
	add x13, x13, %lo( -65016 )
	sw x10, 16 ( x11 )
	sw x10, 8 ( sp )
	mv x10, x0
	sw x13, 12 ( x11 )
	beq x9, x10, .LBB1_3
.LBB1_2:
	sll x10, x9, 2&31
	add x10, x10, -4
.LBB1_3:                                //  %if.end
	add x13, sp, 140
	sw x10, 8 ( x11 )
	sw x10, 28 ( sp )
	mv x10, fp
	sw x13, 112 ( sp )
	jal _svfwprintf_r
	beq x0, x9, .LBB1_5
.LBB1_4:                                //  %if.then6
	lw x11, 8 ( sp )
	sw x0, 0 ( x11 )
.LBB1_5:                                //  %if.end8
	bltu x10, x9, .LBB1_7
.LBB1_6:                                //  %cleanup.sink.split
	add x10, x0, 139
	sw x10, 0 ( fp )
	add x10, x0, -1
.LBB1_7:                                //  %cleanup
	lw fp, 116 ( sp )               //  4-byte Folded Reload
	lw x9, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	swprintf, .Lfunc_end1-swprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
