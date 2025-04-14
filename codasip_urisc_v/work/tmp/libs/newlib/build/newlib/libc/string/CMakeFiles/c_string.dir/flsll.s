	.text
	.file	"flsll.c"
	.globl	flsll                   //  -- Begin function flsll
	.type	flsll,@function
flsll:                                  //  @flsll
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	or x12, x11, x10
	beq x0, x12, .LBB0_1
.LBB0_2:                                //  %if.end
	lui x12, %hi( 1431655765 )
	add x15, x12, %lo( 1431655765 )
	lui x12, %hi( 858993459 )
	lui x13, %hi( 16843009 )
	add x14, x12, %lo( 858993459 )
	lui x12, %hi( 252645135 )
	add x12, x12, %lo( 252645135 )
	add x13, x13, %lo( 16843009 )
	mv x16, x0
	bne x11, x16, .LBB0_3
.LBB0_4:                                //  %if.end
	srl x11, x10, 1&31
	or x10, x11, x10
	srl x11, x10, 2&31
	or x10, x11, x10
	srl x11, x10, 4&31
	or x10, x11, x10
	srl x11, x10, 8&31
	or x10, x11, x10
	srl x11, x10, 16&31
	or x10, x11, x10
	xor x10, x10, -1
	srl x11, x10, 1&31
	and x11, x15, x11
	sub x10, x10, x11
	srl x11, x10, 2&31
	and x11, x14, x11
	and x10, x14, x10
	add x10, x11, x10
	srl x11, x10, 4&31
	add x10, x11, x10
	and x10, x12, x10
	hackaton_custom_instr_c x10, x13, x10
	srl x10, x10, 24&31
	add x10, x10, 32
	add x11, x0, 64
	sub x10, x11, x10
	jr ra
.LBB0_1:
	mv x10, x0
	jr ra
.LBB0_3:
	srl x10, x11, 1&31
	or x10, x10, x11
	srl x11, x10, 2&31
	or x10, x11, x10
	srl x11, x10, 4&31
	or x10, x11, x10
	srl x11, x10, 8&31
	or x10, x11, x10
	srl x11, x10, 16&31
	or x10, x11, x10
	xor x10, x10, -1
	srl x11, x10, 1&31
	and x11, x15, x11
	sub x10, x10, x11
	srl x11, x10, 2&31
	and x11, x14, x11
	and x10, x14, x10
	add x10, x11, x10
	srl x11, x10, 4&31
	add x10, x11, x10
	and x10, x12, x10
	hackaton_custom_instr_c x10, x13, x10
	srl x10, x10, 24&31
	add x11, x0, 64
	sub x10, x11, x10
	jr ra
.Lfunc_end0:
	.size	flsll, .Lfunc_end0-flsll
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
