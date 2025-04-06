	.text
	.file	"mprec.c"
	.globl	_Balloc                 //  -- Begin function _Balloc
	.type	_Balloc,@function
_Balloc:                                //  @_Balloc
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lw x10, 76 ( x9 )
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x11
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	bltu x0, x10, .LBB0_2
.LBB0_1:                                //  %if.then
	add x11, x0, 4
	add x12, x0, 33
	mv x10, x9
	jal _calloc_r
	sw x10, 76 ( x9 )
	beq x0, x10, .LBB0_9
.LBB0_2:                                //  %if.end5
	sll x11, fp, 2&31
	add x11, x11, x10
	lw x10, 0 ( x11 )
	beq x0, x10, .LBB0_4
.LBB0_3:                                //  %if.then8
	lw x12, 0 ( x10 )
	sw x12, 0 ( x11 )
	jal x0, .LBB0_6
.LBB0_4:                                //  %if.else
	seqz x11, x0
	sll x18, x11, fp
	sll x10, x18, 2&31
	add x12, x10, 20
	mv x10, x9
	jal _calloc_r
	beq x0, x10, .LBB0_9
.LBB0_5:                                //  %if.end14
	sw x18, 8 ( x10 )
	sw fp, 4 ( x10 )
.LBB0_6:                                //  %if.end15
	sw x0, 12 ( x10 )
	sw x0, 16 ( x10 )
	jal x0, .LBB0_7
.LBB0_9:
	mv x10, x0
.LBB0_7:                                //  %cleanup
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_Balloc, .Lfunc_end0-_Balloc
	.cfi_endproc
                                        //  -- End function
	.globl	_Bfree                  //  -- Begin function _Bfree
	.type	_Bfree,@function
_Bfree:                                 //  @_Bfree
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x11, .LBB1_2
.LBB1_1:                                //  %if.then
	.cfi_def_cfa 2, 0
	lw x12, 4 ( x11 )
	lw x10, 76 ( x10 )
	sll x12, x12, 2&31
	add x10, x12, x10
	lw x12, 0 ( x10 )
	sw x12, 0 ( x11 )
	sw x11, 0 ( x10 )
.LBB1_2:                                //  %if.end
	jr ra
.Lfunc_end1:
	.size	_Bfree, .Lfunc_end1-_Bfree
	.cfi_endproc
                                        //  -- End function
	.globl	__multadd               //  -- Begin function __multadd
	.type	__multadd,@function
__multadd:                              //  @__multadd
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -44
	mv fp, x11
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x20, 16 ( fp )
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	lui x10, %hi( 65535 )
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	mv x9, x13
	mv x19, x12
	mv x21, x0
	add x22, x0, 20
	add x23, x10, %lo( 65535 )
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 25, -40
.LBB2_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	add x24, x22, fp
	lw x25, 0 ( x24 )
	mv x11, x19
	and x10, x23, x25
	jal __mulsi3
	add x9, x9, x10
	srl x10, x25, 16&31
	mv x11, x19
	jal __mulsi3
	srl x11, x9, 16&31
	add x10, x10, x11
	and x11, x23, x9
	sll x12, x10, 16&31
	or x11, x11, x12
	add x22, x22, 4
	srl x9, x10, 16&31
	add x21, x21, 1
	sw x11, 0 ( x24 )
	blt x21, x20, .LBB2_1
.LBB2_2:                                //  %do.end
	beq x0, x9, .LBB2_3
.LBB2_4:                                //  %if.then
	lw x10, 8 ( fp )
	bge x20, x10, .LBB2_6
.LBB2_5:
	mv x19, fp
	jal x0, .LBB2_13
.LBB2_3:
	mv x19, fp
	jal x0, .LBB2_14
.LBB2_6:                                //  %if.then8
	lw x19, 4 ( fp )
	lw x10, 76 ( x18 )
	bltu x0, x10, .LBB2_8
.LBB2_7:                                //  %if.then.i
	add x11, x0, 4
	add x12, x0, 33
	mv x10, x18
	jal _calloc_r
	sw x10, 76 ( x18 )
	beq x0, x10, .LBB2_15
.LBB2_8:                                //  %if.end5.i
	add x21, x19, 1
	sll x11, x21, 2&31
	add x10, x11, x10
	lw x19, 0 ( x10 )
	beq x0, x19, .LBB2_10
.LBB2_9:                                //  %_Balloc.exit.thread58
	lw x11, 0 ( x19 )
	sw x0, 16 ( x19 )
	sw x11, 0 ( x10 )
	add x10, x19, 12
	jal x0, .LBB2_12
.LBB2_10:                               //  %if.else.i
	seqz x11, x0
	sll x22, x11, x21
	sll x10, x22, 2&31
	add x12, x10, 20
	mv x10, x18
	jal _calloc_r
	mv x19, x10
	beq x0, x19, .LBB2_15
.LBB2_11:                               //  %_Balloc.exit
	add x10, x19, 12
	sw x22, 8 ( x19 )
	sw x21, 4 ( x19 )
	sw x0, 16 ( x19 )
.LBB2_12:                               //  %_Bfree.exit
	lw x11, 16 ( fp )
	sw x0, 0 ( x10 )
	add x10, x19, 12
	sll x11, x11, 2&31
	add x12, x11, 8
	add x11, fp, 12
	jal memcpy
	lw x11, 4 ( fp )
	lw x10, 76 ( x18 )
	sll x11, x11, 2&31
	add x10, x11, x10
	lw x11, 0 ( x10 )
	sw x11, 0 ( fp )
	sw fp, 0 ( x10 )
.LBB2_13:                               //  %if.end17
	add x10, x20, 1
	sw x10, 16 ( x19 )
	sll x10, x20, 2&31
	add x10, x10, x19
	sw x9, 20 ( x10 )
.LBB2_14:                               //  %if.end21
	mv x10, x19
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x25, 8 ( sp )                //  4-byte Folded Reload
	lw x24, 12 ( sp )               //  4-byte Folded Reload
	lw x23, 16 ( sp )               //  4-byte Folded Reload
	lw x22, 20 ( sp )               //  4-byte Folded Reload
	lw x21, 24 ( sp )               //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.LBB2_15:                               //  %if.then11
	lui x10, %hi( .str )
	lui x13, %hi( .str.1 )
	add x10, x10, %lo( .str )
	add x11, x0, 181
	mv x12, x0
	add x13, x13, %lo( .str.1 )
	jal __assert_func
.Lfunc_end2:
	.size	__multadd, .Lfunc_end2-__multadd
	.cfi_endproc
                                        //  -- End function
	.globl	__s2b                   //  -- Begin function __s2b
	.type	__s2b,@function
__s2b:                                  //  @__s2b
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x13
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x22, x9, 8
	add x19, x0, 9
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv x20, x11
	mv fp, x10
	mv x10, x22
	mv x11, x19
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	mv x21, x14
	mv x18, x12
	jal __divsi3
	slti x11, x22, 18
	seqz x22, x0
	mv x23, x0
	bltu x0, x11, .LBB3_3
.LBB3_1:                                //  %for.inc.preheader
	mv x11, x22
.LBB3_2:                                //  %for.inc
                                        //  =>This Inner Loop Header: Depth=1
	add x23, x23, 1
	sll x11, x11, 1&31
	blt x11, x10, .LBB3_2
.LBB3_3:                                //  %for.end
	lw x10, 76 ( fp )
	bltu x0, x10, .LBB3_5
.LBB3_4:                                //  %if.then.i
	add x11, x0, 4
	add x12, x0, 33
	mv x10, fp
	jal _calloc_r
	sw x10, 76 ( fp )
	beq x0, x10, .LBB3_17
.LBB3_5:                                //  %if.end5.i
	sll x11, x23, 2&31
	add x10, x11, x10
	lw x11, 0 ( x10 )
	beq x0, x11, .LBB3_7
.LBB3_6:                                //  %_Balloc.exit.thread46
	lw x12, 0 ( x11 )
	sw x0, 16 ( x11 )
	sw x12, 0 ( x10 )
	add x10, x11, 12
	jal x0, .LBB3_9
.LBB3_7:                                //  %if.else.i
	sll x24, x22, x23
	sll x10, x24, 2&31
	add x12, x10, 20
	mv x10, fp
	mv x11, x22
	jal _calloc_r
	mv x11, x10
	beq x0, x11, .LBB3_17
.LBB3_8:                                //  %_Balloc.exit
	add x10, x11, 12
	sw x24, 8 ( x11 )
	sw x23, 4 ( x11 )
	sw x0, 16 ( x11 )
.LBB3_9:                                //  %if.end
	sw x0, 0 ( x10 )
	add x20, x20, 10
	slti x10, x18, 10
	sw x21, 20 ( x11 )
	sw x22, 16 ( x11 )
	bltu x0, x10, .LBB3_13
.LBB3_10:                               //  %if.then3
	add x21, x18, -9
	add x19, x0, 10
.LBB3_11:                               //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lb x10, -1 ( x20 )
	mv x12, x19
	add x13, x10, -48
	mv x10, fp
	jal __multadd
	mv x11, x10
	add x20, x20, 1
	add x21, x21, -1
	bltu x0, x21, .LBB3_11
.LBB3_12:
	mv x19, x18
.LBB3_13:                               //  %if.end10
	bge x19, x9, .LBB3_16
.LBB3_14:                               //  %for.body14.preheader
	sub x18, x9, x19
	add x9, x0, 10
.LBB3_15:                               //  %for.body14
                                        //  =>This Inner Loop Header: Depth=1
	lb x10, 0 ( x20 )
	mv x12, x9
	add x13, x10, -48
	mv x10, fp
	jal __multadd
	mv x11, x10
	add x20, x20, 1
	add x18, x18, -1
	bltu x0, x18, .LBB3_15
.LBB3_16:                               //  %for.end21
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x24, 12 ( sp )               //  4-byte Folded Reload
	lw x23, 16 ( sp )               //  4-byte Folded Reload
	lw x22, 20 ( sp )               //  4-byte Folded Reload
	lw x21, 24 ( sp )               //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	mv x10, x11
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.LBB3_17:                               //  %if.then
	lui x10, %hi( .str )
	lui x13, %hi( .str.1 )
	add x10, x10, %lo( .str )
	add x11, x0, 206
	mv x12, x0
	add x13, x13, %lo( .str.1 )
	jal __assert_func
.Lfunc_end3:
	.size	__s2b, .Lfunc_end3-__s2b
	.cfi_endproc
                                        //  -- End function
	.globl	__hi0bits               //  -- Begin function __hi0bits
	.type	__hi0bits,@function
__hi0bits:                              //  @__hi0bits
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x10
	srl x10, x11, 16&31
	mv x12, x0
	beq x10, x12, .LBB4_1
.LBB4_2:                                //  %entry
	seqz x10, x10
	srl x13, x11, 24&31
	sll x10, x10, 4&31
	beq x13, x12, .LBB4_3
.LBB4_4:                                //  %entry
	srl x13, x11, 28&31
	beq x13, x12, .LBB4_5
.LBB4_6:                                //  %entry
	srl x13, x11, 30&31
	beq x13, x12, .LBB4_7
.LBB4_8:                                //  %entry
	blt x11, x0, .LBB4_12
.LBB4_9:                                //  %if.then20
	lui x12, (1073741824>>12)&1048575
	and x11, x12, x11
	bltu x0, x11, .LBB4_11
.LBB4_10:
	add x10, x0, 32
	jr ra
.LBB4_1:                                //  %entry
	sll x11, x11, 16&31
	seqz x10, x10
	srl x13, x11, 24&31
	sll x10, x10, 4&31
	bne x13, x12, .LBB4_4
.LBB4_3:                                //  %entry
	sll x11, x11, 8&31
	or x10, x10, 8
	srl x13, x11, 28&31
	bne x13, x12, .LBB4_6
.LBB4_5:                                //  %entry
	sll x11, x11, 4&31
	or x10, x10, 4
	srl x13, x11, 30&31
	bne x13, x12, .LBB4_8
.LBB4_7:                                //  %entry
	sll x11, x11, 2&31
	or x10, x10, 2
	bge x11, x0, .LBB4_9
.LBB4_12:                               //  %cleanup
	jr ra
.LBB4_11:
	add x10, x10, 1
	jr ra
.Lfunc_end4:
	.size	__hi0bits, .Lfunc_end4-__hi0bits
	.cfi_endproc
                                        //  -- End function
	.globl	__lo0bits               //  -- Begin function __lo0bits
	.type	__lo0bits,@function
__lo0bits:                              //  @__lo0bits
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x12, 0 ( x10 )
	and x11, x12, 7
	beq x0, x11, .LBB5_6
.LBB5_1:                                //  %if.then
	and x11, x12, 1
	bltu x0, x11, .LBB5_2
.LBB5_3:                                //  %if.end
	and x11, x12, 2
	bltu x0, x11, .LBB5_4
.LBB5_5:                                //  %if.end7
	srl x11, x12, 2&31
	sw x11, 0 ( x10 )
	add x11, x0, 2
	mv x10, x11
	jr ra
.LBB5_6:                                //  %if.end9
	lui x11, %hi( 65535 )
	add x11, x11, %lo( 65535 )
	and x11, x11, x12
	mv x13, x0
	beq x11, x13, .LBB5_7
.LBB5_8:                                //  %if.end9
	seqz x11, x11
	sll x11, x11, 4&31
	and x14, x12, 255
	beq x14, x13, .LBB5_9
.LBB5_10:                               //  %if.end9
	and x14, x12, 15
	beq x14, x13, .LBB5_11
.LBB5_12:                               //  %if.end9
	and x14, x12, 3
	beq x14, x13, .LBB5_13
.LBB5_14:                               //  %if.end9
	and x13, x12, 1
	bltu x0, x13, .LBB5_18
.LBB5_15:                               //  %if.then34
	srl x12, x12, 1&31
	beq x0, x12, .LBB5_16
.LBB5_17:
	add x11, x11, 1
	sw x12, 0 ( x10 )
	mv x10, x11
	jr ra
.LBB5_2:
	mv x11, x0
	mv x10, x11
	jr ra
.LBB5_7:
	srl x12, x12, 16&31
	seqz x11, x11
	sll x11, x11, 4&31
	and x14, x12, 255
	bne x14, x13, .LBB5_10
.LBB5_9:
	or x11, x11, 8
	srl x12, x12, 8&31
	and x14, x12, 15
	bne x14, x13, .LBB5_12
.LBB5_11:
	srl x12, x12, 4&31
	or x11, x11, 4
	and x14, x12, 3
	bne x14, x13, .LBB5_14
.LBB5_13:
	or x11, x11, 2
	srl x12, x12, 2&31
	and x13, x12, 1
	beq x0, x13, .LBB5_15
.LBB5_18:                               //  %if.end41
	sw x12, 0 ( x10 )
	mv x10, x11
	jr ra
.LBB5_4:                                //  %if.then6
	srl x11, x12, 1&31
	sw x11, 0 ( x10 )
	seqz x11, x0
	mv x10, x11
	jr ra
.LBB5_16:
	add x11, x0, 32
	mv x10, x11
	jr ra
.Lfunc_end5:
	.size	__lo0bits, .Lfunc_end5-__lo0bits
	.cfi_endproc
                                        //  -- End function
	.globl	__i2b                   //  -- Begin function __i2b
	.type	__i2b,@function
__i2b:                                  //  @__i2b
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x11
	lw x11, 76 ( x9 )
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	bltu x0, x11, .LBB6_2
.LBB6_1:                                //  %if.then.i
	add x11, x0, 4
	add x12, x0, 33
	mv x10, x9
	jal _calloc_r
	mv x11, x10
	sw x11, 76 ( x9 )
	beq x0, x11, .LBB6_7
.LBB6_2:                                //  %if.end5.i
	lw x10, 4 ( x11 )
	beq x0, x10, .LBB6_4
.LBB6_3:                                //  %_Balloc.exit.thread8
	lw x12, 0 ( x10 )
	sw x0, 16 ( x10 )
	sw x12, 4 ( x11 )
	add x11, x10, 12
	jal x0, .LBB6_6
.LBB6_4:                                //  %if.else.i
	seqz x18, x0
	add x12, x0, 28
	mv x10, x9
	mv x11, x18
	jal _calloc_r
	beq x0, x10, .LBB6_7
.LBB6_5:                                //  %_Balloc.exit
	add x11, x0, 2
	sw x11, 8 ( x10 )
	add x11, x10, 12
	sw x18, 4 ( x10 )
	sw x0, 16 ( x10 )
.LBB6_6:                                //  %if.end
	seqz x12, x0
	sw fp, 20 ( x10 )
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	sw x12, 16 ( x10 )
	sw x0, 0 ( x11 )
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB6_7:                                //  %if.then
	lui x10, %hi( .str )
	lui x13, %hi( .str.1 )
	add x10, x10, %lo( .str )
	add x11, x0, 320
	mv x12, x0
	add x13, x13, %lo( .str.1 )
	jal __assert_func
.Lfunc_end6:
	.size	__i2b, .Lfunc_end6-__i2b
	.cfi_endproc
                                        //  -- End function
	.globl	__multiply              //  -- Begin function __multiply
	.type	__multiply,@function
__multiply:                             //  @__multiply
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -80
	.cfi_adjust_cfa_offset 80
	sw x9, 72 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x12
	sw x18, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	lw x10, 16 ( x9 )
	lw x12, 16 ( x11 )
	sw ra, 76 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	blt x12, x10, .LBB7_1
.LBB7_2:                                //  %entry
	mv x20, x11
	jal x0, .LBB7_3
.LBB7_1:
	mv x20, x9
	mv x9, x11
.LBB7_3:                                //  %entry
	lw x22, 16 ( x20 )
	lw x23, 16 ( x9 )
	lw fp, 8 ( x20 )
	lw x21, 4 ( x20 )
	lw x10, 76 ( x18 )
	bltu x0, x10, .LBB7_5
.LBB7_4:                                //  %if.then.i
	add x11, x0, 4
	add x12, x0, 33
	mv x10, x18
	jal _calloc_r
	sw x10, 76 ( x18 )
	beq x0, x10, .LBB7_29
.LBB7_5:                                //  %if.end5.i
	add x19, x22, x23
	slt x11, fp, x19
	add fp, x11, x21
	sll x11, fp, 2&31
	add x12, x11, x10
	lw x10, 0 ( x12 )
	beq x0, x10, .LBB7_7
.LBB7_6:                                //  %_Balloc.exit.thread163
	lw x11, 0 ( x10 )
	sw x0, 16 ( x10 )
	sw x11, 0 ( x12 )
	add x11, x10, 12
	jal x0, .LBB7_9
.LBB7_7:                                //  %if.else.i
	seqz x11, x0
	sll x21, x11, fp
	sll x10, x21, 2&31
	add x12, x10, 20
	mv x10, x18
	jal _calloc_r
	beq x0, x10, .LBB7_29
.LBB7_8:                                //  %_Balloc.exit
	add x11, x10, 12
	sw x21, 8 ( x10 )
	sw fp, 4 ( x10 )
	sw x0, 16 ( x10 )
.LBB7_9:                                //  %if.end9
	add x21, x10, 20
	sw x22, 16 ( sp )               //  4-byte Folded Spill
	sw x0, 0 ( x11 )
	sw x10, 4 ( sp )                //  4-byte Folded Spill
	bge x0, x19, .LBB7_12
.LBB7_10:                               //  %for.body.preheader
	sll x11, x19, 2&31
	mv x10, x21
	add x11, x11, x21
.LBB7_11:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x0, 0 ( x10 )
	add x10, x10, 4
	bltu x10, x11, .LBB7_11
.LBB7_12:                               //  %for.end
	sw x19, 8 ( sp )                //  4-byte Folded Spill
	sw x23, 12 ( sp )               //  4-byte Folded Spill
	bge x0, x23, .LBB7_23
.LBB7_13:                               //  %for.body21.preheader
	lw x10, 12 ( sp )               //  4-byte Folded Reload
	add x11, x20, 20
	add x25, x20, 20
	add x26, x9, 20
	sll x10, x10, 2&31
	add x10, x10, x9
	add x10, x10, 20
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	sw x11, 20 ( sp )               //  4-byte Folded Spill
	sll x10, x10, 2&31
	add x24, x10, x11
	lui x10, %hi( 65535 )
	add x27, x10, %lo( 65535 )
	lw x10, 0 ( x26 )
	and x9, x27, x10
	bltu x0, x9, .LBB7_15
	jal x0, .LBB7_18
.LBB7_22:                               //  %for.inc64
                                        //    in Loop: Header=BB7_18 Depth=1
	lw x10, 24 ( sp )               //  4-byte Folded Reload
	add x21, x21, 4
	add x26, x26, 4
	bgeu x26, x10, .LBB7_23
.LBB7_14:                               //  %for.body21
                                        //    in Loop: Header=BB7_18 Depth=1
	lw x10, 0 ( x26 )
	and x9, x27, x10
	beq x0, x9, .LBB7_18
.LBB7_15:                               //  %do.body.preheader
	mv fp, x0
	mv x18, fp
.LBB7_16:                               //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x18, x25
	lw x20, 0 ( x10 )
	add x22, x18, x21
	lw x23, 0 ( x22 )
	mv x11, x9
	srl x10, x20, 16&31
	jal __mulsi3
	srl x11, x23, 16&31
	add x19, x11, x10
	and x10, x27, x20
	mv x11, x9
	jal __mulsi3
	and x11, x27, x23
	add x11, fp, x11
	add x10, x10, x11
	srl x11, x10, 16&31
	add x11, x11, x19
	and x10, x27, x10
	sll x12, x11, 16&31
	or x10, x10, x12
	add x18, x18, 4
	sw x10, 0 ( x22 )
	add x10, x18, x25
	srl fp, x11, 16&31
	bltu x10, x24, .LBB7_16
.LBB7_17:                               //  %do.end
	add x10, x18, x21
	sw fp, 0 ( x10 )
	lw x10, 0 ( x26 )
.LBB7_18:                               //  %if.end38
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB7_20 Depth 2
	srl x9, x10, 16&31
	beq x0, x9, .LBB7_22
.LBB7_19:                               //  %if.then41
                                        //    in Loop: Header=BB7_18 Depth=1
	lw x20, 0 ( x21 )
	lw x23, 20 ( sp )               //  4-byte Folded Reload
	mv x22, x0
	mv x18, x21
	mv fp, x20
.LBB7_20:                               //  %do.body42
                                        //    Parent Loop BB7_18 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lhu x10, 0 ( x23 )
	mv x11, x9
	jal __mulsi3
	srl x11, x20, 16&31
	add x11, x22, x11
	add x19, x10, x11
	and x10, x27, fp
	sll x11, x19, 16&31
	or x10, x10, x11
	sw x10, 0 ( x18 )
	lhu x10, 2 ( x23 )
	mv x11, x9
	jal __mulsi3
	lw x20, 4 ( x18 )
	add x18, x18, 4
	add x23, x23, 4
	and x11, x27, x20
	add x10, x11, x10
	srl x11, x19, 16&31
	add fp, x11, x10
	srl x22, fp, 16&31
	bltu x23, x24, .LBB7_20
.LBB7_21:                               //  %do.end62
                                        //    in Loop: Header=BB7_18 Depth=1
	sw fp, 0 ( x18 )
	jal x0, .LBB7_22
.LBB7_23:                               //  %for.cond71.preheader
	lw x12, 8 ( sp )                //  4-byte Folded Reload
	bge x0, x12, .LBB7_24
.LBB7_25:                               //  %land.rhs.preheader
	lw x10, 16 ( sp )               //  4-byte Folded Reload
	lw x11, 12 ( sp )               //  4-byte Folded Reload
	add x10, x10, x11
	sll x11, x10, 2&31
	lw x10, 4 ( sp )                //  4-byte Folded Reload
	add x11, x10, x11
	add x13, x11, 16
.LBB7_26:                               //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x13 )
	bltu x0, x11, .LBB7_28
.LBB7_27:                               //  %for.inc75
                                        //    in Loop: Header=BB7_26 Depth=1
	add x13, x13, -4
	add x12, x12, -1
	blt x0, x12, .LBB7_26
	jal x0, .LBB7_28
.LBB7_24:
	lw x10, 4 ( sp )                //  4-byte Folded Reload
.LBB7_28:                               //  %for.end76
	lw fp, 28 ( sp )                //  4-byte Folded Reload
	lw x27, 32 ( sp )               //  4-byte Folded Reload
	lw x26, 36 ( sp )               //  4-byte Folded Reload
	lw x25, 40 ( sp )               //  4-byte Folded Reload
	lw x24, 44 ( sp )               //  4-byte Folded Reload
	lw x23, 48 ( sp )               //  4-byte Folded Reload
	lw x22, 52 ( sp )               //  4-byte Folded Reload
	lw x21, 56 ( sp )               //  4-byte Folded Reload
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	lw x19, 64 ( sp )               //  4-byte Folded Reload
	lw x18, 68 ( sp )               //  4-byte Folded Reload
	lw x9, 72 ( sp )                //  4-byte Folded Reload
	lw ra, 76 ( sp )                //  4-byte Folded Reload
	sw x12, 16 ( x10 )
	add sp, sp, 80
	.cfi_def_cfa 2, 0
	jr ra
.LBB7_29:                               //  %if.then8
	lui x10, %hi( .str )
	lui x13, %hi( .str.1 )
	add x10, x10, %lo( .str )
	add x11, x0, 349
	mv x12, x0
	add x13, x13, %lo( .str.1 )
	jal __assert_func
.Lfunc_end7:
	.size	__multiply, .Lfunc_end7-__multiply
	.cfi_endproc
                                        //  -- End function
	.globl	__pow5mult              //  -- Begin function __pow5mult
	.type	__pow5mult,@function
__pow5mult:                             //  @__pow5mult
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x12
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv x9, x10
	mv fp, x11
	and x10, x18, 3
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	beq x0, x10, .LBB8_2
.LBB8_1:                                //  %if.then
	lui x11, %hi( __pow5mult.p05 )
	sll x10, x10, 2&31
	add x11, x11, %lo( __pow5mult.p05 )
	add x10, x11, x10
	lw x12, -4 ( x10 )
	mv x13, x0
	mv x10, x9
	mv x11, fp
	jal __multadd
	mv fp, x10
.LBB8_2:                                //  %if.end
	sra x19, x18, 2&31
	beq x0, x19, .LBB8_19
.LBB8_3:                                //  %if.end2
	lw x10, 72 ( x9 )
	bltu x0, x10, .LBB8_12
.LBB8_4:                                //  %if.then4
	lw x11, 76 ( x9 )
	bltu x0, x11, .LBB8_6
.LBB8_5:                                //  %if.then.i.i
	add x11, x0, 4
	add x12, x0, 33
	mv x10, x9
	jal _calloc_r
	mv x11, x10
	sw x11, 76 ( x9 )
	beq x0, x11, .LBB8_20
.LBB8_6:                                //  %if.end5.i.i
	lw x10, 4 ( x11 )
	beq x0, x10, .LBB8_8
.LBB8_7:                                //  %_Balloc.exit.thread8.i
	lw x12, 0 ( x10 )
	sw x0, 16 ( x10 )
	sw x12, 4 ( x11 )
	add x11, x10, 12
	jal x0, .LBB8_10
.LBB8_8:                                //  %if.else.i.i
	seqz x18, x0
	add x12, x0, 28
	mv x10, x9
	mv x11, x18
	jal _calloc_r
	beq x0, x10, .LBB8_20
.LBB8_9:                                //  %_Balloc.exit.i
	add x11, x0, 2
	sw x11, 8 ( x10 )
	add x11, x10, 12
	sw x18, 4 ( x10 )
	sw x0, 16 ( x10 )
.LBB8_10:                               //  %__i2b.exit
	seqz x12, x0
	add x13, x0, 625
	sw x13, 20 ( x10 )
	sw x12, 16 ( x10 )
	sw x10, 72 ( x9 )
	sw x0, 0 ( x11 )
	jal x0, .LBB8_11
.LBB8_20:                               //  %if.then.i
	lui x10, %hi( .str )
	lui x13, %hi( .str.1 )
	add x10, x10, %lo( .str )
	add x11, x0, 320
	mv x12, x0
	add x13, x13, %lo( .str.1 )
	jal __assert_func
.LBB8_11:                               //  %for.cond
	sw x0, 0 ( x10 )
.LBB8_12:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	mv x18, x10
	and x10, x19, 1
	beq x0, x10, .LBB8_16
.LBB8_13:                               //  %if.then10
                                        //    in Loop: Header=BB8_12 Depth=1
	mv x10, x9
	mv x11, fp
	mv x12, x18
	jal __multiply
	beq x0, fp, .LBB8_15
.LBB8_14:                               //  %if.then.i52
                                        //    in Loop: Header=BB8_12 Depth=1
	lw x12, 4 ( fp )
	lw x11, 76 ( x9 )
	sll x12, x12, 2&31
	add x11, x12, x11
	lw x12, 0 ( x11 )
	sw x12, 0 ( fp )
	sw fp, 0 ( x11 )
.LBB8_15:                               //  %if.end12
                                        //    in Loop: Header=BB8_12 Depth=1
	mv fp, x10
.LBB8_16:                               //  %if.end12
                                        //    in Loop: Header=BB8_12 Depth=1
	sra x19, x19, 1&31
	beq x0, x19, .LBB8_19
.LBB8_17:                               //  %if.end16
                                        //    in Loop: Header=BB8_12 Depth=1
	lw x10, 0 ( x18 )
	bltu x0, x10, .LBB8_12
.LBB8_18:                               //  %if.then19
	mv x10, x9
	mv x12, x18
	mv x11, x18
	jal __multiply
	sw x10, 0 ( x18 )
	jal x0, .LBB8_11
.LBB8_19:                               //  %cleanup
	mv x10, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end8:
	.size	__pow5mult, .Lfunc_end8-__pow5mult
	.cfi_endproc
                                        //  -- End function
	.globl	__lshift                //  -- Begin function __lshift
	.type	__lshift,@function
__lshift:                               //  @__lshift
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv fp, x11
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lw x10, 16 ( fp )
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x12
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sra x20, x18, 5&31
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19, x20, x10
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	lw x21, 4 ( fp )
	lw x10, 8 ( fp )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	blt x19, x10, .LBB9_2
.LBB9_1:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x21, x21, 1
	sll x10, x10, 1&31
	bge x19, x10, .LBB9_1
.LBB9_2:                                //  %for.end
	lw x10, 76 ( x9 )
	bltu x0, x10, .LBB9_4
.LBB9_3:                                //  %if.then.i
	add x11, x0, 4
	add x12, x0, 33
	mv x10, x9
	jal _calloc_r
	sw x10, 76 ( x9 )
	beq x0, x10, .LBB9_21
.LBB9_4:                                //  %if.end5.i
	sll x11, x21, 2&31
	add x11, x11, x10
	lw x10, 0 ( x11 )
	beq x0, x10, .LBB9_6
.LBB9_5:                                //  %_Balloc.exit.thread77
	lw x12, 0 ( x10 )
	sw x0, 16 ( x10 )
	sw x12, 0 ( x11 )
	add x11, x10, 12
	sw x0, 0 ( x11 )
	add x11, x10, 20
	slti x12, x18, 32
	beq x0, x12, .LBB9_9
	jal x0, .LBB9_11
.LBB9_6:                                //  %if.else.i
	seqz x11, x0
	sll x22, x11, x21
	sll x10, x22, 2&31
	add x12, x10, 20
	mv x10, x9
	jal _calloc_r
	beq x0, x10, .LBB9_21
.LBB9_7:                                //  %_Balloc.exit
	add x11, x10, 12
	sw x22, 8 ( x10 )
	sw x21, 4 ( x10 )
	sw x0, 16 ( x10 )
	sw x0, 0 ( x11 )
	add x11, x10, 20
	slti x12, x18, 32
	bltu x0, x12, .LBB9_11
.LBB9_9:                                //  %for.body5.preheader
	mv x12, x0
.LBB9_10:                               //  %for.body5
                                        //  =>This Inner Loop Header: Depth=1
	sw x0, 0 ( x11 )
	add x11, x11, 4
	add x12, x12, 1
	blt x12, x20, .LBB9_10
.LBB9_11:                               //  %for.end8
	lw x14, 16 ( fp )
	add x13, fp, 20
	add x12, x19, 1
	and x16, x18, 31
	sll x14, x14, 2&31
	add x14, x14, x13
	beq x0, x16, .LBB9_17
.LBB9_12:                               //  %if.then12
	add x17, x0, 32
	mv x15, x0
	sub x17, x17, x16
.LBB9_13:                               //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x5, 0 ( x13 )
	sll x5, x5, x16
	or x15, x15, x5
	sw x15, 0 ( x11 )
	lw x15, 0 ( x13 )
	add x11, x11, 4
	add x13, x13, 4
	srl x15, x15, x17
	bltu x13, x14, .LBB9_13
.LBB9_14:                               //  %do.end
	mv x13, x0
	beq x15, x13, .LBB9_16
.LBB9_15:                               //  %do.end
	add x12, x19, 2
.LBB9_16:                               //  %do.end
	sw x15, 0 ( x11 )
	add x11, x12, -1
	sw x11, 16 ( x10 )
	bltu x0, fp, .LBB9_19
	jal x0, .LBB9_20
.LBB9_17:                               //  %do.body22
                                        //  =>This Inner Loop Header: Depth=1
	lw x15, 0 ( x13 )
	add x13, x13, 4
	sw x15, 0 ( x11 )
	add x11, x11, 4
	bltu x13, x14, .LBB9_17
.LBB9_18:                               //  %if.end28
	add x11, x12, -1
	sw x11, 16 ( x10 )
	beq x0, fp, .LBB9_20
.LBB9_19:                               //  %if.then.i74
	lw x12, 4 ( fp )
	lw x11, 76 ( x9 )
	sll x12, x12, 2&31
	add x11, x12, x11
	lw x12, 0 ( x11 )
	sw x12, 0 ( fp )
	sw fp, 0 ( x11 )
.LBB9_20:                               //  %_Bfree.exit
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x22, 4 ( sp )                //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB9_21:                               //  %if.then
	lui x10, %hi( .str )
	lui x13, %hi( .str.1 )
	add x10, x10, %lo( .str )
	add x11, x0, 473
	mv x12, x0
	add x13, x13, %lo( .str.1 )
	jal __assert_func
.Lfunc_end9:
	.size	__lshift, .Lfunc_end9-__lshift
	.cfi_endproc
                                        //  -- End function
	.globl	__mcmp                  //  -- Begin function __mcmp
	.type	__mcmp,@function
__mcmp:                                 //  @__mcmp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x10
	lw x13, 16 ( x11 )
	lw x10, 16 ( x12 )
	sub x10, x10, x13
	bltu x0, x10, .LBB10_7
.LBB10_1:                               //  %if.end
	sll x10, x13, 2&31
	add x11, x11, x10
	add x12, x12, 20
	add x13, x10, x12
	add x11, x11, 16
	mv x10, x0
.LBB10_2:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x14, 0 ( x11 )
	lw x15, -4 ( x13 )
	bne x15, x14, .LBB10_3
.LBB10_6:                               //  %if.end8
                                        //    in Loop: Header=BB10_2 Depth=1
	add x13, x13, -4
	add x11, x11, -4
	bltu x12, x13, .LBB10_2
.LBB10_7:                               //  %cleanup
	jr ra
.LBB10_3:                               //  %if.then6
	bltu x15, x14, .LBB10_4
.LBB10_5:                               //  %if.then6
	seqz x10, x0
	jr ra
.LBB10_4:
	add x10, x0, -1
	jr ra
.Lfunc_end10:
	.size	__mcmp, .Lfunc_end10-__mcmp
	.cfi_endproc
                                        //  -- End function
	.globl	__mdiff                 //  -- Begin function __mdiff
	.type	__mdiff,@function
__mdiff:                                //  @__mdiff
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	mv fp, x12
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lw x10, 16 ( fp )
	lw x12, 16 ( x11 )
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sub x20, x12, x10
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	beq x0, x20, .LBB11_1
.LBB11_6:                               //  %if.end3
	mv x18, x0
	blt x20, x18, .LBB11_7
.LBB11_18:                              //  %if.end3
	mv x19, x11
	lw x21, 4 ( x19 )
	lw x10, 76 ( x9 )
	bltu x0, x10, .LBB11_21
	jal x0, .LBB11_20
.LBB11_1:                               //  %if.end.i
	sll x13, x10, 2&31
	add x10, fp, x13
	add x12, x11, 20
	add x10, x10, 16
	add x13, x13, x12
.LBB11_2:                               //  %for.cond.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x14, 0 ( x10 )
	lw x15, -4 ( x13 )
	bne x15, x14, .LBB11_3
.LBB11_8:                               //  %if.end8.i
                                        //    in Loop: Header=BB11_2 Depth=1
	add x13, x13, -4
	add x10, x10, -4
	bltu x12, x13, .LBB11_2
.LBB11_9:                               //  %if.then
	lw x11, 76 ( x9 )
	bltu x0, x11, .LBB11_11
.LBB11_10:                              //  %if.then.i122
	add x11, x0, 4
	add x12, x0, 33
	mv x10, x9
	jal _calloc_r
	mv x11, x10
	sw x11, 76 ( x9 )
	beq x0, x11, .LBB11_16
.LBB11_11:                              //  %if.end5.i124
	lw x10, 0 ( x11 )
	beq x0, x10, .LBB11_14
.LBB11_12:                              //  %_Balloc.exit137.thread143
	lw x12, 0 ( x10 )
	sw x0, 16 ( x10 )
	sw x12, 0 ( x11 )
	add x11, x10, 12
	jal x0, .LBB11_13
.LBB11_3:                               //  %if.then6.i
	bltu x15, x14, .LBB11_4
.LBB11_5:                               //  %if.then6.i
	seqz x20, x0
	mv x18, x0
	bge x20, x18, .LBB11_18
.LBB11_7:
	mv x19, fp
	mv fp, x11
	lw x21, 4 ( x19 )
	lw x10, 76 ( x9 )
	bltu x0, x10, .LBB11_21
.LBB11_20:                              //  %if.then.i
	add x11, x0, 4
	add x12, x0, 33
	mv x10, x9
	jal _calloc_r
	sw x10, 76 ( x9 )
	beq x0, x10, .LBB11_36
.LBB11_21:                              //  %if.end5.i
	sll x11, x21, 2&31
	add x11, x11, x10
	lw x10, 0 ( x11 )
	beq x0, x10, .LBB11_23
.LBB11_22:                              //  %_Balloc.exit.thread151
	lw x12, 0 ( x10 )
	sw x0, 16 ( x10 )
	sw x12, 0 ( x11 )
	add x11, x10, 12
	jal x0, .LBB11_25
.LBB11_23:                              //  %if.else.i
	seqz x11, x0
	sll x22, x11, x21
	sll x10, x22, 2&31
	add x12, x10, 20
	mv x10, x9
	jal _calloc_r
	beq x0, x10, .LBB11_36
.LBB11_24:                              //  %_Balloc.exit
	add x11, x10, 12
	sw x22, 8 ( x10 )
	sw x21, 4 ( x10 )
	sw x0, 16 ( x10 )
.LBB11_25:                              //  %if.end11
	lw x14, 16 ( fp )
	sw x0, 0 ( x11 )
	lw x11, 16 ( x19 )
	slt x12, x20, x0
	sw x12, 12 ( x10 )
	add x16, fp, 20
	sll x12, x11, 2&31
	sll x14, x14, 2&31
	add x13, x12, x19
	add x17, x14, x16
	lui x14, %hi( 65535 )
	add x12, x10, 20
	add x13, x13, 20
	add x14, x14, %lo( 65535 )
	mv x15, x18
.LBB11_26:                              //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	add x5, x18, x19
	add x6, x18, x16
	lw x5, 20 ( x5 )
	lw x6, 0 ( x6 )
	srl x28, x5, 16&31
	srl x7, x6, 16&31
	and x6, x14, x6
	and x5, x14, x5
	sub x5, x5, x6
	add x15, x15, x5
	sra x5, x15, 16&31
	sub x7, x28, x7
	add x5, x7, x5
	and x15, x14, x15
	sll x6, x5, 16&31
	or x15, x15, x6
	add x6, x18, x12
	add x18, x18, 4
	sw x15, 0 ( x6 )
	add x6, x18, x16
	sra x15, x5, 16&31
	bltu x6, x17, .LBB11_26
.LBB11_27:                              //  %while.cond.preheader
	add x17, x18, x19
	add x16, x18, x10
	add x5, x17, 20
	bgeu x5, x13, .LBB11_28
.LBB11_29:                              //  %while.body.preheader
	mv x5, x0
.LBB11_30:                              //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x6, x5, x19
	add x6, x18, x6
	lw x6, 20 ( x6 )
	and x7, x14, x6
	add x15, x15, x7
	sra x7, x15, 16&31
	srl x6, x6, 16&31
	add x6, x6, x7
	and x15, x14, x15
	sll x7, x6, 16&31
	or x15, x15, x7
	add x7, x5, x12
	add x7, x18, x7
	sw x15, 0 ( x7 )
	add x7, x5, x17
	add x5, x5, 4
	sra x15, x6, 16&31
	add x6, x7, 24
	bltu x6, x13, .LBB11_30
.LBB11_31:                              //  %while.cond43.preheader.loopexit
	add x12, x5, x16
	add x12, x12, 20
	jal x0, .LBB11_32
.LBB11_28:
	add x12, x16, 20
.LBB11_32:                              //  %while.cond43.preheader
	add x12, x12, -4
	add x11, x11, 1
.LBB11_33:                              //  %while.cond43
                                        //  =>This Inner Loop Header: Depth=1
	lw x14, 0 ( x12 )
	add x13, x12, -4
	add x11, x11, -1
	mv x12, x13
	beq x0, x14, .LBB11_33
.LBB11_34:                              //  %while.end47
	sw x11, 16 ( x10 )
.LBB11_35:                              //  %cleanup
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x22, 4 ( sp )                //  4-byte Folded Reload
	lw x21, 8 ( sp )                //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB11_4:
	add x20, x0, -1
	mv x18, x0
	bge x20, x18, .LBB11_18
	jal x0, .LBB11_7
.LBB11_14:                              //  %if.else.i128
	seqz fp, x0
	add x12, x0, 24
	mv x10, x9
	mv x11, fp
	jal _calloc_r
	beq x0, x10, .LBB11_16
.LBB11_15:                              //  %_Balloc.exit137
	sw fp, 8 ( x10 )
	add x11, x10, 12
	sw x0, 16 ( x10 )
	sw x0, 4 ( x10 )
.LBB11_13:                              //  %if.end
	seqz x12, x0
	sw x12, 16 ( x10 )
	sw x0, 20 ( x10 )
	sw x0, 0 ( x11 )
	jal x0, .LBB11_35
.LBB11_36:                              //  %if.then10
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	add x11, x0, 576
	lui x13, %hi( .str.1 )
	mv x12, x0
	add x13, x13, %lo( .str.1 )
	jal __assert_func
.LBB11_16:                              //  %if.then2
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	add x11, x0, 562
	lui x13, %hi( .str.1 )
	mv x12, x0
	add x13, x13, %lo( .str.1 )
	jal __assert_func
.Lfunc_end11:
	.size	__mdiff, .Lfunc_end11-__mdiff
	.cfi_endproc
                                        //  -- End function
	.globl	__ulp                   //  -- Begin function __ulp
	.type	__ulp,@function
__ulp:                                  //  @__ulp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10, (2146435072>>12)&1048575
	and x10, x10, x11
	lui x11, %hi( -54525952 )
	add x11, x11, %lo( -54525952 )
	add x11, x11, x10
	bge x0, x11, .LBB12_2
.LBB12_1:                               //  %if.then
	mv x10, x0
	jr ra
.LBB12_2:                               //  %if.else
	lui x11, (54525952>>12)&1048575
	sub x11, x11, x10
	sra x12, x11, 20&31
	lui x11, %hi( 33554433 )
	add x11, x11, %lo( 33554433 )
	bltu x10, x11, .LBB12_4
.LBB12_3:                               //  %if.then7
	lui x10, (524288>>12)&1048575
	srl x11, x10, x12
	mv x10, x0
	jr ra
.LBB12_4:                               //  %if.else13
	mv x11, x0
	srl x10, x10, 21&31
	bltu x0, x10, .LBB12_6
.LBB12_5:
	seqz x10, x0
	jr ra
.LBB12_6:                               //  %cond.false
	add x10, x0, 51
	sub x10, x10, x12
	seqz x12, x0
	sll x10, x12, x10
	jr ra
.Lfunc_end12:
	.size	__ulp, .Lfunc_end12-__ulp
	.cfi_endproc
                                        //  -- End function
	.globl	__b2d                   //  -- Begin function __b2d
	.type	__b2d,@function
__b2d:                                  //  @__b2d
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x13, x10, 20
	lw x10, 16 ( x10 )
	sll x10, x10, 2&31
	add x15, x10, x13
	lw x12, -4 ( x15 )
	mv x10, x0
	mv x16, x12
	srl x14, x12, 16&31
	beq x14, x10, .LBB13_1
.LBB13_2:                               //  %entry
	seqz x14, x14
	srl x17, x16, 24&31
	sll x14, x14, 4&31
	beq x17, x10, .LBB13_3
.LBB13_4:                               //  %entry
	srl x17, x16, 28&31
	beq x17, x10, .LBB13_5
.LBB13_6:                               //  %entry
	srl x17, x16, 30&31
	beq x17, x10, .LBB13_7
.LBB13_8:                               //  %entry
	add x17, x15, -4
	blt x16, x0, .LBB13_11
.LBB13_9:                               //  %if.then20.i
	lui x5, (1073741824>>12)&1048575
	and x16, x5, x16
	bltu x0, x16, .LBB13_10
.LBB13_16:                              //  %__hi0bits.exit.thread
	add x14, x0, 32
	sw x0, 0 ( x11 )
	jal x0, .LBB13_17
.LBB13_1:                               //  %entry
	sll x16, x12, 16&31
	seqz x14, x14
	srl x17, x16, 24&31
	sll x14, x14, 4&31
	bne x17, x10, .LBB13_4
.LBB13_3:                               //  %entry
	sll x16, x16, 8&31
	or x14, x14, 8
	srl x17, x16, 28&31
	bne x17, x10, .LBB13_6
.LBB13_5:                               //  %entry
	sll x16, x16, 4&31
	or x14, x14, 4
	srl x17, x16, 30&31
	bne x17, x10, .LBB13_8
.LBB13_7:                               //  %entry
	sll x16, x16, 2&31
	or x14, x14, 2
	add x17, x15, -4
	bge x16, x0, .LBB13_9
	jal x0, .LBB13_11
.LBB13_10:
	add x14, x14, 1
.LBB13_11:                              //  %__hi0bits.exit
	add x16, x0, 32
	sub x16, x16, x14
	sw x16, 0 ( x11 )
	add x11, x0, 10
	blt x11, x14, .LBB13_17
.LBB13_12:                              //  %if.then
	add x10, x0, 11
	sub x10, x10, x14
	bgeu x13, x17, .LBB13_13
.LBB13_14:                              //  %cond.true
	lw x13, -8 ( x15 )
	jal x0, .LBB13_15
.LBB13_17:                              //  %if.end
	bgeu x13, x17, .LBB13_19
.LBB13_18:                              //  %cond.true10
	lw x10, -8 ( x15 )
	add x17, x15, -8
.LBB13_19:                              //  %cond.end13
	add x15, x14, -11
	beq x0, x15, .LBB13_20
.LBB13_21:                              //  %if.then16
	sll x11, x12, x15
	add x12, x0, 43
	sub x12, x12, x14
	srl x14, x10, x12
	bgeu x13, x17, .LBB13_22
.LBB13_23:                              //  %cond.true25
	lw x13, -4 ( x17 )
	jal x0, .LBB13_24
.LBB13_20:
	mv x11, x12
	lui x12, (1072693248>>12)&1048575
	or x11, x12, x11
	jr ra
.LBB13_22:
	mv x13, x0
.LBB13_24:                              //  %cond.end28
	sll x10, x10, x15
	srl x12, x13, x12
	or x11, x14, x11
	or x10, x10, x12
	lui x12, (1072693248>>12)&1048575
	or x11, x12, x11
	jr ra
.LBB13_13:
	mv x13, x0
.LBB13_15:                              //  %cond.end
	add x14, x14, 21
	srl x11, x12, x10
	sll x12, x12, x14
	srl x10, x13, x10
	or x10, x12, x10
	lui x12, (1072693248>>12)&1048575
	or x11, x12, x11
	jr ra
.Lfunc_end13:
	.size	__b2d, .Lfunc_end13-__b2d
	.cfi_endproc
                                        //  -- End function
	.globl	__d2b                   //  -- Begin function __d2b
	.type	__d2b,@function
__d2b:                                  //  @__d2b
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv x20, x10
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x11
	lw x11, 76 ( x20 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	mv fp, x14
	mv x9, x13
	mv x19, x12
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	bltu x0, x11, .LBB14_2
.LBB14_1:                               //  %if.then.i
	add x11, x0, 4
	add x12, x0, 33
	mv x10, x20
	jal _calloc_r
	mv x11, x10
	sw x11, 76 ( x20 )
	beq x0, x11, .LBB14_71
.LBB14_2:                               //  %if.end5.i
	lw x10, 4 ( x11 )
	beq x0, x10, .LBB14_4
.LBB14_3:                               //  %_Balloc.exit.thread154
	lw x12, 0 ( x10 )
	sw x0, 16 ( x10 )
	add x14, x10, 12
	sw x12, 4 ( x11 )
	jal x0, .LBB14_6
.LBB14_4:                               //  %if.else.i
	seqz x21, x0
	add x12, x0, 28
	mv x10, x20
	mv x11, x21
	jal _calloc_r
	beq x0, x10, .LBB14_71
.LBB14_5:                               //  %_Balloc.exit
	add x11, x0, 2
	add x14, x10, 12
	sw x11, 8 ( x10 )
	sw x21, 4 ( x10 )
	sw x0, 16 ( x10 )
.LBB14_6:                               //  %if.end
	lui x11, %hi( 1048575 )
	add x11, x11, %lo( 1048575 )
	and x12, x11, x19
	srl x11, x19, 20&31
	and x11, x11, 2047
	mv x13, x0
	beq x11, x13, .LBB14_8
.LBB14_7:
	lui x15, (1048576>>12)&1048575
	or x12, x15, x12
.LBB14_8:                               //  %if.end
	sw x0, 0 ( x14 )
	beq x0, x18, .LBB14_34
.LBB14_9:                               //  %if.then14
	and x14, x18, 7
	beq x0, x14, .LBB14_14
.LBB14_10:                              //  %if.then.i85
	and x14, x18, 1
	bltu x0, x14, .LBB14_29
.LBB14_11:                              //  %if.end.i
	and x14, x18, 2
	bltu x0, x14, .LBB14_12
.LBB14_13:                              //  %if.end7.i
	add x14, x0, 2
	srl x18, x18, 2&31
	jal x0, .LBB14_28
.LBB14_34:                              //  %if.else27
	and x13, x12, 7
	beq x0, x13, .LBB14_40
.LBB14_35:                              //  %if.then.i91
	and x13, x12, 1
	bltu x0, x13, .LBB14_36
.LBB14_37:                              //  %if.end.i94
	and x13, x12, 2
	bltu x0, x13, .LBB14_38
.LBB14_39:                              //  %if.end7.i98
	add x13, x0, 2
	srl x12, x12, 2&31
	jal x0, .LBB14_54
.LBB14_14:                              //  %if.end9.i
	lui x14, %hi( 65535 )
	add x14, x14, %lo( 65535 )
	and x14, x14, x18
	mv x16, x0
	beq x14, x16, .LBB14_15
.LBB14_16:                              //  %if.end9.i
	mv x15, x18
	seqz x14, x14
	sll x14, x14, 4&31
	and x17, x15, 255
	beq x17, x16, .LBB14_18
	jal x0, .LBB14_19
.LBB14_40:                              //  %if.end9.i124
	lui x13, %hi( 65535 )
	add x13, x13, %lo( 65535 )
	and x13, x13, x12
	mv x15, x0
	beq x13, x15, .LBB14_41
.LBB14_42:                              //  %if.end9.i124
	mv x14, x12
	seqz x13, x13
	sll x13, x13, 4&31
	and x16, x14, 255
	beq x16, x15, .LBB14_44
	jal x0, .LBB14_45
.LBB14_36:
	mv x13, x0
	jal x0, .LBB14_54
.LBB14_15:
	srl x15, x18, 16&31
	seqz x14, x14
	sll x14, x14, 4&31
	and x17, x15, 255
	bne x17, x16, .LBB14_19
.LBB14_18:
	or x14, x14, 8
	srl x15, x15, 8&31
.LBB14_19:                              //  %if.end9.i
	and x17, x15, 15
	beq x17, x16, .LBB14_20
.LBB14_21:                              //  %if.end9.i
	and x17, x15, 3
	beq x17, x16, .LBB14_22
.LBB14_23:                              //  %if.end9.i
	and x16, x15, 1
	bltu x0, x16, .LBB14_27
.LBB14_24:                              //  %if.then34.i
	srl x15, x15, 1&31
	beq x0, x15, .LBB14_25
.LBB14_26:
	add x14, x14, 1
	mv x18, x15
	bltu x0, x14, .LBB14_28
	jal x0, .LBB14_29
.LBB14_20:
	srl x15, x15, 4&31
	or x14, x14, 4
	and x17, x15, 3
	bne x17, x16, .LBB14_23
.LBB14_22:
	or x14, x14, 2
	srl x15, x15, 2&31
	and x16, x15, 1
	beq x0, x16, .LBB14_24
.LBB14_27:                              //  %__lo0bits.exit
	mv x18, x15
	bltu x0, x14, .LBB14_28
.LBB14_29:                              //  %if.else
	mv x14, x13
	sw x18, 20 ( x10 )
	bne x12, x13, .LBB14_32
.LBB14_31:
	seqz x15, x0
	sw x12, 24 ( x10 )
	sw x15, 16 ( x10 )
	add x12, x11, x14
	bltu x0, x11, .LBB14_56
	jal x0, .LBB14_57
.LBB14_12:                              //  %if.then6.i
	seqz x14, x0
	srl x18, x18, 1&31
	jal x0, .LBB14_28
.LBB14_41:
	srl x14, x12, 16&31
	seqz x13, x13
	sll x13, x13, 4&31
	and x16, x14, 255
	bne x16, x15, .LBB14_45
.LBB14_44:
	or x13, x13, 8
	srl x14, x14, 8&31
.LBB14_45:                              //  %if.end9.i124
	and x16, x14, 15
	beq x16, x15, .LBB14_46
.LBB14_47:                              //  %if.end9.i124
	and x16, x14, 3
	beq x16, x15, .LBB14_48
.LBB14_49:                              //  %if.end9.i124
	and x15, x14, 1
	bltu x0, x15, .LBB14_53
.LBB14_50:                              //  %if.then34.i128
	srl x14, x14, 1&31
	beq x0, x14, .LBB14_51
.LBB14_52:
	add x13, x13, 1
	jal x0, .LBB14_53
.LBB14_46:
	srl x14, x14, 4&31
	or x13, x13, 4
	and x16, x14, 3
	bne x16, x15, .LBB14_49
.LBB14_48:
	or x13, x13, 2
	srl x14, x14, 2&31
	and x15, x14, 1
	beq x0, x15, .LBB14_50
.LBB14_53:                              //  %if.end41.i131
	mv x12, x14
	jal x0, .LBB14_54
.LBB14_38:                              //  %if.then6.i96
	seqz x13, x0
	srl x12, x12, 1&31
	jal x0, .LBB14_54
.LBB14_25:
	add x14, x0, 32
.LBB14_28:                              //  %if.then19
	add x15, x0, 32
	sub x15, x15, x14
	sll x15, x12, x15
	or x15, x18, x15
	sw x15, 20 ( x10 )
	srl x12, x12, x14
	beq x12, x13, .LBB14_31
.LBB14_32:                              //  %if.end24
	add x15, x0, 2
	sw x12, 24 ( x10 )
	sw x15, 16 ( x10 )
	add x12, x11, x14
	bltu x0, x11, .LBB14_56
.LBB14_57:                              //  %if.else38
	sll x11, x15, 2&31
	add x11, x10, x11
	lw x13, 16 ( x11 )
	mv x14, x0
	srl x11, x13, 16&31
	beq x11, x14, .LBB14_58
.LBB14_59:                              //  %if.else38
	seqz x11, x11
	srl x16, x13, 24&31
	sll x11, x11, 4&31
	beq x16, x14, .LBB14_60
.LBB14_61:                              //  %if.else38
	srl x16, x13, 28&31
	beq x16, x14, .LBB14_62
.LBB14_63:                              //  %if.else38
	srl x16, x13, 30&31
	beq x16, x14, .LBB14_64
.LBB14_65:                              //  %if.else38
	add x12, x12, -1074
	sw x12, 0 ( x9 )
	sll x12, x15, 5&31
	blt x13, x0, .LBB14_69
.LBB14_66:                              //  %if.then20.i
	lui x14, (1073741824>>12)&1048575
	and x13, x14, x13
	bltu x0, x13, .LBB14_68
.LBB14_67:
	add x11, x0, 32
	jal x0, .LBB14_69
.LBB14_58:                              //  %if.else38
	sll x13, x13, 16&31
	seqz x11, x11
	srl x16, x13, 24&31
	sll x11, x11, 4&31
	bne x16, x14, .LBB14_61
.LBB14_60:                              //  %if.else38
	sll x13, x13, 8&31
	or x11, x11, 8
	srl x16, x13, 28&31
	bne x16, x14, .LBB14_63
.LBB14_62:                              //  %if.else38
	sll x13, x13, 4&31
	or x11, x11, 4
	srl x16, x13, 30&31
	bne x16, x14, .LBB14_65
.LBB14_64:                              //  %if.else38
	sll x13, x13, 2&31
	or x11, x11, 2
	add x12, x12, -1074
	sw x12, 0 ( x9 )
	sll x12, x15, 5&31
	bge x13, x0, .LBB14_66
	jal x0, .LBB14_69
.LBB14_68:
	add x11, x11, 1
.LBB14_69:                              //  %__hi0bits.exit
	sub x11, x12, x11
	jal x0, .LBB14_70
.LBB14_51:
	add x13, x0, 32
.LBB14_54:                              //  %__lo0bits.exit133
	seqz x15, x0
	add x14, x13, 32
	sw x12, 20 ( x10 )
	sw x15, 16 ( x10 )
	add x12, x11, x14
	beq x0, x11, .LBB14_57
.LBB14_56:                              //  %if.then33
	add x11, x12, -1075
	sw x11, 0 ( x9 )
	add x11, x0, 53
	sub x11, x11, x14
.LBB14_70:                              //  %if.end47
	sw x11, 0 ( fp )
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
.LBB14_71:                              //  %if.then
	lui x10, %hi( .str )
	lui x13, %hi( .str.1 )
	add x10, x10, %lo( .str )
	add x11, x0, 778
	mv x12, x0
	add x13, x13, %lo( .str.1 )
	jal __assert_func
.Lfunc_end14:
	.size	__d2b, .Lfunc_end14-__d2b
	.cfi_endproc
                                        //  -- End function
	.globl	__ratio                 //  -- Begin function __ratio
	.type	__ratio,@function
__ratio:                                //  @__ratio
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x11
	add x11, sp, 8
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv x19, x10
	jal __b2d
	mv fp, x10
	mv x9, x11
	add x11, sp, 4
	mv x10, x18
	jal __b2d
	mv x12, x10
	mv x13, x11
	lw x10, 4 ( sp )
	lw x11, 8 ( sp )
	lw x14, 16 ( x19 )
	sub x10, x11, x10
	lw x11, 16 ( x18 )
	sub x11, x14, x11
	sll x11, x11, 5&31
	add x11, x10, x11
	sll x10, x11, 20&31
	bge x0, x11, .LBB15_2
.LBB15_1:                               //  %if.then
	add x9, x9, x10
	jal x0, .LBB15_3
.LBB15_2:                               //  %if.else
	sub x13, x13, x10
.LBB15_3:                               //  %if.end
	mv x10, fp
	mv x11, x9
	jal __divdf3
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end15:
	.size	__ratio, .Lfunc_end15-__ratio
	.cfi_endproc
                                        //  -- End function
	.globl	_mprec_log10            //  -- Begin function _mprec_log10
	.type	_mprec_log10,@function
_mprec_log10:                           //  @_mprec_log10
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x10
	slti x10, fp, 24
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	beq x0, x10, .LBB16_1
.LBB16_4:                               //  %if.then
	lui x11, %hi( __mprec_tens )
	sll x10, fp, 3&31
	add x11, x11, %lo( __mprec_tens )
	add x10, x10, x11
	lw x11, 4 ( x10 )
	lw x10, 0 ( x10 )
	jal x0, .LBB16_3
.LBB16_1:                               //  %while.body.preheader
	mv x9, x0
	lui x11, (1072693248>>12)&1048575
	lui x18, (1076101120>>12)&1048575
	mv x10, x9
.LBB16_2:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x12, x9
	mv x13, x18
	jal __muldf3
	add fp, fp, -1
	blt x0, fp, .LBB16_2
.LBB16_3:                               //  %cleanup
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end16:
	.size	_mprec_log10, .Lfunc_end16-_mprec_log10
	.cfi_endproc
                                        //  -- End function
	.globl	__copybits              //  -- Begin function __copybits
	.type	__copybits,@function
__copybits:                             //  @__copybits
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x11, x11, -1
	sra x11, x11, 5&31
	lw x14, 16 ( x12 )
	sll x11, x11, 2&31
	add x11, x11, x10
	add x13, x11, 4
	bge x0, x14, .LBB17_3
.LBB17_1:                               //  %while.body.preheader
	sll x14, x14, 2&31
	add x14, x14, x12
	add x14, x14, 20
	add x12, x12, 20
.LBB17_2:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x15, 0 ( x12 )
	add x12, x12, 4
	sw x15, 0 ( x10 )
	add x10, x10, 4
	bltu x12, x14, .LBB17_2
.LBB17_3:                               //  %while.cond4.preheader
	bgeu x10, x13, .LBB17_6
.LBB17_4:                               //  %while.body6.preheader
	add x10, x10, -4
.LBB17_5:                               //  %while.body6
                                        //  =>This Inner Loop Header: Depth=1
	sw x0, 4 ( x10 )
	add x10, x10, 4
	bltu x10, x11, .LBB17_5
.LBB17_6:                               //  %while.end8
	jr ra
.Lfunc_end17:
	.size	__copybits, .Lfunc_end17-__copybits
	.cfi_endproc
                                        //  -- End function
	.globl	__any_on                //  -- Begin function __any_on
	.type	__any_on,@function
__any_on:                               //  @__any_on
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x10
	lw x14, 16 ( x12 )
	sra x13, x11, 5&31
	seqz x10, x0
	bge x14, x13, .LBB18_2
.LBB18_1:
	mv x13, x14
	jal x0, .LBB18_5
.LBB18_2:                               //  %if.else
	bge x13, x14, .LBB18_5
.LBB18_3:                               //  %land.lhs.true
	and x11, x11, 31
	beq x0, x11, .LBB18_5
.LBB18_4:                               //  %if.then2
	add x14, x0, -1
	sll x11, x14, x11
	sll x14, x13, 2&31
	add x14, x14, x12
	lw x14, 20 ( x14 )
	and x11, x11, x14
	bne x11, x14, .LBB18_9
.LBB18_5:                               //  %if.end7
	sll x13, x13, 2&31
	add x11, x12, 20
	add x12, x13, x12
	add x13, x12, 20
	mv x12, x0
.LBB18_6:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	bgeu x11, x13, .LBB18_7
.LBB18_8:                               //  %while.body
                                        //    in Loop: Header=BB18_6 Depth=1
	lw x15, -4 ( x13 )
	add x14, x13, -4
	mv x13, x14
	beq x0, x15, .LBB18_6
.LBB18_9:                               //  %cleanup
	jr ra
.LBB18_7:
	mv x10, x12
	jr ra
.Lfunc_end18:
	.size	__any_on, .Lfunc_end18-__any_on
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"/tools/toolchain/newlib/newlib/libc/stdlib/mprec.c"
	.size	.str, 51

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"Balloc succeeded"
	.size	.str.1, 17

	.address_space	0
	.type	__pow5mult.p05,@object  //  @__pow5mult.p05
	.section	.rodata,"a",@progbits
	.p2align	2
__pow5mult.p05:
	.long	5                       //  0x5
	.long	25                      //  0x19
	.long	125                     //  0x7d
	.size	__pow5mult.p05, 12

	.address_space	0
	.type	__mprec_tens,@object    //  @__mprec_tens
	.globl	__mprec_tens
	.p2align	3
__mprec_tens:
	.quad	4607182418800017408     //  double 1
	.quad	4621819117588971520     //  double 10
	.quad	4636737291354636288     //  double 100
	.quad	4652007308841189376     //  double 1000
	.quad	4666723172467343360     //  double 1.0E+4
	.quad	4681608360884174848     //  double 1.0E+5
	.quad	4696837146684686336     //  double 1.0E+6
	.quad	4711630319722168320     //  double 1.0E+7
	.quad	4726483295884279808     //  double 1.0E+8
	.quad	4741671816366391296     //  double 1.0E+9
	.quad	4756540486875873280     //  double 1.0E+10
	.quad	4771362005757984768     //  double 1.0E+11
	.quad	4786511204640096256     //  double 1.0E+12
	.quad	4801453603149578240     //  double 1.0E+13
	.quad	4816244402031689728     //  double 1.0E+14
	.quad	4831355200913801216     //  double 1.0E+15
	.quad	4846369599423283200     //  double 1.0E+16
	.quad	4861130398305394688     //  double 1.0E+17
	.quad	4876203697187506176     //  double 1.0E+18
	.quad	4891288408196988160     //  double 1.0E+19
	.quad	4906019910204099648     //  double 1.0E+20
	.quad	4921056587992461136     //  double 1.0E+21
	.quad	4936209963552724370     //  double 1.0E+22
	.quad	4950912855330343670     //  double 9.9999999999999991E+22
	.quad	4965913770331839924     //  double 9.9999999999999998E+23
	.size	__mprec_tens, 200

	.address_space	0
	.type	__mprec_bigtens,@object //  @__mprec_bigtens
	.globl	__mprec_bigtens
	.p2align	3
__mprec_bigtens:
	.quad	4846369599423283200     //  double 1.0E+16
	.quad	5085611494797045271     //  double 1.0000000000000001E+32
	.quad	5564284217833028085     //  double 1.0E+64
	.quad	6521906365687930162     //  double 1.0000000000000001E+128
	.quad	8436737289693151036     //  double 1.0E+256
	.size	__mprec_bigtens, 40

	.address_space	0
	.type	__mprec_tinytens,@object //  @__mprec_tinytens
	.globl	__mprec_tinytens
	.p2align	3
__mprec_tinytens:
	.quad	4367597403136100796     //  double 9.9999999999999997E-17
	.quad	4128101167230658355     //  double 1.0000000000000001E-32
	.quad	3649340653511681853     //  double 9.9999999999999997E-65
	.quad	2691949749288605597     //  double 1.0000000000000001E-128
	.quad	776877706278891331      //  double 9.9999999999999997E-257
	.size	__mprec_tinytens, 40


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
