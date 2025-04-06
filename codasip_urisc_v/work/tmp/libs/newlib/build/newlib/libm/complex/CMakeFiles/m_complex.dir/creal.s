	.text
	.file	"creal.c"
	.globl	creal                   //  -- Begin function creal
	.type	creal,@function
creal:                                  //  @creal
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x12, 0 ( x10 )
	lw x11, 4 ( x10 )
	mv x10, x12
	jr ra
.Lfunc_end0:
	.size	creal, .Lfunc_end0-creal
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
