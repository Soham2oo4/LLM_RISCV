	.text
	.file	"wcstod.c"
	.globl	_wcstod_l               //  -- Begin function _wcstod_l
	.type	_wcstod_l,@function
_wcstod_l:                              //  @_wcstod_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw fp, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv x20, x13
	mv fp, x12
	mv x9, x10
	add x23, x11, -4
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 4 ( x23 )
	mv x11, x20
	jal iswspace_l
	add x23, x23, 4
	bltu x0, x10, .LBB0_1
.LBB0_2:                                //  %while.end
	mv x18, x0
	add x12, sp, 12
	add x13, x0, -1
	mv x14, x18
	add x15, sp, 20
	mv x10, x9
	mv x11, x18
	mv x16, x20
	sw x23, 12 ( sp )
	sw x0, 24 ( sp )
	sw x0, 20 ( sp )
	jal _wcsnrtombs_l
	xor x11, x10, -1
	beq x0, x11, .LBB0_11
.LBB0_3:                                //  %if.end4
	add x21, x10, 1
	mv x10, x9
	mv x11, x21
	jal _malloc_r
	mv x19, x10
	beq x0, x19, .LBB0_14
.LBB0_4:                                //  %if.end8
	add x12, sp, 12
	add x13, x0, -1
	add x15, sp, 20
	mv x10, x9
	mv x11, x19
	mv x14, x21
	mv x16, x20
	sw x0, 24 ( sp )
	sw x0, 20 ( sp )
	jal _wcsnrtombs_l
	add x12, sp, 16
	mv x10, x9
	mv x11, x19
	mv x13, x20
	jal _strtod_l
	mv x18, x10
	mv x20, x11
	beq x0, fp, .LBB0_10
.LBB0_5:                                //  %if.then13
	lui x10, %hi( _C_numeric_locale )
	add x10, x10, %lo( _C_numeric_locale )
	lw x22, 0 ( x10 )
	mv x10, x22
	jal strlen
	mv x21, x10
	sltiu x10, x21, 2
	bltu x0, x10, .LBB0_9
.LBB0_6:                                //  %if.then18
	mv x10, x19
	mv x11, x22
	jal strstr
	beq x0, x10, .LBB0_9
.LBB0_7:                                //  %land.lhs.true
	lw x11, 16 ( sp )
	bgeu x10, x11, .LBB0_9
.LBB0_8:                                //  %if.then22
	sub x10, x11, x21
	add x10, x10, 1
	sw x10, 16 ( sp )
.LBB0_9:                                //  %if.end24
	lw x11, 16 ( sp )
	sll x10, x19, 2&31
	sll x11, x11, 2&31
	sub x10, x11, x10
	add x10, x10, x23
	sw x10, 0 ( fp )
.LBB0_10:                               //  %if.end26
	mv x10, x9
	mv x11, x19
	jal _free_r
	jal x0, .LBB0_15
.LBB0_11:                               //  %if.then
	beq x0, fp, .LBB0_13
.LBB0_12:                               //  %if.then3
	sw x23, 0 ( fp )
.LBB0_13:
	mv x18, x0
.LBB0_14:
	mv x20, x18
.LBB0_15:                               //  %cleanup
	mv x10, x18
	mv x11, x20
	lw fp, 28 ( sp )                //  4-byte Folded Reload
	lw x23, 32 ( sp )               //  4-byte Folded Reload
	lw x22, 36 ( sp )               //  4-byte Folded Reload
	lw x21, 40 ( sp )               //  4-byte Folded Reload
	lw x20, 44 ( sp )               //  4-byte Folded Reload
	lw x19, 48 ( sp )               //  4-byte Folded Reload
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	lw x9, 56 ( sp )                //  4-byte Folded Reload
	lw ra, 60 ( sp )                //  4-byte Folded Reload
	add sp, sp, 64
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_wcstod_l, .Lfunc_end0-_wcstod_l
	.cfi_endproc
                                        //  -- End function
	.globl	_wcstod_r               //  -- Begin function _wcstod_r
	.type	_wcstod_r,@function
_wcstod_r:                              //  @_wcstod_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x13, %hi( __global_locale )
	add x13, x13, %lo( __global_locale )
	j _wcstod_l
.Lfunc_end1:
	.size	_wcstod_r, .Lfunc_end1-_wcstod_r
	.cfi_endproc
                                        //  -- End function
	.globl	_wcstof_r               //  -- Begin function _wcstof_r
	.type	_wcstof_r,@function
_wcstof_r:                              //  @_wcstof_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	lui x13, %hi( __global_locale )
	add x13, x13, %lo( __global_locale )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	jal _wcstod_l
	mv fp, x10
	mv x9, x11
	mv x12, fp
	mv x13, x9
	jal __unorddf2
	bltu x0, x10, .LBB2_1
.LBB2_2:                                //  %if.end
	mv x10, fp
	mv x11, x9
	jal __truncdfsf2
	jal x0, .LBB2_3
.LBB2_1:                                //  %if.then
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	jal nanf
.LBB2_3:                                //  %cleanup
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	_wcstof_r, .Lfunc_end2-_wcstof_r
	.cfi_endproc
                                        //  -- End function
	.globl	wcstod_l                //  -- Begin function wcstod_l
	.type	wcstod_l,@function
wcstod_l:                               //  @wcstod_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x12
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _wcstod_l
.Lfunc_end3:
	.size	wcstod_l, .Lfunc_end3-wcstod_l
	.cfi_endproc
                                        //  -- End function
	.globl	wcstod                  //  -- Begin function wcstod
	.type	wcstod,@function
wcstod:                                 //  @wcstod
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	lui x13, %hi( __global_locale )
	add x13, x13, %lo( __global_locale )
	j _wcstod_l
.Lfunc_end4:
	.size	wcstod, .Lfunc_end4-wcstod
	.cfi_endproc
                                        //  -- End function
	.globl	wcstof_l                //  -- Begin function wcstof_l
	.type	wcstof_l,@function
wcstof_l:                               //  @wcstof_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	mv x13, x12
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19, x10, %lo( _impure_ptr )
	lw x10, 0 ( x19 )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	jal _wcstod_l
	mv x9, x10
	mv x18, x11
	mv x12, x9
	mv x13, x18
	jal __unorddf2
	bltu x0, x10, .LBB5_1
.LBB5_2:                                //  %if.end
	mv x10, x9
	mv x11, x18
	jal __truncdfsf2
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x20, x10, %lo( 2147483647 )
	and x11, x20, x18
	mv x12, x0
	lui x13, (2146435072>>12)&1048575
	mv x10, x9
	jal __eqdf2
	beq x0, x10, .LBB5_5
.LBB5_3:                                //  %if.end
	and x10, x20, fp
	lui x11, (2139095040>>12)&1048575
	jal __nesf2
	bltu x0, x10, .LBB5_5
.LBB5_4:                                //  %if.then5
	lw x10, 0 ( x19 )
	add x11, x0, 34
	sw x11, 0 ( x10 )
	jal x0, .LBB5_5
.LBB5_1:                                //  %if.then
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	jal nanf
	mv fp, x10
.LBB5_5:                                //  %cleanup
	mv x10, fp
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end5:
	.size	wcstof_l, .Lfunc_end5-wcstof_l
	.cfi_endproc
                                        //  -- End function
	.globl	wcstof                  //  -- Begin function wcstof
	.type	wcstof,@function
wcstof:                                 //  @wcstof
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19, x10, %lo( _impure_ptr )
	lw x10, 0 ( x19 )
	lui x13, %hi( __global_locale )
	add x13, x13, %lo( __global_locale )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	jal _wcstod_l
	mv x9, x10
	mv x18, x11
	mv x12, x9
	mv x13, x18
	jal __unorddf2
	bltu x0, x10, .LBB6_1
.LBB6_2:                                //  %if.end
	mv x10, x9
	mv x11, x18
	jal __truncdfsf2
	mv fp, x10
	lui x10, %hi( 2147483647 )
	add x20, x10, %lo( 2147483647 )
	and x11, x20, x18
	mv x12, x0
	lui x13, (2146435072>>12)&1048575
	mv x10, x9
	jal __eqdf2
	beq x0, x10, .LBB6_5
.LBB6_3:                                //  %if.end
	and x10, x20, fp
	lui x11, (2139095040>>12)&1048575
	jal __nesf2
	bltu x0, x10, .LBB6_5
.LBB6_4:                                //  %if.then6
	lw x10, 0 ( x19 )
	add x11, x0, 34
	sw x11, 0 ( x10 )
	jal x0, .LBB6_5
.LBB6_1:                                //  %if.then
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	jal nanf
	mv fp, x10
.LBB6_5:                                //  %cleanup
	mv x10, fp
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end6:
	.size	wcstof, .Lfunc_end6-wcstof
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.zero	1
	.size	.str, 1

	.address_space	0
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
