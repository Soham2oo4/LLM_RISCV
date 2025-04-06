	.text
	.file	"getwc.c"
	.globl	_getwc_r                //  -- Begin function _getwc_r
	.type	_getwc_r,@function
_getwc_r:                               //  @_getwc_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	j _fgetwc_r
.Lfunc_end0:
	.size	_getwc_r, .Lfunc_end0-_getwc_r
	.cfi_endproc
                                        //  -- End function
	.globl	getwc                   //  -- Begin function getwc
	.type	getwc,@function
getwc:                                  //  @getwc
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	j fgetwc
.Lfunc_end1:
	.size	getwc, .Lfunc_end1-getwc
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
