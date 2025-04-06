	.text
	.file	"w_fmod.c"
	.globl	fmod                    //  -- Begin function fmod
	.type	fmod,@function
fmod:                                   //  @fmod
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
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv x18, x13
	mv x19, x12
	mv x20, x11
	mv x21, x10
	jal __ieee754_fmod
	mv x9, x10
	mv fp, x11
	mv x10, x19
	mv x11, x18
	mv x12, x21
	mv x13, x20
	jal __unorddf2
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %entry
	mv x20, x0
	mv x13, x20
	mv x10, x19
	mv x11, x18
	mv x12, x20
	jal __nedf2
	bltu x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then3
	jal __errno
	add x11, x0, 33
	lui fp, (2146959360>>12)&1048575
	mv x9, x20
	sw x11, 0 ( x10 )
.LBB0_3:                                //  %cleanup
	mv x10, x9
	mv x11, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	fmod, .Lfunc_end0-fmod
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
