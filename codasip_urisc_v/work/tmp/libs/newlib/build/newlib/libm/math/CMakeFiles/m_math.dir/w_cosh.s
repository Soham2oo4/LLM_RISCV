	.text
	.file	"w_cosh.c"
	.globl	cosh                    //  -- Begin function cosh
	.type	cosh,@function
cosh:                                   //  @cosh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv x18, x11
	mv x19, x10
	jal __ieee754_cosh
	mv x9, x10
	mv fp, x11
	mv x10, x19
	mv x11, x18
	mv x12, x19
	mv x13, x18
	jal __unorddf2
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %if.end
	mv x10, x19
	mv x11, x18
	jal fabs
	lui x12, %hi( -1883637635 )
	lui x13, %hi( 1082536910 )
	add x12, x12, %lo( -1883637635 )
	add x13, x13, %lo( 1082536910 )
	jal __gtdf2
	bge x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then3
	jal __errno
	add x11, x0, 34
	lui fp, (2146435072>>12)&1048575
	mv x9, x0
	sw x11, 0 ( x10 )
.LBB0_3:                                //  %cleanup
	mv x10, x9
	mv x11, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	cosh, .Lfunc_end0-cosh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
