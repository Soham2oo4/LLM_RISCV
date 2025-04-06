	.text
	.file	"cprojf.c"
	.globl	cprojf                  //  -- Begin function cprojf
	.type	cprojf,@function
cprojf:                                 //  @cprojf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x19, 0 ( x11 )
	lw x9, 4 ( x11 )
	sw fp, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x10
	add x10, sp, 24
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x19, 48 ( sp )
	sw x9, 52 ( sp )
	sw x19, 24 ( sp )
	sw x9, 28 ( sp )
	jal crealf
	lui x11, %hi( 2147483647 )
	add x20, x11, %lo( 2147483647 )
	lui x18, (2139095040>>12)&1048575
	and x10, x20, x10
	mv x11, x18
	jal __eqsf2
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %lor.lhs.false
	add x10, sp, 16
	sw x19, 40 ( sp )
	sw x19, 16 ( sp )
	sw x9, 44 ( sp )
	sw x9, 20 ( sp )
	jal cimagf
	and x10, x20, x10
	lui x11, (2139095040>>12)&1048575
	jal __nesf2
	bltu x0, x10, .LBB0_2
.LBB0_3:                                //  %if.then
	add x10, sp, 8
	sw x19, 32 ( sp )
	sw x19, 8 ( sp )
	sw x9, 36 ( sp )
	sw x9, 12 ( sp )
	jal cimagf
	mv x11, x10
	mv x10, x0
	jal copysignf
	mv x9, x10
.LBB0_4:                                //  %if.end
	sw x9, 4 ( fp )
	sw x18, 0 ( fp )
	lw fp, 56 ( sp )                //  4-byte Folded Reload
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	lw x19, 64 ( sp )               //  4-byte Folded Reload
	lw x18, 68 ( sp )               //  4-byte Folded Reload
	lw x9, 72 ( sp )                //  4-byte Folded Reload
	lw ra, 76 ( sp )                //  4-byte Folded Reload
	add sp, sp, 80
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_2:
	mv x18, x19
	jal x0, .LBB0_4
.Lfunc_end0:
	.size	cprojf, .Lfunc_end0-cprojf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
