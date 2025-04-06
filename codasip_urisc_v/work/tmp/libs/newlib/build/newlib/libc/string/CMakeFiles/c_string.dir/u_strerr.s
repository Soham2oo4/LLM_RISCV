	.text
	.file	"u_strerr.c"
	.globl	_user_strerror          //  -- Begin function _user_strerror
	.type	_user_strerror,@function
_user_strerror:                         //  @_user_strerror
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	jr ra
.Lfunc_end0:
	.size	_user_strerror, .Lfunc_end0-_user_strerror
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"Unknown error"
	.size	.str, 14


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
