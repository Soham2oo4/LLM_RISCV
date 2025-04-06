	.text
	.file	"chown.c"
	.globl	_chown                  //  -- Begin function _chown
	.type	_chown,@function
_chown:                                 //  @_chown
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	mv x11, x0
	beq x10, x11, .LBB0_1
.LBB0_2:                                //  %entry
	add x10, x0, 88
	jal x0, .LBB0_3
.LBB0_1:
	add x10, x0, 22
.LBB0_3:                                //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( errno )
	add x11, x11, %lo( errno )
	sw x10, 0 ( x11 )
	add x10, x0, -1
	jr ra
.Lfunc_end0:
	.size	_chown, .Lfunc_end0-_chown
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
