	.text
	.file	"strcat.c"
	.globl	strcat                  //  -- Begin function strcat
	.type	strcat,@function
strcat:                                 //  @strcat
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	mv fp, x10
	and x12, fp, 3
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x0, x12, .LBB0_3
.LBB0_1:                                //  %if.then
	lui x12, %hi( -16843009 )
	lui x13, %hi( -2139062144 )
	add x10, fp, -4
	add x12, x12, %lo( -16843009 )
	add x13, x13, %lo( -2139062144 )
.LBB0_2:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x14, 4 ( x10 )
	add x10, x10, 4
	add x15, x12, x14
	xor x14, x14, -1
	and x14, x15, x14
	and x14, x13, x14
	beq x0, x14, .LBB0_2
.LBB0_3:                                //  %while.cond3.preheader
	add x10, x10, -1
.LBB0_4:                                //  %while.cond3
                                        //  =>This Inner Loop Header: Depth=1
	lbu x12, 1 ( x10 )
	add x10, x10, 1
	bltu x0, x12, .LBB0_4
.LBB0_5:                                //  %while.end7
	jal strcpy
	mv x10, fp
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	strcat, .Lfunc_end0-strcat
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
