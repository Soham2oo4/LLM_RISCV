	.text
	.file	"carg.c"
	.globl	carg                    //  -- Begin function carg
	.type	carg,@function
carg:                                   //  @carg
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -96
	.cfi_adjust_cfa_offset 96
	sw x18, 84 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 80 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 76 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 72 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	lw x18, 4 ( x10 )
	lw x19, 8 ( x10 )
	lw x20, 12 ( x10 )
	lw x21, 0 ( x10 )
	add x10, sp, 20
	add x11, sp, 52
	sw ra, 92 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 88 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 68 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -28
	sw x18, 4 ( x11 )
	sw x19, 8 ( x11 )
	sw x19, 8 ( x10 )
	sw x18, 4 ( x10 )
	sw x21, 52 ( sp )
	sw x20, 64 ( sp )
	sw x20, 32 ( sp )
	sw x21, 20 ( sp )
	jal cimag
	mv fp, x10
	add x10, sp, 36
	sw x18, 4 ( x10 )
	sw x19, 8 ( x10 )
	add x10, sp, 4
	mv x9, x11
	sw x18, 4 ( x10 )
	sw x19, 8 ( x10 )
	sw x21, 36 ( sp )
	sw x21, 4 ( sp )
	sw x20, 48 ( sp )
	sw x20, 16 ( sp )
	jal creal
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x9
	lw fp, 68 ( sp )                //  4-byte Folded Reload
	lw x21, 72 ( sp )               //  4-byte Folded Reload
	lw x20, 76 ( sp )               //  4-byte Folded Reload
	lw x19, 80 ( sp )               //  4-byte Folded Reload
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	lw ra, 92 ( sp )                //  4-byte Folded Reload
	add sp, sp, 96
	.cfi_def_cfa 2, 0
	j atan2
.Lfunc_end0:
	.size	carg, .Lfunc_end0-carg
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
