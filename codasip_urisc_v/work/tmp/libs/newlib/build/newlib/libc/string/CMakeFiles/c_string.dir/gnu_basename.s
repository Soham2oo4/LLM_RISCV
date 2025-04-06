	.text
	.file	"gnu_basename.c"
	.globl	__gnu_basename          //  -- Begin function __gnu_basename
	.type	__gnu_basename,@function
__gnu_basename:                         //  @__gnu_basename
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	add x11, x0, 47
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv fp, x10
	jal strrchr
	mv x11, x0
	beq x10, x11, .LBB0_2
.LBB0_1:                                //  %entry
	add fp, x10, 1
.LBB0_2:                                //  %entry
	mv x10, fp
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__gnu_basename, .Lfunc_end0-__gnu_basename
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
