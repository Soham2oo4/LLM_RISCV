	.text
	.file	"timingsafe_bcmp.c"
	.globl	timingsafe_bcmp         //  -- Begin function timingsafe_bcmp
	.type	timingsafe_bcmp,@function
timingsafe_bcmp:                        //  @timingsafe_bcmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x12, .LBB0_1
.LBB0_2:                                //  %for.body.preheader
	.cfi_def_cfa 2, 0
	mv x13, x0
.LBB0_3:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14, 0 ( x10 )
	lbu x15, 0 ( x11 )
	add x11, x11, 1
	add x10, x10, 1
	add x12, x12, -1
	xor x14, x14, x15
	or x13, x14, x13
	bltu x0, x12, .LBB0_3
.LBB0_4:                                //  %for.end.loopexit
	snez x10, x13
	jr ra
.LBB0_1:
	mv x10, x0
	jr ra
.Lfunc_end0:
	.size	timingsafe_bcmp, .Lfunc_end0-timingsafe_bcmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
