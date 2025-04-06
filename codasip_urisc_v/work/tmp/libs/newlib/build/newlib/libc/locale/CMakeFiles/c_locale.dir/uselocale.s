	.text
	.file	"uselocale.c"
	.globl	_uselocale_r            //  -- Begin function _uselocale_r
	.type	_uselocale_r,@function
_uselocale_r:                           //  @_uselocale_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	xor x12, x11, -1
	beq x0, x12, .LBB0_1
.LBB0_2:                                //  %entry
	bltu x0, x11, .LBB0_3
.LBB0_4:                                //  %if.end6
	lui x10, %hi( __global_locale )
	add x10, x10, %lo( __global_locale )
	jr ra
.LBB0_1:
	mv x11, x0
.LBB0_3:                                //  %if.end6.sink.split
	.cfi_def_cfa 2, 0
	sw x11, 52 ( x10 )
	lui x10, %hi( __global_locale )
	add x10, x10, %lo( __global_locale )
	jr ra
.Lfunc_end0:
	.size	_uselocale_r, .Lfunc_end0-_uselocale_r
	.cfi_endproc
                                        //  -- End function
	.globl	uselocale               //  -- Begin function uselocale
	.type	uselocale,@function
uselocale:                              //  @uselocale
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( _impure_ptr )
	add x11, x11, %lo( _impure_ptr )
	lw x11, 0 ( x11 )
	xor x12, x10, -1
	beq x0, x12, .LBB1_1
.LBB1_2:                                //  %entry
	bltu x0, x10, .LBB1_3
.LBB1_4:                                //  %_uselocale_r.exit
	lui x10, %hi( __global_locale )
	add x10, x10, %lo( __global_locale )
	jr ra
.LBB1_1:
	mv x10, x0
.LBB1_3:                                //  %_uselocale_r.exit.sink.split
	sw x10, 52 ( x11 )
	lui x10, %hi( __global_locale )
	add x10, x10, %lo( __global_locale )
	jr ra
.Lfunc_end1:
	.size	uselocale, .Lfunc_end1-uselocale
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
