	.text
	.file	"strndup_r.c"
	.globl	_strndup_r              //  -- Begin function _strndup_r
	.type	_strndup_r,@function
_strndup_r:                             //  @_strndup_r
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
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	beq x0, x12, .LBB0_4
.LBB0_1:                                //  %land.rhs.preheader
	mv x11, fp
.LBB0_2:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lbu x13, 0 ( x11 )
	beq x0, x13, .LBB0_4
.LBB0_3:                                //  %while.body
                                        //    in Loop: Header=BB0_2 Depth=1
	add x12, x12, -1
	add x11, x11, 1
	bltu x0, x12, .LBB0_2
.LBB0_4:                                //  %while.end
	sub x9, x11, fp
	add x11, x9, 1
	jal _malloc_r
	mv x18, x10
	beq x0, x18, .LBB0_6
.LBB0_5:                                //  %if.then
	mv x10, x18
	mv x11, fp
	mv x12, x9
	jal memcpy
	add x10, x9, x18
	sb x0, 0 ( x10 )
.LBB0_6:                                //  %if.end
	mv x10, x18
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_strndup_r, .Lfunc_end0-_strndup_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
