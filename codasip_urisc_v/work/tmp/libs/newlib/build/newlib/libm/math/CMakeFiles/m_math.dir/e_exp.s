	.text
	.file	"e_exp.c"
	.globl	__ieee754_exp           //  -- Begin function __ieee754_exp
	.type	__ieee754_exp,@function
__ieee754_exp:                          //  @__ieee754_exp
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
	lui x10, %hi( 2147483647 )
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -48
	mv fp, x11
	add x10, x10, %lo( 2147483647 )
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	and x19, x10, fp
	lui x10, %hi( 1082535490 )
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	slt x21, fp, x0
	add x13, x10, %lo( 1082535490 )
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
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
	bltu x19, x13, .LBB0_5
.LBB0_1:                                //  %if.then
	srl x10, x19, 20&31
	sltiu x10, x10, 2047
	bltu x0, x10, .LBB0_8
.LBB0_2:                                //  %if.then3
	lui x10, %hi( 1048575 )
	add x10, x10, %lo( 1048575 )
	and x10, x10, fp
	or x18, x9, x10
	mv x22, x0
	mv x20, fp
	mv x19, x9
	beq x21, x22, .LBB0_4
.LBB0_3:                                //  %if.then3
	mv x20, x22
	mv x19, x22
.LBB0_4:                                //  %if.then3
	mv x10, x9
	mv x11, fp
	mv x12, x9
	mv x13, fp
	jal __adddf3
	bne x18, x22, .LBB0_23
	jal x0, .LBB0_24
.LBB0_5:                                //  %if.end20
	lui x10, %hi( 1071001155 )
	add x10, x10, %lo( 1071001155 )
	bltu x19, x10, .LBB0_10
.LBB0_6:                                //  %if.then22
	lui x10, %hi( 1072734897 )
	add x10, x10, %lo( 1072734897 )
	bltu x10, x19, .LBB0_16
.LBB0_7:                                //  %if.then24
	lui x11, %hi( ln2HI )
	lui x12, %hi( ln2LO )
	xor x10, x21, 1
	sub x18, x10, x21
	sll x10, x21, 3&31
	add x11, x11, %lo( ln2HI )
	add x12, x12, %lo( ln2LO )
	add x11, x10, x11
	add x10, x10, x12
	lw x20, 4 ( x10 )
	lw x19, 0 ( x10 )
	lw x21, 4 ( x11 )
	lw x22, 0 ( x11 )
	jal x0, .LBB0_17
.LBB0_8:                                //  %if.end
	lui x10, %hi( -17155601 )
	add x12, x10, %lo( -17155601 )
	mv x10, x9
	mv x11, fp
	jal __gtdf2
	bge x0, x10, .LBB0_14
.LBB0_9:                                //  %if.then14
	mv x10, x0
	jal __math_oflow
	jal x0, .LBB0_23
.LBB0_10:                               //  %if.else37
	lui x10, %hi( -2013235812 )
	add x12, x10, %lo( -2013235812 )
	lui x10, %hi( 2117592124 )
	add x13, x10, %lo( 2117592124 )
	mv x10, x9
	mv x11, fp
	jal __adddf3
	mv x18, x0
	lui x13, (1072693248>>12)&1048575
	mv x12, x18
	jal __gtdf2
	bge x0, x10, .LBB0_13
.LBB0_11:                               //  %if.else37
	srl x10, x19, 20&31
	add x11, x0, 990
	bltu x11, x10, .LBB0_13
.LBB0_12:                               //  %if.then44
	mv x12, x0
	lui x13, (1072693248>>12)&1048575
	mv x10, x9
	mv x11, fp
	jal x0, .LBB0_22
.LBB0_13:
                                        //  implicit-def: $rf_gpr_19
                                        //  implicit-def: $rf_gpr_20
                                        //  implicit-def: $rf_gpr_21
                                        //  implicit-def: $rf_gpr_22
	jal x0, .LBB0_18
.LBB0_14:                               //  %if.end15
	lui x10, %hi( -718458799 )
	add x12, x10, %lo( -718458799 )
	lui x10, %hi( -1064875760 )
	add x13, x10, %lo( -1064875760 )
	mv x10, x9
	mv x11, fp
	jal __ltdf2
	bge x10, x0, .LBB0_16
.LBB0_15:                               //  %if.then17
	mv x10, x0
	jal __math_uflow
	jal x0, .LBB0_23
.LBB0_16:                               //  %if.else28
	lui x10, %hi( 1697350398 )
	add x12, x10, %lo( 1697350398 )
	lui x10, %hi( 1073157447 )
	add x13, x10, %lo( 1073157447 )
	mv x10, x9
	mv x11, fp
	jal __muldf3
	lui x13, %hi( halF )
	sll x12, x21, 3&31
	add x13, x13, %lo( halF )
	add x13, x12, x13
	lw x12, 0 ( x13 )
	lw x13, 4 ( x13 )
	jal __adddf3
	jal __fixdfsi
	mv x18, x10
	jal __floatsidf
	mv x19, x10
	lui x10, %hi( -18874368 )
	add x12, x10, %lo( -18874368 )
	lui x10, %hi( 1072049730 )
	add x13, x10, %lo( 1072049730 )
	mv x10, x19
	mv x20, x11
	jal __muldf3
	mv x22, x10
	lui x10, %hi( 897137782 )
	add x12, x10, %lo( 897137782 )
	lui x10, %hi( 1038760431 )
	mv x21, x11
	add x13, x10, %lo( 1038760431 )
	mv x10, x19
	mv x11, x20
	jal __muldf3
	mv x19, x10
	mv x20, x11
.LBB0_17:                               //  %if.end35
	mv x10, x9
	mv x11, fp
	mv x12, x22
	mv x13, x21
	jal __subdf3
	mv x12, x19
	mv x13, x20
	mv x21, x10
	mv x22, x11
	jal __subdf3
	mv x9, x10
	mv fp, x11
.LBB0_18:                               //  %if.end48
	mv x10, x9
	mv x11, fp
	mv x12, x9
	mv x13, fp
	jal __muldf3
	mv x23, x10
	lui x10, %hi( 1925096656 )
	add x12, x10, %lo( 1925096656 )
	lui x10, %hi( 1046886249 )
	add x13, x10, %lo( 1046886249 )
	mv x10, x23
	mv x24, x11
	jal __muldf3
	lui x12, %hi( -976065551 )
	lui x13, %hi( -1094992575 )
	add x12, x12, %lo( -976065551 )
	add x13, x13, %lo( -1094992575 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( -1356472788 )
	lui x13, %hi( 1058100842 )
	add x12, x12, %lo( -1356472788 )
	add x13, x13, %lo( 1058100842 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( 381599123 )
	lui x13, %hi( -1083784852 )
	add x12, x12, %lo( 381599123 )
	add x13, x13, %lo( -1083784852 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	lui x12, %hi( 1431655742 )
	lui x13, %hi( 1069897045 )
	add x12, x12, %lo( 1431655742 )
	add x13, x13, %lo( 1069897045 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x24
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __subdf3
	mv x26, x10
	mv x25, x11
	mv x10, x9
	mv x11, fp
	mv x12, x26
	mv x13, x25
	jal __muldf3
	mv x24, x10
	mv x23, x11
	beq x0, x18, .LBB0_21
.LBB0_19:                               //  %if.else67
	mv fp, x0
	lui x11, (1073741824>>12)&1048575
	mv x10, fp
	mv x12, x26
	mv x13, x25
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x23
	jal __divdf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __subdf3
	lui x13, (1072693248>>12)&1048575
	mv x12, fp
	jal __adddf3
	mv x19, x10
	sll x10, x18, 20&31
	add x20, x11, x10
	slti x10, x18, -1021
	beq x0, x10, .LBB0_24
.LBB0_20:                               //  %if.else94
	lui x10, (1048576000>>12)&1048575
	add x11, x10, x20
	mv x12, x0
	lui x13, (24117248>>12)&1048575
	mv x10, x19
	jal __muldf3
	jal x0, .LBB0_23
.LBB0_21:                               //  %if.then62
	mv x18, x0
	lui x10, %hi( -1073741824 )
	add x13, x10, %lo( -1073741824 )
	mv x10, x26
	mv x11, x25
	mv x12, x18
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x23
	jal __divdf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __subdf3
	lui x13, (1072693248>>12)&1048575
	mv x12, x18
.LBB0_22:                               //  %cleanup116
	jal __adddf3
.LBB0_23:                               //  %cleanup116
	mv x19, x10
	mv x20, x11
.LBB0_24:                               //  %cleanup116
	mv x10, x19
	mv x11, x20
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
	.size	__ieee754_exp, .Lfunc_end0-__ieee754_exp
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	ln2HI,@object           //  @ln2HI
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3
ln2HI:
	.quad	4604418534311723008     //  double 0.69314718036912382
	.quad	-4618953502543052800    //  double -0.69314718036912382
	.size	ln2HI, 16

	.address_space	0
	.type	ln2LO,@object           //  @ln2LO
	.p2align	3
ln2LO:
	.quad	4461442080421002358     //  double 1.9082149292705877E-10
	.quad	-4761929956433773450    //  double -1.9082149292705877E-10
	.size	ln2LO, 16

	.address_space	0
	.type	halF,@object            //  @halF
	.p2align	3
halF:
	.quad	4602678819172646912     //  double 0.5
	.quad	-4620693217682128896    //  double -0.5
	.size	halF, 16

	.hidden	__math_oflow
	.hidden	__math_uflow

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
