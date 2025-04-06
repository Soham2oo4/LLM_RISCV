	.text
	.file	"wsetup.c"
	.globl	__swsetup_r             //  -- Begin function __swsetup_r
	.type	__swsetup_r,@function
__swsetup_r:                            //  @__swsetup_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x11
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x11, 56 ( x10 )
	bltu x0, x11, .LBB0_3
.LBB0_2:                                //  %if.then
	jal __sinit
.LBB0_3:                                //  %if.end
	lh x10, 12 ( fp )
	lui x11, %hi( 65535 )
	add x11, x11, %lo( 65535 )
	and x12, x11, x10
	and x11, x10, 8
	bltu x0, x11, .LBB0_13
.LBB0_4:                                //  %if.then3
	and x11, x10, 16
	bltu x0, x11, .LBB0_6
.LBB0_5:                                //  %if.then9
	add x10, x0, 9
	sw x10, 0 ( x9 )
	jal x0, .LBB0_24
.LBB0_6:                                //  %if.end13
	and x10, x10, 4
	beq x0, x10, .LBB0_12
.LBB0_7:                                //  %if.then18
	lw x11, 48 ( fp )
	beq x0, x11, .LBB0_11
.LBB0_8:                                //  %if.then21
	add x10, fp, 64
	beq x11, x10, .LBB0_10
.LBB0_9:                                //  %if.then26
	mv x10, x9
	jal _free_r
	lhu x12, 12 ( fp )
.LBB0_10:                               //  %if.end29
	sw x0, 48 ( fp )
.LBB0_11:                               //  %if.end32
	lw x10, 16 ( fp )
	sw x0, 4 ( fp )
	sw x10, 0 ( fp )
	lui x10, %hi( 65499 )
	add x10, x10, %lo( 65499 )
	and x12, x10, x12
	sh x12, 12 ( fp )
.LBB0_12:                               //  %if.end38
	or x12, x12, 8
	sh x12, 12 ( fp )
.LBB0_13:                               //  %if.end43
	lw x10, 16 ( fp )
	bltu x0, x10, .LBB0_16
.LBB0_14:                               //  %if.end43
	and x10, x12, 640
	xor x10, x10, 512
	beq x0, x10, .LBB0_16
.LBB0_15:                               //  %if.then57
	mv x10, x9
	mv x11, fp
	jal __smakebuf_r
	lhu x12, 12 ( fp )
.LBB0_16:                               //  %if.end58
	sll x10, x12, 16&31
	sra x10, x10, 16&31
	and x11, x10, 1
	bltu x0, x11, .LBB0_17
.LBB0_18:                               //  %if.else
	and x10, x10, 2
	bltu x0, x10, .LBB0_19
.LBB0_20:                               //  %cond.false
	lw x10, 20 ( fp )
	sw x10, 8 ( fp )
	mv x10, x0
	and x11, x12, 128
	bltu x0, x11, .LBB0_23
	jal x0, .LBB0_25
.LBB0_17:                               //  %if.then63
	lw x10, 20 ( fp )
	sw x0, 8 ( fp )
	sub x10, x0, x10
	sw x10, 24 ( fp )
	mv x10, x0
	and x11, x12, 128
	beq x0, x11, .LBB0_25
.LBB0_23:                               //  %if.end72
	lw x11, 16 ( fp )
	bltu x0, x11, .LBB0_25
.LBB0_24:                               //  %return.sink.split
	or x10, x12, 64
	sh x10, 12 ( fp )
	add x10, x0, -1
.LBB0_25:                               //  %return
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_19:
	mv x10, x0
	sw x10, 8 ( fp )
	mv x10, x0
	and x11, x12, 128
	bltu x0, x11, .LBB0_23
	jal x0, .LBB0_25
.Lfunc_end0:
	.size	__swsetup_r, .Lfunc_end0-__swsetup_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
