	.text
	.file	"abs.c"
	.globl	abs                     //  -- Begin function abs
	.type	abs,@function
abs:                                    //  @abs
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	sra x11, x10, 31&31
	add x10, x11, x10
	xor x10, x11, x10
	jr ra
.Lfunc_end0:
	.size	abs, .Lfunc_end0-abs
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
