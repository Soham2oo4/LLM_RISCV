	.text
	.file	"environ.c"
	.address_space	0
	.type	__env,@object           //  @__env
	.bss
	.globl	__env
	.p2align	2
__env:
	.zero	4
	.size	__env, 4

	.address_space	0
	.type	environ,@object         //  @environ
	.data
	.globl	environ
	.p2align	2
environ:
	.long	__env
	.size	environ, 4


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
