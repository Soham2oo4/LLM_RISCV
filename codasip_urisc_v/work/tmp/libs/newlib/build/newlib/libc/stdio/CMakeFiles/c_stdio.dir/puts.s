	.text
	.file	"puts.c"
	.globl	_puts_r                 //  -- Begin function _puts_r
	.type	_puts_r,@function
_puts_r:                                //  @_puts_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw fp, 36 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	mv x10, x9
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal strlen
	sw x9, 8 ( sp )
	lw x9, 8 ( fp )
	add x11, x10, 1
	add x12, sp, 24
	sw x11, 8 ( x12 )
	add x11, sp, 8
	lui x12, %hi( .str )
	sw x10, 4 ( x11 )
	add x10, x0, 2
	add x12, x12, %lo( .str )
	sw x10, 28 ( sp )
	seqz x10, x0
	sw x12, 8 ( x11 )
	sw x11, 24 ( sp )
	sw x10, 20 ( sp )
	beq x0, fp, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x10, 56 ( fp )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end
	lhu x10, 12 ( x9 )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB0_5
.LBB0_4:                                //  %if.then18
	or x10, x11, x10
	sh x10, 12 ( x9 )
	lw x10, 100 ( x9 )
	lui x11, %hi( -8193 )
	add x11, x11, %lo( -8193 )
	and x10, x11, x10
	sw x10, 100 ( x9 )
.LBB0_5:                                //  %do.end26
	add x12, sp, 24
	mv x10, fp
	mv x11, x9
	jal __sfvwrite_r
	mv x11, x0
	beq x10, x11, .LBB0_6
.LBB0_7:                                //  %do.end26
	add x10, x0, -1
	jal x0, .LBB0_8
.LBB0_6:
	add x10, x0, 10
.LBB0_8:                                //  %do.end26
	lw fp, 36 ( sp )                //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_2:                                //  %if.then
	mv x10, fp
	jal __sinit
	lhu x10, 12 ( x9 )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	beq x0, x12, .LBB0_4
	jal x0, .LBB0_5
.Lfunc_end0:
	.size	_puts_r, .Lfunc_end0-_puts_r
	.cfi_endproc
                                        //  -- End function
	.globl	puts                    //  -- Begin function puts
	.type	puts,@function
puts:                                   //  @puts
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw fp, 36 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -12
	lw fp, 0 ( x10 )
	mv x10, x9
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	jal strlen
	add x11, x10, 1
	add x12, sp, 24
	sw x11, 8 ( x12 )
	add x11, sp, 8
	lui x12, %hi( .str )
	sw x10, 4 ( x11 )
	add x10, x0, 2
	add x12, x12, %lo( .str )
	sw x10, 28 ( sp )
	seqz x10, x0
	sw x12, 8 ( x11 )
	sw x10, 20 ( sp )
	sw x9, 8 ( sp )
	lw x9, 8 ( fp )
	sw x11, 24 ( sp )
	beq x0, fp, .LBB1_3
.LBB1_1:                                //  %land.lhs.true.i
	lw x10, 56 ( fp )
	beq x0, x10, .LBB1_2
.LBB1_3:                                //  %if.end.i
	lhu x10, 12 ( x9 )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	bltu x0, x12, .LBB1_5
.LBB1_4:                                //  %if.then18.i
	or x10, x11, x10
	sh x10, 12 ( x9 )
	lw x10, 100 ( x9 )
	lui x11, %hi( -8193 )
	add x11, x11, %lo( -8193 )
	and x10, x11, x10
	sw x10, 100 ( x9 )
.LBB1_5:                                //  %_puts_r.exit
	add x12, sp, 24
	mv x10, fp
	mv x11, x9
	jal __sfvwrite_r
	mv x11, x0
	beq x10, x11, .LBB1_6
.LBB1_7:                                //  %_puts_r.exit
	add x10, x0, -1
	jal x0, .LBB1_8
.LBB1_6:
	add x10, x0, 10
.LBB1_8:                                //  %_puts_r.exit
	lw fp, 36 ( sp )                //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_2:                                //  %if.then.i
	mv x10, fp
	jal __sinit
	lhu x10, 12 ( x9 )
	lui x11, (8192>>12)&1048575
	and x12, x11, x10
	beq x0, x12, .LBB1_4
	jal x0, .LBB1_5
.Lfunc_end1:
	.size	puts, .Lfunc_end1-puts
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"\n"
	.size	.str, 2

	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
