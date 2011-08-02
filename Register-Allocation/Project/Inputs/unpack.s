	.file	1 "unpack.c"
	.section .mdebug.abi32
	.previous
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC0:
	.ascii	"invalid compressed data -- Huffman code > 32 bits\000"
	.align	2
$LC1:
	.ascii	"too many leaves in Huffman tree\000"
	.align	2
$LC2:
	.ascii	"invalid compressed data--length error\000"
	.text
	.align	2
	.globl	unpack
	.set	nomips16
	.ent	unpack
unpack:
	.frame	$sp,64,$31		# vars= 8, regs= 10/0, args= 16, gp= 0
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
	addiu	$sp,$sp,-64
	sw	s1,%gp_rel(ifd)($28)
	sw	s2,%gp_rel(ofd)($28)
	sw	$0,%gp_rel(orig_len)($28)
	lw	s7,%gp_rel(inptr)($28)
	lw	s8,%gp_rel(insize)($28)
	nop
	sltu	s9,s7,s8
	beq	s9,$0,$L168
	nop
	lui	s10,%hi(inbuf)
	addiu	s11,s10,%lo(inbuf)
	addu	s12,s7,s11
	lbu	s13,0(s12)
	addiu	s14,s7,1
	sw	s14,%gp_rel(inptr)($28)
$L3:
	sw	s13,%gp_rel(orig_len)($28)
	lw	s15,%gp_rel(inptr)($28)
	nop
	sltu	s16,s15,s8
	beq	s16,$0,$L169
	nop
	lui	s17,%hi(inbuf)
	addiu	s18,s17,%lo(inbuf)
	addu	s19,s15,s18
	lbu	s20,0(s19)
	addiu	s21,s15,1
	sw	s21,%gp_rel(inptr)($28)
$L5:
	sll	s22,s13,8
	or	s23,s20,s22
	sw	s23,%gp_rel(orig_len)($28)
	lw	s24,%gp_rel(inptr)($28)
	nop
	sltu	s25,s24,s8
	beq	s25,$0,$L170
	nop
	lui	s26,%hi(inbuf)
	addiu	s27,s26,%lo(inbuf)
	addu	s28,s24,s27
	lbu	s29,0(s28)
	addiu	s30,s24,1
	sw	s30,%gp_rel(inptr)($28)
$L7:
	sll	s31,s23,8
	or	s32,s29,s31
	sw	s32,%gp_rel(orig_len)($28)
	lw	s33,%gp_rel(inptr)($28)
	nop
	sltu	s34,s33,s8
	beq	s34,$0,$L8
	nop
	lui	s35,%hi(inbuf)
	addiu	s36,s35,%lo(inbuf)
	addu	s37,s33,s36
	lbu	s38,0(s37)
	addiu	s39,s33,1
	sw	s39,%gp_rel(inptr)($28)
$L9:
	sll	s40,s32,8
	or	s41,s38,s40
	sw	s41,%gp_rel(orig_len)($28)
	lw	s42,%gp_rel(inptr)($28)
	nop
	sltu	s43,s42,s8
	beq	s43,$0,$L10
	nop
	lui	s44,%hi(inbuf)
	addiu	s45,s44,%lo(inbuf)
	addu	s46,s42,s45
	lbu	s47,0(s46)
	addiu	s48,s42,1
	sw	s48,%gp_rel(inptr)($28)
$L11:
	sw	s47,%gp_rel(max_len)($28)
	slt	s49,s47,26
	bne	s49,$0,$L12
	nop
	lui	s50,%hi($LC0)
	addiu	s51,s50,%lo($LC0)
	move	$4,s51
	move	$5,s48
	move	$6,s45
	move	$7,s44
	jal	error
	nop
$L12:
	lw	s52,%gp_rel(max_len)($28)
	nop
	blez	s52,$L13
	nop
	lui	s53,%hi(leaves+4)
	addiu	s54,s53,%lo(leaves+4)
	move	s55,s54
	li	s56,1			# 0x1
	move	s57,$0
	lui	s58,%hi(inbuf)
	addiu	s59,s58,%lo(inbuf)
	j	$L16
	nop
$L172:
	addu	s61,s60,s59
	lbu	s62,0(s61)
	addiu	s63,s60,1
	sw	s63,%gp_rel(inptr)($28)
	sw	s62,0(s55)
	addu	s57,s57,s62
	addiu	s56,s56,1
	addiu	s55,s55,4
	slt	s64,s52,s56
	bne	s64,$0,$L171
	nop
$L16:
	lw	s60,%gp_rel(inptr)($28)
	lw	s65,%gp_rel(insize)($28)
	nop
	sltu	s66,s60,s65
	bne	s66,$0,$L172
	nop
	move	s67,$0
	move	$4,s67
	move	$5,s48
	move	$6,s45
	move	$7,s52
	jal	fill_inbuf
	nop
	move	s68,$2
	move	s69,s68
	lw	s52,%gp_rel(max_len)($28)
	sw	s69,0(s55)
	addu	s57,s57,s69
	addiu	s56,s56,1
	addiu	s55,s55,4
	slt	s70,s52,s56
	beq	s70,$0,$L16
	nop
$L171:
	slt	s71,s57,257
	bne	s71,$0,$L17
	nop
	lui	s72,%hi($LC1)
	addiu	s73,s72,%lo($LC1)
	move	$4,s73
	move	$5,s48
	move	$6,s45
	move	$7,s52
	jal	error
	nop
	lw	s52,%gp_rel(max_len)($28)
	nop
$L17:
	sll	s74,s52,2
	lui	s75,%hi(leaves)
	addiu	s76,s75,%lo(leaves)
	addu	s77,s74,s76
	lw	s78,0(s77)
	nop
	addiu	s79,s78,1
	sw	s79,0(s77)
	blez	s52,$L18
	nop
	lui	s80,%hi(lit_base+4)
	addiu	s81,s80,%lo(lit_base+4)
	move	s82,s54
	li	s83,1			# 0x1
	move	s84,$0
	lui	s85,%hi(inbuf)
	addiu	s86,s85,%lo(inbuf)
$L23:
	sw	s84,0(s81)
	lw	s87,0(s82)
	nop
	blez	s87,$L19
	nop
	lui	s88,%hi(literal)
	addiu	s89,s88,%lo(literal)
	addu	s90,s89,s84
	addiu	s91,s87,-1
	andi	s92,s91,0x3
	lw	s93,%gp_rel(inptr)($28)
	lw	s94,%gp_rel(insize)($28)
	nop
	sltu	s95,s93,s94
	beq	s95,$0,$L173
	nop
	addu	s96,s93,s86
	lbu	s97,0(s96)
	addiu	s98,s93,1
	sw	s98,%gp_rel(inptr)($28)
$L154:
	sb	s97,0(s90)
	addiu	s99,s87,-1
	addiu	s100,s90,1
	blez	s99,$L155
	nop
	beq	s92,$0,$L22
	nop
	li	s101,1			# 0x1
	beq	s92,s101,$L147
	nop
	li	s102,2			# 0x2
	beq	s92,s102,$L148
	nop
	lw	s103,%gp_rel(inptr)($28)
	lw	s104,%gp_rel(insize)($28)
	nop
	sltu	s52,s103,s104
	beq	s52,$0,$L174
	nop
	addu	s105,s103,s86
	lbu	s106,0(s105)
	addiu	s107,s103,1
	sw	s107,%gp_rel(inptr)($28)
$L157:
	sb	s106,1(s90)
	addiu	s99,s99,-1
	addiu	s100,s100,1
$L148:
	lw	s108,%gp_rel(inptr)($28)
	lw	s109,%gp_rel(insize)($28)
	nop
	sltu	s110,s108,s109
	beq	s110,$0,$L175
	nop
	addu	s91,s108,s86
	lbu	s111,0(s91)
	addiu	s112,s108,1
	sw	s112,%gp_rel(inptr)($28)
$L159:
	sb	s111,0(s100)
	addiu	s99,s99,-1
	addiu	s100,s100,1
$L147:
	lw	s113,%gp_rel(inptr)($28)
	lw	s114,%gp_rel(insize)($28)
	nop
	sltu	s115,s113,s114
	beq	s115,$0,$L176
	nop
	addu	s116,s113,s86
	lbu	s117,0(s116)
	addiu	s118,s113,1
	sw	s118,%gp_rel(inptr)($28)
$L161:
	sb	s117,0(s100)
	addiu	s99,s99,-1
	addiu	s100,s100,1
	bgtz	s99,$L22
	nop
	j	$L155
	nop
$L180:
	addu	s120,s119,s86
	lbu	s121,0(s120)
	addiu	s122,s119,1
	sw	s122,%gp_rel(inptr)($28)
	move	s123,s122
	sb	s121,0(s100)
	addiu	s124,s99,-1
	addiu	s125,s100,1
	lw	s126,%gp_rel(insize)($28)
	nop
	sltu	s127,s123,s126
	beq	s127,$0,$L177
	nop
$L150:
	addu	s128,s123,s86
	lbu	s129,0(s128)
	addiu	s130,s123,1
	sw	s130,%gp_rel(inptr)($28)
	move	s131,s130
	sb	s129,0(s125)
	lw	s96,%gp_rel(insize)($28)
	nop
	sltu	s132,s131,s96
	beq	s132,$0,$L178
	nop
$L163:
	addu	s133,s131,s86
	lbu	s134,0(s133)
	addiu	s135,s131,1
	sw	s135,%gp_rel(inptr)($28)
	move	s136,s135
	sb	s134,1(s125)
	lw	s137,%gp_rel(insize)($28)
	nop
	sltu	s138,s136,s137
	beq	s138,$0,$L179
	nop
$L165:
	addu	s139,s136,s86
	lbu	s140,0(s139)
	addiu	s141,s136,1
	sw	s141,%gp_rel(inptr)($28)
	sb	s140,2(s125)
	addiu	s99,s124,-3
	addiu	s100,s125,3
	blez	s99,$L155
	nop
$L22:
	lw	s119,%gp_rel(inptr)($28)
	lw	s142,%gp_rel(insize)($28)
	nop
	sltu	s143,s119,s142
	bne	s143,$0,$L180
	nop
	move	s144,$0
	move	$4,s144
	move	$5,s91
	move	$6,s96
	move	$7,s143
	jal	fill_inbuf
	nop
	move	s145,$2
	andi	s146,s145,0x00ff
	lw	s123,%gp_rel(inptr)($28)
	sb	s146,0(s100)
	addiu	s124,s99,-1
	addiu	s125,s100,1
	lw	s147,%gp_rel(insize)($28)
	nop
	sltu	s148,s123,s147
	bne	s148,$0,$L150
	nop
$L177:
	move	s149,$0
	move	$4,s149
	move	$5,s91
	move	$6,s96
	move	$7,s143
	jal	fill_inbuf
	nop
	move	s150,$2
	andi	s151,s150,0x00ff
	lw	s131,%gp_rel(inptr)($28)
	sb	s151,0(s125)
	lw	s96,%gp_rel(insize)($28)
	nop
	sltu	s152,s131,s96
	bne	s152,$0,$L163
	nop
$L178:
	move	s153,$0
	move	$4,s153
	move	$5,s91
	move	$6,s96
	move	$7,s143
	jal	fill_inbuf
	nop
	move	s154,$2
	andi	s155,s154,0x00ff
	lw	s136,%gp_rel(inptr)($28)
	sb	s155,1(s125)
	lw	s156,%gp_rel(insize)($28)
	nop
	sltu	s138,s136,s156
	bne	s138,$0,$L165
	nop
$L179:
	move	s157,$0
	move	$4,s157
	move	$5,s91
	move	$6,s96
	move	$7,s138
	jal	fill_inbuf
	nop
	move	s158,$2
	andi	s159,s158,0x00ff
	sb	s159,2(s125)
	addiu	s99,s124,-3
	addiu	s100,s125,3
	bgtz	s99,$L22
	nop
$L155:
	addu	s84,s84,s87
	lw	s52,%gp_rel(max_len)($28)
$L19:
	addiu	s83,s83,1
	addiu	s81,s81,4
	addiu	s82,s82,4
	slt	s160,s52,s83
	beq	s160,$0,$L23
	nop
	sll	s161,s52,2
	addu	s162,s161,s76
	lw	s79,0(s162)
	nop
	addiu	s163,s79,1
	sw	s163,0(s162)
	blez	s52,$L24
	nop
	lui	s164,%hi(parents)
	addiu	s165,s164,%lo(parents)
	addu	s166,s165,s161
	lui	s167,%hi(lit_base)
	addiu	s168,s167,%lo(lit_base)
	addu	s169,s168,s161
	addiu	s170,s161,-4
	srl	s171,s170,2
	andi	s172,s171,0x3
	sw	$0,0(s166)
	addiu	s173,s166,-4
	addiu	s174,s169,-4
	addiu	s175,s162,-4
	beq	s174,s168,$L24
	nop
	beq	s172,$0,$L25
	nop
	li	s176,1			# 0x1
	beq	s172,s176,$L144
	nop
	li	s177,2			# 0x2
	beq	s172,s177,$L145
	nop
	sra	s178,s163,1
	sw	s178,-4(s166)
	lw	s179,-4(s169)
	nop
	subu	s180,s179,s178
	sw	s180,-4(s169)
	lw	s181,-4(s162)
	nop
	addu	s163,s178,s181
	addiu	s173,s166,-8
	addiu	s174,s169,-8
	addiu	s175,s162,-8
$L145:
	sra	s182,s163,1
	sw	s182,0(s173)
	lw	s183,0(s174)
	nop
	subu	s184,s183,s182
	sw	s184,0(s174)
	lw	s185,0(s175)
	nop
	addu	s163,s182,s185
	addiu	s173,s173,-4
	addiu	s174,s174,-4
	addiu	s175,s175,-4
$L144:
	sra	s186,s163,1
	sw	s186,0(s173)
	lw	s187,0(s174)
	nop
	subu	s188,s187,s186
	sw	s188,0(s174)
	lw	s189,0(s175)
	nop
	addu	s163,s186,s189
	addiu	s173,s173,-4
	addiu	s174,s174,-4
	addiu	s175,s175,-4
	beq	s174,s168,$L24
	nop
$L25:
	sra	s190,s163,1
	sw	s190,0(s173)
	lw	s191,0(s174)
	nop
	subu	s192,s191,s190
	sw	s192,0(s174)
	lw	s193,0(s175)
	nop
	addu	s194,s190,s193
	sra	s195,s194,1
	sw	s195,-4(s173)
	lw	s196,-4(s174)
	nop
	subu	s197,s196,s195
	sw	s197,-4(s174)
	lw	s198,-4(s175)
	nop
	addu	s199,s195,s198
	sra	s200,s199,1
	sw	s200,-8(s173)
	lw	s201,-8(s174)
	nop
	subu	s202,s201,s200
	sw	s202,-8(s174)
	lw	s203,-8(s175)
	nop
	addu	s204,s200,s203
	sra	s205,s204,1
	sw	s205,-12(s173)
	lw	s206,-12(s174)
	nop
	subu	s207,s206,s205
	sw	s207,-12(s174)
	lw	s208,-12(s175)
	nop
	addu	s163,s205,s208
	addiu	s173,s173,-16
	addiu	s174,s174,-16
	addiu	s175,s175,-16
	bne	s174,s168,$L25
	nop
$L24:
	move	s209,s52
	slt	s210,s52,13
	bne	s210,$0,$L26
	nop
	li	s209,12			# 0xc
$L26:
	sw	s209,%gp_rel(peek_bits)($28)
	li	s211,1			# 0x1
	sll	s212,s211,s209
	lui	s213,%hi(outbuf)
	addiu	s214,s213,%lo(outbuf)
	addu	s215,s214,s212
	blez	s209,$L27
	nop
	lui	s216,%hi(leaves+4)
	addiu	s217,s216,%lo(leaves+4)
	li	s218,1			# 0x1
$L30:
	subu	s219,s209,s218
	lw	s220,0(s217)
	nop
	sll	s221,s220,s219
	beq	s221,$0,$L28
	nop
	andi	s222,s218,0x00ff
	subu	s223,s215,s221
	subu	s224,s223,s215
	nor	s225,$0,s224
	andi	s213,s225,0x7
	addiu	s226,s215,-1
	sb	s222,-1(s215)
	beq	s226,s223,$L151
	nop
	beq	s213,$0,$L29
	nop
	li	s227,1			# 0x1
	beq	s213,s227,$L138
	nop
	li	s228,2			# 0x2
	beq	s213,s228,$L139
	nop
	li	s229,3			# 0x3
	beq	s213,s229,$L140
	nop
	li	s230,4			# 0x4
	beq	s213,s230,$L141
	nop
	li	s231,5			# 0x5
	beq	s213,s231,$L142
	nop
	li	s232,6			# 0x6
	beq	s213,s232,$L143
	nop
	addiu	s226,s215,-2
	sb	s222,-2(s215)
$L143:
	addiu	s226,s226,-1
	sb	s222,0(s226)
$L142:
	addiu	s226,s226,-1
	sb	s222,0(s226)
$L141:
	addiu	s226,s226,-1
	sb	s222,0(s226)
$L140:
	addiu	s226,s226,-1
	sb	s222,0(s226)
$L139:
	addiu	s226,s226,-1
	sb	s222,0(s226)
$L138:
	addiu	s226,s226,-1
	sb	s222,0(s226)
	beq	s226,s223,$L151
	nop
$L29:
	sb	s222,-1(s226)
	sb	s222,-2(s226)
	sb	s222,-3(s226)
	sb	s222,-4(s226)
	sb	s222,-5(s226)
	sb	s222,-6(s226)
	sb	s222,-7(s226)
	addiu	s226,s226,-8
	sb	s222,0(s226)
	bne	s226,s223,$L29
	nop
$L151:
	subu	s215,s215,s221
$L28:
	addiu	s218,s218,1
	addiu	s217,s217,4
	slt	s233,s209,s218
	beq	s233,$0,$L30
	nop
$L27:
	sltu	s234,s214,s215
	beq	s234,$0,$L31
	nop
	nor	s235,$0,s214
	addu	s236,s215,s235
	andi	s237,s236,0x7
	addiu	s238,s215,-1
	sb	$0,-1(s215)
	sltu	s239,s214,s238
	beq	s239,$0,$L31
	nop
	beq	s237,$0,$L50
	nop
	li	s240,1			# 0x1
	beq	s237,s240,$L132
	nop
	li	s241,2			# 0x2
	beq	s237,s241,$L133
	nop
	li	s242,3			# 0x3
	beq	s237,s242,$L134
	nop
	li	s213,4			# 0x4
	beq	s237,s213,$L135
	nop
	li	s243,5			# 0x5
	beq	s237,s243,$L136
	nop
	li	s244,6			# 0x6
	beq	s237,s244,$L137
	nop
	addiu	s238,s215,-2
	sb	$0,-2(s215)
$L137:
	addiu	s238,s238,-1
	sb	$0,0(s238)
$L136:
	addiu	s238,s238,-1
	sb	$0,0(s238)
$L135:
	addiu	s238,s238,-1
	sb	$0,0(s238)
$L134:
	addiu	s238,s238,-1
	sb	$0,0(s238)
$L133:
	addiu	s238,s238,-1
	sb	$0,0(s238)
$L132:
	addiu	s238,s238,-1
	sb	$0,0(s238)
	sltu	s215,s214,s238
	beq	s215,$0,$L31
	nop
$L50:
	sb	$0,-1(s238)
	sb	$0,-2(s238)
	sb	$0,-3(s238)
	sb	$0,-4(s238)
	sb	$0,-5(s238)
	sb	$0,-6(s238)
	sb	$0,-7(s238)
	addiu	s238,s238,-8
	sb	$0,0(s238)
	sltu	s245,s214,s238
	bne	s245,$0,$L50
	nop
$L31:
	sw	$0,%gp_rel(valid)($28)
	sw	$0,%gp_rel(bitbuf)($28)
	addiu	s246,s212,-1
	move	s247,$0
	move	s248,$0
	lw	s249,%gp_rel(peek_bits)($28)
	lui	s250,%hi(inbuf)
	addiu	s251,s250,%lo(inbuf)
$L152:
	slt	s252,s248,s249
	bne	s252,$0,$L36
	nop
$L183:
	subu	s253,s248,s249
	srl	s254,s247,s253
	and	s255,s246,s254
	addu	s256,s255,s214
	lbu	s257,0(s256)
	nop
	beq	s257,$0,$L37
	nop
	subu	s258,s249,s257
	srl	s254,s255,s258
$L38:
	beq	s254,s79,$L181
	nop
$L44:
	lw	s259,%gp_rel(outcnt)($28)
	lui	s260,%hi(window)
	addiu	s261,s260,%lo(window)
	addu	s262,s259,s261
	sll	s263,s257,2
	lui	s264,%hi(lit_base)
	addiu	s265,s264,%lo(lit_base)
	addu	s266,s263,s265
	lw	s267,0(s266)
	nop
	addu	s268,s267,s254
	lui	s269,%hi(literal)
	addiu	s270,s269,%lo(literal)
	addu	s215,s268,s270
	lbu	s213,0(s215)
	nop
	sb	s213,0(s262)
	addiu	s271,s259,1
	sw	s271,%gp_rel(outcnt)($28)
	li	s272,32768			# 0x8000
	beq	s271,s272,$L182
	nop
$L46:
	subu	s248,s248,s257
	sw	s248,%gp_rel(valid)($28)
	lw	s249,%gp_rel(peek_bits)($28)
	nop
	slt	s273,s248,s249
	beq	s273,$0,$L183
	nop
$L36:
	lw	s274,%gp_rel(inptr)($28)
	lw	s275,%gp_rel(insize)($28)
	nop
	sltu	s276,s274,s275
	beq	s276,$0,$L34
	nop
	addu	s277,s274,s251
	lbu	s213,0(s277)
	addiu	s278,s274,1
	sw	s278,%gp_rel(inptr)($28)
$L35:
	sll	s279,s247,8
	or	s280,s213,s279
	sw	s280,%gp_rel(bitbuf)($28)
	addiu	s248,s248,8
	sw	s248,%gp_rel(valid)($28)
	move	s247,s280
	j	$L152
	nop
$L173:
	move	s281,$0
	move	$4,s281
	move	$5,s91
	move	$6,s88
	move	$7,s52
	jal	fill_inbuf
	nop
	move	s282,$2
	andi	s97,s282,0x00ff
	j	$L154
	nop
$L175:
	move	s283,$0
	move	$4,s283
	move	$5,s91
	move	$6,s96
	move	$7,s52
	jal	fill_inbuf
	nop
	move	s284,$2
	andi	s111,s284,0x00ff
	j	$L159
	nop
$L176:
	move	s285,$0
	move	$4,s285
	move	$5,s91
	move	$6,s96
	move	$7,s52
	jal	fill_inbuf
	nop
	move	s286,$2
	andi	s117,s286,0x00ff
	j	$L161
	nop
$L174:
	move	s287,$0
	move	$4,s287
	move	$5,s91
	move	$6,s96
	move	$7,s52
	jal	fill_inbuf
	nop
	move	s288,$2
	andi	s106,s288,0x00ff
	j	$L157
	nop
$L181:
	lw	s289,%gp_rel(max_len)($28)
	nop
	bne	s257,s289,$L44
	nop
	move	$4,s249
	move	$5,s248
	move	$6,s254
	move	$7,s253
	jal	flush_window
	nop
	lw	s290,%gp_rel(orig_len)($28)
	lw	s291,%gp_rel(bytes_out)($28)
	nop
	beq	s291,s290,$L47
	nop
	lui	s292,%hi($LC2)
	addiu	s293,s292,%lo($LC2)
	move	$4,s293
	move	$5,s292
	jal	error
	nop
$L47:
	move	s294,$0
	addiu	$sp,$sp,64
	move	$2,s294
	j	s6
	nop
$L34:
	move	s295,$0
	move	$4,s295
	move	$5,s248
	move	$6,s213
	move	$7,s215
	jal	fill_inbuf
	nop
	move	s296,$2
	move	s213,s296
	lw	s248,%gp_rel(valid)($28)
	lw	s249,%gp_rel(peek_bits)($28)
	j	$L35
	nop
$L37:
	addiu	s297,s249,1
	sll	s298,s297,2
	lui	s299,%hi(parents)
	addiu	s300,s299,%lo(parents)
	addu	s301,s300,s298
	move	s302,s246
$L43:
	move	s257,s297
	sll	s303,s302,1
	addiu	s302,s303,1
	slt	s249,s248,s297
	bne	s249,$0,$L153
	nop
	j	$L39
	nop
$L185:
	addu	s305,s304,s251
	lbu	s249,0(s305)
	addiu	s306,s304,1
	sw	s306,%gp_rel(inptr)($28)
	sll	s307,s247,8
	or	s308,s249,s307
	sw	s308,%gp_rel(bitbuf)($28)
	addiu	s248,s248,8
	sw	s248,%gp_rel(valid)($28)
	slt	s309,s248,s297
	beq	s309,$0,$L184
	nop
$L49:
	move	s247,s308
$L153:
	lw	s304,%gp_rel(inptr)($28)
	lw	s310,%gp_rel(insize)($28)
	nop
	sltu	s311,s304,s310
	bne	s311,$0,$L185
	nop
	move	s312,$0
	move	$4,s312
	move	$5,s248
	move	$6,s254
	move	$7,s253
	jal	fill_inbuf
	nop
	move	s313,$2
	move	s249,s313
	lw	s314,%gp_rel(valid)($28)
	sll	s315,s247,8
	or	s308,s249,s315
	sw	s308,%gp_rel(bitbuf)($28)
	addiu	s248,s314,8
	sw	s248,%gp_rel(valid)($28)
	slt	s316,s248,s297
	bne	s316,$0,$L49
	nop
$L184:
	move	s247,s308
$L39:
	subu	s317,s248,s297
	srl	s318,s247,s317
	and	s254,s318,s302
	lw	s319,0(s301)
	addiu	s301,s301,4
	sltu	s320,s254,s319
	beq	s320,$0,$L38
	nop
	addiu	s297,s297,1
	j	$L43
	nop
$L182:
	move	$4,s270
	move	$5,s248
	move	$6,s213
	move	$7,s215
	jal	flush_window
	nop
	lw	s247,%gp_rel(bitbuf)($28)
	lw	s248,%gp_rel(valid)($28)
	j	$L46
	nop
$L10:
	move	s321,$0
	move	$4,s321
	move	$5,s8
	move	$6,s12
	move	$7,s11
	jal	fill_inbuf
	nop
	move	s322,$2
	move	s47,s322
	j	$L11
	nop
$L8:
	move	s323,$0
	move	$4,s323
	move	$5,s8
	move	$6,s12
	move	$7,s11
	jal	fill_inbuf
	nop
	move	s324,$2
	move	s38,s324
	lw	s8,%gp_rel(insize)($28)
	j	$L9
	nop
$L170:
	move	s325,$0
	move	$4,s325
	move	$5,s8
	move	$6,s12
	move	$7,s11
	jal	fill_inbuf
	nop
	move	s326,$2
	move	s29,s326
	lw	s8,%gp_rel(insize)($28)
	j	$L7
	nop
$L169:
	move	s327,$0
	move	$4,s327
	move	$5,s8
	move	$6,s12
	move	$7,s11
	jal	fill_inbuf
	nop
	move	s328,$2
	move	s20,s328
	lw	s8,%gp_rel(insize)($28)
	j	$L5
	nop
$L168:
	move	s329,$0
	move	$4,s329
	move	$5,s8
	move	$6,s3
	move	$7,s4
	jal	fill_inbuf
	nop
	move	s330,$2
	move	s13,s330
	lw	s8,%gp_rel(insize)($28)
	j	$L3
	nop
$L13:
	sll	s74,s52,2
	lui	s331,%hi(leaves)
	addiu	s76,s331,%lo(leaves)
	addu	s332,s74,s76
	lw	s333,0(s332)
	nop
	addiu	s79,s333,1
	sw	s79,0(s332)
$L18:
	addu	s334,s74,s76
	addiu	s335,s79,1
	sw	s335,0(s334)
	j	$L24
	nop
	.set	macro
	.set	reorder
	.end	unpack
	.size	unpack, .-unpack
	.local	orig_len
	.comm	orig_len,4,4
	.local	max_len
	.comm	max_len,4,4
	.local	literal
	.comm	literal,256,4
	.local	lit_base
	.comm	lit_base,104,4
	.local	leaves
	.comm	leaves,104,4
	.local	parents
	.comm	parents,104,4
	.local	peek_bits
	.comm	peek_bits,4,4
	.local	bitbuf
	.comm	bitbuf,4,4
	.local	valid
	.comm	valid,4,4
	.ident	"GCC: (GNU) 4.3.0"
