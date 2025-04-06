	.text
	.file	"sf_scalbn.c"
	.globl	scalbnf                 //  -- Begin function scalbnf
	.type	scalbnf,@function
scalbnf:                                //  @scalbnf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x12, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x11
	and x10, x10, x12
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x10, .LBB0_18
.LBB0_1:                                //  %if.end
	srl x11, x10, 23&31
	sltiu x13, x11, 255
	beq x0, x13, .LBB0_2
.LBB0_3:                                //  %if.end3
	bltu x0, x11, .LBB0_4
.LBB0_5:                                //  %if.then5
	lui x11, (1275068416>>12)&1048575
	mv x10, x12
	jal __mulsf3
	mv x12, x10
	lui x10, %hi( -50001 )
	add x10, x10, %lo( -50001 )
	blt x10, fp, .LBB0_6
.LBB0_19:                               //  %if.then15
	lui x10, %hi( 228737632 )
	add x11, x10, %lo( 228737632 )
	mv x10, x12
	jal x0, .LBB0_16
.LBB0_2:                                //  %if.then2
	mv x10, x12
	mv x11, x12
	jal __addsf3
	jal x0, .LBB0_17
.LBB0_4:
	srl x10, x10, 23&31
	add x10, fp, x10
	slti x11, x10, 255
	beq x0, x11, .LBB0_8
.LBB0_10:                               //  %if.end23
	bge x0, x10, .LBB0_12
.LBB0_11:                               //  %do.body26
	lui x11, %hi( -2139095041 )
	add x11, x11, %lo( -2139095041 )
	and x11, x11, x12
	sll x10, x10, 23&31
	or x12, x11, x10
	jal x0, .LBB0_18
.LBB0_6:
	srl x10, x12, 23&31
	and x10, x10, 255
	add x10, x10, -25
	add x10, fp, x10
	slti x11, x10, 255
	bltu x0, x11, .LBB0_10
	jal x0, .LBB0_8
.LBB0_12:                               //  %if.end32
	add x11, x0, -23
	blt x11, x10, .LBB0_15
.LBB0_13:                               //  %if.then34
	lui x10, %hi( 50001 )
	add x10, x10, %lo( 50001 )
	blt fp, x10, .LBB0_14
.LBB0_8:                                //  %if.then21
	lui x10, %hi( 1900671690 )
	add fp, x10, %lo( 1900671690 )
.LBB0_9:                                //  %cleanup
	mv x10, fp
	mv x11, x12
	jal copysignf
	mv x11, fp
.LBB0_16:                               //  %cleanup
	jal __mulsf3
.LBB0_17:                               //  %cleanup
	mv x12, x10
.LBB0_18:                               //  %cleanup
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	mv x10, x12
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_15:                               //  %if.end41
	lui x11, %hi( -2139095041 )
	add x11, x11, %lo( -2139095041 )
	and x11, x11, x12
	sll x10, x10, 23&31
	lui x12, (209715200>>12)&1048575
	add x10, x12, x10
	or x10, x11, x10
	lui x11, (855638016>>12)&1048575
	jal x0, .LBB0_16
.LBB0_14:                               //  %if.else
	lui x10, %hi( 228737632 )
	add fp, x10, %lo( 228737632 )
	jal x0, .LBB0_9
.Lfunc_end0:
	.size	scalbnf, .Lfunc_end0-scalbnf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
