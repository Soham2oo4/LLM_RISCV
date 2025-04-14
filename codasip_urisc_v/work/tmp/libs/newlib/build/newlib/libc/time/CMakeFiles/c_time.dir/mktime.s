	.text
	.file	"mktime.c"
	.globl	mktime                  //  -- Begin function mktime
	.type	mktime,@function
mktime:                                 //  @mktime
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
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
	mv fp, x10
	jal __gettzinfo
	mv x26, x10
	mv x10, fp
	jal validate_structure
	lw x10, 16 ( fp )
	lui x12, %hi( _DAYS_BEFORE_MONTH )
	add x12, x12, %lo( _DAYS_BEFORE_MONTH )
	lw x20, 8 ( fp )
	sll x11, x10, 2&31
	add x11, x11, x12
	lw x11, 0 ( x11 )
	lw x12, 12 ( fp )
	lw x22, 4 ( fp )
	lw x21, 0 ( fp )
	lw x19, 20 ( fp )
	add x18, x12, x11
	add x9, x18, -1
	slti x10, x10, 2
	bltu x0, x10, .LBB0_5
.LBB0_1:                                //  %entry
	and x10, x19, 3
	bltu x0, x10, .LBB0_5
.LBB0_2:                                //  %land.rhs
	add x11, x0, 100
	mv x10, x19
	jal __modsi3
	beq x0, x10, .LBB0_4
.LBB0_3:                                //  %land.end.thread
	mv x9, x18
	jal x0, .LBB0_5
.LBB0_4:                                //  %land.end
	add x10, x19, 1900
	add x11, x0, 400
	jal __modsi3
	beq x0, x10, .LBB0_3
.LBB0_5:                                //  %if.end
	lui x10, %hi( 10000 )
	add x10, x10, %lo( 10000 )
	add x12, x10, x19
	lui x11, %hi( 20000 )
	add x10, x0, -1
	add x13, x11, %lo( 20000 )
	mv x11, x10
	sw x9, 28 ( fp )
	bltu x13, x12, .LBB0_69
.LBB0_6:                                //  %if.end28
	lui x10, %hi( 3600 )
	add x11, x0, 60
	add x10, x10, %lo( 3600 )
	hackaton_custom_instr_c x11, x11, x22
	hackaton_custom_instr_c x10, x10, x20
	add x11, x21, x11
	add x24, x10, x11
	slti x10, x19, 71
	bltu x0, x10, .LBB0_13
.LBB0_7:                                //  %for.body.preheader
	sw x26, 8 ( sp )                //  4-byte Folded Spill
	add x20, x0, 70
	mv x26, x0
	add x21, x0, 1970
	add x27, x19, -70
	add x22, x0, 400
	add x23, x0, 100
	add x18, x0, 365
	add x25, x0, 366
	sw x24, 4 ( sp )                //  4-byte Folded Spill
	jal x0, .LBB0_10
.LBB0_8:                                //  %land.end49.thread
                                        //    in Loop: Header=BB0_10 Depth=1
	mv x11, x25
.LBB0_9:                                //  %land.end49.thread405
                                        //    in Loop: Header=BB0_10 Depth=1
	add x9, x9, x11
	add x21, x21, 1
	add x20, x20, 1
	add x26, x26, 1
	beq x27, x26, .LBB0_15
.LBB0_10:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x21
	mv x11, x22
	jal __udivsi3
	mv x24, x10
	mv x10, x20
	mv x11, x23
	jal __udivsi3
	add x11, x26, 70
	and x12, x11, 3
	mv x11, x18
	bltu x0, x12, .LBB0_9
.LBB0_11:                               //  %land.rhs39
                                        //    in Loop: Header=BB0_10 Depth=1
	hackaton_custom_instr_c x10, x23, x10
	add x10, x10, -70
	bne x10, x26, .LBB0_8
.LBB0_12:                               //  %land.end49
                                        //    in Loop: Header=BB0_10 Depth=1
	hackaton_custom_instr_c x10, x22, x24
	add x10, x10, -1970
	mv x11, x18
	beq x10, x26, .LBB0_8
	jal x0, .LBB0_9
.LBB0_13:                               //  %if.else
	xor x10, x19, 70
	bltu x0, x10, .LBB0_16
.LBB0_14:
	add x19, x0, 70
	jal x0, .LBB0_29
.LBB0_15:
	lw x26, 8 ( sp )                //  4-byte Folded Reload
	lw x24, 4 ( sp )                //  4-byte Folded Reload
	jal x0, .LBB0_29
.LBB0_16:                               //  %for.cond56.preheader
	add x10, x0, 68
	blt x10, x19, .LBB0_23
.LBB0_17:                               //  %for.body60.preheader
	mv x11, x0
	add x10, x0, 1969
	add x18, x0, 365
	add x20, x0, 100
	add x21, x0, 400
	add x23, x0, 366
	mv x22, x10
	and x10, x11, 1
	mv x11, x18
	beq x0, x10, .LBB0_19
	jal x0, .LBB0_21
.LBB0_18:                               //  %land.end74.thread
	mv x11, x23
.LBB0_19:                               //  %land.end74.thread406
                                        //  =>This Inner Loop Header: Depth=1
	add x13, x22, -1901
	and x12, x13, 3
	sub x9, x9, x11
	add x10, x22, -1
	seqz x11, x12
	bge x19, x13, .LBB0_24
.LBB0_20:                               //  %for.body60
                                        //    in Loop: Header=BB0_19 Depth=1
	mv x22, x10
	and x10, x11, 1
	mv x11, x18
	beq x0, x10, .LBB0_19
.LBB0_21:                               //  %land.rhs64
	add x10, x22, -1900
	mv x11, x20
	jal __modsi3
	bltu x0, x10, .LBB0_18
.LBB0_22:                               //  %land.end74
	mv x10, x22
	mv x11, x21
	jal __modsi3
	mv x11, x18
	bltu x0, x10, .LBB0_19
	jal x0, .LBB0_18
.LBB0_23:
	add x18, x0, 365
	jal x0, .LBB0_28
.LBB0_24:                               //  %for.end78
	add x18, x0, 365
	bltu x0, x12, .LBB0_28
.LBB0_25:                               //  %land.rhs82
	add x11, x0, 100
	mv x10, x19
	jal __modsi3
	beq x0, x10, .LBB0_27
.LBB0_26:                               //  %land.end92.thread
	add x18, x0, 366
	jal x0, .LBB0_28
.LBB0_27:                               //  %land.end92
	add x10, x19, 1900
	add x11, x0, 400
	jal __modsi3
	beq x0, x10, .LBB0_26
.LBB0_28:                               //  %land.end92.thread407
	sub x9, x9, x18
.LBB0_29:                               //  %if.end96
	lui x10, %hi( 86400 )
	mv x20, x0
	add x12, x10, %lo( 86400 )
	sra x11, x9, 31&31
	mv x10, x9
	mv x13, x20
	jal __muldi3
	sra x12, x24, 31&31
	add x24, x24, x10
	add x11, x12, x11
	sltu x10, x24, x10
	add x21, x10, x11
	jal __tz_lock
	jal _tzset_unlocked
	lui x10, %hi( _daylight )
	add x10, x10, %lo( _daylight )
	lw x10, 0 ( x10 )
	beq x0, x10, .LBB0_36
.LBB0_30:                               //  %if.then100
	lw x23, 32 ( fp )
	seqz x10, x0
	blt x23, x10, .LBB0_32
.LBB0_31:                               //  %if.then100
	mv x23, x10
.LBB0_32:                               //  %if.then100
	lw x10, 20 ( fp )
	lw x11, 4 ( x26 )
	add x10, x10, 1900
	beq x10, x11, .LBB0_34
.LBB0_33:                               //  %lor.lhs.false110
	jal __tzcalc_limits
	beq x0, x10, .LBB0_47
.LBB0_34:                               //  %if.then113
	lw x10, 68 ( x26 )
	lw x13, 64 ( x26 )
	lw x14, 60 ( x26 )
	sra x12, x10, 31&31
	sub x11, x13, x12
	sltu x15, x14, x10
	sub x11, x11, x15
	beq x21, x11, .LBB0_37
.LBB0_35:                               //  %if.then113
	slt x11, x21, x11
	seqz x15, x11
	jal x0, .LBB0_38
.LBB0_36:                               //  %if.end251.thread
	add x18, x26, 36
	mv x23, x24
	mv x22, x20
	jal x0, .LBB0_66
.LBB0_37:
	sub x11, x14, x10
	sltu x11, x24, x11
	xor x15, x11, 1
.LBB0_38:                               //  %if.then113
	lw x11, 36 ( x26 )
	sra x16, x11, 31&31
	sub x13, x13, x16
	sltu x16, x14, x11
	sub x13, x13, x16
	sub x14, x14, x11
	bltu x0, x15, .LBB0_41
.LBB0_39:                               //  %if.then113
	beq x21, x13, .LBB0_46
.LBB0_40:                               //  %if.then113
	slt x15, x21, x13
	seqz x15, x15
	bltu x0, x15, .LBB0_47
.LBB0_41:                               //  %if.else141
	lw x15, 32 ( x26 )
	sub x15, x15, x12
	lw x12, 28 ( x26 )
	sltu x16, x12, x10
	sub x15, x15, x16
	beq x21, x15, .LBB0_50
.LBB0_42:                               //  %if.else141
	slt x12, x21, x15
	seqz x12, x12
	bne x21, x13, .LBB0_51
.LBB0_43:
	sltu x13, x24, x14
	lw x14, 0 ( x26 )
	bne x14, x20, .LBB0_52
.LBB0_44:
	or x22, x12, x13
	blt x23, x0, .LBB0_45
.LBB0_53:                               //  %if.else141
	xor x12, x22, x23
	xor x12, x12, 1
	bltu x0, x12, .LBB0_45
.LBB0_54:                               //  %if.then164
	sub x18, x11, x10
	bltu x0, x22, .LBB0_56
.LBB0_55:                               //  %if.then164
	sub x18, x0, x18
.LBB0_56:                               //  %if.then164
	lw x10, 0 ( fp )
	lw x25, 12 ( fp )
	add x10, x18, x10
	sw x10, 0 ( fp )
	mv x10, fp
	jal validate_structure
	sra x10, x18, 31&31
	add x23, x18, x24
	add x10, x10, x21
	sltu x11, x23, x24
	add x21, x11, x10
	lw x10, 12 ( fp )
	sub x11, x10, x25
	beq x0, x11, .LBB0_48
.LBB0_57:                               //  %if.then184
	seqz x12, x0
	add x10, x0, -1
	mv x13, x12
	blt x11, x10, .LBB0_59
.LBB0_58:                               //  %if.then184
	mv x13, x11
.LBB0_59:                               //  %if.then184
	blt x12, x11, .LBB0_61
.LBB0_60:                               //  %if.then184
	mv x10, x13
.LBB0_61:                               //  %if.then184
	lw x11, 28 ( fp )
	add x9, x9, x10
	add x18, x10, x11
	sw x18, 28 ( fp )
	blt x18, x0, .LBB0_70
.LBB0_62:                               //  %if.else220
	and x10, x19, 3
	beq x0, x10, .LBB0_72
.LBB0_63:                               //  %lor.rhs228
	add x10, x0, 365
	blt x18, x10, .LBB0_48
	jal x0, .LBB0_78
.LBB0_46:
	sltu x15, x24, x14
	xor x15, x15, 1
	beq x0, x15, .LBB0_41
.LBB0_47:
	mv x22, x23
	mv x23, x24
.LBB0_48:                               //  %if.end251
	seqz x10, x0
	beq x22, x10, .LBB0_65
.LBB0_49:                               //  %if.end251
	add x18, x26, 36
	jal x0, .LBB0_66
.LBB0_50:
	sub x12, x12, x10
	sltu x12, x24, x12
	xor x12, x12, 1
	beq x21, x13, .LBB0_43
.LBB0_51:                               //  %if.else141
	slt x13, x21, x13
	lw x14, 0 ( x26 )
	beq x14, x20, .LBB0_44
.LBB0_52:                               //  %if.else141
	and x22, x12, x13
	bge x23, x0, .LBB0_53
.LBB0_45:
	mv x23, x24
	seqz x10, x0
	bne x22, x10, .LBB0_49
.LBB0_65:
	add x18, x26, 68
.LBB0_66:
	add x10, x9, 4
	add x11, x0, 7
	jal __modsi3
	mv x9, x10
	bge x9, x20, .LBB0_68
.LBB0_67:
	add x9, x9, 7
.LBB0_68:
	lw x18, 0 ( x18 )
	jal __tz_unlock
	sra x10, x18, 31&31
	add x11, x10, x21
	add x10, x18, x23
	sltu x12, x10, x23
	add x11, x12, x11
	sw x9, 24 ( fp )
	sw x22, 32 ( fp )
.LBB0_69:                               //  %cleanup
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
.LBB0_70:                               //  %if.then199
	add x10, x19, -1
	and x11, x10, 3
	beq x0, x11, .LBB0_74
.LBB0_71:
	add x10, x0, 364
	sw x10, 28 ( fp )
	seqz x10, x0
	beq x22, x10, .LBB0_65
	jal x0, .LBB0_49
.LBB0_72:                               //  %land.rhs224
	add x11, x0, 100
	mv x10, x19
	jal __modsi3
	bltu x0, x10, .LBB0_73
.LBB0_76:                               //  %lor.rhs228
	add x10, x19, 1900
	add x11, x0, 400
	jal __modsi3
	bne x10, x20, .LBB0_63
.LBB0_73:
	add x10, x0, 366
	blt x18, x10, .LBB0_48
.LBB0_78:                               //  %if.then242
	sub x10, x18, x10
	sw x10, 28 ( fp )
	seqz x10, x0
	beq x22, x10, .LBB0_65
	jal x0, .LBB0_49
.LBB0_74:                               //  %land.rhs204
	add x11, x0, 100
	jal __modsi3
	bltu x0, x10, .LBB0_75
.LBB0_79:                               //  %lor.rhs208
	add x10, x19, 1899
	add x11, x0, 400
	jal __modsi3
	bne x10, x20, .LBB0_71
.LBB0_75:
	add x10, x0, 365
	sw x10, 28 ( fp )
	seqz x10, x0
	beq x22, x10, .LBB0_65
	jal x0, .LBB0_49
.Lfunc_end0:
	.size	mktime, .Lfunc_end0-mktime
	.cfi_endproc
                                        //  -- End function
	.type	validate_structure,@function //  -- Begin function validate_structure
validate_structure:                     //  @validate_structure
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x10
	lw x11, 0 ( fp )
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9, x0, 59
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
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
	bgeu x9, x11, .LBB1_5
.LBB1_1:                                //  %if.then
	add x10, sp, 4
	add x12, x0, 60
	jal div
	lw x11, 4 ( sp )
	lw x12, 4 ( fp )
	lw x10, 8 ( sp )
	add x11, x11, x12
	sw x10, 0 ( fp )
	sw x11, 4 ( fp )
	blt x10, x0, .LBB1_12
.LBB1_2:                                //  %if.end10
	bgeu x9, x11, .LBB1_6
.LBB1_3:                                //  %if.then16
	add x10, sp, 4
	add x12, x0, 60
	jal div
	lw x11, 4 ( sp )
	lw x12, 8 ( fp )
	lw x10, 8 ( sp )
	add x11, x11, x12
	sw x10, 4 ( fp )
	sw x11, 8 ( fp )
	blt x10, x0, .LBB1_4
.LBB1_7:                                //  %if.end30
	sltiu x10, x11, 24
	bltu x0, x10, .LBB1_9
	jal x0, .LBB1_8
.LBB1_5:                                //  %entry.if.end10_crit_edge
	lw x11, 4 ( fp )
	bltu x9, x11, .LBB1_3
.LBB1_6:                                //  %if.end10.if.end30_crit_edge
	lw x11, 8 ( fp )
	sltiu x10, x11, 24
	bltu x0, x10, .LBB1_9
	jal x0, .LBB1_8
.LBB1_12:                               //  %if.then6
	add x11, x11, -1
	add x10, x10, 60
	sw x10, 0 ( fp )
	sw x11, 4 ( fp )
	bltu x9, x11, .LBB1_3
	jal x0, .LBB1_6
.LBB1_4:                                //  %if.then24
	add x11, x11, -1
	add x10, x10, 60
	sw x10, 4 ( fp )
	sw x11, 8 ( fp )
	sltiu x10, x11, 24
	bltu x0, x10, .LBB1_9
.LBB1_8:                                //  %if.then36
	add x10, sp, 4
	add x12, x0, 24
	jal div
	lw x11, 4 ( sp )
	lw x12, 12 ( fp )
	lw x10, 8 ( sp )
	add x11, x11, x12
	sw x10, 8 ( fp )
	sw x11, 12 ( fp )
	blt x10, x0, .LBB1_13
.LBB1_9:                                //  %if.end50
	lw x18, 16 ( fp )
	add x22, x0, 11
	bgeu x22, x18, .LBB1_14
.LBB1_10:                               //  %if.then55
	add x10, sp, 4
	add x12, x0, 12
	mv x11, x18
	jal div
	lw x10, 4 ( sp )
	lw x11, 20 ( fp )
	lw x18, 8 ( sp )
	add x9, x10, x11
	sw x18, 16 ( fp )
	sw x9, 20 ( fp )
	bge x18, x0, .LBB1_15
.LBB1_11:                               //  %if.then63
	add x9, x9, -1
	add x18, x18, 12
	sw x9, 20 ( fp )
	sw x18, 16 ( fp )
	add x23, x0, 28
	and x10, x9, 3
	bltu x0, x10, .LBB1_19
.LBB1_16:                               //  %land.rhs
	add x11, x0, 100
	mv x10, x9
	jal __modsi3
	beq x0, x10, .LBB1_18
.LBB1_17:                               //  %land.end.thread
	add x23, x0, 29
	lw x21, 12 ( fp )
	blt x0, x21, .LBB1_20
.LBB1_32:                               //  %while.body.preheader
	lui x10, %hi( DAYS_IN_MONTH )
	add x24, x0, 28
	add x19, x0, 100
	add x20, x0, 400
	add x25, x0, 29
	add x26, x10, %lo( DAYS_IN_MONTH )
	seqz x27, x0
	bltu x0, x18, .LBB1_39
.LBB1_33:                               //  %if.then91
	add x18, x9, -1
	and x10, x18, 3
	sw x18, 20 ( fp )
	beq x0, x10, .LBB1_40
.LBB1_34:
	mv x9, x18
	mv x23, x24
.LBB1_35:                               //  %cond.false
	mv x10, x22
.LBB1_36:                               //  %cond.false
	sll x11, x10, 2&31
	add x11, x11, x26
	lw x11, 0 ( x11 )
	mv x18, x10
.LBB1_37:                               //  %cond.end
	add x21, x21, x11
	blt x0, x21, .LBB1_43
.LBB1_38:                               //  %while.body
	beq x0, x18, .LBB1_33
.LBB1_39:                               //  %if.end112
	add x10, x18, -1
	xor x12, x10, 1
	mv x18, x27
	mv x11, x23
	bltu x0, x12, .LBB1_36
	jal x0, .LBB1_37
.LBB1_40:                               //  %land.rhs98
	mv x10, x18
	mv x11, x19
	jal __modsi3
	beq x0, x10, .LBB1_42
.LBB1_41:                               //  %land.end108.thread
	mv x9, x18
	mv x23, x25
	jal x0, .LBB1_35
.LBB1_42:                               //  %land.end108
	add x10, x9, 1899
	mv x11, x20
	jal __modsi3
	bltu x0, x10, .LBB1_34
	jal x0, .LBB1_41
.LBB1_43:                               //  %while.cond.if.end165.loopexit_crit_edge
	sw x21, 12 ( fp )
	sw x18, 16 ( fp )
	jal x0, .LBB1_44
.LBB1_13:                               //  %if.then44
	add x11, x11, -1
	add x10, x10, 24
	sw x11, 12 ( fp )
	sw x10, 8 ( fp )
	lw x18, 16 ( fp )
	add x22, x0, 11
	bltu x22, x18, .LBB1_10
.LBB1_14:                               //  %if.end50.if.end69_crit_edge
	lw x9, 20 ( fp )
.LBB1_15:                               //  %if.end69
	add x23, x0, 28
	and x10, x9, 3
	beq x0, x10, .LBB1_16
.LBB1_19:                               //  %land.end.thread255
	lw x21, 12 ( fp )
	bge x0, x21, .LBB1_32
.LBB1_20:
	lui x10, %hi( DAYS_IN_MONTH )
	add x22, x0, 2
	add x24, x10, %lo( DAYS_IN_MONTH )
	add x25, x0, 28
	mv x26, x0
	add x19, x0, 100
	add x13, x0, 400
	add x27, x0, 29
	mv x20, x9
	xor x11, x18, 1
	sll x10, x18, 2&31
	mv x12, x23
	beq x0, x11, .LBB1_24
	jal x0, .LBB1_23
.LBB1_21:                               //  %cond.end137.thread
                                        //    in Loop: Header=BB1_24 Depth=1
	sub x21, x21, x23
	mv x18, x22
	sw x22, 16 ( fp )
	sw x21, 12 ( fp )
.LBB1_22:                               //  %while.cond119
                                        //    in Loop: Header=BB1_24 Depth=1
	xor x11, x18, 1
	sll x10, x18, 2&31
	mv x12, x23
	beq x0, x11, .LBB1_24
.LBB1_23:                               //  %cond.false124
	add x12, x10, x24
	lw x12, 0 ( x12 )
.LBB1_24:                               //  %cond.end127
                                        //  =>This Inner Loop Header: Depth=1
	bge x12, x21, .LBB1_44
.LBB1_25:                               //  %while.body130
                                        //    in Loop: Header=BB1_24 Depth=1
	beq x0, x11, .LBB1_21
.LBB1_26:                               //  %cond.end137
                                        //    in Loop: Header=BB1_24 Depth=1
	add x10, x10, x24
	lw x10, 0 ( x10 )
	add x18, x18, 1
	sw x18, 16 ( fp )
	sub x21, x21, x10
	xor x10, x18, 12
	sw x21, 12 ( fp )
	bltu x0, x10, .LBB1_22
.LBB1_27:                               //  %if.then142
                                        //    in Loop: Header=BB1_24 Depth=1
	add x9, x20, 1
	and x10, x9, 3
	mv x18, x26
	mv x23, x25
	sw x9, 20 ( fp )
	sw x0, 16 ( fp )
	bltu x0, x10, .LBB1_31
.LBB1_28:                               //  %land.rhs149
                                        //    in Loop: Header=BB1_24 Depth=1
	mv x10, x9
	mv x11, x19
	mv x18, x13
	jal __modsi3
	mv x13, x18
	bltu x0, x10, .LBB1_30
.LBB1_29:                               //  %land.end159
                                        //    in Loop: Header=BB1_24 Depth=1
	add x10, x20, 1901
	mv x11, x13
	jal __modsi3
	mv x13, x18
	mv x18, x26
	mv x23, x25
	bltu x0, x10, .LBB1_31
.LBB1_30:                               //  %land.end159.thread
                                        //    in Loop: Header=BB1_24 Depth=1
	mv x18, x26
	mv x23, x27
.LBB1_31:                               //  %while.cond119.outer
                                        //    in Loop: Header=BB1_24 Depth=1
	mv x20, x9
	xor x11, x18, 1
	sll x10, x18, 2&31
	mv x12, x23
	bltu x0, x11, .LBB1_23
	jal x0, .LBB1_24
.LBB1_44:                               //  %if.end165
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
.LBB1_18:                               //  %land.end
	add x10, x9, 1900
	add x11, x0, 400
	jal __modsi3
	bltu x0, x10, .LBB1_19
	jal x0, .LBB1_17
.Lfunc_end1:
	.size	validate_structure, .Lfunc_end1-validate_structure
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	_DAYS_BEFORE_MONTH,@object //  @_DAYS_BEFORE_MONTH
	.section	.rodata,"a",@progbits
	.p2align	2
_DAYS_BEFORE_MONTH:
	.long	0                       //  0x0
	.long	31                      //  0x1f
	.long	59                      //  0x3b
	.long	90                      //  0x5a
	.long	120                     //  0x78
	.long	151                     //  0x97
	.long	181                     //  0xb5
	.long	212                     //  0xd4
	.long	243                     //  0xf3
	.long	273                     //  0x111
	.long	304                     //  0x130
	.long	334                     //  0x14e
	.size	_DAYS_BEFORE_MONTH, 48

	.address_space	0
	.address_space	0
	.type	DAYS_IN_MONTH,@object   //  @DAYS_IN_MONTH
	.p2align	2
DAYS_IN_MONTH:
	.long	31                      //  0x1f
	.long	28                      //  0x1c
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.size	DAYS_IN_MONTH, 48


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
