	.text
	.file	"lmonetary.c"
	.globl	__monetary_load_locale  //  -- Begin function __monetary_load_locale
	.type	__monetary_load_locale,@function
__monetary_load_locale:                 //  @__monetary_load_locale
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__monetary_load_locale, .Lfunc_end0-__monetary_load_locale
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	empty,@object           //  @empty
	.local	empty
	.comm	empty,1,1
	.address_space	0
	.type	numempty,@object        //  @numempty
	.data
numempty:
	.asciz	"\177"
	.size	numempty, 2

	.address_space	0
	.type	_C_monetary_locale,@object //  @_C_monetary_locale
	.section	.rodata,"a",@progbits
	.globl	_C_monetary_locale
	.p2align	2
_C_monetary_locale:
	.long	empty
	.long	empty
	.long	empty
	.long	empty
	.long	numempty
	.long	empty
	.long	empty
	.long	numempty
	.long	numempty
	.long	numempty
	.long	numempty
	.long	numempty
	.long	numempty
	.long	numempty
	.long	numempty
	.size	_C_monetary_locale, 60


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
