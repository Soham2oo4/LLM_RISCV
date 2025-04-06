	.text
	.file	"sf_cos.c"
	.globl	cosf                    //  -- Begin function cosf
	.type	cosf,@function
cosf:                                   //  @cosf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lui x11, %hi( 2147483647 )
	add x11, x11, %lo( 2147483647 )
	lui x12, %hi( 1061752792 )
	and x11, x11, x10
	add x12, x12, %lo( 1061752792 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x12, x11, .LBB0_2
.LBB0_1:                                //  %if.then
	mv x11, x0
	jal __kernel_cosf
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
	and x10, x10, 3
	xor x11, x10, 2
	beq x0, x11, .LBB0_9
.LBB0_5:                                //  %if.else3
	xor x11, x10, 1
	beq x0, x11, .LBB0_8
.LBB0_6:                                //  %if.else3
	bltu x0, x10, .LBB0_11
.LBB0_7:                                //  %sw.bb
	lw x11, 8 ( sp )
	lw x10, 4 ( sp )
	jal __kernel_cosf
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
.LBB0_9:                                //  %sw.bb13
	lw x11, 8 ( sp )
	lw x10, 4 ( sp )
	jal __kernel_cosf
	jal x0, .LBB0_10
.LBB0_8:                                //  %sw.bb8
	lw x11, 8 ( sp )
	lw x10, 4 ( sp )
	seqz x12, x0
	jal __kernel_sinf
.LBB0_10:                               //  %cleanup
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x10, x11, x10
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_11:                               //  %sw.default
	lw x11, 8 ( sp )
	lw x10, 4 ( sp )
	seqz x12, x0
	jal __kernel_sinf
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	cosf, .Lfunc_end0-cosf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
