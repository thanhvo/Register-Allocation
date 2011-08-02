	.file	1 "bits.c"
	.section .mdebug.abi32
	.previous
	.text
	.align	2
	.globl	bi_init
	.set	nomips16
	.ent	bi_init
bi_init:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s3 $2
# s2 $31
# s1 $4
# s5 $3
# s4 $3
#Interference Graph
#  s1
#! $31 s2 s3 
#= $4 
#  s2
#! $2 s1 s3 s4 s5 
#= $31 
#  s3
#! s1 s2 s4 s5 
#= $2 
#  s4
#! s2 s3 
#  s5
#! s2 s3 
#CFG
#1 2 3
#2 3
#3
#---BB1---
# $4 $31 
	move	s1,$4
	move	s2,$31
	sw	s1,%gp_rel(zfile)($28)
	sh	$0,%gp_rel(bi_buf)($28)
	sw	$0,%gp_rel(bi_valid)($28)
	li	s3,-1			# 0xffffffffffffffff
	beq	s1,s3,$L3
	nop
#---BB2---
# s2 s3 
	lui	s4,%hi(file_read)
	addiu	s5,s4,%lo(file_read)
	sw	s5,%gp_rel(read_buf)($28)
$L3:
#---BB3---
# s2 s3 
	move	$2,s3
	j	s2
	nop
	.set	macro
	.set	reorder
	.end	bi_init
	.size	bi_init, .-bi_init
	.align	2
	.globl	bi_reverse
	.set	nomips16
	.ent	bi_reverse
bi_reverse:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s60 $2
# s3 $31
# s2 $5
# s1 $4
# s4 s9 $3
# s59 $8
# s58 $8
# s57 $9
# s56 $8
# s55 $9
# s54 $8
# s53 $9
# s52 $8
# s51 $9
# s50 $8
# s49 $9
# s7 $10
# s48 $8
# s47 $9
# s46 $8
# s45 $9
# s44 $8
# s43 $9
# s42 $8
# s41 $9
# s40 $8
# s39 $9
# s38 $8
# s37 $9
# s36 $8
# s35 $9
# s34 $8
# s33 $9
# s32 $8
# s31 $9
# s30 $8
# s29 $8
# s28 $8
# s27 $8
# s26 $8
# s25 $8
# s24 $8
# s23 $8
# s22 $8
# s21 $8
# s20 $8
# s19 $8
# s18 $8
# s17 $3
# s16 $3
# s15 $8
# s14 $8
# s8 $9
# s13 $8
# s12 $8
# s11 $8
# s10 $8
# s6 $8
# s5 $11
#Interference Graph
#  s1
#! $5 $31 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 
#! s16 s17 
#= $4 
#  s2
#! $31 s1 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 
#= $5 
#  s3
#! $2 s1 s2 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 
#! s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 
#! s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 
#= $31 
#  s4
#! s1 s2 s3 s5 s6 s7 s8 
#= s9 
#  s5
#! s1 s2 s3 s4 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 
#  s6
#! s1 s2 s3 s4 s5 s7 
#  s7
#! s1 s2 s3 s4 s5 s6 s8 s9 s10 s11 s12 s13 s14 s15 s17 s18 
#! s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 
#! s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 
#! s51 s52 s53 s54 s55 s56 s57 s58 s59 
#  s8
#! s1 s2 s3 s4 s5 s7 s9 s10 s11 s12 s13 s14 s15 s16 s18 s20 
#! s22 s24 s26 s28 s30 
#  s9
#! s1 s2 s3 s5 s7 s8 s10 s11 s12 s13 s14 s15 s18 s19 s20 s21 
#! s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 
#! s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 s52 s53 
#! s54 s55 s56 s57 s58 s59 
#= s4 
#  s10
#! s1 s2 s3 s5 s7 s8 s9 
#  s11
#! s1 s2 s3 s5 s7 s8 s9 
#  s12
#! s1 s2 s3 s5 s7 s8 s9 
#  s13
#! s1 s2 s3 s5 s7 s8 s9 
#  s14
#! s1 s2 s3 s5 s7 s8 s9 
#  s15
#! s1 s2 s3 s5 s7 s8 s9 
#  s16
#! s1 s2 s3 s8 
#  s17
#! s1 s2 s3 s7 
#  s18
#! s3 s7 s8 s9 
#  s19
#! s3 s7 s9 
#  s20
#! s3 s7 s8 s9 
#  s21
#! s3 s7 s9 
#  s22
#! s3 s7 s8 s9 
#  s23
#! s3 s7 s9 
#  s24
#! s3 s7 s8 s9 
#  s25
#! s3 s7 s9 
#  s26
#! s3 s7 s8 s9 
#  s27
#! s3 s7 s9 
#  s28
#! s3 s7 s8 s9 
#  s29
#! s3 s7 s9 
#  s30
#! s3 s7 s8 s9 
#  s31
#! s3 s7 s9 s32 
#  s32
#! s3 s7 s9 s31 s33 
#  s33
#! s3 s7 s9 s32 s34 
#  s34
#! s3 s7 s9 s33 
#  s35
#! s3 s7 s9 s36 
#  s36
#! s3 s7 s9 s35 s37 
#  s37
#! s3 s7 s9 s36 s38 
#  s38
#! s3 s7 s9 s37 
#  s39
#! s3 s7 s9 s40 
#  s40
#! s3 s7 s9 s39 s41 
#  s41
#! s3 s7 s9 s40 s42 
#  s42
#! s3 s7 s9 s41 
#  s43
#! s3 s7 s9 s44 
#  s44
#! s3 s7 s9 s43 s45 
#  s45
#! s3 s7 s9 s44 s46 
#  s46
#! s3 s7 s9 s45 
#  s47
#! s3 s7 s9 s48 
#  s48
#! s3 s7 s9 s47 s49 
#  s49
#! s3 s7 s9 s48 s50 
#  s50
#! s3 s7 s9 s49 
#  s51
#! s3 s7 s9 s52 
#  s52
#! s3 s7 s9 s51 s53 
#  s53
#! s3 s7 s9 s52 s54 
#  s54
#! s3 s7 s9 s53 
#  s55
#! s3 s7 s9 s56 
#  s56
#! s3 s7 s9 s55 s57 
#  s57
#! s3 s7 s9 s56 s58 
#  s58
#! s3 s7 s9 s57 
#  s59
#! s3 s7 s9 
#  s60
#! s3 
#= $2 
#CFG
#1 2 17
#2 3 16
#3 4 15
#4 5 14
#5 6 13
#6 7 12
#7 8 11
#8 9 10
#9 10
#10 11
#11 12
#12 13
#13 14
#14 15
#15 16 17
#16 16 17
#17
#---BB1---
# $4 $5 $31 
	move	s1,$4
	move	s2,$5
	move	s3,$31
	addiu	s4,s2,-1
	andi	s5,s4,0x7
	andi	s6,s1,0x1
	srl	s7,s1,1
	sll	s8,s6,1
	move	s9,s4
	blez	s4,$L38
	nop
#---BB2---
# s1 s2 s3 s5 s7 s8 s9 
	beq	s5,$0,$L6
	nop
#---BB3---
# s1 s2 s3 s5 s7 s8 s9 
	li	s10,1			# 0x1
	beq	s5,s10,$L32
	nop
#---BB4---
# s1 s2 s3 s5 s7 s8 s9 
	li	s11,2			# 0x2
	beq	s5,s11,$L33
	nop
#---BB5---
# s1 s2 s3 s5 s7 s8 s9 
	li	s12,3			# 0x3
	beq	s5,s12,$L34
	nop
#---BB6---
# s1 s2 s3 s5 s7 s8 s9 
	li	s13,4			# 0x4
	beq	s5,s13,$L35
	nop
#---BB7---
# s1 s2 s3 s5 s7 s8 s9 
	li	s14,5			# 0x5
	beq	s5,s14,$L36
	nop
#---BB8---
# s1 s2 s3 s5 s7 s8 s9 
	li	s15,6			# 0x6
	beq	s5,s15,$L37
	nop
#---BB9---
# s1 s2 s3 s7 s8 
	andi	s16,s7,0x1
	or	s17,s16,s8
	srl	s7,s1,2
	sll	s8,s17,1
	addiu	s9,s2,-2
$L37:
#---BB10---
# s3 s7 s8 s9 
	andi	s18,s7,0x1
	or	s19,s18,s8
	srl	s7,s7,1
	sll	s8,s19,1
	addiu	s9,s9,-1
$L36:
#---BB11---
# s3 s7 s8 s9 
	andi	s20,s7,0x1
	or	s21,s20,s8
	srl	s7,s7,1
	sll	s8,s21,1
	addiu	s9,s9,-1
$L35:
#---BB12---
# s3 s7 s8 s9 
	andi	s22,s7,0x1
	or	s23,s22,s8
	srl	s7,s7,1
	sll	s8,s23,1
	addiu	s9,s9,-1
$L34:
#---BB13---
# s3 s7 s8 s9 
	andi	s24,s7,0x1
	or	s25,s24,s8
	srl	s7,s7,1
	sll	s8,s25,1
	addiu	s9,s9,-1
$L33:
#---BB14---
# s3 s7 s8 s9 
	andi	s26,s7,0x1
	or	s27,s26,s8
	srl	s7,s7,1
	sll	s8,s27,1
	addiu	s9,s9,-1
$L32:
#---BB15---
# s3 s7 s8 s9 
	andi	s28,s7,0x1
	or	s29,s28,s8
	srl	s7,s7,1
	sll	s8,s29,1
	addiu	s9,s9,-1
	blez	s9,$L38
	nop
$L6:
#---BB16---
# s3 s7 s8 s9 
	andi	s30,s7,0x1
	or	s31,s30,s8
	srl	s32,s7,1
	sll	s33,s31,1
	andi	s34,s32,0x1
	or	s35,s34,s33
	srl	s36,s7,2
	sll	s37,s35,1
	andi	s38,s36,0x1
	or	s39,s38,s37
	srl	s40,s7,3
	sll	s41,s39,1
	andi	s42,s40,0x1
	or	s43,s42,s41
	srl	s44,s7,4
	sll	s45,s43,1
	andi	s46,s44,0x1
	or	s47,s46,s45
	srl	s48,s7,5
	sll	s49,s47,1
	andi	s50,s48,0x1
	or	s51,s50,s49
	srl	s52,s7,6
	sll	s53,s51,1
	andi	s54,s52,0x1
	or	s55,s54,s53
	srl	s56,s7,7
	sll	s57,s55,1
	andi	s58,s56,0x1
	or	s59,s58,s57
	srl	s7,s7,8
	sll	s8,s59,1
	addiu	s9,s9,-8
	bgtz	s9,$L6
	nop
$L38:
#---BB17---
# s3 s8 
	srl	s60,s8,1
	move	$2,s60
	j	s3
	nop
	.set	macro
	.set	reorder
	.end	bi_reverse
	.size	bi_reverse, .-bi_reverse
	.align	2
	.globl	bi_windup
	.set	nomips16
	.ent	bi_windup
bi_windup:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s23 $2
# s7 $2
# s29 $3
# s28 $3
# s27 $8
# s26 $3
# s25 $3
# s5 $16
# s24 $9
# s22 $3
# s21 $3
# s20 $3
# s19 $3
# s2 $17
# s1 $18
# s4 $19
# s3 $20
# s18 $8
# s17 $3
# s16 $3
# s15 $8
# s14 $9
# s11 $21
# s13 $3
# s12 $8
# s10 $3
# s9 $3
# s8 $10
# s6 $3
#Interference Graph
#  s1
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s22 
#  s2
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s3 s4 s5 s6 s7 s11 s14 s15 s16 s17 s18 s19 s20 s21 
#! s22 
#  s3
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s22 
#  s4
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s22 
#  s5
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 
#  s6
#! s1 s2 s3 s4 s5 s7 
#  s7
#! s1 s2 s3 s4 s5 s6 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 
#! s18 s19 s22 s24 s25 s26 s27 s28 s29 
#= $2 
#  s8
#! s1 s3 s4 s5 s7 s9 s10 s11 s12 s13 s24 s25 s26 s27 s28 
#  s9
#! s1 s3 s4 s5 s7 s8 
#  s10
#! s1 s3 s4 s5 s7 s8 
#  s11
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s5 s7 s8 s12 s13 s14 
#  s12
#! s1 s3 s4 s5 s7 s8 s11 s13 
#  s13
#! s1 s3 s4 s5 s7 s8 s11 s12 
#  s14
#! s1 s2 s3 s4 s5 s7 s11 s15 s16 s17 
#  s15
#! s1 s2 s3 s4 s5 s7 s14 s16 s17 
#  s16
#! s1 s2 s3 s4 s5 s7 s14 s15 
#  s17
#! s1 s2 s3 s4 s5 s7 s14 s15 
#  s18
#! s1 s2 s3 s4 s5 s7 s19 
#  s19
#! s1 s2 s3 s4 s5 s7 s18 
#  s20
#! s1 s2 s5 
#  s21
#! s1 s2 s5 
#  s22
#! s1 s2 s3 s4 s5 s7 
#  s23
#! s5 
#= $2 
#  s24
#! s5 s7 s8 s25 s26 s27 
#  s25
#! s5 s7 s8 s24 
#  s26
#! s5 s7 s8 s24 
#  s27
#! s5 s7 s8 s24 s28 
#  s28
#! s5 s7 s8 s27 
#  s29
#! s5 s7 
#CFG
#1 2 6
#2 3 10
#3 4 11
#4 5 8
#5
#6 5 7
#7 5 8
#8 9
#9
#10
#11 12
#12 4
#---BB1---
# $4 $5 $6 $7 $31 
	move	s1,$4
	move	s2,$5
	move	s3,$6
	move	s4,$7
	move	s5,$31
	addiu	$sp,$sp,-24
	lw	s6,%gp_rel(bi_valid)($28)
	nop
	slt	s7,s6,9
	bne	s7,$0,$L40
	nop
#---BB2---
# s1 s3 s4 s5 s7 
	lw	s8,%gp_rel(outcnt)($28)
	nop
	sltu	s9,s8,16382
	bne	s9,$0,$L46
	nop
#---BB3---
# s1 s3 s4 s5 s7 s8 
	lui	s10,%hi(outbuf)
	addiu	s11,s10,%lo(outbuf)
	addu	s12,s8,s11
	lhu	s13,%gp_rel(bi_buf)($28)
	nop
	sb	s13,0(s12)
	addiu	s14,s8,1
	sw	s14,%gp_rel(outcnt)($28)
	li	s2,16384			# 0x4000
	beq	s14,s2,$L47
	nop
$L43:
#---BB4---
# s1 s2 s3 s4 s5 s7 s11 s14 
	addu	s15,s14,s11
	lhu	s16,%gp_rel(bi_buf)($28)
	nop
	srl	s17,s16,8
	sb	s17,0(s15)
	addiu	s18,s14,1
	sw	s18,%gp_rel(outcnt)($28)
	li	s19,16384			# 0x4000
	beq	s18,s19,$L45
	nop
$L42:
#---BB5---
# s5 s7 
	sh	$0,%gp_rel(bi_buf)($28)
	sw	$0,%gp_rel(bi_valid)($28)
	addiu	$sp,$sp,24
	move	$2,s7
	j	s5
	nop
$L40:
#---BB6---
# s2 s5 s6 s7 
	blez	s6,$L42
	nop
#---BB7---
# s2 s5 
	lw	s1,%gp_rel(outcnt)($28)
	lui	s20,%hi(outbuf)
	addiu	s21,s20,%lo(outbuf)
	addu	s3,s1,s21
	lhu	s4,%gp_rel(bi_buf)($28)
	nop
	sb	s4,0(s3)
	addiu	s22,s1,1
	sw	s22,%gp_rel(outcnt)($28)
	li	s7,16384			# 0x4000
	bne	s22,s7,$L42
	nop
$L45:
#---BB8---
# s1 s2 s3 s4 s5 
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
#---BB9---
# $2 s5 
	move	s23,$2
	sh	$0,%gp_rel(bi_buf)($28)
	sw	$0,%gp_rel(bi_valid)($28)
	addiu	$sp,$sp,24
	move	$2,s23
	j	s5
	nop
$L46:
#---BB10---
# s5 s7 s8 
	lhu	s24,%gp_rel(bi_buf)($28)
	lui	s25,%hi(outbuf)
	addiu	s26,s25,%lo(outbuf)
	addu	s27,s8,s26
	sb	s24,0(s27)
	srl	s28,s24,8
	sb	s28,1(s27)
	addiu	s29,s8,2
	sw	s29,%gp_rel(outcnt)($28)
	sh	$0,%gp_rel(bi_buf)($28)
	sw	$0,%gp_rel(bi_valid)($28)
	addiu	$sp,$sp,24
	move	$2,s7
	j	s5
	nop
$L47:
#---BB11---
# s1 s2 s3 s4 s5 s11 
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
#---BB12---
# $2 s1 s2 s3 s4 s5 s11 
	move	s7,$2
	lw	s14,%gp_rel(outcnt)($28)
	j	$L43
	nop
	.set	macro
	.set	reorder
	.end	bi_windup
	.size	bi_windup, .-bi_windup
	.align	2
	.globl	send_bits
	.set	nomips16
	.ent	send_bits
send_bits:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s37 $7
# s36 $4
# s15 $7
# s2 s5 $16
# s1 s4 $17
# s3 $18
# s35 $19
# s13 $20
# s14 $4
# s9 $2
# s39 $3
# s38 $8
# s32 $21
# s34 $3
# s33 $3
# s31 $3
# s30 $3
# s29 $3
# s28 $3
# s27 $8
# s26 $3
# s25 $3
# s24 $3
# s23 $3
# s22 $3
# s21 $8
# s20 $3
# s19 $3
# s6 $9
# s18 $8
# s17 $3
# s16 $3
# s12 $3
# s11 $3
# s10 $8
# s8 $3
# s7 $3
#Interference Graph
#  s1
#! $5 $31 s2 s3 
#= $4 s4 
#  s2
#! $31 s1 s3 s4 
#= $5 s5 
#  s3
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 
#! s33 s34 s35 s36 s37 s38 s39 
#  s4
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s2 s3 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 
#! s18 s19 s20 s31 s32 s33 s34 s35 s36 s37 s38 s39 
#= s1 
#  s5
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s3 s4 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 
#! s19 s20 s21 s22 s23 s24 s25 s27 s28 s29 s31 s32 s33 s34 s35 s36 
#! s37 s38 s39 
#= s2 
#  s6
#! s3 s4 s5 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 
#! s20 s21 s22 s23 s24 s27 s28 s29 
#  s7
#! s3 s4 s5 s6 
#  s8
#! s3 s4 s5 s6 
#  s9
#! s3 s4 s5 s6 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 
#! s22 s23 s24 s25 s26 s27 s28 s29 s30 s34 s35 s36 s37 s38 s39 
#= $2 
#  s10
#! s3 s4 s5 s6 s9 s11 
#  s11
#! s3 s4 s5 s6 s9 s10 
#  s12
#! s3 s4 s5 s6 s9 
#  s13
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s3 s4 s5 s6 s9 s14 s15 s16 s17 s18 s31 s32 s33 s34 s35 
#! s36 s37 s38 s39 
#  s14
#! s3 s4 s5 s6 s9 s13 s15 s16 s17 s18 s19 s31 s32 s33 s34 s35 
#= $4 
#  s15
#! $4 $5 $6 s3 s4 s5 s6 s9 s13 s14 s31 s32 s33 s34 s35 
#= $7 
#  s16
#! s3 s4 s5 s6 s9 s13 s14 
#  s17
#! s3 s4 s5 s6 s9 s13 s14 
#  s18
#! s3 s4 s5 s6 s9 s13 s14 s19 
#  s19
#! s3 s4 s5 s6 s9 s14 s18 
#  s20
#! s3 s4 s5 s6 s9 
#  s21
#! s3 s5 s6 s9 s22 s23 
#  s22
#! s3 s5 s6 s9 s21 
#  s23
#! s3 s5 s6 s9 s21 
#  s24
#! s3 s5 s6 s9 
#  s25
#! s3 s5 s9 
#  s26
#! s3 s9 
#  s27
#! s3 s5 s6 s9 s28 
#  s28
#! s3 s5 s6 s9 s27 
#  s29
#! s3 s5 s6 s9 
#  s30
#! s3 s9 
#  s31
#! s3 s4 s5 s13 s14 s15 
#  s32
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s3 s4 s5 s13 s14 s15 s33 s34 s35 
#  s33
#! s3 s4 s5 s13 s14 s15 s32 
#  s34
#! s3 s4 s5 s9 s13 s14 s15 s32 s35 s36 s37 
#  s35
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s3 s4 s5 s9 s13 s14 s15 s32 s34 s36 s37 s38 s39 
#  s36
#! s3 s4 s5 s9 s13 s34 s35 s37 s38 s39 
#= $4 
#  s37
#! $4 $5 $6 s3 s4 s5 s9 s13 s34 s35 s36 s38 s39 
#= $7 
#  s38
#! s3 s4 s5 s9 s13 s35 s36 s37 s39 
#  s39
#! s3 s4 s5 s9 s13 s35 s36 s37 s38 
#CFG
#1 2 5
#2 3 6
#3 4
#4
#5
#6 7 11
#7 8 9
#8 4
#9 10
#10 4
#11 12
#12 7
#---BB1---
# $4 $5 $31 
	move	s1,$4
	move	s2,$5
	move	s3,$31
	addiu	$sp,$sp,-32
	move	s4,s1
	move	s5,s2
	lw	s6,%gp_rel(bi_valid)($28)
	li	s7,16			# 0x10
	subu	s8,s7,s5
	slt	s9,s8,s6
	beq	s9,$0,$L49
	nop
#---BB2---
# s3 s4 s5 s6 s9 
	sll	s10,s4,s6
	lhu	s11,%gp_rel(bi_buf)($28)
	nop
	or	s12,s10,s11
	andi	s13,s12,0xffff
	sh	s13,%gp_rel(bi_buf)($28)
	lw	s14,%gp_rel(outcnt)($28)
	nop
	sltu	s15,s14,16382
	beq	s15,$0,$L50
	nop
#---BB3---
# s3 s4 s5 s6 s9 s13 s14 
	lui	s16,%hi(outbuf)
	addiu	s17,s16,%lo(outbuf)
	addu	s18,s14,s17
	sb	s13,0(s18)
	srl	s19,s13,8
	sb	s19,1(s18)
	addiu	s20,s14,2
	sw	s20,%gp_rel(outcnt)($28)
$L51:
#---BB4---
# s3 s4 s5 s6 s9 
	andi	s21,s4,0xffff
	li	s22,16			# 0x10
	subu	s23,s22,s6
	sra	s24,s21,s23
	sh	s24,%gp_rel(bi_buf)($28)
	addiu	s25,s6,-16
	addu	s26,s25,s5
	sw	s26,%gp_rel(bi_valid)($28)
	addiu	$sp,$sp,32
	move	$2,s9
	j	s3
	nop
$L49:
#---BB5---
# s3 s4 s5 s6 s9 
	sll	s27,s4,s6
	lhu	s28,%gp_rel(bi_buf)($28)
	nop
	or	s29,s27,s28
	sh	s29,%gp_rel(bi_buf)($28)
	addu	s30,s5,s6
	sw	s30,%gp_rel(bi_valid)($28)
	addiu	$sp,$sp,32
	move	$2,s9
	j	s3
	nop
$L50:
#---BB6---
# s3 s4 s5 s13 s14 s15 
	lui	s31,%hi(outbuf)
	addiu	s32,s31,%lo(outbuf)
	addu	s33,s14,s32
	sb	s13,0(s33)
	addiu	s34,s14,1
	sw	s34,%gp_rel(outcnt)($28)
	li	s35,16384			# 0x4000
	beq	s34,s35,$L58
	nop
$L52:
#---BB7---
# s3 s4 s5 s13 s32 s34 s35 
	addu	s36,s34,s32
	lhu	s37,%gp_rel(bi_buf)($28)
	nop
	srl	s9,s37,8
	sb	s9,0(s36)
	addiu	s38,s34,1
	sw	s38,%gp_rel(outcnt)($28)
	li	s39,16384			# 0x4000
	beq	s38,s39,$L56
	nop
#---BB8---
# s3 s4 s5 s9 
	lw	s6,%gp_rel(bi_valid)($28)
	j	$L51
	nop
$L56:
#---BB9---
# s3 s4 s5 s13 s35 s36 s37 
	move	$4,s36
	move	$5,s35
	move	$6,s13
	move	$7,s37
	jal	flush_outbuf
	nop
#---BB10---
# $2 s3 s4 s5 
	move	s9,$2
	lw	s6,%gp_rel(bi_valid)($28)
	j	$L51
	nop
$L58:
#---BB11---
# s3 s4 s5 s13 s14 s15 s32 s35 
	move	$4,s14
	move	$5,s35
	move	$6,s13
	move	$7,s15
	jal	flush_outbuf
	nop
#---BB12---
# s3 s4 s5 s13 s32 s35 
	lw	s34,%gp_rel(outcnt)($28)
	j	$L52
	nop
	.set	macro
	.set	reorder
	.end	send_bits
	.size	send_bits, .-send_bits
	.align	2
	.globl	copy_block
	.set	nomips16
	.ent	copy_block
copy_block:
	.frame	$sp,40,$31		# vars= 0, regs= 6/0, args= 16, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s31 $16
# s26 $17
# s7 $18
# s6 $19
# s4 $20
# s3 $21
# s2 $22
# s1 $23
# s24 $3
# s41 $16
# s40 $17
# s57 spill
# s42 $3
# s58 $18
# s13 $16
# s8 $17
# s5 spill
# s39 $2
# s22 $4
# s82 $3
# s81 $3
# s80 $3
# s79 $8
# s78 $3
# s77 $8
# s76 $3
# s75 $8
# s74 $9
# s73 $3
# s72 $8
# s71 $8
# s70 $9
# s69 $3
# s68 $8
# s67 $3
# s66 $3
# s65 $3
# s64 $3
# s63 $3
# s62 $8
# s61 $9
# s60 $3
# s59 $8
# s56 $9
# s55 $3
# s54 $8
# s53 $9
# s52 $3
# s51 $3
# s50 $8
# s49 $9
# s48 $3
# s47 $3
# s46 $8
# s45 $8
# s44 $8
# s43 $9
# s38 $3
# s37 $3
# s36 $3
# s35 $8
# s34 $8
# s33 $8
# s32 $9
# s30 $10
# s29 $8
# s28 $9
# s27 $8
# s25 $8
# s23 $3
# s21 $3
# s20 $8
# s19 $3
# s18 $3
# s17 $8
# s16 $9
# s15 $3
# s14 $8
# s12 $3
# s11 $3
# s10 $3
# s9 $8
#Interference Graph
#  s1
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s24 s26 s31 s34 s35 s36 s37 s38 s39 s40 s41 
#! s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 s52 s53 s54 s55 s56 s57 
#! s58 s59 s60 s61 s62 s63 s64 s65 s66 s67 s68 s69 s72 s73 s74 s75 
#! s76 s77 s78 
#  s2
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 
#! s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 
#! s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 
#! s65 s66 s67 s68 s69 s70 s71 s72 s73 s74 s75 s77 s78 s79 s80 s81 
#! s82 
#  s3
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 
#! s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s45 s46 s47 s48 s49 s50 
#! s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 s67 
#! s68 s69 s72 s73 s74 s75 s76 s77 s78 s79 s80 s81 s82 
#  s4
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 
#! s33 s34 s35 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 
#! s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 
#! s67 s68 s69 s70 s71 s72 s73 s74 s75 s76 s77 s78 s82 
#  s5
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 
#! s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 
#! s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 
#! s65 s66 s67 s68 s69 s70 s71 s72 s73 s74 s75 s76 s77 s78 s79 s80 
#! s81 s82 
#  s6
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s5 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 
#! s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 
#! s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s66 s67 s68 s69 s70 
#! s71 s72 s73 s74 s75 s76 s77 s78 s79 s80 s81 s82 
#  s7
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s5 s6 s8 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 
#! s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 
#! s49 s50 s51 s52 s53 s54 s55 s56 s57 s66 s67 s68 s69 s70 s71 s72 
#! s73 s74 s75 s76 s77 s78 s79 s80 s81 s82 
#  s8
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s5 s6 s7 s9 s10 s11 s12 s13 s14 s15 s16 
#! s17 s18 s19 s20 s21 s66 s67 s68 s69 s79 s80 s81 s82 
#  s9
#! s1 s2 s3 s4 s5 s6 s7 s8 s10 
#  s10
#! s1 s2 s3 s4 s5 s6 s7 s8 s9 
#  s11
#! s1 s2 s3 s4 s5 s6 s7 s8 
#  s12
#! s1 s2 s3 s4 s5 s6 s7 s8 
#  s13
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s5 s6 s7 s8 s14 s15 s16 
#  s14
#! s1 s2 s3 s4 s5 s6 s7 s8 s13 s15 
#  s15
#! s1 s2 s3 s4 s5 s6 s7 s8 s13 s14 
#  s16
#! s1 s2 s3 s4 s5 s6 s7 s8 s13 s17 s18 s19 
#  s17
#! s1 s2 s3 s4 s5 s6 s7 s8 s16 s18 s19 
#  s18
#! s1 s2 s3 s4 s5 s6 s7 s8 s16 s17 
#  s19
#! s1 s2 s3 s4 s5 s6 s7 s8 s16 s17 
#  s20
#! s1 s2 s3 s4 s5 s6 s7 s8 s21 
#  s21
#! s1 s2 s3 s4 s5 s6 s7 s8 s20 
#  s22
#! s2 s3 s4 s5 s6 s7 s23 s24 s25 s26 s27 s28 s29 s31 s70 s71 
#= $4 
#  s23
#! s2 s3 s4 s5 s6 s7 s22 
#  s24
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s5 s6 s7 s22 s25 s26 s27 s28 s29 s30 s31 
#! s32 s33 s34 s35 s70 s71 s72 
#  s25
#! s2 s3 s4 s5 s6 s7 s22 s24 
#  s26
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s5 s6 s7 s22 s24 s27 s28 s29 s30 s31 s32 
#! s33 s34 s70 s71 s72 s73 s74 
#  s27
#! s2 s3 s4 s5 s6 s7 s22 s24 s26 
#  s28
#! s2 s3 s4 s5 s6 s7 s22 s24 s26 s29 
#  s29
#! s2 s3 s4 s5 s6 s7 s22 s24 s26 s28 
#  s30
#! s2 s3 s4 s5 s6 s7 s24 s26 s31 s32 s33 
#  s31
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s5 s6 s7 s22 s24 s26 s30 s32 s33 s34 s35 
#! s36 s70 s71 s72 s73 s74 s75 
#  s32
#! s2 s3 s4 s5 s6 s7 s24 s26 s30 s31 s33 
#  s33
#! s2 s3 s4 s5 s6 s7 s24 s26 s30 s31 s32 
#  s34
#! s1 s2 s3 s4 s5 s6 s7 s24 s26 s31 
#  s35
#! s1 s2 s3 s4 s5 s6 s7 s24 s31 s36 s37 
#  s36
#! s1 s2 s3 s5 s6 s7 s31 s35 
#  s37
#! s1 s2 s3 s4 s5 s6 s7 s35 
#  s38
#! s1 s2 s3 s4 s5 s6 s7 
#  s39
#! s1 s2 s3 s4 s5 s6 s7 s40 s41 s42 s43 s44 s45 s46 s47 s48 
#! s49 s50 s51 s52 s57 s58 s64 s65 
#= $2 
#  s40
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s5 s6 s7 s39 s41 s42 s43 s44 s45 s46 s47 
#! s48 s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 
#! s64 s65 
#  s41
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s5 s6 s7 s39 s40 s42 s43 s44 s45 s46 s47 
#! s48 s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 
#! s64 s65 
#  s42
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s5 s6 s7 s39 s40 s41 s43 s44 s45 
#  s43
#! s1 s2 s4 s5 s6 s7 s39 s40 s41 s42 s44 
#  s44
#! s1 s2 s4 s5 s6 s7 s39 s40 s41 s42 s43 
#  s45
#! s1 s2 s3 s4 s5 s6 s7 s39 s40 s41 s42 
#  s46
#! s1 s2 s3 s4 s5 s6 s7 s39 s40 s41 s47 
#  s47
#! s1 s2 s3 s4 s5 s6 s7 s39 s40 s41 s46 
#  s48
#! s1 s2 s3 s4 s5 s6 s7 s39 s40 s41 
#  s49
#! s1 s2 s3 s4 s5 s6 s7 s39 s40 s41 s50 s51 
#  s50
#! s1 s2 s3 s4 s5 s6 s7 s39 s40 s41 s49 s51 
#  s51
#! s1 s2 s3 s4 s5 s6 s7 s39 s40 s41 s49 s50 
#  s52
#! s1 s2 s3 s4 s5 s6 s7 s39 s40 s41 
#  s53
#! s1 s2 s3 s4 s5 s6 s7 s40 s41 s54 s55 
#  s54
#! s1 s2 s3 s4 s5 s6 s7 s40 s41 s53 s55 
#  s55
#! s1 s2 s3 s4 s5 s6 s7 s40 s41 s53 s54 
#  s56
#! s1 s2 s3 s4 s5 s6 s7 s40 s41 s57 s58 s59 s60 
#  s57
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s5 s6 s7 s39 s40 s41 s56 s58 s59 s60 s61 
#! s62 s63 s64 s65 
#  s58
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s3 s4 s5 s6 s39 s40 s41 s56 s57 s59 s60 s61 s62 
#! s63 s64 s65 
#  s59
#! s1 s2 s3 s4 s5 s6 s40 s41 s56 s57 s58 s60 
#  s60
#! s1 s2 s3 s4 s5 s40 s41 s56 s57 s58 s59 
#  s61
#! s1 s2 s3 s4 s5 s40 s41 s57 s58 s62 s63 
#  s62
#! s1 s2 s3 s4 s5 s40 s41 s57 s58 s61 s63 
#  s63
#! s1 s2 s3 s4 s5 s40 s41 s57 s58 s61 s62 
#  s64
#! s1 s2 s3 s4 s5 s39 s40 s41 s57 s58 
#  s65
#! s1 s2 s3 s4 s5 s39 s40 s41 s57 s58 
#  s66
#! s1 s2 s5 s6 s7 s8 
#  s67
#! s1 s2 s3 s4 s5 s6 s7 s8 
#  s68
#! s1 s2 s3 s4 s5 s6 s7 s8 s69 
#  s69
#! s1 s2 s3 s4 s5 s6 s7 s8 s68 
#  s70
#! s2 s4 s5 s6 s7 s22 s24 s26 s31 s71 
#  s71
#! s2 s4 s5 s6 s7 s22 s24 s26 s31 s70 
#  s72
#! s1 s2 s3 s4 s5 s6 s7 s24 s26 s31 s73 
#  s73
#! s1 s2 s3 s4 s5 s6 s7 s26 s31 s72 
#  s74
#! s1 s2 s3 s4 s5 s6 s7 s26 s31 s75 s76 
#  s75
#! s1 s2 s3 s4 s5 s6 s7 s31 s74 s76 
#  s76
#! s1 s3 s4 s5 s6 s7 s74 s75 
#  s77
#! s1 s2 s3 s4 s5 s6 s7 s78 
#  s78
#! s1 s2 s3 s4 s5 s6 s7 s77 
#  s79
#! s2 s3 s5 s6 s7 s8 s80 s81 s82 
#  s80
#! s2 s3 s5 s6 s7 s8 s79 
#  s81
#! s2 s3 s5 s6 s7 s8 s79 
#  s82
#! s2 s3 s4 s5 s6 s7 s8 s79 
#CFG
#1 2 27
#2 3 38
#3 4 51
#4 5 29
#5 6 11
#6 7 33
#7 8 55
#8 9 57
#9 10 34
#10 11
#11 12 19
#12 13 49
#13 14 19
#14 15 17
#15 16 47
#16 17
#17 18 45
#18 19
#19 20 26
#20 21 43
#21 22 41
#22 23 39
#23 24 31
#24 25
#25 20 26
#26
#27 5 28
#28 5 29
#29 30
#30 5
#31 32
#32 25
#33 10 34
#34 35 53
#35 11 36
#36 37
#37 11
#38 5
#39 40
#40 23
#41 42
#42 22
#43 44
#44 21
#45 46
#46 19
#47 48
#48 16
#49 50
#50 13
#51 52
#52 4
#53 54
#54 35
#55 56
#56 8
#57 58
#58 9
#---BB1---
# $4 $5 $6 $7 $31 
	move	s1,$4
	move	s2,$5
	move	s3,$6
	move	s4,$7
	move	s5,$31
	addiu	$sp,$sp,-40
	move	s6,s1
	move	s7,s2
	move	s8,s3
	lw	s9,%gp_rel(bi_valid)($28)
	nop
	slt	s10,s9,9
	bne	s10,$0,$L60
	nop
#---BB2---
# s1 s3 s4 s5 s6 s7 s8 
	lw	s2,%gp_rel(outcnt)($28)
	nop
	sltu	s11,s2,16382
	bne	s11,$0,$L92
	nop
#---BB3---
# s1 s2 s3 s4 s5 s6 s7 s8 
	lui	s12,%hi(outbuf)
	addiu	s13,s12,%lo(outbuf)
	addu	s14,s2,s13
	lhu	s15,%gp_rel(bi_buf)($28)
	nop
	sb	s15,0(s14)
	addiu	s16,s2,1
	sw	s16,%gp_rel(outcnt)($28)
	li	s2,16384			# 0x4000
	beq	s16,s2,$L93
	nop
$L63:
#---BB4---
# s1 s2 s3 s4 s5 s6 s7 s8 s13 s16 
	addu	s17,s16,s13
	lhu	s18,%gp_rel(bi_buf)($28)
	nop
	srl	s19,s18,8
	sb	s19,0(s17)
	addiu	s20,s16,1
	sw	s20,%gp_rel(outcnt)($28)
	li	s21,16384			# 0x4000
	beq	s20,s21,$L91
	nop
$L62:
#---BB5---
# s1 s2 s3 s4 s5 s6 s7 s8 
	sh	$0,%gp_rel(bi_buf)($28)
	sw	$0,%gp_rel(bi_valid)($28)
	beq	s8,$0,$L64
	nop
#---BB6---
# s2 s3 s4 s5 s6 s7 
	lw	s22,%gp_rel(outcnt)($28)
	nop
	sltu	s23,s22,16382
	bne	s23,$0,$L94
	nop
#---BB7---
# s2 s3 s4 s5 s6 s7 s22 
	andi	s24,s7,0x00ff
	lui	s25,%hi(outbuf)
	addiu	s26,s25,%lo(outbuf)
	addu	s27,s22,s26
	sb	s24,0(s27)
	addiu	s28,s22,1
	sw	s28,%gp_rel(outcnt)($28)
	li	s29,16384			# 0x4000
	beq	s28,s29,$L95
	nop
$L67:
#---BB8---
# s2 s3 s4 s5 s6 s7 s24 s26 
	lw	s30,%gp_rel(outcnt)($28)
	andi	s31,s7,0xffff
	addu	s32,s30,s26
	srl	s33,s31,8
	sb	s33,0(s32)
	addiu	s1,s30,1
	sw	s1,%gp_rel(outcnt)($28)
	li	s34,16384			# 0x4000
	beq	s1,s34,$L96
	nop
$L66:
#---BB9---
# s1 s2 s4 s5 s6 s7 s24 s26 s31 
	sltu	s3,s1,16382
	beq	s3,$0,$L68
	nop
$L106:
#---BB10---
# s1 s2 s3 s5 s6 s7 s24 s26 s31 
	addu	s35,s1,s26
	nor	s36,$0,s24
	sb	s36,0(s35)
	xori	s4,s31,0xff00
	srl	s37,s4,8
	sb	s37,1(s35)
	addiu	s38,s1,2
	sw	s38,%gp_rel(outcnt)($28)
$L64:
#---BB11---
# s1 s2 s3 s4 s5 s6 s7 
	lui	s39,%hi(outbuf)
	addiu	s40,s39,%lo(outbuf)
	li	s41,16384			# 0x4000
	andi	s42,s7,0x3
	beq	s42,$0,$L88
	nop
#---BB12---
# s1 s2 s5 s6 s7 s39 s40 s41 s42 
	lw	s4,%gp_rel(outcnt)($28)
	nop
	addu	s43,s4,s40
	lbu	s44,0(s6)
	nop
	sb	s44,0(s43)
	addiu	s3,s4,1
	sw	s3,%gp_rel(outcnt)($28)
	beq	s3,s41,$L97
	nop
$L74:
#---BB13---
# s2 s3 s4 s5 s6 s7 s39 s40 s41 s42 
	addiu	s6,s6,1
	addiu	s7,s7,-1
	li	s1,1			# 0x1
	beq	s42,s1,$L88
	nop
#---BB14---
# s1 s2 s3 s4 s5 s6 s7 s39 s40 s41 s42 
	li	s45,2			# 0x2
	beq	s42,s45,$L78
	nop
#---BB15---
# s1 s3 s4 s5 s6 s7 s39 s40 s41 
	lw	s46,%gp_rel(outcnt)($28)
	nop
	addu	s2,s46,s40
	lbu	s47,0(s6)
	nop
	sb	s47,0(s2)
	addiu	s48,s46,1
	sw	s48,%gp_rel(outcnt)($28)
	beq	s48,s41,$L98
	nop
$L76:
#---BB16---
# s1 s2 s3 s4 s5 s6 s7 s39 s40 s41 
	addiu	s6,s6,1
	addiu	s7,s7,-1
$L78:
#---BB17---
# s1 s2 s3 s4 s5 s6 s7 s39 s40 s41 
	lw	s49,%gp_rel(outcnt)($28)
	nop
	addu	s50,s49,s40
	lbu	s51,0(s6)
	nop
	sb	s51,0(s50)
	addiu	s52,s49,1
	sw	s52,%gp_rel(outcnt)($28)
	beq	s52,s41,$L99
	nop
#---BB18---
# s1 s2 s3 s4 s5 s6 s7 s39 s40 s41 
	addiu	s6,s6,1
	addiu	s7,s7,-1
$L88:
#---BB19---
# s1 s2 s3 s4 s5 s6 s7 s39 s40 s41 
	beq	s7,$0,$L100
	nop
$L71:
#---BB20---
# s1 s2 s3 s4 s5 s6 s7 s40 s41 
	lw	s53,%gp_rel(outcnt)($28)
	nop
	addu	s54,s53,s40
	lbu	s55,0(s6)
	nop
	sb	s55,0(s54)
	addiu	s56,s53,1
	sw	s56,%gp_rel(outcnt)($28)
	beq	s56,s41,$L101
	nop
$L70:
#---BB21---
# s1 s2 s3 s4 s5 s6 s7 s40 s41 s56 
	addiu	s57,s6,1
	addiu	s58,s7,-1
	addu	s59,s56,s40
	lbu	s60,1(s6)
	nop
	sb	s60,0(s59)
	addiu	s61,s56,1
	sw	s61,%gp_rel(outcnt)($28)
	beq	s61,s41,$L102
	nop
$L83:
#---BB22---
# s1 s2 s3 s4 s5 s40 s41 s57 s58 s61 
	addu	s62,s61,s40
	lbu	s63,1(s57)
	nop
	sb	s63,0(s62)
	addiu	s39,s61,1
	sw	s39,%gp_rel(outcnt)($28)
	beq	s39,s41,$L103
	nop
$L85:
#---BB23---
# s1 s2 s4 s5 s39 s40 s41 s57 s58 
	addu	s3,s39,s40
	lbu	s64,2(s57)
	nop
	sb	s64,0(s3)
	addiu	s65,s39,1
	sw	s65,%gp_rel(outcnt)($28)
	beq	s65,s41,$L104
	nop
#---BB24---
# s1 s2 s3 s4 s5 s39 s40 s41 s57 s58 
	addiu	s6,s57,3
	addiu	s7,s58,-3
$L105:
#---BB25---
# s1 s2 s3 s4 s5 s6 s7 s39 s40 s41 
	bne	s7,$0,$L71
	nop
$L100:
#---BB26---
# s5 s39 
	addiu	$sp,$sp,40
	move	$2,s39
	j	s5
	nop
$L60:
#---BB27---
# s1 s2 s3 s4 s5 s6 s7 s8 s9 
	blez	s9,$L62
	nop
#---BB28---
# s2 s5 s6 s7 s8 
	lw	s1,%gp_rel(outcnt)($28)
	lui	s66,%hi(outbuf)
	addiu	s4,s66,%lo(outbuf)
	addu	s3,s1,s4
	lhu	s67,%gp_rel(bi_buf)($28)
	nop
	sb	s67,0(s3)
	addiu	s68,s1,1
	sw	s68,%gp_rel(outcnt)($28)
	li	s69,16384			# 0x4000
	bne	s68,s69,$L62
	nop
$L91:
#---BB29---
# s1 s2 s3 s4 s5 s6 s7 s8 
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
#---BB30---
# s1 s2 s3 s4 s5 s6 s7 s8 
	j	$L62
	nop
$L104:
#---BB31---
# s1 s2 s3 s4 s5 s40 s41 s57 s58 
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
#---BB32---
# $2 s1 s2 s3 s4 s5 s40 s41 s57 s58 
	move	s39,$2
	addiu	s6,s57,3
	addiu	s7,s58,-3
	j	$L105
	nop
$L94:
#---BB33---
# s4 s5 s6 s7 s22 
	andi	s24,s7,0x00ff
	lui	s2,%hi(outbuf)
	addiu	s26,s2,%lo(outbuf)
	addu	s70,s22,s26
	sb	s24,0(s70)
	andi	s31,s7,0xffff
	srl	s71,s31,8
	sb	s71,1(s70)
	addiu	s1,s22,2
	sltu	s3,s1,16382
	bne	s3,$0,$L106
	nop
$L68:
#---BB34---
# s1 s2 s3 s4 s5 s6 s7 s24 s26 s31 
	addu	s72,s1,s26
	nor	s73,$0,s24
	sb	s73,0(s72)
	addiu	s74,s1,1
	sw	s74,%gp_rel(outcnt)($28)
	li	s1,16384			# 0x4000
	beq	s74,s1,$L107
	nop
$L69:
#---BB35---
# s1 s3 s4 s5 s6 s7 s26 s31 s74 
	addu	s75,s74,s26
	xori	s76,s31,0xff00
	srl	s2,s76,8
	sb	s2,0(s75)
	addiu	s77,s74,1
	sw	s77,%gp_rel(outcnt)($28)
	li	s78,16384			# 0x4000
	bne	s77,s78,$L64
	nop
#---BB36---
# s1 s2 s3 s4 s5 s6 s7 
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
#---BB37---
# s1 s2 s3 s4 s5 s6 s7 
	j	$L64
	nop
$L92:
#---BB38---
# s2 s3 s5 s6 s7 s8 
	lhu	s79,%gp_rel(bi_buf)($28)
	lui	s80,%hi(outbuf)
	addiu	s81,s80,%lo(outbuf)
	addu	s82,s2,s81
	sb	s79,0(s82)
	srl	s4,s79,8
	sb	s4,1(s82)
	addiu	s1,s2,2
	sw	s1,%gp_rel(outcnt)($28)
	j	$L62
	nop
$L103:
#---BB39---
# s1 s2 s3 s4 s5 s40 s41 s57 s58 
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
#---BB40---
# s1 s2 s4 s5 s40 s41 s57 s58 
	lw	s39,%gp_rel(outcnt)($28)
	j	$L85
	nop
$L102:
#---BB41---
# s1 s2 s3 s4 s5 s40 s41 s57 s58 
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
#---BB42---
# s1 s2 s3 s4 s5 s40 s41 s57 s58 
	lw	s61,%gp_rel(outcnt)($28)
	j	$L83
	nop
$L101:
#---BB43---
# s1 s2 s3 s4 s5 s6 s7 s40 s41 
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
#---BB44---
# s1 s2 s3 s4 s5 s6 s7 s40 s41 
	lw	s56,%gp_rel(outcnt)($28)
	j	$L70
	nop
$L99:
#---BB45---
# s1 s2 s3 s4 s5 s6 s7 s40 s41 
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
#---BB46---
# $2 s1 s2 s3 s4 s5 s6 s7 s40 s41 
	move	s39,$2
	addiu	s6,s6,1
	addiu	s7,s7,-1
	j	$L88
	nop
$L98:
#---BB47---
# s1 s2 s3 s4 s5 s6 s7 s40 s41 
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
#---BB48---
# $2 s1 s2 s3 s4 s5 s6 s7 s40 s41 
	move	s39,$2
	j	$L76
	nop
$L97:
#---BB49---
# s1 s2 s3 s4 s5 s6 s7 s40 s41 s42 
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
#---BB50---
# $2 s2 s3 s4 s5 s6 s7 s40 s41 s42 
	move	s39,$2
	j	$L74
	nop
$L93:
#---BB51---
# s1 s2 s3 s4 s5 s6 s7 s8 s13 
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
#---BB52---
# s1 s2 s3 s4 s5 s6 s7 s8 s13 
	lw	s16,%gp_rel(outcnt)($28)
	j	$L63
	nop
$L107:
#---BB53---
# s1 s2 s3 s4 s5 s6 s7 s26 s31 
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
#---BB54---
# s1 s3 s4 s5 s6 s7 s26 s31 
	lw	s74,%gp_rel(outcnt)($28)
	j	$L69
	nop
$L95:
#---BB55---
# s2 s3 s4 s5 s6 s7 s22 s24 s26 
	move	$4,s22
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
#---BB56---
# s2 s3 s4 s5 s6 s7 s24 s26 
	j	$L67
	nop
$L96:
#---BB57---
# s1 s2 s3 s4 s5 s6 s7 s24 s26 s31 
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
#---BB58---
# s2 s4 s5 s6 s7 s24 s26 s31 
	lw	s1,%gp_rel(outcnt)($28)
	j	$L66
	nop
	.set	macro
	.set	reorder
	.end	copy_block
	.size	copy_block, .-copy_block
	.local	zfile
	.comm	zfile,4,4
	.local	bi_buf
	.comm	bi_buf,2,2
	.local	bi_valid
	.comm	bi_valid,4,4
	.comm	read_buf,4,4
	.ident	"GCC: (GNU) 4.3.0"
