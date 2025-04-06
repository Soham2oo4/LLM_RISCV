	.text
	.file	"e_log.c"
	.globl	__ieee754_log           //  -- Begin function __ieee754_log
	.type	__ieee754_log,@function
__ieee754_log:                          //  @__ieee754_log
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x11
	lui x11, %hi( 1048575 )
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19, x11, %lo( 1048575 )
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
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
	blt x19, x18, .LBB0_1
.LBB0_2:                                //  %if.then
	lui x11, %hi( 2147483647 )
	add x11, x11, %lo( 2147483647 )
	and x11, x11, x18
	or x11, x10, x11
	beq x0, x11, .LBB0_3
.LBB0_4:                                //  %if.end
	blt x18, x0, .LBB0_5
.LBB0_6:                                //  %if.end6
	mv x12, x0
	lui x13, (1129316352>>12)&1048575
	mv x11, x18
	jal __muldf3
	mv x18, x11
	add x11, x0, -54
	lui x12, (2146435072>>12)&1048575
	bge x18, x12, .LBB0_8
.LBB0_10:                               //  %if.end17
	sra x12, x18, 20&31
	add x11, x11, x12
	lui x12, %hi( 614244 )
	and x27, x19, x18
	add x12, x12, %lo( 614244 )
	add x12, x12, x27
	lui x13, (1048576>>12)&1048575
	and x13, x13, x12
	srl x12, x12, 20&31
	add x20, x12, x11
	or x11, x27, x13
	lui x13, %hi( -1074790400 )
	lui x12, (1072693248>>12)&1048575
	xor x11, x12, x11
	mv x12, x0
	add x13, x13, %lo( -1074790400 )
	jal __adddf3
	mv x9, x10
	add x10, x18, 2
	mv fp, x11
	and x10, x19, x10
	add x18, x20, -1023
	add x11, x0, 2
	bltu x11, x10, .LBB0_18
.LBB0_11:                               //  %if.then37
	mv x19, x0
	mv x13, x19
	mv x10, x9
	mv x11, fp
	mv x12, x19
	jal __nedf2
	bltu x0, x10, .LBB0_15
.LBB0_12:                               //  %if.then39
	beq x0, x18, .LBB0_13
.LBB0_14:                               //  %if.else
	mv x10, x18
	jal __floatsidf
	mv fp, x10
	lui x10, %hi( -18874368 )
	add x12, x10, %lo( -18874368 )
	lui x10, %hi( 1072049730 )
	add x13, x10, %lo( 1072049730 )
	mv x10, fp
	mv x9, x11
	jal __muldf3
	mv x18, x10
	lui x10, %hi( 897137782 )
	add x12, x10, %lo( 897137782 )
	lui x10, %hi( 1038760431 )
	mv x19, x11
	add x13, x10, %lo( 1038760431 )
	mv x10, fp
	mv x11, x9
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __adddf3
	jal x0, .LBB0_28
.LBB0_1:
	mv x11, x0
	lui x12, (2146435072>>12)&1048575
	blt x18, x12, .LBB0_10
.LBB0_8:                                //  %if.then16
	mv x11, x18
	mv x12, x10
	mv x13, x18
	jal __adddf3
	jal x0, .LBB0_28
.LBB0_3:
	lui x10, %hi( -1048576 )
	add x11, x10, %lo( -1048576 )
	mv x19, x0
	jal x0, .LBB0_29
.LBB0_18:                               //  %if.end61
	mv x12, x0
	lui x13, (1073741824>>12)&1048575
	mv x10, x9
	mv x11, fp
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __divdf3
	mv x20, x10
	mv x19, x11
	mv x12, x20
	mv x13, x19
	jal __muldf3
	mv x21, x10
	mv x22, x11
	mv x12, x21
	mv x13, x22
	jal __muldf3
	mv x23, x10
	lui x10, %hi( -797391201 )
	add x12, x10, %lo( -797391201 )
	lui x10, %hi( 1069783561 )
	add x13, x10, %lo( 1069783561 )
	mv x10, x23
	mv x24, x11
	jal __muldf3
	lui x12, %hi( 495876271 )
	lui x13, %hi( 1070363077 )
	add x12, x12, %lo( 495876271 )
	add x13, x13, %lo( 1070363077 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -1718093308 )
	lui x13, %hi( 1071225241 )
	add x12, x12, %lo( -1718093308 )
	add x13, x13, %lo( 1071225241 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	mv x25, x10
	lui x10, %hi( -549563836 )
	add x12, x10, %lo( -549563836 )
	lui x10, %hi( 1069740306 )
	mv x26, x11
	add x13, x10, %lo( 1069740306 )
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -1765080098 )
	lui x13, %hi( 1070024292 )
	add x12, x12, %lo( -1765080098 )
	add x13, x13, %lo( 1070024292 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -1809673383 )
	lui x13, %hi( 1070745892 )
	add x12, x12, %lo( -1809673383 )
	add x13, x13, %lo( 1070745892 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( 1431655827 )
	lui x13, %hi( 1071994197 )
	add x12, x12, %lo( 1431655827 )
	add x13, x13, %lo( 1071994197 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x26
	jal __adddf3
	mv x26, x10
	lui x10, %hi( 440401 )
	mv x23, x11
	lui x11, %hi( -398458 )
	add x10, x10, %lo( 440401 )
	add x11, x11, %lo( -398458 )
	sub x10, x10, x27
	add x11, x11, x27
	or x24, x10, x11
	mv x10, x18
	jal __floatsidf
	mv x22, x10
	mv x21, x11
	bge x0, x24, .LBB0_22
.LBB0_19:                               //  %if.then85
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x9
	mv x11, fp
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __muldf3
	mv x25, x10
	mv x24, x11
	mv x12, x26
	mv x13, x23
	beq x0, x18, .LBB0_20
.LBB0_21:                               //  %if.else95
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x19
	jal __muldf3
	mv x18, x10
	lui x10, %hi( 897137782 )
	add x12, x10, %lo( 897137782 )
	lui x10, %hi( 1038760431 )
	mv x19, x11
	add x13, x10, %lo( 1038760431 )
	mv x10, x22
	mv x11, x21
	jal __muldf3
	mv x12, x18
	mv x13, x19
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x24
	jal __subdf3
	jal x0, .LBB0_26
.LBB0_5:                                //  %if.then5
	mv x11, x18
	mv x12, x10
	mv x13, x18
	jal __subdf3
	mv x12, x0
	mv x13, x12
	jal __divdf3
	jal x0, .LBB0_28
.LBB0_15:                               //  %if.end45
	lui x10, %hi( 1431655765 )
	add x12, x10, %lo( 1431655765 )
	lui x10, %hi( -1076538027 )
	add x13, x10, %lo( -1076538027 )
	mv x10, x9
	mv x11, fp
	jal __muldf3
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	jal __adddf3
	mv x19, x10
	mv x20, x11
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __muldf3
	mv x12, x19
	mv x13, x20
	jal __muldf3
	mv x20, x10
	mv x19, x11
	beq x0, x18, .LBB0_16
.LBB0_17:                               //  %if.else54
	mv x10, x18
	jal __floatsidf
	mv x18, x10
	lui x10, %hi( -18874368 )
	add x12, x10, %lo( -18874368 )
	lui x10, %hi( 1072049730 )
	add x13, x10, %lo( 1072049730 )
	mv x10, x18
	mv x21, x11
	jal __muldf3
	mv x22, x10
	lui x10, %hi( 897137782 )
	add x12, x10, %lo( 897137782 )
	lui x10, %hi( -1108723217 )
	mv x23, x11
	add x13, x10, %lo( -1108723217 )
	mv x10, x18
	mv x11, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x19
	jal __adddf3
	mv x12, x9
	mv x13, fp
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x23
	jal x0, .LBB0_27
.LBB0_22:                               //  %if.else104
	mv x10, x9
	mv x11, fp
	mv x12, x26
	mv x13, x23
	beq x0, x18, .LBB0_23
.LBB0_25:                               //  %if.else111
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x19
	jal __muldf3
	mv x18, x10
	lui x10, %hi( 897137782 )
	add x12, x10, %lo( 897137782 )
	lui x10, %hi( -1108723217 )
	mv x19, x11
	add x13, x10, %lo( -1108723217 )
	mv x10, x22
	mv x11, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __adddf3
.LBB0_26:                               //  %cleanup
	mv x12, x9
	mv x13, fp
	jal __subdf3
	mv fp, x10
	lui x10, %hi( -18874368 )
	add x12, x10, %lo( -18874368 )
	lui x10, %hi( 1072049730 )
	mv x9, x11
	add x13, x10, %lo( 1072049730 )
	mv x10, x22
	mv x11, x21
	jal __muldf3
	mv x12, fp
	mv x13, x9
	jal x0, .LBB0_27
.LBB0_13:
	mv x11, x19
	jal x0, .LBB0_29
.LBB0_20:                               //  %if.then90
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x19
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x24
	jal __subdf3
	jal x0, .LBB0_24
.LBB0_16:                               //  %if.then52
	mv x10, x9
	mv x11, fp
	mv x12, x20
	mv x13, x19
	jal x0, .LBB0_27
.LBB0_23:                               //  %if.then107
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x19
	jal __muldf3
.LBB0_24:                               //  %cleanup
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
.LBB0_27:                               //  %cleanup
	jal __subdf3
.LBB0_28:                               //  %cleanup
	mv x19, x10
.LBB0_29:                               //  %cleanup
	mv x10, x19
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
	.size	__ieee754_log, .Lfunc_end0-__ieee754_log
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
