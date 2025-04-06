	.text
	.file	"malignr.c"
	.globl	_memalign_r             //  -- Begin function _memalign_r
	.type	_memalign_r,@function
_memalign_r:                            //  @_memalign_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x11
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x10
	add x10, x18, -1
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	and x10, x10, x18
	mv x9, x0
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	bltu x0, x10, .LBB0_18
.LBB0_1:                                //  %if.end
	add x10, x0, 8
	bltu x10, x18, .LBB0_3
.LBB0_2:                                //  %if.end
	mv x18, x10
.LBB0_3:                                //  %if.end
	sltiu x10, x12, -4
	beq x0, x10, .LBB0_4
.LBB0_5:                                //  %if.end4
	add x10, x0, 7
	sub x10, x10, x18
	add x11, x0, 4
	bltu x11, x12, .LBB0_7
.LBB0_6:                                //  %if.end4
	mv x12, x11
.LBB0_7:                                //  %if.end4
	add x11, x12, 3
	and x19, x11, -4
	bgeu x10, x19, .LBB0_8
.LBB0_4:                                //  %if.then3
	add x10, x0, 12
	sw x10, 0 ( fp )
.LBB0_18:                               //  %cleanup
	mv x10, x9
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_8:                                //  %if.end17
	add x10, x19, x18
	add x11, x10, -8
	mv x10, fp
	jal _malloc_r
	beq x0, x10, .LBB0_18
.LBB0_9:                                //  %if.end22
	lw x11, -4 ( x10 )
	add x10, x10, -4
	mv x12, x0
	bge x11, x12, .LBB0_11
.LBB0_10:
	add x10, x11, x10
.LBB0_11:                               //  %if.end22
	add x11, x10, 4
	add x12, x11, x18
	add x12, x12, -1
	sub x13, x0, x18
	and x9, x13, x12
	sub x12, x9, x11
	beq x0, x12, .LBB0_15
.LBB0_12:                               //  %if.then29
	sltiu x13, x12, 12
	bltu x0, x13, .LBB0_14
.LBB0_13:                               //  %if.then31
	lw x13, 0 ( x10 )
	add x18, x12, x10
	sub x13, x13, x12
	sw x13, 0 ( x18 )
	sw x12, 0 ( x10 )
	mv x10, fp
	jal _free_r
	jal x0, .LBB0_16
.LBB0_14:                               //  %if.else
	add x11, x12, x10
	sub x12, x0, x12
	sw x12, 0 ( x11 )
.LBB0_15:                               //  %if.end40
	mv x18, x10
.LBB0_16:                               //  %if.end40
	lw x11, 0 ( x18 )
	add x10, x19, x9
	add x13, x10, 12
	add x12, x11, x18
	bgeu x13, x12, .LBB0_18
.LBB0_17:                               //  %if.then46
	sub x12, x10, x18
	sub x11, x11, x12
	sw x12, 0 ( x18 )
	sw x11, 0 ( x10 )
	add x11, x10, 4
	mv x10, fp
	jal _free_r
	jal x0, .LBB0_18
.Lfunc_end0:
	.size	_memalign_r, .Lfunc_end0-_memalign_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
