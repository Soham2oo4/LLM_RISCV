	.text
	.file	"argz_create_sep.c"
	.globl	argz_create_sep         //  -- Begin function argz_create_sep
	.type	argz_create_sep,@function
argz_create_sep:                        //  @argz_create_sep
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
	sw fp, 16 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv x18, x13
	mv fp, x12
	mv x9, x10
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x0, 0 ( x18 )
	sw x0, 8 ( sp )
	beq x0, x9, .LBB0_2
.LBB0_1:                                //  %lor.lhs.false
	lbu x10, 0 ( x9 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end
	mv x10, x9
	sb x11, 14 ( sp )
	sb x0, 15 ( sp )
	jal strdup
	mv x19, x10
	add x10, sp, 8
	add x11, sp, 14
	sw x19, 8 ( sp )
	jal strsep
	mv x22, x0
	beq x0, x10, .LBB0_6
.LBB0_4:                                //  %while.body.preheader
	add x20, sp, 8
	add x21, sp, 14
.LBB0_5:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	jal strlen
	lw x11, 0 ( x18 )
	add x10, x11, x10
	add x10, x10, 1
	sw x10, 0 ( x18 )
	mv x10, x20
	mv x11, x21
	jal strsep
	add x22, x22, 1
	bltu x0, x10, .LBB0_5
.LBB0_6:                                //  %while.end
	lw x10, 0 ( x18 )
	jal malloc
	sw x10, 0 ( fp )
	beq x0, x10, .LBB0_7
.LBB0_8:                                //  %if.end12
	mv x10, x19
	jal free
	mv x10, x9
	jal strdup
	mv x9, x10
	sw x9, 8 ( sp )
	beq x0, x22, .LBB0_11
.LBB0_9:                                //  %for.body.preheader
	lw fp, 0 ( fp )
	add x18, sp, 8
	add x19, sp, 14
.LBB0_10:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x18
	mv x11, x19
	jal strsep
	mv x20, x10
	jal strlen
	add x21, x10, 1
	mv x10, fp
	mv x11, x20
	mv x12, x21
	jal memcpy
	add fp, x21, fp
	add x22, x22, -1
	bltu x0, x22, .LBB0_10
.LBB0_11:                               //  %for.end
	mv x10, x9
	jal free
	jal x0, .LBB0_12
.LBB0_2:                                //  %if.then
	sw x0, 0 ( fp )
.LBB0_12:                               //  %cleanup
	mv x10, x0
.LBB0_13:                               //  %cleanup
	lw fp, 16 ( sp )                //  4-byte Folded Reload
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
.LBB0_7:
	add x10, x0, 12
	jal x0, .LBB0_13
.Lfunc_end0:
	.size	argz_create_sep, .Lfunc_end0-argz_create_sep
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
