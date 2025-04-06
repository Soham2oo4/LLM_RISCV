	.text
	.file	"seed48.c"
	.globl	_seed48_r               //  -- Begin function _seed48_r
	.type	_seed48_r,@function
_seed48_r:                              //  @_seed48_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lh x13, 172 ( x10 )
	lui x12, %hi( _seed48_r.sseed )
	add x12, x12, %lo( _seed48_r.sseed )
	sh x13, 0 ( x12 )
	lh x13, 174 ( x10 )
	sh x13, 2 ( x12 )
	lh x13, 176 ( x10 )
	sh x13, 4 ( x12 )
	lh x13, 0 ( x11 )
	sh x13, 172 ( x10 )
	lh x13, 2 ( x11 )
	sh x13, 174 ( x10 )
	lui x13, %hi( 58989 )
	add x13, x13, %lo( 58989 )
	lh x11, 4 ( x11 )
	sh x13, 178 ( x10 )
	lui x13, %hi( 57068 )
	add x13, x13, %lo( 57068 )
	sh x13, 180 ( x10 )
	add x13, x0, 5
	sh x13, 182 ( x10 )
	add x13, x0, 11
	sh x13, 184 ( x10 )
	sh x11, 176 ( x10 )
	mv x10, x12
	jr ra
.Lfunc_end0:
	.size	_seed48_r, .Lfunc_end0-_seed48_r
	.cfi_endproc
                                        //  -- End function
	.globl	seed48                  //  -- Begin function seed48
	.type	seed48,@function
seed48:                                 //  @seed48
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( _impure_ptr )
	add x11, x11, %lo( _impure_ptr )
	lw x12, 0 ( x11 )
	lui x11, %hi( _seed48_r.sseed )
	add x11, x11, %lo( _seed48_r.sseed )
	lh x13, 172 ( x12 )
	sh x13, 0 ( x11 )
	lh x13, 174 ( x12 )
	sh x13, 2 ( x11 )
	lh x13, 176 ( x12 )
	sh x13, 4 ( x11 )
	lh x13, 0 ( x10 )
	sh x13, 172 ( x12 )
	lh x13, 2 ( x10 )
	sh x13, 174 ( x12 )
	add x13, x0, 11
	lh x10, 4 ( x10 )
	sh x13, 184 ( x12 )
	add x13, x0, 5
	sh x13, 182 ( x12 )
	lui x13, %hi( 57068 )
	add x13, x13, %lo( 57068 )
	sh x13, 180 ( x12 )
	lui x13, %hi( 58989 )
	add x13, x13, %lo( 58989 )
	sh x10, 176 ( x12 )
	mv x10, x11
	sh x13, 178 ( x12 )
	jr ra
.Lfunc_end1:
	.size	seed48, .Lfunc_end1-seed48
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	_seed48_r.sseed,@object //  @_seed48_r.sseed
	.local	_seed48_r.sseed
	.comm	_seed48_r.sseed,6,2
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
