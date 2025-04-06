	.text
	.file	"cabsf.c"
	.globl	cabsf                   //  -- Begin function cabsf
	.type	cabsf,@function
cabsf:                                  //  @cabsf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x9, 4 ( x10 )
	lw x18, 0 ( x10 )
	add x10, sp, 24
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 48 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw x9, 44 ( sp )
	sw x18, 40 ( sp )
	sw x18, 24 ( sp )
	sw x9, 28 ( sp )
	jal crealf
	mv fp, x10
	add x10, sp, 16
	sw x18, 32 ( sp )
	sw x18, 16 ( sp )
	sw x9, 36 ( sp )
	sw x9, 20 ( sp )
	jal cimagf
	mv x11, x10
	mv x10, fp
	lw fp, 48 ( sp )                //  4-byte Folded Reload
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	lw x9, 56 ( sp )                //  4-byte Folded Reload
	lw ra, 60 ( sp )                //  4-byte Folded Reload
	add sp, sp, 64
	.cfi_def_cfa 2, 0
	j hypotf
.Lfunc_end0:
	.size	cabsf, .Lfunc_end0-cabsf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
