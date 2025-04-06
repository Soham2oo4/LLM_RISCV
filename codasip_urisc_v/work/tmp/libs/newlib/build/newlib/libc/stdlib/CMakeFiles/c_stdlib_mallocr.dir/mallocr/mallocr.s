	.text
	.file	"mallocr.c"
	.globl	_malloc_r               //  -- Begin function _malloc_r
	.type	_malloc_r,@function
_malloc_r:                              //  @_malloc_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x10
	add x10, x11, 11
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	and x9, x10, -4
	add x10, x0, 12
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	bltu x10, x9, .LBB0_2
.LBB0_1:                                //  %entry
	mv x9, x10
.LBB0_2:                                //  %entry
	blt x9, x0, .LBB0_4
.LBB0_3:                                //  %entry
	bltu x9, x11, .LBB0_4
.LBB0_5:                                //  %if.end
	mv x10, fp
	jal __malloc_lock
	lui x10, %hi( __malloc_free_list )
	add x10, x10, %lo( __malloc_free_list )
	lw x12, 0 ( x10 )
	beq x0, x12, .LBB0_14
.LBB0_6:                                //  %while.body.preheader
	lw x11, 0 ( x12 )
	sub x13, x11, x9
	blt x13, x0, .LBB0_13
.LBB0_7:
	mv x18, x12
	mv x11, x12
	jal x0, .LBB0_9
.LBB0_8:                                //  %while.body
                                        //    in Loop: Header=BB0_13 Depth=1
	lw x13, 0 ( x11 )
	mv x18, x12
	mv x12, x11
	sub x13, x13, x9
	bge x13, x0, .LBB0_9
.LBB0_13:                               //  %cleanup
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 4 ( x12 )
	bltu x0, x11, .LBB0_8
.LBB0_14:                               //  %if.then22
	lui x10, %hi( __malloc_sbrk_start )
	add x18, x10, %lo( __malloc_sbrk_start )
	lw x10, 0 ( x18 )
	bltu x0, x10, .LBB0_16
.LBB0_15:                               //  %if.then.i
	mv x11, x0
	mv x10, fp
	jal _sbrk_r
	sw x10, 0 ( x18 )
.LBB0_16:                               //  %if.end.i
	mv x10, fp
	mv x11, x9
	jal _sbrk_r
	xor x11, x10, -1
	beq x0, x11, .LBB0_19
.LBB0_17:                               //  %if.end4.i
	add x11, x10, 3
	and x18, x11, -4
	beq x10, x18, .LBB0_21
.LBB0_18:                               //  %if.then6.i
	sub x11, x18, x10
	mv x10, fp
	jal _sbrk_r
	xor x10, x10, -1
	bltu x0, x10, .LBB0_21
.LBB0_19:                               //  %if.then24
	add x10, x0, 12
	sw x10, 0 ( fp )
	mv x10, fp
	jal __malloc_unlock
	mv x10, x0
	jal x0, .LBB0_24
.LBB0_4:                                //  %if.then
	add x10, x0, 12
	sw x10, 0 ( fp )
	mv x10, x0
	jal x0, .LBB0_24
.LBB0_9:                                //  %if.then7
	add x12, x0, 11
	bgeu x12, x13, .LBB0_10
.LBB0_20:                               //  %while.end
	add x18, x13, x11
	sw x13, 0 ( x11 )
.LBB0_21:                               //  %if.end26
	sw x9, 0 ( x18 )
	jal x0, .LBB0_22
.LBB0_10:                               //  %if.else
	lw x12, 4 ( x11 )
	beq x18, x11, .LBB0_11
.LBB0_12:                               //  %if.else14
	sw x12, 4 ( x18 )
	mv x18, x11
	jal x0, .LBB0_22
.LBB0_11:                               //  %if.then13
	sw x12, 0 ( x10 )
.LBB0_22:                               //  %if.end28
	mv x10, fp
	jal __malloc_unlock
	add x10, x18, 11
	and x10, x10, -8
	sub x11, x10, x18
	add x11, x11, -4
	beq x0, x11, .LBB0_24
.LBB0_23:                               //  %if.then34
	add x12, x11, x18
	sub x11, x0, x11
	sw x11, 0 ( x12 )
.LBB0_24:                               //  %cleanup38
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_malloc_r, .Lfunc_end0-_malloc_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	__malloc_free_list,@object //  @__malloc_free_list
	.bss
	.globl	__malloc_free_list
	.p2align	2
__malloc_free_list:
	.long	0
	.size	__malloc_free_list, 4

	.address_space	0
	.type	__malloc_sbrk_start,@object //  @__malloc_sbrk_start
	.globl	__malloc_sbrk_start
	.p2align	2
__malloc_sbrk_start:
	.long	0
	.size	__malloc_sbrk_start, 4


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
