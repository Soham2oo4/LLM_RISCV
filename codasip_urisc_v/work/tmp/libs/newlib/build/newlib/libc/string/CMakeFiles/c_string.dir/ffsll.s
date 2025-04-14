	.text
	.file	"ffsll.c"
	.globl	ffsll                   //  -- Begin function ffsll
	.type	ffsll,@function
ffsll:                                  //  @ffsll
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x12, %hi( 1431655765 )
	add x16, x12, %lo( 1431655765 )
	lui x12, %hi( 858993459 )
	add x15, x12, %lo( 858993459 )
	lui x12, %hi( 252645135 )
	add x13, x12, %lo( 252645135 )
	lui x12, %hi( 16843009 )
	add x14, x12, %lo( 16843009 )
	mv x12, x0
	bne x10, x12, .LBB0_1
.LBB0_2:                                //  %entry
	add x17, x11, -1
	xor x5, x11, -1
	and x17, x17, x5
	srl x5, x17, 1&31
	and x16, x16, x5
	sub x16, x17, x16
	srl x17, x16, 2&31
	and x17, x15, x17
	and x15, x15, x16
	add x15, x17, x15
	srl x16, x15, 4&31
	add x15, x16, x15
	and x13, x13, x15
	hackaton_custom_instr_c x13, x14, x13
	srl x13, x13, 24&31
	add x13, x13, 32
	or x10, x11, x10
	bne x10, x12, .LBB0_4
	jal x0, .LBB0_5
.LBB0_1:
	add x17, x10, -1
	xor x5, x10, -1
	and x17, x17, x5
	srl x5, x17, 1&31
	and x16, x16, x5
	sub x16, x17, x16
	srl x17, x16, 2&31
	and x17, x15, x17
	and x15, x15, x16
	add x15, x17, x15
	srl x16, x15, 4&31
	add x15, x16, x15
	and x13, x13, x15
	hackaton_custom_instr_c x13, x14, x13
	srl x13, x13, 24&31
	or x10, x11, x10
	beq x10, x12, .LBB0_5
.LBB0_4:                                //  %entry
	add x12, x13, 1
.LBB0_5:                                //  %entry
	mv x10, x12
	jr ra
.Lfunc_end0:
	.size	ffsll, .Lfunc_end0-ffsll
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
