	.file	1 "dct.cpp"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL14fastForwardDstPKsPsi
	.type	_ZL14fastForwardDstPKsPsi, @function
_ZL14fastForwardDstPKsPsi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$6,-1
	li	$9,1			# 0x1
	daddiu	$sp,$sp,-16
	sll	$9,$9,$2
	daddiu	$10,$4,32
.L2:
	lh	$3,0($4)
	daddiu	$4,$4,8
	daddiu	$5,$5,2
	lh	$11,-2($4)
	lh	$12,-6($4)
	lh	$13,-4($4)
	addu	$15,$3,$11
	addu	$11,$11,$12
	sll	$8,$15,3
	lsa	$7,$11,$11,2
	lsa	$2,$13,$13,3
	subu	$8,$8,$15
	lsa	$7,$7,$11,1
	lsa	$2,$2,$13,2
	lsa	$8,$8,$15,2
	lsa	$7,$7,$7,2
	sll	$13,$2,1
	addu	$8,$8,$7
	subu	$12,$3,$12
	addu	$8,$8,$13
	sll	$7,$12,3
	addu	$8,$8,$9
	lsa	$3,$12,$12,2
	sra	$8,$8,$6
	subu	$7,$7,$12
	sh	$8,-2($5)
	lsa	$2,$3,$12,1
	lsa	$3,$7,$12,2
	lh	$8,-8($4)
	lsa	$14,$15,$15,2
	sll	$24,$11,4
	lh	$25,-6($4)
	lsa	$14,$14,$15,1
	subu	$15,$11,$24
	lh	$12,-2($4)
	lsa	$14,$14,$14,2
	lsa	$2,$2,$2,2
	lsa	$11,$15,$11,1
	addu	$3,$3,$14
	addu	$7,$8,$25
	addu	$2,$2,$11
	subu	$8,$7,$12
	subu	$3,$3,$13
	lsa	$7,$8,$8,3
	addu	$2,$2,$13
	lsa	$7,$7,$8,2
	addu	$3,$3,$9
	lsa	$7,$7,$9,1
	addu	$2,$2,$9
	sra	$7,$7,$6
	sra	$3,$3,$6
	sra	$2,$2,$6
	sh	$7,6($5)
	sh	$3,14($5)
	bne	$10,$4,.L2
	sh	$2,22($5)

	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZL14fastForwardDstPKsPsi
	.size	_ZL14fastForwardDstPKsPsi, .-_ZL14fastForwardDstPKsPsi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL10inversedstPKsPsi
	.type	_ZL10inversedstPKsPsi, @function
_ZL10inversedstPKsPsi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$6,-1
	li	$7,1			# 0x1
	daddiu	$sp,$sp,-48
	sll	$7,$7,$2
	daddiu	$13,$4,8
	li	$12,32767			# 0x7fff
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
.L11:
	lh	$15,0($4)
	li	$11,-32768			# 0xffffffffffff8000
	li	$10,-32768			# 0xffffffffffff8000
	lh	$24,16($4)
	li	$9,-32768			# 0xffffffffffff8000
	li	$8,-32768			# 0xffffffffffff8000
	lh	$19,24($4)
	lh	$25,8($4)
	addu	$17,$15,$24
	addu	$24,$24,$19
	sll	$3,$17,3
	lsa	$16,$24,$24,2
	sll	$2,$24,4
	subu	$3,$3,$17
	lsa	$16,$16,$24,1
	subu	$15,$15,$19
	subu	$2,$24,$2
	lsa	$3,$3,$17,2
	lsa	$16,$16,$16,2
	lsa	$24,$2,$24,1
	lsa	$18,$17,$17,2
	lsa	$14,$25,$25,3
	addu	$3,$3,$16
	lsa	$2,$15,$15,2
	sll	$16,$15,3
	lsa	$18,$18,$17,1
	lsa	$14,$14,$25,2
	lsa	$2,$2,$15,1
	subu	$16,$16,$15
	sll	$25,$14,1
	lsa	$15,$16,$15,2
	lsa	$18,$18,$18,2
	lsa	$2,$2,$2,2
	addu	$14,$18,$15
	addu	$2,$2,$24
	addu	$3,$3,$25
	addu	$2,$2,$25
	subu	$14,$14,$25
	addu	$3,$3,$7
	sra	$3,$3,$6
	addu	$2,$2,$7
	addu	$14,$14,$7
	sra	$2,$2,$6
	sra	$14,$14,$6
	slt	$16,$3,-32768
	slt	$25,$2,-32768
	slt	$15,$14,-32768
	slt	$18,$3,32767
	slt	$17,$2,32767
	slt	$24,$14,32767
	seh	$3,$3
	seh	$2,$2
	bne	$16,$0,.L7
	seh	$14,$14

	movz	$3,$12,$18
	move	$11,$3
.L7:
	bne	$25,$0,.L8
	sh	$11,0($5)

	movz	$2,$12,$17
	move	$10,$2
.L8:
	sh	$10,2($5)
	daddiu	$4,$4,2
	lh	$10,14($4)
	lh	$2,-2($4)
	lh	$3,22($4)
	subu	$2,$2,$10
	addu	$3,$2,$3
	lsa	$2,$3,$3,3
	lsa	$2,$2,$3,2
	lsa	$2,$2,$7,1
	sra	$2,$2,$6
	slt	$3,$2,-32768
	bne	$3,$0,.L9
	slt	$10,$2,32767

	seh	$9,$2
	movz	$9,$12,$10
.L9:
	bne	$15,$0,.L10
	sh	$9,4($5)

	move	$8,$14
	movz	$8,$12,$24
.L10:
	sh	$8,6($5)
	bne	$4,$13,.L11
	daddiu	$5,$5,8

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZL10inversedstPKsPsi
	.size	_ZL10inversedstPKsPsi, .-_ZL10inversedstPKsPsi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL16dequant_normal_cPKsPsiii
	.type	_ZL16dequant_normal_cPKsPsiii, @function
_ZL16dequant_normal_cPKsPsiii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$8,-1
	li	$10,1			# 0x1
	blez	$6,.L30
	sll	$10,$10,$2

	addiu	$6,$6,-1
	daddiu	$2,$4,2
	dext	$6,$6,0,32
	li	$12,32767			# 0x7fff
	dlsa	$6,$6,$2,1
	.align	3
.L25:
	lh	$2,0($4)
	li	$3,-32768			# 0xffffffffffff8000
	daddiu	$4,$4,2
	mul	$9,$2,$7
	addu	$2,$9,$10
	sra	$2,$2,$8
	slt	$9,$2,-32768
	bne	$9,$0,.L24
	slt	$11,$2,32767

	seh	$2,$2
	movz	$2,$12,$11
	move	$3,$2
.L24:
	sh	$3,0($5)
	bne	$4,$6,.L25
	daddiu	$5,$5,2

.L30:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZL16dequant_normal_cPKsPsiii
	.size	_ZL16dequant_normal_cPKsPsiii, .-_ZL16dequant_normal_cPKsPsiii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL17dequant_scaling_cPKsPKiPsiii
	.type	_ZL17dequant_scaling_cPKsPKiPsiii, @function
_ZL17dequant_scaling_cPKsPKiPsiii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$9,$9,4
	slt	$2,$8,$9
	beq	$2,$0,.L32
	li	$10,1			# 0x1

	subu	$8,$9,$8
	addiu	$2,$8,-1
	blez	$7,.L50
	sll	$10,$10,$2

	addiu	$3,$7,-1
	daddiu	$2,$4,2
	dext	$3,$3,0,32
	li	$12,32767			# 0x7fff
	dlsa	$3,$3,$2,1
	.align	3
.L35:
	lh	$2,0($4)
	li	$7,-32768			# 0xffffffffffff8000
	daddiu	$4,$4,2
	lw	$9,0($5)
	daddiu	$5,$5,4
	mul	$11,$2,$9
	addu	$2,$11,$10
	sra	$2,$2,$8
	slt	$9,$2,-32768
	bne	$9,$0,.L34
	slt	$11,$2,32767

	seh	$2,$2
	movz	$2,$12,$11
	move	$7,$2
.L34:
	sh	$7,0($6)
	bne	$4,$3,.L35
	daddiu	$6,$6,2

.L50:
	jr	$31
	nop

	.align	3
.L32:
	bgtz	$7,.L47
	addiu	$3,$7,-1

	jr	$31
	nop

	.align	3
.L47:
	daddiu	$2,$4,2
	dext	$3,$3,0,32
	subu	$8,$8,$9
	dlsa	$3,$3,$2,1
	b	.L38
	li	$11,32767			# 0x7fff

	.align	3
.L48:
	movz	$2,$11,$9
.L36:
	sll	$2,$2,$8
	daddiu	$4,$4,2
	slt	$9,$2,-32768
	slt	$10,$2,32767
	li	$7,-32768			# 0xffffffffffff8000
	bne	$9,$0,.L37
	seh	$2,$2

	movz	$2,$11,$10
	move	$7,$2
.L37:
	sh	$7,0($6)
	daddiu	$5,$5,4
	beq	$4,$3,.L50
	daddiu	$6,$6,2

.L38:
	lw	$7,0($5)
	lh	$2,0($4)
	gsmultu	$2,$2,$7
	slt	$7,$2,-32768
	beq	$7,$0,.L48
	slt	$9,$2,32767

	b	.L36
	li	$2,-32768			# 0xffffffffffff8000

	.set	macro
	.set	reorder
	.end	_ZL17dequant_scaling_cPKsPKiPsiii
	.size	_ZL17dequant_scaling_cPKsPKiPsiii, .-_ZL17dequant_scaling_cPKsPKiPsiii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL7quant_cPKsPKiPiPsiii
	.type	_ZL7quant_cPKsPKiPiPsiii, @function
_ZL7quant_cPKsPKiPiPsiii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$10,.L56
	addiu	$13,$10,-1

	daddiu	$sp,$sp,-16
	daddiu	$2,$4,2
	dext	$13,$13,0,32
	sd	$16,0($sp)
	dlsa	$13,$13,$2,1
	addiu	$14,$8,-8
	move	$2,$0
	li	$24,1			# 0x1
	b	.L55
	li	$15,-1			# 0xffffffffffffffff

	.align	3
.L54:
	sh	$12,0($7)
	beq	$13,$4,.L67
	daddiu	$7,$7,2

.L55:
	lh	$3,0($4)
	move	$16,$15
	daddiu	$4,$4,2
	lw	$25,0($5)
	move	$12,$0
	daddiu	$5,$5,4
	daddiu	$6,$6,4
	sra	$11,$3,31
	slt	$10,$3,0
	movz	$16,$24,$10
	xor	$3,$11,$3
	subu	$3,$3,$11
	gsmultu	$3,$3,$25
	addu	$11,$3,$9
	sra	$11,$11,$8
	sll	$25,$11,$8
	gsmultu	$10,$16,$11
	subu	$3,$3,$25
	sra	$3,$3,$14
	beq	$11,$0,.L54
	sw	$3,-4($6)

	slt	$3,$10,-32768
	li	$12,-32768			# 0xffffffffffff8000
	bne	$3,$0,.L54
	addiu	$2,$2,1

	slt	$3,$10,32767
	beq	$3,$0,.L54
	li	$12,32767			# 0x7fff

	b	.L54
	seh	$12,$10

	.align	3
.L67:
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L56:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZL7quant_cPKsPKiPiPsiii
	.size	_ZL7quant_cPKsPKiPiPsiii, .-_ZL7quant_cPKsPKiPiPsiii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL8nquant_cPKsPKiPsiii
	.type	_ZL8nquant_cPKsPKiPsiii, @function
_ZL8nquant_cPKsPKiPsiii:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	blez	$9,.L73
	addiu	$12,$9,-1

	daddiu	$2,$4,2
	dext	$12,$12,0,32
	li	$15,1			# 0x1
	dlsa	$12,$12,$2,1
	li	$14,-1			# 0xffffffffffffffff
	b	.L72
	move	$2,$0

	.align	3
.L71:
	sh	$11,0($6)
	beq	$12,$4,.L69
	daddiu	$6,$6,2

.L72:
	lh	$3,0($4)
	move	$24,$14
	daddiu	$4,$4,2
	lw	$13,0($5)
	move	$11,$0
	daddiu	$5,$5,4
	sra	$10,$3,31
	slt	$9,$3,0
	movz	$24,$15,$9
	xor	$3,$10,$3
	subu	$3,$3,$10
	mul	$10,$3,$13
	addu	$3,$10,$8
	sra	$3,$3,$7
	beq	$3,$0,.L71
	gsmultu	$9,$24,$3

	slt	$3,$9,-32768
	li	$11,-32768			# 0xffffffffffff8000
	bne	$3,$0,.L71
	addiu	$2,$2,1

	slt	$3,$9,32767
	beq	$3,$0,.L71
	li	$11,32767			# 0x7fff

	sra	$3,$9,31
	xor	$9,$3,$9
	subu	$3,$9,$3
	b	.L71
	seh	$11,$3

	.align	3
.L73:
	move	$2,$0
.L69:
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZL8nquant_cPKsPKiPsiii
	.size	_ZL8nquant_cPKsPKiPsiii, .-_ZL8nquant_cPKsPKiPsiii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL12denoiseDct_cPsPjPKti
	.type	_ZL12denoiseDct_cPsPjPKti, @function
_ZL12denoiseDct_cPsPjPKti:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$7,.L89
	addiu	$9,$7,-1

	daddiu	$2,$4,2
	dext	$9,$9,0,32
	b	.L84
	dlsa	$9,$9,$2,1

	.align	3
.L88:
	subu	$7,$3,$7
	daddiu	$4,$4,2
	seh	$7,$7
	daddiu	$5,$5,4
	sh	$7,-2($4)
	beq	$9,$4,.L89
	daddiu	$6,$6,2

.L84:
	lh	$3,0($4)
	lw	$8,0($5)
	lhu	$10,0($6)
	sra	$7,$3,31
	addu	$2,$3,$7
	xor	$2,$2,$7
	addu	$8,$8,$2
	subu	$2,$2,$10
	xor	$3,$2,$7
	bgez	$2,.L88
	sw	$8,0($5)

	move	$7,$0
	daddiu	$4,$4,2
	sh	$7,-2($4)
	daddiu	$5,$5,4
	bne	$9,$4,.L84
	daddiu	$6,$6,2

.L89:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZL12denoiseDct_cPsPjPKti
	.size	_ZL12denoiseDct_cPsPjPKti, .-_ZL12denoiseDct_cPsPjPKti
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL18findPosFirstLast_cPKslPKt
	.type	_ZL18findPosFirstLast_cPKslPKt, @function
_ZL18findPosFirstLast_cPKslPKt:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$8,$6,30
	li	$7,15			# 0xf
	b	.L93
	li	$9,-1			# 0xffffffffffffffff

	.align	3
.L104:
	addiu	$7,$7,-1
	beq	$7,$9,.L103
	li	$10,-256			# 0xffffffffffffff00

.L93:
	lhu	$3,0($8)
	dsrl	$2,$3,2
	andi	$3,$3,0x3
	gsdmultu	$2,$2,$5
	daddu	$2,$2,$3
	dlsa	$2,$2,$4,1
	lh	$2,0($2)
	beq	$2,$0,.L104
	daddiu	$8,$8,-2

	sll	$10,$7,8
.L92:
	move	$9,$6
	move	$8,$0
	b	.L96
	li	$11,16			# 0x10

	.align	3
.L106:
	addiu	$8,$8,1
	beq	$8,$11,.L105
	move	$2,$0

.L96:
	lhu	$3,0($9)
	dsrl	$2,$3,2
	andi	$3,$3,0x3
	gsdmultu	$2,$2,$5
	daddu	$2,$2,$3
	dlsa	$2,$2,$4,1
	lh	$2,0($2)
	beq	$2,$0,.L106
	daddiu	$9,$9,2

	slt	$3,$7,$8
	move	$9,$8
	bne	$3,$0,.L95
	move	$2,$0

	subu	$3,$7,$8
	daddiu	$2,$6,2
	dext	$3,$3,0,32
	dlsa	$6,$8,$6,1
	daddu	$3,$3,$8
	move	$8,$0
	dlsa	$3,$3,$2,1
	.align	3
.L97:
	lhu	$7,0($6)
	daddiu	$6,$6,2
	dsrl	$2,$7,2
	andi	$7,$7,0x3
	gsdmultu	$2,$2,$5
	daddu	$2,$2,$7
	dlsa	$2,$2,$4,1
	lh	$7,0($2)
	bne	$3,$6,.L97
	addu	$8,$7,$8

	sll	$2,$8,31
.L95:
	or	$10,$9,$10
	jr	$31
	or	$2,$10,$2

	.align	3
.L103:
	b	.L92
	li	$7,-1			# 0xffffffffffffffff

	.align	3
.L105:
	li	$9,16			# 0x10
	or	$10,$9,$10
	jr	$31
	or	$2,$10,$2

	.set	macro
	.set	reorder
	.end	_ZL18findPosFirstLast_cPKslPKt
	.size	_ZL18findPosFirstLast_cPKslPKt, .-_ZL18findPosFirstLast_cPKslPKt
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL14costC1C2Flag_cPtlPhl
	.type	_ZL14costC1C2Flag_cPtlPhl, @function
_ZL14costC1C2Flag_cPtlPhl:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$13,$0
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL14costC1C2Flag_cPtlPhl)))
	li	$12,-2			# 0xfffffffffffffffe
	daddu	$28,$28,$25
	sd	$20,32($sp)
	li	$25,8			# 0x8
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL14costC1C2Flag_cPtlPhl)))
	sd	$19,24($sp)
	li	$20,2			# 0x2
	sd	$18,16($sp)
	li	$9,1			# 0x1
	move	$24,$0
	sd	$17,8($sp)
	li	$19,3			# 0x3
	li	$18,9			# 0x9
	sd	$16,0($sp)
	ld	$17,%got_disp(_ZN4x26511g_nextStateE)($28)
	b	.L111
	ld	$16,%got_disp(_ZN4x26513g_entropyBitsE)($28)

	.align	3
.L113:
	move	$12,$0
.L108:
	addu	$2,$20,$8
	bne	$2,$19,.L109
	addu	$8,$25,$8

	sltu	$14,$14,3
	sltu	$20,$14,1
.L109:
	bne	$8,$18,.L110
	nop

	sll	$25,$13,0
.L110:
	daddiu	$13,$13,1
	slt	$2,$13,$5
	beq	$2,$0,.L116
	daddiu	$4,$4,2

.L111:
	dext	$10,$9,0,32
	lhu	$14,0($4)
	move	$9,$0
	daddu	$10,$6,$10
	lbu	$3,0($10)
	sltu	$15,$14,2
	sltu	$8,$15,1
	dlsa	$11,$3,$17,1
	xor	$3,$8,$3
	daddu	$11,$11,$8
	dlsa	$3,$3,$16,2
	lbu	$11,0($11)
	lw	$2,0($3)
	sb	$11,0($10)
	beq	$15,$0,.L113
	addu	$24,$2,$24

	andi	$9,$12,0x3
	b	.L108
	dext	$12,$12,2,30

	.align	3
.L116:
	bne	$9,$0,.L112
	daddu	$6,$6,$7

	lbu	$2,0($6)
	xor	$3,$20,$2
	dlsa	$17,$2,$17,1
	dlsa	$16,$3,$16,2
	daddu	$14,$17,$20
	lw	$3,0($16)
	lbu	$2,0($14)
	addu	$24,$3,$24
	sb	$2,0($6)
.L112:
	sll	$9,$9,26
	sll	$25,$25,28
	ld	$28,40($sp)
	addu	$9,$9,$25
	ext	$2,$24,0,24
	ld	$20,32($sp)
	ld	$19,24($sp)
	addu	$2,$9,$2
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZL14costC1C2Flag_cPtlPhl
	.size	_ZL14costC1C2Flag_cPtlPhl, .-_ZL14costC1C2Flag_cPtlPhl
	.section	.text._Z15count_nonzero_cILi4EEiPKs,"axG",@progbits,_Z15count_nonzero_cILi4EEiPKs,comdat
	.align	2
	.align	3
	.weak	_Z15count_nonzero_cILi4EEiPKs
	.set	nomips16
	.set	nomicromips
	.ent	_Z15count_nonzero_cILi4EEiPKs
	.type	_Z15count_nonzero_cILi4EEiPKs, @function
_Z15count_nonzero_cILi4EEiPKs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$3,$0
	daddiu	$5,$4,32
	.align	3
.L118:
	lh	$2,0($4)
	daddiu	$4,$4,2
	sltu	$2,$0,$2
	addu	$2,$2,$3
	bne	$5,$4,.L118
	move	$3,$2

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z15count_nonzero_cILi4EEiPKs
	.size	_Z15count_nonzero_cILi4EEiPKs, .-_Z15count_nonzero_cILi4EEiPKs
	.section	.text._Z15count_nonzero_cILi8EEiPKs,"axG",@progbits,_Z15count_nonzero_cILi8EEiPKs,comdat
	.align	2
	.align	3
	.weak	_Z15count_nonzero_cILi8EEiPKs
	.set	nomips16
	.set	nomicromips
	.ent	_Z15count_nonzero_cILi8EEiPKs
	.type	_Z15count_nonzero_cILi8EEiPKs, @function
_Z15count_nonzero_cILi8EEiPKs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$3,$0
	daddiu	$5,$4,128
	.align	3
.L122:
	lh	$2,0($4)
	daddiu	$4,$4,2
	sltu	$2,$0,$2
	addu	$2,$2,$3
	bne	$5,$4,.L122
	move	$3,$2

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z15count_nonzero_cILi8EEiPKs
	.size	_Z15count_nonzero_cILi8EEiPKs, .-_Z15count_nonzero_cILi8EEiPKs
	.section	.text._Z15count_nonzero_cILi16EEiPKs,"axG",@progbits,_Z15count_nonzero_cILi16EEiPKs,comdat
	.align	2
	.align	3
	.weak	_Z15count_nonzero_cILi16EEiPKs
	.set	nomips16
	.set	nomicromips
	.ent	_Z15count_nonzero_cILi16EEiPKs
	.type	_Z15count_nonzero_cILi16EEiPKs, @function
_Z15count_nonzero_cILi16EEiPKs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$3,$0
	daddiu	$5,$4,512
	.align	3
.L126:
	lh	$2,0($4)
	daddiu	$4,$4,2
	sltu	$2,$0,$2
	addu	$2,$2,$3
	bne	$5,$4,.L126
	move	$3,$2

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z15count_nonzero_cILi16EEiPKs
	.size	_Z15count_nonzero_cILi16EEiPKs, .-_Z15count_nonzero_cILi16EEiPKs
	.section	.text._Z15count_nonzero_cILi32EEiPKs,"axG",@progbits,_Z15count_nonzero_cILi32EEiPKs,comdat
	.align	2
	.align	3
	.weak	_Z15count_nonzero_cILi32EEiPKs
	.set	nomips16
	.set	nomicromips
	.ent	_Z15count_nonzero_cILi32EEiPKs
	.type	_Z15count_nonzero_cILi32EEiPKs, @function
_Z15count_nonzero_cILi32EEiPKs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$3,$0
	daddiu	$5,$4,2048
	.align	3
.L130:
	lh	$2,0($4)
	daddiu	$4,$4,2
	sltu	$2,$0,$2
	addu	$2,$2,$3
	bne	$5,$4,.L130
	move	$3,$2

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z15count_nonzero_cILi32EEiPKs
	.size	_Z15count_nonzero_cILi32EEiPKs, .-_Z15count_nonzero_cILi32EEiPKs
	.section	.text._Z10copy_countILi4EEjPsPKsl,"axG",@progbits,_Z10copy_countILi4EEjPsPKsl,comdat
	.align	2
	.align	3
	.weak	_Z10copy_countILi4EEjPsPKsl
	.set	nomips16
	.set	nomicromips
	.ent	_Z10copy_countILi4EEjPsPKsl
	.type	_Z10copy_countILi4EEjPsPKsl, @function
_Z10copy_countILi4EEjPsPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$6,$6,1
	daddiu	$10,$4,32
	move	$8,$0
.L135:
	daddiu	$9,$5,8
	move	$7,$4
	move	$3,$5
.L134:
	lh	$2,0($3)
	daddiu	$7,$7,2
	daddiu	$3,$3,2
	sh	$2,-2($7)
	lh	$2,-2($3)
	sltu	$2,$0,$2
	addu	$2,$2,$8
	bne	$3,$9,.L134
	move	$8,$2

	daddiu	$4,$4,8
	bne	$4,$10,.L135
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z10copy_countILi4EEjPsPKsl
	.size	_Z10copy_countILi4EEjPsPKsl, .-_Z10copy_countILi4EEjPsPKsl
	.section	.text._Z10copy_countILi8EEjPsPKsl,"axG",@progbits,_Z10copy_countILi8EEjPsPKsl,comdat
	.align	2
	.align	3
	.weak	_Z10copy_countILi8EEjPsPKsl
	.set	nomips16
	.set	nomicromips
	.ent	_Z10copy_countILi8EEjPsPKsl
	.type	_Z10copy_countILi8EEjPsPKsl, @function
_Z10copy_countILi8EEjPsPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$6,$6,1
	daddiu	$10,$4,128
	move	$8,$0
	.align	3
.L141:
	daddiu	$9,$5,16
	move	$7,$4
	move	$3,$5
	.align	3
.L140:
	lh	$2,0($3)
	daddiu	$7,$7,2
	daddiu	$3,$3,2
	sh	$2,-2($7)
	lh	$2,-2($3)
	sltu	$2,$0,$2
	addu	$2,$2,$8
	bne	$3,$9,.L140
	move	$8,$2

	daddiu	$4,$4,16
	bne	$4,$10,.L141
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z10copy_countILi8EEjPsPKsl
	.size	_Z10copy_countILi8EEjPsPKsl, .-_Z10copy_countILi8EEjPsPKsl
	.section	.text._Z10copy_countILi16EEjPsPKsl,"axG",@progbits,_Z10copy_countILi16EEjPsPKsl,comdat
	.align	2
	.align	3
	.weak	_Z10copy_countILi16EEjPsPKsl
	.set	nomips16
	.set	nomicromips
	.ent	_Z10copy_countILi16EEjPsPKsl
	.type	_Z10copy_countILi16EEjPsPKsl, @function
_Z10copy_countILi16EEjPsPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$6,$6,1
	daddiu	$10,$4,512
	move	$8,$0
	.align	3
.L147:
	daddiu	$9,$5,32
	move	$7,$4
	move	$3,$5
	.align	3
.L146:
	lh	$2,0($3)
	daddiu	$7,$7,2
	daddiu	$3,$3,2
	sh	$2,-2($7)
	lh	$2,-2($3)
	sltu	$2,$0,$2
	addu	$2,$2,$8
	bne	$3,$9,.L146
	move	$8,$2

	daddiu	$4,$4,32
	bne	$4,$10,.L147
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z10copy_countILi16EEjPsPKsl
	.size	_Z10copy_countILi16EEjPsPKsl, .-_Z10copy_countILi16EEjPsPKsl
	.section	.text._Z10copy_countILi32EEjPsPKsl,"axG",@progbits,_Z10copy_countILi32EEjPsPKsl,comdat
	.align	2
	.align	3
	.weak	_Z10copy_countILi32EEjPsPKsl
	.set	nomips16
	.set	nomicromips
	.ent	_Z10copy_countILi32EEjPsPKsl
	.type	_Z10copy_countILi32EEjPsPKsl, @function
_Z10copy_countILi32EEjPsPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$6,$6,1
	daddiu	$10,$4,2048
	move	$8,$0
	.align	3
.L153:
	daddiu	$9,$5,64
	move	$7,$4
	move	$3,$5
	.align	3
.L152:
	lh	$2,0($3)
	daddiu	$7,$7,2
	daddiu	$3,$3,2
	sh	$2,-2($7)
	lh	$2,-2($3)
	sltu	$2,$0,$2
	addu	$2,$2,$8
	bne	$3,$9,.L152
	move	$8,$2

	daddiu	$4,$4,64
	bne	$4,$10,.L153
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z10copy_countILi32EEjPsPKsl
	.size	_Z10copy_countILi32EEjPsPKsl, .-_Z10copy_countILi32EEjPsPKsl
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL17costCoeffRemain_cPtii
	.type	_ZL17costCoeffRemain_cPtii, @function
_ZL17costCoeffRemain_cPtii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dlsa	$4,$6,$4,1
	li	$10,3			# 0x3
	move	$2,$0
	move	$9,$0
	li	$14,1			# 0x1
	li	$13,3			# 0x3
	.align	3
.L161:
	lhu	$8,0($4)
	slt	$3,$6,8
	addu	$7,$9,$2
	movz	$10,$14,$3
	sll	$3,$13,$9
	addiu	$6,$6,1
	addiu	$7,$7,4
	subu	$11,$8,$10
	slt	$3,$3,$8
	srl	$8,$11,$9
	slt	$12,$6,$5
	daddiu	$4,$4,2
	addiu	$8,$8,-3
	bltz	$11,.L159
	li	$10,2			# 0x2

	addiu	$2,$8,1
	dext	$11,$9,2,30
	clz	$2,$2
	bltz	$8,.L160
	addiu	$15,$9,1

	xori	$2,$2,0x1f
	sll	$8,$2,1
.L160:
	beq	$3,$0,.L159
	addu	$2,$8,$7

	subu	$9,$15,$11
.L159:
	bne	$12,$0,.L161
	nop

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZL17costCoeffRemain_cPtii
	.size	_ZL17costCoeffRemain_cPtii, .-_ZL17costCoeffRemain_cPtii
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.ascii	"/home/loongson/chenzeshuai/x265_v2.6/source/common/dct.c"
	.ascii	"pp\000"
	.align	3
.LC1:
	.ascii	"numNonZero <= 15\000"
	.align	3
.LC2:
	.ascii	"blkPos <= 15\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL14costCoeffNxN_cPKtPKslPtPKhjPhiii
	.type	_ZL14costCoeffNxN_cPKtPKslPtPKhjPhiii, @function
_ZL14costCoeffNxN_cPKtPKslPtPKhjPhiii:
	.frame	$sp,144,$31		# vars= 64, regs= 9/0, args= 0, gp= 0
	.mask	0x907f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-144
	dsll	$6,$6,1
	lw	$12,144($sp)
	daddiu	$15,$sp,31
	sd	$28,128($sp)
	dsrl	$15,$15,5
	lui	$28,%hi(%neg(%gp_rel(_ZL14costCoeffNxN_cPKtPKslPtPKhjPhiii)))
	lw	$14,152($sp)
	dsll	$15,$15,5
	daddu	$28,$28,$25
	slt	$24,$12,15
	sd	$20,104($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL14costCoeffNxN_cPKtPKslPtPKhjPhiii)))
	move	$13,$24
	move	$2,$15
	sd	$31,136($sp)
	dsll	$24,$24,1
	daddiu	$20,$15,32
	sd	$22,120($sp)
	sd	$21,112($sp)
	sd	$19,96($sp)
	sd	$18,88($sp)
	sd	$17,80($sp)
	sd	$16,72($sp)
.L165:
	lh	$17,0($5)
	daddiu	$2,$2,8
	lh	$16,2($5)
	lh	$25,4($5)
	lh	$3,6($5)
	sra	$22,$17,31
	daddu	$5,$5,$6
	sra	$21,$16,31
	xor	$17,$22,$17
	sra	$19,$25,31
	xor	$16,$21,$16
	sra	$18,$3,31
	xor	$25,$19,$25
	xor	$3,$18,$3
	subu	$17,$17,$22
	subu	$16,$16,$21
	subu	$25,$25,$19
	sh	$17,-8($2)
	subu	$3,$3,$18
	sh	$16,-6($2)
	sh	$25,-4($2)
	bne	$20,$2,.L165
	sh	$3,-2($2)

	ld	$16,%got_disp(x265_entropyStateBits)($28)
	dlsa	$4,$12,$4,1
	move	$2,$0
	li	$25,1			# 0x1
	.align	3
.L171:
	lhu	$5,0($4)
	addu	$3,$14,$12
	andi	$6,$9,0x1
	sltu	$3,$0,$3
	dext	$9,$9,1,31
	dsubu	$3,$0,$3
	bne	$12,$0,.L166
	move	$17,$5

	beq	$14,$0,.L166
	nop

	bne	$13,$0,.L166
	nop

	sltu	$3,$5,16
	bne	$3,$0,.L183
	dlsa	$15,$17,$15,1

.L174:
	ld	$7,%got_page(_ZZL14costCoeffNxN_cPKtPKslPtPKhjPhiiiE19__PRETTY_FUNCTION__)($28)
	li	$6,877			# 0x36d
	ld	$5,%got_page(.LC0)($28)
	ld	$4,%got_page(.LC2)($28)
	ld	$25,%call16(__assert_fail)($28)
	daddiu	$7,$7,%got_ofst(_ZZL14costCoeffNxN_cPKtPKslPtPKhjPhiiiE19__PRETTY_FUNCTION__)
	daddiu	$5,$5,%got_ofst(.LC0)
	.reloc	1f,R_MIPS_JALR,__assert_fail
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC2)

	.align	3
.L166:
	daddu	$5,$8,$5
	lbu	$5,0($5)
	addu	$5,$5,$11
	and	$3,$5,$3
	dext	$3,$3,0,32
	daddu	$3,$10,$3
	lbu	$18,0($3)
	xor	$5,$18,$6
	dlsa	$19,$5,$16,2
	beq	$5,$25,.L175
	lw	$19,0($19)

	srl	$5,$19,24
	andi	$18,$18,0x1
	addu	$5,$5,$18
.L168:
	sltu	$18,$13,16
	sb	$5,0($3)
	beq	$18,$0,.L184
	addu	$2,$2,$19

	sltu	$3,$17,16
	beq	$3,$0,.L174
	dext	$3,$13,0,32

	dlsa	$17,$17,$15,1
	lhu	$5,0($17)
	dlsa	$3,$3,$7,1
	addiu	$12,$12,-1
	dsubu	$3,$3,$24
	addu	$13,$13,$6
	daddiu	$4,$4,-2
	bgez	$12,.L171
	sh	$5,0($3)

	b	.L185
	ld	$31,136($sp)

	.align	3
.L175:
	b	.L168
	move	$5,$6

	.align	3
.L183:
	dsubu	$7,$7,$24
	lhu	$3,0($15)
	sh	$3,0($7)
	ld	$31,136($sp)
.L185:
	ext	$2,$2,0,24
	ld	$28,128($sp)
	ld	$22,120($sp)
	ld	$21,112($sp)
	ld	$20,104($sp)
	ld	$19,96($sp)
	ld	$18,88($sp)
	ld	$17,80($sp)
	ld	$16,72($sp)
	jr	$31
	daddiu	$sp,$sp,144

.L184:
	ld	$7,%got_page(_ZZL14costCoeffNxN_cPKtPKslPtPKhjPhiiiE19__PRETTY_FUNCTION__)($28)
	li	$6,876			# 0x36c
	ld	$5,%got_page(.LC0)($28)
	ld	$4,%got_page(.LC1)($28)
	ld	$25,%call16(__assert_fail)($28)
	daddiu	$7,$7,%got_ofst(_ZZL14costCoeffNxN_cPKtPKslPtPKhjPhiiiE19__PRETTY_FUNCTION__)
	daddiu	$5,$5,%got_ofst(.LC0)
	.reloc	1f,R_MIPS_JALR,__assert_fail
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC1)

	.set	macro
	.set	reorder
	.end	_ZL14costCoeffNxN_cPKtPKslPtPKhjPhiii
	.size	_ZL14costCoeffNxN_cPKtPKslPtPKhjPhiii, .-_ZL14costCoeffNxN_cPKtPKslPtPKhjPhiii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL13scanPosLast_cPKtPKsPtS3_PhiS0_i
	.type	_ZL13scanPosLast_cPKtPKsPtS3_PhiS0_i, @function
_ZL13scanPosLast_cPKtPKsPtS3_PhiS0_i:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL13scanPosLast_cPKtPKsPtS3_PhiS0_i)))
	daddu	$28,$28,$25
	sd	$21,40($sp)
	move	$21,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL13scanPosLast_cPKtPKsPtS3_PhiS0_i)))
	move	$4,$8
	sd	$18,16($sp)
	ld	$25,%call16(memset)($28)
	move	$18,$5
	move	$5,$0
	sd	$16,0($sp)
	move	$16,$6
	li	$6,64			# 0x40
	sd	$31,56($sp)
	sd	$20,32($sp)
	move	$20,$9
	sd	$19,24($sp)
	move	$19,$7
	sd	$17,8($sp)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$17,$8

	ld	$25,%call16(memset)($28)
	move	$4,$19
	li	$6,128			# 0x80
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$0

	ld	$25,%call16(memset)($28)
	move	$4,$16
	li	$6,128			# 0x80
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$0

	move	$4,$21
	b	.L187
	move	$2,$0

	.align	3
.L188:
	move	$2,$8
.L187:
	lhu	$5,0($4)
	dext	$3,$2,4,28
	addiu	$8,$2,1
	daddu	$10,$17,$3
	dsll	$3,$3,1
	lbu	$11,0($10)
	daddu	$7,$16,$3
	daddu	$3,$19,$3
	dlsa	$5,$5,$18,1
	lhu	$9,0($7)
	daddiu	$4,$4,2
	lh	$5,0($5)
	srl	$6,$5,31
	sltu	$5,$0,$5
	sll	$6,$6,$11
	subu	$20,$20,$5
	addu	$6,$6,$9
	sh	$6,0($7)
	lhu	$6,0($3)
	lsa	$6,$6,$5,1
	sh	$6,0($3)
	lbu	$3,0($10)
	addu	$5,$3,$5
	bgtz	$20,.L188
	sb	$5,0($10)

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
	.end	_ZL13scanPosLast_cPKtPKsPtS3_PhiS0_i
	.size	_ZL13scanPosLast_cPKtPKsPtS3_PhiS0_i, .-_ZL13scanPosLast_cPKtPKsPtS3_PhiS0_i
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL6dst4_cPKsPsl
	.type	_ZL6dst4_cPKsPsl, @function
_ZL6dst4_cPKsPsl:
	.frame	$sp,144,$31		# vars= 96, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-144
	dsll	$6,$6,1
	daddiu	$7,$sp,31
	sd	$28,128($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL6dst4_cPKsPsl)))
	dsrl	$7,$7,5
	daddu	$28,$28,$25
	sd	$18,120($sp)
	dsll	$7,$7,5
	sd	$16,104($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL6dst4_cPKsPsl)))
	move	$18,$5
	move	$2,$7
	sd	$31,136($sp)
	daddiu	$16,$7,32
	sd	$17,112($sp)
.L191:
	ldl	$3,7($4)
	daddiu	$2,$2,8
	ldr	$3,0($4)
	daddu	$4,$4,$6
	bne	$16,$2,.L191
	sd	$3,-8($2)

	ld	$17,%got_page(_ZL14fastForwardDstPKsPsi)($28)
	move	$5,$16
	move	$4,$7
	daddiu	$17,$17,%got_ofst(_ZL14fastForwardDstPKsPsi)
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZL14fastForwardDstPKsPsi
1:	jalr	$25
	li	$6,1			# 0x1

	move	$5,$18
	move	$4,$16
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZL14fastForwardDstPKsPsi
1:	jalr	$25
	li	$6,8			# 0x8

	ld	$31,136($sp)
	ld	$28,128($sp)
	ld	$18,120($sp)
	ld	$17,112($sp)
	ld	$16,104($sp)
	jr	$31
	daddiu	$sp,$sp,144

	.set	macro
	.set	reorder
	.end	_ZL6dst4_cPKsPsl
	.size	_ZL6dst4_cPKsPsl, .-_ZL6dst4_cPKsPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL7idst4_cPKsPsl
	.type	_ZL7idst4_cPKsPsl, @function
_ZL7idst4_cPKsPsl:
	.frame	$sp,160,$31		# vars= 96, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL7idst4_cPKsPsl)))
	daddiu	$2,$sp,31
	daddu	$28,$28,$25
	sd	$20,136($sp)
	dsrl	$2,$2,5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL7idst4_cPKsPsl)))
	sd	$17,112($sp)
	dsll	$17,$2,5
	ld	$20,%got_page(_ZL10inversedstPKsPsi)($28)
	sd	$19,128($sp)
	daddiu	$19,$17,32
	sd	$18,120($sp)
	move	$18,$6
	li	$6,7			# 0x7
	daddiu	$20,$20,%got_ofst(_ZL10inversedstPKsPsi)
	sd	$16,104($sp)
	move	$16,$5
	move	$25,$20
	sd	$31,152($sp)
	.reloc	1f,R_MIPS_JALR,_ZL10inversedstPKsPsi
1:	jalr	$25
	move	$5,$19

	li	$6,12			# 0xc
	move	$5,$17
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZL10inversedstPKsPsi
1:	jalr	$25
	move	$4,$19

	dsll	$6,$18,1
	move	$5,$16
	move	$2,$17
.L195:
	ld	$3,0($2)
	daddiu	$2,$2,8
	sdl	$3,7($5)
	sdr	$3,0($5)
	bne	$19,$2,.L195
	daddu	$5,$5,$6

	ld	$31,152($sp)
	ld	$28,144($sp)
	ld	$20,136($sp)
	ld	$19,128($sp)
	ld	$18,120($sp)
	ld	$17,112($sp)
	ld	$16,104($sp)
	jr	$31
	daddiu	$sp,$sp,160

	.set	macro
	.set	reorder
	.end	_ZL7idst4_cPKsPsl
	.size	_ZL7idst4_cPKsPsl, .-_ZL7idst4_cPKsPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL17partialButterfly4PKsPsii.constprop.0
	.type	_ZL17partialButterfly4PKsPsii.constprop.0, @function
_ZL17partialButterfly4PKsPsii.constprop.0:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	addiu	$3,$6,-1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL17partialButterfly4PKsPsii.constprop.0)))
	li	$8,1			# 0x1
	daddu	$28,$28,$25
	sll	$8,$8,$3
	sd	$19,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL17partialButterfly4PKsPsii.constprop.0)))
	daddiu	$24,$4,32
	sd	$18,24($sp)
	ld	$2,%got_disp(_ZN4x2654g_t4E)($28)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lh	$25,0($2)
	lh	$15,2($2)
	lh	$14,16($2)
	lh	$13,18($2)
	lh	$12,8($2)
	lh	$11,10($2)
	lh	$10,24($2)
	lh	$9,26($2)
	.align	3
.L199:
	lh	$17,2($4)
	daddiu	$4,$4,8
	daddiu	$5,$5,2
	lh	$7,-4($4)
	lh	$19,-2($4)
	lh	$2,-8($4)
	addu	$3,$17,$7
	subu	$17,$17,$7
	gsmultu	$16,$3,$15
	gsmultu	$18,$3,$13
	addu	$3,$2,$19
	subu	$2,$2,$19
	mul	$19,$3,$25
	gsmultu	$7,$17,$11
	gsmultu	$17,$17,$9
	addu	$16,$19,$16
	mul	$19,$3,$14
	addu	$16,$16,$8
	sra	$16,$16,$6
	sh	$16,-2($5)
	addu	$3,$19,$18
	mul	$16,$2,$12
	addu	$3,$3,$8
	sra	$3,$3,$6
	sh	$3,14($5)
	mul	$3,$2,$10
	addu	$7,$16,$7
	addu	$2,$3,$17
	addu	$3,$7,$8
	addu	$2,$2,$8
	sra	$3,$3,$6
	sra	$2,$2,$6
	sh	$3,6($5)
	bne	$4,$24,.L199
	sh	$2,22($5)

	ld	$28,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZL17partialButterfly4PKsPsii.constprop.0
	.size	_ZL17partialButterfly4PKsPsii.constprop.0, .-_ZL17partialButterfly4PKsPsii.constprop.0
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL6dct4_cPKsPsl
	.type	_ZL6dct4_cPKsPsl, @function
_ZL6dct4_cPKsPsl:
	.frame	$sp,144,$31		# vars= 96, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-144
	dsll	$6,$6,1
	daddiu	$7,$sp,31
	sd	$28,128($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL6dct4_cPKsPsl)))
	dsrl	$7,$7,5
	daddu	$28,$28,$25
	sd	$18,120($sp)
	dsll	$7,$7,5
	sd	$16,104($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL6dct4_cPKsPsl)))
	move	$18,$5
	move	$2,$7
	sd	$31,136($sp)
	daddiu	$16,$7,32
	sd	$17,112($sp)
.L203:
	ldl	$3,7($4)
	daddiu	$2,$2,8
	ldr	$3,0($4)
	daddu	$4,$4,$6
	bne	$16,$2,.L203
	sd	$3,-8($2)

	ld	$17,%got_page(_ZL17partialButterfly4PKsPsii.constprop.0)($28)
	move	$5,$16
	move	$4,$7
	daddiu	$17,$17,%got_ofst(_ZL17partialButterfly4PKsPsii.constprop.0)
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZL17partialButterfly4PKsPsii.constprop.0
1:	jalr	$25
	li	$6,1			# 0x1

	move	$5,$18
	move	$4,$16
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZL17partialButterfly4PKsPsii.constprop.0
1:	jalr	$25
	li	$6,8			# 0x8

	ld	$31,136($sp)
	ld	$28,128($sp)
	ld	$18,120($sp)
	ld	$17,112($sp)
	ld	$16,104($sp)
	jr	$31
	daddiu	$sp,$sp,144

	.set	macro
	.set	reorder
	.end	_ZL6dct4_cPKsPsl
	.size	_ZL6dct4_cPKsPsl, .-_ZL6dct4_cPKsPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL25partialButterflyInverse32PKsPsii.constprop.1
	.type	_ZL25partialButterflyInverse32PKsPsii.constprop.1, @function
_ZL25partialButterflyInverse32PKsPsii.constprop.1:
	.frame	$sp,592,$31		# vars= 512, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-592
	addiu	$3,$6,-1
	sd	$28,576($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL25partialButterflyInverse32PKsPsii.constprop.1)))
	daddu	$28,$28,$25
	sd	$21,552($sp)
	move	$21,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL25partialButterflyInverse32PKsPsii.constprop.1)))
	li	$4,1			# 0x1
	sd	$22,560($sp)
	ld	$2,%got_disp(_ZN4x2655g_t32E)($28)
	sll	$22,$4,$3
	sd	$20,544($sp)
	move	$20,$21
	sd	$19,536($sp)
	move	$19,$22
	lh	$3,512($2)
	sd	$fp,584($sp)
	sd	$23,568($sp)
	sd	$3,376($sp)
	daddiu	$3,$21,64
	move	$21,$6
	sd	$3,440($sp)
	daddiu	$3,$2,64
	sd	$3,504($sp)
	lh	$3,1536($2)
	sd	$18,528($sp)
	sd	$17,520($sp)
	sd	$3,384($sp)
	daddiu	$3,$2,96
	sd	$3,280($sp)
	daddiu	$3,$sp,128
	sd	$3,328($sp)
	lh	$3,514($2)
	sd	$16,512($sp)
	sd	$5,304($sp)
	sd	$3,392($sp)
	daddiu	$3,$2,16
	sd	$3,288($sp)
	daddiu	$3,$sp,192
	sd	$3,320($sp)
	lh	$3,1538($2)
	sd	$3,400($sp)
	daddiu	$3,$2,8
	sd	$3,296($sp)
	daddiu	$3,$sp,160
	sd	$3,312($sp)
	lh	$3,0($2)
	sd	$3,408($sp)
	daddiu	$3,$sp,204
	sd	$3,480($sp)
	daddiu	$3,$sp,208
	sd	$3,488($sp)
	lh	$3,1024($2)
	sd	$3,416($sp)
	daddiu	$3,$sp,64
	sd	$3,472($sp)
	daddiu	$3,$sp,124
	sd	$3,496($sp)
	lh	$3,2($2)
	lh	$2,1026($2)
	sd	$3,424($sp)
	daddiu	$3,$sp,60
	sd	$3,464($sp)
	daddiu	$3,$sp,192
	sd	$2,432($sp)
	daddiu	$2,$sp,128
	sd	$3,448($sp)
	sd	$2,456($sp)
	.align	3
.L216:
	lh	$2,64($20)
	move	$22,$sp
	move	$24,$sp
	lh	$4,1216($20)
	lh	$5,1344($20)
	sd	$2,224($sp)
	lh	$2,192($20)
	lh	$6,1472($20)
	ld	$23,%got_disp(_ZN4x2655g_t32E)($28)
	sd	$2,232($sp)
	lh	$2,320($20)
	lh	$3,1088($20)
	lh	$25,1984($20)
	sd	$2,240($sp)
	lh	$2,448($20)
	ld	$15,504($sp)
	lh	$fp,832($20)
	sd	$2,248($sp)
	lh	$2,576($20)
	lh	$18,1600($20)
	lh	$17,1728($20)
	sd	$2,256($sp)
	lh	$2,704($20)
	lh	$16,1856($20)
	sd	$19,336($sp)
	sd	$2,264($sp)
	lh	$2,960($20)
	sd	$23,344($sp)
	move	$23,$6
	sd	$22,352($sp)
	move	$22,$5
	sd	$20,360($sp)
	move	$19,$2
	move	$20,$3
	sd	$21,368($sp)
	move	$21,$4
	sd	$25,272($sp)
	.align	3
.L207:
	lh	$4,128($15)
	daddiu	$15,$15,2
	daddiu	$24,$24,4
	ld	$5,232($sp)
	ld	$25,240($sp)
	lh	$3,-2($15)
	gsmultu	$4,$4,$5
	lh	$2,254($15)
	lh	$14,382($15)
	lh	$13,510($15)
	lh	$12,638($15)
	lh	$11,766($15)
	mtlo	$4
	ld	$4,224($sp)
	lh	$10,894($15)
	lh	$9,1022($15)
	madd	$3,$4
	lh	$8,1150($15)
	lh	$7,1278($15)
	lh	$6,1406($15)
	lh	$5,1534($15)
	lh	$4,1662($15)
	lh	$3,1790($15)
	madd	$2,$25
	ld	$25,248($sp)
	lh	$2,1918($15)
	madd	$14,$25
	ld	$14,256($sp)
	madd	$13,$14
	ld	$13,264($sp)
	madd	$12,$13
	madd	$11,$fp
	madd	$10,$19
	madd	$9,$20
	madd	$8,$21
	madd	$7,$22
	madd	$6,$23
	madd	$5,$18
	madd	$4,$17
	madd	$3,$16
	ld	$3,272($sp)
	madd	$2,$3
	mflo	$2
	sw	$2,-4($24)
	ld	$2,280($sp)
	bne	$2,$15,.L207
	ld	$12,328($sp)

	ld	$20,360($sp)
	ld	$19,336($sp)
	ld	$23,344($sp)
	ld	$22,352($sp)
	move	$11,$12
	ld	$21,368($sp)
	lh	$18,128($20)
	lh	$17,384($20)
	lh	$16,640($20)
	lh	$25,896($20)
	lh	$24,1152($20)
	lh	$15,1408($20)
	lh	$14,1664($20)
	lh	$13,1920($20)
	ld	$10,%got_disp(_ZN4x2655g_t32E)($28)
	.align	3
.L208:
	lh	$9,384($10)
	daddiu	$10,$10,2
	daddiu	$12,$12,4
	gsmultu	$9,$9,$17
	lh	$8,126($10)
	lh	$7,638($10)
	lh	$6,894($10)
	lh	$5,1150($10)
	lh	$4,1406($10)
	mtlo	$9
	lh	$3,1662($10)
	madd	$8,$18
	lh	$2,1918($10)
	madd	$7,$16
	madd	$6,$25
	madd	$5,$24
	madd	$4,$15
	madd	$3,$14
	madd	$2,$13
	mflo	$2
	sw	$2,-4($12)
	ld	$2,288($sp)
	bne	$2,$10,.L208
	ld	$6,320($sp)

	lh	$10,256($20)
	lh	$9,768($20)
	lh	$8,1280($20)
	lh	$7,1792($20)
.L209:
	lh	$5,768($23)
	daddiu	$23,$23,2
	daddiu	$6,$6,4
	gsmultu	$5,$5,$9
	lh	$4,254($23)
	lh	$3,1278($23)
	lh	$2,1790($23)
	mtlo	$5
	madd	$4,$10
	madd	$3,$8
	madd	$2,$7
	mflo	$2
	sw	$2,-4($6)
	ld	$2,296($sp)
	bne	$2,$23,.L209
	ld	$3,384($sp)

	lh	$10,1536($20)
	lh	$9,1024($20)
	ld	$15,432($sp)
	gsmultu	$12,$3,$10
	ld	$3,400($sp)
	lh	$14,512($20)
	lh	$13,0($20)
	gsmultu	$10,$10,$3
	ld	$3,416($sp)
	ld	$24,320($sp)
	ld	$5,480($sp)
	gsmultu	$3,$3,$9
	ld	$4,312($sp)
	gsmultu	$9,$9,$15
	ld	$15,376($sp)
	move	$6,$24
	ld	$7,488($sp)
	daddiu	$6,$6,4
	move	$2,$4
	daddiu	$4,$4,4
	mul	$25,$15,$14
	ld	$15,392($sp)
	move	$8,$7
	daddiu	$7,$7,-4
	daddiu	$8,$8,4
	addu	$12,$25,$12
	mul	$25,$14,$15
	mtlo	$3
	ld	$3,408($sp)
	madd	$3,$13
	ld	$3,424($sp)
	mflo	$15
	mul	$14,$13,$3
	addu	$10,$25,$10
	move	$3,$15
	addu	$15,$12,$15
	subu	$12,$3,$12
	sw	$15,208($sp)
	sw	$12,220($sp)
	addu	$9,$14,$9
	addu	$3,$10,$9
	subu	$10,$9,$10
	lw	$9,0($5)
	sw	$3,212($sp)
	lw	$3,-4($6)
	sw	$10,216($sp)
	subu	$12,$12,$9
	move	$10,$24
	sw	$12,12($4)
	addu	$15,$3,$15
	beq	$10,$5,.L210
	sw	$15,-4($4)

.L228:
	daddiu	$5,$5,-4
	lw	$15,0($8)
	daddiu	$4,$4,4
	lw	$12,12($7)
	daddiu	$8,$8,4
	daddiu	$7,$7,-4
	lw	$3,0($6)
	daddiu	$6,$6,4
	lw	$9,0($5)
	addu	$15,$3,$15
	subu	$12,$12,$9
	sw	$15,-4($4)
	bne	$10,$5,.L228
	sw	$12,12($4)

.L210:
	ld	$5,472($sp)
	ld	$8,328($sp)
	ld	$7,312($sp)
	ld	$12,448($sp)
	move	$6,$5
	.align	3
.L212:
	daddiu	$11,$11,4
	daddiu	$7,$7,-4
	lw	$4,0($2)
	daddiu	$8,$8,-4
	lw	$10,-4($11)
	daddiu	$5,$5,4
	lw	$3,32($7)
	daddiu	$2,$2,4
	lw	$9,32($8)
	addu	$4,$4,$10
	sw	$4,-4($5)
	subu	$3,$3,$9
	bne	$12,$2,.L212
	sw	$3,28($5)

	ld	$5,304($sp)
	ld	$8,496($sp)
	ld	$7,464($sp)
	ld	$10,456($sp)
	.align	3
.L215:
	lw	$2,0($22)
	daddiu	$6,$6,4
	li	$9,-32768			# 0xffffffffffff8000
	lw	$3,-4($6)
	li	$4,-32768			# 0xffffffffffff8000
	daddiu	$22,$22,4
	addu	$3,$3,$2
	addu	$3,$3,$19
	sra	$3,$3,$21
	slt	$2,$3,-32768
	bne	$2,$0,.L213
	slt	$11,$3,32767

	seh	$3,$3
	li	$9,32767			# 0x7fff
	movn	$9,$3,$11
.L213:
	lw	$3,0($7)
	daddiu	$8,$8,-4
	daddiu	$7,$7,-4
	lw	$2,4($8)
	sh	$9,0($5)
	subu	$2,$2,$3
	addu	$2,$2,$19
	sra	$2,$2,$21
	slt	$3,$2,-32768
	bne	$3,$0,.L214
	slt	$9,$2,32767

	seh	$2,$2
	li	$4,32767			# 0x7fff
	movn	$4,$2,$9
.L214:
	sh	$4,32($5)
	bne	$10,$6,.L215
	daddiu	$5,$5,2

	ld	$2,304($sp)
	daddiu	$20,$20,2
	daddiu	$2,$2,64
	sd	$2,304($sp)
	ld	$2,440($sp)
	bne	$20,$2,.L216
	ld	$fp,584($sp)

	ld	$28,576($sp)
	ld	$23,568($sp)
	ld	$22,560($sp)
	ld	$21,552($sp)
	ld	$20,544($sp)
	ld	$19,536($sp)
	ld	$18,528($sp)
	ld	$17,520($sp)
	ld	$16,512($sp)
	jr	$31
	daddiu	$sp,$sp,592

	.set	macro
	.set	reorder
	.end	_ZL25partialButterflyInverse32PKsPsii.constprop.1
	.size	_ZL25partialButterflyInverse32PKsPsii.constprop.1, .-_ZL25partialButterflyInverse32PKsPsii.constprop.1
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL8idct32_cPKsPsl
	.type	_ZL8idct32_cPKsPsl, @function
_ZL8idct32_cPKsPsl:
	.frame	$sp,4192,$31		# vars= 4128, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-4192
	sd	$28,4176($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL8idct32_cPKsPsl)))
	daddiu	$2,$sp,31
	daddu	$28,$28,$25
	sd	$20,4168($sp)
	dsrl	$2,$2,5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL8idct32_cPKsPsl)))
	sd	$17,4144($sp)
	dsll	$17,$2,5
	ld	$20,%got_page(_ZL25partialButterflyInverse32PKsPsii.constprop.1)($28)
	sd	$19,4160($sp)
	daddiu	$19,$17,2048
	sd	$18,4152($sp)
	move	$18,$6
	li	$6,7			# 0x7
	daddiu	$20,$20,%got_ofst(_ZL25partialButterflyInverse32PKsPsii.constprop.1)
	sd	$16,4136($sp)
	move	$16,$5
	move	$25,$20
	sd	$31,4184($sp)
	.reloc	1f,R_MIPS_JALR,_ZL25partialButterflyInverse32PKsPsii.constprop.1
1:	jalr	$25
	move	$5,$19

	li	$6,12			# 0xc
	move	$5,$17
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZL25partialButterflyInverse32PKsPsii.constprop.1
1:	jalr	$25
	move	$4,$19

	dsll	$6,$18,1
	move	$5,$16
	move	$2,$17
	.align	3
.L230:
	ld	$12,0($2)
	daddiu	$2,$2,64
	ld	$11,-56($2)
	ld	$10,-48($2)
	ld	$9,-40($2)
	ld	$7,-24($2)
	ld	$4,-16($2)
	ld	$3,-8($2)
	ld	$8,-32($2)
	sdl	$12,7($5)
	sdr	$12,0($5)
	sdl	$11,15($5)
	sdr	$11,8($5)
	sdl	$10,23($5)
	sdr	$10,16($5)
	sdl	$9,31($5)
	sdr	$9,24($5)
	sdl	$8,39($5)
	sdr	$8,32($5)
	sdl	$7,47($5)
	sdr	$7,40($5)
	sdl	$4,55($5)
	sdr	$4,48($5)
	sdl	$3,63($5)
	sdr	$3,56($5)
	bne	$19,$2,.L230
	daddu	$5,$5,$6

	ld	$31,4184($sp)
	ld	$28,4176($sp)
	ld	$20,4168($sp)
	ld	$19,4160($sp)
	ld	$18,4152($sp)
	ld	$17,4144($sp)
	ld	$16,4136($sp)
	jr	$31
	daddiu	$sp,$sp,4192

	.set	macro
	.set	reorder
	.end	_ZL8idct32_cPKsPsl
	.size	_ZL8idct32_cPKsPsl, .-_ZL8idct32_cPKsPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL25partialButterflyInverse16PKsPsii.constprop.2
	.type	_ZL25partialButterflyInverse16PKsPsii.constprop.2, @function
_ZL25partialButterflyInverse16PKsPsii.constprop.2:
	.frame	$sp,304,$31		# vars= 224, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-304
	addiu	$3,$6,-1
	sd	$28,288($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL25partialButterflyInverse16PKsPsii.constprop.2)))
	li	$24,1			# 0x1
	daddu	$28,$28,$25
	sll	$24,$24,$3
	sd	$fp,296($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL25partialButterflyInverse16PKsPsii.constprop.2)))
	sd	$23,280($sp)
	li	$23,32767			# 0x7fff
	ld	$2,%got_disp(_ZN4x2655g_t16E)($28)
	sd	$22,272($sp)
	sd	$21,264($sp)
	lh	$3,128($2)
	daddiu	$fp,$2,16
	sd	$20,256($sp)
	sd	$19,248($sp)
	sd	$3,128($sp)
	daddiu	$3,$4,32
	sd	$3,192($sp)
	lh	$3,384($2)
	sd	$18,240($sp)
	sd	$17,232($sp)
	sd	$3,136($sp)
	daddiu	$3,$sp,64
	sd	$3,120($sp)
	daddiu	$3,$2,8
	sd	$3,96($sp)
	lh	$3,0($2)
	sd	$16,224($sp)
	sd	$5,104($sp)
	sd	$3,144($sp)
	daddiu	$3,$sp,32
	sd	$3,112($sp)
	daddiu	$3,$sp,76
	sd	$3,208($sp)
	lh	$3,256($2)
	sd	$3,152($sp)
	daddiu	$3,$sp,80
	sd	$3,216($sp)
	daddiu	$3,$sp,64
	sd	$3,200($sp)
	lh	$3,130($2)
	sd	$3,160($sp)
	lh	$3,386($2)
	sd	$3,168($sp)
	lh	$3,2($2)
	sd	$3,176($sp)
	lh	$2,258($2)
	sd	$2,184($sp)
	ld	$13,%got_disp(_ZN4x2655g_t16E)($28)
	.align	3
.L252:
	move	$14,$sp
	move	$15,$sp
	lh	$22,32($4)
	lh	$21,96($4)
	lh	$20,160($4)
	move	$12,$13
	lh	$19,224($4)
	lh	$18,288($4)
	lh	$17,352($4)
	lh	$16,416($4)
	lh	$25,480($4)
	.align	3
.L234:
	lh	$11,96($12)
	daddiu	$12,$12,2
	daddiu	$15,$15,4
	gsmultu	$11,$11,$21
	lh	$10,30($12)
	lh	$9,158($12)
	lh	$8,222($12)
	lh	$7,286($12)
	lh	$5,350($12)
	mtlo	$11
	lh	$3,414($12)
	madd	$10,$22
	lh	$2,478($12)
	madd	$9,$20
	madd	$8,$19
	madd	$7,$18
	madd	$5,$17
	madd	$3,$16
	madd	$2,$25
	mflo	$2
	bne	$fp,$12,.L234
	sw	$2,-4($15)

	lh	$12,64($4)
	ld	$8,120($sp)
	lh	$11,192($4)
	lh	$10,320($4)
	lh	$9,448($4)
.L235:
	lh	$7,192($13)
	daddiu	$13,$13,2
	daddiu	$8,$8,4
	gsmultu	$7,$7,$11
	lh	$5,62($13)
	lh	$3,318($13)
	lh	$2,446($13)
	mtlo	$7
	madd	$5,$12
	madd	$3,$10
	madd	$2,$9
	mflo	$2
	sw	$2,-4($8)
	ld	$2,96($sp)
	bne	$2,$13,.L235
	ld	$3,136($sp)

	lh	$12,384($4)
	ld	$16,168($sp)
	lh	$15,256($4)
	gsmultu	$13,$3,$12
	ld	$3,152($sp)
	gsmultu	$12,$12,$16
	ld	$16,184($sp)
	lh	$25,128($4)
	gsmultu	$3,$3,$15
	lh	$11,0($4)
	gsmultu	$15,$15,$16
	ld	$16,128($sp)
	ld	$17,120($sp)
	ld	$7,208($sp)
	mul	$18,$16,$25
	ld	$16,144($sp)
	move	$8,$17
	ld	$5,112($sp)
	ld	$9,216($sp)
	daddiu	$8,$8,4
	move	$2,$5
	daddiu	$5,$5,4
	move	$10,$9
	daddiu	$9,$9,-4
	daddiu	$10,$10,4
	addu	$13,$18,$13
	mul	$18,$16,$11
	mtlo	$12
	ld	$12,160($sp)
	madd	$25,$12
	mflo	$25
	addu	$3,$18,$3
	addu	$16,$13,$3
	subu	$13,$3,$13
	ld	$3,176($sp)
	sw	$16,80($sp)
	sw	$13,92($sp)
	mul	$12,$11,$3
	lw	$11,0($7)
	subu	$13,$13,$11
	sw	$13,12($5)
	addu	$15,$12,$15
	move	$12,$17
	subu	$3,$15,$25
	addu	$15,$25,$15
	sw	$3,88($sp)
	lw	$3,-4($8)
	sw	$15,84($sp)
	addu	$16,$3,$16
	beq	$12,$7,.L236
	sw	$16,-4($5)

.L251:
	daddiu	$7,$7,-4
	lw	$16,0($10)
	daddiu	$5,$5,4
	lw	$13,12($9)
	daddiu	$10,$10,4
	daddiu	$9,$9,-4
	lw	$3,0($8)
	daddiu	$8,$8,4
	lw	$11,0($7)
	addu	$16,$3,$16
	subu	$13,$13,$11
	sw	$16,-4($5)
	bne	$12,$7,.L251
	sw	$13,12($5)

.L236:
	ld	$8,104($sp)
	move	$10,$14
	ld	$9,112($sp)
	ld	$12,200($sp)
	.align	3
.L240:
	lw	$3,0($14)
	daddiu	$2,$2,4
	li	$11,-32768			# 0xffffffffffff8000
	lw	$5,-4($2)
	li	$7,-32768			# 0xffffffffffff8000
	daddiu	$14,$14,4
	addu	$5,$5,$3
	addu	$5,$5,$24
	sra	$5,$5,$6
	slt	$3,$5,-32768
	bne	$3,$0,.L238
	slt	$13,$5,32767

	seh	$5,$5
	movz	$5,$23,$13
	move	$11,$5
.L238:
	lw	$5,28($10)
	daddiu	$9,$9,-4
	daddiu	$10,$10,-4
	lw	$3,32($9)
	sh	$11,0($8)
	subu	$3,$3,$5
	addu	$3,$3,$24
	sra	$3,$3,$6
	slt	$5,$3,-32768
	bne	$5,$0,.L239
	slt	$11,$3,32767

	seh	$3,$3
	movz	$3,$23,$11
	move	$7,$3
.L239:
	sh	$7,16($8)
	bne	$12,$2,.L240
	daddiu	$8,$8,2

	ld	$2,104($sp)
	daddiu	$4,$4,2
	daddiu	$2,$2,32
	sd	$2,104($sp)
	ld	$2,192($sp)
	bne	$4,$2,.L252
	ld	$13,%got_disp(_ZN4x2655g_t16E)($28)

	ld	$fp,296($sp)
	ld	$28,288($sp)
	ld	$23,280($sp)
	ld	$22,272($sp)
	ld	$21,264($sp)
	ld	$20,256($sp)
	ld	$19,248($sp)
	ld	$18,240($sp)
	ld	$17,232($sp)
	ld	$16,224($sp)
	jr	$31
	daddiu	$sp,$sp,304

	.set	macro
	.set	reorder
	.end	_ZL25partialButterflyInverse16PKsPsii.constprop.2
	.size	_ZL25partialButterflyInverse16PKsPsii.constprop.2, .-_ZL25partialButterflyInverse16PKsPsii.constprop.2
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL8idct16_cPKsPsl
	.type	_ZL8idct16_cPKsPsl, @function
_ZL8idct16_cPKsPsl:
	.frame	$sp,1120,$31		# vars= 1056, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-1120
	sd	$28,1104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL8idct16_cPKsPsl)))
	daddiu	$2,$sp,31
	daddu	$28,$28,$25
	sd	$20,1096($sp)
	dsrl	$2,$2,5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL8idct16_cPKsPsl)))
	sd	$17,1072($sp)
	dsll	$17,$2,5
	ld	$20,%got_page(_ZL25partialButterflyInverse16PKsPsii.constprop.2)($28)
	sd	$19,1088($sp)
	daddiu	$19,$17,512
	sd	$18,1080($sp)
	move	$18,$6
	li	$6,7			# 0x7
	daddiu	$20,$20,%got_ofst(_ZL25partialButterflyInverse16PKsPsii.constprop.2)
	sd	$16,1064($sp)
	move	$16,$5
	move	$25,$20
	sd	$31,1112($sp)
	.reloc	1f,R_MIPS_JALR,_ZL25partialButterflyInverse16PKsPsii.constprop.2
1:	jalr	$25
	move	$5,$19

	li	$6,12			# 0xc
	move	$5,$17
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZL25partialButterflyInverse16PKsPsii.constprop.2
1:	jalr	$25
	move	$4,$19

	dsll	$6,$18,1
	move	$5,$16
	move	$2,$17
	.align	3
.L254:
	ld	$8,0($2)
	daddiu	$2,$2,32
	ld	$7,-24($2)
	ld	$4,-16($2)
	ld	$3,-8($2)
	sdl	$8,7($5)
	sdr	$8,0($5)
	sdl	$7,15($5)
	sdr	$7,8($5)
	sdl	$4,23($5)
	sdr	$4,16($5)
	sdl	$3,31($5)
	sdr	$3,24($5)
	bne	$19,$2,.L254
	daddu	$5,$5,$6

	ld	$31,1112($sp)
	ld	$28,1104($sp)
	ld	$20,1096($sp)
	ld	$19,1088($sp)
	ld	$18,1080($sp)
	ld	$17,1072($sp)
	ld	$16,1064($sp)
	jr	$31
	daddiu	$sp,$sp,1120

	.set	macro
	.set	reorder
	.end	_ZL8idct16_cPKsPsl
	.size	_ZL8idct16_cPKsPsl, .-_ZL8idct16_cPKsPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL24partialButterflyInverse8PKsPsii.constprop.3
	.type	_ZL24partialButterflyInverse8PKsPsii.constprop.3, @function
_ZL24partialButterflyInverse8PKsPsii.constprop.3:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	addiu	$3,$6,-1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL24partialButterflyInverse8PKsPsii.constprop.3)))
	li	$14,1			# 0x1
	daddu	$28,$28,$25
	sll	$14,$14,$3
	sd	$22,128($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL24partialButterflyInverse8PKsPsii.constprop.3)))
	daddiu	$3,$sp,12
	sd	$20,112($sp)
	ld	$2,%got_disp(_ZN4x2654g_t8E)($28)
	move	$15,$sp
	li	$24,32767			# 0x7fff
	sd	$3,64($sp)
	sd	$19,104($sp)
	lh	$3,64($2)
	daddiu	$25,$2,8
	sd	$18,96($sp)
	sd	$17,88($sp)
	lh	$22,32($2)
	lh	$20,96($2)
	lh	$19,34($2)
	lh	$18,98($2)
	lh	$17,0($2)
	sd	$3,40($sp)
	lh	$3,2($2)
	lh	$2,66($2)
	sd	$21,120($sp)
	daddiu	$21,$4,16
	sd	$16,80($sp)
	daddiu	$16,$sp,16
	sd	$fp,152($sp)
	sd	$23,136($sp)
	sd	$3,48($sp)
	sd	$2,56($sp)
	.align	3
.L263:
	lh	$23,16($4)
	move	$10,$sp
	lh	$13,48($4)
	lh	$12,80($4)
	lh	$11,112($4)
	ld	$9,%got_disp(_ZN4x2654g_t8E)($28)
.L258:
	lh	$8,48($9)
	daddiu	$9,$9,2
	daddiu	$10,$10,4
	gsmultu	$8,$8,$13
	lh	$7,14($9)
	lh	$3,78($9)
	lh	$2,110($9)
	mtlo	$8
	madd	$7,$23
	madd	$3,$12
	madd	$2,$11
	mflo	$2
	bne	$25,$9,.L258
	sw	$2,-4($10)

	lh	$23,64($4)
	move	$11,$15
	move	$13,$16
	ld	$2,40($sp)
	move	$12,$16
	move	$9,$5
	lh	$fp,32($4)
	daddiu	$13,$13,4
	daddiu	$12,$12,-4
	lh	$8,96($4)
	daddiu	$11,$11,4
	gsmultu	$2,$2,$23
	lh	$7,0($4)
	ld	$10,64($sp)
	gsmultu	$3,$20,$8
	gsmultu	$8,$8,$18
	sw	$2,32($sp)
	ld	$2,56($sp)
	gsmultu	$23,$23,$2
	mul	$2,$22,$fp
	addu	$3,$2,$3
	mul	$2,$fp,$19
	addu	$8,$2,$8
	lw	$2,32($sp)
	mtlo	$2
	madd	$17,$7
	mflo	$2
	sw	$2,32($sp)
	ld	$2,48($sp)
	mul	$fp,$7,$2
	lw	$2,32($sp)
	lw	$7,-4($11)
	addu	$23,$fp,$23
	addu	$fp,$3,$2
	addu	$7,$7,$fp
	subu	$3,$2,$3
	sw	$fp,16($sp)
	addu	$7,$7,$14
	addu	$2,$8,$23
	sw	$3,28($sp)
	sra	$7,$7,$6
	subu	$23,$23,$8
	sw	$2,20($sp)
	slt	$fp,$7,-32768
	sw	$23,24($sp)
	li	$8,-32768			# 0xffffffffffff8000
	li	$23,-32768			# 0xffffffffffff8000
	bne	$fp,$0,.L259
	slt	$2,$7,32767

	seh	$7,$7
.L272:
	movz	$7,$24,$2
	move	$23,$7
.L259:
	lw	$2,0($10)
	sh	$23,0($9)
	subu	$2,$3,$2
	addu	$2,$2,$14
	sra	$2,$2,$6
	slt	$3,$2,-32768
	bne	$3,$0,.L260
	slt	$7,$2,32767

	seh	$2,$2
	movz	$2,$24,$7
	move	$8,$2
.L260:
	sh	$8,8($9)
	beq	$15,$10,.L261
	daddiu	$9,$9,2

	lw	$fp,0($13)
	daddiu	$10,$10,-4
	li	$23,-32768			# 0xffffffffffff8000
	lw	$7,0($11)
	li	$8,-32768			# 0xffffffffffff8000
	daddiu	$13,$13,4
	lw	$3,12($12)
	daddiu	$11,$11,4
	daddiu	$12,$12,-4
	addu	$7,$7,$fp
	addu	$7,$7,$14
	sra	$7,$7,$6
	slt	$fp,$7,-32768
	bne	$fp,$0,.L259
	slt	$2,$7,32767

	b	.L272
	seh	$7,$7

	.align	3
.L261:
	daddiu	$4,$4,2
	bne	$4,$21,.L263
	daddiu	$5,$5,16

	ld	$fp,152($sp)
	ld	$28,144($sp)
	ld	$23,136($sp)
	ld	$22,128($sp)
	ld	$21,120($sp)
	ld	$20,112($sp)
	ld	$19,104($sp)
	ld	$18,96($sp)
	ld	$17,88($sp)
	ld	$16,80($sp)
	jr	$31
	daddiu	$sp,$sp,160

	.set	macro
	.set	reorder
	.end	_ZL24partialButterflyInverse8PKsPsii.constprop.3
	.size	_ZL24partialButterflyInverse8PKsPsii.constprop.3, .-_ZL24partialButterflyInverse8PKsPsii.constprop.3
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL7idct8_cPKsPsl
	.type	_ZL7idct8_cPKsPsl, @function
_ZL7idct8_cPKsPsl:
	.frame	$sp,352,$31		# vars= 288, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-352
	sd	$28,336($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL7idct8_cPKsPsl)))
	daddiu	$2,$sp,31
	daddu	$28,$28,$25
	sd	$20,328($sp)
	dsrl	$2,$2,5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL7idct8_cPKsPsl)))
	sd	$17,304($sp)
	dsll	$17,$2,5
	ld	$20,%got_page(_ZL24partialButterflyInverse8PKsPsii.constprop.3)($28)
	sd	$19,320($sp)
	daddiu	$19,$17,128
	sd	$18,312($sp)
	move	$18,$6
	li	$6,7			# 0x7
	daddiu	$20,$20,%got_ofst(_ZL24partialButterflyInverse8PKsPsii.constprop.3)
	sd	$16,296($sp)
	move	$16,$5
	move	$25,$20
	sd	$31,344($sp)
	.reloc	1f,R_MIPS_JALR,_ZL24partialButterflyInverse8PKsPsii.constprop.3
1:	jalr	$25
	move	$5,$19

	li	$6,12			# 0xc
	move	$5,$17
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZL24partialButterflyInverse8PKsPsii.constprop.3
1:	jalr	$25
	move	$4,$19

	dsll	$6,$18,1
	move	$5,$16
	move	$2,$17
	.align	3
.L274:
	ld	$4,0($2)
	daddiu	$2,$2,16
	ld	$3,-8($2)
	sdl	$4,7($5)
	sdr	$4,0($5)
	sdl	$3,15($5)
	sdr	$3,8($5)
	bne	$19,$2,.L274
	daddu	$5,$5,$6

	ld	$31,344($sp)
	ld	$28,336($sp)
	ld	$20,328($sp)
	ld	$19,320($sp)
	ld	$18,312($sp)
	ld	$17,304($sp)
	ld	$16,296($sp)
	jr	$31
	daddiu	$sp,$sp,352

	.set	macro
	.set	reorder
	.end	_ZL7idct8_cPKsPsl
	.size	_ZL7idct8_cPKsPsl, .-_ZL7idct8_cPKsPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL24partialButterflyInverse4PKsPsii.constprop.4
	.type	_ZL24partialButterflyInverse4PKsPsii.constprop.4, @function
_ZL24partialButterflyInverse4PKsPsii.constprop.4:
	.frame	$sp,128,$31		# vars= 48, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	addiu	$3,$6,-1
	sd	$28,112($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL24partialButterflyInverse4PKsPsii.constprop.4)))
	li	$9,1			# 0x1
	daddu	$28,$28,$25
	sll	$9,$9,$3
	sd	$fp,120($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL24partialButterflyInverse4PKsPsii.constprop.4)))
	sd	$22,96($sp)
	li	$14,32767			# 0x7fff
	ld	$2,%got_disp(_ZN4x2654g_t4E)($28)
	sd	$21,88($sp)
	sd	$23,104($sp)
	daddiu	$23,$4,8
	lh	$3,26($2)
	lh	$fp,8($2)
	lh	$22,24($2)
	sd	$3,0($sp)
	lh	$3,0($2)
	lh	$21,10($2)
	sd	$20,80($sp)
	sd	$3,8($sp)
	lh	$3,16($2)
	sd	$19,72($sp)
	sd	$18,64($sp)
	sd	$3,16($sp)
	lh	$3,2($2)
	lh	$2,18($2)
	sd	$17,56($sp)
	sd	$16,48($sp)
	sd	$3,24($sp)
	sd	$2,32($sp)
	.align	3
.L282:
	lh	$25,8($4)
	li	$13,-32768			# 0xffffffffffff8000
	li	$12,-32768			# 0xffffffffffff8000
	lh	$24,24($4)
	li	$11,-32768			# 0xffffffffffff8000
	li	$10,-32768			# 0xffffffffffff8000
	lh	$7,16($4)
	daddiu	$4,$4,2
	mul	$16,$fp,$25
	ld	$15,0($sp)
	ld	$8,16($sp)
	gsmultu	$3,$22,$24
	lh	$2,-2($4)
	gsmultu	$24,$24,$15
	ld	$15,32($sp)
	gsmultu	$8,$8,$7
	gsmultu	$7,$7,$15
	mtlo	$8
	addu	$15,$16,$3
	ld	$3,8($sp)
	madd	$3,$2
	mflo	$8
	mul	$3,$25,$21
	addu	$24,$3,$24
	move	$3,$8
	subu	$3,$3,$15
	addu	$8,$15,$8
	ld	$15,24($sp)
	addu	$8,$8,$9
	addu	$3,$3,$9
	sra	$8,$8,$6
	sra	$3,$3,$6
	mul	$25,$2,$15
	slt	$16,$8,-32768
	slt	$15,$3,-32768
	slt	$20,$8,32767
	slt	$17,$3,32767
	seh	$8,$8
	seh	$3,$3
	addu	$2,$25,$7
	addu	$7,$24,$2
	subu	$2,$2,$24
	addu	$7,$7,$9
	addu	$2,$2,$9
	sra	$7,$7,$6
	sra	$2,$2,$6
	slt	$25,$7,-32768
	slt	$24,$2,-32768
	slt	$19,$7,32767
	slt	$18,$2,32767
	seh	$7,$7
	bne	$16,$0,.L278
	seh	$2,$2

	movz	$8,$14,$20
	move	$13,$8
.L278:
	bne	$25,$0,.L279
	sh	$13,0($5)

	movz	$7,$14,$19
	move	$12,$7
.L279:
	bne	$24,$0,.L280
	sh	$12,2($5)

	movz	$2,$14,$18
	move	$11,$2
.L280:
	bne	$15,$0,.L281
	sh	$11,4($5)

	movz	$3,$14,$17
	move	$10,$3
.L281:
	sh	$10,6($5)
	bne	$23,$4,.L282
	daddiu	$5,$5,8

	ld	$fp,120($sp)
	ld	$28,112($sp)
	ld	$23,104($sp)
	ld	$22,96($sp)
	ld	$21,88($sp)
	ld	$20,80($sp)
	ld	$19,72($sp)
	ld	$18,64($sp)
	ld	$17,56($sp)
	ld	$16,48($sp)
	jr	$31
	daddiu	$sp,$sp,128

	.set	macro
	.set	reorder
	.end	_ZL24partialButterflyInverse4PKsPsii.constprop.4
	.size	_ZL24partialButterflyInverse4PKsPsii.constprop.4, .-_ZL24partialButterflyInverse4PKsPsii.constprop.4
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL7idct4_cPKsPsl
	.type	_ZL7idct4_cPKsPsl, @function
_ZL7idct4_cPKsPsl:
	.frame	$sp,160,$31		# vars= 96, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL7idct4_cPKsPsl)))
	daddiu	$2,$sp,31
	daddu	$28,$28,$25
	sd	$20,136($sp)
	dsrl	$2,$2,5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL7idct4_cPKsPsl)))
	sd	$17,112($sp)
	dsll	$17,$2,5
	ld	$20,%got_page(_ZL24partialButterflyInverse4PKsPsii.constprop.4)($28)
	sd	$19,128($sp)
	daddiu	$19,$17,32
	sd	$18,120($sp)
	move	$18,$6
	li	$6,7			# 0x7
	daddiu	$20,$20,%got_ofst(_ZL24partialButterflyInverse4PKsPsii.constprop.4)
	sd	$16,104($sp)
	move	$16,$5
	move	$25,$20
	sd	$31,152($sp)
	.reloc	1f,R_MIPS_JALR,_ZL24partialButterflyInverse4PKsPsii.constprop.4
1:	jalr	$25
	move	$5,$19

	li	$6,12			# 0xc
	move	$5,$17
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZL24partialButterflyInverse4PKsPsii.constprop.4
1:	jalr	$25
	move	$4,$19

	dsll	$6,$18,1
	move	$5,$16
	move	$2,$17
.L294:
	ld	$3,0($2)
	daddiu	$2,$2,8
	sdl	$3,7($5)
	sdr	$3,0($5)
	bne	$19,$2,.L294
	daddu	$5,$5,$6

	ld	$31,152($sp)
	ld	$28,144($sp)
	ld	$20,136($sp)
	ld	$19,128($sp)
	ld	$18,120($sp)
	ld	$17,112($sp)
	ld	$16,104($sp)
	jr	$31
	daddiu	$sp,$sp,160

	.set	macro
	.set	reorder
	.end	_ZL7idct4_cPKsPsl
	.size	_ZL7idct4_cPKsPsl, .-_ZL7idct4_cPKsPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL17partialButterfly8PKsPsii.constprop.5
	.type	_ZL17partialButterfly8PKsPsii.constprop.5, @function
_ZL17partialButterfly8PKsPsii.constprop.5:
	.frame	$sp,256,$31		# vars= 176, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-256
	addiu	$3,$6,-1
	sd	$28,240($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL17partialButterfly8PKsPsii.constprop.5)))
	li	$24,1			# 0x1
	daddu	$28,$28,$25
	sll	$24,$24,$3
	sd	$fp,248($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL17partialButterfly8PKsPsii.constprop.5)))
	daddiu	$3,$sp,16
	sd	$23,232($sp)
	ld	$2,%got_disp(_ZN4x2654g_t8E)($28)
	daddiu	$23,$5,16
	sd	$3,168($sp)
	sd	$22,224($sp)
	lh	$3,18($2)
	sd	$21,216($sp)
	sd	$20,208($sp)
	sd	$3,48($sp)
	lh	$3,20($2)
	sd	$19,200($sp)
	sd	$18,192($sp)
	sd	$3,56($sp)
	lh	$3,22($2)
	sd	$17,184($sp)
	sd	$16,176($sp)
	sd	$3,64($sp)
	lh	$3,48($2)
	lh	$fp,0($2)
	lh	$22,2($2)
	sd	$3,72($sp)
	lh	$3,50($2)
	lh	$21,64($2)
	lh	$20,66($2)
	sd	$3,80($sp)
	lh	$3,52($2)
	lh	$19,32($2)
	lh	$18,34($2)
	lh	$17,96($2)
	lh	$16,98($2)
	lh	$25,16($2)
	sd	$3,88($sp)
	lh	$3,54($2)
	sd	$3,96($sp)
	lh	$3,80($2)
	sd	$3,104($sp)
	lh	$3,82($2)
	sd	$3,112($sp)
	lh	$3,84($2)
	sd	$3,120($sp)
	lh	$3,86($2)
	sd	$3,128($sp)
	lh	$3,112($2)
	sd	$3,136($sp)
	lh	$3,114($2)
	sd	$3,144($sp)
	lh	$3,116($2)
	lh	$2,118($2)
	sd	$3,152($sp)
	sd	$2,160($sp)
	.align	3
.L299:
	ld	$9,168($sp)
	move	$7,$4
	daddiu	$10,$4,14
	move	$8,$sp
	daddiu	$12,$4,8
.L298:
	daddiu	$10,$10,-2
	lh	$2,0($7)
	daddiu	$9,$9,4
	lh	$3,2($10)
	daddiu	$8,$8,4
	daddiu	$7,$7,2
	addu	$11,$2,$3
	subu	$2,$2,$3
	sw	$11,-4($9)
	bne	$7,$12,.L298
	sw	$2,-4($8)

	lw	$2,4($sp)
	daddiu	$5,$5,2
	daddiu	$4,$4,16
	ld	$3,48($sp)
	lw	$13,0($sp)
	lw	$15,16($sp)
	gsmultu	$14,$3,$2
	lw	$10,28($sp)
	ld	$3,80($sp)
	ld	$7,112($sp)
	lw	$12,8($sp)
	gsmultu	$8,$2,$3
	ld	$9,144($sp)
	mtlo	$14
	lw	$11,20($sp)
	madd	$25,$13
	lw	$3,24($sp)
	mflo	$14
	sw	$14,40($sp)
	addu	$14,$15,$10
	subu	$10,$15,$10
	ld	$15,72($sp)
	gsmultu	$7,$2,$7
	sd	$10,32($sp)
	gsmultu	$2,$2,$9
	addu	$9,$11,$3
	subu	$3,$11,$3
	lw	$11,12($sp)
	mul	$10,$13,$15
	ld	$15,104($sp)
	addu	$8,$10,$8
	mul	$10,$13,$15
	ld	$15,136($sp)
	addu	$7,$10,$7
	mul	$10,$13,$15
	lw	$13,40($sp)
	ld	$15,88($sp)
	mtlo	$13
	ld	$13,56($sp)
	madd	$13,$12
	mflo	$13
	addu	$2,$10,$2
	mul	$10,$12,$15
	ld	$15,120($sp)
	addu	$8,$10,$8
	mul	$10,$12,$15
	mtlo	$2
	ld	$2,152($sp)
	ld	$15,64($sp)
	madd	$12,$2
	mflo	$2
	gsmultu	$12,$9,$22
	sw	$2,40($sp)
	gsmultu	$9,$9,$20
	gsmultu	$2,$3,$18
	gsmultu	$3,$3,$16
	addu	$7,$10,$7
	mul	$10,$15,$11
	addu	$13,$10,$13
	mul	$10,$14,$fp
	addu	$13,$13,$24
	sra	$13,$13,$6
	sh	$13,14($5)
	addu	$12,$10,$12
	mul	$10,$14,$21
	addu	$12,$12,$24
	sra	$12,$12,$6
	sh	$12,-2($5)
	ld	$12,32($sp)
	addu	$9,$10,$9
	mul	$10,$12,$19
	addu	$9,$9,$24
	sra	$9,$9,$6
	sh	$9,62($5)
	mul	$9,$12,$17
	addu	$2,$10,$2
	addu	$2,$2,$24
	sra	$2,$2,$6
	sh	$2,30($5)
	ld	$2,96($sp)
	addu	$10,$9,$3
	mul	$3,$11,$2
	ld	$2,128($sp)
	addu	$10,$10,$24
	sra	$10,$10,$6
	sh	$10,94($5)
	addu	$8,$3,$8
	mul	$3,$11,$2
	addu	$8,$8,$24
	sra	$8,$8,$6
	sh	$8,46($5)
	lw	$2,40($sp)
	mtlo	$2
	ld	$2,160($sp)
	madd	$11,$2
	addu	$7,$3,$7
	mflo	$11
	addu	$7,$7,$24
	addu	$11,$11,$24
	sra	$7,$7,$6
	sra	$11,$11,$6
	sh	$7,78($5)
	bne	$23,$5,.L299
	sh	$11,110($5)

	ld	$fp,248($sp)
	ld	$28,240($sp)
	ld	$23,232($sp)
	ld	$22,224($sp)
	ld	$21,216($sp)
	ld	$20,208($sp)
	ld	$19,200($sp)
	ld	$18,192($sp)
	ld	$17,184($sp)
	ld	$16,176($sp)
	jr	$31
	daddiu	$sp,$sp,256

	.set	macro
	.set	reorder
	.end	_ZL17partialButterfly8PKsPsii.constprop.5
	.size	_ZL17partialButterfly8PKsPsii.constprop.5, .-_ZL17partialButterfly8PKsPsii.constprop.5
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL6dct8_cPKsPsl
	.type	_ZL6dct8_cPKsPsl, @function
_ZL6dct8_cPKsPsl:
	.frame	$sp,336,$31		# vars= 288, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-336
	dsll	$6,$6,1
	daddiu	$7,$sp,31
	sd	$28,320($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL6dct8_cPKsPsl)))
	dsrl	$7,$7,5
	daddu	$28,$28,$25
	sd	$18,312($sp)
	dsll	$7,$7,5
	sd	$16,296($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL6dct8_cPKsPsl)))
	move	$18,$5
	move	$2,$7
	sd	$31,328($sp)
	daddiu	$16,$7,128
	sd	$17,304($sp)
	.align	3
.L304:
	ldl	$5,7($4)
	daddiu	$2,$2,16
	ldl	$3,15($4)
	ldr	$5,0($4)
	ldr	$3,8($4)
	daddu	$4,$4,$6
	sd	$5,-16($2)
	bne	$16,$2,.L304
	sd	$3,-8($2)

	ld	$17,%got_page(_ZL17partialButterfly8PKsPsii.constprop.5)($28)
	move	$5,$16
	move	$4,$7
	daddiu	$17,$17,%got_ofst(_ZL17partialButterfly8PKsPsii.constprop.5)
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZL17partialButterfly8PKsPsii.constprop.5
1:	jalr	$25
	li	$6,2			# 0x2

	move	$5,$18
	move	$4,$16
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZL17partialButterfly8PKsPsii.constprop.5
1:	jalr	$25
	li	$6,9			# 0x9

	ld	$31,328($sp)
	ld	$28,320($sp)
	ld	$18,312($sp)
	ld	$17,304($sp)
	ld	$16,296($sp)
	jr	$31
	daddiu	$sp,$sp,336

	.set	macro
	.set	reorder
	.end	_ZL6dct8_cPKsPsl
	.size	_ZL6dct8_cPKsPsl, .-_ZL6dct8_cPKsPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL18partialButterfly32PKsPsii.constprop.6
	.type	_ZL18partialButterfly32PKsPsii.constprop.6, @function
_ZL18partialButterfly32PKsPsii.constprop.6:
	.frame	$sp,560,$31		# vars= 480, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-560
	addiu	$3,$6,-1
	sd	$28,544($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL18partialButterfly32PKsPsii.constprop.6)))
	daddu	$28,$28,$25
	sd	$4,320($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL18partialButterfly32PKsPsii.constprop.6)))
	sd	$19,504($sp)
	ld	$2,%got_disp(_ZN4x2655g_t32E)($28)
	sd	$20,512($sp)
	move	$20,$6
	daddiu	$6,$sp,128
	sd	$fp,552($sp)
	lh	$4,0($2)
	sd	$23,536($sp)
	sd	$22,528($sp)
	sd	$4,344($sp)
	li	$4,1			# 0x1
	sll	$19,$4,$3
	daddiu	$3,$5,64
	sd	$21,520($sp)
	sd	$3,304($sp)
	lh	$3,2($2)
	sd	$18,496($sp)
	sd	$17,488($sp)
	sd	$3,352($sp)
	daddiu	$3,$5,128
	sd	$3,408($sp)
	daddiu	$3,$sp,64
	sd	$3,328($sp)
	lh	$3,1024($2)
	sd	$16,480($sp)
	sd	$6,456($sp)
	sd	$3,360($sp)
	daddiu	$3,$sp,160
	sd	$3,336($sp)
	daddiu	$3,$sp,208
	sd	$3,448($sp)
	lh	$3,1026($2)
	sd	$3,368($sp)
	daddiu	$3,$sp,192
	sd	$3,440($sp)
	daddiu	$3,$2,2048
	sd	$3,312($sp)
	lh	$3,512($2)
	sd	$3,376($sp)
	daddiu	$3,$2,64
	sd	$3,464($sp)
	daddiu	$3,$2,2112
	sd	$3,296($sp)
	lh	$3,514($2)
	sd	$6,416($sp)
	sd	$3,384($sp)
	daddiu	$3,$sp,96
	sd	$3,424($sp)
	lh	$3,1536($2)
	lh	$2,1538($2)
	sd	$3,392($sp)
	daddiu	$3,$sp,176
	sd	$3,432($sp)
	sd	$2,400($sp)
	.align	3
.L314:
	ld	$2,320($sp)
	move	$5,$sp
	ld	$4,328($sp)
	ld	$10,416($sp)
	move	$8,$2
	daddiu	$6,$2,62
	move	$7,$4
	.align	3
.L308:
	lh	$2,0($8)
	daddiu	$4,$4,4
	daddiu	$5,$5,4
	lh	$3,0($6)
	daddiu	$8,$8,2
	daddiu	$6,$6,-2
	addu	$9,$2,$3
	subu	$2,$2,$3
	sw	$9,-4($4)
	bne	$10,$4,.L308
	sw	$2,-4($5)

	ld	$5,336($sp)
	ld	$6,456($sp)
	ld	$4,328($sp)
	ld	$10,424($sp)
	move	$8,$5
	.align	3
.L309:
	daddiu	$4,$4,-4
	lw	$2,0($7)
	daddiu	$5,$5,4
	lw	$3,64($4)
	daddiu	$6,$6,4
	daddiu	$7,$7,4
	addu	$9,$2,$3
	subu	$2,$2,$3
	sw	$9,-4($5)
	bne	$10,$7,.L309
	sw	$2,-4($6)

	ld	$6,448($sp)
	ld	$5,440($sp)
	ld	$4,336($sp)
	ld	$9,432($sp)
.L310:
	daddiu	$4,$4,-4
	lw	$2,0($8)
	daddiu	$6,$6,4
	lw	$3,32($4)
	daddiu	$5,$5,4
	daddiu	$8,$8,4
	addu	$7,$2,$3
	subu	$2,$2,$3
	sw	$7,-4($6)
	bne	$9,$8,.L310
	sw	$2,-4($5)

	lw	$8,208($sp)
	lw	$7,220($sp)
	ld	$15,344($sp)
	lw	$5,212($sp)
	addu	$13,$8,$7
	lw	$2,216($sp)
	subu	$7,$8,$7
	mul	$24,$13,$15
	ld	$15,360($sp)
	ld	$14,304($sp)
	addu	$4,$5,$2
	subu	$2,$5,$2
	ld	$5,352($sp)
	ld	$11,400($sp)
	lw	$12,192($sp)
	daddiu	$3,$14,192
	gsmultu	$6,$4,$5
	ld	$5,368($sp)
	lw	$10,196($sp)
	lw	$9,200($sp)
	gsmultu	$4,$4,$5
	ld	$5,384($sp)
	lw	$8,204($sp)
	gsmultu	$5,$2,$5
	gsmultu	$2,$2,$11
	ld	$11,%got_disp(_ZN4x2655g_t32E)($28)
	addu	$6,$24,$6
	mul	$24,$13,$15
	addu	$6,$6,$19
	sra	$6,$6,$20
	sh	$6,-64($14)
	ld	$6,376($sp)
	addu	$4,$24,$4
	mul	$13,$7,$6
	addu	$4,$4,$19
	sra	$4,$4,$20
	sh	$4,960($14)
	ld	$4,392($sp)
	mul	$6,$7,$4
	addu	$5,$13,$5
	addu	$5,$5,$19
	sra	$5,$5,$20
	sh	$5,448($14)
	addu	$2,$6,$2
	addu	$2,$2,$19
	sra	$2,$2,$20
	sh	$2,1472($14)
.L311:
	lh	$6,258($11)
	daddiu	$11,$11,512
	daddiu	$3,$3,512
	gsmultu	$6,$6,$10
	lh	$5,-256($11)
	lh	$2,-252($11)
	lh	$4,-250($11)
	mtlo	$6
	madd	$5,$12
	madd	$2,$9
	madd	$4,$8
	mflo	$2
	addu	$2,$2,$19
	sra	$2,$2,$20
	sh	$2,-512($3)
	ld	$2,312($sp)
	bne	$2,$11,.L311
	ld	$2,304($sp)

	lw	$18,128($sp)
	lw	$17,132($sp)
	lw	$16,136($sp)
	daddiu	$12,$2,64
	lw	$25,140($sp)
	lw	$24,144($sp)
	lw	$15,148($sp)
	lw	$14,152($sp)
	lw	$13,156($sp)
	ld	$10,%got_disp(_ZN4x2655g_t32E)($28)
	.align	3
.L312:
	lh	$9,130($10)
	daddiu	$10,$10,256
	daddiu	$12,$12,256
	gsmultu	$9,$9,$17
	lh	$8,-128($10)
	lh	$7,-124($10)
	lh	$6,-122($10)
	lh	$5,-120($10)
	lh	$2,-118($10)
	mtlo	$9
	lh	$4,-116($10)
	madd	$8,$18
	lh	$3,-114($10)
	madd	$7,$16
	madd	$6,$25
	madd	$5,$24
	madd	$2,$15
	madd	$4,$14
	madd	$3,$13
	mflo	$2
	addu	$2,$2,$19
	sra	$2,$2,$20
	bne	$11,$10,.L312
	sh	$2,-256($12)

	lw	$2,0($sp)
	lw	$25,60($sp)
	ld	$15,464($sp)
	sd	$2,224($sp)
	lw	$2,4($sp)
	ld	$24,304($sp)
	lw	$fp,24($sp)
	sd	$2,232($sp)
	lw	$2,8($sp)
	lw	$23,28($sp)
	lw	$22,32($sp)
	sd	$2,240($sp)
	lw	$2,12($sp)
	lw	$21,36($sp)
	lw	$18,48($sp)
	sd	$2,248($sp)
	lw	$2,16($sp)
	lw	$17,52($sp)
	lw	$16,56($sp)
	sd	$2,256($sp)
	lw	$2,20($sp)
	sd	$25,288($sp)
	sd	$2,264($sp)
	lw	$2,40($sp)
	sd	$2,272($sp)
	lw	$2,44($sp)
	sd	$2,280($sp)
	.align	3
.L313:
	lh	$4,2($15)
	daddiu	$15,$15,128
	daddiu	$24,$24,128
	ld	$5,232($sp)
	ld	$25,240($sp)
	lh	$3,-128($15)
	gsmultu	$4,$4,$5
	lh	$2,-124($15)
	lh	$14,-122($15)
	lh	$13,-120($15)
	lh	$12,-118($15)
	lh	$11,-116($15)
	mtlo	$4
	ld	$4,224($sp)
	lh	$10,-114($15)
	lh	$9,-112($15)
	madd	$3,$4
	lh	$8,-110($15)
	lh	$7,-108($15)
	lh	$6,-106($15)
	lh	$5,-104($15)
	lh	$4,-102($15)
	lh	$3,-100($15)
	madd	$2,$25
	ld	$25,248($sp)
	lh	$2,-98($15)
	madd	$14,$25
	ld	$14,256($sp)
	madd	$13,$14
	ld	$13,264($sp)
	madd	$12,$13
	madd	$11,$fp
	madd	$10,$23
	madd	$9,$22
	madd	$8,$21
	ld	$8,272($sp)
	madd	$7,$8
	ld	$7,280($sp)
	madd	$6,$7
	madd	$5,$18
	madd	$4,$17
	madd	$3,$16
	ld	$3,288($sp)
	madd	$2,$3
	mflo	$2
	addu	$2,$2,$19
	sra	$2,$2,$20
	sh	$2,-128($24)
	ld	$2,296($sp)
	bne	$2,$15,.L313
	ld	$3,320($sp)

	ld	$2,304($sp)
	daddiu	$3,$3,64
	sd	$3,320($sp)
	daddiu	$2,$2,2
	ld	$3,408($sp)
	bne	$3,$2,.L314
	sd	$2,304($sp)

	ld	$fp,552($sp)
	ld	$28,544($sp)
	ld	$23,536($sp)
	ld	$22,528($sp)
	ld	$21,520($sp)
	ld	$20,512($sp)
	ld	$19,504($sp)
	ld	$18,496($sp)
	ld	$17,488($sp)
	ld	$16,480($sp)
	jr	$31
	daddiu	$sp,$sp,560

	.set	macro
	.set	reorder
	.end	_ZL18partialButterfly32PKsPsii.constprop.6
	.size	_ZL18partialButterfly32PKsPsii.constprop.6, .-_ZL18partialButterfly32PKsPsii.constprop.6
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL7dct32_cPKsPsl
	.type	_ZL7dct32_cPKsPsl, @function
_ZL7dct32_cPKsPsl:
	.frame	$sp,4176,$31		# vars= 4128, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-4176
	dsll	$6,$6,1
	daddiu	$13,$sp,31
	sd	$28,4160($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL7dct32_cPKsPsl)))
	dsrl	$13,$13,5
	daddu	$28,$28,$25
	sd	$17,4144($sp)
	dsll	$13,$13,5
	sd	$16,4136($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL7dct32_cPKsPsl)))
	move	$17,$5
	move	$2,$13
	sd	$31,4168($sp)
	daddiu	$16,$13,2048
	sd	$18,4152($sp)
	.align	3
.L324:
	ldl	$12,7($4)
	daddiu	$2,$2,64
	ldl	$11,15($4)
	ldl	$10,23($4)
	ldl	$9,31($4)
	ldl	$8,39($4)
	ldl	$7,47($4)
	ldl	$5,55($4)
	ldl	$3,63($4)
	ldr	$11,8($4)
	ldr	$10,16($4)
	ldr	$9,24($4)
	ldr	$8,32($4)
	ldr	$7,40($4)
	ldr	$5,48($4)
	ldr	$3,56($4)
	ldr	$12,0($4)
	daddu	$4,$4,$6
	sd	$12,-64($2)
	sd	$11,-56($2)
	sd	$10,-48($2)
	sd	$9,-40($2)
	sd	$8,-32($2)
	sd	$7,-24($2)
	sd	$5,-16($2)
	bne	$16,$2,.L324
	sd	$3,-8($2)

	ld	$18,%got_page(_ZL18partialButterfly32PKsPsii.constprop.6)($28)
	move	$5,$16
	move	$4,$13
	daddiu	$18,$18,%got_ofst(_ZL18partialButterfly32PKsPsii.constprop.6)
	move	$25,$18
	.reloc	1f,R_MIPS_JALR,_ZL18partialButterfly32PKsPsii.constprop.6
1:	jalr	$25
	li	$6,4			# 0x4

	move	$5,$17
	move	$4,$16
	move	$25,$18
	.reloc	1f,R_MIPS_JALR,_ZL18partialButterfly32PKsPsii.constprop.6
1:	jalr	$25
	li	$6,11			# 0xb

	ld	$31,4168($sp)
	ld	$28,4160($sp)
	ld	$18,4152($sp)
	ld	$17,4144($sp)
	ld	$16,4136($sp)
	jr	$31
	daddiu	$sp,$sp,4176

	.set	macro
	.set	reorder
	.end	_ZL7dct32_cPKsPsl
	.size	_ZL7dct32_cPKsPsl, .-_ZL7dct32_cPKsPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL18partialButterfly16PKsPsii.constprop.7
	.type	_ZL18partialButterfly16PKsPsii.constprop.7, @function
_ZL18partialButterfly16PKsPsii.constprop.7:
	.frame	$sp,272,$31		# vars= 192, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-272
	addiu	$3,$6,-1
	sd	$28,256($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL18partialButterfly16PKsPsii.constprop.7)))
	li	$15,1			# 0x1
	daddu	$28,$28,$25
	sll	$15,$15,$3
	sd	$fp,264($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL18partialButterfly16PKsPsii.constprop.7)))
	sd	$23,248($sp)
	daddiu	$24,$5,32
	ld	$2,%got_disp(_ZN4x2655g_t16E)($28)
	daddiu	$23,$sp,48
	sd	$22,240($sp)
	sd	$21,232($sp)
	lh	$3,0($2)
	daddiu	$fp,$2,512
	sd	$20,224($sp)
	sd	$19,216($sp)
	sd	$3,104($sp)
	daddiu	$3,$5,64
	sd	$3,168($sp)
	lh	$3,2($2)
	sd	$18,208($sp)
	sd	$17,200($sp)
	sd	$3,112($sp)
	daddiu	$3,$sp,32
	sd	$3,96($sp)
	daddiu	$3,$sp,80
	sd	$3,184($sp)
	lh	$3,256($2)
	sd	$16,192($sp)
	sd	$3,120($sp)
	daddiu	$3,$sp,64
	sd	$3,176($sp)
	lh	$3,258($2)
	sd	$3,128($sp)
	lh	$3,128($2)
	sd	$3,136($sp)
	lh	$3,130($2)
	sd	$3,144($sp)
	lh	$3,384($2)
	lh	$2,386($2)
	sd	$3,152($sp)
	sd	$2,160($sp)
	.align	3
.L332:
	ld	$7,96($sp)
	move	$5,$4
	daddiu	$9,$4,30
	move	$8,$sp
	daddiu	$12,$4,16
	move	$10,$7
	.align	3
.L328:
	daddiu	$9,$9,-2
	lh	$2,0($5)
	daddiu	$7,$7,4
	lh	$3,2($9)
	daddiu	$8,$8,4
	daddiu	$5,$5,2
	addu	$11,$2,$3
	subu	$2,$2,$3
	sw	$11,-4($7)
	bne	$12,$5,.L328
	sw	$2,-4($8)

	ld	$8,184($sp)
	ld	$7,176($sp)
	ld	$5,96($sp)
.L329:
	daddiu	$5,$5,-4
	lw	$2,0($10)
	daddiu	$8,$8,4
	lw	$3,32($5)
	daddiu	$7,$7,4
	daddiu	$10,$10,4
	addu	$9,$2,$3
	subu	$2,$2,$3
	sw	$9,-4($8)
	bne	$23,$10,.L329
	sw	$2,-4($7)

	lw	$10,80($sp)
	daddiu	$3,$24,32
	lw	$9,92($sp)
	ld	$17,104($sp)
	lw	$7,84($sp)
	addu	$16,$10,$9
	lw	$2,88($sp)
	subu	$9,$10,$9
	mul	$18,$16,$17
	ld	$17,120($sp)
	ld	$10,160($sp)
	addu	$5,$7,$2
	subu	$2,$7,$2
	ld	$7,112($sp)
	ld	$12,%got_disp(_ZN4x2655g_t16E)($28)
	lw	$25,64($sp)
	gsmultu	$8,$5,$7
	ld	$7,128($sp)
	lw	$14,68($sp)
	move	$13,$12
	lw	$11,72($sp)
	gsmultu	$5,$5,$7
	ld	$7,144($sp)
	gsmultu	$7,$2,$7
	gsmultu	$2,$2,$10
	lw	$10,76($sp)
	addu	$8,$18,$8
	mul	$18,$16,$17
	addu	$8,$8,$15
	sra	$8,$8,$6
	sh	$8,-32($24)
	ld	$8,136($sp)
	addu	$5,$18,$5
	mul	$16,$9,$8
	addu	$5,$5,$15
	sra	$5,$5,$6
	sh	$5,224($24)
	ld	$5,152($sp)
	mul	$8,$9,$5
	addu	$7,$16,$7
	addu	$7,$7,$15
	sra	$7,$7,$6
	sh	$7,96($24)
	addu	$2,$8,$2
	addu	$2,$2,$15
	sra	$2,$2,$6
	sh	$2,352($24)
.L330:
	lh	$8,66($13)
	daddiu	$13,$13,128
	daddiu	$3,$3,128
	gsmultu	$8,$8,$14
	lh	$2,-64($13)
	lh	$7,-60($13)
	lh	$5,-58($13)
	mtlo	$8
	madd	$2,$25
	madd	$7,$11
	madd	$5,$10
	mflo	$2
	addu	$2,$2,$15
	sra	$2,$2,$6
	bne	$fp,$13,.L330
	sh	$2,-128($3)

	lw	$22,0($sp)
	move	$14,$24
	lw	$21,4($sp)
	lw	$20,8($sp)
	lw	$19,12($sp)
	lw	$18,16($sp)
	lw	$17,20($sp)
	lw	$16,24($sp)
	lw	$25,28($sp)
	.align	3
.L331:
	lh	$11,34($12)
	daddiu	$12,$12,64
	daddiu	$14,$14,64
	gsmultu	$11,$11,$21
	lh	$10,-32($12)
	lh	$9,-28($12)
	lh	$8,-26($12)
	lh	$7,-24($12)
	lh	$2,-22($12)
	mtlo	$11
	lh	$5,-20($12)
	madd	$10,$22
	lh	$3,-18($12)
	madd	$9,$20
	madd	$8,$19
	madd	$7,$18
	madd	$2,$17
	madd	$5,$16
	madd	$3,$25
	mflo	$2
	addu	$2,$2,$15
	sra	$2,$2,$6
	bne	$13,$12,.L331
	sh	$2,-64($14)

	ld	$2,168($sp)
	daddiu	$24,$24,2
	bne	$2,$24,.L332
	daddiu	$4,$4,32

	ld	$fp,264($sp)
	ld	$28,256($sp)
	ld	$23,248($sp)
	ld	$22,240($sp)
	ld	$21,232($sp)
	ld	$20,224($sp)
	ld	$19,216($sp)
	ld	$18,208($sp)
	ld	$17,200($sp)
	ld	$16,192($sp)
	jr	$31
	daddiu	$sp,$sp,272

	.set	macro
	.set	reorder
	.end	_ZL18partialButterfly16PKsPsii.constprop.7
	.size	_ZL18partialButterfly16PKsPsii.constprop.7, .-_ZL18partialButterfly16PKsPsii.constprop.7
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL7dct16_cPKsPsl
	.type	_ZL7dct16_cPKsPsl, @function
_ZL7dct16_cPKsPsl:
	.frame	$sp,1104,$31		# vars= 1056, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-1104
	dsll	$6,$6,1
	daddiu	$9,$sp,31
	sd	$28,1088($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL7dct16_cPKsPsl)))
	dsrl	$9,$9,5
	daddu	$28,$28,$25
	sd	$18,1080($sp)
	dsll	$9,$9,5
	sd	$16,1064($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL7dct16_cPKsPsl)))
	move	$18,$5
	move	$2,$9
	sd	$31,1096($sp)
	daddiu	$16,$9,512
	sd	$17,1072($sp)
	.align	3
.L340:
	ldl	$8,7($4)
	daddiu	$2,$2,32
	ldl	$7,15($4)
	ldl	$5,23($4)
	ldl	$3,31($4)
	ldr	$8,0($4)
	ldr	$7,8($4)
	ldr	$5,16($4)
	ldr	$3,24($4)
	daddu	$4,$4,$6
	sd	$8,-32($2)
	sd	$7,-24($2)
	sd	$5,-16($2)
	bne	$16,$2,.L340
	sd	$3,-8($2)

	ld	$17,%got_page(_ZL18partialButterfly16PKsPsii.constprop.7)($28)
	move	$5,$16
	move	$4,$9
	daddiu	$17,$17,%got_ofst(_ZL18partialButterfly16PKsPsii.constprop.7)
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZL18partialButterfly16PKsPsii.constprop.7
1:	jalr	$25
	li	$6,3			# 0x3

	move	$5,$18
	move	$4,$16
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZL18partialButterfly16PKsPsii.constprop.7
1:	jalr	$25
	li	$6,10			# 0xa

	ld	$31,1096($sp)
	ld	$28,1088($sp)
	ld	$18,1080($sp)
	ld	$17,1072($sp)
	ld	$16,1064($sp)
	jr	$31
	daddiu	$sp,$sp,1104

	.set	macro
	.set	reorder
	.end	_ZL7dct16_cPKsPsl
	.size	_ZL7dct16_cPKsPsl, .-_ZL7dct16_cPKsPsl
	.align	2
	.align	3
	.globl	_ZN4x26520setupDCTPrimitives_cERNS_17EncoderPrimitivesE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26520setupDCTPrimitives_cERNS_17EncoderPrimitivesE
	.type	_ZN4x26520setupDCTPrimitives_cERNS_17EncoderPrimitivesE, @function
_ZN4x26520setupDCTPrimitives_cERNS_17EncoderPrimitivesE:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$3,%hi(%neg(%gp_rel(_ZN4x26520setupDCTPrimitives_cERNS_17EncoderPrimitivesE)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN4x26520setupDCTPrimitives_cERNS_17EncoderPrimitivesE)))
	ld	$2,%got_page(_ZL17dequant_scaling_cPKsPKiPsiii)($3)
	daddiu	$2,$2,%got_ofst(_ZL17dequant_scaling_cPKsPKiPsiii)
	sd	$2,5712($4)
	ld	$2,%got_page(_ZL16dequant_normal_cPKsPsiii)($3)
	daddiu	$2,$2,%got_ofst(_ZL16dequant_normal_cPKsPsiii)
	sd	$2,5720($4)
	ld	$2,%got_page(_ZL7quant_cPKsPKiPiPsiii)($3)
	daddiu	$2,$2,%got_ofst(_ZL7quant_cPKsPKiPiPsiii)
	sd	$2,5696($4)
	ld	$2,%got_page(_ZL8nquant_cPKsPKiPsiii)($3)
	daddiu	$2,$2,%got_ofst(_ZL8nquant_cPKsPKiPsiii)
	sd	$2,5704($4)
	ld	$2,%got_page(_ZL6dst4_cPKsPsl)($3)
	daddiu	$2,$2,%got_ofst(_ZL6dst4_cPKsPsl)
	sd	$2,5680($4)
	ld	$2,%got_page(_ZL6dct4_cPKsPsl)($3)
	daddiu	$2,$2,%got_ofst(_ZL6dct4_cPKsPsl)
	sd	$2,3200($4)
	ld	$2,%got_page(_ZL6dct8_cPKsPsl)($3)
	daddiu	$2,$2,%got_ofst(_ZL6dct8_cPKsPsl)
	sd	$2,3696($4)
	ld	$2,%got_page(_ZL7dct16_cPKsPsl)($3)
	daddiu	$2,$2,%got_ofst(_ZL7dct16_cPKsPsl)
	sd	$2,4192($4)
	ld	$2,%got_page(_ZL7dct32_cPKsPsl)($3)
	daddiu	$2,$2,%got_ofst(_ZL7dct32_cPKsPsl)
	sd	$2,4688($4)
	ld	$2,%got_page(_ZL7idst4_cPKsPsl)($3)
	daddiu	$2,$2,%got_ofst(_ZL7idst4_cPKsPsl)
	sd	$2,5688($4)
	ld	$2,%got_page(_ZL7idct4_cPKsPsl)($3)
	daddiu	$2,$2,%got_ofst(_ZL7idct4_cPKsPsl)
	sd	$2,3208($4)
	ld	$2,%got_page(_ZL7idct8_cPKsPsl)($3)
	daddiu	$2,$2,%got_ofst(_ZL7idct8_cPKsPsl)
	sd	$2,3704($4)
	ld	$2,%got_page(_ZL8idct16_cPKsPsl)($3)
	daddiu	$2,$2,%got_ofst(_ZL8idct16_cPKsPsl)
	sd	$2,4200($4)
	ld	$2,%got_page(_ZL8idct32_cPKsPsl)($3)
	daddiu	$2,$2,%got_ofst(_ZL8idct32_cPKsPsl)
	sd	$2,4696($4)
	ld	$2,%got_page(_ZL12denoiseDct_cPsPjPKti)($3)
	daddiu	$2,$2,%got_ofst(_ZL12denoiseDct_cPsPjPKti)
	sd	$2,5728($4)
	ld	$2,%got_disp(_Z15count_nonzero_cILi4EEiPKs)($3)
	sd	$2,3272($4)
	ld	$2,%got_disp(_Z15count_nonzero_cILi8EEiPKs)($3)
	sd	$2,3768($4)
	ld	$2,%got_disp(_Z15count_nonzero_cILi16EEiPKs)($3)
	sd	$2,4264($4)
	ld	$2,%got_disp(_Z15count_nonzero_cILi32EEiPKs)($3)
	sd	$2,4760($4)
	ld	$2,%got_disp(_Z10copy_countILi4EEjPsPKsl)($3)
	sd	$2,3264($4)
	ld	$2,%got_disp(_Z10copy_countILi8EEjPsPKsl)($3)
	sd	$2,3760($4)
	ld	$2,%got_disp(_Z10copy_countILi16EEjPsPKsl)($3)
	sd	$2,4256($4)
	ld	$2,%got_disp(_Z10copy_countILi32EEjPsPKsl)($3)
	sd	$2,4752($4)
	ld	$2,%got_page(_ZL13scanPosLast_cPKtPKsPtS3_PhiS0_i)($3)
	daddiu	$2,$2,%got_ofst(_ZL13scanPosLast_cPKtPKsPtS3_PhiS0_i)
	sd	$2,5968($4)
	ld	$2,%got_page(_ZL18findPosFirstLast_cPKslPKt)($3)
	daddiu	$2,$2,%got_ofst(_ZL18findPosFirstLast_cPKslPKt)
	sd	$2,5976($4)
	ld	$2,%got_page(_ZL14costCoeffNxN_cPKtPKslPtPKhjPhiii)($3)
	daddiu	$2,$2,%got_ofst(_ZL14costCoeffNxN_cPKtPKslPtPKhjPhiii)
	sd	$2,5984($4)
	ld	$2,%got_page(_ZL17costCoeffRemain_cPtii)($3)
	daddiu	$2,$2,%got_ofst(_ZL17costCoeffRemain_cPtii)
	sd	$2,5992($4)
	ld	$2,%got_page(_ZL14costC1C2Flag_cPtlPhl)($3)
	daddiu	$2,$2,%got_ofst(_ZL14costC1C2Flag_cPtlPhl)
	jr	$31
	sd	$2,6000($4)

	.set	macro
	.set	reorder
	.end	_ZN4x26520setupDCTPrimitives_cERNS_17EncoderPrimitivesE
	.size	_ZN4x26520setupDCTPrimitives_cERNS_17EncoderPrimitivesE, .-_ZN4x26520setupDCTPrimitives_cERNS_17EncoderPrimitivesE
	.rdata
	.align	3
	.type	_ZZL14costCoeffNxN_cPKtPKslPtPKhjPhiiiE19__PRETTY_FUNCTION__, @object
	.size	_ZZL14costCoeffNxN_cPKtPKslPtPKhjPhiiiE19__PRETTY_FUNCTION__, 129
_ZZL14costCoeffNxN_cPKtPKslPtPKhjPhiiiE19__PRETTY_FUNCTION__:
	.ascii	"uint32_t costCoeffNxN_c(const uint16_t*, const coeff_t*,"
	.ascii	" intptr_t, uint16_t*, const uint8_t*, uint32_t, uint8_t*"
	.ascii	", int, int, int)\000"
	.ident	"GCC: (GNU) 7.3.0"
