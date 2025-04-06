	.text
	.file	"__exp10.c"
	.globl	__exp10                 //  -- Begin function __exp10
	.type	__exp10,@function
__exp10:                                //  @__exp10
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	add x11, x0, 4
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x11, x10, .LBB0_3
.LBB0_1:                                //  %if.then
	lui x11, %hi( __exp10.powtab )
	sll x10, x10, 3&31
	add x11, x11, %lo( __exp10.powtab )
	add x11, x10, x11
	lw x10, 0 ( x11 )
	lw x11, 4 ( x11 )
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_3:                                //  %if.else
	and x11, x10, 1
	bltu x0, x11, .LBB0_4
.LBB0_6:                                //  %if.else2
	srl x10, x10, 1&31
	jal __exp10
	mv x12, x10
	mv x13, x11
	jal __muldf3
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_4:                                //  %if.then1
	add x10, x10, -1
	jal __exp10
	mv x12, x0
	lui x13, (1076101120>>12)&1048575
	jal __muldf3
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__exp10, .Lfunc_end0-__exp10
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	__exp10.powtab,@object  //  @__exp10.powtab
	.section	.rodata,"a",@progbits
	.p2align	3
__exp10.powtab:
	.quad	4607182418800017408     //  double 1
	.quad	4621819117588971520     //  double 10
	.quad	4636737291354636288     //  double 100
	.quad	4652007308841189376     //  double 1000
	.quad	4666723172467343360     //  double 1.0E+4
	.size	__exp10.powtab, 40


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
