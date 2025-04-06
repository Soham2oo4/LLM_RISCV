	.text
	.file	"ctanf.c"
	.globl	ctanf                   //  -- Begin function ctanf
	.type	ctanf,@function
ctanf:                                  //  @ctanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -112
	.cfi_adjust_cfa_offset 112
	sw x18, 100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 96 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x18, 4 ( x11 )
	lw x19, 0 ( x11 )
	sw fp, 92 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x10
	add x10, sp, 44
	sw ra, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 104 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 88 ( sp )
	sw x19, 84 ( sp )
	sw x19, 44 ( sp )
	sw x18, 48 ( sp )
	jal crealf
	mv x11, x10
	jal __addsf3
	jal cosf
	mv x9, x10
	add x10, sp, 36
	sw x18, 80 ( sp )
	sw x19, 76 ( sp )
	sw x19, 36 ( sp )
	sw x18, 40 ( sp )
	jal cimagf
	mv x11, x10
	jal __addsf3
	jal coshf
	mv x11, x10
	mv x10, x9
	jal __addsf3
	mv x9, x10
	jal fabsf
	lui x11, (1048576000>>12)&1048575
	jal __ltsf2
	bge x10, x0, .LBB0_2
.LBB0_1:                                //  %if.then
	add x10, sp, 28
	sw x19, 68 ( sp )
	sw x19, 28 ( sp )
	sw x18, 72 ( sp )
	sw x18, 32 ( sp )
	jal _ctansf
	mv x9, x10
.LBB0_2:                                //  %if.end
	mv x11, x0
	mv x10, x9
	jal __eqsf2
	bltu x0, x10, .LBB0_4
.LBB0_3:
	lui x9, (2139095040>>12)&1048575
	lui x10, (2143289344>>12)&1048575
	jal x0, .LBB0_5
.LBB0_4:                                //  %if.end21
	add x10, sp, 20
	sw x18, 64 ( sp )
	sw x19, 60 ( sp )
	sw x19, 20 ( sp )
	sw x18, 24 ( sp )
	jal crealf
	mv x11, x10
	jal __addsf3
	jal sinf
	mv x11, x9
	sw x19, 52 ( sp )
	sw x19, 12 ( sp )
	sw x18, 56 ( sp )
	sw x18, 16 ( sp )
	jal __divsf3
	mv x18, x10
	add x10, sp, 12
	jal cimagf
	mv x11, x10
	jal __addsf3
	jal sinhf
	mv x11, x9
	jal __divsf3
	mv x11, x0
	mv x9, x10
	jal __mulsf3
	mv x11, x10
	mv x10, x18
	jal __addsf3
.LBB0_5:                                //  %cleanup
	sw x9, 4 ( fp )
	sw x10, 0 ( fp )
	lw fp, 92 ( sp )                //  4-byte Folded Reload
	lw x19, 96 ( sp )               //  4-byte Folded Reload
	lw x18, 100 ( sp )              //  4-byte Folded Reload
	lw x9, 104 ( sp )               //  4-byte Folded Reload
	lw ra, 108 ( sp )               //  4-byte Folded Reload
	add sp, sp, 112
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	ctanf, .Lfunc_end0-ctanf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
