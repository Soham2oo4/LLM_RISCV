	.text
	.file	"strnstr.c"
	.globl	strnstr                 //  -- Begin function strnstr
	.type	strnstr,@function
strnstr:                                //  @strnstr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x12
	mv x18, x11
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	mv x10, x18
	mv x11, x19
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	jal strnlen
	mv x13, x10
	mv fp, x0
	bltu x13, x19, .LBB0_2
.LBB0_1:                                //  %lor.lhs.false
	add x10, x13, x18
	lbu x10, 0 ( x10 )
	bltu x0, x10, .LBB0_5
.LBB0_2:                                //  %if.then
	mv x10, x9
	mv x11, x19
	mv x12, x18
	jal memmem
	mv x18, x10
	beq x0, x18, .LBB0_5
.LBB0_3:                                //  %land.lhs.true
	sub x12, x18, x9
	mv x11, x0
	mv x10, x9
	jal memchr
	bltu x0, x10, .LBB0_5
.LBB0_4:
	mv fp, x18
.LBB0_5:                                //  %cleanup7
	mv x10, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	strnstr, .Lfunc_end0-strnstr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
