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
	li	s7,1			# 0x1
	addiu	$sp,$sp,32
	move	$2,s7
	j	s3
	nop
$L5:
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
	beq	s4,s5,$L2
	nop
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
