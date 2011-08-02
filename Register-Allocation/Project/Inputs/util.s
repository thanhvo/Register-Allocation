	.file	1 "util.c"
	.section .mdebug.abi32
	.previous
	.text
	.align	2
	.globl	updcrc
	.set	nomips16
	.ent	updcrc
updcrc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$5
	move	s3,$31
	move	s4,s1
	beq	s1,$0,$L24
	nop
	lw	s5,%gp_rel(crc.2871)($28)
	beq	s2,$0,$L22
	nop
	lui	s6,%hi(crc_32_tab)
	addiu	s7,s6,%lo(crc_32_tab)
	addiu	s8,s2,-1
	andi	s9,s8,0x3
	lbu	s10,0(s4)
	nop
	xor	s11,s5,s10
	andi	s12,s11,0xff
	sll	s13,s12,2
	addu	s14,s13,s7
	lw	s15,0(s14)
	srl	s16,s5,8
	xor	s5,s15,s16
	addiu	s17,s4,1
	move	s18,s8
	beq	s8,$0,$L22
	nop
	beq	s9,$0,$L4
	nop
	li	s19,1			# 0x1
	beq	s9,s19,$L19
	nop
	li	s20,2			# 0x2
	beq	s9,s20,$L20
	nop
	lbu	s21,1(s4)
	nop
	xor	s22,s5,s21
	andi	s23,s22,0xff
	sll	s24,s23,2
	addu	s25,s24,s7
	lw	s26,0(s25)
	srl	s27,s5,8
	xor	s5,s26,s27
	addiu	s17,s4,2
	addiu	s18,s2,-2
$L20:
	lbu	s28,0(s17)
	nop
	xor	s29,s5,s28
	andi	s30,s29,0xff
	sll	s31,s30,2
	addu	s32,s31,s7
	lw	s33,0(s32)
	srl	s34,s5,8
	xor	s5,s33,s34
	addiu	s17,s17,1
	addiu	s18,s18,-1
$L19:
	lbu	s35,0(s17)
	nop
	xor	s36,s5,s35
	andi	s37,s36,0xff
	sll	s38,s37,2
	addu	s39,s38,s7
	lw	s40,0(s39)
	srl	s41,s5,8
	xor	s5,s40,s41
	addiu	s17,s17,1
	addiu	s18,s18,-1
	beq	s18,$0,$L22
	nop
$L4:
	lbu	s42,0(s17)
	nop
	xor	s43,s5,s42
	andi	s44,s43,0xff
	sll	s45,s44,2
	addu	s46,s45,s7
	lw	s47,0(s46)
	srl	s48,s5,8
	xor	s49,s47,s48
	lbu	s50,1(s17)
	nop
	xor	s51,s49,s50
	andi	s52,s51,0xff
	sll	s53,s52,2
	addu	s54,s53,s7
	lw	s55,0(s54)
	srl	s56,s49,8
	xor	s57,s55,s56
	lbu	s58,2(s17)
	nop
	xor	s59,s57,s58
	andi	s60,s59,0xff
	sll	s61,s60,2
	addu	s62,s61,s7
	lw	s63,0(s62)
	srl	s64,s57,8
	xor	s65,s63,s64
	lbu	s66,3(s17)
	nop
	xor	s67,s65,s66
	andi	s68,s67,0xff
	sll	s69,s68,2
	addu	s70,s69,s7
	lw	s71,0(s70)
	srl	s72,s65,8
	xor	s5,s71,s72
	addiu	s17,s17,4
	addiu	s18,s18,-4
	bne	s18,$0,$L4
	nop
$L22:
	nor	s73,$0,s5
	sw	s5,%gp_rel(crc.2871)($28)
	move	$2,s73
	j	s3
	nop
$L24:
	li	s74,-1			# 0xffffffffffffffff
	move	s75,$0
	sw	s74,%gp_rel(crc.2871)($28)
	move	$2,s75
	j	s3
	nop
	.set	macro
	.set	reorder
	.end	updcrc
	.size	updcrc, .-updcrc
	.align	2
	.globl	clear_bufs
	.set	nomips16
	.ent	clear_bufs
clear_bufs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$31
	sw	$0,%gp_rel(outcnt)($28)
	sw	$0,%gp_rel(inptr)($28)
	sw	$0,%gp_rel(insize)($28)
	sw	$0,%gp_rel(bytes_out)($28)
	sw	$0,%gp_rel(bytes_in)($28)
	j	s1
	nop
	.set	macro
	.set	reorder
	.end	clear_bufs
	.size	clear_bufs, .-clear_bufs
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC0:
	.ascii	"%2ld.%1ld%%\000"
	.text
	.align	2
	.globl	display_ratio
	.set	nomips16
	.ent	display_ratio
display_ratio:
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
	move	s6,s3
	beq	s2,$0,$L28
	nop
	li	s3,2097152			# 0x200000
	ori	s7,s3,0xc49b
	slt	s8,s2,s7
	beq	s8,$0,$L29
	nop
	sll	s9,s1,2
	sll	s10,s1,7
	subu	s11,s10,s9
	addu	s4,s11,s1
	sll	s12,s4,3
	bne	s2,$0,1f
	div	$0,s12,s2
	break	7
1:
	mflo	s13
	bgez	s13,$L35
	nop
$L31:
	li	s14,45			# 0x2d
	move	s15,s6
	move	$4,s14
	move	$5,s15
	move	$6,s3
	move	$7,s4
	jal	_IO_putc
	nop
	subu	s16,$0,s13
	li	s17,10			# 0xa
	bne	s17,$0,1f
	div	$0,s16,s17
	break	7
1:
	mfhi	s18
	mflo	s19
	move	s20,s6
	lui	s21,%hi($LC0)
	addiu	s22,s21,%lo($LC0)
	move	s23,s19
	move	s24,s18
	addiu	$sp,$sp,32
	j	fprintf
	nop
$L28:
	move	s25,$0
	move	s26,$0
$L32:
	li	s27,32			# 0x20
	move	s28,s6
	move	$4,s27
	move	$5,s28
	move	$6,s3
	move	$7,s4
	jal	_IO_putc
	nop
	move	s29,s6
	lui	s30,%hi($LC0)
	addiu	s31,s30,%lo($LC0)
	move	s32,s25
	move	s33,s26
	addiu	$sp,$sp,32
	j	fprintf
	nop
$L29:
	li	s34,1000			# 0x3e8
	bne	s34,$0,1f
	div	$0,s2,s34
	break	7
1:
	mflo	s35
	bne	s35,$0,1f
	div	$0,s1,s35
	break	7
1:
	mflo	s13
	bltz	s13,$L31
	nop
$L35:
	li	s36,10			# 0xa
	bne	s36,$0,1f
	div	$0,s13,s36
	break	7
1:
	mfhi	s26
	mflo	s25
	j	$L32
	nop
	.set	macro
	.set	reorder
	.end	display_ratio
	.size	display_ratio, .-display_ratio
	.section	.rodata.str1.4
	.align	2
$LC1:
	.ascii	"%s: %s: warning: %s%s\012\000"
	.text
	.align	2
	.globl	warn
	.set	nomips16
	.ent	warn
warn:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 24, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$5
	move	s3,$31
	addiu	$sp,$sp,-32
	lw	s4,%gp_rel(quiet)($28)
	nop
	beq	s4,$0,$L40
	nop
$L37:
	lw	s5,%gp_rel(exit_code)($28)
	nop
	bne	s5,$0,$L39
	nop
	li	s6,2			# 0x2
	sw	s6,%gp_rel(exit_code)($28)
$L39:
	addiu	$sp,$sp,32
	move	$2,s4
	j	s3
	nop
$L40:
	sw	s1,16($sp)
	sw	s2,20($sp)
	lw	s7,%gp_rel(stderr)($28)
	lui	s8,%hi($LC1)
	addiu	s9,s8,%lo($LC1)
	lw	s10,%gp_rel(progname)($28)
	lui	s11,%hi(ifname)
	addiu	s12,s11,%lo(ifname)
	move	$4,s7
	move	$5,s9
	move	$6,s10
	move	$7,s12
	jal	fprintf
	nop
	move	s4,$2
	j	$L37
	nop
	.set	macro
	.set	reorder
	.end	warn
	.size	warn, .-warn
	.section	.rodata.str1.4
	.align	2
$LC2:
	.ascii	"\012%s: \000"
	.text
	.align	2
	.globl	write_error
	.set	nomips16
	.ent	write_error
write_error:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$7
	move	s2,$31
	addiu	$sp,$sp,-24
	lw	s3,%gp_rel(stderr)($28)
	lui	s4,%hi($LC2)
	addiu	s5,s4,%lo($LC2)
	lw	s6,%gp_rel(progname)($28)
	move	$4,s3
	move	$5,s5
	move	$6,s6
	move	$7,s1
	jal	fprintf
	nop
	lui	s7,%hi(ofname)
	addiu	s8,s7,%lo(ofname)
	move	$4,s8
	jal	perror
	nop
	addiu	$sp,$sp,24
	j	abort_gzip
	nop
	.set	macro
	.set	reorder
	.end	write_error
	.size	write_error, .-write_error
	.section	.rodata.str1.4
	.align	2
$LC3:
	.ascii	"\012%s: %s: %s\012\000"
	.text
	.align	2
	.globl	error
	.set	nomips16
	.ent	error
error:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 24, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$31
	addiu	$sp,$sp,-32
	sw	s1,16($sp)
	lw	s3,%gp_rel(stderr)($28)
	lui	s4,%hi($LC3)
	addiu	s5,s4,%lo($LC3)
	lw	s6,%gp_rel(progname)($28)
	lui	s7,%hi(ifname)
	addiu	s8,s7,%lo(ifname)
	move	$4,s3
	move	$5,s5
	move	$6,s6
	move	$7,s8
	jal	fprintf
	nop
	addiu	$sp,$sp,32
	j	abort_gzip
	nop
	.set	macro
	.set	reorder
	.end	error
	.size	error, .-error
	.section	.rodata.str1.4
	.align	2
$LC4:
	.ascii	"out of memory\000"
	.text
	.align	2
	.globl	xmalloc
	.set	nomips16
	.ent	xmalloc
xmalloc:
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
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	malloc
	nop
	move	s6,$2
	move	s7,s6
	beq	s6,$0,$L48
	nop
$L46:
	move	s8,s7
	addiu	$sp,$sp,24
	move	$2,s8
	j	s5
	nop
$L48:
	lui	s9,%hi($LC4)
	addiu	s10,s9,%lo($LC4)
	move	$4,s10
	jal	error
	nop
	j	$L46
	nop
	.set	macro
	.set	reorder
	.end	xmalloc
	.size	xmalloc, .-xmalloc
	.section	.rodata.str1.4
	.align	2
$LC5:
	.ascii	"%s: unexpected end of file\012\000"
	.text
	.align	2
	.globl	read_error
	.set	nomips16
	.ent	read_error
read_error:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$7
	move	s2,$31
	addiu	$sp,$sp,-24
	lw	s3,%gp_rel(stderr)($28)
	lui	s4,%hi($LC2)
	addiu	s5,s4,%lo($LC2)
	lw	s6,%gp_rel(progname)($28)
	move	$4,s3
	move	$5,s5
	move	$6,s6
	move	$7,s1
	jal	fprintf
	nop
	jal	__errno_location
	nop
	move	s7,$2
	lw	s8,0(s7)
	nop
	bne	s8,$0,$L53
	nop
	lw	s9,%gp_rel(stderr)($28)
	lui	s10,%hi($LC5)
	addiu	s11,s10,%lo($LC5)
	lui	s12,%hi(ifname)
	addiu	s13,s12,%lo(ifname)
	move	$4,s9
	move	$5,s11
	move	$6,s13
	jal	fprintf
	nop
	addiu	$sp,$sp,24
	j	abort_gzip
	nop
$L53:
	lui	s14,%hi(ifname)
	addiu	s15,s14,%lo(ifname)
	move	$4,s15
	jal	perror
	nop
	addiu	$sp,$sp,24
	j	abort_gzip
	nop
	.set	macro
	.set	reorder
	.end	read_error
	.size	read_error, .-read_error
	.align	2
	.globl	make_simple_name
	.set	nomips16
	.ent	make_simple_name
make_simple_name:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$6
	move	s3,$7
	move	s4,$31
	addiu	$sp,$sp,-24
	move	s5,s1
	li	s6,46			# 0x2e
	move	$4,s1
	move	$5,s6
	move	$6,s2
	move	$7,s3
	jal	strrchr
	nop
	move	s7,$2
	move	s8,s7
	beq	s7,$0,$L58
	nop
	beq	s7,s5,$L113
	nop
$L56:
	li	s9,46			# 0x2e
	li	s10,95
	subu	s11,s5,s8
	nor	s12,$0,s11
	andi	s13,s12,0x7
	addiu	s14,s8,-1
	lb	s7,-1(s8)
	nop
	beq	s7,s9,$L114
	nop
$L61:
	beq	s14,s5,$L58
	nop
	beq	s13,$0,$L59
	nop
	li	s15,1			# 0x1
	beq	s13,s15,$L100
	nop
	li	s16,2			# 0x2
	beq	s13,s16,$L101
	nop
	li	s17,3			# 0x3
	beq	s13,s17,$L102
	nop
	li	s18,4			# 0x4
	beq	s13,s18,$L103
	nop
	li	s19,5			# 0x5
	beq	s13,s19,$L104
	nop
	li	s20,6			# 0x6
	beq	s13,s20,$L105
	nop
	addiu	s14,s14,-1
	lb	s21,0(s14)
	nop
	beq	s21,s9,$L115
	nop
$L105:
	addiu	s14,s14,-1
	lb	s22,0(s14)
	nop
	beq	s22,s9,$L116
	nop
$L104:
	addiu	s14,s14,-1
	lb	s23,0(s14)
	nop
	bne	s23,s9,$L103
	nop
	sb	s10,0(s14)
$L103:
	addiu	s14,s14,-1
	lb	s24,0(s14)
	nop
	beq	s24,s9,$L117
	nop
$L102:
	addiu	s14,s14,-1
	lb	s25,0(s14)
	nop
	beq	s25,s9,$L118
	nop
$L101:
	addiu	s14,s14,-1
	lb	s7,0(s14)
	nop
	beq	s7,s9,$L119
	nop
$L100:
	addiu	s14,s14,-1
	lb	s26,0(s14)
	nop
	beq	s26,s9,$L120
	nop
$L96:
	beq	s14,s5,$L58
	nop
$L59:
	addiu	s27,s14,-1
	lb	s28,-1(s14)
	nop
	beq	s28,s9,$L121
	nop
	lb	s29,-1(s27)
	nop
	beq	s29,s9,$L122
	nop
$L106:
	lb	s30,-2(s27)
	nop
	beq	s30,s9,$L123
	nop
$L107:
	lb	s31,-3(s27)
	nop
	beq	s31,s9,$L124
	nop
$L108:
	lb	s32,-4(s27)
	nop
	beq	s32,s9,$L125
	nop
$L109:
	lb	s33,-5(s27)
	nop
	beq	s33,s9,$L126
	nop
$L110:
	lb	s34,-6(s27)
	nop
	beq	s34,s9,$L127
	nop
$L111:
	addiu	s14,s27,-7
	lb	s35,-7(s27)
	nop
	bne	s35,s9,$L96
	nop
$L128:
	sb	s10,-7(s27)
	bne	s14,s5,$L59
	nop
$L58:
	addiu	$sp,$sp,24
	move	$2,s7
	j	s4
	nop
$L114:
	sb	s10,-1(s8)
	j	$L61
	nop
$L120:
	sb	s10,0(s14)
	j	$L96
	nop
$L116:
	sb	s10,0(s14)
	j	$L104
	nop
$L115:
	sb	s10,0(s14)
	j	$L105
	nop
$L119:
	sb	s10,0(s14)
	j	$L100
	nop
$L118:
	sb	s10,0(s14)
	j	$L101
	nop
$L117:
	sb	s10,0(s14)
	j	$L102
	nop
$L121:
	sb	s10,-1(s14)
	lb	s36,-1(s27)
	nop
	bne	s36,s9,$L106
	nop
$L122:
	sb	s10,-1(s27)
	lb	s37,-2(s27)
	nop
	bne	s37,s9,$L107
	nop
$L123:
	sb	s10,-2(s27)
	lb	s38,-3(s27)
	nop
	bne	s38,s9,$L108
	nop
$L124:
	sb	s10,-3(s27)
	lb	s39,-4(s27)
	nop
	bne	s39,s9,$L109
	nop
$L125:
	sb	s10,-4(s27)
	lb	s40,-5(s27)
	nop
	bne	s40,s9,$L110
	nop
$L126:
	sb	s10,-5(s27)
	lb	s41,-6(s27)
	nop
	bne	s41,s9,$L111
	nop
$L127:
	sb	s10,-6(s27)
	addiu	s14,s27,-7
	lb	s42,-7(s27)
	nop
	bne	s42,s9,$L96
	nop
	j	$L128
	nop
$L113:
	addiu	s8,s7,1
	j	$L56
	nop
	.set	macro
	.set	reorder
	.end	make_simple_name
	.size	make_simple_name, .-make_simple_name
	.align	2
	.globl	basename
	.set	nomips16
	.ent	basename
basename:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$6
	move	s3,$7
	move	s4,$31
	addiu	$sp,$sp,-24
	move	s5,s1
	li	s6,47			# 0x2f
	move	$4,s1
	move	$5,s6
	move	$6,s2
	move	$7,s3
	jal	strrchr
	nop
	move	s7,$2
	beq	s7,$0,$L130
	nop
	addiu	s5,s7,1
$L130:
	move	s8,s5
	addiu	$sp,$sp,24
	move	$2,s8
	j	s4
	nop
	.set	macro
	.set	reorder
	.end	basename
	.size	basename, .-basename
	.align	2
	.globl	strlwr
	.set	nomips16
	.ent	strlwr
strlwr:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
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
	lb	s7,0(s1)
	nop
	beq	s7,$0,$L133
	nop
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	__ctype_b_loc
	nop
	move	s8,$2
	move	s9,s8
	move	s10,s6
$L135:
	lw	s11,0(s9)
	sll	s12,s7,1
	addu	s13,s11,s12
	lhu	s14,0(s13)
	nop
	andi	s15,s14,0x1
	beq	s15,$0,$L134
	nop
	addiu	s16,s7,32
	sll	s17,s16,24
	sra	s7,s17,24
$L134:
	sb	s7,0(s10)
	addiu	s10,s10,1
	lb	s7,0(s10)
	nop
	bne	s7,$0,$L135
	nop
$L133:
	move	s18,s6
	addiu	$sp,$sp,32
	move	$2,s18
	j	s5
	nop
	.set	macro
	.set	reorder
	.end	strlwr
	.size	strlwr, .-strlwr
	.align	2
	.globl	fill_inbuf
	.set	nomips16
	.ent	fill_inbuf
fill_inbuf:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
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
	sw	$0,%gp_rel(insize)($28)
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	__errno_location
	nop
	move	s7,$2
	sw	$0,0(s7)
	lui	s8,%hi(inbuf)
	addiu	s9,s8,%lo(inbuf)
	lw	s10,%gp_rel(insize)($28)
	li	s11,32768			# 0x8000
$L140:
	lw	s12,%gp_rel(ifd)($28)
	addu	s13,s9,s10
	subu	s14,s11,s10
	move	$4,s12
	move	$5,s13
	move	$6,s14
	jal	read
	nop
	move	s15,$2
	move	s16,s15
	addiu	s17,s15,1
	sltu	s18,s17,2
	bne	s18,$0,$L148
	nop
	lw	s19,%gp_rel(insize)($28)
	nop
	addu	s10,s16,s19
	sw	s10,%gp_rel(insize)($28)
	sltu	s20,s10,s11
	bne	s20,$0,$L140
	nop
$L139:
	beq	s10,$0,$L149
	nop
$L141:
	lw	s21,%gp_rel(bytes_in)($28)
	nop
	addu	s22,s21,s10
	sw	s22,%gp_rel(bytes_in)($28)
	li	s23,1			# 0x1
	sw	s23,%gp_rel(inptr)($28)
	lbu	s24,%lo(inbuf)(s8)
$L143:
	addiu	$sp,$sp,40
	move	$2,s24
	j	s5
	nop
$L148:
	lw	s10,%gp_rel(insize)($28)
	j	$L139
	nop
$L149:
	beq	s6,$0,$L142
	nop
	li	s24,-1			# 0xffffffffffffffff
	j	$L143
	nop
$L142:
	move	$4,s17
	move	$5,s20
	move	$6,s19
	jal	read_error
	nop
	lw	s10,%gp_rel(insize)($28)
	j	$L141
	nop
	.set	macro
	.set	reorder
	.end	fill_inbuf
	.size	fill_inbuf, .-fill_inbuf
	.align	2
	.globl	write_buf
	.set	nomips16
	.ent	write_buf
write_buf:
	.frame	$sp,48,$31		# vars= 0, regs= 8/0, args= 16, gp= 0
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$5
	move	s3,$6
	move	s4,$7
	move	s5,$31
	addiu	$sp,$sp,-48
	move	s6,s1
	move	s7,s2
	move	s8,s3
	li	s9,-1			# 0xffffffffffffffff
	lui	s10,%hi($LC2)
	addiu	s11,s10,%lo($LC2)
	lui	s12,%hi(ofname)
	addiu	s13,s12,%lo(ofname)
	move	s14,s6
	move	s15,s7
	move	s16,s8
	move	$4,s14
	move	$5,s15
	move	$6,s16
	move	$7,s4
	jal	write
	nop
	move	s17,$2
	move	s18,s17
	beq	s17,s8,$L155
	nop
$L153:
	beq	s18,s9,$L156
	nop
	subu	s8,s8,s18
	addu	s7,s7,s18
$L157:
	move	s19,s6
	move	s20,s7
	move	s21,s8
	move	$4,s19
	move	$5,s20
	move	$6,s21
	jal	write
	nop
	move	s17,$2
	move	s18,s17
	bne	s17,s8,$L153
	nop
$L155:
	addiu	$sp,$sp,48
	move	$2,s17
	j	s5
	nop
$L156:
	lw	s22,%gp_rel(stderr)($28)
	move	s23,s11
	lw	s24,%gp_rel(progname)($28)
	move	$4,s22
	move	$5,s23
	move	$6,s24
	jal	fprintf
	nop
	move	s25,s13
	move	$4,s25
	jal	perror
	nop
	jal	abort_gzip
	nop
	subu	s8,s8,s18
	addu	s7,s7,s18
	j	$L157
	nop
	.set	macro
	.set	reorder
	.end	write_buf
	.size	write_buf, .-write_buf
	.align	2
	.globl	copy
	.set	nomips16
	.ent	copy
copy:
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
	move	s7,s2
	move	$4,s1
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	__errno_location
	nop
	move	s8,$2
	sw	$0,0(s8)
	lw	s9,%gp_rel(insize)($28)
	nop
	addiu	s10,s9,-1
	sltu	s11,s10,-2
	beq	s11,$0,$L159
	nop
	lui	s12,%hi(inbuf)
	addiu	s13,s12,%lo(inbuf)
	move	s14,s13
	li	s15,-1			# 0xffffffffffffffff
	lui	s16,%hi($LC2)
	addiu	s17,s16,%lo($LC2)
	lui	s18,%hi(ofname)
	addiu	s19,s18,%lo(ofname)
$L160:
	move	s20,s14
	move	s21,s7
	move	s22,s20
	move	s23,s9
	move	$4,s21
	move	$5,s22
	move	$6,s23
	move	$7,s24
	jal	write
	nop
	move	s25,$2
	move	s26,s25
	beq	s25,s9,$L166
	nop
$L162:
	beq	s26,s15,$L167
	nop
	subu	s9,s9,s26
	addu	s20,s20,s26
$L169:
	move	s27,s7
	move	s28,s20
	move	s29,s9
	move	$4,s27
	move	$5,s28
	move	$6,s29
	jal	write
	nop
	move	s30,$2
	move	s26,s30
	bne	s30,s9,$L162
	nop
$L166:
	lw	s31,%gp_rel(insize)($28)
	lw	s32,%gp_rel(bytes_out)($28)
	nop
	addu	s33,s32,s31
	sw	s33,%gp_rel(bytes_out)($28)
	move	s34,s13
	li	s35,32768			# 0x8000
	move	$4,s1
	move	$5,s34
	move	$6,s35
	jal	read
	nop
	move	s36,$2
	move	s9,s36
	sw	s36,%gp_rel(insize)($28)
	addiu	s37,s36,-1
	sltu	s24,s37,-2
	bne	s24,$0,$L160
	nop
$L159:
	li	s38,-1			# 0xffffffffffffffff
	beq	s9,s38,$L168
	nop
$L164:
	lw	s39,%gp_rel(bytes_out)($28)
	nop
	sw	s39,%gp_rel(bytes_in)($28)
	move	s40,$0
	addiu	$sp,$sp,64
	move	$2,s40
	j	s6
	nop
$L167:
	lw	s41,%gp_rel(stderr)($28)
	move	s42,s17
	lw	s43,%gp_rel(progname)($28)
	move	$4,s41
	move	$5,s42
	move	$6,s43
	jal	fprintf
	nop
	move	s44,s19
	move	$4,s44
	jal	perror
	nop
	jal	abort_gzip
	nop
	subu	s9,s9,s26
	addu	s20,s20,s26
	j	$L169
	nop
$L168:
	lw	s45,0(s8)
	nop
	beq	s45,$0,$L164
	nop
	move	$7,s24
	jal	read_error
	nop
	j	$L164
	nop
	.set	macro
	.set	reorder
	.end	copy
	.size	copy, .-copy
	.align	2
	.globl	flush_outbuf
	.set	nomips16
	.ent	flush_outbuf
flush_outbuf:
	.frame	$sp,48,$31		# vars= 0, regs= 8/0, args= 16, gp= 0
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$7
	move	s2,$31
	addiu	$sp,$sp,-48
	lw	s3,%gp_rel(outcnt)($28)
	nop
	bne	s3,$0,$L176
	nop
$L175:
	addiu	$sp,$sp,48
	move	$2,s4
	j	s2
	nop
$L176:
	lw	s5,%gp_rel(ofd)($28)
	lui	s6,%hi(outbuf)
	addiu	s7,s6,%lo(outbuf)
	li	s8,-1			# 0xffffffffffffffff
	lui	s9,%hi($LC2)
	addiu	s10,s9,%lo($LC2)
	lui	s11,%hi(ofname)
	addiu	s12,s11,%lo(ofname)
	move	s13,s5
	move	s14,s7
	move	s15,s3
	move	$4,s13
	move	$5,s14
	move	$6,s15
	move	$7,s1
	jal	write
	nop
	move	s4,$2
	move	s16,s4
	beq	s4,s3,$L177
	nop
$L174:
	beq	s16,s8,$L178
	nop
	subu	s3,s3,s16
	addu	s7,s7,s16
$L179:
	move	s17,s5
	move	s18,s7
	move	s19,s3
	move	$4,s17
	move	$5,s18
	move	$6,s19
	jal	write
	nop
	move	s4,$2
	move	s16,s4
	bne	s4,s3,$L174
	nop
$L177:
	lw	s20,%gp_rel(outcnt)($28)
	lw	s21,%gp_rel(bytes_out)($28)
	nop
	addu	s22,s21,s20
	sw	s22,%gp_rel(bytes_out)($28)
	sw	$0,%gp_rel(outcnt)($28)
	j	$L175
	nop
$L178:
	lw	s23,%gp_rel(stderr)($28)
	move	s24,s10
	lw	s25,%gp_rel(progname)($28)
	move	$4,s23
	move	$5,s24
	move	$6,s25
	jal	fprintf
	nop
	move	s26,s12
	move	$4,s26
	jal	perror
	nop
	jal	abort_gzip
	nop
	subu	s3,s3,s16
	addu	s7,s7,s16
	j	$L179
	nop
	.set	macro
	.set	reorder
	.end	flush_outbuf
	.size	flush_outbuf, .-flush_outbuf
	.align	2
	.globl	flush_window
	.set	nomips16
	.ent	flush_window
flush_window:
	.frame	$sp,48,$31		# vars= 0, regs= 8/0, args= 16, gp= 0
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$31
	addiu	$sp,$sp,-48
	lw	s2,%gp_rel(outcnt)($28)
	nop
	move	s3,s2
	beq	s2,$0,$L187
	nop
	lw	s4,%gp_rel(crc.2871)($28)
	lui	s5,%hi(window)
	addiu	s6,s5,%lo(window)
	lui	s7,%hi(crc_32_tab)
	addiu	s8,s7,%lo(crc_32_tab)
	addiu	s9,s2,-1
	andi	s10,s9,0x3
	lbu	s11,%lo(window)(s5)
	nop
	xor	s12,s4,s11
	andi	s13,s12,0xff
	sll	s14,s13,2
	addu	s15,s14,s8
	lw	s16,0(s15)
	srl	s17,s4,8
	xor	s18,s16,s17
	addiu	s19,s6,1
	beq	s9,$0,$L202
	nop
	beq	s10,$0,$L182
	nop
	li	s20,1			# 0x1
	beq	s10,s20,$L200
	nop
	li	s21,2			# 0x2
	beq	s10,s21,$L201
	nop
	lbu	s22,1(s6)
	nop
	xor	s23,s18,s22
	andi	s24,s23,0xff
	sll	s25,s24,2
	addu	s26,s25,s8
	lw	s27,0(s26)
	srl	s28,s18,8
	xor	s18,s27,s28
	addiu	s19,s6,2
	addiu	s9,s2,-2
$L201:
	lbu	s16,0(s19)
	nop
	xor	s29,s18,s16
	andi	s30,s29,0xff
	sll	s31,s30,2
	addu	s32,s31,s8
	lw	s33,0(s32)
	srl	s34,s18,8
	xor	s18,s33,s34
	addiu	s19,s19,1
	addiu	s9,s9,-1
$L200:
	lbu	s10,0(s19)
	nop
	xor	s35,s18,s10
	andi	s36,s35,0xff
	sll	s37,s36,2
	addu	s38,s37,s8
	lw	s39,0(s38)
	srl	s40,s18,8
	xor	s18,s39,s40
	addiu	s19,s19,1
	addiu	s9,s9,-1
	beq	s9,$0,$L202
	nop
$L182:
	lbu	s41,0(s19)
	nop
	xor	s42,s18,s41
	andi	s43,s42,0xff
	sll	s44,s43,2
	addu	s45,s44,s8
	lw	s46,0(s45)
	srl	s47,s18,8
	xor	s48,s46,s47
	lbu	s49,1(s19)
	nop
	xor	s50,s48,s49
	andi	s51,s50,0xff
	sll	s52,s51,2
	addu	s53,s52,s8
	lw	s54,0(s53)
	srl	s55,s48,8
	xor	s56,s54,s55
	lbu	s57,2(s19)
	nop
	xor	s58,s56,s57
	andi	s59,s58,0xff
	sll	s60,s59,2
	addu	s16,s60,s8
	lw	s61,0(s16)
	srl	s62,s56,8
	xor	s63,s61,s62
	lbu	s64,3(s19)
	nop
	xor	s65,s63,s64
	andi	s66,s65,0xff
	sll	s67,s66,2
	addu	s68,s67,s8
	lw	s10,0(s68)
	srl	s69,s63,8
	xor	s18,s10,s69
	addiu	s19,s19,4
	addiu	s9,s9,-4
	bne	s9,$0,$L182
	nop
$L202:
	sw	s18,%gp_rel(crc.2871)($28)
	lw	s70,%gp_rel(test)($28)
	nop
	beq	s70,$0,$L203
	nop
$L183:
	lw	s71,%gp_rel(bytes_out)($28)
	nop
	addu	s72,s71,s2
	sw	s72,%gp_rel(bytes_out)($28)
	sw	$0,%gp_rel(outcnt)($28)
$L187:
	addiu	$sp,$sp,48
	move	$2,s16
	j	s1
	nop
$L203:
	lw	s73,%gp_rel(ofd)($28)
	move	s74,s6
	li	s75,-1			# 0xffffffffffffffff
	lui	s76,%hi($LC2)
	addiu	s77,s76,%lo($LC2)
	lui	s78,%hi(ofname)
	addiu	s79,s78,%lo(ofname)
	move	s80,s73
	move	s81,s74
	move	s82,s3
	move	$4,s80
	move	$5,s81
	move	$6,s82
	move	$7,s10
	jal	write
	nop
	move	s16,$2
	move	s83,s16
	beq	s16,s3,$L204
	nop
$L186:
	beq	s83,s75,$L205
	nop
	subu	s3,s3,s83
	addu	s74,s74,s83
$L206:
	move	s84,s73
	move	s85,s74
	move	s86,s3
	move	$4,s84
	move	$5,s85
	move	$6,s86
	jal	write
	nop
	move	s16,$2
	move	s83,s16
	bne	s16,s3,$L186
	nop
$L204:
	lw	s2,%gp_rel(outcnt)($28)
	j	$L183
	nop
$L205:
	lw	s87,%gp_rel(stderr)($28)
	move	s88,s77
	lw	s89,%gp_rel(progname)($28)
	move	$4,s87
	move	$5,s88
	move	$6,s89
	jal	fprintf
	nop
	move	s90,s79
	move	$4,s90
	jal	perror
	nop
	jal	abort_gzip
	nop
	subu	s3,s3,s83
	addu	s74,s74,s83
	j	$L206
	nop
	.set	macro
	.set	reorder
	.end	flush_window
	.size	flush_window, .-flush_window
	.section	.rodata.str1.4
	.align	2
$LC6:
	.ascii	"argc<=0\000"
	.text
	.align	2
	.globl	add_envopt
	.set	nomips16
	.ent	add_envopt
add_envopt:
	.frame	$sp,56,$31		# vars= 0, regs= 7/0, args= 24, gp= 0
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	s1,$4
	move	s2,$5
	move	s3,$6
	move	s4,$7
	move	s5,$31
	addiu	$sp,$sp,-56
	move	s6,s1
	move	s7,s2
	lw	s8,0(s1)
	move	s9,s3
	move	$4,s9
	move	$5,s2
	move	$6,s3
	move	$7,s4
	jal	getenv
	nop
	move	s10,$2
	move	s11,s10
	beq	s10,$0,$L208
	nop
	move	s12,s10
	move	$4,s12
	jal	strlen
	nop
	move	s13,$2
	addiu	s14,s13,1
	move	$4,s14
	jal	malloc
	nop
	move	s15,$2
	move	s16,s15
	beq	s15,$0,$L266
	nop
$L209:
	move	s17,s16
	move	s18,s11
	move	$4,s17
	move	$5,s18
	jal	strcpy
	nop
	move	s19,$2
	move	s11,s19
	lb	s20,0(s19)
	nop
	beq	s20,$0,$L210
	nop
	move	s21,s11
	move	s22,$0
	li	s23,32			# 0x20
	li	s24,9			# 0x9
	li	s25,32			# 0x20
	li	s26,9			# 0x9
$L211:
	move	s27,$0
$L219:
	addu	s28,s21,s27
	lb	s29,0(s28)
	nop
	beq	s29,s23,$L212
	nop
	bne	s29,s24,$L267
	nop
$L212:
	addiu	s27,s27,1
	j	$L219
	nop
$L267:
	move	s30,s28
	beq	s29,$0,$L213
	nop
	beq	s29,s25,$L214
	nop
	beq	s29,s26,$L214
	nop
	move	s31,$0
	j	$L216
	nop
$L268:
	beq	s32,s23,$L215
	nop
	beq	s32,s24,$L215
	nop
$L216:
	addiu	s31,s31,1
	addu	s33,s28,s31
	lb	s32,0(s33)
	nop
	bne	s32,$0,$L268
	nop
$L215:
	move	s30,s33
	lb	s34,0(s33)
	nop
	bne	s34,$0,$L214
	nop
	addiu	s22,s22,1
$L218:
	lw	s35,0(s6)
	nop
	addu	s36,s22,s35
	sw	s36,0(s6)
	addiu	s37,s36,1
	li	s38,4			# 0x4
	move	$4,s37
	move	$5,s38
	move	$6,s35
	move	$7,s24
	jal	calloc
	nop
	move	s39,$2
	move	s40,s39
	beq	s39,$0,$L269
	nop
$L221:
	lw	s41,0(s7)
	sw	s40,0(s7)
	addiu	s42,s8,-1
	bltz	s8,$L270
	nop
$L222:
	lw	s43,0(s41)
	nop
	sw	s43,0(s40)
	addiu	s44,s40,4
	move	s45,s11
	move	s46,s44
	move	s47,s22
	li	s48,32			# 0x20
	li	s49,9			# 0x9
$L223:
	move	s50,$0
$L228:
	addu	s51,s45,s50
	lb	s52,0(s51)
	nop
	beq	s52,s48,$L224
	nop
	bne	s52,s49,$L271
	nop
$L224:
	addiu	s50,s50,1
	j	$L228
	nop
$L271:
	move	s45,s51
	sw	s51,0(s46)
	addiu	s46,s46,4
$L225:
	lb	s53,0(s45)
	addiu	s45,s45,1
	bne	s53,$0,$L225
	nop
	addiu	s47,s47,-1
	bne	s47,$0,$L223
	nop
	sll	s54,s22,2
	addu	s55,s44,s54
	beq	s42,$0,$L227
	nop
	li	s56,-1			# 0xffffffffffffffff
	addiu	s57,s42,-1
	andi	s58,s57,0x7
	lw	s59,4(s41)
	nop
	sw	s59,0(s55)
	addiu	s60,s55,4
	addiu	s61,s41,8
	addiu	s62,s42,-2
	beq	s62,s56,$L265
	nop
	beq	s58,$0,$L229
	nop
	li	s63,1			# 0x1
	beq	s58,s63,$L259
	nop
	li	s64,2			# 0x2
	beq	s58,s64,$L260
	nop
	li	s65,3			# 0x3
	beq	s58,s65,$L261
	nop
	li	s66,4			# 0x4
	beq	s58,s66,$L262
	nop
	li	s67,5			# 0x5
	beq	s58,s67,$L263
	nop
	li	s68,6			# 0x6
	beq	s58,s68,$L264
	nop
	lw	s69,8(s41)
	nop
	sw	s69,0(s60)
	addiu	s60,s60,4
	addiu	s61,s61,4
	addiu	s62,s62,-1
$L264:
	lw	s70,0(s61)
	nop
	sw	s70,0(s60)
	addiu	s60,s60,4
	addiu	s61,s61,4
	addiu	s62,s62,-1
$L263:
	lw	s71,0(s61)
	nop
	sw	s71,0(s60)
	addiu	s60,s60,4
	addiu	s61,s61,4
	addiu	s62,s62,-1
$L262:
	lw	s72,0(s61)
	nop
	sw	s72,0(s60)
	addiu	s60,s60,4
	addiu	s61,s61,4
	addiu	s62,s62,-1
$L261:
	lw	s73,0(s61)
	nop
	sw	s73,0(s60)
	addiu	s60,s60,4
	addiu	s61,s61,4
	addiu	s62,s62,-1
$L260:
	lw	s74,0(s61)
	nop
	sw	s74,0(s60)
	addiu	s60,s60,4
	addiu	s61,s61,4
	addiu	s62,s62,-1
$L259:
	lw	s75,0(s61)
	nop
	sw	s75,0(s60)
	addiu	s60,s60,4
	addiu	s61,s61,4
	addiu	s62,s62,-1
	beq	s62,s56,$L265
	nop
$L229:
	lw	s76,0(s61)
	nop
	sw	s76,0(s60)
	lw	s77,4(s61)
	nop
	sw	s77,4(s60)
	lw	s78,8(s61)
	nop
	sw	s78,8(s60)
	lw	s79,12(s61)
	nop
	sw	s79,12(s60)
	lw	s80,16(s61)
	nop
	sw	s80,16(s60)
	lw	s81,20(s61)
	nop
	sw	s81,20(s60)
	lw	s82,24(s61)
	nop
	sw	s82,24(s60)
	lw	s83,28(s61)
	nop
	sw	s83,28(s60)
	addiu	s60,s60,32
	addiu	s61,s61,32
	addiu	s62,s62,-8
	bne	s62,s56,$L229
	nop
$L265:
	addiu	s84,s8,-1
	sll	s85,s84,2
	addu	s55,s55,s85
$L227:
	sw	$0,0(s55)
$L208:
	move	s86,s11
	addiu	$sp,$sp,56
	move	$2,s86
	j	s5
	nop
$L214:
	sb	$0,0(s30)
	addiu	s21,s30,1
	addiu	s22,s22,1
	lb	s87,1(s30)
	nop
	bne	s87,$0,$L211
	nop
	j	$L218
	nop
$L213:
	bne	s22,$0,$L218
	nop
$L210:
	move	s88,s11
	move	$4,s88
	move	$5,s21
	move	$6,s23
	move	$7,s24
	jal	free
	nop
	move	s11,$0
	j	$L208
	nop
$L270:
	lui	s89,%hi($LC6)
	addiu	s90,s89,%lo($LC6)
	sw	s90,16($sp)
	lw	s91,%gp_rel(stderr)($28)
	lui	s92,%hi($LC3)
	addiu	s93,s92,%lo($LC3)
	lw	s94,%gp_rel(progname)($28)
	lui	s95,%hi(ifname)
	addiu	s96,s95,%lo(ifname)
	move	$4,s91
	move	$5,s93
	move	$6,s94
	move	$7,s96
	jal	fprintf
	nop
	jal	abort_gzip
	nop
	j	$L222
	nop
$L266:
	lui	s97,%hi($LC4)
	addiu	s98,s97,%lo($LC4)
	move	$4,s98
	jal	error
	nop
	j	$L209
	nop
$L269:
	lui	s99,%hi($LC4)
	addiu	s100,s99,%lo($LC4)
	move	$4,s100
	move	$7,s99
	jal	error
	nop
	j	$L221
	nop
	.set	macro
	.set	reorder
	.end	add_envopt
	.size	add_envopt, .-add_envopt
	.globl	crc_32_tab
	.data
	.align	2
	.type	crc_32_tab, @object
	.size	crc_32_tab, 1024
crc_32_tab:
	.word	0
	.word	1996959894
	.word	-301047508
	.word	-1727442502
	.word	124634137
	.word	1886057615
	.word	-379345611
	.word	-1637575261
	.word	249268274
	.word	2044508324
	.word	-522852066
	.word	-1747789432
	.word	162941995
	.word	2125561021
	.word	-407360249
	.word	-1866523247
	.word	498536548
	.word	1789927666
	.word	-205950648
	.word	-2067906082
	.word	450548861
	.word	1843258603
	.word	-187386543
	.word	-2083289657
	.word	325883990
	.word	1684777152
	.word	-43845254
	.word	-1973040660
	.word	335633487
	.word	1661365465
	.word	-99664541
	.word	-1928851979
	.word	997073096
	.word	1281953886
	.word	-715111964
	.word	-1570279054
	.word	1006888145
	.word	1258607687
	.word	-770865667
	.word	-1526024853
	.word	901097722
	.word	1119000684
	.word	-608450090
	.word	-1396901568
	.word	853044451
	.word	1172266101
	.word	-589951537
	.word	-1412350631
	.word	651767980
	.word	1373503546
	.word	-925412992
	.word	-1076862698
	.word	565507253
	.word	1454621731
	.word	-809855591
	.word	-1195530993
	.word	671266974
	.word	1594198024
	.word	-972236366
	.word	-1324619484
	.word	795835527
	.word	1483230225
	.word	-1050600021
	.word	-1234817731
	.word	1994146192
	.word	31158534
	.word	-1731059524
	.word	-271249366
	.word	1907459465
	.word	112637215
	.word	-1614814043
	.word	-390540237
	.word	2013776290
	.word	251722036
	.word	-1777751922
	.word	-519137256
	.word	2137656763
	.word	141376813
	.word	-1855689577
	.word	-429695999
	.word	1802195444
	.word	476864866
	.word	-2056965928
	.word	-228458418
	.word	1812370925
	.word	453092731
	.word	-2113342271
	.word	-183516073
	.word	1706088902
	.word	314042704
	.word	-1950435094
	.word	-54949764
	.word	1658658271
	.word	366619977
	.word	-1932296973
	.word	-69972891
	.word	1303535960
	.word	984961486
	.word	-1547960204
	.word	-725929758
	.word	1256170817
	.word	1037604311
	.word	-1529756563
	.word	-740887301
	.word	1131014506
	.word	879679996
	.word	-1385723834
	.word	-631195440
	.word	1141124467
	.word	855842277
	.word	-1442165665
	.word	-586318647
	.word	1342533948
	.word	654459306
	.word	-1106571248
	.word	-921952122
	.word	1466479909
	.word	544179635
	.word	-1184443383
	.word	-832445281
	.word	1591671054
	.word	702138776
	.word	-1328506846
	.word	-942167884
	.word	1504918807
	.word	783551873
	.word	-1212326853
	.word	-1061524307
	.word	-306674912
	.word	-1698712650
	.word	62317068
	.word	1957810842
	.word	-355121351
	.word	-1647151185
	.word	81470997
	.word	1943803523
	.word	-480048366
	.word	-1805370492
	.word	225274430
	.word	2053790376
	.word	-468791541
	.word	-1828061283
	.word	167816743
	.word	2097651377
	.word	-267414716
	.word	-2029476910
	.word	503444072
	.word	1762050814
	.word	-144550051
	.word	-2140837941
	.word	426522225
	.word	1852507879
	.word	-19653770
	.word	-1982649376
	.word	282753626
	.word	1742555852
	.word	-105259153
	.word	-1900089351
	.word	397917763
	.word	1622183637
	.word	-690576408
	.word	-1580100738
	.word	953729732
	.word	1340076626
	.word	-776247311
	.word	-1497606297
	.word	1068828381
	.word	1219638859
	.word	-670225446
	.word	-1358292148
	.word	906185462
	.word	1090812512
	.word	-547295293
	.word	-1469587627
	.word	829329135
	.word	1181335161
	.word	-882789492
	.word	-1134132454
	.word	628085408
	.word	1382605366
	.word	-871598187
	.word	-1156888829
	.word	570562233
	.word	1426400815
	.word	-977650754
	.word	-1296233688
	.word	733239954
	.word	1555261956
	.word	-1026031705
	.word	-1244606671
	.word	752459403
	.word	1541320221
	.word	-1687895376
	.word	-328994266
	.word	1969922972
	.word	40735498
	.word	-1677130071
	.word	-351390145
	.word	1913087877
	.word	83908371
	.word	-1782625662
	.word	-491226604
	.word	2075208622
	.word	213261112
	.word	-1831694693
	.word	-438977011
	.word	2094854071
	.word	198958881
	.word	-2032938284
	.word	-237706686
	.word	1759359992
	.word	534414190
	.word	-2118248755
	.word	-155638181
	.word	1873836001
	.word	414664567
	.word	-2012718362
	.word	-15766928
	.word	1711684554
	.word	285281116
	.word	-1889165569
	.word	-127750551
	.word	1634467795
	.word	376229701
	.word	-1609899400
	.word	-686959890
	.word	1308918612
	.word	956543938
	.word	-1486412191
	.word	-799009033
	.word	1231636301
	.word	1047427035
	.word	-1362007478
	.word	-640263460
	.word	1088359270
	.word	936918000
	.word	-1447252397
	.word	-558129467
	.word	1202900863
	.word	817233897
	.word	-1111625188
	.word	-893730166
	.word	1404277552
	.word	615818150
	.word	-1160759803
	.word	-841546093
	.word	1423857449
	.word	601450431
	.word	-1285129682
	.word	-1000256840
	.word	1567103746
	.word	711928724
	.word	-1274298825
	.word	-1022587231
	.word	1510334235
	.word	755167117
	.section	.sdata,"aw",@progbits
	.align	2
	.type	crc.2871, @object
	.size	crc.2871, 4
crc.2871:
	.word	-1
	.ident	"GCC: (GNU) 4.3.0"
