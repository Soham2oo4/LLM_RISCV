	.text
	.file	"reallocr.c"
	.globl	_realloc_r              //  -- Begin function _realloc_r
	.type	_realloc_r,@function
_realloc_r:                             //  @_realloc_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv x18, x12
	mv fp, x11
	mv x9, x10
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	beq x0, fp, .LBB0_5
.LBB0_1:                                //  %if.end
	beq x0, x18, .LBB0_6
.LBB0_2:                                //  %if.end3
	mv x10, x9
	mv x11, fp
	jal _malloc_usable_size_r
	mv x20, x10
	bltu x20, x18, .LBB0_7
.LBB0_3:                                //  %if.end3
	srl x10, x20, 1&31
	bgeu x10, x18, .LBB0_7
.LBB0_4:
	mv x19, fp
	jal x0, .LBB0_12
.LBB0_5:                                //  %if.then
	mv x10, x9
	mv x11, x18
	jal _malloc_r
	mv x19, x10
	jal x0, .LBB0_12
.LBB0_6:                                //  %if.then2
	mv x10, x9
	mv x11, fp
	jal _free_r
	jal x0, .LBB0_11
.LBB0_7:                                //  %if.end8
	mv x10, x9
	mv x11, x18
	jal _malloc_r
	mv x19, x10
	beq x0, x19, .LBB0_11
.LBB0_8:                                //  %if.then11
	bltu x18, x20, .LBB0_10
.LBB0_9:                                //  %if.then11
	mv x18, x20
.LBB0_10:                               //  %if.then11
	mv x10, x19
	mv x11, fp
	mv x12, x18
	jal memcpy
	mv x10, x9
	mv x11, fp
	jal _free_r
	jal x0, .LBB0_12
.LBB0_11:
	mv x19, x0
.LBB0_12:                               //  %cleanup
	mv x10, x19
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_realloc_r, .Lfunc_end0-_realloc_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
