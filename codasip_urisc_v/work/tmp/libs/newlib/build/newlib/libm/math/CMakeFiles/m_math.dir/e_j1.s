	.text
	.file	"e_j1.c"
	.globl	__ieee754_j1            //  -- Begin function __ieee754_j1
	.type	__ieee754_j1,@function
__ieee754_j1:                           //  @__ieee754_j1
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( 2147483647 )
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x11
	add x10, x10, %lo( 2147483647 )
	sw x27, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	and x27, x10, fp
	srl x10, x27, 20&31
	sltiu x10, x10, 2047
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
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
	bltu x0, x10, .LBB0_2
.LBB0_1:                                //  %if.then
	mv x10, x0
	lui x11, (1072693248>>12)&1048575
	mv x12, x9
	mv x13, fp
	jal __divdf3
	jal x0, .LBB0_11
.LBB0_2:                                //  %if.end
	mv x10, x9
	mv x11, fp
	jal fabs
	mv x18, x10
	mv x19, x11
	srl x10, x27, 30&31
	beq x0, x10, .LBB0_12
.LBB0_3:                                //  %if.then2
	mv x10, x18
	mv x11, x19
	jal sin
	mv x23, x10
	mv x24, x11
	mv x10, x18
	mv x11, x19
	jal cos
	mv x25, x10
	lui x10, %hi( -2147483648 )
	mv x26, x11
	add x10, x10, %lo( -2147483648 )
	sw x10, 8 ( sp )                //  4-byte Folded Spill
	xor x11, x10, x24
	mv x10, x23
	mv x12, x25
	mv x13, x26
	jal __subdf3
	mv x21, x10
	mv x22, x11
	mv x10, x23
	mv x11, x24
	mv x12, x25
	mv x13, x26
	jal __subdf3
	mv x9, x10
	mv x20, x11
	srl x10, x27, 21&31
	add x11, x0, 1022
	bltu x11, x10, .LBB0_9
.LBB0_4:                                //  %if.then8
	mv x10, x23
	mv x11, x24
	mv x12, x25
	mv x13, x26
	jal __muldf3
	mv x12, x0
	mv x13, x12
	jal __gtdf2
	mv x23, x10
	mv x10, x18
	mv x13, x19
	mv x11, x19
	mv x12, x18
	jal __adddf3
	jal cos
	bge x0, x23, .LBB0_6
.LBB0_5:                                //  %if.then11
	mv x12, x21
	mv x13, x22
	jal __divdf3
	mv x9, x10
	mv x20, x11
	lui x10, (1207959552>>12)&1048575
	bgeu x10, x27, .LBB0_8
	jal x0, .LBB0_9
.LBB0_12:                               //  %if.end35
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
	bge x0, x10, .LBB0_15
.LBB0_13:                               //  %if.end35
	srl x10, x27, 22&31
	add x11, x0, 248
	bltu x11, x10, .LBB0_15
.LBB0_14:                               //  %if.then40
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x9
	mv x11, fp
	jal __muldf3
	jal x0, .LBB0_11
.LBB0_15:                               //  %if.end43
	mv x20, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x9
	mv x11, fp
	mv x12, x20
	jal __muldf3
	mv x18, x10
	mv x19, x11
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __muldf3
	mv x21, x10
	lui x10, %hi( 1187646425 )
	add x12, x10, %lo( 1187646425 )
	lui x10, %hi( 1047177978 )
	add x13, x10, %lo( 1047177978 )
	mv x10, x21
	mv x22, x11
	jal __muldf3
	lui x12, %hi( -1172924824 )
	lui x13, %hi( -1091516986 )
	add x12, x12, %lo( -1172924824 )
	add x13, x13, %lo( -1091516986 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __muldf3
	lui x12, %hi( -1740166047 )
	lui x13, %hi( 1062669727 )
	add x12, x12, %lo( -1740166047 )
	add x13, x13, %lo( 1062669727 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __muldf3
	lui x12, %hi( -1078984704 )
	add x13, x12, %lo( -1078984704 )
	mv x12, x20
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __muldf3
	mv x23, x10
	lui x10, %hi( -809926952 )
	add x12, x10, %lo( -809926952 )
	lui x10, %hi( 1034627791 )
	mv x24, x11
	add x13, x10, %lo( 1034627791 )
	mv x10, x21
	mv x11, x22
	jal __muldf3
	lui x12, %hi( -914489556 )
	lui x13, %hi( 1043704968 )
	add x12, x12, %lo( -914489556 )
	add x13, x13, %lo( 1043704968 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __muldf3
	lui x12, %hi( 859800728 )
	lui x13, %hi( 1051967480 )
	add x12, x12, %lo( 859800728 )
	add x13, x13, %lo( 1051967480 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __muldf3
	lui x12, %hi( -1177684380 )
	lui x13, %hi( 1059610454 )
	add x12, x12, %lo( -1177684380 )
	add x13, x13, %lo( 1059610454 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __muldf3
	lui x12, %hi( 308510291 )
	lui x13, %hi( 1066638603 )
	add x12, x12, %lo( 308510291 )
	add x13, x13, %lo( 1066638603 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __muldf3
	lui x13, (1072693248>>12)&1048575
	mv x12, x20
	jal __adddf3
	mv x20, x10
	mv x21, x11
	mv x10, x23
	mv x11, x24
	mv x12, x9
	mv x13, fp
	jal __muldf3
	mv x12, x20
	mv x13, x21
	jal __divdf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __adddf3
	jal x0, .LBB0_11
.LBB0_6:                                //  %if.else
	mv x12, x9
	mv x13, x20
	jal __divdf3
	mv x21, x10
	mv x22, x11
	lui x10, (1207959552>>12)&1048575
	bltu x10, x27, .LBB0_9
.LBB0_8:                                //  %if.else21
	mv x10, x18
	mv x11, x19
	jal pone
	mv x23, x10
	mv x24, x11
	mv x10, x18
	mv x11, x19
	jal qone
	mv x25, x10
	mv x26, x11
	mv x10, x9
	mv x11, x20
	mv x12, x23
	mv x13, x24
	jal __muldf3
	mv x9, x10
	mv x20, x11
	mv x10, x21
	mv x11, x22
	mv x12, x25
	mv x13, x26
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x20
	jal __subdf3
	mv x9, x10
	mv x20, x11
.LBB0_9:                                //  %if.end30
	lui x10, %hi( 1346542445 )
	add x12, x10, %lo( 1346542445 )
	lui x10, %hi( 1071779287 )
	add x13, x10, %lo( 1071779287 )
	mv x10, x9
	mv x11, x20
	jal __muldf3
	mv x9, x10
	mv x20, x11
	mv x10, x18
	mv x11, x19
	jal __ieee754_sqrt
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x20
	jal __divdf3
	mv x12, x0
	bge fp, x12, .LBB0_11
.LBB0_10:
	lw x12, 8 ( sp )                //  4-byte Folded Reload
	xor x11, x12, x11
.LBB0_11:                               //  %if.end30
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
	.size	__ieee754_j1, .Lfunc_end0-__ieee754_j1
	.cfi_endproc
                                        //  -- End function
	.type	pone,@function          //  -- Begin function pone
pone:                                   //  @pone
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	lui x12, %hi( 2147483647 )
	add x12, x12, %lo( 2147483647 )
	and x12, x12, x11
	srl x13, x12, 20&31
	add x14, x0, 1050
	bgeu x14, x13, .LBB1_2
.LBB1_1:
	lui x11, (1072693248>>12)&1048575
	mv x10, x0
	jr ra
.LBB1_2:                                //  %if.else
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	srl x13, x12, 21&31
	add x14, x0, 512
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
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	bgeu x14, x13, .LBB1_4
.LBB1_3:
	lui x12, %hi( pr8 )
	add x20, x12, %lo( pr8 )
	lui x12, %hi( ps8 )
	add x22, x12, %lo( ps8 )
	jal x0, .LBB1_9
.LBB1_4:                                //  %if.else3
	lui x13, %hi( 1074933386 )
	add x13, x13, %lo( 1074933386 )
	bgeu x13, x12, .LBB1_6
.LBB1_5:
	lui x12, %hi( pr5 )
	add x20, x12, %lo( pr5 )
	lui x12, %hi( ps5 )
	add x22, x12, %lo( ps5 )
	jal x0, .LBB1_9
.LBB1_6:                                //  %if.else6
	lui x13, %hi( 1074191212 )
	add x13, x13, %lo( 1074191212 )
	bltu x13, x12, .LBB1_7
.LBB1_8:                                //  %if.else6
	lui x12, %hi( pr2 )
	add x20, x12, %lo( pr2 )
	lui x12, %hi( ps2 )
	add x22, x12, %lo( ps2 )
	jal x0, .LBB1_9
.LBB1_7:
	lui x12, %hi( pr3 )
	add x20, x12, %lo( pr3 )
	lui x12, %hi( ps3 )
	add x22, x12, %lo( ps3 )
.LBB1_9:                                //  %if.end12
	mv x12, x10
	mv x13, x11
	jal __muldf3
	mv fp, x0
	lui x9, (1072693248>>12)&1048575
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x9
	jal __divdf3
	lw x12, 40 ( x20 )
	lw x13, 44 ( x20 )
	mv x18, x10
	mv x19, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 32 ( x20 )
	lw x11, 36 ( x20 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 24 ( x20 )
	lw x11, 28 ( x20 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 16 ( x20 )
	lw x11, 20 ( x20 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 8 ( x20 )
	lw x11, 12 ( x20 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 0 ( x20 )
	lw x11, 4 ( x20 )
	jal __adddf3
	lw x12, 32 ( x22 )
	lw x13, 36 ( x22 )
	mv x20, x10
	mv x21, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 24 ( x22 )
	lw x11, 28 ( x22 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 16 ( x22 )
	lw x11, 20 ( x22 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 8 ( x22 )
	lw x11, 12 ( x22 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 0 ( x22 )
	lw x11, 4 ( x22 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	mv x12, fp
	mv x13, x9
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __divdf3
	mv x12, fp
	mv x13, x9
	jal __adddf3
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
.Lfunc_end1:
	.size	pone, .Lfunc_end1-pone
	.cfi_endproc
                                        //  -- End function
	.type	qone,@function          //  -- Begin function qone
qone:                                   //  @qone
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
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv fp, x11
	add x10, x10, %lo( 2147483647 )
	and x10, x10, fp
	srl x11, x10, 20&31
	add x12, x0, 1050
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
	bgeu x12, x11, .LBB2_2
.LBB2_1:
	lui x11, (1071120384>>12)&1048575
	mv x10, x0
	jal x0, .LBB2_10
.LBB2_2:                                //  %if.else
	srl x11, x10, 21&31
	add x12, x0, 512
	bgeu x12, x11, .LBB2_4
.LBB2_3:
	lui x10, %hi( qr8 )
	add x22, x10, %lo( qr8 )
	lui x10, %hi( qs8 )
	add x24, x10, %lo( qs8 )
	jal x0, .LBB2_9
.LBB2_4:                                //  %if.else3
	lui x11, %hi( 1074933386 )
	add x11, x11, %lo( 1074933386 )
	bgeu x11, x10, .LBB2_6
.LBB2_5:
	lui x10, %hi( qr5 )
	add x22, x10, %lo( qr5 )
	lui x10, %hi( qs5 )
	add x24, x10, %lo( qs5 )
	jal x0, .LBB2_9
.LBB2_6:                                //  %if.else6
	lui x11, %hi( 1074191212 )
	add x11, x11, %lo( 1074191212 )
	bltu x11, x10, .LBB2_7
.LBB2_8:                                //  %if.else6
	lui x10, %hi( qr2 )
	add x22, x10, %lo( qr2 )
	lui x10, %hi( qs2 )
	add x24, x10, %lo( qs2 )
	jal x0, .LBB2_9
.LBB2_7:
	lui x10, %hi( qr3 )
	add x22, x10, %lo( qr3 )
	lui x10, %hi( qs3 )
	add x24, x10, %lo( qs3 )
.LBB2_9:                                //  %if.end12
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __muldf3
	mv x18, x0
	lui x19, (1072693248>>12)&1048575
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __divdf3
	lw x12, 40 ( x22 )
	lw x13, 44 ( x22 )
	mv x20, x10
	mv x21, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 32 ( x22 )
	lw x11, 36 ( x22 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 24 ( x22 )
	lw x11, 28 ( x22 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 16 ( x22 )
	lw x11, 20 ( x22 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 8 ( x22 )
	lw x11, 12 ( x22 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 0 ( x22 )
	lw x11, 4 ( x22 )
	jal __adddf3
	lw x12, 40 ( x24 )
	lw x13, 44 ( x24 )
	mv x22, x10
	mv x23, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 32 ( x24 )
	lw x11, 36 ( x24 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 24 ( x24 )
	lw x11, 28 ( x24 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 16 ( x24 )
	lw x11, 20 ( x24 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 8 ( x24 )
	lw x11, 12 ( x24 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 0 ( x24 )
	lw x11, 4 ( x24 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	mv x12, x18
	mv x13, x19
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x23
	jal __divdf3
	lui x13, (1071120384>>12)&1048575
	mv x12, x18
	jal __adddf3
.LBB2_10:                               //  %cleanup
	mv x12, x9
	mv x13, fp
	jal __divdf3
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
.Lfunc_end2:
	.size	qone, .Lfunc_end2-qone
	.cfi_endproc
                                        //  -- End function
	.globl	__ieee754_y1            //  -- Begin function __ieee754_y1
	.type	__ieee754_y1,@function
__ieee754_y1:                           //  @__ieee754_y1
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
	sw x26, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 26, -44
	and x26, x10, fp
	srl x10, x26, 20&31
	sltiu x10, x10, 2047
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
	bltu x0, x10, .LBB3_2
.LBB3_1:                                //  %if.then
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __muldf3
	mv x12, x9
	mv x13, fp
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x0
	lui x11, (1072693248>>12)&1048575
.LBB3_17:                               //  %cleanup
	jal __divdf3
	jal x0, .LBB3_18
.LBB3_2:                                //  %if.end
	or x11, x9, x26
	mv x10, x0
	beq x0, x11, .LBB3_9
.LBB3_3:                                //  %if.end4
	blt fp, x0, .LBB3_10
.LBB3_4:                                //  %if.end7
	srl x10, x26, 30&31
	beq x0, x10, .LBB3_11
.LBB3_5:                                //  %if.then9
	mv x10, x9
	mv x11, fp
	jal sin
	mv x22, x10
	mv x23, x11
	mv x10, x9
	mv x11, fp
	jal cos
	mv x24, x10
	lui x10, %hi( -2147483648 )
	mv x25, x11
	add x10, x10, %lo( -2147483648 )
	xor x11, x10, x23
	mv x10, x22
	mv x12, x24
	mv x13, x25
	jal __subdf3
	mv x18, x10
	mv x19, x11
	mv x10, x22
	mv x11, x23
	mv x12, x24
	mv x13, x25
	jal __subdf3
	mv x20, x10
	mv x21, x11
	srl x10, x26, 21&31
	add x11, x0, 1022
	bltu x11, x10, .LBB3_15
.LBB3_6:                                //  %if.then14
	mv x10, x22
	mv x11, x23
	mv x12, x24
	mv x13, x25
	jal __muldf3
	mv x12, x0
	mv x13, x12
	jal __gtdf2
	mv x22, x10
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __adddf3
	jal cos
	bge x0, x22, .LBB3_14
.LBB3_7:                                //  %if.then19
	mv x12, x18
	mv x13, x19
	jal __divdf3
	mv x20, x10
	mv x21, x11
	lui x10, %hi( 1207959553 )
	add x10, x10, %lo( 1207959553 )
	bgeu x26, x10, .LBB3_15
.LBB3_8:                                //  %if.else29
	mv x10, x9
	mv x11, fp
	jal pone
	mv x22, x10
	mv x23, x11
	mv x10, x9
	mv x11, fp
	jal qone
	mv x24, x10
	mv x25, x11
	mv x10, x18
	mv x11, x19
	mv x12, x22
	mv x13, x23
	jal __muldf3
	mv x18, x10
	mv x19, x11
	mv x10, x20
	mv x11, x21
	mv x12, x24
	mv x13, x25
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __adddf3
	lui x12, %hi( 1346542445 )
	lui x13, %hi( 1071779287 )
	add x12, x12, %lo( 1346542445 )
	add x13, x13, %lo( 1071779287 )
	jal x0, .LBB3_16
.LBB3_9:
	lui x11, %hi( -1048576 )
	add x11, x11, %lo( -1048576 )
	jal x0, .LBB3_18
.LBB3_10:
	lui x11, (2146959360>>12)&1048575
	jal x0, .LBB3_18
.LBB3_11:                               //  %if.end39
	lui x10, (1016070144>>12)&1048575
	bltu x10, x26, .LBB3_13
.LBB3_12:                               //  %if.then41
	lui x10, %hi( 1841940611 )
	lui x11, %hi( -1075552464 )
	add x10, x10, %lo( 1841940611 )
	add x11, x11, %lo( -1075552464 )
	mv x12, x9
	mv x13, fp
	jal x0, .LBB3_17
.LBB3_13:                               //  %if.end43
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __muldf3
	mv x18, x10
	lui x10, %hi( 1452344760 )
	add x12, x10, %lo( 1452344760 )
	lui x10, %hi( -1099387904 )
	add x13, x10, %lo( -1099387904 )
	mv x10, x18
	mv x19, x11
	jal __muldf3
	lui x12, %hi( -1884899186 )
	lui x13, %hi( 1056484099 )
	add x12, x12, %lo( -1884899186 )
	add x13, x13, %lo( 1056484099 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 1212478735 )
	lui x13, %hi( -1084271131 )
	add x12, x12, %lo( 1212478735 )
	add x13, x13, %lo( -1084271131 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 1982409937 )
	lui x13, %hi( 1068094407 )
	add x12, x12, %lo( 1982409937 )
	add x13, x13, %lo( 1068094407 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 339524746 )
	lui x13, %hi( -1077340058 )
	add x12, x12, %lo( 339524746 )
	add x13, x13, %lo( -1077340058 )
	jal __adddf3
	mv x20, x10
	lui x10, %hi( -624265430 )
	add x12, x10, %lo( -624265430 )
	lui x10, %hi( 1035096121 )
	mv x21, x11
	add x13, x10, %lo( 1035096121 )
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 1537645190 )
	lui x13, %hi( 1044037405 )
	add x12, x12, %lo( 1537645190 )
	add x13, x13, %lo( 1044037405 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -1991340890 )
	lui x13, %hi( 1052164186 )
	add x12, x12, %lo( -1991340890 )
	add x13, x13, %lo( 1052164186 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 1814394724 )
	lui x13, %hi( 1059753097 )
	add x12, x12, %lo( 1814394724 )
	add x13, x13, %lo( 1059753097 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 1062054384 )
	lui x13, %hi( 1066689805 )
	add x12, x12, %lo( 1062054384 )
	add x13, x13, %lo( 1066689805 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	mv x18, x0
	lui x19, (1072693248>>12)&1048575
	mv x12, x18
	mv x13, x19
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __divdf3
	mv x12, x9
	mv x13, fp
	jal __muldf3
	mv x20, x10
	mv x21, x11
	mv x10, x18
	mv x11, x19
	mv x12, x9
	mv x13, fp
	jal __divdf3
	mv x18, x10
	mv x19, x11
	mv x10, x9
	mv x11, fp
	jal __ieee754_j1
	mv x22, x10
	mv x23, x11
	mv x10, x9
	mv x11, fp
	jal __ieee754_log
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x23
	jal __muldf3
	mv x12, x18
	mv x13, x19
	jal __subdf3
	lui x12, %hi( 1841940611 )
	lui x13, %hi( 1071931184 )
	add x12, x12, %lo( 1841940611 )
	add x13, x13, %lo( 1071931184 )
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __adddf3
.LBB3_18:                               //  %cleanup
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
.LBB3_14:                               //  %if.else
	mv x12, x20
	mv x13, x21
	jal __divdf3
	mv x18, x10
	mv x19, x11
	lui x10, %hi( 1207959553 )
	add x10, x10, %lo( 1207959553 )
	bltu x26, x10, .LBB3_8
.LBB3_15:                               //  %if.then25
	lui x10, %hi( 1346542445 )
	add x12, x10, %lo( 1346542445 )
	lui x10, %hi( 1071779287 )
	add x13, x10, %lo( 1071779287 )
	mv x10, x18
	mv x11, x19
.LBB3_16:                               //  %cleanup
	jal __muldf3
	mv x18, x10
	mv x19, x11
	mv x10, x9
	mv x11, fp
	jal __ieee754_sqrt
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal x0, .LBB3_17
.Lfunc_end3:
	.size	__ieee754_y1, .Lfunc_end3-__ieee754_y1
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	pr8,@object             //  @pr8
	.section	.rodata,"a",@progbits
	.p2align	3
pr8:
	.quad	0                       //  double 0
	.quad	4593108669964483790     //  double 0.11718749999998865
	.quad	4623642783075237838     //  double 13.239480659307358
	.quad	4645956509072532880     //  double 412.05185430737856
	.quad	4660739070293783244     //  double 3874.7453891396053
	.quad	4665424076983468765     //  double 7914.4795403189173
	.size	pr8, 48

	.address_space	0
	.type	ps8,@object             //  @ps8
	.p2align	3
ps8:
	.quad	4637737046166039724     //  double 114.20737037567841
	.quad	4660246896882558799     //  double 3650.9308342085346
	.quad	4675312035863837567     //  double 36956.206026903346
	.quad	4681443626114291643     //  double 97602.79359349508
	.quad	4674196627785386797     //  double 30804.272062788881
	.size	ps8, 40

	.address_space	0
	.type	pr5,@object             //  @pr5
	.p2align	3
pr5:
	.quad	4444215450408176253     //  double 1.3199051955624352E-11
	.quad	4593108669473816643     //  double 0.1171874931906141
	.quad	4619345235458332131     //  double 6.8027512786843287
	.quad	4637321927758054125     //  double 108.30818299018911
	.quad	4647764391453972041     //  double 517.63613953319975
	.quad	4647861843912428727     //  double 528.71520136333754
	.size	pr5, 48

	.address_space	0
	.type	ps5,@object             //  @ps5
	.p2align	3
ps5:
	.quad	4633539819881849661     //  double 59.280598722113133
	.quad	4651931674920511233     //  double 991.40141873361438
	.quad	4662607993962411771     //  double 5353.2669529148798
	.quad	4665347342921480981     //  double 7844.6903174955123
	.quad	4654329683615112785     //  double 1504.0468881036106
	.size	ps5, 40

	.address_space	0
	.type	pr3,@object             //  @pr3
	.p2align	3
pr3:
	.quad	4479388525873962717     //  double 3.0250391613737362E-9
	.quad	4593108624248787323     //  double 0.11718686556725359
	.quad	4616038696802495882     //  double 3.9329775003331564
	.quad	4630139433958953257     //  double 35.119403559163693
	.quad	4636107843717306423     //  double 91.055011075078127
	.quad	4632030898649841381     //  double 48.559068519736492
	.size	pr3, 48

	.address_space	0
	.type	ps3,@object             //  @ps3
	.p2align	3
ps3:
	.quad	4630093258825139868     //  double 34.791309500125152
	.quad	4644632004018677599     //  double 336.76245874782575
	.quad	4652319004553631011     //  double 1046.8713997577513
	.quad	4651046875287138793     //  double 890.81134639825643
	.quad	4637003843403443539     //  double 103.78793243963928
	.size	ps3, 40

	.address_space	0
	.type	pr2,@object             //  @pr2
	.p2align	3
pr2:
	.quad	4502730828338775284     //  double 1.0771083010687374E-7
	.quad	4593107857116106115     //  double 0.11717621946268335
	.quad	4612515840360689344     //  double 2.3685149666760879
	.quad	4623081595299015012     //  double 12.242610914826123
	.quad	4625673627793067746     //  double 17.693971127168773
	.quad	4617398297642189310     //  double 5.073523125888185
	.size	pr2, 48

	.address_space	0
	.type	ps2,@object             //  @ps2
	.p2align	3
ps2:
	.quad	4626727052061830364     //  double 21.436485936382141
	.quad	4638516932880444629     //  double 125.29022716840275
	.quad	4642376518279027673     //  double 232.27646905716281
	.quad	4637981366650700969     //  double 117.6793732871471
	.quad	4620898491152880018     //  double 8.3646389337161828
	.size	ps2, 40

	.address_space	0
	.type	qr8,@object             //  @qr8
	.p2align	3
qr8:
	.quad	0                       //  double 0
	.quad	-4631318898052956685    //  double -0.10253906249999271
	.quad	-4598098727748011529    //  double -16.271753454458999
	.quad	-4573479293624732298    //  double -759.60172251395011
	.quad	-4555631922415897579    //  double -11849.806670242959
	.quad	-4546481884815647638    //  double -48438.512428575035
	.size	qr8, 48

	.address_space	0
	.type	qs8,@object             //  @qs8
	.p2align	3
qs8:
	.quad	4639882611305205221     //  double 161.39536970072291
	.quad	4665326117599085593     //  double 7825.3859992334847
	.quad	4683839934366703256     //  double 133875.33628724958
	.quad	4694429024867752985     //  double 719657.72368324094
	.quad	4693973273079819612     //  double 666601.23261777638
	.quad	-4534569120172758504    //  double -294490.26430383464
	.size	qs8, 48

	.address_space	0
	.type	qr5,@object             //  @qr5
	.p2align	3
qr5:
	.quad	-4776355188663279464    //  double -2.089799311417641E-11
	.quad	-4631318898936283153    //  double -0.10253905024137543
	.quad	-4602647041615352501    //  double -8.0564482812393603
	.quad	-4582705720479729232    //  double -183.66960747488838
	.quad	-4569617851380305073    //  double -1373.1937606550816
	.quad	-4565408795781650531    //  double -2612.4444045321566
	.size	qr5, 48

	.address_space	0
	.type	qs5,@object             //  @qs5
	.p2align	3
qs5:
	.quad	4635419745701204402     //  double 81.276550138433578
	.quad	4656474838921902137     //  double 1991.7987346048596
	.quad	4670530914603028009     //  double 17468.485192490891
	.quad	4677084341551681943     //  double 49851.427091035228
	.quad	4673411522359998027     //  double 27948.075163891812
	.quad	-4561461224969101308    //  double -4719.1835479512847
	.size	qs5, 48

	.address_space	0
	.type	qr3,@object             //  @qr3
	.p2align	3
qr3:
	.quad	-4740654704431740849    //  double -5.0783122646176656E-9
	.quad	-4631318986876850860    //  double -0.10253782982083709
	.quad	-4606495489464804865    //  double -4.610115811394734
	.quad	-4590033946861037862    //  double -57.847221656278364
	.quad	-4581137379441978017    //  double -228.2445407376317
	.quad	-4581455249564492810    //  double -219.21012847890933
	.size	qr3, 48

	.address_space	0
	.type	qs3,@object             //  @qs3
	.p2align	3
qs3:
	.quad	4631905091510822884     //  double 47.665155032372951
	.quad	4649138596034506302     //  double 673.86511267669971
	.quad	4659651449835125914     //  double 3380.1528667952634
	.quad	4662821807351223462     //  double 5547.7290972072278
	.quad	4656084822175047499     //  double 1903.119193388108
	.quad	-4584411051263905505    //  double -135.20119144430734
	.size	qs3, 48

	.address_space	0
	.type	qr2,@object             //  @qr2
	.p2align	3
qr2:
	.quad	-4717536937982417198    //  double -1.7838172751095887E-7
	.quad	-4631320484753395696    //  double -0.10251704260798555
	.quad	-4609992201811046694    //  double -2.7522056827818746
	.quad	-4597144003242585985    //  double -19.663616264370372
	.quad	-4592218461252334934    //  double -42.325313337283049
	.quad	-4596663158158954926    //  double -21.371921170370406
	.size	qr2, 48

	.address_space	0
	.type	qs2,@object             //  @qs2
	.p2align	3
qs2:
	.quad	4629006120318297343     //  double 29.533362906052385
	.quad	4643105013550423226     //  double 252.98154998219053
	.quad	4649874281219072247     //  double 757.50283486864544
	.quad	4649714987232968745     //  double 739.39320532046725
	.quad	4639690984324520148     //  double 155.94900333666612
	.quad	-4606102118978557845    //  double -4.9594989882262821
	.size	qs2, 48


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
