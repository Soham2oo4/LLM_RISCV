	.text
	.file	"fgetws.c"
	.globl	_fgetws_r               //  -- Begin function _fgetws_r
	.type	_fgetws_r,@function
_fgetws_r:                              //  @_fgetws_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x13
	sw fp, 20 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -44
	mv fp, x11
	lhu x11, 12 ( x18 )
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x20, x10
	lui x10, (8192>>12)&1048575
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x12
	and x12, x10, x11
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	bltu x0, x12, .LBB0_2
.LBB0_1:                                //  %if.then7
	or x11, x10, x11
	sh x11, 12 ( x18 )
	lw x11, 100 ( x18 )
	or x10, x10, x11
	sw x10, 100 ( x18 )
.LBB0_2:                                //  %do.end
	bge x0, x19, .LBB0_3
.LBB0_4:                                //  %if.end16
	lw x10, 4 ( x18 )
	mv x9, x0
	bge x0, x10, .LBB0_5
.LBB0_6:                                //  %if.end22
	add x22, x18, 92
	add x23, x0, 10
	add x24, sp, 16
	mv x21, fp
.LBB0_7:                                //  %do.body23
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x18 )
	lw x12, 4 ( x18 )
	mv x11, x23
	sw x10, 16 ( sp )
	jal memchr
	beq x0, x10, .LBB0_9
.LBB0_8:                                //  %cond.true29
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x11, 0 ( x18 )
	sub x10, x10, x11
	add x13, x10, 1
	jal x0, .LBB0_10
.LBB0_9:                                //  %cond.false31
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x13, 4 ( x18 )
.LBB0_10:                               //  %cond.end33
                                        //    in Loop: Header=BB0_7 Depth=1
	add x14, x19, -1
	mv x10, x20
	mv x11, x21
	mv x12, x24
	mv x15, x22
	jal _mbsnrtowcs_r
	mv x25, x10
	xor x10, x25, -1
	beq x0, x10, .LBB0_20
.LBB0_11:                               //  %if.end38
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x11, 16 ( sp )
	bltu x0, x11, .LBB0_13
.LBB0_12:                               //  %if.then41
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x12, 4 ( x18 )
	lw x10, 0 ( x18 )
	mv x11, x9
	jal memchr
	add x11, x10, 1
	add x25, x25, 1
	sw x11, 16 ( sp )
.LBB0_13:                               //  %if.end45
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x10, 0 ( x18 )
	lw x12, 4 ( x18 )
	sw x11, 0 ( x18 )
	sub x19, x19, x25
	sub x10, x10, x11
	sll x11, x25, 2&31
	add x10, x10, x12
	add x21, x11, x21
	slti x11, x19, 2
	sw x10, 4 ( x18 )
	bltu x0, x11, .LBB0_17
.LBB0_14:                               //  %if.end45
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x11, -4 ( x21 )
	xor x11, x11, 10
	beq x0, x11, .LBB0_17
.LBB0_15:                               //  %land.rhs
                                        //    in Loop: Header=BB0_7 Depth=1
	blt x0, x10, .LBB0_7
.LBB0_16:                               //  %lor.rhs
                                        //    in Loop: Header=BB0_7 Depth=1
	mv x10, x20
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB0_7
.LBB0_17:                               //  %do.end66
	beq x21, fp, .LBB0_20
.LBB0_18:                               //  %if.end70
	mv x10, x22
	jal mbsinit
	beq x0, x10, .LBB0_20
.LBB0_19:                               //  %if.end75
	mv x9, fp
	sw x0, 0 ( x21 )
	jal x0, .LBB0_20
.LBB0_3:                                //  %if.then15
	jal __errno
	add x11, x0, 22
	sw x11, 0 ( x10 )
	mv x9, x0
	jal x0, .LBB0_20
.LBB0_5:                                //  %land.lhs.true
	mv x10, x20
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB0_6
.LBB0_20:                               //  %cleanup
	mv x10, x9
	lw fp, 20 ( sp )                //  4-byte Folded Reload
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
	.size	_fgetws_r, .Lfunc_end0-_fgetws_r
	.cfi_endproc
                                        //  -- End function
	.globl	fgetws                  //  -- Begin function fgetws
	.type	fgetws,@function
fgetws:                                 //  @fgetws
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x19, 0 ( x10 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x12
	mv x9, x11
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x19, .LBB1_3
.LBB1_1:                                //  %land.lhs.true
	lw x10, 56 ( x19 )
	bltu x0, x10, .LBB1_3
.LBB1_2:                                //  %if.then
	mv x10, x19
	jal __sinit
.LBB1_3:                                //  %if.end
	mv x10, x19
	mv x11, x18
	mv x12, x9
	mv x13, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	j _fgetws_r
.Lfunc_end1:
	.size	fgetws, .Lfunc_end1-fgetws
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
