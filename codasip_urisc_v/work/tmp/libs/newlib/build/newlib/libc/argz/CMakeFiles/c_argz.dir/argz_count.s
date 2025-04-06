	.text
	.file	"argz_count.c"
	.globl	argz_count              //  -- Begin function argz_count
	.type	argz_count,@function
argz_count:                             //  @argz_count
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x10
	mv x10, x0
	beq x0, x11, .LBB0_2
.LBB0_1:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x13, 0 ( x12 )
	add x12, x12, 1
	add x11, x11, -1
	seqz x13, x13
	add x10, x13, x10
	bltu x0, x11, .LBB0_1
.LBB0_2:                                //  %for.end
	jr ra
.Lfunc_end0:
	.size	argz_count, .Lfunc_end0-argz_count
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
