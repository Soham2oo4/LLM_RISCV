	.text
	.file	"fvwrite.c"
	.globl	__sfvwrite_r            //  -- Begin function __sfvwrite_r
	.type	__sfvwrite_r,@function
__sfvwrite_r:                           //  @__sfvwrite_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x12
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lw x10, 8 ( x18 )
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x11
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
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
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %if.end
	lhu x10, 12 ( fp )
	and x11, x10, 8
	beq x0, x11, .LBB0_4
.LBB0_3:                                //  %lor.lhs.false
	lw x11, 16 ( fp )
	bltu x0, x11, .LBB0_6
.LBB0_4:                                //  %land.lhs.true
	mv x10, x9
	mv x11, fp
	jal __swsetup_r
	bltu x0, x10, .LBB0_63
.LBB0_5:                                //  %land.lhs.true.if.end6_crit_edge
	lhu x10, 12 ( fp )
.LBB0_6:                                //  %if.end6
	lw x25, 0 ( x18 )
	sll x10, x10, 16&31
	sra x10, x10, 16&31
	mv x26, x0
	and x11, x10, 2
	bltu x0, x11, .LBB0_7
.LBB0_15:                               //  %if.else
	mv x27, x26
	and x10, x10, 1
	bltu x0, x10, .LBB0_16
.LBB0_20:                               //  %do.body31.preheader
	lui x10, %hi( 65535 )
	add x24, x10, %lo( 65535 )
	lui x10, %hi( 2147483647 )
	add x19, x10, %lo( 2147483647 )
	lui x10, %hi( 64383 )
	add x10, x10, %lo( 64383 )
	mv x20, x26
	sw x10, 8 ( sp )                //  4-byte Folded Spill
	bltu x0, x27, .LBB0_24
	jal x0, .LBB0_22
.LBB0_39:                               //  %if.end105
	mv x11, x20
	mv x12, x21
	jal memmove
	lw x10, 8 ( fp )
	sub x10, x10, x21
	sw x10, 8 ( fp )
	lw x10, 0 ( fp )
	add x10, x21, x10
	sw x10, 0 ( fp )
	mv x21, x27
.LBB0_49:                               //  %if.end169
	lw x10, 8 ( x18 )
	sub x27, x27, x21
	add x20, x21, x20
	sub x10, x10, x21
	sw x10, 8 ( x18 )
	beq x0, x10, .LBB0_68
.LBB0_21:                               //  %do.body31
	beq x0, x27, .LBB0_22
.LBB0_24:                               //  %while.end39
	lh x10, 12 ( fp )
	lw x12, 8 ( fp )
	and x11, x10, 512
	bltu x0, x11, .LBB0_25
.LBB0_40:                               //  %if.else116
	lw x10, 0 ( fp )
	lw x11, 16 ( fp )
	bltu x11, x10, .LBB0_42
.LBB0_41:                               //  %lor.lhs.false122
	lw x11, 20 ( fp )
	bgeu x27, x11, .LBB0_46
.LBB0_42:                               //  %if.then127
	mv x21, x27
	bltu x27, x12, .LBB0_44
.LBB0_43:                               //  %if.then127
	mv x21, x12
.LBB0_44:                               //  %if.then127
	mv x11, x20
	mv x12, x21
	jal memmove
	lw x10, 0 ( fp )
	add x10, x21, x10
	sw x10, 0 ( fp )
	lw x10, 8 ( fp )
	sub x10, x10, x21
	sw x10, 8 ( fp )
	bltu x0, x10, .LBB0_49
.LBB0_45:                               //  %land.lhs.true143
	mv x10, x9
	mv x11, fp
	jal _fflush_r
	beq x0, x10, .LBB0_49
	jal x0, .LBB0_62
.LBB0_22:                               //  %while.body35
                                        //  =>This Inner Loop Header: Depth=1
	lw x27, 4 ( x25 )
	add x25, x25, 8
	beq x0, x27, .LBB0_22
.LBB0_23:                               //  %while.cond32.while.end39_crit_edge
	lw x20, -8 ( x25 )
	lh x10, 12 ( fp )
	lw x12, 8 ( fp )
	and x11, x10, 512
	beq x0, x11, .LBB0_40
.LBB0_25:                               //  %if.then44
	bltu x27, x12, .LBB0_27
.LBB0_26:                               //  %if.then44
	and x11, x10, 1152
	beq x0, x11, .LBB0_27
.LBB0_28:                               //  %if.then52
	lw x11, 20 ( fp )
	add x12, x0, 3
	lw x13, 0 ( fp )
	and x10, x24, x10
	hackaton_custom_instr_c x11, x12, x11
	slt x12, x11, x0
	add x11, x12, x11
	sra x12, x11, 1&31
	lw x11, 16 ( fp )
	sub x21, x13, x11
	add x13, x21, x27
	add x22, x13, 1
	bltu x12, x22, .LBB0_30
.LBB0_29:                               //  %if.then52
	mv x22, x12
.LBB0_30:                               //  %if.then52
	and x10, x10, 1024
	bltu x0, x10, .LBB0_31
.LBB0_33:                               //  %if.else80
	mv x10, x9
	mv x12, x22
	jal _realloc_r
	mv x23, x10
	bltu x0, x23, .LBB0_36
	jal x0, .LBB0_34
.LBB0_27:                               //  %if.then44.if.end105_crit_edge
	lw x10, 0 ( fp )
	mv x21, x27
	bltu x27, x12, .LBB0_39
	jal x0, .LBB0_38
.LBB0_46:                               //  %if.else148
	mv x21, x27
	bltu x27, x19, .LBB0_48
.LBB0_47:                               //  %if.else148
	mv x21, x19
.LBB0_48:                               //  %if.else148
	mv x10, x21
	jal __modsi3
	lw x11, 28 ( fp )
	lw x14, 36 ( fp )
	sub x13, x21, x10
	mv x10, x9
	mv x12, x20
	call.reg x14
	mv x21, x10
	blt x0, x21, .LBB0_49
	jal x0, .LBB0_62
.LBB0_31:                               //  %if.then67
	mv x10, x9
	mv x11, x22
	jal _malloc_r
	mv x23, x10
	beq x0, x23, .LBB0_32
.LBB0_35:                               //  %if.end71
	lw x11, 16 ( fp )
	mv x10, x23
	mv x12, x21
	jal memcpy
	lhu x10, 12 ( fp )
	lw x11, 8 ( sp )                //  4-byte Folded Reload
	and x10, x11, x10
	or x10, x10, 128
	sh x10, 12 ( fp )
.LBB0_36:                               //  %cleanup
	sub x10, x22, x21
	sw x10, 8 ( fp )
	add x10, x21, x23
	mv x12, x27
	sw x22, 20 ( fp )
	sw x23, 16 ( fp )
	sw x10, 0 ( fp )
	mv x21, x27
	bltu x27, x12, .LBB0_39
.LBB0_38:                               //  %if.end105
	mv x21, x12
	jal x0, .LBB0_39
.LBB0_1:
	mv x26, x0
	jal x0, .LBB0_68
.LBB0_7:                                //  %do.body.preheader
	lui x10, %hi( 2147482624 )
	mv x21, x26
	add x19, x10, %lo( 2147482624 )
	mv x20, x26
.LBB0_8:                                //  %do.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_9 Depth 2
	beq x0, x21, .LBB0_9
.LBB0_11:                               //  %while.end
                                        //    in Loop: Header=BB0_8 Depth=1
	mv x13, x21
	bltu x21, x19, .LBB0_13
.LBB0_12:                               //  %while.end
                                        //    in Loop: Header=BB0_8 Depth=1
	mv x13, x19
.LBB0_13:                               //  %while.end
                                        //    in Loop: Header=BB0_8 Depth=1
	lw x11, 28 ( fp )
	lw x14, 36 ( fp )
	mv x10, x9
	mv x12, x20
	call.reg x14
	bge x0, x10, .LBB0_62
.LBB0_14:                               //  %if.end20
                                        //    in Loop: Header=BB0_8 Depth=1
	lw x11, 8 ( x18 )
	sub x21, x21, x10
	add x20, x10, x20
	sub x11, x11, x10
	sw x11, 8 ( x18 )
	bltu x0, x11, .LBB0_8
	jal x0, .LBB0_68
.LBB0_9:                                //  %while.body
                                        //    Parent Loop BB0_8 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x21, 4 ( x25 )
	add x25, x25, 8
	beq x0, x21, .LBB0_9
.LBB0_10:                               //  %while.cond.while.end_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=1
	lw x20, -8 ( x25 )
	mv x13, x21
	bgeu x21, x19, .LBB0_12
	jal x0, .LBB0_13
.LBB0_16:                               //  %do.body179.preheader
	mv x19, x26
	mv x21, x26
	seqz x20, x0
	mv x22, x26
	bltu x0, x21, .LBB0_50
	jal x0, .LBB0_18
.LBB0_67:                               //  %if.end259
	lw x10, 8 ( x18 )
	sub x21, x21, x23
	add x22, x23, x22
	sub x10, x10, x23
	sw x10, 8 ( x18 )
	beq x0, x10, .LBB0_68
.LBB0_17:                               //  %do.body179
	beq x0, x21, .LBB0_18
.LBB0_50:                               //  %while.end187
	beq x0, x19, .LBB0_51
.LBB0_55:                               //  %if.end201
	mv x24, x21
	bltu x21, x27, .LBB0_57
.LBB0_56:                               //  %if.end201
	mv x24, x27
.LBB0_57:                               //  %if.end201
	lw x11, 8 ( fp )
	lw x13, 20 ( fp )
	lw x10, 0 ( fp )
	add x23, x11, x13
	bge x23, x24, .LBB0_60
.LBB0_58:                               //  %if.end201
	lw x11, 16 ( fp )
	bgeu x11, x10, .LBB0_60
.LBB0_59:                               //  %if.then220
	mv x11, x22
	mv x12, x23
	jal memmove
	lw x10, 0 ( fp )
	mv x11, fp
	add x10, x23, x10
	sw x10, 0 ( fp )
	mv x10, x9
	jal _fflush_r
	bltu x0, x10, .LBB0_62
.LBB0_65:                               //  %if.end250
	sub x27, x27, x23
	bltu x0, x27, .LBB0_67
	jal x0, .LBB0_66
.LBB0_18:                               //  %while.body183
                                        //  =>This Inner Loop Header: Depth=1
	lw x21, 4 ( x25 )
	add x25, x25, 8
	beq x0, x21, .LBB0_18
.LBB0_19:                               //  %while.end187.thread
	lw x22, -8 ( x25 )
.LBB0_51:                               //  %if.then189
	mv x10, x22
	add x11, x0, 10
	mv x12, x21
	jal memchr
	beq x10, x26, .LBB0_52
.LBB0_53:                               //  %if.then189
	sub x10, x10, x22
	add x27, x10, 1
	mv x19, x20
	mv x24, x21
	bgeu x21, x27, .LBB0_56
	jal x0, .LBB0_57
.LBB0_60:                               //  %if.else229
	bge x24, x13, .LBB0_61
.LBB0_64:                               //  %if.else242
	mv x11, x22
	mv x12, x24
	jal memmove
	lw x10, 8 ( fp )
	mv x23, x24
	sub x10, x10, x24
	sw x10, 8 ( fp )
	lw x10, 0 ( fp )
	add x10, x24, x10
	sw x10, 0 ( fp )
	sub x27, x27, x23
	bltu x0, x27, .LBB0_67
.LBB0_66:                               //  %if.then254
	mv x10, x9
	mv x11, fp
	jal _fflush_r
	mv x19, x26
	beq x0, x10, .LBB0_67
	jal x0, .LBB0_62
.LBB0_52:
	add x27, x21, 1
	mv x19, x20
	mv x24, x21
	bgeu x21, x27, .LBB0_56
	jal x0, .LBB0_57
.LBB0_61:                               //  %if.then234
	lw x11, 28 ( fp )
	lw x14, 36 ( fp )
	mv x10, x9
	mv x12, x22
	call.reg x14
	mv x23, x10
	blt x0, x23, .LBB0_65
	jal x0, .LBB0_62
.LBB0_34:                               //  %if.then85
	lw x11, 16 ( fp )
	mv x10, x9
	jal _free_r
	add x10, x0, 12
	sw x10, 0 ( x9 )
	lhu x10, 12 ( fp )
	lui x11, %hi( 65407 )
	add x11, x11, %lo( 65407 )
	and x10, x11, x10
	sh x10, 12 ( fp )
	jal x0, .LBB0_62
.LBB0_32:                               //  %if.then70
	add x10, x0, 12
	sw x10, 0 ( x9 )
.LBB0_62:                               //  %err
	lh x10, 12 ( fp )
	or x10, x10, 64
	sh x10, 12 ( fp )
.LBB0_63:                               //  %cleanup274
	add x26, x0, -1
.LBB0_68:                               //  %cleanup274
	mv x10, x26
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
.Lfunc_end0:
	.size	__sfvwrite_r, .Lfunc_end0-__sfvwrite_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
