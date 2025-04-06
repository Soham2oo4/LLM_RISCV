	.text
	.file	"cabsl.c"
	.globl	cabsl                   //  -- Begin function cabsl
	.type	cabsl,@function
cabsl:                                  //  @cabsl
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw fp, 48 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x10
	lw x10, 0 ( fp )
	lw x11, 4 ( fp )
	lw x12, 8 ( fp )
	lw x13, 12 ( fp )
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	jal __trunctfdf2
	mv x9, x10
	mv x18, x11
	lw x10, 16 ( fp )
	lw x11, 20 ( fp )
	lw x12, 24 ( fp )
	lw x13, 28 ( fp )
	add fp, sp, 32
	sw x18, 4 ( fp )
	jal __trunctfdf2
	add x12, sp, 16
	sw x10, 8 ( fp )
	sw x10, 8 ( x12 )
	mv x10, x12
	sw x11, 44 ( sp )
	sw x11, 28 ( sp )
	sw x18, 4 ( x12 )
	sw x9, 32 ( sp )
	sw x9, 16 ( sp )
	jal cabs
	jal __extenddftf2
	lw fp, 48 ( sp )                //  4-byte Folded Reload
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	lw x9, 56 ( sp )                //  4-byte Folded Reload
	lw ra, 60 ( sp )                //  4-byte Folded Reload
	add sp, sp, 64
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	cabsl, .Lfunc_end0-cabsl
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
