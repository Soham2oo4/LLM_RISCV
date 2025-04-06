	.text
	.file	"w_sinh.c"
	.globl	sinh                    //  -- Begin function sinh
	.type	sinh,@function
sinh:                                   //  @sinh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv x9, x11
	mv x19, x10
	jal __ieee754_sinh
	mv fp, x10
	mv x18, x11
	jal finite
	beq x0, x10, .LBB0_1
.LBB0_5:                                //  %cleanup
	mv x10, fp
	mv x11, x18
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_1:                                //  %land.lhs.true
	mv x10, x19
	mv x11, x9
	jal finite
	beq x0, x10, .LBB0_5
.LBB0_2:                                //  %if.then
	jal __errno
	mv fp, x0
	add x11, x0, 34
	sw x11, 0 ( x10 )
	mv x10, x19
	mv x11, x9
	mv x12, fp
	mv x13, fp
	jal __gtdf2
	blt fp, x10, .LBB0_3
.LBB0_4:                                //  %if.then
	lui x10, %hi( -1048576 )
	add x18, x10, %lo( -1048576 )
	jal x0, .LBB0_5
.LBB0_3:
	lui x18, (2146435072>>12)&1048575
	jal x0, .LBB0_5
.Lfunc_end0:
	.size	sinh, .Lfunc_end0-sinh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
