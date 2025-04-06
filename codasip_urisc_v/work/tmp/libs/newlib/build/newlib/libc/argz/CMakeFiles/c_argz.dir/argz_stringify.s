	.text
	.file	"argz_stringify.c"
	.globl	argz_stringify          //  -- Begin function argz_stringify
	.type	argz_stringify,@function
argz_stringify:                         //  @argz_stringify
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	sltiu x13, x11, 2
	bltu x0, x13, .LBB0_5
.LBB0_1:                                //  %for.body.lr.ph
	add x11, x11, -1
	lbu x13, 0 ( x10 )
	beq x0, x13, .LBB0_3
.LBB0_4:                                //  %for.inc
	add x10, x10, 1
	add x11, x11, -1
	beq x0, x11, .LBB0_5
.LBB0_2:                                //  %for.body
	lbu x13, 0 ( x10 )
	bltu x0, x13, .LBB0_4
.LBB0_3:                                //  %if.then4
	sb x12, 0 ( x10 )
	add x10, x10, 1
	add x11, x11, -1
	bltu x0, x11, .LBB0_2
.LBB0_5:                                //  %if.end7
	jr ra
.Lfunc_end0:
	.size	argz_stringify, .Lfunc_end0-argz_stringify
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
