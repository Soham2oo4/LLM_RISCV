	.text
	.file	"gmtime_r.c"
	.globl	gmtime_r                //  -- Begin function gmtime_r
	.type	gmtime_r,@function
gmtime_r:                               //  @gmtime_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x19, 0 ( x10 )
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x11
	lw x11, 4 ( x10 )
	lui x12, %hi( 86400 )
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x0
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x21, x12, %lo( 86400 )
	mv x10, x19
	mv x12, x21
	mv x13, x9
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
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
	sw x27, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	jal __divdi3
	mv x12, x21
	mv x13, x9
	mv x18, x10
	jal __muldi3
	sub x20, x19, x10
	blt x20, x9, .LBB0_1
.LBB0_2:                                //  %entry
	lui x10, %hi( 719468 )
	add x10, x10, %lo( 719468 )
	add x27, x18, x10
	add x11, x0, -1
	mv x10, x27
	bge x11, x27, .LBB0_4
	jal x0, .LBB0_5
.LBB0_1:
	lui x10, %hi( 719467 )
	add x10, x10, %lo( 719467 )
	add x27, x18, x10
	add x11, x0, -1
	mv x10, x27
	blt x11, x27, .LBB0_5
.LBB0_4:                                //  %entry
	lui x10, %hi( -146096 )
	add x10, x10, %lo( -146096 )
	add x10, x10, x27
.LBB0_5:                                //  %entry
	lui x11, %hi( 146097 )
	add x11, x11, %lo( 146097 )
	jal __divsi3
	mv x18, x10
	lui x10, %hi( -146097 )
	add x11, x10, %lo( -146097 )
	mv x10, x18
	jal __mulsi3
	add x19, x27, x10
	add x22, x0, 1460
	mv x10, x19
	mv x11, x22
	jal __udivsi3
	sub x23, x19, x10
	lui x10, %hi( 36524 )
	add x11, x10, %lo( 36524 )
	mv x10, x19
	jal __udivsi3
	add x23, x10, x23
	lui x10, %hi( 146096 )
	add x11, x10, %lo( 146096 )
	mv x10, x19
	jal __udivsi3
	sub x23, x23, x10
	mv x10, x23
	mv x11, x22
	jal __udivsi3
	mv x22, x10
	lui x10, %hi( 36500 )
	add x11, x10, %lo( 36500 )
	mv x10, x23
	jal __udivsi3
	sub x11, x19, x22
	add x22, x10, x11
	add x11, x0, 365
	mv x10, x23
	jal __udivsi3
	add x11, x0, -365
	mv x19, x10
	jal __mulsi3
	add x22, x10, x22
	add x11, x0, 5
	mv x10, x22
	jal __mulsi3
	add x24, x10, 2
	add x10, x0, 1530
	bltu x24, x10, .LBB0_6
.LBB0_7:                                //  %entry
	add x23, x0, -10
	blt x20, x9, .LBB0_9
	jal x0, .LBB0_10
.LBB0_6:
	add x23, x0, 2
	bge x20, x9, .LBB0_10
.LBB0_9:
	add x20, x21, x20
.LBB0_10:                               //  %entry
	lui x10, %hi( 3600 )
	add x25, x10, %lo( 3600 )
	mv x10, x20
	mv x11, x25
	jal __divsi3
	mv x11, x25
	mv x21, x10
	jal __mulsi3
	sub x20, x20, x10
	add x26, x0, 60
	mv x10, x20
	mv x11, x26
	jal __divsi3
	mv x11, x26
	mv x25, x10
	jal __mulsi3
	mv x26, x10
	add x10, x27, 3
	add x11, x0, 7
	jal __modsi3
	bge x10, x9, .LBB0_12
.LBB0_11:
	add x10, x10, 7
.LBB0_12:                               //  %entry
	sub x11, x20, x26
	add x9, x0, 153
	sw x10, 24 ( fp )
	sw x11, 0 ( fp )
	mv x10, x24
	mv x11, x9
	sw x21, 8 ( fp )
	sw x25, 4 ( fp )
	jal __udivsi3
	mv x11, x9
	add x21, x10, x23
	jal __mulsi3
	add x10, x10, 2
	add x11, x0, 5
	sltiu x23, x21, 2
	jal __udivsi3
	mv x20, x10
	add x11, x0, 400
	mv x10, x18
	jal __mulsi3
	mv x9, x10
	sub x10, x22, x20
	add x18, x10, 1
	sltiu x10, x22, 306
	bltu x0, x10, .LBB0_14
.LBB0_13:                               //  %cond.true53
	add x10, x22, -306
	jal x0, .LBB0_19
.LBB0_14:                               //  %cond.false55
	add x11, x0, 100
	mv x10, x19
	jal __umodsi3
	add x20, x22, 59
	and x11, x19, 3
	bltu x0, x11, .LBB0_17
.LBB0_15:                               //  %cond.false55
	beq x0, x10, .LBB0_17
.LBB0_16:
	seqz x10, x0
	jal x0, .LBB0_18
.LBB0_17:                               //  %lor.rhs
	add x11, x0, 400
	mv x10, x19
	jal __umodsi3
	seqz x10, x10
.LBB0_18:                               //  %lor.end
	add x10, x10, x20
.LBB0_19:                               //  %cond.end68
	add x11, x19, x9
	add x11, x23, x11
	add x11, x11, -1900
	sw x10, 28 ( fp )
	sw x21, 16 ( fp )
	sw x18, 12 ( fp )
	sw x11, 20 ( fp )
	sw x0, 32 ( fp )
	mv x10, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x27, 16 ( sp )               //  4-byte Folded Reload
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
	.size	gmtime_r, .Lfunc_end0-gmtime_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
