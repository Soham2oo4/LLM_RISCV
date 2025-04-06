	.text
	.file	"xpg_strerror_r.c"
	.globl	__xpg_strerror_r        //  -- Begin function __xpg_strerror_r
	.type	__xpg_strerror_r,@function
__xpg_strerror_r:                       //  @__xpg_strerror_r
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
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv x9, x11
	mv x18, x12
	mv x11, x10
	add fp, x0, 34
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x0, 8 ( sp )
	beq x0, x18, .LBB0_6
.LBB0_1:                                //  %if.end
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	seqz x12, x0
	add x13, sp, 8
	jal _strerror_r
	mv x19, x10
	jal strlen
	bgeu x10, x18, .LBB0_2
.LBB0_3:                                //  %if.end5
	mv x10, x9
	mv x11, x19
	jal strcpy
	lw fp, 8 ( sp )
	bltu x0, fp, .LBB0_6
.LBB0_4:                                //  %lor.lhs.false
	lbu x10, 0 ( x19 )
	bltu x0, x10, .LBB0_6
.LBB0_5:
	add fp, x0, 22
	jal x0, .LBB0_6
.LBB0_2:                                //  %if.then2
	add x18, x18, -1
	mv x10, x9
	mv x11, x19
	mv x12, x18
	jal memcpy
	add x10, x18, x9
	sb x0, 0 ( x10 )
.LBB0_6:                                //  %cleanup
	mv x10, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__xpg_strerror_r, .Lfunc_end0-__xpg_strerror_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
