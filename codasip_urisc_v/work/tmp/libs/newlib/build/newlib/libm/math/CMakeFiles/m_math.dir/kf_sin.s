	.text
	.file	"kf_sin.c"
	.globl	__kernel_sinf           //  -- Begin function __kernel_sinf
	.type	__kernel_sinf,@function
__kernel_sinf:                          //  @__kernel_sinf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	mv x20, x12
	mv x9, x11
	mv fp, x10
	jal __fixsfsi
	bltu x0, x10, .LBB0_2
.LBB0_1:                                //  %entry
	lui x10, (2113929216>>12)&1048575
	and x10, x10, fp
	srl x10, x10, 25&31
	sltiu x10, x10, 25
	bltu x0, x10, .LBB0_6
.LBB0_2:                                //  %if.end4
	mv x10, fp
	mv x11, fp
	jal __mulsf3
	mv x11, fp
	mv x19, x10
	jal __mulsf3
	mv x18, x10
	lui x10, %hi( 791595475 )
	add x11, x10, %lo( 791595475 )
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( -1294520524 )
	add x11, x11, %lo( -1294520524 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( 909700891 )
	add x11, x11, %lo( 909700891 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( -1185936127 )
	add x11, x11, %lo( -1185936127 )
	jal __addsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	lui x11, %hi( 1007192201 )
	add x11, x11, %lo( 1007192201 )
	jal __addsf3
	mv x21, x10
	beq x0, x20, .LBB0_3
.LBB0_4:                                //  %if.else
	lui x11, (1056964608>>12)&1048575
	mv x10, x9
	jal __mulsf3
	mv x20, x10
	mv x10, x18
	mv x11, x21
	jal __mulsf3
	mv x11, x10
	mv x10, x20
	jal __subsf3
	mv x11, x10
	mv x10, x19
	jal __mulsf3
	mv x11, x9
	jal __subsf3
	mv x9, x10
	lui x10, %hi( 1042983595 )
	add x11, x10, %lo( 1042983595 )
	mv x10, x18
	jal __mulsf3
	mv x11, x9
	jal __addsf3
	mv x11, x10
	mv x10, fp
	jal __subsf3
	jal x0, .LBB0_5
.LBB0_3:                                //  %if.then15
	mv x10, x19
	mv x11, x21
	jal __mulsf3
	lui x11, %hi( -1104500053 )
	add x11, x11, %lo( -1104500053 )
	jal __addsf3
	mv x11, x10
	mv x10, x18
	jal __mulsf3
	mv x11, fp
	jal __addsf3
.LBB0_5:                                //  %cleanup
	mv fp, x10
.LBB0_6:                                //  %cleanup
	mv x10, fp
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
	.size	__kernel_sinf, .Lfunc_end0-__kernel_sinf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
