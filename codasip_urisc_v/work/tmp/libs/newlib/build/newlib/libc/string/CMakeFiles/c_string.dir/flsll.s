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
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv fp, x11
	or x11, fp, x10
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	beq x0, x11, .LBB0_1
.LBB0_2:                                //  %if.end
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
	lui x12, %hi( 1431655765 )
	add x19, x12, %lo( 1431655765 )
	srl x11, x10, 1&31
	and x11, x19, x11
	sub x10, x10, x11
	lui x12, %hi( 858993459 )
	srl x11, x10, 2&31
	add x20, x12, %lo( 858993459 )
	and x11, x20, x11
	and x10, x20, x10
	add x10, x11, x10
	srl x11, x10, 4&31
	add x10, x11, x10
	lui x11, %hi( 252645135 )
	add x21, x11, %lo( 252645135 )
	lui x11, %hi( 16843009 )
	add x18, x11, %lo( 16843009 )
	and x10, x21, x10
	mv x11, x18
	jal __mulsi3
	mv x9, x10
	srl x10, fp, 1&31
	or x10, x10, fp
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
	and x11, x19, x11
	sub x10, x10, x11
	srl x11, x10, 2&31
	and x11, x20, x11
	and x10, x20, x10
	add x10, x11, x10
	srl x11, x10, 4&31
	add x10, x11, x10
	and x10, x21, x10
	mv x11, x18
	jal __mulsi3
	mv x11, x0
	bne fp, x11, .LBB0_3
.LBB0_4:                                //  %if.end
	srl x10, x9, 24&31
	add x10, x10, 32
	jal x0, .LBB0_5
.LBB0_1:
	mv x10, x0
	jal x0, .LBB0_6
.LBB0_3:
	srl x10, x10, 24&31
.LBB0_5:                                //  %if.end
	add x11, x0, 64
	sub x10, x11, x10
.LBB0_6:                                //  %return
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
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
	.size	flsll, .Lfunc_end0-flsll
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
