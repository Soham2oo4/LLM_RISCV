	.text
	.file	"mallinfor.c"
	.globl	_mallinfo_r             //  -- Begin function _mallinfo_r
	.type	_mallinfo_r,@function
_mallinfo_r:                            //  @_mallinfo_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x10
	mv x10, x9
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	jal __malloc_lock
	lui x10, %hi( __malloc_sbrk_start )
	add x19, x10, %lo( __malloc_sbrk_start )
	lw x11, 0 ( x19 )
	mv x18, x0
	mv x10, x18
	beq x0, x11, .LBB0_4
.LBB0_1:                                //  %if.else
	mv x11, x0
	mv x10, x9
	jal _sbrk_r
	xor x11, x10, -1
	beq x0, x11, .LBB0_2
.LBB0_3:                                //  %if.else3
	lw x11, 0 ( x19 )
	sub x10, x10, x11
.LBB0_4:                                //  %if.end4
	lui x11, %hi( __malloc_free_list )
	add x11, x11, %lo( __malloc_free_list )
	lw x11, 0 ( x11 )
	beq x0, x11, .LBB0_7
.LBB0_5:                                //  %for.body.preheader
	mv x18, x0
.LBB0_6:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x12, 0 ( x11 )
	lw x11, 4 ( x11 )
	add x18, x18, x12
	bltu x0, x11, .LBB0_6
.LBB0_7:                                //  %for.end
	lui x11, %hi( __malloc_current_mallinfo )
	add x19, x11, %lo( __malloc_current_mallinfo )
	sw x10, 0 ( x19 )
	sub x10, x10, x18
	sw x10, 28 ( x19 )
	mv x10, x9
	sw x18, 32 ( x19 )
	jal __malloc_unlock
	lw x10, 36 ( x19 )
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	sw x10, 36 ( fp )
	lw x10, 32 ( x19 )
	sw x10, 32 ( fp )
	lw x10, 28 ( x19 )
	sw x10, 28 ( fp )
	lw x10, 24 ( x19 )
	sw x10, 24 ( fp )
	lw x10, 20 ( x19 )
	sw x10, 20 ( fp )
	lw x10, 16 ( x19 )
	sw x10, 16 ( fp )
	lw x10, 12 ( x19 )
	sw x10, 12 ( fp )
	lw x10, 8 ( x19 )
	sw x10, 8 ( fp )
	lw x10, 4 ( x19 )
	sw x10, 4 ( fp )
	lw x10, 0 ( x19 )
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	sw x10, 0 ( fp )
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_2:
	add x10, x0, -1
	lui x11, %hi( __malloc_free_list )
	add x11, x11, %lo( __malloc_free_list )
	lw x11, 0 ( x11 )
	bltu x0, x11, .LBB0_5
	jal x0, .LBB0_7
.Lfunc_end0:
	.size	_mallinfo_r, .Lfunc_end0-_mallinfo_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	__malloc_current_mallinfo,@object //  @__malloc_current_mallinfo
	.bss
	.globl	__malloc_current_mallinfo
	.p2align	2
__malloc_current_mallinfo:
	.zero	40
	.size	__malloc_current_mallinfo, 40

	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
