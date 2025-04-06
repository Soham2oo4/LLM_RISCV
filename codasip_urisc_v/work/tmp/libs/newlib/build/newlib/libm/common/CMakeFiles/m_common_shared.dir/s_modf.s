	.text
	.file	"s_modf.c"
	.globl	modf                    //  -- Begin function modf
	.type	modf,@function
modf:                                   //  @modf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x11
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	srl x10, fp, 20&31
	and x11, x10, 2047
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x12
	add x10, x11, -1023
	add x12, x0, 19
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	blt x12, x10, .LBB0_7
.LBB0_1:                                //  %if.then
	blt x10, x0, .LBB0_2
.LBB0_3:                                //  %if.else
	lui x11, %hi( 1048575 )
	add x11, x11, %lo( 1048575 )
	srl x11, x11, x10
	and x11, fp, x11
	or x11, x9, x11
	beq x0, x11, .LBB0_4
.LBB0_6:                                //  %do.body28
	lui x11, %hi( -1048576 )
	add x11, x11, %lo( -1048576 )
	sra x10, x11, x10
	and x13, fp, x10
	sw x13, 4 ( x18 )
	sw x0, 0 ( x18 )
	mv x12, x0
	mv x10, x9
	mv x11, fp
	jal x0, .LBB0_12
.LBB0_7:                                //  %if.else39
	slti x10, x10, 52
	bltu x0, x10, .LBB0_10
.LBB0_8:                                //  %if.then41
	mv x10, x9
	mv x11, fp
	sw x9, 0 ( x18 )
	sw fp, 4 ( x18 )
	jal __fpclassifyd
	bltu x0, x10, .LBB0_5
.LBB0_9:                                //  %if.then43
	mv x10, x9
	mv x11, fp
	mv x12, x9
	mv x13, fp
	jal __adddf3
	mv x9, x10
	mv fp, x11
	sw fp, 4 ( x18 )
	sw x9, 0 ( x18 )
	jal x0, .LBB0_13
.LBB0_10:                               //  %if.else54
	add x10, x11, -1043
	add x11, x0, -1
	srl x10, x11, x10
	and x11, x9, x10
	beq x0, x11, .LBB0_4
.LBB0_11:                               //  %do.body71
	xor x10, x10, -1
	and x12, x9, x10
	mv x10, x9
	mv x11, fp
	mv x13, fp
	sw x12, 0 ( x18 )
	sw fp, 4 ( x18 )
.LBB0_12:                               //  %cleanup
	jal __subdf3
	mv x9, x10
	mv fp, x11
	jal x0, .LBB0_13
.LBB0_4:                                //  %if.then16
	sw x9, 0 ( x18 )
	sw fp, 4 ( x18 )
.LBB0_5:                                //  %do.body44
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	and fp, x10, fp
	mv x9, x0
	jal x0, .LBB0_13
.LBB0_2:                                //  %do.body4
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	and x10, x10, fp
	sw x10, 4 ( x18 )
	sw x0, 0 ( x18 )
.LBB0_13:                               //  %cleanup
	mv x10, x9
	mv x11, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	modf, .Lfunc_end0-modf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
