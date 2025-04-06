	.text
	.file	"strftime.c"
	.globl	strftime                //  -- Begin function strftime
	.type	strftime,@function
strftime:                               //  @strftime
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	j __strftime
.Lfunc_end0:
	.size	strftime, .Lfunc_end0-strftime
	.cfi_endproc
                                        //  -- End function
	.type	__strftime,@function    //  -- Begin function __strftime
__strftime:                             //  @__strftime
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -160
	.cfi_adjust_cfa_offset 160
	sw fp, 108 ( sp )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x10
	lui x10, %hi( _C_time_locale )
	sw x25, 120 ( sp )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	add x25, x10, %lo( _C_time_locale )
	sw x20, 140 ( sp )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x20, 160 ( x25 )
	lw x6, 228 ( x25 )
	lw x7, 156 ( x25 )
	lw x28, 152 ( x25 )
	sw x9, 152 ( sp )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22, 132 ( sp )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	mv x9, x11
	mv x22, x0
	lui x10, %hi( JTI1_0 )
	sw x24, 124 ( sp )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x19, 144 ( sp )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x27, 112 ( sp )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	mv x19, x22
	add x27, x9, -1
	add x15, x0, 8
	add x11, sp, 76
	add x17, x0, 10
	add x24, x0, 85
	add x5, x10, %lo( JTI1_0 )
	mv x29, x22
	sw ra, 156 ( sp )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 148 ( sp )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21, 136 ( sp )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23, 128 ( sp )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x26, 116 ( sp )              //  4-byte Folded Spill
	.cfi_offset 26, -44
.LBB1_1:                                //  %for.cond
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_2 Depth 2
                                        //      Child Loop BB1_33 Depth 2
                                        //      Child Loop BB1_92 Depth 2
                                        //      Child Loop BB1_87 Depth 2
                                        //      Child Loop BB1_28 Depth 2
                                        //      Child Loop BB1_45 Depth 2
                                        //      Child Loop BB1_41 Depth 2
	add x18, x19, fp
	mv x23, x22
	add x10, x23, x12
	lbu x16, 0 ( x10 )
	bltu x0, x16, .LBB1_2
.LBB1_226:                              //  %for.cond
	jal x0, .LBB1_5
.LBB1_2:                                //  %while.cond
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x26, x23, x19
	xor x14, x16, 37
	beq x0, x14, .LBB1_6
.LBB1_3:                                //  %while.body
                                        //    in Loop: Header=BB1_2 Depth=2
	bltu x26, x27, .LBB1_4
.LBB1_227:                              //  %while.body
	jal x0, .LBB1_223
.LBB1_4:                                //  %if.then
                                        //    in Loop: Header=BB1_2 Depth=2
	add x10, x23, x18
	sb x16, 0 ( x10 )
	add x23, x23, 1
	add x10, x23, x12
	lbu x16, 0 ( x10 )
	bltu x0, x16, .LBB1_2
	jal x0, .LBB1_5
.LBB1_6:                                //  %if.end9
                                        //    in Loop: Header=BB1_1 Depth=1
	lbu x14, 1 ( x10 )
	xor x12, x14, 43
	beq x0, x12, .LBB1_8
.LBB1_7:                                //  %if.end9
                                        //    in Loop: Header=BB1_1 Depth=1
	xor x12, x14, 48
	bltu x0, x12, .LBB1_9
.LBB1_8:                                //  %if.then17
                                        //    in Loop: Header=BB1_1 Depth=1
	add x16, x10, 2
	lbu x10, 2 ( x10 )
	jal x0, .LBB1_10
.LBB1_9:                                //  %if.end9.if.end19_crit_edge
                                        //    in Loop: Header=BB1_1 Depth=1
	add x16, x10, 1
	mv x10, x14
	mv x14, x22
.LBB1_10:                               //  %if.end19
                                        //    in Loop: Header=BB1_1 Depth=1
	add x12, x10, -49
	and x12, x12, 255
	sw x29, 72 ( sp )               //  4-byte Folded Spill
	sw x14, 56 ( sp )               //  4-byte Folded Spill
	bltu x15, x12, .LBB1_13
.LBB1_11:                               //  %if.then26
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x10, x16
	mv x12, x17
	sw x27, 68 ( sp )               //  4-byte Folded Spill
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	sw x25, 48 ( sp )               //  4-byte Folded Spill
	sw fp, 52 ( sp )                //  4-byte Folded Spill
	mv fp, x9
	mv x21, x13
	mv x9, x5
	mv x27, x6
	mv x20, x7
	mv x25, x28
	jal strtoul
	lw x16, 76 ( sp )
	mv x28, x25
	mv x7, x20
	mv x6, x27
	mv x5, x9
	mv x9, fp
	lw x29, 72 ( sp )               //  4-byte Folded Reload
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	lw x25, 48 ( sp )               //  4-byte Folded Reload
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	lw x27, 68 ( sp )               //  4-byte Folded Reload
	mv x15, x10
	lbu x10, 0 ( x16 )
	mv x13, x21
	xor x11, x10, 79
	beq x0, x11, .LBB1_14
.LBB1_12:                               //  %if.end28
                                        //    in Loop: Header=BB1_1 Depth=1
	xor x10, x10, 69
	beq x0, x10, .LBB1_14
	jal x0, .LBB1_15
.LBB1_13:                               //    in Loop: Header=BB1_1 Depth=1
	mv x15, x22
	xor x11, x10, 79
	bltu x0, x11, .LBB1_12
.LBB1_14:                               //  %if.then38
                                        //    in Loop: Header=BB1_1 Depth=1
	add x16, x16, 1
.LBB1_15:                               //  %if.end41
                                        //    in Loop: Header=BB1_1 Depth=1
	lb x11, 0 ( x16 )
	add x10, x11, -37
	bgeu x24, x10, .LBB1_16
.LBB1_228:                              //  %if.end41
	jal x0, .LBB1_223
.LBB1_16:                               //  %if.end41
                                        //    in Loop: Header=BB1_1 Depth=1
	sll x10, x10, 2&31
	add x10, x5, x10
	lw x10, 0 ( x10 )
	and x21, x11, 255
	mv x24, x20
	jr x10
.LBB1_17:                               //  %sw.bb425
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x0, 107
	mv x26, x6
	mv x24, x20
	sw x7, 44 ( sp )                //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	beq x21, x10, .LBB1_134
.LBB1_18:                               //  %sw.bb425
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x10, %hi( .str.5 )
	mv x21, x5
	add x10, x10, %lo( .str.5 )
	jal x0, .LBB1_135
.LBB1_19:                               //  %sw.bb447
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x12, 8 ( x13 )
	add x10, x0, 12
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	beq x0, x12, .LBB1_22
.LBB1_20:                               //  %sw.bb447
                                        //    in Loop: Header=BB1_1 Depth=1
	xor x11, x12, 12
	beq x0, x11, .LBB1_22
.LBB1_21:                               //  %cond.false456
                                        //    in Loop: Header=BB1_1 Depth=1
	add x11, x0, 12
	mv x10, x12
	sw fp, 52 ( sp )                //  4-byte Folded Spill
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	mv x20, x13
	mv x9, x5
	mv x22, x6
	mv x26, x7
	mv x24, x28
	mv fp, x16
	jal __modsi3
	mv x16, fp
	mv x5, x9
	lw x9, 56 ( sp )                //  4-byte Folded Reload
	lw fp, 52 ( sp )                //  4-byte Folded Reload
	mv x28, x24
	mv x7, x26
	mv x6, x22
	mv x13, x20
.LBB1_22:                               //  %cond.end459
                                        //    in Loop: Header=BB1_1 Depth=1
	add x11, x0, 73
	mv x26, x16
	mv x24, x28
	mv x22, x7
	sw x6, 40 ( sp )                //  4-byte Folded Spill
	beq x21, x11, .LBB1_138
.LBB1_23:                               //  %cond.end459
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x11, %hi( .str.6 )
	mv x21, x5
	mv x20, x13
	add x11, x11, %lo( .str.6 )
	jal x0, .LBB1_139
.LBB1_24:                               //  %sw.bb527
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 8 ( x13 )
	add x11, x0, 11
	mv x21, x20
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	slt x10, x11, x10
	sll x10, x10, 2&31
	add x10, x10, x25
	lw x22, 164 ( x10 )
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	mv x24, x7
	mv x23, x6
	mv x10, x22
	mv x20, x5
	mv x18, x13
	jal strlen
	beq x0, x10, .LBB1_95
.LBB1_25:                               //  %for.body537.preheader
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x28, 64 ( sp )               //  4-byte Folded Reload
	lw x29, 72 ( sp )               //  4-byte Folded Reload
	lw x16, 68 ( sp )               //  4-byte Folded Reload
	mv x5, x20
	mv x13, x18
	mv x20, x21
	mv x6, x23
	mv x7, x24
	bltu x26, x27, .LBB1_28
	jal x0, .LBB1_225
.LBB1_26:                               //  %cond.end561
                                        //    in Loop: Header=BB1_28 Depth=2
	add x12, x26, fp
	add x22, x22, 1
	add x26, x26, 1
	add x10, x10, -1
	sb x11, 0 ( x12 )
	beq x0, x10, .LBB1_94
.LBB1_27:                               //  %for.body537
                                        //    in Loop: Header=BB1_28 Depth=2
	bltu x26, x27, .LBB1_28
.LBB1_229:                              //  %for.body537
	jal x0, .LBB1_225
.LBB1_28:                               //  %if.then541
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x12, 0 ( x16 )
	lbu x11, 0 ( x22 )
	xor x12, x12, 80
	bltu x0, x12, .LBB1_26
.LBB1_29:                               //  %cond.true545
                                        //    in Loop: Header=BB1_28 Depth=2
	lui x12, %hi( _ctype_ )
	add x12, x12, %lo( _ctype_ )
	add x12, x11, x12
	lbu x12, 1 ( x12 )
	seqz x14, x0
	and x12, x12, 3
	bne x12, x14, .LBB1_26
.LBB1_30:                               //    in Loop: Header=BB1_28 Depth=2
	add x11, x11, 32
	jal x0, .LBB1_26
.LBB1_31:                               //  %sw.bb78
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 16 ( x13 )
	mv x21, x20
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	sll x10, x10, 2&31
	add x10, x10, x25
	lw x22, 0 ( x10 )
	mv x24, x7
	mv x23, x6
	mv x20, x5
	mv x10, x22
	mv x18, x13
	jal strlen
	beq x0, x10, .LBB1_95
.LBB1_32:                               //  %for.body84.preheader
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x28, 64 ( sp )               //  4-byte Folded Reload
	lw x29, 72 ( sp )               //  4-byte Folded Reload
	lw x16, 68 ( sp )               //  4-byte Folded Reload
	mv x5, x20
	mv x13, x18
	mv x20, x21
	mv x6, x23
	mv x7, x24
.LBB1_33:                               //  %for.body84
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bltu x26, x27, .LBB1_34
.LBB1_230:                              //  %for.body84
	jal x0, .LBB1_225
.LBB1_34:                               //  %if.then88
                                        //    in Loop: Header=BB1_33 Depth=2
	lb x12, 0 ( x22 )
	add x11, x26, fp
	add x22, x22, 1
	add x26, x26, 1
	add x10, x10, -1
	sb x12, 0 ( x11 )
	bltu x0, x10, .LBB1_33
	jal x0, .LBB1_94
.LBB1_35:                               //  %sw.bb180
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x0, 100
	mv x26, x6
	mv x24, x20
	sw x7, 44 ( sp )                //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	beq x21, x10, .LBB1_141
.LBB1_36:                               //  %sw.bb180
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x10, %hi( .str.6 )
	mv x21, x5
	add x10, x10, %lo( .str.6 )
	jal x0, .LBB1_142
.LBB1_37:                               //  %sw.bb999
                                        //    in Loop: Header=BB1_1 Depth=1
	bltu x26, x27, .LBB1_38
.LBB1_231:                              //  %sw.bb999
	jal x0, .LBB1_225
.LBB1_38:                               //  %if.then1003
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x23, x18
	add x11, x0, 37
	jal x0, .LBB1_174
.LBB1_39:                               //  %sw.bb58
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 24 ( x13 )
	mv x21, x20
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	sll x10, x10, 2&31
	add x10, x10, x25
	lw x22, 124 ( x10 )
	mv x24, x7
	mv x23, x6
	mv x20, x5
	mv x10, x22
	mv x18, x13
	jal strlen
	beq x0, x10, .LBB1_95
.LBB1_40:                               //  %for.body65.preheader
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x28, 64 ( sp )               //  4-byte Folded Reload
	lw x29, 72 ( sp )               //  4-byte Folded Reload
	lw x16, 68 ( sp )               //  4-byte Folded Reload
	mv x5, x20
	mv x13, x18
	mv x20, x21
	mv x6, x23
	mv x7, x24
.LBB1_41:                               //  %for.body65
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bltu x26, x27, .LBB1_42
.LBB1_232:                              //  %for.body65
	jal x0, .LBB1_225
.LBB1_42:                               //  %if.then69
                                        //    in Loop: Header=BB1_41 Depth=2
	lb x12, 0 ( x22 )
	add x11, x26, fp
	add x22, x22, 1
	add x26, x26, 1
	add x10, x10, -1
	sb x12, 0 ( x11 )
	bltu x0, x10, .LBB1_41
	jal x0, .LBB1_94
.LBB1_43:                               //  %sw.bb97
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 16 ( x13 )
	mv x21, x20
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	sll x10, x10, 2&31
	add x10, x10, x25
	lw x22, 48 ( x10 )
	mv x24, x7
	mv x23, x6
	mv x20, x5
	mv x10, x22
	mv x18, x13
	jal strlen
	beq x0, x10, .LBB1_95
.LBB1_44:                               //  %for.body104.preheader
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x28, 64 ( sp )               //  4-byte Folded Reload
	lw x29, 72 ( sp )               //  4-byte Folded Reload
	lw x16, 68 ( sp )               //  4-byte Folded Reload
	mv x5, x20
	mv x13, x18
	mv x20, x21
	mv x6, x23
	mv x7, x24
.LBB1_45:                               //  %for.body104
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bltu x26, x27, .LBB1_46
.LBB1_233:                              //  %for.body104
	jal x0, .LBB1_225
.LBB1_46:                               //  %if.then108
                                        //    in Loop: Header=BB1_45 Depth=2
	lb x12, 0 ( x22 )
	add x11, x26, fp
	add x22, x22, 1
	add x26, x26, 1
	add x10, x10, -1
	sb x12, 0 ( x11 )
	bltu x0, x10, .LBB1_45
	jal x0, .LBB1_94
.LBB1_47:                               //  %sw.bb136
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x22, 20 ( x13 )
	mv x24, x15
	mv x26, x7
	mv x21, x13
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	sw x6, 40 ( sp )                //  4-byte Folded Spill
	sw x5, 52 ( sp )                //  4-byte Folded Spill
	blt x22, x0, .LBB1_152
.LBB1_48:                               //  %cond.true
                                        //    in Loop: Header=BB1_1 Depth=1
	add x11, x0, 100
	mv x10, x22
	jal __udivsi3
	add x10, x10, 19
	lw x14, 56 ( sp )               //  4-byte Folded Reload
	lui x11, %hi( .str.1 )
	beq x0, x14, .LBB1_49
.LBB1_153:                              //  %if.then149
                                        //    in Loop: Header=BB1_1 Depth=1
	add x12, x11, %lo( .str.1 )
	add x11, x0, 99
	blt x11, x10, .LBB1_190
.LBB1_154:                              //  %if.then149
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x11, x12
	add x13, x0, 43
	beq x14, x13, .LBB1_192
.LBB1_191:                              //  %if.then149
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x11, x12
.LBB1_192:                              //  %if.then149
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x12, %hi( .str.2 )
	add x12, x12, %lo( .str.2 )
	add x13, x0, -1900
	bge x22, x13, .LBB1_194
.LBB1_193:                              //    in Loop: Header=BB1_1 Depth=1
	lui x11, %hi( .str.4 )
	add x11, x11, %lo( .str.4 )
.LBB1_194:                              //  %if.end158
                                        //    in Loop: Header=BB1_1 Depth=1
	slti x13, x22, -1900
	add x14, x0, 2
	bltu x14, x24, .LBB1_196
.LBB1_195:                              //  %if.end158
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x24, x14
.LBB1_196:                              //  %if.end158
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x10, 20 ( sp )
	sub x10, x9, x19
	sub x10, x10, x23
	sub x13, x24, x13
	sw x10, 4 ( sp )
	add x10, x23, x18
	sw x13, 16 ( sp )
	sw x11, 12 ( sp )
	sw x12, 8 ( sp )
	sw x10, 0 ( sp )
	jal sniprintf
	bge x10, x0, .LBB1_197
.LBB1_234:                              //  %if.end158
	jal x0, .LBB1_225
.LBB1_197:                              //  %lor.lhs.false174
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x5, 52 ( sp )                //  4-byte Folded Reload
	lw x6, 40 ( sp )                //  4-byte Folded Reload
	lw x28, 64 ( sp )               //  4-byte Folded Reload
	lw x29, 72 ( sp )               //  4-byte Folded Reload
	lw x16, 68 ( sp )               //  4-byte Folded Reload
	add x10, x19, x10
	add x19, x23, x10
	mv x13, x21
	mv x7, x26
	bgeu x19, x9, .LBB1_235
.LBB1_236:                              //  %lor.lhs.false174
                                        //    in Loop: Header=BB1_1 Depth=1
	jal x0, .LBB1_218
.LBB1_235:                              //  %lor.lhs.false174
	jal x0, .LBB1_225
.LBB1_50:                               //  %sw.bb196
                                        //    in Loop: Header=BB1_1 Depth=1
	sub x10, x9, x19
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	sub x20, x10, x23
	lw x10, 16 ( x13 )
	lw x22, 12 ( x13 )
	add x18, x23, x18
	mv x24, x6
	add x21, x10, 1
	lw x10, 20 ( x13 )
	mv x26, x5
	sw x13, 56 ( sp )               //  4-byte Folded Spill
	sw x7, 44 ( sp )                //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	bge x10, x0, .LBB1_52
.LBB1_51:                               //  %cond.false207
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x10, 1900
	jal abs
.LBB1_52:                               //  %cond.end212
                                        //    in Loop: Header=BB1_1 Depth=1
	add x11, x0, 100
	jal __modsi3
	sw x10, 20 ( sp )
	lui x10, %hi( .str.7 )
	add x10, x10, %lo( .str.7 )
	sw x22, 16 ( sp )
	sw x21, 12 ( sp )
	sw x10, 8 ( sp )
	sw x20, 4 ( sp )
	sw x18, 0 ( sp )
	jal sniprintf
	bge x10, x0, .LBB1_53
.LBB1_237:                              //  %cond.end212
	jal x0, .LBB1_225
.LBB1_53:                               //  %lor.lhs.false217
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x13, 56 ( sp )               //  4-byte Folded Reload
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	lw x7, 44 ( sp )                //  4-byte Folded Reload
	lw x28, 64 ( sp )               //  4-byte Folded Reload
	lw x29, 72 ( sp )               //  4-byte Folded Reload
	lw x16, 68 ( sp )               //  4-byte Folded Reload
	add x10, x19, x10
	add x19, x23, x10
	mv x5, x26
	mv x6, x24
	bltu x19, x9, .LBB1_218
	jal x0, .LBB1_225
.LBB1_54:                               //  %sw.bb223
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x11, 56 ( sp )               //  4-byte Folded Reload
	mv x22, x0
	add x10, x0, 10
	bne x11, x22, .LBB1_56
.LBB1_55:                               //  %sw.bb223
                                        //    in Loop: Header=BB1_1 Depth=1
	add x11, x0, 43
	mv x15, x10
.LBB1_56:                               //  %sw.bb223
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x0, 37
	sb x10, 76 ( sp )
	add x10, x0, 6
	add x21, sp, 78
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	sb x11, 77 ( sp )
	bltu x10, x15, .LBB1_58
.LBB1_57:                               //  %sw.bb223
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x15, x10
.LBB1_58:                               //  %sw.bb223
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x26, x6
	mv x24, x5
	mv x20, x13
	add x11, x15, -6
	mv x10, x21
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	sw x7, 44 ( sp )                //  4-byte Folded Spill
	beq x0, x11, .LBB1_186
.LBB1_59:                               //  %if.then241
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x10, %hi( .str.8 )
	add x10, x10, %lo( .str.8 )
	sw x10, 8 ( sp )
	add x10, x0, 30
	sw x11, 12 ( sp )
	sw x10, 4 ( sp )
	sw x21, 0 ( sp )
	jal sniprintf
	blt x22, x10, .LBB1_185
.LBB1_60:                               //  %if.then241
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x10, x21
	jal x0, .LBB1_186
.LBB1_61:                               //  %sw.bb313
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x24, 20 ( x13 )
	mv x10, x13
	sw x15, 48 ( sp )               //  4-byte Folded Spill
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	sw x7, 44 ( sp )                //  4-byte Folded Spill
	sw x6, 40 ( sp )                //  4-byte Folded Spill
	sw x5, 52 ( sp )                //  4-byte Folded Spill
	mv x26, x13
	jal iso_year_adjust
	mv x22, x10
	blt x24, x0, .LBB1_155
.LBB1_62:                               //  %cond.end332.thread
                                        //    in Loop: Header=BB1_1 Depth=1
	add x11, x0, 100
	mv x10, x24
	mv x21, x26
	jal __udivsi3
	add x26, x10, 19
	mv x10, x24
	add x11, x0, 100
	jal __modsi3
	mv x13, x21
	bge x22, x0, .LBB1_63
	jal x0, .LBB1_158
.LBB1_65:                               //  %sw.bb506
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 4 ( x13 )
	jal x0, .LBB1_66
.LBB1_69:                               //  %sw.bb571
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 4 ( x13 )
	lw x11, 8 ( x13 )
	mv x22, x20
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	sw x10, 16 ( sp )
	lui x10, %hi( .str.12 )
	add x10, x10, %lo( .str.12 )
	sw x10, 8 ( sp )
	sub x10, x9, x19
	sub x10, x10, x23
	sw x10, 4 ( sp )
	add x10, x23, x18
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	mv x26, x7
	mv x24, x6
	mv x21, x5
	mv x20, x13
	sw x11, 12 ( sp )
	sw x10, 0 ( sp )
	jal sniprintf
	bge x10, x0, .LBB1_68
	jal x0, .LBB1_225
.LBB1_70:                               //  %sw.bb649
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 0 ( x13 )
.LBB1_66:                               //  %sw.bb506
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x11, %hi( .str.5 )
	add x11, x11, %lo( .str.5 )
	mv x22, x20
	jal x0, .LBB1_67
.LBB1_71:                               //  %sw.bb671
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 8 ( x13 )
	lw x11, 0 ( x13 )
	lw x12, 4 ( x13 )
	mv x22, x20
	sw x10, 12 ( sp )
	lui x10, %hi( .str.14 )
	add x10, x10, %lo( .str.14 )
	sw x10, 8 ( sp )
	sub x10, x9, x19
	sub x10, x10, x23
	sw x10, 4 ( sp )
	add x10, x23, x18
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	mv x26, x7
	mv x24, x6
	mv x21, x5
	mv x20, x13
	sw x12, 16 ( sp )
	sw x11, 20 ( sp )
	sw x10, 0 ( sp )
	jal sniprintf
	bge x10, x0, .LBB1_68
	jal x0, .LBB1_225
.LBB1_72:                               //  %sw.bb706
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 24 ( x13 )
	lw x11, 28 ( x13 )
	mv x22, x20
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	sub x10, x11, x10
	add x10, x10, 7
	add x11, x0, 7
	mv x26, x7
	mv x24, x6
	mv x21, x5
	mv x20, x13
	jal __divsi3
	sw x10, 12 ( sp )
	sub x10, x9, x19
	lui x11, %hi( .str.5 )
	sub x10, x10, x23
	add x11, x11, %lo( .str.5 )
	sw x10, 4 ( sp )
	add x10, x23, x18
	sw x11, 8 ( sp )
	sw x10, 0 ( sp )
	jal sniprintf
	bge x10, x0, .LBB1_68
	jal x0, .LBB1_225
.LBB1_73:                               //  %sw.bb723
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x10, x13
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	sw x7, 44 ( sp )                //  4-byte Folded Spill
	sw x6, 40 ( sp )                //  4-byte Folded Spill
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	sw x5, 52 ( sp )                //  4-byte Folded Spill
	mv x26, x13
	jal iso_year_adjust
	mv x12, x26
	mv x24, x10
	lw x10, 24 ( x12 )
	mv x22, x0
	beq x10, x22, .LBB1_144
.LBB1_74:                               //  %sw.bb723
                                        //    in Loop: Header=BB1_1 Depth=1
	add x20, x10, -1
	bge x0, x24, .LBB1_75
.LBB1_145:                              //    in Loop: Header=BB1_1 Depth=1
	seqz x10, x0
	jal x0, .LBB1_214
.LBB1_78:                               //  %sw.bb813
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 24 ( x13 )
	mv x22, x0
	mv x26, x6
	mv x24, x20
	mv x21, x5
	sw x7, 44 ( sp )                //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	beq x10, x22, .LBB1_146
.LBB1_79:                               //  %sw.bb813
                                        //    in Loop: Header=BB1_1 Depth=1
	seqz x11, x0
	sub x10, x11, x10
	jal x0, .LBB1_147
.LBB1_80:                               //  %sw.bb123
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x24, x28
	jal x0, .LBB1_119
.LBB1_81:                               //  %sw.bb867
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 20 ( x13 )
	add x11, x0, -1901
	blt x11, x10, .LBB1_149
.LBB1_82:                               //  %if.then879
                                        //    in Loop: Header=BB1_1 Depth=1
	add x11, x0, 45
	sb x11, 76 ( sp )
	add x11, x0, -1900
	sub x10, x11, x10
	lw x17, 56 ( sp )               //  4-byte Folded Reload
	sw x10, 52 ( sp )               //  4-byte Folded Spill
	seqz x10, x0
	add x11, sp, 77
	jal x0, .LBB1_202
.LBB1_83:                               //  %sw.bb962
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 32 ( x13 )
	blt x10, x0, .LBB1_143
.LBB1_84:                               //  %if.then966
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x21, x20
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	sw x7, 44 ( sp )                //  4-byte Folded Spill
	mv x23, x6
	mv x20, x5
	mv x18, x13
	jal __tz_lock
	lw x24, 72 ( sp )               //  4-byte Folded Reload
	bltu x0, x24, .LBB1_86
.LBB1_85:                               //  %if.then968
                                        //    in Loop: Header=BB1_1 Depth=1
	jal _tzset_unlocked
	seqz x24, x0
.LBB1_86:                               //  %if.then971
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 32 ( x18 )
	lui x11, %hi( _tzname )
	add x11, x11, %lo( _tzname )
	slt x10, x0, x10
	sll x10, x10, 2&31
	add x10, x10, x11
	lw x22, 0 ( x10 )
	mv x10, x22
	jal strlen
	mv x19, x26
	beq x0, x10, .LBB1_89
.LBB1_87:                               //  %for.body981
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bgeu x19, x27, .LBB1_224
.LBB1_88:                               //  %if.then985
                                        //    in Loop: Header=BB1_87 Depth=2
	lb x12, 0 ( x22 )
	add x11, x19, fp
	add x22, x22, 1
	add x19, x19, 1
	add x10, x10, -1
	sb x12, 0 ( x11 )
	bltu x0, x10, .LBB1_87
.LBB1_89:                               //  %for.end993
                                        //    in Loop: Header=BB1_1 Depth=1
	jal __tz_unlock
	lw x7, 44 ( sp )                //  4-byte Folded Reload
	lw x28, 64 ( sp )               //  4-byte Folded Reload
	lw x16, 68 ( sp )               //  4-byte Folded Reload
	mv x5, x20
	mv x13, x18
	mv x20, x21
	mv x6, x23
	mv x29, x24
	jal x0, .LBB1_218
.LBB1_90:                               //  %sw.bb
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 24 ( x13 )
	mv x21, x20
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	sll x10, x10, 2&31
	add x10, x10, x25
	lw x22, 96 ( x10 )
	mv x24, x7
	mv x23, x6
	mv x20, x5
	mv x10, x22
	mv x18, x13
	jal strlen
	beq x0, x10, .LBB1_95
.LBB1_91:                               //  %for.body.preheader
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x28, 64 ( sp )               //  4-byte Folded Reload
	lw x29, 72 ( sp )               //  4-byte Folded Reload
	lw x16, 68 ( sp )               //  4-byte Folded Reload
	mv x5, x20
	mv x13, x18
	mv x20, x21
	mv x6, x23
	mv x7, x24
.LBB1_92:                               //  %for.body
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bgeu x26, x27, .LBB1_225
.LBB1_93:                               //  %if.then51
                                        //    in Loop: Header=BB1_92 Depth=2
	lb x12, 0 ( x22 )
	add x11, x26, fp
	add x22, x22, 1
	add x26, x26, 1
	add x10, x10, -1
	sb x12, 0 ( x11 )
	bltu x0, x10, .LBB1_92
.LBB1_94:                               //    in Loop: Header=BB1_1 Depth=1
	mv x19, x26
	jal x0, .LBB1_218
.LBB1_95:                               //    in Loop: Header=BB1_1 Depth=1
	mv x5, x20
	mv x19, x26
	mv x13, x18
	mv x20, x21
	mv x6, x23
	mv x7, x24
	jal x0, .LBB1_124
.LBB1_96:                               //  %sw.bb262
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x10, x13
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	sw x7, 44 ( sp )                //  4-byte Folded Spill
	sw x6, 40 ( sp )                //  4-byte Folded Spill
	mv x26, x20
	mv x24, x5
	mv x21, x13
	jal iso_year_adjust
	mv x22, x10
	lw x10, 20 ( x21 )
	mv x20, x21
	bge x10, x0, .LBB1_98
.LBB1_97:                               //  %cond.false270
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x10, 1900
	jal abs
.LBB1_98:                               //  %cond.end275
                                        //    in Loop: Header=BB1_1 Depth=1
	add x11, x0, 100
	jal __modsi3
	blt x22, x0, .LBB1_168
.LBB1_99:                               //  %if.else284
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x13, x20
	beq x0, x22, .LBB1_198
.LBB1_100:                              //    in Loop: Header=BB1_1 Depth=1
	add x11, x0, -1
	add x12, x0, -1900
	lw x13, 20 ( x13 )
	bge x13, x12, .LBB1_169
	jal x0, .LBB1_199
.LBB1_101:                              //  %sw.bb479
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 28 ( x13 )
	lui x11, %hi( .str.11 )
	add x11, x11, %lo( .str.11 )
	jal x0, .LBB1_102
.LBB1_103:                              //  %sw.bb492
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 16 ( x13 )
	lui x11, %hi( .str.5 )
	add x11, x11, %lo( .str.5 )
.LBB1_102:                              //  %sw.bb479
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x22, x20
	add x10, x10, 1
.LBB1_67:                               //  %sw.bb506
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x10, 12 ( sp )
	sub x10, x9, x19
	sub x10, x10, x23
	sw x10, 4 ( sp )
	add x10, x23, x18
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	mv x26, x7
	mv x24, x6
	mv x21, x5
	mv x20, x13
	sw x11, 8 ( sp )
	sw x10, 0 ( sp )
	jal sniprintf
	blt x10, x0, .LBB1_225
.LBB1_68:                               //  %lor.lhs.false512
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x28, 64 ( sp )               //  4-byte Folded Reload
	lw x29, 72 ( sp )               //  4-byte Folded Reload
	lw x16, 68 ( sp )               //  4-byte Folded Reload
	add x10, x19, x10
	mv x13, x20
	add x19, x23, x10
	mv x5, x21
	mv x20, x22
	mv x6, x24
	mv x7, x26
	bltu x19, x9, .LBB1_218
	jal x0, .LBB1_225
.LBB1_104:                              //  %sw.bb518
                                        //    in Loop: Header=BB1_1 Depth=1
	bgeu x26, x27, .LBB1_225
.LBB1_105:                              //  %if.then522
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x23, x18
	add x11, x0, 10
	jal x0, .LBB1_174
.LBB1_106:                              //  %sw.bb119
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x24, x6
	jal x0, .LBB1_119
.LBB1_107:                              //  %sw.bb585
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 32 ( x13 )
	mv x22, x0
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	sw x5, 52 ( sp )                //  4-byte Folded Spill
	sw x6, 40 ( sp )                //  4-byte Folded Spill
	sw x7, 44 ( sp )                //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	blt x10, x0, .LBB1_170
.LBB1_108:                              //  %if.then588
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x20, x13
	jal __tz_lock
	lw x10, 72 ( sp )               //  4-byte Folded Reload
	bltu x0, x10, .LBB1_110
.LBB1_109:                              //  %if.then590
                                        //    in Loop: Header=BB1_1 Depth=1
	jal _tzset_unlocked
	seqz x10, x0
.LBB1_110:                              //  %if.end591
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x10, 72 ( sp )               //  4-byte Folded Spill
	jal __gettzinfo
	lw x11, 32 ( x20 )
	slt x11, x0, x11
	sll x11, x11, 5&31
	add x10, x11, x10
	lw x10, 36 ( x10 )
	sub x10, x0, x10
	sw x10, 56 ( sp )               //  4-byte Folded Spill
	jal __tz_unlock
	mv x13, x20
	jal x0, .LBB1_171
.LBB1_111:                              //  %sw.bb662
                                        //    in Loop: Header=BB1_1 Depth=1
	bgeu x26, x27, .LBB1_225
.LBB1_112:                              //  %if.then666
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x23, x18
	add x11, x0, 9
	jal x0, .LBB1_174
.LBB1_113:                              //  %sw.bb686
                                        //    in Loop: Header=BB1_1 Depth=1
	bgeu x26, x27, .LBB1_225
.LBB1_114:                              //  %if.then690
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 24 ( x13 )
	beq x0, x10, .LBB1_173
.LBB1_115:                              //  %if.else697
                                        //    in Loop: Header=BB1_1 Depth=1
	add x11, x23, x18
	add x10, x10, 48
	sb x10, 0 ( x11 )
	jal x0, .LBB1_175
.LBB1_116:                              //  %sw.bb801
                                        //    in Loop: Header=BB1_1 Depth=1
	bgeu x26, x27, .LBB1_225
.LBB1_117:                              //  %if.then805
                                        //    in Loop: Header=BB1_1 Depth=1
	lb x11, 24 ( x13 )
	add x10, x23, x18
	add x11, x11, 48
	jal x0, .LBB1_174
.LBB1_118:                              //  %sw.bb121
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x24, x7
.LBB1_119:                              //  %recurse
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x10, x24
	mv x22, x20
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	sw x7, 44 ( sp )                //  4-byte Folded Spill
	sw x6, 40 ( sp )                //  4-byte Folded Spill
	mv x21, x5
	mv x20, x13
	jal strlen
	lbu x10, 0 ( x24 )
	beq x0, x10, .LBB1_122
.LBB1_120:                              //  %if.then126
                                        //    in Loop: Header=BB1_1 Depth=1
	sub x11, x9, x19
	add x10, x23, x18
	sub x11, x11, x23
	mv x12, x24
	mv x13, x20
	jal __strftime
	bge x0, x10, .LBB1_225
.LBB1_121:                              //  %if.then132
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x19, x10
	add x19, x23, x10
	jal x0, .LBB1_123
.LBB1_122:                              //    in Loop: Header=BB1_1 Depth=1
	mv x19, x26
.LBB1_123:                              //  %sw.epilogthread-pre-split
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x6, 40 ( sp )                //  4-byte Folded Reload
	lw x7, 44 ( sp )                //  4-byte Folded Reload
	mv x13, x20
	mv x5, x21
	mv x20, x22
.LBB1_124:                              //  %sw.epilogthread-pre-split
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x28, 64 ( sp )               //  4-byte Folded Reload
	lw x29, 72 ( sp )               //  4-byte Folded Reload
	lw x16, 68 ( sp )               //  4-byte Folded Reload
	jal x0, .LBB1_218
.LBB1_125:                              //  %sw.bb841
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 20 ( x13 )
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	mv x20, x13
	mv x24, x28
	mv x26, x6
	mv x21, x5
	sw x7, 44 ( sp )                //  4-byte Folded Spill
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	bge x10, x0, .LBB1_127
.LBB1_126:                              //  %cond.false849
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x10, 1900
	jal abs
.LBB1_127:                              //  %cond.end854
                                        //    in Loop: Header=BB1_1 Depth=1
	add x11, x0, 100
	mv x22, x0
	jal __modsi3
	sw x10, 12 ( sp )
	sub x10, x9, x19
	lui x11, %hi( .str.5 )
	sub x10, x10, x23
	add x11, x11, %lo( .str.5 )
	sw x10, 4 ( sp )
	add x10, x23, x18
	sw x11, 8 ( sp )
	sw x10, 0 ( sp )
	jal sniprintf
	blt x10, x0, .LBB1_223
.LBB1_128:                              //  %lor.lhs.false861
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x13, x20
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	lw x7, 44 ( sp )                //  4-byte Folded Reload
	lw x29, 72 ( sp )               //  4-byte Folded Reload
	lw x16, 68 ( sp )               //  4-byte Folded Reload
	add x10, x19, x10
	add x19, x23, x10
	mv x5, x21
	mv x6, x26
	mv x28, x24
	bltu x19, x9, .LBB1_218
	jal x0, .LBB1_225
.LBB1_129:                              //  %sw.bb924
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 32 ( x13 )
	blt x10, x0, .LBB1_143
.LBB1_130:                              //  %if.then928
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	sw x7, 44 ( sp )                //  4-byte Folded Spill
	sw x6, 40 ( sp )                //  4-byte Folded Spill
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	sw x5, 52 ( sp )                //  4-byte Folded Spill
	mv x24, x13
	jal __tz_lock
	lw x26, 72 ( sp )               //  4-byte Folded Reload
	bltu x0, x26, .LBB1_132
.LBB1_131:                              //  %if.then931
                                        //    in Loop: Header=BB1_1 Depth=1
	jal _tzset_unlocked
	seqz x26, x0
.LBB1_132:                              //  %if.end932
                                        //    in Loop: Header=BB1_1 Depth=1
	jal __gettzinfo
	lw x11, 32 ( x24 )
	add x20, x23, x18
	slt x11, x0, x11
	sll x11, x11, 5&31
	add x10, x11, x10
	lw x22, 36 ( x10 )
	sub x11, x9, x19
	lui x10, %hi( -3600 )
	sub x21, x11, x23
	add x11, x10, %lo( -3600 )
	mv x10, x22
	jal __divsi3
	mv x18, x10
	jal __tz_unlock
	add x11, x0, -60
	mv x10, x22
	jal __divsi3
	jal labs
	add x11, x0, 60
	jal __modsi3
	sw x10, 16 ( sp )
	lui x10, %hi( .str.15 )
	add x10, x10, %lo( .str.15 )
	sw x18, 12 ( sp )
	sw x10, 8 ( sp )
	sw x21, 4 ( sp )
	sw x20, 0 ( sp )
	jal sniprintf
	blt x10, x0, .LBB1_225
.LBB1_133:                              //  %cleanup957
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x5, 52 ( sp )                //  4-byte Folded Reload
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	lw x6, 40 ( sp )                //  4-byte Folded Reload
	lw x7, 44 ( sp )                //  4-byte Folded Reload
	lw x28, 64 ( sp )               //  4-byte Folded Reload
	lw x16, 68 ( sp )               //  4-byte Folded Reload
	add x10, x19, x10
	add x19, x23, x10
	mv x13, x24
	mv x29, x26
	bltu x19, x9, .LBB1_218
	jal x0, .LBB1_225
.LBB1_134:                              //    in Loop: Header=BB1_1 Depth=1
	lui x10, %hi( .str.6 )
	mv x21, x5
	add x10, x10, %lo( .str.6 )
.LBB1_135:                              //  %sw.bb425
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x11, 8 ( x13 )
	jal x0, .LBB1_136
.LBB1_138:                              //    in Loop: Header=BB1_1 Depth=1
	lui x11, %hi( .str.5 )
	mv x21, x5
	mv x20, x13
	add x11, x11, %lo( .str.5 )
.LBB1_139:                              //  %cond.end459
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x10, 12 ( sp )
	sub x10, x9, x19
	sub x10, x10, x23
	sw x10, 4 ( sp )
	add x10, x23, x18
	sw x11, 8 ( sp )
	sw x10, 0 ( sp )
	jal sniprintf
	blt x10, x0, .LBB1_225
.LBB1_140:                              //  %cleanup476
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x13, x20
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	lw x6, 40 ( sp )                //  4-byte Folded Reload
	lw x29, 72 ( sp )               //  4-byte Folded Reload
	add x10, x19, x10
	add x19, x23, x10
	mv x5, x21
	mv x7, x22
	mv x28, x24
	mv x16, x26
	bltu x19, x9, .LBB1_218
	jal x0, .LBB1_225
.LBB1_141:                              //    in Loop: Header=BB1_1 Depth=1
	lui x10, %hi( .str.5 )
	mv x21, x5
	add x10, x10, %lo( .str.5 )
.LBB1_142:                              //  %sw.bb180
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x11, 12 ( x13 )
.LBB1_136:                              //  %sw.bb425
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x10, 8 ( sp )
	sub x10, x9, x19
	sub x10, x10, x23
	sw x10, 4 ( sp )
	add x10, x23, x18
	mv x22, x0
	mv x20, x13
	sw x11, 12 ( sp )
	sw x10, 0 ( sp )
	jal sniprintf
	blt x10, x0, .LBB1_223
.LBB1_137:                              //  %lor.lhs.false435
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x7, 44 ( sp )                //  4-byte Folded Reload
	lw x28, 64 ( sp )               //  4-byte Folded Reload
	lw x29, 72 ( sp )               //  4-byte Folded Reload
	lw x16, 68 ( sp )               //  4-byte Folded Reload
	add x10, x19, x10
	mv x13, x20
	add x19, x23, x10
	mv x5, x21
	mv x20, x24
	mv x6, x26
	bltu x19, x9, .LBB1_218
	jal x0, .LBB1_225
.LBB1_143:                              //    in Loop: Header=BB1_1 Depth=1
	mv x19, x26
	jal x0, .LBB1_219
.LBB1_144:                              //    in Loop: Header=BB1_1 Depth=1
	add x20, x0, 6
	blt x0, x24, .LBB1_145
.LBB1_75:                               //  %if.else742
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x21, 28 ( x12 )
	add x11, x0, 7
	sw x12, 56 ( sp )               //  4-byte Folded Spill
	sub x10, x21, x20
	add x10, x10, 10
	jal __divsi3
	bge x24, x0, .LBB1_214
.LBB1_76:                               //  %if.then745
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 56 ( sp )               //  4-byte Folded Reload
	sw x21, 48 ( sp )               //  4-byte Folded Spill
	lw x10, 20 ( x10 )
	blt x10, x22, .LBB1_207
.LBB1_77:                               //  %if.then745
                                        //    in Loop: Header=BB1_1 Depth=1
	add x11, x0, -101
	jal x0, .LBB1_208
.LBB1_146:                              //    in Loop: Header=BB1_1 Depth=1
	add x10, x0, -6
.LBB1_147:                              //  %sw.bb813
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x11, 28 ( x13 )
	mv x20, x13
	add x10, x10, x11
	add x10, x10, 7
	add x11, x0, 7
	jal __divsi3
	sw x10, 12 ( sp )
	sub x10, x9, x19
	lui x11, %hi( .str.5 )
	sub x10, x10, x23
	add x11, x11, %lo( .str.5 )
	sw x10, 4 ( sp )
	add x10, x23, x18
	sw x11, 8 ( sp )
	sw x10, 0 ( sp )
	jal sniprintf
	blt x10, x0, .LBB1_223
.LBB1_148:                              //  %cleanup838
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x19, x10
	mv x13, x20
	add x19, x23, x10
	mv x5, x21
	mv x20, x24
	mv x6, x26
	jal x0, .LBB1_217
.LBB1_149:                              //  %if.else883
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x17, 56 ( sp )               //  4-byte Folded Reload
	add x29, x10, 1900
	mv x10, x0
	add x12, sp, 77
	xor x11, x17, 43
	add x14, sp, 76
	sw x29, 52 ( sp )               //  4-byte Folded Spill
	bltu x0, x11, .LBB1_201
.LBB1_150:                              //  %if.else883
                                        //    in Loop: Header=BB1_1 Depth=1
	srl x11, x29, 4&31
	sltiu x11, x11, 625
	bltu x0, x11, .LBB1_201
.LBB1_151:                              //  %if.then890
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x0, 43
	sb x10, 76 ( sp )
	seqz x10, x0
	mv x11, x12
	jal x0, .LBB1_202
.LBB1_152:                              //  %cond.false
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x22, 1900
	jal abs
	add x11, x0, 100
	jal __divsi3
	lw x14, 56 ( sp )               //  4-byte Folded Reload
	lui x11, %hi( .str.1 )
	bltu x0, x14, .LBB1_153
.LBB1_49:                               //    in Loop: Header=BB1_1 Depth=1
	lui x12, %hi( .str )
	add x12, x12, %lo( .str )
	add x11, x11, %lo( .str.1 )
	add x13, x0, -1900
	blt x22, x13, .LBB1_193
	jal x0, .LBB1_194
.LBB1_155:                              //  %cond.end332
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x24, 1900
	jal abs
	add x11, x0, 100
	jal __divsi3
	sw x10, 36 ( sp )               //  4-byte Folded Spill
	lw x10, 20 ( x26 )
	mv x21, x26
	bge x10, x0, .LBB1_157
.LBB1_156:                              //  %cond.false341
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x10, 1900
	jal abs
.LBB1_157:                              //  %cond.end346
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x26, 36 ( sp )               //  4-byte Folded Reload
	add x11, x0, 100
	jal __modsi3
	mv x13, x21
	bge x22, x0, .LBB1_63
.LBB1_158:                              //  %land.lhs.true350
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x11, 20 ( x13 )
	slti x11, x11, -1899
	beq x0, x11, .LBB1_63
.LBB1_159:                              //    in Loop: Header=BB1_1 Depth=1
	seqz x22, x0
	mv x11, x22
	add x21, x10, x11
	mv x24, x13
	xor x10, x21, 100
	bltu x0, x10, .LBB1_166
.LBB1_160:                              //  %if.then370
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x21, x0
	add x26, x26, 1
	jal x0, .LBB1_161
.LBB1_63:                               //  %if.else355
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x11, x0
	blt x11, x22, .LBB1_163
.LBB1_64:                               //  %if.else355
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x11, x22
	add x12, x0, -1900
	blt x24, x12, .LBB1_165
.LBB1_164:                              //  %if.else355
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x11, x22
.LBB1_165:                              //  %if.else355
                                        //    in Loop: Header=BB1_1 Depth=1
	slti x22, x24, -1900
	add x21, x10, x11
	mv x24, x13
	xor x10, x21, 100
	beq x0, x10, .LBB1_160
.LBB1_166:                              //  %if.end362
                                        //    in Loop: Header=BB1_1 Depth=1
	xor x10, x21, -1
	bltu x0, x10, .LBB1_161
.LBB1_167:                              //  %if.then366
                                        //    in Loop: Header=BB1_1 Depth=1
	add x21, x0, 99
	add x26, x26, -1
.LBB1_161:                              //  %if.end373
                                        //    in Loop: Header=BB1_1 Depth=1
	add x11, x0, 100
	mv x10, x26
	jal __mulsi3
	add x21, x21, x10
	beq x0, x22, .LBB1_176
.LBB1_162:                              //    in Loop: Header=BB1_1 Depth=1
	lw x13, 48 ( sp )               //  4-byte Folded Reload
	lw x14, 56 ( sp )               //  4-byte Folded Reload
	add x10, x0, 45
	jal x0, .LBB1_179
.LBB1_163:                              //    in Loop: Header=BB1_1 Depth=1
	add x11, x0, -1
	add x12, x0, -1900
	blt x24, x12, .LBB1_165
	jal x0, .LBB1_164
.LBB1_168:                              //    in Loop: Header=BB1_1 Depth=1
	seqz x11, x0
	add x12, x0, -1899
	mv x13, x20
	lw x13, 20 ( x13 )
	blt x13, x12, .LBB1_199
.LBB1_169:                              //  %if.end293.sink.split
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x11, x22
	jal x0, .LBB1_199
.LBB1_170:                              //    in Loop: Header=BB1_1 Depth=1
	sw x22, 56 ( sp )               //  4-byte Folded Spill
.LBB1_171:                              //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x24, 20 ( x13 )
	mv x20, x13
	add x21, x24, -69
	sltu x10, x21, x24
	sra x11, x24, 31&31
	add x26, x10, x11
	add x10, x24, -1
	add x11, x0, -100
	jal __divsi3
	lw x12, 28 ( x20 )
	sra x11, x10, 31&31
	sra x13, x12, 31&31
	add x12, x12, x10
	add x11, x13, x11
	sltu x10, x12, x10
	add x10, x10, x11
	add x11, x26, -1
	sra x13, x11, 31&31
	srl x13, x13, 30&31
	add x13, x13, x21
	sltu x14, x13, x21
	add x11, x14, x11
	sra x14, x11, 2&31
	sll x11, x11, 30&31
	srl x13, x13, 2&31
	or x11, x11, x13
	add x21, x11, x12
	add x10, x14, x10
	sltu x11, x21, x12
	add x26, x11, x10
	add x10, x24, 299
	add x11, x0, 400
	jal __divsi3
	sra x11, x10, 31&31
	add x11, x11, x26
	add x26, x10, x21
	sltu x10, x26, x21
	add x21, x10, x11
	add x11, x0, 365
	mv x10, x24
	jal __mulsi3
	lui x11, %hi( -25550 )
	add x11, x11, %lo( -25550 )
	add x10, x11, x10
	sra x11, x10, 31&31
	add x10, x10, x26
	add x11, x11, x21
	sltu x12, x10, x26
	add x11, x12, x11
	add x12, x0, 24
	mv x13, x22
	jal __muldi3
	lw x12, 8 ( x20 )
	add x24, x0, 60
	sra x13, x12, 31&31
	add x12, x12, x10
	add x11, x13, x11
	sltu x10, x12, x10
	add x11, x10, x11
	mv x10, x12
	mv x12, x24
	mv x13, x22
	jal __muldi3
	lw x12, 4 ( x20 )
	sra x13, x12, 31&31
	add x12, x12, x10
	add x11, x13, x11
	sltu x10, x12, x10
	add x11, x10, x11
	mv x10, x12
	mv x12, x24
	mv x13, x22
	jal __muldi3
	lw x12, 0 ( x20 )
	lw x15, 56 ( sp )               //  4-byte Folded Reload
	mv x21, x20
	sra x14, x12, 31&31
	sra x13, x15, 31&31
	sub x13, x14, x13
	sltu x14, x12, x15
	sub x12, x12, x15
	add x10, x10, x12
	sltu x12, x10, x12
	sw x10, 12 ( sp )
	lui x10, %hi( .str.13 )
	add x10, x10, %lo( .str.13 )
	sub x13, x13, x14
	sw x10, 8 ( sp )
	sub x10, x9, x19
	add x11, x11, x13
	sub x10, x10, x23
	add x11, x12, x11
	sw x10, 4 ( sp )
	add x10, x23, x18
	sw x11, 16 ( sp )
	sw x10, 0 ( sp )
	jal sniprintf
	blt x10, x0, .LBB1_223
.LBB1_172:                              //  %cleanup646
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x19, x10
	lw x5, 52 ( sp )                //  4-byte Folded Reload
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	add x19, x23, x10
	mv x13, x21
	jal x0, .LBB1_216
.LBB1_176:                              //  %if.else381
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x14, 56 ( sp )               //  4-byte Folded Reload
	lw x13, 48 ( sp )               //  4-byte Folded Reload
	mv x11, x0
	add x10, sp, 76
	xor x12, x14, 43
	bltu x0, x12, .LBB1_180
.LBB1_177:                              //  %if.else381
                                        //    in Loop: Header=BB1_1 Depth=1
	srl x12, x21, 4&31
	sltiu x12, x12, 625
	bltu x0, x12, .LBB1_180
.LBB1_178:                              //    in Loop: Header=BB1_1 Depth=1
	add x10, x0, 43
.LBB1_179:                              //  %if.end391.sink.split
                                        //    in Loop: Header=BB1_1 Depth=1
	sb x10, 76 ( sp )
	seqz x11, x0
	add x10, sp, 77
.LBB1_180:                              //  %if.end391
                                        //    in Loop: Header=BB1_1 Depth=1
	add x12, x0, 37
	sb x12, 0 ( x10 )
	snez x12, x13
	and x11, x11, x12
	sub x22, x13, x11
	beq x0, x14, .LBB1_182
.LBB1_181:                              //  %if.then400
                                        //    in Loop: Header=BB1_1 Depth=1
	add x11, x0, 48
	sb x11, 1 ( x10 )
	add x10, x10, 2
	jal x0, .LBB1_183
.LBB1_182:                              //    in Loop: Header=BB1_1 Depth=1
	add x10, x10, 1
.LBB1_183:                              //  %if.end402
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x11, %hi( .str.10 )
	add x11, x11, %lo( .str.10 )
	jal strcpy
	add x10, sp, 76
	sw x10, 8 ( sp )
	sub x10, x9, x19
	sub x10, x10, x23
	sw x10, 4 ( sp )
	add x10, x23, x18
	sw x22, 12 ( sp )
	sw x21, 16 ( sp )
	sw x10, 0 ( sp )
	jal sniprintf
	blt x10, x0, .LBB1_225
.LBB1_184:                              //  %cleanup416
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x5, 52 ( sp )                //  4-byte Folded Reload
	lw x6, 40 ( sp )                //  4-byte Folded Reload
	lw x7, 44 ( sp )                //  4-byte Folded Reload
	lw x28, 64 ( sp )               //  4-byte Folded Reload
	lw x29, 72 ( sp )               //  4-byte Folded Reload
	lw x16, 68 ( sp )               //  4-byte Folded Reload
	add x10, x19, x10
	add x19, x23, x10
	mv x13, x24
	bltu x19, x9, .LBB1_218
	jal x0, .LBB1_225
.LBB1_173:                              //  %if.then694
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x23, x18
	add x11, x0, 55
.LBB1_174:                              //  %sw.epilogthread-pre-split
                                        //    in Loop: Header=BB1_1 Depth=1
	sb x11, 0 ( x10 )
.LBB1_175:                              //  %sw.epilogthread-pre-split
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x23, x19
	add x19, x10, 1
	jal x0, .LBB1_218
.LBB1_190:                              //    in Loop: Header=BB1_1 Depth=1
	lui x11, %hi( .str.3 )
	add x11, x11, %lo( .str.3 )
	add x13, x0, 43
	beq x14, x13, .LBB1_192
	jal x0, .LBB1_191
.LBB1_185:                              //    in Loop: Header=BB1_1 Depth=1
	add x10, x10, x21
.LBB1_186:                              //  %if.end249
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x11, %hi( .str.9 )
	add x11, x11, %lo( .str.9 )
	jal strcpy
	sub x11, x9, x19
	add x10, x23, x18
	sub x11, x11, x23
	add x12, sp, 76
	mv x13, x20
	jal __strftime
	mv x11, x10
	blt x22, x10, .LBB1_188
.LBB1_187:                              //  %if.end249
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x11, x22
.LBB1_188:                              //  %if.end249
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x13, x20
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	lw x7, 44 ( sp )                //  4-byte Folded Reload
	lw x28, 64 ( sp )               //  4-byte Folded Reload
	lw x29, 72 ( sp )               //  4-byte Folded Reload
	lw x16, 68 ( sp )               //  4-byte Folded Reload
	mv x5, x24
	mv x6, x26
	bge x0, x10, .LBB1_223
.LBB1_189:                              //    in Loop: Header=BB1_1 Depth=1
	add x10, x19, x11
	add x19, x23, x10
	jal x0, .LBB1_218
.LBB1_201:                              //    in Loop: Header=BB1_1 Depth=1
	mv x11, x14
.LBB1_202:                              //  %if.end893
                                        //    in Loop: Header=BB1_1 Depth=1
	add x12, x0, 37
	sb x12, 0 ( x11 )
	snez x12, x15
	and x10, x10, x12
	sw x20, 60 ( sp )               //  4-byte Folded Spill
	sub x22, x15, x10
	mv x21, x7
	mv x26, x6
	mv x24, x5
	mv x20, x13
	sw x28, 64 ( sp )               //  4-byte Folded Spill
	sw x16, 68 ( sp )               //  4-byte Folded Spill
	beq x0, x17, .LBB1_204
.LBB1_203:                              //  %if.then902
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x0, 48
	sb x10, 1 ( x11 )
	add x10, x11, 2
	jal x0, .LBB1_205
.LBB1_204:                              //    in Loop: Header=BB1_1 Depth=1
	add x10, x11, 1
.LBB1_205:                              //  %if.end904
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x11, %hi( .str.10 )
	add x11, x11, %lo( .str.10 )
	jal strcpy
	lw x10, 52 ( sp )               //  4-byte Folded Reload
	sw x22, 12 ( sp )
	sw x10, 16 ( sp )
	add x10, sp, 76
	sw x10, 8 ( sp )
	sub x10, x9, x19
	sub x10, x10, x23
	sw x10, 4 ( sp )
	add x10, x23, x18
	sw x10, 0 ( sp )
	jal sniprintf
	blt x10, x0, .LBB1_225
.LBB1_206:                              //  %cleanup918
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x13, x20
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	lw x28, 64 ( sp )               //  4-byte Folded Reload
	lw x29, 72 ( sp )               //  4-byte Folded Reload
	lw x16, 68 ( sp )               //  4-byte Folded Reload
	add x10, x19, x10
	add x19, x23, x10
	mv x5, x24
	mv x6, x26
	mv x7, x21
	bltu x19, x9, .LBB1_218
	jal x0, .LBB1_225
.LBB1_198:                              //    in Loop: Header=BB1_1 Depth=1
	mv x11, x0
.LBB1_199:                              //  %if.end293
                                        //    in Loop: Header=BB1_1 Depth=1
	add x22, x0, 100
	add x10, x10, x11
	mv x11, x22
	jal __modsi3
	add x10, x10, 100
	mv x11, x22
	jal __modsi3
	sw x10, 12 ( sp )
	sub x10, x9, x19
	lui x11, %hi( .str.5 )
	sub x10, x10, x23
	add x11, x11, %lo( .str.5 )
	sw x10, 4 ( sp )
	add x10, x23, x18
	sw x11, 8 ( sp )
	sw x10, 0 ( sp )
	jal sniprintf
	blt x10, x0, .LBB1_225
.LBB1_200:                              //  %cleanup309
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x6, 40 ( sp )                //  4-byte Folded Reload
	lw x7, 44 ( sp )                //  4-byte Folded Reload
	lw x28, 64 ( sp )               //  4-byte Folded Reload
	lw x29, 72 ( sp )               //  4-byte Folded Reload
	lw x16, 68 ( sp )               //  4-byte Folded Reload
	add x10, x19, x10
	mv x13, x20
	add x19, x23, x10
	mv x5, x24
	mv x20, x26
	bltu x19, x9, .LBB1_218
	jal x0, .LBB1_225
.LBB1_207:                              //    in Loop: Header=BB1_1 Depth=1
	add x11, x0, 1899
.LBB1_208:                              //  %if.then745
                                        //    in Loop: Header=BB1_1 Depth=1
	add x24, x10, x11
	add x11, x0, 100
	mv x10, x24
	jal __modsi3
	lw x11, 48 ( sp )               //  4-byte Folded Reload
	sub x20, x20, x11
	and x11, x24, 3
	bltu x0, x11, .LBB1_212
.LBB1_209:                              //  %if.then745
                                        //    in Loop: Header=BB1_1 Depth=1
	beq x0, x10, .LBB1_212
.LBB1_210:                              //    in Loop: Header=BB1_1 Depth=1
	seqz x10, x0
	sub x10, x20, x10
	add x11, x0, 5
	blt x10, x11, .LBB1_211
.LBB1_213:                              //  %lor.end
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x0, 52
	jal x0, .LBB1_214
.LBB1_212:                              //  %lor.rhs
                                        //    in Loop: Header=BB1_1 Depth=1
	add x11, x0, 400
	mv x10, x24
	jal __modsi3
	seqz x10, x10
	sub x10, x20, x10
	add x11, x0, 5
	bge x10, x11, .LBB1_213
.LBB1_211:                              //    in Loop: Header=BB1_1 Depth=1
	add x10, x0, 53
.LBB1_214:                              //  %lor.end
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x10, 12 ( sp )
	sub x10, x9, x19
	lui x11, %hi( .str.5 )
	sub x10, x10, x23
	lw x20, 60 ( sp )               //  4-byte Folded Reload
	add x11, x11, %lo( .str.5 )
	sw x10, 4 ( sp )
	add x10, x23, x18
	sw x11, 8 ( sp )
	sw x10, 0 ( sp )
	jal sniprintf
	blt x10, x0, .LBB1_223
.LBB1_215:                              //  %cleanup796
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x5, 52 ( sp )                //  4-byte Folded Reload
	add x10, x19, x10
	add x19, x23, x10
	mv x13, x26
.LBB1_216:                              //  %cleanup796
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x6, 40 ( sp )                //  4-byte Folded Reload
.LBB1_217:                              //  %cleanup796
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x7, 44 ( sp )                //  4-byte Folded Reload
	lw x28, 64 ( sp )               //  4-byte Folded Reload
	lw x29, 72 ( sp )               //  4-byte Folded Reload
	lw x16, 68 ( sp )               //  4-byte Folded Reload
	bgeu x19, x9, .LBB1_223
.LBB1_218:                              //  %sw.epilogthread-pre-split
                                        //    in Loop: Header=BB1_1 Depth=1
	lbu x21, 0 ( x16 )
.LBB1_219:                              //  %sw.epilog
                                        //    in Loop: Header=BB1_1 Depth=1
	mv x22, x0
	add x15, x0, 8
	add x11, sp, 76
	add x17, x0, 10
	add x24, x0, 85
	add x12, x16, 1
	beq x0, x21, .LBB1_238
.LBB1_239:                              //  %sw.epilog
                                        //    in Loop: Header=BB1_1 Depth=1
	jal x0, .LBB1_1
.LBB1_238:                              //  %sw.epilog
	jal x0, .LBB1_220
.LBB1_5:                                //  %for.end1013.loopexit
	add x19, x23, x19
.LBB1_220:                              //  %for.end1013
	beq x0, x9, .LBB1_222
.LBB1_221:                              //  %if.then1015
	add x10, x19, fp
	sb x0, 0 ( x10 )
.LBB1_222:                              //  %cleanup1018
	mv x22, x19
.LBB1_223:                              //  %cleanup1018
	mv x10, x22
	lw fp, 108 ( sp )               //  4-byte Folded Reload
	lw x27, 112 ( sp )              //  4-byte Folded Reload
	lw x26, 116 ( sp )              //  4-byte Folded Reload
	lw x25, 120 ( sp )              //  4-byte Folded Reload
	lw x24, 124 ( sp )              //  4-byte Folded Reload
	lw x23, 128 ( sp )              //  4-byte Folded Reload
	lw x22, 132 ( sp )              //  4-byte Folded Reload
	lw x21, 136 ( sp )              //  4-byte Folded Reload
	lw x20, 140 ( sp )              //  4-byte Folded Reload
	lw x19, 144 ( sp )              //  4-byte Folded Reload
	lw x18, 148 ( sp )              //  4-byte Folded Reload
	lw x9, 152 ( sp )               //  4-byte Folded Reload
	lw ra, 156 ( sp )               //  4-byte Folded Reload
	add sp, sp, 160
	.cfi_def_cfa 2, 0
	jr ra
.LBB1_224:                              //  %if.else989
	jal __tz_unlock
.LBB1_225:
	mv x22, x0
	jal x0, .LBB1_223
.Lfunc_end1:
	.size	__strftime, .Lfunc_end1-__strftime
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_37
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_39
	.long	.LBB1_43
	.long	.LBB1_47
	.long	.LBB1_50
	.long	.LBB1_223
	.long	.LBB1_54
	.long	.LBB1_61
	.long	.LBB1_17
	.long	.LBB1_19
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_65
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_24
	.long	.LBB1_223
	.long	.LBB1_69
	.long	.LBB1_70
	.long	.LBB1_71
	.long	.LBB1_72
	.long	.LBB1_73
	.long	.LBB1_78
	.long	.LBB1_80
	.long	.LBB1_81
	.long	.LBB1_83
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_223
	.long	.LBB1_90
	.long	.LBB1_31
	.long	.LBB1_119
	.long	.LBB1_35
	.long	.LBB1_35
	.long	.LBB1_223
	.long	.LBB1_96
	.long	.LBB1_31
	.long	.LBB1_223
	.long	.LBB1_101
	.long	.LBB1_17
	.long	.LBB1_19
	.long	.LBB1_103
	.long	.LBB1_104
	.long	.LBB1_223
	.long	.LBB1_24
	.long	.LBB1_223
	.long	.LBB1_106
	.long	.LBB1_107
	.long	.LBB1_111
	.long	.LBB1_113
	.long	.LBB1_223
	.long	.LBB1_116
	.long	.LBB1_118
	.long	.LBB1_125
	.long	.LBB1_129
                                        //  -- End function
	.text
	.globl	strftime_l              //  -- Begin function strftime_l
	.type	strftime_l,@function
strftime_l:                             //  @strftime_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	j __strftime
.Lfunc_end2:
	.size	strftime_l, .Lfunc_end2-strftime_l
	.cfi_endproc
                                        //  -- End function
	.type	iso_year_adjust,@function //  -- Begin function iso_year_adjust
iso_year_adjust:                        //  @iso_year_adjust
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	sw fp, 0 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -16
	mv fp, x10
	lw x10, 20 ( fp )
	sw x18, 4 ( sp )                //  4-byte Folded Spill
	.cfi_offset 18, -12
	mv x18, x0
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 9, -8
	blt x10, x18, .LBB3_1
.LBB3_2:                                //  %entry
	add x11, x0, -100
	jal x0, .LBB3_3
.LBB3_1:
	add x11, x0, 1900
.LBB3_3:                                //  %entry
	add x9, x10, x11
	add x11, x0, 100
	mv x10, x9
	jal __modsi3
	and x11, x9, 3
	bltu x0, x11, .LBB3_6
.LBB3_4:                                //  %entry
	beq x0, x10, .LBB3_6
.LBB3_5:
	seqz x10, x0
	jal x0, .LBB3_7
.LBB3_6:                                //  %lor.rhs
	add x11, x0, 400
	mv x10, x9
	jal __modsi3
	seqz x10, x10
.LBB3_7:                                //  %lor.end
	lw x11, 28 ( fp )
	lw x12, 24 ( fp )
	sll x11, x11, 4&31
	sll x12, x12, 1&31
	add x11, x11, x12
	or x11, x10, x11
	add x10, x0, 33
	bltu x10, x11, .LBB3_8
.LBB3_13:                               //  %lor.end
	lui x12, %hi( JTI3_0 )
	sll x11, x11, 2&31
	add x12, x12, %lo( JTI3_0 )
	add x11, x12, x11
	lw x11, 0 ( x11 )
	add x10, x0, -1
	jr x11
.LBB3_8:                                //  %lor.end
	lui x10, %hi( -5794 )
	add x10, x10, %lo( -5794 )
	add x10, x10, x11
	add x11, x0, 53
	bltu x11, x10, .LBB3_11
.LBB3_9:                                //  %lor.end
	lui x11, %hi( JTI3_1 )
	sll x10, x10, 2&31
	add x11, x11, %lo( JTI3_1 )
	add x10, x11, x10
	lw x10, 0 ( x10 )
	jr x10
.LBB3_10:                               //  %sw.bb22
	seqz x10, x0
.LBB3_12:                               //  %cleanup
	lw fp, 0 ( sp )                 //  4-byte Folded Reload
	lw x18, 4 ( sp )                //  4-byte Folded Reload
	lw x9, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB3_11:                               //  %sw.epilog
	mv x10, x18
	jal x0, .LBB3_12
.Lfunc_end3:
	.size	iso_year_adjust, .Lfunc_end3-iso_year_adjust
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI3_0:
	.long	.LBB3_12
	.long	.LBB3_12
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_12
	.long	.LBB3_12
	.long	.LBB3_12
	.long	.LBB3_12
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_12
	.long	.LBB3_12
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_12
	.long	.LBB3_12
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_12
	.long	.LBB3_12
JTI3_1:
	.long	.LBB3_10
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_10
	.long	.LBB3_10
	.long	.LBB3_10
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_10
	.long	.LBB3_10
	.long	.LBB3_10
	.long	.LBB3_10
	.long	.LBB3_10
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_10
	.long	.LBB3_11
	.long	.LBB3_10
	.long	.LBB3_11
	.long	.LBB3_10
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"%s%.*d"
	.size	.str, 7

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.zero	1
	.size	.str.1, 1

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"%s%0.*d"
	.size	.str.2, 8

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"+"
	.size	.str.3, 2

	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	"-"
	.size	.str.4, 2

	.address_space	0
	.type	.str.5,@object          //  @.str.5
.str.5:
	.asciz	"%.2d"
	.size	.str.5, 5

	.address_space	0
	.type	.str.6,@object          //  @.str.6
.str.6:
	.asciz	"%2d"
	.size	.str.6, 4

	.address_space	0
	.type	.str.7,@object          //  @.str.7
.str.7:
	.asciz	"%.2d/%.2d/%.2d"
	.size	.str.7, 15

	.address_space	0
	.type	.str.8,@object          //  @.str.8
.str.8:
	.asciz	"%lu"
	.size	.str.8, 4

	.address_space	0
	.type	.str.9,@object          //  @.str.9
.str.9:
	.asciz	"Y-%m-%d"
	.size	.str.9, 8

	.address_space	0
	.type	.str.10,@object         //  @.str.10
.str.10:
	.asciz	".*u"
	.size	.str.10, 4

	.address_space	0
	.type	.str.11,@object         //  @.str.11
.str.11:
	.asciz	"%.3d"
	.size	.str.11, 5

	.address_space	0
	.address_space	0
	.type	.str.12,@object         //  @.str.12
.str.12:
	.asciz	"%.2d:%.2d"
	.size	.str.12, 10

	.address_space	0
	.type	.str.13,@object         //  @.str.13
.str.13:
	.asciz	"%lld"
	.size	.str.13, 5

	.address_space	0
	.type	.str.14,@object         //  @.str.14
.str.14:
	.asciz	"%.2d:%.2d:%.2d"
	.size	.str.14, 15

	.address_space	0
	.type	.str.15,@object         //  @.str.15
.str.15:
	.asciz	"%+03ld%.2ld"
	.size	.str.15, 12

	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
