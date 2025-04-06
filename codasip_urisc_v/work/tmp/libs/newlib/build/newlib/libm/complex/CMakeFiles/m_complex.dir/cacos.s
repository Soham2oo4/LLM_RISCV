	.text
	.file	"cacos.c"
	.globl	cacos                   //  -- Begin function cacos
	.type	cacos,@function
cacos:                                  //  @cacos
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -160
	.cfi_adjust_cfa_offset 160
	sw fp, 128 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv fp, x10
	lw x10, 4 ( x11 )
	lw x13, 8 ( x11 )
	add x12, sp, 96
	lw x14, 12 ( x11 )
	sw x10, 4 ( x12 )
	sw x13, 8 ( x12 )
	lw x12, 0 ( x11 )
	sw x9, 152 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x11, sp, 48
	add x9, sp, 112
	sw ra, 156 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 148 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 144 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 140 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 136 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 132 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x10, 4 ( x11 )
	mv x10, x9
	sw x13, 8 ( x11 )
	sw x14, 108 ( sp )
	sw x14, 60 ( sp )
	sw x12, 96 ( sp )
	sw x12, 48 ( sp )
	jal casin
	lw x19, 8 ( x9 )
	lw x20, 4 ( x9 )
	add x10, sp, 80
	sw x19, 8 ( x10 )
	sw x20, 4 ( x10 )
	add x10, sp, 32
	sw x20, 4 ( x10 )
	sw x19, 8 ( x10 )
	lw x21, 112 ( sp )
	lw x22, 124 ( sp )
	sw x21, 80 ( sp )
	sw x22, 92 ( sp )
	sw x21, 32 ( sp )
	sw x22, 44 ( sp )
	jal creal
	mv x9, x10
	add x10, sp, 64
	sw x20, 4 ( x10 )
	sw x19, 8 ( x10 )
	add x10, sp, 16
	mv x18, x11
	sw x20, 4 ( x10 )
	sw x19, 8 ( x10 )
	sw x21, 64 ( sp )
	sw x21, 16 ( sp )
	sw x22, 76 ( sp )
	sw x22, 28 ( sp )
	jal cimag
	mv x19, x10
	mv x20, x11
	mv x21, x0
	mv x11, x21
	mv x10, x21
	mv x12, x19
	mv x13, x20
	jal __subdf3
	sw x11, 12 ( fp )
	lui x11, %hi( 1073291771 )
	sw x10, 8 ( fp )
	lui x10, %hi( 1413754136 )
	add x10, x10, %lo( 1413754136 )
	add x11, x11, %lo( 1073291771 )
	mv x12, x9
	mv x13, x18
	jal __subdf3
	mv x9, x10
	mv x18, x11
	mv x10, x19
	mv x11, x20
	mv x12, x21
	mv x13, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x18
	jal __subdf3
	sw x11, 4 ( fp )
	sw x10, 0 ( fp )
	lw fp, 128 ( sp )               //  4-byte Folded Reload
	lw x22, 132 ( sp )              //  4-byte Folded Reload
	lw x21, 136 ( sp )              //  4-byte Folded Reload
	lw x20, 140 ( sp )              //  4-byte Folded Reload
	lw x19, 144 ( sp )              //  4-byte Folded Reload
	lw x18, 148 ( sp )              //  4-byte Folded Reload
	lw x9, 152 ( sp )               //  4-byte Folded Reload
	lw ra, 156 ( sp )               //  4-byte Folded Reload
	add sp, sp, 160
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	cacos, .Lfunc_end0-cacos
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
