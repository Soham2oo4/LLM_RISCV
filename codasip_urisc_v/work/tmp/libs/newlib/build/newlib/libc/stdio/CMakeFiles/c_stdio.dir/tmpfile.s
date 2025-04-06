	.text
	.file	"tmpfile.c"
	.globl	_tmpfile_r              //  -- Begin function _tmpfile_r
	.type	_tmpfile_r,@function
_tmpfile_r:                             //  @_tmpfile_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -1072
	.cfi_adjust_cfa_offset 1072
	sw fp, 1040 ( sp )              //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv fp, x10
	lui x10, %hi( 68098 )
	sw x9, 1064 ( sp )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 1056 ( sp )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 1048 ( sp )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x20, 1052 ( sp )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x19, sp, 16
	mv x9, x0
	add x20, x10, %lo( 68098 )
	add x21, x0, 384
	sw ra, 1068 ( sp )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 1060 ( sp )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x22, 1044 ( sp )             //  4-byte Folded Spill
	.cfi_offset 22, -28
.LBB0_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, fp
	mv x11, x19
	jal _tmpnam_r
	mv x18, x10
	beq x0, x18, .LBB0_7
.LBB0_2:                                //  %if.end
                                        //    in Loop: Header=BB0_1 Depth=1
	mv x10, fp
	mv x11, x18
	mv x12, x20
	mv x13, x21
	jal _open_r
	mv x22, x10
	bge x22, x0, .LBB0_4
.LBB0_3:                                //  %land.rhs
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x10, 0 ( fp )
	xor x10, x10, 17
	beq x0, x10, .LBB0_1
	jal x0, .LBB0_7
.LBB0_4:                                //  %if.end6
	lui x10, %hi( .str )
	add x12, x10, %lo( .str )
	mv x10, fp
	mv x11, x22
	jal _fdopen_r
	lw x19, 0 ( fp )
	mv x9, x10
	bltu x0, x9, .LBB0_6
.LBB0_5:                                //  %if.then9
	mv x10, fp
	mv x11, x22
	jal _close_r
.LBB0_6:                                //  %if.end11
	mv x10, fp
	mv x11, x18
	jal _remove_r
	sw x19, 0 ( fp )
.LBB0_7:                                //  %cleanup
	mv x10, x9
	lw fp, 1040 ( sp )              //  4-byte Folded Reload
	lw x22, 1044 ( sp )             //  4-byte Folded Reload
	lw x21, 1048 ( sp )             //  4-byte Folded Reload
	lw x20, 1052 ( sp )             //  4-byte Folded Reload
	lw x19, 1056 ( sp )             //  4-byte Folded Reload
	lw x18, 1060 ( sp )             //  4-byte Folded Reload
	lw x9, 1064 ( sp )              //  4-byte Folded Reload
	lw ra, 1068 ( sp )              //  4-byte Folded Reload
	add sp, sp, 1072
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_tmpfile_r, .Lfunc_end0-_tmpfile_r
	.cfi_endproc
                                        //  -- End function
	.globl	tmpfile                 //  -- Begin function tmpfile
	.type	tmpfile,@function
tmpfile:                                //  @tmpfile
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -1072
	.cfi_adjust_cfa_offset 1072
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw fp, 1040 ( sp )              //  4-byte Folded Spill
	.cfi_offset 8, -32
	lw fp, 0 ( x10 )
	lui x10, %hi( 68098 )
	sw x9, 1064 ( sp )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 1056 ( sp )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 1048 ( sp )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x20, 1052 ( sp )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x19, sp, 16
	mv x9, x0
	add x20, x10, %lo( 68098 )
	add x21, x0, 384
	sw ra, 1068 ( sp )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 1060 ( sp )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x22, 1044 ( sp )             //  4-byte Folded Spill
	.cfi_offset 22, -28
.LBB1_1:                                //  %do.body.i
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, fp
	mv x11, x19
	jal _tmpnam_r
	mv x18, x10
	beq x0, x18, .LBB1_7
.LBB1_2:                                //  %if.end.i
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x10, fp
	mv x11, x18
	mv x12, x20
	mv x13, x21
	jal _open_r
	mv x22, x10
	bge x22, x0, .LBB1_4
.LBB1_3:                                //  %land.rhs.i
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 0 ( fp )
	xor x10, x10, 17
	beq x0, x10, .LBB1_1
	jal x0, .LBB1_7
.LBB1_4:                                //  %if.end6.i
	lui x10, %hi( .str )
	add x12, x10, %lo( .str )
	mv x10, fp
	mv x11, x22
	jal _fdopen_r
	lw x19, 0 ( fp )
	mv x9, x10
	bltu x0, x9, .LBB1_6
.LBB1_5:                                //  %if.then9.i
	mv x10, fp
	mv x11, x22
	jal _close_r
.LBB1_6:                                //  %if.end11.i
	mv x10, fp
	mv x11, x18
	jal _remove_r
	sw x19, 0 ( fp )
.LBB1_7:                                //  %_tmpfile_r.exit
	mv x10, x9
	lw fp, 1040 ( sp )              //  4-byte Folded Reload
	lw x22, 1044 ( sp )             //  4-byte Folded Reload
	lw x21, 1048 ( sp )             //  4-byte Folded Reload
	lw x20, 1052 ( sp )             //  4-byte Folded Reload
	lw x19, 1056 ( sp )             //  4-byte Folded Reload
	lw x18, 1060 ( sp )             //  4-byte Folded Reload
	lw x9, 1064 ( sp )              //  4-byte Folded Reload
	lw ra, 1068 ( sp )              //  4-byte Folded Reload
	add sp, sp, 1072
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end1:
	.size	tmpfile, .Lfunc_end1-tmpfile
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"wb+"
	.size	.str, 4

	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
