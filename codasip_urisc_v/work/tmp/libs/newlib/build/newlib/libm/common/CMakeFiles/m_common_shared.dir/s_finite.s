	.text
	.file	"s_finite.c"
	.globl	finite                  //  -- Begin function finite
	.type	finite,@function
finite:                                 //  @finite
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x10, x10, x11
	lui x11, %hi( -2146435072 )
	add x11, x11, %lo( -2146435072 )
	add x10, x11, x10
	slt x10, x10, x0
	jr ra
.Lfunc_end0:
	.size	finite, .Lfunc_end0-finite
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
