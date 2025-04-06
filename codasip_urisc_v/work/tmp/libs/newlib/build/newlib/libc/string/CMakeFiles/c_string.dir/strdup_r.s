	.text
	.file	"strdup_r.c"
	.globl	_strdup_r               //  -- Begin function _strdup_r
	.type	_strdup_r,@function
_strdup_r:                              //  @_strdup_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x11
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	mv x10, fp
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	jal strlen
	add x9, x10, 1
	mv x10, x18
	mv x11, x9
	jal _malloc_r
	mv x18, x10
	beq x0, x18, .LBB0_2
.LBB0_1:                                //  %if.then
	mv x10, x18
	mv x11, fp
	mv x12, x9
	jal memcpy
.LBB0_2:                                //  %if.end
	mv x10, x18
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_strdup_r, .Lfunc_end0-_strdup_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
