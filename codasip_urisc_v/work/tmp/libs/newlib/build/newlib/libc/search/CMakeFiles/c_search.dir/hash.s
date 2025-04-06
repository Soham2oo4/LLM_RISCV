	.text
	.file	"hash.c"
	.globl	__hash_open             //  -- Begin function __hash_open
	.type	__hash_open,@function
__hash_open:                            //  @__hash_open
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -208
	.cfi_adjust_cfa_offset 208
	sw x20, 188 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x20, x11
	sw x18, 196 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	and x10, x20, 3
	sw x19, 192 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 184 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw fp, 168 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv x19, x14
	mv x21, x12
	xor x10, x10, 1
	mv fp, x0
	sw ra, 204 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 200 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22, 180 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 176 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 172 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	bltu x0, x10, .LBB0_2
.LBB0_1:                                //  %if.then
	jal __errno
	add x11, x0, 22
	sw x11, 0 ( x10 )
	jal x0, .LBB0_62
.LBB0_2:                                //  %if.end
	seqz x22, x0
	add x11, x0, 476
	mv x10, x22
	jal calloc
	mv x9, x10
	beq x0, x9, .LBB0_62
.LBB0_3:                                //  %if.end3
	add x23, x0, -1
	sw x23, 276 ( x9 )
	sw x20, 272 ( x9 )
	beq x0, x18, .LBB0_7
.LBB0_4:                                //  %if.end3
	and x10, x20, 1024
	bltu x0, x10, .LBB0_7
.LBB0_5:                                //  %lor.lhs.false8
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	add x12, sp, 24
	mv x11, x18
	jal _stat_r
	mv x24, x0
	beq x0, x10, .LBB0_10
.LBB0_6:                                //  %land.lhs.true
	jal __errno
	lw x10, 0 ( x10 )
	xor x10, x10, 2
	bltu x0, x10, .LBB0_10
.LBB0_7:                                //  %if.then13
	jal __errno
	lw x10, 0 ( x10 )
	xor x10, x10, 2
	bltu x0, x10, .LBB0_9
.LBB0_8:                                //  %if.then16
	jal __errno
	sw x0, 0 ( x10 )
.LBB0_9:                                //  %if.end19
	mv x24, x22
.LBB0_10:                               //  %if.end19
	beq x0, x18, .LBB0_14
.LBB0_11:                               //  %if.then21
	sw x20, 4 ( sp )
	sw x21, 8 ( sp )
	sw x18, 0 ( sp )
	jal open
	mv x11, x10
	xor x10, x11, -1
	sw x11, 276 ( x9 )
	beq x0, x10, .LBB0_41
.LBB0_12:                               //  %if.end27
	and x10, x20, 512
	beq x0, x10, .LBB0_14
.LBB0_13:                               //  %land.lhs.true30
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	add x12, sp, 24
	jal _fstat_r
	beq x0, x10, .LBB0_45
.LBB0_14:                               //  %if.end38
	beq x0, x24, .LBB0_47
.LBB0_15:                               //  %if.then40
	add x10, x0, 8
	sw x10, 28 ( x9 )
	add x10, x0, 12
	sw x10, 16 ( x9 )
	lui x10, (4096>>12)&1048575
	sw x10, 12 ( x9 )
	add x10, x0, 1234
	sw x10, 8 ( x9 )
	add x10, x0, 256
	sw x10, 24 ( x9 )
	sw x10, 20 ( x9 )
	lui x10, %hi( __default_hash )
	add x10, x10, %lo( __default_hash )
	lw x10, 0 ( x10 )
	mv x20, x0
	add x21, x9, 68
	lui x22, (65536>>12)&1048575
	sw x10, 268 ( x9 )
	add x12, x0, 128
	mv x10, x21
	mv x11, x20
	sw x22, 52 ( x9 )
	sw x0, 56 ( x9 )
	jal memset
	add x10, x9, 196
	add x12, x0, 64
	mv x11, x20
	jal memset
	beq x0, x18, .LBB0_20
.LBB0_16:                               //  %if.then.i
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	add x12, sp, 96
	mv x11, x18
	jal _stat_r
	bltu x0, x10, .LBB0_43
.LBB0_17:                               //  %if.end.i
	lw x10, 152 ( sp )
	blt x10, x22, .LBB0_19
.LBB0_18:                               //  %if.end.i
	mv x10, x22
.LBB0_19:                               //  %if.end.i
	sw x10, 12 ( x9 )
	jal __log2
	sw x10, 16 ( x9 )
.LBB0_20:                               //  %if.end23.i
	seqz x24, x0
	mv x10, x24
	beq x0, x19, .LBB0_33
.LBB0_21:                               //  %if.then25.i
	lw x10, 0 ( x19 )
	beq x0, x10, .LBB0_23
.LBB0_22:                               //  %if.then28.i
	jal __log2
	seqz x11, x0
	sw x10, 16 ( x9 )
	sll x10, x11, x10
	lui x11, %hi( 65537 )
	add x11, x11, %lo( 65537 )
	sw x10, 12 ( x9 )
	bge x10, x11, .LBB0_42
.LBB0_23:                               //  %if.end43.i
	lw x10, 4 ( x19 )
	beq x0, x10, .LBB0_25
.LBB0_24:                               //  %if.then46.i
	sw x10, 52 ( x9 )
.LBB0_25:                               //  %if.end50.i
	lw x10, 16 ( x19 )
	beq x0, x10, .LBB0_27
.LBB0_26:                               //  %if.then53.i
	sw x10, 268 ( x9 )
.LBB0_27:                               //  %if.end56.i
	lw x10, 8 ( x19 )
	mv x11, x0
	bne x10, x11, .LBB0_29
.LBB0_28:
	seqz x10, x0
.LBB0_29:                               //  %if.end56.i
	lw x11, 20 ( x19 )
	beq x0, x11, .LBB0_33
.LBB0_30:                               //  %if.end56.i
	xor x12, x11, 1234
	beq x0, x12, .LBB0_32
.LBB0_31:                               //  %if.end56.i
	lui x12, %hi( 4321 )
	add x12, x12, %lo( 4321 )
	bne x11, x12, .LBB0_42
.LBB0_32:                               //  %if.end71.i
	sw x11, 8 ( x9 )
.LBB0_33:                               //  %if.end76.i
	lw x11, 52 ( x9 )
	add x10, x10, -1
	jal __divsi3
	blt x24, x10, .LBB0_35
.LBB0_34:                               //  %if.end76.i
	mv x10, x24
.LBB0_35:                               //  %if.end76.i
	add x10, x10, 1
	jal __log2
	mv x22, x10
	sll x10, x22, 2&31
	add x10, x10, x21
	add x12, x22, 1
	sw x12, 0 ( x10 )
	sll x10, x12, 2&31
	add x10, x10, x21
	sw x12, 0 ( x10 )
	add x10, x0, 2
	sw x10, 36 ( x9 )
	sll x10, x22, 11&31
	or x11, x10, 1
	mv x13, x0
	mv x10, x9
	sw x22, 32 ( x9 )
	jal __ibitmap
	bltu x0, x10, .LBB0_43
.LBB0_36:                               //  %if.end.i.i
	lw x11, 16 ( x9 )
	add x12, x0, 511
	sll x10, x24, x22
	srl x11, x12, x11
	add x11, x11, 1
	sw x11, 60 ( x9 )
	lw x11, 24 ( x9 )
	sll x12, x10, 1&31
	add x10, x10, -1
	add x12, x12, -1
	sw x12, 44 ( x9 )
	sw x10, 40 ( x9 )
	sw x10, 48 ( x9 )
	jal __divsi3
	add x10, x10, 1
	jal __log2
	seqz x24, x0
	sll x11, x24, x10
	lw x10, 20 ( x9 )
	bge x10, x11, .LBB0_38
.LBB0_37:                               //  %if.then31.i.i
	sw x11, 20 ( x9 )
.LBB0_38:                               //  %init_htab.exit.i
	mv x10, x9
	jal alloc_segs
	bltu x0, x10, .LBB0_43
.LBB0_39:                               //  %if.end106
	beq x0, x19, .LBB0_64
.LBB0_40:                               //  %land.lhs.true108
	lw x11, 12 ( x19 )
	bltu x0, x11, .LBB0_65
	jal x0, .LBB0_64
.LBB0_41:                               //  %if.then25
	jal __errno
	lw x21, 0 ( x10 )
	jal x0, .LBB0_56
.LBB0_42:                               //  %if.then40.i
	jal __errno
	add x11, x0, 22
	sw x11, 0 ( x10 )
.LBB0_43:                               //  %error1
	jal __errno
	lw x21, 0 ( x10 )
	jal x0, .LBB0_44
.LBB0_45:                               //  %land.lhs.true34
	bltu x0, x24, .LBB0_15
.LBB0_46:                               //  %land.lhs.true34
	lw x10, 40 ( sp )
	beq x0, x10, .LBB0_15
.LBB0_47:                               //  %if.else
	beq x0, x19, .LBB0_49
.LBB0_48:                               //  %land.lhs.true47
	lw x10, 16 ( x19 )
	bltu x0, x10, .LBB0_50
.LBB0_49:                               //  %if.else52
	lui x10, %hi( __default_hash )
	add x10, x10, %lo( __default_hash )
	lw x10, 0 ( x10 )
.LBB0_50:                               //  %if.end54
	sw x10, 268 ( x9 )
	lw x10, 276 ( x9 )
	add x12, x0, 260
	mv x11, x9
	jal read
	lw x14, 4 ( x9 )
	lui x11, %hi( 65280 )
	add x11, x11, %lo( 65280 )
	srl x12, x14, 8&31
	and x12, x11, x12
	srl x13, x14, 24&31
	or x13, x13, x12
	sll x15, x14, 8&31
	lui x12, (16711680>>12)&1048575
	and x15, x12, x15
	sll x14, x14, 24&31
	or x14, x15, x14
	lw x15, 8 ( x9 )
	or x13, x13, x14
	lw x14, 0 ( x9 )
	sw x13, 4 ( x9 )
	srl x16, x15, 8&31
	and x16, x11, x16
	srl x17, x15, 24&31
	or x16, x17, x16
	sll x17, x15, 8&31
	and x17, x12, x17
	sll x15, x15, 24&31
	or x15, x17, x15
	lw x17, 12 ( x9 )
	or x15, x16, x15
	srl x16, x14, 8&31
	and x16, x11, x16
	srl x5, x17, 8&31
	and x5, x11, x5
	srl x6, x17, 24&31
	or x5, x6, x5
	sll x6, x17, 8&31
	and x6, x12, x6
	sll x17, x17, 24&31
	or x17, x6, x17
	or x17, x5, x17
	srl x5, x14, 24&31
	or x16, x5, x16
	sll x5, x14, 8&31
	lw x13, 32 ( x9 )
	and x5, x12, x5
	sll x14, x14, 24&31
	or x14, x5, x14
	or x14, x16, x14
	sw x14, 0 ( x9 )
	srl x14, x13, 8&31
	sw x15, 8 ( x9 )
	and x14, x11, x14
	srl x15, x13, 24&31
	or x14, x15, x14
	sll x15, x13, 8&31
	and x15, x12, x15
	sll x13, x13, 24&31
	or x13, x15, x13
	or x13, x14, x13
	sw x13, 32 ( x9 )
	lw x13, 36 ( x9 )
	lw x6, 16 ( x9 )
	sw x17, 12 ( x9 )
	srl x14, x13, 8&31
	and x14, x11, x14
	srl x15, x13, 24&31
	or x14, x15, x14
	sll x15, x13, 8&31
	and x15, x12, x15
	sll x13, x13, 24&31
	or x13, x15, x13
	or x13, x14, x13
	sw x13, 36 ( x9 )
	lw x13, 40 ( x9 )
	srl x7, x6, 8&31
	and x7, x11, x7
	srl x28, x6, 24&31
	srl x14, x13, 8&31
	and x14, x11, x14
	srl x15, x13, 24&31
	or x14, x15, x14
	sll x15, x13, 8&31
	and x15, x12, x15
	sll x13, x13, 24&31
	or x13, x15, x13
	or x13, x14, x13
	sw x13, 40 ( x9 )
	lw x13, 44 ( x9 )
	or x7, x28, x7
	sll x28, x6, 8&31
	and x28, x12, x28
	srl x14, x13, 8&31
	and x14, x11, x14
	srl x15, x13, 24&31
	or x14, x15, x14
	sll x15, x13, 8&31
	and x15, x12, x15
	sll x13, x13, 24&31
	or x13, x15, x13
	or x13, x14, x13
	sw x13, 44 ( x9 )
	lw x13, 48 ( x9 )
	sll x6, x6, 24&31
	or x6, x28, x6
	lw x28, 20 ( x9 )
	srl x14, x13, 8&31
	and x14, x11, x14
	srl x15, x13, 24&31
	or x14, x15, x14
	sll x15, x13, 8&31
	and x15, x12, x15
	sll x13, x13, 24&31
	or x13, x15, x13
	or x13, x14, x13
	sw x13, 48 ( x9 )
	lw x13, 52 ( x9 )
	srl x29, x28, 8&31
	and x29, x11, x29
	srl x30, x28, 24&31
	srl x14, x13, 8&31
	and x14, x11, x14
	srl x15, x13, 24&31
	or x14, x15, x14
	sll x15, x13, 8&31
	and x15, x12, x15
	sll x13, x13, 24&31
	or x13, x15, x13
	or x13, x14, x13
	sw x13, 52 ( x9 )
	lw x13, 56 ( x9 )
	or x29, x30, x29
	sll x30, x28, 8&31
	and x30, x12, x30
	srl x14, x13, 8&31
	and x14, x11, x14
	srl x15, x13, 24&31
	or x14, x15, x14
	sll x15, x13, 8&31
	and x15, x12, x15
	sll x13, x13, 24&31
	or x13, x15, x13
	or x13, x14, x13
	sw x13, 56 ( x9 )
	lw x13, 60 ( x9 )
	sll x28, x28, 24&31
	or x28, x30, x28
	lw x30, 24 ( x9 )
	srl x14, x13, 8&31
	and x14, x11, x14
	srl x15, x13, 24&31
	or x14, x15, x14
	sll x15, x13, 8&31
	srl x31, x30, 8&31
	and x15, x12, x15
	sll x13, x13, 24&31
	or x13, x15, x13
	and x31, x11, x31
	srl x3, x30, 24&31
	or x31, x3, x31
	sll x3, x30, 8&31
	or x13, x14, x13
	sw x13, 60 ( x9 )
	lw x13, 64 ( x9 )
	and x3, x12, x3
	sll x30, x30, 24&31
	or x30, x3, x30
	lw x3, 28 ( x9 )
	srl x14, x13, 8&31
	and x14, x11, x14
	srl x15, x13, 24&31
	srl x4, x3, 8&31
	or x14, x15, x14
	sll x15, x13, 8&31
	and x4, x11, x4
	srl x20, x3, 24&31
	or x4, x20, x4
	sll x20, x3, 8&31
	and x15, x12, x15
	sll x13, x13, 24&31
	or x13, x15, x13
	and x20, x12, x20
	sll x3, x3, 24&31
	or x3, x20, x3
	or x13, x14, x13
	or x3, x4, x3
	or x30, x31, x30
	or x28, x29, x28
	or x6, x7, x6
	sw x13, 64 ( x9 )
	mv x13, x0
	add x14, x9, 197
	sw x6, 16 ( x9 )
	sw x28, 20 ( x9 )
	sw x30, 24 ( x9 )
	sw x3, 28 ( x9 )
.LBB0_51:                               //  %for.body.i
                                        //  =>This Inner Loop Header: Depth=1
	add x15, x13, x9
	lw x16, 68 ( x15 )
	add x13, x13, 4
	srl x17, x16, 8&31
	and x17, x11, x17
	srl x5, x16, 24&31
	or x17, x5, x17
	sll x5, x16, 8&31
	and x5, x12, x5
	sll x16, x16, 24&31
	or x16, x5, x16
	or x16, x17, x16
	sw x16, 68 ( x15 )
	lh x15, -1 ( x14 )
	sll x16, x15, 8&31
	and x16, x12, x16
	sll x15, x15, 24&31
	or x15, x16, x15
	srl x15, x15, 16&31
	sh x15, -1 ( x14 )
	add x14, x14, 2
	xor x15, x13, 128
	bltu x0, x15, .LBB0_51
.LBB0_52:                               //  %swap_header.exit
	add x21, x0, 79
	xor x11, x10, 260
	beq x0, x11, .LBB0_57
.LBB0_53:                               //  %swap_header.exit
	xor x10, x10, -1
	bltu x0, x10, .LBB0_55
.LBB0_54:                               //  %if.then58
	jal __errno
	lw x21, 0 ( x10 )
	jal x0, .LBB0_55
.LBB0_57:                               //  %if.end63
	lw x10, 0 ( x9 )
	lui x11, %hi( 398689 )
	add x11, x11, %lo( 398689 )
	bne x10, x11, .LBB0_55
.LBB0_58:                               //  %if.end67
	lw x10, 4 ( x9 )
	seqz x11, x0
	add x10, x10, -1
	bltu x11, x10, .LBB0_55
.LBB0_59:                               //  %if.end75
	lw x12, 268 ( x9 )
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	add x11, x0, 12
	call.reg x12
	lw x11, 64 ( x9 )
	bne x10, x11, .LBB0_55
.LBB0_60:                               //  %if.end81
	lw x10, 40 ( x9 )
	lw x11, 24 ( x9 )
	sw x0, 260 ( x9 )
	add x10, x10, x11
	jal __divsi3
	mv x11, x10
	mv x10, x9
	jal alloc_segs
	bltu x0, x10, .LBB0_61
.LBB0_63:                               //  %if.end95
	lw x10, 32 ( x9 )
	lw x11, 12 ( x9 )
	sll x10, x10, 2&31
	add x10, x10, x9
	lw x10, 68 ( x10 )
	sll x11, x11, 3&31
	add x10, x11, x10
	lw x11, 16 ( x9 )
	add x10, x10, -1
	add x11, x11, 3
	sra x10, x10, x11
	sw x10, 440 ( x9 )
	sll x12, x10, 2&31
	add x10, x9, 312
	mv x11, x0
	jal memset
	bltu x0, x19, .LBB0_40
.LBB0_64:                               //  %if.else112
	lui x11, (65536>>12)&1048575
.LBB0_65:                               //  %if.end113
	mv x10, x9
	jal __buf_init
	sw x24, 304 ( x9 )
	beq x0, x18, .LBB0_67
.LBB0_66:                               //  %land.rhs
	lw x10, 272 ( x9 )
	srl x10, x10, 1&31
	and x10, x10, 1
	jal x0, .LBB0_68
.LBB0_55:                               //  %if.then126
	lw x10, 276 ( x9 )
	jal close
.LBB0_56:                               //  %error0
	mv x20, x9
.LBB0_44:                               //  %error0
	mv x10, x20
	jal free
	jal __errno
	sw x21, 0 ( x10 )
.LBB0_62:                               //  %cleanup
	mv x10, fp
	lw fp, 168 ( sp )               //  4-byte Folded Reload
	lw x24, 172 ( sp )              //  4-byte Folded Reload
	lw x23, 176 ( sp )              //  4-byte Folded Reload
	lw x22, 180 ( sp )              //  4-byte Folded Reload
	lw x21, 184 ( sp )              //  4-byte Folded Reload
	lw x20, 188 ( sp )              //  4-byte Folded Reload
	lw x19, 192 ( sp )              //  4-byte Folded Reload
	lw x18, 196 ( sp )              //  4-byte Folded Reload
	lw x9, 200 ( sp )               //  4-byte Folded Reload
	lw ra, 204 ( sp )               //  4-byte Folded Reload
	add sp, sp, 208
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_67:
	mv x10, x0
.LBB0_68:                               //  %land.end
	sw x10, 308 ( x9 )
	add x10, x0, 36
	sw x23, 292 ( x9 )
	jal malloc
	mv fp, x10
	beq x0, fp, .LBB0_70
.LBB0_69:                               //  %if.end124
	lui x10, %hi( hash_fd )
	add x10, x10, %lo( hash_fd )
	sw x10, 32 ( fp )
	lui x10, %hi( hash_delete )
	add x10, x10, %lo( hash_delete )
	sw x10, 8 ( fp )
	lui x10, %hi( hash_close )
	add x10, x10, %lo( hash_close )
	sw x10, 4 ( fp )
	lui x10, %hi( hash_sync )
	add x10, x10, %lo( hash_sync )
	sw x10, 24 ( fp )
	lui x10, %hi( hash_seq )
	add x10, x10, %lo( hash_seq )
	sw x10, 20 ( fp )
	lui x10, %hi( hash_put )
	add x10, x10, %lo( hash_put )
	sw x10, 16 ( fp )
	lui x10, %hi( hash_get )
	add x10, x10, %lo( hash_get )
	sw x10, 12 ( fp )
	seqz x10, x0
	sw x9, 28 ( fp )
	sw x10, 0 ( fp )
	jal x0, .LBB0_62
.LBB0_70:                               //  %if.then120
	jal __errno
	lw fp, 0 ( x10 )
	mv x10, x9
	jal hdestroy
	jal __errno
	sw fp, 0 ( x10 )
.LBB0_61:
	mv fp, x0
	jal x0, .LBB0_62
.Lfunc_end0:
	.size	__hash_open, .Lfunc_end0-__hash_open
	.cfi_endproc
                                        //  -- End function
	.type	alloc_segs,@function    //  -- Begin function alloc_segs
alloc_segs:                             //  @alloc_segs
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	lw x10, 20 ( fp )
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	add x11, x0, 4
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal calloc
	sw x10, 472 ( fp )
	beq x0, x10, .LBB1_1
.LBB1_2:                                //  %if.end
	lw x10, 28 ( fp )
	add x11, x0, 4
	sll x10, x9, x10
	jal calloc
	beq x0, x10, .LBB1_1
.LBB1_3:                                //  %for.cond.preheader
	bge x0, x9, .LBB1_7
.LBB1_4:                                //  %for.body.lr.ph
	lw x11, 260 ( fp )
	lw x13, 28 ( fp )
	mv x12, x0
	mv x14, x12
.LBB1_5:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x16, 472 ( fp )
	sll x15, x14, x13
	sll x15, x15, 2&31
	add x15, x15, x10
	add x16, x12, x16
	add x12, x12, 4
	add x14, x14, 1
	sw x15, 0 ( x16 )
	bne x9, x14, .LBB1_5
.LBB1_6:                                //  %for.cond.cleanup.loopexit_crit_edge
	add x10, x9, x11
	sw x10, 260 ( fp )
.LBB1_7:                                //  %cleanup
	mv x10, x0
	jal x0, .LBB1_8
.LBB1_1:                                //  %if.then
	jal __errno
	lw x9, 0 ( x10 )
	mv x10, fp
	jal hdestroy
	jal __errno
	sw x9, 0 ( x10 )
	add x10, x0, -1
.LBB1_8:                                //  %cleanup
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	alloc_segs, .Lfunc_end1-alloc_segs
	.cfi_endproc
                                        //  -- End function
	.type	hdestroy,@function      //  -- Begin function hdestroy
hdestroy:                               //  @hdestroy
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x10
	lw x12, 308 ( fp )
	seqz x11, x0
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	jal __buf_free
	beq x0, x10, .LBB2_1
.LBB2_2:                                //  %if.then
	jal __errno
	lw x9, 0 ( x10 )
	lw x10, 472 ( fp )
	bltu x0, x10, .LBB2_5
	jal x0, .LBB2_7
.LBB2_1:
	mv x9, x0
	lw x10, 472 ( fp )
	beq x0, x10, .LBB2_7
.LBB2_5:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x10 )
	jal free
	lw x11, 264 ( fp )
	add x10, x11, -1
	sw x10, 264 ( fp )
	lw x10, 472 ( fp )
	beq x0, x11, .LBB2_6
.LBB2_4:                                //  %while.body
                                        //    in Loop: Header=BB2_5 Depth=1
	lw x11, 260 ( fp )
	add x11, x11, -1
	sw x11, 260 ( fp )
	sll x11, x11, 2&31
	add x10, x11, x10
	jal x0, .LBB2_5
.LBB2_6:                                //  %while.end
	jal free
.LBB2_7:                                //  %if.end9
	mv x10, fp
	jal flush_meta
	bltu x0, x9, .LBB2_10
.LBB2_8:                                //  %if.end9
	beq x0, x10, .LBB2_10
.LBB2_9:                                //  %if.then13
	jal __errno
	lw x9, 0 ( x10 )
.LBB2_10:                               //  %if.end15
	lw x11, 440 ( fp )
	bge x0, x11, .LBB2_15
.LBB2_11:                               //  %for.body.preheader
	mv x18, x0
	add x19, fp, 312
	lw x10, 0 ( x19 )
	bltu x0, x10, .LBB2_13
.LBB2_14:                               //  %for.inc
	add x19, x19, 4
	add x18, x18, 1
	bge x18, x11, .LBB2_15
.LBB2_12:                               //  %for.body
	lw x10, 0 ( x19 )
	beq x0, x10, .LBB2_14
.LBB2_13:                               //  %if.then18
	jal free
	lw x11, 440 ( fp )
	add x19, x19, 4
	add x18, x18, 1
	blt x18, x11, .LBB2_12
.LBB2_15:                               //  %for.end
	lw x10, 276 ( fp )
	xor x11, x10, -1
	beq x0, x11, .LBB2_17
.LBB2_16:                               //  %if.then23
	jal close
.LBB2_17:                               //  %if.end26
	mv x10, fp
	jal free
	beq x0, x9, .LBB2_18
.LBB2_19:                               //  %if.then28
	jal __errno
	sw x9, 0 ( x10 )
	add x10, x0, -1
	jal x0, .LBB2_20
.LBB2_18:
	mv x10, x0
.LBB2_20:                               //  %cleanup
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	hdestroy, .Lfunc_end2-hdestroy
	.cfi_endproc
                                        //  -- End function
	.type	hash_close,@function    //  -- Begin function hash_close
hash_close:                             //  @hash_close
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	beq x0, x9, .LBB3_1
.LBB3_2:                                //  %if.end
	lw x10, 28 ( x9 )
	jal hdestroy
	mv fp, x10
	mv x10, x9
	jal free
	jal x0, .LBB3_3
.LBB3_1:
	add fp, x0, -1
.LBB3_3:                                //  %cleanup
	mv x10, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end3:
	.size	hash_close, .Lfunc_end3-hash_close
	.cfi_endproc
                                        //  -- End function
	.type	hash_delete,@function   //  -- Begin function hash_delete
hash_delete:                            //  @hash_delete
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	lw fp, 28 ( x10 )
	mv x14, x11
	sltiu x10, x12, 2
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x0, x10, .LBB4_3
.LBB4_1:                                //  %if.then
	jal __errno
	add x11, x0, 22
	jal x0, .LBB4_2
.LBB4_3:                                //  %if.end
	lbu x10, 272 ( fp )
	and x10, x10, 3
	beq x0, x10, .LBB4_4
.LBB4_5:                                //  %if.end5
	add x11, x0, 3
	mv x13, x0
	mv x10, fp
	mv x12, x14
	jal hash_access
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB4_4:                                //  %if.then2
	jal __errno
	seqz x11, x0
.LBB4_2:                                //  %cleanup
	sw x11, 0 ( x10 )
	sw x11, 300 ( fp )
	add x10, x0, -1
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end4:
	.size	hash_delete, .Lfunc_end4-hash_delete
	.cfi_endproc
                                        //  -- End function
	.type	hash_fd,@function       //  -- Begin function hash_fd
hash_fd:                                //  @hash_fd
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	add fp, x0, -1
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x10, .LBB5_3
.LBB5_1:                                //  %if.end
	lw x10, 28 ( x10 )
	lw x10, 276 ( x10 )
	xor x11, x10, -1
	beq x0, x11, .LBB5_2
.LBB5_4:                                //  %cleanup
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB5_2:                                //  %if.then1
	jal __errno
	add x11, x0, 2
	sw x11, 0 ( x10 )
.LBB5_3:                                //  %cleanup
	mv x10, fp
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end5:
	.size	hash_fd, .Lfunc_end5-hash_fd
	.cfi_endproc
                                        //  -- End function
	.type	hash_get,@function      //  -- Begin function hash_get
hash_get:                               //  @hash_get
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	lw fp, 28 ( x10 )
	mv x14, x12
	mv x12, x11
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x13, .LBB6_2
.LBB6_1:                                //  %if.then
	jal __errno
	add x11, x0, 22
	sw x11, 0 ( x10 )
	sw x11, 300 ( fp )
	add x10, x0, -1
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB6_2:                                //  %if.end
	mv x11, x0
	mv x10, fp
	mv x13, x14
	jal hash_access
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end6:
	.size	hash_get, .Lfunc_end6-hash_get
	.cfi_endproc
                                        //  -- End function
	.type	hash_put,@function      //  -- Begin function hash_put
hash_put:                               //  @hash_put
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	lw fp, 28 ( x10 )
	mv x14, x12
	mv x12, x11
	and x10, x13, -9
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	beq x0, x10, .LBB7_2
.LBB7_1:                                //  %if.then
	add x9, x0, 22
	sw x9, 300 ( fp )
	jal __errno
	sw x9, 0 ( x10 )
	add x10, x0, -1
	jal x0, .LBB7_8
.LBB7_2:                                //  %if.end
	lbu x10, 272 ( fp )
	and x10, x10, 3
	beq x0, x10, .LBB7_3
.LBB7_4:                                //  %if.end5
	add x10, x0, 8
	beq x13, x10, .LBB7_5
.LBB7_6:                                //  %if.end5
	seqz x11, x0
	jal x0, .LBB7_7
.LBB7_3:                                //  %if.then2
	jal __errno
	seqz x11, x0
	sw x11, 0 ( x10 )
	sw x11, 300 ( fp )
	add x10, x0, -1
	jal x0, .LBB7_8
.LBB7_5:
	add x11, x0, 2
.LBB7_7:                                //  %if.end5
	mv x10, fp
	mv x13, x14
	jal hash_access
.LBB7_8:                                //  %cleanup
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end7:
	.size	hash_put, .Lfunc_end7-hash_put
	.cfi_endproc
                                        //  -- End function
	.type	hash_seq,@function      //  -- Begin function hash_seq
hash_seq:                               //  @hash_seq
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	lw fp, 28 ( x10 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x9, x12
	mv x18, x11
	add x10, x0, 7
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	bltu x10, x13, .LBB8_2
.LBB8_1:                                //  %entry
	seqz x22, x0
	sll x10, x22, x13
	and x10, x10, 137
	beq x0, x10, .LBB8_2
.LBB8_3:                                //  %if.end
	xor x10, x13, 3
	beq x0, x10, .LBB8_5
.LBB8_4:                                //  %if.end
	lw x10, 292 ( fp )
	bge x10, x0, .LBB8_6
.LBB8_5:                                //  %if.then5
	seqz x10, x0
	sw x10, 296 ( fp )
	sw x0, 292 ( fp )
	sw x0, 288 ( fp )
.LBB8_6:                                //  %if.end7
	mv x20, x0
	add x19, x0, -1
	mv x10, x20
                                        //  implicit-def: $rf_gpr_12
.LBB8_7:                                //  %for.cond
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB8_9 Depth 2
                                        //        Child Loop BB8_12 Depth 3
                                        //        Child Loop BB8_20 Depth 3
	beq x0, x10, .LBB8_9
.LBB8_8:                                //  %lor.rhs
                                        //    in Loop: Header=BB8_7 Depth=1
	lhu x11, 0 ( x10 )
	bltu x0, x11, .LBB8_24
.LBB8_9:                                //  %for.body
                                        //    Parent Loop BB8_7 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB8_12 Depth 3
                                        //        Child Loop BB8_20 Depth 3
	lw x12, 288 ( fp )
	beq x0, x12, .LBB8_10
.LBB8_18:                               //  %if.else
                                        //    in Loop: Header=BB8_9 Depth=2
	lw x10, 16 ( x12 )
	jal x0, .LBB8_19
.LBB8_10:                               //  %if.then12
                                        //    in Loop: Header=BB8_9 Depth=2
	lw x11, 40 ( fp )
	lw x21, 292 ( fp )
	bgeu x11, x21, .LBB8_12
.LBB8_11:                               //    in Loop: Header=BB8_9 Depth=2
	mv x12, x20
	sw x21, 292 ( fp )
	bge x11, x21, .LBB8_19
	jal x0, .LBB8_17
.LBB8_12:                               //  %for.body16
                                        //    Parent Loop BB8_7 Depth=1
                                        //      Parent Loop BB8_9 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	mv x10, fp
	mv x13, x20
	mv x11, x21
	mv x12, x20
	jal __get_buf
	mv x12, x10
	beq x0, x12, .LBB8_33
.LBB8_13:                               //  %if.end20
                                        //    in Loop: Header=BB8_12 Depth=3
	lw x10, 16 ( x12 )
	sw x12, 288 ( fp )
	lhu x11, 0 ( x10 )
	bltu x0, x11, .LBB8_14
.LBB8_15:                               //  %for.inc
                                        //    in Loop: Header=BB8_12 Depth=3
	lw x11, 40 ( fp )
	add x21, x21, 1
	sw x22, 296 ( fp )
	bgeu x11, x21, .LBB8_12
	jal x0, .LBB8_16
.LBB8_14:                               //  %if.end20.for.end.loopexit_crit_edge
                                        //    in Loop: Header=BB8_9 Depth=2
	lw x11, 40 ( fp )
.LBB8_16:                               //  %for.end
                                        //    in Loop: Header=BB8_9 Depth=2
	sw x21, 292 ( fp )
	blt x11, x21, .LBB8_17
.LBB8_19:                               //  %if.end37
                                        //    in Loop: Header=BB8_9 Depth=2
	lw x11, 296 ( fp )
	sll x13, x11, 1&31
	add x13, x10, x13
	lhu x13, 2 ( x13 )
	beq x0, x13, .LBB8_20
.LBB8_22:                               //  %while.end
                                        //    in Loop: Header=BB8_9 Depth=2
	lhu x11, 0 ( x10 )
	bltu x0, x11, .LBB8_7
.LBB8_23:                               //  %if.then54
                                        //    in Loop: Header=BB8_9 Depth=2
	lw x11, 292 ( fp )
	sw x0, 288 ( fp )
	add x11, x11, 1
	sw x11, 292 ( fp )
	bltu x0, x10, .LBB8_8
	jal x0, .LBB8_9
.LBB8_20:                               //  %while.body
                                        //    Parent Loop BB8_7 Depth=1
                                        //      Parent Loop BB8_9 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sll x11, x11, 1&31
	add x10, x11, x10
	lhu x11, 0 ( x10 )
	mv x10, fp
	mv x13, x20
	jal __get_buf
	mv x12, x10
	sw x12, 288 ( fp )
	beq x0, x12, .LBB8_33
.LBB8_21:                               //  %if.end49
                                        //    in Loop: Header=BB8_20 Depth=3
	lw x10, 16 ( x12 )
	mv x11, x22
	sw x22, 296 ( fp )
	lhu x13, 4 ( x10 )
	beq x0, x13, .LBB8_20
	jal x0, .LBB8_22
.LBB8_2:                                //  %if.then
	jal __errno
	add x11, x0, 22
	sw x11, 0 ( x10 )
	sw x11, 300 ( fp )
	add x19, x0, -1
.LBB8_33:                               //  %cleanup
	mv x10, x19
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x22, 4 ( sp )                //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB8_24:                               //  %for.end59
	lw x13, 296 ( fp )
	lui x14, %hi( 65535 )
	add x14, x14, %lo( 65535 )
	and x17, x14, x13
	sll x15, x17, 1&31
	add x16, x10, x15
	lhu x10, 2 ( x16 )
	add x15, x0, 3
	bltu x15, x10, .LBB8_26
.LBB8_25:                               //  %if.then68
	mv x11, x12
	seqz x14, x0
	mv x10, fp
	mv x12, x18
	mv x13, x9
	jal __big_keydata
	bltu x0, x10, .LBB8_33
	jal x0, .LBB8_32
.LBB8_17:                               //  %if.then32
	add x10, x0, -1
	sw x10, 292 ( fp )
	seqz x19, x0
	jal x0, .LBB8_33
.LBB8_26:                               //  %if.else73
	lw x15, 288 ( fp )
	lhu x12, 0 ( x16 )
	sltiu x17, x17, 2
	lw x15, 16 ( x15 )
	add x5, x12, x15
	sw x5, 0 ( x18 )
	bltu x0, x17, .LBB8_28
.LBB8_27:                               //  %cond.true
	lhu x16, -2 ( x16 )
	jal x0, .LBB8_29
.LBB8_28:                               //  %cond.false
	lw x16, 12 ( fp )
.LBB8_29:                               //  %cond.end
	add x15, x10, x15
	sub x16, x16, x12
	sub x10, x12, x10
	sw x16, 4 ( x18 )
	sw x10, 4 ( x9 )
	add x10, x13, 2
	and x10, x14, x10
	sw x15, 0 ( x9 )
	bgeu x11, x10, .LBB8_31
.LBB8_30:                               //  %if.then115
	lw x10, 292 ( fp )
	sw x0, 288 ( fp )
	add x10, x10, 1
	sw x10, 292 ( fp )
	seqz x10, x0
.LBB8_31:                               //  %if.end124.sink.split
	sw x10, 296 ( fp )
.LBB8_32:                               //  %if.end124
	mv x19, x0
	jal x0, .LBB8_33
.Lfunc_end8:
	.size	hash_seq, .Lfunc_end8-hash_seq
	.cfi_endproc
                                        //  -- End function
	.type	hash_sync,@function     //  -- Begin function hash_sync
hash_sync:                              //  @hash_sync
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	beq x0, x11, .LBB9_2
.LBB9_1:                                //  %if.then
	jal __errno
	add x11, x0, 22
	sw x11, 0 ( x10 )
	add fp, x0, -1
.LBB9_8:                                //  %cleanup
	mv x10, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB9_2:                                //  %if.end
	add fp, x0, -1
	beq x0, x10, .LBB9_8
.LBB9_3:                                //  %if.end2
	lw x9, 28 ( x10 )
	lw x10, 308 ( x9 )
	beq x0, x10, .LBB9_4
.LBB9_5:                                //  %if.end5
	mv x18, x0
	seqz x12, x0
	mv x10, x9
	mv x11, x18
	jal __buf_free
	bltu x0, x10, .LBB9_8
.LBB9_6:                                //  %lor.lhs.false
	mv x10, x9
	jal flush_meta
	bltu x0, x10, .LBB9_8
.LBB9_7:                                //  %if.end11
	mv fp, x18
	sw x0, 304 ( x9 )
	jal x0, .LBB9_8
.LBB9_4:
	mv fp, x0
	jal x0, .LBB9_8
.Lfunc_end9:
	.size	hash_sync, .Lfunc_end9-hash_sync
	.cfi_endproc
                                        //  -- End function
	.globl	__expand_table          //  -- Begin function __expand_table
	.type	__expand_table,@function
__expand_table:                         //  @__expand_table
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lw x10, 40 ( x9 )
	lw x11, 28 ( x9 )
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	add fp, x10, 1
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	srl x23, fp, x11
	lw x22, 48 ( x9 )
	lw x11, 260 ( x9 )
	mv x10, fp
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw fp, 40 ( x9 )
	blt x23, x11, .LBB10_6
.LBB10_1:                               //  %if.then
	lw x21, 20 ( x9 )
	add x18, x0, -1
	blt x23, x21, .LBB10_4
.LBB10_2:                               //  %if.then7
	sll x19, x21, 3&31
	mv x10, x19
	jal malloc
	mv x20, x10
	beq x0, x20, .LBB10_11
.LBB10_3:                               //  %if.end
	lw x11, 472 ( x9 )
	sll x21, x21, 2&31
	mv x10, x20
	mv x12, x21
	jal memmove
	add x10, x21, x20
	mv x11, x0
	mv x12, x21
	jal memset
	lw x10, 472 ( x9 )
	jal free
	sw x19, 20 ( x9 )
	sw x20, 472 ( x9 )
.LBB10_4:                               //  %if.end14
	lw x10, 24 ( x9 )
	add x11, x0, 4
	jal calloc
	lw x11, 472 ( x9 )
	sll x12, x23, 2&31
	add x11, x12, x11
	sw x10, 0 ( x11 )
	beq x0, x10, .LBB10_11
.LBB10_5:                               //  %if.end20
	lw x10, 264 ( x9 )
	add x10, x10, 1
	sw x10, 264 ( x9 )
	lw x10, 260 ( x9 )
	add x10, x10, 1
	sw x10, 260 ( x9 )
	lw x10, 40 ( x9 )
.LBB10_6:                               //  %if.end24
	add x10, x10, 1
	jal __log2
	lw x11, 32 ( x9 )
	bge x11, x10, .LBB10_8
.LBB10_7:                               //  %if.then30
	add x13, x9, 68
	sll x11, x11, 2&31
	add x11, x11, x13
	lw x11, 0 ( x11 )
	sll x12, x10, 2&31
	add x12, x12, x13
	sw x11, 0 ( x12 )
	sw x10, 32 ( x9 )
.LBB10_8:                               //  %if.end40
	lw x10, 44 ( x9 )
	and x11, fp, x22
	bgeu x10, fp, .LBB10_10
.LBB10_9:                               //  %if.then43
	or x12, fp, x10
	sw x12, 44 ( x9 )
	sw x10, 48 ( x9 )
.LBB10_10:                              //  %if.end52
	mv x10, x9
	mv x12, fp
	jal __split_page
	mv x18, x10
.LBB10_11:                              //  %cleanup
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
.Lfunc_end10:
	.size	__expand_table, .Lfunc_end10-__expand_table
	.cfi_endproc
                                        //  -- End function
	.globl	__call_hash             //  -- Begin function __call_hash
	.type	__call_hash,@function
__call_hash:                            //  @__call_hash
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x10
	lw x13, 268 ( fp )
	mv x10, x11
	mv x11, x12
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	call.reg x13
	lw x11, 44 ( fp )
	and x10, x10, x11
	lw x11, 40 ( fp )
	bge x11, x10, .LBB11_2
.LBB11_1:                               //  %if.then
	lw x11, 48 ( fp )
	and x10, x10, x11
.LBB11_2:                               //  %if.end
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end11:
	.size	__call_hash, .Lfunc_end11-__call_hash
	.cfi_endproc
                                        //  -- End function
	.type	flush_meta,@function    //  -- Begin function flush_meta
flush_meta:                             //  @flush_meta
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -304
	.cfi_adjust_cfa_offset 304
	sw fp, 276 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv fp, x10
	lw x10, 308 ( fp )
	sw ra, 300 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 296 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 292 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 288 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 284 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 280 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	beq x0, x10, .LBB12_11
.LBB12_1:                               //  %if.end
	add x10, x0, 2
	sw x10, 4 ( fp )
	lui x10, %hi( 398689 )
	lw x12, 268 ( fp )
	add x10, x10, %lo( 398689 )
	sw x10, 0 ( fp )
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	add x11, x0, 12
	call.reg x12
	sw x10, 64 ( fp )
	lb x10, 7 ( fp )
	add x11, sp, 16
	lb x12, 2 ( fp )
	or x13, x11, 1
	sb x10, 4 ( x11 )
	lb x10, 5 ( fp )
	sb x12, 0 ( x13 )
	lb x12, 1 ( fp )
	or x13, x11, 2
	sb x10, 6 ( x11 )
	lb x10, 4 ( fp )
	sb x12, 0 ( x13 )
	lb x12, 0 ( fp )
	lw x9, 276 ( fp )
	sb x10, 7 ( x11 )
	lb x10, 3 ( fp )
	or x13, x11, 3
	sb x12, 0 ( x13 )
	add x12, x0, 71
	sb x10, 16 ( sp )
	lb x10, 6 ( fp )
	sb x10, 21 ( sp )
	lb x10, 11 ( fp )
	sb x10, 8 ( x11 )
	lb x10, 10 ( fp )
	sb x10, 9 ( x11 )
	lb x10, 9 ( fp )
	sb x10, 10 ( x11 )
	lb x10, 8 ( fp )
	sb x10, 11 ( x11 )
	lb x10, 15 ( fp )
	sb x10, 12 ( x11 )
	lb x10, 14 ( fp )
	sb x10, 13 ( x11 )
	lb x10, 13 ( fp )
	sb x10, 14 ( x11 )
	lb x10, 12 ( fp )
	sb x10, 15 ( x11 )
	lb x10, 19 ( fp )
	sb x10, 16 ( x11 )
	lb x10, 18 ( fp )
	sb x10, 17 ( x11 )
	lb x10, 17 ( fp )
	sb x10, 18 ( x11 )
	lb x10, 16 ( fp )
	sb x10, 19 ( x11 )
	lb x10, 23 ( fp )
	sb x10, 20 ( x11 )
	lb x10, 22 ( fp )
	sb x10, 21 ( x11 )
	lb x10, 21 ( fp )
	sb x10, 22 ( x11 )
	lb x10, 20 ( fp )
	sb x10, 23 ( x11 )
	lb x10, 27 ( fp )
	sb x10, 24 ( x11 )
	lb x10, 26 ( fp )
	sb x10, 25 ( x11 )
	lb x10, 25 ( fp )
	sb x10, 26 ( x11 )
	lb x10, 24 ( fp )
	sb x10, 27 ( x11 )
	lb x10, 31 ( fp )
	sb x10, 28 ( x11 )
	lb x10, 30 ( fp )
	sb x10, 29 ( x11 )
	lb x10, 29 ( fp )
	sb x10, 30 ( x11 )
	lb x10, 28 ( fp )
	sb x10, 31 ( x11 )
	lb x10, 35 ( fp )
	sb x10, 32 ( x11 )
	lb x10, 34 ( fp )
	sb x10, 33 ( x11 )
	lb x10, 33 ( fp )
	sb x10, 34 ( x11 )
	lb x10, 32 ( fp )
	sb x10, 35 ( x11 )
	lb x10, 39 ( fp )
	sb x10, 36 ( x11 )
	lb x10, 38 ( fp )
	sb x10, 37 ( x11 )
	lb x10, 37 ( fp )
	sb x10, 38 ( x11 )
	lb x10, 36 ( fp )
	sb x10, 39 ( x11 )
	lb x10, 43 ( fp )
	sb x10, 40 ( x11 )
	lb x10, 42 ( fp )
	sb x10, 41 ( x11 )
	lb x10, 41 ( fp )
	sb x10, 42 ( x11 )
	lb x10, 40 ( fp )
	sb x10, 43 ( x11 )
	lb x10, 47 ( fp )
	sb x10, 44 ( x11 )
	lb x10, 46 ( fp )
	sb x10, 45 ( x11 )
	lb x10, 45 ( fp )
	sb x10, 46 ( x11 )
	lb x10, 44 ( fp )
	sb x10, 47 ( x11 )
	lb x10, 51 ( fp )
	sb x10, 48 ( x11 )
	lb x10, 50 ( fp )
	sb x10, 49 ( x11 )
	lb x10, 49 ( fp )
	sb x10, 50 ( x11 )
	lb x10, 48 ( fp )
	sb x10, 51 ( x11 )
	lb x10, 55 ( fp )
	sb x10, 52 ( x11 )
	lb x10, 54 ( fp )
	sb x10, 53 ( x11 )
	lb x10, 53 ( fp )
	sb x10, 54 ( x11 )
	lb x10, 52 ( fp )
	sb x10, 55 ( x11 )
	lb x10, 59 ( fp )
	sb x10, 56 ( x11 )
	lb x10, 58 ( fp )
	sb x10, 57 ( x11 )
	lb x10, 57 ( fp )
	sb x10, 58 ( x11 )
	lb x10, 56 ( fp )
	sb x10, 59 ( x11 )
	lb x10, 63 ( fp )
	sb x10, 60 ( x11 )
	lb x10, 62 ( fp )
	sb x10, 61 ( x11 )
	lb x10, 61 ( fp )
	sb x10, 62 ( x11 )
	lb x10, 60 ( fp )
	sb x10, 63 ( x11 )
	lb x10, 67 ( fp )
	sb x10, 64 ( x11 )
	lb x10, 66 ( fp )
	sb x10, 65 ( x11 )
	lb x10, 65 ( fp )
	sb x10, 66 ( x11 )
	lb x10, 64 ( fp )
	sb x10, 67 ( x11 )
	add x10, x0, 197
.LBB12_2:                               //  %for.body.i
                                        //  =>This Inner Loop Header: Depth=1
	add x14, x12, fp
	lb x15, 0 ( x14 )
	add x13, x12, x11
	add x12, x12, 4
	sb x15, -3 ( x13 )
	lb x15, -1 ( x14 )
	sb x15, -2 ( x13 )
	lb x15, -2 ( x14 )
	lb x14, -3 ( x14 )
	sb x15, -1 ( x13 )
	sb x14, 0 ( x13 )
	add x14, x10, fp
	lb x15, -1 ( x14 )
	lb x14, 0 ( x14 )
	add x13, x10, x11
	add x10, x10, 2
	sb x15, 0 ( x13 )
	sb x14, -1 ( x13 )
	xor x13, x12, 199
	bltu x0, x13, .LBB12_2
.LBB12_3:                               //  %swap_header_copy.exit
	mv x18, x0
	mv x10, x9
	mv x11, x18
	mv x12, x18
	jal lseek
	add x19, x0, -1
	xor x10, x10, -1
	beq x0, x10, .LBB12_12
.LBB12_4:                               //  %lor.lhs.false
	add x11, sp, 16
	add x12, x0, 260
	mv x10, x9
	jal write
	xor x11, x10, -1
	beq x0, x11, .LBB12_15
.LBB12_5:                               //  %lor.lhs.false
	xor x10, x10, 260
	bltu x0, x10, .LBB12_13
.LBB12_6:                               //  %for.body.preheader
	add x20, x0, 196
	add x21, x0, 312
	seqz x9, x0
	add x10, x21, fp
	lw x11, 0 ( x10 )
	bltu x0, x11, .LBB12_9
.LBB12_7:                               //  %for.inc
                                        //  =>This Inner Loop Header: Depth=1
	add x20, x20, 2
	add x21, x21, 4
	xor x10, x20, 260
	beq x0, x10, .LBB12_14
.LBB12_8:                               //  %for.body
                                        //    in Loop: Header=BB12_7 Depth=1
	add x10, x21, fp
	lw x11, 0 ( x10 )
	beq x0, x11, .LBB12_7
.LBB12_9:                               //  %if.then18
	add x10, x20, fp
	lhu x12, 0 ( x10 )
	mv x10, fp
	mv x13, x18
	mv x14, x9
	jal __put_page
	beq x0, x10, .LBB12_7
.LBB12_12:
	mv x10, x19
	jal x0, .LBB12_15
.LBB12_11:
	mv x10, x0
	jal x0, .LBB12_15
.LBB12_13:                              //  %if.then11
	jal __errno
	add x11, x0, 79
	sw x11, 0 ( x10 )
	jal __errno
	lw x10, 0 ( x10 )
	sw x10, 300 ( fp )
	mv x10, x19
	jal x0, .LBB12_15
.LBB12_14:
	mv x10, x18
.LBB12_15:                              //  %cleanup
	lw fp, 276 ( sp )               //  4-byte Folded Reload
	lw x21, 280 ( sp )              //  4-byte Folded Reload
	lw x20, 284 ( sp )              //  4-byte Folded Reload
	lw x19, 288 ( sp )              //  4-byte Folded Reload
	lw x18, 292 ( sp )              //  4-byte Folded Reload
	lw x9, 296 ( sp )               //  4-byte Folded Reload
	lw ra, 300 ( sp )               //  4-byte Folded Reload
	add sp, sp, 304
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end12:
	.size	flush_meta, .Lfunc_end12-flush_meta
	.cfi_endproc
                                        //  -- End function
	.type	hash_access,@function   //  -- Begin function hash_access
hash_access:                            //  @hash_access
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x20, x12
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x10
	sw x24, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	lw x25, 0 ( x20 )
	lw x24, 4 ( x20 )
	lw x12, 268 ( x19 )
	sw x22, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	mv x22, x11
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x18, 12 ( x19 )
	mv x10, x25
	mv x11, x24
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x26, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv x21, x13
	call.reg x12
	lw x11, 44 ( x19 )
	and x11, x10, x11
	lw x10, 40 ( x19 )
	bge x10, x11, .LBB13_2
.LBB13_1:                               //  %if.then.i
	lw x10, 48 ( x19 )
	and x11, x11, x10
.LBB13_2:                               //  %__call_hash.exit
	mv x23, x0
	mv x10, x19
	mv x12, x23
	mv x13, x23
	jal __get_buf
	mv fp, x10
	add x9, x0, -1
	beq x0, fp, .LBB13_32
.LBB13_3:                               //  %if.end
	lb x10, 20 ( fp )
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	mv x26, fp
	sw x21, 16 ( sp )               //  4-byte Folded Spill
	or x10, x10, 8
	sb x10, 20 ( fp )
	lw x10, 16 ( fp )
	lhu x22, 0 ( x10 )
	sltiu x11, x22, 2
	bltu x0, x11, .LBB13_17
.LBB13_4:                               //  %for.body.preheader
	seqz x21, x0
	add x27, x10, 2
	mv x26, fp
	lhu x10, 2 ( x27 )
	sltiu x11, x10, 4
	beq x0, x11, .LBB13_8
	jal x0, .LBB13_10
.LBB13_5:                               //  %land.lhs.true.if.end19_crit_edge
	lhu x10, 2 ( x27 )
.LBB13_6:                               //  %if.end19
	add x21, x21, 2
	add x27, x27, 4
	mv x18, x10
	bge x21, x22, .LBB13_17
.LBB13_7:                               //  %for.body
	lhu x10, 2 ( x27 )
	sltiu x11, x10, 4
	bltu x0, x11, .LBB13_10
.LBB13_8:                               //  %if.then9
	lhu x11, 0 ( x27 )
	sub x12, x18, x11
	bne x24, x12, .LBB13_6
.LBB13_9:                               //  %land.lhs.true
	lw x10, 16 ( x26 )
	mv x12, x24
	add x11, x11, x10
	mv x10, x25
	jal memcmp
	bltu x0, x10, .LBB13_5
	jal x0, .LBB13_21
.LBB13_10:                              //  %if.else
	beq x0, x10, .LBB13_15
.LBB13_11:                              //  %if.then46
	mv x10, x19
	mv x11, x26
	mv x12, x21
	mv x13, x25
	mv x14, x24
	jal __find_bigpair
	mv x21, x10
	blt x0, x21, .LBB13_21
.LBB13_12:                              //  %if.end51
	xor x10, x21, -2
	bltu x0, x10, .LBB13_30
.LBB13_13:                              //  %if.then54
	mv x10, x19
	add x11, sp, 24
	sw x26, 24 ( sp )
	jal __find_last_page
	mv x11, x10
	beq x0, x11, .LBB13_25
.LBB13_14:                              //  %if.end58
	lw x12, 24 ( sp )
	mv x10, x19
	mv x13, x0
	jal __get_buf
	mv x26, x10
	bltu x0, x26, .LBB13_16
	jal x0, .LBB13_30
.LBB13_15:                              //  %if.then27
	lhu x11, 0 ( x27 )
	mv x10, x19
	mv x12, x26
	mv x13, x0
	jal __get_buf
	mv x26, x10
	beq x0, x26, .LBB13_30
.LBB13_16:                              //  %if.end35
	lw x10, 16 ( x26 )
	lw x18, 12 ( x19 )
	seqz x21, x0
	lhu x22, 0 ( x10 )
	add x27, x10, 2
	blt x21, x22, .LBB13_7
.LBB13_17:                              //  %for.end
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	seqz x9, x0
	add x10, x10, -1
	bltu x9, x10, .LBB13_30
.LBB13_18:                              //  %sw.bb
	lw x13, 16 ( sp )               //  4-byte Folded Reload
	mv x10, x19
	mv x11, x26
	mv x12, x20
	jal __addel
	lbu x11, 20 ( fp )
	and x11, x11, 247
	sb x11, 20 ( fp )
	bne x10, x23, .LBB13_20
.LBB13_19:                              //  %sw.bb
	mv x9, x23
	jal x0, .LBB13_32
.LBB13_20:
	add x9, x0, -1
	jal x0, .LBB13_32
.LBB13_21:
	lw x11, 20 ( sp )               //  4-byte Folded Reload
	add x10, x0, 3
	bltu x10, x11, .LBB13_35
.LBB13_22:                              //  %found
	lui x12, %hi( JTI13_0 )
	sll x11, x11, 2&31
	add x12, x12, %lo( JTI13_0 )
	add x11, x12, x11
	lw x11, 0 ( x11 )
	jr x11
.LBB13_23:                              //  %sw.bb104
	lw x11, 16 ( x26 )
	sll x12, x21, 1&31
	add x13, x11, x12
	lhu x12, 2 ( x13 )
	bltu x10, x12, .LBB13_33
.LBB13_24:                              //  %if.then111
	lw x13, 16 ( sp )               //  4-byte Folded Reload
	mv x14, x0
	mv x10, x19
	mv x11, x26
	mv x12, x21
	jal __big_return
	bltu x0, x10, .LBB13_32
	jal x0, .LBB13_34
.LBB13_25:                              //  %if.then57
	lw x26, 24 ( sp )
	lw x10, 20 ( sp )               //  4-byte Folded Reload
	seqz x9, x0
	add x10, x10, -1
	bgeu x9, x10, .LBB13_18
	jal x0, .LBB13_30
.LBB13_26:                              //  %sw.bb99
	lbu x10, 20 ( fp )
	seqz x9, x0
	jal x0, .LBB13_31
.LBB13_27:                              //  %sw.bb142
	mv x10, x19
	mv x11, x26
	mv x12, x21
	jal __delpair
	bltu x0, x10, .LBB13_32
	jal x0, .LBB13_34
.LBB13_28:                              //  %sw.bb131
	mv x10, x19
	mv x11, x26
	mv x12, x21
	jal __delpair
	bltu x0, x10, .LBB13_30
.LBB13_29:                              //  %lor.lhs.false
	lw x13, 16 ( sp )               //  4-byte Folded Reload
	mv x10, x19
	mv x11, x26
	mv x12, x20
	jal __addel
	beq x0, x10, .LBB13_34
.LBB13_30:                              //  %if.then31
	lbu x10, 20 ( fp )
.LBB13_31:                              //  %cleanup
	and x10, x10, 247
	sb x10, 20 ( fp )
.LBB13_32:                              //  %cleanup
	mv x10, x9
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
.LBB13_33:                              //  %if.else116
	add x10, x12, x11
	lw x11, 16 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( x11 )
	lhu x10, 0 ( x13 )
	sub x10, x10, x12
	sw x10, 4 ( x11 )
.LBB13_34:                              //  %sw.epilog
	lbu x10, 20 ( fp )
	mv x9, x0
	jal x0, .LBB13_31
.LBB13_35:                              //  %sw.default147
	jal abort
.Lfunc_end13:
	.size	hash_access, .Lfunc_end13-hash_access
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI13_0:
	.long	.LBB13_23
	.long	.LBB13_28
	.long	.LBB13_26
	.long	.LBB13_27
                                        //  -- End function
	.address_space	0
	.address_space	0
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"%$sniglet^&"
	.size	.str, 12


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
