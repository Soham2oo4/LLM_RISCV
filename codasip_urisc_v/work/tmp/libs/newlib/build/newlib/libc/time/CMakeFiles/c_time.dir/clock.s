	.text
	.file	"clock.c"
	.globl	clock                   //  -- Begin function clock
	.type	clock,@function
clock:                                  //  @clock
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	sw fp, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -8
	add fp, sp, 8
	mv x11, fp
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal _times_r
	xor x10, x10, -1
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %if.then
	lw x10, 4 ( fp )
	lw x11, 8 ( sp )
	add x10, x11, x10
	lw x11, 8 ( fp )
	add x10, x11, x10
	lw x11, 20 ( sp )
	add x10, x11, x10
	lw fp, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_1:
	add x10, x0, -1
	lw fp, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	clock, .Lfunc_end0-clock
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
