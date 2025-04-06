	.text
	.file	"refill.c"
	.globl	__srefill_r             //  -- Begin function __srefill_r
	.type	__srefill_r,@function
__srefill_r:                            //  @__srefill_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x11
	mv x18, x10
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	beq x0, x18, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x10, 56 ( x18 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end
	lhu x10, 12 ( fp )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB0_5
.LBB0_4:                                //  %if.then4
	lw x12, 100 ( fp )
	lui x13, %hi( -8193 )
	add x13, x13, %lo( -8193 )
	or x10, x11, x10
	and x12, x13, x12
	sw x12, 100 ( fp )
	sh x10, 12 ( fp )
.LBB0_5:                                //  %do.end10
	sll x11, x10, 16&31
	sra x11, x11, 16&31
	add x9, x0, -1
	and x12, x11, 32
	sw x0, 4 ( fp )
	bltu x0, x12, .LBB0_29
.LBB0_6:                                //  %if.end16
	and x12, x11, 4
	bltu x0, x12, .LBB0_20
.LBB0_7:                                //  %if.then21
	and x12, x11, 16
	bltu x0, x12, .LBB0_9
.LBB0_8:                                //  %if.then27
	or x10, x10, 64
	sh x10, 12 ( fp )
	add x10, x0, 9
	sw x10, 0 ( x18 )
	jal x0, .LBB0_29
.LBB0_20:                               //  %if.else
	lw x11, 48 ( fp )
	beq x0, x11, .LBB0_13
.LBB0_21:                               //  %if.then52
	add x10, fp, 64
	beq x11, x10, .LBB0_23
.LBB0_22:                               //  %if.then57
	mv x10, x18
	jal _free_r
.LBB0_23:                               //  %if.end60
	lw x10, 60 ( fp )
	sw x0, 48 ( fp )
	sw x10, 4 ( fp )
	beq x0, x10, .LBB0_13
.LBB0_24:                               //  %if.then66
	lw x10, 56 ( fp )
	mv x9, x0
	sw x10, 0 ( fp )
	jal x0, .LBB0_29
.LBB0_2:                                //  %if.then
	mv x10, x18
	jal __sinit
	lhu x10, 12 ( fp )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	beq x0, x12, .LBB0_4
	jal x0, .LBB0_5
.LBB0_9:                                //  %if.end32
	and x11, x11, 8
	beq x0, x11, .LBB0_12
.LBB0_10:                               //  %if.then37
	mv x10, x18
	mv x11, fp
	jal _fflush_r
	bltu x0, x10, .LBB0_29
.LBB0_11:                               //  %if.end40
	lh x10, 12 ( fp )
	sw x0, 24 ( fp )
	sw x0, 8 ( fp )
	and x10, x10, -9
	sh x10, 12 ( fp )
.LBB0_12:                               //  %if.end45
	or x10, x10, 4
	sh x10, 12 ( fp )
.LBB0_13:                               //  %if.end69
	lw x10, 16 ( fp )
	bltu x0, x10, .LBB0_15
.LBB0_14:                               //  %if.then73
	mv x10, x18
	mv x11, fp
	jal __smakebuf_r
.LBB0_15:                               //  %if.end74
	lh x19, 12 ( fp )
	and x10, x19, 3
	beq x0, x10, .LBB0_18
.LBB0_16:                               //  %if.then79
	lui x10, %hi( 65535 )
	add x10, x10, %lo( 65535 )
	and x20, x10, x19
	seqz x10, x0
	sh x10, 12 ( fp )
	lui x10, %hi( _global_impure_ptr )
	add x10, x10, %lo( _global_impure_ptr )
	lw x10, 0 ( x10 )
	lui x11, %hi( lflush )
	add x11, x11, %lo( lflush )
	jal _fwalk
	and x10, x19, 9
	xor x10, x10, 9
	sh x20, 12 ( fp )
	bltu x0, x10, .LBB0_18
.LBB0_17:                               //  %if.then89
	mv x10, x18
	mv x11, fp
	jal __sflush_r
.LBB0_18:                               //  %if.end92
	lw x12, 16 ( fp )
	lw x14, 32 ( fp )
	lw x11, 28 ( fp )
	lw x13, 20 ( fp )
	mv x10, x18
	sw x12, 0 ( fp )
	call.reg x14
	sw x10, 4 ( fp )
	bge x0, x10, .LBB0_25
.LBB0_19:
	mv x9, x0
	jal x0, .LBB0_29
.LBB0_25:                               //  %if.then103
	beq x0, x10, .LBB0_26
.LBB0_27:                               //  %if.else112
	add x10, x0, 64
	sw x0, 4 ( fp )
	jal x0, .LBB0_28
.LBB0_26:
	add x10, x0, 32
.LBB0_28:                               //  %if.end118
	lh x11, 12 ( fp )
	or x10, x10, x11
	sh x10, 12 ( fp )
.LBB0_29:                               //  %return
	mv x10, x9
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
	.size	__srefill_r, .Lfunc_end0-__srefill_r
	.cfi_endproc
                                        //  -- End function
	.type	lflush,@function        //  -- Begin function lflush
lflush:                                 //  @lflush
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lhu x11, 12 ( x10 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	and x11, x11, 9
	xor x11, x11, 9
	bltu x0, x11, .LBB1_1
.LBB1_2:                                //  %if.then
	jal fflush
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_1:
	mv x10, x0
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	lflush, .Lfunc_end1-lflush
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
