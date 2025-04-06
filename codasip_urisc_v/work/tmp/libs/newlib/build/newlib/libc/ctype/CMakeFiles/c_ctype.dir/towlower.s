	.text
	.file	"towlower.c"
	.globl	towlower                //  -- Begin function towlower
	.type	towlower,@function
towlower:                               //  @towlower
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	add x11, x0, 254
	bltu x11, x10, .LBB0_3
.LBB0_1:                                //  %cond.true
	.cfi_def_cfa 2, 0
	lui x11, %hi( _ctype_ )
	add x11, x11, %lo( _ctype_ )
	add x11, x10, x11
	lbu x11, 1 ( x11 )
	seqz x12, x0
	and x11, x11, 3
	bne x11, x12, .LBB0_3
.LBB0_2:
	add x10, x10, 32
.LBB0_3:                                //  %cond.end5
	jr ra
.Lfunc_end0:
	.size	towlower, .Lfunc_end0-towlower
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
