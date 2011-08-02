	.file	1 "gzip.c"
	.section .mdebug.abi32
	.previous
	.text
	.align	2
	.set	nomips16
	.ent	get_suffix
get_suffix:
	.frame	$sp,96,$31		# vars= 40, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$6
	move	s3,$7
	move	s4,$fp
	move	s5,$31
	addiu	$sp,$sp,-96
	move	s6,s1
	lui	s7,%hi(z_suffix)
	addiu	s8,s7,%lo(z_suffix)
	lbu	s9,%lo(z_suffix)(s7)
	li	s10,122			# 0x7a
	bne	s9,s10,$L2
	nop
	lbu	s2,1(s8)
	nop
	bne	s2,$0,$L2
	nop
	lui	s11,%hi(known_suffixes.3931+4)
	addiu	s12,s11,%lo(known_suffixes.3931+4)
$L3:
	move	s13,s6
	move	$4,s13
	move	$5,s7
	move	$6,s2
	move	$7,s3
	jal	strlen
	nop
	move	s14,$2
	move	s15,s14
	slt	s16,s14,33
	beq	s16,$0,$L4
	nop
	addiu	s17,$sp,16
	move	s18,s17
	move	s19,s6
	move	$4,s18
	move	$5,s19
	jal	strcpy
	nop
$L5:
	move	s20,s17
	move	$4,s20
	jal	strlwr
	nop
	move	s21,s17
	move	$4,s21
	jal	strlen
	nop
	move	s22,$2
	move	s23,s22
	lw	s24,0(s12)
	addiu	s25,s22,-1
	li	s26,47			# 0x2f
$L8:
	move	s27,s24
	move	$4,s27
	jal	strlen
	nop
	move	s28,$2
	move	s29,s28
	slt	s30,s28,s23
	beq	s30,$0,$L6
	nop
	subu	s31,s25,s28
	addu	s32,s17,s31
	lb	s33,0(s32)
	nop
	beq	s33,s26,$L6
	nop
	subu	s34,s23,s28
	addu	s35,s17,s34
	move	s36,s24
	move	$4,s35
	move	$5,s36
	jal	strcmp
	nop
	move	s37,$2
	beq	s37,$0,$L12
	nop
$L6:
	addiu	s12,s12,4
	lw	s24,0(s12)
	nop
	bne	s24,$0,$L8
	nop
	move	s38,$0
$L7:
	addiu	$sp,$sp,96
	move	$2,s38
	j	s5
	nop
$L4:
	addiu	s39,s14,-32
	addiu	s17,$sp,16
	move	s40,s17
	addu	s41,s6,s39
	move	$4,s40
	move	$5,s41
	jal	strcpy
	nop
	j	$L5
	nop
$L2:
	lui	s3,%hi(known_suffixes.3931)
	addiu	s12,s3,%lo(known_suffixes.3931)
	j	$L3
	nop
$L12:
	subu	s42,s15,s29
	addu	s38,s6,s42
	j	$L7
	nop
	.set	macro
	.set	reorder
	.end	get_suffix
	.size	get_suffix, .-get_suffix
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC0:
	.ascii	"name too short\000"
	.align	2
$LC1:
	.ascii	"can't recover suffix\012\000"
	.align	2
$LC2:
	.ascii	".tar\000"
	.align	2
$LC3:
	.ascii	".tgz\000"
	.align	2
$LC4:
	.ascii	"internal error in shorten_name\000"
	.text
	.align	2
	.set	nomips16
	.ent	shorten_name
shorten_name:
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
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	strlen
	nop
	move	s7,$2
	move	s8,s7
	lw	s9,%gp_rel(decompress)($28)
	nop
	beq	s9,$0,$L14
	nop
	slt	s10,s8,2
	bne	s10,$0,$L42
	nop
$L15:
	addu	s11,s6,s8
	sb	$0,-1(s11)
$L35:
	addiu	$sp,$sp,32
	move	$2,s9
	j	s5
	nop
$L14:
	move	s12,s6
	move	$4,s12
	jal	get_suffix
	nop
	move	s13,$2
	move	s14,s13
	beq	s13,$0,$L43
	nop
$L17:
	sb	$0,0(s14)
	li	s15,1			# 0x1
	sw	s15,%gp_rel(save_orig_name)($28)
	slt	s16,s8,5
	beq	s16,$0,$L44
	nop
$L18:
	move	s17,s6
	li	s18,47			# 0x2f
	move	$4,s17
	move	$5,s18
	move	$7,s16
	jal	strrchr
	nop
	move	s19,$2
	move	s20,s19
	li	s21,3			# 0x3
	addiu	s22,s19,1
	li	s23,46			# 0x2e
$L30:
	beq	s20,$0,$L45
	nop
	move	s24,s22
$L20:
	lb	s25,0(s24)
	move	s26,$0
$L39:
	beq	s25,$0,$L26
	nop
	beq	s25,s23,$L46
	nop
	move	s27,$0
	j	$L23
	nop
$L47:
	beq	s28,s23,$L22
	nop
$L23:
	addiu	s27,s27,1
	addu	s29,s24,s27
	lb	s28,0(s29)
	nop
	bne	s28,$0,$L47
	nop
$L22:
	move	s30,s27
$L28:
	addu	s31,s24,s30
	slt	s32,s21,s27
	beq	s32,$0,$L24
	nop
	addiu	s26,s31,-1
$L24:
	lb	s33,0(s31)
	nop
	bne	s33,$0,$L48
	nop
$L26:
	bne	s26,$0,$L38
	nop
	addiu	s21,s21,-1
	bne	s21,$0,$L30
	nop
	move	s34,s6
	li	s35,46			# 0x2e
	move	$4,s34
	move	$5,s35
	move	$6,s23
	move	$7,s21
	jal	strrchr
	nop
	move	s36,$2
	move	s37,s36
	beq	s36,$0,$L49
	nop
$L34:
	lb	s38,1(s37)
	nop
	bne	s38,$0,$L32
	nop
	addiu	s37,s37,-1
$L32:
	move	s39,s37
	lui	s40,%hi(z_suffix)
	addiu	s41,s40,%lo(z_suffix)
	addiu	$sp,$sp,32
	j	strcpy
	nop
$L48:
	addiu	s24,s31,1
	lb	s25,1(s31)
	j	$L39
	nop
$L50:
	move	s26,s42
$L38:
	addiu	s42,s26,1
	lb	s43,1(s26)
	nop
	sb	s43,-1(s42)
	bne	s43,$0,$L50
	nop
	move	s44,s26
	lui	s45,%hi(z_suffix)
	addiu	s46,s45,%lo(z_suffix)
	addiu	$sp,$sp,32
	j	strcpy
	nop
$L46:
	move	s27,$0
	move	s30,$0
	j	$L28
	nop
$L42:
	lui	s47,%hi($LC0)
	addiu	s48,s47,%lo($LC0)
	move	$4,s48
	jal	error
	nop
	move	s9,$2
	j	$L15
	nop
$L45:
	move	s24,s6
	j	$L20
	nop
$L44:
	addiu	s49,s14,-4
	move	s50,s49
	lui	s51,%hi($LC2)
	addiu	s52,s51,%lo($LC2)
	move	$4,s50
	move	$5,s52
	move	$7,s16
	jal	strcmp
	nop
	move	s9,$2
	bne	s9,$0,$L18
	nop
	lui	s53,%hi($LC3)
	lw	s54,%lo($LC3)(s53)
	nop
	swl	s54,0(s49)
	swr	s54,3(s49)
	addiu	s55,s53,%lo($LC3)
	lbu	s56,4(s55)
	nop
	sb	s56,4(s49)
	j	$L35
	nop
$L43:
	lui	s57,%hi($LC1)
	addiu	s58,s57,%lo($LC1)
	move	$4,s58
	move	$6,s57
	jal	error
	nop
	j	$L17
	nop
$L49:
	lui	s59,%hi($LC4)
	addiu	s60,s59,%lo($LC4)
	move	$4,s60
	jal	error
	nop
	j	$L34
	nop
	.set	macro
	.set	reorder
	.end	shorten_name
	.size	shorten_name, .-shorten_name
	.section	.rodata.str1.4
	.align	2
$LC5:
	.ascii	"\037\213\000"
	.align	2
$LC6:
	.ascii	"\037\236\000"
	.align	2
$LC7:
	.ascii	"%s: %s: unknown method %d -- get newer version of gzip\012"
	.ascii	"\000"
	.align	2
$LC8:
	.ascii	"%s: %s is encrypted -- get newer version of gzip\012\000"
	.align	2
$LC9:
	.ascii	"%s: %s is a a multi-part gzip file -- get newer version "
	.ascii	"of gzip\012\000"
	.align	2
$LC10:
	.ascii	"%s: %s has flags 0x%x -- get newer version of gzip\012\000"
	.align	2
$LC11:
	.ascii	"%s: %s: part number %u\012\000"
	.align	2
$LC12:
	.ascii	"%s: %s: extra field of %u bytes ignored\012\000"
	.align	2
$LC13:
	.ascii	"corrupted input -- file name too large\000"
	.align	2
$LC14:
	.ascii	"PK\003\004\000"
	.align	2
$LC15:
	.ascii	"\037\036\000"
	.align	2
$LC16:
	.ascii	"\037\235\000"
	.align	2
$LC17:
	.ascii	"\037\240\000"
	.align	2
$LC18:
	.ascii	"\012%s: %s: not in gzip format\012\000"
	.align	2
$LC19:
	.ascii	"\012%s: %s: decompression OK, trailing garbage ignored\012"
	.ascii	"\000"
	.text
	.align	2
	.set	nomips16
	.ent	get_method
get_method:
	.frame	$sp,64,$31		# vars= 8, regs= 7/0, args= 24, gp= 0
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$5
	move	s3,$6
	move	s4,$7
	move	s5,$31
	addiu	$sp,$sp,-64
	move	s6,s1
	lw	s7,%gp_rel(force)($28)
	nop
	beq	s7,$0,$L52
	nop
	lw	s8,%gp_rel(to_stdout)($28)
	nop
	bne	s8,$0,$L202
	nop
$L52:
	lw	s9,%gp_rel(inptr)($28)
	lw	s10,%gp_rel(insize)($28)
	nop
	sltu	s11,s9,s10
	beq	s11,$0,$L58
	nop
	lui	s12,%hi(inbuf)
	addiu	s13,s12,%lo(inbuf)
	addu	s14,s9,s13
	lb	s15,0(s14)
	addiu	s16,s9,1
	sw	s16,%gp_rel(inptr)($28)
	move	s17,s16
	sb	s15,24($sp)
	sltu	s18,s17,s10
	beq	s18,$0,$L60
	nop
$L200:
	lui	s19,%hi(inbuf)
	addiu	s20,s19,%lo(inbuf)
	addu	s21,s17,s20
	lb	s22,0(s21)
	addiu	s23,s17,1
	sw	s23,%gp_rel(inptr)($28)
$L61:
	sb	s22,25($sp)
	li	s24,-1			# 0xffffffffffffffff
	sw	s24,%gp_rel(method)($28)
	lw	s25,%gp_rel(part_nb)($28)
	nop
	addiu	s26,s25,1
	sw	s26,%gp_rel(part_nb)($28)
	sw	$0,%gp_rel(header_bytes)($28)
	sw	$0,%gp_rel(last_member)($28)
	addiu	s27,$sp,24
	move	s28,s27
	lui	s29,%hi($LC5)
	addiu	s30,s29,%lo($LC5)
	li	s31,2			# 0x2
	move	$4,s28
	move	$5,s30
	move	$6,s31
	move	$7,s4
	jal	memcmp
	nop
	move	s32,$2
	bne	s32,$0,$L203
	nop
$L62:
	lw	s33,%gp_rel(inptr)($28)
	lw	s34,%gp_rel(insize)($28)
	nop
	sltu	s35,s33,s34
	beq	s35,$0,$L64
	nop
	lui	s36,%hi(inbuf)
	addiu	s37,s36,%lo(inbuf)
	addu	s38,s33,s37
	lbu	s39,0(s38)
	addiu	s40,s33,1
	sw	s40,%gp_rel(inptr)($28)
$L65:
	sw	s39,%gp_rel(method)($28)
	li	s41,8			# 0x8
	bne	s39,s41,$L204
	nop
	lui	s42,%hi(unzip)
	addiu	s43,s42,%lo(unzip)
	sw	s43,%gp_rel(work)($28)
	lw	s44,%gp_rel(inptr)($28)
	lw	s45,%gp_rel(insize)($28)
	nop
	sltu	s46,s44,s45
	beq	s46,$0,$L68
	nop
	lui	s47,%hi(inbuf)
	addiu	s48,s47,%lo(inbuf)
	addu	s49,s44,s48
	lbu	s50,0(s49)
	addiu	s51,s44,1
	sw	s51,%gp_rel(inptr)($28)
$L69:
	andi	s52,s50,0x20
	bne	s52,$0,$L205
	nop
	andi	s53,s50,0x2
	bne	s53,$0,$L206
	nop
$L71:
	andi	s54,s50,0xc0
	bne	s54,$0,$L207
	nop
$L73:
	lw	s55,%gp_rel(inptr)($28)
	lw	s56,%gp_rel(insize)($28)
	nop
	sltu	s57,s55,s56
	beq	s57,$0,$L74
	nop
	lui	s58,%hi(inbuf)
	addiu	s59,s58,%lo(inbuf)
	addu	s60,s55,s59
	lbu	s61,0(s60)
	addiu	s62,s55,1
	sw	s62,%gp_rel(inptr)($28)
	move	s63,s62
$L75:
	sltu	s64,s63,s56
	beq	s64,$0,$L76
	nop
	lui	s65,%hi(inbuf)
	addiu	s66,s65,%lo(inbuf)
	addu	s67,s63,s66
	lbu	s68,0(s67)
	nop
	sll	s69,s68,8
	addiu	s70,s63,1
	sw	s70,%gp_rel(inptr)($28)
	move	s71,s70
$L77:
	sltu	s72,s71,s56
	beq	s72,$0,$L78
	nop
	lui	s73,%hi(inbuf)
	addiu	s74,s73,%lo(inbuf)
	addu	s75,s71,s74
	lbu	s76,0(s75)
	nop
	sll	s77,s76,16
	addiu	s78,s71,1
	sw	s78,%gp_rel(inptr)($28)
	move	s79,s78
$L79:
	sltu	s80,s79,s56
	beq	s80,$0,$L80
	nop
	lui	s81,%hi(inbuf)
	addiu	s82,s81,%lo(inbuf)
	addu	s83,s79,s82
	lbu	s84,0(s83)
	nop
	sll	s85,s84,24
	addiu	s86,s79,1
	sw	s86,%gp_rel(inptr)($28)
$L81:
	or	s87,s69,s61
	or	s88,s87,s77
	or	s89,s88,s85
	bne	s89,$0,$L208
	nop
$L82:
	lw	s90,%gp_rel(inptr)($28)
	nop
	sltu	s91,s90,s56
	beq	s91,$0,$L83
	nop
$L228:
	addiu	s92,s90,1
	sw	s92,%gp_rel(inptr)($28)
	move	s93,s92
	sltu	s94,s93,s56
	beq	s94,$0,$L85
	nop
$L229:
	addiu	s95,s93,1
	sw	s95,%gp_rel(inptr)($28)
	beq	s53,$0,$L87
	nop
$L230:
	lw	s96,%gp_rel(inptr)($28)
	lw	s97,%gp_rel(insize)($28)
	nop
	sltu	s98,s96,s97
	beq	s98,$0,$L88
	nop
	lui	s99,%hi(inbuf)
	addiu	s100,s99,%lo(inbuf)
	addu	s65,s96,s100
	lbu	s101,0(s65)
	addiu	s66,s96,1
	sw	s66,%gp_rel(inptr)($28)
	move	s102,s66
$L89:
	sltu	s103,s102,s97
	beq	s103,$0,$L90
	nop
	lui	s104,%hi(inbuf)
	addiu	s105,s104,%lo(inbuf)
	addu	s106,s102,s105
	lbu	s107,0(s106)
	nop
	sll	s108,s107,8
	addiu	s109,s102,1
	sw	s109,%gp_rel(inptr)($28)
$L91:
	lw	s110,%gp_rel(verbose)($28)
	nop
	bne	s110,$0,$L209
	nop
$L87:
	andi	s111,s50,0x4
	beq	s111,$0,$L92
	nop
$L234:
	lw	s112,%gp_rel(inptr)($28)
	lw	s113,%gp_rel(insize)($28)
	nop
	sltu	s114,s112,s113
	beq	s114,$0,$L93
	nop
	lui	s115,%hi(inbuf)
	addiu	s94,s115,%lo(inbuf)
	addu	s116,s112,s94
	lbu	s117,0(s116)
	addiu	s118,s112,1
	sw	s118,%gp_rel(inptr)($28)
	move	s119,s118
	sltu	s66,s119,s113
	beq	s66,$0,$L95
	nop
$L235:
	lui	s120,%hi(inbuf)
	addiu	s121,s120,%lo(inbuf)
	addu	s122,s119,s121
	lbu	s123,0(s122)
	nop
	sll	s124,s123,8
	addiu	s65,s119,1
	sw	s65,%gp_rel(inptr)($28)
	or	s125,s124,s117
	lw	s126,%gp_rel(verbose)($28)
	nop
	bne	s126,$0,$L210
	nop
$L166:
	andi	s127,s125,0x7
	beq	s127,$0,$L167
	nop
	lw	s128,%gp_rel(inptr)($28)
	lw	s129,%gp_rel(insize)($28)
	nop
	sltu	s130,s128,s129
	beq	s130,$0,$L211
	nop
	addiu	s131,s128,1
	sw	s131,%gp_rel(inptr)($28)
$L173:
	addiu	s125,s125,-1
	li	s132,1			# 0x1
	beq	s127,s132,$L167
	nop
	li	s133,2			# 0x2
	beq	s127,s133,$L148
	nop
	li	s134,3			# 0x3
	beq	s127,s134,$L145
	nop
	li	s135,4			# 0x4
	beq	s127,s135,$L142
	nop
	li	s94,5			# 0x5
	beq	s127,s94,$L139
	nop
	li	s136,6			# 0x6
	beq	s127,s136,$L136
	nop
	lw	s137,%gp_rel(inptr)($28)
	lw	s138,%gp_rel(insize)($28)
	nop
	sltu	s66,s137,s138
	beq	s66,$0,$L212
	nop
	addiu	s65,s137,1
	sw	s65,%gp_rel(inptr)($28)
$L175:
	addiu	s125,s125,-1
$L136:
	lw	s139,%gp_rel(inptr)($28)
	lw	s140,%gp_rel(insize)($28)
	nop
	sltu	s141,s139,s140
	beq	s141,$0,$L213
	nop
	addiu	s142,s139,1
	sw	s142,%gp_rel(inptr)($28)
$L177:
	addiu	s125,s125,-1
$L139:
	lw	s143,%gp_rel(inptr)($28)
	lw	s144,%gp_rel(insize)($28)
	nop
	sltu	s145,s143,s144
	beq	s145,$0,$L214
	nop
	addiu	s146,s143,1
	sw	s146,%gp_rel(inptr)($28)
$L179:
	addiu	s125,s125,-1
$L142:
	lw	s147,%gp_rel(inptr)($28)
	lw	s148,%gp_rel(insize)($28)
	nop
	sltu	s149,s147,s148
	beq	s149,$0,$L215
	nop
	addiu	s150,s147,1
	sw	s150,%gp_rel(inptr)($28)
$L181:
	addiu	s125,s125,-1
$L145:
	lw	s151,%gp_rel(inptr)($28)
	lw	s152,%gp_rel(insize)($28)
	nop
	sltu	s153,s151,s152
	beq	s153,$0,$L216
	nop
	addiu	s154,s151,1
	sw	s154,%gp_rel(inptr)($28)
$L183:
	addiu	s125,s125,-1
$L148:
	lw	s155,%gp_rel(inptr)($28)
	lw	s156,%gp_rel(insize)($28)
	nop
	sltu	s157,s155,s156
	beq	s157,$0,$L217
	nop
	addiu	s158,s155,1
	sw	s158,%gp_rel(inptr)($28)
	addiu	s125,s125,-1
$L167:
	beq	s125,$0,$L92
	nop
	lw	s159,%gp_rel(inptr)($28)
	lw	s160,%gp_rel(insize)($28)
	nop
	sltu	s161,s159,s160
	beq	s161,$0,$L98
	nop
	addiu	s162,s159,1
	sw	s162,%gp_rel(inptr)($28)
	move	s163,s162
$L99:
	addiu	s164,s125,-1
	lw	s165,%gp_rel(insize)($28)
	nop
	sltu	s166,s163,s165
	beq	s166,$0,$L218
	nop
	addiu	s167,s163,1
	sw	s167,%gp_rel(inptr)($28)
	move	s168,s167
$L186:
	lw	s169,%gp_rel(insize)($28)
	nop
	sltu	s94,s168,s169
	beq	s94,$0,$L219
	nop
	addiu	s66,s168,1
	sw	s66,%gp_rel(inptr)($28)
	move	s170,s66
$L188:
	lw	s171,%gp_rel(insize)($28)
	nop
	sltu	s65,s170,s171
	beq	s65,$0,$L220
	nop
	addiu	s172,s170,1
	sw	s172,%gp_rel(inptr)($28)
	move	s173,s172
$L190:
	lw	s174,%gp_rel(insize)($28)
	nop
	sltu	s175,s173,s174
	beq	s175,$0,$L221
	nop
	addiu	s176,s173,1
	sw	s176,%gp_rel(inptr)($28)
	move	s177,s176
$L192:
	lw	s178,%gp_rel(insize)($28)
	nop
	sltu	s179,s177,s178
	beq	s179,$0,$L222
	nop
	addiu	s180,s177,1
	sw	s180,%gp_rel(inptr)($28)
	move	s181,s180
$L194:
	lw	s182,%gp_rel(insize)($28)
	nop
	sltu	s183,s181,s182
	beq	s183,$0,$L223
	nop
	addiu	s184,s181,1
	sw	s184,%gp_rel(inptr)($28)
	move	s185,s184
$L196:
	lw	s186,%gp_rel(insize)($28)
	nop
	sltu	s187,s185,s186
	beq	s187,$0,$L224
	nop
	addiu	s188,s185,1
	sw	s188,%gp_rel(inptr)($28)
	addiu	s125,s164,-7
	j	$L167
	nop
$L92:
	andi	s189,s50,0x8
	beq	s189,$0,$L101
	nop
	lw	s190,%gp_rel(no_name)($28)
	nop
	bne	s190,$0,$L102
	nop
	lw	s191,%gp_rel(to_stdout)($28)
	nop
	bne	s191,$0,$L225
	nop
$L103:
	lw	s192,%gp_rel(part_nb)($28)
	nop
	slt	s193,s192,2
	bne	s193,$0,$L104
	nop
$L102:
	lui	s94,%hi(inbuf)
	addiu	s194,s94,%lo(inbuf)
$L128:
	lw	s195,%gp_rel(inptr)($28)
	lw	s66,%gp_rel(insize)($28)
	nop
	sltu	s196,s195,s66
	beq	s196,$0,$L105
	nop
	addu	s197,s195,s194
	lb	s198,0(s197)
	addiu	s65,s195,1
	sw	s65,%gp_rel(inptr)($28)
	bne	s198,$0,$L128
	nop
$L101:
	andi	s199,s50,0x10
	beq	s199,$0,$L111
	nop
	lui	s200,%hi(inbuf)
	addiu	s201,s200,%lo(inbuf)
$L127:
	lw	s202,%gp_rel(inptr)($28)
	lw	s203,%gp_rel(insize)($28)
	nop
	sltu	s204,s202,s203
	beq	s204,$0,$L112
	nop
	addu	s205,s202,s201
	lbu	s94,0(s205)
	nop
	sltu	s206,$0,s94
	addiu	s207,s202,1
	sw	s207,%gp_rel(inptr)($28)
	bne	s206,$0,$L127
	nop
$L111:
	lw	s208,%gp_rel(part_nb)($28)
	li	s209,1			# 0x1
	beq	s208,s209,$L226
	nop
$L115:
	lw	s210,%gp_rel(method)($28)
	nop
	bltz	s210,$L227
	nop
$L67:
	addiu	$sp,$sp,64
	move	$2,s210
	j	s5
	nop
$L208:
	lw	s211,%gp_rel(no_time)($28)
	nop
	bne	s211,$0,$L82
	nop
	sw	s89,%gp_rel(time_stamp)($28)
	lw	s90,%gp_rel(inptr)($28)
	nop
	sltu	s212,s90,s56
	bne	s212,$0,$L228
	nop
$L83:
	move	s213,$0
	move	$4,s213
	move	$5,s85
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	lw	s214,%gp_rel(insize)($28)
	lw	s93,%gp_rel(inptr)($28)
	nop
	sltu	s94,s93,s214
	bne	s94,$0,$L229
	nop
$L85:
	move	s215,$0
	move	$4,s215
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	beq	s53,$0,$L87
	nop
	j	$L230
	nop
$L202:
	lw	s216,%gp_rel(inptr)($28)
	lw	s217,%gp_rel(insize)($28)
	nop
	sltu	s218,s216,s217
	beq	s218,$0,$L53
	nop
	lui	s219,%hi(inbuf)
	addiu	s220,s219,%lo(inbuf)
	addu	s4,s216,s220
	lb	s221,0(s4)
	addiu	s222,s216,1
	sw	s222,%gp_rel(inptr)($28)
	move	s17,s222
$L54:
	sb	s221,24($sp)
	sltu	s223,s17,s217
	bne	s223,$0,$L200
	nop
	li	s224,1			# 0x1
	move	$4,s224
	move	$5,s221
	move	$6,s222
	move	$7,s4
	jal	fill_inbuf
	nop
	move	s225,$2
	sll	s226,s225,24
	sra	s22,s226,24
	j	$L61
	nop
$L112:
	move	s227,$0
	move	$4,s227
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	move	s228,$2
	sltu	s229,$0,s228
	bne	s229,$0,$L127
	nop
	j	$L111
	nop
$L105:
	move	s230,$0
	move	$4,s230
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	move	s231,$2
	sll	s232,s231,24
	sra	s233,s232,24
	bne	s233,$0,$L128
	nop
	j	$L101
	nop
$L227:
	lw	s26,%gp_rel(part_nb)($28)
$L121:
	li	s234,1			# 0x1
	beq	s26,s234,$L231
	nop
	lw	s235,%gp_rel(quiet)($28)
	nop
	beq	s235,$0,$L232
	nop
$L123:
	lw	s236,%gp_rel(exit_code)($28)
	nop
	beq	s236,$0,$L124
	nop
	li	s210,-2			# 0xfffffffffffffffe
	j	$L67
	nop
$L203:
	move	s237,s27
	lui	s238,%hi($LC6)
	addiu	s239,s238,%lo($LC6)
	li	s240,2			# 0x2
	move	$4,s237
	move	$5,s239
	move	$6,s240
	jal	memcmp
	nop
	move	s241,$2
	beq	s241,$0,$L62
	nop
	move	s242,s27
	lui	s243,%hi($LC14)
	addiu	s244,s243,%lo($LC14)
	li	s245,2			# 0x2
	move	$4,s242
	move	$5,s244
	move	$6,s245
	jal	memcmp
	nop
	move	s246,$2
	bne	s246,$0,$L116
	nop
	li	s247,2			# 0x2
	lw	s248,%gp_rel(inptr)($28)
	nop
	beq	s248,s247,$L233
	nop
$L116:
	move	s249,s27
	lui	s250,%hi($LC15)
	addiu	s251,s250,%lo($LC15)
	li	s252,2			# 0x2
	move	$4,s249
	move	$5,s251
	move	$6,s252
	jal	memcmp
	nop
	move	s253,$2
	bne	s253,$0,$L117
	nop
	lui	s254,%hi(unpack)
	addiu	s255,s254,%lo(unpack)
	sw	s255,%gp_rel(work)($28)
	li	s210,2			# 0x2
	sw	s210,%gp_rel(method)($28)
	j	$L67
	nop
$L64:
	move	s256,$0
	move	$4,s256
	move	$7,s34
	jal	fill_inbuf
	nop
	move	s257,$2
	move	s39,s257
	j	$L65
	nop
$L68:
	move	s258,$0
	move	$4,s258
	move	$7,s34
	jal	fill_inbuf
	nop
	move	s259,$2
	andi	s50,s259,0x00ff
	j	$L69
	nop
$L226:
	lw	s260,%gp_rel(inptr)($28)
	nop
	addiu	s261,s260,8
	sw	s261,%gp_rel(header_bytes)($28)
	j	$L115
	nop
$L80:
	move	s262,$0
	move	$4,s262
	move	$5,s67
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	move	s263,$2
	sll	s85,s263,24
	lw	s56,%gp_rel(insize)($28)
	j	$L81
	nop
$L78:
	move	s264,$0
	move	$4,s264
	move	$5,s67
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	move	s265,$2
	sll	s77,s265,16
	lw	s56,%gp_rel(insize)($28)
	lw	s79,%gp_rel(inptr)($28)
	j	$L79
	nop
$L76:
	move	s266,$0
	move	$4,s266
	move	$6,s267
	move	$7,s34
	jal	fill_inbuf
	nop
	move	s268,$2
	sll	s69,s268,8
	lw	s56,%gp_rel(insize)($28)
	lw	s71,%gp_rel(inptr)($28)
	j	$L77
	nop
$L74:
	move	s269,$0
	move	$4,s269
	move	$6,s267
	move	$7,s34
	jal	fill_inbuf
	nop
	move	s270,$2
	move	s61,s270
	lw	s56,%gp_rel(insize)($28)
	lw	s63,%gp_rel(inptr)($28)
	j	$L75
	nop
$L58:
	move	s271,$0
	move	$4,s271
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	fill_inbuf
	nop
	move	s272,$2
	sll	s273,s272,24
	sra	s15,s273,24
	lw	s274,%gp_rel(insize)($28)
	lw	s17,%gp_rel(inptr)($28)
	sb	s15,24($sp)
	sltu	s275,s17,s274
	bne	s275,$0,$L200
	nop
$L60:
	move	s276,$0
	move	$4,s276
	move	$5,s15
	move	$6,s3
	move	$7,s4
	jal	fill_inbuf
	nop
	move	s277,$2
	sll	s278,s277,24
	sra	s22,s278,24
	j	$L61
	nop
$L209:
	or	s279,s108,s101
	sw	s279,16($sp)
	lw	s280,%gp_rel(stderr)($28)
	lui	s281,%hi($LC11)
	addiu	s282,s281,%lo($LC11)
	lw	s283,%gp_rel(progname)($28)
	lui	s284,%hi(ifname)
	addiu	s285,s284,%lo(ifname)
	move	$4,s280
	move	$5,s282
	move	$6,s283
	move	$7,s285
	jal	fprintf
	nop
	andi	s286,s50,0x4
	beq	s286,$0,$L92
	nop
	j	$L234
	nop
$L225:
	lw	s287,%gp_rel(list)($28)
	nop
	beq	s287,$0,$L102
	nop
	j	$L103
	nop
$L232:
	lw	s288,%gp_rel(stderr)($28)
	lui	s289,%hi($LC19)
	addiu	s290,s289,%lo($LC19)
	lw	s291,%gp_rel(progname)($28)
	lui	s292,%hi(ifname)
	addiu	s293,s292,%lo(ifname)
	move	$4,s288
	move	$5,s290
	move	$6,s291
	move	$7,s293
	jal	fprintf
	nop
	j	$L123
	nop
$L53:
	li	s294,1			# 0x1
	move	$4,s294
	move	$5,s218
	move	$6,s3
	move	$7,s4
	jal	fill_inbuf
	nop
	move	s295,$2
	sll	s296,s295,24
	sra	s221,s296,24
	lw	s217,%gp_rel(insize)($28)
	lw	s17,%gp_rel(inptr)($28)
	j	$L54
	nop
$L224:
	move	s297,$0
	move	$4,s297
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	addiu	s125,s164,-7
	j	$L167
	nop
$L223:
	move	s298,$0
	move	$4,s298
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	lw	s185,%gp_rel(inptr)($28)
	j	$L196
	nop
$L222:
	move	s299,$0
	move	$4,s299
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	lw	s181,%gp_rel(inptr)($28)
	j	$L194
	nop
$L221:
	move	s300,$0
	move	$4,s300
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	lw	s177,%gp_rel(inptr)($28)
	j	$L192
	nop
$L220:
	move	s301,$0
	move	$4,s301
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	lw	s173,%gp_rel(inptr)($28)
	j	$L190
	nop
$L219:
	move	s302,$0
	move	$4,s302
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	lw	s170,%gp_rel(inptr)($28)
	j	$L188
	nop
$L218:
	move	s303,$0
	move	$4,s303
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	lw	s168,%gp_rel(inptr)($28)
	j	$L186
	nop
$L98:
	move	s304,$0
	move	$4,s304
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	lw	s163,%gp_rel(inptr)($28)
	j	$L99
	nop
$L217:
	move	s305,$0
	move	$4,s305
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	addiu	s125,s125,-1
	j	$L167
	nop
$L216:
	move	s306,$0
	move	$4,s306
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	j	$L183
	nop
$L215:
	move	s307,$0
	move	$4,s307
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	j	$L181
	nop
$L214:
	move	s308,$0
	move	$4,s308
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	j	$L179
	nop
$L93:
	move	s309,$0
	move	$4,s309
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	move	s310,$2
	move	s117,s310
	lw	s311,%gp_rel(insize)($28)
	lw	s119,%gp_rel(inptr)($28)
	nop
	sltu	s66,s119,s311
	bne	s66,$0,$L235
	nop
$L95:
	move	s312,$0
	move	$4,s312
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	move	s313,$2
	sll	s314,s313,8
	or	s125,s314,s117
	lw	s315,%gp_rel(verbose)($28)
	nop
	beq	s315,$0,$L166
	nop
$L210:
	sw	s125,16($sp)
	lw	s316,%gp_rel(stderr)($28)
	lui	s317,%hi($LC12)
	addiu	s318,s317,%lo($LC12)
	lw	s319,%gp_rel(progname)($28)
	lui	s320,%hi(ifname)
	addiu	s321,s320,%lo(ifname)
	move	$4,s316
	move	$5,s318
	move	$6,s319
	move	$7,s321
	jal	fprintf
	nop
	j	$L166
	nop
$L90:
	move	s322,$0
	move	$4,s322
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	move	s323,$2
	sll	s108,s323,8
	j	$L91
	nop
$L88:
	move	s324,$0
	move	$4,s324
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	move	s325,$2
	move	s101,s325
	lw	s97,%gp_rel(insize)($28)
	lw	s102,%gp_rel(inptr)($28)
	j	$L89
	nop
$L213:
	move	s326,$0
	move	$4,s326
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	j	$L177
	nop
$L212:
	move	s327,$0
	move	$4,s327
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	j	$L175
	nop
$L211:
	move	s328,$0
	move	$4,s328
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	fill_inbuf
	nop
	j	$L173
	nop
$L231:
	lw	s329,%gp_rel(stderr)($28)
	lui	s330,%hi($LC18)
	addiu	s331,s330,%lo($LC18)
	lw	s332,%gp_rel(progname)($28)
	lui	s333,%hi(ifname)
	addiu	s334,s333,%lo(ifname)
	move	$4,s329
	move	$5,s331
	move	$6,s332
	move	$7,s334
	jal	fprintf
	nop
	sw	s26,%gp_rel(exit_code)($28)
	li	s210,-1			# 0xffffffffffffffff
	j	$L67
	nop
$L104:
	lui	s335,%hi(ofname)
	addiu	s336,s335,%lo(ofname)
	move	$4,s336
	move	$5,s94
	move	$6,s66
	move	$7,s65
	jal	basename
	nop
	move	s337,$2
	move	s338,s337
	move	s339,s337
	lui	s340,%hi(inbuf)
	addiu	s341,s340,%lo(inbuf)
	lui	s342,%hi(ofname+1024)
	addiu	s343,s342,%lo(ofname+1024)
	lui	s344,%hi($LC13)
	addiu	s345,s344,%lo($LC13)
$L169:
	lw	s346,%gp_rel(inptr)($28)
	lw	s347,%gp_rel(insize)($28)
	nop
	sltu	s348,s346,s347
	beq	s348,$0,$L107
	nop
	addu	s349,s346,s341
	lb	s350,0(s349)
	addiu	s351,s346,1
	sw	s351,%gp_rel(inptr)($28)
$L108:
	sb	s350,0(s339)
	beq	s350,$0,$L109
	nop
	addiu	s339,s339,1
	sltu	s352,s339,s343
	bne	s352,$0,$L169
	nop
	move	s353,s345
	move	$4,s353
	jal	error
	nop
	j	$L169
	nop
$L124:
	li	s354,2			# 0x2
	sw	s354,%gp_rel(exit_code)($28)
	li	s210,-2			# 0xfffffffffffffffe
	j	$L67
	nop
$L107:
	move	s355,$0
	move	$4,s355
	jal	fill_inbuf
	nop
	move	s356,$2
	sll	s357,s356,24
	sra	s350,s357,24
	j	$L108
	nop
$L204:
	sw	s39,16($sp)
	lw	s358,%gp_rel(stderr)($28)
	lui	s359,%hi($LC7)
	addiu	s360,s359,%lo($LC7)
	lw	s361,%gp_rel(progname)($28)
	lui	s362,%hi(ifname)
	addiu	s363,s362,%lo(ifname)
	move	$4,s358
	move	$5,s360
	move	$6,s361
	move	$7,s363
	jal	fprintf
	nop
	li	s364,1			# 0x1
	sw	s364,%gp_rel(exit_code)($28)
	li	s210,-1			# 0xffffffffffffffff
	j	$L67
	nop
$L117:
	move	s365,s27
	lui	s366,%hi($LC16)
	addiu	s367,s366,%lo($LC16)
	li	s368,2			# 0x2
	move	$4,s365
	move	$5,s367
	move	$6,s368
	jal	memcmp
	nop
	move	s369,$2
	bne	s369,$0,$L119
	nop
	lui	s370,%hi(unlzw)
	addiu	s371,s370,%lo(unlzw)
	sw	s371,%gp_rel(work)($28)
	li	s210,1			# 0x1
	sw	s210,%gp_rel(method)($28)
	sw	s210,%gp_rel(last_member)($28)
	j	$L67
	nop
$L109:
	lw	s372,%gp_rel(list)($28)
	nop
	bne	s372,$0,$L101
	nop
	beq	s338,$0,$L101
	nop
	sw	$0,%gp_rel(list)($28)
	j	$L101
	nop
$L205:
	lw	s373,%gp_rel(stderr)($28)
	lui	s374,%hi($LC8)
	addiu	s375,s374,%lo($LC8)
	lw	s376,%gp_rel(progname)($28)
	lui	s377,%hi(ifname)
	addiu	s378,s377,%lo(ifname)
	move	$4,s373
	move	$5,s375
	move	$6,s376
	move	$7,s378
	jal	fprintf
	nop
	li	s379,1			# 0x1
	sw	s379,%gp_rel(exit_code)($28)
	li	s210,-1			# 0xffffffffffffffff
	j	$L67
	nop
$L206:
	lw	s380,%gp_rel(stderr)($28)
	lui	s381,%hi($LC9)
	addiu	s382,s381,%lo($LC9)
	lw	s383,%gp_rel(progname)($28)
	lui	s384,%hi(ifname)
	addiu	s385,s384,%lo(ifname)
	move	$4,s380
	move	$5,s382
	move	$6,s383
	move	$7,s385
	jal	fprintf
	nop
	li	s34,1			# 0x1
	sw	s34,%gp_rel(exit_code)($28)
	lw	s386,%gp_rel(force)($28)
	nop
	slt	s267,s386,2
	beq	s267,$0,$L71
	nop
$L72:
	li	s210,-1			# 0xffffffffffffffff
	j	$L67
	nop
$L207:
	sw	s50,16($sp)
	lw	s387,%gp_rel(stderr)($28)
	lui	s388,%hi($LC10)
	addiu	s389,s388,%lo($LC10)
	lw	s390,%gp_rel(progname)($28)
	lui	s391,%hi(ifname)
	addiu	s392,s391,%lo(ifname)
	move	$4,s387
	move	$5,s389
	move	$6,s390
	move	$7,s392
	jal	fprintf
	nop
	li	s393,1			# 0x1
	sw	s393,%gp_rel(exit_code)($28)
	lw	s394,%gp_rel(force)($28)
	nop
	slt	s395,s394,2
	beq	s395,$0,$L73
	nop
	li	s210,-1			# 0xffffffffffffffff
	j	$L67
	nop
$L233:
	lui	s396,%hi(inbuf)
	addiu	s397,s396,%lo(inbuf)
	addiu	s398,s243,%lo($LC14)
	li	s399,4			# 0x4
	move	$4,s397
	move	$5,s398
	move	$6,s399
	jal	memcmp
	nop
	move	s400,$2
	bne	s400,$0,$L116
	nop
	sw	$0,%gp_rel(inptr)($28)
	lui	s401,%hi(unzip)
	addiu	s402,s401,%lo(unzip)
	sw	s402,%gp_rel(work)($28)
	move	s403,s6
	move	$4,s403
	jal	check_zipfile
	nop
	move	s404,$2
	bne	s404,$0,$L72
	nop
	li	s405,1			# 0x1
	sw	s405,%gp_rel(last_member)($28)
	j	$L115
	nop
$L119:
	move	s406,s27
	lui	s407,%hi($LC17)
	addiu	s408,s407,%lo($LC17)
	li	s409,2			# 0x2
	move	$4,s406
	move	$5,s408
	move	$6,s409
	jal	memcmp
	nop
	move	s410,$2
	bne	s410,$0,$L120
	nop
	lui	s411,%hi(unlzh)
	addiu	s412,s411,%lo(unlzh)
	sw	s412,%gp_rel(work)($28)
	li	s413,3			# 0x3
	sw	s413,%gp_rel(method)($28)
	li	s414,1			# 0x1
	sw	s414,%gp_rel(last_member)($28)
	lw	s210,%gp_rel(method)($28)
	j	$L67
	nop
$L120:
	lw	s415,%gp_rel(force)($28)
	nop
	beq	s415,$0,$L121
	nop
	lw	s416,%gp_rel(to_stdout)($28)
	nop
	beq	s416,$0,$L121
	nop
	lw	s417,%gp_rel(list)($28)
	nop
	bne	s417,$0,$L121
	nop
	sw	$0,%gp_rel(method)($28)
	lui	s418,%hi(copy)
	addiu	s419,s418,%lo(copy)
	sw	s419,%gp_rel(work)($28)
	sw	$0,%gp_rel(inptr)($28)
	li	s420,1			# 0x1
	sw	s420,%gp_rel(last_member)($28)
	lw	s210,%gp_rel(method)($28)
	j	$L67
	nop
	.set	macro
	.set	reorder
	.end	get_method
	.size	get_method, .-get_method
	.section	.rodata.str1.4
	.align	2
$LC20:
	.ascii	"method  crc     date  time  \000"
	.align	2
$LC21:
	.ascii	"compressed  uncompr. ratio uncompressed_name\000"
	.align	2
$LC22:
	.ascii	"                            %9lu %9lu \000"
	.align	2
$LC23:
	.ascii	"%9ld %9ld \000"
	.align	2
$LC24:
	.ascii	" (totals)\000"
	.align	2
$LC25:
	.ascii	"%5s %08lx %11s \000"
	.align	2
$LC26:
	.ascii	" %s\012\000"
	.text
	.align	2
	.set	nomips16
	.ent	do_list
do_list:
	.frame	$sp,40,$31		# vars= 8, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
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
	lw	s8,%gp_rel(first_time.4263)($28)
	nop
	beq	s8,$0,$L237
	nop
	bltz	s2,$L238
	nop
	sw	$0,%gp_rel(first_time.4263)($28)
	lw	s9,%gp_rel(verbose)($28)
	nop
	bne	s9,$0,$L253
	nop
$L239:
	lw	s2,%gp_rel(quiet)($28)
	nop
	beq	s2,$0,$L254
	nop
$L240:
	li	s10,-1			# 0xffffffffffffffff
	sw	s10,%gp_rel(bytes_out)($28)
	lw	s11,%gp_rel(ifile_size)($28)
	nop
	sw	s11,%gp_rel(bytes_in)($28)
	li	s12,8			# 0x8
	beq	s7,s12,$L255
	nop
$L244:
	li	s13,-1			# 0xffffffffffffffff
$L246:
	addiu	s14,$28,%gp_rel(time_stamp)
	move	$4,s14
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	ctime
	nop
	move	s15,$2
	addiu	s16,s15,4
	sb	$0,12(s16)
	lw	s17,%gp_rel(verbose)($28)
	nop
	bne	s17,$0,$L256
	nop
$L247:
	lui	s18,%hi($LC23)
	addiu	s19,s18,%lo($LC23)
	lw	s20,%gp_rel(bytes_in)($28)
	lw	s21,%gp_rel(bytes_out)($28)
	move	$4,s19
	move	$5,s20
	move	$6,s21
	move	$7,s16
	jal	printf
	nop
	lw	s22,%gp_rel(bytes_in)($28)
	li	s23,-1			# 0xffffffffffffffff
	beq	s22,s23,$L257
	nop
	lw	s24,%gp_rel(total_in)($28)
	nop
	bltz	s24,$L250
	nop
	addu	s25,s24,s22
	sw	s25,%gp_rel(total_in)($28)
$L250:
	lw	s26,%gp_rel(bytes_out)($28)
	nop
	move	s27,s26
	li	s28,-1			# 0xffffffffffffffff
	beq	s26,s28,$L258
	nop
	lw	s29,%gp_rel(total_out)($28)
	nop
	bltz	s29,$L251
	nop
$L261:
	addu	s30,s27,s29
	sw	s30,%gp_rel(total_out)($28)
$L251:
	lw	s31,%gp_rel(header_bytes)($28)
	nop
	addu	s32,s26,s31
	subu	s33,s32,s22
	lw	s34,%gp_rel(stdout)($28)
	move	$4,s33
	move	$5,s26
	move	$6,s34
	move	$7,s28
	jal	display_ratio
	nop
	lui	s35,%hi($LC26)
	addiu	s36,s35,%lo($LC26)
	lui	s37,%hi(ofname)
	addiu	s38,s37,%lo(ofname)
	move	$4,s36
	move	$5,s38
	jal	printf
	nop
	move	s8,$2
$L252:
	addiu	$sp,$sp,40
	move	$2,s8
	j	s5
	nop
$L237:
	bgez	s2,$L240
	nop
$L238:
	lw	s39,%gp_rel(total_in)($28)
	nop
	blez	s39,$L252
	nop
	lw	s40,%gp_rel(total_out)($28)
	nop
	blez	s40,$L252
	nop
	lw	s41,%gp_rel(verbose)($28)
	nop
	bne	s41,$0,$L259
	nop
	lw	s42,%gp_rel(quiet)($28)
	nop
	beq	s42,$0,$L260
	nop
$L243:
	lw	s43,%gp_rel(header_bytes)($28)
	nop
	addu	s44,s40,s43
	subu	s45,s44,s39
	move	s46,s40
	lw	s47,%gp_rel(stdout)($28)
	move	$4,s45
	move	$5,s46
	move	$6,s47
	move	$7,s41
	jal	display_ratio
	nop
	lui	s48,%hi($LC24)
	addiu	s49,s48,%lo($LC24)
	move	$4,s49
	jal	puts
	nop
	move	s50,$2
	addiu	$sp,$sp,40
	move	$2,s50
	j	s5
	nop
$L255:
	lw	s51,%gp_rel(last_member)($28)
	nop
	bne	s51,$0,$L244
	nop
	move	s52,s6
	li	s53,-8			# 0xfffffffffffffff8
	li	s54,2			# 0x2
	move	$4,s52
	move	$5,s53
	move	$6,s54
	move	$7,s4
	jal	lseek
	nop
	move	s55,$2
	sw	s55,%gp_rel(bytes_in)($28)
	beq	s55,s10,$L244
	nop
	addiu	s56,s55,8
	sw	s56,%gp_rel(bytes_in)($28)
	move	s57,s6
	addiu	s58,$sp,16
	li	s59,8			# 0x8
	move	$4,s57
	move	$5,s58
	move	$6,s59
	jal	read
	nop
	move	s60,$2
	beq	s60,s7,$L245
	nop
	jal	read_error
	nop
$L245:
	lbu	s61,19($sp)
	nop
	sll	s62,s61,8
	lbu	s63,18($sp)
	nop
	or	s64,s62,s63
	sll	s65,s64,16
	lbu	s66,17($sp)
	nop
	sll	s67,s66,8
	lbu	s68,16($sp)
	nop
	or	s69,s67,s68
	or	s13,s65,s69
	lbu	s70,23($sp)
	nop
	sll	s3,s70,8
	lbu	s4,22($sp)
	nop
	or	s71,s3,s4
	sll	s72,s71,16
	lbu	s2,21($sp)
	nop
	sll	s73,s2,8
	lbu	s74,20($sp)
	nop
	or	s75,s73,s74
	or	s76,s72,s75
	sw	s76,%gp_rel(bytes_out)($28)
	j	$L246
	nop
$L258:
	sw	s26,%gp_rel(total_out)($28)
	sw	$0,%gp_rel(header_bytes)($28)
	sw	$0,%gp_rel(bytes_out)($28)
	sw	$0,%gp_rel(bytes_in)($28)
	move	s22,$0
	move	s26,$0
	j	$L251
	nop
$L257:
	sw	s22,%gp_rel(total_in)($28)
	sw	$0,%gp_rel(header_bytes)($28)
	sw	$0,%gp_rel(bytes_out)($28)
	sw	$0,%gp_rel(bytes_in)($28)
	move	s27,$0
	move	s22,$0
	move	s26,$0
	lw	s29,%gp_rel(total_out)($28)
	nop
	bgez	s29,$L261
	nop
	j	$L251
	nop
$L256:
	sll	s77,s7,2
	lui	s78,%hi(methods.4264)
	addiu	s79,s78,%lo(methods.4264)
	addu	s80,s77,s79
	lui	s81,%hi($LC25)
	addiu	s82,s81,%lo($LC25)
	lw	s83,0(s80)
	move	s84,s13
	move	$4,s82
	move	$5,s83
	move	$6,s84
	move	$7,s16
	jal	printf
	nop
	j	$L247
	nop
$L254:
	lui	s85,%hi($LC21)
	addiu	s86,s85,%lo($LC21)
	move	$4,s86
	move	$5,s2
	move	$6,s85
	move	$7,s4
	jal	puts
	nop
	li	s10,-1			# 0xffffffffffffffff
	sw	s10,%gp_rel(bytes_out)($28)
	lw	s87,%gp_rel(ifile_size)($28)
	nop
	sw	s87,%gp_rel(bytes_in)($28)
	li	s88,8			# 0x8
	bne	s7,s88,$L244
	nop
	j	$L255
	nop
$L253:
	lui	s89,%hi($LC20)
	addiu	s90,s89,%lo($LC20)
	move	$4,s90
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	printf
	nop
	j	$L239
	nop
$L260:
	lui	s91,%hi($LC23)
	addiu	s92,s91,%lo($LC23)
	move	$4,s92
	move	$5,s39
	move	$6,s40
	move	$7,s41
	jal	printf
	nop
	lw	s39,%gp_rel(total_in)($28)
	lw	s40,%gp_rel(total_out)($28)
	j	$L243
	nop
$L259:
	lui	s93,%hi($LC22)
	addiu	s94,s93,%lo($LC22)
	move	$4,s94
	move	$5,s39
	move	$6,s40
	move	$7,s41
	jal	printf
	nop
	lw	s39,%gp_rel(total_in)($28)
	lw	s40,%gp_rel(total_out)($28)
	j	$L243
	nop
	.set	macro
	.set	reorder
	.end	do_list
	.size	do_list, .-do_list
	.section	.rodata.str1.4
	.align	2
$LC27:
	.ascii	"\000"
	.align	2
$LC28:
	.ascii	"de\000"
	.align	2
$LC29:
	.ascii	"%s: %s: cannot %scompress onto itself\012\000"
	.align	2
$LC30:
	.ascii	"%s: %s and %s are the same file\012\000"
	.align	2
$LC31:
	.ascii	"n\000"
	.align	2
$LC32:
	.ascii	"%s: %s already exists;\000"
	.align	2
$LC33:
	.ascii	" do you wish to overwrite (y or n)? \000"
	.align	2
$LC34:
	.ascii	"\011not overwritten\012\000"
	.align	2
$LC35:
	.ascii	"%s: \000"
	.align	2
$LC36:
	.ascii	"%s: %s: warning, name truncated\012\000"
	.text
	.align	2
	.set	nomips16
	.ent	create_outfile
create_outfile:
	.frame	$sp,576,$31		# vars= 512, regs= 10/0, args= 24, gp= 0
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
	addiu	$sp,$sp,-576
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	__errno_location
	nop
	move	s7,$2
	move	s8,s7
	addiu	s9,$sp,248
	lui	s10,%hi(ofname)
	addiu	s11,s10,%lo(ofname)
	move	s12,s11
	addiu	s13,$sp,392
	addiu	s14,$sp,104
$L287:
	sw	$0,0(s8)
	j	$L263
	nop
$L265:
	lw	s15,0(s8)
	li	s16,78			# 0x4e
	bne	s15,s16,$L264
	nop
	move	s17,s12
	move	$4,s17
	jal	shorten_name
	nop
$L263:
	li	s18,3			# 0x3
	move	s19,s11
	move	s20,s9
	move	$4,s18
	move	$5,s19
	move	$6,s20
	jal	__xstat
	nop
	move	s21,$2
	bne	s21,$0,$L265
	nop
	lw	s22,%gp_rel(decompress)($28)
	nop
	beq	s22,$0,$L320
	nop
$L324:
	lw	s23,264($sp)
	lui	s24,%hi(istat)
	addiu	s25,s24,%lo(istat)
	lw	s26,16(s25)
	nop
	beq	s26,s23,$L326
	nop
$L269:
	lw	s27,%gp_rel(force)($28)
	nop
	bne	s27,$0,$L278
	nop
	lui	s28,%hi($LC31)
	lhu	s29,%lo($LC31)(s28)
	nop
	lw	s30,%gp_rel(stderr)($28)
	lui	s31,%hi($LC32)
	addiu	s32,s31,%lo($LC32)
	lw	s33,%gp_rel(progname)($28)
	move	s34,s11
	move	$4,s30
	move	$5,s32
	move	$6,s33
	move	$7,s34
	jal	fprintf
	nop
	lw	s35,%gp_rel(foreground)($28)
	nop
	bne	s35,$0,$L327
	nop
$L275:
	jal	__ctype_b_loc
	nop
	move	s36,$2
	lw	s37,0(s36)
	sll	s38,s29,1
	addu	s39,s37,s38
	lhu	s40,0(s39)
	nop
	andi	s24,s40,0x1
	beq	s24,$0,$L276
	nop
	xori	s41,s29,0x59
	sltu	s42,$0,s41
	bne	s42,$0,$L328
	nop
$L278:
	move	s43,s11
	li	s44,511			# 0x1ff
	move	$4,s43
	move	$5,s44
	move	$6,s45
	move	$7,s24
	jal	chmod
	nop
	move	s46,s11
	move	$4,s46
	jal	unlink
	nop
	move	s47,$2
	bne	s47,$0,$L329
	nop
$L264:
	li	s48,1			# 0x1
	sw	s48,%gp_rel(remove_ofname)($28)
	move	s49,s11
	li	s50,1281			# 0x501
	li	s51,384			# 0x180
	move	$4,s49
	move	$5,s50
	move	$6,s51
	jal	open
	nop
	move	s52,$2
	sw	s52,%gp_rel(ofd)($28)
	li	s53,-1			# 0xffffffffffffffff
	beq	s52,s53,$L330
	nop
	li	s54,3			# 0x3
	move	s55,s52
	move	s56,s14
	move	$4,s54
	move	$5,s55
	move	$6,s56
	jal	__fxstat
	nop
	move	s57,$2
	bne	s57,$0,$L331
	nop
	move	s58,s12
	move	$4,s58
	jal	strlen
	nop
	move	s59,$2
	addiu	s60,s59,-1
	addu	s61,s11,s60
	lb	s62,0(s61)
	subu	s63,s9,s14
	addiu	s64,s63,-16
	srl	s65,s64,4
	andi	s66,s65,0x3
	lw	s67,0(s14)
	lw	s68,4(s14)
	lw	s69,8(s14)
	lw	s70,12(s14)
	sw	s67,0(s13)
	sw	s68,4(s13)
	sw	s69,8(s13)
	sw	s70,12(s13)
	addiu	s71,$sp,120
	addiu	s72,s13,16
	beq	s71,s9,$L323
	nop
	beq	s66,$0,$L282
	nop
	beq	s66,s48,$L316
	nop
	li	s73,2			# 0x2
	beq	s66,s73,$L317
	nop
	lw	s74,4(s71)
	lw	s75,8(s71)
	lw	s76,12(s71)
	lw	s77,120($sp)
	nop
	sw	s77,16(s13)
	sw	s74,4(s72)
	sw	s75,8(s72)
	sw	s76,12(s72)
	addiu	s71,$sp,136
	addiu	s72,s13,32
$L317:
	lw	s78,0(s71)
	lw	s79,4(s71)
	lw	s80,8(s71)
	lw	s81,12(s71)
	sw	s78,0(s72)
	sw	s79,4(s72)
	sw	s80,8(s72)
	sw	s81,12(s72)
	addiu	s71,s71,16
	addiu	s72,s72,16
$L316:
	lw	s82,0(s71)
	lw	s83,4(s71)
	lw	s84,8(s71)
	lw	s85,12(s71)
	sw	s82,0(s72)
	sw	s83,4(s72)
	sw	s84,8(s72)
	sw	s85,12(s72)
	addiu	s71,s71,16
	addiu	s72,s72,16
	beq	s71,s9,$L323
	nop
$L282:
	lw	s86,0(s71)
	lw	s87,4(s71)
	lw	s88,8(s71)
	lw	s89,12(s71)
	sw	s86,0(s72)
	sw	s87,4(s72)
	sw	s88,8(s72)
	sw	s89,12(s72)
	addiu	s90,s71,16
	addiu	s91,s72,16
	lw	s92,16(s71)
	lw	s93,4(s90)
	lw	s94,8(s90)
	lw	s95,12(s90)
	sw	s92,16(s72)
	sw	s93,4(s91)
	sw	s94,8(s91)
	sw	s95,12(s91)
	addiu	s96,s71,32
	addiu	s97,s72,32
	lw	s98,32(s71)
	lw	s99,4(s96)
	lw	s100,8(s96)
	lw	s101,12(s96)
	sw	s98,32(s72)
	sw	s99,4(s97)
	sw	s100,8(s97)
	sw	s101,12(s97)
	addiu	s102,s71,48
	addiu	s103,s72,48
	lw	s104,48(s71)
	lw	s105,4(s102)
	lw	s106,8(s102)
	lw	s107,12(s102)
	sw	s104,48(s72)
	sw	s105,4(s103)
	sw	s106,8(s103)
	sw	s107,12(s103)
	addiu	s71,s71,64
	addiu	s72,s72,64
	bne	s71,s9,$L282
	nop
$L323:
	sb	$0,0(s61)
	li	s108,3			# 0x3
	move	s109,s11
	move	s110,s13
	move	$4,s108
	move	$5,s109
	move	$6,s110
	move	$7,s71
	jal	__xstat
	nop
	move	s111,$2
	bne	s111,$0,$L283
	nop
	lw	s112,408($sp)
	lw	s113,120($sp)
	nop
	beq	s113,s112,$L332
	nop
$L283:
	sb	s62,0(s61)
	move	s114,$0
$L280:
	addiu	$sp,$sp,576
	move	$2,s114
	j	s6
	nop
$L320:
	lui	s115,%hi(ofname)
	addiu	s116,s115,%lo(ofname)
	move	$4,s116
	move	$5,s22
	jal	strlen
	nop
	move	s117,$2
	addiu	s118,s117,-1
	addu	s119,s11,s118
	lb	s120,0(s119)
	subu	s121,s13,s9
	addiu	s122,s121,-16
	srl	s123,s122,4
	andi	s124,s123,0x3
	lw	s125,0(s9)
	lw	s126,4(s9)
	lw	s127,8(s9)
	lw	s128,12(s9)
	sw	s125,0(s13)
	sw	s126,4(s13)
	sw	s127,8(s13)
	sw	s128,12(s13)
	addiu	s129,$sp,264
	addiu	s130,s13,16
	beq	s129,s13,$L321
	nop
	beq	s124,$0,$L267
	nop
	li	s131,1			# 0x1
	beq	s124,s131,$L318
	nop
	li	s132,2			# 0x2
	beq	s124,s132,$L319
	nop
	lw	s133,4(s129)
	lw	s134,8(s129)
	lw	s135,12(s129)
	lw	s136,264($sp)
	nop
	sw	s136,16(s13)
	sw	s133,4(s130)
	sw	s134,8(s130)
	sw	s135,12(s130)
	addiu	s129,$sp,280
	addiu	s130,s13,32
$L319:
	lw	s137,0(s129)
	lw	s138,4(s129)
	lw	s139,8(s129)
	lw	s140,12(s129)
	sw	s137,0(s130)
	sw	s138,4(s130)
	sw	s139,8(s130)
	sw	s140,12(s130)
	addiu	s129,s129,16
	addiu	s130,s130,16
$L318:
	lw	s141,0(s129)
	lw	s142,4(s129)
	lw	s143,8(s129)
	lw	s144,12(s129)
	sw	s141,0(s130)
	sw	s142,4(s130)
	sw	s143,8(s130)
	sw	s144,12(s130)
	addiu	s129,s129,16
	addiu	s130,s130,16
	beq	s129,s13,$L321
	nop
$L267:
	lw	s145,0(s129)
	lw	s146,4(s129)
	lw	s147,8(s129)
	lw	s148,12(s129)
	sw	s145,0(s130)
	sw	s146,4(s130)
	sw	s147,8(s130)
	sw	s148,12(s130)
	addiu	s149,s129,16
	addiu	s150,s130,16
	lw	s151,16(s129)
	lw	s152,4(s149)
	lw	s153,8(s149)
	lw	s154,12(s149)
	sw	s151,16(s130)
	sw	s152,4(s150)
	sw	s153,8(s150)
	sw	s154,12(s150)
	addiu	s155,s129,32
	addiu	s156,s130,32
	lw	s157,32(s129)
	lw	s158,4(s155)
	lw	s159,8(s155)
	lw	s160,12(s155)
	sw	s157,32(s130)
	sw	s158,4(s156)
	sw	s159,8(s156)
	sw	s160,12(s156)
	addiu	s161,s129,48
	addiu	s162,s130,48
	lw	s163,48(s129)
	lw	s164,4(s161)
	lw	s165,8(s161)
	lw	s166,12(s161)
	sw	s163,48(s130)
	sw	s164,4(s162)
	sw	s165,8(s162)
	sw	s166,12(s162)
	addiu	s129,s129,64
	addiu	s130,s130,64
	bne	s129,s13,$L267
	nop
$L321:
	sb	$0,0(s119)
	li	s167,3			# 0x3
	move	s168,s11
	move	s169,s13
	move	$4,s167
	move	$5,s168
	move	$6,s169
	move	$7,s129
	jal	__xstat
	nop
	move	s170,$2
	beq	s170,$0,$L322
	nop
	lw	s171,264($sp)
$L268:
	sb	s120,0(s119)
	lui	s24,%hi(istat)
	addiu	s172,s24,%lo(istat)
	lw	s173,16(s172)
	nop
	bne	s173,s171,$L269
	nop
$L326:
	lui	s174,%hi(istat)
	lw	s175,%lo(istat)(s174)
	lw	s176,248($sp)
	nop
	bne	s175,s176,$L269
	nop
	lui	s177,%hi(istat)
	addiu	s178,s177,%lo(istat)
	lw	s179,20(s178)
	lw	s180,268($sp)
	nop
	bne	s179,s180,$L269
	nop
	lui	s181,%hi(istat)
	addiu	s45,s181,%lo(istat)
	lw	s182,28(s45)
	lw	s183,276($sp)
	nop
	bne	s182,s183,$L269
	nop
	lui	s184,%hi(istat)
	addiu	s185,s184,%lo(istat)
	lw	s186,32(s185)
	lw	s187,280($sp)
	nop
	bne	s186,s187,$L269
	nop
	lui	s188,%hi(istat)
	addiu	s189,s188,%lo(istat)
	lw	s190,48(s189)
	lw	s191,296($sp)
	nop
	bne	s190,s191,$L269
	nop
	lui	s192,%hi(istat)
	addiu	s193,s192,%lo(istat)
	lw	s194,56(s193)
	lw	s24,304($sp)
	nop
	bne	s194,s24,$L269
	nop
	lui	s195,%hi(istat)
	addiu	s196,s195,%lo(istat)
	lw	s197,64(s196)
	lw	s198,312($sp)
	nop
	bne	s197,s198,$L269
	nop
	lui	s199,%hi(istat)
	addiu	s45,s199,%lo(istat)
	lw	s200,72(s45)
	lw	s201,320($sp)
	nop
	bne	s200,s201,$L269
	nop
	lui	s202,%hi(ifname)
	addiu	s203,s202,%lo(ifname)
	lui	s204,%hi(ofname)
	addiu	s205,s204,%lo(ofname)
	move	$4,s203
	move	$5,s205
	move	$6,s45
	move	$7,s24
	jal	strcmp
	nop
	move	s206,$2
	bne	s206,$0,$L270
	nop
	lw	s207,%gp_rel(stderr)($28)
	lw	s208,%gp_rel(progname)($28)
	lw	s209,%gp_rel(decompress)($28)
	nop
	bne	s209,$0,$L271
	nop
	lui	s210,%hi($LC27)
	addiu	s211,s210,%lo($LC27)
$L272:
	sw	s211,16($sp)
	lui	s212,%hi($LC29)
	addiu	s213,s212,%lo($LC29)
	addiu	s214,s202,%lo(ifname)
	move	$4,s207
	move	$5,s213
	move	$6,s208
	move	$7,s214
	jal	fprintf
	nop
$L325:
	li	s215,1			# 0x1
	sw	s215,%gp_rel(exit_code)($28)
$L274:
	lw	s216,%gp_rel(ifd)($28)
	move	$4,s216
	move	$6,s215
	jal	close
	nop
	li	s114,1			# 0x1
	j	$L280
	nop
$L332:
	lw	s217,392($sp)
	lw	s218,104($sp)
	nop
	bne	s218,s217,$L283
	nop
	lw	s219,412($sp)
	lw	s220,124($sp)
	nop
	bne	s220,s219,$L283
	nop
	lw	s221,420($sp)
	lw	s222,132($sp)
	nop
	bne	s222,s221,$L283
	nop
	lw	s223,424($sp)
	lw	s224,136($sp)
	nop
	bne	s224,s223,$L283
	nop
	lw	s225,440($sp)
	lw	s226,152($sp)
	nop
	bne	s226,s225,$L283
	nop
	lw	s227,448($sp)
	lw	s228,160($sp)
	nop
	bne	s228,s227,$L283
	nop
	lw	s229,456($sp)
	lw	s230,168($sp)
	nop
	bne	s230,s229,$L283
	nop
	lw	s231,464($sp)
	lw	s232,176($sp)
	nop
	bne	s232,s231,$L283
	nop
	sb	s62,0(s61)
	lw	s233,%gp_rel(decompress)($28)
	nop
	bne	s233,$0,$L333
	nop
	lw	s234,%gp_rel(ofd)($28)
	move	$4,s234
	move	$5,s229
	move	$6,s220
	move	$7,s113
	jal	close
	nop
	move	s235,s11
	move	$4,s235
	jal	unlink
	nop
	move	s236,s11
	move	$4,s236
	jal	shorten_name
	nop
	j	$L287
	nop
$L329:
	lw	s237,%gp_rel(stderr)($28)
	lui	s238,%hi($LC35)
	addiu	s239,s238,%lo($LC35)
	lw	s240,%gp_rel(progname)($28)
	move	$4,s237
	move	$5,s239
	move	$6,s240
	jal	fprintf
	nop
	move	s241,s11
	move	$4,s241
	jal	perror
	nop
	j	$L325
	nop
$L276:
	xori	s242,s29,0x79
	sltu	s243,$0,s242
	beq	s243,$0,$L278
	nop
$L328:
	lui	s244,%hi($LC34)
	addiu	s245,s244,%lo($LC34)
	li	s246,1			# 0x1
	li	s247,17			# 0x11
	lw	s248,%gp_rel(stderr)($28)
	move	$4,s245
	move	$5,s246
	move	$6,s247
	move	$7,s248
	jal	fwrite
	nop
	lw	s249,%gp_rel(exit_code)($28)
	nop
	bne	s249,$0,$L274
	nop
	li	s250,2			# 0x2
	sw	s250,%gp_rel(exit_code)($28)
	j	$L274
	nop
$L327:
	lw	s251,%gp_rel(stdin)($28)
	move	$4,s251
	jal	fileno
	nop
	move	s252,$2
	move	s253,s252
	move	$4,s253
	jal	isatty
	nop
	move	s254,$2
	beq	s254,$0,$L275
	nop
	lui	s255,%hi($LC33)
	addiu	s256,s255,%lo($LC33)
	li	s257,1			# 0x1
	li	s258,36			# 0x24
	lw	s259,%gp_rel(stderr)($28)
	move	$4,s256
	move	$5,s257
	move	$6,s258
	move	$7,s259
	jal	fwrite
	nop
	lw	s260,%gp_rel(stderr)($28)
	move	$4,s260
	jal	fflush
	nop
	addiu	s261,$sp,24
	li	s262,79			# 0x4f
	lw	s263,%gp_rel(stdin)($28)
	move	$4,s261
	move	$5,s262
	move	$6,s263
	jal	fgets
	nop
	j	$L275
	nop
$L322:
	lw	s171,264($sp)
	lw	s264,408($sp)
	nop
	bne	s171,s264,$L268
	nop
	lw	s265,392($sp)
	lw	s266,248($sp)
	nop
	bne	s266,s265,$L268
	nop
	lw	s267,412($sp)
	lw	s268,268($sp)
	nop
	bne	s268,s267,$L268
	nop
	lw	s269,420($sp)
	lw	s270,276($sp)
	nop
	bne	s270,s269,$L268
	nop
	lw	s271,424($sp)
	lw	s272,280($sp)
	nop
	bne	s272,s271,$L268
	nop
	lw	s273,440($sp)
	lw	s45,296($sp)
	nop
	bne	s45,s273,$L268
	nop
	lw	s274,448($sp)
	lw	s275,304($sp)
	nop
	bne	s275,s274,$L268
	nop
	lw	s276,456($sp)
	lw	s277,312($sp)
	nop
	bne	s277,s276,$L268
	nop
	lw	s278,464($sp)
	lw	s279,320($sp)
	nop
	bne	s279,s278,$L268
	nop
	sb	s120,0(s119)
	move	s280,s11
	move	$4,s280
	move	$5,s270
	move	$6,s45
	move	$7,s264
	jal	shorten_name
	nop
	li	s281,3			# 0x3
	move	s282,s11
	move	s283,s9
	move	$4,s281
	move	$5,s282
	move	$6,s283
	jal	__xstat
	nop
	move	s284,$2
	beq	s284,$0,$L324
	nop
	j	$L264
	nop
$L330:
	move	s285,s11
	move	$4,s285
	jal	perror
	nop
	lw	s286,%gp_rel(ifd)($28)
	move	$4,s286
	jal	close
	nop
	sw	s48,%gp_rel(exit_code)($28)
	li	s114,1			# 0x1
	j	$L280
	nop
$L331:
	lw	s287,%gp_rel(stderr)($28)
	lui	s288,%hi($LC35)
	addiu	s289,s288,%lo($LC35)
	lw	s290,%gp_rel(progname)($28)
	move	$4,s287
	move	$5,s289
	move	$6,s290
	jal	fprintf
	nop
	move	s291,s11
	move	$4,s291
	jal	perror
	nop
	lw	s292,%gp_rel(ifd)($28)
	move	$4,s292
	jal	close
	nop
	lw	s293,%gp_rel(ofd)($28)
	move	$4,s293
	jal	close
	nop
	move	s294,s11
	move	$4,s294
	jal	unlink
	nop
	sw	s48,%gp_rel(exit_code)($28)
	li	s114,1			# 0x1
	j	$L280
	nop
$L271:
	lui	s295,%hi($LC28)
	addiu	s211,s295,%lo($LC28)
	j	$L272
	nop
$L270:
	lui	s296,%hi(ofname)
	addiu	s297,s296,%lo(ofname)
	sw	s297,16($sp)
	lw	s298,%gp_rel(stderr)($28)
	lui	s299,%hi($LC30)
	addiu	s300,s299,%lo($LC30)
	lw	s301,%gp_rel(progname)($28)
	addiu	s302,s202,%lo(ifname)
	move	$4,s298
	move	$5,s300
	move	$6,s301
	move	$7,s302
	jal	fprintf
	nop
	j	$L325
	nop
$L333:
	lw	s303,%gp_rel(quiet)($28)
	nop
	beq	s303,$0,$L334
	nop
$L285:
	lw	s304,%gp_rel(exit_code)($28)
	nop
	bne	s304,$0,$L286
	nop
	li	s305,2			# 0x2
	sw	s305,%gp_rel(exit_code)($28)
	move	s114,$0
	j	$L280
	nop
$L286:
	move	s114,$0
	j	$L280
	nop
$L334:
	lw	s306,%gp_rel(stderr)($28)
	lui	s307,%hi($LC36)
	addiu	s308,s307,%lo($LC36)
	lw	s309,%gp_rel(progname)($28)
	lui	s310,%hi(ofname)
	addiu	s311,s310,%lo(ofname)
	move	$4,s306
	move	$5,s308
	move	$6,s309
	move	$7,s311
	jal	fprintf
	nop
	j	$L285
	nop
	.set	macro
	.set	reorder
	.end	create_outfile
	.size	create_outfile, .-create_outfile
	.align	2
	.globl	abort_gzip
	.set	nomips16
	.ent	abort_gzip
abort_gzip:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$5
	move	s2,$6
	move	s3,$7
	move	s4,$31
	addiu	$sp,$sp,-24
	sw	s4,20($sp)
	lw	s5,%gp_rel(remove_ofname)($28)
	nop
	beq	s5,$0,$L336
	nop
	lw	s6,%gp_rel(ofd)($28)
	move	$4,s6
	move	$5,s1
	move	$6,s2
	move	$7,s3
	jal	close
	nop
	lui	s7,%hi(ofname)
	addiu	s8,s7,%lo(ofname)
	move	$4,s8
	jal	unlink
	nop
$L336:
	lw	s9,%gp_rel(in_exit.4545)($28)
	nop
	beq	s9,$0,$L337
	nop
$L339:
	li	s10,1			# 0x1
	move	$4,s10
	move	$5,s1
	move	$6,s2
	move	$7,s3
	jal	exit
	nop
$L337:
	li	s1,1			# 0x1
	sw	s1,%gp_rel(in_exit.4545)($28)
	lw	s11,%gp_rel(env)($28)
	nop
	beq	s11,$0,$L338
	nop
	move	$4,s11
	move	$5,s1
	move	$6,s2
	move	$7,s3
	jal	free
	nop
	sw	$0,%gp_rel(env)($28)
$L338:
	lw	s12,%gp_rel(args)($28)
	nop
	beq	s12,$0,$L339
	nop
	move	$4,s12
	move	$5,s1
	move	$6,s2
	move	$7,s3
	jal	free
	nop
	sw	$0,%gp_rel(args)($28)
	j	$L339
	nop
	.set	macro
	.set	reorder
	.end	abort_gzip
	.size	abort_gzip, .-abort_gzip
	.section	.rodata.str1.4
	.align	2
$LC37:
	.ascii	"read from\000"
	.align	2
$LC38:
	.ascii	"written to\000"
	.align	2
$LC39:
	.ascii	"%s: compressed data not %s a terminal. Use -f to force %"
	.ascii	"scompression.\012\000"
	.align	2
$LC40:
	.ascii	"For help, type: %s -h\012\000"
	.align	2
$LC41:
	.ascii	"stdin\000"
	.align	2
$LC42:
	.ascii	"stdout\000"
	.align	2
$LC43:
	.ascii	"fstat(stdin)\000"
	.align	2
$LC44:
	.ascii	" OK\012\000"
	.text
	.align	2
	.set	nomips16
	.ent	treat_stdin
treat_stdin:
	.frame	$sp,40,$31		# vars= 0, regs= 3/0, args= 24, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$6
	move	s3,$7
	move	s4,$31
	addiu	$sp,$sp,-40
	lw	s5,%gp_rel(force)($28)
	nop
	bne	s5,$0,$L367
	nop
	lw	s6,%gp_rel(list)($28)
	nop
	beq	s6,$0,$L368
	nop
$L342:
	lui	s7,%hi(ifname)
	lui	s8,%hi($LC41)
	lw	s9,%lo($LC41)(s8)
	nop
	sw	s9,%lo(ifname)(s7)
	addiu	s10,s8,%lo($LC41)
	addiu	s11,s7,%lo(ifname)
	lhu	s12,4(s10)
	nop
	sh	s12,4(s11)
	lui	s13,%hi(ofname)
	lui	s14,%hi($LC42)
	lw	s15,%lo($LC42)(s14)
	nop
	sw	s15,%lo(ofname)(s13)
	addiu	s16,s14,%lo($LC42)
	addiu	s17,s13,%lo(ofname)
	lhu	s18,4(s16)
	nop
	sh	s18,4(s17)
	lbu	s19,6(s16)
	nop
	sb	s19,6(s17)
	sw	$0,%gp_rel(time_stamp)($28)
	bne	s6,$0,$L350
	nop
	lw	s6,%gp_rel(no_time)($28)
	nop
	beq	s6,$0,$L350
	nop
	li	s20,-1			# 0xffffffffffffffff
	sw	s20,%gp_rel(ifile_size)($28)
	move	$4,s1
	move	$5,s6
	move	$6,s2
	move	$7,s8
	jal	clear_bufs
	nop
	li	s21,1			# 0x1
	sw	s21,%gp_rel(to_stdout)($28)
	sw	$0,%gp_rel(part_nb)($28)
	lw	s22,%gp_rel(decompress)($28)
	nop
	bne	s22,$0,$L369
	nop
$L353:
	lw	s23,%gp_rel(list)($28)
	nop
	beq	s23,$0,$L364
	nop
	j	$L375
	nop
$L371:
	lw	s24,%gp_rel(decompress)($28)
	nop
	beq	s24,$0,$L359
	nop
	lw	s25,%gp_rel(last_member)($28)
	nop
	bne	s25,$0,$L359
	nop
	lw	s26,%gp_rel(insize)($28)
	lw	s27,%gp_rel(inptr)($28)
	nop
	beq	s27,s26,$L359
	nop
	lw	s28,%gp_rel(ifd)($28)
	move	$4,s28
	jal	get_method
	nop
	move	s29,$2
	sw	s29,%gp_rel(method)($28)
	bltz	s29,$L361
	nop
	sw	$0,%gp_rel(bytes_out)($28)
$L364:
	lw	s30,%gp_rel(work)($28)
	lw	s31,%gp_rel(stdin)($28)
	move	$4,s31
	jal	fileno
	nop
	move	s32,$2
	move	s33,s32
	lw	s34,%gp_rel(stdout)($28)
	move	$4,s34
	jal	fileno
	nop
	move	s35,$2
	move	s36,s33
	move	s37,s35
	move	$4,s36
	move	$5,s37
	jalr	s30
	nop
	move	s29,$2
	beq	s29,$0,$L371
	nop
$L361:
	addiu	$sp,$sp,40
	move	$2,s29
	j	s4
	nop
$L350:
	lw	s38,%gp_rel(stdin)($28)
	move	$4,s38
	move	$5,s6
	move	$6,s2
	move	$7,s8
	jal	fileno
	nop
	move	s39,$2
	li	s40,3			# 0x3
	move	s41,s39
	lui	s42,%hi(istat)
	addiu	s43,s42,%lo(istat)
	move	$4,s40
	move	$5,s41
	move	$6,s43
	jal	__fxstat
	nop
	move	s44,$2
	bne	s44,$0,$L372
	nop
	addiu	s45,s42,%lo(istat)
	lw	s46,64(s45)
	nop
	sw	s46,%gp_rel(time_stamp)($28)
$L374:
	li	s47,-1			# 0xffffffffffffffff
	sw	s47,%gp_rel(ifile_size)($28)
	move	$4,s46
	move	$6,s45
	jal	clear_bufs
	nop
	li	s21,1			# 0x1
	sw	s21,%gp_rel(to_stdout)($28)
	sw	$0,%gp_rel(part_nb)($28)
	lw	s48,%gp_rel(decompress)($28)
	nop
	beq	s48,$0,$L353
	nop
$L369:
	lw	s49,%gp_rel(ifd)($28)
	move	$4,s49
	jal	get_method
	nop
	move	s50,$2
	sw	s50,%gp_rel(method)($28)
	bgez	s50,$L353
	nop
	lw	s51,%gp_rel(exit_code)($28)
	lw	s52,%gp_rel(in_exit.4545)($28)
	nop
	beq	s52,$0,$L354
	nop
$L356:
	move	s53,s51
	move	$4,s53
	jal	exit
	nop
$L367:
	lw	s6,%gp_rel(list)($28)
	j	$L342
	nop
$L368:
	lw	s54,%gp_rel(decompress)($28)
	nop
	beq	s54,$0,$L343
	nop
	lw	s55,%gp_rel(stdin)($28)
$L344:
	move	$4,s55
	move	$5,s6
	move	$6,s2
	move	$7,s3
	jal	fileno
	nop
	move	s56,$2
	move	s57,s56
	move	$4,s57
	jal	isatty
	nop
	move	s58,$2
	beq	s58,$0,$L367
	nop
	lw	s59,%gp_rel(stderr)($28)
	lw	s60,%gp_rel(progname)($28)
	lw	s61,%gp_rel(decompress)($28)
	nop
	beq	s61,$0,$L345
	nop
	lui	s62,%hi($LC28)
	addiu	s63,s62,%lo($LC28)
	lui	s64,%hi($LC37)
	addiu	s65,s64,%lo($LC37)
$L346:
	sw	s63,16($sp)
	lui	s66,%hi($LC39)
	addiu	s67,s66,%lo($LC39)
	move	$4,s59
	move	$5,s67
	move	$6,s60
	move	$7,s65
	jal	fprintf
	nop
	lw	s68,%gp_rel(stderr)($28)
	lui	s69,%hi($LC40)
	addiu	s70,s69,%lo($LC40)
	lw	s71,%gp_rel(progname)($28)
	move	$4,s68
	move	$5,s70
	move	$6,s71
	jal	fprintf
	nop
	lw	s72,%gp_rel(in_exit.4545)($28)
	nop
	beq	s72,$0,$L347
	nop
$L349:
	li	s73,1			# 0x1
	move	$4,s73
	jal	exit
	nop
	move	s29,$2
$L359:
	lw	s74,%gp_rel(verbose)($28)
	nop
	beq	s74,$0,$L361
	nop
	lw	s75,%gp_rel(test)($28)
	nop
	bne	s75,$0,$L373
	nop
	bne	s24,$0,$L361
	nop
	lw	s76,%gp_rel(bytes_in)($28)
	lw	s77,%gp_rel(header_bytes)($28)
	nop
	addu	s78,s76,s77
	lw	s79,%gp_rel(bytes_out)($28)
	nop
	subu	s80,s78,s79
	lw	s81,%gp_rel(stderr)($28)
	move	$4,s80
	move	$5,s76
	move	$6,s81
	move	$7,s79
	jal	display_ratio
	nop
	li	s82,10			# 0xa
	lw	s83,%gp_rel(stderr)($28)
	addiu	$sp,$sp,40
	j	fputc
	nop
$L375:
	lw	s84,%gp_rel(ifd)($28)
	lw	s85,%gp_rel(method)($28)
	addiu	$sp,$sp,40
	j	do_list
	nop
$L372:
	lui	s86,%hi($LC43)
	addiu	s87,s86,%lo($LC43)
	move	$4,s87
	jal	error
	nop
	addiu	s45,s42,%lo(istat)
	lw	s46,64(s45)
	nop
	sw	s46,%gp_rel(time_stamp)($28)
	j	$L374
	nop
$L343:
	lw	s55,%gp_rel(stdout)($28)
	j	$L344
	nop
$L345:
	lui	s88,%hi($LC27)
	addiu	s63,s88,%lo($LC27)
	lui	s89,%hi($LC38)
	addiu	s65,s89,%lo($LC38)
	j	$L346
	nop
$L373:
	lui	s90,%hi($LC44)
	addiu	s91,s90,%lo($LC44)
	li	s92,1			# 0x1
	li	s93,4			# 0x4
	lw	s94,%gp_rel(stderr)($28)
	addiu	$sp,$sp,40
	j	fwrite
	nop
$L347:
	li	s95,1			# 0x1
	sw	s95,%gp_rel(in_exit.4545)($28)
	lw	s96,%gp_rel(env)($28)
	nop
	beq	s96,$0,$L348
	nop
	move	$4,s96
	jal	free
	nop
	sw	$0,%gp_rel(env)($28)
$L348:
	lw	s97,%gp_rel(args)($28)
	nop
	beq	s97,$0,$L349
	nop
	move	$4,s97
	jal	free
	nop
	sw	$0,%gp_rel(args)($28)
	j	$L349
	nop
$L354:
	sw	s21,%gp_rel(in_exit.4545)($28)
	lw	s98,%gp_rel(env)($28)
	nop
	beq	s98,$0,$L355
	nop
	move	$4,s98
	jal	free
	nop
	sw	$0,%gp_rel(env)($28)
$L355:
	lw	s99,%gp_rel(args)($28)
	nop
	beq	s99,$0,$L356
	nop
	move	$4,s99
	jal	free
	nop
	sw	$0,%gp_rel(args)($28)
	j	$L356
	nop
	.set	macro
	.set	reorder
	.end	treat_stdin
	.size	treat_stdin, .-treat_stdin
	.section	.rodata.str1.4
	.align	2
$LC45:
	.ascii	".exe\000"
	.align	2
$LC46:
	.ascii	"GZIP\000"
	.align	2
$LC47:
	.ascii	"un\000"
	.align	2
$LC48:
	.ascii	"gun\000"
	.align	2
$LC49:
	.ascii	"gzcat\000"
	.align	2
$LC50:
	.ascii	".gz\000"
	.align	2
$LC51:
	.ascii	"%s %s (%s)\012\000"
	.align	2
$LC52:
	.ascii	"1.2.4\000"
	.align	2
$LC53:
	.ascii	"18 Aug 93\000"
	.align	2
$LC54:
	.ascii	"usage: %s [-%scdfhlLnN%stvV19] [-S suffix] [file ...]\012"
	.ascii	"\000"
	.align	2
$LC55:
	.ascii	"%s\012\000"
	.align	2
$LC56:
	.ascii	"%s: -r not supported on this system\012\000"
	.align	2
$LC57:
	.ascii	"Compilation options:\012%s %s \000"
	.align	2
$LC58:
	.ascii	"NO_DIR\000"
	.align	2
$LC59:
	.ascii	"UTIME\000"
	.align	2
$LC60:
	.ascii	"%s: -Z not supported in this version\012\000"
	.align	2
$LC61:
	.ascii	"ab:cdfhH?lLmMnNqrS:tvVZ123456789\000"
	.align	2
$LC62:
	.ascii	"%s: option --ascii ignored on this system\012\000"
	.align	2
$LC63:
	.ascii	"%s: incorrect suffix '%s'\012\000"
	.align	2
$LC64:
	.ascii	"%s: %s is a directory -- ignored\012\000"
	.align	2
$LC65:
	.ascii	"%s: %s is not a directory or a regular file - ignored\012"
	.ascii	"\000"
	.align	2
$LC66:
	.ascii	"%s: %s has %d other link%c -- unchanged\012\000"
	.align	2
$LC67:
	.ascii	"%s: %s: unknown suffix -- ignored\012\000"
	.align	2
$LC68:
	.ascii	".taz\000"
	.align	2
$LC69:
	.ascii	"%s: %s already has %s suffix -- unchanged\012\000"
	.align	2
$LC70:
	.ascii	"%s: %s compressed to %s\012\000"
	.align	2
$LC71:
	.ascii	"\011\011\000"
	.align	2
$LC72:
	.ascii	"\011\000"
	.align	2
$LC73:
	.ascii	"%s:\011%s\000"
	.align	2
$LC74:
	.ascii	" OK\000"
	.align	2
$LC75:
	.ascii	" -- replaced with %s\000"
	.align	2
$LC76:
	.ascii	"%s: time stamp restored\012\000"
	.text
	.align	2
	.globl	main
	.set	nomips16
	.ent	main
main:
	.frame	$sp,72,$31		# vars= 8, regs= 10/0, args= 24, gp= 0
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
	sw	s6,68($sp)
	sw	s5,64($sp)
	sw	$23,60($sp)
	sw	$22,56($sp)
	sw	$21,52($sp)
	sw	$20,48($sp)
	sw	$19,44($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	sw	$16,32($sp)
	lw	s7,0(s2)
	move	$4,s7
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	basename
	nop
	move	s8,$2
	move	s9,s8
	sw	s8,%gp_rel(progname)($28)
	move	s10,s8
	move	$4,s10
	jal	strlen
	nop
	move	s11,$2
	move	s12,s11
	slt	s13,s11,5
	beq	s13,$0,$L563
	nop
$L377:
	addiu	s14,$sp,72
	addiu	s15,$sp,76
	lui	s16,%hi($LC46)
	addiu	s17,s16,%lo($LC46)
	move	$4,s14
	move	$5,s15
	move	$6,s17
	jal	add_envopt
	nop
	move	s18,$2
	sw	s18,%gp_rel(env)($28)
	beq	s18,$0,$L378
	nop
	sw	s2,%gp_rel(args)($28)
$L378:
	li	s19,2			# 0x2
	li	s20,1			# 0x1
	move	$4,s19
	move	$5,s20
	jal	signal
	nop
	move	s21,$2
	xori	s22,s21,0x1
	sltu	s23,$0,s22
	sw	s23,%gp_rel(foreground)($28)
	bne	s23,$0,$L564
	nop
$L379:
	li	s24,15			# 0xf
	li	s25,1			# 0x1
	move	$4,s24
	move	$5,s25
	move	$7,s23
	jal	signal
	nop
	move	s26,$2
	li	s27,1			# 0x1
	beq	s26,s27,$L380
	nop
	li	s28,15			# 0xf
	lui	s29,%hi(abort_gzip)
	addiu	s30,s29,%lo(abort_gzip)
	move	$4,s28
	move	$5,s30
	jal	signal
	nop
$L380:
	li	s31,1			# 0x1
	li	s32,1			# 0x1
	move	$4,s31
	move	$5,s32
	jal	signal
	nop
	move	s33,$2
	li	s34,1			# 0x1
	beq	s33,s34,$L381
	nop
	li	s35,1			# 0x1
	lui	s36,%hi(abort_gzip)
	addiu	s37,s36,%lo(abort_gzip)
	move	$4,s35
	move	$5,s37
	jal	signal
	nop
$L381:
	lw	s38,%gp_rel(progname)($28)
	nop
	move	s39,s38
	lui	s40,%hi($LC47)
	addiu	s41,s40,%lo($LC47)
	li	s42,2			# 0x2
	move	$4,s39
	move	$5,s41
	move	$6,s42
	jal	strncmp
	nop
	move	s43,$2
	bne	s43,$0,$L565
	nop
$L382:
	li	s44,1			# 0x1
	sw	s44,%gp_rel(decompress)($28)
$L384:
	lui	s45,%hi(z_suffix)
	addiu	s46,s45,%lo(z_suffix)
	lui	s47,%hi($LC50)
	addiu	s48,s47,%lo($LC50)
	li	s49,30			# 0x1e
	move	$4,s46
	move	$5,s48
	move	$6,s49
	jal	strncpy
	nop
	addiu	s50,s45,%lo(z_suffix)
	move	$4,s50
	jal	strlen
	nop
	move	s51,$2
	sw	s51,%gp_rel(z_len)($28)
	lui	s52,%hi($LC61)
	addiu	s53,s52,%lo($LC61)
	lui	s54,%hi(longopts)
	addiu	s55,s54,%lo(longopts)
	li	s56,-1			# 0xffffffffffffffff
	lui	s57,%hi($L409)
	addiu	s58,s57,%lo($L409)
	li	s59,1			# 0x1
	addiu	s60,s45,%lo(z_suffix)
$L528:
	sw	$0,16($sp)
	move	s61,s53
	move	s62,s55
	move	$4,s1
	move	$5,s2
	move	$6,s61
	move	$7,s62
	jal	getopt_long
	nop
	move	s63,$2
	move	s64,s63
	beq	s63,s56,$L566
	nop
	addiu	s65,s64,-49
	sltu	s66,s65,70
	bne	s66,$0,$L567
	nop
$L388:
	lui	s67,%hi($LC27)
	addiu	s68,s67,%lo($LC27)
	sw	s68,16($sp)
	lw	s69,%gp_rel(stderr)($28)
	lui	s70,%hi($LC54)
	addiu	s71,s70,%lo($LC54)
	lw	s72,%gp_rel(progname)($28)
	move	$4,s69
	move	$5,s71
	move	$6,s72
	move	$7,s68
	jal	fprintf
	nop
	lw	s73,%gp_rel(in_exit.4545)($28)
	nop
	beq	s73,$0,$L439
	nop
$L441:
	li	s74,1			# 0x1
	move	$4,s74
	jal	exit
	nop
$L567:
	sll	s75,s65,2
	addu	s76,s58,s75
	lw	s77,0(s76)
	nop
	j	s77
	nop
	.rdata
	.align	2
	.align	2
$L409:
	.word	$L389
	.word	$L389
	.word	$L389
	.word	$L389
	.word	$L389
	.word	$L389
	.word	$L389
	.word	$L389
	.word	$L389
	.word	$L388
	.word	$L388
	.word	$L388
	.word	$L388
	.word	$L388
	.word	$L390
	.word	$L388
	.word	$L388
	.word	$L388
	.word	$L388
	.word	$L388
	.word	$L388
	.word	$L388
	.word	$L388
	.word	$L390
	.word	$L388
	.word	$L388
	.word	$L388
	.word	$L391
	.word	$L392
	.word	$L393
	.word	$L388
	.word	$L388
	.word	$L388
	.word	$L388
	.word	$L394
	.word	$L388
	.word	$L388
	.word	$L395
	.word	$L388
	.word	$L388
	.word	$L388
	.word	$L396
	.word	$L388
	.word	$L388
	.word	$L388
	.word	$L388
	.word	$L388
	.word	$L388
	.word	$L397
	.word	$L398
	.word	$L399
	.word	$L400
	.word	$L388
	.word	$L401
	.word	$L388
	.word	$L390
	.word	$L388
	.word	$L388
	.word	$L388
	.word	$L402
	.word	$L403
	.word	$L404
	.word	$L388
	.word	$L388
	.word	$L405
	.word	$L406
	.word	$L388
	.word	$L407
	.word	$L388
	.word	$L408
	.text
$L565:
	move	s78,s38
	lui	s79,%hi($LC48)
	addiu	s80,s79,%lo($LC48)
	li	s81,3			# 0x3
	move	$4,s78
	move	$5,s80
	move	$6,s81
	jal	strncmp
	nop
	move	s82,$2
	beq	s82,$0,$L382
	nop
	addiu	s83,s38,1
	lbu	s84,1(s38)
	li	s85,99			# 0x63
	beq	s84,s85,$L568
	nop
$L385:
	move	s86,s38
	lui	s87,%hi($LC49)
	addiu	s88,s87,%lo($LC49)
	move	$4,s86
	move	$5,s88
	jal	strcmp
	nop
	move	s89,$2
	bne	s89,$0,$L384
	nop
$L386:
	li	s90,1			# 0x1
	sw	s90,%gp_rel(to_stdout)($28)
	sw	s90,%gp_rel(decompress)($28)
	j	$L384
	nop
$L564:
	li	s91,2			# 0x2
	lui	s92,%hi(abort_gzip)
	addiu	s93,s92,%lo(abort_gzip)
	move	$4,s91
	move	$5,s93
	move	$7,s23
	jal	signal
	nop
	j	$L379
	nop
$L563:
	addiu	s94,s12,-4
	addu	s95,s9,s94
	move	s96,s95
	lui	s97,%hi($LC45)
	addiu	s98,s97,%lo($LC45)
	move	$4,s96
	move	$5,s98
	jal	strcmp
	nop
	move	s99,$2
	bne	s99,$0,$L377
	nop
	sb	$0,0(s95)
	j	$L377
	nop
$L566:
	lw	s100,%gp_rel(no_time)($28)
	nop
	bltz	s100,$L569
	nop
$L433:
	lw	s56,%gp_rel(no_name)($28)
	nop
	bltz	s56,$L570
	nop
$L434:
	lw	s101,%gp_rel(optind)($28)
	lw	s55,%gp_rel(ascii)($28)
	nop
	beq	s55,$0,$L435
	nop
	lw	s53,%gp_rel(quiet)($28)
	nop
	beq	s53,$0,$L571
	nop
$L435:
	lw	s102,%gp_rel(z_len)($28)
	nop
	beq	s102,$0,$L572
	nop
	slt	s103,s102,31
	bne	s103,$0,$L438
	nop
$L437:
	lw	s104,%gp_rel(stderr)($28)
	lui	s45,%hi($LC63)
	addiu	s105,s45,%lo($LC63)
	lw	s106,%gp_rel(progname)($28)
	lw	s107,%gp_rel(optarg)($28)
	move	$4,s104
	move	$5,s105
	move	$6,s106
	move	$7,s107
	jal	fprintf
	nop
	lw	s59,%gp_rel(in_exit.4545)($28)
	nop
	bne	s59,$0,$L441
	nop
$L439:
	li	s108,1			# 0x1
	sw	s108,%gp_rel(in_exit.4545)($28)
	lw	s109,%gp_rel(env)($28)
	nop
	beq	s109,$0,$L440
	nop
	move	$4,s109
	jal	free
	nop
	sw	$0,%gp_rel(env)($28)
$L440:
	lw	s110,%gp_rel(args)($28)
	nop
	beq	s110,$0,$L441
	nop
	move	$4,s110
	jal	free
	nop
	sw	$0,%gp_rel(args)($28)
	j	$L441
	nop
$L572:
	lw	s111,%gp_rel(decompress)($28)
	nop
	beq	s111,$0,$L437
	nop
$L438:
	lw	s112,%gp_rel(do_lzw)($28)
	nop
	bne	s112,$0,$L573
	nop
$L442:
	subu	s113,s1,s101
	beq	s113,$0,$L574
	nop
	lui	s114,%hi(ifname)
$L527:
	lw	s115,%gp_rel(optind)($28)
	nop
	slt	s116,s115,s1
	beq	s116,$0,$L513
	nop
$L512:
	sll	s117,s115,2
	addu	s118,s2,s117
	lw	s119,0(s118)
	addiu	s120,s115,1
	sw	s120,%gp_rel(optind)($28)
	lbu	s121,0(s119)
	li	s122,45			# 0x2d
	bne	s121,s122,$L445
	nop
	lbu	s123,1(s119)
	nop
	bne	s123,$0,$L445
	nop
	lw	s124,%gp_rel(to_stdout)($28)
	move	$4,s121
	move	$5,s119
	move	$6,s122
	move	$7,s120
	jal	treat_stdin
	nop
	sw	s124,%gp_rel(to_stdout)($28)
	lw	s115,%gp_rel(optind)($28)
	nop
	slt	s125,s115,s1
	bne	s125,$0,$L512
	nop
$L513:
	lw	s56,%gp_rel(list)($28)
	nop
	beq	s56,$0,$L514
	nop
	lw	s45,%gp_rel(quiet)($28)
	nop
	bne	s45,$0,$L514
	nop
	slt	s126,s113,2
	bne	s126,$0,$L514
	nop
	li	s127,-1			# 0xffffffffffffffff
	li	s128,-1			# 0xffffffffffffffff
	move	$4,s127
	move	$5,s128
	move	$7,s129
	jal	do_list
	nop
$L514:
	lw	s130,%gp_rel(exit_code)($28)
	lw	s60,%gp_rel(in_exit.4545)($28)
	nop
	beq	s60,$0,$L515
	nop
$L517:
	move	s131,s130
	move	$4,s131
	move	$5,s1
	move	$7,s129
	jal	exit
	nop
$L570:
	lw	s132,%gp_rel(decompress)($28)
	nop
	sw	s132,%gp_rel(no_name)($28)
	j	$L434
	nop
$L569:
	lw	s133,%gp_rel(decompress)($28)
	nop
	sw	s133,%gp_rel(no_time)($28)
	j	$L433
	nop
$L391:
	lui	s53,%hi($LC53)
	addiu	s55,s53,%lo($LC53)
	sw	s55,16($sp)
	lw	s134,%gp_rel(stderr)($28)
	lui	s59,%hi($LC51)
	addiu	s135,s59,%lo($LC51)
	lw	s136,%gp_rel(progname)($28)
	lui	s137,%hi($LC52)
	addiu	s138,s137,%lo($LC52)
	move	$4,s134
	move	$5,s135
	move	$6,s136
	move	$7,s138
	jal	fprintf
	nop
	lui	s139,%hi(license_msg)
	lw	s140,%lo(license_msg)(s139)
	nop
	beq	s140,$0,$L559
	nop
	addiu	s141,s139,%lo(license_msg)
	lui	s58,%hi($LC55)
	addiu	s59,s58,%lo($LC55)
$L416:
	addiu	s141,s141,4
	lw	s142,%gp_rel(stderr)($28)
	move	s143,s59
	move	$4,s142
	move	$5,s143
	move	$6,s140
	jal	fprintf
	nop
	lw	s140,0(s141)
	nop
	bne	s140,$0,$L416
	nop
$L559:
	lw	s144,%gp_rel(in_exit.4545)($28)
	nop
	beq	s144,$0,$L423
	nop
$L425:
	move	s145,$0
	move	$4,s145
	move	$6,s140
	jal	exit
	nop
$L392:
	sw	$0,%gp_rel(no_time)($28)
	j	$L528
	nop
$L393:
	sw	$0,%gp_rel(no_time)($28)
	sw	$0,%gp_rel(no_name)($28)
	j	$L528
	nop
$L394:
	lw	s146,%gp_rel(optarg)($28)
	nop
	move	s147,s146
	move	$4,s147
	move	$6,s66
	move	$7,s76
	jal	strlen
	nop
	move	s148,$2
	sw	s148,%gp_rel(z_len)($28)
	move	s149,s60
	move	s150,s146
	move	$4,s149
	move	$5,s150
	jal	strcpy
	nop
	j	$L528
	nop
$L395:
	lui	s151,%hi($LC53)
	addiu	s152,s151,%lo($LC53)
	sw	s152,16($sp)
	lw	s153,%gp_rel(stderr)($28)
	lui	s154,%hi($LC51)
	addiu	s155,s154,%lo($LC51)
	lw	s156,%gp_rel(progname)($28)
	lui	s157,%hi($LC52)
	addiu	s158,s157,%lo($LC52)
	move	$4,s153
	move	$5,s155
	move	$6,s156
	move	$7,s158
	jal	fprintf
	nop
	lw	s159,%gp_rel(stderr)($28)
	lui	s160,%hi($LC57)
	addiu	s161,s160,%lo($LC57)
	lui	s162,%hi($LC58)
	addiu	s163,s162,%lo($LC58)
	lui	s60,%hi($LC59)
	addiu	s164,s60,%lo($LC59)
	move	$4,s159
	move	$5,s161
	move	$6,s163
	move	$7,s164
	jal	fprintf
	nop
	li	s165,10			# 0xa
	lw	s166,%gp_rel(stderr)($28)
	move	$4,s165
	move	$5,s166
	jal	fputc
	nop
	j	$L559
	nop
$L396:
	lw	s167,%gp_rel(stderr)($28)
	lui	s168,%hi($LC60)
	addiu	s169,s168,%lo($LC60)
	lw	s170,%gp_rel(progname)($28)
	move	$4,s167
	move	$5,s169
	move	$6,s170
	move	$7,s76
	jal	fprintf
	nop
	j	$L388
	nop
$L397:
	sw	s59,%gp_rel(ascii)($28)
	j	$L528
	nop
$L398:
	lw	s171,%gp_rel(optarg)($28)
	move	s172,$0
	li	s173,10			# 0xa
	move	$4,s171
	move	$5,s172
	move	$6,s173
	move	$7,s76
	jal	strtol
	nop
	move	s174,$2
	sw	s174,%gp_rel(maxbits)($28)
	j	$L528
	nop
$L389:
	addiu	s175,s64,-48
	sw	s175,%gp_rel(level)($28)
	j	$L528
	nop
$L390:
	lui	s176,%hi($LC53)
	addiu	s177,s176,%lo($LC53)
	sw	s177,16($sp)
	lw	s178,%gp_rel(stderr)($28)
	lui	s179,%hi($LC51)
	addiu	s180,s179,%lo($LC51)
	lw	s181,%gp_rel(progname)($28)
	lui	s182,%hi($LC52)
	addiu	s183,s182,%lo($LC52)
	move	$4,s178
	move	$5,s180
	move	$6,s181
	move	$7,s183
	jal	fprintf
	nop
	lui	s184,%hi($LC27)
	addiu	s185,s184,%lo($LC27)
	sw	s185,16($sp)
	lw	s186,%gp_rel(stderr)($28)
	lui	s187,%hi($LC54)
	addiu	s188,s187,%lo($LC54)
	lw	s189,%gp_rel(progname)($28)
	move	$4,s186
	move	$5,s188
	move	$6,s189
	move	$7,s185
	jal	fprintf
	nop
	lui	s190,%hi(help_msg.3511)
	lw	s140,%lo(help_msg.3511)(s190)
	nop
	beq	s140,$0,$L559
	nop
	addiu	s191,s190,%lo(help_msg.3511)
	lui	s56,%hi($LC55)
	addiu	s59,s56,%lo($LC55)
$L411:
	addiu	s191,s191,4
	lw	s192,%gp_rel(stderr)($28)
	move	s193,s59
	move	$4,s192
	move	$5,s193
	move	$6,s140
	jal	fprintf
	nop
	lw	s140,0(s191)
	nop
	bne	s140,$0,$L411
	nop
	j	$L559
	nop
$L407:
	sw	s59,%gp_rel(to_stdout)($28)
	sw	s59,%gp_rel(decompress)($28)
	sw	s59,%gp_rel(test)($28)
	j	$L528
	nop
$L408:
	lw	s194,%gp_rel(verbose)($28)
	nop
	addiu	s195,s194,1
	sw	s195,%gp_rel(verbose)($28)
	sw	$0,%gp_rel(quiet)($28)
	j	$L528
	nop
$L399:
	sw	s59,%gp_rel(to_stdout)($28)
	j	$L528
	nop
$L400:
	sw	s59,%gp_rel(decompress)($28)
	j	$L528
	nop
$L401:
	lw	s196,%gp_rel(force)($28)
	nop
	addiu	s197,s196,1
	sw	s197,%gp_rel(force)($28)
	j	$L528
	nop
$L402:
	sw	s59,%gp_rel(to_stdout)($28)
	sw	s59,%gp_rel(decompress)($28)
	sw	s59,%gp_rel(list)($28)
	j	$L528
	nop
$L403:
	sw	s59,%gp_rel(no_time)($28)
	j	$L528
	nop
$L404:
	sw	s59,%gp_rel(no_time)($28)
	sw	s59,%gp_rel(no_name)($28)
	j	$L528
	nop
$L405:
	sw	s59,%gp_rel(quiet)($28)
	sw	$0,%gp_rel(verbose)($28)
	j	$L528
	nop
$L406:
	lw	s198,%gp_rel(stderr)($28)
	lui	s45,%hi($LC56)
	addiu	s199,s45,%lo($LC56)
	lw	s200,%gp_rel(progname)($28)
	move	$4,s198
	move	$5,s199
	move	$6,s200
	move	$7,s76
	jal	fprintf
	nop
	j	$L388
	nop
$L445:
	addiu	s201,s114,%lo(ifname)
	move	$4,s201
	move	$5,s119
	move	$6,s122
	move	$7,s120
	jal	strcpy
	nop
	jal	__errno_location
	nop
	move	s202,$2
	move	s203,s202
	sw	$0,0(s202)
	lw	s204,%gp_rel(to_stdout)($28)
	nop
	bne	s204,$0,$L446
	nop
	lw	s205,%gp_rel(force)($28)
	nop
	beq	s205,$0,$L575
	nop
$L446:
	li	s206,3			# 0x3
	addiu	s207,s114,%lo(ifname)
	lui	s208,%hi(istat)
	addiu	s209,s208,%lo(istat)
	move	$4,s206
	move	$5,s207
	move	$6,s209
	jal	__xstat
	nop
	move	s210,$2
$L447:
	beq	s210,$0,$L448
	nop
	lw	s211,%gp_rel(decompress)($28)
	nop
	beq	s211,$0,$L533
	nop
	lw	s212,0(s203)
	li	s213,2			# 0x2
	beq	s212,s213,$L450
	nop
$L533:
	addiu	s214,s114,%lo(ifname)
	move	$4,s214
	jal	perror
	nop
	li	s215,1			# 0x1
	sw	s215,%gp_rel(exit_code)($28)
	j	$L527
	nop
$L448:
	addiu	s216,s208,%lo(istat)
	lw	s217,20(s216)
	nop
	andi	s218,s217,0xf000
	li	s219,16384			# 0x4000
	beq	s218,s219,$L576
	nop
	li	s220,32768			# 0x8000
	beq	s218,s220,$L459
	nop
	lw	s221,%gp_rel(quiet)($28)
	nop
	beq	s221,$0,$L577
	nop
$L479:
	lw	s222,%gp_rel(exit_code)($28)
	nop
	bne	s222,$0,$L527
	nop
	li	s129,2			# 0x2
	sw	s129,%gp_rel(exit_code)($28)
	j	$L527
	nop
$L568:
	lbu	s223,1(s83)
	li	s224,97			# 0x61
	bne	s223,s224,$L385
	nop
	lbu	s225,2(s83)
	li	s226,116			# 0x74
	bne	s225,s226,$L385
	nop
	lbu	s227,3(s83)
	nop
	beq	s227,$0,$L386
	nop
	j	$L385
	nop
$L575:
	li	s228,3			# 0x3
	lui	s229,%hi(ifname)
	addiu	s230,s229,%lo(ifname)
	lui	s208,%hi(istat)
	addiu	s231,s208,%lo(istat)
	move	$4,s228
	move	$5,s230
	move	$6,s231
	jal	__lxstat
	nop
	move	s210,$2
	j	$L447
	nop
$L576:
	lw	s232,%gp_rel(quiet)($28)
	nop
	bne	s232,$0,$L479
	nop
	lw	s233,%gp_rel(stderr)($28)
	lui	s234,%hi($LC64)
	addiu	s235,s234,%lo($LC64)
	lw	s236,%gp_rel(progname)($28)
	addiu	s237,s114,%lo(ifname)
	move	$4,s233
	move	$5,s235
	move	$6,s236
	move	$7,s237
	jal	fprintf
	nop
	j	$L479
	nop
$L573:
	lw	s238,%gp_rel(decompress)($28)
	nop
	bne	s238,$0,$L442
	nop
	lui	s239,%hi(lzw)
	addiu	s240,s239,%lo(lzw)
	sw	s240,%gp_rel(work)($28)
	j	$L442
	nop
$L571:
	lw	s241,%gp_rel(stderr)($28)
	lui	s58,%hi($LC62)
	addiu	s242,s58,%lo($LC62)
	lw	s243,%gp_rel(progname)($28)
	move	$4,s241
	move	$5,s242
	move	$6,s243
	jal	fprintf
	nop
	j	$L435
	nop
$L459:
	lw	s244,24(s216)
	nop
	sltu	s245,s244,2
	bne	s245,$0,$L578
	nop
	lw	s246,%gp_rel(to_stdout)($28)
	nop
	bne	s246,$0,$L461
	nop
	lw	s247,%gp_rel(force)($28)
	nop
	bne	s247,$0,$L461
	nop
	lw	s248,%gp_rel(quiet)($28)
	nop
	bne	s248,$0,$L479
	nop
	lw	s249,%gp_rel(stderr)($28)
	lw	s250,%gp_rel(progname)($28)
	li	s53,2			# 0x2
	beq	s244,s53,$L463
	nop
	li	s251,115			# 0x73
$L464:
	addiu	s252,s244,-1
	sw	s252,16($sp)
	sw	s251,20($sp)
	lui	s58,%hi($LC66)
	addiu	s253,s58,%lo($LC66)
	addiu	s254,s114,%lo(ifname)
	move	$4,s249
	move	$5,s253
	move	$6,s250
	move	$7,s254
	jal	fprintf
	nop
	j	$L479
	nop
$L578:
	lw	s246,%gp_rel(to_stdout)($28)
$L461:
	lw	s255,48(s216)
	nop
	sw	s255,%gp_rel(ifile_size)($28)
	lw	s256,%gp_rel(no_time)($28)
	nop
	beq	s256,$0,$L465
	nop
	lw	s257,%gp_rel(list)($28)
	nop
	bne	s257,$0,$L465
	nop
$L466:
	sw	s257,%gp_rel(time_stamp)($28)
	beq	s246,$0,$L467
	nop
	lw	s258,%gp_rel(list)($28)
	nop
	bne	s258,$0,$L467
	nop
	lw	s259,%gp_rel(test)($28)
	nop
	beq	s259,$0,$L579
	nop
$L467:
	lui	s260,%hi(ofname)
	addiu	s261,s260,%lo(ofname)
	addiu	s262,s114,%lo(ifname)
	move	$4,s261
	move	$5,s262
	jal	strcpy
	nop
	addiu	s263,s260,%lo(ofname)
	move	$4,s263
	jal	get_suffix
	nop
	move	s264,$2
	move	s265,s264
	lw	s266,%gp_rel(decompress)($28)
	nop
	beq	s266,$0,$L469
	nop
	beq	s264,$0,$L580
	nop
	move	s267,s264
	move	$4,s267
	jal	strlwr
	nop
	move	s268,s265
	lui	s269,%hi($LC3)
	addiu	s270,s269,%lo($LC3)
	move	$4,s268
	move	$5,s270
	jal	strcmp
	nop
	move	s271,$2
	beq	s271,$0,$L475
	nop
	move	s272,s265
	lui	s53,%hi($LC68)
	addiu	s273,s53,%lo($LC68)
	move	$4,s272
	move	$5,s273
	jal	strcmp
	nop
	move	s274,$2
	beq	s274,$0,$L475
	nop
	sb	$0,0(s265)
$L468:
	addiu	s275,s114,%lo(ifname)
	move	s276,$0
	li	s277,384			# 0x180
	move	$4,s275
	move	$5,s276
	move	$6,s277
	move	$7,s278
	jal	open
	nop
	move	s279,$2
	sw	s279,%gp_rel(ifd)($28)
	li	s280,-1			# 0xffffffffffffffff
	beq	s279,s280,$L581
	nop
	jal	clear_bufs
	nop
	sw	$0,%gp_rel(part_nb)($28)
	lw	s281,%gp_rel(decompress)($28)
	nop
	bne	s281,$0,$L582
	nop
$L481:
	lw	s282,%gp_rel(list)($28)
	nop
	bne	s282,$0,$L583
	nop
	lw	s283,%gp_rel(to_stdout)($28)
	nop
	beq	s283,$0,$L483
	nop
	lw	s284,%gp_rel(stdout)($28)
	move	$4,s284
	jal	fileno
	nop
	move	s285,$2
	sw	s285,%gp_rel(ofd)($28)
$L484:
	lw	s286,%gp_rel(save_orig_name)($28)
	nop
	bne	s286,$0,$L488
	nop
$L485:
	lw	s287,%gp_rel(no_name)($28)
	nop
	sltu	s288,s287,1
	sw	s288,%gp_rel(save_orig_name)($28)
$L488:
	lw	s289,%gp_rel(verbose)($28)
	nop
	beq	s289,$0,$L526
	nop
	j	$L486
	nop
$L492:
	lw	s290,%gp_rel(decompress)($28)
	nop
	beq	s290,$0,$L493
	nop
	lw	s291,%gp_rel(last_member)($28)
	nop
	bne	s291,$0,$L493
	nop
	lw	s292,%gp_rel(insize)($28)
	lw	s293,%gp_rel(inptr)($28)
	nop
	beq	s293,s292,$L493
	nop
	lw	s294,%gp_rel(ifd)($28)
	move	$4,s294
	jal	get_method
	nop
	move	s295,$2
	sw	s295,%gp_rel(method)($28)
	bltz	s295,$L493
	nop
	sw	$0,%gp_rel(bytes_out)($28)
$L526:
	lw	s296,%gp_rel(ifd)($28)
	lw	s297,%gp_rel(ofd)($28)
	lw	s298,%gp_rel(work)($28)
	nop
	move	$4,s296
	move	$5,s297
	jalr	s298
	nop
	move	s299,$2
	beq	s299,$0,$L492
	nop
	li	s300,-1			# 0xffffffffffffffff
	sw	s300,%gp_rel(method)($28)
$L493:
	lw	s301,%gp_rel(ifd)($28)
	move	$4,s301
	jal	close
	nop
	lw	s302,%gp_rel(to_stdout)($28)
	nop
	beq	s302,$0,$L584
	nop
$L494:
	li	s53,-1			# 0xffffffffffffffff
	lw	s303,%gp_rel(method)($28)
	nop
	beq	s303,s53,$L585
	nop
	lw	s58,%gp_rel(verbose)($28)
	nop
	beq	s58,$0,$L496
	nop
	lw	s304,%gp_rel(test)($28)
	nop
	bne	s304,$0,$L586
	nop
	lw	s305,%gp_rel(decompress)($28)
	nop
	beq	s305,$0,$L499
	nop
	lw	s306,%gp_rel(bytes_out)($28)
	lw	s307,%gp_rel(header_bytes)($28)
	nop
	addu	s308,s306,s307
	lw	s309,%gp_rel(bytes_in)($28)
	nop
	subu	s310,s308,s309
	lw	s311,%gp_rel(stderr)($28)
	move	$4,s310
	move	$5,s306
	move	$6,s311
	jal	display_ratio
	nop
$L498:
	lw	s312,%gp_rel(test)($28)
	nop
	bne	s312,$0,$L500
	nop
	lw	s313,%gp_rel(to_stdout)($28)
	nop
	beq	s313,$0,$L587
	nop
$L500:
	li	s314,10			# 0xa
	lw	s315,%gp_rel(stderr)($28)
	move	$4,s314
	move	$5,s315
	jal	fputc
	nop
$L496:
	lw	s316,%gp_rel(to_stdout)($28)
	nop
	bne	s316,$0,$L527
	nop
	lw	s317,%gp_rel(decompress)($28)
	nop
	beq	s317,$0,$L501
	nop
	lw	s318,%gp_rel(time_stamp)($28)
	nop
	beq	s318,$0,$L501
	nop
	lw	s319,64(s216)
	nop
	beq	s318,s319,$L501
	nop
	sw	s318,64(s216)
	lw	s320,%gp_rel(verbose)($28)
	nop
	slt	s321,s320,2
	bne	s321,$0,$L501
	nop
	lw	s322,%gp_rel(stderr)($28)
	lui	s323,%hi($LC76)
	addiu	s324,s323,%lo($LC76)
	addiu	s325,s260,%lo(ofname)
	move	$4,s322
	move	$5,s324
	move	$6,s325
	jal	fprintf
	nop
$L501:
	lw	s53,56(s216)
	nop
	sw	s53,24($sp)
	lw	s326,64(s216)
	nop
	sw	s326,28($sp)
	addiu	s327,s260,%lo(ofname)
	addiu	s328,$sp,24
	move	$4,s327
	move	$5,s328
	jal	utime
	nop
	move	s329,$2
	beq	s329,$0,$L531
	nop
	lw	s330,20(s216)
	nop
	andi	s331,s330,0xf000
	li	s58,16384			# 0x4000
	beq	s331,s58,$L503
	nop
	lw	s332,%gp_rel(quiet)($28)
	nop
	bne	s332,$0,$L504
	nop
	lw	s333,%gp_rel(stderr)($28)
	lui	s334,%hi($LC35)
	addiu	s335,s334,%lo($LC35)
	lw	s336,%gp_rel(progname)($28)
	move	$4,s333
	move	$5,s335
	move	$6,s336
	jal	fprintf
	nop
	lw	s332,%gp_rel(quiet)($28)
$L504:
	lw	s337,%gp_rel(exit_code)($28)
	nop
	bne	s337,$0,$L505
	nop
	li	s338,2			# 0x2
	sw	s338,%gp_rel(exit_code)($28)
$L505:
	beq	s332,$0,$L506
	nop
$L531:
	lw	s330,20(s216)
$L503:
	addiu	s339,s260,%lo(ofname)
	andi	s340,s330,0xfff
	move	$4,s339
	move	$5,s340
	move	$6,s338
	jal	chmod
	nop
	move	s341,$2
	beq	s341,$0,$L507
	nop
	lw	s342,%gp_rel(quiet)($28)
	nop
	bne	s342,$0,$L508
	nop
	lw	s343,%gp_rel(stderr)($28)
	lui	s344,%hi($LC35)
	addiu	s345,s344,%lo($LC35)
	lw	s346,%gp_rel(progname)($28)
	move	$4,s343
	move	$5,s345
	move	$6,s346
	jal	fprintf
	nop
	lw	s342,%gp_rel(quiet)($28)
$L508:
	lw	s347,%gp_rel(exit_code)($28)
	nop
	bne	s347,$0,$L509
	nop
	li	s348,2			# 0x2
	sw	s348,%gp_rel(exit_code)($28)
$L509:
	bne	s342,$0,$L507
	nop
	addiu	s349,s260,%lo(ofname)
	move	$4,s349
	jal	perror
	nop
$L507:
	addiu	s350,s260,%lo(ofname)
	lw	s351,28(s216)
	lw	s352,32(s216)
	move	$4,s350
	move	$5,s351
	move	$6,s352
	jal	chown
	nop
	sw	$0,%gp_rel(remove_ofname)($28)
	addiu	s353,s114,%lo(ifname)
	li	s354,511			# 0x1ff
	move	$4,s353
	move	$5,s354
	jal	chmod
	nop
	addiu	s355,s114,%lo(ifname)
	move	$4,s355
	jal	unlink
	nop
	move	s356,$2
	beq	s356,$0,$L527
	nop
	lw	s357,%gp_rel(quiet)($28)
	nop
	beq	s357,$0,$L588
	nop
$L510:
	lw	s358,%gp_rel(exit_code)($28)
	nop
	bne	s358,$0,$L511
	nop
	li	s129,2			# 0x2
	sw	s129,%gp_rel(exit_code)($28)
$L511:
	bne	s357,$0,$L527
	nop
	addiu	s359,s114,%lo(ifname)
	move	$4,s359
	move	$7,s129
	jal	perror
	nop
	j	$L527
	nop
$L465:
	lw	s257,64(s216)
	j	$L466
	nop
$L506:
	addiu	s360,s260,%lo(ofname)
	move	$4,s360
	move	$5,s330
	move	$6,s338
	jal	perror
	nop
	j	$L531
	nop
$L574:
	move	$5,s240
	jal	treat_stdin
	nop
	j	$L513
	nop
$L577:
	lw	s361,%gp_rel(stderr)($28)
	lui	s362,%hi($LC65)
	addiu	s363,s362,%lo($LC65)
	lw	s364,%gp_rel(progname)($28)
	addiu	s365,s114,%lo(ifname)
	move	$4,s361
	move	$5,s363
	move	$6,s364
	move	$7,s365
	jal	fprintf
	nop
	j	$L479
	nop
$L450:
	addiu	s366,s114,%lo(ifname)
	move	$4,s366
	jal	get_suffix
	nop
	move	s367,$2
	bne	s367,$0,$L533
	nop
	addiu	s368,s114,%lo(ifname)
	move	$4,s368
	jal	strlen
	nop
	move	s369,$2
	move	s370,s369
	addiu	s371,s45,%lo(z_suffix)
	lbu	s372,%lo(z_suffix)(s45)
	li	s373,46			# 0x2e
	bne	s372,s373,$L452
	nop
	lbu	s374,1(s371)
	li	s375,103			# 0x67
	bne	s374,s375,$L452
	nop
	lbu	s376,2(s371)
	li	s377,122			# 0x7a
	bne	s376,s377,$L452
	nop
	lbu	s378,3(s371)
	nop
	bne	s378,$0,$L452
	nop
	lui	s379,%hi(suffixes.3999+4)
	addiu	s380,s379,%lo(suffixes.3999+4)
$L453:
	lw	s381,0(s380)
	addiu	s53,s114,%lo(ifname)
	addiu	s382,s208,%lo(istat)
	addu	s58,s53,s370
$L456:
	move	s383,s53
	move	$4,s383
	move	$5,s381
	move	$6,s370
	jal	strcat
	nop
	sw	$0,0(s203)
	lw	s384,%gp_rel(to_stdout)($28)
	nop
	bne	s384,$0,$L454
	nop
	lw	s385,%gp_rel(force)($28)
	nop
	beq	s385,$0,$L589
	nop
$L454:
	li	s386,3			# 0x3
	move	s387,s53
	move	s388,s382
	move	$4,s386
	move	$5,s387
	move	$6,s388
	move	$7,s385
	jal	__xstat
	nop
	move	s389,$2
$L455:
	beq	s389,$0,$L448
	nop
	sb	$0,0(s58)
	addiu	s380,s380,4
	lw	s381,0(s380)
	nop
	bne	s381,$0,$L456
	nop
	move	s390,s53
	addiu	s391,s45,%lo(z_suffix)
	move	$4,s390
	move	$5,s391
	jal	strcat
	nop
	move	s392,s53
	move	$4,s392
	jal	perror
	nop
	li	s393,1			# 0x1
	sw	s393,%gp_rel(exit_code)($28)
	j	$L527
	nop
$L469:
	beq	s264,$0,$L477
	nop
	lw	s394,%gp_rel(verbose)($28)
	nop
	bne	s394,$0,$L478
	nop
	lw	s395,%gp_rel(recursive)($28)
	nop
	bne	s395,$0,$L479
	nop
	lw	s396,%gp_rel(quiet)($28)
	nop
	bne	s396,$0,$L479
	nop
$L478:
	sw	s265,16($sp)
	lw	s397,%gp_rel(stderr)($28)
	lui	s398,%hi($LC69)
	addiu	s399,s398,%lo($LC69)
	lw	s400,%gp_rel(progname)($28)
	addiu	s401,s114,%lo(ifname)
	move	$4,s397
	move	$5,s399
	move	$6,s400
	move	$7,s401
	jal	fprintf
	nop
	j	$L479
	nop
$L475:
	lui	s402,%hi($LC2)
	lw	s403,%lo($LC2)(s402)
	nop
	swl	s403,0(s265)
	swr	s403,3(s265)
	addiu	s404,s402,%lo($LC2)
	lbu	s58,4(s404)
	nop
	sb	s58,4(s265)
	j	$L468
	nop
$L581:
	lw	s405,%gp_rel(stderr)($28)
	lui	s406,%hi($LC35)
	addiu	s407,s406,%lo($LC35)
	lw	s408,%gp_rel(progname)($28)
	move	$4,s405
	move	$5,s407
	move	$6,s408
	jal	fprintf
	nop
	j	$L533
	nop
$L483:
	jal	create_outfile
	nop
	move	s409,$2
	bne	s409,$0,$L527
	nop
	lw	s410,%gp_rel(decompress)($28)
	nop
	bne	s410,$0,$L484
	nop
	lw	s411,%gp_rel(save_orig_name)($28)
	nop
	beq	s411,$0,$L485
	nop
	lw	s412,%gp_rel(verbose)($28)
	nop
	bne	s412,$0,$L486
	nop
	lw	s413,%gp_rel(quiet)($28)
	nop
	bne	s413,$0,$L526
	nop
	addiu	s414,s260,%lo(ofname)
	sw	s414,16($sp)
	lw	s415,%gp_rel(stderr)($28)
	lui	s58,%hi($LC70)
	addiu	s416,s58,%lo($LC70)
	lw	s417,%gp_rel(progname)($28)
	addiu	s418,s114,%lo(ifname)
	move	$4,s415
	move	$5,s416
	move	$6,s417
	move	$7,s418
	jal	fprintf
	nop
	j	$L484
	nop
$L582:
	lw	s419,%gp_rel(ifd)($28)
	move	$4,s419
	jal	get_method
	nop
	move	s420,$2
	sw	s420,%gp_rel(method)($28)
	bgez	s420,$L481
	nop
$L538:
	lw	s421,%gp_rel(ifd)($28)
	move	$4,s421
	jal	close
	nop
	j	$L527
	nop
$L580:
	lw	s422,%gp_rel(recursive)($28)
	nop
	bne	s422,$0,$L471
	nop
	lw	s423,%gp_rel(list)($28)
	nop
	bne	s423,$0,$L468
	nop
	lw	s424,%gp_rel(test)($28)
	nop
	bne	s424,$0,$L468
	nop
$L471:
	lw	s425,%gp_rel(verbose)($28)
	nop
	bne	s425,$0,$L472
	nop
	bne	s422,$0,$L527
	nop
	lw	s426,%gp_rel(quiet)($28)
	nop
	bne	s426,$0,$L527
	nop
$L473:
	lw	s427,%gp_rel(stderr)($28)
	lui	s428,%hi($LC67)
	addiu	s429,s428,%lo($LC67)
	lw	s430,%gp_rel(progname)($28)
	addiu	s431,s114,%lo(ifname)
	move	$4,s427
	move	$5,s429
	move	$6,s430
	move	$7,s431
	jal	fprintf
	nop
	j	$L479
	nop
$L583:
	lw	s432,%gp_rel(ifd)($28)
	lw	s433,%gp_rel(method)($28)
	move	$4,s432
	move	$5,s433
	jal	do_list
	nop
	j	$L538
	nop
$L579:
	lui	s260,%hi(ofname)
	lui	s434,%hi($LC42)
	lw	s435,%lo($LC42)(s434)
	nop
	sw	s435,%lo(ofname)(s260)
	addiu	s436,s260,%lo(ofname)
	lui	s437,%hi($LC42)
	addiu	s438,s437,%lo($LC42)
	lhu	s278,4(s438)
	nop
	sh	s278,4(s436)
	lbu	s439,6(s438)
	nop
	sb	s439,6(s436)
	j	$L468
	nop
$L589:
	li	s440,3			# 0x3
	lui	s441,%hi(ifname)
	addiu	s442,s441,%lo(ifname)
	move	s443,s382
	move	$4,s440
	move	$5,s442
	move	$6,s443
	move	$7,s385
	jal	__lxstat
	nop
	move	s389,$2
	j	$L455
	nop
$L423:
	li	s444,1			# 0x1
	sw	s444,%gp_rel(in_exit.4545)($28)
	lw	s445,%gp_rel(env)($28)
	nop
	beq	s445,$0,$L424
	nop
	move	$4,s445
	move	$6,s140
	jal	free
	nop
	sw	$0,%gp_rel(env)($28)
$L424:
	lw	s446,%gp_rel(args)($28)
	nop
	beq	s446,$0,$L425
	nop
	move	$4,s446
	move	$6,s140
	jal	free
	nop
	sw	$0,%gp_rel(args)($28)
	j	$L425
	nop
$L452:
	lui	s447,%hi(suffixes.3999)
	addiu	s380,s447,%lo(suffixes.3999)
	j	$L453
	nop
$L585:
	lw	s448,%gp_rel(to_stdout)($28)
	nop
	bne	s448,$0,$L527
	nop
	addiu	s449,s260,%lo(ofname)
	move	$4,s449
	jal	unlink
	nop
	j	$L527
	nop
$L584:
	lw	s450,%gp_rel(ofd)($28)
	move	$4,s450
	jal	close
	nop
	move	s451,$2
	beq	s451,$0,$L494
	nop
	jal	write_error
	nop
	j	$L494
	nop
$L486:
	lw	s452,%gp_rel(stderr)($28)
	addiu	s453,s114,%lo(ifname)
	move	$4,s453
	move	$5,s289
	jal	strlen
	nop
	move	s454,$2
	slt	s455,s454,15
	bne	s455,$0,$L489
	nop
	lui	s456,%hi($LC27)
	addiu	s457,s456,%lo($LC27)
$L490:
	move	s458,s452
	lui	s459,%hi($LC73)
	addiu	s460,s459,%lo($LC73)
	addiu	s461,s114,%lo(ifname)
	move	$4,s458
	move	$5,s460
	move	$6,s461
	move	$7,s457
	jal	fprintf
	nop
	j	$L526
	nop
$L463:
	li	s251,32			# 0x20
	j	$L464
	nop
$L472:
	lw	s462,%gp_rel(quiet)($28)
	nop
	bne	s462,$0,$L479
	nop
	j	$L473
	nop
$L489:
	slt	s463,s454,7
	beq	s463,$0,$L491
	nop
	lui	s464,%hi($LC71)
	addiu	s457,s464,%lo($LC71)
	j	$L490
	nop
$L515:
	li	s465,1			# 0x1
	sw	s465,%gp_rel(in_exit.4545)($28)
	lw	s466,%gp_rel(env)($28)
	nop
	beq	s466,$0,$L516
	nop
	move	$4,s466
	move	$5,s1
	move	$7,s129
	jal	free
	nop
	sw	$0,%gp_rel(env)($28)
$L516:
	lw	s467,%gp_rel(args)($28)
	nop
	beq	s467,$0,$L517
	nop
	move	$4,s467
	move	$5,s1
	move	$7,s129
	jal	free
	nop
	sw	$0,%gp_rel(args)($28)
	j	$L517
	nop
$L499:
	lw	s468,%gp_rel(bytes_in)($28)
	lw	s469,%gp_rel(header_bytes)($28)
	nop
	addu	s470,s468,s469
	lw	s471,%gp_rel(bytes_out)($28)
	nop
	subu	s472,s470,s471
	lw	s473,%gp_rel(stderr)($28)
	move	$4,s472
	move	$5,s468
	move	$6,s473
	move	$7,s471
	jal	display_ratio
	nop
	j	$L498
	nop
$L586:
	lui	s474,%hi($LC74)
	addiu	s475,s474,%lo($LC74)
	li	s476,1			# 0x1
	li	s477,3			# 0x3
	lw	s478,%gp_rel(stderr)($28)
	move	$4,s475
	move	$5,s476
	move	$6,s477
	move	$7,s478
	jal	fwrite
	nop
	j	$L498
	nop
$L477:
	sw	$0,%gp_rel(save_orig_name)($28)
	lui	s479,%hi(ofname)
	addiu	s480,s479,%lo(ofname)
	addiu	s481,s45,%lo(z_suffix)
	move	$4,s480
	move	$5,s481
	jal	strcat
	nop
	j	$L468
	nop
$L491:
	lui	s482,%hi($LC72)
	addiu	s457,s482,%lo($LC72)
	j	$L490
	nop
$L587:
	lw	s483,%gp_rel(stderr)($28)
	lui	s484,%hi($LC75)
	addiu	s485,s484,%lo($LC75)
	addiu	s486,s260,%lo(ofname)
	move	$4,s483
	move	$5,s485
	move	$6,s486
	jal	fprintf
	nop
	j	$L500
	nop
$L588:
	lw	s487,%gp_rel(stderr)($28)
	lui	s488,%hi($LC35)
	addiu	s489,s488,%lo($LC35)
	lw	s490,%gp_rel(progname)($28)
	move	$4,s487
	move	$5,s489
	move	$6,s490
	jal	fprintf
	nop
	lw	s357,%gp_rel(quiet)($28)
	j	$L510
	nop
	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.globl	ascii
	.section	.sbss,"aw",@nobits
	.align	2
	.type	ascii, @object
	.size	ascii, 4
ascii:
	.space	4
	.globl	to_stdout
	.align	2
	.type	to_stdout, @object
	.size	to_stdout, 4
to_stdout:
	.space	4
	.globl	decompress
	.align	2
	.type	decompress, @object
	.size	decompress, 4
decompress:
	.space	4
	.globl	force
	.align	2
	.type	force, @object
	.size	force, 4
force:
	.space	4
	.globl	no_name
	.section	.sdata,"aw",@progbits
	.align	2
	.type	no_name, @object
	.size	no_name, 4
no_name:
	.word	-1
	.globl	no_time
	.align	2
	.type	no_time, @object
	.size	no_time, 4
no_time:
	.word	-1
	.globl	recursive
	.section	.sbss
	.align	2
	.type	recursive, @object
	.size	recursive, 4
recursive:
	.space	4
	.globl	list
	.align	2
	.type	list, @object
	.size	list, 4
list:
	.space	4
	.globl	verbose
	.align	2
	.type	verbose, @object
	.size	verbose, 4
verbose:
	.space	4
	.globl	quiet
	.align	2
	.type	quiet, @object
	.size	quiet, 4
quiet:
	.space	4
	.globl	do_lzw
	.align	2
	.type	do_lzw, @object
	.size	do_lzw, 4
do_lzw:
	.space	4
	.globl	test
	.align	2
	.type	test, @object
	.size	test, 4
test:
	.space	4
	.globl	maxbits
	.section	.sdata
	.align	2
	.type	maxbits, @object
	.size	maxbits, 4
maxbits:
	.word	16
	.globl	method
	.align	2
	.type	method, @object
	.size	method, 4
method:
	.word	8
	.globl	level
	.align	2
	.type	level, @object
	.size	level, 4
level:
	.word	6
	.globl	exit_code
	.section	.sbss
	.align	2
	.type	exit_code, @object
	.size	exit_code, 4
exit_code:
	.space	4
	.globl	args
	.align	2
	.type	args, @object
	.size	args, 4
args:
	.space	4
	.globl	total_in
	.align	2
	.type	total_in, @object
	.size	total_in, 4
total_in:
	.space	4
	.globl	total_out
	.align	2
	.type	total_out, @object
	.size	total_out, 4
total_out:
	.space	4
	.globl	remove_ofname
	.align	2
	.type	remove_ofname, @object
	.size	remove_ofname, 4
remove_ofname:
	.space	4
	.globl	longopts
	.section	.rodata.str1.4
	.align	2
$LC77:
	.ascii	"ascii\000"
	.align	2
$LC78:
	.ascii	"to-stdout\000"
	.align	2
$LC79:
	.ascii	"decompress\000"
	.align	2
$LC80:
	.ascii	"uncompress\000"
	.align	2
$LC81:
	.ascii	"force\000"
	.align	2
$LC82:
	.ascii	"help\000"
	.align	2
$LC83:
	.ascii	"list\000"
	.align	2
$LC84:
	.ascii	"license\000"
	.align	2
$LC85:
	.ascii	"no-name\000"
	.align	2
$LC86:
	.ascii	"name\000"
	.align	2
$LC87:
	.ascii	"quiet\000"
	.align	2
$LC88:
	.ascii	"silent\000"
	.align	2
$LC89:
	.ascii	"recursive\000"
	.align	2
$LC90:
	.ascii	"suffix\000"
	.align	2
$LC91:
	.ascii	"test\000"
	.align	2
$LC92:
	.ascii	"no-time\000"
	.align	2
$LC93:
	.ascii	"verbose\000"
	.align	2
$LC94:
	.ascii	"version\000"
	.align	2
$LC95:
	.ascii	"fast\000"
	.align	2
$LC96:
	.ascii	"best\000"
	.align	2
$LC97:
	.ascii	"lzw\000"
	.align	2
$LC98:
	.ascii	"bits\000"
	.data
	.align	2
	.type	longopts, @object
	.size	longopts, 384
longopts:
	.word	$LC77
	.word	0
	.word	0
	.word	97
	.word	$LC78
	.word	0
	.word	0
	.word	99
	.word	$LC42
	.word	0
	.word	0
	.word	99
	.word	$LC79
	.word	0
	.word	0
	.word	100
	.word	$LC80
	.word	0
	.word	0
	.word	100
	.word	$LC81
	.word	0
	.word	0
	.word	102
	.word	$LC82
	.word	0
	.word	0
	.word	104
	.word	$LC83
	.word	0
	.word	0
	.word	108
	.word	$LC84
	.word	0
	.word	0
	.word	76
	.word	$LC85
	.word	0
	.word	0
	.word	110
	.word	$LC86
	.word	0
	.word	0
	.word	78
	.word	$LC87
	.word	0
	.word	0
	.word	113
	.word	$LC88
	.word	0
	.word	0
	.word	113
	.word	$LC89
	.word	0
	.word	0
	.word	114
	.word	$LC90
	.word	1
	.word	0
	.word	83
	.word	$LC91
	.word	0
	.word	0
	.word	116
	.word	$LC92
	.word	0
	.word	0
	.word	84
	.word	$LC93
	.word	0
	.word	0
	.word	118
	.word	$LC94
	.word	0
	.word	0
	.word	86
	.word	$LC95
	.word	0
	.word	0
	.word	49
	.word	$LC96
	.word	0
	.word	0
	.word	57
	.word	$LC97
	.word	0
	.word	0
	.word	90
	.word	$LC98
	.word	1
	.word	0
	.word	98
	.word	0
	.word	0
	.word	0
	.word	0
	.globl	work
	.section	.sdata
	.align	2
	.type	work, @object
	.size	work, 4
work:
	.word	zip
	.local	in_exit.4545
	.comm	in_exit.4545,4,4
	.section	.rodata.str1.4
	.align	2
$LC99:
	.ascii	" -c --stdout      write on standard output, keep origina"
	.ascii	"l files unchanged\000"
	.align	2
$LC100:
	.ascii	" -d --decompress  decompress\000"
	.align	2
$LC101:
	.ascii	" -f --force       force overwrite of output file and com"
	.ascii	"press links\000"
	.align	2
$LC102:
	.ascii	" -h --help        give this help\000"
	.align	2
$LC103:
	.ascii	" -l --list        list compressed file contents\000"
	.align	2
$LC104:
	.ascii	" -L --license     display software license\000"
	.align	2
$LC105:
	.ascii	" -n --no-name     do not save or restore the original na"
	.ascii	"me and time stamp\000"
	.align	2
$LC106:
	.ascii	" -N --name        save or restore the original name and "
	.ascii	"time stamp\000"
	.align	2
$LC107:
	.ascii	" -q --quiet       suppress all warnings\000"
	.align	2
$LC108:
	.ascii	" -S .suf  --suffix .suf     use suffix .suf on compresse"
	.ascii	"d files\000"
	.align	2
$LC109:
	.ascii	" -t --test        test compressed file integrity\000"
	.align	2
$LC110:
	.ascii	" -v --verbose     verbose mode\000"
	.align	2
$LC111:
	.ascii	" -V --version     display version number\000"
	.align	2
$LC112:
	.ascii	" -1 --fast        compress faster\000"
	.align	2
$LC113:
	.ascii	" -9 --best        compress better\000"
	.align	2
$LC114:
	.ascii	" file...          files to (de)compress. If none given, "
	.ascii	"use standard input.\000"
	.data
	.align	2
	.type	help_msg.3511, @object
	.size	help_msg.3511, 68
help_msg.3511:
	.word	$LC99
	.word	$LC100
	.word	$LC101
	.word	$LC102
	.word	$LC103
	.word	$LC104
	.word	$LC105
	.word	$LC106
	.word	$LC107
	.word	$LC108
	.word	$LC109
	.word	$LC110
	.word	$LC111
	.word	$LC112
	.word	$LC113
	.word	$LC114
	.word	0
	.section	.rodata.str1.4
	.align	2
$LC115:
	.ascii	"   Copyright (C) 1992-1993 Jean-loup Gailly\000"
	.align	2
$LC116:
	.ascii	"   This program is free software; you can redistribute i"
	.ascii	"t and/or modify\000"
	.align	2
$LC117:
	.ascii	"   it under the terms of the GNU General Public License "
	.ascii	"as published by\000"
	.align	2
$LC118:
	.ascii	"   the Free Software Foundation; either version 2, or (a"
	.ascii	"t your option)\000"
	.align	2
$LC119:
	.ascii	"   any later version.\000"
	.align	2
$LC120:
	.ascii	"   This program is distributed in the hope that it will "
	.ascii	"be useful,\000"
	.align	2
$LC121:
	.ascii	"   but WITHOUT ANY WARRANTY; without even the implied wa"
	.ascii	"rranty of\000"
	.align	2
$LC122:
	.ascii	"   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. "
	.ascii	" See the\000"
	.align	2
$LC123:
	.ascii	"   GNU General Public License for more details.\000"
	.align	2
$LC124:
	.ascii	"   You should have received a copy of the GNU General Pu"
	.ascii	"blic License\000"
	.align	2
$LC125:
	.ascii	"   along with this program; if not, write to the Free So"
	.ascii	"ftware\000"
	.align	2
$LC126:
	.ascii	"   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, "
	.ascii	"USA.\000"
	.data
	.align	2
	.type	license_msg, @object
	.size	license_msg, 60
license_msg:
	.word	$LC115
	.word	$LC116
	.word	$LC117
	.word	$LC118
	.word	$LC119
	.word	$LC27
	.word	$LC120
	.word	$LC121
	.word	$LC122
	.word	$LC123
	.word	$LC27
	.word	$LC124
	.word	$LC125
	.word	$LC126
	.word	0
	.section	.rodata.str1.4
	.align	2
$LC127:
	.ascii	".z\000"
	.align	2
$LC128:
	.ascii	"-z\000"
	.align	2
$LC129:
	.ascii	".Z\000"
	.data
	.align	2
	.type	suffixes.3999, @object
	.size	suffixes.3999, 24
suffixes.3999:
	.word	z_suffix
	.word	$LC50
	.word	$LC127
	.word	$LC128
	.word	$LC129
	.word	0
	.section	.rodata.str1.4
	.align	2
$LC130:
	.ascii	"-gz\000"
	.align	2
$LC131:
	.ascii	"_z\000"
	.data
	.align	2
	.type	known_suffixes.3931, @object
	.size	known_suffixes.3931, 36
known_suffixes.3931:
	.word	z_suffix
	.word	$LC50
	.word	$LC127
	.word	$LC68
	.word	$LC3
	.word	$LC130
	.word	$LC128
	.word	$LC131
	.word	0
	.section	.rodata.str1.4
	.align	2
$LC132:
	.ascii	"store\000"
	.align	2
$LC133:
	.ascii	"compr\000"
	.align	2
$LC134:
	.ascii	"pack \000"
	.align	2
$LC135:
	.ascii	"lzh  \000"
	.align	2
$LC136:
	.ascii	"defla\000"
	.rdata
	.align	2
	.type	methods.4264, @object
	.size	methods.4264, 36
methods.4264:
	.word	$LC132
	.word	$LC133
	.word	$LC134
	.word	$LC135
	.word	$LC27
	.word	$LC27
	.word	$LC27
	.word	$LC27
	.word	$LC136
	.section	.sdata
	.align	2
	.type	first_time.4263, @object
	.size	first_time.4263, 4
first_time.4263:
	.word	1
	.comm	inbuf,32832,4
	.comm	outbuf,18432,4
	.comm	d_buf,65536,4
	.comm	window,65536,4
	.comm	prev,131072,4
	.comm	insize,4,4
	.comm	inptr,4,4
	.comm	outcnt,4,4
	.comm	bytes_in,4,4
	.comm	bytes_out,4,4
	.comm	ifd,4,4
	.comm	ofd,4,4
	.comm	ifname,1024,4
	.comm	ofname,1024,4
	.comm	progname,4,4
	.comm	time_stamp,4,4
	.comm	ifile_size,4,4
	.comm	save_orig_name,4,4
	.comm	foreground,4,4
	.comm	last_member,4,4
	.comm	part_nb,4,4
	.comm	env,4,4
	.comm	z_suffix,31,4
	.comm	z_len,4,4
	.comm	istat,144,4
	.ident	"GCC: (GNU) 4.3.0"
