	.text
	.file	"cexp.c"
	.globl	cexp                    //  -- Begin function cexp
	.type	cexp,@function
cexp:                                   //  @cexp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -112
	.cfi_adjust_cfa_offset 112
	sw x19, 96 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 92 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x19, 4 ( x11 )
	lw x20, 8 ( x11 )
	sw x21, 88 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 84 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	lw x21, 12 ( x11 )
	lw x22, 0 ( x11 )
	sw fp, 80 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv fp, x10
	add x10, sp, 64
	sw x19, 4 ( x10 )
	sw x20, 8 ( x10 )
	add x10, sp, 32
	sw ra, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 104 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 8 ( x10 )
	sw x19, 4 ( x10 )
	sw x22, 64 ( sp )
	sw x21, 76 ( sp )
	sw x21, 44 ( sp )
	sw x22, 32 ( sp )
	jal creal
	mv x9, x10
	add x10, sp, 48
	sw x19, 4 ( x10 )
	sw x20, 8 ( x10 )
	add x10, sp, 16
	mv x18, x11
	sw x19, 4 ( x10 )
	sw x20, 8 ( x10 )
	sw x22, 48 ( sp )
	sw x22, 16 ( sp )
	sw x21, 60 ( sp )
	sw x21, 28 ( sp )
	jal cimag
	mv x19, x10
	mv x20, x11
	mv x10, x9
	mv x11, x18
	jal exp
	mv x9, x10
	mv x18, x11
	mv x10, x19
	mv x11, x20
	jal cos
	mv x21, x10
	mv x22, x11
	mv x10, x19
	mv x11, x20
	jal sin
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
	jal __muldf3
	mv x19, x10
	mv x20, x11
	mv x10, x9
	mv x11, x18
	mv x12, x21
	mv x13, x22
	sw x20, 12 ( fp )
	sw x19, 8 ( fp )
	jal __muldf3
	mv x12, x0
	mv x9, x10
	mv x18, x11
	mv x10, x19
	mv x11, x20
	mv x13, x12
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
	jal __adddf3
	sw x11, 4 ( fp )
	sw x10, 0 ( fp )
	lw fp, 80 ( sp )                //  4-byte Folded Reload
	lw x22, 84 ( sp )               //  4-byte Folded Reload
	lw x21, 88 ( sp )               //  4-byte Folded Reload
	lw x20, 92 ( sp )               //  4-byte Folded Reload
	lw x19, 96 ( sp )               //  4-byte Folded Reload
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	lw ra, 108 ( sp )               //  4-byte Folded Reload
	add sp, sp, 112
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	cexp, .Lfunc_end0-cexp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
