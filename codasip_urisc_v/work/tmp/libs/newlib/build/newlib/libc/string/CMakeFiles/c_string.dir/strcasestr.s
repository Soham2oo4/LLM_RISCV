	.text
	.file	"strcasestr.c"
	.globl	strcasestr              //  -- Begin function strcasestr
	.type	strcasestr,@function
strcasestr:                             //  @strcasestr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	mv x21, x11
	sw fp, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x10
	lbu x17, 0 ( x21 )
	lbu x15, 0 ( fp )
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	seqz x16, x17
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	beq x0, x15, .LBB0_1
.LBB0_2:                                //  %land.rhs.preheader
	lui x10, %hi( _ctype_ )
	seqz x12, x0
	add x10, x10, %lo( _ctype_ )
	add x14, x10, 1
	add x13, fp, 1
	mv x10, x21
	mv x11, x12
	and x16, x16, 1
	beq x0, x16, .LBB0_4
	jal x0, .LBB0_11
.LBB0_8:                                //  %while.body
                                        //    in Loop: Header=BB0_4 Depth=1
	xor x15, x16, x15
	seqz x15, x15
	lbu x17, 1 ( x10 )
	and x11, x15, x11
	lbu x15, 0 ( x13 )
	add x5, x13, 1
	seqz x16, x17
	mv x13, x5
	add x10, x10, 1
	beq x0, x15, .LBB0_9
.LBB0_3:                                //  %land.rhs
                                        //    in Loop: Header=BB0_4 Depth=1
	and x16, x16, 1
	bltu x0, x16, .LBB0_11
.LBB0_4:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	and x16, x17, 255
	add x17, x16, x14
	lbu x17, 0 ( x17 )
	and x17, x17, 3
	bne x17, x12, .LBB0_6
.LBB0_5:                                //    in Loop: Header=BB0_4 Depth=1
	add x16, x16, 32
.LBB0_6:                                //  %while.body
                                        //    in Loop: Header=BB0_4 Depth=1
	and x15, x15, 255
	add x17, x15, x14
	lbu x17, 0 ( x17 )
	and x17, x17, 3
	bne x17, x12, .LBB0_8
.LBB0_7:                                //    in Loop: Header=BB0_4 Depth=1
	add x15, x15, 32
	jal x0, .LBB0_8
.LBB0_1:
	seqz x11, x0
	mv x10, x21
.LBB0_9:                                //  %while.end
	beq x0, x16, .LBB0_10
.LBB0_11:                               //  %if.end
	beq x0, x11, .LBB0_13
.LBB0_12:
	mv x9, fp
	jal x0, .LBB0_75
.LBB0_10:
	mv x9, x0
	jal x0, .LBB0_75
.LBB0_13:                               //  %if.end31
	sub x18, x10, x21
	add x19, fp, 1
	add x10, x0, 31
	bltu x10, x18, .LBB0_74
.LBB0_14:                               //  %if.then35
	add x12, sp, 24
	mv x10, x21
	mv x11, x18
	jal critical_factorization
	lw x23, 24 ( sp )
	mv x20, x10
	mv x10, x21
	mv x12, x20
	add x11, x23, x21
	jal strncasecmp
	sw x19, 20 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB0_15
.LBB0_40:                               //  %if.else106.i
	sub x24, x18, x20
	mv x10, x24
	bltu x20, x24, .LBB0_42
.LBB0_41:                               //  %if.else106.i
	mv x10, x20
.LBB0_42:                               //  %if.else106.i
	mv x9, x0
	seqz x23, x0
	add x22, x10, 1
	add x10, x18, fp
	mv x11, x9
	mv x12, x23
	sw x22, 24 ( sp )
	jal memchr
	beq x0, x18, .LBB0_75
.LBB0_43:                               //  %if.else106.i
	bltu x0, x10, .LBB0_75
.LBB0_44:                               //  %while.cond127.preheader.lr.ph.i
	mv x9, x0
	bgeu x20, x18, .LBB0_45
.LBB0_55:                               //  %while.cond127.preheader.us.i.preheader
	add x10, fp, x20
	add x10, x10, 1
	sw x10, 16 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _ctype_ )
	add x10, x10, %lo( _ctype_ )
	add x19, x20, x21
	add x25, x21, -1
	add x27, x10, 1
	mv x11, x18
	mv x21, x9
.LBB0_56:                               //  %while.cond127.preheader.us.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_57 Depth 2
                                        //      Child Loop BB0_65 Depth 2
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	add x12, x21, x10
	mv x10, x9
.LBB0_57:                               //  %land.rhs130.us.i
                                        //    Parent Loop BB0_56 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13, x10, x12
	lbu x13, 0 ( x13 )
	add x14, x13, x27
	lbu x14, 0 ( x14 )
	and x14, x14, 3
	bne x14, x23, .LBB0_59
.LBB0_58:                               //    in Loop: Header=BB0_57 Depth=2
	add x13, x13, 32
.LBB0_59:                               //  %land.rhs130.us.i
                                        //    in Loop: Header=BB0_57 Depth=2
	add x14, x10, x19
	lbu x14, 0 ( x14 )
	add x15, x14, x27
	lbu x15, 0 ( x15 )
	and x15, x15, 3
	bne x15, x23, .LBB0_61
.LBB0_60:                               //    in Loop: Header=BB0_57 Depth=2
	add x14, x14, 32
.LBB0_61:                               //  %land.rhs130.us.i
                                        //    in Loop: Header=BB0_57 Depth=2
	add x10, x10, 1
	bne x14, x13, .LBB0_71
.LBB0_62:                               //  %while.body169.us.i
                                        //    in Loop: Header=BB0_57 Depth=2
	bne x24, x10, .LBB0_57
.LBB0_63:                               //  %while.cond176.us.i.preheader
                                        //    in Loop: Header=BB0_56 Depth=1
	add x10, x21, fp
	mv x12, x20
	bltu x0, x12, .LBB0_65
	jal x0, .LBB0_73
.LBB0_69:                               //  %land.rhs179.us.i
                                        //    in Loop: Header=BB0_65 Depth=2
	add x12, x12, -1
	bne x14, x13, .LBB0_70
.LBB0_64:                               //  %while.cond176.us.i
                                        //    in Loop: Header=BB0_65 Depth=2
	beq x0, x12, .LBB0_73
.LBB0_65:                               //  %land.rhs179.us.i
                                        //    Parent Loop BB0_56 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13, x12, x10
	lbu x13, 0 ( x13 )
	add x14, x13, x27
	lbu x14, 0 ( x14 )
	and x14, x14, 3
	bne x14, x23, .LBB0_67
.LBB0_66:                               //    in Loop: Header=BB0_65 Depth=2
	add x13, x13, 32
.LBB0_67:                               //  %land.rhs179.us.i
                                        //    in Loop: Header=BB0_65 Depth=2
	add x14, x12, x25
	lbu x14, 0 ( x14 )
	add x15, x14, x27
	lbu x15, 0 ( x15 )
	and x15, x15, 3
	bne x15, x23, .LBB0_69
.LBB0_68:                               //    in Loop: Header=BB0_65 Depth=2
	add x14, x14, 32
	jal x0, .LBB0_69
.LBB0_70:                               //    in Loop: Header=BB0_56 Depth=1
	mv x10, x22
.LBB0_71:                               //  %if.end231.us.i
                                        //    in Loop: Header=BB0_56 Depth=1
	add x21, x21, x10
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	add x26, x18, x21
	sub x12, x26, x11
	add x10, x11, x10
	mv x11, x9
	jal memchr
	bltu x0, x10, .LBB0_75
.LBB0_72:                               //  %if.end231.us.i
                                        //    in Loop: Header=BB0_56 Depth=1
	mv x11, x26
	bltu x0, x26, .LBB0_56
	jal x0, .LBB0_75
.LBB0_74:                               //  %if.end36
	add x11, x18, -1
	mv x10, x19
	mv x12, x21
	mv x13, x18
	jal two_way_long_needle
	mv x9, x10
	jal x0, .LBB0_75
.LBB0_15:                               //  %while.cond.preheader.i
	mv x9, x0
	seqz x22, x0
	add x10, x18, fp
	mv x11, x9
	mv x12, x22
	jal memchr
	beq x0, x18, .LBB0_75
.LBB0_16:                               //  %while.cond.preheader.i
	bltu x0, x10, .LBB0_75
.LBB0_17:                               //  %while.body.lr.ph.i
	sub x10, x22, x20
	sw x10, 12 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _ctype_ )
	mv x9, x0
	add x10, x10, %lo( _ctype_ )
	add x27, x10, 1
	sub x10, x18, x23
	mv x26, x9
	add x25, x21, -1
	mv x11, x18
	mv x19, x9
	sw x10, 16 ( sp )               //  4-byte Folded Spill
.LBB0_18:                               //  %while.body.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_22 Depth 2
                                        //      Child Loop BB0_30 Depth 2
	mv x10, x26
	bltu x20, x26, .LBB0_20
.LBB0_19:                               //  %while.body.i
                                        //    in Loop: Header=BB0_18 Depth=1
	mv x10, x20
.LBB0_20:                               //  %while.body.i
                                        //    in Loop: Header=BB0_18 Depth=1
	lw x16, 20 ( sp )               //  4-byte Folded Reload
	bgeu x10, x18, .LBB0_28
.LBB0_21:                               //  %land.rhs9.i.preheader
                                        //    in Loop: Header=BB0_18 Depth=1
	add x12, x19, x16
.LBB0_22:                               //  %land.rhs9.i
                                        //    Parent Loop BB0_18 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13, x10, x12
	lbu x13, 0 ( x13 )
	add x14, x13, x27
	lbu x14, 0 ( x14 )
	and x14, x14, 3
	bne x14, x22, .LBB0_24
.LBB0_23:                               //    in Loop: Header=BB0_22 Depth=2
	add x13, x13, 32
.LBB0_24:                               //  %land.rhs9.i
                                        //    in Loop: Header=BB0_22 Depth=2
	add x14, x10, x21
	lbu x14, 0 ( x14 )
	add x15, x14, x27
	lbu x15, 0 ( x15 )
	and x15, x15, 3
	bne x15, x22, .LBB0_26
.LBB0_25:                               //    in Loop: Header=BB0_22 Depth=2
	add x14, x14, 32
.LBB0_26:                               //  %land.rhs9.i
                                        //    in Loop: Header=BB0_22 Depth=2
	bne x14, x13, .LBB0_37
.LBB0_27:                               //  %while.body43.i
                                        //    in Loop: Header=BB0_22 Depth=2
	add x10, x10, 1
	bltu x10, x18, .LBB0_22
.LBB0_28:                               //  %while.cond48.i.preheader
                                        //    in Loop: Header=BB0_18 Depth=1
	add x12, x19, fp
	mv x15, x20
	mv x10, x15
	bltu x26, x10, .LBB0_30
	jal x0, .LBB0_35
.LBB0_34:                               //  %land.rhs52.i
                                        //    in Loop: Header=BB0_30 Depth=2
	add x15, x10, -1
	bne x14, x13, .LBB0_35
.LBB0_29:                               //  %while.cond48.i
                                        //    in Loop: Header=BB0_30 Depth=2
	mv x10, x15
	bgeu x26, x10, .LBB0_35
.LBB0_30:                               //  %land.rhs52.i
                                        //    Parent Loop BB0_18 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13, x10, x12
	lbu x13, 0 ( x13 )
	add x14, x13, x27
	lbu x14, 0 ( x14 )
	and x14, x14, 3
	bne x14, x22, .LBB0_32
.LBB0_31:                               //    in Loop: Header=BB0_30 Depth=2
	add x13, x13, 32
.LBB0_32:                               //  %land.rhs52.i
                                        //    in Loop: Header=BB0_30 Depth=2
	add x14, x10, x25
	lbu x14, 0 ( x14 )
	add x15, x14, x27
	lbu x15, 0 ( x15 )
	and x15, x15, 3
	bne x15, x22, .LBB0_34
.LBB0_33:                               //    in Loop: Header=BB0_30 Depth=2
	add x14, x14, 32
	jal x0, .LBB0_34
.LBB0_35:                               //  %while.end92.i
                                        //    in Loop: Header=BB0_18 Depth=1
	add x13, x26, 1
	lw x26, 16 ( sp )               //  4-byte Folded Reload
	mv x12, x23
	bgeu x10, x13, .LBB0_38
	jal x0, .LBB0_36
.LBB0_37:                               //  %if.else.i
                                        //    in Loop: Header=BB0_18 Depth=1
	lw x12, 12 ( sp )               //  4-byte Folded Reload
	mv x26, x9
	add x12, x10, x12
.LBB0_38:                               //  %if.end104.i
                                        //    in Loop: Header=BB0_18 Depth=1
	add x19, x19, x12
	add x24, x18, x19
	add x10, x11, x16
	sub x12, x24, x11
	mv x11, x9
	jal memchr
	bltu x0, x10, .LBB0_75
.LBB0_39:                               //  %if.end104.i
                                        //    in Loop: Header=BB0_18 Depth=1
	mv x11, x24
	bltu x0, x24, .LBB0_18
	jal x0, .LBB0_75
.LBB0_45:                               //  %while.cond127.preheader.i.preheader
	lui x10, %hi( _ctype_ )
	add x10, x10, %lo( _ctype_ )
	add x19, x21, -1
	add x24, x10, 1
	mv x25, x18
	mv x21, x9
.LBB0_46:                               //  %while.cond127.preheader.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_48 Depth 2
	mv x10, x20
	bltu x0, x10, .LBB0_48
	jal x0, .LBB0_73
.LBB0_52:                               //  %land.rhs179.i
                                        //    in Loop: Header=BB0_48 Depth=2
	add x10, x10, -1
	bne x12, x11, .LBB0_53
.LBB0_47:                               //  %while.cond176.i
                                        //    in Loop: Header=BB0_48 Depth=2
	beq x0, x10, .LBB0_73
.LBB0_48:                               //  %land.rhs179.i
                                        //    Parent Loop BB0_46 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x11, x10, fp
	lbu x11, 0 ( x11 )
	add x12, x11, x24
	lbu x12, 0 ( x12 )
	and x12, x12, 3
	bne x12, x23, .LBB0_50
.LBB0_49:                               //    in Loop: Header=BB0_48 Depth=2
	add x11, x11, 32
.LBB0_50:                               //  %land.rhs179.i
                                        //    in Loop: Header=BB0_48 Depth=2
	add x12, x10, x19
	lbu x12, 0 ( x12 )
	add x13, x12, x24
	lbu x13, 0 ( x13 )
	and x13, x13, 3
	bne x13, x23, .LBB0_52
.LBB0_51:                               //    in Loop: Header=BB0_48 Depth=2
	add x12, x12, 32
	jal x0, .LBB0_52
.LBB0_53:                               //  %if.end231.i
                                        //    in Loop: Header=BB0_46 Depth=1
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	add x21, x22, x21
	mv x11, x9
	mv x12, x22
	add x10, x25, x10
	add x25, x18, x21
	jal memchr
	beq x0, x25, .LBB0_75
.LBB0_54:                               //  %if.end231.i
                                        //    in Loop: Header=BB0_46 Depth=1
	add fp, x22, fp
	beq x0, x10, .LBB0_46
	jal x0, .LBB0_75
.LBB0_73:                               //  %if.then223.i
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	add x9, x21, x10
	jal x0, .LBB0_75
.LBB0_36:                               //  %cleanup.i
	add x9, x19, x16
.LBB0_75:                               //  %cleanup
	mv x10, x9
	lw fp, 28 ( sp )                //  4-byte Folded Reload
	lw x27, 32 ( sp )               //  4-byte Folded Reload
	lw x26, 36 ( sp )               //  4-byte Folded Reload
	lw x25, 40 ( sp )               //  4-byte Folded Reload
	lw x24, 44 ( sp )               //  4-byte Folded Reload
	lw x23, 48 ( sp )               //  4-byte Folded Reload
	lw x22, 52 ( sp )               //  4-byte Folded Reload
	lw x21, 56 ( sp )               //  4-byte Folded Reload
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	lw x19, 64 ( sp )               //  4-byte Folded Reload
	lw x18, 68 ( sp )               //  4-byte Folded Reload
	lw x9, 72 ( sp )                //  4-byte Folded Reload
	lw ra, 76 ( sp )                //  4-byte Folded Reload
	add sp, sp, 80
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	strcasestr, .Lfunc_end0-strcasestr
	.cfi_endproc
                                        //  -- End function
	.type	two_way_long_needle,@function //  -- Begin function two_way_long_needle
two_way_long_needle:                    //  @two_way_long_needle
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -1120
	.cfi_adjust_cfa_offset 1120
	sw x9, 1112 ( sp )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20, 1100 ( sp )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x20, x12
	mv x9, x13
	sw x19, 1104 ( sp )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x11
	sw x10, 36 ( sp )               //  4-byte Folded Spill
	add x12, sp, 1064
	mv x10, x20
	mv x11, x9
	sw ra, 1116 ( sp )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 1108 ( sp )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21, 1096 ( sp )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 1092 ( sp )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 1088 ( sp )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 1084 ( sp )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 1080 ( sp )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 1076 ( sp )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 1072 ( sp )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 1068 ( sp )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	jal critical_factorization
	mv x27, x10
	mv x10, x0
	add x21, sp, 40
.LBB1_1:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x11, x10, x21
	add x10, x10, 4
	sw x9, 0 ( x11 )
	xor x11, x10, 1024
	bltu x0, x11, .LBB1_1
.LBB1_2:                                //  %for.cond1.preheader
	beq x0, x9, .LBB1_7
.LBB1_3:                                //  %for.body3.preheader
	lui x11, %hi( _ctype_ )
	add x10, x9, -1
	add x11, x11, %lo( _ctype_ )
	seqz x12, x0
	mv x13, x20
	jal x0, .LBB1_4
.LBB1_6:                                //  %for.body3
                                        //    in Loop: Header=BB1_4 Depth=1
	sll x14, x14, 2&31
	add x14, x14, x21
	sw x10, 0 ( x14 )
	add x10, x10, -1
	add x13, x13, 1
	xor x14, x10, -1
	beq x0, x14, .LBB1_7
.LBB1_4:                                //  %for.body3
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14, 0 ( x13 )
	add x15, x14, x11
	lbu x15, 1 ( x15 )
	and x15, x15, 3
	bne x15, x12, .LBB1_6
.LBB1_5:                                //    in Loop: Header=BB1_4 Depth=1
	add x14, x14, 32
	jal x0, .LBB1_6
.LBB1_7:                                //  %for.end16
	lw x22, 1064 ( sp )
	mv x10, x20
	mv x12, x27
	add x11, x22, x20
	jal strncasecmp
	beq x0, x10, .LBB1_8
.LBB1_40:                               //  %if.else172
	sub x10, x9, x27
	bltu x27, x10, .LBB1_42
.LBB1_41:                               //  %if.else172
	mv x10, x27
.LBB1_42:                               //  %if.else172
	add x22, x10, 1
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	mv fp, x0
	sub x12, x9, x19
	mv x11, fp
	add x10, x19, x10
	sw x22, 1064 ( sp )
	jal memchr
	beq x0, x9, .LBB1_81
.LBB1_43:                               //  %if.else172
	bltu x0, x10, .LBB1_81
.LBB1_44:                               //  %while.body193.lr.ph
	add x10, x9, -1
	bgeu x27, x10, .LBB1_45
.LBB1_59:                               //  %while.body193.us.preheader
	xor x10, x27, -1
	add x18, x9, x10
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	mv fp, x0
	mv x11, x9
	add x19, x20, -1
	add x12, x27, x10
	add x10, x10, -1
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _ctype_ )
	add x26, x10, %lo( _ctype_ )
	add x23, x27, x20
	sw x27, 28 ( sp )               //  4-byte Folded Spill
	seqz x27, x0
	add x25, x26, 1
	mv x20, fp
	sw x12, 32 ( sp )               //  4-byte Folded Spill
.LBB1_60:                               //  %while.body193.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_64 Depth 2
                                        //      Child Loop BB1_72 Depth 2
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	add x10, x10, x11
	lbu x12, -1 ( x10 )
	add x13, x12, x26
	lbu x13, 1 ( x13 )
	and x13, x13, 3
	bne x13, x27, .LBB1_62
.LBB1_61:                               //    in Loop: Header=BB1_60 Depth=1
	add x12, x12, 32
.LBB1_62:                               //  %while.body193.us
                                        //    in Loop: Header=BB1_60 Depth=1
	sll x12, x12, 2&31
	add x12, x12, x21
	lw x12, 0 ( x12 )
	bltu x0, x12, .LBB1_78
.LBB1_63:                               //  %land.rhs223.us.preheader
                                        //    in Loop: Header=BB1_60 Depth=1
	lw x12, 32 ( sp )               //  4-byte Folded Reload
	add x13, x20, x12
	mv x12, fp
.LBB1_64:                               //  %land.rhs223.us
                                        //    Parent Loop BB1_60 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x14, x12, x13
	lbu x14, 0 ( x14 )
	add x15, x14, x25
	lbu x15, 0 ( x15 )
	and x15, x15, 3
	bne x15, x27, .LBB1_66
.LBB1_65:                               //    in Loop: Header=BB1_64 Depth=2
	add x14, x14, 32
.LBB1_66:                               //  %land.rhs223.us
                                        //    in Loop: Header=BB1_64 Depth=2
	add x15, x12, x23
	lbu x15, 0 ( x15 )
	add x16, x15, x25
	lbu x16, 0 ( x16 )
	and x16, x16, 3
	bne x16, x27, .LBB1_68
.LBB1_67:                               //    in Loop: Header=BB1_64 Depth=2
	add x15, x15, 32
.LBB1_68:                               //  %land.rhs223.us
                                        //    in Loop: Header=BB1_64 Depth=2
	add x12, x12, 1
	bne x15, x14, .LBB1_78
.LBB1_69:                               //  %while.body262.us
                                        //    in Loop: Header=BB1_64 Depth=2
	bne x18, x12, .LBB1_64
.LBB1_70:                               //  %while.cond270.us.preheader
                                        //    in Loop: Header=BB1_60 Depth=1
	lw x12, 24 ( sp )               //  4-byte Folded Reload
	lw x13, 28 ( sp )               //  4-byte Folded Reload
	add x12, x20, x12
	bltu x0, x13, .LBB1_72
	jal x0, .LBB1_80
.LBB1_76:                               //  %land.rhs273.us
                                        //    in Loop: Header=BB1_72 Depth=2
	add x13, x13, -1
	bne x15, x14, .LBB1_77
.LBB1_71:                               //  %while.cond270.us
                                        //    in Loop: Header=BB1_72 Depth=2
	beq x0, x13, .LBB1_80
.LBB1_72:                               //  %land.rhs273.us
                                        //    Parent Loop BB1_60 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x14, x13, x12
	lbu x14, 0 ( x14 )
	add x15, x14, x25
	lbu x15, 0 ( x15 )
	and x15, x15, 3
	bne x15, x27, .LBB1_74
.LBB1_73:                               //    in Loop: Header=BB1_72 Depth=2
	add x14, x14, 32
.LBB1_74:                               //  %land.rhs273.us
                                        //    in Loop: Header=BB1_72 Depth=2
	add x15, x13, x19
	lbu x15, 0 ( x15 )
	add x16, x15, x25
	lbu x16, 0 ( x16 )
	and x16, x16, 3
	bne x16, x27, .LBB1_76
.LBB1_75:                               //    in Loop: Header=BB1_72 Depth=2
	add x15, x15, 32
	jal x0, .LBB1_76
.LBB1_77:                               //    in Loop: Header=BB1_60 Depth=1
	mv x12, x22
.LBB1_78:                               //  %while.cond183.backedge.us
                                        //    in Loop: Header=BB1_60 Depth=1
	add x20, x20, x12
	add x24, x9, x20
	sub x12, x24, x11
	mv x11, fp
	jal memchr
	beq x0, x24, .LBB1_81
.LBB1_79:                               //  %while.cond183.backedge.us
                                        //    in Loop: Header=BB1_60 Depth=1
	mv x11, x24
	beq x0, x10, .LBB1_60
	jal x0, .LBB1_81
.LBB1_8:                                //  %while.cond.preheader
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	mv fp, x0
	sub x12, x9, x19
	mv x11, fp
	add x10, x19, x10
	jal memchr
	beq x0, x9, .LBB1_81
.LBB1_9:                                //  %while.cond.preheader
	bltu x0, x10, .LBB1_81
.LBB1_10:                               //  %while.body.lr.ph
	seqz x23, x0
	sub x10, x23, x27
	sw x10, 16 ( sp )               //  4-byte Folded Spill
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	mv fp, x0
	mv x11, x9
	sw x27, 28 ( sp )               //  4-byte Folded Spill
	add x10, x10, -1
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _ctype_ )
	add x10, x10, %lo( _ctype_ )
	mv x18, fp
	add x25, x20, -1
	add x27, x9, -1
	sw x10, 32 ( sp )               //  4-byte Folded Spill
	add x26, x10, 1
	sub x10, x9, x22
	mv x19, fp
	sw x10, 24 ( sp )               //  4-byte Folded Spill
.LBB1_11:                               //  %while.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_25 Depth 2
                                        //      Child Loop BB1_33 Depth 2
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	lw x13, 32 ( sp )               //  4-byte Folded Reload
	add x10, x10, x11
	lbu x12, -1 ( x10 )
	add x13, x12, x13
	lbu x13, 1 ( x13 )
	and x13, x13, 3
	bne x13, x23, .LBB1_13
.LBB1_12:                               //    in Loop: Header=BB1_11 Depth=1
	add x12, x12, 32
.LBB1_13:                               //  %while.body
                                        //    in Loop: Header=BB1_11 Depth=1
	sll x12, x12, 2&31
	add x12, x12, x21
	lw x13, 0 ( x12 )
	beq x0, x13, .LBB1_21
.LBB1_14:                               //  %if.then48
                                        //    in Loop: Header=BB1_11 Depth=1
	lw x12, 24 ( sp )               //  4-byte Folded Reload
	bltu x13, x22, .LBB1_16
.LBB1_15:                               //  %if.then48
                                        //    in Loop: Header=BB1_11 Depth=1
	mv x12, x13
.LBB1_16:                               //  %if.then48
                                        //    in Loop: Header=BB1_11 Depth=1
	beq x18, fp, .LBB1_18
.LBB1_17:                               //  %if.then48
                                        //    in Loop: Header=BB1_11 Depth=1
	mv x13, x12
	jal x0, .LBB1_18
.LBB1_21:                               //  %if.end55
                                        //    in Loop: Header=BB1_11 Depth=1
	lw x13, 28 ( sp )               //  4-byte Folded Reload
	mv x12, x18
	bltu x13, x18, .LBB1_23
.LBB1_22:                               //  %if.end55
                                        //    in Loop: Header=BB1_11 Depth=1
	lw x12, 28 ( sp )               //  4-byte Folded Reload
.LBB1_23:                               //  %if.end55
                                        //    in Loop: Header=BB1_11 Depth=1
	bgeu x12, x27, .LBB1_31
.LBB1_24:                               //  %land.rhs66.preheader
                                        //    in Loop: Header=BB1_11 Depth=1
	lw x13, 36 ( sp )               //  4-byte Folded Reload
	add x13, x19, x13
.LBB1_25:                               //  %land.rhs66
                                        //    Parent Loop BB1_11 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x14, x12, x13
	lbu x14, 0 ( x14 )
	add x15, x14, x26
	lbu x15, 0 ( x15 )
	and x15, x15, 3
	bne x15, x23, .LBB1_27
.LBB1_26:                               //    in Loop: Header=BB1_25 Depth=2
	add x14, x14, 32
.LBB1_27:                               //  %land.rhs66
                                        //    in Loop: Header=BB1_25 Depth=2
	add x15, x12, x20
	lbu x15, 0 ( x15 )
	add x16, x15, x26
	lbu x16, 0 ( x16 )
	and x16, x16, 3
	bne x16, x23, .LBB1_29
.LBB1_28:                               //    in Loop: Header=BB1_25 Depth=2
	add x15, x15, 32
.LBB1_29:                               //  %land.rhs66
                                        //    in Loop: Header=BB1_25 Depth=2
	bne x15, x14, .LBB1_82
.LBB1_30:                               //  %while.body105
                                        //    in Loop: Header=BB1_25 Depth=2
	add x12, x12, 1
	bltu x12, x27, .LBB1_25
.LBB1_31:                               //  %while.cond112.preheader
                                        //    in Loop: Header=BB1_11 Depth=1
	lw x12, 20 ( sp )               //  4-byte Folded Reload
	lw x16, 28 ( sp )               //  4-byte Folded Reload
	add x13, x19, x12
	mv x12, x16
	bltu x18, x12, .LBB1_33
	jal x0, .LBB1_38
.LBB1_37:                               //  %land.rhs116
                                        //    in Loop: Header=BB1_33 Depth=2
	add x16, x12, -1
	bne x15, x14, .LBB1_38
.LBB1_32:                               //  %while.cond112
                                        //    in Loop: Header=BB1_33 Depth=2
	mv x12, x16
	bgeu x18, x12, .LBB1_38
.LBB1_33:                               //  %land.rhs116
                                        //    Parent Loop BB1_11 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x14, x12, x13
	lbu x14, 0 ( x14 )
	add x15, x14, x26
	lbu x15, 0 ( x15 )
	and x15, x15, 3
	bne x15, x23, .LBB1_35
.LBB1_34:                               //    in Loop: Header=BB1_33 Depth=2
	add x14, x14, 32
.LBB1_35:                               //  %land.rhs116
                                        //    in Loop: Header=BB1_33 Depth=2
	add x15, x12, x25
	lbu x15, 0 ( x15 )
	add x16, x15, x26
	lbu x16, 0 ( x16 )
	and x16, x16, 3
	bne x16, x23, .LBB1_37
.LBB1_36:                               //    in Loop: Header=BB1_33 Depth=2
	add x15, x15, 32
	jal x0, .LBB1_37
.LBB1_38:                               //  %while.end156
                                        //    in Loop: Header=BB1_11 Depth=1
	add x14, x18, 1
	lw x18, 24 ( sp )               //  4-byte Folded Reload
	mv x13, x22
	bgeu x12, x14, .LBB1_19
	jal x0, .LBB1_39
.LBB1_82:                               //  %if.else
                                        //    in Loop: Header=BB1_11 Depth=1
	lw x13, 16 ( sp )               //  4-byte Folded Reload
	add x13, x12, x13
.LBB1_18:                               //  %if.then48
                                        //    in Loop: Header=BB1_11 Depth=1
	mv x18, fp
.LBB1_19:                               //  %while.cond.backedge
                                        //    in Loop: Header=BB1_11 Depth=1
	add x19, x19, x13
	add x24, x9, x19
	sub x12, x24, x11
	mv x11, fp
	jal memchr
	beq x0, x24, .LBB1_81
.LBB1_20:                               //  %while.cond.backedge
                                        //    in Loop: Header=BB1_11 Depth=1
	mv x11, x24
	beq x0, x10, .LBB1_11
	jal x0, .LBB1_81
.LBB1_45:                               //  %while.body193.preheader
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	mv fp, x0
	add x18, x20, -1
	seqz x24, x0
	add x19, x10, -1
	lui x10, %hi( _ctype_ )
	add x23, x10, %lo( _ctype_ )
	add x25, x23, 1
	mv x11, x9
	mv x20, fp
.LBB1_46:                               //  %while.body193
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_51 Depth 2
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	add x10, x10, x11
	lbu x12, -1 ( x10 )
	add x13, x12, x23
	lbu x13, 1 ( x13 )
	and x13, x13, 3
	bne x13, x24, .LBB1_48
.LBB1_47:                               //    in Loop: Header=BB1_46 Depth=1
	add x12, x12, 32
.LBB1_48:                               //  %while.body193
                                        //    in Loop: Header=BB1_46 Depth=1
	sll x12, x12, 2&31
	add x12, x12, x21
	lw x12, 0 ( x12 )
	bltu x0, x12, .LBB1_57
.LBB1_49:                               //  %while.cond270.preheader
                                        //    in Loop: Header=BB1_46 Depth=1
	add x12, x20, x19
	mv x13, x27
	bltu x0, x13, .LBB1_51
	jal x0, .LBB1_80
.LBB1_55:                               //  %land.rhs273
                                        //    in Loop: Header=BB1_51 Depth=2
	add x13, x13, -1
	bne x15, x14, .LBB1_56
.LBB1_50:                               //  %while.cond270
                                        //    in Loop: Header=BB1_51 Depth=2
	beq x0, x13, .LBB1_80
.LBB1_51:                               //  %land.rhs273
                                        //    Parent Loop BB1_46 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x14, x13, x12
	lbu x14, 0 ( x14 )
	add x15, x14, x25
	lbu x15, 0 ( x15 )
	and x15, x15, 3
	bne x15, x24, .LBB1_53
.LBB1_52:                               //    in Loop: Header=BB1_51 Depth=2
	add x14, x14, 32
.LBB1_53:                               //  %land.rhs273
                                        //    in Loop: Header=BB1_51 Depth=2
	add x15, x13, x18
	lbu x15, 0 ( x15 )
	add x16, x15, x25
	lbu x16, 0 ( x16 )
	and x16, x16, 3
	bne x16, x24, .LBB1_55
.LBB1_54:                               //    in Loop: Header=BB1_51 Depth=2
	add x15, x15, 32
	jal x0, .LBB1_55
.LBB1_56:                               //    in Loop: Header=BB1_46 Depth=1
	mv x12, x22
.LBB1_57:                               //  %while.cond183.backedge
                                        //    in Loop: Header=BB1_46 Depth=1
	add x20, x20, x12
	add x26, x9, x20
	sub x12, x26, x11
	mv x11, fp
	jal memchr
	beq x0, x26, .LBB1_81
.LBB1_58:                               //  %while.cond183.backedge
                                        //    in Loop: Header=BB1_46 Depth=1
	mv x11, x26
	beq x0, x10, .LBB1_46
	jal x0, .LBB1_81
.LBB1_80:                               //  %cleanup327
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	add fp, x20, x10
.LBB1_81:                               //  %cleanup331
	mv x10, fp
	lw fp, 1068 ( sp )              //  4-byte Folded Reload
	lw x27, 1072 ( sp )             //  4-byte Folded Reload
	lw x26, 1076 ( sp )             //  4-byte Folded Reload
	lw x25, 1080 ( sp )             //  4-byte Folded Reload
	lw x24, 1084 ( sp )             //  4-byte Folded Reload
	lw x23, 1088 ( sp )             //  4-byte Folded Reload
	lw x22, 1092 ( sp )             //  4-byte Folded Reload
	lw x21, 1096 ( sp )             //  4-byte Folded Reload
	lw x20, 1100 ( sp )             //  4-byte Folded Reload
	lw x19, 1104 ( sp )             //  4-byte Folded Reload
	lw x18, 1108 ( sp )             //  4-byte Folded Reload
	lw x9, 1112 ( sp )              //  4-byte Folded Reload
	lw ra, 1116 ( sp )              //  4-byte Folded Reload
	add sp, sp, 1120
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_39:                               //  %cleanup
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	add fp, x19, x10
	jal x0, .LBB1_81
.Lfunc_end1:
	.size	two_way_long_needle, .Lfunc_end1-two_way_long_needle
	.cfi_endproc
                                        //  -- End function
	.type	critical_factorization,@function //  -- Begin function critical_factorization
critical_factorization:                 //  @critical_factorization
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	sltiu x15, x11, 2
	bltu x0, x15, .LBB2_32
.LBB2_1:                                //  %while.body.preheader
	lui x14, %hi( _ctype_ )
	seqz x16, x0
	add x14, x14, %lo( _ctype_ )
	mv x28, x0
	add x13, x0, -1
	mv x17, x16
	mv x5, x16
	add x14, x14, 1
	mv x6, x16
	jal x0, .LBB2_2
.LBB2_7:                                //  %if.then
                                        //    in Loop: Header=BB2_2 Depth=1
	sub x17, x6, x13
	mv x5, x16
	mv x28, x6
	add x6, x5, x28
	bgeu x6, x11, .LBB2_14
.LBB2_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x7, x28
	add x28, x6, x10
	lbu x28, 0 ( x28 )
	add x29, x28, x14
	lbu x29, 0 ( x29 )
	and x29, x29, 3
	bne x29, x16, .LBB2_4
.LBB2_3:                                //    in Loop: Header=BB2_2 Depth=1
	add x28, x28, 32
.LBB2_4:                                //  %while.body
                                        //    in Loop: Header=BB2_2 Depth=1
	add x29, x5, x13
	add x29, x29, x10
	lbu x29, 0 ( x29 )
	add x30, x29, x14
	lbu x30, 0 ( x30 )
	and x30, x30, 3
	bne x30, x16, .LBB2_6
.LBB2_5:                                //    in Loop: Header=BB2_2 Depth=1
	add x29, x29, 32
.LBB2_6:                                //  %while.body
                                        //    in Loop: Header=BB2_2 Depth=1
	and x29, x29, 255
	and x28, x28, 255
	bltu x28, x29, .LBB2_7
.LBB2_8:                                //  %if.else
                                        //    in Loop: Header=BB2_2 Depth=1
	bne x28, x29, .LBB2_12
.LBB2_9:                                //  %if.then39
                                        //    in Loop: Header=BB2_2 Depth=1
	bne x5, x17, .LBB2_10
.LBB2_11:                               //  %if.else43
                                        //    in Loop: Header=BB2_2 Depth=1
	add x28, x5, x7
	mv x17, x5
	mv x5, x16
	add x6, x5, x28
	bltu x6, x11, .LBB2_2
	jal x0, .LBB2_14
.LBB2_12:                               //  %if.else45
                                        //    in Loop: Header=BB2_2 Depth=1
	add x28, x7, 1
	mv x5, x16
	mv x17, x16
	mv x13, x7
	add x6, x5, x28
	bltu x6, x11, .LBB2_2
	jal x0, .LBB2_14
.LBB2_10:                               //  %if.then42
                                        //    in Loop: Header=BB2_2 Depth=1
	add x5, x5, 1
	mv x28, x7
	add x6, x5, x28
	bltu x6, x11, .LBB2_2
.LBB2_14:                               //  %while.end
	sw x17, 0 ( x12 )
	bltu x0, x15, .LBB2_15
.LBB2_16:                               //  %while.body53.preheader
	seqz x17, x0
	mv x28, x0
	add x16, x0, -1
	mv x15, x17
	mv x5, x17
	mv x6, x17
	jal x0, .LBB2_17
.LBB2_22:                               //  %if.then96
                                        //    in Loop: Header=BB2_17 Depth=1
	sub x15, x6, x16
	mv x5, x17
	mv x28, x6
	add x6, x5, x28
	bgeu x6, x11, .LBB2_29
.LBB2_17:                               //  %while.body53
                                        //  =>This Inner Loop Header: Depth=1
	mv x7, x28
	add x28, x5, x16
	add x28, x28, x10
	lbu x28, 0 ( x28 )
	add x29, x28, x14
	lbu x29, 0 ( x29 )
	and x29, x29, 3
	bne x29, x17, .LBB2_19
.LBB2_18:                               //    in Loop: Header=BB2_17 Depth=1
	add x28, x28, 32
.LBB2_19:                               //  %while.body53
                                        //    in Loop: Header=BB2_17 Depth=1
	add x29, x6, x10
	lbu x29, 0 ( x29 )
	add x30, x29, x14
	lbu x30, 0 ( x30 )
	and x30, x30, 3
	bne x30, x17, .LBB2_21
.LBB2_20:                               //    in Loop: Header=BB2_17 Depth=1
	add x29, x29, 32
.LBB2_21:                               //  %while.body53
                                        //    in Loop: Header=BB2_17 Depth=1
	and x29, x29, 255
	and x28, x28, 255
	bltu x28, x29, .LBB2_22
.LBB2_23:                               //  %if.else99
                                        //    in Loop: Header=BB2_17 Depth=1
	bne x29, x28, .LBB2_27
.LBB2_24:                               //  %if.then104
                                        //    in Loop: Header=BB2_17 Depth=1
	bne x5, x15, .LBB2_25
.LBB2_26:                               //  %if.else109
                                        //    in Loop: Header=BB2_17 Depth=1
	add x28, x5, x7
	mv x15, x5
	mv x5, x17
	add x6, x5, x28
	bltu x6, x11, .LBB2_17
	jal x0, .LBB2_29
.LBB2_27:                               //  %if.else112
                                        //    in Loop: Header=BB2_17 Depth=1
	add x28, x7, 1
	mv x5, x17
	mv x15, x17
	mv x16, x7
	add x6, x5, x28
	bltu x6, x11, .LBB2_17
	jal x0, .LBB2_29
.LBB2_25:                               //  %if.then107
                                        //    in Loop: Header=BB2_17 Depth=1
	add x5, x5, 1
	mv x28, x7
	add x6, x5, x28
	bltu x6, x11, .LBB2_17
	jal x0, .LBB2_29
.LBB2_32:                               //  %while.end.thread
	seqz x15, x0
	add x13, x0, -1
	sw x15, 0 ( x12 )
	mv x16, x13
.LBB2_29:                               //  %while.end116
	add x10, x13, 1
	add x11, x16, 1
	bltu x11, x10, .LBB2_31
.LBB2_30:                               //  %if.end123
	mv x10, x11
	sw x15, 0 ( x12 )
.LBB2_31:                               //  %cleanup
	jr ra
.LBB2_15:
	add x16, x0, -1
	seqz x15, x0
	add x10, x13, 1
	add x11, x16, 1
	bgeu x11, x10, .LBB2_30
	jal x0, .LBB2_31
.Lfunc_end2:
	.size	critical_factorization, .Lfunc_end2-critical_factorization
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
