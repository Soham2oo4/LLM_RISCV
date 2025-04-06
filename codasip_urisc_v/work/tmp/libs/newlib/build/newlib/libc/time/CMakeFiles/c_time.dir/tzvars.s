	.text
	.file	"tzvars.c"
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"GMT"
	.size	.str, 4

	.address_space	0
	.type	_tzname,@object         //  @_tzname
	.data
	.globl	_tzname
	.p2align	2
_tzname:
	.long	.str
	.long	.str
	.size	_tzname, 8

	.address_space	0
	.type	_daylight,@object       //  @_daylight
	.bss
	.globl	_daylight
	.p2align	2
_daylight:
	.long	0                       //  0x0
	.size	_daylight, 4

	.address_space	0
	.type	_timezone,@object       //  @_timezone
	.globl	_timezone
	.p2align	2
_timezone:
	.long	0                       //  0x0
	.size	_timezone, 4


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
