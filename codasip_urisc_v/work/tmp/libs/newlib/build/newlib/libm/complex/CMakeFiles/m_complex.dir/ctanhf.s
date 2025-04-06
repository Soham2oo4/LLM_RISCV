	.text
	.file	"ctanhf.c"
	.globl	ctanhf                  //  -- Begin function ctanhf
	.type	ctanhf,@function
ctanhf:                                 //  @ctanhf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x18, 4 ( x11 )
	lw x19, 0 ( x11 )
	sw fp, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x10
	add x10, sp, 20
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 40 ( sp )
	sw x19, 36 ( sp )
	sw x19, 20 ( sp )
	sw x18, 24 ( sp )
	jal crealf
	mv x9, x10
	add x10, sp, 12
	sw x19, 28 ( sp )
	sw x19, 12 ( sp )
	sw x18, 32 ( sp )
	sw x18, 16 ( sp )
	jal cimagf
	mv x18, x10
	mv x10, x9
	mv x11, x9
	jal __addsf3
	mv x9, x10
	jal coshf
	mv x19, x10
	mv x10, x18
	mv x11, x18
	jal __addsf3
	mv x18, x10
	jal cosf
	mv x11, x10
	mv x10, x19
	jal __addsf3
	mv x19, x10
	mv x10, x9
	jal sinhf
	mv x9, x10
	mv x10, x18
	jal sinf
	mv x11, x19
	jal __divsf3
	mv x18, x10
	mv x10, x9
	mv x11, x19
	sw x18, 4 ( fp )
	jal __divsf3
	mv x9, x10
	mv x11, x0
	mv x10, x18
	jal __mulsf3
	mv x11, x10
	mv x10, x9
	jal __addsf3
	sw x10, 0 ( fp )
	lw fp, 44 ( sp )                //  4-byte Folded Reload
	lw x19, 48 ( sp )               //  4-byte Folded Reload
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	lw x9, 56 ( sp )                //  4-byte Folded Reload
	lw ra, 60 ( sp )                //  4-byte Folded Reload
	add sp, sp, 64
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	ctanhf, .Lfunc_end0-ctanhf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
