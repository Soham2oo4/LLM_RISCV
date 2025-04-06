	.text
	.file	"w_sqrt.c"
	.globl	sqrt                    //  -- Begin function sqrt
	.type	sqrt,@function
sqrt:                                   //  @sqrt
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x0
	mv x12, fp
	mv x13, fp
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x9, x11
	mv x18, x10
	jal __ltdf2
	mv x19, x10
	mv x10, x18
	mv x11, x9
	jal __ieee754_sqrt
	bge x19, x0, .LBB0_2
.LBB0_1:                                //  %if.then2
	jal __errno
	add x11, x0, 33
	sw x11, 0 ( x10 )
	lui x11, (2146959360>>12)&1048575
	mv x10, fp
.LBB0_2:                                //  %cleanup
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	sqrt, .Lfunc_end0-sqrt
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
