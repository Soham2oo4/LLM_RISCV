	.text
	.file	"e_rem_pio2.c"
	.globl	__ieee754_rem_pio2      //  -- Begin function __ieee754_rem_pio2
	.type	__ieee754_rem_pio2,@function
__ieee754_rem_pio2:                     //  @__ieee754_rem_pio2
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -96
	.cfi_adjust_cfa_offset 96
	sw x19, 80 ( sp )               //  4-byte Folded Spill
	.cfi_offset 19, -16
	mv x19, x10
	lui x10, %hi( 2147483647 )
	sw x9, 88 ( sp )                //  4-byte Folded Spill
	.cfi_offset 9, -8
	mv x9, x11
	add x10, x10, %lo( 2147483647 )
	sw x23, 64 ( sp )               //  4-byte Folded Spill
	.cfi_offset 23, -32
	and x23, x10, x9
	lui x10, %hi( 1072243195 )
	sw fp, 44 ( sp )                //  4-byte Folded Spill
	.cfi_offset 8, -52
	mv fp, x12
	add x10, x10, %lo( 1072243195 )
	sw ra, 92 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18, 84 ( sp )               //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20, 76 ( sp )               //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21, 72 ( sp )               //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22, 68 ( sp )               //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x24, 60 ( sp )               //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25, 56 ( sp )               //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26, 52 ( sp )               //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27, 48 ( sp )               //  4-byte Folded Spill
	.cfi_offset 27, -48
	bltu x10, x23, .LBB0_2
.LBB0_1:                                //  %if.then
	sw x19, 0 ( fp )
	sw x9, 4 ( fp )
	sw x0, 12 ( fp )
	sw x0, 8 ( fp )
	mv x18, x0
	jal x0, .LBB0_30
.LBB0_2:                                //  %if.end
	lui x10, %hi( 1073928571 )
	add x10, x10, %lo( 1073928571 )
	bltu x10, x23, .LBB0_12
.LBB0_3:                                //  %if.then3
	lui x12, (1413480448>>12)&1048575
	bge x0, x9, .LBB0_8
.LBB0_4:                                //  %if.then5
	lui x10, %hi( -1074191877 )
	add x13, x10, %lo( -1074191877 )
	mv x10, x19
	mv x11, x9
	jal __adddf3
	mv x18, x10
	lui x10, %hi( 1073291771 )
	mv x9, x11
	add x10, x10, %lo( 1073291771 )
	bne x23, x10, .LBB0_5
.LBB0_7:                                //  %if.else
	lui x10, %hi( -1110395807 )
	add x13, x10, %lo( -1110395807 )
	lui x12, (442499072>>12)&1048575
	mv x10, x18
	mv x11, x9
	jal __adddf3
	mv x9, x10
	lui x10, %hi( 771977331 )
	add x19, x10, %lo( 771977331 )
	lui x10, %hi( -1146938998 )
	add x20, x10, %lo( -1146938998 )
	mv x10, x9
	mv x12, x19
	mv x13, x20
	mv x18, x11
	jal __adddf3
	mv x21, x10
	mv x22, x11
	mv x10, x9
	mv x11, x18
	jal x0, .LBB0_6
.LBB0_12:                               //  %if.end40
	lui x10, %hi( 1094263291 )
	add x10, x10, %lo( 1094263291 )
	bltu x10, x23, .LBB0_23
.LBB0_13:                               //  %if.then42
	mv x10, x19
	mv x11, x9
	jal fabs
	mv x21, x10
	lui x10, %hi( 1841940611 )
	add x12, x10, %lo( 1841940611 )
	lui x10, %hi( 1071931184 )
	add x13, x10, %lo( 1071931184 )
	mv x10, x21
	mv x22, x11
	jal __muldf3
	mv x12, x0
	lui x13, (1071644672>>12)&1048575
	jal __adddf3
	jal __fixdfsi
	mv x18, x10
	jal __floatsidf
	mv x25, x10
	lui x10, %hi( -1074191877 )
	add x13, x10, %lo( -1074191877 )
	lui x12, (1413480448>>12)&1048575
	mv x10, x25
	mv x20, x11
	jal __muldf3
	mv x12, x10
	mv x13, x11
	mv x10, x21
	mv x11, x22
	jal __adddf3
	mv x26, x10
	lui x10, %hi( 442655537 )
	add x12, x10, %lo( 442655537 )
	lui x10, %hi( 1037087841 )
	add x27, x10, %lo( 1037087841 )
	mv x22, x11
	mv x10, x25
	mv x11, x20
	mv x13, x27
	jal __muldf3
	mv x19, x10
	mv x24, x11
	add x10, x0, 31
	blt x10, x18, .LBB0_16
.LBB0_14:                               //  %land.lhs.true
	lui x11, %hi( npio2_hw )
	sll x10, x18, 2&31
	add x11, x11, %lo( npio2_hw )
	add x10, x11, x10
	lw x10, -4 ( x10 )
	bne x23, x10, .LBB0_15
.LBB0_16:                               //  %if.else57
	mv x10, x26
	mv x11, x22
	mv x12, x19
	mv x13, x24
	mv x21, x20
	mv x20, x25
	jal __subdf3
	mv x25, x11
	mv x12, x26
	mv x26, x10
	srl x10, x25, 20&31
	and x10, x10, 2047
	srl x11, x23, 20&31
	sub x10, x11, x10
	slti x10, x10, 17
	sw x25, 4 ( fp )
	sw x26, 0 ( fp )
	bltu x0, x10, .LBB0_21
.LBB0_17:                               //  %if.then73
	mv x25, x20
	mv x20, x21
	mv x19, x12
	lui x12, (442499072>>12)&1048575
	mv x10, x25
	sw x11, 12 ( sp )               //  4-byte Folded Spill
	mv x11, x20
	mv x13, x27
	jal __muldf3
	mv x23, x10
	mv x24, x11
	mv x10, x19
	mv x11, x22
	mv x12, x23
	mv x13, x24
	jal __subdf3
	mv x27, x10
	mv x26, x11
	mv x10, x19
	mv x11, x22
	mv x12, x27
	mv x13, x26
	jal __subdf3
	mv x12, x23
	mv x13, x24
	jal __subdf3
	mv x22, x10
	lui x10, %hi( 771977331 )
	add x12, x10, %lo( 771977331 )
	lui x10, %hi( 1000544650 )
	add x21, x10, %lo( 1000544650 )
	mv x23, x11
	mv x10, x25
	mv x11, x20
	mv x13, x21
	sw x25, 8 ( sp )                //  4-byte Folded Spill
	jal __muldf3
	mv x12, x22
	mv x13, x23
	mv x22, x26
	jal __subdf3
	mv x19, x10
	mv x24, x11
	mv x10, x27
	mv x11, x22
	mv x12, x19
	mv x13, x24
	jal __subdf3
	mv x25, x11
	lw x11, 12 ( sp )               //  4-byte Folded Reload
	mv x26, x10
	srl x10, x25, 20&31
	and x10, x10, 2047
	sub x10, x11, x10
	slti x10, x10, 50
	sw x25, 4 ( fp )
	sw x26, 0 ( fp )
	bltu x0, x10, .LBB0_18
.LBB0_19:                               //  %if.then95
	lw x19, 8 ( sp )                //  4-byte Folded Reload
	lui x12, (771751936>>12)&1048575
	mv x11, x20
	mv x13, x21
	mv x10, x19
	jal __muldf3
	mv x23, x10
	mv x24, x11
	mv x10, x27
	mv x11, x22
	mv x12, x23
	mv x13, x24
	jal __subdf3
	mv x21, x10
	mv x12, x22
	mv x22, x11
	mv x11, x12
	mv x10, x27
	mv x12, x21
	mv x13, x22
	jal __subdf3
	mv x12, x23
	mv x13, x24
	jal __subdf3
	mv x23, x10
	lui x10, %hi( 622873025 )
	add x12, x10, %lo( 622873025 )
	lui x10, %hi( 964395930 )
	mv x24, x11
	add x13, x10, %lo( 964395930 )
	mv x10, x19
	mv x11, x20
	jal __muldf3
	mv x12, x23
	mv x13, x24
	jal __subdf3
	mv x19, x10
	mv x24, x11
	mv x10, x21
	mv x11, x22
	mv x12, x19
	mv x13, x24
	jal __subdf3
	mv x12, x21
	jal x0, .LBB0_20
.LBB0_23:                               //  %if.end122
	srl x10, x23, 20&31
	sltiu x11, x10, 2047
	bltu x0, x11, .LBB0_25
.LBB0_24:                               //  %if.then125
	mv x10, x19
	mv x11, x9
	mv x12, x19
	mv x13, x9
	jal __subdf3
	sw x11, 4 ( fp )
	sw x10, 0 ( fp )
	sw x11, 12 ( fp )
	sw x10, 8 ( fp )
	mv x18, x0
	jal x0, .LBB0_30
.LBB0_8:                                //  %if.else22
	lui x10, %hi( 1073291771 )
	add x20, x10, %lo( 1073291771 )
	mv x10, x19
	mv x11, x9
	mv x13, x20
	jal __adddf3
	mv x18, x10
	mv x9, x11
	bne x23, x20, .LBB0_9
.LBB0_11:                               //  %if.else31
	lui x10, %hi( 1037087841 )
	add x13, x10, %lo( 1037087841 )
	lui x12, (442499072>>12)&1048575
	mv x10, x18
	mv x11, x9
	jal __adddf3
	mv x9, x10
	lui x10, %hi( 771977331 )
	add x19, x10, %lo( 771977331 )
	lui x10, %hi( 1000544650 )
	add x20, x10, %lo( 1000544650 )
	mv x10, x9
	mv x12, x19
	mv x13, x20
	mv x18, x11
	jal __adddf3
	mv x21, x10
	mv x22, x11
	mv x10, x9
	mv x11, x18
	jal x0, .LBB0_10
.LBB0_5:                                //  %if.then7
	lui x10, %hi( 442655537 )
	add x19, x10, %lo( 442655537 )
	lui x10, %hi( -1110395807 )
	add x20, x10, %lo( -1110395807 )
	mv x10, x18
	mv x11, x9
	mv x12, x19
	mv x13, x20
	jal __adddf3
	mv x21, x10
	mv x22, x11
	mv x10, x18
	mv x11, x9
.LBB0_6:                                //  %cleanup
	mv x12, x21
	mv x13, x22
	jal __subdf3
	mv x12, x19
	mv x13, x20
	jal __adddf3
	sw x11, 12 ( fp )
	sw x10, 8 ( fp )
	sw x22, 4 ( fp )
	sw x21, 0 ( fp )
	seqz x18, x0
	jal x0, .LBB0_30
.LBB0_25:                               //  %do.body130
	add x18, x10, -1046
	sll x10, x18, 20&31
	sub x20, x23, x10
	mv x10, x19
	mv x11, x20
	jal __fixdfsi
	jal __floatsidf
	mv x21, x10
	mv x22, x11
	mv x10, x19
	mv x11, x20
	mv x12, x21
	mv x13, x22
	jal __subdf3
	mv x19, x0
	lui x20, (1097859072>>12)&1048575
	mv x12, x19
	mv x13, x20
	jal __muldf3
	mv x23, x10
	mv x24, x11
	jal __fixdfsi
	jal __floatsidf
	mv x25, x10
	mv x26, x11
	mv x10, x23
	mv x11, x24
	mv x12, x25
	mv x13, x26
	jal __subdf3
	mv x12, x19
	mv x13, x20
	jal __muldf3
	add x12, sp, 16
	sw x10, 16 ( x12 )
	or x10, x12, 4
	sw x21, 16 ( sp )
	add x20, x0, 4
	add x21, x12, 16
	sw x11, 20 ( x12 )
	sw x22, 0 ( x10 )
	sw x25, 8 ( x12 )
	sw x26, 28 ( sp )
.LBB0_26:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x21 )
	lw x11, 4 ( x21 )
	mv x13, x19
	mv x12, x19
	jal __eqdf2
	add x21, x21, -8
	add x20, x20, -1
	beq x0, x10, .LBB0_26
.LBB0_27:                               //  %while.end
	lui x11, %hi( two_over_pi )
	add x15, x11, %lo( two_over_pi )
	add x10, sp, 16
	add x14, x0, 2
	mv x11, fp
	mv x12, x18
	mv x13, x20
	jal __kernel_rem_pio2
	mv x18, x10
	bge x9, x0, .LBB0_30
.LBB0_28:                               //  %if.then168
	lw x10, 4 ( fp )
	lui x11, %hi( -2147483648 )
	add x11, x11, %lo( -2147483648 )
	xor x10, x11, x10
	sw x10, 4 ( fp )
	lw x10, 12 ( fp )
	xor x10, x11, x10
	sw x10, 12 ( fp )
	jal x0, .LBB0_29
.LBB0_9:                                //  %if.then24
	lui x10, %hi( 442655537 )
	add x19, x10, %lo( 442655537 )
	lui x10, %hi( 1037087841 )
	add x20, x10, %lo( 1037087841 )
	mv x10, x18
	mv x11, x9
	mv x12, x19
	mv x13, x20
	jal __adddf3
	mv x21, x10
	mv x22, x11
	mv x10, x18
	mv x11, x9
.LBB0_10:                               //  %cleanup
	mv x12, x21
	mv x13, x22
	jal __subdf3
	mv x12, x19
	mv x13, x20
	jal __adddf3
	sw x11, 12 ( fp )
	sw x10, 8 ( fp )
	sw x22, 4 ( fp )
	sw x21, 0 ( fp )
	add x18, x0, -1
	jal x0, .LBB0_30
.LBB0_15:                               //  %if.then54
	mv x10, x26
	mv x11, x22
	mv x12, x19
	mv x13, x24
	jal __subdf3
	mv x12, x26
.LBB0_20:                               //  %if.end106
	mv x26, x10
	mv x25, x11
	sw x25, 4 ( fp )
	sw x26, 0 ( fp )
	jal x0, .LBB0_21
.LBB0_18:
	mv x12, x27
.LBB0_21:                               //  %if.end106
	mv x10, x12
	mv x11, x22
	mv x12, x26
	mv x13, x25
	jal __subdf3
	mv x12, x19
	mv x13, x24
	jal __subdf3
	sw x11, 12 ( fp )
	sw x10, 8 ( fp )
	bge x9, x0, .LBB0_30
.LBB0_22:                               //  %if.then113
	sw x10, 8 ( fp )
	lui x10, %hi( -2147483648 )
	add x10, x10, %lo( -2147483648 )
	xor x11, x10, x11
	xor x10, x10, x25
	sw x26, 0 ( fp )
	sw x11, 12 ( fp )
	sw x10, 4 ( fp )
.LBB0_29:                               //  %cleanup
	sub x18, x0, x18
.LBB0_30:                               //  %cleanup
	mv x10, x18
	lw fp, 44 ( sp )                //  4-byte Folded Reload
	lw x27, 48 ( sp )               //  4-byte Folded Reload
	lw x26, 52 ( sp )               //  4-byte Folded Reload
	lw x25, 56 ( sp )               //  4-byte Folded Reload
	lw x24, 60 ( sp )               //  4-byte Folded Reload
	lw x23, 64 ( sp )               //  4-byte Folded Reload
	lw x22, 68 ( sp )               //  4-byte Folded Reload
	lw x21, 72 ( sp )               //  4-byte Folded Reload
	lw x20, 76 ( sp )               //  4-byte Folded Reload
	lw x19, 80 ( sp )               //  4-byte Folded Reload
	lw x18, 84 ( sp )               //  4-byte Folded Reload
	lw x9, 88 ( sp )                //  4-byte Folded Reload
	lw ra, 92 ( sp )                //  4-byte Folded Reload
	add sp, sp, 96
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	__ieee754_rem_pio2, .Lfunc_end0-__ieee754_rem_pio2
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	npio2_hw,@object        //  @npio2_hw
	.section	.rodata,"a",@progbits
	.p2align	2
npio2_hw:
	.long	1073291771              //  0x3ff921fb
	.long	1074340347              //  0x400921fb
	.long	1074977148              //  0x4012d97c
	.long	1075388923              //  0x401921fb
	.long	1075800698              //  0x401f6a7a
	.long	1076025724              //  0x4022d97c
	.long	1076231611              //  0x4025fdbb
	.long	1076437499              //  0x402921fb
	.long	1076643386              //  0x402c463a
	.long	1076849274              //  0x402f6a7a
	.long	1076971356              //  0x4031475c
	.long	1077074300              //  0x4032d97c
	.long	1077177244              //  0x40346b9c
	.long	1077280187              //  0x4035fdbb
	.long	1077383131              //  0x40378fdb
	.long	1077486075              //  0x403921fb
	.long	1077589019              //  0x403ab41b
	.long	1077691962              //  0x403c463a
	.long	1077794906              //  0x403dd85a
	.long	1077897850              //  0x403f6a7a
	.long	1077968460              //  0x40407e4c
	.long	1078019932              //  0x4041475c
	.long	1078071404              //  0x4042106c
	.long	1078122876              //  0x4042d97c
	.long	1078174348              //  0x4043a28c
	.long	1078225820              //  0x40446b9c
	.long	1078277292              //  0x404534ac
	.long	1078328763              //  0x4045fdbb
	.long	1078380235              //  0x4046c6cb
	.long	1078431707              //  0x40478fdb
	.long	1078483179              //  0x404858eb
	.long	1078534651              //  0x404921fb
	.size	npio2_hw, 128

	.address_space	0
	.type	two_over_pi,@object     //  @two_over_pi
	.p2align	2
two_over_pi:
	.long	10680707                //  0xa2f983
	.long	7228996                 //  0x6e4e44
	.long	1387004                 //  0x1529fc
	.long	2578385                 //  0x2757d1
	.long	16069853                //  0xf534dd
	.long	12639074                //  0xc0db62
	.long	9804092                 //  0x95993c
	.long	4427841                 //  0x439041
	.long	16666979                //  0xfe5163
	.long	11263675                //  0xabdebb
	.long	12935607                //  0xc561b7
	.long	2387514                 //  0x246e3a
	.long	4345298                 //  0x424dd2
	.long	14681673                //  0xe00649
	.long	3074569                 //  0x2eea09
	.long	13734428                //  0xd1921c
	.long	16653803                //  0xfe1deb
	.long	1880361                 //  0x1cb129
	.long	10960616                //  0xa73ee8
	.long	8533493                 //  0x8235f5
	.long	3062596                 //  0x2ebb44
	.long	8710556                 //  0x84e99c
	.long	7349940                 //  0x7026b4
	.long	6258241                 //  0x5f7e41
	.long	3772886                 //  0x3991d6
	.long	3769171                 //  0x398353
	.long	3798172                 //  0x39f49c
	.long	8675211                 //  0x845f8b
	.long	12450088                //  0xbdf928
	.long	3874808                 //  0x3b1ff8
	.long	9961438                 //  0x97ffde
	.long	366607                  //  0x5980f
	.long	15675153                //  0xef2f11
	.long	9132554                 //  0x8b5a0a
	.long	7151469                 //  0x6d1f6d
	.long	3571407                 //  0x367ecf
	.long	2607881                 //  0x27cb09
	.long	12013382                //  0xb74f46
	.long	4155038                 //  0x3f669e
	.long	6285869                 //  0x5fea2d
	.long	7677882                 //  0x7527ba
	.long	13102053                //  0xc7ebe5
	.long	15825725                //  0xf17b3d
	.long	473591                  //  0x739f7
	.long	9065106                 //  0x8a5292
	.long	15363067                //  0xea6bfb
	.long	6271263                 //  0x5fb11f
	.long	9264392                 //  0x8d5d08
	.long	5636912                 //  0x560330
	.long	4652155                 //  0x46fc7b
	.long	7056368                 //  0x6babf0
	.long	13614112                //  0xcfbc20
	.long	10155062                //  0x9af436
	.long	1944035                 //  0x1da9e3
	.long	9527646                 //  0x91615e
	.long	15080200                //  0xe61b08
	.long	6658437                 //  0x659985
	.long	6231200                 //  0x5f14a0
	.long	6832269                 //  0x68408d
	.long	16767104                //  0xffd880
	.long	5075751                 //  0x4d7327
	.long	3212806                 //  0x310606
	.long	1398474                 //  0x1556ca
	.long	7579849                 //  0x73a8c9
	.long	6349435                 //  0x60e27b
	.long	12618859                //  0xc08c6b
	.size	two_over_pi, 264


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
