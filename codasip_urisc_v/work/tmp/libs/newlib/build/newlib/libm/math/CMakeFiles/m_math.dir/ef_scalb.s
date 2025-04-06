	.text
	.file	"ef_scalb.c"
	.globl	__ieee754_scalbf        //  -- Begin function __ieee754_scalbf
	.type	__ieee754_scalbf,@function
__ieee754_scalbf:                       //  @__ieee754_scalbf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv x9, x11
	mv fp, x10
	jal __unordsf2
	bltu x0, x10, .LBB0_1
.LBB0_2:                                //  %if.end
	mv x10, x9
	jal finitef
	beq x0, x10, .LBB0_3
.LBB0_5:                                //  %if.end6
	mv x10, x9
	jal rintf
	mv x11, x9
	jal __eqsf2
	beq x0, x10, .LBB0_7
.LBB0_6:                                //  %if.then9
	mv x10, x9
	mv x11, x9
	jal __subsf3
	mv x11, x10
	jal __divsf3
	jal x0, .LBB0_13
.LBB0_3:                                //  %if.then2
	mv x11, x0
	mv x10, x9
	jal __gtsf2
	bge x0, x10, .LBB0_4
.LBB0_1:                                //  %if.then
	mv x10, fp
	mv x11, x9
	jal __mulsf3
	jal x0, .LBB0_13
.LBB0_7:                                //  %if.end13
	lui x10, %hi( 1199433728 )
	add x11, x10, %lo( 1199433728 )
	mv x10, x9
	jal __gtsf2
	bge x0, x10, .LBB0_9
.LBB0_8:                                //  %if.then15
	lui x10, %hi( 65000 )
	add x11, x10, %lo( 65000 )
	jal x0, .LBB0_12
.LBB0_4:                                //  %if.else
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x11, x10, x9
	mv x10, fp
	jal __divsf3
	jal x0, .LBB0_13
.LBB0_9:                                //  %if.end17
	lui x10, %hi( -948049920 )
	add x11, x10, %lo( -948049920 )
	mv x10, x9
	jal __ltsf2
	bge x10, x0, .LBB0_11
.LBB0_10:                               //  %if.then20
	lui x10, %hi( -65000 )
	add x11, x10, %lo( -65000 )
	jal x0, .LBB0_12
.LBB0_11:                               //  %if.end22
	mv x10, x9
	jal __fixsfsi
	mv x11, x10
.LBB0_12:                               //  %return
	mv x10, fp
	jal scalbnf
.LBB0_13:                               //  %return
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__ieee754_scalbf, .Lfunc_end0-__ieee754_scalbf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
