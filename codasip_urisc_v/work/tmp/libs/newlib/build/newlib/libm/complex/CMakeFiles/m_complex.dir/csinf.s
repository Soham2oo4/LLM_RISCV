	.text
	.file	"csinf.c"
	.globl	csinf                   //  -- Begin function csinf
	.type	csinf,@function
csinf:                                  //  @csinf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x18, 4 ( x11 )
	lw x19, 0 ( x11 )
	sw fp, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x10
	add x10, sp, 20
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 48 ( sp )
	sw x19, 44 ( sp )
	sw x19, 20 ( sp )
	sw x18, 24 ( sp )
	jal cimagf
	add x11, sp, 56
	add x12, sp, 52
	jal _cchshf
	add x10, sp, 12
	sw x18, 40 ( sp )
	sw x19, 36 ( sp )
	sw x19, 12 ( sp )
	sw x18, 16 ( sp )
	jal crealf
	jal sinf
	sw x19, 28 ( sp )
	sw x19, 4 ( sp )
	sw x18, 32 ( sp )
	sw x18, 8 ( sp )
	mv x9, x10
	lw x18, 56 ( sp )
	add x10, sp, 4
	jal crealf
	jal cosf
	lw x11, 52 ( sp )
	jal __mulsf3
	mv x19, x10
	mv x10, x9
	mv x11, x18
	sw x19, 4 ( fp )
	jal __mulsf3
	mv x9, x10
	mv x11, x0
	mv x10, x19
	jal __mulsf3
	mv x11, x10
	mv x10, x9
	jal __addsf3
	sw x10, 0 ( fp )
	lw fp, 60 ( sp )                //  4-byte Folded Reload
	lw x19, 64 ( sp )               //  4-byte Folded Reload
	lw x18, 68 ( sp )               //  4-byte Folded Reload
	lw x9, 72 ( sp )                //  4-byte Folded Reload
	lw ra, 76 ( sp )                //  4-byte Folded Reload
	add sp, sp, 80
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	csinf, .Lfunc_end0-csinf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
