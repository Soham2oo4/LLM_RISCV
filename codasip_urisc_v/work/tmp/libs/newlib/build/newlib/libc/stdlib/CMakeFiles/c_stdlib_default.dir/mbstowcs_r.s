	.text
	.file	"mbstowcs_r.c"
	.globl	_mbstowcs_r             //  -- Begin function _mbstowcs_r
	.type	_mbstowcs_r,@function
_mbstowcs_r:                            //  @_mbstowcs_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv fp, x14
	mv x18, x13
	mv x9, x12
	mv x21, x11
	mv x20, x10
	mv x19, x0
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	bne x21, x19, .LBB0_2
.LBB0_1:
	seqz x18, x0
.LBB0_2:                                //  %entry
	beq x0, x18, .LBB0_10
.LBB0_3:                                //  %while.body.preheader
	mv x22, x0
	lui x10, %hi( __global_locale )
	add x23, x10, %lo( __global_locale )
	mv x19, x22
	jal x0, .LBB0_4
.LBB0_9:                                //  %if.end8
                                        //    in Loop: Header=BB0_4 Depth=1
	add x9, x10, x9
	snez x10, x21
	sub x18, x18, x10
	add x19, x19, 1
	mv x21, x11
	beq x0, x18, .LBB0_10
.LBB0_4:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x24, 228 ( x23 )
	jal __locale_mb_cur_max
	mv x13, x10
	mv x10, x20
	mv x11, x21
	mv x12, x9
	mv x14, fp
	call.reg x24
	blt x10, x0, .LBB0_5
.LBB0_6:                                //  %if.else
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x10, .LBB0_10
.LBB0_7:                                //  %if.end8
                                        //    in Loop: Header=BB0_4 Depth=1
	mv x11, x22
	beq x21, x22, .LBB0_9
.LBB0_8:                                //  %if.end8
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x21, 4
	jal x0, .LBB0_9
.LBB0_5:                                //  %if.then4
	sw x0, 0 ( fp )
	add x19, x0, -1
.LBB0_10:                               //  %cleanup
	mv x10, x19
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x24, 12 ( sp )               //  4-byte Folded Reload
	lw x23, 16 ( sp )               //  4-byte Folded Reload
	lw x22, 20 ( sp )               //  4-byte Folded Reload
	lw x21, 24 ( sp )               //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_mbstowcs_r, .Lfunc_end0-_mbstowcs_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
