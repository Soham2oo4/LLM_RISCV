	.text
	.file	"ldiv.c"
	.globl	ldiv                    //  -- Begin function ldiv
	.type	ldiv,@function
ldiv:                                   //  @ldiv
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
	mv x9, x12
	mv x18, x11
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x10
	mv x10, x18
	mv x11, x9
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal __divsi3
	hackaton_custom_instr_c x11, x9, x10
	sub x11, x18, x11
	sw x11, 4 ( fp )
	sw x10, 0 ( fp )
	blt x18, x0, .LBB0_3
.LBB0_1:                                //  %entry
	bge x11, x0, .LBB0_3
.LBB0_2:                                //  %if.then
	add x10, x10, 1
	sw x10, 0 ( fp )
	sub x10, x11, x9
	jal x0, .LBB0_6
.LBB0_3:                                //  %if.else
	bge x18, x0, .LBB0_7
.LBB0_4:                                //  %if.else
	bge x0, x11, .LBB0_7
.LBB0_5:                                //  %if.then10
	add x10, x10, -1
	sw x10, 0 ( fp )
	add x10, x9, x11
.LBB0_6:                                //  %if.end13.sink.split
	sw x10, 4 ( fp )
.LBB0_7:                                //  %if.end13
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	ldiv, .Lfunc_end0-ldiv
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
