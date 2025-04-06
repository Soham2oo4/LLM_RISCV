	.text
	.file	"vallocr.c"
	.globl	_valloc_r               //  -- Begin function _valloc_r
	.type	_valloc_r,@function
_valloc_r:                              //  @_valloc_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x11
	lui x11, (4096>>12)&1048575
	j _memalign_r
.Lfunc_end0:
	.size	_valloc_r, .Lfunc_end0-_valloc_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
