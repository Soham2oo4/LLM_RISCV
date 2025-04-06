	.text
	.file	"wf_lgamma.c"
	.globl	lgammaf                 //  -- Begin function lgammaf
	.type	lgammaf,@function
lgammaf:                                //  @lgammaf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x11, x10, 160
	mv x10, x9
	jal __ieee754_lgammaf_r
	mv fp, x10
	jal finitef
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	mv x10, x9
	jal finitef
	beq x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then
	jal __errno
	add x11, x0, 34
	sw x11, 0 ( x10 )
.LBB0_3:                                //  %if.end
	mv x10, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	lgammaf, .Lfunc_end0-lgammaf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
