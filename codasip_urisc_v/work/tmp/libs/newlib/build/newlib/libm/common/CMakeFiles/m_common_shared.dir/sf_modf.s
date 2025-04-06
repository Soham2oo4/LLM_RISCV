	.text
	.file	"sf_modf.c"
	.globl	modff                   //  -- Begin function modff
	.type	modff,@function
modff:                                  //  @modff
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	srl x10, fp, 23&31
	and x10, x10, 255
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	add x10, x10, -127
	add x11, x0, 22
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	blt x11, x10, .LBB0_7
.LBB0_1:                                //  %if.then
	blt x10, x0, .LBB0_2
.LBB0_3:                                //  %if.else
	lui x11, %hi( 8388607 )
	add x11, x11, %lo( 8388607 )
	srl x11, x11, x10
	and x11, fp, x11
	beq x0, x11, .LBB0_4
.LBB0_6:                                //  %do.body21
	lui x11, %hi( -8388608 )
	add x11, x11, %lo( -8388608 )
	sra x10, x11, x10
	and x11, fp, x10
	mv x10, fp
	sw x11, 0 ( x9 )
	jal __subsf3
	mv fp, x10
	jal x0, .LBB0_9
.LBB0_7:                                //  %if.else29
	mv x10, fp
	sw fp, 0 ( x9 )
	jal __fpclassifyf
	bltu x0, x10, .LBB0_5
.LBB0_8:                                //  %if.then31
	mv x10, fp
	mv x11, fp
	jal __addsf3
	mv fp, x10
	sw fp, 0 ( x9 )
	jal x0, .LBB0_9
.LBB0_2:                                //  %do.body3
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	and x10, x10, fp
	sw x10, 0 ( x9 )
	jal x0, .LBB0_9
.LBB0_4:                                //  %if.then12
	sw fp, 0 ( x9 )
.LBB0_5:                                //  %do.body32
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	and fp, x10, fp
.LBB0_9:                                //  %cleanup
	mv x10, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	modff, .Lfunc_end0-modff
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
