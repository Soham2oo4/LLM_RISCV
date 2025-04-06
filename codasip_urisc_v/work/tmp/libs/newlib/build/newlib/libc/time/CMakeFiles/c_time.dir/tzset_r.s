	.text
	.file	"tzset_r.c"
	.globl	_tzset_unlocked_r       //  -- Begin function _tzset_unlocked_r
	.type	_tzset_unlocked_r,@function
_tzset_unlocked_r:                      //  @_tzset_unlocked_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -112
	.cfi_adjust_cfa_offset 112
	sw x18, 100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw ra, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 104 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 96 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 92 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 88 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 84 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 80 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 76 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 72 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv x18, x10
	jal __gettzinfo
	mv fp, x10
	lui x10, %hi( .str )
	add x11, x10, %lo( .str )
	mv x10, x18
	jal _getenv_r
	mv x9, x10
	lui x10, %hi( prev_tzenv )
	beq x0, x9, .LBB0_4
.LBB0_1:                                //  %if.end
	add x19, x10, %lo( prev_tzenv )
	lw x11, 0 ( x19 )
	beq x0, x11, .LBB0_5
.LBB0_2:                                //  %land.lhs.true
	mv x10, x9
	jal strcmp
	beq x0, x10, .LBB0_64
.LBB0_3:                                //  %land.lhs.true.if.end6_crit_edge
	lw x10, 0 ( x19 )
	jal x0, .LBB0_6
.LBB0_4:                                //  %if.then
	lui x11, %hi( _tzname )
	lui x12, %hi( .str.1 )
	add fp, x10, %lo( prev_tzenv )
	add x11, x11, %lo( _tzname )
	add x12, x12, %lo( .str.1 )
	lw x10, 0 ( fp )
	sw x12, 4 ( x11 )
	sw x12, 0 ( x11 )
	lui x11, %hi( _daylight )
	add x11, x11, %lo( _daylight )
	sw x0, 0 ( x11 )
	lui x11, %hi( _timezone )
	add x11, x11, %lo( _timezone )
	sw x0, 0 ( x11 )
	jal free
	sw x0, 0 ( fp )
	jal x0, .LBB0_64
.LBB0_5:
	mv x10, x0
.LBB0_6:                                //  %if.end6
	jal free
	mv x10, x9
	jal strlen
	add x11, x10, 1
	mv x10, x18
	jal _malloc_r
	sw x10, 0 ( x19 )
	beq x0, x10, .LBB0_8
.LBB0_7:                                //  %if.then10
	mv x11, x9
	jal strcpy
.LBB0_8:                                //  %if.end12
	lbu x10, 0 ( x9 )
	add x11, x0, 58
	bne x10, x11, .LBB0_10
.LBB0_9:
	add x9, x9, 1
.LBB0_10:                               //  %if.end12
	lui x10, %hi( __tzname_std )
	add x26, x10, %lo( __tzname_std )
	lui x10, %hi( .str.2 )
	add x19, sp, 44
	add x23, x10, %lo( .str.2 )
	sw x26, 8 ( sp )
	sw x19, 12 ( sp )
	sw x23, 4 ( sp )
	sw x9, 0 ( sp )
	jal siscanf
	bge x0, x10, .LBB0_64
.LBB0_11:                               //  %if.end21
	lw x10, 44 ( sp )
	seqz x18, x0
	add x25, x10, x9
	lbu x10, 0 ( x25 )
	xor x11, x10, 43
	beq x0, x11, .LBB0_14
.LBB0_12:                               //  %if.end21
	xor x10, x10, 45
	bltu x0, x10, .LBB0_15
.LBB0_13:                               //  %if.then25
	add x18, x0, -1
.LBB0_14:                               //  %if.then30
	add x25, x25, 1
.LBB0_15:                               //  %if.end33
	lui x10, %hi( .str.3 )
	add x20, sp, 54
	add x21, sp, 56
	add x22, sp, 58
	add x24, x10, %lo( .str.3 )
	sh x0, 54 ( sp )
	sh x0, 56 ( sp )
	sw x20, 24 ( sp )
	sw x21, 16 ( sp )
	sw x19, 28 ( sp )
	sw x19, 20 ( sp )
	sw x19, 12 ( sp )
	sw x22, 8 ( sp )
	sw x24, 4 ( sp )
	sw x25, 0 ( sp )
	jal siscanf
	bge x0, x10, .LBB0_64
.LBB0_16:                               //  %if.end38
	lui x10, %hi( _tzname )
	add x27, x10, %lo( _tzname )
	lhu x10, 56 ( sp )
	add x11, x0, 60
	sw x26, 0 ( x27 )
	jal __mulsi3
	lhu x11, 54 ( sp )
	add x26, x11, x10
	lhu x10, 58 ( sp )
	lui x11, %hi( 3600 )
	add x9, x11, %lo( 3600 )
	mv x11, x9
	jal __mulsi3
	add x10, x10, x26
	mv x11, x18
	jal __mulsi3
	sw x10, 36 ( fp )
	lw x10, 44 ( sp )
	lui x11, %hi( __tzname_dst )
	add x18, x11, %lo( __tzname_dst )
	sw x23, 4 ( sp )
	add x23, x10, x25
	sw x18, 8 ( sp )
	sw x19, 12 ( sp )
	sw x23, 0 ( sp )
	jal siscanf
	bge x0, x10, .LBB0_23
.LBB0_17:                               //  %if.else54
	lw x10, 44 ( sp )
	sw x18, 4 ( x27 )
	seqz x18, x0
	add x23, x10, x23
	lbu x10, 0 ( x23 )
	xor x11, x10, 43
	beq x0, x11, .LBB0_20
.LBB0_18:                               //  %if.else54
	xor x10, x10, 45
	bltu x0, x10, .LBB0_21
.LBB0_19:                               //  %if.then60
	add x18, x0, -1
.LBB0_20:                               //  %if.then66
	add x23, x23, 1
.LBB0_21:                               //  %if.end69
	sh x0, 56 ( sp )
	sh x0, 58 ( sp )
	sh x0, 54 ( sp )
	sw x0, 44 ( sp )
	sw x20, 24 ( sp )
	sw x21, 16 ( sp )
	sw x19, 28 ( sp )
	sw x19, 20 ( sp )
	sw x19, 12 ( sp )
	sw x22, 8 ( sp )
	sw x24, 4 ( sp )
	sw x23, 0 ( sp )
	jal siscanf
	bge x0, x10, .LBB0_24
.LBB0_22:                               //  %if.else80
	lhu x10, 56 ( sp )
	add x11, x0, 60
	jal __mulsi3
	lhu x11, 54 ( sp )
	add x24, x11, x10
	lhu x10, 58 ( sp )
	mv x11, x9
	jal __mulsi3
	add x10, x10, x24
	mv x11, x18
	jal __mulsi3
	jal x0, .LBB0_25
.LBB0_23:                               //  %if.then50
	lw x10, 0 ( x27 )
	lui x11, %hi( _timezone )
	add x11, x11, %lo( _timezone )
	sw x10, 4 ( x27 )
	lw x10, 36 ( fp )
	sw x10, 0 ( x11 )
	lui x10, %hi( _daylight )
	add x10, x10, %lo( _daylight )
	sw x0, 0 ( x10 )
	jal x0, .LBB0_64
.LBB0_24:                               //  %if.then73
	lw x10, 36 ( fp )
	lui x11, %hi( -3600 )
	add x11, x11, %lo( -3600 )
	add x10, x11, x10
.LBB0_25:                               //  %if.end92
	sw x10, 68 ( fp )
	lw x10, 44 ( sp )
	add x24, x0, 44
	add x18, x10, x23
	lbu x10, 0 ( x18 )
	bne x10, x24, .LBB0_27
.LBB0_26:
	add x18, x18, 1
.LBB0_27:                               //  %if.end92
	lbu x23, 0 ( x18 )
	xor x10, x23, 77
	bltu x0, x10, .LBB0_33
.LBB0_28:                               //  %if.then105
	add x10, sp, 48
	sw x10, 24 ( sp )
	add x10, sp, 50
	sw x10, 16 ( sp )
	add x10, sp, 52
	sw x10, 8 ( sp )
	lui x10, %hi( .str.4 )
	add x10, x10, %lo( .str.4 )
	sw x19, 28 ( sp )
	sw x19, 20 ( sp )
	sw x19, 12 ( sp )
	sw x10, 4 ( sp )
	sw x18, 0 ( sp )
	jal siscanf
	xor x10, x10, 3
	bltu x0, x10, .LBB0_64
.LBB0_29:                               //  %lor.lhs.false
	lhu x10, 52 ( sp )
	lui x12, %hi( 65535 )
	add x12, x12, %lo( 65535 )
	add x13, x0, 11
	add x11, x10, -1
	and x11, x12, x11
	bltu x13, x11, .LBB0_64
.LBB0_30:                               //  %lor.lhs.false116
	lhu x11, 50 ( sp )
	add x13, x11, -1
	and x12, x12, x13
	add x13, x0, 4
	bltu x13, x12, .LBB0_64
.LBB0_31:                               //  %lor.lhs.false116
	lhu x12, 48 ( sp )
	add x13, x0, 6
	bltu x13, x12, .LBB0_64
.LBB0_32:                               //  %if.end129
	sw x10, 12 ( fp )
	add x10, x0, 77
	sb x10, 8 ( fp )
	lw x10, 44 ( sp )
	sw x12, 20 ( fp )
	sw x11, 16 ( fp )
	add x26, x10, x18
	jal x0, .LBB0_41
.LBB0_33:                               //  %if.else146
	add x25, x0, 74
	bne x23, x25, .LBB0_35
.LBB0_34:
	add x18, x18, 1
.LBB0_35:                               //  %if.else146
	add x11, sp, 40
	add x12, x0, 10
	mv x10, x18
	jal strtoul
	lw x26, 40 ( sp )
	sh x10, 48 ( sp )
	beq x26, x18, .LBB0_39
.LBB0_36:                               //  %if.else188
	beq x23, x25, .LBB0_38
.LBB0_37:                               //  %if.else188
	add x25, x0, 68
.LBB0_38:                               //  %if.else188
	lui x11, %hi( 65535 )
	add x11, x11, %lo( 65535 )
	and x10, x11, x10
	sb x25, 8 ( fp )
	jal x0, .LBB0_40
.LBB0_39:                               //  %if.then161
	add x10, x0, 2
	sw x10, 16 ( fp )
	add x10, x0, 3
	sw x10, 12 ( fp )
	add x10, x0, 77
	sb x10, 8 ( fp )
	mv x10, x0
.LBB0_40:                               //  %if.end197
	sw x10, 20 ( fp )
.LBB0_41:                               //  %if.end198
	add x25, x0, 2
	sh x25, 58 ( sp )
	sh x0, 56 ( sp )
	sh x0, 54 ( sp )
	sw x0, 44 ( sp )
	lbu x10, 0 ( x26 )
	lui x23, %hi( 7200 )
	xor x10, x10, 47
	bltu x0, x10, .LBB0_43
.LBB0_42:                               //  %if.then202
	lui x10, %hi( .str.5 )
	add x10, x10, %lo( .str.5 )
	sw x20, 24 ( sp )
	sw x21, 16 ( sp )
	sw x19, 28 ( sp )
	sw x19, 20 ( sp )
	sw x19, 12 ( sp )
	sw x22, 8 ( sp )
	sw x10, 4 ( sp )
	sw x26, 0 ( sp )
	jal siscanf
	lhu x10, 56 ( sp )
	add x11, x0, 60
	jal __mulsi3
	mv x18, x10
	lhu x10, 58 ( sp )
	mv x11, x9
	jal __mulsi3
	lhu x12, 54 ( sp )
	lw x11, 44 ( sp )
	jal x0, .LBB0_44
.LBB0_43:
	mv x18, x0
	add x10, x23, %lo( 7200 )
	mv x11, x18
	mv x12, x18
.LBB0_44:                               //  %if.end204
	add x12, x12, x18
	add x10, x10, x12
	sw x10, 24 ( fp )
	add x18, x11, x26
	lbu x10, 0 ( x18 )
	bne x10, x24, .LBB0_46
.LBB0_45:
	add x18, x18, 1
.LBB0_46:                               //  %if.end204
	lbu x24, 0 ( x18 )
	xor x10, x24, 77
	bltu x0, x10, .LBB0_52
.LBB0_47:                               //  %if.then105.1
	add x10, sp, 48
	sw x10, 24 ( sp )
	add x10, sp, 50
	sw x10, 16 ( sp )
	add x10, sp, 52
	sw x10, 8 ( sp )
	lui x10, %hi( .str.4 )
	add x10, x10, %lo( .str.4 )
	sw x19, 28 ( sp )
	sw x19, 20 ( sp )
	sw x19, 12 ( sp )
	sw x10, 4 ( sp )
	sw x18, 0 ( sp )
	jal siscanf
	xor x10, x10, 3
	bltu x0, x10, .LBB0_64
.LBB0_48:                               //  %lor.lhs.false.1
	lhu x10, 52 ( sp )
	lui x12, %hi( 65535 )
	add x12, x12, %lo( 65535 )
	add x13, x0, 11
	add x11, x10, -1
	and x11, x12, x11
	bltu x13, x11, .LBB0_64
.LBB0_49:                               //  %lor.lhs.false116.1
	lhu x11, 50 ( sp )
	add x13, x11, -1
	and x12, x12, x13
	add x13, x0, 4
	bltu x13, x12, .LBB0_64
.LBB0_50:                               //  %lor.lhs.false116.1
	lhu x12, 48 ( sp )
	add x13, x0, 6
	bltu x13, x12, .LBB0_64
.LBB0_51:                               //  %if.end129.1
	sw x10, 44 ( fp )
	add x10, x0, 77
	sb x10, 40 ( fp )
	lw x10, 44 ( sp )
	sw x11, 48 ( fp )
	sw x12, 52 ( fp )
	add x11, x10, x18
	jal x0, .LBB0_60
.LBB0_52:                               //  %if.else146.1
	add x26, x0, 74
	bne x24, x26, .LBB0_54
.LBB0_53:
	add x18, x18, 1
.LBB0_54:                               //  %if.else146.1
	add x11, sp, 40
	add x12, x0, 10
	mv x10, x18
	jal strtoul
	lw x11, 40 ( sp )
	sh x10, 48 ( sp )
	beq x11, x18, .LBB0_58
.LBB0_55:                               //  %if.else188.1
	beq x24, x26, .LBB0_57
.LBB0_56:                               //  %if.else188.1
	add x26, x0, 68
.LBB0_57:                               //  %if.else188.1
	lui x12, %hi( 65535 )
	add x12, x12, %lo( 65535 )
	and x10, x12, x10
	sb x26, 40 ( fp )
	jal x0, .LBB0_59
.LBB0_58:                               //  %if.else174.1
	seqz x10, x0
	sw x10, 48 ( fp )
	add x10, x0, 11
	sw x10, 44 ( fp )
	add x10, x0, 77
	sb x10, 40 ( fp )
	mv x10, x0
.LBB0_59:                               //  %if.end198.1
	sw x10, 52 ( fp )
.LBB0_60:                               //  %if.end198.1
	sh x25, 58 ( sp )
	sh x0, 56 ( sp )
	sh x0, 54 ( sp )
	sw x0, 44 ( sp )
	lbu x10, 0 ( x11 )
	xor x10, x10, 47
	bltu x0, x10, .LBB0_62
.LBB0_61:                               //  %if.then202.1
	lui x10, %hi( .str.5 )
	add x10, x10, %lo( .str.5 )
	sw x20, 24 ( sp )
	sw x21, 16 ( sp )
	sw x19, 28 ( sp )
	sw x19, 20 ( sp )
	sw x19, 12 ( sp )
	sw x22, 8 ( sp )
	sw x10, 4 ( sp )
	sw x11, 0 ( sp )
	jal siscanf
	lhu x10, 56 ( sp )
	add x11, x0, 60
	jal __mulsi3
	mv x18, x10
	lhu x10, 58 ( sp )
	mv x11, x9
	jal __mulsi3
	lhu x11, 54 ( sp )
	jal x0, .LBB0_63
.LBB0_62:
	mv x18, x0
	add x10, x23, %lo( 7200 )
	mv x11, x18
.LBB0_63:                               //  %if.end204.1
	add x11, x11, x18
	add x10, x10, x11
	sw x10, 56 ( fp )
	lw x10, 4 ( fp )
	jal __tzcalc_limits
	lw x10, 36 ( fp )
	lui x11, %hi( _timezone )
	add x11, x11, %lo( _timezone )
	sw x10, 0 ( x11 )
	lw x11, 68 ( fp )
	xor x10, x11, x10
	lui x11, %hi( _daylight )
	snez x10, x10
	add x11, x11, %lo( _daylight )
	sw x10, 0 ( x11 )
.LBB0_64:                               //  %cleanup
	lw fp, 60 ( sp )                //  4-byte Folded Reload
	lw x27, 64 ( sp )               //  4-byte Folded Reload
	lw x26, 68 ( sp )               //  4-byte Folded Reload
	lw x25, 72 ( sp )               //  4-byte Folded Reload
	lw x24, 76 ( sp )               //  4-byte Folded Reload
	lw x23, 80 ( sp )               //  4-byte Folded Reload
	lw x22, 84 ( sp )               //  4-byte Folded Reload
	lw x21, 88 ( sp )               //  4-byte Folded Reload
	lw x20, 92 ( sp )               //  4-byte Folded Reload
	lw x19, 96 ( sp )               //  4-byte Folded Reload
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	lw ra, 108 ( sp )               //  4-byte Folded Reload
	add sp, sp, 112
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_tzset_unlocked_r, .Lfunc_end0-_tzset_unlocked_r
	.cfi_endproc
                                        //  -- End function
	.globl	_tzset_r                //  -- Begin function _tzset_r
	.type	_tzset_r,@function
_tzset_r:                               //  @_tzset_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv fp, x10
	jal __tz_lock
	mv x10, fp
	jal _tzset_unlocked_r
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	j __tz_unlock
.Lfunc_end1:
	.size	_tzset_r, .Lfunc_end1-_tzset_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"TZ"
	.size	.str, 3

	.address_space	0
	.address_space	0
	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"GMT"
	.size	.str.1, 4

	.address_space	0
	.address_space	0
	.type	prev_tzenv,@object      //  @prev_tzenv
	.local	prev_tzenv
	.comm	prev_tzenv,4,4
	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"%10[^0-9,+-]%n"
	.size	.str.2, 15

	.address_space	0
	.type	__tzname_std,@object    //  @__tzname_std
	.local	__tzname_std
	.comm	__tzname_std,11,1
	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"%hu%n:%hu%n:%hu%n"
	.size	.str.3, 18

	.address_space	0
	.type	__tzname_dst,@object    //  @__tzname_dst
	.local	__tzname_dst
	.comm	__tzname_dst,11,1
	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	"M%hu%n.%hu%n.%hu%n"
	.size	.str.4, 19

	.address_space	0
	.type	.str.5,@object          //  @.str.5
.str.5:
	.asciz	"/%hu%n:%hu%n:%hu%n"
	.size	.str.5, 19


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
