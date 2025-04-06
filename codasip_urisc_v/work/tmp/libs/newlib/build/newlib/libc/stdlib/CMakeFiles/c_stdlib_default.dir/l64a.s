	.text
	.file	"l64a.c"
	.globl	l64a                    //  -- Begin function l64a
	.type	l64a,@function
l64a:                                   //  @l64a
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x13, 0 ( x10 )
	add x10, x13, 212
	beq x0, x11, .LBB0_1
.LBB0_3:                                //  %if.end.i
	lui x12, %hi( R64_ARRAY )
	and x14, x11, 63
	add x12, x12, %lo( R64_ARRAY )
	add x14, x14, x12
	lb x14, 0 ( x14 )
	sb x14, 0 ( x10 )
	srl x14, x11, 6&31
	beq x0, x14, .LBB0_4
.LBB0_5:                                //  %if.end.1.i
	and x14, x14, 63
	add x14, x14, x12
	lb x14, 0 ( x14 )
	sb x14, 1 ( x10 )
	srl x14, x11, 12&31
	beq x0, x14, .LBB0_6
.LBB0_7:                                //  %if.end.2.i
	and x14, x14, 63
	add x14, x14, x12
	lb x14, 0 ( x14 )
	sb x14, 2 ( x10 )
	srl x14, x11, 18&31
	beq x0, x14, .LBB0_8
.LBB0_9:                                //  %if.end.3.i
	and x14, x14, 63
	add x14, x14, x12
	lb x14, 0 ( x14 )
	sb x14, 215 ( x13 )
	add x13, x13, 216
	srl x14, x11, 24&31
	beq x0, x14, .LBB0_2
.LBB0_10:                               //  %if.end.4.i
	and x14, x14, 63
	add x14, x14, x12
	lb x14, 0 ( x14 )
	srl x11, x11, 30&31
	sb x14, 0 ( x13 )
	add x13, x13, 1
	beq x0, x11, .LBB0_2
.LBB0_11:                               //  %if.end.5.i
	add x11, x11, x12
	lb x11, 0 ( x11 )
	sb x11, 0 ( x13 )
	jr ra
.LBB0_1:
	mv x13, x10
.LBB0_2:                                //  %if.then.i
	sb x0, 0 ( x13 )
	jr ra
.LBB0_4:
	add x13, x10, 1
	sb x0, 0 ( x13 )
	jr ra
.LBB0_6:
	add x13, x10, 2
	sb x0, 0 ( x13 )
	jr ra
.LBB0_8:
	add x13, x10, 3
	sb x0, 0 ( x13 )
	jr ra
.Lfunc_end0:
	.size	l64a, .Lfunc_end0-l64a
	.cfi_endproc
                                        //  -- End function
	.globl	_l64a_r                 //  -- Begin function _l64a_r
	.type	_l64a_r,@function
_l64a_r:                                //  @_l64a_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x12, x10
	add x10, x12, 212
	beq x0, x11, .LBB1_1
.LBB1_3:                                //  %if.end
	lui x13, %hi( R64_ARRAY )
	and x14, x11, 63
	add x13, x13, %lo( R64_ARRAY )
	add x14, x14, x13
	lb x14, 0 ( x14 )
	sb x14, 0 ( x10 )
	srl x14, x11, 6&31
	beq x0, x14, .LBB1_4
.LBB1_5:                                //  %if.end.1
	and x14, x14, 63
	add x14, x14, x13
	lb x14, 0 ( x14 )
	sb x14, 1 ( x10 )
	srl x14, x11, 12&31
	beq x0, x14, .LBB1_6
.LBB1_7:                                //  %if.end.2
	and x14, x14, 63
	add x14, x14, x13
	lb x14, 0 ( x14 )
	sb x14, 2 ( x10 )
	srl x14, x11, 18&31
	beq x0, x14, .LBB1_8
.LBB1_9:                                //  %if.end.3
	and x14, x14, 63
	add x14, x14, x13
	lb x14, 0 ( x14 )
	sb x14, 215 ( x12 )
	add x12, x12, 216
	srl x14, x11, 24&31
	beq x0, x14, .LBB1_2
.LBB1_10:                               //  %if.end.4
	and x14, x14, 63
	add x14, x14, x13
	lb x14, 0 ( x14 )
	srl x11, x11, 30&31
	sb x14, 0 ( x12 )
	add x12, x12, 1
	beq x0, x11, .LBB1_2
.LBB1_11:                               //  %if.end.5
	add x11, x11, x13
	lb x11, 0 ( x11 )
	sb x11, 0 ( x12 )
	jr ra
.LBB1_1:
	mv x12, x10
.LBB1_2:                                //  %if.then
	sb x0, 0 ( x12 )
	jr ra
.LBB1_4:
	add x12, x10, 1
	sb x0, 0 ( x12 )
	jr ra
.LBB1_6:
	add x12, x10, 2
	sb x0, 0 ( x12 )
	jr ra
.LBB1_8:
	add x12, x10, 3
	sb x0, 0 ( x12 )
	jr ra
.Lfunc_end1:
	.size	_l64a_r, .Lfunc_end1-_l64a_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	R64_ARRAY,@object       //  @R64_ARRAY
	.section	.rodata.str1.1,"aMS",@progbits,1
R64_ARRAY:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	R64_ARRAY, 65


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
