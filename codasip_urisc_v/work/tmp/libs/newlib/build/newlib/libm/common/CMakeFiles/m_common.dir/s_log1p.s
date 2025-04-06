	.text
	.file	"s_log1p.c"
	.globl	log1p                   //  -- Begin function log1p
	.type	log1p,@function
log1p:                                  //  @log1p
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( 1071284857 )
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -48
	mv fp, x11
	add x10, x10, %lo( 1071284857 )
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
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
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 26, -44
	blt x10, fp, .LBB0_10
.LBB0_1:                                //  %if.then
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x10, x10, fp
	srl x19, x10, 20&31
	sltiu x11, x19, 1023
	bltu x0, x11, .LBB0_5
.LBB0_2:                                //  %if.then2
	lui x10, %hi( -1074790400 )
	add x13, x10, %lo( -1074790400 )
	mv x12, x0
	mv x10, x9
	mv x11, fp
	jal __nedf2
	bltu x0, x10, .LBB0_4
.LBB0_3:                                //  %if.then4
	seqz x10, x0
	jal __math_divzero
	jal x0, .LBB0_35
.LBB0_10:                               //  %if.end18
	lui x10, (2146435072>>12)&1048575
	blt fp, x10, .LBB0_17
.LBB0_11:                               //  %if.then20
	mv x10, x9
	mv x11, fp
	mv x12, x9
	mv x13, fp
	jal __adddf3
	jal x0, .LBB0_35
.LBB0_5:                                //  %if.end
	srl x10, x10, 21&31
	add x11, x0, 496
	bltu x11, x10, .LBB0_13
.LBB0_6:                                //  %if.then7
	mv x18, x0
	lui x13, (1129316352>>12)&1048575
	mv x10, x9
	mv x11, fp
	mv x12, x18
	jal __adddf3
	mv x12, x18
	mv x13, x18
	jal __gtdf2
	bge x0, x10, .LBB0_9
.LBB0_7:                                //  %if.then7
	sltiu x10, x19, 969
	beq x0, x10, .LBB0_9
.LBB0_8:
	mv x23, x9
	jal x0, .LBB0_36
.LBB0_17:                               //  %if.then24
	lui x10, %hi( 1128267775 )
	add x10, x10, %lo( 1128267775 )
	bge x10, fp, .LBB0_18
.LBB0_21:                               //  %if.else41
	mv x19, x0
	srl x10, fp, 20&31
	add x18, x10, -1023
	mv x22, fp
	mv x21, x9
	mv x20, x19
	jal x0, .LBB0_22
.LBB0_13:                               //  %if.end22
	lui x10, %hi( 1076707644 )
	add x10, x10, %lo( 1076707644 )
	lui x11, %hi( 1076707645 )
	add x10, x10, fp
	add x11, x11, %lo( 1076707645 )
	bltu x10, x11, .LBB0_18
.LBB0_14:                               //  %if.end77.thread
	mv x18, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x9
	mv x11, fp
	mv x12, x18
	jal __muldf3
	mv x12, x9
	mv x13, fp
	jal __muldf3
	mv x22, x10
	mv x21, x11
                                        //  implicit-def: $rf_gpr_19
                                        //  implicit-def: $rf_gpr_20
	jal x0, .LBB0_15
.LBB0_18:                               //  %if.then26
	mv x23, x0
	lui x19, (1072693248>>12)&1048575
	mv x10, x9
	mv x11, fp
	mv x12, x23
	mv x13, x19
	jal __adddf3
	mv x22, x11
	mv x21, x10
	sra x10, x22, 20&31
	add x18, x10, -1023
	mv x10, x9
	mv x11, fp
	mv x12, x21
	mv x13, x22
	jal __subdf3
	mv x12, x23
	mv x13, x19
	jal __adddf3
	mv x20, x10
	lui x10, %hi( -1074790400 )
	mv x19, x11
	add x13, x10, %lo( -1074790400 )
	mv x10, x21
	mv x11, x22
	mv x12, x23
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __subdf3
	blt x23, x18, .LBB0_20
.LBB0_19:                               //  %if.then26
	mv x19, x11
	mv x20, x10
.LBB0_20:                               //  %if.then26
	mv x10, x20
	mv x11, x19
	mv x12, x21
	mv x13, x22
	jal __divdf3
	mv x19, x10
	mv x20, x11
.LBB0_22:                               //  %if.end51
	lui x10, %hi( 1048575 )
	add x10, x10, %lo( 1048575 )
	and x23, x10, x22
	lui x10, %hi( 434333 )
	add x10, x10, %lo( 434333 )
	bltu x10, x23, .LBB0_24
.LBB0_23:                               //  %do.body55
	lui x10, (1072693248>>12)&1048575
	or x11, x10, x23
	jal x0, .LBB0_25
.LBB0_24:                               //  %if.else62
	lui x10, (1071644672>>12)&1048575
	or x11, x10, x23
	lui x10, (1048576>>12)&1048575
	sub x10, x10, x23
	srl x23, x10, 2&31
	add x18, x18, 1
.LBB0_25:                               //  %if.end77
	mv x22, x0
	lui x10, %hi( -1074790400 )
	add x13, x10, %lo( -1074790400 )
	mv x10, x21
	mv x12, x22
	jal __adddf3
	lui x13, (1071644672>>12)&1048575
	mv x12, x22
	mv x9, x10
	mv fp, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __muldf3
	mv x22, x10
	mv x21, x11
	beq x0, x23, .LBB0_26
.LBB0_15:                               //  %if.end109
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
	mv x24, x10
	mv x23, x11
	mv x12, x24
	mv x13, x23
	jal __muldf3
	mv x25, x10
	lui x10, %hi( -549563836 )
	add x12, x10, %lo( -549563836 )
	lui x10, %hi( 1069740306 )
	add x13, x10, %lo( 1069740306 )
	mv x10, x25
	mv x26, x11
	jal __muldf3
	lui x12, %hi( -797391201 )
	lui x13, %hi( 1069783561 )
	add x12, x12, %lo( -797391201 )
	add x13, x13, %lo( 1069783561 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x26
	jal __muldf3
	lui x12, %hi( -1765080098 )
	lui x13, %hi( 1070024292 )
	add x12, x12, %lo( -1765080098 )
	add x13, x13, %lo( 1070024292 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x26
	jal __muldf3
	lui x12, %hi( 495876271 )
	lui x13, %hi( 1070363077 )
	add x12, x12, %lo( 495876271 )
	add x13, x13, %lo( 1070363077 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x26
	jal __muldf3
	lui x12, %hi( -1809673383 )
	lui x13, %hi( 1070745892 )
	add x12, x12, %lo( -1809673383 )
	add x13, x13, %lo( 1070745892 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x26
	jal __muldf3
	lui x12, %hi( -1718093308 )
	lui x13, %hi( 1071225241 )
	add x12, x12, %lo( -1718093308 )
	add x13, x13, %lo( 1071225241 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x26
	jal __muldf3
	lui x12, %hi( 1431655827 )
	lui x13, %hi( 1071994197 )
	add x12, x12, %lo( 1431655827 )
	add x13, x13, %lo( 1071994197 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x25
	mv x11, x26
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x21
	beq x0, x18, .LBB0_16
.LBB0_33:                               //  %if.else133
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x23
	jal __muldf3
	mv x23, x10
	mv x10, x18
	mv x24, x11
	jal __floatsidf
	mv x18, x10
	lui x10, %hi( 897137782 )
	add x12, x10, %lo( 897137782 )
	lui x10, %hi( 1038760431 )
	add x13, x10, %lo( 1038760431 )
	mv x10, x18
	mv x25, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __adddf3
	mv x12, x23
	mv x13, x24
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x21
	jal __subdf3
	mv x12, x9
	mv x13, fp
	jal __subdf3
	mv fp, x10
	lui x10, %hi( -18874368 )
	add x12, x10, %lo( -18874368 )
	lui x10, %hi( 1072049730 )
	mv x9, x11
	add x13, x10, %lo( 1072049730 )
	mv x10, x18
	mv x11, x25
	jal __muldf3
	mv x12, fp
	mv x13, x9
	jal x0, .LBB0_34
.LBB0_26:                               //  %if.then81
	mv x23, x0
	mv x13, x23
	mv x10, x9
	mv x11, fp
	mv x12, x23
	jal __nedf2
	bltu x0, x10, .LBB0_30
.LBB0_27:                               //  %if.then83
	beq x0, x18, .LBB0_28
.LBB0_29:                               //  %if.else86
	mv x10, x18
	jal __floatsidf
	mv fp, x10
	lui x10, %hi( 897137782 )
	add x12, x10, %lo( 897137782 )
	lui x10, %hi( 1038760431 )
	add x13, x10, %lo( 1038760431 )
	mv x10, fp
	mv x9, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __adddf3
	mv x18, x10
	lui x10, %hi( -18874368 )
	add x12, x10, %lo( -18874368 )
	lui x10, %hi( 1072049730 )
	mv x19, x11
	add x13, x10, %lo( 1072049730 )
	mv x10, fp
	mv x11, x9
	jal __muldf3
	mv x12, x18
	mv x13, x19
	jal __adddf3
	jal x0, .LBB0_35
.LBB0_16:                               //  %if.then128
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x23
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x21
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal x0, .LBB0_34
.LBB0_4:                                //  %if.else
	mv x10, x9
	mv x11, fp
	jal __math_invalid
	jal x0, .LBB0_35
.LBB0_9:                                //  %if.else11
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __muldf3
	lui x13, %hi( -1075838976 )
	mv x12, x0
	add x13, x13, %lo( -1075838976 )
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __adddf3
	jal x0, .LBB0_35
.LBB0_30:                               //  %if.end92
	lui x10, %hi( 1431655765 )
	add x12, x10, %lo( 1431655765 )
	lui x10, %hi( -1075489451 )
	add x13, x10, %lo( -1075489451 )
	mv x10, x9
	mv x11, fp
	jal __muldf3
	mv x12, x0
	lui x13, (1072693248>>12)&1048575
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x21
	jal __muldf3
	mv x22, x10
	mv x21, x11
	beq x0, x18, .LBB0_31
.LBB0_32:                               //  %if.else100
	mv x10, x18
	jal __floatsidf
	mv x18, x10
	lui x10, %hi( -18874368 )
	add x12, x10, %lo( -18874368 )
	lui x10, %hi( 1072049730 )
	add x13, x10, %lo( 1072049730 )
	mv x10, x18
	mv x23, x11
	jal __muldf3
	mv x24, x10
	lui x10, %hi( 897137782 )
	add x12, x10, %lo( 897137782 )
	lui x10, %hi( 1038760431 )
	mv x25, x11
	add x13, x10, %lo( 1038760431 )
	mv x10, x18
	mv x11, x23
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x21
	jal __subdf3
	mv x12, x9
	mv x13, fp
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x25
	jal x0, .LBB0_34
.LBB0_28:
	mv fp, x23
	jal x0, .LBB0_36
.LBB0_31:                               //  %if.then98
	mv x10, x9
	mv x11, fp
	mv x12, x22
	mv x13, x21
.LBB0_34:                               //  %cleanup
	jal __subdf3
.LBB0_35:                               //  %cleanup
	mv x23, x10
	mv fp, x11
.LBB0_36:                               //  %cleanup
	mv x10, x23
	mv x11, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x26, 4 ( sp )                //  4-byte Folded Reload
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
	.size	log1p, .Lfunc_end0-log1p
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_divzero
	.hidden	__math_invalid

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
