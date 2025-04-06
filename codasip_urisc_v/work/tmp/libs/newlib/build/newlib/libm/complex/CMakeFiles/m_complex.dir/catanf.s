	.text
	.file	"catanf.c"
	.globl	catanf                  //  -- Begin function catanf
	.type	catanf,@function
catanf:                                 //  @catanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x9, 4 ( x11 )
	lw x18, 0 ( x11 )
	sw fp, 48 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv fp, x10
	add x10, sp, 24
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x9, 44 ( sp )
	sw x18, 40 ( sp )
	sw x18, 24 ( sp )
	sw x9, 28 ( sp )
	jal crealf
	mv x11, x0
	sw x18, 32 ( sp )
	sw x18, 16 ( sp )
	sw x9, 36 ( sp )
	mv x21, x10
	sw x9, 20 ( sp )
	jal __nesf2
	mv x20, x10
	add x10, sp, 16
	jal cimagf
	mv x19, x10
	lui x18, (2139095040>>12)&1048575
	lui x9, (2143289344>>12)&1048575
	bltu x0, x20, .LBB0_2
.LBB0_1:                                //  %entry
	lui x11, (1065353216>>12)&1048575
	mv x10, x19
	jal __gtsf2
	blt x0, x10, .LBB0_5
.LBB0_2:                                //  %if.end
	mv x10, x21
	mv x11, x21
	jal __mulsf3
	mv x20, x10
	lui x10, (1065353216>>12)&1048575
	mv x11, x20
	jal __subsf3
	mv x22, x10
	mv x10, x19
	mv x11, x19
	jal __mulsf3
	mv x11, x10
	mv x10, x22
	jal __subsf3
	mv x11, x0
	mv x22, x10
	jal __eqsf2
	beq x0, x10, .LBB0_5
.LBB0_3:                                //  %if.end12
	mv x10, x21
	mv x11, x21
	jal __addsf3
	mv x11, x22
	jal atan2f
	lui x11, (1056964608>>12)&1048575
	jal __mulsf3
	jal _redupif
	mv x21, x10
	lui x10, %hi( -1082130432 )
	add x11, x10, %lo( -1082130432 )
	mv x10, x19
	jal __addsf3
	mv x11, x10
	jal __mulsf3
	mv x11, x10
	mv x10, x20
	jal __addsf3
	mv x11, x0
	mv x22, x10
	jal __eqsf2
	beq x0, x10, .LBB0_5
.LBB0_4:                                //  %if.end21
	lui x11, (1065353216>>12)&1048575
	mv x10, x19
	jal __addsf3
	mv x11, x10
	jal __mulsf3
	mv x11, x10
	mv x10, x20
	jal __addsf3
	mv x11, x22
	jal __divsf3
	jal logf
	lui x11, (1048576000>>12)&1048575
	jal __mulsf3
	mv x19, x0
	mv x11, x19
	mv x18, x10
	jal __mulsf3
	mv x11, x10
	mv x10, x21
	jal __addsf3
	mv x9, x10
	mv x10, x18
	mv x11, x19
	jal __addsf3
	mv x18, x10
.LBB0_5:                                //  %cleanup
	sw x18, 4 ( fp )
	sw x9, 0 ( fp )
	lw fp, 48 ( sp )                //  4-byte Folded Reload
	lw x22, 52 ( sp )               //  4-byte Folded Reload
	lw x21, 56 ( sp )               //  4-byte Folded Reload
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	lw x19, 64 ( sp )               //  4-byte Folded Reload
	lw x18, 68 ( sp )               //  4-byte Folded Reload
	lw x9, 72 ( sp )                //  4-byte Folded Reload
	lw ra, 76 ( sp )                //  4-byte Folded Reload
	add sp, sp, 80
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	catanf, .Lfunc_end0-catanf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
