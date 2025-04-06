	.text
	.file	"month_lengths.c"
	.address_space	0
	.type	__month_lengths,@object //  @__month_lengths
	.section	.rodata,"a",@progbits
	.globl	__month_lengths
	.p2align	2
__month_lengths:
	.long	31                      //  0x1f
	.long	28                      //  0x1c
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	31                      //  0x1f
	.long	29                      //  0x1d
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.size	__month_lengths, 96


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
