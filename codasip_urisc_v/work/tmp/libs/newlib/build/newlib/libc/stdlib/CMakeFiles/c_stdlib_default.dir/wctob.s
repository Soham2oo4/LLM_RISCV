	.text
	.file	"wctob.c"
	.globl	wctob                   //  -- Begin function wctob
	.type	wctob,@function
wctob:                                  //  @wctob
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 20 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	xor x10, fp, -1
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %if.end
	add x9, sp, 12
	mv x11, x0
	add x12, x0, 8
	mv x10, x9
	jal memset
	lui x10, %hi( _impure_ptr )
	lui x11, %hi( __global_locale )
	add x10, x10, %lo( _impure_ptr )
	add x11, x11, %lo( __global_locale )
	lw x14, 224 ( x11 )
	lw x10, 0 ( x10 )
	add x11, sp, 11
	mv x12, fp
	mv x13, x9
	call.reg x14
	seqz x11, x0
	beq x10, x11, .LBB0_2
.LBB0_3:                                //  %if.end
	add x10, x0, -1
	jal x0, .LBB0_4
.LBB0_2:
	lbu x10, 11 ( sp )
.LBB0_4:                                //  %cleanup
	lw fp, 20 ( sp )                //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	wctob, .Lfunc_end0-wctob
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
