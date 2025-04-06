	.text
	.file	"wcscasecmp.c"
	.globl	wcscasecmp              //  -- Begin function wcscasecmp
	.type	wcscasecmp,@function
wcscasecmp:                             //  @wcscasecmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x11
	mv x9, x10
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
.LBB0_1:                                //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x9 )
	jal towlower
	mv x18, x10
	lw x10, 0 ( fp )
	jal towlower
	mv x11, x10
	sub x10, x18, x11
	beq x0, x11, .LBB0_3
.LBB0_2:                                //  %for.cond
                                        //    in Loop: Header=BB0_1 Depth=1
	add fp, fp, 4
	add x9, x9, 4
	beq x0, x10, .LBB0_1
.LBB0_3:                                //  %for.end
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	wcscasecmp, .Lfunc_end0-wcscasecmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
