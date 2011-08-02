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
	move	s9,$2
	move	s10,s9
	addiu	s11,s9,-1
	sltu	s12,s11,-2
	beq	s12,$0,$L2
	nop
	move	s13,s5
	move	s14,s10
	move	$4,s13
	move	$5,s14
	jal	updcrc
	nop
	move	s15,$2
	
	sw	s15,%gp_rel(crc)($28)
	lw	s16,%gp_rel(bytes_in)($28)
	nop
	addu	s17,s16,s10
	sw	s17,%gp_rel(bytes_in)($28)
$L2:
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
	move	s20,$2
	sw	s20,%gp_rel(crc)($28)
	move	s21,s4
	move	$4,s21
	jal	bi_init
	nop
	addiu	s22,$sp,16
	addiu	s23,$28,%gp_rel(method)
	move	$4,s22
	move	$5,s23
	jal	ct_init
	nop
	lw	s24,%gp_rel(level)($28)
	addiu	s25,$sp,18
	move	$4,s24
	move	$5,s25
	jal	lm_init
	nop
	lw	s26,%gp_rel(outcnt)($28)
	nop
	addu	s27,s26,s8
	sb	s17,0(s27)
	addiu	s28,s26,1
	sw	s28,%gp_rel(outcnt)($28)
	li	s29,16384			# 0x4000
	beq	s28,s29,$L28
	nop
	addu	s30,s28,s8
	li	s31,3
	sb	s31,0(s30)
	addiu	s32,s28,1
	sw	s32,%gp_rel(outcnt)($28)
	li	s33,16384			# 0x4000
	beq	s32,s33,$L29
	nop
$L9:
	lw	s34,%gp_rel(save_orig_name)($28)
	nop
	bne	s34,$0,$L27
	nop
	lw	s35,%gp_rel(outcnt)($28)
	nop
$L10:
	sw	s35,%gp_rel(header_bytes)($28)
	move	$4,s35
	move	$5,s17
	move	$6,s36
	jal	deflate
	nop
	lw	s37,%gp_rel(outcnt)($28)
	nop
	sltu	s38,s37,16382
	beq	s38,$0,$L13
	nop
	lw	s39,%gp_rel(crc)($28)
	addu	s40,s37,s8
	sb	s39,0(s40)
	srl	s41,s39,8
	sb	s41,1(s40)
	addiu	s42,s37,2
$L14:
	sltu	s43,s42,16382
	beq	s43,$0,$L16
	nop
	srl	s44,s39,16
	addu	s45,s42,s8
	sb	s44,0(s45)
	srl	s46,s44,8
	sb	s46,1(s45)
	addiu	s47,s42,2
$L17:
	sltu	s48,s47,16382
	beq	s48,$0,$L19
	nop
	lw	s49,%gp_rel(bytes_in)($28)
	addu	s50,s47,s8
	sb	s49,0(s50)
	srl	s51,s49,8
	sb	s51,1(s50)
	addiu	s52,s47,2
$L20:
	sltu	s53,s52,16382
	bne	s53,$0,$L30
	nop
	addu	s54,s52,s8
	srl	s55,s49,16
	sb	s55,0(s54)
	addiu	s56,s52,1
	sw	s56,%gp_rel(outcnt)($28)
	li	s52,16384			# 0x4000
	beq	s56,s52,$L31
	nop
$L24:
	addu	s57,s56,s8
	srl	s58,s49,24
	sb	s58,0(s57)
	addiu	s59,s56,1
	sw	s59,%gp_rel(outcnt)($28)
	li	s49,16384			# 0x4000
	beq	s59,s49,$L32
	nop
$L23:
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
	move	s63,$0
	addiu	$sp,$sp,40
	move	$2,s63
	j	s3
	nop
$L19:
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
	move	$4,s52
	move	$5,s49
	move	$6,s62
	move	$7,s41
	jal	flush_outbuf
	nop
	lw	s52,%gp_rel(outcnt)($28)
	lw	s49,%gp_rel(bytes_in)($28)
	j	$L20
	nop
$L16:
	addu	s71,s42,s8
	srl	s62,s39,16
	sb	s62,0(s71)
	addiu	s72,s42,1
	sw	s72,%gp_rel(outcnt)($28)
	li	s73,16384			# 0x4000
	beq	s72,s73,$L34
	nop
$L18:
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
	move	$4,s47
	move	$5,s76
	move	$6,s62
	move	$7,s41
	jal	flush_outbuf
	nop
	lw	s47,%gp_rel(outcnt)($28)
	j	$L17
	nop
$L13:
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
	move	$4,s42
	move	$5,s39
	jal	flush_outbuf
	nop
	lw	s42,%gp_rel(outcnt)($28)
	lw	s39,%gp_rel(crc)($28)
	j	$L14
	nop
$L30:
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
	lui	s86,%hi(ifname)
	addiu	s87,s86,%lo(ifname)
	move	$4,s87
	move	$5,s17
	jal	basename
	nop
	move	s88,$2
	move	s89,s88
	lw	s35,%gp_rel(outcnt)($28)
	li	s90,16384			# 0x4000
	j	$L12
	nop
$L11:
	lb	s36,0(s89)
	nop
	beq	s36,$0,$L10
	nop
	addiu	s89,s89,1
$L12:
	addu	s91,s35,s8
	lbu	s17,0(s89)
	nop
	sb	s17,0(s91)
	addiu	s35,s35,1
	sw	s35,%gp_rel(outcnt)($28)
	bne	s35,s90,$L11
	nop
	move	$4,s35
	move	$5,s17
	move	$6,s36
	jal	flush_outbuf
	nop
	lw	s35,%gp_rel(outcnt)($28)
	j	$L11
	nop
$L32:
	move	$4,s52
	move	$5,s49
	move	$6,s62
	move	$7,s41
	jal	flush_outbuf
	nop
	j	$L23
	nop
$L31:
	move	$4,s52
	move	$5,s49
	move	$6,s62
	move	$7,s41
	jal	flush_outbuf
	nop
	lw	s49,%gp_rel(bytes_in)($28)
	lw	s56,%gp_rel(outcnt)($28)
	j	$L24
	nop
$L35:
	move	$4,s37
	move	$5,s39
	jal	flush_outbuf
	nop
	lw	s39,%gp_rel(crc)($28)
	j	$L15
	nop
$L33:
	move	$4,s47
	move	$5,s49
	move	$6,s62
	move	$7,s41
	jal	flush_outbuf
	nop
	lw	s49,%gp_rel(bytes_in)($28)
	j	$L21
	nop
$L34:
	move	$4,s73
	move	$5,s39
	move	$6,s62
	move	$7,s41
	jal	flush_outbuf
	nop
	lw	s39,%gp_rel(crc)($28)
	j	$L18
	nop
$L28:
	move	$4,s28
	move	$5,s17
	jal	flush_outbuf
	nop
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
	move	$4,s28
	move	$5,s17
	jal	flush_outbuf
	nop
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
