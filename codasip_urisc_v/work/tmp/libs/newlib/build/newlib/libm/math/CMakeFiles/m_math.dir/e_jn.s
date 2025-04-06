	.text
	.file	"e_jn.c"
	.globl	__ieee754_jn            //  -- Begin function __ieee754_jn
	.type	__ieee754_jn,@function
__ieee754_jn:                           //  @__ieee754_jn
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -96
	.cfi_adjust_cfa_offset 96
	sw x18, 84 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	lui x10, %hi( 2147483647 )
	sw x19, 80 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x11
	mv x13, x12
	add x10, x10, %lo( 2147483647 )
	sw fp, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	and fp, x10, x13
	sub x10, x0, x19
	or x10, x10, x19
	slt x10, x10, x0
	lui x11, %hi( 2146435073 )
	or x10, x10, fp
	add x11, x11, %lo( 2146435073 )
	sw ra, 92 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 88 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20, 76 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 72 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	bltu x10, x11, .LBB0_2
.LBB0_1:                                //  %if.then
	mv x10, x19
	mv x11, x13
	mv x12, x19
	jal __adddf3
	jal x0, .LBB0_49
.LBB0_2:                                //  %if.end
	blt x18, x0, .LBB0_6
.LBB0_3:
	mv x10, x13
	xor x11, x18, 1
	beq x0, x11, .LBB0_7
.LBB0_4:                                //  %if.end7
	bltu x0, x18, .LBB0_8
.LBB0_5:                                //  %if.then9
	mv x10, x19
	mv x11, x13
	jal __ieee754_j0
	jal x0, .LBB0_49
.LBB0_6:                                //  %if.then4
	lui x10, %hi( -2147483648 )
	add x11, x10, %lo( -2147483648 )
	xor x10, x11, x13
	xor x13, x11, x13
	sub x18, x0, x18
	xor x11, x18, 1
	bltu x0, x11, .LBB0_4
.LBB0_7:                                //  %if.then12
	mv x10, x19
	mv x11, x13
	jal __ieee754_j1
	jal x0, .LBB0_49
.LBB0_8:                                //  %if.end14
	slt x10, x10, x0
	and x24, x18, x10
	mv x10, x19
	mv x11, x13
	jal fabs
	sw x10, 40 ( sp )               //  4-byte Folded Spill
	mv x23, x11
	mv x25, x0
	srl x9, fp, 20&31
	add x10, x0, 2046
	lui x26, %hi( -2147483648 )
	bltu x10, x9, .LBB0_15
.LBB0_9:                                //  %if.end14
	or x12, x19, fp
	lw fp, 40 ( sp )                //  4-byte Folded Reload
	mv x10, x25
	mv x11, x25
	beq x0, x12, .LBB0_47
.LBB0_10:                               //  %if.else
	mv x10, x18
	jal __floatsidf
	mv x19, x10
	mv x20, x11
	mv x10, fp
	mv x11, x23
	mv x12, x19
	mv x13, x20
	jal __gedf2
	bge x10, x0, .LBB0_16
.LBB0_11:                               //  %if.else59
	add x10, x0, 992
	bltu x10, x9, .LBB0_19
.LBB0_12:                               //  %if.then62
	lw x14, 40 ( sp )               //  4-byte Folded Reload
	mv x10, x0
	add x12, x0, 33
	mv x11, x10
	blt x12, x18, .LBB0_47
.LBB0_13:                               //  %if.else66
	mv x19, x0
	lui x13, (1071644672>>12)&1048575
	mv x10, x14
	mv x11, x23
	mv x12, x19
	jal __muldf3
	mv fp, x10
	mv x9, x11
	lui x20, (1072693248>>12)&1048575
	slti x10, x18, 2
	beq x0, x10, .LBB0_36
.LBB0_14:
	mv x21, fp
	mv x22, x9
	jal x0, .LBB0_38
.LBB0_15:
	mv x10, x25
	mv x11, x25
	bne x24, x25, .LBB0_48
	jal x0, .LBB0_49
.LBB0_16:                               //  %if.then25
	sltiu x10, x9, 1325
	bltu x0, x10, .LBB0_28
.LBB0_17:                               //  %if.then28
	and x10, x18, 3
	lui x11, %hi( JTI0_0 )
	sll x10, x10, 2&31
	add x11, x11, %lo( JTI0_0 )
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB0_18:                               //  %sw.bb
	lw fp, 40 ( sp )                //  4-byte Folded Reload
	mv x11, x23
	mv x10, fp
	jal cos
	mv x18, x10
	mv x19, x11
	mv x10, fp
	mv x11, x23
	jal sin
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __adddf3
	jal x0, .LBB0_43
.LBB0_19:                               //  %if.else80
	lw fp, 40 ( sp )                //  4-byte Folded Reload
	mv x9, x0
	lui x11, (1073741824>>12)&1048575
	mv x10, x9
	mv x12, fp
	mv x13, x23
	sw x20, 16 ( sp )               //  4-byte Folded Spill
	sw x19, 24 ( sp )               //  4-byte Folded Spill
	sw x24, 20 ( sp )               //  4-byte Folded Spill
	jal __divdf3
	mv x19, x10
	sll x10, x18, 1&31
	mv x20, x11
	sw x10, 12 ( sp )               //  4-byte Folded Spill
	jal __floatsidf
	mv x12, fp
	mv x13, x23
	sw x23, 36 ( sp )               //  4-byte Folded Spill
	jal __divdf3
	mv x12, x19
	mv x13, x20
	mv fp, x10
	mv x24, x11
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	jal __adddf3
	mv x19, x10
	mv x20, x11
	mv x10, fp
	mv x11, x24
	mv x12, x19
	mv x13, x20
	jal __muldf3
	lui x12, %hi( -1074790400 )
	add x13, x12, %lo( -1074790400 )
	mv x12, x9
	jal __adddf3
	mv x25, x10
	lui x10, %hi( 1104006501 )
	add x27, x10, %lo( 1104006501 )
	mv x10, x25
	mv x12, x9
	mv x13, x27
	mv x26, x11
	jal __ltdf2
	seqz x9, x0
	bge x10, x0, .LBB0_22
.LBB0_20:                               //  %while.body.preheader
	lw x23, 28 ( sp )               //  4-byte Folded Reload
.LBB0_21:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	mv x11, x23
	mv x12, x19
	mv x13, x20
	mv x22, x26
	mv x21, x25
	jal __adddf3
	mv x12, x21
	mv x13, x22
	mv x19, x10
	mv x20, x11
	jal __muldf3
	mv x12, fp
	mv x13, x24
	jal __subdf3
	mv x12, x0
	mv x13, x27
	mv x25, x10
	mv x26, x11
	jal __ltdf2
	add x9, x9, 1
	mv fp, x21
	mv x24, x22
	blt x10, x0, .LBB0_21
.LBB0_22:                               //  %while.end
	add x10, x18, x9
	lw fp, 36 ( sp )                //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw x24, 12 ( sp )               //  4-byte Folded Reload
	mv x23, x0
	mv x19, x23
	sll x22, x10, 1&31
	lui x21, (1072693248>>12)&1048575
	mv x20, x23
.LBB0_23:                               //  %for.body100
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x22
	jal __floatsidf
	mv x12, x9
	mv x13, fp
	jal __divdf3
	mv x12, x20
	mv x13, x19
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x23
	mv x11, x21
	jal __divdf3
	mv x20, x10
	mv x19, x11
	add x22, x22, -2
	bge x22, x24, .LBB0_23
.LBB0_24:                               //  %for.end107
	lw fp, 24 ( sp )                //  4-byte Folded Reload
	lw x9, 16 ( sp )                //  4-byte Folded Reload
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	lw x11, 28 ( sp )               //  4-byte Folded Reload
	mv x12, fp
	mv x13, x9
	jal __muldf3
	jal fabs
	jal __ieee754_log
	mv x12, fp
	mv x13, x9
	jal __muldf3
	lui x12, %hi( -17155601 )
	lui x13, %hi( 1082535490 )
	add x12, x12, %lo( -17155601 )
	add x13, x13, %lo( 1082535490 )
	jal __ltdf2
	add x9, x18, -1
	mv fp, x10
	sll x10, x9, 1&31
	jal __floatsidf
	mv x26, x10
	mv x27, x11
	bge fp, x0, .LBB0_31
.LBB0_25:                               //  %for.cond120.preheader
	bge x0, x9, .LBB0_45
.LBB0_26:                               //  %for.body123.preheader
	lw x23, 40 ( sp )               //  4-byte Folded Reload
	lui x10, %hi( -1073741824 )
	add x10, x10, %lo( -1073741824 )
	lui x21, (1072693248>>12)&1048575
	mv x22, x0
	mv x24, x20
	mv x25, x19
	sw x10, 32 ( sp )               //  4-byte Folded Spill
.LBB0_27:                               //  %for.body123
                                        //  =>This Inner Loop Header: Depth=1
	mv fp, x21
	mv x18, x22
	mv x10, x18
	mv x11, fp
	mv x12, x26
	mv x13, x27
	jal __muldf3
	lw x13, 36 ( sp )               //  4-byte Folded Reload
	mv x12, x23
	jal __divdf3
	mv x12, x24
	mv x13, x25
	jal __subdf3
	lw x13, 32 ( sp )               //  4-byte Folded Reload
	mv x22, x10
	mv x21, x11
	mv x10, x26
	mv x11, x27
	mv x12, x0
	jal __adddf3
	mv x26, x10
	mv x27, x11
	add x9, x9, -1
	mv x24, x18
	mv x25, fp
	blt x0, x9, .LBB0_27
	jal x0, .LBB0_46
.LBB0_28:                               //  %if.else48
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	mv x11, x23
	mv x10, x9
	jal __ieee754_j0
	mv x19, x10
	mv x20, x11
	mv x10, x9
	mv x11, x23
	jal __ieee754_j1
	slti x12, x18, 2
	bltu x0, x12, .LBB0_47
.LBB0_29:                               //  %for.body.preheader
	add x21, x0, 2
	add fp, x18, -1
.LBB0_30:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x22, x10
	mv x10, x21
	mv x18, x11
	jal __floatsidf
	mv x12, x9
	mv x13, x23
	jal __divdf3
	mv x12, x10
	mv x13, x11
	mv x10, x22
	mv x11, x18
	jal __muldf3
	mv x12, x19
	mv x13, x20
	jal __subdf3
	add x21, x21, 2
	add fp, fp, -1
	mv x19, x22
	mv x20, x18
	bltu x0, fp, .LBB0_30
	jal x0, .LBB0_47
.LBB0_31:                               //  %for.cond134.preheader
	bge x0, x9, .LBB0_45
.LBB0_32:                               //  %for.body137.preheader
	lui x10, %hi( -1073741824 )
	add x10, x10, %lo( -1073741824 )
	sw x10, 32 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 630506365 )
	add x10, x10, %lo( 630506365 )
	mv x18, x0
	sw x10, 28 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 1420970413 )
	add x10, x10, %lo( 1420970413 )
	lui x21, (1072693248>>12)&1048575
	mv x22, x18
	mv fp, x20
	mv x23, x19
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_34
.LBB0_33:                               //  %if.then144
                                        //    in Loop: Header=BB0_34 Depth=1
	mv x10, x22
	mv x11, x21
	mv x12, x27
	mv x13, x26
	jal __divdf3
	mv fp, x10
	mv x23, x11
	mv x10, x20
	mv x11, x19
	mv x12, x27
	mv x13, x26
	jal __divdf3
	mv x20, x10
	mv x19, x11
	mv x22, x18
	lui x21, (1072693248>>12)&1048575
	add x9, x9, -1
	mv x26, x24
	mv x27, x25
	bge x0, x9, .LBB0_46
.LBB0_34:                               //  %for.body137
                                        //  =>This Inner Loop Header: Depth=1
	lw x13, 32 ( sp )               //  4-byte Folded Reload
	mv x10, x26
	mv x11, x27
	mv x12, x18
	jal __adddf3
	mv x24, x10
	mv x25, x11
	mv x10, x22
	mv x11, x21
	mv x12, x26
	mv x13, x27
	jal __muldf3
	lw x12, 40 ( sp )               //  4-byte Folded Reload
	lw x13, 36 ( sp )               //  4-byte Folded Reload
	jal __divdf3
	mv x12, fp
	mv x13, x23
	jal __subdf3
	lw x12, 28 ( sp )               //  4-byte Folded Reload
	lw x13, 24 ( sp )               //  4-byte Folded Reload
	mv x27, x10
	mv x26, x11
	jal __gtdf2
	blt x0, x10, .LBB0_33
.LBB0_35:                               //    in Loop: Header=BB0_34 Depth=1
	mv fp, x22
	mv x23, x21
	mv x22, x27
	mv x21, x26
	add x9, x9, -1
	mv x26, x24
	mv x27, x25
	blt x0, x9, .LBB0_34
	jal x0, .LBB0_46
.LBB0_45:
	mv x22, x0
.LBB0_46:                               //  %if.end151
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	lw x11, 36 ( sp )               //  4-byte Folded Reload
	jal __ieee754_j0
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x19
	jal __muldf3
	mv x12, x22
	mv x13, x21
	jal __divdf3
	lw x24, 20 ( sp )               //  4-byte Folded Reload
	mv x25, x0
	lui x26, %hi( -2147483648 )
.LBB0_47:                               //  %if.end157
	beq x24, x25, .LBB0_49
.LBB0_48:
	add x12, x26, %lo( -2147483648 )
	xor x11, x12, x11
.LBB0_49:                               //  %cleanup
	lw fp, 44 ( sp )                //  4-byte Folded Reload
	lw x27, 48 ( sp )               //  4-byte Folded Reload
	lw x26, 52 ( sp )               //  4-byte Folded Reload
	lw x25, 56 ( sp )               //  4-byte Folded Reload
	lw x24, 60 ( sp )               //  4-byte Folded Reload
	lw x23, 64 ( sp )               //  4-byte Folded Reload
	lw x22, 68 ( sp )               //  4-byte Folded Reload
	lw x21, 72 ( sp )               //  4-byte Folded Reload
	lw x20, 76 ( sp )               //  4-byte Folded Reload
	lw x19, 80 ( sp )               //  4-byte Folded Reload
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	lw ra, 92 ( sp )                //  4-byte Folded Reload
	add sp, sp, 96
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_36:                               //  %for.body71.preheader
	mv x19, x0
	seqz x23, x0
	mv x21, fp
	mv x22, x9
.LBB0_37:                               //  %for.body71
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, fp
	mv x11, x9
	mv x12, x21
	mv x13, x22
	jal __muldf3
	add x23, x23, 1
	mv x21, x10
	mv x10, x23
	mv x22, x11
	jal __floatsidf
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	mv x19, x10
	mv x20, x11
	bne x18, x23, .LBB0_37
.LBB0_38:                               //  %for.end77
	mv x10, x21
	mv x11, x22
	mv x12, x19
	mv x13, x20
	jal __divdf3
	bne x24, x25, .LBB0_48
	jal x0, .LBB0_49
.LBB0_39:                               //  %sw.bb33
	lw fp, 40 ( sp )                //  4-byte Folded Reload
	mv x11, x23
	mv x10, fp
	jal cos
	mv x18, x10
	mv x19, x11
	mv x10, fp
	mv x11, x23
	jal sin
	mv x12, x18
	mv x13, x19
	jal x0, .LBB0_42
.LBB0_40:                               //  %sw.bb38
	lw fp, 40 ( sp )                //  4-byte Folded Reload
	mv x11, x23
	mv x10, fp
	jal cos
	mv x18, x10
	mv x19, x11
	mv x10, fp
	mv x11, x23
	jal sin
	mv x12, x10
	add x10, x26, %lo( -2147483648 )
	mv x13, x11
	xor x11, x10, x19
	mv x10, x18
	jal x0, .LBB0_42
.LBB0_41:                               //  %sw.bb43
	lw fp, 40 ( sp )                //  4-byte Folded Reload
	mv x11, x23
	mv x10, fp
	jal cos
	mv x18, x10
	mv x19, x11
	mv x10, fp
	mv x11, x23
	jal sin
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
.LBB0_42:                               //  %sw.epilog
	jal __subdf3
.LBB0_43:                               //  %sw.epilog
	lui x12, %hi( 1346542445 )
	lui x13, %hi( 1071779287 )
	add x12, x12, %lo( 1346542445 )
	add x13, x13, %lo( 1071779287 )
	jal __muldf3
	mv x18, x10
	mv x19, x11
	mv x10, fp
	mv x11, x23
	jal __ieee754_sqrt
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x19
	jal __divdf3
	bne x24, x25, .LBB0_48
	jal x0, .LBB0_49
.Lfunc_end0:
	.size	__ieee754_jn, .Lfunc_end0-__ieee754_jn
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_18
	.long	.LBB0_39
	.long	.LBB0_40
	.long	.LBB0_41
                                        //  -- End function
	.text
	.globl	__ieee754_yn            //  -- Begin function __ieee754_yn
	.type	__ieee754_yn,@function
__ieee754_yn:                           //  @__ieee754_yn
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x10
	lui x10, %hi( 2147483647 )
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv x9, x11
	mv fp, x12
	add x10, x10, %lo( 2147483647 )
	and x12, x10, fp
	sub x10, x0, x9
	or x10, x10, x9
	slt x10, x10, x0
	lui x11, %hi( 2146435073 )
	or x10, x10, x12
	add x11, x11, %lo( 2146435073 )
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
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
	sw x27, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	bltu x10, x11, .LBB1_2
.LBB1_1:                                //  %if.then
	mv x10, x9
	mv x11, fp
	mv x12, x9
	mv x13, fp
	jal __adddf3
	jal x0, .LBB1_28
.LBB1_2:                                //  %if.end
	or x11, x9, x12
	lui x22, %hi( -1048576 )
	mv x10, x0
	beq x0, x11, .LBB1_3
.LBB1_4:                                //  %if.end6
	blt fp, x0, .LBB1_5
.LBB1_6:                                //  %if.end9
	blt x19, x0, .LBB1_8
.LBB1_7:
	seqz x18, x0
	xor x10, x19, 1
	beq x0, x10, .LBB1_12
.LBB1_10:                               //  %if.end15
	bltu x0, x19, .LBB1_13
.LBB1_11:                               //  %if.then17
	mv x10, x9
	mv x11, fp
	jal __ieee754_y0
	jal x0, .LBB1_28
.LBB1_3:
	add x11, x22, %lo( -1048576 )
	jal x0, .LBB1_28
.LBB1_5:
	lui x11, (2146959360>>12)&1048575
	jal x0, .LBB1_28
.LBB1_8:                                //  %if.then11
	sub x19, x0, x19
	sll x10, x19, 1&31
	and x10, x10, 2
	seqz x11, x0
	sub x18, x11, x10
	xor x10, x19, 1
	bltu x0, x10, .LBB1_10
.LBB1_12:                               //  %if.then20
	mv x10, x18
	jal __floatsidf
	mv x18, x10
	mv x19, x11
	mv x10, x9
	mv x11, fp
	jal __ieee754_y1
	mv x12, x18
	mv x13, x19
	jal __muldf3
	jal x0, .LBB1_28
.LBB1_13:                               //  %if.end22
	mv x10, x0
	lui x13, (2146435072>>12)&1048575
	mv x11, x10
	beq x12, x13, .LBB1_28
.LBB1_14:                               //  %if.end26
	srl x10, x12, 20&31
	sltiu x10, x10, 1325
	lui x25, %hi( -2147483648 )
	bltu x0, x10, .LBB1_21
.LBB1_15:                               //  %if.then29
	and x10, x19, 3
	lui x11, %hi( JTI1_0 )
	sll x10, x10, 2&31
	add x11, x11, %lo( JTI1_0 )
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB1_16:                               //  %sw.bb
	mv x10, x9
	mv x11, fp
	jal sin
	mv x19, x10
	mv x20, x11
	mv x10, x9
	mv x11, fp
	jal cos
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __subdf3
	jal x0, .LBB1_20
.LBB1_21:                               //  %if.else
	mv x10, x9
	mv x11, fp
	jal __ieee754_y0
	mv x20, x10
	mv x21, x11
	mv x10, x9
	mv x11, fp
	jal __ieee754_y1
	slti x12, x19, 2
	bltu x0, x12, .LBB1_26
.LBB1_22:                               //  %if.else
	add x26, x22, %lo( -1048576 )
	xor x12, x26, x11
	beq x0, x12, .LBB1_26
.LBB1_23:                               //  %for.body.preheader
	add x22, x0, 2
	mv x27, x22
.LBB1_24:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x24, x10
	mv x10, x22
	mv x23, x11
	jal __floatsidf
	mv x12, x9
	mv x13, fp
	jal __divdf3
	mv x12, x10
	mv x13, x11
	mv x10, x24
	mv x11, x23
	jal __muldf3
	mv x12, x20
	mv x13, x21
	jal __subdf3
	bge x27, x19, .LBB1_26
.LBB1_25:                               //  %for.body
                                        //    in Loop: Header=BB1_24 Depth=1
	add x22, x22, 2
	add x27, x27, 1
	xor x12, x26, x11
	mv x20, x24
	mv x21, x23
	bltu x0, x12, .LBB1_24
	jal x0, .LBB1_26
.LBB1_17:                               //  %sw.bb34
	mv x10, x9
	mv x11, fp
	jal sin
	mv x19, x10
	mv x20, x11
	mv x10, x9
	mv x11, fp
	jal cos
	mv x12, x10
	add x10, x25, %lo( -2147483648 )
	mv x13, x11
	xor x11, x10, x20
	mv x10, x19
	jal __subdf3
	jal x0, .LBB1_20
.LBB1_18:                               //  %sw.bb39
	mv x10, x9
	mv x11, fp
	jal sin
	mv x19, x10
	mv x20, x11
	mv x10, x9
	mv x11, fp
	jal cos
	mv x12, x19
	mv x13, x20
	jal __subdf3
	jal x0, .LBB1_20
.LBB1_19:                               //  %sw.bb44
	mv x10, x9
	mv x11, fp
	jal sin
	mv x19, x10
	mv x20, x11
	mv x10, x9
	mv x11, fp
	jal cos
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __adddf3
.LBB1_20:                               //  %sw.epilog
	lui x12, %hi( 1346542445 )
	lui x13, %hi( 1071779287 )
	add x12, x12, %lo( 1346542445 )
	add x13, x13, %lo( 1071779287 )
	jal __muldf3
	mv x19, x10
	mv x20, x11
	mv x10, x9
	mv x11, fp
	jal __ieee754_sqrt
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __divdf3
.LBB1_26:                               //  %if.end74
	mv x12, x0
	blt x12, x18, .LBB1_28
.LBB1_27:                               //  %if.end74
	add x12, x25, %lo( -2147483648 )
	xor x11, x12, x11
.LBB1_28:                               //  %cleanup
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
.Lfunc_end1:
	.size	__ieee754_yn, .Lfunc_end1-__ieee754_yn
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_16
	.long	.LBB1_17
	.long	.LBB1_18
	.long	.LBB1_19
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
