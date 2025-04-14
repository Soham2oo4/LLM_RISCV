	.text
	.file	"qsort.c"
	.globl	qsort                   //  -- Begin function qsort
	.type	qsort,@function
qsort:                                  //  @qsort
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -144
	.cfi_adjust_cfa_offset 144
	sw x9, 136 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 132 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x9, x12
	mv x18, x10
	or x10, x9, x18
	sw x19, 128 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x11
	and x11, x10, 3
	xor x10, x9, 4
	snez x10, x10
	or x10, x10, x11
	sw x26, 100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw fp, 92 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv x26, x0
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	srl x10, x9, 2&31
	sw x27, 96 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	mv fp, x13
	sub x27, x0, x9
	sw ra, 140 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 124 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 120 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 116 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 112 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 108 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 104 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x11, 16 ( sp )               //  4-byte Folded Spill
	sw x26, 12 ( sp )               //  4-byte Folded Spill
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	sltiu x10, x19, 7
	beq x0, x10, .LBB0_20
	jal x0, .LBB0_2
.LBB0_151:                              //  %if.then209
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x23, 12 ( sp )               //  4-byte Folded Reload
	add x11, sp, 28
	sll x10, x23, 3&31
	add x22, x10, x11
	mv x10, x19
	mv x11, x9
	sw x18, 0 ( x22 )
	jal __udivsi3
	sw x10, 4 ( x22 )
	mv x10, x21
	mv x11, x9
	jal __udivsi3
	add x23, x23, 1
	mv x19, x10
	sw x23, 12 ( sp )               //  4-byte Folded Spill
	mv x18, x20
	mv x26, x0
	sltiu x10, x19, 7
	beq x0, x10, .LBB0_20
.LBB0_2:                                //  %for.cond.preheader
	hackaton_custom_instr_c x10, x9, x19
	bge x9, x10, .LBB0_129
.LBB0_3:                                //  %for.cond8.preheader.preheader
	add x23, x9, x18
	add x21, x10, x18
	mv x22, x18
	mv x24, x0
	mv x25, x23
	bltu x18, x25, .LBB0_5
.LBB0_19:                               //  %for.inc23
                                        //  =>This Inner Loop Header: Depth=1
	add x24, x9, x24
	add x22, x9, x22
	add x25, x9, x25
	bgeu x25, x21, .LBB0_129
.LBB0_4:                                //  %for.cond8.preheader
                                        //    in Loop: Header=BB0_19 Depth=1
	bgeu x18, x25, .LBB0_19
.LBB0_5:                                //  %land.rhs.lr.ph
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_6
.LBB0_9:                                //  %land.rhs.lr.ph.split
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	mv x26, x22
	mv x19, x25
	beq x0, x10, .LBB0_10
.LBB0_15:                               //  %land.rhs
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_17 Depth 2
	add x20, x27, x19
	mv x10, x20
	mv x11, x19
	call.reg fp
	bge x0, x10, .LBB0_19
.LBB0_16:                               //  %do.body7.i.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	mv x10, x0
	mv x11, x9
.LBB0_17:                               //  %do.body7.i
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12, x10, x26
	add x13, x10, x19
	lb x14, 0 ( x13 )
	lb x15, 0 ( x12 )
	add x10, x10, 1
	add x11, x11, -1
	sb x15, 0 ( x13 )
	sb x14, 0 ( x12 )
	blt x0, x11, .LBB0_17
.LBB0_18:                               //  %for.inc
                                        //    in Loop: Header=BB0_15 Depth=1
	add x26, x27, x26
	mv x19, x20
	bltu x18, x20, .LBB0_15
	jal x0, .LBB0_19
.LBB0_6:                                //  %land.rhs.us.preheader
	mv x26, x0
.LBB0_7:                                //  %land.rhs.us
                                        //  =>This Inner Loop Header: Depth=1
	add x19, x26, x22
	add x20, x26, x25
	mv x10, x19
	mv x11, x20
	call.reg fp
	bge x0, x10, .LBB0_19
.LBB0_8:                                //  %if.then14.us
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x10, 0 ( x20 )
	lw x11, 0 ( x19 )
	sub x26, x26, x9
	sw x11, 0 ( x20 )
	sw x10, 0 ( x19 )
	add x10, x26, x25
	bltu x18, x10, .LBB0_7
	jal x0, .LBB0_19
.LBB0_10:                               //  %land.rhs.us839.preheader
	mv x20, x24
	mv x11, x25
.LBB0_11:                               //  %land.rhs.us839
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_13 Depth 2
	add x19, x27, x11
	mv x10, x19
	call.reg fp
	bge x0, x10, .LBB0_19
.LBB0_12:                               //  %if.then.i.us854
                                        //    in Loop: Header=BB0_11 Depth=1
	lw x11, 24 ( sp )               //  4-byte Folded Reload
	mv x10, x20
.LBB0_13:                               //  %do.body.i.us855
                                        //    Parent Loop BB0_11 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12, x10, x18
	add x13, x10, x23
	lw x14, 0 ( x13 )
	lw x15, 0 ( x12 )
	add x10, x10, 4
	add x11, x11, -1
	sw x15, 0 ( x13 )
	sw x14, 0 ( x12 )
	blt x0, x11, .LBB0_13
.LBB0_14:                               //  %for.inc.loopexit.us866
                                        //    in Loop: Header=BB0_11 Depth=1
	sub x20, x20, x9
	mv x11, x19
	bltu x18, x19, .LBB0_11
	jal x0, .LBB0_19
.LBB0_20:                               //  %if.end26
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_61 Depth 2
                                        //      Child Loop BB0_63 Depth 2
                                        //      Child Loop BB0_84 Depth 2
                                        //        Child Loop BB0_97 Depth 3
                                        //          Child Loop BB0_100 Depth 4
                                        //        Child Loop BB0_91 Depth 3
                                        //          Child Loop BB0_94 Depth 4
                                        //        Child Loop BB0_86 Depth 3
                                        //        Child Loop BB0_116 Depth 3
                                        //        Child Loop BB0_115 Depth 3
                                        //      Child Loop BB0_78 Depth 2
                                        //        Child Loop BB0_81 Depth 3
                                        //      Child Loop BB0_72 Depth 2
                                        //        Child Loop BB0_75 Depth 3
                                        //      Child Loop BB0_67 Depth 2
                                        //      Child Loop BB0_136 Depth 2
                                        //      Child Loop BB0_138 Depth 2
                                        //      Child Loop BB0_145 Depth 2
                                        //      Child Loop BB0_144 Depth 2
	srl x10, x19, 1&31
	hackaton_custom_instr_c x10, x9, x10
	add x20, x10, x18
	xor x10, x19, 7
	add x24, x19, -1
	beq x0, x10, .LBB0_57
.LBB0_21:                               //  %if.then30
                                        //    in Loop: Header=BB0_20 Depth=1
	hackaton_custom_instr_c x10, x9, x24
	add x21, x10, x18
	sltiu x10, x19, 41
	bltu x0, x10, .LBB0_22
.LBB0_23:                               //  %if.then34
                                        //    in Loop: Header=BB0_20 Depth=1
	srl x10, x19, 3&31
	hackaton_custom_instr_c x26, x9, x10
	add x22, x26, x18
	mv x10, x18
	mv x11, x22
	sw x24, 4 ( sp )                //  4-byte Folded Spill
	sll x23, x26, 1&31
	call.reg fp
	sw x23, 8 ( sp )                //  4-byte Folded Spill
	add x23, x23, x18
	mv x24, x10
	mv x10, x22
	mv x11, x23
	call.reg fp
	blt x24, x0, .LBB0_24
.LBB0_27:                               //  %cond.false11.i
                                        //    in Loop: Header=BB0_20 Depth=1
	blt x0, x10, .LBB0_30
.LBB0_28:                               //  %cond.false15.i
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x10, x18
	mv x11, x23
	call.reg fp
	mv x22, x18
	mv x11, x0
	bge x10, x11, .LBB0_29
	jal x0, .LBB0_30
.LBB0_22:                               //    in Loop: Header=BB0_20 Depth=1
	mv x22, x18
	jal x0, .LBB0_48
.LBB0_24:                               //  %cond.true.i
                                        //    in Loop: Header=BB0_20 Depth=1
	blt x10, x0, .LBB0_30
.LBB0_25:                               //  %cond.false.i
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x10, x18
	mv x11, x23
	call.reg fp
	mv x11, x0
	blt x10, x11, .LBB0_29
.LBB0_26:                               //  %cond.false.i
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x23, x18
.LBB0_29:                               //  %cond.false15.i
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x22, x23
.LBB0_30:                               //  %med3.exit
                                        //    in Loop: Header=BB0_20 Depth=1
	sub x23, x20, x26
	mv x10, x23
	mv x11, x20
	call.reg fp
	add x24, x26, x20
	mv x25, x10
	mv x10, x20
	mv x11, x24
	call.reg fp
	sub x26, x0, x26
	blt x25, x0, .LBB0_31
.LBB0_35:                               //  %cond.false11.i476
                                        //    in Loop: Header=BB0_20 Depth=1
	blt x0, x10, .LBB0_39
.LBB0_36:                               //  %cond.false15.i480
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x10, x23
	mv x11, x24
	call.reg fp
	mv x11, x0
	blt x10, x11, .LBB0_38
.LBB0_37:                               //  %cond.false15.i480
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x23, x24
.LBB0_38:                               //  %cond.false15.i480
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x20, x23
	jal x0, .LBB0_39
.LBB0_31:                               //  %cond.true.i470
                                        //    in Loop: Header=BB0_20 Depth=1
	blt x10, x0, .LBB0_39
.LBB0_32:                               //  %cond.false.i474
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x10, x23
	mv x11, x24
	call.reg fp
	mv x11, x0
	blt x10, x11, .LBB0_34
.LBB0_33:                               //  %cond.false.i474
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x24, x23
.LBB0_34:                               //  %cond.false.i474
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x20, x24
.LBB0_39:                               //  %med3.exit482
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x10, 8 ( sp )                //  4-byte Folded Reload
	add x24, x26, x21
	mv x11, x24
	sub x23, x21, x10
	mv x10, x23
	call.reg fp
	mv x25, x10
	mv x10, x24
	mv x11, x21
	call.reg fp
	mv x26, x0
	blt x25, x0, .LBB0_40
.LBB0_42:                               //  %cond.false11.i493
                                        //    in Loop: Header=BB0_20 Depth=1
	blt x0, x10, .LBB0_43
.LBB0_44:                               //  %cond.false15.i497
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x10, x23
	mv x11, x21
	call.reg fp
	blt x10, x26, .LBB0_46
.LBB0_45:                               //  %cond.false15.i497
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x23, x21
	jal x0, .LBB0_46
.LBB0_40:                               //  %cond.true.i487
                                        //    in Loop: Header=BB0_20 Depth=1
	blt x10, x0, .LBB0_43
.LBB0_41:                               //  %cond.false.i491
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x10, x23
	mv x11, x21
	call.reg fp
	blt x10, x26, .LBB0_47
.LBB0_46:                               //  %cond.false15.i497
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x21, x23
	jal x0, .LBB0_47
.LBB0_43:                               //    in Loop: Header=BB0_20 Depth=1
	mv x21, x24
.LBB0_47:                               //  %if.end51
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x24, 4 ( sp )                //  4-byte Folded Reload
.LBB0_48:                               //  %if.end51
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x10, x22
	mv x11, x20
	call.reg fp
	mv x23, x10
	mv x10, x20
	mv x11, x21
	call.reg fp
	blt x23, x0, .LBB0_49
.LBB0_53:                               //  %cond.false11.i510
                                        //    in Loop: Header=BB0_20 Depth=1
	blt x0, x10, .LBB0_57
.LBB0_54:                               //  %cond.false15.i514
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x10, x22
	mv x11, x21
	call.reg fp
	blt x10, x26, .LBB0_56
.LBB0_55:                               //  %cond.false15.i514
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x22, x21
.LBB0_56:                               //  %cond.false15.i514
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x20, x22
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB0_59
	jal x0, .LBB0_58
.LBB0_49:                               //  %cond.true.i504
                                        //    in Loop: Header=BB0_20 Depth=1
	blt x10, x0, .LBB0_57
.LBB0_50:                               //  %cond.false.i508
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x10, x22
	mv x11, x21
	call.reg fp
	blt x10, x26, .LBB0_52
.LBB0_51:                               //  %cond.false.i508
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x21, x22
.LBB0_52:                               //  %cond.false.i508
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x20, x21
.LBB0_57:                               //  %if.end53
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_58
.LBB0_59:                               //  %if.else57
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_62
.LBB0_60:                               //    in Loop: Header=BB0_20 Depth=1
	mv x10, x9
	mv x11, x18
.LBB0_61:                               //  %do.body7.i534
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lb x12, 0 ( x11 )
	lb x13, 0 ( x20 )
	add x10, x10, -1
	sb x13, 0 ( x11 )
	sb x12, 0 ( x20 )
	add x20, x20, 1
	add x11, x11, 1
	blt x0, x10, .LBB0_61
	jal x0, .LBB0_64
.LBB0_58:                               //  %if.then55
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x10, 0 ( x18 )
	lw x11, 0 ( x20 )
	sw x11, 0 ( x18 )
	sw x10, 0 ( x20 )
	jal x0, .LBB0_64
.LBB0_62:                               //  %if.then.i518
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x11, 24 ( sp )               //  4-byte Folded Reload
	mv x10, x18
.LBB0_63:                               //  %do.body.i526
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x12, 0 ( x10 )
	lw x13, 0 ( x20 )
	add x11, x11, -1
	sw x13, 0 ( x10 )
	sw x12, 0 ( x20 )
	add x20, x20, 4
	add x10, x10, 4
	blt x0, x11, .LBB0_63
.LBB0_64:                               //  %if.end58
                                        //    in Loop: Header=BB0_20 Depth=1
	hackaton_custom_instr_c x10, x9, x24
	add x23, x10, x18
	add x22, x9, x18
	mv x25, x26
	mv x21, x23
	mv x24, x22
	mv x20, x22
	bgeu x21, x20, .LBB0_66
.LBB0_84:                               //  %while.end
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_97 Depth 3
                                        //          Child Loop BB0_100 Depth 4
                                        //        Child Loop BB0_91 Depth 3
                                        //          Child Loop BB0_94 Depth 4
                                        //        Child Loop BB0_86 Depth 3
                                        //        Child Loop BB0_116 Depth 3
                                        //        Child Loop BB0_115 Depth 3
	bltu x21, x20, .LBB0_103
.LBB0_85:                               //  %land.rhs81.lr.ph
                                        //    in Loop: Header=BB0_84 Depth=2
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_86
.LBB0_90:                               //  %land.rhs81.lr.ph.split
                                        //    in Loop: Header=BB0_84 Depth=2
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB0_97
	jal x0, .LBB0_91
.LBB0_102:                              //  %if.end95
                                        //    in Loop: Header=BB0_97 Depth=3
	add x21, x27, x21
	bltu x21, x20, .LBB0_103
.LBB0_97:                               //  %land.rhs81
                                        //    Parent Loop BB0_20 Depth=1
                                        //      Parent Loop BB0_84 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_100 Depth 4
	mv x10, x21
	mv x11, x18
	call.reg fp
	blt x10, x0, .LBB0_111
.LBB0_98:                               //  %while.body85
                                        //    in Loop: Header=BB0_97 Depth=3
	bltu x0, x10, .LBB0_102
.LBB0_99:                               //  %do.body7.i572.preheader
                                        //    in Loop: Header=BB0_97 Depth=3
	mv x10, x26
	mv x11, x9
.LBB0_100:                              //  %do.body7.i572
                                        //    Parent Loop BB0_20 Depth=1
                                        //      Parent Loop BB0_84 Depth=2
                                        //        Parent Loop BB0_97 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	add x12, x10, x23
	add x13, x10, x21
	lb x14, 0 ( x13 )
	lb x15, 0 ( x12 )
	add x10, x10, 1
	add x11, x11, -1
	sb x15, 0 ( x13 )
	sb x14, 0 ( x12 )
	blt x0, x11, .LBB0_100
.LBB0_101:                              //  %if.end92
                                        //    in Loop: Header=BB0_97 Depth=3
	add x23, x27, x23
	seqz x25, x0
	jal x0, .LBB0_102
.LBB0_89:                               //  %if.end95.us
                                        //    in Loop: Header=BB0_86 Depth=3
	add x21, x27, x21
	bltu x21, x20, .LBB0_103
.LBB0_86:                               //  %land.rhs81.us
                                        //    Parent Loop BB0_20 Depth=1
                                        //      Parent Loop BB0_84 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	mv x10, x21
	mv x11, x18
	call.reg fp
	blt x10, x0, .LBB0_111
.LBB0_87:                               //  %while.body85.us
                                        //    in Loop: Header=BB0_86 Depth=3
	bltu x0, x10, .LBB0_89
.LBB0_88:                               //  %if.then89.us
                                        //    in Loop: Header=BB0_86 Depth=3
	lw x10, 0 ( x21 )
	lw x11, 0 ( x23 )
	seqz x25, x0
	sw x11, 0 ( x21 )
	sw x10, 0 ( x23 )
	add x23, x27, x23
	jal x0, .LBB0_89
.LBB0_96:                               //  %if.end95.us780
                                        //    in Loop: Header=BB0_91 Depth=3
	add x21, x27, x21
	bltu x21, x20, .LBB0_103
.LBB0_91:                               //  %land.rhs81.us748
                                        //    Parent Loop BB0_20 Depth=1
                                        //      Parent Loop BB0_84 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_94 Depth 4
	mv x10, x21
	mv x11, x18
	call.reg fp
	blt x10, x0, .LBB0_111
.LBB0_92:                               //  %while.body85.us754
                                        //    in Loop: Header=BB0_91 Depth=3
	bltu x0, x10, .LBB0_96
.LBB0_93:                               //  %if.then.i556.us766
                                        //    in Loop: Header=BB0_91 Depth=3
	lw x11, 24 ( sp )               //  4-byte Folded Reload
	mv x10, x26
.LBB0_94:                               //  %do.body.i564.us767
                                        //    Parent Loop BB0_20 Depth=1
                                        //      Parent Loop BB0_84 Depth=2
                                        //        Parent Loop BB0_91 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	add x12, x10, x23
	add x13, x10, x21
	lw x14, 0 ( x13 )
	lw x15, 0 ( x12 )
	add x10, x10, 4
	add x11, x11, -1
	sw x15, 0 ( x13 )
	sw x14, 0 ( x12 )
	blt x0, x11, .LBB0_94
.LBB0_95:                               //  %if.end92.loopexit.us786
                                        //    in Loop: Header=BB0_91 Depth=3
	add x23, x27, x23
	seqz x25, x0
	jal x0, .LBB0_96
.LBB0_66:                               //  %land.rhs65.lr.ph
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_67
.LBB0_71:                               //  %land.rhs65.lr.ph.split
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB0_78
	jal x0, .LBB0_72
.LBB0_83:                               //  %if.end77
                                        //    in Loop: Header=BB0_78 Depth=2
	add x20, x9, x20
	bltu x21, x20, .LBB0_84
.LBB0_78:                               //  %land.rhs65
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_81 Depth 3
	mv x10, x20
	mv x11, x18
	call.reg fp
	blt x0, x10, .LBB0_84
.LBB0_79:                               //  %while.body
                                        //    in Loop: Header=BB0_78 Depth=2
	bltu x0, x10, .LBB0_83
.LBB0_80:                               //  %do.body7.i553.preheader
                                        //    in Loop: Header=BB0_78 Depth=2
	mv x10, x26
	mv x11, x9
.LBB0_81:                               //  %do.body7.i553
                                        //    Parent Loop BB0_20 Depth=1
                                        //      Parent Loop BB0_78 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x12, x10, x20
	add x13, x10, x24
	lb x14, 0 ( x13 )
	lb x15, 0 ( x12 )
	add x10, x10, 1
	add x11, x11, -1
	sb x15, 0 ( x13 )
	sb x14, 0 ( x12 )
	blt x0, x11, .LBB0_81
.LBB0_82:                               //  %if.end75
                                        //    in Loop: Header=BB0_78 Depth=2
	add x24, x9, x24
	seqz x25, x0
	jal x0, .LBB0_83
.LBB0_70:                               //  %if.end77.us
                                        //    in Loop: Header=BB0_67 Depth=2
	add x20, x9, x20
	bltu x21, x20, .LBB0_84
.LBB0_67:                               //  %land.rhs65.us
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x10, x20
	mv x11, x18
	call.reg fp
	blt x0, x10, .LBB0_84
.LBB0_68:                               //  %while.body.us
                                        //    in Loop: Header=BB0_67 Depth=2
	bltu x0, x10, .LBB0_70
.LBB0_69:                               //  %if.then72.us
                                        //    in Loop: Header=BB0_67 Depth=2
	lw x11, 0 ( x20 )
	lw x10, 0 ( x24 )
	seqz x25, x0
	sw x11, 0 ( x24 )
	add x24, x9, x24
	sw x10, 0 ( x20 )
	jal x0, .LBB0_70
.LBB0_77:                               //  %if.end77.us722
                                        //    in Loop: Header=BB0_72 Depth=2
	add x20, x9, x20
	bltu x21, x20, .LBB0_84
.LBB0_72:                               //  %land.rhs65.us690
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_75 Depth 3
	mv x10, x20
	mv x11, x18
	call.reg fp
	blt x0, x10, .LBB0_84
.LBB0_73:                               //  %while.body.us696
                                        //    in Loop: Header=BB0_72 Depth=2
	bltu x0, x10, .LBB0_77
.LBB0_74:                               //  %if.then.i537.us708
                                        //    in Loop: Header=BB0_72 Depth=2
	lw x11, 24 ( sp )               //  4-byte Folded Reload
	mv x10, x26
.LBB0_75:                               //  %do.body.i545.us709
                                        //    Parent Loop BB0_20 Depth=1
                                        //      Parent Loop BB0_72 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x12, x10, x20
	add x13, x10, x24
	lw x14, 0 ( x13 )
	lw x15, 0 ( x12 )
	add x10, x10, 4
	add x11, x11, -1
	sw x15, 0 ( x13 )
	sw x14, 0 ( x12 )
	blt x0, x11, .LBB0_75
.LBB0_76:                               //  %if.end75.loopexit.us728
                                        //    in Loop: Header=BB0_72 Depth=2
	add x24, x9, x24
	seqz x25, x0
	jal x0, .LBB0_77
.LBB0_111:                              //  %if.end101
                                        //    in Loop: Header=BB0_84 Depth=2
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_112
.LBB0_113:                              //  %if.else105
                                        //    in Loop: Header=BB0_84 Depth=2
	lw x13, 16 ( sp )               //  4-byte Folded Reload
	mv x10, x9
	mv x11, x20
	mv x12, x21
	beq x0, x13, .LBB0_114
.LBB0_116:                              //  %do.body7.i591
                                        //    Parent Loop BB0_20 Depth=1
                                        //      Parent Loop BB0_84 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lb x13, 0 ( x11 )
	lb x14, 0 ( x12 )
	add x10, x10, -1
	sb x14, 0 ( x11 )
	sb x13, 0 ( x12 )
	add x12, x12, 1
	add x11, x11, 1
	blt x0, x10, .LBB0_116
	jal x0, .LBB0_117
.LBB0_112:                              //  %if.then103
                                        //    in Loop: Header=BB0_84 Depth=2
	lw x10, 0 ( x20 )
	lw x11, 0 ( x21 )
	sw x11, 0 ( x20 )
	sw x10, 0 ( x21 )
	jal x0, .LBB0_117
.LBB0_114:                              //  %if.then.i575
                                        //    in Loop: Header=BB0_84 Depth=2
	lw x12, 24 ( sp )               //  4-byte Folded Reload
	mv x10, x21
	mv x11, x20
.LBB0_115:                              //  %do.body.i583
                                        //    Parent Loop BB0_20 Depth=1
                                        //      Parent Loop BB0_84 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x13, 0 ( x11 )
	lw x14, 0 ( x10 )
	add x12, x12, -1
	sw x14, 0 ( x11 )
	sw x13, 0 ( x10 )
	add x10, x10, 4
	add x11, x11, 4
	blt x0, x12, .LBB0_115
.LBB0_117:                              //  %if.end106
                                        //    in Loop: Header=BB0_84 Depth=2
	add x21, x27, x21
	add x20, x9, x20
	seqz x25, x0
	bgeu x21, x20, .LBB0_66
	jal x0, .LBB0_84
.LBB0_103:                              //  %for.end110
                                        //    in Loop: Header=BB0_20 Depth=1
	hackaton_custom_instr_c x10, x9, x19
	add x26, x10, x18
	beq x0, x25, .LBB0_104
.LBB0_131:                              //  %if.end146
                                        //    in Loop: Header=BB0_20 Depth=1
	sub x11, x24, x18
	sub x19, x20, x24
	blt x11, x19, .LBB0_133
.LBB0_132:                              //  %if.end146
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x11, x19
.LBB0_133:                              //  %if.end146
                                        //    in Loop: Header=BB0_20 Depth=1
	beq x0, x11, .LBB0_139
.LBB0_134:                              //  %if.then166
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x12, 16 ( sp )               //  4-byte Folded Reload
	sub x10, x20, x11
	beq x0, x12, .LBB0_137
.LBB0_135:                              //    in Loop: Header=BB0_20 Depth=1
	mv x12, x18
.LBB0_136:                              //  %do.body7.i629
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lb x13, 0 ( x12 )
	lb x14, 0 ( x10 )
	add x11, x11, -1
	sb x14, 0 ( x12 )
	sb x13, 0 ( x10 )
	add x10, x10, 1
	add x12, x12, 1
	blt x0, x11, .LBB0_136
	jal x0, .LBB0_139
.LBB0_137:                              //  %if.then.i613
                                        //    in Loop: Header=BB0_20 Depth=1
	srl x11, x11, 2&31
	mv x12, x18
.LBB0_138:                              //  %do.body.i621
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x13, 0 ( x12 )
	lw x14, 0 ( x10 )
	add x11, x11, -1
	sw x14, 0 ( x12 )
	sw x13, 0 ( x10 )
	add x10, x10, 4
	add x12, x12, 4
	blt x0, x11, .LBB0_138
.LBB0_139:                              //  %if.end169
                                        //    in Loop: Header=BB0_20 Depth=1
	sub x10, x26, x23
	sub x11, x10, x9
	sub x10, x23, x21
	mv x12, x10
	bltu x10, x11, .LBB0_141
.LBB0_140:                              //  %if.end169
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x12, x11
.LBB0_141:                              //  %if.end169
                                        //    in Loop: Header=BB0_20 Depth=1
	beq x0, x12, .LBB0_146
.LBB0_142:                              //  %if.then190
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x13, 16 ( sp )               //  4-byte Folded Reload
	sub x11, x26, x12
	beq x0, x13, .LBB0_143
.LBB0_145:                              //  %do.body7.i648
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lb x13, 0 ( x20 )
	lb x14, 0 ( x11 )
	add x12, x12, -1
	sb x14, 0 ( x20 )
	sb x13, 0 ( x11 )
	add x11, x11, 1
	add x20, x20, 1
	blt x0, x12, .LBB0_145
	jal x0, .LBB0_146
.LBB0_143:                              //  %if.then.i632
                                        //    in Loop: Header=BB0_20 Depth=1
	srl x12, x12, 2&31
.LBB0_144:                              //  %do.body.i640
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x13, 0 ( x20 )
	lw x14, 0 ( x11 )
	add x12, x12, -1
	sw x14, 0 ( x20 )
	sw x13, 0 ( x11 )
	add x11, x11, 4
	add x20, x20, 4
	blt x0, x12, .LBB0_144
.LBB0_146:                              //  %if.end193
                                        //    in Loop: Header=BB0_20 Depth=1
	sub x11, x26, x10
	bltu x19, x10, .LBB0_147
.LBB0_148:                              //  %if.end193
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x21, x10
	mv x20, x11
	bgeu x9, x21, .LBB0_153
.LBB0_150:                              //  %if.then207
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x11, 12 ( sp )               //  4-byte Folded Reload
	add x10, x0, 7
	bgeu x10, x11, .LBB0_151
.LBB0_152:                              //  %if.else215
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x10, x21
	mv x11, x9
	jal __udivsi3
	mv x11, x10
	mv x10, x20
	mv x12, x9
	mv x13, fp
	jal qsort
	bltu x9, x19, .LBB0_154
	jal x0, .LBB0_129
.LBB0_147:                              //    in Loop: Header=BB0_20 Depth=1
	mv x21, x19
	mv x20, x18
	mv x19, x10
	mv x18, x11
	bltu x9, x21, .LBB0_150
.LBB0_153:                              //  %if.end218
                                        //    in Loop: Header=BB0_20 Depth=1
	bgeu x9, x19, .LBB0_129
.LBB0_154:                              //  %if.then220
                                        //    in Loop: Header=BB0_20 Depth=1
	mv x10, x19
	mv x11, x9
	jal __udivsi3
	mv x19, x10
	sltiu x10, x19, 7
	mv x26, x0
	beq x0, x10, .LBB0_20
	jal x0, .LBB0_2
.LBB0_104:                              //  %for.cond114.preheader
	bge x9, x10, .LBB0_129
.LBB0_105:                              //  %for.cond119.preheader.preheader
	add x21, x9, x18
	mv x23, x0
	mv x24, x18
	bltu x18, x22, .LBB0_107
.LBB0_128:                              //  %for.inc143
                                        //  =>This Inner Loop Header: Depth=1
	add x23, x9, x23
	add x24, x9, x24
	add x22, x9, x22
	bgeu x22, x26, .LBB0_129
.LBB0_106:                              //  %for.cond119.preheader
                                        //    in Loop: Header=BB0_128 Depth=1
	bgeu x18, x22, .LBB0_128
.LBB0_107:                              //  %land.rhs121.lr.ph
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_108
.LBB0_118:                              //  %land.rhs121.lr.ph.split
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	mv x25, x24
	mv x19, x22
	beq x0, x10, .LBB0_119
.LBB0_124:                              //  %land.rhs121
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_126 Depth 2
	add x20, x27, x19
	mv x10, x20
	mv x11, x19
	call.reg fp
	bge x0, x10, .LBB0_128
.LBB0_125:                              //  %do.body7.i610.preheader
                                        //    in Loop: Header=BB0_124 Depth=1
	mv x10, x0
	mv x11, x9
.LBB0_126:                              //  %do.body7.i610
                                        //    Parent Loop BB0_124 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12, x10, x25
	add x13, x10, x19
	lb x14, 0 ( x13 )
	lb x15, 0 ( x12 )
	add x10, x10, 1
	add x11, x11, -1
	sb x15, 0 ( x13 )
	sb x14, 0 ( x12 )
	blt x0, x11, .LBB0_126
.LBB0_127:                              //  %for.inc139
                                        //    in Loop: Header=BB0_124 Depth=1
	add x25, x27, x25
	mv x19, x20
	bltu x18, x20, .LBB0_124
	jal x0, .LBB0_128
.LBB0_108:                              //  %land.rhs121.us.preheader
	mv x25, x0
.LBB0_109:                              //  %land.rhs121.us
                                        //  =>This Inner Loop Header: Depth=1
	add x19, x25, x24
	add x20, x25, x22
	mv x10, x19
	mv x11, x20
	call.reg fp
	bge x0, x10, .LBB0_128
.LBB0_110:                              //  %if.then129.us
                                        //    in Loop: Header=BB0_109 Depth=1
	lw x10, 0 ( x20 )
	lw x11, 0 ( x19 )
	sub x25, x25, x9
	sw x11, 0 ( x20 )
	sw x10, 0 ( x19 )
	add x10, x25, x22
	bltu x18, x10, .LBB0_109
	jal x0, .LBB0_128
.LBB0_119:                              //  %land.rhs121.us800.preheader
	mv x20, x23
	mv x11, x22
.LBB0_120:                              //  %land.rhs121.us800
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_122 Depth 2
	add x19, x27, x11
	mv x10, x19
	call.reg fp
	bge x0, x10, .LBB0_128
.LBB0_121:                              //  %if.then.i594.us815
                                        //    in Loop: Header=BB0_120 Depth=1
	lw x11, 24 ( sp )               //  4-byte Folded Reload
	mv x10, x20
.LBB0_122:                              //  %do.body.i602.us816
                                        //    Parent Loop BB0_120 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12, x10, x18
	add x13, x10, x21
	lw x14, 0 ( x13 )
	lw x15, 0 ( x12 )
	add x10, x10, 4
	add x11, x11, -1
	sw x15, 0 ( x13 )
	sw x14, 0 ( x12 )
	blt x0, x11, .LBB0_122
.LBB0_123:                              //  %for.inc139.loopexit.us827
                                        //    in Loop: Header=BB0_120 Depth=1
	sub x20, x20, x9
	mv x11, x19
	bltu x18, x19, .LBB0_120
	jal x0, .LBB0_128
.LBB0_129:                              //  %pop
	lw x10, 12 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB0_155
.LBB0_130:                              //  %if.then224
	add x10, x10, -1
	sw x10, 12 ( sp )               //  4-byte Folded Spill
	sll x10, x10, 3&31
	add x11, sp, 28
	add x10, x10, x11
	lw x19, 4 ( x10 )
	lw x18, 0 ( x10 )
	mv x26, x0
	sltiu x10, x19, 7
	beq x0, x10, .LBB0_20
	jal x0, .LBB0_2
.LBB0_155:                              //  %if.end229
	lw fp, 92 ( sp )                //  4-byte Folded Reload
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	lw x26, 100 ( sp )              //  4-byte Folded Reload
	lw x25, 104 ( sp )              //  4-byte Folded Reload
	lw x24, 108 ( sp )              //  4-byte Folded Reload
	lw x23, 112 ( sp )              //  4-byte Folded Reload
	lw x22, 116 ( sp )              //  4-byte Folded Reload
	lw x21, 120 ( sp )              //  4-byte Folded Reload
	lw x20, 124 ( sp )              //  4-byte Folded Reload
	lw x19, 128 ( sp )              //  4-byte Folded Reload
	lw x18, 132 ( sp )              //  4-byte Folded Reload
	lw x9, 136 ( sp )               //  4-byte Folded Reload
	lw ra, 140 ( sp )               //  4-byte Folded Reload
	add sp, sp, 144
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	qsort, .Lfunc_end0-qsort
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
