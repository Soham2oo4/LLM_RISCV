	.text
	.file	"ef_exp.c"
	.globl	__ieee754_expf          //  -- Begin function __ieee754_expf
	.type	__ieee754_expf,@function
__ieee754_expf:                         //  @__ieee754_expf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	and x18, x10, fp
	lui x10, %hi( 2139095041 )
	add x10, x10, %lo( 2139095041 )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	bltu x18, x10, .LBB0_2
.LBB0_1:                                //  %if.then
	mv x10, fp
	mv x11, fp
.LBB0_22:                               //  %cleanup
	jal __addsf3
.LBB0_23:                               //  %cleanup
	mv fp, x10
.LBB0_24:                               //  %cleanup
	mv x10, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_2:                                //  %if.end
	slt x19, fp, x0
	lui x10, (2139095040>>12)&1048575
	bne x18, x10, .LBB0_4
.LBB0_3:                                //  %if.then3
	mv x10, x0
	bne x19, x10, .LBB0_23
	jal x0, .LBB0_24
.LBB0_4:                                //  %if.end6
	lui x10, %hi( 1118925336 )
	add x10, x10, %lo( 1118925336 )
	blt fp, x10, .LBB0_6
.LBB0_5:                                //  %if.then9
	mv x10, x0
	jal __math_oflowf
	jal x0, .LBB0_23
.LBB0_6:                                //  %if.end10
	bge fp, x0, .LBB0_9
.LBB0_7:                                //  %if.end10
	lui x10, %hi( 1120924086 )
	add x10, x10, %lo( 1120924086 )
	bltu x18, x10, .LBB0_9
.LBB0_8:                                //  %if.then15
	mv x10, x0
	jal __math_uflowf
	jal x0, .LBB0_23
.LBB0_9:                                //  %if.end17
	lui x10, %hi( 1051816473 )
	add x10, x10, %lo( 1051816473 )
	bltu x18, x10, .LBB0_12
.LBB0_10:                               //  %if.then20
	lui x10, %hi( 1065686417 )
	add x10, x10, %lo( 1065686417 )
	bltu x10, x18, .LBB0_15
.LBB0_11:                               //  %if.then23
	lui x11, %hi( ln2HI )
	lui x12, %hi( ln2LO )
	xor x10, x19, 1
	sub x9, x10, x19
	sll x10, x19, 2&31
	add x11, x11, %lo( ln2HI )
	add x12, x12, %lo( ln2LO )
	add x11, x10, x11
	add x10, x10, x12
	lw x18, 0 ( x10 )
	lw x19, 0 ( x11 )
	jal x0, .LBB0_16
.LBB0_12:                               //  %if.else36
	lui x10, %hi( 1900671690 )
	add x11, x10, %lo( 1900671690 )
	mv x10, fp
	jal __addsf3
	lui x11, (1065353216>>12)&1048575
	jal __gtsf2
	mv x9, x0
	bge x0, x10, .LBB0_17
.LBB0_13:                               //  %if.else36
	srl x10, x18, 26&31
	add x11, x0, 12
	bltu x11, x10, .LBB0_17
.LBB0_14:                               //  %if.then43
	lui x11, (1065353216>>12)&1048575
	mv x10, fp
	jal x0, .LBB0_22
.LBB0_15:                               //  %if.else
	lui x10, %hi( 1069066811 )
	add x11, x10, %lo( 1069066811 )
	mv x10, fp
	jal __mulsf3
	lui x12, %hi( halF )
	sll x11, x19, 2&31
	add x12, x12, %lo( halF )
	add x11, x11, x12
	lw x11, 0 ( x11 )
	jal __addsf3
	jal __fixsfsi
	mv x9, x10
	jal __floatsisf
	mv x18, x10
	lui x10, %hi( 1060204928 )
	add x11, x10, %lo( 1060204928 )
	mv x10, x18
	jal __mulsf3
	mv x19, x10
	lui x10, %hi( 924317649 )
	add x11, x10, %lo( 924317649 )
	mv x10, x18
	jal __mulsf3
	mv x18, x10
.LBB0_16:                               //  %if.end34
	mv x10, fp
	mv x11, x19
	jal __subsf3
	mv x11, x18
	mv x19, x10
	jal __subsf3
	mv fp, x10
	jal x0, .LBB0_18
.LBB0_17:
                                        //  implicit-def: $rf_gpr_18
                                        //  implicit-def: $rf_gpr_19
.LBB0_18:                               //  %if.end47
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x20, x10
	lui x10, %hi( 858897228 )
	add x11, x10, %lo( 858897228 )
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( -1243747826 )
	add x11, x11, %lo( -1243747826 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 948613973 )
	add x11, x11, %lo( 948613973 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( -1154086047 )
	add x11, x11, %lo( -1154086047 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	lui x11, %hi( 1042983595 )
	add x11, x11, %lo( 1042983595 )
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __mulsf3
	mv x11, x10
	mv x10, fp
	jal __subsf3
	mv x21, x10
	mv x10, fp
	mv x11, x21
	jal __mulsf3
	mv x20, x10
	beq x0, x9, .LBB0_21
.LBB0_19:                               //  %if.else66
	lui x10, (1073741824>>12)&1048575
	mv x11, x21
	jal __subsf3
	mv x11, x10
	mv x10, x20
	jal __divsf3
	mv x11, x10
	mv x10, x18
	jal __subsf3
	mv x11, x10
	mv x10, x19
	jal __subsf3
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	sll x11, x9, 23&31
	add fp, x10, x11
	slti x10, x9, -125
	beq x0, x10, .LBB0_24
.LBB0_20:                               //  %if.else89
	lui x10, (838860800>>12)&1048575
	add x10, x10, fp
	lui x11, (226492416>>12)&1048575
	jal __mulsf3
	jal x0, .LBB0_23
.LBB0_21:                               //  %if.then61
	lui x10, %hi( -1073741824 )
	add x11, x10, %lo( -1073741824 )
	mv x10, x21
	jal __addsf3
	mv x11, x10
	mv x10, x20
	jal __divsf3
	mv x11, x10
	mv x10, fp
	jal __subsf3
	lui x11, (1065353216>>12)&1048575
	jal x0, .LBB0_22
.Lfunc_end0:
	.size	__ieee754_expf, .Lfunc_end0-__ieee754_expf
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	ln2HI,@object           //  @ln2HI
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
ln2HI:
	.long	1060204928              //  float 0.693138123
	.long	3207688576              //  float -0.693138123
	.size	ln2HI, 8

	.address_space	0
	.type	ln2LO,@object           //  @ln2LO
	.p2align	2
ln2LO:
	.long	924317649               //  float 9.05800061E-6
	.long	3071801297              //  float -9.05800061E-6
	.size	ln2LO, 8

	.address_space	0
	.type	halF,@object            //  @halF
	.p2align	2
halF:
	.long	1056964608              //  float 0.5
	.long	3204448256              //  float -0.5
	.size	halF, 8

	.hidden	__math_oflowf
	.hidden	__math_uflowf

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
