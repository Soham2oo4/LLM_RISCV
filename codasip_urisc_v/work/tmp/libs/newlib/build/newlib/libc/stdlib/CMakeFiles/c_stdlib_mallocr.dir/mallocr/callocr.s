	.text
	.file	"callocr.c"
	.globl	_calloc_r               //  -- Begin function _calloc_r
	.type	_calloc_r,@function
_calloc_r:                              //  @_calloc_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x0
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	mv x10, x11
	mv x11, fp
	mv x13, fp
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	jal __muldi3
	mv x9, x10
	beq x0, x11, .LBB0_2
.LBB0_1:                                //  %if.then
	add x10, x0, 12
	sw x10, 0 ( x18 )
	jal x0, .LBB0_4
.LBB0_2:                                //  %if.end
	mv x10, x18
	mv x11, x9
	jal _malloc_r
	mv x18, x10
	beq x0, x18, .LBB0_4
.LBB0_3:                                //  %if.then1
	mv x11, x0
	mv x10, x18
	mv x12, x9
	jal memset
	mv fp, x18
.LBB0_4:                                //  %cleanup
	mv x10, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_calloc_r, .Lfunc_end0-_calloc_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
