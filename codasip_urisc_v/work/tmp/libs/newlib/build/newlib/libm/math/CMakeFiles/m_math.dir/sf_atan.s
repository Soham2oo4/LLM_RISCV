	.text
	.file	"sf_atan.c"
	.globl	atanf                   //  -- Begin function atanf
	.type	atanf,@function
atanf:                                  //  @atanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	and x18, x10, fp
	srl x10, x18, 23&31
	sltiu x10, x10, 161
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	bltu x0, x10, .LBB0_6
.LBB0_1:                                //  %if.then
	lui x10, %hi( 2139095041 )
	add x10, x10, %lo( 2139095041 )
	bltu x18, x10, .LBB0_3
.LBB0_2:                                //  %if.then2
	mv x10, fp
	mv x11, fp
	jal __addsf3
	jal x0, .LBB0_22
.LBB0_6:                                //  %if.end7
	srl x10, x18, 21&31
	add x11, x0, 502
	bltu x11, x10, .LBB0_11
.LBB0_7:                                //  %if.then9
	lui x10, %hi( 1900671690 )
	add x11, x10, %lo( 1900671690 )
	mv x10, fp
	jal __addsf3
	lui x11, (1065353216>>12)&1048575
	jal __gtsf2
	add x20, x0, -1
	bge x0, x10, .LBB0_8
.LBB0_9:                                //  %if.then9
	srl x10, x18, 24&31
	sltiu x10, x10, 49
	mv x9, fp
	beq x0, x10, .LBB0_18
.LBB0_10:
	mv x10, fp
	jal x0, .LBB0_22
.LBB0_3:                                //  %if.end
	mv x10, x0
	blt x10, fp, .LBB0_4
.LBB0_5:                                //  %if.end
	lui x10, %hi( -1077342245 )
	add x10, x10, %lo( -1077342245 )
	jal x0, .LBB0_22
.LBB0_11:                               //  %if.else17
	mv x10, fp
	jal fabsf
	mv x9, x10
	srl x10, x18, 19&31
	add x11, x0, 2034
	bltu x11, x10, .LBB0_15
.LBB0_12:                               //  %if.then19
	srl x10, x18, 20&31
	add x11, x0, 1010
	bltu x11, x10, .LBB0_14
.LBB0_13:                               //  %if.then21
	mv x10, x9
	mv x11, x9
	jal __addsf3
	lui x11, %hi( -1082130432 )
	add x11, x11, %lo( -1082130432 )
	jal __addsf3
	mv x18, x10
	lui x11, (1073741824>>12)&1048575
	mv x10, x9
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __divsf3
	mv x9, x10
	mv x20, x0
	jal x0, .LBB0_18
.LBB0_4:
	lui x10, %hi( 1070141403 )
	add x10, x10, %lo( 1070141403 )
	jal x0, .LBB0_22
.LBB0_15:                               //  %if.else29
	lui x10, %hi( 1075576831 )
	add x10, x10, %lo( 1075576831 )
	bltu x10, x18, .LBB0_17
.LBB0_16:                               //  %if.then31
	lui x10, %hi( -1077936128 )
	add x11, x10, %lo( -1077936128 )
	mv x10, x9
	jal __addsf3
	mv x18, x10
	lui x11, (1069547520>>12)&1048575
	mv x10, x9
	jal __mulsf3
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __divsf3
	mv x9, x10
	add x20, x0, 2
	jal x0, .LBB0_18
.LBB0_8:
	mv x9, fp
	jal x0, .LBB0_18
.LBB0_14:                               //  %if.else24
	lui x10, %hi( -1082130432 )
	add x11, x10, %lo( -1082130432 )
	mv x10, x9
	jal __addsf3
	mv x18, x10
	lui x11, (1065353216>>12)&1048575
	mv x10, x9
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __divsf3
	mv x9, x10
	seqz x20, x0
	jal x0, .LBB0_18
.LBB0_17:                               //  %if.else36
	lui x10, %hi( -1082130432 )
	add x10, x10, %lo( -1082130432 )
	mv x11, x9
	jal __divsf3
	mv x9, x10
	add x20, x0, 3
.LBB0_18:                               //  %if.end40
	mv x10, x9
	mv x11, x9
	jal __mulsf3
	mv x19, x10
	mv x11, x19
	jal __mulsf3
	mv x18, x10
	lui x10, %hi( 1015376343 )
	add x11, x10, %lo( 1015376343 )
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1028381273 )
	add x11, x11, %lo( 1028381273 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1032350517 )
	add x11, x11, %lo( 1032350517 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1035611758 )
	add x11, x11, %lo( 1035611758 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1041385765 )
	add x11, x11, %lo( 1041385765 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1051372203 )
	add x11, x11, %lo( 1051372203 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	mv x19, x10
	lui x10, %hi( -1122655711 )
	add x11, x10, %lo( -1122655711 )
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1116802709 )
	add x11, x11, %lo( -1116802709 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1113749611 )
	add x11, x11, %lo( -1113749611 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1109160392 )
	add x11, x11, %lo( -1109160392 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1102263091 )
	add x11, x11, %lo( -1102263091 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x19
	blt x20, x0, .LBB0_19
.LBB0_20:                               //  %if.else68
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( atanlo )
	sll x18, x20, 2&31
	add x11, x11, %lo( atanlo )
	add x11, x18, x11
	lw x11, 0 ( x11 )
	jal __subsf3
	mv x11, x9
	jal __subsf3
	mv x11, x10
	lui x10, %hi( atanhi )
	add x10, x10, %lo( atanhi )
	add x10, x18, x10
	lw x10, 0 ( x10 )
	jal __subsf3
	mv x11, x0
	bge fp, x11, .LBB0_22
.LBB0_21:
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x10, x11, x10
	jal x0, .LBB0_22
.LBB0_19:                               //  %if.then64
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	mv x11, x10
	mv x10, x9
	jal __subsf3
.LBB0_22:                               //  %cleanup
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
	.size	atanf, .Lfunc_end0-atanf
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	atanhi,@object          //  @atanhi
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2
atanhi:
	.long	1055744824              //  float 0.463647604
	.long	1061752794              //  float 0.785398125
	.long	1065064542              //  float 0.982793688
	.long	1070141402              //  float 1.57079625
	.size	atanhi, 16

	.address_space	0
	.type	atanlo,@object          //  @atanlo
	.p2align	2
atanlo:
	.long	833369961               //  float 5.01215824E-9
	.long	857874792               //  float 3.77489471E-8
	.long	856952756               //  float 3.44732172E-8
	.long	866263400               //  float 7.54978942E-8
	.size	atanlo, 16


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
