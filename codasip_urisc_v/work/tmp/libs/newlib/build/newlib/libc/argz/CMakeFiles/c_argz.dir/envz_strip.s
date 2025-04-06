	.text
	.file	"envz_strip.c"
	.globl	envz_strip              //  -- Begin function envz_strip
	.type	envz_strip,@function
envz_strip:                             //  @envz_strip
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv fp, x10
	lw x11, 0 ( x9 )
	lw x10, 0 ( fp )
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x20, x0
	mv x12, x20
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	jal argz_next
	mv x18, x10
	beq x0, x18, .LBB0_10
.LBB0_1:                                //  %while.body.preheader
	add x19, x0, 61
	seqz x21, x0
	mv x10, x18
	mv x11, x19
	jal strchr
	beq x0, x10, .LBB0_4
.LBB0_3:                                //  %while.body.if.end12_crit_edge
	lw x11, 0 ( x9 )
.LBB0_7:                                //  %if.end12
	lw x10, 0 ( fp )
	mv x12, x18
	jal argz_next
	mv x18, x10
	beq x0, x18, .LBB0_8
.LBB0_2:                                //  %while.body
	mv x10, x18
	mv x11, x19
	jal strchr
	bltu x0, x10, .LBB0_3
.LBB0_4:                                //  %if.then
	mv x10, x18
	jal strlen
	lw x11, 0 ( x9 )
	lw x12, 0 ( fp )
	add x20, x10, 1
	add x13, x10, x18
	add x12, x11, x12
	beq x12, x13, .LBB0_6
.LBB0_5:                                //  %if.then7
	xor x10, x10, -1
	sub x10, x10, x18
	add x12, x12, x10
	add x11, x20, x18
	mv x10, x18
	jal memmove
	lw x11, 0 ( x9 )
.LBB0_6:                                //  %if.end
	sub x11, x11, x20
	mv x20, x21
	sw x11, 0 ( x9 )
	jal x0, .LBB0_7
.LBB0_8:                                //  %while.end
	beq x0, x20, .LBB0_10
.LBB0_9:                                //  %if.then14
	lw x11, 0 ( x9 )
	lw x10, 0 ( fp )
	jal realloc
	sw x10, 0 ( fp )
.LBB0_10:                               //  %if.end16
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	envz_strip, .Lfunc_end0-envz_strip
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
