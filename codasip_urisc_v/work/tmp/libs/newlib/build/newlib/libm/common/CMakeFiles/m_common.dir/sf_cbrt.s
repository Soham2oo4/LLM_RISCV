	.text
	.file	"sf_cbrt.c"
	.globl	cbrtf                   //  -- Begin function cbrtf
	.type	cbrtf,@function
cbrtf:                                  //  @cbrtf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	lui x11, %hi( 2147483647 )
	add x11, x11, %lo( 2147483647 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	and x9, x11, x10
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	srl fp, x9, 23&31
	sltiu x11, fp, 255
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	beq x0, x11, .LBB0_1
.LBB0_2:                                //  %if.end
	beq x0, x9, .LBB0_9
.LBB0_3:                                //  %do.body4
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	mv x20, x0
	beq fp, x20, .LBB0_4
.LBB0_5:                                //  %do.body4
	lui x12, %hi( 709958130 )
	add x18, x12, %lo( 709958130 )
	jal x0, .LBB0_6
.LBB0_1:                                //  %if.then
	mv x11, x10
	jal __addsf3
	jal x0, .LBB0_9
.LBB0_4:
	lui x12, %hi( 642849266 )
	add x18, x12, %lo( 642849266 )
.LBB0_6:                                //  %do.body4
	and x19, x11, x10
	lui x11, (1266679808>>12)&1048575
	mv x10, x9
	jal __mulsf3
	beq fp, x20, .LBB0_8
.LBB0_7:                                //  %do.body4
	mv x10, x9
.LBB0_8:                                //  %do.body4
	add x11, x0, 3
	jal __udivsi3
	add fp, x18, x10
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x11, x9
	jal __divsf3
	mv x11, fp
	jal __mulsf3
	lui x11, %hi( 1057683632 )
	add x11, x11, %lo( 1057683632 )
	jal __addsf3
	mv x9, x10
	lui x10, %hi( 1068828496 )
	add x11, x10, %lo( 1068828496 )
	mv x10, x9
	jal __addsf3
	mv x18, x10
	lui x10, %hi( -1087074575 )
	add x10, x10, %lo( -1087074575 )
	mv x11, x9
	jal __divsf3
	mv x11, x10
	mv x10, x18
	jal __addsf3
	mv x11, x10
	lui x10, %hi( 1070446299 )
	add x10, x10, %lo( 1070446299 )
	jal __divsf3
	lui x11, %hi( 1052171118 )
	add x11, x11, %lo( 1052171118 )
	jal __addsf3
	mv x11, fp
	jal __mulsf3
	or x10, x10, x19
.LBB0_9:                                //  %cleanup
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
	.size	cbrtf, .Lfunc_end0-cbrtf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
