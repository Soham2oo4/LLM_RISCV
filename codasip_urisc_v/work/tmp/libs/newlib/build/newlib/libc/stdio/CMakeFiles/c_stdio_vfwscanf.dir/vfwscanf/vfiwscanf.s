	.text
	.file	"vfiwscanf.c"
	.globl	vfiwscanf               //  -- Begin function vfiwscanf
	.type	vfiwscanf,@function
vfiwscanf:                              //  @vfiwscanf
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
	j __svfiwscanf_r
.Lfunc_end0:
	.size	vfiwscanf, .Lfunc_end0-vfiwscanf
	.cfi_endproc
                                        //  -- End function
	.globl	__svfiwscanf_r          //  -- Begin function __svfiwscanf_r
	.type	__svfiwscanf_r,@function
__svfiwscanf_r:                         //  @__svfiwscanf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -320
	.cfi_adjust_cfa_offset 320
	sw fp, 304 ( sp )
	.cfi_offset 8, -16
	add fp, sp, 304
	.cfi_def_cfa 8, 16
	sw x18, -12 ( fp )              //  4-byte Folded Spill
	.cfi_offset 18, -28
	mv x18, x11
	lhu x11, 12 ( x18 )
	sw x19, -16 ( fp )              //  4-byte Folded Spill
	.cfi_offset 19, -32
	mv x19, x10
	lui x10, (8192>>12)&1048575
	sw x27, -48 ( fp )              //  4-byte Folded Spill
	.cfi_offset 27, -64
	mv x27, x12
	and x12, x10, x11
	sw ra, -4 ( fp )                //  4-byte Folded Spill
	.cfi_offset 1, -20
	sw x9, -8 ( fp )                //  4-byte Folded Spill
	.cfi_offset 9, -24
	sw x20, -20 ( fp )              //  4-byte Folded Spill
	.cfi_offset 20, -36
	sw x21, -24 ( fp )              //  4-byte Folded Spill
	.cfi_offset 21, -40
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
	sw x13, -56 ( fp )
	bltu x0, x12, .LBB1_2
.LBB1_1:                                //  %if.then7
	or x11, x10, x11
	sh x11, 12 ( x18 )
	lw x11, 100 ( x18 )
	or x10, x10, x11
	sw x10, 100 ( x18 )
.LBB1_2:                                //  %do.end
	lw x21, 0 ( x27 )
	beq x0, x21, .LBB1_4
.LBB1_3:                                //  %if.end16.lr.ph.lr.ph.lr.ph.lr.ph.lr.ph
	lui x10, %hi( JTI1_0 )
	add x9, x10, %lo( JTI1_0 )
	lui x10, %hi( JTI1_1 )
	add x10, x10, %lo( JTI1_1 )
	sw x10, -248 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( 65534 )
	add x10, x10, %lo( 65534 )
	sw x10, -280 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _wcstoul_r )
	add x10, x10, %lo( _wcstoul_r )
	sw x10, -260 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( JTI1_2 )
	add x10, x10, %lo( JTI1_2 )
	sw x10, -240 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( -65665 )
	add x10, x10, %lo( -65665 )
	sw x10, -276 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( __svfiwscanf_r.basefix )
	add x10, x10, %lo( __svfiwscanf_r.basefix )
	mv x11, x0
	sw x10, -256 ( fp )             //  4-byte Folded Spill
	lui x10, %hi( _wcstol_r )
	add x10, x10, %lo( _wcstol_r )
	mv x20, x11
	add x25, x0, -1
	mv x26, x11
	mv x22, x11
	sw x10, -272 ( fp )             //  4-byte Folded Spill
	sw x11, -236 ( fp )             //  4-byte Folded Spill
	sw x11, -232 ( fp )             //  4-byte Folded Spill
	sw x11, -252 ( fp )             //  4-byte Folded Spill
	sw x11, -244 ( fp )             //  4-byte Folded Spill
	sw x11, -268 ( fp )             //  4-byte Folded Spill
	sw x11, -264 ( fp )             //  4-byte Folded Spill
	mv x10, x21
	add x27, x27, 4
	jal iswspace
	bltu x0, x10, .LBB1_8
	jal x0, .LBB1_11
.LBB1_4:
	mv x26, x0
	jal x0, .LBB1_410
.LBB1_5:                                //  %if.then926
	mv x10, x19
	mv x11, x21
	mv x12, x18
	jal _ungetwc_r
	add x25, x0, -1
.LBB1_6:                                //  %if.end28
	lw x21, 0 ( x27 )
	bltu x0, x21, .LBB1_7
.LBB1_419:                              //  %if.end28
	jal x0, .LBB1_403
.LBB1_7:                                //  %if.end16
	mv x10, x21
	add x27, x27, 4
	jal iswspace
	beq x0, x10, .LBB1_11
.LBB1_8:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x21, x10
	xor x10, x21, -1
	beq x0, x10, .LBB1_6
.LBB1_9:                                //  %land.rhs
                                        //    in Loop: Header=BB1_8 Depth=1
	mv x10, x21
	jal iswspace
	bltu x0, x10, .LBB1_8
.LBB1_10:                               //  %if.then26
	mv x10, x19
	mv x11, x21
	mv x12, x18
	jal _ungetwc_r
	lw x21, 0 ( x27 )
	bltu x0, x21, .LBB1_7
	jal x0, .LBB1_403
.LBB1_11:                               //  %if.end29
	xor x10, x21, 37
	mv x13, x0
	add x12, x0, 85
	add x14, x0, 10
	bltu x0, x10, .LBB1_38
.LBB1_12:                               //  %again.preheader
	mv x24, x13
	mv x23, x13
.LBB1_13:                               //  %again
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_14 Depth 2
                                        //        Child Loop BB1_15 Depth 3
	mv x10, x27
.LBB1_14:                               //  %again
                                        //    Parent Loop BB1_13 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_15 Depth 3
	lw x21, 0 ( x10 )
	add x11, x21, -37
	bgeu x12, x11, .LBB1_15
.LBB1_420:                              //  %again
	jal x0, .LBB1_403
.LBB1_15:                               //  %again
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_14 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sll x11, x11, 2&31
	add x11, x9, x11
	lw x11, 0 ( x11 )
	add x27, x10, 4
	jr x11
.LBB1_16:                               //  %sw.bb94
                                        //    in Loop: Header=BB1_14 Depth=2
	and x11, x23, 15
	mv x10, x27
	beq x0, x11, .LBB1_14
	jal x0, .LBB1_403
.LBB1_17:                               //  %sw.bb70
                                        //    in Loop: Header=BB1_15 Depth=3
	and x11, x23, 15
	beq x0, x11, .LBB1_18
.LBB1_421:                              //  %sw.bb70
	jal x0, .LBB1_403
.LBB1_18:                               //  %if.end74
                                        //    in Loop: Header=BB1_15 Depth=3
	lw x11, 4 ( x10 )
	add x15, x0, 104
	beq x11, x15, .LBB1_24
.LBB1_19:                               //  %if.end74
                                        //    in Loop: Header=BB1_15 Depth=3
	add x11, x0, 4
	jal x0, .LBB1_23
.LBB1_20:                               //  %sw.bb52
                                        //    in Loop: Header=BB1_15 Depth=3
	and x11, x23, 15
	beq x0, x11, .LBB1_21
.LBB1_422:                              //  %sw.bb52
	jal x0, .LBB1_403
.LBB1_21:                               //  %if.end56
                                        //    in Loop: Header=BB1_15 Depth=3
	lw x11, 4 ( x10 )
	add x15, x0, 108
	beq x11, x15, .LBB1_25
.LBB1_22:                               //  %if.end56
                                        //    in Loop: Header=BB1_15 Depth=3
	seqz x11, x0
.LBB1_23:                               //  %if.end56
                                        //    in Loop: Header=BB1_15 Depth=3
	mv x10, x27
	or x23, x23, x11
	lw x21, 0 ( x10 )
	add x11, x21, -37
	bgeu x12, x11, .LBB1_15
	jal x0, .LBB1_403
.LBB1_24:                               //    in Loop: Header=BB1_15 Depth=3
	add x11, x0, 8
	jal x0, .LBB1_26
.LBB1_25:                               //    in Loop: Header=BB1_15 Depth=3
	add x11, x0, 2
.LBB1_26:                               //    in Loop: Header=BB1_15 Depth=3
	add x10, x10, 8
	or x23, x23, x11
	lw x21, 0 ( x10 )
	add x11, x21, -37
	bgeu x12, x11, .LBB1_15
	jal x0, .LBB1_403
.LBB1_27:                               //  %sw.bb111
                                        //    in Loop: Header=BB1_13 Depth=1
	and x10, x23, 143
	beq x0, x10, .LBB1_28
.LBB1_423:                              //  %sw.bb111
	jal x0, .LBB1_403
.LBB1_28:                               //  %if.end115
                                        //    in Loop: Header=BB1_13 Depth=1
	hackaton_custom_instr_c x10, x14, x24
	add x10, x21, x10
	add x24, x10, -48
	jal x0, .LBB1_13
.LBB1_29:                               //  %sw.bb64
                                        //    in Loop: Header=BB1_13 Depth=1
	and x10, x23, 15
	beq x0, x10, .LBB1_30
.LBB1_424:                              //  %sw.bb64
	jal x0, .LBB1_403
.LBB1_30:                               //  %if.end68
                                        //    in Loop: Header=BB1_13 Depth=1
	or x23, x23, 2
	jal x0, .LBB1_13
.LBB1_31:                               //  %sw.bb45
                                        //    in Loop: Header=BB1_13 Depth=1
	and x10, x23, 159
	or x10, x24, x10
	beq x0, x10, .LBB1_32
.LBB1_425:                              //  %sw.bb45
	jal x0, .LBB1_403
.LBB1_32:                               //  %if.end50
                                        //    in Loop: Header=BB1_13 Depth=1
	or x23, x23, 16
	mv x24, x13
	jal x0, .LBB1_13
.LBB1_33:                               //  %sw.bb99
                                        //    in Loop: Header=BB1_13 Depth=1
	and x10, x23, 143
	beq x0, x10, .LBB1_34
.LBB1_426:                              //  %sw.bb99
	jal x0, .LBB1_403
.LBB1_34:                               //  %do.body104
                                        //    in Loop: Header=BB1_13 Depth=1
	bltu x0, x20, .LBB1_36
.LBB1_35:                               //  %if.then106
                                        //    in Loop: Header=BB1_13 Depth=1
	mv x10, sp
	add x20, x10, -16
	mv sp, x20
	sw x0, -12 ( x10 )
	sw x0, -16 ( x10 )
.LBB1_36:                               //  %do.end109
                                        //    in Loop: Header=BB1_13 Depth=1
	or x23, x23, 128
	jal x0, .LBB1_13
.LBB1_37:                               //  %sw.bb120
	or x23, x23, 512
	jal x0, .LBB1_56
.LBB1_38:                               //  %literal
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x11, x10
	xor x10, x11, -1
	bltu x0, x10, .LBB1_39
.LBB1_427:                              //  %literal
	jal x0, .LBB1_398
.LBB1_39:                               //  %if.end39
	beq x11, x21, .LBB1_40
.LBB1_428:                              //  %if.end39
	jal x0, .LBB1_413
.LBB1_40:                               //  %if.end44
	add x22, x22, 1
	lw x21, 0 ( x27 )
	bltu x0, x21, .LBB1_7
	jal x0, .LBB1_403
.LBB1_41:                               //  %sw.bb149
	or x23, x23, 1
.LBB1_42:                               //  %sw.bb151
	or x23, x23, 64
	mv x25, x13
	and x10, x23, 64
	beq x0, x10, .LBB1_67
	jal x0, .LBB1_71
.LBB1_43:                               //  %sw.bb122
	or x23, x23, 1
	add x25, x0, 2
	and x10, x23, 64
	beq x0, x10, .LBB1_67
	jal x0, .LBB1_71
.LBB1_44:                               //  %sw.bb125
	lw x11, 4 ( x10 )
	add x12, x0, 94
	beq x11, x12, .LBB1_60
.LBB1_45:                               //  %sw.bb125
	add x12, x0, 4
	sw x27, -244 ( fp )             //  4-byte Folded Spill
	add x10, x12, x10
	lw x10, 0 ( x10 )
	add x12, x0, 93
	beq x10, x12, .LBB1_62
.LBB1_61:                               //  %sw.bb125
	lw x27, -244 ( fp )             //  4-byte Folded Reload
	jal x0, .LBB1_63
.LBB1_46:                               //  %sw.epilog.loopexit
	lw x10, -272 ( fp )             //  4-byte Folded Reload
	jal x0, .LBB1_59
.LBB1_47:                               //  %sw.epilog.loopexit3083
	lw x10, -272 ( fp )             //  4-byte Folded Reload
	sw x13, -232 ( fp )             //  4-byte Folded Spill
	sw x10, -252 ( fp )             //  4-byte Folded Spill
	add x25, x0, 3
	and x10, x23, 64
	beq x0, x10, .LBB1_67
	jal x0, .LBB1_71
.LBB1_48:                               //  %sw.bb155
	and x10, x23, 16
	bltu x0, x10, .LBB1_6
.LBB1_49:                               //  %if.end159
	and x10, x23, 8
	bltu x0, x10, .LBB1_181
.LBB1_50:                               //  %if.else164
	and x10, x23, 4
	bltu x0, x10, .LBB1_272
.LBB1_51:                               //  %if.else170
	and x10, x23, 1
	bltu x0, x10, .LBB1_53
.LBB1_52:                               //  %if.else175
	and x10, x23, 2
	beq x0, x10, .LBB1_53
.LBB1_429:                              //  %if.else175
	jal x0, .LBB1_379
.LBB1_53:                               //  %if.then173
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x22, 0 ( x10 )
	lw x21, 0 ( x27 )
	bltu x0, x21, .LBB1_7
	jal x0, .LBB1_403
.LBB1_54:                               //  %sw.epilog.loopexit3673
	lw x10, -260 ( fp )             //  4-byte Folded Reload
	sw x10, -252 ( fp )             //  4-byte Folded Spill
	add x10, x0, 8
	sw x10, -232 ( fp )             //  4-byte Folded Spill
	add x25, x0, 3
	and x10, x23, 64
	beq x0, x10, .LBB1_67
	jal x0, .LBB1_71
.LBB1_55:                               //  %sw.bb153
	or x23, x23, 544
.LBB1_56:                               //  %sw.epilog
	lw x10, -260 ( fp )             //  4-byte Folded Reload
	sw x10, -252 ( fp )             //  4-byte Folded Spill
	add x10, x0, 16
	sw x10, -232 ( fp )             //  4-byte Folded Spill
	add x25, x0, 3
	and x10, x23, 64
	beq x0, x10, .LBB1_67
	jal x0, .LBB1_71
.LBB1_57:                               //  %sw.epilog.loopexit4683
	add x25, x0, 2
	and x10, x23, 64
	beq x0, x10, .LBB1_67
	jal x0, .LBB1_71
.LBB1_58:                               //  %sw.epilog.loopexit4176
	lw x10, -260 ( fp )             //  4-byte Folded Reload
.LBB1_59:                               //  %sw.epilog
	sw x10, -252 ( fp )             //  4-byte Folded Spill
	sw x14, -232 ( fp )             //  4-byte Folded Spill
	add x25, x0, 3
	and x10, x23, 64
	beq x0, x10, .LBB1_67
	jal x0, .LBB1_71
.LBB1_60:
	add x12, x10, 8
	sw x12, -244 ( fp )             //  4-byte Folded Spill
	add x12, x0, 8
	add x10, x12, x10
	lw x10, 0 ( x10 )
	add x12, x0, 93
	bne x10, x12, .LBB1_61
.LBB1_62:
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	add x27, x10, 4
.LBB1_63:                               //  %sw.bb125
	xor x10, x11, 94
	seqz x10, x10
	sw x10, -264 ( fp )             //  4-byte Folded Spill
.LBB1_64:                               //  %while.cond137
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x27 )
	add x27, x27, 4
	xor x11, x10, 93
	beq x0, x11, .LBB1_66
.LBB1_65:                               //  %while.cond137
                                        //    in Loop: Header=BB1_64 Depth=1
	bltu x0, x10, .LBB1_64
.LBB1_66:                               //  %while.end146
	add x10, x27, -4
	sw x10, -268 ( fp )             //  4-byte Folded Spill
	or x23, x23, 64
	seqz x25, x0
	and x10, x23, 64
	bltu x0, x10, .LBB1_71
.LBB1_67:                               //  %while.cond191.preheader
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x21, x10
	xor x10, x21, -1
	bltu x0, x10, .LBB1_68
.LBB1_430:                              //  %while.cond191.preheader
	jal x0, .LBB1_397
.LBB1_68:                               //  %land.rhs195
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x21
	jal iswspace
	beq x0, x10, .LBB1_70
.LBB1_69:                               //  %while.body199
                                        //    in Loop: Header=BB1_68 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x21, x10
	add x22, x22, 1
	xor x10, x21, -1
	bltu x0, x10, .LBB1_68
	jal x0, .LBB1_397
.LBB1_70:                               //  %if.end205
	mv x10, x19
	mv x11, x21
	mv x12, x18
	jal _ungetwc_r
	mv x13, x0
.LBB1_71:                               //  %if.end207
	lw x11, -248 ( fp )             //  4-byte Folded Reload
	sll x10, x25, 2&31
	sw x26, -284 ( fp )             //  4-byte Folded Spill
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB1_72:                               //  %sw.bb208
	seqz x10, x0
	sw x10, -288 ( fp )             //  4-byte Folded Spill
	beq x24, x13, .LBB1_74
.LBB1_73:                               //  %sw.bb208
	sw x24, -288 ( fp )             //  4-byte Folded Spill
.LBB1_74:                               //  %sw.bb208
	and x21, x23, 16
	and x10, x23, 1
	sw x21, -304 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB1_126
.LBB1_75:                               //  %if.else341
	beq x0, x21, .LBB1_137
.LBB1_76:                               //  %land.rhs413.us.preheader
	add x10, fp, -64
	mv x11, x13
	add x12, x0, 8
	mv x26, x13
	jal memset
	lw x21, -288 ( fp )             //  4-byte Folded Reload
	add x25, x0, -1
	add x24, fp, -225
	jal x0, .LBB1_80
.LBB1_77:                               //  %while.body418.us
                                        //    in Loop: Header=BB1_80 Depth=1
	xor x10, x10, -1
	bltu x0, x10, .LBB1_78
.LBB1_431:                              //  %while.body418.us
	jal x0, .LBB1_415
.LBB1_78:                               //  %if.then429.us
                                        //    in Loop: Header=BB1_80 Depth=1
	add x21, x21, -1
.LBB1_79:                               //  %if.end465.us
                                        //    in Loop: Header=BB1_80 Depth=1
	add x26, x26, 1
	beq x0, x21, .LBB1_213
.LBB1_80:                               //  %land.rhs413.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x12, x10
	xor x10, x12, -1
	beq x0, x10, .LBB1_182
.LBB1_81:                               //  %while.body418.us
                                        //    in Loop: Header=BB1_80 Depth=1
	mv x10, x19
	mv x11, x24
	add x13, fp, -64
	jal _wcrtomb_r
	bltu x0, x10, .LBB1_77
.LBB1_82:                               //  %lor.lhs.false426.us
                                        //    in Loop: Header=BB1_80 Depth=1
	lw x10, -64 ( fp )
	xor x10, x10, -4
	bltu x0, x10, .LBB1_78
	jal x0, .LBB1_79
.LBB1_83:                               //  %sw.bb500
	add x25, x0, -1
	beq x24, x13, .LBB1_85
.LBB1_84:                               //  %sw.bb500
	mv x25, x24
.LBB1_85:                               //  %sw.bb500
	and x24, x23, 16
	and x10, x23, 1
	beq x0, x10, .LBB1_130
.LBB1_86:                               //  %sw.bb500
	beq x0, x24, .LBB1_130
.LBB1_87:                               //  %while.cond511.preheader
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x21, x10
	xor x10, x21, -1
	bltu x0, x10, .LBB1_88
.LBB1_432:                              //  %while.cond511.preheader
	jal x0, .LBB1_403
.LBB1_88:                               //  %land.lhs.true515.lr.ph
	lw x24, -244 ( fp )             //  4-byte Folded Reload
	lw x10, -268 ( fp )             //  4-byte Folded Reload
	sub x10, x10, x24
	sra x23, x10, 2&31
	lw x10, -264 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_155
.LBB1_89:                               //  %land.lhs.true515.preheader
	mv x26, x0
.LBB1_90:                               //  %land.lhs.true515
                                        //  =>This Inner Loop Header: Depth=1
	beq x25, x26, .LBB1_160
.LBB1_91:                               //  %land.rhs519
                                        //    in Loop: Header=BB1_90 Depth=1
	mv x10, x24
	mv x11, x21
	mv x12, x23
	jal wmemchr
	bltu x0, x10, .LBB1_160
.LBB1_92:                               //  %while.body540
                                        //    in Loop: Header=BB1_90 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x21, x10
	add x26, x26, 1
	xor x10, x21, -1
	bltu x0, x10, .LBB1_90
	jal x0, .LBB1_159
.LBB1_94:                               //  %sw.bb898
	add x25, x0, -1
	beq x24, x13, .LBB1_96
.LBB1_95:                               //  %sw.bb898
	mv x25, x24
.LBB1_96:                               //  %sw.bb898
	and x26, x23, 16
	and x10, x23, 1
	beq x0, x10, .LBB1_133
.LBB1_97:                               //  %sw.bb898
	beq x0, x26, .LBB1_133
.LBB1_98:                               //  %while.cond909.preheader
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x21, x10
	xor x10, x21, -1
	beq x0, x10, .LBB1_154
.LBB1_99:                               //  %land.lhs.true913.preheader
	lw x26, -284 ( fp )             //  4-byte Folded Reload
.LBB1_100:                              //  %land.lhs.true913
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x25, .LBB1_5
.LBB1_101:                              //  %land.rhs917
                                        //    in Loop: Header=BB1_100 Depth=1
	mv x10, x21
	jal iswspace
	bltu x0, x10, .LBB1_5
.LBB1_102:                              //  %while.body921
                                        //    in Loop: Header=BB1_100 Depth=1
	mv x10, x19
	mv x11, x18
	add x25, x25, -1
	jal _fgetwc_r
	mv x21, x10
	add x22, x22, 1
	xor x10, x21, -1
	bltu x0, x10, .LBB1_100
.LBB1_103:
	add x25, x0, -1
	lw x21, 0 ( x27 )
	bltu x0, x21, .LBB1_7
	jal x0, .LBB1_403
.LBB1_104:                              //  %sw.bb1237
	add x10, x24, -1
	add x25, x0, 39
	add x11, x0, 38
	bltu x11, x10, .LBB1_106
.LBB1_105:                              //  %sw.bb1237
	mv x25, x24
.LBB1_106:                              //  %sw.bb1237
	or x21, x23, 1408
	beq x0, x25, .LBB1_136
.LBB1_107:                              //  %for.body.preheader
	add x26, fp, -224
	mv x23, x13
	add x24, x0, 121
	jal x0, .LBB1_110
.LBB1_108:                              //  %sw.bb1263
                                        //    in Loop: Header=BB1_110 Depth=1
	lw x10, -232 ( fp )             //  4-byte Folded Reload
	lw x12, -256 ( fp )             //  4-byte Folded Reload
	and x21, x21, -897
	sll x10, x10, 1&31
	add x10, x10, x12
	lh x10, 0 ( x10 )
.LBB1_109:                              //  %ok
                                        //    in Loop: Header=BB1_110 Depth=1
	sw x10, -232 ( fp )             //  4-byte Folded Spill
	sw x11, 0 ( x26 )
	add x26, x26, 4
	add x23, x23, 1
	beq x25, x23, .LBB1_125
.LBB1_110:                              //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x11, x10
	add x10, x11, 1
	bgeu x24, x10, .LBB1_111
.LBB1_447:                              //  %for.body
	jal x0, .LBB1_356
.LBB1_111:                              //  %for.body
                                        //    in Loop: Header=BB1_110 Depth=1
	lw x12, -240 ( fp )             //  4-byte Folded Reload
	sll x10, x10, 2&31
	mv x13, x0
	add x10, x12, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB1_112:                              //  %sw.bb1275
                                        //    in Loop: Header=BB1_110 Depth=1
	lw x10, -232 ( fp )             //  4-byte Folded Reload
	slti x10, x10, 11
	bltu x0, x10, .LBB1_356
.LBB1_113:                              //  %if.else1260
                                        //    in Loop: Header=BB1_110 Depth=1
	and x21, x21, -897
	sw x11, 0 ( x26 )
	add x26, x26, 4
	add x23, x23, 1
	bne x25, x23, .LBB1_110
	jal x0, .LBB1_125
.LBB1_114:                              //  %sw.bb1281
                                        //    in Loop: Header=BB1_110 Depth=1
	and x10, x21, 128
	beq x0, x10, .LBB1_356
.LBB1_115:                              //  %if.then1284
                                        //    in Loop: Header=BB1_110 Depth=1
	lw x10, -276 ( fp )             //  4-byte Folded Reload
	lui x12, (65536>>12)&1048575
	and x10, x10, x21
	or x21, x12, x10
	sw x11, 0 ( x26 )
	add x26, x26, 4
	add x23, x23, 1
	bne x25, x23, .LBB1_110
	jal x0, .LBB1_125
.LBB1_116:                              //  %sw.bb1267
                                        //    in Loop: Header=BB1_110 Depth=1
	lw x14, -232 ( fp )             //  4-byte Folded Reload
	lw x12, -256 ( fp )             //  4-byte Folded Reload
	sll x10, x14, 1&31
	add x10, x10, x12
	lh x10, 0 ( x10 )
	add x12, x14, -1
	sltiu x12, x12, 8
	bltu x0, x12, .LBB1_355
.LBB1_117:                              //  %if.end1273
                                        //    in Loop: Header=BB1_110 Depth=1
	and x21, x21, -897
	jal x0, .LBB1_109
.LBB1_118:                              //  %sw.bb1288
                                        //    in Loop: Header=BB1_110 Depth=1
	and x10, x21, 512
	beq x0, x10, .LBB1_356
.LBB1_119:                              //  %land.lhs.true1291
                                        //    in Loop: Header=BB1_110 Depth=1
	srl x10, x21, 14&31
	and x10, x10, 4
	add x12, fp, -220
	add x10, x10, x12
	bne x26, x10, .LBB1_356
.LBB1_120:                              //  %if.then1301
                                        //    in Loop: Header=BB1_110 Depth=1
	and x21, x21, -513
	add x10, x0, 16
	jal x0, .LBB1_109
.LBB1_121:                              //  %sw.bb1250
                                        //    in Loop: Header=BB1_110 Depth=1
	lw x10, -232 ( fp )             //  4-byte Folded Reload
	bne x10, x13, .LBB1_123
.LBB1_122:                              //    in Loop: Header=BB1_110 Depth=1
	or x21, x21, 512
	add x10, x0, 8
	sw x10, -232 ( fp )             //  4-byte Folded Spill
.LBB1_123:                              //  %sw.bb1250
                                        //    in Loop: Header=BB1_110 Depth=1
	and x10, x21, 1024
	beq x0, x10, .LBB1_113
.LBB1_124:                              //  %if.then1258
                                        //    in Loop: Header=BB1_110 Depth=1
	and x21, x21, -1409
	sw x11, 0 ( x26 )
	add x26, x26, 4
	add x23, x23, 1
	bne x25, x23, .LBB1_110
.LBB1_125:
	seqz x23, x0
	jal x0, .LBB1_357
.LBB1_126:                              //  %if.then215
	lw x24, -236 ( fp )             //  4-byte Folded Reload
	beq x0, x21, .LBB1_139
.LBB1_127:                              //  %land.rhs280.us.preheader
	lw x23, -288 ( fp )             //  4-byte Folded Reload
	mv x26, x13
.LBB1_128:                              //  %land.rhs280.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	xor x10, x10, -1
	beq x0, x10, .LBB1_148
.LBB1_129:                              //  %if.end307.us
                                        //    in Loop: Header=BB1_128 Depth=1
	add x26, x26, 1
	bne x23, x26, .LBB1_128
	jal x0, .LBB1_143
.LBB1_130:                              //  %if.else552
	bltu x0, x10, .LBB1_144
.LBB1_131:                              //  %if.else710
	beq x0, x24, .LBB1_161
.LBB1_132:
	sw x13, -288 ( fp )             //  4-byte Folded Spill
	sw x13, -296 ( fp )             //  4-byte Folded Spill
	sw x13, -300 ( fp )             //  4-byte Folded Spill
	add x23, fp, -225
	jal x0, .LBB1_291
.LBB1_133:                              //  %if.else929
	bltu x0, x10, .LBB1_146
.LBB1_134:                              //  %if.else1067
	beq x0, x26, .LBB1_163
.LBB1_135:
	add x21, fp, -225
	sw x13, -288 ( fp )             //  4-byte Folded Spill
	sw x13, -292 ( fp )             //  4-byte Folded Spill
	mv x23, x13
	jal x0, .LBB1_331
.LBB1_136:
	add x10, fp, -224
	mv x23, x13
	mv x24, x10
	and x10, x21, 256
	add x25, x0, -1
	beq x0, x10, .LBB1_358
	jal x0, .LBB1_411
.LBB1_137:                              //  %if.else345
	and x10, x23, 128
	add x25, x0, -1
	bltu x0, x10, .LBB1_165
.LBB1_138:                              //  %if.else405
	lw x10, -56 ( fp )
	sw x13, -292 ( fp )             //  4-byte Folded Spill
	lw x21, -288 ( fp )             //  4-byte Folded Reload
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x24, 0 ( x10 )
	sw x13, -300 ( fp )             //  4-byte Folded Spill
	sw x13, -296 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_195
.LBB1_139:                              //  %if.else220
	and x10, x23, 128
	bltu x0, x10, .LBB1_169
.LBB1_140:                              //  %land.rhs280.us2987.preheader
	lw x10, -56 ( fp )
	lw x23, -288 ( fp )             //  4-byte Folded Reload
	mv x26, x13
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x24, 0 ( x10 )
.LBB1_141:                              //  %land.rhs280.us2987
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	xor x11, x10, -1
	beq x0, x11, .LBB1_148
.LBB1_142:                              //  %if.then288.us2997
                                        //    in Loop: Header=BB1_141 Depth=1
	sw x10, 0 ( x24 )
	add x24, x24, 4
	add x26, x26, 1
	bne x23, x26, .LBB1_141
.LBB1_143:
	mv x10, x0
	mv x21, x10
	mv x25, x10
	mv x23, x10
	bltu x0, x23, .LBB1_150
	jal x0, .LBB1_153
.LBB1_144:                              //  %if.then555
	and x10, x23, 128
	bltu x0, x10, .LBB1_173
.LBB1_145:                              //  %if.else617
	lw x10, -56 ( fp )
	mv x21, x13
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x13, -288 ( fp )             //  4-byte Folded Spill
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_228
.LBB1_146:                              //  %if.then932
	and x10, x23, 128
	bltu x0, x10, .LBB1_177
.LBB1_147:                              //  %if.else994
	lw x10, -56 ( fp )
	mv x26, x13
	mv x24, x13
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x21, 0 ( x10 )
	jal x0, .LBB1_243
.LBB1_148:
	mv x21, x0
	mv x23, x21
	mv x25, x21
	bltu x0, x26, .LBB1_149
.LBB1_433:
	jal x0, .LBB1_396
.LBB1_149:                              //  %if.end313
	beq x0, x23, .LBB1_153
.LBB1_150:                              //  %if.end313
	sub x11, x24, x21
	sra x10, x11, 2&31
	bgeu x10, x25, .LBB1_153
.LBB1_151:                              //  %if.then324
	lw x10, 0 ( x23 )
	jal realloc
	beq x0, x10, .LBB1_153
.LBB1_152:                              //  %if.then328
	sw x10, 0 ( x23 )
.LBB1_153:                              //  %cleanup336.thread2159
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	lw x11, -284 ( fp )             //  4-byte Folded Reload
	sw x24, -236 ( fp )             //  4-byte Folded Spill
	add x25, x0, -1
	seqz x10, x10
	add x11, x10, x11
	sw x11, -284 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_395
.LBB1_154:
	lw x26, -284 ( fp )             //  4-byte Folded Reload
	add x25, x0, -1
	lw x21, 0 ( x27 )
	bltu x0, x21, .LBB1_7
	jal x0, .LBB1_403
.LBB1_155:                              //  %land.lhs.true515.us.preheader
	mv x26, x0
.LBB1_156:                              //  %land.lhs.true515.us
                                        //  =>This Inner Loop Header: Depth=1
	beq x25, x26, .LBB1_160
.LBB1_157:                              //  %land.rhs519.us
                                        //    in Loop: Header=BB1_156 Depth=1
	mv x10, x24
	mv x11, x21
	mv x12, x23
	jal wmemchr
	beq x0, x10, .LBB1_160
.LBB1_158:                              //  %while.body540.us
                                        //    in Loop: Header=BB1_156 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x21, x10
	add x26, x26, 1
	xor x10, x21, -1
	bltu x0, x10, .LBB1_156
.LBB1_159:
	add x25, x0, -1
	jal x0, .LBB1_395
.LBB1_160:
	mv x10, x19
	mv x11, x21
	mv x12, x18
	add x25, x0, -1
	jal _ungetwc_r
	bltu x0, x26, .LBB1_395
	jal x0, .LBB1_414
.LBB1_161:                              //  %if.else718
	and x10, x23, 128
	bltu x0, x10, .LBB1_183
.LBB1_162:                              //  %if.else778
	lw x10, -56 ( fp )
	sw x13, -300 ( fp )             //  4-byte Folded Spill
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x23, 0 ( x10 )
	sw x13, -288 ( fp )             //  4-byte Folded Spill
	sw x13, -296 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_291
.LBB1_163:                              //  %if.else1075
	and x10, x23, 128
	bltu x0, x10, .LBB1_187
.LBB1_164:                              //  %if.else1135
	lw x10, -56 ( fp )
	mv x23, x13
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x21, 0 ( x10 )
	sw x13, -288 ( fp )             //  4-byte Folded Spill
	sw x13, -292 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_331
.LBB1_165:                              //  %if.then348
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x23, 0 ( x10 )
	beq x0, x23, .LBB1_403
.LBB1_166:                              //  %if.end352
	add x10, x0, 32
	jal malloc
	lw x21, -288 ( fp )             //  4-byte Folded Reload
	mv x24, x10
	bltu x0, x24, .LBB1_167
.LBB1_434:                              //  %if.end352
	jal x0, .LBB1_417
.LBB1_167:                              //  %if.end356
	sw x24, 0 ( x23 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB1_191
.LBB1_168:                              //  %if.end356.if.end396_crit_edge
	lw x10, 0 ( x20 )
	jal x0, .LBB1_194
.LBB1_169:                              //  %if.then223
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x23, 0 ( x10 )
	beq x0, x23, .LBB1_403
.LBB1_170:                              //  %if.end227
	add x10, x0, 128
	jal malloc
	mv x24, x10
	beq x0, x24, .LBB1_400
.LBB1_171:                              //  %if.end231
	sw x24, 0 ( x23 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	mv x13, x0
	bgeu x11, x10, .LBB1_214
.LBB1_172:                              //  %if.end231.if.end267_crit_edge
	lw x10, 0 ( x20 )
	jal x0, .LBB1_217
.LBB1_173:                              //  %if.then560
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -288 ( fp )             //  4-byte Folded Spill
	beq x0, x10, .LBB1_403
.LBB1_174:                              //  %if.end564
	add x10, x0, 128
	jal malloc
	mv x21, x10
	beq x0, x21, .LBB1_400
.LBB1_175:                              //  %if.end568
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sw x21, 0 ( x10 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB1_224
.LBB1_176:                              //  %if.end568.if.end608_crit_edge
	lw x10, 0 ( x20 )
	jal x0, .LBB1_227
.LBB1_177:                              //  %if.then937
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x24, 0 ( x10 )
	beq x0, x24, .LBB1_414
.LBB1_178:                              //  %if.end941
	add x10, x0, 128
	jal malloc
	mv x21, x10
	beq x0, x21, .LBB1_400
.LBB1_179:                              //  %if.end945
	sw x21, 0 ( x24 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB1_239
.LBB1_180:                              //  %if.end945.if.end985_crit_edge
	lw x10, 0 ( x20 )
	jal x0, .LBB1_242
.LBB1_181:                              //  %if.then162
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sb x22, 0 ( x10 )
	lw x21, 0 ( x27 )
	bltu x0, x21, .LBB1_7
	jal x0, .LBB1_403
.LBB1_182:
	mv x10, x0
	mv x12, x10
	sw x10, -292 ( fp )             //  4-byte Folded Spill
	sw x10, -296 ( fp )             //  4-byte Folded Spill
	bltu x0, x26, .LBB1_209
	jal x0, .LBB1_415
.LBB1_183:                              //  %if.then721
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -288 ( fp )             //  4-byte Folded Spill
	beq x0, x10, .LBB1_403
.LBB1_184:                              //  %if.end725
	add x10, x0, 32
	jal malloc
	mv x23, x10
	beq x0, x23, .LBB1_400
.LBB1_185:                              //  %if.end729
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sw x23, 0 ( x10 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB1_287
.LBB1_186:                              //  %if.end729.if.end769_crit_edge
	lw x10, 0 ( x20 )
	jal x0, .LBB1_290
.LBB1_187:                              //  %if.then1078
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -288 ( fp )             //  4-byte Folded Spill
	beq x0, x10, .LBB1_414
.LBB1_188:                              //  %if.end1082
	add x10, x0, 32
	jal malloc
	mv x21, x10
	beq x0, x21, .LBB1_400
.LBB1_189:                              //  %if.end1086
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sw x21, 0 ( x10 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB1_327
.LBB1_190:                              //  %if.end1086.if.end1126_crit_edge
	lw x10, 0 ( x20 )
	jal x0, .LBB1_330
.LBB1_191:                              //  %if.then364
	add x11, x10, 8
	lw x10, -280 ( fp )             //  4-byte Folded Reload
	bltu x10, x11, .LBB1_405
.LBB1_192:                              //  %if.end384
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_405
.LBB1_193:                              //  %cleanup393
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB1_194:                              //  %if.end396
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x23, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x10, x0, 32
	mv x13, x0
	sw x23, -292 ( fp )             //  4-byte Folded Spill
	sw x10, -300 ( fp )             //  4-byte Folded Spill
	sw x24, -296 ( fp )             //  4-byte Folded Spill
.LBB1_195:                              //  %land.rhs413.preheader
	add x10, fp, -64
	mv x11, x13
	add x12, x0, 8
	mv x26, x13
	jal memset
	jal x0, .LBB1_197
.LBB1_196:                              //  %cleanup.cont463
                                        //    in Loop: Header=BB1_197 Depth=1
	add x24, x25, x24
	add x26, x26, 1
	add x25, x0, -1
	mv x21, x23
	beq x0, x21, .LBB1_208
.LBB1_197:                              //  %land.rhs413
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x12, x10
	xor x10, x12, -1
	beq x0, x10, .LBB1_207
.LBB1_198:                              //  %while.body418
                                        //    in Loop: Header=BB1_197 Depth=1
	mv x10, x19
	mv x11, x24
	add x13, fp, -64
	mv x23, x21
	jal _wcrtomb_r
	mv x25, x10
	beq x0, x25, .LBB1_200
.LBB1_199:                              //  %while.body418
                                        //    in Loop: Header=BB1_197 Depth=1
	xor x10, x25, -1
	bltu x0, x10, .LBB1_201
	jal x0, .LBB1_396
.LBB1_200:                              //  %lor.lhs.false426
                                        //    in Loop: Header=BB1_197 Depth=1
	lw x10, -64 ( fp )
	xor x10, x10, -4
	beq x0, x10, .LBB1_202
.LBB1_201:                              //  %if.then429
                                        //    in Loop: Header=BB1_197 Depth=1
	add x23, x23, -1
.LBB1_202:                              //  %if.then434
                                        //    in Loop: Header=BB1_197 Depth=1
	lw x10, -292 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_196
.LBB1_203:                              //  %land.lhs.true441
                                        //    in Loop: Header=BB1_197 Depth=1
	lw x10, -296 ( fp )             //  4-byte Folded Reload
	sub x21, x24, x10
	jal __locale_mb_cur_max
	lw x11, -300 ( fp )             //  4-byte Folded Reload
	bgeu x21, x11, .LBB1_205
.LBB1_204:                              //  %land.lhs.true441
                                        //    in Loop: Header=BB1_197 Depth=1
	sub x10, x11, x10
	bltu x21, x10, .LBB1_196
.LBB1_205:                              //  %if.then449
                                        //    in Loop: Header=BB1_197 Depth=1
	lw x10, -296 ( fp )             //  4-byte Folded Reload
	sll x11, x11, 1&31
	sw x11, -300 ( fp )             //  4-byte Folded Spill
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB1_400
.LBB1_206:                              //  %if.end455
                                        //    in Loop: Header=BB1_197 Depth=1
	lw x10, -292 ( fp )             //  4-byte Folded Reload
	add x24, x21, x11
	sw x11, -296 ( fp )             //  4-byte Folded Spill
	sw x11, 0 ( x10 )
	jal x0, .LBB1_196
.LBB1_207:
	lw x12, -300 ( fp )             //  4-byte Folded Reload
	bltu x0, x26, .LBB1_209
	jal x0, .LBB1_415
.LBB1_208:
	lw x12, -300 ( fp )             //  4-byte Folded Reload
.LBB1_209:                              //  %if.end471
	lw x10, -292 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_213
.LBB1_210:                              //  %if.end471
	lw x10, -296 ( fp )             //  4-byte Folded Reload
	sub x11, x24, x10
	bgeu x11, x12, .LBB1_213
.LBB1_211:                              //  %if.then481
	lw x21, -292 ( fp )             //  4-byte Folded Reload
	lw x10, 0 ( x21 )
	jal realloc
	beq x0, x10, .LBB1_213
.LBB1_212:                              //  %if.then486
	sw x10, 0 ( x21 )
.LBB1_213:                              //  %cleanup494
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	lw x11, -284 ( fp )             //  4-byte Folded Reload
	seqz x10, x10
	add x11, x10, x11
	sw x11, -284 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_395
.LBB1_214:                              //  %if.then239
	add x11, x10, 8
	lw x10, -280 ( fp )             //  4-byte Folded Reload
	bltu x10, x11, .LBB1_405
.LBB1_215:                              //  %if.end258
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_405
.LBB1_216:                              //  %cleanup
	lh x11, 4 ( x20 )
	mv x13, x0
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB1_217:                              //  %land.rhs280.preheader
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x23, 0 ( x10 )
	add x10, x11, 1
	mv x26, x13
	mv x21, x24
	add x25, x0, 32
	sw x23, -236 ( fp )             //  4-byte Folded Spill
	sh x10, 6 ( x20 )
	jal x0, .LBB1_220
.LBB1_218:                              //    in Loop: Header=BB1_220 Depth=1
	mv x24, x11
.LBB1_219:                              //  %cleanup.cont305
                                        //    in Loop: Header=BB1_220 Depth=1
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sw x23, 0 ( x24 )
	add x24, x24, 4
	add x26, x26, 1
	beq x10, x26, .LBB1_274
.LBB1_220:                              //  %land.rhs280
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x23, x10
	xor x10, x23, -1
	beq x0, x10, .LBB1_273
.LBB1_221:                              //  %if.then288
                                        //    in Loop: Header=BB1_220 Depth=1
	sub x10, x24, x21
	mv x11, x24
	sra x24, x10, 2&31
	bltu x24, x25, .LBB1_218
.LBB1_222:                              //  %if.then293
                                        //    in Loop: Header=BB1_220 Depth=1
	sll x11, x25, 3&31
	mv x10, x21
	jal realloc
	mv x21, x10
	beq x0, x21, .LBB1_400
.LBB1_223:                              //  %if.end298
                                        //    in Loop: Header=BB1_220 Depth=1
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	sll x25, x25, 1&31
	sw x21, 0 ( x10 )
	sll x10, x24, 2&31
	add x24, x10, x21
	jal x0, .LBB1_219
.LBB1_224:                              //  %if.then576
	add x11, x10, 8
	lw x10, -280 ( fp )             //  4-byte Folded Reload
	bltu x10, x11, .LBB1_405
.LBB1_225:                              //  %if.end596
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_405
.LBB1_226:                              //  %cleanup605
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB1_227:                              //  %if.end608
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -288 ( fp )             //  4-byte Folded Reload
	sw x21, -236 ( fp )             //  4-byte Folded Spill
	add x21, x0, 32
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
.LBB1_228:                              //  %if.end619
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x24, x10
	xor x10, x24, -1
	beq x0, x10, .LBB1_238
.LBB1_229:                              //  %land.lhs.true624.lr.ph
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	lw x11, -268 ( fp )             //  4-byte Folded Reload
	sub x10, x11, x10
	sra x10, x10, 2&31
	sw x10, -292 ( fp )             //  4-byte Folded Spill
	lw x10, -264 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_262
.LBB1_230:                              //  %land.lhs.true624.lr.ph.split
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_275
.LBB1_231:                              //  %land.lhs.true624.preheader
	lw x23, -236 ( fp )             //  4-byte Folded Reload
	add x25, x25, 1
	add x25, x25, -1
	bltu x0, x25, .LBB1_234
	jal x0, .LBB1_280
.LBB1_232:                              //  %cleanup673
                                        //    in Loop: Header=BB1_234 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x24, x10
	xor x10, x24, -1
	beq x0, x10, .LBB1_281
.LBB1_233:                              //  %land.lhs.true624
                                        //    in Loop: Header=BB1_234 Depth=1
	add x25, x25, -1
	beq x0, x25, .LBB1_280
.LBB1_234:                              //  %land.end649
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	lw x12, -292 ( fp )             //  4-byte Folded Reload
	mv x11, x24
	jal wmemchr
	bltu x0, x10, .LBB1_280
.LBB1_235:                              //  %while.body650
                                        //    in Loop: Header=BB1_234 Depth=1
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	sw x24, 0 ( x10 )
	add x10, x10, 4
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	sub x10, x10, x23
	sra x24, x10, 2&31
	bltu x24, x21, .LBB1_232
.LBB1_236:                              //  %if.then662
                                        //    in Loop: Header=BB1_234 Depth=1
	sll x11, x21, 3&31
	mv x10, x23
	jal realloc
	mv x23, x10
	beq x0, x23, .LBB1_400
.LBB1_237:                              //  %if.end668
                                        //    in Loop: Header=BB1_234 Depth=1
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sll x21, x21, 1&31
	sw x23, 0 ( x10 )
	sll x10, x24, 2&31
	add x10, x10, x23
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_232
.LBB1_238:
	lw x23, -236 ( fp )             //  4-byte Folded Reload
	lw x11, -236 ( fp )             //  4-byte Folded Reload
	sub x10, x11, x23
	bltu x0, x10, .LBB1_282
	jal x0, .LBB1_403
.LBB1_239:                              //  %if.then953
	add x11, x10, 8
	lw x10, -280 ( fp )             //  4-byte Folded Reload
	bltu x10, x11, .LBB1_405
.LBB1_240:                              //  %if.end973
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_405
.LBB1_241:                              //  %cleanup982
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB1_242:                              //  %if.end985
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x24, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x26, x0, 32
.LBB1_243:                              //  %if.end996
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x23, x10
	xor x10, x23, -1
	beq x0, x10, .LBB1_256
.LBB1_244:                              //  %land.lhs.true1001.lr.ph
	sw x21, -236 ( fp )             //  4-byte Folded Spill
	sw x21, -288 ( fp )             //  4-byte Folded Spill
	beq x0, x24, .LBB1_246
.LBB1_245:
	sw x21, -236 ( fp )             //  4-byte Folded Spill
	bltu x0, x25, .LBB1_252
	jal x0, .LBB1_255
.LBB1_246:                              //  %land.end1009.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x23
	jal iswspace
	bltu x0, x10, .LBB1_255
.LBB1_247:                              //  %while.body1010.us
                                        //    in Loop: Header=BB1_246 Depth=1
	mv x21, x26
	mv x26, x24
	lw x24, -236 ( fp )             //  4-byte Folded Reload
	mv x10, x19
	mv x11, x18
	sw x23, 0 ( x24 )
	jal _fgetwc_r
	mv x23, x10
	xor x10, x23, -1
	beq x0, x10, .LBB1_354
.LBB1_248:                              //  %land.lhs.true1001.us
                                        //    in Loop: Header=BB1_246 Depth=1
	add x24, x24, 4
	sw x24, -236 ( fp )             //  4-byte Folded Spill
	mv x24, x26
	mv x26, x21
	lw x21, -288 ( fp )             //  4-byte Folded Reload
	add x22, x22, 1
	add x25, x25, -1
	bltu x0, x25, .LBB1_246
	jal x0, .LBB1_255
.LBB1_249:                              //  %if.end1028
                                        //    in Loop: Header=BB1_252 Depth=1
	sll x10, x23, 2&31
	add x10, x10, x21
	sll x26, x26, 1&31
	sw x21, 0 ( x24 )
	sw x10, -236 ( fp )             //  4-byte Folded Spill
.LBB1_250:                              //  %cleanup.cont1036
                                        //    in Loop: Header=BB1_252 Depth=1
	mv x10, x19
	mv x11, x18
	add x25, x25, -1
	jal _fgetwc_r
	mv x23, x10
	add x22, x22, 1
	xor x10, x23, -1
	beq x0, x10, .LBB1_257
.LBB1_251:                              //  %land.lhs.true1001
                                        //    in Loop: Header=BB1_252 Depth=1
	beq x0, x25, .LBB1_255
.LBB1_252:                              //  %land.end1009
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x23
	jal iswspace
	bltu x0, x10, .LBB1_255
.LBB1_253:                              //  %while.body1010
                                        //    in Loop: Header=BB1_252 Depth=1
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	sw x23, 0 ( x10 )
	add x10, x10, 4
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	sub x10, x10, x21
	sra x23, x10, 2&31
	bltu x23, x26, .LBB1_250
.LBB1_254:                              //  %if.then1022
                                        //    in Loop: Header=BB1_252 Depth=1
	sll x11, x26, 3&31
	mv x10, x21
	jal realloc
	mv x21, x10
	bltu x0, x21, .LBB1_249
	jal x0, .LBB1_400
.LBB1_255:                              //  %if.then1041
	mv x10, x19
	mv x11, x23
	mv x12, x18
	jal _ungetwc_r
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	bltu x0, x24, .LBB1_258
	jal x0, .LBB1_261
.LBB1_256:
	sw x21, -236 ( fp )             //  4-byte Folded Spill
.LBB1_257:                              //  %if.end1043
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	beq x0, x24, .LBB1_261
.LBB1_258:                              //  %if.end1043
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	sub x10, x10, x21
	sra x10, x10, 2&31
	add x11, x10, 1
	bgeu x11, x26, .LBB1_261
.LBB1_259:                              //  %if.then1054
	lw x10, 0 ( x24 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_261
.LBB1_260:                              //  %if.then1059
	sw x10, 0 ( x24 )
.LBB1_261:                              //  %cleanup1063
	lw x26, -284 ( fp )             //  4-byte Folded Reload
	add x25, x0, -1
	add x26, x26, 1
	lw x21, 0 ( x27 )
	beq x0, x21, .LBB1_435
.LBB1_436:                              //  %cleanup1063
	jal x0, .LBB1_7
.LBB1_435:                              //  %cleanup1063
	jal x0, .LBB1_403
.LBB1_262:
	lw x23, -236 ( fp )             //  4-byte Folded Reload
.LBB1_263:                              //  %land.end649.us
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	lw x12, -292 ( fp )             //  4-byte Folded Reload
	mv x11, x24
	jal wmemchr
	beq x0, x10, .LBB1_280
.LBB1_264:                              //  %while.body650.us
                                        //    in Loop: Header=BB1_263 Depth=1
	lw x11, -236 ( fp )             //  4-byte Folded Reload
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sw x24, 0 ( x11 )
	add x11, x11, 4
	beq x0, x10, .LBB1_269
.LBB1_265:                              //  %while.body650.us
                                        //    in Loop: Header=BB1_263 Depth=1
	sub x10, x11, x23
	sra x24, x10, 2&31
	bltu x24, x21, .LBB1_269
.LBB1_266:                              //  %if.then662.us
                                        //    in Loop: Header=BB1_263 Depth=1
	sll x11, x21, 3&31
	mv x10, x23
	jal realloc
	mv x23, x10
	beq x0, x23, .LBB1_400
.LBB1_267:                              //  %if.end668.us
                                        //    in Loop: Header=BB1_263 Depth=1
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sll x21, x21, 1&31
	sw x23, 0 ( x10 )
	sll x10, x24, 2&31
	add x10, x10, x23
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_270
.LBB1_269:                              //    in Loop: Header=BB1_263 Depth=1
	sw x11, -236 ( fp )             //  4-byte Folded Spill
.LBB1_270:                              //  %cleanup673.us
                                        //    in Loop: Header=BB1_263 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x24, x10
	xor x10, x24, -1
	beq x0, x10, .LBB1_281
.LBB1_271:                              //  %land.lhs.true624.us
                                        //    in Loop: Header=BB1_263 Depth=1
	add x25, x25, -1
	bltu x0, x25, .LBB1_263
	jal x0, .LBB1_280
.LBB1_272:                              //  %if.then167
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sh x22, 0 ( x10 )
	lw x21, 0 ( x27 )
	beq x0, x21, .LBB1_437
.LBB1_438:                              //  %if.then167
	jal x0, .LBB1_7
.LBB1_437:                              //  %if.then167
	jal x0, .LBB1_403
.LBB1_273:
	lw x23, -236 ( fp )             //  4-byte Folded Reload
	bltu x0, x26, .LBB1_149
	jal x0, .LBB1_396
.LBB1_274:
	lw x23, -236 ( fp )             //  4-byte Folded Reload
	bltu x0, x23, .LBB1_150
	jal x0, .LBB1_153
.LBB1_275:
	lw x26, -236 ( fp )             //  4-byte Folded Reload
.LBB1_276:                              //  %land.end649.us2931
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	lw x12, -292 ( fp )             //  4-byte Folded Reload
	mv x11, x24
	jal wmemchr
	bltu x0, x10, .LBB1_279
.LBB1_277:                              //  %while.body650.us2933
                                        //    in Loop: Header=BB1_276 Depth=1
	mv x10, x19
	mv x11, x18
	sw x24, 0 ( x26 )
	jal _fgetwc_r
	mv x24, x10
	xor x10, x24, -1
	beq x0, x10, .LBB1_380
.LBB1_278:                              //  %land.lhs.true624.us2922
                                        //    in Loop: Header=BB1_276 Depth=1
	add x26, x26, 4
	add x25, x25, -1
	bltu x0, x25, .LBB1_276
.LBB1_279:
	lw x23, -236 ( fp )             //  4-byte Folded Reload
	sw x26, -236 ( fp )             //  4-byte Folded Spill
	lw x26, -284 ( fp )             //  4-byte Folded Reload
.LBB1_280:                              //  %if.then680
	mv x10, x19
	mv x11, x24
	mv x12, x18
	jal _ungetwc_r
.LBB1_281:                              //  %if.end682
	lw x11, -236 ( fp )             //  4-byte Folded Reload
	sub x10, x11, x23
	beq x0, x10, .LBB1_403
.LBB1_282:                              //  %if.end690
	sra x26, x10, 2&31
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sw x0, 0 ( x11 )
	beq x0, x10, .LBB1_286
.LBB1_283:                              //  %if.end690
	add x11, x26, 1
	bgeu x11, x21, .LBB1_286
.LBB1_284:                              //  %if.then697
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sll x11, x11, 2&31
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB1_286
.LBB1_285:                              //  %if.then702
	lw x11, -288 ( fp )             //  4-byte Folded Reload
	sw x10, 0 ( x11 )
.LBB1_286:                              //  %cleanup706
	lw x10, -284 ( fp )             //  4-byte Folded Reload
	add x25, x0, -1
	add x10, x10, 1
	sw x10, -284 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_395
.LBB1_287:                              //  %if.then737
	add x11, x10, 8
	lw x10, -280 ( fp )             //  4-byte Folded Reload
	bltu x10, x11, .LBB1_405
.LBB1_288:                              //  %if.end757
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_405
.LBB1_289:                              //  %cleanup766
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB1_290:                              //  %if.end769
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -288 ( fp )             //  4-byte Folded Reload
	mv x13, x0
	sw x23, -296 ( fp )             //  4-byte Folded Spill
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x10, x0, 32
	sw x10, -300 ( fp )             //  4-byte Folded Spill
.LBB1_291:                              //  %if.end781
	add x10, fp, -64
	mv x11, x13
	add x12, x0, 8
	jal memset
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x21, x10
	xor x11, x21, -1
	snez x10, x11
	beq x0, x25, .LBB1_309
.LBB1_292:                              //  %if.end781
	beq x0, x11, .LBB1_309
.LBB1_293:                              //  %land.rhs790.lr.ph
	lw x11, -244 ( fp )             //  4-byte Folded Reload
	lw x10, -268 ( fp )             //  4-byte Folded Reload
	lw x12, -264 ( fp )             //  4-byte Folded Reload
	sub x10, x10, x11
	sra x13, x10, 2&31
	mv x10, x0
	sw x13, -292 ( fp )             //  4-byte Folded Spill
	beq x0, x12, .LBB1_310
.LBB1_294:                              //  %land.rhs790.preheader
	mv x26, x10
.LBB1_295:                              //  %land.rhs790
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	mv x11, x21
	mv x12, x13
	jal wmemchr
	bltu x0, x10, .LBB1_370
.LBB1_296:                              //  %while.body812
                                        //    in Loop: Header=BB1_295 Depth=1
	mv x10, x19
	mv x11, x23
	mv x12, x21
	add x13, fp, -64
	jal _wcrtomb_r
	beq x0, x10, .LBB1_298
.LBB1_297:                              //  %while.body812
                                        //    in Loop: Header=BB1_295 Depth=1
	xor x11, x10, -1
	bltu x0, x11, .LBB1_299
	jal x0, .LBB1_396
.LBB1_298:                              //  %lor.lhs.false820
                                        //    in Loop: Header=BB1_295 Depth=1
	lw x11, -64 ( fp )
	xor x11, x11, -4
	beq x0, x11, .LBB1_300
.LBB1_299:                              //  %if.then824
                                        //    in Loop: Header=BB1_295 Depth=1
	add x25, x25, -1
.LBB1_300:                              //  %if.end826
                                        //    in Loop: Header=BB1_295 Depth=1
	bltu x0, x24, .LBB1_306
.LBB1_301:                              //  %if.then829
                                        //    in Loop: Header=BB1_295 Depth=1
	add x23, x10, x23
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_306
.LBB1_302:                              //  %land.lhs.true837
                                        //    in Loop: Header=BB1_295 Depth=1
	lw x10, -296 ( fp )             //  4-byte Folded Reload
	sub x21, x23, x10
	jal __locale_mb_cur_max
	lw x11, -300 ( fp )             //  4-byte Folded Reload
	bgeu x21, x11, .LBB1_304
.LBB1_303:                              //  %land.lhs.true837
                                        //    in Loop: Header=BB1_295 Depth=1
	sub x10, x11, x10
	bltu x21, x10, .LBB1_306
.LBB1_304:                              //  %if.then845
                                        //    in Loop: Header=BB1_295 Depth=1
	lw x10, -296 ( fp )             //  4-byte Folded Reload
	sll x11, x11, 1&31
	sw x11, -300 ( fp )             //  4-byte Folded Spill
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB1_400
.LBB1_305:                              //  %if.end851
                                        //    in Loop: Header=BB1_295 Depth=1
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	add x23, x21, x11
	sw x11, -296 ( fp )             //  4-byte Folded Spill
	sw x11, 0 ( x10 )
.LBB1_306:                              //  %if.end860
                                        //    in Loop: Header=BB1_295 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x21, x10
	xor x11, x21, -1
	add x26, x26, 1
	snez x10, x11
	beq x0, x25, .LBB1_326
.LBB1_307:                              //  %if.end860
                                        //    in Loop: Header=BB1_295 Depth=1
	lw x13, -292 ( fp )             //  4-byte Folded Reload
	bltu x0, x11, .LBB1_295
	jal x0, .LBB1_326
.LBB1_309:
	mv x26, x0
	bltu x0, x10, .LBB1_370
	jal x0, .LBB1_371
.LBB1_310:                              //  %land.rhs790.lr.ph.split.us
	mv x10, x11
	mv x11, x21
	mv x12, x13
	jal wmemchr
	beq x0, x10, .LBB1_369
.LBB1_311:                              //  %while.body812.us.preheader
	seqz x26, x0
.LBB1_312:                              //  %while.body812.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x23
	mv x12, x21
	add x13, fp, -64
	jal _wcrtomb_r
	beq x0, x10, .LBB1_314
.LBB1_313:                              //  %while.body812.us
                                        //    in Loop: Header=BB1_312 Depth=1
	xor x11, x10, -1
	bltu x0, x11, .LBB1_315
	jal x0, .LBB1_396
.LBB1_314:                              //  %lor.lhs.false820.us
                                        //    in Loop: Header=BB1_312 Depth=1
	lw x11, -64 ( fp )
	xor x11, x11, -4
	beq x0, x11, .LBB1_316
.LBB1_315:                              //  %if.then824.us
                                        //    in Loop: Header=BB1_312 Depth=1
	add x25, x25, -1
.LBB1_316:                              //  %if.end826.us
                                        //    in Loop: Header=BB1_312 Depth=1
	bltu x0, x24, .LBB1_322
.LBB1_317:                              //  %if.then829.us
                                        //    in Loop: Header=BB1_312 Depth=1
	add x23, x10, x23
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_322
.LBB1_318:                              //  %land.lhs.true837.us
                                        //    in Loop: Header=BB1_312 Depth=1
	lw x10, -296 ( fp )             //  4-byte Folded Reload
	sub x21, x23, x10
	jal __locale_mb_cur_max
	lw x11, -300 ( fp )             //  4-byte Folded Reload
	bgeu x21, x11, .LBB1_320
.LBB1_319:                              //  %land.lhs.true837.us
                                        //    in Loop: Header=BB1_312 Depth=1
	sub x10, x11, x10
	bltu x21, x10, .LBB1_322
.LBB1_320:                              //  %if.then845.us
                                        //    in Loop: Header=BB1_312 Depth=1
	lw x10, -296 ( fp )             //  4-byte Folded Reload
	sll x11, x11, 1&31
	sw x11, -300 ( fp )             //  4-byte Folded Spill
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB1_400
.LBB1_321:                              //  %if.end851.us
                                        //    in Loop: Header=BB1_312 Depth=1
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	add x23, x21, x11
	sw x11, -296 ( fp )             //  4-byte Folded Spill
	sw x11, 0 ( x10 )
.LBB1_322:                              //  %if.end860.us
                                        //    in Loop: Header=BB1_312 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x21, x10
	xor x11, x21, -1
	snez x10, x11
	beq x0, x25, .LBB1_326
.LBB1_323:                              //  %if.end860.us
                                        //    in Loop: Header=BB1_312 Depth=1
	beq x0, x11, .LBB1_326
.LBB1_324:                              //  %land.rhs790.us
                                        //    in Loop: Header=BB1_312 Depth=1
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	lw x12, -292 ( fp )             //  4-byte Folded Reload
	mv x11, x21
	jal wmemchr
	add x26, x26, 1
	bltu x0, x10, .LBB1_312
.LBB1_325:                              //  %if.then865.loopexit
	add x26, x26, -1
	jal x0, .LBB1_370
.LBB1_326:                              //  %while.end862
	bltu x0, x10, .LBB1_370
	jal x0, .LBB1_371
.LBB1_327:                              //  %if.then1094
	add x11, x10, 8
	lw x10, -280 ( fp )             //  4-byte Folded Reload
	bltu x10, x11, .LBB1_405
.LBB1_328:                              //  %if.end1114
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_405
.LBB1_329:                              //  %cleanup1123
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB1_330:                              //  %if.end1126
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -288 ( fp )             //  4-byte Folded Reload
	mv x13, x0
	sw x21, -292 ( fp )             //  4-byte Folded Spill
	add x23, x0, 32
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
.LBB1_331:                              //  %if.end1138
	add x10, fp, -64
	mv x11, x13
	add x12, x0, 8
	jal memset
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x24, x10
	xor x11, x24, -1
	snez x10, x11
	beq x0, x25, .LBB1_382
.LBB1_332:                              //  %if.end1138
	beq x0, x11, .LBB1_382
.LBB1_333:                              //  %land.rhs1147.lr.ph
	beq x0, x26, .LBB1_342
.LBB1_334:                              //  %land.rhs1147.us
	mv x10, x24
	jal iswspace
	bltu x0, x10, .LBB1_383
.LBB1_335:                              //  %while.body1152.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x21
	mv x11, x24
	add x12, fp, -64
	jal wcrtomb
	beq x0, x10, .LBB1_337
.LBB1_336:                              //  %while.body1152.us
                                        //    in Loop: Header=BB1_335 Depth=1
	xor x10, x10, -1
	bltu x0, x10, .LBB1_338
	jal x0, .LBB1_396
.LBB1_337:                              //  %lor.lhs.false1160.us
                                        //    in Loop: Header=BB1_335 Depth=1
	lw x10, -64 ( fp )
	xor x10, x10, -4
	beq x0, x10, .LBB1_339
.LBB1_338:                              //  %if.then1164.us
                                        //    in Loop: Header=BB1_335 Depth=1
	add x25, x25, -1
.LBB1_339:                              //  %if.end1200.us
                                        //    in Loop: Header=BB1_335 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x24, x10
	xor x10, x24, -1
	beq x0, x25, .LBB1_381
.LBB1_340:                              //  %if.end1200.us
                                        //    in Loop: Header=BB1_335 Depth=1
	beq x0, x10, .LBB1_381
.LBB1_341:                              //  %land.rhs1147.us
                                        //    in Loop: Header=BB1_335 Depth=1
	add x22, x22, 1
	mv x10, x24
	jal iswspace
	beq x0, x10, .LBB1_335
	jal x0, .LBB1_383
.LBB1_342:                              //  %land.rhs1147
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x24
	jal iswspace
	bltu x0, x10, .LBB1_383
.LBB1_343:                              //  %while.body1152
                                        //    in Loop: Header=BB1_342 Depth=1
	mv x10, x21
	mv x11, x24
	add x12, fp, -64
	jal wcrtomb
	beq x0, x10, .LBB1_345
.LBB1_344:                              //  %while.body1152
                                        //    in Loop: Header=BB1_342 Depth=1
	xor x11, x10, -1
	bltu x0, x11, .LBB1_346
	jal x0, .LBB1_396
.LBB1_345:                              //  %lor.lhs.false1160
                                        //    in Loop: Header=BB1_342 Depth=1
	lw x11, -64 ( fp )
	xor x11, x11, -4
	beq x0, x11, .LBB1_347
.LBB1_346:                              //  %if.then1164
                                        //    in Loop: Header=BB1_342 Depth=1
	add x25, x25, -1
.LBB1_347:                              //  %if.then1169
                                        //    in Loop: Header=BB1_342 Depth=1
	add x21, x10, x21
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_352
.LBB1_348:                              //  %land.lhs.true1177
                                        //    in Loop: Header=BB1_342 Depth=1
	lw x10, -292 ( fp )             //  4-byte Folded Reload
	sub x24, x21, x10
	jal __locale_mb_cur_max
	bgeu x24, x23, .LBB1_350
.LBB1_349:                              //  %land.lhs.true1177
                                        //    in Loop: Header=BB1_342 Depth=1
	sub x10, x23, x10
	bltu x24, x10, .LBB1_352
.LBB1_350:                              //  %if.then1185
                                        //    in Loop: Header=BB1_342 Depth=1
	lw x10, -292 ( fp )             //  4-byte Folded Reload
	sll x23, x23, 1&31
	mv x11, x23
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB1_400
.LBB1_351:                              //  %if.end1191
                                        //    in Loop: Header=BB1_342 Depth=1
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	add x21, x24, x11
	sw x11, -292 ( fp )             //  4-byte Folded Spill
	sw x11, 0 ( x10 )
.LBB1_352:                              //  %if.end1200
                                        //    in Loop: Header=BB1_342 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x24, x10
	xor x11, x24, -1
	add x22, x22, 1
	snez x10, x11
	beq x0, x25, .LBB1_382
.LBB1_353:                              //  %if.end1200
                                        //    in Loop: Header=BB1_342 Depth=1
	bltu x0, x11, .LBB1_342
	jal x0, .LBB1_382
.LBB1_354:                              //  %if.end1043.loopexit
	add x24, x24, 4
	sw x24, -236 ( fp )             //  4-byte Folded Spill
	mv x24, x26
	mv x26, x21
	lw x21, -288 ( fp )             //  4-byte Folded Reload
	add x22, x22, 1
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	bltu x0, x24, .LBB1_258
	jal x0, .LBB1_261
.LBB1_355:                              //  %if.then1307.split.loop.exit5344
	sw x10, -232 ( fp )             //  4-byte Folded Spill
.LBB1_356:                              //  %if.then1307
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	mv x13, x0
.LBB1_357:                              //  %for.body.for.end.loopexit_crit_edge
	mv x24, x26
	lw x26, -284 ( fp )             //  4-byte Folded Reload
	and x10, x21, 256
	add x25, x0, -1
	bltu x0, x10, .LBB1_411
.LBB1_358:                              //  %if.end1322
	lw x11, -4 ( x24 )
	or x10, x11, 32
	xor x10, x10, 120
	bltu x0, x10, .LBB1_360
.LBB1_359:                              //  %if.then1329
	mv x10, x19
	mv x12, x18
	add x24, x24, -4
	jal _ungetwc_r
	mv x13, x0
.LBB1_360:                              //  %if.end1332
	and x10, x21, 16
	bltu x0, x10, .LBB1_394
.LBB1_361:                              //  %if.then1336
	mv x12, x13
	lw x13, -232 ( fp )             //  4-byte Folded Reload
	lw x14, -252 ( fp )             //  4-byte Folded Reload
	mv x10, x19
	add x11, fp, -224
	sw x0, 0 ( x24 )
	call.reg x14
	and x11, x21, 32
	bltu x0, x11, .LBB1_366
.LBB1_362:                              //  %if.else1343
	and x11, x21, 8
	mv x12, x0
	bltu x0, x11, .LBB1_367
.LBB1_363:                              //  %if.else1349
	and x11, x21, 4
	bltu x0, x11, .LBB1_368
.LBB1_364:                              //  %if.else1355
	and x11, x21, 1
	bltu x0, x11, .LBB1_366
.LBB1_365:                              //  %if.else1360
	and x11, x21, 2
	bltu x0, x11, .LBB1_377
.LBB1_366:                              //  %if.else1374
	lw x11, -56 ( fp )
	add x12, x11, 4
	sw x12, -56 ( fp )
	lw x11, 0 ( x11 )
	sw x10, 0 ( x11 )
	jal x0, .LBB1_393
.LBB1_367:                              //  %if.then1346
	lw x11, -56 ( fp )
	add x12, x11, 4
	sw x12, -56 ( fp )
	lw x11, 0 ( x11 )
	sb x10, 0 ( x11 )
	jal x0, .LBB1_393
.LBB1_368:                              //  %if.then1352
	lw x11, -56 ( fp )
	add x12, x11, 4
	sw x12, -56 ( fp )
	lw x11, 0 ( x11 )
	sh x10, 0 ( x11 )
	jal x0, .LBB1_393
.LBB1_369:
	mv x26, x0
.LBB1_370:                              //  %if.then865
	mv x10, x19
	mv x11, x21
	mv x12, x18
	jal _ungetwc_r
.LBB1_371:                              //  %if.end867
	add x25, x0, -1
	bltu x0, x24, .LBB1_395
.LBB1_372:                              //  %if.then870
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sb x0, 0 ( x23 )
	beq x0, x10, .LBB1_376
.LBB1_373:                              //  %if.then870
	lw x10, -296 ( fp )             //  4-byte Folded Reload
	sub x10, x23, x10
	add x11, x10, 1
	lw x10, -300 ( fp )             //  4-byte Folded Reload
	bgeu x11, x10, .LBB1_376
.LBB1_374:                              //  %if.then880
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB1_376
.LBB1_375:                              //  %if.then885
	lw x11, -288 ( fp )             //  4-byte Folded Reload
	sw x10, 0 ( x11 )
.LBB1_376:                              //  %if.end887
	lw x10, -284 ( fp )             //  4-byte Folded Reload
	add x10, x10, 1
	sw x10, -284 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_395
.LBB1_377:                              //  %if.then1363
	lw x10, -260 ( fp )             //  4-byte Folded Reload
	lw x11, -252 ( fp )             //  4-byte Folded Reload
	beq x11, x10, .LBB1_391
.LBB1_378:                              //  %if.else1369
	lw x13, -232 ( fp )             //  4-byte Folded Reload
	mv x10, x19
	add x11, fp, -224
	jal _wcstoll_r
	jal x0, .LBB1_392
.LBB1_379:                              //  %if.then178
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sra x11, x22, 31&31
	sw x11, 4 ( x10 )
	sw x22, 0 ( x10 )
	lw x21, 0 ( x27 )
	beq x0, x21, .LBB1_439
.LBB1_440:                              //  %if.then178
	jal x0, .LBB1_7
.LBB1_439:                              //  %if.then178
	jal x0, .LBB1_403
.LBB1_380:                              //  %if.end682.loopexit22
	add x10, x26, 4
	lw x23, -236 ( fp )             //  4-byte Folded Reload
	lw x26, -284 ( fp )             //  4-byte Folded Reload
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	lw x11, -236 ( fp )             //  4-byte Folded Reload
	sub x10, x11, x23
	bltu x0, x10, .LBB1_282
	jal x0, .LBB1_403
.LBB1_381:                              //  %while.end1202.loopexit
	snez x10, x10
	add x22, x22, 1
.LBB1_382:                              //  %while.end1202
	beq x0, x10, .LBB1_384
.LBB1_383:                              //  %if.then1205
	mv x10, x19
	mv x11, x24
	mv x12, x18
	jal _ungetwc_r
.LBB1_384:                              //  %if.end1207
	add x25, x0, -1
	beq x0, x26, .LBB1_386
.LBB1_385:
	lw x26, -284 ( fp )             //  4-byte Folded Reload
	lw x21, 0 ( x27 )
	beq x0, x21, .LBB1_441
.LBB1_442:
	jal x0, .LBB1_7
.LBB1_441:
	jal x0, .LBB1_403
.LBB1_386:                              //  %if.then1210
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sb x0, 0 ( x21 )
	beq x0, x10, .LBB1_390
.LBB1_387:                              //  %if.then1210
	lw x10, -292 ( fp )             //  4-byte Folded Reload
	sub x10, x21, x10
	add x11, x10, 1
	bgeu x11, x23, .LBB1_390
.LBB1_388:                              //  %if.then1220
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB1_390
.LBB1_389:                              //  %if.then1225
	lw x11, -288 ( fp )             //  4-byte Folded Reload
	sw x10, 0 ( x11 )
.LBB1_390:                              //  %if.end1227
	lw x26, -284 ( fp )             //  4-byte Folded Reload
	add x26, x26, 1
	lw x21, 0 ( x27 )
	beq x0, x21, .LBB1_443
.LBB1_444:                              //  %if.end1227
	jal x0, .LBB1_7
.LBB1_443:                              //  %if.end1227
	jal x0, .LBB1_403
.LBB1_391:                              //  %if.then1366
	lw x13, -232 ( fp )             //  4-byte Folded Reload
	mv x10, x19
	add x11, fp, -224
	jal _wcstoull_r
.LBB1_392:                              //  %if.end1372
	lw x12, -56 ( fp )
	add x13, x12, 4
	sw x13, -56 ( fp )
	lw x12, 0 ( x12 )
	sw x11, 4 ( x12 )
	sw x10, 0 ( x12 )
.LBB1_393:                              //  %if.end1380
	add x26, x26, 1
	sw x26, -284 ( fp )             //  4-byte Folded Spill
.LBB1_394:                              //  %if.end1382
	add x10, fp, -224
	sub x10, x24, x10
	sra x26, x10, 2&31
	sw x24, -236 ( fp )             //  4-byte Folded Spill
.LBB1_395:                              //  %sw.epilog1389
	add x22, x22, x26
	lw x21, 0 ( x27 )
	lw x26, -284 ( fp )             //  4-byte Folded Reload
	beq x0, x21, .LBB1_445
.LBB1_446:                              //  %sw.epilog1389
	jal x0, .LBB1_7
.LBB1_445:                              //  %sw.epilog1389
	jal x0, .LBB1_403
.LBB1_396:                              //  %input_failure.loopexit30
	lw x26, -284 ( fp )             //  4-byte Folded Reload
.LBB1_397:                              //  %input_failure
	add x25, x0, -1
.LBB1_398:                              //  %input_failure
	beq x0, x26, .LBB1_402
.LBB1_399:                              //  %land.lhs.true1391
	lbu x10, 12 ( x18 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB1_403
.LBB1_400:                              //  %land.lhs.true1391
	add x26, x0, -1
	bltu x0, x20, .LBB1_404
	jal x0, .LBB1_410
.LBB1_415:
	lw x26, -284 ( fp )             //  4-byte Folded Reload
	bltu x0, x26, .LBB1_399
.LBB1_402:
	mv x26, x25
.LBB1_403:                              //  %all_done
	beq x0, x20, .LBB1_410
.LBB1_404:                              //  %if.then1414
	xor x10, x26, -1
	bltu x0, x10, .LBB1_408
.LBB1_405:                              //  %for.cond1418.preheader
	lhu x10, 6 ( x20 )
	add x26, x0, -1
	beq x0, x10, .LBB1_408
.LBB1_406:                              //  %for.body1423.lr.ph
	mv x9, x0
	mv x18, x9
.LBB1_407:                              //  %for.body1423
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x20 )
	add x10, x9, x10
	lw x10, 0 ( x10 )
	lw x10, 0 ( x10 )
	jal free
	lw x10, 0 ( x20 )
	add x18, x18, 1
	add x10, x9, x10
	lw x10, 0 ( x10 )
	add x9, x9, 4
	sw x0, 0 ( x10 )
	lhu x10, 6 ( x20 )
	bltu x18, x10, .LBB1_407
.LBB1_408:                              //  %if.end1431
	lw x10, 0 ( x20 )
	beq x0, x10, .LBB1_410
.LBB1_409:                              //  %if.then1434
	jal free
.LBB1_410:                              //  %cleanup1440
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
.LBB1_411:                              //  %if.then1314
	beq x0, x23, .LBB1_403
.LBB1_412:                              //  %if.then1318
	lw x11, -4 ( x24 )
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	bltu x0, x20, .LBB1_404
	jal x0, .LBB1_410
.LBB1_413:                              //  %if.then42
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	bltu x0, x26, .LBB1_399
	jal x0, .LBB1_402
.LBB1_414:
	lw x26, -284 ( fp )             //  4-byte Folded Reload
	bltu x0, x20, .LBB1_404
	jal x0, .LBB1_410
.LBB1_417:
	mv x26, x25
	bltu x0, x20, .LBB1_404
	jal x0, .LBB1_410
.Lfunc_end1:
	.size	__svfiwscanf_r, .Lfunc_end1-__svfiwscanf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_38
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_31
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_27
	.long	.LBB1_27
	.long	.LBB1_27
	.long	.LBB1_27
	.long	.LBB1_27
	.long	.LBB1_27
	.long	.LBB1_27
	.long	.LBB1_27
	.long	.LBB1_27
	.long	.LBB1_27
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_41
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_29
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_43
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_37
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_44
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_42
	.long	.LBB1_46
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_17
	.long	.LBB1_47
	.long	.LBB1_29
	.long	.LBB1_403
	.long	.LBB1_20
	.long	.LBB1_33
	.long	.LBB1_48
	.long	.LBB1_54
	.long	.LBB1_55
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_57
	.long	.LBB1_16
	.long	.LBB1_58
	.long	.LBB1_403
	.long	.LBB1_403
	.long	.LBB1_37
	.long	.LBB1_403
	.long	.LBB1_16
JTI1_1:
	.long	.LBB1_72
	.long	.LBB1_83
	.long	.LBB1_94
	.long	.LBB1_104
JTI1_2:
	.long	.LBB1_357
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_114
	.long	.LBB1_356
	.long	.LBB1_114
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_121
	.long	.LBB1_108
	.long	.LBB1_108
	.long	.LBB1_108
	.long	.LBB1_108
	.long	.LBB1_108
	.long	.LBB1_108
	.long	.LBB1_108
	.long	.LBB1_116
	.long	.LBB1_116
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_112
	.long	.LBB1_112
	.long	.LBB1_112
	.long	.LBB1_112
	.long	.LBB1_112
	.long	.LBB1_112
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_118
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_112
	.long	.LBB1_112
	.long	.LBB1_112
	.long	.LBB1_112
	.long	.LBB1_112
	.long	.LBB1_112
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_356
	.long	.LBB1_118
                                        //  -- End function
	.text
	.globl	__svfiwscanf            //  -- Begin function __svfiwscanf
	.type	__svfiwscanf,@function
__svfiwscanf:                           //  @__svfiwscanf
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
	j __svfiwscanf_r
.Lfunc_end2:
	.size	__svfiwscanf, .Lfunc_end2-__svfiwscanf
	.cfi_endproc
                                        //  -- End function
	.globl	_vfiwscanf_r            //  -- Begin function _vfiwscanf_r
	.type	_vfiwscanf_r,@function
_vfiwscanf_r:                           //  @_vfiwscanf_r
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
	j __svfiwscanf_r
.Lfunc_end3:
	.size	_vfiwscanf_r, .Lfunc_end3-_vfiwscanf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	__svfiwscanf_r.basefix,@object //  @__svfiwscanf_r.basefix
	.section	.rodata,"a",@progbits
	.p2align	1
__svfiwscanf_r.basefix:
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
	.size	__svfiwscanf_r.basefix, 34


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
