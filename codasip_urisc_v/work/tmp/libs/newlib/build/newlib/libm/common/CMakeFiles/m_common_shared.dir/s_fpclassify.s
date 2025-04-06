	.text
	.file	"s_fpclassify.c"
	.globl	__fpclassifyd           //  -- Begin function __fpclassifyd
	.type	__fpclassifyd,@function
__fpclassifyd:                          //  @__fpclassifyd
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x10
	add x10, x0, 2
	or x13, x12, x11
	beq x0, x13, .LBB0_8
.LBB0_1:                                //  %entry
	lui x13, %hi( -2147483648 )
	add x13, x13, %lo( -2147483648 )
	xor x14, x13, x11
	seqz x14, x14
	seqz x12, x12
	and x14, x14, x12
	bltu x0, x14, .LBB0_8
.LBB0_2:                                //  %if.else
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	lui x14, %hi( -1048576 )
	and x10, x10, x11
	add x14, x14, %lo( -1048576 )
	add x10, x14, x10
	srl x10, x10, 21&31
	sltiu x10, x10, 1023
	beq x0, x10, .LBB0_4
.LBB0_3:
	add x10, x0, 4
	jr ra
.LBB0_4:                                //  %if.else16
	add x10, x0, 3
	srl x15, x11, 20&31
	beq x0, x15, .LBB0_8
.LBB0_5:                                //  %lor.lhs.false20
	bge x11, x0, .LBB0_7
.LBB0_6:                                //  %lor.lhs.false20
	lui x16, %hi( 2049 )
	add x16, x16, %lo( 2049 )
	bgeu x15, x16, .LBB0_7
.LBB0_8:                                //  %cleanup
	jr ra
.LBB0_7:                                //  %if.else25
	or x10, x13, x11
	xor x10, x14, x10
	seqz x10, x10
	and x10, x10, x12
	jr ra
.Lfunc_end0:
	.size	__fpclassifyd, .Lfunc_end0-__fpclassifyd
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
