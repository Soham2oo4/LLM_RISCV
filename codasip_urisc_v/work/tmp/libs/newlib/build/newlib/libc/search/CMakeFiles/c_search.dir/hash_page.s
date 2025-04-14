	.text
	.file	"hash_page.c"
	.globl	__delpair               //  -- Begin function __delpair
	.type	__delpair,@function
__delpair:                              //  @__delpair
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv fp, x11
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x19, 16 ( fp )
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x12
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	sll x10, x18, 1&31
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x21, x19, x10
	lhu x10, 2 ( x21 )
	add x11, x0, 3
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	bltu x11, x10, .LBB0_2
.LBB0_1:                                //  %if.then
	mv x10, x9
	mv x11, fp
	jal __big_delete
	jal x0, .LBB0_13
.LBB0_2:                                //  %if.end
	lhu x20, 0 ( x19 )
	xor x11, x18, 1
	bltu x0, x11, .LBB0_3
.LBB0_4:                                //  %if.else
	lw x11, 12 ( x9 )
	sub x22, x11, x10
	add x24, x20, -1
	sll x23, x20, 1&31
	bne x24, x18, .LBB0_6
	jal x0, .LBB0_12
.LBB0_3:                                //  %if.then6
	lhu x11, -2 ( x21 )
	sub x22, x11, x10
	add x24, x20, -1
	sll x23, x20, 1&31
	beq x24, x18, .LBB0_12
.LBB0_6:                                //  %if.then19
	lui x11, %hi( 65535 )
	add x11, x11, %lo( 65535 )
	and x13, x11, x22
	add x11, x19, x23
	lhu x11, 4 ( x11 )
	sub x12, x10, x11
	add x11, x11, x19
	add x10, x13, x11
	jal memmove
	add x10, x18, 2
	blt x20, x10, .LBB0_12
.LBB0_7:                                //  %for.body.preheader
	mv x11, x0
	lhu x12, 4 ( x21 )
	lhu x13, 6 ( x21 )
	beq x0, x13, .LBB0_9
.LBB0_10:                               //  %if.else54
	add x12, x22, x12
	sh x12, 0 ( x21 )
	add x12, x22, x13
	sh x12, 2 ( x21 )
	add x21, x21, 4
	add x10, x10, 2
	blt x20, x10, .LBB0_12
.LBB0_8:                                //  %for.body
	lhu x12, 4 ( x21 )
	lhu x13, 6 ( x21 )
	bltu x0, x13, .LBB0_10
.LBB0_9:                                //  %if.then46
	sh x12, 0 ( x21 )
	mv x12, x11
	sh x12, 2 ( x21 )
	add x21, x21, 4
	add x10, x10, 2
	bge x20, x10, .LBB0_8
.LBB0_12:                               //  %if.end72
	lhu x10, 0 ( x19 )
	add x12, x23, x19
	lh x13, 2 ( x12 )
	sll x11, x24, 1&31
	sll x10, x10, 1&31
	add x10, x19, x10
	lh x10, 4 ( x10 )
	add x13, x13, x22
	add x11, x11, x19
	add x13, x13, 4
	add x10, x22, x10
	sh x10, 0 ( x12 )
	lw x10, 56 ( x9 )
	sh x13, 0 ( x11 )
	add x10, x10, -1
	sw x10, 56 ( x9 )
	lb x10, 20 ( fp )
	or x10, x10, 1
	sb x10, 20 ( fp )
	add x10, x20, -2
	sh x10, 0 ( x19 )
	mv x10, x0
.LBB0_13:                               //  %cleanup
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
.Lfunc_end0:
	.size	__delpair, .Lfunc_end0-__delpair
	.cfi_endproc
                                        //  -- End function
	.globl	__split_page            //  -- Begin function __split_page
	.type	__split_page,@function
__split_page:                           //  @__split_page
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	sw fp, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x12
	mv x12, x0
	sw x19, 112 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x19, 12 ( x10 )
	mv x13, x12
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 120 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 116 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 108 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 104 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 96 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 92 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 88 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 84 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 80 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x10, 56 ( sp )               //  4-byte Folded Spill
	sw x11, 52 ( sp )               //  4-byte Folded Spill
	jal __get_buf
	mv x9, x10
	add x20, x0, -1
	beq x0, x9, .LBB1_53
.LBB1_1:                                //  %if.end
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	mv x18, x0
	mv x13, x18
	mv x11, fp
	mv x12, x18
	jal __get_buf
	beq x0, x10, .LBB1_53
.LBB1_2:                                //  %if.end10
	lb x11, 20 ( x9 )
	sw x9, 32 ( sp )                //  4-byte Folded Spill
	sw x10, 36 ( sp )               //  4-byte Folded Spill
	mv x22, x18
	or x11, x11, 9
	sb x11, 20 ( x9 )
	lb x11, 20 ( x10 )
	or x11, x11, 9
	sb x11, 20 ( x10 )
	lw x9, 16 ( x9 )
	lhu x10, 0 ( x9 )
	sltiu x11, x10, 2
	bltu x0, x11, .LBB1_11
.LBB1_3:                                //  %for.body.lr.ph
	lw x10, 36 ( sp )               //  4-byte Folded Reload
	seqz x27, x0
	mv x22, x0
	add x21, x9, 4
	lw x10, 16 ( x10 )
	add x18, x0, 3
	mv x24, x19
	mv x26, x27
	sw x10, 40 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 65535 )
	add x23, x10, %lo( 65535 )
	lhu x10, 0 ( x21 )
	bltu x18, x10, .LBB1_7
	jal x0, .LBB1_12
.LBB1_4:                                //  %if.else87
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x18, 40 ( sp )               //  4-byte Folded Reload
	lhu x11, -2 ( x21 )
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	mv x19, x26
	lhu x24, 0 ( x18 )
	sw x11, 44 ( sp )               //  4-byte Folded Spill
	mv x26, x22
	lhu x22, 0 ( x21 )
	sll x10, x24, 1&31
	add x10, x18, x10
	lh x10, 4 ( x10 )
	mv x11, fp
	mv x12, x20
	sub x25, x10, x20
	and x10, x23, x25
	add x10, x10, x18
	jal memmove
	add x10, x24, 1
	and x10, x23, x10
	sll x10, x10, 1&31
	add x10, x10, x18
	sh x25, 0 ( x10 )
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	add x11, x22, x9
	sub x12, x10, x22
	sub fp, x25, x12
	and x10, x23, fp
	mv x22, x26
	mv x26, x19
	lw x19, 48 ( sp )               //  4-byte Folded Reload
	add x10, x10, x18
	jal memmove
	add x10, x24, 2
	and x12, x23, x10
	sll x11, x10, 1&31
	sll x12, x12, 1&31
	sub x11, fp, x11
	add x12, x12, x18
	sh fp, 0 ( x12 )
	sh x10, 0 ( x18 )
	add x11, x11, -6
	add x18, x0, 3
	add x22, x22, 2
	sh x11, 2 ( x12 )
	sh fp, 4 ( x12 )
.LBB1_5:                                //  %if.end103
                                        //    in Loop: Header=BB1_7 Depth=1
	lhu x24, 0 ( x21 )
	lhu x10, 0 ( x9 )
	add x11, x21, 4
	add x27, x27, 2
	mv x21, x11
	bgeu x27, x10, .LBB1_11
.LBB1_6:                                //  %for.body
                                        //    in Loop: Header=BB1_7 Depth=1
	lhu x10, 0 ( x21 )
	bgeu x18, x10, .LBB1_12
.LBB1_7:                                //  %if.end36
                                        //  =>This Inner Loop Header: Depth=1
	lhu x10, -2 ( x21 )
	and x25, x23, x24
	add fp, x10, x9
	sub x20, x25, x10
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	mv x11, fp
	mv x12, x20
	jal __call_hash
	lw x11, 52 ( sp )               //  4-byte Folded Reload
	bne x10, x11, .LBB1_4
.LBB1_8:                                //  %if.then47
                                        //    in Loop: Header=BB1_7 Depth=1
	lhu x11, 0 ( x21 )
	sub x10, x19, x24
	and x12, x23, x10
	beq x0, x12, .LBB1_10
.LBB1_9:                                //  %if.then52
                                        //    in Loop: Header=BB1_7 Depth=1
	add x19, x10, x11
	and x10, x23, x19
	add x10, x10, x9
	sub x12, x25, x11
	add x11, x11, x9
	jal memmove
	lh x11, -2 ( x21 )
	lh x12, 0 ( x21 )
	sll x10, x26, 1&31
	add x10, x10, x9
	add x11, x19, x11
	sub x11, x11, x12
	sh x11, 0 ( x10 )
	sh x19, 2 ( x10 )
	add x26, x26, 2
	jal x0, .LBB1_5
.LBB1_10:                               //    in Loop: Header=BB1_7 Depth=1
	mv x19, x11
	add x26, x26, 2
	jal x0, .LBB1_5
.LBB1_11:                               //  %for.end
	lw x12, 32 ( sp )               //  4-byte Folded Reload
	sub x10, x10, x22
	mv x20, x0
	lbu x11, 20 ( x12 )
	and x11, x11, 247
	sb x11, 20 ( x12 )
	lui x11, %hi( 65535 )
	add x11, x11, %lo( 65535 )
	and x11, x11, x10
	sh x10, 0 ( x9 )
	sll x10, x10, 1&31
	sll x11, x11, 1&31
	sub x10, x19, x10
	add x11, x9, x11
	add x10, x10, -6
	sh x10, 2 ( x11 )
	sh x19, 4 ( x11 )
	lw x11, 36 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_52
.LBB1_12:                               //  %if.then25
	lw x9, 32 ( sp )                //  4-byte Folded Reload
	lw x27, 16 ( x9 )
	lhu x10, 0 ( x27 )
	beq x0, x10, .LBB1_49
.LBB1_13:                               //  %while.body.lr.ph.i
	lw x11, 36 ( sp )               //  4-byte Folded Reload
	and x13, x23, x22
	sw x13, 16 ( sp )               //  4-byte Folded Spill
	mv x13, x0
	lw x18, 16 ( x11 )
	mv x24, x9
	add fp, x10, -1
	mv x20, x27
	sw x13, 20 ( sp )               //  4-byte Folded Spill
	sw x11, 40 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB1_16
.LBB1_14:                               //    in Loop: Header=BB1_16 Depth=1
	seqz fp, x0
.LBB1_15:                               //  %for.end.i
                                        //    in Loop: Header=BB1_16 Depth=1
	lw x19, 48 ( sp )               //  4-byte Folded Reload
	lw x9, 28 ( sp )                //  4-byte Folded Reload
	and x11, x23, fp
	bgeu x11, x10, .LBB1_45
.LBB1_16:                               //  %while.body.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_31 Depth 2
	lh x11, 4 ( x20 )
	add x12, x0, 2
	add x11, x11, -1
	and x11, x23, x11
	bgeu x12, x11, .LBB1_22
.LBB1_17:                               //  %if.else.i
                                        //    in Loop: Header=BB1_16 Depth=1
	and x11, x23, fp
	sll x11, x11, 1&31
	add x11, x20, x11
	lhu x12, 2 ( x11 )
	bltu x0, x12, .LBB1_28
.LBB1_18:                               //  %if.then36.i
                                        //    in Loop: Header=BB1_16 Depth=1
	lw x12, 16 ( sp )               //  4-byte Folded Reload
	lhu x11, 0 ( x11 )
	mv x13, x0
	sub x10, x10, x12
	add x10, x10, -2
	and x12, x23, x10
	sh x10, 0 ( x20 )
	sll x10, x10, 1&31
	sll x12, x12, 1&31
	sub x10, x19, x10
	add x12, x20, x12
	add x10, x10, -6
	sh x10, 2 ( x12 )
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	sh x19, 4 ( x12 )
	mv x12, x9
	jal __get_buf
	mv x9, x10
	beq x0, x9, .LBB1_48
.LBB1_19:                               //  %if.end61.i
                                        //    in Loop: Header=BB1_16 Depth=1
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	lw x20, 16 ( x9 )
	lw x11, 20 ( sp )               //  4-byte Folded Reload
	lw x19, 12 ( x10 )
	beq x0, x11, .LBB1_21
.LBB1_20:                               //  %if.then65.i
                                        //    in Loop: Header=BB1_16 Depth=1
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	jal __free_ovflpage
.LBB1_21:                               //  %if.end68.i
                                        //    in Loop: Header=BB1_16 Depth=1
	mv x10, x0
	sw x10, 16 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB1_27
.LBB1_22:                               //  %if.then.i
                                        //    in Loop: Header=BB1_16 Depth=1
	lw x14, 12 ( x9 )
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	lw x12, 40 ( sp )               //  4-byte Folded Reload
	lw x15, 52 ( sp )               //  4-byte Folded Reload
	mv x11, x24
	mv x13, x9
	add x16, sp, 60
	jal __big_split
	bltu x0, x10, .LBB1_48
.LBB1_23:                               //  %if.end.i
                                        //    in Loop: Header=BB1_16 Depth=1
	lw x24, 64 ( sp )
	beq x0, x24, .LBB1_48
.LBB1_24:                               //  %if.end20.i
                                        //    in Loop: Header=BB1_16 Depth=1
	lw x10, 60 ( sp )
	beq x0, x10, .LBB1_48
.LBB1_25:                               //  %if.end24.i
                                        //    in Loop: Header=BB1_16 Depth=1
	lw x9, 68 ( sp )
	beq x0, x9, .LBB1_47
.LBB1_26:                               //  %if.end28.i
                                        //    in Loop: Header=BB1_16 Depth=1
	lw x27, 16 ( x24 )
	lw x18, 16 ( x10 )
	lw x20, 16 ( x9 )
	sw x10, 40 ( sp )               //  4-byte Folded Spill
.LBB1_27:                               //  %if.end68.i
                                        //    in Loop: Header=BB1_16 Depth=1
	sw x9, 20 ( sp )                //  4-byte Folded Spill
.LBB1_28:                               //  %if.end68.i
                                        //    in Loop: Header=BB1_16 Depth=1
	lhu x10, 0 ( x20 )
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	sw x9, 28 ( sp )                //  4-byte Folded Spill
	sltiu x11, x10, 2
	bltu x0, x11, .LBB1_14
.LBB1_29:                               //  %land.rhs.lr.ph.i
                                        //    in Loop: Header=BB1_16 Depth=1
	lhu x11, 4 ( x20 )
	sltiu x12, x11, 4
	bltu x0, x12, .LBB1_44
.LBB1_30:                               //  %for.body.i.preheader
                                        //    in Loop: Header=BB1_16 Depth=1
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	seqz x12, x0
	mv fp, x12
	sw x20, 24 ( sp )               //  4-byte Folded Spill
	lw x13, 12 ( x10 )
.LBB1_31:                               //  %for.body.i
                                        //    Parent Loop BB1_16 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x9, x11
	sll x11, x12, 1&31
	add x11, x11, x20
	lhu x11, 0 ( x11 )
	and x10, x23, x13
	and x19, x23, x9
	sub x21, x10, x11
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	add x22, x11, x20
	sub x26, x11, x19
	mv x11, x22
	mv x12, x21
	jal __call_hash
	lw x11, 52 ( sp )               //  4-byte Folded Reload
	add x25, x19, x20
	sw x9, 44 ( sp )                //  4-byte Folded Spill
	bne x10, x11, .LBB1_36
.LBB1_32:                               //  %if.then114.i
                                        //    in Loop: Header=BB1_31 Depth=2
	lhu x10, 4 ( x27 )
	sltiu x10, x10, 4
	bltu x0, x10, .LBB1_34
.LBB1_33:                               //  %land.lhs.true119.i
                                        //    in Loop: Header=BB1_31 Depth=2
	lhu x19, 0 ( x27 )
	add x11, x21, x26
	add x11, x11, 8
	sll x10, x19, 1&31
	add x10, x27, x10
	lhu x12, 2 ( x10 )
	bgeu x12, x11, .LBB1_40
.LBB1_34:                               //  %if.else133.i
                                        //    in Loop: Header=BB1_31 Depth=2
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	mv x11, x24
	mv x27, x25
	jal __add_ovflpage
	mv x25, x10
	beq x0, x25, .LBB1_48
.LBB1_35:                               //  %if.end137.i
                                        //    in Loop: Header=BB1_31 Depth=2
	lw x19, 16 ( x25 )
	mv x11, x22
	mv x12, x21
	lhu x24, 0 ( x19 )
	sll x10, x24, 1&31
	add x10, x19, x10
	lh x10, 4 ( x10 )
	sub x9, x10, x21
	and x10, x23, x9
	add x10, x10, x19
	jal memmove
	add x10, x24, 1
	and x10, x23, x10
	sll x10, x10, 1&31
	add x10, x10, x19
	sub x21, x9, x26
	sh x9, 0 ( x10 )
	and x10, x23, x21
	add x10, x10, x19
	mv x11, x27
	mv x12, x26
	jal memmove
	add x10, x24, 2
	and x11, x23, x10
	sll x12, x11, 1&31
	add x12, x12, x19
	sh x21, 0 ( x12 )
	sh x10, 0 ( x19 )
	mv x24, x25
	mv x27, x19
	jal x0, .LBB1_42
.LBB1_36:                               //  %if.else142.i
                                        //    in Loop: Header=BB1_31 Depth=2
	lhu x10, 4 ( x18 )
	sltiu x10, x10, 4
	bltu x0, x10, .LBB1_38
.LBB1_37:                               //  %land.lhs.true147.i
                                        //    in Loop: Header=BB1_31 Depth=2
	lhu x11, 0 ( x18 )
	add x10, x21, x26
	add x10, x10, 8
	sll x11, x11, 1&31
	add x11, x18, x11
	lhu x11, 2 ( x11 )
	bgeu x11, x10, .LBB1_41
.LBB1_38:                               //  %if.else161.i
                                        //    in Loop: Header=BB1_31 Depth=2
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	lw x11, 40 ( sp )               //  4-byte Folded Reload
	mv x18, x25
	jal __add_ovflpage
	mv x25, x10
	beq x0, x25, .LBB1_48
.LBB1_39:                               //  %if.end165.i
                                        //    in Loop: Header=BB1_31 Depth=2
	lw x19, 16 ( x25 )
	mv x20, x27
	mv x27, x24
	mv x11, x22
	lhu x9, 0 ( x19 )
	mv x12, x21
	sll x10, x9, 1&31
	add x10, x19, x10
	lh x10, 4 ( x10 )
	sub x24, x10, x21
	and x10, x23, x24
	add x10, x10, x19
	jal memmove
	add x10, x9, 1
	and x10, x23, x10
	sll x10, x10, 1&31
	add x10, x10, x19
	sub x21, x24, x26
	sh x24, 0 ( x10 )
	and x10, x23, x21
	mv x24, x27
	mv x27, x20
	lw x20, 24 ( sp )               //  4-byte Folded Reload
	add x10, x10, x19
	mv x11, x18
	mv x12, x26
	jal memmove
	add x10, x9, 2
	and x11, x23, x10
	sll x12, x11, 1&31
	add x12, x12, x19
	mv x18, x19
	sh x21, 0 ( x12 )
	sh x10, 0 ( x19 )
	sw x25, 40 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB1_42
.LBB1_40:                               //  %if.then132.i
                                        //    in Loop: Header=BB1_31 Depth=2
	lh x10, 4 ( x10 )
	mv x9, x24
	mv x11, x22
	mv x12, x21
	sub x24, x10, x21
	and x10, x23, x24
	add x10, x10, x27
	jal memmove
	add x10, x19, 1
	and x10, x23, x10
	sll x10, x10, 1&31
	add x10, x10, x27
	sub x21, x24, x26
	sh x24, 0 ( x10 )
	and x10, x23, x21
	add x10, x10, x27
	mv x11, x25
	mv x12, x26
	mv x24, x9
	jal memmove
	add x10, x19, 2
	and x11, x23, x10
	sll x12, x11, 1&31
	add x12, x12, x27
	sh x21, 0 ( x12 )
	mv x19, x27
	sh x10, 0 ( x27 )
	mv x25, x24
	jal x0, .LBB1_42
.LBB1_41:                               //  %if.then160.i
                                        //    in Loop: Header=BB1_31 Depth=2
	lhu x9, 0 ( x18 )
	mv x11, x22
	mv x12, x21
	sll x10, x9, 1&31
	add x10, x18, x10
	lh x10, 4 ( x10 )
	sub x19, x10, x21
	and x10, x23, x19
	add x10, x10, x18
	jal memmove
	add x10, x9, 1
	and x10, x23, x10
	sll x10, x10, 1&31
	add x10, x10, x18
	sub x21, x19, x26
	sh x19, 0 ( x10 )
	and x10, x23, x21
	add x10, x10, x18
	mv x11, x25
	mv x12, x26
	jal memmove
	add x10, x9, 2
	and x11, x23, x10
	sll x12, x11, 1&31
	add x12, x12, x18
	lw x25, 40 ( sp )               //  4-byte Folded Reload
	sh x21, 0 ( x12 )
	sh x10, 0 ( x18 )
	mv x19, x18
.LBB1_42:                               //  %for.inc.i
                                        //    in Loop: Header=BB1_31 Depth=2
	sll x10, x10, 1&31
	sll x11, x11, 1&31
	sub x10, x21, x10
	add x11, x19, x11
	add x10, x10, -6
	sh x21, 4 ( x11 )
	sh x10, 2 ( x11 )
	lb x10, 20 ( x25 )
	add fp, fp, 2
	and x12, x23, fp
	or x10, x10, 1
	sb x10, 20 ( x25 )
	lhu x10, 0 ( x20 )
	bgeu x12, x10, .LBB1_15
.LBB1_43:                               //  %land.rhs.i
                                        //    in Loop: Header=BB1_31 Depth=2
	sll x11, x12, 1&31
	add x11, x20, x11
	lhu x11, 2 ( x11 )
	lw x13, 44 ( sp )               //  4-byte Folded Reload
	sltiu x14, x11, 4
	beq x0, x14, .LBB1_31
	jal x0, .LBB1_15
.LBB1_44:                               //    in Loop: Header=BB1_16 Depth=1
	seqz fp, x0
	lw x19, 48 ( sp )               //  4-byte Folded Reload
	lw x9, 28 ( sp )                //  4-byte Folded Reload
	and x11, x23, fp
	bltu x11, x10, .LBB1_16
.LBB1_45:                               //  %while.end.i
	lw x11, 20 ( sp )               //  4-byte Folded Reload
	beq x0, x11, .LBB1_47
.LBB1_46:                               //  %if.then177.i
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	jal __free_ovflpage
.LBB1_47:                               //  %ugly_split.exit
	lw x11, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 32 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB1_50
.LBB1_48:
	lw x11, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 32 ( sp )                //  4-byte Folded Reload
	add x20, x0, -1
	jal x0, .LBB1_51
.LBB1_49:
	lw x11, 36 ( sp )               //  4-byte Folded Reload
.LBB1_50:                               //  %ugly_split.exit
	mv x20, x0
.LBB1_51:                               //  %ugly_split.exit
	lbu x10, 20 ( x9 )
	and x10, x10, 247
	sb x10, 20 ( x9 )
.LBB1_52:                               //  %cleanup
	lbu x10, 20 ( x11 )
	and x10, x10, 247
	sb x10, 20 ( x11 )
.LBB1_53:                               //  %cleanup
	mv x10, x20
	lw fp, 76 ( sp )                //  4-byte Folded Reload
	lw x27, 80 ( sp )               //  4-byte Folded Reload
	lw x26, 84 ( sp )               //  4-byte Folded Reload
	lw x25, 88 ( sp )               //  4-byte Folded Reload
	lw x24, 92 ( sp )               //  4-byte Folded Reload
	lw x23, 96 ( sp )               //  4-byte Folded Reload
	lw x22, 100 ( sp )              //  4-byte Folded Reload
	lw x21, 104 ( sp )              //  4-byte Folded Reload
	lw x20, 108 ( sp )              //  4-byte Folded Reload
	lw x19, 112 ( sp )              //  4-byte Folded Reload
	lw x18, 116 ( sp )              //  4-byte Folded Reload
	lw x9, 120 ( sp )               //  4-byte Folded Reload
	lw ra, 124 ( sp )               //  4-byte Folded Reload
	add sp, sp, 128
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	__split_page, .Lfunc_end1-__split_page
	.cfi_endproc
                                        //  -- End function
	.globl	__addel                 //  -- Begin function __addel
	.type	__addel,@function
__addel:                                //  @__addel
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw x22, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	lw x22, 16 ( x9 )
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x10
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	lhu x10, 0 ( x22 )
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	mv x18, x13
	mv x19, x12
	seqz x23, x0
	add x20, x0, -1
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	beq x0, x10, .LBB2_12
.LBB2_1:                                //  %land.rhs.lr.ph
	lui x11, %hi( 65535 )
	add x24, x11, %lo( 65535 )
	mv x21, x0
.LBB2_2:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lhu x12, 4 ( x22 )
	and x10, x24, x10
	sll x11, x10, 1&31
	sltiu x13, x12, 4
	beq x0, x13, .LBB2_7
.LBB2_3:                                //  %while.body
                                        //    in Loop: Header=BB2_2 Depth=1
	xor x13, x10, 2
	bltu x0, x13, .LBB2_5
.LBB2_4:                                //  %while.body
                                        //    in Loop: Header=BB2_2 Depth=1
	xor x12, x12, 3
	beq x0, x12, .LBB2_13
.LBB2_5:                                //  %land.lhs.true21
                                        //    in Loop: Header=BB2_2 Depth=1
	add x12, x11, x22
	lhu x13, 0 ( x12 )
	beq x0, x13, .LBB2_8
.LBB2_6:                                //  %if.then28
                                        //    in Loop: Header=BB2_2 Depth=1
	lhu x11, -2 ( x12 )
	jal x0, .LBB2_10
.LBB2_7:                                //  %lor.rhs
                                        //    in Loop: Header=BB2_2 Depth=1
	add x12, x11, x22
	lhu x12, 0 ( x12 )
	sltiu x12, x12, 4
	beq x0, x12, .LBB2_13
.LBB2_8:                                //  %if.else36
                                        //    in Loop: Header=BB2_2 Depth=1
	add x26, x22, x11
	lw x11, 4 ( x18 )
	lw x12, 4 ( x19 )
	lhu x25, 2 ( x26 )
	add x11, x11, x12
	add x11, x11, 4
	bltu x11, x25, .LBB2_21
.LBB2_9:                                //  %if.else47
                                        //    in Loop: Header=BB2_2 Depth=1
	lhu x11, -2 ( x26 )
.LBB2_10:                               //  %if.else47
                                        //    in Loop: Header=BB2_2 Depth=1
	mv x10, fp
	mv x12, x9
	mv x13, x21
	jal __get_buf
	mv x9, x10
	beq x0, x9, .LBB2_29
.LBB2_11:                               //  %if.end60
                                        //    in Loop: Header=BB2_2 Depth=1
	lw x22, 16 ( x9 )
	lhu x10, 0 ( x22 )
	bltu x0, x10, .LBB2_2
.LBB2_12:                               //  %while.end
	lhu x10, 4 ( x22 )
	sltiu x10, x10, 4
	beq x0, x10, .LBB2_14
	jal x0, .LBB2_15
.LBB2_13:                               //  %while.end.loopexit
	add x23, x10, 1
	lhu x10, 4 ( x22 )
	sltiu x10, x10, 4
	bltu x0, x10, .LBB2_15
.LBB2_14:                               //  %land.lhs.true65
	sll x10, x23, 1&31
	lw x11, 4 ( x18 )
	lw x12, 4 ( x19 )
	add x10, x10, x22
	lhu x10, 0 ( x10 )
	add x11, x11, x12
	add x11, x11, 8
	bgeu x10, x11, .LBB2_20
.LBB2_15:                               //  %if.else80
	mv x10, fp
	mv x11, x9
	jal __add_ovflpage
	mv x9, x10
	beq x0, x9, .LBB2_29
.LBB2_16:                               //  %if.end84
	lw x22, 16 ( x9 )
	lhu x10, 4 ( x22 )
	sltiu x10, x10, 4
	bltu x0, x10, .LBB2_18
.LBB2_17:                               //  %land.lhs.true90
	lhu x21, 0 ( x22 )
	lw x11, 4 ( x18 )
	lw x12, 4 ( x19 )
	sll x10, x21, 1&31
	add x10, x22, x10
	lhu x13, 2 ( x10 )
	add x11, x11, x12
	add x11, x11, 8
	bgeu x13, x11, .LBB2_22
.LBB2_18:                               //  %if.else104
	mv x10, fp
	mv x11, x9
	mv x12, x19
	mv x13, x18
	jal __big_insert
	bltu x0, x10, .LBB2_29
.LBB2_19:
	seqz x11, x0
	jal x0, .LBB2_25
.LBB2_20:                               //  %if.then78
	lhu x20, 0 ( x22 )
	lw x11, 0 ( x19 )
	sll x10, x20, 1&31
	add x10, x22, x10
	lh x10, 4 ( x10 )
	sub x21, x10, x12
	lui x10, %hi( 65535 )
	add x23, x10, %lo( 65535 )
	and x10, x23, x21
	add x10, x10, x22
	jal memmove
	lw x12, 4 ( x18 )
	add x10, x20, 1
	and x10, x23, x10
	sll x10, x10, 1&31
	lw x11, 0 ( x18 )
	add x10, x10, x22
	sub x19, x21, x12
	sh x21, 0 ( x10 )
	and x10, x23, x19
	add x10, x10, x22
	jal memmove
	add x10, x20, 2
	and x12, x23, x10
	sll x11, x12, 1&31
	add x11, x11, x22
	sh x19, 0 ( x11 )
	mv x11, x0
	jal x0, .LBB2_23
.LBB2_21:                               //  %if.then46
	add x9, x10, 2
	sll x10, x9, 1&31
	add x20, x10, x22
	lh x10, 0 ( x20 )
	lw x11, 0 ( x19 )
	lh x27, -2 ( x26 )
	add fp, x26, 2
	sub x23, x10, x12
	and x10, x24, x23
	add x10, x10, x22
	sh x23, -2 ( x26 )
	jal memmove
	lw x12, 4 ( x18 )
	lw x11, 0 ( x18 )
	sub x23, x23, x12
	and x10, x24, x23
	add x10, x10, x22
	sh x23, 0 ( x26 )
	jal memmove
	lw x11, 4 ( x18 )
	lw x12, 4 ( x19 )
	and x10, x24, x9
	sll x10, x10, 1&31
	add x10, x22, x10
	add x11, x11, x12
	sub x11, x25, x11
	add x11, x11, -4
	sh x0, 0 ( x20 )
	sh x27, 0 ( fp )
	sh x9, 0 ( x22 )
	sh x23, 4 ( x10 )
	sh x11, 2 ( x10 )
	mv x20, x21
	jal x0, .LBB2_29
.LBB2_22:                               //  %if.then103
	lh x10, 4 ( x10 )
	lw x11, 0 ( x19 )
	sub x20, x10, x12
	lui x10, %hi( 65535 )
	add x23, x10, %lo( 65535 )
	and x10, x23, x20
	add x10, x10, x22
	jal memmove
	lw x12, 4 ( x18 )
	add x10, x21, 1
	and x10, x23, x10
	sll x10, x10, 1&31
	lw x11, 0 ( x18 )
	add x10, x10, x22
	sub x19, x20, x12
	sh x20, 0 ( x10 )
	and x10, x23, x19
	add x10, x10, x22
	jal memmove
	add x10, x21, 2
	and x12, x23, x10
	sll x11, x12, 1&31
	add x11, x11, x22
	sh x19, 0 ( x11 )
	seqz x11, x0
.LBB2_23:                               //  %if.end110.sink.split
	sh x10, 0 ( x22 )
	sll x10, x10, 1&31
	sll x12, x12, 1&31
	sub x10, x19, x10
	add x12, x22, x12
	add x10, x10, -6
	sh x19, 4 ( x12 )
	sh x10, 2 ( x12 )
.LBB2_25:                               //  %if.end110
	lb x10, 20 ( x9 )
	or x10, x10, 1
	sb x10, 20 ( x9 )
	lw x10, 56 ( fp )
	add x10, x10, 1
	sw x10, 56 ( fp )
	bltu x0, x11, .LBB2_27
.LBB2_26:                               //  %lor.lhs.false
	lw x11, 40 ( fp )
	add x11, x11, 1
	jal __divsi3
	lw x11, 52 ( fp )
	bge x11, x10, .LBB2_28
.LBB2_27:                               //  %if.then121
	mv x10, fp
	jal __expand_table
	mv x20, x10
	jal x0, .LBB2_29
.LBB2_28:
	mv x20, x0
.LBB2_29:                               //  %cleanup
	mv x10, x20
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
	.size	__addel, .Lfunc_end2-__addel
	.cfi_endproc
                                        //  -- End function
	.globl	__add_ovflpage          //  -- Begin function __add_ovflpage
	.type	__add_ovflpage,@function
__add_ovflpage:                         //  @__add_ovflpage
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x11
	sw x24, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	lw x24, 16 ( x19 )
	lw x10, 52 ( x9 )
	lui x11, (65536>>12)&1048575
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x25, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	bne x10, x11, .LBB3_5
.LBB3_1:                                //  %if.then
	lhu x10, 0 ( x24 )
	add x11, x0, 8
	bltu x10, x11, .LBB3_2
.LBB3_3:                                //  %if.then
	srl x10, x10, 1&31
	jal x0, .LBB3_4
.LBB3_2:
	add x10, x0, 4
.LBB3_4:                                //  %if.then
	sw x10, 52 ( x9 )
.LBB3_5:                                //  %if.end10
	lb x10, 20 ( x19 )
	lw x21, 32 ( x9 )
	lw x11, 12 ( x9 )
	lw x12, 16 ( x9 )
	or x10, x10, 1
	sb x10, 20 ( x19 )
	sll x10, x21, 2&31
	add x26, x10, x9
	sll x11, x11, 3&31
	add x13, x11, -1
	lw x11, 68 ( x26 )
	lw x10, 36 ( x9 )
	add x12, x12, 3
	mv x27, x0
	add x14, x11, -1
	sra x20, x10, x12
	sra x22, x14, x12
	add x15, x26, 68
	and x23, x14, x13
	mv x10, x27
	bge x22, x20, .LBB3_6
.LBB3_23:                               //  %for.end42.i
	sw x11, 36 ( x9 )
	lw x11, 0 ( x15 )
	add x11, x11, 1
	sw x11, 0 ( x15 )
	beq x0, x21, .LBB3_25
.LBB3_24:                               //  %cond.true.i
	lw x27, 64 ( x26 )
.LBB3_25:                               //  %cond.end.i
	sub fp, x11, x27
	lui x11, %hi( 2048 )
	add x11, x11, %lo( 2048 )
	blt fp, x11, .LBB3_29
.LBB3_26:                               //  %if.then62.i
	slti x11, x21, 31
	beq x0, x11, .LBB3_27
.LBB3_28:                               //  %if.end67.i
	add x21, x21, 1
	sw x21, 32 ( x9 )
	lw x12, 0 ( x15 )
	sll x11, x21, 2&31
	add x11, x11, x9
	seqz fp, x0
	sw x12, 68 ( x11 )
	add x11, x12, -1
	sw x11, 0 ( x15 )
.LBB3_29:                               //  %if.end81.i
	lw x11, 12 ( x9 )
	sll x12, x11, 3&31
	add x12, x12, -1
	bne x23, x12, .LBB3_37
.LBB3_30:                               //  %if.then87.i
	slti x10, x22, 31
	bltu x0, x10, .LBB3_31
.LBB3_27:                               //  %if.then65.i
	lui x11, %hi( .str )
	add x10, x0, 2
	add x11, x11, %lo( .str )
	add x12, x0, 49
	jal write
	mv x18, x0
	jal x0, .LBB3_60
.LBB3_6:                                //  %for.body.lr.ph.i
	sw x19, 20 ( sp )               //  4-byte Folded Spill
	sw x24, 24 ( sp )               //  4-byte Folded Spill
	sll x24, x20, 3&31
	mv x18, x0
	seqz x19, x0
	mv x11, x20
	sw x15, 16 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB3_7
.LBB3_21:                               //  %for.inc40.i
                                        //    in Loop: Header=BB3_7 Depth=1
	add x24, x24, 8
	add x11, fp, 1
	bge fp, x22, .LBB3_22
.LBB3_7:                                //  %for.body.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB3_19 Depth 2
	mv fp, x11
	sll x10, fp, 2&31
	add x11, x10, x9
	lw x10, 312 ( x11 )
	bltu x0, x10, .LBB3_13
.LBB3_8:                                //  %land.lhs.true.i
                                        //    in Loop: Header=BB3_7 Depth=1
	lw x10, 440 ( x9 )
	bge fp, x10, .LBB3_60
.LBB3_9:                                //  %if.end.i.i
                                        //    in Loop: Header=BB3_7 Depth=1
	lw x10, 12 ( x9 )
	add x25, x11, 312
	jal malloc
	mv x11, x10
	sw x11, 0 ( x25 )
	beq x0, x11, .LBB3_60
.LBB3_10:                               //  %if.end3.i.i
                                        //    in Loop: Header=BB3_7 Depth=1
	sll x10, fp, 1&31
	add x10, x10, x9
	lhu x12, 196 ( x10 )
	mv x10, x9
	mv x15, x19
	mv x13, x18
	mv x14, x19
	jal __get_page
	mv x11, x10
	lw x10, 0 ( x25 )
	bltu x0, x11, .LBB3_11
.LBB3_12:                               //  %fetch_bitmap.exit.i
                                        //    in Loop: Header=BB3_7 Depth=1
	beq x0, x10, .LBB3_60
.LBB3_13:                               //  %if.end.i
                                        //    in Loop: Header=BB3_7 Depth=1
	mv x12, x23
	bne fp, x22, .LBB3_14
.LBB3_15:                               //  %if.end19.i
                                        //    in Loop: Header=BB3_7 Depth=1
	mv x13, x18
	mv x11, x18
	beq fp, x20, .LBB3_16
.LBB3_17:                               //  %if.end31.i
                                        //    in Loop: Header=BB3_7 Depth=1
	blt x12, x11, .LBB3_21
	jal x0, .LBB3_18
.LBB3_14:                               //  %if.else.i
                                        //    in Loop: Header=BB3_7 Depth=1
	lw x11, 12 ( x9 )
	sll x11, x11, 3&31
	add x12, x11, -1
	mv x13, x18
	mv x11, x18
	bne fp, x20, .LBB3_17
.LBB3_16:                               //  %if.then21.i
                                        //    in Loop: Header=BB3_7 Depth=1
	lw x13, 12 ( x9 )
	lw x11, 36 ( x9 )
	sll x13, x13, 3&31
	add x13, x13, -1
	and x11, x11, x13
	sra x13, x11, 31&31
	srl x13, x13, 27&31
	add x13, x13, x11
	and x11, x11, -32
	sra x13, x13, 5&31
	blt x12, x11, .LBB3_21
.LBB3_18:                               //  %for.body34.i.preheader
                                        //    in Loop: Header=BB3_7 Depth=1
	sll x13, x13, 2&31
	add x14, x13, x10
.LBB3_19:                               //  %for.body34.i
                                        //    Parent Loop BB3_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x13, 0 ( x14 )
	xor x15, x13, -1
	bltu x0, x15, .LBB3_39
.LBB3_20:                               //  %for.inc.i
                                        //    in Loop: Header=BB3_19 Depth=2
	add x14, x14, 4
	add x11, x11, 32
	bge x12, x11, .LBB3_19
	jal x0, .LBB3_21
.LBB3_39:                               //  %found.i
	and x12, x13, 1
	bltu x0, x12, .LBB3_41
.LBB3_40:
	mv x12, x0
	jal x0, .LBB3_44
.LBB3_37:                               //  %if.else126.i
	add x11, x23, 1
	sra x12, x11, 31&31
	srl x12, x12, 27&31
	seqz x13, x0
	sll x13, x13, x11
	add x11, x12, x11
	sra x11, x11, 5&31
	sll x11, x11, 2&31
	add x10, x11, x10
	lw x11, 0 ( x10 )
	mv x18, fp
	or x11, x13, x11
	sw x11, 0 ( x10 )
	sll x10, x21, 11&31
	jal x0, .LBB3_57
.LBB3_41:                               //  %if.end.i316.i.preheader
	mv x15, x0
	add x14, x0, 30
.LBB3_42:                               //  %if.end.i316.i
                                        //  =>This Inner Loop Header: Depth=1
	add x12, x15, 1
	bltu x14, x15, .LBB3_44
.LBB3_43:                               //  %if.end.i316.i
                                        //    in Loop: Header=BB3_42 Depth=1
	sll x19, x19, 1&31
	and x16, x13, x19
	mv x15, x12
	bltu x0, x16, .LBB3_42
.LBB3_44:                               //  %first_free.exit.i
	add x13, x11, x12
	sra x14, x13, 31&31
	srl x14, x14, 27&31
	add x14, x14, x13
	sra x14, x14, 5&31
	sll x14, x14, 2&31
	add x10, x14, x10
	seqz x14, x0
	sll x13, x14, x13
	lw x14, 0 ( x10 )
	or x13, x14, x13
	sw x13, 0 ( x10 )
	lw x10, 12 ( x9 )
	lw x14, 36 ( x9 )
	hackaton_custom_instr_c x10, x24, x10
	add x13, x10, x12
	add x12, x11, x13
	add x10, x12, 1
	blt x10, x14, .LBB3_46
.LBB3_45:                               //  %if.then151.i
	sw x12, 36 ( x9 )
.LBB3_46:                               //  %if.end155.i
	lw x24, 24 ( sp )               //  4-byte Folded Reload
	lw x19, 20 ( sp )               //  4-byte Folded Reload
	mv x18, x0
	bge x0, x21, .LBB3_47
.LBB3_48:                               //  %land.rhs.i.preheader
	mv x12, x0
	add x14, x9, 68
.LBB3_49:                               //  %land.rhs.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x15, 0 ( x14 )
	bge x15, x10, .LBB3_52
.LBB3_50:                               //  %for.inc165.i
                                        //    in Loop: Header=BB3_49 Depth=1
	add x14, x14, 4
	add x12, x12, 1
	bne x21, x12, .LBB3_49
.LBB3_51:
	mv x12, x21
.LBB3_52:                               //  %for.end167.i
	beq x0, x12, .LBB3_53
.LBB3_54:                               //  %cond.true169.i
	sll x10, x12, 2&31
	add x10, x9, x10
	lw x10, 64 ( x10 )
	sub x10, x13, x10
	add x10, x11, x10
	add x10, x10, 1
	add x11, x0, 2046
	bge x11, x10, .LBB3_56
	jal x0, .LBB3_60
.LBB3_47:
	mv x12, x18
	add x11, x0, 2046
	bge x11, x10, .LBB3_56
	jal x0, .LBB3_60
.LBB3_31:                               //  %if.end92.i
	mv x10, x11
	mv x23, x19
	jal malloc
	mv x19, x10
	beq x0, x19, .LBB3_32
.LBB3_33:                               //  %if.end98.i
	lw x10, 440 ( x9 )
	mv x18, x0
	add x12, x0, 4
	mv x11, x18
	add x10, x10, 1
	sw x10, 440 ( x9 )
	mv x10, x19
	add x20, x22, 1
	jal memset
	lw x10, 12 ( x9 )
	add x11, x0, 255
	add x12, x10, -4
	add x10, x19, 4
	jal memset
	sll x10, x20, 1&31
	sll x11, x21, 11&31
	add x10, x10, x9
	add x11, fp, x11
	sh x11, 196 ( x10 )
	add x10, x0, -1
	sw x10, 0 ( x19 )
	sll x10, x20, 2&31
	add x10, x10, x9
	sw x19, 312 ( x10 )
	sll x10, x21, 2&31
	add x10, x10, x9
	lw x11, 68 ( x10 )
	add x11, x11, 1
	sw x11, 68 ( x10 )
	slti x11, fp, 2047
	bltu x0, x11, .LBB3_34
.LBB3_35:                               //  %if.then105.i
	slti x11, x21, 31
	beq x0, x11, .LBB3_27
.LBB3_36:                               //  %if.end110.i
	add x21, x21, 1
	add x10, x10, 68
	sw x21, 32 ( x9 )
	lw x12, 0 ( x10 )
	sll x11, x21, 2&31
	add x11, x11, x9
	mv x19, x23
	sw x12, 68 ( x11 )
	add x11, x12, -1
	sw x11, 0 ( x10 )
	sll x10, x21, 11&31
	jal x0, .LBB3_57
.LBB3_53:
	mv x12, x0
	add x11, x0, 2046
	blt x11, x10, .LBB3_60
.LBB3_56:                               //  %if.end181.i
	sll x18, x12, 11&31
.LBB3_57:                               //  %overflow_page.exit
	add fp, x18, x10
	lui x10, %hi( 65535 )
	add x10, x10, %lo( 65535 )
	mv x18, x0
	and x11, x10, fp
	beq x0, x11, .LBB3_60
.LBB3_58:                               //  %lor.lhs.false
	seqz x13, x0
	mv x10, x9
	mv x12, x19
	jal __get_buf
	sw x10, 8 ( x19 )
	beq x0, x10, .LBB3_60
.LBB3_59:                               //  %if.end17
	lb x11, 20 ( x10 )
	mv x18, x10
	or x11, x11, 1
	sb x11, 20 ( x10 )
	lhu x11, 0 ( x24 )
	sll x12, x11, 1&31
	add x11, x11, 2
	add x12, x24, x12
	sh x11, 0 ( x24 )
	sll x11, x11, 1&31
	lh x13, 2 ( x12 )
	add x11, x11, x24
	lh x14, 0 ( x11 )
	sh fp, 2 ( x12 )
	add x13, x13, -4
	sh x13, 6 ( x12 )
	sh x14, 8 ( x12 )
	sh x0, 0 ( x11 )
.LBB3_60:                               //  %cleanup
	mv x10, x18
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
.LBB3_32:
	mv x18, x0
	jal x0, .LBB3_60
.LBB3_22:                               //  %for.end42.loopexit.i
	lw x15, 16 ( sp )               //  4-byte Folded Reload
	lw x24, 24 ( sp )               //  4-byte Folded Reload
	lw x19, 20 ( sp )               //  4-byte Folded Reload
	lw x11, 0 ( x15 )
	jal x0, .LBB3_23
.LBB3_34:
	add x18, fp, 1
	mv x19, x23
	sll x10, x21, 11&31
	jal x0, .LBB3_57
.LBB3_11:                               //  %if.then9.i.i
	jal free
	jal x0, .LBB3_60
.Lfunc_end3:
	.size	__add_ovflpage, .Lfunc_end3-__add_ovflpage
	.cfi_endproc
                                        //  -- End function
	.globl	__get_page              //  -- Begin function __get_page
	.type	__get_page,@function
__get_page:                             //  @__get_page
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x10
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x20, 12 ( x19 )
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv x18, x15
	mv x9, x12
	mv fp, x11
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	beq x0, x14, .LBB4_5
.LBB4_1:                                //  %entry
	lw x21, 276 ( x19 )
	xor x10, x21, -1
	beq x0, x10, .LBB4_5
.LBB4_2:                                //  %if.end
	beq x0, x13, .LBB4_6
.LBB4_3:                                //  %if.then9
	lw x10, 60 ( x19 )
	add x22, x9, x10
	beq x0, x9, .LBB4_8
.LBB4_4:                                //  %cond.true
	add x10, x9, 1
	jal __log2
	sll x10, x10, 2&31
	add x10, x19, x10
	lw x10, 64 ( x10 )
	add x10, x10, x22
	jal x0, .LBB4_11
.LBB4_5:                                //  %if.then
	add x10, x20, -6
	sh x20, 4 ( fp )
	sh x10, 2 ( fp )
	sh x0, 0 ( fp )
	mv x9, x0
	jal x0, .LBB4_29
.LBB4_6:                                //  %if.else
	lw x22, 60 ( x19 )
	srl x10, x9, 11&31
	seqz x11, x0
	sll x10, x11, x10
	add x23, x10, -1
	beq x0, x23, .LBB4_9
.LBB4_7:                                //  %cond.true25
	jal __log2
	sll x10, x10, 2&31
	add x10, x19, x10
	lw x10, 64 ( x10 )
	jal x0, .LBB4_10
.LBB4_8:
	mv x10, x0
	add x10, x10, x22
	jal x0, .LBB4_11
.LBB4_9:
	mv x10, x0
.LBB4_10:                               //  %cond.end36
	and x11, x9, 2047
	add x11, x11, x23
	add x11, x22, x11
	add x10, x10, x11
.LBB4_11:                               //  %if.end40
	lw x11, 16 ( x19 )
	mv x9, x0
	mv x12, x9
	sll x11, x10, x11
	mv x10, x21
	jal lseek
	add x22, x0, -1
	xor x10, x10, -1
	beq x0, x10, .LBB4_17
.LBB4_12:                               //  %lor.lhs.false46
	mv x10, x21
	mv x11, fp
	mv x12, x20
	jal read
	xor x11, x10, -1
	beq x0, x11, .LBB4_17
.LBB4_13:                               //  %if.end51
	beq x0, x10, .LBB4_18
.LBB4_14:                               //  %if.else55
	beq x10, x20, .LBB4_19
.LBB4_15:                               //  %if.then58
	jal __errno
	add x11, x0, 79
	sw x11, 0 ( x10 )
.LBB4_17:
	mv x9, x22
.LBB4_29:                               //  %cleanup
	mv x10, x9
	lw fp, 12 ( sp )                //  4-byte Folded Reload
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
.LBB4_18:                               //  %if.then53
	sh x0, 0 ( fp )
.LBB4_19:                               //  %if.end61
	bltu x0, x18, .LBB4_21
.LBB4_20:                               //  %land.lhs.true
	lhu x10, 0 ( fp )
	beq x0, x10, .LBB4_28
.LBB4_21:                               //  %if.else76
	lw x10, 8 ( x19 )
	xor x10, x10, 1234
	beq x0, x10, .LBB4_29
.LBB4_22:                               //  %if.then80
	beq x0, x18, .LBB4_26
.LBB4_23:                               //  %if.then82
	lw x10, 12 ( x19 )
	slti x11, x10, 4
	bltu x0, x11, .LBB4_29
.LBB4_24:                               //  %for.body.lr.ph
	mv x9, x0
	sra x10, x10, 2&31
	add x11, fp, 1
	mv x12, x9
.LBB4_25:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x13, -1 ( x11 )
	add x12, x12, 1
	srl x14, x13, 8&31
	sb x14, 1 ( x11 )
	srl x14, x13, 16&31
	sb x13, 2 ( x11 )
	srl x13, x13, 24&31
	sb x14, 0 ( x11 )
	sb x13, -1 ( x11 )
	add x11, x11, 4
	blt x12, x10, .LBB4_25
	jal x0, .LBB4_29
.LBB4_26:                               //  %if.else101
	lh x10, 0 ( fp )
	sb x10, 1 ( fp )
	srl x10, x10, 8&31
	sb x10, 0 ( fp )
	lhu x11, 0 ( fp )
	add x10, fp, 3
	add x11, x11, 2
.LBB4_27:                               //  %for.body116
                                        //  =>This Inner Loop Header: Depth=1
	lh x12, -1 ( x10 )
	add x11, x11, -1
	sb x12, 0 ( x10 )
	srl x12, x12, 8&31
	sb x12, -1 ( x10 )
	add x10, x10, 2
	bltu x0, x11, .LBB4_27
	jal x0, .LBB4_29
.LBB4_28:                               //  %if.then65
	lh x10, 12 ( x19 )
	sh x0, 0 ( fp )
	sh x10, 4 ( fp )
	add x10, x10, -6
	sh x10, 2 ( fp )
	jal x0, .LBB4_29
.Lfunc_end4:
	.size	__get_page, .Lfunc_end4-__get_page
	.cfi_endproc
                                        //  -- End function
	.globl	__put_page              //  -- Begin function __put_page
	.type	__put_page,@function
__put_page:                             //  @__put_page
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x20, 276 ( x18 )
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	lw fp, 12 ( x18 )
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	mv x23, x14
	mv x21, x13
	mv x19, x12
	mv x9, x11
	xor x10, x20, -1
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	bltu x0, x10, .LBB5_4
.LBB5_1:                                //  %land.lhs.true
	add x22, x0, -1
	seqz x10, x0
	add x11, sp, 8
	add x12, sp, 4
	sw x22, 8 ( sp )
	jal sigprocmask
	lui x10, %hi( open_temp.namestr )
	add x20, x10, %lo( open_temp.namestr )
	mv x10, x20
	jal mkstemp
	sw x10, 276 ( x18 )
	xor x10, x10, -1
	beq x0, x10, .LBB5_3
.LBB5_2:                                //  %if.then.i
	mv x10, x20
	jal unlink
.LBB5_3:                                //  %open_temp.exit
	mv x10, x0
	add x11, sp, 4
	mv x12, x10
	jal sigprocmask
	lw x20, 276 ( x18 )
	xor x10, x20, -1
	beq x0, x10, .LBB5_25
.LBB5_4:                                //  %if.end
	lw x10, 8 ( x18 )
	xor x10, x10, 1234
	beq x0, x10, .LBB5_11
.LBB5_5:                                //  %if.then4
	beq x0, x23, .LBB5_9
.LBB5_6:                                //  %if.then6
	lw x10, 12 ( x18 )
	slti x11, x10, 4
	bltu x0, x11, .LBB5_11
.LBB5_7:                                //  %for.body.lr.ph
	sra x10, x10, 2&31
	mv x11, x0
	add x12, x9, 1
.LBB5_8:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x13, -1 ( x12 )
	add x11, x11, 1
	srl x14, x13, 8&31
	sb x14, 1 ( x12 )
	srl x14, x13, 16&31
	sb x13, 2 ( x12 )
	srl x13, x13, 24&31
	sb x14, 0 ( x12 )
	sb x13, -1 ( x12 )
	add x12, x12, 4
	blt x11, x10, .LBB5_8
	jal x0, .LBB5_11
.LBB5_9:                                //  %if.else
	lhu x11, 0 ( x9 )
	srl x10, x11, 8&31
	sb x10, 0 ( x9 )
	sb x11, 1 ( x9 )
	add x10, x9, 3
	add x11, x11, 2
.LBB5_10:                               //  %for.body26.for.body26_crit_edge
                                        //  =>This Inner Loop Header: Depth=1
	lh x12, -1 ( x10 )
	add x11, x11, -1
	sb x12, 0 ( x10 )
	srl x12, x12, 8&31
	sb x12, -1 ( x10 )
	add x10, x10, 2
	bltu x0, x11, .LBB5_10
.LBB5_11:                               //  %if.end39
	beq x0, x21, .LBB5_16
.LBB5_12:                               //  %if.then41
	lw x10, 60 ( x18 )
	add x21, x19, x10
	beq x0, x19, .LBB5_13
.LBB5_14:                               //  %cond.true
	add x10, x19, 1
	jal __log2
	sll x10, x10, 2&31
	add x10, x18, x10
	lw x10, 64 ( x10 )
	add x10, x10, x21
	jal x0, .LBB5_20
.LBB5_16:                               //  %if.else50
	lw x21, 60 ( x18 )
	srl x10, x19, 11&31
	seqz x11, x0
	sll x10, x11, x10
	add x22, x10, -1
	beq x0, x22, .LBB5_17
.LBB5_18:                               //  %cond.true60
	jal __log2
	sll x10, x10, 2&31
	add x10, x18, x10
	lw x10, 64 ( x10 )
	jal x0, .LBB5_19
.LBB5_13:
	mv x10, x0
	add x10, x10, x21
	jal x0, .LBB5_20
.LBB5_17:
	mv x10, x0
.LBB5_19:                               //  %cond.end71
	and x11, x19, 2047
	add x11, x11, x22
	add x11, x21, x11
	add x10, x10, x11
.LBB5_20:                               //  %if.end75
	lw x11, 16 ( x18 )
	mv x22, x0
	mv x12, x22
	add x19, x0, -1
	sll x11, x10, x11
	mv x10, x20
	jal lseek
	xor x10, x10, -1
	beq x0, x10, .LBB5_24
.LBB5_21:                               //  %lor.lhs.false
	mv x10, x20
	mv x11, x9
	mv x12, fp
	jal write
	xor x11, x10, -1
	beq x0, x11, .LBB5_24
.LBB5_22:                               //  %if.end85
	beq x10, fp, .LBB5_25
.LBB5_23:                               //  %if.then88
	jal __errno
	add x11, x0, 79
	sw x11, 0 ( x10 )
.LBB5_24:                               //  %cleanup
	mv x22, x19
.LBB5_25:                               //  %cleanup
	mv x10, x22
	lw fp, 12 ( sp )                //  4-byte Folded Reload
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
	.size	__put_page, .Lfunc_end5-__put_page
	.cfi_endproc
                                        //  -- End function
	.globl	__ibitmap               //  -- Begin function __ibitmap
	.type	__ibitmap,@function
__ibitmap:                              //  @__ibitmap
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lw x10, 12 ( x9 )
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	mv fp, x13
	mv x20, x12
	mv x18, x11
	jal malloc
	mv x19, x10
	beq x0, x19, .LBB6_1
.LBB6_2:                                //  %if.end
	lw x10, 440 ( x9 )
	mv x21, x0
	mv x11, x21
	add x10, x10, 1
	sw x10, 440 ( x9 )
	add x10, x20, -1
	sra x10, x10, 5&31
	sll x23, x10, 2&31
	add x22, x23, 4
	mv x10, x19
	mv x12, x22
	jal memset
	lw x10, 12 ( x9 )
	add x11, x0, 255
	sub x12, x10, x22
	add x10, x22, x19
	jal memset
	add x10, x0, -1
	sll x10, x10, x20
	add x11, x23, x19
	sw x10, 0 ( x11 )
	sll x10, fp, 1&31
	add x10, x10, x9
	sh x18, 196 ( x10 )
	sll x10, fp, 2&31
	add x10, x10, x9
	sw x19, 312 ( x10 )
	lw x10, 0 ( x19 )
	or x10, x10, 1
	sw x10, 0 ( x19 )
	jal x0, .LBB6_3
.LBB6_1:
	seqz x21, x0
.LBB6_3:                                //  %cleanup
	mv x10, x21
	lw fp, 12 ( sp )                //  4-byte Folded Reload
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
.Lfunc_end6:
	.size	__ibitmap, .Lfunc_end6-__ibitmap
	.cfi_endproc
                                        //  -- End function
	.globl	__free_ovflpage         //  -- Begin function __free_ovflpage
	.type	__free_ovflpage,@function
__free_ovflpage:                        //  @__free_ovflpage
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv fp, x11
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lw x10, 12 ( fp )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	srl x11, x10, 11&31
	and x11, x11, 31
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	beq x0, x11, .LBB7_1
.LBB7_2:                                //  %cond.true
	sll x11, x11, 2&31
	add x11, x9, x11
	lw x11, 64 ( x11 )
	jal x0, .LBB7_3
.LBB7_1:
	mv x11, x0
.LBB7_3:                                //  %cond.end
	and x10, x10, 2047
	add x10, x10, x11
	lw x11, 36 ( x9 )
	add x19, x10, -1
	blt x11, x10, .LBB7_5
.LBB7_4:                                //  %if.then
	sw x19, 36 ( x9 )
.LBB7_5:                                //  %if.end
	lw x10, 16 ( x9 )
	lw x18, 12 ( x9 )
	add x10, x10, 3
	sra x20, x19, x10
	sll x10, x20, 2&31
	add x11, x10, x9
	lw x10, 312 ( x11 )
	bltu x0, x10, .LBB7_8
.LBB7_6:                                //  %if.then20
	mv x10, x18
	add x21, x11, 312
	jal malloc
	mv x11, x10
	sll x10, x20, 1&31
	add x10, x10, x9
	lhu x12, 196 ( x10 )
	seqz x14, x0
	mv x13, x0
	mv x10, x9
	mv x15, x14
	sw x11, 0 ( x21 )
	jal __get_page
	mv x11, x10
	lw x10, 0 ( x21 )
	bltu x0, x11, .LBB7_7
.LBB7_8:                                //  %if.end21
	sll x11, x18, 3&31
	add x11, x11, -1
	and x11, x19, x11
	sra x12, x11, 31&31
	srl x12, x12, 27&31
	add x12, x12, x11
	sra x12, x12, 5&31
	sll x12, x12, 2&31
	add x10, x12, x10
	seqz x12, x0
	sll x11, x12, x11
	lw x12, 0 ( x10 )
	xor x11, x11, -1
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	and x11, x11, x12
	sw x11, 0 ( x10 )
	mv x10, x9
	mv x11, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	j __reclaim_buf
.LBB7_7:                                //  %if.then9.i
	jal free
.Lfunc_end7:
	.size	__free_ovflpage, .Lfunc_end7-__free_ovflpage
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"HASH: Out of overflow pages.  Increase page size\n"
	.size	.str, 50

	.address_space	0
	.type	open_temp.namestr,@object //  @open_temp.namestr
	.data
open_temp.namestr:
	.asciz	"_hashXXXXXX"
	.size	open_temp.namestr, 12


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
