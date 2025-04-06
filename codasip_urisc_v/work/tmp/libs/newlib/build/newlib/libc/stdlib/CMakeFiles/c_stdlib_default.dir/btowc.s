	.text
	.file	"btowc.c"
	.globl	btowc                   //  -- Begin function btowc
	.type	btowc,@function
btowc:                                  //  @btowc
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	xor x11, x10, -1
	beq x0, x11, .LBB0_1
.LBB0_2:                                //  %if.end
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 20 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -12
	add fp, sp, 12
	sb x10, 7 ( sp )
	mv x11, x0
	add x12, x0, 8
	mv x10, fp
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	jal memset
	lui x10, %hi( __global_locale )
	add x10, x10, %lo( __global_locale )
	lw x15, 228 ( x10 )
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	seqz x9, x0
	add x11, sp, 8
	add x12, sp, 7
	mv x13, x9
	mv x14, fp
	call.reg x15
	bltu x9, x10, .LBB0_3
.LBB0_4:                                //  %if.end
	lw x10, 8 ( sp )
	jal x0, .LBB0_5
.LBB0_1:
	add x10, x0, -1
	jr ra
.LBB0_3:
	add x10, x0, -1
.LBB0_5:                                //  %if.end
	lw fp, 20 ( sp )                //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	btowc, .Lfunc_end0-btowc
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
