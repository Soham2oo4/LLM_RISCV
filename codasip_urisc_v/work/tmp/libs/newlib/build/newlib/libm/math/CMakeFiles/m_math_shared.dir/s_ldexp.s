	.text
	.file	"s_ldexp.c"
	.globl	ldexp                   //  -- Begin function ldexp
	.type	ldexp,@function
ldexp:                                  //  @ldexp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x12
	mv x12, x0
	mv x13, x12
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv fp, x11
	mv x9, x10
	jal __eqdf2
	mv x19, x10
	mv x10, x9
	mv x11, fp
	jal finite
	beq x0, x19, .LBB0_5
.LBB0_1:                                //  %entry
	beq x0, x10, .LBB0_5
.LBB0_2:                                //  %if.end
	mv x10, x9
	mv x11, fp
	mv x12, x18
	jal scalbn
	mv x9, x10
	mv fp, x11
	jal finite
	mv x12, x0
	mv x18, x10
	mv x10, x9
	mv x11, fp
	mv x13, x12
	jal __eqdf2
	beq x0, x10, .LBB0_4
.LBB0_3:                                //  %if.end
	bltu x0, x18, .LBB0_5
.LBB0_4:                                //  %if.then6
	jal __errno
	add x11, x0, 34
	sw x11, 0 ( x10 )
.LBB0_5:                                //  %return
	mv x10, x9
	mv x11, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	ldexp, .Lfunc_end0-ldexp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
