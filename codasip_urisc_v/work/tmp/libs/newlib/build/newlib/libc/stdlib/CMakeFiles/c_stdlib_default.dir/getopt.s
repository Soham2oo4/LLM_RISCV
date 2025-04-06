	.text
	.file	"getopt.c"
	.globl	getopt                  //  -- Begin function getopt
	.type	getopt,@function
getopt:                                 //  @getopt
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	lui x13, %hi( optind )
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9, x13, %lo( optind )
	lw x13, 0 ( x9 )
	sw fp, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	add fp, sp, 16
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x13, 4 ( fp )
	lui x13, %hi( opterr )
	add x18, x13, %lo( opterr )
	lw x13, 0 ( x18 )
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x13, 8 ( fp )
	lui x13, %hi( optopt )
	add x19, x13, %lo( optopt )
	lw x13, 0 ( x19 )
	sw x22, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	mv x16, fp
	sw x13, 12 ( fp )
	lui x13, %hi( optwhere )
	add x20, x13, %lo( optwhere )
	lw x13, 0 ( x20 )
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x13, 16 ( fp )
	lui x13, %hi( permute_from )
	add x21, x13, %lo( permute_from )
	lw x13, 0 ( x21 )
	sw x13, 20 ( fp )
	lui x13, %hi( optarg )
	add x22, x13, %lo( optarg )
	lw x13, 0 ( x22 )
	sw x13, 16 ( sp )
	lui x13, %hi( num_nonopts )
	add x23, x13, %lo( num_nonopts )
	lw x13, 0 ( x23 )
	sw x13, 40 ( sp )
	mv x13, x0
	mv x14, x13
	mv x15, x13
	jal getopt_internal
	lw x11, 16 ( sp )
	lw ra, 76 ( sp )                //  4-byte Folded Reload
	sw x11, 0 ( x22 )
	lw x11, 4 ( fp )
	lw x22, 52 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x9 )
	lw x11, 8 ( fp )
	lw x9, 72 ( sp )                //  4-byte Folded Reload
	sw x11, 0 ( x18 )
	lw x11, 12 ( fp )
	lw x18, 68 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x19 )
	lw x11, 16 ( fp )
	lw x19, 64 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x20 )
	lw x11, 20 ( fp )
	lw fp, 44 ( sp )                //  4-byte Folded Reload
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x21 )
	lw x11, 40 ( sp )
	lw x21, 56 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x23 )
	lw x23, 48 ( sp )               //  4-byte Folded Reload
	add sp, sp, 80
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	getopt, .Lfunc_end0-getopt
	.cfi_endproc
                                        //  -- End function
	.type	getopt_internal,@function //  -- Begin function getopt_internal
getopt_internal:                        //  @getopt_internal
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
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
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x16
	mv x23, x15
	mv x19, x14
	mv x9, x13
	mv x21, x12
	mv x18, x11
	mv x20, x10
	add x22, x0, -1
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	beq x0, x20, .LBB1_139
.LBB1_1:                                //  %entry
	beq x0, x18, .LBB1_139
.LBB1_2:                                //  %lor.lhs.false2
	bltu x0, x21, .LBB1_4
.LBB1_3:                                //  %lor.lhs.false2
	beq x0, x9, .LBB1_139
.LBB1_4:                                //  %lor.lhs.false5
	lw x10, 4 ( fp )
	bge x10, x20, .LBB1_139
.LBB1_5:                                //  %lor.lhs.false7
	sll x10, x10, 2&31
	add x10, x10, x18
	lw x10, 0 ( x10 )
	beq x0, x10, .LBB1_139
.LBB1_6:                                //  %if.end
	lui x11, %hi( .str )
	add x24, x11, %lo( .str )
	mv x11, x24
	jal strcmp
	lw x11, 4 ( fp )
	beq x0, x10, .LBB1_7
.LBB1_8:                                //  %if.end15
	bltu x0, x11, .LBB1_10
.LBB1_9:                                //  %if.then18
	seqz x10, x0
	sw x10, 16 ( fp )
	sw x10, 4 ( fp )
	sw x0, 24 ( fp )
	sw x0, 20 ( fp )
.LBB1_10:                               //  %if.end20
	beq x0, x21, .LBB1_11
.LBB1_12:                               //  %land.lhs.true22
	lbu x10, 0 ( x21 )
	xor x11, x10, 45
	beq x0, x11, .LBB1_14
.LBB1_13:                               //  %land.lhs.true22
	xor x11, x10, 43
	bltu x0, x11, .LBB1_18
.LBB1_14:                               //  %if.end37.thread
	add x11, x0, 45
	beq x10, x11, .LBB1_15
.LBB1_16:                               //  %if.end37.thread
	add x25, x0, 2
	add x21, x21, 1
	lbu x10, 0 ( x21 )
	add x11, x0, 58
	beq x10, x11, .LBB1_20
	jal x0, .LBB1_21
.LBB1_7:                                //  %if.then13
	add x10, x11, 1
	sw x10, 4 ( fp )
	jal x0, .LBB1_139
.LBB1_11:                               //  %if.end37.thread748
	lui x10, %hi( .str.1 )
	add x10, x10, %lo( .str.1 )
	jal getenv
	mv x21, x0
	snez x10, x10
	sll x25, x10, 1&31
	mv x26, x21
	lw x10, 16 ( fp )
	xor x10, x10, 1
	beq x0, x10, .LBB1_23
	jal x0, .LBB1_50
.LBB1_18:                               //  %if.end37
	lui x10, %hi( .str.1 )
	add x10, x10, %lo( .str.1 )
	jal getenv
	snez x10, x10
	sll x25, x10, 1&31
	lbu x10, 0 ( x21 )
	add x11, x0, 58
	beq x10, x11, .LBB1_20
	jal x0, .LBB1_21
.LBB1_15:
	seqz x25, x0
	add x21, x21, 1
	lbu x10, 0 ( x21 )
	add x11, x0, 58
	bne x10, x11, .LBB1_21
.LBB1_20:
	add x21, x21, 1
.LBB1_21:                               //  %land.lhs.true40
	xor x10, x10, 58
	seqz x26, x10
	lw x10, 16 ( fp )
	xor x10, x10, 1
	bltu x0, x10, .LBB1_50
.LBB1_23:                               //  %if.then50
	xor x10, x25, 1
	beq x0, x10, .LBB1_41
.LBB1_24:                               //  %if.then50
	xor x10, x25, 2
	bltu x0, x10, .LBB1_25
.LBB1_46:                               //  %sw.bb91
	lw x10, 4 ( fp )
	add x25, x0, 2
	sll x10, x10, 2&31
	add x10, x10, x18
	lw x10, 0 ( x10 )
	beq x0, x10, .LBB1_50
.LBB1_47:                               //  %lor.lhs.false.i643
	lbu x10, 0 ( x10 )
	xor x11, x10, 45
	beq x0, x11, .LBB1_50
.LBB1_48:                               //  %lor.rhs.i645
	beq x0, x23, .LBB1_139
.LBB1_49:                               //  %lor.rhs.i645
	xor x10, x10, 43
	beq x0, x10, .LBB1_50
	jal x0, .LBB1_139
.LBB1_41:                               //  %sw.bb81
	lw x10, 4 ( fp )
	add x25, x0, 2
	sll x11, x10, 2&31
	add x11, x11, x18
	lw x11, 0 ( x11 )
	beq x0, x11, .LBB1_50
.LBB1_42:                               //  %lor.lhs.false.i652
	lbu x12, 0 ( x11 )
	xor x13, x12, 45
	beq x0, x13, .LBB1_50
.LBB1_43:                               //  %lor.rhs.i654
	beq x0, x23, .LBB1_45
.LBB1_44:                               //  %lor.rhs.i654
	xor x12, x12, 43
	beq x0, x12, .LBB1_50
.LBB1_45:                               //  %if.then86
	add x10, x10, 1
	seqz x22, x0
	sw x11, 0 ( fp )
	sw x10, 4 ( fp )
	sw x22, 12 ( fp )
	jal x0, .LBB1_139
.LBB1_25:                               //  %sw.bb
	lw x11, 4 ( fp )
	sw x0, 24 ( fp )
	sll x10, x11, 2&31
	add x13, x10, x18
	lw x10, 0 ( x13 )
	sw x11, 20 ( fp )
	beq x0, x10, .LBB1_32
.LBB1_26:                               //  %lor.lhs.false.i.lr.ph
	seqz x12, x0
	add x13, x13, 4
	beq x0, x23, .LBB1_30
.LBB1_27:                               //  %lor.lhs.false.i.us
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14, 0 ( x10 )
	xor x15, x14, 43
	beq x0, x15, .LBB1_33
.LBB1_28:                               //  %lor.lhs.false.i.us
                                        //    in Loop: Header=BB1_27 Depth=1
	xor x14, x14, 45
	beq x0, x14, .LBB1_33
.LBB1_29:                               //  %while.body.us
                                        //    in Loop: Header=BB1_27 Depth=1
	add x10, x12, x11
	sw x10, 4 ( fp )
	lw x10, 0 ( x13 )
	add x14, x13, 4
	sw x12, 24 ( fp )
	add x12, x12, 1
	mv x13, x14
	bltu x0, x10, .LBB1_27
	jal x0, .LBB1_32
.LBB1_31:                               //  %while.body
                                        //    in Loop: Header=BB1_30 Depth=1
	add x10, x12, x11
	sw x10, 4 ( fp )
	lw x10, 0 ( x13 )
	add x14, x13, 4
	sw x12, 24 ( fp )
	add x12, x12, 1
	mv x13, x14
	beq x0, x10, .LBB1_32
.LBB1_30:                               //  %lor.lhs.false.i
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14, 0 ( x10 )
	xor x14, x14, 45
	bltu x0, x14, .LBB1_31
.LBB1_33:                               //  %if.else68
	mv x11, x24
	jal strcmp
	beq x0, x10, .LBB1_34
.LBB1_50:                               //  %if.end98
	lw x10, 4 ( fp )
	sll x10, x10, 2&31
	add x10, x10, x18
	lw x10, 0 ( x10 )
	beq x0, x10, .LBB1_139
.LBB1_51:                               //  %if.end104
	add x27, x0, -1
	beq x0, x9, .LBB1_76
.LBB1_52:                               //  %land.lhs.true107
	add x12, x0, 2
	mv x11, x24
	jal memcmp
	beq x0, x10, .LBB1_55
.LBB1_53:                               //  %lor.lhs.false113
	beq x0, x23, .LBB1_76
.LBB1_54:                               //  %land.lhs.true115
	lw x10, 4 ( fp )
	sll x10, x10, 2&31
	add x10, x10, x18
	lw x10, 0 ( x10 )
	lbu x10, 0 ( x10 )
	xor x10, x10, 43
	bltu x0, x10, .LBB1_76
.LBB1_55:                               //  %land.lhs.true122
	lw x10, 16 ( fp )
	xor x10, x10, 1
	bltu x0, x10, .LBB1_76
.LBB1_56:                               //  %if.then126
	lw x10, 4 ( fp )
	add x22, x0, 2
	mv x11, x24
	mv x12, x22
	sll x10, x10, 2&31
	add x10, x10, x18
	lw x10, 0 ( x10 )
	jal memcmp
	beq x0, x10, .LBB1_58
.LBB1_57:                               //  %if.then126.if.end134_crit_edge
	lw x22, 16 ( fp )
	jal x0, .LBB1_59
.LBB1_32:                               //  %if.then65
	sw x11, 4 ( fp )
	jal x0, .LBB1_139
.LBB1_58:                               //  %if.then132
	sw x22, 16 ( fp )
.LBB1_59:                               //  %if.end134
	lw x10, 4 ( fp )
	add x11, x0, 61
	sll x10, x10, 2&31
	add x10, x10, x18
	lw x10, 0 ( x10 )
	add x10, x22, x10
	jal strchr
	lw x12, 4 ( fp )
	mv x22, x10
	sll x10, x12, 2&31
	add x10, x10, x18
	beq x0, x22, .LBB1_60
.LBB1_61:                               //  %if.else150
	lw x10, 0 ( x10 )
	sub x10, x22, x10
	lw x13, 16 ( fp )
	lw x11, 0 ( x9 )
	sub x23, x10, x13
	bltu x0, x11, .LBB1_63
	jal x0, .LBB1_76
.LBB1_60:                               //  %if.then142
	lw x10, 0 ( x10 )
	jal strlen
	lw x12, 4 ( fp )
	sll x11, x12, 2&31
	add x11, x11, x18
	lw x11, 0 ( x11 )
	add x22, x10, x11
	lw x13, 16 ( fp )
	lw x11, 0 ( x9 )
	sub x23, x10, x13
	beq x0, x11, .LBB1_76
.LBB1_63:                               //  %for.body.preheader
	sw x26, 8 ( sp )                //  4-byte Folded Spill
	mv x27, x0
	add x26, x0, -1
	mv x24, x9
.LBB1_64:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	sll x10, x12, 2&31
	add x10, x10, x18
	lw x10, 0 ( x10 )
	mv x12, x23
	add x10, x13, x10
	jal memcmp
	beq x0, x10, .LBB1_70
.LBB1_65:                               //    in Loop: Header=BB1_64 Depth=1
	mv x10, x26
	lw x11, 16 ( x24 )
	bltu x0, x11, .LBB1_75
	jal x0, .LBB1_67
.LBB1_70:                               //  %if.then168
                                        //    in Loop: Header=BB1_64 Depth=1
	lw x10, 0 ( x24 )
	jal strlen
	beq x23, x10, .LBB1_68
.LBB1_71:                               //  %if.else175
                                        //    in Loop: Header=BB1_64 Depth=1
	mv x10, x27
	bge x26, x0, .LBB1_72
.LBB1_66:                               //  %for.inc
                                        //    in Loop: Header=BB1_64 Depth=1
	lw x11, 16 ( x24 )
	beq x0, x11, .LBB1_67
.LBB1_75:                               //  %for.inc.for.body_crit_edge
                                        //    in Loop: Header=BB1_64 Depth=1
	lw x13, 16 ( fp )
	lw x12, 4 ( fp )
	add x27, x27, 1
	add x24, x24, 16
	mv x26, x10
	jal x0, .LBB1_64
.LBB1_67:
	mv x27, x10
.LBB1_68:                               //  %for.end
	lw x26, 8 ( sp )                //  4-byte Folded Reload
	blt x27, x0, .LBB1_76
.LBB1_69:                               //  %if.end216.thread
	sll x10, x27, 4&31
	add x10, x10, x9
	mv x11, x0
	lw x10, 4 ( x10 )
	mv x21, x11
	xor x12, x10, 1
	bltu x0, x12, .LBB1_90
	jal x0, .LBB1_96
.LBB1_76:                               //  %if.end216
	beq x0, x21, .LBB1_114
.LBB1_77:                               //  %if.end216
	bge x27, x0, .LBB1_114
.LBB1_78:                               //  %if.then222
	lw x10, 4 ( fp )
	lw x11, 16 ( fp )
	sll x10, x10, 2&31
	add x10, x10, x18
	lw x10, 0 ( x10 )
	add x10, x11, x10
	lb x11, 0 ( x10 )
	mv x10, x21
	jal strchr
	mv x21, x10
	beq x0, x21, .LBB1_79
.LBB1_83:                               //  %if.end265
	lbu x10, 1 ( x21 )
	xor x10, x10, 58
	bltu x0, x10, .LBB1_84
.LBB1_85:                               //  %cond.true
	lbu x10, 2 ( x21 )
	add x11, x0, 58
	beq x10, x11, .LBB1_86
.LBB1_87:                               //  %cond.true
	seqz x10, x0
	jal x0, .LBB1_88
.LBB1_79:                               //  %if.then231
	lw x10, 8 ( fp )
	beq x0, x10, .LBB1_81
.LBB1_80:                               //  %if.then234
	lui x10, %hi( _impure_ptr )
	add x9, x10, %lo( _impure_ptr )
	lw x10, 0 ( x9 )
	lw x11, 12 ( x10 )
	lw x10, 0 ( x18 )
	jal fputs
	lw x10, 0 ( x9 )
	lw x11, 12 ( x10 )
	lui x10, %hi( .str.6 )
	add x10, x10, %lo( .str.6 )
	jal fputs
	lw x10, 4 ( fp )
	lw x11, 16 ( fp )
	sll x10, x10, 2&31
	add x10, x10, x18
	lw x10, 0 ( x10 )
	add x10, x11, x10
	lw x11, 0 ( x9 )
	lb x10, 0 ( x10 )
	lw x11, 12 ( x11 )
	jal fputc
	lw x10, 0 ( x9 )
	lw x11, 12 ( x10 )
	lui x10, %hi( .str.7 )
	add x10, x10, %lo( .str.7 )
	jal fputs
.LBB1_81:                               //  %if.end249
	lw x10, 16 ( fp )
	add x11, x10, 1
	lw x10, 4 ( fp )
	sw x11, 16 ( fp )
	sll x12, x10, 2&31
	add x12, x12, x18
	lw x12, 0 ( x12 )
	add x11, x11, x12
	lbu x11, 0 ( x11 )
	bltu x0, x11, .LBB1_74
.LBB1_82:                               //  %if.then259
	seqz x11, x0
	add x10, x10, 1
	sw x11, 16 ( fp )
	sw x10, 4 ( fp )
.LBB1_74:                               //  %if.end204
	add x22, x0, 63
	sw x22, 12 ( fp )
	jal x0, .LBB1_139
.LBB1_84:
	mv x10, x0
	jal x0, .LBB1_88
.LBB1_86:
	add x10, x0, 2
.LBB1_88:                               //  %cond.end
	lw x11, 4 ( fp )
	lb x12, 0 ( x21 )
	sll x11, x11, 2&31
	add x11, x11, x18
	sw x12, 12 ( fp )
	lw x11, 0 ( x11 )
	lw x12, 16 ( fp )
	add x12, x12, x11
	seqz x11, x0
	add x22, x12, 1
	xor x12, x10, 1
	beq x0, x12, .LBB1_96
.LBB1_90:                               //  %if.end283
	xor x10, x10, 2
	bltu x0, x10, .LBB1_113
.LBB1_91:                               //  %sw.bb284
	lbu x10, 0 ( x22 )
	add x11, x0, 61
	bne x10, x11, .LBB1_93
.LBB1_92:
	add x22, x22, 1
.LBB1_93:                               //  %sw.bb284
	lbu x12, 0 ( x22 )
	mv x10, x0
	mv x11, x10
	beq x12, x10, .LBB1_95
.LBB1_94:                               //  %sw.bb284
	mv x11, x22
.LBB1_95:                               //  %sw.bb284
	sw x11, 0 ( fp )
	seqz x11, x0
	sw x11, 16 ( fp )
	xor x11, x11, 1
	bltu x0, x25, .LBB1_130
	jal x0, .LBB1_119
.LBB1_96:                               //  %sw.bb300
	lbu x10, 0 ( x22 )
	add x11, x0, 61
	bne x10, x11, .LBB1_98
.LBB1_97:
	add x22, x22, 1
.LBB1_98:                               //  %sw.bb300
	lbu x10, 0 ( x22 )
	beq x0, x10, .LBB1_100
.LBB1_99:                               //  %if.then310
	seqz x11, x0
	sw x22, 0 ( fp )
	sw x11, 16 ( fp )
	mv x10, x0
	xor x11, x11, 1
	bltu x0, x25, .LBB1_130
	jal x0, .LBB1_119
.LBB1_113:                              //  %sw.bb362
	beq x0, x11, .LBB1_115
.LBB1_114:                              //  %if.then365
	lw x10, 16 ( fp )
	mv x12, x0
	add x11, x10, 1
	lw x10, 4 ( fp )
	sw x11, 16 ( fp )
	sll x10, x10, 2&31
	add x10, x10, x18
	lw x10, 0 ( x10 )
	add x10, x11, x10
	lbu x10, 0 ( x10 )
	bne x10, x12, .LBB1_116
.LBB1_115:
	seqz x11, x0
.LBB1_116:                              //  %if.end380
	sw x11, 16 ( fp )
	sw x0, 0 ( fp )
	mv x10, x0
	xor x11, x11, 1
	beq x0, x25, .LBB1_119
.LBB1_130:                              //  %if.else402
	bltu x0, x11, .LBB1_133
.LBB1_131:                              //  %if.then406
	lw x11, 4 ( fp )
	add x10, x11, x10
	add x10, x10, 1
	jal x0, .LBB1_132
.LBB1_100:                              //  %if.else313
	lw x10, 4 ( fp )
	add x10, x10, 1
	bge x10, x20, .LBB1_101
.LBB1_112:                              //  %if.else353
	sll x10, x10, 2&31
	add x10, x10, x18
	lw x10, 0 ( x10 )
	seqz x11, x0
	sw x11, 16 ( fp )
	sw x10, 0 ( fp )
	mv x10, x11
	xor x11, x11, 1
	bltu x0, x25, .LBB1_130
.LBB1_119:                              //  %land.lhs.true385
	bltu x0, x11, .LBB1_133
.LBB1_120:                              //  %land.lhs.true389
	lw x14, 24 ( fp )
	beq x0, x14, .LBB1_131
.LBB1_121:                              //  %if.then393
	lw x11, 20 ( fp )
	slti x15, x14, 2
	sll x12, x11, 2&31
	add x13, x12, x18
	add x12, x10, 1
	bltu x0, x15, .LBB1_124
.LBB1_122:                              //  %for.body.i.i.preheader
	add x16, x14, x11
	sll x16, x16, 2&31
	add x17, x18, x16
	sra x15, x14, 1&31
	mv x16, x0
	add x17, x17, -4
	mv x5, x13
.LBB1_123:                              //  %for.body.i.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x6, 0 ( x5 )
	lw x7, 0 ( x17 )
	add x16, x16, 1
	sw x7, 0 ( x5 )
	sw x6, 0 ( x17 )
	add x5, x5, 4
	add x17, x17, -4
	blt x16, x15, .LBB1_123
.LBB1_124:                              //  %reverse_argv_elements.exit.i
	add x15, x12, x14
	slti x16, x15, 2
	bltu x0, x16, .LBB1_127
.LBB1_125:                              //  %for.body.i23.i.preheader
	add x14, x14, x10
	add x14, x11, x14
	sll x14, x14, 2&31
	sra x15, x15, 1&31
	add x14, x14, x18
	mv x16, x0
	mv x17, x13
.LBB1_126:                              //  %for.body.i23.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x5, 0 ( x17 )
	lw x6, 0 ( x14 )
	add x16, x16, 1
	sw x6, 0 ( x17 )
	sw x5, 0 ( x14 )
	add x17, x17, 4
	add x14, x14, -4
	blt x16, x15, .LBB1_126
.LBB1_127:                              //  %reverse_argv_elements.exit24.i
	beq x0, x10, .LBB1_129
.LBB1_128:                              //  %for.body.i13.i.preheader
	sll x10, x10, 2&31
	add x10, x10, x13
	lw x14, 0 ( x10 )
	lw x15, 0 ( x13 )
	sw x14, 0 ( x13 )
	sw x15, 0 ( x10 )
.LBB1_129:                              //  %permute.exit
	add x10, x11, x12
.LBB1_132:                              //  %if.end412
	sw x10, 4 ( fp )
.LBB1_133:                              //  %if.end412
	blt x27, x0, .LBB1_138
.LBB1_134:                              //  %if.then415
	beq x0, x19, .LBB1_136
.LBB1_135:                              //  %if.then418
	sw x27, 0 ( x19 )
.LBB1_136:                              //  %if.end419
	sll x10, x27, 4&31
	add x10, x10, x9
	lw x22, 12 ( x10 )
	lw x10, 8 ( x10 )
	beq x0, x10, .LBB1_139
.LBB1_137:                              //  %if.then423
	sw x22, 0 ( x10 )
	mv x22, x0
	jal x0, .LBB1_139
.LBB1_138:                              //  %if.else430
	lw x22, 12 ( fp )
.LBB1_139:                              //  %cleanup
	mv x10, x22
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
.LBB1_34:                               //  %if.then74
	lw x10, 20 ( fp )
	lw x12, 24 ( fp )
	sll x11, x10, 2&31
	add x11, x11, x18
	slti x14, x12, 2
	add x13, x12, x10
	bltu x0, x14, .LBB1_37
.LBB1_35:                               //  %for.body.i.i667.preheader
	sll x15, x13, 2&31
	add x16, x18, x15
	sra x14, x12, 1&31
	mv x15, x0
	add x16, x16, -4
	mv x17, x11
.LBB1_36:                               //  %for.body.i.i667
                                        //  =>This Inner Loop Header: Depth=1
	lw x5, 0 ( x17 )
	lw x6, 0 ( x16 )
	add x15, x15, 1
	sw x6, 0 ( x17 )
	sw x5, 0 ( x16 )
	add x17, x17, 4
	add x16, x16, -4
	blt x15, x14, .LBB1_36
.LBB1_37:                               //  %reverse_argv_elements.exit.i671
	bge x0, x12, .LBB1_40
.LBB1_38:                               //  %for.body.i23.i678.preheader
	add x12, x12, 1
	sll x13, x13, 2&31
	sra x12, x12, 1&31
	add x13, x13, x18
	mv x14, x0
.LBB1_39:                               //  %for.body.i23.i678
                                        //  =>This Inner Loop Header: Depth=1
	lw x15, 0 ( x11 )
	lw x16, 0 ( x13 )
	add x14, x14, 1
	sw x16, 0 ( x11 )
	sw x15, 0 ( x13 )
	add x11, x11, 4
	add x13, x13, -4
	blt x14, x12, .LBB1_39
.LBB1_40:                               //  %permute.exit680
	add x10, x10, 1
	sw x10, 4 ( fp )
	jal x0, .LBB1_139
.LBB1_72:                               //  %if.else179
	lw x10, 8 ( fp )
	beq x0, x10, .LBB1_74
.LBB1_73:                               //  %if.then181
	lui x10, %hi( _impure_ptr )
	add x19, x10, %lo( _impure_ptr )
	lw x10, 0 ( x19 )
	lw x11, 12 ( x10 )
	lw x10, 0 ( x18 )
	jal fputs
	lw x10, 0 ( x19 )
	lw x11, 12 ( x10 )
	lui x10, %hi( .str.2 )
	add x10, x10, %lo( .str.2 )
	jal fputs
	lw x10, 4 ( fp )
	lw x11, 0 ( x19 )
	sll x10, x10, 2&31
	add x10, x10, x18
	lw x10, 0 ( x10 )
	lw x11, 12 ( x11 )
	jal fputs
	lw x10, 0 ( x19 )
	lw x11, 12 ( x10 )
	lui x10, %hi( .str.3 )
	add x10, x10, %lo( .str.3 )
	jal fputs
	lw x11, 0 ( x19 )
	sll x10, x26, 4&31
	add x10, x10, x9
	lw x10, 0 ( x10 )
	lw x11, 12 ( x11 )
	jal fputs
	lw x10, 0 ( x19 )
	lw x11, 12 ( x10 )
	lui x10, %hi( .str.4 )
	add x10, x10, %lo( .str.4 )
	jal fputs
	lw x11, 0 ( x19 )
	lw x10, 0 ( x24 )
	lw x11, 12 ( x11 )
	jal fputs
	lw x10, 0 ( x19 )
	lw x11, 12 ( x10 )
	lui x10, %hi( .str.5 )
	add x10, x10, %lo( .str.5 )
	jal fputs
	jal x0, .LBB1_74
.LBB1_101:                              //  %if.then318
	lw x11, 8 ( fp )
	beq x0, x11, .LBB1_108
.LBB1_102:                              //  %if.then321
	lui x11, %hi( _impure_ptr )
	lw x10, 0 ( x18 )
	add x18, x11, %lo( _impure_ptr )
	lw x11, 0 ( x18 )
	lw x11, 12 ( x11 )
	jal fputs
	lw x10, 0 ( x18 )
	lw x11, 12 ( x10 )
	lui x10, %hi( .str.8 )
	add x10, x10, %lo( .str.8 )
	jal fputs
	blt x27, x0, .LBB1_106
.LBB1_103:                              //  %if.then329
	lw x10, 0 ( x18 )
	lw x11, 12 ( x10 )
	add x10, x0, 45
	jal fputc
	lw x11, 0 ( x18 )
	sll x10, x27, 4&31
	add x10, x10, x9
	lw x10, 0 ( x10 )
	lw x11, 12 ( x11 )
	jal fputs
	mv x10, x0
	beq x26, x10, .LBB1_104
.LBB1_105:                              //  %if.then329
	add x10, x0, 58
	jal x0, .LBB1_107
.LBB1_106:                              //  %if.else339
	lw x10, 0 ( x18 )
	lw x11, 12 ( x10 )
	lb x10, 0 ( x21 )
	jal fputc
	lb x10, 0 ( x21 )
	jal x0, .LBB1_107
.LBB1_104:
	add x10, x0, 63
.LBB1_107:                              //  %if.end345
	sw x10, 12 ( fp )
	lw x10, 0 ( x18 )
	lw x11, 12 ( x10 )
	lui x10, %hi( .str.7 )
	add x10, x10, %lo( .str.7 )
	jal fputs
	lw x10, 4 ( fp )
	add x10, x10, 1
.LBB1_108:                              //  %if.end348
	mv x11, x0
	beq x26, x11, .LBB1_109
.LBB1_110:                              //  %if.end348
	add x22, x0, 58
	sw x10, 4 ( fp )
	jal x0, .LBB1_139
.LBB1_109:
	add x22, x0, 63
	sw x10, 4 ( fp )
	jal x0, .LBB1_139
.Lfunc_end1:
	.size	getopt_internal, .Lfunc_end1-getopt_internal
	.cfi_endproc
                                        //  -- End function
	.globl	getopt_long             //  -- Begin function getopt_long
	.type	getopt_long,@function
getopt_long:                            //  @getopt_long
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	lui x15, %hi( optind )
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9, x15, %lo( optind )
	lw x15, 0 ( x9 )
	sw fp, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	add fp, sp, 16
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x15, 4 ( fp )
	lui x15, %hi( opterr )
	add x18, x15, %lo( opterr )
	lw x15, 0 ( x18 )
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x15, 8 ( fp )
	lui x15, %hi( optopt )
	add x19, x15, %lo( optopt )
	lw x15, 0 ( x19 )
	sw x22, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	mv x16, fp
	sw x15, 12 ( fp )
	lui x15, %hi( optwhere )
	add x20, x15, %lo( optwhere )
	lw x15, 0 ( x20 )
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x15, 16 ( fp )
	lui x15, %hi( permute_from )
	add x21, x15, %lo( permute_from )
	lw x15, 0 ( x21 )
	sw x15, 20 ( fp )
	lui x15, %hi( optarg )
	add x22, x15, %lo( optarg )
	lw x15, 0 ( x22 )
	sw x15, 16 ( sp )
	lui x15, %hi( num_nonopts )
	add x23, x15, %lo( num_nonopts )
	lw x15, 0 ( x23 )
	sw x15, 40 ( sp )
	mv x15, x0
	jal getopt_internal
	lw x11, 16 ( sp )
	lw ra, 76 ( sp )                //  4-byte Folded Reload
	sw x11, 0 ( x22 )
	lw x11, 4 ( fp )
	lw x22, 52 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x9 )
	lw x11, 8 ( fp )
	lw x9, 72 ( sp )                //  4-byte Folded Reload
	sw x11, 0 ( x18 )
	lw x11, 12 ( fp )
	lw x18, 68 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x19 )
	lw x11, 16 ( fp )
	lw x19, 64 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x20 )
	lw x11, 20 ( fp )
	lw fp, 44 ( sp )                //  4-byte Folded Reload
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x21 )
	lw x11, 40 ( sp )
	lw x21, 56 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x23 )
	lw x23, 48 ( sp )               //  4-byte Folded Reload
	add sp, sp, 80
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	getopt_long, .Lfunc_end2-getopt_long
	.cfi_endproc
                                        //  -- End function
	.globl	getopt_long_only        //  -- Begin function getopt_long_only
	.type	getopt_long_only,@function
getopt_long_only:                       //  @getopt_long_only
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	lui x15, %hi( optind )
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9, x15, %lo( optind )
	lw x15, 0 ( x9 )
	sw fp, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	add fp, sp, 16
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x15, 4 ( fp )
	lui x15, %hi( opterr )
	add x18, x15, %lo( opterr )
	lw x15, 0 ( x18 )
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x15, 8 ( fp )
	lui x15, %hi( optopt )
	add x19, x15, %lo( optopt )
	lw x15, 0 ( x19 )
	sw x22, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	mv x16, fp
	sw x15, 12 ( fp )
	lui x15, %hi( optwhere )
	add x20, x15, %lo( optwhere )
	lw x15, 0 ( x20 )
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x15, 16 ( fp )
	lui x15, %hi( permute_from )
	add x21, x15, %lo( permute_from )
	lw x15, 0 ( x21 )
	sw x15, 20 ( fp )
	lui x15, %hi( optarg )
	add x22, x15, %lo( optarg )
	lw x15, 0 ( x22 )
	sw x15, 16 ( sp )
	lui x15, %hi( num_nonopts )
	add x23, x15, %lo( num_nonopts )
	lw x15, 0 ( x23 )
	sw x15, 40 ( sp )
	seqz x15, x0
	jal getopt_internal
	lw x11, 16 ( sp )
	lw ra, 76 ( sp )                //  4-byte Folded Reload
	sw x11, 0 ( x22 )
	lw x11, 4 ( fp )
	lw x22, 52 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x9 )
	lw x11, 8 ( fp )
	lw x9, 72 ( sp )                //  4-byte Folded Reload
	sw x11, 0 ( x18 )
	lw x11, 12 ( fp )
	lw x18, 68 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x19 )
	lw x11, 16 ( fp )
	lw x19, 64 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x20 )
	lw x11, 20 ( fp )
	lw fp, 44 ( sp )                //  4-byte Folded Reload
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x21 )
	lw x11, 40 ( sp )
	lw x21, 56 ( sp )               //  4-byte Folded Reload
	sw x11, 0 ( x23 )
	lw x23, 48 ( sp )               //  4-byte Folded Reload
	add sp, sp, 80
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end3:
	.size	getopt_long_only, .Lfunc_end3-getopt_long_only
	.cfi_endproc
                                        //  -- End function
	.globl	__getopt_r              //  -- Begin function __getopt_r
	.type	__getopt_r,@function
__getopt_r:                             //  @__getopt_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x16, x13
	mv x13, x0
	mv x14, x13
	mv x15, x13
	j getopt_internal
.Lfunc_end4:
	.size	__getopt_r, .Lfunc_end4-__getopt_r
	.cfi_endproc
                                        //  -- End function
	.globl	__getopt_long_r         //  -- Begin function __getopt_long_r
	.type	__getopt_long_r,@function
__getopt_long_r:                        //  @__getopt_long_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x16, x15
	mv x15, x0
	j getopt_internal
.Lfunc_end5:
	.size	__getopt_long_r, .Lfunc_end5-__getopt_long_r
	.cfi_endproc
                                        //  -- End function
	.globl	__getopt_long_only_r    //  -- Begin function __getopt_long_only_r
	.type	__getopt_long_only_r,@function
__getopt_long_only_r:                   //  @__getopt_long_only_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x16, x15
	seqz x15, x0
	j getopt_internal
.Lfunc_end6:
	.size	__getopt_long_only_r, .Lfunc_end6-__getopt_long_only_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	optarg,@object          //  @optarg
	.bss
	.globl	optarg
	.p2align	2
optarg:
	.long	0
	.size	optarg, 4

	.address_space	0
	.type	optind,@object          //  @optind
	.globl	optind
	.p2align	2
optind:
	.long	0                       //  0x0
	.size	optind, 4

	.address_space	0
	.type	opterr,@object          //  @opterr
	.data
	.globl	opterr
	.p2align	2
opterr:
	.long	1                       //  0x1
	.size	opterr, 4

	.address_space	0
	.type	optopt,@object          //  @optopt
	.globl	optopt
	.p2align	2
optopt:
	.long	63                      //  0x3f
	.size	optopt, 4

	.address_space	0
	.type	optwhere,@object        //  @optwhere
	.local	optwhere
	.comm	optwhere,4,4
	.address_space	0
	.type	permute_from,@object    //  @permute_from
	.local	permute_from
	.comm	permute_from,4,4
	.address_space	0
	.type	num_nonopts,@object     //  @num_nonopts
	.local	num_nonopts
	.comm	num_nonopts,4,4
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"--"
	.size	.str, 3

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"POSIXLY_CORRECT"
	.size	.str.1, 16

	.address_space	0
	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	": option `"
	.size	.str.2, 11

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"' is ambiguous (could be `--"
	.size	.str.3, 29

	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	"' or `--"
	.size	.str.4, 9

	.address_space	0
	.type	.str.5,@object          //  @.str.5
.str.5:
	.asciz	"')\n"
	.size	.str.5, 4

	.address_space	0
	.type	.str.6,@object          //  @.str.6
.str.6:
	.asciz	": invalid option -- `-"
	.size	.str.6, 23

	.address_space	0
	.type	.str.7,@object          //  @.str.7
.str.7:
	.asciz	"'\n"
	.size	.str.7, 3

	.address_space	0
	.type	.str.8,@object          //  @.str.8
.str.8:
	.asciz	": argument required for option `-"
	.size	.str.8, 34


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
