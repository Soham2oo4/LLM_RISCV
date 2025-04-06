	.text
	.file	"fseek.c"
	.globl	_fseek_r                //  -- Begin function _fseek_r
	.type	_fseek_r,@function
_fseek_r:                               //  @_fseek_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	j _fseeko_r
.Lfunc_end0:
	.size	_fseek_r, .Lfunc_end0-_fseek_r
	.cfi_endproc
                                        //  -- End function
	.globl	fseek                   //  -- Begin function fseek
	.type	fseek,@function
fseek:                                  //  @fseek
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x12
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _fseeko_r
.Lfunc_end1:
	.size	fseek, .Lfunc_end1-fseek
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
