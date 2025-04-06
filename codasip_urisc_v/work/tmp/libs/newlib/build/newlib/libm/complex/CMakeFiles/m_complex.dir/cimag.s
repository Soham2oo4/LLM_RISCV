	.text
	.file	"cimag.c"
	.globl	cimag                   //  -- Begin function cimag
	.type	cimag,@function
cimag:                                  //  @cimag
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x12, 8 ( x10 )
	lw x11, 12 ( x10 )
	mv x10, x12
	jr ra
.Lfunc_end0:
	.size	cimag, .Lfunc_end0-cimag
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
