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
	sw x26, -44 ( fp )              //  4-byte Folded Spill
	.cfi_offset 26, -60
	mv x26, x12
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
	sw x27, -48 ( fp )              //  4-byte Folded Spill
	.cfi_offset 27, -64
	sw x13, -56 ( fp )
	bltu x0, x12, .LBB1_2
.LBB1_1:                                //  %if.then7
	or x11, x10, x11
	sh x11, 12 ( x18 )
	lw x11, 100 ( x18 )
	or x10, x10, x11
	sw x10, 100 ( x18 )
.LBB1_2:                                //  %do.end
	lw x27, 0 ( x26 )
	beq x0, x27, .LBB1_9
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
	add x21, x0, -1
	mv x23, x11
	mv x24, x11
	sw x10, -272 ( fp )             //  4-byte Folded Spill
	sw x11, -236 ( fp )             //  4-byte Folded Spill
	sw x11, -232 ( fp )             //  4-byte Folded Spill
	sw x11, -252 ( fp )             //  4-byte Folded Spill
	sw x11, -244 ( fp )             //  4-byte Folded Spill
	sw x11, -268 ( fp )             //  4-byte Folded Spill
	sw x11, -264 ( fp )             //  4-byte Folded Spill
	mv x10, x27
	add x26, x26, 4
	jal iswspace
	bltu x0, x10, .LBB1_13
	jal x0, .LBB1_4
.LBB1_9:
	mv x23, x0
	jal x0, .LBB1_416
.LBB1_10:                               //  %if.then926
	mv x10, x19
	mv x11, x22
	mv x12, x18
	jal _ungetwc_r
	add x21, x0, -1
.LBB1_11:                               //  %if.end28
	lw x27, 0 ( x26 )
	bltu x0, x27, .LBB1_12
.LBB1_419:                              //  %if.end28
	jal x0, .LBB1_409
.LBB1_12:                               //  %if.end16
	mv x10, x27
	add x26, x26, 4
	jal iswspace
	beq x0, x10, .LBB1_4
.LBB1_13:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x22, x10
	xor x10, x22, -1
	beq x0, x10, .LBB1_11
.LBB1_14:                               //  %land.rhs
                                        //    in Loop: Header=BB1_13 Depth=1
	mv x10, x22
	jal iswspace
	bltu x0, x10, .LBB1_13
.LBB1_15:                               //  %if.then26
	mv x10, x19
	mv x11, x22
	mv x12, x18
	jal _ungetwc_r
	lw x27, 0 ( x26 )
	bltu x0, x27, .LBB1_12
	jal x0, .LBB1_409
.LBB1_4:                                //  %if.end29
	xor x10, x27, 37
	bltu x0, x10, .LBB1_39
.LBB1_5:                                //  %again.preheader
	mv x25, x0
	mv x22, x25
.LBB1_6:                                //  %again
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_7 Depth 2
                                        //        Child Loop BB1_8 Depth 3
	mv x10, x26
.LBB1_7:                                //  %again
                                        //    Parent Loop BB1_6 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_8 Depth 3
	lw x27, 0 ( x10 )
	add x12, x0, 85
	add x11, x27, -37
	bgeu x12, x11, .LBB1_8
.LBB1_420:                              //  %again
	jal x0, .LBB1_409
.LBB1_8:                                //  %again
                                        //    Parent Loop BB1_6 Depth=1
                                        //      Parent Loop BB1_7 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sll x11, x11, 2&31
	add x11, x9, x11
	lw x11, 0 ( x11 )
	add x26, x10, 4
	jr x11
.LBB1_16:                               //  %sw.bb94
                                        //    in Loop: Header=BB1_7 Depth=2
	and x11, x25, 15
	mv x10, x26
	beq x0, x11, .LBB1_7
	jal x0, .LBB1_409
.LBB1_17:                               //  %sw.bb70
                                        //    in Loop: Header=BB1_8 Depth=3
	and x11, x25, 15
	beq x0, x11, .LBB1_18
.LBB1_421:                              //  %sw.bb70
	jal x0, .LBB1_409
.LBB1_18:                               //  %if.end74
                                        //    in Loop: Header=BB1_8 Depth=3
	lw x11, 4 ( x10 )
	add x12, x0, 104
	beq x11, x12, .LBB1_24
.LBB1_19:                               //  %if.end74
                                        //    in Loop: Header=BB1_8 Depth=3
	add x11, x0, 4
	jal x0, .LBB1_23
.LBB1_20:                               //  %sw.bb52
                                        //    in Loop: Header=BB1_8 Depth=3
	and x11, x25, 15
	beq x0, x11, .LBB1_21
.LBB1_422:                              //  %sw.bb52
	jal x0, .LBB1_409
.LBB1_21:                               //  %if.end56
                                        //    in Loop: Header=BB1_8 Depth=3
	lw x11, 4 ( x10 )
	add x12, x0, 108
	beq x11, x12, .LBB1_25
.LBB1_22:                               //  %if.end56
                                        //    in Loop: Header=BB1_8 Depth=3
	seqz x11, x0
.LBB1_23:                               //  %if.end56
                                        //    in Loop: Header=BB1_8 Depth=3
	mv x10, x26
	jal x0, .LBB1_27
.LBB1_24:                               //    in Loop: Header=BB1_8 Depth=3
	add x11, x0, 8
	jal x0, .LBB1_26
.LBB1_25:                               //    in Loop: Header=BB1_8 Depth=3
	add x11, x0, 2
.LBB1_26:                               //    in Loop: Header=BB1_8 Depth=3
	add x10, x10, 8
.LBB1_27:                               //    in Loop: Header=BB1_8 Depth=3
	or x25, x25, x11
	lw x27, 0 ( x10 )
	add x12, x0, 85
	add x11, x27, -37
	bgeu x12, x11, .LBB1_8
	jal x0, .LBB1_409
.LBB1_28:                               //  %sw.bb111
                                        //    in Loop: Header=BB1_6 Depth=1
	and x10, x25, 143
	beq x0, x10, .LBB1_29
.LBB1_423:                              //  %sw.bb111
	jal x0, .LBB1_409
.LBB1_29:                               //  %if.end115
                                        //    in Loop: Header=BB1_6 Depth=1
	mv x10, x22
	add x11, x0, 10
	jal __mulsi3
	add x10, x27, x10
	add x22, x10, -48
	jal x0, .LBB1_6
.LBB1_30:                               //  %sw.bb64
                                        //    in Loop: Header=BB1_6 Depth=1
	and x10, x25, 15
	beq x0, x10, .LBB1_31
.LBB1_424:                              //  %sw.bb64
	jal x0, .LBB1_409
.LBB1_31:                               //  %if.end68
                                        //    in Loop: Header=BB1_6 Depth=1
	or x25, x25, 2
	jal x0, .LBB1_6
.LBB1_32:                               //  %sw.bb45
                                        //    in Loop: Header=BB1_6 Depth=1
	and x10, x25, 159
	or x10, x22, x10
	beq x0, x10, .LBB1_33
.LBB1_425:                              //  %sw.bb45
	jal x0, .LBB1_409
.LBB1_33:                               //  %if.end50
                                        //    in Loop: Header=BB1_6 Depth=1
	or x25, x25, 16
	mv x22, x0
	jal x0, .LBB1_6
.LBB1_34:                               //  %sw.bb99
                                        //    in Loop: Header=BB1_6 Depth=1
	and x10, x25, 143
	beq x0, x10, .LBB1_35
.LBB1_426:                              //  %sw.bb99
	jal x0, .LBB1_409
.LBB1_35:                               //  %do.body104
                                        //    in Loop: Header=BB1_6 Depth=1
	bltu x0, x20, .LBB1_37
.LBB1_36:                               //  %if.then106
                                        //    in Loop: Header=BB1_6 Depth=1
	mv x10, sp
	add x20, x10, -16
	mv sp, x20
	sw x0, -12 ( x10 )
	sw x0, -16 ( x10 )
.LBB1_37:                               //  %do.end109
                                        //    in Loop: Header=BB1_6 Depth=1
	or x25, x25, 128
	jal x0, .LBB1_6
.LBB1_38:                               //  %sw.bb120
	or x25, x25, 512
	jal x0, .LBB1_58
.LBB1_39:                               //  %literal
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x11, x10
	xor x10, x11, -1
	bltu x0, x10, .LBB1_40
.LBB1_427:                              //  %literal
	jal x0, .LBB1_351
.LBB1_40:                               //  %if.end39
	beq x11, x27, .LBB1_41
.LBB1_428:                              //  %if.end39
	jal x0, .LBB1_407
.LBB1_41:                               //  %if.end44
	add x24, x24, 1
	lw x27, 0 ( x26 )
	bltu x0, x27, .LBB1_12
	jal x0, .LBB1_409
.LBB1_42:                               //  %sw.bb149
	or x25, x25, 1
.LBB1_43:                               //  %sw.bb151
	mv x27, x0
	or x25, x25, 64
	mv x21, x27
	and x10, x25, 64
	sw x23, -284 ( fp )             //  4-byte Folded Spill
	beq x0, x10, .LBB1_62
	jal x0, .LBB1_66
.LBB1_44:                               //  %sw.bb122
	or x25, x25, 1
.LBB1_45:                               //  %sw.epilog.loopexit4683
	add x21, x0, 2
	mv x27, x0
	and x10, x25, 64
	sw x23, -284 ( fp )             //  4-byte Folded Spill
	beq x0, x10, .LBB1_62
	jal x0, .LBB1_66
.LBB1_46:                               //  %sw.bb125
	lw x11, 4 ( x10 )
	add x12, x0, 94
	beq x11, x12, .LBB1_142
.LBB1_47:                               //  %sw.bb125
	add x12, x0, 4
	sw x26, -244 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_143
.LBB1_48:                               //  %sw.epilog.loopexit
	lw x10, -272 ( fp )             //  4-byte Folded Reload
	jal x0, .LBB1_60
.LBB1_49:                               //  %sw.epilog.loopexit3083
	lw x10, -272 ( fp )             //  4-byte Folded Reload
	mv x27, x0
	sw x27, -232 ( fp )             //  4-byte Folded Spill
	add x21, x0, 3
	sw x10, -252 ( fp )             //  4-byte Folded Spill
	and x10, x25, 64
	sw x23, -284 ( fp )             //  4-byte Folded Spill
	beq x0, x10, .LBB1_62
	jal x0, .LBB1_66
.LBB1_50:                               //  %sw.bb155
	and x10, x25, 16
	bltu x0, x10, .LBB1_11
.LBB1_51:                               //  %if.end159
	and x10, x25, 8
	bltu x0, x10, .LBB1_178
.LBB1_52:                               //  %if.else164
	and x10, x25, 4
	bltu x0, x10, .LBB1_266
.LBB1_53:                               //  %if.else170
	and x10, x25, 1
	bltu x0, x10, .LBB1_55
.LBB1_54:                               //  %if.else175
	and x10, x25, 2
	beq x0, x10, .LBB1_55
.LBB1_429:                              //  %if.else175
	jal x0, .LBB1_387
.LBB1_55:                               //  %if.then173
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x24, 0 ( x10 )
	lw x27, 0 ( x26 )
	bltu x0, x27, .LBB1_12
	jal x0, .LBB1_409
.LBB1_56:                               //  %sw.epilog.loopexit3673
	lw x10, -260 ( fp )             //  4-byte Folded Reload
	sw x10, -252 ( fp )             //  4-byte Folded Spill
	add x10, x0, 8
	jal x0, .LBB1_61
.LBB1_57:                               //  %sw.bb153
	or x25, x25, 544
.LBB1_58:                               //  %sw.epilog
	lw x10, -260 ( fp )             //  4-byte Folded Reload
	sw x10, -252 ( fp )             //  4-byte Folded Spill
	add x10, x0, 16
	jal x0, .LBB1_61
.LBB1_59:                               //  %sw.epilog.loopexit4176
	lw x10, -260 ( fp )             //  4-byte Folded Reload
.LBB1_60:                               //  %sw.epilog
	sw x10, -252 ( fp )             //  4-byte Folded Spill
	add x10, x0, 10
.LBB1_61:                               //  %sw.epilog
	add x21, x0, 3
	sw x10, -232 ( fp )             //  4-byte Folded Spill
	mv x27, x0
	and x10, x25, 64
	sw x23, -284 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB1_66
.LBB1_62:                               //  %while.cond191.preheader
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x23, x10
	xor x10, x23, -1
	bltu x0, x10, .LBB1_63
.LBB1_430:                              //  %while.cond191.preheader
	jal x0, .LBB1_349
.LBB1_63:                               //  %land.rhs195
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x23
	jal iswspace
	beq x0, x10, .LBB1_65
.LBB1_64:                               //  %while.body199
                                        //    in Loop: Header=BB1_63 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x23, x10
	add x24, x24, 1
	xor x10, x23, -1
	bltu x0, x10, .LBB1_63
	jal x0, .LBB1_349
.LBB1_65:                               //  %if.end205
	mv x10, x19
	mv x11, x23
	mv x12, x18
	jal _ungetwc_r
	lw x23, -284 ( fp )             //  4-byte Folded Reload
.LBB1_66:                               //  %if.end207
	lw x11, -248 ( fp )             //  4-byte Folded Reload
	sll x10, x21, 2&31
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB1_67:                               //  %sw.bb208
	mv x10, x27
	seqz x27, x0
	beq x22, x10, .LBB1_69
.LBB1_68:                               //  %sw.bb208
	mv x27, x22
.LBB1_69:                               //  %sw.bb208
	and x21, x25, 16
	and x10, x25, 1
	sw x21, -300 ( fp )             //  4-byte Folded Spill
	bltu x0, x10, .LBB1_120
.LBB1_70:                               //  %if.else341
	beq x0, x21, .LBB1_130
.LBB1_71:                               //  %land.rhs413.us.preheader
	add x22, fp, -64
	mv x21, x0
	mv x10, x22
	mv x11, x21
	add x12, x0, 8
	jal memset
	add x25, fp, -225
	jal x0, .LBB1_75
.LBB1_72:                               //  %while.body418.us
                                        //    in Loop: Header=BB1_75 Depth=1
	xor x10, x10, -1
	bltu x0, x10, .LBB1_73
.LBB1_431:                              //  %while.body418.us
	jal x0, .LBB1_350
.LBB1_73:                               //  %if.then429.us
                                        //    in Loop: Header=BB1_75 Depth=1
	add x27, x27, -1
.LBB1_74:                               //  %if.end465.us
                                        //    in Loop: Header=BB1_75 Depth=1
	add x21, x21, 1
	beq x0, x27, .LBB1_217
.LBB1_75:                               //  %land.rhs413.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x12, x10
	xor x10, x12, -1
	beq x0, x10, .LBB1_179
.LBB1_76:                               //  %while.body418.us
                                        //    in Loop: Header=BB1_75 Depth=1
	mv x10, x19
	mv x11, x25
	mv x13, x22
	jal _wcrtomb_r
	bltu x0, x10, .LBB1_72
.LBB1_77:                               //  %lor.lhs.false426.us
                                        //    in Loop: Header=BB1_75 Depth=1
	lw x10, -64 ( fp )
	xor x10, x10, -4
	bltu x0, x10, .LBB1_73
	jal x0, .LBB1_74
.LBB1_78:                               //  %sw.bb500
	add x21, x0, -1
	mv x23, x21
	beq x22, x27, .LBB1_80
.LBB1_79:                               //  %sw.bb500
	mv x23, x22
.LBB1_80:                               //  %sw.bb500
	and x11, x25, 16
	and x10, x25, 1
	beq x0, x10, .LBB1_124
.LBB1_81:                               //  %sw.bb500
	beq x0, x11, .LBB1_124
.LBB1_82:                               //  %while.cond511.preheader
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x22, x10
	xor x10, x22, -1
	bltu x0, x10, .LBB1_83
.LBB1_432:                              //  %while.cond511.preheader
	jal x0, .LBB1_418
.LBB1_83:                               //  %land.lhs.true515.lr.ph
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	lw x11, -268 ( fp )             //  4-byte Folded Reload
	sub x10, x11, x10
	sra x25, x10, 2&31
	lw x10, -264 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_151
.LBB1_84:                               //  %land.lhs.true515.preheader
	mv x21, x27
	lw x27, -244 ( fp )             //  4-byte Folded Reload
.LBB1_85:                               //  %land.lhs.true515
                                        //  =>This Inner Loop Header: Depth=1
	beq x23, x21, .LBB1_156
.LBB1_86:                               //  %land.rhs519
                                        //    in Loop: Header=BB1_85 Depth=1
	mv x10, x27
	mv x11, x22
	mv x12, x25
	jal wmemchr
	bltu x0, x10, .LBB1_156
.LBB1_87:                               //  %while.body540
                                        //    in Loop: Header=BB1_85 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x22, x10
	add x21, x21, 1
	xor x10, x22, -1
	bltu x0, x10, .LBB1_85
	jal x0, .LBB1_155
.LBB1_88:                               //  %sw.bb898
	add x21, x0, -1
	beq x22, x27, .LBB1_90
.LBB1_89:                               //  %sw.bb898
	mv x21, x22
.LBB1_90:                               //  %sw.bb898
	and x23, x25, 16
	and x10, x25, 1
	beq x0, x10, .LBB1_127
.LBB1_91:                               //  %sw.bb898
	beq x0, x23, .LBB1_127
.LBB1_92:                               //  %while.cond909.preheader
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x22, x10
	xor x10, x22, -1
	beq x0, x10, .LBB1_150
.LBB1_93:                               //  %land.lhs.true913.preheader
	lw x23, -284 ( fp )             //  4-byte Folded Reload
.LBB1_94:                               //  %land.lhs.true913
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x21, .LBB1_10
.LBB1_95:                               //  %land.rhs917
                                        //    in Loop: Header=BB1_94 Depth=1
	mv x10, x22
	jal iswspace
	bltu x0, x10, .LBB1_10
.LBB1_96:                               //  %while.body921
                                        //    in Loop: Header=BB1_94 Depth=1
	mv x10, x19
	mv x11, x18
	add x21, x21, -1
	jal _fgetwc_r
	mv x22, x10
	add x24, x24, 1
	xor x10, x22, -1
	bltu x0, x10, .LBB1_94
.LBB1_97:
	add x21, x0, -1
	lw x27, 0 ( x26 )
	bltu x0, x27, .LBB1_12
	jal x0, .LBB1_409
.LBB1_98:                               //  %sw.bb1237
	add x10, x22, -1
	add x23, x0, 39
	add x11, x0, 38
	bltu x11, x10, .LBB1_100
.LBB1_99:                               //  %sw.bb1237
	mv x23, x22
.LBB1_100:                              //  %sw.bb1237
	or x21, x25, 1408
	beq x0, x23, .LBB1_404
.LBB1_101:                              //  %for.body.preheader
	add x25, fp, -224
	mv x22, x27
	jal x0, .LBB1_104
.LBB1_102:                              //  %sw.bb1263
                                        //    in Loop: Header=BB1_104 Depth=1
	lw x10, -232 ( fp )             //  4-byte Folded Reload
	lw x12, -256 ( fp )             //  4-byte Folded Reload
	and x21, x21, -897
	sll x10, x10, 1&31
	add x10, x10, x12
	lh x10, 0 ( x10 )
.LBB1_103:                              //  %ok
                                        //    in Loop: Header=BB1_104 Depth=1
	sw x10, -232 ( fp )             //  4-byte Folded Spill
	sw x11, 0 ( x25 )
	add x25, x25, 4
	add x22, x22, 1
	beq x23, x22, .LBB1_119
.LBB1_104:                              //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x11, x10
	add x10, x11, 1
	add x12, x0, 121
	bgeu x12, x10, .LBB1_105
.LBB1_433:                              //  %for.body
	jal x0, .LBB1_365
.LBB1_105:                              //  %for.body
                                        //    in Loop: Header=BB1_104 Depth=1
	lw x12, -240 ( fp )             //  4-byte Folded Reload
	sll x10, x10, 2&31
	add x10, x12, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB1_106:                              //  %sw.bb1275
                                        //    in Loop: Header=BB1_104 Depth=1
	lw x10, -232 ( fp )             //  4-byte Folded Reload
	slti x10, x10, 11
	beq x0, x10, .LBB1_107
.LBB1_434:                              //  %sw.bb1275
	jal x0, .LBB1_365
.LBB1_107:                              //  %if.else1260
                                        //    in Loop: Header=BB1_104 Depth=1
	and x21, x21, -897
	sw x11, 0 ( x25 )
	add x25, x25, 4
	add x22, x22, 1
	bne x23, x22, .LBB1_104
	jal x0, .LBB1_119
.LBB1_108:                              //  %sw.bb1281
                                        //    in Loop: Header=BB1_104 Depth=1
	and x10, x21, 128
	bltu x0, x10, .LBB1_109
.LBB1_435:                              //  %sw.bb1281
	jal x0, .LBB1_365
.LBB1_109:                              //  %if.then1284
                                        //    in Loop: Header=BB1_104 Depth=1
	lw x10, -276 ( fp )             //  4-byte Folded Reload
	lui x12, (65536>>12)&1048575
	and x10, x10, x21
	or x21, x12, x10
	sw x11, 0 ( x25 )
	add x25, x25, 4
	add x22, x22, 1
	bne x23, x22, .LBB1_104
	jal x0, .LBB1_119
.LBB1_110:                              //  %sw.bb1267
                                        //    in Loop: Header=BB1_104 Depth=1
	lw x13, -232 ( fp )             //  4-byte Folded Reload
	lw x12, -256 ( fp )             //  4-byte Folded Reload
	sll x10, x13, 1&31
	add x10, x10, x12
	lh x10, 0 ( x10 )
	add x12, x13, -1
	sltiu x12, x12, 8
	bltu x0, x12, .LBB1_364
.LBB1_111:                              //  %if.end1273
                                        //    in Loop: Header=BB1_104 Depth=1
	and x21, x21, -897
	jal x0, .LBB1_103
.LBB1_112:                              //  %sw.bb1288
                                        //    in Loop: Header=BB1_104 Depth=1
	and x10, x21, 512
	beq x0, x10, .LBB1_365
.LBB1_113:                              //  %land.lhs.true1291
                                        //    in Loop: Header=BB1_104 Depth=1
	srl x10, x21, 14&31
	and x10, x10, 4
	add x12, fp, -220
	add x10, x10, x12
	bne x25, x10, .LBB1_365
.LBB1_114:                              //  %if.then1301
                                        //    in Loop: Header=BB1_104 Depth=1
	and x21, x21, -513
	add x10, x0, 16
	jal x0, .LBB1_103
.LBB1_115:                              //  %sw.bb1250
                                        //    in Loop: Header=BB1_104 Depth=1
	lw x10, -232 ( fp )             //  4-byte Folded Reload
	bne x10, x27, .LBB1_117
.LBB1_116:                              //    in Loop: Header=BB1_104 Depth=1
	or x21, x21, 512
	add x10, x0, 8
	sw x10, -232 ( fp )             //  4-byte Folded Spill
.LBB1_117:                              //  %sw.bb1250
                                        //    in Loop: Header=BB1_104 Depth=1
	and x10, x21, 1024
	beq x0, x10, .LBB1_107
.LBB1_118:                              //  %if.then1258
                                        //    in Loop: Header=BB1_104 Depth=1
	and x21, x21, -1409
	sw x11, 0 ( x25 )
	add x25, x25, 4
	add x22, x22, 1
	bne x23, x22, .LBB1_104
.LBB1_119:
	seqz x22, x0
	lw x23, -284 ( fp )             //  4-byte Folded Reload
	and x10, x21, 256
	beq x0, x10, .LBB1_367
	jal x0, .LBB1_405
.LBB1_120:                              //  %if.then215
	beq x0, x21, .LBB1_132
.LBB1_121:                              //  %land.rhs280.us.preheader
	mv x21, x0
.LBB1_122:                              //  %land.rhs280.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	xor x10, x10, -1
	beq x0, x10, .LBB1_181
.LBB1_123:                              //  %if.end307.us
                                        //    in Loop: Header=BB1_122 Depth=1
	add x21, x21, 1
	bne x27, x21, .LBB1_122
	jal x0, .LBB1_137
.LBB1_124:                              //  %if.else552
	bltu x0, x10, .LBB1_138
.LBB1_125:                              //  %if.else710
	sw x11, -288 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB1_157
.LBB1_126:
	sw x27, -292 ( fp )             //  4-byte Folded Spill
	sw x27, -300 ( fp )             //  4-byte Folded Spill
	sw x27, -304 ( fp )             //  4-byte Folded Spill
	mv x11, x27
	add x27, fp, -225
	jal x0, .LBB1_159
.LBB1_127:                              //  %if.else929
	bltu x0, x10, .LBB1_140
.LBB1_128:                              //  %if.else1067
	beq x0, x23, .LBB1_160
.LBB1_129:
	add x22, fp, -225
	mv x25, x27
	sw x27, -288 ( fp )             //  4-byte Folded Spill
	sw x27, -292 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_335
.LBB1_404:
	mv x22, x27
	add x25, fp, -224
	lw x23, -284 ( fp )             //  4-byte Folded Reload
	and x10, x21, 256
	beq x0, x10, .LBB1_367
	jal x0, .LBB1_405
.LBB1_130:                              //  %if.else345
	and x10, x25, 128
	bltu x0, x10, .LBB1_162
.LBB1_131:                              //  %if.else405
	lw x10, -56 ( fp )
	mv x21, x0
	sw x21, -288 ( fp )             //  4-byte Folded Spill
	add x25, fp, -64
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x22, 0 ( x10 )
	sw x21, -296 ( fp )             //  4-byte Folded Spill
	sw x21, -292 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_198
.LBB1_132:                              //  %if.else220
	and x10, x25, 128
	bltu x0, x10, .LBB1_166
.LBB1_133:                              //  %land.rhs280.us2987.preheader
	lw x10, -56 ( fp )
	mv x21, x0
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x22, 0 ( x10 )
.LBB1_134:                              //  %land.rhs280.us2987
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	xor x11, x10, -1
	beq x0, x11, .LBB1_180
.LBB1_135:                              //  %if.then288.us2997
                                        //    in Loop: Header=BB1_134 Depth=1
	sw x10, 0 ( x22 )
	add x22, x22, 4
	add x21, x21, 1
	bne x27, x21, .LBB1_134
.LBB1_136:
	sw x22, -236 ( fp )             //  4-byte Folded Spill
.LBB1_137:
	mv x22, x0
	mv x13, x22
	mv x12, x22
	bltu x0, x22, .LBB1_183
	jal x0, .LBB1_217
.LBB1_138:                              //  %if.then555
	and x10, x25, 128
	bltu x0, x10, .LBB1_170
.LBB1_139:                              //  %if.else617
	lw x10, -56 ( fp )
	mv x25, x27
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x27, -288 ( fp )             //  4-byte Folded Spill
	lw x27, -244 ( fp )             //  4-byte Folded Reload
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_232
.LBB1_140:                              //  %if.then932
	and x10, x25, 128
	bltu x0, x10, .LBB1_174
.LBB1_141:                              //  %if.else994
	lw x10, -56 ( fp )
	mv x23, x27
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x22, 0 ( x10 )
	jal x0, .LBB1_247
.LBB1_142:
	add x12, x10, 8
	sw x12, -244 ( fp )             //  4-byte Folded Spill
	add x12, x0, 8
.LBB1_143:                              //  %sw.bb125
	add x10, x12, x10
	lw x10, 0 ( x10 )
	mv x27, x0
	add x12, x0, 93
	beq x10, x12, .LBB1_145
.LBB1_144:                              //  %sw.bb125
	lw x26, -244 ( fp )             //  4-byte Folded Reload
	jal x0, .LBB1_146
.LBB1_145:
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	add x26, x10, 4
.LBB1_146:                              //  %sw.bb125
	xor x10, x11, 94
	seqz x10, x10
	sw x10, -264 ( fp )             //  4-byte Folded Spill
.LBB1_147:                              //  %while.cond137
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x26 )
	add x26, x26, 4
	xor x11, x10, 93
	beq x0, x11, .LBB1_149
.LBB1_148:                              //  %while.cond137
                                        //    in Loop: Header=BB1_147 Depth=1
	bltu x0, x10, .LBB1_147
.LBB1_149:                              //  %while.end146
	add x10, x26, -4
	sw x10, -268 ( fp )             //  4-byte Folded Spill
	or x25, x25, 64
	seqz x21, x0
	and x10, x25, 64
	sw x23, -284 ( fp )             //  4-byte Folded Spill
	beq x0, x10, .LBB1_62
	jal x0, .LBB1_66
.LBB1_150:
	lw x23, -284 ( fp )             //  4-byte Folded Reload
	add x21, x0, -1
	lw x27, 0 ( x26 )
	bltu x0, x27, .LBB1_12
	jal x0, .LBB1_409
.LBB1_151:                              //  %land.lhs.true515.us.preheader
	mv x21, x27
	lw x27, -244 ( fp )             //  4-byte Folded Reload
.LBB1_152:                              //  %land.lhs.true515.us
                                        //  =>This Inner Loop Header: Depth=1
	beq x23, x21, .LBB1_156
.LBB1_153:                              //  %land.rhs519.us
                                        //    in Loop: Header=BB1_152 Depth=1
	mv x10, x27
	mv x11, x22
	mv x12, x25
	jal wmemchr
	beq x0, x10, .LBB1_156
.LBB1_154:                              //  %while.body540.us
                                        //    in Loop: Header=BB1_152 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x22, x10
	add x21, x21, 1
	xor x10, x22, -1
	bltu x0, x10, .LBB1_152
.LBB1_155:
	lw x23, -284 ( fp )             //  4-byte Folded Reload
	jal x0, .LBB1_403
.LBB1_156:
	lw x23, -284 ( fp )             //  4-byte Folded Reload
	mv x10, x19
	mv x11, x22
	mv x12, x18
	jal _ungetwc_r
	bltu x0, x21, .LBB1_403
	jal x0, .LBB1_409
.LBB1_157:                              //  %if.else718
	and x10, x25, 128
	bltu x0, x10, .LBB1_186
.LBB1_158:                              //  %if.else778
	lw x10, -56 ( fp )
	sw x27, -304 ( fp )             //  4-byte Folded Spill
	add x11, x10, 4
	sw x11, -56 ( fp )
	mv x11, x27
	lw x27, 0 ( x10 )
	sw x11, -292 ( fp )             //  4-byte Folded Spill
	sw x11, -300 ( fp )             //  4-byte Folded Spill
.LBB1_159:                              //  %if.end781
	add x25, fp, -64
	jal x0, .LBB1_296
.LBB1_160:                              //  %if.else1075
	and x10, x25, 128
	bltu x0, x10, .LBB1_190
.LBB1_161:                              //  %if.else1135
	lw x10, -56 ( fp )
	sw x27, -292 ( fp )             //  4-byte Folded Spill
	mv x25, x27
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x22, 0 ( x10 )
	sw x27, -288 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_335
.LBB1_162:                              //  %if.then348
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -288 ( fp )             //  4-byte Folded Spill
	beq x0, x10, .LBB1_409
.LBB1_163:                              //  %if.end352
	add x10, x0, 32
	jal malloc
	mv x22, x10
	add x25, fp, -64
	beq x0, x22, .LBB1_353
.LBB1_164:                              //  %if.end356
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sw x22, 0 ( x10 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB1_194
.LBB1_165:                              //  %if.end356.if.end396_crit_edge
	lw x10, 0 ( x20 )
	jal x0, .LBB1_197
.LBB1_166:                              //  %if.then223
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -288 ( fp )             //  4-byte Folded Spill
	beq x0, x10, .LBB1_409
.LBB1_167:                              //  %if.end227
	add x10, x0, 128
	jal malloc
	mv x22, x10
	beq x0, x22, .LBB1_353
.LBB1_168:                              //  %if.end231
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sw x22, 0 ( x10 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB1_218
.LBB1_169:                              //  %if.end231.if.end267_crit_edge
	lw x10, 0 ( x20 )
	jal x0, .LBB1_221
.LBB1_170:                              //  %if.then560
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -288 ( fp )             //  4-byte Folded Spill
	beq x0, x10, .LBB1_418
.LBB1_171:                              //  %if.end564
	add x10, x0, 128
	jal malloc
	lw x27, -244 ( fp )             //  4-byte Folded Reload
	mv x22, x10
	beq x0, x22, .LBB1_417
.LBB1_172:                              //  %if.end568
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sw x22, 0 ( x10 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB1_228
.LBB1_173:                              //  %if.end568.if.end608_crit_edge
	lw x10, 0 ( x20 )
	jal x0, .LBB1_231
.LBB1_174:                              //  %if.then937
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x23, 0 ( x10 )
	beq x0, x23, .LBB1_418
.LBB1_175:                              //  %if.end941
	add x10, x0, 128
	jal malloc
	mv x22, x10
	beq x0, x22, .LBB1_353
.LBB1_176:                              //  %if.end945
	sw x22, 0 ( x23 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB1_243
.LBB1_177:                              //  %if.end945.if.end985_crit_edge
	lw x10, 0 ( x20 )
	jal x0, .LBB1_246
.LBB1_178:                              //  %if.then162
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sb x24, 0 ( x10 )
	lw x27, 0 ( x26 )
	bltu x0, x27, .LBB1_12
	jal x0, .LBB1_409
.LBB1_179:
	mv x10, x0
	mv x27, x10
	mv x12, x10
	mv x22, x25
	sw x10, -292 ( fp )             //  4-byte Folded Spill
	bltu x0, x21, .LBB1_213
	jal x0, .LBB1_350
.LBB1_180:
	sw x22, -236 ( fp )             //  4-byte Folded Spill
.LBB1_181:
	mv x13, x0
	mv x22, x13
	mv x12, x13
	beq x0, x21, .LBB1_350
.LBB1_182:                              //  %if.end313
	beq x0, x22, .LBB1_217
.LBB1_183:                              //  %if.end313
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	sub x11, x10, x13
	sra x10, x11, 2&31
	bgeu x10, x12, .LBB1_217
.LBB1_184:                              //  %if.then324
	lw x10, 0 ( x22 )
	jal realloc
	beq x0, x10, .LBB1_217
.LBB1_185:                              //  %if.then328
	sw x10, 0 ( x22 )
	jal x0, .LBB1_217
.LBB1_186:                              //  %if.then721
	lw x10, -56 ( fp )
	add x25, fp, -64
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sw x10, -292 ( fp )             //  4-byte Folded Spill
	beq x0, x10, .LBB1_418
.LBB1_187:                              //  %if.end725
	add x10, x0, 32
	jal malloc
	mv x27, x10
	beq x0, x27, .LBB1_417
.LBB1_188:                              //  %if.end729
	lw x10, -292 ( fp )             //  4-byte Folded Reload
	sw x27, 0 ( x10 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB1_292
.LBB1_189:                              //  %if.end729.if.end769_crit_edge
	lw x10, 0 ( x20 )
	jal x0, .LBB1_295
.LBB1_190:                              //  %if.then1078
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x25, 0 ( x10 )
	beq x0, x25, .LBB1_418
.LBB1_191:                              //  %if.end1082
	add x10, x0, 32
	jal malloc
	mv x22, x10
	beq x0, x22, .LBB1_353
.LBB1_192:                              //  %if.end1086
	sw x22, 0 ( x25 )
	lhu x10, 4 ( x20 )
	lhu x11, 6 ( x20 )
	bgeu x11, x10, .LBB1_331
.LBB1_193:                              //  %if.end1086.if.end1126_crit_edge
	lw x10, 0 ( x20 )
	jal x0, .LBB1_334
.LBB1_194:                              //  %if.then364
	add x11, x10, 8
	lw x10, -280 ( fp )             //  4-byte Folded Reload
	bltu x10, x11, .LBB1_411
.LBB1_195:                              //  %if.end384
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_411
.LBB1_196:                              //  %cleanup393
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB1_197:                              //  %if.end396
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -288 ( fp )             //  4-byte Folded Reload
	sw x22, -292 ( fp )             //  4-byte Folded Spill
	mv x21, x0
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x10, x0, 32
	sw x10, -296 ( fp )             //  4-byte Folded Spill
.LBB1_198:                              //  %land.rhs413.preheader
	mv x10, x25
	mv x11, x21
	add x12, x0, 8
	jal memset
	jal x0, .LBB1_203
.LBB1_199:                              //  %if.then449
                                        //    in Loop: Header=BB1_203 Depth=1
	lw x10, -292 ( fp )             //  4-byte Folded Reload
	sll x11, x11, 1&31
	sw x11, -296 ( fp )             //  4-byte Folded Spill
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB1_353
.LBB1_200:                              //  %if.end455
                                        //    in Loop: Header=BB1_203 Depth=1
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	add x22, x25, x11
	sw x11, -292 ( fp )             //  4-byte Folded Spill
	sw x11, 0 ( x10 )
.LBB1_201:                              //  %cleanup.cont463
                                        //    in Loop: Header=BB1_203 Depth=1
	add x25, fp, -64
.LBB1_202:                              //  %cleanup.cont463
                                        //    in Loop: Header=BB1_203 Depth=1
	add x22, x23, x22
	lw x23, -284 ( fp )             //  4-byte Folded Reload
	add x21, x21, 1
	beq x0, x27, .LBB1_212
.LBB1_203:                              //  %land.rhs413
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x12, x10
	xor x10, x12, -1
	beq x0, x10, .LBB1_211
.LBB1_204:                              //  %while.body418
                                        //    in Loop: Header=BB1_203 Depth=1
	mv x10, x19
	mv x11, x22
	mv x13, x25
	jal _wcrtomb_r
	mv x23, x10
	beq x0, x23, .LBB1_206
.LBB1_205:                              //  %while.body418
                                        //    in Loop: Header=BB1_203 Depth=1
	xor x10, x23, -1
	bltu x0, x10, .LBB1_207
	jal x0, .LBB1_349
.LBB1_206:                              //  %lor.lhs.false426
                                        //    in Loop: Header=BB1_203 Depth=1
	lw x10, -64 ( fp )
	xor x10, x10, -4
	beq x0, x10, .LBB1_208
.LBB1_207:                              //  %if.then429
                                        //    in Loop: Header=BB1_203 Depth=1
	add x27, x27, -1
.LBB1_208:                              //  %if.then434
                                        //    in Loop: Header=BB1_203 Depth=1
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_202
.LBB1_209:                              //  %land.lhs.true441
                                        //    in Loop: Header=BB1_203 Depth=1
	lw x10, -292 ( fp )             //  4-byte Folded Reload
	sub x25, x22, x10
	jal __locale_mb_cur_max
	lw x11, -296 ( fp )             //  4-byte Folded Reload
	bgeu x25, x11, .LBB1_199
.LBB1_210:                              //  %land.lhs.true441
                                        //    in Loop: Header=BB1_203 Depth=1
	sub x10, x11, x10
	bltu x25, x10, .LBB1_201
	jal x0, .LBB1_199
.LBB1_211:
	lw x27, -288 ( fp )             //  4-byte Folded Reload
	lw x12, -296 ( fp )             //  4-byte Folded Reload
	bltu x0, x21, .LBB1_213
	jal x0, .LBB1_350
.LBB1_212:
	lw x27, -288 ( fp )             //  4-byte Folded Reload
	lw x12, -296 ( fp )             //  4-byte Folded Reload
.LBB1_213:                              //  %if.end471
	beq x0, x27, .LBB1_217
.LBB1_214:                              //  %if.end471
	lw x10, -292 ( fp )             //  4-byte Folded Reload
	sub x11, x22, x10
	bgeu x11, x12, .LBB1_217
.LBB1_215:                              //  %if.then481
	lw x10, 0 ( x27 )
	jal realloc
	beq x0, x10, .LBB1_217
.LBB1_216:                              //  %if.then486
	sw x10, 0 ( x27 )
.LBB1_217:                              //  %cleanup336.thread2159
	lw x10, -300 ( fp )             //  4-byte Folded Reload
	seqz x10, x10
	add x23, x10, x23
	jal x0, .LBB1_403
.LBB1_218:                              //  %if.then239
	add x11, x10, 8
	lw x10, -280 ( fp )             //  4-byte Folded Reload
	bltu x10, x11, .LBB1_411
.LBB1_219:                              //  %if.end258
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_411
.LBB1_220:                              //  %cleanup
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB1_221:                              //  %land.rhs280.preheader
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -288 ( fp )             //  4-byte Folded Reload
	mv x21, x0
	mv x13, x22
	sw x22, -236 ( fp )             //  4-byte Folded Spill
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x10, x0, 32
	mv x12, x10
	jal x0, .LBB1_224
.LBB1_222:                              //    in Loop: Header=BB1_224 Depth=1
	lw x10, -236 ( fp )             //  4-byte Folded Reload
.LBB1_223:                              //  %cleanup.cont305
                                        //    in Loop: Header=BB1_224 Depth=1
	sw x23, 0 ( x10 )
	add x10, x10, 4
	add x21, x21, 1
	mv x27, x22
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	beq x27, x21, .LBB1_277
.LBB1_224:                              //  %land.rhs280
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x18
	mv x22, x27
	mv x25, x13
	mv x27, x12
	jal _fgetwc_r
	mv x23, x10
	xor x10, x23, -1
	beq x0, x10, .LBB1_276
.LBB1_225:                              //  %if.then288
                                        //    in Loop: Header=BB1_224 Depth=1
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	mv x13, x25
	mv x12, x27
	sub x10, x10, x13
	sra x25, x10, 2&31
	bltu x25, x12, .LBB1_222
.LBB1_226:                              //  %if.then293
                                        //    in Loop: Header=BB1_224 Depth=1
	sll x11, x12, 3&31
	mv x10, x13
	mv x27, x12
	jal realloc
	mv x13, x10
	beq x0, x13, .LBB1_353
.LBB1_227:                              //  %if.end298
                                        //    in Loop: Header=BB1_224 Depth=1
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sll x27, x27, 1&31
	mv x12, x27
	sw x13, 0 ( x10 )
	sll x10, x25, 2&31
	add x10, x10, x13
	jal x0, .LBB1_223
.LBB1_228:                              //  %if.then576
	add x11, x10, 8
	lw x10, -280 ( fp )             //  4-byte Folded Reload
	bltu x10, x11, .LBB1_411
.LBB1_229:                              //  %if.end596
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_411
.LBB1_230:                              //  %cleanup605
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB1_231:                              //  %if.end608
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -288 ( fp )             //  4-byte Folded Reload
	sw x22, -236 ( fp )             //  4-byte Folded Spill
	add x25, x0, 32
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
.LBB1_232:                              //  %if.end619
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x22, x10
	xor x10, x22, -1
	beq x0, x10, .LBB1_242
.LBB1_233:                              //  %land.lhs.true624.lr.ph
	lw x10, -268 ( fp )             //  4-byte Folded Reload
	sub x10, x10, x27
	sra x10, x10, 2&31
	sw x10, -292 ( fp )             //  4-byte Folded Spill
	lw x10, -264 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_267
.LBB1_234:                              //  %land.lhs.true624.lr.ph.split
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_278
.LBB1_235:                              //  %land.lhs.true624.preheader
	add x21, x23, 1
	lw x27, -236 ( fp )             //  4-byte Folded Reload
	lw x23, -284 ( fp )             //  4-byte Folded Reload
	add x21, x21, -1
	bltu x0, x21, .LBB1_239
	jal x0, .LBB1_283
.LBB1_236:                              //  %if.end668
                                        //    in Loop: Header=BB1_239 Depth=1
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sll x25, x25, 1&31
	sw x27, 0 ( x10 )
	sll x10, x22, 2&31
	add x10, x10, x27
	sw x10, -236 ( fp )             //  4-byte Folded Spill
.LBB1_237:                              //  %cleanup673
                                        //    in Loop: Header=BB1_239 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x22, x10
	xor x10, x22, -1
	beq x0, x10, .LBB1_285
.LBB1_238:                              //  %land.lhs.true624
                                        //    in Loop: Header=BB1_239 Depth=1
	add x21, x21, -1
	beq x0, x21, .LBB1_283
.LBB1_239:                              //  %land.end649
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	lw x12, -292 ( fp )             //  4-byte Folded Reload
	mv x11, x22
	jal wmemchr
	bltu x0, x10, .LBB1_283
.LBB1_240:                              //  %while.body650
                                        //    in Loop: Header=BB1_239 Depth=1
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	sw x22, 0 ( x10 )
	add x10, x10, 4
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	sub x10, x10, x27
	sra x22, x10, 2&31
	bltu x22, x25, .LBB1_237
.LBB1_241:                              //  %if.then662
                                        //    in Loop: Header=BB1_239 Depth=1
	sll x11, x25, 3&31
	mv x10, x27
	jal realloc
	mv x27, x10
	bltu x0, x27, .LBB1_236
	jal x0, .LBB1_353
.LBB1_242:
	lw x27, -236 ( fp )             //  4-byte Folded Reload
	jal x0, .LBB1_284
.LBB1_243:                              //  %if.then953
	add x11, x10, 8
	lw x10, -280 ( fp )             //  4-byte Folded Reload
	bltu x10, x11, .LBB1_411
.LBB1_244:                              //  %if.end973
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_411
.LBB1_245:                              //  %cleanup982
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB1_246:                              //  %if.end985
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x23, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x27, x0, 32
.LBB1_247:                              //  %if.end996
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x25, x10
	xor x10, x25, -1
	beq x0, x10, .LBB1_260
.LBB1_248:                              //  %land.lhs.true1001.lr.ph
	sw x22, -236 ( fp )             //  4-byte Folded Spill
	sw x22, -288 ( fp )             //  4-byte Folded Spill
	beq x0, x23, .LBB1_256
.LBB1_249:
	sw x22, -236 ( fp )             //  4-byte Folded Spill
	bltu x0, x21, .LBB1_252
	jal x0, .LBB1_259
.LBB1_250:                              //  %cleanup.cont1036
                                        //    in Loop: Header=BB1_252 Depth=1
	mv x10, x19
	mv x11, x18
	add x21, x21, -1
	jal _fgetwc_r
	mv x25, x10
	add x24, x24, 1
	xor x10, x25, -1
	beq x0, x10, .LBB1_261
.LBB1_251:                              //  %land.lhs.true1001
                                        //    in Loop: Header=BB1_252 Depth=1
	beq x0, x21, .LBB1_259
.LBB1_252:                              //  %land.end1009
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x25
	jal iswspace
	bltu x0, x10, .LBB1_259
.LBB1_253:                              //  %while.body1010
                                        //    in Loop: Header=BB1_252 Depth=1
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	sw x25, 0 ( x10 )
	add x10, x10, 4
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	sub x10, x10, x22
	sra x25, x10, 2&31
	bltu x25, x27, .LBB1_250
.LBB1_254:                              //  %if.then1022
                                        //    in Loop: Header=BB1_252 Depth=1
	sll x11, x27, 3&31
	mv x10, x22
	jal realloc
	mv x22, x10
	beq x0, x22, .LBB1_353
.LBB1_255:                              //  %if.end1028
                                        //    in Loop: Header=BB1_252 Depth=1
	sll x10, x25, 2&31
	add x10, x10, x22
	sll x27, x27, 1&31
	sw x22, 0 ( x23 )
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_250
.LBB1_256:                              //  %land.end1009.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x25
	jal iswspace
	bltu x0, x10, .LBB1_259
.LBB1_257:                              //  %while.body1010.us
                                        //    in Loop: Header=BB1_256 Depth=1
	mv x22, x27
	mv x27, x23
	lw x23, -236 ( fp )             //  4-byte Folded Reload
	mv x10, x19
	mv x11, x18
	sw x25, 0 ( x23 )
	jal _fgetwc_r
	mv x25, x10
	xor x10, x25, -1
	beq x0, x10, .LBB1_363
.LBB1_258:                              //  %land.lhs.true1001.us
                                        //    in Loop: Header=BB1_256 Depth=1
	add x23, x23, 4
	sw x23, -236 ( fp )             //  4-byte Folded Spill
	mv x23, x27
	mv x27, x22
	lw x22, -288 ( fp )             //  4-byte Folded Reload
	add x24, x24, 1
	add x21, x21, -1
	bltu x0, x21, .LBB1_256
.LBB1_259:                              //  %if.then1041
	mv x10, x19
	mv x11, x25
	mv x12, x18
	jal _ungetwc_r
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	bltu x0, x23, .LBB1_262
	jal x0, .LBB1_265
.LBB1_260:
	sw x22, -236 ( fp )             //  4-byte Folded Spill
.LBB1_261:                              //  %if.end1043
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	beq x0, x23, .LBB1_265
.LBB1_262:                              //  %if.end1043
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	sub x10, x10, x22
	sra x10, x10, 2&31
	add x11, x10, 1
	bgeu x11, x27, .LBB1_265
.LBB1_263:                              //  %if.then1054
	lw x10, 0 ( x23 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_265
.LBB1_264:                              //  %if.then1059
	sw x10, 0 ( x23 )
.LBB1_265:                              //  %cleanup1063
	lw x23, -284 ( fp )             //  4-byte Folded Reload
	add x21, x0, -1
	add x23, x23, 1
	lw x27, 0 ( x26 )
	beq x0, x27, .LBB1_436
.LBB1_437:                              //  %cleanup1063
	jal x0, .LBB1_12
.LBB1_436:                              //  %cleanup1063
	jal x0, .LBB1_409
.LBB1_266:                              //  %if.then167
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sh x24, 0 ( x10 )
	lw x27, 0 ( x26 )
	beq x0, x27, .LBB1_438
.LBB1_439:                              //  %if.then167
	jal x0, .LBB1_12
.LBB1_438:                              //  %if.then167
	jal x0, .LBB1_409
.LBB1_267:
	lw x27, -236 ( fp )             //  4-byte Folded Reload
.LBB1_268:                              //  %land.end649.us
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	lw x12, -292 ( fp )             //  4-byte Folded Reload
	mv x11, x22
	jal wmemchr
	beq x0, x10, .LBB1_283
.LBB1_269:                              //  %while.body650.us
                                        //    in Loop: Header=BB1_268 Depth=1
	lw x11, -236 ( fp )             //  4-byte Folded Reload
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sw x22, 0 ( x11 )
	add x11, x11, 4
	beq x0, x10, .LBB1_273
.LBB1_270:                              //  %while.body650.us
                                        //    in Loop: Header=BB1_268 Depth=1
	sub x10, x11, x27
	sra x21, x10, 2&31
	bltu x21, x25, .LBB1_273
.LBB1_271:                              //  %if.then662.us
                                        //    in Loop: Header=BB1_268 Depth=1
	sll x11, x25, 3&31
	mv x10, x27
	jal realloc
	mv x27, x10
	beq x0, x27, .LBB1_353
.LBB1_272:                              //  %if.end668.us
                                        //    in Loop: Header=BB1_268 Depth=1
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sll x25, x25, 1&31
	sw x27, 0 ( x10 )
	sll x10, x21, 2&31
	add x10, x10, x27
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_274
.LBB1_273:                              //    in Loop: Header=BB1_268 Depth=1
	sw x11, -236 ( fp )             //  4-byte Folded Spill
.LBB1_274:                              //  %cleanup673.us
                                        //    in Loop: Header=BB1_268 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x22, x10
	xor x10, x22, -1
	beq x0, x10, .LBB1_284
.LBB1_275:                              //  %land.lhs.true624.us
                                        //    in Loop: Header=BB1_268 Depth=1
	add x23, x23, -1
	bltu x0, x23, .LBB1_268
	jal x0, .LBB1_283
.LBB1_276:
	lw x23, -284 ( fp )             //  4-byte Folded Reload
	lw x22, -288 ( fp )             //  4-byte Folded Reload
	mv x12, x27
	mv x13, x25
	bltu x0, x21, .LBB1_182
	jal x0, .LBB1_350
.LBB1_277:
	lw x23, -284 ( fp )             //  4-byte Folded Reload
	lw x22, -288 ( fp )             //  4-byte Folded Reload
	bltu x0, x22, .LBB1_183
	jal x0, .LBB1_217
.LBB1_278:
	lw x21, -236 ( fp )             //  4-byte Folded Reload
.LBB1_279:                              //  %land.end649.us2931
                                        //  =>This Inner Loop Header: Depth=1
	lw x12, -292 ( fp )             //  4-byte Folded Reload
	mv x10, x27
	mv x11, x22
	jal wmemchr
	bltu x0, x10, .LBB1_282
.LBB1_280:                              //  %while.body650.us2933
                                        //    in Loop: Header=BB1_279 Depth=1
	mv x10, x19
	mv x11, x18
	sw x22, 0 ( x21 )
	jal _fgetwc_r
	mv x22, x10
	xor x10, x22, -1
	beq x0, x10, .LBB1_388
.LBB1_281:                              //  %land.lhs.true624.us2922
                                        //    in Loop: Header=BB1_279 Depth=1
	add x21, x21, 4
	add x23, x23, -1
	bltu x0, x23, .LBB1_279
.LBB1_282:
	lw x27, -236 ( fp )             //  4-byte Folded Reload
	sw x21, -236 ( fp )             //  4-byte Folded Spill
.LBB1_283:                              //  %if.then680
	mv x10, x19
	mv x11, x22
	mv x12, x18
	jal _ungetwc_r
.LBB1_284:                              //  %if.end682
	lw x23, -284 ( fp )             //  4-byte Folded Reload
.LBB1_285:                              //  %if.end682
	lw x11, -236 ( fp )             //  4-byte Folded Reload
	sub x10, x11, x27
	beq x0, x10, .LBB1_409
.LBB1_286:                              //  %if.end690
	sra x21, x10, 2&31
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sw x0, 0 ( x11 )
	beq x0, x10, .LBB1_291
.LBB1_287:                              //  %if.end690
	add x11, x21, 1
	bgeu x11, x25, .LBB1_291
.LBB1_288:                              //  %if.then697
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sll x11, x11, 2&31
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB1_291
.LBB1_289:                              //  %if.then702
	lw x11, -288 ( fp )             //  4-byte Folded Reload
	jal x0, .LBB1_290
.LBB1_292:                              //  %if.then737
	add x11, x10, 8
	lw x10, -280 ( fp )             //  4-byte Folded Reload
	bltu x10, x11, .LBB1_411
.LBB1_293:                              //  %if.end757
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_411
.LBB1_294:                              //  %cleanup766
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB1_295:                              //  %if.end769
	sll x12, x11, 2&31
	add x10, x12, x10
	lw x12, -292 ( fp )             //  4-byte Folded Reload
	sw x27, -300 ( fp )             //  4-byte Folded Spill
	sw x12, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x10, x0, 32
	sw x10, -304 ( fp )             //  4-byte Folded Spill
	mv x11, x0
.LBB1_296:                              //  %if.end781
	mv x10, x25
	add x12, x0, 8
	jal memset
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x22, x10
	xor x11, x22, -1
	snez x10, x11
	beq x0, x23, .LBB1_314
.LBB1_297:                              //  %if.end781
	beq x0, x11, .LBB1_314
.LBB1_298:                              //  %land.rhs790.lr.ph
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	lw x11, -268 ( fp )             //  4-byte Folded Reload
	sub x11, x11, x10
	sra x12, x11, 2&31
	lw x11, -264 ( fp )             //  4-byte Folded Reload
	sw x12, -296 ( fp )             //  4-byte Folded Spill
	beq x0, x11, .LBB1_315
.LBB1_299:                              //  %land.rhs790.preheader
	mv x21, x0
.LBB1_300:                              //  %land.rhs790
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	mv x11, x22
	jal wmemchr
	bltu x0, x10, .LBB1_379
.LBB1_301:                              //  %while.body812
                                        //    in Loop: Header=BB1_300 Depth=1
	mv x10, x19
	mv x11, x27
	mv x12, x22
	mv x13, x25
	jal _wcrtomb_r
	beq x0, x10, .LBB1_303
.LBB1_302:                              //  %while.body812
                                        //    in Loop: Header=BB1_300 Depth=1
	xor x11, x10, -1
	bltu x0, x11, .LBB1_304
	jal x0, .LBB1_349
.LBB1_303:                              //  %lor.lhs.false820
                                        //    in Loop: Header=BB1_300 Depth=1
	lw x11, -64 ( fp )
	xor x11, x11, -4
	beq x0, x11, .LBB1_305
.LBB1_304:                              //  %if.then824
                                        //    in Loop: Header=BB1_300 Depth=1
	add x23, x23, -1
.LBB1_305:                              //  %if.end826
                                        //    in Loop: Header=BB1_300 Depth=1
	lw x11, -288 ( fp )             //  4-byte Folded Reload
	bltu x0, x11, .LBB1_311
.LBB1_306:                              //  %if.then829
                                        //    in Loop: Header=BB1_300 Depth=1
	add x27, x10, x27
	lw x10, -292 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_311
.LBB1_307:                              //  %land.lhs.true837
                                        //    in Loop: Header=BB1_300 Depth=1
	lw x10, -300 ( fp )             //  4-byte Folded Reload
	sub x22, x27, x10
	jal __locale_mb_cur_max
	lw x11, -304 ( fp )             //  4-byte Folded Reload
	bgeu x22, x11, .LBB1_309
.LBB1_308:                              //  %land.lhs.true837
                                        //    in Loop: Header=BB1_300 Depth=1
	sub x10, x11, x10
	bltu x22, x10, .LBB1_311
.LBB1_309:                              //  %if.then845
                                        //    in Loop: Header=BB1_300 Depth=1
	lw x10, -300 ( fp )             //  4-byte Folded Reload
	sll x11, x11, 1&31
	sw x11, -304 ( fp )             //  4-byte Folded Spill
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB1_353
.LBB1_310:                              //  %if.end851
                                        //    in Loop: Header=BB1_300 Depth=1
	lw x10, -292 ( fp )             //  4-byte Folded Reload
	add x27, x22, x11
	sw x11, -300 ( fp )             //  4-byte Folded Spill
	sw x11, 0 ( x10 )
.LBB1_311:                              //  %if.end860
                                        //    in Loop: Header=BB1_300 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x22, x10
	xor x11, x22, -1
	add x21, x21, 1
	snez x10, x11
	beq x0, x23, .LBB1_313
.LBB1_312:                              //  %if.end860
                                        //    in Loop: Header=BB1_300 Depth=1
	lw x12, -296 ( fp )             //  4-byte Folded Reload
	bltu x0, x11, .LBB1_300
	jal x0, .LBB1_313
.LBB1_314:
	mv x21, x0
	bltu x0, x10, .LBB1_379
	jal x0, .LBB1_380
.LBB1_315:                              //  %land.rhs790.lr.ph.split.us
	mv x11, x22
	jal wmemchr
	beq x0, x10, .LBB1_378
.LBB1_316:                              //  %while.body812.us.preheader
	seqz x21, x0
.LBB1_317:                              //  %while.body812.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x19
	mv x11, x27
	mv x12, x22
	mv x13, x25
	jal _wcrtomb_r
	beq x0, x10, .LBB1_319
.LBB1_318:                              //  %while.body812.us
                                        //    in Loop: Header=BB1_317 Depth=1
	xor x11, x10, -1
	bltu x0, x11, .LBB1_320
	jal x0, .LBB1_349
.LBB1_319:                              //  %lor.lhs.false820.us
                                        //    in Loop: Header=BB1_317 Depth=1
	lw x11, -64 ( fp )
	xor x11, x11, -4
	beq x0, x11, .LBB1_321
.LBB1_320:                              //  %if.then824.us
                                        //    in Loop: Header=BB1_317 Depth=1
	add x23, x23, -1
.LBB1_321:                              //  %if.end826.us
                                        //    in Loop: Header=BB1_317 Depth=1
	lw x11, -288 ( fp )             //  4-byte Folded Reload
	bltu x0, x11, .LBB1_327
.LBB1_322:                              //  %if.then829.us
                                        //    in Loop: Header=BB1_317 Depth=1
	add x27, x10, x27
	lw x10, -292 ( fp )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_327
.LBB1_323:                              //  %land.lhs.true837.us
                                        //    in Loop: Header=BB1_317 Depth=1
	lw x10, -300 ( fp )             //  4-byte Folded Reload
	sub x22, x27, x10
	jal __locale_mb_cur_max
	lw x11, -304 ( fp )             //  4-byte Folded Reload
	bgeu x22, x11, .LBB1_325
.LBB1_324:                              //  %land.lhs.true837.us
                                        //    in Loop: Header=BB1_317 Depth=1
	sub x10, x11, x10
	bltu x22, x10, .LBB1_327
.LBB1_325:                              //  %if.then845.us
                                        //    in Loop: Header=BB1_317 Depth=1
	lw x10, -300 ( fp )             //  4-byte Folded Reload
	sll x11, x11, 1&31
	sw x11, -304 ( fp )             //  4-byte Folded Spill
	jal realloc
	mv x11, x10
	beq x0, x11, .LBB1_353
.LBB1_326:                              //  %if.end851.us
                                        //    in Loop: Header=BB1_317 Depth=1
	lw x10, -292 ( fp )             //  4-byte Folded Reload
	add x27, x22, x11
	sw x11, -300 ( fp )             //  4-byte Folded Spill
	sw x11, 0 ( x10 )
.LBB1_327:                              //  %if.end860.us
                                        //    in Loop: Header=BB1_317 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x22, x10
	xor x11, x22, -1
	snez x10, x11
	beq x0, x23, .LBB1_313
.LBB1_328:                              //  %if.end860.us
                                        //    in Loop: Header=BB1_317 Depth=1
	beq x0, x11, .LBB1_313
.LBB1_329:                              //  %land.rhs790.us
                                        //    in Loop: Header=BB1_317 Depth=1
	lw x10, -244 ( fp )             //  4-byte Folded Reload
	lw x12, -296 ( fp )             //  4-byte Folded Reload
	mv x11, x22
	jal wmemchr
	add x21, x21, 1
	bltu x0, x10, .LBB1_317
.LBB1_330:                              //  %if.then865.loopexit
	add x21, x21, -1
	jal x0, .LBB1_379
.LBB1_313:                              //  %while.end862
	bltu x0, x10, .LBB1_379
	jal x0, .LBB1_380
.LBB1_331:                              //  %if.then1094
	add x11, x10, 8
	lw x10, -280 ( fp )             //  4-byte Folded Reload
	bltu x10, x11, .LBB1_411
.LBB1_332:                              //  %if.end1114
	lw x10, 0 ( x20 )
	sll x11, x11, 2&31
	jal realloc
	beq x0, x10, .LBB1_411
.LBB1_333:                              //  %cleanup1123
	lh x11, 4 ( x20 )
	sw x10, 0 ( x20 )
	add x11, x11, 8
	sh x11, 4 ( x20 )
	lhu x11, 6 ( x20 )
.LBB1_334:                              //  %if.end1126
	sll x12, x11, 2&31
	add x10, x12, x10
	sw x25, 0 ( x10 )
	add x10, x11, 1
	sh x10, 6 ( x20 )
	add x10, x0, 32
	sw x22, -288 ( fp )             //  4-byte Folded Spill
	sw x10, -292 ( fp )             //  4-byte Folded Spill
.LBB1_335:                              //  %if.end1138
	add x10, fp, -64
	mv x11, x27
	add x12, x0, 8
	jal memset
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x27, x10
	xor x11, x27, -1
	snez x10, x11
	beq x0, x21, .LBB1_390
.LBB1_336:                              //  %if.end1138
	beq x0, x11, .LBB1_390
.LBB1_337:                              //  %land.rhs1147.lr.ph
	beq x0, x23, .LBB1_346
.LBB1_338:                              //  %land.rhs1147.us
	mv x10, x27
	jal iswspace
	bltu x0, x10, .LBB1_391
.LBB1_339:                              //  %while.body1152.us
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x22
	mv x11, x27
	add x12, fp, -64
	jal wcrtomb
	beq x0, x10, .LBB1_341
.LBB1_340:                              //  %while.body1152.us
                                        //    in Loop: Header=BB1_339 Depth=1
	xor x10, x10, -1
	bltu x0, x10, .LBB1_342
	jal x0, .LBB1_349
.LBB1_341:                              //  %lor.lhs.false1160.us
                                        //    in Loop: Header=BB1_339 Depth=1
	lw x10, -64 ( fp )
	xor x10, x10, -4
	beq x0, x10, .LBB1_343
.LBB1_342:                              //  %if.then1164.us
                                        //    in Loop: Header=BB1_339 Depth=1
	add x21, x21, -1
.LBB1_343:                              //  %if.end1200.us
                                        //    in Loop: Header=BB1_339 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x27, x10
	xor x10, x27, -1
	beq x0, x21, .LBB1_389
.LBB1_344:                              //  %if.end1200.us
                                        //    in Loop: Header=BB1_339 Depth=1
	beq x0, x10, .LBB1_389
.LBB1_345:                              //  %land.rhs1147.us
                                        //    in Loop: Header=BB1_339 Depth=1
	add x24, x24, 1
	mv x10, x27
	jal iswspace
	beq x0, x10, .LBB1_339
	jal x0, .LBB1_391
.LBB1_346:                              //  %land.rhs1147
                                        //  =>This Inner Loop Header: Depth=1
	mv x10, x27
	jal iswspace
	bltu x0, x10, .LBB1_391
.LBB1_347:                              //  %while.body1152
                                        //    in Loop: Header=BB1_346 Depth=1
	mv x10, x22
	mv x11, x27
	add x12, fp, -64
	jal wcrtomb
	beq x0, x10, .LBB1_354
.LBB1_348:                              //  %while.body1152
                                        //    in Loop: Header=BB1_346 Depth=1
	xor x11, x10, -1
	bltu x0, x11, .LBB1_355
	jal x0, .LBB1_349
.LBB1_354:                              //  %lor.lhs.false1160
                                        //    in Loop: Header=BB1_346 Depth=1
	lw x11, -64 ( fp )
	xor x11, x11, -4
	beq x0, x11, .LBB1_356
.LBB1_355:                              //  %if.then1164
                                        //    in Loop: Header=BB1_346 Depth=1
	add x21, x21, -1
.LBB1_356:                              //  %if.then1169
                                        //    in Loop: Header=BB1_346 Depth=1
	add x22, x10, x22
	beq x0, x25, .LBB1_361
.LBB1_357:                              //  %land.lhs.true1177
                                        //    in Loop: Header=BB1_346 Depth=1
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sub x27, x22, x10
	jal __locale_mb_cur_max
	lw x11, -292 ( fp )             //  4-byte Folded Reload
	bgeu x27, x11, .LBB1_359
.LBB1_358:                              //  %land.lhs.true1177
                                        //    in Loop: Header=BB1_346 Depth=1
	sub x10, x11, x10
	bltu x27, x10, .LBB1_361
.LBB1_359:                              //  %if.then1185
                                        //    in Loop: Header=BB1_346 Depth=1
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sll x11, x11, 1&31
	sw x11, -292 ( fp )             //  4-byte Folded Spill
	jal realloc
	beq x0, x10, .LBB1_353
.LBB1_360:                              //  %if.end1191
                                        //    in Loop: Header=BB1_346 Depth=1
	add x22, x27, x10
	sw x10, 0 ( x25 )
	sw x10, -288 ( fp )             //  4-byte Folded Spill
.LBB1_361:                              //  %if.end1200
                                        //    in Loop: Header=BB1_346 Depth=1
	mv x10, x19
	mv x11, x18
	jal _fgetwc_r
	mv x27, x10
	xor x11, x27, -1
	add x24, x24, 1
	snez x10, x11
	beq x0, x21, .LBB1_390
.LBB1_362:                              //  %if.end1200
                                        //    in Loop: Header=BB1_346 Depth=1
	bltu x0, x11, .LBB1_346
	jal x0, .LBB1_390
.LBB1_363:                              //  %if.end1043.loopexit
	add x23, x23, 4
	sw x23, -236 ( fp )             //  4-byte Folded Spill
	mv x23, x27
	mv x27, x22
	lw x22, -288 ( fp )             //  4-byte Folded Reload
	add x24, x24, 1
	lw x10, -236 ( fp )             //  4-byte Folded Reload
	sw x0, 0 ( x10 )
	bltu x0, x23, .LBB1_262
	jal x0, .LBB1_265
.LBB1_364:                              //  %if.then1307.split.loop.exit5344
	sw x10, -232 ( fp )             //  4-byte Folded Spill
.LBB1_365:                              //  %if.then1307
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
.LBB1_366:                              //  %for.end
	lw x23, -284 ( fp )             //  4-byte Folded Reload
	and x10, x21, 256
	bltu x0, x10, .LBB1_405
.LBB1_367:                              //  %if.end1322
	lw x11, -4 ( x25 )
	or x10, x11, 32
	xor x10, x10, 120
	bltu x0, x10, .LBB1_369
.LBB1_368:                              //  %if.then1329
	mv x10, x19
	mv x12, x18
	add x25, x25, -4
	jal _ungetwc_r
.LBB1_369:                              //  %if.end1332
	add x22, fp, -224
	and x10, x21, 16
	bltu x0, x10, .LBB1_402
.LBB1_370:                              //  %if.then1336
	lw x13, -232 ( fp )             //  4-byte Folded Reload
	lw x14, -252 ( fp )             //  4-byte Folded Reload
	mv x10, x19
	mv x11, x22
	mv x12, x27
	sw x0, 0 ( x25 )
	call.reg x14
	and x11, x21, 32
	bltu x0, x11, .LBB1_375
.LBB1_371:                              //  %if.else1343
	and x11, x21, 8
	bltu x0, x11, .LBB1_376
.LBB1_372:                              //  %if.else1349
	and x11, x21, 4
	bltu x0, x11, .LBB1_377
.LBB1_373:                              //  %if.else1355
	and x11, x21, 1
	bltu x0, x11, .LBB1_375
.LBB1_374:                              //  %if.else1360
	and x11, x21, 2
	bltu x0, x11, .LBB1_385
.LBB1_375:                              //  %if.else1374
	lw x11, -56 ( fp )
	add x12, x11, 4
	sw x12, -56 ( fp )
	lw x11, 0 ( x11 )
	sw x10, 0 ( x11 )
	jal x0, .LBB1_401
.LBB1_376:                              //  %if.then1346
	lw x11, -56 ( fp )
	add x12, x11, 4
	sw x12, -56 ( fp )
	lw x11, 0 ( x11 )
	sb x10, 0 ( x11 )
	jal x0, .LBB1_401
.LBB1_377:                              //  %if.then1352
	lw x11, -56 ( fp )
	add x12, x11, 4
	sw x12, -56 ( fp )
	lw x11, 0 ( x11 )
	sh x10, 0 ( x11 )
	jal x0, .LBB1_401
.LBB1_378:
	mv x21, x0
.LBB1_379:                              //  %if.then865
	mv x10, x19
	mv x11, x22
	mv x12, x18
	jal _ungetwc_r
.LBB1_380:                              //  %if.end867
	lw x23, -284 ( fp )             //  4-byte Folded Reload
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	bltu x0, x10, .LBB1_403
.LBB1_381:                              //  %if.then870
	lw x10, -292 ( fp )             //  4-byte Folded Reload
	sb x0, 0 ( x27 )
	beq x0, x10, .LBB1_291
.LBB1_382:                              //  %if.then870
	lw x10, -300 ( fp )             //  4-byte Folded Reload
	sub x10, x27, x10
	add x11, x10, 1
	lw x10, -304 ( fp )             //  4-byte Folded Reload
	bgeu x11, x10, .LBB1_291
.LBB1_383:                              //  %if.then880
	lw x10, -292 ( fp )             //  4-byte Folded Reload
	lw x10, 0 ( x10 )
	jal realloc
	beq x0, x10, .LBB1_291
.LBB1_384:                              //  %if.then885
	lw x11, -292 ( fp )             //  4-byte Folded Reload
.LBB1_290:                              //  %cleanup706
	sw x10, 0 ( x11 )
.LBB1_291:                              //  %cleanup706
	add x23, x23, 1
	jal x0, .LBB1_403
.LBB1_385:                              //  %if.then1363
	lw x10, -260 ( fp )             //  4-byte Folded Reload
	lw x11, -252 ( fp )             //  4-byte Folded Reload
	beq x11, x10, .LBB1_399
.LBB1_386:                              //  %if.else1369
	lw x13, -232 ( fp )             //  4-byte Folded Reload
	mv x10, x19
	mv x11, x22
	mv x12, x27
	jal _wcstoll_r
	jal x0, .LBB1_400
.LBB1_387:                              //  %if.then178
	lw x10, -56 ( fp )
	add x11, x10, 4
	sw x11, -56 ( fp )
	lw x10, 0 ( x10 )
	sra x11, x24, 31&31
	sw x11, 4 ( x10 )
	sw x24, 0 ( x10 )
	lw x27, 0 ( x26 )
	beq x0, x27, .LBB1_440
.LBB1_441:                              //  %if.then178
	jal x0, .LBB1_12
.LBB1_440:                              //  %if.then178
	jal x0, .LBB1_409
.LBB1_388:                              //  %if.end682.loopexit22
	lw x27, -236 ( fp )             //  4-byte Folded Reload
	add x10, x21, 4
	sw x10, -236 ( fp )             //  4-byte Folded Spill
	jal x0, .LBB1_284
.LBB1_389:                              //  %while.end1202.loopexit
	snez x10, x10
	add x24, x24, 1
.LBB1_390:                              //  %while.end1202
	beq x0, x10, .LBB1_392
.LBB1_391:                              //  %if.then1205
	mv x10, x19
	mv x11, x27
	mv x12, x18
	jal _ungetwc_r
.LBB1_392:                              //  %if.end1207
	add x21, x0, -1
	beq x0, x23, .LBB1_394
.LBB1_393:
	lw x23, -284 ( fp )             //  4-byte Folded Reload
	lw x27, 0 ( x26 )
	beq x0, x27, .LBB1_442
.LBB1_443:
	jal x0, .LBB1_12
.LBB1_442:
	jal x0, .LBB1_409
.LBB1_394:                              //  %if.then1210
	sb x0, 0 ( x22 )
	beq x0, x25, .LBB1_398
.LBB1_395:                              //  %if.then1210
	lw x10, -288 ( fp )             //  4-byte Folded Reload
	sub x10, x22, x10
	add x11, x10, 1
	lw x10, -292 ( fp )             //  4-byte Folded Reload
	bgeu x11, x10, .LBB1_398
.LBB1_396:                              //  %if.then1220
	lw x10, 0 ( x25 )
	jal realloc
	beq x0, x10, .LBB1_398
.LBB1_397:                              //  %if.then1225
	sw x10, 0 ( x25 )
.LBB1_398:                              //  %if.end1227
	lw x23, -284 ( fp )             //  4-byte Folded Reload
	add x23, x23, 1
	lw x27, 0 ( x26 )
	beq x0, x27, .LBB1_444
.LBB1_445:                              //  %if.end1227
	jal x0, .LBB1_12
.LBB1_444:                              //  %if.end1227
	jal x0, .LBB1_409
.LBB1_399:                              //  %if.then1366
	lw x13, -232 ( fp )             //  4-byte Folded Reload
	mv x10, x19
	mv x11, x22
	mv x12, x27
	jal _wcstoull_r
.LBB1_400:                              //  %if.end1372
	lw x12, -56 ( fp )
	add x13, x12, 4
	sw x13, -56 ( fp )
	lw x12, 0 ( x12 )
	sw x11, 4 ( x12 )
	sw x10, 0 ( x12 )
.LBB1_401:                              //  %if.end1380
	add x23, x23, 1
.LBB1_402:                              //  %if.end1382
	sub x10, x25, x22
	sra x21, x10, 2&31
	sw x25, -236 ( fp )             //  4-byte Folded Spill
.LBB1_403:                              //  %sw.epilog1389
	lw x27, 0 ( x26 )
	add x24, x24, x21
	add x21, x0, -1
	beq x0, x27, .LBB1_446
.LBB1_447:                              //  %sw.epilog1389
	jal x0, .LBB1_12
.LBB1_446:                              //  %sw.epilog1389
	jal x0, .LBB1_409
.LBB1_349:                              //  %input_failure.loopexit30
	lw x23, -284 ( fp )             //  4-byte Folded Reload
.LBB1_350:                              //  %input_failure
	add x21, x0, -1
.LBB1_351:                              //  %input_failure
	beq x0, x23, .LBB1_408
.LBB1_352:                              //  %land.lhs.true1391
	lbu x10, 12 ( x18 )
	mv x11, x0
	and x10, x10, 64
	beq x10, x11, .LBB1_409
.LBB1_353:                              //  %land.lhs.true1391
	add x23, x0, -1
	bltu x0, x20, .LBB1_410
	jal x0, .LBB1_416
.LBB1_405:                              //  %if.then1314
	beq x0, x22, .LBB1_409
.LBB1_406:                              //  %if.then1318
	lw x11, -4 ( x25 )
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	bltu x0, x20, .LBB1_410
	jal x0, .LBB1_416
.LBB1_418:
	lw x23, -284 ( fp )             //  4-byte Folded Reload
	bltu x0, x20, .LBB1_410
	jal x0, .LBB1_416
.LBB1_407:                              //  %if.then42
	mv x10, x19
	mv x12, x18
	jal _ungetwc_r
	bltu x0, x23, .LBB1_352
.LBB1_408:
	mv x23, x21
.LBB1_409:                              //  %all_done
	beq x0, x20, .LBB1_416
.LBB1_410:                              //  %if.then1414
	xor x10, x23, -1
	bltu x0, x10, .LBB1_414
.LBB1_411:                              //  %for.cond1418.preheader
	lhu x10, 6 ( x20 )
	add x23, x0, -1
	beq x0, x10, .LBB1_414
.LBB1_412:                              //  %for.body1423.lr.ph
	mv x9, x0
	mv x18, x9
.LBB1_413:                              //  %for.body1423
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
	bltu x18, x10, .LBB1_413
.LBB1_414:                              //  %if.end1431
	lw x10, 0 ( x20 )
	beq x0, x10, .LBB1_416
.LBB1_415:                              //  %if.then1434
	jal free
.LBB1_416:                              //  %cleanup1440
	mv x10, x23
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
.LBB1_417:
	mv x23, x21
	bltu x0, x20, .LBB1_410
	jal x0, .LBB1_416
.Lfunc_end1:
	.size	__svfiwscanf_r, .Lfunc_end1-__svfiwscanf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_39
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_32
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_42
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_30
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_44
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_38
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_46
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_43
	.long	.LBB1_48
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_17
	.long	.LBB1_49
	.long	.LBB1_30
	.long	.LBB1_409
	.long	.LBB1_20
	.long	.LBB1_34
	.long	.LBB1_50
	.long	.LBB1_56
	.long	.LBB1_57
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_45
	.long	.LBB1_16
	.long	.LBB1_59
	.long	.LBB1_409
	.long	.LBB1_409
	.long	.LBB1_38
	.long	.LBB1_409
	.long	.LBB1_16
JTI1_1:
	.long	.LBB1_67
	.long	.LBB1_78
	.long	.LBB1_88
	.long	.LBB1_98
JTI1_2:
	.long	.LBB1_366
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_108
	.long	.LBB1_365
	.long	.LBB1_108
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_115
	.long	.LBB1_102
	.long	.LBB1_102
	.long	.LBB1_102
	.long	.LBB1_102
	.long	.LBB1_102
	.long	.LBB1_102
	.long	.LBB1_102
	.long	.LBB1_110
	.long	.LBB1_110
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_106
	.long	.LBB1_106
	.long	.LBB1_106
	.long	.LBB1_106
	.long	.LBB1_106
	.long	.LBB1_106
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_112
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_106
	.long	.LBB1_106
	.long	.LBB1_106
	.long	.LBB1_106
	.long	.LBB1_106
	.long	.LBB1_106
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_365
	.long	.LBB1_112
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
