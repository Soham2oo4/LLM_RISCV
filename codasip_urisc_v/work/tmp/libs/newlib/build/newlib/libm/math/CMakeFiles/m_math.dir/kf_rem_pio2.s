	.text
	.file	"kf_rem_pio2.c"
	.globl	__kernel_rem_pio2f      //  -- Begin function __kernel_rem_pio2f
	.type	__kernel_rem_pio2f,@function
__kernel_rem_pio2f:                     //  @__kernel_rem_pio2f
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -432
	.cfi_adjust_cfa_offset 432
	sw x27, 384 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	mv x27, x12
	sw x23, 400 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	mv x23, x10
	add x10, x27, -3
	sw x11, 16 ( sp )               //  4-byte Folded Spill
	sra x11, x10, 31&31
	srl x11, x11, 29&31
	add x10, x11, x10
	sw x9, 424 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x21, 408 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 404 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sra x22, x10, 3&31
	mv x9, x14
	mv x21, x13
	mv x10, x0
	sw ra, 428 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 420 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 416 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 412 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x24, 396 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 392 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 388 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw fp, 380 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x15, 56 ( sp )               //  4-byte Folded Spill
	blt x10, x22, .LBB0_2
.LBB0_1:                                //  %entry
	mv x22, x10
.LBB0_2:                                //  %entry
	lui x11, %hi( init_jk )
	sll x10, x9, 2&31
	add x11, x11, %lo( init_jk )
	add x10, x10, x11
	lw x20, 0 ( x10 )
	sll x11, x22, 3&31
	add x10, x21, -1
	sw x11, 48 ( sp )               //  4-byte Folded Spill
	sub fp, x27, x11
	add x11, x10, x20
	blt x11, x0, .LBB0_7
.LBB0_3:                                //  %for.body.preheader
	sub x11, x22, x21
	sub x24, x22, x10
	sll x10, x11, 2&31
	lw x11, 56 ( sp )               //  4-byte Folded Reload
	add x18, sp, 220
	add x19, x21, x20
	mv x26, x0
	add x10, x11, x10
	add x25, x10, 4
	mv x10, x26
	bge x24, x0, .LBB0_5
.LBB0_6:                                //  %cond.end
                                        //  =>This Inner Loop Header: Depth=1
	sw x10, 0 ( x18 )
	add x18, x18, 4
	add x25, x25, 4
	add x24, x24, 1
	add x19, x19, -1
	beq x0, x19, .LBB0_7
.LBB0_4:                                //  %for.body
                                        //    in Loop: Header=BB0_6 Depth=1
	mv x10, x26
	blt x24, x0, .LBB0_6
.LBB0_5:                                //  %cond.false
	lw x10, 0 ( x25 )
	jal __floatsisf
	jal x0, .LBB0_6
.LBB0_7:                                //  %for.cond14.preheader.lr.ph
	add x10, fp, -8
	sw x10, 52 ( sp )               //  4-byte Folded Spill
	sw x9, 20 ( sp )                //  4-byte Folded Spill
	sw x27, 12 ( sp )               //  4-byte Folded Spill
	bge x0, x21, .LBB0_8
.LBB0_10:                               //  %for.cond14.preheader.us.preheader
	sll x10, x21, 2&31
	add x11, sp, 220
	add x10, x11, x10
	mv x18, x0
	add x9, x10, -4
	add x24, sp, 60
	mv x10, x18
.LBB0_11:                               //  %for.cond14.preheader.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_12 Depth 2
	mv x25, x10
	mv x26, x23
	mv x27, x21
	mv x19, x9
	mv fp, x18
.LBB0_12:                               //  %for.body17.us
                                        //    Parent Loop BB0_11 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 0 ( x26 )
	lw x11, 0 ( x19 )
	jal __mulsf3
	mv x11, x10
	mv x10, fp
	jal __addsf3
	mv fp, x10
	add x26, x26, 4
	add x19, x19, -4
	add x27, x27, -1
	bltu x0, x27, .LBB0_12
.LBB0_13:                               //  %for.cond14.for.end26_crit_edge.us
                                        //    in Loop: Header=BB0_11 Depth=1
	sll x10, x25, 2&31
	add x10, x10, x24
	sw fp, 0 ( x10 )
	add x9, x9, 4
	add x10, x25, 1
	blt x25, x20, .LBB0_11
	jal x0, .LBB0_14
.LBB0_8:                                //  %for.cond14.preheader.preheader
	add x10, sp, 60
	add x11, x0, -1
.LBB0_9:                                //  %for.cond14.preheader
                                        //  =>This Inner Loop Header: Depth=1
	sw x0, 0 ( x10 )
	add x10, x10, 4
	add x11, x11, 1
	blt x11, x20, .LBB0_9
.LBB0_14:                               //  %recompute.preheader
	lw x10, 48 ( sp )               //  4-byte Folded Reload
	lw x12, 52 ( sp )               //  4-byte Folded Reload
	add x11, sp, 300
	mv x27, x20
	sub x10, x0, x10
	sw x10, 8 ( sp )                //  4-byte Folded Spill
	sll x10, x20, 2&31
	add x10, x11, x10
	add x11, x0, 7
	sub x11, x11, x12
	sw x11, 36 ( sp )               //  4-byte Folded Spill
	add x11, x0, 8
	sub x11, x11, x12
	sw x11, 32 ( sp )               //  4-byte Folded Spill
	lw x11, 56 ( sp )               //  4-byte Folded Reload
	add x10, x10, -4
	sw x10, 40 ( sp )               //  4-byte Folded Spill
	add x10, sp, 60
	add x10, x10, -4
	sw x10, 28 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( -1015021568 )
	add x11, x11, 4
	add x24, x10, %lo( -1015021568 )
	lui x10, %hi( -1056964608 )
	sw x11, 24 ( sp )               //  4-byte Folded Spill
	lui x11, (998244352>>12)&1048575
	add x10, x10, %lo( -1056964608 )
	sw x10, 44 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_15
.LBB0_58:                               //    in Loop: Header=BB0_15 Depth=1
	mv x27, x19
	lui x11, (998244352>>12)&1048575
.LBB0_15:                               //  %recompute
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_17 Depth 2
                                        //      Child Loop BB0_45 Depth 2
                                        //      Child Loop BB0_50 Depth 2
                                        //      Child Loop BB0_53 Depth 2
                                        //      Child Loop BB0_55 Depth 2
                                        //        Child Loop BB0_56 Depth 3
	sll x12, x27, 2&31
	add x10, sp, 60
	add x10, x12, x10
	lw x18, 0 ( x10 )
	sw x12, 48 ( sp )               //  4-byte Folded Spill
	bge x0, x27, .LBB0_18
.LBB0_16:                               //  %for.body35.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	add x9, sp, 300
	mv x26, x27
	mv fp, x11
	add x25, x12, x10
.LBB0_17:                               //  %for.body35
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x10, x18
	mv x11, fp
	jal __mulsf3
	jal __fixsfsi
	jal __floatsisf
	mv x11, x24
	mv x19, x10
	jal __mulsf3
	mv x11, x10
	mv x10, x18
	jal __addsf3
	jal __fixsfsi
	sw x10, 0 ( x9 )
	lw x10, 0 ( x25 )
	mv x11, x19
	jal __addsf3
	mv x18, x10
	add x9, x9, 4
	add x25, x25, -4
	add x26, x26, -1
	bltu x0, x26, .LBB0_17
.LBB0_18:                               //  %for.end48
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x9, 52 ( sp )                //  4-byte Folded Reload
	mv x10, x18
	mv x11, x9
	jal scalbnf
	lui x11, (1040187392>>12)&1048575
	mv x18, x10
	jal __mulsf3
	jal floorf
	lw x11, 44 ( sp )               //  4-byte Folded Reload
	jal __mulsf3
	mv x11, x10
	mv x10, x18
	jal __addsf3
	mv x19, x10
	jal __fixsfsi
	mv x18, x10
	jal __floatsisf
	mv x11, x10
	mv x10, x19
	jal __subsf3
	mv x19, x10
	bge x0, x9, .LBB0_20
.LBB0_19:                               //  %if.then58
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x26, 48 ( sp )               //  4-byte Folded Reload
	add x10, sp, 300
	lw x13, 32 ( sp )               //  4-byte Folded Reload
	add fp, x0, 255
	add x10, x10, x26
	lw x11, -4 ( x10 )
	sra x12, x11, x13
	sll x13, x12, x13
	sub x11, x11, x13
	sw x11, -4 ( x10 )
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	add x18, x18, x12
	sra x25, x11, x10
	blt x0, x25, .LBB0_26
.LBB0_23:                               //    in Loop: Header=BB0_15 Depth=1
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	mv x10, x19
	mv x11, x0
	jal __nesf2
	beq x0, x10, .LBB0_43
	jal x0, .LBB0_59
.LBB0_20:                               //  %if.else
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x26, 48 ( sp )               //  4-byte Folded Reload
	add fp, x0, 255
	beq x0, x9, .LBB0_21
.LBB0_24:                               //  %if.else77
                                        //    in Loop: Header=BB0_15 Depth=1
	mv x10, x19
	lui x11, (1056964608>>12)&1048575
	jal __gesf2
	add x25, x0, 2
	bge x10, x0, .LBB0_26
.LBB0_25:                               //    in Loop: Header=BB0_15 Depth=1
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	mv x25, x0
	mv x10, x19
	mv x11, x0
	jal __nesf2
	beq x0, x10, .LBB0_43
	jal x0, .LBB0_59
.LBB0_21:                               //  %if.then73
                                        //    in Loop: Header=BB0_15 Depth=1
	add x10, sp, 300
	add x10, x10, x26
	lw x10, -4 ( x10 )
	sra x25, x10, 7&31
	bge x0, x25, .LBB0_23
.LBB0_26:                               //  %if.then86
                                        //    in Loop: Header=BB0_15 Depth=1
	mv x9, x0
	seqz x15, x0
	add x16, x0, 256
	bge x0, x27, .LBB0_32
.LBB0_27:                               //  %for.body91.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	add x10, sp, 300
	mv x11, x27
	mv x12, x0
	lw x13, 0 ( x10 )
	mv x14, fp
	beq x0, x12, .LBB0_29
.LBB0_30:                               //  %for.inc106.sink.split
                                        //    in Loop: Header=BB0_15 Depth=1
	sub x13, x14, x13
	mv x9, x12
	sw x13, 0 ( x10 )
.LBB0_31:                               //  %for.inc106
                                        //    in Loop: Header=BB0_15 Depth=1
	add x10, x10, 4
	add x11, x11, -1
	mv x12, x9
	beq x0, x11, .LBB0_32
.LBB0_28:                               //  %for.body91
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x13, 0 ( x10 )
	mv x14, fp
	bltu x0, x12, .LBB0_30
.LBB0_29:                               //  %if.then95
                                        //    in Loop: Header=BB0_15 Depth=1
	mv x14, x16
	mv x12, x15
	mv x9, x0
	bltu x0, x13, .LBB0_30
	jal x0, .LBB0_31
.LBB0_32:                               //  %for.end108
                                        //    in Loop: Header=BB0_15 Depth=1
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	bge x0, fp, .LBB0_38
.LBB0_33:                               //  %if.then111
                                        //    in Loop: Header=BB0_15 Depth=1
	xor x10, fp, 2
	beq x0, x10, .LBB0_36
.LBB0_34:                               //  %if.then111
                                        //    in Loop: Header=BB0_15 Depth=1
	xor x10, fp, 1
	bltu x0, x10, .LBB0_38
.LBB0_35:                               //  %sw.bb
                                        //    in Loop: Header=BB0_15 Depth=1
	add x10, sp, 300
	add x10, x10, x26
	lw x11, -4 ( x10 )
	and x11, x11, 127
	jal x0, .LBB0_37
.LBB0_36:                               //  %sw.bb114
                                        //    in Loop: Header=BB0_15 Depth=1
	add x10, sp, 300
	add x10, x10, x26
	lw x11, -4 ( x10 )
	and x11, x11, 63
.LBB0_37:                               //  %if.end118
                                        //    in Loop: Header=BB0_15 Depth=1
	sw x11, -4 ( x10 )
.LBB0_38:                               //  %if.end118
                                        //    in Loop: Header=BB0_15 Depth=1
	add x18, x18, 1
	xor x10, x25, 2
	bltu x0, x10, .LBB0_42
.LBB0_39:                               //  %if.then121
                                        //    in Loop: Header=BB0_15 Depth=1
	lui fp, (1065353216>>12)&1048575
	mv x10, fp
	mv x11, x19
	jal __subsf3
	mv x19, x10
	beq x0, x9, .LBB0_40
.LBB0_41:                               //  %if.then125
                                        //    in Loop: Header=BB0_15 Depth=1
	mv x10, fp
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	mv x11, fp
	jal scalbnf
	mv x11, x10
	mv x10, x19
	jal __subsf3
	mv x19, x10
	add x25, x0, 2
.LBB0_42:                               //  %if.end130
                                        //    in Loop: Header=BB0_15 Depth=1
	mv x10, x19
	mv x11, x0
	jal __nesf2
	bltu x0, x10, .LBB0_59
.LBB0_43:                               //  %for.cond135.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	bge x20, x27, .LBB0_49
.LBB0_44:                               //  %for.body138.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	add x10, sp, 296
	add x10, x26, x10
	mv x12, x27
	mv x11, x0
.LBB0_45:                               //  %for.body138
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x13, 0 ( x10 )
	add x10, x10, -4
	add x12, x12, -1
	or x11, x11, x13
	blt x20, x12, .LBB0_45
.LBB0_46:                               //  %for.end142
                                        //    in Loop: Header=BB0_15 Depth=1
	bltu x0, x11, .LBB0_47
.LBB0_49:                               //  %for.cond146.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x10, 40 ( sp )               //  4-byte Folded Reload
	mv x19, x27
.LBB0_50:                               //  %for.cond146
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x12, 0 ( x10 )
	add x11, x10, -4
	add x19, x19, 1
	mv x10, x11
	beq x0, x12, .LBB0_50
.LBB0_51:                               //  %for.cond156.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	add x11, x27, x21
	bge x0, x21, .LBB0_52
.LBB0_54:                               //  %for.body160.us.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	sll x11, x11, 2&31
	add x12, sp, 220
	add x10, x27, 1
	add fp, x11, x12
.LBB0_55:                               //  %for.body160.us
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_56 Depth 3
	lw x11, 56 ( sp )               //  4-byte Folded Reload
	mv x9, x10
	add x10, x22, x9
	sll x10, x10, 2&31
	add x10, x10, x11
	lw x10, 0 ( x10 )
	jal __floatsisf
	add x11, x21, x27
	sll x11, x11, 2&31
	add x12, sp, 220
	add x11, x11, x12
	mv x26, x21
	mv x27, x23
	mv x25, fp
	mv x18, x0
	sw x10, 0 ( x11 )
.LBB0_56:                               //  %for.body169.us
                                        //    Parent Loop BB0_15 Depth=1
                                        //      Parent Loop BB0_55 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 0 ( x27 )
	lw x11, 0 ( x25 )
	jal __mulsf3
	mv x11, x10
	mv x10, x18
	jal __addsf3
	mv x18, x10
	add x27, x27, 4
	add x25, x25, -4
	add x26, x26, -1
	bltu x0, x26, .LBB0_56
.LBB0_57:                               //  %for.cond166.for.end178_crit_edge.us
                                        //    in Loop: Header=BB0_55 Depth=2
	sll x10, x9, 2&31
	add x11, sp, 60
	add x10, x10, x11
	sw x18, 0 ( x10 )
	mv x27, x9
	add fp, fp, 4
	add x10, x9, 1
	blt x9, x19, .LBB0_55
	jal x0, .LBB0_58
.LBB0_52:                               //  %for.body160.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x12, 24 ( sp )               //  4-byte Folded Reload
	add x10, x27, x22
	sll x10, x10, 2&31
	add fp, x10, x12
	add x10, sp, 64
	add x9, x26, x10
	sll x10, x11, 2&31
	add x11, sp, 220
	add x18, x10, x11
.LBB0_53:                               //  %for.body160
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 0 ( fp )
	jal __floatsisf
	sw x10, 0 ( x18 )
	sw x0, 0 ( x9 )
	add fp, fp, 4
	add x9, x9, 4
	add x18, x18, 4
	add x27, x27, 1
	blt x27, x19, .LBB0_53
	jal x0, .LBB0_58
.LBB0_40:                               //    in Loop: Header=BB0_15 Depth=1
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	add x25, x0, 2
	mv x10, x19
	mv x11, x0
	jal __nesf2
	beq x0, x10, .LBB0_43
.LBB0_59:                               //  %if.else196
	sub x11, x0, fp
	mv x10, x19
	jal scalbnf
	lui x11, (1132462080>>12)&1048575
	mv x19, x10
	jal __gesf2
	bge x10, x0, .LBB0_61
.LBB0_60:
	mv fp, x19
	jal x0, .LBB0_62
.LBB0_61:                               //  %if.then201
	lui x11, (998244352>>12)&1048575
	mv x10, x19
	jal __mulsf3
	jal __fixsfsi
	jal __floatsisf
	mv x11, x24
	mv fp, x10
	jal __mulsf3
	mv x11, x10
	mv x10, x19
	jal __addsf3
	jal __fixsfsi
	add x11, sp, 300
	add x11, x26, x11
	sw x10, 0 ( x11 )
	lw x10, 12 ( sp )               //  4-byte Folded Reload
	lw x11, 8 ( sp )                //  4-byte Folded Reload
	add x27, x27, 1
	add x10, x10, x11
	sw x10, 52 ( sp )               //  4-byte Folded Spill
.LBB0_62:                               //  %if.end217.sink.split
	sll x10, x27, 2&31
	add x11, sp, 300
	add x9, x10, x11
	mv x10, fp
	sw x25, 56 ( sp )               //  4-byte Folded Spill
	jal __fixsfsi
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	sw x10, 0 ( x9 )
	jal x0, .LBB0_63
.LBB0_47:                               //  %while.cond.preheader
	add x10, sp, 300
	add x10, x26, x10
	add x10, x10, -4
	sw x25, 56 ( sp )               //  4-byte Folded Spill
.LBB0_48:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x12, 0 ( x10 )
	add x11, x10, -4
	add x27, x27, -1
	add fp, fp, -8
	mv x10, x11
	beq x0, x12, .LBB0_48
.LBB0_63:                               //  %if.end217
	lui x10, (1065353216>>12)&1048575
	mv x11, fp
	jal scalbnf
	mv fp, x10
	blt x27, x0, .LBB0_72
.LBB0_64:                               //  %for.body222.preheader
	sll x9, x27, 2&31
	add x10, sp, 300
	add x21, x9, x10
	add x10, sp, 60
	add x22, x9, x10
	add x23, x27, 1
	lui x19, (998244352>>12)&1048575
.LBB0_65:                               //  %for.body222
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x21 )
	jal __floatsisf
	mv x11, x10
	mv x10, fp
	jal __mulsf3
	sw x10, 0 ( x22 )
	mv x10, fp
	mv x11, x19
	jal __mulsf3
	mv fp, x10
	add x21, x21, -4
	add x22, x22, -4
	add x23, x23, -1
	blt x0, x23, .LBB0_65
.LBB0_66:                               //  %for.cond231.preheader
	blt x27, x0, .LBB0_72
.LBB0_67:                               //  %for.body241.preheader.preheader
	add x10, sp, 60
	add x9, x9, x10
	lui x10, %hi( PIo2 )
	add x21, x10, %lo( PIo2 )
	mv x19, x0
	mv x10, x27
	jal x0, .LBB0_68
.LBB0_71:                               //  %for.end249
                                        //    in Loop: Header=BB0_68 Depth=1
	sll x10, x24, 2&31
	add x11, sp, 140
	add x10, x10, x11
	sw fp, 0 ( x10 )
	add x9, x9, -4
	add x10, x23, -1
	bge x0, x23, .LBB0_72
.LBB0_68:                               //  %for.body241.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_69 Depth 2
	mv x23, x10
	mv x10, x19
	sub x24, x27, x23
	mv x25, x9
	mv x26, x21
	mv fp, x19
.LBB0_69:                               //  %for.body241
                                        //    Parent Loop BB0_68 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x22, x10
	lw x10, 0 ( x26 )
	lw x11, 0 ( x25 )
	jal __mulsf3
	mv x11, x10
	mv x10, fp
	jal __addsf3
	mv fp, x10
	bge x22, x20, .LBB0_71
.LBB0_70:                               //  %for.body241
                                        //    in Loop: Header=BB0_69 Depth=2
	add x25, x25, 4
	add x26, x26, 4
	add x10, x22, 1
	bltu x22, x24, .LBB0_69
	jal x0, .LBB0_71
.LBB0_72:                               //  %for.end254
	lw x11, 20 ( sp )               //  4-byte Folded Reload
	add x10, x11, -1
	sltiu x10, x10, 2
	bltu x0, x10, .LBB0_92
.LBB0_73:                               //  %for.end254
	lw x26, 56 ( sp )               //  4-byte Folded Reload
	beq x0, x11, .LBB0_86
.LBB0_74:                               //  %for.end254
	xor x10, x11, 3
	bltu x0, x10, .LBB0_105
.LBB0_75:                               //  %for.cond311.preheader
	mv fp, x0
	bge x0, x27, .LBB0_84
.LBB0_76:                               //  %for.body314.preheader
	sll x10, x27, 2&31
	add x11, sp, 140
	add x21, x10, x11
	lw x9, 0 ( x21 )
	add x22, x21, -4
	mv x23, x27
.LBB0_77:                               //  %for.body314
                                        //  =>This Inner Loop Header: Depth=1
	lw x19, 0 ( x22 )
	mv x11, x9
	mv x10, x19
	jal __addsf3
	mv x20, x10
	mv x10, x19
	mv x11, x20
	jal __subsf3
	mv x11, x10
	mv x10, x9
	jal __addsf3
	sw x10, 4 ( x22 )
	sw x20, 0 ( x22 )
	add x22, x22, -4
	add x23, x23, -1
	mv x9, x20
	blt x0, x23, .LBB0_77
.LBB0_78:                               //  %for.cond329.preheader
	slti x23, x27, 2
	bltu x0, x23, .LBB0_84
.LBB0_79:                               //  %for.body332.preheader
	lw x9, 0 ( x21 )
	add x24, x21, -4
	seqz x22, x0
	mv x25, x27
.LBB0_80:                               //  %for.body332
                                        //  =>This Inner Loop Header: Depth=1
	lw x19, 0 ( x24 )
	mv x11, x9
	mv x10, x19
	jal __addsf3
	mv x20, x10
	mv x10, x19
	mv x11, x20
	jal __subsf3
	mv x11, x10
	mv x10, x9
	jal __addsf3
	sw x10, 4 ( x24 )
	sw x20, 0 ( x24 )
	add x24, x24, -4
	add x25, x25, -1
	mv x9, x20
	blt x22, x25, .LBB0_80
.LBB0_81:                               //  %for.cond347.preheader
	bltu x0, x23, .LBB0_84
.LBB0_82:                               //  %for.body350.preheader
	mv fp, x0
.LBB0_83:                               //  %for.body350
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x21 )
	mv x10, fp
	jal __addsf3
	mv fp, x10
	add x21, x21, -4
	add x27, x27, -1
	blt x22, x27, .LBB0_83
.LBB0_84:                               //  %for.end355
	lw x10, 140 ( sp )
	lw x12, 16 ( sp )               //  4-byte Folded Reload
	beq x0, x26, .LBB0_85
.LBB0_103:                              //  %if.else364
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x10, x11, x10
	sw x10, 0 ( x12 )
	xor x10, x11, fp
	sw x10, 8 ( x12 )
	lw x10, 144 ( sp )
	xor x10, x11, x10
	jal x0, .LBB0_104
.LBB0_92:                               //  %sw.bb273
	lw x20, 56 ( sp )               //  4-byte Folded Reload
	mv x9, x0
	mv x12, x9
	blt x27, x0, .LBB0_95
.LBB0_93:                               //  %for.body277.preheader
	sll x10, x27, 2&31
	add x11, sp, 140
	add fp, x10, x11
	mv x12, x0
	add x19, x27, 1
.LBB0_94:                               //  %for.body277
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( fp )
	mv x10, x12
	jal __addsf3
	mv x12, x10
	add fp, fp, -4
	add x19, x19, -1
	blt x0, x19, .LBB0_94
.LBB0_95:                               //  %for.end282
	lui x10, %hi( -2147483648 )
	add fp, x10, %lo( -2147483648 )
	mv x10, x12
	beq x20, x9, .LBB0_97
.LBB0_96:                               //  %for.end282
	xor x10, fp, x12
.LBB0_97:                               //  %for.end282
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	mv x11, x12
	sw x10, 0 ( x19 )
	lw x10, 140 ( sp )
	jal __subsf3
	bge x0, x27, .LBB0_100
.LBB0_98:                               //  %for.body296.preheader
	add x9, sp, 144
.LBB0_99:                               //  %for.body296
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x9 )
	jal __addsf3
	add x9, x9, 4
	add x27, x27, -1
	bltu x0, x27, .LBB0_99
.LBB0_100:                              //  %for.end301
	mv x11, x0
	beq x20, x11, .LBB0_102
.LBB0_101:                              //  %for.end301
	xor x10, fp, x10
.LBB0_102:                              //  %for.end301
	sw x10, 4 ( x19 )
	jal x0, .LBB0_105
.LBB0_86:                               //  %for.cond256.preheader
	mv fp, x0
	mv x10, fp
	blt x27, x0, .LBB0_89
.LBB0_87:                               //  %for.body259.preheader
	sll x10, x27, 2&31
	add x11, sp, 140
	add x9, x10, x11
	mv x10, x0
	add x19, x27, 1
.LBB0_88:                               //  %for.body259
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x9 )
	jal __addsf3
	add x9, x9, -4
	add x19, x19, -1
	blt x0, x19, .LBB0_88
.LBB0_89:                               //  %for.end264
	beq x26, fp, .LBB0_91
.LBB0_90:                               //  %for.end264
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x10, x11, x10
.LBB0_91:                               //  %for.end264
	lw x11, 16 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x11 )
	jal x0, .LBB0_105
.LBB0_85:                               //  %if.then358
	sw x10, 0 ( x12 )
	lw x10, 144 ( sp )
	sw fp, 8 ( x12 )
.LBB0_104:                              //  %sw.epilog374
	sw x10, 4 ( x12 )
.LBB0_105:                              //  %sw.epilog374
	and x10, x18, 7
	lw fp, 380 ( sp )               //  4-byte Folded Reload
	lw x27, 384 ( sp )              //  4-byte Folded Reload
	lw x26, 388 ( sp )              //  4-byte Folded Reload
	lw x25, 392 ( sp )              //  4-byte Folded Reload
	lw x24, 396 ( sp )              //  4-byte Folded Reload
	lw x23, 400 ( sp )              //  4-byte Folded Reload
	lw x22, 404 ( sp )              //  4-byte Folded Reload
	lw x21, 408 ( sp )              //  4-byte Folded Reload
	lw x20, 412 ( sp )              //  4-byte Folded Reload
	lw x19, 416 ( sp )              //  4-byte Folded Reload
	lw x18, 420 ( sp )              //  4-byte Folded Reload
	lw x9, 424 ( sp )               //  4-byte Folded Reload
	lw ra, 428 ( sp )               //  4-byte Folded Reload
	add sp, sp, 432
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__kernel_rem_pio2f, .Lfunc_end0-__kernel_rem_pio2f
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	init_jk,@object         //  @init_jk
	.section	.rodata,"a",@progbits
	.p2align	2
init_jk:
	.long	4                       //  0x4
	.long	7                       //  0x7
	.long	9                       //  0x9
	.size	init_jk, 12

	.address_space	0
	.type	PIo2,@object            //  @PIo2
	.p2align	2
PIo2:
	.long	1070137344              //  float 1.5703125
	.long	972029952               //  float 4.57763672E-4
	.long	937033728               //  float 2.59876251E-5
	.long	866254848               //  float 7.54371285E-8
	.long	780402688               //  float 6.00266503E-11
	.long	726663168               //  float 7.38964445E-13
	.long	667025408               //  float 5.38458167E-15
	.long	584056832               //  float 5.6378513E-18
	.long	532938752               //  float 8.30092288E-20
	.long	465960960               //  float 3.27563523E-22
	.long	390332416               //  float 6.33310156E-25
	.size	PIo2, 44


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
