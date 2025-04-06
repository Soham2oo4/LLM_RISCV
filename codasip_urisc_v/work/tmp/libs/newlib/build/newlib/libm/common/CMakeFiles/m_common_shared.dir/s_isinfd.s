	.text
	.file	"s_isinfd.c"
	.globl	__isinfd                //  -- Begin function __isinfd
	.type	__isinfd,@function
__isinfd:                               //  @__isinfd
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x12, %hi( 2147483647 )
	add x12, x12, %lo( 2147483647 )
	and x11, x12, x11
	sub x12, x0, x10
	or x10, x12, x10
	slt x10, x10, x0
	or x10, x10, x11
	lui x11, %hi( -2146435072 )
	add x11, x11, %lo( -2146435072 )
	lui x12, (2146435072>>12)&1048575
	add x11, x11, x10
	sub x10, x12, x10
	or x10, x11, x10
	xor x10, x10, -1
	slt x10, x10, x0
	jr ra
.Lfunc_end0:
	.size	__isinfd, .Lfunc_end0-__isinfd
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
