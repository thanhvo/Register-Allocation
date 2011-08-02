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
	
	move	s1,$4
	move	s2,$31
	sw	s1,%gp_rel(zfile)($28)
	sh	$0,%gp_rel(bi_buf)($28)
	sw	$0,%gp_rel(bi_valid)($28)
	li	s3,-1			# 0xffffffffffffffff
	beq	s1,s3,$L3
	nop
	lui	s4,%hi(file_read)
	addiu	s5,s4,%lo(file_read)
	sw	s5,%gp_rel(read_buf)($28)
$L3:
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
	beq	s5,$0,$L6
	nop
	li	s10,1			# 0x1
	beq	s5,s10,$L32
	nop
	li	s11,2			# 0x2
	beq	s5,s11,$L33
	nop
	li	s12,3			# 0x3
	beq	s5,s12,$L34
	nop
	li	s13,4			# 0x4
	beq	s5,s13,$L35
	nop
	li	s14,5			# 0x5
	beq	s5,s14,$L36
	nop
	li	s15,6			# 0x6
	beq	s5,s15,$L37
	nop
	andi	s16,s7,0x1
	or	s17,s16,s8
	srl	s7,s1,2
	sll	s8,s17,1
	addiu	s9,s2,-2
$L37:
	andi	s18,s7,0x1
	or	s19,s18,s8
	srl	s7,s7,1
	sll	s8,s19,1
	addiu	s9,s9,-1
$L36:
	andi	s20,s7,0x1
	or	s21,s20,s8
	srl	s7,s7,1
	sll	s8,s21,1
	addiu	s9,s9,-1
$L35:
	andi	s22,s7,0x1
	or	s23,s22,s8
	srl	s7,s7,1
	sll	s8,s23,1
	addiu	s9,s9,-1
$L34:
	andi	s24,s7,0x1
	or	s25,s24,s8
	srl	s7,s7,1
	sll	s8,s25,1
	addiu	s9,s9,-1
$L33:
	andi	s26,s7,0x1
	or	s27,s26,s8
	srl	s7,s7,1
	sll	s8,s27,1
	addiu	s9,s9,-1
$L32:
	andi	s28,s7,0x1
	or	s29,s28,s8
	srl	s7,s7,1
	sll	s8,s29,1
	addiu	s9,s9,-1
	blez	s9,$L38
	nop
$L6:
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
	lw	s8,%gp_rel(outcnt)($28)
	nop
	sltu	s9,s8,16382
	bne	s9,$0,$L46
	nop
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
	sh	$0,%gp_rel(bi_buf)($28)
	sw	$0,%gp_rel(bi_valid)($28)
	addiu	$sp,$sp,24
	move	$2,s7
	j	s5
	nop
$L40:
	blez	s6,$L42
	nop
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
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
	move	s23,$2
	sh	$0,%gp_rel(bi_buf)($28)
	sw	$0,%gp_rel(bi_valid)($28)
	addiu	$sp,$sp,24
	move	$2,s23
	j	s5
	nop
$L46:
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
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
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
	lui	s16,%hi(outbuf)
	addiu	s17,s16,%lo(outbuf)
	addu	s18,s14,s17
	sb	s13,0(s18)
	srl	s19,s13,8
	sb	s19,1(s18)
	addiu	s20,s14,2
	sw	s20,%gp_rel(outcnt)($28)
$L51:
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
	lw	s6,%gp_rel(bi_valid)($28)
	j	$L51
	nop
$L56:
	move	$4,s36
	move	$5,s35
	move	$6,s13
	move	$7,s37
	jal	flush_outbuf
	nop
	move	s9,$2
	lw	s6,%gp_rel(bi_valid)($28)
	j	$L51
	nop
$L58:
	move	$4,s14
	move	$5,s35
	move	$6,s13
	move	$7,s15
	jal	flush_outbuf
	nop
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
	lw	s2,%gp_rel(outcnt)($28)
	nop
	sltu	s11,s2,16382
	bne	s11,$0,$L92
	nop
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
	sh	$0,%gp_rel(bi_buf)($28)
	sw	$0,%gp_rel(bi_valid)($28)
	beq	s8,$0,$L64
	nop
	lw	s22,%gp_rel(outcnt)($28)
	nop
	sltu	s23,s22,16382
	bne	s23,$0,$L94
	nop
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
	sltu	s3,s1,16382
	beq	s3,$0,$L68
	nop
$L106:
	addu	s35,s1,s26
	nor	s36,$0,s24
	sb	s36,0(s35)
	xori	s4,s31,0xff00
	srl	s37,s4,8
	sb	s37,1(s35)
	addiu	s38,s1,2
	sw	s38,%gp_rel(outcnt)($28)
$L64:
	lui	s39,%hi(outbuf)
	addiu	s40,s39,%lo(outbuf)
	li	s41,16384			# 0x4000
	andi	s42,s7,0x3
	beq	s42,$0,$L88
	nop
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
	addiu	s6,s6,1
	addiu	s7,s7,-1
	li	s1,1			# 0x1
	beq	s42,s1,$L88
	nop
	li	s45,2			# 0x2
	beq	s42,s45,$L78
	nop
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
	addiu	s6,s6,1
	addiu	s7,s7,-1
$L78:
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
	addiu	s6,s6,1
	addiu	s7,s7,-1
$L88:
	beq	s7,$0,$L100
	nop
$L71:
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
	addu	s62,s61,s40
	lbu	s63,1(s57)
	nop
	sb	s63,0(s62)
	addiu	s39,s61,1
	sw	s39,%gp_rel(outcnt)($28)
	beq	s39,s41,$L103
	nop
$L85:
	addu	s3,s39,s40
	lbu	s64,2(s57)
	nop
	sb	s64,0(s3)
	addiu	s65,s39,1
	sw	s65,%gp_rel(outcnt)($28)
	beq	s65,s41,$L104
	nop
	addiu	s6,s57,3
	addiu	s7,s58,-3
$L105:
	bne	s7,$0,$L71
	nop
$L100:
	addiu	$sp,$sp,40
	move	$2,s39
	j	s5
	nop
$L60:
	blez	s9,$L62
	nop
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
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
	j	$L62
	nop
$L104:
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
	move	s39,$2
	addiu	s6,s57,3
	addiu	s7,s58,-3
	j	$L105
	nop
$L94:
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
	addu	s72,s1,s26
	nor	s73,$0,s24
	sb	s73,0(s72)
	addiu	s74,s1,1
	sw	s74,%gp_rel(outcnt)($28)
	li	s1,16384			# 0x4000
	beq	s74,s1,$L107
	nop
$L69:
	addu	s75,s74,s26
	xori	s76,s31,0xff00
	srl	s2,s76,8
	sb	s2,0(s75)
	addiu	s77,s74,1
	sw	s77,%gp_rel(outcnt)($28)
	li	s78,16384			# 0x4000
	bne	s77,s78,$L64
	nop
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
	j	$L64
	nop
$L92:
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
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
	lw	s39,%gp_rel(outcnt)($28)
	j	$L85
	nop
$L102:
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
	lw	s61,%gp_rel(outcnt)($28)
	j	$L83
	nop
$L101:
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
	lw	s56,%gp_rel(outcnt)($28)
	j	$L70
	nop
$L99:
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
	move	s39,$2
	addiu	s6,s6,1
	addiu	s7,s7,-1
	j	$L88
	nop
$L98:
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
	move	s39,$2
	j	$L76
	nop
$L97:
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
	move	s39,$2
	j	$L74
	nop
$L93:
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
	lw	s16,%gp_rel(outcnt)($28)
	j	$L63
	nop
$L107:
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
	lw	s74,%gp_rel(outcnt)($28)
	j	$L69
	nop
$L95:
	move	$4,s22
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
	j	$L67
	nop
$L96:
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	flush_outbuf
	nop
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
