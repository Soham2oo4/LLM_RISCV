	.text
	.file	"rand_r.c"
	.globl	rand_r                  //  -- Begin function rand_r
	.type	rand_r,@function
rand_r:                                 //  @rand_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x10
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x9, 0 ( fp )
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x0
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bne x9, x18, .LBB0_2
.LBB0_1:
	lui x10, %hi( 305420679 )
	add x9, x10, %lo( 305420679 )
.LBB0_2:                                //  %entry
	lui x10, %hi( 127773 )
	add x11, x10, %lo( 127773 )
	mv x10, x9
	jal __divsi3
	lui x11, %hi( -127773 )
	add x11, x11, %lo( -127773 )
	hackaton_custom_instr_c x11, x11, x10
	lui x12, %hi( 16807 )
	add x11, x9, x11
	add x12, x12, %lo( 16807 )
	hackaton_custom_instr_c x11, x12, x11
	lui x12, %hi( -2836 )
	add x12, x12, %lo( -2836 )
	hackaton_custom_instr_c x10, x12, x10
	add x10, x10, x11
	lui x11, %hi( 2147483647 )
	add x11, x11, %lo( 2147483647 )
	bge x10, x18, .LBB0_4
.LBB0_3:
	add x10, x11, x10
.LBB0_4:                                //  %entry
	sw x10, 0 ( fp )
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	and x10, x11, x10
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	rand_r, .Lfunc_end0-rand_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
