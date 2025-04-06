	.text
	.file	"vscanf.c"
	.globl	vscanf                  //  -- Begin function vscanf
	.type	vscanf,@function
vscanf:                                 //  @vscanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	mv x13, x11
	lw x11, 4 ( x10 )
	j __svfscanf_r
.Lfunc_end0:
	.size	vscanf, .Lfunc_end0-vscanf
	.cfi_endproc
                                        //  -- End function
	.globl	_vscanf_r               //  -- Begin function _vscanf_r
	.type	_vscanf_r,@function
_vscanf_r:                              //  @_vscanf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x12
	mv x12, x11
	lw x11, 4 ( x10 )
	j __svfscanf_r
.Lfunc_end1:
	.size	_vscanf_r, .Lfunc_end1-_vscanf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
