	.text
	.file	"strverscmp.c"
	.globl	strverscmp              //  -- Begin function strverscmp
	.type	strverscmp,@function
strverscmp:                             //  @strverscmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lbu x14, 0 ( x11 )
	lbu x28, 0 ( x10 )
	bne x28, x14, .LBB0_1
.LBB0_2:                                //  %for.body.preheader
	seqz x17, x0
	lui x13, %hi( _ctype_ )
	mv x12, x0
	add x7, x13, %lo( _ctype_ )
	mv x13, x28
	mv x15, x17
	add x5, x0, 48
	mv x6, x17
	mv x28, x12
	and x16, x13, 255
	bltu x0, x16, .LBB0_4
	jal x0, .LBB0_24
.LBB0_8:                                //  %if.end
                                        //    in Loop: Header=BB0_4 Depth=1
	add x13, x6, x10
	add x14, x6, x11
	lbu x14, 0 ( x14 )
	lbu x13, 0 ( x13 )
	add x6, x6, 1
	mv x28, x16
	bne x13, x14, .LBB0_9
.LBB0_3:                                //  %for.body
                                        //    in Loop: Header=BB0_4 Depth=1
	and x16, x13, 255
	beq x0, x16, .LBB0_24
.LBB0_4:                                //  %if.end
                                        //  =>This Inner Loop Header: Depth=1
	mv x14, x15
	beq x16, x5, .LBB0_6
.LBB0_5:                                //  %if.end
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x14, x12
.LBB0_6:                                //  %if.end
                                        //    in Loop: Header=BB0_4 Depth=1
	add x13, x13, x7
	lbu x13, 1 ( x13 )
	mv x16, x6
	mv x15, x17
	and x13, x13, 4
	beq x13, x12, .LBB0_8
.LBB0_7:                                //  %if.end
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x16, x28
	mv x15, x14
	jal x0, .LBB0_8
.LBB0_1:
	mv x12, x0
	seqz x15, x0
	mv x16, x12
	mv x13, x28
	xor x17, x28, 48
	beq x0, x17, .LBB0_18
.LBB0_11:                               //  %land.lhs.true
	add x17, x16, x11
	lbu x17, 0 ( x17 )
	xor x17, x17, 48
	beq x0, x17, .LBB0_18
.LBB0_12:                               //  %for.cond24.preheader
	lui x15, %hi( _ctype_ )
	add x15, x15, %lo( _ctype_ )
	add x15, x15, 1
	add x16, x14, x15
	add x17, x13, x15
	lbu x16, 0 ( x16 )
	lbu x17, 0 ( x17 )
	and x16, x16, 4
	srl x16, x16, 2&31
	and x17, x17, 4
	beq x0, x17, .LBB0_16
.LBB0_13:                               //  %for.body31.preheader
	add x12, x12, 1
	add x11, x12, x11
	add x10, x12, x10
	seqz x12, x0
.LBB0_15:                               //  %for.body31
                                        //  =>This Inner Loop Header: Depth=1
	and x16, x16, 1
	beq x0, x16, .LBB0_24
.LBB0_14:                               //  %for.cond24
                                        //    in Loop: Header=BB0_15 Depth=1
	lbu x16, 0 ( x10 )
	add x10, x10, 1
	add x17, x16, x15
	lbu x16, 0 ( x11 )
	lbu x17, 0 ( x17 )
	add x11, x11, 1
	add x16, x16, x15
	lbu x16, 0 ( x16 )
	and x17, x17, 4
	and x16, x16, 4
	srl x16, x16, 2&31
	bltu x0, x17, .LBB0_15
.LBB0_16:                               //  %for.end42
	beq x0, x16, .LBB0_23
.LBB0_17:
	add x12, x0, -1
	mv x10, x12
	jr ra
.LBB0_9:                                //  %for.end.loopexit
	add x17, x16, x10
	lbu x28, 0 ( x17 )
	add x12, x6, -1
	xor x17, x28, 48
	bltu x0, x17, .LBB0_11
.LBB0_18:                               //  %if.else51
	bgeu x16, x12, .LBB0_23
.LBB0_19:                               //  %if.else51
	beq x0, x15, .LBB0_23
.LBB0_20:                               //  %land.lhs.true56
	lui x10, %hi( _ctype_ )
	add x10, x10, %lo( _ctype_ )
	add x11, x13, x10
	lbu x11, 1 ( x11 )
	and x11, x11, 4
	bltu x0, x11, .LBB0_22
.LBB0_21:                               //  %lor.lhs.false
	add x10, x14, x10
	lbu x10, 1 ( x10 )
	and x10, x10, 4
	bltu x0, x10, .LBB0_22
.LBB0_23:                               //  %if.end81
	sub x12, x13, x14
.LBB0_24:                               //  %cleanup87
	mv x10, x12
	jr ra
.LBB0_22:                               //  %if.then69
	add x10, x14, -48
	add x11, x13, -48
	and x10, x10, 255
	and x11, x11, 255
	sub x12, x11, x10
	mv x10, x12
	jr ra
.Lfunc_end0:
	.size	strverscmp, .Lfunc_end0-strverscmp
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
