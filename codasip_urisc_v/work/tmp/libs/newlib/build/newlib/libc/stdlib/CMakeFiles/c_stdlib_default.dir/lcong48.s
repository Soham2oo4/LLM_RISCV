	.text
	.file	"lcong48.c"
	.globl	_lcong48_r              //  -- Begin function _lcong48_r
	.type	_lcong48_r,@function
_lcong48_r:                             //  @_lcong48_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lh x12, 0 ( x11 )
	sh x12, 172 ( x10 )
	lh x12, 2 ( x11 )
	sh x12, 174 ( x10 )
	lh x12, 4 ( x11 )
	sh x12, 176 ( x10 )
	lh x12, 6 ( x11 )
	sh x12, 178 ( x10 )
	lh x12, 8 ( x11 )
	sh x12, 180 ( x10 )
	lh x12, 10 ( x11 )
	sh x12, 182 ( x10 )
	lh x11, 12 ( x11 )
	sh x11, 184 ( x10 )
	jr ra
.Lfunc_end0:
	.size	_lcong48_r, .Lfunc_end0-_lcong48_r
	.cfi_endproc
                                        //  -- End function
	.globl	lcong48                 //  -- Begin function lcong48
	.type	lcong48,@function
lcong48:                                //  @lcong48
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( _impure_ptr )
	add x11, x11, %lo( _impure_ptr )
	lw x11, 0 ( x11 )
	lh x12, 0 ( x10 )
	sh x12, 172 ( x11 )
	lh x12, 2 ( x10 )
	sh x12, 174 ( x11 )
	lh x12, 4 ( x10 )
	sh x12, 176 ( x11 )
	lh x12, 6 ( x10 )
	sh x12, 178 ( x11 )
	lh x12, 8 ( x10 )
	sh x12, 180 ( x11 )
	lh x12, 10 ( x10 )
	sh x12, 182 ( x11 )
	lh x10, 12 ( x10 )
	sh x10, 184 ( x11 )
	jr ra
.Lfunc_end1:
	.size	lcong48, .Lfunc_end1-lcong48
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
