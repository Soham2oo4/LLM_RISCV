	.text
	.file	"srand48.c"
	.globl	_srand48_r              //  -- Begin function _srand48_r
	.type	_srand48_r,@function
_srand48_r:                             //  @_srand48_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x12, x0, 11
	sh x12, 184 ( x10 )
	add x12, x0, 5
	sh x12, 182 ( x10 )
	lui x12, %hi( 57068 )
	add x12, x12, %lo( 57068 )
	sh x12, 180 ( x10 )
	lui x12, %hi( 58989 )
	add x12, x12, %lo( 58989 )
	sh x12, 178 ( x10 )
	srl x12, x11, 16&31
	sh x11, 174 ( x10 )
	lui x11, %hi( 13070 )
	add x11, x11, %lo( 13070 )
	sh x12, 176 ( x10 )
	sh x11, 172 ( x10 )
	jr ra
.Lfunc_end0:
	.size	_srand48_r, .Lfunc_end0-_srand48_r
	.cfi_endproc
                                        //  -- End function
	.globl	srand48                 //  -- Begin function srand48
	.type	srand48,@function
srand48:                                //  @srand48
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( _impure_ptr )
	add x11, x11, %lo( _impure_ptr )
	lw x11, 0 ( x11 )
	add x12, x0, 11
	sh x12, 184 ( x11 )
	add x12, x0, 5
	sh x12, 182 ( x11 )
	lui x12, %hi( 57068 )
	add x12, x12, %lo( 57068 )
	sh x12, 180 ( x11 )
	lui x12, %hi( 58989 )
	add x12, x12, %lo( 58989 )
	sh x12, 178 ( x11 )
	srl x12, x10, 16&31
	sh x10, 174 ( x11 )
	lui x10, %hi( 13070 )
	add x10, x10, %lo( 13070 )
	sh x12, 176 ( x11 )
	sh x10, 172 ( x11 )
	jr ra
.Lfunc_end1:
	.size	srand48, .Lfunc_end1-srand48
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
