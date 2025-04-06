	.text
	.file	"argz_create.c"
	.globl	argz_create             //  -- Begin function argz_create
	.type	argz_create,@function
argz_create:                            //  @argz_create
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x10
	lw x10, 0 ( fp )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x12
	mv x9, x11
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x0, 0 ( x18 )
	beq x0, x10, .LBB0_8
.LBB0_1:                                //  %while.body.preheader
	mv x20, x0
	add x19, fp, 4
.LBB0_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	jal strlen
	lw x11, 0 ( x18 )
	add x12, x19, 4
	add x20, x20, 1
	add x10, x11, x10
	add x11, x10, 1
	lw x10, 0 ( x19 )
	mv x19, x12
	sw x11, 0 ( x18 )
	bltu x0, x10, .LBB0_2
.LBB0_3:                                //  %while.end
	mv x10, x11
	jal malloc
	mv x18, x10
	sw x18, 0 ( x9 )
	beq x0, x18, .LBB0_4
.LBB0_5:                                //  %for.body.preheader
	mv x9, x0
.LBB0_6:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( fp )
	jal strlen
	lw x11, 0 ( fp )
	add x19, x10, 1
	mv x10, x18
	mv x12, x19
	jal memcpy
	add x18, x19, x18
	add fp, fp, 4
	add x20, x20, -1
	bltu x0, x20, .LBB0_6
	jal x0, .LBB0_7
.LBB0_8:                                //  %if.then
	sw x0, 0 ( x9 )
	mv x9, x0
	jal x0, .LBB0_7
.LBB0_4:
	add x9, x0, 12
.LBB0_7:                                //  %cleanup
	mv x10, x9
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw x20, 12 ( sp )               //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	argz_create, .Lfunc_end0-argz_create
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
