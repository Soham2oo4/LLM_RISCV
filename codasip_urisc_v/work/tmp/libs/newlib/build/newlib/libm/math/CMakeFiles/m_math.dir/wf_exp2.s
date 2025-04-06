	.text
	.file	"wf_exp2.c"
	.globl	exp2f                   //  -- Begin function exp2f
	.type	exp2f,@function
exp2f:                                  //  @exp2f
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x10
	lui x10, (1073741824>>12)&1048575
	j powf
.Lfunc_end0:
	.size	exp2f, .Lfunc_end0-exp2f
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
