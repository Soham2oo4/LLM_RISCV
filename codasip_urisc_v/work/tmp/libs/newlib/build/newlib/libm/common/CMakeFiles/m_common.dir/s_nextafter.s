	.text
	.file	"s_nextafter.c"
	.globl	nextafter               //  -- Begin function nextafter
	.type	nextafter,@function
nextafter:                              //  @nextafter
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( 2147483647 )
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x11
	add x10, x10, %lo( 2147483647 )
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	and x20, x10, fp
	srl x11, x20, 20&31
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x18, x13
	mv x19, x12
	sltiu x11, x11, 2047
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x0, x11, .LBB0_2
.LBB0_1:                                //  %land.lhs.true
	lui x11, %hi( -2146435072 )
	add x11, x11, %lo( -2146435072 )
	add x11, x11, x20
	or x11, x9, x11
	bltu x0, x11, .LBB0_4
.LBB0_2:                                //  %lor.lhs.false
	and x10, x10, x18
	srl x11, x10, 20&31
	sltiu x11, x11, 2047
	bltu x0, x11, .LBB0_6
.LBB0_3:                                //  %land.lhs.true14
	lui x11, %hi( -2146435072 )
	add x11, x11, %lo( -2146435072 )
	add x10, x11, x10
	or x10, x19, x10
	beq x0, x10, .LBB0_6
.LBB0_4:                                //  %if.then
	mv x10, x9
	mv x11, fp
	mv x12, x19
	mv x13, x18
.LBB0_5:                                //  %cleanup
	jal __adddf3
	mv x18, x10
	mv x19, x11
	jal x0, .LBB0_8
.LBB0_6:                                //  %if.end
	mv x10, x9
	mv x11, fp
	mv x12, x19
	mv x13, x18
	jal __eqdf2
	bltu x0, x10, .LBB0_9
.LBB0_7:
	mv x18, x9
	mv x19, fp
.LBB0_8:                                //  %cleanup
	mv x10, x18
	mv x11, x19
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_9:                                //  %if.end20
	or x10, x9, x20
	beq x0, x10, .LBB0_14
.LBB0_10:                               //  %if.end35
	blt fp, x0, .LBB0_15
.LBB0_11:                               //  %if.then37
	blt x18, fp, .LBB0_19
.LBB0_12:                               //  %lor.lhs.false39
	bltu x19, x9, .LBB0_18
	jal x0, .LBB0_22
.LBB0_14:                               //  %do.body24
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	and fp, x10, x18
	seqz x9, x0
	mv x12, x9
	mv x10, x9
	mv x11, fp
	mv x13, fp
	jal __muldf3
	mv x12, x9
	mv x13, fp
	mv x18, x10
	mv x19, x11
	jal __eqdf2
	mv x11, x0
	bne x10, x11, .LBB0_7
	jal x0, .LBB0_8
.LBB0_15:                               //  %if.else56
	bge x18, x0, .LBB0_19
.LBB0_16:                               //  %if.else56
	blt x18, fp, .LBB0_19
.LBB0_17:                               //  %lor.lhs.false60
	bgeu x19, x9, .LBB0_22
.LBB0_18:                               //  %lor.lhs.false60
	bne fp, x18, .LBB0_22
.LBB0_19:                               //  %if.then43
	seqz x10, x9
	sub x19, fp, x10
	add x18, x9, -1
	lui x10, (2146435072>>12)&1048575
	and x11, x10, x19
	beq x0, x11, .LBB0_23
.LBB0_20:                               //  %if.end77
	bne x11, x10, .LBB0_8
.LBB0_21:                               //  %if.then80
	mv x10, x9
	mv x11, fp
	mv x12, x9
	mv x13, fp
	jal x0, .LBB0_5
.LBB0_22:                               //  %if.else70
	add x18, x9, 1
	sltu x10, x18, x9
	add x19, fp, x10
	lui x10, (2146435072>>12)&1048575
	and x11, x10, x19
	bltu x0, x11, .LBB0_20
.LBB0_23:                               //  %if.then84
	mv x10, x9
	mv x13, fp
	mv x11, fp
	mv x12, x9
	jal __muldf3
	mv x12, x9
	mv x13, fp
	jal __eqdf2
	jal x0, .LBB0_8
.Lfunc_end0:
	.size	nextafter, .Lfunc_end0-nextafter
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
