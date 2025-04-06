	.text
	.file	"vdiprintf.c"
	.globl	_vdiprintf_r            //  -- Begin function _vdiprintf_r
	.type	_vdiprintf_r,@function
_vdiprintf_r:                           //  @_vdiprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -544
	.cfi_adjust_cfa_offset 544
	sw x9, 536 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 524 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x10
	add x10, x0, 512
	add x9, sp, 12
	sw x18, 532 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x14, x13
	mv x13, x12
	mv x18, x11
	sw x10, 8 ( sp )
	add x12, sp, 8
	mv x10, fp
	mv x11, x9
	sw ra, 540 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 528 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	jal _vasniprintf_r
	mv x19, x10
	beq x0, x19, .LBB0_1
.LBB0_2:                                //  %if.end
	lw x13, 8 ( sp )
	mv x10, fp
	mv x11, x18
	mv x12, x19
	jal _write_r
	sw x10, 8 ( sp )
	beq x19, x9, .LBB0_4
.LBB0_3:                                //  %if.then3
	mv x10, fp
	mv x11, x19
	jal _free_r
	lw x10, 8 ( sp )
	jal x0, .LBB0_4
.LBB0_1:
	add x10, x0, -1
.LBB0_4:                                //  %cleanup
	lw fp, 524 ( sp )               //  4-byte Folded Reload
	lw x19, 528 ( sp )              //  4-byte Folded Reload
	lw x18, 532 ( sp )              //  4-byte Folded Reload
	lw x9, 536 ( sp )               //  4-byte Folded Reload
	lw ra, 540 ( sp )               //  4-byte Folded Reload
	add sp, sp, 544
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_vdiprintf_r, .Lfunc_end0-_vdiprintf_r
	.cfi_endproc
                                        //  -- End function
	.globl	vdiprintf               //  -- Begin function vdiprintf
	.type	vdiprintf,@function
vdiprintf:                              //  @vdiprintf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -544
	.cfi_adjust_cfa_offset 544
	sw x9, 536 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw fp, 524 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	lw fp, 0 ( x10 )
	sw x18, 532 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x10, x0, 512
	add x18, sp, 12
	mv x14, x12
	sw x10, 8 ( sp )
	mv x13, x11
	add x12, sp, 8
	mv x10, fp
	mv x11, x18
	sw ra, 540 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 528 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	jal _vasniprintf_r
	mv x19, x10
	beq x0, x19, .LBB1_1
.LBB1_2:                                //  %if.end.i
	lw x13, 8 ( sp )
	mv x10, fp
	mv x11, x9
	mv x12, x19
	jal _write_r
	sw x10, 8 ( sp )
	beq x19, x18, .LBB1_4
.LBB1_3:                                //  %if.then3.i
	mv x10, fp
	mv x11, x19
	jal _free_r
	lw x10, 8 ( sp )
	jal x0, .LBB1_4
.LBB1_1:
	add x10, x0, -1
.LBB1_4:                                //  %_vdiprintf_r.exit
	lw fp, 524 ( sp )               //  4-byte Folded Reload
	lw x19, 528 ( sp )              //  4-byte Folded Reload
	lw x18, 532 ( sp )              //  4-byte Folded Reload
	lw x9, 536 ( sp )               //  4-byte Folded Reload
	lw ra, 540 ( sp )               //  4-byte Folded Reload
	add sp, sp, 544
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	vdiprintf, .Lfunc_end1-vdiprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
