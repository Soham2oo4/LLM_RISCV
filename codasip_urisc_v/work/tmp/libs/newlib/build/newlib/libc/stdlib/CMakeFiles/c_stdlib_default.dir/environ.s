	.text
	.file	"environ.c"
	.address_space	0
	.type	initial_env,@object     //  @initial_env
	.local	initial_env
	.comm	initial_env,4,4
	.address_space	0
	.type	environ,@object         //  @environ
	.data
	.globl	environ
	.p2align	2
environ:
	.long	initial_env
	.size	environ, 4


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
