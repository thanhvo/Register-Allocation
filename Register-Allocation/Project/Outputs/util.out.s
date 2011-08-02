	.file	1 "util.c"
	.section .mdebug.abi32
	.previous
	.text
	.align	2
	.globl	updcrc
	.set	nomips16
	.ent	updcrc
updcrc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s75 $2
# s73 $2
# s3 $31
# s2 $5
# s1 s4 $4
# s8 s18 $3
# s74 $3
# s72 $8
# s71 $9
# s70 $8
# s69 $8
# s68 $8
# s67 $8
# s66 $8
# s65 $10
# s64 $8
# s63 $9
# s17 $11
# s7 $12
# s62 $8
# s61 $8
# s60 $8
# s59 $8
# s58 $8
# s57 $10
# s56 $8
# s55 $9
# s54 $8
# s53 $8
# s52 $8
# s51 $8
# s50 $8
# s49 $10
# s48 $8
# s47 $9
# s46 $8
# s45 $8
# s44 $8
# s43 $8
# s42 $8
# s41 $8
# s40 $9
# s39 $8
# s5 $10
# s38 $8
# s37 $8
# s36 $8
# s35 $8
# s34 $8
# s33 $9
# s32 $8
# s31 $8
# s30 $8
# s29 $8
# s28 $8
# s27 $3
# s26 $8
# s25 $3
# s24 $3
# s23 $3
# s22 $3
# s21 $3
# s20 $8
# s19 $8
# s16 $8
# s15 $9
# s14 $8
# s13 $8
# s12 $8
# s11 $8
# s9 $13
# s10 $8
# s6 $3
#Interference Graph
#  s1
#! $5 $31 s2 s3 
#= $4 s4 
#  s2
#! $31 s1 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 
#= $5 
#  s3
#! $2 s1 s2 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 
#! s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 
#! s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 
#! s65 s66 s67 s68 s69 s70 s71 s72 s73 s74 s75 
#= $31 
#  s4
#! s2 s3 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 
#! s19 s20 s21 s22 s23 s24 s25 s26 s27 
#= s1 
#  s5
#! s2 s3 s4 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s17 s18 s19 
#! s20 s21 s22 s23 s24 s25 s26 s28 s29 s30 s31 s32 s33 s35 s36 s37 
#! s38 s39 s40 s42 s43 s44 s45 s46 s47 s73 
#  s6
#! s2 s3 s4 s5 
#  s7
#! s2 s3 s4 s5 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 
#! s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 
#! s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 
#! s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 s66 s67 
#! s68 s69 s70 s71 s72 
#  s8
#! s2 s3 s4 s5 s7 s9 s10 s11 s12 s13 s14 s15 s16 s17 
#= s18 
#  s9
#! s2 s3 s4 s5 s7 s8 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 
#! s20 
#  s10
#! s2 s3 s4 s5 s7 s8 s9 
#  s11
#! s2 s3 s4 s5 s7 s8 s9 
#  s12
#! s2 s3 s4 s5 s7 s8 s9 
#  s13
#! s2 s3 s4 s5 s7 s8 s9 
#  s14
#! s2 s3 s4 s5 s7 s8 s9 
#  s15
#! s2 s3 s4 s5 s7 s8 s9 s16 
#  s16
#! s2 s3 s4 s7 s8 s9 s15 
#  s17
#! s2 s3 s4 s5 s7 s8 s9 s18 s19 s20 s28 s29 s30 s31 s32 s33 
#! s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 
#! s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 
#! s66 s67 s68 s69 s70 s71 s72 
#  s18
#! s2 s3 s4 s5 s7 s9 s17 s19 s20 s28 s29 s30 s31 s32 s33 s34 
#! s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 
#! s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 s66 
#! s67 s68 s69 s70 s71 s72 
#= s8 
#  s19
#! s2 s3 s4 s5 s7 s9 s17 s18 
#  s20
#! s2 s3 s4 s5 s7 s9 s17 s18 
#  s21
#! s2 s3 s4 s5 s7 
#  s22
#! s2 s3 s4 s5 s7 
#  s23
#! s2 s3 s4 s5 s7 
#  s24
#! s2 s3 s4 s5 s7 
#  s25
#! s2 s3 s4 s5 s7 
#  s26
#! s2 s3 s4 s5 s7 s27 
#  s27
#! s2 s3 s4 s7 s26 
#  s28
#! s3 s5 s7 s17 s18 
#  s29
#! s3 s5 s7 s17 s18 
#  s30
#! s3 s5 s7 s17 s18 
#  s31
#! s3 s5 s7 s17 s18 
#  s32
#! s3 s5 s7 s17 s18 
#  s33
#! s3 s5 s7 s17 s18 s34 
#  s34
#! s3 s7 s17 s18 s33 
#  s35
#! s3 s5 s7 s17 s18 
#  s36
#! s3 s5 s7 s17 s18 
#  s37
#! s3 s5 s7 s17 s18 
#  s38
#! s3 s5 s7 s17 s18 
#  s39
#! s3 s5 s7 s17 s18 
#  s40
#! s3 s5 s7 s17 s18 s41 
#  s41
#! s3 s7 s17 s18 s40 
#  s42
#! s3 s5 s7 s17 s18 
#  s43
#! s3 s5 s7 s17 s18 
#  s44
#! s3 s5 s7 s17 s18 
#  s45
#! s3 s5 s7 s17 s18 
#  s46
#! s3 s5 s7 s17 s18 
#  s47
#! s3 s5 s7 s17 s18 s48 
#  s48
#! s3 s7 s17 s18 s47 
#  s49
#! s3 s7 s17 s18 s50 s51 s52 s53 s54 s55 
#  s50
#! s3 s7 s17 s18 s49 
#  s51
#! s3 s7 s17 s18 s49 
#  s52
#! s3 s7 s17 s18 s49 
#  s53
#! s3 s7 s17 s18 s49 
#  s54
#! s3 s7 s17 s18 s49 
#  s55
#! s3 s7 s17 s18 s49 s56 
#  s56
#! s3 s7 s17 s18 s55 
#  s57
#! s3 s7 s17 s18 s58 s59 s60 s61 s62 s63 
#  s58
#! s3 s7 s17 s18 s57 
#  s59
#! s3 s7 s17 s18 s57 
#  s60
#! s3 s7 s17 s18 s57 
#  s61
#! s3 s7 s17 s18 s57 
#  s62
#! s3 s7 s17 s18 s57 
#  s63
#! s3 s7 s17 s18 s57 s64 
#  s64
#! s3 s7 s17 s18 s63 
#  s65
#! s3 s7 s17 s18 s66 s67 s68 s69 s70 s71 
#  s66
#! s3 s7 s17 s18 s65 
#  s67
#! s3 s7 s17 s18 s65 
#  s68
#! s3 s7 s17 s18 s65 
#  s69
#! s3 s7 s17 s18 s65 
#  s70
#! s3 s7 s17 s18 s65 
#  s71
#! s3 s7 s17 s18 s65 s72 
#  s72
#! s3 s7 s17 s18 s71 
#  s73
#! s3 s5 
#= $2 
#  s74
#! s3 s75 
#  s75
#! s3 s74 
#= $2 
#CFG
#1 2 12
#2 3 11
#3 4 11
#4 5 10
#5 6 9
#6 7 8
#7 8
#8 9
#9 10 11
#10 10 11
#11
#12
#---BB1---
# $4 $5 $31 
	move	s1,$4
	move	s2,$5
	move	s3,$31
	move	s4,s1
	beq	s1,$0,$L24
	nop
#---BB2---
# s2 s3 s4 
	lw	s5,%gp_rel(crc.2871)($28)
	beq	s2,$0,$L22
	nop
#---BB3---
# s2 s3 s4 s5 
	lui	s6,%hi(crc_32_tab)
	addiu	s7,s6,%lo(crc_32_tab)
	addiu	s8,s2,-1
	andi	s9,s8,0x3
	lbu	s10,0(s4)
	nop
	xor	s11,s5,s10
	andi	s12,s11,0xff
	sll	s13,s12,2
	addu	s14,s13,s7
	lw	s15,0(s14)
	srl	s16,s5,8
	xor	s5,s15,s16
	addiu	s17,s4,1
	move	s18,s8
	beq	s8,$0,$L22
	nop
#---BB4---
# s2 s3 s4 s5 s7 s9 s17 s18 
	beq	s9,$0,$L4
	nop
#---BB5---
# s2 s3 s4 s5 s7 s9 s17 s18 
	li	s19,1			# 0x1
	beq	s9,s19,$L19
	nop
#---BB6---
# s2 s3 s4 s5 s7 s9 s17 s18 
	li	s20,2			# 0x2
	beq	s9,s20,$L20
	nop
#---BB7---
# s2 s3 s4 s5 s7 
	lbu	s21,1(s4)
	nop
	xor	s22,s5,s21
	andi	s23,s22,0xff
	sll	s24,s23,2
	addu	s25,s24,s7
	lw	s26,0(s25)
	srl	s27,s5,8
	xor	s5,s26,s27
	addiu	s17,s4,2
	addiu	s18,s2,-2
$L20:
#---BB8---
# s3 s5 s7 s17 s18 
	lbu	s28,0(s17)
	nop
	xor	s29,s5,s28
	andi	s30,s29,0xff
	sll	s31,s30,2
	addu	s32,s31,s7
	lw	s33,0(s32)
	srl	s34,s5,8
	xor	s5,s33,s34
	addiu	s17,s17,1
	addiu	s18,s18,-1
$L19:
#---BB9---
# s3 s5 s7 s17 s18 
	lbu	s35,0(s17)
	nop
	xor	s36,s5,s35
	andi	s37,s36,0xff
	sll	s38,s37,2
	addu	s39,s38,s7
	lw	s40,0(s39)
	srl	s41,s5,8
	xor	s5,s40,s41
	addiu	s17,s17,1
	addiu	s18,s18,-1
	beq	s18,$0,$L22
	nop
$L4:
#---BB10---
# s3 s5 s7 s17 s18 
	lbu	s42,0(s17)
	nop
	xor	s43,s5,s42
	andi	s44,s43,0xff
	sll	s45,s44,2
	addu	s46,s45,s7
	lw	s47,0(s46)
	srl	s48,s5,8
	xor	s49,s47,s48
	lbu	s50,1(s17)
	nop
	xor	s51,s49,s50
	andi	s52,s51,0xff
	sll	s53,s52,2
	addu	s54,s53,s7
	lw	s55,0(s54)
	srl	s56,s49,8
	xor	s57,s55,s56
	lbu	s58,2(s17)
	nop
	xor	s59,s57,s58
	andi	s60,s59,0xff
	sll	s61,s60,2
	addu	s62,s61,s7
	lw	s63,0(s62)
	srl	s64,s57,8
	xor	s65,s63,s64
	lbu	s66,3(s17)
	nop
	xor	s67,s65,s66
	andi	s68,s67,0xff
	sll	s69,s68,2
	addu	s70,s69,s7
	lw	s71,0(s70)
	srl	s72,s65,8
	xor	s5,s71,s72
	addiu	s17,s17,4
	addiu	s18,s18,-4
	bne	s18,$0,$L4
	nop
$L22:
#---BB11---
# s3 s5 
	nor	s73,$0,s5
	sw	s5,%gp_rel(crc.2871)($28)
	move	$2,s73
	j	s3
	nop
$L24:
#---BB12---
# s3 
	li	s74,-1			# 0xffffffffffffffff
	move	s75,$0
	sw	s74,%gp_rel(crc.2871)($28)
	move	$2,s75
	j	s3
	nop
	.set	macro
	.set	reorder
	.end	updcrc
	.size	updcrc, .-updcrc
	.align	2
	.globl	clear_bufs
	.set	nomips16
	.ent	clear_bufs
clear_bufs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s1 $31
#Interference Graph
#  s1
#= $31 
#CFG
#1
#---BB1---
# $31 
	move	s1,$31
	sw	$0,%gp_rel(outcnt)($28)
	sw	$0,%gp_rel(inptr)($28)
	sw	$0,%gp_rel(insize)($28)
	sw	$0,%gp_rel(bytes_out)($28)
	sw	$0,%gp_rel(bytes_in)($28)
	j	s1
	nop
	.set	macro
	.set	reorder
	.end	clear_bufs
	.size	clear_bufs, .-clear_bufs
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC0:
	.ascii	"%2ld.%1ld%%\000"
	.text
	.align	2
	.globl	display_ratio
	.set	nomips16
	.ent	display_ratio
display_ratio:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s27 $4
# s14 $4
# s4 $7
# s3 $6
# s2 $5
# s1 $4
# s6 s15 s28 $16
# s36 $3
# s35 $3
# s34 $3
# s30 $3
# s26 $17
# s25 $18
# s21 $3
# s19 $8
# s18 $9
# s17 $3
# s16 $8
# s13 $17
# s12 $3
# s11 $3
# s10 $3
# s9 $8
# s8 $3
# s7 $3
#Interference Graph
#  s1
#! $5 $6 $7 $31 s2 s3 s4 s6 s7 s8 s9 s10 s11 s34 s35 
#= $4 
#  s2
#! $6 $7 $31 s1 s3 s4 s6 s7 s8 s9 s10 s11 s12 s34 
#= $5 
#  s3
#! $4 $5 $7 $31 s1 s2 s4 s6 s7 s8 s9 s10 s11 s12 s13 s14 
#! s15 s25 s26 s27 s28 s34 s35 s36 
#= $6 
#  s4
#! $4 $5 $6 $31 s1 s2 s3 s6 s7 s8 s12 s13 s14 s15 s25 s26 
#! s27 s28 s34 s35 s36 
#= $7 
#  s6
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s7 s8 s9 s10 s11 s12 s13 s14 s16 s17 s18 
#! s19 s25 s26 s27 s34 s35 s36 
#= s15 s28 
#  s7
#! s1 s2 s3 s4 s6 
#  s8
#! s1 s2 s3 s4 s6 
#  s9
#! s1 s2 s3 s6 s10 
#  s10
#! s1 s2 s3 s6 s9 
#  s11
#! s1 s2 s3 s6 
#  s12
#! s2 s3 s4 s6 
#  s13
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s3 s4 s6 s14 s15 s36 
#  s14
#! s3 s4 s6 s13 s15 
#= $4 
#  s15
#! $4 s3 s4 s13 s14 
#= $5 s6 
#  s16
#! s6 s17 
#  s17
#! s6 s16 
#  s18
#! s6 s19 s21 
#  s19
#! s6 s18 s21 
#  s21
#! s18 s19 
#  s25
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s3 s4 s6 s26 s27 s28 s30 
#  s26
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s3 s4 s6 s25 s27 s28 s30 
#  s27
#! s3 s4 s6 s25 s26 s28 
#= $4 
#  s28
#! $4 s3 s4 s25 s26 s27 
#= $5 s6 
#  s30
#! s25 s26 
#  s34
#! s1 s2 s3 s4 s6 
#  s35
#! s1 s3 s4 s6 
#  s36
#! s3 s4 s6 s13 
#CFG
#1 2 10
#2 3 13
#3 4 5
#4
#5 6 18
#6 7
#7 8 9
#8
#9
#10 11
#11 12
#12
#13 14 15
#14
#15 16 17
#16
#17 6 18
#18 19 20
#19
#20 11
#---BB1---
# $4 $5 $6 $7 $31 
	move	s1,$4
	move	s2,$5
	move	s3,$6
	move	s4,$7
	move	s5,$31
	addiu	$sp,$sp,-32
	move	s6,s3
	beq	s2,$0,$L28
	nop
#---BB2---
# s1 s2 s4 s6 
	li	s3,2097152			# 0x200000
	ori	s7,s3,0xc49b
	slt	s8,s2,s7
	beq	s8,$0,$L29
	nop
#---BB3---
# s1 s2 s3 s6 
	sll	s9,s1,2
	sll	s10,s1,7
	subu	s11,s10,s9
	addu	s4,s11,s1
	sll	s12,s4,3
	bne	s2,$0,1f
	div	$0,s12,s2
#---BB4---
# 
	break	7
1:
#---BB5---
# s3 s4 s6 
	mflo	s13
	bgez	s13,$L35
	nop
$L31:
#---BB6---
# s3 s4 s6 s13 
	li	s14,45			# 0x2d
	move	s15,s6
	move	$4,s14
	move	$5,s15
	move	$6,s3
	move	$7,s4
	jal	_IO_putc
	nop
#---BB7---
# s6 s13 
	subu	s16,$0,s13
	li	s17,10			# 0xa
	bne	s17,$0,1f
	div	$0,s16,s17
#---BB8---
# 
	break	7
1:
#---BB9---
# s6 
	mfhi	s18
	mflo	s19
	move	s20,s6
	lui	s21,%hi($LC0)
	addiu	s22,s21,%lo($LC0)
	move	s23,s19
	move	s24,s18
	addiu	$sp,$sp,32
	j	fprintf
	nop
$L28:
#---BB10---
# s3 s4 s6 
	move	s25,$0
	move	s26,$0
$L32:
#---BB11---
# s3 s4 s6 s25 s26 
	li	s27,32			# 0x20
	move	s28,s6
	move	$4,s27
	move	$5,s28
	move	$6,s3
	move	$7,s4
	jal	_IO_putc
	nop
#---BB12---
# s6 s25 s26 
	move	s29,s6
	lui	s30,%hi($LC0)
	addiu	s31,s30,%lo($LC0)
	move	s32,s25
	move	s33,s26
	addiu	$sp,$sp,32
	j	fprintf
	nop
$L29:
#---BB13---
# s1 s2 s3 s4 s6 
	li	s34,1000			# 0x3e8
	bne	s34,$0,1f
	div	$0,s2,s34
#---BB14---
# 
	break	7
1:
#---BB15---
# s1 s3 s4 s6 
	mflo	s35
	bne	s35,$0,1f
	div	$0,s1,s35
#---BB16---
# 
	break	7
1:
#---BB17---
# s3 s4 s6 
	mflo	s13
	bltz	s13,$L31
	nop
$L35:
#---BB18---
# s3 s4 s6 s13 
	li	s36,10			# 0xa
	bne	s36,$0,1f
	div	$0,s13,s36
#---BB19---
# 
	break	7
1:
#---BB20---
# s3 s4 s6 
	mfhi	s26
	mflo	s25
	j	$L32
	nop
	.set	macro
	.set	reorder
	.end	display_ratio
	.size	display_ratio, .-display_ratio
	.section	.rodata.str1.4
	.align	2
$LC1:
	.ascii	"%s: %s: warning: %s%s\012\000"
	.text
	.align	2
	.globl	warn
	.set	nomips16
	.ent	warn
warn:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 24, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s12 $7
# s10 $6
# s9 $5
# s7 $4
# s4 $2
# s2 $5
# s1 $4
# s3 $16
# s11 $3
# s8 $3
# s6 $3
# s5 $3
#Interference Graph
#  s1
#! $5 $31 s2 s3 s4 
#= $4 
#  s2
#! $31 s1 s3 s4 
#= $5 
#  s3
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s4 s5 s6 s7 s8 s9 s10 s11 s12 
#  s4
#! s1 s2 s3 s5 s6 
#= $2 
#  s5
#! s3 s4 
#  s6
#! s3 s4 
#  s7
#! s3 s8 s9 s10 s11 s12 
#= $4 
#  s8
#! s3 s7 
#  s9
#! $4 s3 s7 s10 s11 s12 
#= $5 
#  s10
#! $4 $5 s3 s7 s9 s11 s12 
#= $6 
#  s11
#! s3 s7 s9 s10 
#  s12
#! $4 $5 $6 s3 s7 s9 s10 
#= $7 
#CFG
#1 2 5
#2 3 4
#3 4
#4
#5 6
#6 2
#---BB1---
# $4 $5 $31 
	move	s1,$4
	move	s2,$5
	move	s3,$31
	addiu	$sp,$sp,-32
	lw	s4,%gp_rel(quiet)($28)
	nop
	beq	s4,$0,$L40
	nop
$L37:
#---BB2---
# s3 s4 
	lw	s5,%gp_rel(exit_code)($28)
	nop
	bne	s5,$0,$L39
	nop
#---BB3---
# s3 s4 
	li	s6,2			# 0x2
	sw	s6,%gp_rel(exit_code)($28)
$L39:
#---BB4---
# s3 s4 
	addiu	$sp,$sp,32
	move	$2,s4
	j	s3
	nop
$L40:
#---BB5---
# s1 s2 s3 
	sw	s1,16($sp)
	sw	s2,20($sp)
	lw	s7,%gp_rel(stderr)($28)
	lui	s8,%hi($LC1)
	addiu	s9,s8,%lo($LC1)
	lw	s10,%gp_rel(progname)($28)
	lui	s11,%hi(ifname)
	addiu	s12,s11,%lo(ifname)
	move	$4,s7
	move	$5,s9
	move	$6,s10
	move	$7,s12
	jal	fprintf
	nop
#---BB6---
# $2 s3 
	move	s4,$2
	j	$L37
	nop
	.set	macro
	.set	reorder
	.end	warn
	.size	warn, .-warn
	.section	.rodata.str1.4
	.align	2
$LC2:
	.ascii	"\012%s: \000"
	.text
	.align	2
	.globl	write_error
	.set	nomips16
	.ent	write_error
write_error:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s8 $4
# s6 $6
# s5 $5
# s3 $4
# s1 $7
# s7 $3
# s4 $3
#Interference Graph
#  s1
#! $4 $5 $6 $31 s3 s4 s5 s6 
#= $7 
#  s3
#! s1 s4 s5 s6 
#= $4 
#  s4
#! s1 s3 
#  s5
#! $4 s1 s3 s6 
#= $5 
#  s6
#! $4 $5 s1 s3 s5 
#= $6 
#  s7
#  s8
#= $4 
#CFG
#1 2
#2 3
#3
#---BB1---
# $7 $31 
	move	s1,$7
	move	s2,$31
	addiu	$sp,$sp,-24
	lw	s3,%gp_rel(stderr)($28)
	lui	s4,%hi($LC2)
	addiu	s5,s4,%lo($LC2)
	lw	s6,%gp_rel(progname)($28)
	move	$4,s3
	move	$5,s5
	move	$6,s6
	move	$7,s1
	jal	fprintf
	nop
#---BB2---
# 
	lui	s7,%hi(ofname)
	addiu	s8,s7,%lo(ofname)
	move	$4,s8
	jal	perror
	nop
#---BB3---
# 
	addiu	$sp,$sp,24
	j	abort_gzip
	nop
	.set	macro
	.set	reorder
	.end	write_error
	.size	write_error, .-write_error
	.section	.rodata.str1.4
	.align	2
$LC3:
	.ascii	"\012%s: %s: %s\012\000"
	.text
	.align	2
	.globl	error
	.set	nomips16
	.ent	error
error:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 24, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s8 $7
# s6 $6
# s5 $5
# s3 $4
# s1 $4
# s7 $3
# s4 $3
#Interference Graph
#  s1
#! $31 
#= $4 
#  s3
#! s4 s5 s6 s7 s8 
#= $4 
#  s4
#! s3 
#  s5
#! $4 s3 s6 s7 s8 
#= $5 
#  s6
#! $4 $5 s3 s5 s7 s8 
#= $6 
#  s7
#! s3 s5 s6 
#  s8
#! $4 $5 $6 s3 s5 s6 
#= $7 
#CFG
#1 2
#2
#---BB1---
# $4 $31 
	move	s1,$4
	move	s2,$31
	addiu	$sp,$sp,-32
	sw	s1,16($sp)
	lw	s3,%gp_rel(stderr)($28)
	lui	s4,%hi($LC3)
	addiu	s5,s4,%lo($LC3)
	lw	s6,%gp_rel(progname)($28)
	lui	s7,%hi(ifname)
	addiu	s8,s7,%lo(ifname)
	move	$4,s3
	move	$5,s5
	move	$6,s6
	move	$7,s8
	jal	fprintf
	nop
#---BB2---
# 
	addiu	$sp,$sp,32
	j	abort_gzip
	nop
	.set	macro
	.set	reorder
	.end	error
	.size	error, .-error
	.section	.rodata.str1.4
	.align	2
$LC4:
	.ascii	"out of memory\000"
	.text
	.align	2
	.globl	xmalloc
	.set	nomips16
	.ent	xmalloc
xmalloc:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s10 $4
# s4 $7
# s3 $6
# s2 $5
# s1 $4
# s6 s7 s8 $16
# s5 $17
# s9 $3
#Interference Graph
#  s1
#! $5 $6 $7 $31 s2 s3 s4 s5 
#= $4 
#  s2
#! $4 $6 $7 $31 s1 s3 s4 s5 
#= $5 
#  s3
#! $4 $5 $7 $31 s1 s2 s4 s5 
#= $6 
#  s4
#! $4 $5 $6 $31 s1 s2 s3 s5 
#= $7 
#  s5
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s6 s7 s8 s9 s10 
#  s6
#! s5 
#= $2 s7 
#  s7
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s5 s9 s10 
#= s6 s8 
#  s8
#! s5 
#= $2 s7 
#  s9
#! s5 s7 
#  s10
#! s5 s7 
#= $4 
#CFG
#1 2
#2 3 4
#3
#4 5
#5 3
#---BB1---
# $4 $5 $6 $7 $31 
	move	s1,$4
	move	s2,$5
	move	s3,$6
	move	s4,$7
	move	s5,$31
	addiu	$sp,$sp,-24
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	malloc
	nop
#---BB2---
# $2 s5 
	move	s6,$2
	move	s7,s6
	beq	s6,$0,$L48
	nop
$L46:
#---BB3---
# s5 s7 
	move	s8,s7
	addiu	$sp,$sp,24
	move	$2,s8
	j	s5
	nop
$L48:
#---BB4---
# s5 s7 
	lui	s9,%hi($LC4)
	addiu	s10,s9,%lo($LC4)
	move	$4,s10
	jal	error
	nop
#---BB5---
# s5 s7 
	j	$L46
	nop
	.set	macro
	.set	reorder
	.end	xmalloc
	.size	xmalloc, .-xmalloc
	.section	.rodata.str1.4
	.align	2
$LC5:
	.ascii	"%s: unexpected end of file\012\000"
	.text
	.align	2
	.globl	read_error
	.set	nomips16
	.ent	read_error
read_error:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s15 $4
# s13 $6
# s11 $5
# s9 $4
# s7 $2
# s6 $6
# s5 $5
# s3 $4
# s1 $7
# s14 $3
# s12 $3
# s10 $3
# s8 $3
# s4 $3
#Interference Graph
#  s1
#! $4 $5 $6 $31 s3 s4 s5 s6 
#= $7 
#  s3
#! s1 s4 s5 s6 
#= $4 
#  s4
#! s1 s3 
#  s5
#! $4 s1 s3 s6 
#= $5 
#  s6
#! $4 $5 s1 s3 s5 
#= $6 
#  s7
#= $2 
#  s8
#  s9
#! s10 s11 s12 s13 
#= $4 
#  s10
#! s9 
#  s11
#! $4 s9 s12 s13 
#= $5 
#  s12
#! s9 s11 
#  s13
#! $4 $5 s9 s11 
#= $6 
#  s14
#  s15
#= $4 
#CFG
#1 2
#2 3
#3 4 6
#4 5
#5
#6 7
#7
#---BB1---
# $7 $31 
	move	s1,$7
	move	s2,$31
	addiu	$sp,$sp,-24
	lw	s3,%gp_rel(stderr)($28)
	lui	s4,%hi($LC2)
	addiu	s5,s4,%lo($LC2)
	lw	s6,%gp_rel(progname)($28)
	move	$4,s3
	move	$5,s5
	move	$6,s6
	move	$7,s1
	jal	fprintf
	nop
#---BB2---
# 
	jal	__errno_location
	nop
#---BB3---
# $2 
	move	s7,$2
	lw	s8,0(s7)
	nop
	bne	s8,$0,$L53
	nop
#---BB4---
# 
	lw	s9,%gp_rel(stderr)($28)
	lui	s10,%hi($LC5)
	addiu	s11,s10,%lo($LC5)
	lui	s12,%hi(ifname)
	addiu	s13,s12,%lo(ifname)
	move	$4,s9
	move	$5,s11
	move	$6,s13
	jal	fprintf
	nop
#---BB5---
# 
	addiu	$sp,$sp,24
	j	abort_gzip
	nop
$L53:
#---BB6---
# 
	lui	s14,%hi(ifname)
	addiu	s15,s14,%lo(ifname)
	move	$4,s15
	jal	perror
	nop
#---BB7---
# 
	addiu	$sp,$sp,24
	j	abort_gzip
	nop
	.set	macro
	.set	reorder
	.end	read_error
	.size	read_error, .-read_error
	.align	2
	.globl	make_simple_name
	.set	nomips16
	.ent	make_simple_name
make_simple_name:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s7 $2
# s6 $5
# s3 $7
# s2 $6
# s1 s5 $16
# s42 $3
# s4 $17
# s41 $3
# s40 $3
# s39 $3
# s38 $3
# s37 $3
# s36 $3
# s35 $3
# s34 $3
# s33 $3
# s32 $3
# s27 $8
# s10 $9
# s9 $10
# s31 $3
# s30 $3
# s29 $3
# s28 $3
# s26 $3
# s25 $3
# s24 $3
# s23 $3
# s22 $3
# s21 $3
# s20 $3
# s14 $11
# s19 $3
# s18 $3
# s17 $3
# s16 $3
# s15 $3
# s13 $8
# s12 $3
# s11 $3
# s8 $12
#Interference Graph
#  s1
#! $6 $7 $31 s2 s3 s4 s6 
#= $4 s5 
#  s2
#! $4 $5 $7 $31 s1 s3 s4 s5 s6 
#= $6 
#  s3
#! $4 $5 $6 $31 s1 s2 s4 s5 s6 
#= $7 
#  s4
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 
#! s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 
#  s5
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s2 s3 s4 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 
#! s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 
#! s34 s35 s36 s37 s38 s39 s40 s41 s42 
#= s1 
#  s6
#! $4 s1 s2 s3 s4 s5 
#= $5 
#  s7
#! s4 s5 s8 s9 s10 s13 s14 s15 s26 s27 s28 s29 s30 s31 s32 s33 
#! s34 s35 s36 s37 s38 s39 s40 s41 s42 
#= $2 
#  s8
#! s4 s5 s7 s9 s10 s11 s12 s13 s14 
#  s9
#! s4 s5 s7 s8 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 
#! s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 
#! s38 s39 s40 s41 s42 
#  s10
#! s4 s5 s7 s8 s9 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 
#! s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 
#! s38 s39 s40 s41 s42 
#  s11
#! s4 s5 s8 s9 s10 
#  s12
#! s4 s5 s8 s9 s10 
#  s13
#! s4 s5 s7 s8 s9 s10 s14 s15 s16 s17 s18 s19 s20 
#  s14
#! s4 s5 s7 s8 s9 s10 s13 s15 s16 s17 s18 s19 s20 s21 s22 s23 
#! s24 s25 s26 s27 s28 s35 s42 
#  s15
#! s4 s5 s7 s9 s10 s13 s14 
#  s16
#! s4 s5 s9 s10 s13 s14 
#  s17
#! s4 s5 s9 s10 s13 s14 
#  s18
#! s4 s5 s9 s10 s13 s14 
#  s19
#! s4 s5 s9 s10 s13 s14 
#  s20
#! s4 s5 s9 s10 s13 s14 
#  s21
#! s4 s5 s9 s10 s14 
#  s22
#! s4 s5 s9 s10 s14 
#  s23
#! s4 s5 s9 s10 s14 
#  s24
#! s4 s5 s9 s10 s14 
#  s25
#! s4 s5 s9 s10 s14 
#  s26
#! s4 s5 s7 s9 s10 s14 
#  s27
#! s4 s5 s7 s9 s10 s14 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 
#! s38 s39 s40 s41 s42 
#  s28
#! s4 s5 s7 s9 s10 s14 s27 
#  s29
#! s4 s5 s7 s9 s10 s27 
#  s30
#! s4 s5 s7 s9 s10 s27 
#  s31
#! s4 s5 s7 s9 s10 s27 
#  s32
#! s4 s5 s7 s9 s10 s27 
#  s33
#! s4 s5 s7 s9 s10 s27 
#  s34
#! s4 s5 s7 s9 s10 s27 
#  s35
#! s4 s5 s7 s9 s10 s14 s27 
#  s36
#! s4 s5 s7 s9 s10 s27 
#  s37
#! s4 s5 s7 s9 s10 s27 
#  s38
#! s4 s5 s7 s9 s10 s27 
#  s39
#! s4 s5 s7 s9 s10 s27 
#  s40
#! s4 s5 s7 s9 s10 s27 
#  s41
#! s4 s5 s7 s9 s10 s27 
#  s42
#! s4 s5 s7 s9 s10 s14 s27 
#CFG
#1 2
#2 3 31
#3 4 47
#4 5 32
#5 6 31
#6 7 22
#7 8 20
#8 9 19
#9 10 18
#10 11 17
#11 12 15
#12 13 14
#13 14 35
#14 15 34
#15 16 17
#16 17
#17 18 38
#18 19 37
#19 20 36
#20 21 33
#21 22 31
#22 23 39
#23 24 40
#24 25 41
#25 26 42
#26 27 43
#27 28 44
#28 29 45
#29 21 30
#30 22 31
#31
#32 5
#33 21
#34 15
#35 14
#36 20
#37 19
#38 18
#39 24 40
#40 25 41
#41 26 42
#42 27 43
#43 28 44
#44 29 45
#45 21 46
#46 30
#47 4
#---BB1---
# $4 $6 $7 $31 
	move	s1,$4
	move	s2,$6
	move	s3,$7
	move	s4,$31
	addiu	$sp,$sp,-24
	move	s5,s1
	li	s6,46			# 0x2e
	move	$4,s1
	move	$5,s6
	move	$6,s2
	move	$7,s3
	jal	strrchr
	nop
#---BB2---
# $2 s4 s5 
	move	s7,$2
	move	s8,s7
	beq	s7,$0,$L58
	nop
#---BB3---
# s4 s5 s7 s8 
	beq	s7,s5,$L113
	nop
$L56:
#---BB4---
# s4 s5 s8 
	li	s9,46			# 0x2e
	li	s10,95
	subu	s11,s5,s8
	nor	s12,$0,s11
	andi	s13,s12,0x7
	addiu	s14,s8,-1
	lb	s7,-1(s8)
	nop
	beq	s7,s9,$L114
	nop
$L61:
#---BB5---
# s4 s5 s7 s9 s10 s13 s14 
	beq	s14,s5,$L58
	nop
#---BB6---
# s4 s5 s7 s9 s10 s13 s14 
	beq	s13,$0,$L59
	nop
#---BB7---
# s4 s5 s7 s9 s10 s13 s14 
	li	s15,1			# 0x1
	beq	s13,s15,$L100
	nop
#---BB8---
# s4 s5 s9 s10 s13 s14 
	li	s16,2			# 0x2
	beq	s13,s16,$L101
	nop
#---BB9---
# s4 s5 s9 s10 s13 s14 
	li	s17,3			# 0x3
	beq	s13,s17,$L102
	nop
#---BB10---
# s4 s5 s9 s10 s13 s14 
	li	s18,4			# 0x4
	beq	s13,s18,$L103
	nop
#---BB11---
# s4 s5 s9 s10 s13 s14 
	li	s19,5			# 0x5
	beq	s13,s19,$L104
	nop
#---BB12---
# s4 s5 s9 s10 s13 s14 
	li	s20,6			# 0x6
	beq	s13,s20,$L105
	nop
#---BB13---
# s4 s5 s9 s10 s14 
	addiu	s14,s14,-1
	lb	s21,0(s14)
	nop
	beq	s21,s9,$L115
	nop
$L105:
#---BB14---
# s4 s5 s9 s10 s14 
	addiu	s14,s14,-1
	lb	s22,0(s14)
	nop
	beq	s22,s9,$L116
	nop
$L104:
#---BB15---
# s4 s5 s9 s10 s14 
	addiu	s14,s14,-1
	lb	s23,0(s14)
	nop
	bne	s23,s9,$L103
	nop
#---BB16---
# s4 s5 s9 s10 s14 
	sb	s10,0(s14)
$L103:
#---BB17---
# s4 s5 s9 s10 s14 
	addiu	s14,s14,-1
	lb	s24,0(s14)
	nop
	beq	s24,s9,$L117
	nop
$L102:
#---BB18---
# s4 s5 s9 s10 s14 
	addiu	s14,s14,-1
	lb	s25,0(s14)
	nop
	beq	s25,s9,$L118
	nop
$L101:
#---BB19---
# s4 s5 s9 s10 s14 
	addiu	s14,s14,-1
	lb	s7,0(s14)
	nop
	beq	s7,s9,$L119
	nop
$L100:
#---BB20---
# s4 s5 s7 s9 s10 s14 
	addiu	s14,s14,-1
	lb	s26,0(s14)
	nop
	beq	s26,s9,$L120
	nop
$L96:
#---BB21---
# s4 s5 s7 s9 s10 s14 
	beq	s14,s5,$L58
	nop
$L59:
#---BB22---
# s4 s5 s7 s9 s10 s14 
	addiu	s27,s14,-1
	lb	s28,-1(s14)
	nop
	beq	s28,s9,$L121
	nop
#---BB23---
# s4 s5 s7 s9 s10 s27 
	lb	s29,-1(s27)
	nop
	beq	s29,s9,$L122
	nop
$L106:
#---BB24---
# s4 s5 s7 s9 s10 s27 
	lb	s30,-2(s27)
	nop
	beq	s30,s9,$L123
	nop
$L107:
#---BB25---
# s4 s5 s7 s9 s10 s27 
	lb	s31,-3(s27)
	nop
	beq	s31,s9,$L124
	nop
$L108:
#---BB26---
# s4 s5 s7 s9 s10 s27 
	lb	s32,-4(s27)
	nop
	beq	s32,s9,$L125
	nop
$L109:
#---BB27---
# s4 s5 s7 s9 s10 s27 
	lb	s33,-5(s27)
	nop
	beq	s33,s9,$L126
	nop
$L110:
#---BB28---
# s4 s5 s7 s9 s10 s27 
	lb	s34,-6(s27)
	nop
	beq	s34,s9,$L127
	nop
$L111:
#---BB29---
# s4 s5 s7 s9 s10 s27 
	addiu	s14,s27,-7
	lb	s35,-7(s27)
	nop
	bne	s35,s9,$L96
	nop
$L128:
#---BB30---
# s4 s5 s7 s9 s10 s14 s27 
	sb	s10,-7(s27)
	bne	s14,s5,$L59
	nop
$L58:
#---BB31---
# s4 s7 
	addiu	$sp,$sp,24
	move	$2,s7
	j	s4
	nop
$L114:
#---BB32---
# s4 s5 s7 s8 s9 s10 s13 s14 
	sb	s10,-1(s8)
	j	$L61
	nop
$L120:
#---BB33---
# s4 s5 s7 s9 s10 s14 
	sb	s10,0(s14)
	j	$L96
	nop
$L116:
#---BB34---
# s4 s5 s9 s10 s14 
	sb	s10,0(s14)
	j	$L104
	nop
$L115:
#---BB35---
# s4 s5 s9 s10 s14 
	sb	s10,0(s14)
	j	$L105
	nop
$L119:
#---BB36---
# s4 s5 s7 s9 s10 s14 
	sb	s10,0(s14)
	j	$L100
	nop
$L118:
#---BB37---
# s4 s5 s9 s10 s14 
	sb	s10,0(s14)
	j	$L101
	nop
$L117:
#---BB38---
# s4 s5 s9 s10 s14 
	sb	s10,0(s14)
	j	$L102
	nop
$L121:
#---BB39---
# s4 s5 s7 s9 s10 s14 s27 
	sb	s10,-1(s14)
	lb	s36,-1(s27)
	nop
	bne	s36,s9,$L106
	nop
$L122:
#---BB40---
# s4 s5 s7 s9 s10 s27 
	sb	s10,-1(s27)
	lb	s37,-2(s27)
	nop
	bne	s37,s9,$L107
	nop
$L123:
#---BB41---
# s4 s5 s7 s9 s10 s27 
	sb	s10,-2(s27)
	lb	s38,-3(s27)
	nop
	bne	s38,s9,$L108
	nop
$L124:
#---BB42---
# s4 s5 s7 s9 s10 s27 
	sb	s10,-3(s27)
	lb	s39,-4(s27)
	nop
	bne	s39,s9,$L109
	nop
$L125:
#---BB43---
# s4 s5 s7 s9 s10 s27 
	sb	s10,-4(s27)
	lb	s40,-5(s27)
	nop
	bne	s40,s9,$L110
	nop
$L126:
#---BB44---
# s4 s5 s7 s9 s10 s27 
	sb	s10,-5(s27)
	lb	s41,-6(s27)
	nop
	bne	s41,s9,$L111
	nop
$L127:
#---BB45---
# s4 s5 s7 s9 s10 s27 
	sb	s10,-6(s27)
	addiu	s14,s27,-7
	lb	s42,-7(s27)
	nop
	bne	s42,s9,$L96
	nop
#---BB46---
# s4 s5 s7 s9 s10 s14 s27 
	j	$L128
	nop
$L113:
#---BB47---
# s4 s5 s7 
	addiu	s8,s7,1
	j	$L56
	nop
	.set	macro
	.set	reorder
	.end	make_simple_name
	.size	make_simple_name, .-make_simple_name
	.align	2
	.globl	basename
	.set	nomips16
	.ent	basename
basename:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s7 $2
# s6 $5
# s3 $7
# s2 $6
# s1 s5 s8 $16
# s4 $17
#Interference Graph
#  s1
#! $6 $7 $31 s2 s3 s4 s6 
#= $4 s5 
#  s2
#! $4 $5 $7 $31 s1 s3 s4 s5 s6 
#= $6 
#  s3
#! $4 $5 $6 $31 s1 s2 s4 s5 s6 
#= $7 
#  s4
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s5 s6 s7 s8 
#  s5
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s2 s3 s4 s6 s7 
#= s1 s8 
#  s6
#! $4 s1 s2 s3 s4 s5 
#= $5 
#  s7
#! s4 s5 
#= $2 
#  s8
#! s4 
#= $2 s5 
#CFG
#1 2
#2 3 4
#3 4
#4
#---BB1---
# $4 $6 $7 $31 
	move	s1,$4
	move	s2,$6
	move	s3,$7
	move	s4,$31
	addiu	$sp,$sp,-24
	move	s5,s1
	li	s6,47			# 0x2f
	move	$4,s1
	move	$5,s6
	move	$6,s2
	move	$7,s3
	jal	strrchr
	nop
#---BB2---
# $2 s4 s5 
	move	s7,$2
	beq	s7,$0,$L130
	nop
#---BB3---
# s4 s7 
	addiu	s5,s7,1
$L130:
#---BB4---
# s4 s5 
	move	s8,s5
	addiu	$sp,$sp,24
	move	$2,s8
	j	s4
	nop
	.set	macro
	.set	reorder
	.end	basename
	.size	basename, .-basename
	.align	2
	.globl	strlwr
	.set	nomips16
	.ent	strlwr
strlwr:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s8 s9 $2
# s4 $7
# s3 $6
# s2 $5
# s7 $16
# s5 $17
# s1 s6 s18 $18
# s17 $3
# s16 $3
# s15 $3
# s14 $3
# s13 $3
# s12 $3
# s11 $8
# s10 $9
#Interference Graph
#  s1
#! $5 $6 $7 $31 s2 s3 s4 s5 s7 
#= $4 s6 
#  s2
#! $4 $6 $7 $31 s1 s3 s4 s5 s6 s7 
#= $5 
#  s3
#! $4 $5 $7 $31 s1 s2 s4 s5 s6 s7 
#= $6 
#  s4
#! $4 $5 $6 $31 s1 s2 s3 s5 s6 s7 
#= $7 
#  s5
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 
#  s6
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s2 s3 s4 s5 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 
#= s1 s18 
#  s7
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s5 s6 s8 s9 s10 s11 s12 s13 s14 s15 
#  s8
#! s5 s6 s7 
#= $2 s9 
#  s9
#! s5 s6 s7 s10 s11 s12 s13 s14 s15 s16 s17 
#= s8 
#  s10
#! s5 s6 s7 s9 s11 s12 s13 s14 s15 s16 s17 
#  s11
#! s5 s6 s7 s9 s10 s12 
#  s12
#! s5 s6 s7 s9 s10 s11 
#  s13
#! s5 s6 s7 s9 s10 
#  s14
#! s5 s6 s7 s9 s10 
#  s15
#! s5 s6 s7 s9 s10 
#  s16
#! s5 s6 s9 s10 
#  s17
#! s5 s6 s9 s10 
#  s18
#! s5 
#= $2 s6 
#CFG
#1 2 7
#2 3
#3 4
#4 5 6
#5 6
#6 4 7
#7
#---BB1---
# $4 $5 $6 $7 $31 
	move	s1,$4
	move	s2,$5
	move	s3,$6
	move	s4,$7
	move	s5,$31
	addiu	$sp,$sp,-32
	move	s6,s1
	lb	s7,0(s1)
	nop
	beq	s7,$0,$L133
	nop
#---BB2---
# s1 s2 s3 s4 s5 s6 s7 
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	__ctype_b_loc
	nop
#---BB3---
# $2 s5 s6 s7 
	move	s8,$2
	move	s9,s8
	move	s10,s6
$L135:
#---BB4---
# s5 s6 s7 s9 s10 
	lw	s11,0(s9)
	sll	s12,s7,1
	addu	s13,s11,s12
	lhu	s14,0(s13)
	nop
	andi	s15,s14,0x1
	beq	s15,$0,$L134
	nop
#---BB5---
# s5 s6 s7 s9 s10 
	addiu	s16,s7,32
	sll	s17,s16,24
	sra	s7,s17,24
$L134:
#---BB6---
# s5 s6 s7 s9 s10 
	sb	s7,0(s10)
	addiu	s10,s10,1
	lb	s7,0(s10)
	nop
	bne	s7,$0,$L135
	nop
$L133:
#---BB7---
# s5 s6 
	move	s18,s6
	addiu	$sp,$sp,32
	move	$2,s18
	j	s5
	nop
	.set	macro
	.set	reorder
	.end	strlwr
	.size	strlwr, .-strlwr
	.align	2
	.globl	fill_inbuf
	.set	nomips16
	.ent	fill_inbuf
fill_inbuf:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s24 $2
# s17 $4
# s1 s6 $16
# s20 $17
# s19 $18
# s11 $19
# s5 $20
# s9 $21
# s8 $22
# s15 s16 $2
# s14 $6
# s13 $5
# s12 $4
# s7 $2
# s4 $7
# s3 $6
# s2 $5
# s23 $3
# s22 $3
# s21 $3
# s18 $3
# s10 $8
#Interference Graph
#  s1
#! $5 $6 $7 $31 s2 s3 s4 s5 
#= $4 s6 
#  s2
#! $4 $6 $7 $31 s1 s3 s4 s5 s6 
#= $5 
#  s3
#! $4 $5 $7 $31 s1 s2 s4 s5 s6 
#= $6 
#  s4
#! $4 $5 $6 $31 s1 s2 s3 s5 s6 
#= $7 
#  s5
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s22 s23 s24 
#  s6
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s2 s3 s4 s5 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 
#! s18 s19 s20 
#= s1 
#  s7
#! s5 s6 
#= $2 
#  s8
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s5 s6 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 
#! s22 s23 
#  s9
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s5 s6 s8 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 
#  s10
#! s5 s6 s8 s9 s11 s12 s13 s17 s19 s20 s21 
#  s11
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s5 s6 s8 s9 s10 s12 s13 s14 s15 s16 s17 s18 s19 s20 
#  s12
#! s5 s6 s8 s9 s10 s11 s13 s14 s19 s20 
#= $4 
#  s13
#! $4 s5 s6 s8 s9 s10 s11 s12 s14 s19 s20 
#= $5 
#  s14
#! $4 $5 s5 s6 s8 s9 s11 s12 s13 s19 s20 
#= $6 
#  s15
#! s5 s6 s8 s9 s11 s19 s20 
#= $2 s16 
#  s16
#! s5 s6 s8 s9 s11 s17 s18 s19 s20 
#= s15 
#  s17
#! s5 s6 s8 s9 s10 s11 s16 s18 s19 s20 
#= $4 
#  s18
#! s5 s6 s8 s9 s11 s16 s17 s19 s20 
#  s19
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s5 s6 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s20 
#  s20
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s5 s6 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 
#  s21
#! s5 s8 s10 
#  s22
#! s5 s8 
#  s23
#! s5 s8 
#  s24
#! s5 
#= $2 
#CFG
#1 2
#2 3
#3 4
#4 5 9
#5 3 6
#6 7 10
#7 8
#8
#9 6
#10 11 12
#11 8
#12 13
#13 7
#---BB1---
# $4 $5 $6 $7 $31 
	move	s1,$4
	move	s2,$5
	move	s3,$6
	move	s4,$7
	move	s5,$31
	addiu	$sp,$sp,-40
	move	s6,s1
	sw	$0,%gp_rel(insize)($28)
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	__errno_location
	nop
#---BB2---
# $2 s5 s6 
	move	s7,$2
	sw	$0,0(s7)
	lui	s8,%hi(inbuf)
	addiu	s9,s8,%lo(inbuf)
	lw	s10,%gp_rel(insize)($28)
	li	s11,32768			# 0x8000
$L140:
#---BB3---
# s5 s6 s8 s9 s10 s11 s19 s20 
	lw	s12,%gp_rel(ifd)($28)
	addu	s13,s9,s10
	subu	s14,s11,s10
	move	$4,s12
	move	$5,s13
	move	$6,s14
	jal	read
	nop
#---BB4---
# $2 s5 s6 s8 s9 s11 s19 s20 
	move	s15,$2
	move	s16,s15
	addiu	s17,s15,1
	sltu	s18,s17,2
	bne	s18,$0,$L148
	nop
#---BB5---
# s5 s6 s8 s9 s11 s16 s17 
	lw	s19,%gp_rel(insize)($28)
	nop
	addu	s10,s16,s19
	sw	s10,%gp_rel(insize)($28)
	sltu	s20,s10,s11
	bne	s20,$0,$L140
	nop
$L139:
#---BB6---
# s5 s6 s8 s10 s17 s19 s20 
	beq	s10,$0,$L149
	nop
$L141:
#---BB7---
# s5 s8 s10 
	lw	s21,%gp_rel(bytes_in)($28)
	nop
	addu	s22,s21,s10
	sw	s22,%gp_rel(bytes_in)($28)
	li	s23,1			# 0x1
	sw	s23,%gp_rel(inptr)($28)
	lbu	s24,%lo(inbuf)(s8)
$L143:
#---BB8---
# s5 s24 
	addiu	$sp,$sp,40
	move	$2,s24
	j	s5
	nop
$L148:
#---BB9---
# s5 s6 s8 s17 s19 s20 
	lw	s10,%gp_rel(insize)($28)
	j	$L139
	nop
$L149:
#---BB10---
# s5 s6 s8 s17 s19 s20 
	beq	s6,$0,$L142
	nop
#---BB11---
# s5 
	li	s24,-1			# 0xffffffffffffffff
	j	$L143
	nop
$L142:
#---BB12---
# s5 s8 s17 s19 s20 
	move	$4,s17
	move	$5,s20
	move	$6,s19
	jal	read_error
	nop
#---BB13---
# s5 s8 
	lw	s10,%gp_rel(insize)($28)
	j	$L141
	nop
	.set	macro
	.set	reorder
	.end	fill_inbuf
	.size	fill_inbuf, .-fill_inbuf
	.align	2
	.globl	write_buf
	.set	nomips16
	.ent	write_buf
write_buf:
	.frame	$sp,48,$31		# vars= 0, regs= 8/0, args= 16, gp= 0
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s18 $16
# s13 s25 $17
# s11 $18
# s9 $19
# s8 $20
# s7 $21
# s6 $22
# s5 $23
# s23 $5
# s21 $6
# s20 $5
# s19 $4
# s17 $2
# s16 $6
# s15 $5
# s14 $4
# s3 $6
# s2 $5
# s4 $7
# s1 $4
# s24 $6
# s22 $4
# s12 $3
# s10 $3
#Interference Graph
#  s1
#! $5 $6 $7 $31 s2 s3 s4 s5 
#= $4 s6 
#  s2
#! $6 $7 $31 s1 s3 s4 s5 s6 
#= $5 s7 
#  s3
#! $7 $31 s1 s2 s4 s5 s6 s7 
#= $6 s8 
#  s4
#! $4 $5 $6 $31 s1 s2 s3 s5 s6 s7 s8 s9 s10 s11 s12 s13 
#! s14 s15 s16 
#= $7 
#  s5
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s22 s23 s24 s25 
#  s6
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s2 s3 s4 s5 s7 s8 s9 s10 s11 s12 s13 s15 s16 s17 s18 
#! s20 s21 s22 s23 s24 s25 
#= s1 s14 s19 
#  s7
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s3 s4 s5 s6 s8 s9 s10 s11 s12 s13 s14 s16 s17 s18 s19 
#! s21 s22 s23 s24 s25 
#= s2 s15 s20 
#  s8
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s4 s5 s6 s7 s9 s10 s11 s12 s13 s14 s15 s17 s18 s19 s20 
#! s22 s23 s24 s25 
#= s3 s16 s21 
#  s9
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s4 s5 s6 s7 s8 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 
#! s20 s21 s22 s23 s24 s25 
#  s10
#! s4 s5 s6 s7 s8 s9 
#  s11
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s4 s5 s6 s7 s8 s9 s12 s13 s14 s15 s16 s17 s18 s19 s20 
#! s21 s22 s24 s25 
#= s23 
#  s12
#! s4 s5 s6 s7 s8 s9 s11 
#  s13
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s4 s5 s6 s7 s8 s9 s11 s14 s15 s16 s17 s18 s19 s20 s21 
#! s22 s23 s24 
#= s25 
#  s14
#! s4 s5 s7 s8 s9 s11 s13 s15 s16 
#= $4 s6 
#  s15
#! $4 s4 s5 s6 s8 s9 s11 s13 s14 s16 
#= $5 s7 
#  s16
#! $4 $5 s4 s5 s6 s7 s9 s11 s13 s14 s15 
#= $6 s8 
#  s17
#! s5 s6 s7 s8 s9 s11 s13 
#= $2 s18 
#  s18
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s5 s6 s7 s8 s9 s11 s13 s22 s23 s24 s25 
#= s17 
#  s19
#! s5 s7 s8 s9 s11 s13 s20 s21 
#= $4 s6 
#  s20
#! $4 s5 s6 s8 s9 s11 s13 s19 s21 
#= $5 s7 
#  s21
#! $4 $5 s5 s6 s7 s9 s11 s13 s19 s20 
#= $6 s8 
#  s22
#! s5 s6 s7 s8 s9 s11 s13 s18 s23 s24 
#= $4 
#  s23
#! $4 s5 s6 s7 s8 s9 s13 s18 s22 s24 
#= $5 s11 
#  s24
#! $4 $5 s5 s6 s7 s8 s9 s11 s13 s18 s22 s23 
#= $6 
#  s25
#! s5 s6 s7 s8 s9 s11 s18 
#= $4 s13 
#CFG
#1 2
#2 3 7
#3 4 8
#4 5
#5 6
#6 3 7
#7
#8 9
#9 10
#10 11
#11 5
#---BB1---
# $4 $5 $6 $7 $31 
	move	s1,$4
	move	s2,$5
	move	s3,$6
	move	s4,$7
	move	s5,$31
	addiu	$sp,$sp,-48
	move	s6,s1
	move	s7,s2
	move	s8,s3
	li	s9,-1			# 0xffffffffffffffff
	lui	s10,%hi($LC2)
	addiu	s11,s10,%lo($LC2)
	lui	s12,%hi(ofname)
	addiu	s13,s12,%lo(ofname)
	move	s14,s6
	move	s15,s7
	move	s16,s8
	move	$4,s14
	move	$5,s15
	move	$6,s16
	move	$7,s4
	jal	write
	nop
#---BB2---
# $2 s5 s6 s7 s8 s9 s11 s13 
	move	s17,$2
	move	s18,s17
	beq	s17,s8,$L155
	nop
$L153:
#---BB3---
# s5 s6 s7 s8 s9 s11 s13 s18 
	beq	s18,s9,$L156
	nop
#---BB4---
# s5 s6 s7 s8 s9 s11 s13 s18 
	subu	s8,s8,s18
	addu	s7,s7,s18
$L157:
#---BB5---
# s5 s6 s7 s8 s9 s11 s13 
	move	s19,s6
	move	s20,s7
	move	s21,s8
	move	$4,s19
	move	$5,s20
	move	$6,s21
	jal	write
	nop
#---BB6---
# $2 s5 s6 s7 s8 s9 s11 s13 
	move	s17,$2
	move	s18,s17
	bne	s17,s8,$L153
	nop
$L155:
#---BB7---
# s5 s17 
	addiu	$sp,$sp,48
	move	$2,s17
	j	s5
	nop
$L156:
#---BB8---
# s5 s6 s7 s8 s9 s11 s13 s18 
	lw	s22,%gp_rel(stderr)($28)
	move	s23,s11
	lw	s24,%gp_rel(progname)($28)
	move	$4,s22
	move	$5,s23
	move	$6,s24
	jal	fprintf
	nop
#---BB9---
# s5 s6 s7 s8 s9 s11 s13 s18 
	move	s25,s13
	move	$4,s25
	jal	perror
	nop
#---BB10---
# s5 s6 s7 s8 s9 s11 s13 s18 
	jal	abort_gzip
	nop
#---BB11---
# s5 s6 s7 s8 s9 s11 s13 s18 
	subu	s8,s8,s18
	addu	s7,s7,s18
	j	$L157
	nop
	.set	macro
	.set	reorder
	.end	write_buf
	.size	write_buf, .-write_buf
	.align	2
	.globl	copy
	.set	nomips16
	.ent	copy
copy:
	.frame	$sp,64,$31		# vars= 8, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s26 $16
# s20 $17
# s19 $18
# s13 $19
# s9 $20
# s8 $21
# s7 $22
# s1 $23
# s17 spill
# s15 spill
# s14 $19
# s6 spill
# s44 $4
# s42 $5
# s36 $2
# s34 $5
# s30 $2
# s29 $6
# s28 $5
# s27 $4
# s25 $2
# s23 $6
# s22 $5
# s24 $7
# s21 $4
# s2 $5
# s43 $6
# s41 $4
# s40 $2
# s35 $6
# s4 $7
# s3 $6
# s45 $3
# s39 $3
# s38 $3
# s37 $3
# s33 $3
# s32 $3
# s31 $8
# s18 $3
# s16 $3
# s12 $3
# s11 $3
# s10 $3
#Interference Graph
#  s1
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s2 s3 s4 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 
#! s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 
#! s34 s35 s36 s37 s41 s42 s43 s44 
#  s2
#! $4 $6 $7 $31 s1 s3 s4 s6 
#= $5 s7 
#  s3
#! $4 $5 $7 $31 s1 s2 s4 s6 s7 
#= $6 
#  s4
#! $4 $5 $6 $31 s1 s2 s3 s6 s7 
#= $7 
#  s6
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 
#! s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 
#! s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 
#  s7
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s3 s4 s6 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 
#! s19 s20 s22 s23 s24 s25 s26 s28 s29 s30 s31 s32 s33 s34 s35 s36 
#! s37 s41 s42 s43 s44 
#= s2 s21 s27 
#  s8
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s6 s7 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 
#! s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 
#! s37 s38 s41 s42 s43 s44 
#  s9
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s6 s7 s8 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 
#! s21 s22 s24 s25 s26 s27 s28 s30 s37 s38 s41 s42 s43 s44 
#= s23 s29 s36 
#  s10
#! s1 s6 s7 s8 s9 
#  s11
#! s1 s6 s7 s8 s9 
#  s12
#! s1 s6 s7 s8 s9 
#  s13
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s6 s7 s8 s9 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 
#! s25 s26 s27 s28 s29 s30 s31 s32 s33 s35 s36 s37 s41 s42 s43 s44 
#= s14 s34 
#  s14
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s6 s7 s8 s9 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 
#! s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s41 s42 s43 
#! s44 
#= s13 
#  s15
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s6 s7 s8 s9 s13 s14 s16 s17 s18 s19 s20 s21 s22 s23 
#! s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s41 s42 
#! s43 s44 
#  s16
#! s1 s6 s7 s8 s9 s13 s14 s15 
#  s17
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s6 s7 s8 s9 s13 s14 s15 s18 s19 s20 s21 s22 s23 s24 
#! s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s41 s43 s44 
#= s42 
#  s18
#! s1 s6 s7 s8 s9 s13 s14 s15 s17 
#  s19
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s6 s7 s8 s9 s13 s14 s15 s17 s20 s21 s22 s23 s24 s25 
#! s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s41 s42 s43 
#= s44 
#  s20
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 s21 s23 s24 s25 s26 
#! s27 s29 s30 s41 s42 s43 s44 
#= s22 s28 
#  s21
#! s1 s6 s8 s9 s13 s14 s15 s17 s19 s20 s22 s23 s24 
#= $4 s7 
#  s22
#! $4 s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 s21 s23 s24 
#= $5 s20 
#  s23
#! $4 $5 s1 s6 s7 s8 s13 s14 s15 s17 s19 s20 s21 s22 s24 
#= $6 s9 
#  s24
#! $4 $5 $6 s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 s20 s21 s22 
#! s23 s38 s45 
#= $7 
#  s25
#! s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 s20 
#= $2 s26 
#  s26
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 s20 s41 s42 s43 s44 
#= s25 s30 
#  s27
#! s1 s6 s8 s9 s13 s14 s15 s17 s19 s20 s28 s29 
#= $4 s7 
#  s28
#! $4 s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 s27 s29 
#= $5 s20 
#  s29
#! $4 $5 s1 s6 s7 s8 s13 s14 s15 s17 s19 s20 s27 s28 
#= $6 s9 
#  s30
#! s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 s20 
#= $2 s26 
#  s31
#! s1 s6 s7 s8 s13 s14 s15 s17 s19 s32 
#  s32
#! s1 s6 s7 s8 s13 s14 s15 s17 s19 s31 
#  s33
#! s1 s6 s7 s8 s13 s14 s15 s17 s19 
#  s34
#! $4 s1 s6 s7 s8 s14 s15 s17 s19 s35 
#= $5 s13 
#  s35
#! $4 $5 s1 s6 s7 s8 s13 s14 s15 s17 s19 s34 
#= $6 
#  s36
#! s1 s6 s7 s8 s13 s14 s15 s17 s19 
#= $2 s9 
#  s37
#! s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 
#  s38
#! s6 s8 s9 s24 
#  s39
#! s6 
#  s40
#! s6 
#= $2 
#  s41
#! s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 s20 s26 s42 s43 
#= $4 
#  s42
#! $4 s1 s6 s7 s8 s9 s13 s14 s15 s19 s20 s26 s41 s43 
#= $5 s17 
#  s43
#! $4 $5 s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 s20 s26 s41 s42 
#= $6 
#  s44
#! s1 s6 s7 s8 s9 s13 s14 s15 s17 s20 s26 
#= $4 s19 
#  s45
#! s6 s24 
#CFG
#1 2
#2 3 12
#3 4
#4 5
#5 6 10
#6 7 14
#7 8
#8 9
#9 6 10
#10 11
#11 4 12
#12 13 18
#13
#14 15
#15 16
#16 17
#17 8
#18 13 19
#19 20
#20 13
#---BB1---
# $4 $5 $6 $7 $31 
	move	s1,$4
	move	s2,$5
	move	s3,$6
	move	s4,$7
	move	s5,$fp
	move	s6,$31
	addiu	$sp,$sp,-64
	move	s7,s2
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	__errno_location
	nop
#---BB2---
# $2 s1 s6 s7 
	move	s8,$2
	sw	$0,0(s8)
	lw	s9,%gp_rel(insize)($28)
	nop
	addiu	s10,s9,-1
	sltu	s11,s10,-2
	beq	s11,$0,$L159
	nop
#---BB3---
# s1 s6 s7 s8 s9 
	lui	s12,%hi(inbuf)
	addiu	s13,s12,%lo(inbuf)
	move	s14,s13
	li	s15,-1			# 0xffffffffffffffff
	lui	s16,%hi($LC2)
	addiu	s17,s16,%lo($LC2)
	lui	s18,%hi(ofname)
	addiu	s19,s18,%lo(ofname)
$L160:
#---BB4---
# s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 s24 
	move	s20,s14
	move	s21,s7
	move	s22,s20
	move	s23,s9
	move	$4,s21
	move	$5,s22
	move	$6,s23
	move	$7,s24
	jal	write
	nop
#---BB5---
# $2 s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 s20 
	move	s25,$2
	move	s26,s25
	beq	s25,s9,$L166
	nop
$L162:
#---BB6---
# s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 s20 s26 
	beq	s26,s15,$L167
	nop
#---BB7---
# s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 s20 s26 
	subu	s9,s9,s26
	addu	s20,s20,s26
$L169:
#---BB8---
# s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 s20 
	move	s27,s7
	move	s28,s20
	move	s29,s9
	move	$4,s27
	move	$5,s28
	move	$6,s29
	jal	write
	nop
#---BB9---
# $2 s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 s20 
	move	s30,$2
	move	s26,s30
	bne	s30,s9,$L162
	nop
$L166:
#---BB10---
# s1 s6 s7 s8 s13 s14 s15 s17 s19 
	lw	s31,%gp_rel(insize)($28)
	lw	s32,%gp_rel(bytes_out)($28)
	nop
	addu	s33,s32,s31
	sw	s33,%gp_rel(bytes_out)($28)
	move	s34,s13
	li	s35,32768			# 0x8000
	move	$4,s1
	move	$5,s34
	move	$6,s35
	jal	read
	nop
#---BB11---
# $2 s1 s6 s7 s8 s13 s14 s15 s17 s19 
	move	s36,$2
	move	s9,s36
	sw	s36,%gp_rel(insize)($28)
	addiu	s37,s36,-1
	sltu	s24,s37,-2
	bne	s24,$0,$L160
	nop
$L159:
#---BB12---
# s6 s8 s9 s24 
	li	s38,-1			# 0xffffffffffffffff
	beq	s9,s38,$L168
	nop
$L164:
#---BB13---
# s6 
	lw	s39,%gp_rel(bytes_out)($28)
	nop
	sw	s39,%gp_rel(bytes_in)($28)
	move	s40,$0
	addiu	$sp,$sp,64
	move	$2,s40
	j	s6
	nop
$L167:
#---BB14---
# s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 s20 s26 
	lw	s41,%gp_rel(stderr)($28)
	move	s42,s17
	lw	s43,%gp_rel(progname)($28)
	move	$4,s41
	move	$5,s42
	move	$6,s43
	jal	fprintf
	nop
#---BB15---
# s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 s20 s26 
	move	s44,s19
	move	$4,s44
	jal	perror
	nop
#---BB16---
# s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 s20 s26 
	jal	abort_gzip
	nop
#---BB17---
# s1 s6 s7 s8 s9 s13 s14 s15 s17 s19 s20 s26 
	subu	s9,s9,s26
	addu	s20,s20,s26
	j	$L169
	nop
$L168:
#---BB18---
# s6 s8 s24 
	lw	s45,0(s8)
	nop
	beq	s45,$0,$L164
	nop
#---BB19---
# s6 s24 
	move	$7,s24
	jal	read_error
	nop
#---BB20---
# s6 
	j	$L164
	nop
	.set	macro
	.set	reorder
	.end	copy
	.size	copy, .-copy
	.align	2
	.globl	flush_outbuf
	.set	nomips16
	.ent	flush_outbuf
flush_outbuf:
	.frame	$sp,48,$31		# vars= 0, regs= 8/0, args= 16, gp= 0
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s16 $16
# s12 s26 $17
# s10 $18
# s8 $19
# s7 $20
# s5 $21
# s3 $22
# s2 $23
# s24 $5
# s19 $6
# s18 $5
# s17 $4
# s15 $6
# s14 $5
# s13 $4
# s4 $2
# s25 $6
# s23 $4
# s1 $7
# s22 $3
# s21 $3
# s20 $8
# s11 $3
# s9 $3
# s6 $3
#Interference Graph
#  s1
#! $4 $5 $6 $31 s2 s3 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 
#! s15 
#= $7 
#  s2
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 
#  s3
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s16 s17 
#! s18 s23 s24 s25 s26 
#= s15 s19 
#  s4
#! s2 s3 s5 s7 s8 s10 s12 s20 s21 s22 
#= $2 s16 
#  s5
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s6 s7 s8 s9 s10 s11 s12 s14 s15 s16 s18 
#! s19 s23 s24 s25 s26 
#= s13 s17 
#  s6
#! s1 s2 s3 s5 
#  s7
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s5 s8 s9 s10 s11 s12 s13 s15 s16 s17 s19 
#! s23 s24 s25 s26 
#= s14 s18 
#  s8
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s5 s7 s9 s10 s11 s12 s13 s14 s15 s16 s17 
#! s18 s19 s23 s24 s25 s26 
#  s9
#! s1 s2 s3 s5 s7 s8 
#  s10
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s5 s7 s8 s11 s12 s13 s14 s15 s16 s17 s18 
#! s19 s23 s25 s26 
#= s24 
#  s11
#! s1 s2 s3 s5 s7 s8 s10 
#  s12
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s5 s7 s8 s10 s13 s14 s15 s16 s17 s18 s19 
#! s23 s24 s25 
#= s26 
#  s13
#! s1 s2 s3 s7 s8 s10 s12 s14 s15 
#= $4 s5 
#  s14
#! $4 s1 s2 s3 s5 s8 s10 s12 s13 s15 
#= $5 s7 
#  s15
#! $4 $5 s1 s2 s5 s7 s8 s10 s12 s13 s14 
#= $6 s3 
#  s16
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s2 s3 s5 s7 s8 s10 s12 s23 s24 s25 s26 
#= s4 
#  s17
#! s2 s3 s7 s8 s10 s12 s18 s19 
#= $4 s5 
#  s18
#! $4 s2 s3 s5 s8 s10 s12 s17 s19 
#= $5 s7 
#  s19
#! $4 $5 s2 s5 s7 s8 s10 s12 s17 s18 
#= $6 s3 
#  s20
#! s2 s4 s21 
#  s21
#! s2 s4 s20 
#  s22
#! s2 s4 
#  s23
#! s2 s3 s5 s7 s8 s10 s12 s16 s24 s25 
#= $4 
#  s24
#! $4 s2 s3 s5 s7 s8 s12 s16 s23 s25 
#= $5 s10 
#  s25
#! $4 $5 s2 s3 s5 s7 s8 s10 s12 s16 s23 s24 
#= $6 
#  s26
#! s2 s3 s5 s7 s8 s10 s16 
#= $4 s12 
#CFG
#1 2 3
#2
#3 4
#4 5 9
#5 6 10
#6 7
#7 8
#8 5 9
#9 2
#10 11
#11 12
#12 13
#13 7
#---BB1---
# $7 $31 
	move	s1,$7
	move	s2,$31
	addiu	$sp,$sp,-48
	lw	s3,%gp_rel(outcnt)($28)
	nop
	bne	s3,$0,$L176
	nop
$L175:
#---BB2---
# s2 s4 
	addiu	$sp,$sp,48
	move	$2,s4
	j	s2
	nop
$L176:
#---BB3---
# s1 s2 s3 
	lw	s5,%gp_rel(ofd)($28)
	lui	s6,%hi(outbuf)
	addiu	s7,s6,%lo(outbuf)
	li	s8,-1			# 0xffffffffffffffff
	lui	s9,%hi($LC2)
	addiu	s10,s9,%lo($LC2)
	lui	s11,%hi(ofname)
	addiu	s12,s11,%lo(ofname)
	move	s13,s5
	move	s14,s7
	move	s15,s3
	move	$4,s13
	move	$5,s14
	move	$6,s15
	move	$7,s1
	jal	write
	nop
#---BB4---
# $2 s2 s3 s5 s7 s8 s10 s12 
	move	s4,$2
	move	s16,s4
	beq	s4,s3,$L177
	nop
$L174:
#---BB5---
# s2 s3 s5 s7 s8 s10 s12 s16 
	beq	s16,s8,$L178
	nop
#---BB6---
# s2 s3 s5 s7 s8 s10 s12 s16 
	subu	s3,s3,s16
	addu	s7,s7,s16
$L179:
#---BB7---
# s2 s3 s5 s7 s8 s10 s12 
	move	s17,s5
	move	s18,s7
	move	s19,s3
	move	$4,s17
	move	$5,s18
	move	$6,s19
	jal	write
	nop
#---BB8---
# $2 s2 s3 s5 s7 s8 s10 s12 
	move	s4,$2
	move	s16,s4
	bne	s4,s3,$L174
	nop
$L177:
#---BB9---
# s2 s4 
	lw	s20,%gp_rel(outcnt)($28)
	lw	s21,%gp_rel(bytes_out)($28)
	nop
	addu	s22,s21,s20
	sw	s22,%gp_rel(bytes_out)($28)
	sw	$0,%gp_rel(outcnt)($28)
	j	$L175
	nop
$L178:
#---BB10---
# s2 s3 s5 s7 s8 s10 s12 s16 
	lw	s23,%gp_rel(stderr)($28)
	move	s24,s10
	lw	s25,%gp_rel(progname)($28)
	move	$4,s23
	move	$5,s24
	move	$6,s25
	jal	fprintf
	nop
#---BB11---
# s2 s3 s5 s7 s8 s10 s12 s16 
	move	s26,s12
	move	$4,s26
	jal	perror
	nop
#---BB12---
# s2 s3 s5 s7 s8 s10 s12 s16 
	jal	abort_gzip
	nop
#---BB13---
# s2 s3 s5 s7 s8 s10 s12 s16 
	subu	s3,s3,s16
	addu	s7,s7,s16
	j	$L179
	nop
	.set	macro
	.set	reorder
	.end	flush_outbuf
	.size	flush_outbuf, .-flush_outbuf
	.align	2
	.globl	flush_window
	.set	nomips16
	.ent	flush_window
flush_window:
	.frame	$sp,48,$31		# vars= 0, regs= 8/0, args= 16, gp= 0
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s83 $16
# s79 s90 $17
# s77 $18
# s75 $19
# s74 $20
# s73 $21
# s3 $22
# s1 $23
# s88 $5
# s86 $6
# s85 $5
# s84 $4
# s82 $6
# s81 $5
# s80 $4
# s16 $2
# s6 $3
# s2 $8
# s89 $6
# s87 $4
# s10 $7
# s78 $3
# s76 $3
# s72 $3
# s71 $3
# s70 $9
# s69 $9
# s68 $9
# s67 $9
# s66 $9
# s65 $9
# s64 $9
# s63 $10
# s62 $9
# s19 $11
# s9 $12
# s8 $13
# s61 $10
# s60 $9
# s59 $9
# s58 $9
# s57 $9
# s56 $14
# s55 $9
# s54 $10
# s53 $9
# s52 $9
# s51 $9
# s50 $9
# s49 $9
# s48 $14
# s47 $9
# s46 $10
# s45 $9
# s44 $9
# s43 $9
# s42 $9
# s41 $9
# s40 $9
# s39 $10
# s18 $14
# s38 $9
# s37 $9
# s36 $9
# s35 $9
# s34 $9
# s33 $10
# s32 $9
# s31 $9
# s30 $9
# s29 $9
# s28 $9
# s27 $10
# s26 $9
# s25 $9
# s24 $9
# s23 $9
# s22 $9
# s21 $9
# s20 $9
# s17 $9
# s15 $9
# s14 $9
# s13 $9
# s12 $9
# s11 $9
# s7 $9
# s5 $10
# s4 $11
#Interference Graph
#  s1
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 
#! s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 
#! s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 
#! s65 s66 s67 s68 s69 s70 s71 s72 s73 s74 s75 s76 s77 s78 s79 s80 
#! s81 s82 s83 s84 s85 s86 s87 s88 s89 s90 
#  s2
#! s1 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 
#! s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 
#! s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 
#! s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 s66 
#! s67 s68 s69 s70 s71 
#= s3 
#  s3
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 
#! s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 
#! s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 
#! s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 
#! s66 s67 s68 s69 s70 s73 s74 s75 s76 s77 s78 s79 s80 s81 s83 s84 
#! s85 s87 s88 s89 s90 
#= s2 s82 s86 
#  s4
#! s1 s2 s3 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#  s5
#! s1 s2 s3 s4 s6 s7 s8 s9 s10 
#  s6
#! s1 s2 s3 s4 s5 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 
#! s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 
#! s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 
#! s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 
#! s66 s67 s68 s69 s70 s73 
#= s74 
#  s7
#! s1 s2 s3 s4 s5 s6 
#  s8
#! s1 s2 s3 s4 s5 s6 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 
#! s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 
#! s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 
#! s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 s66 
#! s67 s68 s69 
#  s9
#! s1 s2 s3 s4 s5 s6 s8 s10 s11 s12 s13 s14 s15 s16 s17 s18 
#! s19 s20 s21 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 
#! s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 s52 s53 s54 s55 s56 s57 
#! s58 s59 s60 s61 s62 s63 s64 s65 s66 s67 s68 s69 
#  s10
#! $4 $5 $6 s1 s2 s3 s4 s5 s6 s8 s9 s11 s12 s13 s14 s15 
#! s16 s17 s18 s19 s20 s21 s35 s36 s37 s38 s39 s40 s63 s69 s70 s73 
#! s74 s75 s76 s77 s78 s79 s80 s81 s82 
#= $7 
#  s11
#! s1 s2 s3 s4 s6 s8 s9 s10 
#  s12
#! s1 s2 s3 s4 s6 s8 s9 s10 
#  s13
#! s1 s2 s3 s4 s6 s8 s9 s10 
#  s14
#! s1 s2 s3 s4 s6 s8 s9 s10 
#  s15
#! s1 s2 s3 s4 s6 s8 s9 s10 
#  s16
#! s1 s2 s3 s4 s6 s8 s9 s10 s17 s18 s19 s20 s29 s30 s31 s32 
#! s33 s34 s35 s36 s37 s38 s39 s40 s56 s61 s62 s63 s64 s65 s66 s67 
#! s68 s69 s70 s71 s72 s73 s74 s75 s77 s79 
#= $2 s83 
#  s17
#! s1 s2 s3 s6 s8 s9 s10 s16 
#  s18
#! s1 s2 s3 s6 s8 s9 s10 s16 s19 s20 s21 s22 s23 s24 s25 s26 
#! s27 s29 s30 s31 s32 s33 s35 s36 s37 s38 s39 s41 s42 s43 s44 s45 
#! s46 
#  s19
#! s1 s2 s3 s6 s8 s9 s10 s16 s18 s20 s21 s29 s30 s31 s32 s33 
#! s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 
#! s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 
#! s66 s67 s68 s69 
#  s20
#! s1 s2 s3 s6 s8 s9 s10 s16 s18 s19 
#  s21
#! s1 s2 s3 s6 s8 s9 s10 s18 s19 
#  s22
#! s1 s2 s3 s6 s8 s18 
#  s23
#! s1 s2 s3 s6 s8 s18 
#  s24
#! s1 s2 s3 s6 s8 s18 
#  s25
#! s1 s2 s3 s6 s8 s18 
#  s26
#! s1 s2 s3 s6 s8 s18 
#  s27
#! s1 s2 s3 s6 s8 s18 s28 
#  s28
#! s1 s2 s3 s6 s8 s27 
#  s29
#! s1 s2 s3 s6 s8 s9 s16 s18 s19 
#  s30
#! s1 s2 s3 s6 s8 s9 s16 s18 s19 
#  s31
#! s1 s2 s3 s6 s8 s9 s16 s18 s19 
#  s32
#! s1 s2 s3 s6 s8 s9 s16 s18 s19 
#  s33
#! s1 s2 s3 s6 s8 s9 s16 s18 s19 s34 
#  s34
#! s1 s2 s3 s6 s8 s9 s16 s19 s33 
#  s35
#! s1 s2 s3 s6 s8 s9 s10 s16 s18 s19 
#  s36
#! s1 s2 s3 s6 s8 s9 s10 s16 s18 s19 
#  s37
#! s1 s2 s3 s6 s8 s9 s10 s16 s18 s19 
#  s38
#! s1 s2 s3 s6 s8 s9 s10 s16 s18 s19 
#  s39
#! s1 s2 s3 s6 s8 s9 s10 s16 s18 s19 s40 
#  s40
#! s1 s2 s3 s6 s8 s9 s10 s16 s19 s39 
#  s41
#! s1 s2 s3 s6 s8 s9 s18 s19 
#  s42
#! s1 s2 s3 s6 s8 s9 s18 s19 
#  s43
#! s1 s2 s3 s6 s8 s9 s18 s19 
#  s44
#! s1 s2 s3 s6 s8 s9 s18 s19 
#  s45
#! s1 s2 s3 s6 s8 s9 s18 s19 
#  s46
#! s1 s2 s3 s6 s8 s9 s18 s19 s47 
#  s47
#! s1 s2 s3 s6 s8 s9 s19 s46 
#  s48
#! s1 s2 s3 s6 s8 s9 s19 s49 s50 s51 s52 s53 s54 
#  s49
#! s1 s2 s3 s6 s8 s9 s19 s48 
#  s50
#! s1 s2 s3 s6 s8 s9 s19 s48 
#  s51
#! s1 s2 s3 s6 s8 s9 s19 s48 
#  s52
#! s1 s2 s3 s6 s8 s9 s19 s48 
#  s53
#! s1 s2 s3 s6 s8 s9 s19 s48 
#  s54
#! s1 s2 s3 s6 s8 s9 s19 s48 s55 
#  s55
#! s1 s2 s3 s6 s8 s9 s19 s54 
#  s56
#! s1 s2 s3 s6 s8 s9 s16 s19 s57 s58 s59 s60 s61 
#  s57
#! s1 s2 s3 s6 s8 s9 s19 s56 
#  s58
#! s1 s2 s3 s6 s8 s9 s19 s56 
#  s59
#! s1 s2 s3 s6 s8 s9 s19 s56 
#  s60
#! s1 s2 s3 s6 s8 s9 s19 s56 
#  s61
#! s1 s2 s3 s6 s8 s9 s16 s19 s56 s62 
#  s62
#! s1 s2 s3 s6 s8 s9 s16 s19 s61 
#  s63
#! s1 s2 s3 s6 s8 s9 s10 s16 s19 s64 s65 s66 s67 s68 
#  s64
#! s1 s2 s3 s6 s8 s9 s16 s19 s63 
#  s65
#! s1 s2 s3 s6 s8 s9 s16 s19 s63 
#  s66
#! s1 s2 s3 s6 s8 s9 s16 s19 s63 
#  s67
#! s1 s2 s3 s6 s8 s9 s16 s19 s63 
#  s68
#! s1 s2 s3 s6 s8 s9 s16 s19 s63 
#  s69
#! s1 s2 s3 s6 s8 s9 s10 s16 s19 
#  s70
#! s1 s2 s3 s6 s10 s16 
#  s71
#! s1 s2 s16 
#  s72
#! s1 s16 
#  s73
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s3 s6 s10 s16 s74 s75 s76 s77 s78 s79 s81 s82 s83 s85 
#! s86 s87 s88 s89 s90 
#= s80 s84 
#  s74
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s3 s10 s16 s73 s75 s76 s77 s78 s79 s80 s82 s83 s84 s86 
#! s87 s88 s89 s90 
#= s6 s81 s85 
#  s75
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s3 s10 s16 s73 s74 s76 s77 s78 s79 s80 s81 s82 s83 s84 
#! s85 s86 s87 s88 s89 s90 
#  s76
#! s1 s3 s10 s73 s74 s75 
#  s77
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s3 s10 s16 s73 s74 s75 s78 s79 s80 s81 s82 s83 s84 s85 
#! s86 s87 s89 s90 
#= s88 
#  s78
#! s1 s3 s10 s73 s74 s75 s77 
#  s79
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s3 s10 s16 s73 s74 s75 s77 s80 s81 s82 s83 s84 s85 s86 
#! s87 s88 s89 
#= s90 
#  s80
#! s1 s3 s10 s74 s75 s77 s79 s81 s82 
#= $4 s73 
#  s81
#! $4 s1 s3 s10 s73 s75 s77 s79 s80 s82 
#= $5 s74 
#  s82
#! $4 $5 s1 s10 s73 s74 s75 s77 s79 s80 s81 
#= $6 s3 
#  s83
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s3 s73 s74 s75 s77 s79 s87 s88 s89 s90 
#= s16 
#  s84
#! s1 s3 s74 s75 s77 s79 s85 s86 
#= $4 s73 
#  s85
#! $4 s1 s3 s73 s75 s77 s79 s84 s86 
#= $5 s74 
#  s86
#! $4 $5 s1 s73 s74 s75 s77 s79 s84 s85 
#= $6 s3 
#  s87
#! s1 s3 s73 s74 s75 s77 s79 s83 s88 s89 
#= $4 
#  s88
#! $4 s1 s3 s73 s74 s75 s79 s83 s87 s89 
#= $5 s77 
#  s89
#! $4 $5 s1 s3 s73 s74 s75 s77 s79 s83 s87 s88 
#= $6 
#  s90
#! s1 s3 s73 s74 s75 s77 s83 
#= $4 s79 
#CFG
#1 2 12
#2 3 10
#3 4 9
#4 5 8
#5 6 7
#6 7
#7 8
#8 9 10
#9 9 10
#10 11 13
#11 12
#12
#13 14
#14 15 19
#15 16 20
#16 17
#17 18
#18 15 19
#19 11
#20 21
#21 22
#22 23
#23 17
#---BB1---
# $31 
	move	s1,$31
	addiu	$sp,$sp,-48
	lw	s2,%gp_rel(outcnt)($28)
	nop
	move	s3,s2
	beq	s2,$0,$L187
	nop
#---BB2---
# s1 s2 s3 
	lw	s4,%gp_rel(crc.2871)($28)
	lui	s5,%hi(window)
	addiu	s6,s5,%lo(window)
	lui	s7,%hi(crc_32_tab)
	addiu	s8,s7,%lo(crc_32_tab)
	addiu	s9,s2,-1
	andi	s10,s9,0x3
	lbu	s11,%lo(window)(s5)
	nop
	xor	s12,s4,s11
	andi	s13,s12,0xff
	sll	s14,s13,2
	addu	s15,s14,s8
	lw	s16,0(s15)
	srl	s17,s4,8
	xor	s18,s16,s17
	addiu	s19,s6,1
	beq	s9,$0,$L202
	nop
#---BB3---
# s1 s2 s3 s6 s8 s9 s10 s16 s18 s19 
	beq	s10,$0,$L182
	nop
#---BB4---
# s1 s2 s3 s6 s8 s9 s10 s16 s18 s19 
	li	s20,1			# 0x1
	beq	s10,s20,$L200
	nop
#---BB5---
# s1 s2 s3 s6 s8 s9 s10 s18 s19 
	li	s21,2			# 0x2
	beq	s10,s21,$L201
	nop
#---BB6---
# s1 s2 s3 s6 s8 s18 
	lbu	s22,1(s6)
	nop
	xor	s23,s18,s22
	andi	s24,s23,0xff
	sll	s25,s24,2
	addu	s26,s25,s8
	lw	s27,0(s26)
	srl	s28,s18,8
	xor	s18,s27,s28
	addiu	s19,s6,2
	addiu	s9,s2,-2
$L201:
#---BB7---
# s1 s2 s3 s6 s8 s9 s18 s19 
	lbu	s16,0(s19)
	nop
	xor	s29,s18,s16
	andi	s30,s29,0xff
	sll	s31,s30,2
	addu	s32,s31,s8
	lw	s33,0(s32)
	srl	s34,s18,8
	xor	s18,s33,s34
	addiu	s19,s19,1
	addiu	s9,s9,-1
$L200:
#---BB8---
# s1 s2 s3 s6 s8 s9 s16 s18 s19 
	lbu	s10,0(s19)
	nop
	xor	s35,s18,s10
	andi	s36,s35,0xff
	sll	s37,s36,2
	addu	s38,s37,s8
	lw	s39,0(s38)
	srl	s40,s18,8
	xor	s18,s39,s40
	addiu	s19,s19,1
	addiu	s9,s9,-1
	beq	s9,$0,$L202
	nop
$L182:
#---BB9---
# s1 s2 s3 s6 s8 s9 s18 s19 
	lbu	s41,0(s19)
	nop
	xor	s42,s18,s41
	andi	s43,s42,0xff
	sll	s44,s43,2
	addu	s45,s44,s8
	lw	s46,0(s45)
	srl	s47,s18,8
	xor	s48,s46,s47
	lbu	s49,1(s19)
	nop
	xor	s50,s48,s49
	andi	s51,s50,0xff
	sll	s52,s51,2
	addu	s53,s52,s8
	lw	s54,0(s53)
	srl	s55,s48,8
	xor	s56,s54,s55
	lbu	s57,2(s19)
	nop
	xor	s58,s56,s57
	andi	s59,s58,0xff
	sll	s60,s59,2
	addu	s16,s60,s8
	lw	s61,0(s16)
	srl	s62,s56,8
	xor	s63,s61,s62
	lbu	s64,3(s19)
	nop
	xor	s65,s63,s64
	andi	s66,s65,0xff
	sll	s67,s66,2
	addu	s68,s67,s8
	lw	s10,0(s68)
	srl	s69,s63,8
	xor	s18,s10,s69
	addiu	s19,s19,4
	addiu	s9,s9,-4
	bne	s9,$0,$L182
	nop
$L202:
#---BB10---
# s1 s2 s3 s6 s10 s16 s18 
	sw	s18,%gp_rel(crc.2871)($28)
	lw	s70,%gp_rel(test)($28)
	nop
	beq	s70,$0,$L203
	nop
$L183:
#---BB11---
# s1 s2 s16 
	lw	s71,%gp_rel(bytes_out)($28)
	nop
	addu	s72,s71,s2
	sw	s72,%gp_rel(bytes_out)($28)
	sw	$0,%gp_rel(outcnt)($28)
$L187:
#---BB12---
# s1 s16 
	addiu	$sp,$sp,48
	move	$2,s16
	j	s1
	nop
$L203:
#---BB13---
# s1 s3 s6 s10 
	lw	s73,%gp_rel(ofd)($28)
	move	s74,s6
	li	s75,-1			# 0xffffffffffffffff
	lui	s76,%hi($LC2)
	addiu	s77,s76,%lo($LC2)
	lui	s78,%hi(ofname)
	addiu	s79,s78,%lo(ofname)
	move	s80,s73
	move	s81,s74
	move	s82,s3
	move	$4,s80
	move	$5,s81
	move	$6,s82
	move	$7,s10
	jal	write
	nop
#---BB14---
# $2 s1 s3 s73 s74 s75 s77 s79 
	move	s16,$2
	move	s83,s16
	beq	s16,s3,$L204
	nop
$L186:
#---BB15---
# s1 s3 s73 s74 s75 s77 s79 s83 
	beq	s83,s75,$L205
	nop
#---BB16---
# s1 s3 s73 s74 s75 s77 s79 s83 
	subu	s3,s3,s83
	addu	s74,s74,s83
$L206:
#---BB17---
# s1 s3 s73 s74 s75 s77 s79 
	move	s84,s73
	move	s85,s74
	move	s86,s3
	move	$4,s84
	move	$5,s85
	move	$6,s86
	jal	write
	nop
#---BB18---
# $2 s1 s3 s73 s74 s75 s77 s79 
	move	s16,$2
	move	s83,s16
	bne	s16,s3,$L186
	nop
$L204:
#---BB19---
# s1 s16 
	lw	s2,%gp_rel(outcnt)($28)
	j	$L183
	nop
$L205:
#---BB20---
# s1 s3 s73 s74 s75 s77 s79 s83 
	lw	s87,%gp_rel(stderr)($28)
	move	s88,s77
	lw	s89,%gp_rel(progname)($28)
	move	$4,s87
	move	$5,s88
	move	$6,s89
	jal	fprintf
	nop
#---BB21---
# s1 s3 s73 s74 s75 s77 s79 s83 
	move	s90,s79
	move	$4,s90
	jal	perror
	nop
#---BB22---
# s1 s3 s73 s74 s75 s77 s79 s83 
	jal	abort_gzip
	nop
#---BB23---
# s1 s3 s73 s74 s75 s77 s79 s83 
	subu	s3,s3,s83
	addu	s74,s74,s83
	j	$L206
	nop
	.set	macro
	.set	reorder
	.end	flush_window
	.size	flush_window, .-flush_window
	.section	.rodata.str1.4
	.align	2
$LC6:
	.ascii	"argc<=0\000"
	.text
	.align	2
	.globl	add_envopt
	.set	nomips16
	.ent	add_envopt
add_envopt:
	.frame	$sp,56,$31		# vars= 0, regs= 7/0, args= 24, gp= 0
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s100 $4
# s99 $7
# s98 $4
# s11 s18 s19 s86 s88 $16
# s8 $17
# s5 $18
# s2 s7 $19
# s1 s6 $20
# s22 $21
# s39 s40 $20
# s96 $7
# s41 $22
# s42 $19
# s94 $6
# s93 $5
# s91 $4
# s38 $5
# s37 $4
# s35 $6
# s24 $7
# s23 $6
# s21 $5
# s14 $4
# s13 $2
# s10 s12 $2
# s4 $7
# s3 s9 $6
# s33 $3
# s28 s30 $8
# s15 s16 s17 $21
# s97 $3
# s95 $3
# s92 $3
# s90 $3
# s89 $3
# s87 $3
# s85 $3
# s84 $3
# s83 $3
# s82 $3
# s81 $3
# s80 $3
# s79 $3
# s78 $3
# s77 $3
# s76 $3
# s61 $8
# s55 $9
# s60 $10
# s56 $11
# s62 $12
# s75 $3
# s74 $3
# s73 $3
# s72 $3
# s71 $3
# s70 $3
# s69 $3
# s68 $3
# s67 $3
# s66 $3
# s65 $3
# s64 $3
# s63 $3
# s58 $13
# s59 $3
# s57 $3
# s54 $3
# s53 $3
# s52 $3
# s51 $8
# s50 $9
# s49 $10
# s48 $11
# s47 $12
# s46 $13
# s45 $14
# s44 $15
# s43 $3
# s36 $3
# s34 $3
# s32 $9
# s26 $10
# s25 $11
# s31 $12
# s29 $3
# s27 $9
# s20 $3
#Interference Graph
#  s1
#! $5 $6 $7 $31 s2 s3 s4 s5 s7 
#= $4 s6 
#  s2
#! $4 $6 $7 $31 s1 s3 s4 s5 s6 s8 s9 
#= $5 s7 
#  s3
#! $4 $5 $7 $31 s1 s2 s4 s5 s6 s7 s8 
#= $6 s9 
#  s4
#! $4 $5 $6 $31 s1 s2 s3 s5 s6 s7 s8 s9 
#= $7 
#  s5
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 
#! s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 
#! s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 
#! s65 s66 s67 s68 s69 s70 s71 s72 s73 s74 s75 s76 s77 s78 s79 s80 
#! s81 s82 s83 s84 s85 s86 s87 s88 s89 s90 s91 s92 s93 s94 s95 s96 
#! s97 s98 s99 s100 
#  s6
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s2 s3 s4 s5 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 
#! s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 
#! s34 s35 s36 s87 s97 s98 
#= s1 
#  s7
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s3 s4 s5 s6 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 
#! s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 
#! s34 s35 s36 s37 s38 s39 s40 s41 s87 s97 s98 s99 s100 
#= s2 
#  s8
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s2 s3 s4 s5 s6 s7 s9 s10 s11 s12 s13 s14 s15 s16 s17 
#! s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 
#! s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 
#! s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 
#! s66 s67 s68 s69 s70 s71 s72 s73 s74 s75 s76 s77 s78 s79 s80 s81 
#! s82 s83 s87 s89 s90 s91 s92 s93 s94 s95 s96 s97 s98 s99 s100 
#  s9
#! s2 s4 s5 s6 s7 s8 
#= $4 s3 
#  s10
#! s5 s6 s7 s8 
#= $2 s11 s12 
#  s11
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s5 s6 s7 s8 s12 s13 s14 s15 s16 s17 s20 s21 s22 s23 s24 
#! s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 
#! s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 s52 s53 s54 s55 s56 
#! s57 s58 s59 s60 s61 s62 s63 s64 s65 s66 s67 s68 s69 s70 s71 s72 
#! s73 s74 s75 s76 s77 s78 s79 s80 s81 s82 s83 s84 s85 s87 s89 s90 
#! s91 s92 s93 s94 s95 s96 s97 s98 s99 s100 
#= s10 s18 s19 s86 s88 
#  s12
#! s5 s6 s7 s8 s11 
#= $4 s10 
#  s13
#! s5 s6 s7 s8 s11 
#= $2 
#  s14
#! s5 s6 s7 s8 s11 
#= $4 
#  s15
#! s5 s6 s7 s8 s11 
#= $2 s16 
#  s16
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s5 s6 s7 s8 s11 s97 s98 
#= s15 s17 
#  s17
#! s5 s6 s7 s8 s11 s18 
#= $4 s16 
#  s18
#! $4 s5 s6 s7 s8 s17 
#= $5 s11 
#  s19
#! s5 s6 s7 s8 
#= $2 s11 
#  s20
#! s5 s6 s7 s8 s11 
#  s21
#! $4 s5 s6 s7 s8 s11 s22 s23 s24 s25 s26 s27 s28 s29 s30 s87 
#! s88 
#= $5 
#  s22
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s5 s6 s7 s8 s11 s21 s23 s24 s25 s26 s27 s28 s29 s30 s31 
#! s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 
#! s48 s49 s50 s51 s52 s53 s87 s89 s90 s91 s92 s93 s94 s95 s96 s99 
#! s100 
#  s23
#! $4 $5 s5 s6 s7 s8 s11 s21 s22 s24 s25 s26 s27 s28 s29 s30 
#! s31 s32 s33 s34 s87 s88 
#= $6 
#  s24
#! $4 $5 $6 s5 s6 s7 s8 s11 s21 s22 s23 s25 s26 s27 s28 s29 
#! s30 s31 s32 s33 s34 s35 s36 s37 s38 s87 s88 
#= $7 
#  s25
#! s5 s6 s7 s8 s11 s21 s22 s23 s24 s26 s27 s28 s29 s30 s31 s32 
#! s33 s34 s87 
#  s26
#! s5 s6 s7 s8 s11 s21 s22 s23 s24 s25 s27 s28 s29 s30 s31 s32 
#! s33 s34 s87 
#  s27
#! s5 s6 s7 s8 s11 s21 s22 s23 s24 s25 s26 s28 s29 
#  s28
#! s5 s6 s7 s8 s11 s21 s22 s23 s24 s25 s26 s27 s29 s31 s32 s33 
#= s30 
#  s29
#! s5 s6 s7 s8 s11 s21 s22 s23 s24 s25 s26 s27 s28 s30 
#  s30
#! s5 s6 s7 s8 s11 s21 s22 s23 s24 s25 s26 s29 s34 
#= s28 s33 
#  s31
#! s5 s6 s7 s8 s11 s22 s23 s24 s25 s26 s28 s32 s33 
#  s32
#! s5 s6 s7 s8 s11 s22 s23 s24 s25 s26 s28 s31 s33 
#  s33
#! s5 s6 s7 s8 s11 s22 s23 s24 s25 s26 s28 s31 s32 
#= s30 
#  s34
#! s5 s6 s7 s8 s11 s22 s23 s24 s25 s26 s30 
#  s35
#! $4 $5 s5 s6 s7 s8 s11 s22 s24 s36 s37 s38 
#= $6 
#  s36
#! s5 s6 s7 s8 s11 s22 s24 s35 
#  s37
#! s5 s7 s8 s11 s22 s24 s35 s38 
#= $4 
#  s38
#! $4 s5 s7 s8 s11 s22 s24 s35 s37 
#= $5 
#  s39
#! s5 s7 s8 s11 s22 
#= $2 s40 
#  s40
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s5 s7 s8 s11 s22 s41 s42 s43 s89 s90 s91 s92 s93 s94 s95 
#! s96 s99 s100 
#= s39 
#  s41
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s5 s7 s8 s11 s22 s40 s42 s43 s44 s45 s46 s47 s48 s49 s50 
#! s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 s66 
#! s67 s68 s89 s90 s91 s92 s93 s94 s95 s96 
#  s42
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s5 s8 s11 s22 s40 s41 s43 s44 s45 s46 s47 s48 s49 s50 s51 
#! s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s89 s90 s91 s92 s93 s94 
#! s95 s96 
#  s43
#! s5 s8 s11 s22 s40 s41 s42 
#  s44
#! s5 s8 s11 s22 s41 s42 s45 s46 s47 s48 s49 s50 s51 s52 s53 s54 
#  s45
#! s5 s8 s11 s22 s41 s42 s44 s46 s47 s48 s49 s50 s51 s52 s53 
#  s46
#! s5 s8 s11 s22 s41 s42 s44 s45 s47 s48 s49 s50 s51 s52 s53 
#  s47
#! s5 s8 s11 s22 s41 s42 s44 s45 s46 s48 s49 s50 s51 s52 s53 
#  s48
#! s5 s8 s11 s22 s41 s42 s44 s45 s46 s47 s49 s50 s51 s52 s53 
#  s49
#! s5 s8 s11 s22 s41 s42 s44 s45 s46 s47 s48 s50 s51 s52 s53 
#  s50
#! s5 s8 s11 s22 s41 s42 s44 s45 s46 s47 s48 s49 s51 s52 
#  s51
#! s5 s8 s11 s22 s41 s42 s44 s45 s46 s47 s48 s49 s50 s52 
#  s52
#! s5 s8 s11 s22 s41 s42 s44 s45 s46 s47 s48 s49 s50 s51 
#  s53
#! s5 s8 s11 s22 s41 s42 s44 s45 s46 s47 s48 s49 
#  s54
#! s5 s8 s11 s41 s42 s44 
#  s55
#! s5 s8 s11 s41 s42 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 s66 
#! s67 s68 s69 s70 s71 s72 s73 s74 s75 s76 s77 s78 s79 s80 s81 s82 
#! s83 s84 s85 
#  s56
#! s5 s8 s11 s41 s42 s55 s57 s58 s59 s60 s61 s62 s63 s64 s65 s66 
#! s67 s68 s69 s70 s71 s72 s73 s74 s75 s76 s77 s78 s79 s80 s81 s82 
#! s83 
#  s57
#! s5 s8 s11 s41 s42 s55 s56 
#  s58
#! s5 s8 s11 s41 s42 s55 s56 s59 s60 s61 s62 s63 s64 s65 s66 s67 
#! s68 
#  s59
#! s5 s8 s11 s41 s42 s55 s56 s58 
#  s60
#! s5 s8 s11 s41 s42 s55 s56 s58 s61 s62 s63 s64 s65 s66 s67 s68 
#! s69 s70 s71 s72 s73 s74 s75 s76 s77 s78 s79 s80 s81 s82 s83 
#  s61
#! s5 s8 s11 s41 s42 s55 s56 s58 s60 s62 s63 s64 s65 s66 s67 s68 
#! s69 s70 s71 s72 s73 s74 s75 s76 s77 s78 s79 s80 s81 s82 s83 
#  s62
#! s5 s8 s11 s41 s55 s56 s58 s60 s61 s63 s64 s65 s66 s67 s68 s69 
#! s70 s71 s72 s73 s74 s75 s76 s77 s78 s79 s80 s81 s82 s83 
#  s63
#! s5 s8 s11 s41 s55 s56 s58 s60 s61 s62 
#  s64
#! s5 s8 s11 s41 s55 s56 s58 s60 s61 s62 
#  s65
#! s5 s8 s11 s41 s55 s56 s58 s60 s61 s62 
#  s66
#! s5 s8 s11 s41 s55 s56 s58 s60 s61 s62 
#  s67
#! s5 s8 s11 s41 s55 s56 s58 s60 s61 s62 
#  s68
#! s5 s8 s11 s41 s55 s56 s58 s60 s61 s62 
#  s69
#! s5 s8 s11 s55 s56 s60 s61 s62 
#  s70
#! s5 s8 s11 s55 s56 s60 s61 s62 
#  s71
#! s5 s8 s11 s55 s56 s60 s61 s62 
#  s72
#! s5 s8 s11 s55 s56 s60 s61 s62 
#  s73
#! s5 s8 s11 s55 s56 s60 s61 s62 
#  s74
#! s5 s8 s11 s55 s56 s60 s61 s62 
#  s75
#! s5 s8 s11 s55 s56 s60 s61 s62 
#  s76
#! s5 s8 s11 s55 s56 s60 s61 s62 
#  s77
#! s5 s8 s11 s55 s56 s60 s61 s62 
#  s78
#! s5 s8 s11 s55 s56 s60 s61 s62 
#  s79
#! s5 s8 s11 s55 s56 s60 s61 s62 
#  s80
#! s5 s8 s11 s55 s56 s60 s61 s62 
#  s81
#! s5 s8 s11 s55 s56 s60 s61 s62 
#  s82
#! s5 s8 s11 s55 s56 s60 s61 s62 
#  s83
#! s5 s8 s11 s55 s56 s60 s61 s62 
#  s84
#! s5 s11 s55 
#  s85
#! s5 s11 s55 
#  s86
#! s5 
#= $2 s11 
#  s87
#! s5 s6 s7 s8 s11 s21 s22 s23 s24 s25 s26 
#  s88
#! s5 s21 s23 s24 
#= $4 s11 
#  s89
#! s5 s8 s11 s22 s40 s41 s42 
#  s90
#! s5 s8 s11 s22 s40 s41 s42 
#  s91
#! s5 s8 s11 s22 s40 s41 s42 s92 s93 s94 s95 s96 
#= $4 
#  s92
#! s5 s8 s11 s22 s40 s41 s42 s91 
#  s93
#! $4 s5 s8 s11 s22 s40 s41 s42 s91 s94 s95 s96 
#= $5 
#  s94
#! $4 $5 s5 s8 s11 s22 s40 s41 s42 s91 s93 s95 s96 
#= $6 
#  s95
#! s5 s8 s11 s22 s40 s41 s42 s91 s93 s94 
#  s96
#! $4 $5 $6 s5 s8 s11 s22 s40 s41 s42 s91 s93 s94 
#= $7 
#  s97
#! s5 s6 s7 s8 s11 s16 
#  s98
#! s5 s6 s7 s8 s11 s16 
#= $4 
#  s99
#! $4 s5 s7 s8 s11 s22 s40 s100 
#= $7 
#  s100
#! s5 s7 s8 s11 s22 s40 s99 
#= $4 
#CFG
#1 2
#2 3 52
#3 4
#4 5
#5 6 61
#6 7
#7 8 56
#8 9
#9 10
#10 11 12
#11 12 13
#12 10
#13 14 55
#14 15 53
#15 16 53
#16 19
#17 18 20
#18 19 20
#19 17 20
#20 21 53
#21 22
#22 23
#23 24 63
#24 25 58
#25 26
#26 27
#27 28 29
#28 29 30
#29 27
#30 31
#31 31 32
#32 26 33
#33 34 51
#34 35 50
#35 36 49
#36 37 48
#37 38 47
#38 39 46
#39 40 45
#40 41 44
#41 42 43
#42 43
#43 44
#44 45
#45 46
#46 47
#47 48
#48 49 50
#49 49 50
#50 51
#51 52
#52
#53 9 54
#54 22
#55 22 56
#56 57
#57 52
#58 59
#59 60
#60 25
#61 62
#62 6
#63 64
#64 24
#---BB1---
# $4 $5 $6 $7 $31 
	move	s1,$4
	move	s2,$5
	move	s3,$6
	move	s4,$7
	move	s5,$31
	addiu	$sp,$sp,-56
	move	s6,s1
	move	s7,s2
	lw	s8,0(s1)
	move	s9,s3
	move	$4,s9
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	getenv
	nop
#---BB2---
# $2 s5 s6 s7 s8 
	move	s10,$2
	move	s11,s10
	beq	s10,$0,$L208
	nop
#---BB3---
# s5 s6 s7 s8 s10 s11 
	move	s12,s10
	move	$4,s12
	jal	strlen
	nop
#---BB4---
# $2 s5 s6 s7 s8 s11 
	move	s13,$2
	addiu	s14,s13,1
	move	$4,s14
	jal	malloc
	nop
#---BB5---
# $2 s5 s6 s7 s8 s11 
	move	s15,$2
	move	s16,s15
	beq	s15,$0,$L266
	nop
$L209:
#---BB6---
# s5 s6 s7 s8 s11 s16 
	move	s17,s16
	move	s18,s11
	move	$4,s17
	move	$5,s18
	jal	strcpy
	nop
#---BB7---
# $2 s5 s6 s7 s8 
	move	s19,$2
	move	s11,s19
	lb	s20,0(s19)
	nop
	beq	s20,$0,$L210
	nop
#---BB8---
# s5 s6 s7 s8 s11 
	move	s21,s11
	move	s22,$0
	li	s23,32			# 0x20
	li	s24,9			# 0x9
	li	s25,32			# 0x20
	li	s26,9			# 0x9
$L211:
#---BB9---
# s5 s6 s7 s8 s11 s21 s22 s23 s24 s25 s26 
	move	s27,$0
$L219:
#---BB10---
# s5 s6 s7 s8 s11 s21 s22 s23 s24 s25 s26 s27 
	addu	s28,s21,s27
	lb	s29,0(s28)
	nop
	beq	s29,s23,$L212
	nop
#---BB11---
# s5 s6 s7 s8 s11 s21 s22 s23 s24 s25 s26 s27 s28 s29 
	bne	s29,s24,$L267
	nop
$L212:
#---BB12---
# s5 s6 s7 s8 s11 s21 s22 s23 s24 s25 s26 s27 
	addiu	s27,s27,1
	j	$L219
	nop
$L267:
#---BB13---
# s5 s6 s7 s8 s11 s21 s22 s23 s24 s25 s26 s28 s29 
	move	s30,s28
	beq	s29,$0,$L213
	nop
#---BB14---
# s5 s6 s7 s8 s11 s22 s23 s24 s25 s26 s28 s29 s30 
	beq	s29,s25,$L214
	nop
#---BB15---
# s5 s6 s7 s8 s11 s22 s23 s24 s25 s26 s28 s29 s30 
	beq	s29,s26,$L214
	nop
#---BB16---
# s5 s6 s7 s8 s11 s22 s23 s24 s25 s26 s28 
	move	s31,$0
	j	$L216
	nop
$L268:
#---BB17---
# s5 s6 s7 s8 s11 s22 s23 s24 s25 s26 s28 s31 s32 s33 
	beq	s32,s23,$L215
	nop
#---BB18---
# s5 s6 s7 s8 s11 s22 s23 s24 s25 s26 s28 s31 s32 s33 
	beq	s32,s24,$L215
	nop
$L216:
#---BB19---
# s5 s6 s7 s8 s11 s22 s23 s24 s25 s26 s28 s31 
	addiu	s31,s31,1
	addu	s33,s28,s31
	lb	s32,0(s33)
	nop
	bne	s32,$0,$L268
	nop
$L215:
#---BB20---
# s5 s6 s7 s8 s11 s22 s23 s24 s25 s26 s33 
	move	s30,s33
	lb	s34,0(s33)
	nop
	bne	s34,$0,$L214
	nop
#---BB21---
# s5 s6 s7 s8 s11 s22 s24 
	addiu	s22,s22,1
$L218:
#---BB22---
# s5 s6 s7 s8 s11 s22 s24 
	lw	s35,0(s6)
	nop
	addu	s36,s22,s35
	sw	s36,0(s6)
	addiu	s37,s36,1
	li	s38,4			# 0x4
	move	$4,s37
	move	$5,s38
	move	$6,s35
	move	$7,s24
	jal	calloc
	nop
#---BB23---
# $2 s5 s7 s8 s11 s22 
	move	s39,$2
	move	s40,s39
	beq	s39,$0,$L269
	nop
$L221:
#---BB24---
# s5 s7 s8 s11 s22 s40 
	lw	s41,0(s7)
	sw	s40,0(s7)
	addiu	s42,s8,-1
	bltz	s8,$L270
	nop
$L222:
#---BB25---
# s5 s8 s11 s22 s40 s41 s42 
	lw	s43,0(s41)
	nop
	sw	s43,0(s40)
	addiu	s44,s40,4
	move	s45,s11
	move	s46,s44
	move	s47,s22
	li	s48,32			# 0x20
	li	s49,9			# 0x9
$L223:
#---BB26---
# s5 s8 s11 s22 s41 s42 s44 s45 s46 s47 s48 s49 
	move	s50,$0
$L228:
#---BB27---
# s5 s8 s11 s22 s41 s42 s44 s45 s46 s47 s48 s49 s50 
	addu	s51,s45,s50
	lb	s52,0(s51)
	nop
	beq	s52,s48,$L224
	nop
#---BB28---
# s5 s8 s11 s22 s41 s42 s44 s45 s46 s47 s48 s49 s50 s51 s52 
	bne	s52,s49,$L271
	nop
$L224:
#---BB29---
# s5 s8 s11 s22 s41 s42 s44 s45 s46 s47 s48 s49 s50 
	addiu	s50,s50,1
	j	$L228
	nop
$L271:
#---BB30---
# s5 s8 s11 s22 s41 s42 s44 s46 s47 s48 s49 s51 
	move	s45,s51
	sw	s51,0(s46)
	addiu	s46,s46,4
$L225:
#---BB31---
# s5 s8 s11 s22 s41 s42 s44 s45 s46 s47 s48 s49 
	lb	s53,0(s45)
	addiu	s45,s45,1
	bne	s53,$0,$L225
	nop
#---BB32---
# s5 s8 s11 s22 s41 s42 s44 s45 s46 s47 s48 s49 
	addiu	s47,s47,-1
	bne	s47,$0,$L223
	nop
#---BB33---
# s5 s8 s11 s22 s41 s42 s44 
	sll	s54,s22,2
	addu	s55,s44,s54
	beq	s42,$0,$L227
	nop
#---BB34---
# s5 s8 s11 s41 s42 s55 
	li	s56,-1			# 0xffffffffffffffff
	addiu	s57,s42,-1
	andi	s58,s57,0x7
	lw	s59,4(s41)
	nop
	sw	s59,0(s55)
	addiu	s60,s55,4
	addiu	s61,s41,8
	addiu	s62,s42,-2
	beq	s62,s56,$L265
	nop
#---BB35---
# s5 s8 s11 s41 s55 s56 s58 s60 s61 s62 
	beq	s58,$0,$L229
	nop
#---BB36---
# s5 s8 s11 s41 s55 s56 s58 s60 s61 s62 
	li	s63,1			# 0x1
	beq	s58,s63,$L259
	nop
#---BB37---
# s5 s8 s11 s41 s55 s56 s58 s60 s61 s62 
	li	s64,2			# 0x2
	beq	s58,s64,$L260
	nop
#---BB38---
# s5 s8 s11 s41 s55 s56 s58 s60 s61 s62 
	li	s65,3			# 0x3
	beq	s58,s65,$L261
	nop
#---BB39---
# s5 s8 s11 s41 s55 s56 s58 s60 s61 s62 
	li	s66,4			# 0x4
	beq	s58,s66,$L262
	nop
#---BB40---
# s5 s8 s11 s41 s55 s56 s58 s60 s61 s62 
	li	s67,5			# 0x5
	beq	s58,s67,$L263
	nop
#---BB41---
# s5 s8 s11 s41 s55 s56 s58 s60 s61 s62 
	li	s68,6			# 0x6
	beq	s58,s68,$L264
	nop
#---BB42---
# s5 s8 s11 s41 s55 s56 s60 s61 s62 
	lw	s69,8(s41)
	nop
	sw	s69,0(s60)
	addiu	s60,s60,4
	addiu	s61,s61,4
	addiu	s62,s62,-1
$L264:
#---BB43---
# s5 s8 s11 s55 s56 s60 s61 s62 
	lw	s70,0(s61)
	nop
	sw	s70,0(s60)
	addiu	s60,s60,4
	addiu	s61,s61,4
	addiu	s62,s62,-1
$L263:
#---BB44---
# s5 s8 s11 s55 s56 s60 s61 s62 
	lw	s71,0(s61)
	nop
	sw	s71,0(s60)
	addiu	s60,s60,4
	addiu	s61,s61,4
	addiu	s62,s62,-1
$L262:
#---BB45---
# s5 s8 s11 s55 s56 s60 s61 s62 
	lw	s72,0(s61)
	nop
	sw	s72,0(s60)
	addiu	s60,s60,4
	addiu	s61,s61,4
	addiu	s62,s62,-1
$L261:
#---BB46---
# s5 s8 s11 s55 s56 s60 s61 s62 
	lw	s73,0(s61)
	nop
	sw	s73,0(s60)
	addiu	s60,s60,4
	addiu	s61,s61,4
	addiu	s62,s62,-1
$L260:
#---BB47---
# s5 s8 s11 s55 s56 s60 s61 s62 
	lw	s74,0(s61)
	nop
	sw	s74,0(s60)
	addiu	s60,s60,4
	addiu	s61,s61,4
	addiu	s62,s62,-1
$L259:
#---BB48---
# s5 s8 s11 s55 s56 s60 s61 s62 
	lw	s75,0(s61)
	nop
	sw	s75,0(s60)
	addiu	s60,s60,4
	addiu	s61,s61,4
	addiu	s62,s62,-1
	beq	s62,s56,$L265
	nop
$L229:
#---BB49---
# s5 s8 s11 s55 s56 s60 s61 s62 
	lw	s76,0(s61)
	nop
	sw	s76,0(s60)
	lw	s77,4(s61)
	nop
	sw	s77,4(s60)
	lw	s78,8(s61)
	nop
	sw	s78,8(s60)
	lw	s79,12(s61)
	nop
	sw	s79,12(s60)
	lw	s80,16(s61)
	nop
	sw	s80,16(s60)
	lw	s81,20(s61)
	nop
	sw	s81,20(s60)
	lw	s82,24(s61)
	nop
	sw	s82,24(s60)
	lw	s83,28(s61)
	nop
	sw	s83,28(s60)
	addiu	s60,s60,32
	addiu	s61,s61,32
	addiu	s62,s62,-8
	bne	s62,s56,$L229
	nop
$L265:
#---BB50---
# s5 s8 s11 s55 
	addiu	s84,s8,-1
	sll	s85,s84,2
	addu	s55,s55,s85
$L227:
#---BB51---
# s5 s11 s55 
	sw	$0,0(s55)
$L208:
#---BB52---
# s5 s11 
	move	s86,s11
	addiu	$sp,$sp,56
	move	$2,s86
	j	s5
	nop
$L214:
#---BB53---
# s5 s6 s7 s8 s11 s22 s23 s24 s25 s26 s30 
	sb	$0,0(s30)
	addiu	s21,s30,1
	addiu	s22,s22,1
	lb	s87,1(s30)
	nop
	bne	s87,$0,$L211
	nop
#---BB54---
# s5 s6 s7 s8 s11 s22 s24 
	j	$L218
	nop
$L213:
#---BB55---
# s5 s6 s7 s8 s11 s21 s22 s23 s24 
	bne	s22,$0,$L218
	nop
$L210:
#---BB56---
# s5 s11 s21 s23 s24 
	move	s88,s11
	move	$4,s88
	move	$5,s21
	move	$6,s23
	move	$7,s24
	jal	free
	nop
#---BB57---
# s5 
	move	s11,$0
	j	$L208
	nop
$L270:
#---BB58---
# s5 s8 s11 s22 s40 s41 s42 
	lui	s89,%hi($LC6)
	addiu	s90,s89,%lo($LC6)
	sw	s90,16($sp)
	lw	s91,%gp_rel(stderr)($28)
	lui	s92,%hi($LC3)
	addiu	s93,s92,%lo($LC3)
	lw	s94,%gp_rel(progname)($28)
	lui	s95,%hi(ifname)
	addiu	s96,s95,%lo(ifname)
	move	$4,s91
	move	$5,s93
	move	$6,s94
	move	$7,s96
	jal	fprintf
	nop
#---BB59---
# s5 s8 s11 s22 s40 s41 s42 
	jal	abort_gzip
	nop
#---BB60---
# s5 s8 s11 s22 s40 s41 s42 
	j	$L222
	nop
$L266:
#---BB61---
# s5 s6 s7 s8 s11 s16 
	lui	s97,%hi($LC4)
	addiu	s98,s97,%lo($LC4)
	move	$4,s98
	jal	error
	nop
#---BB62---
# s5 s6 s7 s8 s11 s16 
	j	$L209
	nop
$L269:
#---BB63---
# s5 s7 s8 s11 s22 s40 
	lui	s99,%hi($LC4)
	addiu	s100,s99,%lo($LC4)
	move	$4,s100
	move	$7,s99
	jal	error
	nop
#---BB64---
# s5 s7 s8 s11 s22 s40 
	j	$L221
	nop
	.set	macro
	.set	reorder
	.end	add_envopt
	.size	add_envopt, .-add_envopt
	.globl	crc_32_tab
	.data
	.align	2
	.type	crc_32_tab, @object
	.size	crc_32_tab, 1024
crc_32_tab:
	.word	0
	.word	1996959894
	.word	-301047508
	.word	-1727442502
	.word	124634137
	.word	1886057615
	.word	-379345611
	.word	-1637575261
	.word	249268274
	.word	2044508324
	.word	-522852066
	.word	-1747789432
	.word	162941995
	.word	2125561021
	.word	-407360249
	.word	-1866523247
	.word	498536548
	.word	1789927666
	.word	-205950648
	.word	-2067906082
	.word	450548861
	.word	1843258603
	.word	-187386543
	.word	-2083289657
	.word	325883990
	.word	1684777152
	.word	-43845254
	.word	-1973040660
	.word	335633487
	.word	1661365465
	.word	-99664541
	.word	-1928851979
	.word	997073096
	.word	1281953886
	.word	-715111964
	.word	-1570279054
	.word	1006888145
	.word	1258607687
	.word	-770865667
	.word	-1526024853
	.word	901097722
	.word	1119000684
	.word	-608450090
	.word	-1396901568
	.word	853044451
	.word	1172266101
	.word	-589951537
	.word	-1412350631
	.word	651767980
	.word	1373503546
	.word	-925412992
	.word	-1076862698
	.word	565507253
	.word	1454621731
	.word	-809855591
	.word	-1195530993
	.word	671266974
	.word	1594198024
	.word	-972236366
	.word	-1324619484
	.word	795835527
	.word	1483230225
	.word	-1050600021
	.word	-1234817731
	.word	1994146192
	.word	31158534
	.word	-1731059524
	.word	-271249366
	.word	1907459465
	.word	112637215
	.word	-1614814043
	.word	-390540237
	.word	2013776290
	.word	251722036
	.word	-1777751922
	.word	-519137256
	.word	2137656763
	.word	141376813
	.word	-1855689577
	.word	-429695999
	.word	1802195444
	.word	476864866
	.word	-2056965928
	.word	-228458418
	.word	1812370925
	.word	453092731
	.word	-2113342271
	.word	-183516073
	.word	1706088902
	.word	314042704
	.word	-1950435094
	.word	-54949764
	.word	1658658271
	.word	366619977
	.word	-1932296973
	.word	-69972891
	.word	1303535960
	.word	984961486
	.word	-1547960204
	.word	-725929758
	.word	1256170817
	.word	1037604311
	.word	-1529756563
	.word	-740887301
	.word	1131014506
	.word	879679996
	.word	-1385723834
	.word	-631195440
	.word	1141124467
	.word	855842277
	.word	-1442165665
	.word	-586318647
	.word	1342533948
	.word	654459306
	.word	-1106571248
	.word	-921952122
	.word	1466479909
	.word	544179635
	.word	-1184443383
	.word	-832445281
	.word	1591671054
	.word	702138776
	.word	-1328506846
	.word	-942167884
	.word	1504918807
	.word	783551873
	.word	-1212326853
	.word	-1061524307
	.word	-306674912
	.word	-1698712650
	.word	62317068
	.word	1957810842
	.word	-355121351
	.word	-1647151185
	.word	81470997
	.word	1943803523
	.word	-480048366
	.word	-1805370492
	.word	225274430
	.word	2053790376
	.word	-468791541
	.word	-1828061283
	.word	167816743
	.word	2097651377
	.word	-267414716
	.word	-2029476910
	.word	503444072
	.word	1762050814
	.word	-144550051
	.word	-2140837941
	.word	426522225
	.word	1852507879
	.word	-19653770
	.word	-1982649376
	.word	282753626
	.word	1742555852
	.word	-105259153
	.word	-1900089351
	.word	397917763
	.word	1622183637
	.word	-690576408
	.word	-1580100738
	.word	953729732
	.word	1340076626
	.word	-776247311
	.word	-1497606297
	.word	1068828381
	.word	1219638859
	.word	-670225446
	.word	-1358292148
	.word	906185462
	.word	1090812512
	.word	-547295293
	.word	-1469587627
	.word	829329135
	.word	1181335161
	.word	-882789492
	.word	-1134132454
	.word	628085408
	.word	1382605366
	.word	-871598187
	.word	-1156888829
	.word	570562233
	.word	1426400815
	.word	-977650754
	.word	-1296233688
	.word	733239954
	.word	1555261956
	.word	-1026031705
	.word	-1244606671
	.word	752459403
	.word	1541320221
	.word	-1687895376
	.word	-328994266
	.word	1969922972
	.word	40735498
	.word	-1677130071
	.word	-351390145
	.word	1913087877
	.word	83908371
	.word	-1782625662
	.word	-491226604
	.word	2075208622
	.word	213261112
	.word	-1831694693
	.word	-438977011
	.word	2094854071
	.word	198958881
	.word	-2032938284
	.word	-237706686
	.word	1759359992
	.word	534414190
	.word	-2118248755
	.word	-155638181
	.word	1873836001
	.word	414664567
	.word	-2012718362
	.word	-15766928
	.word	1711684554
	.word	285281116
	.word	-1889165569
	.word	-127750551
	.word	1634467795
	.word	376229701
	.word	-1609899400
	.word	-686959890
	.word	1308918612
	.word	956543938
	.word	-1486412191
	.word	-799009033
	.word	1231636301
	.word	1047427035
	.word	-1362007478
	.word	-640263460
	.word	1088359270
	.word	936918000
	.word	-1447252397
	.word	-558129467
	.word	1202900863
	.word	817233897
	.word	-1111625188
	.word	-893730166
	.word	1404277552
	.word	615818150
	.word	-1160759803
	.word	-841546093
	.word	1423857449
	.word	601450431
	.word	-1285129682
	.word	-1000256840
	.word	1567103746
	.word	711928724
	.word	-1274298825
	.word	-1022587231
	.word	1510334235
	.word	755167117
	.section	.sdata,"aw",@progbits
	.align	2
	.type	crc.2871, @object
	.size	crc.2871, 4
crc.2871:
	.word	-1
	.ident	"GCC: (GNU) 4.3.0"
