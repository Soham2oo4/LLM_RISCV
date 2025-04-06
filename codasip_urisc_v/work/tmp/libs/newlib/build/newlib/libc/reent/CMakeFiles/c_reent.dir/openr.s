	.text
	.file	"openr.c"
	.globl	_open_r                 //  -- Begin function _open_r
	.type	_open_r,@function
_open_r:                                //  @_open_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 20 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	lui x10, %hi( errno )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9, x10, %lo( errno )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x0, 0 ( x9 )
	sw x12, 4 ( sp )
	sw x13, 8 ( sp )
	sw x11, 0 ( sp )
	jal open
	xor x11, x10, -1
	bltu x0, x11, .LBB0_3
.LBB0_1:                                //  %entry
	lw x11, 0 ( x9 )
	beq x0, x11, .LBB0_3
.LBB0_2:                                //  %if.then
	sw x11, 0 ( fp )
.LBB0_3:                                //  %if.end
	lw fp, 20 ( sp )                //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_open_r, .Lfunc_end0-_open_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
