	.text
	.file	"gdtoa-hexnan.c"
	.globl	__match                 //  -- Begin function __match
	.type	__match,@function
__match:                                //  @__match
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x10
	lw x10, 0 ( x12 )
	add x14, x0, 26
	add x13, x10, 1
	mv x10, x0
	lb x15, 0 ( x11 )
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_5
.LBB0_4:                                //  %while.body
                                        //    in Loop: Header=BB0_2 Depth=1
	add x13, x13, 1
	add x11, x11, 1
	bne x16, x15, .LBB0_6
.LBB0_1:                                //  %while.cond
                                        //    in Loop: Header=BB0_2 Depth=1
	lb x15, 0 ( x11 )
	beq x0, x15, .LBB0_5
.LBB0_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lb x16, 0 ( x13 )
	add x17, x16, -65
	and x17, x17, 255
	bgeu x17, x14, .LBB0_4
.LBB0_3:                                //    in Loop: Header=BB0_2 Depth=1
	add x16, x16, 32
	jal x0, .LBB0_4
.LBB0_5:                                //  %while.end
	seqz x10, x0
	sw x13, 0 ( x12 )
.LBB0_6:                                //  %cleanup
	jr ra
.Lfunc_end0:
	.size	__match, .Lfunc_end0-__match
	.cfi_endproc
                                        //  -- End function
	.globl	__hexnan                //  -- Begin function __hexnan
	.type	__hexnan,@function
__hexnan:                               //  @__hexnan
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	lw x11, 0 ( x11 )
	mv x5, x0
	sw x9, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -4
	sw x18, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -8
	sra x13, x11, 5&31
	sll x13, x13, 2&31
	add x15, x13, x12
	and x14, x11, 31
	sw x19, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -12
	sw x20, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -16
	sw x21, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -20
	sw x22, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -24
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	beq x14, x5, .LBB1_2
.LBB1_1:
	add x15, x15, 4
.LBB1_2:                                //  %entry
	lw x18, 0 ( x10 )
	lui x11, %hi( __hexdig )
	add x29, x11, %lo( __hexdig )
	add x11, x15, -4
	add x13, x0, -1
	mv x28, x0
	add x16, x0, 32
	add x6, x0, 7
	seqz x31, x0
	add x30, x0, 8
	mv x17, x11
	sw x0, -4 ( x15 )
.LBB1_3:                                //  %while.cond.outer.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_4 Depth 2
                                        //        Child Loop BB1_9 Depth 3
                                        //          Child Loop BB1_24 Depth 4
                                        //          Child Loop BB1_14 Depth 4
                                        //            Child Loop BB1_18 Depth 5
                                        //      Child Loop BB1_39 Depth 2
	mv fp, x5
	mv x4, x28
.LBB1_4:                                //  %while.cond.outer
                                        //    Parent Loop BB1_3 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_9 Depth 3
                                        //          Child Loop BB1_24 Depth 4
                                        //          Child Loop BB1_14 Depth 4
                                        //            Child Loop BB1_18 Depth 5
	mv x9, x18
	sll x3, x13, 2&31
	add x7, x3, x15
	bltu x12, x7, .LBB1_5
.LBB1_9:                                //  %while.cond.outer168
                                        //    Parent Loop BB1_3 Depth=1
                                        //      Parent Loop BB1_4 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_24 Depth 4
                                        //          Child Loop BB1_14 Depth 4
                                        //            Child Loop BB1_18 Depth 5
	bge fp, x5, .LBB1_19
.LBB1_10:                               //  %while.cond.outer168.split.us
                                        //    in Loop: Header=BB1_9 Depth=3
	bgeu x7, x17, .LBB1_23
.LBB1_11:                               //  %while.cond.us.us.preheader
                                        //    in Loop: Header=BB1_9 Depth=3
	lbu x19, 1 ( x9 )
	beq x0, x19, .LBB1_43
.LBB1_12:                               //  %while.body.us.us.preheader
                                        //    in Loop: Header=BB1_9 Depth=3
	add x20, x9, 1
	jal x0, .LBB1_14
.LBB1_13:                               //  %if.end18.us.us
                                        //    in Loop: Header=BB1_14 Depth=4
	lbu x19, 1 ( x18 )
	add x20, x18, 1
	mv x4, x30
	mv x9, x18
	beq x0, x19, .LBB1_64
.LBB1_14:                               //  %while.body.us.us
                                        //    Parent Loop BB1_3 Depth=1
                                        //      Parent Loop BB1_4 Depth=2
                                        //        Parent Loop BB1_9 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB1_18 Depth 5
	and x21, x19, 255
	mv x18, x20
	add x20, x21, x29
	lbu x20, 0 ( x20 )
	bltu x0, x20, .LBB1_21
.LBB1_15:                               //  %if.then7.us.us
                                        //    in Loop: Header=BB1_14 Depth=4
	bltu x16, x21, .LBB1_59
.LBB1_16:                               //  %if.then12.us.us
                                        //    in Loop: Header=BB1_14 Depth=4
	blt x6, x4, .LBB1_13
.LBB1_17:                               //  %if.then17.us.us
                                        //    in Loop: Header=BB1_14 Depth=4
	lw x20, 0 ( x7 )
	sll x4, x4, 2&31
	mv x9, x7
	sub x19, x16, x4
.LBB1_18:                               //  %do.body.i.us.us
                                        //    Parent Loop BB1_3 Depth=1
                                        //      Parent Loop BB1_4 Depth=2
                                        //        Parent Loop BB1_9 Depth=3
                                        //          Parent Loop BB1_14 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	lw x21, 4 ( x9 )
	sll x22, x21, x4
	or x20, x20, x22
	sw x20, 0 ( x9 )
	srl x20, x21, x19
	sw x20, 4 ( x9 )
	add x9, x9, 4
	bltu x9, x17, .LBB1_18
	jal x0, .LBB1_13
.LBB1_19:                               //  %while.cond
                                        //    in Loop: Header=BB1_9 Depth=3
	lbu x19, 1 ( x9 )
	beq x0, x19, .LBB1_43
.LBB1_20:                               //  %while.body
                                        //    in Loop: Header=BB1_9 Depth=3
	add x20, x19, x29
	lbu x20, 0 ( x20 )
	add x18, x9, 1
	beq x0, x20, .LBB1_35
.LBB1_21:                               //    in Loop: Header=BB1_9 Depth=3
	mv x21, x4
	mv x9, x18
.LBB1_22:                               //  %if.end31
                                        //    in Loop: Header=BB1_9 Depth=3
	add x4, x21, 1
	add x5, x5, 1
	blt x6, x21, .LBB1_9
	jal x0, .LBB1_34
.LBB1_23:                               //  %while.cond.us.preheader
                                        //    in Loop: Header=BB1_9 Depth=3
	add x9, x9, 1
.LBB1_24:                               //  %while.cond.us
                                        //    Parent Loop BB1_3 Depth=1
                                        //      Parent Loop BB1_4 Depth=2
                                        //        Parent Loop BB1_9 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	lbu x19, 0 ( x9 )
	mv x21, x4
	beq x0, x19, .LBB1_42
.LBB1_25:                               //  %while.body.us
                                        //    in Loop: Header=BB1_24 Depth=4
	add x4, x19, x29
	lbu x20, 0 ( x4 )
	bltu x0, x20, .LBB1_22
.LBB1_26:                               //  %if.then7.us
                                        //    in Loop: Header=BB1_24 Depth=4
	add x9, x9, 1
	sltiu x18, x19, 33
	mv x4, x30
	bltu x0, x18, .LBB1_24
	jal x0, .LBB1_58
.LBB1_5:                                //  %while.cond.outer168.us
                                        //    in Loop: Header=BB1_4 Depth=2
	lbu x19, 1 ( x9 )
	add x18, x9, 1
	bge fp, x5, .LBB1_27
.LBB1_6:                                //  %while.cond.outer168.split.us.us
                                        //    in Loop: Header=BB1_4 Depth=2
	bgeu x7, x17, .LBB1_29
.LBB1_7:                                //  %while.cond.outer168.split.us.split.us.us
                                        //    in Loop: Header=BB1_4 Depth=2
	beq x0, x19, .LBB1_43
.LBB1_8:                                //  %while.body.us.us.us
                                        //    in Loop: Header=BB1_4 Depth=2
	add x20, x19, x29
	lbu x20, 0 ( x20 )
	bltu x0, x20, .LBB1_31
	jal x0, .LBB1_36
.LBB1_27:                               //  %while.cond.outer168.while.cond.outer168.split_crit_edge.us
                                        //    in Loop: Header=BB1_4 Depth=2
	beq x0, x19, .LBB1_43
.LBB1_28:                               //  %while.body.us224
                                        //    in Loop: Header=BB1_4 Depth=2
	add x20, x19, x29
	lbu x20, 0 ( x20 )
	bltu x0, x20, .LBB1_31
	jal x0, .LBB1_35
.LBB1_29:                               //  %while.cond.outer168.split.us.while.cond.outer168.split.us.split_crit_edge.us
                                        //    in Loop: Header=BB1_4 Depth=2
	beq x0, x19, .LBB1_43
.LBB1_30:                               //  %while.body.us.us261
                                        //    in Loop: Header=BB1_4 Depth=2
	add x20, x19, x29
	lbu x20, 0 ( x20 )
	beq x0, x20, .LBB1_40
.LBB1_31:                               //  %if.end31.us
                                        //    in Loop: Header=BB1_4 Depth=2
	add x5, x5, 1
	blt x6, x4, .LBB1_33
.LBB1_32:                               //  %if.end41.loopexit
                                        //    in Loop: Header=BB1_4 Depth=2
	add x4, x4, 1
	mv x9, x18
	jal x0, .LBB1_34
.LBB1_33:                               //  %if.end39
                                        //    in Loop: Header=BB1_4 Depth=2
	add x13, x13, -1
	sll x7, x13, 2&31
	add x7, x7, x15
	sw x0, 0 ( x7 )
	mv x9, x18
	mv x4, x31
.LBB1_34:                               //  %if.end41
                                        //    in Loop: Header=BB1_4 Depth=2
	sll x7, x13, 2&31
	add x7, x7, x15
	lw x3, 0 ( x7 )
	and x18, x20, 15
	sll x3, x3, 4&31
	or x3, x18, x3
	sw x3, 0 ( x7 )
	sll x3, x13, 2&31
	add x7, x3, x15
	bgeu x12, x7, .LBB1_9
	jal x0, .LBB1_5
.LBB1_35:                               //  %if.then7.us228
                                        //    in Loop: Header=BB1_4 Depth=2
	sltiu x20, x19, 33
	bltu x0, x20, .LBB1_4
	jal x0, .LBB1_59
.LBB1_36:                               //  %if.then7.us.us.us
                                        //    in Loop: Header=BB1_3 Depth=1
	bltu x16, x19, .LBB1_59
.LBB1_37:                               //  %if.then12.us.us.us
                                        //    in Loop: Header=BB1_3 Depth=1
	blt x6, x4, .LBB1_41
.LBB1_38:                               //  %if.then17.us.us.us
                                        //    in Loop: Header=BB1_3 Depth=1
	lw fp, 0 ( x7 )
	sll x3, x4, 2&31
	sub x4, x16, x3
.LBB1_39:                               //  %do.body.i.us.us.us
                                        //    Parent Loop BB1_3 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x9, 4 ( x7 )
	sll x19, x9, x3
	or fp, fp, x19
	sw fp, 0 ( x7 )
	srl fp, x9, x4
	sw fp, 4 ( x7 )
	add x7, x7, 4
	bltu x7, x17, .LBB1_39
	jal x0, .LBB1_41
.LBB1_40:                               //  %if.then7.us.us265
                                        //    in Loop: Header=BB1_3 Depth=1
	sltiu fp, x19, 33
	beq x0, fp, .LBB1_59
.LBB1_41:                               //  %if.end22
                                        //    in Loop: Header=BB1_3 Depth=1
	add x13, x13, -1
	sll x17, x13, 2&31
	add x17, x17, x15
	sw x0, 0 ( x17 )
	jal x0, .LBB1_3
.LBB1_42:
	mv x4, x21
.LBB1_43:                               //  %while.end
	beq x0, x5, .LBB1_62
.LBB1_44:                               //  %if.end45
	bgeu x7, x17, .LBB1_48
.LBB1_45:                               //  %if.end45
	blt x6, x4, .LBB1_48
.LBB1_46:                               //  %if.then51
	lw x28, 0 ( x7 )
	sll x10, x4, 2&31
	mv x5, x7
	sub x6, x16, x10
.LBB1_47:                               //  %do.body.i160
                                        //  =>This Inner Loop Header: Depth=1
	lw x29, 4 ( x5 )
	sll x30, x29, x10
	or x28, x28, x30
	sw x28, 0 ( x5 )
	srl x28, x29, x6
	sw x28, 4 ( x5 )
	add x5, x5, 4
	bltu x5, x17, .LBB1_47
.LBB1_48:                               //  %if.end52
	bgeu x12, x7, .LBB1_52
.LBB1_49:                               //  %do.body.preheader
	add x14, x3, x15
	mv x10, x12
.LBB1_50:                               //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x15, 0 ( x14 )
	add x14, x14, 4
	add x13, x13, 1
	sw x15, 0 ( x10 )
	add x10, x10, 4
	blt x13, x0, .LBB1_50
.LBB1_51:                               //  %do.body60
                                        //  =>This Inner Loop Header: Depth=1
	sw x0, 0 ( x10 )
	add x10, x10, 4
	bgeu x11, x10, .LBB1_51
	jal x0, .LBB1_54
.LBB1_52:                               //  %if.else
	beq x0, x14, .LBB1_54
.LBB1_53:                               //  %if.then69
	sub x10, x16, x14
	add x13, x0, -1
	srl x10, x13, x10
	lw x13, 0 ( x11 )
	and x13, x10, x13
	sw x13, 0 ( x11 )
	add x10, x0, 5
	bltu x0, x13, .LBB1_63
	jal x0, .LBB1_56
.LBB1_54:                               //  %if.end73thread-pre-split
	lw x13, 0 ( x11 )
	add x10, x0, 5
	bltu x0, x13, .LBB1_63
	jal x0, .LBB1_56
.LBB1_55:                               //  %for.inc
                                        //    in Loop: Header=BB1_56 Depth=1
	lw x14, -4 ( x11 )
	add x13, x11, -4
	mv x11, x13
	bltu x0, x14, .LBB1_63
.LBB1_56:                               //  %if.end77
                                        //  =>This Inner Loop Header: Depth=1
	bne x12, x11, .LBB1_55
.LBB1_57:                               //  %if.then80
	seqz x11, x0
	sw x11, 0 ( x12 )
	jal x0, .LBB1_63
.LBB1_58:                               //  %if.end25.loopexit3
	add x9, x9, -2
	mv x4, x21
.LBB1_59:                               //  %if.end25
	and x28, x19, 255
	xor x28, x28, 41
	bltu x0, x28, .LBB1_62
.LBB1_60:                               //  %if.then28
	add x28, x9, 2
	sw x28, 0 ( x10 )
	bltu x0, x5, .LBB1_44
	jal x0, .LBB1_62
.LBB1_64:
	mv x4, x30
	bltu x0, x5, .LBB1_44
.LBB1_62:
	add x10, x0, 4
.LBB1_63:                               //  %cleanup
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x22, 8 ( sp )                //  4-byte Folded Reload
	lw x21, 12 ( sp )               //  4-byte Folded Reload
	lw x20, 16 ( sp )               //  4-byte Folded Reload
	lw x19, 20 ( sp )               //  4-byte Folded Reload
	lw x18, 24 ( sp )               //  4-byte Folded Reload
	lw x9, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	__hexnan, .Lfunc_end1-__hexnan
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
