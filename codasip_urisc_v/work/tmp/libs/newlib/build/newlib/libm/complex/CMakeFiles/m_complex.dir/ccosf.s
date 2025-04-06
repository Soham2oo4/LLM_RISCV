	.text
	.file	"ccosf.c"
	.globl	ccosf                   //  -- Begin function ccosf
	.type	ccosf,@function
ccosf:                                  //  @ccosf
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
	lw x18, 4 ( x11 )
	lw x19, 0 ( x11 )
	sw fp, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x10
	add x10, sp, 32
	sw ra, 92 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 88 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20, 76 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x18, 60 ( sp )
	sw x19, 56 ( sp )
	sw x19, 32 ( sp )
	sw x18, 36 ( sp )
	jal cimagf
	add x11, sp, 68
	add x12, sp, 64
	jal _cchshf
	add x10, sp, 24
	sw x18, 52 ( sp )
	sw x19, 48 ( sp )
	sw x19, 24 ( sp )
	sw x18, 28 ( sp )
	jal crealf
	jal cosf
	sw x19, 40 ( sp )
	sw x19, 16 ( sp )
	sw x18, 44 ( sp )
	sw x18, 20 ( sp )
	mv x9, x10
	lw x18, 68 ( sp )
	add x10, sp, 16
	jal crealf
	jal sinf
	lw x11, 64 ( sp )
	jal __mulsf3
	mv x19, x10
	lui x10, %hi( -2147483648 )
	add x20, x10, %lo( -2147483648 )
	xor x10, x20, x19
	sw x10, 4 ( fp )
	mv x10, x9
	mv x11, x18
	jal __mulsf3
	mv x9, x10
	mv x10, x19
	mv x11, x20
	jal __mulsf3
	mv x11, x10
	mv x10, x9
	jal __addsf3
	sw x10, 0 ( fp )
	lw fp, 72 ( sp )                //  4-byte Folded Reload
	lw x20, 76 ( sp )               //  4-byte Folded Reload
	lw x19, 80 ( sp )               //  4-byte Folded Reload
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	lw ra, 92 ( sp )                //  4-byte Folded Reload
	add sp, sp, 96
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	ccosf, .Lfunc_end0-ccosf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
