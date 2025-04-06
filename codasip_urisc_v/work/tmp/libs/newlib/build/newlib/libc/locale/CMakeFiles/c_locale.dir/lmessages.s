	.text
	.file	"lmessages.c"
	.globl	__messages_load_locale  //  -- Begin function __messages_load_locale
	.type	__messages_load_locale,@function
__messages_load_locale:                 //  @__messages_load_locale
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__messages_load_locale, .Lfunc_end0-__messages_load_locale
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"^[yY]"
	.size	.str, 6

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"^[nN]"
	.size	.str.1, 6

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"yes"
	.size	.str.2, 4

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"no"
	.size	.str.3, 3

	.address_space	0
	.type	_C_messages_locale,@object //  @_C_messages_locale
	.section	.rodata,"a",@progbits
	.globl	_C_messages_locale
	.p2align	2
_C_messages_locale:
	.long	.str
	.long	.str.1
	.long	.str.2
	.long	.str.3
	.size	_C_messages_locale, 16


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
