	.text
	.file	"ef_j1.c"
	.globl	__ieee754_j1f           //  -- Begin function __ieee754_j1f
	.type	__ieee754_j1f,@function
__ieee754_j1f:                          //  @__ieee754_j1f
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	and x23, x10, fp
	srl x10, x23, 23&31
	sltiu x10, x10, 255
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
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
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %if.end
	mv x10, fp
	jal fabsf
	mv x9, x10
	srl x10, x23, 30&31
	beq x0, x10, .LBB0_12
.LBB0_3:                                //  %if.then2
	mv x10, x9
	jal sinf
	mv x20, x10
	mv x10, x9
	jal cosf
	mv x21, x10
	lui x10, %hi( -2147483648 )
	add x22, x10, %lo( -2147483648 )
	xor x10, x22, x20
	mv x11, x21
	jal __subsf3
	mv x19, x10
	mv x10, x20
	mv x11, x21
	jal __subsf3
	mv x18, x10
	srl x10, x23, 24&31
	add x11, x0, 126
	bltu x11, x10, .LBB0_9
.LBB0_4:                                //  %if.then8
	mv x10, x20
	mv x11, x21
	jal __mulsf3
	mv x11, x0
	jal __gtsf2
	mv x20, x10
	mv x10, x9
	mv x11, x9
	jal __addsf3
	jal cosf
	bge x0, x20, .LBB0_6
.LBB0_5:                                //  %if.then11
	mv x11, x19
	jal __divsf3
	mv x18, x10
	lui x10, (1543503872>>12)&1048575
	bgeu x10, x23, .LBB0_8
	jal x0, .LBB0_9
.LBB0_1:                                //  %if.then
	lui x10, (1065353216>>12)&1048575
	mv x11, fp
	jal __divsf3
	jal x0, .LBB0_11
.LBB0_12:                               //  %if.end35
	lui x10, %hi( 1900671690 )
	add x11, x10, %lo( 1900671690 )
	mv x10, fp
	jal __addsf3
	lui x11, (1065353216>>12)&1048575
	jal __gtsf2
	bge x0, x10, .LBB0_15
.LBB0_13:                               //  %if.end35
	srl x10, x23, 25&31
	add x11, x0, 24
	bltu x11, x10, .LBB0_15
.LBB0_14:                               //  %if.then40
	lui x11, (1056964608>>12)&1048575
	mv x10, fp
	jal __mulsf3
	jal x0, .LBB0_11
.LBB0_15:                               //  %if.end43
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x9, x10
	lui x10, %hi( 861231058 )
	add x11, x10, %lo( 861231058 )
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1215943114 )
	add x11, x11, %lo( -1215943114 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 985165053 )
	add x11, x11, %lo( 985165053 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1115684864 )
	add x11, x11, %lo( -1115684864 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	mv x18, x10
	lui x10, %hi( 760829566 )
	add x11, x10, %lo( 760829566 )
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 833446982 )
	add x11, x11, %lo( 833446982 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 899547074 )
	add x11, x11, %lo( 899547074 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 960690870 )
	add x11, x11, %lo( 960690870 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1016916057 )
	add x11, x11, %lo( 1016916057 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, (1065353216>>12)&1048575
	jal __addsf3
	mv x9, x10
	mv x10, x18
	mv x11, fp
	jal __mulsf3
	mv x18, x10
	lui x11, (1056964608>>12)&1048575
	mv x10, fp
	jal __mulsf3
	mv fp, x10
	mv x10, x18
	mv x11, x9
	jal __divsf3
	mv x11, x10
	mv x10, fp
	jal __addsf3
	jal x0, .LBB0_11
.LBB0_6:                                //  %if.else
	mv x11, x18
	jal __divsf3
	mv x19, x10
	lui x10, (1543503872>>12)&1048575
	bltu x10, x23, .LBB0_9
.LBB0_8:                                //  %if.else21
	mv x10, x9
	jal ponef
	mv x20, x10
	mv x10, x9
	jal qonef
	mv x21, x10
	mv x10, x18
	mv x11, x20
	jal __mulsf3
	mv x18, x10
	mv x10, x19
	mv x11, x21
	jal __mulsf3
	mv x11, x10
	mv x10, x18
	jal __subsf3
	mv x18, x10
.LBB0_9:                                //  %if.end30
	lui x10, %hi( 1058041531 )
	add x11, x10, %lo( 1058041531 )
	mv x10, x18
	jal __mulsf3
	mv x18, x10
	mv x10, x9
	jal __ieee754_sqrtf
	mv x11, x10
	mv x10, x18
	jal __divsf3
	mv x11, x0
	bge fp, x11, .LBB0_11
.LBB0_10:
	xor x10, x22, x10
.LBB0_11:                               //  %if.end30
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
	.size	__ieee754_j1f, .Lfunc_end0-__ieee754_j1f
	.cfi_endproc
                                        //  -- End function
	.type	ponef,@function         //  -- Begin function ponef
ponef:                                  //  @ponef
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
	lui x11, %hi( pr8 )
	add x18, x11, %lo( pr8 )
	lui x11, %hi( ps8 )
	add x19, x11, %lo( ps8 )
	jal x0, .LBB1_7
.LBB1_2:                                //  %if.else
	lui x12, %hi( 1089936471 )
	add x12, x12, %lo( 1089936471 )
	bgeu x12, x11, .LBB1_4
.LBB1_3:
	lui x11, %hi( pr5 )
	add x18, x11, %lo( pr5 )
	lui x11, %hi( ps5 )
	add x19, x11, %lo( ps5 )
	jal x0, .LBB1_7
.LBB1_4:                                //  %if.else3
	lui x12, %hi( 1077336935 )
	add x12, x12, %lo( 1077336935 )
	bltu x12, x11, .LBB1_5
.LBB1_6:                                //  %if.else3
	lui x11, %hi( pr2 )
	add x18, x11, %lo( pr2 )
	lui x11, %hi( ps2 )
	add x19, x11, %lo( ps2 )
	jal x0, .LBB1_7
.LBB1_5:
	lui x11, %hi( pr3 )
	add x18, x11, %lo( pr3 )
	lui x11, %hi( ps3 )
	add x19, x11, %lo( ps3 )
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
	.size	ponef, .Lfunc_end1-ponef
	.cfi_endproc
                                        //  -- End function
	.type	qonef,@function         //  -- Begin function qonef
qonef:                                  //  @qonef
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv fp, x10
	lui x10, (2145386496>>12)&1048575
	and x10, x10, fp
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	srl x20, x10, 21&31
	add x21, x0, 512
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	bltu x21, x20, .LBB2_1
.LBB2_2:                                //  %entry
	lui x10, %hi( qr2 )
	add x19, x10, %lo( qr2 )
	jal x0, .LBB2_3
.LBB2_1:
	lui x10, %hi( qr8 )
	add x19, x10, %lo( qr8 )
.LBB2_3:                                //  %entry
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
	mv x19, x10
	bltu x21, x20, .LBB2_4
.LBB2_5:                                //  %entry
	lui x10, %hi( qs2 )
	add x20, x10, %lo( qs2 )
	jal x0, .LBB2_6
.LBB2_4:
	lui x10, %hi( qs8 )
	add x20, x10, %lo( qs8 )
.LBB2_6:                                //  %entry
	lw x11, 20 ( x20 )
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
	lui x11, (1052770304>>12)&1048575
	jal __addsf3
	mv x11, fp
	jal __divsf3
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
.Lfunc_end2:
	.size	qonef, .Lfunc_end2-qonef
	.cfi_endproc
                                        //  -- End function
	.globl	__ieee754_y1f           //  -- Begin function __ieee754_y1f
	.type	__ieee754_y1f,@function
__ieee754_y1f:                          //  @__ieee754_y1f
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
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	and x21, x10, fp
	srl x10, x21, 23&31
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
	beq x0, x10, .LBB3_8
.LBB3_1:                                //  %if.end
	beq x0, x21, .LBB3_9
.LBB3_2:                                //  %if.end3
	blt fp, x0, .LBB3_10
.LBB3_3:                                //  %if.end6
	srl x10, x21, 30&31
	beq x0, x10, .LBB3_11
.LBB3_4:                                //  %if.then8
	mv x10, fp
	jal sinf
	mv x19, x10
	mv x10, fp
	jal cosf
	mv x20, x10
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x10, x10, x19
	mv x11, x20
	jal __subsf3
	mv x9, x10
	mv x10, x19
	mv x11, x20
	jal __subsf3
	mv x18, x10
	srl x10, x21, 24&31
	add x11, x0, 126
	bltu x11, x10, .LBB3_15
.LBB3_5:                                //  %if.then13
	mv x10, x19
	mv x11, x20
	jal __mulsf3
	mv x11, x0
	jal __gtsf2
	mv x19, x10
	mv x10, fp
	mv x11, fp
	jal __addsf3
	jal cosf
	bge x0, x19, .LBB3_14
.LBB3_6:                                //  %if.then18
	mv x11, x9
	jal __divsf3
	mv x18, x10
	lui x10, %hi( 1543503873 )
	add x10, x10, %lo( 1543503873 )
	bgeu x21, x10, .LBB3_15
.LBB3_7:                                //  %if.else28
	mv x10, fp
	jal ponef
	mv x19, x10
	mv x10, fp
	jal qonef
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
	jal x0, .LBB3_16
.LBB3_8:                                //  %if.then
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x11, fp
	jal __addsf3
	mv x11, x10
	lui x10, (1065353216>>12)&1048575
.LBB3_17:                               //  %cleanup
	jal __divsf3
	jal x0, .LBB3_18
.LBB3_9:
	lui x10, %hi( -8388608 )
	add x10, x10, %lo( -8388608 )
	jal x0, .LBB3_18
.LBB3_10:
	lui x10, (2143289344>>12)&1048575
	jal x0, .LBB3_18
.LBB3_11:                               //  %if.end38
	lui x10, (612368384>>12)&1048575
	bltu x10, x21, .LBB3_13
.LBB3_12:                               //  %if.then40
	lui x10, %hi( -1088226941 )
	add x10, x10, %lo( -1088226941 )
	mv x11, fp
	jal x0, .LBB3_17
.LBB3_13:                               //  %if.end42
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x9, x10
	lui x10, %hi( -1278910461 )
	add x11, x10, %lo( -1278910461 )
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 935680028 )
	add x11, x11, %lo( 935680028 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1157976278 )
	add x11, x11, %lo( -1157976278 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1028562492 )
	add x11, x11, %lo( 1028562492 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( -1102527695 )
	add x11, x11, %lo( -1102527695 )
	jal __addsf3
	mv x18, x10
	lui x10, %hi( 764576207 )
	add x11, x10, %lo( 764576207 )
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 836106475 )
	add x11, x11, %lo( 836106475 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 901120724 )
	add x11, x11, %lo( 901120724 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 961832011 )
	add x11, x11, %lo( 961832011 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x11, %hi( 1017325674 )
	add x11, x11, %lo( 1017325674 )
	jal __addsf3
	mv x11, x10
	mv x10, x9
	jal __mulsf3
	lui x9, (1065353216>>12)&1048575
	mv x11, x9
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __divsf3
	mv x11, fp
	jal __mulsf3
	mv x18, x10
	mv x10, fp
	jal __ieee754_j1f
	mv x19, x10
	mv x10, fp
	jal __ieee754_logf
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	mv x19, x10
	mv x10, x9
	mv x11, fp
	jal __divsf3
	mv x11, x10
	mv x10, x19
	jal __subsf3
	lui x11, %hi( 1059256707 )
	add x11, x11, %lo( 1059256707 )
	jal __mulsf3
	mv x11, x10
	mv x10, x18
	jal __addsf3
.LBB3_18:                               //  %cleanup
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
.LBB3_14:                               //  %if.else
	mv x11, x18
	jal __divsf3
	mv x9, x10
	lui x10, %hi( 1543503873 )
	add x10, x10, %lo( 1543503873 )
	bltu x21, x10, .LBB3_7
.LBB3_15:                               //  %if.then24
	lui x10, %hi( 1058041531 )
	add x11, x10, %lo( 1058041531 )
	mv x10, x9
.LBB3_16:                               //  %cleanup
	jal __mulsf3
	mv x9, x10
	mv x10, fp
	jal __ieee754_sqrtf
	mv x11, x10
	mv x10, x9
	jal x0, .LBB3_17
.Lfunc_end3:
	.size	__ieee754_y1f, .Lfunc_end3-__ieee754_y1f
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	pr8,@object             //  @pr8
	.section	.rodata,"a",@progbits
	.p2align	2
pr8:
	.long	0                       //  float 0
	.long	1039138816              //  float 0.1171875
	.long	1096013034              //  float 13.239481
	.long	1137575587              //  float 412.051849
	.long	1165110253              //  float 3874.74536
	.long	1173836758              //  float 7914.47949
	.size	pr8, 24

	.address_space	0
	.type	ps8,@object             //  @ps8
	.p2align	2
ps8:
	.long	1122265644              //  float 114.207367
	.long	1164193509              //  float 3650.93091
	.long	1192254517              //  float 36956.207
	.long	1203675494              //  float 97602.7968
	.long	1190176907              //  float 30804.2715
	.size	ps8, 20

	.address_space	0
	.type	pr5,@object             //  @pr5
	.p2align	2
pr5:
	.long	761803583               //  float 1.31990521E-11
	.long	1039138815              //  float 0.117187493
	.long	1088008227              //  float 6.80275106
	.long	1121492426              //  float 108.308182
	.long	1140943031              //  float 517.636169
	.long	1141124550              //  float 528.71521
	.size	pr5, 24

	.address_space	0
	.type	ps5,@object             //  @ps5
	.p2align	2
ps5:
	.long	1114447701              //  float 59.2805977
	.long	1148705201              //  float 991.401428
	.long	1168591395              //  float 5353.26709
	.long	1173693830              //  float 7844.69042
	.long	1153171840              //  float 1504.04688
	.size	ps5, 20

	.address_space	0
	.type	pr3,@object             //  @pr3
	.p2align	2
pr3:
	.long	827318541               //  float 3.02503911E-9
	.long	1039138731              //  float 0.117186867
	.long	1081849319              //  float 3.93297744
	.long	1108113989              //  float 35.1194038
	.long	1119231018              //  float 91.0550079
	.long	1111637116              //  float 48.5590668
	.size	pr3, 24

	.address_space	0
	.type	ps3,@object             //  @ps3
	.p2align	2
ps3:
	.long	1108027981              //  float 34.7913094
	.long	1135108504              //  float 336.762451
	.long	1149426659              //  float 1046.87146
	.long	1147057133              //  float 890.81134
	.long	1120899948              //  float 103.787933
	.size	ps3, 20

	.address_space	0
	.type	pr2,@object             //  @pr2
	.p2align	2
pr2:
	.long	870796968               //  float 1.07710832E-7
	.long	1039137302              //  float 0.11717622
	.long	1075287488              //  float 2.36851501
	.long	1094967740              //  float 12.2426109
	.long	1099795777              //  float 17.6939716
	.long	1084381773              //  float 5.07352304
	.size	pr2, 24

	.address_space	0
	.type	ps2,@object             //  @ps2
	.p2align	2
ps2:
	.long	1101757932              //  float 21.4364853
	.long	1123718297              //  float 125.29023
	.long	1130907335              //  float 232.276474
	.long	1122720727              //  float 117.679375
	.long	1090901392              //  float 8.36463928
	.size	ps2, 20

	.address_space	0
	.type	qr8,@object             //  @qr8
	.p2align	2
qr8:
	.long	0                       //  float 0
	.long	3184656384              //  float -0.102539063
	.long	3246533773              //  float -16.2717533
	.long	3292391043              //  float -759.601745
	.long	3325634362              //  float -11849.8066
	.long	3342677635              //  float -48438.5117
	.size	qr8, 24

	.address_space	0
	.type	qs8,@object             //  @qs8
	.p2align	2
qs8:
	.long	1126262071              //  float 161.39537
	.long	1173654295              //  float 7825.38623
	.long	1208138966              //  float 133875.344
	.long	1227862684              //  float 719657.75
	.long	1227013780              //  float 666601.25
	.long	3364866888              //  float -294490.25
	.size	qs8, 24

	.address_space	0
	.type	qr2,@object             //  @qr2
	.p2align	2
qr2:
	.long	3024062770              //  float -1.78381725E-7
	.long	3184653429              //  float -0.102517046
	.long	3224380451              //  float -2.75220561
	.long	3248312086              //  float -19.6636162
	.long	3257486623              //  float -42.3253136
	.long	3249207730              //  float -21.3719215
	.size	qr2, 24

	.address_space	0
	.type	qs2,@object             //  @qs2
	.p2align	2
qs2:
	.long	1106003028              //  float 29.5333633
	.long	1132264263              //  float 252.981552
	.long	1144873006              //  float 757.502808
	.long	1144576298              //  float 739.393188
	.long	1125905138              //  float 155.949005
	.long	3231626295              //  float -4.95949888
	.size	qs2, 24


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
