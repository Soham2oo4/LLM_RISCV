	.text
	.file	"lctype.c"
	.globl	__ctype_load_locale     //  -- Begin function __ctype_load_locale
	.type	__ctype_load_locale,@function
__ctype_load_locale:                    //  @__ctype_load_locale
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__ctype_load_locale, .Lfunc_end0-__ctype_load_locale
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"ASCII"
	.size	.str, 6

	.address_space	0
	.type	numone,@object          //  @numone
	.data
numone:
	.asciz	"\001"
	.size	numone, 2

	.address_space	0
	.type	_C_ctype_locale,@object //  @_C_ctype_locale
	.section	.rodata,"a",@progbits
	.globl	_C_ctype_locale
	.p2align	2
_C_ctype_locale:
	.long	.str
	.long	numone
	.size	_C_ctype_locale, 8


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
