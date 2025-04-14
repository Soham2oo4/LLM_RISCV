	.text
	.file	"flsl.c"
	.globl	flsl                    //  -- Begin function flsl
	.type	flsl,@function
flsl:                                   //  @flsl
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %if.end
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
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
	lui x12, %hi( 1431655765 )
	xor x10, x10, -1
	srl x11, x10, 1&31
	add x12, x12, %lo( 1431655765 )
	and x11, x12, x11
	sub x10, x10, x11
	lui x12, %hi( 858993459 )
	srl x11, x10, 2&31
	add x12, x12, %lo( 858993459 )
	and x11, x12, x11
	and x10, x12, x10
	add x10, x11, x10
	srl x11, x10, 4&31
	add x10, x11, x10
	lui x11, %hi( 252645135 )
	add x11, x11, %lo( 252645135 )
	and x10, x11, x10
	lui x11, %hi( 16843009 )
	add x11, x11, %lo( 16843009 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal __mulsi3
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	srl x10, x10, 24&31
	add x11, x0, 32
	sub x10, x11, x10
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_1:
	mv x10, x0
	jr ra
.Lfunc_end0:
	.size	flsl, .Lfunc_end0-flsl
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
