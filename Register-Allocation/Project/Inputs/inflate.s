	.file	1 "inflate.c"
	.section .mdebug.abi32
	.previous
	.text
	.align	2
	.globl	inflate_stored
	.set	nomips16
	.ent	inflate_stored
inflate_stored:
	.frame	$sp,56,$31		# vars= 0, regs= 9/0, args= 16, gp= 0
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$6
	move	s2,$31
	addiu	$sp,$sp,-56
	lw	s3,%gp_rel(bk)($28)
	lw	s4,%gp_rel(outcnt)($28)
	andi	s5,s3,0x7
	lw	s6,%gp_rel(bb)($28)
	nop
	srl	s7,s6,s5
	subu	s8,s3,s5
	sltu	s9,s8,16
	beq	s9,$0,$L2
	nop
	lui	s10,%hi(inbuf)
	addiu	s11,s10,%lo(inbuf)
	li	s12,15			# 0xf
	subu	s13,s12,s8
	srl	s14,s13,3
	andi	s15,s14,0x3
	lw	s16,%gp_rel(inptr)($28)
	lw	s17,%gp_rel(insize)($28)
	nop
	sltu	s1,s16,s17
	beq	s1,$0,$L93
	nop
	addu	s18,s16,s11
	lbu	s19,0(s18)
	addiu	s20,s16,1
	sw	s20,%gp_rel(inptr)($28)
$L79:
	sll	s21,s19,s8
	or	s7,s7,s21
	addiu	s22,s8,8
	sltu	s23,s22,16
	beq	s23,$0,$L80
	nop
	beq	s15,$0,$L5
	nop
	li	s24,1			# 0x1
	beq	s15,s24,$L60
	nop
	li	s25,2			# 0x2
	beq	s15,s25,$L61
	nop
	lw	s26,%gp_rel(inptr)($28)
	lw	s27,%gp_rel(insize)($28)
	nop
	sltu	s28,s26,s27
	beq	s28,$0,$L94
	nop
	addu	s29,s26,s11
	lbu	s30,0(s29)
	addiu	s31,s26,1
	sw	s31,%gp_rel(inptr)($28)
$L82:
	sll	s32,s30,s22
	or	s7,s7,s32
	addiu	s22,s22,8
$L61:
	lw	s33,%gp_rel(inptr)($28)
	lw	s34,%gp_rel(insize)($28)
	nop
	sltu	s35,s33,s34
	beq	s35,$0,$L95
	nop
	addu	s36,s33,s11
	lbu	s37,0(s36)
	addiu	s38,s33,1
	sw	s38,%gp_rel(inptr)($28)
$L84:
	sll	s6,s37,s22
	or	s7,s7,s6
	addiu	s22,s22,8
$L60:
	lw	s39,%gp_rel(inptr)($28)
	lw	s17,%gp_rel(insize)($28)
	nop
	sltu	s1,s39,s17
	beq	s1,$0,$L96
	nop
	addu	s40,s39,s11
	lbu	s41,0(s40)
	addiu	s42,s39,1
	sw	s42,%gp_rel(inptr)($28)
$L86:
	sll	s43,s41,s22
	or	s7,s7,s43
	addiu	s22,s22,8
	sltu	s44,s22,16
	bne	s44,$0,$L5
	nop
$L80:
	li	s45,15			# 0xf
	subu	s46,s45,s8
	srl	s47,s46,3
	sll	s48,s47,3
	addiu	s49,s8,8
	addu	s8,s49,s48
$L2:
	srl	s50,s7,16
	addiu	s51,s8,-16
	sltu	s52,s51,16
	beq	s52,$0,$L6
	nop
	lui	s53,%hi(inbuf)
	addiu	s54,s53,%lo(inbuf)
	li	s1,15			# 0xf
	subu	s6,s1,s51
	srl	s55,s6,3
	andi	s56,s55,0x3
	lw	s57,%gp_rel(inptr)($28)
	lw	s58,%gp_rel(insize)($28)
	nop
	sltu	s59,s57,s58
	beq	s59,$0,$L97
	nop
	addu	s60,s57,s54
	lbu	s61,0(s60)
	addiu	s62,s57,1
	sw	s62,%gp_rel(inptr)($28)
$L66:
	sll	s63,s61,s51
	or	s50,s50,s63
	addiu	s64,s51,8
	sltu	s65,s64,16
	beq	s65,$0,$L67
	nop
	beq	s56,$0,$L9
	nop
	li	s66,1			# 0x1
	beq	s56,s66,$L57
	nop
	li	s67,2			# 0x2
	beq	s56,s67,$L58
	nop
	lw	s68,%gp_rel(inptr)($28)
	lw	s69,%gp_rel(insize)($28)
	nop
	sltu	s70,s68,s69
	beq	s70,$0,$L98
	nop
	addu	s71,s68,s54
	lbu	s72,0(s71)
	addiu	s73,s68,1
	sw	s73,%gp_rel(inptr)($28)
$L69:
	sll	s74,s72,s64
	or	s50,s50,s74
	addiu	s64,s64,8
$L58:
	lw	s75,%gp_rel(inptr)($28)
	lw	s76,%gp_rel(insize)($28)
	nop
	sltu	s77,s75,s76
	beq	s77,$0,$L99
	nop
	addu	s1,s75,s54
	lbu	s78,0(s1)
	addiu	s6,s75,1
	sw	s6,%gp_rel(inptr)($28)
$L71:
	sll	s79,s78,s64
	or	s50,s50,s79
	addiu	s64,s64,8
$L57:
	lw	s80,%gp_rel(inptr)($28)
	lw	s53,%gp_rel(insize)($28)
	nop
	sltu	s81,s80,s53
	beq	s81,$0,$L100
	nop
	addu	s82,s80,s54
	lbu	s83,0(s82)
	addiu	s84,s80,1
	sw	s84,%gp_rel(inptr)($28)
$L73:
	sll	s85,s83,s64
	or	s50,s50,s85
	addiu	s64,s64,8
	sltu	s86,s64,16
	bne	s86,$0,$L9
	nop
$L67:
	li	s87,31			# 0x1f
	subu	s88,s87,s8
	srl	s89,s88,3
	sll	s90,s89,3
	addiu	s91,s51,8
	addu	s51,s91,s90
$L6:
	nor	s92,$0,s50
	andi	s93,s92,0xffff
	andi	s94,s7,0xffff
	beq	s93,s94,$L10
	nop
	li	s95,1			# 0x1
$L11:
	addiu	$sp,$sp,56
	move	$2,s95
	j	s2
	nop
$L104:
	addu	s97,s96,s11
	lbu	s98,0(s97)
	addiu	s99,s96,1
	sw	s99,%gp_rel(inptr)($28)
	move	s100,s99
	sll	s101,s98,s22
	or	s102,s7,s101
	addiu	s103,s22,8
	lw	s104,%gp_rel(insize)($28)
	nop
	sltu	s105,s100,s104
	beq	s105,$0,$L101
	nop
$L63:
	addu	s106,s100,s11
	lbu	s107,0(s106)
	addiu	s108,s100,1
	sw	s108,%gp_rel(inptr)($28)
	move	s109,s108
	sll	s110,s107,s103
	or	s111,s102,s110
	addiu	s112,s103,8
	lw	s113,%gp_rel(insize)($28)
	nop
	sltu	s114,s109,s113
	beq	s114,$0,$L102
	nop
$L88:
	addu	s115,s109,s11
	lbu	s116,0(s115)
	addiu	s117,s109,1
	sw	s117,%gp_rel(inptr)($28)
	move	s118,s117
	sll	s119,s116,s112
	or	s120,s111,s119
	addiu	s121,s103,16
	lw	s122,%gp_rel(insize)($28)
	nop
	sltu	s123,s118,s122
	beq	s123,$0,$L103
	nop
$L90:
	addu	s124,s118,s11
	lbu	s125,0(s124)
	addiu	s126,s118,1
	sw	s126,%gp_rel(inptr)($28)
$L91:
	sll	s127,s125,s121
	or	s7,s120,s127
	addiu	s22,s103,24
	sltu	s128,s22,16
	beq	s128,$0,$L80
	nop
$L5:
	lw	s96,%gp_rel(inptr)($28)
	lw	s129,%gp_rel(insize)($28)
	nop
	sltu	s130,s96,s129
	bne	s130,$0,$L104
	nop
	move	s131,$0
	move	$4,s131
	move	$5,s6
	move	$6,s1
	move	$7,s17
	jal	fill_inbuf
	nop
	move	s132,$2
	andi	s133,s132,0x00ff
	lw	s100,%gp_rel(inptr)($28)
	sll	s134,s133,s22
	or	s102,s7,s134
	addiu	s103,s22,8
	lw	s135,%gp_rel(insize)($28)
	nop
	sltu	s136,s100,s135
	bne	s136,$0,$L63
	nop
$L101:
	move	s137,$0
	move	$4,s137
	move	$5,s6
	move	$6,s1
	move	$7,s17
	jal	fill_inbuf
	nop
	move	s138,$2
	andi	s139,s138,0x00ff
	lw	s109,%gp_rel(inptr)($28)
	sll	s140,s139,s103
	or	s111,s102,s140
	addiu	s112,s103,8
	lw	s141,%gp_rel(insize)($28)
	nop
	sltu	s142,s109,s141
	bne	s142,$0,$L88
	nop
$L102:
	move	s143,$0
	move	$4,s143
	move	$5,s6
	move	$6,s1
	move	$7,s17
	jal	fill_inbuf
	nop
	move	s144,$2
	andi	s145,s144,0x00ff
	lw	s118,%gp_rel(inptr)($28)
	sll	s146,s145,s112
	or	s120,s111,s146
	addiu	s121,s103,16
	lw	s147,%gp_rel(insize)($28)
	nop
	sltu	s148,s118,s147
	bne	s148,$0,$L90
	nop
$L103:
	move	s149,$0
	move	$4,s149
	move	$5,s6
	move	$6,s1
	move	$7,s17
	jal	fill_inbuf
	nop
	move	s150,$2
	andi	s125,s150,0x00ff
	j	$L91
	nop
$L108:
	addu	s152,s151,s54
	lbu	s153,0(s152)
	addiu	s154,s151,1
	sw	s154,%gp_rel(inptr)($28)
	move	s155,s154
	sll	s156,s153,s64
	or	s157,s50,s156
	addiu	s158,s64,8
	lw	s159,%gp_rel(insize)($28)
	nop
	sltu	s160,s155,s159
	beq	s160,$0,$L105
	nop
$L65:
	addu	s161,s155,s54
	lbu	s162,0(s161)
	addiu	s163,s155,1
	sw	s163,%gp_rel(inptr)($28)
	move	s164,s163
	sll	s165,s162,s158
	or	s166,s157,s165
	addiu	s167,s158,8
	lw	s168,%gp_rel(insize)($28)
	nop
	sltu	s169,s164,s168
	beq	s169,$0,$L106
	nop
$L75:
	addu	s170,s164,s54
	lbu	s171,0(s170)
	addiu	s172,s164,1
	sw	s172,%gp_rel(inptr)($28)
	move	s173,s172
	sll	s1,s171,s167
	or	s174,s166,s1
	addiu	s175,s158,16
	lw	s6,%gp_rel(insize)($28)
	nop
	sltu	s176,s173,s6
	beq	s176,$0,$L107
	nop
$L77:
	addu	s177,s173,s54
	lbu	s178,0(s177)
	addiu	s53,s173,1
	sw	s53,%gp_rel(inptr)($28)
$L78:
	sll	s179,s178,s175
	or	s50,s174,s179
	addiu	s64,s158,24
	sltu	s180,s64,16
	beq	s180,$0,$L67
	nop
$L9:
	lw	s151,%gp_rel(inptr)($28)
	lw	s181,%gp_rel(insize)($28)
	nop
	sltu	s182,s151,s181
	bne	s182,$0,$L108
	nop
	move	s183,$0
	move	$4,s183
	move	$5,s6
	move	$6,s1
	move	$7,s53
	jal	fill_inbuf
	nop
	move	s184,$2
	andi	s185,s184,0x00ff
	lw	s155,%gp_rel(inptr)($28)
	sll	s186,s185,s64
	or	s157,s50,s186
	addiu	s158,s64,8
	lw	s187,%gp_rel(insize)($28)
	nop
	sltu	s188,s155,s187
	bne	s188,$0,$L65
	nop
$L105:
	move	s189,$0
	move	$4,s189
	move	$5,s6
	move	$6,s1
	move	$7,s53
	jal	fill_inbuf
	nop
	move	s190,$2
	andi	s191,s190,0x00ff
	lw	s164,%gp_rel(inptr)($28)
	sll	s192,s191,s158
	or	s166,s157,s192
	addiu	s167,s158,8
	lw	s193,%gp_rel(insize)($28)
	nop
	sltu	s194,s164,s193
	bne	s194,$0,$L75
	nop
$L106:
	move	s195,$0
	move	$4,s195
	move	$5,s6
	move	$6,s1
	move	$7,s53
	jal	fill_inbuf
	nop
	move	s196,$2
	andi	s197,s196,0x00ff
	lw	s173,%gp_rel(inptr)($28)
	sll	s1,s197,s167
	or	s174,s166,s1
	addiu	s175,s158,16
	lw	s6,%gp_rel(insize)($28)
	nop
	sltu	s198,s173,s6
	bne	s198,$0,$L77
	nop
$L107:
	move	s199,$0
	move	$4,s199
	move	$5,s6
	move	$6,s1
	move	$7,s53
	jal	fill_inbuf
	nop
	move	s200,$2
	andi	s178,s200,0x00ff
	j	$L78
	nop
$L10:
	srl	s201,s50,16
	addiu	s202,s51,-16
	beq	s93,$0,$L12
	nop
	addiu	s203,s93,-1
	lui	s204,%hi(window)
	addiu	s205,s204,%lo(window)
	lui	s206,%hi(inbuf)
	addiu	s207,s206,%lo(inbuf)
	li	s208,32768			# 0x8000
	j	$L13
	nop
$L110:
	addu	s1,s209,s207
	lbu	s210,0(s1)
	addiu	s6,s209,1
	sw	s6,%gp_rel(inptr)($28)
$L15:
	sll	s211,s210,s202
	or	s201,s201,s211
	addiu	s202,s202,8
$L18:
	addu	s212,s4,s205
	sb	s201,0(s212)
	addiu	s4,s4,1
	beq	s4,s208,$L109
	nop
	srl	s201,s201,8
	addiu	s202,s202,-8
	beq	s203,$0,$L12
	nop
$L111:
	addiu	s203,s203,-1
$L13:
	sltu	s213,s202,8
	beq	s213,$0,$L18
	nop
	lw	s209,%gp_rel(inptr)($28)
	lw	s214,%gp_rel(insize)($28)
	nop
	sltu	s215,s209,s214
	bne	s215,$0,$L110
	nop
	move	s216,$0
	move	$4,s216
	move	$5,s6
	move	$6,s1
	move	$7,s213
	jal	fill_inbuf
	nop
	move	s217,$2
	andi	s210,s217,0x00ff
	j	$L15
	nop
$L109:
	sw	s4,%gp_rel(outcnt)($28)
	move	$4,s212
	move	$5,s6
	move	$6,s1
	move	$7,s213
	jal	flush_window
	nop
	move	s4,$0
	srl	s201,s201,8
	addiu	s202,s202,-8
	bne	s203,$0,$L111
	nop
$L12:
	sw	s4,%gp_rel(outcnt)($28)
	sw	s201,%gp_rel(bb)($28)
	sw	s202,%gp_rel(bk)($28)
	move	s95,$0
	j	$L11
	nop
$L97:
	move	s218,$0
	move	$4,s218
	move	$5,s6
	move	$6,s1
	move	$7,s53
	jal	fill_inbuf
	nop
	move	s219,$2
	andi	s61,s219,0x00ff
	j	$L66
	nop
$L93:
	move	s220,$0
	move	$4,s220
	move	$5,s6
	move	$6,s1
	move	$7,s17
	jal	fill_inbuf
	nop
	move	s221,$2
	andi	s19,s221,0x00ff
	j	$L79
	nop
$L100:
	move	s222,$0
	move	$4,s222
	move	$5,s6
	move	$6,s1
	move	$7,s53
	jal	fill_inbuf
	nop
	move	s223,$2
	andi	s83,s223,0x00ff
	j	$L73
	nop
$L99:
	move	s224,$0
	move	$4,s224
	move	$5,s6
	move	$6,s1
	move	$7,s53
	jal	fill_inbuf
	nop
	move	s225,$2
	andi	s78,s225,0x00ff
	j	$L71
	nop
$L98:
	move	s226,$0
	move	$4,s226
	move	$5,s6
	move	$6,s1
	move	$7,s53
	jal	fill_inbuf
	nop
	move	s227,$2
	andi	s72,s227,0x00ff
	j	$L69
	nop
$L94:
	move	s228,$0
	move	$4,s228
	move	$5,s6
	move	$6,s1
	move	$7,s17
	jal	fill_inbuf
	nop
	move	s229,$2
	andi	s30,s229,0x00ff
	j	$L82
	nop
$L96:
	move	s230,$0
	move	$4,s230
	move	$5,s6
	move	$6,s1
	move	$7,s17
	jal	fill_inbuf
	nop
	move	s231,$2
	andi	s41,s231,0x00ff
	j	$L86
	nop
$L95:
	move	s232,$0
	move	$4,s232
	move	$5,s6
	move	$6,s1
	move	$7,s17
	jal	fill_inbuf
	nop
	move	s233,$2
	andi	s37,s233,0x00ff
	j	$L84
	nop
	.set	macro
	.set	reorder
	.end	inflate_stored
	.size	inflate_stored, .-inflate_stored
	.align	2
	.globl	inflate_codes
	.set	nomips16
	.ent	inflate_codes
inflate_codes:
	.frame	$sp,80,$31		# vars= 24, regs= 10/0, args= 16, gp= 0
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
	addiu	$sp,$sp,-80
	lw	s7,%gp_rel(bb)($28)
	lw	s8,%gp_rel(bk)($28)
	lw	s9,%gp_rel(outcnt)($28)
	sll	s10,s3,1
	lui	s11,%hi(mask_bits)
	addiu	s12,s11,%lo(mask_bits)
	addu	s13,s10,s12
	lhu	s14,0(s13)
	nop
	sll	s15,s4,1
	addu	s16,s15,s12
	lhu	s17,0(s16)
	nop
	lui	s18,%hi(inbuf)
	addiu	s19,s18,%lo(inbuf)
$L367:
	sltu	s20,s8,s3
	bne	s20,$0,$L116
	nop
	and	s21,s7,s14
	sll	s22,s21,3
	addu	s23,s1,s22
	lbu	s24,0(s23)
	nop
	sltu	s25,s24,17
	bne	s25,$0,$L117
	nop
	li	s26,99			# 0x63
	beq	s24,s26,$L118
	nop
$L368:
	lbu	s27,1(s23)
	nop
	srl	s28,s7,s27
	subu	s8,s8,s27
	addiu	s29,s24,-16
	sltu	s30,s8,s29
	beq	s30,$0,$L120
	nop
	nor	s31,$0,s8
	addu	s32,s31,s29
	srl	s12,s32,3
	andi	s33,s12,0x3
	lw	s34,%gp_rel(inptr)($28)
	lw	s15,%gp_rel(insize)($28)
	nop
	sltu	s35,s34,s15
	beq	s35,$0,$L416
	nop
	addu	s36,s34,s19
	lbu	s37,0(s36)
	addiu	s38,s34,1
	sw	s38,%gp_rel(inptr)($28)
$L409:
	sll	s39,s37,s8
	or	s28,s28,s39
	addiu	s8,s8,8
	sltu	s40,s8,s29
	beq	s40,$0,$L120
	nop
	beq	s33,$0,$L169
	nop
	li	s41,1			# 0x1
	beq	s33,s41,$L365
	nop
	li	s42,2			# 0x2
	beq	s33,s42,$L366
	nop
	lw	s43,%gp_rel(inptr)($28)
	lw	s44,%gp_rel(insize)($28)
	nop
	sltu	s45,s43,s44
	beq	s45,$0,$L315
	nop
	addu	s12,s43,s19
	lbu	s46,0(s12)
	addiu	s47,s43,1
	sw	s47,%gp_rel(inptr)($28)
$L410:
	sll	s48,s46,s8
	or	s28,s28,s48
	addiu	s8,s8,8
$L366:
	lw	s49,%gp_rel(inptr)($28)
	lw	s50,%gp_rel(insize)($28)
	nop
	sltu	s51,s49,s50
	beq	s51,$0,$L318
	nop
	addu	s52,s49,s19
	lbu	s53,0(s52)
	addiu	s4,s49,1
	sw	s4,%gp_rel(inptr)($28)
$L411:
	sll	s54,s53,s8
	or	s28,s28,s54
	addiu	s8,s8,8
$L365:
	lw	s55,%gp_rel(inptr)($28)
	lw	s15,%gp_rel(insize)($28)
	nop
	sltu	s56,s55,s15
	beq	s56,$0,$L321
	nop
	addu	s57,s55,s19
	lbu	s58,0(s57)
	addiu	s59,s55,1
	sw	s59,%gp_rel(inptr)($28)
$L412:
	sll	s60,s58,s8
	or	s28,s28,s60
	addiu	s8,s8,8
	sltu	s61,s8,s29
	bne	s61,$0,$L169
	nop
	j	$L120
	nop
$L418:
	addu	s63,s62,s19
	lbu	s64,0(s63)
	addiu	s65,s62,1
	sw	s65,%gp_rel(inptr)($28)
	move	s66,s65
	sll	s67,s64,s8
	or	s68,s28,s67
	addiu	s69,s8,8
	lw	s70,%gp_rel(insize)($28)
	nop
	sltu	s71,s66,s70
	beq	s71,$0,$L417
	nop
$L370:
	addu	s72,s66,s19
	lbu	s73,0(s72)
	addiu	s74,s66,1
	sw	s74,%gp_rel(inptr)($28)
	move	s75,s74
	sll	s76,s73,s69
	or	s77,s68,s76
	addiu	s78,s69,8
	lw	s79,%gp_rel(insize)($28)
	nop
	sltu	s80,s75,s79
	beq	s80,$0,$L326
	nop
$L419:
	addu	s81,s75,s19
	lbu	s82,0(s81)
	addiu	s12,s75,1
	sw	s12,%gp_rel(inptr)($28)
	move	s83,s12
	sll	s4,s82,s78
	or	s84,s77,s4
	addiu	s85,s69,16
	lw	s86,%gp_rel(insize)($28)
	nop
	sltu	s87,s83,s86
	beq	s87,$0,$L328
	nop
$L420:
	addu	s88,s83,s19
	lbu	s89,0(s88)
	addiu	s90,s83,1
	sw	s90,%gp_rel(inptr)($28)
	sll	s91,s89,s85
	or	s28,s84,s91
	addiu	s8,s69,24
	sltu	s92,s8,s29
	beq	s92,$0,$L120
	nop
$L169:
	lw	s62,%gp_rel(inptr)($28)
	lw	s93,%gp_rel(insize)($28)
	nop
	sltu	s94,s62,s93
	bne	s94,$0,$L418
	nop
	move	s95,$0
	move	$4,s95
	move	$5,s15
	move	$6,s12
	move	$7,s4
	jal	fill_inbuf
	nop
	move	s96,$2
	andi	s97,s96,0x00ff
	lw	s66,%gp_rel(inptr)($28)
	sll	s98,s97,s8
	or	s68,s28,s98
	addiu	s69,s8,8
	lw	s99,%gp_rel(insize)($28)
	nop
	sltu	s100,s66,s99
	bne	s100,$0,$L370
	nop
$L417:
	move	s101,$0
	move	$4,s101
	move	$5,s15
	move	$6,s12
	move	$7,s65
	jal	fill_inbuf
	nop
	move	s102,$2
	andi	s103,s102,0x00ff
	lw	s75,%gp_rel(inptr)($28)
	sll	s104,s103,s69
	or	s77,s68,s104
	addiu	s78,s69,8
	lw	s105,%gp_rel(insize)($28)
	nop
	sltu	s106,s75,s105
	bne	s106,$0,$L419
	nop
$L326:
	move	s107,$0
	move	$4,s107
	move	$5,s15
	move	$6,s12
	move	$7,s65
	jal	fill_inbuf
	nop
	move	s108,$2
	andi	s109,s108,0x00ff
	lw	s83,%gp_rel(inptr)($28)
	sll	s4,s109,s78
	or	s84,s77,s4
	addiu	s85,s69,16
	lw	s110,%gp_rel(insize)($28)
	nop
	sltu	s111,s83,s110
	bne	s111,$0,$L420
	nop
$L328:
	move	s112,$0
	move	$4,s112
	move	$5,s15
	move	$6,s12
	move	$7,s4
	jal	fill_inbuf
	nop
	move	s113,$2
	andi	s114,s113,0x00ff
	sll	s115,s114,s85
	or	s28,s84,s115
	addiu	s8,s69,24
	sltu	s116,s8,s29
	bne	s116,$0,$L169
	nop
$L120:
	move	s7,s28
	lw	s117,4(s23)
	sll	s118,s29,1
	lui	s119,%hi(mask_bits)
	addiu	s120,s119,%lo(mask_bits)
	addu	s121,s118,s120
	lhu	s122,0(s121)
	nop
	and	s123,s28,s122
	sll	s124,s123,3
	addu	s23,s117,s124
	lbu	s24,0(s23)
	nop
	sltu	s125,s24,17
	bne	s125,$0,$L117
	nop
	li	s126,99			# 0x63
	bne	s24,s126,$L368
	nop
$L118:
	li	s127,1			# 0x1
$L161:
	addiu	$sp,$sp,80
	move	$2,s127
	j	s6
	nop
$L116:
	lw	s128,%gp_rel(inptr)($28)
	lw	s129,%gp_rel(insize)($28)
	nop
	sltu	s4,s128,s129
	beq	s4,$0,$L114
	nop
	addu	s130,s128,s19
	lbu	s131,0(s130)
	addiu	s132,s128,1
	sw	s132,%gp_rel(inptr)($28)
$L115:
	sll	s133,s131,s8
	or	s7,s7,s133
	addiu	s8,s8,8
	j	$L367
	nop
$L117:
	lbu	s134,1(s23)
	nop
	srl	s7,s7,s134
	subu	s8,s8,s134
	li	s135,16			# 0x10
	beq	s24,s135,$L421
	nop
	li	s136,15			# 0xf
	beq	s24,s136,$L126
	nop
	sltu	s137,s8,s24
	beq	s137,$0,$L127
	nop
	nor	s138,$0,s8
	addu	s139,s138,s24
	srl	s140,s139,3
	andi	s141,s140,0x3
	lw	s142,%gp_rel(inptr)($28)
	lw	s143,%gp_rel(insize)($28)
	nop
	sltu	s144,s142,s143
	beq	s144,$0,$L422
	nop
	addu	s145,s142,s19
	lbu	s146,0(s145)
	addiu	s147,s142,1
	sw	s147,%gp_rel(inptr)($28)
$L402:
	sll	s148,s146,s8
	or	s7,s7,s148
	addiu	s8,s8,8
	sltu	s149,s8,s24
	beq	s149,$0,$L127
	nop
	beq	s141,$0,$L168
	nop
	li	s150,1			# 0x1
	beq	s141,s150,$L362
	nop
	li	s151,2			# 0x2
	beq	s141,s151,$L363
	nop
	lw	s152,%gp_rel(inptr)($28)
	lw	s153,%gp_rel(insize)($28)
	nop
	sltu	s154,s152,s153
	beq	s154,$0,$L298
	nop
	addu	s155,s152,s19
	lbu	s156,0(s155)
	addiu	s137,s152,1
	sw	s137,%gp_rel(inptr)($28)
$L403:
	sll	s157,s156,s8
	or	s7,s7,s157
	addiu	s8,s8,8
$L363:
	lw	s158,%gp_rel(inptr)($28)
	lw	s15,%gp_rel(insize)($28)
	nop
	sltu	s159,s158,s15
	beq	s159,$0,$L301
	nop
	addu	s160,s158,s19
	lbu	s161,0(s160)
	addiu	s162,s158,1
	sw	s162,%gp_rel(inptr)($28)
$L404:
	sll	s163,s161,s8
	or	s7,s7,s163
	addiu	s8,s8,8
$L362:
	lw	s164,%gp_rel(inptr)($28)
	lw	s165,%gp_rel(insize)($28)
	nop
	sltu	s166,s164,s165
	beq	s166,$0,$L304
	nop
	addu	s167,s164,s19
	lbu	s168,0(s167)
	addiu	s169,s164,1
	sw	s169,%gp_rel(inptr)($28)
$L405:
	sll	s170,s168,s8
	or	s7,s7,s170
	addiu	s8,s8,8
	sltu	s171,s8,s24
	bne	s171,$0,$L168
	nop
	j	$L127
	nop
$L424:
	addu	s173,s172,s19
	lbu	s174,0(s173)
	addiu	s175,s172,1
	sw	s175,%gp_rel(inptr)($28)
	move	s176,s175
	sll	s177,s174,s8
	or	s178,s7,s177
	addiu	s179,s8,8
	lw	s180,%gp_rel(insize)($28)
	nop
	sltu	s181,s176,s180
	beq	s181,$0,$L423
	nop
$L372:
	addu	s182,s176,s19
	lbu	s183,0(s182)
	addiu	s184,s176,1
	sw	s184,%gp_rel(inptr)($28)
	move	s185,s184
	sll	s186,s183,s179
	or	s187,s178,s186
	addiu	s188,s179,8
	lw	s189,%gp_rel(insize)($28)
	nop
	sltu	s148,s185,s189
	beq	s148,$0,$L309
	nop
$L425:
	addu	s137,s185,s19
	lbu	s190,0(s137)
	addiu	s191,s185,1
	sw	s191,%gp_rel(inptr)($28)
	move	s192,s191
	sll	s193,s190,s188
	or	s194,s187,s193
	addiu	s195,s179,16
	lw	s196,%gp_rel(insize)($28)
	nop
	sltu	s197,s192,s196
	beq	s197,$0,$L311
	nop
$L426:
	addu	s198,s192,s19
	lbu	s199,0(s198)
	addiu	s15,s192,1
	sw	s15,%gp_rel(inptr)($28)
	sll	s200,s199,s195
	or	s7,s194,s200
	addiu	s8,s179,24
	sltu	s201,s8,s24
	beq	s201,$0,$L127
	nop
$L168:
	lw	s172,%gp_rel(inptr)($28)
	lw	s202,%gp_rel(insize)($28)
	nop
	sltu	s203,s172,s202
	bne	s203,$0,$L424
	nop
	move	s204,$0
	move	$4,s204
	move	$5,s15
	move	$6,s148
	move	$7,s137
	jal	fill_inbuf
	nop
	move	s205,$2
	andi	s206,s205,0x00ff
	lw	s176,%gp_rel(inptr)($28)
	sll	s207,s206,s8
	or	s178,s7,s207
	addiu	s179,s8,8
	lw	s208,%gp_rel(insize)($28)
	nop
	sltu	s209,s176,s208
	bne	s209,$0,$L372
	nop
$L423:
	move	s210,$0
	move	$4,s210
	move	$5,s15
	move	$6,s148
	move	$7,s137
	jal	fill_inbuf
	nop
	move	s211,$2
	andi	s212,s211,0x00ff
	lw	s185,%gp_rel(inptr)($28)
	sll	s213,s212,s179
	or	s187,s178,s213
	addiu	s188,s179,8
	lw	s214,%gp_rel(insize)($28)
	nop
	sltu	s148,s185,s214
	bne	s148,$0,$L425
	nop
$L309:
	move	s215,$0
	move	$4,s215
	move	$5,s15
	move	$6,s148
	move	$7,s137
	jal	fill_inbuf
	nop
	move	s216,$2
	andi	s217,s216,0x00ff
	lw	s192,%gp_rel(inptr)($28)
	sll	s218,s217,s188
	or	s194,s187,s218
	addiu	s195,s179,16
	lw	s219,%gp_rel(insize)($28)
	nop
	sltu	s220,s192,s219
	bne	s220,$0,$L426
	nop
$L311:
	move	s221,$0
	move	$4,s221
	move	$5,s15
	move	$6,s148
	move	$7,s137
	jal	fill_inbuf
	nop
	move	s222,$2
	andi	s223,s222,0x00ff
	sll	s224,s223,s195
	or	s7,s194,s224
	addiu	s8,s179,24
	sltu	s225,s8,s24
	bne	s225,$0,$L168
	nop
$L127:
	lhu	s226,4(s23)
	nop
	sll	s227,s24,1
	lui	s228,%hi(mask_bits)
	addiu	s229,s228,%lo(mask_bits)
	addu	s230,s227,s229
	lhu	s231,0(s230)
	nop
	srl	s232,s7,s24
	subu	s233,s8,s24
	sltu	s234,s233,s4
	beq	s234,$0,$L131
	nop
	nor	s235,$0,s233
	addu	s236,s235,s4
	srl	s237,s236,3
	andi	s238,s237,0x3
	lw	s239,%gp_rel(inptr)($28)
	lw	s240,%gp_rel(insize)($28)
	nop
	sltu	s241,s239,s240
	beq	s241,$0,$L427
	nop
	addu	s242,s239,s19
	lbu	s243,0(s242)
	addiu	s244,s239,1
	sw	s244,%gp_rel(inptr)($28)
$L395:
	sll	s245,s243,s233
	or	s232,s232,s245
	addiu	s233,s233,8
	sltu	s228,s233,s4
	beq	s228,$0,$L131
	nop
	beq	s238,$0,$L167
	nop
	li	s246,1			# 0x1
	beq	s238,s246,$L359
	nop
	li	s247,2			# 0x2
	beq	s238,s247,$L360
	nop
	lw	s248,%gp_rel(inptr)($28)
	lw	s249,%gp_rel(insize)($28)
	nop
	sltu	s236,s248,s249
	beq	s236,$0,$L281
	nop
	addu	s250,s248,s19
	lbu	s251,0(s250)
	addiu	s252,s248,1
	sw	s252,%gp_rel(inptr)($28)
$L396:
	sll	s229,s251,s233
	or	s232,s232,s229
	addiu	s233,s233,8
$L360:
	lw	s253,%gp_rel(inptr)($28)
	lw	s254,%gp_rel(insize)($28)
	nop
	sltu	s255,s253,s254
	beq	s255,$0,$L284
	nop
	addu	s256,s253,s19
	lbu	s257,0(s256)
	addiu	s258,s253,1
	sw	s258,%gp_rel(inptr)($28)
$L397:
	sll	s259,s257,s233
	or	s232,s232,s259
	addiu	s233,s233,8
$L359:
	lw	s260,%gp_rel(inptr)($28)
	lw	s261,%gp_rel(insize)($28)
	nop
	sltu	s262,s260,s261
	beq	s262,$0,$L287
	nop
	addu	s263,s260,s19
	lbu	s264,0(s263)
	addiu	s265,s260,1
	sw	s265,%gp_rel(inptr)($28)
$L398:
	sll	s228,s264,s233
	or	s232,s232,s228
	addiu	s233,s233,8
	sltu	s266,s233,s4
	bne	s266,$0,$L167
	nop
	j	$L131
	nop
$L429:
	addu	s268,s267,s19
	lbu	s269,0(s268)
	addiu	s270,s267,1
	sw	s270,%gp_rel(inptr)($28)
	move	s271,s270
	sll	s272,s269,s233
	or	s273,s232,s272
	addiu	s274,s233,8
	lw	s275,%gp_rel(insize)($28)
	nop
	sltu	s276,s271,s275
	beq	s276,$0,$L428
	nop
$L374:
	addu	s277,s271,s19
	lbu	s278,0(s277)
	addiu	s279,s271,1
	sw	s279,%gp_rel(inptr)($28)
	move	s280,s279
	sll	s281,s278,s274
	or	s282,s273,s281
	addiu	s283,s274,8
	lw	s236,%gp_rel(insize)($28)
	nop
	sltu	s284,s280,s236
	beq	s284,$0,$L292
	nop
$L430:
	addu	s285,s280,s19
	lbu	s286,0(s285)
	addiu	s287,s280,1
	sw	s287,%gp_rel(inptr)($28)
	move	s288,s287
	sll	s289,s286,s283
	or	s290,s282,s289
	addiu	s291,s274,16
	lw	s292,%gp_rel(insize)($28)
	nop
	sltu	s229,s288,s292
	beq	s229,$0,$L294
	nop
$L431:
	addu	s293,s288,s19
	lbu	s294,0(s293)
	addiu	s295,s288,1
	sw	s295,%gp_rel(inptr)($28)
	sll	s296,s294,s291
	or	s232,s290,s296
	addiu	s233,s274,24
	sltu	s297,s233,s4
	beq	s297,$0,$L131
	nop
$L167:
	lw	s267,%gp_rel(inptr)($28)
	lw	s298,%gp_rel(insize)($28)
	nop
	sltu	s299,s267,s298
	bne	s299,$0,$L429
	nop
	move	s300,$0
	move	$4,s300
	move	$5,s229
	move	$6,s228
	move	$7,s236
	jal	fill_inbuf
	nop
	move	s301,$2
	andi	s302,s301,0x00ff
	lw	s271,%gp_rel(inptr)($28)
	sll	s303,s302,s233
	or	s273,s232,s303
	addiu	s274,s233,8
	lw	s304,%gp_rel(insize)($28)
	nop
	sltu	s305,s271,s304
	bne	s305,$0,$L374
	nop
$L428:
	move	s306,$0
	move	$4,s306
	move	$5,s229
	move	$6,s228
	move	$7,s236
	jal	fill_inbuf
	nop
	move	s307,$2
	andi	s308,s307,0x00ff
	lw	s280,%gp_rel(inptr)($28)
	sll	s309,s308,s274
	or	s282,s273,s309
	addiu	s283,s274,8
	lw	s236,%gp_rel(insize)($28)
	nop
	sltu	s310,s280,s236
	bne	s310,$0,$L430
	nop
$L292:
	move	s311,$0
	move	$4,s311
	move	$5,s229
	move	$6,s228
	move	$7,s236
	jal	fill_inbuf
	nop
	move	s312,$2
	andi	s313,s312,0x00ff
	lw	s288,%gp_rel(inptr)($28)
	sll	s314,s313,s283
	or	s290,s282,s314
	addiu	s291,s274,16
	lw	s315,%gp_rel(insize)($28)
	nop
	sltu	s229,s288,s315
	bne	s229,$0,$L431
	nop
$L294:
	move	s316,$0
	move	$4,s316
	move	$5,s229
	move	$6,s228
	move	$7,s236
	jal	fill_inbuf
	nop
	move	s317,$2
	andi	s318,s317,0x00ff
	sll	s319,s318,s291
	or	s232,s290,s319
	addiu	s233,s274,24
	sltu	s320,s233,s4
	bne	s320,$0,$L167
	nop
$L131:
	move	s321,s232
	and	s322,s232,s17
	sll	s323,s322,3
	addu	s324,s2,s323
	lbu	s325,0(s324)
	nop
	sltu	s326,s325,17
	bne	s326,$0,$L135
	nop
	li	s327,99			# 0x63
	beq	s325,s327,$L118
	nop
$L375:
	lbu	s328,1(s324)
	nop
	srl	s329,s321,s328
	subu	s233,s233,s328
	addiu	s330,s325,-16
	sltu	s331,s233,s330
	beq	s331,$0,$L137
	nop
	nor	s332,$0,s233
	addu	s333,s332,s330
	srl	s334,s333,3
	andi	s335,s334,0x3
	lw	s336,%gp_rel(inptr)($28)
	lw	s337,%gp_rel(insize)($28)
	nop
	sltu	s338,s336,s337
	beq	s338,$0,$L432
	nop
	addu	s339,s336,s19
	lbu	s340,0(s339)
	addiu	s341,s336,1
	sw	s341,%gp_rel(inptr)($28)
$L388:
	sll	s342,s340,s233
	or	s329,s329,s342
	addiu	s233,s233,8
	sltu	s343,s233,s330
	beq	s343,$0,$L137
	nop
	beq	s335,$0,$L166
	nop
	li	s332,1			# 0x1
	beq	s335,s332,$L356
	nop
	li	s344,2			# 0x2
	beq	s335,s344,$L357
	nop
	lw	s345,%gp_rel(inptr)($28)
	lw	s346,%gp_rel(insize)($28)
	nop
	sltu	s347,s345,s346
	beq	s347,$0,$L264
	nop
	addu	s229,s345,s19
	lbu	s348,0(s229)
	addiu	s349,s345,1
	sw	s349,%gp_rel(inptr)($28)
$L389:
	sll	s350,s348,s233
	or	s329,s329,s350
	addiu	s233,s233,8
$L357:
	lw	s351,%gp_rel(inptr)($28)
	lw	s352,%gp_rel(insize)($28)
	nop
	sltu	s353,s351,s352
	beq	s353,$0,$L267
	nop
	addu	s354,s351,s19
	lbu	s355,0(s354)
	addiu	s356,s351,1
	sw	s356,%gp_rel(inptr)($28)
$L390:
	sll	s357,s355,s233
	or	s329,s329,s357
	addiu	s233,s233,8
$L356:
	lw	s358,%gp_rel(inptr)($28)
	lw	s328,%gp_rel(insize)($28)
	nop
	sltu	s359,s358,s328
	beq	s359,$0,$L270
	nop
	addu	s360,s358,s19
	lbu	s361,0(s360)
	addiu	s362,s358,1
	sw	s362,%gp_rel(inptr)($28)
$L391:
	sll	s363,s361,s233
	or	s329,s329,s363
	addiu	s233,s233,8
	sltu	s364,s233,s330
	bne	s364,$0,$L166
	nop
	j	$L137
	nop
$L434:
	addu	s366,s365,s19
	lbu	s367,0(s366)
	addiu	s368,s365,1
	sw	s368,%gp_rel(inptr)($28)
	move	s369,s368
	sll	s370,s367,s233
	or	s371,s329,s370
	addiu	s372,s233,8
	lw	s373,%gp_rel(insize)($28)
	nop
	sltu	s374,s369,s373
	beq	s374,$0,$L433
	nop
$L377:
	addu	s375,s369,s19
	lbu	s376,0(s375)
	addiu	s332,s369,1
	sw	s332,%gp_rel(inptr)($28)
	move	s377,s332
	sll	s378,s376,s372
	or	s379,s371,s378
	addiu	s380,s372,8
	lw	s381,%gp_rel(insize)($28)
	nop
	sltu	s382,s377,s381
	beq	s382,$0,$L275
	nop
$L435:
	addu	s383,s377,s19
	lbu	s384,0(s383)
	addiu	s229,s377,1
	sw	s229,%gp_rel(inptr)($28)
	move	s385,s229
	sll	s386,s384,s380
	or	s387,s379,s386
	addiu	s388,s372,16
	lw	s389,%gp_rel(insize)($28)
	nop
	sltu	s390,s385,s389
	beq	s390,$0,$L277
	nop
$L436:
	addu	s391,s385,s19
	lbu	s392,0(s391)
	addiu	s393,s385,1
	sw	s393,%gp_rel(inptr)($28)
	sll	s394,s392,s388
	or	s329,s387,s394
	addiu	s233,s372,24
	sltu	s395,s233,s330
	beq	s395,$0,$L137
	nop
$L166:
	lw	s365,%gp_rel(inptr)($28)
	lw	s396,%gp_rel(insize)($28)
	nop
	sltu	s397,s365,s396
	bne	s397,$0,$L434
	nop
	move	s398,$0
	move	$4,s398
	move	$5,s229
	move	$6,s328
	move	$7,s332
	jal	fill_inbuf
	nop
	move	s399,$2
	andi	s400,s399,0x00ff
	lw	s369,%gp_rel(inptr)($28)
	sll	s401,s400,s233
	or	s371,s329,s401
	addiu	s372,s233,8
	lw	s402,%gp_rel(insize)($28)
	nop
	sltu	s403,s369,s402
	bne	s403,$0,$L377
	nop
$L433:
	move	s404,$0
	move	$4,s404
	move	$5,s229
	move	$6,s328
	move	$7,s332
	jal	fill_inbuf
	nop
	move	s405,$2
	andi	s406,s405,0x00ff
	lw	s377,%gp_rel(inptr)($28)
	sll	s407,s406,s372
	or	s379,s371,s407
	addiu	s380,s372,8
	lw	s408,%gp_rel(insize)($28)
	nop
	sltu	s409,s377,s408
	bne	s409,$0,$L435
	nop
$L275:
	move	s410,$0
	move	$4,s410
	move	$5,s229
	move	$6,s328
	move	$7,s332
	jal	fill_inbuf
	nop
	move	s411,$2
	andi	s412,s411,0x00ff
	lw	s385,%gp_rel(inptr)($28)
	sll	s413,s412,s380
	or	s387,s379,s413
	addiu	s388,s372,16
	lw	s414,%gp_rel(insize)($28)
	nop
	sltu	s415,s385,s414
	bne	s415,$0,$L436
	nop
$L277:
	move	s416,$0
	move	$4,s416
	move	$5,s229
	move	$6,s328
	move	$7,s332
	jal	fill_inbuf
	nop
	move	s417,$2
	andi	s418,s417,0x00ff
	sll	s419,s418,s388
	or	s329,s387,s419
	addiu	s233,s372,24
	sltu	s420,s233,s330
	bne	s420,$0,$L166
	nop
$L137:
	move	s321,s329
	lw	s421,4(s324)
	sll	s422,s330,1
	lui	s228,%hi(mask_bits)
	addiu	s229,s228,%lo(mask_bits)
	addu	s423,s422,s229
	lhu	s424,0(s423)
	nop
	and	s425,s329,s424
	sll	s426,s425,3
	addu	s324,s421,s426
	lbu	s325,0(s324)
	nop
	sltu	s427,s325,17
	bne	s427,$0,$L135
	nop
	li	s229,99			# 0x63
	bne	s325,s229,$L375
	nop
	j	$L118
	nop
$L416:
	move	s428,$0
	move	$4,s428
	move	$5,s15
	move	$6,s12
	move	$7,s4
	jal	fill_inbuf
	nop
	move	s429,$2
	andi	s37,s429,0x00ff
	j	$L409
	nop
$L318:
	move	s430,$0
	move	$4,s430
	move	$5,s15
	move	$6,s12
	move	$7,s4
	jal	fill_inbuf
	nop
	move	s431,$2
	andi	s53,s431,0x00ff
	j	$L411
	nop
$L321:
	move	s432,$0
	move	$4,s432
	move	$5,s15
	move	$6,s12
	move	$7,s4
	jal	fill_inbuf
	nop
	move	s433,$2
	andi	s58,s433,0x00ff
	j	$L412
	nop
$L315:
	move	s434,$0
	move	$4,s434
	move	$5,s15
	move	$6,s12
	move	$7,s4
	jal	fill_inbuf
	nop
	move	s435,$2
	andi	s46,s435,0x00ff
	j	$L410
	nop
$L135:
	lbu	s436,1(s324)
	nop
	srl	s229,s321,s436
	subu	s437,s233,s436
	sltu	s438,s437,s325
	beq	s438,$0,$L142
	nop
	nor	s439,$0,s437
	addu	s229,s439,s325
	srl	s440,s229,3
	andi	s441,s440,0x3
	lw	s442,%gp_rel(inptr)($28)
	lw	s443,%gp_rel(insize)($28)
	nop
	sltu	s444,s442,s443
	beq	s444,$0,$L437
	nop
	addu	s445,s442,s19
	lbu	s446,0(s445)
	addiu	s447,s442,1
	sw	s447,%gp_rel(inptr)($28)
$L381:
	sll	s448,s446,s437
	or	s229,s229,s448
	addiu	s437,s437,8
	sltu	s449,s437,s325
	beq	s449,$0,$L142
	nop
	beq	s441,$0,$L165
	nop
	li	s450,1			# 0x1
	beq	s441,s450,$L353
	nop
	li	s229,2			# 0x2
	beq	s441,s229,$L354
	nop
	lw	s451,%gp_rel(inptr)($28)
	lw	s452,%gp_rel(insize)($28)
	nop
	sltu	s453,s451,s452
	beq	s453,$0,$L247
	nop
	addu	s454,s451,s19
	lbu	s455,0(s454)
	addiu	s456,s451,1
	sw	s456,%gp_rel(inptr)($28)
$L382:
	sll	s457,s455,s437
	or	s229,s229,s457
	addiu	s437,s437,8
$L354:
	lw	s458,%gp_rel(inptr)($28)
	lw	s459,%gp_rel(insize)($28)
	nop
	sltu	s460,s458,s459
	beq	s460,$0,$L250
	nop
	addu	s461,s458,s19
	lbu	s462,0(s461)
	addiu	s463,s458,1
	sw	s463,%gp_rel(inptr)($28)
$L383:
	sll	s464,s462,s437
	or	s229,s229,s464
	addiu	s437,s437,8
$L353:
	lw	s465,%gp_rel(inptr)($28)
	lw	s466,%gp_rel(insize)($28)
	nop
	sltu	s467,s465,s466
	beq	s467,$0,$L253
	nop
	addu	s468,s465,s19
	lbu	s469,0(s468)
	addiu	s229,s465,1
	sw	s229,%gp_rel(inptr)($28)
$L384:
	sll	s470,s469,s437
	or	s229,s229,s470
	addiu	s437,s437,8
	sltu	s471,s437,s325
	bne	s471,$0,$L165
	nop
	j	$L142
	nop
$L439:
	addu	s473,s472,s19
	lbu	s474,0(s473)
	addiu	s475,s472,1
	sw	s475,%gp_rel(inptr)($28)
	sll	s476,s474,s437
	or	s477,s229,s476
	addiu	s478,s437,8
	lw	s479,%gp_rel(inptr)($28)
	lw	s480,%gp_rel(insize)($28)
	nop
	sltu	s481,s479,s480
	beq	s481,$0,$L438
	nop
$L379:
	addu	s482,s479,s19
	lbu	s483,0(s482)
	addiu	s484,s479,1
	sw	s484,%gp_rel(inptr)($28)
	move	s485,s484
	sll	s486,s483,s478
	or	s487,s477,s486
	addiu	s488,s478,8
	lw	s229,%gp_rel(insize)($28)
	nop
	sltu	s489,s485,s229
	beq	s489,$0,$L258
	nop
$L440:
	addu	s490,s485,s19
	lbu	s491,0(s490)
	addiu	s492,s485,1
	sw	s492,%gp_rel(inptr)($28)
	move	s493,s492
	sll	s494,s491,s488
	or	s495,s487,s494
	addiu	s496,s478,16
	lw	s497,%gp_rel(insize)($28)
	nop
	sltu	s498,s493,s497
	beq	s498,$0,$L260
	nop
$L441:
	addu	s499,s493,s19
	lbu	s500,0(s499)
	addiu	s501,s493,1
	sw	s501,%gp_rel(inptr)($28)
	sll	s229,s500,s496
	or	s229,s495,s229
	addiu	s437,s478,24
	sltu	s502,s437,s325
	beq	s502,$0,$L142
	nop
$L165:
	lw	s472,%gp_rel(inptr)($28)
	lw	s503,%gp_rel(insize)($28)
	nop
	sltu	s504,s472,s503
	bne	s504,$0,$L439
	nop
	move	s505,$0
	move	$4,s505
	move	$5,s229
	move	$6,s229
	move	$7,s229
	jal	fill_inbuf
	nop
	move	s506,$2
	andi	s507,s506,0x00ff
	sll	s508,s507,s437
	or	s477,s229,s508
	addiu	s478,s437,8
	lw	s479,%gp_rel(inptr)($28)
	lw	s509,%gp_rel(insize)($28)
	nop
	sltu	s510,s479,s509
	bne	s510,$0,$L379
	nop
$L438:
	move	s511,$0
	move	$4,s511
	move	$5,s229
	move	$6,s229
	move	$7,s229
	jal	fill_inbuf
	nop
	move	s512,$2
	andi	s513,s512,0x00ff
	lw	s485,%gp_rel(inptr)($28)
	sll	s514,s513,s478
	or	s487,s477,s514
	addiu	s488,s478,8
	lw	s229,%gp_rel(insize)($28)
	nop
	sltu	s515,s485,s229
	bne	s515,$0,$L440
	nop
$L258:
	move	s516,$0
	move	$4,s516
	move	$5,s229
	move	$6,s229
	move	$7,s229
	jal	fill_inbuf
	nop
	move	s517,$2
	andi	s518,s517,0x00ff
	lw	s493,%gp_rel(inptr)($28)
	sll	s519,s518,s488
	or	s495,s487,s519
	addiu	s496,s478,16
	lw	s520,%gp_rel(insize)($28)
	nop
	sltu	s521,s493,s520
	bne	s521,$0,$L441
	nop
$L260:
	move	s522,$0
	move	$4,s522
	move	$5,s229
	move	$6,s229
	move	$7,s229
	jal	fill_inbuf
	nop
	move	s523,$2
	andi	s524,s523,0x00ff
	sll	s229,s524,s496
	or	s229,s495,s229
	addiu	s437,s478,24
	sltu	s525,s437,s325
	bne	s525,$0,$L165
	nop
$L142:
	and	s526,s7,s231
	addu	s527,s526,s226
	lhu	s528,4(s324)
	nop
	subu	s529,s9,s528
	sll	s530,s325,1
	lui	s531,%hi(mask_bits)
	addiu	s532,s531,%lo(mask_bits)
	addu	s533,s530,s532
	lhu	s534,0(s533)
	nop
	and	s535,s229,s534
	subu	s536,s529,s535
$L160:
	andi	s537,s536,0x7fff
	sltu	s538,s9,s537
	beq	s538,$0,$L146
	nop
	li	s539,32768			# 0x8000
	subu	s540,s539,s537
$L147:
	move	s541,s540
	sltu	s542,s527,s540
	beq	s542,$0,$L148
	nop
	move	s541,s527
$L148:
	subu	s527,s527,s541
	subu	s543,s9,s537
	sltu	s544,s543,s541
	beq	s544,$0,$L442
	nop
	lui	s545,%hi(window)
	addiu	s546,s545,%lo(window)
	addu	s547,s546,s537
	addu	s4,s546,s9
	sltu	s548,s541,4
	beq	s548,$0,$L443
	nop
$L151:
	lui	s549,%hi(window)
	addiu	s550,s549,%lo(window)
	addu	s551,s550,s537
	addu	s4,s550,s9
	addiu	s552,s541,-1
	andi	s12,s552,0x7
	lbu	s553,0(s551)
	nop
	sb	s553,0(s4)
	addiu	s15,s551,1
	addiu	s554,s4,1
	beq	s552,$0,$L156
	nop
	beq	s12,$0,$L158
	nop
	li	s555,1			# 0x1
	beq	s12,s555,$L334
	nop
	li	s556,2			# 0x2
	beq	s12,s556,$L335
	nop
	li	s557,3			# 0x3
	beq	s12,s557,$L336
	nop
	li	s558,4			# 0x4
	beq	s12,s558,$L337
	nop
	li	s559,5			# 0x5
	beq	s12,s559,$L338
	nop
	li	s560,6			# 0x6
	beq	s12,s560,$L339
	nop
	lbu	s561,1(s551)
	nop
	sb	s561,1(s4)
	addiu	s552,s541,-2
	addiu	s15,s551,2
	addiu	s554,s4,2
$L339:
	lbu	s562,0(s15)
	nop
	sb	s562,0(s554)
	addiu	s552,s552,-1
	addiu	s15,s15,1
	addiu	s554,s554,1
$L338:
	lbu	s4,0(s15)
	nop
	sb	s4,0(s554)
	addiu	s552,s552,-1
	addiu	s15,s15,1
	addiu	s554,s554,1
$L337:
	lbu	s563,0(s15)
	nop
	sb	s563,0(s554)
	addiu	s552,s552,-1
	addiu	s15,s15,1
	addiu	s554,s554,1
$L336:
	lbu	s564,0(s15)
	nop
	sb	s564,0(s554)
	addiu	s552,s552,-1
	addiu	s15,s15,1
	addiu	s554,s554,1
$L335:
	lbu	s565,0(s15)
	nop
	sb	s565,0(s554)
	addiu	s552,s552,-1
	addiu	s15,s15,1
	addiu	s554,s554,1
$L334:
	lbu	s566,0(s15)
	nop
	sb	s566,0(s554)
	addiu	s552,s552,-1
	addiu	s15,s15,1
	addiu	s554,s554,1
	beq	s552,$0,$L156
	nop
$L158:
	lbu	s567,0(s15)
	nop
	sb	s567,0(s554)
	lbu	s568,1(s15)
	nop
	sb	s568,1(s554)
	lbu	s12,2(s15)
	nop
	sb	s12,2(s554)
	lbu	s569,3(s15)
	nop
	sb	s569,3(s554)
	lbu	s570,4(s15)
	nop
	sb	s570,4(s554)
	lbu	s571,5(s15)
	nop
	sb	s571,5(s554)
	lbu	s572,6(s15)
	nop
	sb	s572,6(s554)
	lbu	s573,7(s15)
	nop
	sb	s573,7(s554)
	addiu	s552,s552,-8
	addiu	s15,s15,8
	addiu	s554,s554,8
	bne	s552,$0,$L158
	nop
$L156:
	addu	s536,s541,s537
	addu	s9,s9,s541
$L150:
	li	s574,32768			# 0x8000
	beq	s9,s574,$L444
	nop
	bne	s527,$0,$L160
	nop
$L445:
	srl	s7,s229,s325
	subu	s8,s437,s325
	j	$L367
	nop
$L444:
	sw	s9,%gp_rel(outcnt)($28)
	move	$4,s554
	move	$5,s15
	move	$6,s12
	move	$7,s4
	jal	flush_window
	nop
	move	s9,$0
	bne	s527,$0,$L160
	nop
	j	$L445
	nop
$L146:
	li	s575,32768			# 0x8000
	subu	s540,s575,s9
	j	$L147
	nop
$L443:
	or	s576,s4,s547
	andi	s577,s576,0x3
	bne	s577,$0,$L151
	nop
	addiu	s578,s547,4
	sltu	s579,s578,s4
	bne	s579,$0,$L163
	nop
	addiu	s580,s4,4
	sltu	s581,s580,s547
	beq	s581,$0,$L151
	nop
$L163:
	srl	s582,s541,2
	sll	s583,s582,2
	beq	s583,$0,$L446
	nop
	addiu	s584,s582,-1
	andi	s15,s584,0x7
	lw	s585,0(s547)
	nop
	sw	s585,0(s4)
	li	s12,1			# 0x1
	addiu	s554,s4,4
	addiu	s586,s547,4
	sltu	s587,s12,s582
	beq	s587,$0,$L380
	nop
	beq	s15,$0,$L155
	nop
	beq	s15,s12,$L346
	nop
	li	s588,2			# 0x2
	beq	s15,s588,$L347
	nop
	li	s589,3			# 0x3
	beq	s15,s589,$L348
	nop
	li	s590,4			# 0x4
	beq	s15,s590,$L349
	nop
	li	s591,5			# 0x5
	beq	s15,s591,$L350
	nop
	li	s592,6			# 0x6
	beq	s15,s592,$L351
	nop
	lw	s593,4(s547)
	nop
	sw	s593,4(s4)
	li	s12,2			# 0x2
	addiu	s554,s4,8
	addiu	s586,s547,8
$L351:
	lw	s15,0(s586)
	nop
	sw	s15,0(s554)
	addiu	s12,s12,1
	addiu	s554,s554,4
	addiu	s586,s586,4
$L350:
	lw	s594,0(s586)
	nop
	sw	s594,0(s554)
	addiu	s12,s12,1
	addiu	s554,s554,4
	addiu	s586,s586,4
$L349:
	lw	s595,0(s586)
	nop
	sw	s595,0(s554)
	addiu	s12,s12,1
	addiu	s554,s554,4
	addiu	s586,s586,4
$L348:
	lw	s596,0(s586)
	nop
	sw	s596,0(s554)
	addiu	s12,s12,1
	addiu	s554,s554,4
	addiu	s586,s586,4
$L347:
	lw	s597,0(s586)
	nop
	sw	s597,0(s554)
	addiu	s12,s12,1
	addiu	s554,s554,4
	addiu	s586,s586,4
$L346:
	lw	s598,0(s586)
	nop
	sw	s598,0(s554)
	addiu	s12,s12,1
	addiu	s554,s554,4
	addiu	s586,s586,4
	sltu	s599,s12,s582
	beq	s599,$0,$L380
	nop
$L155:
	lw	s600,0(s586)
	nop
	sw	s600,0(s554)
	lw	s601,4(s586)
	nop
	sw	s601,4(s554)
	lw	s602,8(s586)
	nop
	sw	s602,8(s554)
	lw	s603,12(s586)
	nop
	sw	s603,12(s554)
	lw	s604,16(s586)
	nop
	sw	s604,16(s554)
	lw	s605,20(s586)
	nop
	sw	s605,20(s554)
	lw	s606,24(s586)
	nop
	sw	s606,24(s554)
	lw	s4,28(s586)
	nop
	sw	s4,28(s554)
	addiu	s12,s12,8
	addiu	s554,s554,32
	addiu	s586,s586,32
	sltu	s607,s12,s582
	bne	s607,$0,$L155
	nop
$L380:
	addu	s608,s583,s9
	addu	s609,s583,s537
	subu	s610,s541,s583
	beq	s541,s583,$L156
	nop
$L154:
	lui	s611,%hi(window)
	addiu	s612,s611,%lo(window)
	addu	s613,s612,s609
	addu	s4,s612,s608
	addiu	s614,s610,-1
	andi	s12,s614,0x7
	lbu	s615,0(s613)
	nop
	sb	s615,0(s4)
	addiu	s15,s613,1
	addiu	s554,s4,1
	beq	s614,$0,$L156
	nop
	beq	s12,$0,$L157
	nop
	li	s616,1			# 0x1
	beq	s12,s616,$L340
	nop
	li	s617,2			# 0x2
	beq	s12,s617,$L341
	nop
	li	s618,3			# 0x3
	beq	s12,s618,$L342
	nop
	li	s619,4			# 0x4
	beq	s12,s619,$L343
	nop
	li	s620,5			# 0x5
	beq	s12,s620,$L344
	nop
	li	s621,6			# 0x6
	beq	s12,s621,$L345
	nop
	lbu	s622,1(s613)
	nop
	sb	s622,1(s4)
	addiu	s614,s610,-2
	addiu	s15,s613,2
	addiu	s554,s4,2
$L345:
	lbu	s12,0(s15)
	nop
	sb	s12,0(s554)
	addiu	s614,s614,-1
	addiu	s15,s15,1
	addiu	s554,s554,1
$L344:
	lbu	s623,0(s15)
	nop
	sb	s623,0(s554)
	addiu	s614,s614,-1
	addiu	s15,s15,1
	addiu	s554,s554,1
$L343:
	lbu	s624,0(s15)
	nop
	sb	s624,0(s554)
	addiu	s614,s614,-1
	addiu	s15,s15,1
	addiu	s554,s554,1
$L342:
	lbu	s625,0(s15)
	nop
	sb	s625,0(s554)
	addiu	s614,s614,-1
	addiu	s15,s15,1
	addiu	s554,s554,1
$L341:
	lbu	s626,0(s15)
	nop
	sb	s626,0(s554)
	addiu	s614,s614,-1
	addiu	s15,s15,1
	addiu	s554,s554,1
$L340:
	lbu	s4,0(s15)
	nop
	sb	s4,0(s554)
	addiu	s614,s614,-1
	addiu	s15,s15,1
	addiu	s554,s554,1
	beq	s614,$0,$L156
	nop
$L157:
	lbu	s4,0(s15)
	nop
	sb	s4,0(s554)
	lbu	s627,1(s15)
	nop
	sb	s627,1(s554)
	lbu	s628,2(s15)
	nop
	sb	s628,2(s554)
	lbu	s629,3(s15)
	nop
	sb	s629,3(s554)
	lbu	s630,4(s15)
	nop
	sb	s630,4(s554)
	lbu	s631,5(s15)
	nop
	sb	s631,5(s554)
	lbu	s632,6(s15)
	nop
	sb	s632,6(s554)
	lbu	s633,7(s15)
	nop
	sb	s633,7(s554)
	addiu	s614,s614,-8
	addiu	s15,s15,8
	addiu	s554,s554,8
	bne	s614,$0,$L157
	nop
	j	$L156
	nop
$L442:
	lui	s634,%hi(window)
	addiu	s635,s634,%lo(window)
	addu	s636,s635,s9
	addu	s637,s635,s537
	move	s638,s541
	move	$4,s636
	move	$5,s637
	move	$6,s638
	move	$7,s538
	jal	memcpy
	nop
	addu	s9,s9,s541
	addu	s536,s541,s537
	j	$L150
	nop
$L432:
	move	s639,$0
	move	$4,s639
	move	$5,s229
	move	$6,s328
	move	$7,s332
	jal	fill_inbuf
	nop
	move	s640,$2
	andi	s340,s640,0x00ff
	j	$L388
	nop
$L264:
	move	s641,$0
	move	$4,s641
	move	$5,s229
	move	$6,s328
	move	$7,s332
	jal	fill_inbuf
	nop
	move	s642,$2
	andi	s348,s642,0x00ff
	j	$L389
	nop
$L267:
	move	s643,$0
	move	$4,s643
	move	$5,s229
	move	$6,s328
	move	$7,s332
	jal	fill_inbuf
	nop
	move	s644,$2
	andi	s355,s644,0x00ff
	j	$L390
	nop
$L270:
	move	s645,$0
	move	$4,s645
	move	$5,s229
	move	$6,s328
	move	$7,s332
	jal	fill_inbuf
	nop
	move	s646,$2
	andi	s361,s646,0x00ff
	j	$L391
	nop
$L114:
	move	s647,$0
	move	$4,s647
	move	$5,s15
	move	$6,s12
	move	$7,s4
	jal	fill_inbuf
	nop
	move	s648,$2
	andi	s131,s648,0x00ff
	j	$L115
	nop
$L421:
	lui	s649,%hi(window)
	addiu	s650,s649,%lo(window)
	addu	s651,s9,s650
	lhu	s12,4(s23)
	nop
	sb	s12,0(s651)
	addiu	s9,s9,1
	li	s15,32768			# 0x8000
	bne	s9,s15,$L367
	nop
	sw	s9,%gp_rel(outcnt)($28)
	move	$4,s134
	move	$5,s15
	move	$6,s12
	move	$7,s4
	jal	flush_window
	nop
	move	s9,$0
	j	$L367
	nop
$L422:
	move	s652,$0
	move	$4,s652
	move	$5,s15
	move	$6,s12
	move	$7,s137
	jal	fill_inbuf
	nop
	move	s653,$2
	andi	s146,s653,0x00ff
	j	$L402
	nop
$L427:
	move	s654,$0
	move	$4,s654
	move	$5,s229
	move	$6,s228
	move	$7,s236
	jal	fill_inbuf
	nop
	move	s655,$2
	andi	s243,s655,0x00ff
	j	$L395
	nop
$L301:
	move	s656,$0
	move	$4,s656
	move	$5,s15
	move	$6,s148
	move	$7,s137
	jal	fill_inbuf
	nop
	move	s657,$2
	andi	s161,s657,0x00ff
	j	$L404
	nop
$L304:
	move	s658,$0
	move	$4,s658
	move	$5,s15
	move	$6,s148
	move	$7,s137
	jal	fill_inbuf
	nop
	move	s659,$2
	andi	s168,s659,0x00ff
	j	$L405
	nop
$L298:
	move	s660,$0
	move	$4,s660
	move	$5,s15
	move	$6,s148
	move	$7,s137
	jal	fill_inbuf
	nop
	move	s661,$2
	andi	s156,s661,0x00ff
	j	$L403
	nop
$L281:
	move	s662,$0
	move	$4,s662
	move	$5,s229
	move	$6,s228
	move	$7,s236
	jal	fill_inbuf
	nop
	move	s663,$2
	andi	s251,s663,0x00ff
	j	$L396
	nop
$L284:
	move	s664,$0
	move	$4,s664
	move	$5,s229
	move	$6,s228
	move	$7,s236
	jal	fill_inbuf
	nop
	move	s665,$2
	andi	s257,s665,0x00ff
	j	$L397
	nop
$L287:
	move	s666,$0
	move	$4,s666
	move	$5,s229
	move	$6,s228
	move	$7,s236
	jal	fill_inbuf
	nop
	move	s667,$2
	andi	s264,s667,0x00ff
	j	$L398
	nop
$L437:
	move	s668,$0
	move	$4,s668
	move	$5,s229
	move	$6,s228
	move	$7,s229
	jal	fill_inbuf
	nop
	move	s669,$2
	andi	s446,s669,0x00ff
	j	$L381
	nop
$L253:
	move	s670,$0
	move	$4,s670
	move	$5,s229
	move	$6,s229
	move	$7,s229
	jal	fill_inbuf
	nop
	move	s671,$2
	andi	s469,s671,0x00ff
	j	$L384
	nop
$L250:
	move	s672,$0
	move	$4,s672
	move	$5,s229
	move	$6,s229
	move	$7,s229
	jal	fill_inbuf
	nop
	move	s673,$2
	andi	s462,s673,0x00ff
	j	$L383
	nop
$L247:
	move	s674,$0
	move	$4,s674
	move	$5,s229
	move	$6,s229
	move	$7,s229
	jal	fill_inbuf
	nop
	move	s675,$2
	andi	s455,s675,0x00ff
	j	$L382
	nop
$L126:
	sw	s9,%gp_rel(outcnt)($28)
	sw	s7,%gp_rel(bb)($28)
	sw	s8,%gp_rel(bk)($28)
	move	s127,$0
	j	$L161
	nop
$L446:
	move	s610,s541
	move	s609,s537
	move	s608,s9
	j	$L154
	nop
	.set	macro
	.set	reorder
	.end	inflate_codes
	.size	inflate_codes, .-inflate_codes
	.align	2
	.globl	huft_free
	.set	nomips16
	.ent	huft_free
huft_free:
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
	beq	s1,$0,$L448
	nop
$L449:
	addiu	s6,s1,-8
	lw	s7,4(s6)
	move	$4,s6
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	free
	nop
	move	s1,s7
	bne	s7,$0,$L449
	nop
$L448:
	move	s8,$0
	addiu	$sp,$sp,24
	move	$2,s8
	j	s5
	nop
	.set	macro
	.set	reorder
	.end	huft_free
	.size	huft_free, .-huft_free
	.align	2
	.globl	huft_build
	.set	nomips16
	.ent	huft_build
huft_build:
	.frame	$sp,1488,$31		# vars= 1432, regs= 10/0, args= 16, gp= 0
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
	addiu	$sp,$sp,-1488
	move	s7,s1
	move	s8,s2
	lw	s9,1512($sp)
	addiu	s10,$sp,88
	move	s11,s10
	move	s12,$0
	li	s13,68			# 0x44
	move	$4,s11
	move	$5,s12
	move	$6,s13
	move	$7,s4
	jal	memset
	nop
	addiu	s14,$sp,16
	addiu	s15,s8,-1
	andi	s16,s15,0x7
	lw	s17,0(s7)
	nop
	sll	s18,s17,2
	addu	s19,s14,s18
	lw	s20,72(s19)
	nop
	addiu	s21,s20,1
	sw	s21,72(s19)
	addiu	s22,s7,4
	move	s23,s15
	beq	s15,$0,$L694
	nop
	beq	s16,$0,$L453
	nop
	li	s24,1			# 0x1
	beq	s16,s24,$L688
	nop
	li	s25,2			# 0x2
	beq	s16,s25,$L689
	nop
	li	s26,3			# 0x3
	beq	s16,s26,$L690
	nop
	li	s27,4			# 0x4
	beq	s16,s27,$L691
	nop
	li	s28,5			# 0x5
	beq	s16,s28,$L692
	nop
	li	s29,6			# 0x6
	beq	s16,s29,$L693
	nop
	lw	s30,4(s7)
	nop
	sll	s31,s30,2
	addu	s32,s14,s31
	lw	s33,72(s32)
	nop
	addiu	s34,s33,1
	sw	s34,72(s32)
	addiu	s22,s7,8
	addiu	s23,s8,-2
$L693:
	lw	s35,0(s22)
	nop
	sll	s36,s35,2
	addu	s37,s14,s36
	lw	s38,72(s37)
	nop
	addiu	s39,s38,1
	sw	s39,72(s37)
	addiu	s22,s22,4
	addiu	s23,s23,-1
$L692:
	lw	s40,0(s22)
	nop
	sll	s41,s40,2
	addu	s42,s14,s41
	lw	s43,72(s42)
	nop
	addiu	s44,s43,1
	sw	s44,72(s42)
	addiu	s22,s22,4
	addiu	s23,s23,-1
$L691:
	lw	s45,0(s22)
	nop
	sll	s46,s45,2
	addu	s47,s14,s46
	lw	s48,72(s47)
	nop
	addiu	s49,s48,1
	sw	s49,72(s47)
	addiu	s22,s22,4
	addiu	s23,s23,-1
$L690:
	lw	s50,0(s22)
	nop
	sll	s51,s50,2
	addu	s52,s14,s51
	lw	s53,72(s52)
	nop
	addiu	s54,s53,1
	sw	s54,72(s52)
	addiu	s22,s22,4
	addiu	s23,s23,-1
$L689:
	lw	s55,0(s22)
	nop
	sll	s56,s55,2
	addu	s57,s14,s56
	lw	s58,72(s57)
	nop
	addiu	s59,s58,1
	sw	s59,72(s57)
	addiu	s22,s22,4
	addiu	s23,s23,-1
$L688:
	lw	s60,0(s22)
	nop
	sll	s61,s60,2
	addu	s62,s14,s61
	lw	s63,72(s62)
	nop
	addiu	s64,s63,1
	sw	s64,72(s62)
	addiu	s22,s22,4
	addiu	s23,s23,-1
	beq	s23,$0,$L694
	nop
$L453:
	lw	s65,0(s22)
	nop
	sll	s66,s65,2
	addu	s67,s14,s66
	lw	s68,72(s67)
	nop
	addiu	s69,s68,1
	sw	s69,72(s67)
	lw	s70,4(s22)
	nop
	sll	s71,s70,2
	addu	s72,s14,s71
	lw	s73,72(s72)
	nop
	addiu	s74,s73,1
	sw	s74,72(s72)
	lw	s75,8(s22)
	nop
	sll	s76,s75,2
	addu	s77,s14,s76
	lw	s78,72(s77)
	nop
	addiu	s79,s78,1
	sw	s79,72(s77)
	lw	s80,12(s22)
	nop
	sll	s81,s80,2
	addu	s82,s14,s81
	lw	s83,72(s82)
	nop
	addiu	s84,s83,1
	sw	s84,72(s82)
	lw	s85,16(s22)
	nop
	sll	s86,s85,2
	addu	s87,s14,s86
	lw	s88,72(s87)
	nop
	addiu	s89,s88,1
	sw	s89,72(s87)
	lw	s90,20(s22)
	nop
	sll	s91,s90,2
	addu	s92,s14,s91
	lw	s93,72(s92)
	nop
	addiu	s94,s93,1
	sw	s94,72(s92)
	lw	s95,24(s22)
	nop
	sll	s96,s95,2
	addu	s97,s14,s96
	lw	s98,72(s97)
	nop
	addiu	s99,s98,1
	sw	s99,72(s97)
	lw	s100,28(s22)
	nop
	sll	s101,s100,2
	addu	s102,s14,s101
	lw	s103,72(s102)
	nop
	addiu	s104,s103,1
	sw	s104,72(s102)
	addiu	s22,s22,32
	addiu	s23,s23,-8
	bne	s23,$0,$L453
	nop
$L694:
	lw	s105,88($sp)
	nop
	beq	s105,s8,$L703
	nop
	lw	s106,0(s9)
	lw	s107,92($sp)
	nop
	bne	s107,$0,$L704
	nop
	lw	s108,96($sp)
	nop
	bne	s108,$0,$L705
	nop
	lw	s109,100($sp)
	nop
	bne	s109,$0,$L706
	nop
	lw	s110,104($sp)
	nop
	bne	s110,$0,$L707
	nop
	lw	s111,108($sp)
	nop
	bne	s111,$0,$L708
	nop
	lw	s112,112($sp)
	nop
	bne	s112,$0,$L709
	nop
	lw	s113,116($sp)
	nop
	bne	s113,$0,$L710
	nop
	lw	s114,120($sp)
	nop
	bne	s114,$0,$L711
	nop
	lw	s115,124($sp)
	nop
	bne	s115,$0,$L712
	nop
	lw	s116,128($sp)
	nop
	bne	s116,$0,$L713
	nop
	lw	s117,132($sp)
	nop
	bne	s117,$0,$L714
	nop
	lw	s118,136($sp)
	nop
	bne	s118,$0,$L715
	nop
	lw	s119,140($sp)
	nop
	bne	s119,$0,$L716
	nop
	lw	s120,144($sp)
	nop
	bne	s120,$0,$L717
	nop
	lw	s121,148($sp)
	nop
	bne	s121,$0,$L718
	nop
	lw	s122,152($sp)
	nop
	sltu	s123,$0,s122
	li	s124,17			# 0x11
	subu	s125,s124,s123
$L457:
	sltu	s126,s106,s125
	beq	s126,$0,$L473
	nop
	move	s106,s125
$L473:
	bne	s122,$0,$L719
	nop
	lw	s127,148($sp)
	nop
	bne	s127,$0,$L720
	nop
	lw	s128,144($sp)
	nop
	bne	s128,$0,$L721
	nop
	lw	s129,140($sp)
	nop
	bne	s129,$0,$L722
	nop
	lw	s130,136($sp)
	nop
	bne	s130,$0,$L723
	nop
	lw	s131,132($sp)
	nop
	bne	s131,$0,$L724
	nop
	lw	s132,128($sp)
	nop
	bne	s132,$0,$L725
	nop
	lw	s133,124($sp)
	nop
	bne	s133,$0,$L726
	nop
	lw	s134,120($sp)
	nop
	bne	s134,$0,$L727
	nop
	lw	s135,116($sp)
	nop
	bne	s135,$0,$L728
	nop
	lw	s136,112($sp)
	nop
	bne	s136,$0,$L729
	nop
	lw	s137,108($sp)
	nop
	bne	s137,$0,$L730
	nop
	lw	s138,104($sp)
	nop
	bne	s138,$0,$L731
	nop
	lw	s139,100($sp)
	nop
	bne	s139,$0,$L732
	nop
	lw	s140,96($sp)
	nop
	bne	s140,$0,$L733
	nop
	sltu	s141,$0,s107
	move	s141,s141
$L475:
	sltu	s142,s141,s106
	beq	s142,$0,$L491
	nop
	move	s106,s141
$L491:
	sw	s106,0(s9)
	li	s143,1			# 0x1
	sll	s144,s143,s125
	sltu	s145,s125,s141
	beq	s145,$0,$L734
	nop
	sll	s146,s125,2
	addu	s147,s14,s146
	lw	s148,72(s147)
	nop
	subu	s149,s144,s148
	bltz	s149,$L493
	nop
	addiu	s150,s125,1
	sll	s151,s150,2
	addu	s152,s10,s151
	sll	s153,s141,2
	addu	s154,s10,s153
	subu	s155,s154,s152
	srl	s156,s155,2
	andi	s157,s156,0x7
	beq	s157,$0,$L494
	nop
	sll	s158,s149,1
	lw	s159,0(s152)
	nop
	subu	s149,s158,s159
	addiu	s152,s152,4
	bltz	s149,$L493
	nop
	beq	s157,s143,$L494
	nop
	li	s160,2			# 0x2
	beq	s157,s160,$L683
	nop
	li	s161,3			# 0x3
	beq	s157,s161,$L684
	nop
	li	s162,4			# 0x4
	beq	s157,s162,$L685
	nop
	li	s163,5			# 0x5
	beq	s157,s163,$L686
	nop
	li	s164,6			# 0x6
	beq	s157,s164,$L687
	nop
	sll	s165,s149,1
	lw	s166,0(s152)
	nop
	subu	s149,s165,s166
	addiu	s152,s152,4
	bltz	s149,$L493
	nop
$L687:
	sll	s167,s149,1
	lw	s168,0(s152)
	nop
	subu	s149,s167,s168
	addiu	s152,s152,4
	bltz	s149,$L493
	nop
$L686:
	sll	s169,s149,1
	lw	s170,0(s152)
	nop
	subu	s149,s169,s170
	addiu	s152,s152,4
	bltz	s149,$L493
	nop
$L685:
	sll	s171,s149,1
	lw	s172,0(s152)
	nop
	subu	s149,s171,s172
	addiu	s152,s152,4
	bltz	s149,$L493
	nop
$L684:
	sll	s173,s149,1
	lw	s174,0(s152)
	nop
	subu	s149,s173,s174
	addiu	s152,s152,4
	bltz	s149,$L493
	nop
$L683:
	sll	s175,s149,1
	lw	s176,0(s152)
	nop
	subu	s149,s175,s176
	addiu	s152,s152,4
	bltz	s149,$L493
	nop
$L494:
	sll	s144,s149,1
	beq	s152,s154,$L492
	nop
	lw	s177,0(s152)
	nop
	subu	s178,s144,s177
	bltz	s178,$L493
	nop
	sll	s179,s178,1
	lw	s180,4(s152)
	nop
	subu	s181,s179,s180
	bltz	s181,$L493
	nop
	sll	s182,s181,1
	lw	s183,8(s152)
	nop
	subu	s184,s182,s183
	bltz	s184,$L493
	nop
	sll	s185,s184,1
	lw	s186,12(s152)
	nop
	subu	s187,s185,s186
	bltz	s187,$L493
	nop
	sll	s188,s187,1
	lw	s189,16(s152)
	nop
	subu	s190,s188,s189
	bltz	s190,$L493
	nop
	sll	s191,s190,1
	lw	s192,20(s152)
	nop
	subu	s193,s191,s192
	bltz	s193,$L493
	nop
	sll	s194,s193,1
	lw	s195,24(s152)
	nop
	subu	s196,s194,s195
	bltz	s196,$L493
	nop
	sll	s197,s196,1
	lw	s198,28(s152)
	nop
	subu	s149,s197,s198
	addiu	s152,s152,32
	bgez	s149,$L494
	nop
$L493:
	li	s199,2			# 0x2
$L455:
	addiu	$sp,$sp,1488
	move	$2,s199
	j	s6
	nop
$L734:
	sll	s153,s141,2
$L492:
	addu	s200,s14,s153
	lw	s201,72(s200)
	nop
	subu	s199,s144,s201
	bltz	s199,$L493
	nop
	addu	s202,s199,s201
	sw	s202,72(s200)
	sw	$0,160($sp)
	addiu	s203,s141,-1
	beq	s203,$0,$L496
	nop
	addiu	s204,$sp,156
	addiu	s205,s141,-2
	andi	s206,s205,0x7
	lw	s207,4(s10)
	nop
	move	s208,s207
	sw	s207,8(s204)
	move	s209,s205
	li	s210,4			# 0x4
	beq	s205,$0,$L496
	nop
	beq	s206,$0,$L497
	nop
	li	s211,1			# 0x1
	beq	s206,s211,$L677
	nop
	li	s212,2			# 0x2
	beq	s206,s212,$L678
	nop
	li	s213,3			# 0x3
	beq	s206,s213,$L679
	nop
	beq	s206,s210,$L680
	nop
	li	s214,5			# 0x5
	beq	s206,s214,$L681
	nop
	li	s215,6			# 0x6
	beq	s206,s215,$L682
	nop
	lw	s216,8(s10)
	nop
	addu	s208,s207,s216
	sw	s208,12(s204)
	addiu	s209,s205,-1
	li	s210,8			# 0x8
$L682:
	addu	s217,s10,s210
	lw	s218,4(s217)
	nop
	addu	s208,s208,s218
	addu	s219,s204,s210
	sw	s208,8(s219)
	addiu	s209,s209,-1
	addiu	s210,s210,4
$L681:
	addu	s220,s10,s210
	lw	s221,4(s220)
	nop
	addu	s208,s208,s221
	addu	s222,s204,s210
	sw	s208,8(s222)
	addiu	s209,s209,-1
	addiu	s210,s210,4
$L680:
	addu	s223,s10,s210
	lw	s224,4(s223)
	nop
	addu	s208,s208,s224
	addu	s225,s204,s210
	sw	s208,8(s225)
	addiu	s209,s209,-1
	addiu	s210,s210,4
$L679:
	addu	s226,s10,s210
	lw	s227,4(s226)
	nop
	addu	s208,s208,s227
	addu	s228,s204,s210
	sw	s208,8(s228)
	addiu	s209,s209,-1
	addiu	s210,s210,4
$L678:
	addu	s229,s10,s210
	lw	s230,4(s229)
	nop
	addu	s208,s208,s230
	addu	s231,s204,s210
	sw	s208,8(s231)
	addiu	s209,s209,-1
	addiu	s210,s210,4
$L677:
	addu	s232,s10,s210
	lw	s233,4(s232)
	nop
	addu	s208,s208,s233
	addu	s234,s204,s210
	sw	s208,8(s234)
	addiu	s209,s209,-1
	addiu	s210,s210,4
	beq	s209,$0,$L496
	nop
$L497:
	addu	s235,s10,s210
	lw	s236,4(s235)
	nop
	addu	s237,s208,s236
	addu	s238,s204,s210
	sw	s237,8(s238)
	addiu	s239,s210,4
	addu	s240,s10,s239
	lw	s241,4(s240)
	nop
	addu	s242,s237,s241
	addu	s243,s204,s239
	sw	s242,8(s243)
	addiu	s244,s210,8
	addu	s245,s10,s244
	lw	s246,4(s245)
	nop
	addu	s247,s242,s246
	addu	s248,s204,s244
	sw	s247,8(s248)
	addiu	s249,s210,12
	addu	s250,s10,s249
	lw	s251,4(s250)
	nop
	addu	s252,s247,s251
	addu	s253,s204,s249
	sw	s252,8(s253)
	addiu	s254,s210,16
	addu	s255,s10,s254
	lw	s256,4(s255)
	nop
	addu	s257,s252,s256
	addu	s258,s204,s254
	sw	s257,8(s258)
	addiu	s259,s210,20
	addu	s260,s10,s259
	lw	s261,4(s260)
	nop
	addu	s262,s257,s261
	addu	s263,s204,s259
	sw	s262,8(s263)
	addiu	s264,s210,24
	addu	s265,s10,s264
	lw	s266,4(s265)
	nop
	addu	s267,s262,s266
	addu	s268,s204,s264
	sw	s267,8(s268)
	addiu	s269,s210,28
	addu	s270,s10,s269
	lw	s271,4(s270)
	nop
	addu	s208,s267,s271
	addu	s272,s204,s269
	sw	s208,8(s272)
	addiu	s209,s209,-8
	addiu	s210,s210,32
	bne	s209,$0,$L497
	nop
$L496:
	addiu	s273,s8,-1
	andi	s274,s273,0x7
	lw	s275,0(s7)
	addiu	s276,s7,4
	bne	s275,$0,$L735
	nop
$L561:
	li	s277,1			# 0x1
	sltu	s278,s277,s8
	beq	s278,$0,$L702
	nop
	beq	s274,$0,$L499
	nop
	beq	s274,s277,$L671
	nop
	li	s279,2			# 0x2
	beq	s274,s279,$L672
	nop
	li	s280,3			# 0x3
	beq	s274,s280,$L673
	nop
	li	s281,4			# 0x4
	beq	s274,s281,$L674
	nop
	li	s282,5			# 0x5
	beq	s274,s282,$L675
	nop
	li	s283,6			# 0x6
	beq	s274,s283,$L676
	nop
	lw	s284,4(s7)
	addiu	s276,s276,4
	beq	s284,$0,$L563
	nop
	sll	s285,s284,2
	addu	s286,s14,s285
	lw	s287,140(s286)
	nop
	sll	s288,s287,2
	addu	s289,s14,s288
	sw	s277,208(s289)
	addiu	s290,s287,1
	sw	s290,140(s286)
$L563:
	addiu	s277,s277,1
$L676:
	lw	s291,0(s276)
	addiu	s276,s276,4
	beq	s291,$0,$L566
	nop
	sll	s292,s291,2
	addu	s293,s14,s292
	lw	s294,140(s293)
	nop
	sll	s295,s294,2
	addu	s296,s14,s295
	sw	s277,208(s296)
	addiu	s297,s294,1
	sw	s297,140(s293)
$L566:
	addiu	s277,s277,1
$L675:
	lw	s298,0(s276)
	addiu	s276,s276,4
	beq	s298,$0,$L569
	nop
	sll	s299,s298,2
	addu	s300,s14,s299
	lw	s301,140(s300)
	nop
	sll	s302,s301,2
	addu	s303,s14,s302
	sw	s277,208(s303)
	addiu	s304,s301,1
	sw	s304,140(s300)
$L569:
	addiu	s277,s277,1
$L674:
	lw	s305,0(s276)
	addiu	s276,s276,4
	beq	s305,$0,$L572
	nop
	sll	s306,s305,2
	addu	s307,s14,s306
	lw	s308,140(s307)
	nop
	sll	s309,s308,2
	addu	s310,s14,s309
	sw	s277,208(s310)
	addiu	s311,s308,1
	sw	s311,140(s307)
$L572:
	addiu	s277,s277,1
$L673:
	lw	s312,0(s276)
	addiu	s276,s276,4
	beq	s312,$0,$L575
	nop
	sll	s313,s312,2
	addu	s314,s14,s313
	lw	s315,140(s314)
	nop
	sll	s316,s315,2
	addu	s317,s14,s316
	sw	s277,208(s317)
	addiu	s318,s315,1
	sw	s318,140(s314)
$L575:
	addiu	s277,s277,1
$L672:
	lw	s319,0(s276)
	addiu	s276,s276,4
	beq	s319,$0,$L578
	nop
	sll	s320,s319,2
	addu	s321,s14,s320
	lw	s322,140(s321)
	nop
	sll	s323,s322,2
	addu	s324,s14,s323
	sw	s277,208(s324)
	addiu	s325,s322,1
	sw	s325,140(s321)
$L578:
	addiu	s277,s277,1
$L671:
	lw	s326,0(s276)
	addiu	s276,s276,4
	bne	s326,$0,$L736
	nop
$L581:
	addiu	s277,s277,1
	sltu	s327,s277,s8
	beq	s327,$0,$L702
	nop
$L499:
	lw	s328,0(s276)
	addiu	s329,s276,4
	bne	s328,$0,$L737
	nop
$L498:
	addiu	s330,s277,1
	lw	s331,0(s329)
	nop
	beq	s331,$0,$L584
	nop
	sll	s332,s331,2
	addu	s333,s14,s332
	lw	s334,140(s333)
	nop
	sll	s335,s334,2
	addu	s336,s14,s335
	sw	s330,208(s336)
	addiu	s337,s334,1
	sw	s337,140(s333)
$L584:
	addiu	s338,s330,1
	lw	s339,4(s329)
	nop
	beq	s339,$0,$L586
	nop
	sll	s340,s339,2
	addu	s341,s14,s340
	lw	s342,140(s341)
	nop
	sll	s343,s342,2
	addu	s344,s14,s343
	sw	s338,208(s344)
	addiu	s345,s342,1
	sw	s345,140(s341)
$L586:
	addiu	s346,s330,2
	lw	s347,8(s329)
	nop
	beq	s347,$0,$L588
	nop
	sll	s348,s347,2
	addu	s349,s14,s348
	lw	s350,140(s349)
	nop
	sll	s351,s350,2
	addu	s352,s14,s351
	sw	s346,208(s352)
	addiu	s353,s350,1
	sw	s353,140(s349)
$L588:
	addiu	s354,s330,3
	lw	s355,12(s329)
	nop
	beq	s355,$0,$L590
	nop
	sll	s356,s355,2
	addu	s357,s14,s356
	lw	s358,140(s357)
	nop
	sll	s359,s358,2
	addu	s360,s14,s359
	sw	s354,208(s360)
	addiu	s361,s358,1
	sw	s361,140(s357)
$L590:
	addiu	s362,s330,4
	lw	s363,16(s329)
	nop
	beq	s363,$0,$L592
	nop
	sll	s364,s363,2
	addu	s365,s14,s364
	lw	s366,140(s365)
	nop
	sll	s367,s366,2
	addu	s368,s14,s367
	sw	s362,208(s368)
	addiu	s369,s366,1
	sw	s369,140(s365)
$L592:
	addiu	s370,s330,5
	lw	s371,20(s329)
	nop
	beq	s371,$0,$L594
	nop
	sll	s372,s371,2
	addu	s373,s14,s372
	lw	s374,140(s373)
	nop
	sll	s375,s374,2
	addu	s376,s14,s375
	sw	s370,208(s376)
	addiu	s377,s374,1
	sw	s377,140(s373)
$L594:
	addiu	s378,s330,6
	lw	s379,24(s329)
	addiu	s276,s329,28
	beq	s379,$0,$L596
	nop
	sll	s380,s379,2
	addu	s381,s14,s380
	lw	s382,140(s381)
	nop
	sll	s383,s382,2
	addu	s384,s14,s383
	sw	s378,208(s384)
	addiu	s385,s382,1
	sw	s385,140(s381)
$L596:
	addiu	s277,s330,7
	sltu	s386,s277,s8
	bne	s386,$0,$L499
	nop
$L702:
	slt	s387,s141,s125
	bne	s387,$0,$L500
	nop
	sw	$0,156($sp)
	subu	s388,$0,s106
	move	s389,$0
	addiu	s390,$sp,224
	sll	s391,s8,2
	addu	s392,s390,s391
	sll	s393,s125,2
	addu	s394,s10,s393
	addiu	s395,s125,1
	sll	s396,s395,2
	addu	s397,s10,s396
	li	s398,-1			# 0xffffffffffffffff
	move	s399,$0
	move	s400,$0
	subu	s401,s141,s106
$L527:
	lw	s402,0(s394)
	nop
	addiu	s403,s125,-1
	li	s404,1			# 0x1
	sll	s405,s404,s403
	subu	s406,s125,s106
	move	s407,s402
$L501:
	addiu	s402,s407,-1
	li	s408,-1			# 0xffffffffffffffff
	beq	s402,s408,$L525
	nop
	addu	s409,s388,s106
	move	s410,s409
	move	s411,s388
	subu	s412,s406,s388
	subu	s413,s401,s388
	nor	s414,$0,s402
	j	$L526
	nop
$L740:
	move	s415,s412
$L503:
	li	s416,1			# 0x1
	sll	s400,s416,s415
	addiu	s417,s400,1
	sll	s418,s417,3
	move	$4,s418
	move	$5,s397
	move	$6,s406
	move	$7,s417
	jal	malloc
	nop
	move	s419,$2
	move	s420,s419
	beq	s419,$0,$L738
	nop
	lw	s421,%gp_rel(hufts)($28)
	nop
	addiu	s422,s421,1
	addu	s423,s422,s400
	sw	s423,%gp_rel(hufts)($28)
	addiu	s399,s419,8
	sw	s399,0(s424)
	sw	$0,4(s419)
	sll	s426,s425,2
	addu	s427,s14,s426
	sw	s399,8(s427)
	bne	s425,$0,$L510
	nop
	move	s398,$0
$L511:
	addiu	s424,s420,4
	addu	s410,s410,s106
	addu	s411,s411,s106
	addu	s412,s412,s388
	addu	s413,s413,s388
	move	s388,s409
	addu	s409,s106,s409
$L526:
	slt	s397,s410,s125
	beq	s397,$0,$L739
	nop
	addiu	s425,s398,1
	li	s428,1			# 0x1
	sll	s429,s428,s412
	sltu	s430,s402,s429
	beq	s430,$0,$L740
	nop
	move	s431,s413
	sltu	s432,s106,s413
	beq	s432,$0,$L504
	nop
	move	s431,s106
$L504:
	addiu	s415,s412,1
	sltu	s433,s415,s431
	beq	s433,$0,$L503
	nop
	addu	s434,s429,s414
	sll	s435,s434,1
	lw	s436,0(s397)
	nop
	sltu	s437,s436,s435
	beq	s437,$0,$L503
	nop
	nor	s438,$0,s415
	addu	s439,s438,s431
	andi	s406,s439,0x7
	beq	s406,$0,$L505
	nop
	addiu	s415,s412,2
	sltu	s440,s415,s431
	beq	s440,$0,$L503
	nop
	subu	s441,s435,s436
	sll	s435,s441,1
	addiu	s397,s397,4
	lw	s436,4(s397)
	nop
	sltu	s442,s436,s435
	beq	s442,$0,$L503
	nop
	li	s443,1			# 0x1
	beq	s406,s443,$L505
	nop
	li	s444,2			# 0x2
	beq	s406,s444,$L665
	nop
	li	s445,3			# 0x3
	beq	s406,s445,$L666
	nop
	li	s446,4			# 0x4
	beq	s406,s446,$L667
	nop
	li	s447,5			# 0x5
	beq	s406,s447,$L668
	nop
	li	s448,6			# 0x6
	beq	s406,s448,$L669
	nop
	addiu	s415,s415,1
	subu	s449,s435,s436
	sll	s435,s449,1
	addiu	s397,s397,4
	lw	s436,0(s397)
	nop
	sltu	s406,s436,s435
	beq	s406,$0,$L503
	nop
$L669:
	addiu	s415,s415,1
	subu	s450,s435,s436
	sll	s435,s450,1
	addiu	s397,s397,4
	lw	s436,0(s397)
	nop
	sltu	s451,s436,s435
	beq	s451,$0,$L503
	nop
$L668:
	addiu	s415,s415,1
	subu	s452,s435,s436
	sll	s435,s452,1
	addiu	s397,s397,4
	lw	s436,0(s397)
	nop
	sltu	s453,s436,s435
	beq	s453,$0,$L503
	nop
$L667:
	addiu	s415,s415,1
	subu	s454,s435,s436
	sll	s435,s454,1
	addiu	s397,s397,4
	lw	s436,0(s397)
	nop
	sltu	s455,s436,s435
	beq	s455,$0,$L503
	nop
$L666:
	addiu	s415,s415,1
	subu	s456,s435,s436
	sll	s435,s456,1
	addiu	s397,s397,4
	lw	s436,0(s397)
	nop
	sltu	s457,s436,s435
	beq	s457,$0,$L503
	nop
$L665:
	addiu	s415,s415,1
	subu	s406,s435,s436
	sll	s435,s406,1
	addiu	s397,s397,4
	lw	s436,0(s397)
	nop
	sltu	s458,s436,s435
	beq	s458,$0,$L503
	nop
$L505:
	addiu	s415,s415,1
	move	s406,s415
	sltu	s459,s415,s431
	beq	s459,$0,$L503
	nop
	subu	s460,s435,s436
	sll	s461,s460,1
	lw	s462,4(s397)
	nop
	sltu	s463,s462,s461
	beq	s463,$0,$L503
	nop
	addiu	s415,s415,1
	subu	s464,s461,s462
	sll	s465,s464,1
	lw	s466,8(s397)
	nop
	sltu	s467,s466,s465
	beq	s467,$0,$L503
	nop
	addiu	s415,s406,2
	subu	s468,s465,s466
	sll	s469,s468,1
	lw	s470,12(s397)
	nop
	sltu	s471,s470,s469
	beq	s471,$0,$L503
	nop
	addiu	s415,s406,3
	subu	s472,s469,s470
	sll	s473,s472,1
	lw	s474,16(s397)
	nop
	sltu	s475,s474,s473
	beq	s475,$0,$L503
	nop
	addiu	s415,s406,4
	subu	s476,s473,s474
	sll	s477,s476,1
	lw	s478,20(s397)
	nop
	sltu	s479,s478,s477
	beq	s479,$0,$L503
	nop
	addiu	s415,s406,5
	subu	s480,s477,s478
	sll	s481,s480,1
	lw	s482,24(s397)
	nop
	sltu	s483,s482,s481
	beq	s483,$0,$L503
	nop
	addiu	s415,s406,6
	subu	s484,s481,s482
	sll	s485,s484,1
	lw	s486,28(s397)
	nop
	sltu	s487,s486,s485
	beq	s487,$0,$L503
	nop
	addiu	s415,s406,7
	subu	s488,s485,s486
	sll	s435,s488,1
	addiu	s397,s397,32
	lw	s436,0(s397)
	nop
	sltu	s406,s436,s435
	bne	s406,$0,$L505
	nop
	j	$L503
	nop
$L703:
	lw	s489,1508($sp)
	nop
	sw	$0,0(s489)
	sw	$0,0(s9)
	move	s199,$0
	j	$L455
	nop
$L510:
	sw	s23,140(s427)
	sll	s490,s398,2
	addu	s406,s14,s490
	srl	s491,s23,s411
	sll	s492,s491,3
	lw	s493,8(s406)
	nop
	addu	s494,s493,s492
	sb	s106,17($sp)
	addiu	s495,s415,16
	sw	s495,0(s494)
	sw	s399,4(s494)
	move	s398,s425
	j	$L511
	nop
$L739:
	subu	s496,s125,s388
	andi	s497,s496,0x00ff
	sltu	s498,s390,s392
	bne	s498,$0,$L513
	nop
	li	s499,99			# 0x63
$L514:
	li	s500,1			# 0x1
	sll	s501,s500,s496
	srl	s502,s23,s388
	sltu	s503,s502,s400
	beq	s503,$0,$L518
	nop
	addu	s504,s501,s502
	sll	s505,s501,3
	sll	s506,s502,3
	addu	s507,s399,s506
$L519:
	sb	s497,17($sp)
	sw	s499,0(s507)
	sw	s399,4(s507)
	addu	s504,s504,s501
	addu	s507,s507,s505
	subu	s508,s504,s501
	sltu	s509,s508,s400
	bne	s509,$0,$L519
	nop
$L518:
	and	s510,s23,s405
	beq	s510,$0,$L521
	nop
$L522:
	xor	s23,s23,s405
	srl	s405,s405,1
	and	s511,s405,s23
	bne	s511,$0,$L522
	nop
$L521:
	xor	s23,s23,s405
	li	s406,1			# 0x1
	sll	s512,s406,s388
	addiu	s513,s512,-1
	and	s514,s23,s513
	sll	s515,s398,2
	addu	s516,s14,s515
	lw	s517,140(s516)
	nop
	bne	s514,s517,$L741
	nop
$L523:
	move	s407,s402
	j	$L501
	nop
$L738:
	bne	s425,$0,$L742
	nop
$L508:
	li	s199,3			# 0x3
	j	$L455
	nop
$L735:
	sll	s518,s275,2
	addu	s519,s14,s518
	lw	s520,140(s519)
	nop
	sll	s521,s520,2
	addu	s522,s14,s521
	sw	$0,208(s522)
	addiu	s523,s520,1
	sw	s523,140(s519)
	j	$L561
	nop
$L513:
	lw	s399,0(s390)
	nop
	sltu	s524,s399,s3
	beq	s524,$0,$L515
	nop
	sltu	s525,s399,256
	addiu	s499,s525,15
	addiu	s390,s390,4
	j	$L514
	nop
$L742:
	beq	s389,$0,$L508
	nop
$L532:
	addiu	s526,s389,-8
	lw	s389,4(s526)
	move	$4,s526
	jal	free
	nop
	bne	s389,$0,$L532
	nop
	li	s199,3			# 0x3
	j	$L455
	nop
$L736:
	sll	s527,s326,2
	addu	s528,s14,s527
	lw	s529,140(s528)
	nop
	sll	s530,s529,2
	addu	s531,s14,s530
	sw	s277,208(s531)
	addiu	s532,s529,1
	sw	s532,140(s528)
	j	$L581
	nop
$L737:
	sll	s533,s328,2
	addu	s534,s14,s533
	lw	s535,140(s534)
	nop
	sll	s536,s535,2
	addu	s537,s14,s536
	sw	s277,208(s537)
	addiu	s538,s535,1
	sw	s538,140(s534)
	j	$L498
	nop
$L515:
	subu	s539,s399,s3
	sll	s540,s539,1
	lw	s541,1504($sp)
	nop
	addu	s542,s541,s540
	lbu	s499,1(s542)
	nop
	addu	s543,s4,s540
	lhu	s399,0(s543)
	nop
	addiu	s390,s390,4
	j	$L514
	nop
$L712:
	li	s125,9			# 0x9
	lw	s122,152($sp)
	j	$L457
	nop
$L741:
	addiu	s544,s398,-1
	sll	s545,s544,2
	addiu	s546,$sp,156
	addu	s547,s546,s545
	move	s398,s544
	addu	s388,s388,s388
	lw	s548,0(s547)
	addiu	s549,s547,-4
	li	s550,1			# 0x1
	sll	s551,s550,s388
	addiu	s552,s551,-1
	and	s553,s552,s23
	beq	s553,s548,$L523
	nop
$L743:
	addiu	s544,s544,-1
	move	s398,s544
	addu	s388,s388,s388
	lw	s554,0(s549)
	addiu	s549,s549,-4
	li	s555,1			# 0x1
	sll	s556,s555,s388
	addiu	s557,s556,-1
	and	s558,s557,s23
	beq	s558,s554,$L523
	nop
	j	$L743
	nop
$L719:
	li	s141,16			# 0x10
	j	$L475
	nop
$L704:
	li	s125,1			# 0x1
	lw	s122,152($sp)
	j	$L457
	nop
$L720:
	li	s141,15			# 0xf
	move	s141,s141
	j	$L475
	nop
$L722:
	li	s141,13			# 0xd
	move	s141,s141
	j	$L475
	nop
$L706:
	li	s125,3			# 0x3
	lw	s122,152($sp)
	j	$L457
	nop
$L705:
	li	s125,2			# 0x2
	lw	s122,152($sp)
	j	$L457
	nop
$L707:
	li	s125,4			# 0x4
	lw	s122,152($sp)
	j	$L457
	nop
$L721:
	li	s141,14			# 0xe
	move	s141,s141
	j	$L475
	nop
$L708:
	li	s125,5			# 0x5
	lw	s122,152($sp)
	j	$L457
	nop
$L710:
	li	s125,7			# 0x7
	lw	s122,152($sp)
	j	$L457
	nop
$L709:
	li	s125,6			# 0x6
	lw	s122,152($sp)
	j	$L457
	nop
$L525:
	addiu	s125,s125,1
	addiu	s394,s394,4
	addiu	s397,s397,4
	slt	s559,s141,s125
	beq	s559,$0,$L527
	nop
$L500:
	beq	s199,$0,$L455
	nop
	xori	s560,s141,0x1
	sltu	s199,$0,s560
	j	$L455
	nop
$L723:
	li	s141,12			# 0xc
	move	s141,s141
	j	$L475
	nop
$L724:
	li	s141,11			# 0xb
	j	$L475
	nop
$L725:
	li	s141,10			# 0xa
	move	s141,s141
	j	$L475
	nop
$L727:
	li	s141,8			# 0x8
	move	s141,s141
	j	$L475
	nop
$L728:
	li	s141,7			# 0x7
	move	s141,s141
	j	$L475
	nop
$L711:
	li	s125,8			# 0x8
	lw	s122,152($sp)
	j	$L457
	nop
$L713:
	li	s125,10			# 0xa
	lw	s122,152($sp)
	j	$L457
	nop
$L726:
	li	s141,9			# 0x9
	move	s141,s141
	j	$L475
	nop
$L730:
	li	s141,5			# 0x5
	move	s141,s141
	j	$L475
	nop
$L716:
	li	s125,13			# 0xd
	lw	s122,152($sp)
	j	$L457
	nop
$L729:
	li	s141,6			# 0x6
	j	$L475
	nop
$L731:
	li	s141,4			# 0x4
	move	s141,s141
	j	$L475
	nop
$L714:
	li	s125,11			# 0xb
	lw	s122,152($sp)
	j	$L457
	nop
$L715:
	li	s125,12			# 0xc
	lw	s122,152($sp)
	j	$L457
	nop
$L732:
	li	s141,3			# 0x3
	move	s141,s141
	j	$L475
	nop
$L733:
	li	s141,2			# 0x2
	move	s141,s141
	j	$L475
	nop
$L717:
	li	s125,14			# 0xe
	lw	s122,152($sp)
	j	$L457
	nop
$L718:
	li	s125,15			# 0xf
	lw	s122,152($sp)
	j	$L457
	nop
	.set	macro
	.set	reorder
	.end	huft_build
	.size	huft_build, .-huft_build
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC0:
	.ascii	" incomplete literal tree\012\000"
	.align	2
$LC1:
	.ascii	" incomplete distance tree\012\000"
	.text
	.align	2
	.globl	inflate_dynamic
	.set	nomips16
	.ent	inflate_dynamic
inflate_dynamic:
	.frame	$sp,1360,$31		# vars= 1288, regs= 10/0, args= 32, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$5
	move	s2,$6
	move	s3,$7
	move	s4,$fp
	move	s5,$31
	addiu	$sp,$sp,-1360
	lw	s6,%gp_rel(bb)($28)
	lw	s7,%gp_rel(bk)($28)
	nop
	sltu	s8,s7,5
	beq	s8,$0,$L745
	nop
	lw	s9,%gp_rel(inptr)($28)
	lw	s1,%gp_rel(insize)($28)
	nop
	sltu	s10,s9,s1
	beq	s10,$0,$L746
	nop
	lui	s11,%hi(inbuf)
	addiu	s12,s11,%lo(inbuf)
	addu	s3,s9,s12
	lbu	s13,0(s3)
	addiu	s2,s9,1
	sw	s2,%gp_rel(inptr)($28)
$L747:
	sll	s14,s13,s7
	or	s6,s6,s14
	addiu	s7,s7,8
$L745:
	andi	s15,s6,0x1f
	addiu	s16,s15,257
	srl	s17,s6,5
	addiu	s18,s7,-5
	sltu	s19,s18,5
	beq	s19,$0,$L748
	nop
	lw	s20,%gp_rel(inptr)($28)
	lw	s21,%gp_rel(insize)($28)
	nop
	sltu	s22,s20,s21
	beq	s22,$0,$L749
	nop
	lui	s23,%hi(inbuf)
	addiu	s24,s23,%lo(inbuf)
	addu	s25,s20,s24
	lbu	s26,0(s25)
	addiu	s27,s20,1
	sw	s27,%gp_rel(inptr)($28)
$L750:
	sll	s28,s26,s18
	or	s17,s17,s28
	addiu	s29,s18,8
	li	s30,9			# 0x9
	subu	s31,s30,s7
	srl	s32,s31,3
	sll	s33,s32,3
	addu	s18,s29,s33
$L748:
	srl	s34,s17,5
	addiu	s35,s18,-5
	sltu	s36,s35,4
	beq	s36,$0,$L751
	nop
	lw	s37,%gp_rel(inptr)($28)
	lw	s38,%gp_rel(insize)($28)
	nop
	sltu	s39,s37,s38
	beq	s39,$0,$L752
	nop
	lui	s3,%hi(inbuf)
	addiu	s40,s3,%lo(inbuf)
	addu	s2,s37,s40
	lbu	s41,0(s2)
	addiu	s1,s37,1
	sw	s1,%gp_rel(inptr)($28)
$L753:
	sll	s42,s41,s35
	or	s34,s34,s42
	addiu	s43,s35,8
	li	s44,8			# 0x8
	subu	s45,s44,s18
	srl	s46,s45,3
	sll	s47,s46,3
	addu	s35,s43,s47
$L751:
	andi	s48,s34,0xf
	addiu	s49,s48,4
	sltu	s50,s16,287
	beq	s50,$0,$L754
	nop
	andi	s51,s17,0x1f
	addiu	s52,s51,1
	sltu	s53,s52,31
	beq	s53,$0,$L754
	nop
	srl	s54,s34,4
	addiu	s55,s35,-4
	lui	s56,%hi(border)
	addiu	s57,s56,%lo(border)
	move	s58,s57
	move	s59,$0
	addiu	s60,$sp,32
	lui	s61,%hi(inbuf)
	addiu	s62,s61,%lo(inbuf)
	j	$L758
	nop
$L922:
	addu	s64,s63,s62
	lbu	s65,0(s64)
	addiu	s66,s63,1
	sw	s66,%gp_rel(inptr)($28)
$L757:
	sll	s67,s65,s55
	or	s54,s54,s67
	addiu	s55,s55,8
$L762:
	lw	s68,0(s58)
	nop
	sll	s3,s68,2
	addu	s2,s60,s3
	andi	s69,s54,0x7
	sw	s69,16(s2)
	srl	s54,s54,3
	addiu	s55,s55,-3
	addiu	s59,s59,1
	addiu	s58,s58,4
	sltu	s1,s59,s49
	beq	s1,$0,$L921
	nop
$L758:
	sltu	s70,s55,3
	beq	s70,$0,$L762
	nop
	lw	s63,%gp_rel(inptr)($28)
	lw	s71,%gp_rel(insize)($28)
	nop
	sltu	s72,s63,s71
	bne	s72,$0,$L922
	nop
	move	s73,$0
	move	$4,s73
	move	$5,s1
	move	$6,s2
	move	$7,s3
	jal	fill_inbuf
	nop
	move	s74,$2
	andi	s65,s74,0x00ff
	j	$L757
	nop
$L754:
	li	s75,1			# 0x1
$L765:
	move	s76,s75
	addiu	$sp,$sp,1360
	move	$2,s76
	j	s5
	nop
$L752:
	move	s77,$0
	move	$4,s77
	move	$5,s1
	move	$6,s2
	move	$7,s3
	jal	fill_inbuf
	nop
	move	s78,$2
	andi	s41,s78,0x00ff
	j	$L753
	nop
$L746:
	move	s79,$0
	move	$4,s79
	move	$5,s1
	move	$6,s2
	move	$7,s3
	jal	fill_inbuf
	nop
	move	s80,$2
	andi	s13,s80,0x00ff
	j	$L747
	nop
$L749:
	move	s81,$0
	move	$4,s81
	move	$5,s1
	move	$6,s2
	move	$7,s3
	jal	fill_inbuf
	nop
	move	s82,$2
	andi	s26,s82,0x00ff
	j	$L750
	nop
$L921:
	sltu	s83,s59,19
	beq	s83,$0,$L760
	nop
	sll	s84,s59,2
	addu	s85,s57,s84
	li	s86,18			# 0x12
	subu	s87,s86,s59
	andi	s88,s87,0x7
	lw	s89,0(s85)
	nop
	sll	s90,s89,2
	addu	s91,s60,s90
	sw	$0,16(s91)
	addiu	s92,s59,1
	addiu	s93,s85,4
	sltu	s94,s92,19
	beq	s94,$0,$L760
	nop
	beq	s88,$0,$L763
	nop
	li	s95,1			# 0x1
	beq	s88,s95,$L909
	nop
	li	s96,2			# 0x2
	beq	s88,s96,$L910
	nop
	li	s97,3			# 0x3
	beq	s88,s97,$L911
	nop
	li	s98,4			# 0x4
	beq	s88,s98,$L912
	nop
	li	s99,5			# 0x5
	beq	s88,s99,$L913
	nop
	li	s100,6			# 0x6
	beq	s88,s100,$L914
	nop
	lw	s101,4(s85)
	nop
	sll	s102,s101,2
	addu	s103,s60,s102
	sw	$0,16(s103)
	addiu	s92,s92,1
	addiu	s93,s93,4
$L914:
	lw	s104,0(s93)
	nop
	sll	s105,s104,2
	addu	s106,s60,s105
	sw	$0,16(s106)
	addiu	s92,s92,1
	addiu	s93,s93,4
$L913:
	lw	s107,0(s93)
	nop
	sll	s108,s107,2
	addu	s109,s60,s108
	sw	$0,16(s109)
	addiu	s92,s92,1
	addiu	s93,s93,4
$L912:
	lw	s110,0(s93)
	nop
	sll	s111,s110,2
	addu	s112,s60,s111
	sw	$0,16(s112)
	addiu	s92,s92,1
	addiu	s93,s93,4
$L911:
	lw	s113,0(s93)
	nop
	sll	s114,s113,2
	addu	s115,s60,s114
	sw	$0,16(s115)
	addiu	s92,s92,1
	addiu	s93,s93,4
$L910:
	lw	s116,0(s93)
	nop
	sll	s117,s116,2
	addu	s118,s60,s117
	sw	$0,16(s118)
	addiu	s92,s92,1
	addiu	s93,s93,4
$L909:
	lw	s119,0(s93)
	nop
	sll	s120,s119,2
	addu	s121,s60,s120
	sw	$0,16(s121)
	addiu	s92,s92,1
	addiu	s93,s93,4
	sltu	s122,s92,19
	beq	s122,$0,$L760
	nop
$L763:
	lw	s123,0(s93)
	nop
	sll	s124,s123,2
	addu	s125,s60,s124
	sw	$0,16(s125)
	lw	s126,4(s93)
	nop
	sll	s127,s126,2
	addu	s128,s60,s127
	sw	$0,16(s128)
	lw	s129,8(s93)
	nop
	sll	s130,s129,2
	addu	s131,s60,s130
	sw	$0,16(s131)
	lw	s132,12(s93)
	nop
	sll	s133,s132,2
	addu	s134,s60,s133
	sw	$0,16(s134)
	lw	s135,16(s93)
	nop
	sll	s136,s135,2
	addu	s137,s60,s136
	sw	$0,16(s137)
	lw	s138,20(s93)
	nop
	sll	s139,s138,2
	addu	s140,s60,s139
	sw	$0,16(s140)
	lw	s141,24(s93)
	nop
	sll	s142,s141,2
	addu	s143,s60,s142
	sw	$0,16(s143)
	lw	s144,28(s93)
	nop
	sll	s145,s144,2
	addu	s146,s60,s145
	sw	$0,16(s146)
	addiu	s92,s92,8
	addiu	s93,s93,32
	sltu	s147,s92,19
	bne	s147,$0,$L763
	nop
$L760:
	li	s148,7			# 0x7
	sw	$0,16($sp)
	sw	s60,20($sp)
	addiu	s149,$sp,40
	sw	s149,24($sp)
	addiu	s150,$sp,48
	li	s151,19			# 0x13
	li	s152,19			# 0x13
	move	s153,$0
	move	$4,s150
	move	$5,s151
	move	$6,s152
	move	$7,s153
	jal	huft_build
	nop
	move	s154,$2
	move	s75,s154
	bne	s154,$0,$L923
	nop
	addu	s155,s52,s16
	sll	s156,s148,1
	lui	s157,%hi(mask_bits)
	addiu	s158,s157,%lo(mask_bits)
	addu	s159,s156,s158
	lhu	s160,0(s159)
	move	s161,$0
	lui	s162,%hi(inbuf)
	addiu	s163,s162,%lo(inbuf)
	li	s164,-1			# 0xffffffffffffffff
$L916:
	sltu	s165,s75,s155
	beq	s165,$0,$L786
	nop
$L925:
	sltu	s166,s55,s148
	bne	s166,$0,$L792
	nop
	j	$L787
	nop
$L924:
	addu	s168,s167,s163
	lbu	s169,0(s168)
	addiu	s170,s167,1
	sw	s170,%gp_rel(inptr)($28)
	sll	s171,s169,s55
	or	s54,s54,s171
	addiu	s55,s55,8
	sltu	s172,s55,s148
	beq	s172,$0,$L787
	nop
$L792:
	lw	s167,%gp_rel(inptr)($28)
	lw	s173,%gp_rel(insize)($28)
	nop
	sltu	s174,s167,s173
	bne	s174,$0,$L924
	nop
	move	s175,$0
	move	$4,s175
	move	$5,s148
	move	$6,s158
	move	$7,s148
	jal	fill_inbuf
	nop
	move	s176,$2
	andi	s177,s176,0x00ff
	sll	s178,s177,s55
	or	s54,s54,s178
	addiu	s55,s55,8
	sltu	s179,s55,s148
	bne	s179,$0,$L792
	nop
$L787:
	and	s180,s54,s160
	sll	s181,s180,3
	lw	s182,32($sp)
	nop
	addu	s183,s182,s181
	lbu	s184,1(s183)
	nop
	srl	s54,s54,s184
	subu	s55,s55,s184
	lhu	s185,4(s183)
	nop
	sltu	s186,s185,16
	beq	s186,$0,$L770
	nop
	sll	s187,s75,2
	addu	s188,s60,s187
	sw	s185,16(s188)
	addiu	s75,s75,1
	move	s161,s185
	sltu	s189,s75,s155
	bne	s189,$0,$L925
	nop
$L786:
	lw	s190,32($sp)
	move	$4,s190
	move	$5,s182
	move	$6,s158
	move	$7,s148
	jal	huft_free
	nop
	sw	s54,%gp_rel(bb)($28)
	sw	s55,%gp_rel(bk)($28)
	lw	s191,%gp_rel(lbits)($28)
	nop
	lui	s192,%hi(cplext)
	addiu	s193,s192,%lo(cplext)
	sw	s193,16($sp)
	sw	s60,20($sp)
	addiu	s194,$sp,40
	sw	s194,24($sp)
	addiu	s195,$sp,48
	li	s196,257			# 0x101
	lui	s197,%hi(cplens)
	addiu	s198,s197,%lo(cplens)
	move	$4,s195
	move	$5,s16
	move	$6,s196
	move	$7,s198
	jal	huft_build
	nop
	move	s199,$2
	move	s75,s199
	beq	s199,$0,$L788
	nop
	li	s200,1			# 0x1
	bne	s199,s200,$L765
	nop
	lui	s201,%hi($LC0)
	addiu	s202,s201,%lo($LC0)
	li	s203,1			# 0x1
	li	s204,25			# 0x19
	lw	s205,%gp_rel(stderr)($28)
	move	$4,s202
	move	$5,s203
	move	$6,s204
	move	$7,s205
	jal	fwrite
	nop
$L920:
	lw	s206,32($sp)
	move	$4,s206
	jal	huft_free
	nop
	j	$L765
	nop
$L923:
	li	s207,1			# 0x1
	bne	s154,s207,$L765
	nop
	j	$L920
	nop
$L770:
	li	s208,16			# 0x10
	beq	s185,s208,$L926
	nop
	li	s209,17			# 0x11
	beq	s185,s209,$L776
	nop
	sltu	s210,s55,7
	beq	s210,$0,$L778
	nop
	lw	s211,%gp_rel(inptr)($28)
	lw	s212,%gp_rel(insize)($28)
	nop
	sltu	s213,s211,s212
	beq	s213,$0,$L783
	nop
	addu	s214,s211,s163
	lbu	s215,0(s214)
	addiu	s216,s211,1
	sw	s216,%gp_rel(inptr)($28)
$L784:
	sll	s217,s215,s55
	or	s54,s54,s217
	addiu	s218,s55,8
	nor	s219,$0,s55
	addiu	s220,s219,7
	srl	s221,s220,3
	sll	s222,s221,3
	addu	s55,s218,s222
$L778:
	andi	s223,s54,0x7f
	addiu	s224,s223,11
	srl	s54,s54,7
	addiu	s55,s55,-7
	addu	s225,s224,s75
	sltu	s226,s155,s225
	bne	s226,$0,$L754
	nop
	addiu	s227,s223,10
	sll	s228,s75,2
	addiu	s229,$sp,48
	addu	s158,s229,s228
	andi	s182,s227,0x7
	sw	$0,0(s158)
	addiu	s230,s223,9
	addiu	s231,s158,4
	beq	s230,s164,$L919
	nop
	beq	s182,$0,$L785
	nop
	li	s232,1			# 0x1
	beq	s182,s232,$L903
	nop
	li	s233,2			# 0x2
	beq	s182,s233,$L904
	nop
	li	s234,3			# 0x3
	beq	s182,s234,$L905
	nop
	li	s235,4			# 0x4
	beq	s182,s235,$L906
	nop
	li	s236,5			# 0x5
	beq	s182,s236,$L907
	nop
	li	s237,6			# 0x6
	beq	s182,s237,$L908
	nop
	sw	$0,4(s158)
	addiu	s230,s223,8
	addiu	s231,s158,8
$L908:
	sw	$0,0(s231)
	addiu	s230,s230,-1
	addiu	s231,s231,4
$L907:
	sw	$0,0(s231)
	addiu	s230,s230,-1
	addiu	s231,s231,4
$L906:
	sw	$0,0(s231)
	addiu	s230,s230,-1
	addiu	s231,s231,4
$L905:
	sw	$0,0(s231)
	addiu	s230,s230,-1
	addiu	s231,s231,4
$L904:
	sw	$0,0(s231)
	addiu	s230,s230,-1
	addiu	s231,s231,4
$L903:
	sw	$0,0(s231)
	addiu	s230,s230,-1
	addiu	s231,s231,4
	beq	s230,s164,$L919
	nop
$L785:
	sw	$0,0(s231)
	sw	$0,4(s231)
	sw	$0,8(s231)
	sw	$0,12(s231)
	sw	$0,16(s231)
	sw	$0,20(s231)
	sw	$0,24(s231)
	sw	$0,28(s231)
	addiu	s230,s230,-8
	addiu	s231,s231,32
	bne	s230,s164,$L785
	nop
$L919:
	addiu	s148,s75,1
	addu	s75,s148,s227
	move	s161,$0
	j	$L916
	nop
$L783:
	move	s238,$0
	move	$4,s238
	move	$5,s209
	move	$6,s208
	move	$7,s148
	jal	fill_inbuf
	nop
	move	s239,$2
	andi	s215,s239,0x00ff
	j	$L784
	nop
$L926:
	sltu	s240,s55,2
	beq	s240,$0,$L772
	nop
	lw	s241,%gp_rel(inptr)($28)
	lw	s242,%gp_rel(insize)($28)
	nop
	sltu	s243,s241,s242
	beq	s243,$0,$L773
	nop
	addu	s244,s241,s163
	lbu	s245,0(s244)
	addiu	s246,s241,1
	sw	s246,%gp_rel(inptr)($28)
$L774:
	sll	s247,s245,s55
	or	s54,s54,s247
	addiu	s55,s55,8
$L772:
	andi	s148,s54,0x3
	addiu	s248,s148,3
	srl	s54,s54,2
	addiu	s55,s55,-2
	addu	s249,s248,s75
	sltu	s250,s155,s249
	bne	s250,$0,$L754
	nop
	addiu	s251,s148,2
	sll	s252,s75,2
	addiu	s253,$sp,48
	addu	s158,s253,s252
	sw	s161,0(s158)
	addiu	s254,s148,1
	addiu	s255,s158,4
	beq	s254,s164,$L917
	nop
	beq	s251,$0,$L775
	nop
	li	s256,1			# 0x1
	beq	s251,s256,$L891
	nop
	li	s257,2			# 0x2
	beq	s251,s257,$L892
	nop
	li	s258,3			# 0x3
	beq	s251,s258,$L893
	nop
	li	s259,4			# 0x4
	beq	s251,s259,$L894
	nop
	li	s260,5			# 0x5
	beq	s251,s260,$L895
	nop
	li	s261,6			# 0x6
	beq	s251,s261,$L896
	nop
	sw	s161,4(s158)
	move	s254,s148
	addiu	s255,s158,8
$L896:
	sw	s161,0(s255)
	addiu	s254,s254,-1
	addiu	s255,s255,4
$L895:
	sw	s161,0(s255)
	addiu	s254,s254,-1
	addiu	s255,s255,4
$L894:
	sw	s161,0(s255)
	addiu	s254,s254,-1
	addiu	s255,s255,4
$L893:
	sw	s161,0(s255)
	addiu	s254,s254,-1
	addiu	s255,s255,4
$L892:
	sw	s161,0(s255)
	addiu	s254,s254,-1
	addiu	s255,s255,4
$L891:
	sw	s161,0(s255)
	addiu	s254,s254,-1
	addiu	s255,s255,4
	beq	s254,s164,$L917
	nop
$L775:
	sw	s161,0(s255)
	sw	s161,4(s255)
	sw	s161,8(s255)
	sw	s161,12(s255)
	sw	s161,16(s255)
	sw	s161,20(s255)
	sw	s161,24(s255)
	sw	s161,28(s255)
	addiu	s254,s254,-8
	addiu	s255,s255,32
	bne	s254,s164,$L775
	nop
$L917:
	addiu	s262,s75,1
	addu	s75,s262,s251
	j	$L916
	nop
$L773:
	move	s263,$0
	move	$4,s263
	move	$5,s182
	move	$6,s208
	move	$7,s243
	jal	fill_inbuf
	nop
	move	s264,$2
	andi	s245,s264,0x00ff
	j	$L774
	nop
$L776:
	sltu	s265,s55,3
	beq	s265,$0,$L779
	nop
	lw	s266,%gp_rel(inptr)($28)
	lw	s267,%gp_rel(insize)($28)
	nop
	sltu	s268,s266,s267
	beq	s268,$0,$L780
	nop
	addu	s269,s266,s163
	lbu	s270,0(s269)
	addiu	s271,s266,1
	sw	s271,%gp_rel(inptr)($28)
$L781:
	sll	s272,s270,s55
	or	s54,s54,s272
	addiu	s55,s55,8
$L779:
	andi	s273,s54,0x7
	addiu	s274,s273,3
	srl	s54,s54,3
	addiu	s55,s55,-3
	addu	s275,s274,s75
	sltu	s276,s155,s275
	bne	s276,$0,$L754
	nop
	addiu	s227,s273,2
	sll	s277,s75,2
	addiu	s278,$sp,48
	addu	s158,s278,s277
	andi	s182,s227,0x7
	sw	$0,0(s158)
	addiu	s279,s273,1
	addiu	s280,s158,4
	beq	s279,s164,$L919
	nop
	beq	s182,$0,$L782
	nop
	li	s281,1			# 0x1
	beq	s182,s281,$L897
	nop
	li	s282,2			# 0x2
	beq	s182,s282,$L898
	nop
	li	s283,3			# 0x3
	beq	s182,s283,$L899
	nop
	li	s284,4			# 0x4
	beq	s182,s284,$L900
	nop
	li	s285,5			# 0x5
	beq	s182,s285,$L901
	nop
	li	s286,6			# 0x6
	beq	s182,s286,$L902
	nop
	sw	$0,4(s158)
	move	s279,s273
	addiu	s280,s158,8
$L902:
	sw	$0,0(s280)
	addiu	s279,s279,-1
	addiu	s280,s280,4
$L901:
	sw	$0,0(s280)
	addiu	s279,s279,-1
	addiu	s280,s280,4
$L900:
	sw	$0,0(s280)
	addiu	s279,s279,-1
	addiu	s280,s280,4
$L899:
	sw	$0,0(s280)
	addiu	s279,s279,-1
	addiu	s280,s280,4
$L898:
	sw	$0,0(s280)
	addiu	s279,s279,-1
	addiu	s280,s280,4
$L897:
	sw	$0,0(s280)
	addiu	s279,s279,-1
	addiu	s280,s280,4
	beq	s279,s164,$L919
	nop
$L782:
	sw	$0,0(s280)
	sw	$0,4(s280)
	sw	$0,8(s280)
	sw	$0,12(s280)
	sw	$0,16(s280)
	sw	$0,20(s280)
	sw	$0,24(s280)
	sw	$0,28(s280)
	addiu	s279,s279,-8
	addiu	s280,s280,32
	bne	s279,s164,$L782
	nop
	j	$L919
	nop
$L780:
	move	s287,$0
	move	$4,s287
	move	$5,s209
	move	$6,s208
	move	$7,s148
	jal	fill_inbuf
	nop
	move	s288,$2
	andi	s270,s288,0x00ff
	j	$L781
	nop
$L788:
	lw	s289,%gp_rel(dbits)($28)
	nop
	sll	s290,s16,2
	lui	s291,%hi(cpdext)
	addiu	s292,s291,%lo(cpdext)
	sw	s292,16($sp)
	addiu	s293,$sp,36
	sw	s293,20($sp)
	addiu	s294,$sp,44
	sw	s294,24($sp)
	addiu	s295,$sp,48
	addu	s296,s295,s290
	move	s297,$0
	lui	s298,%hi(cpdist)
	addiu	s299,s298,%lo(cpdist)
	move	$4,s296
	move	$5,s52
	move	$6,s297
	move	$7,s299
	jal	huft_build
	nop
	move	s300,$2
	move	s75,s300
	beq	s300,$0,$L789
	nop
	li	s301,1			# 0x1
	bne	s300,s301,$L920
	nop
	lui	s302,%hi($LC1)
	addiu	s303,s302,%lo($LC1)
	li	s304,1			# 0x1
	li	s305,26			# 0x1a
	lw	s306,%gp_rel(stderr)($28)
	move	$4,s303
	move	$5,s304
	move	$6,s305
	move	$7,s306
	jal	fwrite
	nop
	move	$4,s183
	jal	huft_free
	nop
	j	$L920
	nop
$L789:
	lw	s307,32($sp)
	move	$4,s307
	move	$5,s183
	move	$6,s191
	move	$7,s289
	jal	inflate_codes
	nop
	move	s308,$2
	bne	s308,$0,$L754
	nop
	lw	s309,32($sp)
	move	$4,s309
	jal	huft_free
	nop
	move	$4,s183
	jal	huft_free
	nop
	j	$L765
	nop
	.set	macro
	.set	reorder
	.end	inflate_dynamic
	.size	inflate_dynamic, .-inflate_dynamic
	.align	2
	.globl	inflate_fixed
	.set	nomips16
	.ent	inflate_fixed
inflate_fixed:
	.frame	$sp,1216,$31		# vars= 1168, regs= 3/0, args= 32, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$31
	addiu	$sp,$sp,-1216
	addiu	s2,$sp,48
	addiu	s3,$sp,624
	li	s4,8			# 0x8
	subu	s5,s3,s2
	addiu	s6,s5,-4
	srl	s7,s6,2
	andi	s8,s7,0x7
	sw	s4,48($sp)
	addiu	s9,$sp,52
	beq	s9,s3,$L1060
	nop
	beq	s8,$0,$L928
	nop
	li	s10,1			# 0x1
	beq	s8,s10,$L1054
	nop
	li	s11,2			# 0x2
	beq	s8,s11,$L1055
	nop
	li	s12,3			# 0x3
	beq	s8,s12,$L1056
	nop
	li	s13,4			# 0x4
	beq	s8,s13,$L1057
	nop
	li	s14,5			# 0x5
	beq	s8,s14,$L1058
	nop
	li	s15,6			# 0x6
	beq	s8,s15,$L1059
	nop
	sw	s4,52($sp)
	addiu	s9,$sp,56
$L1059:
	sw	s4,0(s9)
	addiu	s9,s9,4
$L1058:
	sw	s4,0(s9)
	addiu	s9,s9,4
$L1057:
	sw	s4,0(s9)
	addiu	s9,s9,4
$L1056:
	sw	s4,0(s9)
	addiu	s9,s9,4
$L1055:
	sw	s4,0(s9)
	addiu	s9,s9,4
$L1054:
	sw	s4,0(s9)
	addiu	s9,s9,4
	beq	s9,s3,$L1060
	nop
$L928:
	sw	s4,0(s9)
	sw	s4,4(s9)
	sw	s4,8(s9)
	sw	s4,12(s9)
	sw	s4,16(s9)
	sw	s4,20(s9)
	sw	s4,24(s9)
	sw	s4,28(s9)
	addiu	s9,s9,32
	bne	s9,s3,$L928
	nop
$L1060:
	addiu	s16,$sp,1072
	li	s17,9			# 0x9
	subu	s18,s16,s3
	addiu	s19,s18,-4
	srl	s20,s19,2
	andi	s21,s20,0x7
	sw	s17,624($sp)
	addiu	s22,s3,4
	beq	s22,s16,$L1061
	nop
	beq	s21,$0,$L929
	nop
	li	s23,1			# 0x1
	beq	s21,s23,$L1048
	nop
	li	s24,2			# 0x2
	beq	s21,s24,$L1049
	nop
	li	s25,3			# 0x3
	beq	s21,s25,$L1050
	nop
	li	s26,4			# 0x4
	beq	s21,s26,$L1051
	nop
	li	s27,5			# 0x5
	beq	s21,s27,$L1052
	nop
	li	s28,6			# 0x6
	beq	s21,s28,$L1053
	nop
	sw	s17,4(s3)
	addiu	s22,s3,8
$L1053:
	sw	s17,0(s22)
	addiu	s22,s22,4
$L1052:
	sw	s17,0(s22)
	addiu	s22,s22,4
$L1051:
	sw	s17,0(s22)
	addiu	s22,s22,4
$L1050:
	sw	s17,0(s22)
	addiu	s22,s22,4
$L1049:
	sw	s17,0(s22)
	addiu	s22,s22,4
$L1048:
	sw	s17,0(s22)
	addiu	s22,s22,4
	beq	s22,s16,$L1061
	nop
$L929:
	sw	s17,0(s22)
	sw	s17,4(s22)
	sw	s17,8(s22)
	sw	s17,12(s22)
	sw	s17,16(s22)
	sw	s17,20(s22)
	sw	s17,24(s22)
	sw	s17,28(s22)
	addiu	s22,s22,32
	bne	s22,s16,$L929
	nop
$L1061:
	addiu	s29,$sp,1168
	li	s30,7			# 0x7
	subu	s31,s29,s16
	addiu	s32,s31,-4
	srl	s33,s32,2
	andi	s34,s33,0x7
	li	s35,7			# 0x7
	sw	s30,1072($sp)
	addiu	s36,s16,4
	beq	s36,s29,$L1062
	nop
	beq	s34,$0,$L930
	nop
	li	s37,1			# 0x1
	beq	s34,s37,$L1042
	nop
	li	s38,2			# 0x2
	beq	s34,s38,$L1043
	nop
	li	s39,3			# 0x3
	beq	s34,s39,$L1044
	nop
	li	s40,4			# 0x4
	beq	s34,s40,$L1045
	nop
	li	s41,5			# 0x5
	beq	s34,s41,$L1046
	nop
	li	s42,6			# 0x6
	beq	s34,s42,$L1047
	nop
	sw	s30,4(s16)
	addiu	s36,s16,8
$L1047:
	sw	s30,0(s36)
	addiu	s36,s36,4
$L1046:
	sw	s30,0(s36)
	addiu	s36,s36,4
$L1045:
	sw	s30,0(s36)
	addiu	s36,s36,4
$L1044:
	sw	s30,0(s36)
	addiu	s36,s36,4
$L1043:
	sw	s30,0(s36)
	addiu	s36,s36,4
$L1042:
	li	s35,7			# 0x7
	sw	s30,0(s36)
	addiu	s36,s36,4
	beq	s36,s29,$L1062
	nop
$L930:
	sw	s30,0(s36)
	sw	s30,4(s36)
	sw	s30,8(s36)
	sw	s30,12(s36)
	sw	s30,16(s36)
	sw	s30,20(s36)
	sw	s30,24(s36)
	li	s35,7			# 0x7
	sw	s30,28(s36)
	addiu	s36,s36,32
	bne	s36,s29,$L930
	nop
$L1062:
	li	s43,8			# 0x8
	sw	s43,1168($sp)
	sw	s43,1172($sp)
	sw	s43,1176($sp)
	sw	s43,1180($sp)
	sw	s43,1184($sp)
	sw	s43,1188($sp)
	sw	s43,1192($sp)
	sw	s43,1196($sp)
	lui	s44,%hi(cplext)
	addiu	s45,s44,%lo(cplext)
	sw	s45,16($sp)
	addiu	s46,$sp,32
	sw	s46,20($sp)
	addiu	s47,$sp,40
	sw	s47,24($sp)
	move	s48,s2
	li	s49,288			# 0x120
	li	s50,257			# 0x101
	lui	s51,%hi(cplens)
	addiu	s52,s51,%lo(cplens)
	move	$4,s48
	move	$5,s49
	move	$6,s50
	move	$7,s52
	jal	huft_build
	nop
	move	s53,$2
	bne	s53,$0,$L1063
	nop
	addiu	s54,$sp,168
	li	s55,5			# 0x5
	subu	s56,s54,s2
	addiu	s57,s56,-4
	srl	s58,s57,2
	andi	s59,s58,0x7
	li	s60,5			# 0x5
	sw	s55,48($sp)
	addiu	s61,$sp,52
	beq	s61,s54,$L1064
	nop
	beq	s59,$0,$L931
	nop
	li	s62,1			# 0x1
	beq	s59,s62,$L1036
	nop
	li	s63,2			# 0x2
	beq	s59,s63,$L1037
	nop
	li	s64,3			# 0x3
	beq	s59,s64,$L1038
	nop
	li	s65,4			# 0x4
	beq	s59,s65,$L1039
	nop
	beq	s59,s55,$L1040
	nop
	li	s66,6			# 0x6
	beq	s59,s66,$L1041
	nop
	sw	s55,52($sp)
	addiu	s61,$sp,56
$L1041:
	sw	s55,0(s61)
	addiu	s61,s61,4
$L1040:
	sw	s55,0(s61)
	addiu	s61,s61,4
$L1039:
	sw	s55,0(s61)
	addiu	s61,s61,4
$L1038:
	sw	s55,0(s61)
	addiu	s61,s61,4
$L1037:
	sw	s55,0(s61)
	addiu	s61,s61,4
$L1036:
	li	s60,5			# 0x5
	sw	s55,0(s61)
	addiu	s61,s61,4
	beq	s61,s54,$L1064
	nop
$L931:
	sw	s55,0(s61)
	sw	s55,4(s61)
	sw	s55,8(s61)
	sw	s55,12(s61)
	sw	s55,16(s61)
	sw	s55,20(s61)
	sw	s55,24(s61)
	li	s60,5			# 0x5
	sw	s55,28(s61)
	addiu	s61,s61,32
	bne	s61,s54,$L931
	nop
$L1064:
	lui	s67,%hi(cpdext)
	addiu	s68,s67,%lo(cpdext)
	sw	s68,16($sp)
	addiu	s69,$sp,36
	sw	s69,20($sp)
	addiu	s70,$sp,44
	sw	s70,24($sp)
	move	s71,s2
	li	s72,30			# 0x1e
	move	s73,$0
	lui	s74,%hi(cpdist)
	addiu	s75,s74,%lo(cpdist)
	move	$4,s71
	move	$5,s72
	move	$6,s73
	move	$7,s75
	jal	huft_build
	nop
	move	s76,$2
	move	s77,s76
	slt	s78,s76,2
	bne	s78,$0,$L933
	nop
	lw	s79,32($sp)
	nop
	beq	s79,$0,$L932
	nop
$L938:
	addiu	s80,s79,-8
	lw	s79,4(s80)
	move	$4,s80
	jal	free
	nop
	bne	s79,$0,$L938
	nop
$L932:
	move	s81,s77
	addiu	$sp,$sp,1216
	move	$2,s81
	j	s1
	nop
$L1063:
	move	s82,s53
	move	s83,s82
	addiu	$sp,$sp,1216
	move	$2,s83
	j	s1
	nop
$L933:
	lw	s84,32($sp)
	lw	s85,36($sp)
	move	$4,s84
	move	$5,s85
	move	$6,s35
	move	$7,s60
	jal	inflate_codes
	nop
	move	s86,$2
	beq	s86,$0,$L935
	nop
	li	s87,1			# 0x1
	move	s88,s87
	addiu	$sp,$sp,1216
	move	$2,s88
	j	s1
	nop
$L935:
	lw	s89,32($sp)
	move	$4,s89
	jal	huft_free
	nop
	lw	s90,36($sp)
	move	$4,s90
	jal	huft_free
	nop
	move	s77,$0
	j	$L932
	nop
	.set	macro
	.set	reorder
	.end	inflate_fixed
	.size	inflate_fixed, .-inflate_fixed
	.align	2
	.globl	inflate_block
	.set	nomips16
	.ent	inflate_block
inflate_block:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$5
	move	s3,$6
	move	s4,$7
	move	s5,$31
	addiu	$sp,$sp,-32
	move	s6,s1
	lw	s7,%gp_rel(bb)($28)
	lw	s8,%gp_rel(bk)($28)
	nop
	bne	s8,$0,$L1066
	nop
	lw	s9,%gp_rel(inptr)($28)
	lw	s10,%gp_rel(insize)($28)
	nop
	sltu	s11,s9,s10
	beq	s11,$0,$L1067
	nop
	lui	s12,%hi(inbuf)
	addiu	s13,s12,%lo(inbuf)
	addu	s14,s9,s13
	lbu	s15,0(s14)
	addiu	s16,s9,1
	sw	s16,%gp_rel(inptr)($28)
$L1068:
	or	s17,s15,s7
	andi	s18,s17,0x1
	sw	s18,0(s6)
	srl	s19,s17,1
	li	s20,5			# 0x5
$L1069:
	andi	s21,s19,0x3
	srl	s22,s19,2
	sw	s22,%gp_rel(bb)($28)
	sw	s20,%gp_rel(bk)($28)
	li	s23,2			# 0x2
	beq	s21,s23,$L1078
	nop
	beq	s21,$0,$L1079
	nop
	li	s24,1			# 0x1
	beq	s21,s24,$L1075
	nop
	li	s25,2			# 0x2
	addiu	$sp,$sp,32
	move	$2,s25
	j	s5
	nop
$L1067:
	move	s26,$0
	move	$4,s26
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	fill_inbuf
	nop
	move	s27,$2
	andi	s15,s27,0x00ff
	j	$L1068
	nop
$L1079:
	addiu	$sp,$sp,32
	j	inflate_stored
	nop
$L1078:
	addiu	$sp,$sp,32
	j	inflate_dynamic
	nop
$L1075:
	addiu	$sp,$sp,32
	j	inflate_fixed
	nop
$L1066:
	andi	s28,s7,0x1
	sw	s28,0(s1)
	srl	s19,s7,1
	addiu	s29,s8,-1
	sltu	s30,s29,2
	beq	s30,$0,$L1080
	nop
	lw	s31,%gp_rel(inptr)($28)
	lw	s32,%gp_rel(insize)($28)
	nop
	sltu	s33,s31,s32
	beq	s33,$0,$L1071
	nop
	lui	s34,%hi(inbuf)
	addiu	s35,s34,%lo(inbuf)
	addu	s36,s31,s35
	lbu	s37,0(s36)
	addiu	s38,s31,1
	sw	s38,%gp_rel(inptr)($28)
$L1072:
	sll	s39,s37,s29
	or	s19,s19,s39
	addiu	s40,s29,6
	li	s41,2			# 0x2
	subu	s42,s41,s8
	srl	s43,s42,3
	sll	s44,s43,3
	addu	s20,s40,s44
	j	$L1069
	nop
$L1071:
	move	s45,$0
	move	$4,s45
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	fill_inbuf
	nop
	move	s46,$2
	andi	s37,s46,0x00ff
	j	$L1072
	nop
$L1080:
	addiu	s20,s8,-3
	j	$L1069
	nop
	.set	macro
	.set	reorder
	.end	inflate_block
	.size	inflate_block, .-inflate_block
	.align	2
	.globl	inflate
	.set	nomips16
	.ent	inflate
inflate:
	.frame	$sp,40,$31		# vars= 8, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$5
	move	s2,$6
	move	s3,$7
	move	s4,$31
	addiu	$sp,$sp,-40
	sw	$0,%gp_rel(outcnt)($28)
	sw	$0,%gp_rel(bk)($28)
	sw	$0,%gp_rel(bb)($28)
	addiu	s5,$sp,16
$L1083:
	sw	$0,%gp_rel(hufts)($28)
	move	s6,s5
	move	$4,s6
	move	$5,s1
	move	$6,s2
	move	$7,s3
	jal	inflate_block
	nop
	move	s7,$2
	move	s8,s7
	bne	s7,$0,$L1082
	nop
	lw	s9,16($sp)
	nop
	beq	s9,$0,$L1083
	nop
	lw	s10,%gp_rel(bk)($28)
	nop
	sltu	s11,s10,8
	bne	s11,$0,$L1084
	nop
	addiu	s12,s10,-8
	lw	s13,%gp_rel(inptr)($28)
	nop
	addiu	s14,s13,-1
	srl	s15,s12,3
	subu	s16,s14,s15
	sw	s16,%gp_rel(inptr)($28)
	andi	s17,s12,0x7
	sw	s17,%gp_rel(bk)($28)
$L1084:
	move	$4,s11
	move	$5,s12
	move	$6,s16
	move	$7,s14
	jal	flush_window
	nop
$L1082:
	move	s18,s8
	addiu	$sp,$sp,40
	move	$2,s18
	j	s4
	nop
	.set	macro
	.set	reorder
	.end	inflate
	.size	inflate, .-inflate
	.globl	mask_bits
	.data
	.align	2
	.type	mask_bits, @object
	.size	mask_bits, 34
mask_bits:
	.half	0
	.half	1
	.half	3
	.half	7
	.half	15
	.half	31
	.half	63
	.half	127
	.half	255
	.half	511
	.half	1023
	.half	2047
	.half	4095
	.half	8191
	.half	16383
	.half	32767
	.half	-1
	.globl	lbits
	.section	.sdata,"aw",@progbits
	.align	2
	.type	lbits, @object
	.size	lbits, 4
lbits:
	.word	9
	.globl	dbits
	.align	2
	.type	dbits, @object
	.size	dbits, 4
dbits:
	.word	6
	.rdata
	.align	2
	.type	border, @object
	.size	border, 76
border:
	.word	16
	.word	17
	.word	18
	.word	0
	.word	8
	.word	7
	.word	9
	.word	6
	.word	10
	.word	5
	.word	11
	.word	4
	.word	12
	.word	3
	.word	13
	.word	2
	.word	14
	.word	1
	.word	15
	.data
	.align	2
	.type	cplens, @object
	.size	cplens, 62
cplens:
	.half	3
	.half	4
	.half	5
	.half	6
	.half	7
	.half	8
	.half	9
	.half	10
	.half	11
	.half	13
	.half	15
	.half	17
	.half	19
	.half	23
	.half	27
	.half	31
	.half	35
	.half	43
	.half	51
	.half	59
	.half	67
	.half	83
	.half	99
	.half	115
	.half	131
	.half	163
	.half	195
	.half	227
	.half	258
	.half	0
	.half	0
	.align	2
	.type	cplext, @object
	.size	cplext, 62
cplext:
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	0
	.half	1
	.half	1
	.half	1
	.half	1
	.half	2
	.half	2
	.half	2
	.half	2
	.half	3
	.half	3
	.half	3
	.half	3
	.half	4
	.half	4
	.half	4
	.half	4
	.half	5
	.half	5
	.half	5
	.half	5
	.half	0
	.half	99
	.half	99
	.align	2
	.type	cpdist, @object
	.size	cpdist, 60
cpdist:
	.half	1
	.half	2
	.half	3
	.half	4
	.half	5
	.half	7
	.half	9
	.half	13
	.half	17
	.half	25
	.half	33
	.half	49
	.half	65
	.half	97
	.half	129
	.half	193
	.half	257
	.half	385
	.half	513
	.half	769
	.half	1025
	.half	1537
	.half	2049
	.half	3073
	.half	4097
	.half	6145
	.half	8193
	.half	12289
	.half	16385
	.half	24577
	.align	2
	.type	cpdext, @object
	.size	cpdext, 60
cpdext:
	.half	0
	.half	0
	.half	0
	.half	0
	.half	1
	.half	1
	.half	2
	.half	2
	.half	3
	.half	3
	.half	4
	.half	4
	.half	5
	.half	5
	.half	6
	.half	6
	.half	7
	.half	7
	.half	8
	.half	8
	.half	9
	.half	9
	.half	10
	.half	10
	.half	11
	.half	11
	.half	12
	.half	12
	.half	13
	.half	13
	.comm	bb,4,4
	.comm	bk,4,4
	.comm	hufts,4,4
	.ident	"GCC: (GNU) 4.3.0"
