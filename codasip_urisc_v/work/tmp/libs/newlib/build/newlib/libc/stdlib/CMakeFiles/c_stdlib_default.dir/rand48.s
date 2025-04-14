	.text
	.file	"rand48.c"
	.globl	__dorand48              //  -- Begin function __dorand48
	.type	__dorand48,@function
__dorand48:                             //  @__dorand48
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv fp, x11
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	lhu x18, 178 ( x9 )
	lh x10, 4 ( fp )
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x11, x18
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	jal __mulsi3
	lhu x21, 2 ( fp )
	lhu x20, 180 ( x9 )
	mv x19, x10
	mv x11, x21
	mv x10, x20
	jal __mulsi3
	add x22, x10, x19
	lhu x19, 0 ( fp )
	mv x11, x18
	mv x10, x19
	jal __mulsi3
	lhu x11, 184 ( x9 )
	add x23, x11, x10
	lh x10, 182 ( x9 )
	mv x11, x19
	jal __mulsi3
	add x9, x10, x22
	mv x10, x21
	mv x11, x18
	srl x22, x23, 16&31
	jal __mulsi3
	add x18, x10, x22
	mv x10, x20
	mv x11, x19
	jal __mulsi3
	add x10, x10, x18
	srl x11, x10, 16&31
	add x11, x11, x9
	sh x23, 0 ( fp )
	sh x11, 4 ( fp )
	sh x10, 2 ( fp )
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x23, 16 ( sp )               //  4-byte Folded Reload
	lw x22, 20 ( sp )               //  4-byte Folded Reload
	lw x21, 24 ( sp )               //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__dorand48, .Lfunc_end0-__dorand48
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
