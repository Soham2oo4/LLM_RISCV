	.text
	.file	"ef_remainder.c"
	.globl	__ieee754_remainderf    //  -- Begin function __ieee754_remainderf
	.type	__ieee754_remainderf,@function
__ieee754_remainderf:                   //  @__ieee754_remainderf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	and x19, x10, fp
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	srl x11, x19, 23&31
	add x12, x0, 254
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	bltu x12, x11, .LBB0_2
.LBB0_1:                                //  %entry
	and x20, x10, x9
	add x10, x20, -1
	srl x10, x10, 23&31
	sltiu x10, x10, 255
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end
	srl x18, x20, 24&31
	add x10, x0, 126
	bltu x10, x18, .LBB0_4
.LBB0_5:                                //  %if.then14
	mv x10, x9
	mv x11, x9
	jal __addsf3
	mv x11, x10
	mv x10, fp
	jal __ieee754_fmodf
	beq x19, x20, .LBB0_7
.LBB0_8:                                //  %if.end19
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	and x19, x11, fp
	jal fabsf
	mv fp, x10
	mv x10, x9
	jal fabsf
	mv x9, x10
	bltu x0, x18, .LBB0_11
.LBB0_9:                                //  %if.then23
	mv x10, fp
	mv x11, fp
	jal __addsf3
	mv x11, x9
	jal __gtsf2
	bge x0, x10, .LBB0_15
.LBB0_10:                               //  %if.then26
	mv x10, fp
	mv x11, x9
	jal __subsf3
	mv fp, x10
	mv x11, fp
	jal __addsf3
	mv x11, x9
	jal __gesf2
	bge x10, x0, .LBB0_14
	jal x0, .LBB0_15
.LBB0_2:                                //  %if.then
	mv x10, fp
	mv x11, x9
	jal __mulsf3
	mv x11, x10
	jal __divsf3
	jal x0, .LBB0_16
.LBB0_4:
	mv x10, fp
	bne x19, x20, .LBB0_8
.LBB0_7:                                //  %if.then17
	mv x11, x0
	jal __mulsf3
	jal x0, .LBB0_16
.LBB0_11:                               //  %if.else
	lui x11, (1056964608>>12)&1048575
	mv x10, x9
	jal __mulsf3
	mv x18, x10
	mv x10, fp
	mv x11, x18
	jal __gtsf2
	bge x0, x10, .LBB0_15
.LBB0_12:                               //  %if.then36
	mv x10, fp
	mv x11, x9
	jal __subsf3
	mv fp, x10
	mv x11, x18
	jal __gesf2
	blt x10, x0, .LBB0_15
.LBB0_14:                               //  %if.then39
	mv x10, fp
	mv x11, x9
	jal __subsf3
	mv fp, x10
.LBB0_15:                               //  %do.body44
	xor x10, fp, x19
.LBB0_16:                               //  %cleanup
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__ieee754_remainderf, .Lfunc_end0-__ieee754_remainderf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
