	.text
	.file	"wctype.c"
	.globl	_wctype_r               //  -- Begin function _wctype_r
	.type	_wctype_r,@function
_wctype_r:                              //  @_wctype_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -12
	mv fp, x10
	lb x10, 0 ( x9 )
	add x11, x0, 23
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x10, x10, -97
	bltu x11, x10, .LBB0_26
.LBB0_1:                                //  %entry
	lui x11, %hi( JTI0_0 )
	sll x10, x10, 2&31
	add x11, x11, %lo( JTI0_0 )
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB0_2:                                //  %sw.bb
	lui x10, %hi( .str )
	add x11, x10, %lo( .str )
	mv x10, x9
	jal strcmp
	beq x0, x10, .LBB0_3
.LBB0_4:                                //  %if.else
	lui x10, %hi( .str.1 )
	add x11, x10, %lo( .str.1 )
	mv x10, x9
	jal strcmp
	bltu x0, x10, .LBB0_26
.LBB0_5:
	add x10, x0, 2
	jal x0, .LBB0_27
.LBB0_6:                                //  %sw.bb5
	lui x10, %hi( .str.2 )
	add x11, x10, %lo( .str.2 )
	mv x10, x9
	jal strcmp
	bltu x0, x10, .LBB0_26
.LBB0_7:
	add x10, x0, 3
	jal x0, .LBB0_27
.LBB0_8:                                //  %sw.bb10
	lui x10, %hi( .str.3 )
	add x11, x10, %lo( .str.3 )
	mv x10, x9
	jal strcmp
	bltu x0, x10, .LBB0_26
.LBB0_9:
	add x10, x0, 4
	jal x0, .LBB0_27
.LBB0_10:                               //  %sw.bb15
	lui x10, %hi( .str.4 )
	add x11, x10, %lo( .str.4 )
	mv x10, x9
	jal strcmp
	bltu x0, x10, .LBB0_26
.LBB0_11:
	add x10, x0, 5
	jal x0, .LBB0_27
.LBB0_12:                               //  %sw.bb20
	lui x10, %hi( .str.5 )
	add x11, x10, %lo( .str.5 )
	mv x10, x9
	jal strcmp
	bltu x0, x10, .LBB0_26
.LBB0_13:
	add x10, x0, 6
	jal x0, .LBB0_27
.LBB0_14:                               //  %sw.bb25
	lui x10, %hi( .str.6 )
	add x11, x10, %lo( .str.6 )
	mv x10, x9
	jal strcmp
	bltu x0, x10, .LBB0_26
.LBB0_15:
	add x10, x0, 7
	jal x0, .LBB0_27
.LBB0_16:                               //  %sw.bb30
	lui x10, %hi( .str.7 )
	add x11, x10, %lo( .str.7 )
	mv x10, x9
	jal strcmp
	beq x0, x10, .LBB0_17
.LBB0_18:                               //  %if.else34
	lui x10, %hi( .str.8 )
	add x11, x10, %lo( .str.8 )
	mv x10, x9
	jal strcmp
	bltu x0, x10, .LBB0_26
.LBB0_19:
	add x10, x0, 9
	jal x0, .LBB0_27
.LBB0_20:                               //  %sw.bb40
	lui x10, %hi( .str.9 )
	add x11, x10, %lo( .str.9 )
	mv x10, x9
	jal strcmp
	bltu x0, x10, .LBB0_26
.LBB0_21:
	add x10, x0, 10
	jal x0, .LBB0_27
.LBB0_22:                               //  %sw.bb45
	lui x10, %hi( .str.10 )
	add x11, x10, %lo( .str.10 )
	mv x10, x9
	jal strcmp
	bltu x0, x10, .LBB0_26
.LBB0_23:
	add x10, x0, 11
	jal x0, .LBB0_27
.LBB0_24:                               //  %sw.bb50
	lui x10, %hi( .str.11 )
	add x11, x10, %lo( .str.11 )
	mv x10, x9
	jal strcmp
	beq x0, x10, .LBB0_25
.LBB0_26:                               //  %sw.epilog
	add x10, x0, 22
	sw x10, 0 ( fp )
	mv x10, x0
.LBB0_27:                               //  %return
	lw fp, 4 ( sp )                 //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_3:
	seqz x10, x0
	jal x0, .LBB0_27
.LBB0_17:
	add x10, x0, 8
	jal x0, .LBB0_27
.LBB0_25:
	add x10, x0, 12
	jal x0, .LBB0_27
.Lfunc_end0:
	.size	_wctype_r, .Lfunc_end0-_wctype_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_2
	.long	.LBB0_6
	.long	.LBB0_8
	.long	.LBB0_10
	.long	.LBB0_26
	.long	.LBB0_26
	.long	.LBB0_12
	.long	.LBB0_26
	.long	.LBB0_26
	.long	.LBB0_26
	.long	.LBB0_26
	.long	.LBB0_14
	.long	.LBB0_26
	.long	.LBB0_26
	.long	.LBB0_26
	.long	.LBB0_16
	.long	.LBB0_26
	.long	.LBB0_26
	.long	.LBB0_20
	.long	.LBB0_26
	.long	.LBB0_22
	.long	.LBB0_26
	.long	.LBB0_26
	.long	.LBB0_24
                                        //  -- End function
	.text
	.globl	wctype                  //  -- Begin function wctype
	.type	wctype,@function
wctype:                                 //  @wctype
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j _wctype_r
.Lfunc_end1:
	.size	wctype, .Lfunc_end1-wctype
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"alnum"
	.size	.str, 6

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"alpha"
	.size	.str.1, 6

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"blank"
	.size	.str.2, 6

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"cntrl"
	.size	.str.3, 6

	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	"digit"
	.size	.str.4, 6

	.address_space	0
	.type	.str.5,@object          //  @.str.5
.str.5:
	.asciz	"graph"
	.size	.str.5, 6

	.address_space	0
	.type	.str.6,@object          //  @.str.6
.str.6:
	.asciz	"lower"
	.size	.str.6, 6

	.address_space	0
	.type	.str.7,@object          //  @.str.7
.str.7:
	.asciz	"print"
	.size	.str.7, 6

	.address_space	0
	.type	.str.8,@object          //  @.str.8
.str.8:
	.asciz	"punct"
	.size	.str.8, 6

	.address_space	0
	.type	.str.9,@object          //  @.str.9
.str.9:
	.asciz	"space"
	.size	.str.9, 6

	.address_space	0
	.type	.str.10,@object         //  @.str.10
.str.10:
	.asciz	"upper"
	.size	.str.10, 6

	.address_space	0
	.type	.str.11,@object         //  @.str.11
.str.11:
	.asciz	"xdigit"
	.size	.str.11, 7

	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
