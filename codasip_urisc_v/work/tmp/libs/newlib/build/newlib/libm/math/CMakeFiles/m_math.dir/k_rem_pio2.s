	.text
	.file	"k_rem_pio2.c"
	.globl	__kernel_rem_pio2       //  -- Begin function __kernel_rem_pio2
	.type	__kernel_rem_pio2,@function
__kernel_rem_pio2:                      //  @__kernel_rem_pio2
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -704
	.cfi_adjust_cfa_offset 704
	sw x24, 668 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x11, 16 ( sp )               //  4-byte Folded Spill
	lui x11, %hi( init_jk )
	mv x24, x14
	sw x9, 696 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 652 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv x9, x12
	sw x10, 84 ( sp )               //  4-byte Folded Spill
	sll x10, x24, 2&31
	add x11, x11, %lo( init_jk )
	add fp, x0, 24
	sw x18, 692 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18, x10, x11
	add x10, x9, -3
	mv x11, fp
	sw x20, 684 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw ra, 700 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 688 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 680 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 676 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 672 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x25, 664 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 660 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 656 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x15, 76 ( sp )               //  4-byte Folded Spill
	mv x20, x13
	jal __divsi3
	mv x26, x10
	mv x10, x0
	blt x10, x26, .LBB0_2
.LBB0_1:                                //  %entry
	mv x26, x10
.LBB0_2:                                //  %entry
	lw x21, 0 ( x18 )
	add x10, x0, -24
	hackaton_custom_instr_c x10, x10, x26
	add x25, x10, x9
	add x10, x20, -1
	add x11, x10, x21
	blt x11, x0, .LBB0_6
.LBB0_3:                                //  %for.body.preheader
	sub x11, x26, x20
	sub x19, x26, x10
	sll x10, x11, 2&31
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	add x9, sp, 408
	add x18, x20, x21
	mv x23, x0
	add x10, x11, x10
	add x22, x10, 4
	blt x19, x0, .LBB0_5
.LBB0_19:                               //  %cond.false
	lw x10, 0 ( x22 )
	jal __floatsidf
.LBB0_20:                               //  %cond.end
	sw x10, 0 ( x9 )
	sw x11, 4 ( x9 )
	add x9, x9, 8
	add x22, x22, 4
	add x19, x19, 1
	add x18, x18, -1
	beq x0, x18, .LBB0_6
.LBB0_4:                                //  %for.body
	bge x19, x0, .LBB0_19
.LBB0_5:
	mv x10, x23
	mv x11, x23
	jal x0, .LBB0_20
.LBB0_6:                                //  %for.cond14.preheader.lr.ph
	add x10, x25, -24
	sw x10, 68 ( sp )               //  4-byte Folded Spill
	sw x24, 20 ( sp )               //  4-byte Folded Spill
	sw x25, 12 ( sp )               //  4-byte Folded Spill
	sw x26, 80 ( sp )               //  4-byte Folded Spill
	bge x0, x20, .LBB0_7
.LBB0_15:                               //  %for.cond14.preheader.us.preheader
	sll x10, x20, 3&31
	add x11, sp, 408
	add x10, x11, x10
	mv x19, x0
	add x22, x10, -8
	add x23, sp, 88
	mv x10, x19
.LBB0_16:                               //  %for.cond14.preheader.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_17 Depth 2
	lw x25, 84 ( sp )               //  4-byte Folded Reload
	mv x24, x10
	mv x9, x19
	mv x26, x20
	mv x27, x22
	mv x18, x19
.LBB0_17:                               //  %for.body17.us
                                        //    Parent Loop BB0_16 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 0 ( x25 )
	lw x11, 4 ( x25 )
	lw x12, 0 ( x27 )
	lw x13, 4 ( x27 )
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x9
	jal __adddf3
	mv x18, x10
	mv x9, x11
	add x25, x25, 8
	add x27, x27, -8
	add x26, x26, -1
	bltu x0, x26, .LBB0_17
.LBB0_18:                               //  %for.cond14.for.end26_crit_edge.us
                                        //    in Loop: Header=BB0_16 Depth=1
	sll x10, x24, 3&31
	add x10, x10, x23
	sw x18, 0 ( x10 )
	or x10, x10, 4
	sw x9, 0 ( x10 )
	add x22, x22, 8
	add x10, x24, 1
	blt x24, x21, .LBB0_16
	jal x0, .LBB0_9
.LBB0_7:                                //  %for.cond14.preheader.preheader
	add x10, sp, 88
	add x11, x0, -1
.LBB0_8:                                //  %for.cond14.preheader
                                        //  =>This Inner Loop Header: Depth=1
	sw x0, 4 ( x10 )
	sw x0, 0 ( x10 )
	add x10, x10, 8
	add x11, x11, 1
	blt x11, x21, .LBB0_8
.LBB0_9:                                //  %recompute.preheader
	sll x10, x21, 2&31
	add x11, sp, 572
	add x10, x11, x10
	add x10, x10, -4
	sw x10, 52 ( sp )               //  4-byte Folded Spill
	add x10, sp, 88
	add x10, x10, -8
	lw x12, 68 ( sp )               //  4-byte Folded Reload
	sw x10, 36 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( -1049624576 )
	add x10, x10, %lo( -1049624576 )
	sw x10, 48 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( -1071644672 )
	add x11, x0, 23
	sub x11, x11, x12
	add x10, x10, %lo( -1071644672 )
	sw x11, 44 ( sp )               //  4-byte Folded Spill
	sub x11, fp, x12
	sw x10, 60 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 16777215 )
	sw x11, 40 ( sp )               //  4-byte Folded Spill
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	add x10, x10, %lo( 16777215 )
	sw x10, 56 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 4194303 )
	add x10, x10, %lo( 4194303 )
	sw x10, 28 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 8388607 )
	add x11, x11, 4
	add x10, x10, %lo( 8388607 )
	mv x25, x0
	lui x24, (1047527424>>12)&1048575
	mv x26, x21
	sw x11, 32 ( sp )               //  4-byte Folded Spill
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	sw x21, 64 ( sp )               //  4-byte Folded Spill
.LBB0_10:                               //  %recompute
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_12 Depth 2
                                        //      Child Loop BB0_45 Depth 2
                                        //      Child Loop BB0_50 Depth 2
                                        //      Child Loop BB0_53 Depth 2
                                        //      Child Loop BB0_56 Depth 2
                                        //        Child Loop BB0_57 Depth 3
	sll x12, x26, 3&31
	add x10, sp, 88
	add x10, x12, x10
	or x11, x10, 4
	lw x9, 0 ( x11 )
	lw x18, 0 ( x10 )
	sw x12, 72 ( sp )               //  4-byte Folded Spill
	bge x0, x26, .LBB0_13
.LBB0_11:                               //  %for.body35.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	lw x21, 48 ( sp )               //  4-byte Folded Reload
	add x23, sp, 572
	mv x22, x26
	add x19, x12, x10
.LBB0_12:                               //  %for.body35
                                        //    Parent Loop BB0_10 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x10, x18
	mv x11, x9
	mv x12, x25
	mv x13, x24
	jal __muldf3
	jal __fixdfsi
	jal __floatsidf
	mv x12, x25
	mv x13, x21
	mv x27, x10
	mv fp, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x9
	jal __adddf3
	jal __fixdfsi
	sw x10, 0 ( x23 )
	lw x10, 0 ( x19 )
	lw x11, 4 ( x19 )
	mv x12, x27
	mv x13, fp
	jal __adddf3
	mv x18, x10
	mv x9, x11
	add x23, x23, 4
	add x19, x19, -8
	add x22, x22, -1
	bltu x0, x22, .LBB0_12
.LBB0_13:                               //  %for.end48
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x23, 68 ( sp )               //  4-byte Folded Reload
	mv x10, x18
	mv x11, x9
	mv x12, x23
	jal scalbn
	mv x12, x25
	lui x13, (1069547520>>12)&1048575
	mv fp, x10
	mv x9, x11
	jal __muldf3
	jal floor
	lw x13, 60 ( sp )               //  4-byte Folded Reload
	mv x12, x25
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x9
	jal __adddf3
	mv fp, x10
	mv x9, x11
	jal __fixdfsi
	mv x18, x10
	jal __floatsidf
	mv x12, x10
	mv x13, x11
	mv x10, fp
	mv x11, x9
	jal __subdf3
	mv x9, x10
	mv x27, x11
	bge x0, x23, .LBB0_21
.LBB0_14:                               //  %if.then58
                                        //    in Loop: Header=BB0_10 Depth=1
	sll x10, x26, 2&31
	add x11, sp, 572
	add x10, x11, x10
	lw x11, -4 ( x10 )
	lw x13, 40 ( sp )               //  4-byte Folded Reload
	lw x21, 64 ( sp )               //  4-byte Folded Reload
	lw x19, 56 ( sp )               //  4-byte Folded Reload
	sra x12, x11, x13
	sll x13, x12, x13
	sub x11, x11, x13
	sw x11, -4 ( x10 )
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	add x18, x18, x12
	sra x22, x11, x10
	blt x0, x22, .LBB0_24
	jal x0, .LBB0_42
.LBB0_21:                               //  %if.else
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x21, 64 ( sp )               //  4-byte Folded Reload
	lw x19, 56 ( sp )               //  4-byte Folded Reload
	beq x0, x23, .LBB0_22
.LBB0_34:                               //  %if.else77
                                        //    in Loop: Header=BB0_10 Depth=1
	mv x10, x9
	mv x11, x27
	mv x12, x25
	lui x13, (1071644672>>12)&1048575
	jal __gedf2
	add x22, x0, 2
	bge x10, x0, .LBB0_24
.LBB0_35:                               //    in Loop: Header=BB0_10 Depth=1
	mv x22, x25
	jal x0, .LBB0_42
.LBB0_22:                               //  %if.then73
                                        //    in Loop: Header=BB0_10 Depth=1
	sll x10, x26, 2&31
	add x11, sp, 572
	add x10, x11, x10
	lw x10, -4 ( x10 )
	sra x22, x10, 23&31
	bge x0, x22, .LBB0_42
.LBB0_24:                               //  %if.then86
                                        //    in Loop: Header=BB0_10 Depth=1
	mv fp, x25
	seqz x15, x0
	lui x16, (16777216>>12)&1048575
	bge x0, x26, .LBB0_30
.LBB0_25:                               //  %for.body91.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	add x10, sp, 572
	mv x11, x26
	mv x12, x25
	lw x13, 0 ( x10 )
	mv x14, x19
	beq x0, x12, .LBB0_27
.LBB0_28:                               //  %for.inc106.sink.split
                                        //    in Loop: Header=BB0_10 Depth=1
	sub x13, x14, x13
	mv fp, x12
	sw x13, 0 ( x10 )
.LBB0_29:                               //  %for.inc106
                                        //    in Loop: Header=BB0_10 Depth=1
	add x10, x10, 4
	add x11, x11, -1
	mv x12, fp
	beq x0, x11, .LBB0_30
.LBB0_26:                               //  %for.body91
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x13, 0 ( x10 )
	mv x14, x19
	bltu x0, x12, .LBB0_28
.LBB0_27:                               //  %if.then95
                                        //    in Loop: Header=BB0_10 Depth=1
	mv x14, x16
	mv x12, x15
	mv fp, x25
	bltu x0, x13, .LBB0_28
	jal x0, .LBB0_29
.LBB0_30:                               //  %for.end108
                                        //    in Loop: Header=BB0_10 Depth=1
	bge x0, x23, .LBB0_38
.LBB0_31:                               //  %if.then111
                                        //    in Loop: Header=BB0_10 Depth=1
	xor x10, x23, 2
	beq x0, x10, .LBB0_36
.LBB0_32:                               //  %if.then111
                                        //    in Loop: Header=BB0_10 Depth=1
	xor x10, x23, 1
	bltu x0, x10, .LBB0_38
.LBB0_33:                               //  %sw.bb
                                        //    in Loop: Header=BB0_10 Depth=1
	sll x10, x26, 2&31
	add x11, sp, 572
	add x10, x11, x10
	lw x11, -4 ( x10 )
	lw x12, 24 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_37
.LBB0_36:                               //  %sw.bb114
                                        //    in Loop: Header=BB0_10 Depth=1
	sll x10, x26, 2&31
	add x11, sp, 572
	add x10, x11, x10
	lw x11, -4 ( x10 )
	lw x12, 28 ( sp )               //  4-byte Folded Reload
.LBB0_37:                               //  %if.end118
                                        //    in Loop: Header=BB0_10 Depth=1
	and x11, x12, x11
	sw x11, -4 ( x10 )
.LBB0_38:                               //  %if.end118
                                        //    in Loop: Header=BB0_10 Depth=1
	add x18, x18, 1
	xor x10, x22, 2
	bltu x0, x10, .LBB0_42
.LBB0_39:                               //  %if.then121
                                        //    in Loop: Header=BB0_10 Depth=1
	lui x19, (1072693248>>12)&1048575
	mv x10, x25
	mv x11, x19
	mv x12, x9
	mv x13, x27
	jal __subdf3
	mv x9, x10
	mv x27, x11
	beq x0, fp, .LBB0_41
.LBB0_40:                               //  %if.then125
                                        //    in Loop: Header=BB0_10 Depth=1
	mv x10, x25
	mv x11, x19
	mv x12, x23
	jal scalbn
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, x27
	jal __subdf3
	mv x9, x10
	mv x27, x11
.LBB0_41:                               //  %if.end130
                                        //    in Loop: Header=BB0_10 Depth=1
	add x22, x0, 2
.LBB0_42:                               //  %if.end130
                                        //    in Loop: Header=BB0_10 Depth=1
	mv x10, x9
	mv x13, x25
	mv x11, x27
	mv x12, x25
	jal __nedf2
	bltu x0, x10, .LBB0_60
.LBB0_43:                               //  %for.cond135.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	bge x21, x26, .LBB0_49
.LBB0_44:                               //  %for.body138.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	sll x10, x26, 2&31
	add x11, sp, 568
	add x11, x10, x11
	mv x13, x26
	mv x12, x25
.LBB0_45:                               //  %for.body138
                                        //    Parent Loop BB0_10 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14, 0 ( x11 )
	add x11, x11, -4
	add x13, x13, -1
	or x12, x12, x14
	blt x21, x13, .LBB0_45
.LBB0_46:                               //  %for.end142
                                        //    in Loop: Header=BB0_10 Depth=1
	bltu x0, x12, .LBB0_47
.LBB0_49:                               //  %for.cond146.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	mv fp, x26
.LBB0_50:                               //  %for.cond146
                                        //    Parent Loop BB0_10 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x12, 0 ( x10 )
	add x11, x10, -4
	add fp, fp, 1
	mv x10, x11
	beq x0, x12, .LBB0_50
.LBB0_51:                               //  %for.cond156.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	add x11, x26, x20
	bge x0, x20, .LBB0_52
.LBB0_55:                               //  %for.body160.us.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	sll x11, x11, 3&31
	add x12, sp, 408
	add x10, x26, 1
	add x19, x11, x12
.LBB0_56:                               //  %for.body160.us
                                        //    Parent Loop BB0_10 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_57 Depth 3
	mv x22, x10
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	lw x11, 76 ( sp )               //  4-byte Folded Reload
	add x10, x10, x22
	sll x10, x10, 2&31
	add x10, x10, x11
	lw x10, 0 ( x10 )
	jal __floatsidf
	add x12, x20, x26
	lw x26, 84 ( sp )               //  4-byte Folded Reload
	sll x12, x12, 3&31
	add x13, sp, 408
	add x12, x12, x13
	or x13, x12, 4
	mv x9, x25
	mv x23, x20
	mv x27, x19
	mv x18, x25
	sw x11, 0 ( x13 )
	sw x10, 0 ( x12 )
.LBB0_57:                               //  %for.body169.us
                                        //    Parent Loop BB0_10 Depth=1
                                        //      Parent Loop BB0_56 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 0 ( x26 )
	lw x11, 4 ( x26 )
	lw x12, 0 ( x27 )
	lw x13, 4 ( x27 )
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x18
	mv x11, x9
	jal __adddf3
	mv x18, x10
	mv x9, x11
	add x26, x26, 8
	add x27, x27, -8
	add x23, x23, -1
	bltu x0, x23, .LBB0_57
.LBB0_58:                               //  %for.cond166.for.end178_crit_edge.us
                                        //    in Loop: Header=BB0_56 Depth=2
	sll x10, x22, 3&31
	add x11, sp, 88
	add x10, x10, x11
	sw x18, 0 ( x10 )
	or x10, x10, 4
	sw x9, 0 ( x10 )
	mv x26, x22
	add x19, x19, 8
	add x10, x22, 1
	blt x22, fp, .LBB0_56
.LBB0_59:                               //    in Loop: Header=BB0_10 Depth=1
	mv x26, fp
	jal x0, .LBB0_10
.LBB0_52:                               //  %for.body160.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x10, 80 ( sp )               //  4-byte Folded Reload
	lw x12, 32 ( sp )               //  4-byte Folded Reload
	add x10, x26, x10
	sll x10, x10, 2&31
	add x9, x10, x12
	lw x12, 72 ( sp )               //  4-byte Folded Reload
	add x10, sp, 96
	add x18, x12, x10
	sll x10, x11, 3&31
	add x11, sp, 408
	add x19, x10, x11
.LBB0_53:                               //  %for.body160
                                        //    Parent Loop BB0_10 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 0 ( x9 )
	jal __floatsidf
	sw x11, 4 ( x19 )
	sw x10, 0 ( x19 )
	add x9, x9, 4
	sw x0, 4 ( x18 )
	sw x0, 0 ( x18 )
	add x18, x18, 8
	add x19, x19, 8
	add x26, x26, 1
	blt x26, fp, .LBB0_53
.LBB0_54:                               //    in Loop: Header=BB0_10 Depth=1
	mv x26, fp
	jal x0, .LBB0_10
.LBB0_60:                               //  %if.else196
	sub x12, x0, x23
	mv x10, x9
	mv x11, x27
	sw x18, 84 ( sp )               //  4-byte Folded Spill
	jal scalbn
	mv x12, x0
	lui x13, (1097859072>>12)&1048575
	mv x19, x10
	mv fp, x11
	jal __gedf2
	bge x10, x0, .LBB0_61
.LBB0_62:                               //  %if.else213
	mv x10, x19
	mv x11, fp
	jal __fixdfsi
	mv x9, x10
	jal x0, .LBB0_63
.LBB0_61:                               //  %if.then201
	mv x20, x0
	lui x13, (1047527424>>12)&1048575
	mv x10, x19
	mv x11, fp
	mv x12, x20
	jal __muldf3
	jal __fixdfsi
	mv x9, x10
	jal __floatsidf
	lw x13, 48 ( sp )               //  4-byte Folded Reload
	mv x12, x20
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, fp
	jal __adddf3
	jal __fixdfsi
	sll x11, x26, 2&31
	add x12, sp, 572
	add x11, x11, x12
	lw x23, 12 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x11 )
	add x26, x26, 1
.LBB0_63:                               //  %if.end217.sink.split
	sll x10, x26, 2&31
	add x11, sp, 572
	add x10, x10, x11
	sw x22, 80 ( sp )               //  4-byte Folded Spill
	sw x9, 0 ( x10 )
	jal x0, .LBB0_64
.LBB0_47:                               //  %while.cond.preheader
	add x11, sp, 572
	add x10, x10, x11
	add x10, x10, -4
	sw x22, 80 ( sp )               //  4-byte Folded Spill
	sw x18, 84 ( sp )               //  4-byte Folded Spill
.LBB0_48:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x12, 0 ( x10 )
	add x11, x10, -4
	add x26, x26, -1
	add x23, x23, -24
	mv x10, x11
	beq x0, x12, .LBB0_48
.LBB0_64:                               //  %if.end217
	mv x10, x0
	lui x11, (1072693248>>12)&1048575
	mv x12, x23
	jal scalbn
	mv x19, x10
	mv x20, x11
	blt x26, x0, .LBB0_73
.LBB0_65:                               //  %for.body222.preheader
	sll x10, x26, 2&31
	add x11, sp, 572
	add x24, x10, x11
	sll x23, x26, 3&31
	add x10, sp, 88
	add x25, x23, x10
	add x27, x26, 1
	mv x9, x0
	lui x22, (1047527424>>12)&1048575
.LBB0_66:                               //  %for.body222
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x24 )
	jal __floatsidf
	mv x12, x10
	mv x13, x11
	mv x10, x19
	mv x11, x20
	jal __muldf3
	sw x11, 4 ( x25 )
	sw x10, 0 ( x25 )
	mv x10, x19
	mv x11, x20
	mv x12, x9
	mv x13, x22
	jal __muldf3
	mv x19, x10
	mv x20, x11
	add x24, x24, -4
	add x25, x25, -8
	add x27, x27, -1
	blt x0, x27, .LBB0_66
.LBB0_67:                               //  %for.cond231.preheader
	blt x26, x0, .LBB0_73
.LBB0_68:                               //  %for.body241.preheader.preheader
	add x10, sp, 88
	add fp, x23, x10
	lui x10, %hi( PIo2 )
	add x24, x10, %lo( PIo2 )
	mv x10, x26
	jal x0, .LBB0_69
.LBB0_72:                               //  %for.end249
                                        //    in Loop: Header=BB0_69 Depth=1
	sll x10, x27, 3&31
	add x11, sp, 248
	add x10, x10, x11
	sw x20, 0 ( x10 )
	or x10, x10, 4
	sw x19, 0 ( x10 )
	add fp, fp, -8
	add x10, x25, -1
	bge x0, x25, .LBB0_73
.LBB0_69:                               //  %for.body241.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_70 Depth 2
	mv x25, x10
	mv x10, x9
	sub x27, x26, x25
	mv x22, fp
	mv x23, x24
	mv x20, x9
	mv x19, x9
.LBB0_70:                               //  %for.body241
                                        //    Parent Loop BB0_69 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x18, x10
	lw x10, 0 ( x23 )
	lw x11, 4 ( x23 )
	lw x12, 0 ( x22 )
	lw x13, 4 ( x22 )
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x20
	mv x11, x19
	jal __adddf3
	mv x20, x10
	mv x19, x11
	bge x18, x21, .LBB0_72
.LBB0_71:                               //  %for.body241
                                        //    in Loop: Header=BB0_70 Depth=2
	add x22, x22, 8
	add x23, x23, 8
	add x10, x18, 1
	bltu x18, x27, .LBB0_70
	jal x0, .LBB0_72
.LBB0_73:                               //  %for.end254
	lw x11, 20 ( sp )               //  4-byte Folded Reload
	add x10, x11, -1
	sltiu x10, x10, 2
	bltu x0, x10, .LBB0_85
.LBB0_74:                               //  %for.end254
	lw x19, 84 ( sp )               //  4-byte Folded Reload
	lw x20, 80 ( sp )               //  4-byte Folded Reload
	beq x0, x11, .LBB0_78
.LBB0_75:                               //  %for.end254
	xor x10, x11, 3
	bltu x0, x10, .LBB0_109
.LBB0_76:                               //  %for.cond311.preheader
	add fp, sp, 248
	bge x0, x26, .LBB0_77
.LBB0_105:                              //  %for.body314.preheader
	sll x10, x26, 3&31
	add x25, x10, fp
	or x22, x25, 4
	lw fp, 0 ( x22 )
	lw x9, 0 ( x25 )
	add x27, x25, -8
	mv x24, x26
	sw x20, 80 ( sp )               //  4-byte Folded Spill
	sw x19, 84 ( sp )               //  4-byte Folded Spill
.LBB0_106:                              //  %for.body314
                                        //  =>This Inner Loop Header: Depth=1
	lw x19, 0 ( x27 )
	lw x20, 4 ( x27 )
	mv x12, x9
	mv x13, fp
	mv x10, x19
	mv x11, x20
	jal __adddf3
	mv x21, x10
	mv x23, x11
	mv x10, x19
	mv x11, x20
	mv x12, x21
	mv x13, x23
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __adddf3
	sw x11, 12 ( x27 )
	sw x10, 8 ( x27 )
	sw x21, 0 ( x27 )
	sw x23, 4 ( x27 )
	add x27, x27, -8
	add x24, x24, -1
	mv x9, x21
	mv fp, x23
	blt x0, x24, .LBB0_106
.LBB0_97:                               //  %for.cond329.preheader
	lw x18, 16 ( sp )               //  4-byte Folded Reload
	lw x19, 84 ( sp )               //  4-byte Folded Reload
	lw x20, 80 ( sp )               //  4-byte Folded Reload
	mv x10, x0
	slti x12, x26, 2
	mv x11, x10
	add fp, sp, 248
	bltu x0, x12, .LBB0_103
.LBB0_98:                               //  %for.body332.preheader
	lw fp, 0 ( x22 )
	lw x9, 0 ( x25 )
	add x24, x25, -8
	seqz x22, x0
	mv x27, x26
	sw x12, 76 ( sp )               //  4-byte Folded Spill
.LBB0_99:                               //  %for.body332
                                        //  =>This Inner Loop Header: Depth=1
	lw x19, 0 ( x24 )
	lw x20, 4 ( x24 )
	mv x12, x9
	mv x13, fp
	mv x10, x19
	mv x11, x20
	jal __adddf3
	mv x21, x10
	mv x23, x11
	mv x10, x19
	mv x11, x20
	mv x12, x21
	mv x13, x23
	jal __subdf3
	mv x12, x10
	mv x13, x11
	mv x10, x9
	mv x11, fp
	jal __adddf3
	sw x11, 12 ( x24 )
	sw x10, 8 ( x24 )
	sw x21, 0 ( x24 )
	sw x23, 4 ( x24 )
	add x24, x24, -8
	add x27, x27, -1
	mv x9, x21
	mv fp, x23
	blt x22, x27, .LBB0_99
.LBB0_100:                              //  %for.cond347.preheader
	lw x19, 84 ( sp )               //  4-byte Folded Reload
	lw x20, 80 ( sp )               //  4-byte Folded Reload
	lw x12, 76 ( sp )               //  4-byte Folded Reload
	mv x10, x0
	mv x11, x10
	add fp, sp, 248
	bltu x0, x12, .LBB0_103
.LBB0_101:                              //  %for.body350.preheader
	mv x10, x0
	mv x11, x10
.LBB0_102:                              //  %for.body350
                                        //  =>This Inner Loop Header: Depth=1
	lw x12, 0 ( x25 )
	lw x13, 4 ( x25 )
	jal __adddf3
	add x25, x25, -8
	add x26, x26, -1
	blt x22, x26, .LBB0_102
	jal x0, .LBB0_103
.LBB0_85:                               //  %sw.bb273
	lw x19, 84 ( sp )               //  4-byte Folded Reload
	lw x20, 80 ( sp )               //  4-byte Folded Reload
	mv x9, x0
	blt x26, x0, .LBB0_86
.LBB0_87:                               //  %for.body277.preheader
	mv x14, x0
	sll x10, x26, 3&31
	add x11, sp, 248
	add fp, x10, x11
	add x18, x26, 1
	mv x15, x14
.LBB0_88:                               //  %for.body277
                                        //  =>This Inner Loop Header: Depth=1
	lw x12, 0 ( fp )
	lw x13, 4 ( fp )
	mv x10, x14
	mv x11, x15
	jal __adddf3
	mv x14, x10
	mv x15, x11
	add fp, fp, -8
	add x18, x18, -1
	blt x0, x18, .LBB0_88
.LBB0_89:                               //  %for.end282
	lui x10, %hi( -2147483648 )
	add fp, x10, %lo( -2147483648 )
	mv x10, x15
	beq x20, x9, .LBB0_91
.LBB0_90:                               //  %for.end282
	xor x10, fp, x15
.LBB0_91:                               //  %for.end282
	lw x18, 16 ( sp )               //  4-byte Folded Reload
	mv x12, x14
	mv x13, x15
	sw x10, 4 ( x18 )
	add x10, sp, 248
	or x10, x10, 4
	lw x11, 0 ( x10 )
	lw x10, 248 ( sp )
	sw x14, 0 ( x18 )
	jal __subdf3
	bge x0, x26, .LBB0_94
.LBB0_92:                               //  %for.body296.preheader
	add x9, sp, 256
.LBB0_93:                               //  %for.body296
                                        //  =>This Inner Loop Header: Depth=1
	lw x12, 0 ( x9 )
	lw x13, 4 ( x9 )
	jal __adddf3
	add x9, x9, 8
	add x26, x26, -1
	bltu x0, x26, .LBB0_93
.LBB0_94:                               //  %for.end301
	mv x12, x0
	beq x20, x12, .LBB0_96
.LBB0_95:                               //  %for.end301
	xor x11, fp, x11
.LBB0_96:                               //  %for.end301
	sw x10, 8 ( x18 )
	sw x11, 12 ( x18 )
	jal x0, .LBB0_109
.LBB0_78:                               //  %for.cond256.preheader
	mv fp, x0
	blt x26, x0, .LBB0_79
.LBB0_80:                               //  %for.body259.preheader
	sll x10, x26, 3&31
	add x11, sp, 248
	add x9, x10, x11
	mv x10, x0
	add x18, x26, 1
	mv x11, x10
.LBB0_81:                               //  %for.body259
                                        //  =>This Inner Loop Header: Depth=1
	lw x12, 0 ( x9 )
	lw x13, 4 ( x9 )
	jal __adddf3
	add x9, x9, -8
	add x18, x18, -1
	blt x0, x18, .LBB0_81
.LBB0_82:                               //  %for.end264
	beq x20, fp, .LBB0_84
.LBB0_83:                               //  %for.end264
	lui x12, %hi( -2147483648 )
	add x12, x12, %lo( -2147483648 )
	xor x11, x12, x11
.LBB0_84:                               //  %for.end264
	lw x12, 16 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x12 )
	sw x11, 4 ( x12 )
	jal x0, .LBB0_109
.LBB0_86:
	mv x14, x9
	mv x15, x9
	lui x10, %hi( -2147483648 )
	add fp, x10, %lo( -2147483648 )
	mv x10, x15
	bne x20, x9, .LBB0_90
	jal x0, .LBB0_91
.LBB0_77:
	mv x10, x0
	lw x18, 16 ( sp )               //  4-byte Folded Reload
	mv x11, x10
.LBB0_103:                              //  %for.end355
	or x12, fp, 4
	lw x13, 0 ( x12 )
	lw x12, 248 ( sp )
	beq x0, x20, .LBB0_104
.LBB0_107:                              //  %if.else364
	sw x12, 0 ( x18 )
	lui x12, %hi( -2147483648 )
	add x12, x12, %lo( -2147483648 )
	sw x10, 16 ( x18 )
	xor x10, x12, x13
	sw x10, 4 ( x18 )
	xor x10, x12, x11
	sw x10, 20 ( x18 )
	lw x10, 260 ( sp )
	xor x10, x12, x10
	jal x0, .LBB0_108
.LBB0_79:
	mv x10, fp
	mv x11, fp
	bne x20, fp, .LBB0_83
	jal x0, .LBB0_84
.LBB0_104:                              //  %if.then358
	sw x10, 16 ( x18 )
	lw x10, 260 ( sp )
	sw x12, 0 ( x18 )
	sw x13, 4 ( x18 )
	sw x11, 20 ( x18 )
.LBB0_108:                              //  %sw.epilog374
	sw x10, 12 ( x18 )
	lw x10, 8 ( fp )
	sw x10, 8 ( x18 )
.LBB0_109:                              //  %sw.epilog374
	and x10, x19, 7
	lw fp, 652 ( sp )               //  4-byte Folded Reload
	lw x27, 656 ( sp )              //  4-byte Folded Reload
	lw x26, 660 ( sp )              //  4-byte Folded Reload
	lw x25, 664 ( sp )              //  4-byte Folded Reload
	lw x24, 668 ( sp )              //  4-byte Folded Reload
	lw x23, 672 ( sp )              //  4-byte Folded Reload
	lw x22, 676 ( sp )              //  4-byte Folded Reload
	lw x21, 680 ( sp )              //  4-byte Folded Reload
	lw x20, 684 ( sp )              //  4-byte Folded Reload
	lw x19, 688 ( sp )              //  4-byte Folded Reload
	lw x18, 692 ( sp )              //  4-byte Folded Reload
	lw x9, 696 ( sp )               //  4-byte Folded Reload
	lw ra, 700 ( sp )               //  4-byte Folded Reload
	add sp, sp, 704
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__kernel_rem_pio2, .Lfunc_end0-__kernel_rem_pio2
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	init_jk,@object         //  @init_jk
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2
init_jk:
	.long	2                       //  0x2
	.long	3                       //  0x3
	.long	4                       //  0x4
	.long	6                       //  0x6
	.size	init_jk, 16

	.address_space	0
	.type	PIo2,@object            //  @PIo2
	.section	.rodata,"a",@progbits
	.p2align	3
PIo2:
	.quad	4609753056584663040     //  double 1.5707962512969971
	.quad	4500296887714185216     //  double 7.5497894158615964E-8
	.quad	4393339057296375808     //  double 5.3903025299577648E-15
	.quad	4285399695318056960     //  double 3.2820034158079129E-22
	.quad	4174867106174599168     //  double 1.2706557530806761E-29
	.quad	4069606033725587456     //  double 1.2293330898111133E-36
	.quad	3955147982449410048     //  double 2.7337005381646456E-44
	.quad	3848874662444400640     //  double 2.1674168387780482E-51
	.size	PIo2, 64


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
