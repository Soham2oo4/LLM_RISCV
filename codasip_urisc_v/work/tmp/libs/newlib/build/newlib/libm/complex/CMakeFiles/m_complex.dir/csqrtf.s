	.text
	.file	"csqrtf.c"
	.globl	csqrtf                  //  -- Begin function csqrtf
	.type	csqrtf,@function
csqrtf:                                 //  @csqrtf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -96
	.cfi_adjust_cfa_offset 96
	sw x9, 88 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 84 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x9, 4 ( x11 )
	lw x18, 0 ( x11 )
	sw fp, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv fp, x10
	add x10, sp, 28
	sw ra, 92 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 80 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 76 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 72 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x9, 56 ( sp )
	sw x18, 52 ( sp )
	sw x18, 28 ( sp )
	sw x9, 32 ( sp )
	jal crealf
	mv x19, x10
	add x10, sp, 20
	sw x18, 44 ( sp )
	sw x18, 20 ( sp )
	sw x9, 48 ( sp )
	sw x9, 24 ( sp )
	jal cimagf
	mv x11, x0
	mv x9, x10
	jal __nesf2
	bltu x0, x10, .LBB0_8
.LBB0_1:                                //  %if.then
	mv x11, x0
	mv x10, x19
	jal __ltsf2
	bge x10, x0, .LBB0_3
.LBB0_2:                                //  %if.then8
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x10, x10, x19
	jal sqrtf
	mv x9, x10
	mv x18, x0
	jal x0, .LBB0_5
.LBB0_8:                                //  %if.end
	mv x18, x0
	mv x10, x19
	mv x11, x18
	jal __nesf2
	bltu x0, x10, .LBB0_13
.LBB0_9:                                //  %if.then33
	mv x10, x9
	mv x11, x18
	jal __gtsf2
	mv x20, x10
	mv x10, x9
	jal fabsf
	lui x11, (1056964608>>12)&1048575
	jal __mulsf3
	jal sqrtf
	mv x11, x18
	mv x19, x10
	jal __mulsf3
	mv x11, x10
	blt x18, x20, .LBB0_10
.LBB0_11:                               //  %if.then33
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x11, x10, x11
	xor x9, x10, x19
	mv x10, x19
	jal x0, .LBB0_25
.LBB0_3:                                //  %if.else
	mv x11, x0
	mv x10, x19
	jal __nesf2
	bltu x0, x10, .LBB0_7
.LBB0_4:                                //  %if.then13
	mv x18, x0
	mv x10, x9
.LBB0_5:                                //  %cleanup
	mv x11, x18
.LBB0_6:                                //  %cleanup
	jal __mulsf3
	mv x11, x18
.LBB0_25:                               //  %cleanup
	jal __addsf3
	sw x9, 4 ( fp )
	sw x10, 0 ( fp )
	lw fp, 60 ( sp )                //  4-byte Folded Reload
	lw x23, 64 ( sp )               //  4-byte Folded Reload
	lw x22, 68 ( sp )               //  4-byte Folded Reload
	lw x21, 72 ( sp )               //  4-byte Folded Reload
	lw x20, 76 ( sp )               //  4-byte Folded Reload
	lw x19, 80 ( sp )               //  4-byte Folded Reload
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	lw ra, 92 ( sp )                //  4-byte Folded Reload
	add sp, sp, 96
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_13:                               //  %if.end55
	mv x10, x19
	jal fabsf
	lui x11, (1082130432>>12)&1048575
	jal __gtsf2
	lui x18, (1073741824>>12)&1048575
	lui x20, (1048576000>>12)&1048575
	blt x0, x10, .LBB0_16
.LBB0_14:                               //  %lor.lhs.false
	mv x10, x9
	jal fabsf
	lui x11, (1082130432>>12)&1048575
	jal __gtsf2
	blt x0, x10, .LBB0_16
.LBB0_15:                               //  %if.else63
	lui x18, (956301312>>12)&1048575
	lui x20, (1283457024>>12)&1048575
.LBB0_16:                               //  %if.end66
	mv x10, x19
	mv x11, x20
	jal __mulsf3
	mv x21, x10
	mv x10, x9
	mv x11, x20
	jal __mulsf3
	mv x19, x0
	mv x11, x19
	mv x9, x10
	jal __mulsf3
	mv x11, x10
	mv x10, x21
	jal __addsf3
	sw x10, 36 ( sp )
	sw x10, 12 ( sp )
	mv x10, x21
	mv x11, x19
	sw x9, 40 ( sp )
	sw x9, 16 ( sp )
	jal __gtsf2
	mv x22, x10
	add x10, sp, 12
	jal cabsf
	lui x23, (1056964608>>12)&1048575
	mv x11, x23
	jal __mulsf3
	mv x20, x10
	mv x10, x21
	mv x11, x23
	jal __mulsf3
	mv x11, x10
	bge x0, x22, .LBB0_18
.LBB0_17:                               //  %if.then79
	mv x10, x11
	mv x11, x20
	jal __addsf3
	jal sqrtf
	mv x20, x10
	lui x11, (1056964608>>12)&1048575
	mv x10, x9
	jal __mulsf3
	mv x11, x20
	jal __divsf3
	jal fabsf
	mv x21, x10
	jal x0, .LBB0_19
.LBB0_10:
	mv x9, x19
	mv x10, x19
	jal x0, .LBB0_25
.LBB0_7:                                //  %if.else19
	mv x10, x19
	jal sqrtf
	mv x18, x10
	mv x11, x0
	mv x10, x9
	jal x0, .LBB0_6
.LBB0_18:                               //  %if.else87
	mv x10, x20
	jal __subsf3
	jal sqrtf
	mv x21, x10
	lui x11, (1056964608>>12)&1048575
	mv x10, x9
	jal __mulsf3
	mv x11, x21
	jal __divsf3
	jal fabsf
	mv x20, x10
.LBB0_19:                               //  %if.end97
	mv x10, x9
	mv x11, x19
	jal __ltsf2
	mv x22, x10
	mv x10, x18
	mv x11, x21
	jal __mulsf3
	lui x11, %hi( -2147483648 )
	add x23, x11, %lo( -2147483648 )
	blt x22, x19, .LBB0_20
.LBB0_21:                               //  %if.end97
	mv x9, x10
	mv x11, x19
	jal __mulsf3
	mv x21, x10
	blt x22, x19, .LBB0_23
	jal x0, .LBB0_24
.LBB0_20:
	xor x9, x23, x10
	mv x11, x19
	jal __mulsf3
	mv x21, x10
	bge x22, x19, .LBB0_24
.LBB0_23:
	xor x21, x23, x21
.LBB0_24:                               //  %if.end97
	mv x10, x18
	mv x11, x20
	jal __mulsf3
	mv x11, x21
	jal x0, .LBB0_25
.Lfunc_end0:
	.size	csqrtf, .Lfunc_end0-csqrtf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
