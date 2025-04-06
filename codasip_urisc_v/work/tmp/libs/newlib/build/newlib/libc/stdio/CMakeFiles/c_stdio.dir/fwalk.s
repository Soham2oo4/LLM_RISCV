	.text
	.file	"fwalk.c"
	.globl	_fwalk                  //  -- Begin function _fwalk
	.type	_fwalk,@function
_fwalk:                                 //  @_fwalk
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19, x10, 736
	lui x10, %hi( 65535 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 4 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -28
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	mv fp, x11
	mv x9, x0
	add x20, x10, %lo( 65535 )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	lw x21, 4 ( x19 )
	blt x0, x21, .LBB0_2
.LBB0_7:                                //  %for.inc14
                                        //  =>This Inner Loop Header: Depth=1
	lw x19, 0 ( x19 )
	beq x0, x19, .LBB0_8
.LBB0_1:                                //  %for.body
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x21, 4 ( x19 )
	bge x0, x21, .LBB0_7
.LBB0_2:                                //  %for.body3.preheader
	lw x18, 8 ( x19 )
	lhu x10, 12 ( x18 )
	add x21, x21, -1
	sltiu x10, x10, 2
	beq x0, x10, .LBB0_4
.LBB0_6:                                //  %for.inc
	add x18, x18, 104
	bge x0, x21, .LBB0_7
.LBB0_3:                                //  %for.body3
	lhu x10, 12 ( x18 )
	add x21, x21, -1
	sltiu x10, x10, 2
	bltu x0, x10, .LBB0_6
.LBB0_4:                                //  %land.lhs.true10
	lhu x10, 14 ( x18 )
	beq x10, x20, .LBB0_6
.LBB0_5:                                //  %if.then
	mv x10, x18
	call.reg fp
	or x9, x9, x10
	add x18, x18, 104
	blt x0, x21, .LBB0_3
	jal x0, .LBB0_7
.LBB0_8:                                //  %for.end15
	mv x10, x9
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
.Lfunc_end0:
	.size	_fwalk, .Lfunc_end0-_fwalk
	.cfi_endproc
                                        //  -- End function
	.globl	_fwalk_reent            //  -- Begin function _fwalk_reent
	.type	_fwalk_reent,@function
_fwalk_reent:                           //  @_fwalk_reent
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	lui x10, %hi( 65535 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -32
	sw x20, 12 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 8 ( sp )                //  4-byte Folded Spill
	.cfi_offset 21, -24
	mv fp, x11
	mv x9, x0
	add x20, x18, 736
	add x21, x10, %lo( 65535 )
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x22, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 22, -28
	lw x22, 4 ( x20 )
	blt x0, x22, .LBB1_2
.LBB1_7:                                //  %for.inc14
                                        //  =>This Inner Loop Header: Depth=1
	lw x20, 0 ( x20 )
	beq x0, x20, .LBB1_8
.LBB1_1:                                //  %for.body
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x22, 4 ( x20 )
	bge x0, x22, .LBB1_7
.LBB1_2:                                //  %for.body3.preheader
	lw x19, 8 ( x20 )
	lhu x10, 12 ( x19 )
	add x22, x22, -1
	sltiu x10, x10, 2
	beq x0, x10, .LBB1_4
.LBB1_6:                                //  %for.inc
	add x19, x19, 104
	bge x0, x22, .LBB1_7
.LBB1_3:                                //  %for.body3
	lhu x10, 12 ( x19 )
	add x22, x22, -1
	sltiu x10, x10, 2
	bltu x0, x10, .LBB1_6
.LBB1_4:                                //  %land.lhs.true10
	lhu x10, 14 ( x19 )
	beq x10, x21, .LBB1_6
.LBB1_5:                                //  %if.then
	mv x10, x18
	mv x11, x19
	call.reg fp
	or x9, x9, x10
	add x19, x19, 104
	blt x0, x22, .LBB1_3
	jal x0, .LBB1_7
.LBB1_8:                                //  %for.end15
	mv x10, x9
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
	.size	_fwalk_reent, .Lfunc_end1-_fwalk_reent
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
