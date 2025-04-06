	.text
	.file	"fseeko.c"
	.globl	_fseeko_r               //  -- Begin function _fseeko_r
	.type	_fseeko_r,@function
_fseeko_r:                              //  @_fseeko_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -128
	.cfi_adjust_cfa_offset 128
	sw x9, 120 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 116 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 112 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 88 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv x19, x13
	mv x18, x12
	mv fp, x11
	mv x9, x10
	sw ra, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
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
	beq x0, x9, .LBB0_2
.LBB0_1:                                //  %land.lhs.true
	lw x10, 56 ( x9 )
	beq x0, x10, .LBB0_14
.LBB0_2:                                //  %if.end
	lhu x10, 12 ( fp )
	and x10, x10, 264
	xor x10, x10, 264
	bltu x0, x10, .LBB0_4
.LBB0_3:                                //  %if.then16
	mv x10, x9
	mv x11, fp
	jal _fflush_r
.LBB0_4:                                //  %if.end17
	lw x22, 40 ( fp )
	beq x0, x22, .LBB0_13
.LBB0_5:                                //  %if.end32
	mv x20, x0
	beq x0, x19, .LBB0_16
.LBB0_6:                                //  %if.end32
	xor x10, x19, 2
	beq x0, x10, .LBB0_16
.LBB0_7:                                //  %if.end32
	xor x10, x19, 1
	bltu x0, x10, .LBB0_22
.LBB0_8:                                //  %sw.bb
	mv x10, x9
	mv x11, fp
	jal _fflush_r
	lhu x10, 12 ( fp )
	lui x11, (4096>>12)&1048575
	and x11, x11, x10
	bltu x0, x11, .LBB0_24
.LBB0_9:                                //  %if.else
	lw x11, 28 ( fp )
	mv x12, x0
	seqz x13, x0
	mv x10, x9
	call.reg x22
	mv x20, x10
	xor x10, x20, -1
	beq x0, x10, .LBB0_38
.LBB0_10:                               //  %if.else.if.end56_crit_edge
	lhu x10, 12 ( fp )
	sll x10, x10, 16&31
	sra x10, x10, 16&31
	and x11, x10, 4
	beq x0, x11, .LBB0_25
.LBB0_11:                               //  %if.then61
	lw x10, 4 ( fp )
	sub x20, x20, x10
	lw x10, 48 ( fp )
	beq x0, x10, .LBB0_28
.LBB0_12:                               //  %if.then64
	lw x10, 60 ( fp )
	sub x20, x20, x10
	jal x0, .LBB0_28
.LBB0_13:                               //  %if.then19
	add x10, x0, 29
	jal x0, .LBB0_23
.LBB0_16:
	mv x21, x20
	lw x10, 16 ( fp )
	bltu x0, x10, .LBB0_18
.LBB0_17:                               //  %if.then99
	mv x10, x9
	mv x11, fp
	jal __smakebuf_r
.LBB0_18:                               //  %if.end100
	lh x10, 12 ( fp )
	lui x11, %hi( 2074 )
	add x11, x11, %lo( 2074 )
	and x11, x11, x10
	bltu x0, x11, .LBB0_61
.LBB0_19:                               //  %if.end106
	and x10, x10, 1024
	bltu x0, x10, .LBB0_33
.LBB0_20:                               //  %if.then112
	lui x10, %hi( __sseek )
	add x10, x10, %lo( __sseek )
	beq x22, x10, .LBB0_29
.LBB0_21:                               //  %if.then127
	lh x10, 12 ( fp )
	lui x11, %hi( 2048 )
	add x11, x11, %lo( 2048 )
	or x10, x11, x10
	sh x10, 12 ( fp )
	jal x0, .LBB0_61
.LBB0_14:                               //  %if.then
	mv x10, x9
	jal __sinit
	lhu x10, 12 ( fp )
	and x10, x10, 264
	xor x10, x10, 264
	beq x0, x10, .LBB0_3
	jal x0, .LBB0_4
.LBB0_22:                               //  %sw.default
	add x10, x0, 22
.LBB0_23:                               //  %cleanup
	sw x10, 0 ( x9 )
	add x20, x0, -1
	jal x0, .LBB0_71
.LBB0_24:                               //  %if.then38
	lw x20, 80 ( fp )
	sll x10, x10, 16&31
	sra x10, x10, 16&31
	and x11, x10, 4
	bltu x0, x11, .LBB0_11
.LBB0_25:                               //  %if.else67
	and x10, x10, 8
	beq x0, x10, .LBB0_28
.LBB0_26:                               //  %land.lhs.true72
	lw x10, 0 ( fp )
	beq x0, x10, .LBB0_28
.LBB0_27:                               //  %if.then75
	lw x11, 16 ( fp )
	add x10, x10, x20
	sub x20, x10, x11
.LBB0_28:                               //  %if.end79
	add x18, x18, x20
	seqz x21, x0
	mv x19, x0
	lw x10, 16 ( fp )
	bltu x0, x10, .LBB0_18
	jal x0, .LBB0_17
.LBB0_29:                               //  %lor.lhs.false
	lh x11, 14 ( fp )
	blt x11, x0, .LBB0_21
.LBB0_30:                               //  %lor.lhs.false118
	add x12, sp, 16
	mv x10, x9
	jal _fstat_r
	bltu x0, x10, .LBB0_21
.LBB0_31:                               //  %lor.lhs.false123
	lw x10, 20 ( sp )
	lui x11, (61440>>12)&1048575
	and x10, x11, x10
	lui x11, (32768>>12)&1048575
	bne x10, x11, .LBB0_21
.LBB0_32:                               //  %if.end131
	add x10, x0, 1024
	sw x10, 76 ( fp )
	lh x10, 12 ( fp )
	or x10, x10, 1024
	sh x10, 12 ( fp )
.LBB0_33:                               //  %if.end136
	mv x23, x18
	beq x0, x19, .LBB0_36
.LBB0_34:                               //  %if.else140
	lh x11, 14 ( fp )
	add x12, sp, 16
	mv x10, x9
	jal _fstat_r
	bltu x0, x10, .LBB0_61
.LBB0_35:                               //  %if.end146
	lw x10, 32 ( sp )
	add x23, x18, x10
.LBB0_36:                               //  %if.end148
	beq x0, x21, .LBB0_39
.LBB0_37:                               //  %if.end175
	lw x11, 48 ( fp )
	add x24, fp, 48
	bltu x0, x11, .LBB0_44
	jal x0, .LBB0_46
.LBB0_38:
	add x20, x0, -1
	jal x0, .LBB0_71
.LBB0_39:                               //  %if.then150
	lbu x10, 13 ( fp )
	and x10, x10, 16
	bltu x0, x10, .LBB0_41
.LBB0_40:                               //  %if.else157
	lw x11, 28 ( fp )
	mv x12, x0
	seqz x13, x0
	mv x10, x9
	call.reg x22
	xor x11, x10, -1
	bltu x0, x11, .LBB0_42
	jal x0, .LBB0_61
.LBB0_41:                               //  %if.then155
	lw x10, 80 ( fp )
.LBB0_42:                               //  %if.end164
	lw x11, 4 ( fp )
	sub x20, x10, x11
	lw x11, 48 ( fp )
	beq x0, x11, .LBB0_45
.LBB0_43:                               //  %if.end175.thread548
	lw x10, 60 ( fp )
	add x24, fp, 48
	sub x20, x20, x10
.LBB0_44:                               //  %if.then180
	lw x10, 4 ( fp )
	lw x12, 16 ( fp )
	lw x15, 56 ( fp )
	add x13, fp, 60
	add x14, x20, x10
	mv x10, x0
	sub x15, x15, x12
	sub x14, x14, x15
	bge x23, x14, .LBB0_47
	jal x0, .LBB0_53
.LBB0_45:                               //  %if.end175.thread
	add x24, fp, 48
.LBB0_46:                               //  %if.else191
	lw x12, 16 ( fp )
	lw x14, 0 ( fp )
	mv x11, x0
	seqz x10, x0
	add x13, fp, 4
	sub x15, x14, x12
	sub x14, x20, x15
	blt x23, x14, .LBB0_53
.LBB0_47:                               //  %if.end201
	lw x13, 0 ( x13 )
	add x13, x13, x15
	add x15, x14, x13
	bgeu x23, x15, .LBB0_53
.LBB0_48:                               //  %if.then208
	sub x14, x23, x14
	sub x13, x13, x14
	add x12, x14, x12
	sw x13, 4 ( fp )
	sw x12, 0 ( fp )
	bltu x0, x10, .LBB0_52
.LBB0_49:                               //  %if.then219
	add x10, fp, 64
	beq x11, x10, .LBB0_51
.LBB0_50:                               //  %if.then224
	mv x10, x9
	jal _free_r
.LBB0_51:                               //  %if.end227
	sw x0, 0 ( x24 )
.LBB0_52:                               //  %if.end230
	lhu x10, 12 ( fp )
	lui x11, %hi( 65503 )
	add x11, x11, %lo( 65503 )
	jal x0, .LBB0_68
.LBB0_53:                               //  %if.end248
	lw x10, 76 ( fp )
	lw x11, 28 ( fp )
	mv x20, x0
	mv x13, x20
	sub x10, x0, x10
	and x21, x10, x23
	mv x10, x9
	mv x12, x21
	call.reg x22
	xor x10, x10, -1
	beq x0, x10, .LBB0_61
.LBB0_54:                               //  %if.end257
	lw x10, 16 ( fp )
	lw x11, 48 ( fp )
	sw x0, 4 ( fp )
	sw x10, 0 ( fp )
	beq x0, x11, .LBB0_58
.LBB0_55:                               //  %if.then266
	add x10, fp, 64
	beq x11, x10, .LBB0_57
.LBB0_56:                               //  %if.then273
	mv x10, x9
	jal _free_r
.LBB0_57:                               //  %if.end276
	sw x0, 0 ( x24 )
.LBB0_58:                               //  %if.end279
	lhu x10, 12 ( fp )
	lui x11, %hi( 65503 )
	add x11, x11, %lo( 65503 )
	sub x21, x23, x21
	and x10, x11, x10
	sh x10, 12 ( fp )
	beq x0, x21, .LBB0_73
.LBB0_59:                               //  %if.then286
	mv x10, x9
	mv x11, fp
	jal __srefill_r
	bltu x0, x10, .LBB0_61
.LBB0_60:                               //  %lor.lhs.false289
	lw x10, 4 ( fp )
	bgeu x10, x21, .LBB0_72
.LBB0_61:                               //  %dumb
	mv x10, x9
	mv x11, fp
	jal _fflush_r
	add x20, x0, -1
	bltu x0, x10, .LBB0_71
.LBB0_62:                               //  %lor.lhs.false316
	lw x11, 28 ( fp )
	mv x10, x9
	mv x12, x18
	mv x13, x19
	call.reg x22
	xor x10, x10, -1
	beq x0, x10, .LBB0_71
.LBB0_63:                               //  %if.end334
	lw x11, 48 ( fp )
	beq x0, x11, .LBB0_67
.LBB0_64:                               //  %if.then339
	add x10, fp, 64
	beq x11, x10, .LBB0_66
.LBB0_65:                               //  %if.then346
	mv x10, x9
	jal _free_r
.LBB0_66:                               //  %if.end349
	sw x0, 48 ( fp )
.LBB0_67:                               //  %if.end352
	lw x10, 16 ( fp )
	lui x11, %hi( 63455 )
	add x11, x11, %lo( 63455 )
	sw x0, 4 ( fp )
	sw x10, 0 ( fp )
	lhu x10, 12 ( fp )
.LBB0_68:                               //  %cleanup
	and x10, x11, x10
	sh x10, 12 ( fp )
	add x10, fp, 92
	mv x20, x0
.LBB0_70:                               //  %cleanup
	add x12, x0, 8
	mv x11, x20
	jal memset
.LBB0_71:                               //  %cleanup
	mv x10, x20
	lw fp, 88 ( sp )                //  4-byte Folded Reload
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
.LBB0_72:                               //  %if.end294
	sub x10, x10, x21
	sw x10, 4 ( fp )
	lw x10, 0 ( fp )
	add x10, x21, x10
	sw x10, 0 ( fp )
.LBB0_73:                               //  %if.end299
	add x10, fp, 92
	jal x0, .LBB0_70
.Lfunc_end0:
	.size	_fseeko_r, .Lfunc_end0-_fseeko_r
	.cfi_endproc
                                        //  -- End function
	.globl	fseeko                  //  -- Begin function fseeko
	.type	fseeko,@function
fseeko:                                 //  @fseeko
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x12
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _fseeko_r
.Lfunc_end1:
	.size	fseeko, .Lfunc_end1-fseeko
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
