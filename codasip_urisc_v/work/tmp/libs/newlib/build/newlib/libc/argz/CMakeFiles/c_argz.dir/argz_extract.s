	.text
	.file	"argz_extract.c"
	.globl	argz_extract            //  -- Begin function argz_extract
	.type	argz_extract,@function
argz_extract:                           //  @argz_extract
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	mv fp, x12
	mv x18, x11
	mv x9, x10
	jal argz_count
	sltiu x11, x18, 2
	bltu x0, x11, .LBB0_6
.LBB0_1:                                //  %if.then
	add x11, x18, -2
	beq x0, x11, .LBB0_6
.LBB0_2:                                //  %for.body.preheader
	add x13, x9, x18
	mv x12, x0
	add x13, x13, -1
	lbu x14, -1 ( x13 )
	beq x0, x14, .LBB0_4
.LBB0_5:                                //  %for.inc
	add x13, x13, -1
	add x11, x11, -1
	beq x0, x11, .LBB0_6
.LBB0_3:                                //  %for.body
	lbu x14, -1 ( x13 )
	bltu x0, x14, .LBB0_5
.LBB0_4:                                //  %if.then4
	add x12, x12, 1
	sub x14, x10, x12
	sll x14, x14, 2&31
	add x14, x14, fp
	sw x13, 0 ( x14 )
	add x13, x13, -1
	add x11, x11, -1
	bltu x0, x11, .LBB0_3
.LBB0_6:                                //  %if.end8
	sll x10, x10, 2&31
	sw x9, 0 ( fp )
	add x10, x10, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	argz_extract, .Lfunc_end0-argz_extract
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
