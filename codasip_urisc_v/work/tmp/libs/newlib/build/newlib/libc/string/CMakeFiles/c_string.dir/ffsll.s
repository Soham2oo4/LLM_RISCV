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
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv fp, x11
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	add x10, fp, -1
	xor x11, fp, -1
	and x10, x10, x11
	lui x12, %hi( 1431655765 )
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x20, x12, %lo( 1431655765 )
	srl x11, x10, 1&31
	and x11, x20, x11
	sub x10, x10, x11
	lui x12, %hi( 858993459 )
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	srl x11, x10, 2&31
	add x21, x12, %lo( 858993459 )
	and x11, x21, x11
	and x10, x21, x10
	add x10, x11, x10
	srl x11, x10, 4&31
	add x10, x11, x10
	lui x11, %hi( 252645135 )
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x22, x11, %lo( 252645135 )
	lui x11, %hi( 16843009 )
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19, x11, %lo( 16843009 )
	and x10, x22, x10
	mv x11, x19
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	jal __mulsi3
	mv x18, x10
	add x10, x9, -1
	xor x11, x9, -1
	and x10, x10, x11
	srl x11, x10, 1&31
	and x11, x20, x11
	sub x10, x10, x11
	srl x11, x10, 2&31
	and x11, x21, x11
	and x10, x21, x10
	add x10, x11, x10
	srl x11, x10, 4&31
	add x10, x11, x10
	and x10, x22, x10
	mv x11, x19
	jal __mulsi3
	mv x11, x10
	mv x10, x0
	bne x9, x10, .LBB0_1
.LBB0_2:                                //  %entry
	srl x11, x18, 24&31
	add x11, x11, 32
	or x12, fp, x9
	bne x12, x10, .LBB0_4
	jal x0, .LBB0_5
.LBB0_1:
	srl x11, x11, 24&31
	or x12, fp, x9
	beq x12, x10, .LBB0_5
.LBB0_4:                                //  %entry
	add x10, x11, 1
.LBB0_5:                                //  %entry
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x22, 4 ( sp )                //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	ffsll, .Lfunc_end0-ffsll
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
