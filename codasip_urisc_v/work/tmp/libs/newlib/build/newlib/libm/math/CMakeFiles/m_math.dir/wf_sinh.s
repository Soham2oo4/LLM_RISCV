	.text
	.file	"wf_sinh.c"
	.globl	sinhf                   //  -- Begin function sinhf
	.type	sinhf,@function
sinhf:                                  //  @sinhf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv x9, x10
	jal __ieee754_sinhf
	mv fp, x10
	jal finitef
	bltu x0, x10, .LBB0_6
.LBB0_1:                                //  %land.lhs.true
	mv x10, x9
	jal finitef
	beq x0, x10, .LBB0_6
.LBB0_2:                                //  %if.then
	mv fp, x0
	mv x10, x9
	mv x11, fp
	jal __gtsf2
	blt fp, x10, .LBB0_3
.LBB0_4:                                //  %if.then
	lui x10, %hi( -8388608 )
	add fp, x10, %lo( -8388608 )
	jal x0, .LBB0_5
.LBB0_3:
	lui fp, (2139095040>>12)&1048575
.LBB0_5:                                //  %if.then
	jal __errno
	add x11, x0, 34
	sw x11, 0 ( x10 )
.LBB0_6:                                //  %cleanup
	mv x10, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	sinhf, .Lfunc_end0-sinhf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
