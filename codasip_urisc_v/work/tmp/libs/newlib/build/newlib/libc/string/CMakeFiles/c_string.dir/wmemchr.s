	.text
	.file	"wmemchr.c"
	.globl	wmemchr                 //  -- Begin function wmemchr
	.type	wmemchr,@function
wmemchr:                                //  @wmemchr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x10
	mv x10, x0
	beq x0, x12, .LBB0_4
.LBB0_1:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x14, 0 ( x13 )
	beq x14, x11, .LBB0_2
.LBB0_3:                                //  %if.end
                                        //    in Loop: Header=BB0_1 Depth=1
	add x13, x13, 4
	add x12, x12, -1
	bltu x0, x12, .LBB0_1
.LBB0_4:                                //  %cleanup
	jr ra
.LBB0_2:
	mv x10, x13
	jr ra
.Lfunc_end0:
	.size	wmemchr, .Lfunc_end0-wmemchr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
