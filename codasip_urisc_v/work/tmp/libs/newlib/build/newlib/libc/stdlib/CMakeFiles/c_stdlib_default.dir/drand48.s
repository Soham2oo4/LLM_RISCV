	.text
	.file	"drand48.c"
	.globl	_drand48_r              //  -- Begin function _drand48_r
	.type	_drand48_r,@function
_drand48_r:                             //  @_drand48_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x11, x10, 172
	j _erand48_r
.Lfunc_end0:
	.size	_drand48_r, .Lfunc_end0-_drand48_r
	.cfi_endproc
                                        //  -- End function
	.globl	drand48                 //  -- Begin function drand48
	.type	drand48,@function
drand48:                                //  @drand48
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	add x11, x10, 172
	j _erand48_r
.Lfunc_end1:
	.size	drand48, .Lfunc_end1-drand48
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
