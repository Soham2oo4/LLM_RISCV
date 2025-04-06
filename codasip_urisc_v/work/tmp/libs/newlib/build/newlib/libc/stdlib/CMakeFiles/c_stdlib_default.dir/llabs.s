	.text
	.file	"llabs.c"
	.globl	llabs                   //  -- Begin function llabs
	.type	llabs,@function
llabs:                                  //  @llabs
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x10
	mv x10, x0
	blt x11, x10, .LBB0_1
.LBB0_2:                                //  %entry
	mv x10, x12
	jr ra
.LBB0_1:
	sub x10, x0, x12
	snez x12, x12
	add x11, x12, x11
	sub x11, x0, x11
	jr ra
.Lfunc_end0:
	.size	llabs, .Lfunc_end0-llabs
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
