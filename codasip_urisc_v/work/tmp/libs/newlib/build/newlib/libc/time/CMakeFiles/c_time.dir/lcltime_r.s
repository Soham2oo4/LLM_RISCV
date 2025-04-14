	.text
	.file	"lcltime_r.c"
	.globl	localtime_r             //  -- Begin function localtime_r
	.type	localtime_r,@function
localtime_r:                            //  @localtime_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	mv fp, x11
	mv x19, x10
	jal __gettzinfo
	mv x18, x10
	mv x10, x19
	mv x11, fp
	jal gmtime_r
	mv fp, x10
	lw x10, 20 ( fp )
	add x11, x0, 100
	add x20, x10, 1900
	mv x10, x20
	jal __modsi3
	and x11, x20, 3
	bltu x0, x11, .LBB0_3
.LBB0_1:                                //  %entry
	beq x0, x10, .LBB0_3
.LBB0_2:
	seqz x9, x0
	jal x0, .LBB0_4
.LBB0_3:                                //  %lor.rhs
	add x11, x0, 400
	mv x10, x20
	jal __modsi3
	seqz x9, x10
.LBB0_4:                                //  %lor.end
	jal __tz_lock
	jal _tzset_unlocked
	lui x10, %hi( _daylight )
	add x10, x10, %lo( _daylight )
	lw x10, 0 ( x10 )
	beq x0, x10, .LBB0_11
.LBB0_5:                                //  %if.then
	lw x10, 4 ( x18 )
	beq x20, x10, .LBB0_7
.LBB0_6:                                //  %lor.lhs.false
	mv x10, x20
	jal __tzcalc_limits
	beq x0, x10, .LBB0_19
.LBB0_7:                                //  %if.then9
	lw x12, 32 ( x18 )
	lw x13, 28 ( x18 )
	lw x11, 4 ( x19 )
	lw x10, 0 ( x19 )
	lw x14, 0 ( x18 )
	beq x0, x14, .LBB0_12
.LBB0_8:                                //  %cond.true
	beq x11, x12, .LBB0_16
.LBB0_9:                                //  %cond.true
	slt x12, x11, x12
	seqz x12, x12
	bltu x0, x12, .LBB0_17
.LBB0_10:                               //  %if.end31.thread265
	sw x0, 32 ( fp )
	jal x0, .LBB0_25
.LBB0_11:
	mv x10, x0
	sw x10, 32 ( fp )
	jal x0, .LBB0_25
.LBB0_12:                               //  %cond.false
	beq x11, x12, .LBB0_20
.LBB0_13:                               //  %cond.false
	slt x12, x11, x12
	beq x0, x12, .LBB0_21
.LBB0_14:                               //  %if.end31
	lw x12, 64 ( x18 )
	beq x11, x12, .LBB0_24
.LBB0_15:                               //  %if.end31
	slt x10, x11, x12
	seqz x11, x10
	sw x10, 32 ( fp )
	beq x0, x11, .LBB0_23
	jal x0, .LBB0_25
.LBB0_16:
	sltu x12, x10, x13
	xor x12, x12, 1
	beq x0, x12, .LBB0_10
.LBB0_17:                               //  %land.rhs
	lw x12, 64 ( x18 )
	beq x11, x12, .LBB0_22
.LBB0_18:                               //  %land.rhs
	slt x10, x11, x12
	sw x10, 32 ( fp )
	bltu x0, x10, .LBB0_23
	jal x0, .LBB0_25
.LBB0_19:
	add x10, x0, -1
	sw x10, 32 ( fp )
	jal x0, .LBB0_25
.LBB0_20:
	sltu x12, x10, x13
	bltu x0, x12, .LBB0_14
.LBB0_21:                               //  %if.end31.thread258
	seqz x10, x0
	sw x10, 32 ( fp )
	jal x0, .LBB0_23
.LBB0_22:
	lw x11, 60 ( x18 )
	sltu x10, x10, x11
	sw x10, 32 ( fp )
	beq x0, x10, .LBB0_25
.LBB0_23:
	add x10, x18, 68
	jal x0, .LBB0_26
.LBB0_24:
	lw x11, 60 ( x18 )
	sltu x10, x10, x11
	xor x11, x10, 1
	sw x10, 32 ( fp )
	beq x0, x11, .LBB0_23
.LBB0_25:
	add x10, x18, 36
.LBB0_26:
	lw x18, 0 ( x10 )
	lui x10, %hi( 3600 )
	add x19, x10, %lo( 3600 )
	mv x11, x19
	mv x10, x18
	jal __divsi3
	mv x11, x19
	mv x20, x10
	jal __mulsi3
	sub x19, x18, x10
	add x18, x0, 60
	mv x10, x19
	mv x11, x18
	jal __divsi3
	mv x11, x18
	mv x21, x10
	jal __mulsi3
	lw x11, 0 ( fp )
	sub x10, x10, x19
	add x12, x10, x11
	lw x10, 8 ( fp )
	lw x11, 4 ( fp )
	slti x13, x12, 60
	sw x12, 0 ( fp )
	sub x10, x10, x20
	sub x11, x11, x21
	sw x11, 4 ( fp )
	sw x10, 8 ( fp )
	bltu x0, x13, .LBB0_28
.LBB0_27:                               //  %if.then51
	add x18, x0, -60
	add x11, x11, 1
	jal x0, .LBB0_32
.LBB0_28:                               //  %if.else56
	blt x12, x0, .LBB0_31
.LBB0_29:                               //  %if.end65
	slti x12, x11, 60
	bltu x0, x12, .LBB0_33
.LBB0_30:                               //  %if.then68
	add x12, x0, -60
	add x10, x10, 1
	jal x0, .LBB0_42
.LBB0_31:                               //  %if.then59
	add x11, x11, -1
.LBB0_32:                               //  %if.end65.sink.split
	add x12, x18, x12
	sw x12, 0 ( fp )
	sw x11, 4 ( fp )
	slti x12, x11, 60
	beq x0, x12, .LBB0_30
.LBB0_33:                               //  %if.else73
	blt x11, x0, .LBB0_41
.LBB0_34:                               //  %if.end82
	slti x11, x10, 24
	bltu x0, x11, .LBB0_43
.LBB0_35:                               //  %if.then85
	lw x11, 24 ( fp )
	add x12, x0, 5
	blt x12, x11, .LBB0_37
.LBB0_36:                               //  %if.then85
	add x11, x11, 1
	jal x0, .LBB0_38
.LBB0_37:
	mv x11, x0
.LBB0_38:                               //  %if.then85
	add x10, x10, -24
	sw x10, 8 ( fp )
	lw x10, 28 ( fp )
	sw x11, 24 ( fp )
	add x11, x0, 48
	add x10, x10, 1
	sw x10, 28 ( fp )
	mv x10, x9
	jal __mulsi3
	lui x11, %hi( __month_lengths )
	add x11, x11, %lo( __month_lengths )
	add x12, x10, x11
	lw x11, 16 ( fp )
	lw x13, 12 ( fp )
	sll x14, x11, 2&31
	add x12, x14, x12
	lw x12, 0 ( x12 )
	add x10, x13, 1
	sw x10, 12 ( fp )
	blt x13, x12, .LBB0_57
.LBB0_39:                               //  %if.then98
	sub x10, x10, x12
	sw x10, 12 ( fp )
	add x10, x11, 1
	sw x10, 16 ( fp )
	xor x10, x10, 12
	bltu x0, x10, .LBB0_57
.LBB0_40:                               //  %if.then107
	lw x10, 20 ( fp )
	sw x0, 16 ( fp )
	sw x0, 28 ( fp )
	add x10, x10, 1
	sw x10, 20 ( fp )
	jal x0, .LBB0_57
.LBB0_41:                               //  %if.then76
	add x12, x0, 60
	add x10, x10, -1
.LBB0_42:                               //  %if.end82.sink.split
	add x11, x12, x11
	sw x11, 4 ( fp )
	sw x10, 8 ( fp )
	slti x11, x10, 24
	beq x0, x11, .LBB0_35
.LBB0_43:                               //  %if.else114
	bge x10, x0, .LBB0_57
.LBB0_44:                               //  %if.then117
	lw x11, 24 ( fp )
	seqz x12, x0
	blt x11, x12, .LBB0_46
.LBB0_45:                               //  %if.then117
	add x11, x11, -1
	jal x0, .LBB0_47
.LBB0_46:
	add x11, x0, 6
.LBB0_47:                               //  %if.then117
	add x10, x10, 24
	sw x10, 8 ( fp )
	lw x10, 28 ( fp )
	sw x11, 24 ( fp )
	add x10, x10, -1
	sw x10, 28 ( fp )
	lw x10, 12 ( fp )
	add x10, x10, -1
	sw x10, 12 ( fp )
	bltu x0, x10, .LBB0_57
.LBB0_48:                               //  %if.then133
	lw x10, 16 ( fp )
	add x19, x10, -1
	sw x19, 16 ( fp )
	blt x0, x10, .LBB0_56
.LBB0_49:                               //  %if.then138
	lw x10, 20 ( fp )
	add x19, x0, 11
	sw x19, 16 ( fp )
	add x11, x10, -1
	add x18, x10, 1899
	sw x11, 20 ( fp )
	add x11, x0, 100
	mv x10, x18
	jal __modsi3
	and x11, x18, 3
	bltu x0, x11, .LBB0_52
.LBB0_50:                               //  %if.then138
	bltu x0, x10, .LBB0_54
.LBB0_52:                               //  %lor.rhs151
	add x11, x0, 400
	mv x10, x18
	jal __modsi3
	mv x11, x0
	beq x10, x11, .LBB0_54
.LBB0_53:                               //  %lor.rhs151
	add x10, x0, 364
	jal x0, .LBB0_55
.LBB0_54:
	add x10, x0, 365
.LBB0_55:                               //  %lor.end156
	sw x10, 28 ( fp )
.LBB0_56:                               //  %if.end160
	add x11, x0, 48
	mv x10, x9
	jal __mulsi3
	lui x11, %hi( __month_lengths )
	add x11, x11, %lo( __month_lengths )
	add x10, x10, x11
	sll x11, x19, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	sw x10, 12 ( fp )
.LBB0_57:                               //  %if.end166
	jal __tz_unlock
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
.Lfunc_end0:
	.size	localtime_r, .Lfunc_end0-localtime_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
