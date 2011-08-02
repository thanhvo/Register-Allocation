	.file	1 "unlzh.c"
	.section .mdebug.abi32
	.previous
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC0:
	.ascii	"Bad table\012\000"
	.text
	.align	2
	.set	nomips16
	.ent	make_table
make_table:
	.frame	$sp,168,$31		# vars= 112, regs= 9/0, args= 16, gp= 0
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$5
	move	s3,$6
	move	s4,$7
	move	s5,$31
	addiu	$sp,$sp,-168
	move	s6,s1
	move	s7,s2
	move	s8,s3
	move	s9,s4
	move	s10,$0
	move	s11,$0
	move	s12,$0
	move	s13,$0
	move	s14,$0
	move	s15,$0
	move	s16,$0
	move	s17,$0
	move	s18,$0
	beq	s1,$0,$L270
	nop
	addiu	s19,$sp,16
	addiu	s20,s1,-1
	andi	s21,s20,0x7
	lbu	s22,0(s7)
	nop
	sll	s23,s22,1
	addu	s24,s19,s23
	lhu	s25,0(s24)
	nop
	addiu	s26,s25,1
	sh	s26,0(s24)
	li	s27,1			# 0x1
	sltu	s28,s27,s6
	beq	s28,$0,$L2
	nop
	beq	s21,$0,$L3
	nop
	beq	s21,s27,$L245
	nop
	li	s29,2			# 0x2
	beq	s21,s29,$L246
	nop
	li	s30,3			# 0x3
	beq	s21,s30,$L247
	nop
	li	s31,4			# 0x4
	beq	s21,s31,$L248
	nop
	li	s32,5			# 0x5
	beq	s21,s32,$L249
	nop
	li	s33,6			# 0x6
	beq	s21,s33,$L250
	nop
	lbu	s34,1(s7)
	nop
	sll	s35,s34,1
	addu	s36,s19,s35
	lhu	s37,0(s36)
	nop
	addiu	s38,s37,1
	sh	s38,0(s36)
	li	s27,2			# 0x2
$L250:
	addu	s39,s7,s27
	lbu	s40,0(s39)
	nop
	sll	s41,s40,1
	addu	s42,s19,s41
	lhu	s43,0(s42)
	nop
	addiu	s44,s43,1
	sh	s44,0(s42)
	addiu	s27,s27,1
$L249:
	addu	s45,s7,s27
	lbu	s46,0(s45)
	nop
	sll	s47,s46,1
	addu	s48,s19,s47
	lhu	s49,0(s48)
	nop
	addiu	s50,s49,1
	sh	s50,0(s48)
	addiu	s27,s27,1
$L248:
	addu	s51,s7,s27
	lbu	s52,0(s51)
	nop
	sll	s53,s52,1
	addu	s54,s19,s53
	lhu	s55,0(s54)
	nop
	addiu	s56,s55,1
	sh	s56,0(s54)
	addiu	s27,s27,1
$L247:
	addu	s57,s7,s27
	lbu	s58,0(s57)
	nop
	sll	s59,s58,1
	addu	s60,s19,s59
	lhu	s61,0(s60)
	nop
	addiu	s62,s61,1
	sh	s62,0(s60)
	addiu	s27,s27,1
$L246:
	addu	s63,s7,s27
	lbu	s64,0(s63)
	nop
	sll	s65,s64,1
	addu	s66,s19,s65
	lhu	s67,0(s66)
	nop
	addiu	s68,s67,1
	sh	s68,0(s66)
	addiu	s27,s27,1
$L245:
	addu	s69,s7,s27
	lbu	s70,0(s69)
	nop
	sll	s71,s70,1
	addu	s72,s19,s71
	lhu	s73,0(s72)
	nop
	addiu	s74,s73,1
	sh	s74,0(s72)
	addiu	s27,s27,1
	sltu	s75,s27,s6
	beq	s75,$0,$L2
	nop
$L3:
	addu	s76,s7,s27
	lbu	s77,0(s76)
	nop
	sll	s78,s77,1
	addu	s79,s19,s78
	lhu	s80,0(s79)
	nop
	addiu	s81,s80,1
	sh	s81,0(s79)
	addu	s82,s7,s27
	lbu	s83,1(s82)
	nop
	sll	s84,s83,1
	addu	s85,s19,s84
	lhu	s86,0(s85)
	nop
	addiu	s87,s86,1
	sh	s87,0(s85)
	addu	s88,s7,s27
	lbu	s89,2(s88)
	nop
	sll	s90,s89,1
	addu	s91,s19,s90
	lhu	s92,0(s91)
	nop
	addiu	s93,s92,1
	sh	s93,0(s91)
	addu	s94,s7,s27
	lbu	s95,3(s94)
	nop
	sll	s96,s95,1
	addu	s97,s19,s96
	lhu	s98,0(s97)
	nop
	addiu	s99,s98,1
	sh	s99,0(s97)
	addu	s100,s7,s27
	lbu	s101,4(s100)
	nop
	sll	s102,s101,1
	addu	s103,s19,s102
	lhu	s104,0(s103)
	nop
	addiu	s105,s104,1
	sh	s105,0(s103)
	addu	s106,s7,s27
	lbu	s107,5(s106)
	nop
	sll	s108,s107,1
	addu	s109,s19,s108
	lhu	s110,0(s109)
	nop
	addiu	s111,s110,1
	sh	s111,0(s109)
	addu	s112,s7,s27
	lbu	s113,6(s112)
	nop
	sll	s114,s113,1
	addu	s115,s19,s114
	lhu	s116,0(s115)
	nop
	addiu	s117,s116,1
	sh	s117,0(s115)
	addu	s118,s7,s27
	lbu	s119,7(s118)
	nop
	sll	s120,s119,1
	addu	s121,s19,s120
	lhu	s122,0(s121)
	nop
	addiu	s123,s122,1
	sh	s123,0(s121)
	addiu	s27,s27,8
	sltu	s124,s27,s6
	bne	s124,$0,$L3
	nop
$L2:
	move	s125,$0
	sll	s126,s10,15
	andi	s127,s126,0xffff
	sll	s128,s11,14
	addu	s129,s127,s128
	andi	s130,s129,0xffff
	sh	s130,94($sp)
	lhu	s131,22($sp)
	nop
	sll	s132,s131,13
	addu	s133,s130,s132
	andi	s134,s133,0xffff
	sh	s134,96($sp)
	sll	s135,s12,12
	addu	s136,s134,s135
	andi	s137,s136,0xffff
	sh	s137,98($sp)
	lhu	s138,26($sp)
	nop
	sll	s139,s138,11
	addu	s140,s137,s139
	andi	s141,s140,0xffff
	sh	s141,100($sp)
	sll	s142,s13,10
	addu	s143,s141,s142
	andi	s144,s143,0xffff
	sh	s144,102($sp)
	lhu	s145,30($sp)
	nop
	sll	s146,s145,9
	addu	s147,s144,s146
	andi	s148,s147,0xffff
	sh	s148,104($sp)
	sll	s149,s14,8
	addu	s150,s148,s149
	andi	s151,s150,0xffff
	sh	s151,106($sp)
	lhu	s152,34($sp)
	nop
	sll	s153,s152,7
	addu	s154,s151,s153
	andi	s155,s154,0xffff
	sh	s155,108($sp)
	sll	s156,s15,6
	addu	s157,s155,s156
	andi	s158,s157,0xffff
	sh	s158,110($sp)
	lhu	s159,38($sp)
	nop
	sll	s160,s159,5
	addu	s161,s158,s160
	andi	s162,s161,0xffff
	sh	s162,112($sp)
	sll	s163,s16,4
	addu	s164,s162,s163
	andi	s165,s164,0xffff
	sh	s165,114($sp)
	lhu	s166,42($sp)
	nop
	sll	s167,s166,3
	addu	s168,s165,s167
	andi	s169,s168,0xffff
	sh	s169,116($sp)
	sll	s170,s17,2
	addu	s171,s169,s170
	andi	s172,s171,0xffff
	sh	s172,118($sp)
	lhu	s173,46($sp)
	nop
	sll	s174,s173,1
	addu	s175,s172,s174
	andi	s176,s175,0xffff
	sh	s176,120($sp)
	addu	s177,s176,s18
	andi	s178,s177,0xffff
	sh	s178,122($sp)
	bne	s178,$0,$L271
	nop
$L4:
	li	s179,16			# 0x10
	subu	s180,s179,s8
	beq	s8,$0,$L5
	nop
	li	s181,1			# 0x1
	addiu	s182,s8,-1
	andi	s183,s182,0x3
	sra	s184,s125,s180
	sh	s184,90($sp)
	li	s185,1			# 0x1
	sll	s186,s185,s182
	sh	s186,54($sp)
	li	s187,2			# 0x2
	addiu	s188,$sp,92
	addiu	s189,$sp,56
	sltu	s175,s8,2
	bne	s175,$0,$L7
	nop
	beq	s183,$0,$L6
	nop
	beq	s183,s181,$L243
	nop
	beq	s183,s187,$L244
	nop
	sra	s190,s127,s180
	sh	s190,92($sp)
	addiu	s191,s8,-2
	sll	s192,s181,s191
	sh	s192,56($sp)
	li	s187,3			# 0x3
	addiu	s188,$sp,94
	addiu	s189,$sp,58
$L244:
	lhu	s193,0(s188)
	nop
	sra	s194,s193,s180
	sh	s194,0(s188)
	subu	s195,s8,s187
	sll	s196,s181,s195
	sh	s196,0(s189)
	addiu	s187,s187,1
	addiu	s188,s188,2
	addiu	s189,s189,2
$L243:
	lhu	s197,0(s188)
	nop
	sra	s198,s197,s180
	sh	s198,0(s188)
	subu	s199,s8,s187
	sll	s200,s181,s199
	sh	s200,0(s189)
	addiu	s187,s187,1
	addiu	s188,s188,2
	addiu	s189,s189,2
	sltu	s201,s8,s187
	bne	s201,$0,$L268
	nop
$L6:
	lhu	s202,0(s188)
	nop
	sra	s203,s202,s180
	sh	s203,0(s188)
	subu	s204,s8,s187
	sll	s205,s181,s204
	sh	s205,0(s189)
	addiu	s206,s187,1
	lhu	s207,2(s188)
	nop
	sra	s208,s207,s180
	sh	s208,2(s188)
	subu	s209,s8,s206
	sll	s175,s181,s209
	sh	s175,2(s189)
	addiu	s210,s187,2
	lhu	s211,4(s188)
	nop
	sra	s212,s211,s180
	sh	s212,4(s188)
	subu	s213,s8,s210
	sll	s214,s181,s213
	sh	s214,4(s189)
	addiu	s215,s187,3
	lhu	s216,6(s188)
	nop
	sra	s217,s216,s180
	sh	s217,6(s188)
	subu	s218,s8,s215
	sll	s219,s181,s218
	sh	s219,6(s189)
	addiu	s187,s187,4
	addiu	s188,s188,8
	addiu	s189,s189,8
	sltu	s220,s8,s187
	beq	s220,$0,$L6
	nop
$L268:
	sltu	s221,s187,17
	beq	s221,$0,$L8
	nop
$L7:
	li	s222,16			# 0x10
	subu	s223,s222,s187
	sll	s224,s187,1
	addiu	s225,$sp,52
	addu	s226,s225,s224
	li	s227,1			# 0x1
	andi	s228,s223,0x7
	sll	s229,s227,s223
	sh	s229,0(s226)
	addiu	s230,s187,1
	addiu	s231,s223,-1
	addiu	s232,s226,2
	sltu	s233,s230,17
	beq	s233,$0,$L8
	nop
	beq	s228,$0,$L9
	nop
	beq	s228,s227,$L237
	nop
	li	s234,2			# 0x2
	beq	s228,s234,$L238
	nop
	li	s235,3			# 0x3
	beq	s228,s235,$L239
	nop
	li	s236,4			# 0x4
	beq	s228,s236,$L240
	nop
	li	s237,5			# 0x5
	beq	s228,s237,$L241
	nop
	li	s238,6			# 0x6
	beq	s228,s238,$L242
	nop
	sll	s239,s227,s231
	sh	s239,2(s226)
	addiu	s230,s187,2
	addiu	s231,s223,-2
	addiu	s232,s226,4
$L242:
	sll	s240,s227,s231
	sh	s240,0(s232)
	addiu	s230,s230,1
	addiu	s231,s231,-1
	addiu	s232,s232,2
$L241:
	sll	s241,s227,s231
	sh	s241,0(s232)
	addiu	s230,s230,1
	addiu	s231,s231,-1
	addiu	s232,s232,2
$L240:
	sll	s242,s227,s231
	sh	s242,0(s232)
	addiu	s230,s230,1
	addiu	s231,s231,-1
	addiu	s232,s232,2
$L239:
	sll	s243,s227,s231
	sh	s243,0(s232)
	addiu	s230,s230,1
	addiu	s231,s231,-1
	addiu	s232,s232,2
$L238:
	sll	s175,s227,s231
	sh	s175,0(s232)
	addiu	s230,s230,1
	addiu	s231,s231,-1
	addiu	s232,s232,2
$L237:
	sll	s244,s227,s231
	sh	s244,0(s232)
	addiu	s230,s230,1
	addiu	s231,s231,-1
	addiu	s232,s232,2
	sltu	s245,s230,17
	beq	s245,$0,$L8
	nop
$L9:
	sll	s246,s227,s231
	sh	s246,0(s232)
	addiu	s247,s231,-1
	sll	s248,s227,s247
	sh	s248,2(s232)
	addiu	s249,s231,-2
	sll	s250,s227,s249
	sh	s250,4(s232)
	addiu	s251,s231,-3
	sll	s252,s227,s251
	sh	s252,6(s232)
	addiu	s253,s231,-4
	sll	s254,s227,s253
	sh	s254,8(s232)
	addiu	s175,s231,-5
	sll	s255,s227,s175
	sh	s255,10(s232)
	addiu	s256,s231,-6
	sll	s257,s227,s256
	sh	s257,12(s232)
	addiu	s258,s231,-7
	sll	s259,s227,s258
	sh	s259,14(s232)
	addiu	s230,s230,8
	addiu	s231,s231,-8
	addiu	s232,s232,16
	sltu	s260,s230,17
	bne	s260,$0,$L9
	nop
$L8:
	addiu	s261,s8,1
	sll	s262,s261,1
	addu	s263,s19,s262
	lhu	s264,72(s263)
	nop
	sra	s265,s264,s180
	beq	s265,$0,$L10
	nop
	li	s266,1			# 0x1
	sll	s267,s266,s8
	beq	s265,s267,$L10
	nop
	subu	s268,s267,s265
	sll	s269,s265,1
	addu	s270,s9,s269
	andi	s271,s270,0x3
	srl	s272,s271,1
	sltu	s273,s268,s272
	beq	s273,$0,$L11
	nop
	move	s272,s268
$L11:
	beq	s272,$0,$L12
	nop
	sh	$0,0(s270)
	addiu	s265,s265,1
	beq	s268,s272,$L10
	nop
$L12:
	subu	s274,s268,s272
	srl	s275,s274,1
	sll	s276,s275,1
	beq	s276,$0,$L13
	nop
	sll	s277,s272,1
	addu	s278,s270,s277
	addiu	s175,s275,-1
	andi	s279,s175,0x7
	sw	$0,0(s278)
	li	s280,1			# 0x1
	addiu	s281,s278,4
	sltu	s282,s280,s275
	beq	s282,$0,$L252
	nop
	beq	s279,$0,$L14
	nop
	beq	s279,s280,$L231
	nop
	li	s175,2			# 0x2
	beq	s279,s175,$L232
	nop
	li	s283,3			# 0x3
	beq	s279,s283,$L233
	nop
	li	s284,4			# 0x4
	beq	s279,s284,$L234
	nop
	li	s285,5			# 0x5
	beq	s279,s285,$L235
	nop
	li	s286,6			# 0x6
	beq	s279,s286,$L236
	nop
	sw	$0,4(s278)
	li	s280,2			# 0x2
	addiu	s281,s278,8
$L236:
	sw	$0,0(s281)
	addiu	s280,s280,1
	addiu	s281,s281,4
$L235:
	sw	$0,0(s281)
	addiu	s280,s280,1
	addiu	s281,s281,4
$L234:
	sw	$0,0(s281)
	addiu	s280,s280,1
	addiu	s281,s281,4
$L233:
	sw	$0,0(s281)
	addiu	s280,s280,1
	addiu	s281,s281,4
$L232:
	sw	$0,0(s281)
	addiu	s280,s280,1
	addiu	s281,s281,4
$L231:
	sw	$0,0(s281)
	addiu	s280,s280,1
	addiu	s281,s281,4
	sltu	s287,s280,s275
	beq	s287,$0,$L252
	nop
$L14:
	sw	$0,0(s281)
	sw	$0,4(s281)
	sw	$0,8(s281)
	sw	$0,12(s281)
	sw	$0,16(s281)
	sw	$0,20(s281)
	sw	$0,24(s281)
	sw	$0,28(s281)
	addiu	s280,s280,8
	addiu	s281,s281,32
	sltu	s288,s280,s275
	bne	s288,$0,$L14
	nop
$L252:
	addu	s265,s265,s276
	beq	s274,s276,$L10
	nop
$L13:
	sll	s289,s265,1
	addu	s290,s9,s289
	subu	s291,s265,s267
	nor	s292,$0,s291
	andi	s293,s292,0x7
	sh	$0,0(s290)
	addiu	s294,s265,1
	addiu	s295,s290,2
	beq	s267,s294,$L10
	nop
	beq	s293,$0,$L15
	nop
	li	s296,1			# 0x1
	beq	s293,s296,$L225
	nop
	li	s297,2			# 0x2
	beq	s293,s297,$L226
	nop
	li	s298,3			# 0x3
	beq	s293,s298,$L227
	nop
	li	s299,4			# 0x4
	beq	s293,s299,$L228
	nop
	li	s300,5			# 0x5
	beq	s293,s300,$L229
	nop
	li	s301,6			# 0x6
	beq	s293,s301,$L230
	nop
	sh	$0,2(s290)
	addiu	s294,s265,2
	addiu	s295,s290,4
$L230:
	sh	$0,0(s295)
	addiu	s294,s294,1
	addiu	s295,s295,2
$L229:
	sh	$0,0(s295)
	addiu	s294,s294,1
	addiu	s295,s295,2
$L228:
	sh	$0,0(s295)
	addiu	s294,s294,1
	addiu	s295,s295,2
$L227:
	sh	$0,0(s295)
	addiu	s294,s294,1
	addiu	s295,s295,2
$L226:
	sh	$0,0(s295)
	addiu	s294,s294,1
	addiu	s295,s295,2
$L225:
	sh	$0,0(s295)
	addiu	s294,s294,1
	addiu	s295,s295,2
	beq	s267,s294,$L10
	nop
$L15:
	sh	$0,0(s295)
	sh	$0,2(s295)
	sh	$0,4(s295)
	sh	$0,6(s295)
	sh	$0,8(s295)
	sh	$0,10(s295)
	sh	$0,12(s295)
	sh	$0,14(s295)
	addiu	s294,s294,8
	addiu	s295,s295,16
	bne	s267,s294,$L15
	nop
$L10:
	li	s302,15			# 0xf
	subu	s303,s302,s8
	li	s304,1			# 0x1
	sll	s305,s304,s303
	beq	s6,$0,$L31
	nop
	move	s306,s6
	move	s307,$0
	lui	s308,%hi(prev)
	addiu	s309,s308,%lo(prev)
	li	s310,32768			# 0x8000
$L30:
	addu	s311,s7,s307
	lbu	s312,0(s311)
	nop
	beq	s312,$0,$L17
	nop
	sll	s313,s312,1
	addu	s314,s19,s313
	lhu	s315,72(s314)
	lhu	s316,36(s314)
	nop
	addu	s317,s316,s315
	sltu	s318,s8,s312
	bne	s318,$0,$L18
	nop
	move	s319,s315
	sltu	s320,s315,s317
	beq	s320,$0,$L19
	nop
	andi	s321,s307,0xffff
	subu	s322,s317,s315
	sll	s323,s315,1
	addu	s324,s9,s323
	andi	s175,s324,0x3
	srl	s325,s175,1
	sltu	s326,s322,s325
	beq	s326,$0,$L20
	nop
	move	s325,s322
$L20:
	beq	s325,$0,$L21
	nop
	sh	s321,0(s324)
	addiu	s319,s315,1
	beq	s322,s325,$L19
	nop
$L21:
	subu	s327,s322,s325
	srl	s328,s327,1
	sll	s329,s328,1
	beq	s329,$0,$L22
	nop
	sll	s330,s321,16
	or	s331,s330,s321
	sll	s175,s325,1
	addu	s332,s324,s175
	addiu	s333,s328,-1
	andi	s334,s333,0x7
	sw	s331,0(s332)
	li	s335,1			# 0x1
	addiu	s336,s332,4
	sltu	s337,s335,s328
	beq	s337,$0,$L253
	nop
	beq	s334,$0,$L23
	nop
	beq	s334,s335,$L218
	nop
	li	s338,2			# 0x2
	beq	s334,s338,$L219
	nop
	li	s175,3			# 0x3
	beq	s334,s175,$L220
	nop
	li	s339,4			# 0x4
	beq	s334,s339,$L221
	nop
	li	s175,5			# 0x5
	beq	s334,s175,$L222
	nop
	li	s340,6			# 0x6
	beq	s334,s340,$L223
	nop
	sw	s331,4(s332)
	li	s335,2			# 0x2
	addiu	s336,s332,8
$L223:
	sw	s331,0(s336)
	addiu	s335,s335,1
	addiu	s336,s336,4
$L222:
	sw	s331,0(s336)
	addiu	s335,s335,1
	addiu	s336,s336,4
$L221:
	sw	s331,0(s336)
	addiu	s335,s335,1
	addiu	s336,s336,4
$L220:
	sw	s331,0(s336)
	addiu	s335,s335,1
	addiu	s336,s336,4
$L219:
	sw	s331,0(s336)
	addiu	s335,s335,1
	addiu	s336,s336,4
$L218:
	sw	s331,0(s336)
	addiu	s335,s335,1
	addiu	s336,s336,4
	sltu	s341,s335,s328
	beq	s341,$0,$L253
	nop
$L23:
	sw	s331,0(s336)
	sw	s331,4(s336)
	sw	s331,8(s336)
	sw	s331,12(s336)
	sw	s331,16(s336)
	sw	s331,20(s336)
	sw	s331,24(s336)
	sw	s331,28(s336)
	addiu	s335,s335,8
	addiu	s336,s336,32
	sltu	s342,s335,s328
	bne	s342,$0,$L23
	nop
$L253:
	addu	s319,s319,s329
	beq	s327,s329,$L19
	nop
$L22:
	sll	s343,s319,1
	addu	s344,s9,s343
	nor	s345,$0,s319
	addu	s346,s345,s317
	andi	s347,s346,0x7
	sh	s321,0(s344)
	addiu	s348,s319,1
	addiu	s349,s344,2
	sltu	s350,s348,s317
	beq	s350,$0,$L19
	nop
	beq	s347,$0,$L24
	nop
	li	s351,1			# 0x1
	beq	s347,s351,$L212
	nop
	li	s175,2			# 0x2
	beq	s347,s175,$L213
	nop
	li	s352,3			# 0x3
	beq	s347,s352,$L214
	nop
	li	s353,4			# 0x4
	beq	s347,s353,$L215
	nop
	li	s354,5			# 0x5
	beq	s347,s354,$L216
	nop
	li	s355,6			# 0x6
	beq	s347,s355,$L217
	nop
	sh	s321,2(s344)
	addiu	s348,s319,2
	addiu	s349,s344,4
$L217:
	sh	s321,0(s349)
	addiu	s348,s348,1
	addiu	s349,s349,2
$L216:
	sh	s321,0(s349)
	addiu	s348,s348,1
	addiu	s349,s349,2
$L215:
	sh	s321,0(s349)
	addiu	s348,s348,1
	addiu	s349,s349,2
$L214:
	sh	s321,0(s349)
	addiu	s348,s348,1
	addiu	s349,s349,2
$L213:
	sh	s321,0(s349)
	addiu	s348,s348,1
	addiu	s349,s349,2
$L212:
	sh	s321,0(s349)
	addiu	s348,s348,1
	addiu	s349,s349,2
	sltu	s356,s348,s317
	beq	s356,$0,$L19
	nop
$L24:
	sh	s321,0(s349)
	sh	s321,2(s349)
	sh	s321,4(s349)
	sh	s321,6(s349)
	sh	s321,8(s349)
	sh	s321,10(s349)
	sh	s321,12(s349)
	sh	s321,14(s349)
	addiu	s348,s348,8
	addiu	s349,s349,16
	sltu	s357,s348,s317
	bne	s357,$0,$L24
	nop
$L19:
	addu	s358,s19,s313
	sh	s317,72(s358)
$L17:
	addiu	s307,s307,1
	sltu	s359,s307,s6
	bne	s359,$0,$L30
	nop
$L31:
	addiu	$sp,$sp,168
	move	$2,s175
	j	s5
	nop
$L18:
	move	s360,s315
	srl	s361,s315,s180
	sll	s362,s361,1
	addu	s363,s9,s362
	subu	s364,s312,s8
	beq	s364,$0,$L25
	nop
	addiu	s365,s364,-1
	andi	s366,s365,0x3
	beq	s366,$0,$L29
	nop
	lhu	s367,0(s363)
	nop
	bne	s367,$0,$L86
	nop
	sll	s368,s306,1
	addu	s369,s368,s309
	sh	$0,0(s369)
	addu	s370,s306,s310
	sll	s371,s370,1
	addu	s372,s309,s371
	sh	$0,0(s372)
	andi	s367,s306,0xffff
	sh	s367,0(s363)
	addiu	s306,s306,1
$L86:
	and	s373,s315,s305
	bne	s373,$0,$L256
	nop
	sll	s175,s367,1
	addu	s363,s309,s175
$L257:
	addiu	s364,s364,-1
	sll	s360,s315,1
	li	s374,1			# 0x1
	beq	s366,s374,$L29
	nop
	li	s375,2			# 0x2
	beq	s366,s375,$L224
	nop
	lhu	s376,0(s363)
	nop
	bne	s376,$0,$L88
	nop
	sll	s377,s306,1
	addu	s378,s377,s309
	sh	$0,0(s378)
	addu	s379,s306,s310
	sll	s380,s379,1
	addu	s381,s309,s380
	sh	$0,0(s381)
	andi	s376,s306,0xffff
	sh	s376,0(s363)
	addiu	s306,s306,1
$L88:
	and	s382,s360,s305
	bne	s382,$0,$L258
	nop
	sll	s175,s376,1
	addu	s363,s309,s175
$L259:
	addiu	s364,s364,-1
	sll	s360,s360,1
$L224:
	lhu	s383,0(s363)
	nop
	bne	s383,$0,$L91
	nop
	sll	s384,s306,1
	addu	s385,s384,s309
	sh	$0,0(s385)
	addu	s386,s306,s310
	sll	s387,s386,1
	addu	s388,s309,s387
	sh	$0,0(s388)
	andi	s383,s306,0xffff
	sh	s383,0(s363)
	addiu	s306,s306,1
$L91:
	and	s389,s360,s305
	bne	s389,$0,$L260
	nop
	sll	s175,s383,1
	addu	s363,s309,s175
	addiu	s364,s364,-1
	sll	s360,s360,1
$L29:
	lhu	s390,0(s363)
	nop
	bne	s390,$0,$L26
	nop
	sll	s391,s306,1
	addu	s392,s391,s309
	sh	$0,0(s392)
	addu	s393,s306,s310
	sll	s394,s393,1
	addu	s175,s309,s394
	sh	$0,0(s175)
	andi	s390,s306,0xffff
	sh	s390,0(s363)
	addiu	s306,s306,1
$L26:
	and	s395,s360,s305
	beq	s395,$0,$L27
	nop
	addu	s396,s390,s310
	sll	s397,s396,1
	addu	s363,s309,s397
	addiu	s398,s364,-1
	beq	s398,$0,$L25
	nop
$L272:
	sll	s399,s360,1
	lhu	s400,0(s363)
	nop
	bne	s400,$0,$L95
	nop
	sll	s401,s306,1
	addu	s402,s401,s309
	sh	$0,0(s402)
	addu	s403,s306,s310
	sll	s404,s403,1
	addu	s405,s309,s404
	sh	$0,0(s405)
	andi	s400,s306,0xffff
	sh	s400,0(s363)
	addiu	s306,s306,1
$L95:
	and	s406,s399,s305
	bne	s406,$0,$L262
	nop
	sll	s407,s400,1
	addu	s408,s309,s407
$L263:
	sll	s409,s399,1
	lhu	s410,0(s408)
	nop
	bne	s410,$0,$L97
	nop
	sll	s411,s306,1
	addu	s412,s411,s309
	sh	$0,0(s412)
	addu	s413,s306,s310
	sll	s414,s413,1
	addu	s415,s309,s414
	sh	$0,0(s415)
	andi	s410,s306,0xffff
	sh	s410,0(s408)
	addiu	s306,s306,1
$L97:
	and	s416,s409,s305
	bne	s416,$0,$L264
	nop
	sll	s417,s410,1
	addu	s418,s309,s417
$L265:
	sll	s419,s409,1
	lhu	s420,0(s418)
	nop
	bne	s420,$0,$L99
	nop
	sll	s421,s306,1
	addu	s422,s421,s309
	sh	$0,0(s422)
	addu	s423,s306,s310
	sll	s424,s423,1
	addu	s425,s309,s424
	sh	$0,0(s425)
	andi	s420,s306,0xffff
	sh	s420,0(s418)
	addiu	s306,s306,1
$L99:
	and	s426,s419,s305
	bne	s426,$0,$L266
	nop
	sll	s427,s420,1
	addu	s363,s309,s427
	addiu	s364,s398,-3
	sll	s360,s419,1
	j	$L29
	nop
$L27:
	sll	s428,s390,1
	addu	s363,s309,s428
	addiu	s398,s364,-1
	bne	s398,$0,$L272
	nop
$L25:
	sh	s307,0(s363)
	j	$L19
	nop
$L266:
	addu	s429,s420,s310
	sll	s430,s429,1
	addu	s363,s309,s430
	addiu	s364,s398,-3
	sll	s360,s419,1
	j	$L29
	nop
$L264:
	addu	s175,s410,s310
	sll	s431,s175,1
	addu	s418,s309,s431
	j	$L265
	nop
$L262:
	addu	s432,s400,s310
	sll	s175,s432,1
	addu	s408,s309,s175
	j	$L263
	nop
$L258:
	addu	s433,s376,s310
	sll	s434,s433,1
	addu	s363,s309,s434
	j	$L259
	nop
$L260:
	addu	s435,s383,s310
	sll	s436,s435,1
	addu	s363,s309,s436
	addiu	s364,s364,-1
	sll	s360,s360,1
	j	$L29
	nop
$L256:
	addu	s437,s367,s310
	sll	s438,s437,1
	addu	s363,s309,s438
	j	$L257
	nop
$L271:
	lui	s439,%hi($LC0)
	addiu	s440,s439,%lo($LC0)
	move	$4,s440
	move	$5,s169
	move	$6,s172
	move	$7,s174
	jal	error
	nop
	move	s175,$2
	j	$L4
	nop
$L270:
	addiu	s19,$sp,16
	j	$L2
	nop
$L5:
	li	s187,1			# 0x1
	j	$L7
	nop
	.set	macro
	.set	reorder
	.end	make_table
	.size	make_table, .-make_table
	.align	2
	.set	nomips16
	.ent	read_pt_len
read_pt_len:
	.frame	$sp,72,$31		# vars= 16, regs= 10/0, args= 16, gp= 0
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
	addiu	$sp,$sp,-72
	move	s7,s2
	lhu	s8,%gp_rel(bitbuf)($28)
	li	s9,16			# 0x10
	subu	s10,s9,s7
	sra	s11,s8,s10
	sll	s12,s8,s7
	sh	s12,%gp_rel(bitbuf)($28)
	lw	s13,%gp_rel(bitcount)($28)
	nop
	slt	s14,s13,s7
	beq	s14,$0,$L595
	nop
	move	s15,s7
	li	s16,-1			# 0xffffffffffffffff
	lui	s17,%hi(inbuf)
	addiu	s18,s17,%lo(inbuf)
	li	s19,8			# 0x8
	j	$L278
	nop
$L596:
	addu	s21,s20,s18
	lbu	s22,0(s21)
	addiu	s23,s20,1
	sw	s23,%gp_rel(inptr)($28)
	sw	s22,%gp_rel(subbitbuf)($28)
$L277:
	sw	s19,%gp_rel(bitcount)($28)
	li	s13,8			# 0x8
	slt	s24,s15,9
	bne	s24,$0,$L275
	nop
$L278:
	subu	s15,s15,s13
	lw	s25,%gp_rel(subbitbuf)($28)
	nop
	sll	s26,s25,s15
	lhu	s27,%gp_rel(bitbuf)($28)
	nop
	or	s28,s26,s27
	sh	s28,%gp_rel(bitbuf)($28)
	lw	s20,%gp_rel(inptr)($28)
	lw	s29,%gp_rel(insize)($28)
	nop
	sltu	s4,s20,s29
	bne	s4,$0,$L596
	nop
	li	s30,1			# 0x1
	move	$4,s30
	move	$5,s9
	move	$6,s17
	move	$7,s4
	jal	fill_inbuf
	nop
	move	s31,$2
	sw	s31,%gp_rel(subbitbuf)($28)
	bne	s31,s16,$L277
	nop
	sw	$0,%gp_rel(subbitbuf)($28)
	sw	s19,%gp_rel(bitcount)($28)
	li	s13,8			# 0x8
	slt	s32,s15,9
	beq	s32,$0,$L278
	nop
$L275:
	lw	s33,%gp_rel(subbitbuf)($28)
	subu	s34,s13,s15
	sw	s34,%gp_rel(bitcount)($28)
	srl	s35,s33,s34
	lhu	s36,%gp_rel(bitbuf)($28)
	nop
	or	s37,s35,s36
	andi	s38,s37,0xffff
	sh	s38,%gp_rel(bitbuf)($28)
	beq	s11,$0,$L279
	nop
	move	s3,$0
	lui	s39,%hi(inbuf)
	addiu	s40,s39,%lo(inbuf)
	li	s41,-1			# 0xffffffffffffffff
	li	s42,8			# 0x8
	lui	s43,%hi(pt_len)
	addiu	s44,s43,%lo(pt_len)
	addu	s45,s44,s3
	subu	s46,$0,s45
	andi	s47,s46,0x3
$L584:
	slt	s48,s3,s11
	beq	s48,$0,$L318
	nop
	lui	s49,%hi(pt_len)
	addiu	s50,s49,%lo(pt_len)
	addu	s51,s50,s3
$L319:
	lhu	s52,%gp_rel(bitbuf)($28)
	nop
	srl	s53,s52,13
	li	s54,7			# 0x7
	beq	s53,s54,$L597
	nop
	slt	s55,s53,7
	beq	s55,$0,$L297
	nop
	li	s56,3			# 0x3
$L295:
	sll	s57,s52,s56
	sh	s57,%gp_rel(bitbuf)($28)
	lw	s58,%gp_rel(bitcount)($28)
	nop
	slt	s59,s58,s56
	bne	s59,$0,$L589
	nop
	j	$L298
	nop
$L598:
	addu	s61,s60,s40
	lbu	s62,0(s61)
	addiu	s34,s60,1
	sw	s34,%gp_rel(inptr)($28)
	sw	s62,%gp_rel(subbitbuf)($28)
$L300:
	sw	s42,%gp_rel(bitcount)($28)
	li	s58,8			# 0x8
	slt	s63,s56,9
	bne	s63,$0,$L588
	nop
$L599:
	lw	s33,%gp_rel(subbitbuf)($28)
$L589:
	subu	s56,s56,s58
	sll	s64,s33,s56
	lhu	s65,%gp_rel(bitbuf)($28)
	nop
	or	s66,s64,s65
	sh	s66,%gp_rel(bitbuf)($28)
	lw	s60,%gp_rel(inptr)($28)
	lw	s67,%gp_rel(insize)($28)
	nop
	sltu	s68,s60,s67
	bne	s68,$0,$L598
	nop
	li	s69,1			# 0x1
	move	$4,s69
	move	$5,s34
	move	$6,s33
	move	$7,s4
	jal	fill_inbuf
	nop
	move	s70,$2
	sw	s70,%gp_rel(subbitbuf)($28)
	bne	s70,s41,$L300
	nop
	sw	$0,%gp_rel(subbitbuf)($28)
	sw	s42,%gp_rel(bitcount)($28)
	li	s58,8			# 0x8
	slt	s71,s56,9
	beq	s71,$0,$L599
	nop
$L588:
	lw	s33,%gp_rel(subbitbuf)($28)
$L298:
	subu	s72,s58,s56
	sw	s72,%gp_rel(bitcount)($28)
	srl	s73,s33,s72
	lhu	s74,%gp_rel(bitbuf)($28)
	nop
	or	s4,s73,s74
	andi	s75,s4,0xffff
	sh	s75,%gp_rel(bitbuf)($28)
	sb	s53,0(s51)
	addiu	s3,s3,1
	beq	s3,s3,$L600
	nop
	addiu	s51,s51,1
	slt	s76,s3,s11
	bne	s76,$0,$L319
	nop
$L318:
	slt	s77,s3,s1
	beq	s77,$0,$L320
	nop
	subu	s78,s1,s3
	lui	s79,%hi(pt_len)
	addiu	s80,s79,%lo(pt_len)
	addu	s81,s80,s3
	subu	s82,$0,s81
	andi	s83,s82,0x3
	sltu	s84,s78,s83
	bne	s84,$0,$L601
	nop
$L321:
	beq	s83,$0,$L602
	nop
	addu	s85,s80,s3
	addiu	s86,s83,-1
	andi	s87,s86,0x7
	sb	$0,0(s85)
	addiu	s88,s3,1
	li	s89,1			# 0x1
	addiu	s90,s85,1
	sltu	s91,s89,s83
	beq	s91,$0,$L593
	nop
	beq	s87,$0,$L324
	nop
	beq	s87,s89,$L560
	nop
	li	s92,2			# 0x2
	beq	s87,s92,$L561
	nop
	li	s93,3			# 0x3
	beq	s87,s93,$L562
	nop
	li	s94,4			# 0x4
	beq	s87,s94,$L563
	nop
	li	s95,5			# 0x5
	beq	s87,s95,$L564
	nop
	li	s96,6			# 0x6
	beq	s87,s96,$L565
	nop
	sb	$0,1(s85)
	addiu	s88,s3,2
	li	s89,2			# 0x2
	addiu	s90,s85,2
$L565:
	sb	$0,0(s90)
	addiu	s88,s88,1
	addiu	s89,s89,1
	addiu	s90,s90,1
$L564:
	sb	$0,0(s90)
	addiu	s88,s88,1
	addiu	s89,s89,1
	addiu	s90,s90,1
$L563:
	sb	$0,0(s90)
	addiu	s88,s88,1
	addiu	s89,s89,1
	addiu	s90,s90,1
$L562:
	sb	$0,0(s90)
	addiu	s88,s88,1
	addiu	s89,s89,1
	addiu	s90,s90,1
$L561:
	sb	$0,0(s90)
	addiu	s88,s88,1
	addiu	s89,s89,1
	addiu	s90,s90,1
$L560:
	sb	$0,0(s90)
	addiu	s88,s88,1
	addiu	s89,s89,1
	addiu	s90,s90,1
	sltu	s97,s89,s83
	beq	s97,$0,$L593
	nop
$L324:
	sb	$0,0(s90)
	sb	$0,1(s90)
	sb	$0,2(s90)
	sb	$0,3(s90)
	sb	$0,4(s90)
	sb	$0,5(s90)
	sb	$0,6(s90)
	sb	$0,7(s90)
	addiu	s88,s88,8
	addiu	s89,s89,8
	addiu	s90,s90,8
	sltu	s98,s89,s83
	bne	s98,$0,$L324
	nop
$L593:
	beq	s83,s78,$L320
	nop
$L323:
	subu	s99,s78,s83
	srl	s100,s99,2
	sll	s101,s100,2
	beq	s101,$0,$L325
	nop
	addu	s102,s83,s3
	addu	s103,s80,s102
	addiu	s104,s100,-1
	andi	s105,s104,0x7
	sw	$0,0(s103)
	li	s106,1			# 0x1
	addiu	s107,s103,4
	sltu	s108,s106,s100
	beq	s108,$0,$L594
	nop
	beq	s105,$0,$L326
	nop
	beq	s105,s106,$L554
	nop
	li	s109,2			# 0x2
	beq	s105,s109,$L555
	nop
	li	s110,3			# 0x3
	beq	s105,s110,$L556
	nop
	li	s111,4			# 0x4
	beq	s105,s111,$L557
	nop
	li	s112,5			# 0x5
	beq	s105,s112,$L558
	nop
	li	s113,6			# 0x6
	beq	s105,s113,$L559
	nop
	sw	$0,4(s103)
	li	s106,2			# 0x2
	addiu	s107,s103,8
$L559:
	sw	$0,0(s107)
	addiu	s106,s106,1
	addiu	s107,s107,4
$L558:
	sw	$0,0(s107)
	addiu	s106,s106,1
	addiu	s107,s107,4
$L557:
	sw	$0,0(s107)
	addiu	s106,s106,1
	addiu	s107,s107,4
$L556:
	sw	$0,0(s107)
	addiu	s106,s106,1
	addiu	s107,s107,4
$L555:
	sw	$0,0(s107)
	addiu	s106,s106,1
	addiu	s107,s107,4
$L554:
	sw	$0,0(s107)
	addiu	s106,s106,1
	addiu	s107,s107,4
	sltu	s114,s106,s100
	beq	s114,$0,$L594
	nop
$L326:
	sw	$0,0(s107)
	sw	$0,4(s107)
	sw	$0,8(s107)
	sw	$0,12(s107)
	sw	$0,16(s107)
	sw	$0,20(s107)
	sw	$0,24(s107)
	sw	$0,28(s107)
	addiu	s106,s106,8
	addiu	s107,s107,32
	sltu	s115,s106,s100
	bne	s115,$0,$L326
	nop
$L594:
	addu	s88,s88,s101
	beq	s99,s101,$L320
	nop
$L325:
	addu	s116,s80,s88
	nor	s117,$0,s88
	addu	s118,s117,s1
	andi	s119,s118,0x7
	sb	$0,0(s116)
	addiu	s120,s88,1
	addiu	s121,s116,1
	slt	s122,s120,s1
	beq	s122,$0,$L320
	nop
	beq	s119,$0,$L327
	nop
	li	s123,1			# 0x1
	beq	s119,s123,$L548
	nop
	li	s124,2			# 0x2
	beq	s119,s124,$L549
	nop
	li	s125,3			# 0x3
	beq	s119,s125,$L550
	nop
	li	s126,4			# 0x4
	beq	s119,s126,$L551
	nop
	li	s127,5			# 0x5
	beq	s119,s127,$L552
	nop
	li	s128,6			# 0x6
	beq	s119,s128,$L553
	nop
	sb	$0,1(s116)
	addiu	s120,s88,2
	addiu	s121,s116,2
$L553:
	sb	$0,0(s121)
	addiu	s120,s120,1
	addiu	s121,s121,1
$L552:
	sb	$0,0(s121)
	addiu	s120,s120,1
	addiu	s121,s121,1
$L551:
	sb	$0,0(s121)
	addiu	s120,s120,1
	addiu	s121,s121,1
$L550:
	sb	$0,0(s121)
	addiu	s120,s120,1
	addiu	s121,s121,1
$L549:
	sb	$0,0(s121)
	addiu	s120,s120,1
	addiu	s121,s121,1
$L548:
	sb	$0,0(s121)
	addiu	s120,s120,1
	addiu	s121,s121,1
	slt	s129,s120,s1
	beq	s129,$0,$L320
	nop
$L327:
	sb	$0,0(s121)
	sb	$0,1(s121)
	sb	$0,2(s121)
	sb	$0,3(s121)
	sb	$0,4(s121)
	sb	$0,5(s121)
	sb	$0,6(s121)
	sb	$0,7(s121)
	addiu	s120,s120,8
	addiu	s121,s121,8
	slt	s130,s120,s1
	bne	s130,$0,$L327
	nop
$L320:
	lui	s131,%hi(pt_len)
	addiu	s132,s131,%lo(pt_len)
	li	s133,8			# 0x8
	lui	s134,%hi(pt_table)
	addiu	s135,s134,%lo(pt_table)
	addiu	$sp,$sp,72
	j	make_table
	nop
$L597:
	andi	s136,s52,0x1000
	beq	s136,$0,$L603
	nop
	li	s137,4096			# 0x1000
$L296:
	srl	s137,s137,1
	addiu	s53,s53,1
	and	s138,s137,s52
	bne	s138,$0,$L296
	nop
$L297:
	addiu	s56,s53,-3
	j	$L295
	nop
$L600:
	sll	s139,s75,2
	sh	s139,%gp_rel(bitbuf)($28)
	slt	s140,s72,2
	beq	s140,$0,$L604
	nop
	li	s141,2			# 0x2
	j	$L307
	nop
$L605:
	addu	s143,s142,s40
	lbu	s144,0(s143)
	addiu	s145,s142,1
	sw	s145,%gp_rel(inptr)($28)
	sw	s144,%gp_rel(subbitbuf)($28)
$L306:
	li	s146,8			# 0x8
	sw	s146,%gp_rel(bitcount)($28)
	li	s72,8			# 0x8
	slt	s147,s141,9
	bne	s147,$0,$L590
	nop
$L606:
	lw	s33,%gp_rel(subbitbuf)($28)
$L307:
	subu	s141,s141,s72
	sll	s148,s33,s141
	lhu	s149,%gp_rel(bitbuf)($28)
	nop
	or	s150,s148,s149
	sh	s150,%gp_rel(bitbuf)($28)
	lw	s142,%gp_rel(inptr)($28)
	lw	s151,%gp_rel(insize)($28)
	nop
	sltu	s152,s142,s151
	bne	s152,$0,$L605
	nop
	li	s153,1			# 0x1
	move	$4,s153
	move	$5,s34
	move	$6,s33
	move	$7,s4
	jal	fill_inbuf
	nop
	move	s154,$2
	sw	s154,%gp_rel(subbitbuf)($28)
	bne	s154,s41,$L306
	nop
	sw	$0,%gp_rel(subbitbuf)($28)
	li	s155,8			# 0x8
	sw	s155,%gp_rel(bitcount)($28)
	li	s72,8			# 0x8
	slt	s156,s141,9
	beq	s156,$0,$L606
	nop
$L590:
	lw	s33,%gp_rel(subbitbuf)($28)
$L304:
	subu	s157,s72,s141
	sw	s157,%gp_rel(bitcount)($28)
	srl	s158,s33,s157
	lhu	s159,%gp_rel(bitbuf)($28)
	nop
	or	s34,s158,s159
	sh	s34,%gp_rel(bitbuf)($28)
	sra	s160,s75,14
	addiu	s161,s160,-1
	move	s4,s161
	bne	s161,s41,$L308
	nop
	j	$L584
	nop
$L601:
	move	s83,s78
	j	$L321
	nop
$L603:
	li	s56,4			# 0x4
	j	$L295
	nop
$L279:
	sll	s162,s38,s7
	sh	s162,%gp_rel(bitbuf)($28)
	slt	s163,s34,s7
	beq	s163,$0,$L281
	nop
	lui	s164,%hi(inbuf)
	addiu	s165,s164,%lo(inbuf)
	li	s166,-1			# 0xffffffffffffffff
	li	s167,8			# 0x8
	j	$L586
	nop
$L607:
	addu	s169,s168,s165
	lbu	s170,0(s169)
	addiu	s171,s168,1
	sw	s171,%gp_rel(inptr)($28)
	sw	s170,%gp_rel(subbitbuf)($28)
$L283:
	sw	s167,%gp_rel(bitcount)($28)
	li	s34,8			# 0x8
	slt	s172,s7,9
	bne	s172,$0,$L585
	nop
$L608:
	lw	s33,%gp_rel(subbitbuf)($28)
$L586:
	subu	s7,s7,s34
	sll	s173,s33,s7
	lhu	s174,%gp_rel(bitbuf)($28)
	nop
	or	s175,s173,s174
	sh	s175,%gp_rel(bitbuf)($28)
	lw	s168,%gp_rel(inptr)($28)
	lw	s176,%gp_rel(insize)($28)
	nop
	sltu	s177,s168,s176
	bne	s177,$0,$L607
	nop
	li	s178,1			# 0x1
	move	$4,s178
	move	$5,s177
	move	$6,s176
	move	$7,s173
	jal	fill_inbuf
	nop
	move	s179,$2
	sw	s179,%gp_rel(subbitbuf)($28)
	bne	s179,s166,$L283
	nop
	sw	$0,%gp_rel(subbitbuf)($28)
	sw	s167,%gp_rel(bitcount)($28)
	li	s34,8			# 0x8
	slt	s180,s7,9
	beq	s180,$0,$L608
	nop
$L585:
	lw	s33,%gp_rel(subbitbuf)($28)
$L281:
	subu	s181,s34,s7
	sw	s181,%gp_rel(bitcount)($28)
	srl	s182,s33,s181
	lhu	s183,%gp_rel(bitbuf)($28)
	nop
	or	s184,s182,s183
	sh	s184,%gp_rel(bitbuf)($28)
	blez	s1,$L285
	nop
	srl	s185,s1,2
	sll	s186,s185,2
	sltu	s187,s1,4
	bne	s187,$0,$L329
	nop
	bne	s186,$0,$L286
	nop
$L329:
	move	s188,$0
	lui	s189,%hi(pt_len)
	addiu	s190,s189,%lo(pt_len)
	j	$L288
	nop
$L286:
	lui	s191,%hi(pt_len)
	addiu	s190,s191,%lo(pt_len)
	addiu	s192,s185,-1
	andi	s193,s192,0x7
	sw	$0,%lo(pt_len)(s191)
	li	s194,1			# 0x1
	addiu	s195,s190,4
	sltu	s196,s194,s185
	beq	s196,$0,$L587
	nop
	beq	s193,$0,$L289
	nop
	beq	s193,s194,$L542
	nop
	li	s197,2			# 0x2
	beq	s193,s197,$L543
	nop
	li	s198,3			# 0x3
	beq	s193,s198,$L544
	nop
	li	s199,4			# 0x4
	beq	s193,s199,$L545
	nop
	li	s200,5			# 0x5
	beq	s193,s200,$L546
	nop
	li	s201,6			# 0x6
	beq	s193,s201,$L547
	nop
	sw	$0,0(s195)
	li	s194,2			# 0x2
	addiu	s195,s195,4
$L547:
	sw	$0,0(s195)
	addiu	s194,s194,1
	addiu	s195,s195,4
$L546:
	sw	$0,0(s195)
	addiu	s194,s194,1
	addiu	s195,s195,4
$L545:
	sw	$0,0(s195)
	addiu	s194,s194,1
	addiu	s195,s195,4
$L544:
	sw	$0,0(s195)
	addiu	s194,s194,1
	addiu	s195,s195,4
$L543:
	sw	$0,0(s195)
	addiu	s194,s194,1
	addiu	s195,s195,4
$L542:
	sw	$0,0(s195)
	addiu	s194,s194,1
	addiu	s195,s195,4
	sltu	s202,s194,s185
	beq	s202,$0,$L587
	nop
$L289:
	sw	$0,0(s195)
	sw	$0,4(s195)
	sw	$0,8(s195)
	sw	$0,12(s195)
	sw	$0,16(s195)
	sw	$0,20(s195)
	sw	$0,24(s195)
	sw	$0,28(s195)
	addiu	s194,s194,8
	addiu	s195,s195,32
	sltu	s203,s194,s185
	bne	s203,$0,$L289
	nop
$L587:
	move	s188,s186
	beq	s1,s188,$L285
	nop
$L288:
	addu	s204,s190,s188
	nor	s205,$0,s188
	addu	s206,s205,s1
	andi	s207,s206,0x7
	sb	$0,0(s204)
	addiu	s208,s188,1
	addiu	s209,s204,1
	slt	s210,s208,s1
	beq	s210,$0,$L285
	nop
	beq	s207,$0,$L290
	nop
	li	s211,1			# 0x1
	beq	s207,s211,$L536
	nop
	li	s212,2			# 0x2
	beq	s207,s212,$L537
	nop
	li	s213,3			# 0x3
	beq	s207,s213,$L538
	nop
	li	s214,4			# 0x4
	beq	s207,s214,$L539
	nop
	li	s215,5			# 0x5
	beq	s207,s215,$L540
	nop
	li	s216,6			# 0x6
	beq	s207,s216,$L541
	nop
	sb	$0,1(s204)
	addiu	s208,s188,2
	addiu	s209,s204,2
$L541:
	sb	$0,0(s209)
	addiu	s208,s208,1
	addiu	s209,s209,1
$L540:
	sb	$0,0(s209)
	addiu	s208,s208,1
	addiu	s209,s209,1
$L539:
	sb	$0,0(s209)
	addiu	s208,s208,1
	addiu	s209,s209,1
$L538:
	sb	$0,0(s209)
	addiu	s208,s208,1
	addiu	s209,s209,1
$L537:
	sb	$0,0(s209)
	addiu	s208,s208,1
	addiu	s209,s209,1
$L536:
	sb	$0,0(s209)
	addiu	s208,s208,1
	addiu	s209,s209,1
	slt	s217,s208,s1
	beq	s217,$0,$L285
	nop
$L290:
	sb	$0,0(s209)
	sb	$0,1(s209)
	sb	$0,2(s209)
	sb	$0,3(s209)
	sb	$0,4(s209)
	sb	$0,5(s209)
	sb	$0,6(s209)
	sb	$0,7(s209)
	addiu	s208,s208,8
	addiu	s209,s209,8
	slt	s218,s208,s1
	bne	s218,$0,$L290
	nop
$L285:
	sra	s219,s38,s10
	andi	s220,s219,0xffff
	sll	s221,s220,16
	or	s222,s221,s220
	lui	s223,%hi(pt_table)
	addiu	s224,s223,%lo(pt_table)
	lui	s225,%hi(pt_table+512)
	addiu	s226,s225,%lo(pt_table+512)
$L291:
	sw	s222,0(s224)
	sw	s222,4(s224)
	sw	s222,8(s224)
	sw	s222,12(s224)
	sw	s222,16(s224)
	sw	s222,20(s224)
	sw	s222,24(s224)
	sw	s222,28(s224)
	addiu	s224,s224,32
	bne	s224,s226,$L291
	nop
	addiu	$sp,$sp,72
	move	$2,s226
	j	s6
	nop
$L308:
	move	s227,s160
	sltu	s228,s47,s160
	bne	s228,$0,$L609
	nop
$L309:
	beq	s227,$0,$L610
	nop
	addiu	s229,s227,-1
	andi	s230,s229,0x7
	sb	$0,0(s45)
	addiu	s3,s3,1
	addiu	s4,s161,-1
	li	s231,1			# 0x1
	addiu	s232,s45,1
	sltu	s233,s231,s227
	bne	s233,$0,$L611
	nop
$L591:
	beq	s160,s227,$L313
	nop
$L311:
	subu	s234,s160,s227
	srl	s235,s234,2
	sll	s236,s235,2
	beq	s236,$0,$L314
	nop
	addu	s237,s3,s227
	lui	s238,%hi(pt_len)
	addiu	s239,s238,%lo(pt_len)
	addu	s240,s239,s237
	addiu	s241,s235,-1
	andi	s242,s241,0x7
	sw	$0,0(s240)
	li	s243,1			# 0x1
	addiu	s244,s240,4
	sltu	s245,s243,s235
	bne	s245,$0,$L612
	nop
$L592:
	subu	s4,s4,s236
	addu	s3,s3,s236
	beq	s234,s236,$L313
	nop
$L314:
	lui	s246,%hi(pt_len)
	addiu	s247,s246,%lo(pt_len)
	addu	s248,s247,s3
	andi	s249,s4,0x7
	sb	$0,0(s248)
	addiu	s250,s4,-1
	addiu	s251,s248,1
	bgez	s250,$L613
	nop
$L313:
	addiu	s34,s3,1
	addu	s3,s34,s161
	j	$L584
	nop
$L609:
	move	s227,s47
	j	$L309
	nop
$L613:
	beq	s249,$0,$L316
	nop
	li	s252,1			# 0x1
	beq	s249,s252,$L566
	nop
	li	s253,2			# 0x2
	beq	s249,s253,$L567
	nop
	li	s254,3			# 0x3
	beq	s249,s254,$L568
	nop
	li	s255,4			# 0x4
	beq	s249,s255,$L569
	nop
	li	s256,5			# 0x5
	beq	s249,s256,$L570
	nop
	li	s257,6			# 0x6
	beq	s249,s257,$L571
	nop
	sb	$0,1(s248)
	addiu	s250,s4,-2
	addiu	s251,s248,2
$L571:
	sb	$0,0(s251)
	addiu	s250,s250,-1
	addiu	s251,s251,1
$L570:
	sb	$0,0(s251)
	addiu	s250,s250,-1
	addiu	s251,s251,1
$L569:
	sb	$0,0(s251)
	addiu	s250,s250,-1
	addiu	s251,s251,1
$L568:
	sb	$0,0(s251)
	addiu	s250,s250,-1
	addiu	s251,s251,1
$L567:
	sb	$0,0(s251)
	addiu	s250,s250,-1
	addiu	s251,s251,1
$L566:
	sb	$0,0(s251)
	addiu	s250,s250,-1
	addiu	s251,s251,1
	bltz	s250,$L313
	nop
$L316:
	sb	$0,0(s251)
	sb	$0,1(s251)
	sb	$0,2(s251)
	sb	$0,3(s251)
	sb	$0,4(s251)
	sb	$0,5(s251)
	sb	$0,6(s251)
	sb	$0,7(s251)
	addiu	s250,s250,-8
	addiu	s251,s251,8
	bgez	s250,$L316
	nop
	addiu	s34,s3,1
	addu	s3,s34,s161
	j	$L584
	nop
$L611:
	beq	s230,$0,$L312
	nop
	beq	s230,s231,$L578
	nop
	li	s258,2			# 0x2
	beq	s230,s258,$L579
	nop
	li	s259,3			# 0x3
	beq	s230,s259,$L580
	nop
	li	s260,4			# 0x4
	beq	s230,s260,$L581
	nop
	li	s261,5			# 0x5
	beq	s230,s261,$L582
	nop
	li	s262,6			# 0x6
	beq	s230,s262,$L583
	nop
	sb	$0,1(s45)
	addiu	s3,s3,2
	addiu	s4,s161,-2
	li	s231,2			# 0x2
	addiu	s232,s45,2
$L583:
	sb	$0,0(s232)
	addiu	s3,s3,1
	addiu	s4,s4,-1
	addiu	s231,s231,1
	addiu	s232,s232,1
$L582:
	sb	$0,0(s232)
	addiu	s3,s3,1
	addiu	s4,s4,-1
	addiu	s231,s231,1
	addiu	s232,s232,1
$L581:
	sb	$0,0(s232)
	addiu	s3,s3,1
	addiu	s4,s4,-1
	addiu	s231,s231,1
	addiu	s232,s232,1
$L580:
	sb	$0,0(s232)
	addiu	s3,s3,1
	addiu	s4,s4,-1
	addiu	s231,s231,1
	addiu	s232,s232,1
$L579:
	sb	$0,0(s232)
	addiu	s3,s3,1
	addiu	s4,s4,-1
	addiu	s231,s231,1
	addiu	s232,s232,1
$L578:
	sb	$0,0(s232)
	addiu	s3,s3,1
	addiu	s4,s4,-1
	addiu	s231,s231,1
	addiu	s232,s232,1
	sltu	s263,s231,s227
	beq	s263,$0,$L591
	nop
$L312:
	sb	$0,0(s232)
	sb	$0,1(s232)
	sb	$0,2(s232)
	sb	$0,3(s232)
	sb	$0,4(s232)
	sb	$0,5(s232)
	sb	$0,6(s232)
	sb	$0,7(s232)
	addiu	s3,s3,8
	addiu	s4,s4,-8
	addiu	s231,s231,8
	addiu	s232,s232,8
	sltu	s264,s231,s227
	beq	s264,$0,$L591
	nop
	j	$L312
	nop
$L604:
	li	s141,2			# 0x2
	j	$L304
	nop
$L595:
	move	s15,s7
	j	$L275
	nop
$L612:
	beq	s242,$0,$L315
	nop
	beq	s242,s243,$L572
	nop
	li	s265,2			# 0x2
	beq	s242,s265,$L573
	nop
	li	s266,3			# 0x3
	beq	s242,s266,$L574
	nop
	li	s267,4			# 0x4
	beq	s242,s267,$L575
	nop
	li	s268,5			# 0x5
	beq	s242,s268,$L576
	nop
	li	s269,6			# 0x6
	beq	s242,s269,$L577
	nop
	sw	$0,4(s240)
	li	s243,2			# 0x2
	addiu	s244,s240,8
$L577:
	sw	$0,0(s244)
	addiu	s243,s243,1
	addiu	s244,s244,4
$L576:
	sw	$0,0(s244)
	addiu	s243,s243,1
	addiu	s244,s244,4
$L575:
	sw	$0,0(s244)
	addiu	s243,s243,1
	addiu	s244,s244,4
$L574:
	sw	$0,0(s244)
	addiu	s243,s243,1
	addiu	s244,s244,4
$L573:
	sw	$0,0(s244)
	addiu	s243,s243,1
	addiu	s244,s244,4
$L572:
	sw	$0,0(s244)
	addiu	s243,s243,1
	addiu	s244,s244,4
	sltu	s270,s243,s235
	beq	s270,$0,$L592
	nop
$L315:
	sw	$0,0(s244)
	sw	$0,4(s244)
	sw	$0,8(s244)
	sw	$0,12(s244)
	sw	$0,16(s244)
	sw	$0,20(s244)
	sw	$0,24(s244)
	sw	$0,28(s244)
	addiu	s243,s243,8
	addiu	s244,s244,32
	sltu	s271,s243,s235
	beq	s271,$0,$L592
	nop
	j	$L315
	nop
$L602:
	move	s88,s3
	j	$L323
	nop
$L610:
	j	$L311
	nop
	.set	macro
	.set	reorder
	.end	read_pt_len
	.size	read_pt_len, .-read_pt_len
	.align	2
	.globl	unlzh
	.set	nomips16
	.ent	unlzh
unlzh:
	.frame	$sp,96,$31		# vars= 40, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$5
	move	s3,$fp
	move	s4,$31
	addiu	$sp,$sp,-96
	sw	s1,%gp_rel(ifd)($28)
	sw	s2,%gp_rel(ofd)($28)
	sw	$0,%gp_rel(subbitbuf)($28)
	sw	$0,%gp_rel(bitcount)($28)
	sh	$0,%gp_rel(bitbuf)($28)
	li	s5,16			# 0x10
	move	s6,$0
	li	s7,-1			# 0xffffffffffffffff
	lui	s8,%hi(inbuf)
	addiu	s9,s8,%lo(inbuf)
	li	s10,8			# 0x8
	j	$L617
	nop
$L989:
	addu	s12,s11,s9
	lbu	s13,0(s12)
	addiu	s14,s11,1
	sw	s14,%gp_rel(inptr)($28)
	sw	s13,%gp_rel(subbitbuf)($28)
$L616:
	sw	s10,%gp_rel(bitcount)($28)
	li	s6,8			# 0x8
	slt	s15,s5,9
	bne	s15,$0,$L988
	nop
$L617:
	subu	s5,s5,s6
	lw	s16,%gp_rel(subbitbuf)($28)
	nop
	sll	s17,s16,s5
	lhu	s18,%gp_rel(bitbuf)($28)
	nop
	or	s19,s17,s18
	sh	s19,%gp_rel(bitbuf)($28)
	lw	s11,%gp_rel(inptr)($28)
	lw	s20,%gp_rel(insize)($28)
	nop
	sltu	s21,s11,s20
	bne	s21,$0,$L989
	nop
	li	s22,1			# 0x1
	move	$4,s22
	move	$5,s20
	move	$6,s17
	move	$7,s18
	jal	fill_inbuf
	nop
	move	s23,$2
	sw	s23,%gp_rel(subbitbuf)($28)
	bne	s23,s7,$L616
	nop
	sw	$0,%gp_rel(subbitbuf)($28)
	sw	s10,%gp_rel(bitcount)($28)
	li	s6,8			# 0x8
	slt	s24,s5,9
	beq	s24,$0,$L617
	nop
$L988:
	subu	s25,s10,s5
	sw	s25,%gp_rel(bitcount)($28)
	lw	s26,%gp_rel(subbitbuf)($28)
	nop
	srl	s27,s26,s25
	lhu	s28,%gp_rel(bitbuf)($28)
	nop
	or	s29,s27,s28
	sh	s29,%gp_rel(bitbuf)($28)
	sw	$0,%gp_rel(blocksize)($28)
	sw	$0,%gp_rel(j)($28)
	sw	$0,%gp_rel(done)($28)
	lui	s30,%hi(outbuf)
	addiu	s31,s30,%lo(outbuf)
	subu	s32,$0,s31
	andi	s33,s32,0x3
	li	s34,510			# 0x1fe
	subu	s35,s34,s33
	srl	s36,s35,2
	lui	s37,%hi(d_buf)
	addiu	s38,s37,%lo(d_buf)
	andi	s39,s38,0x3
	srl	s40,s39,1
	li	s41,4096			# 0x1000
	subu	s42,s41,s40
	srl	s43,s42,1
	sll	s44,s43,1
$L618:
	lw	s45,%gp_rel(i.2562)($28)
	lw	s46,%gp_rel(j)($28)
	move	s47,$0
	lui	s48,%hi(window)
	addiu	s49,s48,%lo(window)
	li	s50,8192			# 0x2000
$L620:
	addiu	s46,s46,-1
	move	s51,s46
	bltz	s46,$L968
	nop
	addu	s52,s49,s47
	addu	s53,s49,s45
	lbu	s54,0(s53)
	nop
	sb	s54,0(s52)
	addiu	s55,s45,1
	andi	s45,s55,0x1fff
	addiu	s47,s47,1
	move	s56,s47
	addiu	s46,s46,-1
	bltz	s46,$L968
	nop
	addu	s57,s49,s47
	addu	s58,s49,s45
	lbu	s59,0(s58)
	nop
	sb	s59,0(s57)
	addiu	s60,s45,1
	andi	s45,s60,0x1fff
	addiu	s47,s47,1
	addiu	s46,s51,-2
	bltz	s46,$L968
	nop
	addu	s61,s49,s47
	addu	s62,s49,s45
	lbu	s63,0(s62)
	nop
	sb	s63,0(s61)
	addiu	s64,s45,1
	andi	s45,s64,0x1fff
	addiu	s47,s56,2
	addiu	s46,s51,-3
	bltz	s46,$L968
	nop
	addu	s65,s49,s47
	addu	s66,s49,s45
	lbu	s67,0(s66)
	nop
	sb	s67,0(s65)
	addiu	s68,s45,1
	andi	s45,s68,0x1fff
	addiu	s47,s56,3
	addiu	s46,s51,-4
	bltz	s46,$L968
	nop
	addu	s69,s49,s47
	addu	s70,s49,s45
	lbu	s71,0(s70)
	nop
	sb	s71,0(s69)
	addiu	s72,s45,1
	andi	s45,s72,0x1fff
	addiu	s47,s56,4
	addiu	s46,s51,-5
	bltz	s46,$L968
	nop
	addu	s73,s49,s47
	addu	s74,s49,s45
	lbu	s75,0(s74)
	nop
	sb	s75,0(s73)
	addiu	s76,s45,1
	andi	s45,s76,0x1fff
	addiu	s47,s56,5
	addiu	s46,s51,-6
	bltz	s46,$L968
	nop
	addu	s77,s49,s47
	addu	s78,s49,s45
	lbu	s79,0(s78)
	nop
	sb	s79,0(s77)
	addiu	s80,s45,1
	andi	s45,s80,0x1fff
	addiu	s47,s56,6
	addiu	s46,s51,-7
	bltz	s46,$L968
	nop
	addu	s81,s49,s47
	addu	s82,s49,s45
	lbu	s83,0(s82)
	nop
	sb	s83,0(s81)
	addiu	s84,s45,1
	andi	s45,s84,0x1fff
	addiu	s47,s56,7
	bne	s47,s50,$L620
	nop
	sw	s45,%gp_rel(i.2562)($28)
	sw	s46,%gp_rel(j)($28)
$L629:
	lw	s85,%gp_rel(test)($28)
	nop
	beq	s85,$0,$L990
	nop
$L708:
	lw	s86,%gp_rel(done)($28)
	nop
	beq	s86,$0,$L618
	nop
	move	s87,$0
	addiu	$sp,$sp,96
	move	$2,s87
	j	s4
	nop
$L968:
	sw	s45,%gp_rel(i.2562)($28)
	sw	s46,%gp_rel(j)($28)
	lw	s88,%gp_rel(subbitbuf)($28)
	nop
	sll	s89,s36,2
$L980:
	lw	s90,%gp_rel(blocksize)($28)
	nop
	beq	s90,$0,$L969
	nop
$L995:
	lui	s91,%hi(d_buf)
	addiu	s92,s91,%lo(d_buf)
$L622:
	addiu	s93,s90,-1
	sw	s93,%gp_rel(blocksize)($28)
	lhu	s94,%gp_rel(bitbuf)($28)
	nop
	srl	s95,s94,4
	sll	s96,s95,1
	addu	s97,s96,s92
	lhu	s98,0(s97)
	nop
	sltu	s89,s98,510
	bne	s89,$0,$L682
	nop
	li	s99,8			# 0x8
	lui	s100,%hi(prev)
	addiu	s97,s100,%lo(prev)
	li	s89,32768			# 0x8000
	j	$L685
	nop
$L991:
	addu	s101,s98,s89
	sll	s102,s101,1
	addu	s103,s97,s102
	lhu	s98,0(s103)
	nop
	sltu	s104,s98,510
	bne	s104,$0,$L682
	nop
$L992:
	srl	s99,s99,1
$L685:
	and	s105,s99,s94
	bne	s105,$0,$L991
	nop
	sll	s106,s98,1
	addu	s107,s106,s97
	lhu	s98,0(s107)
	nop
	sltu	s108,s98,510
	beq	s108,$0,$L992
	nop
$L682:
	addu	s109,s98,s31
	lbu	s110,0(s109)
	nop
	sll	s111,s94,s110
	sh	s111,%gp_rel(bitbuf)($28)
	lw	s112,%gp_rel(bitcount)($28)
	nop
	slt	s113,s112,s110
	beq	s113,$0,$L686
	nop
	lui	s114,%hi(inbuf)
	addiu	s115,s114,%lo(inbuf)
	li	s116,-1			# 0xffffffffffffffff
	li	s117,8			# 0x8
	j	$L979
	nop
$L993:
	addu	s119,s118,s115
	lbu	s97,0(s119)
	addiu	s120,s118,1
	sw	s120,%gp_rel(inptr)($28)
	sw	s97,%gp_rel(subbitbuf)($28)
$L688:
	sw	s117,%gp_rel(bitcount)($28)
	li	s112,8			# 0x8
	slt	s121,s110,9
	bne	s121,$0,$L978
	nop
$L994:
	lw	s88,%gp_rel(subbitbuf)($28)
$L979:
	subu	s110,s110,s112
	sll	s122,s88,s110
	lhu	s89,%gp_rel(bitbuf)($28)
	nop
	or	s123,s122,s89
	sh	s123,%gp_rel(bitbuf)($28)
	lw	s118,%gp_rel(inptr)($28)
	lw	s124,%gp_rel(insize)($28)
	nop
	sltu	s125,s118,s124
	bne	s125,$0,$L993
	nop
	li	s126,1			# 0x1
	move	$4,s126
	move	$5,s113
	move	$6,s97
	move	$7,s89
	jal	fill_inbuf
	nop
	move	s127,$2
	sw	s127,%gp_rel(subbitbuf)($28)
	bne	s127,s116,$L688
	nop
	sw	$0,%gp_rel(subbitbuf)($28)
	sw	s117,%gp_rel(bitcount)($28)
	li	s112,8			# 0x8
	slt	s128,s110,9
	beq	s128,$0,$L994
	nop
$L978:
	lw	s88,%gp_rel(subbitbuf)($28)
$L686:
	subu	s45,s112,s110
	sw	s45,%gp_rel(bitcount)($28)
	srl	s129,s88,s45
	lhu	s130,%gp_rel(bitbuf)($28)
	nop
	or	s131,s129,s130
	andi	s51,s131,0xffff
	sh	s51,%gp_rel(bitbuf)($28)
	sltu	s132,s98,256
	beq	s132,$0,$L690
	nop
	lui	s133,%hi(window)
	addiu	s134,s133,%lo(window)
	addu	s135,s134,s47
	sb	s98,0(s135)
	addiu	s47,s47,1
	li	s136,8192			# 0x2000
	beq	s47,s136,$L629
	nop
	lw	s90,%gp_rel(blocksize)($28)
	nop
	bne	s90,$0,$L995
	nop
$L969:
	lhu	s137,%gp_rel(bitbuf)($28)
	sh	$0,%gp_rel(bitbuf)($28)
	lw	s138,%gp_rel(bitcount)($28)
	nop
	slt	s139,s138,16
	beq	s139,$0,$L996
	nop
	li	s140,16			# 0x10
	li	s141,-1			# 0xffffffffffffffff
	lui	s142,%hi(inbuf)
	addiu	s143,s142,%lo(inbuf)
	li	s144,8			# 0x8
	j	$L627
	nop
$L997:
	addu	s146,s145,s143
	lbu	s45,0(s146)
	addiu	s147,s145,1
	sw	s147,%gp_rel(inptr)($28)
	sw	s45,%gp_rel(subbitbuf)($28)
$L626:
	sw	s144,%gp_rel(bitcount)($28)
	li	s138,8			# 0x8
	slt	s148,s140,9
	bne	s148,$0,$L970
	nop
$L998:
	lw	s88,%gp_rel(subbitbuf)($28)
$L627:
	subu	s140,s140,s138
	sll	s149,s88,s140
	lhu	s150,%gp_rel(bitbuf)($28)
	nop
	or	s151,s149,s150
	sh	s151,%gp_rel(bitbuf)($28)
	lw	s145,%gp_rel(inptr)($28)
	lw	s152,%gp_rel(insize)($28)
	nop
	sltu	s153,s145,s152
	bne	s153,$0,$L997
	nop
	li	s154,1			# 0x1
	move	$4,s154
	move	$5,s45
	move	$6,s51
	move	$7,s89
	jal	fill_inbuf
	nop
	move	s155,$2
	sw	s155,%gp_rel(subbitbuf)($28)
	bne	s155,s141,$L626
	nop
	sw	$0,%gp_rel(subbitbuf)($28)
	sw	s144,%gp_rel(bitcount)($28)
	li	s138,8			# 0x8
	slt	s156,s140,9
	beq	s156,$0,$L998
	nop
$L970:
	lw	s88,%gp_rel(subbitbuf)($28)
$L624:
	subu	s157,s138,s140
	sw	s157,%gp_rel(bitcount)($28)
	srl	s158,s88,s157
	lhu	s159,%gp_rel(bitbuf)($28)
	nop
	or	s160,s158,s159
	sh	s160,%gp_rel(bitbuf)($28)
	sw	s137,%gp_rel(blocksize)($28)
	bne	s137,$0,$L628
	nop
	li	s161,1			# 0x1
	sw	s161,%gp_rel(done)($28)
	lw	s162,%gp_rel(test)($28)
	nop
	bne	s162,$0,$L708
	nop
$L990:
	beq	s47,$0,$L708
	nop
	lui	s163,%hi(window)
	addiu	s164,s163,%lo(window)
	move	s165,s47
	move	$4,s2
	move	$5,s164
	move	$6,s165
	move	$7,s163
	jal	write_buf
	nop
	j	$L708
	nop
$L690:
	addiu	s166,s98,-253
	sw	s166,%gp_rel(j)($28)
	srl	s167,s51,8
	sll	s168,s167,1
	lui	s169,%hi(pt_table)
	addiu	s170,s169,%lo(pt_table)
	addu	s171,s168,s170
	lhu	s172,0(s171)
	nop
	sltu	s173,s172,14
	bne	s173,$0,$L692
	nop
	li	s174,128			# 0x80
	lui	s175,%hi(prev)
	addiu	s176,s175,%lo(prev)
	li	s177,32768			# 0x8000
	j	$L695
	nop
$L999:
	addu	s178,s172,s177
	sll	s179,s178,1
	addu	s180,s176,s179
	lhu	s172,0(s180)
	nop
	sltu	s181,s172,14
	bne	s181,$0,$L692
	nop
$L1000:
	srl	s174,s174,1
$L695:
	and	s182,s174,s51
	bne	s182,$0,$L999
	nop
	sll	s183,s172,1
	addu	s184,s183,s176
	lhu	s172,0(s184)
	nop
	sltu	s185,s172,14
	beq	s185,$0,$L1000
	nop
$L692:
	lui	s186,%hi(pt_len)
	addiu	s187,s186,%lo(pt_len)
	addu	s188,s172,s187
	lbu	s189,0(s188)
	nop
	sll	s190,s51,s189
	sh	s190,%gp_rel(bitbuf)($28)
	slt	s191,s45,s189
	beq	s191,$0,$L696
	nop
	lui	s51,%hi(inbuf)
	addiu	s192,s51,%lo(inbuf)
	li	s193,-1			# 0xffffffffffffffff
	li	s194,8			# 0x8
	j	$L982
	nop
$L1001:
	addu	s196,s195,s192
	lbu	s197,0(s196)
	addiu	s198,s195,1
	sw	s198,%gp_rel(inptr)($28)
	sw	s197,%gp_rel(subbitbuf)($28)
$L698:
	sw	s194,%gp_rel(bitcount)($28)
	li	s45,8			# 0x8
	slt	s199,s189,9
	bne	s199,$0,$L981
	nop
$L1002:
	lw	s88,%gp_rel(subbitbuf)($28)
$L982:
	subu	s189,s189,s45
	sll	s200,s88,s189
	lhu	s201,%gp_rel(bitbuf)($28)
	nop
	or	s202,s200,s201
	sh	s202,%gp_rel(bitbuf)($28)
	lw	s195,%gp_rel(inptr)($28)
	lw	s203,%gp_rel(insize)($28)
	nop
	sltu	s204,s195,s203
	bne	s204,$0,$L1001
	nop
	li	s205,1			# 0x1
	move	$4,s205
	move	$5,s204
	move	$6,s51
	move	$7,s191
	jal	fill_inbuf
	nop
	move	s206,$2
	sw	s206,%gp_rel(subbitbuf)($28)
	bne	s206,s193,$L698
	nop
	sw	$0,%gp_rel(subbitbuf)($28)
	sw	s194,%gp_rel(bitcount)($28)
	li	s45,8			# 0x8
	slt	s207,s189,9
	beq	s207,$0,$L1002
	nop
$L981:
	lw	s88,%gp_rel(subbitbuf)($28)
$L696:
	subu	s208,s45,s189
	sw	s208,%gp_rel(bitcount)($28)
	srl	s209,s88,s208
	lhu	s210,%gp_rel(bitbuf)($28)
	nop
	or	s211,s209,s210
	andi	s212,s211,0xffff
	sh	s212,%gp_rel(bitbuf)($28)
	bne	s172,$0,$L1003
	nop
$L700:
	addiu	s213,s47,-1
	subu	s214,s213,s172
	andi	s215,s214,0x1fff
	sw	s215,%gp_rel(i.2562)($28)
	lw	s45,%gp_rel(j)($28)
	lui	s216,%hi(window)
	addiu	s217,s216,%lo(window)
	addu	s51,s217,s47
	li	s218,8192			# 0x2000
	andi	s89,s45,0x3
	beq	s89,$0,$L706
	nop
	addiu	s45,s45,-1
	bltz	s45,$L985
	nop
	addu	s219,s217,s215
	lbu	s220,0(s219)
	nop
	sb	s220,0(s51)
	addiu	s221,s215,1
	andi	s215,s221,0x1fff
	addiu	s47,s47,1
	addiu	s51,s51,1
	beq	s47,s218,$L986
	nop
	li	s222,1			# 0x1
	beq	s89,s222,$L706
	nop
	li	s223,2			# 0x2
	beq	s89,s223,$L923
	nop
	addiu	s45,s45,-1
	addu	s224,s217,s215
	lbu	s225,0(s224)
	nop
	sb	s225,0(s51)
	addiu	s226,s215,1
	andi	s215,s226,0x1fff
	addiu	s47,s47,1
	addiu	s51,s51,1
	beq	s47,s218,$L986
	nop
$L923:
	addiu	s45,s45,-1
	addu	s227,s217,s215
	lbu	s228,0(s227)
	nop
	sb	s228,0(s51)
	addiu	s229,s215,1
	andi	s215,s229,0x1fff
	addiu	s47,s47,1
	addiu	s51,s51,1
	beq	s47,s218,$L986
	nop
$L706:
	addiu	s45,s45,-1
	move	s230,s45
	bltz	s45,$L985
	nop
	addu	s231,s217,s215
	lbu	s232,0(s231)
	nop
	sb	s232,0(s51)
	addiu	s233,s215,1
	andi	s215,s233,0x1fff
	addiu	s47,s47,1
	move	s89,s47
	beq	s47,s218,$L986
	nop
	addiu	s45,s45,-1
	addu	s234,s217,s215
	lbu	s235,0(s234)
	nop
	sb	s235,1(s51)
	addiu	s236,s215,1
	andi	s215,s236,0x1fff
	addiu	s47,s47,1
	beq	s47,s218,$L986
	nop
	addiu	s45,s230,-2
	addu	s237,s217,s215
	lbu	s238,0(s237)
	nop
	sb	s238,2(s51)
	addiu	s239,s215,1
	andi	s215,s239,0x1fff
	addiu	s47,s89,2
	beq	s47,s218,$L986
	nop
	addiu	s45,s230,-3
	addu	s240,s217,s215
	lbu	s241,0(s240)
	nop
	sb	s241,3(s51)
	addiu	s242,s215,1
	andi	s215,s242,0x1fff
	addiu	s47,s89,3
	addiu	s51,s51,4
	bne	s47,s218,$L706
	nop
$L986:
	sw	s215,%gp_rel(i.2562)($28)
	sw	s45,%gp_rel(j)($28)
	j	$L629
	nop
$L1003:
	addiu	s243,s172,-1
	sll	s244,s212,s243
	sh	s244,%gp_rel(bitbuf)($28)
	slt	s245,s208,s243
	beq	s245,$0,$L1004
	nop
	move	s246,s243
	li	s247,-1			# 0xffffffffffffffff
	lui	s248,%hi(inbuf)
	addiu	s249,s248,%lo(inbuf)
	li	s250,8			# 0x8
	j	$L705
	nop
$L1005:
	addu	s252,s251,s249
	lbu	s253,0(s252)
	addiu	s51,s251,1
	sw	s51,%gp_rel(inptr)($28)
	sw	s253,%gp_rel(subbitbuf)($28)
$L704:
	sw	s250,%gp_rel(bitcount)($28)
	li	s208,8			# 0x8
	slt	s254,s246,9
	bne	s254,$0,$L983
	nop
$L1006:
	lw	s88,%gp_rel(subbitbuf)($28)
$L705:
	subu	s246,s246,s208
	sll	s255,s88,s246
	lhu	s256,%gp_rel(bitbuf)($28)
	nop
	or	s257,s255,s256
	sh	s257,%gp_rel(bitbuf)($28)
	lw	s251,%gp_rel(inptr)($28)
	lw	s258,%gp_rel(insize)($28)
	nop
	sltu	s259,s251,s258
	bne	s259,$0,$L1005
	nop
	li	s260,1			# 0x1
	move	$4,s260
	move	$5,s208
	move	$6,s51
	move	$7,s258
	jal	fill_inbuf
	nop
	move	s261,$2
	sw	s261,%gp_rel(subbitbuf)($28)
	bne	s261,s247,$L704
	nop
	sw	$0,%gp_rel(subbitbuf)($28)
	sw	s250,%gp_rel(bitcount)($28)
	li	s208,8			# 0x8
	slt	s262,s246,9
	beq	s262,$0,$L1006
	nop
$L983:
	lw	s88,%gp_rel(subbitbuf)($28)
$L702:
	subu	s263,s208,s246
	sw	s263,%gp_rel(bitcount)($28)
	srl	s264,s88,s263
	lhu	s265,%gp_rel(bitbuf)($28)
	nop
	or	s266,s264,s265
	sh	s266,%gp_rel(bitbuf)($28)
	li	s267,16			# 0x10
	subu	s268,s267,s243
	sra	s269,s212,s268
	li	s270,1			# 0x1
	sll	s271,s270,s243
	addu	s172,s269,s271
	j	$L700
	nop
$L985:
	sw	s215,%gp_rel(i.2562)($28)
	sw	s45,%gp_rel(j)($28)
	j	$L980
	nop
$L628:
	li	s272,19			# 0x13
	li	s273,5			# 0x5
	li	s274,3			# 0x3
	move	$4,s272
	move	$5,s273
	move	$6,s274
	move	$7,s89
	jal	read_pt_len
	nop
	lhu	s275,%gp_rel(bitbuf)($28)
	nop
	sra	s276,s275,7
	sll	s277,s275,9
	sh	s277,%gp_rel(bitbuf)($28)
	lw	s278,%gp_rel(bitcount)($28)
	nop
	slt	s279,s278,9
	beq	s279,$0,$L1007
	nop
	li	s280,9			# 0x9
	li	s281,-1			# 0xffffffffffffffff
	lui	s282,%hi(inbuf)
	addiu	s283,s282,%lo(inbuf)
	li	s284,8			# 0x8
	j	$L634
	nop
$L1008:
	addu	s286,s285,s283
	lbu	s287,0(s286)
	addiu	s288,s285,1
	sw	s288,%gp_rel(inptr)($28)
	sw	s287,%gp_rel(subbitbuf)($28)
$L633:
	sw	s284,%gp_rel(bitcount)($28)
	li	s278,8			# 0x8
	slt	s289,s280,9
	bne	s289,$0,$L631
	nop
$L634:
	subu	s280,s280,s278
	lw	s290,%gp_rel(subbitbuf)($28)
	nop
	sll	s291,s290,s280
	lhu	s292,%gp_rel(bitbuf)($28)
	nop
	or	s293,s291,s292
	sh	s293,%gp_rel(bitbuf)($28)
	lw	s285,%gp_rel(inptr)($28)
	lw	s294,%gp_rel(insize)($28)
	nop
	sltu	s295,s285,s294
	bne	s295,$0,$L1008
	nop
	li	s296,1			# 0x1
	move	$4,s296
	move	$5,s289
	move	$7,s295
	jal	fill_inbuf
	nop
	move	s297,$2
	sw	s297,%gp_rel(subbitbuf)($28)
	bne	s297,s281,$L633
	nop
	sw	$0,%gp_rel(subbitbuf)($28)
	sw	s284,%gp_rel(bitcount)($28)
	li	s278,8			# 0x8
	slt	s289,s280,9
	beq	s289,$0,$L634
	nop
$L631:
	lw	s298,%gp_rel(subbitbuf)($28)
	subu	s299,s278,s280
	sw	s299,%gp_rel(bitcount)($28)
	srl	s300,s298,s299
	lhu	s301,%gp_rel(bitbuf)($28)
	nop
	or	s302,s300,s301
	andi	s303,s302,0xffff
	sh	s303,%gp_rel(bitbuf)($28)
	beq	s276,$0,$L1009
	nop
	move	s304,$0
	lui	s305,%hi(inbuf)
	addiu	s306,s305,%lo(inbuf)
	li	s307,-1			# 0xffffffffffffffff
	li	s308,8			# 0x8
$L679:
	lhu	s309,%gp_rel(bitbuf)($28)
	nop
	srl	s310,s309,8
	sll	s311,s310,1
	lui	s312,%hi(pt_table)
	addiu	s313,s312,%lo(pt_table)
	addu	s314,s311,s313
	lhu	s315,0(s314)
	nop
	slt	s316,s315,19
	bne	s316,$0,$L654
	nop
	li	s317,128			# 0x80
	j	$L657
	nop
$L1010:
	li	s318,32768			# 0x8000
	addu	s319,s315,s318
	sll	s320,s319,1
	lui	s321,%hi(prev)
	addiu	s322,s321,%lo(prev)
	addu	s323,s322,s320
	lhu	s315,0(s323)
	nop
	slt	s324,s315,19
	bne	s324,$0,$L654
	nop
$L1011:
	srl	s317,s317,1
$L657:
	and	s325,s317,s309
	bne	s325,$0,$L1010
	nop
	sll	s326,s315,1
	lui	s327,%hi(prev)
	addiu	s328,s327,%lo(prev)
	addu	s329,s326,s328
	lhu	s315,0(s329)
	nop
	slt	s330,s315,19
	beq	s330,$0,$L1011
	nop
$L654:
	lui	s331,%hi(pt_len)
	addiu	s332,s331,%lo(pt_len)
	addu	s333,s315,s332
	lbu	s334,0(s333)
	nop
	sll	s335,s309,s334
	sh	s335,%gp_rel(bitbuf)($28)
	lw	s336,%gp_rel(bitcount)($28)
	nop
	slt	s337,s336,s334
	bne	s337,$0,$L975
	nop
	j	$L658
	nop
$L1012:
	addu	s339,s338,s306
	lbu	s340,0(s339)
	addiu	s341,s338,1
	sw	s341,%gp_rel(inptr)($28)
	sw	s340,%gp_rel(subbitbuf)($28)
$L660:
	sw	s308,%gp_rel(bitcount)($28)
	li	s336,8			# 0x8
	slt	s342,s334,9
	bne	s342,$0,$L974
	nop
$L1013:
	lw	s298,%gp_rel(subbitbuf)($28)
$L975:
	subu	s334,s334,s336
	sll	s343,s298,s334
	lhu	s344,%gp_rel(bitbuf)($28)
	nop
	or	s345,s343,s344
	sh	s345,%gp_rel(bitbuf)($28)
	lw	s338,%gp_rel(inptr)($28)
	lw	s346,%gp_rel(insize)($28)
	nop
	sltu	s347,s338,s346
	bne	s347,$0,$L1012
	nop
	li	s348,1			# 0x1
	move	$4,s348
	move	$5,s347
	move	$6,s331
	move	$7,s333
	jal	fill_inbuf
	nop
	move	s349,$2
	sw	s349,%gp_rel(subbitbuf)($28)
	bne	s349,s307,$L660
	nop
	sw	$0,%gp_rel(subbitbuf)($28)
	sw	s308,%gp_rel(bitcount)($28)
	li	s336,8			# 0x8
	slt	s350,s334,9
	beq	s350,$0,$L1013
	nop
$L974:
	lw	s298,%gp_rel(subbitbuf)($28)
$L658:
	subu	s351,s336,s334
	sw	s351,%gp_rel(bitcount)($28)
	srl	s352,s298,s351
	lhu	s353,%gp_rel(bitbuf)($28)
	nop
	or	s354,s352,s353
	andi	s355,s354,0xffff
	sh	s355,%gp_rel(bitbuf)($28)
	slt	s356,s315,3
	beq	s356,$0,$L662
	nop
	beq	s315,$0,$L677
	nop
	li	s357,1			# 0x1
	beq	s315,s357,$L1014
	nop
	sll	s358,s355,9
	sh	s358,%gp_rel(bitbuf)($28)
	slt	s359,s351,9
	beq	s359,$0,$L1015
	nop
	li	s360,9			# 0x9
	j	$L676
	nop
$L1016:
	addu	s362,s361,s306
	lbu	s363,0(s362)
	addiu	s364,s361,1
	sw	s364,%gp_rel(inptr)($28)
	sw	s363,%gp_rel(subbitbuf)($28)
$L675:
	sw	s308,%gp_rel(bitcount)($28)
	li	s351,8			# 0x8
	slt	s365,s360,9
	bne	s365,$0,$L977
	nop
$L1017:
	lw	s298,%gp_rel(subbitbuf)($28)
$L676:
	subu	s360,s360,s351
	sll	s366,s298,s360
	lhu	s367,%gp_rel(bitbuf)($28)
	nop
	or	s368,s366,s367
	sh	s368,%gp_rel(bitbuf)($28)
	lw	s361,%gp_rel(inptr)($28)
	lw	s369,%gp_rel(insize)($28)
	nop
	sltu	s370,s361,s369
	bne	s370,$0,$L1016
	nop
	li	s371,1			# 0x1
	move	$4,s371
	move	$5,s298
	move	$6,s366
	move	$7,s368
	jal	fill_inbuf
	nop
	move	s372,$2
	sw	s372,%gp_rel(subbitbuf)($28)
	bne	s372,s307,$L675
	nop
	sw	$0,%gp_rel(subbitbuf)($28)
	sw	s308,%gp_rel(bitcount)($28)
	li	s351,8			# 0x8
	slt	s373,s360,9
	beq	s373,$0,$L1017
	nop
$L977:
	lw	s298,%gp_rel(subbitbuf)($28)
$L673:
	subu	s374,s351,s360
	sw	s374,%gp_rel(bitcount)($28)
	srl	s375,s298,s374
	lhu	s376,%gp_rel(bitbuf)($28)
	nop
	or	s377,s375,s376
	sh	s377,%gp_rel(bitbuf)($28)
	sra	s378,s355,7
	addiu	s379,s378,20
	addiu	s315,s379,-1
$L677:
	addu	s380,s31,s304
	andi	s381,s315,0x7
	sb	$0,0(s380)
	addiu	s304,s304,1
	addiu	s382,s315,-1
	addiu	s383,s380,1
	bltz	s382,$L678
	nop
	beq	s381,$0,$L664
	nop
	li	s384,1			# 0x1
	beq	s381,s384,$L962
	nop
	li	s385,2			# 0x2
	beq	s381,s385,$L963
	nop
	li	s386,3			# 0x3
	beq	s381,s386,$L964
	nop
	li	s387,4			# 0x4
	beq	s381,s387,$L965
	nop
	li	s388,5			# 0x5
	beq	s381,s388,$L966
	nop
	li	s389,6			# 0x6
	beq	s381,s389,$L967
	nop
	sb	$0,1(s380)
	addiu	s304,s304,1
	addiu	s382,s315,-2
	addiu	s383,s380,2
$L967:
	sb	$0,0(s383)
	addiu	s304,s304,1
	addiu	s382,s382,-1
	addiu	s383,s383,1
$L966:
	sb	$0,0(s383)
	addiu	s304,s304,1
	addiu	s382,s382,-1
	addiu	s383,s383,1
$L965:
	sb	$0,0(s383)
	addiu	s304,s304,1
	addiu	s382,s382,-1
	addiu	s383,s383,1
$L964:
	sb	$0,0(s383)
	addiu	s304,s304,1
	addiu	s382,s382,-1
	addiu	s383,s383,1
$L963:
	sb	$0,0(s383)
	addiu	s304,s304,1
	addiu	s382,s382,-1
	addiu	s383,s383,1
$L962:
	sb	$0,0(s383)
	addiu	s304,s304,1
	addiu	s382,s382,-1
	addiu	s383,s383,1
	bltz	s382,$L678
	nop
$L664:
	sb	$0,0(s383)
	sb	$0,1(s383)
	sb	$0,2(s383)
	sb	$0,3(s383)
	sb	$0,4(s383)
	sb	$0,5(s383)
	sb	$0,6(s383)
	sb	$0,7(s383)
	addiu	s304,s304,8
	addiu	s382,s382,-8
	addiu	s383,s383,8
	bgez	s382,$L664
	nop
	slt	s390,s304,s276
	bne	s390,$0,$L679
	nop
$L1018:
	slt	s391,s304,510
	beq	s391,$0,$L680
	nop
	addu	s392,s31,s304
	li	s393,509			# 0x1fd
	subu	s394,s393,s304
	andi	s395,s394,0x7
	sb	$0,0(s392)
	addiu	s396,s304,1
	addiu	s397,s392,1
	slt	s398,s396,510
	beq	s398,$0,$L680
	nop
	beq	s395,$0,$L681
	nop
	li	s399,1			# 0x1
	beq	s395,s399,$L956
	nop
	li	s400,2			# 0x2
	beq	s395,s400,$L957
	nop
	li	s401,3			# 0x3
	beq	s395,s401,$L958
	nop
	li	s402,4			# 0x4
	beq	s395,s402,$L959
	nop
	li	s403,5			# 0x5
	beq	s395,s403,$L960
	nop
	li	s404,6			# 0x6
	beq	s395,s404,$L961
	nop
	sb	$0,1(s392)
	addiu	s396,s396,1
	addiu	s397,s397,1
$L961:
	sb	$0,0(s397)
	addiu	s396,s396,1
	addiu	s397,s397,1
$L960:
	sb	$0,0(s397)
	addiu	s396,s396,1
	addiu	s397,s397,1
$L959:
	sb	$0,0(s397)
	addiu	s396,s396,1
	addiu	s397,s397,1
$L958:
	sb	$0,0(s397)
	addiu	s396,s396,1
	addiu	s397,s397,1
$L957:
	sb	$0,0(s397)
	addiu	s396,s396,1
	addiu	s397,s397,1
$L956:
	sb	$0,0(s397)
	addiu	s396,s396,1
	addiu	s397,s397,1
	slt	s405,s396,510
	beq	s405,$0,$L680
	nop
$L681:
	sb	$0,0(s397)
	sb	$0,1(s397)
	sb	$0,2(s397)
	sb	$0,3(s397)
	sb	$0,4(s397)
	sb	$0,5(s397)
	sb	$0,6(s397)
	sb	$0,7(s397)
	addiu	s396,s396,8
	addiu	s397,s397,8
	slt	s406,s396,510
	bne	s406,$0,$L681
	nop
$L680:
	li	s407,510			# 0x1fe
	move	s408,s31
	li	s409,12			# 0xc
	lui	s410,%hi(d_buf)
	addiu	s411,s410,%lo(d_buf)
	move	$4,s407
	move	$5,s408
	move	$6,s409
	move	$7,s411
	jal	make_table
	nop
	lui	s412,%hi(d_buf)
	addiu	s92,s412,%lo(d_buf)
$L652:
	li	s413,14			# 0xe
	li	s414,4			# 0x4
	li	s415,-1			# 0xffffffffffffffff
	move	$4,s413
	move	$5,s414
	move	$6,s415
	move	$7,s416
	jal	read_pt_len
	nop
	lw	s88,%gp_rel(subbitbuf)($28)
	lw	s90,%gp_rel(blocksize)($28)
	j	$L622
	nop
$L662:
	addu	s417,s304,s31
	addiu	s418,s315,-2
	sb	s418,0(s417)
	addiu	s304,s304,1
$L678:
	slt	s419,s304,s276
	bne	s419,$0,$L679
	nop
	j	$L1018
	nop
$L1014:
	sll	s420,s355,4
	sh	s420,%gp_rel(bitbuf)($28)
	slt	s421,s351,4
	beq	s421,$0,$L1019
	nop
	li	s422,4			# 0x4
	j	$L670
	nop
$L1020:
	addu	s424,s423,s306
	lbu	s425,0(s424)
	addiu	s426,s423,1
	sw	s426,%gp_rel(inptr)($28)
	sw	s425,%gp_rel(subbitbuf)($28)
$L669:
	sw	s308,%gp_rel(bitcount)($28)
	li	s351,8			# 0x8
	slt	s427,s422,9
	bne	s427,$0,$L976
	nop
$L1021:
	lw	s298,%gp_rel(subbitbuf)($28)
$L670:
	subu	s422,s422,s351
	sll	s428,s298,s422
	lhu	s429,%gp_rel(bitbuf)($28)
	nop
	or	s430,s428,s429
	sh	s430,%gp_rel(bitbuf)($28)
	lw	s423,%gp_rel(inptr)($28)
	lw	s431,%gp_rel(insize)($28)
	nop
	sltu	s432,s423,s431
	bne	s432,$0,$L1020
	nop
	li	s433,1			# 0x1
	move	$4,s433
	move	$5,s429
	move	$6,s431
	move	$7,s432
	jal	fill_inbuf
	nop
	move	s434,$2
	sw	s434,%gp_rel(subbitbuf)($28)
	bne	s434,s307,$L669
	nop
	sw	$0,%gp_rel(subbitbuf)($28)
	sw	s308,%gp_rel(bitcount)($28)
	li	s351,8			# 0x8
	slt	s435,s422,9
	beq	s435,$0,$L1021
	nop
$L976:
	lw	s298,%gp_rel(subbitbuf)($28)
$L667:
	subu	s436,s351,s422
	sw	s436,%gp_rel(bitcount)($28)
	srl	s437,s298,s436
	lhu	s438,%gp_rel(bitbuf)($28)
	nop
	or	s439,s437,s438
	sh	s439,%gp_rel(bitbuf)($28)
	sra	s440,s355,12
	addiu	s441,s440,3
	addiu	s315,s441,-1
	j	$L677
	nop
$L1009:
	sll	s442,s303,9
	sh	s442,%gp_rel(bitbuf)($28)
	slt	s443,s299,9
	beq	s443,$0,$L1022
	nop
	li	s444,9			# 0x9
	li	s445,-1			# 0xffffffffffffffff
	lui	s446,%hi(inbuf)
	addiu	s447,s446,%lo(inbuf)
	li	s448,8			# 0x8
	j	$L640
	nop
$L1023:
	addu	s450,s449,s447
	lbu	s295,0(s450)
	addiu	s451,s449,1
	sw	s451,%gp_rel(inptr)($28)
	sw	s295,%gp_rel(subbitbuf)($28)
$L639:
	sw	s448,%gp_rel(bitcount)($28)
	li	s299,8			# 0x8
	slt	s452,s444,9
	bne	s452,$0,$L971
	nop
$L1024:
	lw	s298,%gp_rel(subbitbuf)($28)
$L640:
	subu	s444,s444,s299
	sll	s453,s298,s444
	lhu	s454,%gp_rel(bitbuf)($28)
	nop
	or	s455,s453,s454
	sh	s455,%gp_rel(bitbuf)($28)
	lw	s449,%gp_rel(inptr)($28)
	lw	s456,%gp_rel(insize)($28)
	nop
	sltu	s457,s449,s456
	bne	s457,$0,$L1023
	nop
	li	s458,1			# 0x1
	move	$4,s458
	move	$5,s298
	move	$6,s442
	move	$7,s295
	jal	fill_inbuf
	nop
	move	s459,$2
	sw	s459,%gp_rel(subbitbuf)($28)
	bne	s459,s445,$L639
	nop
	sw	$0,%gp_rel(subbitbuf)($28)
	sw	s448,%gp_rel(bitcount)($28)
	li	s299,8			# 0x8
	slt	s460,s444,9
	beq	s460,$0,$L1024
	nop
$L971:
	lw	s298,%gp_rel(subbitbuf)($28)
$L637:
	subu	s461,s299,s444
	sw	s461,%gp_rel(bitcount)($28)
	srl	s462,s298,s461
	lhu	s463,%gp_rel(bitbuf)($28)
	nop
	or	s464,s462,s463
	sh	s464,%gp_rel(bitbuf)($28)
	beq	s33,$0,$L1025
	nop
	move	s465,s33
	addiu	s466,s33,-1
	andi	s467,s466,0x7
	sb	$0,0(s31)
	li	s468,1			# 0x1
	li	s469,509			# 0x1fd
	sltu	s470,s468,s465
	beq	s470,$0,$L642
	nop
	beq	s467,$0,$L643
	nop
	beq	s467,s468,$L950
	nop
	li	s471,2			# 0x2
	beq	s467,s471,$L951
	nop
	li	s472,3			# 0x3
	beq	s467,s472,$L952
	nop
	li	s473,4			# 0x4
	beq	s467,s473,$L953
	nop
	li	s474,5			# 0x5
	beq	s467,s474,$L954
	nop
	li	s475,6			# 0x6
	beq	s467,s475,$L955
	nop
	sb	$0,1(s31)
	li	s468,2			# 0x2
$L955:
	addu	s476,s31,s468
	sb	$0,0(s476)
	addiu	s468,s468,1
$L954:
	addu	s477,s31,s468
	sb	$0,0(s477)
	addiu	s468,s468,1
$L953:
	addu	s478,s31,s468
	sb	$0,0(s478)
	addiu	s468,s468,1
$L952:
	addu	s479,s31,s468
	sb	$0,0(s479)
	addiu	s468,s468,1
$L951:
	addu	s480,s31,s468
	sb	$0,0(s480)
	addiu	s468,s468,1
$L950:
	addu	s481,s31,s468
	sb	$0,0(s481)
	addiu	s468,s468,1
	li	s482,510			# 0x1fe
	subu	s469,s482,s468
	sltu	s483,s468,s33
	beq	s483,$0,$L642
	nop
$L643:
	addu	s484,s31,s468
	sb	$0,0(s484)
	sb	$0,1(s484)
	sb	$0,2(s484)
	sb	$0,3(s484)
	sb	$0,4(s484)
	sb	$0,5(s484)
	sb	$0,6(s484)
	sb	$0,7(s484)
	addiu	s468,s468,8
	li	s485,510			# 0x1fe
	subu	s469,s485,s468
	sltu	s486,s468,s33
	bne	s486,$0,$L643
	nop
$L642:
	beq	s89,$0,$L644
	nop
	addu	s487,s31,s33
	addiu	s488,s36,-1
	andi	s489,s488,0x7
	sw	$0,0(s487)
	li	s490,1			# 0x1
	addiu	s491,s487,4
	sltu	s492,s490,s36
	beq	s492,$0,$L972
	nop
	beq	s489,$0,$L645
	nop
	beq	s489,s490,$L944
	nop
	li	s493,2			# 0x2
	beq	s489,s493,$L945
	nop
	li	s494,3			# 0x3
	beq	s489,s494,$L946
	nop
	li	s495,4			# 0x4
	beq	s489,s495,$L947
	nop
	li	s496,5			# 0x5
	beq	s489,s496,$L948
	nop
	li	s497,6			# 0x6
	beq	s489,s497,$L949
	nop
	sw	$0,4(s487)
	li	s490,2			# 0x2
	addiu	s491,s487,8
$L949:
	sw	$0,0(s491)
	addiu	s490,s490,1
	addiu	s491,s491,4
$L948:
	sw	$0,0(s491)
	addiu	s490,s490,1
	addiu	s491,s491,4
$L947:
	sw	$0,0(s491)
	addiu	s490,s490,1
	addiu	s491,s491,4
$L946:
	sw	$0,0(s491)
	addiu	s490,s490,1
	addiu	s491,s491,4
$L945:
	sw	$0,0(s491)
	addiu	s490,s490,1
	addiu	s491,s491,4
$L944:
	sw	$0,0(s491)
	addiu	s490,s490,1
	addiu	s491,s491,4
	sltu	s498,s490,s36
	beq	s498,$0,$L972
	nop
$L645:
	sw	$0,0(s491)
	sw	$0,4(s491)
	sw	$0,8(s491)
	sw	$0,12(s491)
	sw	$0,16(s491)
	sw	$0,20(s491)
	sw	$0,24(s491)
	sw	$0,28(s491)
	addiu	s490,s490,8
	addiu	s491,s491,32
	sltu	s499,s490,s36
	bne	s499,$0,$L645
	nop
$L972:
	subu	s469,s469,s89
	addu	s468,s468,s89
	beq	s35,s89,$L646
	nop
$L644:
	addu	s500,s31,s468
	addiu	s501,s469,-1
	andi	s502,s501,0x7
	sb	$0,0(s500)
	move	s503,s501
	addiu	s504,s500,1
	beq	s501,$0,$L646
	nop
	beq	s502,$0,$L647
	nop
	li	s505,1			# 0x1
	beq	s502,s505,$L938
	nop
	li	s506,2			# 0x2
	beq	s502,s506,$L939
	nop
	li	s507,3			# 0x3
	beq	s502,s507,$L940
	nop
	li	s508,4			# 0x4
	beq	s502,s508,$L941
	nop
	li	s509,5			# 0x5
	beq	s502,s509,$L942
	nop
	li	s510,6			# 0x6
	beq	s502,s510,$L943
	nop
	sb	$0,1(s500)
	addiu	s503,s469,-2
	addiu	s504,s500,2
$L943:
	sb	$0,0(s504)
	addiu	s503,s503,-1
	addiu	s504,s504,1
$L942:
	sb	$0,0(s504)
	addiu	s503,s503,-1
	addiu	s504,s504,1
$L941:
	sb	$0,0(s504)
	addiu	s503,s503,-1
	addiu	s504,s504,1
$L940:
	sb	$0,0(s504)
	addiu	s503,s503,-1
	addiu	s504,s504,1
$L939:
	sb	$0,0(s504)
	addiu	s503,s503,-1
	addiu	s504,s504,1
$L938:
	sb	$0,0(s504)
	addiu	s503,s503,-1
	addiu	s504,s504,1
	beq	s503,$0,$L646
	nop
$L647:
	sb	$0,0(s504)
	sb	$0,1(s504)
	sb	$0,2(s504)
	sb	$0,3(s504)
	sb	$0,4(s504)
	sb	$0,5(s504)
	sb	$0,6(s504)
	sb	$0,7(s504)
	addiu	s503,s503,-8
	addiu	s504,s504,8
	bne	s503,$0,$L647
	nop
$L646:
	srl	s511,s303,7
	lui	s512,%hi(d_buf)
	addiu	s92,s512,%lo(d_buf)
	beq	s40,$0,$L1026
	nop
	lui	s513,%hi(d_buf)
	sh	s511,%lo(d_buf)(s513)
	li	s514,1			# 0x1
	li	s515,4095			# 0xfff
$L649:
	beq	s44,$0,$L650
	nop
	sll	s516,s511,16
	or	s517,s516,s511
	sll	s518,s40,1
	lui	s519,%hi(d_buf)
	addiu	s520,s519,%lo(d_buf)
	addu	s521,s520,s518
	addiu	s522,s43,-1
	andi	s416,s522,0x7
	sw	s517,0(s521)
	li	s523,1			# 0x1
	addiu	s524,s521,4
	sltu	s525,s523,s43
	beq	s525,$0,$L973
	nop
	beq	s416,$0,$L651
	nop
	beq	s416,s523,$L932
	nop
	li	s526,2			# 0x2
	beq	s416,s526,$L933
	nop
	li	s527,3			# 0x3
	beq	s416,s527,$L934
	nop
	li	s528,4			# 0x4
	beq	s416,s528,$L935
	nop
	li	s529,5			# 0x5
	beq	s416,s529,$L936
	nop
	li	s530,6			# 0x6
	beq	s416,s530,$L937
	nop
	sw	s517,4(s521)
	li	s523,2			# 0x2
	addiu	s524,s521,8
$L937:
	sw	s517,0(s524)
	addiu	s523,s523,1
	addiu	s524,s524,4
$L936:
	sw	s517,0(s524)
	addiu	s523,s523,1
	addiu	s524,s524,4
$L935:
	sw	s517,0(s524)
	addiu	s523,s523,1
	addiu	s524,s524,4
$L934:
	sw	s517,0(s524)
	addiu	s523,s523,1
	addiu	s524,s524,4
$L933:
	sw	s517,0(s524)
	addiu	s523,s523,1
	addiu	s524,s524,4
$L932:
	sw	s517,0(s524)
	addiu	s523,s523,1
	addiu	s524,s524,4
	sltu	s416,s523,s43
	beq	s416,$0,$L973
	nop
$L651:
	sw	s517,0(s524)
	sw	s517,4(s524)
	sw	s517,8(s524)
	sw	s517,12(s524)
	sw	s517,16(s524)
	sw	s517,20(s524)
	sw	s517,24(s524)
	sw	s517,28(s524)
	addiu	s523,s523,8
	addiu	s524,s524,32
	sltu	s531,s523,s43
	bne	s531,$0,$L651
	nop
$L973:
	subu	s515,s515,s44
	addu	s514,s514,s44
	beq	s44,s42,$L652
	nop
$L650:
	sll	s532,s514,1
	lui	s533,%hi(d_buf)
	addiu	s534,s533,%lo(d_buf)
	addu	s416,s534,s532
	addiu	s535,s515,-1
	andi	s536,s535,0x7
	sh	s511,0(s416)
	move	s537,s535
	addiu	s538,s416,2
	beq	s535,$0,$L652
	nop
	beq	s536,$0,$L653
	nop
	li	s539,1			# 0x1
	beq	s536,s539,$L926
	nop
	li	s540,2			# 0x2
	beq	s536,s540,$L927
	nop
	li	s541,3			# 0x3
	beq	s536,s541,$L928
	nop
	li	s542,4			# 0x4
	beq	s536,s542,$L929
	nop
	li	s543,5			# 0x5
	beq	s536,s543,$L930
	nop
	li	s544,6			# 0x6
	beq	s536,s544,$L931
	nop
	sh	s511,2(s416)
	addiu	s537,s515,-2
	addiu	s538,s416,4
$L931:
	sh	s511,0(s538)
	addiu	s537,s537,-1
	addiu	s538,s538,2
$L930:
	sh	s511,0(s538)
	addiu	s537,s537,-1
	addiu	s538,s538,2
$L929:
	sh	s511,0(s538)
	addiu	s537,s537,-1
	addiu	s538,s538,2
$L928:
	sh	s511,0(s538)
	addiu	s537,s537,-1
	addiu	s538,s538,2
$L927:
	sh	s511,0(s538)
	addiu	s537,s537,-1
	addiu	s538,s538,2
$L926:
	sh	s511,0(s538)
	addiu	s537,s537,-1
	addiu	s538,s538,2
	beq	s537,$0,$L652
	nop
$L653:
	sh	s511,0(s538)
	sh	s511,2(s538)
	sh	s511,4(s538)
	sh	s511,6(s538)
	sh	s511,8(s538)
	sh	s511,10(s538)
	sh	s511,12(s538)
	sh	s511,14(s538)
	addiu	s537,s537,-8
	addiu	s538,s538,16
	bne	s537,$0,$L653
	nop
	j	$L652
	nop
$L996:
	li	s140,16			# 0x10
	j	$L624
	nop
$L1004:
	move	s246,s243
	j	$L702
	nop
$L1015:
	li	s360,9			# 0x9
	j	$L673
	nop
$L1007:
	li	s280,9			# 0x9
	j	$L631
	nop
$L1019:
	li	s422,4			# 0x4
	j	$L667
	nop
$L1022:
	li	s444,9			# 0x9
	j	$L637
	nop
$L1025:
	move	s468,$0
	li	s469,510			# 0x1fe
	j	$L642
	nop
$L1026:
	move	s514,$0
	li	s515,4096			# 0x1000
	j	$L649
	nop
	.set	macro
	.set	reorder
	.end	unlzh
	.size	unlzh, .-unlzh
	.local	i.2562
	.comm	i.2562,4,4
	.local	pt_len
	.comm	pt_len,19,4
	.local	blocksize
	.comm	blocksize,4,4
	.local	pt_table
	.comm	pt_table,512,4
	.local	bitbuf
	.comm	bitbuf,2,2
	.local	subbitbuf
	.comm	subbitbuf,4,4
	.local	bitcount
	.comm	bitcount,4,4
	.local	j
	.comm	j,4,4
	.local	done
	.comm	done,4,4
	.ident	"GCC: (GNU) 4.3.0"
