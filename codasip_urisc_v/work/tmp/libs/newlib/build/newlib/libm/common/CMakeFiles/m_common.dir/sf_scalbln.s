	.text
	.file	"sf_scalbln.c"
	.globl	scalblnf                //  -- Begin function scalblnf
	.type	scalblnf,@function
scalblnf:                               //  @scalblnf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x12, x10
	srl x10, x12, 23&31
	and x10, x10, 255
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x11
	xor x11, x10, 255
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x11, .LBB0_17
.LBB0_1:                                //  %entry
	bltu x0, x10, .LBB0_4
.LBB0_2:                                //  %if.then
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x10, x10, x12
	beq x0, x10, .LBB0_16
.LBB0_3:                                //  %if.end12.thread
	lui x11, (1275068416>>12)&1048575
	mv x10, x12
	jal __mulsf3
	mv x12, x10
	srl x10, x12, 23&31
	and x10, x10, 255
	add x10, x10, -25
.LBB0_4:                                //  %if.end15
	lui x11, %hi( 50000 )
	add x11, x11, %lo( 50000 )
	blt x11, fp, .LBB0_6
.LBB0_5:                                //  %if.end15
	add x10, fp, x10
	slti x11, x10, 255
	beq x0, x11, .LBB0_6
.LBB0_8:                                //  %if.end21
	lui x11, %hi( -50001 )
	add x11, x11, %lo( -50001 )
	blt x11, fp, .LBB0_10
.LBB0_9:                                //  %if.then23
	lui x10, %hi( 228737632 )
	add fp, x10, %lo( 228737632 )
	jal x0, .LBB0_7
.LBB0_17:                               //  %if.then14
	mv x10, x12
	mv x11, x12
	jal __addsf3
	jal x0, .LBB0_15
.LBB0_6:                                //  %if.then19
	lui x10, %hi( 1900671690 )
	add fp, x10, %lo( 1900671690 )
.LBB0_7:                                //  %cleanup
	mv x10, fp
	mv x11, x12
	jal copysignf
	mv x11, fp
.LBB0_14:                               //  %cleanup
	jal __mulsf3
.LBB0_15:                               //  %cleanup
	mv x12, x10
.LBB0_16:                               //  %cleanup
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	mv x10, x12
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_10:                               //  %if.end26
	bge x0, x10, .LBB0_12
.LBB0_11:                               //  %do.body29
	lui x11, %hi( -2139095041 )
	add x11, x11, %lo( -2139095041 )
	and x11, x11, x12
	sll x10, x10, 23&31
	or x12, x10, x11
	jal x0, .LBB0_16
.LBB0_12:                               //  %if.end35
	add x11, x0, -25
	bge x11, x10, .LBB0_9
.LBB0_13:                               //  %if.end40
	lui x11, %hi( -2139095041 )
	add x11, x11, %lo( -2139095041 )
	and x11, x11, x12
	sll x10, x10, 23&31
	lui x12, (209715200>>12)&1048575
	add x10, x12, x10
	or x10, x11, x10
	lui x11, (855638016>>12)&1048575
	jal x0, .LBB0_14
.Lfunc_end0:
	.size	scalblnf, .Lfunc_end0-scalblnf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
