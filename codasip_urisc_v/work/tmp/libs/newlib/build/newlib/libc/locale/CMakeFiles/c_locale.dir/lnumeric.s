	.text
	.file	"lnumeric.c"
	.globl	__numeric_load_locale   //  -- Begin function __numeric_load_locale
	.type	__numeric_load_locale,@function
__numeric_load_locale:                  //  @__numeric_load_locale
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__numeric_load_locale, .Lfunc_end0-__numeric_load_locale
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"."
	.size	.str, 2

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.zero	1
	.size	.str.1, 1

	.address_space	0
	.type	numempty,@object        //  @numempty
	.data
numempty:
	.asciz	"\177"
	.size	numempty, 2

	.address_space	0
	.type	_C_numeric_locale,@object //  @_C_numeric_locale
	.section	.rodata,"a",@progbits
	.globl	_C_numeric_locale
	.p2align	2
_C_numeric_locale:
	.long	.str
	.long	.str.1
	.long	numempty
	.size	_C_numeric_locale, 12


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
