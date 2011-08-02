	.file	1 "zip.c"
	.section .mdebug.abi32
	.previous
	.text
	.align	2
	.globl	file_read
	.set	nomips16
	.ent	file_read
file_read:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s15 $2
# s7 $4
# s3 $7
# s2 s6 $6
# s9 s10 s14 s18 $16
# s4 $17
# s1 s5 s8 s13 $18
# s17 $3
# s16 $3
# s12 $3
# s11 $3
#Interference Graph
#  s1
#! $5 $7 $31 s2 s3 s4 
#= $4 s5 
#  s2
#! $7 $31 s1 s3 s4 s5 
#= $5 s6 
#  s3
#! $4 $5 $6 $31 s1 s2 s4 s5 s6 s7 s8 
#= $7 
#  s4
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 
#  s5
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s2 s3 s4 s6 s7 s9 s10 s11 s12 
#= s1 s8 s13 
#  s6
#! $4 $5 s3 s4 s5 s7 s8 
#= $6 s2 
#  s7
#! s3 s4 s5 s6 s8 
#= $4 
#  s8
#! $4 s3 s4 s6 s7 
#= $5 s5 
#  s9
#! s4 s5 
#= $2 s10 
#  s10
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s4 s5 s11 s12 s13 s15 s16 s17 
#= s9 s14 s18 
#  s11
#! s4 s5 s10 
#  s12
#! s4 s5 s10 
#  s13
#! s4 s10 s14 
#= $4 s5 
#  s14
#! $4 s4 s13 
#= $5 s10 
#  s15
#! s4 s10 
#= $2 
#  s16
#! s4 s10 
#  s17
#! s4 s10 
#  s18
#! s4 
#= $2 s10 
#CFG
#1 2
#2 3 5
#3 4
#4 5
#5
#---BB1---
# $4 $5 $7 $31 
	move	s1,$4
	move	s2,$5
	move	s3,$7
	move	s4,$31
	addiu	$sp,$sp,-32
	move	s5,s1
	move	s6,s2
	lw	s7,%gp_rel(ifd)($28)
	move	s8,s5
	move	$4,s7
	move	$5,s8
	move	$6,s6
	move	$7,s3
	jal	read
	nop
#---BB2---
# $2 s4 s5 
	move	s9,$2
	move	s10,s9
	addiu	s11,s9,-1
	sltu	s12,s11,-2
	beq	s12,$0,$L2
	nop
#---BB3---
# s4 s5 s10 
	move	s13,s5
	move	s14,s10
	move	$4,s13
	move	$5,s14
	jal	updcrc
	nop
#---BB4---
# $2 s4 s10 
	move	s15,$2
	
	sw	s15,%gp_rel(crc)($28)
	lw	s16,%gp_rel(bytes_in)($28)
	nop
	addu	s17,s16,s10
	sw	s17,%gp_rel(bytes_in)($28)
$L2:
#---BB5---
# s4 s10 
	move	s18,s10
	addiu	$sp,$sp,32
	move	$2,s18
	j	s4
	nop
	.set	macro
	.set	reorder
	.end	file_read
	.size	file_read, .-file_read
	.align	2
	.globl	zip
	.set	nomips16
	.ent	zip
zip:
	.frame	$sp,40,$31		# vars= 8, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s87 $4
# s76 $5
# s73 $4
# s63 $2
# s47 $4
# s42 $4
# s62 $16
# s3 $17
# s8 $18
# s41 $19
# s39 $5
# s37 $4
# s36 $6
# s35 $4
# s28 $4
# s25 $5
# s17 $16
# s24 $4
# s23 $5
# s22 $4
# s20 $2
# s19 $5
# s18 $4
# s16 $7
# s2 s4 s21 $19
# s5 $6
# s1 $4
# s88 s89 $19
# s95 $3
# s94 $8
# s93 $3
# s92 $8
# s91 $3
# s90 $20
# s86 $3
# s85 $3
# s84 $3
# s83 $3
# s82 $3
# s81 $8
# s80 $9
# s79 $3
# s78 $8
# s77 $3
# s75 $3
# s74 $8
# s72 $3
# s71 $3
# s49 $20
# s52 $21
# s70 $3
# s69 $3
# s68 $8
# s67 $9
# s66 $3
# s65 $8
# s64 $3
# s61 $3
# s60 $3
# s59 $3
# s58 $3
# s57 $8
# s56 $9
# s55 $3
# s54 $8
# s53 $3
# s51 $3
# s50 $8
# s48 $3
# s46 $3
# s45 $8
# s44 $3
# s43 $3
# s40 $3
# s38 $3
# s34 $3
# s33 $3
# s32 $8
# s31 $3
# s30 $8
# s29 $3
# s27 $3
# s26 $8
# s15 $3
# s14 $3
# s13 $8
# s12 $3
# s11 $3
# s10 $3
# s9 $3
# s7 $3
# s6 $8
#Interference Graph
#  s1
#! $5 $31 s2 s3 s4 
#= $4 
#  s2
#! $31 s1 s3 
#= $5 s4 
#  s3
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 
#! s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 
#! s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 
#! s65 s66 s67 s68 s69 s70 s71 s72 s73 s74 s75 s76 s77 s78 s79 s80 
#! s81 s82 s83 s84 s85 s86 s87 s88 s89 s90 s91 s92 s93 s94 s95 
#  s4
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s3 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 
#! s18 s19 s20 
#= s2 s21 
#  s5
#! $4 $5 s3 s4 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 
#! s18 s19 
#= $6 
#  s6
#! s3 s4 s5 s7 
#  s7
#! s3 s4 s5 s6 
#  s8
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s3 s4 s5 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 
#! s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 
#! s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 s52 
#! s53 s54 s55 s56 s62 s64 s65 s66 s67 s68 s69 s70 s71 s72 s73 s74 
#! s75 s76 s77 s78 s79 s80 s81 s82 s83 s86 s87 s88 s89 s90 s91 s92 
#! s93 s94 s95 
#  s9
#! s3 s4 s5 s8 
#  s10
#! s3 s4 s5 s8 
#  s11
#! s3 s4 s5 s8 
#  s12
#! s3 s4 s5 s8 
#  s13
#! s3 s4 s5 s8 s14 
#  s14
#! s3 s4 s5 s8 s13 
#  s15
#! s3 s4 s5 s8 
#  s16
#! $4 $5 $6 s3 s4 s5 s8 s17 s18 s19 
#= $7 
#  s17
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s3 s4 s5 s8 s16 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 
#! s28 s29 s30 s31 s32 s33 s34 s35 s36 s86 s87 s89 s90 s91 s92 s93 
#! s94 s95 
#  s18
#! s3 s4 s5 s8 s16 s17 s19 
#= $4 
#  s19
#! $4 s3 s4 s5 s8 s16 s17 s18 
#= $5 
#  s20
#! s3 s4 s8 s17 
#= $2 
#  s21
#! s3 s8 s17 
#= $4 s4 
#  s22
#! s3 s8 s17 s23 
#= $4 
#  s23
#! $4 s3 s8 s17 s22 
#= $5 
#  s24
#! s3 s8 s17 s25 
#= $4 
#  s25
#! $4 s3 s8 s17 s24 
#= $5 
#  s26
#! s3 s8 s17 s27 
#  s27
#! s3 s8 s17 s26 
#  s28
#! s3 s8 s17 s29 s30 s31 s32 s33 s92 s93 s94 s95 
#= $4 
#  s29
#! s3 s8 s17 s28 
#  s30
#! s3 s8 s17 s28 s31 
#  s31
#! s3 s8 s17 s28 s30 
#  s32
#! s3 s8 s17 s28 s33 
#  s33
#! s3 s8 s17 s28 s32 
#  s34
#! s3 s8 s17 
#  s35
#! s3 s8 s17 s36 s89 s90 s91 
#= $4 
#  s36
#! $4 $5 s3 s8 s17 s35 s89 s90 s91 
#= $6 
#  s37
#! s3 s8 s38 s39 s40 s41 s77 s78 s79 
#= $4 
#  s38
#! s3 s8 s37 
#  s39
#! $4 s3 s8 s37 s40 s41 s42 s43 s62 s71 s72 s73 s74 s77 s78 s79 
#! s80 s81 s82 s83 
#= $5 
#  s40
#! s3 s8 s37 s39 s41 
#  s41
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s3 s8 s37 s39 s40 s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 
#! s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s64 s65 s66 s67 s68 
#! s69 s70 s71 s72 s73 s74 s75 s76 s84 s85 
#  s42
#! s3 s8 s39 s41 s43 s44 s45 s46 s62 s71 s83 
#= $4 
#  s43
#! s3 s8 s39 s41 s42 
#  s44
#! s3 s8 s41 s42 s45 
#  s45
#! s3 s8 s41 s42 s44 s46 
#  s46
#! s3 s8 s41 s42 s45 
#  s47
#! s3 s8 s41 s48 s49 s50 s51 s62 s64 s65 s66 s76 
#= $4 
#  s48
#! s3 s8 s41 s47 s62 
#  s49
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s3 s8 s41 s47 s50 s51 s52 s53 s54 s55 s56 s57 s59 s60 s61 
#! s62 s64 s65 s66 s67 s68 s69 s70 s84 s85 
#  s50
#! s3 s8 s41 s47 s49 s51 s62 
#  s51
#! s3 s8 s41 s47 s49 s50 s62 
#  s52
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s3 s8 s41 s49 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s70 
#! s84 s85 
#  s53
#! s3 s8 s41 s49 s52 s62 
#  s54
#! s3 s8 s41 s49 s52 s55 s62 
#  s55
#! s3 s8 s41 s49 s52 s54 s62 
#  s56
#! s3 s8 s41 s49 s52 s57 s58 s62 
#  s57
#! s3 s41 s49 s52 s56 s58 s62 
#  s58
#! s3 s41 s52 s56 s57 s62 
#  s59
#! s3 s41 s49 s52 s62 
#  s60
#! s3 s41 s49 s52 s62 
#  s61
#! s3 s41 s49 s52 s62 
#  s62
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s3 s8 s39 s41 s42 s47 s48 s49 s50 s51 s52 s53 s54 s55 s56 
#! s57 s58 s59 s60 s61 s64 s65 s66 s67 s68 s69 s70 s71 s72 s73 s74 
#! s75 s76 s84 s85 
#  s63
#! s3 
#= $2 
#  s64
#! s3 s8 s41 s47 s49 s62 
#  s65
#! s3 s8 s41 s47 s49 s62 s66 
#  s66
#! s3 s8 s41 s47 s49 s62 s65 
#  s67
#! s3 s8 s41 s49 s62 s68 s69 
#  s68
#! s3 s8 s41 s49 s62 s67 s69 
#  s69
#! s3 s8 s41 s49 s62 s67 s68 
#  s70
#! s3 s8 s41 s49 s52 s62 
#  s71
#! s3 s8 s39 s41 s42 s62 
#  s72
#! s3 s8 s39 s41 s62 s73 
#  s73
#! s3 s8 s39 s41 s62 s72 
#= $4 
#  s74
#! s3 s8 s39 s41 s62 s75 
#  s75
#! s3 s8 s41 s62 s74 
#  s76
#! $4 s3 s8 s41 s47 s62 
#= $5 
#  s77
#! s3 s8 s37 s39 
#  s78
#! s3 s8 s37 s39 s79 
#  s79
#! s3 s8 s37 s39 s78 
#  s80
#! s3 s8 s39 s81 s82 
#  s81
#! s3 s8 s39 s80 s82 
#  s82
#! s3 s8 s39 s80 s81 
#  s83
#! s3 s8 s39 s42 
#  s84
#! s3 s41 s49 s52 s62 
#  s85
#! s3 s41 s49 s52 s62 
#  s86
#! s3 s8 s17 
#  s87
#! s3 s8 s17 
#= $4 
#  s88
#! s3 s8 
#= $2 s89 
#  s89
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s3 s8 s17 s35 s36 s90 s91 
#= s88 
#  s90
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s3 s8 s17 s35 s36 s89 s91 
#  s91
#! s3 s8 s17 s35 s36 s89 s90 
#  s92
#! s3 s8 s17 s28 s93 
#  s93
#! s3 s8 s17 s28 s92 
#  s94
#! s3 s8 s17 s28 s95 
#  s95
#! s3 s8 s17 s28 s94 
#CFG
#1 2
#2 3
#3 4
#4 5
#5 6 51
#6 7 53
#7 8 34
#8 9
#9 10
#10 11 29
#11 12
#12 13 25
#13 14
#14 15 21
#15 16
#16 17 33
#17 18 43
#18 19 41
#19 20
#20
#21 22 47
#22 16 23
#23 24
#24 16
#25 26 49
#26 14 27
#27 28
#28 14
#29 30 45
#30 12 31
#31 32
#32 12
#33 19
#34 35
#35 38
#36 9 37
#37 38
#38 36 39
#39 40
#40 36
#41 42
#42 19
#43 44
#44 18
#45 46
#46 30
#47 48
#48 22
#49 50
#50 26
#51 52
#52 7 53
#53 54
#54 7
#---BB1---
# $4 $5 $31 
	move	s1,$4
	move	s2,$5
	move	s3,$31
	addiu	$sp,$sp,-40
	move	s4,s2
	sw	s1,%gp_rel(ifd)($28)
	sw	s2,%gp_rel(ofd)($28)
	li	s5,8			# 0x8
	sw	s5,%gp_rel(method)($28)
	lui	s6,%hi(outbuf)
	li	s7,31
	sb	s7,%lo(outbuf)(s6)
	addiu	s8,s6,%lo(outbuf)
	li	s9,-117
	sb	s9,1(s8)
	sb	s5,2(s8)
	lw	s10,%gp_rel(save_orig_name)($28)
	nop
	sltu	s11,$0,s10
	sll	s12,s11,3
	sb	s12,3(s8)
	lw	s13,%gp_rel(time_stamp)($28)
	nop
	sb	s13,4(s8)
	srl	s14,s13,8
	sb	s14,5(s8)
	srl	s15,s13,16
	sb	s15,6(s8)
	srl	s16,s15,8
	sb	s16,7(s8)
	sw	s5,%gp_rel(outcnt)($28)
	move	s17,$0
	sh	$0,16($sp)
	move	s18,$0
	move	s19,$0
	move	$4,s18
	move	$5,s19
	move	$6,s5
	move	$7,s16
	jal	updcrc
	nop
#---BB2---
# $2 s3 s4 s8 s17 
	move	s20,$2
	sw	s20,%gp_rel(crc)($28)
	move	s21,s4
	move	$4,s21
	jal	bi_init
	nop
#---BB3---
# s3 s8 s17 
	addiu	s22,$sp,16
	addiu	s23,$28,%gp_rel(method)
	move	$4,s22
	move	$5,s23
	jal	ct_init
	nop
#---BB4---
# s3 s8 s17 
	lw	s24,%gp_rel(level)($28)
	addiu	s25,$sp,18
	move	$4,s24
	move	$5,s25
	jal	lm_init
	nop
#---BB5---
# s3 s8 s17 
	lw	s26,%gp_rel(outcnt)($28)
	nop
	addu	s27,s26,s8
	sb	s17,0(s27)
	addiu	s28,s26,1
	sw	s28,%gp_rel(outcnt)($28)
	li	s29,16384			# 0x4000
	beq	s28,s29,$L28
	nop
#---BB6---
# s3 s8 s17 s28 
	addu	s30,s28,s8
	li	s31,3
	sb	s31,0(s30)
	addiu	s32,s28,1
	sw	s32,%gp_rel(outcnt)($28)
	li	s33,16384			# 0x4000
	beq	s32,s33,$L29
	nop
$L9:
#---BB7---
# s3 s8 s17 
	lw	s34,%gp_rel(save_orig_name)($28)
	nop
	bne	s34,$0,$L27
	nop
#---BB8---
# s3 s8 s17 
	lw	s35,%gp_rel(outcnt)($28)
	nop
$L10:
#---BB9---
# s3 s8 s17 s35 s36 
	sw	s35,%gp_rel(header_bytes)($28)
	move	$4,s35
	move	$5,s17
	move	$6,s36
	jal	deflate
	nop
#---BB10---
# s3 s8 
	lw	s37,%gp_rel(outcnt)($28)
	nop
	sltu	s38,s37,16382
	beq	s38,$0,$L13
	nop
#---BB11---
# s3 s8 s37 
	lw	s39,%gp_rel(crc)($28)
	addu	s40,s37,s8
	sb	s39,0(s40)
	srl	s41,s39,8
	sb	s41,1(s40)
	addiu	s42,s37,2
$L14:
#---BB12---
# s3 s8 s39 s41 s42 
	sltu	s43,s42,16382
	beq	s43,$0,$L16
	nop
#---BB13---
# s3 s8 s39 s41 s42 
	srl	s44,s39,16
	addu	s45,s42,s8
	sb	s44,0(s45)
	srl	s46,s44,8
	sb	s46,1(s45)
	addiu	s47,s42,2
$L17:
#---BB14---
# s3 s8 s41 s47 s62 
	sltu	s48,s47,16382
	beq	s48,$0,$L19
	nop
#---BB15---
# s3 s8 s41 s47 s62 
	lw	s49,%gp_rel(bytes_in)($28)
	addu	s50,s47,s8
	sb	s49,0(s50)
	srl	s51,s49,8
	sb	s51,1(s50)
	addiu	s52,s47,2
$L20:
#---BB16---
# s3 s8 s41 s49 s52 s62 
	sltu	s53,s52,16382
	bne	s53,$0,$L30
	nop
#---BB17---
# s3 s8 s41 s49 s52 s62 
	addu	s54,s52,s8
	srl	s55,s49,16
	sb	s55,0(s54)
	addiu	s56,s52,1
	sw	s56,%gp_rel(outcnt)($28)
	li	s52,16384			# 0x4000
	beq	s56,s52,$L31
	nop
$L24:
#---BB18---
# s3 s8 s41 s49 s52 s56 s62 
	addu	s57,s56,s8
	srl	s58,s49,24
	sb	s58,0(s57)
	addiu	s59,s56,1
	sw	s59,%gp_rel(outcnt)($28)
	li	s49,16384			# 0x4000
	beq	s59,s49,$L32
	nop
$L23:
#---BB19---
# s3 s41 s49 s52 s62 
	lw	s60,%gp_rel(header_bytes)($28)
	nop
	addiu	s61,s60,8
	sw	s61,%gp_rel(header_bytes)($28)
	move	$4,s52
	move	$5,s49
	move	$6,s62
	move	$7,s41
	jal	flush_outbuf
	nop
#---BB20---
# s3 
	move	s63,$0
	addiu	$sp,$sp,40
	move	$2,s63
	j	s3
	nop
$L19:
#---BB21---
# s3 s8 s41 s47 s62 
	addu	s64,s47,s8
	lw	s49,%gp_rel(bytes_in)($28)
	nop
	sb	s49,0(s64)
	addiu	s65,s47,1
	sw	s65,%gp_rel(outcnt)($28)
	li	s66,16384			# 0x4000
	beq	s65,s66,$L33
	nop
$L21:
#---BB22---
# s3 s8 s41 s49 s62 
	lw	s67,%gp_rel(outcnt)($28)
	nop
	addu	s68,s67,s8
	srl	s69,s49,8
	sb	s69,0(s68)
	addiu	s52,s67,1
	sw	s52,%gp_rel(outcnt)($28)
	li	s70,16384			# 0x4000
	bne	s52,s70,$L20
	nop
#---BB23---
# s3 s8 s41 s49 s52 s62 
	move	$4,s52
	move	$5,s49
	move	$6,s62
	move	$7,s41
	jal	flush_outbuf
	nop
#---BB24---
# s3 s8 s41 s62 
	lw	s52,%gp_rel(outcnt)($28)
	lw	s49,%gp_rel(bytes_in)($28)
	j	$L20
	nop
$L16:
#---BB25---
# s3 s8 s39 s41 s42 
	addu	s71,s42,s8
	srl	s62,s39,16
	sb	s62,0(s71)
	addiu	s72,s42,1
	sw	s72,%gp_rel(outcnt)($28)
	li	s73,16384			# 0x4000
	beq	s72,s73,$L34
	nop
$L18:
#---BB26---
# s3 s8 s39 s62 
	lw	s41,%gp_rel(outcnt)($28)
	nop
	addu	s74,s41,s8
	srl	s75,s39,24
	sb	s75,0(s74)
	addiu	s47,s41,1
	sw	s47,%gp_rel(outcnt)($28)
	li	s76,16384			# 0x4000
	bne	s47,s76,$L17
	nop
#---BB27---
# s3 s8 s41 s47 s62 s76 
	move	$4,s47
	move	$5,s76
	move	$6,s62
	move	$7,s41
	jal	flush_outbuf
	nop
#---BB28---
# s3 s8 s41 s62 
	lw	s47,%gp_rel(outcnt)($28)
	j	$L17
	nop
$L13:
#---BB29---
# s3 s8 s37 
	addu	s77,s37,s8
	lw	s39,%gp_rel(crc)($28)
	nop
	sb	s39,0(s77)
	addiu	s78,s37,1
	sw	s78,%gp_rel(outcnt)($28)
	li	s79,16384			# 0x4000
	beq	s78,s79,$L35
	nop
$L15:
#---BB30---
# s3 s8 s39 
	lw	s80,%gp_rel(outcnt)($28)
	nop
	addu	s81,s80,s8
	srl	s82,s39,8
	sb	s82,0(s81)
	addiu	s42,s80,1
	sw	s42,%gp_rel(outcnt)($28)
	li	s83,16384			# 0x4000
	bne	s42,s83,$L14
	nop
#---BB31---
# s3 s8 s39 s42 
	move	$4,s42
	move	$5,s39
	jal	flush_outbuf
	nop
#---BB32---
# s3 s8 
	lw	s42,%gp_rel(outcnt)($28)
	lw	s39,%gp_rel(crc)($28)
	j	$L14
	nop
$L30:
#---BB33---
# s3 s8 s49 s52 
	srl	s41,s49,16
	addu	s84,s52,s8
	sb	s41,0(s84)
	srl	s62,s41,8
	sb	s62,1(s84)
	addiu	s85,s52,2
	sw	s85,%gp_rel(outcnt)($28)
	j	$L23
	nop
$L27:
#---BB34---
# s3 s8 s17 
	lui	s86,%hi(ifname)
	addiu	s87,s86,%lo(ifname)
	move	$4,s87
	move	$5,s17
	jal	basename
	nop
#---BB35---
# $2 s3 s8 
	move	s88,$2
	move	s89,s88
	lw	s35,%gp_rel(outcnt)($28)
	li	s90,16384			# 0x4000
	j	$L12
	nop
$L11:
#---BB36---
# s3 s8 s17 s35 s89 s90 
	lb	s36,0(s89)
	nop
	beq	s36,$0,$L10
	nop
#---BB37---
# s3 s8 s35 s36 s89 s90 
	addiu	s89,s89,1
$L12:
#---BB38---
# s3 s8 s35 s36 s89 s90 
	addu	s91,s35,s8
	lbu	s17,0(s89)
	nop
	sb	s17,0(s91)
	addiu	s35,s35,1
	sw	s35,%gp_rel(outcnt)($28)
	bne	s35,s90,$L11
	nop
#---BB39---
# s3 s8 s17 s35 s36 s89 s90 
	move	$4,s35
	move	$5,s17
	move	$6,s36
	jal	flush_outbuf
	nop
#---BB40---
# s3 s8 s17 s89 s90 
	lw	s35,%gp_rel(outcnt)($28)
	j	$L11
	nop
$L32:
#---BB41---
# s3 s41 s49 s52 s62 
	move	$4,s52
	move	$5,s49
	move	$6,s62
	move	$7,s41
	jal	flush_outbuf
	nop
#---BB42---
# s3 s41 s49 s52 s62 
	j	$L23
	nop
$L31:
#---BB43---
# s3 s8 s41 s49 s52 s62 
	move	$4,s52
	move	$5,s49
	move	$6,s62
	move	$7,s41
	jal	flush_outbuf
	nop
#---BB44---
# s3 s8 s41 s52 s62 
	lw	s49,%gp_rel(bytes_in)($28)
	lw	s56,%gp_rel(outcnt)($28)
	j	$L24
	nop
$L35:
#---BB45---
# s3 s8 s37 s39 
	move	$4,s37
	move	$5,s39
	jal	flush_outbuf
	nop
#---BB46---
# s3 s8 
	lw	s39,%gp_rel(crc)($28)
	j	$L15
	nop
$L33:
#---BB47---
# s3 s8 s41 s47 s49 s62 
	move	$4,s47
	move	$5,s49
	move	$6,s62
	move	$7,s41
	jal	flush_outbuf
	nop
#---BB48---
# s3 s8 s41 s62 
	lw	s49,%gp_rel(bytes_in)($28)
	j	$L21
	nop
$L34:
#---BB49---
# s3 s8 s39 s41 s62 s73 
	move	$4,s73
	move	$5,s39
	move	$6,s62
	move	$7,s41
	jal	flush_outbuf
	nop
#---BB50---
# s3 s8 s62 
	lw	s39,%gp_rel(crc)($28)
	j	$L18
	nop
$L28:
#---BB51---
# s3 s8 s17 s28 
	move	$4,s28
	move	$5,s17
	jal	flush_outbuf
	nop
#---BB52---
# s3 s8 s17 
	lw	s28,%gp_rel(outcnt)($28)
	nop
	addu	s92,s28,s8
	li	s93,3
	sb	s93,0(s92)
	addiu	s94,s28,1
	sw	s94,%gp_rel(outcnt)($28)
	li	s95,16384			# 0x4000
	bne	s94,s95,$L9
	nop
$L29:
#---BB53---
# s3 s8 s17 s28 
	move	$4,s28
	move	$5,s17
	jal	flush_outbuf
	nop
#---BB54---
# s3 s8 s17 
	j	$L9
	nop
	.set	macro
	.set	reorder
	.end	zip
	.size	zip, .-zip
	.local	crc
	.comm	crc,4,4
	.comm	header_bytes,4,4
	.ident	"GCC: (GNU) 4.3.0"
