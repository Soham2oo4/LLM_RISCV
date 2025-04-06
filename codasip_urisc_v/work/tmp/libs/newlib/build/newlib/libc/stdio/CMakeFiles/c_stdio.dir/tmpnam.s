	.text
	.file	"tmpnam.c"
	.globl	_tmpnam_r               //  -- Begin function _tmpnam_r
	.type	_tmpnam_r,@function
_tmpnam_r:                              //  @_tmpnam_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 48 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv x9, x10
	mv fp, x11
	mv x10, x0
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	bne fp, x10, .LBB0_2
.LBB0_1:
	add fp, x9, 20
.LBB0_2:                                //  %entry
	mv x10, x9
	jal _getpid_r
	mv x19, x10
	lui x10, %hi( .str.1 )
	add x20, x10, %lo( .str.1 )
	lui x10, %hi( .str )
	add x21, x10, %lo( .str )
	lui x10, %hi( .str.4 )
	add x22, x10, %lo( .str.4 )
	mv x18, x0
.LBB0_3:                                //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 16 ( x9 )
	sw x19, 20 ( sp )
	sw x20, 16 ( sp )
	sw x21, 12 ( sp )
	sw x10, 24 ( sp )
	sw x22, 8 ( sp )
	sw fp, 4 ( sp )
	sw x9, 0 ( sp )
	jal _sprintf_r
	lw x10, 16 ( x9 )
	mv x13, x18
	mv x11, fp
	mv x12, x18
	add x10, x10, 1
	sw x10, 16 ( x9 )
	mv x10, x9
	jal _open_r
	mv x11, x10
	xor x10, x11, -1
	beq x0, x10, .LBB0_4
.LBB0_6:                                //  %cleanup.i
                                        //    in Loop: Header=BB0_3 Depth=1
	mv x10, x9
	jal _close_r
	jal x0, .LBB0_3
.LBB0_4:                                //  %if.then.i
	lw x10, 0 ( x9 )
	xor x10, x10, 88
	bltu x0, x10, .LBB0_7
.LBB0_5:                                //  %worker.exit.thread
	sb x0, 0 ( fp )
	jal x0, .LBB0_8
.LBB0_7:                                //  %if.then2
	lw x10, 16 ( x9 )
	mv x18, fp
	add x10, x10, 1
	sw x10, 16 ( x9 )
.LBB0_8:                                //  %cleanup
	mv x10, x18
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
	.size	_tmpnam_r, .Lfunc_end0-_tmpnam_r
	.cfi_endproc
                                        //  -- End function
	.globl	_tempnam_r              //  -- Begin function _tempnam_r
	.type	_tempnam_r,@function
_tempnam_r:                             //  @_tempnam_r
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
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 48 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv x18, x12
	mv x19, x11
	mv fp, x10
	mv x9, x0
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	bne x18, x9, .LBB1_2
.LBB1_1:
	lui x10, %hi( .str.2 )
	add x18, x10, %lo( .str.2 )
.LBB1_2:                                //  %entry
	bltu x0, x19, .LBB1_5
.LBB1_3:                                //  %land.lhs.true
	lui x10, %hi( .str.3 )
	add x10, x10, %lo( .str.3 )
	jal getenv
	mv x19, x10
	mv x10, x0
	bne x19, x10, .LBB1_5
.LBB1_4:
	lui x10, %hi( .str )
	add x19, x10, %lo( .str )
.LBB1_5:                                //  %if.end
	mv x10, x19
	jal strlen
	mv x20, x10
	mv x10, x18
	jal strlen
	add x10, x10, x20
	add x11, x10, 19
	mv x10, fp
	jal _malloc_r
	mv x20, x10
	beq x0, x20, .LBB1_12
.LBB1_6:                                //  %if.then9
	mv x10, fp
	jal _getpid_r
	xor x21, fp, x10
	lui x10, %hi( .str.4 )
	add x22, x10, %lo( .str.4 )
	mv x9, x0
.LBB1_7:                                //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 16 ( fp )
	sw x21, 20 ( sp )
	sw x18, 16 ( sp )
	sw x19, 12 ( sp )
	sw x10, 24 ( sp )
	sw x22, 8 ( sp )
	sw x20, 4 ( sp )
	sw fp, 0 ( sp )
	jal _sprintf_r
	lw x10, 16 ( fp )
	mv x13, x9
	mv x11, x20
	mv x12, x9
	add x10, x10, 1
	sw x10, 16 ( fp )
	mv x10, fp
	jal _open_r
	mv x11, x10
	xor x10, x11, -1
	beq x0, x10, .LBB1_8
.LBB1_10:                               //  %cleanup.i
                                        //    in Loop: Header=BB1_7 Depth=1
	mv x10, fp
	jal _close_r
	jal x0, .LBB1_7
.LBB1_8:                                //  %if.then.i
	lw x10, 0 ( fp )
	xor x10, x10, 88
	bltu x0, x10, .LBB1_9
.LBB1_11:                               //  %worker.exit.thread
	sb x0, 0 ( x20 )
	jal x0, .LBB1_12
.LBB1_9:
	mv x9, x20
.LBB1_12:                               //  %cleanup
	mv x10, x9
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
.Lfunc_end1:
	.size	_tempnam_r, .Lfunc_end1-_tempnam_r
	.cfi_endproc
                                        //  -- End function
	.globl	tempnam                 //  -- Begin function tempnam
	.type	tempnam,@function
tempnam:                                //  @tempnam
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _tempnam_r
.Lfunc_end2:
	.size	tempnam, .Lfunc_end2-tempnam
	.cfi_endproc
                                        //  -- End function
	.globl	tmpnam                  //  -- Begin function tmpnam
	.type	tmpnam,@function
tmpnam:                                 //  @tmpnam
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw fp, 48 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv fp, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x9, 0 ( x10 )
	mv x10, x0
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	bne fp, x10, .LBB3_2
.LBB3_1:
	add fp, x9, 20
.LBB3_2:                                //  %entry
	mv x10, x9
	jal _getpid_r
	mv x19, x10
	lui x10, %hi( .str.1 )
	add x20, x10, %lo( .str.1 )
	lui x10, %hi( .str )
	add x21, x10, %lo( .str )
	lui x10, %hi( .str.4 )
	add x22, x10, %lo( .str.4 )
	mv x18, x0
.LBB3_3:                                //  %while.body.i.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 16 ( x9 )
	sw x19, 20 ( sp )
	sw x20, 16 ( sp )
	sw x21, 12 ( sp )
	sw x10, 24 ( sp )
	sw x22, 8 ( sp )
	sw fp, 4 ( sp )
	sw x9, 0 ( sp )
	jal _sprintf_r
	lw x10, 16 ( x9 )
	mv x13, x18
	mv x11, fp
	mv x12, x18
	add x10, x10, 1
	sw x10, 16 ( x9 )
	mv x10, x9
	jal _open_r
	mv x11, x10
	xor x10, x11, -1
	beq x0, x10, .LBB3_4
.LBB3_6:                                //  %cleanup.i.i
                                        //    in Loop: Header=BB3_3 Depth=1
	mv x10, x9
	jal _close_r
	jal x0, .LBB3_3
.LBB3_4:                                //  %if.then.i.i
	lw x10, 0 ( x9 )
	xor x10, x10, 88
	bltu x0, x10, .LBB3_7
.LBB3_5:                                //  %worker.exit.thread.i
	sb x0, 0 ( fp )
	jal x0, .LBB3_8
.LBB3_7:                                //  %if.then2.i
	lw x10, 16 ( x9 )
	mv x18, fp
	add x10, x10, 1
	sw x10, 16 ( x9 )
.LBB3_8:                                //  %_tmpnam_r.exit
	mv x10, x18
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
.Lfunc_end3:
	.size	tmpnam, .Lfunc_end3-tmpnam
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"/tmp"
	.size	.str, 5

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"t"
	.size	.str.1, 2

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.zero	1
	.size	.str.2, 1

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"TMPDIR"
	.size	.str.3, 7

	.address_space	0
	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	"%s/%s%x.%x"
	.size	.str.4, 11


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
