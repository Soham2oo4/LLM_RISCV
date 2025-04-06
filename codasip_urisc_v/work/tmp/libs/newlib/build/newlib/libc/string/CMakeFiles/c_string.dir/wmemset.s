	.text
	.file	"wmemset.c"
	.globl	wmemset                 //  -- Begin function wmemset
	.type	wmemset,@function
wmemset:                                //  @wmemset
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	beq x0, x12, .LBB0_3
.LBB0_1:                                //  %for.body.preheader
	mv x13, x10
.LBB0_2:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x11, 0 ( x13 )
	add x13, x13, 4
	add x12, x12, -1
	bltu x0, x12, .LBB0_2
.LBB0_3:                                //  %for.end
	jr ra
.Lfunc_end0:
	.size	wmemset, .Lfunc_end0-wmemset
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
