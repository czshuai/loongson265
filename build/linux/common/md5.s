	.file	1 "md5.cpp"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.align	3
	.globl	_ZN4x2657MD5InitEPNS_10MD5ContextE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657MD5InitEPNS_10MD5ContextE
	.type	_ZN4x2657MD5InitEPNS_10MD5ContextE, @function
_ZN4x2657MD5InitEPNS_10MD5ContextE:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,1732575232			# 0x67450000
	sw	$0,16($4)
	addiu	$2,$2,8961
	sw	$0,20($4)
	sw	$2,0($4)
	li	$2,-271777792			# 0xffffffffefcd0000
	ori	$2,$2,0xab89
	sw	$2,4($4)
	li	$2,-1732640768			# 0xffffffff98ba0000
	ori	$2,$2,0xdcfe
	sw	$2,8($4)
	li	$2,271712256			# 0x10320000
	addiu	$2,$2,21622
	jr	$31
	sw	$2,12($4)

	.set	macro
	.set	reorder
	.end	_ZN4x2657MD5InitEPNS_10MD5ContextE
	.size	_ZN4x2657MD5InitEPNS_10MD5ContextE, .-_ZN4x2657MD5InitEPNS_10MD5ContextE
	.align	2
	.align	3
	.globl	_ZN4x26512MD5TransformEPjS0_
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26512MD5TransformEPjS0_
	.type	_ZN4x26512MD5TransformEPjS0_, @function
_ZN4x26512MD5TransformEPjS0_:
	.frame	$sp,192,$31		# vars= 112, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-192
	lw	$11,8($4)
	li	$3,-680919040			# 0xffffffffd76a0000
	lw	$9,12($4)
	ori	$3,$3,0xa478
	li	$8,-389611520			# 0xffffffffe8c70000
	sd	$fp,184($sp)
	ori	$8,$8,0xb756
	li	$13,-1044578304			# 0xffffffffc1bd0000
	lw	$6,4($4)
	ori	$13,$13,0xceee
	lw	$fp,0($5)
	xor	$2,$11,$9
	lw	$7,0($4)
	and	$2,$2,$6
	lw	$24,4($5)
	xor	$10,$6,$11
	addu	$3,$fp,$3
	xor	$2,$2,$9
	sd	$18,128($sp)
	addu	$3,$3,$7
	lw	$18,8($5)
	addu	$2,$2,$3
	addu	$8,$24,$8
	sd	$9,104($sp)
	ror	$2,$2,25
	addu	$8,$8,$9
	sd	$16,112($sp)
	addu	$2,$2,$6
	li	$3,606076928			# 0x24200000
	lw	$16,12($5)
	and	$10,$10,$2
	xor	$9,$6,$2
	lw	$25,16($5)
	xor	$10,$10,$11
	addiu	$3,$3,28891
	sd	$11,96($sp)
	addu	$10,$10,$8
	addu	$3,$18,$3
	sd	$23,168($sp)
	ror	$10,$10,20
	addu	$3,$3,$11
	sd	$22,160($sp)
	addu	$10,$10,$2
	li	$11,-176422912			# 0xfffffffff57c0000
	sd	$21,152($sp)
	and	$9,$9,$10
	xor	$8,$2,$10
	sd	$20,144($sp)
	xor	$9,$9,$6
	addiu	$11,$11,4015
	sd	$19,136($sp)
	addu	$9,$9,$3
	sd	$17,120($sp)
	addu	$13,$16,$13
	ror	$9,$9,15
	lw	$21,20($5)
	addu	$11,$25,$11
	addu	$9,$9,$10
	lw	$17,24($5)
	addu	$13,$13,$6
	lw	$23,28($5)
	and	$8,$8,$9
	addu	$11,$11,$2
	lw	$19,44($5)
	xor	$2,$8,$2
	lw	$20,48($5)
	addu	$2,$2,$13
	li	$13,-1473249280			# 0xffffffffa8300000
	lw	$15,36($5)
	ror	$8,$2,10
	addiu	$13,$13,17939
	lw	$14,32($5)
	addu	$8,$8,$9
	addu	$13,$17,$13
	sd	$7,88($sp)
	addu	$13,$13,$9
	lw	$7,40($5)
	sd	$18,32($sp)
	move	$18,$14
	lw	$12,52($5)
	lw	$22,56($5)
	lw	$3,60($5)
	xor	$5,$10,$9
	move	$14,$12
	li	$12,1200029696			# 0x47870000
	sd	$15,0($sp)
	ori	$12,$12,0xc62a
	and	$5,$5,$8
	sd	$14,8($sp)
	addu	$12,$21,$12
	sd	$3,16($sp)
	xor	$3,$9,$8
	addu	$12,$12,$10
	xor	$10,$5,$10
	sd	$19,64($sp)
	addu	$10,$10,$11
	li	$11,-45744128			# 0xfffffffffd460000
	sd	$25,48($sp)
	ror	$5,$10,25
	ori	$11,$11,0x9501
	sd	$16,40($sp)
	addu	$5,$5,$8
	addu	$11,$23,$11
	sd	$24,24($sp)
	and	$3,$3,$5
	xor	$2,$8,$5
	sd	$17,56($sp)
	xor	$9,$3,$9
	addu	$11,$11,$8
	sd	$7,80($sp)
	addu	$9,$9,$12
	li	$12,1769996288			# 0x69800000
	ror	$3,$9,20
	ori	$12,$12,0x98d8
	addu	$3,$3,$5
	addu	$12,$18,$12
	and	$2,$2,$3
	xor	$10,$5,$3
	xor	$8,$2,$8
	addu	$12,$12,$5
	addu	$8,$8,$13
	li	$13,-1958477824			# 0xffffffff8b440000
	ror	$2,$8,15
	ori	$13,$13,0xf7af
	addu	$2,$2,$3
	addu	$13,$15,$13
	and	$10,$10,$2
	xor	$9,$3,$2
	xor	$5,$10,$5
	addu	$13,$13,$3
	addu	$5,$5,$11
	li	$11,-65536			# 0xffffffffffff0000
	ror	$10,$5,10
	addiu	$11,$11,23473
	addu	$10,$10,$2
	addu	$11,$7,$11
	and	$9,$9,$10
	xor	$8,$2,$10
	xor	$3,$9,$3
	addu	$11,$11,$2
	addu	$3,$3,$12
	li	$12,-1990459392			# 0xffffffff895c0000
	ror	$9,$3,25
	ori	$12,$12,0xd7be
	addu	$9,$9,$10
	addu	$12,$19,$12
	and	$8,$8,$9
	xor	$5,$10,$9
	xor	$2,$8,$2
	addu	$12,$12,$10
	addu	$2,$2,$13
	li	$15,1804599296			# 0x6b900000
	ror	$8,$2,20
	addiu	$15,$15,4386
	addu	$8,$8,$9
	addu	$15,$20,$15
	and	$5,$5,$8
	xor	$3,$9,$8
	xor	$10,$5,$10
	addu	$15,$15,$9
	addu	$10,$10,$11
	li	$11,-40370176			# 0xfffffffffd980000
	ror	$5,$10,15
	addiu	$11,$11,29075
	addu	$5,$5,$8
	addu	$11,$14,$11
	and	$3,$3,$5
	xor	$2,$8,$5
	xor	$9,$3,$9
	addu	$11,$11,$8
	addu	$9,$9,$12
	li	$13,-1502019584			# 0xffffffffa6790000
	ror	$3,$9,10
	li	$10,1236533248			# 0x49b40000
	addu	$3,$3,$5
	addiu	$13,$13,17294
	and	$2,$2,$3
	xor	$14,$5,$3
	xor	$8,$2,$8
	addiu	$10,$10,2081
	addu	$8,$8,$15
	addu	$13,$22,$13
	ror	$2,$8,25
	ld	$8,16($sp)
	addu	$13,$13,$5
	addu	$2,$2,$3
	li	$15,643694592			# 0x265e0000
	xor	$12,$3,$2
	addiu	$15,$15,23121
	addu	$10,$8,$10
	and	$8,$14,$2
	xor	$5,$8,$5
	addu	$10,$10,$3
	addu	$5,$5,$11
	li	$11,-165806080			# 0xfffffffff61e0000
	ror	$5,$5,20
	addiu	$11,$11,9570
	addu	$5,$5,$2
	addu	$11,$24,$11
	and	$12,$12,$5
	xor	$9,$2,$5
	xor	$3,$12,$3
	addu	$11,$11,$2
	addu	$3,$3,$13
	li	$13,-1069547520			# 0xffffffffc0400000
	ror	$12,$3,15
	addu	$15,$19,$15
	addu	$12,$12,$5
	ori	$13,$13,0xb340
	and	$9,$9,$12
	addu	$15,$15,$12
	xor	$9,$9,$2
	addu	$13,$17,$13
	addu	$9,$9,$10
	addu	$13,$13,$5
	ld	$10,16($sp)
	ror	$9,$9,10
	li	$14,-373948416			# 0xffffffffe9b60000
	addu	$9,$9,$12
	ori	$14,$14,0xc7aa
	xor	$8,$12,$9
	addu	$14,$fp,$14
	and	$8,$8,$5
	addu	$14,$14,$9
	xor	$8,$8,$12
	li	$19,-405602304			# 0xffffffffe7d30000
	addu	$11,$8,$11
	ori	$19,$19,0xfbc8
	ror	$11,$11,27
	addu	$19,$25,$19
	addu	$8,$11,$9
	li	$11,-701562880			# 0xffffffffd62f0000
	xor	$3,$9,$8
	addiu	$11,$11,4189
	and	$12,$3,$12
	addu	$11,$21,$11
	xor	$12,$12,$9
	addu	$11,$11,$8
	addu	$12,$12,$13
	li	$13,38010880			# 0x2440000
	ror	$3,$12,23
	li	$12,-660537344			# 0xffffffffd8a10000
	addu	$3,$3,$8
	ori	$12,$12,0xe681
	xor	$2,$8,$3
	addu	$12,$10,$12
	and	$9,$2,$9
	addiu	$13,$13,5203
	xor	$9,$9,$8
	addu	$13,$7,$13
	addu	$10,$9,$15
	addu	$13,$13,$3
	ld	$15,0($sp)
	ror	$10,$10,18
	li	$25,-187367424			# 0xfffffffff4d50000
	addu	$10,$10,$3
	addiu	$25,$25,3463
	xor	$2,$3,$10
	addu	$12,$12,$10
	and	$8,$2,$8
	addu	$25,$16,$25
	xor	$8,$8,$3
	li	$17,-1019805696			# 0xffffffffc3370000
	addu	$5,$8,$14
	li	$8,568393728			# 0x21e10000
	ld	$14,8($sp)
	ror	$5,$5,12
	ori	$8,$8,0xcde6
	addu	$5,$5,$10
	addu	$8,$15,$8
	xor	$9,$10,$5
	li	$15,1163526144			# 0x455a0000
	and	$3,$9,$3
	addiu	$15,$15,5357
	xor	$2,$3,$10
	addu	$15,$18,$15
	addu	$2,$2,$11
	move	$11,$18
	ror	$2,$2,27
	addu	$19,$19,$5
	sd	$11,72($sp)
	addu	$2,$2,$5
	addiu	$17,$17,2006
	xor	$3,$5,$2
	addu	$8,$8,$2
	and	$10,$3,$10
	ld	$3,32($sp)
	addu	$17,$22,$17
	xor	$10,$10,$5
	addu	$18,$10,$13
	li	$13,-1444741120			# 0xffffffffa9e30000
	ror	$18,$18,23
	ori	$13,$13,0xe905
	addu	$18,$18,$2
	addu	$13,$14,$13
	xor	$9,$2,$18
	addu	$17,$17,$18
	and	$5,$9,$5
	xor	$5,$5,$2
	addu	$16,$5,$12
	li	$12,-51445760			# 0xfffffffffcef0000
	ror	$16,$16,18
	ori	$12,$12,0xa3f8
	addu	$16,$16,$18
	addu	$12,$3,$12
	xor	$3,$18,$16
	addu	$25,$25,$16
	and	$2,$3,$2
	li	$5,1735327744			# 0x676f0000
	xor	$24,$2,$18
	li	$2,-1926627328			# 0xffffffff8d2a0000
	addu	$24,$24,$19
	addiu	$2,$2,19594
	ror	$24,$24,12
	addu	$2,$20,$2
	addu	$24,$24,$16
	addiu	$5,$5,729
	xor	$3,$16,$24
	addu	$15,$15,$24
	and	$18,$3,$18
	addu	$5,$23,$5
	xor	$18,$18,$16
	li	$19,-393216			# 0xfffffffffffa0000
	addu	$14,$18,$8
	li	$18,-2022637568			# 0xffffffff87710000
	ror	$14,$14,27
	ori	$18,$18,0xf681
	addu	$14,$14,$24
	addu	$18,$11,$18
	xor	$10,$24,$14
	addu	$13,$13,$14
	and	$16,$10,$16
	ld	$10,64($sp)
	addiu	$19,$19,14658
	xor	$16,$16,$24
	addu	$19,$21,$19
	addu	$3,$16,$17
	li	$17,1839005696			# 0x6d9d0000
	ror	$3,$3,23
	addiu	$17,$17,24866
	addu	$3,$3,$14
	addu	$17,$10,$17
	xor	$10,$14,$3
	addu	$12,$12,$3
	and	$24,$10,$24
	li	$16,-35323904			# 0xfffffffffde50000
	xor	$11,$24,$14
	ld	$24,24($sp)
	addiu	$16,$16,14348
	addu	$11,$11,$25
	li	$25,-1531052032			# 0xffffffffa4be0000
	ror	$11,$11,18
	ori	$25,$25,0xea44
	addu	$11,$11,$3
	addu	$25,$24,$25
	xor	$8,$3,$11
	li	$24,1272840192			# 0x4bde0000
	and	$14,$8,$14
	ld	$8,48($sp)
	ori	$24,$24,0xcfa9
	xor	$14,$14,$3
	addu	$5,$5,$11
	addu	$10,$14,$15
	addu	$16,$22,$16
	ror	$10,$10,12
	addu	$24,$8,$24
	addu	$10,$10,$11
	li	$15,-155516928			# 0xfffffffff6bb0000
	xor	$9,$11,$10
	addu	$2,$2,$10
	and	$3,$9,$3
	addiu	$15,$15,19296
	xor	$3,$3,$11
	addu	$15,$23,$15
	addu	$8,$3,$13
	li	$14,-1094778880			# 0xffffffffbebf0000
	ror	$8,$8,27
	ori	$14,$14,0xbc70
	addu	$8,$8,$10
	addu	$14,$7,$14
	ld	$7,8($sp)
	xor	$9,$10,$8
	addu	$19,$19,$8
	and	$9,$9,$11
	li	$11,-722534400			# 0xffffffffd4ef0000
	xor	$9,$9,$10
	addiu	$11,$11,12421
	addu	$9,$9,$12
	li	$13,681246720			# 0x289b0000
	ror	$9,$9,23
	addiu	$13,$13,32454
	addu	$9,$9,$8
	addu	$13,$7,$13
	ld	$7,0($sp)
	xor	$3,$8,$9
	addu	$18,$18,$9
	and	$10,$3,$10
	ld	$3,40($sp)
	li	$12,-358547456			# 0xffffffffeaa10000
	xor	$10,$10,$8
	addiu	$12,$12,10234
	addu	$5,$10,$5
	li	$10,76021760			# 0x4880000
	addu	$11,$3,$11
	ld	$3,56($sp)
	ror	$5,$5,18
	addu	$5,$5,$9
	addiu	$10,$10,7429
	addu	$17,$17,$5
	addu	$12,$fp,$12
	addu	$10,$3,$10
	xor	$3,$9,$5
	and	$8,$3,$8
	xor	$8,$8,$9
	li	$9,-640417792			# 0xffffffffd9d40000
	addu	$2,$8,$2
	ori	$9,$9,0xd039
	ror	$2,$2,12
	addu	$9,$7,$9
	ld	$7,16($sp)
	addu	$2,$2,$5
	li	$8,-421855232			# 0xffffffffe6db0000
	xor	$3,$3,$2
	xor	$5,$5,$2
	addu	$3,$3,$19
	addu	$16,$16,$2
	ror	$3,$3,28
	ori	$8,$8,0x99e5
	addu	$3,$3,$2
	addu	$8,$20,$8
	xor	$5,$5,$3
	xor	$2,$2,$3
	addu	$5,$5,$18
	addu	$25,$25,$3
	ld	$18,32($sp)
	ror	$5,$5,21
	li	$19,530710528			# 0x1fa20000
	addu	$5,$5,$3
	addiu	$19,$19,31992
	xor	$2,$2,$5
	xor	$3,$3,$5
	addu	$2,$2,$17
	addu	$24,$24,$5
	ror	$2,$2,16
	addu	$19,$7,$19
	addu	$2,$2,$5
	li	$17,-995360768			# 0xffffffffc4ac0000
	xor	$3,$3,$2
	xor	$5,$5,$2
	addu	$3,$3,$16
	addu	$15,$15,$2
	ld	$16,40($sp)
	ror	$3,$3,9
	addiu	$17,$17,22117
	addu	$3,$3,$2
	addu	$17,$18,$17
	xor	$5,$5,$3
	xor	$2,$2,$3
	addu	$5,$5,$25
	addu	$14,$14,$3
	ror	$5,$5,28
	li	$25,-198639616			# 0xfffffffff4290000
	addu	$5,$5,$3
	addiu	$25,$25,8772
	xor	$2,$2,$5
	xor	$3,$3,$5
	addu	$2,$2,$24
	addu	$13,$13,$5
	ror	$2,$2,21
	li	$24,1126825984			# 0x432a0000
	addu	$2,$2,$5
	ori	$24,$24,0xff97
	xor	$3,$3,$2
	xor	$5,$5,$2
	addu	$3,$3,$15
	addu	$12,$12,$2
	ror	$3,$3,16
	addu	$fp,$fp,$25
	addu	$3,$3,$2
	addu	$23,$23,$24
	ld	$24,24($sp)
	xor	$5,$5,$3
	xor	$2,$2,$3
	addu	$5,$5,$14
	addu	$11,$11,$3
	ror	$5,$5,9
	li	$14,-1416364032			# 0xffffffffab940000
	addu	$5,$5,$3
	addiu	$14,$14,9127
	xor	$2,$2,$5
	xor	$3,$3,$5
	addu	$2,$2,$13
	addu	$10,$10,$5
	ror	$2,$2,28
	addu	$22,$22,$14
	addu	$2,$2,$5
	li	$13,-57475072			# 0xfffffffffc930000
	xor	$3,$3,$2
	xor	$5,$5,$2
	addu	$3,$3,$12
	addu	$9,$9,$2
	ror	$3,$3,21
	ori	$13,$13,0xa039
	addu	$3,$3,$2
	addu	$21,$21,$13
	ld	$13,80($sp)
	xor	$5,$5,$3
	xor	$2,$2,$3
	addu	$5,$5,$11
	addu	$8,$8,$3
	ror	$5,$5,16
	li	$11,1700462592			# 0x655b0000
	addu	$5,$5,$3
	addiu	$11,$11,22979
	xor	$2,$2,$5
	xor	$3,$3,$5
	addu	$2,$2,$10
	addu	$19,$19,$5
	ror	$2,$2,9
	addu	$20,$20,$11
	addu	$2,$2,$5
	li	$10,-1895038976			# 0xffffffff8f0c0000
	xor	$3,$3,$2
	xor	$5,$5,$2
	addu	$3,$3,$9
	addu	$17,$17,$2
	ror	$3,$3,28
	ori	$10,$10,0xcc92
	addu	$3,$3,$2
	addu	$10,$16,$10
	xor	$5,$5,$3
	xor	$2,$2,$3
	addu	$5,$5,$8
	addu	$fp,$fp,$3
	ror	$5,$5,21
	li	$8,-1114112			# 0xffffffffffef0000
	addu	$5,$5,$3
	ori	$8,$8,0xf47d
	xor	$2,$2,$5
	xor	$3,$3,$5
	addu	$2,$2,$19
	nor	$11,$0,$5
	ror	$2,$2,16
	addu	$23,$23,$5
	addu	$5,$2,$5
	addu	$8,$13,$8
	xor	$3,$3,$5
	nor	$12,$0,$5
	addu	$17,$3,$17
	addu	$22,$22,$5
	ld	$3,56($sp)
	ror	$17,$17,9
	li	$15,-2054946816			# 0xffffffff85840000
	addu	$17,$17,$5
	addiu	$15,$15,24017
	or	$11,$11,$17
	nor	$9,$0,$17
	xor	$5,$11,$5
	addu	$21,$21,$17
	ld	$11,72($sp)
	addu	$fp,$5,$fp
	addu	$15,$24,$15
	ror	$fp,$fp,26
	li	$14,1873281024			# 0x6fa80000
	addu	$fp,$fp,$17
	li	$25,-30670848			# 0xfffffffffe2c0000
	or	$12,$12,$fp
	nor	$13,$0,$fp
	xor	$17,$12,$17
	addu	$20,$20,$fp
	addu	$23,$17,$23
	addiu	$14,$14,32335
	ror	$23,$23,22
	ori	$25,$25,0xe6e0
	addu	$23,$23,$fp
	addu	$14,$11,$14
	ld	$11,8($sp)
	or	$9,$9,$23
	nor	$2,$0,$23
	ld	$19,64($sp)
	xor	$fp,$9,$fp
	addu	$10,$10,$23
	ld	$17,120($sp)
	addu	$22,$fp,$22
	addu	$25,$7,$25
	ld	$7,0($sp)
	ror	$22,$22,17
	li	$5,-1560215552			# 0xffffffffa3010000
	ld	$fp,184($sp)
	addu	$22,$22,$23
	addiu	$5,$5,17172
	or	$13,$13,$22
	nor	$9,$0,$22
	xor	$23,$13,$23
	addu	$8,$8,$22
	addu	$21,$23,$21
	addu	$5,$3,$5
	ld	$23,168($sp)
	ror	$21,$21,11
	li	$3,1309147136			# 0x4e080000
	addu	$21,$21,$22
	addiu	$3,$3,4513
	or	$2,$2,$21
	nor	$12,$0,$21
	xor	$22,$2,$22
	addu	$15,$15,$21
	addu	$20,$22,$20
	addu	$3,$11,$3
	ld	$11,48($sp)
	ror	$20,$20,26
	li	$2,-145555456			# 0xfffffffff7530000
	ld	$22,160($sp)
	addu	$20,$20,$21
	addiu	$2,$2,32386
	or	$9,$9,$20
	nor	$24,$0,$20
	xor	$21,$9,$21
	addu	$16,$14,$20
	addu	$10,$21,$10
	addu	$2,$11,$2
	ld	$21,152($sp)
	ror	$10,$10,22
	li	$11,-1120272384			# 0xffffffffbd3a0000
	addu	$10,$10,$20
	li	$9,-343539712			# 0xffffffffeb860000
	or	$13,$12,$10
	nor	$14,$0,$10
	xor	$13,$13,$20
	addu	$25,$25,$10
	ld	$20,144($sp)
	addu	$8,$13,$8
	li	$12,718733312			# 0x2ad70000
	ror	$13,$8,17
	ori	$12,$12,0xd2bb
	addu	$13,$13,$10
	addu	$12,$18,$12
	ld	$18,128($sp)
	or	$24,$24,$13
	nor	$8,$0,$13
	xor	$10,$24,$10
	addu	$24,$5,$13
	addu	$15,$10,$15
	ori	$11,$11,0xf235
	ror	$15,$15,11
	ori	$9,$9,0xd391
	addu	$15,$15,$13
	addu	$11,$19,$11
	ld	$19,136($sp)
	or	$14,$14,$15
	nor	$5,$0,$15
	xor	$14,$14,$13
	addu	$13,$3,$15
	addu	$14,$14,$16
	addu	$9,$7,$9
	ld	$7,88($sp)
	ror	$14,$14,26
	ld	$16,112($sp)
	addu	$14,$14,$15
	or	$8,$8,$14
	nor	$3,$0,$14
	xor	$8,$8,$15
	addu	$10,$2,$14
	addu	$8,$8,$25
	ror	$8,$8,22
	addu	$8,$8,$14
	or	$5,$5,$8
	nor	$2,$0,$8
	xor	$5,$5,$14
	addu	$11,$11,$8
	addu	$5,$5,$24
	ror	$5,$5,17
	addu	$5,$5,$8
	or	$3,$3,$5
	nor	$14,$0,$5
	xor	$3,$3,$8
	addu	$12,$12,$5
	addu	$3,$3,$13
	ror	$3,$3,11
	addu	$3,$3,$5
	or	$2,$2,$3
	nor	$8,$0,$3
	xor	$2,$2,$5
	addu	$9,$9,$3
	addu	$2,$2,$10
	ror	$2,$2,26
	addu	$2,$2,$3
	or	$5,$14,$2
	nor	$10,$0,$2
	xor	$3,$5,$3
	addu	$5,$7,$2
	addu	$11,$3,$11
	sw	$5,0($4)
	ror	$11,$11,22
	ld	$5,104($sp)
	addu	$11,$11,$2
	or	$3,$8,$11
	xor	$2,$3,$2
	addu	$5,$5,$11
	addu	$12,$2,$12
	sw	$5,12($4)
	ror	$12,$12,17
	addu	$12,$12,$11
	or	$2,$10,$12
	addu	$6,$6,$12
	xor	$11,$2,$11
	ld	$2,96($sp)
	daddiu	$sp,$sp,192
	addu	$9,$11,$9
	ror	$9,$9,11
	addu	$7,$2,$12
	addu	$6,$9,$6
	sw	$7,8($4)
	jr	$31
	sw	$6,4($4)

	.set	macro
	.set	reorder
	.end	_ZN4x26512MD5TransformEPjS0_
	.size	_ZN4x26512MD5TransformEPjS0_, .-_ZN4x26512MD5TransformEPjS0_
	.align	2
	.align	3
	.globl	_ZN4x2659MD5UpdateEPNS_10MD5ContextEPhj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659MD5UpdateEPNS_10MD5ContextEPhj
	.type	_ZN4x2659MD5UpdateEPNS_10MD5ContextEPhj, @function
_ZN4x2659MD5UpdateEPNS_10MD5ContextEPhj:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2659MD5UpdateEPNS_10MD5ContextEPhj)))
	sd	$21,40($sp)
	move	$21,$4
	daddu	$28,$28,$25
	sd	$19,24($sp)
	move	$19,$6
	srl	$6,$6,29
	sd	$17,8($sp)
	move	$17,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2659MD5UpdateEPNS_10MD5ContextEPhj)))
	sd	$16,0($sp)
	daddiu	$16,$4,24
	sd	$31,56($sp)
	sd	$20,32($sp)
	sd	$18,16($sp)
	lw	$3,16($4)
	lw	$2,20($4)
	lsa	$5,$19,$3,3
	ext	$4,$3,3,6
	addiu	$7,$2,1
	sltu	$3,$5,$3
	sw	$5,16($21)
	movn	$2,$7,$3
	move	$3,$4
	addu	$2,$6,$2
	beq	$3,$0,.L8
	sw	$2,20($21)

	li	$2,64			# 0x40
	daddu	$4,$16,$3
	subu	$3,$2,$3
	sltu	$2,$19,$3
	bne	$2,$0,.L18
	ld	$25,%call16(memcpy)($28)

	ld	$20,%got_disp(_ZN4x26512MD5TransformEPjS0_)($28)
	dext	$6,$3,0,32
	move	$5,$17
	subu	$19,$19,$3
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$17,$17,$6

	move	$5,$16
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZN4x26512MD5TransformEPjS0_
1:	jalr	$25
	move	$4,$21

.L8:
	sltu	$2,$19,64
	bne	$2,$0,.L11
	addiu	$18,$19,-64

	ld	$20,%got_disp(_ZN4x26512MD5TransformEPjS0_)($28)
	dext	$18,$18,6,26
	daddiu	$18,$18,1
	dsll	$18,$18,6
	daddu	$18,$17,$18
	.align	3
.L12:
	ldl	$11,7($17)
	move	$5,$16
	move	$4,$21
	ldl	$10,15($17)
	move	$25,$20
	ldl	$9,23($17)
	ldl	$8,31($17)
	ldl	$7,39($17)
	ldl	$6,47($17)
	ldl	$3,55($17)
	ldl	$2,63($17)
	ldr	$10,8($17)
	ldr	$9,16($17)
	ldr	$8,24($17)
	ldr	$7,32($17)
	ldr	$6,40($17)
	ldr	$3,48($17)
	ldr	$2,56($17)
	ldr	$11,0($17)
	daddiu	$17,$17,64
	sdl	$11,7($16)
	sdr	$11,0($16)
	sdl	$10,15($16)
	sdr	$10,8($16)
	sdl	$9,23($16)
	sdr	$9,16($16)
	sdl	$8,31($16)
	sdr	$8,24($16)
	sdl	$7,39($16)
	sdr	$7,32($16)
	sdl	$6,47($16)
	sdr	$6,40($16)
	sdl	$3,55($16)
	sdr	$3,48($16)
	sdl	$2,63($16)
	.reloc	1f,R_MIPS_JALR,_ZN4x26512MD5TransformEPjS0_
1:	jalr	$25
	sdr	$2,56($16)

	bne	$17,$18,.L12
	nop

	andi	$19,$19,0x3f
.L11:
	ld	$25,%call16(memcpy)($28)
	dext	$6,$19,0,32
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$4,$16

	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L18:
	dext	$6,$19,0,32
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$5,$17

	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	_ZN4x2659MD5UpdateEPNS_10MD5ContextEPhj
	.size	_ZN4x2659MD5UpdateEPNS_10MD5ContextEPhj, .-_ZN4x2659MD5UpdateEPNS_10MD5ContextEPhj
	.align	2
	.align	3
	.globl	_ZN4x2658MD5FinalEPNS_10MD5ContextEPh
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2658MD5FinalEPNS_10MD5ContextEPh
	.type	_ZN4x2658MD5FinalEPNS_10MD5ContextEPh, @function
_ZN4x2658MD5FinalEPNS_10MD5ContextEPh:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	li	$6,63			# 0x3f
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2658MD5FinalEPNS_10MD5ContextEPh)))
	li	$7,-128			# 0xffffffffffffff80
	sd	$18,16($sp)
	daddu	$28,$28,$25
	daddiu	$18,$4,24
	sd	$17,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2658MD5FinalEPNS_10MD5ContextEPh)))
	move	$17,$5
	sd	$16,0($sp)
	move	$16,$4
	sd	$31,40($sp)
	sd	$19,24($sp)
	lw	$2,16($4)
	ld	$25,%call16(memset)($28)
	ext	$2,$2,3,6
	subu	$6,$6,$2
	daddu	$3,$18,$2
	sltu	$5,$6,8
	daddiu	$4,$3,1
	bne	$5,$0,.L23
	sb	$7,0($3)

	li	$6,55			# 0x37
	ld	$19,%got_disp(_ZN4x26512MD5TransformEPjS0_)($28)
	move	$5,$0
	subu	$6,$6,$2
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	dext	$6,$6,0,32

	lw	$3,16($16)
.L24:
	move	$5,$18
	move	$4,$16
	lw	$2,20($16)
	move	$25,$19
	sw	$3,80($16)
	.reloc	1f,R_MIPS_JALR,_ZN4x26512MD5TransformEPjS0_
1:	jalr	$25
	sw	$2,84($16)

	li	$6,88			# 0x58
	ldl	$3,7($16)
	move	$5,$0
	ldl	$2,15($16)
	ld	$25,%call16(memset)($28)
	ldr	$3,0($16)
	ldr	$2,8($16)
	sdl	$3,7($17)
	sdr	$3,0($17)
	sdl	$2,15($17)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sdr	$2,8($17)

	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.align	3
.L23:
	ld	$19,%got_disp(_ZN4x26512MD5TransformEPjS0_)($28)
	dext	$6,$6,0,32
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$0

	move	$5,$18
	move	$25,$19
	.reloc	1f,R_MIPS_JALR,_ZN4x26512MD5TransformEPjS0_
1:	jalr	$25
	move	$4,$16

	ld	$25,%call16(memset)($28)
	li	$6,56			# 0x38
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$4,$18

	b	.L24
	lw	$3,16($16)

	.set	macro
	.set	reorder
	.end	_ZN4x2658MD5FinalEPNS_10MD5ContextEPh
	.size	_ZN4x2658MD5FinalEPNS_10MD5ContextEPh, .-_ZN4x2658MD5FinalEPNS_10MD5ContextEPh
	.ident	"GCC: (GNU) 7.3.0"
