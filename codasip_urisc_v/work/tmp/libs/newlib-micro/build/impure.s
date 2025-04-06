	.text
	.file	"impure.c"
	.address_space	0
	.type	_impure_ptr,@object     //  @_impure_ptr
	.data
	.globl	_impure_ptr
	.p2align	2
_impure_ptr:
	.long	impure_data
	.size	_impure_ptr, 4

	.address_space	0
	.type	_global_impure_ptr,@object //  @_global_impure_ptr
	.section	.rodata,"a",@progbits
	.globl	_global_impure_ptr
	.p2align	2
_global_impure_ptr:
	.long	impure_data
	.size	_global_impure_ptr, 4

	.address_space	0
	.type	impure_data,@object     //  @impure_data
	.data
	.p2align	2
impure_data:
	.long	0                       //  0x0
	.long	impure_data+748
	.long	impure_data+852
	.long	impure_data+956
	.long	0                       //  0x0
	.zero	25
	.zero	3
	.long	0                       //  0x0
	.long	0
	.long	0                       //  0x0
	.long	0
	.long	0
	.long	0                       //  0x0
	.long	0
	.long	0
	.long	0                       //  0x0
	.long	0
	.long	0                       //  0x0
	.long	0
	.zero	26
	.zero	2
	.zero	36
	.long	0                       //  0x0
	.quad	1                       //  0x1
	.short	13070                   //  0x330e
	.short	43981                   //  0xabcd
	.short	4660                    //  0x1234
	.short	58989                   //  0xe66d
	.short	57068                   //  0xdeec
	.short	5                       //  0x5
	.short	11                      //  0xb
	.zero	2
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	24
	.long	0                       //  0x0
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.long	0                       //  0x0
	.zero	36
	.long	0
	.zero	400
	.long	0
	.zero	12
	.zero	312
	.size	impure_data, 1060


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
