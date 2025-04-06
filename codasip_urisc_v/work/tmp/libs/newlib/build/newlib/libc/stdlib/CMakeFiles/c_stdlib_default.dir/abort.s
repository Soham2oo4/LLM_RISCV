	.text
	.file	"abort.c"
	.address_space	0
	.type	_dummy_abort,@object    //  @_dummy_abort
	.data
	.globl	_dummy_abort
	.p2align	2
_dummy_abort:
	.long	1                       //  0x1
	.size	_dummy_abort, 4


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
