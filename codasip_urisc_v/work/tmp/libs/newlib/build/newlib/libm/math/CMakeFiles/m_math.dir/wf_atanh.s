	.text
	.file	"wf_atanh.c"
	.globl	atanhf                  //  -- Begin function atanhf
	.type	atanhf,@function
atanhf:                                 //  @atanhf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv fp, x10
	jal __ieee754_atanhf
	mv x9, x10
	mv x10, fp
	mv x11, fp
	jal __unordsf2
	bltu x0, x10, .LBB0_5
.LBB0_1:                                //  %if.end
	mv x10, fp
	jal fabsf
	lui x11, (1065353216>>12)&1048575
	mv x18, x10
	jal __gesf2
	blt x10, x0, .LBB0_5
.LBB0_2:                                //  %if.then3
	jal __errno
	add x11, x0, 33
	sw x11, 0 ( x10 )
	lui x11, (1065353216>>12)&1048575
	mv x10, x18
	jal __gtsf2
	bge x0, x10, .LBB0_4
.LBB0_3:
	lui x9, (2143289344>>12)&1048575
	jal x0, .LBB0_5
.LBB0_4:                                //  %if.else
	mv x11, x0
	mv x10, fp
	jal __divsf3
	mv x9, x10
.LBB0_5:                                //  %cleanup
	mv x10, x9
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	atanhf, .Lfunc_end0-atanhf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
