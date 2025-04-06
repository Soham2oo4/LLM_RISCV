	.text
	.file	"conj.c"
	.globl	conj                    //  -- Begin function conj
	.type	conj,@function
conj:                                   //  @conj
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x12, 12 ( x11 )
	lui x13, %hi( -2147483648 )
	add x13, x13, %lo( -2147483648 )
	xor x12, x13, x12
	sw x12, 12 ( x10 )
	lw x12, 8 ( x11 )
	sw x12, 8 ( x10 )
	lw x12, 4 ( x11 )
	lw x11, 0 ( x11 )
	sw x12, 4 ( x10 )
	sw x11, 0 ( x10 )
	jr ra
.Lfunc_end0:
	.size	conj, .Lfunc_end0-conj
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
