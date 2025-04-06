	.text
	.file	"sf_isinf.c"
	.globl	isinff                  //  -- Begin function isinff
	.type	isinff,@function
isinff:                                 //  @isinff
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( 2147483647 )
	add x11, x11, %lo( 2147483647 )
	and x10, x11, x10
	lui x11, (2139095040>>12)&1048575
	xor x10, x11, x10
	seqz x10, x10
	jr ra
.Lfunc_end0:
	.size	isinff, .Lfunc_end0-isinff
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
