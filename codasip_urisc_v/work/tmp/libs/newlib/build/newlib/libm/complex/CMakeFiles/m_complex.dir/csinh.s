	.text
	.file	"csinh.c"
	.globl	csinh                   //  -- Begin function csinh
	.type	csinh,@function
csinh:                                  //  @csinh
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
	sw fp, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv fp, x10
	add x10, sp, 56
	sw x19, 4 ( x10 )
	sw x20, 8 ( x10 )
	add x10, sp, 24
	sw ra, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 104 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x23, 80 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 76 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x20, 8 ( x10 )
	sw x19, 4 ( x10 )
	sw x22, 56 ( sp )
	sw x21, 68 ( sp )
	sw x21, 36 ( sp )
	sw x22, 24 ( sp )
	jal creal
	mv x9, x10
	add x10, sp, 40
	sw x19, 4 ( x10 )
	sw x20, 8 ( x10 )
	add x10, sp, 8
	mv x18, x11
	sw x19, 4 ( x10 )
	sw x20, 8 ( x10 )
	sw x22, 40 ( sp )
	sw x22, 8 ( sp )
	sw x21, 52 ( sp )
	sw x21, 20 ( sp )
	jal cimag
	mv x19, x10
	mv x20, x11
	mv x10, x9
	mv x11, x18
	jal sinh
	mv x21, x10
	mv x22, x11
	mv x10, x19
	mv x11, x20
	jal cos
	mv x23, x10
	mv x24, x11
	mv x10, x9
	mv x11, x18
	jal cosh
	mv x9, x10
	mv x18, x11
	mv x10, x19
	mv x11, x20
	jal sin
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
	jal __muldf3
	mv x9, x10
	mv x18, x11
	mv x10, x21
	mv x11, x22
	mv x12, x23
	mv x13, x24
	sw x18, 12 ( fp )
	sw x9, 8 ( fp )
	jal __muldf3
	mv x12, x0
	mv x19, x10
	mv x20, x11
	mv x10, x9
	mv x11, x18
	mv x13, x12
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __adddf3
	sw x11, 4 ( fp )
	sw x10, 0 ( fp )
	lw fp, 72 ( sp )                //  4-byte Folded Reload
	lw x24, 76 ( sp )               //  4-byte Folded Reload
	lw x23, 80 ( sp )               //  4-byte Folded Reload
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
	.size	csinh, .Lfunc_end0-csinh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
