	.text
	.file	"ldtoa.c"
	.globl	_ldtoa_r                //  -- Begin function _ldtoa_r
	.type	_ldtoa_r,@function
_ldtoa_r:                               //  @_ldtoa_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -464
	.cfi_adjust_cfa_offset 464
	sw x21, 440 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	mv x21, x10
	sw x11, 100 ( sp )
	lw x11, 64 ( x21 )
	add x10, sp, 100
	sw x9, 456 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 452 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x22, 436 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 432 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw fp, 412 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x18, x0, 144
	mv x22, x17
	mv x9, x16
	mv x23, x15
	sw x13, 8 ( x10 )
	sw x12, 4 ( x10 )
	add x10, x0, -1
	seqz fp, x0
	sw ra, 460 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 448 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 444 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x24, 428 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 424 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 420 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 416 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x18, 180 ( sp )
	sw x10, 176 ( sp )
	sw x14, 112 ( sp )
	beq x0, x11, .LBB0_2
.LBB0_1:                                //  %if.then
	lw x10, 68 ( x21 )
	sll x12, fp, x10
	sw x10, 4 ( x11 )
	mv x10, x21
	sw x12, 8 ( x11 )
	jal _Bfree
	sw x0, 64 ( x21 )
.LBB0_2:                                //  %if.end
	add x20, sp, 256
	add x10, sp, 100
	mv x11, x20
	jal e113toe
	lhu x11, 274 ( sp )
	lui x12, %hi( 32767 )
	add x13, x12, %lo( 32767 )
	mv x27, x0
	sll x10, x11, 16&31
	sra x10, x10, 16&31
	and x19, x13, x11
	bne x19, x13, .LBB0_13
.LBB0_3:                                //  %for.body.preheader.i.i
	lhu x11, 256 ( sp )
	bltu x0, x11, .LBB0_14
.LBB0_4:                                //  %for.inc.i.i
	lhu x11, 258 ( sp )
	bltu x0, x11, .LBB0_14
.LBB0_5:                                //  %for.inc.1.i.i
	lhu x11, 260 ( sp )
	bltu x0, x11, .LBB0_14
.LBB0_6:                                //  %for.inc.2.i.i
	lhu x11, 262 ( sp )
	bltu x0, x11, .LBB0_14
.LBB0_7:                                //  %for.inc.3.i.i
	lhu x11, 264 ( sp )
	bltu x0, x11, .LBB0_14
.LBB0_8:                                //  %for.inc.4.i.i
	lhu x11, 266 ( sp )
	bltu x0, x11, .LBB0_14
.LBB0_9:                                //  %for.inc.5.i.i
	lhu x11, 268 ( sp )
	bltu x0, x11, .LBB0_14
.LBB0_10:                               //  %for.inc.6.i.i
	lhu x11, 270 ( sp )
	bltu x0, x11, .LBB0_14
.LBB0_11:                               //  %eisnan.exit.i
	bge x10, x0, .LBB0_14
.LBB0_12:                               //  %eisnan.exit.i
	lhu x11, 272 ( sp )
	beq x0, x11, .LBB0_15
	jal x0, .LBB0_14
.LBB0_13:                               //  %eisneg.exit
	blt x10, x0, .LBB0_15
.LBB0_14:                               //  %eisneg.exit.thread
	mv fp, x0
.LBB0_15:
	lw x11, 464 ( sp )
	xor x25, x23, 3
	beq x23, x27, .LBB0_17
.LBB0_16:
	snez x12, x25
	sub x26, x9, x12
	sw fp, 0 ( x11 )
	add x11, x0, 42
	bge x26, x11, .LBB0_18
	jal x0, .LBB0_19
.LBB0_17:
	add x26, x0, 20
	sw fp, 0 ( x11 )
	add x11, x0, 42
	blt x26, x11, .LBB0_19
.LBB0_18:
	mv x26, x11
.LBB0_19:
	lhu x24, 256 ( sp )
	lw fp, 180 ( sp )
	sw x13, 88 ( sp )               //  4-byte Folded Spill
	bne x19, x13, .LBB0_30
.LBB0_20:                               //  %for.body.preheader.i.i246
	bltu x0, x24, .LBB0_29
.LBB0_21:                               //  %for.inc.i.i249
	lhu x11, 258 ( sp )
	bltu x0, x11, .LBB0_29
.LBB0_22:                               //  %for.inc.1.i.i252
	lhu x11, 260 ( sp )
	bltu x0, x11, .LBB0_29
.LBB0_23:                               //  %for.inc.2.i.i255
	lhu x11, 262 ( sp )
	bltu x0, x11, .LBB0_29
.LBB0_24:                               //  %for.inc.3.i.i258
	lhu x11, 264 ( sp )
	bltu x0, x11, .LBB0_29
.LBB0_25:                               //  %for.inc.4.i.i261
	lhu x11, 266 ( sp )
	bltu x0, x11, .LBB0_29
.LBB0_26:                               //  %for.inc.5.i.i264
	lhu x11, 268 ( sp )
	bltu x0, x11, .LBB0_29
.LBB0_27:                               //  %for.inc.6.i.i267
	lhu x11, 270 ( sp )
	bltu x0, x11, .LBB0_29
.LBB0_28:                               //  %eisnan.exit.i270
	lhu x11, 272 ( sp )
	bltu x0, x11, .LBB0_29
.LBB0_253:                              //  %eisnan.exit.i270
	jal x0, .LBB0_251
.LBB0_29:                               //  %if.then.i
	add x10, sp, 118
	sw x10, 0 ( sp )
	lui x10, %hi( .str.2 )
	add x10, x10, %lo( .str.2 )
	sw x10, 4 ( sp )
	jal sprintf
	lui x10, %hi( 9999 )
	add x20, x10, %lo( 9999 )
	jal x0, .LBB0_189
.LBB0_30:                               //  %entry.if.end_crit_edge.i
	mv x14, x18
	sw fp, 60 ( sp )                //  4-byte Folded Spill
	sw x26, 64 ( sp )               //  4-byte Folded Spill
	sw x25, 68 ( sp )               //  4-byte Folded Spill
	sw x23, 72 ( sp )               //  4-byte Folded Spill
	sw x22, 76 ( sp )               //  4-byte Folded Spill
	sw x21, 84 ( sp )               //  4-byte Folded Spill
	lhu x27, 272 ( sp )
	lhu x18, 14 ( x20 )
	lhu fp, 12 ( x20 )
	lhu x25, 10 ( x20 )
	lhu x26, 8 ( x20 )
	lhu x22, 6 ( x20 )
	lhu x21, 4 ( x20 )
	lhu x23, 2 ( x20 )
.LBB0_31:                               //  %if.end.i273
	sw x9, 80 ( sp )                //  4-byte Folded Spill
	add x11, sp, 360
	add x12, sp, 334
	sh x27, 16 ( x11 )
	sh x18, 14 ( x11 )
	sh fp, 12 ( x11 )
	sh x25, 10 ( x11 )
	sh x26, 8 ( x11 )
	sh x22, 6 ( x11 )
	sh x21, 4 ( x11 )
	sh x23, 2 ( x11 )
	lui x11, (32768>>12)&1048575
	mv x9, x11
	sh x11, 16 ( x12 )
	lui x11, %hi( 16383 )
	add x11, x11, %lo( 16383 )
	sra x20, x10, 15&31
	sh x24, 360 ( sp )
	sw x14, 180 ( sp )
	sw x11, 52 ( sp )               //  4-byte Folded Spill
	sh x11, 352 ( sp )
	sh x0, 14 ( x12 )
	sh x0, 12 ( x12 )
	sh x0, 10 ( x12 )
	sh x0, 8 ( x12 )
	sh x0, 6 ( x12 )
	sh x0, 4 ( x12 )
	sh x0, 2 ( x12 )
	sh x19, 378 ( sp )
	sh x0, 334 ( sp )
	beq x0, x19, .LBB0_36
.LBB0_33:                               //  %tnzro.i
	bne x19, x13, .LBB0_38
.LBB0_34:                               //  %if.then30.i
	lw x21, 84 ( sp )               //  4-byte Folded Reload
	lw x22, 76 ( sp )               //  4-byte Folded Reload
	lw x23, 72 ( sp )               //  4-byte Folded Reload
	lw x25, 68 ( sp )               //  4-byte Folded Reload
	lw x26, 64 ( sp )               //  4-byte Folded Reload
	lw fp, 60 ( sp )                //  4-byte Folded Reload
	mv x27, x0
	add x10, sp, 118
	beq x0, x20, .LBB0_51
.LBB0_35:                               //  %if.then32.i
	sw x10, 0 ( sp )
	lui x10, %hi( .str.3 )
	add x10, x10, %lo( .str.3 )
	jal x0, .LBB0_52
.LBB0_36:                               //  %for.body.preheader.i274
	or x10, x24, x27
	or x10, x18, x10
	or x10, fp, x10
	or x10, x25, x10
	or x10, x26, x10
	or x10, x22, x10
	or x10, x21, x10
	lui x11, %hi( 65535 )
	or x10, x23, x10
	add x11, x11, %lo( 65535 )
	and x10, x11, x10
	bltu x0, x10, .LBB0_40
.LBB0_37:
	sw x20, 48 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_50
.LBB0_38:                               //  %land.lhs.true.i
	sll x10, x27, 16&31
	sra x10, x10, 16&31
	blt x10, x0, .LBB0_40
.LBB0_39:                               //  %if.then47.i
	add x10, sp, 118
	sw x10, 0 ( sp )
	lui x10, %hi( .str.5 )
	add x10, x10, %lo( .str.5 )
	sw x10, 4 ( sp )
	jal sprintf
	lui x10, %hi( 9999 )
	lw x21, 84 ( sp )               //  4-byte Folded Reload
	lw x9, 80 ( sp )                //  4-byte Folded Reload
	lw x22, 76 ( sp )               //  4-byte Folded Reload
	lw x23, 72 ( sp )               //  4-byte Folded Reload
	lw x25, 68 ( sp )               //  4-byte Folded Reload
	lw x26, 64 ( sp )               //  4-byte Folded Reload
	lw fp, 60 ( sp )                //  4-byte Folded Reload
	add x20, x10, %lo( 9999 )
	mv x27, x0
	jal x0, .LBB0_189
.LBB0_40:                               //  %if.end49.i
	lui x10, %hi( eone )
	add x10, x10, %lo( eone )
	add x11, sp, 360
	sw x10, 96 ( sp )               //  4-byte Folded Spill
	jal ecmp
	sw x20, 48 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB0_50
.LBB0_41:                               //  %if.end55.i
	blt x10, x0, .LBB0_53
.LBB0_42:                               //  %if.else123.i
	add x30, sp, 282
	beq x0, x19, .LBB0_121
.LBB0_43:                               //  %emovi.exit.i
	lui x10, %hi( 65535 )
	lui x11, %hi( 65534 )
	lui x14, %hi( 16382 )
	lui x15, %hi( -32768 )
	mv x20, x0
	add x10, x10, %lo( 65535 )
	add x11, x11, %lo( 65534 )
	lui x12, (16384>>12)&1048575
	lui x13, (65536>>12)&1048575
	add x14, x14, %lo( 16382 )
	add x15, x15, %lo( -32768 )
	sh x24, 22 ( x30 )
	sh x23, 20 ( x30 )
	sh x21, 18 ( x30 )
	sh x22, 16 ( x30 )
	sh x26, 14 ( x30 )
	sh x25, 12 ( x30 )
	sh fp, 10 ( x30 )
	sh x18, 8 ( x30 )
	sh x27, 6 ( x30 )
	sh x19, 2 ( x30 )
	sh x0, 4 ( x30 )
	sh x0, 306 ( sp )
	sh x0, 282 ( sp )
	sh x0, 308 ( sp )
.LBB0_44:                               //  %if.end153.i
                                        //  =>This Inner Loop Header: Depth=1
	and x16, x10, x23
	srl x17, x16, 1&31
	sll x5, x21, 15&31
	or x5, x17, x5
	and x6, x10, x21
	and x5, x11, x5
	srl x7, x6, 1&31
	srl x5, x5, 1&31
	sll x28, x7, 15&31
	or x5, x28, x5
	and x5, x10, x5
	and x29, x10, x24
	add x5, x16, x5
	sll x16, x17, 15&31
	sll x28, x23, 15&31
	srl x17, x29, 1&31
	or x28, x17, x28
	and x28, x11, x28
	srl x28, x28, 1&31
	or x16, x16, x28
	and x16, x10, x16
	sll x28, x22, 15&31
	add x16, x29, x16
	or x7, x7, x28
	srl x28, x16, 16&31
	add x23, x28, x5
	and x5, x11, x7
	and x7, x10, x22
	srl x28, x7, 1&31
	srl x5, x5, 1&31
	sll x29, x28, 15&31
	or x5, x29, x5
	and x5, x10, x5
	add x5, x6, x5
	sll x6, x26, 15&31
	or x6, x28, x6
	srl x28, x23, 16&31
	and x28, x28, 1
	add x21, x28, x5
	and x5, x11, x6
	and x6, x10, x26
	srl x28, x6, 1&31
	srl x5, x5, 1&31
	sll x29, x28, 15&31
	or x5, x29, x5
	and x5, x10, x5
	add x5, x7, x5
	sll x7, x25, 15&31
	or x7, x28, x7
	srl x28, x21, 16&31
	and x28, x28, 1
	add x22, x28, x5
	and x5, x11, x7
	and x7, x10, x25
	srl x28, x7, 1&31
	srl x5, x5, 1&31
	sll x29, x28, 15&31
	or x5, x29, x5
	and x5, x10, x5
	add x5, x6, x5
	sll x6, fp, 15&31
	or x6, x28, x6
	srl x28, x22, 16&31
	and x28, x28, 1
	add x26, x28, x5
	and x5, x11, x6
	and x6, x10, fp
	srl x28, x6, 1&31
	srl x5, x5, 1&31
	sll x29, x28, 15&31
	or x5, x29, x5
	and x5, x10, x5
	add x5, x7, x5
	sll x7, x18, 15&31
	or x7, x28, x7
	srl x28, x26, 16&31
	and x28, x28, 1
	add x25, x28, x5
	and x5, x11, x7
	and x7, x10, x18
	srl x28, x7, 1&31
	srl x5, x5, 1&31
	sll x29, x28, 15&31
	or x5, x29, x5
	and x5, x10, x5
	add x5, x6, x5
	srl x6, x25, 16&31
	and x6, x6, 1
	add fp, x6, x5
	sll x6, x27, 15&31
	or x6, x28, x6
	sll x5, x27, 14&31
	and x6, x11, x6
	and x5, x9, x5
	srl x6, x6, 1&31
	or x5, x5, x6
	srl x6, fp, 16&31
	add x5, x7, x5
	and x6, x6, 1
	add x18, x6, x5
	and x5, x10, x27
	srl x6, x5, 2&31
	add x5, x5, x6
	srl x6, x18, 16&31
	and x6, x6, 1
	add x27, x6, x5
	sll x5, x24, 14&31
	and x5, x12, x5
	sll x17, x17, 15&31
	or x17, x17, x5
	and x5, x13, x27
	bltu x0, x5, .LBB0_46
.LBB0_45:                               //    in Loop: Header=BB0_44 Depth=1
	add x19, x19, 3
	mv x24, x16
	and x16, x10, x17
	beq x0, x16, .LBB0_47
	jal x0, .LBB0_125
.LBB0_46:                               //  %while.body169.i.preheader
                                        //    in Loop: Header=BB0_44 Depth=1
	and x17, x10, x17
	sll x5, x16, 15&31
	and x16, x11, x16
	srl x17, x17, 1&31
	or x17, x17, x5
	srl x16, x16, 1&31
	sll x5, x23, 15&31
	or x24, x16, x5
	and x16, x11, x23
	srl x16, x16, 1&31
	sll x5, x21, 15&31
	or x23, x16, x5
	and x16, x11, x21
	srl x16, x16, 1&31
	sll x5, x22, 15&31
	or x21, x16, x5
	and x16, x11, x22
	srl x16, x16, 1&31
	sll x5, x26, 15&31
	or x22, x16, x5
	and x16, x11, x26
	srl x16, x16, 1&31
	sll x5, x25, 15&31
	or x26, x16, x5
	and x16, x11, x25
	srl x16, x16, 1&31
	sll x5, fp, 15&31
	or x25, x16, x5
	and x16, x11, fp
	and x5, x11, x18
	srl x16, x16, 1&31
	sll x6, x18, 15&31
	or fp, x16, x6
	srl x16, x5, 1&31
	sll x5, x27, 15&31
	or x18, x16, x5
	srl x16, x27, 1&31
	or x27, x15, x16
	add x19, x19, 4
	and x16, x10, x17
	bltu x0, x16, .LBB0_125
.LBB0_47:                               //  %while.end175.i
                                        //    in Loop: Header=BB0_44 Depth=1
	and x16, x10, x19
	bltu x14, x16, .LBB0_125
.LBB0_48:                               //  %if.end188.i
                                        //    in Loop: Header=BB0_44 Depth=1
	add x20, x20, -1
	xor x16, x20, -43
	sh x24, 22 ( x30 )
	sh x23, 20 ( x30 )
	sh x21, 18 ( x30 )
	sh x22, 16 ( x30 )
	sh x26, 14 ( x30 )
	sh x25, 12 ( x30 )
	sh fp, 10 ( x30 )
	sh x18, 8 ( x30 )
	sh x27, 6 ( x30 )
	sh x19, 2 ( x30 )
	sh x0, 4 ( x30 )
	sh x0, 306 ( sp )
	bltu x0, x16, .LBB0_44
.LBB0_49:                               //  %for.end194.thread.i
	add x10, sp, 308
	sh x24, 22 ( x10 )
	sh x23, 20 ( x10 )
	sh x21, 18 ( x10 )
	sh x22, 16 ( x10 )
	sh x26, 14 ( x10 )
	sh x25, 12 ( x10 )
	sh fp, 10 ( x10 )
	sh x18, 8 ( x10 )
	sh x19, 2 ( x10 )
	sh x0, 24 ( x10 )
	sh x0, 4 ( x10 )
	sh x27, 314 ( sp )
	sh x19, 378 ( sp )
	jal x0, .LBB0_129
.LBB0_50:
	mv x20, x0
	add x18, sp, 334
	jal x0, .LBB0_140
.LBB0_51:                               //  %if.else34.i
	sw x10, 0 ( sp )
	lui x10, %hi( .str.4 )
	add x10, x10, %lo( .str.4 )
.LBB0_52:                               //  %etoasc.exit
	sw x10, 4 ( sp )
	jal sprintf
	lui x10, %hi( 9999 )
	lw x9, 80 ( sp )                //  4-byte Folded Reload
	add x20, x10, %lo( 9999 )
	jal x0, .LBB0_189
.LBB0_53:                               //  %if.then58.i
	add x10, sp, 308
	sh x27, 16 ( x10 )
	sh x18, 14 ( x10 )
	sh x22, 6 ( x10 )
	sh x23, 2 ( x10 )
	sh fp, 12 ( x10 )
	sh x25, 10 ( x10 )
	sh x26, 8 ( x10 )
	sh x21, 4 ( x10 )
	lui x10, %hi( 16526 )
	add x10, x10, %lo( 16526 )
	sw x10, 44 ( sp )               //  4-byte Folded Spill
	sh x10, 326 ( sp )
	lui x10, %hi( etens )
	add x10, x10, %lo( etens )
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	add x25, x10, 160
	lui x10, %hi( 32767 )
	add x26, x10, %lo( 32767 )
	lui x10, %hi( 16382 )
	add x10, x10, %lo( 16382 )
	sw x10, 96 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 65535 )
	add x10, x10, %lo( 65535 )
	sw x10, 92 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( -16383 )
	add x10, x10, %lo( -16383 )
	sw x10, 28 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( -32768 )
	add x10, x10, %lo( -32768 )
	sw x10, 32 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 16525 )
	add x10, x10, %lo( 16525 )
	sw x10, 56 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 16510 )
	lw x23, 52 ( sp )               //  4-byte Folded Reload
	add x10, x10, %lo( 16510 )
	sw x10, 40 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( bmask )
	sh x24, 308 ( sp )
	add x10, x10, %lo( bmask )
	add x24, x0, 16
	mv x20, x0
	add x27, sp, 282
	add x7, sp, 118
	add x22, sp, 386
	add x19, x0, 15
	add x18, sp, 334
	mv x28, x9
	sw x10, 36 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB0_55
.LBB0_54:                               //  %noint.i
                                        //    in Loop: Header=BB0_55 Depth=1
	srl x10, x24, 1&31
	and x24, x26, x10
	add x25, x25, 20
	beq x0, x24, .LBB0_115
.LBB0_55:                               //  %do.body.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_61 Depth 2
	mv x10, x25
	add x11, sp, 308
	mv x12, x18
	add x13, sp, 176
	mv x9, x28
	mv x21, x7
	jal ediv
	lhu x14, 352 ( sp )
	lhu x13, 16 ( x18 )
	lhu x17, 14 ( x18 )
	lhu x5, 12 ( x18 )
	lhu x7, 10 ( x18 )
	lhu x29, 8 ( x18 )
	lhu x31, 6 ( x18 )
	lhu x4, 4 ( x18 )
	lhu x11, 2 ( x18 )
	lhu x12, 334 ( sp )
	lw x10, 96 ( sp )               //  4-byte Folded Reload
	and x15, x26, x14
	bltu x10, x15, .LBB0_58
.LBB0_56:                               //  %if.then.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	sh x0, 16 ( x27 )
	sh x0, 14 ( x27 )
	sh x0, 12 ( x27 )
	sh x0, 10 ( x27 )
	sh x0, 8 ( x27 )
	sh x0, 6 ( x27 )
	sh x0, 4 ( x27 )
	sh x0, 2 ( x27 )
	sh x0, 300 ( sp )
	sh x0, 282 ( sp )
	mv x10, x0
	mv x28, x9
	and x14, x28, x14
	bltu x0, x14, .LBB0_65
.LBB0_57:                               //    in Loop: Header=BB0_55 Depth=1
	mv x7, x21
	bne x12, x10, .LBB0_54
.LBB0_106:                              //  %for.cond66.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x11, 284 ( sp )
	lhu x12, 336 ( sp )
	bne x12, x11, .LBB0_54
.LBB0_107:                              //  %for.cond66.1.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x12, 338 ( sp )
	lhu x13, 286 ( sp )
	bne x12, x13, .LBB0_54
.LBB0_108:                              //  %for.cond66.2.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x13, 340 ( sp )
	lhu x14, 288 ( sp )
	bne x13, x14, .LBB0_54
.LBB0_109:                              //  %for.cond66.3.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x14, 342 ( sp )
	lhu x15, 290 ( sp )
	bne x14, x15, .LBB0_54
.LBB0_110:                              //  %for.cond66.4.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x15, 344 ( sp )
	lhu x16, 292 ( sp )
	bne x15, x16, .LBB0_54
.LBB0_111:                              //  %for.cond66.5.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x16, 346 ( sp )
	lhu x17, 294 ( sp )
	bne x16, x17, .LBB0_54
.LBB0_112:                              //  %for.cond66.6.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x17, 348 ( sp )
	lhu x5, 296 ( sp )
	bne x17, x5, .LBB0_54
.LBB0_113:                              //  %for.cond66.7.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x5, 350 ( sp )
	lhu x6, 298 ( sp )
	bne x5, x6, .LBB0_54
.LBB0_114:                              //  %for.cond66.8.i
                                        //    in Loop: Header=BB0_55 Depth=1
	sh x10, 308 ( sp )
	lh x10, 352 ( sp )
	add x6, sp, 308
	sh x5, 16 ( x6 )
	sh x17, 14 ( x6 )
	sh x10, 326 ( sp )
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	sh x16, 12 ( x6 )
	sh x15, 10 ( x6 )
	sh x14, 8 ( x6 )
	and x10, x10, x24
	sh x13, 6 ( x6 )
	sh x12, 4 ( x6 )
	sh x11, 2 ( x6 )
	add x20, x10, x20
	jal x0, .LBB0_54
.LBB0_58:                               //  %if.end.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	sh x13, 16 ( x27 )
	sh x17, 14 ( x27 )
	sh x5, 12 ( x27 )
	sh x7, 10 ( x27 )
	sh x29, 8 ( x27 )
	sh x31, 6 ( x27 )
	sh x4, 4 ( x27 )
	sh x11, 2 ( x27 )
	sh x14, 300 ( sp )
	sh x12, 282 ( sp )
	bltu x10, x15, .LBB0_74
.LBB0_59:                               //  %if.end7.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lw x10, 44 ( sp )               //  4-byte Folded Reload
	lw x16, 40 ( sp )               //  4-byte Folded Reload
	mv x28, x9
	sub x10, x10, x15
	bltu x16, x15, .LBB0_63
.LBB0_60:                               //  %while.body.i.i.preheader
                                        //    in Loop: Header=BB0_55 Depth=1
	mv x15, x27
.LBB0_61:                               //  %while.body.i.i
                                        //    Parent Loop BB0_55 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sh x0, 0 ( x15 )
	add x15, x15, 2
	add x10, x10, -16
	blt x19, x10, .LBB0_61
.LBB0_62:                               //  %while.end.loopexit.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x16, 0 ( x15 )
	jal x0, .LBB0_64
.LBB0_63:                               //    in Loop: Header=BB0_55 Depth=1
	mv x16, x12
	mv x15, x27
.LBB0_64:                               //  %while.end.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lw x6, 36 ( sp )                //  4-byte Folded Reload
	sll x10, x10, 1&31
	add x10, x10, x6
	lhu x10, 0 ( x10 )
	and x10, x16, x10
	sh x10, 0 ( x15 )
	lhu x10, 282 ( sp )
	and x14, x28, x14
	beq x0, x14, .LBB0_57
.LBB0_65:                               //  %for.body.preheader.i871.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lh x15, 298 ( sp )
	lhu x14, 14 ( x27 )
	lhu x16, 12 ( x27 )
	lhu x6, 10 ( x27 )
	lhu x28, 8 ( x27 )
	lhu x30, 6 ( x27 )
	lhu x3, 4 ( x27 )
	lhu fp, 2 ( x27 )
	bne x12, x10, .LBB0_75
.LBB0_66:                               //  %for.body.preheader.i871.i
                                        //    in Loop: Header=BB0_55 Depth=1
	bne x11, fp, .LBB0_75
.LBB0_67:                               //  %for.body.preheader.i871.i
                                        //    in Loop: Header=BB0_55 Depth=1
	bne x4, x3, .LBB0_75
.LBB0_68:                               //  %for.body.preheader.i871.i
                                        //    in Loop: Header=BB0_55 Depth=1
	bne x31, x30, .LBB0_75
.LBB0_69:                               //  %for.body.preheader.i871.i
                                        //    in Loop: Header=BB0_55 Depth=1
	bne x29, x28, .LBB0_75
.LBB0_70:                               //  %for.body.preheader.i871.i
                                        //    in Loop: Header=BB0_55 Depth=1
	bne x7, x6, .LBB0_75
.LBB0_71:                               //  %for.body.preheader.i871.i
                                        //    in Loop: Header=BB0_55 Depth=1
	bne x5, x16, .LBB0_75
.LBB0_72:                               //  %for.body.preheader.i871.i
                                        //    in Loop: Header=BB0_55 Depth=1
	bne x17, x14, .LBB0_75
.LBB0_73:                               //  %for.body.preheader.i871.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lw x17, 92 ( sp )               //  4-byte Folded Reload
	and x17, x17, x15
	bne x13, x17, .LBB0_75
.LBB0_74:                               //    in Loop: Header=BB0_55 Depth=1
	mv x10, x12
	mv x7, x21
	mv x28, x9
	lhu x12, 338 ( sp )
	lhu x13, 286 ( sp )
	bne x12, x13, .LBB0_54
	jal x0, .LBB0_108
.LBB0_75:                               //  %if.then29.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x11, 300 ( sp )
	and x13, x26, x11
	bne x13, x26, .LBB0_78
.LBB0_76:                               //  %for.body.preheader.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	or x11, x10, fp
	or x11, x3, x11
	or x11, x30, x11
	or x11, x28, x11
	or x11, x6, x11
	or x11, x16, x11
	or x11, x14, x11
	lui x13, %hi( 65535 )
	or x11, x15, x11
	add x13, x13, %lo( 65535 )
	and x11, x13, x11
	mv x7, x21
	mv x28, x9
	beq x0, x11, .LBB0_77
.LBB0_105:                              //  %efloor.exit.i
                                        //    in Loop: Header=BB0_55 Depth=1
	bne x12, x10, .LBB0_54
	jal x0, .LBB0_106
.LBB0_78:                               //  %emovi.exit.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	sll x11, x11, 16&31
	sra x12, x11, 31&31
	lw x11, 92 ( sp )               //  4-byte Folded Reload
	mv x7, x21
	mv x5, x9
	mv x17, x23
	sh x11, 118 ( sp )
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	sh x5, 6 ( x7 )
	sh x10, 22 ( x22 )
	sh fp, 20 ( x22 )
	sh x3, 18 ( x22 )
	sh x30, 16 ( x22 )
	sh x28, 14 ( x22 )
	sh x6, 12 ( x22 )
	sh x16, 10 ( x22 )
	sh x14, 8 ( x22 )
	sh x15, 6 ( x22 )
	sh x17, 2 ( x7 )
	sh x0, 22 ( x7 )
	sh x0, 20 ( x7 )
	sh x0, 18 ( x7 )
	sh x0, 16 ( x7 )
	sh x0, 14 ( x7 )
	sh x0, 12 ( x7 )
	sh x0, 10 ( x7 )
	sh x0, 8 ( x7 )
	sh x0, 4 ( x7 )
	sh x13, 2 ( x22 )
	sh x0, 4 ( x22 )
	sh x12, 386 ( sp )
	sh x0, 142 ( sp )
	sh x0, 410 ( sp )
	bltu x11, x13, .LBB0_80
.LBB0_79:                               //  %if.end29.thread.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	sh x10, 22 ( x7 )
	lui x10, %hi( 65535 )
	add x10, x10, %lo( 65535 )
	sh x10, 386 ( sp )
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	sh x28, 14 ( x7 )
	sh x5, 6 ( x22 )
	mv x29, x17
	sh fp, 20 ( x7 )
	sh x3, 18 ( x7 )
	sh x30, 16 ( x7 )
	sh x6, 12 ( x7 )
	sh x16, 10 ( x7 )
	sh x14, 8 ( x7 )
	sh x15, 6 ( x7 )
	sh x13, 2 ( x7 )
	sh x17, 2 ( x22 )
	sh x0, 22 ( x22 )
	sh x0, 20 ( x22 )
	sh x0, 18 ( x22 )
	sh x0, 16 ( x22 )
	sh x0, 14 ( x22 )
	sh x0, 12 ( x22 )
	sh x0, 10 ( x22 )
	sh x0, 8 ( x22 )
	sh x0, 4 ( x22 )
	sh x0, 4 ( x7 )
	sh x12, 118 ( sp )
	add x11, x10, x13
	sh x0, 410 ( sp )
	sh x0, 142 ( sp )
	mv x23, x17
	mv x28, x5
	slti x10, x11, -145
	beq x0, x10, .LBB0_82
	jal x0, .LBB0_96
.LBB0_80:                               //  %if.end29.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	sub x11, x17, x13
	beq x0, x11, .LBB0_83
.LBB0_81:                               //    in Loop: Header=BB0_55 Depth=1
	mv x29, x13
	mv x28, x9
	slti x10, x11, -145
	bltu x0, x10, .LBB0_96
.LBB0_82:                               //  %if.end36.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	mv x10, x7
	mv fp, x29
	jal eshift
	mv x11, x10
	lhu x10, 386 ( sp )
	lhu x12, 118 ( sp )
	mv x5, fp
	jal x0, .LBB0_92
.LBB0_77:                               //  %if.then6.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	sh x0, 282 ( sp )
	mv x10, x0
	lhu x12, 334 ( sp )
	bne x12, x10, .LBB0_54
	jal x0, .LBB0_106
.LBB0_83:                               //  %for.inc.i.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lw x11, 32 ( sp )               //  4-byte Folded Reload
	bne x15, x11, .LBB0_86
.LBB0_84:                               //  %for.inc.1.i.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	or x10, x10, fp
	or x10, x3, x10
	or x10, x30, x10
	or x10, x28, x10
	or x10, x6, x10
	or x10, x16, x10
	lui x11, %hi( 65535 )
	or x10, x14, x10
	add x11, x11, %lo( 65535 )
	and x10, x11, x10
	beq x0, x10, .LBB0_88
.LBB0_85:                               //    in Loop: Header=BB0_55 Depth=1
	mv x10, x12
	mv x12, x11
	jal x0, .LBB0_91
.LBB0_86:                               //  %if.end74.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	blt x15, x0, .LBB0_90
.LBB0_87:                               //  %if.then77.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	sh x10, 22 ( x7 )
	lui x10, %hi( 65535 )
	add x10, x10, %lo( 65535 )
	sh x9, 6 ( x22 )
	sh x23, 2 ( x22 )
	sh fp, 20 ( x7 )
	sh x3, 18 ( x7 )
	sh x30, 16 ( x7 )
	sh x28, 14 ( x7 )
	sh x6, 12 ( x7 )
	sh x16, 10 ( x7 )
	sh x14, 8 ( x7 )
	sh x15, 6 ( x7 )
	sh x13, 2 ( x7 )
	sh x0, 22 ( x22 )
	sh x0, 20 ( x22 )
	sh x0, 18 ( x22 )
	sh x0, 16 ( x22 )
	sh x0, 14 ( x22 )
	sh x0, 12 ( x22 )
	sh x0, 10 ( x22 )
	sh x0, 8 ( x22 )
	sh x0, 4 ( x22 )
	sh x0, 4 ( x7 )
	sh x12, 118 ( sp )
	sh x10, 386 ( sp )
	sh x0, 410 ( sp )
	sh x0, 142 ( sp )
	jal x0, .LBB0_91
.LBB0_88:                               //  %if.then44.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	xor x10, x12, -1
	beq x0, x10, .LBB0_102
.LBB0_89:                               //  %if.then51.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	sh x0, 16 ( x27 )
	sh x0, 14 ( x27 )
	sh x0, 12 ( x27 )
	sh x0, 10 ( x27 )
	sh x0, 8 ( x27 )
	sh x0, 6 ( x27 )
	sh x0, 4 ( x27 )
	sh x0, 2 ( x27 )
	sh x0, 300 ( sp )
	sh x0, 282 ( sp )
	mv x10, x0
	mv x28, x9
	lhu x12, 334 ( sp )
	bne x12, x10, .LBB0_54
	jal x0, .LBB0_106
.LBB0_90:                               //    in Loop: Header=BB0_55 Depth=1
	mv x10, x12
	lw x12, 92 ( sp )               //  4-byte Folded Reload
.LBB0_91:                               //  %if.end85.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	mv x5, x13
	mv x11, x0
.LBB0_92:                               //  %if.end85.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lw x13, 92 ( sp )               //  4-byte Folded Reload
	mv x17, x21
	and x10, x13, x10
	and x12, x13, x12
	bne x12, x10, .LBB0_94
.LBB0_93:                               //  %if.then92.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x10, 24 ( x17 )
	lhu x12, 24 ( x22 )
	lhu x13, 22 ( x17 )
	lhu x14, 18 ( x22 )
	lhu x15, 20 ( x17 )
	add x10, x10, x12
	srl x12, x10, 16&31
	add x12, x13, x12
	lhu x13, 22 ( x22 )
	lhu x16, 16 ( x22 )
	sh x10, 24 ( x22 )
	add x12, x13, x12
	lhu x13, 18 ( x17 )
	sh x12, 22 ( x22 )
	add x13, x13, x14
	srl x14, x12, 16&31
	and x14, x14, 1
	add x14, x15, x14
	lhu x15, 20 ( x22 )
	lhu x12, 14 ( x17 )
	add x14, x15, x14
	srl x15, x14, 16&31
	and x15, x15, 1
	add x13, x15, x13
	lhu x15, 16 ( x17 )
	srl x10, x13, 16&31
	sh x13, 18 ( x22 )
	lhu x13, 14 ( x22 )
	add x15, x15, x16
	and x10, x10, 1
	add x10, x10, x15
	sh x10, 16 ( x22 )
	srl x10, x10, 16&31
	add x12, x12, x13
	and x10, x10, 1
	add x10, x10, x12
	lhu x12, 12 ( x17 )
	lhu x13, 12 ( x22 )
	sh x10, 14 ( x22 )
	srl x10, x10, 16&31
	and x10, x10, 1
	add x12, x12, x13
	add x10, x10, x12
	lhu x12, 10 ( x17 )
	lhu x13, 10 ( x22 )
	sh x10, 12 ( x22 )
	srl x10, x10, 16&31
	and x10, x10, 1
	add x12, x12, x13
	add x10, x10, x12
	lhu x12, 8 ( x17 )
	lhu x13, 8 ( x22 )
	sh x10, 10 ( x22 )
	srl x10, x10, 16&31
	and x10, x10, 1
	add x12, x12, x13
	add x10, x10, x12
	lhu x12, 6 ( x17 )
	lhu x13, 6 ( x22 )
	sh x10, 8 ( x22 )
	srl x10, x10, 16&31
	and x10, x10, 1
	add x12, x12, x13
	add x10, x10, x12
	lh x12, 122 ( sp )
	lh x13, 390 ( sp )
	sh x10, 6 ( x22 )
	srl x10, x10, 16&31
	and x10, x10, 1
	add x12, x12, x13
	add x10, x10, x12
	sh x14, 20 ( x22 )
	mv x12, x0
	jal x0, .LBB0_95
.LBB0_94:                               //  %if.else95.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x10, 22 ( x17 )
	lhu x12, 22 ( x22 )
	lhu x13, 24 ( x22 )
	lhu x14, 20 ( x22 )
	lhu x15, 18 ( x22 )
	sub x10, x12, x10
	lhu x12, 24 ( x17 )
	lhu x16, 16 ( x22 )
	sub x12, x13, x12
	srl x13, x12, 16&31
	and x13, x13, 1
	sub x10, x10, x13
	lhu x13, 20 ( x17 )
	sh x12, 24 ( x22 )
	sh x10, 22 ( x22 )
	lhu x12, 14 ( x17 )
	sub x13, x14, x13
	srl x14, x10, 16&31
	and x14, x14, 1
	sub x13, x13, x14
	lhu x14, 18 ( x17 )
	sh x13, 20 ( x22 )
	sub x14, x15, x14
	srl x15, x13, 16&31
	and x15, x15, 1
	sub x14, x14, x15
	lhu x15, 16 ( x17 )
	srl x10, x14, 16&31
	lhu x13, 14 ( x22 )
	and x10, x10, 1
	sub x15, x16, x15
	sub x10, x15, x10
	sh x10, 16 ( x22 )
	srl x10, x10, 16&31
	sub x12, x13, x12
	and x10, x10, 1
	sub x10, x12, x10
	lhu x12, 12 ( x17 )
	lhu x13, 12 ( x22 )
	sh x10, 14 ( x22 )
	srl x10, x10, 16&31
	and x10, x10, 1
	sub x12, x13, x12
	sub x10, x12, x10
	lhu x12, 10 ( x17 )
	lhu x13, 10 ( x22 )
	sh x10, 12 ( x22 )
	srl x10, x10, 16&31
	and x10, x10, 1
	sub x12, x13, x12
	sub x10, x12, x10
	lhu x12, 8 ( x17 )
	lhu x13, 8 ( x22 )
	sh x10, 10 ( x22 )
	srl x10, x10, 16&31
	and x10, x10, 1
	sub x12, x13, x12
	sub x10, x12, x10
	lhu x12, 6 ( x17 )
	lhu x13, 6 ( x22 )
	sh x10, 8 ( x22 )
	srl x10, x10, 16&31
	and x10, x10, 1
	sub x12, x13, x12
	sub x10, x12, x10
	lhu x12, 122 ( sp )
	lhu x13, 390 ( sp )
	sh x10, 6 ( x22 )
	srl x10, x10, 16&31
	and x10, x10, 1
	sub x12, x13, x12
	sub x10, x12, x10
	seqz x12, x0
	sh x14, 18 ( x22 )
.LBB0_95:                               //  %done.i.i.i.i.sink.split
                                        //    in Loop: Header=BB0_55 Depth=1
	sh x10, 390 ( sp )
	mv x10, x22
	mv x13, x5
	add x14, x0, 64
	add x15, sp, 176
	jal emdnorm
	mv x7, x21
	mv x28, x9
.LBB0_96:                               //  %done.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x11, 2 ( x22 )
	lhu x12, 386 ( sp )
	mv x13, x0
	mv x10, x11
	beq x12, x13, .LBB0_98
.LBB0_97:                               //  %done.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	or x10, x10, x11
.LBB0_98:                               //  %done.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x12, 392 ( sp )
	sh x10, 300 ( sp )
	bne x11, x26, .LBB0_103
.LBB0_99:                               //  %for.body.preheader.i.i.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x11, 8 ( x22 )
	sh x0, 12 ( x27 )
	sh x0, 10 ( x27 )
	sh x0, 8 ( x27 )
	or x11, x12, x11
	lhu x12, 10 ( x22 )
	sh x0, 6 ( x27 )
	sh x0, 4 ( x27 )
	sh x0, 2 ( x27 )
	or x11, x12, x11
	lhu x12, 12 ( x22 )
	sh x0, 296 ( sp )
	sh x0, 282 ( sp )
	or x11, x12, x11
	lhu x12, 14 ( x22 )
	or x11, x12, x11
	lhu x12, 16 ( x22 )
	or x11, x12, x11
	lhu x12, 18 ( x22 )
	or x11, x12, x11
	lhu x12, 20 ( x22 )
	or x11, x12, x11
	lhu x12, 22 ( x22 )
	or x11, x12, x11
	lhu x12, 410 ( sp )
	or x11, x12, x11
	beq x0, x11, .LBB0_101
.LBB0_100:                              //  %if.then11.i.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lui x10, (49152>>12)&1048575
	sh x10, 16 ( x27 )
	sh x26, 300 ( sp )
	mv x10, x0
	lhu x12, 334 ( sp )
	bne x12, x10, .LBB0_54
	jal x0, .LBB0_106
.LBB0_101:                              //  %if.end12.i.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	or x10, x26, x10
	sh x10, 300 ( sp )
	sh x0, 16 ( x27 )
	mv x10, x0
	lhu x12, 334 ( sp )
	bne x12, x10, .LBB0_54
	jal x0, .LBB0_106
.LBB0_102:                              //  %done.i.thread.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lw x10, 32 ( sp )               //  4-byte Folded Reload
	add x11, x13, 1
	mv x28, x9
	sh x11, 388 ( sp )
	or x10, x10, x11
	mv x12, x28
	sh x10, 300 ( sp )
	beq x11, x26, .LBB0_99
.LBB0_103:                              //  %if.end13.i.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lh x10, 8 ( x22 )
	sh x12, 16 ( x27 )
	sh x10, 14 ( x27 )
	lh x10, 10 ( x22 )
	sh x10, 12 ( x27 )
	lh x10, 12 ( x22 )
	sh x10, 10 ( x27 )
	lh x10, 14 ( x22 )
	sh x10, 8 ( x27 )
	lh x10, 16 ( x22 )
	sh x10, 6 ( x27 )
	lh x10, 18 ( x22 )
	sh x10, 4 ( x27 )
	lh x10, 20 ( x22 )
	sh x10, 284 ( sp )
	lhu x10, 408 ( sp )
	sh x10, 282 ( sp )
	lhu x12, 334 ( sp )
	bne x12, x10, .LBB0_54
	jal x0, .LBB0_106
.LBB0_115:                              //  %do.end.i
	add x13, sp, 308
	lh x10, 2 ( x13 )
	add x11, sp, 360
	mv x12, x11
	lh x11, 18 ( x12 )
	sh x10, 2 ( x12 )
	lh x10, 4 ( x13 )
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	sh x23, 352 ( sp )
	sh x0, 14 ( x18 )
	sh x10, 4 ( x12 )
	lh x10, 6 ( x13 )
	add x22, x9, 240
	sh x0, 12 ( x18 )
	sh x0, 10 ( x18 )
	sh x10, 6 ( x12 )
	lh x10, 8 ( x13 )
	sh x0, 8 ( x18 )
	sh x0, 6 ( x18 )
	sh x0, 4 ( x18 )
	sh x10, 8 ( x12 )
	lh x10, 10 ( x13 )
	sh x0, 2 ( x18 )
	sh x0, 334 ( sp )
	sh x10, 10 ( x12 )
	lh x10, 12 ( x13 )
	sh x10, 12 ( x12 )
	lh x10, 308 ( sp )
	sh x10, 360 ( sp )
	lh x10, 18 ( x13 )
	add x10, x10, x11
	lui x11, %hi( -16526 )
	add x11, x11, %lo( -16526 )
	add x10, x11, x10
	sh x10, 18 ( x13 )
	sh x10, 18 ( x12 )
	lui x10, (32768>>12)&1048575
	lh x11, 14 ( x13 )
	sh x10, 16 ( x18 )
	lh x10, 324 ( sp )
	sh x11, 14 ( x12 )
	mv x11, x13
	sh x10, 376 ( sp )
	mv x10, x22
	jal ecmp
	blt x0, x10, .LBB0_140
.LBB0_116:                              //  %while.body.i.preheader
	lui fp, (4096>>12)&1048575
	add x24, sp, 308
	add x25, sp, 176
	add x27, sp, 334
.LBB0_117:                              //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x9
	mv x11, x24
	jal ecmp
	blt x0, x10, .LBB0_119
.LBB0_118:                              //  %if.then106.i
                                        //    in Loop: Header=BB0_117 Depth=1
	mv x10, x9
	mv x12, x24
	mv x11, x24
	mv x13, x25
	jal ediv
	mv x10, x9
	mv x12, x27
	mv x11, x27
	mv x13, x25
	jal emul
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	and x10, x10, fp
	add x20, x10, x20
.LBB0_119:                              //  %if.end113.i
                                        //    in Loop: Header=BB0_117 Depth=1
	srl x10, fp, 1&31
	and fp, x26, x10
	beq x0, fp, .LBB0_140
.LBB0_120:                              //  %while.cond.i
                                        //    in Loop: Header=BB0_117 Depth=1
	mv x10, x22
	mv x11, x24
	jal ecmp
	add x9, x9, 20
	bge x0, x10, .LBB0_117
	jal x0, .LBB0_140
.LBB0_121:                              //  %while.cond129.preheader.i
	sll x10, x27, 16&31
	sra x10, x10, 16&31
	blt x10, x0, .LBB0_130
.LBB0_122:                              //  %while.body135.i.preheader
	lui x10, %hi( etens )
	add x10, x10, %lo( etens )
	mv x20, x0
	add x25, x10, 240
	add x24, sp, 360
	add x26, sp, 176
.LBB0_123:                              //  %while.body135.i
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x25
	mv x12, x24
	mv x11, x24
	mv x13, x26
	jal emul
	lh x27, 376 ( sp )
	add x20, x20, -1
	bge x27, x0, .LBB0_123
.LBB0_124:                              //  %if.end197.loopexit.i
	lhu x19, 378 ( sp )
	lhu x18, 14 ( x24 )
	lhu fp, 12 ( x24 )
	lhu x25, 10 ( x24 )
	lhu x26, 8 ( x24 )
	lhu x22, 6 ( x24 )
	lhu x21, 4 ( x24 )
	lhu x23, 2 ( x24 )
	lhu x24, 360 ( sp )
	add x30, sp, 282
	jal x0, .LBB0_133
.LBB0_125:                              //  %for.end194.i
	add x10, sp, 308
	sh x19, 2 ( x10 )
	sh x18, 8 ( x10 )
	sh x27, 314 ( sp )
	lhu x19, 2 ( x30 )
	lhu x18, 290 ( sp )
	lhu x27, 6 ( x30 )
	lw x12, 88 ( sp )               //  4-byte Folded Reload
	sh x17, 24 ( x10 )
	sh x24, 22 ( x10 )
	sh x23, 20 ( x10 )
	sh x21, 18 ( x10 )
	sh x22, 16 ( x10 )
	sh x26, 14 ( x10 )
	sh x25, 12 ( x10 )
	sh fp, 10 ( x10 )
	sh x0, 4 ( x10 )
	sh x19, 378 ( sp )
	bne x19, x12, .LBB0_128
.LBB0_126:                              //  %for.body.preheader.i.i1336.i
	lhu x11, 10 ( x30 )
	or x10, x27, x18
	add x13, sp, 360
	sh x0, 12 ( x13 )
	or x10, x11, x10
	lhu x11, 12 ( x30 )
	sh x0, 10 ( x13 )
	sh x0, 8 ( x13 )
	sh x0, 6 ( x13 )
	or x10, x11, x10
	lhu x11, 14 ( x30 )
	sh x0, 4 ( x13 )
	sh x0, 2 ( x13 )
	sh x0, 374 ( sp )
	or x10, x11, x10
	lhu x11, 16 ( x30 )
	sh x0, 360 ( sp )
	or x10, x11, x10
	lhu x11, 18 ( x30 )
	or x10, x11, x10
	lhu x11, 20 ( x30 )
	or x10, x11, x10
	lhu x11, 22 ( x30 )
	or x10, x11, x10
	lhu x11, 306 ( sp )
	or x10, x11, x10
	beq x0, x10, .LBB0_131
.LBB0_127:                              //  %if.then11.i1372.i
	mv x23, x0
	lui x27, (49152>>12)&1048575
	mv x19, x12
	sh x27, 16 ( x13 )
	mv x21, x23
	mv x22, x23
	mv x26, x23
	mv x25, x23
	mv fp, x23
	sh x12, 378 ( sp )
	mv x18, x23
	jal x0, .LBB0_132
.LBB0_128:                              //  %for.end194.i.if.end13.i1399.i_crit_edge
	lhu x24, 304 ( sp )
	lhu x23, 20 ( x30 )
	lhu x21, 18 ( x30 )
	lhu x22, 16 ( x30 )
	lhu x26, 14 ( x30 )
	lhu x25, 12 ( x30 )
	lhu fp, 10 ( x30 )
.LBB0_129:                              //  %if.end13.i1399.i
	add x10, sp, 360
	sh x18, 14 ( x10 )
	sh x27, 16 ( x10 )
	sh fp, 12 ( x10 )
	sh x25, 10 ( x10 )
	sh x26, 8 ( x10 )
	sh x22, 6 ( x10 )
	sh x21, 4 ( x10 )
	sh x23, 362 ( sp )
	sh x24, 360 ( sp )
	jal x0, .LBB0_133
.LBB0_130:
	mv x19, x0
	mv x20, x19
	jal x0, .LBB0_133
.LBB0_131:                              //  %if.end12.i1381.i
	mv x23, x0
	lui x10, %hi( 32767 )
	add x19, x10, %lo( 32767 )
	mv x21, x23
	mv x22, x23
	mv x26, x23
	mv x25, x23
	mv fp, x23
	mv x18, x23
	mv x27, x23
	sh x0, 16 ( x13 )
	sh x19, 378 ( sp )
.LBB0_132:                              //  %if.end197.i
	mv x24, x23
.LBB0_133:                              //  %if.end197.i
	sh x18, 14 ( x30 )
	add x18, sp, 334
	sh x9, 16 ( x18 )
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	lw x9, 96 ( sp )                //  4-byte Folded Reload
	mv x11, x30
	sh x27, 16 ( x30 )
	sh x10, 352 ( sp )
	mv x10, x9
	sh fp, 12 ( x30 )
	sh x25, 10 ( x30 )
	sh x26, 8 ( x30 )
	sh x22, 6 ( x30 )
	sh x21, 4 ( x30 )
	sh x23, 2 ( x30 )
	sh x19, 300 ( sp )
	sh x24, 282 ( sp )
	sh x0, 14 ( x18 )
	sh x0, 12 ( x18 )
	sh x0, 10 ( x18 )
	sh x0, 8 ( x18 )
	sh x0, 6 ( x18 )
	sh x0, 4 ( x18 )
	sh x0, 2 ( x18 )
	sh x0, 334 ( sp )
	jal ecmp
	bge x0, x10, .LBB0_139
.LBB0_134:                              //  %while.body206.i.preheader
	lui x10, %hi( etens )
	add x23, x10, %lo( etens )
	lui x10, %hi( -4096 )
	add fp, x10, %lo( -4096 )
	lui x10, %hi( emtens )
	add x24, x10, %lo( emtens )
	add x25, sp, 282
	add x26, sp, 176
	add x27, sp, 334
.LBB0_135:                              //  %while.body206.i
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x24
	mv x11, x25
	jal ecmp
	blt x10, x0, .LBB0_137
.LBB0_136:                              //  %if.then211.i
                                        //    in Loop: Header=BB0_135 Depth=1
	mv x10, x23
	mv x12, x25
	mv x11, x25
	mv x13, x26
	jal emul
	mv x10, x23
	mv x12, x27
	mv x11, x27
	mv x13, x26
	jal emul
	add x20, x20, fp
.LBB0_137:                              //  %if.end217.i
                                        //    in Loop: Header=BB0_135 Depth=1
	add x10, fp, 1
	sltiu x10, x10, 3
	bltu x0, x10, .LBB0_139
.LBB0_138:                              //  %if.end221.i
                                        //    in Loop: Header=BB0_135 Depth=1
	slt x10, fp, x0
	add fp, x10, fp
	mv x10, x9
	mv x11, x25
	jal ecmp
	add x23, x23, 20
	add x24, x24, 20
	sra fp, fp, 1&31
	blt x0, x10, .LBB0_135
.LBB0_139:                              //  %while.end224.i
	add x10, sp, 334
	add x13, sp, 176
	mv x11, x9
	mv x12, x10
	jal ediv
.LBB0_140:                              //  %isone.i
	lhu x11, 352 ( sp )
	lui x12, %hi( 32767 )
	add x9, x12, %lo( 32767 )
	sll x10, x11, 16&31
	sra x10, x10, 31&31
	and x11, x9, x11
	sh x10, 282 ( sp )
	sh x11, 284 ( sp )
	bne x11, x9, .LBB0_143
.LBB0_141:                              //  %for.body.preheader.i.i1090.i
	lhu x5, 2 ( x18 )
	lhu x6, 334 ( sp )
	lhu x12, 4 ( x18 )
	lui x29, %hi( 65535 )
	add x29, x29, %lo( 65535 )
	or x13, x6, x5
	or x14, x12, x13
	lhu x13, 6 ( x18 )
	add x24, sp, 360
	sh x0, 286 ( sp )
	or x15, x13, x14
	lhu x14, 8 ( x18 )
	or x16, x14, x15
	lhu x15, 10 ( x18 )
	or x17, x15, x16
	lhu x16, 12 ( x18 )
	or x7, x16, x17
	lhu x17, 14 ( x18 )
	or x28, x17, x7
	lhu x7, 350 ( sp )
	or x28, x7, x28
	and x28, x29, x28
	beq x0, x28, .LBB0_144
.LBB0_142:                              //  %if.then13.i1132.i
	add x28, sp, 282
	sh x6, 22 ( x28 )
	sh x5, 20 ( x28 )
	sh x12, 18 ( x28 )
	sh x13, 16 ( x28 )
	sh x14, 14 ( x28 )
	sh x15, 12 ( x28 )
	sh x16, 10 ( x28 )
	sh x17, 8 ( x28 )
	sh x7, 6 ( x28 )
	lh x28, 332 ( sp )
	sh x28, 306 ( sp )
	jal x0, .LBB0_145
.LBB0_143:                              //  %if.end28.i1150.i
	lhu x12, 4 ( x18 )
	lhu x13, 6 ( x18 )
	lhu x14, 8 ( x18 )
	lhu x15, 10 ( x18 )
	lhu x16, 12 ( x18 )
	lhu x17, 14 ( x18 )
	lhu x7, 16 ( x18 )
	lhu x5, 336 ( sp )
	lhu x6, 334 ( sp )
	add x28, sp, 282
	add x24, sp, 360
	sh x7, 6 ( x28 )
	sh x17, 8 ( x28 )
	sh x16, 10 ( x28 )
	sh x15, 12 ( x28 )
	sh x14, 14 ( x28 )
	sh x13, 16 ( x28 )
	sh x12, 18 ( x28 )
	sh x5, 20 ( x28 )
	sh x6, 22 ( x28 )
	sh x0, 4 ( x28 )
	sh x0, 306 ( sp )
	jal x0, .LBB0_145
.LBB0_144:                              //  %for.cond20.preheader.i1088.i
	add x12, sp, 282
	mv x17, x0
	sh x0, 22 ( x12 )
	sh x0, 20 ( x12 )
	sh x0, 18 ( x12 )
	sh x0, 16 ( x12 )
	sh x0, 14 ( x12 )
	sh x0, 12 ( x12 )
	sh x0, 10 ( x12 )
	sh x0, 8 ( x12 )
	sh x0, 6 ( x12 )
	mv x16, x17
	mv x15, x17
	mv x14, x17
	mv x13, x17
	mv x12, x17
	mv x5, x17
	sh x0, 306 ( sp )
	mv x6, x17
	mv x7, x17
.LBB0_145:                              //  %emovi.exit1152.i
	sh x11, 2 ( x18 )
	lh x11, 378 ( sp )
	sh x10, 334 ( sp )
	sh x6, 22 ( x18 )
	sh x5, 20 ( x18 )
	sra x10, x11, 15&31
	and x11, x9, x11
	sh x12, 18 ( x18 )
	sh x13, 16 ( x18 )
	sh x14, 14 ( x18 )
	sh x15, 12 ( x18 )
	sh x16, 10 ( x18 )
	sh x17, 8 ( x18 )
	sh x7, 6 ( x18 )
	sh x0, 4 ( x18 )
	sh x10, 282 ( sp )
	sh x11, 284 ( sp )
	sh x0, 358 ( sp )
	bne x11, x9, .LBB0_148
.LBB0_146:                              //  %for.body.preheader.i.i984.i
	lhu x5, 2 ( x24 )
	lhu x7, 360 ( sp )
	lhu x12, 4 ( x24 )
	lui x29, %hi( 65535 )
	add x29, x29, %lo( 65535 )
	or x13, x7, x5
	or x14, x12, x13
	lhu x13, 6 ( x24 )
	sh x0, 286 ( sp )
	or x15, x13, x14
	lhu x14, 8 ( x24 )
	or x16, x14, x15
	lhu x15, 10 ( x24 )
	or x17, x15, x16
	lhu x16, 12 ( x24 )
	or x6, x16, x17
	lhu x17, 14 ( x24 )
	or x28, x17, x6
	lhu x6, 376 ( sp )
	or x28, x6, x28
	and x28, x29, x28
	beq x0, x28, .LBB0_177
.LBB0_147:                              //  %if.then13.i1026.i
	lh x29, 358 ( sp )
	add x28, sp, 282
	sh x5, 20 ( x28 )
	sh x12, 18 ( x28 )
	sh x13, 16 ( x28 )
	sh x14, 14 ( x28 )
	sh x15, 12 ( x28 )
	sh x16, 10 ( x28 )
	sh x17, 8 ( x28 )
	sh x6, 6 ( x28 )
	sh x29, 24 ( x28 )
	jal x0, .LBB0_149
.LBB0_148:                              //  %if.end28.i1044.i
	lhu x12, 4 ( x24 )
	lhu x13, 6 ( x24 )
	lhu x14, 8 ( x24 )
	lhu x15, 10 ( x24 )
	lhu x16, 12 ( x24 )
	lhu x17, 14 ( x24 )
	lhu x6, 16 ( x24 )
	lhu x5, 362 ( sp )
	add x7, sp, 282
	sh x17, 8 ( x7 )
	sh x6, 6 ( x7 )
	sh x16, 10 ( x7 )
	sh x15, 12 ( x7 )
	sh x14, 14 ( x7 )
	sh x13, 16 ( x7 )
	sh x12, 18 ( x7 )
	sh x5, 20 ( x7 )
	sh x0, 4 ( x7 )
	sh x0, 24 ( x7 )
	lhu x7, 360 ( sp )
.LBB0_149:                              //  %emovi.exit1046.i
	sh x7, 304 ( sp )
.LBB0_150:                              //  %emovi.exit1046.i
	sh x12, 18 ( x24 )
	sh x11, 2 ( x24 )
	sh x10, 360 ( sp )
	add x10, sp, 334
	add x12, sp, 176
	mv x11, x24
	sh x7, 22 ( x24 )
	sh x5, 20 ( x24 )
	sh x13, 16 ( x24 )
	sh x14, 14 ( x24 )
	sh x15, 12 ( x24 )
	sh x16, 10 ( x24 )
	sh x17, 8 ( x24 )
	sh x6, 6 ( x24 )
	sh x0, 4 ( x24 )
	sh x0, 384 ( sp )
	jal eiremain
	lhu x10, 252 ( sp )
	bltu x0, x10, .LBB0_155
.LBB0_151:                              //  %land.rhs.lr.ph.i
	lui x10, %hi( ezero )
	add x10, x10, %lo( ezero )
	sw x10, 96 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 65532 )
	add x10, x10, %lo( 65532 )
	sw x10, 92 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 65535 )
	add x19, x10, %lo( 65535 )
	add x26, sp, 308
.LBB0_152:                              //  %land.rhs.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 96 ( sp )               //  4-byte Folded Reload
	mv x10, x24
	jal ecmp
	beq x0, x10, .LBB0_154
.LBB0_153:                              //  %while.body247.i
                                        //    in Loop: Header=BB0_152 Depth=1
	lhu x13, 24 ( x24 )
	lhu x12, 22 ( x24 )
	lhu x16, 20 ( x24 )
	lhu x17, 18 ( x24 )
	srl x10, x13, 15&31
	sll x11, x12, 1&31
	or x5, x10, x11
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	sll x11, x5, 2&31
	and x14, x19, x5
	sll x15, x16, 1&31
	and x10, x10, x11
	add x10, x14, x10
	srl x14, x12, 15&31
	or x7, x14, x15
	srl x14, x16, 15&31
	sll x15, x17, 1&31
	or x29, x14, x15
	srl x14, x16, 14&31
	and x14, x14, 1
	sll x15, x29, 1&31
	or x14, x14, x15
	srl x15, x12, 14&31
	and x15, x15, 1
	sll x6, x7, 1&31
	or x15, x15, x6
	srl x12, x12, 13&31
	sll x15, x15, 1&31
	and x12, x12, 1
	or x15, x12, x15
	lhu x30, 16 ( x24 )
	sll x12, x14, 1&31
	srl x14, x16, 13&31
	and x14, x14, 1
	or x16, x14, x12
	srl x6, x10, 16&31
	and x28, x19, x7
	and x12, x19, x29
	and x14, x19, x16
	add x6, x28, x6
	add x14, x12, x14
	and x12, x19, x15
	srl x28, x17, 15&31
	sll x31, x30, 1&31
	or x31, x28, x31
	add x12, x12, x6
	srl x6, x17, 14&31
	lhu x3, 14 ( x24 )
	and x6, x6, 1
	sll x28, x31, 1&31
	or x6, x6, x28
	srl x17, x17, 13&31
	sll x6, x6, 1&31
	and x17, x17, 1
	or x6, x17, x6
	srl x17, x12, 16&31
	and x17, x17, 1
	srl x28, x30, 15&31
	sll x4, x3, 1&31
	or x27, x28, x4
	add x14, x17, x14
	and x17, x19, x31
	and x28, x19, x6
	add x17, x17, x28
	srl x28, x30, 14&31
	lhu ra, 12 ( x24 )
	and x28, x28, 1
	sll x4, x27, 1&31
	or x28, x28, x4
	srl x30, x30, 13&31
	sll x28, x28, 1&31
	and x30, x30, 1
	or x30, x30, x28
	srl x28, x14, 16&31
	and x28, x28, 1
	srl x4, x3, 15&31
	sll fp, ra, 1&31
	or fp, x4, fp
	add x17, x28, x17
	and x28, x19, x27
	and x4, x19, x30
	add x28, x28, x4
	srl x4, x3, 14&31
	lhu x25, 10 ( x24 )
	and x4, x4, 1
	sll x21, fp, 1&31
	or x4, x4, x21
	srl x3, x3, 13&31
	sll x4, x4, 1&31
	and x3, x3, 1
	or x4, x3, x4
	srl x3, x17, 16&31
	add x18, sp, 360
	and x3, x3, 1
	lhu x18, 8 ( x18 )
	srl x21, ra, 15&31
	sll x23, x25, 1&31
	or x21, x21, x23
	add x28, x3, x28
	and x3, x19, fp
	and x23, x19, x4
	add x3, x3, x23
	srl x23, ra, 14&31
	and x23, x23, 1
	sll x24, x21, 1&31
	or x23, x23, x24
	srl x24, x25, 15&31
	sll x22, x18, 1&31
	or x22, x24, x22
	srl x24, ra, 13&31
	sll x23, x23, 1&31
	and x24, x24, 1
	or ra, x24, x23
	srl x23, x28, 16&31
	and x23, x23, 1
	add x3, x23, x3
	srl x23, x25, 14&31
	and x23, x23, 1
	sll x24, x22, 1&31
	or x23, x23, x24
	add x24, sp, 360
	sh x29, 18 ( x24 )
	lhu x29, 6 ( x24 )
	sh x5, 22 ( x24 )
	sh x7, 20 ( x24 )
	and x5, x19, x21
	and x7, x19, ra
	sh fp, 12 ( x24 )
	srl fp, x25, 13&31
	sh x31, 16 ( x24 )
	add x5, x5, x7
	srl x7, x18, 15&31
	sll x31, x29, 1&31
	or x7, x7, x31
	sll x31, x23, 1&31
	and fp, fp, 1
	or x31, fp, x31
	srl fp, x3, 16&31
	and fp, fp, 1
	add x5, fp, x5
	sh x21, 10 ( x24 )
	and fp, x19, x22
	and x21, x19, x31
	add fp, fp, x21
	lh x21, 4 ( x24 )
	sh x22, 8 ( x24 )
	srl x22, x29, 15&31
	sll x23, x7, 1&31
	sll x21, x21, 1&31
	or x21, x22, x21
	srl x22, x18, 14&31
	and x22, x22, 1
	or x22, x22, x23
	srl x18, x18, 13&31
	srl x23, x5, 16&31
	sll x22, x22, 1&31
	and x18, x18, 1
	or x18, x18, x22
	and x23, x23, 1
	add fp, x23, fp
	sh x11, 22 ( x26 )
	sh x15, 20 ( x26 )
	and x11, x19, x7
	and x15, x19, x18
	add x11, x11, x15
	srl x15, fp, 16&31
	lh x22, 360 ( sp )
	and x15, x15, 1
	add x11, x15, x11
	srl x15, x29, 14&31
	sh x16, 18 ( x26 )
	and x15, x15, 1
	sll x16, x21, 1&31
	or x15, x15, x16
	srl x16, x29, 13&31
	sh x22, 308 ( sp )
	lh x22, 362 ( sp )
	sll x15, x15, 1&31
	and x16, x16, 1
	or x15, x16, x15
	srl x16, x11, 16&31
	sh x6, 16 ( x26 )
	and x16, x16, 1
	add x6, x21, x15
	sh x10, 22 ( x24 )
	sh x12, 20 ( x24 )
	sll x13, x13, 1&31
	sh x7, 6 ( x24 )
	sh x11, 6 ( x24 )
	add x16, x16, x6
	add x10, sp, 334
	mv x11, x24
	add x12, sp, 176
	sh x27, 14 ( x24 )
	sh x13, 24 ( x24 )
	sh x21, 4 ( x24 )
	sh x22, 2 ( x26 )
	sh x0, 24 ( x26 )
	sh x30, 14 ( x26 )
	sh x4, 12 ( x26 )
	sh ra, 10 ( x26 )
	sh x31, 8 ( x26 )
	sh x18, 6 ( x26 )
	sh x15, 312 ( sp )
	sh x13, 24 ( x24 )
	sh x14, 18 ( x24 )
	sh x17, 16 ( x24 )
	sh x28, 14 ( x24 )
	sh x3, 12 ( x24 )
	sh x5, 10 ( x24 )
	sh fp, 8 ( x24 )
	sh x16, 4 ( x24 )
	jal eiremain
	lhu x10, 252 ( sp )
	add x20, x20, -1
	beq x0, x10, .LBB0_152
	jal x0, .LBB0_155
.LBB0_154:
	mv x10, x0
.LBB0_155:                              //  %while.end260.i
	lw x23, 72 ( sp )               //  4-byte Folded Reload
	mv x12, x0
	add x13, x0, 3
	mv x11, x20
	beq x23, x13, .LBB0_157
.LBB0_156:                              //  %while.end260.i
	mv x11, x12
.LBB0_157:                              //  %while.end260.i
	lw x21, 84 ( sp )               //  4-byte Folded Reload
	lw x22, 76 ( sp )               //  4-byte Folded Reload
	lw x25, 68 ( sp )               //  4-byte Folded Reload
	lw x26, 64 ( sp )               //  4-byte Folded Reload
	lw x13, 48 ( sp )               //  4-byte Folded Reload
	mv x27, x0
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	beq x13, x12, .LBB0_159
.LBB0_158:                              //  %while.end260.i
	add x12, x0, 45
	jal x0, .LBB0_160
.LBB0_159:
	add x12, x0, 32
.LBB0_160:                              //  %while.end260.i
	lw x9, 80 ( sp )                //  4-byte Folded Reload
	sb x12, 118 ( sp )
	add x12, x26, x11
	add x13, x0, 42
	mv x11, x12
	blt x12, x13, .LBB0_162
.LBB0_161:                              //  %while.end260.i
	mv x11, x13
.LBB0_162:                              //  %while.end260.i
	xor x13, x10, 10
	add x14, x0, 46
	bltu x0, x13, .LBB0_172
.LBB0_163:                              //  %if.then277.i
	add x13, sp, 118
	sb x14, 2 ( x13 )
	add x14, x0, 49
	sb x14, 1 ( x13 )
	bge x0, x12, .LBB0_178
.LBB0_164:                              //  %if.end285.thread.i
	add x12, x0, 48
	sb x12, 121 ( sp )
	add x20, x20, 1
	add x11, x11, -1
	add x15, x13, 4
	bge x11, x0, .LBB0_173
.LBB0_165:
	seqz x19, x0
	add x18, x15, -1
	sltiu x11, x10, 5
	bltu x0, x11, .LBB0_187
.LBB0_166:                              //  %if.then326.i
	xor x10, x10, 5
	bltu x0, x10, .LBB0_185
.LBB0_167:                              //  %if.then329.i
	lhu x11, 2 ( x24 )
	lhu x12, 360 ( sp )
	mv x13, x0
	mv x10, x11
	beq x12, x13, .LBB0_169
.LBB0_168:                              //  %if.then329.i
	lui x10, %hi( -32768 )
	add x10, x10, %lo( -32768 )
	or x10, x10, x11
.LBB0_169:                              //  %if.then329.i
	lhu x12, 366 ( sp )
	lw x13, 56 ( sp )               //  4-byte Folded Reload
	sh x10, 352 ( sp )
	bne x11, x13, .LBB0_180
.LBB0_170:                              //  %for.body.preheader.i.i.i
	lhu x11, 8 ( x24 )
	add x13, sp, 334
	mv fp, x15
	sh x0, 12 ( x13 )
	or x11, x12, x11
	lhu x12, 10 ( x24 )
	sh x0, 10 ( x13 )
	sh x0, 8 ( x13 )
	sh x0, 6 ( x13 )
	or x11, x12, x11
	lhu x12, 12 ( x24 )
	sh x0, 4 ( x13 )
	sh x0, 2 ( x13 )
	sh x0, 348 ( sp )
	or x11, x12, x11
	lhu x12, 14 ( x24 )
	sh x0, 334 ( sp )
	or x11, x12, x11
	lhu x12, 16 ( x24 )
	or x11, x12, x11
	lhu x12, 18 ( x24 )
	or x11, x12, x11
	lhu x12, 20 ( x24 )
	or x11, x12, x11
	lhu x12, 22 ( x24 )
	or x11, x12, x11
	lhu x12, 384 ( sp )
	or x11, x12, x11
	beq x0, x11, .LBB0_182
.LBB0_171:                              //  %if.then11.i.i
	lui x10, (49152>>12)&1048575
	sh x10, 16 ( x13 )
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB0_183
.LBB0_172:                              //  %if.else291.i
	add x15, sp, 121
	add x12, sp, 118
	add x13, x10, 48
	sb x14, 2 ( x12 )
	sb x13, 1 ( x12 )
	bge x11, x0, .LBB0_173
	jal x0, .LBB0_165
.LBB0_177:                              //  %for.cond20.preheader.i982.i
	add x12, sp, 282
	mv x17, x0
	sh x0, 24 ( x12 )
	sh x0, 20 ( x12 )
	sh x0, 18 ( x12 )
	sh x0, 16 ( x12 )
	sh x0, 14 ( x12 )
	sh x0, 12 ( x12 )
	sh x0, 10 ( x12 )
	sh x0, 8 ( x12 )
	sh x0, 6 ( x12 )
	mv x16, x17
	mv x15, x17
	mv x14, x17
	mv x13, x17
	mv x12, x17
	mv x5, x17
	sh x0, 304 ( sp )
	mv x7, x17
	mv x6, x17
	jal x0, .LBB0_150
.LBB0_178:                              //  %if.end285.i
	add x15, sp, 121
	add x20, x20, 1
	blt x11, x0, .LBB0_181
.LBB0_179:
	mv x11, x0
.LBB0_173:
	sw x20, 52 ( sp )               //  4-byte Folded Spill
	sw x26, 64 ( sp )               //  4-byte Folded Spill
	sw x25, 68 ( sp )               //  4-byte Folded Spill
	sw x23, 72 ( sp )               //  4-byte Folded Spill
	sw x22, 76 ( sp )               //  4-byte Folded Spill
	sw x9, 80 ( sp )                //  4-byte Folded Spill
	sw x21, 84 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 65532 )
	add x10, x10, %lo( 65532 )
	sw x10, 92 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( 65535 )
	add x18, x11, 1
	add x24, x10, %lo( 65535 )
	add x26, sp, 308
	add fp, sp, 360
.LBB0_175:                              //  %for.body302.i
                                        //  =>This Inner Loop Header: Depth=1
	lhu x13, 24 ( fp )
	lhu x12, 22 ( fp )
	lhu x16, 20 ( fp )
	lhu x17, 18 ( fp )
	srl x10, x13, 15&31
	sll x11, x12, 1&31
	or x5, x10, x11
	lw x10, 92 ( sp )               //  4-byte Folded Reload
	sll x11, x5, 2&31
	and x14, x24, x5
	sw x15, 96 ( sp )               //  4-byte Folded Spill
	and x10, x10, x11
	add x10, x14, x10
	srl x14, x12, 15&31
	sll x15, x16, 1&31
	or x7, x14, x15
	srl x14, x16, 15&31
	sll x15, x17, 1&31
	or x29, x14, x15
	srl x14, x16, 14&31
	and x14, x14, 1
	sll x15, x29, 1&31
	or x14, x14, x15
	srl x15, x12, 14&31
	and x15, x15, 1
	sll x6, x7, 1&31
	or x15, x15, x6
	srl x12, x12, 13&31
	sll x15, x15, 1&31
	and x12, x12, 1
	or x15, x12, x15
	lhu x30, 16 ( fp )
	sll x12, x14, 1&31
	srl x14, x16, 13&31
	and x14, x14, 1
	or x16, x14, x12
	srl x6, x10, 16&31
	and x28, x24, x7
	and x12, x24, x29
	and x14, x24, x16
	add x6, x28, x6
	add x14, x12, x14
	and x12, x24, x15
	srl x28, x17, 15&31
	sll x31, x30, 1&31
	or x31, x28, x31
	add x12, x12, x6
	srl x6, x17, 14&31
	lhu x3, 14 ( fp )
	and x6, x6, 1
	sll x28, x31, 1&31
	or x6, x6, x28
	srl x17, x17, 13&31
	sll x6, x6, 1&31
	and x17, x17, 1
	or x6, x17, x6
	srl x17, x12, 16&31
	and x17, x17, 1
	srl x28, x30, 15&31
	sll x4, x3, 1&31
	or x27, x28, x4
	add x14, x17, x14
	and x17, x24, x31
	and x28, x24, x6
	add x17, x17, x28
	srl x28, x30, 14&31
	lhu x21, 12 ( fp )
	and x28, x28, 1
	sll x4, x27, 1&31
	or x28, x28, x4
	srl x30, x30, 13&31
	sll x28, x28, 1&31
	and x30, x30, 1
	or x30, x30, x28
	srl x28, x14, 16&31
	and x28, x28, 1
	srl x4, x3, 15&31
	sll x25, x21, 1&31
	or x25, x4, x25
	add x17, x28, x17
	and x28, x24, x27
	and x4, x24, x30
	add x28, x28, x4
	srl x4, x3, 14&31
	lhu x22, 10 ( fp )
	and x4, x4, 1
	sll ra, x25, 1&31
	or x4, x4, ra
	srl x3, x3, 13&31
	sll x4, x4, 1&31
	and x3, x3, 1
	or x4, x3, x4
	srl x3, x17, 16&31
	and x3, x3, 1
	srl ra, x21, 15&31
	sll x23, x22, 1&31
	or x23, ra, x23
	add x28, x3, x28
	lhu x20, 8 ( fp )
	and x3, x24, x25
	and ra, x24, x4
	add x3, x3, ra
	srl ra, x21, 14&31
	and ra, ra, 1
	sll x19, x23, 1&31
	or x19, ra, x19
	srl x21, x21, 13&31
	srl ra, x22, 15&31
	sll x9, x20, 1&31
	sll x19, x19, 1&31
	and x21, x21, 1
	or x9, ra, x9
	or ra, x21, x19
	srl x19, x28, 16&31
	sh x29, 18 ( fp )
	lhu x29, 6 ( fp )
	and x19, x19, 1
	add x3, x19, x3
	srl x19, x22, 14&31
	and x19, x19, 1
	sll x21, x9, 1&31
	sh x5, 22 ( fp )
	sh x7, 20 ( fp )
	and x5, x24, x23
	and x7, x24, ra
	or x19, x19, x21
	add x5, x5, x7
	sh x31, 16 ( fp )
	srl x7, x20, 15&31
	sll x31, x29, 1&31
	or x7, x7, x31
	sll x31, x19, 1&31
	srl x19, x22, 13&31
	and x19, x19, 1
	or x31, x19, x31
	srl x19, x3, 16&31
	and x19, x19, 1
	add x5, x19, x5
	sh x9, 8 ( fp )
	and x9, x24, x9
	and x19, x24, x31
	add x9, x9, x19
	lh x19, 4 ( fp )
	srl x21, x29, 15&31
	sll x22, x7, 1&31
	sh x11, 22 ( x26 )
	sll x19, x19, 1&31
	or x19, x21, x19
	srl x21, x20, 14&31
	and x21, x21, 1
	or x21, x21, x22
	srl x20, x20, 13&31
	srl x22, x5, 16&31
	sll x21, x21, 1&31
	and x20, x20, 1
	or x20, x20, x21
	and x22, x22, 1
	add x9, x22, x9
	sh x15, 20 ( x26 )
	and x11, x24, x7
	and x15, x24, x20
	add x11, x11, x15
	srl x15, x9, 16&31
	lh x21, 360 ( sp )
	and x15, x15, 1
	add x11, x15, x11
	srl x15, x29, 14&31
	sh x16, 18 ( x26 )
	and x15, x15, 1
	sll x16, x19, 1&31
	or x15, x15, x16
	srl x16, x29, 13&31
	sh x21, 308 ( sp )
	lh x21, 362 ( sp )
	sll x15, x15, 1&31
	and x16, x16, 1
	or x15, x16, x15
	srl x16, x11, 16&31
	sh x6, 16 ( x26 )
	and x16, x16, 1
	add x6, x19, x15
	sll x13, x13, 1&31
	sh x10, 22 ( fp )
	sh x12, 20 ( fp )
	sh x7, 6 ( fp )
	sh x11, 6 ( fp )
	add x16, x16, x6
	add x10, sp, 334
	mv x11, fp
	add x12, sp, 176
	sh x13, 24 ( fp )
	sh x27, 14 ( fp )
	sh x25, 12 ( fp )
	sh x23, 10 ( fp )
	sh x19, 4 ( fp )
	sh x21, 2 ( x26 )
	sh x0, 24 ( x26 )
	sh x30, 14 ( x26 )
	sh x4, 12 ( x26 )
	sh ra, 10 ( x26 )
	sh x31, 8 ( x26 )
	sh x20, 6 ( x26 )
	sh x15, 312 ( sp )
	sh x13, 24 ( fp )
	sh x14, 18 ( fp )
	sh x17, 16 ( fp )
	sh x28, 14 ( fp )
	sh x3, 12 ( fp )
	sh x5, 10 ( fp )
	sh x9, 8 ( fp )
	sh x16, 4 ( fp )
	jal eiremain
	lb x10, 252 ( sp )
	lw x15, 96 ( sp )               //  4-byte Folded Reload
	add x18, x18, -1
	add x10, x10, 48
	sb x10, 0 ( x15 )
	add x15, x15, 1
	bltu x0, x18, .LBB0_175
.LBB0_176:                              //  %for.end320.i.loopexit
	lhu x10, 252 ( sp )
	lw x21, 84 ( sp )               //  4-byte Folded Reload
	lw x9, 80 ( sp )                //  4-byte Folded Reload
	lw x22, 76 ( sp )               //  4-byte Folded Reload
	lw x23, 72 ( sp )               //  4-byte Folded Reload
	lw x25, 68 ( sp )               //  4-byte Folded Reload
	lw x26, 64 ( sp )               //  4-byte Folded Reload
	lw x20, 52 ( sp )               //  4-byte Folded Reload
	mv x19, x0
	mv x27, x0
	mv x24, fp
	add x18, x15, -1
	sltiu x11, x10, 5
	beq x0, x11, .LBB0_166
	jal x0, .LBB0_187
.LBB0_180:                              //  %if.end13.i.i
	add x10, sp, 334
	mv x11, x10
	lh x10, 8 ( x24 )
	mv fp, x15
	sh x12, 16 ( x11 )
	sh x10, 14 ( x11 )
	lh x10, 10 ( x24 )
	sh x10, 12 ( x11 )
	lh x10, 12 ( x24 )
	sh x10, 10 ( x11 )
	lh x10, 14 ( x24 )
	sh x10, 8 ( x11 )
	lh x10, 16 ( x24 )
	sh x10, 6 ( x11 )
	lh x10, 18 ( x24 )
	sh x10, 4 ( x11 )
	lh x10, 20 ( x24 )
	sh x10, 336 ( sp )
	lh x10, 382 ( sp )
	sh x10, 334 ( sp )
	jal x0, .LBB0_184
.LBB0_181:
	mv x18, x15
	jal x0, .LBB0_187
.LBB0_182:                              //  %if.end12.i.i
	lw x11, 56 ( sp )               //  4-byte Folded Reload
	sh x0, 16 ( x13 )
	or x10, x11, x10
.LBB0_183:                              //  %emovo.exit.i
	sh x10, 352 ( sp )
.LBB0_184:                              //  %emovo.exit.i
	lui x11, %hi( ezero )
	add x10, sp, 334
	add x11, x11, %lo( ezero )
	jal ecmp
	mv x15, fp
	beq x0, x10, .LBB0_249
.LBB0_185:                              //  %roun.preheader.i
	add x11, x15, -2
	beq x0, x19, .LBB0_242
.LBB0_186:                              //  %if.then358.i
	add x10, x0, 49
	add x20, x20, 1
	sb x10, 0 ( x11 )
.LBB0_187:                              //  %doexp.i
	lw fp, 60 ( sp )                //  4-byte Folded Reload
.LBB0_188:                              //  %doexp.i
	lui x10, %hi( .str.6 )
	add x10, x10, %lo( .str.6 )
	sw x10, 4 ( sp )
	sw x20, 8 ( sp )
	sw x18, 0 ( sp )
	jal sprintf
.LBB0_189:                              //  %etoasc.exit
	add x10, sp, 176
	sw fp, 4 ( x10 )
	lhu x10, 274 ( sp )
	lw x11, 88 ( sp )               //  4-byte Folded Reload
	add x18, sp, 118
	sw x20, 192 ( sp )
	and x10, x11, x10
	bne x10, x11, .LBB0_207
.LBB0_190:                              //  %for.body.preheader.i.i216
	lhu x10, 256 ( sp )
	bltu x0, x10, .LBB0_206
.LBB0_191:                              //  %for.inc.i.i219
	lhu x10, 258 ( sp )
	bltu x0, x10, .LBB0_206
.LBB0_192:                              //  %for.inc.1.i.i222
	lhu x10, 260 ( sp )
	bltu x0, x10, .LBB0_199
.LBB0_193:                              //  %for.inc.2.i.i225
	lhu x10, 262 ( sp )
	bltu x0, x10, .LBB0_199
.LBB0_194:                              //  %for.inc.3.i.i228
	lhu x10, 264 ( sp )
	bltu x0, x10, .LBB0_199
.LBB0_195:                              //  %for.inc.4.i.i231
	lhu x10, 266 ( sp )
	bltu x0, x10, .LBB0_199
.LBB0_196:                              //  %for.inc.5.i.i234
	lhu x10, 268 ( sp )
	bltu x0, x10, .LBB0_199
.LBB0_197:                              //  %for.inc.6.i.i237
	lhu x10, 270 ( sp )
	bltu x0, x10, .LBB0_199
.LBB0_198:                              //  %eisinf.exit
	lhu x10, 272 ( sp )
	beq x0, x10, .LBB0_206
.LBB0_199:                              //  %for.inc.1.i
	lhu x10, 260 ( sp )
	bltu x0, x10, .LBB0_206
.LBB0_200:                              //  %for.inc.2.i
	lhu x10, 262 ( sp )
	bltu x0, x10, .LBB0_206
.LBB0_201:                              //  %for.inc.3.i
	lhu x10, 264 ( sp )
	bltu x0, x10, .LBB0_206
.LBB0_202:                              //  %for.inc.4.i
	lhu x10, 266 ( sp )
	bltu x0, x10, .LBB0_206
.LBB0_203:                              //  %for.inc.5.i
	lhu x10, 268 ( sp )
	bltu x0, x10, .LBB0_206
.LBB0_204:                              //  %for.inc.6.i
	lhu x10, 270 ( sp )
	bltu x0, x10, .LBB0_206
.LBB0_205:                              //  %eisnan.exit
	lhu x10, 272 ( sp )
	beq x0, x10, .LBB0_207
.LBB0_206:                              //  %if.then28
	lui x10, %hi( 9999 )
	add x10, x10, %lo( 9999 )
	sw x10, 0 ( x22 )
	jal x0, .LBB0_214
.LBB0_207:                              //  %if.end29
	add x10, x20, 1
	sw x10, 0 ( x22 )
	add x10, x27, x18
	lbu x10, 0 ( x10 )
	beq x0, x10, .LBB0_212
.LBB0_208:                              //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	xor x10, x10, 46
	beq x0, x10, .LBB0_210
.LBB0_209:                              //  %if.end37
                                        //    in Loop: Header=BB0_208 Depth=1
	add x27, x27, 1
	add x10, x27, x18
	lbu x10, 0 ( x10 )
	bltu x0, x10, .LBB0_208
	jal x0, .LBB0_212
.LBB0_210:                              //  %while.body42
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x27, x18
	lbu x11, 1 ( x10 )
	add x27, x27, 1
	sb x11, 0 ( x10 )
	bltu x0, x11, .LBB0_210
	jal x0, .LBB0_212
.LBB0_211:                              //  %while.cond45
                                        //    in Loop: Header=BB0_212 Depth=1
	add x11, x27, x18
	lbu x11, 0 ( x11 )
	mv x27, x10
	xor x11, x11, 69
	beq x0, x11, .LBB0_213
.LBB0_212:                              //  %while.cond45
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x27, -1
	blt x0, x27, .LBB0_211
.LBB0_213:                              //  %while.end54
	add x10, x10, x18
	sb x0, 1 ( x10 )
.LBB0_214:                              //  %while.cond56.preheader
	lw x19, 468 ( sp )
	add x10, sp, 119
	lbu x11, -1 ( x10 )
	xor x12, x11, 32
	bltu x0, x12, .LBB0_216
.LBB0_215:                              //  %while.body63
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x10, 1
	lbu x11, -1 ( x10 )
	xor x12, x11, 32
	beq x0, x12, .LBB0_215
.LBB0_216:                              //  %while.cond56
	xor x12, x11, 45
	beq x0, x12, .LBB0_215
.LBB0_217:                              //  %while.cond67.preheader
	sb x11, 118 ( sp )
	beq x0, x11, .LBB0_221
.LBB0_218:                              //  %while.cond67thread-pre-split.preheader
	mv x11, x0
	add x12, sp, 118
.LBB0_219:                              //  %while.cond67thread-pre-split
                                        //  =>This Inner Loop Header: Depth=1
	add x14, x11, x10
	lbu x14, 0 ( x14 )
	add x13, x11, x12
	add x11, x11, 1
	sb x14, 1 ( x13 )
	bltu x0, x14, .LBB0_219
.LBB0_220:                              //  %while.end74.loopexit
	add x18, x11, x12
.LBB0_221:                              //  %while.end74
	xor x10, x23, 2
	bltu x0, x10, .LBB0_223
.LBB0_222:
	seqz x10, x0
	lbu x11, -1 ( x18 )
	xor x11, x11, 48
	beq x0, x11, .LBB0_226
	jal x0, .LBB0_229
.LBB0_223:                              //  %if.else79
	lw x11, 192 ( sp )
	mv x10, x26
	blt x11, x26, .LBB0_225
.LBB0_224:                              //  %if.else79
	mv x10, x11
.LBB0_225:                              //  %if.end87
	lbu x11, -1 ( x18 )
	xor x11, x11, 48
	bltu x0, x11, .LBB0_229
.LBB0_226:                              //  %land.rhs93.lr.ph
	add x11, sp, 118
.LBB0_227:                              //  %land.rhs93
                                        //  =>This Inner Loop Header: Depth=1
	sub x12, x18, x11
	bge x10, x12, .LBB0_229
.LBB0_228:                              //  %while.body98
                                        //    in Loop: Header=BB0_227 Depth=1
	lbu x12, -2 ( x18 )
	sb x0, -1 ( x18 )
	add x18, x18, -1
	xor x12, x12, 48
	beq x0, x12, .LBB0_227
.LBB0_229:                              //  %while.end100
	bltu x0, x25, .LBB0_232
.LBB0_230:                              //  %land.lhs.true
	lw x10, 192 ( sp )
	add x10, x26, x10
	blt x10, x0, .LBB0_236
.LBB0_231:                              //  %land.lhs.true.if.then112_crit_edge
	lw x10, 0 ( x22 )
	jal x0, .LBB0_237
.LBB0_232:                              //  %if.else115
	add x10, x9, 9
	sltiu x11, x10, 24
	sw x0, 68 ( x21 )
	bltu x0, x11, .LBB0_238
.LBB0_233:                              //  %for.body.preheader
	add x12, x0, 4
	mv x11, x0
.LBB0_234:                              //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	sll x12, x12, 1&31
	add x11, x11, 1
	add x13, x12, 20
	bgeu x10, x13, .LBB0_234
.LBB0_235:                              //  %for.cond.for.end_crit_edge
	sw x11, 68 ( x21 )
	mv x10, x21
	jal _Balloc
	mv x9, x10
	bltu x0, x9, .LBB0_239
.LBB0_252:                              //  %if.then129
	lui x10, %hi( .str )
	lui x11, %hi( 2926 )
	lui x13, %hi( .str.1 )
	add x10, x10, %lo( .str )
	add x11, x11, %lo( 2926 )
	mv x12, x0
	add x13, x13, %lo( .str.1 )
	jal __assert_func
.LBB0_236:                              //  %if.then107
	mv x10, x0
	add x18, sp, 118
	sw x0, 0 ( x22 )
	sb x0, 118 ( sp )
.LBB0_237:                              //  %if.then112
	add x10, x10, x9
	add x10, x10, 3
	sltiu x11, x10, 24
	sw x0, 68 ( x21 )
	beq x0, x11, .LBB0_233
.LBB0_238:
	mv x11, x0
	mv x10, x21
	jal _Balloc
	mv x9, x10
	beq x0, x9, .LBB0_252
.LBB0_239:                              //  %if.end130
	add fp, sp, 118
	mv x10, x9
	mv x11, fp
	sw x9, 64 ( x21 )
	jal strcpy
	beq x0, x19, .LBB0_241
.LBB0_240:                              //  %if.then136
	sub x10, x18, fp
	add x10, x10, x9
	sw x10, 0 ( x19 )
.LBB0_241:                              //  %if.end142
	mv x10, x9
	lw fp, 412 ( sp )               //  4-byte Folded Reload
	lw x27, 416 ( sp )              //  4-byte Folded Reload
	lw x26, 420 ( sp )              //  4-byte Folded Reload
	lw x25, 424 ( sp )              //  4-byte Folded Reload
	lw x24, 428 ( sp )              //  4-byte Folded Reload
	lw x23, 432 ( sp )              //  4-byte Folded Reload
	lw x22, 436 ( sp )              //  4-byte Folded Reload
	lw x21, 440 ( sp )              //  4-byte Folded Reload
	lw x20, 444 ( sp )              //  4-byte Folded Reload
	lw x19, 448 ( sp )              //  4-byte Folded Reload
	lw x18, 452 ( sp )              //  4-byte Folded Reload
	lw x9, 456 ( sp )               //  4-byte Folded Reload
	lw ra, 460 ( sp )               //  4-byte Folded Reload
	add sp, sp, 464
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_242:                              //  %roun.preheader.i.if.else360.preheader.i_crit_edge
	lbu x10, 0 ( x11 )
.LBB0_243:                              //  %if.else360.preheader.i
	lw fp, 60 ( sp )                //  4-byte Folded Reload
	and x12, x10, 127
	xor x13, x12, 46
	mv x10, x18
	beq x0, x13, .LBB0_247
.LBB0_244:                              //  %if.end374.i.preheader
	add x10, x11, 1
	add x11, x0, 48
.LBB0_245:                              //  %if.end374.i
                                        //  =>This Inner Loop Header: Depth=1
	add x13, x12, 1
	and x12, x12, 255
	sltiu x12, x12, 57
	sb x13, -1 ( x10 )
	bltu x0, x12, .LBB0_188
.LBB0_246:                              //  %if.then379.i
                                        //    in Loop: Header=BB0_245 Depth=1
	lbu x12, -2 ( x10 )
	sb x11, -1 ( x10 )
	add x10, x10, -1
	and x12, x12, 127
	xor x13, x12, 46
	bltu x0, x13, .LBB0_245
.LBB0_247:                              //  %if.then363.i
	lb x11, -2 ( x10 )
	add x12, x11, 1
	slti x11, x11, 57
	sb x12, -2 ( x10 )
	bltu x0, x11, .LBB0_188
.LBB0_248:                              //  %if.then370.i
	add x11, x0, 49
	sb x11, -2 ( x10 )
	add x20, x20, 1
	jal x0, .LBB0_188
.LBB0_249:                              //  %if.end337.i
	bltu x0, x19, .LBB0_187
.LBB0_250:                              //  %lor.lhs.false.i
	lbu x10, -2 ( x15 )
	add x11, x15, -2
	xor x12, x10, 46
	seqz x12, x12
	sub x12, x11, x12
	lbu x12, 0 ( x12 )
	and x12, x12, 1
	beq x0, x12, .LBB0_187
	jal x0, .LBB0_243
.LBB0_251:
	sw x21, 84 ( sp )               //  4-byte Folded Spill
	mv x21, x0
	mv x14, x18
	sw fp, 60 ( sp )                //  4-byte Folded Spill
	sw x26, 64 ( sp )               //  4-byte Folded Spill
	sw x25, 68 ( sp )               //  4-byte Folded Spill
	sw x23, 72 ( sp )               //  4-byte Folded Spill
	sw x22, 76 ( sp )               //  4-byte Folded Spill
	mv x22, x21
	mv x26, x21
	mv x25, x21
	mv fp, x21
	mv x18, x21
	mv x27, x21
	mv x23, x21
	jal x0, .LBB0_31
.Lfunc_end0:
	.size	_ldtoa_r, .Lfunc_end0-_ldtoa_r
	.cfi_endproc
                                        //  -- End function
	.type	e113toe,@function       //  -- Begin function e113toe
e113toe:                                //  @e113toe
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw fp, 32 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x11
	lh x11, 14 ( x10 )
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18, sp, 6
	srl x12, x11, 15&31
	sh x12, 6 ( sp )
	lui x12, %hi( 32767 )
	add x9, x12, %lo( 32767 )
	and x11, x9, x11
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sh x0, 22 ( x18 )
	sh x0, 20 ( x18 )
	sh x0, 18 ( x18 )
	sh x0, 16 ( x18 )
	sh x0, 14 ( x18 )
	sh x0, 12 ( x18 )
	sh x0, 10 ( x18 )
	sh x0, 8 ( x18 )
	sh x0, 6 ( x18 )
	sh x0, 4 ( x18 )
	sh x0, 2 ( x18 )
	sh x0, 30 ( sp )
	bne x11, x9, .LBB1_4
.LBB1_1:                                //  %for.body.preheader
	lhu x11, 0 ( x10 )
	bltu x0, x11, .LBB1_3
.LBB1_2:                                //  %for.cond
	lhu x11, 2 ( x10 )
	bltu x0, x11, .LBB1_3
.LBB1_15:                               //  %for.cond.1
	lhu x11, 4 ( x10 )
	bltu x0, x11, .LBB1_3
.LBB1_16:                               //  %for.cond.2
	lhu x11, 6 ( x10 )
	bltu x0, x11, .LBB1_3
.LBB1_17:                               //  %for.cond.3
	lhu x11, 8 ( x10 )
	bltu x0, x11, .LBB1_3
.LBB1_18:                               //  %for.cond.4
	lhu x11, 10 ( x10 )
	bltu x0, x11, .LBB1_3
.LBB1_19:                               //  %for.cond.5
	lhu x11, 12 ( x10 )
	beq x0, x11, .LBB1_20
.LBB1_3:                                //  %if.then14
	lui x10, (49152>>12)&1048575
	sh x9, 18 ( fp )
	sh x10, 16 ( fp )
	sh x0, 14 ( fp )
	sh x0, 12 ( fp )
	sh x0, 10 ( fp )
	sh x0, 8 ( fp )
	sh x0, 6 ( fp )
	sh x0, 4 ( fp )
	sh x0, 2 ( fp )
	sh x0, 0 ( fp )
	jal x0, .LBB1_14
.LBB1_4:                                //  %if.end21
	lh x12, 12 ( x10 )
	sh x11, 2 ( x18 )
	sh x12, 6 ( x18 )
	lh x12, 10 ( x10 )
	sh x12, 8 ( x18 )
	lh x12, 8 ( x10 )
	sh x12, 10 ( x18 )
	lh x12, 6 ( x10 )
	sh x12, 12 ( x18 )
	lh x12, 4 ( x10 )
	sh x12, 14 ( x18 )
	lh x12, 2 ( x10 )
	lh x10, 0 ( x10 )
	sh x12, 16 ( x18 )
	sh x10, 24 ( sp )
	beq x0, x11, .LBB1_5
.LBB1_6:                                //  %if.else
	seqz x10, x0
	sh x10, 10 ( sp )
	add x10, sp, 6
	add x11, x0, -1
	jal eshift
	jal x0, .LBB1_7
.LBB1_5:                                //  %if.then35
	sh x0, 10 ( sp )
.LBB1_7:                                //  %if.end39
	lhu x11, 8 ( sp )
	lhu x12, 6 ( sp )
	mv x13, x0
	mv x10, x11
	beq x12, x13, .LBB1_9
.LBB1_8:                                //  %if.end39
	lui x10, %hi( -32768 )
	add x10, x10, %lo( -32768 )
	or x10, x10, x11
.LBB1_9:                                //  %if.end39
	sh x10, 18 ( fp )
	bne x11, x9, .LBB1_13
.LBB1_10:                               //  %for.body.preheader.i.i
	lhu x11, 6 ( x18 )
	lhu x12, 8 ( x18 )
	sh x0, 14 ( fp )
	sh x0, 12 ( fp )
	sh x0, 10 ( fp )
	or x11, x11, x12
	lhu x12, 10 ( x18 )
	sh x0, 8 ( fp )
	sh x0, 6 ( fp )
	sh x0, 4 ( fp )
	or x11, x12, x11
	lhu x12, 12 ( x18 )
	sh x0, 2 ( fp )
	sh x0, 0 ( fp )
	or x11, x12, x11
	lhu x12, 14 ( x18 )
	or x11, x12, x11
	lhu x12, 16 ( x18 )
	or x11, x12, x11
	lhu x12, 18 ( x18 )
	or x11, x12, x11
	lhu x12, 20 ( x18 )
	or x11, x12, x11
	lhu x12, 22 ( x18 )
	or x11, x12, x11
	lhu x12, 30 ( sp )
	or x11, x12, x11
	beq x0, x11, .LBB1_12
.LBB1_11:                               //  %if.then11.i
	lui x10, (49152>>12)&1048575
	sh x9, 18 ( fp )
	sh x10, 16 ( fp )
	jal x0, .LBB1_14
.LBB1_13:                               //  %if.end13.i
	lh x10, 6 ( x18 )
	sh x10, 16 ( fp )
	lh x10, 8 ( x18 )
	sh x10, 14 ( fp )
	lh x10, 10 ( x18 )
	sh x10, 12 ( fp )
	lh x10, 12 ( x18 )
	sh x10, 10 ( fp )
	lh x10, 14 ( x18 )
	sh x10, 8 ( fp )
	lh x10, 16 ( x18 )
	sh x10, 6 ( fp )
	lh x10, 18 ( x18 )
	sh x10, 4 ( fp )
	lh x10, 20 ( x18 )
	sh x10, 2 ( fp )
	lh x10, 28 ( sp )
	sh x10, 0 ( fp )
	jal x0, .LBB1_14
.LBB1_12:                               //  %if.end12.i
	or x10, x9, x10
	sh x10, 18 ( fp )
	sh x0, 16 ( fp )
.LBB1_14:                               //  %cleanup
	lw fp, 32 ( sp )                //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_20:                               //  %for.cond.6
	sh x9, 18 ( fp )
	sh x0, 16 ( fp )
	sh x0, 14 ( fp )
	sh x0, 12 ( fp )
	sh x0, 10 ( fp )
	sh x0, 8 ( fp )
	sh x0, 6 ( fp )
	sh x0, 4 ( fp )
	sh x0, 2 ( fp )
	sh x0, 0 ( fp )
	lh x10, 14 ( x10 )
	or x10, x9, x10
	sh x10, 18 ( fp )
	jal x0, .LBB1_14
.Lfunc_end1:
	.size	e113toe, .Lfunc_end1-e113toe
	.cfi_endproc
                                        //  -- End function
	.globl	_ldcheck                //  -- Begin function _ldcheck
	.type	_ldcheck,@function
_ldcheck:                               //  @_ldcheck
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	lw x11, 8 ( x10 )
	add x12, sp, 16
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x11, 8 ( x12 )
	lw x11, 4 ( x10 )
	sw x11, 4 ( x12 )
	lw x11, 12 ( x10 )
	lw x10, 0 ( x10 )
	sw x11, 28 ( sp )
	sw x10, 16 ( sp )
	add x11, sp, 34
	mv x10, x12
	jal e113toe
	lhu x11, 52 ( sp )
	lui x10, %hi( 32767 )
	add x10, x10, %lo( 32767 )
	and x11, x10, x11
	bne x11, x10, .LBB2_1
.LBB2_2:                                //  %for.body.preheader.i
	lhu x11, 34 ( sp )
	seqz x10, x0
	bltu x0, x11, .LBB2_13
.LBB2_3:                                //  %for.inc.i
	lhu x11, 36 ( sp )
	bltu x0, x11, .LBB2_13
.LBB2_4:                                //  %for.inc.1.i
	lhu x11, 38 ( sp )
	bltu x0, x11, .LBB2_13
.LBB2_5:                                //  %for.inc.2.i
	lhu x11, 40 ( sp )
	bltu x0, x11, .LBB2_13
.LBB2_6:                                //  %for.inc.3.i
	lhu x11, 42 ( sp )
	bltu x0, x11, .LBB2_13
.LBB2_7:                                //  %for.inc.4.i
	lhu x11, 44 ( sp )
	bltu x0, x11, .LBB2_13
.LBB2_8:                                //  %for.inc.5.i
	lhu x11, 46 ( sp )
	bltu x0, x11, .LBB2_13
.LBB2_9:                                //  %for.inc.6.i
	lhu x11, 48 ( sp )
	bltu x0, x11, .LBB2_13
.LBB2_10:                               //  %eisnan.exit
	lhu x10, 50 ( sp )
	mv x11, x0
	beq x10, x11, .LBB2_11
.LBB2_12:                               //  %eisnan.exit
	seqz x10, x0
	lw ra, 60 ( sp )                //  4-byte Folded Reload
	add sp, sp, 64
	.cfi_def_cfa 2, 0
	jr ra
.LBB2_1:
	mv x10, x0
.LBB2_13:                               //  %cleanup
	lw ra, 60 ( sp )                //  4-byte Folded Reload
	add sp, sp, 64
	.cfi_def_cfa 2, 0
	jr ra
.LBB2_11:
	add x10, x0, 2
	lw ra, 60 ( sp )                //  4-byte Folded Reload
	add sp, sp, 64
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	_ldcheck, .Lfunc_end2-_ldcheck
	.cfi_endproc
                                        //  -- End function
	.type	eshift,@function        //  -- Begin function eshift
eshift:                                 //  @eshift
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x12, x10
	mv x10, x0
	sw x9, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -4
	sw x18, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -8
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	beq x0, x11, .LBB3_54
.LBB3_1:                                //  %if.end
	blt x11, x0, .LBB3_27
.LBB3_2:                                //  %while.cond29.preheader
	slti x13, x11, 16
	bltu x0, x13, .LBB3_3
.LBB3_4:                                //  %while.body32.lr.ph
	lhu x16, 24 ( x12 )
	lhu x15, 22 ( x12 )
	lhu x14, 20 ( x12 )
	lhu x7, 18 ( x12 )
	lhu x29, 16 ( x12 )
	lhu x3, 14 ( x12 )
	lhu x4, 12 ( x12 )
	lhu fp, 10 ( x12 )
	lhu x9, 8 ( x12 )
	add x13, x11, -16
	slti x17, x13, 16
	bltu x0, x17, .LBB3_5
.LBB3_15:                               //  %while.body32.peel463
	add x13, x11, -32
	slti x17, x13, 16
	bltu x0, x17, .LBB3_16
.LBB3_17:                               //  %while.body32.peel467
	add x13, x11, -48
	slti x17, x13, 16
	bltu x0, x17, .LBB3_18
.LBB3_19:                               //  %while.body32.peel471
	add x13, x11, -64
	slti x17, x13, 16
	bltu x0, x17, .LBB3_20
.LBB3_21:                               //  %while.body32.peel475
	add x13, x11, -80
	slti x17, x13, 16
	bltu x0, x17, .LBB3_22
.LBB3_23:                               //  %while.body32.peel479
	add x13, x11, -96
	slti x17, x13, 16
	bltu x0, x17, .LBB3_24
.LBB3_25:                               //  %while.body32.peel483
	add x13, x11, -112
	slti x11, x13, 16
	bltu x0, x11, .LBB3_26
.LBB3_58:
	mv x11, x0
	add x17, x0, 15
.LBB3_59:                               //  %while.body32
                                        //  =>This Inner Loop Header: Depth=1
	mv x31, x14
	mv x14, x15
	mv x15, x16
	add x13, x13, -16
	mv x16, x11
	blt x17, x13, .LBB3_59
.LBB3_60:
	mv x28, x11
	mv x5, x11
	mv x17, x11
	mv x6, x11
	mv x30, x11
	mv x16, x11
	jal x0, .LBB3_6
.LBB3_27:                               //  %if.then3
	add x13, x0, -16
	blt x13, x11, .LBB3_28
.LBB3_29:                               //  %while.body.lr.ph
	sub x14, x13, x11
	lhu x17, 4 ( x12 )
	lhu x15, 6 ( x12 )
	lhu x16, 8 ( x12 )
	lhu x5, 10 ( x12 )
	lhu x31, 12 ( x12 )
	lhu x4, 14 ( x12 )
	lhu fp, 16 ( x12 )
	lhu x9, 18 ( x12 )
	lhu x29, 20 ( x12 )
	lhu x18, 22 ( x12 )
	lhu x13, 24 ( x12 )
	slti x6, x14, 16
	bltu x0, x6, .LBB3_30
.LBB3_31:                               //  %while.body.peel432
	add x14, x0, -32
	sub x14, x14, x11
	or x13, x13, x18
	slti x6, x14, 16
	bltu x0, x6, .LBB3_32
.LBB3_33:                               //  %while.body.peel437
	add x14, x0, -48
	sub x14, x14, x11
	or x13, x13, x29
	slti x6, x14, 16
	bltu x0, x6, .LBB3_34
.LBB3_35:                               //  %while.body.peel442
	add x14, x0, -64
	sub x14, x14, x11
	or x13, x13, x9
	slti x6, x14, 16
	bltu x0, x6, .LBB3_36
.LBB3_37:                               //  %while.body.peel447
	add x14, x0, -80
	sub x14, x14, x11
	or x13, x13, fp
	slti x6, x14, 16
	bltu x0, x6, .LBB3_38
.LBB3_39:                               //  %while.body.peel452
	add x14, x0, -96
	sub x14, x14, x11
	or x13, x13, x4
	slti x6, x14, 16
	bltu x0, x6, .LBB3_40
.LBB3_41:                               //  %while.body.peel457
	add x14, x0, -112
	sub x14, x14, x11
	or x13, x13, x31
	slti x11, x14, 16
	bltu x0, x11, .LBB3_42
.LBB3_55:
	mv x11, x0
	add x6, x0, 15
.LBB3_56:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x29, x16
	mv x16, x15
	mv x15, x17
	or x13, x13, x5
	add x14, x14, -16
	mv x17, x11
	mv x5, x29
	blt x6, x14, .LBB3_56
.LBB3_57:
	mv x30, x11
	mv x7, x11
	mv x6, x11
	mv x28, x11
	mv x3, x11
	mv x17, x11
	jal x0, .LBB3_43
.LBB3_3:
	mv x13, x11
	slti x11, x13, 8
	beq x0, x11, .LBB3_8
	jal x0, .LBB3_11
.LBB3_28:
	mv x13, x0
	sub x14, x0, x11
	slti x11, x14, 8
	beq x0, x11, .LBB3_45
	jal x0, .LBB3_48
.LBB3_5:
	lhu x31, 6 ( x12 )
	mv x11, x16
	mv x17, x15
	mv x5, x14
	mv x6, x7
	mv x28, x29
	mv x30, x3
	mv x16, x4
	mv x15, fp
	mv x14, x9
	jal x0, .LBB3_6
.LBB3_30:
	mv x11, x17
	mv x6, x15
	mv x7, x16
	mv x16, x29
	mv x28, x5
	mv x30, x31
	mv x3, x4
	mv x17, fp
	mv x15, x9
	mv x29, x18
	jal x0, .LBB3_43
.LBB3_16:
	mv x17, x16
	mv x5, x15
	mv x6, x14
	mv x11, x0
	mv x28, x7
	mv x30, x29
	mv x16, x3
	mv x15, x4
	mv x14, fp
	mv x31, x9
	jal x0, .LBB3_6
.LBB3_32:
	mv x6, x17
	mv x7, x15
	mv x28, x16
	mv x11, x0
	mv x30, x5
	mv x3, x31
	mv x17, x4
	mv x15, fp
	mv x16, x9
	jal x0, .LBB3_43
.LBB3_18:
	mv x11, x0
	mv x5, x16
	mv x6, x15
	mv x28, x14
	mv x17, x11
	mv x30, x7
	mv x16, x29
	mv x15, x3
	mv x14, x4
	mv x31, fp
	jal x0, .LBB3_6
.LBB3_34:
	mv x11, x0
	mv x7, x17
	mv x28, x15
	mv x30, x16
	mv x6, x11
	mv x3, x5
	mv x17, x31
	mv x15, x4
	mv x16, fp
	mv x29, x9
	jal x0, .LBB3_43
.LBB3_20:
	mv x17, x0
	mv x6, x16
	mv x28, x15
	mv x30, x14
	mv x11, x17
	mv x5, x17
	mv x16, x7
	mv x15, x29
	mv x14, x3
	mv x31, x4
	jal x0, .LBB3_6
.LBB3_36:
	mv x6, x0
	mv x28, x17
	mv x30, x15
	mv x3, x16
	mv x11, x6
	mv x7, x6
	mv x17, x5
	mv x15, x31
	mv x16, x4
	mv x29, fp
	jal x0, .LBB3_43
.LBB3_22:
	mv x5, x0
	mv x28, x16
	mv x30, x15
	mv x16, x14
	mv x17, x5
	mv x11, x5
	mv x6, x5
	mv x15, x7
	mv x14, x29
	mv x31, x3
	jal x0, .LBB3_6
.LBB3_38:
	mv x7, x0
	mv x30, x17
	mv x3, x15
	mv x17, x16
	mv x6, x7
	mv x11, x7
	mv x28, x7
	mv x15, x5
	mv x16, x31
	mv x29, x4
	jal x0, .LBB3_43
.LBB3_24:
	mv x6, x0
	mv x30, x16
	mv x16, x15
	mv x15, x14
	mv x5, x6
	mv x17, x6
	mv x11, x6
	mv x28, x6
	mv x14, x7
	mv x31, x29
	jal x0, .LBB3_6
.LBB3_40:
	mv x28, x0
	mv x3, x17
	mv x17, x15
	mv x15, x16
	mv x7, x28
	mv x6, x28
	mv x11, x28
	mv x30, x28
	mv x16, x5
	mv x29, x31
	jal x0, .LBB3_43
.LBB3_26:
	mv x28, x0
	mv x6, x28
	mv x5, x28
	mv x17, x28
	mv x11, x28
	mv x30, x28
	mv x31, x7
.LBB3_6:                                //  %while.cond29.while.cond35.preheader_crit_edge
	sh x11, 22 ( x12 )
	sh x17, 20 ( x12 )
	sh x5, 18 ( x12 )
	sh x6, 16 ( x12 )
	sh x28, 14 ( x12 )
	sh x30, 12 ( x12 )
	sh x16, 10 ( x12 )
	sh x15, 8 ( x12 )
	sh x31, 4 ( x12 )
	sh x14, 6 ( x12 )
	sh x0, 24 ( x12 )
	slti x11, x13, 8
	bltu x0, x11, .LBB3_11
.LBB3_8:                                //  %while.body38.lr.ph
	lhu x11, 4 ( x12 )
	lhu x14, 6 ( x12 )
	lhu x15, 8 ( x12 )
	lhu x16, 10 ( x12 )
	lhu x17, 12 ( x12 )
	lhu x5, 14 ( x12 )
	lhu x6, 16 ( x12 )
	lhu x7, 18 ( x12 )
	lhu x28, 20 ( x12 )
	lhu x30, 22 ( x12 )
	lhu x29, 24 ( x12 )
	lui x31, %hi( 65280 )
	add x31, x31, %lo( 65280 )
	add x3, x0, 7
.LBB3_9:                                //  %while.body38
                                        //  =>This Inner Loop Header: Depth=1
	and x4, x31, x14
	srl x4, x4, 8&31
	sll x11, x11, 8&31
	or x11, x4, x11
	and x4, x31, x15
	srl x4, x4, 8&31
	sll x14, x14, 8&31
	or x14, x4, x14
	and x4, x31, x16
	srl x4, x4, 8&31
	sll x15, x15, 8&31
	or x15, x4, x15
	and x4, x31, x17
	srl x4, x4, 8&31
	sll x16, x16, 8&31
	or x16, x4, x16
	and x4, x31, x5
	srl x4, x4, 8&31
	sll x17, x17, 8&31
	or x17, x4, x17
	and x4, x31, x6
	srl x4, x4, 8&31
	sll x5, x5, 8&31
	or x5, x4, x5
	and x4, x31, x7
	srl x4, x4, 8&31
	sll x6, x6, 8&31
	or x6, x4, x6
	and x4, x31, x28
	srl x4, x4, 8&31
	sll x7, x7, 8&31
	or x7, x4, x7
	and x4, x31, x30
	srl x4, x4, 8&31
	sll x28, x28, 8&31
	or x28, x4, x28
	and x4, x31, x29
	srl x4, x4, 8&31
	sll x30, x30, 8&31
	or x30, x4, x30
	sll x29, x29, 8&31
	add x13, x13, -8
	blt x3, x13, .LBB3_9
.LBB3_10:                               //  %while.cond35.while.cond41.preheader_crit_edge
	sh x30, 22 ( x12 )
	sh x29, 24 ( x12 )
	sh x28, 20 ( x12 )
	sh x7, 18 ( x12 )
	sh x6, 16 ( x12 )
	sh x5, 14 ( x12 )
	sh x17, 12 ( x12 )
	sh x16, 10 ( x12 )
	sh x15, 8 ( x12 )
	sh x14, 6 ( x12 )
	sh x11, 4 ( x12 )
.LBB3_11:                               //  %while.cond41.preheader
	bge x0, x13, .LBB3_54
.LBB3_12:                               //  %while.body44.lr.ph
	lhu x11, 4 ( x12 )
	lhu x14, 6 ( x12 )
	lhu x15, 8 ( x12 )
	lhu x16, 10 ( x12 )
	lhu x17, 12 ( x12 )
	lhu x5, 14 ( x12 )
	lhu x6, 16 ( x12 )
	lhu x7, 18 ( x12 )
	lhu x28, 20 ( x12 )
	lhu x30, 22 ( x12 )
	lhu x29, 24 ( x12 )
	lui x31, (32768>>12)&1048575
.LBB3_13:                               //  %while.body44
                                        //  =>This Inner Loop Header: Depth=1
	and x3, x31, x14
	srl x3, x3, 15&31
	sll x11, x11, 1&31
	or x11, x3, x11
	and x3, x31, x15
	srl x3, x3, 15&31
	sll x14, x14, 1&31
	or x14, x3, x14
	and x3, x31, x16
	srl x3, x3, 15&31
	sll x15, x15, 1&31
	or x15, x3, x15
	and x3, x31, x17
	srl x3, x3, 15&31
	sll x16, x16, 1&31
	or x16, x3, x16
	and x3, x31, x5
	srl x3, x3, 15&31
	sll x17, x17, 1&31
	or x17, x3, x17
	and x3, x31, x6
	srl x3, x3, 15&31
	sll x5, x5, 1&31
	or x5, x3, x5
	and x3, x31, x7
	srl x3, x3, 15&31
	sll x6, x6, 1&31
	or x6, x3, x6
	and x3, x31, x28
	srl x3, x3, 15&31
	sll x7, x7, 1&31
	or x7, x3, x7
	and x3, x31, x30
	srl x3, x3, 15&31
	sll x28, x28, 1&31
	or x28, x3, x28
	and x3, x31, x29
	srl x3, x3, 15&31
	sll x30, x30, 1&31
	or x30, x3, x30
	sll x29, x29, 1&31
	add x13, x13, -1
	blt x0, x13, .LBB3_13
.LBB3_14:                               //  %while.cond41.if.end47.thread.loopexit_crit_edge
	sh x30, 22 ( x12 )
	sh x29, 24 ( x12 )
	sh x28, 20 ( x12 )
	sh x7, 18 ( x12 )
	sh x6, 16 ( x12 )
	sh x5, 14 ( x12 )
	sh x17, 12 ( x12 )
	sh x16, 10 ( x12 )
	sh x15, 8 ( x12 )
	sh x14, 6 ( x12 )
	sh x11, 4 ( x12 )
	jal x0, .LBB3_54
.LBB3_42:
	mv x30, x0
	mv x28, x30
	mv x7, x30
	mv x6, x30
	mv x11, x30
	mv x3, x30
	mv x29, x5
.LBB3_43:                               //  %while.cond.while.cond8.preheader_crit_edge
	sh x16, 22 ( x12 )
	sh x29, 24 ( x12 )
	sh x15, 20 ( x12 )
	sh x17, 18 ( x12 )
	sh x3, 16 ( x12 )
	sh x30, 14 ( x12 )
	sh x28, 12 ( x12 )
	sh x7, 10 ( x12 )
	sh x6, 8 ( x12 )
	sh x11, 6 ( x12 )
	sh x0, 4 ( x12 )
	slti x11, x14, 8
	bltu x0, x11, .LBB3_48
.LBB3_45:                               //  %while.body11.lr.ph
	lhu x15, 22 ( x12 )
	lhu x16, 20 ( x12 )
	lhu x17, 18 ( x12 )
	lhu x5, 16 ( x12 )
	lhu x6, 14 ( x12 )
	lhu x7, 12 ( x12 )
	lhu x28, 10 ( x12 )
	lhu x29, 8 ( x12 )
	lhu x30, 6 ( x12 )
	lhu x11, 4 ( x12 )
	lhu x4, 24 ( x12 )
	lui x31, %hi( 65280 )
	add x31, x31, %lo( 65280 )
	add x3, x0, 7
.LBB3_46:                               //  %while.body11
                                        //  =>This Inner Loop Header: Depth=1
	and fp, x31, x4
	sll x9, x15, 8&31
	and x15, x31, x15
	srl fp, fp, 8&31
	or fp, fp, x9
	sll x9, x16, 8&31
	and x16, x31, x16
	srl x15, x15, 8&31
	or x15, x9, x15
	sll x9, x17, 8&31
	and x17, x31, x17
	srl x16, x16, 8&31
	or x16, x9, x16
	sll x9, x5, 8&31
	and x5, x31, x5
	srl x17, x17, 8&31
	or x17, x9, x17
	sll x9, x6, 8&31
	and x6, x31, x6
	srl x5, x5, 8&31
	or x5, x9, x5
	sll x9, x7, 8&31
	and x7, x31, x7
	srl x6, x6, 8&31
	or x6, x9, x6
	sll x9, x28, 8&31
	and x28, x31, x28
	srl x7, x7, 8&31
	or x7, x9, x7
	sll x9, x29, 8&31
	and x29, x31, x29
	srl x28, x28, 8&31
	or x28, x9, x28
	sll x9, x30, 8&31
	and x30, x31, x30
	srl x29, x29, 8&31
	or x29, x9, x29
	sll x9, x11, 8&31
	and x11, x31, x11
	and x4, x4, 255
	srl x30, x30, 8&31
	or x13, x13, x4
	or x30, x9, x30
	srl x11, x11, 8&31
	add x14, x14, -8
	mv x4, fp
	blt x3, x14, .LBB3_46
.LBB3_47:                               //  %while.cond8.while.cond18.preheader_crit_edge
	sh x15, 22 ( x12 )
	sh x16, 20 ( x12 )
	sh x17, 18 ( x12 )
	sh x5, 16 ( x12 )
	sh x6, 14 ( x12 )
	sh x7, 12 ( x12 )
	sh x28, 10 ( x12 )
	sh x29, 8 ( x12 )
	sh x30, 6 ( x12 )
	sh x11, 4 ( x12 )
	sh fp, 24 ( x12 )
.LBB3_48:                               //  %while.cond18.preheader
	bge x0, x14, .LBB3_52
.LBB3_49:                               //  %while.body21.lr.ph
	lhu x15, 22 ( x12 )
	lhu x16, 20 ( x12 )
	lhu x17, 18 ( x12 )
	lhu x5, 16 ( x12 )
	lhu x6, 14 ( x12 )
	lhu x7, 12 ( x12 )
	lhu x28, 10 ( x12 )
	lhu x29, 8 ( x12 )
	lhu x30, 6 ( x12 )
	lhu x11, 4 ( x12 )
	lhu x3, 24 ( x12 )
	lui x31, %hi( 65534 )
	add x31, x31, %lo( 65534 )
.LBB3_50:                               //  %while.body21
                                        //  =>This Inner Loop Header: Depth=1
	and x4, x31, x3
	sll fp, x15, 15&31
	and x15, x31, x15
	srl x4, x4, 1&31
	or x4, x4, fp
	sll fp, x16, 15&31
	and x16, x31, x16
	srl x15, x15, 1&31
	or x15, fp, x15
	sll fp, x17, 15&31
	and x17, x31, x17
	srl x16, x16, 1&31
	or x16, fp, x16
	sll fp, x5, 15&31
	and x5, x31, x5
	srl x17, x17, 1&31
	or x17, fp, x17
	sll fp, x6, 15&31
	and x6, x31, x6
	srl x5, x5, 1&31
	or x5, fp, x5
	sll fp, x7, 15&31
	and x7, x31, x7
	srl x6, x6, 1&31
	or x6, fp, x6
	sll fp, x28, 15&31
	and x28, x31, x28
	srl x7, x7, 1&31
	or x7, fp, x7
	sll fp, x29, 15&31
	and x29, x31, x29
	srl x28, x28, 1&31
	or x28, fp, x28
	sll fp, x30, 15&31
	and x30, x31, x30
	srl x29, x29, 1&31
	or x29, fp, x29
	sll fp, x11, 15&31
	and x11, x31, x11
	and x3, x3, 1
	srl x30, x30, 1&31
	or x13, x13, x3
	or x30, fp, x30
	srl x11, x11, 1&31
	add x14, x14, -1
	mv x3, x4
	blt x0, x14, .LBB3_50
.LBB3_51:                               //  %while.cond18.if.end47_crit_edge
	sh x15, 22 ( x12 )
	sh x16, 20 ( x12 )
	sh x17, 18 ( x12 )
	sh x5, 16 ( x12 )
	sh x6, 14 ( x12 )
	sh x7, 12 ( x12 )
	sh x28, 10 ( x12 )
	sh x29, 8 ( x12 )
	sh x30, 6 ( x12 )
	sh x11, 4 ( x12 )
	sh x4, 24 ( x12 )
.LBB3_52:                               //  %if.end47
	lui x11, %hi( 65535 )
	add x11, x11, %lo( 65535 )
	and x11, x11, x13
	beq x0, x11, .LBB3_54
.LBB3_53:
	seqz x10, x0
.LBB3_54:                               //  %cleanup
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x18, 8 ( sp )                //  4-byte Folded Reload
	lw x9, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end3:
	.size	eshift, .Lfunc_end3-eshift
	.cfi_endproc
                                        //  -- End function
	.type	ecmp,@function          //  -- Begin function ecmp
ecmp:                                   //  @ecmp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -96
	.cfi_adjust_cfa_offset 96
	mv x12, x10
	lhu x15, 18 ( x12 )
	lui x10, %hi( 32767 )
	add x16, x10, %lo( 32767 )
	sw x9, 92 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -4
	and x13, x16, x15
	sw x18, 88 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -8
	sw x19, 84 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -12
	sw x20, 80 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -16
	sw x21, 76 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -20
	sw x22, 72 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -24
	sw x23, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -28
	sw x24, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -32
	sw x25, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -36
	sw fp, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -40
	bne x13, x16, .LBB4_10
.LBB4_1:                                //  %for.body.preheader.i
	lhu x14, 0 ( x12 )
	add x10, x0, -2
	bltu x0, x14, .LBB4_55
.LBB4_2:                                //  %for.inc.i
	lhu x14, 2 ( x12 )
	bltu x0, x14, .LBB4_55
.LBB4_3:                                //  %for.inc.1.i
	lhu x14, 4 ( x12 )
	bltu x0, x14, .LBB4_55
.LBB4_4:                                //  %for.inc.2.i
	lhu x14, 6 ( x12 )
	bltu x0, x14, .LBB4_55
.LBB4_5:                                //  %for.inc.3.i
	lhu x14, 8 ( x12 )
	bltu x0, x14, .LBB4_55
.LBB4_6:                                //  %for.inc.4.i
	lhu x14, 10 ( x12 )
	bltu x0, x14, .LBB4_55
.LBB4_7:                                //  %for.inc.5.i
	lhu x14, 12 ( x12 )
	bltu x0, x14, .LBB4_55
.LBB4_8:                                //  %for.inc.6.i
	lhu x14, 14 ( x12 )
	bltu x0, x14, .LBB4_55
.LBB4_9:                                //  %eisnan.exit
	lhu x14, 16 ( x12 )
	bltu x0, x14, .LBB4_55
.LBB4_10:                               //  %lor.lhs.false
	lhu x17, 18 ( x11 )
	and x14, x16, x17
	bne x14, x16, .LBB4_20
.LBB4_11:                               //  %for.body.preheader.i162
	lhu x5, 0 ( x11 )
	add x10, x0, -2
	bltu x0, x5, .LBB4_55
.LBB4_12:                               //  %for.inc.i165
	lhu x5, 2 ( x11 )
	bltu x0, x5, .LBB4_55
.LBB4_13:                               //  %for.inc.1.i170
	lhu x5, 4 ( x11 )
	bltu x0, x5, .LBB4_55
.LBB4_14:                               //  %for.inc.2.i173
	lhu x5, 6 ( x11 )
	bltu x0, x5, .LBB4_55
.LBB4_15:                               //  %for.inc.3.i176
	lhu x5, 8 ( x11 )
	bltu x0, x5, .LBB4_55
.LBB4_16:                               //  %for.inc.4.i179
	lhu x5, 10 ( x11 )
	bltu x0, x5, .LBB4_55
.LBB4_17:                               //  %for.inc.5.i182
	lhu x5, 12 ( x11 )
	bltu x0, x5, .LBB4_55
.LBB4_18:                               //  %for.inc.6.i185
	lhu x5, 14 ( x11 )
	bltu x0, x5, .LBB4_55
.LBB4_19:                               //  %eisnan.exit190
	lhu x5, 16 ( x11 )
	bltu x0, x5, .LBB4_55
.LBB4_20:                               //  %if.end
	sll x10, x15, 16&31
	sra x5, x10, 31&31
	sh x5, 30 ( sp )
	sh x13, 32 ( sp )
	bne x13, x16, .LBB4_30
.LBB4_21:                               //  %for.body.preheader.i.i96
	lhu x10, 2 ( x12 )
	lhu x6, 0 ( x12 )
	or x7, x10, x6
	bltu x0, x7, .LBB4_29
.LBB4_22:                               //  %for.inc.1.i.i102
	lhu x7, 4 ( x12 )
	mv x10, x0
	bltu x0, x7, .LBB4_29
.LBB4_23:                               //  %for.inc.2.i.i105
	lhu x7, 6 ( x12 )
	bltu x0, x7, .LBB4_29
.LBB4_24:                               //  %for.inc.3.i.i108
	lhu x7, 8 ( x12 )
	bltu x0, x7, .LBB4_29
.LBB4_25:                               //  %for.inc.4.i.i111
	lhu x7, 10 ( x12 )
	bltu x0, x7, .LBB4_29
.LBB4_26:                               //  %for.inc.5.i.i114
	lhu x7, 12 ( x12 )
	bltu x0, x7, .LBB4_29
.LBB4_27:                               //  %for.inc.6.i.i117
	lhu x7, 14 ( x12 )
	bltu x0, x7, .LBB4_29
.LBB4_28:                               //  %for.inc.7.i.i119
	lhu x7, 16 ( x12 )
	beq x0, x7, .LBB4_65
.LBB4_29:                               //  %if.then13.i138
	lhu x28, 16 ( x12 )
	lhu x7, 14 ( x12 )
	lhu x4, 12 ( x12 )
	lhu x3, 10 ( x12 )
	lhu x31, 8 ( x12 )
	lhu x30, 6 ( x12 )
	lhu x29, 4 ( x12 )
	lh x12, -2 ( x12 )
	add fp, sp, 30
	sh x6, 22 ( fp )
	sh x10, 20 ( fp )
	sh x28, 6 ( fp )
	sh x7, 8 ( fp )
	sh x4, 10 ( fp )
	sh x3, 12 ( fp )
	sh x31, 14 ( fp )
	sh x30, 16 ( fp )
	sh x29, 18 ( fp )
	sh x0, 4 ( fp )
	sh x12, 54 ( sp )
	jal x0, .LBB4_31
.LBB4_30:                               //  %if.end28.i156
	lhu x10, 2 ( x12 )
	lhu x29, 4 ( x12 )
	lhu x30, 6 ( x12 )
	lhu x31, 8 ( x12 )
	lhu x3, 10 ( x12 )
	lhu x4, 12 ( x12 )
	lhu x7, 14 ( x12 )
	lhu x28, 16 ( x12 )
	lhu x6, 0 ( x12 )
	add x12, sp, 30
	sh x7, 8 ( x12 )
	sh x28, 6 ( x12 )
	sh x4, 10 ( x12 )
	sh x3, 12 ( x12 )
	sh x31, 14 ( x12 )
	sh x30, 16 ( x12 )
	sh x29, 18 ( x12 )
	sh x10, 20 ( x12 )
	sh x6, 22 ( x12 )
	sh x0, 4 ( x12 )
	sh x0, 54 ( sp )
.LBB4_31:                               //  %emovi.exit158
	sll x12, x17, 16&31
	sra x12, x12, 31&31
	sh x12, 4 ( sp )
	sh x14, 6 ( sp )
	bne x14, x16, .LBB4_41
.LBB4_32:                               //  %for.body.preheader.i.i
	lhu fp, 2 ( x11 )
	lhu x9, 0 ( x11 )
	or x18, fp, x9
	bltu x0, x18, .LBB4_40
.LBB4_33:                               //  %for.inc.1.i.i
	lhu x18, 4 ( x11 )
	mv fp, x0
	bltu x0, x18, .LBB4_40
.LBB4_34:                               //  %for.inc.2.i.i
	lhu x18, 6 ( x11 )
	bltu x0, x18, .LBB4_40
.LBB4_35:                               //  %for.inc.3.i.i
	lhu x18, 8 ( x11 )
	bltu x0, x18, .LBB4_40
.LBB4_36:                               //  %for.inc.4.i.i
	lhu x18, 10 ( x11 )
	bltu x0, x18, .LBB4_40
.LBB4_37:                               //  %for.inc.5.i.i
	lhu x18, 12 ( x11 )
	bltu x0, x18, .LBB4_40
.LBB4_38:                               //  %for.inc.6.i.i
	lhu x18, 14 ( x11 )
	bltu x0, x18, .LBB4_40
.LBB4_39:                               //  %for.inc.7.i.i
	lhu x18, 16 ( x11 )
	beq x0, x18, .LBB4_66
.LBB4_40:                               //  %if.then13.i
	lhu x19, 16 ( x11 )
	lhu x18, 14 ( x11 )
	lhu x24, 12 ( x11 )
	lhu x23, 10 ( x11 )
	lhu x22, 8 ( x11 )
	lhu x21, 6 ( x11 )
	lhu x20, 4 ( x11 )
	lh x11, -2 ( x11 )
	add x25, sp, 4
	sh x9, 22 ( x25 )
	sh fp, 20 ( x25 )
	sh x19, 6 ( x25 )
	sh x18, 8 ( x25 )
	sh x24, 10 ( x25 )
	sh x23, 12 ( x25 )
	sh x22, 14 ( x25 )
	sh x21, 16 ( x25 )
	sh x20, 18 ( x25 )
	sh x0, 4 ( x25 )
	sh x11, 28 ( sp )
	beq x5, x12, .LBB4_48
.LBB4_43:                               //  %for.body.preheader
	or x11, x17, x15
	and x11, x16, x11
	or x11, x28, x11
	or x11, x19, x11
	or x11, x7, x11
	or x11, x18, x11
	or x11, x4, x11
	or x11, x24, x11
	or x11, x3, x11
	or x11, x23, x11
	or x11, x31, x11
	or x11, x22, x11
	or x11, x30, x11
	or x11, x21, x11
	or x11, x29, x11
	or x11, x20, x11
	or x10, x10, x11
	or x10, fp, x10
	or x10, x6, x10
	lui x11, %hi( 65535 )
	or x10, x9, x10
	add x11, x11, %lo( 65535 )
	and x10, x11, x10
	beq x0, x10, .LBB4_44
.LBB4_45:                               //  %nzro
	mv x10, x0
	beq x5, x10, .LBB4_46
.LBB4_47:                               //  %nzro
	add x10, x0, -1
	jal x0, .LBB4_55
.LBB4_41:                               //  %if.end28.i
	lhu fp, 2 ( x11 )
	lhu x20, 4 ( x11 )
	lhu x21, 6 ( x11 )
	lhu x22, 8 ( x11 )
	lhu x23, 10 ( x11 )
	lhu x24, 12 ( x11 )
	lhu x18, 14 ( x11 )
	lhu x19, 16 ( x11 )
	lhu x9, 0 ( x11 )
	add x11, sp, 4
	sh x18, 8 ( x11 )
	sh x19, 6 ( x11 )
	sh x24, 10 ( x11 )
	sh x23, 12 ( x11 )
	sh x22, 14 ( x11 )
	sh x21, 16 ( x11 )
	sh x20, 18 ( x11 )
	sh fp, 20 ( x11 )
	sh x9, 22 ( x11 )
	sh x0, 4 ( x11 )
	sh x0, 28 ( sp )
	bne x5, x12, .LBB4_43
.LBB4_48:                               //  %do.cond
	mv x10, x0
	beq x5, x10, .LBB4_49
.LBB4_50:                               //  %do.cond
	add x11, x0, -1
	bne x13, x14, .LBB4_52
.LBB4_56:                               //  %do.cond.2
	mv x13, x28
	mv x14, x19
	bne x28, x19, .LBB4_52
.LBB4_57:                               //  %do.cond.3
	mv x13, x7
	mv x14, x18
	bne x7, x18, .LBB4_52
.LBB4_58:                               //  %do.cond.4
	lhu x14, 14 ( sp )
	lhu x13, 40 ( sp )
	bne x13, x14, .LBB4_52
.LBB4_59:                               //  %do.cond.5
	lhu x14, 16 ( sp )
	lhu x13, 42 ( sp )
	bne x13, x14, .LBB4_52
.LBB4_60:                               //  %do.cond.6
	lhu x14, 18 ( sp )
	lhu x13, 44 ( sp )
	bne x13, x14, .LBB4_52
.LBB4_61:                               //  %do.cond.7
	lhu x14, 20 ( sp )
	lhu x13, 46 ( sp )
	bne x13, x14, .LBB4_52
.LBB4_62:                               //  %do.cond.8
	lhu x14, 22 ( sp )
	lhu x13, 48 ( sp )
	bne x13, x14, .LBB4_52
.LBB4_63:                               //  %do.cond.9
	lhu x14, 24 ( sp )
	lhu x13, 50 ( sp )
	bne x13, x14, .LBB4_52
.LBB4_64:                               //  %do.cond.10
	lhu x14, 26 ( sp )
	lhu x13, 52 ( sp )
	bne x13, x14, .LBB4_52
	jal x0, .LBB4_55
.LBB4_49:
	seqz x11, x0
	beq x13, x14, .LBB4_56
.LBB4_52:                               //  %__mdiff
	bltu x14, x13, .LBB4_53
.LBB4_54:                               //  %__mdiff
	sub x10, x0, x11
	jal x0, .LBB4_55
.LBB4_53:
	mv x10, x11
	jal x0, .LBB4_55
.LBB4_44:
	mv x10, x0
	jal x0, .LBB4_55
.LBB4_46:
	seqz x10, x0
.LBB4_55:                               //  %cleanup
	lw fp, 56 ( sp )                //  4-byte Folded Reload
	lw x25, 60 ( sp )               //  4-byte Folded Reload
	lw x24, 64 ( sp )               //  4-byte Folded Reload
	lw x23, 68 ( sp )               //  4-byte Folded Reload
	lw x22, 72 ( sp )               //  4-byte Folded Reload
	lw x21, 76 ( sp )               //  4-byte Folded Reload
	lw x20, 80 ( sp )               //  4-byte Folded Reload
	lw x19, 84 ( sp )               //  4-byte Folded Reload
	lw x18, 88 ( sp )               //  4-byte Folded Reload
	lw x9, 92 ( sp )                //  4-byte Folded Reload
	add sp, sp, 96
	.cfi_def_cfa 2, 0
	jr ra
.LBB4_65:                               //  %for.cond20.preheader.i94
	add x10, sp, 30
	mv x7, x0
	sh x0, 22 ( x10 )
	sh x0, 20 ( x10 )
	sh x0, 18 ( x10 )
	sh x0, 16 ( x10 )
	sh x0, 14 ( x10 )
	sh x0, 12 ( x10 )
	sh x0, 10 ( x10 )
	sh x0, 8 ( x10 )
	sh x0, 6 ( x10 )
	sh x0, 4 ( x10 )
	mv x4, x7
	mv x3, x7
	mv x31, x7
	mv x30, x7
	mv x29, x7
	mv x10, x7
	sh x0, 54 ( sp )
	mv x6, x7
	mv x28, x7
	jal x0, .LBB4_31
.LBB4_66:                               //  %for.cond20.preheader.i
	add x11, sp, 4
	mv x18, x0
	sh x0, 22 ( x11 )
	sh x0, 20 ( x11 )
	sh x0, 18 ( x11 )
	sh x0, 16 ( x11 )
	sh x0, 14 ( x11 )
	sh x0, 12 ( x11 )
	sh x0, 10 ( x11 )
	sh x0, 8 ( x11 )
	sh x0, 6 ( x11 )
	sh x0, 4 ( x11 )
	mv x24, x18
	mv x23, x18
	mv x22, x18
	mv x21, x18
	mv x20, x18
	mv fp, x18
	sh x0, 28 ( sp )
	mv x9, x18
	mv x19, x18
	bne x5, x12, .LBB4_43
	jal x0, .LBB4_48
.Lfunc_end4:
	.size	ecmp, .Lfunc_end4-ecmp
	.cfi_endproc
                                        //  -- End function
	.type	ediv,@function          //  -- Begin function ediv
ediv:                                   //  @ediv
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -176
	.cfi_adjust_cfa_offset 176
	sw x18, 164 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	sw x23, 144 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	lhu x23, 18 ( x18 )
	sw x21, 152 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	lui x21, %hi( 32767 )
	sw fp, 124 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x13
	add x13, x21, %lo( 32767 )
	sw x20, 156 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x20, x11
	and x14, x13, x23
	sw ra, 172 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 168 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 160 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x22, 148 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x24, 140 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 136 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 132 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 128 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	bne x14, x13, .LBB5_11
.LBB5_1:                                //  %for.body.preheader.i
	lhu x10, 0 ( x18 )
	bltu x0, x10, .LBB5_10
.LBB5_2:                                //  %for.inc.i
	lhu x11, 2 ( x18 )
	bltu x0, x11, .LBB5_10
.LBB5_3:                                //  %for.inc.1.i
	lhu x11, 4 ( x18 )
	bltu x0, x11, .LBB5_10
.LBB5_4:                                //  %for.inc.2.i
	lhu x11, 6 ( x18 )
	bltu x0, x11, .LBB5_10
.LBB5_5:                                //  %for.inc.3.i
	lhu x11, 8 ( x18 )
	bltu x0, x11, .LBB5_10
.LBB5_6:                                //  %for.inc.4.i
	lhu x11, 10 ( x18 )
	bltu x0, x11, .LBB5_10
.LBB5_7:                                //  %for.inc.5.i
	lhu x11, 12 ( x18 )
	bltu x0, x11, .LBB5_10
.LBB5_8:                                //  %for.inc.6.i
	lhu x11, 14 ( x18 )
	bltu x0, x11, .LBB5_10
.LBB5_9:                                //  %eisnan.exit
	lhu x11, 16 ( x18 )
	beq x0, x11, .LBB5_11
.LBB5_10:                               //  %if.then
	sh x10, 0 ( x12 )
	lh x10, 2 ( x18 )
	sh x10, 2 ( x12 )
	lh x10, 4 ( x18 )
	sh x10, 4 ( x12 )
	lh x10, 6 ( x18 )
	sh x10, 6 ( x12 )
	lh x10, 8 ( x18 )
	sh x10, 8 ( x12 )
	lh x10, 10 ( x18 )
	sh x10, 10 ( x12 )
	lh x10, 12 ( x18 )
	sh x10, 12 ( x12 )
	lh x10, 14 ( x18 )
	sh x10, 14 ( x12 )
	lh x10, 16 ( x18 )
	sh x10, 16 ( x12 )
	lh x10, 18 ( x18 )
	sh x10, 18 ( x12 )
	jal x0, .LBB5_160
.LBB5_11:                               //  %if.end
	lhu x22, 18 ( x20 )
	and x9, x13, x22
	bne x9, x13, .LBB5_22
.LBB5_12:                               //  %for.body.preheader.i169
	lhu x10, 0 ( x20 )
	bltu x0, x10, .LBB5_21
.LBB5_13:                               //  %for.inc.i172
	lhu x11, 2 ( x20 )
	bltu x0, x11, .LBB5_21
.LBB5_14:                               //  %for.inc.1.i177
	lhu x11, 4 ( x20 )
	bltu x0, x11, .LBB5_21
.LBB5_15:                               //  %for.inc.2.i180
	lhu x11, 6 ( x20 )
	bltu x0, x11, .LBB5_21
.LBB5_16:                               //  %for.inc.3.i183
	lhu x11, 8 ( x20 )
	bltu x0, x11, .LBB5_21
.LBB5_17:                               //  %for.inc.4.i186
	lhu x11, 10 ( x20 )
	bltu x0, x11, .LBB5_21
.LBB5_18:                               //  %for.inc.5.i189
	lhu x11, 12 ( x20 )
	bltu x0, x11, .LBB5_21
.LBB5_19:                               //  %for.inc.6.i192
	lhu x11, 14 ( x20 )
	bltu x0, x11, .LBB5_21
.LBB5_20:                               //  %eisnan.exit197
	lhu x11, 16 ( x20 )
	beq x0, x11, .LBB5_22
.LBB5_21:                               //  %if.then3
	sh x10, 0 ( x12 )
	lh x10, 2 ( x20 )
	sh x10, 2 ( x12 )
	lh x10, 4 ( x20 )
	sh x10, 4 ( x12 )
	lh x10, 6 ( x20 )
	sh x10, 6 ( x12 )
	lh x10, 8 ( x20 )
	sh x10, 8 ( x12 )
	lh x10, 10 ( x20 )
	sh x10, 10 ( x12 )
	lh x10, 12 ( x20 )
	sh x10, 12 ( x12 )
	lh x10, 14 ( x20 )
	sh x10, 14 ( x12 )
	lh x10, 16 ( x20 )
	sh x10, 16 ( x12 )
	lh x10, 18 ( x20 )
	sh x10, 18 ( x12 )
	jal x0, .LBB5_160
.LBB5_22:                               //  %if.end4
	lui x10, %hi( ezero )
	add x19, x10, %lo( ezero )
	mv x10, x18
	mv x11, x19
	sw x12, 16 ( sp )               //  4-byte Folded Spill
	sw x13, 12 ( sp )               //  4-byte Folded Spill
	sw x14, 20 ( sp )               //  4-byte Folded Spill
	jal ecmp
	lw x6, 20 ( sp )                //  4-byte Folded Reload
	lw x13, 12 ( sp )               //  4-byte Folded Reload
	lw x11, 16 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB5_24
.LBB5_23:                               //  %land.lhs.true
	mv x10, x20
	mv x11, x19
	jal ecmp
	lw x6, 20 ( sp )                //  4-byte Folded Reload
	lw x13, 12 ( sp )               //  4-byte Folded Reload
	lw x11, 16 ( sp )               //  4-byte Folded Reload
	beq x0, x10, .LBB5_44
.LBB5_24:                               //  %lor.lhs.false
	bne x6, x13, .LBB5_45
.LBB5_25:                               //  %for.body.preheader.i.i237
	lhu x10, 0 ( x18 )
	bltu x0, x10, .LBB5_45
.LBB5_26:                               //  %for.inc.i.i239
	lhu x10, 2 ( x18 )
	bltu x0, x10, .LBB5_45
.LBB5_27:                               //  %for.inc.1.i.i241
	lhu x10, 4 ( x18 )
	bltu x0, x10, .LBB5_45
.LBB5_28:                               //  %for.inc.2.i.i243
	lhu x10, 6 ( x18 )
	bltu x0, x10, .LBB5_45
.LBB5_29:                               //  %for.inc.3.i.i245
	lhu x10, 8 ( x18 )
	bltu x0, x10, .LBB5_45
.LBB5_30:                               //  %for.inc.4.i.i247
	lhu x10, 10 ( x18 )
	bltu x0, x10, .LBB5_45
.LBB5_31:                               //  %for.inc.5.i.i249
	lhu x10, 12 ( x18 )
	bltu x0, x10, .LBB5_45
.LBB5_32:                               //  %for.inc.6.i.i251
	lhu x10, 14 ( x18 )
	bltu x0, x10, .LBB5_45
.LBB5_33:                               //  %eisinf.exit
	lhu x10, 16 ( x18 )
	beq x0, x10, .LBB5_34
.LBB5_45:                               //  %if.end14
	bne x9, x13, .LBB5_69
.LBB5_46:                               //  %for.body.preheader.i.i494
	lhu x10, 0 ( x20 )
	bltu x0, x10, .LBB5_69
.LBB5_47:                               //  %for.inc.i.i497
	lhu x10, 2 ( x20 )
	bltu x0, x10, .LBB5_69
.LBB5_48:                               //  %for.inc.1.i.i500
	lhu x10, 4 ( x20 )
	bltu x0, x10, .LBB5_69
.LBB5_49:                               //  %for.inc.2.i.i503
	lhu x10, 6 ( x20 )
	bltu x0, x10, .LBB5_69
.LBB5_50:                               //  %for.inc.3.i.i506
	lhu x10, 8 ( x20 )
	bltu x0, x10, .LBB5_69
.LBB5_51:                               //  %for.inc.4.i.i509
	lhu x10, 10 ( x20 )
	bltu x0, x10, .LBB5_69
.LBB5_52:                               //  %for.inc.5.i.i512
	lhu x10, 12 ( x20 )
	bltu x0, x10, .LBB5_69
.LBB5_53:                               //  %for.inc.6.i.i515
	lhu x10, 14 ( x20 )
	bltu x0, x10, .LBB5_69
.LBB5_54:                               //  %eisinf.exit521
	lhu x10, 16 ( x20 )
	beq x0, x10, .LBB5_55
.LBB5_69:                               //  %if.end24
	add x10, x21, %lo( 32767 )
	bne x6, x10, .LBB5_83
.LBB5_70:                               //  %for.body.preheader.i.i389
	lhu x10, 0 ( x18 )
	bltu x0, x10, .LBB5_83
.LBB5_71:                               //  %for.inc.i.i392
	lhu x10, 2 ( x18 )
	bltu x0, x10, .LBB5_83
.LBB5_72:                               //  %for.inc.1.i.i395
	lhu x10, 4 ( x18 )
	bltu x0, x10, .LBB5_83
.LBB5_73:                               //  %for.inc.2.i.i398
	lhu x10, 6 ( x18 )
	bltu x0, x10, .LBB5_83
.LBB5_74:                               //  %for.inc.3.i.i401
	lhu x10, 8 ( x18 )
	bltu x0, x10, .LBB5_83
.LBB5_75:                               //  %for.inc.4.i.i404
	lhu x10, 10 ( x18 )
	bltu x0, x10, .LBB5_83
.LBB5_76:                               //  %for.inc.5.i.i407
	lhu x10, 12 ( x18 )
	bltu x0, x10, .LBB5_83
.LBB5_77:                               //  %for.inc.6.i.i410
	lhu x10, 14 ( x18 )
	bltu x0, x10, .LBB5_83
.LBB5_78:                               //  %eisinf.exit416
	lhu x10, 16 ( x18 )
	beq x0, x10, .LBB5_79
.LBB5_83:                               //  %if.end28
	sll x10, x23, 16&31
	sra x10, x10, 16&31
	srl x10, x10, 15&31
	add x19, sp, 70
	sh x10, 70 ( sp )
	sh x6, 72 ( sp )
	bne x6, x13, .LBB5_93
.LBB5_84:                               //  %for.body.preheader.i.i314
	lhu x10, 2 ( x18 )
	lhu x11, 0 ( x18 )
	or x12, x10, x11
	bltu x0, x12, .LBB5_92
.LBB5_85:                               //  %for.inc.1.i.i320
	lhu x12, 4 ( x18 )
	mv x10, x0
	bltu x0, x12, .LBB5_92
.LBB5_86:                               //  %for.inc.2.i.i323
	lhu x12, 6 ( x18 )
	bltu x0, x12, .LBB5_92
.LBB5_87:                               //  %for.inc.3.i.i326
	lhu x12, 8 ( x18 )
	bltu x0, x12, .LBB5_92
.LBB5_88:                               //  %for.inc.4.i.i329
	lhu x12, 10 ( x18 )
	bltu x0, x12, .LBB5_92
.LBB5_89:                               //  %for.inc.5.i.i332
	lhu x12, 12 ( x18 )
	bltu x0, x12, .LBB5_92
.LBB5_90:                               //  %for.inc.6.i.i335
	lhu x12, 14 ( x18 )
	bltu x0, x12, .LBB5_92
.LBB5_91:                               //  %for.inc.7.i.i337
	lhu x12, 16 ( x18 )
	beq x0, x12, .LBB5_82
.LBB5_92:                               //  %if.then13.i356
	sh x10, 20 ( x19 )
	lh x10, 16 ( x18 )
	sh x11, 22 ( x19 )
	sh x0, 4 ( x19 )
	sh x10, 6 ( x19 )
	lh x10, 14 ( x18 )
	sh x10, 8 ( x19 )
	lh x10, 12 ( x18 )
	sh x10, 10 ( x19 )
	lh x10, 10 ( x18 )
	sh x10, 12 ( x19 )
	lh x10, 8 ( x18 )
	sh x10, 14 ( x19 )
	lh x10, 6 ( x18 )
	sh x10, 16 ( x19 )
	lh x10, 4 ( x18 )
	sh x10, 18 ( x19 )
	lh x10, -2 ( x18 )
	sh x10, 94 ( sp )
	jal x0, .LBB5_95
.LBB5_93:                               //  %if.end28.i374
	lh x10, 16 ( x18 )
	sh x10, 6 ( x19 )
	lh x10, 14 ( x18 )
	sh x10, 8 ( x19 )
	lh x10, 12 ( x18 )
	sh x10, 10 ( x19 )
	lh x10, 10 ( x18 )
	sh x10, 12 ( x19 )
	lh x10, 8 ( x18 )
	sh x10, 14 ( x19 )
	lh x10, 6 ( x18 )
	sh x10, 16 ( x19 )
	lh x10, 4 ( x18 )
	sh x10, 18 ( x19 )
	lh x10, 2 ( x18 )
	sh x10, 20 ( x19 )
	lh x10, 0 ( x18 )
	sh x10, 22 ( x19 )
.LBB5_94:                               //  %emovi.exit376
	sh x0, 4 ( x19 )
	sh x0, 94 ( sp )
.LBB5_95:                               //  %emovi.exit376
	sll x10, x22, 16&31
	sra x10, x10, 16&31
	srl x10, x10, 15&31
	add x18, sp, 44
	lui x26, %hi( 65535 )
	sh x10, 44 ( sp )
	sh x9, 46 ( sp )
	bne x9, x13, .LBB5_173
.LBB5_96:                               //  %for.body.preheader.i.i260
	lhu x10, 2 ( x20 )
	lhu x11, 0 ( x20 )
	or x12, x10, x11
	bltu x0, x12, .LBB5_104
.LBB5_97:                               //  %for.inc.1.i.i266
	lhu x12, 4 ( x20 )
	mv x10, x0
	bltu x0, x12, .LBB5_104
.LBB5_98:                               //  %for.inc.2.i.i269
	lhu x12, 6 ( x20 )
	bltu x0, x12, .LBB5_104
.LBB5_99:                               //  %for.inc.3.i.i272
	lhu x12, 8 ( x20 )
	bltu x0, x12, .LBB5_104
.LBB5_100:                              //  %for.inc.4.i.i275
	lhu x12, 10 ( x20 )
	bltu x0, x12, .LBB5_104
.LBB5_101:                              //  %for.inc.5.i.i278
	lhu x12, 12 ( x20 )
	bltu x0, x12, .LBB5_104
.LBB5_102:                              //  %for.inc.6.i.i281
	lhu x12, 14 ( x20 )
	bltu x0, x12, .LBB5_104
.LBB5_103:                              //  %for.inc.7.i.i283
	lhu x12, 16 ( x20 )
	beq x0, x12, .LBB5_177
.LBB5_104:                              //  %if.then13.i
	sh x10, 20 ( x18 )
	lh x10, 16 ( x20 )
	sh x11, 22 ( x18 )
	sh x0, 4 ( x18 )
	add x9, x21, %lo( 32767 )
	sh x10, 6 ( x18 )
	lh x10, 14 ( x20 )
	sh x10, 8 ( x18 )
	lh x10, 12 ( x20 )
	sh x10, 10 ( x18 )
	lh x10, 10 ( x20 )
	sh x10, 12 ( x18 )
	lh x10, 8 ( x20 )
	sh x10, 14 ( x18 )
	lh x10, 6 ( x20 )
	sh x10, 16 ( x18 )
	lh x10, 4 ( x20 )
	sh x10, 18 ( x18 )
	lh x10, -2 ( x20 )
	sh x10, 68 ( sp )
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	bltu x0, x6, .LBB5_110
	jal x0, .LBB5_108
.LBB5_173:                              //  %emovi.exit
	lhu x10, 0 ( x20 )
	lhu x11, 2 ( x20 )
	lhu x12, 4 ( x20 )
	lhu x13, 6 ( x20 )
	lhu x14, 8 ( x20 )
	lhu x15, 10 ( x20 )
	lhu x16, 12 ( x20 )
	lhu x17, 14 ( x20 )
	lhu x5, 16 ( x20 )
	sh x15, 12 ( x18 )
	sh x16, 10 ( x18 )
	sh x17, 8 ( x18 )
	sh x5, 6 ( x18 )
	sh x14, 14 ( x18 )
	sh x13, 16 ( x18 )
	sh x12, 18 ( x18 )
	sh x11, 20 ( x18 )
	sh x10, 22 ( x18 )
	sh x0, 4 ( x18 )
	sh x0, 68 ( sp )
	beq x0, x9, .LBB5_174
.LBB5_107:                              //  %dnzro1
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	bltu x0, x6, .LBB5_110
.LBB5_108:                              //  %for.cond53
	lhu x10, 74 ( sp )
	bltu x0, x10, .LBB5_109
.LBB5_161:                              //  %for.cond53.1
	lhu x10, 76 ( sp )
	bltu x0, x10, .LBB5_109
.LBB5_162:                              //  %for.cond53.2
	lhu x10, 78 ( sp )
	bltu x0, x10, .LBB5_109
.LBB5_163:                              //  %for.cond53.3
	lhu x10, 80 ( sp )
	bltu x0, x10, .LBB5_109
.LBB5_164:                              //  %for.cond53.4
	lhu x10, 82 ( sp )
	bltu x0, x10, .LBB5_109
.LBB5_165:                              //  %for.cond53.5
	lhu x10, 84 ( sp )
	bltu x0, x10, .LBB5_109
.LBB5_166:                              //  %for.cond53.6
	lhu x10, 86 ( sp )
	bltu x0, x10, .LBB5_109
.LBB5_167:                              //  %for.cond53.7
	lhu x10, 88 ( sp )
	bltu x0, x10, .LBB5_109
.LBB5_168:                              //  %for.cond53.8
	lhu x10, 90 ( sp )
	bltu x0, x10, .LBB5_109
.LBB5_169:                              //  %for.cond53.9
	lhu x10, 92 ( sp )
	beq x0, x10, .LBB5_170
.LBB5_109:                              //  %if.then61
	add x10, sp, 70
	jal enormlz
	lw x11, 20 ( sp )               //  4-byte Folded Reload
	sub x11, x11, x10
	sw x11, 20 ( sp )               //  4-byte Folded Spill
.LBB5_110:                              //  %dnzro2
	lhu x13, 14 ( x18 )
	lhu x15, 16 ( x18 )
	lh x10, 44 ( sp )
	lhu x11, 4 ( x18 )
	sll x14, x13, 15&31
	srl x16, x15, 1&31
	or x14, x14, x16
	lhu x16, 12 ( x18 )
	srl x13, x13, 1&31
	sh x10, 52 ( fp )
	lh x10, 2 ( x18 )
	sll x17, x16, 15&31
	or x13, x17, x13
	lhu x17, 10 ( x18 )
	srl x16, x16, 1&31
	lhu x12, 6 ( x18 )
	sh x10, 54 ( fp )
	sll x5, x17, 15&31
	or x16, x5, x16
	lhu x5, 8 ( x18 )
	srl x17, x17, 1&31
	srl x10, x11, 1&31
	sll x11, x11, 15&31
	sll x6, x5, 15&31
	or x17, x6, x17
	srl x6, x12, 1&31
	or x11, x11, x6
	lhu x6, 20 ( x18 )
	lhu x28, 22 ( x18 )
	sh x13, 14 ( x18 )
	lhu x13, 68 ( sp )
	sll x12, x12, 15&31
	srl x5, x5, 1&31
	or x12, x12, x5
	sll x7, x6, 15&31
	sh x12, 8 ( x18 )
	srl x29, x28, 1&31
	sll x12, x28, 15&31
	srl x13, x13, 1&31
	or x7, x7, x29
	lhu x29, 18 ( x18 )
	or x12, x12, x13
	sh x12, 68 ( sp )
	lhu x12, 76 ( sp )
	sll x30, x29, 15&31
	add x9, x26, %lo( 65535 )
	srl x6, x6, 1&31
	sll x15, x15, 15&31
	srl x29, x29, 1&31
	or x6, x30, x6
	or x15, x15, x29
	hackaton_custom_instr_c x21, x9, x12
	add x20, x0, 56
	add x22, sp, 96
	sh x0, 76 ( fp )
	sh x0, 74 ( fp )
	sh x0, 72 ( fp )
	sh x0, 70 ( fp )
	sh x0, 68 ( fp )
	sh x0, 66 ( fp )
	sh x0, 64 ( fp )
	sh x0, 62 ( fp )
	sh x0, 60 ( fp )
	sh x0, 58 ( fp )
	sh x0, 56 ( fp )
	sh x10, 4 ( x18 )
	sh x17, 10 ( x18 )
	sh x16, 12 ( x18 )
	sh x14, 16 ( x18 )
	sh x15, 18 ( x18 )
	sh x6, 20 ( x18 )
	sh x7, 22 ( x18 )
	sh x11, 6 ( x18 )
	sw x12, 36 ( sp )               //  4-byte Folded Spill
	sw fp, 32 ( sp )                //  4-byte Folded Spill
	sw x9, 28 ( sp )                //  4-byte Folded Spill
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB5_111
.LBB5_117:                              //  %difrnt.i355.if.end36_crit_edge.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x10, 102 ( sp )
	lhu x11, 8 ( x22 )
	lhu x12, 10 ( x22 )
	lhu x14, 12 ( x22 )
	lhu x13, 14 ( x22 )
	lhu x15, 16 ( x22 )
	lhu x16, 18 ( x22 )
	lhu x17, 20 ( x22 )
	lhu x5, 22 ( x22 )
.LBB5_150:                              //  %if.end36.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x7, 22 ( x18 )
	add x6, x20, fp
	sh x23, 0 ( x6 )
	add x6, x26, %lo( 65535 )
	and x5, x6, x5
	sub x7, x7, x5
	lhu x5, 24 ( x18 )
	lhu x28, 120 ( sp )
	and x17, x6, x17
	and x16, x6, x16
	and x15, x6, x15
	sub x5, x5, x28
	srl x28, x5, 16&31
	and x28, x28, 1
	sub x7, x7, x28
	lhu x28, 20 ( x18 )
	and x13, x6, x13
	and x14, x6, x14
	and x12, x6, x12
	sub x17, x28, x17
	srl x28, x7, 16&31
	and x28, x28, 1
	sub x17, x17, x28
	lhu x28, 18 ( x18 )
	and x11, x6, x11
	and x10, x6, x10
	add x20, x20, 2
	sub x16, x28, x16
	srl x28, x17, 16&31
	and x28, x28, 1
	sub x16, x16, x28
	lhu x28, 16 ( x18 )
	sh x5, 22 ( x18 )
	sh x7, 20 ( x18 )
	sh x17, 18 ( x18 )
	sub x15, x28, x15
	srl x28, x16, 16&31
	and x28, x28, 1
	sub x15, x15, x28
	lhu x28, 14 ( x18 )
	sh x16, 16 ( x18 )
	sh x15, 14 ( x18 )
	sh x0, 24 ( x18 )
	sub x13, x28, x13
	srl x28, x15, 16&31
	and x28, x28, 1
	sub x13, x13, x28
	lhu x28, 12 ( x18 )
	sh x13, 12 ( x18 )
	sub x14, x28, x14
	srl x28, x13, 16&31
	and x28, x28, 1
	sub x14, x14, x28
	lhu x28, 10 ( x18 )
	sh x14, 10 ( x18 )
	sub x12, x28, x12
	srl x28, x14, 16&31
	and x28, x28, 1
	sub x12, x12, x28
	lhu x28, 8 ( x18 )
	sh x12, 8 ( x18 )
	sub x11, x28, x11
	srl x28, x12, 16&31
	and x28, x28, 1
	sub x11, x11, x28
	lhu x28, 6 ( x18 )
	sh x11, 6 ( x18 )
	sub x10, x28, x10
	srl x28, x11, 16&31
	and x28, x28, 1
	sub x10, x10, x28
	xor x28, x20, 78
	sh x10, 48 ( sp )
	beq x0, x28, .LBB5_151
.LBB5_111:                              //  %for.body9.i
                                        //  =>This Inner Loop Header: Depth=1
	and x11, x9, x11
	sll x10, x10, 16&31
	mv x23, x9
	or x10, x11, x10
	bltu x21, x10, .LBB5_113
.LBB5_112:                              //  %if.else.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lw x11, 36 ( sp )               //  4-byte Folded Reload
	jal __udivsi3
	mv x23, x10
.LBB5_113:                              //  %if.end.i
                                        //    in Loop: Header=BB5_111 Depth=1
	and x10, x9, x23
	mv x11, x19
	mv x12, x22
	jal m16m
	lhu x6, 48 ( sp )
	lhu ra, 100 ( sp )
	mv x7, x6
	mv x28, ra
	bne ra, x6, .LBB5_116
.LBB5_114:                              //  %for.inc.i350.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x7, 50 ( sp )
	lhu x10, 102 ( sp )
	bne x10, x7, .LBB5_115
.LBB5_118:                              //  %for.inc.1.i360.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x7, 52 ( sp )
	lhu x11, 104 ( sp )
	bne x11, x7, .LBB5_119
.LBB5_120:                              //  %for.inc.2.i364.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x7, 54 ( sp )
	lhu x12, 106 ( sp )
	bne x12, x7, .LBB5_121
.LBB5_122:                              //  %for.inc.3.i368.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x7, 56 ( sp )
	lhu x14, 108 ( sp )
	bne x14, x7, .LBB5_123
.LBB5_124:                              //  %for.inc.4.i372.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x7, 58 ( sp )
	lhu x13, 110 ( sp )
	bne x13, x7, .LBB5_125
.LBB5_126:                              //  %for.inc.5.i376.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x7, 60 ( sp )
	lhu x15, 112 ( sp )
	bne x15, x7, .LBB5_127
.LBB5_128:                              //  %for.inc.6.i380.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x7, 62 ( sp )
	lhu x16, 114 ( sp )
	bne x16, x7, .LBB5_129
.LBB5_130:                              //  %for.inc.7.i384.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x7, 64 ( sp )
	lhu x17, 116 ( sp )
	bne x17, x7, .LBB5_131
.LBB5_132:                              //  %for.inc.8.i388.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x7, 66 ( sp )
	lhu x5, 118 ( sp )
	bne x5, x7, .LBB5_133
.LBB5_134:                              //  %for.inc.9.i392.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x7, 68 ( sp )
	lhu x28, 120 ( sp )
	beq x28, x7, .LBB5_150
	jal x0, .LBB5_116
.LBB5_115:                              //    in Loop: Header=BB5_111 Depth=1
	mv x28, x10
.LBB5_116:                              //  %difrnt.i355.i
                                        //    in Loop: Header=BB5_111 Depth=1
	bgeu x7, x28, .LBB5_117
.LBB5_135:                              //  %if.then22.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x28, 24 ( x19 )
	lhu x11, 24 ( x22 )
	lhu x7, 22 ( x19 )
	lhu x10, 22 ( x22 )
	lhu x30, 20 ( x19 )
	sub x29, x11, x28
	srl x11, x29, 16&31
	sub x10, x10, x7
	and x11, x11, 1
	sub x5, x10, x11
	lhu x11, 20 ( x22 )
	srl x10, x5, 16&31
	and x10, x10, 1
	lhu x31, 18 ( x19 )
	sub x11, x11, x30
	sub x17, x11, x10
	lhu x11, 18 ( x22 )
	srl x10, x17, 16&31
	and x10, x10, 1
	lhu x3, 16 ( x19 )
	sub x11, x11, x31
	sub x16, x11, x10
	lhu x11, 16 ( x22 )
	srl x10, x16, 16&31
	and x10, x10, 1
	lhu x4, 14 ( x19 )
	sub x11, x11, x3
	sub x15, x11, x10
	lhu x11, 14 ( x22 )
	srl x10, x15, 16&31
	and x10, x10, 1
	lhu x24, 12 ( x19 )
	sub x11, x11, x4
	sub x13, x11, x10
	lhu x11, 12 ( x22 )
	srl x10, x13, 16&31
	and x10, x10, 1
	lhu x27, 10 ( x19 )
	sub x11, x11, x24
	sub x14, x11, x10
	lhu x11, 10 ( x22 )
	srl x10, x14, 16&31
	and x10, x10, 1
	lhu x21, 8 ( x19 )
	sub x11, x11, x27
	sub x12, x11, x10
	lhu x11, 8 ( x22 )
	srl x10, x12, 16&31
	lhu fp, 6 ( x19 )
	lhu x9, 6 ( x22 )
	and x10, x10, 1
	sub x11, x11, x21
	sub x11, x11, x10
	srl x10, x11, 16&31
	and x10, x10, 1
	sub x9, x9, fp
	sub x10, x9, x10
	srl x9, x10, 16&31
	and x19, x9, 1
	lhu x9, 74 ( sp )
	sh x29, 24 ( x22 )
	sh x5, 22 ( x22 )
	sh x17, 20 ( x22 )
	sub x25, ra, x9
	sub x19, x25, x19
	add x25, x23, -1
	sw x25, 40 ( sp )               //  4-byte Folded Spill
	add x25, x26, %lo( 65535 )
	mv ra, x19
	and x26, x25, x19
	sh x16, 18 ( x22 )
	sh x15, 16 ( x22 )
	sh x13, 14 ( x22 )
	sh x14, 12 ( x22 )
	sh x12, 10 ( x22 )
	sh x11, 8 ( x22 )
	sh x10, 6 ( x22 )
	sh x19, 100 ( sp )
	bne x6, x26, .LBB5_137
.LBB5_136:                              //  %for.inc.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x6, 50 ( sp )
	and x26, x25, x10
	mv ra, x10
	bne x6, x26, .LBB5_137
.LBB5_139:                              //  %for.inc.1.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x6, 52 ( sp )
	and x26, x25, x11
	mv ra, x11
	bne x6, x26, .LBB5_137
.LBB5_140:                              //  %for.inc.2.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x6, 54 ( sp )
	and x26, x25, x12
	mv ra, x12
	bne x6, x26, .LBB5_137
.LBB5_141:                              //  %for.inc.3.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x6, 56 ( sp )
	and x26, x25, x14
	mv ra, x14
	bne x6, x26, .LBB5_137
.LBB5_142:                              //  %for.inc.4.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x6, 58 ( sp )
	and x26, x25, x13
	mv ra, x13
	bne x6, x26, .LBB5_137
.LBB5_143:                              //  %for.inc.5.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x6, 60 ( sp )
	and x26, x25, x15
	mv ra, x15
	bne x6, x26, .LBB5_137
.LBB5_144:                              //  %for.inc.6.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x6, 62 ( sp )
	and x26, x25, x16
	mv ra, x16
	bne x6, x26, .LBB5_137
.LBB5_145:                              //  %for.inc.7.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x6, 64 ( sp )
	and x26, x25, x17
	mv ra, x17
	bne x6, x26, .LBB5_137
.LBB5_146:                              //  %for.inc.8.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x6, 66 ( sp )
	and x26, x25, x5
	mv ra, x5
	bne x6, x26, .LBB5_137
.LBB5_147:                              //  %for.inc.9.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x6, 68 ( sp )
	and x26, x25, x29
	mv ra, x29
	beq x6, x26, .LBB5_138
.LBB5_137:                              //  %difrnt.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	and x26, x25, ra
	bgeu x6, x26, .LBB5_138
.LBB5_148:                              //  %if.then30.i
                                        //    in Loop: Header=BB5_111 Depth=1
	and x6, x25, x29
	and x5, x25, x5
	sub x6, x6, x28
	sub x5, x5, x7
	srl x7, x6, 16&31
	and x7, x7, 1
	sub x5, x5, x7
	and x17, x25, x17
	srl x7, x5, 16&31
	sub x17, x17, x30
	and x7, x7, 1
	sub x17, x17, x7
	and x16, x25, x16
	srl x7, x17, 16&31
	sub x16, x16, x31
	and x7, x7, 1
	sub x16, x16, x7
	and x15, x25, x15
	srl x7, x16, 16&31
	sub x15, x15, x3
	and x7, x7, 1
	sub x15, x15, x7
	and x13, x25, x13
	srl x7, x15, 16&31
	sub x13, x13, x4
	and x7, x7, 1
	sub x13, x13, x7
	and x14, x25, x14
	srl x7, x13, 16&31
	sub x14, x14, x24
	and x7, x7, 1
	sub x14, x14, x7
	and x12, x25, x12
	srl x7, x14, 16&31
	sub x12, x12, x27
	and x7, x7, 1
	sub x12, x12, x7
	and x11, x25, x11
	srl x7, x12, 16&31
	sub x11, x11, x21
	and x7, x7, 1
	sub x11, x11, x7
	and x10, x25, x10
	srl x7, x11, 16&31
	sub x10, x10, fp
	and x7, x7, 1
	sub x10, x10, x7
	srl x28, x10, 16&31
	sub x7, x19, x9
	and x28, x28, 1
	sub x7, x7, x28
	add x23, x23, -2
	sh x6, 24 ( x22 )
	sh x5, 22 ( x22 )
	sh x17, 20 ( x22 )
	sh x16, 18 ( x22 )
	sh x15, 16 ( x22 )
	sh x13, 14 ( x22 )
	sh x14, 12 ( x22 )
	sh x12, 10 ( x22 )
	sh x11, 8 ( x22 )
	sh x10, 6 ( x22 )
	sh x7, 100 ( sp )
	jal x0, .LBB5_149
.LBB5_138:                              //    in Loop: Header=BB5_111 Depth=1
	lw x23, 40 ( sp )               //  4-byte Folded Reload
.LBB5_149:                              //  %if.end36.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lw fp, 32 ( sp )                //  4-byte Folded Reload
	lw x9, 28 ( sp )                //  4-byte Folded Reload
	lw x21, 24 ( sp )               //  4-byte Folded Reload
	add x19, sp, 70
	lui x26, %hi( 65535 )
	jal x0, .LBB5_150
.LBB5_119:                              //    in Loop: Header=BB5_111 Depth=1
	mv x28, x11
	bgeu x7, x28, .LBB5_117
	jal x0, .LBB5_135
.LBB5_121:                              //    in Loop: Header=BB5_111 Depth=1
	mv x28, x12
	bgeu x7, x28, .LBB5_117
	jal x0, .LBB5_135
.LBB5_123:                              //    in Loop: Header=BB5_111 Depth=1
	mv x28, x14
	bgeu x7, x28, .LBB5_117
	jal x0, .LBB5_135
.LBB5_125:                              //    in Loop: Header=BB5_111 Depth=1
	mv x28, x13
	bgeu x7, x28, .LBB5_117
	jal x0, .LBB5_135
.LBB5_127:                              //    in Loop: Header=BB5_111 Depth=1
	mv x28, x15
	bgeu x7, x28, .LBB5_117
	jal x0, .LBB5_135
.LBB5_129:                              //    in Loop: Header=BB5_111 Depth=1
	mv x28, x16
	bgeu x7, x28, .LBB5_117
	jal x0, .LBB5_135
.LBB5_131:                              //    in Loop: Header=BB5_111 Depth=1
	mv x28, x17
	bgeu x7, x28, .LBB5_117
	jal x0, .LBB5_135
.LBB5_133:                              //    in Loop: Header=BB5_111 Depth=1
	mv x28, x5
	bgeu x7, x28, .LBB5_117
	jal x0, .LBB5_135
.LBB5_151:                              //  %edivm.exit
	or x5, x5, x7
	or x17, x17, x5
	or x16, x16, x17
	or x15, x15, x16
	lh x16, 54 ( fp )
	or x13, x13, x15
	or x13, x14, x13
	or x12, x12, x13
	sh x16, 2 ( x18 )
	lh x16, 56 ( fp )
	or x11, x11, x12
	lh x12, 70 ( fp )
	or x10, x10, x11
	sh x16, 4 ( x18 )
	lh x16, 58 ( fp )
	sh x12, 18 ( x18 )
	lh x12, 72 ( fp )
	lw x11, 20 ( sp )               //  4-byte Folded Reload
	sh x16, 6 ( x18 )
	lh x16, 60 ( fp )
	sh x12, 20 ( x18 )
	lh x12, 74 ( fp )
	and x10, x6, x10
	sh x16, 8 ( x18 )
	lh x16, 62 ( fp )
	sh x12, 22 ( x18 )
	lh x12, 76 ( fp )
	mv x9, x0
	sh x16, 10 ( x18 )
	lh x16, 64 ( fp )
	sh x12, 68 ( sp )
	lw x12, 8 ( sp )                //  4-byte Folded Reload
	add x14, x0, 64
	sh x16, 12 ( x18 )
	lh x16, 66 ( fp )
	sub x11, x12, x11
	lui x12, %hi( 16383 )
	add x12, x12, %lo( 16383 )
	sh x16, 14 ( x18 )
	lh x16, 68 ( fp )
	add x13, x12, x11
	snez x11, x10
	mv x10, x18
	sh x16, 16 ( x18 )
	lh x16, 52 ( fp )
	mv x12, x9
	mv x15, fp
	sh x16, 44 ( sp )
	jal emdnorm
	lhu x11, 44 ( sp )
	lhu x12, 70 ( sp )
	beq x12, x11, .LBB5_153
.LBB5_152:
	add x9, x0, -1
.LBB5_153:                              //  %edivm.exit
	lhu x13, 2 ( x18 )
	lw x14, 16 ( sp )               //  4-byte Folded Reload
	lw x15, 12 ( sp )               //  4-byte Folded Reload
	mv x10, x13
	beq x12, x11, .LBB5_155
.LBB5_154:                              //  %edivm.exit
	lui x10, %hi( -32768 )
	add x10, x10, %lo( -32768 )
	or x10, x10, x13
.LBB5_155:                              //  %edivm.exit
	sh x10, 18 ( x14 )
	sh x9, 44 ( sp )
	bne x13, x15, .LBB5_159
.LBB5_156:                              //  %for.body.preheader.i.i
	lhu x11, 6 ( x18 )
	lhu x12, 8 ( x18 )
	sh x0, 14 ( x14 )
	sh x0, 12 ( x14 )
	sh x0, 10 ( x14 )
	or x11, x11, x12
	lhu x12, 10 ( x18 )
	sh x0, 8 ( x14 )
	sh x0, 6 ( x14 )
	sh x0, 4 ( x14 )
	or x11, x12, x11
	lhu x12, 12 ( x18 )
	sh x0, 2 ( x14 )
	sh x0, 0 ( x14 )
	or x11, x12, x11
	lhu x12, 14 ( x18 )
	or x11, x12, x11
	lhu x12, 16 ( x18 )
	or x11, x12, x11
	lhu x12, 18 ( x18 )
	or x11, x12, x11
	lhu x12, 20 ( x18 )
	or x11, x12, x11
	lhu x12, 22 ( x18 )
	or x11, x12, x11
	lhu x12, 68 ( sp )
	or x11, x12, x11
	beq x0, x11, .LBB5_158
.LBB5_157:                              //  %if.then11.i
	lui x10, (49152>>12)&1048575
	sh x15, 18 ( x14 )
	sh x10, 16 ( x14 )
	jal x0, .LBB5_160
.LBB5_159:                              //  %if.end13.i
	lh x10, 6 ( x18 )
	sh x10, 16 ( x14 )
	lh x10, 8 ( x18 )
	sh x10, 14 ( x14 )
	lh x10, 10 ( x18 )
	sh x10, 12 ( x14 )
	lh x10, 12 ( x18 )
	sh x10, 10 ( x14 )
	lh x10, 14 ( x18 )
	sh x10, 8 ( x14 )
	lh x10, 16 ( x18 )
	sh x10, 6 ( x14 )
	lh x10, 18 ( x18 )
	sh x10, 4 ( x14 )
	lh x10, 20 ( x18 )
	sh x10, 2 ( x14 )
	lh x10, 66 ( sp )
	sh x10, 0 ( x14 )
	jal x0, .LBB5_160
.LBB5_174:                              //  %for.cond.1
	or x17, x17, x5
	or x16, x16, x17
	or x15, x15, x16
	or x14, x14, x15
	or x13, x13, x14
	or x12, x12, x13
	or x11, x11, x12
	or x10, x10, x11
	add x11, x26, %lo( 65535 )
	and x10, x11, x10
	beq x0, x10, .LBB5_175
.LBB5_106:                              //  %if.then43
	add x10, sp, 44
	jal enormlz
	lhu x6, 72 ( sp )
	sub x9, x0, x10
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	bltu x0, x6, .LBB5_110
	jal x0, .LBB5_108
.LBB5_158:                              //  %if.end12.i
	or x10, x15, x10
	sh x10, 18 ( x14 )
	sh x0, 16 ( x14 )
	jal x0, .LBB5_160
.LBB5_175:                              //  %for.cond.10
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	sh x0, 18 ( x10 )
.LBB5_176:                              //  %cleanup
	sh x0, 16 ( x10 )
	sh x0, 14 ( x10 )
	sh x0, 12 ( x10 )
	sh x0, 10 ( x10 )
	sh x0, 8 ( x10 )
	sh x0, 6 ( x10 )
	sh x0, 4 ( x10 )
	sh x0, 2 ( x10 )
	sh x0, 0 ( x10 )
	jal x0, .LBB5_160
.LBB5_82:                               //  %for.cond20.preheader.i312
	sh x0, 22 ( x19 )
	sh x0, 20 ( x19 )
	sh x0, 18 ( x19 )
	sh x0, 16 ( x19 )
	sh x0, 14 ( x19 )
	sh x0, 12 ( x19 )
	sh x0, 10 ( x19 )
	sh x0, 8 ( x19 )
	sh x0, 6 ( x19 )
	jal x0, .LBB5_94
.LBB5_177:                              //  %for.cond20.preheader.i
	sh x0, 22 ( x18 )
	sh x0, 20 ( x18 )
	sh x0, 18 ( x18 )
	sh x0, 16 ( x18 )
	sh x0, 14 ( x18 )
	sh x0, 12 ( x18 )
	sh x0, 10 ( x18 )
	sh x0, 8 ( x18 )
	sh x0, 6 ( x18 )
	sh x0, 4 ( x18 )
	sh x0, 68 ( sp )
	add x9, x21, %lo( 32767 )
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	bltu x0, x6, .LBB5_110
	jal x0, .LBB5_108
.LBB5_79:                               //  %if.then27
	sh x0, 18 ( x11 )
	jal x0, .LBB5_80
.LBB5_34:                               //  %land.lhs.true10
	add x10, x21, %lo( 32767 )
	bne x9, x10, .LBB5_71
.LBB5_35:                               //  %for.body.preheader.i.i535
	lhu x10, 0 ( x20 )
	bltu x0, x10, .LBB5_71
.LBB5_36:                               //  %for.inc.i.i538
	lhu x10, 2 ( x20 )
	bltu x0, x10, .LBB5_47
.LBB5_37:                               //  %for.inc.1.i.i541
	lhu x10, 4 ( x20 )
	bltu x0, x10, .LBB5_47
.LBB5_38:                               //  %for.inc.2.i.i544
	lhu x10, 6 ( x20 )
	bltu x0, x10, .LBB5_47
.LBB5_39:                               //  %for.inc.3.i.i547
	lhu x10, 8 ( x20 )
	bltu x0, x10, .LBB5_47
.LBB5_40:                               //  %for.inc.4.i.i550
	lhu x10, 10 ( x20 )
	bltu x0, x10, .LBB5_47
.LBB5_41:                               //  %for.inc.5.i.i553
	lhu x10, 12 ( x20 )
	bltu x0, x10, .LBB5_47
.LBB5_42:                               //  %for.inc.6.i.i556
	lhu x10, 14 ( x20 )
	bltu x0, x10, .LBB5_47
.LBB5_43:                               //  %eisinf.exit562
	lhu x10, 16 ( x20 )
	bltu x0, x10, .LBB5_47
.LBB5_44:                               //  %if.then13
	add x10, x21, %lo( 32767 )
	sh x10, 18 ( x11 )
	lui x10, (49152>>12)&1048575
	sh x10, 16 ( x11 )
.LBB5_81:                               //  %cleanup
	sh x0, 14 ( x11 )
	sh x0, 12 ( x11 )
	sh x0, 10 ( x11 )
	sh x0, 8 ( x11 )
	sh x0, 6 ( x11 )
	sh x0, 4 ( x11 )
	sh x0, 2 ( x11 )
	sh x0, 0 ( x11 )
.LBB5_160:                              //  %cleanup
	lw fp, 124 ( sp )               //  4-byte Folded Reload
	lw x27, 128 ( sp )              //  4-byte Folded Reload
	lw x26, 132 ( sp )              //  4-byte Folded Reload
	lw x25, 136 ( sp )              //  4-byte Folded Reload
	lw x24, 140 ( sp )              //  4-byte Folded Reload
	lw x23, 144 ( sp )              //  4-byte Folded Reload
	lw x22, 148 ( sp )              //  4-byte Folded Reload
	lw x21, 152 ( sp )              //  4-byte Folded Reload
	lw x20, 156 ( sp )              //  4-byte Folded Reload
	lw x19, 160 ( sp )              //  4-byte Folded Reload
	lw x18, 164 ( sp )              //  4-byte Folded Reload
	lw x9, 168 ( sp )               //  4-byte Folded Reload
	lw ra, 172 ( sp )               //  4-byte Folded Reload
	add sp, sp, 176
	.cfi_def_cfa 2, 0
	jr ra
.LBB5_55:                               //  %if.then17
	add x10, x21, %lo( 32767 )
	bne x6, x10, .LBB5_65
.LBB5_56:                               //  %for.body.preheader.i.i461
	lhu x12, 0 ( x18 )
	mv x11, x0
	bltu x0, x12, .LBB5_66
.LBB5_57:                               //  %for.inc.i.i464
	lhu x12, 2 ( x18 )
	bltu x0, x12, .LBB5_66
.LBB5_58:                               //  %for.inc.1.i.i467
	lhu x12, 4 ( x18 )
	bltu x0, x12, .LBB5_66
.LBB5_59:                               //  %for.inc.2.i.i470
	lhu x12, 6 ( x18 )
	bltu x0, x12, .LBB5_66
.LBB5_60:                               //  %for.inc.3.i.i473
	lhu x12, 8 ( x18 )
	bltu x0, x12, .LBB5_66
.LBB5_61:                               //  %for.inc.4.i.i476
	lhu x12, 10 ( x18 )
	bltu x0, x12, .LBB5_66
.LBB5_62:                               //  %for.inc.5.i.i479
	lhu x12, 12 ( x18 )
	bltu x0, x12, .LBB5_66
.LBB5_63:                               //  %for.inc.6.i.i482
	lhu x12, 14 ( x18 )
	bltu x0, x12, .LBB5_66
.LBB5_64:                               //  %eisnan.exit.i485
	lhu x12, 16 ( x18 )
	bltu x0, x12, .LBB5_66
.LBB5_65:                               //  %if.end.i487
	srl x11, x23, 15&31
.LBB5_66:                               //  %eisneg.exit
	srl x12, x22, 15&31
	beq x11, x12, .LBB5_68
.LBB5_67:                               //  %eisneg.exit
	add x10, x0, -1
.LBB5_68:                               //  %eisneg.exit
	lw x11, 16 ( sp )               //  4-byte Folded Reload
	sh x10, 18 ( x11 )
.LBB5_80:                               //  %cleanup
	sh x0, 16 ( x11 )
	jal x0, .LBB5_81
.LBB5_170:                              //  %for.cond53.10
	lhu x10, 44 ( sp )
	lhu x11, 70 ( sp )
	beq x11, x10, .LBB5_172
.LBB5_171:                              //  %for.cond53.10
	add x10, x0, -1
	sw x10, 12 ( sp )               //  4-byte Folded Spill
.LBB5_172:                              //  %for.cond53.10
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	lw x11, 12 ( sp )               //  4-byte Folded Reload
	sh x11, 18 ( x10 )
	jal x0, .LBB5_176
.Lfunc_end5:
	.size	ediv, .Lfunc_end5-ediv
	.cfi_endproc
                                        //  -- End function
	.type	emul,@function          //  -- Begin function emul
emul:                                   //  @emul
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -144
	.cfi_adjust_cfa_offset 144
	sw x19, 128 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x10
	sw x25, 104 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	lhu x25, 18 ( x19 )
	sw x24, 108 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	lui x24, %hi( 32767 )
	sw x21, 120 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x21, x24, %lo( 32767 )
	sw x9, 136 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 132 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 92 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x23, 112 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	mv x9, x13
	mv fp, x12
	mv x18, x11
	and x23, x21, x25
	sw ra, 140 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 124 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22, 116 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x26, 100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 96 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	bne x23, x21, .LBB6_11
.LBB6_1:                                //  %for.body.preheader.i
	lhu x10, 0 ( x19 )
	bltu x0, x10, .LBB6_10
.LBB6_2:                                //  %for.inc.i
	lhu x11, 2 ( x19 )
	bltu x0, x11, .LBB6_10
.LBB6_3:                                //  %for.inc.1.i
	lhu x11, 4 ( x19 )
	bltu x0, x11, .LBB6_10
.LBB6_4:                                //  %for.inc.2.i
	lhu x11, 6 ( x19 )
	bltu x0, x11, .LBB6_10
.LBB6_5:                                //  %for.inc.3.i
	lhu x11, 8 ( x19 )
	bltu x0, x11, .LBB6_10
.LBB6_6:                                //  %for.inc.4.i
	lhu x11, 10 ( x19 )
	bltu x0, x11, .LBB6_10
.LBB6_7:                                //  %for.inc.5.i
	lhu x11, 12 ( x19 )
	bltu x0, x11, .LBB6_10
.LBB6_8:                                //  %for.inc.6.i
	lhu x11, 14 ( x19 )
	bltu x0, x11, .LBB6_10
.LBB6_9:                                //  %eisnan.exit
	lhu x11, 16 ( x19 )
	beq x0, x11, .LBB6_11
.LBB6_10:                               //  %if.then
	sh x10, 0 ( fp )
	lh x10, 2 ( x19 )
	sh x10, 2 ( fp )
	lh x10, 4 ( x19 )
	sh x10, 4 ( fp )
	lh x10, 6 ( x19 )
	sh x10, 6 ( fp )
	lh x10, 8 ( x19 )
	sh x10, 8 ( fp )
	lh x10, 10 ( x19 )
	sh x10, 10 ( fp )
	lh x10, 12 ( x19 )
	sh x10, 12 ( fp )
	lh x10, 14 ( x19 )
	sh x10, 14 ( fp )
	lh x10, 16 ( x19 )
	sh x10, 16 ( fp )
	lh x10, 18 ( x19 )
	sh x10, 18 ( fp )
	jal x0, .LBB6_136
.LBB6_11:                               //  %if.end
	lhu x20, 18 ( x18 )
	and x22, x21, x20
	bne x22, x21, .LBB6_22
.LBB6_12:                               //  %for.body.preheader.i152
	lhu x10, 0 ( x18 )
	bltu x0, x10, .LBB6_21
.LBB6_13:                               //  %for.inc.i155
	lhu x11, 2 ( x18 )
	bltu x0, x11, .LBB6_21
.LBB6_14:                               //  %for.inc.1.i160
	lhu x11, 4 ( x18 )
	bltu x0, x11, .LBB6_21
.LBB6_15:                               //  %for.inc.2.i163
	lhu x11, 6 ( x18 )
	bltu x0, x11, .LBB6_21
.LBB6_16:                               //  %for.inc.3.i166
	lhu x11, 8 ( x18 )
	bltu x0, x11, .LBB6_21
.LBB6_17:                               //  %for.inc.4.i169
	lhu x11, 10 ( x18 )
	bltu x0, x11, .LBB6_21
.LBB6_18:                               //  %for.inc.5.i172
	lhu x11, 12 ( x18 )
	bltu x0, x11, .LBB6_21
.LBB6_19:                               //  %for.inc.6.i175
	lhu x11, 14 ( x18 )
	bltu x0, x11, .LBB6_21
.LBB6_20:                               //  %eisnan.exit180
	lhu x11, 16 ( x18 )
	beq x0, x11, .LBB6_22
.LBB6_21:                               //  %if.then3
	sh x10, 0 ( fp )
	lh x10, 2 ( x18 )
	sh x10, 2 ( fp )
	lh x10, 4 ( x18 )
	sh x10, 4 ( fp )
	lh x10, 6 ( x18 )
	sh x10, 6 ( fp )
	lh x10, 8 ( x18 )
	sh x10, 8 ( fp )
	lh x10, 10 ( x18 )
	sh x10, 10 ( fp )
	lh x10, 12 ( x18 )
	sh x10, 12 ( fp )
	lh x10, 14 ( x18 )
	sh x10, 14 ( fp )
	lh x10, 16 ( x18 )
	sh x10, 16 ( fp )
	lh x10, 18 ( x18 )
	sh x10, 18 ( fp )
	jal x0, .LBB6_136
.LBB6_22:                               //  %if.end4
	bne x23, x21, .LBB6_33
.LBB6_23:                               //  %for.body.preheader.i.i220
	lhu x10, 0 ( x19 )
	bltu x0, x10, .LBB6_33
.LBB6_24:                               //  %for.inc.i.i
	lhu x10, 2 ( x19 )
	bltu x0, x10, .LBB6_33
.LBB6_25:                               //  %for.inc.1.i.i
	lhu x10, 4 ( x19 )
	bltu x0, x10, .LBB6_33
.LBB6_26:                               //  %for.inc.2.i.i
	lhu x10, 6 ( x19 )
	bltu x0, x10, .LBB6_33
.LBB6_27:                               //  %for.inc.3.i.i
	lhu x10, 8 ( x19 )
	bltu x0, x10, .LBB6_33
.LBB6_28:                               //  %for.inc.4.i.i
	lhu x10, 10 ( x19 )
	bltu x0, x10, .LBB6_33
.LBB6_29:                               //  %for.inc.5.i.i
	lhu x10, 12 ( x19 )
	bltu x0, x10, .LBB6_33
.LBB6_30:                               //  %for.inc.6.i.i
	lhu x10, 14 ( x19 )
	bltu x0, x10, .LBB6_33
.LBB6_31:                               //  %eisinf.exit
	lhu x10, 16 ( x19 )
	bltu x0, x10, .LBB6_33
.LBB6_32:                               //  %land.lhs.true
	lui x10, %hi( ezero )
	add x11, x10, %lo( ezero )
	mv x10, x18
	jal ecmp
	beq x0, x10, .LBB6_44
.LBB6_33:                               //  %lor.lhs.false
	bne x22, x21, .LBB6_45
.LBB6_34:                               //  %for.body.preheader.i.i501
	lhu x10, 0 ( x18 )
	bltu x0, x10, .LBB6_45
.LBB6_35:                               //  %for.inc.i.i504
	lhu x10, 2 ( x18 )
	bltu x0, x10, .LBB6_45
.LBB6_36:                               //  %for.inc.1.i.i507
	lhu x10, 4 ( x18 )
	bltu x0, x10, .LBB6_45
.LBB6_37:                               //  %for.inc.2.i.i510
	lhu x10, 6 ( x18 )
	bltu x0, x10, .LBB6_45
.LBB6_38:                               //  %for.inc.3.i.i513
	lhu x10, 8 ( x18 )
	bltu x0, x10, .LBB6_45
.LBB6_39:                               //  %for.inc.4.i.i516
	lhu x10, 10 ( x18 )
	bltu x0, x10, .LBB6_45
.LBB6_40:                               //  %for.inc.5.i.i519
	lhu x10, 12 ( x18 )
	bltu x0, x10, .LBB6_45
.LBB6_41:                               //  %for.inc.6.i.i522
	lhu x10, 14 ( x18 )
	bltu x0, x10, .LBB6_45
.LBB6_42:                               //  %eisinf.exit528
	lhu x10, 16 ( x18 )
	bltu x0, x10, .LBB6_45
.LBB6_43:                               //  %land.lhs.true10
	lui x10, %hi( ezero )
	add x11, x10, %lo( ezero )
	mv x10, x19
	jal ecmp
	beq x0, x10, .LBB6_44
.LBB6_45:                               //  %if.end14
	bne x23, x21, .LBB6_55
.LBB6_46:                               //  %for.body.preheader.i.i460
	lhu x10, 0 ( x19 )
	bltu x0, x10, .LBB6_55
.LBB6_47:                               //  %for.inc.i.i463
	lhu x10, 2 ( x19 )
	bltu x0, x10, .LBB6_55
.LBB6_48:                               //  %for.inc.1.i.i466
	lhu x10, 4 ( x19 )
	bltu x0, x10, .LBB6_55
.LBB6_49:                               //  %for.inc.2.i.i469
	lhu x10, 6 ( x19 )
	bltu x0, x10, .LBB6_55
.LBB6_50:                               //  %for.inc.3.i.i472
	lhu x10, 8 ( x19 )
	bltu x0, x10, .LBB6_55
.LBB6_51:                               //  %for.inc.4.i.i475
	lhu x10, 10 ( x19 )
	bltu x0, x10, .LBB6_55
.LBB6_52:                               //  %for.inc.5.i.i478
	lhu x10, 12 ( x19 )
	bltu x0, x10, .LBB6_55
.LBB6_53:                               //  %for.inc.6.i.i481
	lhu x10, 14 ( x19 )
	bltu x0, x10, .LBB6_55
.LBB6_54:                               //  %eisinf.exit487
	lhu x10, 16 ( x19 )
	beq x0, x10, .LBB6_68
.LBB6_55:                               //  %lor.lhs.false17
	bne x22, x21, .LBB6_94
.LBB6_56:                               //  %for.body.preheader.i.i428
	lhu x10, 0 ( x18 )
	bltu x0, x10, .LBB6_94
.LBB6_57:                               //  %for.inc.i.i431
	lhu x10, 2 ( x18 )
	bltu x0, x10, .LBB6_94
.LBB6_58:                               //  %for.inc.1.i.i434
	lhu x10, 4 ( x18 )
	bltu x0, x10, .LBB6_94
.LBB6_59:                               //  %for.inc.2.i.i437
	lhu x10, 6 ( x18 )
	bltu x0, x10, .LBB6_94
.LBB6_60:                               //  %for.inc.3.i.i440
	lhu x10, 8 ( x18 )
	bltu x0, x10, .LBB6_94
.LBB6_61:                               //  %for.inc.4.i.i443
	lhu x10, 10 ( x18 )
	bltu x0, x10, .LBB6_94
.LBB6_62:                               //  %for.inc.5.i.i446
	lhu x10, 12 ( x18 )
	bltu x0, x10, .LBB6_94
.LBB6_63:                               //  %for.inc.6.i.i449
	lhu x10, 14 ( x18 )
	bltu x0, x10, .LBB6_94
.LBB6_64:                               //  %eisinf.exit455
	lhu x10, 16 ( x18 )
	beq x0, x10, .LBB6_65
.LBB6_94:                               //  %if.end27
	sll x10, x25, 16&31
	sra x10, x10, 16&31
	srl x10, x10, 15&31
	add x24, sp, 40
	sh x10, 40 ( sp )
	sh x23, 42 ( sp )
	bne x23, x21, .LBB6_104
.LBB6_95:                               //  %for.body.preheader.i.i289
	lhu x10, 2 ( x19 )
	lhu x11, 0 ( x19 )
	or x12, x10, x11
	bltu x0, x12, .LBB6_103
.LBB6_96:                               //  %for.inc.1.i.i295
	lhu x12, 4 ( x19 )
	mv x10, x0
	bltu x0, x12, .LBB6_103
.LBB6_97:                               //  %for.inc.2.i.i298
	lhu x12, 6 ( x19 )
	bltu x0, x12, .LBB6_103
.LBB6_98:                               //  %for.inc.3.i.i301
	lhu x12, 8 ( x19 )
	bltu x0, x12, .LBB6_103
.LBB6_99:                               //  %for.inc.4.i.i304
	lhu x12, 10 ( x19 )
	bltu x0, x12, .LBB6_103
.LBB6_100:                              //  %for.inc.5.i.i307
	lhu x12, 12 ( x19 )
	bltu x0, x12, .LBB6_103
.LBB6_101:                              //  %for.inc.6.i.i310
	lhu x12, 14 ( x19 )
	bltu x0, x12, .LBB6_103
.LBB6_102:                              //  %for.inc.7.i.i312
	lhu x12, 16 ( x19 )
	beq x0, x12, .LBB6_93
.LBB6_103:                              //  %if.then13.i331
	lhu x5, 16 ( x19 )
	lhu x12, 14 ( x19 )
	lhu x13, 12 ( x19 )
	lhu x14, 10 ( x19 )
	lhu x15, 8 ( x19 )
	lhu x16, 6 ( x19 )
	lhu x17, 4 ( x19 )
	lh x6, -2 ( x19 )
	sh x11, 22 ( x24 )
	sh x10, 20 ( x24 )
	sh x5, 6 ( x24 )
	sh x12, 8 ( x24 )
	sh x13, 10 ( x24 )
	sh x14, 12 ( x24 )
	sh x15, 14 ( x24 )
	sh x16, 16 ( x24 )
	sh x17, 18 ( x24 )
	sh x0, 4 ( x24 )
	sh x6, 64 ( sp )
	jal x0, .LBB6_105
.LBB6_104:                              //  %if.end28.i349
	lhu x10, 2 ( x19 )
	lhu x17, 4 ( x19 )
	lhu x16, 6 ( x19 )
	lhu x15, 8 ( x19 )
	lhu x14, 10 ( x19 )
	lhu x13, 12 ( x19 )
	lhu x12, 14 ( x19 )
	lhu x5, 16 ( x19 )
	lhu x11, 0 ( x19 )
	sh x13, 10 ( x24 )
	sh x12, 8 ( x24 )
	sh x5, 6 ( x24 )
	sh x14, 12 ( x24 )
	sh x15, 14 ( x24 )
	sh x16, 16 ( x24 )
	sh x17, 18 ( x24 )
	sh x10, 20 ( x24 )
	sh x11, 22 ( x24 )
	sh x0, 4 ( x24 )
	sh x0, 64 ( sp )
.LBB6_105:                              //  %emovi.exit351
	sll x6, x20, 16&31
	sra x6, x6, 16&31
	srl x6, x6, 15&31
	sh x6, 14 ( sp )
	add x6, sp, 14
	sh x22, 16 ( sp )
	bne x22, x21, .LBB6_115
.LBB6_106:                              //  %for.body.preheader.i.i236
	lhu x7, 2 ( x18 )
	lhu x28, 0 ( x18 )
	or x29, x7, x28
	bltu x0, x29, .LBB6_114
.LBB6_107:                              //  %for.inc.1.i.i242
	lhu x29, 4 ( x18 )
	mv x7, x0
	bltu x0, x29, .LBB6_114
.LBB6_108:                              //  %for.inc.2.i.i245
	lhu x29, 6 ( x18 )
	bltu x0, x29, .LBB6_114
.LBB6_109:                              //  %for.inc.3.i.i248
	lhu x29, 8 ( x18 )
	bltu x0, x29, .LBB6_114
.LBB6_110:                              //  %for.inc.4.i.i251
	lhu x29, 10 ( x18 )
	bltu x0, x29, .LBB6_114
.LBB6_111:                              //  %for.inc.5.i.i254
	lhu x29, 12 ( x18 )
	bltu x0, x29, .LBB6_114
.LBB6_112:                              //  %for.inc.6.i.i257
	lhu x29, 14 ( x18 )
	bltu x0, x29, .LBB6_114
.LBB6_113:                              //  %for.inc.7.i.i
	lhu x29, 16 ( x18 )
	beq x0, x29, .LBB6_147
.LBB6_114:                              //  %if.then13.i
	sh x7, 20 ( x6 )
	lh x7, 16 ( x18 )
	sh x28, 22 ( x6 )
	sh x0, 4 ( x6 )
	sh x7, 6 ( x6 )
	lh x7, 14 ( x18 )
	sh x7, 8 ( x6 )
	lh x7, 12 ( x18 )
	sh x7, 10 ( x6 )
	lh x7, 10 ( x18 )
	sh x7, 12 ( x6 )
	lh x7, 8 ( x18 )
	sh x7, 14 ( x6 )
	lh x7, 6 ( x18 )
	sh x7, 16 ( x6 )
	lh x7, 4 ( x18 )
	sh x7, 18 ( x6 )
	lh x6, -2 ( x18 )
	sh x6, 38 ( sp )
	lui x18, %hi( 65535 )
	mv x6, x22
	beq x0, x23, .LBB6_118
.LBB6_120:                              //  %mnzer1
	bltu x0, x6, .LBB6_123
.LBB6_121:                              //  %for.cond52
	lhu x10, 18 ( sp )
	bltu x0, x10, .LBB6_122
.LBB6_137:                              //  %for.cond52.1
	lhu x10, 20 ( sp )
	bltu x0, x10, .LBB6_122
.LBB6_138:                              //  %for.cond52.2
	lhu x10, 22 ( sp )
	bltu x0, x10, .LBB6_122
.LBB6_139:                              //  %for.cond52.3
	lhu x10, 24 ( sp )
	bltu x0, x10, .LBB6_122
.LBB6_140:                              //  %for.cond52.4
	lhu x10, 26 ( sp )
	bltu x0, x10, .LBB6_122
.LBB6_141:                              //  %for.cond52.5
	lhu x10, 28 ( sp )
	bltu x0, x10, .LBB6_122
.LBB6_142:                              //  %for.cond52.6
	lhu x10, 30 ( sp )
	bltu x0, x10, .LBB6_122
.LBB6_143:                              //  %for.cond52.7
	lhu x10, 32 ( sp )
	bltu x0, x10, .LBB6_122
.LBB6_144:                              //  %for.cond52.8
	lhu x10, 34 ( sp )
	bltu x0, x10, .LBB6_122
.LBB6_145:                              //  %for.cond52.9
	lhu x10, 36 ( sp )
	beq x0, x10, .LBB6_146
.LBB6_122:                              //  %if.then60
	add x10, sp, 14
	jal enormlz
	lhu x6, 16 ( sp )
	sub x22, x22, x10
	jal x0, .LBB6_123
.LBB6_115:                              //  %if.end28.i
	lh x7, 16 ( x18 )
	sh x7, 6 ( x6 )
	lh x7, 14 ( x18 )
	sh x7, 8 ( x6 )
	lh x7, 12 ( x18 )
	sh x7, 10 ( x6 )
	lh x7, 10 ( x18 )
	sh x7, 12 ( x6 )
	lh x7, 8 ( x18 )
	sh x7, 14 ( x6 )
	lh x7, 6 ( x18 )
	sh x7, 16 ( x6 )
	lh x7, 4 ( x18 )
	sh x7, 18 ( x6 )
	lh x7, 2 ( x18 )
	sh x7, 20 ( x6 )
	lh x7, 0 ( x18 )
	sh x7, 22 ( x6 )
.LBB6_116:                              //  %emovi.exit
	sh x0, 4 ( x6 )
	sh x0, 38 ( sp )
	lui x18, %hi( 65535 )
	mv x6, x22
	bltu x0, x23, .LBB6_120
.LBB6_118:                              //  %for.cond.1
	or x12, x12, x5
	or x12, x13, x12
	or x12, x14, x12
	or x12, x15, x12
	or x12, x16, x12
	or x12, x17, x12
	or x10, x10, x12
	or x10, x11, x10
	add x11, x18, %lo( 65535 )
	and x10, x11, x10
	beq x0, x10, .LBB6_146
.LBB6_119:                              //  %if.then42
	add x10, sp, 40
	jal enormlz
	lhu x6, 16 ( sp )
	sub x23, x0, x10
	beq x0, x6, .LBB6_121
.LBB6_123:                              //  %mnzer2
	lh x10, 14 ( sp )
	mv x25, x0
	add x27, x18, %lo( 65535 )
	mv x19, x25
	sh x6, 54 ( x9 )
	add x26, x0, 24
	add x18, sp, 14
	add x20, sp, 66
	mv x7, x25
	mv x6, x25
	mv x5, x25
	mv x17, x25
	mv x16, x25
	mv x15, x25
	mv x13, x25
	mv x12, x25
	mv x11, x25
	mv x14, x25
	sh x10, 52 ( x9 )
	sh x0, 76 ( x9 )
	sh x0, 74 ( x9 )
	sh x0, 72 ( x9 )
	sh x0, 70 ( x9 )
	sh x0, 68 ( x9 )
	sh x0, 66 ( x9 )
	sh x0, 64 ( x9 )
	sh x0, 62 ( x9 )
	sh x0, 60 ( x9 )
	sh x0, 58 ( x9 )
	sh x0, 56 ( x9 )
	add x10, x26, x24
	lhu x10, 0 ( x10 )
	mv x28, x25
	bltu x0, x10, .LBB6_125
.LBB6_126:                              //  %if.end.i
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x11
	and x14, x27, x14
	add x26, x26, -2
	mv x11, x12
	mv x12, x13
	mv x13, x15
	mv x15, x16
	mv x16, x17
	mv x17, x5
	mv x5, x6
	mv x6, x7
	or x19, x14, x19
	xor x29, x26, 4
	mv x7, x28
	mv x14, x10
	sh x11, 74 ( x9 )
	sh x10, 76 ( x9 )
	sh x12, 72 ( x9 )
	sh x13, 70 ( x9 )
	sh x15, 68 ( x9 )
	sh x16, 66 ( x9 )
	sh x17, 64 ( x9 )
	sh x5, 62 ( x9 )
	sh x6, 60 ( x9 )
	sh x28, 58 ( x9 )
	sh x0, 56 ( x9 )
	beq x0, x29, .LBB6_127
.LBB6_124:                              //  %for.body10.i
                                        //    in Loop: Header=BB6_126 Depth=1
	add x10, x26, x24
	lhu x10, 0 ( x10 )
	mv x28, x25
	beq x0, x10, .LBB6_126
.LBB6_125:                              //  %if.else.i
	mv x11, x18
	mv x12, x20
	jal m16m
	lhu x10, 24 ( x20 )
	lhu x11, 76 ( x9 )
	lhu x12, 70 ( x9 )
	lhu x13, 20 ( x20 )
	lhu x15, 68 ( x9 )
	add x14, x10, x11
	lhu x11, 22 ( x20 )
	srl x10, x14, 16&31
	lhu x16, 66 ( x9 )
	lhu x17, 64 ( x9 )
	add x10, x11, x10
	lhu x11, 74 ( x9 )
	lhu x5, 62 ( x9 )
	lhu x6, 60 ( x9 )
	lhu x7, 58 ( x9 )
	add x11, x11, x10
	lhu x10, 18 ( x20 )
	lh x28, 70 ( sp )
	sh x14, 76 ( x9 )
	sh x11, 74 ( x9 )
	add x10, x10, x12
	srl x12, x11, 16&31
	and x12, x12, 1
	add x12, x13, x12
	lhu x13, 72 ( x9 )
	add x12, x13, x12
	srl x13, x12, 16&31
	and x13, x13, 1
	add x13, x13, x10
	lhu x10, 16 ( x20 )
	sh x12, 72 ( x9 )
	sh x13, 70 ( x9 )
	add x10, x10, x15
	srl x15, x13, 16&31
	and x15, x15, 1
	add x15, x15, x10
	lhu x10, 14 ( x20 )
	sh x15, 68 ( x9 )
	add x10, x10, x16
	srl x16, x15, 16&31
	and x16, x16, 1
	add x16, x16, x10
	lhu x10, 12 ( x20 )
	sh x16, 66 ( x9 )
	add x10, x10, x17
	srl x17, x16, 16&31
	and x17, x17, 1
	add x17, x17, x10
	lhu x10, 10 ( x20 )
	sh x17, 64 ( x9 )
	add x10, x10, x5
	srl x5, x17, 16&31
	and x5, x5, 1
	add x5, x5, x10
	lhu x10, 8 ( x20 )
	sh x5, 62 ( x9 )
	add x10, x10, x6
	srl x6, x5, 16&31
	and x6, x6, 1
	add x6, x6, x10
	lhu x10, 6 ( x20 )
	sh x6, 60 ( x9 )
	add x10, x10, x7
	srl x7, x6, 16&31
	and x7, x7, 1
	add x7, x7, x10
	lh x10, 56 ( x9 )
	sh x7, 58 ( x9 )
	add x10, x28, x10
	srl x28, x7, 16&31
	and x28, x28, 1
	add x28, x28, x10
	sh x28, 56 ( x9 )
	jal x0, .LBB6_126
.LBB6_127:                              //  %emulm.exit
	sh x11, 22 ( x18 )
	lh x11, 54 ( x9 )
	sh x10, 38 ( sp )
	lh x10, 52 ( x9 )
	mv x20, x0
	sh x11, 2 ( x18 )
	lui x11, %hi( -16382 )
	sh x10, 14 ( sp )
	add x10, x22, x23
	add x11, x11, %lo( -16382 )
	sh x15, 16 ( x18 )
	sh x12, 20 ( x18 )
	sh x13, 18 ( x18 )
	add x13, x11, x10
	add x14, x0, 64
	mv x10, x18
	mv x11, x19
	mv x12, x20
	mv x15, x9
	sh x16, 14 ( x18 )
	sh x17, 12 ( x18 )
	sh x5, 10 ( x18 )
	sh x6, 8 ( x18 )
	sh x28, 6 ( x18 )
	sh x0, 4 ( x18 )
	jal emdnorm
	lhu x11, 14 ( sp )
	lhu x12, 40 ( sp )
	bne x12, x11, .LBB6_128
.LBB6_129:                              //  %emulm.exit
	lhu x13, 2 ( x18 )
	mv x10, x13
	bne x12, x11, .LBB6_130
.LBB6_131:                              //  %emulm.exit
	sh x10, 18 ( fp )
	sh x20, 14 ( sp )
	bne x13, x21, .LBB6_135
.LBB6_132:                              //  %for.body.preheader.i.i
	lhu x11, 6 ( x18 )
	lhu x12, 8 ( x18 )
	sh x0, 14 ( fp )
	sh x0, 12 ( fp )
	sh x0, 10 ( fp )
	or x11, x11, x12
	lhu x12, 10 ( x18 )
	sh x0, 8 ( fp )
	sh x0, 6 ( fp )
	sh x0, 4 ( fp )
	or x11, x12, x11
	lhu x12, 12 ( x18 )
	sh x0, 2 ( fp )
	sh x0, 0 ( fp )
	or x11, x12, x11
	lhu x12, 14 ( x18 )
	or x11, x12, x11
	lhu x12, 16 ( x18 )
	or x11, x12, x11
	lhu x12, 18 ( x18 )
	or x11, x12, x11
	lhu x12, 20 ( x18 )
	or x11, x12, x11
	lhu x12, 22 ( x18 )
	or x11, x12, x11
	lhu x12, 38 ( sp )
	or x11, x12, x11
	beq x0, x11, .LBB6_134
.LBB6_133:                              //  %if.then11.i
	lui x10, (49152>>12)&1048575
	sh x21, 18 ( fp )
	sh x10, 16 ( fp )
	jal x0, .LBB6_136
.LBB6_128:
	add x20, x0, -1
	lhu x13, 2 ( x18 )
	mv x10, x13
	beq x12, x11, .LBB6_131
.LBB6_130:                              //  %emulm.exit
	lui x10, %hi( -32768 )
	add x10, x10, %lo( -32768 )
	or x10, x10, x13
	sh x10, 18 ( fp )
	sh x20, 14 ( sp )
	beq x13, x21, .LBB6_132
.LBB6_135:                              //  %if.end13.i
	lh x10, 6 ( x18 )
	sh x10, 16 ( fp )
	lh x10, 8 ( x18 )
	sh x10, 14 ( fp )
	lh x10, 10 ( x18 )
	sh x10, 12 ( fp )
	lh x10, 12 ( x18 )
	sh x10, 10 ( fp )
	lh x10, 14 ( x18 )
	sh x10, 8 ( fp )
	lh x10, 16 ( x18 )
	sh x10, 6 ( fp )
	lh x10, 18 ( x18 )
	sh x10, 4 ( fp )
	lh x10, 20 ( x18 )
	sh x10, 2 ( fp )
	lh x10, 36 ( sp )
	sh x10, 0 ( fp )
	jal x0, .LBB6_136
.LBB6_134:                              //  %if.end12.i
	or x10, x21, x10
	sh x10, 18 ( fp )
	sh x0, 16 ( fp )
	jal x0, .LBB6_136
.LBB6_146:                              //  %for.cond52.10
	sh x0, 18 ( fp )
.LBB6_91:                               //  %cleanup
	sh x0, 16 ( fp )
.LBB6_92:                               //  %cleanup
	sh x0, 14 ( fp )
	sh x0, 12 ( fp )
	sh x0, 10 ( fp )
	sh x0, 8 ( fp )
	sh x0, 6 ( fp )
	sh x0, 4 ( fp )
	sh x0, 2 ( fp )
	sh x0, 0 ( fp )
.LBB6_136:                              //  %cleanup
	lw fp, 92 ( sp )                //  4-byte Folded Reload
	lw x27, 96 ( sp )               //  4-byte Folded Reload
	lw x26, 100 ( sp )              //  4-byte Folded Reload
	lw x25, 104 ( sp )              //  4-byte Folded Reload
	lw x24, 108 ( sp )              //  4-byte Folded Reload
	lw x23, 112 ( sp )              //  4-byte Folded Reload
	lw x22, 116 ( sp )              //  4-byte Folded Reload
	lw x21, 120 ( sp )              //  4-byte Folded Reload
	lw x20, 124 ( sp )              //  4-byte Folded Reload
	lw x19, 128 ( sp )              //  4-byte Folded Reload
	lw x18, 132 ( sp )              //  4-byte Folded Reload
	lw x9, 136 ( sp )               //  4-byte Folded Reload
	lw ra, 140 ( sp )               //  4-byte Folded Reload
	add sp, sp, 144
	.cfi_def_cfa 2, 0
	jr ra
.LBB6_93:                               //  %for.cond20.preheader.i287
	mv x12, x0
	sh x0, 22 ( x24 )
	sh x0, 20 ( x24 )
	sh x0, 18 ( x24 )
	sh x0, 16 ( x24 )
	sh x0, 14 ( x24 )
	sh x0, 12 ( x24 )
	sh x0, 10 ( x24 )
	sh x0, 8 ( x24 )
	sh x0, 6 ( x24 )
	sh x0, 4 ( x24 )
	mv x13, x12
	mv x14, x12
	mv x15, x12
	mv x16, x12
	mv x17, x12
	mv x10, x12
	sh x0, 64 ( sp )
	mv x11, x12
	mv x5, x12
	jal x0, .LBB6_105
.LBB6_147:                              //  %for.cond20.preheader.i
	sh x0, 22 ( x6 )
	sh x0, 20 ( x6 )
	sh x0, 18 ( x6 )
	sh x0, 16 ( x6 )
	sh x0, 14 ( x6 )
	sh x0, 12 ( x6 )
	sh x0, 10 ( x6 )
	sh x0, 8 ( x6 )
	sh x0, 6 ( x6 )
	jal x0, .LBB6_116
.LBB6_65:                               //  %if.then20
	bne x23, x21, .LBB6_76
.LBB6_66:                               //  %for.body.preheader.i.i395
	lhu x10, 0 ( x19 )
	beq x0, x10, .LBB6_68
.LBB6_67:
	mv x10, x0
	lhu x12, 0 ( x18 )
	mv x11, x0
	bltu x0, x12, .LBB6_88
	jal x0, .LBB6_79
.LBB6_68:                               //  %for.inc.i.i398
	lhu x11, 2 ( x19 )
	mv x10, x0
	bltu x0, x11, .LBB6_77
.LBB6_69:                               //  %for.inc.1.i.i401
	lhu x11, 4 ( x19 )
	bltu x0, x11, .LBB6_77
.LBB6_70:                               //  %for.inc.2.i.i404
	lhu x11, 6 ( x19 )
	bltu x0, x11, .LBB6_77
.LBB6_71:                               //  %for.inc.3.i.i407
	lhu x11, 8 ( x19 )
	bltu x0, x11, .LBB6_77
.LBB6_72:                               //  %for.inc.4.i.i410
	lhu x11, 10 ( x19 )
	bltu x0, x11, .LBB6_77
.LBB6_73:                               //  %for.inc.5.i.i413
	lhu x11, 12 ( x19 )
	bltu x0, x11, .LBB6_77
.LBB6_74:                               //  %for.inc.6.i.i416
	lhu x11, 14 ( x19 )
	bltu x0, x11, .LBB6_77
.LBB6_75:                               //  %eisnan.exit.i419
	lhu x11, 16 ( x19 )
	bltu x0, x11, .LBB6_77
.LBB6_76:                               //  %if.end.i421
	srl x10, x25, 15&31
.LBB6_77:                               //  %eisneg.exit424
	add x11, x24, %lo( 32767 )
	bne x22, x11, .LBB6_87
.LBB6_78:                               //  %for.body.preheader.i.i363
	lhu x12, 0 ( x18 )
	mv x11, x0
	bltu x0, x12, .LBB6_88
.LBB6_79:                               //  %for.inc.i.i366
	lhu x12, 2 ( x18 )
	bltu x0, x12, .LBB6_88
.LBB6_80:                               //  %for.inc.1.i.i369
	lhu x12, 4 ( x18 )
	bltu x0, x12, .LBB6_88
.LBB6_81:                               //  %for.inc.2.i.i372
	lhu x12, 6 ( x18 )
	bltu x0, x12, .LBB6_88
.LBB6_82:                               //  %for.inc.3.i.i375
	lhu x12, 8 ( x18 )
	bltu x0, x12, .LBB6_88
.LBB6_83:                               //  %for.inc.4.i.i378
	lhu x12, 10 ( x18 )
	bltu x0, x12, .LBB6_88
.LBB6_84:                               //  %for.inc.5.i.i381
	lhu x12, 12 ( x18 )
	bltu x0, x12, .LBB6_88
.LBB6_85:                               //  %for.inc.6.i.i384
	lhu x12, 14 ( x18 )
	bltu x0, x12, .LBB6_88
.LBB6_86:                               //  %eisnan.exit.i387
	lhu x12, 16 ( x18 )
	bltu x0, x12, .LBB6_88
.LBB6_87:                               //  %if.end.i389
	srl x11, x20, 15&31
.LBB6_88:                               //  %eisneg.exit
	beq x10, x11, .LBB6_90
.LBB6_89:                               //  %eisneg.exit
	add x21, x0, -1
.LBB6_90:                               //  %eisneg.exit
	sh x21, 18 ( fp )
	jal x0, .LBB6_91
.LBB6_44:                               //  %if.then13
	add x10, x24, %lo( 32767 )
	sh x10, 18 ( fp )
	lui x10, (49152>>12)&1048575
	sh x10, 16 ( fp )
	jal x0, .LBB6_92
.Lfunc_end6:
	.size	emul, .Lfunc_end6-emul
	.cfi_endproc
                                        //  -- End function
	.type	eiremain,@function      //  -- Begin function eiremain
eiremain:                               //  @eiremain
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	lhu x20, 2 ( x18 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	mv fp, x12
	mv x9, x11
	jal enormlz
	mv x19, x10
	lhu x21, 2 ( x9 )
	mv x10, x9
	jal enormlz
	sub x11, x20, x19
	sub x13, x21, x10
	sh x0, 76 ( fp )
	sh x0, 74 ( fp )
	sh x0, 72 ( fp )
	sh x0, 70 ( fp )
	sh x0, 68 ( fp )
	sh x0, 66 ( fp )
	sh x0, 64 ( fp )
	sh x0, 62 ( fp )
	sh x0, 60 ( fp )
	sh x0, 58 ( fp )
	sh x0, 56 ( fp )
	sh x0, 54 ( fp )
	sh x0, 52 ( fp )
	blt x13, x11, .LBB7_26
.LBB7_1:                                //  %while.body.lr.ph
	lhu x16, 4 ( x9 )
	lui x10, %hi( 65535 )
	add x10, x10, %lo( 65535 )
	seqz x12, x0
	mv x14, x0
	jal x0, .LBB7_2
.LBB7_24:                               //  %if.then
                                        //    in Loop: Header=BB7_2 Depth=1
	sub x29, x30, x19
	sh x29, 24 ( x9 )
	lhu x30, 22 ( x18 )
	srl x29, x29, 16&31
	and x29, x29, 1
	sub x30, x4, x30
	sub x29, x30, x29
	sh x29, 22 ( x9 )
	lhu x30, 20 ( x18 )
	srl x29, x29, 16&31
	and x29, x29, 1
	sub x30, x3, x30
	sub x29, x30, x29
	sh x29, 20 ( x9 )
	lhu x30, 18 ( x18 )
	srl x29, x29, 16&31
	and x29, x29, 1
	sub x30, x31, x30
	sub x29, x30, x29
	sh x29, 18 ( x9 )
	lhu x30, 16 ( x18 )
	srl x29, x29, 16&31
	and x29, x29, 1
	sub x28, x28, x30
	sub x28, x28, x29
	sh x28, 16 ( x9 )
	lhu x29, 14 ( x18 )
	srl x28, x28, 16&31
	and x28, x28, 1
	sub x7, x7, x29
	sub x7, x7, x28
	sh x7, 14 ( x9 )
	lhu x28, 12 ( x18 )
	srl x7, x7, 16&31
	and x7, x7, 1
	sub x6, x6, x28
	sub x6, x6, x7
	sh x6, 12 ( x9 )
	lhu x7, 10 ( x18 )
	srl x6, x6, 16&31
	and x6, x6, 1
	sub x5, x5, x7
	sub x5, x5, x6
	sh x5, 10 ( x9 )
	lhu x6, 8 ( x18 )
	srl x5, x5, 16&31
	and x5, x5, 1
	sub x17, x17, x6
	sub x17, x17, x5
	sh x17, 8 ( x9 )
	lhu x5, 6 ( x18 )
	srl x17, x17, 16&31
	and x17, x17, 1
	sub x13, x13, x5
	sub x13, x13, x17
	sh x13, 6 ( x9 )
	lh x17, 4 ( x18 )
	srl x13, x13, 16&31
	and x13, x13, 1
	sub x16, x16, x17
	sub x13, x16, x13
	sh x13, 4 ( x9 )
	mv x13, x12
.LBB7_25:                               //  %if.end
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x16, 62 ( fp )
	lhu x5, 60 ( fp )
	srl x17, x16, 15&31
	sll x6, x5, 1&31
	or x17, x17, x6
	lhu x6, 64 ( fp )
	sll x16, x16, 1&31
	sh x17, 60 ( fp )
	lhu x17, 58 ( fp )
	srl x7, x6, 15&31
	or x16, x7, x16
	lhu x7, 66 ( fp )
	sll x6, x6, 1&31
	sh x16, 62 ( fp )
	srl x16, x5, 15&31
	srl x28, x7, 15&31
	or x6, x28, x6
	lhu x28, 68 ( fp )
	sll x7, x7, 1&31
	sll x5, x17, 1&31
	or x16, x16, x5
	srl x29, x28, 15&31
	or x7, x29, x7
	lhu x29, 70 ( fp )
	sll x28, x28, 1&31
	sh x16, 58 ( fp )
	sh x7, 66 ( fp )
	srl x30, x29, 15&31
	or x28, x30, x28
	lhu x30, 72 ( fp )
	sll x29, x29, 1&31
	sh x28, 68 ( fp )
	sh x6, 64 ( fp )
	srl x31, x30, 15&31
	or x29, x31, x29
	lhu x31, 74 ( fp )
	sll x30, x30, 1&31
	sh x29, 70 ( fp )
	srl x3, x31, 15&31
	or x30, x3, x30
	lhu x3, 76 ( fp )
	sll x31, x31, 1&31
	sh x30, 72 ( fp )
	sll x16, x3, 1&31
	or x13, x13, x16
	lh x16, 56 ( fp )
	srl x4, x3, 15&31
	sh x13, 76 ( fp )
	srl x13, x17, 15&31
	sll x16, x16, 1&31
	or x31, x4, x31
	or x13, x13, x16
	sh x31, 74 ( fp )
	sh x13, 56 ( fp )
	lhu x13, 12 ( x9 )
	lhu x17, 10 ( x9 )
	srl x16, x13, 15&31
	sll x5, x17, 1&31
	or x16, x16, x5
	lhu x5, 14 ( x9 )
	sll x13, x13, 1&31
	sh x16, 10 ( x9 )
	lhu x16, 8 ( x9 )
	srl x6, x5, 15&31
	or x13, x6, x13
	lhu x6, 16 ( x9 )
	sll x5, x5, 1&31
	sh x13, 12 ( x9 )
	srl x13, x17, 15&31
	srl x7, x6, 15&31
	or x5, x7, x5
	lhu x7, 18 ( x9 )
	sll x6, x6, 1&31
	sll x17, x16, 1&31
	or x13, x13, x17
	srl x28, x7, 15&31
	or x6, x28, x6
	lhu x28, 20 ( x9 )
	sh x13, 8 ( x9 )
	srl x13, x16, 15&31
	lhu x16, 6 ( x9 )
	srl x29, x28, 15&31
	sll x7, x7, 1&31
	or x7, x29, x7
	lhu x29, 22 ( x9 )
	sll x17, x16, 1&31
	or x13, x13, x17
	sll x28, x28, 1&31
	srl x30, x29, 15&31
	or x28, x30, x28
	lhu x30, 24 ( x9 )
	sh x13, 6 ( x9 )
	srl x13, x16, 15&31
	lh x16, 4 ( x9 )
	srl x31, x30, 15&31
	sll x29, x29, 1&31
	or x29, x31, x29
	sll x16, x16, 1&31
	or x16, x13, x16
	sll x30, x30, 1&31
	add x13, x15, -1
	sh x30, 24 ( x9 )
	sh x29, 22 ( x9 )
	sh x28, 20 ( x9 )
	sh x7, 18 ( x9 )
	sh x6, 16 ( x9 )
	sh x5, 14 ( x9 )
	sh x16, 4 ( x9 )
	bge x11, x15, .LBB7_26
.LBB7_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lhu x30, 4 ( x18 )
	mv x15, x13
	and x13, x10, x16
	mv x29, x16
	bne x30, x13, .LBB7_5
.LBB7_3:                                //  %for.inc.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x29, 6 ( x9 )
	lhu x13, 6 ( x18 )
	bne x13, x29, .LBB7_4
.LBB7_7:                                //  %for.inc.1.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x29, 8 ( x9 )
	lhu x17, 8 ( x18 )
	bne x17, x29, .LBB7_8
.LBB7_9:                                //  %for.inc.2.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x29, 10 ( x9 )
	lhu x5, 10 ( x18 )
	bne x5, x29, .LBB7_10
.LBB7_11:                               //  %for.inc.3.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x29, 12 ( x9 )
	lhu x6, 12 ( x18 )
	bne x6, x29, .LBB7_12
.LBB7_13:                               //  %for.inc.4.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x29, 14 ( x9 )
	lhu x7, 14 ( x18 )
	bne x7, x29, .LBB7_14
.LBB7_15:                               //  %for.inc.5.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x29, 16 ( x9 )
	lhu x28, 16 ( x18 )
	bne x28, x29, .LBB7_16
.LBB7_17:                               //  %for.inc.6.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x29, 18 ( x9 )
	lhu x31, 18 ( x18 )
	bne x31, x29, .LBB7_18
.LBB7_19:                               //  %for.inc.7.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x29, 20 ( x9 )
	lhu x3, 20 ( x18 )
	bne x3, x29, .LBB7_20
.LBB7_21:                               //  %for.inc.8.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x29, 22 ( x9 )
	lhu x4, 22 ( x18 )
	bne x4, x29, .LBB7_22
.LBB7_23:                               //  %for.inc.9.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x30, 24 ( x18 )
	lhu x29, 24 ( x9 )
	mv x19, x30
	beq x30, x29, .LBB7_24
	jal x0, .LBB7_5
.LBB7_4:                                //    in Loop: Header=BB7_2 Depth=1
	mv x30, x13
.LBB7_5:                                //  %difrnt.i
                                        //    in Loop: Header=BB7_2 Depth=1
	and x17, x10, x29
	mv x13, x14
	bltu x17, x30, .LBB7_25
.LBB7_6:                                //  %difrnt.i.if.then_crit_edge
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x13, 6 ( x9 )
	lhu x17, 8 ( x9 )
	lhu x5, 10 ( x9 )
	lhu x6, 12 ( x9 )
	lhu x7, 14 ( x9 )
	lhu x28, 16 ( x9 )
	lhu x31, 18 ( x9 )
	lhu x3, 20 ( x9 )
	lhu x4, 22 ( x9 )
	lhu x19, 24 ( x18 )
	lhu x30, 24 ( x9 )
	jal x0, .LBB7_24
.LBB7_8:                                //    in Loop: Header=BB7_2 Depth=1
	mv x30, x17
	and x17, x10, x29
	mv x13, x14
	bltu x17, x30, .LBB7_25
	jal x0, .LBB7_6
.LBB7_10:                               //    in Loop: Header=BB7_2 Depth=1
	mv x30, x5
	and x17, x10, x29
	mv x13, x14
	bltu x17, x30, .LBB7_25
	jal x0, .LBB7_6
.LBB7_12:                               //    in Loop: Header=BB7_2 Depth=1
	mv x30, x6
	and x17, x10, x29
	mv x13, x14
	bltu x17, x30, .LBB7_25
	jal x0, .LBB7_6
.LBB7_14:                               //    in Loop: Header=BB7_2 Depth=1
	mv x30, x7
	and x17, x10, x29
	mv x13, x14
	bltu x17, x30, .LBB7_25
	jal x0, .LBB7_6
.LBB7_16:                               //    in Loop: Header=BB7_2 Depth=1
	mv x30, x28
	and x17, x10, x29
	mv x13, x14
	bltu x17, x30, .LBB7_25
	jal x0, .LBB7_6
.LBB7_18:                               //    in Loop: Header=BB7_2 Depth=1
	mv x30, x31
	and x17, x10, x29
	mv x13, x14
	bltu x17, x30, .LBB7_25
	jal x0, .LBB7_6
.LBB7_20:                               //    in Loop: Header=BB7_2 Depth=1
	mv x30, x3
	and x17, x10, x29
	mv x13, x14
	bltu x17, x30, .LBB7_25
	jal x0, .LBB7_6
.LBB7_22:                               //    in Loop: Header=BB7_2 Depth=1
	mv x30, x4
	and x17, x10, x29
	mv x13, x14
	bltu x17, x30, .LBB7_25
	jal x0, .LBB7_6
.LBB7_26:                               //  %while.end
	mv x11, x0
	mv x10, x9
	mv x15, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	mv x12, x11
	mv x14, x11
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	j emdnorm
.Lfunc_end7:
	.size	eiremain, .Lfunc_end7-eiremain
	.cfi_endproc
                                        //  -- End function
	.type	enormlz,@function       //  -- Begin function enormlz
enormlz:                                //  @enormlz
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lhu x12, 4 ( x10 )
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -4
	beq x0, x12, .LBB8_1
.LBB8_17:                               //  %normdn
	sltiu x11, x12, 256
	bltu x0, x11, .LBB8_18
.LBB8_19:                               //  %if.then35
	lhu x11, 18 ( x10 )
	lhu x14, 20 ( x10 )
	sll x13, x11, 8&31
	srl x15, x14, 8&31
	or x13, x13, x15
	lhu x15, 16 ( x10 )
	srl x11, x11, 8&31
	sh x13, 20 ( x10 )
	lhu x13, 22 ( x10 )
	sll x16, x15, 8&31
	or x11, x16, x11
	lhu x16, 14 ( x10 )
	srl x15, x15, 8&31
	sh x11, 18 ( x10 )
	sll x11, x14, 8&31
	sll x17, x16, 8&31
	or x15, x17, x15
	lhu x17, 12 ( x10 )
	srl x16, x16, 8&31
	srl x14, x13, 8&31
	or x11, x11, x14
	sll x5, x17, 8&31
	or x16, x5, x16
	lhu x5, 10 ( x10 )
	srl x17, x17, 8&31
	sh x11, 22 ( x10 )
	sll x11, x13, 8&31
	sll x6, x5, 8&31
	or x17, x6, x17
	lhu x6, 8 ( x10 )
	srl x5, x5, 8&31
	lbu x13, 25 ( x10 )
	sh x17, 12 ( x10 )
	sll x7, x6, 8&31
	or x5, x7, x5
	lhu x7, 6 ( x10 )
	srl x6, x6, 8&31
	or x11, x11, x13
	sh x11, 24 ( x10 )
	sll x28, x7, 8&31
	or x6, x28, x6
	sll x28, x12, 8&31
	srl x7, x7, 8&31
	or x7, x28, x7
	srl x12, x12, 8&31
	add x11, x0, -8
	sh x7, 6 ( x10 )
	sh x6, 8 ( x10 )
	sh x5, 10 ( x10 )
	sh x16, 14 ( x10 )
	sh x15, 16 ( x10 )
	sh x12, 4 ( x10 )
	jal x0, .LBB8_20
.LBB8_1:                                //  %if.end
	lh x13, 6 ( x10 )
	blt x13, x0, .LBB8_2
.LBB8_3:                                //  %while.cond.preheader
	mv x12, x0
	mv x11, x12
	bltu x0, x13, .LBB8_8
.LBB8_4:                                //  %while.body.lr.ph
	lhu x29, 24 ( x10 )
	lhu x7, 22 ( x10 )
	lhu x6, 20 ( x10 )
	lhu x5, 18 ( x10 )
	lhu x17, 16 ( x10 )
	lhu x16, 14 ( x10 )
	lhu x15, 12 ( x10 )
	lhu x14, 10 ( x10 )
	lhu x30, 8 ( x10 )
	mv x28, x0
	lui x11, %hi( 65535 )
	add x31, x0, 144
	add x3, x11, %lo( 65535 )
	mv x4, x28
.LBB8_5:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x13, x30
	mv x30, x14
	mv x14, x15
	mv x15, x16
	mv x16, x17
	mv x17, x5
	mv x5, x6
	mv x6, x7
	mv x7, x29
	add x11, x4, 16
	bltu x31, x11, .LBB8_23
.LBB8_6:                                //  %while.condthread-pre-split
                                        //    in Loop: Header=BB8_5 Depth=1
	and fp, x3, x13
	mv x29, x28
	mv x4, x11
	beq x0, fp, .LBB8_5
.LBB8_7:                                //  %while.cond.while.cond12.preheader_crit_edge
	sh x30, 8 ( x10 )
	sh x7, 22 ( x10 )
	sh x6, 20 ( x10 )
	sh x5, 18 ( x10 )
	sh x17, 16 ( x10 )
	sh x16, 14 ( x10 )
	sh x15, 12 ( x10 )
	sh x14, 10 ( x10 )
	sh x13, 6 ( x10 )
	sh x0, 4 ( x10 )
	sh x0, 24 ( x10 )
.LBB8_8:                                //  %while.cond12.preheader
	lui x14, %hi( 65535 )
	add x15, x14, %lo( 65535 )
	and x14, x15, x13
	add x16, x0, 255
	bltu x16, x14, .LBB8_12
.LBB8_9:                                //  %while.body17.lr.ph
	lhu x31, 8 ( x10 )
	lhu x14, 10 ( x10 )
	lhu x16, 12 ( x10 )
	lhu x17, 14 ( x10 )
	lhu x5, 16 ( x10 )
	lhu x6, 18 ( x10 )
	lhu x7, 20 ( x10 )
	lhu x29, 22 ( x10 )
	lhu x28, 24 ( x10 )
	lui x30, %hi( 65280 )
	mv x12, x0
	add x30, x30, %lo( 65280 )
.LBB8_10:                               //  %while.body17
                                        //  =>This Inner Loop Header: Depth=1
	and x3, x30, x13
	srl x3, x3, 8&31
	sll x12, x12, 8&31
	or x12, x3, x12
	and x3, x30, x14
	sll x4, x31, 8&31
	srl x3, x3, 8&31
	or x3, x3, x4
	and x4, x30, x16
	srl x4, x4, 8&31
	sll x14, x14, 8&31
	or x14, x4, x14
	and x4, x30, x17
	and x31, x30, x31
	srl x4, x4, 8&31
	sll x16, x16, 8&31
	or x16, x4, x16
	and x4, x30, x5
	srl x31, x31, 8&31
	sll x13, x13, 8&31
	or x13, x13, x31
	and x31, x30, x7
	srl x4, x4, 8&31
	sll x17, x17, 8&31
	or x17, x4, x17
	and x4, x30, x6
	srl x31, x31, 8&31
	sll x6, x6, 8&31
	or x6, x31, x6
	and x31, x30, x29
	srl x31, x31, 8&31
	sll x7, x7, 8&31
	or x7, x31, x7
	and x31, x30, x28
	srl x31, x31, 8&31
	sll x29, x29, 8&31
	or x29, x31, x29
	srl x4, x4, 8&31
	sll x5, x5, 8&31
	and x31, x15, x13
	or x5, x4, x5
	sltiu x4, x31, 256
	add x11, x11, 8
	sll x28, x28, 8&31
	mv x31, x3
	bltu x0, x4, .LBB8_10
.LBB8_11:                               //  %while.cond12.while.cond20.preheader_crit_edge
	sh x29, 22 ( x10 )
	sh x28, 24 ( x10 )
	sh x7, 20 ( x10 )
	sh x6, 18 ( x10 )
	sh x5, 16 ( x10 )
	sh x17, 14 ( x10 )
	sh x16, 12 ( x10 )
	sh x14, 10 ( x10 )
	sh x3, 8 ( x10 )
	sh x13, 6 ( x10 )
	sh x12, 4 ( x10 )
.LBB8_12:                               //  %while.cond20.preheader
	sll x14, x13, 16&31
	sra x14, x14, 16&31
	blt x14, x0, .LBB8_24
.LBB8_13:                               //  %while.body25.lr.ph
	lhu x4, 8 ( x10 )
	lhu x14, 10 ( x10 )
	lhu x15, 12 ( x10 )
	lhu x16, 14 ( x10 )
	lhu x17, 16 ( x10 )
	lhu x5, 18 ( x10 )
	lhu x6, 20 ( x10 )
	lhu x29, 22 ( x10 )
	lhu x28, 24 ( x10 )
	lui x30, (32768>>12)&1048575
	add x31, x0, 159
.LBB8_15:                               //  %while.body25
                                        //  =>This Inner Loop Header: Depth=1
	mv x7, x11
	and x11, x30, x13
	srl x11, x11, 15&31
	sll x12, x12, 1&31
	or x12, x11, x12
	and x11, x30, x14
	srl x11, x11, 15&31
	sll x3, x4, 1&31
	or x3, x11, x3
	and x11, x30, x15
	srl x11, x11, 15&31
	sll x14, x14, 1&31
	or x14, x11, x14
	and x11, x30, x16
	srl x11, x11, 15&31
	sll x15, x15, 1&31
	or x15, x11, x15
	and x11, x30, x17
	srl x11, x11, 15&31
	sll x16, x16, 1&31
	or x16, x11, x16
	and x11, x30, x4
	srl x11, x11, 15&31
	sll x13, x13, 1&31
	or x11, x13, x11
	and x13, x30, x5
	srl x13, x13, 15&31
	sll x17, x17, 1&31
	or x17, x13, x17
	and x13, x30, x6
	srl x13, x13, 15&31
	sll x5, x5, 1&31
	or x5, x13, x5
	and x13, x30, x29
	srl x13, x13, 15&31
	sll x6, x6, 1&31
	or x6, x13, x6
	and x13, x30, x28
	srl x13, x13, 15&31
	sll x29, x29, 1&31
	sll x11, x11, 16&31
	or x29, x13, x29
	sra x13, x11, 16&31
	sll x28, x28, 1&31
	bltu x31, x7, .LBB8_16
.LBB8_14:                               //  %while.cond20thread-pre-split
                                        //    in Loop: Header=BB8_15 Depth=1
	add x11, x7, 1
	mv x4, x3
	bge x13, x0, .LBB8_15
.LBB8_16:                               //  %while.cond20.cleanup.loopexit_crit_edge
	sh x29, 22 ( x10 )
	sh x28, 24 ( x10 )
	sh x6, 20 ( x10 )
	sh x5, 18 ( x10 )
	sh x17, 16 ( x10 )
	sh x16, 14 ( x10 )
	sh x15, 12 ( x10 )
	sh x14, 10 ( x10 )
	sh x3, 8 ( x10 )
	sh x13, 6 ( x10 )
	sh x12, 4 ( x10 )
	add x11, x7, 1
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	mv x10, x11
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB8_18:
	mv x11, x0
.LBB8_20:                               //  %if.end36
	lui x13, %hi( 65535 )
	lui x14, %hi( 32767 )
	add x13, x13, %lo( 65535 )
	add x14, x14, %lo( 32767 )
.LBB8_21:                               //  %while.cond37
                                        //  =>This Inner Loop Header: Depth=1
	and x15, x13, x12
	beq x0, x15, .LBB8_24
.LBB8_22:                               //  %while.body41
                                        //    in Loop: Header=BB8_21 Depth=1
	lhu x15, 18 ( x10 )
	lhu x17, 20 ( x10 )
	sll x16, x15, 15&31
	srl x5, x17, 1&31
	or x16, x16, x5
	lhu x5, 16 ( x10 )
	srl x15, x15, 1&31
	sh x16, 20 ( x10 )
	lhu x16, 22 ( x10 )
	sll x6, x5, 15&31
	or x15, x6, x15
	lhu x6, 14 ( x10 )
	srl x5, x5, 1&31
	sh x15, 18 ( x10 )
	sll x15, x17, 15&31
	sll x7, x6, 15&31
	or x5, x7, x5
	lhu x7, 12 ( x10 )
	srl x6, x6, 1&31
	srl x17, x16, 1&31
	or x15, x15, x17
	sll x28, x7, 15&31
	or x6, x28, x6
	lhu x28, 10 ( x10 )
	srl x7, x7, 1&31
	sh x15, 22 ( x10 )
	sll x15, x16, 15&31
	sll x29, x28, 15&31
	or x7, x29, x7
	lhu x29, 8 ( x10 )
	srl x28, x28, 1&31
	lhu x16, 24 ( x10 )
	sh x7, 12 ( x10 )
	sll x30, x29, 15&31
	or x28, x30, x28
	lhu x30, 6 ( x10 )
	srl x16, x16, 1&31
	srl x29, x29, 1&31
	or x15, x15, x16
	sll x31, x30, 15&31
	or x29, x31, x29
	sll x31, x12, 15&31
	srl x12, x12, 1&31
	srl x30, x30, 1&31
	or x30, x31, x30
	and x12, x14, x12
	sh x15, 24 ( x10 )
	slti x15, x11, -143
	add x11, x11, -1
	sh x30, 6 ( x10 )
	sh x29, 8 ( x10 )
	sh x28, 10 ( x10 )
	sh x6, 14 ( x10 )
	sh x5, 16 ( x10 )
	sh x12, 4 ( x10 )
	beq x0, x15, .LBB8_21
.LBB8_24:                               //  %cleanup
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	mv x10, x11
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB8_2:
	mv x11, x0
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	mv x10, x11
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB8_23:                               //  %cleanup.loopexit150
	add x11, x4, 16
	sh x30, 8 ( x10 )
	sh x7, 22 ( x10 )
	sh x6, 20 ( x10 )
	sh x5, 18 ( x10 )
	sh x17, 16 ( x10 )
	sh x16, 14 ( x10 )
	sh x15, 12 ( x10 )
	sh x14, 10 ( x10 )
	sh x13, 6 ( x10 )
	sh x0, 4 ( x10 )
	sh x0, 24 ( x10 )
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	mv x10, x11
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end8:
	.size	enormlz, .Lfunc_end8-enormlz
	.cfi_endproc
                                        //  -- End function
	.type	emdnorm,@function       //  -- Begin function emdnorm
emdnorm:                                //  @emdnorm
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv x18, x15
	mv x21, x14
	mv x9, x13
	mv x19, x12
	mv x20, x11
	mv fp, x10
	jal enormlz
	sub x9, x9, x10
	slti x10, x10, 145
	bltu x0, x10, .LBB9_3
.LBB9_1:                                //  %entry
	lui x10, %hi( 32766 )
	add x10, x10, %lo( 32766 )
	blt x10, x9, .LBB9_3
.LBB9_2:                                //  %if.then
	sh x0, 22 ( fp )
	sh x0, 20 ( fp )
	sh x0, 18 ( fp )
	sh x0, 16 ( fp )
	sh x0, 14 ( fp )
	sh x0, 12 ( fp )
	sh x0, 10 ( fp )
	sh x0, 8 ( fp )
	sh x0, 6 ( fp )
	sh x0, 4 ( fp )
	sh x0, 2 ( fp )
	mv x9, x0
	add x10, x0, 12
	jal x0, .LBB9_48
.LBB9_3:                                //  %if.end
	blt x9, x0, .LBB9_4
.LBB9_7:                                //  %if.end10
	lui x10, %hi( 32767 )
	beq x0, x21, .LBB9_43
.LBB9_8:                                //  %if.end13
	lw x13, 4 ( x18 )
	lw x12, 0 ( x18 )
	lui x11, %hi( 65535 )
	beq x13, x12, .LBB9_23
.LBB9_9:                                //  %if.then15
	add x17, x0, 11
	seqz x12, x0
	lui x14, (32768>>12)&1048575
	add x15, x11, %lo( 65535 )
	add x16, x0, 12
	add x5, x0, 55
	sh x0, 50 ( x18 )
	sh x0, 48 ( x18 )
	sh x0, 46 ( x18 )
	sh x0, 44 ( x18 )
	sh x0, 42 ( x18 )
	sh x0, 40 ( x18 )
	sh x0, 38 ( x18 )
	sh x0, 36 ( x18 )
	sh x0, 34 ( x18 )
	sh x0, 32 ( x18 )
	sh x0, 30 ( x18 )
	sh x0, 28 ( x18 )
	sh x0, 26 ( x18 )
	bge x5, x13, .LBB9_10
.LBB9_13:                               //  %if.then15
	xor x5, x13, 56
	beq x0, x5, .LBB9_18
.LBB9_14:                               //  %if.then15
	xor x5, x13, 64
	beq x0, x5, .LBB9_17
.LBB9_15:                               //  %if.then15
	xor x5, x13, 113
	bltu x0, x5, .LBB9_22
.LBB9_16:                               //  %sw.bb19
	lui x12, (32768>>12)&1048575
	lui x14, (16384>>12)&1048575
	add x15, x10, %lo( 32767 )
	add x16, x0, 10
	jal x0, .LBB9_21
.LBB9_4:                                //  %if.then3
	slti x10, x9, -144
	bltu x0, x10, .LBB9_2
.LBB9_5:                                //  %if.then5
	mv x10, fp
	mv x11, x9
	jal eshift
	mv x11, x0
	beq x10, x11, .LBB9_7
.LBB9_6:                                //  %if.then5
	seqz x20, x0
	lui x10, %hi( 32767 )
	bltu x0, x21, .LBB9_8
	jal x0, .LBB9_43
.LBB9_10:                               //  %if.then15
	xor x5, x13, 24
	beq x0, x5, .LBB9_20
.LBB9_11:                               //  %if.then15
	xor x5, x13, 53
	bltu x0, x5, .LBB9_22
.LBB9_12:                               //  %sw.bb41
	lui x12, %hi( 2048 )
	add x12, x12, %lo( 2048 )
	add x14, x0, 1024
	add x15, x0, 2047
	add x16, x0, 6
	jal x0, .LBB9_21
.LBB9_18:                               //  %sw.bb34
	add x12, x0, 256
	add x14, x0, 128
	add x15, x0, 255
	add x16, x0, 6
	jal x0, .LBB9_21
.LBB9_17:                               //  %sw.bb26
	add x17, x0, 6
	add x16, x0, 7
	jal x0, .LBB9_22
.LBB9_20:                               //  %sw.bb48
	add x12, x0, 256
	add x14, x0, 128
	add x15, x0, 255
	add x16, x0, 4
.LBB9_21:                               //  %sw.epilog
	mv x17, x16
.LBB9_22:                               //  %sw.epilog
	sll x5, x17, 1&31
	add x5, x5, x18
	sh x12, 26 ( x5 )
	sh x12, 24 ( x18 )
	sh x14, 22 ( x18 )
	sh x15, 20 ( x18 )
	sw x16, 8 ( x18 )
	sw x17, 12 ( x18 )
	sw x13, 0 ( x18 )
.LBB9_23:                               //  %if.end60
	xor x12, x13, 144
	beq x0, x12, .LBB9_26
.LBB9_24:                               //  %if.end60
	blt x0, x9, .LBB9_26
.LBB9_25:                               //  %if.then65
	lhu x14, 16 ( fp )
	lhu x16, 18 ( fp )
	sll x15, x14, 15&31
	srl x17, x16, 1&31
	or x15, x15, x17
	lhu x17, 14 ( fp )
	srl x14, x14, 1&31
	sh x15, 18 ( fp )
	lhu x15, 20 ( fp )
	sll x5, x17, 15&31
	or x14, x5, x14
	lhu x5, 12 ( fp )
	srl x17, x17, 1&31
	sh x14, 16 ( fp )
	sll x14, x16, 15&31
	sll x6, x5, 15&31
	or x17, x6, x17
	lhu x6, 10 ( fp )
	srl x5, x5, 1&31
	srl x16, x15, 1&31
	or x14, x14, x16
	sll x7, x6, 15&31
	or x5, x7, x5
	lhu x7, 8 ( fp )
	srl x6, x6, 1&31
	sh x17, 14 ( fp )
	sh x14, 20 ( fp )
	sll x28, x7, 15&31
	or x6, x28, x6
	lhu x28, 6 ( fp )
	lhu x14, 24 ( fp )
	lhu x17, 22 ( fp )
	srl x7, x7, 1&31
	sll x29, x28, 15&31
	or x7, x29, x7
	lhu x29, 4 ( fp )
	srl x16, x14, 1&31
	sh x5, 12 ( fp )
	sll x5, x17, 15&31
	or x16, x16, x5
	sll x30, x29, 15&31
	sh x16, 24 ( fp )
	and x14, x14, 1
	srl x28, x28, 1&31
	sll x15, x15, 15&31
	srl x16, x17, 1&31
	or x28, x30, x28
	srl x29, x29, 1&31
	or x15, x15, x16
	or x20, x14, x20
	sh x29, 4 ( fp )
	sh x28, 6 ( fp )
	sh x7, 8 ( fp )
	sh x6, 10 ( fp )
	sh x15, 22 ( fp )
.LBB9_26:                               //  %if.end67
	lw x5, 8 ( x18 )
	lhu x17, 20 ( x18 )
	add x6, x0, 143
	sll x14, x5, 1&31
	add x15, x14, fp
	lhu x16, 0 ( x15 )
	and x14, x16, x17
	blt x6, x13, .LBB9_31
.LBB9_27:                               //  %while.cond.preheader
	add x13, x5, 1
	add x6, x0, 12
	blt x6, x13, .LBB9_31
.LBB9_28:                               //  %while.body.preheader
	add x13, x15, 2
	add x16, x5, -12
.LBB9_29:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x17, x16
	lhu x16, 0 ( x13 )
	sh x0, 0 ( x13 )
	add x13, x13, 2
	snez x16, x16
	or x14, x16, x14
	add x16, x17, 1
	bgeu x16, x17, .LBB9_29
.LBB9_30:                               //  %if.end90.loopexit
	lhu x16, 0 ( x15 )
	lhu x17, 20 ( x18 )
.LBB9_31:                               //  %if.end90
	xor x13, x17, -1
	and x13, x13, x16
	sh x13, 0 ( x15 )
	lhu x13, 22 ( x18 )
	and x15, x14, x13
	beq x0, x15, .LBB9_37
.LBB9_32:                               //  %if.then104
	add x15, x11, %lo( 65535 )
	and x14, x15, x14
	bne x14, x13, .LBB9_36
.LBB9_33:                               //  %if.then110
	beq x0, x20, .LBB9_34
.LBB9_35:                               //  %if.else124
	bltu x0, x19, .LBB9_37
.LBB9_36:                               //  %if.end130
	lhu x13, 50 ( x18 )
	lhu x14, 24 ( fp )
	add x13, x13, x14
	sh x13, 24 ( fp )
	lhu x14, 48 ( x18 )
	srl x13, x13, 16&31
	add x13, x14, x13
	lhu x14, 22 ( fp )
	add x13, x14, x13
	sh x13, 22 ( fp )
	lhu x14, 46 ( x18 )
	srl x13, x13, 16&31
	and x13, x13, 1
	add x13, x14, x13
	lhu x14, 20 ( fp )
	add x13, x14, x13
	sh x13, 20 ( fp )
	lhu x14, 18 ( fp )
	lhu x15, 44 ( x18 )
	srl x13, x13, 16&31
	and x13, x13, 1
	add x14, x15, x14
	add x13, x13, x14
	sh x13, 18 ( fp )
	lhu x14, 16 ( fp )
	lhu x15, 42 ( x18 )
	srl x13, x13, 16&31
	and x13, x13, 1
	add x14, x15, x14
	add x13, x13, x14
	sh x13, 16 ( fp )
	lhu x14, 40 ( x18 )
	lhu x15, 14 ( fp )
	srl x13, x13, 16&31
	and x13, x13, 1
	add x14, x14, x15
	add x13, x13, x14
	sh x13, 14 ( fp )
	lhu x14, 38 ( x18 )
	lhu x15, 12 ( fp )
	srl x13, x13, 16&31
	and x13, x13, 1
	add x14, x14, x15
	add x13, x13, x14
	sh x13, 12 ( fp )
	lhu x14, 36 ( x18 )
	lhu x15, 10 ( fp )
	srl x13, x13, 16&31
	and x13, x13, 1
	add x14, x14, x15
	add x13, x13, x14
	sh x13, 10 ( fp )
	lhu x14, 34 ( x18 )
	lhu x15, 8 ( fp )
	srl x13, x13, 16&31
	and x13, x13, 1
	add x14, x14, x15
	add x13, x13, x14
	sh x13, 8 ( fp )
	lhu x14, 32 ( x18 )
	lhu x15, 6 ( fp )
	srl x13, x13, 16&31
	and x13, x13, 1
	add x14, x14, x15
	add x13, x13, x14
	sh x13, 6 ( fp )
	lh x14, 30 ( x18 )
	lh x15, 4 ( fp )
	srl x13, x13, 16&31
	and x13, x13, 1
	add x14, x14, x15
	add x13, x13, x14
	sh x13, 4 ( fp )
.LBB9_37:                               //  %mddone
	beq x0, x12, .LBB9_39
.LBB9_38:                               //  %mddone
	blt x0, x9, .LBB9_39
.LBB9_40:                               //  %if.then140
	lhu x12, 12 ( fp )
	lhu x14, 10 ( fp )
	srl x13, x12, 15&31
	sll x15, x14, 1&31
	or x13, x13, x15
	lhu x15, 14 ( fp )
	sll x12, x12, 1&31
	sh x13, 10 ( fp )
	lhu x13, 8 ( fp )
	srl x16, x15, 15&31
	or x12, x16, x12
	lhu x16, 16 ( fp )
	sll x15, x15, 1&31
	sh x12, 12 ( fp )
	srl x12, x14, 15&31
	srl x17, x16, 15&31
	or x15, x17, x15
	lhu x17, 18 ( fp )
	sll x16, x16, 1&31
	sll x14, x13, 1&31
	or x12, x12, x14
	srl x5, x17, 15&31
	or x16, x5, x16
	lhu x5, 20 ( fp )
	sh x12, 8 ( fp )
	srl x12, x13, 15&31
	lhu x13, 6 ( fp )
	srl x6, x5, 15&31
	sll x17, x17, 1&31
	or x17, x6, x17
	lhu x6, 22 ( fp )
	sll x14, x13, 1&31
	or x12, x12, x14
	sll x5, x5, 1&31
	srl x7, x6, 15&31
	or x5, x7, x5
	lhu x7, 24 ( fp )
	sh x12, 6 ( fp )
	srl x12, x13, 15&31
	lh x13, 4 ( fp )
	srl x28, x7, 15&31
	sll x6, x6, 1&31
	or x6, x28, x6
	sll x13, x13, 1&31
	or x12, x12, x13
	sll x7, x7, 1&31
	sh x7, 24 ( fp )
	sh x6, 22 ( fp )
	sh x5, 20 ( fp )
	sh x17, 18 ( fp )
	sh x16, 16 ( fp )
	sh x15, 14 ( fp )
	sh x12, 4 ( fp )
	add x11, x11, %lo( 65535 )
	and x11, x11, x12
	bltu x0, x11, .LBB9_42
	jal x0, .LBB9_43
.LBB9_39:                               //  %mddone.if.end141_crit_edge
	lhu x12, 4 ( fp )
	add x11, x11, %lo( 65535 )
	and x11, x11, x12
	beq x0, x11, .LBB9_43
.LBB9_42:                               //  %if.then146
	lhu x11, 8 ( fp )
	lhu x14, 10 ( fp )
	lhu x5, 20 ( fp )
	add x9, x9, 1
	sll x13, x11, 15&31
	srl x15, x14, 1&31
	or x13, x13, x15
	lhu x15, 6 ( fp )
	srl x11, x11, 1&31
	srl x6, x5, 1&31
	sll x14, x14, 15&31
	sll x16, x15, 15&31
	or x11, x16, x11
	srl x15, x15, 1&31
	sll x16, x12, 15&31
	or x15, x16, x15
	lhu x16, 18 ( fp )
	sh x11, 8 ( fp )
	sh x13, 10 ( fp )
	sll x11, x5, 15&31
	sll x17, x16, 15&31
	or x17, x17, x6
	lhu x6, 16 ( fp )
	srl x16, x16, 1&31
	sh x15, 6 ( fp )
	sh x17, 20 ( fp )
	sll x7, x6, 15&31
	or x16, x7, x16
	lhu x7, 14 ( fp )
	srl x6, x6, 1&31
	sh x16, 18 ( fp )
	sll x28, x7, 15&31
	or x6, x28, x6
	lhu x28, 12 ( fp )
	srl x7, x7, 1&31
	sh x6, 16 ( fp )
	sll x29, x28, 15&31
	srl x28, x28, 1&31
	or x14, x14, x28
	lui x28, %hi( 65534 )
	add x28, x28, %lo( 65534 )
	and x12, x28, x12
	srl x12, x12, 1&31
	sh x12, 4 ( fp )
	lhu x12, 22 ( fp )
	or x7, x29, x7
	sh x14, 12 ( fp )
	sh x7, 14 ( fp )
	srl x13, x12, 1&31
	or x11, x11, x13
	sh x11, 22 ( fp )
	sll x11, x12, 15&31
	lhu x12, 24 ( fp )
	srl x12, x12, 1&31
	or x11, x11, x12
	sh x11, 24 ( fp )
.LBB9_43:                               //  %mdfin
	add x10, x10, %lo( 32767 )
	sh x0, 24 ( fp )
	blt x9, x10, .LBB9_45
.LBB9_44:                               //  %if.then152
	sh x10, 2 ( fp )
	sh x0, 20 ( fp )
	sh x0, 18 ( fp )
	sh x0, 16 ( fp )
	sh x0, 14 ( fp )
	sh x0, 12 ( fp )
	sh x0, 10 ( fp )
	sh x0, 8 ( fp )
	sh x0, 6 ( fp )
	sh x0, 4 ( fp )
	mv x9, x0
	add x10, x0, 11
	jal x0, .LBB9_48
.LBB9_45:                               //  %if.end158
	mv x10, x0
	blt x10, x9, .LBB9_47
.LBB9_46:                               //  %if.end158
	mv x9, x10
.LBB9_47:                               //  %if.end158
	seqz x10, x0
.LBB9_48:                               //  %cleanup
	sll x10, x10, 1&31
	add x10, x10, fp
	sh x9, 0 ( x10 )
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
.LBB9_34:                               //  %if.then113
	lw x13, 12 ( x18 )
	lhu x14, 24 ( x18 )
	sll x13, x13, 1&31
	add x13, x13, fp
	lhu x13, 0 ( x13 )
	and x13, x13, x14
	bltu x0, x13, .LBB9_36
	jal x0, .LBB9_37
.Lfunc_end9:
	.size	emdnorm, .Lfunc_end9-emdnorm
	.cfi_endproc
                                        //  -- End function
	.type	m16m,@function          //  -- Begin function m16m
m16m:                                   //  @m16m
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	lhu x14, 24 ( x11 )
	add x13, sp, 6
	sh x0, 22 ( x13 )
	sh x0, 30 ( sp )
	beq x0, x14, .LBB10_1
.LBB10_2:                               //  %if.else
	hackaton_custom_instr_c x14, x10, x14
	srl x15, x14, 16&31
	sh x15, 22 ( x13 )
	sh x14, 30 ( sp )
	lhu x16, 22 ( x11 )
	lui x14, %hi( 65535 )
	sh x0, 26 ( sp )
	beq x0, x16, .LBB10_5
.LBB10_4:                               //  %if.else.1
	hackaton_custom_instr_c x16, x10, x16
	add x17, x14, %lo( 65535 )
	and x17, x17, x16
	add x15, x15, x17
	srl x16, x16, 16&31
	srl x17, x15, 16&31
	add x16, x16, x17
	lhu x17, 20 ( x13 )
	sh x15, 28 ( sp )
	add x16, x17, x16
	sh x16, 20 ( x13 )
	srl x15, x16, 16&31
	sh x15, 24 ( sp )
	lhu x15, 20 ( x11 )
	beq x0, x15, .LBB10_8
.LBB10_7:                               //  %if.else.2
	lhu x17, 20 ( x13 )
	hackaton_custom_instr_c x15, x10, x15
	add x16, x14, %lo( 65535 )
	and x16, x16, x15
	add x16, x17, x16
	sh x16, 20 ( x13 )
	srl x15, x15, 16&31
	srl x16, x16, 16&31
	add x15, x15, x16
	lhu x16, 24 ( sp )
	add x15, x16, x15
	sh x15, 24 ( sp )
	srl x15, x15, 16&31
	sh x15, 22 ( sp )
	lhu x15, 18 ( x11 )
	beq x0, x15, .LBB10_11
.LBB10_10:                              //  %if.else.3
	lhu x17, 18 ( x13 )
	hackaton_custom_instr_c x15, x10, x15
	add x16, x14, %lo( 65535 )
	and x16, x16, x15
	add x16, x17, x16
	sh x16, 18 ( x13 )
	srl x15, x15, 16&31
	srl x16, x16, 16&31
	add x15, x15, x16
	lhu x16, 22 ( sp )
	add x15, x16, x15
	sh x15, 22 ( sp )
	srl x15, x15, 16&31
	sh x15, 20 ( sp )
	lhu x15, 16 ( x11 )
	beq x0, x15, .LBB10_14
.LBB10_13:                              //  %if.else.4
	lhu x17, 16 ( x13 )
	hackaton_custom_instr_c x15, x10, x15
	add x16, x14, %lo( 65535 )
	and x16, x16, x15
	add x16, x17, x16
	sh x16, 16 ( x13 )
	srl x15, x15, 16&31
	srl x16, x16, 16&31
	add x15, x15, x16
	lhu x16, 20 ( sp )
	add x15, x16, x15
	sh x15, 20 ( sp )
	srl x15, x15, 16&31
	sh x15, 18 ( sp )
	lhu x15, 14 ( x11 )
	beq x0, x15, .LBB10_17
.LBB10_16:                              //  %if.else.5
	lhu x17, 14 ( x13 )
	hackaton_custom_instr_c x15, x10, x15
	add x16, x14, %lo( 65535 )
	and x16, x16, x15
	add x16, x17, x16
	sh x16, 14 ( x13 )
	srl x15, x15, 16&31
	srl x16, x16, 16&31
	add x15, x15, x16
	lhu x16, 18 ( sp )
	add x15, x16, x15
	sh x15, 18 ( sp )
	srl x15, x15, 16&31
	sh x15, 16 ( sp )
	lhu x15, 12 ( x11 )
	beq x0, x15, .LBB10_20
.LBB10_19:                              //  %if.else.6
	lhu x17, 12 ( x13 )
	hackaton_custom_instr_c x15, x10, x15
	add x16, x14, %lo( 65535 )
	and x16, x16, x15
	add x16, x17, x16
	sh x16, 12 ( x13 )
	srl x15, x15, 16&31
	srl x16, x16, 16&31
	add x15, x15, x16
	lhu x16, 16 ( sp )
	add x15, x16, x15
	sh x15, 16 ( sp )
	srl x15, x15, 16&31
	sh x15, 14 ( sp )
	lhu x15, 10 ( x11 )
	beq x0, x15, .LBB10_23
.LBB10_22:                              //  %if.else.7
	lhu x17, 10 ( x13 )
	hackaton_custom_instr_c x15, x10, x15
	add x16, x14, %lo( 65535 )
	and x16, x16, x15
	add x16, x17, x16
	sh x16, 10 ( x13 )
	srl x15, x15, 16&31
	srl x16, x16, 16&31
	add x15, x15, x16
	lhu x16, 14 ( sp )
	add x15, x16, x15
	sh x15, 14 ( sp )
	srl x15, x15, 16&31
	sh x15, 12 ( sp )
	lhu x15, 8 ( x11 )
	beq x0, x15, .LBB10_26
.LBB10_25:                              //  %if.else.8
	lhu x17, 8 ( x13 )
	hackaton_custom_instr_c x15, x10, x15
	add x16, x14, %lo( 65535 )
	and x16, x16, x15
	add x16, x17, x16
	sh x16, 8 ( x13 )
	srl x15, x15, 16&31
	srl x16, x16, 16&31
	add x15, x15, x16
	lhu x16, 12 ( sp )
	add x15, x16, x15
	sh x15, 12 ( sp )
	srl x15, x15, 16&31
	lhu x11, 6 ( x11 )
	sh x15, 10 ( sp )
	beq x0, x11, .LBB10_28
.LBB10_29:                              //  %if.else.9
	hackaton_custom_instr_c x10, x10, x11
	add x11, x14, %lo( 65535 )
	lhu x14, 6 ( x13 )
	and x11, x11, x10
	srl x10, x10, 16&31
	add x11, x14, x11
	sh x11, 6 ( x13 )
	srl x11, x11, 16&31
	add x10, x10, x11
	lhu x11, 10 ( sp )
	add x10, x11, x10
	sh x10, 10 ( sp )
	srl x10, x10, 16&31
	jal x0, .LBB10_30
.LBB10_1:                               //  %if.then
	mv x15, x0
	lhu x16, 22 ( x11 )
	lui x14, %hi( 65535 )
	sh x0, 26 ( sp )
	bltu x0, x16, .LBB10_4
.LBB10_5:                               //  %if.then.1
	mv x15, x0
	sh x15, 24 ( sp )
	lhu x15, 20 ( x11 )
	bltu x0, x15, .LBB10_7
.LBB10_8:                               //  %if.then.2
	mv x15, x0
	sh x15, 22 ( sp )
	lhu x15, 18 ( x11 )
	bltu x0, x15, .LBB10_10
.LBB10_11:                              //  %if.then.3
	mv x15, x0
	sh x15, 20 ( sp )
	lhu x15, 16 ( x11 )
	bltu x0, x15, .LBB10_13
.LBB10_14:                              //  %if.then.4
	mv x15, x0
	sh x15, 18 ( sp )
	lhu x15, 14 ( x11 )
	bltu x0, x15, .LBB10_16
.LBB10_17:                              //  %if.then.5
	mv x15, x0
	sh x15, 16 ( sp )
	lhu x15, 12 ( x11 )
	bltu x0, x15, .LBB10_19
.LBB10_20:                              //  %if.then.6
	mv x15, x0
	sh x15, 14 ( sp )
	lhu x15, 10 ( x11 )
	bltu x0, x15, .LBB10_22
.LBB10_23:                              //  %if.then.7
	mv x15, x0
	sh x15, 12 ( sp )
	lhu x15, 8 ( x11 )
	bltu x0, x15, .LBB10_25
.LBB10_26:                              //  %if.then.8
	mv x15, x0
	lhu x11, 6 ( x11 )
	sh x15, 10 ( sp )
	bltu x0, x11, .LBB10_29
.LBB10_28:
	mv x10, x0
.LBB10_30:                              //  %for.inc.9
	sh x10, 2 ( x13 )
	lh x10, 4 ( x13 )
	sh x10, 4 ( x12 )
	lh x10, 6 ( x13 )
	sh x10, 6 ( x12 )
	lh x10, 8 ( x13 )
	sh x10, 8 ( x12 )
	lh x10, 10 ( x13 )
	sh x10, 10 ( x12 )
	lh x10, 12 ( x13 )
	sh x10, 12 ( x12 )
	lh x10, 14 ( x13 )
	sh x10, 14 ( x12 )
	lh x10, 16 ( x13 )
	sh x10, 16 ( x12 )
	lh x10, 18 ( x13 )
	sh x10, 18 ( x12 )
	lh x10, 20 ( x13 )
	sh x10, 20 ( x12 )
	lh x10, 22 ( x13 )
	sh x10, 22 ( x12 )
	lh x10, 30 ( sp )
	sh x10, 24 ( x12 )
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end10:
	.size	m16m, .Lfunc_end10-m16m
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"/tools/toolchain/newlib/newlib/libc/stdlib/ldtoa.c"
	.size	.str, 51

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"Balloc succeeded"
	.size	.str.1, 17

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	" NaN "
	.size	.str.2, 6

	.address_space	0
	.type	etens,@object           //  @etens
	.section	.rodata,"a",@progbits
	.p2align	1
etens:
	.short	25974                   //  0x6576
	.short	19090                   //  0x4a92
	.short	32842                   //  0x804a
	.short	5439                    //  0x153f
	.short	51532                   //  0xc94c
	.short	38810                   //  0x979a
	.short	35360                   //  0x8a20
	.short	20994                   //  0x5202
	.short	50272                   //  0xc460
	.short	29989                   //  0x7525
	.short	27186                   //  0x6a32
	.short	52818                   //  0xce52
	.short	12954                   //  0x329a
	.short	10446                   //  0x28ce
	.short	42829                   //  0xa74d
	.short	24036                   //  0x5de4
	.short	50493                   //  0xc53d
	.short	15197                   //  0x3b5d
	.short	40587                   //  0x9e8b
	.short	23186                   //  0x5a92
	.short	21100                   //  0x526c
	.short	20686                   //  0x50ce
	.short	61835                   //  0xf18b
	.short	15656                   //  0x3d28
	.short	25869                   //  0x650d
	.short	3095                    //  0xc17
	.short	33141                   //  0x8175
	.short	30086                   //  0x7586
	.short	51574                   //  0xc976
	.short	19784                   //  0x4d48
	.short	40038                   //  0x9c66
	.short	22776                   //  0x58f8
	.short	48208                   //  0xbc50
	.short	23636                   //  0x5c54
	.short	52325                   //  0xcc65
	.short	37318                   //  0x91c6
	.short	42510                   //  0xa60e
	.short	41134                   //  0xa0ae
	.short	58137                   //  0xe319
	.short	18083                   //  0x46a3
	.short	34078                   //  0x851e
	.short	60087                   //  0xeab7
	.short	39166                   //  0x98fe
	.short	36891                   //  0x901b
	.short	56763                   //  0xddbb
	.short	56973                   //  0xde8d
	.short	40441                   //  0x9df9
	.short	60411                   //  0xebfb
	.short	43646                   //  0xaa7e
	.short	17233                   //  0x4351
	.short	565                     //  0x235
	.short	311                     //  0x137
	.short	14001                   //  0x36b1
	.short	13164                   //  0x336c
	.short	50799                   //  0xc66f
	.short	36063                   //  0x8cdf
	.short	33001                   //  0x80e9
	.short	18377                   //  0x47c9
	.short	37818                   //  0x93ba
	.short	16808                   //  0x41a8
	.short	20728                   //  0x50f8
	.short	9723                    //  0x25fb
	.short	51051                   //  0xc76b
	.short	27505                   //  0x6b71
	.short	15551                   //  0x3cbf
	.short	42709                   //  0xa6d5
	.short	65487                   //  0xffcf
	.short	8009                    //  0x1f49
	.short	49784                   //  0xc278
	.short	16595                   //  0x40d3
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	61472                   //  0xf020
	.short	46493                   //  0xb59d
	.short	11120                   //  0x2b70
	.short	44456                   //  0xada8
	.short	40389                   //  0x9dc5
	.short	16489                   //  0x4069
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	1024                    //  0x400
	.short	51647                   //  0xc9bf
	.short	36379                   //  0x8e1b
	.short	16436                   //  0x4034
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	8192                    //  0x2000
	.short	48828                   //  0xbebc
	.short	16409                   //  0x4019
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	40000                   //  0x9c40
	.short	16396                   //  0x400c
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	51200                   //  0xc800
	.short	16389                   //  0x4005
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	40960                   //  0xa000
	.short	16386                   //  0x4002
	.size	etens, 260

	.address_space	0
	.type	eone,@object            //  @eone
	.p2align	1
eone:
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	32768                   //  0x8000
	.short	16383                   //  0x3fff
	.size	eone, 20

	.address_space	0
	.type	.str.3,@object          //  @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.str.3:
	.asciz	" -Infinity "
	.size	.str.3, 12

	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	" Infinity "
	.size	.str.4, 11

	.address_space	0
	.type	.str.5,@object          //  @.str.5
.str.5:
	.asciz	"NaN"
	.size	.str.5, 4

	.address_space	0
	.type	emtens,@object          //  @emtens
	.section	.rodata,"a",@progbits
	.p2align	1
emtens:
	.short	8240                    //  0x2030
	.short	53244                   //  0xcffc
	.short	41411                   //  0xa1c3
	.short	33059                   //  0x8123
	.short	11747                   //  0x2de3
	.short	40926                   //  0x9fde
	.short	53966                   //  0xd2ce
	.short	1224                    //  0x4c8
	.short	42717                   //  0xa6dd
	.short	2776                    //  0xad8
	.short	33380                   //  0x8264
	.short	53963                   //  0xd2cb
	.short	62186                   //  0xf2ea
	.short	4820                    //  0x12d4
	.short	18725                   //  0x4925
	.short	11748                   //  0x2de4
	.short	13366                   //  0x3436
	.short	21327                   //  0x534f
	.short	52910                   //  0xceae
	.short	9579                    //  0x256b
	.short	62783                   //  0xf53f
	.short	63128                   //  0xf698
	.short	27603                   //  0x6bd3
	.short	344                     //  0x158
	.short	34726                   //  0x87a6
	.short	49341                   //  0xc0bd
	.short	55895                   //  0xda57
	.short	33445                   //  0x82a5
	.short	41638                   //  0xa2a6
	.short	12981                   //  0x32b5
	.short	59185                   //  0xe731
	.short	1236                    //  0x4d4
	.short	58354                   //  0xe3f2
	.short	54066                   //  0xd332
	.short	28978                   //  0x7132
	.short	53788                   //  0xd21c
	.short	56099                   //  0xdb23
	.short	60978                   //  0xee32
	.short	36937                   //  0x9049
	.short	14682                   //  0x395a
	.short	41534                   //  0xa23e
	.short	21256                   //  0x5308
	.short	65275                   //  0xfefb
	.short	4437                    //  0x1155
	.short	64145                   //  0xfa91
	.short	6457                    //  0x1939
	.short	25466                   //  0x637a
	.short	17189                   //  0x4325
	.short	49201                   //  0xc031
	.short	15532                   //  0x3cac
	.short	57965                   //  0xe26d
	.short	56286                   //  0xdbde
	.short	53341                   //  0xd05d
	.short	46070                   //  0xb3f6
	.short	44156                   //  0xac7c
	.short	58528                   //  0xe4a0
	.short	25788                   //  0x64bc
	.short	18044                   //  0x467c
	.short	56784                   //  0xddd0
	.short	15957                   //  0x3e55
	.short	10784                   //  0x2a20
	.short	25124                   //  0x6224
	.short	18355                   //  0x47b3
	.short	39127                   //  0x98d7
	.short	16163                   //  0x3f23
	.short	59813                   //  0xe9a5
	.short	42297                   //  0xa539
	.short	59943                   //  0xea27
	.short	43135                   //  0xa87f
	.short	16170                   //  0x3f2a
	.short	2907                    //  0xb5b
	.short	19186                   //  0x4af2
	.short	42369                   //  0xa581
	.short	6381                    //  0x18ed
	.short	26590                   //  0x67de
	.short	38074                   //  0x94ba
	.short	17721                   //  0x4539
	.short	7853                    //  0x1ead
	.short	53169                   //  0xcfb1
	.short	16276                   //  0x3f94
	.short	49009                   //  0xbf71
	.short	43443                   //  0xa9b3
	.short	31113                   //  0x7989
	.short	48744                   //  0xbe68
	.short	19502                   //  0x4c2e
	.short	57691                   //  0xe15b
	.short	50253                   //  0xc44d
	.short	38078                   //  0x94be
	.short	59029                   //  0xe695
	.short	16329                   //  0x3fc9
	.short	15693                   //  0x3d4d
	.short	31805                   //  0x7c3d
	.short	14010                   //  0x36ba
	.short	3371                    //  0xd2b
	.short	64962                   //  0xfdc2
	.short	52988                   //  0xcefc
	.short	33889                   //  0x8461
	.short	30481                   //  0x7711
	.short	43980                   //  0xabcc
	.short	16356                   //  0x3fe4
	.short	49493                   //  0xc155
	.short	42152                   //  0xa4a8
	.short	16462                   //  0x404e
	.short	24851                   //  0x6113
	.short	54211                   //  0xd3c3
	.short	25899                   //  0x652b
	.short	57881                   //  0xe219
	.short	5976                    //  0x1758
	.short	53687                   //  0xd1b7
	.short	16369                   //  0x3ff1
	.short	55050                   //  0xd70a
	.short	28835                   //  0x70a3
	.short	2621                    //  0xa3d
	.short	41943                   //  0xa3d7
	.short	15728                   //  0x3d70
	.short	55050                   //  0xd70a
	.short	28835                   //  0x70a3
	.short	2621                    //  0xa3d
	.short	41943                   //  0xa3d7
	.short	16376                   //  0x3ff8
	.short	52429                   //  0xcccd
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	16379                   //  0x3ffb
	.size	emtens, 260

	.address_space	0
	.type	ezero,@object           //  @ezero
	.p2align	1
ezero:
	.zero	20
	.size	ezero, 20

	.address_space	0
	.type	.str.6,@object          //  @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.str.6:
	.asciz	"E%d"
	.size	.str.6, 4

	.address_space	0
	.type	bmask,@object           //  @bmask
	.section	.rodata.str2.2,"aMS",@progbits,2
	.p2align	1
bmask:
	.short	65535                   //  0xffff
	.short	65534                   //  0xfffe
	.short	65532                   //  0xfffc
	.short	65528                   //  0xfff8
	.short	65520                   //  0xfff0
	.short	65504                   //  0xffe0
	.short	65472                   //  0xffc0
	.short	65408                   //  0xff80
	.short	65280                   //  0xff00
	.short	65024                   //  0xfe00
	.short	64512                   //  0xfc00
	.short	63488                   //  0xf800
	.short	61440                   //  0xf000
	.short	57344                   //  0xe000
	.short	49152                   //  0xc000
	.short	32768                   //  0x8000
	.short	0                       //  0x0
	.size	bmask, 34


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
