	.text
	.file	"sf_tan.c"
	.globl	tanf                    //  -- Begin function tanf
	.type	tanf,@function
tanf:                                   //  @tanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lui x11, %hi( 2147483647 )
	add x11, x11, %lo( 2147483647 )
	lui x12, %hi( 1061752794 )
	and x11, x11, x10
	add x12, x12, %lo( 1061752794 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x12, x11, .LBB0_2
.LBB0_1:                                //  %if.then
	mv x11, x0
	seqz x12, x0
	jal __kernel_tanf
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_2:                                //  %if.else
	srl x11, x11, 23&31
	sltiu x11, x11, 255
	beq x0, x11, .LBB0_3
.LBB0_4:                                //  %if.else3
	add x11, sp, 4
	jal __ieee754_rem_pio2f
	sll x10, x10, 1&31
	and x10, x10, 2
	seqz x11, x0
	sub x12, x11, x10
	lw x11, 8 ( sp )
	lw x10, 4 ( sp )
	jal __kernel_tanf
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_3:                                //  %if.then2
	mv x11, x10
	jal __subsf3
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	tanf, .Lfunc_end0-tanf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
