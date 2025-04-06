	.text
	.file	"kf_tan.c"
	.globl	__kernel_tanf           //  -- Begin function __kernel_tanf
	.type	__kernel_tanf,@function
__kernel_tanf:                          //  @__kernel_tanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -44
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	and x24, x10, fp
	mv x10, fp
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x25, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 25, -40
	mv x9, x12
	mv x18, x11
	jal __fixsfsi
	bltu x0, x10, .LBB0_5
.LBB0_1:                                //  %entry
	srl x10, x24, 23&31
	add x11, x0, 98
	bltu x11, x10, .LBB0_5
.LBB0_2:                                //  %if.then3
	add x10, x9, 1
	or x10, x24, x10
	beq x0, x10, .LBB0_3
.LBB0_4:                                //  %if.else
	lui x10, %hi( -1082130432 )
	add x10, x10, %lo( -1082130432 )
	mv x11, fp
	jal __divsf3
	seqz x11, x0
	bne x9, x11, .LBB0_18
	jal x0, .LBB0_19
.LBB0_5:                                //  %if.end10
	lui x10, %hi( 1059889472 )
	add x25, x10, %lo( 1059889472 )
	bltu x24, x25, .LBB0_6
.LBB0_7:                                //  %if.then13
	lui x10, %hi( -2147483648 )
	add x21, x10, %lo( -2147483648 )
	mv x19, x0
	blt fp, x19, .LBB0_8
.LBB0_9:                                //  %if.then13
	mv x11, fp
	jal x0, .LBB0_10
.LBB0_6:
	mv x19, x18
	mv x18, fp
	jal x0, .LBB0_13
.LBB0_3:                                //  %if.then6
	mv x10, fp
	jal fabsf
	mv x11, x10
	lui x10, (1065353216>>12)&1048575
	jal __divsf3
	jal x0, .LBB0_18
.LBB0_8:
	xor x11, x21, fp
.LBB0_10:                               //  %if.then13
	lui x10, %hi( 1061752794 )
	add x10, x10, %lo( 1061752794 )
	jal __subsf3
	mv x20, x10
	bge fp, x19, .LBB0_12
.LBB0_11:
	xor x18, x21, x18
.LBB0_12:                               //  %if.then13
	lui x10, %hi( 857874792 )
	add x10, x10, %lo( 857874792 )
	mv x11, x18
	jal __subsf3
	mv x11, x10
	mv x10, x20
	jal __addsf3
	mv x18, x10
.LBB0_13:                               //  %if.end22
	mv x10, x18
	mv x11, x18
	jal __mulsf3
	mv x20, x10
	mv x11, x20
	jal __mulsf3
	mv x21, x10
	lui x10, %hi( -1214534049 )
	add x11, x10, %lo( -1214534049 )
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 950268997 )
	add x11, x11, %lo( 950268997 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 974792392 )
	add x11, x11, %lo( 974792392 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 996894998 )
	add x11, x11, %lo( 996894998 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 1018374052 )
	add x11, x11, %lo( 1018374052 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 1040746633 )
	add x11, x11, %lo( 1040746633 )
	jal __addsf3
	mv x22, x10
	lui x10, %hi( 936989572 )
	add x11, x10, %lo( 936989572 )
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 949338234 )
	add x11, x11, %lo( 949338234 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 964769721 )
	add x11, x11, %lo( 964769721 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 985587272 )
	add x11, x11, %lo( 985587272 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 1007761183 )
	add x11, x11, %lo( 1007761183 )
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	lui x11, %hi( 1029508561 )
	add x11, x11, %lo( 1029508561 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	mv x21, x10
	mv x10, x18
	mv x11, x20
	jal __mulsf3
	mv x23, x10
	mv x10, x22
	mv x11, x21
	jal __addsf3
	mv x11, x10
	mv x10, x23
	jal __mulsf3
	mv x11, x10
	mv x10, x19
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	mv x11, x10
	mv x10, x19
	jal __addsf3
	mv x19, x10
	lui x10, %hi( 1051372203 )
	add x11, x10, %lo( 1051372203 )
	mv x10, x23
	jal __mulsf3
	mv x11, x19
	jal __addsf3
	mv x19, x10
	mv x10, x18
	mv x11, x19
	jal __addsf3
	mv x20, x10
	bltu x24, x25, .LBB0_15
.LBB0_14:                               //  %if.then56
	mv x10, x9
	jal __floatsisf
	mv x9, x10
	srl x10, fp, 30&31
	and x10, x10, 2
	seqz x11, x0
	sub x10, x11, x10
	jal __floatsisf
	mv fp, x10
	mv x10, x20
	mv x11, x20
	jal __mulsf3
	mv x21, x10
	mv x10, x20
	mv x11, x9
	jal __addsf3
	mv x11, x10
	mv x10, x21
	jal __divsf3
	mv x11, x19
	jal __subsf3
	mv x11, x10
	mv x10, x18
	jal __subsf3
	mv x11, x10
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __subsf3
	mv x11, fp
	jal __mulsf3
	jal x0, .LBB0_18
.LBB0_15:                               //  %if.end69
	xor x10, x9, 1
	bltu x0, x10, .LBB0_17
.LBB0_16:
	mv fp, x20
	jal x0, .LBB0_19
.LBB0_17:                               //  %if.else73
	lui x10, %hi( -4096 )
	add x21, x10, %lo( -4096 )
	and fp, x21, x20
	mv x10, fp
	mv x11, x18
	jal __subsf3
	mv x11, x10
	mv x10, x19
	jal __subsf3
	mv x9, x10
	lui x10, %hi( -1082130432 )
	add x10, x10, %lo( -1082130432 )
	mv x11, x20
	jal __divsf3
	mv x18, x10
	and x19, x21, x18
	mv x10, fp
	mv x11, x19
	jal __mulsf3
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	mv fp, x10
	mv x10, x9
	mv x11, x19
	jal __mulsf3
	mv x11, x10
	mv x10, fp
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x19
	jal __addsf3
.LBB0_18:                               //  %cleanup
	mv fp, x10
.LBB0_19:                               //  %cleanup
	mv x10, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x25, 8 ( sp )                //  4-byte Folded Reload
	lw x24, 12 ( sp )               //  4-byte Folded Reload
	lw x23, 16 ( sp )               //  4-byte Folded Reload
	lw x22, 20 ( sp )               //  4-byte Folded Reload
	lw x21, 24 ( sp )               //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__kernel_tanf, .Lfunc_end0-__kernel_tanf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
