	.text
	.file	"mcount.c"
	.globl	_mcount_internal        //  -- Begin function _mcount_internal
	.type	_mcount_internal,@function
_mcount_internal:                       //  @_mcount_internal
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x12, %hi( _gmonparam.0 )
	add x12, x12, %lo( _gmonparam.0 )
	lw x13, 0 ( x12 )
	xor x13, x13, 1
	bltu x0, x13, .LBB0_16
.LBB0_1:                                //  %if.end
	add x13, x0, 2
	sw x13, 0 ( x12 )
	lui x13, %hi( _gmonparam.8 )
	add x13, x13, %lo( _gmonparam.8 )
	lui x14, %hi( _gmonparam.10 )
	lw x13, 0 ( x13 )
	add x14, x14, %lo( _gmonparam.10 )
	lw x14, 0 ( x14 )
	sub x13, x10, x13
	seqz x10, x0
	bltu x14, x13, .LBB0_15
.LBB0_2:                                //  %if.end4
	lui x14, %hi( _gmonparam.12 )
	add x14, x14, %lo( _gmonparam.12 )
	lw x14, 0 ( x14 )
	srl x13, x13, x14
	lui x14, %hi( _gmonparam.3 )
	add x14, x14, %lo( _gmonparam.3 )
	lw x14, 0 ( x14 )
	sll x13, x13, 2&31
	add x13, x13, x14
	lui x14, %hi( _gmonparam.5 )
	add x14, x14, %lo( _gmonparam.5 )
	lw x14, 0 ( x14 )
	lw x15, 0 ( x13 )
	beq x0, x15, .LBB0_8
.LBB0_3:                                //  %if.end14
	add x16, x0, 12
	hackaton_custom_instr_c x17, x16, x15
	add x17, x17, x14
	lw x5, 0 ( x17 )
	bne x5, x11, .LBB0_5
.LBB0_4:                                //  %if.then19
	lw x11, 4 ( x17 )
	add x11, x11, 1
	sw x11, 4 ( x17 )
	jal x0, .LBB0_15
.LBB0_5:                                //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	hackaton_custom_instr_c x15, x16, x15
	add x5, x15, x14
	lw x15, 8 ( x5 )
	beq x0, x15, .LBB0_11
.LBB0_6:                                //  %if.end39
                                        //    in Loop: Header=BB0_5 Depth=1
	hackaton_custom_instr_c x17, x16, x15
	add x17, x17, x14
	lw x6, 0 ( x17 )
	bne x6, x11, .LBB0_5
.LBB0_7:                                //  %if.then45
	lw x14, 8 ( x17 )
	add x11, x5, 8
	sw x14, 0 ( x11 )
	lw x11, 4 ( x17 )
	add x11, x11, 1
	sw x11, 4 ( x17 )
	lw x11, 0 ( x13 )
	sw x11, 8 ( x17 )
	jal x0, .LBB0_13
.LBB0_8:                                //  %if.then6
	lui x15, %hi( _gmonparam.7 )
	lw x10, 8 ( x14 )
	add x15, x15, %lo( _gmonparam.7 )
	lw x15, 0 ( x15 )
	add x10, x10, 1
	sw x10, 8 ( x14 )
	bgeu x10, x15, .LBB0_14
.LBB0_9:                                //  %if.end9
	sw x10, 0 ( x13 )
	add x13, x0, 12
	hackaton_custom_instr_c x10, x13, x10
	add x13, x10, x14
	seqz x10, x0
	sw x11, 0 ( x13 )
	sw x10, 4 ( x13 )
	sw x0, 8 ( x13 )
	jal x0, .LBB0_15
.LBB0_11:                               //  %if.then25
	lw x10, 8 ( x14 )
	add x15, x10, 1
	lui x10, %hi( _gmonparam.7 )
	add x10, x10, %lo( _gmonparam.7 )
	lw x10, 0 ( x10 )
	sw x15, 8 ( x14 )
	bgeu x15, x10, .LBB0_14
.LBB0_12:                               //  %if.end33
	hackaton_custom_instr_c x10, x16, x15
	add x14, x10, x14
	seqz x10, x0
	sw x11, 0 ( x14 )
	sw x10, 4 ( x14 )
	lw x11, 0 ( x13 )
	sw x11, 8 ( x14 )
.LBB0_13:                               //  %cleanup.sink.split
	sw x15, 0 ( x13 )
	jal x0, .LBB0_15
.LBB0_14:
	add x10, x0, 3
.LBB0_15:                               //  %cleanup.sink.split
	sw x10, 0 ( x12 )
.LBB0_16:                               //  %cleanup
	jr ra
.Lfunc_end0:
	.size	_mcount_internal, .Lfunc_end0-_mcount_internal
	.cfi_endproc
                                        //  -- End function
	.globl	_monstartup             //  -- Begin function _monstartup
	.type	_monstartup,@function
_monstartup:                            //  @_monstartup
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	lui x12, %hi( _gmonparam.0 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9, x12, %lo( _gmonparam.0 )
	add x12, x0, 2
	sw x12, 0 ( x9 )
	lui x12, %hi( _gmonparam.11 )
	add x12, x12, %lo( _gmonparam.11 )
	seqz x13, x0
	add x11, x11, 3
	sb x13, 0 ( x12 )
	lui x12, %hi( _gmonparam.8 )
	and x10, x10, -4
	add x12, x12, %lo( _gmonparam.8 )
	and x11, x11, -4
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	sw x10, 0 ( x12 )
	sub fp, x11, x10
	lui x10, %hi( _gmonparam.10 )
	add x10, x10, %lo( _gmonparam.10 )
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	srl x20, fp, 1&31
	sw fp, 0 ( x10 )
	add x10, x20, 3
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	and x21, x10, -4
	lui x10, %hi( _gmonparam.2 )
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18, x10, %lo( _gmonparam.2 )
	add x10, x0, 8
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x21, 0 ( x18 )
	jal ffs
	lui x11, %hi( _gmonparam.12 )
	add x10, x10, -1
	add x11, x11, %lo( _gmonparam.12 )
	sw x10, 0 ( x11 )
	lui x10, %hi( _gmonparam.4 )
	add x19, x0, 3
	add x10, x10, %lo( _gmonparam.4 )
	hackaton_custom_instr_c fp, x19, fp
	sw x20, 0 ( x10 )
	add x11, x0, 100
	mv x10, fp
	jal __udivsi3
	lui x11, %hi( _gmonparam.7 )
	srl x12, fp, 3&31
	add x11, x11, %lo( _gmonparam.7 )
	sltiu x12, x12, 625
	sw x10, 0 ( x11 )
	beq x0, x12, .LBB1_2
.LBB1_1:
	add x10, x0, 50
	jal x0, .LBB1_4
.LBB1_2:                                //  %if.else
	lui x12, %hi( 104857700 )
	add x12, x12, %lo( 104857700 )
	bltu fp, x12, .LBB1_5
.LBB1_3:
	lui x10, (1048576>>12)&1048575
.LBB1_4:                                //  %if.end29.sink.split
	sw x10, 0 ( x11 )
.LBB1_5:                                //  %if.end29
	add x11, x0, 12
	hackaton_custom_instr_c x10, x11, x10
	lui x11, %hi( _gmonparam.6 )
	add x22, x11, %lo( _gmonparam.6 )
	add x11, x20, x21
	seqz fp, x0
	sw x10, 0 ( x22 )
	add x10, x10, x11
	mv x11, fp
	jal calloc
	beq x0, x10, .LBB1_6
.LBB1_7:                                //  %if.end42
	lw x11, 0 ( x22 )
	lui x12, %hi( _gmonparam.1 )
	add x12, x12, %lo( _gmonparam.1 )
	sw x0, 8 ( x10 )
	add x11, x11, x10
	sw x11, 0 ( x12 )
	lw x12, 0 ( x18 )
	sw fp, 0 ( x9 )
	add x11, x12, x11
	lui x12, %hi( _gmonparam.3 )
	add x12, x12, %lo( _gmonparam.3 )
	sw x11, 0 ( x12 )
	lui x11, %hi( _gmonparam.5 )
	add x11, x11, %lo( _gmonparam.5 )
	sw x10, 0 ( x11 )
	lui x10, %hi( _mcleanup )
	add x10, x10, %lo( _mcleanup )
	jal atexit
	jal x0, .LBB1_8
.LBB1_6:                                //  %if.then39
	lui x11, %hi( .str )
	add x10, x0, 2
	add x11, x11, %lo( .str )
	add x12, x0, 26
	jal write
	lui x10, %hi( _gmonparam.5 )
	add x10, x10, %lo( _gmonparam.5 )
	sw x19, 0 ( x9 )
	sw x0, 0 ( x10 )
.LBB1_8:                                //  %cleanup
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
.Lfunc_end1:
	.size	_monstartup, .Lfunc_end1-_monstartup
	.cfi_endproc
                                        //  -- End function
	.globl	_mcleanup               //  -- Begin function _mcleanup
	.type	_mcleanup,@function
_mcleanup:                              //  @_mcleanup
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -528
	.cfi_adjust_cfa_offset 528
	lui x10, %hi( _gmonparam.0 )
	add x10, x10, %lo( _gmonparam.0 )
	lw x11, 0 ( x10 )
	sw x9, 520 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	lui x9, %hi( _gmonparam.5 )
	sw ra, 524 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	xor x11, x11, 3
	sw x18, 516 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 512 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 508 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 504 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 500 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 496 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 492 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 488 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 484 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 480 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw fp, 476 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	beq x0, x11, .LBB2_17
.LBB2_1:                                //  %if.then
	lui x11, %hi( .str.2 )
	sw x0, 0 ( x10 )
	lui x10, %hi( .str.1 )
	add x10, x10, %lo( .str.1 )
	add x11, x11, %lo( .str.2 )
	jal fopen
	mv fp, x10
	beq x0, fp, .LBB2_2
.LBB2_3:                                //  %if.end.i
	add x18, sp, 32
	mv x21, x0
	add x19, x0, 20
	mv x10, x18
	mv x11, x21
	mv x12, x19
	jal memset
	lui x10, %hi( .str.4 )
	add x11, x10, %lo( .str.4 )
	add x12, x0, 4
	mv x10, x18
	jal memcpy
	seqz x20, x0
	mv x10, x18
	mv x11, x19
	mv x12, x20
	mv x13, fp
	sw x20, 36 ( sp )
	jal fwrite
	lui x10, %hi( _gmonparam.4 )
	add x10, x10, %lo( _gmonparam.4 )
	lw x10, 0 ( x10 )
	add x18, sp, 60
	sb x20, 390 ( x18 )
	sb x20, 377 ( x18 )
	srl x10, x10, 2&31
	sb x20, 364 ( x18 )
	sb x20, 351 ( x18 )
	sb x20, 338 ( x18 )
	sb x20, 325 ( x18 )
	sb x20, 312 ( x18 )
	sb x20, 299 ( x18 )
	sb x20, 286 ( x18 )
	sb x20, 273 ( x18 )
	sb x20, 260 ( x18 )
	sb x20, 247 ( x18 )
	sb x20, 234 ( x18 )
	sb x20, 221 ( x18 )
	sb x20, 208 ( x18 )
	sb x20, 195 ( x18 )
	sb x20, 182 ( x18 )
	sb x20, 169 ( x18 )
	sb x20, 156 ( x18 )
	sb x20, 143 ( x18 )
	sb x20, 130 ( x18 )
	sb x20, 117 ( x18 )
	sb x20, 104 ( x18 )
	sb x20, 91 ( x18 )
	sb x20, 78 ( x18 )
	sb x20, 65 ( x18 )
	sb x20, 52 ( x18 )
	sb x20, 39 ( x18 )
	sb x20, 26 ( x18 )
	sb x20, 13 ( x18 )
	sb x20, 463 ( sp )
	sb x20, 60 ( sp )
	sw x10, 28 ( sp )               //  4-byte Folded Spill
	beq x0, x10, .LBB2_16
.LBB2_4:                                //  %for.body3.lr.ph.i.i
	lui x10, %hi( _gmonparam.3 )
	add x10, x10, %lo( _gmonparam.3 )
	sw x10, 24 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _gmonparam.11 )
	add x10, x10, %lo( _gmonparam.11 )
	sw x10, 20 ( sp )               //  4-byte Folded Spill
	lui x10, %hi( _gmonparam.8 )
	add x10, x10, %lo( _gmonparam.8 )
	add x25, x9, %lo( _gmonparam.5 )
	mv x19, x21
	add x27, x0, 12
	add x26, x0, 13
	add x20, sp, 56
	mv x9, x21
	add x21, x0, 4
	add x22, sp, 52
	sw x10, 16 ( sp )               //  4-byte Folded Spill
	jal x0, .LBB2_5
.LBB2_13:                               //  %for.inc28.i.i
                                        //    in Loop: Header=BB2_5 Depth=1
	lw x10, 28 ( sp )               //  4-byte Folded Reload
	add x9, x9, 1
	bgeu x9, x10, .LBB2_14
.LBB2_5:                                //  %for.body3.i.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB2_10 Depth 2
	lw x10, 24 ( sp )               //  4-byte Folded Reload
	sll x11, x9, 2&31
	lw x10, 0 ( x10 )
	add x10, x11, x10
	lw x11, 0 ( x10 )
	beq x0, x11, .LBB2_13
.LBB2_6:                                //  %if.end.i.i
                                        //    in Loop: Header=BB2_5 Depth=1
	lw x11, 20 ( sp )               //  4-byte Folded Reload
	lbu x12, 0 ( x11 )
	add x11, x0, 2
	bltu x0, x12, .LBB2_8
.LBB2_7:                                //  %if.end.i.i
                                        //    in Loop: Header=BB2_5 Depth=1
	mv x11, x0
.LBB2_8:                                //  %if.end.i.i
                                        //    in Loop: Header=BB2_5 Depth=1
	lw x12, 16 ( sp )               //  4-byte Folded Reload
	hackaton_custom_instr_c x11, x11, x9
	sll x11, x11, 2&31
	lw x12, 0 ( x12 )
	add x11, x12, x11
	sw x11, 56 ( sp )
	lw x11, 0 ( x10 )
	beq x0, x11, .LBB2_13
.LBB2_9:                                //  %for.body10.preheader.i.i
                                        //    in Loop: Header=BB2_5 Depth=1
	lw x10, 0 ( x25 )
	jal x0, .LBB2_10
.LBB2_12:                               //  %if.end24.i.i
                                        //    in Loop: Header=BB2_10 Depth=2
	lw x10, 0 ( x25 )
	add x11, x23, x10
	lw x11, 8 ( x11 )
	beq x0, x11, .LBB2_13
.LBB2_10:                               //  %for.body10.i.i
                                        //    Parent Loop BB2_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	hackaton_custom_instr_c x23, x27, x11
	add x10, x23, x10
	lw x10, 4 ( x10 )
	mv x11, x20
	mv x12, x21
	sw x10, 52 ( sp )
	hackaton_custom_instr_c x10, x26, x19
	add x24, x10, x18
	add x10, x24, 1
	jal memcpy
	lw x10, 0 ( x25 )
	mv x12, x21
	add x11, x23, x10
	add x10, x24, 5
	jal memcpy
	add x10, x24, 9
	mv x11, x22
	mv x12, x21
	jal memcpy
	add x19, x19, 1
	xor x10, x19, 32
	bltu x0, x10, .LBB2_12
.LBB2_11:                               //  %if.then21.i.i
                                        //    in Loop: Header=BB2_10 Depth=2
	mv x10, x18
	add x11, x0, 416
	seqz x12, x0
	mv x13, fp
	jal fwrite
	mv x19, x0
	jal x0, .LBB2_12
.LBB2_2:                                //  %if.then.i
	lui x11, %hi( .str.3 )
	add x10, x0, 2
	add x11, x11, %lo( .str.3 )
	add x12, x0, 37
	jal write
	add fp, x9, %lo( _gmonparam.5 )
	lw x10, 0 ( fp )
	bltu x0, x10, .LBB2_18
	jal x0, .LBB2_19
.LBB2_14:                               //  %for.end30.i.i
	lui x9, %hi( _gmonparam.5 )
	bge x0, x19, .LBB2_16
.LBB2_15:                               //  %if.then32.i.i
	add x10, sp, 60
	add x11, x0, 13
	mv x12, x19
	mv x13, fp
	jal fwrite
.LBB2_16:                               //  %write_call_graph.exit.i
	mv x10, fp
	jal fclose
.LBB2_17:                               //  %if.end
	add fp, x9, %lo( _gmonparam.5 )
	lw x10, 0 ( fp )
	beq x0, x10, .LBB2_19
.LBB2_18:                               //  %if.then2
	jal free
	sw x0, 0 ( fp )
.LBB2_19:                               //  %if.end3
	lw fp, 476 ( sp )               //  4-byte Folded Reload
	lw x27, 480 ( sp )              //  4-byte Folded Reload
	lw x26, 484 ( sp )              //  4-byte Folded Reload
	lw x25, 488 ( sp )              //  4-byte Folded Reload
	lw x24, 492 ( sp )              //  4-byte Folded Reload
	lw x23, 496 ( sp )              //  4-byte Folded Reload
	lw x22, 500 ( sp )              //  4-byte Folded Reload
	lw x21, 504 ( sp )              //  4-byte Folded Reload
	lw x20, 508 ( sp )              //  4-byte Folded Reload
	lw x19, 512 ( sp )              //  4-byte Folded Reload
	lw x18, 516 ( sp )              //  4-byte Folded Reload
	lw x9, 520 ( sp )               //  4-byte Folded Reload
	lw ra, 524 ( sp )               //  4-byte Folded Reload
	add sp, sp, 528
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end2:
	.size	_mcleanup, .Lfunc_end2-_mcleanup
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"monstartup: out of memory\n"
	.size	.str, 27

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"gmon.out"
	.size	.str.1, 9

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"wb"
	.size	.str.2, 3

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"_mcleanup: could not create gmon.out\n"
	.size	.str.3, 38

	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	"gmon"
	.size	.str.4, 5

	.address_space	0
	.type	_gmonparam.0,@object    //  @_gmonparam.0
	.local	_gmonparam.0
	.comm	_gmonparam.0,4,4
	.address_space	0
	.type	_gmonparam.1,@object    //  @_gmonparam.1
	.local	_gmonparam.1
	.comm	_gmonparam.1,4,4
	.address_space	0
	.type	_gmonparam.2,@object    //  @_gmonparam.2
	.local	_gmonparam.2
	.comm	_gmonparam.2,4,4
	.address_space	0
	.type	_gmonparam.3,@object    //  @_gmonparam.3
	.local	_gmonparam.3
	.comm	_gmonparam.3,4,4
	.address_space	0
	.type	_gmonparam.4,@object    //  @_gmonparam.4
	.local	_gmonparam.4
	.comm	_gmonparam.4,4,4
	.address_space	0
	.type	_gmonparam.5,@object    //  @_gmonparam.5
	.local	_gmonparam.5
	.comm	_gmonparam.5,4,4
	.address_space	0
	.type	_gmonparam.6,@object    //  @_gmonparam.6
	.local	_gmonparam.6
	.comm	_gmonparam.6,4,4
	.address_space	0
	.type	_gmonparam.7,@object    //  @_gmonparam.7
	.local	_gmonparam.7
	.comm	_gmonparam.7,4,4
	.address_space	0
	.type	_gmonparam.8,@object    //  @_gmonparam.8
	.local	_gmonparam.8
	.comm	_gmonparam.8,4,4
	.address_space	0
	.type	_gmonparam.10,@object   //  @_gmonparam.10
	.local	_gmonparam.10
	.comm	_gmonparam.10,4,4
	.address_space	0
	.type	_gmonparam.11,@object   //  @_gmonparam.11
	.local	_gmonparam.11
	.comm	_gmonparam.11,1,4
	.address_space	0
	.type	_gmonparam.12,@object   //  @_gmonparam.12
	.local	_gmonparam.12
	.comm	_gmonparam.12,4,4

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
