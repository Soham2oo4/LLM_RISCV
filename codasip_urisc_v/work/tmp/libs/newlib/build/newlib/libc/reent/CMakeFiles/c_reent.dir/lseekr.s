	.text
	.file	"lseekr.c"
	.globl	_lseek_r                //  -- Begin function _lseek_r
	.type	_lseek_r,@function
_lseek_r:                               //  @_lseek_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	lui x10, %hi( errno )
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9, x10, %lo( errno )
	mv x10, x11
	mv x11, x12
	mv x12, x13
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x0, 0 ( x9 )
	jal lseek
	xor x11, x10, -1
	bltu x0, x11, .LBB0_3
.LBB0_1:                                //  %entry
	lw x11, 0 ( x9 )
	beq x0, x11, .LBB0_3
.LBB0_2:                                //  %if.then
	sw x11, 0 ( fp )
.LBB0_3:                                //  %if.end
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_lseek_r, .Lfunc_end0-_lseek_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
