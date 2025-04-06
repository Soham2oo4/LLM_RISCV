	.text
	.file	"sf_logb.c"
	.globl	logbf                   //  -- Begin function logbf
	.type	logbf,@function
logbf:                                  //  @logbf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x11, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	and x13, x10, x11
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x13, .LBB0_1
.LBB0_2:                                //  %if.end
	srl x12, x13, 23&31
	bltu x0, x12, .LBB0_7
.LBB0_3:                                //  %if.then9
	sll x11, x11, 8&31
	bge x0, x11, .LBB0_4
.LBB0_5:                                //  %for.body.preheader
	add x10, x0, -126
.LBB0_6:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x10, -1
	sll x11, x11, 1&31
	blt x0, x11, .LBB0_6
	jal x0, .LBB0_10
.LBB0_1:
	lui x10, %hi( -8388608 )
	add x10, x10, %lo( -8388608 )
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_7:                                //  %if.else
	lui x10, (2139095040>>12)&1048575
	beq x13, x10, .LBB0_11
.LBB0_8:                                //  %if.else17
	lui x14, (2139095040>>12)&1048575
	mv x10, x11
	bltu x14, x13, .LBB0_11
.LBB0_9:                                //  %if.else21
	add x10, x12, -127
.LBB0_10:                               //  %cleanup
	jal __floatsisf
.LBB0_11:                               //  %cleanup
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_4:
	lui x10, %hi( -1023672320 )
	add x10, x10, %lo( -1023672320 )
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	logbf, .Lfunc_end0-logbf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
