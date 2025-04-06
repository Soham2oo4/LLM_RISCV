	.text
	.file	"wcstombs_r.c"
	.globl	_wcstombs_r             //  -- Begin function _wcstombs_r
	.type	_wcstombs_r,@function
_wcstombs_r:                            //  @_wcstombs_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw fp, 16 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -48
	mv fp, x14
	mv x21, x13
	mv x19, x12
	mv x20, x11
	mv x18, x10
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	beq x0, x20, .LBB0_13
.LBB0_1:                                //  %while.cond5.preheader
	beq x0, x21, .LBB0_18
.LBB0_2:
	lui x10, %hi( __global_locale )
	add x23, x10, %lo( __global_locale )
	add x22, sp, 8
	add x9, x0, -1
	mv x25, x0
	mv x24, x20
	mv x26, x21
.LBB0_3:                                //  %while.body7
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_8 Depth 2
	lw x12, 0 ( x19 )
	lw x14, 224 ( x23 )
	mv x10, x18
	mv x11, x22
	mv x13, fp
	call.reg x14
	xor x11, x10, -1
	beq x0, x11, .LBB0_21
.LBB0_4:                                //  %if.end14
                                        //    in Loop: Header=BB0_3 Depth=1
	mv x11, x10
	bltu x10, x26, .LBB0_6
.LBB0_5:                                //  %if.end14
                                        //    in Loop: Header=BB0_3 Depth=1
	mv x11, x26
.LBB0_6:                                //  %if.end14
                                        //    in Loop: Header=BB0_3 Depth=1
	bge x0, x11, .LBB0_10
.LBB0_7:                                //  %for.body.preheader
                                        //    in Loop: Header=BB0_3 Depth=1
	mv x12, x25
.LBB0_8:                                //  %for.body
                                        //    Parent Loop BB0_3 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x14, x12, x22
	lb x14, 0 ( x14 )
	add x13, x12, x24
	add x12, x12, 1
	sb x14, 0 ( x13 )
	blt x12, x11, .LBB0_8
.LBB0_9:                                //  %for.end.loopexit
                                        //    in Loop: Header=BB0_3 Depth=1
	add x24, x12, x24
.LBB0_10:                               //  %for.end
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x12, 0 ( x19 )
	beq x0, x12, .LBB0_19
.LBB0_11:                               //  %if.end21
                                        //    in Loop: Header=BB0_3 Depth=1
	sub x26, x26, x11
	add x19, x19, 4
	bltu x0, x26, .LBB0_3
.LBB0_12:
	mv x9, x21
	jal x0, .LBB0_21
.LBB0_13:                               //  %while.cond.preheader
	lw x12, 0 ( x19 )
	beq x0, x12, .LBB0_18
.LBB0_14:                               //  %while.body.preheader
	lui x10, %hi( __global_locale )
	add x20, x19, 4
	mv x9, x0
	add x21, x10, %lo( __global_locale )
	add x19, sp, 8
	add x22, x0, -1
.LBB0_15:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x14, 224 ( x21 )
	mv x10, x18
	mv x11, x19
	mv x13, fp
	call.reg x14
	xor x11, x10, -1
	beq x0, x11, .LBB0_20
.LBB0_16:                               //  %if.end
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x12, 0 ( x20 )
	add x9, x9, x10
	add x10, x20, 4
	mv x20, x10
	bltu x0, x12, .LBB0_15
	jal x0, .LBB0_21
.LBB0_18:
	mv x9, x0
	jal x0, .LBB0_21
.LBB0_19:                               //  %if.then19
	sltu x10, x26, x10
	xor x10, x10, 1
	add x10, x10, x20
	sub x9, x24, x10
	jal x0, .LBB0_21
.LBB0_20:
	mv x9, x22
.LBB0_21:                               //  %cleanup25
	mv x10, x9
	lw fp, 16 ( sp )                //  4-byte Folded Reload
	lw x26, 20 ( sp )               //  4-byte Folded Reload
	lw x25, 24 ( sp )               //  4-byte Folded Reload
	lw x24, 28 ( sp )               //  4-byte Folded Reload
	lw x23, 32 ( sp )               //  4-byte Folded Reload
	lw x22, 36 ( sp )               //  4-byte Folded Reload
	lw x21, 40 ( sp )               //  4-byte Folded Reload
	lw x20, 44 ( sp )               //  4-byte Folded Reload
	lw x19, 48 ( sp )               //  4-byte Folded Reload
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	lw x9, 56 ( sp )                //  4-byte Folded Reload
	lw ra, 60 ( sp )                //  4-byte Folded Reload
	add sp, sp, 64
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_wcstombs_r, .Lfunc_end0-_wcstombs_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
