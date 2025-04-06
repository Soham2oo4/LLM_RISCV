	.text
	.file	"sf_finite.c"
	.globl	finitef                 //  -- Begin function finitef
	.type	finitef,@function
finitef:                                //  @finitef
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, (2139095040>>12)&1048575
	and x10, x11, x10
	xor x10, x11, x10
	snez x10, x10
	jr ra
.Lfunc_end0:
	.size	finitef, .Lfunc_end0-finitef
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
