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
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x10
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x9, 0 ( fp )
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x0
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	bne x9, x19, .LBB0_2
.LBB0_1:
	lui x10, %hi( 305420679 )
	add x9, x10, %lo( 305420679 )
.LBB0_2:                                //  %entry
	lui x10, %hi( 127773 )
	add x11, x10, %lo( 127773 )
	mv x10, x9
	jal __divsi3
	mv x18, x10
	lui x10, %hi( -127773 )
	add x11, x10, %lo( -127773 )
	mv x10, x18
	jal __mulsi3
	lui x11, %hi( 16807 )
	add x10, x9, x10
	add x11, x11, %lo( 16807 )
	jal __mulsi3
	mv x9, x10
	lui x10, %hi( -2836 )
	add x11, x10, %lo( -2836 )
	mv x10, x18
	jal __mulsi3
	lui x11, %hi( 2147483647 )
	add x10, x10, x9
	add x11, x11, %lo( 2147483647 )
	bge x10, x19, .LBB0_4
.LBB0_3:
	add x10, x11, x10
.LBB0_4:                                //  %entry
	sw x10, 0 ( fp )
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	and x10, x11, x10
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	rand_r, .Lfunc_end0-rand_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
