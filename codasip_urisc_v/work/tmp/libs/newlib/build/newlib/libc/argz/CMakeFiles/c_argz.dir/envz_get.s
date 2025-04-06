	.text
	.file	"envz_get.c"
	.globl	envz_get                //  -- Begin function envz_get
	.type	envz_get,@function
envz_get:                               //  @envz_get
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv x9, x12
	mv fp, x0
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x10, 8 ( sp )
	sw x11, 4 ( sp )
	beq x0, x11, .LBB0_7
.LBB0_1:                                //  %while.body.preheader
	add x18, sp, 8
	add x19, sp, 4
	jal x0, .LBB0_2
.LBB0_6:                                //  %if.end9
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x10, 4 ( sp )
	beq x0, x10, .LBB0_7
.LBB0_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x9
	mv x11, x18
	mv x12, x19
	jal _buf_findstr
	beq x0, x10, .LBB0_6
.LBB0_3:                                //  %if.then
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x10, 8 ( sp )
	lbu x11, 0 ( x10 )
	beq x0, x11, .LBB0_7
.LBB0_4:                                //  %if.then
                                        //    in Loop: Header=BB0_2 Depth=1
	xor x11, x11, 61
	bltu x0, x11, .LBB0_6
.LBB0_5:                                //  %if.then3
	add fp, x10, 1
	sw fp, 8 ( sp )
.LBB0_7:                                //  %cleanup
	mv x10, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	envz_get, .Lfunc_end0-envz_get
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
