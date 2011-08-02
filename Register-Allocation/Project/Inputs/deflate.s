	.file	1 "deflate.c"
	.section .mdebug.abi32
	.previous
	.text
	.align	2
	.globl	longest_match
	.set	nomips16
	.ent	longest_match
longest_match:
	.frame	$sp,16,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x00070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$31
	addiu	$sp,$sp,-16
	lw	s3,%gp_rel(max_chain_length)($28)
	lw	s4,%gp_rel(strstart)($28)
	lui	s5,%hi(window)
	addiu	s6,s5,%lo(window)
	addu	s7,s6,s4
	lw	s8,%gp_rel(prev_length)($28)
	sltu	s9,s4,32507
	beq	s9,$0,$L2
	nop
	move	s10,$0
$L3:
	addiu	s11,s4,258
	addu	s12,s6,s11
	addu	s13,s7,s8
	lbu	s14,-1(s13)
	lbu	s15,0(s13)
	lw	s16,%gp_rel(good_match)($28)
	nop
	sltu	s17,s8,s16
	bne	s17,$0,$L4
	nop
	srl	s3,s3,2
$L4:
	move	s18,s8
	lw	s19,%gp_rel(nice_match)($28)
	li	s20,258			# 0x102
	subu	s21,s20,s12
	addiu	s22,s12,-258
	lui	s23,%hi(prev)
	addiu	s24,s23,%lo(prev)
	j	$L12
	nop
$L19:
	move	s25,s14
	move	s26,s15
$L6:
	andi	s27,s1,0x7fff
	sll	s28,s27,1
	addu	s29,s28,s24
	lhu	s1,0(s29)
	nop
	sltu	s30,s10,s1
	beq	s30,$0,$L11
	nop
$L20:
	addiu	s3,s3,-1
	beq	s3,$0,$L11
	nop
	move	s14,s25
	move	s15,s26
$L12:
	addu	s31,s6,s1
	addu	s32,s31,s18
	lbu	s26,0(s32)
	nop
	bne	s26,s15,$L19
	nop
	lbu	s25,-1(s32)
	nop
	beq	s25,s14,$L7
	nop
	move	s25,s14
	andi	s33,s1,0x7fff
	sll	s34,s33,1
	addu	s35,s34,s24
	lhu	s1,0(s35)
	nop
	sltu	s36,s10,s1
	bne	s36,$0,$L20
	nop
$L11:
	move	s37,s18
	addiu	$sp,$sp,16
	move	$2,s37
	j	s2
	nop
$L7:
	lbu	s38,0(s31)
	lbu	s39,0(s7)
	nop
	bne	s38,s39,$L6
	nop
	lbu	s40,1(s31)
	lbu	s41,1(s7)
	nop
	bne	s40,s41,$L6
	nop
	addiu	s42,s7,2
	addiu	s43,s31,2
	nor	s44,$0,s42
	addu	s45,s12,s44
	srl	s46,s45,3
	andi	s47,s46,0x1
	bne	s47,$0,$L16
	nop
$L9:
	addiu	s48,s42,1
	lbu	s49,1(s42)
	lbu	s50,1(s43)
	nop
	bne	s49,s50,$L8
	nop
	addiu	s48,s42,2
	lbu	s51,2(s42)
	lbu	s52,2(s43)
	nop
	bne	s51,s52,$L8
	nop
	addiu	s48,s42,3
	lbu	s53,3(s42)
	lbu	s54,3(s43)
	nop
	bne	s53,s54,$L8
	nop
	addiu	s48,s42,4
	lbu	s55,4(s42)
	lbu	s56,4(s43)
	nop
	bne	s55,s56,$L8
	nop
	addiu	s48,s42,5
	lbu	s57,5(s42)
	lbu	s58,5(s43)
	nop
	bne	s57,s58,$L8
	nop
	addiu	s48,s42,6
	lbu	s59,6(s42)
	lbu	s60,6(s43)
	nop
	bne	s59,s60,$L8
	nop
	addiu	s48,s42,7
	lbu	s61,7(s42)
	lbu	s62,7(s43)
	nop
	bne	s61,s62,$L8
	nop
	addiu	s63,s42,8
	move	s48,s63
	addiu	s64,s43,8
	lbu	s65,8(s42)
	lbu	s66,8(s43)
	nop
	bne	s65,s66,$L8
	nop
	sltu	s67,s63,s12
	beq	s67,$0,$L8
	nop
	addiu	s48,s42,9
	lbu	s68,1(s63)
	lbu	s69,1(s64)
	nop
	bne	s68,s69,$L8
	nop
	addiu	s48,s63,2
	lbu	s70,2(s63)
	lbu	s71,2(s64)
	nop
	bne	s70,s71,$L8
	nop
	addiu	s48,s63,3
	lbu	s72,3(s63)
	lbu	s73,3(s64)
	nop
	bne	s72,s73,$L8
	nop
	addiu	s48,s63,4
	lbu	s74,4(s63)
	lbu	s75,4(s64)
	nop
	bne	s74,s75,$L8
	nop
	addiu	s48,s63,5
	lbu	s76,5(s63)
	lbu	s77,5(s64)
	nop
	bne	s76,s77,$L8
	nop
	addiu	s48,s63,6
	lbu	s78,6(s63)
	lbu	s79,6(s64)
	nop
	bne	s78,s79,$L8
	nop
	addiu	s48,s63,7
	lbu	s80,7(s63)
	lbu	s81,7(s64)
	nop
	bne	s80,s81,$L8
	nop
	addiu	s42,s63,8
	move	s48,s42
	addiu	s43,s64,8
	lbu	s82,8(s63)
	lbu	s83,8(s64)
	nop
	beq	s82,s83,$L9
	nop
$L8:
	addu	s84,s48,s21
	move	s7,s22
	slt	s85,s18,s84
	beq	s85,$0,$L6
	nop
	sw	s1,%gp_rel(match_start)($28)
	slt	s86,s84,s19
	beq	s86,$0,$L10
	nop
	addu	s87,s22,s84
	lbu	s25,-1(s87)
	lbu	s26,0(s87)
	move	s18,s84
	j	$L6
	nop
$L2:
	addiu	s10,s4,-32506
	j	$L3
	nop
$L16:
	addiu	s48,s7,3
	lbu	s88,1(s42)
	lbu	s89,1(s43)
	nop
	bne	s88,s89,$L8
	nop
	addiu	s48,s7,4
	lbu	s90,2(s42)
	lbu	s91,2(s43)
	nop
	bne	s90,s91,$L8
	nop
	addiu	s48,s7,5
	lbu	s92,3(s42)
	lbu	s93,3(s43)
	nop
	bne	s92,s93,$L8
	nop
	addiu	s48,s7,6
	lbu	s94,4(s42)
	lbu	s95,4(s43)
	nop
	bne	s94,s95,$L8
	nop
	addiu	s48,s7,7
	lbu	s96,5(s42)
	lbu	s97,5(s43)
	nop
	bne	s96,s97,$L8
	nop
	addiu	s48,s42,6
	lbu	s98,6(s42)
	lbu	s99,6(s43)
	nop
	bne	s98,s99,$L8
	nop
	addiu	s48,s42,7
	lbu	s100,7(s42)
	lbu	s101,7(s43)
	nop
	bne	s100,s101,$L8
	nop
	addiu	s102,s42,8
	move	s48,s102
	addiu	s43,s43,8
	lbu	s103,8(s42)
	lbu	s104,0(s43)
	nop
	bne	s103,s104,$L8
	nop
	sltu	s105,s102,s12
	beq	s105,$0,$L8
	nop
	move	s42,s102
	j	$L9
	nop
$L10:
	move	s18,s84
	j	$L11
	nop
	.set	macro
	.set	reorder
	.end	longest_match
	.size	longest_match, .-longest_match
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC0:
	.ascii	"bad pack level\000"
	.text
	.align	2
	.globl	lm_init
	.set	nomips16
	.ent	lm_init
lm_init:
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
	addiu	s9,s1,-1
	sltu	s10,s9,9
	beq	s10,$0,$L211
	nop
$L22:
	sw	s7,%gp_rel(compr_level)($28)
	lui	s11,%hi(prev+65536)
	addiu	s12,s11,%lo(prev+65536)
	move	s13,s12
	move	s14,$0
	li	s15,65536			# 0x10000
	move	$4,s13
	move	$5,s14
	move	$6,s15
	move	$7,s4
	jal	memset
	nop
	sll	s16,s7,3
	lui	s17,%hi(configuration_table)
	addiu	s18,s17,%lo(configuration_table)
	addu	s19,s16,s18
	lhu	s20,2(s19)
	nop
	sw	s20,%gp_rel(max_lazy_match)($28)
	lhu	s21,0(s19)
	nop
	sw	s21,%gp_rel(good_match)($28)
	lhu	s22,4(s19)
	nop
	sw	s22,%gp_rel(nice_match)($28)
	lhu	s23,6(s19)
	nop
	sw	s23,%gp_rel(max_chain_length)($28)
	li	s24,1			# 0x1
	beq	s7,s24,$L212
	nop
	li	s25,9			# 0x9
	beq	s7,s25,$L213
	nop
$L24:
	sw	$0,%gp_rel(strstart)($28)
	sw	$0,%gp_rel(block_start)($28)
	lui	s26,%hi(window)
	addiu	s27,s26,%lo(window)
	move	s28,s27
	move	s29,s27
	li	s30,65536			# 0x10000
	lw	s31,%gp_rel(read_buf)($28)
	nop
	move	$4,s29
	move	$5,s30
	move	$6,s23
	move	$7,s19
	jalr	s31
	nop
	move	s32,$2
	sw	s32,%gp_rel(lookahead)($28)
	addiu	s33,s32,-1
	sltu	s34,s33,-2
	beq	s34,$0,$L214
	nop
$L25:
	sw	$0,%gp_rel(eofile)($28)
	move	s35,s32
	li	s36,-1			# 0xffffffffffffffff
	lui	s37,%hi(window+32768)
	addiu	s38,s37,%lo(window+32768)
	move	s39,s27
	li	s40,32768			# 0x8000
	lui	s41,%hi(prev+131072)
	addiu	s42,s41,%lo(prev+131072)
$L146:
	sltu	s43,s35,262
	beq	s43,$0,$L38
	nop
$L217:
	lw	s44,%gp_rel(eofile)($28)
	nop
	bne	s44,$0,$L38
	nop
	lw	s45,%gp_rel(strstart)($28)
	lw	s46,%gp_rel(window_size)($28)
	nop
	subu	s47,s46,s35
	subu	s48,s47,s45
	beq	s48,s36,$L28
	nop
	li	s49,65274			# 0xfefa
	sltu	s50,s45,s49
	beq	s50,$0,$L215
	nop
$L29:
	addu	s51,s35,s45
	addu	s52,s28,s51
	move	s53,s48
	lw	s54,%gp_rel(read_buf)($28)
	nop
	move	$4,s52
	move	$5,s53
	move	$6,s55
	move	$7,s56
	jalr	s54
	nop
	move	s32,$2
	addiu	s57,s32,-1
	sltu	s58,s57,-2
	beq	s58,$0,$L216
	nop
$L37:
	lw	s56,%gp_rel(lookahead)($28)
	nop
	addu	s35,s56,s32
	sw	s35,%gp_rel(lookahead)($28)
	sltu	s59,s35,262
	bne	s59,$0,$L217
	nop
$L38:
	lbu	s60,%lo(window)(s26)
	nop
	sll	s61,s60,5
	lbu	s62,1(s27)
	nop
	xor	s63,s61,s62
	sw	s63,%gp_rel(ins_h)($28)
$L40:
	addiu	$sp,$sp,56
	move	$2,s32
	j	s6
	nop
$L28:
	li	s64,-2			# 0xfffffffffffffffe
	addu	s65,s35,s45
	addu	s66,s28,s65
	move	s67,s64
	lw	s68,%gp_rel(read_buf)($28)
	nop
	move	$4,s66
	move	$5,s67
	move	$7,s56
	jalr	s68
	nop
	move	s32,$2
	addiu	s69,s32,-1
	sltu	s70,s69,-2
	bne	s70,$0,$L37
	nop
$L216:
	li	s71,1			# 0x1
	sw	s71,%gp_rel(eofile)($28)
	lw	s35,%gp_rel(lookahead)($28)
	j	$L146
	nop
$L215:
	lui	s72,%hi(window+65536)
	addiu	s73,s72,%lo(window+65536)
	subu	s74,s73,s38
	addiu	s75,s74,-16
	srl	s76,s75,4
	andi	s77,s76,0x3
	lwl	s78,0(s38)
	nop
	lwr	s79,3(s38)
	lwl	s80,4(s38)
	nop
	lwr	s81,7(s38)
	lwl	s82,8(s38)
	nop
	lwr	s83,11(s38)
	lwl	s84,12(s38)
	nop
	lwr	s85,15(s38)
	swl	s79,0(s39)
	swr	s79,3(s39)
	swl	s81,4(s39)
	swr	s81,7(s39)
	swl	s83,8(s39)
	swr	s83,11(s39)
	swl	s85,12(s39)
	swr	s85,15(s39)
	addiu	s86,s38,16
	addiu	s87,s39,16
	beq	s77,$0,$L30
	nop
	li	s88,1			# 0x1
	beq	s77,s88,$L144
	nop
	li	s89,2			# 0x2
	beq	s77,s89,$L145
	nop
	lwl	s90,0(s86)
	nop
	lwr	s91,3(s86)
	lwl	s92,4(s86)
	nop
	lwr	s93,7(s86)
	lwl	s94,8(s86)
	nop
	lwr	s95,11(s86)
	lwl	s96,12(s86)
	nop
	lwr	s97,15(s86)
	swl	s91,0(s87)
	swr	s91,3(s87)
	swl	s93,4(s87)
	swr	s93,7(s87)
	swl	s95,8(s87)
	swr	s95,11(s87)
	swl	s97,12(s87)
	swr	s97,15(s87)
	addiu	s86,s38,32
	addiu	s87,s39,32
$L145:
	lwl	s98,0(s86)
	nop
	lwr	s99,3(s86)
	lwl	s100,4(s86)
	nop
	lwr	s101,7(s86)
	lwl	s102,8(s86)
	nop
	lwr	s103,11(s86)
	lwl	s104,12(s86)
	nop
	lwr	s105,15(s86)
	swl	s99,0(s87)
	swr	s99,3(s87)
	swl	s101,4(s87)
	swr	s101,7(s87)
	swl	s103,8(s87)
	swr	s103,11(s87)
	swl	s105,12(s87)
	swr	s105,15(s87)
	addiu	s86,s86,16
	addiu	s87,s87,16
$L144:
	lwl	s106,0(s86)
	nop
	lwr	s107,3(s86)
	lwl	s108,4(s86)
	nop
	lwr	s109,7(s86)
	lwl	s110,8(s86)
	nop
	lwr	s111,11(s86)
	lwl	s112,12(s86)
	nop
	lwr	s113,15(s86)
	swl	s107,0(s87)
	swr	s107,3(s87)
	swl	s109,4(s87)
	swr	s109,7(s87)
	swl	s111,8(s87)
	swr	s111,11(s87)
	swl	s113,12(s87)
	swr	s113,15(s87)
	addiu	s86,s86,16
	addiu	s87,s87,16
	lui	s114,%hi(window+65536)
	addiu	s115,s114,%lo(window+65536)
	beq	s86,s115,$L210
	nop
$L30:
	lwl	s116,0(s86)
	nop
	lwr	s117,3(s86)
	lwl	s118,4(s86)
	nop
	lwr	s119,7(s86)
	lwl	s120,8(s86)
	nop
	lwr	s121,11(s86)
	lwl	s122,12(s86)
	nop
	lwr	s123,15(s86)
	swl	s117,0(s87)
	swr	s117,3(s87)
	swl	s119,4(s87)
	swr	s119,7(s87)
	swl	s121,8(s87)
	swr	s121,11(s87)
	swl	s123,12(s87)
	swr	s123,15(s87)
	addiu	s124,s86,16
	addiu	s125,s87,16
	lwl	s126,0(s124)
	nop
	lwr	s127,3(s124)
	lwl	s128,4(s124)
	nop
	lwr	s129,7(s124)
	lwl	s130,8(s124)
	nop
	lwr	s131,11(s124)
	lwl	s132,12(s124)
	nop
	lwr	s133,15(s124)
	swl	s127,0(s125)
	swr	s127,3(s125)
	swl	s129,4(s125)
	swr	s129,7(s125)
	swl	s131,8(s125)
	swr	s131,11(s125)
	swl	s133,12(s125)
	swr	s133,15(s125)
	addiu	s134,s86,32
	addiu	s135,s87,32
	lwl	s136,0(s134)
	nop
	lwr	s137,3(s134)
	lwl	s138,4(s134)
	nop
	lwr	s139,7(s134)
	lwl	s140,8(s134)
	nop
	lwr	s141,11(s134)
	lwl	s142,12(s134)
	nop
	lwr	s143,15(s134)
	swl	s137,0(s135)
	swr	s137,3(s135)
	swl	s139,4(s135)
	swr	s139,7(s135)
	swl	s141,8(s135)
	swr	s141,11(s135)
	swl	s143,12(s135)
	swr	s143,15(s135)
	addiu	s144,s86,48
	addiu	s145,s87,48
	lwl	s146,0(s144)
	nop
	lwr	s147,3(s144)
	lwl	s148,4(s144)
	nop
	lwr	s149,7(s144)
	lwl	s150,8(s144)
	nop
	lwr	s151,11(s144)
	lwl	s152,12(s144)
	nop
	lwr	s153,15(s144)
	swl	s147,0(s145)
	swr	s147,3(s145)
	swl	s149,4(s145)
	swr	s149,7(s145)
	swl	s151,8(s145)
	swr	s151,11(s145)
	swl	s153,12(s145)
	swr	s153,15(s145)
	addiu	s86,s86,64
	addiu	s87,s87,64
	lui	s154,%hi(window+65536)
	addiu	s155,s154,%lo(window+65536)
	bne	s86,s155,$L30
	nop
$L210:
	lw	s156,%gp_rel(match_start)($28)
	nop
	addiu	s56,s156,-32768
	sw	s56,%gp_rel(match_start)($28)
	addiu	s45,s45,-32768
	sw	s45,%gp_rel(strstart)($28)
	lw	s157,%gp_rel(block_start)($28)
	nop
	addiu	s158,s157,-32768
	sw	s158,%gp_rel(block_start)($28)
	li	s159,7			# 0x7
	lui	s160,%hi(prev+65536)
	addiu	s161,s160,%lo(prev+65536)
	lhu	s162,0(s161)
	nop
	xori	s163,s162,0x8000
	sltu	s164,s162,s40
	bne	s164,$0,$L82
	nop
	move	s165,s163
$L181:
	lui	s166,%hi(prev+65536)
	addiu	s167,s166,%lo(prev+65536)
	sh	s165,0(s167)
	addiu	s168,s161,2
	beq	s159,$0,$L33
	nop
	li	s169,1			# 0x1
	beq	s159,s169,$L138
	nop
	li	s170,2			# 0x2
	beq	s159,s170,$L139
	nop
	li	s171,3			# 0x3
	beq	s159,s171,$L140
	nop
	li	s172,4			# 0x4
	beq	s159,s172,$L141
	nop
	li	s173,5			# 0x5
	beq	s159,s173,$L142
	nop
	li	s174,6			# 0x6
	beq	s159,s174,$L143
	nop
	lui	s175,%hi(prev+65536)
	addiu	s176,s175,%lo(prev+65536)
	lhu	s177,2(s176)
	nop
	xori	s178,s177,0x8000
	sltu	s179,s177,s40
	beq	s179,$0,$L182
	nop
	li	s180,0
$L183:
	lui	s181,%hi(prev+65536)
	addiu	s182,s181,%lo(prev+65536)
	sh	s180,2(s182)
	addiu	s168,s168,2
$L143:
	lhu	s183,0(s168)
	nop
	xori	s184,s183,0x8000
	sltu	s185,s183,s40
	beq	s185,$0,$L184
	nop
	li	s186,0
$L185:
	sh	s186,0(s168)
	addiu	s168,s168,2
$L142:
	lhu	s187,0(s168)
	nop
	xori	s188,s187,0x8000
	sltu	s189,s187,s40
	beq	s189,$0,$L186
	nop
	li	s190,0
$L187:
	sh	s190,0(s168)
	addiu	s168,s168,2
$L141:
	lhu	s191,0(s168)
	nop
	xori	s192,s191,0x8000
	sltu	s193,s191,s40
	beq	s193,$0,$L188
	nop
	li	s194,0
$L189:
	sh	s194,0(s168)
	addiu	s168,s168,2
$L140:
	lhu	s195,0(s168)
	nop
	xori	s196,s195,0x8000
	sltu	s197,s195,s40
	beq	s197,$0,$L190
	nop
	li	s198,0
$L191:
	sh	s198,0(s168)
	addiu	s168,s168,2
$L139:
	lhu	s199,0(s168)
	nop
	xori	s200,s199,0x8000
	sltu	s56,s199,s40
	beq	s56,$0,$L192
	nop
	li	s201,0
$L193:
	sh	s201,0(s168)
	addiu	s168,s168,2
$L138:
	lhu	s202,0(s168)
	nop
	xori	s203,s202,0x8000
	sltu	s204,s202,s40
	beq	s204,$0,$L194
	nop
	li	s205,0
$L195:
	sh	s205,0(s168)
	addiu	s168,s168,2
	bne	s168,s42,$L33
	nop
$L196:
	li	s206,7			# 0x7
	lui	s207,%hi(prev)
	addiu	s208,s207,%lo(prev)
	lhu	s209,0(s208)
	nop
	xori	s210,s209,0x8000
	sltu	s55,s209,s40
	beq	s55,$0,$L218
	nop
	li	s211,0
$L152:
	lui	s212,%hi(prev)
	addiu	s213,s212,%lo(prev)
	sh	s211,0(s213)
	addiu	s214,s208,2
	beq	s206,$0,$L36
	nop
	li	s215,1			# 0x1
	beq	s206,s215,$L131
	nop
	li	s55,2			# 0x2
	beq	s206,s55,$L132
	nop
	li	s216,3			# 0x3
	beq	s206,s216,$L133
	nop
	li	s217,4			# 0x4
	beq	s206,s217,$L134
	nop
	li	s218,5			# 0x5
	beq	s206,s218,$L135
	nop
	li	s219,6			# 0x6
	beq	s206,s219,$L136
	nop
	lui	s220,%hi(prev)
	addiu	s221,s220,%lo(prev)
	lhu	s222,2(s221)
	nop
	xori	s223,s222,0x8000
	sltu	s224,s222,s40
	beq	s224,$0,$L153
	nop
	li	s225,0
$L154:
	lui	s226,%hi(prev)
	addiu	s227,s226,%lo(prev)
	sh	s225,2(s227)
	addiu	s214,s214,2
$L136:
	lhu	s228,0(s214)
	nop
	xori	s229,s228,0x8000
	sltu	s230,s228,s40
	beq	s230,$0,$L155
	nop
	li	s231,0
$L156:
	sh	s231,0(s214)
	addiu	s214,s214,2
$L135:
	lhu	s232,0(s214)
	nop
	xori	s233,s232,0x8000
	sltu	s55,s232,s40
	beq	s55,$0,$L157
	nop
	li	s234,0
$L158:
	sh	s234,0(s214)
	addiu	s214,s214,2
$L134:
	lhu	s235,0(s214)
	nop
	xori	s236,s235,0x8000
	sltu	s237,s235,s40
	beq	s237,$0,$L159
	nop
	li	s238,0
$L160:
	sh	s238,0(s214)
	addiu	s214,s214,2
$L133:
	lhu	s239,0(s214)
	nop
	xori	s240,s239,0x8000
	sltu	s241,s239,s40
	beq	s241,$0,$L161
	nop
	li	s242,0
$L162:
	sh	s242,0(s214)
	addiu	s214,s214,2
$L132:
	lhu	s243,0(s214)
	nop
	xori	s244,s243,0x8000
	sltu	s56,s243,s40
	beq	s56,$0,$L163
	nop
	li	s245,0
$L164:
	sh	s245,0(s214)
	addiu	s214,s214,2
$L131:
	lhu	s246,0(s214)
	nop
	xori	s247,s246,0x8000
	sltu	s248,s246,s40
	beq	s248,$0,$L165
	nop
	li	s249,0
$L166:
	sh	s249,0(s214)
	addiu	s214,s214,2
	bne	s214,s12,$L36
	nop
$L167:
	addu	s48,s48,s40
	j	$L29
	nop
$L213:
	lhu	s250,0(s8)
	nop
	ori	s251,s250,0x2
	sh	s251,0(s8)
	sw	$0,%gp_rel(strstart)($28)
	sw	$0,%gp_rel(block_start)($28)
	lui	s26,%hi(window)
	addiu	s27,s26,%lo(window)
	move	s28,s27
	move	s252,s27
	li	s253,65536			# 0x10000
	lw	s254,%gp_rel(read_buf)($28)
	nop
	move	$4,s252
	move	$5,s253
	move	$6,s23
	move	$7,s19
	jalr	s254
	nop
	move	s32,$2
	sw	s32,%gp_rel(lookahead)($28)
	addiu	s255,s32,-1
	sltu	s256,s255,-2
	bne	s256,$0,$L25
	nop
$L214:
	li	s257,1			# 0x1
	sw	s257,%gp_rel(eofile)($28)
	sw	$0,%gp_rel(lookahead)($28)
	j	$L40
	nop
$L220:
	move	s259,s258
	sh	s259,0(s168)
	addiu	s260,s168,2
	lhu	s261,2(s168)
	nop
	xori	s262,s261,0x8000
	sltu	s263,s261,s40
	beq	s263,$0,$L219
	nop
$L105:
	li	s264,0
	sh	s264,0(s260)
	lhu	s265,2(s260)
	nop
	xori	s266,s265,0x8000
	sltu	s267,s265,s40
	beq	s267,$0,$L198
	nop
$L221:
	li	s268,0
	sh	s268,2(s260)
	lhu	s269,4(s260)
	nop
	xori	s270,s269,0x8000
	sltu	s271,s269,s40
	beq	s271,$0,$L200
	nop
$L222:
	li	s272,0
	sh	s272,4(s260)
	lhu	s273,6(s260)
	nop
	xori	s274,s273,0x8000
	sltu	s275,s273,s40
	beq	s275,$0,$L202
	nop
$L223:
	li	s276,0
	sh	s276,6(s260)
	lhu	s277,8(s260)
	nop
	xori	s278,s277,0x8000
	sltu	s279,s277,s40
	beq	s279,$0,$L204
	nop
$L224:
	li	s280,0
	sh	s280,8(s260)
	lhu	s281,10(s260)
	nop
	xori	s282,s281,0x8000
	sltu	s56,s281,s40
	beq	s56,$0,$L206
	nop
$L225:
	li	s283,0
	sh	s283,10(s260)
	lhu	s284,12(s260)
	nop
	xori	s285,s284,0x8000
	sltu	s286,s284,s40
	beq	s286,$0,$L208
	nop
$L226:
	li	s287,0
$L209:
	sh	s287,12(s260)
	addiu	s168,s260,14
	beq	s168,s42,$L196
	nop
$L33:
	lhu	s288,0(s168)
	nop
	xori	s258,s288,0x8000
	sltu	s289,s288,s40
	beq	s289,$0,$L220
	nop
	li	s290,0
	sh	s290,0(s168)
	addiu	s260,s168,2
	lhu	s291,2(s168)
	nop
	xori	s262,s291,0x8000
	sltu	s292,s291,s40
	bne	s292,$0,$L105
	nop
$L219:
	move	s293,s262
	sh	s293,0(s260)
	lhu	s294,2(s260)
	nop
	xori	s266,s294,0x8000
	sltu	s295,s294,s40
	bne	s295,$0,$L221
	nop
$L198:
	move	s296,s266
	sh	s296,2(s260)
	lhu	s297,4(s260)
	nop
	xori	s270,s297,0x8000
	sltu	s298,s297,s40
	bne	s298,$0,$L222
	nop
$L200:
	move	s299,s270
	sh	s299,4(s260)
	lhu	s300,6(s260)
	nop
	xori	s274,s300,0x8000
	sltu	s301,s300,s40
	bne	s301,$0,$L223
	nop
$L202:
	move	s302,s274
	sh	s302,6(s260)
	lhu	s303,8(s260)
	nop
	xori	s278,s303,0x8000
	sltu	s304,s303,s40
	bne	s304,$0,$L224
	nop
$L204:
	move	s305,s278
	sh	s305,8(s260)
	lhu	s306,10(s260)
	nop
	xori	s282,s306,0x8000
	sltu	s56,s306,s40
	bne	s56,$0,$L225
	nop
$L206:
	move	s307,s282
	sh	s307,10(s260)
	lhu	s308,12(s260)
	nop
	xori	s285,s308,0x8000
	sltu	s309,s308,s40
	bne	s309,$0,$L226
	nop
$L208:
	move	s287,s285
	j	$L209
	nop
$L82:
	li	s165,0
	j	$L181
	nop
$L228:
	move	s311,s310
	sh	s311,0(s214)
	addiu	s312,s214,2
	lhu	s313,2(s214)
	nop
	xori	s314,s313,0x8000
	sltu	s315,s313,s40
	beq	s315,$0,$L227
	nop
$L68:
	li	s316,0
	sh	s316,0(s312)
	lhu	s317,2(s312)
	nop
	xori	s318,s317,0x8000
	sltu	s319,s317,s40
	beq	s319,$0,$L169
	nop
$L229:
	li	s320,0
	sh	s320,2(s312)
	lhu	s321,4(s312)
	nop
	xori	s322,s321,0x8000
	sltu	s55,s321,s40
	beq	s55,$0,$L171
	nop
$L230:
	li	s323,0
	sh	s323,4(s312)
	lhu	s324,6(s312)
	nop
	xori	s325,s324,0x8000
	sltu	s326,s324,s40
	beq	s326,$0,$L173
	nop
$L231:
	li	s327,0
	sh	s327,6(s312)
	lhu	s328,8(s312)
	nop
	xori	s329,s328,0x8000
	sltu	s330,s328,s40
	beq	s330,$0,$L175
	nop
$L232:
	li	s331,0
	sh	s331,8(s312)
	lhu	s332,10(s312)
	nop
	xori	s333,s332,0x8000
	sltu	s56,s332,s40
	beq	s56,$0,$L177
	nop
$L233:
	li	s334,0
	sh	s334,10(s312)
	lhu	s335,12(s312)
	nop
	xori	s336,s335,0x8000
	sltu	s337,s335,s40
	beq	s337,$0,$L179
	nop
$L234:
	li	s338,0
$L180:
	sh	s338,12(s312)
	addiu	s214,s312,14
	beq	s214,s12,$L167
	nop
$L36:
	lhu	s339,0(s214)
	nop
	xori	s310,s339,0x8000
	sltu	s340,s339,s40
	beq	s340,$0,$L228
	nop
	li	s341,0
	sh	s341,0(s214)
	addiu	s312,s214,2
	lhu	s342,2(s214)
	nop
	xori	s314,s342,0x8000
	sltu	s343,s342,s40
	bne	s343,$0,$L68
	nop
$L227:
	move	s344,s314
	sh	s344,0(s312)
	lhu	s345,2(s312)
	nop
	xori	s318,s345,0x8000
	sltu	s346,s345,s40
	bne	s346,$0,$L229
	nop
$L169:
	move	s347,s318
	sh	s347,2(s312)
	lhu	s348,4(s312)
	nop
	xori	s322,s348,0x8000
	sltu	s55,s348,s40
	bne	s55,$0,$L230
	nop
$L171:
	move	s349,s322
	sh	s349,4(s312)
	lhu	s350,6(s312)
	nop
	xori	s325,s350,0x8000
	sltu	s351,s350,s40
	bne	s351,$0,$L231
	nop
$L173:
	move	s352,s325
	sh	s352,6(s312)
	lhu	s353,8(s312)
	nop
	xori	s329,s353,0x8000
	sltu	s354,s353,s40
	bne	s354,$0,$L232
	nop
$L175:
	move	s355,s329
	sh	s355,8(s312)
	lhu	s356,10(s312)
	nop
	xori	s333,s356,0x8000
	sltu	s56,s356,s40
	bne	s56,$0,$L233
	nop
$L177:
	move	s357,s333
	sh	s357,10(s312)
	lhu	s358,12(s312)
	nop
	xori	s336,s358,0x8000
	sltu	s359,s358,s40
	bne	s359,$0,$L234
	nop
$L179:
	move	s338,s336
	j	$L180
	nop
$L218:
	move	s211,s210
	j	$L152
	nop
$L153:
	move	s225,s223
	j	$L154
	nop
$L165:
	move	s249,s247
	j	$L166
	nop
$L155:
	move	s231,s229
	j	$L156
	nop
$L188:
	move	s194,s192
	j	$L189
	nop
$L186:
	move	s190,s188
	j	$L187
	nop
$L192:
	move	s201,s200
	j	$L193
	nop
$L190:
	move	s198,s196
	j	$L191
	nop
$L184:
	move	s186,s184
	j	$L185
	nop
$L182:
	move	s180,s178
	j	$L183
	nop
$L163:
	move	s245,s244
	j	$L164
	nop
$L161:
	move	s242,s240
	j	$L162
	nop
$L159:
	move	s238,s236
	j	$L160
	nop
$L157:
	move	s234,s233
	j	$L158
	nop
$L194:
	move	s205,s203
	j	$L195
	nop
$L212:
	lhu	s360,0(s8)
	nop
	ori	s361,s360,0x4
	sh	s361,0(s8)
	j	$L24
	nop
$L211:
	lui	s362,%hi($LC0)
	addiu	s363,s362,%lo($LC0)
	move	$4,s363
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	error
	nop
	j	$L22
	nop
	.set	macro
	.set	reorder
	.end	lm_init
	.size	lm_init, .-lm_init
	.align	2
	.globl	deflate
	.set	nomips16
	.ent	deflate
deflate:
	.frame	$sp,56,$31		# vars= 0, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$6
	move	s2,$7
	move	s3,$fp
	move	s4,$31
	addiu	$sp,$sp,-56
	lw	s5,%gp_rel(compr_level)($28)
	nop
	slt	s6,s5,4
	bne	s6,$0,$L236
	nop
	move	s7,$0
	li	s8,2			# 0x2
	lw	s9,%gp_rel(strstart)($28)
	lw	s10,%gp_rel(lookahead)($28)
	li	s11,32768			# 0x8000
	lui	s12,%hi(window+32768)
	addiu	s13,s12,%lo(window+32768)
	lui	s14,%hi(prev+65536)
	addiu	s15,s14,%lo(prev+65536)
	lui	s16,%hi(window)
	addiu	s17,s16,%lo(window)
	beq	s10,$0,$L697
	nop
$L311:
	lui	s18,%hi(window)
	addiu	s19,s18,%lo(window)
	addu	s20,s9,s19
	lbu	s21,2(s20)
	lw	s22,%gp_rel(ins_h)($28)
	nop
	sll	s23,s22,5
	xor	s24,s21,s23
	andi	s25,s24,0x7fff
	sw	s25,%gp_rel(ins_h)($28)
	addu	s26,s25,s11
	sll	s2,s26,1
	lui	s27,%hi(prev)
	addiu	s28,s27,%lo(prev)
	addu	s29,s28,s2
	lhu	s30,0(s29)
	andi	s31,s9,0x7fff
	sll	s32,s31,1
	lui	s33,%hi(prev)
	addiu	s34,s33,%lo(prev)
	addu	s35,s32,s34
	sh	s30,0(s35)
	sh	s9,0(s29)
	sw	s8,%gp_rel(prev_length)($28)
	lw	s36,%gp_rel(match_start)($28)
	beq	s30,$0,$L274
	nop
	lw	s37,%gp_rel(max_lazy_match)($28)
	nop
	sltu	s12,s8,s37
	beq	s12,$0,$L274
	nop
	subu	s38,s9,s30
	sltu	s39,s38,32507
	bne	s39,$0,$L698
	nop
$L274:
	li	s40,2			# 0x2
$L288:
	sltu	s41,s8,3
	bne	s41,$0,$L289
	nop
	sltu	s42,s8,s40
	beq	s42,$0,$L699
	nop
$L289:
	bne	s7,$0,$L700
	nop
	addiu	s43,s9,1
	sw	s43,%gp_rel(strstart)($28)
	addiu	s44,s10,-1
	sw	s44,%gp_rel(lookahead)($28)
	li	s7,1			# 0x1
	move	s9,s43
	move	s10,s44
$L569:
	li	s45,-1			# 0xffffffffffffffff
	li	s46,65274			# 0xfefa
	li	s47,1			# 0x1
$L576:
	sltu	s48,s10,262
	beq	s48,$0,$L309
	nop
$L703:
	lw	s2,%gp_rel(eofile)($28)
	nop
	bne	s2,$0,$L309
	nop
	lw	s49,%gp_rel(window_size)($28)
	nop
	subu	s50,s49,s10
	subu	s51,s50,s9
	beq	s51,s45,$L299
	nop
	sltu	s52,s9,s46
	beq	s52,$0,$L701
	nop
$L300:
	addu	s53,s10,s9
	lui	s54,%hi(window)
	addiu	s55,s54,%lo(window)
	addu	s56,s55,s53
	move	s57,s51
	lw	s58,%gp_rel(read_buf)($28)
	nop
	move	$4,s56
	move	$5,s57
	move	$6,s12
	move	$7,s2
	jalr	s58
	nop
	move	s59,$2
	addiu	s60,s59,-1
	sltu	s61,s60,-2
	beq	s61,$0,$L702
	nop
$L308:
	lw	s62,%gp_rel(lookahead)($28)
	nop
	addu	s10,s62,s59
	sw	s10,%gp_rel(lookahead)($28)
	lw	s9,%gp_rel(strstart)($28)
	sltu	s63,s10,262
	bne	s63,$0,$L703
	nop
$L309:
	move	s8,s40
	bne	s10,$0,$L311
	nop
$L697:
	bne	s7,$0,$L704
	nop
$L312:
	lw	s64,%gp_rel(block_start)($28)
	nop
	bltz	s64,$L705
	nop
	lui	s65,%hi(window)
	addiu	s66,s65,%lo(window)
	addu	s67,s66,s64
$L314:
	subu	s68,s9,s64
	li	s69,1			# 0x1
	addiu	$sp,$sp,56
	j	flush_block
	nop
$L699:
	addiu	s70,s9,-1
	subu	s71,s70,s36
	addiu	s72,s8,-3
	move	$4,s71
	move	$5,s72
	move	$6,s12
	move	$7,s2
	jal	ct_tally
	nop
	move	s73,$2
	move	s74,s73
	lw	s75,%gp_rel(prev_length)($28)
	lw	s76,%gp_rel(lookahead)($28)
	nop
	addiu	s77,s76,1
	subu	s10,s77,s75
	sw	s10,%gp_rel(lookahead)($28)
	addiu	s78,s75,-2
	lw	s79,%gp_rel(strstart)($28)
	nop
	addiu	s80,s79,1
	addiu	s81,s79,3
	lui	s82,%hi(window)
	addiu	s83,s82,%lo(window)
	addu	s84,s83,s81
	addiu	s85,s75,-3
	andi	s86,s85,0x3
	lw	s87,%gp_rel(ins_h)($28)
	nop
	sll	s88,s87,5
	lbu	s89,0(s84)
	nop
	xor	s90,s88,s89
	andi	s12,s90,0x7fff
	addu	s91,s12,s11
	sll	s92,s91,1
	lui	s93,%hi(prev)
	addiu	s94,s93,%lo(prev)
	addu	s95,s94,s92
	andi	s96,s80,0x7fff
	sll	s97,s96,1
	lui	s98,%hi(prev)
	addiu	s99,s98,%lo(prev)
	addu	s100,s97,s99
	lhu	s101,0(s95)
	nop
	sh	s101,0(s100)
	sh	s80,0(s95)
	addiu	s2,s79,2
	addiu	s102,s75,-3
	addiu	s103,s84,1
	beq	s102,$0,$L568
	nop
	beq	s86,$0,$L290
	nop
	li	s104,1			# 0x1
	beq	s86,s104,$L558
	nop
	li	s105,2			# 0x2
	beq	s86,s105,$L559
	nop
	sll	s106,s12,5
	lbu	s107,1(s84)
	nop
	xor	s108,s106,s107
	andi	s12,s108,0x7fff
	addu	s109,s12,s11
	sll	s110,s109,1
	lui	s111,%hi(prev)
	addiu	s112,s111,%lo(prev)
	addu	s113,s112,s110
	andi	s114,s2,0x7fff
	sll	s115,s114,1
	lui	s116,%hi(prev)
	addiu	s117,s116,%lo(prev)
	addu	s118,s115,s117
	lhu	s119,0(s113)
	nop
	sh	s119,0(s118)
	sh	s2,0(s113)
	addiu	s2,s79,3
	addiu	s102,s75,-4
	addiu	s103,s84,2
$L559:
	sll	s120,s12,5
	lbu	s121,0(s103)
	nop
	xor	s122,s120,s121
	andi	s12,s122,0x7fff
	addu	s123,s12,s11
	sll	s124,s123,1
	lui	s125,%hi(prev)
	addiu	s126,s125,%lo(prev)
	addu	s127,s126,s124
	andi	s128,s2,0x7fff
	sll	s129,s128,1
	lui	s130,%hi(prev)
	addiu	s131,s130,%lo(prev)
	addu	s132,s129,s131
	lhu	s133,0(s127)
	nop
	sh	s133,0(s132)
	sh	s2,0(s127)
	addiu	s2,s2,1
	addiu	s102,s102,-1
	addiu	s103,s103,1
$L558:
	sll	s134,s12,5
	lbu	s135,0(s103)
	nop
	xor	s136,s134,s135
	andi	s12,s136,0x7fff
	addu	s137,s12,s11
	sll	s138,s137,1
	lui	s139,%hi(prev)
	addiu	s140,s139,%lo(prev)
	addu	s141,s140,s138
	andi	s142,s2,0x7fff
	sll	s143,s142,1
	lui	s144,%hi(prev)
	addiu	s145,s144,%lo(prev)
	addu	s146,s143,s145
	lhu	s147,0(s141)
	nop
	sh	s147,0(s146)
	sh	s2,0(s141)
	addiu	s2,s2,1
	addiu	s102,s102,-1
	addiu	s103,s103,1
	beq	s102,$0,$L568
	nop
$L290:
	sll	s148,s12,5
	lbu	s149,0(s103)
	nop
	xor	s150,s148,s149
	andi	s151,s150,0x7fff
	addu	s152,s151,s11
	sll	s153,s152,1
	lui	s154,%hi(prev)
	addiu	s155,s154,%lo(prev)
	addu	s156,s155,s153
	andi	s157,s2,0x7fff
	sll	s158,s157,1
	addu	s159,s158,s155
	lhu	s160,0(s156)
	nop
	sh	s160,0(s159)
	sh	s2,0(s156)
	addiu	s161,s2,1
	sll	s162,s151,5
	lbu	s163,1(s103)
	nop
	xor	s164,s162,s163
	andi	s165,s164,0x7fff
	addu	s166,s165,s11
	sll	s167,s166,1
	lui	s168,%hi(prev)
	addiu	s169,s168,%lo(prev)
	addu	s170,s169,s167
	andi	s171,s161,0x7fff
	sll	s172,s171,1
	lui	s173,%hi(prev)
	addiu	s174,s173,%lo(prev)
	addu	s175,s172,s174
	lhu	s176,0(s170)
	nop
	sh	s176,0(s175)
	sh	s161,0(s170)
	addiu	s177,s2,2
	sll	s178,s165,5
	lbu	s179,2(s103)
	nop
	xor	s180,s178,s179
	andi	s181,s180,0x7fff
	addu	s182,s181,s11
	sll	s183,s182,1
	lui	s184,%hi(prev)
	addiu	s185,s184,%lo(prev)
	addu	s186,s185,s183
	andi	s187,s177,0x7fff
	sll	s188,s187,1
	lui	s189,%hi(prev)
	addiu	s190,s189,%lo(prev)
	addu	s191,s188,s190
	lhu	s192,0(s186)
	nop
	sh	s192,0(s191)
	sh	s177,0(s186)
	addiu	s193,s2,3
	sll	s194,s181,5
	lbu	s195,3(s103)
	nop
	xor	s196,s194,s195
	andi	s12,s196,0x7fff
	addu	s197,s12,s11
	sll	s198,s197,1
	lui	s199,%hi(prev)
	addiu	s200,s199,%lo(prev)
	addu	s201,s200,s198
	andi	s202,s193,0x7fff
	sll	s203,s202,1
	lui	s204,%hi(prev)
	addiu	s205,s204,%lo(prev)
	addu	s206,s203,s205
	lhu	s207,0(s201)
	nop
	sh	s207,0(s206)
	sh	s193,0(s201)
	addiu	s2,s2,4
	addiu	s102,s102,-4
	addiu	s103,s103,4
	bne	s102,$0,$L290
	nop
$L568:
	sw	$0,%gp_rel(prev_length)($28)
	sw	s12,%gp_rel(ins_h)($28)
	addu	s208,s78,s79
	addiu	s209,s208,1
	sw	s209,%gp_rel(strstart)($28)
	beq	s74,$0,$L706
	nop
	lw	s210,%gp_rel(block_start)($28)
	nop
	bltz	s210,$L707
	nop
	lui	s211,%hi(window)
	addiu	s212,s211,%lo(window)
	addu	s213,s212,s210
$L294:
	subu	s214,s209,s210
	move	s215,$0
	move	$4,s213
	move	$5,s214
	move	$6,s215
	move	$7,s2
	jal	flush_block
	nop
	lw	s9,%gp_rel(strstart)($28)
	nop
	sw	s9,%gp_rel(block_start)($28)
	move	s7,$0
	li	s40,2			# 0x2
	lw	s10,%gp_rel(lookahead)($28)
	j	$L569
	nop
$L698:
	lw	s216,%gp_rel(max_chain_length)($28)
	move	s217,s20
	sltu	s218,s9,32507
	beq	s218,$0,$L275
	nop
	move	s219,$0
$L276:
	addiu	s220,s9,258
	lui	s221,%hi(window)
	addiu	s222,s221,%lo(window)
	addu	s223,s222,s220
	addu	s224,s20,s8
	lbu	s2,-1(s224)
	lbu	s225,0(s224)
	lw	s226,%gp_rel(good_match)($28)
	nop
	sltu	s227,s8,s226
	bne	s227,$0,$L277
	nop
	srl	s216,s216,2
$L277:
	move	s228,s8
	lw	s229,%gp_rel(nice_match)($28)
	li	s230,258			# 0x102
	subu	s231,s230,s223
	addiu	s232,s223,-258
	j	$L286
	nop
$L708:
	move	s233,s228
	move	s234,s2
	move	s235,s225
$L279:
	andi	s236,s30,0x7fff
	sll	s237,s236,1
	lui	s238,%hi(prev)
	addiu	s239,s238,%lo(prev)
	addu	s240,s237,s239
	lhu	s30,0(s240)
	nop
	sltu	s12,s219,s30
	beq	s12,$0,$L285
	nop
$L709:
	addiu	s216,s216,-1
	beq	s216,$0,$L285
	nop
	move	s228,s233
	move	s2,s234
	move	s225,s235
$L286:
	lui	s241,%hi(window)
	addiu	s242,s241,%lo(window)
	addu	s243,s242,s30
	addu	s244,s243,s228
	lbu	s235,0(s244)
	nop
	bne	s235,s225,$L708
	nop
	lbu	s234,-1(s244)
	nop
	beq	s234,s2,$L280
	nop
	move	s233,s228
	move	s234,s2
	andi	s245,s30,0x7fff
	sll	s246,s245,1
	lui	s247,%hi(prev)
	addiu	s248,s247,%lo(prev)
	addu	s249,s246,s248
	lhu	s30,0(s249)
	nop
	sltu	s12,s219,s30
	bne	s12,$0,$L709
	nop
$L285:
	move	s40,s233
	sltu	s250,s10,s233
	beq	s250,$0,$L287
	nop
	move	s40,s10
$L287:
	li	s251,3			# 0x3
	bne	s40,s251,$L288
	nop
	lw	s252,%gp_rel(match_start)($28)
	nop
	subu	s253,s9,s252
	sltu	s254,s253,4097
	bne	s254,$0,$L288
	nop
	j	$L274
	nop
$L299:
	li	s255,-2			# 0xfffffffffffffffe
	addu	s256,s10,s9
	lui	s257,%hi(window)
	addiu	s258,s257,%lo(window)
	addu	s259,s258,s256
	move	s260,s255
	lw	s261,%gp_rel(read_buf)($28)
	nop
	move	$4,s259
	move	$5,s260
	move	$6,s12
	move	$7,s2
	jalr	s261
	nop
	move	s59,$2
	addiu	s262,s59,-1
	sltu	s263,s262,-2
	bne	s263,$0,$L308
	nop
$L702:
	sw	s47,%gp_rel(eofile)($28)
	lw	s9,%gp_rel(strstart)($28)
	lw	s10,%gp_rel(lookahead)($28)
	j	$L576
	nop
$L701:
	lui	s264,%hi(window+65536)
	addiu	s265,s264,%lo(window+65536)
	subu	s266,s265,s13
	addiu	s267,s266,-16
	srl	s268,s267,4
	andi	s269,s268,0x3
	lwl	s270,0(s13)
	nop
	lwr	s271,3(s13)
	lwl	s272,4(s13)
	nop
	lwr	s273,7(s13)
	lwl	s274,8(s13)
	nop
	lwr	s275,11(s13)
	lwl	s276,12(s13)
	nop
	lwr	s277,15(s13)
	swl	s271,0(s17)
	swr	s271,3(s17)
	swl	s273,4(s17)
	swr	s273,7(s17)
	swl	s275,8(s17)
	swr	s275,11(s17)
	swl	s277,12(s17)
	swr	s277,15(s17)
	addiu	s278,s13,16
	addiu	s279,s17,16
	beq	s269,$0,$L301
	nop
	li	s280,1			# 0x1
	beq	s269,s280,$L556
	nop
	li	s281,2			# 0x2
	beq	s269,s281,$L557
	nop
	lwl	s282,0(s278)
	nop
	lwr	s283,3(s278)
	lwl	s284,4(s278)
	nop
	lwr	s285,7(s278)
	lwl	s286,8(s278)
	nop
	lwr	s287,11(s278)
	lwl	s288,12(s278)
	nop
	lwr	s289,15(s278)
	swl	s283,0(s279)
	swr	s283,3(s279)
	swl	s285,4(s279)
	swr	s285,7(s279)
	swl	s287,8(s279)
	swr	s287,11(s279)
	swl	s289,12(s279)
	swr	s289,15(s279)
	addiu	s278,s13,32
	addiu	s279,s17,32
$L557:
	lwl	s290,0(s278)
	nop
	lwr	s291,3(s278)
	lwl	s292,4(s278)
	nop
	lwr	s293,7(s278)
	lwl	s294,8(s278)
	nop
	lwr	s295,11(s278)
	lwl	s296,12(s278)
	nop
	lwr	s297,15(s278)
	swl	s291,0(s279)
	swr	s291,3(s279)
	swl	s293,4(s279)
	swr	s293,7(s279)
	swl	s295,8(s279)
	swr	s295,11(s279)
	swl	s297,12(s279)
	swr	s297,15(s279)
	addiu	s278,s278,16
	addiu	s279,s279,16
$L556:
	lwl	s298,0(s278)
	nop
	lwr	s299,3(s278)
	lwl	s300,4(s278)
	nop
	lwr	s301,7(s278)
	lwl	s302,8(s278)
	nop
	lwr	s303,11(s278)
	lwl	s304,12(s278)
	nop
	lwr	s305,15(s278)
	swl	s299,0(s279)
	swr	s299,3(s279)
	swl	s301,4(s279)
	swr	s301,7(s279)
	swl	s303,8(s279)
	swr	s303,11(s279)
	swl	s305,12(s279)
	swr	s305,15(s279)
	addiu	s278,s278,16
	addiu	s279,s279,16
	lui	s306,%hi(window+65536)
	addiu	s307,s306,%lo(window+65536)
	beq	s278,s307,$L694
	nop
$L301:
	lwl	s308,0(s278)
	nop
	lwr	s309,3(s278)
	lwl	s310,4(s278)
	nop
	lwr	s311,7(s278)
	lwl	s312,8(s278)
	nop
	lwr	s313,11(s278)
	lwl	s314,12(s278)
	nop
	lwr	s315,15(s278)
	swl	s309,0(s279)
	swr	s309,3(s279)
	swl	s311,4(s279)
	swr	s311,7(s279)
	swl	s313,8(s279)
	swr	s313,11(s279)
	swl	s315,12(s279)
	swr	s315,15(s279)
	addiu	s316,s278,16
	addiu	s317,s279,16
	lwl	s318,0(s316)
	nop
	lwr	s319,3(s316)
	lwl	s320,4(s316)
	nop
	lwr	s321,7(s316)
	lwl	s322,8(s316)
	nop
	lwr	s323,11(s316)
	lwl	s324,12(s316)
	nop
	lwr	s325,15(s316)
	swl	s319,0(s317)
	swr	s319,3(s317)
	swl	s321,4(s317)
	swr	s321,7(s317)
	swl	s323,8(s317)
	swr	s323,11(s317)
	swl	s325,12(s317)
	swr	s325,15(s317)
	addiu	s326,s278,32
	addiu	s327,s279,32
	lwl	s328,0(s326)
	nop
	lwr	s329,3(s326)
	lwl	s330,4(s326)
	nop
	lwr	s331,7(s326)
	lwl	s332,8(s326)
	nop
	lwr	s333,11(s326)
	lwl	s334,12(s326)
	nop
	lwr	s335,15(s326)
	swl	s329,0(s327)
	swr	s329,3(s327)
	swl	s331,4(s327)
	swr	s331,7(s327)
	swl	s333,8(s327)
	swr	s333,11(s327)
	swl	s335,12(s327)
	swr	s335,15(s327)
	addiu	s336,s278,48
	addiu	s337,s279,48
	lwl	s338,0(s336)
	nop
	lwr	s339,3(s336)
	lwl	s340,4(s336)
	nop
	lwr	s341,7(s336)
	lwl	s342,8(s336)
	nop
	lwr	s343,11(s336)
	lwl	s344,12(s336)
	nop
	lwr	s345,15(s336)
	swl	s339,0(s337)
	swr	s339,3(s337)
	swl	s341,4(s337)
	swr	s341,7(s337)
	swl	s343,8(s337)
	swr	s343,11(s337)
	swl	s345,12(s337)
	swr	s345,15(s337)
	addiu	s278,s278,64
	addiu	s279,s279,64
	lui	s346,%hi(window+65536)
	addiu	s347,s346,%lo(window+65536)
	bne	s278,s347,$L301
	nop
$L694:
	lw	s348,%gp_rel(match_start)($28)
	nop
	addiu	s349,s348,-32768
	sw	s349,%gp_rel(match_start)($28)
	addiu	s9,s9,-32768
	sw	s9,%gp_rel(strstart)($28)
	lw	s350,%gp_rel(block_start)($28)
	nop
	addiu	s351,s350,-32768
	sw	s351,%gp_rel(block_start)($28)
	li	s352,7			# 0x7
	lui	s353,%hi(prev+65536)
	addiu	s354,s353,%lo(prev+65536)
	lhu	s355,0(s354)
	nop
	xori	s356,s355,0x8000
	sltu	s357,s355,s11
	beq	s357,$0,$L710
	nop
	li	s358,0
$L665:
	lui	s359,%hi(prev+65536)
	addiu	s360,s359,%lo(prev+65536)
	sh	s358,0(s360)
	addiu	s361,s354,2
	beq	s352,$0,$L304
	nop
	li	s362,1			# 0x1
	beq	s352,s362,$L550
	nop
	li	s363,2			# 0x2
	beq	s352,s363,$L551
	nop
	li	s364,3			# 0x3
	beq	s352,s364,$L552
	nop
	li	s365,4			# 0x4
	beq	s352,s365,$L553
	nop
	li	s366,5			# 0x5
	beq	s352,s366,$L554
	nop
	li	s367,6			# 0x6
	beq	s352,s367,$L555
	nop
	lui	s368,%hi(prev+65536)
	addiu	s369,s368,%lo(prev+65536)
	lhu	s370,2(s369)
	nop
	xori	s371,s370,0x8000
	sltu	s372,s370,s11
	beq	s372,$0,$L666
	nop
	li	s373,0
$L667:
	lui	s374,%hi(prev+65536)
	addiu	s375,s374,%lo(prev+65536)
	sh	s373,2(s375)
	addiu	s361,s361,2
$L555:
	lhu	s376,0(s361)
	nop
	xori	s377,s376,0x8000
	sltu	s378,s376,s11
	beq	s378,$0,$L668
	nop
	li	s379,0
$L669:
	sh	s379,0(s361)
	addiu	s361,s361,2
$L554:
	lhu	s380,0(s361)
	nop
	xori	s381,s380,0x8000
	sltu	s382,s380,s11
	beq	s382,$0,$L670
	nop
	li	s383,0
$L671:
	sh	s383,0(s361)
	addiu	s361,s361,2
$L553:
	lhu	s384,0(s361)
	nop
	xori	s385,s384,0x8000
	sltu	s386,s384,s11
	beq	s386,$0,$L672
	nop
	li	s387,0
$L673:
	sh	s387,0(s361)
	addiu	s361,s361,2
$L552:
	lhu	s388,0(s361)
	nop
	xori	s389,s388,0x8000
	sltu	s390,s388,s11
	beq	s390,$0,$L674
	nop
	li	s391,0
$L675:
	sh	s391,0(s361)
	addiu	s361,s361,2
$L551:
	lhu	s392,0(s361)
	nop
	xori	s393,s392,0x8000
	sltu	s394,s392,s11
	beq	s394,$0,$L676
	nop
	li	s395,0
$L677:
	sh	s395,0(s361)
	addiu	s361,s361,2
$L550:
	lhu	s396,0(s361)
	nop
	xori	s397,s396,0x8000
	sltu	s398,s396,s11
	beq	s398,$0,$L678
	nop
	li	s399,0
$L679:
	sh	s399,0(s361)
	addiu	s361,s361,2
	lui	s400,%hi(prev+131072)
	addiu	s401,s400,%lo(prev+131072)
	bne	s361,s401,$L304
	nop
$L680:
	li	s402,7			# 0x7
	lui	s403,%hi(prev)
	addiu	s404,s403,%lo(prev)
	lhu	s405,0(s404)
	nop
	xori	s406,s405,0x8000
	sltu	s407,s405,s11
	beq	s407,$0,$L711
	nop
	li	s408,0
$L636:
	lui	s409,%hi(prev)
	addiu	s410,s409,%lo(prev)
	sh	s408,0(s410)
	addiu	s411,s404,2
	beq	s402,$0,$L307
	nop
	li	s412,1			# 0x1
	beq	s402,s412,$L543
	nop
	li	s413,2			# 0x2
	beq	s402,s413,$L544
	nop
	li	s414,3			# 0x3
	beq	s402,s414,$L545
	nop
	li	s415,4			# 0x4
	beq	s402,s415,$L546
	nop
	li	s416,5			# 0x5
	beq	s402,s416,$L547
	nop
	li	s417,6			# 0x6
	beq	s402,s417,$L548
	nop
	lui	s418,%hi(prev)
	addiu	s419,s418,%lo(prev)
	lhu	s420,2(s419)
	nop
	xori	s421,s420,0x8000
	sltu	s422,s420,s11
	beq	s422,$0,$L637
	nop
	li	s423,0
$L638:
	lui	s424,%hi(prev)
	addiu	s425,s424,%lo(prev)
	sh	s423,2(s425)
	addiu	s411,s411,2
$L548:
	lhu	s426,0(s411)
	nop
	xori	s427,s426,0x8000
	sltu	s428,s426,s11
	beq	s428,$0,$L639
	nop
	li	s429,0
$L640:
	sh	s429,0(s411)
	addiu	s411,s411,2
$L547:
	lhu	s430,0(s411)
	nop
	xori	s431,s430,0x8000
	sltu	s432,s430,s11
	beq	s432,$0,$L641
	nop
	li	s433,0
$L642:
	sh	s433,0(s411)
	addiu	s411,s411,2
$L546:
	lhu	s434,0(s411)
	nop
	xori	s435,s434,0x8000
	sltu	s436,s434,s11
	beq	s436,$0,$L643
	nop
	li	s437,0
$L644:
	sh	s437,0(s411)
	addiu	s411,s411,2
$L545:
	lhu	s438,0(s411)
	nop
	xori	s439,s438,0x8000
	sltu	s440,s438,s11
	beq	s440,$0,$L645
	nop
	li	s441,0
$L646:
	sh	s441,0(s411)
	addiu	s411,s411,2
$L544:
	lhu	s442,0(s411)
	nop
	xori	s443,s442,0x8000
	sltu	s444,s442,s11
	beq	s444,$0,$L647
	nop
	li	s445,0
$L648:
	sh	s445,0(s411)
	addiu	s411,s411,2
$L543:
	lhu	s2,0(s411)
	nop
	xori	s446,s2,0x8000
	sltu	s12,s2,s11
	beq	s12,$0,$L649
	nop
	li	s447,0
$L650:
	sh	s447,0(s411)
	addiu	s411,s411,2
	bne	s411,s15,$L307
	nop
$L651:
	addu	s51,s51,s11
	j	$L300
	nop
$L713:
	move	s449,s448
	sh	s449,0(s361)
	addiu	s450,s361,2
	lhu	s451,2(s361)
	nop
	xori	s452,s451,0x8000
	sltu	s453,s451,s11
	beq	s453,$0,$L712
	nop
$L485:
	li	s454,0
	sh	s454,0(s450)
	lhu	s455,2(s450)
	nop
	xori	s456,s455,0x8000
	sltu	s457,s455,s11
	beq	s457,$0,$L682
	nop
$L714:
	li	s458,0
	sh	s458,2(s450)
	lhu	s459,4(s450)
	nop
	xori	s460,s459,0x8000
	sltu	s461,s459,s11
	beq	s461,$0,$L684
	nop
$L715:
	li	s462,0
	sh	s462,4(s450)
	lhu	s463,6(s450)
	nop
	xori	s464,s463,0x8000
	sltu	s465,s463,s11
	beq	s465,$0,$L686
	nop
$L716:
	li	s466,0
	sh	s466,6(s450)
	lhu	s467,8(s450)
	nop
	xori	s468,s467,0x8000
	sltu	s469,s467,s11
	beq	s469,$0,$L688
	nop
$L717:
	li	s470,0
	sh	s470,8(s450)
	lhu	s471,10(s450)
	nop
	xori	s472,s471,0x8000
	sltu	s473,s471,s11
	beq	s473,$0,$L690
	nop
$L718:
	li	s474,0
	sh	s474,10(s450)
	lhu	s475,12(s450)
	nop
	xori	s476,s475,0x8000
	sltu	s477,s475,s11
	beq	s477,$0,$L692
	nop
$L719:
	li	s478,0
$L693:
	sh	s478,12(s450)
	addiu	s361,s450,14
	lui	s479,%hi(prev+131072)
	addiu	s480,s479,%lo(prev+131072)
	beq	s361,s480,$L680
	nop
$L304:
	lhu	s481,0(s361)
	nop
	xori	s448,s481,0x8000
	sltu	s482,s481,s11
	beq	s482,$0,$L713
	nop
	li	s483,0
	sh	s483,0(s361)
	addiu	s450,s361,2
	lhu	s484,2(s361)
	nop
	xori	s452,s484,0x8000
	sltu	s485,s484,s11
	bne	s485,$0,$L485
	nop
$L712:
	move	s486,s452
	sh	s486,0(s450)
	lhu	s487,2(s450)
	nop
	xori	s456,s487,0x8000
	sltu	s488,s487,s11
	bne	s488,$0,$L714
	nop
$L682:
	move	s489,s456
	sh	s489,2(s450)
	lhu	s490,4(s450)
	nop
	xori	s460,s490,0x8000
	sltu	s491,s490,s11
	bne	s491,$0,$L715
	nop
$L684:
	move	s492,s460
	sh	s492,4(s450)
	lhu	s493,6(s450)
	nop
	xori	s464,s493,0x8000
	sltu	s494,s493,s11
	bne	s494,$0,$L716
	nop
$L686:
	move	s495,s464
	sh	s495,6(s450)
	lhu	s496,8(s450)
	nop
	xori	s468,s496,0x8000
	sltu	s497,s496,s11
	bne	s497,$0,$L717
	nop
$L688:
	move	s498,s468
	sh	s498,8(s450)
	lhu	s499,10(s450)
	nop
	xori	s472,s499,0x8000
	sltu	s500,s499,s11
	bne	s500,$0,$L718
	nop
$L690:
	move	s501,s472
	sh	s501,10(s450)
	lhu	s502,12(s450)
	nop
	xori	s476,s502,0x8000
	sltu	s503,s502,s11
	bne	s503,$0,$L719
	nop
$L692:
	move	s478,s476
	j	$L693
	nop
$L721:
	move	s505,s504
	sh	s505,0(s411)
	addiu	s506,s411,2
	lhu	s507,2(s411)
	nop
	xori	s508,s507,0x8000
	sltu	s509,s507,s11
	beq	s509,$0,$L720
	nop
$L448:
	li	s510,0
	sh	s510,0(s506)
	lhu	s511,2(s506)
	nop
	xori	s512,s511,0x8000
	sltu	s513,s511,s11
	beq	s513,$0,$L653
	nop
$L722:
	li	s514,0
	sh	s514,2(s506)
	lhu	s515,4(s506)
	nop
	xori	s516,s515,0x8000
	sltu	s517,s515,s11
	beq	s517,$0,$L655
	nop
$L723:
	li	s518,0
	sh	s518,4(s506)
	lhu	s519,6(s506)
	nop
	xori	s520,s519,0x8000
	sltu	s521,s519,s11
	beq	s521,$0,$L657
	nop
$L724:
	li	s522,0
	sh	s522,6(s506)
	lhu	s523,8(s506)
	nop
	xori	s524,s523,0x8000
	sltu	s525,s523,s11
	beq	s525,$0,$L659
	nop
$L725:
	li	s526,0
	sh	s526,8(s506)
	lhu	s527,10(s506)
	nop
	xori	s528,s527,0x8000
	sltu	s529,s527,s11
	beq	s529,$0,$L661
	nop
$L726:
	li	s530,0
	sh	s530,10(s506)
	lhu	s2,12(s506)
	nop
	xori	s531,s2,0x8000
	sltu	s12,s2,s11
	beq	s12,$0,$L663
	nop
$L727:
	li	s532,0
$L664:
	sh	s532,12(s506)
	addiu	s411,s506,14
	beq	s411,s15,$L651
	nop
$L307:
	lhu	s533,0(s411)
	nop
	xori	s504,s533,0x8000
	sltu	s534,s533,s11
	beq	s534,$0,$L721
	nop
	li	s535,0
	sh	s535,0(s411)
	addiu	s506,s411,2
	lhu	s536,2(s411)
	nop
	xori	s508,s536,0x8000
	sltu	s537,s536,s11
	bne	s537,$0,$L448
	nop
$L720:
	move	s538,s508
	sh	s538,0(s506)
	lhu	s539,2(s506)
	nop
	xori	s512,s539,0x8000
	sltu	s540,s539,s11
	bne	s540,$0,$L722
	nop
$L653:
	move	s541,s512
	sh	s541,2(s506)
	lhu	s542,4(s506)
	nop
	xori	s516,s542,0x8000
	sltu	s543,s542,s11
	bne	s543,$0,$L723
	nop
$L655:
	move	s544,s516
	sh	s544,4(s506)
	lhu	s545,6(s506)
	nop
	xori	s520,s545,0x8000
	sltu	s546,s545,s11
	bne	s546,$0,$L724
	nop
$L657:
	move	s547,s520
	sh	s547,6(s506)
	lhu	s548,8(s506)
	nop
	xori	s524,s548,0x8000
	sltu	s549,s548,s11
	bne	s549,$0,$L725
	nop
$L659:
	move	s550,s524
	sh	s550,8(s506)
	lhu	s551,10(s506)
	nop
	xori	s528,s551,0x8000
	sltu	s552,s551,s11
	bne	s552,$0,$L726
	nop
$L661:
	move	s553,s528
	sh	s553,10(s506)
	lhu	s2,12(s506)
	nop
	xori	s531,s2,0x8000
	sltu	s12,s2,s11
	bne	s12,$0,$L727
	nop
$L663:
	move	s532,s531
	j	$L664
	nop
$L711:
	move	s408,s406
	j	$L636
	nop
$L710:
	move	s358,s356
	j	$L665
	nop
$L666:
	move	s373,s371
	j	$L667
	nop
$L678:
	move	s399,s397
	j	$L679
	nop
$L668:
	move	s379,s377
	j	$L669
	nop
$L647:
	move	s445,s443
	j	$L648
	nop
$L645:
	move	s441,s439
	j	$L646
	nop
$L643:
	move	s437,s435
	j	$L644
	nop
$L641:
	move	s433,s431
	j	$L642
	nop
$L637:
	move	s423,s421
	j	$L638
	nop
$L649:
	move	s447,s446
	j	$L650
	nop
$L639:
	move	s429,s427
	j	$L640
	nop
$L676:
	move	s395,s393
	j	$L677
	nop
$L674:
	move	s391,s389
	j	$L675
	nop
$L672:
	move	s387,s385
	j	$L673
	nop
$L670:
	move	s383,s381
	j	$L671
	nop
$L700:
	lui	s554,%hi(window)
	addiu	s555,s554,%lo(window)
	addu	s556,s9,s555
	move	s557,$0
	lbu	s558,-1(s556)
	move	$4,s557
	move	$5,s558
	move	$6,s12
	move	$7,s556
	jal	ct_tally
	nop
	move	s559,$2
	bne	s559,$0,$L570
	nop
	lw	s560,%gp_rel(strstart)($28)
	nop
$L296:
	addiu	s9,s560,1
	sw	s9,%gp_rel(strstart)($28)
	lw	s561,%gp_rel(lookahead)($28)
	nop
	addiu	s10,s561,-1
	sw	s10,%gp_rel(lookahead)($28)
	j	$L569
	nop
$L570:
	lw	s562,%gp_rel(block_start)($28)
	nop
	bltz	s562,$L728
	nop
	lui	s563,%hi(window)
	addiu	s564,s563,%lo(window)
	addu	s565,s564,s562
$L298:
	lw	s566,%gp_rel(strstart)($28)
	nop
	subu	s567,s566,s562
	move	s568,$0
	move	$4,s565
	move	$5,s567
	move	$6,s568
	jal	flush_block
	nop
	lw	s560,%gp_rel(strstart)($28)
	nop
	sw	s560,%gp_rel(block_start)($28)
	j	$L296
	nop
$L706:
	move	s7,$0
	li	s40,2			# 0x2
	move	s9,s209
	j	$L569
	nop
$L275:
	addiu	s219,s9,-32506
	j	$L276
	nop
$L707:
	move	s213,$0
	j	$L294
	nop
$L728:
	move	s565,$0
	j	$L298
	nop
$L236:
	li	s569,2			# 0x2
	sw	s569,%gp_rel(prev_length)($28)
	move	s570,$0
	lw	s9,%gp_rel(strstart)($28)
	lw	s571,%gp_rel(lookahead)($28)
	lui	s572,%hi(window)
	addiu	s573,s572,%lo(window)
	li	s574,32768			# 0x8000
	lui	s575,%hi(prev)
	addiu	s576,s575,%lo(prev)
	lui	s577,%hi(window+32768)
	addiu	s578,s577,%lo(window+32768)
	move	s579,s573
$L560:
	move	s580,s571
	beq	s571,$0,$L312
	nop
	addu	s581,s9,s573
	lbu	s582,2(s581)
	lw	s583,%gp_rel(ins_h)($28)
	nop
	sll	s584,s583,5
	xor	s585,s582,s584
	andi	s586,s585,0x7fff
	sw	s586,%gp_rel(ins_h)($28)
	addu	s587,s586,s574
	sll	s588,s587,1
	addu	s589,s576,s588
	lhu	s590,0(s589)
	andi	s591,s9,0x7fff
	sll	s592,s591,1
	addu	s593,s592,s576
	sh	s590,0(s593)
	sh	s9,0(s589)
	beq	s590,$0,$L239
	nop
	subu	s594,s9,s590
	sltu	s1,s594,32507
	bne	s1,$0,$L729
	nop
$L239:
	move	s580,s570
$L252:
	sltu	s595,s580,3
	bne	s595,$0,$L253
	nop
$L737:
	lw	s596,%gp_rel(match_start)($28)
	nop
	subu	s597,s9,s596
	addiu	s598,s580,-3
	move	$4,s597
	move	$5,s598
	move	$6,s1
	move	$7,s575
	jal	ct_tally
	nop
	move	s599,$2
	move	s600,s599
	lw	s601,%gp_rel(lookahead)($28)
	nop
	subu	s571,s601,s580
	sw	s571,%gp_rel(lookahead)($28)
	lw	s602,%gp_rel(max_lazy_match)($28)
	nop
	sltu	s603,s602,s580
	bne	s603,$0,$L254
	nop
	lw	s604,%gp_rel(strstart)($28)
	nop
	addiu	s605,s604,1
	addiu	s606,s604,3
	addu	s607,s573,s606
	addiu	s608,s580,-2
	andi	s609,s608,0x3
	lw	s610,%gp_rel(ins_h)($28)
	nop
	sll	s611,s610,5
	lbu	s612,0(s607)
	nop
	xor	s613,s611,s612
	andi	s1,s613,0x7fff
	addu	s614,s1,s574
	sll	s615,s614,1
	addu	s616,s576,s615
	andi	s617,s605,0x7fff
	sll	s618,s617,1
	addu	s619,s618,s576
	lhu	s620,0(s616)
	nop
	sh	s620,0(s619)
	sh	s605,0(s616)
	addiu	s570,s580,-2
	addiu	s621,s604,2
	addiu	s622,s607,1
	beq	s570,$0,$L561
	nop
	beq	s609,$0,$L255
	nop
	li	s623,1			# 0x1
	beq	s609,s623,$L540
	nop
	li	s624,2			# 0x2
	beq	s609,s624,$L541
	nop
	sll	s625,s1,5
	lbu	s626,1(s607)
	nop
	xor	s627,s625,s626
	andi	s1,s627,0x7fff
	addu	s628,s1,s574
	sll	s629,s628,1
	addu	s630,s576,s629
	andi	s631,s621,0x7fff
	sll	s632,s631,1
	addu	s633,s632,s576
	lhu	s634,0(s630)
	nop
	sh	s634,0(s633)
	sh	s621,0(s630)
	addiu	s570,s580,-3
	addiu	s621,s604,3
	addiu	s622,s607,2
$L541:
	sll	s635,s1,5
	lbu	s636,0(s622)
	nop
	xor	s637,s635,s636
	andi	s1,s637,0x7fff
	addu	s638,s1,s574
	sll	s639,s638,1
	addu	s640,s576,s639
	andi	s641,s621,0x7fff
	sll	s642,s641,1
	addu	s643,s642,s576
	lhu	s644,0(s640)
	nop
	sh	s644,0(s643)
	sh	s621,0(s640)
	addiu	s570,s570,-1
	addiu	s621,s621,1
	addiu	s622,s622,1
$L540:
	sll	s645,s1,5
	lbu	s646,0(s622)
	nop
	xor	s647,s645,s646
	andi	s1,s647,0x7fff
	addu	s648,s1,s574
	sll	s649,s648,1
	addu	s650,s576,s649
	andi	s651,s621,0x7fff
	sll	s652,s651,1
	addu	s653,s652,s576
	lhu	s654,0(s650)
	nop
	sh	s654,0(s653)
	sh	s621,0(s650)
	addiu	s570,s570,-1
	addiu	s621,s621,1
	addiu	s622,s622,1
	beq	s570,$0,$L561
	nop
$L255:
	sll	s655,s1,5
	lbu	s656,0(s622)
	nop
	xor	s657,s655,s656
	andi	s658,s657,0x7fff
	addu	s659,s658,s574
	sll	s660,s659,1
	addu	s661,s576,s660
	andi	s662,s621,0x7fff
	sll	s663,s662,1
	addu	s664,s663,s576
	lhu	s665,0(s661)
	nop
	sh	s665,0(s664)
	sh	s621,0(s661)
	addiu	s666,s621,1
	sll	s667,s658,5
	lbu	s668,1(s622)
	nop
	xor	s669,s667,s668
	andi	s670,s669,0x7fff
	addu	s671,s670,s574
	sll	s672,s671,1
	addu	s673,s576,s672
	andi	s674,s666,0x7fff
	sll	s675,s674,1
	addu	s676,s675,s576
	lhu	s677,0(s673)
	nop
	sh	s677,0(s676)
	sh	s666,0(s673)
	addiu	s678,s621,2
	sll	s679,s670,5
	lbu	s680,2(s622)
	nop
	xor	s681,s679,s680
	andi	s682,s681,0x7fff
	addu	s683,s682,s574
	sll	s684,s683,1
	addu	s685,s576,s684
	andi	s686,s678,0x7fff
	sll	s687,s686,1
	addu	s688,s687,s576
	lhu	s689,0(s685)
	nop
	sh	s689,0(s688)
	sh	s678,0(s685)
	addiu	s690,s621,3
	sll	s691,s682,5
	lbu	s692,3(s622)
	nop
	xor	s693,s691,s692
	andi	s1,s693,0x7fff
	addu	s694,s1,s574
	sll	s695,s694,1
	addu	s696,s576,s695
	andi	s697,s690,0x7fff
	sll	s698,s697,1
	addu	s699,s698,s576
	lhu	s700,0(s696)
	nop
	sh	s700,0(s699)
	sh	s690,0(s696)
	addiu	s570,s570,-4
	addiu	s621,s621,4
	addiu	s622,s622,4
	bne	s570,$0,$L255
	nop
$L561:
	sw	s1,%gp_rel(ins_h)($28)
	addu	s575,s580,s604
	sw	s575,%gp_rel(strstart)($28)
	move	s9,s575
$L256:
	beq	s600,$0,$L320
	nop
	lw	s701,%gp_rel(block_start)($28)
	nop
	bltz	s701,$L730
	nop
	addu	s702,s573,s701
$L259:
	subu	s703,s9,s701
	move	s704,$0
	move	$4,s702
	move	$5,s703
	move	$6,s704
	move	$7,s575
	jal	flush_block
	nop
	lw	s9,%gp_rel(strstart)($28)
	nop
	sw	s9,%gp_rel(block_start)($28)
	lw	s571,%gp_rel(lookahead)($28)
$L320:
	li	s705,-1			# 0xffffffffffffffff
	li	s706,65274			# 0xfefa
	li	s707,1			# 0x1
$L567:
	sltu	s708,s571,262
	beq	s708,$0,$L560
	nop
$L733:
	lw	s1,%gp_rel(eofile)($28)
	nop
	bne	s1,$0,$L560
	nop
	lw	s709,%gp_rel(window_size)($28)
	nop
	subu	s710,s709,s571
	subu	s711,s710,s9
	beq	s711,s705,$L260
	nop
	sltu	s712,s9,s706
	beq	s712,$0,$L731
	nop
$L261:
	addu	s713,s571,s9
	addu	s714,s573,s713
	move	s715,s711
	lw	s716,%gp_rel(read_buf)($28)
	nop
	move	$4,s714
	move	$5,s715
	move	$6,s709
	move	$7,s575
	jalr	s716
	nop
	move	s717,$2
	addiu	s718,s717,-1
	sltu	s719,s718,-2
	beq	s719,$0,$L732
	nop
$L269:
	lw	s720,%gp_rel(lookahead)($28)
	nop
	addu	s571,s720,s717
	sw	s571,%gp_rel(lookahead)($28)
	lw	s9,%gp_rel(strstart)($28)
	sltu	s721,s571,262
	bne	s721,$0,$L733
	nop
	j	$L560
	nop
$L729:
	lw	s722,%gp_rel(max_chain_length)($28)
	move	s723,s581
	lw	s724,%gp_rel(prev_length)($28)
	sltu	s725,s9,32507
	bne	s725,$0,$L734
	nop
	addiu	s726,s9,-32506
$L241:
	addiu	s727,s9,258
	addu	s728,s573,s727
	addu	s729,s581,s724
	lbu	s1,-1(s729)
	lbu	s730,0(s729)
	lw	s731,%gp_rel(good_match)($28)
	nop
	sltu	s732,s724,s731
	bne	s732,$0,$L242
	nop
	srl	s722,s722,2
$L242:
	move	s575,s724
	lw	s733,%gp_rel(nice_match)($28)
	li	s734,258			# 0x102
	subu	s735,s734,s728
	addiu	s736,s728,-258
	j	$L251
	nop
$L735:
	move	s737,s575
	move	s738,s1
	move	s739,s730
$L244:
	andi	s740,s590,0x7fff
	sll	s741,s740,1
	addu	s742,s741,s576
	lhu	s590,0(s742)
	nop
	sltu	s743,s726,s590
	beq	s743,$0,$L250
	nop
$L736:
	addiu	s722,s722,-1
	beq	s722,$0,$L250
	nop
	move	s575,s737
	move	s1,s738
	move	s730,s739
$L251:
	addu	s744,s573,s590
	addu	s745,s744,s575
	lbu	s739,0(s745)
	nop
	bne	s739,s730,$L735
	nop
	lbu	s738,-1(s745)
	nop
	beq	s738,s1,$L245
	nop
	move	s737,s575
	move	s738,s1
	andi	s746,s590,0x7fff
	sll	s747,s746,1
	addu	s748,s747,s576
	lhu	s590,0(s748)
	nop
	sltu	s749,s726,s590
	bne	s749,$0,$L736
	nop
$L250:
	sltu	s750,s571,s737
	bne	s750,$0,$L252
	nop
	move	s580,s737
	sltu	s751,s580,3
	beq	s751,$0,$L737
	nop
$L253:
	addu	s752,s9,s573
	move	s753,$0
	lbu	s754,0(s752)
	move	$4,s753
	move	$5,s754
	move	$6,s1
	move	$7,s575
	jal	ct_tally
	nop
	move	s755,$2
	move	s600,s755
	lw	s756,%gp_rel(lookahead)($28)
	nop
	addiu	s571,s756,-1
	sw	s571,%gp_rel(lookahead)($28)
	lw	s757,%gp_rel(strstart)($28)
	nop
	addiu	s9,s757,1
	sw	s9,%gp_rel(strstart)($28)
	move	s570,s580
	j	$L256
	nop
$L260:
	li	s758,-2			# 0xfffffffffffffffe
	addu	s759,s571,s9
	addu	s760,s573,s759
	move	s761,s758
	lw	s762,%gp_rel(read_buf)($28)
	nop
	move	$4,s760
	move	$5,s761
	move	$6,s709
	move	$7,s575
	jalr	s762
	nop
	move	s717,$2
	addiu	s763,s717,-1
	sltu	s764,s763,-2
	bne	s764,$0,$L269
	nop
$L732:
	sw	s707,%gp_rel(eofile)($28)
	lw	s9,%gp_rel(strstart)($28)
	lw	s571,%gp_rel(lookahead)($28)
	j	$L567
	nop
$L731:
	lui	s765,%hi(window+65536)
	addiu	s766,s765,%lo(window+65536)
	subu	s767,s766,s578
	addiu	s768,s767,-16
	srl	s769,s768,4
	andi	s770,s769,0x3
	lwl	s771,0(s578)
	nop
	lwr	s772,3(s578)
	lwl	s773,4(s578)
	nop
	lwr	s774,7(s578)
	lwl	s775,8(s578)
	nop
	lwr	s776,11(s578)
	lwl	s777,12(s578)
	nop
	lwr	s778,15(s578)
	swl	s772,0(s579)
	swr	s772,3(s579)
	swl	s774,4(s579)
	swr	s774,7(s579)
	swl	s776,8(s579)
	swr	s776,11(s579)
	swl	s778,12(s579)
	swr	s778,15(s579)
	addiu	s779,s578,16
	addiu	s780,s579,16
	beq	s770,$0,$L262
	nop
	li	s781,1			# 0x1
	beq	s770,s781,$L538
	nop
	li	s782,2			# 0x2
	beq	s770,s782,$L539
	nop
	lwl	s783,0(s779)
	nop
	lwr	s784,3(s779)
	lwl	s785,4(s779)
	nop
	lwr	s786,7(s779)
	lwl	s787,8(s779)
	nop
	lwr	s788,11(s779)
	lwl	s789,12(s779)
	nop
	lwr	s790,15(s779)
	swl	s784,0(s780)
	swr	s784,3(s780)
	swl	s786,4(s780)
	swr	s786,7(s780)
	swl	s788,8(s780)
	swr	s788,11(s780)
	swl	s790,12(s780)
	swr	s790,15(s780)
	addiu	s779,s578,32
	addiu	s780,s579,32
$L539:
	lwl	s791,0(s779)
	nop
	lwr	s792,3(s779)
	lwl	s793,4(s779)
	nop
	lwr	s794,7(s779)
	lwl	s795,8(s779)
	nop
	lwr	s796,11(s779)
	lwl	s797,12(s779)
	nop
	lwr	s798,15(s779)
	swl	s792,0(s780)
	swr	s792,3(s780)
	swl	s794,4(s780)
	swr	s794,7(s780)
	swl	s796,8(s780)
	swr	s796,11(s780)
	swl	s798,12(s780)
	swr	s798,15(s780)
	addiu	s779,s779,16
	addiu	s780,s780,16
$L538:
	lwl	s799,0(s779)
	nop
	lwr	s800,3(s779)
	lwl	s801,4(s779)
	nop
	lwr	s802,7(s779)
	lwl	s803,8(s779)
	nop
	lwr	s804,11(s779)
	lwl	s805,12(s779)
	nop
	lwr	s806,15(s779)
	swl	s800,0(s780)
	swr	s800,3(s780)
	swl	s802,4(s780)
	swr	s802,7(s780)
	swl	s804,8(s780)
	swr	s804,11(s780)
	swl	s806,12(s780)
	swr	s806,15(s780)
	addiu	s779,s779,16
	addiu	s780,s780,16
	lui	s807,%hi(window+65536)
	addiu	s808,s807,%lo(window+65536)
	beq	s779,s808,$L635
	nop
$L262:
	lwl	s809,0(s779)
	nop
	lwr	s810,3(s779)
	lwl	s811,4(s779)
	nop
	lwr	s812,7(s779)
	lwl	s813,8(s779)
	nop
	lwr	s814,11(s779)
	lwl	s815,12(s779)
	nop
	lwr	s816,15(s779)
	swl	s810,0(s780)
	swr	s810,3(s780)
	swl	s812,4(s780)
	swr	s812,7(s780)
	swl	s814,8(s780)
	swr	s814,11(s780)
	swl	s816,12(s780)
	swr	s816,15(s780)
	addiu	s817,s779,16
	addiu	s818,s780,16
	lwl	s819,0(s817)
	nop
	lwr	s820,3(s817)
	lwl	s821,4(s817)
	nop
	lwr	s822,7(s817)
	lwl	s823,8(s817)
	nop
	lwr	s824,11(s817)
	lwl	s825,12(s817)
	nop
	lwr	s826,15(s817)
	swl	s820,0(s818)
	swr	s820,3(s818)
	swl	s822,4(s818)
	swr	s822,7(s818)
	swl	s824,8(s818)
	swr	s824,11(s818)
	swl	s826,12(s818)
	swr	s826,15(s818)
	addiu	s827,s779,32
	addiu	s828,s780,32
	lwl	s829,0(s827)
	nop
	lwr	s830,3(s827)
	lwl	s831,4(s827)
	nop
	lwr	s832,7(s827)
	lwl	s833,8(s827)
	nop
	lwr	s834,11(s827)
	lwl	s835,12(s827)
	nop
	lwr	s836,15(s827)
	swl	s830,0(s828)
	swr	s830,3(s828)
	swl	s832,4(s828)
	swr	s832,7(s828)
	swl	s834,8(s828)
	swr	s834,11(s828)
	swl	s836,12(s828)
	swr	s836,15(s828)
	addiu	s837,s779,48
	addiu	s838,s780,48
	lwl	s839,0(s837)
	nop
	lwr	s840,3(s837)
	lwl	s841,4(s837)
	nop
	lwr	s842,7(s837)
	lwl	s843,8(s837)
	nop
	lwr	s844,11(s837)
	lwl	s845,12(s837)
	nop
	lwr	s846,15(s837)
	swl	s840,0(s838)
	swr	s840,3(s838)
	swl	s842,4(s838)
	swr	s842,7(s838)
	swl	s844,8(s838)
	swr	s844,11(s838)
	swl	s846,12(s838)
	swr	s846,15(s838)
	addiu	s779,s779,64
	addiu	s780,s780,64
	lui	s847,%hi(window+65536)
	addiu	s848,s847,%lo(window+65536)
	bne	s779,s848,$L262
	nop
$L635:
	lw	s849,%gp_rel(match_start)($28)
	nop
	addiu	s850,s849,-32768
	sw	s850,%gp_rel(match_start)($28)
	addiu	s9,s9,-32768
	sw	s9,%gp_rel(strstart)($28)
	lw	s851,%gp_rel(block_start)($28)
	nop
	addiu	s852,s851,-32768
	sw	s852,%gp_rel(block_start)($28)
	li	s853,7			# 0x7
	lui	s854,%hi(prev+65536)
	addiu	s855,s854,%lo(prev+65536)
	lhu	s856,0(s855)
	nop
	xori	s857,s856,0x8000
	sltu	s858,s856,s574
	beq	s858,$0,$L738
	nop
	li	s859,0
$L606:
	lui	s860,%hi(prev+65536)
	addiu	s861,s860,%lo(prev+65536)
	sh	s859,0(s861)
	addiu	s862,s855,2
	beq	s853,$0,$L265
	nop
	li	s863,1			# 0x1
	beq	s853,s863,$L532
	nop
	li	s864,2			# 0x2
	beq	s853,s864,$L533
	nop
	li	s865,3			# 0x3
	beq	s853,s865,$L534
	nop
	li	s866,4			# 0x4
	beq	s853,s866,$L535
	nop
	li	s867,5			# 0x5
	beq	s853,s867,$L536
	nop
	li	s868,6			# 0x6
	beq	s853,s868,$L537
	nop
	lui	s869,%hi(prev+65536)
	addiu	s870,s869,%lo(prev+65536)
	lhu	s871,2(s870)
	nop
	xori	s872,s871,0x8000
	sltu	s873,s871,s574
	beq	s873,$0,$L607
	nop
	li	s874,0
$L608:
	lui	s875,%hi(prev+65536)
	addiu	s876,s875,%lo(prev+65536)
	sh	s874,2(s876)
	addiu	s862,s862,2
$L537:
	lhu	s877,0(s862)
	nop
	xori	s878,s877,0x8000
	sltu	s879,s877,s574
	beq	s879,$0,$L609
	nop
	li	s880,0
$L610:
	sh	s880,0(s862)
	addiu	s862,s862,2
$L536:
	lhu	s881,0(s862)
	nop
	xori	s882,s881,0x8000
	sltu	s883,s881,s574
	beq	s883,$0,$L611
	nop
	li	s884,0
$L612:
	sh	s884,0(s862)
	addiu	s862,s862,2
$L535:
	lhu	s885,0(s862)
	nop
	xori	s886,s885,0x8000
	sltu	s887,s885,s574
	beq	s887,$0,$L613
	nop
	li	s888,0
$L614:
	sh	s888,0(s862)
	addiu	s862,s862,2
$L534:
	lhu	s889,0(s862)
	nop
	xori	s890,s889,0x8000
	sltu	s891,s889,s574
	beq	s891,$0,$L615
	nop
	li	s892,0
$L616:
	sh	s892,0(s862)
	addiu	s862,s862,2
$L533:
	lhu	s893,0(s862)
	nop
	xori	s894,s893,0x8000
	sltu	s895,s893,s574
	beq	s895,$0,$L617
	nop
	li	s896,0
$L618:
	sh	s896,0(s862)
	addiu	s862,s862,2
$L532:
	lhu	s897,0(s862)
	nop
	xori	s898,s897,0x8000
	sltu	s899,s897,s574
	beq	s899,$0,$L619
	nop
	li	s900,0
$L620:
	sh	s900,0(s862)
	addiu	s862,s862,2
	lui	s901,%hi(prev+131072)
	addiu	s902,s901,%lo(prev+131072)
	bne	s862,s902,$L265
	nop
$L621:
	li	s903,7			# 0x7
	lui	s904,%hi(prev)
	addiu	s905,s904,%lo(prev)
	lhu	s906,0(s905)
	nop
	xori	s907,s906,0x8000
	sltu	s908,s906,s574
	beq	s908,$0,$L739
	nop
	li	s909,0
$L577:
	lui	s910,%hi(prev)
	addiu	s911,s910,%lo(prev)
	sh	s909,0(s911)
	addiu	s912,s905,2
	beq	s903,$0,$L268
	nop
	li	s709,1			# 0x1
	beq	s903,s709,$L525
	nop
	li	s913,2			# 0x2
	beq	s903,s913,$L526
	nop
	li	s914,3			# 0x3
	beq	s903,s914,$L527
	nop
	li	s915,4			# 0x4
	beq	s903,s915,$L528
	nop
	li	s916,5			# 0x5
	beq	s903,s916,$L529
	nop
	li	s917,6			# 0x6
	beq	s903,s917,$L530
	nop
	lui	s918,%hi(prev)
	addiu	s919,s918,%lo(prev)
	lhu	s920,2(s919)
	nop
	xori	s921,s920,0x8000
	sltu	s922,s920,s574
	beq	s922,$0,$L578
	nop
	li	s923,0
$L579:
	lui	s924,%hi(prev)
	addiu	s925,s924,%lo(prev)
	sh	s923,2(s925)
	addiu	s912,s912,2
$L530:
	lhu	s709,0(s912)
	nop
	xori	s926,s709,0x8000
	sltu	s927,s709,s574
	beq	s927,$0,$L580
	nop
	li	s928,0
$L581:
	sh	s928,0(s912)
	addiu	s912,s912,2
$L529:
	lhu	s929,0(s912)
	nop
	xori	s930,s929,0x8000
	sltu	s931,s929,s574
	beq	s931,$0,$L582
	nop
	li	s932,0
$L583:
	sh	s932,0(s912)
	addiu	s912,s912,2
$L528:
	lhu	s933,0(s912)
	nop
	xori	s934,s933,0x8000
	sltu	s935,s933,s574
	beq	s935,$0,$L584
	nop
	li	s936,0
$L585:
	sh	s936,0(s912)
	addiu	s912,s912,2
$L527:
	lhu	s937,0(s912)
	nop
	xori	s938,s937,0x8000
	sltu	s939,s937,s574
	beq	s939,$0,$L586
	nop
	li	s940,0
$L587:
	sh	s940,0(s912)
	addiu	s912,s912,2
$L526:
	lhu	s941,0(s912)
	nop
	xori	s942,s941,0x8000
	sltu	s943,s941,s574
	beq	s943,$0,$L588
	nop
	li	s944,0
$L589:
	sh	s944,0(s912)
	addiu	s912,s912,2
$L525:
	lhu	s945,0(s912)
	nop
	xori	s946,s945,0x8000
	sltu	s575,s945,s574
	beq	s575,$0,$L590
	nop
	li	s947,0
$L591:
	sh	s947,0(s912)
	addiu	s912,s912,2
	lui	s948,%hi(prev+65536)
	addiu	s949,s948,%lo(prev+65536)
	bne	s912,s949,$L268
	nop
$L592:
	addu	s711,s711,s574
	j	$L261
	nop
$L741:
	move	s951,s950
	sh	s951,0(s862)
	addiu	s952,s862,2
	lhu	s953,2(s862)
	nop
	xori	s954,s953,0x8000
	sltu	s955,s953,s574
	beq	s955,$0,$L740
	nop
$L391:
	li	s956,0
	sh	s956,0(s952)
	lhu	s957,2(s952)
	nop
	xori	s958,s957,0x8000
	sltu	s959,s957,s574
	beq	s959,$0,$L623
	nop
$L742:
	li	s960,0
	sh	s960,2(s952)
	lhu	s961,4(s952)
	nop
	xori	s962,s961,0x8000
	sltu	s963,s961,s574
	beq	s963,$0,$L625
	nop
$L743:
	li	s964,0
	sh	s964,4(s952)
	lhu	s965,6(s952)
	nop
	xori	s966,s965,0x8000
	sltu	s967,s965,s574
	beq	s967,$0,$L627
	nop
$L744:
	li	s968,0
	sh	s968,6(s952)
	lhu	s969,8(s952)
	nop
	xori	s970,s969,0x8000
	sltu	s971,s969,s574
	beq	s971,$0,$L629
	nop
$L745:
	li	s972,0
	sh	s972,8(s952)
	lhu	s973,10(s952)
	nop
	xori	s974,s973,0x8000
	sltu	s975,s973,s574
	beq	s975,$0,$L631
	nop
$L746:
	li	s976,0
	sh	s976,10(s952)
	lhu	s977,12(s952)
	nop
	xori	s978,s977,0x8000
	sltu	s979,s977,s574
	beq	s979,$0,$L633
	nop
$L747:
	li	s980,0
$L634:
	sh	s980,12(s952)
	addiu	s862,s952,14
	lui	s981,%hi(prev+131072)
	addiu	s982,s981,%lo(prev+131072)
	beq	s862,s982,$L621
	nop
$L265:
	lhu	s983,0(s862)
	nop
	xori	s950,s983,0x8000
	sltu	s984,s983,s574
	beq	s984,$0,$L741
	nop
	li	s985,0
	sh	s985,0(s862)
	addiu	s952,s862,2
	lhu	s986,2(s862)
	nop
	xori	s954,s986,0x8000
	sltu	s987,s986,s574
	bne	s987,$0,$L391
	nop
$L740:
	move	s988,s954
	sh	s988,0(s952)
	lhu	s989,2(s952)
	nop
	xori	s958,s989,0x8000
	sltu	s990,s989,s574
	bne	s990,$0,$L742
	nop
$L623:
	move	s991,s958
	sh	s991,2(s952)
	lhu	s992,4(s952)
	nop
	xori	s962,s992,0x8000
	sltu	s993,s992,s574
	bne	s993,$0,$L743
	nop
$L625:
	move	s994,s962
	sh	s994,4(s952)
	lhu	s995,6(s952)
	nop
	xori	s966,s995,0x8000
	sltu	s996,s995,s574
	bne	s996,$0,$L744
	nop
$L627:
	move	s997,s966
	sh	s997,6(s952)
	lhu	s998,8(s952)
	nop
	xori	s970,s998,0x8000
	sltu	s999,s998,s574
	bne	s999,$0,$L745
	nop
$L629:
	move	s1000,s970
	sh	s1000,8(s952)
	lhu	s1001,10(s952)
	nop
	xori	s974,s1001,0x8000
	sltu	s1002,s1001,s574
	bne	s1002,$0,$L746
	nop
$L631:
	move	s1003,s974
	sh	s1003,10(s952)
	lhu	s1004,12(s952)
	nop
	xori	s978,s1004,0x8000
	sltu	s1005,s1004,s574
	bne	s1005,$0,$L747
	nop
$L633:
	move	s980,s978
	j	$L634
	nop
$L749:
	move	s1007,s1006
	sh	s1007,0(s912)
	addiu	s1008,s912,2
	lhu	s1009,2(s912)
	nop
	xori	s1010,s1009,0x8000
	sltu	s1011,s1009,s574
	beq	s1011,$0,$L748
	nop
$L354:
	li	s1012,0
	sh	s1012,0(s1008)
	lhu	s1013,2(s1008)
	nop
	xori	s1014,s1013,0x8000
	sltu	s1015,s1013,s574
	beq	s1015,$0,$L594
	nop
$L750:
	li	s1016,0
	sh	s1016,2(s1008)
	lhu	s1017,4(s1008)
	nop
	xori	s1018,s1017,0x8000
	sltu	s1019,s1017,s574
	beq	s1019,$0,$L596
	nop
$L751:
	li	s1020,0
	sh	s1020,4(s1008)
	lhu	s1021,6(s1008)
	nop
	xori	s1022,s1021,0x8000
	sltu	s1023,s1021,s574
	beq	s1023,$0,$L598
	nop
$L752:
	li	s1024,0
	sh	s1024,6(s1008)
	lhu	s1025,8(s1008)
	nop
	xori	s1026,s1025,0x8000
	sltu	s1027,s1025,s574
	beq	s1027,$0,$L600
	nop
$L753:
	li	s1028,0
	sh	s1028,8(s1008)
	lhu	s575,10(s1008)
	nop
	xori	s1029,s575,0x8000
	sltu	s1030,s575,s574
	beq	s1030,$0,$L602
	nop
$L754:
	li	s1031,0
	sh	s1031,10(s1008)
	lhu	s1032,12(s1008)
	nop
	xori	s1033,s1032,0x8000
	sltu	s1034,s1032,s574
	beq	s1034,$0,$L604
	nop
$L755:
	li	s1035,0
$L605:
	sh	s1035,12(s1008)
	addiu	s912,s1008,14
	lui	s709,%hi(prev+65536)
	addiu	s1036,s709,%lo(prev+65536)
	beq	s912,s1036,$L592
	nop
$L268:
	lhu	s1037,0(s912)
	nop
	xori	s1006,s1037,0x8000
	sltu	s1038,s1037,s574
	beq	s1038,$0,$L749
	nop
	li	s1039,0
	sh	s1039,0(s912)
	addiu	s1008,s912,2
	lhu	s1040,2(s912)
	nop
	xori	s1010,s1040,0x8000
	sltu	s1041,s1040,s574
	bne	s1041,$0,$L354
	nop
$L748:
	move	s1042,s1010
	sh	s1042,0(s1008)
	lhu	s1043,2(s1008)
	nop
	xori	s1014,s1043,0x8000
	sltu	s1044,s1043,s574
	bne	s1044,$0,$L750
	nop
$L594:
	move	s1045,s1014
	sh	s1045,2(s1008)
	lhu	s1046,4(s1008)
	nop
	xori	s1018,s1046,0x8000
	sltu	s1047,s1046,s574
	bne	s1047,$0,$L751
	nop
$L596:
	move	s1048,s1018
	sh	s1048,4(s1008)
	lhu	s1049,6(s1008)
	nop
	xori	s1022,s1049,0x8000
	sltu	s1050,s1049,s574
	bne	s1050,$0,$L752
	nop
$L598:
	move	s1051,s1022
	sh	s1051,6(s1008)
	lhu	s1052,8(s1008)
	nop
	xori	s1026,s1052,0x8000
	sltu	s1053,s1052,s574
	bne	s1053,$0,$L753
	nop
$L600:
	move	s1054,s1026
	sh	s1054,8(s1008)
	lhu	s575,10(s1008)
	nop
	xori	s1029,s575,0x8000
	sltu	s1055,s575,s574
	bne	s1055,$0,$L754
	nop
$L602:
	move	s1056,s1029
	sh	s1056,10(s1008)
	lhu	s1057,12(s1008)
	nop
	xori	s1033,s1057,0x8000
	sltu	s1058,s1057,s574
	bne	s1058,$0,$L755
	nop
$L604:
	move	s1035,s1033
	j	$L605
	nop
$L588:
	move	s944,s942
	j	$L589
	nop
$L586:
	move	s940,s938
	j	$L587
	nop
$L584:
	move	s936,s934
	j	$L585
	nop
$L582:
	move	s932,s930
	j	$L583
	nop
$L739:
	move	s909,s907
	j	$L577
	nop
$L578:
	move	s923,s921
	j	$L579
	nop
$L609:
	move	s880,s878
	j	$L610
	nop
$L619:
	move	s900,s898
	j	$L620
	nop
$L580:
	move	s928,s926
	j	$L581
	nop
$L590:
	move	s947,s946
	j	$L591
	nop
$L738:
	move	s859,s857
	j	$L606
	nop
$L607:
	move	s874,s872
	j	$L608
	nop
$L617:
	move	s896,s894
	j	$L618
	nop
$L615:
	move	s892,s890
	j	$L616
	nop
$L613:
	move	s888,s886
	j	$L614
	nop
$L611:
	move	s884,s882
	j	$L612
	nop
$L254:
	lw	s1059,%gp_rel(strstart)($28)
	nop
	addu	s9,s580,s1059
	sw	s9,%gp_rel(strstart)($28)
	addu	s1060,s9,s573
	lbu	s1061,0(s1060)
	lbu	s1062,1(s1060)
	sll	s1063,s1061,5
	xor	s1064,s1062,s1063
	sw	s1064,%gp_rel(ins_h)($28)
	move	s570,$0
	j	$L256
	nop
$L730:
	move	s702,$0
	j	$L259
	nop
$L734:
	move	s726,$0
	j	$L241
	nop
$L705:
	move	s1065,$0
	j	$L314
	nop
$L280:
	lbu	s2,0(s243)
	lbu	s1066,0(s217)
	nop
	beq	s2,s1066,$L756
	nop
$L281:
	move	s233,s228
	j	$L279
	nop
$L756:
	lbu	s1067,1(s243)
	lbu	s1068,1(s217)
	nop
	bne	s1067,s1068,$L281
	nop
	addiu	s1069,s217,2
	addiu	s2,s243,2
	j	$L284
	nop
$L757:
	addiu	s12,s1069,2
	lbu	s1070,2(s1069)
	lbu	s1071,2(s2)
	nop
	bne	s1070,s1071,$L282
	nop
	addiu	s12,s1069,3
	lbu	s1072,3(s1069)
	lbu	s1073,3(s2)
	nop
	bne	s1072,s1073,$L282
	nop
	addiu	s12,s1069,4
	lbu	s1074,4(s1069)
	lbu	s1075,4(s2)
	nop
	bne	s1074,s1075,$L282
	nop
	addiu	s12,s1069,5
	lbu	s1076,5(s1069)
	lbu	s1077,5(s2)
	nop
	bne	s1076,s1077,$L282
	nop
	addiu	s12,s1069,6
	lbu	s1078,6(s1069)
	lbu	s1079,6(s2)
	nop
	bne	s1078,s1079,$L282
	nop
	addiu	s12,s1069,7
	lbu	s1080,7(s1069)
	lbu	s1081,7(s2)
	nop
	bne	s1080,s1081,$L282
	nop
	addiu	s1069,s1069,8
	addiu	s2,s2,8
	lbu	s1082,0(s1069)
	lbu	s1083,0(s2)
	nop
	bne	s1082,s1083,$L283
	nop
	sltu	s1084,s1069,s223
	beq	s1084,$0,$L283
	nop
$L284:
	addiu	s12,s1069,1
	lbu	s1085,1(s1069)
	lbu	s1086,1(s2)
	nop
	beq	s1085,s1086,$L757
	nop
	j	$L282
	nop
$L245:
	lbu	s1087,0(s744)
	lbu	s1088,0(s723)
	nop
	beq	s1087,s1088,$L758
	nop
$L246:
	move	s737,s575
	j	$L244
	nop
$L704:
	lui	s1089,%hi(window)
	addiu	s1090,s1089,%lo(window)
	addu	s1091,s1090,s9
	move	s1092,$0
	lbu	s1093,-1(s1091)
	move	$4,s1092
	move	$5,s1093
	move	$6,s12
	move	$7,s2
	jal	ct_tally
	nop
	lw	s9,%gp_rel(strstart)($28)
	j	$L312
	nop
$L758:
	lbu	s1094,1(s744)
	lbu	s1095,1(s723)
	nop
	bne	s1094,s1095,$L246
	nop
	addiu	s1096,s723,2
	addiu	s1097,s744,2
$L249:
	addiu	s1098,s1096,1
	lbu	s1099,1(s1096)
	lbu	s1100,1(s1097)
	nop
	bne	s1099,s1100,$L247
	nop
	addiu	s1098,s1096,2
	lbu	s1101,2(s1096)
	lbu	s1102,2(s1097)
	nop
	bne	s1101,s1102,$L247
	nop
	addiu	s1098,s1096,3
	lbu	s1103,3(s1096)
	lbu	s1104,3(s1097)
	nop
	bne	s1103,s1104,$L247
	nop
	addiu	s1098,s1096,4
	lbu	s1105,4(s1096)
	lbu	s1106,4(s1097)
	nop
	bne	s1105,s1106,$L247
	nop
	addiu	s1098,s1096,5
	lbu	s1107,5(s1096)
	lbu	s1108,5(s1097)
	nop
	bne	s1107,s1108,$L247
	nop
	addiu	s1098,s1096,6
	lbu	s1109,6(s1096)
	lbu	s1110,6(s1097)
	nop
	bne	s1109,s1110,$L247
	nop
	addiu	s1098,s1096,7
	lbu	s1111,7(s1096)
	lbu	s1112,7(s1097)
	nop
	bne	s1111,s1112,$L247
	nop
	addiu	s1096,s1096,8
	addiu	s1097,s1097,8
	lbu	s1113,0(s1096)
	lbu	s1114,0(s1097)
	nop
	bne	s1113,s1114,$L248
	nop
	sltu	s1115,s1096,s728
	bne	s1115,$0,$L249
	nop
$L248:
	move	s1098,s1096
$L247:
	addu	s737,s1098,s735
	move	s723,s736
	slt	s1,s575,s737
	beq	s1,$0,$L246
	nop
	sw	s590,%gp_rel(match_start)($28)
	slt	s575,s737,s733
	beq	s575,$0,$L250
	nop
	addu	s1116,s736,s737
	lbu	s738,-1(s1116)
	lbu	s739,0(s1116)
	j	$L244
	nop
$L283:
	move	s12,s1069
$L282:
	addu	s233,s12,s231
	move	s217,s232
	slt	s1117,s228,s233
	beq	s1117,$0,$L281
	nop
	sw	s30,%gp_rel(match_start)($28)
	slt	s1118,s233,s229
	beq	s1118,$0,$L285
	nop
	addu	s2,s232,s233
	lbu	s234,-1(s2)
	lbu	s235,0(s2)
	j	$L279
	nop
	.set	macro
	.set	reorder
	.end	deflate
	.size	deflate, .-deflate
	.globl	window_size
	.section	.sdata,"aw",@progbits
	.align	2
	.type	window_size, @object
	.size	window_size, 4
window_size:
	.word	65536
	.rdata
	.align	2
	.type	configuration_table, @object
	.size	configuration_table, 80
configuration_table:
	.half	0
	.half	0
	.half	0
	.half	0
	.half	4
	.half	4
	.half	8
	.half	4
	.half	4
	.half	5
	.half	16
	.half	8
	.half	4
	.half	6
	.half	32
	.half	32
	.half	4
	.half	4
	.half	16
	.half	16
	.half	8
	.half	16
	.half	32
	.half	32
	.half	8
	.half	16
	.half	128
	.half	128
	.half	8
	.half	32
	.half	128
	.half	256
	.half	32
	.half	128
	.half	258
	.half	1024
	.half	32
	.half	258
	.half	258
	.half	4096
	.local	ins_h
	.comm	ins_h,4,4
	.local	eofile
	.comm	eofile,4,4
	.local	lookahead
	.comm	lookahead,4,4
	.local	max_lazy_match
	.comm	max_lazy_match,4,4
	.local	compr_level
	.comm	compr_level,4,4
	.comm	block_start,4,4
	.comm	prev_length,4,4
	.comm	strstart,4,4
	.comm	match_start,4,4
	.comm	max_chain_length,4,4
	.comm	good_match,4,4
	.comm	nice_match,4,4
	.ident	"GCC: (GNU) 4.3.0"
