	.text
	.file	"vsniprintf.c"
	.globl	vsniprintf              //  -- Begin function vsniprintf
	.type	vsniprintf,@function
vsniprintf:                             //  @vsniprintf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	sw fp, 116 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x11
	lui x11, %hi( _impure_ptr )
	add x11, x11, %lo( _impure_ptr )
	sw x9, 120 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x9, 0 ( x11 )
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	blt fp, x0, .LBB0_1
.LBB0_2:                                //  %if.end.i
	add x14, fp, -1
	bltu x14, fp, .LBB0_4
.LBB0_3:                                //  %if.end.i
	mv x14, x0
.LBB0_4:                                //  %if.end.i
	add x11, sp, 12
	lui x15, %hi( -65016 )
	add x15, x15, %lo( -65016 )
	sw x10, 16 ( x11 )
	sw x10, 12 ( sp )
	mv x10, x9
	sw x15, 12 ( x11 )
	sw x14, 8 ( x11 )
	sw x14, 32 ( sp )
	jal _svfiprintf_r
	add x11, x0, -2
	blt x11, x10, .LBB0_6
.LBB0_5:                                //  %if.then4.i
	add x11, x0, 139
	sw x11, 0 ( x9 )
.LBB0_6:                                //  %if.end6.i
	beq x0, fp, .LBB0_8
.LBB0_7:                                //  %if.then8.i
	lw x11, 12 ( sp )
	sb x0, 0 ( x11 )
	jal x0, .LBB0_8
.LBB0_1:                                //  %if.then.i
	add x10, x0, 139
	sw x10, 0 ( x9 )
	add x10, x0, -1
.LBB0_8:                                //  %_vsniprintf_r.exit
	lw fp, 116 ( sp )               //  4-byte Folded Reload
	lw x9, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	vsniprintf, .Lfunc_end0-vsniprintf
	.cfi_endproc
                                        //  -- End function
	.globl	_vsniprintf_r           //  -- Begin function _vsniprintf_r
	.type	_vsniprintf_r,@function
_vsniprintf_r:                          //  @_vsniprintf_r
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
	mv fp, x12
	mv x9, x10
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	blt fp, x0, .LBB1_1
.LBB1_2:                                //  %if.end
	add x10, fp, -1
	bltu x10, fp, .LBB1_4
.LBB1_3:                                //  %if.end
	mv x10, x0
.LBB1_4:                                //  %if.end
	lui x15, %hi( -65016 )
	add x12, sp, 12
	add x15, x15, %lo( -65016 )
	sw x15, 12 ( x12 )
	sw x11, 16 ( x12 )
	sw x11, 12 ( sp )
	sw x10, 8 ( x12 )
	sw x10, 32 ( sp )
	mv x10, x9
	mv x11, x12
	mv x12, x13
	mv x13, x14
	jal _svfiprintf_r
	add x11, x0, -2
	blt x11, x10, .LBB1_6
.LBB1_5:                                //  %if.then4
	add x11, x0, 139
	sw x11, 0 ( x9 )
.LBB1_6:                                //  %if.end6
	beq x0, fp, .LBB1_8
.LBB1_7:                                //  %if.then8
	lw x11, 12 ( sp )
	sb x0, 0 ( x11 )
	jal x0, .LBB1_8
.LBB1_1:                                //  %if.then
	add x10, x0, 139
	sw x10, 0 ( x9 )
	add x10, x0, -1
.LBB1_8:                                //  %cleanup
	lw fp, 116 ( sp )               //  4-byte Folded Reload
	lw x9, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	_vsniprintf_r, .Lfunc_end1-_vsniprintf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
