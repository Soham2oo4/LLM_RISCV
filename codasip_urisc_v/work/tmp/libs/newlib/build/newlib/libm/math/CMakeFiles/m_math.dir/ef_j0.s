	.text
	.file	"ef_j0.c"
	.globl	__ieee754_j0f           //  -- Begin function __ieee754_j0f
	.type	__ieee754_j0f,@function
__ieee754_j0f:                          //  @__ieee754_j0f
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	lui x11, %hi( 2147483647 )
	add x11, x11, %lo( 2147483647 )
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	and x22, x11, x10
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	srl x20, x22, 23&31
	sltiu x11, x20, 255
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	beq x0, x11, .LBB0_1
.LBB0_3:                                //  %if.end
	jal fabsf
	mv fp, x10
	srl x10, x22, 30&31
	beq x0, x10, .LBB0_12
.LBB0_4:                                //  %if.then2
	mv x10, fp
	jal sinf
	mv x19, x10
	mv x10, fp
	jal cosf
	mv x20, x10
	mv x10, x19
	mv x11, x20
	jal __subsf3
	mv x9, x10
	mv x10, x19
	mv x11, x20
	jal __addsf3
	mv x18, x10
	srl x10, x22, 24&31
	add x11, x0, 126
	bltu x11, x10, .LBB0_9
.LBB0_5:                                //  %if.then6
	mv x10, fp
	mv x11, fp
	jal __addsf3
	jal cosf
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x21, x11, x10
	mv x10, x19
	mv x11, x20
	jal __mulsf3
	mv x11, x0
	jal __ltsf2
	bge x10, x0, .LBB0_7
.LBB0_6:                                //  %if.then12
	mv x10, x21
	mv x11, x9
	jal __divsf3
	mv x18, x10
	lui x10, %hi( 1543503873 )
	add x10, x10, %lo( 1543503873 )
	bgeu x22, x10, .LBB0_9
.LBB0_11:                               //  %if.else22
	mv x10, fp
	jal pzerof
	mv x19, x10
	mv x10, fp
	jal qzerof
	mv x20, x10
	mv x10, x18
	mv x11, x19
	jal __mulsf3
	mv x18, x10
	mv x10, x9
	mv x11, x20
	jal __mulsf3
	mv x11, x10
	mv x10, x18
	jal __subsf3
	lui x11, %hi( 1058041531 )
	add x11, x11, %lo( 1058041531 )
	jal x0, .LBB0_10
.LBB0_1:                                //  %if.then
	mv x11, x10
	jal __mulsf3
	mv x11, x10
	lui x10, (1065353216>>12)&1048575
	jal __divsf3
	jal x0, .LBB0_21
.LBB0_12:                               //  %if.end32
	lui x10, %hi( 1900671690 )
	add x11, x10, %lo( 1900671690 )
	mv x10, fp
	jal __addsf3
	srl x11, x22, 24&31
	add x12, x0, 56
	bltu x12, x11, .LBB0_17
.LBB0_13:                               //  %if.end32
	lui x9, (1065353216>>12)&1048575
	mv x11, x9
	jal __gtsf2
	bge x0, x10, .LBB0_17
.LBB0_14:                               //  %if.then37
	srl x10, x22, 25&31
	sltiu x10, x10, 25
	bltu x0, x10, .LBB0_22
.LBB0_15:                               //  %if.else40
	lui x10, %hi( -1098907648 )
	add x11, x10, %lo( -1098907648 )
	mv x10, fp
	jal __mulsf3
	mv x11, x10
	mv x10, fp
	jal x0, .LBB0_16
.LBB0_17:                               //  %if.end45
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x9, x10
	lui x10, %hi( -1315000516 )
	add x11, x10, %lo( -1315000516 )
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 905285256 )
	add x11, x11, %lo( 905285256 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1186515666 )
	add x11, x11, %lo( -1186515666 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, (1015021568>>12)&1048575
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	mv x18, x10
	lui x10, %hi( 815810024 )
	add x11, x10, %lo( 815810024 )
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 889838246 )
	add x11, x11, %lo( 889838246 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 955594391 )
	add x11, x11, %lo( 955594391 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1015015236 )
	add x11, x11, %lo( 1015015236 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	mv x19, x10
	add x10, x0, 126
	bltu x10, x20, .LBB0_19
.LBB0_18:                               //  %if.then63
	mv x10, x18
	mv x11, x19
	jal __divsf3
	lui x11, %hi( -1098907648 )
	add x11, x11, %lo( -1098907648 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
.LBB0_16:                               //  %cleanup
	jal __mulsf3
	lui x11, (1065353216>>12)&1048575
	jal x0, .LBB0_20
.LBB0_7:                                //  %if.else
	mv x10, x21
	mv x11, x18
	jal __divsf3
	mv x9, x10
	lui x10, %hi( 1543503873 )
	add x10, x10, %lo( 1543503873 )
	bltu x22, x10, .LBB0_11
.LBB0_9:                                //  %if.then18
	lui x10, %hi( 1058041531 )
	add x11, x10, %lo( 1058041531 )
	mv x10, x18
.LBB0_10:                               //  %cleanup
	jal __mulsf3
	mv x9, x10
	mv x10, fp
	jal __ieee754_sqrtf
	mv x11, x10
	mv x10, x9
	jal __divsf3
	jal x0, .LBB0_21
.LBB0_19:                               //  %if.else68
	lui x11, (1056964608>>12)&1048575
	mv x10, fp
	jal __mulsf3
	lui x20, (1065353216>>12)&1048575
	mv x11, x20
	mv fp, x10
	jal __addsf3
	mv x21, x10
	mv x10, x20
	mv x11, fp
	jal __subsf3
	mv x11, x10
	mv x10, x21
	jal __mulsf3
	mv fp, x10
	mv x10, x18
	mv x11, x19
	jal __divsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	mv x11, x10
	mv x10, fp
.LBB0_20:                               //  %cleanup
	jal __addsf3
.LBB0_21:                               //  %cleanup
	mv x9, x10
.LBB0_22:                               //  %cleanup
	mv x10, x9
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
	.size	__ieee754_j0f, .Lfunc_end0-__ieee754_j0f
	.cfi_endproc
                                        //  -- End function
	.type	pzerof,@function        //  -- Begin function pzerof
pzerof:                                 //  @pzerof
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	lui x11, %hi( 2147483647 )
	add x11, x11, %lo( 2147483647 )
	and x11, x11, x10
	srl x12, x11, 24&31
	add x13, x0, 64
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	bgeu x13, x12, .LBB1_2
.LBB1_1:
	lui x11, %hi( pR8 )
	add x18, x11, %lo( pR8 )
	lui x11, %hi( pS8 )
	add x19, x11, %lo( pS8 )
	jal x0, .LBB1_7
.LBB1_2:                                //  %if.else
	lui x12, %hi( 1089936471 )
	add x12, x12, %lo( 1089936471 )
	bgeu x12, x11, .LBB1_4
.LBB1_3:
	lui x11, %hi( pR5 )
	add x18, x11, %lo( pR5 )
	lui x11, %hi( pS5 )
	add x19, x11, %lo( pS5 )
	jal x0, .LBB1_7
.LBB1_4:                                //  %if.else3
	lui x12, %hi( 1077336935 )
	add x12, x12, %lo( 1077336935 )
	bltu x12, x11, .LBB1_5
.LBB1_6:                                //  %if.else3
	lui x11, %hi( pR2 )
	add x18, x11, %lo( pR2 )
	lui x11, %hi( pS2 )
	add x19, x11, %lo( pS2 )
	jal x0, .LBB1_7
.LBB1_5:
	lui x11, %hi( pR3 )
	add x18, x11, %lo( pR3 )
	lui x11, %hi( pS3 )
	add x19, x11, %lo( pS3 )
.LBB1_7:                                //  %if.end8
	mv x11, x10
	jal __mulsf3
	lui fp, (1065353216>>12)&1048575
	mv x11, x10
	mv x10, fp
	jal __divsf3
	lw x11, 20 ( x18 )
	mv x9, x10
	jal __mulsf3
	mv x11, x10
	lw x10, 16 ( x18 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	mv x11, x10
	lw x10, 12 ( x18 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	mv x11, x10
	lw x10, 8 ( x18 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	mv x11, x10
	lw x10, 4 ( x18 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	mv x11, x10
	lw x10, 0 ( x18 )
	jal __addsf3
	lw x11, 16 ( x19 )
	mv x18, x10
	mv x10, x9
	jal __mulsf3
	mv x11, x10
	lw x10, 12 ( x19 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	mv x11, x10
	lw x10, 8 ( x19 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	mv x11, x10
	lw x10, 4 ( x19 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	mv x11, x10
	lw x10, 0 ( x19 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	mv x11, fp
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __divsf3
	mv x11, fp
	jal __addsf3
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	pzerof, .Lfunc_end1-pzerof
	.cfi_endproc
                                        //  -- End function
	.type	qzerof,@function        //  -- Begin function qzerof
qzerof:                                 //  @qzerof
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
	and x10, x10, fp
	srl x11, x10, 24&31
	add x12, x0, 64
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	bgeu x12, x11, .LBB2_2
.LBB2_1:
	lui x10, %hi( qR8 )
	add x19, x10, %lo( qR8 )
	lui x10, %hi( qS8 )
	add x20, x10, %lo( qS8 )
	jal x0, .LBB2_7
.LBB2_2:                                //  %if.else
	lui x11, %hi( 1089936471 )
	add x11, x11, %lo( 1089936471 )
	bgeu x11, x10, .LBB2_4
.LBB2_3:
	lui x10, %hi( qR5 )
	add x19, x10, %lo( qR5 )
	lui x10, %hi( qS5 )
	add x20, x10, %lo( qS5 )
	jal x0, .LBB2_7
.LBB2_4:                                //  %if.else3
	lui x11, %hi( 1077336935 )
	add x11, x11, %lo( 1077336935 )
	bltu x11, x10, .LBB2_5
.LBB2_6:                                //  %if.else3
	lui x10, %hi( qR2 )
	add x19, x10, %lo( qR2 )
	lui x10, %hi( qS2 )
	add x20, x10, %lo( qS2 )
	jal x0, .LBB2_7
.LBB2_5:
	lui x10, %hi( qR3 )
	add x19, x10, %lo( qR3 )
	lui x10, %hi( qS3 )
	add x20, x10, %lo( qS3 )
.LBB2_7:                                //  %if.end8
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	lui x9, (1065353216>>12)&1048575
	mv x11, x10
	mv x10, x9
	jal __divsf3
	lw x11, 20 ( x19 )
	mv x18, x10
	jal __mulsf3
	mv x11, x10
	lw x10, 16 ( x19 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x10
	lw x10, 12 ( x19 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x10
	lw x10, 8 ( x19 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x10
	lw x10, 4 ( x19 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x10
	lw x10, 0 ( x19 )
	jal __addsf3
	lw x11, 20 ( x20 )
	mv x19, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x10
	lw x10, 16 ( x20 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x10
	lw x10, 12 ( x20 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x10
	lw x10, 8 ( x20 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x10
	lw x10, 4 ( x20 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x10
	lw x10, 0 ( x20 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, x9
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __divsf3
	lui x11, %hi( -1107296256 )
	add x11, x11, %lo( -1107296256 )
	jal __addsf3
	mv x11, fp
	jal __divsf3
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	qzerof, .Lfunc_end2-qzerof
	.cfi_endproc
                                        //  -- End function
	.globl	__ieee754_y0f           //  -- Begin function __ieee754_y0f
	.type	__ieee754_y0f,@function
__ieee754_y0f:                          //  @__ieee754_y0f
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	and x22, x10, fp
	srl x10, x22, 23&31
	sltiu x10, x10, 255
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	beq x0, x10, .LBB3_8
.LBB3_1:                                //  %if.end
	beq x0, x22, .LBB3_9
.LBB3_2:                                //  %if.end3
	blt fp, x0, .LBB3_10
.LBB3_3:                                //  %if.end6
	srl x10, x22, 30&31
	beq x0, x10, .LBB3_11
.LBB3_4:                                //  %if.then8
	mv x10, fp
	jal sinf
	mv x19, x10
	mv x10, fp
	jal cosf
	mv x20, x10
	mv x10, x19
	mv x11, x20
	jal __subsf3
	mv x9, x10
	mv x10, x19
	mv x11, x20
	jal __addsf3
	mv x18, x10
	srl x10, x22, 24&31
	add x11, x0, 126
	bltu x11, x10, .LBB3_16
.LBB3_5:                                //  %if.then12
	mv x10, fp
	mv x11, fp
	jal __addsf3
	jal cosf
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x21, x11, x10
	mv x10, x19
	mv x11, x20
	jal __mulsf3
	mv x11, x0
	jal __ltsf2
	bge x10, x0, .LBB3_15
.LBB3_6:                                //  %if.then18
	mv x10, x21
	mv x11, x9
	jal __divsf3
	mv x18, x10
	lui x10, %hi( 1543503873 )
	add x10, x10, %lo( 1543503873 )
	bgeu x22, x10, .LBB3_16
.LBB3_7:                                //  %if.else28
	mv x10, fp
	jal pzerof
	mv x19, x10
	mv x10, fp
	jal qzerof
	mv x20, x10
	mv x10, x9
	mv x11, x19
	jal __mulsf3
	mv x9, x10
	mv x10, x18
	mv x11, x20
	jal __mulsf3
	mv x11, x10
	mv x10, x9
	jal __addsf3
	lui x11, %hi( 1058041531 )
	add x11, x11, %lo( 1058041531 )
	jal x0, .LBB3_17
.LBB3_8:                                //  %if.then
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x11, fp
	jal __addsf3
	mv x11, x10
	lui x10, (1065353216>>12)&1048575
.LBB3_18:                               //  %cleanup
	jal __divsf3
	jal x0, .LBB3_19
.LBB3_9:
	lui x10, %hi( -8388608 )
	add x10, x10, %lo( -8388608 )
	jal x0, .LBB3_19
.LBB3_10:
	lui x10, (2143289344>>12)&1048575
	jal x0, .LBB3_19
.LBB3_11:                               //  %if.end38
	lui x10, (964689920>>12)&1048575
	bltu x10, x22, .LBB3_13
.LBB3_12:                               //  %if.then40
	mv x10, fp
	jal __ieee754_logf
	lui x11, %hi( 1059256707 )
	add x11, x11, %lo( 1059256707 )
	jal __mulsf3
	lui x11, %hi( -1114167627 )
	add x11, x11, %lo( -1114167627 )
	jal x0, .LBB3_14
.LBB3_13:                               //  %if.end44
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x9, x10
	lui x10, %hi( -1372642837 )
	add x11, x10, %lo( -1372642837 )
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 849871546 )
	add x11, x11, %lo( 849871546 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1233128132 )
	add x11, x11, %lo( -1233128132 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 968239721 )
	add x11, x11, %lo( 968239721 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1134401722 )
	add x11, x11, %lo( -1134401722 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1043654669 )
	add x11, x11, %lo( 1043654669 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1114167627 )
	add x11, x11, %lo( -1114167627 )
	jal __addsf3
	mv x18, x10
	lui x10, %hi( 804421826 )
	add x11, x10, %lo( 804421826 )
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 881533292 )
	add x11, x11, %lo( 881533292 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 949970400 )
	add x11, x11, %lo( 949970400 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1011913605 )
	add x11, x11, %lo( 1011913605 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __divsf3
	mv x9, x10
	mv x10, fp
	jal __ieee754_j0f
	mv x18, x10
	mv x10, fp
	jal __ieee754_logf
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	lui x11, %hi( 1059256707 )
	add x11, x11, %lo( 1059256707 )
	jal __mulsf3
	mv x11, x10
	mv x10, x9
.LBB3_14:                               //  %cleanup
	jal __addsf3
.LBB3_19:                               //  %cleanup
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
.LBB3_15:                               //  %if.else
	mv x10, x21
	mv x11, x18
	jal __divsf3
	mv x9, x10
	lui x10, %hi( 1543503873 )
	add x10, x10, %lo( 1543503873 )
	bltu x22, x10, .LBB3_7
.LBB3_16:                               //  %if.then24
	lui x10, %hi( 1058041531 )
	add x11, x10, %lo( 1058041531 )
	mv x10, x9
.LBB3_17:                               //  %cleanup
	jal __mulsf3
	mv x9, x10
	mv x10, fp
	jal __ieee754_sqrtf
	mv x11, x10
	mv x10, x9
	jal x0, .LBB3_18
.Lfunc_end3:
	.size	__ieee754_y0f, .Lfunc_end3-__ieee754_y0f
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	pR8,@object             //  @pR8
	.section	.rodata,"a",@progbits
	.p2align	2
pR8:
	.long	0                       //  float 0
	.long	3180331008              //  float -0.0703125
	.long	3238088326              //  float -8.08167076
	.long	3279980564              //  float -257.06311
	.long	3306902390              //  float -2485.21631
	.long	3315869786              //  float -5253.04395
	.size	pR8, 24

	.address_space	0
	.type	pS8,@object             //  @pS8
	.p2align	2
pS8:
	.long	1122570648              //  float 116.534363
	.long	1164942315              //  float 3833.74487
	.long	1193186779              //  float 40597.8555
	.long	1206126716              //  float 116752.969
	.long	1194986426              //  float 47627.7266
	.size	pS8, 20

	.address_space	0
	.type	pR5,@object             //  @pR5
	.p2align	2
pR5:
	.long	2907227530              //  float -1.14125463E-11
	.long	3180331007              //  float -0.0703124925
	.long	3229948808              //  float -4.15961075
	.long	3263650171              //  float -67.6747665
	.long	3282410907              //  float -331.231293
	.long	3282909049              //  float -346.43338
	.size	pR5, 24

	.address_space	0
	.type	pS5,@object             //  @pS5
	.p2align	2
pS5:
	.long	1114833928              //  float 60.7539368
	.long	1149462547              //  float 1051.25232
	.long	1169872836              //  float 5978.9707
	.long	1175872968              //  float 9625.44531
	.long	1159094510              //  float 2406.05811
	.size	pS5, 20

	.address_space	0
	.type	pR3,@object             //  @pR3
	.p2align	2
pR3:
	.long	2972649499              //  float -2.54704591E-9
	.long	3180330936              //  float -0.0703119636
	.long	3222941077              //  float -2.40903211
	.long	3249519186              //  float -21.9659767
	.long	3261616402              //  float -58.0791702
	.long	3254490469              //  float -31.4479465
	.size	pR3, 24

	.address_space	0
	.type	pS3,@object             //  @pS3
	.p2align	2
pS3:
	.long	1108307092              //  float 35.8560333
	.long	1135919562              //  float 361.513977
	.long	1150628723              //  float 1193.60779
	.long	1150091238              //  float 1127.99683
	.long	1127060664              //  float 173.580933
	.size	pS3, 20

	.address_space	0
	.type	pR2,@object             //  @pR2
	.p2align	2
pR2:
	.long	3015612599              //  float -8.87534312E-8
	.long	3180329746              //  float -0.0703030974
	.long	3216617932              //  float -1.45073843
	.long	3237238687              //  float -7.63569593
	.long	3241350966              //  float -11.1931667
	.long	3226399757              //  float -3.23364568
	.size	pR2, 24

	.address_space	0
	.type	pS2,@object             //  @pS2
	.p2align	2
pS2:
	.long	1102168877              //  float 22.2203007
	.long	1124611312              //  float 136.206787
	.long	1132936242              //  float 270.470276
	.long	1125769242              //  float 153.875397
	.long	1097500058              //  float 14.6576176
	.size	pS2, 20

	.address_space	0
	.type	qR8,@object             //  @qR8
	.p2align	2
qR8:
	.long	0                       //  float 0
	.long	1033240576              //  float 0.0732421875
	.long	1094470291              //  float 11.7682066
	.long	1141599001              //  float 557.673401
	.long	1175088330              //  float 8859.19726
	.long	1192269472              //  float 37014.625
	.size	qR8, 24

	.address_space	0
	.type	qS8,@object             //  @qS8
	.p2align	2
qS8:
	.long	1126418090              //  float 163.776031
	.long	1174213314              //  float 8098.34472
	.long	1208693395              //  float 142538.297
	.long	1229201108              //  float 803309.25
	.long	1229796185              //  float 840501.563
	.long	3366447977              //  float -343899.281
	.size	qS8, 24

	.address_space	0
	.type	qR5,@object             //  @qR5
	.p2align	2
qR5:
	.long	765586553               //  float 1.84085958E-11
	.long	1033240575              //  float 0.07324218
	.long	1085980038              //  float 5.83563519
	.long	1124539536              //  float 135.111572
	.long	1149265869              //  float 1027.24377
	.long	1157152587              //  float 1989.97791
	.size	qR5, 24

	.address_space	0
	.type	qS5,@object             //  @qS5
	.p2align	2
qS5:
	.long	1118145952              //  float 82.7766113
	.long	1157750023              //  float 2077.81421
	.long	1184054932              //  float 18847.2891
	.long	1197322013              //  float 56751.1133
	.long	1192003777              //  float 35976.7539
	.long	3316077246              //  float -5354.34277
	.size	qS5, 24

	.address_space	0
	.type	qR3,@object             //  @qR3
	.p2align	2
qR3:
	.long	831940635               //  float 4.37740999E-9
	.long	1033240432              //  float 0.0732411146
	.long	1079379939              //  float 3.34423137
	.long	1110080709              //  float 42.6218452
	.long	1126878943              //  float 170.80809
	.long	1126611940              //  float 166.733948
	.size	qR3, 24

	.address_space	0
	.type	qS3,@object             //  @qS3
	.p2align	2
qS3:
	.long	1111689494              //  float 48.758873
	.long	1144089628              //  float 709.689208
	.long	1164411487              //  float 3704.14819
	.long	1170858855              //  float 6460.42529
	.long	1159546199              //  float 2516.33374
	.long	3272949593              //  float -149.247452
	.size	qS3, 24

	.address_space	0
	.type	qR2,@object             //  @qR2
	.p2align	2
qR2:
	.long	874613211               //  float 1.5044445E-7
	.long	1033238058              //  float 0.0732234269
	.long	1073726655              //  float 1.99819171
	.long	1097330173              //  float 14.4956026
	.long	1107121265              //  float 31.6662312
	.long	1099040140              //  float 16.2527084
	.size	qR2, 24

	.address_space	0
	.type	qS2,@object             //  @qS2
	.p2align	2
qS2:
	.long	1106439352              //  float 30.3655853
	.long	1132899471              //  float 269.348114
	.long	1146303017              //  float 844.783752
	.long	1146928101              //  float 882.935852
	.long	1129622168              //  float 212.666382
	.long	3232363352              //  float -5.31095505
	.size	qS2, 24


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
