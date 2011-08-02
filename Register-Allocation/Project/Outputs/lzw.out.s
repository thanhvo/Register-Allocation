	.file	1 "lzw.c"
	.section .mdebug.abi32
	.previous
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC0:
	.ascii	"output in compress .Z format not supported\012\000"
	.text
	.align	2
	.globl	lzw
	.set	nomips16
	.ent	lzw
lzw:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro

#Register Allocation Stack
# s14 $2
# s13 $7
# s12 $6
# s11 $5
# s10 $4
# s7 $2
# s3 $16
# s2 s5 $17
# s1 s4 $18
# s8 $19
# s9 $3
# s6 $3
#Interference Graph
#  s1
#! $5 $31 s2 s3 
#= $4 s4 
#  s2
#! $31 s1 s3 s4 
#= $5 s5 
#  s3
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s1 s2 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 
#  s4
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s2 s3 s5 s6 s8 s9 s10 s11 s12 s13 
#= s1 
#  s5
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s3 s4 s6 s8 s9 s10 s11 s12 s13 
#= s2 
#  s6
#! s3 s4 s5 
#  s7
#! s3 
#= $2 
#  s8
#! $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $24 $25 
#! $31 s3 s4 s5 s9 s10 s11 s12 s13 
#  s9
#! s3 s4 s5 s8 
#  s10
#! s3 s4 s5 s8 s11 s12 s13 
#= $4 
#  s11
#! $4 s3 s4 s5 s8 s10 s12 s13 
#= $5 
#  s12
#! $4 $5 s3 s4 s5 s8 s10 s11 s13 
#= $6 
#  s13
#! $4 $5 $6 s3 s4 s5 s8 s10 s11 s12 
#= $7 
#  s14
#! s3 
#= $2 
#CFG
#1 2 3
#2
#3 4
#4 2 5
#5
#---BB1---
# $4 $5 $31 
	move	s1,$4
	move	s2,$5
	move	s3,$31
	addiu	$sp,$sp,-32
	move	s4,s1
	move	s5,s2
	lw	s6,%gp_rel(msg_done)($28)
	nop
	beq	s6,$0,$L5
	nop
$L2:
#---BB2---
# s3 
	li	s7,1			# 0x1
	addiu	$sp,$sp,32
	move	$2,s7
	j	s3
	nop
$L5:
#---BB3---
# s3 s4 s5 
	li	s8,1			# 0x1
	sw	s8,%gp_rel(msg_done)($28)
	lui	s9,%hi($LC0)
	addiu	s10,s9,%lo($LC0)
	li	s11,1			# 0x1
	li	s12,43			# 0x2b
	lw	s13,%gp_rel(stderr)($28)
	move	$4,s10
	move	$5,s11
	move	$6,s12
	move	$7,s13
	jal	fwrite
	nop
#---BB4---
# s3 s4 s5 s8 
	beq	s4,s5,$L2
	nop
#---BB5---
# s3 s8 
	sw	s8,%gp_rel(exit_code)($28)
	li	s14,1			# 0x1
	addiu	$sp,$sp,32
	move	$2,s14
	j	s3
	nop
	.set	macro
	.set	reorder
	.end	lzw
	.size	lzw, .-lzw
	.local	msg_done
	.comm	msg_done,4,4
	.ident	"GCC: (GNU) 4.3.0"
