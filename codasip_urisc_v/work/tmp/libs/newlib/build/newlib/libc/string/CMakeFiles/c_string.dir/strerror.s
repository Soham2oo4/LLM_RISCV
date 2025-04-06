	.text
	.file	"strerror.c"
	.globl	_strerror_r             //  -- Begin function _strerror_r
	.type	_strerror_r,@function
_strerror_r:                            //  @_strerror_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add sp, sp, -16
	.cfi_adjust_cfa_offset 16
	mv x14, x10
	add x10, x0, 142
	sw ra, 12 ( sp )                //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw fp, 8 ( sp )                 //  4-byte Folded Spill
	.cfi_offset 8, -8
	bltu x10, x11, .LBB0_81
.LBB0_1:                                //  %entry
	lui x16, %hi( JTI0_0 )
	sll x15, x11, 2&31
	add x16, x16, %lo( JTI0_0 )
	add x15, x16, x15
	lw x15, 0 ( x15 )
	lui x10, %hi( .str )
	add x10, x10, %lo( .str )
	jr x15
.LBB0_2:                                //  %sw.bb1
	lui x10, %hi( .str.1 )
	add x10, x10, %lo( .str.1 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_3:                                //  %sw.bb2
	lui x10, %hi( .str.2 )
	add x10, x10, %lo( .str.2 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_4:                                //  %sw.bb3
	lui x10, %hi( .str.3 )
	add x10, x10, %lo( .str.3 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_5:                                //  %sw.bb4
	lui x10, %hi( .str.4 )
	add x10, x10, %lo( .str.4 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_6:                                //  %sw.bb5
	lui x10, %hi( .str.5 )
	add x10, x10, %lo( .str.5 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_7:                                //  %sw.bb6
	lui x10, %hi( .str.6 )
	add x10, x10, %lo( .str.6 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_8:                                //  %sw.bb7
	lui x10, %hi( .str.7 )
	add x10, x10, %lo( .str.7 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_9:                                //  %sw.bb8
	lui x10, %hi( .str.8 )
	add x10, x10, %lo( .str.8 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_11:                               //  %sw.bb10
	lui x10, %hi( .str.10 )
	add x10, x10, %lo( .str.10 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_12:                               //  %sw.bb11
	lui x10, %hi( .str.11 )
	add x10, x10, %lo( .str.11 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_14:                               //  %sw.bb13
	lui x10, %hi( .str.13 )
	add x10, x10, %lo( .str.13 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_15:                               //  %sw.bb14
	lui x10, %hi( .str.14 )
	add x10, x10, %lo( .str.14 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_16:                               //  %sw.bb15
	lui x10, %hi( .str.15 )
	add x10, x10, %lo( .str.15 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_17:                               //  %sw.bb16
	lui x10, %hi( .str.16 )
	add x10, x10, %lo( .str.16 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_81:                               //  %sw.default
	mv fp, x0
	beq x13, fp, .LBB0_83
.LBB0_82:                               //  %sw.default
	mv x14, x13
.LBB0_83:                               //  %sw.default
	mv x10, x11
	mv x11, x12
	mv x12, x14
	jal _user_strerror
	bne x10, fp, .LBB0_85
.LBB0_84:
	lui x10, %hi( .str.80 )
	add x10, x10, %lo( .str.80 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_18:                               //  %sw.bb17
	lui x10, %hi( .str.17 )
	add x10, x10, %lo( .str.17 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_19:                               //  %sw.bb18
	lui x10, %hi( .str.18 )
	add x10, x10, %lo( .str.18 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_20:                               //  %sw.bb19
	lui x10, %hi( .str.19 )
	add x10, x10, %lo( .str.19 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_21:                               //  %sw.bb20
	lui x10, %hi( .str.20 )
	add x10, x10, %lo( .str.20 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_22:                               //  %sw.bb21
	lui x10, %hi( .str.21 )
	add x10, x10, %lo( .str.21 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_25:                               //  %sw.bb24
	lui x10, %hi( .str.24 )
	add x10, x10, %lo( .str.24 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_26:                               //  %sw.bb25
	lui x10, %hi( .str.25 )
	add x10, x10, %lo( .str.25 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_29:                               //  %sw.bb28
	lui x10, %hi( .str.28 )
	add x10, x10, %lo( .str.28 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_30:                               //  %sw.bb29
	lui x10, %hi( .str.29 )
	add x10, x10, %lo( .str.29 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_31:                               //  %sw.bb30
	lui x10, %hi( .str.30 )
	add x10, x10, %lo( .str.30 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_32:                               //  %sw.bb31
	lui x10, %hi( .str.31 )
	add x10, x10, %lo( .str.31 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_33:                               //  %sw.bb32
	lui x10, %hi( .str.32 )
	add x10, x10, %lo( .str.32 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_35:                               //  %sw.bb34
	lui x10, %hi( .str.34 )
	add x10, x10, %lo( .str.34 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_37:                               //  %sw.bb36
	lui x10, %hi( .str.36 )
	add x10, x10, %lo( .str.36 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_38:                               //  %sw.bb37
	lui x10, %hi( .str.37 )
	add x10, x10, %lo( .str.37 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_39:                               //  %sw.bb38
	lui x10, %hi( .str.38 )
	add x10, x10, %lo( .str.38 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_40:                               //  %sw.bb39
	lui x10, %hi( .str.39 )
	add x10, x10, %lo( .str.39 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_41:                               //  %sw.bb40
	lui x10, %hi( .str.40 )
	add x10, x10, %lo( .str.40 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_42:                               //  %sw.bb41
	lui x10, %hi( .str.41 )
	add x10, x10, %lo( .str.41 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_43:                               //  %sw.bb42
	lui x10, %hi( .str.42 )
	add x10, x10, %lo( .str.42 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_44:                               //  %sw.bb43
	lui x10, %hi( .str.43 )
	add x10, x10, %lo( .str.43 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_46:                               //  %sw.bb45
	lui x10, %hi( .str.45 )
	add x10, x10, %lo( .str.45 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_48:                               //  %sw.bb47
	lui x10, %hi( .str.47 )
	add x10, x10, %lo( .str.47 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_49:                               //  %sw.bb48
	lui x10, %hi( .str.48 )
	add x10, x10, %lo( .str.48 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_62:                               //  %sw.bb61
	lui x10, %hi( .str.61 )
	add x10, x10, %lo( .str.61 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_50:                               //  %sw.bb49
	lui x10, %hi( .str.49 )
	add x10, x10, %lo( .str.49 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_51:                               //  %sw.bb50
	lui x10, %hi( .str.50 )
	add x10, x10, %lo( .str.50 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_52:                               //  %sw.bb51
	lui x10, %hi( .str.51 )
	add x10, x10, %lo( .str.51 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_53:                               //  %sw.bb52
	lui x10, %hi( .str.52 )
	add x10, x10, %lo( .str.52 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_55:                               //  %sw.bb54
	lui x10, %hi( .str.54 )
	add x10, x10, %lo( .str.54 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_56:                               //  %sw.bb55
	lui x10, %hi( .str.55 )
	add x10, x10, %lo( .str.55 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_57:                               //  %sw.bb56
	lui x10, %hi( .str.56 )
	add x10, x10, %lo( .str.56 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_58:                               //  %sw.bb57
	lui x10, %hi( .str.57 )
	add x10, x10, %lo( .str.57 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_59:                               //  %sw.bb58
	lui x10, %hi( .str.58 )
	add x10, x10, %lo( .str.58 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_60:                               //  %sw.bb59
	lui x10, %hi( .str.59 )
	add x10, x10, %lo( .str.59 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_77:                               //  %sw.bb76
	lui x10, %hi( .str.76 )
	add x10, x10, %lo( .str.76 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_68:                               //  %sw.bb67
	lui x10, %hi( .str.67 )
	add x10, x10, %lo( .str.67 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_61:                               //  %sw.bb60
	lui x10, %hi( .str.60 )
	add x10, x10, %lo( .str.60 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_63:                               //  %sw.bb62
	lui x10, %hi( .str.62 )
	add x10, x10, %lo( .str.62 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_64:                               //  %sw.bb63
	lui x10, %hi( .str.63 )
	add x10, x10, %lo( .str.63 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_65:                               //  %sw.bb64
	lui x10, %hi( .str.64 )
	add x10, x10, %lo( .str.64 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_66:                               //  %sw.bb65
	lui x10, %hi( .str.65 )
	add x10, x10, %lo( .str.65 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_67:                               //  %sw.bb66
	lui x10, %hi( .str.66 )
	add x10, x10, %lo( .str.66 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_69:                               //  %sw.bb68
	lui x10, %hi( .str.68 )
	add x10, x10, %lo( .str.68 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_71:                               //  %sw.bb70
	lui x10, %hi( .str.70 )
	add x10, x10, %lo( .str.70 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_47:                               //  %sw.bb46
	lui x10, %hi( .str.46 )
	add x10, x10, %lo( .str.46 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_27:                               //  %sw.bb26
	lui x10, %hi( .str.26 )
	add x10, x10, %lo( .str.26 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_80:                               //  %sw.bb79
	lui x10, %hi( .str.79 )
	add x10, x10, %lo( .str.79 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_23:                               //  %sw.bb22
	lui x10, %hi( .str.22 )
	add x10, x10, %lo( .str.22 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_34:                               //  %sw.bb33
	lui x10, %hi( .str.33 )
	add x10, x10, %lo( .str.33 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_24:                               //  %sw.bb23
	lui x10, %hi( .str.23 )
	add x10, x10, %lo( .str.23 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_10:                               //  %sw.bb9
	lui x10, %hi( .str.9 )
	add x10, x10, %lo( .str.9 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_13:                               //  %sw.bb12
	lui x10, %hi( .str.12 )
	add x10, x10, %lo( .str.12 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_79:                               //  %sw.bb78
	lui x10, %hi( .str.78 )
	add x10, x10, %lo( .str.78 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_54:                               //  %sw.bb53
	lui x10, %hi( .str.53 )
	add x10, x10, %lo( .str.53 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_70:                               //  %sw.bb69
	lui x10, %hi( .str.69 )
	add x10, x10, %lo( .str.69 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_28:                               //  %sw.bb27
	lui x10, %hi( .str.27 )
	add x10, x10, %lo( .str.27 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_73:                               //  %sw.bb72
	lui x10, %hi( .str.72 )
	add x10, x10, %lo( .str.72 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_72:                               //  %sw.bb71
	lui x10, %hi( .str.71 )
	add x10, x10, %lo( .str.71 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_36:                               //  %sw.bb35
	lui x10, %hi( .str.35 )
	add x10, x10, %lo( .str.35 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_45:                               //  %sw.bb44
	lui x10, %hi( .str.44 )
	add x10, x10, %lo( .str.44 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_78:                               //  %sw.bb77
	lui x10, %hi( .str.77 )
	add x10, x10, %lo( .str.77 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_74:                               //  %sw.bb73
	lui x10, %hi( .str.73 )
	add x10, x10, %lo( .str.73 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_75:                               //  %sw.bb74
	lui x10, %hi( .str.74 )
	add x10, x10, %lo( .str.74 )
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.LBB0_76:                               //  %sw.bb75
	lui x10, %hi( .str.75 )
	add x10, x10, %lo( .str.75 )
.LBB0_85:                               //  %sw.epilog
	lw fp, 8 ( sp )                 //  4-byte Folded Reload
	lw ra, 12 ( sp )                //  4-byte Folded Reload
	add sp, sp, 16
	.cfi_def_cfa 2, 0
	jr ra
.Lfunc_end0:
	.size	_strerror_r, .Lfunc_end0-_strerror_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_85
	.long	.LBB0_2
	.long	.LBB0_3
	.long	.LBB0_4
	.long	.LBB0_5
	.long	.LBB0_6
	.long	.LBB0_7
	.long	.LBB0_8
	.long	.LBB0_9
	.long	.LBB0_11
	.long	.LBB0_12
	.long	.LBB0_14
	.long	.LBB0_15
	.long	.LBB0_16
	.long	.LBB0_17
	.long	.LBB0_81
	.long	.LBB0_18
	.long	.LBB0_19
	.long	.LBB0_20
	.long	.LBB0_21
	.long	.LBB0_22
	.long	.LBB0_25
	.long	.LBB0_26
	.long	.LBB0_29
	.long	.LBB0_30
	.long	.LBB0_31
	.long	.LBB0_32
	.long	.LBB0_33
	.long	.LBB0_35
	.long	.LBB0_37
	.long	.LBB0_38
	.long	.LBB0_39
	.long	.LBB0_40
	.long	.LBB0_41
	.long	.LBB0_42
	.long	.LBB0_43
	.long	.LBB0_44
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_46
	.long	.LBB0_48
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_49
	.long	.LBB0_62
	.long	.LBB0_50
	.long	.LBB0_51
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_52
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_53
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_55
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_56
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_57
	.long	.LBB0_81
	.long	.LBB0_58
	.long	.LBB0_59
	.long	.LBB0_60
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_77
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_68
	.long	.LBB0_61
	.long	.LBB0_63
	.long	.LBB0_64
	.long	.LBB0_65
	.long	.LBB0_66
	.long	.LBB0_81
	.long	.LBB0_67
	.long	.LBB0_69
	.long	.LBB0_71
	.long	.LBB0_47
	.long	.LBB0_27
	.long	.LBB0_80
	.long	.LBB0_23
	.long	.LBB0_34
	.long	.LBB0_24
	.long	.LBB0_10
	.long	.LBB0_13
	.long	.LBB0_79
	.long	.LBB0_54
	.long	.LBB0_81
	.long	.LBB0_70
	.long	.LBB0_28
	.long	.LBB0_73
	.long	.LBB0_72
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_36
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_81
	.long	.LBB0_45
	.long	.LBB0_78
	.long	.LBB0_74
	.long	.LBB0_75
	.long	.LBB0_76
                                        //  -- End function
	.text
	.globl	strerror                //  -- Begin function strerror
	.type	strerror,@function
strerror:                               //  @strerror
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	mv x12, x0
	mv x13, x12
	j _strerror_r
.Lfunc_end1:
	.size	strerror, .Lfunc_end1-strerror
	.cfi_endproc
                                        //  -- End function
	.globl	strerror_l              //  -- Begin function strerror_l
	.type	strerror_l,@function
strerror_l:                             //  @strerror_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	mv x11, x10
	lui x10, %hi( _impure_ptr )
	add x10, x10, %lo( _impure_ptr )
	lw x10, 0 ( x10 )
	mv x12, x0
	mv x13, x12
	j _strerror_r
.Lfunc_end2:
	.size	strerror_l, .Lfunc_end2-strerror_l
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"Success"
	.size	.str, 8

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"Not owner"
	.size	.str.1, 10

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"No such file or directory"
	.size	.str.2, 26

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"No such process"
	.size	.str.3, 16

	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	"Interrupted system call"
	.size	.str.4, 24

	.address_space	0
	.type	.str.5,@object          //  @.str.5
.str.5:
	.asciz	"I/O error"
	.size	.str.5, 10

	.address_space	0
	.type	.str.6,@object          //  @.str.6
.str.6:
	.asciz	"No such device or address"
	.size	.str.6, 26

	.address_space	0
	.type	.str.7,@object          //  @.str.7
.str.7:
	.asciz	"Arg list too long"
	.size	.str.7, 18

	.address_space	0
	.type	.str.8,@object          //  @.str.8
.str.8:
	.asciz	"Exec format error"
	.size	.str.8, 18

	.address_space	0
	.type	.str.9,@object          //  @.str.9
.str.9:
	.asciz	"Socket already connected"
	.size	.str.9, 25

	.address_space	0
	.type	.str.10,@object         //  @.str.10
.str.10:
	.asciz	"Bad file number"
	.size	.str.10, 16

	.address_space	0
	.type	.str.11,@object         //  @.str.11
.str.11:
	.asciz	"No children"
	.size	.str.11, 12

	.address_space	0
	.type	.str.12,@object         //  @.str.12
.str.12:
	.asciz	"Destination address required"
	.size	.str.12, 29

	.address_space	0
	.type	.str.13,@object         //  @.str.13
.str.13:
	.asciz	"No more processes"
	.size	.str.13, 18

	.address_space	0
	.type	.str.14,@object         //  @.str.14
.str.14:
	.asciz	"Not enough space"
	.size	.str.14, 17

	.address_space	0
	.type	.str.15,@object         //  @.str.15
.str.15:
	.asciz	"Permission denied"
	.size	.str.15, 18

	.address_space	0
	.type	.str.16,@object         //  @.str.16
.str.16:
	.asciz	"Bad address"
	.size	.str.16, 12

	.address_space	0
	.type	.str.17,@object         //  @.str.17
.str.17:
	.asciz	"Device or resource busy"
	.size	.str.17, 24

	.address_space	0
	.type	.str.18,@object         //  @.str.18
.str.18:
	.asciz	"File exists"
	.size	.str.18, 12

	.address_space	0
	.type	.str.19,@object         //  @.str.19
.str.19:
	.asciz	"Cross-device link"
	.size	.str.19, 18

	.address_space	0
	.type	.str.20,@object         //  @.str.20
.str.20:
	.asciz	"No such device"
	.size	.str.20, 15

	.address_space	0
	.type	.str.21,@object         //  @.str.21
.str.21:
	.asciz	"Not a directory"
	.size	.str.21, 16

	.address_space	0
	.type	.str.22,@object         //  @.str.22
.str.22:
	.asciz	"Host is down"
	.size	.str.22, 13

	.address_space	0
	.type	.str.23,@object         //  @.str.23
.str.23:
	.asciz	"Connection already in progress"
	.size	.str.23, 31

	.address_space	0
	.type	.str.24,@object         //  @.str.24
.str.24:
	.asciz	"Is a directory"
	.size	.str.24, 15

	.address_space	0
	.type	.str.25,@object         //  @.str.25
.str.25:
	.asciz	"Invalid argument"
	.size	.str.25, 17

	.address_space	0
	.type	.str.26,@object         //  @.str.26
.str.26:
	.asciz	"Network interface is not configured"
	.size	.str.26, 36

	.address_space	0
	.type	.str.27,@object         //  @.str.27
.str.27:
	.asciz	"Connection aborted by network"
	.size	.str.27, 30

	.address_space	0
	.type	.str.28,@object         //  @.str.28
.str.28:
	.asciz	"Too many open files in system"
	.size	.str.28, 30

	.address_space	0
	.type	.str.29,@object         //  @.str.29
.str.29:
	.asciz	"File descriptor value too large"
	.size	.str.29, 32

	.address_space	0
	.type	.str.30,@object         //  @.str.30
.str.30:
	.asciz	"Not a character device"
	.size	.str.30, 23

	.address_space	0
	.type	.str.31,@object         //  @.str.31
.str.31:
	.asciz	"Text file busy"
	.size	.str.31, 15

	.address_space	0
	.type	.str.32,@object         //  @.str.32
.str.32:
	.asciz	"File too large"
	.size	.str.32, 15

	.address_space	0
	.type	.str.33,@object         //  @.str.33
.str.33:
	.asciz	"Host is unreachable"
	.size	.str.33, 20

	.address_space	0
	.type	.str.34,@object         //  @.str.34
.str.34:
	.asciz	"No space left on device"
	.size	.str.34, 24

	.address_space	0
	.type	.str.35,@object         //  @.str.35
.str.35:
	.asciz	"Not supported"
	.size	.str.35, 14

	.address_space	0
	.type	.str.36,@object         //  @.str.36
.str.36:
	.asciz	"Illegal seek"
	.size	.str.36, 13

	.address_space	0
	.type	.str.37,@object         //  @.str.37
.str.37:
	.asciz	"Read-only file system"
	.size	.str.37, 22

	.address_space	0
	.type	.str.38,@object         //  @.str.38
.str.38:
	.asciz	"Too many links"
	.size	.str.38, 15

	.address_space	0
	.type	.str.39,@object         //  @.str.39
.str.39:
	.asciz	"Broken pipe"
	.size	.str.39, 12

	.address_space	0
	.type	.str.40,@object         //  @.str.40
.str.40:
	.asciz	"Mathematics argument out of domain of function"
	.size	.str.40, 47

	.address_space	0
	.type	.str.41,@object         //  @.str.41
.str.41:
	.asciz	"Result too large"
	.size	.str.41, 17

	.address_space	0
	.type	.str.42,@object         //  @.str.42
.str.42:
	.asciz	"No message of desired type"
	.size	.str.42, 27

	.address_space	0
	.type	.str.43,@object         //  @.str.43
.str.43:
	.asciz	"Identifier removed"
	.size	.str.43, 19

	.address_space	0
	.type	.str.44,@object         //  @.str.44
.str.44:
	.asciz	"Illegal byte sequence"
	.size	.str.44, 22

	.address_space	0
	.type	.str.45,@object         //  @.str.45
.str.45:
	.asciz	"Deadlock"
	.size	.str.45, 9

	.address_space	0
	.type	.str.46,@object         //  @.str.46
.str.46:
	.asciz	"Network is unreachable"
	.size	.str.46, 23

	.address_space	0
	.type	.str.47,@object         //  @.str.47
.str.47:
	.asciz	"No lock"
	.size	.str.47, 8

	.address_space	0
	.type	.str.48,@object         //  @.str.48
.str.48:
	.asciz	"Not a stream"
	.size	.str.48, 13

	.address_space	0
	.type	.str.49,@object         //  @.str.49
.str.49:
	.asciz	"Stream ioctl timeout"
	.size	.str.49, 21

	.address_space	0
	.type	.str.50,@object         //  @.str.50
.str.50:
	.asciz	"No stream resources"
	.size	.str.50, 20

	.address_space	0
	.type	.str.51,@object         //  @.str.51
.str.51:
	.asciz	"Virtual circuit is gone"
	.size	.str.51, 24

	.address_space	0
	.type	.str.52,@object         //  @.str.52
.str.52:
	.asciz	"Protocol error"
	.size	.str.52, 15

	.address_space	0
	.type	.str.53,@object         //  @.str.53
.str.53:
	.asciz	"Unknown protocol"
	.size	.str.53, 17

	.address_space	0
	.type	.str.54,@object         //  @.str.54
.str.54:
	.asciz	"Multihop attempted"
	.size	.str.54, 19

	.address_space	0
	.type	.str.55,@object         //  @.str.55
.str.55:
	.asciz	"Bad message"
	.size	.str.55, 12

	.address_space	0
	.type	.str.56,@object         //  @.str.56
.str.56:
	.asciz	"Function not implemented"
	.size	.str.56, 25

	.address_space	0
	.type	.str.57,@object         //  @.str.57
.str.57:
	.asciz	"Directory not empty"
	.size	.str.57, 20

	.address_space	0
	.type	.str.58,@object         //  @.str.58
.str.58:
	.asciz	"File or path name too long"
	.size	.str.58, 27

	.address_space	0
	.type	.str.59,@object         //  @.str.59
.str.59:
	.asciz	"Too many symbolic links"
	.size	.str.59, 24

	.address_space	0
	.type	.str.60,@object         //  @.str.60
.str.60:
	.asciz	"No buffer space available"
	.size	.str.60, 26

	.address_space	0
	.type	.str.61,@object         //  @.str.61
.str.61:
	.asciz	"No data"
	.size	.str.61, 8

	.address_space	0
	.type	.str.62,@object         //  @.str.62
.str.62:
	.asciz	"Address family not supported by protocol family"
	.size	.str.62, 48

	.address_space	0
	.type	.str.63,@object         //  @.str.63
.str.63:
	.asciz	"Protocol wrong type for socket"
	.size	.str.63, 31

	.address_space	0
	.type	.str.64,@object         //  @.str.64
.str.64:
	.asciz	"Socket operation on non-socket"
	.size	.str.64, 31

	.address_space	0
	.type	.str.65,@object         //  @.str.65
.str.65:
	.asciz	"Protocol not available"
	.size	.str.65, 23

	.address_space	0
	.type	.str.66,@object         //  @.str.66
.str.66:
	.asciz	"Connection refused"
	.size	.str.66, 19

	.address_space	0
	.type	.str.67,@object         //  @.str.67
.str.67:
	.asciz	"Connection reset by peer"
	.size	.str.67, 25

	.address_space	0
	.type	.str.68,@object         //  @.str.68
.str.68:
	.asciz	"Address already in use"
	.size	.str.68, 23

	.address_space	0
	.type	.str.69,@object         //  @.str.69
.str.69:
	.asciz	"Address not available"
	.size	.str.69, 22

	.address_space	0
	.type	.str.70,@object         //  @.str.70
.str.70:
	.asciz	"Software caused connection abort"
	.size	.str.70, 33

	.address_space	0
	.type	.str.71,@object         //  @.str.71
.str.71:
	.asciz	"Socket is not connected"
	.size	.str.71, 24

	.address_space	0
	.type	.str.72,@object         //  @.str.72
.str.72:
	.asciz	"Socket is already connected"
	.size	.str.72, 28

	.address_space	0
	.type	.str.73,@object         //  @.str.73
.str.73:
	.asciz	"Operation canceled"
	.size	.str.73, 19

	.address_space	0
	.type	.str.74,@object         //  @.str.74
.str.74:
	.asciz	"State not recoverable"
	.size	.str.74, 22

	.address_space	0
	.type	.str.75,@object         //  @.str.75
.str.75:
	.asciz	"Previous owner died"
	.size	.str.75, 20

	.address_space	0
	.type	.str.76,@object         //  @.str.76
.str.76:
	.asciz	"Operation not supported on socket"
	.size	.str.76, 34

	.address_space	0
	.type	.str.77,@object         //  @.str.77
.str.77:
	.asciz	"Value too large for defined data type"
	.size	.str.77, 38

	.address_space	0
	.type	.str.78,@object         //  @.str.78
.str.78:
	.asciz	"Message too long"
	.size	.str.78, 17

	.address_space	0
	.type	.str.79,@object         //  @.str.79
.str.79:
	.asciz	"Connection timed out"
	.size	.str.79, 21

	.address_space	0
	.type	.str.80,@object         //  @.str.80
.str.80:
	.zero	1
	.size	.str.80, 1

	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git de721e516e0cf84aa99255d0f6f37c402af48983)"
	.section	".note.GNU-stack","",@progbits
