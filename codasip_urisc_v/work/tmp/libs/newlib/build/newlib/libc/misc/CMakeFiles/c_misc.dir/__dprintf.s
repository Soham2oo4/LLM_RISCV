	.text
	.file	"__dprintf.c"
	.globl	__dprintf               //  -- Begin function __dprintf
	.type	__dprintf,@function
__dprintf:                              //  @__dprintf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -112
	.cfi_adjust_cfa_offset 112
	add x10, sp, 116
	sw x10, 20 ( sp )
	lui x10, %hi( _impure_ptr )
	sw x26, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	add x26, x10, %lo( _impure_ptr )
	lui x10, %hi( JTI0_0 )
	add x10, x10, %lo( JTI0_0 )
	sw x10, 16 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( __unctrl )
	sw x19, 96 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x10, x10, %lo( __unctrl )
	lw x19, 112 ( sp )
	sw x10, 12 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( print_number.chars )
	sw x24, 76 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	add x24, x10, %lo( print_number.chars )
	lui x10, %hi( JTI0_1 )
	sw x23, 80 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x27, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x10, x10, %lo( JTI0_1 )
	add x23, x0, 21
	add fp, x0, 2
	add x27, x0, 15
	sw ra, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 104 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 92 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 88 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 84 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x25, 72 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x10, 4 ( sp )                //  4-byte Folded Spill
	mv x18, x19
	lbu x11, 0 ( x18 )
	xor x10, x11, 37
	beq x0, x10, .LBB0_4
.LBB0_1:                                //  %while.cond
	beq x0, x11, .LBB0_42
.LBB0_2:                                //  %if.then
	lw x10, 0 ( x26 )
	sb x11, 27 ( sp )
	mv x11, fp
	add x12, sp, 27
	seqz x13, x0
	jal _write_r
	add x19, x18, 1
.LBB0_3:                                //  %while.cond
	mv x18, x19
	lbu x11, 0 ( x18 )
	xor x10, x11, 37
	bltu x0, x10, .LBB0_1
.LBB0_4:                                //  %lor.lhs.false
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_38 Depth 2
                                        //      Child Loop BB0_34 Depth 2
                                        //      Child Loop BB0_12 Depth 2
                                        //      Child Loop BB0_22 Depth 2
	lb x12, 1 ( x18 )
	and x10, x12, 255
	xor x13, x10, 78
	beq x0, x13, .LBB0_7
.LBB0_5:                                //  %lor.lhs.false
                                        //    in Loop: Header=BB0_4 Depth=1
	xor x13, x10, 37
	bltu x0, x13, .LBB0_26
.LBB0_6:
	add x18, x18, 1
	jal x0, .LBB0_2
.LBB0_7:                                //  %if.then13
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 20 ( sp )
	add x19, x18, 3
	add x11, x10, 4
	sw x11, 20 ( sp )
	lw x9, 0 ( x10 )
	add x11, x10, 8
	sw x11, 20 ( sp )
	bge x0, x9, .LBB0_3
.LBB0_8:                                //  %while.body20.lr.ph
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x19, 8 ( sp )                //  4-byte Folded Spill
	lb x18, 2 ( x18 )
	lw x19, 4 ( x10 )
	add x20, x0, 16
	add x10, x0, 120
	and x25, x18, 255
	beq x25, x10, .LBB0_16
.LBB0_9:                                //  %while.body20.lr.ph
                                        //    in Loop: Header=BB0_4 Depth=1
	add x20, x0, 10
.LBB0_16:                               //  %while.body20
                                        //    in Loop: Header=BB0_4 Depth=1
	add x9, x9, -1
	add x10, x18, -99
	bltu x23, x10, .LBB0_24
.LBB0_17:                               //  %while.body20
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 16 ( sp )               //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB0_18:                               //  %sw.bb25
                                        //    in Loop: Header=BB0_4 Depth=1
	lb x10, 3 ( x19 )
	lbu x11, 2 ( x19 )
	sll x10, x10, 24&31
	sll x11, x11, 16&31
	or x10, x10, x11
	lbu x11, 1 ( x19 )
	sll x11, x11, 8&31
	or x10, x11, x10
	lbu x11, 0 ( x19 )
	or x21, x11, x10
	xor x10, x25, 100
	bltu x0, x10, .LBB0_21
.LBB0_19:                               //  %sw.bb25
                                        //    in Loop: Header=BB0_4 Depth=1
	bge x21, x0, .LBB0_21
.LBB0_20:                               //  %if.then.i
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 45
	sb x10, 59 ( sp )
	lw x10, 0 ( x26 )
	mv x11, fp
	add x12, sp, 59
	seqz x13, x0
	jal _write_r
	sub x21, x0, x21
.LBB0_21:                               //  %if.end.i
                                        //    in Loop: Header=BB0_4 Depth=1
	add x22, sp, 58
	sb x0, 58 ( sp )
.LBB0_22:                               //  %do.body.i122
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x23, x21
	mv x10, x23
	mv x11, x20
	jal __udivsi3
	mv x21, x10
	hackaton_custom_instr_c x10, x20, x21
	sub x10, x23, x10
	add x10, x10, x24
	lb x10, 0 ( x10 )
	sb x10, -1 ( x22 )
	add x22, x22, -1
	bgeu x23, x20, .LBB0_22
.LBB0_23:                               //  %print_number.exit125
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x21, 0 ( x26 )
	mv x10, x22
	jal strlen
	mv x13, x10
	mv x10, x21
	mv x11, fp
	mv x12, x22
	jal _write_r
	add x19, x19, 4
	add x23, x0, 21
.LBB0_24:                               //  %sw.epilog
                                        //    in Loop: Header=BB0_4 Depth=1
	bge x0, x9, .LBB0_25
.LBB0_15:                               //  %if.end42
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 32
	sb x10, 27 ( sp )
	lw x10, 0 ( x26 )
	mv x11, fp
	add x12, sp, 27
	seqz x13, x0
	jal _write_r
	add x9, x9, -1
	add x10, x18, -99
	bgeu x23, x10, .LBB0_17
	jal x0, .LBB0_24
.LBB0_10:                               //  %sw.bb
                                        //    in Loop: Header=BB0_4 Depth=1
	lbu x10, 0 ( x19 )
	lw x11, 12 ( sp )               //  4-byte Folded Reload
	lw x22, 0 ( x26 )
	sll x10, x10, 2&31
	add x10, x10, x11
	lw x21, 0 ( x10 )
	mv x10, x21
	jal strlen
	mv x13, x10
	mv x10, x22
	mv x11, fp
	mv x12, x21
	jal _write_r
	add x19, x19, 1
	blt x0, x9, .LBB0_15
	jal x0, .LBB0_25
.LBB0_11:                               //  %sw.bb24
                                        //    in Loop: Header=BB0_4 Depth=1
	lb x10, 3 ( x19 )
	lbu x11, 2 ( x19 )
	add x21, sp, 58
	sll x10, x10, 24&31
	sll x11, x11, 16&31
	or x10, x10, x11
	lbu x11, 1 ( x19 )
	sll x11, x11, 8&31
	or x10, x11, x10
	lbu x11, 0 ( x19 )
	sb x0, 58 ( sp )
	or x10, x11, x10
.LBB0_12:                               //  %do.body.i
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x11, x10
	and x10, x11, 15
	add x10, x10, x24
	lb x10, 0 ( x10 )
	sb x10, -1 ( x21 )
	srl x10, x11, 4&31
	add x21, x21, -1
	bltu x27, x11, .LBB0_12
.LBB0_13:                               //  %print_number.exit
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x22, 0 ( x26 )
	mv x10, x21
	jal strlen
	mv x13, x10
	mv x10, x22
	mv x11, fp
	mv x12, x21
	jal _write_r
	add x19, x19, 4
	blt x0, x9, .LBB0_15
	jal x0, .LBB0_25
.LBB0_14:                               //  %sw.bb37
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x22, 0 ( x19 )
	lw x21, 0 ( x26 )
	mv x10, x22
	jal strlen
	mv x13, x10
	mv x10, x21
	mv x11, fp
	mv x12, x22
	jal _write_r
	add x19, x19, 4
	blt x0, x9, .LBB0_15
.LBB0_25:                               //    in Loop: Header=BB0_4 Depth=1
	lw x19, 8 ( sp )                //  4-byte Folded Reload
	mv x18, x19
	lbu x11, 0 ( x18 )
	xor x10, x11, 37
	bltu x0, x10, .LBB0_1
	jal x0, .LBB0_4
.LBB0_26:                               //  %if.else
                                        //    in Loop: Header=BB0_4 Depth=1
	add x19, x18, 2
	add x11, x12, -99
	bltu x23, x11, .LBB0_3
.LBB0_27:                               //  %if.else
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x12, 4 ( sp )                //  4-byte Folded Reload
	sll x11, x11, 2&31
	add x11, x12, x11
	lw x11, 0 ( x11 )
	jr x11
.LBB0_28:                               //  %sw.bb53
                                        //    in Loop: Header=BB0_4 Depth=1
	add x20, x0, 16
	add x11, x0, 120
	beq x10, x11, .LBB0_30
.LBB0_29:                               //  %sw.bb53
                                        //    in Loop: Header=BB0_4 Depth=1
	add x20, x0, 10
.LBB0_30:                               //  %sw.bb53
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11, 20 ( sp )
	xor x10, x10, 100
	add x12, x11, 4
	sw x12, 20 ( sp )
	lw x21, 0 ( x11 )
	bltu x0, x10, .LBB0_33
.LBB0_31:                               //  %sw.bb53
                                        //    in Loop: Header=BB0_4 Depth=1
	bge x21, x0, .LBB0_33
.LBB0_32:                               //  %if.then.i156
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, 45
	sb x10, 59 ( sp )
	lw x10, 0 ( x26 )
	mv x11, fp
	add x12, sp, 59
	seqz x13, x0
	jal _write_r
	sub x21, x0, x21
.LBB0_33:                               //  %if.end.i159
                                        //    in Loop: Header=BB0_4 Depth=1
	add x22, sp, 58
	sb x0, 58 ( sp )
.LBB0_34:                               //  %do.body.i167
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x23, x21
	mv x10, x23
	mv x11, x20
	jal __udivsi3
	mv x21, x10
	hackaton_custom_instr_c x10, x20, x21
	sub x10, x23, x10
	add x10, x10, x24
	lb x10, 0 ( x10 )
	sb x10, -1 ( x22 )
	add x22, x22, -1
	bgeu x23, x20, .LBB0_34
.LBB0_35:                               //  %print_number.exit170
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x20, 0 ( x26 )
	mv x10, x22
	jal strlen
	mv x13, x10
	mv x10, x20
	mv x11, fp
	mv x12, x22
	jal _write_r
	add x23, x0, 21
	mv x18, x19
	lbu x11, 0 ( x18 )
	xor x10, x11, 37
	bltu x0, x10, .LBB0_1
	jal x0, .LBB0_4
.LBB0_36:                               //  %sw.bb45
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 20 ( sp )
	add x11, x10, 4
	sw x11, 20 ( sp )
	lbu x10, 0 ( x10 )
	lw x11, 12 ( sp )               //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x10, x10, x11
	lw x20, 0 ( x10 )
	jal x0, .LBB0_39
.LBB0_37:                               //  %sw.bb51
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 20 ( sp )
	add x20, sp, 58
	add x11, x10, 4
	sw x11, 20 ( sp )
	lw x10, 0 ( x10 )
	sb x0, 58 ( sp )
.LBB0_38:                               //  %do.body.i145
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x11, x10
	and x10, x11, 15
	add x10, x10, x24
	lb x10, 0 ( x10 )
	sb x10, -1 ( x20 )
	srl x10, x11, 4&31
	add x20, x20, -1
	bltu x27, x11, .LBB0_38
.LBB0_39:                               //  %print_number.exit148
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x21, 0 ( x26 )
	mv x10, x20
	jal strlen
	mv x13, x10
	mv x10, x21
	mv x11, fp
	mv x12, x20
	jal x0, .LBB0_40
.LBB0_41:                               //  %sw.bb62
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 20 ( sp )
	lw x20, 0 ( x26 )
	add x11, x10, 4
	sw x11, 20 ( sp )
	lw x21, 0 ( x10 )
	mv x10, x21
	jal strlen
	mv x13, x10
	mv x10, x20
	mv x11, fp
	mv x12, x21
.LBB0_40:                               //  %print_number.exit148
                                        //    in Loop: Header=BB0_4 Depth=1
	jal _write_r
	mv x18, x19
	lbu x11, 0 ( x18 )
	xor x10, x11, 37
	bltu x0, x10, .LBB0_1
	jal x0, .LBB0_4
.LBB0_42:                               //  %while.end69
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
	.size	__dprintf, .Lfunc_end0-__dprintf
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_10
	.long	.LBB0_18
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_11
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_14
	.long	.LBB0_24
	.long	.LBB0_18
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_18
JTI0_1:
	.long	.LBB0_36
	.long	.LBB0_28
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_37
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_41
	.long	.LBB0_3
	.long	.LBB0_28
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_28
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	print_number.chars,@object //  @print_number.chars
	.section	.rodata.cst16,"aM",@progbits,16
print_number.chars:
	.ascii	"0123456789abcdef"
	.size	print_number.chars, 16

	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
