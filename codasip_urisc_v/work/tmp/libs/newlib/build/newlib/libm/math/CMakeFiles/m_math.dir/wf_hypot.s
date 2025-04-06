	.text
	.file	"wf_hypot.c"
	.globl	hypotf                  //  -- Begin function hypotf
	.type	hypotf,@function
hypotf:                                 //  @hypotf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv x9, x11
	mv x18, x10
	jal __ieee754_hypotf
	mv fp, x10
	jal finitef
	bltu x0, x10, .LBB0_4
.LBB0_1:                                //  %land.lhs.true
	mv x10, x18
	jal finitef
	beq x0, x10, .LBB0_4
.LBB0_2:                                //  %land.lhs.true4
	mv x10, x9
	jal finitef
	beq x0, x10, .LBB0_4
.LBB0_3:                                //  %if.then
	jal __errno
	add x11, x0, 34
	lui fp, (2139095040>>12)&1048575
	sw x11, 0 ( x10 )
.LBB0_4:                                //  %cleanup
	mv x10, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	hypotf, .Lfunc_end0-hypotf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
