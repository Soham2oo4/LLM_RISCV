	.text
	.file	"vfiscanf.c"
	.globl	vfiscanf                //  -- Begin function vfiscanf
	.type	vfiscanf,@function
vfiscanf:                               //  @vfiscanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -32
	.cfi_adjust_cfa_offset 32
	sw x18, 20 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x19, 0 ( x10 )
	sw x9, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x12
	mv x9, x11
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x19, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x10, 56 ( x19 )
	bltu x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then
	mv x10, x19
	jal __sinit
.LBB0_3:                                //  %if.end
	mv x10, x19
	mv x11, x18
	mv x12, x9
	mv x13, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	j __svfiscanf_r
.Lfunc_end0:
	.size	vfiscanf, .Lfunc_end0-vfiscanf
	.cfi_endproc
                                        //  -- End function
	.globl	__svfiscanf_r           //  -- Begin function __svfiscanf_r
	.type	__svfiscanf_r,@function
__svfiscanf_r:                          //  @__svfiscanf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -432
	.cfi_adjust_cfa_offset 432
	sw fp, 416 ( sp )
	.cfi_offset 8, -16
	add fp, sp, 416
	.cfi_def_cfa 8, 16
	sw x18, -12 ( fp )              //  4-byte Folded Spill
	.cfi_offset 18, -28
	mv x18, x11
	sw x19, -16 ( fp )              //  4-byte Folded Spill
	.cfi_offset 19, -32
	mv x19, x10
	lhu x10, 12 ( x18 )
	lui x11, (8192>>12)&1048575
	sw x21, -24 ( fp )              //  4-byte Folded Spill
	.cfi_offset 21, -40
	mv x21, x12
	and x12, x11, x10
	sw ra, -4 ( fp )                //  4-byte Folded Spill
	.cfi_offset 1, -20
	sw x9, -8 ( fp )                //  4-byte Folded Spill
	.cfi_offset 9, -24
	sw x20, -20 ( fp )              //  4-byte Folded Spill
	.cfi_offset 20, -36
	sw x22, -28 ( fp )              //  4-byte Folded Spill
	.cfi_offset 22, -44
	sw x23, -32 ( fp )              //  4-byte Folded Spill
	.cfi_offset 23, -48
	sw x24, -36 ( fp )              //  4-byte Folded Spill
	.cfi_offset 24, -52
	sw x25, -40 ( fp )              //  4-byte Folded Spill
	.cfi_offset 25, -56
	sw x26, -44 ( fp )              //  4-byte Folded Spill
	.cfi_offset 26, -60
	sw x27, -48 ( fp )              //  4-byte Folded Spill
	.cfi_offset 27, -64
	sw x13, -68 ( fp )
	bltu x0, x12, .LBB1_2
.LBB1_1:                                //  %if.then7
	or x10, x11, x10
	sh x10, 12 ( x18 )
	lw x10, 100 ( x18 )
	lui x11, %hi( -8193 )
	add x11, x11, %lo( -8193 )
	and x10, x11, x10
	sw x10, 100 ( x18 )
.LBB1_2:                                //  %do.end
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB1_3
.LBB1_443:                              //  %do.end
	jal x0, .LBB1_425
.LBB1_3:                                //  %land.lhs.true.lr.ph.lr.ph.lr.ph.lr.ph
	lui x11, %hi( _ctype_ )
	mv x27, x0
	add x22, x11, %lo( _ctype_ )
	lui x11, %hi( JTI1_0 )
	add x11, x11, %lo( JTI1_0 )
	mv x26, x27
	mv x20, x27
	mv x9, x27
	sw x27, -392 ( fp )             //  4-byte Folded Spill
	sw x11, -380 ( fp )             //  4-byte Folded Spill
	sw x27, -388 ( fp )             //  4-byte Folded Spill
	sw x27, -384 ( fp )             //  4-byte Folded Spill
.LBB1_4:                                //  %land.lhs.true.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_5 Depth 2
                                        //        Child Loop BB1_7 Depth 3
                                        //      Child Loop BB1_15 Depth 2
                                        //      Child Loop BB1_70 Depth 2
                                        //      Child Loop BB1_144 Depth 2
                                        //      Child Loop BB1_345 Depth 2
                                        //      Child Loop BB1_327 Depth 2
                                        //      Child Loop BB1_388 Depth 2
                                        //      Child Loop BB1_181 Depth 2
                                        //      Child Loop BB1_256 Depth 2
                                        //      Child Loop BB1_375 Depth 2
                                        //      Child Loop BB1_298 Depth 2
                                        //      Child Loop BB1_117 Depth 2
                                        //      Child Loop BB1_391 Depth 2
                                        //      Child Loop BB1_174 Depth 2
                                        //      Child Loop BB1_241 Depth 2
                                        //      Child Loop BB1_361 Depth 2
                                        //      Child Loop BB1_269 Depth 2
                                        //      Child Loop BB1_99 Depth 2
                                        //      Child Loop BB1_168 Depth 2
	add x11, x10, x22
	add x24, x21, 1
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	beq x0, x11, .LBB1_11
.LBB1_5:                                //  %for.cond24.preheader
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_7 Depth 3
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_7
	jal x0, .LBB1_6
.LBB1_8:                                //  %if.end35
                                        //    in Loop: Header=BB1_7 Depth=3
	add x10, x10, 1
	sw x10, 0 ( x18 )
	lw x10, 4 ( x18 )
	add x20, x20, 1
	add x10, x10, -1
	sw x10, 4 ( x18 )
	blt x0, x10, .LBB1_7
.LBB1_6:                                //  %land.lhs.true27
                                        //    in Loop: Header=BB1_5 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	bltu x0, x10, .LBB1_9
.LBB1_7:                                //  %lor.lhs.false
                                        //    Parent Loop BB1_4 Depth=1
                                        //      Parent Loop BB1_5 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10, 0 ( x18 )
	lbu x11, 0 ( x10 )
	add x11, x11, x22
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB1_8
.LBB1_9:                                //  %for.end
                                        //    in Loop: Header=BB1_5 Depth=2
	lbu x10, 0 ( x24 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB1_10
.LBB1_444:                              //  %for.end
	jal x0, .LBB1_430
.LBB1_10:                               //  %land.lhs.true
                                        //    in Loop: Header=BB1_5 Depth=2
	add x11, x10, x22
	add x24, x24, 1
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB1_5
.LBB1_11:                               //  %if.end38
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x10, 255
	xor x10, x10, 37
	bltu x0, x10, .LBB1_38
.LBB1_12:                               //  %again.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x23, x27
	mv x25, x27
	lbu x10, 0 ( x24 )
	add x12, x0, 85
	add x11, x10, -37
	bgeu x12, x11, .LBB1_15
	jal x0, .LBB1_430
.LBB1_13:                               //  %sw.bb124
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x25, 15
	mv x24, x21
	beq x0, x10, .LBB1_14
.LBB1_445:                              //  %sw.bb124
	jal x0, .LBB1_430
.LBB1_14:                               //  %again
                                        //    in Loop: Header=BB1_15 Depth=2
	lbu x10, 0 ( x24 )
	add x12, x0, 85
	add x11, x10, -37
	bgeu x12, x11, .LBB1_15
.LBB1_446:                              //  %again
	jal x0, .LBB1_430
.LBB1_15:                               //  %again
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x12, -380 ( fp )             //  4-byte Folded Reload
	sll x11, x11, 2&31
	add x21, x24, 1
	add x11, x12, x11
	lw x11, 0 ( x11 )
	jr x11
.LBB1_16:                               //  %sw.bb141
                                        //    in Loop: Header=BB1_15 Depth=2
	and x11, x25, 143
	beq x0, x11, .LBB1_17
.LBB1_447:                              //  %sw.bb141
	jal x0, .LBB1_430
.LBB1_17:                               //  %if.end145
                                        //    in Loop: Header=BB1_15 Depth=2
	add x11, x0, 10
	hackaton_custom_instr_c x11, x11, x23
	add x10, x10, x11
	add x23, x10, -48
.LBB1_20:                               //  %if.end97
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x24, x21
	lbu x10, 0 ( x24 )
	add x12, x0, 85
	add x11, x10, -37
	bgeu x12, x11, .LBB1_15
	jal x0, .LBB1_430
.LBB1_18:                               //  %sw.bb93
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x25, 15
	beq x0, x10, .LBB1_19
.LBB1_448:                              //  %sw.bb93
	jal x0, .LBB1_430
.LBB1_19:                               //  %if.end97
                                        //    in Loop: Header=BB1_15 Depth=2
	or x25, x25, 2
	jal x0, .LBB1_20
.LBB1_21:                               //  %sw.bb72
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x25, 159
	or x10, x23, x10
	beq x0, x10, .LBB1_22
.LBB1_449:                              //  %sw.bb72
	jal x0, .LBB1_430
.LBB1_22:                               //  %if.end78
                                        //    in Loop: Header=BB1_15 Depth=2
	or x25, x25, 16
	mv x23, x27
	jal x0, .LBB1_20
.LBB1_23:                               //  %sw.bb99
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x25, 15
	beq x0, x10, .LBB1_24
.LBB1_450:                              //  %sw.bb99
	jal x0, .LBB1_430
.LBB1_24:                               //  %if.end103
                                        //    in Loop: Header=BB1_15 Depth=2
	lbu x10, 1 ( x24 )
	add x11, x0, 104
	beq x10, x11, .LBB1_34
.LBB1_25:                               //  %if.end103
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10, x0, 4
	jal x0, .LBB1_29
.LBB1_26:                               //  %sw.bb80
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x25, 15
	beq x0, x10, .LBB1_27
.LBB1_451:                              //  %sw.bb80
	jal x0, .LBB1_430
.LBB1_27:                               //  %if.end84
                                        //    in Loop: Header=BB1_15 Depth=2
	lbu x10, 1 ( x24 )
	add x11, x0, 108
	beq x10, x11, .LBB1_35
.LBB1_28:                               //  %if.end84
                                        //    in Loop: Header=BB1_15 Depth=2
	seqz x10, x0
.LBB1_29:                               //  %if.end84
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x24, x21
	jal x0, .LBB1_37
.LBB1_30:                               //  %sw.bb129
                                        //    in Loop: Header=BB1_15 Depth=2
	and x10, x25, 143
	beq x0, x10, .LBB1_31
.LBB1_452:                              //  %sw.bb129
	jal x0, .LBB1_430
.LBB1_31:                               //  %do.body134
                                        //    in Loop: Header=BB1_15 Depth=2
	bltu x0, x9, .LBB1_33
.LBB1_32:                               //  %if.then136
                                        //    in Loop: Header=BB1_15 Depth=2
	mv x10, sp
	add x9, x10, -16
	mv sp, x9
	sw x0, -12 ( x10 )
	sw x0, -16 ( x10 )
.LBB1_33:                               //  %do.end139
                                        //    in Loop: Header=BB1_15 Depth=2
	or x25, x25, 128
	jal x0, .LBB1_20
.LBB1_34:                               //    in Loop: Header=BB1_15 Depth=2
	add x10, x0, 8
	jal x0, .LBB1_36
.LBB1_35:                               //    in Loop: Header=BB1_15 Depth=2
	add x10, x0, 2
.LBB1_36:                               //    in Loop: Header=BB1_15 Depth=2
	add x24, x24, 2
.LBB1_37:                               //    in Loop: Header=BB1_15 Depth=2
	or x25, x25, x10
	lbu x10, 0 ( x24 )
	add x12, x0, 85
	add x11, x10, -37
	bgeu x12, x11, .LBB1_15
	jal x0, .LBB1_430
.LBB1_38:                               //    in Loop: Header=BB1_4 Depth=1
	mv x21, x24
.LBB1_39:                               //  %literal
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_41
.LBB1_40:                               //  %land.lhs.true52
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_41
.LBB1_453:                              //  %land.lhs.true52
	jal x0, .LBB1_427
.LBB1_41:                               //  %if.end56
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x18 )
	lbu x11, -1 ( x21 )
	lbu x12, 0 ( x10 )
	beq x12, x11, .LBB1_42
.LBB1_454:                              //  %if.end56
	jal x0, .LBB1_430
.LBB1_42:                               //  %if.end63
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x10, 1
	sw x10, 0 ( x18 )
	lw x10, 4 ( x18 )
	add x20, x20, 1
	add x10, x10, -1
	sw x10, 4 ( x18 )
.LBB1_43:                               //  %for.cond.outer2442.backedge
                                        //    in Loop: Header=BB1_4 Depth=1
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB1_4
	jal x0, .LBB1_430
.LBB1_44:                               //  %sw.bb154
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x0, 16
	sw x10, -388 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtoul_r )
	add x10, x10, %lo( _strtoul_r )
	add x24, x0, 3
	sw x10, -392 ( fp )             //  4-byte Folded Spill
	or x25, x25, 512
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_67
	jal x0, .LBB1_66
.LBB1_45:                               //  %sw.bb162
                                        //    in Loop: Header=BB1_4 Depth=1
	or x25, x25, 1
.LBB1_46:                               //  %sw.bb164
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x24, x0
	or x25, x25, 64
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_67
	jal x0, .LBB1_66
.LBB1_47:                               //  %sw.bb146
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x0, 10
	sw x10, -388 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtol_r )
	add x24, x0, 3
	add x10, x10, %lo( _strtol_r )
	jal x0, .LBB1_49
.LBB1_48:                               //  %sw.bb150
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x0, 8
	sw x10, -388 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtoul_r )
	add x24, x0, 3
	add x10, x10, %lo( _strtoul_r )
.LBB1_49:                               //  %sw.epilog
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10, -392 ( fp )             //  4-byte Folded Spill
	or x25, x25, 1
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_67
	jal x0, .LBB1_66
.LBB1_50:                               //  %sw.bb156
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24, x0, 2
	or x25, x25, 1
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_67
	jal x0, .LBB1_66
.LBB1_51:                               //  %sw.bb159
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, fp, -328
	mv x11, x21
	jal __sccl
	mv x21, x10
	seqz x24, x0
	or x25, x25, 64
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_67
	jal x0, .LBB1_66
.LBB1_52:                               //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24, x0, 3
	add x10, x0, 10
	jal x0, .LBB1_54
.LBB1_53:                               //  %sw.epilog.loopexit3090
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24, x0, 3
	mv x10, x0
.LBB1_54:                               //  %sw.epilog
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10, -388 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtol_r )
	add x10, x10, %lo( _strtol_r )
	sw x10, -392 ( fp )             //  4-byte Folded Spill
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_67
	jal x0, .LBB1_66
.LBB1_55:                               //  %sw.bb168
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 16
	bltu x0, x10, .LBB1_43
.LBB1_56:                               //  %if.end172
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 8
	bltu x0, x10, .LBB1_220
.LBB1_57:                               //  %if.else177
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 4
	beq x0, x10, .LBB1_58
.LBB1_455:                              //  %if.else177
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_386
.LBB1_58:                               //  %if.else183
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 1
	bltu x0, x10, .LBB1_60
.LBB1_59:                               //  %if.else188
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 2
	beq x0, x10, .LBB1_60
.LBB1_456:                              //  %if.else188
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_422
.LBB1_60:                               //  %if.then186
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sw x20, 0 ( x10 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB1_4
	jal x0, .LBB1_430
.LBB1_61:                               //  %sw.epilog.loopexit3635
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24, x0, 3
	add x10, x0, 8
	jal x0, .LBB1_65
.LBB1_62:                               //  %sw.bb166
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x0, 16
	sw x10, -388 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtoul_r )
	add x10, x10, %lo( _strtoul_r )
	add x24, x0, 3
	sw x10, -392 ( fp )             //  4-byte Folded Spill
	or x25, x25, 544
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_67
	jal x0, .LBB1_66
.LBB1_63:                               //  %sw.epilog.loopexit4535
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24, x0, 2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_67
	jal x0, .LBB1_66
.LBB1_64:                               //  %sw.epilog.loopexit4080
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24, x0, 3
	add x10, x0, 10
.LBB1_65:                               //  %sw.epilog
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10, -388 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _strtoul_r )
	add x10, x10, %lo( _strtoul_r )
	sw x10, -392 ( fp )             //  4-byte Folded Spill
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_67
.LBB1_66:                               //  %land.lhs.true203
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_67
.LBB1_457:                              //  %land.lhs.true203
	jal x0, .LBB1_427
.LBB1_67:                               //  %if.end207
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 64
	bltu x0, x10, .LBB1_74
.LBB1_68:                               //  %while.cond.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x18 )
	jal x0, .LBB1_70
.LBB1_69:                               //  %if.then223
                                        //    in Loop: Header=BB1_70 Depth=2
	add x10, x10, 1
	sw x10, 0 ( x18 )
	add x20, x20, 1
.LBB1_70:                               //  %while.cond.preheader
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x11, 0 ( x10 )
	add x11, x11, x22
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	beq x0, x11, .LBB1_74
.LBB1_71:                               //  %while.body
                                        //    in Loop: Header=BB1_70 Depth=2
	lw x11, 4 ( x18 )
	add x11, x11, -1
	sw x11, 4 ( x18 )
	blt x0, x11, .LBB1_69
.LBB1_72:                               //  %if.else226
                                        //    in Loop: Header=BB1_70 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_73
.LBB1_458:                              //  %if.else226
	jal x0, .LBB1_427
.LBB1_73:                               //  %if.else226.if.end231_crit_edge
                                        //    in Loop: Header=BB1_70 Depth=2
	lw x10, 0 ( x18 )
	add x20, x20, 1
	jal x0, .LBB1_70
.LBB1_74:                               //  %if.end232
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x11, %hi( JTI1_1 )
	sll x10, x24, 2&31
	add x11, x11, %lo( JTI1_1 )
	add x10, x11, x10
	lw x10, 0 ( x10 )
	sw x26, -396 ( fp )             //  4-byte Folded Spill
	jr x10
.LBB1_75:                               //  %sw.bb233
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x24, x0
	bne x23, x24, .LBB1_77
.LBB1_76:                               //    in Loop: Header=BB1_4 Depth=1
	seqz x23, x0
.LBB1_77:                               //  %sw.bb233
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 1
	bltu x0, x10, .LBB1_95
.LBB1_78:                               //  %if.else417
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 16
	bltu x0, x10, .LBB1_167
.LBB1_79:                               //  %if.else450
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB1_194
.LBB1_80:                               //  %if.else511
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	mv x25, x0
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x24, 0 ( x10 )
	jal x0, .LBB1_227
.LBB1_81:                               //  %sw.bb540
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x24, x0
	bne x23, x24, .LBB1_83
.LBB1_82:                               //    in Loop: Header=BB1_4 Depth=1
	add x23, x0, -1
.LBB1_83:                               //  %sw.bb540
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 1
	bltu x0, x10, .LBB1_113
.LBB1_84:                               //  %if.else755
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 16
	bltu x0, x10, .LBB1_171
.LBB1_85:                               //  %if.else793
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB1_198
.LBB1_86:                               //  %if.else854
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	mv x24, x0
	mv x12, x24
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x13, 0 ( x10 )
	jal x0, .LBB1_237
.LBB1_87:                               //  %sw.bb939
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x27, x0
	bne x23, x27, .LBB1_89
.LBB1_88:                               //    in Loop: Header=BB1_4 Depth=1
	add x23, x0, -1
.LBB1_89:                               //  %sw.bb939
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 1
	bltu x0, x10, .LBB1_133
.LBB1_90:                               //  %if.else1159
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 16
	bltu x0, x10, .LBB1_178
.LBB1_91:                               //  %if.else1191
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB1_202
.LBB1_92:                               //  %if.else1253
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	mv x27, x0
	mv x24, x27
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x25, 0 ( x10 )
	jal x0, .LBB1_252
.LBB1_93:                               //  %sw.bb1336
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x23, -1
	add x11, x0, 38
	bltu x11, x10, .LBB1_135
.LBB1_94:                               //  %sw.bb1336
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x27, x23
	jal x0, .LBB1_136
.LBB1_95:                               //  %if.then240
                                        //    in Loop: Header=BB1_4 Depth=1
	and x27, x25, 16
	sw x27, -404 ( fp )             //  4-byte Folded Spill
	beq x0, x27, .LBB1_185
.LBB1_96:                               //  %while.body306.us.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x24, x0
	jal __locale_mb_cur_max
	bne x24, x10, .LBB1_99
	jal x0, .LBB1_426
.LBB1_107:                              //    in Loop: Header=BB1_99 Depth=2
	mv x24, x25
	lw x10, 4 ( x18 )
	bge x0, x10, .LBB1_111
.LBB1_97:                               //  %if.end388.us
                                        //    in Loop: Header=BB1_99 Depth=2
	beq x0, x23, .LBB1_221
.LBB1_98:                               //  %while.body306.us
                                        //    in Loop: Header=BB1_99 Depth=2
	jal __locale_mb_cur_max
	bne x24, x10, .LBB1_99
.LBB1_459:                              //  %while.body306.us
	jal x0, .LBB1_426
.LBB1_99:                               //  %if.end311.us
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	add x25, x24, 1
	add x10, x10, -1
	lb x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	add x10, x11, 1
	sw x10, 0 ( x18 )
	add x10, fp, -368
	add x10, x24, x10
	sb x12, 0 ( x10 )
	lw x10, -384 ( fp )             //  4-byte Folded Reload
	xor x10, x10, 3
	bltu x0, x10, .LBB1_101
.LBB1_100:                              //  %if.end311.us
                                        //    in Loop: Header=BB1_99 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB1_102
.LBB1_101:                              //  %if.then324.us
                                        //    in Loop: Header=BB1_99 Depth=2
	add x10, fp, -60
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB1_102:                              //  %if.end326.us
                                        //    in Loop: Header=BB1_99 Depth=2
	mv x24, x0
	add x12, fp, -368
	add x14, fp, -60
	mv x10, x19
	mv x11, x24
	mv x13, x25
	jal _mbrtowc_r
	xor x11, x10, -2
	sw x10, -384 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB1_107
.LBB1_103:                              //  %if.end326.us
                                        //    in Loop: Header=BB1_99 Depth=2
	beq x0, x10, .LBB1_108
.LBB1_104:                              //  %if.end326.us
                                        //    in Loop: Header=BB1_99 Depth=2
	xor x10, x10, -1
	bltu x0, x10, .LBB1_105
.LBB1_460:                              //  %if.end326.us
	jal x0, .LBB1_426
.LBB1_105:                              //  %if.then342.us
                                        //    in Loop: Header=BB1_99 Depth=2
	lw x10, -384 ( fp )             //  4-byte Folded Reload
	add x20, x20, x25
	xor x10, x10, 3
	bltu x0, x10, .LBB1_109
.LBB1_106:                              //  %if.then342.us
                                        //    in Loop: Header=BB1_99 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB1_110
	jal x0, .LBB1_109
.LBB1_108:                              //  %if.then342.thread.us
                                        //    in Loop: Header=BB1_99 Depth=2
	add x20, x20, x25
.LBB1_109:                              //  %if.then350.us
                                        //    in Loop: Header=BB1_99 Depth=2
	add x23, x23, -1
.LBB1_110:                              //  %if.end376.us
                                        //    in Loop: Header=BB1_99 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_97
.LBB1_111:                              //  %land.lhs.true380.us
                                        //    in Loop: Header=BB1_99 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_97
.LBB1_112:                              //    in Loop: Header=BB1_4 Depth=1
	mv x26, x0
	mv x27, x26
	mv x25, x26
	sw x26, -400 ( fp )             //  4-byte Folded Spill
	beq x0, x24, .LBB1_287
	jal x0, .LBB1_426
.LBB1_113:                              //  %if.then547
                                        //    in Loop: Header=BB1_4 Depth=1
	and x12, x25, 16
	sw x12, -416 ( fp )             //  4-byte Folded Spill
	beq x0, x12, .LBB1_187
.LBB1_114:                              //  %while.body622.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x24, x0
	jal __locale_mb_cur_max
	bne x24, x10, .LBB1_117
	jal x0, .LBB1_427
.LBB1_115:                              //  %if.end724
                                        //    in Loop: Header=BB1_117 Depth=2
	beq x0, x23, .LBB1_222
.LBB1_116:                              //  %while.body622
                                        //    in Loop: Header=BB1_117 Depth=2
	jal __locale_mb_cur_max
	bne x24, x10, .LBB1_117
.LBB1_461:                              //  %while.body622
	jal x0, .LBB1_427
.LBB1_117:                              //  %if.end627
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	add x10, x10, -1
	lb x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	add x10, x11, 1
	sw x10, 0 ( x18 )
	add x10, fp, -368
	add x10, x24, x10
	sb x12, 0 ( x10 )
	lw x10, -384 ( fp )             //  4-byte Folded Reload
	add x24, x24, 1
	xor x10, x10, 3
	bltu x0, x10, .LBB1_119
.LBB1_118:                              //  %if.end627
                                        //    in Loop: Header=BB1_117 Depth=2
	lw x10, -376 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB1_120
.LBB1_119:                              //  %if.then641
                                        //    in Loop: Header=BB1_117 Depth=2
	add x10, fp, -376
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB1_120:                              //  %if.end643
                                        //    in Loop: Header=BB1_117 Depth=2
	add x11, fp, -72
	add x12, fp, -368
	add x14, fp, -376
	mv x10, x19
	mv x13, x24
	jal _mbrtowc_r
	xor x11, x10, -2
	sw x10, -384 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB1_130
.LBB1_121:                              //  %if.end643
                                        //    in Loop: Header=BB1_117 Depth=2
	beq x0, x10, .LBB1_125
.LBB1_122:                              //  %if.end643
                                        //    in Loop: Header=BB1_117 Depth=2
	xor x10, x10, -1
	bltu x0, x10, .LBB1_123
.LBB1_462:                              //  %if.end643
	jal x0, .LBB1_427
.LBB1_123:                              //  %if.then656
                                        //    in Loop: Header=BB1_117 Depth=2
	mv x25, x27
	lw x27, -72 ( fp )
	xor x10, x27, -1
	bltu x0, x10, .LBB1_126
.LBB1_124:                              //    in Loop: Header=BB1_117 Depth=2
	add x26, x0, -1
	jal x0, .LBB1_128
.LBB1_125:                              //  %if.then656.thread
                                        //    in Loop: Header=BB1_117 Depth=2
	mv x25, x27
	mv x27, x0
	sw x0, -72 ( fp )
.LBB1_126:                              //  %if.end.i
                                        //    in Loop: Header=BB1_117 Depth=2
	mv x26, x0
	add x10, fp, -60
	add x12, x0, 8
	mv x11, x26
	jal memset
	lui x10, %hi( __global_locale )
	add x10, x10, %lo( __global_locale )
	lw x14, 224 ( x10 )
	add x11, fp, -61
	mv x10, x19
	mv x12, x27
	add x13, fp, -60
	call.reg x14
	seqz x11, x0
	bne x10, x11, .LBB1_128
.LBB1_127:                              //    in Loop: Header=BB1_117 Depth=2
	lbu x26, -61 ( fp )
.LBB1_128:                              //  %if.end.i
                                        //    in Loop: Header=BB1_117 Depth=2
	add x10, fp, -328
	add x10, x26, x10
	lw x11, -384 ( fp )             //  4-byte Folded Reload
	lbu x10, 0 ( x10 )
	mv x27, x25
	add x25, fp, -72
	bltu x0, x10, .LBB1_129
.LBB1_463:                              //  %if.end.i
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_385
.LBB1_129:                              //  %if.end670
                                        //    in Loop: Header=BB1_117 Depth=2
	xor x10, x11, 3
	lw x11, -376 ( fp )
	lw x26, -396 ( fp )             //  4-byte Folded Reload
	snez x10, x10
	add x20, x20, x24
	xor x11, x11, 4
	snez x11, x11
	or x10, x10, x11
	sub x23, x23, x10
	mv x24, x0
.LBB1_130:                              //  %if.end712
                                        //    in Loop: Header=BB1_117 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_115
.LBB1_131:                              //  %land.lhs.true716
                                        //    in Loop: Header=BB1_117 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_115
.LBB1_132:                              //    in Loop: Header=BB1_4 Depth=1
	mv x10, x0
	add x25, fp, -72
	sw x10, -408 ( fp )             //  4-byte Folded Spill
	sw x10, -400 ( fp )             //  4-byte Folded Spill
	sw x10, -412 ( fp )             //  4-byte Folded Spill
	bltu x0, x24, .LBB1_464
.LBB1_465:                              //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_392
.LBB1_464:
	jal x0, .LBB1_427
.LBB1_133:                              //  %if.then946
                                        //    in Loop: Header=BB1_4 Depth=1
	and x24, x25, 16
	beq x0, x24, .LBB1_189
.LBB1_134:                              //    in Loop: Header=BB1_4 Depth=1
	add x25, fp, -72
	jal x0, .LBB1_191
.LBB1_135:                              //    in Loop: Header=BB1_4 Depth=1
	add x27, x0, 39
.LBB1_136:                              //  %sw.bb1336
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x12, %hi( 3456 )
	add x12, x12, %lo( 3456 )
	or x25, x12, x25
	add x24, fp, -368
	beq x0, x27, .LBB1_139
.LBB1_137:                              //  %for.body1347.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x26, x0
	bltu x11, x10, .LBB1_140
.LBB1_138:                              //  %for.body1347.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x26, -400 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_141
.LBB1_139:                              //    in Loop: Header=BB1_4 Depth=1
	mv x23, x0
	mv x26, x23
	add x27, x26, x24
	and x10, x25, 256
	beq x0, x10, .LBB1_166
.LBB1_406:                              //  %if.then1425
                                        //    in Loop: Header=BB1_4 Depth=1
	bge x0, x26, .LBB1_408
.LBB1_407:                              //  %if.then1429
                                        //    in Loop: Header=BB1_4 Depth=1
	lb x11, -1 ( x27 )
	mv x10, x19
	mv x12, x18
	jal _ungetc_r
	add x27, x27, -1
.LBB1_408:                              //  %if.end1433
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x26, -396 ( fp )             //  4-byte Folded Reload
	bne x27, x24, .LBB1_409
.LBB1_466:                              //  %if.end1433
	jal x0, .LBB1_430
.LBB1_409:                              //  %if.end1439
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 16
	bltu x0, x10, .LBB1_419
	jal x0, .LBB1_410
.LBB1_140:                              //    in Loop: Header=BB1_4 Depth=1
	add x10, x23, -39
	sw x10, -400 ( fp )             //  4-byte Folded Spill
.LBB1_141:                              //  %for.body1347.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x23, x26
	jal x0, .LBB1_144
.LBB1_167:                              //  %for.cond421.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x24, x0
.LBB1_168:                              //  %for.cond421
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 4 ( x18 )
	bge x10, x23, .LBB1_192
.LBB1_169:                              //  %if.then425
                                        //    in Loop: Header=BB1_168 Depth=2
	lw x11, 0 ( x18 )
	sub x23, x23, x10
	add x24, x24, x10
	add x11, x10, x11
	sw x11, 0 ( x18 )
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_168
.LBB1_170:                              //  %if.then432
                                        //    in Loop: Header=BB1_4 Depth=1
	bltu x0, x24, .LBB1_193
	jal x0, .LBB1_427
.LBB1_171:                              //  %while.cond759.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x18 )
	add x24, fp, -328
	lbu x11, 0 ( x10 )
	add x11, x11, x24
	lbu x11, 0 ( x11 )
	bltu x0, x11, .LBB1_172
.LBB1_467:                              //  %while.cond759.preheader
	jal x0, .LBB1_430
.LBB1_172:                              //  %while.body764.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x11, x20, 1
	add x23, x23, -1
	jal x0, .LBB1_174
.LBB1_173:                              //  %if.end786
                                        //    in Loop: Header=BB1_174 Depth=2
	lbu x11, 0 ( x10 )
	add x23, x23, -1
	add x12, x11, x24
	lbu x12, 0 ( x12 )
	add x11, x20, 1
	beq x0, x12, .LBB1_43
.LBB1_174:                              //  %while.body764
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x20, x11
	lw x11, 4 ( x18 )
	add x10, x10, 1
	sw x10, 0 ( x18 )
	add x12, x11, -1
	sw x12, 4 ( x18 )
	beq x0, x23, .LBB1_43
.LBB1_175:                              //  %if.end774
                                        //    in Loop: Header=BB1_174 Depth=2
	seqz x12, x0
	blt x12, x11, .LBB1_173
.LBB1_176:                              //  %land.lhs.true778
                                        //    in Loop: Header=BB1_174 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	bltu x0, x10, .LBB1_43
.LBB1_177:                              //  %land.lhs.true778.if.end786_crit_edge
                                        //    in Loop: Header=BB1_174 Depth=2
	lw x10, 0 ( x18 )
	jal x0, .LBB1_173
.LBB1_178:                              //  %while.cond1163.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x18 )
	mv x27, x0
	lbu x11, 0 ( x10 )
	add x11, x11, x22
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB1_206
.LBB1_179:                              //  %while.body1170.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	seqz x11, x0
	jal x0, .LBB1_181
.LBB1_180:                              //  %if.end1188
                                        //    in Loop: Header=BB1_181 Depth=2
	lbu x11, 0 ( x10 )
	add x12, x11, x22
	lbu x12, 1 ( x12 )
	add x11, x24, 1
	and x12, x12, 8
	bltu x0, x12, .LBB1_207
.LBB1_181:                              //  %while.body1170
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	mv x24, x11
	lw x11, 4 ( x18 )
	add x10, x10, 1
	sw x10, 0 ( x18 )
	add x12, x11, -1
	sw x12, 4 ( x18 )
	beq x23, x24, .LBB1_207
.LBB1_182:                              //  %if.end1180
                                        //    in Loop: Header=BB1_181 Depth=2
	seqz x12, x0
	blt x12, x11, .LBB1_180
.LBB1_183:                              //  %land.lhs.true1184
                                        //    in Loop: Header=BB1_181 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	bltu x0, x10, .LBB1_207
.LBB1_184:                              //  %land.lhs.true1184.if.end1188_crit_edge
                                        //    in Loop: Header=BB1_181 Depth=2
	lw x10, 0 ( x18 )
	jal x0, .LBB1_180
.LBB1_185:                              //  %if.else244
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB1_208
.LBB1_186:                              //  %if.else299
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	mv x27, x0
	mv x24, x27
	mv x26, x27
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x25, 0 ( x10 )
	sw x27, -400 ( fp )             //  4-byte Folded Spill
	jal __locale_mb_cur_max
	bne x24, x10, .LBB1_269
	jal x0, .LBB1_426
.LBB1_187:                              //  %if.else555
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB1_212
.LBB1_188:                              //  %if.else615
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x25, 0 ( x10 )
	mv x11, x0
	sw x11, -412 ( fp )             //  4-byte Folded Spill
	sw x11, -408 ( fp )             //  4-byte Folded Spill
	sw x11, -400 ( fp )             //  4-byte Folded Spill
	jal __locale_mb_cur_max
	bne x24, x10, .LBB1_298
	jal x0, .LBB1_427
.LBB1_189:                              //  %if.else954
                                        //    in Loop: Header=BB1_4 Depth=1
	and x10, x25, 128
	bltu x0, x10, .LBB1_216
.LBB1_190:                              //  %if.else1014
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	mv x27, x0
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x25, 0 ( x10 )
.LBB1_191:                              //  %if.end1017
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x26, x27
	mv x10, x27
	sw x10, -404 ( fp )             //  4-byte Folded Spill
	sw x26, -400 ( fp )             //  4-byte Folded Spill
	bltu x0, x23, .LBB1_324
	jal x0, .LBB1_399
.LBB1_192:                              //  %if.else438
                                        //    in Loop: Header=BB1_4 Depth=1
	sub x10, x10, x23
	sw x10, 4 ( x18 )
	lw x10, 0 ( x18 )
	add x24, x24, x23
	add x10, x23, x10
	sw x10, 0 ( x18 )
.LBB1_193:                              //  %cleanup447.thread
                                        //    in Loop: Header=BB1_4 Depth=1
	add x20, x20, x24
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB1_4
	jal x0, .LBB1_430
.LBB1_194:                              //  %if.then453
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x25, 0 ( x10 )
	bltu x0, x25, .LBB1_195
.LBB1_468:                              //  %if.then453
	jal x0, .LBB1_430
.LBB1_195:                              //  %if.end457
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x10, x23
	jal malloc
	mv x24, x10
	bltu x0, x24, .LBB1_196
.LBB1_469:                              //  %if.end457
	jal x0, .LBB1_429
.LBB1_196:                              //  %if.end462
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x24, 0 ( x25 )
	lhu x10, 4 ( x9 )
	lhu x11, 6 ( x9 )
	bgeu x11, x10, .LBB1_223
.LBB1_197:                              //  %if.end462.if.end502_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x9 )
	jal x0, .LBB1_226
.LBB1_198:                              //  %if.then797
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x24, 0 ( x10 )
	bltu x0, x24, .LBB1_199
.LBB1_470:                              //  %if.then797
	jal x0, .LBB1_430
.LBB1_199:                              //  %if.end801
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x0, 32
	mv x25, x10
	jal malloc
	mv x13, x10
	bltu x0, x13, .LBB1_200
.LBB1_471:                              //  %if.end801
	jal x0, .LBB1_429
.LBB1_200:                              //  %if.end805
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x13, 0 ( x24 )
	lhu x10, 4 ( x9 )
	lhu x11, 6 ( x9 )
	bgeu x11, x10, .LBB1_233
.LBB1_201:                              //  %if.end805.if.end845_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x9 )
	jal x0, .LBB1_236
.LBB1_202:                              //  %if.then1196
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x27, 0 ( x10 )
	bltu x0, x27, .LBB1_203
.LBB1_472:                              //  %if.then1196
	jal x0, .LBB1_430
.LBB1_203:                              //  %if.end1200
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24, x0, 32
	mv x10, x24
	jal malloc
	mv x25, x10
	bltu x0, x25, .LBB1_204
.LBB1_473:                              //  %if.end1200
	jal x0, .LBB1_429
.LBB1_204:                              //  %if.end1204
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x25, 0 ( x27 )
	lhu x10, 4 ( x9 )
	lhu x11, 6 ( x9 )
	bgeu x11, x10, .LBB1_248
.LBB1_205:                              //  %if.end1204.if.end1244_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x9 )
	jal x0, .LBB1_251
.LBB1_206:                              //    in Loop: Header=BB1_4 Depth=1
	mv x24, x0
	add x20, x20, x24
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB1_4
	jal x0, .LBB1_430
.LBB1_207:                              //  %while.end1189
                                        //    in Loop: Header=BB1_4 Depth=1
	add x20, x20, x24
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB1_4
	jal x0, .LBB1_430
.LBB1_208:                              //  %if.then247
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -400 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB1_209
.LBB1_474:                              //  %if.then247
	jal x0, .LBB1_430
.LBB1_209:                              //  %if.end251
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x0, 128
	jal malloc
	mv x25, x10
	add x26, x0, -1
	bltu x0, x25, .LBB1_210
.LBB1_475:                              //  %if.end251
	jal x0, .LBB1_430
.LBB1_210:                              //  %if.end255
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -400 ( fp )             //  4-byte Folded Reload
	sw x25, 0 ( x10 )
	lhu x10, 4 ( x9 )
	lhu x11, 6 ( x9 )
	bgeu x11, x10, .LBB1_263
.LBB1_211:                              //  %if.end255.if.end292_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x9 )
	jal x0, .LBB1_266
.LBB1_212:                              //  %if.then558
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -400 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB1_213
.LBB1_476:                              //  %if.then558
	jal x0, .LBB1_442
.LBB1_213:                              //  %if.end562
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x0, 128
	jal malloc
	mv x13, x10
	add x25, x0, -1
	bltu x0, x13, .LBB1_214
.LBB1_477:                              //  %if.end562
	jal x0, .LBB1_439
.LBB1_214:                              //  %if.end566
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -400 ( fp )             //  4-byte Folded Reload
	sw x13, -408 ( fp )             //  4-byte Folded Spill
	sw x13, 0 ( x10 )
	lhu x10, 4 ( x9 )
	lhu x11, 6 ( x9 )
	bgeu x11, x10, .LBB1_292
.LBB1_215:                              //  %if.end566.if.end606_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x9 )
	jal x0, .LBB1_295
.LBB1_216:                              //  %if.then957
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x27, 0 ( x10 )
	bltu x0, x27, .LBB1_217
.LBB1_478:                              //  %if.then957
	jal x0, .LBB1_442
.LBB1_217:                              //  %if.end961
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x0, 128
	jal malloc
	mv x26, x10
	add x25, x0, -1
	bltu x0, x26, .LBB1_218
.LBB1_479:                              //  %if.end961
	jal x0, .LBB1_439
.LBB1_218:                              //  %if.end965
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x26, 0 ( x27 )
	lhu x10, 4 ( x9 )
	lhu x11, 6 ( x9 )
	bgeu x11, x10, .LBB1_320
.LBB1_219:                              //  %if.end965.if.end1005_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x9 )
	jal x0, .LBB1_323
.LBB1_220:                              //  %if.then175
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sb x20, 0 ( x10 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB1_4
	jal x0, .LBB1_430
.LBB1_221:                              //    in Loop: Header=BB1_4 Depth=1
	mv x26, x0
	sw x26, -400 ( fp )             //  4-byte Folded Spill
	mv x27, x26
	mv x25, x26
	lw x10, -400 ( fp )             //  4-byte Folded Reload
	bltu x0, x10, .LBB1_288
	jal x0, .LBB1_291
.LBB1_161:                              //  %if.end1364
                                        //    in Loop: Header=BB1_144 Depth=2
	snez x11, x11
	add x27, x11, x27
	add x23, x23, 1
	and x25, x25, -897
	sw x12, -400 ( fp )             //  4-byte Folded Spill
	lw x11, 4 ( x18 )
	add x11, x11, -1
	sw x11, 4 ( x18 )
	bge x0, x11, .LBB1_164
.LBB1_142:                              //  %if.then1411
                                        //    in Loop: Header=BB1_144 Depth=2
	add x10, x10, 1
	sw x10, 0 ( x18 )
.LBB1_143:                              //  %for.inc1420
                                        //    in Loop: Header=BB1_144 Depth=2
	add x27, x27, -1
	beq x0, x27, .LBB1_165
.LBB1_144:                              //  %for.body1347
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 0 ( x18 )
	add x13, x0, 77
	lbu x11, 0 ( x10 )
	add x12, x11, -43
	bltu x13, x12, .LBB1_165
.LBB1_145:                              //  %for.body1347
                                        //    in Loop: Header=BB1_144 Depth=2
	lui x13, %hi( JTI1_2 )
	sll x12, x12, 2&31
	add x13, x13, %lo( JTI1_2 )
	add x12, x13, x12
	lw x12, 0 ( x12 )
	jr x12
.LBB1_146:                              //  %sw.bb1384
                                        //    in Loop: Header=BB1_144 Depth=2
	lw x12, -388 ( fp )             //  4-byte Folded Reload
	slti x12, x12, 11
	bltu x0, x12, .LBB1_165
.LBB1_147:                              //  %if.end1388
                                        //    in Loop: Header=BB1_144 Depth=2
	lui x12, %hi( -2945 )
	add x12, x12, %lo( -2945 )
	and x25, x12, x25
	jal x0, .LBB1_163
.LBB1_148:                              //  %sw.bb1372
                                        //    in Loop: Header=BB1_144 Depth=2
	lui x12, %hi( -2945 )
	add x12, x12, %lo( -2945 )
	and x25, x12, x25
	lw x12, -388 ( fp )             //  4-byte Folded Reload
	lui x13, %hi( __svfiscanf_r.basefix )
	add x13, x13, %lo( __svfiscanf_r.basefix )
	sll x12, x12, 1&31
	add x12, x12, x13
	lh x12, 0 ( x12 )
	sw x12, -388 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_163
.LBB1_149:                              //  %sw.bb1390
                                        //    in Loop: Header=BB1_144 Depth=2
	and x12, x25, 128
	beq x0, x12, .LBB1_165
.LBB1_150:                              //  %if.then1393
                                        //    in Loop: Header=BB1_144 Depth=2
	and x25, x25, -129
	jal x0, .LBB1_163
.LBB1_151:                              //  %sw.bb1376
                                        //    in Loop: Header=BB1_144 Depth=2
	lw x14, -388 ( fp )             //  4-byte Folded Reload
	lui x13, %hi( __svfiscanf_r.basefix )
	add x13, x13, %lo( __svfiscanf_r.basefix )
	sll x12, x14, 1&31
	add x12, x12, x13
	lh x12, 0 ( x12 )
	add x13, x14, -1
	sltiu x13, x13, 8
	bltu x0, x13, .LBB1_405
.LBB1_152:                              //  %if.end1382
                                        //    in Loop: Header=BB1_144 Depth=2
	lui x13, %hi( -2945 )
	add x13, x13, %lo( -2945 )
	and x25, x13, x25
	sw x12, -388 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_163
.LBB1_153:                              //  %sw.bb1396
                                        //    in Loop: Header=BB1_144 Depth=2
	and x12, x25, 1536
	xor x12, x12, 512
	bltu x0, x12, .LBB1_165
.LBB1_154:                              //  %if.then1400
                                        //    in Loop: Header=BB1_144 Depth=2
	add x12, x0, 16
	sw x12, -388 ( fp )             //  4-byte Folded Spill
	and x12, x25, -1793
	or x25, x12, 1280
	jal x0, .LBB1_163
.LBB1_155:                              //  %sw.bb1350
                                        //    in Loop: Header=BB1_144 Depth=2
	lui x12, %hi( 2048 )
	add x12, x12, %lo( 2048 )
	and x12, x12, x25
	beq x0, x12, .LBB1_163
.LBB1_156:                              //  %if.end1354
                                        //    in Loop: Header=BB1_144 Depth=2
	lw x13, -388 ( fp )             //  4-byte Folded Reload
	mv x12, x0
	bne x13, x12, .LBB1_158
.LBB1_157:                              //    in Loop: Header=BB1_144 Depth=2
	or x25, x25, 512
	add x13, x0, 8
	sw x13, -388 ( fp )             //  4-byte Folded Spill
.LBB1_158:                              //  %if.end1354
                                        //    in Loop: Header=BB1_144 Depth=2
	and x13, x25, 1024
	bltu x0, x13, .LBB1_162
.LBB1_159:                              //  %if.end1364
                                        //    in Loop: Header=BB1_144 Depth=2
	lw x11, -400 ( fp )             //  4-byte Folded Reload
	beq x11, x12, .LBB1_161
.LBB1_160:                              //  %if.end1364
                                        //    in Loop: Header=BB1_144 Depth=2
	add x12, x11, -1
	jal x0, .LBB1_161
.LBB1_162:                              //  %if.then1362
                                        //    in Loop: Header=BB1_144 Depth=2
	and x25, x25, -1409
.LBB1_163:                              //  %ok
                                        //    in Loop: Header=BB1_144 Depth=2
	add x12, x26, x24
	add x26, x26, 1
	sb x11, 0 ( x12 )
	lw x11, 4 ( x18 )
	add x11, x11, -1
	sw x11, 4 ( x18 )
	blt x0, x11, .LBB1_142
.LBB1_164:                              //  %if.else1414
                                        //    in Loop: Header=BB1_144 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_143
.LBB1_165:                              //  %for.end1422
                                        //    in Loop: Header=BB1_4 Depth=1
	add x27, x26, x24
	and x10, x25, 256
	bltu x0, x10, .LBB1_406
.LBB1_166:                              //    in Loop: Header=BB1_4 Depth=1
	lw x26, -396 ( fp )             //  4-byte Folded Reload
	and x10, x25, 16
	bltu x0, x10, .LBB1_419
.LBB1_410:                              //  %if.then1443
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x13, -388 ( fp )             //  4-byte Folded Reload
	lw x14, -392 ( fp )             //  4-byte Folded Reload
	add x11, fp, -368
	mv x12, x0
	mv x10, x19
	sb x0, 0 ( x27 )
	call.reg x14
	and x11, x25, 32
	bltu x0, x11, .LBB1_415
.LBB1_411:                              //  %if.else1450
                                        //    in Loop: Header=BB1_4 Depth=1
	and x11, x25, 8
	bltu x0, x11, .LBB1_416
.LBB1_412:                              //  %if.else1456
                                        //    in Loop: Header=BB1_4 Depth=1
	and x11, x25, 4
	bltu x0, x11, .LBB1_417
.LBB1_413:                              //  %if.else1462
                                        //    in Loop: Header=BB1_4 Depth=1
	and x11, x25, 1
	bltu x0, x11, .LBB1_415
.LBB1_414:                              //  %if.else1467
                                        //    in Loop: Header=BB1_4 Depth=1
	and x11, x25, 2
	bltu x0, x11, .LBB1_420
.LBB1_415:                              //  %if.else1481
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x11, -68 ( fp )
	add x12, x11, 4
	sw x12, -68 ( fp )
	lw x11, 0 ( x11 )
	sw x10, 0 ( x11 )
	jal x0, .LBB1_418
.LBB1_416:                              //  %if.then1453
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x11, -68 ( fp )
	add x12, x11, 4
	sw x12, -68 ( fp )
	lw x11, 0 ( x11 )
	sb x10, 0 ( x11 )
	jal x0, .LBB1_418
.LBB1_417:                              //  %if.then1459
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x11, -68 ( fp )
	add x12, x11, 4
	sw x12, -68 ( fp )
	lw x11, 0 ( x11 )
	sh x10, 0 ( x11 )
.LBB1_418:                              //  %if.end1487
                                        //    in Loop: Header=BB1_4 Depth=1
	add x26, x26, 1
.LBB1_419:                              //  %cleanup1496.thread
                                        //    in Loop: Header=BB1_4 Depth=1
	sub x10, x20, x24
	add x10, x23, x10
	add x20, x27, x10
	mv x27, x0
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB1_4
	jal x0, .LBB1_430
.LBB1_222:                              //    in Loop: Header=BB1_4 Depth=1
	mv x10, x0
	add x25, fp, -72
	sw x10, -408 ( fp )             //  4-byte Folded Spill
	sw x10, -400 ( fp )             //  4-byte Folded Spill
	sw x10, -412 ( fp )             //  4-byte Folded Spill
	lw x10, -416 ( fp )             //  4-byte Folded Reload
	bltu x0, x10, .LBB1_43
	jal x0, .LBB1_393
.LBB1_223:                              //  %if.then470
                                        //    in Loop: Header=BB1_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB1_432
.LBB1_224:                              //  %if.end490
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x9 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_432
.LBB1_225:                              //  %cleanup499
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x11, 4 ( x9 )
	sw x10, 0 ( x9 )
	add x11, x11, 8
	sh x11, 4 ( x9 )
	lhu x11, 6 ( x9 )
.LBB1_226:                              //  %if.end502
                                        //    in Loop: Header=BB1_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x25, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x9 )
.LBB1_227:                              //  %if.end513
                                        //    in Loop: Header=BB1_4 Depth=1
	seqz x12, x0
	mv x10, x19
	mv x11, x24
	mv x13, x23
	mv x14, x18
	jal _fread_r
	mv x24, x10
	beq x0, x24, .LBB1_427
.LBB1_228:                              //  %if.end518
                                        //    in Loop: Header=BB1_4 Depth=1
	beq x0, x25, .LBB1_232
.LBB1_229:                              //  %if.end518
                                        //    in Loop: Header=BB1_4 Depth=1
	bgeu x24, x23, .LBB1_232
.LBB1_230:                              //  %if.then524
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x25 )
	mv x11, x24
	jal realloc
	beq x0, x10, .LBB1_232
.LBB1_231:                              //  %if.then529
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10, 0 ( x25 )
.LBB1_232:                              //  %cleanup534.thread2298
                                        //    in Loop: Header=BB1_4 Depth=1
	add x20, x20, x24
	add x26, x26, 1
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	bltu x0, x10, .LBB1_4
	jal x0, .LBB1_430
.LBB1_233:                              //  %if.then813
                                        //    in Loop: Header=BB1_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	mv x26, x13
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB1_432
.LBB1_234:                              //  %if.end833
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x9 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_432
.LBB1_235:                              //  %cleanup842
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x11, 4 ( x9 )
	mv x13, x26
	sw x10, 0 ( x9 )
	add x11, x11, 8
	sh x11, 4 ( x9 )
	lhu x11, 6 ( x9 )
.LBB1_236:                              //  %if.end845
                                        //    in Loop: Header=BB1_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x24, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x9 )
	mv x12, x25
.LBB1_237:                              //  %if.end856
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x18 )
	add x14, fp, -328
	sw x24, -400 ( fp )             //  4-byte Folded Spill
	lbu x11, 0 ( x10 )
	add x11, x11, x14
	lbu x11, 0 ( x11 )
	beq x0, x11, .LBB1_247
.LBB1_238:                              //  %while.body862.lr.ph
                                        //    in Loop: Header=BB1_4 Depth=1
	beq x0, x24, .LBB1_359
.LBB1_239:                              //    in Loop: Header=BB1_4 Depth=1
	mv x25, x13
	jal x0, .LBB1_241
.LBB1_240:                              //  %if.end908
                                        //    in Loop: Header=BB1_241 Depth=2
	lw x10, 0 ( x18 )
	add x14, fp, -328
	lbu x11, 0 ( x10 )
	add x11, x11, x14
	lbu x11, 0 ( x11 )
	beq x0, x11, .LBB1_367
.LBB1_241:                              //  %while.body862
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x11, x10, 1
	sw x11, 0 ( x18 )
	lw x11, 4 ( x18 )
	mv x24, x27
	add x11, x11, -1
	sw x11, 4 ( x18 )
	lb x10, 0 ( x10 )
	sb x10, 0 ( x25 )
	add x25, x25, 1
	sub x27, x25, x13
	bltu x27, x12, .LBB1_244
.LBB1_242:                              //  %if.then877
                                        //    in Loop: Header=BB1_241 Depth=2
	sll x12, x12, 1&31
	mv x10, x13
	mv x11, x12
	mv x26, x12
	jal realloc
	mv x13, x10
	beq x0, x13, .LBB1_429
.LBB1_243:                              //  %if.end883
                                        //    in Loop: Header=BB1_241 Depth=2
	lw x10, -400 ( fp )             //  4-byte Folded Reload
	add x25, x27, x13
	mv x12, x26
	sw x13, 0 ( x10 )
.LBB1_244:                              //  %cleanup.cont891
                                        //    in Loop: Header=BB1_241 Depth=2
	add x23, x23, -1
	mv x27, x24
	beq x0, x23, .LBB1_367
.LBB1_245:                              //  %if.end896
                                        //    in Loop: Header=BB1_241 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_240
.LBB1_246:                              //  %land.lhs.true900
                                        //    in Loop: Header=BB1_241 Depth=2
	mv x10, x19
	mv x11, x18
	mv x24, x12
	mv x26, x13
	jal __srefill_r
	mv x13, x26
	mv x12, x24
	beq x0, x10, .LBB1_240
	jal x0, .LBB1_365
.LBB1_247:                              //    in Loop: Header=BB1_4 Depth=1
	mv x25, x13
	sub x23, x25, x13
	bltu x0, x23, .LBB1_368
	jal x0, .LBB1_440
.LBB1_248:                              //  %if.then1212
                                        //    in Loop: Header=BB1_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB1_432
.LBB1_249:                              //  %if.end1232
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x9 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_432
.LBB1_250:                              //  %cleanup1241
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x11, 4 ( x9 )
	sw x10, 0 ( x9 )
	add x11, x11, 8
	sh x11, 4 ( x9 )
	lhu x11, 6 ( x9 )
.LBB1_251:                              //  %if.end1244
                                        //    in Loop: Header=BB1_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x27, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x9 )
.LBB1_252:                              //  %if.end1255
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x18 )
	sw x27, -400 ( fp )             //  4-byte Folded Spill
	lbu x11, 0 ( x10 )
	add x11, x11, x22
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB1_262
.LBB1_253:                              //  %while.body1264.lr.ph
                                        //    in Loop: Header=BB1_4 Depth=1
	beq x0, x27, .LBB1_373
.LBB1_254:                              //    in Loop: Header=BB1_4 Depth=1
	mv x27, x25
	jal x0, .LBB1_256
.LBB1_255:                              //  %if.end1306
                                        //    in Loop: Header=BB1_256 Depth=2
	lw x10, 0 ( x18 )
	lbu x11, 0 ( x10 )
	add x11, x11, x22
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB1_379
.LBB1_256:                              //  %while.body1264
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x11, x10, 1
	sw x11, 0 ( x18 )
	lw x11, 4 ( x18 )
	add x11, x11, -1
	sw x11, 4 ( x18 )
	lb x10, 0 ( x10 )
	sb x10, 0 ( x27 )
	add x27, x27, 1
	sub x26, x27, x25
	bltu x26, x24, .LBB1_259
.LBB1_257:                              //  %if.then1279
                                        //    in Loop: Header=BB1_256 Depth=2
	sll x24, x24, 1&31
	mv x10, x25
	mv x11, x24
	jal realloc
	mv x25, x10
	beq x0, x25, .LBB1_429
.LBB1_258:                              //  %if.end1285
                                        //    in Loop: Header=BB1_256 Depth=2
	lw x10, -400 ( fp )             //  4-byte Folded Reload
	add x27, x26, x25
	sw x25, 0 ( x10 )
.LBB1_259:                              //  %cleanup.cont1293
                                        //    in Loop: Header=BB1_256 Depth=2
	add x23, x23, -1
	beq x0, x23, .LBB1_379
.LBB1_260:                              //  %if.end1298
                                        //    in Loop: Header=BB1_256 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_255
.LBB1_261:                              //  %land.lhs.true1302
                                        //    in Loop: Header=BB1_256 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_255
	jal x0, .LBB1_379
.LBB1_262:                              //    in Loop: Header=BB1_4 Depth=1
	mv x27, x25
	sub x23, x27, x25
	lw x25, -400 ( fp )             //  4-byte Folded Reload
	sb x0, 0 ( x27 )
	bltu x0, x25, .LBB1_380
	jal x0, .LBB1_383
.LBB1_263:                              //  %if.then263
                                        //    in Loop: Header=BB1_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB1_430
.LBB1_264:                              //  %if.end283
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x9 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_430
.LBB1_265:                              //  %cleanup
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x11, 4 ( x9 )
	sw x10, 0 ( x9 )
	add x11, x11, 8
	sh x11, 4 ( x9 )
	lhu x11, 6 ( x9 )
.LBB1_266:                              //  %if.end292
                                        //    in Loop: Header=BB1_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -400 ( fp )             //  4-byte Folded Reload
	add x27, x0, 32
	mv x26, x25
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x9 )
	jal __locale_mb_cur_max
	bne x24, x10, .LBB1_269
	jal x0, .LBB1_426
.LBB1_267:                              //  %if.end388
                                        //    in Loop: Header=BB1_269 Depth=2
	beq x0, x23, .LBB1_287
.LBB1_268:                              //  %while.body306
                                        //    in Loop: Header=BB1_269 Depth=2
	jal __locale_mb_cur_max
	beq x24, x10, .LBB1_426
.LBB1_269:                              //  %if.end311
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	add x10, x10, -1
	lb x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	add x10, x11, 1
	sw x10, 0 ( x18 )
	add x10, fp, -368
	add x10, x24, x10
	sb x12, 0 ( x10 )
	lw x10, -384 ( fp )             //  4-byte Folded Reload
	add x24, x24, 1
	xor x10, x10, 3
	bltu x0, x10, .LBB1_271
.LBB1_270:                              //  %if.end311
                                        //    in Loop: Header=BB1_269 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB1_272
.LBB1_271:                              //  %if.then324
                                        //    in Loop: Header=BB1_269 Depth=2
	add x10, fp, -60
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB1_272:                              //  %if.end326
                                        //    in Loop: Header=BB1_269 Depth=2
	add x12, fp, -368
	add x14, fp, -60
	mv x10, x19
	mv x11, x25
	mv x13, x24
	jal _mbrtowc_r
	xor x11, x10, -2
	sw x10, -384 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB1_284
.LBB1_273:                              //  %if.end326
                                        //    in Loop: Header=BB1_269 Depth=2
	beq x0, x10, .LBB1_277
.LBB1_274:                              //  %if.end326
                                        //    in Loop: Header=BB1_269 Depth=2
	xor x10, x10, -1
	beq x0, x10, .LBB1_426
.LBB1_275:                              //  %if.then342
                                        //    in Loop: Header=BB1_269 Depth=2
	lw x10, -384 ( fp )             //  4-byte Folded Reload
	add x20, x20, x24
	xor x10, x10, 3
	bltu x0, x10, .LBB1_278
.LBB1_276:                              //  %if.then342
                                        //    in Loop: Header=BB1_269 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB1_279
	jal x0, .LBB1_278
.LBB1_277:                              //  %if.then338
                                        //    in Loop: Header=BB1_269 Depth=2
	add x20, x20, x24
	sw x0, 0 ( x25 )
.LBB1_278:                              //  %if.then350
                                        //    in Loop: Header=BB1_269 Depth=2
	add x23, x23, -1
.LBB1_279:                              //  %if.then355
                                        //    in Loop: Header=BB1_269 Depth=2
	lw x10, -400 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_283
.LBB1_280:                              //  %if.then355
                                        //    in Loop: Header=BB1_269 Depth=2
	sub x10, x25, x26
	sra x24, x10, 2&31
	bltu x24, x27, .LBB1_283
.LBB1_281:                              //  %if.then360
                                        //    in Loop: Header=BB1_269 Depth=2
	sll x11, x27, 3&31
	mv x10, x26
	jal realloc
	mv x26, x10
	beq x0, x26, .LBB1_429
.LBB1_282:                              //  %if.end365
                                        //    in Loop: Header=BB1_269 Depth=2
	lw x10, -400 ( fp )             //  4-byte Folded Reload
	sll x27, x27, 1&31
	sw x26, 0 ( x10 )
	sll x10, x24, 2&31
	add x25, x10, x26
.LBB1_283:                              //  %cleanup.cont373
                                        //    in Loop: Header=BB1_269 Depth=2
	mv x24, x0
	add x25, x25, 4
.LBB1_284:                              //  %if.end376
                                        //    in Loop: Header=BB1_269 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_267
.LBB1_285:                              //  %land.lhs.true380
                                        //    in Loop: Header=BB1_269 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_267
.LBB1_286:                              //  %if.then383
                                        //    in Loop: Header=BB1_4 Depth=1
	bltu x0, x24, .LBB1_426
.LBB1_287:                              //  %while.end389
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -400 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_291
.LBB1_288:                              //  %while.end389
                                        //    in Loop: Header=BB1_4 Depth=1
	sub x11, x25, x26
	sra x10, x11, 2&31
	bgeu x10, x27, .LBB1_291
.LBB1_289:                              //  %if.then399
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -400 ( fp )             //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB1_291
.LBB1_290:                              //  %if.then403
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x11, -400 ( fp )             //  4-byte Folded Reload
	sw x10, 0 ( x11 )
.LBB1_291:                              //  %cleanup411
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -404 ( fp )             //  4-byte Folded Reload
	lw x26, -396 ( fp )             //  4-byte Folded Reload
	mv x27, x0
	seqz x10, x10
	add x26, x10, x26
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_480
.LBB1_481:                              //  %cleanup411
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_480:                              //  %cleanup411
	jal x0, .LBB1_430
.LBB1_292:                              //  %if.then574
                                        //    in Loop: Header=BB1_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB1_439
.LBB1_293:                              //  %if.end594
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x9 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_439
.LBB1_294:                              //  %cleanup603
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x11, 4 ( x9 )
	lw x13, -408 ( fp )             //  4-byte Folded Reload
	sw x10, 0 ( x9 )
	add x11, x11, 8
	sh x11, 4 ( x9 )
	lhu x11, 6 ( x9 )
.LBB1_295:                              //  %if.end606
                                        //    in Loop: Header=BB1_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -400 ( fp )             //  4-byte Folded Reload
	mv x25, x13
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x9 )
	add x10, x0, 32
	sw x10, -412 ( fp )             //  4-byte Folded Spill
	jal __locale_mb_cur_max
	bne x24, x10, .LBB1_298
	jal x0, .LBB1_427
.LBB1_296:                              //  %if.end724.us
                                        //    in Loop: Header=BB1_298 Depth=2
	beq x0, x23, .LBB1_392
.LBB1_297:                              //  %while.body622.us
                                        //    in Loop: Header=BB1_298 Depth=2
	jal __locale_mb_cur_max
	beq x24, x10, .LBB1_427
.LBB1_298:                              //  %if.end627.us
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	add x10, x10, -1
	lb x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	add x10, x11, 1
	sw x10, 0 ( x18 )
	add x10, fp, -368
	add x10, x24, x10
	sb x12, 0 ( x10 )
	lw x10, -384 ( fp )             //  4-byte Folded Reload
	add x24, x24, 1
	xor x10, x10, 3
	bltu x0, x10, .LBB1_300
.LBB1_299:                              //  %if.end627.us
                                        //    in Loop: Header=BB1_298 Depth=2
	lw x10, -376 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB1_301
.LBB1_300:                              //  %if.then641.us
                                        //    in Loop: Header=BB1_298 Depth=2
	add x10, fp, -376
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB1_301:                              //  %if.end643.us
                                        //    in Loop: Header=BB1_298 Depth=2
	add x12, fp, -368
	add x14, fp, -376
	mv x10, x19
	mv x11, x25
	mv x13, x24
	jal _mbrtowc_r
	xor x11, x10, -2
	sw x10, -384 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB1_317
.LBB1_302:                              //  %if.end643.us
                                        //    in Loop: Header=BB1_298 Depth=2
	sw x25, -404 ( fp )             //  4-byte Folded Spill
	beq x0, x10, .LBB1_306
.LBB1_303:                              //  %if.end643.us
                                        //    in Loop: Header=BB1_298 Depth=2
	xor x10, x10, -1
	beq x0, x10, .LBB1_427
.LBB1_304:                              //  %if.then656.us
                                        //    in Loop: Header=BB1_298 Depth=2
	lw x25, 0 ( x25 )
	xor x10, x25, -1
	bltu x0, x10, .LBB1_307
.LBB1_305:                              //    in Loop: Header=BB1_298 Depth=2
	lw x11, -384 ( fp )             //  4-byte Folded Reload
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	add x27, x0, -1
	jal x0, .LBB1_310
.LBB1_306:                              //  %if.then656.thread.us
                                        //    in Loop: Header=BB1_298 Depth=2
	sw x0, 0 ( x25 )
	mv x25, x0
.LBB1_307:                              //  %if.end.i.us
                                        //    in Loop: Header=BB1_298 Depth=2
	add x26, fp, -60
	mv x27, x0
	add x12, x0, 8
	mv x10, x26
	mv x11, x27
	jal memset
	lui x10, %hi( __global_locale )
	add x10, x10, %lo( __global_locale )
	lw x14, 224 ( x10 )
	add x11, fp, -61
	mv x10, x19
	mv x12, x25
	mv x13, x26
	call.reg x14
	seqz x11, x0
	bne x10, x11, .LBB1_309
.LBB1_308:                              //    in Loop: Header=BB1_298 Depth=2
	lbu x27, -61 ( fp )
.LBB1_309:                              //  %if.end.i.us
                                        //    in Loop: Header=BB1_298 Depth=2
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	lw x26, -396 ( fp )             //  4-byte Folded Reload
	lw x11, -384 ( fp )             //  4-byte Folded Reload
.LBB1_310:                              //  %__wctob.exit.us
                                        //    in Loop: Header=BB1_298 Depth=2
	add x10, fp, -328
	add x10, x27, x10
	lw x12, -408 ( fp )             //  4-byte Folded Reload
	lbu x10, 0 ( x10 )
	beq x0, x10, .LBB1_389
.LBB1_311:                              //  %if.end670.us
                                        //    in Loop: Header=BB1_298 Depth=2
	xor x10, x11, 3
	lw x11, -376 ( fp )
	snez x10, x10
	add x20, x20, x24
	mv x24, x0
	xor x11, x11, 4
	snez x11, x11
	or x10, x10, x11
	sub x23, x23, x10
	lw x10, -400 ( fp )             //  4-byte Folded Reload
	add x25, x25, 4
	mv x27, x0
	beq x0, x10, .LBB1_317
.LBB1_312:                              //  %if.end670.us
                                        //    in Loop: Header=BB1_298 Depth=2
	lw x26, -412 ( fp )             //  4-byte Folded Reload
	sub x10, x25, x12
	mv x11, x25
	sra x25, x10, 2&31
	bltu x25, x26, .LBB1_315
.LBB1_313:                              //  %if.then696.us
                                        //    in Loop: Header=BB1_298 Depth=2
	sll x11, x26, 3&31
	mv x10, x12
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB1_438
.LBB1_314:                              //  %if.end702.us
                                        //    in Loop: Header=BB1_298 Depth=2
	lw x10, -400 ( fp )             //  4-byte Folded Reload
	sll x26, x26, 1&31
	sw x11, -408 ( fp )             //  4-byte Folded Spill
	sw x26, -412 ( fp )             //  4-byte Folded Spill
	sw x11, 0 ( x10 )
	sll x10, x25, 2&31
	add x25, x10, x11
	jal x0, .LBB1_316
.LBB1_315:                              //    in Loop: Header=BB1_298 Depth=2
	mv x25, x11
.LBB1_316:                              //  %if.end712.us
                                        //    in Loop: Header=BB1_298 Depth=2
	lw x26, -396 ( fp )             //  4-byte Folded Reload
.LBB1_317:                              //  %if.end712.us
                                        //    in Loop: Header=BB1_298 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_296
.LBB1_318:                              //  %land.lhs.true716.us
                                        //    in Loop: Header=BB1_298 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_296
.LBB1_319:                              //  %if.then719
                                        //    in Loop: Header=BB1_4 Depth=1
	beq x0, x24, .LBB1_392
	jal x0, .LBB1_427
.LBB1_320:                              //  %if.then973
                                        //    in Loop: Header=BB1_4 Depth=1
	add x11, x10, 8
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	bltu x10, x11, .LBB1_439
.LBB1_321:                              //  %if.end993
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x9 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_439
.LBB1_322:                              //  %cleanup1002
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x11, 4 ( x9 )
	sw x10, 0 ( x9 )
	add x11, x11, 8
	sh x11, 4 ( x9 )
	lhu x11, 6 ( x9 )
.LBB1_323:                              //  %if.end1005
                                        //    in Loop: Header=BB1_4 Depth=1
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x27, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x9 )
	add x10, x0, 32
	mv x25, x26
	sw x10, -404 ( fp )             //  4-byte Folded Spill
	sw x26, -400 ( fp )             //  4-byte Folded Spill
	beq x0, x23, .LBB1_399
.LBB1_324:                              //  %if.end1017
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x18 )
	lbu x10, 0 ( x10 )
	add x10, x10, x22
	lbu x10, 1 ( x10 )
	and x10, x10, 8
	bltu x0, x10, .LBB1_399
.LBB1_325:                              //  %while.body1027.lr.ph
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x26, x0
	bltu x0, x24, .LBB1_345
.LBB1_326:                              //  %while.body1027.us.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x24, -408 ( fp )             //  4-byte Folded Spill
.LBB1_327:                              //  %while.body1027.us
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	jal __locale_mb_cur_max
	beq x26, x10, .LBB1_426
.LBB1_328:                              //  %if.end1032.us
                                        //    in Loop: Header=BB1_327 Depth=2
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	add x10, x10, -1
	lb x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	add x10, x11, 1
	sw x10, 0 ( x18 )
	add x10, fp, -368
	add x10, x26, x10
	sb x12, 0 ( x10 )
	lw x10, -384 ( fp )             //  4-byte Folded Reload
	add x26, x26, 1
	xor x10, x10, 3
	bltu x0, x10, .LBB1_330
.LBB1_329:                              //  %if.end1032.us
                                        //    in Loop: Header=BB1_327 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB1_331
.LBB1_330:                              //  %if.then1046.us
                                        //    in Loop: Header=BB1_327 Depth=2
	add x10, fp, -60
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB1_331:                              //  %if.end1048.us
                                        //    in Loop: Header=BB1_327 Depth=2
	add x12, fp, -368
	add x14, fp, -60
	mv x10, x19
	mv x11, x25
	mv x13, x26
	jal _mbrtowc_r
	xor x11, x10, -2
	sw x10, -384 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB1_341
.LBB1_332:                              //  %if.end1048.us
                                        //    in Loop: Header=BB1_327 Depth=2
	beq x0, x10, .LBB1_335
.LBB1_333:                              //  %if.end1048.us
                                        //    in Loop: Header=BB1_327 Depth=2
	xor x10, x10, -1
	beq x0, x10, .LBB1_426
.LBB1_334:                              //  %if.end1048.us.if.then1061.us_crit_edge
                                        //    in Loop: Header=BB1_327 Depth=2
	lw x10, 0 ( x25 )
	jal iswspace
	beq x0, x10, .LBB1_336
	jal x0, .LBB1_387
.LBB1_335:                              //  %if.then1057.us
                                        //    in Loop: Header=BB1_327 Depth=2
	mv x10, x0
	sw x0, 0 ( x25 )
	jal iswspace
	bltu x0, x10, .LBB1_387
.LBB1_336:                              //  %if.end1074.us
                                        //    in Loop: Header=BB1_327 Depth=2
	lw x10, -384 ( fp )             //  4-byte Folded Reload
	lw x11, -60 ( fp )
	add x20, x20, x26
	mv x26, x0
	xor x10, x10, 3
	xor x11, x11, 4
	snez x10, x10
	snez x11, x11
	or x10, x10, x11
	sub x23, x23, x10
	add x25, x25, 4
	beq x0, x27, .LBB1_341
.LBB1_337:                              //  %if.end1074.us
                                        //    in Loop: Header=BB1_327 Depth=2
	lw x10, -400 ( fp )             //  4-byte Folded Reload
	sub x11, x25, x10
	sra x24, x11, 2&31
	mv x11, x25
	lw x25, -404 ( fp )             //  4-byte Folded Reload
	bltu x24, x25, .LBB1_340
.LBB1_338:                              //  %if.then1100.us
                                        //    in Loop: Header=BB1_327 Depth=2
	sll x11, x25, 3&31
	jal realloc
	beq x0, x10, .LBB1_438
.LBB1_339:                              //  %if.end1106.us
                                        //    in Loop: Header=BB1_327 Depth=2
	sll x11, x24, 2&31
	lw x24, -408 ( fp )             //  4-byte Folded Reload
	sll x25, x25, 1&31
	sw x10, 0 ( x27 )
	sw x10, -400 ( fp )             //  4-byte Folded Spill
	add x10, x11, x10
	sw x25, -404 ( fp )             //  4-byte Folded Spill
	mv x25, x10
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_343
	jal x0, .LBB1_342
.LBB1_340:                              //    in Loop: Header=BB1_327 Depth=2
	lw x24, -408 ( fp )             //  4-byte Folded Reload
	mv x25, x11
.LBB1_341:                              //  %if.end1116.us
                                        //    in Loop: Header=BB1_327 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_343
.LBB1_342:                              //  %land.lhs.true1120.us
                                        //    in Loop: Header=BB1_327 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	bltu x0, x10, .LBB1_398
.LBB1_343:                              //  %if.end1128.us
                                        //    in Loop: Header=BB1_327 Depth=2
	beq x0, x23, .LBB1_399
.LBB1_344:                              //  %if.end1128.us
                                        //    in Loop: Header=BB1_327 Depth=2
	lw x10, 0 ( x18 )
	lbu x10, 0 ( x10 )
	add x10, x10, x22
	lbu x10, 1 ( x10 )
	and x10, x10, 8
	beq x0, x10, .LBB1_327
	jal x0, .LBB1_399
.LBB1_345:                              //  %while.body1027
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	jal __locale_mb_cur_max
	beq x26, x10, .LBB1_426
.LBB1_346:                              //  %if.end1032
                                        //    in Loop: Header=BB1_345 Depth=2
	lw x10, 4 ( x18 )
	lw x11, 0 ( x18 )
	add x10, x10, -1
	lb x12, 0 ( x11 )
	sw x10, 4 ( x18 )
	add x10, x11, 1
	sw x10, 0 ( x18 )
	add x10, fp, -368
	add x10, x26, x10
	sb x12, 0 ( x10 )
	lw x10, -384 ( fp )             //  4-byte Folded Reload
	add x26, x26, 1
	xor x10, x10, 3
	bltu x0, x10, .LBB1_348
.LBB1_347:                              //  %if.end1032
                                        //    in Loop: Header=BB1_345 Depth=2
	lw x10, -60 ( fp )
	xor x10, x10, 4
	beq x0, x10, .LBB1_349
.LBB1_348:                              //  %if.then1046
                                        //    in Loop: Header=BB1_345 Depth=2
	add x10, fp, -60
	mv x11, x0
	add x12, x0, 8
	jal memset
.LBB1_349:                              //  %if.end1048
                                        //    in Loop: Header=BB1_345 Depth=2
	add x12, fp, -368
	add x14, fp, -60
	mv x10, x19
	mv x11, x25
	mv x13, x26
	jal _mbrtowc_r
	xor x11, x10, -2
	sw x10, -384 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB1_355
.LBB1_350:                              //  %if.end1048
                                        //    in Loop: Header=BB1_345 Depth=2
	beq x0, x10, .LBB1_353
.LBB1_351:                              //  %if.end1048
                                        //    in Loop: Header=BB1_345 Depth=2
	xor x10, x10, -1
	beq x0, x10, .LBB1_426
.LBB1_352:                              //  %if.end1048.if.then1061_crit_edge
                                        //    in Loop: Header=BB1_345 Depth=2
	lw x10, 0 ( x25 )
	jal iswspace
	beq x0, x10, .LBB1_354
	jal x0, .LBB1_387
.LBB1_353:                              //  %if.then1057
                                        //    in Loop: Header=BB1_345 Depth=2
	mv x10, x0
	sw x0, 0 ( x25 )
	jal iswspace
	bltu x0, x10, .LBB1_387
.LBB1_354:                              //  %if.end1074
                                        //    in Loop: Header=BB1_345 Depth=2
	lw x10, -384 ( fp )             //  4-byte Folded Reload
	lw x11, -60 ( fp )
	add x20, x20, x26
	mv x26, x0
	xor x10, x10, 3
	xor x11, x11, 4
	snez x10, x10
	snez x11, x11
	or x10, x10, x11
	sub x23, x23, x10
.LBB1_355:                              //  %if.end1116
                                        //    in Loop: Header=BB1_345 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_357
.LBB1_356:                              //  %land.lhs.true1120
                                        //    in Loop: Header=BB1_345 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	bltu x0, x10, .LBB1_398
.LBB1_357:                              //  %if.end1128
                                        //    in Loop: Header=BB1_345 Depth=2
	beq x0, x23, .LBB1_399
.LBB1_358:                              //  %if.end1128
                                        //    in Loop: Header=BB1_345 Depth=2
	lw x10, 0 ( x18 )
	lbu x10, 0 ( x10 )
	add x10, x10, x22
	lbu x10, 1 ( x10 )
	and x10, x10, 8
	beq x0, x10, .LBB1_345
	jal x0, .LBB1_399
.LBB1_359:                              //  %while.body862.us.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x25, x0
	add x23, x23, -1
	jal x0, .LBB1_361
.LBB1_360:                              //  %if.end908.us
                                        //    in Loop: Header=BB1_361 Depth=2
	lw x10, 0 ( x18 )
	add x14, fp, -328
	add x25, x25, 1
	lbu x11, 0 ( x10 )
	add x11, x11, x14
	lbu x11, 0 ( x11 )
	beq x0, x11, .LBB1_366
.LBB1_361:                              //  %while.body862.us
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x11, x10, 1
	sw x11, 0 ( x18 )
	lw x11, 4 ( x18 )
	add x27, x25, x13
	add x11, x11, -1
	sw x11, 4 ( x18 )
	lb x10, 0 ( x10 )
	sb x10, 0 ( x27 )
	beq x23, x25, .LBB1_366
.LBB1_362:                              //  %if.end896.us
                                        //    in Loop: Header=BB1_361 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_360
.LBB1_363:                              //  %land.lhs.true900.us
                                        //    in Loop: Header=BB1_361 Depth=2
	mv x10, x19
	mv x11, x18
	mv x24, x12
	mv x26, x13
	jal __srefill_r
	mv x13, x26
	mv x12, x24
	beq x0, x10, .LBB1_360
.LBB1_364:                              //  %if.then903.loopexit
                                        //    in Loop: Header=BB1_4 Depth=1
	add x25, x27, 1
	mv x27, x0
.LBB1_365:                              //  %if.then903
                                        //    in Loop: Header=BB1_4 Depth=1
	bne x25, x13, .LBB1_367
	jal x0, .LBB1_426
.LBB1_366:                              //  %while.end909.loopexit
                                        //    in Loop: Header=BB1_4 Depth=1
	add x25, x27, 1
	mv x27, x0
.LBB1_367:                              //  %while.end909
                                        //    in Loop: Header=BB1_4 Depth=1
	sub x23, x25, x13
	beq x0, x23, .LBB1_440
.LBB1_368:                              //  %if.end916
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x26, -396 ( fp )             //  4-byte Folded Reload
	lw x24, -400 ( fp )             //  4-byte Folded Reload
	sb x0, 0 ( x25 )
	beq x0, x24, .LBB1_372
.LBB1_369:                              //  %if.end916
                                        //    in Loop: Header=BB1_4 Depth=1
	add x11, x23, 1
	bgeu x11, x12, .LBB1_372
.LBB1_370:                              //  %if.then923
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x24 )
	jal realloc
	beq x0, x10, .LBB1_372
.LBB1_371:                              //  %if.then928
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10, 0 ( x24 )
.LBB1_372:                              //  %cleanup933.thread2354
                                        //    in Loop: Header=BB1_4 Depth=1
	add x20, x20, x23
	add x26, x26, 1
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_482
.LBB1_483:                              //  %cleanup933.thread2354
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_482:                              //  %cleanup933.thread2354
	jal x0, .LBB1_430
.LBB1_373:                              //  %while.body1264.us.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	mv x27, x0
	add x23, x23, -1
	jal x0, .LBB1_375
.LBB1_374:                              //  %if.end1306.us
                                        //    in Loop: Header=BB1_375 Depth=2
	lw x10, 0 ( x18 )
	add x27, x27, 1
	lbu x11, 0 ( x10 )
	add x11, x11, x22
	lbu x11, 1 ( x11 )
	and x11, x11, 8
	bltu x0, x11, .LBB1_378
.LBB1_375:                              //  %while.body1264.us
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x11, x10, 1
	sw x11, 0 ( x18 )
	lw x11, 4 ( x18 )
	add x26, x27, x25
	add x11, x11, -1
	sw x11, 4 ( x18 )
	lb x10, 0 ( x10 )
	sb x10, 0 ( x26 )
	beq x23, x27, .LBB1_378
.LBB1_376:                              //  %if.end1298.us
                                        //    in Loop: Header=BB1_375 Depth=2
	lw x10, 4 ( x18 )
	blt x0, x10, .LBB1_374
.LBB1_377:                              //  %land.lhs.true1302.us
                                        //    in Loop: Header=BB1_375 Depth=2
	mv x10, x19
	mv x11, x18
	jal __srefill_r
	beq x0, x10, .LBB1_374
.LBB1_378:                              //  %while.end1307.loopexit
                                        //    in Loop: Header=BB1_4 Depth=1
	add x27, x26, 1
.LBB1_379:                              //  %while.end1307
                                        //    in Loop: Header=BB1_4 Depth=1
	sub x23, x27, x25
	lw x25, -400 ( fp )             //  4-byte Folded Reload
	sb x0, 0 ( x27 )
	beq x0, x25, .LBB1_383
.LBB1_380:                              //  %while.end1307
                                        //    in Loop: Header=BB1_4 Depth=1
	add x11, x23, 1
	bgeu x11, x24, .LBB1_383
.LBB1_381:                              //  %if.then1317
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x25 )
	jal realloc
	beq x0, x10, .LBB1_383
.LBB1_382:                              //  %if.then1322
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10, 0 ( x25 )
.LBB1_383:                              //  %cleanup1330
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x26, -396 ( fp )             //  4-byte Folded Reload
	add x20, x20, x23
.LBB1_384:                              //  %if.end1335
                                        //    in Loop: Header=BB1_4 Depth=1
	add x26, x26, 1
	mv x27, x0
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_484
.LBB1_485:                              //  %if.end1335
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_484:                              //  %if.end1335
	jal x0, .LBB1_430
.LBB1_385:                              //    in Loop: Header=BB1_4 Depth=1
	lw x26, -396 ( fp )             //  4-byte Folded Reload
	mv x10, x0
	mv x12, x10
	sw x10, -400 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_390
.LBB1_386:                              //  %if.then180
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sh x20, 0 ( x10 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_486
.LBB1_487:                              //  %if.then180
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_486:                              //  %if.then180
	jal x0, .LBB1_430
.LBB1_387:                              //  %while.cond1065.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x23, fp, -369
	beq x0, x26, .LBB1_399
.LBB1_388:                              //  %while.body1068
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x26, x23
	lbu x11, 0 ( x10 )
	mv x10, x19
	mv x12, x18
	jal _ungetc_r
	add x26, x26, -1
	bltu x0, x26, .LBB1_388
	jal x0, .LBB1_399
.LBB1_389:                              //    in Loop: Header=BB1_4 Depth=1
	lw x10, -412 ( fp )             //  4-byte Folded Reload
	mv x27, x0
.LBB1_390:                              //  %while.cond661.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x23, fp, -369
	sw x10, -412 ( fp )             //  4-byte Folded Spill
	sw x12, -408 ( fp )             //  4-byte Folded Spill
	sw x11, -384 ( fp )             //  4-byte Folded Spill
	beq x0, x24, .LBB1_392
.LBB1_391:                              //  %while.body664
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x24, x23
	lbu x11, 0 ( x10 )
	mv x10, x19
	mv x12, x18
	jal _ungetc_r
	add x24, x24, -1
	bltu x0, x24, .LBB1_391
.LBB1_392:                              //  %while.end725
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -416 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_393
.LBB1_488:                              //  %while.end725
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_43
.LBB1_393:                              //  %if.then728
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -400 ( fp )             //  4-byte Folded Reload
	sw x0, 0 ( x25 )
	beq x0, x10, .LBB1_397
.LBB1_394:                              //  %if.then728
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -408 ( fp )             //  4-byte Folded Reload
	sub x10, x25, x10
	sra x10, x10, 2&31
	add x11, x10, 1
	lw x10, -412 ( fp )             //  4-byte Folded Reload
	bgeu x11, x10, .LBB1_397
.LBB1_395:                              //  %if.then739
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -400 ( fp )             //  4-byte Folded Reload
	sll x11, x11, 2&31
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB1_397
.LBB1_396:                              //  %if.then744
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x11, -400 ( fp )             //  4-byte Folded Reload
	sw x10, 0 ( x11 )
.LBB1_397:                              //  %if.end746
                                        //    in Loop: Header=BB1_4 Depth=1
	add x26, x26, 1
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_489
.LBB1_490:                              //  %if.end746
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_489:                              //  %if.end746
	jal x0, .LBB1_430
.LBB1_398:                              //  %if.then1123
                                        //    in Loop: Header=BB1_4 Depth=1
	bltu x0, x26, .LBB1_426
.LBB1_399:                              //  %while.end1129
                                        //    in Loop: Header=BB1_4 Depth=1
	beq x0, x24, .LBB1_401
.LBB1_400:                              //    in Loop: Header=BB1_4 Depth=1
	lw x26, -396 ( fp )             //  4-byte Folded Reload
	mv x27, x0
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_491
.LBB1_492:                              //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_491:
	jal x0, .LBB1_430
.LBB1_401:                              //  %if.then1132
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x26, -396 ( fp )             //  4-byte Folded Reload
	sw x0, 0 ( x25 )
	beq x0, x27, .LBB1_384
.LBB1_402:                              //  %if.then1132
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -400 ( fp )             //  4-byte Folded Reload
	sub x10, x25, x10
	sra x10, x10, 2&31
	add x11, x10, 1
	lw x10, -404 ( fp )             //  4-byte Folded Reload
	bgeu x11, x10, .LBB1_384
.LBB1_403:                              //  %if.then1143
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, 0 ( x27 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_384
.LBB1_404:                              //  %if.then1148
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10, 0 ( x27 )
	jal x0, .LBB1_384
.LBB1_405:                              //  %for.end1422.loopexit.split.loop.exit
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x12, -388 ( fp )             //  4-byte Folded Spill
	add x27, x26, x24
	and x10, x25, 256
	beq x0, x10, .LBB1_166
	jal x0, .LBB1_406
.LBB1_420:                              //  %if.then1470
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x11, -392 ( fp )             //  4-byte Folded Reload
	lui x10, %hi( _strtoul_r )
	add x10, x10, %lo( _strtoul_r )
	beq x11, x10, .LBB1_423
.LBB1_421:                              //  %if.else1476
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x13, -388 ( fp )             //  4-byte Folded Reload
	add x11, fp, -368
	mv x12, x0
	mv x10, x19
	jal _strtoll_r
	jal x0, .LBB1_424
.LBB1_422:                              //  %if.then191
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10, -68 ( fp )
	add x11, x10, 4
	sw x11, -68 ( fp )
	lw x10, 0 ( x10 )
	sra x11, x20, 31&31
	sw x11, 4 ( x10 )
	sw x20, 0 ( x10 )
	lbu x10, 0 ( x21 )
	sw x10, -72 ( fp )
	beq x0, x10, .LBB1_493
.LBB1_494:                              //  %if.then191
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_493:                              //  %if.then191
	jal x0, .LBB1_430
.LBB1_423:                              //  %if.then1473
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x13, -388 ( fp )             //  4-byte Folded Reload
	add x11, fp, -368
	mv x12, x0
	mv x10, x19
	jal _strtoull_r
.LBB1_424:                              //  %if.end1479
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x12, -68 ( fp )
	add x13, x12, 4
	sw x13, -68 ( fp )
	lw x12, 0 ( x12 )
	sw x11, 4 ( x12 )
	sw x10, 0 ( x12 )
	jal x0, .LBB1_418
.LBB1_425:
	mv x26, x0
	jal x0, .LBB1_437
.LBB1_426:                              //  %cleanup1153.thread2378
	lw x26, -396 ( fp )             //  4-byte Folded Reload
.LBB1_427:                              //  %input_failure
	beq x0, x26, .LBB1_429
.LBB1_428:                              //  %land.lhs.true1501
	lbu x10, 12 ( x18 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB1_430
.LBB1_429:                              //  %land.lhs.true1501
	add x26, x0, -1
.LBB1_430:                              //  %all_done
	beq x0, x9, .LBB1_437
.LBB1_431:                              //  %if.then1523
	xor x10, x26, -1
	bltu x0, x10, .LBB1_435
.LBB1_432:                              //  %for.cond1527.preheader
	lhu x10, 6 ( x9 )
	add x26, x0, -1
	beq x0, x10, .LBB1_435
.LBB1_433:                              //  %for.body1532.lr.ph
	mv x18, x0
	mv x19, x18
.LBB1_434:                              //  %for.body1532
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x9 )
	add x10, x18, x10
	lw x10, 0 ( x10 )
	lw x10, 0 ( x10 )
	jal free
	lw x10, 0 ( x9 )
	add x19, x19, 1
	add x10, x18, x10
	lw x10, 0 ( x10 )
	add x18, x18, 4
	sw x0, 0 ( x10 )
	lhu x10, 6 ( x9 )
	bltu x19, x10, .LBB1_434
.LBB1_435:                              //  %if.end1540
	lw x10, 0 ( x9 )
	beq x0, x10, .LBB1_437
.LBB1_436:                              //  %if.then1543
	jal free
.LBB1_437:                              //  %cleanup1549
	mv x10, x26
	lw x27, -48 ( fp )              //  4-byte Folded Reload
	lw x26, -44 ( fp )              //  4-byte Folded Reload
	lw x25, -40 ( fp )              //  4-byte Folded Reload
	lw x24, -36 ( fp )              //  4-byte Folded Reload
	lw x23, -32 ( fp )              //  4-byte Folded Reload
	lw x22, -28 ( fp )              //  4-byte Folded Reload
	lw x21, -24 ( fp )              //  4-byte Folded Reload
	lw x20, -20 ( fp )              //  4-byte Folded Reload
	lw x19, -16 ( fp )              //  4-byte Folded Reload
	lw x18, -12 ( fp )              //  4-byte Folded Reload
	lw x9, -8 ( fp )                //  4-byte Folded Reload
	lw ra, -4 ( fp )                //  4-byte Folded Reload
	mv sp, fp
	lw fp, 0 ( sp )
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_438:
	add x25, x0, -1
.LBB1_439:                              //  %cleanup1153.thread
	mv x26, x25
	bltu x0, x9, .LBB1_431
	jal x0, .LBB1_437
.LBB1_442:
	mv x25, x26
	mv x26, x25
	bltu x0, x9, .LBB1_431
	jal x0, .LBB1_437
.LBB1_440:
	lw x26, -396 ( fp )             //  4-byte Folded Reload
	bltu x0, x9, .LBB1_431
	jal x0, .LBB1_437
.Lfunc_end1:
	.size	__svfiscanf_r, .Lfunc_end1-__svfiscanf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_39
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_21
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_45
	.long	.LBB1_47
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_18
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_48
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_50
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_44
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_51
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_46
	.long	.LBB1_52
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_23
	.long	.LBB1_53
	.long	.LBB1_18
	.long	.LBB1_430
	.long	.LBB1_26
	.long	.LBB1_30
	.long	.LBB1_55
	.long	.LBB1_61
	.long	.LBB1_62
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_63
	.long	.LBB1_13
	.long	.LBB1_64
	.long	.LBB1_430
	.long	.LBB1_430
	.long	.LBB1_44
	.long	.LBB1_430
	.long	.LBB1_13
JTI1_1:
	.long	.LBB1_75
	.long	.LBB1_81
	.long	.LBB1_87
	.long	.LBB1_93
JTI1_2:
	.long	.LBB1_149
	.long	.LBB1_165
	.long	.LBB1_149
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_155
	.long	.LBB1_148
	.long	.LBB1_148
	.long	.LBB1_148
	.long	.LBB1_148
	.long	.LBB1_148
	.long	.LBB1_148
	.long	.LBB1_148
	.long	.LBB1_151
	.long	.LBB1_151
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_146
	.long	.LBB1_146
	.long	.LBB1_146
	.long	.LBB1_146
	.long	.LBB1_146
	.long	.LBB1_146
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_153
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_146
	.long	.LBB1_146
	.long	.LBB1_146
	.long	.LBB1_146
	.long	.LBB1_146
	.long	.LBB1_146
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_165
	.long	.LBB1_153
                                        //  -- End function
	.text
	.globl	__svfiscanf             //  -- Begin function __svfiscanf
	.type	__svfiscanf,@function
__svfiscanf:                            //  @__svfiscanf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x13, x12
	mv x12, x11
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	j __svfiscanf_r
.Lfunc_end2:
	.size	__svfiscanf, .Lfunc_end2-__svfiscanf
	.cfi_endproc
                                        //  -- End function
	.globl	_vfiscanf_r             //  -- Begin function _vfiscanf_r
	.type	_vfiscanf_r,@function
_vfiscanf_r:                            //  @_vfiscanf_r
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
	sw x19, 16 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw fp, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -20
	mv fp, x13
	mv x9, x12
	mv x18, x11
	mv x19, x10
	sw ra, 28 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x19, .LBB3_3
.LBB3_1:                                //  %land.lhs.true
	lw x10, 56 ( x19 )
	bltu x0, x10, .LBB3_3
.LBB3_2:                                //  %if.then
	mv x10, x19
	jal __sinit
.LBB3_3:                                //  %if.end
	mv x10, x19
	mv x11, x18
	mv x12, x9
	mv x13, fp
	lw fp, 12 ( sp )                //  4-byte Folded Reload
	lw x19, 16 ( sp )               //  4-byte Folded Reload
	lw x18, 20 ( sp )               //  4-byte Folded Reload
	lw x9, 24 ( sp )                //  4-byte Folded Reload
	lw ra, 28 ( sp )                //  4-byte Folded Reload
	add sp, sp, 32
	.cfi_def_cfa 2, 0
	j __svfiscanf_r
.Lfunc_end3:
	.size	_vfiscanf_r, .Lfunc_end3-_vfiscanf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	__svfiscanf_r.basefix,@object //  @__svfiscanf_r.basefix
	.section	.rodata,"a",@progbits
	.p2align	1
__svfiscanf_r.basefix:
	.short	10                      //  0xa
	.short	1                       //  0x1
	.short	2                       //  0x2
	.short	3                       //  0x3
	.short	4                       //  0x4
	.short	5                       //  0x5
	.short	6                       //  0x6
	.short	7                       //  0x7
	.short	8                       //  0x8
	.short	9                       //  0x9
	.short	10                      //  0xa
	.short	11                      //  0xb
	.short	12                      //  0xc
	.short	13                      //  0xd
	.short	14                      //  0xe
	.short	15                      //  0xf
	.short	16                      //  0x10
	.size	__svfiscanf_r.basefix, 34

	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
