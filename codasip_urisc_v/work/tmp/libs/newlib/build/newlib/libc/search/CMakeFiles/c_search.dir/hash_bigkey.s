	.text
	.file	"hash_bigkey.c"
	.globl	__big_insert            //  -- Begin function __big_insert
	.type	__big_insert,@function
__big_insert:                           //  @__big_insert
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x20, x11
	sw x26, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	lw x26, 16 ( x20 )
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	mv x24, x10
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	lhu x10, 0 ( x26 )
	sw x25, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x27, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	lw x25, 4 ( x13 )
	lw x19, 0 ( x13 )
	lw x27, 4 ( x12 )
	add x11, x10, 1
	lui x14, %hi( 65535 )
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x13, 4 ( sp )                //  4-byte Folded Spill
	beq x0, x27, .LBB0_15
.LBB0_1:                                //  %for.body.preheader
	lw x21, 0 ( x12 )
	sll x11, x11, 1&31
	add x13, x11, x26
	add x9, x14, %lo( 65535 )
	seqz x23, x0
	sw x24, 8 ( sp )                //  4-byte Folded Spill
	lh x11, 0 ( x13 )
	add x11, x11, -8
	and x11, x9, x11
	blt x11, x27, .LBB0_7
	jal x0, .LBB0_6
.LBB0_2:                                //  %if.then54
                                        //    in Loop: Header=BB0_7 Depth=1
	lh x10, 4 ( x18 )
	and x23, x9, x24
	mv x11, x19
	mv x12, x23
	sub fp, x10, x24
	and x10, x9, fp
	add x10, x10, x26
	sh fp, 0 ( x18 )
	jal memmove
	add x10, x0, 3
	sh x10, -4 ( x18 )
	lhu x10, 0 ( x26 )
	sub x25, x25, x23
	add x19, x23, x19
	seqz x23, x0
	sll x11, x10, 1&31
	add x11, x26, x11
	lh x12, 2 ( x11 )
	add x10, x10, 2
	sub x12, x12, x24
	sh x12, 2 ( x11 )
.LBB0_3:                                //  %if.end110.sink.split
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x24, 8 ( sp )                //  4-byte Folded Reload
	sll x10, x10, 1&31
	add x10, x10, x26
	sh fp, 0 ( x10 )
.LBB0_4:                                //  %if.end110
                                        //    in Loop: Header=BB0_7 Depth=1
	lb x10, 20 ( x20 )
	lw x26, 16 ( x20 )
	add x21, x22, x21
	or x10, x10, 1
	sb x10, 20 ( x20 )
	lhu x10, 0 ( x26 )
	add x11, x10, 1
	sll x12, x11, 1&31
	add x13, x12, x26
	beq x0, x27, .LBB0_14
.LBB0_5:                                //  %for.body
                                        //    in Loop: Header=BB0_7 Depth=1
	lh x11, 0 ( x13 )
	add x11, x11, -8
	and x11, x9, x11
	blt x11, x27, .LBB0_7
.LBB0_6:                                //  %for.body
	mv x11, x27
.LBB0_7:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	and x10, x9, x10
	sll x10, x10, 1&31
	add x10, x26, x10
	lh x10, 4 ( x10 )
	and x22, x9, x11
	mv x12, x22
	sub fp, x10, x11
	and x10, x9, fp
	add x10, x10, x26
	mv x11, x21
	jal memmove
	lhu x10, 0 ( x26 )
	sll x11, x10, 1&31
	add x12, x26, x11
	add x10, x10, 2
	sh fp, 2 ( x12 )
	and x12, x9, x10
	sub x11, fp, x11
	sll x12, x12, 1&31
	sh x10, 0 ( x26 )
	sll x10, x10, 1&31
	add x12, x26, x12
	add x11, x11, -10
	add x10, x10, x26
	sh x11, 2 ( x12 )
	sh fp, 4 ( x12 )
	sh x23, 0 ( x10 )
	mv x10, x24
	mv x11, x20
	jal __add_ovflpage
	mv x20, x10
	beq x0, x20, .LBB0_28
.LBB0_8:                                //  %if.end
                                        //    in Loop: Header=BB0_7 Depth=1
	sub x27, x27, x22
	bltu x0, x27, .LBB0_4
.LBB0_9:                                //  %if.then48
                                        //    in Loop: Header=BB0_7 Depth=1
	lhu x10, 0 ( x26 )
	sll x11, x10, 1&31
	add x18, x26, x11
	lhu x24, 2 ( x18 )
	beq x0, x24, .LBB0_12
.LBB0_10:                               //  %if.then54
                                        //    in Loop: Header=BB0_7 Depth=1
	blt x24, x25, .LBB0_2
.LBB0_11:                               //  %if.then54
                                        //    in Loop: Header=BB0_7 Depth=1
	mv x24, x25
	jal x0, .LBB0_2
.LBB0_12:                               //  %if.else
                                        //    in Loop: Header=BB0_7 Depth=1
	add x10, x10, -2
	add fp, x0, 2
	jal x0, .LBB0_3
.LBB0_14:                               //  %for.end.loopexit
	lui x14, %hi( 65535 )
.LBB0_15:                               //  %for.end
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	mv x9, x0
	add x27, x0, 3
	beq x0, x25, .LBB0_27
.LBB0_16:                               //  %for.body131.preheader
	sll x11, x11, 1&31
	add x11, x11, x26
	add x22, x14, %lo( 65535 )
	add x23, x0, 2
	jal x0, .LBB0_19
.LBB0_17:                               //  %if.else193
                                        //    in Loop: Header=BB0_19 Depth=1
	sh x27, 0 ( x11 )
.LBB0_18:                               //  %if.end195
                                        //    in Loop: Header=BB0_19 Depth=1
	lb x11, 20 ( x20 )
	add x19, x21, x19
	or x11, x11, 1
	sb x11, 20 ( x20 )
	and x11, x22, x10
	sll x11, x11, 1&31
	add x11, x26, x11
	add x11, x11, 2
	beq x0, x25, .LBB0_27
.LBB0_19:                               //  %for.body131
                                        //  =>This Inner Loop Header: Depth=1
	lh x11, 0 ( x11 )
	add x11, x11, -8
	and x12, x22, x11
	mv x11, x12
	blt x12, x25, .LBB0_21
.LBB0_20:                               //  %for.body131
                                        //    in Loop: Header=BB0_19 Depth=1
	mv x11, x25
.LBB0_21:                               //  %for.body131
                                        //    in Loop: Header=BB0_19 Depth=1
	bne x25, x12, .LBB0_24
.LBB0_22:                               //  %land.lhs.true
                                        //    in Loop: Header=BB0_19 Depth=1
	lw x12, 4 ( x18 )
	bne x25, x12, .LBB0_24
.LBB0_23:                               //    in Loop: Header=BB0_19 Depth=1
	add x11, x22, x11
.LBB0_24:                               //  %if.end148
                                        //    in Loop: Header=BB0_19 Depth=1
	and x10, x22, x10
	sll x10, x10, 1&31
	add x10, x26, x10
	lh x10, 4 ( x10 )
	and x21, x22, x11
	mv x12, x21
	sub fp, x10, x11
	and x10, x22, fp
	add x10, x10, x26
	mv x11, x19
	jal memmove
	lhu x10, 0 ( x26 )
	sub x25, x25, x21
	sll x11, x10, 1&31
	add x12, x26, x11
	add x10, x10, 2
	sh fp, 2 ( x12 )
	and x12, x22, x10
	sll x12, x12, 1&31
	sub x11, fp, x11
	add x12, x26, x12
	add x11, x11, -10
	sh x11, 2 ( x12 )
	sll x11, x10, 1&31
	add x11, x11, x26
	sh fp, 4 ( x12 )
	sh x10, 0 ( x26 )
	beq x0, x25, .LBB0_17
.LBB0_25:                               //  %if.then186
                                        //    in Loop: Header=BB0_19 Depth=1
	sh x23, 0 ( x11 )
	mv x10, x24
	mv x11, x20
	jal __add_ovflpage
	mv x20, x10
	beq x0, x20, .LBB0_28
.LBB0_26:                               //  %if.end191
                                        //    in Loop: Header=BB0_19 Depth=1
	lw x26, 16 ( x20 )
	lhu x10, 0 ( x26 )
	jal x0, .LBB0_18
.LBB0_27:
	mv x10, x9
	jal x0, .LBB0_29
.LBB0_28:
	add x10, x0, -1
.LBB0_29:                               //  %cleanup
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
	.size	__big_insert, .Lfunc_end0-__big_insert
	.cfi_endproc
                                        //  -- End function
	.globl	__big_delete            //  -- Begin function __big_delete
	.type	__big_delete,@function
__big_delete:                           //  @__big_delete
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -48
	mv fp, x10
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	mv x20, x0
	lui x10, %hi( 65534 )
	add x23, x9, 16
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x22, x10, %lo( 65534 )
	sw x26, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 26, -44
	mv x26, x20
	seqz x24, x0
	add x25, x0, 2
	add x21, x0, -1
	mv x18, x20
	mv x19, x9
	mv x10, x23
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x10, 0 ( x10 )
	lhu x11, 4 ( x10 )
	bltu x0, x26, .LBB1_2
	jal x0, .LBB1_5
.LBB1_12:                               //  %if.end29
	add x10, x19, 16
	mv x18, x19
	beq x0, x19, .LBB1_22
.LBB1_1:                                //  %while.cond
	lw x10, 0 ( x10 )
	lhu x11, 4 ( x10 )
	beq x0, x26, .LBB1_5
.LBB1_2:                                //  %lor.rhs
	xor x12, x11, 3
	beq x0, x12, .LBB1_13
.LBB1_3:                                //  %while.body.thread
	and x11, x22, x11
	mv x12, x24
	beq x11, x25, .LBB1_8
.LBB1_4:                                //  %while.body.thread
	mv x12, x26
	jal x0, .LBB1_8
.LBB1_5:                                //  %while.body
	and x13, x22, x11
	mv x12, x24
	beq x13, x25, .LBB1_7
.LBB1_6:                                //  %while.body
	mv x12, x26
.LBB1_7:                                //  %while.body
	xor x11, x11, 3
	bltu x0, x11, .LBB1_8
.LBB1_9:                                //  %land.lhs.true
	lhu x11, 0 ( x10 )
	mv x26, x12
	sll x13, x11, 1&31
	add x13, x10, x13
	lhu x13, 2 ( x13 )
	beq x0, x13, .LBB1_10
	jal x0, .LBB1_14
.LBB1_8:                                //  %while.body.if.end20_crit_edge
	lhu x11, 0 ( x10 )
	mv x26, x12
.LBB1_10:                               //  %if.end20
	lb x12, 20 ( x19 )
	sll x11, x11, 1&31
	add x10, x10, x11
	lhu x11, -2 ( x10 )
	or x12, x12, 1
	sb x12, 20 ( x19 )
	mv x10, fp
	mv x12, x19
	mv x13, x20
	jal __get_buf
	mv x19, x10
	beq x0, x18, .LBB1_12
.LBB1_11:                               //  %if.then28
	mv x10, fp
	mv x11, x18
	jal __free_ovflpage
	jal x0, .LBB1_12
.LBB1_13:                               //  %lor.rhs.while.end_crit_edge
	lhu x11, 0 ( x10 )
.LBB1_14:                               //  %while.end
	lw x12, 0 ( x23 )
	sltiu x14, x11, 3
	sll x13, x11, 1&31
	bltu x0, x14, .LBB1_16
.LBB1_15:                               //  %if.then41
	add x10, x10, x13
	lh x10, -2 ( x10 )
	lw x14, 8 ( x19 )
	sh x0, 4 ( x12 )
	sh x10, 2 ( x12 )
	sw x14, 8 ( x9 )
	jal x0, .LBB1_17
.LBB1_16:                               //  %if.else
	sw x0, 8 ( x9 )
.LBB1_17:                               //  %if.end46
	add x10, x11, -2
	lui x11, %hi( 65535 )
	add x11, x11, %lo( 65535 )
	and x11, x11, x10
	sh x10, 0 ( x12 )
	sll x10, x11, 1&31
	lw x11, 12 ( fp )
	add x10, x12, x10
	sub x12, x11, x13
	add x12, x22, x12
	add x11, x11, -1
	sh x12, 2 ( x10 )
	sh x11, 4 ( x10 )
	lb x10, 20 ( x9 )
	or x10, x10, 1
	sb x10, 20 ( x9 )
	beq x0, x19, .LBB1_19
.LBB1_18:                               //  %if.then70
	mv x10, fp
	mv x11, x19
	jal __free_ovflpage
.LBB1_19:                               //  %if.end71
	beq x18, x19, .LBB1_21
.LBB1_20:                               //  %if.then74
	mv x10, fp
	mv x11, x18
	jal __free_ovflpage
.LBB1_21:                               //  %if.end75
	lw x10, 56 ( fp )
	mv x21, x0
	add x10, x10, -1
	sw x10, 56 ( fp )
.LBB1_22:                               //  %cleanup
	mv x10, x21
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
.Lfunc_end1:
	.size	__big_delete, .Lfunc_end1-__big_delete
	.cfi_endproc
                                        //  -- End function
	.globl	__find_bigpair          //  -- Begin function __find_bigpair
	.type	__find_bigpair,@function
__find_bigpair:                         //  @__find_bigpair
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x22, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	mv x22, x11
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	mv x21, x10
	lw x10, 16 ( x22 )
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x12
	sll x11, x19, 1&31
	add x11, x11, x10
	lh x11, 0 ( x11 )
	lh x12, 12 ( x21 )
	sw x25, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sub x11, x12, x11
	lui x12, %hi( 65535 )
	add x25, x12, %lo( 65535 )
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv x20, x14
	mv fp, x13
	and x11, x25, x11
	add x9, x0, -2
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	bge x20, x11, .LBB2_2
.LBB2_1:
	mv x18, x20
	beq x18, x11, .LBB2_12
	jal x0, .LBB2_8
.LBB2_2:                                //  %land.rhs.preheader
	mv x23, x0
	seqz x27, x0
	mv x18, x20
.LBB2_3:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	mv x24, x11
	sll x11, x19, 1&31
	add x26, x10, x11
	lhu x11, 2 ( x26 )
	xor x11, x11, 1
	bltu x0, x11, .LBB2_4
.LBB2_5:                                //  %for.body
                                        //    in Loop: Header=BB2_3 Depth=1
	lhu x11, 0 ( x26 )
	mv x12, x24
	add x10, x11, x10
	mv x11, fp
	jal memcmp
	bltu x0, x10, .LBB2_8
.LBB2_6:                                //  %if.end
                                        //    in Loop: Header=BB2_3 Depth=1
	lhu x11, 4 ( x26 )
	mv x10, x21
	mv x12, x22
	mv x13, x23
	jal __get_buf
	mv x22, x10
	beq x0, x22, .LBB2_7
.LBB2_9:                                //  %if.end22
                                        //    in Loop: Header=BB2_3 Depth=1
	lw x10, 16 ( x22 )
	lh x11, 12 ( x21 )
	add fp, x24, fp
	sub x18, x18, x24
	lh x12, 2 ( x10 )
	mv x19, x27
	sub x11, x11, x12
	and x11, x25, x11
	bge x20, x11, .LBB2_3
.LBB2_10:                               //  %for.end.loopexit.split.loop.exit
	seqz x19, x0
	beq x18, x11, .LBB2_12
	jal x0, .LBB2_8
.LBB2_4:
	mv x11, x24
	bne x18, x11, .LBB2_8
.LBB2_12:                               //  %lor.lhs.false
	sll x11, x19, 1&31
	add x11, x11, x10
	lhu x11, 0 ( x11 )
	mv x12, x18
	add x10, x11, x10
	mv x11, fp
	jal memcmp
	mv x11, x0
	beq x10, x11, .LBB2_14
.LBB2_13:                               //  %lor.lhs.false
	add x19, x0, -2
.LBB2_14:                               //  %lor.lhs.false
	mv x10, x19
	jal x0, .LBB2_15
.LBB2_7:
	add x9, x0, -3
.LBB2_8:                                //  %cleanup
	mv x10, x9
.LBB2_15:                               //  %lor.lhs.false
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
.Lfunc_end2:
	.size	__find_bigpair, .Lfunc_end2-__find_bigpair
	.cfi_endproc
                                        //  -- End function
	.globl	__find_last_page        //  -- Begin function __find_last_page
	.type	__find_last_page,@function
__find_last_page:                       //  @__find_last_page
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	lw x12, 0 ( x9 )
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv x18, x10
	mv fp, x0
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal x0, .LBB3_1
.LBB3_6:                                //  %if.end
                                        //    in Loop: Header=BB3_1 Depth=1
	add x10, x10, x13
	lhu x11, -2 ( x10 )
	mv x10, x18
	mv x13, fp
	jal __get_buf
	mv x12, x10
	beq x0, x12, .LBB3_9
.LBB3_1:                                //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 16 ( x12 )
	lhu x13, 4 ( x10 )
	lhu x11, 0 ( x10 )
	xor x14, x13, 3
	sll x13, x11, 1&31
	bltu x0, x14, .LBB3_6
.LBB3_2:                                //  %land.lhs.true
                                        //    in Loop: Header=BB3_1 Depth=1
	xor x14, x11, 2
	beq x0, x14, .LBB3_3
.LBB3_4:                                //  %lor.lhs.false
                                        //    in Loop: Header=BB3_1 Depth=1
	add x14, x13, x10
	lhu x15, 0 ( x14 )
	beq x0, x15, .LBB3_7
.LBB3_5:                                //  %lor.lhs.false10
                                        //    in Loop: Header=BB3_1 Depth=1
	lhu x14, 2 ( x14 )
	beq x0, x14, .LBB3_6
.LBB3_7:                                //  %for.end
	sltiu x11, x11, 3
	sw x12, 0 ( x9 )
	bltu x0, x11, .LBB3_9
.LBB3_8:                                //  %if.then25
	lhu fp, 6 ( x10 )
	jal x0, .LBB3_9
.LBB3_3:                                //  %for.end.thread
	sw x12, 0 ( x9 )
.LBB3_9:                                //  %cleanup
	mv x10, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end3:
	.size	__find_last_page, .Lfunc_end3-__find_last_page
	.cfi_endproc
                                        //  -- End function
	.globl	__big_return            //  -- Begin function __big_return
	.type	__big_return,@function
__big_return:                           //  @__big_return
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x20, x11
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv fp, x10
	lw x10, 16 ( x20 )
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	mv x21, x14
	mv x19, x13
	add x11, x12, 1
	mv x18, x0
	add x9, x0, -1
	add x22, x0, 2
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
.LBB4_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	sll x11, x11, 1&31
	add x11, x11, x10
	lhu x11, 0 ( x11 )
	xor x12, x11, 1
	bltu x0, x12, .LBB4_2
.LBB4_8:                                //  %while.body
                                        //    in Loop: Header=BB4_1 Depth=1
	lhu x11, 0 ( x10 )
	mv x12, x20
	mv x13, x18
	sll x11, x11, 1&31
	add x10, x10, x11
	lhu x11, -2 ( x10 )
	mv x10, fp
	jal __get_buf
	mv x20, x10
	beq x0, x20, .LBB4_21
.LBB4_9:                                //  %if.end
                                        //    in Loop: Header=BB4_1 Depth=1
	lw x10, 16 ( x20 )
	mv x11, x22
	jal x0, .LBB4_1
.LBB4_2:                                //  %while.cond
	xor x11, x11, 2
	bltu x0, x11, .LBB4_10
.LBB4_3:                                //  %if.then12
	lhu x11, 0 ( x10 )
	mv x22, x0
	mv x12, x20
	mv x13, x22
	sll x11, x11, 1&31
	add x10, x10, x11
	lhu x11, -2 ( x10 )
	mv x10, fp
	jal __get_buf
	mv x11, x10
	beq x0, x11, .LBB4_21
.LBB4_4:                                //  %if.end21
	lw x10, 16 ( x11 )
	lhu x24, 12 ( x11 )
	mv x20, x11
	lhu x23, 2 ( x10 )
	jal x0, .LBB4_5
.LBB4_10:                               //  %if.else
	lhu x12, 0 ( x10 )
	sll x11, x12, 1&31
	add x11, x11, x10
	lhu x23, 0 ( x11 )
	lhu x13, 2 ( x11 )
	beq x0, x13, .LBB4_11
.LBB4_13:                               //  %if.else50
	add x13, x23, x10
	lhu x10, 2 ( x10 )
	sw x13, 0 ( x19 )
	sub x10, x10, x23
	sw x10, 4 ( x19 )
	beq x0, x21, .LBB4_20
.LBB4_14:                               //  %if.then60
	xor x10, x12, 2
	bltu x0, x10, .LBB4_16
.LBB4_15:                               //  %if.then65
	seqz x10, x0
	sw x10, 296 ( fp )
.LBB4_18:                               //  %if.then83
	lw x10, 292 ( fp )
	add x10, x10, 1
	sw x10, 292 ( fp )
	sw x0, 288 ( fp )
	jal x0, .LBB4_20
.LBB4_11:                               //  %if.then30
	lhu x11, -2 ( x11 )
	lhu x22, 2 ( x10 )
	lhu x24, 12 ( x20 )
	mv x13, x0
	mv x10, fp
	mv x12, x20
	jal __get_buf
	mv x11, x10
	beq x0, x11, .LBB4_21
.LBB4_12:                               //  %if.end48
	lui x12, %hi( 65535 )
	sub x10, x22, x23
	add x12, x12, %lo( 65535 )
	and x22, x12, x10
.LBB4_5:                                //  %if.end91
	mv x10, fp
	mv x12, x22
	mv x13, x21
	jal collect_data
	sw x10, 4 ( x19 )
	xor x10, x10, -1
	beq x0, x10, .LBB4_21
.LBB4_6:                                //  %if.end99
	lw x10, 12 ( x20 )
	bne x10, x24, .LBB4_7
.LBB4_19:                               //  %if.end106
	lw x10, 16 ( x20 )
	mv x12, x22
	add x11, x23, x10
	lw x10, 280 ( fp )
	jal memmove
	lw x10, 280 ( fp )
	sw x10, 0 ( x19 )
	jal x0, .LBB4_20
.LBB4_7:                                //  %if.then104
	jal __errno
	add x11, x0, 22
	sw x11, 0 ( x10 )
	jal x0, .LBB4_21
.LBB4_16:                               //  %if.else66
	lhu x11, -2 ( x11 )
	mv x18, x0
	mv x10, fp
	mv x12, x20
	mv x13, x18
	jal __get_buf
	sw x10, 288 ( fp )
	beq x0, x10, .LBB4_21
.LBB4_17:                               //  %if.end77
	lw x10, 16 ( x10 )
	seqz x11, x0
	sw x11, 296 ( fp )
	lhu x10, 0 ( x10 )
	beq x0, x10, .LBB4_18
.LBB4_20:                               //  %cleanup
	mv x9, x18
.LBB4_21:                               //  %cleanup
	mv x10, x9
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
.Lfunc_end4:
	.size	__big_return, .Lfunc_end4-__big_return
	.cfi_endproc
                                        //  -- End function
	.type	collect_data,@function  //  -- Begin function collect_data
collect_data:                           //  @collect_data
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	lw x23, 16 ( x9 )
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x10
	lw x10, 12 ( x19 )
	lhu x11, 2 ( x23 )
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	lhu x24, 12 ( x9 )
	sub fp, x10, x11
	lhu x10, 4 ( x23 )
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	mv x22, x13
	mv x18, x12
	xor x10, x10, 3
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	bltu x0, x10, .LBB5_9
.LBB5_1:                                //  %if.then
	lw x10, 280 ( x19 )
	add x20, x18, fp
	beq x0, x10, .LBB5_3
.LBB5_2:                                //  %if.then5
	jal free
.LBB5_3:                                //  %if.end
	mv x10, x20
	jal malloc
	add x21, x0, -1
	sw x10, 280 ( x19 )
	beq x0, x10, .LBB5_14
.LBB5_4:                                //  %if.end11
	beq x0, x22, .LBB5_11
.LBB5_5:                                //  %if.then13
	seqz x10, x0
	sw x10, 296 ( x19 )
	lhu x10, 0 ( x23 )
	xor x11, x10, 2
	beq x0, x11, .LBB5_6
.LBB5_7:                                //  %if.else
	sll x10, x10, 1&31
	add x10, x23, x10
	lhu x11, -2 ( x10 )
	mv x13, x0
	mv x10, x19
	mv x12, x9
	jal __get_buf
	sw x10, 288 ( x19 )
	beq x0, x10, .LBB5_14
.LBB5_8:                                //  %if.else29
	lw x10, 16 ( x10 )
	lhu x10, 0 ( x10 )
	bltu x0, x10, .LBB5_11
.LBB5_6:                                //  %if.then18
	lw x10, 292 ( x19 )
	add x10, x10, 1
	sw x10, 292 ( x19 )
	sw x0, 288 ( x19 )
	lw x10, 12 ( x9 )
	beq x10, x24, .LBB5_13
	jal x0, .LBB5_12
.LBB5_9:                                //  %if.else42
	lhu x10, 0 ( x23 )
	mv x13, x0
	mv x12, x9
	sll x10, x10, 1&31
	add x10, x23, x10
	lhu x11, -2 ( x10 )
	mv x10, x19
	jal __get_buf
	mv x11, x10
	add x21, x0, -1
	beq x0, x11, .LBB5_14
.LBB5_10:                               //  %lor.lhs.false
	add x12, x18, fp
	mv x10, x19
	mv x13, x22
	jal collect_data
	mv x20, x10
	bge x0, x20, .LBB5_14
.LBB5_11:                               //  %if.end56
	lw x10, 12 ( x9 )
	bne x10, x24, .LBB5_12
.LBB5_13:                               //  %if.end63
	lw x10, 280 ( x19 )
	lhu x11, 2 ( x23 )
	lw x12, 16 ( x9 )
	add x10, x18, x10
	add x11, x11, x12
	mv x12, fp
	jal memmove
	mv x21, x20
	jal x0, .LBB5_14
.LBB5_12:                               //  %if.then61
	jal __errno
	add x11, x0, 22
	sw x11, 0 ( x10 )
	add x21, x0, -1
.LBB5_14:                               //  %cleanup
	mv x10, x21
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
.Lfunc_end5:
	.size	collect_data, .Lfunc_end5-collect_data
	.cfi_endproc
                                        //  -- End function
	.globl	__big_keydata           //  -- Begin function __big_keydata
	.type	__big_keydata,@function
__big_keydata:                          //  @__big_keydata
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x0
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x12
	mv x12, fp
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv x18, x10
	jal collect_key
	sw x10, 4 ( x9 )
	xor x10, x10, -1
	beq x0, x10, .LBB6_1
.LBB6_2:                                //  %if.end
	lw x10, 284 ( x18 )
	sw x10, 0 ( x9 )
	jal x0, .LBB6_3
.LBB6_1:
	add fp, x0, -1
.LBB6_3:                                //  %return
	mv x10, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end6:
	.size	__big_keydata, .Lfunc_end6-__big_keydata
	.cfi_endproc
                                        //  -- End function
	.type	collect_key,@function   //  -- Begin function collect_key
collect_key:                            //  @collect_key
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -44
	mv fp, x11
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	lw x24, 16 ( fp )
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x10
	lui x11, %hi( 65534 )
	lhu x10, 4 ( x24 )
	add x11, x11, %lo( 65534 )
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x12
	and x10, x11, x10
	lw x11, 12 ( x19 )
	lhu x12, 2 ( x24 )
	sw x25, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 25, -40
	lhu x25, 12 ( fp )
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sub x18, x11, x12
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x21, x14
	mv x22, x13
	add x20, x9, x18
	xor x10, x10, 2
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	bltu x0, x10, .LBB7_5
.LBB7_1:                                //  %if.then
	lw x10, 284 ( x19 )
	beq x0, x10, .LBB7_3
.LBB7_2:                                //  %if.then11
	jal free
.LBB7_3:                                //  %if.end
	mv x10, x20
	jal malloc
	add x23, x0, -1
	sw x10, 284 ( x19 )
	beq x0, x10, .LBB7_10
.LBB7_4:                                //  %if.end17
	seqz x12, x0
	mv x10, x19
	mv x11, fp
	mv x13, x22
	mv x14, x21
	jal __big_return
	bltu x0, x10, .LBB7_10
.LBB7_7:                                //  %if.end34
	lw x10, 12 ( fp )
	bne x10, x25, .LBB7_8
.LBB7_9:                                //  %if.end41
	lw x10, 284 ( x19 )
	lhu x11, 2 ( x24 )
	lw x12, 16 ( fp )
	add x10, x9, x10
	add x11, x11, x12
	mv x12, x18
	jal memmove
	mv x23, x20
	jal x0, .LBB7_10
.LBB7_5:                                //  %if.else
	lhu x10, 0 ( x24 )
	mv x13, x0
	mv x12, fp
	sll x10, x10, 1&31
	add x10, x24, x10
	lhu x11, -2 ( x10 )
	mv x10, x19
	jal __get_buf
	mv x11, x10
	add x23, x0, -1
	beq x0, x11, .LBB7_10
.LBB7_6:                                //  %lor.lhs.false28
	mv x10, x19
	mv x12, x20
	mv x13, x22
	mv x14, x21
	jal collect_key
	mv x20, x10
	blt x0, x20, .LBB7_7
	jal x0, .LBB7_10
.LBB7_8:                                //  %if.then39
	jal __errno
	add x11, x0, 22
	sw x11, 0 ( x10 )
	add x23, x0, -1
.LBB7_10:                               //  %cleanup
	mv x10, x23
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
.Lfunc_end7:
	.size	collect_key, .Lfunc_end7-collect_key
	.cfi_endproc
                                        //  -- End function
	.globl	__big_split             //  -- Begin function __big_split
	.type	__big_split,@function
__big_split:                            //  @__big_split
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	mv x24, x13
	mv x23, x12
	mv x12, x0
	sw x25, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	mv x26, x14
	mv x25, x11
	add x13, sp, 8
	mv x11, x24
	mv x14, x12
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 16 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -48
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
	mv fp, x16
	mv x9, x15
	mv x19, x10
	jal collect_key
	mv x12, x10
	add x18, x0, -1
	xor x10, x12, -1
	beq x0, x10, .LBB8_22
.LBB8_1:                                //  %if.end
	lw x11, 284 ( x19 )
	mv x10, x19
	jal __call_hash
	mv x21, x10
	mv x20, x0
	mv x22, x24
	jal x0, .LBB8_2
.LBB8_6:                                //  %if.end.i151
                                        //    in Loop: Header=BB8_2 Depth=1
	add x10, x10, x12
	lhu x11, -2 ( x10 )
	mv x10, x19
	mv x12, x22
	mv x13, x20
	jal __get_buf
	mv x22, x10
	beq x0, x22, .LBB8_7
.LBB8_2:                                //  %for.cond.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 16 ( x22 )
	lhu x12, 4 ( x10 )
	lhu x11, 0 ( x10 )
	xor x13, x12, 3
	sll x12, x11, 1&31
	bltu x0, x13, .LBB8_6
.LBB8_3:                                //  %land.lhs.true.i
                                        //    in Loop: Header=BB8_2 Depth=1
	xor x13, x11, 2
	beq x0, x13, .LBB8_9
.LBB8_4:                                //  %lor.lhs.false.i
                                        //    in Loop: Header=BB8_2 Depth=1
	add x13, x12, x10
	lhu x14, 0 ( x13 )
	beq x0, x14, .LBB8_8
.LBB8_5:                                //  %lor.lhs.false10.i
                                        //    in Loop: Header=BB8_2 Depth=1
	lhu x13, 2 ( x13 )
	beq x0, x13, .LBB8_6
.LBB8_8:                                //  %for.end.i
	add x12, x0, 2
	bgeu x12, x11, .LBB8_9
.LBB8_11:                               //  %__find_last_page.exit
	lhu x11, 6 ( x10 )
	sh x11, 12 ( fp )
	beq x0, x11, .LBB8_10
.LBB8_12:                               //  %if.then4
	mv x13, x0
	mv x10, x19
	mv x12, x22
	jal __get_buf
	sw x10, 8 ( fp )
	bltu x0, x10, .LBB8_13
	jal x0, .LBB8_22
.LBB8_7:
	mv x22, x24
.LBB8_9:                                //  %__find_last_page.exit.thread
	sh x0, 12 ( fp )
.LBB8_10:                               //  %if.else
	sw x0, 8 ( fp )
.LBB8_13:                               //  %if.end12
	mv x10, x23
	bne x21, x9, .LBB8_15
.LBB8_14:                               //  %if.end12
	mv x10, x25
.LBB8_15:                               //  %if.end12
	lw x12, 16 ( x10 )
	sw x24, 8 ( x10 )
	sw x23, 0 ( fp )
	lw x23, 16 ( x22 )
	lhu x13, 0 ( x12 )
	sw x25, 4 ( fp )
	sll x11, x13, 1&31
	add x11, x12, x11
	lh x15, 2 ( x11 )
	lh x14, 4 ( x11 )
	lui x11, %hi( 65535 )
	add x16, x13, 1
	add x11, x11, %lo( 65535 )
	and x16, x11, x16
	sll x16, x16, 1&31
	add x16, x16, x12
	add x13, x13, 2
	sh x26, 0 ( x16 )
	and x16, x11, x13
	sll x16, x16, 1&31
	add x16, x16, x12
	sh x0, 0 ( x16 )
	sh x13, 0 ( x12 )
	lb x12, 20 ( x10 )
	add x15, x15, -4
	sh x15, 2 ( x16 )
	sh x14, 4 ( x16 )
	or x12, x12, 1
	sb x12, 20 ( x10 )
	lb x10, 20 ( x22 )
	or x10, x10, 1
	sb x10, 20 ( x22 )
	lhu x10, 0 ( x23 )
	sltiu x12, x10, 3
	bltu x0, x12, .LBB8_18
.LBB8_16:                               //  %if.then51
	add x12, x10, -2
	sll x10, x10, 1&31
	add x10, x23, x10
	and x11, x11, x12
	sh x12, 0 ( x23 )
	lh x12, 2 ( x10 )
	lh x10, 4 ( x10 )
	sll x11, x11, 1&31
	add x11, x23, x11
	add x12, x12, 4
	lhu x24, 8 ( x23 )
	sh x10, 4 ( x11 )
	sh x12, 2 ( x11 )
	mv x10, x19
	mv x11, x22
	jal __add_ovflpage
	mv x22, x10
	beq x0, x22, .LBB8_22
.LBB8_17:                               //  %if.end79
	sh x24, 8 ( x23 )
.LBB8_18:                               //  %if.end82
	beq x21, x9, .LBB8_20
.LBB8_19:                               //  %if.then84
	sw x22, 0 ( fp )
	jal x0, .LBB8_21
.LBB8_20:                               //  %if.else86
	sw x22, 4 ( fp )
.LBB8_21:                               //  %cleanup
	mv x18, x20
.LBB8_22:                               //  %cleanup
	mv x10, x18
	lw fp, 16 ( sp )                //  4-byte Folded Reload
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
.Lfunc_end8:
	.size	__big_split, .Lfunc_end8-__big_split
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
