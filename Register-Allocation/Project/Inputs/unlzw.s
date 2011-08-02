	.file	1 "unlzw.c"
	.section .mdebug.abi32
	.previous
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC0:
	.ascii	"\012%s: %s: warning, unknown flags 0x%x\012\000"
	.align	2
$LC1:
	.ascii	"\012%s: %s: compressed with %d bits, can only handle %d "
	.ascii	"bits\012\000"
	.align	2
$LC2:
	.ascii	"corrupt input.\000"
	.align	2
$LC3:
	.ascii	"corrupt input. Use zcat to recover some data.\000"
	.text
	.align	2
	.globl	unlzw
	.set	nomips16
	.ent	unlzw
unlzw:
	.frame	$sp,96,$31		# vars= 32, regs= 10/0, args= 24, gp= 0
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
	addiu	$sp,$sp,-96
	lw	s7,%gp_rel(inptr)($28)
	lw	s8,%gp_rel(insize)($28)
	nop
	sltu	s9,s7,s8
	beq	s9,$0,$L2
	nop
	lui	s10,%hi(inbuf)
	addiu	s11,s10,%lo(inbuf)
	addu	s12,s7,s11
	lbu	s13,0(s12)
	addiu	s14,s7,1
	sw	s14,%gp_rel(inptr)($28)
$L3:
	sw	s13,%gp_rel(maxbits)($28)
	andi	s15,s13,0x80
	sw	s15,%gp_rel(block_mode)($28)
	andi	s16,s13,0x60
	beq	s16,$0,$L4
	nop
	lw	s17,%gp_rel(quiet)($28)
	nop
	bne	s17,$0,$L5
	nop
	sw	s16,16($sp)
	lw	s18,%gp_rel(stderr)($28)
	lui	s19,%hi($LC0)
	addiu	s20,s19,%lo($LC0)
	lw	s21,%gp_rel(progname)($28)
	lui	s22,%hi(ifname)
	addiu	s23,s22,%lo(ifname)
	move	$4,s18
	move	$5,s20
	move	$6,s21
	move	$7,s23
	jal	fprintf
	nop
$L5:
	lw	s24,%gp_rel(exit_code)($28)
	nop
	bne	s24,$0,$L4
	nop
	li	s25,2			# 0x2
	sw	s25,%gp_rel(exit_code)($28)
$L4:
	lw	s26,%gp_rel(maxbits)($28)
	nop
	andi	s27,s26,0x1f
	sw	s27,%gp_rel(maxbits)($28)
	li	s28,1			# 0x1
	sll	s29,s28,s27
	slt	s30,s27,17
	beq	s30,$0,$L170
	nop
	lw	s31,%gp_rel(insize)($28)
	lw	s32,%gp_rel(inptr)($28)
	lw	s33,%gp_rel(block_mode)($28)
	nop
	sltu	s34,$0,s33
	addiu	s35,s34,256
	lui	s36,%hi(prev)
	addiu	s37,s36,%lo(prev)
	move	s38,$0
	li	s39,256			# 0x100
	move	$4,s37
	move	$5,s38
	move	$6,s39
	move	$7,s11
	jal	memset
	nop
	li	s40,255			# 0xff
	lui	s41,%hi(window)
	addiu	s42,s41,%lo(window)
	li	s43,-1			# 0xffffffffffffffff
$L10:
	addu	s44,s42,s40
	sb	s40,0(s44)
	addiu	s45,s40,-1
	addu	s46,s42,s45
	sb	s45,0(s46)
	addiu	s47,s40,-2
	addu	s48,s42,s47
	sb	s47,0(s48)
	addiu	s49,s40,-3
	addu	s50,s42,s49
	sb	s49,0(s50)
	addiu	s51,s40,-4
	addu	s29,s42,s51
	sb	s51,0(s29)
	addiu	s52,s40,-5
	addu	s53,s42,s52
	sb	s52,0(s53)
	addiu	s54,s40,-6
	addu	s55,s42,s54
	sb	s54,0(s55)
	addiu	s56,s40,-7
	addu	s57,s42,s56
	sb	s56,0(s57)
	addiu	s40,s40,-8
	bne	s40,s43,$L10
	nop
	sll	s58,s32,3
	move	s59,$0
	li	s59,-1			# 0xffffffffffffffff
	move	s60,$0
	li	s29,511			# 0x1ff
	li	s61,9			# 0x9
$L165:
	lw	s62,%gp_rel(insize)($28)
$L162:
	sra	s63,s58,3
	subu	s64,s62,s63
	blez	s64,$L11
	nop
	lui	s65,%hi(inbuf)
	addiu	s66,s65,%lo(inbuf)
	addu	s67,s66,s63
	sltu	s68,s64,4
	beq	s68,$0,$L171
	nop
$L12:
	lui	s69,%hi(inbuf)
	addiu	s70,s69,%lo(inbuf)
	addu	s71,s70,s63
	addu	s72,s70,s64
	lui	s73,%hi(inbuf)
	addiu	s74,s73,%lo(inbuf)
	nor	s75,$0,s74
	addu	s76,s75,s72
	andi	s29,s76,0x7
	lbu	s77,0(s71)
	nop
	sb	s77,0(s74)
	addiu	s78,s71,1
	addiu	s79,s74,1
	beq	s79,s72,$L11
	nop
	beq	s29,$0,$L18
	nop
	li	s80,1			# 0x1
	beq	s29,s80,$L142
	nop
	li	s81,2			# 0x2
	beq	s29,s81,$L143
	nop
	li	s82,3			# 0x3
	beq	s29,s82,$L144
	nop
	li	s83,4			# 0x4
	beq	s29,s83,$L145
	nop
	li	s84,5			# 0x5
	beq	s29,s84,$L146
	nop
	li	s85,6			# 0x6
	beq	s29,s85,$L147
	nop
	lbu	s86,1(s71)
	lui	s87,%hi(inbuf)
	addiu	s88,s87,%lo(inbuf)
	sb	s86,1(s88)
	addiu	s78,s71,2
	addiu	s79,s88,2
$L147:
	lbu	s89,0(s78)
	nop
	sb	s89,0(s79)
	addiu	s78,s78,1
	addiu	s79,s79,1
$L146:
	lbu	s29,0(s78)
	nop
	sb	s29,0(s79)
	addiu	s78,s78,1
	addiu	s79,s79,1
$L145:
	lbu	s90,0(s78)
	nop
	sb	s90,0(s79)
	addiu	s78,s78,1
	addiu	s79,s79,1
$L144:
	lbu	s91,0(s78)
	nop
	sb	s91,0(s79)
	addiu	s78,s78,1
	addiu	s79,s79,1
$L143:
	lbu	s92,0(s78)
	nop
	sb	s92,0(s79)
	addiu	s78,s78,1
	addiu	s79,s79,1
$L142:
	lbu	s93,0(s78)
	nop
	sb	s93,0(s79)
	addiu	s78,s78,1
	addiu	s79,s79,1
	beq	s79,s72,$L11
	nop
$L18:
	lbu	s94,0(s78)
	nop
	sb	s94,0(s79)
	lbu	s95,1(s78)
	nop
	sb	s95,1(s79)
	lbu	s96,2(s78)
	nop
	sb	s96,2(s79)
	lbu	s97,3(s78)
	nop
	sb	s97,3(s79)
	lbu	s98,4(s78)
	nop
	sb	s98,4(s79)
	lbu	s99,5(s78)
	nop
	sb	s99,5(s79)
	lbu	s29,6(s78)
	nop
	sb	s29,6(s79)
	lbu	s100,7(s78)
	nop
	sb	s100,7(s79)
	addiu	s78,s78,8
	addiu	s79,s79,8
	bne	s79,s72,$L18
	nop
$L11:
	sw	s64,%gp_rel(insize)($28)
	sltu	s101,s64,64
	bne	s101,$0,$L161
	nop
$L182:
	move	s62,s64
$L19:
	beq	s31,$0,$L21
	nop
	bne	s61,$0,1f
	divu	$0,s62,s61
	break	7
1:
	mfhi	s102
	subu	s103,s62,s102
	sll	s104,s103,3
	move	s105,s104
	blez	s105,$L172
	nop
$L23:
	slt	s106,s29,s35
	bne	s106,$0,$L173
	nop
	move	s58,$0
$L27:
	sra	s107,s58,3
	lui	s108,%hi(inbuf)
	addiu	s109,s108,%lo(inbuf)
	addu	s110,s109,s107
	lbu	s111,1(s110)
	nop
	sll	s112,s111,8
	lbu	s113,2(s110)
	nop
	sll	s114,s113,16
	or	s115,s112,s114
	lbu	s116,0(s110)
	nop
	or	s29,s115,s116
	andi	s117,s58,0x7
	sra	s118,s29,s117
	and	s59,s118,s29
	addu	s58,s58,s61
	li	s119,-1			# 0xffffffffffffffff
	beq	s59,s119,$L174
	nop
	li	s120,256			# 0x100
	beq	s59,s120,$L175
	nop
$L34:
	slt	s121,s59,s35
	beq	s121,$0,$L35
	nop
	lw	s122,%gp_rel($LC4)($28)
	move	s59,s59
	j	$L166
	nop
$L59:
	addiu	s122,s122,-1
	addu	s123,s59,s42
	lbu	s29,0(s123)
	nop
	sb	s29,0(s122)
	sll	s124,s59,1
	lui	s125,%hi(prev)
	addiu	s126,s125,%lo(prev)
	addu	s127,s124,s126
	lhu	s59,0(s127)
	nop
$L166:
	sltu	s128,s59,256
	beq	s128,$0,$L59
	nop
	addiu	s129,s122,-1
	addu	s130,s59,s42
	lbu	s59,0(s130)
	nop
	sb	s59,-1(s122)
	lui	s131,%hi(d_buf+65534)
	addiu	s132,s131,%lo(d_buf+65534)
	subu	s133,s132,s129
	addu	s134,s133,s60
	slt	s135,s134,16384
	bne	s135,$0,$L43
	nop
$L163:
	li	s136,16384			# 0x4000
	subu	s137,s136,s60
	slt	s138,s133,s137
	beq	s138,$0,$L44
	nop
	move	s137,s133
$L44:
	blez	s137,$L45
	nop
	lui	s139,%hi(outbuf)
	addiu	s140,s139,%lo(outbuf)
	addu	s141,s140,s60
	move	s142,s129
	move	s143,s137
	move	$4,s141
	move	$5,s142
	move	$6,s143
	move	$7,s29
	jal	memcpy
	nop
	addu	s60,s60,s137
$L45:
	slt	s144,s60,16384
	beq	s144,$0,$L46
	nop
	move	s134,s60
	addu	s129,s129,s137
	lui	s145,%hi(d_buf+65534)
	addiu	s146,s145,%lo(d_buf+65534)
	subu	s133,s146,s129
	blez	s133,$L49
	nop
$L176:
	move	s60,s134
	j	$L163
	nop
$L46:
	lw	s105,%gp_rel(test)($28)
	nop
	beq	s105,$0,$L48
	nop
	move	s134,$0
$L179:
	addu	s129,s129,s137
	lui	s147,%hi(d_buf+65534)
	addiu	s148,s147,%lo(d_buf+65534)
	subu	s133,s148,s129
	bgtz	s133,$L176
	nop
$L49:
	slt	s149,s35,s29
	beq	s149,$0,$L168
	nop
	sll	s150,s35,1
	lui	s151,%hi(prev)
	addiu	s152,s151,%lo(prev)
	addu	s153,s150,s152
	sh	s59,0(s153)
	addu	s154,s35,s42
	sb	s59,0(s154)
	addiu	s35,s35,1
$L168:
	move	s60,s134
	slt	s155,s58,s104
	beq	s155,$0,$L177
	nop
$L52:
	slt	s156,s29,s35
	beq	s156,$0,$L27
	nop
	addiu	s157,s58,-1
	lw	s62,%gp_rel(insize)($28)
$L26:
	sll	s158,s61,3
	addu	s159,s157,s158
	addiu	s61,s61,1
	lw	s160,%gp_rel(maxbits)($28)
	nop
	beq	s61,s160,$L178
	nop
	li	s161,1			# 0x1
	sll	s162,s161,s61
	addiu	s29,s162,-1
$L29:
	bne	s158,$0,1f
	div	$0,s159,s158
	break	7
1:
	mfhi	s163
	subu	s58,s159,s163
	li	s164,1			# 0x1
	sll	s165,s164,s61
	addiu	s29,s165,-1
	j	$L162
	nop
$L48:
	lui	s166,%hi(outbuf)
	addiu	s167,s166,%lo(outbuf)
	move	s168,s60
	move	$4,s2
	move	$5,s167
	move	$6,s168
	move	$7,s29
	jal	write_buf
	nop
	lw	s169,%gp_rel(bytes_out)($28)
	nop
	addu	s170,s169,s60
	sw	s170,%gp_rel(bytes_out)($28)
	move	s134,$0
	j	$L179
	nop
$L35:
	slt	s171,s35,s59
	beq	s171,$0,$L37
	nop
	lw	s172,%gp_rel(test)($28)
	nop
	bne	s172,$0,$L38
	nop
	blez	s60,$L38
	nop
	lui	s173,%hi(outbuf)
	addiu	s174,s173,%lo(outbuf)
	move	s175,s60
	move	$4,s2
	move	$5,s174
	move	$6,s175
	move	$7,s29
	jal	write_buf
	nop
	lw	s176,%gp_rel(bytes_out)($28)
	nop
	addu	s177,s176,s60
	sw	s177,%gp_rel(bytes_out)($28)
$L38:
	lw	s178,%gp_rel(to_stdout)($28)
	nop
	bne	s178,$0,$L39
	nop
	lui	s179,%hi($LC3)
	addiu	s180,s179,%lo($LC3)
$L40:
	move	$4,s180
	move	$5,s105
	move	$6,s59
	move	$7,s29
	jal	error
	nop
$L37:
	lw	s122,%gp_rel($LC5)($28)
	lui	s181,%hi(d_buf+65533)
	addiu	s105,s181,%lo(d_buf+65533)
	sb	s59,0(s105)
	j	$L166
	nop
$L174:
	slt	s182,s59,256
	beq	s182,$0,$L180
	nop
$L32:
	lui	s183,%hi(outbuf)
	addiu	s184,s183,%lo(outbuf)
	addu	s185,s60,s184
	sb	s59,0(s185)
	addiu	s60,s60,1
	slt	s186,s58,s104
	bne	s186,$0,$L52
	nop
$L177:
$L24:
	bne	s31,$0,$L165
	nop
	lw	s187,%gp_rel(test)($28)
	nop
	bne	s187,$0,$L53
	nop
	blez	s60,$L53
	nop
	lui	s188,%hi(outbuf)
	addiu	s189,s188,%lo(outbuf)
	move	s190,s60
	move	$4,s2
	move	$5,s189
	move	$6,s190
	move	$7,s29
	jal	write_buf
	nop
	lw	s191,%gp_rel(bytes_out)($28)
	nop
	addu	s192,s191,s60
	sw	s192,%gp_rel(bytes_out)($28)
	move	s193,$0
	j	$L7
	nop
$L175:
	lw	s194,%gp_rel(block_mode)($28)
	nop
	beq	s194,$0,$L34
	nop
	lui	s195,%hi(prev)
	addiu	s196,s195,%lo(prev)
	move	s197,$0
	li	s198,256			# 0x100
	move	$4,s196
	move	$5,s197
	move	$6,s198
	move	$7,s29
	jal	memset
	nop
	sll	s29,s61,3
	addiu	s199,s29,-1
	addu	s200,s199,s58
	bne	s29,$0,1f
	div	$0,s200,s29
	break	7
1:
	mfhi	s201
	subu	s58,s200,s201
	li	s29,511			# 0x1ff
	li	s35,256			# 0x100
	li	s61,9			# 0x9
	lw	s62,%gp_rel(insize)($28)
	j	$L162
	nop
$L43:
	lui	s202,%hi(outbuf)
	addiu	s203,s202,%lo(outbuf)
	addu	s204,s203,s60
	move	s205,s129
	move	$4,s204
	move	$5,s205
	move	$6,s133
	move	$7,s29
	jal	memcpy
	nop
	j	$L49
	nop
$L180:
	lui	s206,%hi($LC2)
	addiu	s207,s206,%lo($LC2)
	move	$4,s207
	move	$5,s206
	move	$6,s59
	move	$7,s29
	jal	error
	nop
	j	$L32
	nop
$L39:
	lui	s208,%hi($LC2)
	addiu	s180,s208,%lo($LC2)
	j	$L40
	nop
$L21:
	sll	s29,s62,3
	addiu	s209,s29,1
	subu	s104,s209,s61
	move	s105,s104
	bgtz	s105,$L23
	nop
$L172:
	move	s58,$0
	j	$L24
	nop
$L171:
	lui	s210,%hi(inbuf)
	addiu	s211,s210,%lo(inbuf)
	or	s212,s67,s211
	andi	s213,s212,0x3
	bne	s213,$0,$L12
	nop
	addiu	s214,s67,4
	sltu	s215,s214,s211
	bne	s215,$0,$L55
	nop
	lui	s216,%hi(inbuf+4)
	addiu	s217,s216,%lo(inbuf+4)
	sltu	s218,s217,s67
	beq	s218,$0,$L12
	nop
$L55:
	srl	s219,s64,2
	sll	s220,s219,2
	beq	s220,$0,$L181
	nop
	addiu	s221,s219,-1
	andi	s222,s221,0x7
	lw	s223,0(s67)
	lui	s224,%hi(inbuf)
	addiu	s225,s224,%lo(inbuf)
	sw	s223,0(s225)
	li	s29,1			# 0x1
	addiu	s226,s67,4
	addiu	s227,s225,4
	sltu	s228,s29,s219
	beq	s228,$0,$L160
	nop
	beq	s222,$0,$L16
	nop
	beq	s222,s29,$L154
	nop
	li	s229,2			# 0x2
	beq	s222,s229,$L155
	nop
	li	s230,3			# 0x3
	beq	s222,s230,$L156
	nop
	li	s231,4			# 0x4
	beq	s222,s231,$L157
	nop
	li	s232,5			# 0x5
	beq	s222,s232,$L158
	nop
	li	s233,6			# 0x6
	beq	s222,s233,$L159
	nop
	lw	s234,4(s67)
	lui	s235,%hi(inbuf)
	addiu	s236,s235,%lo(inbuf)
	sw	s234,4(s236)
	li	s29,2			# 0x2
	addiu	s226,s67,8
	addiu	s227,s236,8
$L159:
	lw	s237,0(s226)
	nop
	sw	s237,0(s227)
	addiu	s29,s29,1
	addiu	s226,s226,4
	addiu	s227,s227,4
$L158:
	lw	s238,0(s226)
	nop
	sw	s238,0(s227)
	addiu	s29,s29,1
	addiu	s226,s226,4
	addiu	s227,s227,4
$L157:
	lw	s239,0(s226)
	nop
	sw	s239,0(s227)
	addiu	s29,s29,1
	addiu	s226,s226,4
	addiu	s227,s227,4
$L156:
	lw	s240,0(s226)
	nop
	sw	s240,0(s227)
	addiu	s29,s29,1
	addiu	s226,s226,4
	addiu	s227,s227,4
$L155:
	lw	s241,0(s226)
	nop
	sw	s241,0(s227)
	addiu	s29,s29,1
	addiu	s226,s226,4
	addiu	s227,s227,4
$L154:
	lw	s242,0(s226)
	nop
	sw	s242,0(s227)
	addiu	s29,s29,1
	addiu	s226,s226,4
	addiu	s227,s227,4
	sltu	s243,s29,s219
	beq	s243,$0,$L160
	nop
$L16:
	lw	s244,0(s226)
	nop
	sw	s244,0(s227)
	lw	s245,4(s226)
	nop
	sw	s245,4(s227)
	lw	s246,8(s226)
	nop
	sw	s246,8(s227)
	lw	s247,12(s226)
	nop
	sw	s247,12(s227)
	lw	s248,16(s226)
	nop
	sw	s248,16(s227)
	lw	s249,20(s226)
	nop
	sw	s249,20(s227)
	lw	s250,24(s226)
	nop
	sw	s250,24(s227)
	lw	s251,28(s226)
	nop
	sw	s251,28(s227)
	addiu	s29,s29,8
	addiu	s226,s226,32
	addiu	s227,s227,32
	sltu	s252,s29,s219
	bne	s252,$0,$L16
	nop
$L160:
	move	s253,s220
	beq	s64,s220,$L11
	nop
$L15:
	addu	s254,s253,s63
	lui	s255,%hi(inbuf)
	addiu	s256,s255,%lo(inbuf)
	addu	s257,s256,s254
	addu	s258,s256,s253
	nor	s259,$0,s253
	addu	s260,s259,s64
	andi	s261,s260,0x7
	lbu	s262,0(s257)
	nop
	sb	s262,0(s258)
	addiu	s29,s253,1
	addiu	s263,s257,1
	addiu	s264,s258,1
	slt	s265,s29,s64
	beq	s265,$0,$L11
	nop
	beq	s261,$0,$L17
	nop
	li	s266,1			# 0x1
	beq	s261,s266,$L148
	nop
	li	s267,2			# 0x2
	beq	s261,s267,$L149
	nop
	li	s268,3			# 0x3
	beq	s261,s268,$L150
	nop
	li	s269,4			# 0x4
	beq	s261,s269,$L151
	nop
	li	s270,5			# 0x5
	beq	s261,s270,$L152
	nop
	li	s271,6			# 0x6
	beq	s261,s271,$L153
	nop
	lbu	s272,1(s257)
	nop
	sb	s272,1(s258)
	addiu	s29,s253,2
	addiu	s263,s257,2
	addiu	s264,s258,2
$L153:
	lbu	s273,0(s263)
	nop
	sb	s273,0(s264)
	addiu	s29,s29,1
	addiu	s263,s263,1
	addiu	s264,s264,1
$L152:
	lbu	s274,0(s263)
	nop
	sb	s274,0(s264)
	addiu	s29,s29,1
	addiu	s263,s263,1
	addiu	s264,s264,1
$L151:
	lbu	s275,0(s263)
	nop
	sb	s275,0(s264)
	addiu	s29,s29,1
	addiu	s263,s263,1
	addiu	s264,s264,1
$L150:
	lbu	s276,0(s263)
	nop
	sb	s276,0(s264)
	addiu	s29,s29,1
	addiu	s263,s263,1
	addiu	s264,s264,1
$L149:
	lbu	s277,0(s263)
	nop
	sb	s277,0(s264)
	addiu	s29,s29,1
	addiu	s263,s263,1
	addiu	s264,s264,1
$L148:
	lbu	s278,0(s263)
	nop
	sb	s278,0(s264)
	addiu	s29,s29,1
	addiu	s263,s263,1
	addiu	s264,s264,1
	slt	s279,s29,s64
	beq	s279,$0,$L11
	nop
$L17:
	lbu	s280,0(s263)
	nop
	sb	s280,0(s264)
	lbu	s281,1(s263)
	nop
	sb	s281,1(s264)
	lbu	s282,2(s263)
	nop
	sb	s282,2(s264)
	lbu	s283,3(s263)
	nop
	sb	s283,3(s264)
	lbu	s284,4(s263)
	nop
	sb	s284,4(s264)
	lbu	s285,5(s263)
	nop
	sb	s285,5(s264)
	lbu	s286,6(s263)
	nop
	sb	s286,6(s264)
	lbu	s287,7(s263)
	nop
	sb	s287,7(s264)
	addiu	s29,s29,8
	addiu	s263,s263,8
	addiu	s264,s264,8
	slt	s288,s29,s64
	bne	s288,$0,$L17
	nop
	sw	s64,%gp_rel(insize)($28)
	sltu	s289,s64,64
	beq	s289,$0,$L182
	nop
$L161:
	lui	s290,%hi(inbuf)
	addiu	s291,s290,%lo(inbuf)
	addu	s292,s291,s64
	li	s293,32768			# 0x8000
	move	$4,s1
	move	$5,s292
	move	$6,s293
	move	$7,s29
	jal	read
	nop
	move	s31,$2
	li	s294,-1			# 0xffffffffffffffff
	beq	s31,s294,$L183
	nop
$L20:
	lw	s295,%gp_rel(insize)($28)
	nop
	addu	s62,s295,s31
	sw	s62,%gp_rel(insize)($28)
	lw	s296,%gp_rel(bytes_in)($28)
	nop
	addu	s297,s296,s31
	sw	s297,%gp_rel(bytes_in)($28)
	move	s31,s31
	j	$L19
	nop
$L53:
	move	s193,$0
$L7:
	addiu	$sp,$sp,96
	move	$2,s193
	j	s6
	nop
$L178:
	j	$L29
	nop
$L183:
	jal	read_error
	nop
	j	$L20
	nop
$L173:
	li	s157,-1			# 0xffffffffffffffff
	j	$L26
	nop
$L2:
	move	s298,$0
	move	$4,s298
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	fill_inbuf
	nop
	move	s299,$2
	move	s13,s299
	j	$L3
	nop
$L170:
	sw	s27,16($sp)
	li	s300,16			# 0x10
	sw	s300,20($sp)
	lw	s301,%gp_rel(stderr)($28)
	lui	s302,%hi($LC1)
	addiu	s303,s302,%lo($LC1)
	lw	s304,%gp_rel(progname)($28)
	lui	s305,%hi(ifname)
	addiu	s306,s305,%lo(ifname)
	move	$4,s301
	move	$5,s303
	move	$6,s304
	move	$7,s306
	jal	fprintf
	nop
	sw	s28,%gp_rel(exit_code)($28)
	li	s193,1			# 0x1
	j	$L7
	nop
$L181:
	move	s253,$0
	j	$L15
	nop
	.set	macro
	.set	reorder
	.end	unlzw
	.size	unlzw, .-unlzw
	.globl	block_mode
	.section	.sdata,"aw",@progbits
	.align	2
	.type	block_mode, @object
	.size	block_mode, 4
block_mode:
	.word	128
	.align	2
$LC4:
	.word	d_buf+65534
	.align	2
$LC5:
	.word	d_buf+65533
	.ident	"GCC: (GNU) 4.3.0"
