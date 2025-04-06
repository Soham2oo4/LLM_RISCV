	.text
	.file	"__call_atexit.c"
	.globl	__call_exitprocs        //  -- Begin function __call_exitprocs
	.type	__call_exitprocs,@function
__call_exitprocs:                       //  @__call_exitprocs
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -48
	.cfi_adjust_cfa_offset 48
	sw x9, 40 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( _global_impure_ptr )
	add x10, x10, %lo( _global_impure_ptr )
	sw x18, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x18, 0 ( x10 )
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -36
	mv fp, x11
	sw ra, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x10, 328 ( x18 )
	sw x19, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 24 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	beq x0, x10, .LBB0_33
.LBB0_1:                                //  %while.body.lr.ph
	seqz x19, x0
.LBB0_2:                                //  %while.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_30 Depth 2
	mv x20, x10
	lw x21, 4 ( x20 )
	bge x0, x21, .LBB0_33
.LBB0_3:                                //  %for.body.lr.ph
                                        //    in Loop: Header=BB0_2 Depth=1
	sll x11, x21, 2&31
	beq x0, fp, .LBB0_8
.LBB0_4:                                //  %for.body.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	add x10, x11, x20
	add x22, x10, 132
	mv x23, x21
	lw x11, 128 ( x22 )
	mv x10, x21
	add x21, x10, -1
	beq x11, fp, .LBB0_6
.LBB0_30:                               //  %for.inc
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x22, x22, -4
	bge x0, x21, .LBB0_33
.LBB0_5:                                //  %for.body
                                        //    in Loop: Header=BB0_30 Depth=2
	lw x11, 128 ( x22 )
	mv x10, x21
	add x21, x10, -1
	bne x11, fp, .LBB0_30
.LBB0_6:                                //  %if.end
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x12, -128 ( x22 )
	bne x10, x23, .LBB0_21
.LBB0_7:                                //  %if.then9
                                        //    in Loop: Header=BB0_2 Depth=1
	add x23, x23, -1
	sw x23, 4 ( x20 )
	beq x0, x12, .LBB0_30
.LBB0_23:                               //  %if.end16
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x11, 392 ( x20 )
	sll x10, x19, x21
	and x11, x10, x11
	beq x0, x11, .LBB0_24
.LBB0_25:                               //  %if.else22
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x11, 396 ( x20 )
	and x10, x10, x11
	beq x0, x10, .LBB0_26
.LBB0_27:                               //  %if.else27
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x10, 0 ( x22 )
	call.reg x12
	lw x10, 4 ( x20 )
	bne x23, x10, .LBB0_31
.LBB0_29:                               //  %lor.lhs.false34
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x10, 328 ( x18 )
	beq x10, x20, .LBB0_30
	jal x0, .LBB0_32
.LBB0_21:                               //  %if.else
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x0, -128 ( x22 )
	bltu x0, x12, .LBB0_23
	jal x0, .LBB0_30
.LBB0_24:                               //  %if.then21
                                        //    in Loop: Header=BB0_2 Depth=1
	call.reg x12
	lw x10, 4 ( x20 )
	beq x23, x10, .LBB0_29
	jal x0, .LBB0_31
.LBB0_26:                               //  %if.then25
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x11, 0 ( x22 )
	mv x10, x9
	call.reg x12
	lw x10, 4 ( x20 )
	beq x23, x10, .LBB0_29
	jal x0, .LBB0_31
.LBB0_8:                                //  %for.body.us.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	add x11, x11, x20
	add x10, x21, -1
	add x22, x11, 132
	lw x12, -128 ( x22 )
	add x23, x10, 1
	beq x23, x21, .LBB0_11
	jal x0, .LBB0_10
.LBB0_20:                               //  %for.inc.us
                                        //    in Loop: Header=BB0_2 Depth=1
	add x10, x23, -2
	add x22, x22, -4
	add x11, x23, -1
	bge x0, x11, .LBB0_33
.LBB0_9:                                //  %for.body.us
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x12, -128 ( x22 )
	add x23, x10, 1
	bne x23, x21, .LBB0_10
.LBB0_11:                               //  %if.then9.us
                                        //    in Loop: Header=BB0_2 Depth=1
	add x21, x21, -1
	sw x21, 4 ( x20 )
	beq x0, x12, .LBB0_20
.LBB0_13:                               //  %if.end16.us
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x11, 392 ( x20 )
	sll x10, x19, x10
	and x11, x10, x11
	beq x0, x11, .LBB0_17
.LBB0_14:                               //  %if.else22.us
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x11, 396 ( x20 )
	and x10, x10, x11
	beq x0, x10, .LBB0_16
.LBB0_15:                               //  %if.else27.us
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x10, 0 ( x22 )
	call.reg x12
	lw x10, 4 ( x20 )
	bne x21, x10, .LBB0_31
.LBB0_19:                               //  %lor.lhs.false34.us
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x10, 328 ( x18 )
	beq x10, x20, .LBB0_20
	jal x0, .LBB0_32
.LBB0_10:                               //  %if.else.us
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x0, -128 ( x22 )
	bltu x0, x12, .LBB0_13
	jal x0, .LBB0_20
.LBB0_17:                               //  %if.then21.us
                                        //    in Loop: Header=BB0_2 Depth=1
	call.reg x12
	lw x10, 4 ( x20 )
	beq x21, x10, .LBB0_19
	jal x0, .LBB0_31
.LBB0_16:                               //  %if.then25.us
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x11, 0 ( x22 )
	mv x10, x9
	call.reg x12
	lw x10, 4 ( x20 )
	beq x21, x10, .LBB0_19
.LBB0_31:                               //  %cleanupthread-pre-split
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x10, 328 ( x18 )
.LBB0_32:                               //  %cleanup
                                        //    in Loop: Header=BB0_2 Depth=1
	bltu x0, x10, .LBB0_2
.LBB0_33:                               //  %while.end
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x23, 16 ( sp )               //  4-byte Folded Reload
	lw x22, 20 ( sp )               //  4-byte Folded Reload
	lw x21, 24 ( sp )               //  4-byte Folded Reload
	lw x20, 28 ( sp )               //  4-byte Folded Reload
	lw x19, 32 ( sp )               //  4-byte Folded Reload
	lw x18, 36 ( sp )               //  4-byte Folded Reload
	lw x9, 40 ( sp )                //  4-byte Folded Reload
	lw ra, 44 ( sp )                //  4-byte Folded Reload
	add sp, sp, 48
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__call_exitprocs, .Lfunc_end0-__call_exitprocs
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
