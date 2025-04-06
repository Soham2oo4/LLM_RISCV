	.text
	.file	"s_frexp.c"
	.globl	frexp                   //  -- Begin function frexp
	.type	frexp,@function
frexp:                                  //  @frexp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x12
	lui x12, %hi( 2147483647 )
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18, x12, %lo( 2147483647 )
	and x12, x18, x11
	srl x13, x12, 20&31
	add x14, x0, 2046
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x0, 0 ( fp )
	bltu x14, x13, .LBB0_6
.LBB0_1:                                //  %lor.lhs.false
	or x14, x10, x12
	beq x0, x14, .LBB0_6
.LBB0_2:                                //  %if.end
	bltu x0, x13, .LBB0_3
.LBB0_4:                                //  %if.then4
	add x9, x0, -54
	mv x12, x0
	lui x13, (1129316352>>12)&1048575
	sw x9, 0 ( fp )
	jal __muldf3
	and x12, x18, x11
	jal x0, .LBB0_5
.LBB0_3:
	mv x9, x0
.LBB0_5:                                //  %if.end12
	srl x12, x12, 20&31
	add x12, x9, x12
	add x12, x12, -1022
	sw x12, 0 ( fp )
	lui x12, %hi( -2146435073 )
	add x12, x12, %lo( -2146435073 )
	and x11, x12, x11
	lui x12, (1071644672>>12)&1048575
	or x11, x12, x11
.LBB0_6:                                //  %cleanup
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	frexp, .Lfunc_end0-frexp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
