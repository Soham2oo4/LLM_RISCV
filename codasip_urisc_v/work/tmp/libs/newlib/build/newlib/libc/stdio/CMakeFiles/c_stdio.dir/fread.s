	.text
	.file	"fread.c"
	.globl	_fread_r                //  -- Begin function _fread_r
	.type	_fread_r,@function
_fread_r:                               //  @_fread_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -44
	mv fp, x13
	mv x18, x12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	mv x21, x11
	mv x19, x10
	mv x10, fp
	mv x11, x18
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 25, -40
	mv x9, x14
	jal __mulsi3
	mv x20, x10
	beq x0, x20, .LBB0_1
.LBB0_2:                                //  %do.body
	beq x0, x19, .LBB0_5
.LBB0_3:                                //  %land.lhs.true
	lw x10, 56 ( x19 )
	beq x0, x10, .LBB0_4
.LBB0_5:                                //  %if.end3
	lhu x10, 12 ( x9 )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	beq x0, x12, .LBB0_6
.LBB0_7:                                //  %do.end22
	lw x22, 4 ( x9 )
	blt x22, x0, .LBB0_8
.LBB0_9:                                //  %if.end27
	and x10, x10, 2
	bltu x0, x10, .LBB0_12
.LBB0_10:                               //  %while.cond104.preheader
	lw x11, 0 ( x9 )
	bgeu x22, x20, .LBB0_11
.LBB0_23:
	mv x23, x20
.LBB0_24:                               //  %while.body108
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x21
	mv x12, x22
	jal memcpy
	lw x10, 0 ( x9 )
	mv x11, x9
	sub x23, x23, x22
	add x10, x22, x10
	sw x10, 0 ( x9 )
	mv x10, x19
	jal __srefill_r
	bltu x0, x10, .LBB0_22
.LBB0_25:                               //  %while.body108.while.cond104_crit_edge
                                        //    in Loop: Header=BB0_24 Depth=1
	add x21, x22, x21
	lw x11, 0 ( x9 )
	lw x22, 4 ( x9 )
	bltu x22, x23, .LBB0_24
	jal x0, .LBB0_26
.LBB0_1:
	mv fp, x0
	jal x0, .LBB0_27
.LBB0_4:                                //  %if.then2
	mv x10, x19
	jal __sinit
	lhu x10, 12 ( x9 )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB0_7
.LBB0_6:                                //  %if.then14
	lw x12, 100 ( x9 )
	lui x13, %hi( -8193 )
	add x13, x13, %lo( -8193 )
	or x10, x11, x10
	and x12, x13, x12
	sw x12, 100 ( x9 )
	sh x10, 12 ( x9 )
	lw x22, 4 ( x9 )
	bge x22, x0, .LBB0_9
.LBB0_8:                                //  %if.then25
	mv x22, x0
	sw x0, 4 ( x9 )
	and x10, x10, 2
	beq x0, x10, .LBB0_10
.LBB0_12:                               //  %if.then32
	bltu x22, x20, .LBB0_14
.LBB0_13:                               //  %if.then32
	mv x22, x20
.LBB0_14:                               //  %if.then32
	lw x11, 0 ( x9 )
	mv x10, x21
	mv x12, x22
	jal memcpy
	lw x10, 0 ( x9 )
	sub x23, x20, x22
	add x10, x22, x10
	sw x10, 0 ( x9 )
	lw x10, 4 ( x9 )
	sub x10, x10, x22
	sw x10, 4 ( x9 )
	beq x0, x23, .LBB0_19
.LBB0_15:                               //  %if.then32
	lw x11, 48 ( x9 )
	beq x0, x11, .LBB0_19
.LBB0_16:                               //  %if.then49
	add x10, x9, 64
	beq x11, x10, .LBB0_18
.LBB0_17:                               //  %if.then54
	mv x10, x19
	jal _free_r
.LBB0_18:                               //  %if.end57
	sw x0, 48 ( x9 )
.LBB0_19:                               //  %if.end60
	add x21, x22, x21
.LBB0_20:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x23, .LBB0_27
.LBB0_21:                               //  %while.body
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x22, 20 ( x9 )
	lw x24, 16 ( x9 )
	lw x25, 0 ( x9 )
	mv x10, x19
	mv x11, x9
	sw x23, 20 ( x9 )
	sw x21, 16 ( x9 )
	sw x21, 0 ( x9 )
	jal __srefill_r
	lw x11, 4 ( x9 )
	sw x22, 20 ( x9 )
	sw x24, 16 ( x9 )
	sw x25, 0 ( x9 )
	add x21, x11, x21
	sub x23, x23, x11
	sw x0, 4 ( x9 )
	beq x0, x10, .LBB0_20
.LBB0_22:                               //  %cleanup101
	sub x10, x20, x23
	mv x11, x18
	jal __udivsi3
	mv fp, x10
	jal x0, .LBB0_27
.LBB0_11:
	mv x23, x20
.LBB0_26:                               //  %while.end133
	mv x10, x21
	mv x12, x23
	jal memcpy
	lw x10, 4 ( x9 )
	sub x10, x10, x23
	sw x10, 4 ( x9 )
	lw x10, 0 ( x9 )
	add x10, x23, x10
	sw x10, 0 ( x9 )
.LBB0_27:                               //  %cleanup153
	mv x10, fp
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x25, 8 ( sp )                //  4-byte Folded Reload
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
	.size	_fread_r, .Lfunc_end0-_fread_r
	.cfi_endproc
                                        //  -- End function
	.globl	fread                   //  -- Begin function fread
	.type	fread,@function
fread:                                  //  @fread
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x14, x13
	mv x13, x12
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _fread_r
.Lfunc_end1:
	.size	fread, .Lfunc_end1-fread
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
