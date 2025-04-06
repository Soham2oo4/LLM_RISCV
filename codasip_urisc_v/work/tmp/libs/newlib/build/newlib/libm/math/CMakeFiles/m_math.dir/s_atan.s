	.text
	.file	"s_atan.c"
	.globl	atan                    //  -- Begin function atan
	.type	atan,@function
atan:                                   //  @atan
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
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv fp, x11
	add x10, x10, %lo( 2147483647 )
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	and x20, x10, fp
	srl x10, x20, 20&31
	sltiu x10, x10, 1089
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	bltu x0, x10, .LBB0_5
.LBB0_1:                                //  %if.then
	lui x10, (2146435072>>12)&1048575
	bltu x10, x20, .LBB0_4
.LBB0_2:                                //  %lor.lhs.false
	beq x0, x9, .LBB0_12
.LBB0_3:                                //  %lor.lhs.false
	bne x20, x10, .LBB0_12
.LBB0_4:                                //  %if.then9
	mv x10, x9
	mv x11, fp
	mv x12, x9
	mv x13, fp
	jal __adddf3
	jal x0, .LBB0_25
.LBB0_5:                                //  %if.end14
	lui x11, %hi( 4086 )
	srl x10, x20, 18&31
	add x11, x11, %lo( 4086 )
	bltu x11, x10, .LBB0_9
.LBB0_6:                                //  %if.then16
	lui x10, %hi( -2013235812 )
	add x12, x10, %lo( -2013235812 )
	lui x10, %hi( 2117592124 )
	add x13, x10, %lo( 2117592124 )
	mv x10, x9
	mv x11, fp
	jal __adddf3
	mv x12, x0
	lui x13, (1072693248>>12)&1048575
	jal __gtdf2
	add x18, x0, -1
	bge x0, x10, .LBB0_16
.LBB0_7:                                //  %if.then16
	srl x10, x20, 21&31
	sltiu x10, x10, 497
	mv x19, fp
	beq x0, x10, .LBB0_21
.LBB0_8:
	mv x11, fp
	jal x0, .LBB0_26
.LBB0_9:                                //  %if.else24
	mv x10, x9
	mv x11, fp
	jal fabs
	mv x19, x10
	lui x10, %hi( 1072889855 )
	mv x9, x11
	add x10, x10, %lo( 1072889855 )
	bltu x10, x20, .LBB0_14
.LBB0_10:                               //  %if.then26
	lui x10, %hi( 1072037887 )
	mv x18, x0
	add x10, x10, %lo( 1072037887 )
	bltu x10, x20, .LBB0_17
.LBB0_11:                               //  %if.then28
	lui x13, (1073741824>>12)&1048575
	mv x10, x19
	mv x11, x9
	mv x12, x18
	jal __adddf3
	mv x20, x10
	mv x21, x11
	mv x10, x19
	mv x11, x9
	mv x12, x19
	mv x13, x9
	jal __adddf3
	lui x12, %hi( -1074790400 )
	add x13, x12, %lo( -1074790400 )
	mv x12, x18
	jal __adddf3
	mv x12, x20
	mv x13, x21
	jal __divdf3
	mv x9, x10
	mv x19, x11
	jal x0, .LBB0_21
.LBB0_12:                               //  %if.end
	mv x10, x0
	blt x10, fp, .LBB0_18
.LBB0_13:                               //  %if.end
	lui x10, %hi( -1074191877 )
	add x11, x10, %lo( -1074191877 )
	jal x0, .LBB0_19
.LBB0_14:                               //  %if.else36
	lui x10, %hi( 1073971199 )
	add x10, x10, %lo( 1073971199 )
	bltu x10, x20, .LBB0_20
.LBB0_15:                               //  %if.then38
	mv x18, x0
	lui x10, %hi( -1074266112 )
	add x13, x10, %lo( -1074266112 )
	mv x10, x19
	mv x11, x9
	mv x12, x18
	jal __adddf3
	mv x20, x10
	mv x21, x11
	lui x13, (1073217536>>12)&1048575
	mv x10, x19
	mv x11, x9
	mv x12, x18
	jal __muldf3
	lui x13, (1072693248>>12)&1048575
	mv x12, x18
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __divdf3
	mv x9, x10
	mv x19, x11
	add x18, x0, 2
	jal x0, .LBB0_21
.LBB0_16:
	mv x19, fp
	jal x0, .LBB0_21
.LBB0_17:                               //  %if.else31
	lui x10, %hi( -1074790400 )
	add x13, x10, %lo( -1074790400 )
	mv x10, x19
	mv x11, x9
	mv x12, x18
	jal __adddf3
	mv x20, x10
	mv x21, x11
	lui x13, (1072693248>>12)&1048575
	mv x10, x19
	mv x11, x9
	mv x12, x18
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __divdf3
	mv x9, x10
	mv x19, x11
	seqz x18, x0
	jal x0, .LBB0_21
.LBB0_18:
	lui x10, %hi( 1073291771 )
	add x11, x10, %lo( 1073291771 )
.LBB0_19:                               //  %if.end
	lui x10, %hi( 1413754136 )
	add x9, x10, %lo( 1413754136 )
	jal x0, .LBB0_26
.LBB0_20:                               //  %if.else43
	lui x11, %hi( -1074790400 )
	mv x10, x0
	add x11, x11, %lo( -1074790400 )
	mv x12, x19
	mv x13, x9
	jal __divdf3
	mv x9, x10
	mv x19, x11
	add x18, x0, 3
.LBB0_21:                               //  %if.end47
	mv x10, x9
	mv x11, x19
	mv x12, x9
	mv x13, x19
	jal __muldf3
	mv x22, x10
	mv x23, x11
	mv x12, x22
	mv x13, x23
	jal __muldf3
	mv x20, x10
	lui x10, %hi( -484255215 )
	add x12, x10, %lo( -484255215 )
	lui x10, %hi( 1066446138 )
	add x13, x10, %lo( 1066446138 )
	mv x10, x20
	mv x21, x11
	jal __muldf3
	lui x12, %hi( 611716587 )
	lui x13, %hi( 1068071755 )
	add x12, x12, %lo( 611716587 )
	add x13, x13, %lo( 1068071755 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	lui x12, %hi( -1596965551 )
	lui x13, %hi( 1068567910 )
	add x12, x12, %lo( -1596965551 )
	add x13, x13, %lo( 1068567910 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	lui x12, %hi( -984866706 )
	lui x13, %hi( 1068975565 )
	add x12, x12, %lo( -984866706 )
	add x13, x13, %lo( 1068975565 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	lui x12, %hi( -1845459969 )
	lui x13, %hi( 1069697316 )
	add x12, x12, %lo( -1845459969 )
	add x13, x13, %lo( 1069697316 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	lui x12, %hi( 1431655693 )
	lui x13, %hi( 1070945621 )
	add x12, x12, %lo( 1431655693 )
	add x13, x13, %lo( 1070945621 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x23
	jal __muldf3
	mv x23, x10
	lui x10, %hi( 745172015 )
	add x12, x10, %lo( 745172015 )
	lui x10, %hi( -1079856060 )
	mv x22, x11
	add x13, x10, %lo( -1079856060 )
	mv x10, x20
	mv x11, x21
	jal __muldf3
	lui x12, %hi( 1390345626 )
	lui x13, %hi( -1079124435 )
	add x12, x12, %lo( 1390345626 )
	add x13, x13, %lo( -1079124435 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	lui x12, %hi( -1351312787 )
	lui x13, %hi( -1078742798 )
	add x12, x12, %lo( -1351312787 )
	add x13, x13, %lo( -1078742798 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	lui x12, %hi( -31254927 )
	lui x13, %hi( -1078169146 )
	add x12, x12, %lo( -31254927 )
	add x13, x13, %lo( -1078169146 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	lui x12, %hi( -1718031420 )
	lui x13, %hi( -1077306983 )
	add x12, x12, %lo( -1718031420 )
	add x13, x13, %lo( -1077306983 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	mv x12, x23
	mv x13, x22
	blt x18, x0, .LBB0_24
.LBB0_22:                               //  %if.else75
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x19
	jal __muldf3
	lui x12, %hi( atanlo )
	sll x18, x18, 3&31
	add x12, x12, %lo( atanlo )
	add x13, x18, x12
	lw x12, 0 ( x13 )
	lw x13, 4 ( x13 )
	jal __subdf3
	mv x12, x9
	mv x13, x19
	jal __subdf3
	mv x12, x10
	lui x10, %hi( atanhi )
	add x10, x10, %lo( atanhi )
	mv x13, x11
	add x11, x18, x10
	lw x10, 0 ( x11 )
	lw x11, 4 ( x11 )
	jal __subdf3
	mv x9, x10
	mv x10, x0
	bge fp, x10, .LBB0_26
.LBB0_23:
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x11, x10, x11
	jal x0, .LBB0_26
.LBB0_24:                               //  %if.then71
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x19
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x19
	jal __subdf3
.LBB0_25:                               //  %cleanup84
	mv x9, x10
.LBB0_26:                               //  %cleanup84
	mv x10, x9
	lw fp, 12 ( sp )                //  4-byte Folded Reload
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
	.size	atan, .Lfunc_end0-atan
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	atanhi,@object          //  @atanhi
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3
atanhi:
	.quad	4602023952714414927     //  double 0.46364760900080609
	.quad	4605249457297304856     //  double 0.78539816339744828
	.quad	4607027438436873883     //  double 0.98279372324732905
	.quad	4609753056924675352     //  double 1.5707963267948966
	.size	atanhi, 32

	.address_space	0
	.type	atanlo,@object          //  @atanlo
	.p2align	3
atanlo:
	.quad	4357843414468748770     //  double 2.2698777452961687E-17
	.quad	4359948597267291143     //  double 3.061616997868383E-17
	.quad	4354989122426817469     //  double 1.3903311031230998E-17
	.quad	4364452196894661639     //  double 6.123233995736766E-17
	.size	atanlo, 32


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
