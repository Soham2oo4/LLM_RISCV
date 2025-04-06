	.text
	.file	"cacosf.c"
	.globl	cacosf                  //  -- Begin function cacosf
	.type	cacosf,@function
cacosf:                                 //  @cacosf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw fp, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x10
	lw x10, 0 ( x11 )
	lw x11, 4 ( x11 )
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x10, 44 ( sp )
	sw x10, 20 ( sp )
	sw x11, 48 ( sp )
	sw x11, 24 ( sp )
	add x10, sp, 52
	add x11, sp, 20
	jal casinf
	lw x18, 56 ( sp )
	lw x19, 52 ( sp )
	add x10, sp, 12
	sw x18, 40 ( sp )
	sw x19, 36 ( sp )
	sw x19, 12 ( sp )
	sw x18, 16 ( sp )
	jal crealf
	mv x9, x10
	add x10, sp, 4
	sw x19, 28 ( sp )
	sw x19, 4 ( sp )
	sw x18, 32 ( sp )
	sw x18, 8 ( sp )
	jal cimagf
	mv x18, x10
	lui x10, %hi( -2147483648 )
	add x19, x10, %lo( -2147483648 )
	xor x10, x19, x18
	sw x10, 4 ( fp )
	lui x10, %hi( 1070141403 )
	add x10, x10, %lo( 1070141403 )
	mv x11, x9
	jal __subsf3
	mv x9, x10
	mv x10, x18
	mv x11, x19
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
	.size	cacosf, .Lfunc_end0-cacosf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
