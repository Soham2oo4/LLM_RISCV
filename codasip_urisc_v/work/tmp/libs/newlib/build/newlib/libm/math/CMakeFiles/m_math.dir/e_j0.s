	.text
	.file	"e_j0.c"
	.globl	__ieee754_j0            //  -- Begin function __ieee754_j0
	.type	__ieee754_j0,@function
__ieee754_j0:                           //  @__ieee754_j0
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	lui x12, %hi( 2147483647 )
	add x12, x12, %lo( 2147483647 )
	sw x26, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	and x26, x12, x11
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	srl x24, x26, 20&31
	sltiu x12, x24, 2047
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
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
	sw x25, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x27, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	bltu x0, x12, .LBB0_3
.LBB0_1:                                //  %if.then
	mv x12, x10
	mv x13, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x0
	lui x11, (1072693248>>12)&1048575
	jal __divdf3
	jal x0, .LBB0_20
.LBB0_3:                                //  %if.end
	jal fabs
	mv x9, x10
	mv fp, x11
	srl x10, x26, 30&31
	beq x0, x10, .LBB0_12
.LBB0_4:                                //  %if.then2
	mv x10, x9
	mv x11, fp
	jal sin
	mv x22, x10
	mv x23, x11
	mv x10, x9
	mv x11, fp
	jal cos
	mv x24, x10
	mv x25, x11
	mv x10, x22
	mv x11, x23
	mv x12, x24
	mv x13, x25
	jal __subdf3
	mv x18, x10
	mv x19, x11
	mv x10, x22
	mv x11, x23
	mv x12, x24
	mv x13, x25
	jal __adddf3
	mv x20, x10
	mv x21, x11
	srl x10, x26, 21&31
	add x11, x0, 1022
	bltu x11, x10, .LBB0_9
.LBB0_5:                                //  %if.then6
	mv x10, x22
	mv x11, x23
	mv x12, x24
	mv x13, x25
	jal __muldf3
	mv x12, x0
	mv x13, x12
	jal __ltdf2
	mv x22, x10
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __adddf3
	jal cos
	lui x12, %hi( -2147483648 )
	add x12, x12, %lo( -2147483648 )
	xor x11, x12, x11
	bge x22, x0, .LBB0_7
.LBB0_6:                                //  %if.then12
	mv x12, x18
	mv x13, x19
	jal __divdf3
	mv x20, x10
	mv x21, x11
	lui x10, %hi( 1207959553 )
	add x10, x10, %lo( 1207959553 )
	bgeu x26, x10, .LBB0_9
.LBB0_11:                               //  %if.else22
	mv x10, x9
	mv x11, fp
	jal pzero
	mv x22, x10
	mv x23, x11
	mv x10, x9
	mv x11, fp
	jal qzero
	mv x24, x10
	mv x25, x11
	mv x10, x20
	mv x11, x21
	mv x12, x22
	mv x13, x23
	jal __muldf3
	mv x20, x10
	mv x21, x11
	mv x10, x18
	mv x11, x19
	mv x12, x24
	mv x13, x25
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __subdf3
	lui x12, %hi( 1346542445 )
	lui x13, %hi( 1071779287 )
	add x12, x12, %lo( 1346542445 )
	add x13, x13, %lo( 1071779287 )
	jal x0, .LBB0_10
.LBB0_12:                               //  %if.end32
	lui x10, %hi( -2013235812 )
	add x12, x10, %lo( -2013235812 )
	lui x10, %hi( 2117592124 )
	add x13, x10, %lo( 2117592124 )
	mv x10, x9
	mv x11, fp
	jal __adddf3
	srl x12, x26, 21&31
	add x13, x0, 504
	bltu x13, x12, .LBB0_16
.LBB0_13:                               //  %if.end32
	mv x18, x0
	lui x19, (1072693248>>12)&1048575
	mv x12, x18
	mv x13, x19
	jal __gtdf2
	bge x0, x10, .LBB0_16
.LBB0_14:                               //  %if.then37
	srl x10, x26, 22&31
	sltiu x10, x10, 249
	bltu x0, x10, .LBB0_21
.LBB0_15:                               //  %if.else40
	mv x18, x0
	lui x10, %hi( -1076887552 )
	add x13, x10, %lo( -1076887552 )
	mv x10, x9
	mv x11, fp
	mv x12, x18
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __muldf3
	lui x13, (1072693248>>12)&1048575
	mv x12, x18
	jal x0, .LBB0_19
.LBB0_16:                               //  %if.end45
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __muldf3
	mv x19, x10
	lui x10, %hi( 1943420878 )
	add x12, x10, %lo( 1943420878 )
	lui x10, %hi( -1103899161 )
	add x13, x10, %lo( -1103899161 )
	mv x10, x19
	mv x18, x11
	jal __muldf3
	lui x12, %hi( 206584089 )
	lui x13, %hi( 1052684753 )
	add x12, x12, %lo( 206584089 )
	add x13, x13, %lo( 1052684753 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x18
	jal __muldf3
	lui x12, %hi( -1239759127 )
	lui x13, %hi( -1087838555 )
	add x12, x12, %lo( -1239759127 )
	add x13, x13, %lo( -1087838555 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x18
	jal __muldf3
	lui x13, %hi( 1066401791 )
	add x12, x0, -3
	add x13, x13, %lo( 1066401791 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x18
	jal __muldf3
	mv x21, x10
	lui x10, %hi( -193700465 )
	add x12, x10, %lo( -193700465 )
	lui x10, %hi( 1041500348 )
	mv x20, x11
	add x13, x10, %lo( 1041500348 )
	mv x10, x19
	mv x11, x18
	jal __muldf3
	lui x12, %hi( -830155351 )
	lui x13, %hi( 1050753876 )
	add x12, x12, %lo( -830155351 )
	add x13, x13, %lo( 1050753876 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x18
	jal __muldf3
	lui x12, %hi( -581444620 )
	lui x13, %hi( 1058973394 )
	add x12, x12, %lo( -581444620 )
	add x13, x13, %lo( 1058973394 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x18
	jal __muldf3
	lui x12, %hi( -2100772188 )
	lui x13, %hi( 1066401000 )
	add x12, x12, %lo( -2100772188 )
	add x13, x13, %lo( 1066401000 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x18
	jal __muldf3
	mv x12, x0
	lui x13, (1072693248>>12)&1048575
	jal __adddf3
	mv x23, x10
	mv x22, x11
	add x10, x0, 1022
	bltu x10, x24, .LBB0_18
.LBB0_17:                               //  %if.then63
	mv x10, x21
	mv x11, x20
	mv x12, x23
	mv x13, x22
	jal __divdf3
	lui x12, %hi( -1076887552 )
	mv fp, x0
	add x13, x12, %lo( -1076887552 )
	mv x12, fp
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x18
	jal __muldf3
	lui x13, (1072693248>>12)&1048575
	mv x12, fp
	jal x0, .LBB0_19
.LBB0_7:                                //  %if.else
	mv x12, x20
	mv x13, x21
	jal __divdf3
	mv x18, x10
	mv x19, x11
	lui x10, %hi( 1207959553 )
	add x10, x10, %lo( 1207959553 )
	bltu x26, x10, .LBB0_11
.LBB0_9:                                //  %if.then18
	lui x10, %hi( 1346542445 )
	add x12, x10, %lo( 1346542445 )
	lui x10, %hi( 1071779287 )
	add x13, x10, %lo( 1071779287 )
	mv x10, x20
	mv x11, x21
.LBB0_10:                               //  %cleanup
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
	jal __divdf3
	jal x0, .LBB0_20
.LBB0_18:                               //  %if.else68
	mv x24, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x9
	mv x11, fp
	mv x12, x24
	jal __muldf3
	lui x25, (1072693248>>12)&1048575
	mv x12, x24
	mv x13, x25
	mv fp, x10
	mv x9, x11
	jal __adddf3
	mv x26, x10
	mv x27, x11
	mv x10, x24
	mv x11, x25
	mv x12, fp
	mv x13, x9
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x26
	mv x11, x27
	jal __muldf3
	mv fp, x10
	mv x9, x11
	mv x10, x21
	mv x11, x20
	mv x12, x23
	mv x13, x22
	jal __divdf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x18
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x9
.LBB0_19:                               //  %cleanup
	jal __adddf3
.LBB0_20:                               //  %cleanup
	mv x18, x10
	mv x19, x11
.LBB0_21:                               //  %cleanup
	mv x10, x18
	mv x11, x19
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
	.size	__ieee754_j0, .Lfunc_end0-__ieee754_j0
	.cfi_endproc
                                        //  -- End function
	.type	pzero,@function         //  -- Begin function pzero
pzero:                                  //  @pzero
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
	lui x12, %hi( pR8 )
	add x20, x12, %lo( pR8 )
	lui x12, %hi( pS8 )
	add x22, x12, %lo( pS8 )
	jal x0, .LBB1_9
.LBB1_4:                                //  %if.else3
	lui x13, %hi( 1074933386 )
	add x13, x13, %lo( 1074933386 )
	bgeu x13, x12, .LBB1_6
.LBB1_5:
	lui x12, %hi( pR5 )
	add x20, x12, %lo( pR5 )
	lui x12, %hi( pS5 )
	add x22, x12, %lo( pS5 )
	jal x0, .LBB1_9
.LBB1_6:                                //  %if.else6
	lui x13, %hi( 1074191212 )
	add x13, x13, %lo( 1074191212 )
	bltu x13, x12, .LBB1_7
.LBB1_8:                                //  %if.else6
	lui x12, %hi( pR2 )
	add x20, x12, %lo( pR2 )
	lui x12, %hi( pS2 )
	add x22, x12, %lo( pS2 )
	jal x0, .LBB1_9
.LBB1_7:
	lui x12, %hi( pR3 )
	add x20, x12, %lo( pR3 )
	lui x12, %hi( pS3 )
	add x22, x12, %lo( pS3 )
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
	.size	pzero, .Lfunc_end1-pzero
	.cfi_endproc
                                        //  -- End function
	.type	qzero,@function         //  -- Begin function qzero
qzero:                                  //  @qzero
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
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -44
	mv fp, x11
	add x10, x10, %lo( 2147483647 )
	and x10, x10, fp
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	lui x24, %hi( -1077936128 )
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
	sw x25, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 25, -40
	bgeu x12, x11, .LBB2_2
.LBB2_1:
	add x11, x24, %lo( -1077936128 )
	mv x10, x0
	jal x0, .LBB2_10
.LBB2_2:                                //  %if.else
	srl x11, x10, 21&31
	add x12, x0, 512
	bgeu x12, x11, .LBB2_4
.LBB2_3:
	lui x10, %hi( qR8 )
	add x22, x10, %lo( qR8 )
	lui x10, %hi( qS8 )
	add x25, x10, %lo( qS8 )
	jal x0, .LBB2_9
.LBB2_4:                                //  %if.else3
	lui x11, %hi( 1074933386 )
	add x11, x11, %lo( 1074933386 )
	bgeu x11, x10, .LBB2_6
.LBB2_5:
	lui x10, %hi( qR5 )
	add x22, x10, %lo( qR5 )
	lui x10, %hi( qS5 )
	add x25, x10, %lo( qS5 )
	jal x0, .LBB2_9
.LBB2_6:                                //  %if.else6
	lui x11, %hi( 1074191212 )
	add x11, x11, %lo( 1074191212 )
	bltu x11, x10, .LBB2_7
.LBB2_8:                                //  %if.else6
	lui x10, %hi( qR2 )
	add x22, x10, %lo( qR2 )
	lui x10, %hi( qS2 )
	add x25, x10, %lo( qS2 )
	jal x0, .LBB2_9
.LBB2_7:
	lui x10, %hi( qR3 )
	add x22, x10, %lo( qR3 )
	lui x10, %hi( qS3 )
	add x25, x10, %lo( qS3 )
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
	lw x12, 40 ( x25 )
	lw x13, 44 ( x25 )
	mv x22, x10
	mv x23, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 32 ( x25 )
	lw x11, 36 ( x25 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 24 ( x25 )
	lw x11, 28 ( x25 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 16 ( x25 )
	lw x11, 20 ( x25 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 8 ( x25 )
	lw x11, 12 ( x25 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	mv x12, x10
	mv x13, x11
	lw x10, 0 ( x25 )
	lw x11, 4 ( x25 )
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
	add x13, x24, %lo( -1077936128 )
	mv x12, x18
	jal __adddf3
.LBB2_10:                               //  %cleanup
	mv x12, x9
	mv x13, fp
	jal __divdf3
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
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
.Lfunc_end2:
	.size	qzero, .Lfunc_end2-qzero
	.cfi_endproc
                                        //  -- End function
	.globl	__ieee754_y0            //  -- Begin function __ieee754_y0
	.type	__ieee754_y0,@function
__ieee754_y0:                           //  @__ieee754_y0
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
.LBB3_18:                               //  %cleanup
	jal __divdf3
	jal x0, .LBB3_19
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
	mv x25, x11
	mv x10, x22
	mv x11, x23
	mv x12, x24
	mv x13, x25
	jal __subdf3
	mv x18, x10
	mv x19, x11
	mv x10, x22
	mv x11, x23
	mv x12, x24
	mv x13, x25
	jal __adddf3
	mv x20, x10
	mv x21, x11
	srl x10, x26, 21&31
	add x11, x0, 1022
	bltu x11, x10, .LBB3_16
.LBB3_6:                                //  %if.then13
	mv x10, x22
	mv x11, x23
	mv x12, x24
	mv x13, x25
	jal __muldf3
	mv x12, x0
	mv x13, x12
	jal __ltdf2
	mv x22, x10
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __adddf3
	jal cos
	lui x12, %hi( -2147483648 )
	add x12, x12, %lo( -2147483648 )
	xor x11, x12, x11
	bge x22, x0, .LBB3_15
.LBB3_7:                                //  %if.then19
	mv x12, x18
	mv x13, x19
	jal __divdf3
	mv x20, x10
	mv x21, x11
	lui x10, %hi( 1207959553 )
	add x10, x10, %lo( 1207959553 )
	bgeu x26, x10, .LBB3_16
.LBB3_8:                                //  %if.else29
	mv x10, x9
	mv x11, fp
	jal pzero
	mv x22, x10
	mv x23, x11
	mv x10, x9
	mv x11, fp
	jal qzero
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
	jal x0, .LBB3_17
.LBB3_9:
	lui x11, %hi( -1048576 )
	add x11, x11, %lo( -1048576 )
	jal x0, .LBB3_19
.LBB3_10:
	lui x11, (2146959360>>12)&1048575
	jal x0, .LBB3_19
.LBB3_11:                               //  %if.end39
	lui x10, (1044381696>>12)&1048575
	bltu x10, x26, .LBB3_13
.LBB3_12:                               //  %if.then41
	mv x10, x9
	mv x11, fp
	jal __ieee754_log
	lui x12, %hi( 1841940611 )
	lui x13, %hi( 1071931184 )
	add x12, x12, %lo( 1841940611 )
	add x13, x13, %lo( 1071931184 )
	jal __muldf3
	lui x12, %hi( -1714696161 )
	lui x13, %hi( -1078795050 )
	add x12, x12, %lo( -1714696161 )
	add x13, x13, %lo( -1078795050 )
	jal x0, .LBB3_14
.LBB3_13:                               //  %if.end45
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __muldf3
	mv x18, x10
	lui x10, %hi( 1765782472 )
	add x12, x10, %lo( 1765782472 )
	lui x10, %hi( -1111104451 )
	add x13, x10, %lo( -1111104451 )
	mv x10, x18
	mv x19, x11
	jal __muldf3
	lui x12, %hi( 995011540 )
	lui x13, %hi( 1045758039 )
	add x12, x12, %lo( 995011540 )
	add x13, x13, %lo( 1045758039 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 1943166125 )
	lui x13, %hi( -1093665113 )
	add x12, x12, %lo( 1943166125 )
	add x13, x13, %lo( -1093665113 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 548576107 )
	lui x13, %hi( 1060554061 )
	add x12, x12, %lo( 548576107 )
	add x13, x13, %lo( 1060554061 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -1318258025 )
	lui x13, %hi( -1081324312 )
	add x12, x12, %lo( -1318258025 )
	add x13, x13, %lo( -1081324312 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -1645616132 )
	lui x13, %hi( 1069980929 )
	add x12, x12, %lo( -1645616132 )
	add x13, x13, %lo( 1069980929 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -1714696161 )
	lui x13, %hi( -1078795050 )
	add x12, x12, %lo( -1714696161 )
	add x13, x13, %lo( -1078795050 )
	jal __adddf3
	mv x20, x10
	lui x10, %hi( 1003936239 )
	add x12, x10, %lo( 1003936239 )
	lui x10, %hi( 1040076824 )
	mv x21, x11
	add x13, x10, %lo( 1040076824 )
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( 2146566909 )
	lui x13, %hi( 1049715757 )
	add x12, x12, %lo( 2146566909 )
	add x13, x13, %lo( 1049715757 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -176634175 )
	lui x13, %hi( 1058270395 )
	add x12, x12, %lo( -176634175 )
	add x13, x13, %lo( 1058270395 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	lui x12, %hi( -1849047270 )
	lui x13, %hi( 1066013296 )
	add x12, x12, %lo( -1849047270 )
	add x13, x13, %lo( 1066013296 )
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __muldf3
	mv x12, x0
	lui x13, (1072693248>>12)&1048575
	jal __adddf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __divdf3
	mv x18, x10
	mv x19, x11
	mv x10, x9
	mv x11, fp
	jal __ieee754_j0
	mv x20, x10
	mv x21, x11
	mv x10, x9
	mv x11, fp
	jal __ieee754_log
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x21
	jal __muldf3
	lui x12, %hi( 1841940611 )
	lui x13, %hi( 1071931184 )
	add x12, x12, %lo( 1841940611 )
	add x13, x13, %lo( 1071931184 )
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
.LBB3_14:                               //  %cleanup
	jal __adddf3
.LBB3_19:                               //  %cleanup
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
.LBB3_15:                               //  %if.else
	mv x12, x20
	mv x13, x21
	jal __divdf3
	mv x18, x10
	mv x19, x11
	lui x10, %hi( 1207959553 )
	add x10, x10, %lo( 1207959553 )
	bltu x26, x10, .LBB3_8
.LBB3_16:                               //  %if.then25
	lui x10, %hi( 1346542445 )
	add x12, x10, %lo( 1346542445 )
	lui x10, %hi( 1071779287 )
	add x13, x10, %lo( 1071779287 )
	mv x10, x18
	mv x11, x19
.LBB3_17:                               //  %cleanup
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
	jal x0, .LBB3_18
.Lfunc_end3:
	.size	__ieee754_y0, .Lfunc_end3-__ieee754_y0
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	pR8,@object             //  @pR8
	.section	.rodata,"a",@progbits
	.p2align	3
pR8:
	.quad	0                       //  double 0
	.quad	-4633641066610819790    //  double -0.070312499999990036
	.quad	-4602632842817591431    //  double -8.081670412753498
	.quad	-4580142118682892189    //  double -257.06310567970485
	.quad	-4565688573100176644    //  double -2485.2164100942882
	.quad	-4560874239408970691    //  double -5253.0438049072955
	.size	pR8, 48

	.address_space	0
	.type	pS8,@object             //  @pS8
	.p2align	3
pS8:
	.quad	4637900793828697937     //  double 116.53436461966818
	.quad	4660648908942829880     //  double 3833.7447536412183
	.quad	4675812540598890591     //  double 40597.857264847255
	.quad	4682759616392571325     //  double 116752.97256437592
	.quad	4676778718732765660     //  double 47627.728414673096
	.size	pS8, 40

	.address_space	0
	.type	pR5,@object             //  @pR5
	.p2align	3
pR5:
	.quad	-4780262379782629940    //  double -1.141254646918945E-11
	.quad	-4633641067036869690    //  double -0.070312494087359928
	.quad	-4607002713190011969    //  double -4.1596106447058778
	.quad	-4588909431676397693    //  double -67.674765226516726
	.quad	-4578837338016002973    //  double -331.23129964917297
	.quad	-4578569900043039785    //  double -346.43338836560491
	.size	pR5, 48

	.address_space	0
	.type	pS5,@object             //  @pS5
	.p2align	3
pS5:
	.quad	4633747173989205470     //  double 60.753938269230034
	.quad	4652338271982856292     //  double 1051.2523059570458
	.quad	4663295962775428448     //  double 5978.9709433385578
	.quad	4666517258757405240     //  double 9625.4451435777446
	.quad	4657509392920078436     //  double 2406.0581592293911
	.size	pS5, 40

	.address_space	0
	.type	pR3,@object             //  @pR3
	.p2align	3
pR3:
	.quad	-4745139227486737786    //  double -2.5470460177195192E-9
	.quad	-4633641105403878837    //  double -0.070311961638148165
	.quad	-4610764959760744332    //  double -2.4090322154952961
	.quad	-4596495946174869996    //  double -21.965977473488309
	.quad	-4590001302967543227    //  double -58.079170470173757
	.quad	-4593827009006479345    //  double -31.44794705948885
	.size	pR3, 48

	.address_space	0
	.type	pS3,@object             //  @pS3
	.p2align	3
pS3:
	.quad	4630243105449672147     //  double 35.856033805520973
	.quad	4645067437439089678     //  double 361.51398305030386
	.quad	4652964358233547222     //  double 1193.6078379211153
	.quad	4652675797830835070     //  double 1127.9967985690741
	.quad	4640311352621502593     //  double 173.58093081333575
	.size	pS3, 40

	.address_space	0
	.type	pR2,@object             //  @pR2
	.p2align	3
pR2:
	.quad	-4722073588920286611    //  double -8.8753433303252641E-8
	.quad	-4633641743984746942    //  double -0.070303099548362474
	.quad	-4614159672459089853    //  double -1.4507384678095299
	.quad	-4603088988856670221    //  double -7.6356961382352777
	.quad	-4600881226022886653    //  double -11.193166886035675
	.quad	-4608908095059400945    //  double -3.2336457935133534
	.size	pR2, 48

	.address_space	0
	.type	pS2,@object             //  @pS2
	.p2align	3
pS2:
	.quad	4626947676037667161     //  double 22.220299753208881
	.quad	4638996367093041039     //  double 136.20679421821521
	.quad	4643465779653248923     //  double 270.47027865808349
	.quad	4639618025689381631     //  double 153.87539420832033
	.quad	4624441123253327881     //  double 14.657617694825619
	.size	pS2, 40

	.address_space	0
	.type	qR8,@object             //  @qR8
	.p2align	3
qR8:
	.quad	0                       //  double 0
	.quad	4589942076476489260     //  double 0.073242187499993505
	.quad	4622814529337898198     //  double 11.768206468225269
	.quad	4648116562747725861     //  double 557.67338025640186
	.quad	4666096009499702381     //  double 8859.1972075646863
	.quad	4675320065150686566     //  double 37014.626777688783
	.size	qR8, 48

	.address_space	0
	.type	qS8,@object             //  @qS8
	.p2align	3
qS8:
	.quad	4639966373233768892     //  double 163.77602689568982
	.quad	4665626239135581539     //  double 8098.3449465644981
	.quad	4684137591238528063     //  double 142538.29141912048
	.quad	4695147586068491075     //  double 803309.2571195144
	.quad	4695467065687804733     //  double 840501.57981906051
	.quad	-4533720279514009403    //  double -343899.29353786662
	.size	qS8, 48

	.address_space	0
	.type	qR5,@object             //  @qR5
	.p2align	3
qR5:
	.quad	4446246417212411097     //  double 1.8408596359451553E-11
	.quad	4589942075695476812     //  double 0.073242176661268477
	.quad	4618256359431159251     //  double 5.8356350896205695
	.quad	4638957832572995817     //  double 135.11157728644983
	.quad	4652232681307292801     //  double 1027.243765961641
	.quad	4656466830624744358     //  double 1989.9778586460538
	.size	qR5, 48

	.address_space	0
	.type	qS5,@object             //  @qS5
	.p2align	3
qS5:
	.quad	4635525303045592387     //  double 82.776610223653776
	.quad	4656787576741544142     //  double 2077.8141642139299
	.quad	4670909917246856813     //  double 18847.288778571809
	.quad	4678032627064644466     //  double 56751.112289494733
	.quad	4675177420980638880     //  double 35976.753842511447
	.quad	-4560762860034341367    //  double -5354.3427560194477
	.size	qS5, 48

	.address_space	0
	.type	qR3,@object             //  @qR3
	.p2align	3
qR3:
	.quad	4481869993748646786     //  double 4.3774101408973862E-9
	.quad	4589941999411202114     //  double 0.073241118004291145
	.quad	4614712958387526901     //  double 3.3442313751617072
	.quad	4631195308593622749     //  double 42.621844074541265
	.quad	4640213792005750047     //  double 170.8080913405656
	.quad	4640070445855023584     //  double 166.73394869665117
	.size	qR3, 48

	.address_space	0
	.type	qS3,@object             //  @qS3
	.p2align	3
qS3:
	.quad	4632059018626679718     //  double 48.758872972458718
	.quad	4649453708224253619     //  double 709.68922105660602
	.quad	4660363923165150307     //  double 3704.1482262011136
	.quad	4663825327293164072     //  double 6460.4251675256892
	.quad	4657751891375010240     //  double 2516.3336892036896
	.quad	-4583916842411822065    //  double -149.24745183615639
	.size	qS3, 48

	.address_space	0
	.type	qR2,@object             //  @qR2
	.p2align	3
qR2:
	.quad	4504779658175671259     //  double 1.5044444488698327E-7
	.quad	4589940724610907700     //  double 0.073223426596307928
	.quad	4611677874752550812     //  double 1.99819174093816
	.quad	4624349917051711461     //  double 14.495602934788574
	.quad	4629606469526608970     //  double 31.666231750478154
	.quad	4625267948167187380     //  double 16.252707571092927
	.size	qR2, 48

	.address_space	0
	.type	qS2,@object             //  @qS2
	.p2align	3
qS2:
	.quad	4629240369966512877     //  double 30.365584835521918
	.quad	4643446038404877120     //  double 269.34811860804984
	.quad	4650642012334440226     //  double 844.78375759532014
	.quad	4650977601645232660     //  double 882.93584511248855
	.quad	4641686549908427621     //  double 212.66638851179883
	.quad	-4605706414756517583    //  double -5.3109549388266695
	.size	qS2, 48


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
