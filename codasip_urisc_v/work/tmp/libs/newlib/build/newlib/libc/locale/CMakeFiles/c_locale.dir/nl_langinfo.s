	.text
	.file	"nl_langinfo.c"
	.globl	nl_langinfo_l           //  -- Begin function nl_langinfo_l
	.type	nl_langinfo_l,@function
nl_langinfo_l:                          //  @nl_langinfo_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x11
	add x11, x0, 84
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	bltu x11, x10, .LBB0_38
.LBB0_1:                                //  %entry
	lui x12, %hi( JTI0_0 )
	lui x11, %hi( .str )
	add fp, x11, %lo( .str )
	sll x11, x10, 2&31
	add x12, x12, %lo( JTI0_0 )
	add x12, x12, x11
	lw x12, 0 ( x12 )
	jr x12
.LBB0_10:                               //  %sw.bb21
	lui x10, %hi( _C_time_locale )
	add x10, x10, %lo( _C_time_locale )
	add x10, x10, x11
	lw fp, -36 ( x10 )
	jal x0, .LBB0_41
.LBB0_11:                               //  %sw.bb25
	lui x10, %hi( _C_time_locale )
	add x10, x10, %lo( _C_time_locale )
	add x10, x10, x11
	lw fp, -132 ( x10 )
	jal x0, .LBB0_41
.LBB0_8:                                //  %sw.bb14
	lui x10, %hi( _C_time_locale )
	add x10, x10, %lo( _C_time_locale )
	add x10, x10, x11
	lw fp, 96 ( x10 )
	jal x0, .LBB0_41
.LBB0_9:                                //  %sw.bb17
	lui x10, %hi( _C_time_locale )
	add x10, x10, %lo( _C_time_locale )
	add x10, x10, x11
	lw fp, 40 ( x10 )
.LBB0_41:                               //  %cleanup
	mv x10, fp
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_2:                                //  %sw.bb1
	lui x10, %hi( _C_time_locale )
	add x10, x10, %lo( _C_time_locale )
	lw fp, 160 ( x10 )
	jal x0, .LBB0_41
.LBB0_3:                                //  %sw.bb2
	lui x10, %hi( _C_time_locale )
	add x10, x10, %lo( _C_time_locale )
	lw fp, 156 ( x10 )
	jal x0, .LBB0_41
.LBB0_4:                                //  %sw.bb4
	lui x10, %hi( _C_time_locale )
	add x10, x10, %lo( _C_time_locale )
	lw fp, 152 ( x10 )
	jal x0, .LBB0_41
.LBB0_5:                                //  %sw.bb6
	lui x10, %hi( _C_time_locale )
	add x10, x10, %lo( _C_time_locale )
	lw fp, 228 ( x10 )
	jal x0, .LBB0_41
.LBB0_6:                                //  %sw.bb8
	lui x10, %hi( _C_time_locale )
	add x10, x10, %lo( _C_time_locale )
	lw fp, 164 ( x10 )
	jal x0, .LBB0_41
.LBB0_7:                                //  %sw.bb10
	lui x10, %hi( _C_time_locale )
	add x10, x10, %lo( _C_time_locale )
	lw fp, 168 ( x10 )
	jal x0, .LBB0_41
.LBB0_12:                               //  %sw.bb29
	lui x10, %hi( _C_time_locale )
	add x10, x10, %lo( _C_time_locale )
	lw fp, 232 ( x10 )
	jal x0, .LBB0_41
.LBB0_13:                               //  %sw.bb31
	lui x10, %hi( _C_time_locale )
	add x10, x10, %lo( _C_time_locale )
	lw fp, 236 ( x10 )
	jal x0, .LBB0_41
.LBB0_14:                               //  %sw.bb33
	lui x10, %hi( _C_time_locale )
	add x10, x10, %lo( _C_time_locale )
	lw fp, 240 ( x10 )
	jal x0, .LBB0_41
.LBB0_15:                               //  %sw.bb35
	lui x10, %hi( _C_time_locale )
	add x10, x10, %lo( _C_time_locale )
	lw fp, 244 ( x10 )
	jal x0, .LBB0_41
.LBB0_16:                               //  %sw.bb37
	lui x10, %hi( _C_time_locale )
	add x10, x10, %lo( _C_time_locale )
	lw fp, 248 ( x10 )
	jal x0, .LBB0_41
.LBB0_18:                               //  %sw.bb41
	lui x10, %hi( _C_numeric_locale )
	add x10, x10, %lo( _C_numeric_locale )
	lw fp, 0 ( x10 )
	jal x0, .LBB0_41
.LBB0_19:                               //  %sw.bb43
	lui x10, %hi( _C_numeric_locale )
	add x10, x10, %lo( _C_numeric_locale )
	lw fp, 4 ( x10 )
	jal x0, .LBB0_41
.LBB0_20:                               //  %sw.bb45
	lui x10, %hi( _C_messages_locale )
	add x10, x10, %lo( _C_messages_locale )
	lw fp, 0 ( x10 )
	jal x0, .LBB0_41
.LBB0_21:                               //  %sw.bb47
	lui x10, %hi( _C_messages_locale )
	add x10, x10, %lo( _C_messages_locale )
	lw fp, 4 ( x10 )
	jal x0, .LBB0_41
.LBB0_22:                               //  %sw.bb49
	lui x10, %hi( _C_messages_locale )
	add x10, x10, %lo( _C_messages_locale )
	lw fp, 8 ( x10 )
	jal x0, .LBB0_41
.LBB0_23:                               //  %sw.bb51
	lui x10, %hi( _C_messages_locale )
	add x10, x10, %lo( _C_messages_locale )
	lw fp, 12 ( x10 )
	jal x0, .LBB0_41
.LBB0_24:                               //  %sw.bb53
	lui x10, %hi( .str.1 )
	add fp, x10, %lo( .str.1 )
	lui x10, %hi( _C_monetary_locale )
	add x19, x10, %lo( _C_monetary_locale )
	lw x9, 4 ( x19 )
	lbu x10, 0 ( x9 )
	beq x0, x10, .LBB0_41
.LBB0_25:                               //  %if.then
	mv x10, x18
	jal __localeconv_l
	lbu x20, 42 ( x10 )
	mv x10, x18
	jal __localeconv_l
	lbu x10, 44 ( x10 )
	bne x20, x10, .LBB0_41
.LBB0_26:                               //  %if.then62
	xor x10, x20, 127
	bltu x0, x10, .LBB0_29
.LBB0_27:                               //  %if.then66
	lw x11, 8 ( x19 )
	mv x10, x9
	jal strcmp
	bltu x0, x10, .LBB0_41
.LBB0_28:
	add x19, x0, 46
	jal x0, .LBB0_32
.LBB0_37:                               //  %sw.bb93
	lui x10, %hi( _C_time_locale )
	add x10, x10, %lo( _C_time_locale )
	lw fp, 224 ( x10 )
	jal x0, .LBB0_41
.LBB0_38:                               //  %sw.default
	lui x11, %hi( -100001 )
	add x11, x11, %lo( -100001 )
	add x11, x11, x10
	add x12, x0, 5
	bltu x12, x11, .LBB0_39
.LBB0_40:                               //  %if.then100
	sll x10, x10, 5&31
	lui x11, %hi( -3200000 )
	add x10, x18, x10
	add x11, x11, %lo( -3200000 )
	add fp, x11, x10
	jal x0, .LBB0_41
.LBB0_17:                               //  %sw.bb39
	lui x10, %hi( _C_time_locale )
	add x10, x10, %lo( _C_time_locale )
	lw fp, 172 ( x10 )
	jal x0, .LBB0_41
.LBB0_39:
	lui x10, %hi( .str.1 )
	add fp, x10, %lo( .str.1 )
	jal x0, .LBB0_41
.LBB0_29:                               //  %if.else
	mv x10, x0
	beq x20, x10, .LBB0_30
.LBB0_31:                               //  %if.else
	add x19, x0, 45
	jal x0, .LBB0_32
.LBB0_30:
	add x19, x0, 43
.LBB0_32:                               //  %if.then78
	mv x10, x9
	jal strlen
	lui x11, %hi( nl_langinfo_l.csym )
	add x20, x11, %lo( nl_langinfo_l.csym )
	lw x12, 0 ( x20 )
	add x11, x10, 2
	mv x10, x12
	jal realloc
	mv x18, x10
	bltu x0, x18, .LBB0_35
.LBB0_33:                               //  %if.then78
	lw x10, 0 ( x20 )
	beq x0, x10, .LBB0_35
.LBB0_34:                               //  %if.then83
	jal free
.LBB0_35:                               //  %if.end84
	sw x18, 0 ( x20 )
	beq x0, x18, .LBB0_41
.LBB0_36:                               //  %if.then87
	add x10, x18, 1
	mv x11, x9
	sb x19, 0 ( x18 )
	jal strcpy
	lw fp, 0 ( x20 )
	jal x0, .LBB0_41
.Lfunc_end0:
	.size	nl_langinfo_l, .Lfunc_end0-nl_langinfo_l
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_41
	.long	.LBB0_2
	.long	.LBB0_3
	.long	.LBB0_4
	.long	.LBB0_5
	.long	.LBB0_6
	.long	.LBB0_7
	.long	.LBB0_8
	.long	.LBB0_8
	.long	.LBB0_8
	.long	.LBB0_8
	.long	.LBB0_8
	.long	.LBB0_8
	.long	.LBB0_8
	.long	.LBB0_9
	.long	.LBB0_9
	.long	.LBB0_9
	.long	.LBB0_9
	.long	.LBB0_9
	.long	.LBB0_9
	.long	.LBB0_9
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_10
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_11
	.long	.LBB0_12
	.long	.LBB0_13
	.long	.LBB0_14
	.long	.LBB0_15
	.long	.LBB0_16
	.long	.LBB0_18
	.long	.LBB0_19
	.long	.LBB0_20
	.long	.LBB0_21
	.long	.LBB0_22
	.long	.LBB0_23
	.long	.LBB0_24
	.long	.LBB0_37
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_17
                                        //  -- End function
	.text
	.globl	nl_langinfo             //  -- Begin function nl_langinfo
	.type	nl_langinfo,@function
nl_langinfo:                            //  @nl_langinfo
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11, %hi( __global_locale )
	add x11, x11, %lo( __global_locale )
	j nl_langinfo_l
.Lfunc_end1:
	.size	nl_langinfo, .Lfunc_end1-nl_langinfo
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	nl_langinfo_l.csym,@object //  @nl_langinfo_l.csym
	.local	nl_langinfo_l.csym
	.comm	nl_langinfo_l.csym,4,4
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"US-ASCII"
	.size	.str, 9

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.zero	1
	.size	.str.1, 1

	.address_space	0
	.address_space	0
	.address_space	0
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
