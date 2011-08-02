	.file	1 "trees.c"
	.section .mdebug.abi32
	.previous
	.text
	.align	2
	.globl	ct_tally
	.set	nomips16
	.ent	ct_tally
ct_tally:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$5
	move	s3,$31
	lw	s4,%gp_rel(last_lit)($28)
	lui	s5,%hi(inbuf)
	addiu	s6,s5,%lo(inbuf)
	addu	s7,s4,s6
	sb	s2,0(s7)
	addiu	s8,s4,1
	sw	s8,%gp_rel(last_lit)($28)
	bne	s1,$0,$L2
	nop
	sll	s9,s2,2
	lui	s10,%hi(dyn_ltree)
	addiu	s11,s10,%lo(dyn_ltree)
	addu	s12,s9,s11
	lhu	s13,0(s12)
	nop
	addiu	s14,s13,1
	sh	s14,0(s12)
	lbu	s15,%gp_rel(flag_bit)($28)
	nop
$L3:
	sll	s16,s15,1
	sb	s16,%gp_rel(flag_bit)($28)
	andi	s17,s8,0x7
	bne	s17,$0,$L6
	nop
	lw	s18,%gp_rel(last_flags)($28)
	lui	s19,%hi(flag_buf)
	addiu	s20,s19,%lo(flag_buf)
	addu	s21,s18,s20
	lbu	s22,%gp_rel(flags)($28)
	nop
	sb	s22,0(s21)
	addiu	s23,s18,1
	sw	s23,%gp_rel(last_flags)($28)
	sb	$0,%gp_rel(flags)($28)
	li	s24,1
	sb	s24,%gp_rel(flag_bit)($28)
$L6:
	lw	s25,%gp_rel(level)($28)
	nop
	slt	s26,s25,3
	bne	s26,$0,$L7
	nop
	andi	s27,s8,0xfff
	bne	s27,$0,$L7
	nop
	sll	s28,s8,3
	lw	s29,%gp_rel(strstart)($28)
	lw	s30,%gp_rel(block_start)($28)
	move	s31,$0
	lui	s32,%hi(dyn_dtree)
	addiu	s33,s32,%lo(dyn_dtree)
	lui	s34,%hi(extra_dbits)
	addiu	s35,s34,%lo(extra_dbits)
	li	s36,120			# 0x78
$L8:
	addu	s37,s35,s31
	lw	s38,0(s37)
	nop
	addiu	s39,s38,5
	addu	s40,s33,s31
	lhu	s41,0(s40)
	nop
	mult	s39,s41
	mflo	s42
	addu	s43,s28,s42
	addiu	s44,s31,4
	addu	s45,s35,s44
	lw	s46,0(s45)
	nop
	addiu	s47,s46,5
	addu	s48,s33,s44
	lhu	s49,0(s48)
	nop
	mult	s47,s49
	mflo	s50
	addu	s51,s43,s50
	addiu	s52,s31,8
	addu	s53,s35,s52
	lw	s54,0(s53)
	nop
	addiu	s55,s54,5
	addu	s56,s33,s52
	lhu	s57,0(s56)
	nop
	mult	s55,s57
	mflo	s58
	addu	s59,s51,s58
	addiu	s60,s31,12
	addu	s61,s35,s60
	lw	s62,0(s61)
	nop
	addiu	s63,s62,5
	addu	s64,s33,s60
	lhu	s65,0(s64)
	nop
	mult	s63,s65
	mflo	s66
	addu	s67,s59,s66
	addiu	s68,s31,16
	addu	s69,s35,s68
	lw	s70,0(s69)
	nop
	addiu	s71,s70,5
	addu	s72,s33,s68
	lhu	s73,0(s72)
	nop
	mult	s71,s73
	mflo	s74
	addu	s75,s67,s74
	addiu	s76,s31,20
	addu	s77,s35,s76
	lw	s78,0(s77)
	nop
	addiu	s79,s78,5
	addu	s80,s33,s76
	lhu	s81,0(s80)
	nop
	mult	s79,s81
	mflo	s82
	addu	s83,s75,s82
	addiu	s84,s31,24
	addu	s85,s35,s84
	lw	s86,0(s85)
	nop
	addiu	s87,s86,5
	addu	s88,s33,s84
	lhu	s89,0(s88)
	nop
	mult	s87,s89
	mflo	s90
	addu	s91,s83,s90
	addiu	s92,s31,28
	addu	s93,s35,s92
	lw	s94,0(s93)
	nop
	addiu	s95,s94,5
	addu	s96,s33,s92
	lhu	s97,0(s96)
	nop
	mult	s95,s97
	mflo	s98
	addu	s99,s91,s98
	addiu	s100,s31,32
	addu	s101,s35,s100
	lw	s102,0(s101)
	nop
	addiu	s103,s102,5
	addu	s104,s33,s100
	lhu	s105,0(s104)
	nop
	mult	s103,s105
	mflo	s106
	addu	s107,s99,s106
	addiu	s108,s31,36
	addu	s109,s35,s108
	lw	s110,0(s109)
	nop
	addiu	s111,s110,5
	addu	s112,s33,s108
	lhu	s113,0(s112)
	nop
	mult	s111,s113
	mflo	s114
	addu	s28,s107,s114
	addiu	s31,s31,40
	bne	s31,s36,$L8
	nop
	srl	s115,s8,1
	lw	s116,%gp_rel(last_dist)($28)
	nop
	sltu	s117,s116,s115
	bne	s117,$0,$L23
	nop
$L7:
	li	s118,32767			# 0x7fff
	beq	s8,s118,$L9
	nop
	lw	s119,%gp_rel(last_dist)($28)
	nop
	xori	s120,s119,0x8000
	sltu	s121,s120,1
	move	$2,s121
	j	s3
	nop
$L2:
	addiu	s122,s1,-1
	lui	s123,%hi(length_code)
	addiu	s124,s123,%lo(length_code)
	addu	s125,s2,s124
	lbu	s126,0(s125)
	nop
	addiu	s127,s126,257
	sll	s128,s127,2
	lui	s129,%hi(dyn_ltree)
	addiu	s130,s129,%lo(dyn_ltree)
	addu	s131,s128,s130
	lhu	s132,0(s131)
	nop
	addiu	s133,s132,1
	sh	s133,0(s131)
	slt	s134,s122,256
	bne	s134,$0,$L24
	nop
	sra	s135,s122,7
	lui	s136,%hi(dist_code)
	addiu	s137,s136,%lo(dist_code)
	addu	s138,s135,s137
	lbu	s139,256(s138)
	nop
$L5:
	sll	s140,s139,2
	lui	s141,%hi(dyn_dtree)
	addiu	s142,s141,%lo(dyn_dtree)
	addu	s143,s140,s142
	lhu	s144,0(s143)
	nop
	addiu	s145,s144,1
	sh	s145,0(s143)
	lw	s146,%gp_rel(last_dist)($28)
	nop
	sll	s147,s146,1
	lui	s148,%hi(d_buf)
	addiu	s149,s148,%lo(d_buf)
	addu	s150,s147,s149
	sh	s122,0(s150)
	addiu	s151,s146,1
	sw	s151,%gp_rel(last_dist)($28)
	lbu	s15,%gp_rel(flag_bit)($28)
	lbu	s152,%gp_rel(flags)($28)
	nop
	or	s153,s15,s152
	sb	s153,%gp_rel(flags)($28)
	j	$L3
	nop
$L24:
	lui	s154,%hi(dist_code)
	addiu	s155,s154,%lo(dist_code)
	addu	s156,s122,s155
	lbu	s139,0(s156)
	j	$L5
	nop
$L23:
	srl	s157,s28,3
	subu	s158,s29,s30
	srl	s159,s158,1
	sltu	s160,s157,s159
	beq	s160,$0,$L7
	nop
$L9:
	li	s161,1			# 0x1
	move	$2,s161
	j	s3
	nop
	.set	macro
	.set	reorder
	.end	ct_tally
	.size	ct_tally, .-ct_tally
	.align	2
	.set	nomips16
	.ent	send_tree
send_tree:
	.frame	$sp,56,$31		# vars= 0, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$5
	move	s3,$fp
	move	s4,$31
	addiu	$sp,$sp,-56
	lhu	s5,2(s1)
	nop
	bne	s5,$0,$L26
	nop
	li	s6,138			# 0x8a
	li	s7,3			# 0x3
$L27:
	bltz	s2,$L41
	nop
	move	s8,s1
	move	s9,$0
	li	s10,-1			# 0xffffffffffffffff
	move	s11,$0
	lui	s12,%hi(bl_tree)
	addiu	s13,s12,%lo(bl_tree)
$L40:
	lhu	s14,6(s8)
	addiu	s15,s11,1
	slt	s16,s15,s6
	beq	s16,$0,$L29
	nop
	beq	s5,s14,$L30
	nop
$L29:
	slt	s17,s15,s7
	beq	s17,$0,$L31
	nop
	sll	s18,s5,2
	addu	s19,s18,s13
	addiu	s20,s15,-1
	andi	s21,s20,0x7
	lhu	s22,0(s19)
	lhu	s23,2(s19)
	move	$4,s22
	move	$5,s23
	move	$6,s12
	move	$7,s16
	jal	send_bits
	nop
	move	s2,$2
	beq	s20,$0,$L33
	nop
	beq	s21,$0,$L32
	nop
	li	s24,1			# 0x1
	beq	s21,s24,$L66
	nop
	li	s25,2			# 0x2
	beq	s21,s25,$L67
	nop
	li	s26,3			# 0x3
	beq	s21,s26,$L68
	nop
	li	s27,4			# 0x4
	beq	s21,s27,$L69
	nop
	li	s28,5			# 0x5
	beq	s21,s28,$L70
	nop
	li	s29,6			# 0x6
	beq	s21,s29,$L71
	nop
	lhu	s30,0(s19)
	lhu	s31,2(s19)
	move	$4,s30
	move	$5,s31
	jal	send_bits
	nop
	addiu	s20,s15,-2
$L71:
	lhu	s32,0(s19)
	lhu	s33,2(s19)
	move	$4,s32
	move	$5,s33
	jal	send_bits
	nop
	addiu	s20,s20,-1
$L70:
	lhu	s34,0(s19)
	lhu	s35,2(s19)
	move	$4,s34
	move	$5,s35
	jal	send_bits
	nop
	addiu	s20,s20,-1
$L69:
	lhu	s36,0(s19)
	lhu	s37,2(s19)
	move	$4,s36
	move	$5,s37
	jal	send_bits
	nop
	addiu	s20,s20,-1
$L68:
	lhu	s38,0(s19)
	lhu	s39,2(s19)
	move	$4,s38
	move	$5,s39
	jal	send_bits
	nop
	addiu	s20,s20,-1
$L67:
	lhu	s40,0(s19)
	lhu	s41,2(s19)
	move	$4,s40
	move	$5,s41
	jal	send_bits
	nop
	addiu	s20,s20,-1
$L66:
	lhu	s42,0(s19)
	lhu	s43,2(s19)
	move	$4,s42
	move	$5,s43
	jal	send_bits
	nop
	move	s2,$2
	addiu	s20,s20,-1
	beq	s20,$0,$L33
	nop
$L32:
	lhu	s44,0(s19)
	lhu	s45,2(s19)
	move	$4,s44
	move	$5,s45
	jal	send_bits
	nop
	lhu	s46,0(s19)
	lhu	s47,2(s19)
	move	$4,s46
	move	$5,s47
	jal	send_bits
	nop
	lhu	s48,0(s19)
	lhu	s49,2(s19)
	move	$4,s48
	move	$5,s49
	jal	send_bits
	nop
	lhu	s50,0(s19)
	lhu	s51,2(s19)
	move	$4,s50
	move	$5,s51
	jal	send_bits
	nop
	lhu	s52,0(s19)
	lhu	s53,2(s19)
	move	$4,s52
	move	$5,s53
	jal	send_bits
	nop
	lhu	s54,0(s19)
	lhu	s55,2(s19)
	move	$4,s54
	move	$5,s55
	jal	send_bits
	nop
	lhu	s56,0(s19)
	lhu	s57,2(s19)
	move	$4,s56
	move	$5,s57
	jal	send_bits
	nop
	lhu	s58,0(s19)
	lhu	s59,2(s19)
	move	$4,s58
	move	$5,s59
	jal	send_bits
	nop
	move	s2,$2
	addiu	s20,s20,-8
	bne	s20,$0,$L32
	nop
$L33:
	bne	s14,$0,$L38
	nop
$L72:
	move	s10,s5
	move	s15,$0
	li	s6,138			# 0x8a
	li	s7,3			# 0x3
$L30:
	addiu	s9,s9,1
	addiu	s8,s8,4
	slt	s60,s2,s9
	bne	s60,$0,$L41
	nop
$L73:
	move	s5,s14
	move	s11,s15
	j	$L40
	nop
$L31:
	beq	s5,$0,$L34
	nop
	bne	s10,s5,$L35
	nop
	move	s11,s15
	move	s61,s13
$L36:
	lhu	s62,64(s61)
	lhu	s63,66(s61)
	move	$4,s62
	move	$5,s63
	move	$6,s12
	move	$7,s16
	jal	send_bits
	nop
	addiu	s64,s11,-3
	li	s65,2			# 0x2
	move	$4,s64
	move	$5,s65
	jal	send_bits
	nop
	move	s2,$2
	beq	s14,$0,$L72
	nop
$L38:
	beq	s5,s14,$L39
	nop
	move	s10,s5
	move	s15,$0
	li	s6,7			# 0x7
	li	s7,4			# 0x4
	addiu	s9,s9,1
	addiu	s8,s8,4
	slt	s66,s2,s9
	beq	s66,$0,$L73
	nop
$L41:
	addiu	$sp,$sp,56
	move	$2,s2
	j	s4
	nop
$L34:
	slt	s67,s15,11
	beq	s67,$0,$L37
	nop
	lhu	s68,68(s13)
	lhu	s69,70(s13)
	move	$4,s68
	move	$5,s69
	move	$6,s12
	move	$7,s16
	jal	send_bits
	nop
	addiu	s70,s15,-3
	li	s71,3			# 0x3
	move	$4,s70
	move	$5,s71
	jal	send_bits
	nop
	move	s2,$2
	j	$L33
	nop
$L39:
	move	s10,s14
	move	s15,$0
	li	s6,6			# 0x6
	li	s7,3			# 0x3
	j	$L30
	nop
$L35:
	sll	s72,s5,2
	move	s61,s13
	addu	s73,s72,s13
	lhu	s74,0(s73)
	lhu	s75,2(s73)
	move	$4,s74
	move	$5,s75
	move	$6,s12
	move	$7,s16
	jal	send_bits
	nop
	j	$L36
	nop
$L37:
	lhu	s76,72(s13)
	lhu	s77,74(s13)
	move	$4,s76
	move	$5,s77
	move	$6,s12
	move	$7,s16
	jal	send_bits
	nop
	addiu	s78,s15,-11
	li	s79,7			# 0x7
	move	$4,s78
	move	$5,s79
	jal	send_bits
	nop
	move	s2,$2
	j	$L33
	nop
$L26:
	li	s6,7			# 0x7
	li	s7,4			# 0x4
	j	$L27
	nop
	.set	macro
	.set	reorder
	.end	send_tree
	.size	send_tree, .-send_tree
	.align	2
	.set	nomips16
	.ent	compress_block
compress_block:
	.frame	$sp,56,$31		# vars= 0, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$5
	move	s3,$6
	move	s4,$7
	move	s5,$fp
	move	s6,$31
	addiu	$sp,$sp,-56
	move	s7,s1
	move	s8,s2
	lw	s9,%gp_rel(last_lit)($28)
	nop
	beq	s9,$0,$L75
	nop
	move	s10,$0
	move	s11,$0
	move	s12,$0
	move	s13,$0
	lui	s14,%hi(inbuf)
	addiu	s15,s14,%lo(inbuf)
	j	$L82
	nop
$L84:
	sll	s17,s16,2
	addu	s18,s7,s17
	lhu	s19,0(s18)
	lhu	s20,2(s18)
	move	$4,s19
	move	$5,s20
	move	$6,s3
	move	$7,s4
	jal	send_bits
	nop
$L78:
	lw	s21,%gp_rel(last_lit)($28)
	nop
	sltu	s22,s10,s21
	beq	s22,$0,$L75
	nop
$L86:
	srl	s13,s13,1
$L82:
	andi	s23,s10,0x7
	bne	s23,$0,$L76
	nop
	lui	s4,%hi(flag_buf)
	addiu	s3,s4,%lo(flag_buf)
	addu	s24,s12,s3
	lbu	s13,0(s24)
	addiu	s12,s12,1
$L76:
	addu	s25,s15,s10
	lbu	s16,0(s25)
	addiu	s10,s10,1
	andi	s26,s13,0x1
	beq	s26,$0,$L84
	nop
	lui	s27,%hi(length_code)
	addiu	s28,s27,%lo(length_code)
	addu	s29,s16,s28
	lbu	s30,0(s29)
	nop
	addiu	s31,s30,257
	sll	s32,s31,2
	addu	s33,s7,s32
	lhu	s34,0(s33)
	lhu	s35,2(s33)
	move	$4,s34
	move	$5,s35
	move	$6,s3
	move	$7,s4
	jal	send_bits
	nop
	sll	s36,s30,2
	lui	s37,%hi(extra_lbits)
	addiu	s38,s37,%lo(extra_lbits)
	addu	s39,s36,s38
	lw	s40,0(s39)
	nop
	bne	s40,$0,$L85
	nop
$L79:
	sll	s41,s11,1
	lui	s42,%hi(d_buf)
	addiu	s43,s42,%lo(d_buf)
	addu	s44,s41,s43
	lhu	s45,0(s44)
	addiu	s11,s11,1
	sltu	s46,s45,256
	beq	s46,$0,$L80
	nop
	lui	s47,%hi(dist_code)
	addiu	s48,s47,%lo(dist_code)
	addu	s49,s45,s48
	lbu	s50,0(s49)
	nop
$L81:
	sll	s51,s50,2
	addu	s52,s8,s51
	lhu	s53,0(s52)
	lhu	s54,2(s52)
	move	$4,s53
	move	$5,s54
	jal	send_bits
	nop
	lui	s55,%hi(extra_dbits)
	addiu	s56,s55,%lo(extra_dbits)
	addu	s57,s51,s56
	lw	s58,0(s57)
	nop
	beq	s58,$0,$L78
	nop
	lui	s59,%hi(base_dist)
	addiu	s60,s59,%lo(base_dist)
	addu	s61,s51,s60
	lw	s62,0(s61)
	nop
	subu	s63,s45,s62
	move	$4,s63
	move	$5,s58
	move	$6,s62
	move	$7,s61
	jal	send_bits
	nop
	lw	s64,%gp_rel(last_lit)($28)
	nop
	sltu	s65,s10,s64
	bne	s65,$0,$L86
	nop
$L75:
	lhu	s66,1024(s7)
	lhu	s67,1026(s7)
	addiu	$sp,$sp,56
	j	send_bits
	nop
$L80:
	srl	s68,s45,7
	lui	s69,%hi(dist_code)
	addiu	s70,s69,%lo(dist_code)
	addu	s71,s68,s70
	lbu	s50,256(s71)
	j	$L81
	nop
$L85:
	lui	s72,%hi(base_length)
	addiu	s73,s72,%lo(base_length)
	addu	s74,s36,s73
	lw	s75,0(s74)
	nop
	subu	s76,s16,s75
	move	$4,s76
	move	$5,s40
	move	$6,s74
	move	$7,s73
	jal	send_bits
	nop
	j	$L79
	nop
	.set	macro
	.set	reorder
	.end	compress_block
	.size	compress_block, .-compress_block
	.align	2
	.globl	ct_init
	.set	nomips16
	.ent	ct_init
ct_init:
	.frame	$sp,72,$31		# vars= 32, regs= 6/0, args= 16, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$5
	move	s3,$31
	addiu	$sp,$sp,-72
	sw	s1,%gp_rel(file_type)($28)
	sw	s2,%gp_rel(file_method)($28)
	sw	$0,%gp_rel(input_len)($28)
	sw	$0,%gp_rel(compressed_len)($28)
	lui	s4,%hi(static_dtree+2)
	lhu	s5,%lo(static_dtree+2)(s4)
	nop
	bne	s5,$0,$L128
	nop
	lui	s6,%hi(base_length)
	addiu	s7,s6,%lo(base_length)
	lui	s8,%hi(extra_lbits)
	addiu	s9,s8,%lo(extra_lbits)
	move	s10,$0
	move	s11,$0
	lui	s12,%hi(length_code)
	addiu	s13,s12,%lo(length_code)
	li	s14,1			# 0x1
	li	s15,28			# 0x1c
$L98:
	sw	s10,0(s7)
	lw	s16,0(s9)
	nop
	sll	s17,s14,s16
	blez	s17,$L89
	nop
	andi	s18,s11,0x00ff
	addu	s19,s13,s10
	subu	s20,$0,s19
	andi	s21,s20,0x3
	sltu	s22,s17,s21
	beq	s22,$0,$L90
	nop
	move	s21,s17
$L90:
	beq	s21,$0,$L520
	nop
	addu	s23,s13,s10
	addiu	s24,s21,-1
	andi	s25,s24,0x7
	sb	s18,0(s23)
	addiu	s26,s10,1
	li	s27,1			# 0x1
	addiu	s28,s23,1
	sltu	s29,s27,s21
	beq	s29,$0,$L511
	nop
	beq	s25,$0,$L93
	nop
	beq	s25,s27,$L505
	nop
	li	s30,2			# 0x2
	beq	s25,s30,$L506
	nop
	li	s31,3			# 0x3
	beq	s25,s31,$L507
	nop
	li	s32,4			# 0x4
	beq	s25,s32,$L508
	nop
	li	s33,5			# 0x5
	beq	s25,s33,$L509
	nop
	li	s34,6			# 0x6
	beq	s25,s34,$L510
	nop
	sb	s18,1(s23)
	addiu	s26,s10,2
	li	s27,2			# 0x2
	addiu	s28,s23,2
$L510:
	sb	s18,0(s28)
	addiu	s26,s26,1
	addiu	s27,s27,1
	addiu	s28,s28,1
$L509:
	sb	s18,0(s28)
	addiu	s26,s26,1
	addiu	s27,s27,1
	addiu	s28,s28,1
$L508:
	sb	s18,0(s28)
	addiu	s26,s26,1
	addiu	s27,s27,1
	addiu	s28,s28,1
$L507:
	sb	s18,0(s28)
	addiu	s26,s26,1
	addiu	s27,s27,1
	addiu	s28,s28,1
$L506:
	sb	s18,0(s28)
	addiu	s26,s26,1
	addiu	s27,s27,1
	addiu	s28,s28,1
$L505:
	sb	s18,0(s28)
	addiu	s26,s26,1
	addiu	s27,s27,1
	addiu	s28,s28,1
	sltu	s35,s27,s21
	beq	s35,$0,$L511
	nop
$L93:
	sb	s18,0(s28)
	sb	s18,1(s28)
	sb	s18,2(s28)
	sb	s18,3(s28)
	sb	s18,4(s28)
	sb	s18,5(s28)
	sb	s18,6(s28)
	sb	s18,7(s28)
	addiu	s26,s26,8
	addiu	s27,s27,8
	addiu	s28,s28,8
	sltu	s36,s27,s21
	bne	s36,$0,$L93
	nop
$L511:
	beq	s17,s21,$L94
	nop
$L92:
	subu	s37,s17,s21
	srl	s38,s37,2
	sll	s39,s38,2
	beq	s39,$0,$L95
	nop
	sll	s40,s18,24
	sll	s41,s18,16
	or	s42,s40,s41
	sll	s43,s18,8
	or	s44,s42,s43
	or	s45,s44,s18
	addu	s46,s21,s10
	addu	s47,s13,s46
	addiu	s48,s38,-1
	andi	s49,s48,0x7
	sw	s45,0(s47)
	li	s50,1			# 0x1
	addiu	s51,s47,4
	sltu	s52,s50,s38
	beq	s52,$0,$L512
	nop
	beq	s49,$0,$L96
	nop
	beq	s49,s50,$L499
	nop
	li	s53,2			# 0x2
	beq	s49,s53,$L500
	nop
	li	s54,3			# 0x3
	beq	s49,s54,$L501
	nop
	li	s55,4			# 0x4
	beq	s49,s55,$L502
	nop
	li	s56,5			# 0x5
	beq	s49,s56,$L503
	nop
	li	s57,6			# 0x6
	beq	s49,s57,$L504
	nop
	sw	s45,4(s47)
	li	s50,2			# 0x2
	addiu	s51,s47,8
$L504:
	sw	s45,0(s51)
	addiu	s50,s50,1
	addiu	s51,s51,4
$L503:
	sw	s45,0(s51)
	addiu	s50,s50,1
	addiu	s51,s51,4
$L502:
	sw	s45,0(s51)
	addiu	s50,s50,1
	addiu	s51,s51,4
$L501:
	sw	s45,0(s51)
	addiu	s50,s50,1
	addiu	s51,s51,4
$L500:
	sw	s45,0(s51)
	addiu	s50,s50,1
	addiu	s51,s51,4
$L499:
	sw	s45,0(s51)
	addiu	s50,s50,1
	addiu	s51,s51,4
	sltu	s58,s50,s38
	beq	s58,$0,$L512
	nop
$L96:
	sw	s45,0(s51)
	sw	s45,4(s51)
	sw	s45,8(s51)
	sw	s45,12(s51)
	sw	s45,16(s51)
	sw	s45,20(s51)
	sw	s45,24(s51)
	sw	s45,28(s51)
	addiu	s50,s50,8
	addiu	s51,s51,32
	sltu	s59,s50,s38
	bne	s59,$0,$L96
	nop
$L512:
	addu	s26,s26,s39
	addu	s27,s27,s39
	beq	s39,s37,$L94
	nop
$L95:
	addu	s60,s13,s26
	nor	s61,$0,s27
	addu	s62,s61,s17
	andi	s63,s62,0x7
	sb	s18,0(s60)
	addiu	s64,s27,1
	addiu	s65,s60,1
	slt	s66,s64,s17
	beq	s66,$0,$L94
	nop
	beq	s63,$0,$L97
	nop
	li	s67,1			# 0x1
	beq	s63,s67,$L493
	nop
	li	s68,2			# 0x2
	beq	s63,s68,$L494
	nop
	li	s69,3			# 0x3
	beq	s63,s69,$L495
	nop
	li	s70,4			# 0x4
	beq	s63,s70,$L496
	nop
	li	s71,5			# 0x5
	beq	s63,s71,$L497
	nop
	li	s72,6			# 0x6
	beq	s63,s72,$L498
	nop
	sb	s18,1(s60)
	addiu	s64,s27,2
	addiu	s65,s60,2
$L498:
	sb	s18,0(s65)
	addiu	s64,s64,1
	addiu	s65,s65,1
$L497:
	sb	s18,0(s65)
	addiu	s64,s64,1
	addiu	s65,s65,1
$L496:
	sb	s18,0(s65)
	addiu	s64,s64,1
	addiu	s65,s65,1
$L495:
	sb	s18,0(s65)
	addiu	s64,s64,1
	addiu	s65,s65,1
$L494:
	sb	s18,0(s65)
	addiu	s64,s64,1
	addiu	s65,s65,1
$L493:
	sb	s18,0(s65)
	addiu	s64,s64,1
	addiu	s65,s65,1
	slt	s73,s64,s17
	beq	s73,$0,$L94
	nop
$L97:
	sb	s18,0(s65)
	sb	s18,1(s65)
	sb	s18,2(s65)
	sb	s18,3(s65)
	sb	s18,4(s65)
	sb	s18,5(s65)
	sb	s18,6(s65)
	sb	s18,7(s65)
	addiu	s64,s64,8
	addiu	s65,s65,8
	slt	s74,s64,s17
	bne	s74,$0,$L97
	nop
$L94:
	addu	s10,s10,s17
$L89:
	addiu	s11,s11,1
	addiu	s7,s7,4
	addiu	s9,s9,4
	bne	s11,s15,$L98
	nop
	addu	s75,s10,s13
	sb	s11,-1(s75)
	lui	s76,%hi(base_dist)
	addiu	s77,s76,%lo(base_dist)
	lui	s78,%hi(extra_dbits)
	addiu	s79,s78,%lo(extra_dbits)
	move	s80,$0
	move	s81,$0
	li	s82,1			# 0x1
	lui	s83,%hi(dist_code)
	addiu	s84,s83,%lo(dist_code)
	li	s85,16			# 0x10
$L108:
	sw	s81,0(s77)
	lw	s86,0(s79)
	nop
	sll	s87,s82,s86
	blez	s87,$L99
	nop
	andi	s88,s80,0x00ff
	addu	s89,s84,s81
	subu	s90,$0,s89
	andi	s91,s90,0x3
	sltu	s92,s87,s91
	beq	s92,$0,$L100
	nop
	move	s91,s87
$L100:
	beq	s91,$0,$L521
	nop
	addu	s93,s84,s81
	addiu	s94,s91,-1
	andi	s95,s94,0x7
	sb	s88,0(s93)
	addiu	s96,s81,1
	li	s97,1			# 0x1
	addiu	s98,s93,1
	sltu	s99,s97,s91
	beq	s99,$0,$L513
	nop
	beq	s95,$0,$L103
	nop
	beq	s95,s97,$L487
	nop
	li	s100,2			# 0x2
	beq	s95,s100,$L488
	nop
	li	s101,3			# 0x3
	beq	s95,s101,$L489
	nop
	li	s102,4			# 0x4
	beq	s95,s102,$L490
	nop
	li	s103,5			# 0x5
	beq	s95,s103,$L491
	nop
	li	s104,6			# 0x6
	beq	s95,s104,$L492
	nop
	sb	s88,1(s93)
	addiu	s96,s81,2
	li	s97,2			# 0x2
	addiu	s98,s93,2
$L492:
	sb	s88,0(s98)
	addiu	s96,s96,1
	addiu	s97,s97,1
	addiu	s98,s98,1
$L491:
	sb	s88,0(s98)
	addiu	s96,s96,1
	addiu	s97,s97,1
	addiu	s98,s98,1
$L490:
	sb	s88,0(s98)
	addiu	s96,s96,1
	addiu	s97,s97,1
	addiu	s98,s98,1
$L489:
	sb	s88,0(s98)
	addiu	s96,s96,1
	addiu	s97,s97,1
	addiu	s98,s98,1
$L488:
	sb	s88,0(s98)
	addiu	s96,s96,1
	addiu	s97,s97,1
	addiu	s98,s98,1
$L487:
	sb	s88,0(s98)
	addiu	s96,s96,1
	addiu	s97,s97,1
	addiu	s98,s98,1
	sltu	s105,s97,s91
	beq	s105,$0,$L513
	nop
$L103:
	sb	s88,0(s98)
	sb	s88,1(s98)
	sb	s88,2(s98)
	sb	s88,3(s98)
	sb	s88,4(s98)
	sb	s88,5(s98)
	sb	s88,6(s98)
	sb	s88,7(s98)
	addiu	s96,s96,8
	addiu	s97,s97,8
	addiu	s98,s98,8
	sltu	s106,s97,s91
	bne	s106,$0,$L103
	nop
$L513:
	beq	s87,s91,$L104
	nop
$L102:
	subu	s107,s87,s91
	srl	s108,s107,2
	sll	s109,s108,2
	beq	s109,$0,$L105
	nop
	sll	s110,s88,24
	sll	s111,s88,16
	or	s112,s110,s111
	sll	s113,s88,8
	or	s114,s112,s113
	or	s115,s114,s88
	addu	s116,s91,s81
	addu	s117,s84,s116
	addiu	s118,s108,-1
	andi	s119,s118,0x7
	sw	s115,0(s117)
	li	s120,1			# 0x1
	addiu	s121,s117,4
	sltu	s122,s120,s108
	beq	s122,$0,$L514
	nop
	beq	s119,$0,$L106
	nop
	beq	s119,s120,$L481
	nop
	li	s123,2			# 0x2
	beq	s119,s123,$L482
	nop
	li	s124,3			# 0x3
	beq	s119,s124,$L483
	nop
	li	s125,4			# 0x4
	beq	s119,s125,$L484
	nop
	li	s126,5			# 0x5
	beq	s119,s126,$L485
	nop
	li	s127,6			# 0x6
	beq	s119,s127,$L486
	nop
	sw	s115,4(s117)
	li	s120,2			# 0x2
	addiu	s121,s117,8
$L486:
	sw	s115,0(s121)
	addiu	s120,s120,1
	addiu	s121,s121,4
$L485:
	sw	s115,0(s121)
	addiu	s120,s120,1
	addiu	s121,s121,4
$L484:
	sw	s115,0(s121)
	addiu	s120,s120,1
	addiu	s121,s121,4
$L483:
	sw	s115,0(s121)
	addiu	s120,s120,1
	addiu	s121,s121,4
$L482:
	sw	s115,0(s121)
	addiu	s120,s120,1
	addiu	s121,s121,4
$L481:
	sw	s115,0(s121)
	addiu	s120,s120,1
	addiu	s121,s121,4
	sltu	s128,s120,s108
	beq	s128,$0,$L514
	nop
$L106:
	sw	s115,0(s121)
	sw	s115,4(s121)
	sw	s115,8(s121)
	sw	s115,12(s121)
	sw	s115,16(s121)
	sw	s115,20(s121)
	sw	s115,24(s121)
	sw	s115,28(s121)
	addiu	s120,s120,8
	addiu	s121,s121,32
	sltu	s129,s120,s108
	bne	s129,$0,$L106
	nop
$L514:
	addu	s96,s96,s109
	addu	s97,s97,s109
	beq	s109,s107,$L104
	nop
$L105:
	addu	s130,s84,s96
	nor	s131,$0,s97
	addu	s132,s131,s87
	andi	s133,s132,0x7
	sb	s88,0(s130)
	addiu	s134,s97,1
	addiu	s135,s130,1
	slt	s136,s134,s87
	beq	s136,$0,$L104
	nop
	beq	s133,$0,$L107
	nop
	li	s137,1			# 0x1
	beq	s133,s137,$L475
	nop
	li	s138,2			# 0x2
	beq	s133,s138,$L476
	nop
	li	s139,3			# 0x3
	beq	s133,s139,$L477
	nop
	li	s140,4			# 0x4
	beq	s133,s140,$L478
	nop
	li	s141,5			# 0x5
	beq	s133,s141,$L479
	nop
	li	s142,6			# 0x6
	beq	s133,s142,$L480
	nop
	sb	s88,1(s130)
	addiu	s134,s97,2
	addiu	s135,s130,2
$L480:
	sb	s88,0(s135)
	addiu	s134,s134,1
	addiu	s135,s135,1
$L479:
	sb	s88,0(s135)
	addiu	s134,s134,1
	addiu	s135,s135,1
$L478:
	sb	s88,0(s135)
	addiu	s134,s134,1
	addiu	s135,s135,1
$L477:
	sb	s88,0(s135)
	addiu	s134,s134,1
	addiu	s135,s135,1
$L476:
	sb	s88,0(s135)
	addiu	s134,s134,1
	addiu	s135,s135,1
$L475:
	sb	s88,0(s135)
	addiu	s134,s134,1
	addiu	s135,s135,1
	slt	s143,s134,s87
	beq	s143,$0,$L104
	nop
$L107:
	sb	s88,0(s135)
	sb	s88,1(s135)
	sb	s88,2(s135)
	sb	s88,3(s135)
	sb	s88,4(s135)
	sb	s88,5(s135)
	sb	s88,6(s135)
	sb	s88,7(s135)
	addiu	s134,s134,8
	addiu	s135,s135,8
	slt	s144,s134,s87
	bne	s144,$0,$L107
	nop
$L104:
	addu	s81,s81,s87
$L99:
	addiu	s80,s80,1
	addiu	s77,s77,4
	addiu	s79,s79,4
	bne	s80,s85,$L108
	nop
	sra	s145,s81,7
	lui	s146,%hi(base_dist+64)
	addiu	s147,s146,%lo(base_dist+64)
	lui	s148,%hi(extra_dbits+64)
	addiu	s149,s148,%lo(extra_dbits+64)
	li	s150,1			# 0x1
	lui	s151,%hi(dist_code)
	addiu	s152,s151,%lo(dist_code)
	li	s153,30			# 0x1e
$L118:
	sll	s154,s145,7
	sw	s154,0(s147)
	lw	s155,0(s149)
	nop
	addiu	s156,s155,-7
	sll	s157,s150,s156
	blez	s157,$L109
	nop
	andi	s158,s80,0x00ff
	addiu	s159,s145,256
	addu	s160,s152,s159
	subu	s161,$0,s160
	andi	s162,s161,0x3
	sltu	s163,s157,s162
	beq	s163,$0,$L110
	nop
	move	s162,s157
$L110:
	beq	s162,$0,$L522
	nop
	addu	s164,s152,s159
	addiu	s165,s162,-1
	andi	s166,s165,0x7
	sb	s158,0(s164)
	addiu	s167,s145,1
	li	s168,1			# 0x1
	addiu	s169,s164,1
	sltu	s170,s168,s162
	beq	s170,$0,$L515
	nop
	beq	s166,$0,$L113
	nop
	beq	s166,s168,$L469
	nop
	li	s171,2			# 0x2
	beq	s166,s171,$L470
	nop
	li	s172,3			# 0x3
	beq	s166,s172,$L471
	nop
	li	s173,4			# 0x4
	beq	s166,s173,$L472
	nop
	li	s174,5			# 0x5
	beq	s166,s174,$L473
	nop
	li	s175,6			# 0x6
	beq	s166,s175,$L474
	nop
	sb	s158,1(s164)
	addiu	s167,s145,2
	li	s168,2			# 0x2
	addiu	s169,s164,2
$L474:
	sb	s158,0(s169)
	addiu	s167,s167,1
	addiu	s168,s168,1
	addiu	s169,s169,1
$L473:
	sb	s158,0(s169)
	addiu	s167,s167,1
	addiu	s168,s168,1
	addiu	s169,s169,1
$L472:
	sb	s158,0(s169)
	addiu	s167,s167,1
	addiu	s168,s168,1
	addiu	s169,s169,1
$L471:
	sb	s158,0(s169)
	addiu	s167,s167,1
	addiu	s168,s168,1
	addiu	s169,s169,1
$L470:
	sb	s158,0(s169)
	addiu	s167,s167,1
	addiu	s168,s168,1
	addiu	s169,s169,1
$L469:
	sb	s158,0(s169)
	addiu	s167,s167,1
	addiu	s168,s168,1
	addiu	s169,s169,1
	sltu	s176,s168,s162
	beq	s176,$0,$L515
	nop
$L113:
	sb	s158,0(s169)
	sb	s158,1(s169)
	sb	s158,2(s169)
	sb	s158,3(s169)
	sb	s158,4(s169)
	sb	s158,5(s169)
	sb	s158,6(s169)
	sb	s158,7(s169)
	addiu	s167,s167,8
	addiu	s168,s168,8
	addiu	s169,s169,8
	sltu	s177,s168,s162
	bne	s177,$0,$L113
	nop
$L515:
	beq	s157,s162,$L114
	nop
$L112:
	subu	s178,s157,s162
	srl	s179,s178,2
	sll	s180,s179,2
	beq	s180,$0,$L115
	nop
	sll	s181,s158,24
	sll	s182,s158,16
	or	s183,s181,s182
	sll	s184,s158,8
	or	s185,s183,s184
	or	s186,s185,s158
	addu	s187,s159,s162
	addu	s188,s152,s187
	addiu	s189,s179,-1
	andi	s190,s189,0x7
	sw	s186,0(s188)
	li	s191,1			# 0x1
	addiu	s192,s188,4
	sltu	s193,s191,s179
	beq	s193,$0,$L516
	nop
	beq	s190,$0,$L116
	nop
	beq	s190,s191,$L463
	nop
	li	s194,2			# 0x2
	beq	s190,s194,$L464
	nop
	li	s195,3			# 0x3
	beq	s190,s195,$L465
	nop
	li	s196,4			# 0x4
	beq	s190,s196,$L466
	nop
	li	s197,5			# 0x5
	beq	s190,s197,$L467
	nop
	li	s198,6			# 0x6
	beq	s190,s198,$L468
	nop
	sw	s186,4(s188)
	li	s191,2			# 0x2
	addiu	s192,s188,8
$L468:
	sw	s186,0(s192)
	addiu	s191,s191,1
	addiu	s192,s192,4
$L467:
	sw	s186,0(s192)
	addiu	s191,s191,1
	addiu	s192,s192,4
$L466:
	sw	s186,0(s192)
	addiu	s191,s191,1
	addiu	s192,s192,4
$L465:
	sw	s186,0(s192)
	addiu	s191,s191,1
	addiu	s192,s192,4
$L464:
	sw	s186,0(s192)
	addiu	s191,s191,1
	addiu	s192,s192,4
$L463:
	sw	s186,0(s192)
	addiu	s191,s191,1
	addiu	s192,s192,4
	sltu	s199,s191,s179
	beq	s199,$0,$L516
	nop
$L116:
	sw	s186,0(s192)
	sw	s186,4(s192)
	sw	s186,8(s192)
	sw	s186,12(s192)
	sw	s186,16(s192)
	sw	s186,20(s192)
	sw	s186,24(s192)
	sw	s186,28(s192)
	addiu	s191,s191,8
	addiu	s192,s192,32
	sltu	s200,s191,s179
	bne	s200,$0,$L116
	nop
$L516:
	addu	s167,s167,s180
	addu	s168,s168,s180
	beq	s178,s180,$L114
	nop
$L115:
	addiu	s201,s167,256
	addu	s202,s152,s201
	nor	s203,$0,s168
	addu	s204,s203,s157
	andi	s205,s204,0x7
	sb	s158,0(s202)
	addiu	s206,s168,1
	addiu	s207,s202,1
	slt	s208,s206,s157
	beq	s208,$0,$L114
	nop
	beq	s205,$0,$L117
	nop
	li	s209,1			# 0x1
	beq	s205,s209,$L457
	nop
	li	s210,2			# 0x2
	beq	s205,s210,$L458
	nop
	li	s211,3			# 0x3
	beq	s205,s211,$L459
	nop
	li	s212,4			# 0x4
	beq	s205,s212,$L460
	nop
	li	s213,5			# 0x5
	beq	s205,s213,$L461
	nop
	li	s214,6			# 0x6
	beq	s205,s214,$L462
	nop
	sb	s158,1(s202)
	addiu	s206,s168,2
	addiu	s207,s202,2
$L462:
	sb	s158,0(s207)
	addiu	s206,s206,1
	addiu	s207,s207,1
$L461:
	sb	s158,0(s207)
	addiu	s206,s206,1
	addiu	s207,s207,1
$L460:
	sb	s158,0(s207)
	addiu	s206,s206,1
	addiu	s207,s207,1
$L459:
	sb	s158,0(s207)
	addiu	s206,s206,1
	addiu	s207,s207,1
$L458:
	sb	s158,0(s207)
	addiu	s206,s206,1
	addiu	s207,s207,1
$L457:
	sb	s158,0(s207)
	addiu	s206,s206,1
	addiu	s207,s207,1
	slt	s215,s206,s157
	beq	s215,$0,$L114
	nop
$L117:
	sb	s158,0(s207)
	sb	s158,1(s207)
	sb	s158,2(s207)
	sb	s158,3(s207)
	sb	s158,4(s207)
	sb	s158,5(s207)
	sb	s158,6(s207)
	sb	s158,7(s207)
	addiu	s206,s206,8
	addiu	s207,s207,8
	slt	s216,s206,s157
	bne	s216,$0,$L117
	nop
$L114:
	addu	s145,s145,s157
$L109:
	addiu	s80,s80,1
	addiu	s147,s147,4
	addiu	s149,s149,4
	bne	s80,s153,$L118
	nop
	lui	s217,%hi(bl_count)
	addiu	s218,s217,%lo(bl_count)
	sw	$0,%lo(bl_count)(s217)
	sw	$0,4(s218)
	sw	$0,8(s218)
	sw	$0,12(s218)
	sw	$0,16(s218)
	sw	$0,20(s218)
	sw	$0,24(s218)
	sw	$0,28(s218)
	lhu	s219,16(s218)
	lui	s220,%hi(static_ltree+2)
	addiu	s221,s220,%lo(static_ltree+2)
	move	s222,s221
	lui	s223,%hi(static_ltree+578)
	addiu	s224,s223,%lo(static_ltree+578)
	li	s225,8
$L119:
	sh	s225,0(s222)
	sh	s225,4(s222)
	sh	s225,8(s222)
	sh	s225,12(s222)
	sh	s225,16(s222)
	sh	s225,20(s222)
	sh	s225,24(s222)
	sh	s225,28(s222)
	addiu	s222,s222,32
	bne	s222,s224,$L119
	nop
	addiu	s226,s219,144
	sh	s226,16(s218)
	lhu	s227,18(s218)
	lui	s228,%hi(static_ltree+1026)
	addiu	s229,s228,%lo(static_ltree+1026)
	li	s230,9
$L120:
	sh	s230,0(s222)
	sh	s230,4(s222)
	sh	s230,8(s222)
	sh	s230,12(s222)
	sh	s230,16(s222)
	sh	s230,20(s222)
	sh	s230,24(s222)
	sh	s230,28(s222)
	addiu	s222,s222,32
	bne	s222,s229,$L120
	nop
	addiu	s231,s227,112
	sh	s231,18(s218)
	lhu	s232,14(s218)
	lui	s233,%hi(static_ltree+1122)
	addiu	s234,s233,%lo(static_ltree+1122)
	li	s235,7
$L121:
	sh	s235,0(s222)
	sh	s235,4(s222)
	sh	s235,8(s222)
	sh	s235,12(s222)
	sh	s235,16(s222)
	sh	s235,20(s222)
	sh	s235,24(s222)
	sh	s235,28(s222)
	addiu	s222,s222,32
	bne	s222,s234,$L121
	nop
	addiu	s236,s232,24
	sh	s236,14(s218)
	lhu	s237,16(s218)
	lui	s238,%hi(static_ltree)
	addiu	s239,s238,%lo(static_ltree)
	li	s240,8
	sh	s240,1122(s239)
	sh	s240,1126(s239)
	sh	s240,1130(s239)
	sh	s240,1134(s239)
	sh	s240,1138(s239)
	sh	s240,1142(s239)
	sh	s240,1146(s239)
	sh	s240,1150(s239)
	addiu	s241,s237,8
	andi	s242,s241,0xffff
	sh	s242,16(s218)
	lhu	s243,%lo(bl_count)(s217)
	nop
	sll	s244,s243,1
	andi	s245,s244,0xffff
	sh	s245,18($sp)
	lhu	s246,2(s218)
	nop
	addu	s247,s245,s246
	sll	s248,s247,1
	andi	s249,s248,0xfffe
	sh	s249,20($sp)
	lhu	s250,4(s218)
	nop
	addu	s251,s249,s250
	sll	s252,s251,1
	andi	s253,s252,0xfffe
	sh	s253,22($sp)
	lhu	s254,6(s218)
	nop
	addu	s255,s253,s254
	sll	s256,s255,1
	andi	s257,s256,0xfffe
	sh	s257,24($sp)
	lhu	s258,8(s218)
	nop
	addu	s259,s257,s258
	sll	s260,s259,1
	andi	s261,s260,0xfffe
	sh	s261,26($sp)
	lhu	s262,10(s218)
	nop
	addu	s263,s261,s262
	sll	s264,s263,1
	andi	s265,s264,0xfffe
	sh	s265,28($sp)
	lhu	s266,12(s218)
	nop
	addu	s267,s265,s266
	sll	s268,s267,1
	andi	s269,s268,0xfffe
	sh	s269,30($sp)
	addu	s270,s269,s236
	sll	s271,s270,1
	andi	s272,s271,0xfffe
	sh	s272,32($sp)
	addu	s273,s242,s272
	sll	s274,s273,1
	andi	s275,s274,0xfffe
	sh	s275,34($sp)
	lhu	s276,18(s218)
	nop
	addu	s277,s275,s276
	sll	s278,s277,1
	andi	s279,s278,0xfffe
	sh	s279,36($sp)
	lhu	s280,20(s218)
	nop
	addu	s281,s279,s280
	sll	s282,s281,1
	andi	s283,s282,0xfffe
	sh	s283,38($sp)
	lhu	s284,22(s218)
	nop
	addu	s285,s283,s284
	sll	s286,s285,1
	andi	s287,s286,0xfffe
	sh	s287,40($sp)
	lhu	s288,24(s218)
	nop
	addu	s289,s287,s288
	sll	s290,s289,1
	andi	s291,s290,0xfffe
	sh	s291,42($sp)
	lhu	s292,26(s218)
	nop
	addu	s293,s291,s292
	sll	s294,s293,1
	andi	s295,s294,0xfffe
	sh	s295,44($sp)
	lhu	s296,28(s218)
	nop
	addu	s297,s295,s296
	sll	s298,s297,1
	sh	s298,46($sp)
	lui	s299,%hi(static_ltree+1154)
	addiu	s300,s299,%lo(static_ltree+1154)
	addiu	s301,$sp,16
	li	s302,7			# 0x7
	lhu	s303,%lo(static_ltree+2)(s220)
	nop
	bne	s303,$0,$L523
	nop
$L185:
	addiu	s304,s221,4
	beq	s302,$0,$L123
	nop
	li	s305,1			# 0x1
	beq	s302,s305,$L451
	nop
	li	s306,2			# 0x2
	beq	s302,s306,$L452
	nop
	li	s307,3			# 0x3
	beq	s302,s307,$L453
	nop
	li	s308,4			# 0x4
	beq	s302,s308,$L454
	nop
	li	s309,5			# 0x5
	beq	s302,s309,$L455
	nop
	li	s218,6			# 0x6
	beq	s302,s218,$L456
	nop
	lhu	s310,4(s221)
	nop
	bne	s310,$0,$L524
	nop
$L187:
	addiu	s304,s304,4
$L456:
	lhu	s311,0(s304)
	nop
	bne	s311,$0,$L525
	nop
$L190:
	addiu	s304,s304,4
$L455:
	lhu	s312,0(s304)
	nop
	bne	s312,$0,$L526
	nop
$L193:
	addiu	s304,s304,4
$L454:
	lhu	s313,0(s304)
	nop
	bne	s313,$0,$L527
	nop
$L196:
	addiu	s304,s304,4
$L453:
	lhu	s314,0(s304)
	nop
	bne	s314,$0,$L528
	nop
$L199:
	addiu	s304,s304,4
$L452:
	lhu	s315,0(s304)
	nop
	bne	s315,$0,$L529
	nop
$L202:
	addiu	s304,s304,4
$L451:
	lhu	s316,0(s304)
	nop
	beq	s316,$0,$L205
	nop
	sll	s317,s316,1
	addu	s318,s301,s317
	lhu	s319,0(s318)
	nop
	addiu	s320,s319,1
	sh	s320,0(s318)
	move	$4,s319
	move	$5,s316
	move	$6,s218
	move	$7,s320
	jal	bi_reverse
	nop
	move	s321,$2
	sh	s321,-2(s304)
$L205:
	addiu	s304,s304,4
	beq	s304,s300,$L519
	nop
$L123:
	lhu	s322,0(s304)
	nop
	bne	s322,$0,$L530
	nop
$L122:
	addiu	s323,s304,4
	lhu	s324,4(s304)
	nop
	bne	s324,$0,$L531
	nop
$L208:
	addiu	s325,s323,4
	lhu	s326,4(s323)
	nop
	bne	s326,$0,$L532
	nop
$L210:
	addiu	s327,s323,8
	lhu	s328,8(s323)
	nop
	bne	s328,$0,$L533
	nop
$L212:
	addiu	s329,s323,12
	lhu	s330,12(s323)
	nop
	bne	s330,$0,$L534
	nop
$L214:
	addiu	s331,s323,16
	lhu	s332,16(s323)
	nop
	bne	s332,$0,$L535
	nop
$L216:
	addiu	s333,s323,20
	lhu	s334,20(s323)
	nop
	bne	s334,$0,$L536
	nop
$L218:
	addiu	s335,s323,24
	lhu	s336,24(s323)
	nop
	beq	s336,$0,$L220
	nop
	sll	s337,s336,1
	addu	s338,s301,s337
	lhu	s339,0(s338)
	nop
	addiu	s340,s339,1
	sh	s340,0(s338)
	move	$4,s339
	move	$5,s336
	move	$6,s218
	move	$7,s220
	jal	bi_reverse
	nop
	move	s341,$2
	sh	s341,-2(s335)
$L220:
	addiu	s304,s323,28
	bne	s304,s300,$L123
	nop
$L519:
	lui	s342,%hi(static_dtree+2)
	addiu	s343,s342,%lo(static_dtree+2)
	li	s344,5
	li	s345,30			# 0x1e
	sh	s344,%lo(static_dtree+2)(s342)
	move	s346,$0
	li	s347,5			# 0x5
	move	$4,s346
	move	$5,s347
	move	$6,s218
	move	$7,s220
	jal	bi_reverse
	nop
	move	s348,$2
	sh	s348,-2(s343)
	addiu	s349,s343,4
	sh	s344,4(s343)
	li	s350,1			# 0x1
	li	s351,5			# 0x5
	move	$4,s350
	move	$5,s351
	jal	bi_reverse
	nop
	move	s352,$2
	sh	s352,-2(s349)
	li	s353,2			# 0x2
	addiu	s354,s343,8
$L124:
	sh	s344,0(s354)
	move	s355,s353
	li	s356,5			# 0x5
	move	$4,s355
	move	$5,s356
	jal	bi_reverse
	nop
	move	s357,$2
	sh	s357,-2(s354)
	addiu	s358,s354,4
	sh	s344,4(s354)
	addiu	s359,s353,1
	li	s360,5			# 0x5
	move	$4,s359
	move	$5,s360
	jal	bi_reverse
	nop
	move	s361,$2
	sh	s361,-2(s358)
	addiu	s362,s354,8
	sh	s344,8(s354)
	addiu	s363,s353,2
	li	s364,5			# 0x5
	move	$4,s363
	move	$5,s364
	jal	bi_reverse
	nop
	move	s365,$2
	sh	s365,-2(s362)
	addiu	s366,s354,12
	sh	s344,12(s354)
	addiu	s367,s353,3
	li	s368,5			# 0x5
	move	$4,s367
	move	$5,s368
	jal	bi_reverse
	nop
	move	s369,$2
	sh	s369,-2(s366)
	addiu	s370,s354,16
	sh	s344,16(s354)
	addiu	s371,s353,4
	li	s372,5			# 0x5
	move	$4,s371
	move	$5,s372
	jal	bi_reverse
	nop
	move	s373,$2
	sh	s373,-2(s370)
	addiu	s374,s354,20
	sh	s344,20(s354)
	addiu	s375,s353,5
	li	s376,5			# 0x5
	move	$4,s375
	move	$5,s376
	jal	bi_reverse
	nop
	move	s377,$2
	sh	s377,-2(s374)
	addiu	s378,s354,24
	sh	s344,24(s354)
	addiu	s379,s353,6
	li	s380,5			# 0x5
	move	$4,s379
	move	$5,s380
	jal	bi_reverse
	nop
	move	s381,$2
	sh	s381,-2(s378)
	addiu	s353,s353,7
	addiu	s354,s354,28
	bne	s353,s345,$L124
	nop
	lui	s382,%hi(dyn_ltree)
	addiu	s383,s382,%lo(dyn_ltree)
	move	s384,s383
	lui	s385,%hi(dyn_ltree+1144)
	addiu	s386,s385,%lo(dyn_ltree+1144)
$L125:
	sh	$0,0(s384)
	sh	$0,4(s384)
	sh	$0,8(s384)
	sh	$0,12(s384)
	sh	$0,16(s384)
	sh	$0,20(s384)
	sh	$0,24(s384)
	sh	$0,28(s384)
	sh	$0,32(s384)
	sh	$0,36(s384)
	sh	$0,40(s384)
	addiu	s384,s384,44
	bne	s384,s386,$L125
	nop
	lui	s387,%hi(dyn_dtree)
	addiu	s388,s387,%lo(dyn_dtree)
	lui	s389,%hi(dyn_dtree+120)
	addiu	s5,s389,%lo(dyn_dtree+120)
$L126:
	sh	$0,0(s388)
	sh	$0,4(s388)
	sh	$0,8(s388)
	sh	$0,12(s388)
	sh	$0,16(s388)
	sh	$0,20(s388)
	sh	$0,24(s388)
	sh	$0,28(s388)
	sh	$0,32(s388)
	sh	$0,36(s388)
	addiu	s388,s388,40
	bne	s388,s5,$L126
	nop
	lui	s390,%hi(bl_tree)
	addiu	s391,s390,%lo(bl_tree)
	lui	s392,%hi(bl_tree+76)
	addiu	s393,s392,%lo(bl_tree+76)
	sh	$0,%lo(bl_tree)(s390)
	addiu	s394,s391,4
$L127:
	sh	$0,0(s394)
	sh	$0,4(s394)
	sh	$0,8(s394)
	sh	$0,12(s394)
	sh	$0,16(s394)
	sh	$0,20(s394)
	sh	$0,24(s394)
	sh	$0,28(s394)
	sh	$0,32(s394)
	addiu	s394,s394,36
	bne	s394,s393,$L127
	nop
	li	s395,1
	sh	s395,1024(s383)
	sw	$0,%gp_rel(static_len)($28)
	sw	$0,%gp_rel(opt_len)($28)
	sw	$0,%gp_rel(last_flags)($28)
	sw	$0,%gp_rel(last_dist)($28)
	sw	$0,%gp_rel(last_lit)($28)
	sb	$0,%gp_rel(flags)($28)
	sb	s395,%gp_rel(flag_bit)($28)
$L128:
	addiu	$sp,$sp,72
	move	$2,s5
	j	s3
	nop
$L535:
	sll	s396,s332,1
	addu	s397,s301,s396
	lhu	s398,0(s397)
	nop
	addiu	s399,s398,1
	sh	s399,0(s397)
	move	$4,s398
	move	$5,s332
	move	$6,s396
	move	$7,s220
	jal	bi_reverse
	nop
	move	s400,$2
	sh	s400,-2(s331)
	j	$L216
	nop
$L534:
	sll	s401,s330,1
	addu	s402,s301,s401
	lhu	s403,0(s402)
	nop
	addiu	s404,s403,1
	sh	s404,0(s402)
	move	$4,s403
	move	$5,s330
	move	$6,s218
	move	$7,s220
	jal	bi_reverse
	nop
	move	s405,$2
	sh	s405,-2(s329)
	j	$L214
	nop
$L533:
	sll	s406,s328,1
	addu	s407,s301,s406
	lhu	s408,0(s407)
	nop
	addiu	s409,s408,1
	sh	s409,0(s407)
	move	$4,s408
	move	$5,s328
	move	$6,s218
	move	$7,s220
	jal	bi_reverse
	nop
	move	s410,$2
	sh	s410,-2(s327)
	j	$L212
	nop
$L532:
	sll	s411,s326,1
	addu	s412,s301,s411
	lhu	s413,0(s412)
	nop
	addiu	s414,s413,1
	sh	s414,0(s412)
	move	$4,s413
	move	$5,s326
	move	$6,s218
	move	$7,s220
	jal	bi_reverse
	nop
	move	s415,$2
	sh	s415,-2(s325)
	j	$L210
	nop
$L531:
	sll	s416,s324,1
	addu	s417,s301,s416
	lhu	s418,0(s417)
	nop
	addiu	s419,s418,1
	sh	s419,0(s417)
	move	$4,s418
	move	$5,s324
	move	$6,s218
	move	$7,s220
	jal	bi_reverse
	nop
	move	s420,$2
	sh	s420,-2(s323)
	j	$L208
	nop
$L530:
	sll	s421,s322,1
	addu	s422,s301,s421
	lhu	s423,0(s422)
	nop
	addiu	s424,s423,1
	sh	s424,0(s422)
	move	$4,s423
	move	$5,s322
	move	$6,s424
	move	$7,s421
	jal	bi_reverse
	nop
	move	s425,$2
	sh	s425,-2(s304)
	j	$L122
	nop
$L536:
	sll	s426,s334,1
	addu	s427,s301,s426
	lhu	s428,0(s427)
	nop
	addiu	s429,s428,1
	sh	s429,0(s427)
	move	$4,s428
	move	$5,s334
	move	$6,s218
	move	$7,s429
	jal	bi_reverse
	nop
	move	s430,$2
	sh	s430,-2(s333)
	j	$L218
	nop
$L529:
	sll	s431,s315,1
	addu	s432,s301,s431
	lhu	s433,0(s432)
	nop
	addiu	s434,s433,1
	sh	s434,0(s432)
	move	$4,s433
	move	$5,s315
	move	$6,s431
	move	$7,s220
	jal	bi_reverse
	nop
	move	s435,$2
	sh	s435,-2(s304)
	j	$L202
	nop
$L528:
	sll	s436,s314,1
	addu	s437,s301,s436
	lhu	s438,0(s437)
	nop
	addiu	s439,s438,1
	sh	s439,0(s437)
	move	$4,s438
	move	$5,s314
	move	$6,s218
	move	$7,s220
	jal	bi_reverse
	nop
	move	s440,$2
	sh	s440,-2(s304)
	j	$L199
	nop
$L527:
	sll	s441,s313,1
	addu	s442,s301,s441
	lhu	s443,0(s442)
	nop
	addiu	s444,s443,1
	sh	s444,0(s442)
	move	$4,s443
	move	$5,s313
	move	$6,s218
	move	$7,s220
	jal	bi_reverse
	nop
	move	s445,$2
	sh	s445,-2(s304)
	j	$L196
	nop
$L526:
	sll	s446,s312,1
	addu	s447,s301,s446
	lhu	s448,0(s447)
	nop
	addiu	s449,s448,1
	sh	s449,0(s447)
	move	$4,s448
	move	$5,s312
	move	$6,s218
	move	$7,s220
	jal	bi_reverse
	nop
	move	s450,$2
	sh	s450,-2(s304)
	j	$L193
	nop
$L525:
	sll	s451,s311,1
	addu	s452,s301,s451
	lhu	s453,0(s452)
	nop
	addiu	s454,s453,1
	sh	s454,0(s452)
	move	$4,s453
	move	$5,s311
	move	$6,s218
	move	$7,s220
	jal	bi_reverse
	nop
	move	s455,$2
	sh	s455,-2(s304)
	j	$L190
	nop
$L524:
	sll	s456,s310,1
	addu	s457,s301,s456
	lhu	s458,0(s457)
	nop
	addiu	s459,s458,1
	sh	s459,0(s457)
	move	$4,s458
	move	$5,s310
	move	$6,s218
	move	$7,s459
	jal	bi_reverse
	nop
	move	s460,$2
	sh	s460,-2(s304)
	j	$L187
	nop
$L523:
	sll	s461,s303,1
	addu	s462,s301,s461
	lhu	s463,0(s462)
	nop
	addiu	s464,s463,1
	sh	s464,0(s462)
	move	$4,s463
	move	$5,s303
	move	$6,s218
	move	$7,s220
	jal	bi_reverse
	nop
	move	s465,$2
	sh	s465,-2(s221)
	j	$L185
	nop
$L522:
	move	s167,s145
	move	s168,$0
	j	$L112
	nop
$L520:
	move	s26,s10
	move	s27,$0
	j	$L92
	nop
$L521:
	move	s96,s81
	move	s97,$0
	j	$L102
	nop
	.set	macro
	.set	reorder
	.end	ct_init
	.size	ct_init, .-ct_init
	.align	2
	.set	nomips16
	.ent	build_tree
build_tree:
	.frame	$sp,104,$31		# vars= 48, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$fp
	move	s3,$31
	addiu	$sp,$sp,-104
	lw	s4,0(s1)
	lw	s5,4(s1)
	lw	s6,16(s1)
	sw	$0,%gp_rel(heap_len)($28)
	blez	s6,$L848
	nop
	li	s7,-1			# 0xffffffffffffffff
	move	s8,$0
	lui	s9,%hi(heap)
	addiu	s10,s9,%lo(heap)
	lui	s11,%hi(depth)
	addiu	s12,s11,%lo(depth)
	addiu	s13,s6,-1
	andi	s14,s13,0x7
	lhu	s15,0(s4)
	nop
	beq	s15,$0,$L712
	nop
	li	s8,1			# 0x1
	sw	$0,4(s10)
	sb	$0,%lo(depth)(s11)
	move	s7,$0
$L816:
	li	s16,1			# 0x1
	addiu	s17,s4,4
	slt	s18,s16,s6
	beq	s18,$0,$L817
	nop
	beq	s14,$0,$L542
	nop
	beq	s14,s16,$L761
	nop
	li	s19,2			# 0x2
	beq	s14,s19,$L762
	nop
	li	s20,3			# 0x3
	beq	s14,s20,$L763
	nop
	li	s21,4			# 0x4
	beq	s14,s21,$L764
	nop
	li	s22,5			# 0x5
	beq	s14,s22,$L765
	nop
	li	s23,6			# 0x6
	beq	s14,s23,$L766
	nop
	lhu	s24,4(s4)
	nop
	bne	s24,$0,$L818
	nop
	sh	$0,2(s17)
$L819:
	addiu	s16,s16,1
	addiu	s17,s17,4
$L766:
	lhu	s25,0(s17)
	nop
	bne	s25,$0,$L820
	nop
	sh	$0,2(s17)
$L821:
	addiu	s16,s16,1
	addiu	s17,s17,4
$L765:
	lhu	s26,0(s17)
	nop
	bne	s26,$0,$L822
	nop
	sh	$0,2(s17)
$L823:
	addiu	s16,s16,1
	addiu	s17,s17,4
$L764:
	lhu	s27,0(s17)
	nop
	bne	s27,$0,$L824
	nop
	sh	$0,2(s17)
$L825:
	addiu	s16,s16,1
	addiu	s17,s17,4
$L763:
	lhu	s28,0(s17)
	nop
	bne	s28,$0,$L826
	nop
	sh	$0,2(s17)
$L827:
	addiu	s16,s16,1
	addiu	s17,s17,4
$L762:
	lhu	s29,0(s17)
	nop
	bne	s29,$0,$L828
	nop
	sh	$0,2(s17)
$L829:
	addiu	s16,s16,1
	addiu	s17,s17,4
$L761:
	lhu	s30,0(s17)
	nop
	bne	s30,$0,$L830
	nop
	sh	$0,2(s17)
$L831:
	addiu	s16,s16,1
	addiu	s17,s17,4
	slt	s31,s16,s6
	bne	s31,$0,$L542
	nop
$L817:
	sw	s8,%gp_rel(heap_len)($28)
$L539:
	lw	s32,%gp_rel(opt_len)($28)
	lw	s33,%gp_rel(static_len)($28)
	nop
	lw	s34,%gp_rel(heap_len)($28)
	beq	s5,$0,$L543
	nop
	addiu	s35,s34,1
	sll	s36,s35,2
	addu	s37,s10,s36
	li	s38,1
	li	s39,2			# 0x2
	subu	s40,s39,s34
	andi	s41,s40,0x3
	beq	s41,$0,$L544
	nop
	slt	s42,s34,2
	beq	s42,$0,$L545
	nop
	move	s34,s35
	slt	s43,s7,2
	bne	s43,$0,$L849
	nop
	move	s44,$0
	move	s45,$0
$L806:
	sw	s44,0(s37)
	addu	s46,s4,s45
	sh	s38,0(s46)
	addu	s47,s44,s12
	sb	$0,0(s47)
	addiu	s32,s32,-1
	addu	s48,s5,s45
	lhu	s49,2(s48)
	nop
	subu	s33,s33,s49
	addiu	s37,s37,4
	li	s50,1			# 0x1
	beq	s41,s50,$L544
	nop
	li	s51,2			# 0x2
	beq	s41,s51,$L759
	nop
	addiu	s34,s34,1
	slt	s52,s7,2
	bne	s52,$0,$L850
	nop
	move	s53,$0
	move	s54,$0
$L808:
	sw	s53,0(s37)
	addu	s55,s4,s54
	sh	s38,0(s55)
	addu	s56,s53,s12
	sb	$0,0(s56)
	addiu	s32,s32,-1
	addu	s57,s5,s54
	lhu	s58,2(s57)
	nop
	subu	s33,s33,s58
	addiu	s37,s37,4
$L759:
	addiu	s34,s34,1
	slt	s59,s7,2
	bne	s59,$0,$L851
	nop
	move	s60,$0
	move	s61,$0
$L810:
	sw	s60,0(s37)
	addu	s62,s4,s61
	sh	s38,0(s62)
	addu	s63,s60,s12
	sb	$0,0(s63)
	addiu	s32,s32,-1
	addu	s64,s5,s61
	lhu	s65,2(s64)
	nop
	subu	s33,s33,s65
	addiu	s37,s37,4
	j	$L544
	nop
$L855:
	move	s66,$0
	move	s67,$0
	sw	s66,0(s37)
	addu	s68,s4,s67
	sh	s38,0(s68)
	addu	s69,s66,s12
	sb	$0,0(s69)
	addiu	s70,s32,-1
	addu	s71,s5,s67
	lhu	s72,2(s71)
	nop
	subu	s73,s33,s72
	addiu	s74,s37,4
	slt	s75,s7,2
	bne	s75,$0,$L852
	nop
$L772:
	move	s76,$0
	move	s77,$0
	sw	s76,0(s74)
	addu	s78,s4,s77
	sh	s38,0(s78)
	addu	s79,s76,s12
	sb	$0,0(s79)
	addu	s80,s5,s77
	lhu	s81,2(s80)
	nop
	subu	s82,s73,s81
	slt	s83,s7,2
	bne	s83,$0,$L853
	nop
$L812:
	move	s84,$0
	move	s85,$0
	sw	s84,4(s74)
	addu	s86,s4,s85
	sh	s38,0(s86)
	addu	s87,s84,s12
	sb	$0,0(s87)
	addu	s88,s5,s85
	lhu	s89,2(s88)
	nop
	subu	s90,s82,s89
	addiu	s34,s91,3
	slt	s92,s7,2
	bne	s92,$0,$L854
	nop
$L814:
	move	s93,$0
	move	s94,$0
$L815:
	sw	s93,8(s74)
	addu	s95,s4,s94
	sh	s38,0(s95)
	addu	s96,s93,s12
	sb	$0,0(s96)
	addiu	s32,s70,-3
	addu	s97,s5,s94
	lhu	s98,2(s97)
	nop
	subu	s33,s90,s98
	addiu	s37,s74,12
$L544:
	slt	s99,s34,2
	beq	s99,$0,$L545
	nop
	addiu	s91,s34,1
	slt	s100,s7,2
	beq	s100,$0,$L855
	nop
	addiu	s7,s7,1
	sll	s101,s7,2
	move	s102,s7
	sw	s102,0(s37)
	addu	s103,s4,s101
	sh	s38,0(s103)
	addu	s104,s102,s12
	sb	$0,0(s104)
	addiu	s70,s32,-1
	addu	s105,s5,s101
	lhu	s106,2(s105)
	nop
	subu	s73,s33,s106
	addiu	s74,s37,4
	slt	s107,s7,2
	beq	s107,$0,$L772
	nop
$L852:
	addiu	s7,s7,1
	sll	s108,s7,2
	move	s109,s7
	sw	s109,0(s74)
	addu	s110,s4,s108
	sh	s38,0(s110)
	addu	s111,s109,s12
	sb	$0,0(s111)
	addu	s112,s5,s108
	lhu	s113,2(s112)
	nop
	subu	s82,s73,s113
	slt	s114,s7,2
	beq	s114,$0,$L812
	nop
$L853:
	addiu	s7,s7,1
	sll	s115,s7,2
	move	s116,s7
	sw	s116,4(s74)
	addu	s117,s4,s115
	sh	s38,0(s117)
	addu	s118,s116,s12
	sb	$0,0(s118)
	addu	s119,s5,s115
	lhu	s120,2(s119)
	nop
	subu	s90,s82,s120
	addiu	s34,s91,3
	slt	s121,s7,2
	beq	s121,$0,$L814
	nop
$L854:
	addiu	s7,s7,1
	sll	s94,s7,2
	move	s93,s7
	j	$L815
	nop
$L856:
	addiu	s8,s8,1
	sll	s122,s8,2
	addu	s123,s122,s10
	sw	s16,0(s123)
	addu	s124,s12,s16
	sb	$0,0(s124)
	move	s7,s16
	addiu	s125,s16,1
	addiu	s126,s17,4
	lhu	s127,4(s17)
	nop
	beq	s127,$0,$L735
	nop
$L857:
	addiu	s8,s8,1
	sll	s128,s8,2
	addu	s129,s128,s10
	sw	s125,0(s129)
	addu	s130,s12,s125
	sb	$0,0(s130)
	move	s7,s125
	addiu	s131,s125,1
	addiu	s132,s126,4
	lhu	s133,4(s126)
	nop
	bne	s133,$0,$L833
	nop
$L858:
	sh	$0,2(s132)
	addiu	s134,s125,2
	addiu	s135,s126,8
	lhu	s136,8(s126)
	nop
	bne	s136,$0,$L835
	nop
$L859:
	sh	$0,2(s135)
	addiu	s137,s125,3
	addiu	s138,s126,12
	lhu	s139,12(s126)
	nop
	bne	s139,$0,$L837
	nop
$L860:
	sh	$0,2(s138)
	addiu	s140,s125,4
	addiu	s141,s126,16
	lhu	s142,16(s126)
	nop
	bne	s142,$0,$L839
	nop
$L861:
	sh	$0,2(s141)
	addiu	s143,s125,5
	addiu	s144,s126,20
	lhu	s145,20(s126)
	nop
	bne	s145,$0,$L841
	nop
$L862:
	sh	$0,2(s144)
	addiu	s146,s125,6
	addiu	s147,s126,24
	lhu	s148,24(s126)
	nop
	bne	s148,$0,$L843
	nop
$L863:
	sh	$0,2(s147)
$L844:
	addiu	s16,s125,7
	addiu	s17,s126,28
	slt	s149,s16,s6
	beq	s149,$0,$L817
	nop
$L542:
	lhu	s150,0(s17)
	nop
	bne	s150,$0,$L856
	nop
	sh	$0,2(s17)
	addiu	s125,s16,1
	addiu	s126,s17,4
	lhu	s151,4(s17)
	nop
	bne	s151,$0,$L857
	nop
$L735:
	sh	$0,2(s126)
	addiu	s131,s125,1
	addiu	s132,s126,4
	lhu	s152,4(s126)
	nop
	beq	s152,$0,$L858
	nop
$L833:
	addiu	s8,s8,1
	sll	s153,s8,2
	addu	s154,s153,s10
	sw	s131,0(s154)
	addu	s155,s12,s131
	sb	$0,0(s155)
	move	s7,s131
	addiu	s134,s125,2
	addiu	s135,s126,8
	lhu	s156,8(s126)
	nop
	beq	s156,$0,$L859
	nop
$L835:
	addiu	s8,s8,1
	sll	s157,s8,2
	addu	s158,s157,s10
	sw	s134,0(s158)
	addu	s159,s12,s134
	sb	$0,0(s159)
	move	s7,s134
	addiu	s137,s125,3
	addiu	s138,s126,12
	lhu	s160,12(s126)
	nop
	beq	s160,$0,$L860
	nop
$L837:
	addiu	s8,s8,1
	sll	s161,s8,2
	addu	s162,s161,s10
	sw	s137,0(s162)
	addu	s163,s12,s137
	sb	$0,0(s163)
	move	s7,s137
	addiu	s140,s125,4
	addiu	s141,s126,16
	lhu	s164,16(s126)
	nop
	beq	s164,$0,$L861
	nop
$L839:
	addiu	s8,s8,1
	sll	s165,s8,2
	addu	s166,s165,s10
	sw	s140,0(s166)
	addu	s167,s12,s140
	sb	$0,0(s167)
	move	s7,s140
	addiu	s143,s125,5
	addiu	s144,s126,20
	lhu	s168,20(s126)
	nop
	beq	s168,$0,$L862
	nop
$L841:
	addiu	s8,s8,1
	sll	s169,s8,2
	addu	s170,s169,s10
	sw	s143,0(s170)
	addu	s171,s12,s143
	sb	$0,0(s171)
	move	s7,s143
	addiu	s146,s125,6
	addiu	s147,s126,24
	lhu	s172,24(s126)
	nop
	beq	s172,$0,$L863
	nop
$L843:
	addiu	s8,s8,1
	sll	s173,s8,2
	addu	s174,s173,s10
	sw	s146,0(s174)
	addu	s175,s12,s146
	sb	$0,0(s175)
	move	s7,s146
	j	$L844
	nop
$L545:
	sw	s32,%gp_rel(opt_len)($28)
	sw	s33,%gp_rel(static_len)($28)
	sw	s7,24(s1)
	sra	s176,s34,1
	sll	s177,s176,2
	addu	s178,s10,s177
	move	s179,s10
$L561:
	lw	s180,0(s178)
	sll	s181,s176,1
	slt	s182,s34,s181
	bne	s182,$0,$L864
	nop
	sll	s183,s180,2
	addu	s184,s4,s183
	lhu	s185,0(s184)
	move	s186,s176
	addu	s187,s180,s12
	j	$L560
	nop
$L866:
	sll	s188,s181,2
	addu	s189,s188,s10
	lw	s190,0(s189)
	nop
	sll	s191,s190,2
	addu	s192,s4,s191
	lhu	s193,0(s192)
	move	s194,s181
$L555:
	sltu	s195,s185,s193
	bne	s195,$0,$L558
	nop
$L867:
	beq	s193,s185,$L865
	nop
$L559:
	sll	s196,s186,2
	addu	s197,s196,s10
	sw	s190,0(s197)
	sll	s181,s194,1
	slt	s198,s34,s181
	bne	s198,$0,$L553
	nop
	move	s186,s194
$L560:
	slt	s199,s181,s34
	beq	s199,$0,$L866
	nop
	addiu	s194,s181,1
	sll	s200,s194,2
	addu	s201,s200,s10
	lw	s202,0(s201)
	nop
	sll	s203,s202,2
	addu	s204,s4,s203
	lhu	s205,0(s204)
	sll	s206,s181,2
	addu	s207,s206,s10
	lw	s190,0(s207)
	nop
	sll	s208,s190,2
	addu	s209,s4,s208
	lhu	s193,0(s209)
	nop
	sltu	s210,s205,s193
	bne	s210,$0,$L556
	nop
	beq	s205,s193,$L557
	nop
$L845:
	move	s194,s181
	sltu	s211,s185,s193
	beq	s211,$0,$L867
	nop
$L558:
	move	s194,s186
$L553:
	sll	s212,s194,2
	addu	s213,s212,s10
	sw	s180,0(s213)
	addiu	s176,s176,-1
	addiu	s178,s178,-4
	bne	s176,$0,$L561
	nop
	addiu	s214,s34,-1
	sll	s215,s34,2
	addu	s216,s179,s215
	sll	s217,s6,2
	addu	s218,s4,s217
	lui	s219,%hi(heap+2288)
	addiu	s220,s219,%lo(heap+2288)
	addu	s221,s12,s6
	move	s222,s6
	li	s223,571			# 0x23b
	lw	s224,4(s10)
	lw	s225,0(s216)
	nop
	sw	s225,4(s10)
	slt	s226,s214,2
	bne	s226,$0,$L868
	nop
$L562:
	sll	s227,s225,2
	addu	s228,s4,s227
	lhu	s229,0(s228)
	li	s230,2			# 0x2
	li	s231,1			# 0x1
	addu	s232,s225,s12
	j	$L570
	nop
$L870:
	sll	s233,s230,2
	addu	s234,s233,s10
	lw	s235,0(s234)
	nop
	sll	s236,s235,2
	addu	s237,s4,s236
	lhu	s238,0(s237)
	move	s239,s230
$L565:
	sltu	s240,s229,s238
	bne	s240,$0,$L568
	nop
$L871:
	beq	s238,s229,$L869
	nop
$L569:
	sll	s241,s231,2
	addu	s242,s241,s10
	sw	s235,0(s242)
	sll	s230,s239,1
	slt	s243,s214,s230
	bne	s243,$0,$L563
	nop
	move	s231,s239
$L570:
	slt	s244,s230,s214
	beq	s244,$0,$L870
	nop
	addiu	s239,s230,1
	sll	s245,s239,2
	addu	s246,s245,s10
	lw	s247,0(s246)
	nop
	sll	s248,s247,2
	addu	s249,s4,s248
	lhu	s250,0(s249)
	sll	s251,s230,2
	addu	s252,s251,s10
	lw	s235,0(s252)
	nop
	sll	s253,s235,2
	addu	s254,s4,s253
	lhu	s238,0(s254)
	nop
	sltu	s255,s250,s238
	bne	s255,$0,$L566
	nop
	beq	s250,s238,$L567
	nop
$L846:
	move	s239,s230
	sltu	s256,s229,s238
	beq	s256,$0,$L871
	nop
$L568:
	move	s239,s231
$L563:
	sll	s257,s239,2
	addu	s258,s257,s10
	sw	s225,0(s258)
	lw	s259,4(s10)
	sw	s224,0(s220)
	sw	s259,-4(s220)
	sll	s260,s224,2
	addu	s261,s4,s260
	sll	s262,s259,2
	addu	s263,s4,s262
	lhu	s264,0(s263)
	lhu	s265,0(s261)
	nop
	addu	s266,s264,s265
	sh	s266,0(s218)
	addu	s267,s259,s12
	addu	s268,s224,s12
	lbu	s269,0(s268)
	lbu	s270,0(s267)
	nop
	sltu	s271,s270,s269
	beq	s271,$0,$L571
	nop
	move	s270,s269
$L571:
	addiu	s272,s270,1
	andi	s273,s272,0x00ff
	sb	s273,0(s221)
	andi	s274,s222,0xffff
	sh	s274,2(s263)
	sh	s274,2(s261)
	sw	s222,4(s10)
	bne	s226,$0,$L572
	nop
	lhu	s275,0(s218)
	li	s276,2			# 0x2
	li	s277,1			# 0x1
	j	$L580
	nop
$L873:
	sll	s278,s276,2
	addu	s279,s278,s10
	lw	s280,0(s279)
	nop
	sll	s281,s280,2
	addu	s282,s4,s281
	lhu	s283,0(s282)
	move	s284,s276
$L574:
	sltu	s285,s275,s283
	bne	s285,$0,$L577
	nop
$L874:
	beq	s275,s283,$L872
	nop
$L578:
	sll	s286,s277,2
	addu	s287,s286,s10
	sw	s280,0(s287)
	sll	s276,s284,1
	slt	s288,s214,s276
	bne	s288,$0,$L579
	nop
	move	s277,s284
$L580:
	slt	s289,s276,s214
	beq	s289,$0,$L873
	nop
	addiu	s284,s276,1
	sll	s290,s284,2
	addu	s291,s290,s10
	lw	s292,0(s291)
	nop
	sll	s293,s292,2
	addu	s294,s4,s293
	lhu	s295,0(s294)
	sll	s296,s276,2
	addu	s297,s296,s10
	lw	s280,0(s297)
	nop
	sll	s298,s280,2
	addu	s299,s4,s298
	lhu	s283,0(s299)
	nop
	sltu	s300,s295,s283
	bne	s300,$0,$L575
	nop
	beq	s295,s283,$L576
	nop
$L847:
	move	s284,s276
	sltu	s301,s275,s283
	beq	s301,$0,$L874
	nop
$L577:
	move	s284,s277
$L579:
	sll	s302,s284,2
	addu	s303,s302,s10
	sw	s222,0(s303)
	addiu	s223,s223,-2
	addiu	s214,s214,-1
	addiu	s216,s216,-4
	addiu	s218,s218,4
	addiu	s217,s217,4
	addiu	s220,s220,-8
	addiu	s221,s221,1
	addiu	s222,s222,1
	lw	s224,4(s10)
	lw	s225,0(s216)
	nop
	sw	s225,4(s10)
	slt	s226,s214,2
	beq	s226,$0,$L562
	nop
$L868:
	li	s239,1			# 0x1
	j	$L563
	nop
$L557:
	addu	s304,s202,s12
	addu	s305,s190,s12
	lbu	s306,0(s304)
	lbu	s307,0(s305)
	nop
	sltu	s308,s307,s306
	bne	s308,$0,$L845
	nop
$L556:
	move	s190,s202
	move	s193,s205
	j	$L555
	nop
$L865:
	addu	s309,s190,s12
	lbu	s310,0(s187)
	lbu	s311,0(s309)
	nop
	sltu	s312,s311,s310
	bne	s312,$0,$L559
	nop
	j	$L558
	nop
$L567:
	addu	s313,s247,s12
	addu	s314,s235,s12
	lbu	s315,0(s313)
	lbu	s316,0(s314)
	nop
	sltu	s317,s316,s315
	bne	s317,$0,$L846
	nop
$L566:
	move	s235,s247
	move	s238,s250
	j	$L565
	nop
$L869:
	addu	s318,s235,s12
	lbu	s319,0(s232)
	lbu	s320,0(s318)
	nop
	sltu	s321,s320,s319
	bne	s321,$0,$L569
	nop
	j	$L568
	nop
$L576:
	addu	s322,s292,s12
	addu	s323,s280,s12
	lbu	s324,0(s322)
	lbu	s325,0(s323)
	nop
	sltu	s326,s325,s324
	bne	s326,$0,$L847
	nop
$L575:
	move	s280,s292
	move	s283,s295
	j	$L574
	nop
$L872:
	addu	s327,s280,s12
	lbu	s328,0(s327)
	nop
	sltu	s329,s328,s273
	bne	s329,$0,$L578
	nop
	j	$L577
	nop
$L572:
	sw	s214,%gp_rel(heap_len)($28)
	lui	s330,%hi(heap)
	addiu	s331,s330,%lo(heap)
	sw	s222,4(s331)
	addiu	s332,s223,-1
	sw	s332,%gp_rel(heap_max)($28)
	sll	s333,s332,2
	lui	s334,%hi(heap)
	addiu	s335,s334,%lo(heap)
	addu	s336,s333,s335
	sw	s222,0(s336)
	lw	s337,0(s1)
	lw	s338,8(s1)
	lw	s339,12(s1)
	lw	s340,20(s1)
	lw	s341,4(s1)
	lui	s342,%hi(bl_count)
	addiu	s343,s342,%lo(bl_count)
	sw	$0,%lo(bl_count)(s342)
	sw	$0,4(s343)
	sw	$0,8(s343)
	sw	$0,12(s343)
	sw	$0,16(s343)
	sw	$0,20(s343)
	sw	$0,24(s343)
	sw	$0,28(s343)
	addu	s344,s337,s217
	sh	$0,2(s344)
	slt	s345,s223,573
	beq	s345,$0,$L595
	nop
	beq	s341,$0,$L875
	nop
	sll	s346,s223,2
	lui	s347,%hi(heap)
	addiu	s348,s347,%lo(heap)
	addu	s349,s348,s346
	move	s350,$0
	lui	s351,%hi(heap+2292)
	addiu	s352,s351,%lo(heap+2292)
	subu	s353,s352,s349
	addiu	s354,s353,-4
	srl	s355,s354,2
	andi	s356,s355,0x1
	lw	s357,0(s349)
	nop
	sll	s358,s357,2
	addu	s359,s337,s358
	lhu	s360,2(s359)
	nop
	sll	s361,s360,2
	addu	s362,s337,s361
	lhu	s363,2(s362)
	nop
	addiu	s364,s363,1
	slt	s365,s340,s364
	beq	s365,$0,$L669
	nop
	li	s350,1			# 0x1
	move	s364,s340
$L669:
	sh	s364,2(s359)
	slt	s366,s7,s357
	bne	s366,$0,$L670
	nop
	sll	s367,s364,1
	addu	s368,s367,s343
	lhu	s369,0(s368)
	nop
	addiu	s370,s369,1
	sh	s370,0(s368)
	slt	s371,s357,s339
	beq	s371,$0,$L671
	nop
	move	s372,$0
$L788:
	lhu	s373,0(s359)
	addu	s374,s372,s364
	mult	s374,s373
	mflo	s375
	addu	s32,s32,s375
	addu	s376,s341,s358
	lhu	s377,2(s376)
	nop
	addu	s378,s372,s377
	mult	s378,s373
	mflo	s379
	addu	s33,s33,s379
$L670:
	addiu	s380,s349,4
	beq	s380,s352,$L789
	nop
	beq	s356,$0,$L593
	nop
	lw	s381,4(s349)
	nop
	sll	s382,s381,2
	addu	s383,s337,s382
	lhu	s384,2(s383)
	nop
	sll	s385,s384,2
	addu	s386,s337,s385
	lhu	s387,2(s386)
	nop
	addiu	s388,s387,1
	slt	s389,s340,s388
	beq	s389,$0,$L673
	nop
	addiu	s350,s350,1
	move	s388,s340
$L673:
	sh	s388,2(s383)
	slt	s390,s7,s381
	bne	s390,$0,$L674
	nop
	sll	s391,s388,1
	addu	s392,s391,s343
	lhu	s393,0(s392)
	nop
	addiu	s394,s393,1
	sh	s394,0(s392)
	slt	s395,s381,s339
	beq	s395,$0,$L675
	nop
	move	s396,$0
$L791:
	lhu	s397,0(s383)
	addu	s398,s396,s388
	mult	s398,s397
	mflo	s399
	addu	s32,s32,s399
	addu	s400,s341,s382
	lhu	s401,2(s400)
	nop
	addu	s402,s396,s401
	mult	s402,s397
	mflo	s403
	addu	s33,s33,s403
$L674:
	addiu	s380,s380,4
	bne	s380,s352,$L593
	nop
$L789:
	li	s404,573			# 0x23d
	sw	s33,%gp_rel(static_len)($28)
	sw	s32,%gp_rel(opt_len)($28)
	beq	s350,$0,$L595
	nop
	addiu	s405,s340,-1
	sll	s406,s405,1
	sll	s407,s340,1
	addu	s408,s406,s343
	addiu	s409,s340,-2
	sll	s410,s409,1
	addu	s411,s343,s410
	addu	s412,s407,s343
$L599:
	lhu	s413,0(s408)
	nop
	bne	s413,$0,$L876
	nop
	move	s414,s411
	move	s415,s405
$L598:
	addiu	s415,s415,-1
	lhu	s413,0(s414)
	addiu	s414,s414,-2
	beq	s413,$0,$L598
	nop
$L597:
	sll	s416,s415,1
	addu	s417,s416,s343
	addiu	s418,s413,-1
	sh	s418,0(s417)
	addiu	s419,s415,1
	sll	s420,s419,1
	addu	s421,s420,s343
	lhu	s422,0(s421)
	nop
	addiu	s423,s422,2
	sh	s423,0(s421)
	lhu	s424,0(s412)
	nop
	addiu	s425,s424,-1
	sh	s425,0(s412)
	addiu	s350,s350,-2
	bgtz	s350,$L599
	nop
	beq	s340,$0,$L595
	nop
	move	s426,s412
$L604:
	lhu	s427,0(s426)
	nop
	beq	s427,$0,$L600
	nop
	addiu	s428,s404,-1
	sll	s429,s428,2
	addu	s430,s10,s429
$L603:
	move	s404,s428
	lw	s431,0(s430)
	nop
	slt	s432,s7,s431
	bne	s432,$0,$L601
	nop
	sll	s433,s431,2
	addu	s434,s337,s433
	lhu	s435,2(s434)
	nop
	beq	s435,s340,$L602
	nop
	subu	s436,s340,s435
	lhu	s437,0(s434)
	nop
	mult	s436,s437
	mflo	s438
	addu	s32,s32,s438
	sh	s340,2(s434)
$L602:
	addiu	s427,s427,-1
$L601:
	addiu	s430,s430,-4
	beq	s427,$0,$L600
	nop
	addiu	s428,s428,-1
	j	$L603
	nop
$L777:
	sw	s32,%gp_rel(opt_len)($28)
$L595:
	lhu	s439,%lo(bl_count)(s342)
	nop
	sll	s440,s439,1
	andi	s441,s440,0xffff
	sh	s441,18($sp)
	lhu	s442,2(s343)
	nop
	addu	s443,s441,s442
	sll	s444,s443,1
	andi	s445,s444,0xfffe
	sh	s445,20($sp)
	lhu	s446,4(s343)
	nop
	addu	s447,s445,s446
	sll	s448,s447,1
	andi	s449,s448,0xfffe
	sh	s449,22($sp)
	lhu	s450,6(s343)
	nop
	addu	s451,s449,s450
	sll	s452,s451,1
	andi	s453,s452,0xfffe
	sh	s453,24($sp)
	lhu	s454,8(s343)
	nop
	addu	s455,s453,s454
	sll	s456,s455,1
	andi	s457,s456,0xfffe
	sh	s457,26($sp)
	lhu	s458,10(s343)
	nop
	addu	s459,s457,s458
	sll	s460,s459,1
	andi	s461,s460,0xfffe
	sh	s461,28($sp)
	lhu	s462,12(s343)
	nop
	addu	s463,s461,s462
	sll	s464,s463,1
	andi	s465,s464,0xfffe
	sh	s465,30($sp)
	lhu	s466,14(s343)
	nop
	addu	s467,s465,s466
	sll	s468,s467,1
	andi	s469,s468,0xfffe
	sh	s469,32($sp)
	lhu	s470,16(s343)
	nop
	addu	s471,s469,s470
	sll	s472,s471,1
	andi	s473,s472,0xfffe
	sh	s473,34($sp)
	lhu	s474,18(s343)
	nop
	addu	s475,s473,s474
	sll	s476,s475,1
	andi	s477,s476,0xfffe
	sh	s477,36($sp)
	lhu	s478,20(s343)
	nop
	addu	s479,s477,s478
	sll	s480,s479,1
	andi	s481,s480,0xfffe
	sh	s481,38($sp)
	lhu	s482,22(s343)
	nop
	addu	s483,s481,s482
	sll	s484,s483,1
	andi	s485,s484,0xfffe
	sh	s485,40($sp)
	lhu	s486,24(s343)
	nop
	addu	s487,s485,s486
	sll	s488,s487,1
	andi	s489,s488,0xfffe
	sh	s489,42($sp)
	lhu	s490,26(s343)
	nop
	addu	s491,s489,s490
	sll	s492,s491,1
	andi	s493,s492,0xfffe
	sh	s493,44($sp)
	lhu	s494,28(s343)
	nop
	addu	s495,s493,s494
	sll	s496,s495,1
	sh	s496,46($sp)
	li	s497,-1			# 0xffffffffffffffff
	beq	s7,s497,$L609
	nop
	addiu	s498,s4,2
	addiu	s499,$sp,16
	andi	s500,s7,0x7
	lhu	s501,2(s4)
	nop
	beq	s501,$0,$L619
	nop
	sll	s502,s501,1
	addu	s503,s499,s502
	lhu	s504,0(s503)
	nop
	addiu	s505,s504,1
	sh	s505,0(s503)
	move	$4,s504
	move	$5,s501
	move	$6,s490
	move	$7,s491
	jal	bi_reverse
	nop
	move	s484,$2
	sh	s484,-2(s498)
$L619:
	li	s506,1			# 0x1
	addiu	s507,s498,4
	blez	s7,$L609
	nop
	beq	s500,$0,$L607
	nop
	beq	s500,s506,$L750
	nop
	li	s508,2			# 0x2
	beq	s500,s508,$L751
	nop
	li	s490,3			# 0x3
	beq	s500,s490,$L752
	nop
	li	s509,4			# 0x4
	beq	s500,s509,$L753
	nop
	li	s510,5			# 0x5
	beq	s500,s510,$L754
	nop
	li	s511,6			# 0x6
	beq	s500,s511,$L755
	nop
	lhu	s512,4(s498)
	nop
	bne	s512,$0,$L877
	nop
$L621:
	addiu	s506,s506,1
	addiu	s507,s507,4
$L755:
	lhu	s513,0(s507)
	nop
	bne	s513,$0,$L878
	nop
$L624:
	addiu	s506,s506,1
	addiu	s507,s507,4
$L754:
	lhu	s514,0(s507)
	nop
	bne	s514,$0,$L879
	nop
$L627:
	addiu	s506,s506,1
	addiu	s507,s507,4
$L753:
	lhu	s515,0(s507)
	nop
	bne	s515,$0,$L880
	nop
$L630:
	addiu	s506,s506,1
	addiu	s507,s507,4
$L752:
	lhu	s516,0(s507)
	nop
	bne	s516,$0,$L881
	nop
$L633:
	addiu	s506,s506,1
	addiu	s507,s507,4
$L751:
	lhu	s517,0(s507)
	nop
	bne	s517,$0,$L882
	nop
$L636:
	addiu	s506,s506,1
	addiu	s507,s507,4
$L750:
	lhu	s518,0(s507)
	nop
	beq	s518,$0,$L639
	nop
	sll	s519,s518,1
	addu	s520,s499,s519
	lhu	s521,0(s520)
	nop
	addiu	s522,s521,1
	sh	s522,0(s520)
	move	$4,s521
	move	$5,s518
	move	$6,s490
	move	$7,s491
	jal	bi_reverse
	nop
	move	s484,$2
	sh	s484,-2(s507)
$L639:
	addiu	s506,s506,1
	addiu	s507,s507,4
	slt	s523,s7,s506
	beq	s523,$0,$L607
	nop
$L609:
	addiu	$sp,$sp,104
	move	$2,s484
	j	s3
	nop
$L900:
	sll	s525,s524,1
	addu	s526,s499,s525
	lhu	s527,0(s526)
	nop
	addiu	s528,s527,1
	sh	s528,0(s526)
	move	$4,s527
	move	$5,s524
	move	$6,s490
	move	$7,s491
	jal	bi_reverse
	nop
	move	s484,$2
	sh	s484,-2(s507)
$L606:
	addiu	s529,s506,1
	addiu	s530,s507,4
	lhu	s531,4(s507)
	nop
	bne	s531,$0,$L883
	nop
$L642:
	addiu	s532,s530,4
	lhu	s533,4(s530)
	nop
	bne	s533,$0,$L884
	nop
$L644:
	addiu	s534,s530,8
	lhu	s535,8(s530)
	nop
	bne	s535,$0,$L885
	nop
$L646:
	addiu	s536,s530,12
	lhu	s537,12(s530)
	nop
	bne	s537,$0,$L886
	nop
$L648:
	addiu	s538,s530,16
	lhu	s539,16(s530)
	nop
	bne	s539,$0,$L887
	nop
$L650:
	addiu	s540,s530,20
	lhu	s541,20(s530)
	nop
	bne	s541,$0,$L888
	nop
$L652:
	addiu	s542,s530,24
	lhu	s543,24(s530)
	nop
	bne	s543,$0,$L889
	nop
$L654:
	addiu	s506,s529,7
	addiu	s507,s530,28
	slt	s544,s7,s506
	bne	s544,$0,$L609
	nop
$L607:
	lhu	s524,0(s507)
	nop
	beq	s524,$0,$L606
	nop
	j	$L900
	nop
$L892:
	move	s545,$0
$L592:
	lhu	s547,0(s546)
	addu	s549,s545,s548
	mult	s549,s547
	mflo	s550
	addu	s32,s32,s550
	addu	s552,s341,s551
	lhu	s553,2(s552)
	nop
	addu	s554,s545,s553
	mult	s554,s547
	mflo	s555
	addu	s33,s33,s555
$L590:
	addiu	s556,s380,4
	lw	s557,4(s380)
	nop
	sll	s558,s557,2
	addu	s559,s337,s558
	lhu	s560,2(s559)
	nop
	sll	s561,s560,2
	addu	s562,s337,s561
	lhu	s563,2(s562)
	nop
	addiu	s564,s563,1
	slt	s565,s340,s564
	beq	s565,$0,$L678
	nop
	addiu	s350,s350,1
	move	s564,s340
$L678:
	sh	s564,2(s559)
	slt	s566,s7,s557
	bne	s566,$0,$L679
	nop
	sll	s567,s564,1
	addu	s568,s567,s343
	lhu	s569,0(s568)
	nop
	addiu	s570,s569,1
	sh	s570,0(s568)
	slt	s571,s557,s339
	bne	s571,$0,$L891
	nop
	subu	s572,s557,s339
	sll	s573,s572,2
	addu	s574,s338,s573
	lw	s575,0(s574)
$L793:
	lhu	s576,0(s559)
	addu	s577,s575,s564
	mult	s577,s576
	mflo	s578
	addu	s32,s32,s578
	addu	s579,s341,s558
	lhu	s580,2(s579)
	nop
	addu	s581,s575,s580
	mult	s581,s576
	mflo	s582
	addu	s33,s33,s582
$L679:
	addiu	s380,s556,4
	beq	s380,s352,$L789
	nop
$L593:
	lw	s583,0(s380)
	nop
	sll	s551,s583,2
	addu	s546,s337,s551
	lhu	s584,2(s546)
	nop
	sll	s585,s584,2
	addu	s586,s337,s585
	lhu	s587,2(s586)
	nop
	addiu	s548,s587,1
	slt	s588,s340,s548
	beq	s588,$0,$L589
	nop
	addiu	s350,s350,1
	move	s548,s340
$L589:
	sh	s548,2(s546)
	slt	s589,s7,s583
	bne	s589,$0,$L590
	nop
	sll	s590,s548,1
	addu	s591,s590,s343
	lhu	s592,0(s591)
	nop
	addiu	s593,s592,1
	sh	s593,0(s591)
	slt	s594,s583,s339
	bne	s594,$0,$L892
	nop
	subu	s595,s583,s339
	sll	s596,s595,2
	addu	s597,s338,s596
	lw	s545,0(s597)
	j	$L592
	nop
$L891:
	move	s575,$0
	j	$L793
	nop
$L600:
	move	s340,s405
	addiu	s426,s426,-2
	beq	s405,$0,$L777
	nop
	addiu	s405,s405,-1
	j	$L604
	nop
$L828:
	addiu	s8,s8,1
	sll	s598,s8,2
	addu	s599,s598,s10
	sw	s16,0(s599)
	addu	s600,s12,s16
	sb	$0,0(s600)
	move	s7,s16
	j	$L829
	nop
$L818:
	addiu	s8,s8,1
	sll	s601,s8,2
	addu	s602,s601,s10
	sw	s16,0(s602)
	sb	$0,1(s12)
	li	s7,1			# 0x1
	j	$L819
	nop
$L830:
	addiu	s8,s8,1
	sll	s603,s8,2
	addu	s604,s603,s10
	sw	s16,0(s604)
	addu	s605,s12,s16
	sb	$0,0(s605)
	move	s7,s16
	j	$L831
	nop
$L826:
	addiu	s8,s8,1
	sll	s606,s8,2
	addu	s607,s606,s10
	sw	s16,0(s607)
	addu	s608,s12,s16
	sb	$0,0(s608)
	move	s7,s16
	j	$L827
	nop
$L824:
	addiu	s8,s8,1
	sll	s609,s8,2
	addu	s610,s609,s10
	sw	s16,0(s610)
	addu	s611,s12,s16
	sb	$0,0(s611)
	move	s7,s16
	j	$L825
	nop
$L822:
	addiu	s8,s8,1
	sll	s612,s8,2
	addu	s613,s612,s10
	sw	s16,0(s613)
	addu	s614,s12,s16
	sb	$0,0(s614)
	move	s7,s16
	j	$L823
	nop
$L820:
	addiu	s8,s8,1
	sll	s615,s8,2
	addu	s616,s615,s10
	sw	s16,0(s616)
	addu	s617,s12,s16
	sb	$0,0(s617)
	move	s7,s16
	j	$L821
	nop
$L712:
	sh	$0,2(s4)
	j	$L816
	nop
$L675:
	subu	s618,s381,s339
	sll	s619,s618,2
	addu	s620,s338,s619
	lw	s396,0(s620)
	j	$L791
	nop
$L879:
	sll	s621,s514,1
	addu	s622,s499,s621
	lhu	s623,0(s622)
	nop
	addiu	s624,s623,1
	sh	s624,0(s622)
	move	$4,s623
	move	$5,s514
	move	$6,s490
	move	$7,s491
	jal	bi_reverse
	nop
	move	s484,$2
	sh	s484,-2(s507)
	j	$L627
	nop
$L878:
	sll	s625,s513,1
	addu	s626,s499,s625
	lhu	s627,0(s626)
	nop
	addiu	s628,s627,1
	sh	s628,0(s626)
	move	$4,s627
	move	$5,s513
	move	$6,s490
	move	$7,s491
	jal	bi_reverse
	nop
	move	s484,$2
	sh	s484,-2(s507)
	j	$L624
	nop
$L881:
	sll	s629,s516,1
	addu	s630,s499,s629
	lhu	s631,0(s630)
	nop
	addiu	s632,s631,1
	sh	s632,0(s630)
	move	$4,s631
	move	$5,s516
	move	$6,s490
	move	$7,s629
	jal	bi_reverse
	nop
	move	s484,$2
	sh	s484,-2(s507)
	j	$L633
	nop
$L880:
	sll	s633,s515,1
	addu	s634,s499,s633
	lhu	s635,0(s634)
	nop
	addiu	s636,s635,1
	sh	s636,0(s634)
	move	$4,s635
	move	$5,s515
	move	$6,s490
	move	$7,s491
	jal	bi_reverse
	nop
	move	s484,$2
	sh	s484,-2(s507)
	j	$L630
	nop
$L882:
	sll	s637,s517,1
	addu	s638,s499,s637
	lhu	s639,0(s638)
	nop
	addiu	s640,s639,1
	sh	s640,0(s638)
	move	$4,s639
	move	$5,s517
	move	$6,s637
	move	$7,s491
	jal	bi_reverse
	nop
	move	s484,$2
	sh	s484,-2(s507)
	j	$L636
	nop
$L877:
	sll	s641,s512,1
	addu	s642,s499,s641
	lhu	s643,0(s642)
	nop
	addiu	s644,s643,1
	sh	s644,0(s642)
	move	$4,s643
	move	$5,s512
	move	$6,s490
	move	$7,s491
	jal	bi_reverse
	nop
	move	s484,$2
	sh	s484,-2(s507)
	j	$L621
	nop
$L671:
	subu	s645,s357,s339
	sll	s646,s645,2
	addu	s647,s338,s646
	lw	s372,0(s647)
	j	$L788
	nop
$L864:
	move	s194,s176
	j	$L553
	nop
$L851:
	addiu	s7,s7,1
	sll	s61,s7,2
	move	s60,s7
	j	$L810
	nop
$L850:
	addiu	s7,s7,1
	sll	s54,s7,2
	move	s53,s7
	j	$L808
	nop
$L889:
	sll	s648,s543,1
	addu	s649,s499,s648
	lhu	s650,0(s649)
	nop
	addiu	s651,s650,1
	sh	s651,0(s649)
	move	$4,s650
	move	$5,s543
	move	$6,s490
	move	$7,s491
	jal	bi_reverse
	nop
	move	s484,$2
	sh	s484,-2(s542)
	j	$L654
	nop
$L888:
	sll	s652,s541,1
	addu	s653,s499,s652
	lhu	s654,0(s653)
	nop
	addiu	s655,s654,1
	sh	s655,0(s653)
	move	$4,s654
	move	$5,s541
	move	$6,s652
	move	$7,s491
	jal	bi_reverse
	nop
	move	s484,$2
	sh	s484,-2(s540)
	j	$L652
	nop
$L876:
	move	s415,s405
	j	$L597
	nop
$L883:
	sll	s656,s531,1
	addu	s657,s499,s656
	lhu	s658,0(s657)
	nop
	addiu	s659,s658,1
	sh	s659,0(s657)
	move	$4,s658
	move	$5,s531
	move	$6,s490
	move	$7,s491
	jal	bi_reverse
	nop
	move	s484,$2
	sh	s484,-2(s530)
	j	$L642
	nop
$L887:
	sll	s660,s539,1
	addu	s661,s499,s660
	lhu	s662,0(s661)
	nop
	addiu	s663,s662,1
	sh	s663,0(s661)
	move	$4,s662
	move	$5,s539
	move	$6,s490
	move	$7,s660
	jal	bi_reverse
	nop
	move	s484,$2
	sh	s484,-2(s538)
	j	$L650
	nop
$L886:
	sll	s664,s537,1
	addu	s665,s499,s664
	lhu	s666,0(s665)
	nop
	addiu	s667,s666,1
	sh	s667,0(s665)
	move	$4,s666
	move	$5,s537
	move	$6,s490
	move	$7,s491
	jal	bi_reverse
	nop
	move	s484,$2
	sh	s484,-2(s536)
	j	$L648
	nop
$L885:
	sll	s668,s535,1
	addu	s669,s499,s668
	lhu	s670,0(s669)
	nop
	addiu	s671,s670,1
	sh	s671,0(s669)
	move	$4,s670
	move	$5,s535
	move	$6,s490
	move	$7,s491
	jal	bi_reverse
	nop
	move	s484,$2
	sh	s484,-2(s534)
	j	$L646
	nop
$L884:
	sll	s672,s533,1
	addu	s673,s499,s672
	lhu	s674,0(s673)
	nop
	addiu	s675,s674,1
	sh	s675,0(s673)
	move	$4,s674
	move	$5,s533
	move	$6,s490
	move	$7,s491
	jal	bi_reverse
	nop
	move	s484,$2
	sh	s484,-2(s532)
	j	$L644
	nop
$L875:
	sll	s676,s223,2
	lui	s677,%hi(heap)
	addiu	s678,s677,%lo(heap)
	addu	s679,s678,s676
	move	s350,$0
	lui	s680,%hi(heap+2292)
	addiu	s681,s680,%lo(heap+2292)
	subu	s682,s681,s679
	addiu	s683,s682,-4
	srl	s684,s683,2
	andi	s685,s684,0x1
	lw	s686,0(s679)
	nop
	sll	s687,s686,2
	addu	s688,s337,s687
	lhu	s689,2(s688)
	nop
	sll	s690,s689,2
	addu	s691,s337,s690
	lhu	s692,2(s691)
	nop
	addiu	s693,s692,1
	slt	s694,s340,s693
	beq	s694,$0,$L656
	nop
	li	s350,1			# 0x1
	move	s693,s340
$L656:
	sh	s693,2(s688)
	slt	s695,s7,s686
	bne	s695,$0,$L657
	nop
	sll	s696,s693,1
	addu	s697,s696,s343
	lhu	s698,0(s697)
	nop
	addiu	s699,s698,1
	sh	s699,0(s697)
	slt	s700,s686,s339
	bne	s700,$0,$L780
	nop
	subu	s701,s686,s339
	sll	s702,s701,2
	addu	s703,s338,s702
	lw	s704,0(s703)
	nop
$L781:
	addu	s705,s704,s693
	lhu	s706,0(s688)
	nop
	mult	s705,s706
	mflo	s707
	addu	s32,s32,s707
$L657:
	addiu	s708,s679,4
	beq	s708,s681,$L789
	nop
	beq	s685,$0,$L587
	nop
	lw	s709,4(s679)
	nop
	sll	s710,s709,2
	addu	s711,s337,s710
	lhu	s712,2(s711)
	nop
	sll	s713,s712,2
	addu	s714,s337,s713
	lhu	s715,2(s714)
	nop
	addiu	s716,s715,1
	slt	s717,s340,s716
	beq	s717,$0,$L660
	nop
	addiu	s350,s350,1
	move	s716,s340
$L660:
	sh	s716,2(s711)
	slt	s718,s7,s709
	bne	s718,$0,$L661
	nop
	sll	s719,s716,1
	addu	s720,s719,s343
	lhu	s721,0(s720)
	nop
	addiu	s722,s721,1
	sh	s722,0(s720)
	slt	s723,s709,s339
	bne	s723,$0,$L783
	nop
	subu	s724,s709,s339
	sll	s725,s724,2
	addu	s726,s338,s725
	lw	s727,0(s726)
	nop
$L784:
	addu	s728,s727,s716
	lhu	s729,0(s711)
	nop
	mult	s728,s729
	mflo	s730
	addu	s32,s32,s730
$L661:
	addiu	s708,s708,4
	bne	s708,s681,$L587
	nop
	j	$L789
	nop
$L849:
	addiu	s7,s7,1
	sll	s45,s7,2
	move	s44,s7
	j	$L806
	nop
$L893:
	move	s731,$0
$L586:
	addu	s733,s731,s732
	lhu	s735,0(s734)
	nop
	mult	s733,s735
	mflo	s736
	addu	s32,s32,s736
$L584:
	addiu	s737,s708,4
	lw	s738,4(s708)
	nop
	sll	s739,s738,2
	addu	s740,s337,s739
	lhu	s741,2(s740)
	nop
	sll	s742,s741,2
	addu	s743,s337,s742
	lhu	s744,2(s743)
	nop
	addiu	s745,s744,1
	slt	s746,s340,s745
	beq	s746,$0,$L665
	nop
	addiu	s350,s350,1
	move	s745,s340
$L665:
	sh	s745,2(s740)
	slt	s747,s7,s738
	bne	s747,$0,$L666
	nop
	sll	s748,s745,1
	addu	s749,s748,s343
	lhu	s750,0(s749)
	nop
	addiu	s751,s750,1
	sh	s751,0(s749)
	slt	s752,s738,s339
	bne	s752,$0,$L785
	nop
	subu	s753,s738,s339
	sll	s754,s753,2
	addu	s755,s338,s754
	lw	s756,0(s755)
	nop
$L786:
	addu	s757,s756,s745
	lhu	s758,0(s740)
	nop
	mult	s757,s758
	mflo	s759
	addu	s32,s32,s759
$L666:
	addiu	s708,s737,4
	beq	s708,s681,$L789
	nop
$L587:
	lw	s760,0(s708)
	nop
	sll	s761,s760,2
	addu	s734,s337,s761
	lhu	s762,2(s734)
	nop
	sll	s763,s762,2
	addu	s764,s337,s763
	lhu	s765,2(s764)
	nop
	addiu	s732,s765,1
	slt	s766,s340,s732
	beq	s766,$0,$L583
	nop
	addiu	s350,s350,1
	move	s732,s340
$L583:
	sh	s732,2(s734)
	slt	s767,s7,s760
	bne	s767,$0,$L584
	nop
	sll	s768,s732,1
	addu	s769,s768,s343
	lhu	s770,0(s769)
	nop
	addiu	s771,s770,1
	sh	s771,0(s769)
	slt	s772,s760,s339
	bne	s772,$0,$L893
	nop
	subu	s773,s760,s339
	sll	s774,s773,2
	addu	s775,s338,s774
	lw	s731,0(s775)
	j	$L586
	nop
$L785:
	move	s756,$0
	j	$L786
	nop
$L543:
	addiu	s776,s34,1
	sll	s777,s776,2
	addu	s778,s10,s777
	li	s779,1
	li	s780,2			# 0x2
	subu	s781,s780,s34
	andi	s782,s781,0x3
	beq	s782,$0,$L548
	nop
	slt	s783,s34,2
	beq	s783,$0,$L545
	nop
	move	s34,s776
	slt	s784,s7,2
	bne	s784,$0,$L894
	nop
	move	s785,$0
	move	s786,$0
$L795:
	sw	s785,0(s778)
	addu	s787,s4,s786
	sh	s779,0(s787)
	addu	s788,s785,s12
	sb	$0,0(s788)
	addiu	s32,s32,-1
	addiu	s778,s778,4
	li	s789,1			# 0x1
	beq	s782,s789,$L548
	nop
	li	s790,2			# 0x2
	beq	s782,s790,$L758
	nop
	addiu	s34,s34,1
	slt	s791,s7,2
	bne	s791,$0,$L895
	nop
	move	s792,$0
	move	s793,$0
$L797:
	sw	s792,0(s778)
	addu	s794,s4,s793
	sh	s779,0(s794)
	addu	s795,s792,s12
	sb	$0,0(s795)
	addiu	s32,s32,-1
	addiu	s778,s778,4
$L758:
	addiu	s34,s34,1
	slt	s796,s7,2
	bne	s796,$0,$L896
	nop
	move	s797,$0
	move	s798,$0
$L799:
	sw	s797,0(s778)
	addu	s799,s4,s798
	sh	s779,0(s799)
	addu	s800,s797,s12
	sb	$0,0(s800)
	addiu	s32,s32,-1
	addiu	s778,s778,4
$L548:
	slt	s801,s34,2
	beq	s801,$0,$L545
	nop
	addiu	s802,s34,1
	slt	s803,s7,2
	bne	s803,$0,$L546
	nop
	move	s804,$0
	move	s805,$0
$L547:
	sw	s804,0(s778)
	addu	s806,s4,s805
	sh	s779,0(s806)
	addu	s807,s804,s12
	sb	$0,0(s807)
	addiu	s808,s32,-1
	addiu	s809,s778,4
	slt	s810,s7,2
	bne	s810,$0,$L897
	nop
	move	s811,$0
	move	s812,$0
$L800:
	sw	s811,0(s809)
	addu	s813,s4,s812
	sh	s779,0(s813)
	addu	s814,s811,s12
	sb	$0,0(s814)
	slt	s815,s7,2
	bne	s815,$0,$L898
	nop
	move	s816,$0
	move	s817,$0
$L802:
	sw	s816,4(s809)
	addu	s818,s4,s817
	sh	s779,0(s818)
	addu	s819,s816,s12
	sb	$0,0(s819)
	addiu	s34,s802,3
	slt	s820,s7,2
	bne	s820,$0,$L899
	nop
	move	s821,$0
	move	s822,$0
$L804:
	sw	s821,8(s809)
	addu	s823,s4,s822
	sh	s779,0(s823)
	addu	s824,s821,s12
	sb	$0,0(s824)
	addiu	s32,s808,-3
	addiu	s778,s809,12
	j	$L548
	nop
$L899:
	addiu	s821,s7,1
	sll	s822,s821,2
	move	s7,s821
	j	$L804
	nop
$L898:
	addiu	s816,s7,1
	sll	s817,s816,2
	move	s7,s816
	j	$L802
	nop
$L897:
	addiu	s811,s7,1
	sll	s812,s811,2
	move	s7,s811
	j	$L800
	nop
$L546:
	addiu	s804,s7,1
	sll	s805,s804,2
	move	s7,s804
	j	$L547
	nop
$L894:
	addiu	s785,s7,1
	sll	s786,s785,2
	move	s7,s785
	j	$L795
	nop
$L780:
	move	s704,$0
	j	$L781
	nop
$L848:
	li	s7,-1			# 0xffffffffffffffff
	lui	s825,%hi(heap)
	addiu	s10,s825,%lo(heap)
	lui	s826,%hi(depth)
	addiu	s12,s826,%lo(depth)
	j	$L539
	nop
$L783:
	move	s727,$0
	j	$L784
	nop
$L896:
	addiu	s797,s7,1
	sll	s798,s797,2
	move	s7,s797
	j	$L799
	nop
$L895:
	addiu	s792,s7,1
	sll	s793,s792,2
	move	s7,s792
	j	$L797
	nop
	.set	macro
	.set	reorder
	.end	build_tree
	.size	build_tree, .-build_tree
	.align	2
	.globl	flush_block
	.set	nomips16
	.ent	flush_block
flush_block:
	.frame	$sp,64,$31		# vars= 8, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$5
	move	s3,$6
	move	s4,$fp
	move	s5,$31
	addiu	$sp,$sp,-64
	move	s6,s1
	move	s7,s2
	move	s8,s3
	lui	s9,%hi(flag_buf)
	addiu	s10,s9,%lo(flag_buf)
	lw	s11,%gp_rel(last_flags)($28)
	nop
	addu	s12,s11,s10
	lbu	s13,%gp_rel(flags)($28)
	nop
	sb	s13,0(s12)
	lw	s14,%gp_rel(file_type)($28)
	nop
	lhu	s15,0(s14)
	li	s16,65535			# 0xffff
	beq	s15,s16,$L1073
	nop
	lui	s17,%hi(dyn_ltree)
	addiu	s18,s17,%lo(dyn_ltree)
$L902:
	lui	s19,%hi(l_desc)
	addiu	s20,s19,%lo(l_desc)
	move	$4,s20
	move	$5,s12
	move	$6,s11
	move	$7,s10
	jal	build_tree
	nop
	lui	s21,%hi(d_desc)
	addiu	s22,s21,%lo(d_desc)
	move	$4,s22
	jal	build_tree
	nop
	addiu	s23,s19,%lo(l_desc)
	lw	s24,24(s23)
	lhu	s25,2(s18)
	nop
	bne	s25,$0,$L905
	nop
	li	s26,3			# 0x3
	li	s27,138			# 0x8a
$L906:
	addiu	s28,s24,1
	sll	s29,s28,2
	addu	s30,s18,s29
	li	s31,-1
	sh	s31,2(s30)
	bltz	s24,$L1115
	nop
	lui	s32,%hi(dyn_ltree+6)
	addiu	s33,s32,%lo(dyn_ltree+6)
	move	s34,$0
	move	s35,$0
	li	s36,-1			# 0xffffffffffffffff
	lui	s37,%hi(bl_tree)
	addiu	s38,s37,%lo(bl_tree)
	andi	s39,s24,0x1
	bne	s39,$0,$L1075
	nop
$L917:
	lhu	s40,0(s33)
	addiu	s41,s35,1
	slt	s42,s41,s27
	beq	s42,$0,$L908
	nop
	beq	s40,s25,$L1116
	nop
$L908:
	slt	s43,s41,s26
	beq	s43,$0,$L910
	nop
	sll	s44,s25,2
	addu	s45,s44,s38
	lhu	s46,0(s45)
	nop
	addu	s47,s41,s46
	sh	s47,0(s45)
$L911:
	bne	s40,$0,$L915
	nop
	li	s26,3			# 0x3
	li	s27,138			# 0x8a
	move	s41,$0
$L909:
	addiu	s48,s34,1
	addiu	s49,s33,4
	slt	s50,s24,s48
	bne	s50,$0,$L907
	nop
$L1120:
	move	s51,s40
	lhu	s52,4(s33)
	addiu	s35,s41,1
	slt	s53,s35,s27
	beq	s53,$0,$L1043
	nop
	beq	s52,s40,$L1117
	nop
$L1043:
	slt	s54,s35,s26
	beq	s54,$0,$L1044
	nop
	sll	s55,s40,2
	addu	s56,s55,s38
	lhu	s57,0(s56)
	nop
	addu	s58,s35,s57
	sh	s58,0(s56)
$L1113:
	beq	s52,$0,$L1108
	nop
$L1125:
	beq	s52,s40,$L1118
	nop
	li	s26,4			# 0x4
	li	s27,7			# 0x7
	move	s35,$0
$L1110:
	addiu	s34,s48,1
	addiu	s33,s49,4
	move	s36,s51
	move	s25,s52
	j	$L917
	nop
$L1075:
	lhu	s59,%lo(dyn_ltree+6)(s32)
	li	s35,1			# 0x1
	slt	s60,s35,s27
	bne	s60,$0,$L1098
	nop
$L1035:
	slt	s61,s35,s26
	beq	s61,$0,$L1036
	nop
	sll	s62,s25,2
	addu	s63,s62,s38
	lhu	s64,0(s63)
	nop
	addu	s65,s35,s64
	sh	s65,0(s63)
$L1105:
	beq	s59,$0,$L1100
	nop
$L1147:
	beq	s59,s25,$L1119
	nop
	li	s26,4			# 0x4
	li	s27,7			# 0x7
	move	s35,$0
$L1102:
	li	s34,1			# 0x1
	addiu	s33,s33,4
	blez	s24,$L907
	nop
	move	s36,s25
	move	s25,s59
	j	$L917
	nop
$L915:
	beq	s40,s25,$L916
	nop
	li	s26,4			# 0x4
	li	s27,7			# 0x7
	move	s41,$0
	addiu	s48,s34,1
	addiu	s49,s33,4
	slt	s66,s24,s48
	beq	s66,$0,$L1120
	nop
$L907:
	addiu	s67,s21,%lo(d_desc)
	lw	s68,24(s67)
	lui	s69,%hi(dyn_dtree)
	addiu	s70,s69,%lo(dyn_dtree)
	lhu	s71,2(s70)
	nop
	bne	s71,$0,$L918
	nop
	li	s72,3			# 0x3
	li	s73,138			# 0x8a
$L919:
	addiu	s74,s68,1
	sll	s75,s74,2
	lui	s76,%hi(dyn_dtree)
	addiu	s77,s76,%lo(dyn_dtree)
	addu	s78,s77,s75
	li	s79,-1
	sh	s79,2(s78)
	bltz	s68,$L920
	nop
	lui	s80,%hi(dyn_dtree+6)
	addiu	s81,s80,%lo(dyn_dtree+6)
	move	s82,$0
	move	s83,$0
	li	s84,-1			# 0xffffffffffffffff
	andi	s85,s68,0x1
	bne	s85,$0,$L1077
	nop
$L930:
	lhu	s78,0(s81)
	addiu	s86,s83,1
	slt	s87,s86,s73
	beq	s87,$0,$L921
	nop
	beq	s78,s71,$L1121
	nop
$L921:
	slt	s88,s86,s72
	beq	s88,$0,$L923
	nop
	sll	s89,s71,2
	addu	s90,s89,s38
	lhu	s91,0(s90)
	nop
	addu	s92,s86,s91
	sh	s92,0(s90)
$L924:
	bne	s78,$0,$L928
	nop
	li	s72,3			# 0x3
	li	s73,138			# 0x8a
	move	s86,$0
$L922:
	addiu	s93,s82,1
	addiu	s94,s81,4
	slt	s95,s68,s93
	bne	s95,$0,$L920
	nop
$L1127:
	move	s96,s78
	lhu	s97,4(s81)
	addiu	s83,s86,1
	slt	s98,s83,s73
	beq	s98,$0,$L1026
	nop
	beq	s97,s78,$L1122
	nop
$L1026:
	slt	s99,s83,s72
	beq	s99,$0,$L1027
	nop
	sll	s100,s78,2
	addu	s101,s100,s38
	lhu	s102,0(s101)
	nop
	addu	s103,s83,s102
	sh	s103,0(s101)
$L1096:
	beq	s97,$0,$L1091
	nop
$L1144:
	beq	s97,s78,$L1123
	nop
	li	s72,4			# 0x4
	li	s73,7			# 0x7
	move	s83,$0
$L1093:
	addiu	s82,s93,1
	addiu	s81,s94,4
	move	s84,s96
	move	s71,s97
	j	$L930
	nop
$L910:
	beq	s25,$0,$L912
	nop
	beq	s25,s36,$L913
	nop
	sll	s104,s25,2
	addu	s105,s104,s38
	lhu	s106,0(s105)
	nop
	addiu	s107,s106,1
	sh	s107,0(s105)
$L913:
	lhu	s108,64(s38)
	nop
	addiu	s109,s108,1
	sh	s109,64(s38)
	j	$L911
	nop
$L1044:
	bne	s40,$0,$L1111
	nop
	slt	s110,s35,11
	beq	s110,$0,$L1124
	nop
	lhu	s111,68(s38)
	nop
	addiu	s112,s111,1
	sh	s112,68(s38)
	bne	s52,$0,$L1125
	nop
$L1108:
	li	s26,3			# 0x3
	li	s27,138			# 0x8a
	move	s35,$0
	j	$L1110
	nop
$L912:
	slt	s113,s41,11
	beq	s113,$0,$L914
	nop
	lhu	s114,68(s38)
	nop
	addiu	s115,s114,1
	sh	s115,68(s38)
	j	$L911
	nop
$L1077:
	lhu	s78,%lo(dyn_dtree+6)(s80)
	li	s83,1			# 0x1
	slt	s116,s83,s73
	bne	s116,$0,$L1081
	nop
$L1018:
	slt	s117,s83,s72
	beq	s117,$0,$L1019
	nop
	sll	s118,s71,2
	addu	s119,s118,s38
	lhu	s120,0(s119)
	nop
	addu	s121,s83,s120
	sh	s121,0(s119)
$L1088:
	beq	s78,$0,$L1083
	nop
$L1149:
	beq	s78,s71,$L1126
	nop
	li	s72,4			# 0x4
	li	s73,7			# 0x7
	move	s83,$0
$L1085:
	li	s82,1			# 0x1
	addiu	s81,s81,4
	blez	s68,$L920
	nop
	move	s84,s71
	move	s71,s78
	j	$L930
	nop
$L928:
	beq	s78,s71,$L929
	nop
	li	s72,4			# 0x4
	li	s73,7			# 0x7
	move	s86,$0
	addiu	s93,s82,1
	addiu	s94,s81,4
	slt	s122,s68,s93
	beq	s122,$0,$L1127
	nop
$L920:
	lui	s123,%hi(bl_desc)
	addiu	s124,s123,%lo(bl_desc)
	move	$4,s124
	move	$5,s78
	move	$6,s73
	move	$7,s123
	jal	build_tree
	nop
	lhu	s125,62(s38)
	nop
	bne	s125,$0,$L1128
	nop
	lhu	s126,6(s38)
	nop
	bne	s126,$0,$L1129
	nop
	lhu	s127,58(s38)
	nop
	bne	s127,$0,$L1130
	nop
	lhu	s128,10(s38)
	nop
	bne	s128,$0,$L1131
	nop
	lhu	s129,54(s38)
	nop
	bne	s129,$0,$L1132
	nop
	lhu	s130,14(s38)
	nop
	bne	s130,$0,$L1133
	nop
	lhu	s131,50(s38)
	nop
	bne	s131,$0,$L1134
	nop
	lhu	s132,18(s38)
	nop
	bne	s132,$0,$L1135
	nop
	lhu	s133,46(s38)
	nop
	bne	s133,$0,$L1136
	nop
	lhu	s134,22(s38)
	nop
	bne	s134,$0,$L1137
	nop
	lhu	s135,42(s38)
	nop
	bne	s135,$0,$L1138
	nop
	lhu	s136,26(s38)
	nop
	bne	s136,$0,$L1139
	nop
	lhu	s137,38(s38)
	nop
	bne	s137,$0,$L1140
	nop
	lhu	s138,30(s38)
	nop
	bne	s138,$0,$L1141
	nop
	lhu	s139,34(s38)
	nop
	bne	s139,$0,$L1142
	nop
	lhu	s140,2(s38)
	nop
	sltu	s141,$0,s140
	addiu	s142,s141,2
$L932:
	addiu	s143,s142,1
	lw	s144,%gp_rel(opt_len)($28)
	nop
	addiu	s145,s144,14
	sll	s146,s143,1
	addu	s147,s146,s143
	addu	s148,s145,s147
	sw	s148,%gp_rel(opt_len)($28)
	addiu	s149,s148,10
	lw	s150,%gp_rel(static_len)($28)
	nop
	addiu	s151,s150,10
	srl	s152,s151,3
	lw	s153,%gp_rel(input_len)($28)
	nop
	addu	s154,s153,s7
	sw	s154,%gp_rel(input_len)($28)
	srl	s155,s149,3
	sltu	s156,s152,s155
	beq	s156,$0,$L948
	nop
	move	s155,s152
$L948:
	addiu	s157,s7,4
	sltu	s158,s155,s157
	bne	s158,$0,$L949
	nop
	beq	s6,$0,$L949
	nop
	move	s159,s8
	li	s160,3			# 0x3
	move	$4,s159
	move	$5,s160
	move	$6,s150
	move	$7,s154
	jal	send_bits
	nop
	sll	s161,s157,3
	lw	s162,%gp_rel(compressed_len)($28)
	nop
	addiu	s163,s162,10
	li	s164,-8			# 0xfffffffffffffff8
	and	s165,s163,s164
	addu	s166,s161,s165
	sw	s166,%gp_rel(compressed_len)($28)
	move	s167,s6
	move	s168,s7
	li	s169,1			# 0x1
	move	$4,s167
	move	$5,s168
	move	$6,s169
	jal	copy_block
	nop
$L950:
	move	s170,s18
	lui	s171,%hi(dyn_ltree+1144)
	addiu	s172,s171,%lo(dyn_ltree+1144)
$L953:
	sh	$0,0(s170)
	sh	$0,4(s170)
	sh	$0,8(s170)
	sh	$0,12(s170)
	sh	$0,16(s170)
	sh	$0,20(s170)
	sh	$0,24(s170)
	sh	$0,28(s170)
	sh	$0,32(s170)
	sh	$0,36(s170)
	sh	$0,40(s170)
	addiu	s170,s170,44
	bne	s170,s172,$L953
	nop
	lui	s173,%hi(dyn_dtree)
	addiu	s174,s173,%lo(dyn_dtree)
	lui	s175,%hi(dyn_dtree+120)
	addiu	s176,s175,%lo(dyn_dtree+120)
$L954:
	sh	$0,0(s174)
	sh	$0,4(s174)
	sh	$0,8(s174)
	sh	$0,12(s174)
	sh	$0,16(s174)
	sh	$0,20(s174)
	sh	$0,24(s174)
	sh	$0,28(s174)
	sh	$0,32(s174)
	sh	$0,36(s174)
	addiu	s174,s174,40
	bne	s174,s176,$L954
	nop
	lui	s177,%hi(bl_tree+76)
	addiu	s178,s177,%lo(bl_tree+76)
	sh	$0,0(s38)
	addiu	s179,s38,4
$L955:
	sh	$0,0(s179)
	sh	$0,4(s179)
	sh	$0,8(s179)
	sh	$0,12(s179)
	sh	$0,16(s179)
	sh	$0,20(s179)
	sh	$0,24(s179)
	sh	$0,28(s179)
	sh	$0,32(s179)
	addiu	s179,s179,36
	bne	s179,s178,$L955
	nop
	li	s180,1
	sh	s180,1024(s18)
	sw	$0,%gp_rel(static_len)($28)
	sw	$0,%gp_rel(opt_len)($28)
	sw	$0,%gp_rel(last_flags)($28)
	sw	$0,%gp_rel(last_dist)($28)
	sw	$0,%gp_rel(last_lit)($28)
	sb	$0,%gp_rel(flags)($28)
	sb	s180,%gp_rel(flag_bit)($28)
	bne	s8,$0,$L1080
	nop
	lw	s181,%gp_rel(compressed_len)($28)
	nop
$L956:
	srl	s182,s181,3
	addiu	$sp,$sp,64
	move	$2,s182
	j	s5
	nop
$L923:
	beq	s71,$0,$L925
	nop
	beq	s71,s84,$L926
	nop
	sll	s183,s71,2
	addu	s184,s183,s38
	lhu	s185,0(s184)
	nop
	addiu	s186,s185,1
	sh	s186,0(s184)
$L926:
	lhu	s187,64(s38)
	nop
	addiu	s188,s187,1
	sh	s188,64(s38)
	j	$L924
	nop
$L1027:
	bne	s78,$0,$L1094
	nop
	slt	s189,s83,11
	beq	s189,$0,$L1143
	nop
	lhu	s190,68(s38)
	nop
	addiu	s191,s190,1
	sh	s191,68(s38)
	bne	s97,$0,$L1144
	nop
$L1091:
	li	s72,3			# 0x3
	li	s73,138			# 0x8a
	move	s83,$0
	j	$L1093
	nop
$L925:
	slt	s192,s86,11
	beq	s192,$0,$L927
	nop
	lhu	s193,68(s38)
	nop
	addiu	s194,s193,1
	sh	s194,68(s38)
	j	$L924
	nop
$L949:
	beq	s152,s155,$L1145
	nop
	addiu	s195,s8,4
	li	s196,3			# 0x3
	move	$4,s195
	move	$5,s196
	move	$6,s150
	move	$7,s154
	jal	send_bits
	nop
	lw	s197,24(s23)
	lw	s198,24(s67)
	addiu	s199,s197,-256
	li	s200,5			# 0x5
	move	$4,s199
	move	$5,s200
	jal	send_bits
	nop
	move	s201,s198
	li	s202,5			# 0x5
	move	$4,s201
	move	$5,s202
	jal	send_bits
	nop
	addiu	s203,s143,-4
	li	s204,4			# 0x4
	move	$4,s203
	move	$5,s204
	jal	send_bits
	nop
	lui	s205,%hi(bl_order)
	addiu	s206,s205,%lo(bl_order)
	addu	s207,s206,s143
	nor	s208,$0,s206
	addu	s209,s208,s207
	andi	s210,s209,0x7
	lbu	s211,%lo(bl_order)(s205)
	nop
	sll	s212,s211,2
	addu	s213,s212,s38
	lhu	s214,2(s213)
	li	s215,3			# 0x3
	move	$4,s214
	move	$5,s215
	move	$6,s205
	move	$7,s213
	jal	send_bits
	nop
	addiu	s216,s206,1
	beq	s216,s207,$L1079
	nop
	beq	s210,$0,$L952
	nop
	li	s217,1			# 0x1
	beq	s210,s217,$L1067
	nop
	li	s218,2			# 0x2
	beq	s210,s218,$L1068
	nop
	li	s219,3			# 0x3
	beq	s210,s219,$L1069
	nop
	li	s220,4			# 0x4
	beq	s210,s220,$L1070
	nop
	li	s221,5			# 0x5
	beq	s210,s221,$L1071
	nop
	li	s222,6			# 0x6
	beq	s210,s222,$L1072
	nop
	lbu	s223,1(s206)
	nop
	sll	s224,s223,2
	addu	s225,s224,s38
	lhu	s226,2(s225)
	li	s227,3			# 0x3
	move	$4,s226
	move	$5,s227
	move	$6,s219
	jal	send_bits
	nop
	addiu	s216,s206,2
$L1072:
	lbu	s228,0(s216)
	nop
	sll	s229,s228,2
	addu	s230,s229,s38
	lhu	s231,2(s230)
	li	s232,3			# 0x3
	move	$4,s231
	move	$5,s232
	move	$6,s219
	jal	send_bits
	nop
	addiu	s216,s216,1
$L1071:
	lbu	s233,0(s216)
	nop
	sll	s234,s233,2
	addu	s235,s234,s38
	lhu	s236,2(s235)
	li	s237,3			# 0x3
	move	$4,s236
	move	$5,s237
	move	$6,s219
	jal	send_bits
	nop
	addiu	s216,s216,1
$L1070:
	lbu	s238,0(s216)
	nop
	sll	s239,s238,2
	addu	s240,s239,s38
	lhu	s241,2(s240)
	li	s242,3			# 0x3
	move	$4,s241
	move	$5,s242
	move	$6,s219
	jal	send_bits
	nop
	addiu	s216,s216,1
$L1069:
	lbu	s243,0(s216)
	nop
	sll	s244,s243,2
	addu	s245,s244,s38
	lhu	s246,2(s245)
	li	s247,3			# 0x3
	move	$4,s246
	move	$5,s247
	move	$6,s219
	move	$7,s245
	jal	send_bits
	nop
	addiu	s216,s216,1
$L1068:
	lbu	s248,0(s216)
	nop
	sll	s249,s248,2
	addu	s250,s249,s38
	lhu	s251,2(s250)
	li	s252,3			# 0x3
	move	$4,s251
	move	$5,s252
	move	$6,s250
	jal	send_bits
	nop
	addiu	s216,s216,1
$L1067:
	lbu	s253,0(s216)
	nop
	sll	s254,s253,2
	addu	s255,s254,s38
	lhu	s256,2(s255)
	li	s257,3			# 0x3
	move	$4,s256
	move	$5,s257
	jal	send_bits
	nop
	addiu	s216,s216,1
	beq	s216,s207,$L1079
	nop
$L952:
	lbu	s258,0(s216)
	nop
	sll	s259,s258,2
	addu	s260,s259,s38
	lhu	s261,2(s260)
	li	s262,3			# 0x3
	move	$4,s261
	move	$5,s262
	jal	send_bits
	nop
	lbu	s263,1(s216)
	nop
	sll	s264,s263,2
	addu	s265,s264,s38
	lhu	s266,2(s265)
	li	s267,3			# 0x3
	move	$4,s266
	move	$5,s267
	jal	send_bits
	nop
	lbu	s268,2(s216)
	nop
	sll	s269,s268,2
	addu	s270,s269,s38
	lhu	s271,2(s270)
	li	s272,3			# 0x3
	move	$4,s271
	move	$5,s272
	move	$6,s270
	jal	send_bits
	nop
	lbu	s273,3(s216)
	nop
	sll	s274,s273,2
	addu	s275,s274,s38
	lhu	s276,2(s275)
	li	s277,3			# 0x3
	move	$4,s276
	move	$5,s277
	move	$7,s275
	jal	send_bits
	nop
	lbu	s278,4(s216)
	nop
	sll	s279,s278,2
	addu	s280,s279,s38
	lhu	s281,2(s280)
	li	s282,3			# 0x3
	move	$4,s281
	move	$5,s282
	jal	send_bits
	nop
	lbu	s283,5(s216)
	nop
	sll	s284,s283,2
	addu	s285,s284,s38
	lhu	s286,2(s285)
	li	s287,3			# 0x3
	move	$4,s286
	move	$5,s287
	jal	send_bits
	nop
	lbu	s288,6(s216)
	nop
	sll	s289,s288,2
	addu	s290,s289,s38
	lhu	s291,2(s290)
	li	s292,3			# 0x3
	move	$4,s291
	move	$5,s292
	jal	send_bits
	nop
	lbu	s293,7(s216)
	nop
	sll	s294,s293,2
	addu	s295,s294,s38
	lhu	s296,2(s295)
	li	s297,3			# 0x3
	move	$4,s296
	move	$5,s297
	jal	send_bits
	nop
	addiu	s216,s216,8
	bne	s216,s207,$L952
	nop
$L1079:
	addiu	s298,s17,%lo(dyn_ltree)
	move	s299,s197
	move	$4,s298
	move	$5,s299
	jal	send_tree
	nop
	lui	s300,%hi(dyn_dtree)
	addiu	s301,s300,%lo(dyn_dtree)
	move	s302,s198
	move	$4,s301
	move	$5,s302
	jal	send_tree
	nop
	addiu	s303,s17,%lo(dyn_ltree)
	lui	s304,%hi(dyn_dtree)
	addiu	s305,s304,%lo(dyn_dtree)
	move	$4,s303
	move	$5,s305
	jal	compress_block
	nop
	lw	s306,%gp_rel(compressed_len)($28)
	lw	s307,%gp_rel(opt_len)($28)
	nop
	addu	s308,s307,s306
	addiu	s309,s308,3
	sw	s309,%gp_rel(compressed_len)($28)
	j	$L950
	nop
$L1094:
	beq	s78,s71,$L1032
	nop
	sll	s310,s78,2
	addu	s311,s310,s38
	lhu	s312,0(s311)
	nop
	addiu	s313,s312,1
	sh	s313,0(s311)
$L1032:
	lhu	s314,64(s38)
	nop
	addiu	s315,s314,1
	sh	s315,64(s38)
	j	$L1096
	nop
$L1111:
	beq	s40,s25,$L1049
	nop
	sll	s316,s40,2
	addu	s317,s316,s38
	lhu	s318,0(s317)
	nop
	addiu	s319,s318,1
	sh	s319,0(s317)
$L1049:
	lhu	s320,64(s38)
	nop
	addiu	s321,s320,1
	sh	s321,64(s38)
	j	$L1113
	nop
$L1121:
	move	s71,s84
	j	$L922
	nop
$L1116:
	move	s25,s36
	j	$L909
	nop
$L1122:
	move	s96,s71
	j	$L1093
	nop
$L1117:
	move	s51,s25
	j	$L1110
	nop
$L929:
	move	s71,s78
	li	s72,3			# 0x3
	li	s73,6			# 0x6
	move	s86,$0
	j	$L922
	nop
$L916:
	move	s25,s40
	li	s26,3			# 0x3
	li	s27,6			# 0x6
	move	s41,$0
	j	$L909
	nop
$L1123:
	move	s96,s97
	li	s72,3			# 0x3
	li	s73,6			# 0x6
	move	s83,$0
	j	$L1093
	nop
$L1118:
	move	s51,s52
	li	s26,3			# 0x3
	li	s27,6			# 0x6
	move	s35,$0
	j	$L1110
	nop
$L927:
	lhu	s322,72(s38)
	nop
	addiu	s323,s322,1
	sh	s323,72(s38)
	j	$L924
	nop
$L914:
	lhu	s324,72(s38)
	nop
	addiu	s325,s324,1
	sh	s325,72(s38)
	j	$L911
	nop
$L905:
	li	s26,4			# 0x4
	li	s27,7			# 0x7
	j	$L906
	nop
$L918:
	li	s72,4			# 0x4
	li	s73,7			# 0x7
	j	$L919
	nop
$L1143:
	lhu	s326,72(s38)
	nop
	addiu	s327,s326,1
	sh	s327,72(s38)
	j	$L1096
	nop
$L1124:
	lhu	s328,72(s38)
	nop
	addiu	s329,s328,1
	sh	s329,72(s38)
	j	$L1113
	nop
$L1081:
	bne	s78,s71,$L1018
	nop
	li	s71,-1			# 0xffffffffffffffff
	j	$L1085
	nop
$L1098:
	bne	s59,s25,$L1035
	nop
	li	s25,-1			# 0xffffffffffffffff
	j	$L1102
	nop
$L1036:
	beq	s25,$0,$L1146
	nop
	beq	s25,s36,$L1041
	nop
	sll	s330,s25,2
	addu	s331,s330,s38
	lhu	s332,0(s331)
	nop
	addiu	s333,s332,1
	sh	s333,0(s331)
$L1041:
	lhu	s334,64(s38)
	nop
	addiu	s335,s334,1
	sh	s335,64(s38)
	bne	s59,$0,$L1147
	nop
$L1100:
	li	s26,3			# 0x3
	li	s27,138			# 0x8a
	move	s35,$0
	j	$L1102
	nop
$L1019:
	beq	s71,$0,$L1148
	nop
	beq	s71,s84,$L1024
	nop
	sll	s336,s71,2
	addu	s337,s336,s38
	lhu	s338,0(s337)
	nop
	addiu	s339,s338,1
	sh	s339,0(s337)
$L1024:
	lhu	s340,64(s38)
	nop
	addiu	s341,s340,1
	sh	s341,64(s38)
	bne	s78,$0,$L1149
	nop
$L1083:
	li	s72,3			# 0x3
	li	s73,138			# 0x8a
	move	s83,$0
	j	$L1085
	nop
$L1145:
	addiu	s342,s8,2
	li	s343,3			# 0x3
	move	$4,s342
	move	$5,s343
	move	$6,s150
	move	$7,s154
	jal	send_bits
	nop
	lui	s344,%hi(static_ltree)
	addiu	s345,s344,%lo(static_ltree)
	lui	s346,%hi(static_dtree)
	addiu	s347,s346,%lo(static_dtree)
	move	$4,s345
	move	$5,s347
	jal	compress_block
	nop
	lw	s348,%gp_rel(compressed_len)($28)
	lw	s349,%gp_rel(static_len)($28)
	nop
	addu	s350,s349,s348
	addiu	s351,s350,3
	sw	s351,%gp_rel(compressed_len)($28)
	j	$L950
	nop
$L1080:
	move	$7,s177
	jal	bi_windup
	nop
	lw	s352,%gp_rel(compressed_len)($28)
	nop
	addiu	s181,s352,7
	sw	s181,%gp_rel(compressed_len)($28)
	j	$L956
	nop
$L1073:
	lui	s17,%hi(dyn_ltree)
	addiu	s18,s17,%lo(dyn_ltree)
	lhu	s353,4(s18)
	lhu	s354,%lo(dyn_ltree)(s17)
	nop
	addu	s355,s353,s354
	lhu	s356,8(s18)
	nop
	addu	s357,s355,s356
	lhu	s358,12(s18)
	nop
	addu	s359,s357,s358
	lhu	s360,16(s18)
	nop
	addu	s361,s359,s360
	lhu	s362,20(s18)
	nop
	addu	s363,s361,s362
	lhu	s364,24(s18)
	nop
	addu	s11,s364,s363
	lui	s365,%hi(dyn_ltree+28)
	addiu	s366,s365,%lo(dyn_ltree+28)
	lui	s367,%hi(dyn_ltree+512)
	addiu	s368,s367,%lo(dyn_ltree+512)
	lhu	s12,%lo(dyn_ltree+28)(s365)
	addiu	s369,s366,4
$L903:
	lhu	s370,0(s369)
	nop
	addu	s371,s12,s370
	lhu	s372,4(s369)
	nop
	addu	s373,s371,s372
	lhu	s374,8(s369)
	nop
	addu	s375,s373,s374
	lhu	s376,12(s369)
	nop
	addu	s377,s375,s376
	lhu	s378,16(s369)
	nop
	addu	s379,s377,s378
	lhu	s380,20(s369)
	nop
	addu	s381,s379,s380
	lhu	s382,24(s369)
	nop
	addu	s383,s381,s382
	lhu	s384,28(s369)
	nop
	addu	s12,s383,s384
	addiu	s369,s369,32
	bne	s369,s368,$L903
	nop
	lui	s385,%hi(dyn_ltree+1024)
	addiu	s386,s385,%lo(dyn_ltree+1024)
$L904:
	lhu	s387,0(s369)
	nop
	addu	s388,s11,s387
	lhu	s389,4(s369)
	nop
	addu	s390,s388,s389
	lhu	s391,8(s369)
	nop
	addu	s392,s390,s391
	lhu	s393,12(s369)
	nop
	addu	s394,s392,s393
	lhu	s395,16(s369)
	nop
	addu	s396,s394,s395
	lhu	s397,20(s369)
	nop
	addu	s398,s396,s397
	lhu	s399,24(s369)
	nop
	addu	s400,s398,s399
	lhu	s401,28(s369)
	nop
	addu	s11,s400,s401
	addiu	s369,s369,32
	bne	s369,s386,$L904
	nop
	srl	s402,s12,2
	sltu	s10,s402,s11
	xori	s403,s10,0x1
	sh	s403,0(s14)
	j	$L902
	nop
$L1148:
	slt	s404,s83,11
	bne	s404,$0,$L1087
	nop
	lhu	s405,72(s38)
	nop
	addiu	s406,s405,1
	sh	s406,72(s38)
	j	$L1088
	nop
$L1146:
	slt	s407,s35,11
	bne	s407,$0,$L1104
	nop
	lhu	s408,72(s38)
	nop
	addiu	s409,s408,1
	sh	s409,72(s38)
	j	$L1105
	nop
$L1119:
	move	s25,s59
	li	s26,3			# 0x3
	li	s27,6			# 0x6
	move	s35,$0
	j	$L1102
	nop
$L1126:
	move	s71,s78
	li	s72,3			# 0x3
	li	s73,6			# 0x6
	move	s83,$0
	j	$L1085
	nop
$L1087:
	lhu	s410,68(s38)
	nop
	addiu	s411,s410,1
	sh	s411,68(s38)
	j	$L1088
	nop
$L1104:
	lhu	s412,68(s38)
	nop
	addiu	s413,s412,1
	sh	s413,68(s38)
	j	$L1105
	nop
$L1115:
	lui	s414,%hi(bl_tree)
	addiu	s38,s414,%lo(bl_tree)
	j	$L907
	nop
$L1128:
	li	s142,18			# 0x12
	j	$L932
	nop
$L1133:
	li	s142,13			# 0xd
	j	$L932
	nop
$L1132:
	li	s142,14			# 0xe
	j	$L932
	nop
$L1129:
	li	s142,17			# 0x11
	j	$L932
	nop
$L1131:
	li	s142,15			# 0xf
	j	$L932
	nop
$L1130:
	li	s142,16			# 0x10
	j	$L932
	nop
$L1134:
	li	s142,12			# 0xc
	j	$L932
	nop
$L1139:
	li	s142,7			# 0x7
	j	$L932
	nop
$L1138:
	li	s142,8			# 0x8
	j	$L932
	nop
$L1137:
	li	s142,9			# 0x9
	j	$L932
	nop
$L1140:
	li	s142,6			# 0x6
	j	$L932
	nop
$L1135:
	li	s142,11			# 0xb
	j	$L932
	nop
$L1136:
	li	s142,10			# 0xa
	j	$L932
	nop
$L1141:
	li	s142,5			# 0x5
	j	$L932
	nop
$L1142:
	li	s142,4			# 0x4
	j	$L932
	nop
	.set	macro
	.set	reorder
	.end	flush_block
	.size	flush_block, .-flush_block
	.data
	.align	2
	.type	extra_dbits, @object
	.size	extra_dbits, 120
extra_dbits:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	2
	.word	2
	.word	3
	.word	3
	.word	4
	.word	4
	.word	5
	.word	5
	.word	6
	.word	6
	.word	7
	.word	7
	.word	8
	.word	8
	.word	9
	.word	9
	.word	10
	.word	10
	.word	11
	.word	11
	.word	12
	.word	12
	.word	13
	.word	13
	.align	2
	.type	l_desc, @object
	.size	l_desc, 28
l_desc:
	.word	dyn_ltree
	.word	static_ltree
	.word	extra_lbits
	.word	257
	.word	286
	.word	15
	.word	0
	.align	2
	.type	d_desc, @object
	.size	d_desc, 28
d_desc:
	.word	dyn_dtree
	.word	static_dtree
	.word	extra_dbits
	.word	0
	.word	30
	.word	15
	.word	0
	.align	2
	.type	extra_lbits, @object
	.size	extra_lbits, 116
extra_lbits:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.word	2
	.word	2
	.word	2
	.word	2
	.word	3
	.word	3
	.word	3
	.word	3
	.word	4
	.word	4
	.word	4
	.word	4
	.word	5
	.word	5
	.word	5
	.word	5
	.word	0
	.align	2
	.type	bl_desc, @object
	.size	bl_desc, 28
bl_desc:
	.word	bl_tree
	.word	0
	.word	extra_blbits
	.word	0
	.word	19
	.word	7
	.word	0
	.rdata
	.align	2
	.type	bl_order, @object
	.size	bl_order, 19
bl_order:
	.byte	16
	.byte	17
	.byte	18
	.byte	0
	.byte	8
	.byte	7
	.byte	9
	.byte	6
	.byte	10
	.byte	5
	.byte	11
	.byte	4
	.byte	12
	.byte	3
	.byte	13
	.byte	2
	.byte	14
	.byte	1
	.byte	15
	.local	dyn_ltree
	.comm	dyn_ltree,2292,4
	.local	dyn_dtree
	.comm	dyn_dtree,244,4
	.local	static_ltree
	.comm	static_ltree,1152,4
	.local	static_dtree
	.comm	static_dtree,120,4
	.local	bl_tree
	.comm	bl_tree,156,4
	.local	bl_count
	.comm	bl_count,32,4
	.local	heap
	.comm	heap,2292,4
	.local	heap_len
	.comm	heap_len,4,4
	.local	heap_max
	.comm	heap_max,4,4
	.local	depth
	.comm	depth,573,4
	.local	length_code
	.comm	length_code,256,4
	.local	dist_code
	.comm	dist_code,512,4
	.local	base_length
	.comm	base_length,116,4
	.local	base_dist
	.comm	base_dist,120,4
	.local	flag_buf
	.comm	flag_buf,4096,4
	.local	last_lit
	.comm	last_lit,4,4
	.local	last_dist
	.comm	last_dist,4,4
	.local	last_flags
	.comm	last_flags,4,4
	.local	flags
	.comm	flags,1,1
	.local	flag_bit
	.comm	flag_bit,1,1
	.local	opt_len
	.comm	opt_len,4,4
	.local	static_len
	.comm	static_len,4,4
	.local	compressed_len
	.comm	compressed_len,4,4
	.local	input_len
	.comm	input_len,4,4
	.comm	file_type,4,4
	.comm	file_method,4,4
	.data
	.align	2
	.type	extra_blbits, @object
	.size	extra_blbits, 76
extra_blbits:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	2
	.word	3
	.word	7
	.ident	"GCC: (GNU) 4.3.0"
