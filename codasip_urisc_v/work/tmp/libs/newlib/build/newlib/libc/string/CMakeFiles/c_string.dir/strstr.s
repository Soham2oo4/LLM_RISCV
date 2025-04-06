	.text
	.file	"strstr.c"
	.globl	strstr                  //  -- Begin function strstr
	.type	strstr,@function
strstr:                                 //  @strstr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -112
	.cfi_adjust_cfa_offset 112
	sw x18, 100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x11
	lbu x11, 0 ( x18 )
	sw fp, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv fp, x10
	sw ra, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 104 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 96 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 92 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 88 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 84 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 80 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	beq x0, x11, .LBB0_7
.LBB0_1:                                //  %if.end
	lbu x10, 1 ( x18 )
	beq x0, x10, .LBB0_8
.LBB0_2:                                //  %if.end9
	lbu x12, 2 ( x18 )
	beq x0, x12, .LBB0_10
.LBB0_3:                                //  %if.end16
	lbu x13, 3 ( x18 )
	beq x0, x13, .LBB0_15
.LBB0_4:                                //  %if.end23
	lbu x14, 4 ( x18 )
	beq x0, x14, .LBB0_23
.LBB0_5:                                //  %if.end30
	mv x10, x18
	jal strlen
	mv x19, x10
	or x11, x19, 512
	mv x10, fp
	jal strnlen
	mv x9, x10
	bltu x9, x19, .LBB0_45
.LBB0_28:                               //  %if.end36
	add x10, x0, 254
	bltu x10, x19, .LBB0_48
.LBB0_29:                               //  %if.then39
	add x20, sp, 12
	add x11, x19, 1
	add x12, x0, 64
	mv x10, x20
	jal memset
	add x10, x9, fp
	beq x0, x19, .LBB0_32
.LBB0_30:                               //  %for.body.preheader
	mv x11, x18
	mv x12, x19
.LBB0_31:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x13, 0 ( x11 )
	add x11, x11, 1
	and x13, x13, 63
	add x13, x13, x20
	sb x12, 0 ( x13 )
	add x12, x12, -1
	bltu x0, x12, .LBB0_31
.LBB0_32:                               //  %do.body.preheader
	sub x22, x10, x19
	lui x10, %hi( 2048 )
	mv x9, x0
	add x21, x10, %lo( 2048 )
.LBB0_33:                               //  %do.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_34 Depth 2
	add x10, fp, -1
	add x11, x19, x10
	lbu x11, 0 ( x11 )
	and x11, x11, 63
	add x11, x11, x20
	lbu x11, 0 ( x11 )
	add fp, x11, x10
	bltu x22, fp, .LBB0_36
.LBB0_34:                               //  %for.body57
                                        //    Parent Loop BB0_33 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x19, fp
	lbu x10, 0 ( x10 )
	mv x11, x18
	mv x12, x19
	and x10, x10, 63
	add x10, x10, x20
	lbu x23, 0 ( x10 )
	mv x10, fp
	jal memcmp
	beq x0, x10, .LBB0_7
.LBB0_35:                               //  %for.inc68
                                        //    in Loop: Header=BB0_34 Depth=2
	add fp, x23, fp
	bgeu x22, fp, .LBB0_34
.LBB0_36:                               //  %for.end70
                                        //    in Loop: Header=BB0_33 Depth=1
	add x10, x19, x22
	lbu x11, 0 ( x10 )
	beq x0, x11, .LBB0_47
.LBB0_37:                               //  %do.cond
                                        //    in Loop: Header=BB0_33 Depth=1
	mv x11, x21
	jal strnlen
	add x22, x10, x22
	bgeu x22, fp, .LBB0_33
	jal x0, .LBB0_47
.LBB0_7:
	mv x9, fp
	jal x0, .LBB0_47
.LBB0_8:                                //  %if.then6
	mv x10, fp
	jal strchr
.LBB0_9:                                //  %cleanup88
	mv x9, x10
	jal x0, .LBB0_47
.LBB0_10:                               //  %if.then14
	lbu x13, 0 ( fp )
	sll x11, x11, 16&31
	or x10, x10, x11
	mv x9, x0
	beq x0, x13, .LBB0_20
.LBB0_11:                               //  %if.then14
	beq x0, x10, .LBB0_20
.LBB0_12:                               //  %for.body.i.preheader
	mv x11, x0
.LBB0_13:                               //  %for.body.i
                                        //  =>This Inner Loop Header: Depth=1
	and x12, x13, 255
	sll x11, x11, 16&31
	or x11, x12, x11
	add x12, fp, 1
	beq x10, x11, .LBB0_21
.LBB0_14:                               //  %for.body.i
                                        //    in Loop: Header=BB0_13 Depth=1
	lbu x13, 1 ( fp )
	mv fp, x12
	bltu x0, x13, .LBB0_13
	jal x0, .LBB0_21
.LBB0_15:                               //  %if.then21
	lbu x13, 0 ( fp )
	sll x11, x11, 24&31
	sll x10, x10, 16&31
	or x10, x11, x10
	sll x11, x12, 8&31
	or x10, x11, x10
	mv x9, x0
	beq x0, x13, .LBB0_38
.LBB0_16:                               //  %if.then21
	beq x0, x10, .LBB0_38
.LBB0_17:                               //  %for.body.i165.preheader
	mv x11, x0
.LBB0_18:                               //  %for.body.i165
                                        //  =>This Inner Loop Header: Depth=1
	and x12, x13, 255
	or x11, x12, x11
	add x12, fp, 1
	sll x11, x11, 8&31
	beq x10, x11, .LBB0_39
.LBB0_19:                               //  %for.body.i165
                                        //    in Loop: Header=BB0_18 Depth=1
	lbu x13, 1 ( fp )
	mv fp, x12
	bltu x0, x13, .LBB0_18
	jal x0, .LBB0_39
.LBB0_20:
	mv x12, fp
	mv x11, x9
.LBB0_21:                               //  %strstr2.exit
	bne x10, x11, .LBB0_47
.LBB0_22:
	add x9, x12, -2
	jal x0, .LBB0_47
.LBB0_23:                               //  %if.then28
	sll x11, x11, 24&31
	sll x10, x10, 16&31
	or x10, x11, x10
	sll x11, x12, 8&31
	or x10, x11, x10
	or x11, x13, x10
	seqz x10, x11
	beq x0, x11, .LBB0_42
.LBB0_24:                               //  %if.then28
	lbu x14, 0 ( fp )
	beq x0, x14, .LBB0_43
.LBB0_25:                               //  %for.body.i182.preheader
	mv x13, x0
.LBB0_26:                               //  %for.body.i182
                                        //  =>This Inner Loop Header: Depth=1
	and x10, x14, 255
	sll x12, x13, 8&31
	or x13, x10, x12
	xor x10, x13, x11
	seqz x10, x10
	add x12, fp, 1
	beq x11, x13, .LBB0_44
.LBB0_27:                               //  %for.body.i182
                                        //    in Loop: Header=BB0_26 Depth=1
	lbu x14, 1 ( fp )
	mv fp, x12
	bltu x0, x14, .LBB0_26
	jal x0, .LBB0_44
.LBB0_38:
	mv x12, fp
	mv x11, x9
.LBB0_39:                               //  %strstr3.exit
	bne x10, x11, .LBB0_47
.LBB0_40:
	add x9, x12, -3
	jal x0, .LBB0_47
.LBB0_42:
	mv x12, fp
	beq x0, x10, .LBB0_45
.LBB0_46:
	add x9, x12, -4
	jal x0, .LBB0_47
.LBB0_43:
	mv x12, fp
.LBB0_44:                               //  %strstr4.exit
	bltu x0, x10, .LBB0_46
.LBB0_45:                               //  %strstr4.exit
	mv x9, x0
.LBB0_47:                               //  %cleanup88
	mv x10, x9
	lw fp, 76 ( sp )                //  4-byte Folded Reload
	lw x23, 80 ( sp )               //  4-byte Folded Reload
	lw x22, 84 ( sp )               //  4-byte Folded Reload
	lw x21, 88 ( sp )               //  4-byte Folded Reload
	lw x20, 92 ( sp )               //  4-byte Folded Reload
	lw x19, 96 ( sp )               //  4-byte Folded Reload
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	lw ra, 108 ( sp )               //  4-byte Folded Reload
	add sp, sp, 112
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_48:                               //  %if.end84
	mv x10, fp
	mv x11, x9
	mv x12, x18
	mv x13, x19
	jal two_way_long_needle
	jal x0, .LBB0_9
.Lfunc_end0:
	.size	strstr, .Lfunc_end0-strstr
	.cfi_endproc
                                        //  -- End function
	.type	two_way_long_needle,@function //  -- Begin function two_way_long_needle
two_way_long_needle:                    //  @two_way_long_needle
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -1104
	.cfi_adjust_cfa_offset 1104
	sw x9, 1096 ( sp )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x13
	sw x18, 1092 ( sp )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 1088 ( sp )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x18, x11
	mv x19, x12
	add x6, x0, -1
	sltiu x11, x9, 2
	sw ra, 1100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 1084 ( sp )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 1080 ( sp )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 1076 ( sp )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 1072 ( sp )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 1068 ( sp )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 1064 ( sp )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 1060 ( sp )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 1056 ( sp )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 1052 ( sp )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	bltu x0, x11, .LBB1_1
.LBB1_2:                                //  %while.body.i.preheader
	seqz x11, x0
	mv x12, x0
	mv x13, x11
	mv x24, x11
	mv x14, x11
	jal x0, .LBB1_3
.LBB1_4:                                //  %if.then.i
                                        //    in Loop: Header=BB1_3 Depth=1
	sub x24, x14, x6
	mv x12, x14
	mv x13, x11
	add x14, x12, x13
	bgeu x14, x9, .LBB1_12
.LBB1_3:                                //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	add x15, x13, x6
	add x16, x14, x19
	add x15, x15, x19
	lbu x15, 0 ( x15 )
	lbu x16, 0 ( x16 )
	bltu x16, x15, .LBB1_4
.LBB1_5:                                //  %if.else.i
                                        //    in Loop: Header=BB1_3 Depth=1
	bne x16, x15, .LBB1_9
.LBB1_6:                                //  %if.then12.i
                                        //    in Loop: Header=BB1_3 Depth=1
	bne x13, x24, .LBB1_7
.LBB1_8:                                //  %if.else16.i
                                        //    in Loop: Header=BB1_3 Depth=1
	add x12, x24, x12
	mv x13, x11
	add x14, x12, x13
	bltu x14, x9, .LBB1_3
	jal x0, .LBB1_12
.LBB1_9:                                //  %if.else18.i
                                        //    in Loop: Header=BB1_3 Depth=1
	add x13, x12, 1
	mv x24, x11
	mv x6, x12
	mv x12, x13
	mv x13, x11
	add x14, x12, x13
	bltu x14, x9, .LBB1_3
	jal x0, .LBB1_12
.LBB1_7:                                //  %if.then15.i
                                        //    in Loop: Header=BB1_3 Depth=1
	add x13, x13, 1
	add x14, x12, x13
	bltu x14, x9, .LBB1_3
.LBB1_12:                               //  %while.body26.i.preheader
	seqz x13, x0
	add x11, x0, -1
	mv x14, x0
	mv x15, x13
	mv x12, x13
	mv x16, x13
	jal x0, .LBB1_13
.LBB1_14:                               //  %if.then35.i
                                        //    in Loop: Header=BB1_13 Depth=1
	sub x12, x16, x11
	mv x14, x16
	mv x15, x13
	add x16, x14, x15
	bgeu x16, x9, .LBB1_22
.LBB1_13:                               //  %while.body26.i
                                        //  =>This Inner Loop Header: Depth=1
	add x17, x15, x11
	add x5, x16, x19
	add x17, x17, x19
	lbu x17, 0 ( x17 )
	lbu x5, 0 ( x5 )
	bltu x17, x5, .LBB1_14
.LBB1_15:                               //  %if.else38.i
                                        //    in Loop: Header=BB1_13 Depth=1
	bne x5, x17, .LBB1_19
.LBB1_16:                               //  %if.then43.i
                                        //    in Loop: Header=BB1_13 Depth=1
	bne x15, x12, .LBB1_17
.LBB1_18:                               //  %if.else48.i
                                        //    in Loop: Header=BB1_13 Depth=1
	add x14, x12, x14
	mv x15, x13
	add x16, x14, x15
	bltu x16, x9, .LBB1_13
	jal x0, .LBB1_22
.LBB1_19:                               //  %if.else51.i
                                        //    in Loop: Header=BB1_13 Depth=1
	add x15, x14, 1
	mv x12, x13
	mv x11, x14
	mv x14, x15
	mv x15, x13
	add x16, x14, x15
	bltu x16, x9, .LBB1_13
	jal x0, .LBB1_22
.LBB1_17:                               //  %if.then46.i
                                        //    in Loop: Header=BB1_13 Depth=1
	add x15, x15, 1
	add x16, x14, x15
	bltu x16, x9, .LBB1_13
	jal x0, .LBB1_22
.LBB1_1:
	seqz x24, x0
	mv x11, x6
	mv x12, x24
.LBB1_22:                               //  %while.end55.i
	add x20, x6, 1
	add x13, x11, 1
	bltu x13, x20, .LBB1_24
.LBB1_23:                               //  %while.end55.i
	mv x24, x12
.LBB1_24:                               //  %while.end55.i
	mv x11, x0
	add x23, sp, 28
.LBB1_25:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x12, x11, x23
	add x11, x11, 4
	sw x9, 0 ( x12 )
	xor x12, x11, 1024
	bltu x0, x12, .LBB1_25
.LBB1_26:                               //  %for.cond1.preheader
	bltu x13, x20, .LBB1_28
.LBB1_27:                               //  %for.cond1.preheader
	mv x20, x13
.LBB1_28:                               //  %for.cond1.preheader
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	beq x0, x9, .LBB1_31
.LBB1_29:                               //  %for.body3.preheader
	add x10, x9, -1
	mv x11, x19
.LBB1_30:                               //  %for.body3
                                        //  =>This Inner Loop Header: Depth=1
	lbu x12, 0 ( x11 )
	add x11, x11, 1
	sll x12, x12, 2&31
	add x12, x12, x23
	sw x10, 0 ( x12 )
	add x10, x10, -1
	xor x12, x10, -1
	bltu x0, x12, .LBB1_30
.LBB1_31:                               //  %for.end9
	add x11, x24, x19
	mv x10, x19
	mv x12, x20
	jal memcmp
	beq x0, x10, .LBB1_32
.LBB1_53:                               //  %if.else77
	lui x10, %hi( 2048 )
	add x10, x10, %lo( 2048 )
	sub x24, x9, x20
	bltu x20, x24, .LBB1_55
.LBB1_54:                               //  %if.else77
	mv x24, x20
.LBB1_55:                               //  %if.else77
	lw x15, 24 ( sp )               //  4-byte Folded Reload
	or x22, x10, x9
	add x25, x9, -1
	mv x27, x0
	bgeu x20, x25, .LBB1_56
.LBB1_64:                               //  %while.cond88.us.preheader
	add fp, x20, x19
	add x21, x19, -1
	add x26, x15, -1
	mv x19, x27
	sub x10, x18, x9
	bltu x10, x19, .LBB1_66
.LBB1_67:                               //  %while.body101.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_69 Depth 2
                                        //      Child Loop BB1_72 Depth 2
	add x10, x19, x25
	add x10, x10, x15
	lbu x10, 0 ( x10 )
	sll x10, x10, 2&31
	add x10, x10, x23
	lw x10, 0 ( x10 )
	beq x0, x10, .LBB1_68
.LBB1_80:                               //  %if.then109.us
                                        //    in Loop: Header=BB1_67 Depth=1
	add x19, x19, x10
	sub x10, x18, x9
	bltu x10, x19, .LBB1_66
	jal x0, .LBB1_67
.LBB1_68:                               //  %land.rhs116.us.preheader
                                        //    in Loop: Header=BB1_67 Depth=1
	add x10, x19, x15
	add x11, x20, x10
	mv x10, x27
.LBB1_69:                               //  %land.rhs116.us
                                        //    Parent Loop BB1_67 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12, x10, fp
	add x13, x10, x11
	lbu x13, 0 ( x13 )
	lbu x12, 0 ( x12 )
	bne x12, x13, .LBB1_75
.LBB1_70:                               //  %while.body125.us
                                        //    in Loop: Header=BB1_69 Depth=2
	add x10, x10, 1
	add x12, x10, x20
	bltu x12, x25, .LBB1_69
.LBB1_71:                               //  %while.cond133.us.preheader
                                        //    in Loop: Header=BB1_67 Depth=1
	add x10, x19, x26
	mv x11, x20
.LBB1_72:                               //  %while.cond133.us
                                        //    Parent Loop BB1_67 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beq x0, x11, .LBB1_76
.LBB1_73:                               //  %land.rhs136.us
                                        //    in Loop: Header=BB1_72 Depth=2
	add x13, x11, x21
	add x12, x11, -1
	add x11, x11, x10
	lbu x14, 0 ( x11 )
	lbu x13, 0 ( x13 )
	mv x11, x12
	beq x13, x14, .LBB1_72
.LBB1_74:                               //    in Loop: Header=BB1_67 Depth=1
	mv x10, x24
.LBB1_75:                               //  %if.end158.us
                                        //    in Loop: Header=BB1_67 Depth=1
	add x10, x10, x19
	add x19, x10, 1
	sub x10, x18, x9
	bgeu x10, x19, .LBB1_67
.LBB1_66:                               //  %lor.rhs92.us
	add x10, x18, x15
	mv x11, x22
	jal strnlen
	lw x15, 24 ( sp )               //  4-byte Folded Reload
	add x18, x18, x10
	sub x10, x18, x9
	bgeu x10, x19, .LBB1_67
	jal x0, .LBB1_77
.LBB1_32:                               //  %while.cond.preheader
	lw x15, 24 ( sp )               //  4-byte Folded Reload
	seqz x10, x0
	sub x10, x10, x20
	sw x10, 12 ( sp )               //  4-byte Folded Spill
	add x10, x15, -1
	sw x10, 16 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 2048 )
	mv x27, x0
	add x10, x10, %lo( 2048 )
	or x10, x10, x9
	mv x22, x27
	add x26, x19, -1
	add x25, x9, -1
	mv x21, x27
	sub fp, x9, x24
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	sub x10, x18, x9
	bgeu x10, x21, .LBB1_35
	jal x0, .LBB1_34
.LBB1_78:                               //  %if.else
                                        //    in Loop: Header=BB1_35 Depth=1
	lw x11, 12 ( sp )               //  4-byte Folded Reload
	add x10, x10, x11
.LBB1_40:                               //  %if.then24
                                        //    in Loop: Header=BB1_35 Depth=1
	mv x22, x27
.LBB1_41:                               //  %while.cond.backedge
                                        //    in Loop: Header=BB1_35 Depth=1
	add x21, x21, x10
	sub x10, x18, x9
	bgeu x10, x21, .LBB1_35
.LBB1_34:                               //  %lor.rhs
	lw x11, 20 ( sp )               //  4-byte Folded Reload
	add x10, x18, x15
	jal strnlen
	lw x15, 24 ( sp )               //  4-byte Folded Reload
	add x18, x18, x10
	sub x10, x18, x9
	bltu x10, x21, .LBB1_77
.LBB1_35:                               //  %while.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_46 Depth 2
                                        //      Child Loop BB1_49 Depth 2
	add x10, x21, x25
	add x10, x10, x15
	lbu x10, 0 ( x10 )
	sll x10, x10, 2&31
	add x10, x10, x23
	lw x10, 0 ( x10 )
	beq x0, x10, .LBB1_42
.LBB1_36:                               //  %if.then24
                                        //    in Loop: Header=BB1_35 Depth=1
	mv x11, fp
	bltu x10, x24, .LBB1_38
.LBB1_37:                               //  %if.then24
                                        //    in Loop: Header=BB1_35 Depth=1
	mv x11, x10
.LBB1_38:                               //  %if.then24
                                        //    in Loop: Header=BB1_35 Depth=1
	beq x22, x27, .LBB1_40
.LBB1_39:                               //  %if.then24
                                        //    in Loop: Header=BB1_35 Depth=1
	mv x10, x11
	jal x0, .LBB1_40
.LBB1_42:                               //  %if.end29
                                        //    in Loop: Header=BB1_35 Depth=1
	mv x10, x22
	bltu x20, x22, .LBB1_44
.LBB1_43:                               //  %if.end29
                                        //    in Loop: Header=BB1_35 Depth=1
	mv x10, x20
.LBB1_44:                               //  %if.end29
                                        //    in Loop: Header=BB1_35 Depth=1
	bgeu x10, x25, .LBB1_48
.LBB1_45:                               //  %land.rhs.preheader
                                        //    in Loop: Header=BB1_35 Depth=1
	add x11, x21, x15
.LBB1_46:                               //  %land.rhs
                                        //    Parent Loop BB1_35 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12, x10, x19
	add x13, x10, x11
	lbu x13, 0 ( x13 )
	lbu x12, 0 ( x12 )
	bne x12, x13, .LBB1_78
.LBB1_47:                               //  %while.body40
                                        //    in Loop: Header=BB1_46 Depth=2
	add x10, x10, 1
	bltu x10, x25, .LBB1_46
.LBB1_48:                               //  %while.cond47.preheader
                                        //    in Loop: Header=BB1_35 Depth=1
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	mv x12, x20
	add x10, x21, x10
.LBB1_49:                               //  %while.cond47
                                        //    Parent Loop BB1_35 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x11, x12
	bgeu x22, x11, .LBB1_51
.LBB1_50:                               //  %land.rhs51
                                        //    in Loop: Header=BB1_49 Depth=2
	add x13, x11, x26
	add x14, x11, x10
	lbu x14, 0 ( x14 )
	lbu x13, 0 ( x13 )
	add x12, x11, -1
	beq x13, x14, .LBB1_49
.LBB1_51:                               //  %while.end61
                                        //    in Loop: Header=BB1_35 Depth=1
	add x12, x22, 1
	mv x10, x24
	mv x22, fp
	bgeu x11, x12, .LBB1_41
.LBB1_52:                               //  %cleanup
	add x27, x21, x15
	jal x0, .LBB1_77
.LBB1_56:                               //  %while.cond88.preheader
	add fp, x19, -1
	add x21, x15, -1
	mv x19, x27
	sub x10, x18, x9
	bltu x10, x19, .LBB1_58
.LBB1_59:                               //  %while.body101
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_61 Depth 2
	add x10, x19, x25
	add x10, x10, x15
	lbu x10, 0 ( x10 )
	sll x10, x10, 2&31
	add x10, x10, x23
	lw x10, 0 ( x10 )
	beq x0, x10, .LBB1_60
.LBB1_79:                               //  %if.then109
                                        //    in Loop: Header=BB1_59 Depth=1
	add x19, x19, x10
	sub x10, x18, x9
	bltu x10, x19, .LBB1_58
	jal x0, .LBB1_59
.LBB1_60:                               //  %while.cond133.preheader
                                        //    in Loop: Header=BB1_59 Depth=1
	add x10, x19, x21
	mv x11, x20
.LBB1_61:                               //  %while.cond133
                                        //    Parent Loop BB1_59 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beq x0, x11, .LBB1_76
.LBB1_62:                               //  %land.rhs136
                                        //    in Loop: Header=BB1_61 Depth=2
	add x13, x11, fp
	add x12, x11, -1
	add x11, x11, x10
	lbu x14, 0 ( x11 )
	lbu x13, 0 ( x13 )
	mv x11, x12
	beq x13, x14, .LBB1_61
.LBB1_63:                               //  %if.end158
                                        //    in Loop: Header=BB1_59 Depth=1
	add x10, x24, x19
	add x19, x10, 1
	sub x10, x18, x9
	bgeu x10, x19, .LBB1_59
.LBB1_58:                               //  %lor.rhs92
	add x10, x18, x15
	mv x11, x22
	jal strnlen
	lw x15, 24 ( sp )               //  4-byte Folded Reload
	add x18, x18, x10
	sub x10, x18, x9
	bgeu x10, x19, .LBB1_59
	jal x0, .LBB1_77
.LBB1_76:                               //  %cleanup160
	add x27, x19, x15
.LBB1_77:                               //  %cleanup164
	mv x10, x27
	lw fp, 1052 ( sp )              //  4-byte Folded Reload
	lw x27, 1056 ( sp )             //  4-byte Folded Reload
	lw x26, 1060 ( sp )             //  4-byte Folded Reload
	lw x25, 1064 ( sp )             //  4-byte Folded Reload
	lw x24, 1068 ( sp )             //  4-byte Folded Reload
	lw x23, 1072 ( sp )             //  4-byte Folded Reload
	lw x22, 1076 ( sp )             //  4-byte Folded Reload
	lw x21, 1080 ( sp )             //  4-byte Folded Reload
	lw x20, 1084 ( sp )             //  4-byte Folded Reload
	lw x19, 1088 ( sp )             //  4-byte Folded Reload
	lw x18, 1092 ( sp )             //  4-byte Folded Reload
	lw x9, 1096 ( sp )              //  4-byte Folded Reload
	lw ra, 1100 ( sp )              //  4-byte Folded Reload
	add sp, sp, 1104
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	two_way_long_needle, .Lfunc_end1-two_way_long_needle
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
