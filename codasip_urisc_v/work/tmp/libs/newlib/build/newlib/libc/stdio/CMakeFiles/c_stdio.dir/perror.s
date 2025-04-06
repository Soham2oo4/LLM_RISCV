	.text
	.file	"perror.c"
	.globl	_perror_r               //  -- Begin function _perror_r
	.type	_perror_r,@function
_perror_r:                              //  @_perror_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	lw fp, 12 ( x9 )
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x11
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	beq x0, x9, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x10, 56 ( x9 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end
	mv x10, x9
	mv x11, fp
	jal _fflush_r
	beq x0, x18, .LBB0_15
.LBB0_4:                                //  %land.lhs.true8
	lbu x10, 0 ( x18 )
	beq x0, x10, .LBB0_15
.LBB0_5:                                //  %if.then12
	mv x10, x18
	mv x20, x0
	jal strlen
	mv x19, x10
	bltu x0, x19, .LBB0_7
	jal x0, .LBB0_10
.LBB0_9:                                //  %while.body
                                        //    in Loop: Header=BB0_7 Depth=1
	sub x19, x19, x11
	add x18, x10, x18
	blt x10, x0, .LBB0_10
.LBB0_6:                                //  %while.cond
                                        //    in Loop: Header=BB0_7 Depth=1
	beq x0, x19, .LBB0_10
.LBB0_7:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, fp
	jal fileno
	mv x11, x10
	mv x10, x9
	mv x12, x18
	mv x13, x19
	jal _write_r
	mv x11, x20
	blt x10, x20, .LBB0_9
.LBB0_8:                                //  %while.body
                                        //    in Loop: Header=BB0_7 Depth=1
	mv x11, x10
	jal x0, .LBB0_9
.LBB0_10:                               //  %while.end
	lui x10, %hi( .str )
	add x18, x10, %lo( .str )
	mv x10, x18
	jal strlen
	mv x19, x10
	mv x20, x0
	bltu x0, x19, .LBB0_12
	jal x0, .LBB0_15
.LBB0_14:                               //  %while.body26
                                        //    in Loop: Header=BB0_12 Depth=1
	sub x19, x19, x11
	add x18, x10, x18
	blt x10, x0, .LBB0_15
.LBB0_11:                               //  %while.cond24
                                        //    in Loop: Header=BB0_12 Depth=1
	beq x0, x19, .LBB0_15
.LBB0_12:                               //  %while.body26
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, fp
	jal fileno
	mv x11, x10
	mv x10, x9
	mv x12, x18
	mv x13, x19
	jal _write_r
	mv x11, x20
	blt x10, x20, .LBB0_14
.LBB0_13:                               //  %while.body26
                                        //    in Loop: Header=BB0_12 Depth=1
	mv x11, x10
	jal x0, .LBB0_14
.LBB0_2:                                //  %if.then
	mv x10, x9
	jal __sinit
	mv x10, x9
	mv x11, fp
	jal _fflush_r
	bltu x0, x18, .LBB0_4
.LBB0_15:                               //  %if.end40
	lw x11, 0 ( x9 )
	seqz x12, x0
	add x13, sp, 4
	mv x10, x9
	jal _strerror_r
	mv x18, x10
	beq x0, x18, .LBB0_21
.LBB0_16:                               //  %if.then44
	mv x10, x18
	jal strlen
	mv x19, x10
	mv x20, x0
	bltu x0, x19, .LBB0_18
	jal x0, .LBB0_21
.LBB0_20:                               //  %while.body50
                                        //    in Loop: Header=BB0_18 Depth=1
	sub x19, x19, x11
	add x18, x10, x18
	blt x10, x0, .LBB0_21
.LBB0_17:                               //  %while.cond48
                                        //    in Loop: Header=BB0_18 Depth=1
	beq x0, x19, .LBB0_21
.LBB0_18:                               //  %while.body50
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, fp
	jal fileno
	mv x11, x10
	mv x10, x9
	mv x12, x18
	mv x13, x19
	jal _write_r
	mv x11, x20
	blt x10, x20, .LBB0_20
.LBB0_19:                               //  %while.body50
                                        //    in Loop: Header=BB0_18 Depth=1
	mv x11, x10
	jal x0, .LBB0_20
.LBB0_21:                               //  %if.end64
	lui x10, %hi( .str.1 )
	add x18, x10, %lo( .str.1 )
	mv x10, x18
	jal strlen
	mv x19, x10
	mv x20, x0
	bltu x0, x19, .LBB0_23
	jal x0, .LBB0_26
.LBB0_25:                               //  %while.body70
                                        //    in Loop: Header=BB0_23 Depth=1
	sub x19, x19, x11
	add x18, x10, x18
	blt x10, x0, .LBB0_26
.LBB0_22:                               //  %while.cond68
                                        //    in Loop: Header=BB0_23 Depth=1
	beq x0, x19, .LBB0_26
.LBB0_23:                               //  %while.body70
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, fp
	jal fileno
	mv x11, x10
	mv x10, x9
	mv x12, x18
	mv x13, x19
	jal _write_r
	mv x11, x20
	blt x10, x20, .LBB0_25
.LBB0_24:                               //  %while.body70
                                        //    in Loop: Header=BB0_23 Depth=1
	mv x11, x10
	jal x0, .LBB0_25
.LBB0_26:                               //  %while.end83
	lhu x10, 12 ( fp )
	lui x11, %hi( 61439 )
	add x11, x11, %lo( 61439 )
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	and x10, x11, x10
	sh x10, 12 ( fp )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_perror_r, .Lfunc_end0-_perror_r
	.cfi_endproc
                                        //  -- End function
	.globl	perror                  //  -- Begin function perror
	.type	perror,@function
perror:                                 //  @perror
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _perror_r
.Lfunc_end1:
	.size	perror, .Lfunc_end1-perror
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	": "
	.size	.str, 3

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"\n"
	.size	.str.1, 2

	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
