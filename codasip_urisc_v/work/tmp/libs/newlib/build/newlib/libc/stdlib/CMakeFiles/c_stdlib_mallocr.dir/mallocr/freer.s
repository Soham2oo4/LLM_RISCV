	.text
	.file	"freer.c"
	.globl	_free_r                 //  -- Begin function _free_r
	.type	_free_r,@function
_free_r:                                //  @_free_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv x9, x11
	mv fp, x10
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	beq x0, x9, .LBB0_21
.LBB0_1:                                //  %if.end
	lw x18, -4 ( x9 )
	mv x10, fp
	jal __malloc_lock
	add x10, x9, -4
	mv x11, x0
	bge x18, x11, .LBB0_3
.LBB0_2:
	add x10, x18, x10
.LBB0_3:                                //  %if.end
	lui x11, %hi( __malloc_free_list )
	add x12, x11, %lo( __malloc_free_list )
	lw x11, 0 ( x12 )
	beq x0, x11, .LBB0_4
.LBB0_5:                                //  %if.end3
	bgeu x10, x11, .LBB0_9
.LBB0_6:                                //  %if.then5
	lw x13, 0 ( x10 )
	add x14, x13, x10
	bne x14, x11, .LBB0_8
.LBB0_7:                                //  %if.then7
	lw x14, 0 ( x11 )
	lw x11, 4 ( x11 )
	add x13, x13, x14
	sw x13, 0 ( x10 )
.LBB0_8:                                //  %if.else
	sw x11, 4 ( x10 )
	sw x10, 0 ( x12 )
	jal x0, .LBB0_20
.LBB0_9:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x12, x11
	lw x11, 4 ( x12 )
	beq x0, x11, .LBB0_11
.LBB0_10:                               //  %do.body
                                        //    in Loop: Header=BB0_9 Depth=1
	bgeu x10, x11, .LBB0_9
.LBB0_11:                               //  %do.end
	lw x13, 0 ( x12 )
	add x14, x13, x12
	beq x14, x10, .LBB0_12
.LBB0_14:                               //  %if.else34
	bgeu x10, x14, .LBB0_16
.LBB0_15:                               //  %if.then38
	add x10, x0, 12
	sw x10, 0 ( fp )
	jal x0, .LBB0_20
.LBB0_4:                                //  %if.then2
	sw x10, 0 ( x12 )
	sw x0, 4 ( x10 )
	jal x0, .LBB0_20
.LBB0_12:                               //  %if.then20
	lw x10, 0 ( x10 )
	add x10, x13, x10
	add x13, x10, x12
	sw x10, 0 ( x12 )
	bne x13, x11, .LBB0_20
.LBB0_13:                               //  %if.then27
	lw x13, 0 ( x11 )
	add x10, x10, x13
	sw x10, 0 ( x12 )
	lw x10, 4 ( x11 )
	jal x0, .LBB0_19
.LBB0_16:                               //  %if.else39
	lw x13, 0 ( x10 )
	add x14, x13, x10
	beq x14, x11, .LBB0_17
.LBB0_18:                               //  %if.else50
	sw x11, 4 ( x10 )
	jal x0, .LBB0_19
.LBB0_17:                               //  %if.then43
	lw x14, 4 ( x11 )
	lw x11, 0 ( x11 )
	sw x14, 4 ( x10 )
	add x11, x13, x11
	sw x11, 0 ( x10 )
.LBB0_19:                               //  %cleanup.sink.split
	sw x10, 4 ( x12 )
.LBB0_20:                               //  %cleanup.sink.split
	mv x10, fp
	jal __malloc_unlock
.LBB0_21:                               //  %cleanup
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_free_r, .Lfunc_end0-_free_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
