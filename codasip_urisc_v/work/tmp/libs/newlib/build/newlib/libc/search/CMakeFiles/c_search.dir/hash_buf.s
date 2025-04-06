	.text
	.file	"hash_buf.c"
	.globl	__get_buf               //  -- Begin function __get_buf
	.type	__get_buf,@function
__get_buf:                              //  @__get_buf
	.cfi_sections .debug_frame
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
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x12
	mv x18, x11
	mv x9, x10
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
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
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	beq x0, fp, .LBB0_5
.LBB0_1:                                //  %if.then
	lw x21, 8 ( fp )
	beq x0, x21, .LBB0_3
.LBB0_2:                                //  %lor.lhs.false
	lw x10, 12 ( x21 )
	beq x10, x18, .LBB0_4
.LBB0_3:                                //  %if.then3
	mv x21, x0
.LBB0_4:                                //  %if.end
	mv x23, x0
	seqz x10, x13
	sll x19, x10, 1&31
	mv x22, x23
	mv x24, x23
	beq x0, x21, .LBB0_9
.LBB0_50:                               //  %if.else29
	lw x10, 4 ( x21 )
	lw x11, 0 ( x21 )
	sw x10, 4 ( x11 )
	lw x10, 4 ( x21 )
	sw x11, 0 ( x10 )
	lw x10, 452 ( x9 )
	sw x10, 4 ( x21 )
	add x10, x9, 448
	sw x21, 452 ( x9 )
	sw x10, 0 ( x21 )
	lw x10, 4 ( x21 )
	sw x21, 0 ( x10 )
.LBB0_51:                               //  %cleanup
	mv x10, x21
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
.LBB0_5:                                //  %if.else
	lw x11, 24 ( x9 )
	lw x10, 28 ( x9 )
	add x11, x11, -1
	and x22, x18, x11
	lw x11, 472 ( x9 )
	srl x10, x18, x10
	sll x10, x10, 2&31
	add x10, x10, x11
	lw x24, 0 ( x10 )
	sll x10, x22, 2&31
	add x10, x10, x24
	lw x10, 0 ( x10 )
	and x21, x10, -4
	and x23, x10, 2
	bltu x0, x23, .LBB0_6
.LBB0_7:                                //  %lor.rhs
	lw x10, 304 ( x9 )
	mv x23, x0
	seqz x19, x10
	bltu x0, x21, .LBB0_50
.LBB0_9:                                //  %if.then16
	lw x10, 444 ( x9 )
	add x25, x9, 448
	bltu x0, x10, .LBB0_11
.LBB0_10:                               //  %lor.lhs.false.i
	lw x20, 448 ( x9 )
	lbu x10, 20 ( x20 )
	and x11, x10, 8
	bltu x0, x11, .LBB0_11
.LBB0_16:                               //  %if.else.i
	lw x11, 4 ( x20 )
	lw x12, 0 ( x20 )
	sw x11, 4 ( x12 )
	lw x11, 4 ( x20 )
	sw x12, 0 ( x11 )
	lw x12, 12 ( x20 )
	and x11, x10, 4
	bltu x0, x11, .LBB0_18
.LBB0_17:                               //  %if.else.i
	beq x0, x12, .LBB0_40
.LBB0_18:                               //  %if.then27.i
	lw x11, 16 ( x20 )
	sll x10, x10, 24&31
	sra x10, x10, 24&31
	lhu x13, 0 ( x11 )
	beq x0, x13, .LBB0_19
.LBB0_20:                               //  %if.then30.i
	sll x13, x13, 1&31
	add x13, x11, x13
	lhu x26, -2 ( x13 )
	and x13, x10, 1
	bltu x0, x13, .LBB0_22
	jal x0, .LBB0_24
.LBB0_11:                               //  %if.then.i
	add x10, x0, 24
	jal malloc
	mv x20, x10
	mv x21, x0
	beq x0, x20, .LBB0_51
.LBB0_12:                               //  %if.end.i
	lw x10, 12 ( x9 )
	jal malloc
	sw x10, 16 ( x20 )
	beq x0, x10, .LBB0_13
.LBB0_14:                               //  %if.end8.i
	lw x10, 444 ( x9 )
	beq x0, x10, .LBB0_40
.LBB0_15:                               //  %if.then11.i
	add x10, x10, -1
	sw x10, 444 ( x9 )
.LBB0_40:                               //  %if.end131.i
	sw x18, 12 ( x20 )
	sw x0, 8 ( x20 )
	beq x0, fp, .LBB0_41
.LBB0_42:                               //  %if.then135.i
	mv x10, x0
	sw x20, 8 ( fp )
	jal x0, .LBB0_43
.LBB0_6:
	seqz x19, x0
	bltu x0, x21, .LBB0_50
	jal x0, .LBB0_9
.LBB0_13:                               //  %if.then7.i
	mv x10, x20
	jal free
	jal x0, .LBB0_51
.LBB0_19:
	mv x26, x0
	and x13, x10, 1
	beq x0, x13, .LBB0_24
.LBB0_22:                               //  %land.lhs.true.i
	mv x21, x0
	and x13, x10, 4
	mv x10, x9
	mv x14, x21
	jal __put_page
	bltu x0, x10, .LBB0_51
.LBB0_23:                               //  %land.lhs.true.if.end47_crit_edge.i
	lb x10, 20 ( x20 )
.LBB0_24:                               //  %if.end47.i
	and x11, x10, 4
	sw x19, 8 ( sp )                //  4-byte Folded Spill
	beq x0, x11, .LBB0_30
.LBB0_25:                               //  %if.then52.i
	lw x12, 24 ( x9 )
	lw x11, 12 ( x20 )
	lw x13, 28 ( x9 )
	add x12, x12, -1
	and x12, x11, x12
	srl x11, x11, x13
	lw x13, 472 ( x9 )
	sll x11, x11, 2&31
	sll x12, x12, 2&31
	add x11, x11, x13
	lw x11, 0 ( x11 )
	lw x13, 304 ( x9 )
	beq x0, x13, .LBB0_28
.LBB0_26:                               //  %land.lhs.true61.i
	add x13, x0, 2
	and x10, x10, 1
	bltu x0, x10, .LBB0_29
.LBB0_27:                               //  %lor.lhs.false66.i
	add x10, x12, x11
	lbu x10, 0 ( x10 )
	and x10, x10, 2
	bltu x0, x10, .LBB0_29
.LBB0_28:                               //  %if.else72.i
	mv x13, x0
.LBB0_29:                               //  %if.end75.i.sink.split
	add x10, x12, x11
	sw x13, 0 ( x10 )
.LBB0_30:                               //  %if.end75.i
	lw x27, 8 ( x20 )
	beq x0, x27, .LBB0_39
.LBB0_31:                               //  %for.body.i.preheader
	lui x11, %hi( 65535 )
	add x10, x20, 8
	add x15, x11, %lo( 65535 )
	mv x21, x0
	sw x0, 0 ( x10 )
	lbu x10, 20 ( x27 )
	and x11, x10, 4
	beq x0, x11, .LBB0_33
	jal x0, .LBB0_39
.LBB0_38:                               //  %if.end109.i
                                        //    in Loop: Header=BB0_33 Depth=1
	lw x10, 4 ( x27 )
	lw x11, 0 ( x27 )
	sb x0, 20 ( x27 )
	sw x0, 12 ( x27 )
	sw x10, 4 ( x11 )
	lw x10, 4 ( x27 )
	sw x11, 0 ( x10 )
	lw x10, 0 ( x25 )
	sw x10, 0 ( x27 )
	lw x10, 4 ( x10 )
	sw x10, 4 ( x27 )
	lw x10, 0 ( x25 )
	sw x27, 4 ( x10 )
	lw x10, 4 ( x27 )
	sw x27, 0 ( x10 )
	add x10, x27, 8
	lw x27, 8 ( x27 )
	beq x0, x27, .LBB0_39
.LBB0_32:                               //  %for.body.i
                                        //    in Loop: Header=BB0_33 Depth=1
	sw x0, 0 ( x10 )
	lbu x10, 20 ( x27 )
	and x11, x10, 4
	bltu x0, x11, .LBB0_39
.LBB0_33:                               //  %lor.lhs.false83.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 12 ( x27 )
	and x12, x15, x26
	bne x11, x12, .LBB0_39
.LBB0_34:                               //  %if.end89.i
                                        //    in Loop: Header=BB0_33 Depth=1
	lw x11, 16 ( x27 )
	lhu x13, 0 ( x11 )
	beq x0, x13, .LBB0_36
.LBB0_35:                               //  %if.then93.i
                                        //    in Loop: Header=BB0_33 Depth=1
	sll x13, x13, 1&31
	add x13, x11, x13
	lhu x26, -2 ( x13 )
.LBB0_36:                               //  %if.end98.i
                                        //    in Loop: Header=BB0_33 Depth=1
	and x10, x10, 1
	beq x0, x10, .LBB0_38
.LBB0_37:                               //  %land.lhs.true103.i
                                        //    in Loop: Header=BB0_33 Depth=1
	mv x10, x9
	mv x14, x21
	mv x13, x21
	mv x19, x25
	mv x25, x15
	jal __put_page
	mv x15, x25
	mv x25, x19
	beq x0, x10, .LBB0_38
	jal x0, .LBB0_51
.LBB0_39:
	lw x19, 8 ( sp )                //  4-byte Folded Reload
	sw x18, 12 ( x20 )
	sw x0, 8 ( x20 )
	bltu x0, fp, .LBB0_42
.LBB0_41:
	add x10, x0, 4
.LBB0_43:                               //  %newbuf.exit
	sb x10, 20 ( x20 )
	lw x10, 452 ( x9 )
	sw x25, 0 ( x20 )
	sw x10, 4 ( x20 )
	sw x20, 452 ( x9 )
	lw x10, 4 ( x20 )
	sw x20, 0 ( x10 )
	beq x0, x20, .LBB0_44
.LBB0_45:                               //  %lor.lhs.false18
	lw x11, 16 ( x20 )
	mv x21, x0
	seqz x13, fp
	mv x10, x9
	mv x12, x18
	mv x14, x19
	mv x15, x21
	jal __get_page
	bne x10, x21, .LBB0_47
.LBB0_46:                               //  %lor.lhs.false18
	mv x21, x20
.LBB0_47:                               //  %lor.lhs.false18
	bltu x0, fp, .LBB0_51
.LBB0_48:                               //  %lor.lhs.false18
	bltu x0, x10, .LBB0_51
.LBB0_49:                               //  %if.then26
	sll x10, x22, 2&31
	add x10, x10, x24
	or x11, x20, x23
	sw x11, 0 ( x10 )
	mv x21, x20
	jal x0, .LBB0_51
.LBB0_44:
	mv x21, x0
	jal x0, .LBB0_51
.Lfunc_end0:
	.size	__get_buf, .Lfunc_end0-__get_buf
	.cfi_endproc
                                        //  -- End function
	.globl	__buf_init              //  -- Begin function __buf_init
	.type	__buf_init,@function
__buf_init:                             //  @__buf_init
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x12, x10, 448
	sw x12, 452 ( x10 )
	sw x12, 448 ( x10 )
	lw x12, 12 ( x10 )
	add x11, x12, x11
	lw x12, 16 ( x10 )
	add x11, x11, -1
	sra x11, x11, x12
	add x12, x0, 6
	blt x12, x11, .LBB1_2
.LBB1_1:                                //  %entry
	mv x11, x12
.LBB1_2:                                //  %entry
	sw x11, 444 ( x10 )
	jr ra
.Lfunc_end1:
	.size	__buf_init, .Lfunc_end1-__buf_init
	.cfi_endproc
                                        //  -- End function
	.globl	__buf_free              //  -- Begin function __buf_free
	.type	__buf_free,@function
__buf_free:                             //  @__buf_free
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x10
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x18, 448 ( x19 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv x9, x11
	mv fp, x0
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	beq x0, x18, .LBB2_19
.LBB2_1:                                //  %entry
	add x21, x19, 448
	beq x18, x21, .LBB2_19
.LBB2_2:                                //  %for.body.lr.ph
	beq x0, x12, .LBB2_14
.LBB2_3:
	mv x20, x0
	add fp, x0, -1
	lbu x10, 20 ( x18 )
	lw x12, 12 ( x18 )
	beq x0, x12, .LBB2_5
	jal x0, .LBB2_6
.LBB2_11:                               //  %if.end27
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	sw x10, 4 ( x11 )
	lw x10, 4 ( x18 )
	sw x11, 0 ( x10 )
	mv x10, x18
	jal free
	mv x18, x21
.LBB2_12:                               //  %if.end36
	lw x18, 0 ( x18 )
	beq x18, x21, .LBB2_13
.LBB2_4:                                //  %for.body
	lbu x10, 20 ( x18 )
	lw x12, 12 ( x18 )
	bltu x0, x12, .LBB2_6
.LBB2_5:                                //  %for.body
	and x11, x10, 4
	beq x0, x11, .LBB2_8
.LBB2_6:                                //  %land.lhs.true
	sll x10, x10, 24&31
	sra x10, x10, 24&31
	and x11, x10, 1
	beq x0, x11, .LBB2_8
.LBB2_7:                                //  %land.lhs.true12
	lw x11, 16 ( x18 )
	and x13, x10, 4
	mv x10, x19
	mv x14, x20
	jal __put_page
	bltu x0, x10, .LBB2_19
.LBB2_8:                                //  %if.end20
	beq x0, x9, .LBB2_12
.LBB2_9:                                //  %if.then22
	lw x10, 16 ( x18 )
	beq x0, x10, .LBB2_11
.LBB2_10:                               //  %if.then25
	jal free
	jal x0, .LBB2_11
.LBB2_17:                               //  %if.end27.us
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	sw x10, 4 ( x11 )
	lw x10, 4 ( x18 )
	sw x11, 0 ( x10 )
	mv x10, x18
	jal free
	mv x18, x21
.LBB2_18:                               //  %if.end36.us
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x18, 0 ( x18 )
	beq x18, x21, .LBB2_19
.LBB2_14:                               //  %for.body.us
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x9, .LBB2_18
.LBB2_15:                               //  %if.then22.us
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 16 ( x18 )
	beq x0, x10, .LBB2_17
.LBB2_16:                               //  %if.then25.us
                                        //    in Loop: Header=BB2_14 Depth=1
	jal free
	jal x0, .LBB2_17
.LBB2_13:
	mv fp, x20
.LBB2_19:                               //  %cleanup
	mv x10, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	__buf_free, .Lfunc_end2-__buf_free
	.cfi_endproc
                                        //  -- End function
	.globl	__reclaim_buf           //  -- Begin function __reclaim_buf
	.type	__reclaim_buf,@function
__reclaim_buf:                          //  @__reclaim_buf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x12, 4 ( x11 )
	lw x13, 0 ( x11 )
	sb x0, 20 ( x11 )
	sw x0, 12 ( x11 )
	sw x0, 8 ( x11 )
	sw x12, 4 ( x13 )
	lw x12, 4 ( x11 )
	sw x13, 0 ( x12 )
	lw x12, 448 ( x10 )
	sw x12, 0 ( x11 )
	lw x12, 4 ( x12 )
	lw x10, 448 ( x10 )
	sw x12, 4 ( x11 )
	sw x11, 4 ( x10 )
	lw x10, 4 ( x11 )
	sw x11, 0 ( x10 )
	jr ra
.Lfunc_end3:
	.size	__reclaim_buf, .Lfunc_end3-__reclaim_buf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
