	.text
	.file	"vswprintf.c"
	.globl	_vswprintf_r            //  -- Begin function _vswprintf_r
	.type	_vswprintf_r,@function
_vswprintf_r:                           //  @_vswprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	sw x9, 120 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x12
	sw fp, 116 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	mv x12, x11
	srl x10, x9, 29&31
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x0, x10, .LBB0_6
.LBB0_1:                                //  %if.end
	lui x10, %hi( -65016 )
	add x11, sp, 12
	add x10, x10, %lo( -65016 )
	sw x10, 12 ( x11 )
	mv x10, x0
	sw x12, 16 ( x11 )
	sw x12, 12 ( sp )
	beq x9, x10, .LBB0_3
.LBB0_2:
	sll x10, x9, 2&31
	add x10, x10, -4
.LBB0_3:                                //  %if.end
	mv x12, x13
	sw x10, 8 ( x11 )
	sw x10, 32 ( sp )
	mv x10, fp
	mv x13, x14
	jal _svfwprintf_r
	beq x0, x9, .LBB0_5
.LBB0_4:                                //  %if.then4
	lw x11, 12 ( sp )
	sw x0, 0 ( x11 )
.LBB0_5:                                //  %if.end6
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
	.size	_vswprintf_r, .Lfunc_end0-_vswprintf_r
	.cfi_endproc
                                        //  -- End function
	.globl	vswprintf               //  -- Begin function vswprintf
	.type	vswprintf,@function
vswprintf:                              //  @vswprintf
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
	sw fp, 116 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	lw fp, 0 ( x11 )
	srl x11, x9, 29&31
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x0, x11, .LBB1_6
.LBB1_1:                                //  %if.end.i
	lui x14, %hi( -65016 )
	add x11, sp, 12
	add x14, x14, %lo( -65016 )
	sw x10, 16 ( x11 )
	sw x10, 12 ( sp )
	mv x10, x0
	sw x14, 12 ( x11 )
	beq x9, x10, .LBB1_3
.LBB1_2:
	sll x10, x9, 2&31
	add x10, x10, -4
.LBB1_3:                                //  %if.end.i
	sw x10, 8 ( x11 )
	sw x10, 32 ( sp )
	mv x10, fp
	jal _svfwprintf_r
	beq x0, x9, .LBB1_5
.LBB1_4:                                //  %if.then4.i
	lw x11, 12 ( sp )
	sw x0, 0 ( x11 )
.LBB1_5:                                //  %if.end6.i
	bltu x10, x9, .LBB1_7
.LBB1_6:                                //  %_vswprintf_r.exit.sink.split
	add x10, x0, 139
	sw x10, 0 ( fp )
	add x10, x0, -1
.LBB1_7:                                //  %_vswprintf_r.exit
	lw fp, 116 ( sp )               //  4-byte Folded Reload
	lw x9, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	vswprintf, .Lfunc_end1-vswprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
