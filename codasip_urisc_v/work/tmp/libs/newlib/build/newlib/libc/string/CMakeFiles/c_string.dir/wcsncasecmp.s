	.text
	.file	"wcsncasecmp.c"
	.globl	wcsncasecmp             //  -- Begin function wcsncasecmp
	.type	wcsncasecmp,@function
wcsncasecmp:                            //  @wcsncasecmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -24
	mv fp, x12
	mv x9, x11
	mv x18, x10
	mv x20, x0
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	beq x0, fp, .LBB0_4
.LBB0_1:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x18 )
	jal towlower
	mv x19, x10
	lw x10, 0 ( x9 )
	jal towlower
	mv x11, x10
	sub x10, x19, x11
	beq x0, x11, .LBB0_5
.LBB0_2:                                //  %for.body
                                        //    in Loop: Header=BB0_1 Depth=1
	bltu x0, x10, .LBB0_5
.LBB0_3:                                //  %for.inc
                                        //    in Loop: Header=BB0_1 Depth=1
	add x18, x18, 4
	add x9, x9, 4
	add fp, fp, -1
	bltu x0, fp, .LBB0_1
.LBB0_4:
	mv x10, x20
.LBB0_5:                                //  %for.end
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
	.size	wcsncasecmp, .Lfunc_end0-wcsncasecmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
