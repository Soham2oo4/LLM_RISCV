	.text
	.file	"s_nan.c"
	.globl	nan                     //  -- Begin function nan
	.type	nan,@function
nan:                                    //  @nan
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x10, x0
	lui x11, (2146959360>>12)&1048575
	jr ra
.Lfunc_end0:
	.size	nan, .Lfunc_end0-nan
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
