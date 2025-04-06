	.text
	.file	"sf_round.c"
	.globl	roundf                  //  -- Begin function roundf
	.type	roundf,@function
roundf:                                 //  @roundf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	srl x10, fp, 23&31
	and x10, x10, 255
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9, x10, -127
	add x10, x0, 22
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	blt x10, x9, .LBB0_6
.LBB0_1:                                //  %if.then
	blt x9, x0, .LBB0_2
.LBB0_4:                                //  %if.else
	lui x10, %hi( 8388607 )
	add x10, x10, %lo( 8388607 )
	srl x10, x10, x9
	and x10, fp, x10
	beq x0, x10, .LBB0_7
.LBB0_5:                                //  %cleanup.thread
	lui x10, %hi( -8388608 )
	lui x11, (4194304>>12)&1048575
	add x10, x10, %lo( -8388608 )
	srl x11, x11, x9
	sra x10, x10, x9
	add x11, fp, x11
	and fp, x10, x11
	jal x0, .LBB0_7
.LBB0_6:                                //  %if.else14
	mv x10, fp
	mv x11, fp
	jal __addsf3
	add x11, x0, 128
	bne x9, x11, .LBB0_7
	jal x0, .LBB0_8
.LBB0_2:                                //  %if.then2
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	and fp, x10, fp
	add x10, x0, -1
	bne x9, x10, .LBB0_7
.LBB0_3:
	lui x10, (1065353216>>12)&1048575
	or fp, x10, fp
.LBB0_7:                                //  %if.else14
	mv x10, fp
.LBB0_8:                                //  %if.else14
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	roundf, .Lfunc_end0-roundf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
