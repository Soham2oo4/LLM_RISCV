	.text
	.file	"s_trunc.c"
	.globl	trunc                   //  -- Begin function trunc
	.type	trunc,@function
trunc:                                  //  @trunc
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
	and x10, x10, 2047
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18, x10, -1023
	add x11, x0, 19
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	blt x11, x18, .LBB0_3
.LBB0_1:                                //  %if.then
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	and x11, x10, fp
	blt x18, x0, .LBB0_7
.LBB0_2:                                //  %do.body15
	lui x10, %hi( -1048576 )
	add x10, x10, %lo( -1048576 )
	sra x10, x10, x18
	and x10, fp, x10
	or x11, x11, x10
.LBB0_7:                                //  %do.body7
	mv x10, x0
	jal x0, .LBB0_8
.LBB0_3:                                //  %if.else26
	slti x11, x18, 52
	bltu x0, x11, .LBB0_6
.LBB0_4:                                //  %if.then28
	mv x10, x9
	mv x11, fp
	mv x12, x9
	mv x13, fp
	jal __adddf3
	add x12, x0, 1024
	beq x18, x12, .LBB0_8
.LBB0_5:                                //  %if.then28
	mv x11, fp
	mv x10, x9
	jal x0, .LBB0_8
.LBB0_6:                                //  %do.body33
	add x10, x10, -1043
	add x11, x0, -1
	srl x10, x11, x10
	xor x10, x10, -1
	and x10, x9, x10
	mv x11, fp
.LBB0_8:                                //  %if.then28
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	trunc, .Lfunc_end0-trunc
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
