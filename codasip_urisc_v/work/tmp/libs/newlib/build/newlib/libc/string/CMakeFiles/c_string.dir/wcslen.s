	.text
	.file	"wcslen.c"
	.globl	wcslen                  //  -- Begin function wcslen
	.type	wcslen,@function
wcslen:                                 //  @wcslen
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x11, x10, -4
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x12, 4 ( x11 )
	add x11, x11, 4
	bltu x0, x12, .LBB0_1
.LBB0_2:                                //  %while.end
	sub x10, x11, x10
	sra x10, x10, 2&31
	jr ra
.Lfunc_end0:
	.size	wcslen, .Lfunc_end0-wcslen
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
