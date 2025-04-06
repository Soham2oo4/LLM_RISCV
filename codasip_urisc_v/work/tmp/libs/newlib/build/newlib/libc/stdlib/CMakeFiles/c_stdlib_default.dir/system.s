	.text
	.file	"system.c"
	.globl	_system_r               //  -- Begin function _system_r
	.type	_system_r,@function
_system_r:                              //  @_system_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x11, .LBB0_1
.LBB0_2:                                //  %if.end
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal __errno
	add x11, x0, 88
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	sw x11, 0 ( x10 )
	add x10, x0, -1
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_1:
	mv x10, x0
	jr ra
.Lfunc_end0:
	.size	_system_r, .Lfunc_end0-_system_r
	.cfi_endproc
                                        //  -- End function
	.globl	system                  //  -- Begin function system
	.type	system,@function
system:                                 //  @system
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x10, .LBB1_1
.LBB1_2:                                //  %if.end.i
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal __errno
	add x11, x0, 88
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	sw x11, 0 ( x10 )
	add x10, x0, -1
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_1:
	mv x10, x0
	jr ra
.Lfunc_end1:
	.size	system, .Lfunc_end1-system
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
