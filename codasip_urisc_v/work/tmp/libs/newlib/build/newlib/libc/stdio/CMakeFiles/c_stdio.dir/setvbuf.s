	.text
	.file	"setvbuf.c"
	.globl	setvbuf                 //  -- Begin function setvbuf
	.type	setvbuf,@function
setvbuf:                                //  @setvbuf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw fp, 16 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv fp, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x18, 0 ( x10 )
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x19, x13
	mv x9, x12
	mv x20, x11
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	beq x0, x18, .LBB0_2
.LBB0_1:                                //  %land.lhs.true
	lw x10, 56 ( x18 )
	beq x0, x10, .LBB0_5
.LBB0_2:                                //  %if.end
	xor x21, x9, 2
	beq x0, x21, .LBB0_6
.LBB0_3:                                //  %if.then2
	add x22, x0, -1
	seqz x10, x0
	bltu x10, x9, .LBB0_33
.LBB0_4:                                //  %if.then2
	bge x19, x0, .LBB0_6
	jal x0, .LBB0_33
.LBB0_5:                                //  %if.then
	mv x10, x18
	jal __sinit
	xor x21, x9, 2
	bltu x0, x21, .LBB0_3
.LBB0_6:                                //  %if.end9
	mv x10, x18
	mv x11, fp
	jal _fflush_r
	lw x11, 48 ( fp )
	beq x0, x11, .LBB0_10
.LBB0_7:                                //  %if.then17
	add x10, fp, 64
	beq x11, x10, .LBB0_9
.LBB0_8:                                //  %if.then22
	mv x10, x18
	jal _free_r
.LBB0_9:                                //  %if.end25
	sw x0, 48 ( fp )
.LBB0_10:                               //  %if.end28
	lhu x10, 12 ( fp )
	sw x0, 4 ( fp )
	sw x0, 24 ( fp )
	and x11, x10, 128
	beq x0, x11, .LBB0_12
.LBB0_11:                               //  %if.then33
	lw x11, 16 ( fp )
	mv x10, x18
	jal _free_r
	lhu x10, 12 ( fp )
.LBB0_12:                               //  %if.end35
	lui x11, %hi( 62300 )
	add x11, x11, %lo( 62300 )
	and x10, x11, x10
	sh x10, 12 ( fp )
	bltu x0, x21, .LBB0_15
.LBB0_13:
	mv x22, x0
.LBB0_14:                               //  %nbf
	seqz x10, x0
	sw x10, 20 ( fp )
	add x10, fp, 67
	sw x10, 16 ( fp )
	sw x10, 0 ( fp )
	lh x10, 12 ( fp )
	sw x0, 8 ( fp )
	or x10, x10, 2
	sh x10, 12 ( fp )
	jal x0, .LBB0_33
.LBB0_15:                               //  %if.end43
	add x12, sp, 12
	add x13, sp, 8
	mv x10, x18
	mv x11, fp
	jal __swhatbuf_r
	lh x11, 12 ( fp )
	mv x21, x0
	or x10, x10, x11
	sh x10, 12 ( fp )
	beq x19, x21, .LBB0_25
.LBB0_16:                               //  %if.end43
	mv x21, x20
	beq x0, x21, .LBB0_26
.LBB0_17:
	mv x20, x19
	lw x10, 56 ( x18 )
	beq x0, x10, .LBB0_18
.LBB0_19:                               //  %if.end97
	lw x10, 12 ( sp )
	bne x20, x10, .LBB0_29
.LBB0_20:                               //  %if.end105
	lhu x10, 12 ( fp )
	xor x11, x9, 1
	bltu x0, x11, .LBB0_22
.LBB0_21:                               //  %if.then108
	or x10, x10, 1
	sh x10, 12 ( fp )
.LBB0_22:                               //  %if.end113
	sll x10, x10, 16&31
	sra x10, x10, 16&31
	and x11, x10, 8
	sw x20, 20 ( fp )
	sw x21, 16 ( fp )
	sw x21, 0 ( fp )
	beq x0, x11, .LBB0_31
.LBB0_23:                               //  %if.then123
	and x10, x10, 1
	bltu x0, x10, .LBB0_30
.LBB0_24:                               //  %if.else
	sw x20, 8 ( fp )
	jal x0, .LBB0_32
.LBB0_25:
	lw x19, 12 ( sp )
	bltu x0, x21, .LBB0_17
.LBB0_26:                               //  %if.then54
	mv x10, x19
	jal malloc
	mv x21, x10
	beq x0, x21, .LBB0_34
.LBB0_27:
	mv x20, x19
.LBB0_28:                               //  %if.end88
	lh x10, 12 ( fp )
	or x10, x10, 128
	sh x10, 12 ( fp )
	lw x10, 56 ( x18 )
	bltu x0, x10, .LBB0_19
.LBB0_18:                               //  %if.then96
	mv x10, x18
	jal __sinit
	lw x10, 12 ( sp )
	beq x20, x10, .LBB0_20
.LBB0_29:                               //  %if.then100
	lh x10, 12 ( fp )
	lui x11, %hi( 2048 )
	add x11, x11, %lo( 2048 )
	or x10, x11, x10
	sh x10, 12 ( fp )
	lhu x10, 12 ( fp )
	xor x11, x9, 1
	beq x0, x11, .LBB0_21
	jal x0, .LBB0_22
.LBB0_30:                               //  %if.then128
	sub x10, x0, x20
	sw x10, 24 ( fp )
.LBB0_31:                               //  %if.else135
	sw x0, 8 ( fp )
.LBB0_32:                               //  %cleanup
	mv x22, x0
.LBB0_33:                               //  %cleanup
	mv x10, x22
	lw fp, 16 ( sp )                //  4-byte Folded Reload
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
.LBB0_34:                               //  %if.then58
	lw x20, 12 ( sp )
	add x22, x0, -1
	beq x19, x20, .LBB0_14
.LBB0_35:                               //  %if.end64
	mv x10, x20
	jal malloc
	mv x21, x10
	bltu x0, x21, .LBB0_28
	jal x0, .LBB0_14
.Lfunc_end0:
	.size	setvbuf, .Lfunc_end0-setvbuf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
