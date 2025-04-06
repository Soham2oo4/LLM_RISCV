	.text
	.file	"hcreate_r.c"
	.globl	hcreate_r               //  -- Begin function hcreate_r
	.type	hcreate_r,@function
hcreate_r:                              //  @hcreate_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x11
	lw x11, 0 ( fp )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	beq x0, x11, .LBB0_3
.LBB0_1:                                //  %if.then
	jal __errno
	add x11, x0, 22
.LBB0_2:                                //  %cleanup
	sw x11, 0 ( x10 )
	mv x10, x0
.LBB0_14:                               //  %cleanup
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_3:                                //  %if.end
	add x11, x0, 16
	bgeu x11, x10, .LBB0_4
.LBB0_5:                                //  %if.end
	srl x11, x10, 26&31
	mv x9, x0
	bne x11, x9, .LBB0_6
.LBB0_7:                                //  %if.end
	add x11, x10, -1
	and x11, x11, x10
	bltu x0, x11, .LBB0_8
	jal x0, .LBB0_11
.LBB0_4:                                //  %if.end
	mv x10, x11
	srl x11, x10, 26&31
	mv x9, x0
	beq x11, x9, .LBB0_7
.LBB0_6:                                //  %if.end
	lui x10, (67108864>>12)&1048575
	add x11, x10, -1
	and x11, x11, x10
	beq x0, x11, .LBB0_11
.LBB0_8:                                //  %for.body.preheader
	add x11, x0, -1
.LBB0_9:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x11, x11, 1
	srl x10, x10, 1&31
	bltu x0, x10, .LBB0_9
.LBB0_10:                               //  %for.end
	add x10, x0, 2
	sll x10, x10, x11
.LBB0_11:                               //  %if.end10
	sw x10, 4 ( fp )
	sll x10, x10, 2&31
	jal malloc
	mv x11, x10
	sw x11, 0 ( fp )
	beq x0, x11, .LBB0_15
.LBB0_12:                               //  %for.cond19.preheader
	lw x12, 4 ( fp )
	seqz x10, x0
	beq x0, x12, .LBB0_14
.LBB0_13:                               //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x0, 0 ( x11 )
	add x11, x11, 4
	add x9, x9, 1
	bltu x9, x12, .LBB0_13
	jal x0, .LBB0_14
.LBB0_15:                               //  %if.then16
	jal __errno
	add x11, x0, 12
	jal x0, .LBB0_2
.Lfunc_end0:
	.size	hcreate_r, .Lfunc_end0-hcreate_r
	.cfi_endproc
                                        //  -- End function
	.globl	hdestroy_r              //  -- Begin function hdestroy_r
	.type	hdestroy_r,@function
hdestroy_r:                             //  @hdestroy_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x10
	lw x10, 0 ( fp )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x10, .LBB1_2
.LBB1_1:                                //  %if.end
	jal free
	sw x0, 0 ( fp )
.LBB1_2:                                //  %return
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	hdestroy_r, .Lfunc_end1-hdestroy_r
	.cfi_endproc
                                        //  -- End function
	.globl	hsearch_r               //  -- Begin function hsearch_r
	.type	hsearch_r,@function
hsearch_r:                              //  @hsearch_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x18, 0 ( x9 )
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv x10, x18
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	mv x20, x13
	mv fp, x12
	mv x19, x11
	jal strlen
	mv x11, x10
	lui x10, %hi( __default_hash )
	add x10, x10, %lo( __default_hash )
	lw x12, 0 ( x10 )
	mv x10, x18
	call.reg x12
	lw x11, 4 ( x20 )
	add x11, x11, -1
	and x10, x10, x11
	lw x11, 0 ( x20 )
	sll x10, x10, 2&31
	add x20, x10, x11
	lw x21, 0 ( x20 )
	beq x0, x21, .LBB2_3
.LBB2_1:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 4 ( x21 )
	mv x11, x18
	jal strcmp
	beq x0, x10, .LBB2_9
.LBB2_2:                                //  %if.end
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x21, 0 ( x21 )
	bltu x0, x21, .LBB2_1
.LBB2_3:                                //  %if.else
	beq x0, x19, .LBB2_4
.LBB2_5:                                //  %if.end14
	add x10, x0, 12
	jal malloc
	beq x0, x10, .LBB2_4
.LBB2_6:                                //  %if.end18
	add x12, x10, 4
	lw x11, 0 ( x20 )
	sw x10, 0 ( x20 )
	sw x12, 0 ( fp )
	lw x12, 4 ( x9 )
	sw x18, 4 ( x10 )
	sw x11, 0 ( x10 )
	sw x12, 8 ( x10 )
	jal x0, .LBB2_7
.LBB2_4:                                //  %if.then12
	sw x0, 0 ( fp )
	mv x10, x0
	jal x0, .LBB2_8
.LBB2_9:                                //  %if.then9
	add x10, x21, 4
	sw x10, 0 ( fp )
.LBB2_7:                                //  %cleanup
	seqz x10, x0
.LBB2_8:                                //  %cleanup
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
	.size	hsearch_r, .Lfunc_end2-hsearch_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
