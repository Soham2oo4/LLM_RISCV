	.text
	.file	"ungetc.c"
	.globl	__submore               //  -- Begin function __submore
	.type	__submore,@function
__submore:                              //  @__submore
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x11
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x9, 48 ( fp )
	add x11, fp, 64
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	beq x9, x11, .LBB0_3
.LBB0_1:                                //  %if.end9
	lw x19, 52 ( fp )
	mv x11, x9
	sll x18, x19, 1&31
	mv x12, x18
	jal _realloc_r
	mv x9, x10
	beq x0, x9, .LBB0_7
.LBB0_2:                                //  %if.end17
	add x20, x19, x9
	mv x10, x20
	mv x11, x9
	mv x12, x19
	jal memcpy
	sw x18, 52 ( fp )
	sw x9, 48 ( fp )
	sw x20, 0 ( fp )
	jal x0, .LBB0_5
.LBB0_3:                                //  %if.then
	add x18, x0, 1024
	mv x11, x18
	jal _malloc_r
	beq x0, x10, .LBB0_7
.LBB0_4:                                //  %if.end
	lb x11, 66 ( fp )
	sw x18, 52 ( fp )
	sw x10, 48 ( fp )
	sb x11, 1023 ( x10 )
	lb x11, 65 ( fp )
	sb x11, 1022 ( x10 )
	lb x11, 0 ( x9 )
	sb x11, 1021 ( x10 )
	add x10, x10, 1021
	sw x10, 0 ( fp )
.LBB0_5:                                //  %cleanup
	mv x10, x0
	jal x0, .LBB0_8
.LBB0_7:
	add x10, x0, -1
.LBB0_8:                                //  %cleanup
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__submore, .Lfunc_end0-__submore
	.cfi_endproc
                                        //  -- End function
	.globl	_ungetc_r               //  -- Begin function _ungetc_r
	.type	_ungetc_r,@function
_ungetc_r:                              //  @_ungetc_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv x19, x10
	mv fp, x12
	add x18, x0, -1
	xor x10, x9, -1
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	beq x0, x10, .LBB1_30
.LBB1_1:                                //  %do.body
	beq x0, x19, .LBB1_4
.LBB1_2:                                //  %land.lhs.true
	lw x10, 56 ( x19 )
	beq x0, x10, .LBB1_3
.LBB1_4:                                //  %if.end3
	lhu x10, 12 ( fp )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB1_6
.LBB1_5:                                //  %if.then14
	lw x12, 100 ( fp )
	lui x13, %hi( -8193 )
	add x13, x13, %lo( -8193 )
	or x10, x11, x10
	and x12, x13, x12
	sw x12, 100 ( fp )
	sh x10, 12 ( fp )
.LBB1_6:                                //  %do.end21
	lui x11, %hi( 65503 )
	add x11, x11, %lo( 65503 )
	and x10, x11, x10
	sll x11, x10, 16&31
	sra x11, x11, 16&31
	and x12, x11, 4
	sh x10, 12 ( fp )
	bltu x0, x12, .LBB1_12
.LBB1_7:                                //  %if.then31
	and x12, x11, 16
	beq x0, x12, .LBB1_30
.LBB1_8:                                //  %if.end50
	and x11, x11, 8
	beq x0, x11, .LBB1_11
.LBB1_9:                                //  %if.then55
	mv x10, x19
	mv x11, fp
	jal _fflush_r
	bltu x0, x10, .LBB1_30
.LBB1_10:                               //  %if.end70
	lh x10, 12 ( fp )
	sw x0, 24 ( fp )
	sw x0, 8 ( fp )
	and x10, x10, -9
	sh x10, 12 ( fp )
.LBB1_11:                               //  %if.end75
	or x10, x10, 4
	sh x10, 12 ( fp )
.LBB1_12:                               //  %if.end80
	lw x20, 48 ( fp )
	and x23, x9, 255
	beq x0, x20, .LBB1_22
.LBB1_13:                               //  %if.then85
	lw x21, 52 ( fp )
	lw x10, 4 ( fp )
	bge x10, x21, .LBB1_15
.LBB1_14:                               //  %if.then85.if.end105_crit_edge
	lw x18, 0 ( fp )
	jal x0, .LBB1_21
.LBB1_22:                               //  %if.end120
	lw x11, 16 ( fp )
	beq x0, x11, .LBB1_23
.LBB1_25:                               //  %land.lhs.true124
	lw x10, 0 ( fp )
	bgeu x11, x10, .LBB1_24
.LBB1_26:                               //  %land.lhs.true130
	lbu x11, -1 ( x10 )
	and x12, x9, 255
	bne x11, x12, .LBB1_24
.LBB1_27:                               //  %if.then135
	add x10, x10, -1
	sw x10, 0 ( fp )
	jal x0, .LBB1_28
.LBB1_3:                                //  %if.then2
	mv x10, x19
	jal __sinit
	lhu x10, 12 ( fp )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	beq x0, x12, .LBB1_5
	jal x0, .LBB1_6
.LBB1_15:                               //  %land.lhs.true89
	add x10, fp, 64
	beq x20, x10, .LBB1_16
.LBB1_18:                               //  %if.end9.i
	sll x22, x21, 1&31
	mv x10, x19
	mv x11, x20
	mv x12, x22
	jal _realloc_r
	mv x19, x10
	beq x0, x19, .LBB1_30
.LBB1_19:                               //  %if.end17.i
	add x18, x21, x19
	mv x10, x18
	mv x11, x19
	mv x12, x21
	jal memcpy
	sw x22, 52 ( fp )
	sw x19, 48 ( fp )
	jal x0, .LBB1_20
.LBB1_23:                               //  %if.end120.if.end152_crit_edge
	lw x10, 0 ( fp )
.LBB1_24:                               //  %if.end152
	sw x10, 56 ( fp )
	add x10, x0, 3
	sw x10, 52 ( fp )
	add x10, fp, 64
	sw x10, 48 ( fp )
	add x10, fp, 66
	sw x10, 0 ( fp )
	lw x10, 4 ( fp )
	seqz x11, x0
	sb x9, 66 ( fp )
	sw x11, 4 ( fp )
	sw x10, 60 ( fp )
	jal x0, .LBB1_29
.LBB1_16:                               //  %if.then.i
	add x21, x0, 1024
	mv x10, x19
	mv x11, x21
	jal _malloc_r
	beq x0, x10, .LBB1_30
.LBB1_17:                               //  %if.end.i
	lb x11, 66 ( fp )
	sw x21, 52 ( fp )
	sw x10, 48 ( fp )
	add x18, x10, 1021
	sb x11, 1023 ( x10 )
	lb x11, 65 ( fp )
	sb x11, 1022 ( x10 )
	lb x11, 0 ( x20 )
	sb x11, 1021 ( x10 )
.LBB1_20:                               //  %if.end105
	sw x18, 0 ( fp )
.LBB1_21:                               //  %if.end105
	add x10, x18, -1
	sw x10, 0 ( fp )
	sb x9, -1 ( x18 )
.LBB1_28:                               //  %return
	lw x10, 4 ( fp )
	add x10, x10, 1
	sw x10, 4 ( fp )
.LBB1_29:                               //  %return
	mv x18, x23
.LBB1_30:                               //  %return
	mv x10, x18
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
.Lfunc_end1:
	.size	_ungetc_r, .Lfunc_end1-_ungetc_r
	.cfi_endproc
                                        //  -- End function
	.globl	ungetc                  //  -- Begin function ungetc
	.type	ungetc,@function
ungetc:                                 //  @ungetc
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _ungetc_r
.Lfunc_end2:
	.size	ungetc, .Lfunc_end2-ungetc
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
