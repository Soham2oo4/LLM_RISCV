	.text
	.file	"s_cos.c"
	.globl	cos                     //  -- Begin function cos
	.type	cos,@function
cos:                                    //  @cos
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	lui x12, %hi( 2147483647 )
	add x12, x12, %lo( 2147483647 )
	lui x13, %hi( 1072243195 )
	and x12, x12, x11
	add x13, x13, %lo( 1072243195 )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -8
	bltu x13, x12, .LBB0_3
.LBB0_1:                                //  %if.then
	mv x12, x0
	mv x13, x12
.LBB0_2:                                //  %if.then
	jal __kernel_cos
	lw fp, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_3:                                //  %if.else
	srl x12, x12, 20&31
	sltiu x12, x12, 2047
	bltu x0, x12, .LBB0_5
.LBB0_4:                                //  %if.then2
	mv x12, x10
	mv x13, x11
	jal __subdf3
	lw fp, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_5:                                //  %if.else3
	add fp, sp, 8
	mv x12, fp
	jal __ieee754_rem_pio2
	and x10, x10, 3
	xor x11, x10, 2
	beq x0, x11, .LBB0_9
.LBB0_6:                                //  %if.else3
	xor x11, x10, 1
	beq x0, x11, .LBB0_10
.LBB0_7:                                //  %if.else3
	bltu x0, x10, .LBB0_12
.LBB0_8:                                //  %sw.bb
	or x10, fp, 4
	lw x11, 0 ( x10 )
	lw x12, 8 ( fp )
	lw x13, 20 ( sp )
	lw x10, 8 ( sp )
	jal x0, .LBB0_2
.LBB0_9:                                //  %sw.bb13
	or x10, fp, 4
	lw x11, 0 ( x10 )
	lw x12, 8 ( fp )
	lw x13, 20 ( sp )
	lw x10, 8 ( sp )
	jal __kernel_cos
	jal x0, .LBB0_11
.LBB0_10:                               //  %sw.bb8
	or x10, fp, 4
	lw x11, 0 ( x10 )
	lw x12, 8 ( fp )
	lw x13, 20 ( sp )
	lw x10, 8 ( sp )
	seqz x14, x0
	jal __kernel_sin
.LBB0_11:                               //  %cleanup
	lui x12, %hi( -2147483648 )
	add x12, x12, %lo( -2147483648 )
	xor x11, x12, x11
	lw fp, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_12:                               //  %sw.default
	or x10, fp, 4
	lw x11, 0 ( x10 )
	lw x12, 8 ( fp )
	lw x13, 20 ( sp )
	lw x10, 8 ( sp )
	seqz x14, x0
	jal __kernel_sin
	lw fp, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	cos, .Lfunc_end0-cos
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
