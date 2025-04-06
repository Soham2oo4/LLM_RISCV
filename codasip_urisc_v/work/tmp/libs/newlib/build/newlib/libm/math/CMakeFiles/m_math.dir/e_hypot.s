	.text
	.file	"e_hypot.c"
	.globl	__ieee754_hypot         //  -- Begin function __ieee754_hypot
	.type	__ieee754_hypot,@function
__ieee754_hypot:                        //  @__ieee754_hypot
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x12
	lui x12, %hi( 2147483647 )
	add x12, x12, %lo( 2147483647 )
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	and x18, x12, x11
	and x11, x12, x13
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	bltu x18, x11, .LBB0_1
.LBB0_2:                                //  %entry
	mv fp, x11
	mv x19, x10
	lui x11, %hi( 62914561 )
	sub x10, x18, fp
	add x11, x11, %lo( 62914561 )
	bge x10, x11, .LBB0_4
.LBB0_5:                                //  %if.end26
	lui x10, %hi( 1596981249 )
	add x10, x10, %lo( 1596981249 )
	bltu x18, x10, .LBB0_6
.LBB0_7:                                //  %if.then28
	srl x10, x18, 20&31
	sltiu x10, x10, 2047
	bltu x0, x10, .LBB0_12
.LBB0_8:                                //  %if.then30
	mv x10, x19
	mv x11, x18
	mv x12, x9
	mv x13, fp
	jal __adddf3
	lui x12, %hi( 1048575 )
	add x12, x12, %lo( 1048575 )
	and x12, x12, x18
	or x13, x19, x12
	mv x12, x0
	beq x13, x12, .LBB0_10
.LBB0_9:                                //  %if.then30
	mv x18, x11
	mv x19, x10
.LBB0_10:                               //  %if.then30
	lui x10, (2146435072>>12)&1048575
	xor x10, x10, fp
	or x10, x9, x10
	bne x10, x12, .LBB0_11
	jal x0, .LBB0_25
.LBB0_1:
	mv fp, x18
	mv x19, x9
	mv x18, x11
	mv x9, x10
	lui x11, %hi( 62914561 )
	sub x10, x18, fp
	add x11, x11, %lo( 62914561 )
	blt x10, x11, .LBB0_5
.LBB0_4:                                //  %if.then25
	mv x10, x19
	mv x11, x18
	mv x12, x9
	mv x13, fp
	jal __adddf3
	jal x0, .LBB0_24
.LBB0_6:
	mv x27, x0
	lui x10, %hi( 548405247 )
	add x10, x10, %lo( 548405247 )
	blt x10, fp, .LBB0_18
.LBB0_14:                               //  %if.then74
	lui x10, %hi( 1048575 )
	add x10, x10, %lo( 1048575 )
	blt x10, fp, .LBB0_17
.LBB0_15:                               //  %if.then76
	or x10, x9, fp
	beq x0, x10, .LBB0_11
.LBB0_16:                               //  %cleanup.thread
	mv x21, x0
	lui x22, (2144337920>>12)&1048575
	mv x10, x9
	mv x11, fp
	mv x12, x21
	mv x13, x22
	jal __muldf3
	mv x9, x10
	mv x20, x11
	mv x10, x19
	mv x11, x18
	mv x12, x21
	mv x13, x22
	jal __muldf3
	mv x19, x10
	mv x21, x11
	or x27, x27, -1022
	jal x0, .LBB0_19
.LBB0_12:                               //  %if.end52
	lui x10, %hi( -629145600 )
	add x10, x10, %lo( -629145600 )
	add x27, x0, 600
	add fp, x10, fp
	add x18, x10, x18
	lui x10, %hi( 548405247 )
	add x10, x10, %lo( 548405247 )
	bge x10, fp, .LBB0_14
	jal x0, .LBB0_18
.LBB0_11:                               //  %if.then30
	mv x9, x19
	mv fp, x18
	jal x0, .LBB0_25
.LBB0_17:                               //  %if.else99
	lui x10, (629145600>>12)&1048575
	add x27, x27, -600
	add fp, x10, fp
	add x18, x10, x18
.LBB0_18:                               //  %if.end120
	mv x20, fp
	mv x21, x18
.LBB0_19:                               //  %if.end120
	mv x10, x19
	mv x11, x21
	mv x12, x9
	mv x13, x20
	jal __subdf3
	mv x12, x9
	mv x13, x20
	mv x23, x10
	mv x24, x11
	jal __gtdf2
	bge x0, x10, .LBB0_21
.LBB0_20:                               //  %if.then123
	mv fp, x0
	mv x10, x19
	mv x11, x21
	mv x12, fp
	mv x13, x18
	jal __subdf3
	mv x22, x10
	mv x23, x11
	mv x10, x19
	mv x11, x21
	mv x12, fp
	mv x13, x18
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x23
	jal __muldf3
	mv x19, x10
	mv x21, x11
	mv x10, x9
	mv x11, x20
	mv x12, x9
	mv x13, x20
	jal __muldf3
	lui x12, %hi( -2147483648 )
	add x12, x12, %lo( -2147483648 )
	xor x11, x12, x11
	mv x12, x19
	mv x13, x21
	jal __subdf3
	mv x9, x10
	mv x19, x11
	mv x10, fp
	mv x11, x18
	mv x12, fp
	jal x0, .LBB0_22
.LBB0_21:                               //  %if.else140
	mv x22, x0
	mv x10, x9
	mv x11, x20
	mv x12, x22
	mv x13, fp
	jal __subdf3
	lui x12, (1048576>>12)&1048575
	add x18, x12, x18
	mv x12, x22
	mv x13, x18
	jal __muldf3
	mv x25, x10
	mv x26, x11
	mv x10, x19
	mv x11, x21
	mv x12, x19
	mv x13, x21
	jal __adddf3
	mv x12, x22
	mv x13, x18
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x20
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x26
	jal __adddf3
	mv x9, x10
	mv x19, x11
	mv x10, x23
	mv x11, x24
	mv x12, x23
	mv x13, x24
	jal __muldf3
	lui x12, %hi( -2147483648 )
	add x12, x12, %lo( -2147483648 )
	xor x11, x12, x11
	mv x12, x9
	mv x13, x19
	jal __subdf3
	mv x9, x10
	mv x19, x11
	mv x10, x22
	mv x11, fp
	mv x12, x22
.LBB0_22:                               //  %if.end170
	mv x13, x18
	jal __muldf3
	mv x12, x9
	mv x13, x19
	jal __subdf3
	jal __ieee754_sqrt
	mv x9, x10
	mv fp, x11
	beq x0, x27, .LBB0_25
.LBB0_23:                               //  %if.then172
	sll x10, x27, 20&31
	lui x11, (1072693248>>12)&1048575
	add x13, x11, x10
	mv x12, x0
	mv x10, x9
	mv x11, fp
	jal __muldf3
.LBB0_24:                               //  %cleanup192
	mv x9, x10
	mv fp, x11
.LBB0_25:                               //  %cleanup192
	mv x10, x9
	mv x11, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x27, 16 ( sp )               //  4-byte Folded Reload
	lw x26, 20 ( sp )               //  4-byte Folded Reload
	lw x25, 24 ( sp )               //  4-byte Folded Reload
	lw x24, 28 ( sp )               //  4-byte Folded Reload
	lw x23, 32 ( sp )               //  4-byte Folded Reload
	lw x22, 36 ( sp )               //  4-byte Folded Reload
	lw x21, 40 ( sp )               //  4-byte Folded Reload
	lw x20, 44 ( sp )               //  4-byte Folded Reload
	lw x19, 48 ( sp )               //  4-byte Folded Reload
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	lw x9, 56 ( sp )                //  4-byte Folded Reload
	lw ra, 60 ( sp )                //  4-byte Folded Reload
	add sp, sp, 64
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__ieee754_hypot, .Lfunc_end0-__ieee754_hypot
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
