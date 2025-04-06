	.text
	.file	"sf_fpclassify.c"
	.globl	__fpclassifyf           //  -- Begin function __fpclassifyf
	.type	__fpclassifyf,@function
__fpclassifyf:                          //  @__fpclassifyf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( 2147483647 )
	add x11, x11, %lo( 2147483647 )
	and x12, x11, x10
	beq x0, x12, .LBB0_1
.LBB0_2:                                //  %if.else
	lui x11, %hi( -8388608 )
	add x11, x11, %lo( -8388608 )
	add x13, x11, x12
	srl x13, x13, 24&31
	sltiu x13, x13, 127
	beq x0, x13, .LBB0_4
.LBB0_3:
	add x10, x0, 4
	jr ra
.LBB0_1:
	add x10, x0, 2
	jr ra
.LBB0_4:                                //  %if.else9
	lui x13, %hi( 8388607 )
	add x12, x12, -1
	add x13, x13, %lo( 8388607 )
	bgeu x12, x13, .LBB0_6
.LBB0_5:
	add x10, x0, 3
	jr ra
.LBB0_6:                                //  %if.else18
	lui x12, %hi( -2147483648 )
	add x12, x12, %lo( -2147483648 )
	or x10, x12, x10
	xor x10, x11, x10
	seqz x10, x10
	jr ra
.Lfunc_end0:
	.size	__fpclassifyf, .Lfunc_end0-__fpclassifyf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
