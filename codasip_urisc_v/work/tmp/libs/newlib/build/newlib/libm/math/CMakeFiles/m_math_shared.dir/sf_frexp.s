	.text
	.file	"sf_frexp.c"
	.globl	frexpf                  //  -- Begin function frexpf
	.type	frexpf,@function
frexpf:                                 //  @frexpf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x11
	lui x11, %hi( 2147483647 )
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18, x11, %lo( 2147483647 )
	lui x13, %hi( 2139095038 )
	and x11, x18, x10
	add x12, x11, -1
	add x13, x13, %lo( 2139095038 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x0, 0 ( fp )
	bltu x13, x12, .LBB0_5
.LBB0_1:                                //  %if.end
	srl x12, x11, 23&31
	bltu x0, x12, .LBB0_2
.LBB0_3:                                //  %if.then3
	add x9, x0, -25
	lui x11, (1275068416>>12)&1048575
	sw x9, 0 ( fp )
	jal __mulsf3
	and x11, x18, x10
	jal x0, .LBB0_4
.LBB0_2:
	mv x9, x0
.LBB0_4:                                //  %if.end11
	srl x11, x11, 23&31
	add x11, x9, x11
	add x11, x11, -126
	sw x11, 0 ( fp )
	lui x11, %hi( -2139095041 )
	add x11, x11, %lo( -2139095041 )
	and x10, x11, x10
	lui x11, (1056964608>>12)&1048575
	or x10, x11, x10
.LBB0_5:                                //  %cleanup
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	frexpf, .Lfunc_end0-frexpf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
