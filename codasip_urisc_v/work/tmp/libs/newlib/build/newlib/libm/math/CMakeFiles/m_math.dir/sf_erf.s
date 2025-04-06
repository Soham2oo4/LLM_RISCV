	.text
	.file	"sf_erf.c"
	.globl	erff                    //  -- Begin function erff
	.type	erff,@function
erff:                                   //  @erff
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	and x19, x10, fp
	srl x10, x19, 23&31
	sltiu x11, x10, 255
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
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
	beq x0, x11, .LBB0_1
.LBB0_2:                                //  %if.end
	srl x11, x19, 19&31
	add x12, x0, 2026
	bltu x12, x11, .LBB0_9
.LBB0_3:                                //  %if.then3
	add x11, x0, 98
	bltu x11, x10, .LBB0_8
.LBB0_4:                                //  %if.then6
	srl x10, x19, 26&31
	bltu x0, x10, .LBB0_6
.LBB0_5:                                //  %if.then9
	lui x11, (1090519040>>12)&1048575
	mv x10, fp
	jal __mulsf3
	mv x9, x10
	lui x10, %hi( 1065579988 )
	add x11, x10, %lo( 1065579988 )
	mv x10, fp
	jal __mulsf3
	mv x11, x10
	mv x10, x9
	jal __addsf3
	lui x11, (1040187392>>12)&1048575
	jal __mulsf3
	jal x0, .LBB0_26
.LBB0_1:                                //  %if.then
	srl x10, fp, 30&31
	and x10, x10, 2
	seqz x11, x0
	sub x10, x11, x10
	jal __floatsisf
	mv x9, x10
	lui x10, (1065353216>>12)&1048575
	mv x11, fp
	jal __divsf3
	mv x11, x9
	jal x0, .LBB0_25
.LBB0_9:                                //  %if.end39
	srl x10, x19, 21&31
	add x11, x0, 508
	bltu x11, x10, .LBB0_13
.LBB0_10:                               //  %if.then42
	mv x10, fp
	jal fabsf
	lui x11, %hi( -1082130432 )
	add x11, x11, %lo( -1082130432 )
	jal __addsf3
	mv x9, x10
	lui x10, %hi( -1156712000 )
	add x11, x10, %lo( -1156712000 )
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1024545203 )
	add x11, x11, %lo( 1024545203 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1109189438 )
	add x11, x11, %lo( -1109189438 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1050869332 )
	add x11, x11, %lo( 1050869332 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1094807032 )
	add x11, x11, %lo( -1094807032 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1054107653 )
	add x11, x11, %lo( 1054107653 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1155871290 )
	add x11, x11, %lo( -1155871290 )
	jal __addsf3
	mv x18, x10
	lui x10, %hi( 1011112611 )
	add x11, x10, %lo( 1011112611 )
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1012887059 )
	add x11, x11, %lo( 1012887059 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1040265991 )
	add x11, x11, %lo( 1040265991 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1033050855 )
	add x11, x11, %lo( 1033050855 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1057642373 )
	add x11, x11, %lo( 1057642373 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1037693745 )
	add x11, x11, %lo( 1037693745 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __divsf3
	mv x12, x10
	blt fp, x0, .LBB0_12
.LBB0_11:                               //  %if.then70
	lui x10, %hi( 1062753803 )
	add x11, x10, %lo( 1062753803 )
	jal x0, .LBB0_24
.LBB0_8:                                //  %if.end16
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x9, x10
	lui x10, %hi( -1211672911 )
	add x11, x10, %lo( -1211672911 )
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1145236343 )
	add x11, x11, %lo( -1145236343 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1125559665 )
	add x11, x11, %lo( -1125559665 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1096389653 )
	add x11, x11, %lo( -1096389653 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1040414164 )
	add x11, x11, %lo( 1040414164 )
	jal __addsf3
	mv x18, x10
	lui x10, %hi( -1232805350 )
	add x11, x10, %lo( -1232805350 )
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 957017673 )
	add x11, x11, %lo( 957017673 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1000767766 )
	add x11, x11, %lo( 1000767766 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1032137315 )
	add x11, x11, %lo( 1032137315 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1053539278 )
	add x11, x11, %lo( 1053539278 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __divsf3
	mv x11, fp
	jal x0, .LBB0_7
.LBB0_13:                               //  %if.end75
	srl x10, x19, 22&31
	sltiu x10, x10, 259
	bltu x0, x10, .LBB0_17
.LBB0_14:                               //  %if.then78
	add x10, x0, -1
	blt x10, fp, .LBB0_15
.LBB0_16:                               //  %if.then78
	lui x10, %hi( -1082130432 )
	add x10, x10, %lo( -1082130432 )
	jal x0, .LBB0_26
.LBB0_6:                                //  %if.end13
	lui x10, %hi( 1040414164 )
	add x11, x10, %lo( 1040414164 )
	mv x10, fp
.LBB0_7:                                //  %cleanup
	jal __mulsf3
	mv x11, fp
	jal x0, .LBB0_25
.LBB0_17:                               //  %if.end83
	mv x10, fp
	jal fabsf
	mv x9, x10
	mv x11, x9
	jal __mulsf3
	mv x11, x10
	lui x10, (1065353216>>12)&1048575
	jal __divsf3
	mv x18, x10
	lui x10, %hi( 1077336941 )
	add x10, x10, %lo( 1077336941 )
	bltu x10, x19, .LBB0_19
.LBB0_18:                               //  %if.then89
	lui x10, %hi( -1055062146 )
	add x11, x10, %lo( -1055062146 )
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1029532885 )
	add x11, x11, %lo( -1029532885 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1019700505 )
	add x11, x11, %lo( -1019700505 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1021155956 )
	add x11, x11, %lo( -1021155956 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1032224681 )
	add x11, x11, %lo( -1032224681 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1054281694 )
	add x11, x11, %lo( -1054281694 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1087266633 )
	add x11, x11, %lo( -1087266633 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1138646893 )
	add x11, x11, %lo( -1138646893 )
	jal __addsf3
	mv x19, x10
	lui x10, %hi( -1116242025 )
	add x11, x10, %lo( -1116242025 )
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1087520636 )
	add x11, x11, %lo( 1087520636 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1121535263 )
	add x11, x11, %lo( 1121535263 )
	jal __addsf3
	mv x11, x10
	lui x10, %hi( 1100821966 )
	add x20, x10, %lo( 1100821966 )
	lui x10, %hi( 1124706403 )
	add x21, x10, %lo( 1124706403 )
	lui x10, %hi( 1138313327 )
	add x22, x10, %lo( 1138313327 )
	lui x10, %hi( 1143036105 )
	add x23, x10, %lo( 1143036105 )
	lui x10, %hi( 1138131211 )
	add x24, x10, %lo( 1138131211 )
	jal x0, .LBB0_20
.LBB0_12:                               //  %if.else
	lui x10, %hi( -1084729845 )
	add x10, x10, %lo( -1084729845 )
	jal x0, .LBB0_22
.LBB0_15:
	lui x10, (1065353216>>12)&1048575
	jal x0, .LBB0_26
.LBB0_19:                               //  %if.else120
	lui x10, %hi( -1007566219 )
	add x11, x10, %lo( -1007566219 )
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -998235381 )
	add x11, x11, %lo( -998235381 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1004575679 )
	add x11, x11, %lo( -1004575679 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1021271318 )
	add x11, x11, %lo( -1021271318 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1047654325 )
	add x11, x11, %lo( -1047654325 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1085497900 )
	add x11, x11, %lo( -1085497900 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1138646894 )
	add x11, x11, %lo( -1138646894 )
	jal __addsf3
	mv x19, x10
	lui x10, %hi( -1045199086 )
	add x11, x10, %lo( -1045199086 )
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1139622823 )
	add x11, x11, %lo( 1139622823 )
	jal __addsf3
	mv x11, x10
	lui x10, %hi( 1106424921 )
	add x20, x10, %lo( 1106424921 )
	lui x10, %hi( 1134749041 )
	add x21, x10, %lo( 1134749041 )
	lui x10, %hi( 1153439577 )
	add x22, x10, %lo( 1153439577 )
	lui x10, %hi( 1162345915 )
	add x23, x10, %lo( 1162345915 )
	lui x10, %hi( 1159696590 )
	add x24, x10, %lo( 1159696590 )
.LBB0_20:                               //  %do.body148
	mv x10, x18
	jal __mulsf3
	mv x11, x24
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x23
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x22
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x21
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x20
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	mv x18, x10
	lui x10, %hi( -4096 )
	add x10, x10, %lo( -4096 )
	and x20, x10, x9
	mv x10, x20
	mv x11, x20
	jal __mulsf3
	mv x11, x10
	lui x10, %hi( -1089470464 )
	add x10, x10, %lo( -1089470464 )
	jal __subsf3
	jal __ieee754_expf
	mv x21, x10
	mv x10, x20
	mv x11, x9
	jal __subsf3
	mv x22, x10
	mv x10, x9
	mv x11, x20
	jal __addsf3
	mv x11, x10
	mv x10, x22
	jal __mulsf3
	mv x20, x10
	mv x10, x19
	mv x11, x18
	jal __divsf3
	mv x11, x10
	mv x10, x20
	jal __addsf3
	jal __ieee754_expf
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	mv x11, x9
	jal __divsf3
	mv x12, x10
	blt fp, x0, .LBB0_23
.LBB0_21:                               //  %if.then173
	lui x10, (1065353216>>12)&1048575
.LBB0_22:                               //  %cleanup
	mv x11, x12
	jal __subsf3
	jal x0, .LBB0_26
.LBB0_23:                               //  %if.else176
	lui x10, %hi( -1082130432 )
	add x11, x10, %lo( -1082130432 )
.LBB0_24:                               //  %cleanup
	mv x10, x12
.LBB0_25:                               //  %cleanup
	jal __addsf3
.LBB0_26:                               //  %cleanup
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
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
	.size	erff, .Lfunc_end0-erff
	.cfi_endproc
                                        //  -- End function
	.globl	erfcf                   //  -- Begin function erfcf
	.type	erfcf,@function
erfcf:                                  //  @erfcf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	and x19, x10, fp
	srl x10, x19, 23&31
	sltiu x11, x10, 255
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
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
	beq x0, x11, .LBB1_4
.LBB1_1:                                //  %if.end
	srl x11, x19, 19&31
	add x12, x0, 2026
	bltu x12, x11, .LBB1_7
.LBB1_2:                                //  %if.then3
	add x11, x0, 70
	bltu x11, x10, .LBB1_10
.LBB1_3:                                //  %if.then6
	lui x10, (1065353216>>12)&1048575
	mv x11, fp
	jal __subsf3
	jal x0, .LBB1_6
.LBB1_4:                                //  %if.then
	srl x10, fp, 30&31
	and x10, x10, 2
	jal __floatunsisf
	mv x9, x10
	lui x10, (1065353216>>12)&1048575
	mv x11, fp
	jal __divsf3
	mv x11, x9
.LBB1_5:                                //  %cleanup
	jal __addsf3
.LBB1_6:                                //  %cleanup
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
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
.LBB1_7:                                //  %if.end37
	srl x10, x19, 21&31
	add x11, x0, 508
	bltu x11, x10, .LBB1_12
.LBB1_8:                                //  %if.then40
	mv x10, fp
	jal fabsf
	lui x11, %hi( -1082130432 )
	add x11, x11, %lo( -1082130432 )
	jal __addsf3
	mv x9, x10
	lui x10, %hi( -1156712000 )
	add x11, x10, %lo( -1156712000 )
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1024545203 )
	add x11, x11, %lo( 1024545203 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1109189438 )
	add x11, x11, %lo( -1109189438 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1050869332 )
	add x11, x11, %lo( 1050869332 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1094807032 )
	add x11, x11, %lo( -1094807032 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1054107653 )
	add x11, x11, %lo( 1054107653 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1155871290 )
	add x11, x11, %lo( -1155871290 )
	jal __addsf3
	mv x18, x10
	lui x10, %hi( 1011112611 )
	add x11, x10, %lo( 1011112611 )
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1012887059 )
	add x11, x11, %lo( 1012887059 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1040265991 )
	add x11, x11, %lo( 1040265991 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1033050855 )
	add x11, x11, %lo( 1033050855 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1057642373 )
	add x11, x11, %lo( 1057642373 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1037693745 )
	add x11, x11, %lo( 1037693745 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __divsf3
	mv x12, x10
	blt fp, x0, .LBB1_18
.LBB1_9:                                //  %if.then68
	lui x10, %hi( 1042196436 )
	add x10, x10, %lo( 1042196436 )
	mv x11, x12
	jal __subsf3
	jal x0, .LBB1_6
.LBB1_10:                               //  %if.end7
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x9, x10
	lui x10, %hi( -1211672911 )
	add x11, x10, %lo( -1211672911 )
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1145236343 )
	add x11, x11, %lo( -1145236343 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1125559665 )
	add x11, x11, %lo( -1125559665 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1096389653 )
	add x11, x11, %lo( -1096389653 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1040414164 )
	add x11, x11, %lo( 1040414164 )
	jal __addsf3
	mv x18, x10
	lui x10, %hi( -1232805350 )
	add x11, x10, %lo( -1232805350 )
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 957017673 )
	add x11, x11, %lo( 957017673 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1000767766 )
	add x11, x11, %lo( 1000767766 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1032137315 )
	add x11, x11, %lo( 1032137315 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1053539278 )
	add x11, x11, %lo( 1053539278 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __divsf3
	mv x11, fp
	jal __mulsf3
	mv x9, x10
	lui x10, %hi( 1048575999 )
	add x10, x10, %lo( 1048575999 )
	blt x10, fp, .LBB1_15
.LBB1_11:                               //  %if.then29
	mv x10, x9
	mv x11, fp
	jal __addsf3
	mv x11, x10
	lui x10, (1065353216>>12)&1048575
	jal __subsf3
	jal x0, .LBB1_6
.LBB1_12:                               //  %if.end75
	add x11, x0, 526
	bltu x11, x10, .LBB1_16
.LBB1_13:                               //  %if.then78
	mv x10, fp
	jal fabsf
	mv x9, x10
	mv x11, x9
	jal __mulsf3
	mv x11, x10
	lui x10, (1065353216>>12)&1048575
	jal __divsf3
	mv x18, x10
	lui x10, %hi( 1077336940 )
	add x10, x10, %lo( 1077336940 )
	bltu x10, x19, .LBB1_19
.LBB1_14:                               //  %if.then84
	lui x10, %hi( -1055062146 )
	add x11, x10, %lo( -1055062146 )
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1029532885 )
	add x11, x11, %lo( -1029532885 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1019700505 )
	add x11, x11, %lo( -1019700505 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1021155956 )
	add x11, x11, %lo( -1021155956 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1032224681 )
	add x11, x11, %lo( -1032224681 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1054281694 )
	add x11, x11, %lo( -1054281694 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1087266633 )
	add x11, x11, %lo( -1087266633 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1138646893 )
	add x11, x11, %lo( -1138646893 )
	jal __addsf3
	mv x19, x10
	lui x10, %hi( -1116242025 )
	add x11, x10, %lo( -1116242025 )
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1087520636 )
	add x11, x11, %lo( 1087520636 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1121535263 )
	add x11, x11, %lo( 1121535263 )
	jal __addsf3
	mv x11, x10
	lui x10, %hi( 1100821966 )
	add x20, x10, %lo( 1100821966 )
	lui x10, %hi( 1124706403 )
	add x21, x10, %lo( 1124706403 )
	lui x10, %hi( 1138313327 )
	add x22, x10, %lo( 1138313327 )
	lui x10, %hi( 1143036105 )
	add x23, x10, %lo( 1143036105 )
	lui x10, %hi( 1138131211 )
	add x24, x10, %lo( 1138131211 )
	jal x0, .LBB1_24
.LBB1_15:                               //  %if.else
	lui x10, %hi( -1090519040 )
	add x11, x10, %lo( -1090519040 )
	mv x10, fp
	jal __addsf3
	mv x11, x9
	jal __addsf3
	mv x11, x10
	lui x10, (1056964608>>12)&1048575
	jal __subsf3
	jal x0, .LBB1_6
.LBB1_16:                               //  %if.else179
	bge x0, fp, .LBB1_22
.LBB1_17:                               //  %if.then182
	mv x10, x0
	jal __math_uflow
	jal __truncdfsf2
	jal x0, .LBB1_6
.LBB1_18:                               //  %if.else71
	lui x10, %hi( 1062753803 )
	add x11, x10, %lo( 1062753803 )
	mv x10, x12
	jal __addsf3
	lui x11, (1065353216>>12)&1048575
	jal x0, .LBB1_5
.LBB1_19:                               //  %if.else115
	bge fp, x0, .LBB1_23
.LBB1_20:                               //  %if.else115
	srl x10, x19, 22&31
	add x11, x0, 258
	bgeu x11, x10, .LBB1_23
.LBB1_22:
	lui x10, (1073741824>>12)&1048575
	jal x0, .LBB1_6
.LBB1_23:                               //  %if.end121
	lui x10, %hi( -1007566219 )
	add x11, x10, %lo( -1007566219 )
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -998235381 )
	add x11, x11, %lo( -998235381 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1004575679 )
	add x11, x11, %lo( -1004575679 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1021271318 )
	add x11, x11, %lo( -1021271318 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1047654325 )
	add x11, x11, %lo( -1047654325 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1085497900 )
	add x11, x11, %lo( -1085497900 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( -1138646894 )
	add x11, x11, %lo( -1138646894 )
	jal __addsf3
	mv x19, x10
	lui x10, %hi( -1045199086 )
	add x11, x10, %lo( -1045199086 )
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1139622823 )
	add x11, x11, %lo( 1139622823 )
	jal __addsf3
	mv x11, x10
	lui x10, %hi( 1106424921 )
	add x20, x10, %lo( 1106424921 )
	lui x10, %hi( 1134749041 )
	add x21, x10, %lo( 1134749041 )
	lui x10, %hi( 1153439577 )
	add x22, x10, %lo( 1153439577 )
	lui x10, %hi( 1162345915 )
	add x23, x10, %lo( 1162345915 )
	lui x10, %hi( 1159696590 )
	add x24, x10, %lo( 1159696590 )
.LBB1_24:                               //  %do.body149
	mv x10, x18
	jal __mulsf3
	mv x11, x24
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x23
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x22
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x21
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x20
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	mv x18, x10
	lui x10, %hi( -4096 )
	add x10, x10, %lo( -4096 )
	and x20, x10, x9
	mv x10, x20
	mv x11, x20
	jal __mulsf3
	mv x11, x10
	lui x10, %hi( -1089470464 )
	add x10, x10, %lo( -1089470464 )
	jal __subsf3
	jal __ieee754_expf
	mv x21, x10
	mv x10, x20
	mv x11, x9
	jal __subsf3
	mv x22, x10
	mv x10, x9
	mv x11, x20
	jal __addsf3
	mv x11, x10
	mv x10, x22
	jal __mulsf3
	mv x20, x10
	mv x10, x19
	mv x11, x18
	jal __divsf3
	mv x11, x10
	mv x10, x20
	jal __addsf3
	jal __ieee754_expf
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	mv x11, x9
	jal __divsf3
	mv x9, x10
	lui x10, (1073741824>>12)&1048575
	mv x11, x9
	jal __subsf3
	mv x11, x0
	blt x11, fp, .LBB1_26
.LBB1_25:                               //  %do.body149
	mv x9, x10
.LBB1_26:                               //  %do.body149
	mv x10, x9
	jal x0, .LBB1_6
.Lfunc_end1:
	.size	erfcf, .Lfunc_end1-erfcf
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_uflow

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
