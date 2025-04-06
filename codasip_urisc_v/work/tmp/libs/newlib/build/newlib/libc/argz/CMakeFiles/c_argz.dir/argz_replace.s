	.text
	.file	"argz_replace.c"
	.globl	argz_replace            //  -- Begin function argz_replace
	.type	argz_replace,@function
argz_replace:                           //  @argz_replace
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	mv x21, x12
	sw fp, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x10
	mv x10, x21
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	mv x22, x14
	mv x20, x13
	mv x9, x11
	jal strlen
	mv x23, x10
	mv x10, x20
	jal strlen
	mv x24, x10
	lw x10, 0 ( fp )
	mv x18, x0
	sw x10, 24 ( sp )
	lw x10, 0 ( x9 )
	sw x0, 0 ( x22 )
	sw x10, 20 ( sp )
	beq x0, x10, .LBB0_19
.LBB0_1:                                //  %while.body.preheader
	lw x19, 0 ( x9 )
	sub x27, x24, x23
	add x25, sp, 24
	add x26, sp, 20
	jal x0, .LBB0_2
.LBB0_4:                                //  %if.end
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x10, 20 ( sp )
	beq x0, x10, .LBB0_5
.LBB0_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x21
	mv x11, x25
	mv x12, x26
	jal _buf_findstr
	beq x0, x10, .LBB0_4
.LBB0_3:                                //  %if.then
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x10, 0 ( x22 )
	add x19, x19, x27
	add x10, x10, 1
	sw x10, 0 ( x22 )
	jal x0, .LBB0_4
.LBB0_5:                                //  %while.end
	lw x10, 0 ( x22 )
	beq x0, x10, .LBB0_19
.LBB0_6:                                //  %if.then6
	mv x10, x19
	jal malloc
	add x18, x0, 12
	beq x0, x10, .LBB0_19
.LBB0_7:                                //  %if.end10
	lw x12, 0 ( fp )
	lw x11, 0 ( x9 )
	sw x10, 16 ( sp )               //  4-byte Folded Spill
	sw x12, 24 ( sp )
	sw x11, 20 ( sp )
	beq x0, x11, .LBB0_8
.LBB0_9:                                //  %while.body13.preheader
	add x27, sp, 24
	add x22, sp, 20
	mv x25, x10
	mv x26, x12
	jal x0, .LBB0_10
.LBB0_12:                               //  %if.end25
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x10, 20 ( sp )
	beq x0, x10, .LBB0_13
.LBB0_10:                               //  %while.body13
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x21
	mv x11, x27
	mv x12, x22
	jal _buf_findstr
	beq x0, x10, .LBB0_12
.LBB0_11:                               //  %if.then16
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x10, 24 ( sp )
	add x18, x26, x23
	mv x11, x26
	sub x12, x10, x18
	mv x10, x25
	jal memcpy
	lw x10, 24 ( sp )
	mv x11, x20
	mv x12, x24
	sub x10, x10, x18
	add x25, x10, x25
	mv x10, x25
	jal memcpy
	lw x26, 24 ( sp )
	add x25, x24, x25
	jal x0, .LBB0_12
.LBB0_13:                               //  %while.end26.loopexit
	lw x11, 0 ( x9 )
	lw x12, 0 ( fp )
	add x18, x0, 12
	jal x0, .LBB0_14
.LBB0_8:
	mv x11, x0
	mv x26, x12
	mv x25, x10
.LBB0_14:                               //  %while.end26
	add x10, x11, x12
	sub x12, x10, x26
	mv x10, x25
	mv x11, x26
	jal memcpy
	lw x10, 0 ( fp )
	mv x11, x19
	jal realloc
	beq x0, x10, .LBB0_15
.LBB0_16:                               //  %if.end35
	lw x18, 16 ( sp )               //  4-byte Folded Reload
	mv x12, x19
	sw x10, 0 ( fp )
	mv x11, x18
	jal memcpy
	sw x19, 0 ( x9 )
	bltu x0, x19, .LBB0_18
.LBB0_17:                               //  %if.then37
	lw x10, 0 ( fp )
	jal free
	sw x0, 0 ( fp )
.LBB0_18:                               //  %if.end38
	mv x10, x18
	jal free
	mv x18, x0
	jal x0, .LBB0_19
.LBB0_15:                               //  %if.then34
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	jal free
.LBB0_19:                               //  %cleanup
	mv x10, x18
	lw fp, 28 ( sp )                //  4-byte Folded Reload
	lw x27, 32 ( sp )               //  4-byte Folded Reload
	lw x26, 36 ( sp )               //  4-byte Folded Reload
	lw x25, 40 ( sp )               //  4-byte Folded Reload
	lw x24, 44 ( sp )               //  4-byte Folded Reload
	lw x23, 48 ( sp )               //  4-byte Folded Reload
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
	.size	argz_replace, .Lfunc_end0-argz_replace
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
