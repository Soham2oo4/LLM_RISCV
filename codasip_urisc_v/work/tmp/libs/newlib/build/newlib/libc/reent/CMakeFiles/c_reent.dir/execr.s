	.text
	.file	"execr.c"
	.globl	_execve_r               //  -- Begin function _execve_r
	.type	_execve_r,@function
_execve_r:                              //  @_execve_r
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
	jal execve
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
	.size	_execve_r, .Lfunc_end0-_execve_r
	.cfi_endproc
                                        //  -- End function
	.globl	_fork_r                 //  -- Begin function _fork_r
	.type	_fork_r,@function
_fork_r:                                //  @_fork_r
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
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x0, 0 ( x9 )
	jal fork
	xor x11, x10, -1
	bltu x0, x11, .LBB1_3
.LBB1_1:                                //  %entry
	lw x11, 0 ( x9 )
	beq x0, x11, .LBB1_3
.LBB1_2:                                //  %if.then
	sw x11, 0 ( fp )
.LBB1_3:                                //  %if.end
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	_fork_r, .Lfunc_end1-_fork_r
	.cfi_endproc
                                        //  -- End function
	.globl	_wait_r                 //  -- Begin function _wait_r
	.type	_wait_r,@function
_wait_r:                                //  @_wait_r
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
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x0, 0 ( x9 )
	jal wait
	xor x11, x10, -1
	bltu x0, x11, .LBB2_3
.LBB2_1:                                //  %entry
	lw x11, 0 ( x9 )
	beq x0, x11, .LBB2_3
.LBB2_2:                                //  %if.then
	sw x11, 0 ( fp )
.LBB2_3:                                //  %if.end
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	_wait_r, .Lfunc_end2-_wait_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
