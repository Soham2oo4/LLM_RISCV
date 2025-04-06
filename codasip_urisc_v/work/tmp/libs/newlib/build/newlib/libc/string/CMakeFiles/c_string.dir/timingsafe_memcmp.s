	.text
	.file	"timingsafe_memcmp.c"
	.globl	timingsafe_memcmp       //  -- Begin function timingsafe_memcmp
	.type	timingsafe_memcmp,@function
timingsafe_memcmp:                      //  @timingsafe_memcmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x10
	mv x10, x0
	beq x0, x12, .LBB0_3
.LBB0_1:                                //  %for.body.preheader
	mv x14, x10
.LBB0_2:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x15, 0 ( x11 )
	lbu x16, 0 ( x13 )
	add x13, x13, 1
	add x11, x11, 1
	add x12, x12, -1
	sub x17, x16, x15
	sub x15, x15, x16
	sra x15, x15, 8&31
	sra x16, x17, 8&31
	sub x17, x16, x15
	or x15, x14, x15
	xor x14, x14, -1
	and x14, x14, x17
	or x15, x16, x15
	or x10, x10, x14
	mv x14, x15
	bltu x0, x12, .LBB0_2
.LBB0_3:                                //  %for.end
	jr ra
.Lfunc_end0:
	.size	timingsafe_memcmp, .Lfunc_end0-timingsafe_memcmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
