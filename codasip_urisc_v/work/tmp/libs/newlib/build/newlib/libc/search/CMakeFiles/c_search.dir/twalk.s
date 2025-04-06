	.text
	.file	"twalk.c"
	.globl	twalk                   //  -- Begin function twalk
	.type	twalk,@function
twalk:                                  //  @twalk
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %entry
	beq x0, x11, .LBB0_3
.LBB0_2:                                //  %if.then
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x12, x0
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal trecurse
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
.LBB0_3:                                //  %if.end
	jr ra
.Lfunc_end0:
	.size	twalk, .Lfunc_end0-twalk
	.cfi_endproc
                                        //  -- End function
	.type	trecurse,@function      //  -- Begin function trecurse
trecurse:                               //  @trecurse
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	lw x10, 4 ( x18 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv x9, x12
	mv fp, x11
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	bltu x0, x10, .LBB1_3
.LBB1_1:                                //  %land.lhs.true
	lw x10, 8 ( x18 )
	beq x0, x10, .LBB1_2
.LBB1_3:                                //  %if.else
	mv x11, x0
	mv x10, x18
	mv x12, x9
	call.reg fp
	lw x10, 4 ( x18 )
	add x19, x9, 1
	beq x0, x10, .LBB1_5
.LBB1_4:                                //  %if.then4
	mv x11, fp
	mv x12, x19
	jal trecurse
.LBB1_5:                                //  %if.end
	seqz x11, x0
	mv x10, x18
	mv x12, x9
	call.reg fp
	lw x10, 8 ( x18 )
	beq x0, x10, .LBB1_7
.LBB1_6:                                //  %if.then8
	mv x11, fp
	mv x12, x19
	jal trecurse
.LBB1_7:                                //  %if.end11
	add x11, x0, 2
.LBB1_8:                                //  %if.end12
	mv x10, x18
	mv x12, x9
	call.reg fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_2:                                //  %if.then
	add x11, x0, 3
	jal x0, .LBB1_8
.Lfunc_end1:
	.size	trecurse, .Lfunc_end1-trecurse
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
