	.text
	.file	"ef_hypot.c"
	.globl	__ieee754_hypotf        //  -- Begin function __ieee754_hypotf
	.type	__ieee754_hypotf,@function
__ieee754_hypotf:                       //  @__ieee754_hypotf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	lui x12, %hi( 2147483647 )
	add x12, x12, %lo( 2147483647 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	and x9, x12, x10
	and x10, x12, x11
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	bltu x9, x10, .LBB0_8
.LBB0_1:                                //  %entry
	mv fp, x10
	lui x11, %hi( 251658241 )
	sub x10, x9, fp
	add x11, x11, %lo( 251658241 )
	bge x10, x11, .LBB0_9
.LBB0_2:                                //  %if.end21
	lui x10, %hi( 1484783617 )
	add x10, x10, %lo( 1484783617 )
	bltu x9, x10, .LBB0_10
.LBB0_3:                                //  %if.then23
	srl x10, x9, 23&31
	sltiu x10, x10, 255
	beq x0, x10, .LBB0_11
.LBB0_4:                                //  %if.end33
	lui x10, %hi( -570425344 )
	add x10, x10, %lo( -570425344 )
	add x22, x0, 68
	add fp, x10, fp
	add x9, x10, x9
	lui x10, %hi( 645922815 )
	add x10, x10, %lo( 645922815 )
	blt x10, fp, .LBB0_17
.LBB0_5:                                //  %if.then51
	beq x0, fp, .LBB0_15
.LBB0_6:                                //  %if.else
	lui x10, %hi( 8388607 )
	add x10, x10, %lo( 8388607 )
	blt x10, fp, .LBB0_16
.LBB0_7:                                //  %do.body56
	lui x19, (2122317824>>12)&1048575
	mv x10, fp
	mv x11, x19
	jal __mulsf3
	mv x18, x10
	mv x10, x9
	mv x11, x19
	jal __mulsf3
	mv x19, x10
	or x22, x22, -126
	jal x0, .LBB0_18
.LBB0_8:
	mv fp, x9
	mv x9, x10
	lui x11, %hi( 251658241 )
	sub x10, x9, fp
	add x11, x11, %lo( 251658241 )
	blt x10, x11, .LBB0_2
.LBB0_9:                                //  %if.then20
	mv x10, x9
	mv x11, fp
	jal __addsf3
	jal x0, .LBB0_23
.LBB0_10:
	mv x22, x0
	lui x10, %hi( 645922815 )
	add x10, x10, %lo( 645922815 )
	bge x10, fp, .LBB0_5
	jal x0, .LBB0_17
.LBB0_11:                               //  %if.then25
	mv x10, x9
	mv x11, fp
	jal __addsf3
	lui x11, (2139095040>>12)&1048575
	beq x9, x11, .LBB0_13
.LBB0_12:                               //  %if.then25
	mv x9, x10
.LBB0_13:                               //  %if.then25
	beq fp, x11, .LBB0_24
.LBB0_15:
	mv fp, x9
	jal x0, .LBB0_24
.LBB0_16:                               //  %if.else64
	lui x10, (570425344>>12)&1048575
	add x22, x22, -68
	add fp, x10, fp
	add x9, x10, x9
.LBB0_17:                               //  %if.end82
	mv x18, fp
	mv x19, x9
.LBB0_18:                               //  %if.end82
	mv x10, x19
	mv x11, x18
	jal __subsf3
	mv x11, x18
	mv x20, x10
	jal __gtsf2
	bge x0, x10, .LBB0_20
.LBB0_19:                               //  %do.body86
	lui x10, %hi( -4096 )
	add x10, x10, %lo( -4096 )
	and fp, x10, x9
	mv x10, x18
	mv x11, x18
	jal __mulsf3
	mv x9, x10
	mv x10, x19
	mv x11, fp
	jal __subsf3
	mv x18, x10
	mv x10, x19
	mv x11, fp
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x10
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x10, x10, x9
	jal __subsf3
	mv x9, x10
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv fp, x10
	jal x0, .LBB0_21
.LBB0_20:                               //  %if.else101
	lui x10, (8388608>>12)&1048575
	lui x11, %hi( -4096 )
	add x10, x10, x9
	add x11, x11, %lo( -4096 )
	and x9, x11, fp
	and x21, x11, x10
	mv x10, x9
	mv x11, x21
	jal __mulsf3
	mv fp, x10
	mv x10, x20
	mv x11, x20
	jal __mulsf3
	mv x20, x10
	mv x10, x19
	mv x11, x19
	jal __addsf3
	mv x19, x10
	mv x10, x18
	mv x11, x9
	jal __subsf3
	mv x9, x10
	mv x10, x19
	mv x11, x21
	jal __subsf3
	mv x19, x10
	mv x10, x9
	mv x11, x21
	jal __mulsf3
	mv x9, x10
	mv x10, x18
	mv x11, x19
	jal __mulsf3
	mv x11, x10
	mv x10, x9
	jal __addsf3
	mv x11, x10
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x10, x10, x20
	jal __subsf3
	mv x9, x10
.LBB0_21:                               //  %if.end129
	mv x10, fp
	mv x11, x9
	jal __subsf3
	jal __ieee754_sqrtf
	mv fp, x10
	beq x0, x22, .LBB0_24
.LBB0_22:                               //  %do.body132
	sll x10, x22, 23&31
	lui x11, (1065353216>>12)&1048575
	add x11, x11, x10
	mv x10, fp
	jal __mulsf3
.LBB0_23:                               //  %cleanup
	mv fp, x10
.LBB0_24:                               //  %cleanup
	mv x10, fp
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
	.size	__ieee754_hypotf, .Lfunc_end0-__ieee754_hypotf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
