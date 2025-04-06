	.text
	.file	"ef_rem_pio2.c"
	.globl	__ieee754_rem_pio2f     //  -- Begin function __ieee754_rem_pio2f
	.type	__ieee754_rem_pio2f,@function
__ieee754_rem_pio2f:                    //  @__ieee754_rem_pio2f
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -64
	.cfi_adjust_cfa_offset 64
	sw x9, 56 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x10
	lui x10, %hi( 2147483647 )
	add x10, x10, %lo( 2147483647 )
	sw x23, 32 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	and x23, x10, x9
	lui x10, %hi( 1061752792 )
	sw fp, 24 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -40
	mv fp, x11
	add x10, x10, %lo( 1061752792 )
	sw ra, 60 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20, 44 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 40 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 36 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x24, 28 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	bltu x10, x23, .LBB0_2
.LBB0_1:                                //  %if.then
	sw x9, 0 ( fp )
	sw x0, 4 ( fp )
	mv x18, x0
	jal x0, .LBB0_29
.LBB0_2:                                //  %if.end
	lui x10, %hi( 1075235811 )
	add x10, x10, %lo( 1075235811 )
	bltu x10, x23, .LBB0_12
.LBB0_3:                                //  %if.then3
	bge x0, x9, .LBB0_8
.LBB0_4:                                //  %if.then5
	lui x10, %hi( -1077342336 )
	add x11, x10, %lo( -1077342336 )
	mv x10, x9
	jal __addsf3
	mv x18, x10
	lui x10, %hi( 2147483632 )
	add x10, x10, %lo( 2147483632 )
	lui x11, %hi( 1070141392 )
	and x10, x10, x9
	add x11, x11, %lo( 1070141392 )
	bne x10, x11, .LBB0_5
.LBB0_7:                                //  %if.else
	lui x10, %hi( -1221245952 )
	add x11, x10, %lo( -1221245952 )
	mv x10, x18
	jal __addsf3
	mv x9, x10
	lui x10, %hi( -1366973688 )
	add x18, x10, %lo( -1366973688 )
	mv x10, x9
	mv x11, x18
	jal __addsf3
	mv x19, x10
	mv x10, x9
	mv x11, x19
	jal __subsf3
	mv x11, x18
	jal x0, .LBB0_6
.LBB0_12:                               //  %if.end42
	lui x10, %hi( 1128861568 )
	add x10, x10, %lo( 1128861568 )
	bltu x10, x23, .LBB0_22
.LBB0_13:                               //  %if.then44
	mv x10, x9
	jal fabsf
	mv x19, x10
	lui x10, %hi( 1059256708 )
	add x11, x10, %lo( 1059256708 )
	mv x10, x19
	jal __mulsf3
	lui x11, (1056964608>>12)&1048575
	jal __addsf3
	jal __fixsfsi
	mv x18, x10
	jal __floatsisf
	mv x20, x10
	lui x10, %hi( -1077342336 )
	add x11, x10, %lo( -1077342336 )
	mv x10, x20
	jal __mulsf3
	mv x11, x10
	mv x10, x19
	jal __addsf3
	mv x19, x10
	lui x10, %hi( 926237763 )
	add x11, x10, %lo( 926237763 )
	mv x10, x20
	jal __mulsf3
	mv x21, x10
	add x10, x0, 31
	blt x10, x18, .LBB0_15
.LBB0_14:                               //  %land.lhs.true
	lui x12, %hi( npio2_hw )
	sll x11, x18, 2&31
	add x12, x12, %lo( npio2_hw )
	add x11, x12, x11
	lw x11, -4 ( x11 )
	lui x10, %hi( 2147483392 )
	add x10, x10, %lo( 2147483392 )
	and x10, x10, x9
	bne x10, x11, .LBB0_19
.LBB0_15:                               //  %if.else60
	mv x10, x19
	mv x11, x21
	jal __subsf3
	mv x22, x10
	srl x10, x22, 23&31
	and x10, x10, 255
	srl x24, x23, 23&31
	sub x10, x24, x10
	slti x10, x10, 9
	sw x22, 0 ( fp )
	bltu x0, x10, .LBB0_20
.LBB0_16:                               //  %if.then75
	lui x10, %hi( 926237696 )
	add x11, x10, %lo( 926237696 )
	mv x10, x20
	jal __mulsf3
	mv x21, x10
	mv x10, x19
	mv x11, x21
	jal __subsf3
	mv x23, x10
	lui x10, %hi( 780509960 )
	add x11, x10, %lo( 780509960 )
	mv x10, x20
	jal __mulsf3
	mv x22, x10
	mv x10, x19
	mv x11, x23
	jal __subsf3
	mv x11, x21
	jal __subsf3
	mv x11, x10
	mv x10, x22
	jal __subsf3
	mv x21, x10
	mv x10, x23
	mv x11, x21
	jal __subsf3
	mv x22, x10
	srl x10, x22, 23&31
	and x10, x10, 255
	sub x10, x24, x10
	slti x10, x10, 26
	sw x22, 0 ( fp )
	bltu x0, x10, .LBB0_17
.LBB0_18:                               //  %if.then96
	lui x10, %hi( 780509952 )
	add x11, x10, %lo( 780509952 )
	mv x10, x20
	jal __mulsf3
	mv x21, x10
	mv x10, x23
	mv x11, x21
	jal __subsf3
	mv x19, x10
	lui x10, %hi( 613232946 )
	add x11, x10, %lo( 613232946 )
	mv x10, x20
	jal __mulsf3
	mv x20, x10
	mv x10, x23
	mv x11, x19
	jal __subsf3
	mv x11, x21
	jal __subsf3
	mv x11, x10
	mv x10, x20
	jal __subsf3
	mv x21, x10
.LBB0_19:                               //  %if.end107
	mv x10, x19
	mv x11, x21
	jal __subsf3
	mv x22, x10
	sw x22, 0 ( fp )
	jal x0, .LBB0_20
.LBB0_22:                               //  %if.end123
	srl x10, x23, 23&31
	sltiu x11, x10, 255
	beq x0, x11, .LBB0_23
.LBB0_24:                               //  %if.end130
	add x18, x10, -134
	sll x10, x18, 23&31
	sub x19, x23, x10
	mv x10, x19
	jal __fixsfsi
	jal __floatsisf
	mv x20, x10
	mv x10, x19
	mv x11, x20
	jal __subsf3
	lui x19, (1132462080>>12)&1048575
	mv x11, x19
	jal __mulsf3
	mv x21, x10
	jal __fixsfsi
	jal __floatsisf
	mv x11, x10
	add x10, sp, 12
	sw x11, 4 ( x10 )
	mv x10, x21
	jal __subsf3
	mv x11, x19
	jal __mulsf3
	sw x20, 12 ( sp )
	add x19, x0, 4
	add x21, sp, 20
	mv x20, x0
	sw x10, 20 ( sp )
.LBB0_25:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x21 )
	mv x11, x20
	jal __eqsf2
	add x21, x21, -4
	add x19, x19, -1
	beq x0, x10, .LBB0_25
.LBB0_26:                               //  %while.end
	lui x11, %hi( two_over_pi )
	add x15, x11, %lo( two_over_pi )
	add x10, sp, 12
	add x14, x0, 2
	mv x11, fp
	mv x12, x18
	mv x13, x19
	jal __kernel_rem_pio2f
	mv x18, x10
	bge x9, x0, .LBB0_29
.LBB0_27:                               //  %if.then155
	lw x10, 0 ( fp )
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x10, x11, x10
	sw x10, 0 ( fp )
	lw x10, 4 ( fp )
	xor x10, x11, x10
	sw x10, 4 ( fp )
	jal x0, .LBB0_28
.LBB0_8:                                //  %if.else23
	lui x10, %hi( 1070141312 )
	add x11, x10, %lo( 1070141312 )
	mv x10, x9
	jal __addsf3
	mv x18, x10
	lui x10, %hi( 2147483632 )
	add x10, x10, %lo( 2147483632 )
	lui x11, %hi( 1070141392 )
	and x10, x10, x9
	add x11, x11, %lo( 1070141392 )
	bne x10, x11, .LBB0_9
.LBB0_11:                               //  %if.else33
	lui x10, %hi( 926237696 )
	add x11, x10, %lo( 926237696 )
	mv x10, x18
	jal __addsf3
	mv x9, x10
	lui x10, %hi( 780509960 )
	add x18, x10, %lo( 780509960 )
	mv x10, x9
	mv x11, x18
	jal __addsf3
	mv x19, x10
	mv x10, x9
	mv x11, x19
	jal __subsf3
	mv x11, x18
	jal x0, .LBB0_10
.LBB0_5:                                //  %if.then8
	lui x10, %hi( -1221245885 )
	add x9, x10, %lo( -1221245885 )
	mv x10, x18
	mv x11, x9
	jal __addsf3
	mv x19, x10
	mv x10, x18
	mv x11, x19
	jal __subsf3
	mv x11, x9
.LBB0_6:                                //  %cleanup
	jal __addsf3
	sw x10, 4 ( fp )
	sw x19, 0 ( fp )
	seqz x18, x0
	jal x0, .LBB0_29
.LBB0_23:                               //  %if.then126
	mv x10, x9
	mv x11, x9
	jal __subsf3
	sw x10, 0 ( fp )
	sw x10, 4 ( fp )
	mv x18, x0
	jal x0, .LBB0_29
.LBB0_9:                                //  %if.then26
	lui x10, %hi( 926237763 )
	add x9, x10, %lo( 926237763 )
	mv x10, x18
	mv x11, x9
	jal __addsf3
	mv x19, x10
	mv x10, x18
	mv x11, x19
	jal __subsf3
	mv x11, x9
.LBB0_10:                               //  %cleanup
	jal __addsf3
	sw x10, 4 ( fp )
	sw x19, 0 ( fp )
	add x18, x0, -1
	jal x0, .LBB0_29
.LBB0_17:
	mv x19, x23
.LBB0_20:                               //  %if.end107
	mv x10, x19
	mv x11, x22
	jal __subsf3
	mv x11, x21
	jal __subsf3
	sw x10, 4 ( fp )
	bge x9, x0, .LBB0_29
.LBB0_21:                               //  %if.then114
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x10, x11, x10
	sw x10, 4 ( fp )
	xor x10, x11, x22
	sw x10, 0 ( fp )
.LBB0_28:                               //  %cleanup
	sub x18, x0, x18
.LBB0_29:                               //  %cleanup
	mv x10, x18
	lw fp, 24 ( sp )                //  4-byte Folded Reload
	lw x24, 28 ( sp )               //  4-byte Folded Reload
	lw x23, 32 ( sp )               //  4-byte Folded Reload
	lw x22, 36 ( sp )               //  4-byte Folded Reload
	lw x21, 40 ( sp )               //  4-byte Folded Reload
	lw x20, 44 ( sp )               //  4-byte Folded Reload
	lw x19, 48 ( sp )               //  4-byte Folded Reload
	lw x18, 52 ( sp )               //  4-byte Folded Reload
	lw x9, 56 ( sp )                //  4-byte Folded Reload
	lw ra, 60 ( sp )                //  4-byte Folded Reload
	add sp, sp, 64
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__ieee754_rem_pio2f, .Lfunc_end0-__ieee754_rem_pio2f
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	npio2_hw,@object        //  @npio2_hw
	.section	.rodata,"a",@progbits
	.p2align	2
npio2_hw:
	.long	1070141184              //  0x3fc90f00
	.long	1078529792              //  0x40490f00
	.long	1083624192              //  0x4096cb00
	.long	1086918400              //  0x40c90f00
	.long	1090212608              //  0x40fb5300
	.long	1092012800              //  0x4116cb00
	.long	1093659904              //  0x412fed00
	.long	1095307008              //  0x41490f00
	.long	1096954112              //  0x41623100
	.long	1098601216              //  0x417b5300
	.long	1099577856              //  0x418a3a00
	.long	1100401408              //  0x4196cb00
	.long	1101224960              //  0x41a35c00
	.long	1102048512              //  0x41afed00
	.long	1102872064              //  0x41bc7e00
	.long	1103695616              //  0x41c90f00
	.long	1104519168              //  0x41d5a000
	.long	1105342720              //  0x41e23100
	.long	1106166272              //  0x41eec200
	.long	1106989824              //  0x41fb5300
	.long	1107554816              //  0x4203f200
	.long	1107966464              //  0x420a3a00
	.long	1108378368              //  0x42108300
	.long	1108790016              //  0x4216cb00
	.long	1109201920              //  0x421d1400
	.long	1109613568              //  0x42235c00
	.long	1110025472              //  0x4229a500
	.long	1110437120              //  0x422fed00
	.long	1110849024              //  0x42363600
	.long	1111260672              //  0x423c7e00
	.long	1111672576              //  0x4242c700
	.long	1112084224              //  0x42490f00
	.size	npio2_hw, 128

	.address_space	0
	.type	two_over_pi,@object     //  @two_over_pi
	.p2align	2
two_over_pi:
	.long	162                     //  0xa2
	.long	249                     //  0xf9
	.long	131                     //  0x83
	.long	110                     //  0x6e
	.long	78                      //  0x4e
	.long	68                      //  0x44
	.long	21                      //  0x15
	.long	41                      //  0x29
	.long	252                     //  0xfc
	.long	39                      //  0x27
	.long	87                      //  0x57
	.long	209                     //  0xd1
	.long	245                     //  0xf5
	.long	52                      //  0x34
	.long	221                     //  0xdd
	.long	192                     //  0xc0
	.long	219                     //  0xdb
	.long	98                      //  0x62
	.long	149                     //  0x95
	.long	153                     //  0x99
	.long	60                      //  0x3c
	.long	67                      //  0x43
	.long	144                     //  0x90
	.long	65                      //  0x41
	.long	254                     //  0xfe
	.long	81                      //  0x51
	.long	99                      //  0x63
	.long	171                     //  0xab
	.long	222                     //  0xde
	.long	187                     //  0xbb
	.long	197                     //  0xc5
	.long	97                      //  0x61
	.long	183                     //  0xb7
	.long	36                      //  0x24
	.long	110                     //  0x6e
	.long	58                      //  0x3a
	.long	66                      //  0x42
	.long	77                      //  0x4d
	.long	210                     //  0xd2
	.long	224                     //  0xe0
	.long	6                       //  0x6
	.long	73                      //  0x49
	.long	46                      //  0x2e
	.long	234                     //  0xea
	.long	9                       //  0x9
	.long	209                     //  0xd1
	.long	146                     //  0x92
	.long	28                      //  0x1c
	.long	254                     //  0xfe
	.long	29                      //  0x1d
	.long	235                     //  0xeb
	.long	28                      //  0x1c
	.long	177                     //  0xb1
	.long	41                      //  0x29
	.long	167                     //  0xa7
	.long	62                      //  0x3e
	.long	232                     //  0xe8
	.long	130                     //  0x82
	.long	53                      //  0x35
	.long	245                     //  0xf5
	.long	46                      //  0x2e
	.long	187                     //  0xbb
	.long	68                      //  0x44
	.long	132                     //  0x84
	.long	233                     //  0xe9
	.long	156                     //  0x9c
	.long	112                     //  0x70
	.long	38                      //  0x26
	.long	180                     //  0xb4
	.long	95                      //  0x5f
	.long	126                     //  0x7e
	.long	65                      //  0x41
	.long	57                      //  0x39
	.long	145                     //  0x91
	.long	214                     //  0xd6
	.long	57                      //  0x39
	.long	131                     //  0x83
	.long	83                      //  0x53
	.long	57                      //  0x39
	.long	244                     //  0xf4
	.long	156                     //  0x9c
	.long	132                     //  0x84
	.long	95                      //  0x5f
	.long	139                     //  0x8b
	.long	189                     //  0xbd
	.long	249                     //  0xf9
	.long	40                      //  0x28
	.long	59                      //  0x3b
	.long	31                      //  0x1f
	.long	248                     //  0xf8
	.long	151                     //  0x97
	.long	255                     //  0xff
	.long	222                     //  0xde
	.long	5                       //  0x5
	.long	152                     //  0x98
	.long	15                      //  0xf
	.long	239                     //  0xef
	.long	47                      //  0x2f
	.long	17                      //  0x11
	.long	139                     //  0x8b
	.long	90                      //  0x5a
	.long	10                      //  0xa
	.long	109                     //  0x6d
	.long	31                      //  0x1f
	.long	109                     //  0x6d
	.long	54                      //  0x36
	.long	126                     //  0x7e
	.long	207                     //  0xcf
	.long	39                      //  0x27
	.long	203                     //  0xcb
	.long	9                       //  0x9
	.long	183                     //  0xb7
	.long	79                      //  0x4f
	.long	70                      //  0x46
	.long	63                      //  0x3f
	.long	102                     //  0x66
	.long	158                     //  0x9e
	.long	95                      //  0x5f
	.long	234                     //  0xea
	.long	45                      //  0x2d
	.long	117                     //  0x75
	.long	39                      //  0x27
	.long	186                     //  0xba
	.long	199                     //  0xc7
	.long	235                     //  0xeb
	.long	229                     //  0xe5
	.long	241                     //  0xf1
	.long	123                     //  0x7b
	.long	61                      //  0x3d
	.long	7                       //  0x7
	.long	57                      //  0x39
	.long	247                     //  0xf7
	.long	138                     //  0x8a
	.long	82                      //  0x52
	.long	146                     //  0x92
	.long	234                     //  0xea
	.long	107                     //  0x6b
	.long	251                     //  0xfb
	.long	95                      //  0x5f
	.long	177                     //  0xb1
	.long	31                      //  0x1f
	.long	141                     //  0x8d
	.long	93                      //  0x5d
	.long	8                       //  0x8
	.long	86                      //  0x56
	.long	3                       //  0x3
	.long	48                      //  0x30
	.long	70                      //  0x46
	.long	252                     //  0xfc
	.long	123                     //  0x7b
	.long	107                     //  0x6b
	.long	171                     //  0xab
	.long	240                     //  0xf0
	.long	207                     //  0xcf
	.long	188                     //  0xbc
	.long	32                      //  0x20
	.long	154                     //  0x9a
	.long	244                     //  0xf4
	.long	54                      //  0x36
	.long	29                      //  0x1d
	.long	169                     //  0xa9
	.long	227                     //  0xe3
	.long	145                     //  0x91
	.long	97                      //  0x61
	.long	94                      //  0x5e
	.long	230                     //  0xe6
	.long	27                      //  0x1b
	.long	8                       //  0x8
	.long	101                     //  0x65
	.long	153                     //  0x99
	.long	133                     //  0x85
	.long	95                      //  0x5f
	.long	20                      //  0x14
	.long	160                     //  0xa0
	.long	104                     //  0x68
	.long	64                      //  0x40
	.long	141                     //  0x8d
	.long	255                     //  0xff
	.long	216                     //  0xd8
	.long	128                     //  0x80
	.long	77                      //  0x4d
	.long	115                     //  0x73
	.long	39                      //  0x27
	.long	49                      //  0x31
	.long	6                       //  0x6
	.long	6                       //  0x6
	.long	21                      //  0x15
	.long	86                      //  0x56
	.long	202                     //  0xca
	.long	115                     //  0x73
	.long	168                     //  0xa8
	.long	201                     //  0xc9
	.long	96                      //  0x60
	.long	226                     //  0xe2
	.long	123                     //  0x7b
	.long	192                     //  0xc0
	.long	140                     //  0x8c
	.long	107                     //  0x6b
	.size	two_over_pi, 792


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
