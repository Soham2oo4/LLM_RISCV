	.text
	.file	"fputws.c"
	.globl	_fputws_r               //  -- Begin function _fputws_r
	.type	_fputws_r,@function
_fputws_r:                              //  @_fputws_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -1104
	.cfi_adjust_cfa_offset 1104
	sw fp, 1064 ( sp )              //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv fp, x12
	sw x9, 1096 ( sp )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lhu x10, 12 ( fp )
	sw x11, 1060 ( sp )
	lui x11, (8192>>12)&1048575
	sw ra, 1100 ( sp )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	and x12, x11, x10
	sw x18, 1092 ( sp )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 1088 ( sp )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 1084 ( sp )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 1080 ( sp )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 1076 ( sp )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 1072 ( sp )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24, 1068 ( sp )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	bltu x0, x12, .LBB0_2
.LBB0_1:                                //  %if.then7
	lw x12, 100 ( fp )
	or x10, x11, x10
	sh x10, 12 ( fp )
	or x12, x11, x12
	sw x12, 100 ( fp )
.LBB0_2:                                //  %do.end
	and x10, x10, 8
	add x18, x0, -1
	beq x0, x10, .LBB0_4
.LBB0_3:                                //  %lor.lhs.false
	lw x10, 16 ( fp )
	bltu x0, x10, .LBB0_5
.LBB0_4:                                //  %land.rhs
	mv x10, x9
	mv x11, fp
	jal __swsetup_r
	bltu x0, x10, .LBB0_10
.LBB0_5:                                //  %if.end24
	seqz x10, x0
	sw x10, 28 ( sp )
	add x10, sp, 16
	add x19, sp, 36
	add x20, fp, 92
	add x21, sp, 1060
	add x22, x0, 1024
	add x23, sp, 24
	mv x24, x0
	sw x10, 24 ( sp )
	sw x19, 16 ( sp )
.LBB0_6:                                //  %do.body25
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x9
	mv x11, x19
	mv x12, x21
	mv x13, x22
	mv x14, x20
	jal _wcsrtombs_r
	xor x11, x10, -1
	beq x0, x11, .LBB0_10
.LBB0_7:                                //  %if.end31
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x10, 20 ( sp )
	sw x10, 32 ( sp )
	mv x10, x9
	mv x11, fp
	mv x12, x23
	jal __sfvwrite_r
	bltu x0, x10, .LBB0_10
.LBB0_8:                                //  %do.cond37
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 1060 ( sp )
	bltu x0, x10, .LBB0_6
.LBB0_9:
	mv x18, x24
.LBB0_10:                               //  %cleanup
	mv x10, x18
	lw fp, 1064 ( sp )              //  4-byte Folded Reload
	lw x24, 1068 ( sp )             //  4-byte Folded Reload
	lw x23, 1072 ( sp )             //  4-byte Folded Reload
	lw x22, 1076 ( sp )             //  4-byte Folded Reload
	lw x21, 1080 ( sp )             //  4-byte Folded Reload
	lw x20, 1084 ( sp )             //  4-byte Folded Reload
	lw x19, 1088 ( sp )             //  4-byte Folded Reload
	lw x18, 1092 ( sp )             //  4-byte Folded Reload
	lw x9, 1096 ( sp )              //  4-byte Folded Reload
	lw ra, 1100 ( sp )              //  4-byte Folded Reload
	add sp, sp, 1104
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_fputws_r, .Lfunc_end0-_fputws_r
	.cfi_endproc
                                        //  -- End function
	.globl	fputws                  //  -- Begin function fputws
	.type	fputws,@function
fputws:                                 //  @fputws
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x18, 0 ( x10 )
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x11
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x18, .LBB1_3
.LBB1_1:                                //  %land.lhs.true
	lw x10, 56 ( x18 )
	bltu x0, x10, .LBB1_3
.LBB1_2:                                //  %if.then
	mv x10, x18
	jal __sinit
.LBB1_3:                                //  %if.end
	mv x10, x18
	mv x11, x9
	mv x12, fp
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	j _fputws_r
.Lfunc_end1:
	.size	fputws, .Lfunc_end1-fputws
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
