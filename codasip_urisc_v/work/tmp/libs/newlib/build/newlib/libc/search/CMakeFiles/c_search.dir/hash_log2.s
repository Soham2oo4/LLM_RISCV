	.text
	.file	"hash_log2.c"
	.globl	__log2                  //  -- Begin function __log2
	.type	__log2,@function
__log2:                                 //  @__log2
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x10
	sltiu x10, x11, 2
	bltu x0, x10, .LBB0_1
.LBB0_2:                                //  %for.inc.preheader
	mv x10, x0
	seqz x12, x0
.LBB0_3:                                //  %for.inc
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x10, 1
	sll x12, x12, 1&31
	bltu x12, x11, .LBB0_3
.LBB0_4:                                //  %for.end
	jr ra
.LBB0_1:
	mv x10, x0
	jr ra
.Lfunc_end0:
	.size	__log2, .Lfunc_end0-__log2
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
