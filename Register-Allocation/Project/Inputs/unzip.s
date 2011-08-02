	.file	1 "unzip.c"
	.section .mdebug.abi32
	.previous
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC0:
	.ascii	"\012%s: %s: not a valid zip file\012\000"
	.align	2
$LC1:
	.ascii	"\012%s: %s: first entry not deflated or stored -- use un"
	.ascii	"zip\012\000"
	.align	2
$LC2:
	.ascii	"\012%s: %s: encrypted file -- use unzip\012\000"
	.text
	.align	2
	.globl	check_zipfile
	.set	nomips16
	.ent	check_zipfile
check_zipfile:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$31
	addiu	$sp,$sp,-24
	lw	s3,%gp_rel(inptr)($28)
	lui	s4,%hi(inbuf)
	addiu	s5,s4,%lo(inbuf)
	addu	s6,s5,s3
	sw	s1,%gp_rel(ifd)($28)
	lbu	s7,27(s6)
	nop
	sll	s8,s7,8
	lbu	s9,26(s6)
	nop
	or	s10,s8,s9
	lbu	s11,29(s6)
	nop
	sll	s12,s11,8
	lbu	s13,28(s6)
	nop
	or	s14,s12,s13
	addu	s15,s10,s14
	addiu	s16,s15,30
	addu	s17,s16,s3
	sw	s17,%gp_rel(inptr)($28)
	lw	s18,%gp_rel(insize)($28)
	nop
	sltu	s19,s18,s17
	bne	s19,$0,$L2
	nop
	lbu	s20,3(s6)
	nop
	sll	s21,s20,8
	lbu	s22,2(s6)
	nop
	or	s23,s21,s22
	sll	s24,s23,16
	lbu	s25,1(s6)
	nop
	sll	s26,s25,8
	lbu	s27,0(s6)
	nop
	or	s28,s26,s27
	or	s29,s24,s28
	li	s30,67305472			# 0x4030000
	ori	s31,s30,0x4b50
	beq	s29,s31,$L3
	nop
$L2:
	lw	s32,%gp_rel(stderr)($28)
	lui	s33,%hi($LC0)
	addiu	s34,s33,%lo($LC0)
$L8:
	lw	s35,%gp_rel(progname)($28)
	lui	s36,%hi(ifname)
	addiu	s37,s36,%lo(ifname)
	move	$4,s32
	move	$5,s34
	move	$6,s35
	move	$7,s37
	jal	fprintf
	nop
	li	s38,1			# 0x1
	sw	s38,%gp_rel(exit_code)($28)
	addiu	$sp,$sp,24
	move	$2,s38
	j	s2
	nop
$L3:
	lbu	s39,8(s6)
	nop
	sw	s39,%gp_rel(method)($28)
	beq	s39,$0,$L5
	nop
	li	s40,8			# 0x8
	beq	s39,s40,$L5
	nop
	lw	s32,%gp_rel(stderr)($28)
	lui	s41,%hi($LC1)
	addiu	s34,s41,%lo($LC1)
	j	$L8
	nop
$L5:
	lbu	s42,6(s6)
	nop
	andi	s43,s42,0x1
	sw	s43,%gp_rel(decrypt)($28)
	bne	s43,$0,$L10
	nop
	srl	s44,s42,3
	andi	s45,s44,0x1
	sw	s45,%gp_rel(ext_header)($28)
	li	s46,1			# 0x1
	sw	s46,%gp_rel(pkzip)($28)
	move	s47,$0
	addiu	$sp,$sp,24
	move	$2,s47
	j	s2
	nop
$L10:
	lw	s32,%gp_rel(stderr)($28)
	lui	s48,%hi($LC2)
	addiu	s34,s48,%lo($LC2)
	j	$L8
	nop
	.set	macro
	.set	reorder
	.end	check_zipfile
	.size	check_zipfile, .-check_zipfile
	.section	.rodata.str1.4
	.align	2
$LC3:
	.ascii	"out of memory\000"
	.align	2
$LC4:
	.ascii	"invalid compressed data--format violated\000"
	.align	2
$LC5:
	.ascii	"len %ld, siz %ld\012\000"
	.align	2
$LC6:
	.ascii	"invalid compressed data--length mismatch\000"
	.align	2
$LC7:
	.ascii	"internal error, invalid method\000"
	.align	2
$LC8:
	.ascii	"invalid compressed data--crc error\000"
	.align	2
$LC9:
	.ascii	"invalid compressed data--length error\000"
	.align	2
$LC10:
	.ascii	"%s: %s has more than one entry--rest ignored\012\000"
	.align	2
$LC11:
	.ascii	"%s: %s has more than one entry -- unchanged\012\000"
	.text
	.align	2
	.globl	unzip
	.set	nomips16
	.ent	unzip
unzip:
	.frame	$sp,64,$31		# vars= 16, regs= 8/0, args= 16, gp= 0
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$5
	move	s3,$6
	move	s4,$7
	move	s5,$31
	addiu	$sp,$sp,-64
	sw	s1,%gp_rel(ifd)($28)
	sw	s2,%gp_rel(ofd)($28)
	move	s6,$0
	move	s7,$0
	move	$4,s6
	move	$5,s7
	move	$6,s3
	move	$7,s4
	jal	updcrc
	nop
	lw	s8,%gp_rel(pkzip)($28)
	nop
	beq	s8,$0,$L12
	nop
	lw	s9,%gp_rel(ext_header)($28)
	nop
	beq	s9,$0,$L117
	nop
$L12:
	move	s10,$0
	move	s11,$0
	lw	s12,%gp_rel(method)($28)
	li	s13,8			# 0x8
	beq	s12,s13,$L118
	nop
$L14:
	beq	s8,$0,$L17
	nop
	beq	s12,$0,$L119
	nop
$L17:
	lui	s14,%hi($LC7)
	addiu	s15,s14,%lo($LC7)
	move	$4,s15
	move	$5,s16
	move	$6,s8
	move	$7,s17
	jal	error
	nop
$L16:
	lw	s18,%gp_rel(pkzip)($28)
	nop
	bne	s18,$0,$L25
	nop
	lw	s19,%gp_rel(inptr)($28)
	lw	s20,%gp_rel(insize)($28)
	nop
	sltu	s21,s19,s20
	beq	s21,$0,$L26
	nop
	lui	s22,%hi(inbuf)
	addiu	s23,s22,%lo(inbuf)
	addu	s24,s19,s23
	lbu	s25,0(s24)
	addiu	s26,s19,1
	sw	s26,%gp_rel(inptr)($28)
	move	s27,s26
	sltu	s28,s27,s20
	beq	s28,$0,$L28
	nop
$L138:
	lui	s29,%hi(inbuf)
	addiu	s30,s29,%lo(inbuf)
	addu	s31,s27,s30
	lbu	s32,0(s31)
	addiu	s33,s27,1
	sw	s33,%gp_rel(inptr)($28)
	move	s34,s33
	sltu	s35,s34,s20
	beq	s35,$0,$L30
	nop
$L139:
	lui	s36,%hi(inbuf)
	addiu	s37,s36,%lo(inbuf)
	addu	s38,s34,s37
	lbu	s39,0(s38)
	addiu	s40,s34,1
	sw	s40,%gp_rel(inptr)($28)
	move	s41,s40
	sltu	s42,s41,s20
	beq	s42,$0,$L32
	nop
$L140:
	lui	s43,%hi(inbuf)
	addiu	s44,s43,%lo(inbuf)
	addu	s45,s41,s44
	lbu	s46,0(s45)
	addiu	s47,s41,1
	sw	s47,%gp_rel(inptr)($28)
	move	s48,s47
	sltu	s49,s48,s20
	beq	s49,$0,$L34
	nop
$L141:
	lui	s50,%hi(inbuf)
	addiu	s51,s50,%lo(inbuf)
	addu	s52,s48,s51
	lbu	s53,0(s52)
	addiu	s54,s48,1
	sw	s54,%gp_rel(inptr)($28)
	move	s55,s54
	sltu	s56,s55,s20
	beq	s56,$0,$L36
	nop
$L142:
	lui	s57,%hi(inbuf)
	addiu	s58,s57,%lo(inbuf)
	addu	s59,s55,s58
	lbu	s60,0(s59)
	addiu	s61,s55,1
	sw	s61,%gp_rel(inptr)($28)
	move	s62,s61
	sltu	s63,s62,s20
	beq	s63,$0,$L38
	nop
$L143:
	lui	s64,%hi(inbuf)
	addiu	s65,s64,%lo(inbuf)
	addu	s66,s62,s65
	lbu	s67,0(s66)
	addiu	s68,s62,1
	sw	s68,%gp_rel(inptr)($28)
	move	s69,s68
	sltu	s70,s69,s20
	beq	s70,$0,$L40
	nop
$L144:
	lui	s71,%hi(inbuf)
	addiu	s72,s71,%lo(inbuf)
	addu	s73,s69,s72
	lbu	s74,0(s73)
	addiu	s75,s69,1
	sw	s75,%gp_rel(inptr)($28)
$L41:
	sb	s74,23($sp)
	sll	s76,s46,8
	or	s77,s76,s39
	sll	s78,s77,16
	sll	s79,s32,8
	or	s80,s79,s25
	or	s10,s78,s80
	sll	s81,s74,8
	or	s82,s81,s67
	sll	s83,s82,16
	sll	s84,s60,8
	or	s85,s84,s53
	or	s11,s83,s85
$L42:
	lui	s86,%hi(outbuf)
	addiu	s87,s86,%lo(outbuf)
	move	s88,$0
	move	$4,s87
	move	$5,s88
	move	$6,s76
	move	$7,s65
	jal	updcrc
	nop
	move	s89,$2
	beq	s89,s10,$L75
	nop
	lui	s90,%hi($LC8)
	addiu	s91,s90,%lo($LC8)
	move	$4,s91
	jal	error
	nop
$L75:
	lw	s92,%gp_rel(bytes_out)($28)
	nop
	beq	s92,s11,$L76
	nop
	lui	s93,%hi($LC9)
	addiu	s94,s93,%lo($LC9)
	move	$4,s94
	jal	error
	nop
$L76:
	lw	s95,%gp_rel(pkzip)($28)
	nop
	beq	s95,$0,$L77
	nop
	lw	s96,%gp_rel(inptr)($28)
	nop
	addiu	s97,s96,4
	lw	s98,%gp_rel(insize)($28)
	nop
	sltu	s99,s97,s98
	bne	s99,$0,$L120
	nop
$L77:
	sw	$0,%gp_rel(pkzip)($28)
	sw	$0,%gp_rel(ext_header)($28)
	move	s100,$0
$L80:
	addiu	$sp,$sp,64
	move	$2,s100
	j	s5
	nop
$L25:
	lw	s65,%gp_rel(ext_header)($28)
	nop
	beq	s65,$0,$L42
	nop
	lw	s101,%gp_rel(inptr)($28)
	lw	s102,%gp_rel(insize)($28)
	nop
	sltu	s103,s101,s102
	beq	s103,$0,$L43
	nop
	lui	s104,%hi(inbuf)
	addiu	s105,s104,%lo(inbuf)
	addu	s106,s101,s105
	lbu	s107,0(s106)
	addiu	s108,s101,1
	sw	s108,%gp_rel(inptr)($28)
	move	s109,s108
$L44:
	sb	s107,16($sp)
	sltu	s110,s109,s102
	beq	s110,$0,$L45
	nop
	lui	s111,%hi(inbuf)
	addiu	s112,s111,%lo(inbuf)
	addu	s113,s109,s112
	lbu	s114,0(s113)
	addiu	s115,s109,1
	sw	s115,%gp_rel(inptr)($28)
	move	s116,s115
$L46:
	sb	s114,17($sp)
	sltu	s117,s116,s102
	beq	s117,$0,$L47
	nop
	lui	s118,%hi(inbuf)
	addiu	s119,s118,%lo(inbuf)
	addu	s120,s116,s119
	lbu	s121,0(s120)
	addiu	s122,s116,1
	sw	s122,%gp_rel(inptr)($28)
	move	s123,s122
$L48:
	sb	s121,18($sp)
	sltu	s124,s123,s102
	beq	s124,$0,$L49
	nop
	lui	s125,%hi(inbuf)
	addiu	s126,s125,%lo(inbuf)
	addu	s127,s123,s126
	lbu	s128,0(s127)
	addiu	s129,s123,1
	sw	s129,%gp_rel(inptr)($28)
	move	s130,s129
$L50:
	sb	s128,19($sp)
	sltu	s131,s130,s102
	beq	s131,$0,$L51
	nop
	lui	s132,%hi(inbuf)
	addiu	s133,s132,%lo(inbuf)
	addu	s134,s130,s133
	lbu	s135,0(s134)
	addiu	s136,s130,1
	sw	s136,%gp_rel(inptr)($28)
	move	s137,s136
$L52:
	sltu	s138,s137,s102
	beq	s138,$0,$L53
	nop
	lui	s139,%hi(inbuf)
	addiu	s140,s139,%lo(inbuf)
	addu	s141,s137,s140
	lbu	s142,0(s141)
	addiu	s143,s137,1
	sw	s143,%gp_rel(inptr)($28)
	move	s144,s143
$L54:
	sltu	s145,s144,s102
	beq	s145,$0,$L55
	nop
	lui	s146,%hi(inbuf)
	addiu	s147,s146,%lo(inbuf)
	addu	s148,s144,s147
	lbu	s149,0(s148)
	addiu	s150,s144,1
	sw	s150,%gp_rel(inptr)($28)
	move	s151,s150
$L56:
	sltu	s152,s151,s102
	beq	s152,$0,$L57
	nop
	lui	s153,%hi(inbuf)
	addiu	s154,s153,%lo(inbuf)
	addu	s155,s151,s154
	lbu	s156,0(s155)
	addiu	s157,s151,1
	sw	s157,%gp_rel(inptr)($28)
	move	s158,s157
$L58:
	sltu	s159,s158,s102
	beq	s159,$0,$L59
	nop
	lui	s160,%hi(inbuf)
	addiu	s161,s160,%lo(inbuf)
	addu	s162,s158,s161
	lbu	s163,0(s162)
	addiu	s164,s158,1
	sw	s164,%gp_rel(inptr)($28)
	move	s165,s164
$L60:
	sb	s163,24($sp)
	sltu	s166,s165,s102
	beq	s166,$0,$L61
	nop
	lui	s167,%hi(inbuf)
	addiu	s168,s167,%lo(inbuf)
	addu	s169,s165,s168
	lbu	s170,0(s169)
	addiu	s171,s165,1
	sw	s171,%gp_rel(inptr)($28)
	move	s172,s171
$L62:
	sb	s170,25($sp)
	sltu	s173,s172,s102
	beq	s173,$0,$L63
	nop
	lui	s174,%hi(inbuf)
	addiu	s175,s174,%lo(inbuf)
	addu	s176,s172,s175
	lbu	s177,0(s176)
	addiu	s178,s172,1
	sw	s178,%gp_rel(inptr)($28)
	move	s179,s178
$L64:
	sb	s177,26($sp)
	sltu	s180,s179,s102
	beq	s180,$0,$L65
	nop
	lui	s181,%hi(inbuf)
	addiu	s182,s181,%lo(inbuf)
	addu	s183,s179,s182
	lbu	s184,0(s183)
	addiu	s185,s179,1
	sw	s185,%gp_rel(inptr)($28)
	move	s186,s185
$L66:
	sb	s184,27($sp)
	sltu	s187,s186,s102
	beq	s187,$0,$L67
	nop
	lui	s188,%hi(inbuf)
	addiu	s189,s188,%lo(inbuf)
	addu	s190,s186,s189
	lbu	s191,0(s190)
	addiu	s192,s186,1
	sw	s192,%gp_rel(inptr)($28)
	move	s193,s192
$L68:
	sltu	s194,s193,s102
	beq	s194,$0,$L69
	nop
	lui	s195,%hi(inbuf)
	addiu	s196,s195,%lo(inbuf)
	addu	s197,s193,s196
	lbu	s198,0(s197)
	addiu	s199,s193,1
	sw	s199,%gp_rel(inptr)($28)
	move	s200,s199
$L70:
	sltu	s201,s200,s102
	beq	s201,$0,$L71
	nop
	lui	s202,%hi(inbuf)
	addiu	s203,s202,%lo(inbuf)
	addu	s204,s200,s203
	lbu	s205,0(s204)
	addiu	s206,s200,1
	sw	s206,%gp_rel(inptr)($28)
	move	s207,s206
$L72:
	sltu	s208,s207,s102
	beq	s208,$0,$L73
	nop
	lui	s209,%hi(inbuf)
	addiu	s210,s209,%lo(inbuf)
	addu	s211,s207,s210
	lbu	s212,0(s211)
	addiu	s213,s207,1
	sw	s213,%gp_rel(inptr)($28)
$L74:
	sb	s212,31($sp)
	sll	s214,s156,8
	or	s215,s214,s149
	sll	s216,s215,16
	sll	s217,s142,8
	or	s65,s217,s135
	or	s10,s216,s65
	sll	s218,s212,8
	or	s76,s218,s205
	sll	s219,s76,16
	sll	s220,s198,8
	or	s221,s220,s191
	or	s11,s219,s221
	j	$L42
	nop
$L119:
	lui	s222,%hi(inbuf)
	addiu	s223,s222,%lo(inbuf)
	lbu	s224,25(s223)
	nop
	sll	s225,s224,8
	lbu	s226,24(s223)
	nop
	or	s227,s225,s226
	sll	s228,s227,16
	lbu	s229,23(s223)
	nop
	sll	s230,s229,8
	lbu	s231,22(s223)
	nop
	or	s232,s230,s231
	or	s233,s228,s232
	lbu	s234,21(s223)
	nop
	sll	s235,s234,8
	lbu	s236,20(s223)
	nop
	or	s237,s235,s236
	sll	s238,s237,16
	lbu	s239,19(s223)
	nop
	sll	s240,s239,8
	lbu	s241,18(s223)
	nop
	or	s242,s240,s241
	or	s243,s238,s242
	lw	s244,%gp_rel(decrypt)($28)
	nop
	beq	s244,$0,$L19
	nop
	li	s244,12			# 0xc
$L19:
	subu	s245,s243,s244
	bne	s245,s233,$L121
	nop
$L20:
	lui	s246,%hi(window)
	addiu	s247,s246,%lo(window)
	li	s248,32768			# 0x8000
	andi	s249,s233,0x3
	beq	s249,$0,$L103
	nop
	lw	s250,%gp_rel(inptr)($28)
	lw	s251,%gp_rel(insize)($28)
	nop
	sltu	s252,s250,s251
	beq	s252,$0,$L122
	nop
	addu	s253,s250,s223
	lbu	s241,0(s253)
	addiu	s254,s250,1
	sw	s254,%gp_rel(inptr)($28)
$L107:
	lw	s255,%gp_rel(outcnt)($28)
	nop
	addu	s256,s255,s247
	sb	s241,0(s256)
	addiu	s257,s255,1
	sw	s257,%gp_rel(outcnt)($28)
	beq	s257,s248,$L123
	nop
$L84:
	addiu	s233,s233,-1
	li	s258,1			# 0x1
	beq	s249,s258,$L103
	nop
	li	s259,2			# 0x2
	beq	s249,s259,$L89
	nop
	lw	s260,%gp_rel(inptr)($28)
	lw	s242,%gp_rel(insize)($28)
	nop
	sltu	s261,s260,s242
	beq	s261,$0,$L124
	nop
	addu	s262,s260,s223
	lbu	s263,0(s262)
	addiu	s264,s260,1
	sw	s264,%gp_rel(inptr)($28)
$L109:
	lw	s222,%gp_rel(outcnt)($28)
	nop
	addu	s265,s222,s247
	sb	s263,0(s265)
	addiu	s266,s222,1
	sw	s266,%gp_rel(outcnt)($28)
	beq	s266,s248,$L125
	nop
$L87:
	addiu	s233,s233,-1
$L89:
	lw	s267,%gp_rel(inptr)($28)
	lw	s243,%gp_rel(insize)($28)
	nop
	sltu	s268,s267,s243
	beq	s268,$0,$L126
	nop
	addu	s269,s267,s223
	lbu	s241,0(s269)
	addiu	s270,s267,1
	sw	s270,%gp_rel(inptr)($28)
$L111:
	lw	s271,%gp_rel(outcnt)($28)
	nop
	addu	s272,s271,s247
	sb	s241,0(s272)
	addiu	s273,s271,1
	sw	s273,%gp_rel(outcnt)($28)
	beq	s273,s248,$L127
	nop
	addiu	s233,s233,-1
$L103:
	beq	s233,$0,$L128
	nop
	lw	s274,%gp_rel(inptr)($28)
	lw	s275,%gp_rel(insize)($28)
	nop
	sltu	s276,s274,s275
	beq	s276,$0,$L21
	nop
	addu	s277,s274,s223
	lbu	s278,0(s277)
	addiu	s279,s274,1
	sw	s279,%gp_rel(inptr)($28)
	lw	s280,%gp_rel(outcnt)($28)
	nop
	addu	s281,s280,s247
	sb	s278,0(s281)
	addiu	s282,s280,1
	sw	s282,%gp_rel(outcnt)($28)
	beq	s282,s248,$L129
	nop
$L23:
	addiu	s283,s233,-1
	lw	s284,%gp_rel(inptr)($28)
	lw	s285,%gp_rel(insize)($28)
	nop
	sltu	s286,s284,s285
	beq	s286,$0,$L130
	nop
	addu	s287,s284,s223
	lbu	s288,0(s287)
	addiu	s289,s284,1
	sw	s289,%gp_rel(inptr)($28)
	lw	s290,%gp_rel(outcnt)($28)
	nop
	addu	s242,s290,s247
	sb	s288,0(s242)
	addiu	s291,s290,1
	sw	s291,%gp_rel(outcnt)($28)
	beq	s291,s248,$L131
	nop
$L96:
	lw	s292,%gp_rel(inptr)($28)
	lw	s293,%gp_rel(insize)($28)
	nop
	sltu	s294,s292,s293
	beq	s294,$0,$L132
	nop
	addu	s222,s292,s223
	lbu	s295,0(s222)
	addiu	s296,s292,1
	sw	s296,%gp_rel(inptr)($28)
	lw	s297,%gp_rel(outcnt)($28)
	nop
	addu	s298,s297,s247
	sb	s295,0(s298)
	addiu	s299,s297,1
	sw	s299,%gp_rel(outcnt)($28)
	beq	s299,s248,$L133
	nop
$L99:
	lw	s300,%gp_rel(inptr)($28)
	lw	s301,%gp_rel(insize)($28)
	nop
	sltu	s243,s300,s301
	beq	s243,$0,$L134
	nop
	addu	s302,s300,s223
	lbu	s241,0(s302)
	addiu	s303,s300,1
	sw	s303,%gp_rel(inptr)($28)
	lw	s304,%gp_rel(outcnt)($28)
	nop
	addu	s305,s304,s247
	sb	s241,0(s305)
	addiu	s306,s304,1
	sw	s306,%gp_rel(outcnt)($28)
	beq	s306,s248,$L135
	nop
$L102:
	addiu	s233,s283,-3
	j	$L103
	nop
$L117:
	lui	s307,%hi(inbuf)
	addiu	s308,s307,%lo(inbuf)
	lbu	s309,17(s308)
	nop
	sll	s310,s309,8
	lbu	s311,16(s308)
	nop
	or	s312,s310,s311
	sll	s313,s312,16
	lbu	s314,15(s308)
	nop
	sll	s315,s314,8
	lbu	s316,14(s308)
	nop
	or	s317,s315,s316
	or	s10,s313,s317
	lbu	s318,25(s308)
	nop
	sll	s319,s318,8
	lbu	s320,24(s308)
	nop
	or	s321,s319,s320
	sll	s322,s321,16
	lbu	s323,23(s308)
	nop
	sll	s17,s323,8
	lbu	s324,22(s308)
	nop
	or	s16,s17,s324
	or	s11,s322,s16
	lw	s12,%gp_rel(method)($28)
	li	s325,8			# 0x8
	bne	s12,s325,$L14
	nop
$L118:
	move	$4,s324
	move	$5,s16
	move	$6,s8
	move	$7,s17
	jal	inflate
	nop
	move	s326,$2
	li	s76,3			# 0x3
	beq	s326,s76,$L136
	nop
	beq	s326,$0,$L16
	nop
	lui	s327,%hi($LC4)
	addiu	s328,s327,%lo($LC4)
	move	$4,s328
	move	$6,s76
	jal	error
	nop
	j	$L16
	nop
$L120:
	lui	s329,%hi(inbuf+3)
	addiu	s330,s329,%lo(inbuf+3)
	addu	s331,s96,s330
	lbu	s332,0(s331)
	nop
	sll	s333,s332,8
	lui	s334,%hi(inbuf+2)
	addiu	s335,s334,%lo(inbuf+2)
	addu	s336,s335,s96
	lbu	s337,0(s336)
	nop
	or	s338,s333,s337
	sll	s339,s338,16
	lui	s340,%hi(inbuf+1)
	addiu	s341,s340,%lo(inbuf+1)
	addu	s342,s96,s341
	lbu	s343,0(s342)
	nop
	sll	s344,s343,8
	lui	s345,%hi(inbuf)
	addiu	s346,s345,%lo(inbuf)
	addu	s347,s346,s96
	lbu	s348,0(s347)
	nop
	or	s349,s344,s348
	or	s350,s339,s349
	li	s351,67305472			# 0x4030000
	ori	s352,s351,0x4b50
	bne	s350,s352,$L77
	nop
	lw	s353,%gp_rel(to_stdout)($28)
	nop
	beq	s353,$0,$L78
	nop
	lw	s354,%gp_rel(quiet)($28)
	nop
	beq	s354,$0,$L137
	nop
$L79:
	lw	s355,%gp_rel(exit_code)($28)
	nop
	bne	s355,$0,$L77
	nop
	li	s356,2			# 0x2
	sw	s356,%gp_rel(exit_code)($28)
	j	$L77
	nop
$L128:
	move	$4,s241
	move	$5,s242
	move	$6,s222
	move	$7,s243
	jal	flush_window
	nop
	j	$L16
	nop
$L134:
	move	s357,$0
	move	$4,s357
	move	$5,s242
	move	$6,s222
	move	$7,s243
	jal	fill_inbuf
	nop
	move	s358,$2
	andi	s241,s358,0x00ff
	lw	s359,%gp_rel(outcnt)($28)
	nop
	addu	s360,s359,s247
	sb	s241,0(s360)
	addiu	s361,s359,1
	sw	s361,%gp_rel(outcnt)($28)
	bne	s361,s248,$L102
	nop
$L135:
	move	$4,s241
	move	$5,s242
	move	$6,s222
	move	$7,s243
	jal	flush_window
	nop
	addiu	s233,s283,-3
	j	$L103
	nop
$L132:
	move	s362,$0
	move	$4,s362
	move	$5,s242
	move	$6,s222
	move	$7,s276
	jal	fill_inbuf
	nop
	move	s363,$2
	andi	s295,s363,0x00ff
	lw	s364,%gp_rel(outcnt)($28)
	nop
	addu	s365,s364,s247
	sb	s295,0(s365)
	addiu	s366,s364,1
	sw	s366,%gp_rel(outcnt)($28)
	bne	s366,s248,$L99
	nop
$L133:
	move	$4,s295
	move	$5,s242
	move	$6,s222
	move	$7,s276
	jal	flush_window
	nop
	j	$L99
	nop
$L130:
	move	s367,$0
	move	$4,s367
	move	$5,s242
	move	$6,s222
	move	$7,s276
	jal	fill_inbuf
	nop
	move	s368,$2
	andi	s288,s368,0x00ff
	lw	s369,%gp_rel(outcnt)($28)
	nop
	addu	s242,s369,s247
	sb	s288,0(s242)
	addiu	s370,s369,1
	sw	s370,%gp_rel(outcnt)($28)
	bne	s370,s248,$L96
	nop
$L131:
	move	$4,s288
	move	$5,s242
	move	$6,s222
	move	$7,s276
	jal	flush_window
	nop
	j	$L96
	nop
$L21:
	move	s371,$0
	move	$4,s371
	move	$5,s242
	move	$6,s222
	move	$7,s276
	jal	fill_inbuf
	nop
	move	s372,$2
	andi	s278,s372,0x00ff
	lw	s373,%gp_rel(outcnt)($28)
	nop
	addu	s374,s373,s247
	sb	s278,0(s374)
	addiu	s375,s373,1
	sw	s375,%gp_rel(outcnt)($28)
	bne	s375,s248,$L23
	nop
$L129:
	move	$4,s278
	move	$5,s242
	move	$6,s222
	move	$7,s276
	jal	flush_window
	nop
	j	$L23
	nop
$L26:
	move	s376,$0
	move	$4,s376
	move	$6,s76
	jal	fill_inbuf
	nop
	move	s377,$2
	andi	s25,s377,0x00ff
	lw	s20,%gp_rel(insize)($28)
	lw	s27,%gp_rel(inptr)($28)
	sltu	s378,s27,s20
	bne	s378,$0,$L138
	nop
$L28:
	move	s379,$0
	move	$4,s379
	move	$5,s25
	move	$6,s76
	jal	fill_inbuf
	nop
	move	s380,$2
	andi	s32,s380,0x00ff
	lw	s20,%gp_rel(insize)($28)
	lw	s34,%gp_rel(inptr)($28)
	sltu	s381,s34,s20
	bne	s381,$0,$L139
	nop
$L30:
	move	s382,$0
	move	$4,s382
	move	$5,s32
	move	$6,s30
	jal	fill_inbuf
	nop
	move	s383,$2
	andi	s39,s383,0x00ff
	lw	s20,%gp_rel(insize)($28)
	lw	s41,%gp_rel(inptr)($28)
	sltu	s384,s41,s20
	bne	s384,$0,$L140
	nop
$L32:
	move	s385,$0
	move	$4,s385
	move	$5,s39
	move	$6,s30
	move	$7,s40
	jal	fill_inbuf
	nop
	move	s386,$2
	andi	s46,s386,0x00ff
	lw	s20,%gp_rel(insize)($28)
	lw	s48,%gp_rel(inptr)($28)
	sltu	s387,s48,s20
	bne	s387,$0,$L141
	nop
$L34:
	move	s388,$0
	move	$4,s388
	move	$5,s46
	move	$6,s30
	move	$7,s40
	jal	fill_inbuf
	nop
	move	s389,$2
	andi	s53,s389,0x00ff
	lw	s20,%gp_rel(insize)($28)
	lw	s55,%gp_rel(inptr)($28)
	sltu	s390,s55,s20
	bne	s390,$0,$L142
	nop
$L36:
	move	s391,$0
	move	$4,s391
	move	$5,s53
	move	$6,s30
	move	$7,s40
	jal	fill_inbuf
	nop
	move	s392,$2
	andi	s60,s392,0x00ff
	lw	s20,%gp_rel(insize)($28)
	lw	s62,%gp_rel(inptr)($28)
	sltu	s63,s62,s20
	bne	s63,$0,$L143
	nop
$L38:
	move	s393,$0
	move	$4,s393
	move	$5,s60
	move	$6,s63
	move	$7,s40
	jal	fill_inbuf
	nop
	move	s394,$2
	andi	s67,s394,0x00ff
	lw	s395,%gp_rel(insize)($28)
	lw	s69,%gp_rel(inptr)($28)
	sltu	s70,s69,s395
	bne	s70,$0,$L144
	nop
$L40:
	move	s396,$0
	move	$4,s396
	move	$5,s70
	move	$6,s63
	move	$7,s65
	jal	fill_inbuf
	nop
	move	s397,$2
	andi	s74,s397,0x00ff
	j	$L41
	nop
$L121:
	lw	s398,%gp_rel(stderr)($28)
	lui	s399,%hi($LC5)
	addiu	s400,s399,%lo($LC5)
	move	s401,s233
	move	$4,s398
	move	$5,s400
	move	$6,s401
	move	$7,s243
	jal	fprintf
	nop
	lui	s402,%hi($LC6)
	addiu	s403,s402,%lo($LC6)
	move	$4,s403
	jal	error
	nop
	j	$L20
	nop
$L122:
	move	s404,$0
	move	$4,s404
	move	$5,s242
	move	$6,s222
	move	$7,s243
	jal	fill_inbuf
	nop
	move	s405,$2
	andi	s241,s405,0x00ff
	j	$L107
	nop
$L43:
	move	s406,$0
	move	$4,s406
	move	$6,s76
	move	$7,s65
	jal	fill_inbuf
	nop
	move	s407,$2
	andi	s107,s407,0x00ff
	lw	s102,%gp_rel(insize)($28)
	lw	s109,%gp_rel(inptr)($28)
	j	$L44
	nop
$L126:
	move	s408,$0
	move	$4,s408
	move	$5,s242
	move	$6,s222
	move	$7,s243
	jal	fill_inbuf
	nop
	move	s409,$2
	andi	s241,s409,0x00ff
	j	$L111
	nop
$L124:
	move	s410,$0
	move	$4,s410
	move	$5,s242
	move	$6,s222
	move	$7,s243
	jal	fill_inbuf
	nop
	move	s411,$2
	andi	s263,s411,0x00ff
	j	$L109
	nop
$L73:
	move	s412,$0
	move	$4,s412
	move	$5,s205
	move	$6,s190
	move	$7,s194
	jal	fill_inbuf
	nop
	move	s413,$2
	andi	s212,s413,0x00ff
	j	$L74
	nop
$L71:
	move	s414,$0
	move	$4,s414
	move	$5,s201
	move	$6,s190
	move	$7,s194
	jal	fill_inbuf
	nop
	move	s415,$2
	andi	s205,s415,0x00ff
	lw	s102,%gp_rel(insize)($28)
	lw	s207,%gp_rel(inptr)($28)
	j	$L72
	nop
$L69:
	move	s416,$0
	move	$4,s416
	move	$5,s191
	move	$6,s190
	move	$7,s194
	jal	fill_inbuf
	nop
	move	s417,$2
	andi	s198,s417,0x00ff
	lw	s102,%gp_rel(insize)($28)
	lw	s200,%gp_rel(inptr)($28)
	j	$L70
	nop
$L67:
	move	s418,$0
	move	$4,s418
	move	$5,s184
	move	$6,s159
	move	$7,s161
	jal	fill_inbuf
	nop
	move	s419,$2
	andi	s191,s419,0x00ff
	lw	s102,%gp_rel(insize)($28)
	lw	s193,%gp_rel(inptr)($28)
	j	$L68
	nop
$L65:
	move	s420,$0
	move	$4,s420
	move	$5,s177
	move	$6,s159
	move	$7,s161
	jal	fill_inbuf
	nop
	move	s421,$2
	andi	s184,s421,0x00ff
	lw	s102,%gp_rel(insize)($28)
	lw	s186,%gp_rel(inptr)($28)
	j	$L66
	nop
$L63:
	move	s422,$0
	move	$4,s422
	move	$5,s170
	move	$6,s159
	move	$7,s161
	jal	fill_inbuf
	nop
	move	s423,$2
	andi	s177,s423,0x00ff
	lw	s102,%gp_rel(insize)($28)
	lw	s179,%gp_rel(inptr)($28)
	j	$L64
	nop
$L61:
	move	s424,$0
	move	$4,s424
	move	$5,s163
	move	$6,s159
	move	$7,s161
	jal	fill_inbuf
	nop
	move	s425,$2
	andi	s170,s425,0x00ff
	lw	s102,%gp_rel(insize)($28)
	lw	s172,%gp_rel(inptr)($28)
	j	$L62
	nop
$L59:
	move	s426,$0
	move	$4,s426
	move	$5,s156
	move	$6,s159
	move	$7,s136
	jal	fill_inbuf
	nop
	move	s427,$2
	andi	s163,s427,0x00ff
	lw	s102,%gp_rel(insize)($28)
	lw	s165,%gp_rel(inptr)($28)
	j	$L60
	nop
$L57:
	move	s428,$0
	move	$4,s428
	move	$5,s149
	move	$6,s126
	move	$7,s136
	jal	fill_inbuf
	nop
	move	s429,$2
	andi	s156,s429,0x00ff
	lw	s102,%gp_rel(insize)($28)
	lw	s158,%gp_rel(inptr)($28)
	j	$L58
	nop
$L55:
	move	s430,$0
	move	$4,s430
	move	$5,s142
	move	$6,s126
	move	$7,s136
	jal	fill_inbuf
	nop
	move	s431,$2
	andi	s149,s431,0x00ff
	lw	s102,%gp_rel(insize)($28)
	lw	s151,%gp_rel(inptr)($28)
	j	$L56
	nop
$L53:
	move	s432,$0
	move	$4,s432
	move	$5,s138
	move	$6,s126
	move	$7,s136
	jal	fill_inbuf
	nop
	move	s433,$2
	andi	s142,s433,0x00ff
	lw	s102,%gp_rel(insize)($28)
	lw	s144,%gp_rel(inptr)($28)
	j	$L54
	nop
$L51:
	move	s434,$0
	move	$4,s434
	move	$5,s128
	move	$6,s126
	move	$7,s65
	jal	fill_inbuf
	nop
	move	s435,$2
	andi	s135,s435,0x00ff
	lw	s102,%gp_rel(insize)($28)
	lw	s137,%gp_rel(inptr)($28)
	j	$L52
	nop
$L49:
	move	s436,$0
	move	$4,s436
	move	$5,s121
	move	$6,s76
	move	$7,s65
	jal	fill_inbuf
	nop
	move	s437,$2
	andi	s128,s437,0x00ff
	lw	s102,%gp_rel(insize)($28)
	lw	s130,%gp_rel(inptr)($28)
	j	$L50
	nop
$L47:
	move	s438,$0
	move	$4,s438
	move	$5,s114
	move	$6,s76
	move	$7,s65
	jal	fill_inbuf
	nop
	move	s439,$2
	andi	s121,s439,0x00ff
	lw	s102,%gp_rel(insize)($28)
	lw	s123,%gp_rel(inptr)($28)
	j	$L48
	nop
$L45:
	move	s440,$0
	move	$4,s440
	move	$5,s107
	move	$6,s76
	move	$7,s65
	jal	fill_inbuf
	nop
	move	s441,$2
	andi	s114,s441,0x00ff
	lw	s102,%gp_rel(insize)($28)
	lw	s116,%gp_rel(inptr)($28)
	j	$L46
	nop
$L127:
	move	$4,s241
	move	$5,s242
	move	$6,s222
	move	$7,s243
	jal	flush_window
	nop
	addiu	s233,s233,-1
	j	$L103
	nop
$L125:
	move	$4,s263
	move	$5,s242
	move	$6,s222
	move	$7,s243
	jal	flush_window
	nop
	j	$L87
	nop
$L137:
	lw	s442,%gp_rel(stderr)($28)
	lui	s443,%hi($LC10)
	addiu	s444,s443,%lo($LC10)
	lw	s445,%gp_rel(progname)($28)
	lui	s446,%hi(ifname)
	addiu	s447,s446,%lo(ifname)
	move	$4,s442
	move	$5,s444
	move	$6,s445
	move	$7,s447
	jal	fprintf
	nop
	j	$L79
	nop
$L123:
	move	$4,s241
	move	$5,s242
	move	$6,s222
	move	$7,s243
	jal	flush_window
	nop
	j	$L84
	nop
$L136:
	lui	s448,%hi($LC3)
	addiu	s449,s448,%lo($LC3)
	move	$4,s449
	move	$6,s76
	jal	error
	nop
	j	$L16
	nop
$L78:
	lw	s450,%gp_rel(stderr)($28)
	lui	s451,%hi($LC11)
	addiu	s452,s451,%lo($LC11)
	lw	s453,%gp_rel(progname)($28)
	lui	s454,%hi(ifname)
	addiu	s455,s454,%lo(ifname)
	move	$4,s450
	move	$5,s452
	move	$6,s453
	move	$7,s455
	jal	fprintf
	nop
	li	s100,1			# 0x1
	sw	s100,%gp_rel(exit_code)($28)
	sw	$0,%gp_rel(pkzip)($28)
	sw	$0,%gp_rel(ext_header)($28)
	j	$L80
	nop
	.set	macro
	.set	reorder
	.end	unzip
	.size	unzip, .-unzip
	.globl	pkzip
	.section	.sbss,"aw",@nobits
	.align	2
	.type	pkzip, @object
	.size	pkzip, 4
pkzip:
	.space	4
	.globl	ext_header
	.align	2
	.type	ext_header, @object
	.size	ext_header, 4
ext_header:
	.space	4
	.comm	decrypt,4,4
	.comm	key,4,4
	.ident	"GCC: (GNU) 4.3.0"
