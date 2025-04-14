	.text
	.file	"fwrite.c"
	.globl	_fwrite_r               //  -- Begin function _fwrite_r
	.type	_fwrite_r,@function
_fwrite_r:                              //  @_fwrite_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x13
	mv x9, x12
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x10
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	hackaton_custom_instr_c x20, x9, fp
	add x10, sp, 12
	sw x20, 8 ( x10 )
	seqz x10, x0
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x14
	sw x10, 16 ( sp )
	add x10, sp, 4
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x10, 12 ( sp )
	sw x11, 4 ( sp )
	sw x20, 8 ( sp )
	beq x0, x19, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x10, 56 ( x19 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end
	lhu x10, 12 ( x18 )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB0_5
.LBB0_4:                                //  %if.then12
	or x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 100 ( x18 )
	lui x11, %hi( -8193 )
	add x11, x11, %lo( -8193 )
	and x10, x11, x10
	sw x10, 100 ( x18 )
.LBB0_5:                                //  %do.end20
	add x12, sp, 12
	mv x10, x19
	mv x11, x18
	jal __sfvwrite_r
	beq x0, x10, .LBB0_7
.LBB0_6:                                //  %if.end35
	lw x10, 20 ( sp )
	mv x11, x9
	sub x10, x20, x10
	jal __udivsi3
	mv fp, x10
.LBB0_7:                                //  %cleanup
	mv x10, fp
	lw fp, 24 ( sp )                //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_2:                                //  %if.then
	mv x10, x19
	jal __sinit
	lhu x10, 12 ( x18 )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	beq x0, x12, .LBB0_4
	jal x0, .LBB0_5
.Lfunc_end0:
	.size	_fwrite_r, .Lfunc_end0-_fwrite_r
	.cfi_endproc
                                        //  -- End function
	.globl	fwrite                  //  -- Begin function fwrite
	.type	fwrite,@function
fwrite:                                 //  @fwrite
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	lui x11, %hi( _impure_ptr )
	add x11, x11, %lo( _impure_ptr )
	sw fp, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -24
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x19, 0 ( x11 )
	mv fp, x12
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	hackaton_custom_instr_c x20, x9, fp
	add x11, sp, 12
	sw x20, 8 ( x11 )
	seqz x11, x0
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x13
	sw x11, 16 ( sp )
	add x11, sp, 4
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x11, 12 ( sp )
	sw x10, 4 ( sp )
	sw x20, 8 ( sp )
	beq x0, x19, .LBB1_3
.LBB1_1:                                //  %land.lhs.true.i
	lw x10, 56 ( x19 )
	beq x0, x10, .LBB1_2
.LBB1_3:                                //  %if.end.i
	lhu x10, 12 ( x18 )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB1_5
.LBB1_4:                                //  %if.then12.i
	or x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 100 ( x18 )
	lui x11, %hi( -8193 )
	add x11, x11, %lo( -8193 )
	and x10, x11, x10
	sw x10, 100 ( x18 )
.LBB1_5:                                //  %do.end20.i
	add x12, sp, 12
	mv x10, x19
	mv x11, x18
	jal __sfvwrite_r
	beq x0, x10, .LBB1_7
.LBB1_6:                                //  %if.end35.i
	lw x10, 20 ( sp )
	mv x11, x9
	sub x10, x20, x10
	jal __udivsi3
	mv fp, x10
.LBB1_7:                                //  %_fwrite_r.exit
	mv x10, fp
	lw fp, 24 ( sp )                //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_2:                                //  %if.then.i
	mv x10, x19
	jal __sinit
	lhu x10, 12 ( x18 )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	beq x0, x12, .LBB1_4
	jal x0, .LBB1_5
.Lfunc_end1:
	.size	fwrite, .Lfunc_end1-fwrite
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
