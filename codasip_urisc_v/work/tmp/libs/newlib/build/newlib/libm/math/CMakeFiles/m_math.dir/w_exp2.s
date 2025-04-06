	.text
	.file	"w_exp2.c"
	.globl	exp2                    //  -- Begin function exp2
	.type	exp2,@function
exp2:                                   //  @exp2
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x11
	mv x12, x10
	mv x10, x0
	lui x11, (1073741824>>12)&1048575
	j pow
.Lfunc_end0:
	.size	exp2, .Lfunc_end0-exp2
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
