	.text
	.file	"putwc.c"
	.globl	_putwc_r                //  -- Begin function _putwc_r
	.type	_putwc_r,@function
_putwc_r:                               //  @_putwc_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	j _fputwc_r
.Lfunc_end0:
	.size	_putwc_r, .Lfunc_end0-_putwc_r
	.cfi_endproc
                                        //  -- End function
	.globl	putwc                   //  -- Begin function putwc
	.type	putwc,@function
putwc:                                  //  @putwc
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	j fputwc
.Lfunc_end1:
	.size	putwc, .Lfunc_end1-putwc
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
