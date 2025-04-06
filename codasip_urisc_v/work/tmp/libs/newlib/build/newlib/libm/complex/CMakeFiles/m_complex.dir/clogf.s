	.text
	.file	"clogf.c"
	.globl	clogf                   //  -- Begin function clogf
	.type	clogf,@function
clogf:                                  //  @clogf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x19, 4 ( x11 )
	lw x20, 0 ( x11 )
	sw fp, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x10
	add x10, sp, 24
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 52 ( sp )
	sw x20, 48 ( sp )
	sw x20, 24 ( sp )
	sw x19, 28 ( sp )
	jal cabsf
	jal logf
	mv x9, x10
	add x10, sp, 16
	sw x19, 44 ( sp )
	sw x20, 40 ( sp )
	sw x20, 16 ( sp )
	sw x19, 20 ( sp )
	jal cimagf
	mv x18, x10
	add x10, sp, 8
	sw x20, 32 ( sp )
	sw x20, 8 ( sp )
	sw x19, 36 ( sp )
	sw x19, 12 ( sp )
	jal crealf
	mv x11, x10
	mv x10, x18
	jal atan2f
	mv x11, x0
	sw x10, 4 ( fp )
	jal __mulsf3
	mv x11, x10
	mv x10, x9
	jal __addsf3
	sw x10, 0 ( fp )
	lw fp, 56 ( sp )                //  4-byte Folded Reload
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	lw x19, 64 ( sp )               //  4-byte Folded Reload
	lw x18, 68 ( sp )               //  4-byte Folded Reload
	lw x9, 72 ( sp )                //  4-byte Folded Reload
	lw ra, 76 ( sp )                //  4-byte Folded Reload
	add sp, sp, 80
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	clogf, .Lfunc_end0-clogf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
